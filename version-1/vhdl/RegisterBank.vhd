library ieee;
use ieee.std_logic_1164.all;

entity RegisterBank is port( 
	clock: in std_logic;
	load: in std_logic; 
	address_in: in std_logic_vector(2 downto 0);
	data_in: in std_logic_vector(15 downto 0);
	address_out_1: in std_logic_vector(2 downto 0);
	data_out_1: out std_logic_vector(15 downto 0);
	address_out_2: in std_logic_vector(2 downto 0);
	data_out_2: out std_logic_vector(15 downto 0)
);
end entity RegisterBank;

architecture behaviour of RegisterBank is
component register2byte is 
	port(clock: in std_logic; load: in std_logic; input: in std_logic_vector(15 downto 0); output : out std_logic_vector(15 downto 0));
end component;

component Demultiplexer1to8 is 
	port(load: in std_logic; address: in std_logic_vector(2 downto 0); selection_output: out std_logic_vector(7 downto 0));
end component Demultiplexer1to8;

signal write_enable: std_logic_vector(7 downto 0);

signal r0_output: std_logic_vector(15 downto 0);
signal r1_output: std_logic_vector(15 downto 0);
signal r2_output: std_logic_vector(15 downto 0);
signal r3_output: std_logic_vector(15 downto 0);
signal r4_output: std_logic_vector(15 downto 0);
signal r5_output: std_logic_vector(15 downto 0);
signal r6_output: std_logic_vector(15 downto 0);
signal r7_output: std_logic_vector(15 downto 0);

begin
	demultiplexer: Demultiplexer1to8
		port map(load, address_in, write_enable);
		
	r0: register2byte
		port map(clock, write_enable(0), data_in, r0_output);
	r1: register2byte
		port map(clock, write_enable(1), data_in, r1_output);
	r2: register2byte
		port map(clock, write_enable(2), data_in, r2_output);
	r3: register2byte
		port map(clock, write_enable(3), data_in, r3_output);
	r4: register2byte
		port map(clock, write_enable(4), data_in, r4_output);
	r5: register2byte
		port map(clock, write_enable(5), data_in, r5_output);
	r6: register2byte
		port map(clock, write_enable(6), data_in, r6_output);
	r7: register2byte
		port map(clock, write_enable(7), data_in, r7_output);
		
	with address_out_1 select
		data_out_1 <= r0_output when "000",
						  r1_output when "001",
						  r2_output when "010",
						  r3_output when "011",
						  r4_output when "100",
						  r5_output when "101",
						  r6_output when "110",
						  r7_output when "111",
						  r0_output when others;

	with address_out_2 select
		data_out_2 <= r0_output when "000",
						  r1_output when "001",
						  r2_output when "010",
						  r3_output when "011",
						  r4_output when "100",
						  r5_output when "101",
						  r6_output when "110",
						  r7_output when "111",
						  r0_output when others;
end architecture behaviour;