LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY RegisterBank IS PORT (
	clock : IN STD_LOGIC;
	load : IN STD_LOGIC;
	address_in : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	data_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	address_out_1 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	data_out_1 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	address_out_2 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	data_out_2 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
);
END ENTITY RegisterBank;

ARCHITECTURE behaviour OF RegisterBank IS
	COMPONENT register2byte IS
		PORT (
			clock : IN STD_LOGIC;
			load : IN STD_LOGIC;
			input : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
			output : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
	END COMPONENT;

	COMPONENT Demultiplexer1to8 IS
		PORT (
			load : IN STD_LOGIC;
			address : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
			selection_output : OUT STD_LOGIC_VECTOR(7 DOWNTO 0));
	END COMPONENT Demultiplexer1to8;

	SIGNAL write_enable : STD_LOGIC_VECTOR(7 DOWNTO 0);

	SIGNAL r0_output : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL r1_output : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL r2_output : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL r3_output : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL r4_output : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL r5_output : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL r6_output : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL r7_output : STD_LOGIC_VECTOR(15 DOWNTO 0);

BEGIN
	demultiplexer : Demultiplexer1to8
	PORT MAP(load, address_in, write_enable);

	r0 : register2byte
	PORT MAP(clock, write_enable(0), data_in, r0_output);
	r1 : register2byte
	PORT MAP(clock, write_enable(1), data_in, r1_output);
	r2 : register2byte
	PORT MAP(clock, write_enable(2), data_in, r2_output);
	r3 : register2byte
	PORT MAP(clock, write_enable(3), data_in, r3_output);
	r4 : register2byte
	PORT MAP(clock, write_enable(4), data_in, r4_output);
	r5 : register2byte
	PORT MAP(clock, write_enable(5), data_in, r5_output);
	r6 : register2byte
	PORT MAP(clock, write_enable(6), data_in, r6_output);
	r7 : register2byte
	PORT MAP(clock, write_enable(7), data_in, r7_output);

	WITH address_out_1 SELECT
		data_out_1 <= r0_output WHEN "000",
		r1_output WHEN "001",
		r2_output WHEN "010",
		r3_output WHEN "011",
		r4_output WHEN "100",
		r5_output WHEN "101",
		r6_output WHEN "110",
		r7_output WHEN "111",
		r0_output WHEN OTHERS;

	WITH address_out_2 SELECT
		data_out_2 <= r0_output WHEN "000",
		r1_output WHEN "001",
		r2_output WHEN "010",
		r3_output WHEN "011",
		r4_output WHEN "100",
		r5_output WHEN "101",
		r6_output WHEN "110",
		r7_output WHEN "111",
		r0_output WHEN OTHERS;
END ARCHITECTURE behaviour;