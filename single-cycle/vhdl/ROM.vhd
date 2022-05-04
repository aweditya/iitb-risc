library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity ROM128 is port(
	address: in std_logic_vector(15 downto 0);
	data: out std_logic_vector(15 downto 0));
end entity ROM128;

architecture ROM of ROM128 is
	subtype word is std_logic_vector(7 downto 0);
	type rom_mem is array(0 to 2**8 - 1) of word;
	signal rom_data: rom_mem := (
		"00000001", "00110000",
		others => x"00"
	);
begin
	rom_process: process(address, rom_data)
		variable rom_address : natural range 0 to 2**7 - 1;
	begin
		rom_address := to_integer(unsigned(address(6 downto 0)));
		data(15 downto 8) <= rom_data(2*rom_address+1);
		data(7 downto 0) <= rom_data(2*rom_address);
	end process;
end architecture ROM;
