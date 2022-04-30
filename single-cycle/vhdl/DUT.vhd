library ieee;
use ieee.std_logic_1164.all;

entity DUT is port(
   input_vector: in std_logic_vector(42 downto 0);
   output_vector: out std_logic_vector(47 downto 0)
);
end entity;

architecture DutWrap of DUT is
	component RegisterBank is port(
		clock: in std_logic;
		load: in std_logic;
		address_in: in std_logic_vector(2 downto 0);
		data_in: in std_logic_vector(15 downto 0);
		address_out_1: in std_logic_vector(2 downto 0);
		data_out_1: out std_logic_vector(15 downto 0);
		address_out_2: in std_logic_vector(2 downto 0);
		data_out_2: out std_logic_vector(15 downto 0);
		pc_in: in std_logic_vector(15 downto 0);
		pc_out: out std_logic_vector(15 downto 0));
	end component RegisterBank;
	
begin
	add_instance: RegisterBank
	port map(
	clock => input_vector(42), 
	load => input_vector(41),
	address_in => input_vector(40 downto 38),
	data_in => input_vector(37 downto 22),
	address_out_1 => input_vector(21 downto 19),
	address_out_2 => input_vector(18 downto 16),
	pc_in => input_vector(15 downto 0),

	data_out_1 => output_vector(47 downto 32),
	data_out_2 => output_vector(31 downto 16),
	pc_out => output_vector(15 downto 0));
end DutWrap;
