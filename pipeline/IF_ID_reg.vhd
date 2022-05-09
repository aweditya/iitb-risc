LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY IF_ID_reg IS PORT (
	clock : IN STD_LOGIC;
	load : IN STD_LOGIC;

	pc_plus_1_IF_out : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	pc_output_IF_out : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	instruction_IF_out : IN STD_LOGIC_VECTOR(15 DOWNTO 0);

	pc_plus_1_ID : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	pc_output_ID : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	instruction_ID_in : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
END ENTITY IF_ID_reg;

ARCHITECTURE behaviour OF IF_ID_reg IS
BEGIN
	register_process : PROCESS (clock)
	BEGIN
		IF (falling_edge(clock)) THEN
			IF (load = '1') THEN
				pc_plus_1_ID <= pc_plus_1_IF_out;
				pc_output_ID <= pc_output_IF_out;
				instruction_ID_in <= instruction_IF_out;
			END IF;
		END IF;
	END PROCESS;
END behaviour;
