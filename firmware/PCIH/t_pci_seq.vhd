LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY t_pci_seq IS
END t_pci_seq;
 
ARCHITECTURE behavior OF t_pci_seq IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT pci_seq
    PORT(
         REQ_IN : IN  std_logic;
         GNT_IN : IN  std_logic;
         READ_IN : IN  std_logic;
         NDEVSEL_IN : IN  std_logic;
         NTRDY_IN : IN  std_logic;
         NSTOP_IN : IN  std_logic;
         STATE_OUT : OUT  std_logic_vector(3 downto 0);
			CYCOUT_OUT : OUT std_logic;
			NFRAME_OUT : OUT std_logic;
			NIRDY_OUT : OUT std_logic;
			ENA_C_OUT : OUT std_logic;
			ENA_P_OUT : OUT std_logic;
			ENA_D_OUT : OUT std_logic;
			PCIDL_OUT : OUT std_logic;
         NIORST : IN  std_logic;
         PCICLK : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal REQ_IN : std_logic := '0';
   signal GNT_IN : std_logic := '0';
   signal READ_IN : std_logic := '0';
   signal NDEVSEL_IN : std_logic := '0';
   signal NTRDY_IN : std_logic := '0';
   signal NSTOP_IN : std_logic := '0';
   signal NIORST : std_logic := '0';
   signal PCICLK : std_logic := '0';

 	--Outputs
   signal STATE_OUT : std_logic_vector(3 downto 0);
	signal CYCOUT_OUT : std_logic;
	signal NFRAME_OUT : std_logic;
	signal NIRDY_OUT : std_logic;
	signal ENA_C_OUT : std_logic;
	signal ENA_P_OUT : std_logic;
	signal ENA_D_OUT : std_logic;
	signal PCIDL_OUT : std_logic;


   -- Clock period definitions
   constant PCICLK_period : time := 33.3 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: pci_seq PORT MAP (
          REQ_IN => REQ_IN,
          GNT_IN => GNT_IN,
          READ_IN => READ_IN,
          NDEVSEL_IN => NDEVSEL_IN,
          NTRDY_IN => NTRDY_IN,
          NSTOP_IN => NSTOP_IN,
          STATE_OUT => STATE_OUT,
			 CYCOUT_OUT => CYCOUT_OUT,
			 NFRAME_OUT => NFRAME_OUT,
			 NIRDY_OUT => NIRDY_OUT,
			 ENA_C_OUT => ENA_C_OUT,
			 ENA_P_OUT => ENA_P_OUT,
			 ENA_D_OUT => ENA_D_OUT,
			 PCIDL_OUT => PCIDL_OUT,
			 NIORST => NIORST,
          PCICLK => PCICLK
        );

   -- Clock process definitions
   PCICLK_process :process
   begin
		PCICLK <= '0';
		wait for PCICLK_period/2;
		PCICLK <= '1';
		wait for PCICLK_period/2;
   end process;
 

	-- Stimulus process
	stim_proc: process
   begin		
		REQ_IN <= '0';
		GNT_IN <= '0';
		READ_IN <= '1';
		NDEVSEL_IN <= '1';
		NTRDY_IN <= '1';
		NSTOP_IN <= '1';
		NIORST <= '1';
		-- hold reset state for 100 ns.
		wait for 100 ns;
		NIORST <= '0';
		wait for 100 ns;	
		NIORST <= '1';

      wait for PCICLK_period*10;

      -- insert stimulus here 
		-- one simple access
		wait until rising_edge(PCICLK);
		req_in <= '1'; -- Zorro III cycle starts
		wait until rising_edge(PCICLK);
		gnt_in <= '1'; -- arbiter grants bus
		wait until rising_edge(PCICLK);
		req_in <= '0'; -- only one access simulated
		gnt_in <= '0';
		wait until falling_edge(nirdy_out);
		wait until rising_edge(PCICLK);
		ndevsel_in <= '0';
		wait until rising_edge(PCICLK);
		wait until rising_edge(PCICLK);
		wait until rising_edge(PCICLK);
		wait until rising_edge(PCICLK);
		ntrdy_in <= '0';
		wait until rising_edge(PCICLK);
		ndevsel_in <= '1';
		ntrdy_in <= '1';
		wait until cycout_out = '1';
		wait for 100 ns;

		-- one simple access
		wait until rising_edge(PCICLK);
		req_in <= '1'; -- Zorro III cycle starts
		wait until rising_edge(PCICLK);
		gnt_in <= '1'; -- arbiter grants bus
		wait until rising_edge(PCICLK);
		req_in <= '0'; -- only one access simulated
		gnt_in <= '0';
		wait until falling_edge(nirdy_out);
		wait until rising_edge(PCICLK);
		ndevsel_in <= '0';
		wait until rising_edge(PCICLK);
		wait until rising_edge(PCICLK);
		wait until rising_edge(PCICLK);
		wait until rising_edge(PCICLK);
		nstop_in <= '0';
		wait until rising_edge(PCICLK);
		ndevsel_in <= '1';
		nstop_in <= '1';
		wait until cycout_out = '1';
		wait for 100 ns;

		-- one simple access
		wait until rising_edge(PCICLK);
		req_in <= '1'; -- Zorro III cycle starts
		wait until rising_edge(PCICLK);
		gnt_in <= '1'; -- arbiter grants bus
		wait until rising_edge(PCICLK);
		req_in <= '0'; -- only one access simulated
		gnt_in <= '0';
		wait until rising_edge(PCICLK);
		wait until cycout_out = '1';
		wait for 100 ns;

		-- Stay a while... stay forever!!!!! MUAHAHAHAH!!!!		
      wait;
   end process;

END;
