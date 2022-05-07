LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY ROM128 IS PORT (
	address : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	data : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
END ENTITY ROM128;

ARCHITECTURE ROM OF ROM128 IS
	SUBTYPE word IS STD_LOGIC_VECTOR(7 DOWNTO 0);
	TYPE rom_mem IS ARRAY(0 TO 2 ** 8 - 1) OF word;
	SIGNAL rom_data : rom_mem := (
		"00000001", "00110000",
		"00000001", "00110010",
		"01010000", "00010000",
		"01111111", "00000000",
		"11111111", "10110001",
		OTHERS => x"00"
	);
BEGIN
	rom_process : PROCESS (address, rom_data)
		VARIABLE rom_address : NATURAL RANGE 0 TO 2 ** 7 - 1;
	BEGIN
		rom_address := to_integer(unsigned(address(6 DOWNTO 0)));
		data(15 DOWNTO 8) <= rom_data(2 * rom_address + 1);
		data(7 DOWNTO 0) <= rom_data(2 * rom_address);
	END PROCESS;
END ARCHITECTURE ROM;