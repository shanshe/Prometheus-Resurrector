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

entity pcih is
port(
	-- Zorro signals
	Z_NFCS		: in		std_logic;
	Z_NSLAVE		: in		std_logic;
	Z_NDTACK		: out		std_logic;
	Z_NCFGOUT	: out		std_logic;
	Z_DOE			: in		std_logic;
	Z_NBERR		: in		std_logic;
	Z_READ		: in		std_logic;
	Z_Z3SENSE	: in		std_logic;
	Z_NIORST		: in		std_logic;
	Z_NDS			: in		std_logic_vector(3 downto 0);
	Z_AA			: in		std_logic_vector(7 downto 2);
	Z_ADA			: inout	std_logic_vector(31 downto 28);
	-- PCI signals
	P_NFRAME		: inout	std_logic;
	P_NIRDY		: inout	std_logic;
	P_NLOCK		: out		std_logic;
	P_NRESET		: out		std_logic;
	P_PAR			: out		std_logic;
	P_CLKOUT		: out		std_logic_vector(3 downto 0);
	P_CBE			: inout	std_logic_vector(3 downto 0);
	P_NTRDY		: in		std_logic;
	P_NSTOP		: in		std_logic;
	P_NDEVSEL	: in		std_logic;
	P_NSERR		: in		std_logic;
	P_NPERR		: in		std_logic;
	P_NREQ		: in		std_logic_vector(3 downto 0);
	P_NGNT		: out		std_logic_vector(3 downto 0);
	P_NINTA		: in		std_logic;
	P_NINTB		: in		std_logic;
	P_NINTC		: in		std_logic;
	P_NINTD		: in		std_logic;
	-- interconnects
	I_DATA		: out		std_logic;
	I_DAOUT		: out		std_logic;
	I_PCIENA		: out		std_logic;
	I_CFLT		: out		std_logic;
	I_PCICLK		: out		std_logic;
	I_PCIDL		: out		std_logic;
	I_ACC			: in		std_logic_vector(1 downto 0);
	I_DATPAR		: in		std_logic_vector(1 downto 0);
	I_PCICLK2	: in		std_logic;
	I_PLA			: out		std_logic_vector(1 downto 0); -- was SPARE[1:0] in original design
	I_ZMA			: in		std_logic; -- was LADDR15 in original design
	I_ZLA			: in		std_logic; -- NEW, replaces ROMA[0] latch
	I_NINT2		: out		std_logic;
	I_NINT6		: out		std_logic; -- NOT USED
	DEBUG			: out		std_logic_vector(15 downto 0);
	I_33M			: in		std_logic
);
end pcih;

architecture Behavioral of pcih is
-- Components
component acfg_rom is
port( ROM_A_IN			: in	std_logic_vector(6 downto 1);
		ROM_SERIAL_IN	: in	std_logic_vector(31 downto 0);
		ROM_DATA_OUT	: out	std_logic_vector(3 downto 0)
	 );
end component acfg_rom;

component pci_seq is
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
end component pci_seq;

component pci_arb is
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
end component pci_arb;

-- Signals
-- Parity stuff
signal cbe_p_x					: std_logic;
signal dat_p_x					: std_logic;
signal cbe_p					: std_logic;
signal dat_p					: std_logic;
signal p_par_x					: std_logic; -- tristated signal!
signal p_par_ena				: std_logic;
-- Autoconfig stuff
signal i_cflt_x				: std_logic; -- base addres write pulse
signal ncfg_x					: std_logic;
signal ncfg_xx					: std_logic; -- /CFGOUT
signal ena_rom_x				: std_logic;
signal rom_a_x					: std_logic_vector(5 downto 0);
signal rom_data_x				: std_logic_vector(3 downto 0);
signal z_ada_x					: std_logic_vector(3 downto 0);
-- Zorro stuff
signal read_access_x			: std_logic;
signal z_ndtack_x				: std_logic;
signal dtack_cfg_x			: std_logic;
signal dtack_ctrl_x			: std_logic;
signal dtack_pci_x			: std_logic;
-- Interrupt stuff
signal z_nint2_x				: std_logic;
signal pci_nints_x			: std_logic;
-- Control register stuff
signal sel_ctrl_x				: std_logic;
signal clk_ctrl_x				: std_logic;
signal ena_ctrl_x				: std_logic;
signal ctrl_data_x			: std_logic_vector(3 downto 0);
signal pci_int_ena_x			: std_logic;
-- PCI stuff
signal idle_x					: std_logic;
signal z3gnt_x					: std_logic;
signal ncycstart_x			: std_logic; -- Zorro III cycle start signal
signal cmd_x					: std_logic_vector(3 downto 0);
signal cbp_x					: std_logic_vector(3 downto 0);
signal cbe_ena_x				: std_logic;
signal cycend_x				: std_logic;
signal cycout_x				: std_logic;
signal i_pcidl_x				: std_logic;
signal reqz3_x					: std_logic;
signal gntz3_x					: std_logic;
signal p_nreset_x				: std_logic;
signal p_cbe_x					: std_logic_vector(3 downto 0);
signal p_ngnt_x				: std_logic_vector(3 downto 0);
-- Interconnect stuff
signal i_pciena_x				: std_logic;
signal i_pla_x					: std_logic_vector(1 downto 0);
signal i_data_x				: std_logic;
signal i_daout_x				: std_logic;

signal debug_x					: std_logic_vector(15 downto 0);

begin

-------------------------------------------------------------------------------
-- debug signals
debug_x(15) <= i_pciena_x;--idle_x;
debug_x(14) <= dtack_pci_x;--reqz3_x;
debug_x(13) <= dtack_ctrl_x;--gntz3_x;
debug_x(12) <= dtack_cfg_x;--cycout_x;
debug_x(11) <= ncycstart_x;--P_NTRDY;--
debug_x(10) <= P_NDEVSEL;--cycend_x;
debug_x(9)  <= Z_NSLAVE;--ncfg_x;
debug_x(8)  <= i_data_x;--cbe_ena_x;
-------------------------------------------------------------------------------
debug_x(7 downto 4) <= p_cbe_x;

-------------------------------------------------------------------------------
-- Cycle start / end recognition
-- Zorro cycle is assumed started when /SLAVE and at least one /DS[3:0] is asserted
ncycstart_x <= '0' when ((Z_NSLAVE = '0') and (Z_NDS /= b"1111")) else '1';
-- BUG: could be handled by /SLAVE and sel_ctrl_x alone to gain some ns

-- a Zorro III read access, in general (Autoconfig, control register, PCI).
--read_access_x <= '1' when ((Z_NSLAVE = '0') and (TO_X01(Z_NBERR) = '1') and (Z_READ = '1') and (Z_DOE = '1')) else '0';
read_access_x <= '1' when ((Z_NSLAVE = '0') and (Z_NBERR /= '0') and (Z_READ = '1') and (Z_DOE = '1')) else '0';

-- Zorro requests PCI bus 
reqz3_x     <= '1' when ((sel_ctrl_x = '0') and (ncycstart_x = '0') and (cycend_x = '1') and (ncfg_xx = '0')) else '0';

-- reset by /SLAVE, activated by PCI sequencer
THE_CYCEND_PROC: process( cycout_x, Z_NSLAVE )
begin
	if( Z_NSLAVE = '1' ) then
		cycend_x <= '1';
	elsif( rising_edge(cycout_x) ) then
		cycend_x <= '0';
	end if;
end process THE_CYCEND_PROC;
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- Autoconfig ROM
THE_ACFG_ROM: acfg_rom
port map( ROM_A_IN		=> rom_a_x,
			 ROM_SERIAL_IN	=> x"0000_0000",
			 ROM_DATA_OUT	=> rom_data_x
		   );

-- mixed address lines in Zorro III
rom_a_x <= Z_AA(6 downto 2) & I_ZLA;

-- data enable for read 
ena_rom_x <= '1' when ((read_access_x = '1') and (ncfg_xx = '1')) else '0';

-- either register read back, or autoconfig ROM
THE_DATA_SEL_PROC: process( ncfg_xx, rom_data_x, ctrl_data_x )
begin
	case ncfg_xx is
		when '0'    => z_ada_x <= ctrl_data_x;
		when '1'    => z_ada_x <= rom_data_x;
		when others => z_ada_x <= (others => 'X');
	end case;
end process THE_DATA_SEL_PROC;
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- base address write and /CFGOUT handling
i_cflt_x   <= '1' when ((Z_NSLAVE = '0') and (Z_NDS(3) = '0') and (ncfg_xx = '1') and (Z_AA = b"010001") ) else '0';

-- first register, set on write pulse
THE_CFG_WRITE_PROC: process( Z_NIORST, i_cflt_x ) 
begin
	if( Z_NIORST = '0' ) then
		ncfg_x <= '1';
	elsif( rising_edge(i_cflt_x) ) then
		ncfg_x <= '0';
	end if;
end process THE_CFG_WRITE_PROC;

-- second register, set on end of cycle
THE_CFG_CYCLE_PROC: process( Z_NIORST, Z_NFCS ) 
begin
	if( Z_NIORST = '0' ) then
		ncfg_xx <= '1';
	elsif( rising_edge(Z_NFCS) ) then
		ncfg_xx <= ncfg_x;
	end if;
end process THE_CFG_CYCLE_PROC;
-------------------------------------------------------------------------------





-------------------------------------------------------------------------------
-- PCI arbiter
THE_PCI_ARB: pci_arb
port map(
	REQZ3_IN		=> reqz3_x,
	NREQ_IN		=> P_NREQ,
	IDLE_IN		=> idle_x,
	GNTZ3_OUT	=> z3gnt_x,
	NGNT_OUT		=> p_ngnt_x,
	TOC_OUT		=> debug_x(3 downto 0), --open,
	STATE_OUT	=> open,--debug_x(7 downto 4), --open,
	NIORST		=> Z_NIORST,
	PCICLK		=> I_PCICLK2
);

-- PCI bus is idle when #FRAME and #IRDY are both deasserted
--idle_x  <= TO_X01(P_NFRAME) and TO_X01(P_NIRDY);
idle_x  <= '1' when (P_NFRAME /= '0') and (P_NIRDY /= '0') else '0';

-- Zorro III gets the PCI bus when BOTH granted by arbiter AND freed by last PCI busmaster
gntz3_x <= idle_x and z3gnt_x;
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- PCI sequencer
THE_PCI_SEQ: pci_seq 
port map(
	REQ_IN		=> reqz3_x,
	GNT_IN		=> gntz3_x,
	READ_IN		=> Z_READ,
	NDEVSEL_IN	=> TO_X01(P_NDEVSEL),
	NTRDY_IN		=> TO_X01(P_NTRDY),
	NSTOP_IN		=> TO_X01(P_NSTOP),
	STATE_OUT	=> open,
	CYCOUT_OUT	=> cycout_x,
	NFRAME_OUT	=> P_NFRAME,
	NIRDY_OUT	=> P_NIRDY,
	ENA_C_OUT	=> cbe_ena_x,
	ENA_P_OUT	=> i_pciena_x,
	ENA_D_OUT	=> i_daout_x,
	PCIDL_OUT	=> i_pcidl_x,
	NIORST		=> Z_NIORST,
	PCICLK		=> I_PCICLK2
);

-- PCI read access, open data bus drivers
i_data_x <=  '1' when ((sel_ctrl_x = '0') and (ncfg_xx = '0') and (read_access_x = '1')) else '0';
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- PCI command encoder
cmd_x(0) <= not Z_READ;
cmd_x(1) <= '1';
cmd_x(2) <= not I_ACC(1) and not I_ACC(0);
cmd_x(3) <=     I_ACC(1) xor     I_ACC(0);

THE_PCI_CMD_MUX_PROC: process( i_daout_x, Z_NDS, cmd_x )
begin
	case i_daout_x is
		when '0'		=> cbp_x <= cmd_x;
		when '1'		=> cbp_x <= Z_NDS(0) & Z_NDS(1) & Z_NDS(2) & Z_NDS(3);
		when others	=> cbp_x <= (others => 'X');
	end case;
end process THE_PCI_CMD_MUX_PROC;

p_cbe_x <= cbp_x when (cbe_ena_x = '1') else (others => 'Z');
-------------------------------------------------------------------------------


-------------------------------------------------------------------------------
-- PCI interrupt handling
-- "or" all PCI ints
--pci_nints_x <= TO_X01(P_NINTA) and TO_X01(P_NINTB) and TO_X01(P_NINTC) and TO_X01(P_NINTD);
pci_nints_x <= '1' when (P_NINTA/='0') and (P_NINTB/='0') and (P_NINTC/='0') and (P_NINTD/='0') else '0';
-- by default no interrupt is enabled
z_nint2_x   <= pci_nints_x or not pci_int_ena_x;
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- control register (only available after autoconfig)
sel_ctrl_x   <= '1' when ((I_ACC = b"01") and (I_ZMA = '1') and (ncfg_xx = '0')) else '0';
clk_ctrl_x   <= '1' when ((Z_NSLAVE = '0') and (Z_NDS(3) = '0') and (Z_READ = '0') and (Z_DOE = '1')) else '0';
dtack_ctrl_x <= '0' when ((Z_NFCS = '0') and (sel_ctrl_x = '1')) else '1';
ena_ctrl_x   <= '1' when ((sel_ctrl_x = '1') and (read_access_x = '1')) else '0';
-- real register here
THE_CTRL_REG_WRITE_PROC: process( Z_NIORST, clk_ctrl_x )
begin
	if( Z_NIORST = '0' ) then
		p_nreset_x    <= '1';
		pci_int_ena_x <= '0';
	elsif( rising_edge(clk_ctrl_x) ) then
		if( sel_ctrl_x = '1' ) then
			p_nreset_x    <= Z_ADA(31);
			pci_int_ena_x <= Z_ADA(30);
		end if;
	end if;
end process THE_CTRL_REG_WRITE_PROC;
ctrl_data_x <= p_nreset_x & pci_int_ena_x & pci_nints_x & '0';
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- /DTACK generation
dtack_cfg_x <= '0' when ((Z_NFCS = '0') and (ncfg_xx = '1') and (Z_NSLAVE ='0') and (Z_NDS(3) = '0')) else '1';
dtack_pci_x <= '0' when ((Z_NFCS = '0') and (ncfg_xx = '0') and (cycend_x = '0')) else '1';
z_ndtack_x  <= dtack_cfg_x and dtack_ctrl_x and dtack_pci_x;
-------------------------------------------------------------------------------


-------------------------------------------------------------------------------
-- PCI low address generator, using byte strobes
THE_ADGEN_PROC: process( Z_NDS, I_ACC )
begin
	case I_ACC is
		when b"00"  => i_pla_x <= b"00"; -- memory accesses
		when b"01"  => i_pla_x <= b"00"; -- type 0 config
		when b"10"  => i_pla_x <= b"01"; -- type 1 config
		when b"11"  => 
			case Z_NDS is
				when b"0000" => i_pla_x <= b"00";
				when b"0001" => i_pla_x <= b"01";
				when b"0010" => i_pla_x <= b"00";
				when b"0011" => i_pla_x <= b"10";
				when b"0100" => i_pla_x <= b"00";
				when b"0101" => i_pla_x <= b"01";
				when b"0110" => i_pla_x <= b"00";
				when b"0111" => i_pla_x <= b"11";
				when b"1000" => i_pla_x <= b"00";
				when b"1001" => i_pla_x <= b"01";
				when b"1010" => i_pla_x <= b"00";
				when b"1011" => i_pla_x <= b"10";
				when b"1100" => i_pla_x <= b"00";
				when b"1101" => i_pla_x <= b"01";
				when b"1110" => i_pla_x <= b"00";
				when b"1111" => i_pla_x <= b"00";
				when others  => i_pla_x <= (others => 'X');
			end case;
		when others => i_pla_x <= (others => 'X');
	end case;
end process THE_ADGEN_PROC;
-------------------------------------------------------------------------------

-------------------------------------------------------------------------------
-- PCI parity signal generation
-- data lines parity
dat_p_x   <= I_DATPAR(0) xor I_DATPAR(1);
-- cbe lines parity
cbe_p_x   <= (P_CBE(3) xor P_CBE(2)) xor (P_CBE(1) xor P_CBE(0));
-- final parity driven to bus
p_par_x   <= dat_p xor cbe_p;

THE_DAT_PAR_PROC: process( I_PCICLK2 )
begin
	if( falling_edge(I_PCICLK2) ) then
		dat_p <= dat_p_x;
	end if;
end process THE_DAT_PAR_PROC;

THE_CBE_PAR_PROC: process( I_PCICLK2 )
begin
	if( rising_edge(I_PCICLK2) ) then
		cbe_p     <= cbe_p_x;
		p_par_ena <= i_pciena_x;
	end if;
end process THE_CBE_PAR_PROC;

-------------------------------------------------------------------------------

-- Outputs
-- PCI
P_NLOCK      <= '1';
P_CLKOUT(0)  <= not I_33M; 
P_CLKOUT(1)  <= not I_33M; 
P_CLKOUT(2)  <= not I_33M; 
P_CLKOUT(3)  <= not I_33M; 
P_PAR        <= p_par_x when (p_par_ena = '1') else 'Z';
P_NRESET     <= p_nreset_x;
P_CBE        <= p_cbe_x;
P_NGNT       <= p_ngnt_x;
-- Interconnects
I_PCICLK     <= not I_33M;  -- clock for second CPLD; mirrored to first one 
I_PLA        <= i_pla_x;    -- PCI A[1:0]
I_CFLT       <= i_cflt_x;   -- base address write pulse
I_DATA       <= i_data_x;   -- 
I_DAOUT      <= i_daout_x;  -- 
I_PCIENA     <= i_pciena_x; -- 
I_PCIDL      <= i_pcidl_x;  --
-- Zorro 
Z_NCFGOUT    <= ncfg_xx;
Z_ADA        <= z_ada_x when ((ena_rom_x = '1') or (ena_ctrl_x = '1')) else (others => 'Z');
Z_NDTACK     <= '0' when (z_ndtack_x = '0') else 'Z';
--Z_NINT2      <= '0' when (z_nint2_x = '0') else 'Z';
--Z_NINT6      <= 'Z';
I_NINT2      <= z_nint2_x;
I_NINT6      <= '1';

DEBUG        <= debug_x;

end Behavioral;

