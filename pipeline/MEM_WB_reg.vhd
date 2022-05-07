LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY MEM_WB_reg IS PORT (
	clock : IN STD_LOGIC;

	pc_plus_1_MEM : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	rf_d3_select_MEM : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	rf_load_MEM : IN STD_LOGIC;
	rf_a3_MEM : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	za_out_MEM : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	alu_c_MEM : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	ram_d_out_MEM_out : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	instruction_MEM_out : IN STD_LOGIC_VECTOR(15 DOWNTO 0);

	pc_plus_1_WB_in : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	rf_d3_select_WB_in : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	rf_load_WB_in : OUT STD_LOGIC;
	rf_a3_WB_in : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	za_out_WB_in : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	alu_c_WB_in : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	ram_d_out_WB_in : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
	instruction_WB_in : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
END ENTITY MEM_WB_reg;

ARCHITECTURE behaviour OF MEM_WB_reg IS
BEGIN
	register_process : PROCESS (clock)
	BEGIN
		IF (falling_edge(clock)) THEN
			pc_plus_1_WB_in <= pc_plus_1_MEM;
			rf_d3_select_WB_in <= rf_d3_select_MEM;
			rf_load_WB_in <= rf_load_MEM;
			rf_a3_WB_in <= rf_a3_MEM;
			za_out_WB_in <= za_out_MEM;
			alu_c_WB_in <= alu_c_MEM;
			ram_d_out_WB_in <= ram_d_out_MEM_out;
			instruction_WB_in <= instruction_MEM_out;
		END IF;
	END PROCESS;
END behaviour;