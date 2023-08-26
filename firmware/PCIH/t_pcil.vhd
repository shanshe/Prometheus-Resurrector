
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY t_pcil IS
END t_pcil;
 
ARCHITECTURE behavior OF t_pcil IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
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
         I_ZMA : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Z_AA : std_logic_vector(7 downto 2) := (others => '0');
   signal Z_NFCS : std_logic := '0';
   signal Z_NCFGIN : std_logic := '0';
   signal Z_NCFGOUT : std_logic := '0';
   signal Z_NIORST : std_logic := '0';
   signal Z_FC : std_logic_vector(1 downto 0) := (others => '0');
   signal I_DAOUT : std_logic := '0';
   signal I_PCIENA : std_logic := '0';
   signal I_PCIDL : std_logic := '0';
   signal I_PCICLK : std_logic := '0';
   signal I_DATA : std_logic := '0';
   signal I_CFLT : std_logic := '0';
   signal I_PLA : std_logic_vector(1 downto 0) := (others => '0');

	--BiDirs
   signal Z_ADA : std_logic_vector(31 downto 8);
   signal Z_SD : std_logic_vector(7 downto 0);
   signal P_AD : std_logic_vector(31 downto 0);

 	--Outputs
   signal Z_NSLAVE : std_logic;
   signal I_ACC : std_logic_vector(1 downto 0);
   signal I_DATPAR : std_logic_vector(1 downto 0);
   signal I_ZMA : std_logic;
   signal I_ZLA : std_logic;

   -- Clock period definitions
   constant I_PCICLK_period : time := 33.3 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: pcil PORT MAP (
          Z_ADA => Z_ADA,
          Z_SD => Z_SD,
          Z_AA => Z_AA,
          Z_NFCS => Z_NFCS,
          Z_NSLAVE => Z_NSLAVE,
          Z_NCFGIN => Z_NCFGIN,
          Z_NCFGOUT => Z_NCFGOUT,
          Z_NIORST => Z_NIORST,
          Z_FC => Z_FC,
          P_AD => P_AD,
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
          I_ZMA => I_ZMA
        );

   -- Clock process definitions
   I_PCICLK_process :process
   begin
		I_PCICLK <= '0';
		wait for I_PCICLK_period/2;
		I_PCICLK <= '1';
		wait for I_PCICLK_period/2;
   end process;
 

	-- Stimulus process
	stim_proc: process
	begin		
		Z_AA <= (others => '1');
		Z_ADA <= (others => 'Z');
		Z_NFCS <= '1';
		Z_NCFGIN <= '1';
		Z_NCFGOUT <= '1';
		Z_NIORST <= '1';
		Z_FC <= b"11";
		I_DAOUT <= '0';
		I_PCIENA <= '0';
		I_PCIDL <= '0';
		I_DATA <= '0';
		I_CFLT <= '0';
		I_PLA <= b"00";
		
		-- hold reset state for 100 ns.
		wait for 100 ns;
		z_niorst <= '0';
      wait for 100 ns;	
		z_niorst <= '1';

		wait for I_PCICLK_period*10;

		-- insert stimulus here 
		-- access must fail
		z_ncfgin <= '1';
		z_ada <= x"ff0000";
		z_fc <= b"10";
		z_ncfgout <= '1';
		wait for 15 ns;
		z_nfcs <= '0';
		wait for 150 ns;
		z_nfcs <= '1';
		wait for 100 ns;

		-- access must work
		z_ncfgin <= '0';
		z_ada <= x"ff0000";
		z_fc <= b"10";
		z_ncfgout <= '1';
		wait for 15 ns;
		z_nfcs <= '0';
		wait for 150 ns;
		z_nfcs <= '1';
		wait for 100 ns;

		-- access must fail
		z_ncfgin <= '0';
		z_ada <= x"fe0000";
		z_fc <= b"10";
		z_ncfgout <= '1';
		wait for 15 ns;
		z_nfcs <= '0';
		wait for 150 ns;
		z_nfcs <= '1';
		wait for 100 ns;
		
		-- access must work
		z_ncfgin <= '0';
		z_ada <= x"ff0000";
		z_fc <= b"10";
		z_ncfgout <= '1';
		wait for 15 ns;
		z_nfcs <= '0';
		wait for 50 ns;
		z_ada <= x"3fffff"; -- 0x20 base address
		wait for 15 ns;
		i_cflt <= '1';
		wait for 15 ns;
		i_cflt <= '0';
		wait for 80 ns;
		z_nfcs <= '1';
		wait for 100 ns;

		-- access must fail
		z_ncfgin <= '0';
		z_ada <= x"ff0000";
		z_fc <= b"10";
		z_ncfgout <= '0';
		wait for 15 ns;
		z_nfcs <= '0';
		wait for 150 ns;
		z_nfcs <= '1';
		wait for 100 ns;

		-- access must work
		z_ncfgin <= '0';
		z_ada <= x"200000";
		z_fc <= b"10";
		z_ncfgout <= '0';
		wait for 15 ns;
		z_nfcs <= '0';
		wait for 150 ns;
		z_nfcs <= '1';
		wait for 100 ns;

		-- Stay a while.... stay forever!!! Muahahah!!!!!
		wait;
	

		-- test parity
		i_daout <= '1';
		i_pciena <= '1';
		wait until rising_edge(i_pciclk);
		z_ada <= x"000001";
		wait until rising_edge(i_pciclk);
		z_ada <= x"000000";
		wait until rising_edge(i_pciclk);
		z_ada <= x"000002";
		wait until rising_edge(i_pciclk);
		z_ada <= x"000000";
		wait until rising_edge(i_pciclk);
		z_ada <= x"000004";
		wait until rising_edge(i_pciclk);
		z_ada <= x"000000";
		wait until rising_edge(i_pciclk);
		z_ada <= x"000008";
		wait until rising_edge(i_pciclk);
		z_ada <= x"000000";
		wait until rising_edge(i_pciclk);
		z_ada <= x"000010";
		wait until rising_edge(i_pciclk);
		z_ada <= x"000000";
		wait until rising_edge(i_pciclk);
		z_ada <= x"000020";
		wait until rising_edge(i_pciclk);
		z_ada <= x"000000";
		wait until rising_edge(i_pciclk);
		z_ada <= x"000040";
		wait until rising_edge(i_pciclk);
		z_ada <= x"000000";
		wait until rising_edge(i_pciclk);
		z_ada <= x"000080";
		wait until rising_edge(i_pciclk);
		z_ada <= x"000000";

		wait until rising_edge(i_pciclk);
		z_ada <= x"000000";
		

		wait;
	end process;

END;
