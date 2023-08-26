LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY t_pcih IS
END t_pcih;
 
ARCHITECTURE behavior OF t_pcih IS 
 
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
    
   -- Zorro
   signal Z_ADA : std_logic_vector(31 downto 28);
   signal Z_NFCS : std_logic := '0';
   signal Z_NSLAVE : std_logic := '0';
   signal Z_DOE : std_logic := '0';
   signal Z_READ : std_logic := '0';
   signal Z_NDS : std_logic_vector(3 downto 0) := (others => '0');
   signal Z_AA : std_logic_vector(7 downto 2) := (others => '0');
   signal Z_NDTACK : std_logic;
   signal Z_NCFGOUT : std_logic;
   -- PCI
   signal I_PCICLK2 : std_logic := '0';
   signal P_NFRAME : std_logic;
   signal P_NIRDY : std_logic;
   signal P_NTRDY : std_logic := '0';
   signal P_NDEVSEL : std_logic := '0';
   signal P_CBE : std_logic_vector(3 downto 0);
   signal P_NSTOP : std_logic := '0';
   signal P_NREQ : std_logic_vector(3 downto 0) := (others => '0');
   signal P_NGNT : std_logic_vector(3 downto 0);
   -- interconnections
   signal I_PCIDL : std_logic;
   signal I_DATA : std_logic;
   signal I_DAOUT : std_logic;
   signal I_PCIENA : std_logic;
   signal I_CFLT : std_logic;
   signal I_PLA : std_logic_vector(1 downto 0);
   -- debug
   signal DEBUG : std_logic_vector(15 downto 0);

   -- rest
   signal P_NSERR : std_logic := '0';
   signal P_NPERR : std_logic := '0';
   signal P_NINTA : std_logic := '0';
   signal P_NINTB : std_logic := '0';
   signal P_NINTC : std_logic := '0';
   signal P_NINTD : std_logic := '0';
   signal I_ACC : std_logic_vector(1 downto 0) := (others => '0');
   signal I_DATPAR : std_logic_vector(1 downto 0) := (others => '0');
   signal I_ZMA : std_logic := '0';
   signal I_ZLA : std_logic := '0';
   signal I_33M : std_logic := '0';
   signal I_NINT2 : std_logic;
   signal I_NINT6 : std_logic;
   signal P_NLOCK : std_logic;
   signal P_NRESET : std_logic;
   signal P_PAR : std_logic;
   signal P_CLKOUT : std_logic_vector(3 downto 0);
   signal I_PCICLK : std_logic;

   signal Z_NBERR : std_logic := '0';
   signal Z_NIORST : std_logic := '0';
   signal Z_Z3SENSE : std_logic := '0';

   -- Clock period definitions
   constant I_PCICLK2_period : time := 33.3 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: pcih PORT MAP (
          Z_NFCS => Z_NFCS,
          Z_NSLAVE => Z_NSLAVE,
          Z_NDTACK => Z_NDTACK,
          Z_NCFGOUT => Z_NCFGOUT,
          Z_DOE => Z_DOE,
          Z_NBERR => Z_NBERR,
          Z_READ => Z_READ,
          Z_Z3SENSE => Z_Z3SENSE,
          Z_NIORST => Z_NIORST,
          I_NINT2 => I_NINT2,
          I_NINT6 => I_NINT6,
          Z_NDS => Z_NDS,
          Z_AA => Z_AA,
          Z_ADA => Z_ADA,
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
          I_PCICLK2 => I_PCICLK2,
          I_PLA => I_PLA,
          I_ZMA => I_ZMA,
          I_ZLA => I_ZLA,
          DEBUG => DEBUG,
			 I_33M => I_33M
        );

   -- Clock process definitions
   I_PCICLK2_process :process
   begin
		I_33M <= '1';
		I_PCICLK2 <= '0';
		wait for I_PCICLK2_period/2;
		I_33M <= '0';
		I_PCICLK2 <= '1';
		wait for I_PCICLK2_period/2;
   end process;
 

	-- Stimulus process
	stim_proc: process
	begin		

		Z_ADA <= (others => 'Z');
		Z_NFCS <= '1';
		Z_NSLAVE <= '1';
		Z_DOE <= '0';
		Z_NBERR <= '1';
		Z_READ <= '1';
		Z_Z3SENSE <= '1';
		Z_NIORST <= '1';
		Z_NDS <= b"1111";
		Z_AA <= b"000000";
		P_NREQ <= b"1111";
		I_ACC <= b"00";
		I_DATPAR <= b"00";
		I_ZMA <= '0';
		I_ZLA <= '0';
		-- Pullups
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

		wait for I_PCICLK2_period*10;

		-- insert stimulus here 
		-- autoconfig read /DTACK
		Z_AA <= b"000000";
		Z_READ <= '1';
		wait for 15 ns;
		Z_NFCS <= '0';
		wait for 13 ns;
		Z_NSLAVE <= '0';
		wait for 80 ns;
		Z_DOE <= '1';
		I_ZLA <= '0';
		wait for 20 ns;
		Z_NDS <= b"0000";
		wait for 50 ns;
		Z_NFCS <= '1';
		Z_NDS <= b"1111";
		wait for 13 ns;
		Z_NSLAVE <= '1';
		Z_DOE <= '0';
		wait for 200 ns;

		-- autoconfig read /DTACK
		Z_AA <= b"000000";
		Z_READ <= '1';
		wait for 15 ns;
		Z_NFCS <= '0';
		wait for 13 ns;
		Z_NSLAVE <= '0';
		wait for 80 ns;
		Z_DOE <= '1';
		I_ZLA <= '1';
		wait for 20 ns;
		Z_NDS <= b"0000";
		wait for 50 ns;
		Z_NFCS <= '1';
		Z_NDS <= b"1111";
		wait for 13 ns;
		Z_NSLAVE <= '1';
		Z_DOE <= '0';
		wait for 200 ns;

		-- autoconfig read /DTACK
		Z_AA <= b"000001";
		Z_READ <= '1';
		wait for 15 ns;
		Z_NFCS <= '0';
		wait for 13 ns;
		Z_NSLAVE <= '0';
		wait for 80 ns;
		Z_DOE <= '1';
		I_ZLA <= '0';
		wait for 20 ns;
		Z_NDS <= b"0000";
		wait for 50 ns;
		Z_NFCS <= '1';
		Z_NDS <= b"1111";
		wait for 13 ns;
		Z_NSLAVE <= '1';
		Z_DOE <= '0';
		wait for 200 ns;

		-- autoconfig read /DTACK
		Z_AA <= b"000001";
		Z_READ <= '1';
		wait for 15 ns;
		Z_NFCS <= '0';
		wait for 13 ns;
		Z_NSLAVE <= '0';
		wait for 80 ns;
		Z_DOE <= '1';
		I_ZLA <= '1';
		wait for 20 ns;
		Z_NDS <= b"0000";
		wait for 50 ns;
		Z_NFCS <= '1';
		Z_NDS <= b"1111";
		wait for 13 ns;
		Z_NSLAVE <= '1';
		Z_DOE <= '0';
		wait for 200 ns;

		-- autoconfig write base address
		Z_AA <= b"010001";
		Z_READ <= '0';
		wait for 15 ns;
		Z_NFCS <= '0';
		wait for 13 ns;
		I_ZMA <= '0';
		I_ACC <= b"00";
		Z_NSLAVE <= '0';
		wait for 80 ns;
		Z_DOE <= '1';
		Z_ADA <= x"e";
		wait for 20 ns;
		Z_NDS <= b"0000";
		wait for 50 ns;
		Z_NFCS <= '1';
		Z_NDS <= b"1111";
		wait for 13 ns;
		Z_NSLAVE <= '1';
		Z_DOE <= '0';
		Z_ADA <= (others => 'Z');
		wait for 200 ns;

		-- read config register
		Z_AA <= b"000111";
		Z_READ <= '1';
		wait for 15 ns;
		Z_NFCS <= '0';
		wait for 13 ns;
		Z_NSLAVE <= '0';
		I_ACC <= b"01";
		I_ZMA <= '1';
		wait for 80 ns;
		Z_DOE <= '1';
		wait for 20 ns;
		Z_NDS <= b"0000";
		wait for 50 ns;
		Z_NFCS <= '1';
		Z_NDS <= b"1111";
		wait for 13 ns;
		Z_NSLAVE <= '1';
		Z_DOE <= '0';
		wait for 200 ns;

		-- write ctrl register
		Z_AA <= b"010001";
		Z_READ <= '0';
		wait for 15 ns;
		Z_NFCS <= '0';
		wait for 13 ns;
		I_ZMA <= '1';
		I_ACC <= b"01";
		Z_NSLAVE <= '0';
		wait for 80 ns;
		Z_ADA <= b"1000";
		Z_DOE <= '1';
		wait for 20 ns;
		Z_NDS <= b"0000";
		wait for 50 ns;
		Z_NFCS <= '1';
		Z_NDS <= b"1111";
		wait for 13 ns;
		Z_NSLAVE <= '1';
		Z_ADA <= (others => 'Z');
		Z_DOE <= '0';
		wait for 200 ns;

		-- read config register
		Z_AA <= b"000111";
		Z_READ <= '1';
		wait for 15 ns;
		Z_NFCS <= '0';
		wait for 13 ns;
		Z_NSLAVE <= '0';
		I_ACC <= b"01";
		I_ZMA <= '1';
		wait for 80 ns;
		Z_DOE <= '1';
		wait for 20 ns;
		Z_NDS <= b"0000";
		wait for 50 ns;
		Z_NFCS <= '1';
		Z_NDS <= b"1111";
		wait for 13 ns;
		Z_NSLAVE <= '1';
		Z_DOE <= '0';
		wait for 200 ns;

		-- write ctrl register
		Z_AA <= b"010001";
		Z_READ <= '0';
		wait for 15 ns;
		Z_NFCS <= '0';
		wait for 13 ns;
		I_ZMA <= '1';
		I_ACC <= b"01";
		Z_NSLAVE <= '0';
		wait for 80 ns;
		Z_ADA <= b"0000";
		Z_DOE <= '1';
		wait for 20 ns;
		Z_NDS <= b"0000";
		wait for 50 ns;
		Z_NFCS <= '1';
		Z_NDS <= b"1111";
		wait for 13 ns;
		Z_NSLAVE <= '1';
		Z_ADA <= (others => 'Z');
		Z_DOE <= '0';
		wait for 200 ns;

		-- read config register
		Z_AA <= b"000111";
		Z_READ <= '1';
		wait for 15 ns;
		Z_NFCS <= '0';
		wait for 13 ns;
		Z_NSLAVE <= '0';
		I_ACC <= b"01";
		I_ZMA <= '1';
		wait for 80 ns;
		Z_DOE <= '1';
		wait for 20 ns;
		Z_NDS <= b"0000";
		wait for 50 ns;
		Z_NFCS <= '1';
		Z_NDS <= b"1111";
		wait for 13 ns;
		Z_NSLAVE <= '1';
		Z_DOE <= '0';
		wait for 200 ns;

		-- write ctrl register
		Z_AA <= b"010001";
		Z_READ <= '0';
		wait for 15 ns;
		Z_NFCS <= '0';
		wait for 13 ns;
		I_ZMA <= '1';
		I_ACC <= b"01";
		Z_NSLAVE <= '0';
		wait for 80 ns;
		Z_ADA <= b"1000";
		Z_DOE <= '1';
		wait for 20 ns;
		Z_NDS <= b"0000";
		wait for 50 ns;
		Z_NFCS <= '1';
		Z_NDS <= b"1111";
		wait for 13 ns;
		Z_NSLAVE <= '1';
		Z_ADA <= (others => 'Z');
		Z_DOE <= '0';
		wait for 200 ns;

		-- read config register
		Z_AA <= b"000111";
		Z_READ <= '1';
		wait for 15 ns;
		Z_NFCS <= '0';
		wait for 13 ns;
		Z_NSLAVE <= '0';
		I_ACC <= b"01";
		I_ZMA <= '1';
		wait for 80 ns;
		Z_DOE <= '1';
		wait for 20 ns;
		Z_NDS <= b"0000";
		wait for 50 ns;
		Z_NFCS <= '1';
		Z_NDS <= b"1111";
		wait for 13 ns;
		Z_NSLAVE <= '1';
		Z_DOE <= '0';
		wait for 500 ns;

----------------------------------------------------------
		-- PCI memory write
		Z_AA <= b"000000";
		Z_READ <= '0';
		wait for 15 ns;
		Z_NFCS <= '0';
		wait for 13 ns;
		I_ZMA <= '0';
		I_ACC <= b"00";
		Z_NSLAVE <= '0';
		wait for 80 ns;
		Z_ADA <= b"0000";
		Z_DOE <= '1';
		wait for 20 ns;
		Z_NDS <= b"0000";
		wait for 10 ns;
		wait until P_NIRDY = '0';
		wait until rising_edge(I_PCICLK2);
		P_NTRDY <= '0';
		P_NDEVSEL <= '0';
		wait until rising_edge(I_PCICLK2);
		P_NTRDY <= 'H';
		P_NDEVSEL <= 'H';
		wait for 200 ns;
		Z_NFCS <= '1';
		Z_NDS <= b"1111";
		wait for 13 ns;
		Z_NSLAVE <= '1';
		Z_ADA <= (others => 'Z');
		Z_DOE <= '0';
		wait for 500 ns;

		-- DMA
		P_NREQ <= b"0000";
		wait for 357 ns;

		-- PCI memory write
		Z_AA <= b"000000";
		Z_READ <= '0';
		wait for 15 ns;
		Z_NFCS <= '0';
		wait for 13 ns;
		I_ZMA <= '0';
		I_ACC <= b"00";
		Z_NSLAVE <= '0';
		wait for 80 ns;
		Z_ADA <= b"0000";
		Z_DOE <= '1';
		wait for 20 ns;
		Z_NDS <= b"0000";
		wait for 10 ns;
		wait until P_NIRDY = '0';
		wait until rising_edge(I_PCICLK2);
		P_NTRDY <= '0';
		P_NDEVSEL <= '0';
		wait until rising_edge(I_PCICLK2);
		P_NTRDY <= 'H';
		P_NDEVSEL <= 'H';
		wait for 200 ns;
		Z_NFCS <= '1';
		Z_NDS <= b"1111";
		wait for 13 ns;
		Z_NSLAVE <= '1';
		Z_ADA <= (others => 'Z');
		Z_DOE <= '0';
		wait for 500 ns;
		
		-- PCI memory write
		Z_AA <= b"000000";
		Z_READ <= '0';
		wait for 15 ns;
		Z_NFCS <= '0';
		wait for 13 ns;
		I_ZMA <= '0';
		I_ACC <= b"00";
		Z_NSLAVE <= '0';
		wait for 80 ns;
		Z_ADA <= b"0000";
		Z_DOE <= '1';
		wait for 20 ns;
		Z_NDS <= b"0000";
		wait for 10 ns;
		wait until P_NIRDY = '0';
		wait until rising_edge(I_PCICLK2);
		P_NTRDY <= '0';
		P_NDEVSEL <= '0';
		wait until rising_edge(I_PCICLK2);
		P_NTRDY <= 'H';
		P_NDEVSEL <= 'H';
		wait for 200 ns;
		Z_NFCS <= '1';
		Z_NDS <= b"1111";
		wait for 13 ns;
		Z_NSLAVE <= '1';
		Z_ADA <= (others => 'Z');
		Z_DOE <= '0';
		wait for 500 ns;
		
		-- Stay a while... stay forever!!! MUAHAHAHAH!!!!
		wait;
	end process;

END;
