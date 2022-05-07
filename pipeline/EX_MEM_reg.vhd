LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY EX_MEM_reg IS PORT (
	clock : IN STD_LOGIC;

	pc_plus_1_EX : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	rf_d3_select_EX : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	rf_load_EX : IN STD_LOGIC;
	ram_load_EX : IN STD_LOGIC;
	rf_a3_EX : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	za_out_EX : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	rf_d2_EX : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	alu_c_EX_out : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	instruction_EX_out : IN STD_LOGIC_VECTOR(15 DOWNTO 0);

	pc_plus_1_MEM : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	rf_d3_select_MEM : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	rf_load_MEM : OUT STD_LOGIC;
	ram_load_MEM_in : OUT STD_LOGIC;
	rf_a3_MEM : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	za_out_MEM : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	rf_d2_MEM_in : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	alu_c_MEM : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	instruction_MEM_in : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
END ENTITY EX_MEM_reg;

ARCHITECTURE behaviour OF EX_MEM_reg IS
BEGIN
	register_process : PROCESS (clock)
	BEGIN
		IF (falling_edge(clock)) THEN
			pc_plus_1_MEM <= pc_plus_1_EX;
			rf_d3_select_MEM <= rf_d3_select_EX;
			rf_load_MEM <= rf_load_EX;
			ram_load_MEM_in <= ram_load_EX;
			rf_a3_MEM <= rf_a3_EX;
			za_out_MEM <= za_out_EX;
			rf_d2_MEM_in <= rf_d2_EX;
			alu_c_MEM <= alu_c_EX_out;
			instruction_MEM_in <= instruction_EX_out;
		END IF;
	END PROCESS;
END behaviour;