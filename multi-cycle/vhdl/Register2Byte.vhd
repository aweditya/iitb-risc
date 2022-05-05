LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Register2Byte IS PORT (
	clock : IN STD_LOGIC;
	load : IN STD_LOGIC;
	input : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	output : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
);
END ENTITY Register2Byte;

ARCHITECTURE behaviour OF Register2Byte IS
BEGIN
	register_process : PROCESS (clock, load)
	BEGIN
		IF (falling_edge(clock)) THEN
			IF load = '1' THEN
				output <= input;
			END IF;
		END IF;
	END PROCESS;
END behaviour;