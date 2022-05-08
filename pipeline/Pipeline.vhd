LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY PipelinedDatapath IS
	PORT (
		clock, reset : IN STD_LOGIC;
		test_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
END ENTITY PipelinedDatapath;

ARCHITECTURE run OF PipelinedDatapath IS
	-- Pipeline registers
	COMPONENT IF_ID_reg IS PORT (
		clock : IN STD_LOGIC;

		pc_plus_1_IF_out : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		pc_output_IF_out : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		instruction_IF_out : IN STD_LOGIC_VECTOR(15 DOWNTO 0);

		pc_plus_1_ID : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		pc_output_ID : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
		instruction_ID_in : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
	END COMPONENT IF_ID_reg;

	COMPONENT ID_OR_reg IS PORT (
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
	END COMPONENT ID_OR_reg;

	COMPONENT OR_EX_reg IS PORT (
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
	END COMPONENT OR_EX_reg;

	COMPONENT EX_MEM_reg IS PORT (
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
	END COMPONENT EX_MEM_reg;

	COMPONENT MEM_WB_reg IS PORT (
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
	END COMPONENT MEM_WB_reg;

	COMPONENT ALU IS
		GENERIC (
			operand_width : INTEGER := 16;
			control_bits : INTEGER := 2);
		PORT (
			A : IN STD_LOGIC_VECTOR(operand_width - 1 DOWNTO 0);
			B : IN STD_LOGIC_VECTOR(operand_width - 1 DOWNTO 0);
			control_in : IN STD_LOGIC_VECTOR(control_bits - 1 DOWNTO 0);
			C : OUT STD_LOGIC_VECTOR(operand_width - 1 DOWNTO 0);
			control_out : OUT STD_LOGIC_VECTOR(control_bits - 1 DOWNTO 0));
	END COMPONENT ALU;

	COMPONENT FlagRegister IS PORT (
		clock : IN STD_LOGIC;
		zero_load : IN STD_LOGIC;
		carry_load : IN STD_LOGIC;
		input : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		output : OUT STD_LOGIC_VECTOR(1 DOWNTO 0));
	END COMPONENT FlagRegister;

	COMPONENT RegisterBank IS PORT (
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
		pc_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
	END COMPONENT RegisterBank;

	COMPONENT RAM IS PORT (
		clk : IN STD_LOGIC;
		write_enable : IN STD_LOGIC;
		address : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		data_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		data_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
	END COMPONENT RAM;

	COMPONENT ROM128 IS PORT (
		address : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		data : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
	END COMPONENT ROM128;

	COMPONENT BitShifter IS PORT (
		data_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		data_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
	END COMPONENT BitShifter;

	COMPONENT ZeroAppender IS PORT (
		data_in : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		data_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
	END COMPONENT ZeroAppender;

	COMPONENT SignExtender6Bit IS PORT (
		data_in : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
		data_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
	END COMPONENT SignExtender6Bit;

	COMPONENT SignExtender9Bit IS PORT (
		data_in : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
		data_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
	END COMPONENT SignExtender9Bit;

	COMPONENT Multiplexer3bit2to1 IS PORT (
		in0 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		in1 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		sel : IN STD_LOGIC;
		sel_out : OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
	END COMPONENT Multiplexer3bit2to1;

	COMPONENT Multiplexer3bit4to1 IS PORT (
		in0 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		in1 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		in2 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		in3 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		sel_out : OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
	END COMPONENT Multiplexer3bit4to1;

	COMPONENT Multiplexer16bit2to1 IS PORT (
		in0 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		in1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		sel : IN STD_LOGIC;
		sel_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
	END COMPONENT Multiplexer16bit2to1;

	COMPONENT Multiplexer16bit4to1 IS PORT (
		in0 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		in1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		in2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		in3 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		sel_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
	END COMPONENT Multiplexer16bit4to1;

	COMPONENT Multiplexer16bit8to1 IS PORT (
		in0 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		in1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		in2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		in3 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		in4 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		in5 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		in6 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		in7 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		sel : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
		sel_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
		);
	END COMPONENT Multiplexer16bit8to1;

	COMPONENT Multiplexer16bit16to1 IS PORT (
		in0 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		in1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		in2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		in3 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		in4 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		in5 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		in6 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		in7 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		in8 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		in9 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		in10 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		in11 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		in12 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		in13 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		in14 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		in15 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		sel : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
		sel_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
		);
	END COMPONENT Multiplexer16bit16to1;

	COMPONENT ForwardingUnit IS PORT (
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
		forward_select_b : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
		);
	END COMPONENT ForwardingUnit;

	-- Instruction signals for different stages in the pipeline
	SIGNAL instruction_IF_out, instruction_ID_in : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL instruction_ID_out, instruction_OR_in : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL instruction_OR_out, instruction_EX_in : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL instruction_EX_out, instruction_MEM_in : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL instruction_MEM_out, instruction_WB_in : STD_LOGIC_VECTOR(15 DOWNTO 0);

	-- Register File select lines
	SIGNAL rf_a1_select_ID : STD_LOGIC;
	SIGNAL rf_a2_select_ID : STD_LOGIC;
	SIGNAL rf_a3_select_ID : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL rf_d3_select_ID_out, rf_d3_select_OR, rf_d3_select_EX, rf_d3_select_MEM, rf_d3_select_WB_in : STD_LOGIC_VECTOR(1 DOWNTO 0);

	-- Register File signals
	SIGNAL rf_load_ID_out, rf_load_OR, rf_load_EX, rf_load_MEM, rf_load_WB_in : STD_LOGIC;

	SIGNAL rf_a1_ID_out, rf_a1_OR_in : STD_LOGIC_VECTOR(2 DOWNTO 0);
	SIGNAL rf_a1_OR_out, rf_a1_EX_in : STD_LOGIC_VECTOR(2 DOWNTO 0);

	SIGNAL rf_a2_ID_out, rf_a2_OR_in : STD_LOGIC_VECTOR(2 DOWNTO 0);
	SIGNAL rf_a2_OR_out, rf_a2_EX_in : STD_LOGIC_VECTOR(2 DOWNTO 0);

	SIGNAL rf_a3_ID_out, rf_a3_OR, rf_a3_EX, rf_a3_MEM, rf_a3_WB_in : STD_LOGIC_VECTOR(2 DOWNTO 0);

	SIGNAL rf_d1_OR_out, rf_d1_EX_in : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL rf_d2_OR_out, rf_d2_EX, rf_d2_MEM_in : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL rf_d3_WB_out : STD_LOGIC_VECTOR(15 DOWNTO 0);

	SIGNAL pc_input_IF : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL pc_output_IF_out, pc_output_ID, pc_output_OR, pc_output_EX_in : STD_LOGIC_VECTOR(15 DOWNTO 0);

	-- PC increment signal
	SIGNAL pc_increment_flags : STD_LOGIC_VECTOR(1 DOWNTO 0); -- REDUNDANT
	SIGNAL pc_plus_1_IF_out, pc_plus_1_ID, pc_plus_1_OR, pc_plus_1_EX, pc_plus_1_MEM, pc_plus_1_WB_in : STD_LOGIC_VECTOR(15 DOWNTO 0);

	-- PC + imm6 / PC + imm9 signal
	SIGNAL pc_plus_imm_flags : STD_LOGIC_VECTOR(1 DOWNTO 0); -- REDUNDANT
	SIGNAL pc_plus_imm_EX : STD_LOGIC_VECTOR(15 DOWNTO 0);

	-- PC Update control signals
	SIGNAL imm_select_ID_out, imm_select_OR, imm_select_EX_in : STD_LOGIC;
	SIGNAL pc_imm_EX : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL pc_final_select_IF : STD_LOGIC_VECTOR(1 DOWNTO 0);

	-- ALU signals
	SIGNAL alu_b_select_ID_out, alu_b_select_OR, alu_b_select_EX_in : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL alu_b_EX : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL alu_c_EX_out, alu_c_MEM, alu_C_WB_in : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL alu_select_ID_out, alu_select_OR, alu_select_EX_in : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL flags_EX : STD_LOGIC_VECTOR(1 DOWNTO 0);

	-- CC load signals
	SIGNAL z_load_ID_out, z_load_OR, z_load_EX_in : STD_LOGIC;
	SIGNAL c_load_ID_out, c_load_OR, c_load_EX_in : STD_LOGIC;
	SIGNAL cc_out_EX : STD_LOGIC_VECTOR(1 DOWNTO 0);

	-- RAM signals
	SIGNAL ram_load_ID_out, ram_load_OR, ram_load_EX, ram_load_MEM_in : STD_LOGIC;
	--signal ram_a: std_logic_vector(15 downto 0);
	--signal ram_d_in: std_logic_vector(15 downto 0);
	SIGNAL ram_d_out_MEM_out, ram_d_out_WB_in : STD_LOGIC_VECTOR(15 DOWNTO 0);

	-- Bit shifter signals
	SIGNAL shift_out_EX : STD_LOGIC_VECTOR(15 DOWNTO 0);

	-- Zero appender signals
	SIGNAL za_out_ID_out, za_out_OR, za_out_EX, za_out_MEM, za_out_WB_in : STD_LOGIC_VECTOR(15 DOWNTO 0);

	-- Sign extender 6-bit signals
	SIGNAL se6_out_ID_out, se6_out_OR, se6_out_EX_in : STD_LOGIC_VECTOR(15 DOWNTO 0);

	-- Sign extender 9-bit signals
	SIGNAL se9_out_ID_out, se9_out_OR, se9_out_EX_in : STD_LOGIC_VECTOR(15 DOWNTO 0);

	-- Forwarding signals
	SIGNAL forwarded_rf_d1, forwarded_rf_d2 : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL forward_select_a, forward_select_b : STD_LOGIC_VECTOR(3 DOWNTO 0);

BEGIN
	async_process : PROCESS (instruction_IF_out, instruction_ID_in, cc_out_EX, flags_EX, reset)
	BEGIN
		-- IF stage control
		CASE instruction_IF_out(15 DOWNTO 12) IS
			WHEN "1000" =>
				-- BEQ
				IF (flags_EX(1) = '1') THEN
					pc_final_select_IF <= "01";
				ELSE
					pc_final_select_IF <= "00";
				END IF;
			WHEN "1001" =>
				-- JAL
				pc_final_select_IF <= "01";
			WHEN "1010" =>
				-- JLR
				pc_final_select_IF <= "10";
			WHEN "1011" =>
				-- JRI							
				pc_final_select_IF <= "11";
			WHEN OTHERS =>
				pc_final_select_IF <= "00";
		END CASE;

		-- ID stage control
		CASE instruction_ID_in(15 DOWNTO 12) IS
			WHEN "0001" =>
				-- ADD, ADC, ADZ, ADL
				CASE instruction_ID_in(1 DOWNTO 0) IS
					WHEN "00" =>
						-- ADD
						rf_a1_select_ID <= '0';
						rf_a2_select_ID <= '1';
						rf_a3_select_ID <= "00";
						rf_d3_select_ID_out <= "00";
						alu_b_select_ID_out <= "00";
						imm_select_ID_out <= '0'; -- Can be anything since PC should be incremented
						alu_select_ID_out <= "00"; -- 00 is for addition
						rf_load_ID_out <= '1';
						ram_load_ID_out <= '0';
						z_load_ID_out <= '1';
						c_load_ID_out <= '1';

					WHEN "01" =>
						-- ADC
						IF (cc_out_EX(0) = '1') THEN
							rf_a1_select_ID <= '0';
							rf_a2_select_ID <= '1';
							rf_a3_select_ID <= "00";
							rf_d3_select_ID_out <= "00";
							alu_b_select_ID_out <= "00";
							imm_select_ID_out <= '0'; -- Can be anything since PC should be incremented
							alu_select_ID_out <= "00"; -- 00 is for addition
							rf_load_ID_out <= '1';
							ram_load_ID_out <= '0';
							z_load_ID_out <= '1';
							c_load_ID_out <= '1';

						ELSE
							rf_a1_select_ID <= '0'; -- Can be anything since carry is not set
							rf_a2_select_ID <= '1'; -- Can be anything since carry is not set
							rf_a3_select_ID <= "00"; -- Can be anything since carry is not set
							rf_d3_select_ID_out <= "00"; -- Can be anything since carry is not set
							alu_b_select_ID_out <= "00"; -- Can be anything since carry is not set
							imm_select_ID_out <= '0'; -- Can be anything since PC should be incremented
							alu_select_ID_out <= "00"; -- 00 is for addition
							rf_load_ID_out <= '0';
							ram_load_ID_out <= '0';
							z_load_ID_out <= '0';
							c_load_ID_out <= '0';
						END IF;

					WHEN "10" =>
						-- ADZ
						IF (cc_out_EX(1) = '1') THEN
							rf_a1_select_ID <= '0';
							rf_a2_select_ID <= '1';
							rf_a3_select_ID <= "00";
							rf_d3_select_ID_out <= "00";
							alu_b_select_ID_out <= "00";
							imm_select_ID_out <= '0'; -- Can be anything since PC should be incremented
							alu_select_ID_out <= "00"; -- 00 is for addition
							rf_load_ID_out <= '1';
							ram_load_ID_out <= '0';
							z_load_ID_out <= '1';
							c_load_ID_out <= '1';

						ELSE
							rf_a1_select_ID <= '0'; -- Can be anything since zero is not set
							rf_a2_select_ID <= '1'; -- Can be anything since zero is not set
							rf_a3_select_ID <= "00"; -- Can be anything since zero is not set
							rf_d3_select_ID_out <= "00"; -- Can be anything since zero is not set
							alu_b_select_ID_out <= "00"; -- Can be anything since zero is not set
							imm_select_ID_out <= '0'; -- Can be anything since PC should be incremented
							alu_select_ID_out <= "00"; -- 00 is for addition
							rf_load_ID_out <= '0';
							ram_load_ID_out <= '0';
							z_load_ID_out <= '0';
							c_load_ID_out <= '0';
						END IF;

					WHEN "11" =>
						-- ADL
						rf_a1_select_ID <= '0';
						rf_a2_select_ID <= '1';
						rf_a3_select_ID <= "00";
						rf_d3_select_ID_out <= "00";
						alu_b_select_ID_out <= "01";
						imm_select_ID_out <= '0'; -- Can be anything since PC should be incremented
						alu_select_ID_out <= "00";
						rf_load_ID_out <= '1';
						ram_load_ID_out <= '0';
						z_load_ID_out <= '1';
						c_load_ID_out <= '1';

					WHEN OTHERS =>
						-- Default behaviour (shouldn't really arise)
						rf_a1_select_ID <= '0';
						rf_a2_select_ID <= '1';
						rf_a3_select_ID <= "00";
						rf_d3_select_ID_out <= "00";
						alu_b_select_ID_out <= "00";
						imm_select_ID_out <= '0'; -- Can be anything since PC should be incremented
						alu_select_ID_out <= "00";
						rf_load_ID_out <= '0';
						ram_load_ID_out <= '0';
						z_load_ID_out <= '0';
						c_load_ID_out <= '0';
				END CASE;

			WHEN "0000" =>
				-- ADI
				rf_a1_select_ID <= '0';
				rf_a2_select_ID <= '1'; -- Can be anything because you're adding immediate data
				rf_a3_select_ID <= "01";
				rf_d3_select_ID_out <= "00";
				alu_b_select_ID_out <= "10";
				imm_select_ID_out <= '0'; -- Can be anything since PC should be incremented
				alu_select_ID_out <= "00"; -- 00 is for addition
				rf_load_ID_out <= '1';
				ram_load_ID_out <= '0';
				z_load_ID_out <= '1';
				c_load_ID_out <= '1';

			WHEN "0010" =>
				-- NDU, NDC, NDZ
				CASE instruction_ID_in(1 DOWNTO 0) IS
					WHEN "00" =>
						-- NDU
						rf_a1_select_ID <= '0';
						rf_a2_select_ID <= '1';
						rf_a3_select_ID <= "00";
						rf_d3_select_ID_out <= "00";
						alu_b_select_ID_out <= "00";
						imm_select_ID_out <= '0'; -- Can be anything since PC should be incremented
						alu_select_ID_out <= "01"; -- 01 is for NAND
						rf_load_ID_out <= '1';
						ram_load_ID_out <= '0';
						z_load_ID_out <= '1';
						c_load_ID_out <= '0';

					WHEN "01" =>
						-- NDC
						IF (cc_out_EX(0) = '1') THEN
							rf_a1_select_ID <= '0';
							rf_a2_select_ID <= '1';
							rf_a3_select_ID <= "00";
							rf_d3_select_ID_out <= "00";
							alu_b_select_ID_out <= "00";
							imm_select_ID_out <= '0'; -- Can be anything since PC should be incremented
							alu_select_ID_out <= "01"; -- 01 is for NAND
							rf_load_ID_out <= '1';
							ram_load_ID_out <= '0';
							z_load_ID_out <= '1';
							c_load_ID_out <= '0';

						ELSE
							rf_a1_select_ID <= '0'; -- Can be anything since carry is not set
							rf_a2_select_ID <= '1'; -- Can be anything since carry is not set
							rf_a3_select_ID <= "00"; -- Can be anything since carry is not set
							rf_d3_select_ID_out <= "00"; -- Can be anything since carry is not set
							alu_b_select_ID_out <= "00"; -- Can be anything since carry is not set
							imm_select_ID_out <= '0'; -- Can be anything since PC should be incremented
							alu_select_ID_out <= "01"; -- 01 is for NAND
							rf_load_ID_out <= '0';
							ram_load_ID_out <= '0';
							z_load_ID_out <= '0';
							c_load_ID_out <= '0';
						END IF;

					WHEN "10" =>
						-- NDZ
						IF (cc_out_EX(1) = '1') THEN
							rf_a1_select_ID <= '0';
							rf_a2_select_ID <= '1';
							rf_a3_select_ID <= "00";
							rf_d3_select_ID_out <= "00";
							alu_b_select_ID_out <= "00";
							imm_select_ID_out <= '0'; -- Can be anything since PC should be incremented
							alu_select_ID_out <= "01"; -- 01 is for NAND
							rf_load_ID_out <= '1';
							ram_load_ID_out <= '0';
							z_load_ID_out <= '1';
							c_load_ID_out <= '0';

						ELSE
							rf_a1_select_ID <= '0'; -- Can be anything since zero is not set
							rf_a2_select_ID <= '1'; -- Can be anything since zero is not set
							rf_a3_select_ID <= "00"; -- Can be anything since zero is not set
							rf_d3_select_ID_out <= "00"; -- Can be anything since zero is not set
							alu_b_select_ID_out <= "00"; -- Can be anything since zero is not set
							imm_select_ID_out <= '0'; -- Can be anything since PC should be incremented
							alu_select_ID_out <= "01"; -- 01 is for NAND
							rf_load_ID_out <= '0';
							ram_load_ID_out <= '0';
							z_load_ID_out <= '0';
							c_load_ID_out <= '0';
						END IF;

					WHEN OTHERS =>
						-- Default behaviour (shouldn't really arise)
						rf_a1_select_ID <= '0';
						rf_a2_select_ID <= '1';
						rf_a3_select_ID <= "00";
						rf_d3_select_ID_out <= "00";
						alu_b_select_ID_out <= "00";
						imm_select_ID_out <= '0'; -- Can be anything since PC should be incremented
						alu_select_ID_out <= "01";
						rf_load_ID_out <= '0';
						ram_load_ID_out <= '0';
						z_load_ID_out <= '0';
						c_load_ID_out <= '0';
				END CASE;

			WHEN "0011" =>
				-- LHI
				rf_a1_select_ID <= '0'; -- Can be anything since the ALU is not used in LHI
				rf_a2_select_ID <= '1'; -- Can be anything since the ALU is not used in LHI
				rf_a3_select_ID <= "10";
				rf_d3_select_ID_out <= "01";
				alu_b_select_ID_out <= "00"; -- Can be anything since the ALU is not used in LHI
				imm_select_ID_out <= '0'; -- Can be anything since PC should be incremented
				alu_select_ID_out <= "00"; -- Can be anything since the ALU is not used in LHI
				rf_load_ID_out <= '1';
				ram_load_ID_out <= '0';
				z_load_ID_out <= '0';
				c_load_ID_out <= '0';

			WHEN "0111" =>
				-- LW
				rf_a1_select_ID <= '1';
				rf_a2_select_ID <= '0'; -- Can be anything since immediate data is used
				rf_a3_select_ID <= "10";
				rf_d3_select_ID_out <= "10";
				alu_b_select_ID_out <= "10";
				imm_select_ID_out <= '0'; -- Can be anything since PC should be incremented
				alu_select_ID_out <= "00"; -- 00 is for addition
				rf_load_ID_out <= '1';
				ram_load_ID_out <= '0';
				z_load_ID_out <= '1';
				c_load_ID_out <= '0';

			WHEN "0101" =>
				-- SW
				rf_a1_select_ID <= '1';
				rf_a2_select_ID <= '0';
				rf_a3_select_ID <= "10"; -- Can be anything since we don't write back into the register file
				rf_d3_select_ID_out <= "10"; -- Can be anything since we don't write back into the register file
				alu_b_select_ID_out <= "10";
				imm_select_ID_out <= '0'; -- Can be anything since PC should be incremented
				alu_select_ID_out <= "00"; -- 00 is for addition
				rf_load_ID_out <= '0';
				ram_load_ID_out <= '1';
				z_load_ID_out <= '0';
				c_load_ID_out <= '0';

			WHEN "1000" =>
				-- BEQ
				rf_a1_select_ID <= '0';
				rf_a2_select_ID <= '1';
				rf_a3_select_ID <= "00"; -- Can be anything since we don't write back into the register file
				rf_d3_select_ID_out <= "00"; -- Can be anything since we don't write back into the register file
				alu_b_select_ID_out <= "00";
				imm_select_ID_out <= '0'; -- Needs to be 0 to compute PC + Imm6
				alu_select_ID_out <= "10"; -- 10 is for XOR
				rf_load_ID_out <= '0';
				ram_load_ID_out <= '0';
				z_load_ID_out <= '0';
				c_load_ID_out <= '0';

			WHEN "1001" =>
				-- JAL
				rf_a1_select_ID <= '0'; -- Can be anything since we don't write back into the register file
				rf_a2_select_ID <= '1'; -- Can be anything since we don't write back into the register file
				rf_a3_select_ID <= "10"; -- 10 corresponds to Register RA
				rf_d3_select_ID_out <= "11"; -- 11 corresponds to PC + 1
				alu_b_select_ID_out <= "10"; -- Can be anything since ALU is not used
				imm_select_ID_out <= '1';
				alu_select_ID_out <= "10"; -- Can be anything since ALU is not used
				rf_load_ID_out <= '1';
				ram_load_ID_out <= '0';
				z_load_ID_out <= '0';
				c_load_ID_out <= '0';

			WHEN "1010" =>
				-- JLR
				rf_a1_select_ID <= '0'; -- Can be anything since we don't write back into the register file
				rf_a2_select_ID <= '1';
				rf_a3_select_ID <= "10"; -- 10 corresponds to Register RA
				rf_d3_select_ID_out <= "11"; -- 11 corresponds to PC + 1
				alu_b_select_ID_out <= "10"; -- Can be anything since ALU is not used
				imm_select_ID_out <= '1'; -- Can be anything since you branch to address RB
				alu_select_ID_out <= "10"; -- Can be anything since ALU is not used
				rf_load_ID_out <= '1';
				ram_load_ID_out <= '0';
				z_load_ID_out <= '0';
				c_load_ID_out <= '0';

			WHEN "1011" =>
				-- JRI
				rf_a1_select_ID <= '0';
				rf_a2_select_ID <= '1';
				rf_a3_select_ID <= "10"; -- Can be anything since we don't write back into the register file
				rf_d3_select_ID_out <= "11"; -- Can be anything since we don't write back into the register file
				alu_b_select_ID_out <= "11";
				imm_select_ID_out <= '1'; -- 1 corresponds to Imm9
				alu_select_ID_out <= "00"; -- ALU should add
				rf_load_ID_out <= '0';
				ram_load_ID_out <= '0';
				z_load_ID_out <= '0';
				c_load_ID_out <= '0';

			WHEN OTHERS =>
				-- For the time being, just increment the PC
				rf_a1_select_ID <= '0';
				rf_a2_select_ID <= '1';
				rf_a3_select_ID <= "00";
				rf_d3_select_ID_out <= "00";
				alu_b_select_ID_out <= "00";
				imm_select_ID_out <= '0';
				alu_select_ID_out <= "00";
				rf_load_ID_out <= '0';
				ram_load_ID_out <= '0';
				z_load_ID_out <= '0';
				c_load_ID_out <= '0';
		END CASE;
	END PROCESS;

	test_out <= rf_d3_WB_out;
	-- test_out(11) <= rf_load_WB_in;
	-- test_out(14 downto 0) <= rf_d3_WB_out(14 downto 0);
	-- test_out <= pc_output_IF_out;

	-- rom_a <= pc_output;
	rom_unit : ROM128 PORT MAP(
		address => pc_output_IF_out,
		data => instruction_IF_out);

	rf_a1_mux : Multiplexer3bit2to1 PORT MAP(
		in0 => instruction_ID_in(11 DOWNTO 9),
		in1 => instruction_ID_in(8 DOWNTO 6),
		sel => rf_a1_select_ID,
		sel_out => rf_a1_ID_out);

	rf_a2_mux : Multiplexer3bit2to1 PORT MAP(
		in0 => instruction_ID_in(11 DOWNTO 9),
		in1 => instruction_ID_in(8 DOWNTO 6),
		sel => rf_a2_select_ID,
		sel_out => rf_a2_ID_out);

	rf_a3_mux : Multiplexer3bit4to1 PORT MAP(
		in0 => instruction_ID_in(5 DOWNTO 3),
		in1 => instruction_ID_in(8 DOWNTO 6),
		in2 => instruction_ID_in(11 DOWNTO 9),
		in3 => instruction_ID_in(5 DOWNTO 3),
		sel => rf_a3_select_ID,
		sel_out => rf_a3_ID_out);

	rf_d3_mux : Multiplexer16bit4to1 PORT MAP(
		in0 => alu_c_WB_in,
		in1 => za_out_WB_in,
		in2 => ram_d_out_WB_in,
		in3 => pc_plus_1_WB_in,
		sel => rf_d3_select_WB_in,
		sel_out => rf_d3_WB_out);

	rf : RegisterBank PORT MAP(
		clock => clock,
		load => rf_load_WB_in,
		reset => reset,
		address_in => rf_a3_WB_in,
		data_in => rf_d3_WB_out,
		address_out_1 => rf_a1_OR_in,
		data_out_1 => rf_d1_OR_out,
		address_out_2 => rf_a2_OR_in,
		data_out_2 => rf_d2_OR_out,
		pc_in => pc_input_IF,
		pc_out => pc_output_IF_out);

	rf_d1_forwarding_mux : Multiplexer16bit16to1 PORT MAP(
		in0 => rf_d1_OR_out,
		in1 => za_out_EX,
		in2 => alu_c_EX_out,
		in3 => pc_plus_1_EX,
		in4 => za_out_MEM,
		in5 => alu_c_MEM,
		in6 => pc_plus_1_MEM,
		in7 => ram_d_out_MEM_out,
		in8 => rf_d3_WB_out,
		in9 => rf_d1_OR_out,
		in10 => rf_d1_OR_out,
		in11 => rf_d1_OR_out,
		in12 => rf_d1_OR_out,
		in13 => rf_d1_OR_out,
		in14 => rf_d1_OR_out,
		in15 => rf_d1_OR_out,
		sel => forward_select_a,
		sel_out => forwarded_rf_d1);

	rf_d2_forwarding_mux : Multiplexer16bit16to1 PORT MAP(
		in0 => rf_d2_OR_out,
		in1 => za_out_EX,
		in2 => alu_c_EX_out,
		in3 => pc_plus_1_EX,
		in4 => za_out_MEM,
		in5 => alu_c_MEM,
		in6 => pc_plus_1_MEM,
		in7 => ram_d_out_MEM_out,
		in8 => rf_d3_WB_out,
		in9 => rf_d2_OR_out,
		in10 => rf_d2_OR_out,
		in11 => rf_d2_OR_out,
		in12 => rf_d2_OR_out,
		in13 => rf_d2_OR_out,
		in14 => rf_d2_OR_out,
		in15 => rf_d2_OR_out,
		sel => forward_select_b,
		sel_out => forwarded_rf_d2);

	forwarding_unit : ForwardingUnit PORT MAP(
		or_ex_rf_load => rf_load_EX,
		or_ex_opcode => instruction_EX_in(15 DOWNTO 12),
		or_ex_rf_a3 => rf_a3_EX,

		ex_mem_rf_load => rf_load_MEM,
		ex_mem_opcode => instruction_MEM_in(15 DOWNTO 12),
		ex_mem_rf_a3 => rf_a3_MEM,

		mem_wb_rf_load => rf_load_WB_in,
		mem_wb_opcode => instruction_WB_in(15 DOWNTO 12),
		mem_wb_rf_a3 => rf_a3_WB_in,

		id_or_rf_a1 => rf_a1_OR_in,
		id_or_rf_a2 => rf_a2_OR_in,

		forward_select_a => forward_select_a,
		forward_select_b => forward_select_b);

	alu_b_mux : Multiplexer16bit4to1 PORT MAP(
		in0 => rf_d2_EX,
		in1 => shift_out_EX,
		in2 => se6_out_EX_in,
		in3 => se9_out_EX_in,
		sel => alu_b_select_EX_in,
		sel_out => alu_b_EX);

	-- ALU A comes from the forwarding multiplexer for A
	main_alu : ALU PORT MAP(
		A => rf_d1_EX_in,
		B => alu_b_EX,
		control_in => alu_select_EX_in,
		C => alu_c_EX_out,
		control_out => flags_EX);

	-- cc_in <= flags;
	cc : FlagRegister PORT MAP(
		clock => clock,
		zero_load => z_load_ID_out,
		carry_load => c_load_ID_out,
		input => flags_EX,
		output => cc_out_EX);

	-- ram_a <= alu_c;
	-- ram_d_in <= rf_d2;
	ram_unit : RAM PORT MAP(
		clk => clock,
		write_enable => ram_load_MEM_in,
		address => alu_c_MEM,
		data_in => rf_d2_MEM_in,
		data_out => ram_d_out_MEM_out);

	-- shift_in <= rf_d2;
	shifter : BitShifter PORT MAP(
		data_in => rf_d2_EX,
		data_out => shift_out_EX);

	-- za_in <= instruction_ID_in(8 downto 0);
	za : ZeroAppender PORT MAP(
		data_in => instruction_ID_in(8 DOWNTO 0),
		data_out => za_out_ID_out);

	-- se6_in <= instruction_ID_in(5 downto 0);
	se6 : SignExtender6Bit PORT MAP(
		data_in => instruction_ID_in(5 DOWNTO 0),
		data_out => se6_out_ID_out);

	-- se9_in <= instruction_ID_in(8 downto 0);
	se9 : SignExtender9Bit PORT MAP(
		data_in => instruction_ID_in(8 DOWNTO 0),
		data_out => se9_out_ID_out);

	-- Configured to always add (specifically increment)
	incrementer : ALU PORT MAP(
		A => pc_output_IF_out,
		B => "0000000000000001",
		control_in => "00",
		C => pc_plus_1_IF_out,
		control_out => pc_increment_flags);

	pc_plus_imm_mux : Multiplexer16bit2to1 PORT MAP(
		in0 => se6_out_EX_in,
		in1 => se9_out_EX_in,
		sel => imm_select_EX_in,
		sel_out => pc_imm_EX);

	-- Configured to always add
	adder : ALU PORT MAP(
		A => pc_output_EX_in,
		B => pc_imm_EX,
		control_in => "00",
		C => pc_plus_imm_EX,
		control_out => pc_plus_imm_flags);

	pc_final_mux : Multiplexer16bit4to1 PORT MAP(
		in0 => pc_plus_1_IF_out,
		in1 => pc_plus_imm_EX,
		in2 => rf_d2_EX,
		in3 => alu_c_EX_out,
		sel => pc_final_select_IF,
		sel_out => pc_input_IF);

	-- Pipeline registers
	if_id_register : IF_ID_reg PORT MAP(
		clock => clock,

		pc_plus_1_IF_out => pc_plus_1_IF_out,
		pc_output_IF_out => pc_output_IF_out,
		instruction_IF_out => instruction_IF_out,
		pc_plus_1_ID => pc_plus_1_ID,
		pc_output_ID => pc_output_ID,
		instruction_ID_in => instruction_ID_in);

	-- instruction_ID_out <= instruction_ID_in
	id_or_register : ID_OR_reg PORT MAP(
		clock => clock,

		pc_plus_1_ID => pc_plus_1_ID,
		pc_output_ID => pc_output_ID,
		rf_d3_select_ID_out => rf_d3_select_ID_out,
		alu_b_select_ID_out => alu_b_select_ID_out,
		imm_select_ID_out => imm_select_ID_out,

		alu_select_ID_out => alu_select_ID_out,
		rf_load_ID_out => rf_load_ID_out,
		ram_load_ID_out => ram_load_ID_out,
		z_load_ID_out => z_load_ID_out,
		c_load_ID_out => c_load_ID_out,
		rf_a3_ID_out => rf_a3_ID_out,
		se6_out_ID_out => se6_out_ID_out,
		se9_out_ID_out => se9_out_ID_out,
		za_out_ID_out => za_out_ID_out,
		rf_a2_ID_out => rf_a2_ID_out,
		rf_a1_ID_out => rf_a1_ID_out,
		instruction_ID_out => instruction_ID_in,

		pc_plus_1_OR => pc_plus_1_OR,
		pc_output_OR => pc_output_OR,
		rf_d3_select_OR => rf_d3_select_OR,
		alu_b_select_OR => alu_b_select_OR,
		imm_select_OR => imm_select_OR,
		alu_select_OR => alu_select_OR,
		rf_load_OR => rf_load_OR,
		ram_load_OR => ram_load_OR,
		z_load_OR => z_load_OR,
		c_load_OR => c_load_OR,
		rf_a3_OR => rf_a3_OR,
		se6_out_OR => se6_out_OR,
		se9_out_OR => se9_out_OR,
		za_out_OR => za_out_OR,
		rf_a2_OR_in => rf_a2_OR_in,
		rf_a1_OR_in => rf_a1_OR_in,
		instruction_OR_in => instruction_OR_in);

	-- instruction_OR_out <= instruction_OR_in
	-- rf_a2_OR_out <= rf_a2_OR_in
	-- rf_a1_OR_out <= rf_a1_OR_in
	or_ex_register : OR_EX_reg PORT MAP(
		clock => clock,

		pc_plus_1_OR => pc_plus_1_OR,
		pc_output_OR => pc_output_OR,
		rf_d3_select_OR => rf_d3_select_OR,
		alu_b_select_OR => alu_b_select_OR,
		imm_select_OR => imm_select_OR,
		alu_select_OR => alu_select_OR,
		rf_load_OR => rf_load_OR,
		ram_load_OR => ram_load_OR,
		z_load_OR => z_load_OR,
		c_load_OR => c_load_OR,
		rf_a3_OR => rf_a3_OR,
		se6_out_OR => se6_out_OR,
		se9_out_OR => se9_out_OR,
		za_out_OR => za_out_OR,
		rf_a2_OR_out => rf_a2_OR_in,
		rf_a1_OR_out => rf_a1_OR_in,
		rf_d2_OR_out => forwarded_rf_d2,
		rf_d1_OR_out => forwarded_rf_d1,
		instruction_OR_out => instruction_OR_in,

		pc_plus_1_EX => pc_plus_1_EX,
		pc_output_EX_in => pc_output_EX_in,
		rf_d3_select_EX => rf_d3_select_EX,
		alu_b_select_EX_in => alu_b_select_EX_in,
		imm_select_EX_in => imm_select_EX_in,
		alu_select_EX_in => alu_select_EX_in,
		rf_load_EX => rf_load_EX,
		ram_load_EX => ram_load_EX,
		z_load_EX_in => z_load_EX_in,
		c_load_EX_in => c_load_EX_in,
		rf_a3_EX => rf_a3_EX,
		se6_out_EX_in => se6_out_EX_in,
		se9_out_EX_in => se9_out_EX_in,
		za_out_EX => za_out_EX,
		rf_a2_EX_in => rf_a2_EX_in,
		rf_a1_EX_in => rf_a1_EX_in,
		rf_d2_EX => rf_d2_EX,
		rf_d1_EX_in => rf_d1_EX_in,
		instruction_EX_in => instruction_EX_in);

	-- instruction_EX_out <= instruction_EX_in
	ex_mem_register : EX_MEM_reg PORT MAP(
		clock => clock,

		pc_plus_1_EX => pc_plus_1_EX,
		rf_d3_select_EX => rf_d3_select_EX,
		rf_load_EX => rf_load_EX,
		ram_load_EX => ram_load_EX,
		rf_a3_EX => rf_a3_EX,
		za_out_EX => za_out_EX,
		rf_d2_EX => rf_d2_EX,
		alu_c_EX_out => alu_c_EX_out,
		instruction_EX_out => instruction_EX_in,

		pc_plus_1_MEM => pc_plus_1_MEM,
		rf_d3_select_MEM => rf_d3_select_MEM,
		rf_load_MEM => rf_load_MEM,
		ram_load_MEM_in => ram_load_MEM_in,
		rf_a3_MEM => rf_a3_MEM,
		za_out_MEM => za_out_MEM,
		rf_d2_MEM_in => rf_d2_MEM_in,
		alu_c_MEM => alu_c_MEM,
		instruction_MEM_in => instruction_MEM_in);

	-- instruction_MEM_out <= instruction_MEM_in
	mem_wb_register : MEM_WB_reg PORT MAP(
		clock => clock,

		pc_plus_1_MEM => pc_plus_1_MEM,
		rf_d3_select_MEM => rf_d3_select_MEM,
		rf_load_MEM => rf_load_MEM,
		rf_a3_MEM => rf_a3_MEM,
		za_out_MEM => za_out_MEM,
		alu_c_MEM => alu_c_MEM,
		ram_d_out_MEM_out => ram_d_out_MEM_out,
		instruction_MEM_out => instruction_MEM_in,

		pc_plus_1_WB_in => pc_plus_1_WB_in,
		rf_d3_select_WB_in => rf_d3_select_WB_in,
		rf_load_WB_in => rf_load_WB_in,
		rf_a3_WB_in => rf_a3_WB_in,
		za_out_WB_in => za_out_WB_in,
		alu_c_WB_in => alu_c_WB_in,
		ram_d_out_WB_in => ram_d_out_WB_in,
		instruction_WB_in => instruction_WB_in);
END ARCHITECTURE run;