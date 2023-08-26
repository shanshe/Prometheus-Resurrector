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

entity pcil is
port(
	-- Zorro signals
	Z_ADA			: inout	std_logic_vector(31 downto 8);
	Z_SD			: inout	std_logic_vector(7 downto 0);
	Z_AA			: in		std_logic_vector(7 downto 2);
	Z_NFCS		: in		std_logic;
	Z_NSLAVE		: out		std_logic;
	Z_NCFGIN		: in		std_logic;
	Z_NCFGOUT	: in		std_logic;
	Z_NIORST		: in		std_logic;
	Z_FC			: in		std_logic_vector(1 downto 0);
	Z_NINT2		: out		std_logic;
	Z_NINT6		: out		std_logic;
	-- PCI signals
	P_AD			: inout	std_logic_vector(31 downto 0);
	-- interconnects
	I_NINT2		: in		std_logic;
	I_NINT6		: in		std_logic;
	I_ACC			: out		std_logic_vector(1 downto 0);
	I_DATPAR		: out		std_logic_vector(1 downto 0);
	I_DAOUT		: in		std_logic;
	I_PCIENA		: in		std_logic;
	I_PCIDL		: in		std_logic;
	I_PCICLK		: in		std_logic;
	I_DATA		: in		std_logic;
	I_CFLT		: in		std_logic;
	I_PLA			: in		std_logic_vector(1 downto 0); -- was SPARE[1:0] in original design
	I_ZLA			: out		std_logic; -- was unused, now LADDR[8] for Autoconfig ROM
	I_ZMA			: out		std_logic; -- was LADDR[15] in original design
	-- DEBUG
	DEBUG			: out		std_logic_vector(15 downto 0)
);
end pcil;

architecture Behavioral of pcil is

-- Signals
signal laddr_x				: std_logic_vector(28 downto 8); -- latched Zorro III addresses
signal pcia_x				: std_logic_vector(31 downto 0); -- PCI address lines
signal pmem_x				: std_logic; -- select signal for PCI memory access
signal pcfg0_x				: std_logic; -- select signal for PCI configuration type 0 access
signal pcfg1_x				: std_logic; -- select signal for PCI configuration type 1 access
signal pio_x				: std_logic; -- select signal for PCI I/O access
signal i_acc_x				: std_logic_vector(1 downto 0);
signal adpa_x				: std_logic_vector(15 downto 0);
signal adpb_x				: std_logic_vector(15 downto 0);
signal bar_x				: std_logic_vector(31 downto 29);
signal compare_base_x	: std_logic;
signal compare_fc_x		: std_logic;
signal slave_latch_x		: std_logic;
signal real_slave_x		: std_logic;
signal p_ad_x				: std_logic_vector(31 downto 0);
signal z_data_x			: std_logic_vector(31 downto 0);
signal z_ada_x				: std_logic_vector(31 downto 8);
signal z_sd_x				: std_logic_vector(7 downto 0);
signal i_datpar_x			: std_logic_vector(1 downto 0);

signal debug_x				: std_logic_vector(15 downto 0);

-- Important constraints for compilation!
attribute keep : string;
attribute keep of compare_fc_x      : signal is "TRUE"; 
attribute keep of compare_base_x    : signal is "TRUE"; 
attribute keep of slave_latch_x     : signal is "TRUE"; 
attribute noreduce : string;
attribute noreduce of slave_latch_x : signal is "TRUE"; 


-- TO_X01()

begin

debug_x(15)          <= compare_base_x;
debug_x(14)          <= compare_fc_x;
debug_x(13)          <= slave_latch_x;
debug_x(12)          <= real_slave_x;
debug_x(11)          <= pmem_x;
debug_x(10)          <= pcfg1_x;
debug_x(9)           <= pcfg0_x;
debug_x(8)           <= pio_x;
debug_x(7 downto 0)  <= (others => '0');

-------------------------------------------------------------------------------
-- TAKEN FROM BigRamPlus
-------------------------------------------------------------------------------
-- Base address compare, purely combinatorial.
-- Signal is valid quite some time before /FCS being asserted.
compare_base_x <= '1' when (Z_ADA(31 downto 29) = bar_x) and
									(((Z_ADA(28 downto 24) = b"11111") and (Z_NCFGOUT = '1')) or (Z_NCFGOUT = '0'))								
						else '0';

-- Function code + Z3 + /CFGIN check, purely combinatorial.
-- Signal is valid quite some time before /FCS being asserted.
compare_fc_x <= (Z_FC(0) xor Z_FC(1)) and not Z_NCFGIN;

-- Latch it... (is valid before /FCS)
-- Real transparent latch, as stated by Xilinx in AppNote (glitchfree).
slave_latch_x <= (    Z_NFCS    and compare_base_x and compare_fc_x) or
                 (not Z_NFCS    and slave_latch_x                  ) or
			        (slave_latch_x and compare_base_x and compare_fc_x);

-- Gated by /FCS, by inverting we get /SLAVE. 
real_slave_x <= slave_latch_x and not Z_NFCS;
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

-- Base Address Register
THE_BAR_PROC: process( Z_NIORST, I_CFLT )
begin
	if( Z_NIORST = '0' ) then
		bar_x <= (others => '1');
	elsif( rising_edge(I_CFLT) ) then
		bar_x <= Z_ADA(31 downto 29);
	end if;
end process THE_BAR_PROC;

-- Address register (should be latch... but... you know)
THE_ADDR_REG_PROC: process( Z_NFCS, Z_NIORST)
begin
	if( Z_NIORST = '0' ) then
		laddr_x <= (others => '1');
	elsif( falling_edge(Z_NFCS) ) then
		laddr_x <= Z_ADA(28 downto 8);
	end if;
end process THE_ADDR_REG_PROC;

-- PCI cycle decoder
pmem_x  <= '0' when (laddr_x(28 downto 22) = b"1111111") else '1';
pcfg0_x <= '1' when ((pmem_x = '0') and (laddr_x(21) = '0') and (laddr_x(20) = '0')) else '0';
pcfg1_x <= '1' when ((pmem_x = '0') and (laddr_x(21) = '0') and (laddr_x(20) = '1')) else '0';
pio_x   <= '1' when ((pmem_x = '0') and (laddr_x(21) = '1')) else '0';
-- encoded access type for second CPLD
i_acc_x(1) <= pcfg1_x or pio_x;
i_acc_x(0) <= pcfg0_x or pio_x;

-- PCI address lines
-- A[28:20]
pcia_x(31 downto 29) <= (others => '0');
pcia_x(28)           <= laddr_x(28) and pmem_x;
pcia_x(27)           <= laddr_x(27) and pmem_x;
pcia_x(26)           <= laddr_x(26) and pmem_x;
pcia_x(25)           <= laddr_x(25) and pmem_x;
pcia_x(24)           <= laddr_x(24) and pmem_x;
pcia_x(23)           <= laddr_x(23) and pmem_x;
pcia_x(22)           <= laddr_x(22) and pmem_x;
pcia_x(21)           <= laddr_x(21) and pmem_x;
pcia_x(20)           <= laddr_x(20) and pmem_x;
-- A[19:0] are 1:1 connections
pcia_x(19 downto 16) <= laddr_x(19 downto 16);
pcia_x(15 downto 8)  <= laddr_x(15 downto 8);
pcia_x(7 downto 2)   <= Z_AA(7 downto 2);
pcia_x(1 downto 0)   <= I_PLA(1 downto 0);

-- PCI address / data multiplexer
THE_PCI_AD_MUX_A_PROC: process( I_DAOUT, Z_ADA(23 downto 8), pcia_x(31 downto 16) ) 
begin
	case I_DAOUT is
		when '0'    => adpa_x <= pcia_x(23 downto 16) & pcia_x(31 downto 24);
		when '1'    => adpa_x <= Z_ADA(15 downto 8) & Z_ADA(23 downto 16);
		when others => adpa_x <= (others => 'X');
	end case;
end process THE_PCI_AD_MUX_A_PROC;

THE_PCI_AD_MUX_B_PROC: process( I_DAOUT, Z_ADA(31 downto 24), Z_SD, pcia_x(15 downto 0) ) 
begin
	case I_DAOUT is
		when '0'    => adpb_x <= pcia_x(7 downto 0) & pcia_x(15 downto 8);
		when '1'    => adpb_x <= Z_SD & Z_ADA(31 downto 24);
		when others => adpb_x <= (others => 'X');
	end case;
end process THE_PCI_AD_MUX_B_PROC;

-- PCI address / data bus driver
THE_PCI_DRIVER_PROC: process( adpa_x, adpb_x, I_PCIENA )
begin
	case I_PCIENA is
		when '0'    => p_ad_x <= (others => 'Z');
		when '1'    => p_ad_x <= adpa_x(7 downto 0) & adpa_x(15 downto 8) & adpb_x(7 downto 0) & adpb_x(15 downto 8);
		when others => p_ad_x <= (others => 'X');
	end case;
end process THE_PCI_DRIVER_PROC;

-- Zorro III data bus registers for storing PCI read data
THE_Z_D_REGS_PROC: process( real_slave_x, I_PCICLK)
begin
	if( real_slave_x = '0' ) then
		z_data_x <= (others => '1');
	elsif( rising_edge(I_PCICLK) ) then
		if( I_PCIDL = '1' ) then
			z_data_x <= P_AD;
		end if;
	end if;
end process THE_Z_D_REGS_PROC;

-- Zorro III data bus drivers
THE_Z_DRIVER_PROC: process( I_DATA, z_data_x )
begin
	case I_DATA is
		when '0'    => z_ada_x <= (others => 'Z');
							z_sd_x  <= (others => 'Z');
		when '1'    => z_ada_x(15 downto 8)  <= z_data_x(31 downto 24);
							z_ada_x(23 downto 16) <= z_data_x(23 downto 16);
							z_sd_x                <= z_data_x(15 downto 8);
							z_ada_x(31 downto 24) <= z_data_x(7 downto 0);
		when others => z_ada_x <= (others => 'X');
							z_sd_x  <= (others => 'X');
	end case;
end process THE_Z_DRIVER_PROC;

-- PCI data bus parity generators
-- first 16bit data (ADPA)
THE_PAR_A_PROC: process( adpa_x )
variable par_a_v : std_logic;
begin
	par_a_v := '0';
	for i in adpa_x'range loop
		par_a_v := par_a_v xor adpa_x(i);
	end loop;
	i_datpar_x(0) <= par_a_v;
end process THE_PAR_A_PROC;

-- second 16bit data (ADPB)
THE_PAR_B_PROC: process( adpb_x )
variable par_b_v : std_logic;
begin
	par_b_v := '0';
	for i in adpb_x'range loop
		par_b_v := par_b_v xor adpb_x(i);
	end loop;
	i_datpar_x(1) <= par_b_v;
end process THE_PAR_B_PROC;

-- Outputs
Z_NSLAVE <= not real_slave_x; -- for Zorro / PCIH
I_ZMA    <= laddr_x(15); -- for PCIH 
I_ZLA    <= laddr_x(8); -- NEW
I_ACC    <= i_acc_x; -- for PCIH
P_AD     <= p_ad_x;
Z_ADA    <= z_ada_x;
Z_SD     <= z_sd_x;
I_DATPAR <= i_datpar_x;
Z_NINT2  <= '0' when (I_NINT2 = '0') else 'Z';
Z_NINT6  <= '0' when (I_NINT6 = '0') else 'Z';
DEBUG    <= debug_x;

end Behavioral;
