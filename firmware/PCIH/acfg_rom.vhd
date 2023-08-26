library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

---- Uncomment the following library declaration if instantiating
---- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity acfg_rom is
port( ROM_A_IN			: in	std_logic_vector(6 downto 1);
		ROM_SERIAL_IN	: in	std_logic_vector(31 downto 0);
		ROM_DATA_OUT	: out	std_logic_vector(3 downto 0)
	 );
end acfg_rom;

architecture Behavioral of acfg_rom is

signal rom_data		: std_logic_vector(3 downto 0);

begin

-- Note: all ROM contents (except 0x00 and 0x02) are inverted.
THE_ACFG_ROM_PROC: process( rom_a_in, rom_serial_in ) 
begin
	case ROM_A_IN is		
		when b"000000"	=>	rom_data <=     b"1000"; -- 00: Zorro III, no boot ROM
		when b"000001" => rom_data <=     b"0101"; -- 02: normal request, 512MB size
		when b"000010"	=>	rom_data <= not x"c";    -- 04: product id (0xc) (MSB)
		when b"000011" => rom_data <= not x"8";    -- 06: product id (0x8) (LSB)
		when b"000100" => rom_data <= not b"0011"; -- 08: basically I/O, shutup not implemented, Z3 size
		when b"000101" => rom_data <= not b"0000"; -- 0a: physical size = logical size
		when b"000110" => rom_data <= not x"0";    -- 0c: reserved
		when b"000111" => rom_data <= not x"0";    -- 0e: reserved
		when b"001000" => rom_data <= not x"0";    -- 10: manufacturer id (0x0)
		when b"001001" => rom_data <= not x"e";    -- 12: manufacturer id (0xe)
		when b"001010" => rom_data <= not x"3";    -- 14: manufacturer id (0x3)
		when b"001011" => rom_data <= not x"b";    -- 16: manufacturer id (0xb)
		when b"001100" => rom_data <= not( ROM_SERIAL_IN(31 downto 28) );    -- 18: serial number (MSB)
		when b"001101" => rom_data <= not( ROM_SERIAL_IN(27 downto 24) );    -- 1a: serial number
		when b"001110" => rom_data <= not( ROM_SERIAL_IN(23 downto 20) );    -- 1c: serial number
		when b"001111" => rom_data <= not( ROM_SERIAL_IN(19 downto 16) );    -- 1e: serial number
		when b"010000" => rom_data <= not( ROM_SERIAL_IN(15 downto 12) );    -- 20: serial number
		when b"010001" => rom_data <= not( ROM_SERIAL_IN(11 downto 8 ) );    -- 22: serial number
		when b"010010" => rom_data <= not( ROM_SERIAL_IN(7  downto 4 ) );    -- 24: serial number
		when b"010011" => rom_data <= not( ROM_SERIAL_IN(3  downto 0 ) );    -- 26: serial number (LSB)
		when b"010100" => rom_data <= not x"0";    -- 28: ROM vector
		when b"010101" => rom_data <= not x"0";    -- 2a: ROM vector
		when b"010110" => rom_data <= not x"0";    -- 2c: ROM vector
		when b"010111" => rom_data <= not x"5";    -- 2e: ROM vector
		when others		=> rom_data <= not x"0";    -- rest of table is reserved
	end case;
end process THE_ACFG_ROM_PROC;

-- Outputs
ROM_DATA_OUT <= rom_data;

end Behavioral;

