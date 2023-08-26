LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY t_pci_arb IS
END t_pci_arb;
 
ARCHITECTURE behavior OF t_pci_arb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT pci_arb
    PORT(
         REQZ3_IN : IN  std_logic;
         NREQ_IN : IN  std_logic_vector(3 downto 0);
         IDLE_IN : IN  std_logic;
         GNTZ3_OUT : OUT  std_logic;
         NGNT_OUT : OUT  std_logic_vector(3 downto 0);
         TOC_OUT : OUT  std_logic_vector(3 downto 0);
         STATE_OUT : OUT  std_logic_vector(3 downto 0);
         NIORST : IN  std_logic;
         PCICLK : IN  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal REQZ3_IN : std_logic := '0';
   signal NREQ_IN : std_logic_vector(3 downto 0) := (others => '0');
   signal IDLE_IN : std_logic := '0';
   signal NIORST : std_logic := '0';
   signal PCICLK : std_logic := '0';

 	--Outputs
   signal GNTZ3_OUT : std_logic;
   signal NGNT_OUT : std_logic_vector(3 downto 0);
   signal TOC_OUT : std_logic_vector(3 downto 0);
   signal STATE_OUT : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant PCICLK_period : time := 33.3 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: pci_arb PORT MAP (
          REQZ3_IN => REQZ3_IN,
          NREQ_IN => NREQ_IN,
          IDLE_IN => IDLE_IN,
          GNTZ3_OUT => GNTZ3_OUT,
          NGNT_OUT => NGNT_OUT,
			 TOC_OUT => TOC_OUT,
          STATE_OUT => STATE_OUT,
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

		REQZ3_IN <= '1';
		NREQ_IN <= b"1111";
		IDLE_IN <= '1';
		NIORST <= '1';
		-- hold reset state for 100 ns.
		wait for 100 ns;
		NIORST <= '0';
		wait for 100 ns;
		NIORST <= '1';

		wait for PCICLK_period*10;

		-- insert stimulus here 
		REQZ3_IN <= '0';
		wait until rising_edge(PCICLK);
		wait until rising_edge(PCICLK);
		wait until rising_edge(PCICLK);
		NREQ_IN <= b"0000";

		wait for 555 ns;
		REQZ3_IN <= '1';
		wait for 150 ns;
		REQZ3_IN <= '0';


		wait for 555 ns;
		REQZ3_IN <= '1';
		wait for 150 ns;
		REQZ3_IN <= '0';

		wait for 555 ns;
		REQZ3_IN <= '1';
		wait for 150 ns;
		REQZ3_IN <= '0';

		wait for 555 ns;
		REQZ3_IN <= '1';
		wait for 150 ns;
		REQZ3_IN <= '0';

		wait for 2 us;
		
		wait until rising_edge(PCICLK);
		NREQ_IN <= b"1011";

		wait for 1 us;

		wait until rising_edge(PCICLK);
		NREQ_IN <= b"1111";

		wait for 1 us;
		REQZ3_IN <= '1';
		wait for 150 ns;
		REQZ3_IN <= '0';

		wait;
	end process;

END;
