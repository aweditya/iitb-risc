LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY FlagRegister IS PORT (
	clock : IN STD_LOGIC;
	zero_load : IN STD_LOGIC;
	carry_load : IN STD_LOGIC;
	input : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	output : OUT STD_LOGIC_VECTOR(1 DOWNTO 0));
END ENTITY FlagRegister;

ARCHITECTURE behaviour OF FlagRegister IS
BEGIN
	register_process : PROCESS (zero_load, carry_load, clock)
	BEGIN
		IF (falling_edge(clock)) THEN
			IF zero_load = '1' THEN
				output(1) <= input(1);
			END IF;

			IF carry_load = '1' THEN
				output(0) <= input(0);
			END IF;
		END IF;
	END PROCESS;
END behaviour;