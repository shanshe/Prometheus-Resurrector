----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
library UNISIM;
use UNISIM.VComponents.all;

entity pci_seq is
port(
	REQ_IN		: in		std_logic;
	GNT_IN		: in		std_logic;
	READ_IN		: in		std_logic;
	NDEVSEL_IN	: in		std_logic;
	NTRDY_IN		: in		std_logic;
	NSTOP_IN		: in		std_logic;
	STATE_OUT	: out		std_logic_vector(3 downto 0);
	CYCOUT_OUT	: out		std_logic;
	NFRAME_OUT	: out		std_logic;
	NIRDY_OUT	: out		std_logic;
	ENA_C_OUT	: out		std_logic;
	ENA_P_OUT	: out		std_logic;
	ENA_D_OUT	: out		std_logic;
	PCIDL_OUT	: out		std_logic;
	NIORST		: in		std_logic;
	PCICLK		: in		std_logic
);
end pci_seq;

architecture Behavioral of pci_seq is
-- State machine definitions
type STATES is (IDLE,STEP,ADDR,DATA,DLY,RETRY,DRIVE,TURN,RELAX);
signal CURRENT_STATE	: STATES;
signal NEXT_STATE    : STATES;

-- Signals
signal state_x					: std_logic_vector(3 downto 0);
signal toc_ctr_x				: std_logic_vector(1 downto 0);
signal rst_toc_x				: std_logic;
signal toc_x					: std_logic;
signal cycout_x				: std_logic;
signal nframe_x				: std_logic;
signal ena_f_x					: std_logic;
signal nirdy_x					: std_logic;
signal ena_i_x					: std_logic;
signal ena_c_x					: std_logic;
signal ena_p_x					: std_logic;
signal ena_d_x					: std_logic;
signal pcidl_x					: std_logic;

begin

pcidl_x <= '1' when ((NTRDY_IN = '0') and (nirdy_x = '0')) else '0';

-------------------------------------------------------------------------------
THE_TOC_PROC: process( rst_toc_x, PCICLK )
begin
	if( rst_toc_x = '0' ) then
		toc_ctr_x <= (others => '0');
	elsif( rising_edge(PCICLK) ) then
		toc_ctr_x(1) <= not toc_ctr_x(0);
		toc_ctr_x(0) <=     toc_ctr_x(1);
	end if;
end process THE_TOC_PROC; 

toc_x <= '0' when (toc_ctr_x = b"11") else '1';

rst_toc_x <= '0' when ((NDEVSEL_IN = '0') or (CURRENT_STATE = ADDR)) else '1';
-------------------------------------------------------------------------------

-- PCI state machine
-- register stage
STATE_MEM: process( NIORST, PCICLK )
begin
	if( NIORST = '0' ) then
		CURRENT_STATE <= IDLE;
	elsif( rising_edge(PCICLK) ) then
		CURRENT_STATE <= NEXT_STATE;
	end if;
end process STATE_MEM;

-- Transition matrix
TRANSFORM: process( CURRENT_STATE, REQ_IN, GNT_IN, READ_IN, NTRDY_IN, NSTOP_IN, toc_x )
begin
	NEXT_STATE  <= IDLE;
	cycout_x    <= '0';
	nframe_x    <= '1';
	ena_f_x     <= '0';
	nirdy_x     <= '1';
	ena_i_x     <= '0';
	ena_c_x     <= '0';
	ena_p_x     <= '0';
	ena_d_x     <= '0';
	case CURRENT_STATE is
		-- initial state, only after powerup and reset
		when IDLE	=>	state_x <= x"0";
							if   ( (REQ_IN = '0') and (GNT_IN = '1') ) then
								NEXT_STATE <= DRIVE;
							elsif( (REQ_IN = '1') and (GNT_IN = '1') ) then
								NEXT_STATE <= STEP;
							else
								NEXT_STATE <= IDLE;
							end if;
		when STEP	=> state_x <= x"1";
							ena_f_x <= '1';
							ena_i_x <= '1';
							ena_c_x <= '1';
							ena_p_x <= '1';
							NEXT_STATE <= ADDR;
		when ADDR	=> state_x <= x"3";
							ena_f_x <= '1';
							ena_i_x <= '1';
							ena_c_x <= '1';
							ena_p_x <= '1';
							nframe_x <= '0';
							if( READ_IN = '0' ) then
								NEXT_STATE <= DATA;
							else
								NEXT_STATE <= DLY;
							end if;
		when DLY		=> state_x <= x"6";
							ena_f_x <= '1';
							ena_i_x <= '1';
							nirdy_x <= '0';
							ena_c_x <= '1';
							ena_d_x <= '1';
							NEXT_STATE <= DATA;
		when DATA	=> state_x <= x"2";
							ena_f_x <= '1';
							ena_i_x <= '1';
							nirdy_x <= '0';
							ena_c_x <= '1';
							ena_d_x <= '1';
							if( READ_IN = '0' ) then
								ena_p_x <= '1';
							end if;
							if   ( NTRDY_IN = '0' ) then
								NEXT_STATE <= TURN;
							elsif( (NTRDY_IN = '1') and (NSTOP_IN = '1') and (toc_x = '0') ) then
								NEXT_STATE <= TURN;
							elsif( (NTRDY_IN = '1') and (NSTOP_IN = '0') ) then
								NEXT_STATE <= RETRY;
							else
								NEXT_STATE <= DATA; -- BUG
							end if;
		when RETRY	=> state_x <= x"7";
							ena_f_x <= '1';
							ena_i_x <= '1';
							ena_c_x <= '1';
							ena_p_x <= '1';
							NEXT_STATE <= RELAX;
		when RELAX	=> state_x <= x"a";
							ena_f_x <= '1';
							ena_i_x <= '1';
							ena_c_x <= '1';
							ena_p_x <= '1';
							NEXT_STATE <= ADDR;
--		when RETRY	=> state_x <= x"7";
--							ena_f_x <= '1';
--							ena_i_x <= '1';
--							ena_c_x <= '1';
--							ena_p_x <= '1';
--							NEXT_STATE <= ADDR;
		when DRIVE	=> state_x <= x"5";
							ena_c_x <= '1';
							ena_p_x <= '1';
							if   ( GNT_IN = '0' ) then
								NEXT_STATE <= IDLE;
							elsif( (REQ_IN = '0') and (GNT_IN = '1') ) then
								NEXT_STATE <= DRIVE;
							elsif( (REQ_IN = '1') and (GNT_IN = '1') and (NTRDY_IN = '0') ) then
								NEXT_STATE <= DRIVE;
							elsif( (REQ_IN = '1') and (GNT_IN = '1') and (NTRDY_IN = '1') and (NSTOP_IN = '0') ) then
								NEXT_STATE <= DRIVE;
							elsif( (REQ_IN = '1') and (GNT_IN = '1') and (NTRDY_IN = '1') and (NSTOP_IN = '1') ) then
								NEXT_STATE <= ADDR;
							else
								NEXT_STATE <= DRIVE; -- BUG
							end if;
		when TURN	=> state_x <= x"4";
							ena_f_x <= '1';
							ena_i_x <= '1';
							ena_c_x <= '1';
							ena_d_x <= '1';
							cycout_x <= '1';
							if( READ_IN = '0' ) then
								ena_p_x <= '1';
							end if;
							if( GNT_IN = '0' ) then
								NEXT_STATE <= IDLE;
							else
								NEXT_STATE <= DRIVE;
							end if;


		when others	=> state_x <= x"c";
							NEXT_STATE <= IDLE;
	end case;
end process TRANSFORM;

-- Outputs
STATE_OUT   <= state_x;
CYCOUT_OUT  <= cycout_x;
NFRAME_OUT  <= nframe_x when (ena_f_x = '1') else 'Z';
NIRDY_OUT   <= nirdy_x  when (ena_i_x = '1') else 'Z';
ENA_C_OUT   <= ena_c_x;
ENA_P_OUT   <= ena_p_x;
ENA_D_OUT   <= ena_d_x;
PCIDL_OUT   <= pcidl_x;

end Behavioral;

