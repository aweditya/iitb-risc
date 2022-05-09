LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY RegisterBank IS PORT (
	clock : IN STD_LOGIC;
	load : IN STD_LOGIC;
	reset : IN STD_LOGIC;
	address_in : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	data_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	address_out_1 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	data_out_1 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	address_out_2 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	data_out_2 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	pc_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	pc_load : IN STD_LOGIC;
	pc_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
);
END ENTITY RegisterBank;

ARCHITECTURE behaviour OF RegisterBank IS
	SUBTYPE word IS STD_LOGIC_VECTOR(15 DOWNTO 0); -- Each register is 2 byte
	TYPE bank IS ARRAY(0 TO 2 ** 3 - 1) OF word; -- 8 registers with R7 as PC
	SIGNAL RF : bank;
BEGIN
	register_bank_process : PROCESS (clock, load, reset, address_in, data_in, address_out_1, address_out_2, RF, pc_in)
		VARIABLE register_address : NATURAL RANGE 0 TO 2 ** 3 - 1;
		VARIABLE register_out1, register_out2 : NATURAL RANGE 0 TO 2 ** 3 - 1;
	BEGIN
		register_address := to_integer(unsigned(address_in));
		IF (reset = '1') THEN
			pc_out <= x"0000";
			RF(7) <= x"0000";
		ELSIF (falling_edge(clock)) THEN
			IF (load = '1') THEN
				RF(register_address) <= data_in;
			END IF;

			IF (pc_load = '1') THEN
				pc_out <= pc_in; -- PC Update in every cycle as long as pc_load = 1
				RF(7) <= pc_in;
			END IF;
		END IF;

		register_out1 := to_integer(unsigned(address_out_1));
		register_out2 := to_integer(unsigned(address_out_2));
		data_out_1 <= RF(register_out1);
		data_out_2 <= RF(register_out2);

	END PROCESS;
END ARCHITECTURE behaviour;
