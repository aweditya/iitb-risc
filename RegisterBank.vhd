library ieee;
use ieee.std_logic_1164.all;

entity register_bank is port( 
	clock: in std_logic;
	load: in std_logic; 
	address_in: in std_logic_vector(0 to 2);
	data_in: in std_logic_vector(0 to 15);
	address_out_1: in std_logic_vector(0 to 2);
	data_out_1: out std_logic_vector(0 to 15);
	address_out_2: in std_logic_vector(0 to 2);
	data_out_2: out std_logic_vector(0 to 15)
);
end entity register_bank;

architecture behaviour of register_bank is
component register2byte is 
	port(clock: in std_logic; load: in std_logic; input: in std_logic_vector(0 to 15); output : out std_logic_vector(0 to 15));
end component;

component Demultiplexer1to8 is 
	port(load: in std_logic; address: in std_logic_vector(0 to 2); selection_output: out std_logic_vector(0 to 7));
end component Demultiplexer1to8;

signal write_enable: std_logic_vector(0 to 7);

signal r0_output: std_logic_vector(0 to 15);
signal r1_output: std_logic_vector(0 to 15);
signal r2_output: std_logic_vector(0 to 15);
signal r3_output: std_logic_vector(0 to 15);
signal r4_output: std_logic_vector(0 to 15);
signal r5_output: std_logic_vector(0 to 15);
signal r6_output: std_logic_vector(0 to 15);
signal r7_output: std_logic_vector(0 to 15);

signal register_bank_output_1, register_bank_output_2: std_logic_vector(0 to 15);
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
		data_out_1 <= r0_output when "10000000",
							  r1_output when "01000000",
							  r2_output when "00100000",
							  r3_output when "00010000",
						     r4_output when "00001000",
							  r5_output when "00000100",
							  r6_output when "00000010",
							  r7_output when "00000001";

	with address_out_2 select
		data_out_2 <= r0_output when "10000000",
							  r1_output when "01000000",
							  r2_output when "00100000",
							  r3_output when "00010000",
						     r4_output when "00001000",
							  r5_output when "00000100",
							  r6_output when "00000010",
							  r7_output when "00000001";
		
end architecture behaviour;