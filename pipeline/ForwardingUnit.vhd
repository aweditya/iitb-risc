LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY ForwardingUnit IS PORT (
	or_ex_rf_load : IN STD_LOGIC;
	or_ex_opcode : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	or_ex_rf_a3 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);

	ex_mem_rf_load : IN STD_LOGIC;
	ex_mem_opcode : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	ex_mem_rf_a3 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);

	mem_wb_rf_load : IN STD_LOGIC;
	mem_wb_opcode : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	mem_wb_rf_a3 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);

	id_or_rf_a1 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	id_or_rf_a2 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);

	forward_select_a : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	forward_select_b : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END ENTITY ForwardingUnit;

ARCHITECTURE forward OF ForwardingUnit IS
BEGIN
	forward_selection_process : PROCESS (or_ex_rf_load, or_ex_opcode, or_ex_rf_a3, ex_mem_rf_load, ex_mem_opcode, ex_mem_rf_a3, mem_wb_rf_load, mem_wb_opcode, mem_wb_rf_a3, id_or_rf_a1, id_or_rf_a2)
	BEGIN
		-- Forward selection for ALU A
		IF ((or_ex_rf_load = '1') AND (or_ex_rf_a3 = id_or_rf_a1) AND (or_ex_opcode = "0011")) THEN
			-- LHI in EX stage
			forward_select_a <= "0001";
		ELSIF ((or_ex_rf_load = '1') AND (or_ex_rf_a3 = id_or_rf_a1) AND (or_ex_opcode(3 DOWNTO 2) = "00")) THEN
			-- Arithmetic instructions in EX stage
			forward_select_a <= "0010";
		ELSIF ((or_ex_rf_load = '1') AND (or_ex_rf_a3 = id_or_rf_a1) AND (or_ex_opcode = "1001" OR or_ex_opcode = "1010")) THEN
			-- JAL or JLR in EX stage
			forward_select_a <= "0011";
		ELSIF ((ex_mem_rf_load = '1') AND (ex_mem_rf_a3 = id_or_rf_a1) AND (ex_mem_opcode = "0011")) THEN
			-- LHI in WB stage
			forward_select_a <= "0100";
		ELSIF ((ex_mem_rf_load = '1') AND (ex_mem_rf_a3 = id_or_rf_a1) AND (ex_mem_opcode(3 DOWNTO 2) = "00")) THEN
			-- Arithmetic instructions in WB stage
			forward_select_a <= "0101";
		ELSIF ((ex_mem_rf_load = '1') AND (ex_mem_rf_a3 = id_or_rf_a1) AND (ex_mem_opcode = "1001" OR ex_mem_opcode = "1010")) THEN
			-- JAL or JLR in WB stage
			forward_select_a <= "0110";
		ELSIF ((ex_mem_rf_load = '1') AND (ex_mem_rf_a3 = id_or_rf_a1) AND (ex_mem_opcode = "0111")) THEN
			-- LW in WB stage
			forward_select_a <= "0111";
		ELSIF ((mem_wb_rf_load = '1') AND (mem_wb_rf_a3 = id_or_rf_a1)) THEN
			-- Any instruction in the WB stage since there is a MUX for the final write back
			forward_select_a <= "1000";
		ELSE
			-- Select RF_D1 by default
			forward_select_a <= "0000";
		END IF;

		-- Forward selection for ALU B
		IF ((or_ex_rf_load = '1') AND (or_ex_rf_a3 = id_or_rf_a2) AND (or_ex_opcode = "0011")) THEN
			-- LHI in EX stage
			forward_select_b <= "0001";
		ELSIF ((or_ex_rf_load = '1') AND (or_ex_rf_a3 = id_or_rf_a2) AND (or_ex_opcode(3 DOWNTO 2) = "00")) THEN
			-- Arithmetic instructions in EX stage
			forward_select_b <= "0010";
		ELSIF ((or_ex_rf_load = '1') AND (or_ex_rf_a3 = id_or_rf_a2) AND (or_ex_opcode = "1001" OR or_ex_opcode = "1010")) THEN
			-- JAL or JLR in EX stage
			forward_select_b <= "0011";
		ELSIF ((ex_mem_rf_load = '1') AND (ex_mem_rf_a3 = id_or_rf_a2) AND (ex_mem_opcode = "0011")) THEN
			-- LHI in WB stage
			forward_select_b <= "0100";
		ELSIF ((ex_mem_rf_load = '1') AND (ex_mem_rf_a3 = id_or_rf_a2) AND (ex_mem_opcode(3 DOWNTO 2) = "00")) THEN
			-- Arithmetic instructions in WB stage
			forward_select_b <= "0101";
		ELSIF ((ex_mem_rf_load = '1') AND (ex_mem_rf_a3 = id_or_rf_a2) AND (ex_mem_opcode = "1001" OR ex_mem_opcode = "1010")) THEN
			-- JAL or JLR in WB stage
			forward_select_b <= "0110";
		ELSIF ((ex_mem_rf_load = '1') AND (ex_mem_rf_a3 = id_or_rf_a2) AND (ex_mem_opcode = "0111")) THEN
			-- LW in WB stage
			forward_select_b <= "0111";
		ELSIF ((mem_wb_rf_load = '1') AND (mem_wb_rf_a3 = id_or_rf_a2)) THEN
			-- Any instruction in the WB stage since there is a MUX for the final write back
			forward_select_b <= "1000";
		ELSE
			-- Select RF_D1 by default
			forward_select_b <= "0000";
		END IF;
	END PROCESS forward_selection_process;
END ARCHITECTURE forward;