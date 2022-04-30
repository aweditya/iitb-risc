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


	-- ROM signal
	signal rom_a: std_logic_vector(15 downto 0);

	-- Register File signal
	signal rf_a1, rf_a2, rf_a3: std_logic_vector(2 downto 0);
	signal rf_d3, pc_input: std_logic_vector(15 downto 0);

	-- PC increment signal
	signal pc_plus_1: std_logic_vector(15 downto 0);

	-- PC + Imm6 / PC + Imm9 signal
	signal pc_plus_imm: std_logic_vector(15 downto 0);

	-- ALU B signal
	signal alu_b: std_logic_vector(15 downto 0);


begin
	control_select_process: process(clock, reset)
	begin
	end process;
end architecture run;
