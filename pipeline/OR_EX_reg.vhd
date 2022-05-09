LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY OR_EX_reg IS PORT (
	clock : IN STD_LOGIC;

	pc_plus_1_OR : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	pc_output_OR : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	rf_d3_select_OR : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	alu_b_select_OR : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	imm_select_OR : IN STD_LOGIC;
	alu_select_OR : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	rf_load_OR : IN STD_LOGIC;
	ram_load_OR : IN STD_LOGIC;
	z_load_OR : IN STD_LOGIC;
	c_load_OR : IN STD_LOGIC;
	rf_a3_OR : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	se6_out_OR : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	se9_out_OR : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	za_out_OR : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	rf_a2_OR_out : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	rf_a1_OR_out : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	rf_d2_OR_out : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	rf_d1_OR_out : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	instruction_OR_out : IN STD_LOGIC_VECTOR(15 DOWNTO 0);

	pc_plus_1_EX : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	pc_output_EX_in : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	rf_d3_select_EX : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	alu_b_select_EX_in : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	imm_select_EX_in : OUT STD_LOGIC;
	alu_select_EX_in : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	rf_load_EX : OUT STD_LOGIC;
	ram_load_EX : OUT STD_LOGIC;
	z_load_EX_in : OUT STD_LOGIC;
	c_load_EX_in : OUT STD_LOGIC;
	rf_a3_EX : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	se6_out_EX_in : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	se9_out_EX_in : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	za_out_EX : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	rf_a2_EX_in : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	rf_a1_EX_in : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	rf_d2_EX : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	rf_d1_EX_in : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	instruction_EX_in : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
END ENTITY OR_EX_reg;
ARCHITECTURE behaviour OF OR_EX_reg IS
BEGIN
	register_process : PROCESS (clock)
	BEGIN
		IF (falling_edge(clock)) THEN
			pc_plus_1_EX <= pc_plus_1_OR;
			pc_output_EX_in <= pc_output_OR;
			rf_d3_select_EX <= rf_d3_select_OR;
			alu_b_select_EX_in <= alu_b_select_OR;
			imm_select_EX_in <= imm_select_OR;
			alu_select_EX_in <= alu_select_OR;
			rf_load_EX <= rf_load_OR;
			ram_load_EX <= ram_load_OR;
			z_load_EX_in <= z_load_OR;
			c_load_EX_in <= c_load_OR;
			rf_a3_EX <= rf_a3_OR;
			se6_out_EX_in <= se6_out_OR;
			se9_out_EX_in <= se9_out_OR;
			za_out_EX <= za_out_OR;
			rf_a2_EX_in <= rf_a2_OR_out;
			rf_a1_EX_in <= rf_a1_OR_out;
			rf_d2_EX <= rf_d2_OR_out;
			rf_d1_EX_in <= rf_d1_OR_out;
			instruction_EX_in <= instruction_OR_out;
		END IF;
	END PROCESS;
END behaviour;
