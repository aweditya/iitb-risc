library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RegisterBank is port( 
	clock: in std_logic;
	load: in std_logic; 
	address_in: in std_logic_vector(2 downto 0);
	data_in: in std_logic_vector(15 downto 0);
	address_out_1: in std_logic_vector(2 downto 0);
	data_out_1: out std_logic_vector(15 downto 0);
	address_out_2: in std_logic_vector(2 downto 0);
	data_out_2: out std_logic_vector(15 downto 0);
	pc_in: in std_logic_vector(15 downto 0);
	pc_out: out std_logic_vector(15 downto 0)
);
end entity RegisterBank;

architecture behaviour of RegisterBank is
	subtype word is std_logic_vector(15 downto 0);           -- Each register is 2 byte
	type bank is array(0 to 2**3 - 1) of word;               -- 8 registers with R7 as PC
	signal RF: bank;
begin
	register_bank_process: process(clock, load, address_in, data_in, address_out_1, address_out_2, RF, pc_in)
		variable register_address : natural range 0 to 2**3 - 1;
		variable register_out1, register_out2 : natural range 0 to 2**3 - 1;
	begin
		register_address := to_integer(unsigned(address_in));
		if (falling_edge(clock)) then
			if (load = '1') then
				RF(register_address) <= data_in;
				end if;

			pc_out <= pc_in;                         -- PC Update in every cycle
			RF(7) <= pc_in;
			end if;

		register_out1 := to_integer(unsigned(address_out_1));
		register_out2 := to_integer(unsigned(address_out_2));
		data_out_1 <= RF(register_out1);
		data_out_2 <= RF(register_out2);

	end process;
end architecture behaviour;
