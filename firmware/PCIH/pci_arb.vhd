----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity pci_arb is
port(
	REQZ3_IN		: in		std_logic;
	NREQ_IN		: in		std_logic_vector(3 downto 0);
	IDLE_IN		: in		std_logic;
	GNTZ3_OUT	: out		std_logic;
	NGNT_OUT		: out		std_logic_vector(3 downto 0);
	TOC_OUT		: out		std_logic_vector(3 downto 0);
	STATE_OUT	: out		std_logic_vector(3 downto 0);
	NIORST		: in		std_logic;
	PCICLK		: in		std_logic
);
end pci_arb;

architecture Behavioral of pci_arb is
-- State machine definitions
type STATES is (Z0,Z1,Z2,Z3,B0,B1,B2,B3,P0,P1,P2,P3,A0,A1,A2,A3);
signal CURRENT_STATE	: STATES;
signal NEXT_STATE    : STATES;

-- Signals
signal state_x					: std_logic_vector(3 downto 0);
signal gntz3_x					: std_logic;
signal ngnt_x					: std_logic_vector(3 downto 0);

signal toc_x					: std_logic_vector(3 downto 0);
signal pcitout_x				: std_logic;
signal toc_clr_x				: std_logic;
signal toc_ena_x				: std_logic;

begin

THE_PCI_TOC_PROC: process( NIORST, toc_clr_x, PCICLK )
begin
	if( (NIORST = '0') or (toc_clr_x = '0') ) then
		toc_x <= (others => '0');
	elsif( rising_edge(PCICLK) ) then
		if( toc_ena_x = '1') then
			toc_x <= toc_x + 1;
		end if;
	end if;
end process THE_PCI_TOC_PROC;

pcitout_x <= '1' when (toc_x = b"1111") else '0';

toc_ena_x <= '0' when (ngnt_x = b"1111") else '1';

-- arbiter state machine
-- register stage
STATE_MEM: process( NIORST, PCICLK )
begin
	if( NIORST = '0' ) then
		CURRENT_STATE <= Z0;
	elsif( rising_edge(PCICLK) ) then
		CURRENT_STATE <= NEXT_STATE;
	end if;
end process STATE_MEM;

-- Transition matrix
TRANSFORM: process( CURRENT_STATE, REQZ3_IN, NREQ_IN, IDLE_IN, pcitout_x )
begin
	NEXT_STATE <= Z0;
	gntz3_x    <= '0';
	ngnt_x     <= b"1111";
	toc_clr_x  <= '1';
	case CURRENT_STATE is
		-- Slot 0 stuff
		when Z0		=>	state_x <= x"0";
							gntz3_x <= '1';
							if   ( REQZ3_IN = '1' ) then
								-- running Zorro III access
								NEXT_STATE <= Z0; 
							else
								if( pcitout_x = '0' ) then
									-- last PCI master has some bus time left
									if   ( NREQ_IN(0) = '0' ) then
										NEXT_STATE <= B0; -- BUG! resets timer, full grant!!!
									elsif( NREQ_IN(1) = '0' ) then 
										NEXT_STATE <= B1;
									elsif( NREQ_IN(2) = '0' ) then 
										NEXT_STATE <= B2;
									elsif( NREQ_IN(3) = '0' ) then 
										NEXT_STATE <= B3;
									else
										NEXT_STATE <= Z0; -- no PCI requests, park Zorro III on bus
									end if;
								else
									-- forced PCI master change, if requested
									if   ( NREQ_IN(1) = '0' ) then
										NEXT_STATE <= B1;
									elsif( NREQ_IN(2) = '0' ) then
										NEXT_STATE <= B2;
									elsif( NREQ_IN(3) = '0' ) then
										NEXT_STATE <= B3;
									elsif( NREQ_IN(0) = '0' ) then
										NEXT_STATE <= B0;
									else
										NEXT_STATE <= Z0; -- no PCI requests, park Zorro III on bus
									end if;
								end if;
							end if;
		when B0		=> state_x <= x"1";
							toc_clr_x <= '0';
							-- bus turnaround between Zorro and PCI master
							if( REQZ3_IN = '1' ) then
								NEXT_STATE <= A0; -- pending Zorro III => priority Z3
							else
								NEXT_STATE <= P0; -- no pending Zorro III access
							end if;
		when A0		=> state_x <= x"2";
							-- intermediate step, keep Zorro III priorized
							if( REQZ3_IN = '1' ) then
								if( IDLE_IN = '1' ) then
									-- PCI bus is free, return to Zorro III
									NEXT_STATE <= Z0;
								else
									--- wait for PCI bus to get released by last master (if any)
									NEXT_STATE <= A0;
								end if;
							else
								-- no Zorro III request, proceed to PCI master
								NEXT_STATE <= P0; -- should not happen
							end if;
		when P0		=> state_x <= x"3";
							ngnt_x <= b"1110";
							-- PCI 0 master state
							if( REQZ3_IN = '1' ) then
								-- priorize Zorro III access
								if( pcitout_x = '0' ) then
									-- current PCI master has spare bus time
									NEXT_STATE <= A0;
								else
									-- forced fairness master change, TOC proceeds to 0x0
									NEXT_STATE <= A1;
								end if;
							else
								-- PCI - PCI master change, if needed
								if( pcitout_x = '1' ) then
									-- forced re-arbitration
									if   ( NREQ_IN(1) = '0' ) then
										NEXT_STATE <= B1;
									elsif( NREQ_IN(2) = '0' ) then
										NEXT_STATE <= B2;
									elsif( NREQ_IN(3) = '0' ) then
										NEXT_STATE <= B3;
									elsif( NREQ_IN(0) = '0' ) then
										NEXT_STATE <= P0; -- silent regrant for current master
									else
										NEXT_STATE <= P0; -- no PCI requests, park P0 on bus
									end if;
								else
									-- current PCI master normal operation
									if   ( NREQ_IN(0) = '0' ) then
										NEXT_STATE <= P0;
									elsif( NREQ_IN(1) = '0' ) then
										NEXT_STATE <= B1;
									elsif( NREQ_IN(2) = '0' ) then
										NEXT_STATE <= B2;
									elsif( NREQ_IN(3) = '0' ) then
										NEXT_STATE <= B3;
									else
										NEXT_STATE <= P0; -- current master parked
									end if;
								end if;
							end if;

		-- Slot 1 stuff
--		when Z1		=>	state_x <= x"c";
		when Z1		=>	state_x <= x"6";
							gntz3_x <= '1';
							if   ( REQZ3_IN = '1' ) then
								-- running Zorro III access
								NEXT_STATE <= Z1; 
							else
								if( pcitout_x = '0' ) then
									-- last PCI master has some bus time left
									if   ( NREQ_IN(1) = '0' ) then
										NEXT_STATE <= B1;
									elsif( NREQ_IN(2) = '0' ) then 
										NEXT_STATE <= B2;
									elsif( NREQ_IN(3) = '0' ) then 
										NEXT_STATE <= B3;
									elsif( NREQ_IN(0) = '0' ) then 
										NEXT_STATE <= B0;
									else
										NEXT_STATE <= Z1; -- no PCI requests, park Zorro III on bus
									end if;
								else
									-- forced PCI master change, if requested
									if   ( NREQ_IN(2) = '0' ) then
										NEXT_STATE <= B2;
									elsif( NREQ_IN(3) = '0' ) then
										NEXT_STATE <= B3;
									elsif( NREQ_IN(0) = '0' ) then
										NEXT_STATE <= B0;
									elsif( NREQ_IN(1) = '0' ) then
										NEXT_STATE <= B1;
									else
										NEXT_STATE <= Z1; -- no PCI requests, park Zorro III on bus
									end if;
								end if;
							end if;
		when B1		=> state_x <= x"7";
							toc_clr_x <= '0';
							-- bus turnaround between Zorro and PCI master
							if( REQZ3_IN = '1' ) then
								NEXT_STATE <= A1; -- pending Zorro III => priority Z3
							else
								NEXT_STATE <= P1; -- no pending Zorro III access
							end if;
		when A1		=> state_x <= x"4";
							-- intermediate step, keep Zorro III priorized
							if( REQZ3_IN = '1' ) then
								if( IDLE_IN = '1' ) then
									-- PCI bus is free, return to Zorro III
									NEXT_STATE <= Z1;
								else
									--- wait for PCI bus to get released by last master (if any)
									NEXT_STATE <= A1;
								end if;
							else
								-- no Zorro III request, proceed to PCI master
								NEXT_STATE <= P1; -- should not happen
							end if;
		when P1		=> state_x <= x"5";
							ngnt_x <= b"1101";
							-- PCI 1 master state
							if( REQZ3_IN = '1' ) then
								-- priorize Zorro III access
								if( pcitout_x = '0' ) then
									-- current PCI master has spare bus time
									NEXT_STATE <= A1;
								else
									-- forced fairness master change, TOC proceeds to 0x0
									NEXT_STATE <= A2;
								end if;
							else
								-- PCI - PCI master change, if needed
								if( pcitout_x = '1' ) then
									-- forced re-arbitration
									if   ( NREQ_IN(2) = '0' ) then
										NEXT_STATE <= B2;
									elsif( NREQ_IN(3) = '0' ) then
										NEXT_STATE <= B3;
									elsif( NREQ_IN(0) = '0' ) then
										NEXT_STATE <= B0;
									elsif( NREQ_IN(1) = '0' ) then
										NEXT_STATE <= P1; -- silent regrant for current master
									else
										NEXT_STATE <= P1; -- no PCI requests, park P1 on bus
									end if;
								else
									-- current PCI master normal operation
									if   ( NREQ_IN(1) = '0' ) then
										NEXT_STATE <= P1;
									elsif( NREQ_IN(2) = '0' ) then
										NEXT_STATE <= B2;
									elsif( NREQ_IN(3) = '0' ) then
										NEXT_STATE <= B3;
									elsif( NREQ_IN(0) = '0' ) then
										NEXT_STATE <= B0;
									else
										NEXT_STATE <= P1; -- current master parked
									end if;
								end if;
							end if;

		-- Slot 2 stuff
		when Z2		=>	state_x <= x"c";
							gntz3_x <= '1';
							if   ( REQZ3_IN = '1' ) then
								-- running Zorro III access
								NEXT_STATE <= Z2; 
							else
								if( pcitout_x = '0' ) then
									-- last PCI master has some bus time left
									if   ( NREQ_IN(2) = '0' ) then
										NEXT_STATE <= B2;
									elsif( NREQ_IN(3) = '0' ) then 
										NEXT_STATE <= B3;
									elsif( NREQ_IN(0) = '0' ) then 
										NEXT_STATE <= B0;
									elsif( NREQ_IN(1) = '0' ) then 
										NEXT_STATE <= B1;
									else
										NEXT_STATE <= Z2; -- no PCI requests, park Zorro III on bus
									end if;
								else
									-- forced PCI master change, if requested
									if   ( NREQ_IN(3) = '0' ) then
										NEXT_STATE <= B3;
									elsif( NREQ_IN(0) = '0' ) then
										NEXT_STATE <= B0;
									elsif( NREQ_IN(1) = '0' ) then
										NEXT_STATE <= B1;
									elsif( NREQ_IN(2) = '0' ) then
										NEXT_STATE <= B2;
									else
										NEXT_STATE <= Z2; -- no PCI requests, park Zorro III on bus
									end if;
								end if;
							end if;
		when B2		=> state_x <= x"d";
							toc_clr_x <= '0';
							-- bus turnaround between Zorro and PCI master
							if( REQZ3_IN = '1' ) then
								NEXT_STATE <= A2; -- pending Zorro III => priority Z3
							else
								NEXT_STATE <= P2; -- no pending Zorro III access
							end if;
		when A2		=> state_x <= x"e";
							-- intermediate step, keep Zorro III priorized
							if( REQZ3_IN = '1' ) then
								if( IDLE_IN = '1' ) then
									-- PCI bus is free, return to Zorro III
									NEXT_STATE <= Z2;
								else
									--- wait for PCI bus to get released by last master (if any)
									NEXT_STATE <= A2;
								end if;
							else
								-- no Zorro III request, proceed to PCI master
								NEXT_STATE <= P2; -- should not happen
							end if;
		when P2		=> state_x <= x"f";
							ngnt_x <= b"1011";
							-- PCI 2 master state
							if( REQZ3_IN = '1' ) then
								-- priorize Zorro III access
								if( pcitout_x = '0' ) then
									-- current PCI master has spare bus time
									NEXT_STATE <= A2;
								else
									-- forced fairness master change, TOC proceeds to 0x0
									NEXT_STATE <= A3;
								end if;
							else
								-- PCI - PCI master change, if needed
								if( pcitout_x = '1' ) then
									-- forced re-arbitration
									if   ( NREQ_IN(3) = '0' ) then
										NEXT_STATE <= B3;
									elsif( NREQ_IN(0) = '0' ) then
										NEXT_STATE <= B0;
									elsif( NREQ_IN(1) = '0' ) then
										NEXT_STATE <= B1;
									elsif( NREQ_IN(2) = '0' ) then
										NEXT_STATE <= P2; -- silent regrant for current master
									else
										NEXT_STATE <= P2; -- no PCI requests, park P2 on bus
									end if;
								else
									-- current PCI master normal operation
									if   ( NREQ_IN(2) = '0' ) then
										NEXT_STATE <= P2;
									elsif( NREQ_IN(3) = '0' ) then
										NEXT_STATE <= B3;
									elsif( NREQ_IN(0) = '0' ) then
										NEXT_STATE <= B0;
									elsif( NREQ_IN(1) = '0' ) then
										NEXT_STATE <= B1;
									else
										NEXT_STATE <= P2; -- current master parked
									end if;
								end if;
							end if;

		-- Slot 3 stuff
		when Z3		=>	state_x <= x"a";
							gntz3_x <= '1';
							if   ( REQZ3_IN = '1' ) then
								-- running Zorro III access
								NEXT_STATE <= Z3; 
							else
								if( pcitout_x = '0' ) then
									-- last PCI master has some bus time left
									if   ( NREQ_IN(3) = '0' ) then
										NEXT_STATE <= B3;
									elsif( NREQ_IN(0) = '0' ) then 
										NEXT_STATE <= B0;
									elsif( NREQ_IN(1) = '0' ) then 
										NEXT_STATE <= B1;
									elsif( NREQ_IN(2) = '0' ) then 
										NEXT_STATE <= B2;
									else
										NEXT_STATE <= Z3; -- no PCI requests, park Zorro III on bus
									end if;
								else
									-- forced PCI master change, if requested
									if   ( NREQ_IN(0) = '0' ) then
										NEXT_STATE <= B0;
									elsif( NREQ_IN(1) = '0' ) then
										NEXT_STATE <= B1;
									elsif( NREQ_IN(2) = '0' ) then
										NEXT_STATE <= B2;
									elsif( NREQ_IN(3) = '0' ) then
										NEXT_STATE <= B3;
									else
										NEXT_STATE <= Z3; -- no PCI requests, park Zorro III on bus
									end if;
								end if;
							end if;
		when B3		=> state_x <= x"b";
							toc_clr_x <= '0';
							-- bus turnaround between Zorro and PCI master
							if( REQZ3_IN = '1' ) then
								NEXT_STATE <= A3; -- pending Zorro III => priority Z3
							else
								NEXT_STATE <= P3; -- no pending Zorro III access
							end if;
		when A3		=> state_x <= x"8";
							-- intermediate step, keep Zorro III priorized
							if( REQZ3_IN = '1' ) then
								if( IDLE_IN = '1' ) then
									-- PCI bus is free, return to Zorro III
									NEXT_STATE <= Z3;
								else
									--- wait for PCI bus to get released by last master (if any)
									NEXT_STATE <= A3;
								end if;
							else
								-- no Zorro III request, proceed to PCI master
								NEXT_STATE <= P3; -- should not happen
							end if;
		when P3		=> state_x <= x"9";
							ngnt_x <= b"0111";
							-- PCI 0 master state
							if( REQZ3_IN = '1' ) then
								-- priorize Zorro III access
								if( pcitout_x = '0' ) then
									-- current PCI master has spare bus time
									NEXT_STATE <= A3;
								else
									-- forced fairness master change, TOC proceeds to 0x0
									NEXT_STATE <= A0;
								end if;
							else
								-- PCI - PCI master change, if needed
								if( pcitout_x = '1' ) then
									-- forced re-arbitration
									if   ( NREQ_IN(0) = '0' ) then
										NEXT_STATE <= B0;
									elsif( NREQ_IN(1) = '0' ) then
										NEXT_STATE <= B1;
									elsif( NREQ_IN(2) = '0' ) then
										NEXT_STATE <= B2;
									elsif( NREQ_IN(3) = '0' ) then
										NEXT_STATE <= P3; -- silent regrant for current master
									else
										NEXT_STATE <= P3; -- no PCI requests, park P3 on bus
									end if;
								else
									-- current PCI master normal operation
									if   ( NREQ_IN(3) = '0' ) then
										NEXT_STATE <= P3;
									elsif( NREQ_IN(0) = '0' ) then
										NEXT_STATE <= B0;
									elsif( NREQ_IN(1) = '0' ) then
										NEXT_STATE <= B1;
									elsif( NREQ_IN(2) = '0' ) then
										NEXT_STATE <= B2;
									else
										NEXT_STATE <= P3; -- current master parked
									end if;
								end if;
							end if;
							
		when others	=> state_x <= x"0";
							NEXT_STATE <= Z0;
	end case;
end process TRANSFORM;

-- Outputs
STATE_OUT   <= state_x;
GNTZ3_OUT   <= gntz3_x;
NGNT_OUT    <= ngnt_x;
TOC_OUT     <= toc_x;

end Behavioral;