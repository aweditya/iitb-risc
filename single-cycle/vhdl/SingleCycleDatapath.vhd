LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY SingleCycleDatapath IS
	PORT (
		clock, reset : IN STD_LOGIC;
		test_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
END ENTITY SingleCycleDatapath;

ARCHITECTURE run OF SingleCycleDatapath IS
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

	COMPONENT Controller IS PORT (
		instruction : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
		cc_out : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		flags : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
		rf_a1_select : OUT STD_LOGIC;
		rf_a2_select : OUT STD_LOGIC;
		rf_a3_select : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		rf_d3_select : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		alu_b_select : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		imm_select : OUT STD_LOGIC;
		pc_final_select : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		alu_select : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
		rf_load : OUT STD_LOGIC;
		ram_load : OUT STD_LOGIC;
		z_load : OUT STD_LOGIC;
		c_load : OUT STD_LOGIC
		);
	END COMPONENT Controller;

	-- ROM signals
	SIGNAL rom_a : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL instruction : STD_LOGIC_VECTOR(15 DOWNTO 0);

	-- Register File select lines
	SIGNAL rf_a1_select : STD_LOGIC;
	SIGNAL rf_a2_select : STD_LOGIC;
	SIGNAL rf_a3_select : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL rf_d3_select : STD_LOGIC_VECTOR(1 DOWNTO 0);

	-- Register File signals
	SIGNAL rf_load : STD_LOGIC;
	SIGNAL rf_a1, rf_a2, rf_a3 : STD_LOGIC_VECTOR(2 DOWNTO 0);
	SIGNAL rf_d1, rf_d2, rf_d3 : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL pc_input, pc_output : STD_LOGIC_VECTOR(15 DOWNTO 0);

	-- PC increment signal
	SIGNAL pc_increment_flags : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL pc_plus_1 : STD_LOGIC_VECTOR(15 DOWNTO 0);

	-- PC + imm6 / PC + imm9 signal
	SIGNAL pc_plus_imm_flags : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL pc_plus_imm : STD_LOGIC_VECTOR(15 DOWNTO 0);

	-- PC Update control signals
	SIGNAL imm_select : STD_LOGIC;
	SIGNAL pc_imm : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL pc_final_select : STD_LOGIC_VECTOR(1 DOWNTO 0);

	-- ALU signals
	SIGNAL alu_b_select : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL alu_a, alu_b : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL alu_c : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL alu_select : STD_LOGIC_VECTOR(1 DOWNTO 0);
	SIGNAL flags : STD_LOGIC_VECTOR(1 DOWNTO 0);

	-- CC load signals
	SIGNAL z_load, c_load : STD_LOGIC;
	SIGNAL cc_out : STD_LOGIC_VECTOR(1 DOWNTO 0);

	-- RAM signals
	SIGNAL ram_load : STD_LOGIC;
	SIGNAL ram_a : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL ram_d_in : STD_LOGIC_VECTOR(15 DOWNTO 0);
	SIGNAL ram_d_out : STD_LOGIC_VECTOR(15 DOWNTO 0);

	-- Bit shifter signals
	SIGNAL shift_in, shift_out : STD_LOGIC_VECTOR(15 DOWNTO 0);

	-- Zero appender signals
	SIGNAL za_in, za_out : STD_LOGIC_VECTOR(15 DOWNTO 0);

	-- Sign extender 6-bit signals
	SIGNAL se6_in, se6_out : STD_LOGIC_VECTOR(15 DOWNTO 0);

	-- Sign extender 9-bit signals
	SIGNAL se9_in, se9_out : STD_LOGIC_VECTOR(15 DOWNTO 0);

BEGIN
	-- test_out <= pc_input;
	test_out <= rf_d3;
	
	-- rom_a <= pc_output;
	rom_unit : ROM128 PORT MAP(
		address => pc_output,
		data => instruction);

	rf_a1_mux : Multiplexer3bit2to1 PORT MAP(
		in0 => instruction(11 DOWNTO 9),
		in1 => instruction(8 DOWNTO 6),
		sel => rf_a1_select,
		sel_out => rf_a1);

	rf_a2_mux : Multiplexer3bit2to1 PORT MAP(
		in0 => instruction(11 DOWNTO 9),
		in1 => instruction(8 DOWNTO 6),
		sel => rf_a2_select,
		sel_out => rf_a2);

	rf_a3_mux : Multiplexer3bit4to1 PORT MAP(
		in0 => instruction(5 DOWNTO 3),
		in1 => instruction(8 DOWNTO 6),
		in2 => instruction(11 DOWNTO 9),
		in3 => instruction(5 DOWNTO 3),
		sel => rf_a3_select,
		sel_out => rf_a3);

	rf_d3_mux : Multiplexer16bit4to1 PORT MAP(
		in0 => alu_c,
		in1 => za_out,
		in2 => ram_d_out,
		in3 => pc_plus_1,
		sel => rf_d3_select,
		sel_out => rf_d3);

	rf : RegisterBank PORT MAP(
		clock => clock,
		load => rf_load,
		reset => reset,
		address_in => rf_a3,
		data_in => rf_d3,
		address_out_1 => rf_a1,
		data_out_1 => rf_d1,
		address_out_2 => rf_a2,
		data_out_2 => rf_d2,
		pc_in => pc_input,
		pc_out => pc_output);

	alu_b_mux : Multiplexer16bit4to1 PORT MAP(
		in0 => rf_d2,
		in1 => shift_out,
		in2 => se6_out,
		in3 => se9_out,
		sel => alu_b_select,
		sel_out => alu_b);

	-- alu_a <= rf_d1;
	main_alu : ALU PORT MAP(
		A => rf_d1,
		B => alu_b,
		control_in => alu_select,
		C => alu_c,
		control_out => flags);

	-- cc_in <= flags;
	cc : FlagRegister PORT MAP(
		clock => clock,
		zero_load => z_load,
		carry_load => c_load,
		input => flags,
		output => cc_out);

	-- ram_a <= alu_c;
	-- ram_d_in <= rf_d2;
	ram_unit : RAM PORT MAP(
		clk => clock,
		write_enable => ram_load,
		address => alu_c,
		data_in => rf_d2,
		data_out => ram_d_out);

	-- shift_in <= rf_d2;
	shifter : BitShifter PORT MAP(
		data_in => rf_d2,
		data_out => shift_out);

	-- za_in <= instruction(8 downto 0);
	za : ZeroAppender PORT MAP(
		data_in => instruction(8 DOWNTO 0),
		data_out => za_out);

	-- se6_in <= instruction(5 downto 0);
	se6 : SignExtender6Bit PORT MAP(
		data_in => instruction(5 DOWNTO 0),
		data_out => se6_out);

	-- se9_in <= instruction(8 downto 0);
	se9 : SignExtender9Bit PORT MAP(
		data_in => instruction(8 DOWNTO 0),
		data_out => se9_out);

	-- Configured to always add (specifically increment)
	incrementer : ALU PORT MAP(
		A => pc_output,
		B => "0000000000000001",
		control_in => "00",
		C => pc_plus_1,
		control_out => pc_increment_flags);

	pc_plus_imm_mux : Multiplexer16bit2to1 PORT MAP(
		in0 => se6_out,
		in1 => se9_out,
		sel => imm_select,
		sel_out => pc_imm);

	-- Configured to always add
	adder : ALU PORT MAP(
		A => pc_output,
		B => pc_imm,
		control_in => "00",
		C => pc_plus_imm,
		control_out => pc_plus_imm_flags);

	pc_final_mux : Multiplexer16bit4to1 PORT MAP(
		in0 => pc_plus_1,
		in1 => pc_plus_imm,
		in2 => rf_d2,
		in3 => alu_c,
		sel => pc_final_select,
		sel_out => pc_input);

	-- Controller (combinational circuit)
	control_unit : Controller PORT MAP(
		instruction,
		cc_out,
		flags,
		rf_a1_select,
		rf_a2_select,
		rf_a3_select,
		rf_d3_select,
		alu_b_select,
		imm_select,
		pc_final_select,
		alu_select,
		rf_load,
		ram_load,
		z_load,
		c_load);

END ARCHITECTURE run;