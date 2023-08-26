LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY t_all IS
END t_all;
 
ARCHITECTURE behavior OF t_all IS 
 
    -- Component Declaration for the Unit Under Test (UUT)

    COMPONENT pcih
    PORT(
         Z_NFCS : IN  std_logic;
         Z_NSLAVE : IN  std_logic;
         Z_NDTACK : OUT  std_logic;
         Z_NCFGOUT : OUT  std_logic;
         Z_DOE : IN  std_logic;
         Z_NBERR : IN  std_logic;
         Z_READ : IN  std_logic;
         Z_Z3SENSE : IN  std_logic;
         Z_NIORST : IN  std_logic;
         Z_NDS : IN  std_logic_vector(3 downto 0);
         Z_AA : IN  std_logic_vector(7 downto 2);
         Z_ADA : INOUT  std_logic_vector(31 downto 28);
         P_NFRAME : INOUT  std_logic;
         P_NIRDY : INOUT  std_logic;
         P_NLOCK : OUT  std_logic;
         P_NRESET : OUT  std_logic;
         P_PAR : OUT  std_logic;
         P_CLKOUT : OUT  std_logic_vector(3 downto 0);
         P_CBE : INOUT  std_logic_vector(3 downto 0);
         P_NTRDY : IN  std_logic;
         P_NSTOP : IN  std_logic;
         P_NDEVSEL : IN  std_logic;
         P_NSERR : IN  std_logic;
         P_NPERR : IN  std_logic;
         P_NREQ : IN  std_logic_vector(3 downto 0);
         P_NGNT : OUT  std_logic_vector(3 downto 0);
         P_NINTA : IN  std_logic;
         P_NINTB : IN  std_logic;
         P_NINTC : IN  std_logic;
         P_NINTD : IN  std_logic;
         I_DATA : OUT  std_logic;
         I_DAOUT : OUT  std_logic;
         I_PCIENA : OUT  std_logic;
         I_CFLT : OUT  std_logic;
         I_PCICLK : OUT  std_logic;
         I_PCIDL : OUT  std_logic;
         I_ACC : IN  std_logic_vector(1 downto 0);
         I_DATPAR : IN  std_logic_vector(1 downto 0);
         I_PCICLK2 : IN  std_logic;
         I_PLA : OUT  std_logic_vector(1 downto 0);
         I_ZMA : IN  std_logic;
         I_ZLA : IN  std_logic;
         I_NINT2 : OUT  std_logic;
         I_NINT6 : OUT  std_logic;
         DEBUG : OUT  std_logic_vector(15 downto 0);
         I_33M : IN  std_logic
        );
    END COMPONENT;

    COMPONENT pcil
    PORT(
         Z_ADA : INOUT  std_logic_vector(31 downto 8);
         Z_SD : INOUT  std_logic_vector(7 downto 0);
         Z_AA : IN  std_logic_vector(7 downto 2);
         Z_NFCS : IN  std_logic;
         Z_NSLAVE : OUT  std_logic;
         Z_NCFGIN : IN  std_logic;
         Z_NCFGOUT : IN  std_logic;
         Z_NIORST : IN  std_logic;
         Z_FC : IN  std_logic_vector(1 downto 0);
			Z_NINT2 : OUT  std_logic;
			Z_NINT6 : OUT  std_logic;
         P_AD : INOUT  std_logic_vector(31 downto 0);
         I_ACC : OUT  std_logic_vector(1 downto 0);
         I_DATPAR : OUT  std_logic_vector(1 downto 0);
         I_DAOUT : IN  std_logic;
         I_PCIENA : IN  std_logic;
         I_PCIDL : IN  std_logic;
         I_PCICLK : IN  std_logic;
         I_DATA : IN  std_logic;
         I_CFLT : IN  std_logic;
         I_PLA : IN  std_logic_vector(1 downto 0);
         I_ZLA : OUT  std_logic;
         I_ZMA : OUT  std_logic;
			I_NINT2 : IN  std_logic;
			I_NINT6 : IN  std_logic;
         DEBUG : OUT  std_logic_vector(15 downto 0)
        );
    END COMPONENT;

   -- debug
   signal DEBUG_H : std_logic_vector(15 downto 0);
   signal DEBUG_L : std_logic_vector(15 downto 0);
   -- Zorro
   signal Z_FC : std_logic_vector(1 downto 0);
   signal Z_ADA : std_logic_vector(31 downto 8);
   signal Z_SD : std_logic_vector(7 downto 0);
   signal Z_NFCS : std_logic;
   signal Z_NSLAVE : std_logic;
   signal Z_DOE : std_logic;
   signal Z_READ : std_logic;
   signal Z_NDS : std_logic_vector(3 downto 0);
   signal Z_AA : std_logic_vector(7 downto 2);
   signal Z_NDTACK : std_logic;
   signal Z_NCFGIN : std_logic;
   signal Z_NCFGOUT : std_logic;
   -- PCI
   signal I_PCICLK : std_logic;
   signal P_NFRAME : std_logic;
   signal P_NIRDY : std_logic;
   signal P_NTRDY : std_logic;
   signal P_AD : std_logic_vector(31 downto 0);
   signal P_NDEVSEL : std_logic;
   signal P_CBE : std_logic_vector(3 downto 0);
   signal P_NSTOP : std_logic;
   signal P_NREQ : std_logic_vector(3 downto 0);
   signal P_NGNT : std_logic_vector(3 downto 0);
   -- interconnections
   signal I_PCIDL : std_logic;
   signal I_DATA : std_logic;
   signal I_DAOUT : std_logic;
   signal I_PCIENA : std_logic;
   signal I_CFLT : std_logic;
   signal I_PLA : std_logic_vector(1 downto 0);

   -- rest
   signal P_NSERR : std_logic;
   signal P_NPERR : std_logic;
   signal P_NINTA : std_logic;
   signal P_NINTB : std_logic;
   signal P_NINTC : std_logic;
   signal P_NINTD : std_logic;
   signal I_ACC : std_logic_vector(1 downto 0);
   signal I_DATPAR : std_logic_vector(1 downto 0);
   signal I_ZMA : std_logic;
   signal I_ZLA : std_logic;
   signal I_33M : std_logic;
   signal I_NINT2 : std_logic;
   signal I_NINT6 : std_logic;
   signal P_NLOCK : std_logic;
   signal P_NRESET : std_logic;
   signal P_PAR : std_logic;
   signal P_CLKOUT : std_logic_vector(3 downto 0);
   signal Z_NINT2 : std_logic;
   signal Z_NINT6 : std_logic;

   signal Z_NBERR : std_logic := '0';
   signal Z_NIORST : std_logic := '0';
   signal Z_Z3SENSE : std_logic := '0';

   -- Clock period definitions
   constant I_33M_period : time := 33.3 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut1: pcih PORT MAP (
          Z_NFCS => Z_NFCS,
          Z_NSLAVE => Z_NSLAVE,
          Z_NDTACK => Z_NDTACK,
          Z_NCFGOUT => Z_NCFGOUT,
          Z_DOE => Z_DOE,
          Z_NBERR => Z_NBERR,
          Z_READ => Z_READ,
          Z_Z3SENSE => Z_Z3SENSE,
          Z_NIORST => Z_NIORST,
          Z_NDS => Z_NDS,
          Z_AA => Z_AA,
          Z_ADA => Z_ADA(31 downto 28),
          P_NFRAME => P_NFRAME,
          P_NIRDY => P_NIRDY,
          P_NLOCK => P_NLOCK,
          P_NRESET => P_NRESET,
          P_PAR => P_PAR,
          P_CLKOUT => P_CLKOUT,
          P_CBE => P_CBE,
          P_NTRDY => P_NTRDY,
          P_NSTOP => P_NSTOP,
          P_NDEVSEL => P_NDEVSEL,
          P_NSERR => P_NSERR,
          P_NPERR => P_NPERR,
          P_NREQ => P_NREQ,
          P_NGNT => P_NGNT,
          P_NINTA => P_NINTA,
          P_NINTB => P_NINTB,
          P_NINTC => P_NINTC,
          P_NINTD => P_NINTD,
          I_DATA => I_DATA,
          I_DAOUT => I_DAOUT,
          I_PCIENA => I_PCIENA,
          I_CFLT => I_CFLT,
          I_PCICLK => I_PCICLK,
          I_PCIDL => I_PCIDL,
          I_ACC => I_ACC,
          I_DATPAR => I_DATPAR,
          I_PCICLK2 => I_PCICLK,
          I_PLA => I_PLA,
          I_ZMA => I_ZMA,
          I_ZLA => I_ZLA,
          I_NINT2 => I_NINT2,
          I_NINT6 => I_NINT6,
          DEBUG => DEBUG_H,
			 I_33M => I_33M
        );

   uut2: pcil PORT MAP (
          Z_ADA => Z_ADA,
          Z_SD => Z_SD,
          Z_AA => Z_AA,
          Z_NFCS => Z_NFCS,
          Z_NSLAVE => Z_NSLAVE,
          Z_NCFGIN => Z_NCFGIN,
          Z_NCFGOUT => Z_NCFGOUT,
          Z_NIORST => Z_NIORST,
          Z_FC => Z_FC,
          Z_NINT2 => Z_NINT2,
          Z_NINT6 => Z_NINT6,
          P_AD => P_AD,
          I_NINT2 => I_NINT2,
          I_NINT6 => I_NINT6,
          I_ACC => I_ACC,
          I_DATPAR => I_DATPAR,
          I_DAOUT => I_DAOUT,
          I_PCIENA => I_PCIENA,
          I_PCIDL => I_PCIDL,
          I_PCICLK => I_PCICLK,
          I_DATA => I_DATA,
          I_CFLT => I_CFLT,
          I_PLA => I_PLA,
          I_ZLA => I_ZLA,
          I_ZMA => I_ZMA,
          DEBUG => DEBUG_L
        );
		  
   -- Clock process definitions
   I_33M_process: process
   begin
		I_33M <= '1';
		wait for I_33M_period/2;
		I_33M <= '0';
		wait for I_33M_period/2;
   end process I_33M_process;
 

	-- Stimulus process
	stim_proc: process
	begin		

		Z_ADA <= (others => 'Z');
		Z_SD <= (others => 'Z');
		Z_FC <= b"01"; -- fixed
		Z_NFCS <= '1';
		Z_NCFGIN <= '1';
		Z_DOE <= '0';
		Z_NBERR <= '1';
		Z_READ <= '1';
		Z_Z3SENSE <= '1';
		Z_NIORST <= '1';
		Z_NDS <= b"1111";
		Z_AA <= b"000000";
		P_NREQ <= b"1111";
		P_AD <= (others => 'Z');
		-- Pullups
		Z_NDTACK <= 'H';
		P_PAR <= 'H';
		P_NFRAME <= 'H';
		P_NDEVSEL <= 'H';
		P_NIRDY <= 'H';
		P_NSERR <= 'H';
		P_NPERR <= 'H';
		P_NTRDY <= 'H';
		P_NSTOP <= 'H';
		P_NINTA <= 'H';
		P_NINTB <= 'H';
		P_NINTC <= 'H';
		P_NINTD <= 'H';
		
		-- hold reset state for 100 ns.
		wait for 100 ns;
		z_niorst <= '0';
		wait for 100 ns;	
		z_niorst <= '1';
		wait for 100 ns;
		Z_NCFGIN <= '0';

		wait for I_33M_period*10;

		-- insert stimulus here 
		-- autoconfig read
		Z_ADA <= x"ff0000";
		Z_AA <= b"000000";
		Z_READ <= '1';
		wait for 20 ns;
		Z_NFCS <= '0';
		wait for 20 ns;
		Z_ADA <= (others => 'Z');
		wait for 80 ns;
		Z_DOE <= '1';
		wait for 20 ns;
		Z_NDS <= b"0000";
		wait for 50 ns;
		Z_NFCS <= '1';
		Z_NDS <= b"1111";
		wait for 13 ns;
		Z_DOE <= '0';
		wait for 10 ns;
		Z_ADA <= (others => 'Z');
		wait for 200 ns;

		-- autoconfig read
		Z_ADA <= x"ff0001";
		Z_AA <= b"000000";
		Z_READ <= '1';
		wait for 20 ns;
		Z_NFCS <= '0';
		wait for 20 ns;
		Z_ADA <= (others => 'Z');
		wait for 80 ns;
		Z_DOE <= '1';
		wait for 20 ns;
		Z_NDS <= b"0000";
		wait for 50 ns;
		Z_NFCS <= '1';
		Z_NDS <= b"1111";
		wait for 13 ns;
		Z_DOE <= '0';
		wait for 10 ns;
		Z_ADA <= (others => 'Z');
		wait for 200 ns;

		-- autoconfig read
		Z_ADA <= x"ff0000";
		Z_AA <= b"000001";
		Z_READ <= '1';
		wait for 20 ns;
		Z_NFCS <= '0';
		wait for 20 ns;
		Z_ADA <= (others => 'Z');
		wait for 80 ns;
		Z_DOE <= '1';
		wait for 20 ns;
		Z_NDS <= b"0000";
		wait for 50 ns;
		Z_NFCS <= '1';
		Z_NDS <= b"1111";
		wait for 13 ns;
		Z_DOE <= '0';
		wait for 10 ns;
		Z_ADA <= (others => 'Z');
		wait for 200 ns;

		-- autoconfig read
		Z_ADA <= x"ff0001";
		Z_AA <= b"000001";
		Z_READ <= '1';
		wait for 20 ns;
		Z_NFCS <= '0';
		wait for 20 ns;
		Z_ADA <= (others => 'Z');
		wait for 80 ns;
		Z_DOE <= '1';
		wait for 20 ns;
		Z_NDS <= b"0000";
		wait for 50 ns;
		Z_NFCS <= '1';
		Z_NDS <= b"1111";
		wait for 13 ns;
		Z_DOE <= '0';
		wait for 10 ns;
		Z_ADA <= (others => 'Z');
		wait for 200 ns;

		-- autoconfig write (no /CFGOUT)
		Z_ADA <= x"ff0000";
		Z_AA <= b"010010";
		Z_READ <= '0';
		wait for 20 ns;
		Z_NFCS <= '0';
		wait for 20 ns;
		Z_ADA <= (others => 'Z');
		wait for 70 ns;
		Z_ADA <= x"770000";
		Z_SD <= x"00";
		wait for 10 ns;
		Z_DOE <= '1';
		wait for 20 ns;
		Z_NDS <= b"0000";
		wait for 50 ns;
		Z_NFCS <= '1';
		Z_NDS <= b"1111";
		wait for 13 ns;
		Z_DOE <= '0';
		wait for 10 ns;
		Z_ADA <= (others => 'Z');
		Z_SD <= (others => 'Z');
		wait for 200 ns;

		-- autoconfig write (ends autoconfig, pass /CFGOUT)
		Z_ADA <= x"ff0000";
		Z_AA <= b"010001";
		Z_READ <= '0';
		wait for 20 ns;
		Z_NFCS <= '0';
		wait for 20 ns;
		Z_ADA <= (others => 'Z');
		wait for 70 ns;
		Z_ADA <= x"400000";
		Z_SD <= x"00";
		wait for 10 ns;
		Z_DOE <= '1';
		wait for 20 ns;
		Z_NDS <= b"0000";
		wait for 50 ns;
		Z_NFCS <= '1';
		Z_NDS <= b"1111";
		wait for 13 ns;
		Z_DOE <= '0';
		wait for 10 ns;
		Z_ADA <= (others => 'Z');
		Z_SD <= (others => 'Z');
		wait for 200 ns;

		-- Zorro III read, fails
		Z_ADA <= x"770000";
		Z_AA <= b"000000";
		Z_READ <= '1';
		wait for 20 ns;
		Z_NFCS <= '0';
		wait for 20 ns;
		Z_ADA <= (others => 'Z');
		wait for 80 ns;
		Z_DOE <= '1';
		wait for 20 ns;
		Z_NDS <= b"0000";
		wait for 50 ns;
		Z_NFCS <= '1';
		Z_NDS <= b"1111";
		wait for 13 ns;
		Z_DOE <= '0';
		wait for 10 ns;
		Z_ADA <= (others => 'Z');
		wait for 200 ns;

		-- Zorro III read, MEMORY READ
		Z_ADA <= x"40_00_00";
		Z_AA <= b"000000";
		Z_READ <= '1';
		wait for 20 ns;
		Z_NFCS <= '0';
		wait for 20 ns;
		Z_ADA <= (others => 'Z');
		wait for 80 ns;
		Z_DOE <= '1';
		wait for 20 ns;
		Z_NDS <= b"0000";
		-----------------------------
		wait until rising_edge(P_NFRAME);
		P_NDEVSEL <= '0';
		wait until rising_edge(I_PCICLK);
		P_AD <= x"deadbeef";
		P_NTRDY <= '0';
		wait until rising_edge(I_PCICLK);
		P_AD <= (others => 'Z');
		P_NTRDY <= '1';
		P_NDEVSEL <= '1';
		wait until rising_edge(I_PCICLK);
		P_NTRDY <= 'H';
		P_NDEVSEL <= 'H';
		-----------------------------
		wait for 50 ns;
		Z_NFCS <= '1';
		Z_NDS <= b"1111";
		wait for 13 ns;
		Z_DOE <= '0';
		wait for 10 ns;
		Z_ADA <= (others => 'Z');
		wait for 200 ns;

-- A[31:24] : must be zero
-- A[23:20] : must be zero
-- A[19:16] : only one of these four address lines may be "1" at a time (1,2,4,8)
--            ALL OTHER COMBINATIONS ARE RESERVED!
--            These lines select one of the four PCI slots on the base board.
-- A[15:11] : must be zero
-- A[10:8]  : selects a certain function of a multifunction card
-- A[7:2]   : selects the configuration registers
-- A[1:0]   : depends on the access mode (byte/word/longword) 

		-- Zorro III read, CONFIG0
		Z_ADA <= x"5f_c1_02";
		Z_AA <= b"000000";
		Z_READ <= '1';
		wait for 20 ns;
		Z_NFCS <= '0';
		wait for 20 ns;
		Z_ADA <= (others => 'Z');
		wait for 80 ns;
		Z_DOE <= '1';
		wait for 20 ns;
		Z_NDS <= b"0000";
		-----------------------------
		wait until rising_edge(P_NFRAME);
		P_NDEVSEL <= '0';
		wait until rising_edge(I_PCICLK);
		P_AD <= x"00c0ffee";
		P_NTRDY <= '0';
		wait until rising_edge(I_PCICLK);
		P_AD <= (others => 'Z');
		P_NTRDY <= '1';
		P_NDEVSEL <= '1';
		wait until rising_edge(I_PCICLK);
		P_NTRDY <= 'H';
		P_NDEVSEL <= 'H';
		-----------------------------
		wait for 50 ns;
		Z_NFCS <= '1';
		Z_NDS <= b"1111";
		wait for 13 ns;
		Z_DOE <= '0';
		wait for 10 ns;
		Z_ADA <= (others => 'Z');
		wait for 200 ns;

-- A[31:24] : must be zero
-- A[23:21] : must be zero
-- A[20]    : must be one (distinguish between Config0 and Config1)
-- A[19:16] : selects the PCI bus to access (must not be zero)
-- A[15:11] : selects the PCI device on the bus
-- A[10:8]  : selects the function within a device
-- A[7:2]   : selects the configuration register
-- A[1:0]   : depends on the access mode (byte/word/longword)

		-- Zorro III read, CONFIG1
		Z_ADA <= x"5f_d4_00";
		Z_AA <= b"000110";
		Z_READ <= '1';
		wait for 20 ns;
		Z_NFCS <= '0';
		wait for 20 ns;
		Z_ADA <= (others => 'Z');
		wait for 80 ns;
		Z_DOE <= '1';
		wait for 20 ns;
		Z_NDS <= b"0000";
		-----------------------------
		wait until rising_edge(P_NFRAME);
		P_NDEVSEL <= '0';
		wait until rising_edge(I_PCICLK);
		P_AD <= x"01234567";
		P_NTRDY <= '0';
		wait until rising_edge(I_PCICLK);
		P_AD <= (others => 'Z');
		P_NTRDY <= '1';
		P_NDEVSEL <= '1';
		wait until rising_edge(I_PCICLK);
		P_NTRDY <= 'H';
		P_NDEVSEL <= 'H';
		-----------------------------
		wait for 50 ns;
		Z_NFCS <= '1';
		Z_NDS <= b"1111";
		wait for 13 ns;
		Z_DOE <= '0';
		wait for 10 ns;
		Z_ADA <= (others => 'Z');
		wait for 200 ns;

		-- Zorro III read, IO
		Z_ADA <= x"5f_e0_00";
		Z_AA <= b"000000";
		Z_READ <= '1';
		wait for 20 ns;
		Z_NFCS <= '0';
		wait for 20 ns;
		Z_ADA <= (others => 'Z');
		wait for 80 ns;
		Z_DOE <= '1';
		wait for 20 ns;
		Z_NDS <= b"0000";
		-----------------------------
		wait until rising_edge(P_NFRAME);
		P_NDEVSEL <= '0';
		wait until rising_edge(I_PCICLK);
		P_AD <= x"0badc0de";
		P_NTRDY <= '0';
		wait until rising_edge(I_PCICLK);
		P_AD <= (others => 'Z');
		P_NTRDY <= '1';
		P_NDEVSEL <= '1';
		wait until rising_edge(I_PCICLK);
		P_NTRDY <= 'H';
		P_NDEVSEL <= 'H';
		-----------------------------
		wait for 50 ns;
		Z_NFCS <= '1';
		Z_NDS <= b"1111";
		wait for 13 ns;
		Z_DOE <= '0';
		wait for 10 ns;
		Z_ADA <= (others => 'Z');
		wait for 200 ns;


		-- Zorro III write, MEMORY write
		Z_ADA <= x"40_00_aa";
		Z_AA <= b"000101";
		Z_READ <= '0';
		wait for 20 ns;
		Z_NFCS <= '0';
		wait for 20 ns;
		Z_ADA <= (others => 'Z');
		wait for 40 ns;
		Z_ADA <= x"012345";
		Z_SD <= x"67";
		wait for 40 ns;
		Z_DOE <= '1';
		wait for 20 ns;
		Z_NDS <= b"0000";
		-----------------------------
		wait until rising_edge(P_NFRAME);
		P_NDEVSEL <= '0';
		wait until rising_edge(I_PCICLK);
		P_NTRDY <= '0';
		wait until rising_edge(I_PCICLK);
		P_NTRDY <= '1';
		P_NDEVSEL <= '1';
		wait until rising_edge(I_PCICLK);
		P_NTRDY <= 'H';
		P_NDEVSEL <= 'H';
		-----------------------------
		wait for 50 ns;
		Z_NFCS <= '1';
		Z_NDS <= b"1111";
		wait for 13 ns;
		Z_DOE <= '0';
		wait for 10 ns;
		Z_ADA <= (others => 'Z');
		Z_SD <= (others => 'Z');
		wait for 200 ns;

		-- Zorro III write, CONFIG0
		Z_ADA <= x"5f_c1_02";
		Z_AA <= b"000000";
		Z_READ <= '0';
		wait for 20 ns;
		Z_NFCS <= '0';
		wait for 20 ns;
		Z_ADA <= (others => 'Z');
		wait for 40 ns;
		Z_ADA <= x"aabbcc";
		Z_SD <= x"dd";
		wait for 40 ns;
		Z_DOE <= '1';
		wait for 20 ns;
		Z_NDS <= b"1100";
		-----------------------------
		wait until rising_edge(P_NFRAME);
		P_NDEVSEL <= '0';
		wait until rising_edge(I_PCICLK);
		P_NTRDY <= '0';
		wait until rising_edge(I_PCICLK);
		P_NTRDY <= '1';
		P_NDEVSEL <= '1';
		wait until rising_edge(I_PCICLK);
		P_NTRDY <= 'H';
		P_NDEVSEL <= 'H';
		-----------------------------
		wait for 50 ns;
		Z_NFCS <= '1';
		Z_NDS <= b"1111";
		wait for 13 ns;
		Z_DOE <= '0';
		wait for 10 ns;
		Z_ADA <= (others => 'Z');
		Z_SD <= (others => 'Z');
		wait for 200 ns;

		-- Zorro III read, CONFIG1
		Z_ADA <= x"5f_d4_00";
		Z_AA <= b"000110";
		Z_READ <= '0';
		wait for 20 ns;
		Z_NFCS <= '0';
		wait for 20 ns;
		Z_ADA <= (others => 'Z');
		wait for 40 ns;
		Z_ADA <= x"a0b1c2";
		Z_SD <= x"d3";
		wait for 40 ns;
		Z_DOE <= '1';
		wait for 20 ns;
		Z_NDS <= b"1110";
		-----------------------------
		wait until rising_edge(P_NFRAME);
		P_NDEVSEL <= '0';
		wait until rising_edge(I_PCICLK);
		P_NTRDY <= '0';
		wait until rising_edge(I_PCICLK);
		P_NTRDY <= '1';
		P_NDEVSEL <= '1';
		wait until rising_edge(I_PCICLK);
		P_NTRDY <= 'H';
		P_NDEVSEL <= 'H';
		-----------------------------
		wait for 50 ns;
		Z_NFCS <= '1';
		Z_NDS <= b"1111";
		wait for 13 ns;
		Z_DOE <= '0';
		wait for 10 ns;
		Z_ADA <= (others => 'Z');
		Z_SD <= (others => 'Z');
		wait for 200 ns;
		
		-- Zorro III write, IO
		Z_ADA <= x"5f_e0_00";
		Z_AA <= b"000101";
		Z_READ <= '0';
		wait for 20 ns;
		Z_NFCS <= '0';
		wait for 20 ns;
		Z_ADA <= (others => 'Z');
		wait for 40 ns;
		Z_ADA <= x"112233";
		Z_SD <= x"44";
		wait for 40 ns;
		Z_DOE <= '1';
		wait for 20 ns;
		Z_NDS <= b"0000";
		-----------------------------
		wait until rising_edge(P_NFRAME);
		P_NDEVSEL <= '0';
		wait until rising_edge(I_PCICLK);
		P_NTRDY <= '0';
		wait until rising_edge(I_PCICLK);
		P_NTRDY <= '1';
		P_NDEVSEL <= '1';
		wait until rising_edge(I_PCICLK);
		P_NTRDY <= 'H';
		P_NDEVSEL <= 'H';
		-----------------------------
		wait for 50 ns;
		Z_NFCS <= '1';
		Z_NDS <= b"1111";
		wait for 13 ns;
		Z_DOE <= '0';
		wait for 10 ns;
		Z_ADA <= (others => 'Z');
		Z_SD <= (others => 'Z');
		wait for 200 ns;
		
		-- Zorro III read, control register
		Z_ADA <= x"5f_c0_80";
		Z_AA <= b"000000";
		Z_READ <= '1';
		wait for 20 ns;
		Z_NFCS <= '0';
		wait for 20 ns;
		Z_ADA <= (others => 'Z');
		wait for 80 ns;
		Z_DOE <= '1';
		wait for 20 ns;
		Z_NDS <= b"0000";
		wait for 150 ns;
		Z_NFCS <= '1';
		Z_NDS <= b"1111";
		wait for 13 ns;
		Z_DOE <= '0';
		wait for 10 ns;
		Z_ADA <= (others => 'Z');
		wait for 200 ns;
		
		-- Zorro III write, control register
		Z_ADA <= x"5f_c0_80";
		Z_AA <= b"000000";
		Z_READ <= '0';
		wait for 20 ns;
		Z_NFCS <= '0';
		wait for 20 ns;
		Z_ADA <= (others => 'Z');
		wait for 40 ns;
		Z_ADA <= x"000000";
		Z_SD <= x"00";
		wait for 40 ns;
		Z_DOE <= '1';
		wait for 20 ns;
		Z_NDS <= b"0000";
		wait for 150 ns;
		Z_NFCS <= '1';
		Z_NDS <= b"1111";
		wait for 13 ns;
		Z_DOE <= '0';
		wait for 10 ns;
		Z_ADA <= (others => 'Z');
		Z_SD <= (others => 'Z');
		wait for 200 ns;
		
		-- Zorro III write, control register
		Z_ADA <= x"5f_c0_80";
		Z_AA <= b"000000";
		Z_READ <= '0';
		wait for 20 ns;
		Z_NFCS <= '0';
		wait for 20 ns;
		Z_ADA <= (others => 'Z');
		wait for 40 ns;
		Z_ADA <= x"800000";
		Z_SD <= x"00";
		wait for 40 ns;
		Z_DOE <= '1';
		wait for 20 ns;
		Z_NDS <= b"0000";
		wait for 150 ns;
		Z_NFCS <= '1';
		Z_NDS <= b"1111";
		wait for 13 ns;
		Z_DOE <= '0';
		wait for 10 ns;
		Z_ADA <= (others => 'Z');
		Z_SD <= (others => 'Z');
		wait for 200 ns;

		-- Try round robbin 
		P_NREQ <= b"0000";

		wait for 777 ns;

		-- Zorro III write, MEMORY write
		Z_ADA <= x"40_00_aa";
		Z_AA <= b"000101";
		Z_READ <= '0';
		wait for 20 ns;
		Z_NFCS <= '0';
		wait for 20 ns;
		Z_ADA <= (others => 'Z');
		wait for 40 ns;
		Z_ADA <= x"012345";
		Z_SD <= x"67";
		wait for 40 ns;
		Z_DOE <= '1';
		wait for 20 ns;
		Z_NDS <= b"0000";
		-----------------------------
		wait until rising_edge(P_NFRAME);
		P_NDEVSEL <= '0';
		wait until rising_edge(I_PCICLK);
		P_NTRDY <= '0';
		wait until rising_edge(I_PCICLK);
		P_NTRDY <= '1';
		P_NDEVSEL <= '1';
		wait until rising_edge(I_PCICLK);
		P_NTRDY <= 'H';
		P_NDEVSEL <= 'H';
		-----------------------------
		wait for 50 ns;
		Z_NFCS <= '1';
		Z_NDS <= b"1111";
		wait for 13 ns;
		Z_DOE <= '0';
		wait for 10 ns;
		Z_ADA <= (others => 'Z');
		Z_SD <= (others => 'Z');
		wait for 200 ns;

		
		-- Stay a while... stay forever!!! MUAHAHAHAH!!!!
		wait;
	end process;

--		-- Zorro III write byte lane test, IO
--		Z_ADA <= x"5f_e0_00";
--		Z_AA <= b"000101";
--		Z_READ <= '0';
--		wait for 20 ns;
--		Z_NFCS <= '0';
--		wait for 20 ns;
--		Z_ADA <= (others => 'Z');
--		wait for 40 ns;
--		Z_ADA <= x"105476";
--		Z_SD <= x"32";
--		wait for 40 ns;
--		Z_DOE <= '1';
--		wait for 20 ns;
--		Z_NDS <= b"0000";
--		-----------------------------
--		wait until rising_edge(P_NFRAME);
--		P_NDEVSEL <= '0';
--		wait until rising_edge(I_PCICLK);
--		Z_NDS <= b"1111";
--		wait until rising_edge(I_PCICLK);
--		Z_NDS <= b"1110";
--		wait until rising_edge(I_PCICLK);
--		Z_NDS <= b"1101";
--		wait until rising_edge(I_PCICLK);
--		Z_NDS <= b"1011";
--		wait until rising_edge(I_PCICLK);
--		Z_NDS <= b"0111";
--		wait until rising_edge(I_PCICLK);
--		Z_NDS <= b"1100";
--		wait until rising_edge(I_PCICLK);
--		Z_NDS <= b"1001";
--		wait until rising_edge(I_PCICLK);
--		Z_NDS <= b"0011";
--		wait until rising_edge(I_PCICLK);
--		Z_NDS <= b"1000";
--		wait until rising_edge(I_PCICLK);
--		Z_NDS <= b"0001";
--		wait until rising_edge(I_PCICLK);
--		Z_NDS <= b"0000";
--		wait until rising_edge(I_PCICLK);
--		P_NTRDY <= '0';
--		wait until rising_edge(I_PCICLK);
--		P_NTRDY <= '1';
--		P_NDEVSEL <= '1';
--		wait until rising_edge(I_PCICLK);
--		P_NTRDY <= 'H';
--		P_NDEVSEL <= 'H';
--		-----------------------------
--		wait for 50 ns;
--		Z_NFCS <= '1';
--		Z_NDS <= b"1111";
--		wait for 13 ns;
--		Z_DOE <= '0';
--		wait for 10 ns;
--		Z_ADA <= (others => 'Z');
--		Z_SD <= (others => 'Z');
--		wait for 200 ns;		
		
END;
