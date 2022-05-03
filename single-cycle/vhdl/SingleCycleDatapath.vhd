library ieee;
use ieee.std_logic_1164.all;

entity SingleCycleDatapath is 
	port (clock, reset: in std_logic;
	     test_out: out std_logic_vector(15 downto 0));
end entity SingleCycleDatapath;

architecture run of SingleCycleDatapath is
	component ALU is
        generic(
                operand_width: integer := 16;
                control_bits: integer := 2);
	port(
                A: in std_logic_vector(operand_width-1 downto 0);
                B: in std_logic_vector(operand_width-1 downto 0);
                control_in: in std_logic_vector(control_bits-1 downto 0);
                C: out std_logic_vector(operand_width-1 downto 0);
                control_out: out std_logic_vector(control_bits-1 downto 0));
	end component ALU;

	component FlagRegister is port(
        	clock: in std_logic;
	        zero_load: in std_logic;
        	carry_load: in std_logic;
	        input: in std_logic_vector(1 downto 0);
        	output : out std_logic_vector(1 downto 0));
	end component FlagRegister;

	component RegisterBank is port(
	        clock: in std_logic;
	        load: in std_logic;
	        address_in: in std_logic_vector(2 downto 0);
	        data_in: in std_logic_vector(15 downto 0);
	        address_out_1: in std_logic_vector(2 downto 0);
	        data_out_1: out std_logic_vector(15 downto 0);
	        address_out_2: in std_logic_vector(2 downto 0);
        	data_out_2: out std_logic_vector(15 downto 0);
	        pc_in: in std_logic_vector(15 downto 0);
        	pc_out: out std_logic_vector(15 downto 0));
	end component RegisterBank;

	component RAM is port(
	        clk: in std_logic;
	        write_enable: in std_logic;
        	address: in std_logic_vector(15 downto 0);
	        data_in: in std_logic_vector(15 downto 0);
        	data_out: out std_logic_vector(15 downto 0));
	end component RAM;

	component ROM128 is port(
	        address: in std_logic_vector(15 downto 0);
        	data: out std_logic_vector(15 downto 0));
	end component ROM128;

	component BitShifter is port(
		data_in: in std_logic_vector(15 downto 0);
		data_out: out std_logic_vector(15 downto 0));
	end component BitShifter;

	component ZeroAppender is port(
		data_in: in std_logic_vector(15 downto 0);
		data_out: out std_logic_vector(15 downto 0));
	end component ZeroAppender;

	component SignExtender6Bit is port(
	        data_in: in std_logic_vector(5 downto 0);
        	data_out: out std_logic_vector(15 downto 0));
	end component SignExtender6Bit;

	component SignExtender9Bit is port(
                data_in: in std_logic_vector(8 downto 0);
                data_out: out std_logic_vector(15 downto 0));
        end component SignExtender9Bit;

	component Multiplexer3bit2to1 is port(
	        in0: in std_logic_vector(2 downto 0);
        	in1: in std_logic_vector(2 downto 0);
	        sel: in std_logic;
        	sel_out: out std_logic_vector(2 downto 0));
	end component Multiplexer3bit2to1;

	component Multiplexer3bit4to1 is port(
	        in0: in std_logic_vector(2 downto 0);
        	in1: in std_logic_vector(2 downto 0);
	        in2: in std_logic_vector(2 downto 0);
        	in3: in std_logic_vector(2 downto 0);
	        sel: in std_logic_vector(1 downto 0);
        	sel_out: out std_logic_vector(2 downto 0));
	end component Multiplexer3bit4to1;

	component Multiplexer16bit2to1 is port(
	        in0: in std_logic_vector(15 downto 0);
        	in1: in std_logic_vector(15 downto 0);
	        sel: in std_logic;
        	sel_out: out std_logic_vector(15 downto 0
	end component Multiplexer16bit2to1;

	component Multiplexer16bit4to1 is port(
	        in0: in std_logic_vector(15 downto 0);
        	in1: in std_logic_vector(15 downto 0);
	        in2: in std_logic_vector(15 downto 0);
        	in3: in std_logic_vector(15 downto 0);
	        sel: in std_logic_vector(1 downto 0);
        	sel_out: out std_logic_vector(15 downto 0));
	end component Multiplexer16bit4to1;

	-- ROM signals
	signal rom_a: std_logic_vector(15 downto 0);
	signal instruction: std_logic_vector(15 downto 0);

	-- Register File select lines
	signal rf_a1_select: std_logic;
	signal rf_a2_select: std_logic;
	signal rf_a3_select: std_logic_vector(1 downto 0);
	signal rf_d3_select: std_logic_vector(1 downto 0);

	-- Register File signals
	signal rf_load: std_logic;
	signal rf_a1, rf_a2, rf_a3: std_logic_vector(2 downto 0);
	signal rf_d1, rf_d2, rf_d3: std_logic_vector(15 downto 0);
	signal pc_input, pc_output: std_logic_vector(15 downto 0);

	-- PC Update logic signals
	signal pc_add_select: std_logic_vector(1 downto 0);
	signal pc_updater: std_logic_vector(15 downto 0);
	signal pc_final_select: std_logic_vector(1 downto 0);
	signal pc_flags: std_logic_vector(1 downto 0);

	-- PC increment / PC + Imm6 / PC + Imm9
	signal pc_updated: std_logic_vector(15 downto 0);

	-- ALU signals
	signal alu_b_select: std_logic_vector(1 downto 0);
	signal alu_a, alu_b: std_logic_vector(15 downto 0);
	signal alu_c: std_logic_vector(15 downto 0);
	signal flags: std_logic_vector(1 downto 0);

	-- CC load signals
	signal z_load, c_load: std_logic;

	-- RAM signals
	signal ram_load: std_logic;
	signal ram_a: std_logic_vector(15 downto 0);
	signal ram_d_in: std_logic_vector(15 downto 0);
	signal ram_d_out: std_logic_vector(15 downto 0);

	-- Bit shifter signals
	signal shift_in, shift_out: std_logic_vector(15 downto 0);

	-- Zero appender signals
	signal za_in, za_out: std_logic_vector(15 downto 0);

	-- Sign extender 6-bit signals
	signal se6_in, se6_out: std_logic_vector(15 downto 0);

	-- Sign extender 9-bit signals
	signal se6_in, se9_out: std_logic_vector(15 downto 0);

begin
	control_select_process: process(clock, reset)
	begin
	end process;

	-- rom_a <= pc_output;
	rom_unit: ROM128 port map(
                address => pc_output,
                data => instruction);

	rf_a1_mux: Multiplexer3bit2to1 port map(
		in0 => instruction(11 downto 9),
		in1 => instruction(8 downto 6),
		sel => rf_a1_select,
		sel_out => rf_a1);
	
	rf_a2_mux: Multiplexer3bit2to1 port map(
                in0 => instruction(11 downto 9),
                in1 => instruction(8 downto 6),
                sel => rf_a2_select,
                sel_out => rf_a2);

	rf_a3_mux: Multiplexer3bit4to1 port map(
                in0 => instruction(5 downto 3),
                in1 => instruction(8 downto 6),
		in2 => instruction(11 downto 9),
                in3 => instruction(5 downto 3),
                sel => rf_a3_select,
                sel_out => rf_a3);

	rf_d3_mux: Multiplexer16bit4to1 port map(
                in0 => alu_c,
                in1 => za_out,
                in2 => ram_out,
                in3 => pc_plus_1,
                sel => rf_d3_select,
                sel_out => rf_d3);

	rf: RegisterBank port map(
                clock => clock,
                load => rf_load,
                address_in => rf_a3,
                data_in => rf_d3,
                address_out_1 => rf_a1,
                data_out_1 => rf_d1,
                address_out_2 => rf_a2,
                data_out_2 => rf_d2,
                pc_in: pc_input,
                pc_out: pc_out);
        end component RegisterBank;

	alu_b_mux: Multiplexer16bit4to1 port map(
                in0 => rf_d2,
                in1 => shift_out,
                in2 => se6_out,
                in3 => se9_out,
                sel => alu_b_select,
                sel_out => rf_d3);
	
	-- alu_a <= rf_d1;
	main_alu: ALU port map(
                A => rf_d1,
                B => alu_b,
                control_in => alu_select,
                C => alu_c,
                control_out => flags);

	-- cc_in <= flags;
	cc: FlagRegister port map(
                clock => clock,
                zero_load => z_load,
                carry_load => c_load,
                input => flags,
                output => cc_out);

	-- ram_a <= alu_c;
	-- ram_d_in <= rf_d2;
	ram_unit: RAM port map(
                clk => clock,
                write_enable => ram_load,
                address => ram_a,
                data_in => ram_d_in,
                data_out => ram_d_out);

	-- shift_in <= rf_d2;
	shifter: BitShifter port map(
		data_in => rf_d2,
		data_out => shift_out);

	-- za_in <= instruction(8 downto 0);
	za: ZeroAppender port map(
		data_in => instruction(8 downto 0),
		data_out => za_out);

	-- se6_in <= instruction(5 downto 0);
	se6: SignExtender6Bits port map(
		data_in => instruction(5 downto 0),
		data_out => se6_out);

 	-- se9_in <= instruction(8 downto 0);
	se9: SignExtender9Bits port map(
		data_in => instruction(8 downto 0),
		data_out => se9_out);

	pc_add_mux: Multiplexer16bit4to1 port map(
                in0 => "0000000000000001",
                in1 => se6_out,
                in2 => se9_out,
                in3 => "0000000000000001",
                sel => pc_add_select,
                sel_out => pc_updater);

	pc_final_mux: Multiplexer16bit4to1 port map(
                in0 => pc_updated,
                in1 => rf_d2,
                in2 => alu_c,
                in3 => pc_updated,
                sel => pc_final_select,
                sel_out => pc_in);

	-- Configured to always add
	adder: ALU port map(
                A => pc_out,
                B => pc_updater,
                control_in => "00",
                C => pc_updated,
                control_out => pc_flags);
end architecture run;
