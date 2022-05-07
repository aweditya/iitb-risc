LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY ID_OR_reg IS PORT (
	clock : IN STD_LOGIC;

	pc_plus_1_ID : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	pc_output_ID : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	rf_d3_select_ID_out : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	alu_b_select_ID_out : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	imm_select_ID_out : IN STD_LOGIC;
	alu_select_ID_out : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	rf_load_ID_out : IN STD_LOGIC;
	ram_load_ID_out : IN STD_LOGIC;
	z_load_ID_out : IN STD_LOGIC;
	c_load_ID_out : IN STD_LOGIC;
	rf_a3_ID_out : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	se6_out_ID_out : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	se9_out_ID_out : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	za_out_ID_out : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	rf_a2_ID_out : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	rf_a1_ID_out : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	instruction_ID_out : IN STD_LOGIC_VECTOR(15 DOWNTO 0);

	pc_plus_1_OR : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	pc_output_OR : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	rf_d3_select_OR : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	alu_b_select_OR : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	imm_select_OR : OUT STD_LOGIC;
	alu_select_OR : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	rf_load_OR : OUT STD_LOGIC;
	ram_load_OR : OUT STD_LOGIC;
	z_load_OR : OUT STD_LOGIC;
	c_load_OR : OUT STD_LOGIC;
	rf_a3_OR : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	se6_out_OR : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	se9_out_OR : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	za_out_OR : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	rf_a2_OR_in : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	rf_a1_OR_in : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	instruction_OR_in : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
END ENTITY ID_OR_reg;

ARCHITECTURE behaviour OF ID_OR_reg IS
BEGIN
	register_process : PROCESS (clock)
	BEGIN
		IF (falling_edge(clock)) THEN
			pc_plus_1_OR <= pc_plus_1_ID;
			pc_output_OR <= pc_output_ID;
			rf_d3_select_OR <= rf_d3_select_ID_out;
			alu_b_select_OR <= alu_b_select_ID_out;
			imm_select_OR <= imm_select_ID_out;
			alu_select_OR <= alu_select_ID_out;
			rf_load_OR <= rf_load_ID_out;
			ram_load_OR <= ram_load_ID_out;
			z_load_OR <= z_load_ID_out;
			c_load_OR <= c_load_ID_out;
			rf_a3_OR <= rf_a3_ID_out;
			se6_out_OR <= se6_out_ID_out;
			se9_out_OR <= se9_out_ID_out;
			za_out_OR <= za_out_ID_out;
			rf_a2_OR_in <= rf_a2_ID_out;
			rf_a1_OR_in <= rf_a1_ID_out;
			instruction_OR_in <= instruction_ID_out;
		END IF;
	END PROCESS;
END behaviour;