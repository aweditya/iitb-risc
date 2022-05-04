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
		data_in: in std_logic_vector(8 downto 0);
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
		sel_out: out std_logic_vector(15 downto 0));
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

	-- PC increment signal
	signal pc_increment_flags: std_logic_vector(1 downto 0);
	signal pc_plus_1: std_logic_vector(15 downto 0);

	-- PC + imm6 / PC + imm9 signal
	signal pc_plus_imm_flags: std_logic_vector(1 downto 0);
	signal pc_plus_imm: std_logic_vector(15 downto 0);

	-- PC Update control signals
	signal imm_select: std_logic;
	signal pc_imm: std_logic_vector(15 downto 0);
	signal pc_final_select: std_logic_vector(1 downto 0);

	-- ALU signals
	signal alu_b_select: std_logic_vector(1 downto 0);
	signal alu_a, alu_b: std_logic_vector(15 downto 0);
	signal alu_c: std_logic_vector(15 downto 0);
	signal alu_select: std_logic_vector(1 downto 0);
	signal flags: std_logic_vector(1 downto 0);

	-- CC load signals
	signal z_load, c_load: std_logic;
	signal cc_out: std_logic_vector(1 downto 0);

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
	signal se9_in, se9_out: std_logic_vector(15 downto 0);

begin
	control_select_process: process(clock, reset, instruction, cc_out, flags)
	begin
		case instruction(15 downto 12) is
			when "0001" =>
				-- ADD, ADC, ADZ, ADL
				case instruction(1 downto 0) is
					when "00" =>
						-- ADD
						rf_a1_select <= '0';
						rf_a2_select <= '1';
						rf_a3_select <= "00";
						rf_d3_select <= "00";
						alu_b_select <= "00";
						imm_select <= '0';                  	-- Can be anything since PC should be incremented
						pc_final_select <= "00";
						alu_select <= "00";						-- 00 is for addition
						rf_load <= '1';
						ram_load <= '0';
						z_load <= '1';
						c_load <= '1';

					when "01" =>
						-- ADC
						if (cc_out(0) = '1') then
							rf_a1_select <= '0';
							rf_a2_select <= '1';
							rf_a3_select <= "00";
							rf_d3_select <= "00";
							alu_b_select <= "00";
							imm_select <= '0';                  -- Can be anything since PC should be incremented
							pc_final_select <= "00";
							alu_select <= "00";					-- 00 is for addition
							rf_load <= '1';
							ram_load <= '0';
							z_load <= '1';
							c_load <= '1';

						else
							rf_a1_select <= '0';				-- Can be anything since carry is not set
							rf_a2_select <= '1';				-- Can be anything since carry is not set
							rf_a3_select <= "00";				-- Can be anything since carry is not set
							rf_d3_select <= "00";				-- Can be anything since carry is not set
							alu_b_select <= "00";				-- Can be anything since carry is not set
							imm_select <= '0';                  -- Can be anything since PC should be incremented
							pc_final_select <= "00";
							alu_select <= "00";					-- 00 is for addition
							rf_load <= '0';
							ram_load <= '0';
							z_load <= '0';
							c_load <= '0';
							end if;

					when "10" =>
						-- ADZ
						if (cc_out(1) = '1') then
							rf_a1_select <= '0';
							rf_a2_select <= '1';
							rf_a3_select <= "00";
							rf_d3_select <= "00";
							alu_b_select <= "00";
							imm_select <= '0';                  -- Can be anything since PC should be incremented
							pc_final_select <= "00";
							alu_select <= "00";					-- 00 is for addition
							rf_load <= '1';
							ram_load <= '0';
							z_load <= '1';
							c_load <= '1';

						else
							rf_a1_select <= '0';				-- Can be anything since zero is not set
							rf_a2_select <= '1';				-- Can be anything since zero is not set
							rf_a3_select <= "00";				-- Can be anything since zero is not set
							rf_d3_select <= "00";				-- Can be anything since zero is not set
							alu_b_select <= "00";				-- Can be anything since zero is not set
							imm_select <= '0';                  -- Can be anything since PC should be incremented
							pc_final_select <= "00";
							alu_select <= "00";					-- 00 is for addition
							rf_load <= '0';
							ram_load <= '0';
							z_load <= '0';
							c_load <= '0';
							end if;

					when "11" =>
						-- ADL
						rf_a1_select <= '0';
						rf_a2_select <= '1';
						rf_a3_select <= "00";
						rf_d3_select <= "00";
						alu_b_select <= "01";
						imm_select <= '0';                  	-- Can be anything since PC should be incremented
						pc_final_select <= "00";
						alu_select <= "00";
						rf_load <= '1';
						ram_load <= '0';
						z_load <= '1';
						c_load <= '1';

					when others =>
						-- Default behaviour (shouldn't really arise)
						rf_a1_select <= '0';
						rf_a2_select <= '1';
						rf_a3_select <= "00";
						rf_d3_select <= "00";
						alu_b_select <= "00";
						imm_select <= '0';                  	-- Can be anything since PC should be incremented
						pc_final_select <= "00";
						alu_select <= "00";
						rf_load <= '0';
						ram_load <= '0';
						z_load <= '0';
						c_load <= '0';
					end case;

			when "0000" =>
				-- ADI
				rf_a1_select <= '0';
				rf_a2_select <= '1';							-- Can be anything because you're adding immediate data
				rf_a3_select <= "01";
				rf_d3_select <= "00";
				alu_b_select <= "10";
				imm_select <= '0';								-- Can be anything since PC should be incremented
				pc_final_select <= "00";
				alu_select <= "00";								-- 00 is for addition
				rf_load <= '1';
				ram_load <= '0';
				z_load <= '1';
				c_load <= '1';

			when "0010" =>
				-- NDU, NDC, NDZ
				case instruction(1 downto 0) is
					when "00" =>
						-- NDU
						rf_a1_select <= '0';
						rf_a2_select <= '1';
						rf_a3_select <= "00";
						rf_d3_select <= "00";
						alu_b_select <= "00";
						imm_select <= '0';                  	-- Can be anything since PC should be incremented
						pc_final_select <= "00";
						alu_select <= "01";						-- 01 is for NAND
						rf_load <= '1';
						ram_load <= '0';
						z_load <= '1';
						c_load <= '0';

					when "01" =>
						-- NDC
						if (cc_out(0) = '1') then
							rf_a1_select <= '0';
							rf_a2_select <= '1';
							rf_a3_select <= "00";
							rf_d3_select <= "00";
							alu_b_select <= "00";
							imm_select <= '0';                  -- Can be anything since PC should be incremented
							pc_final_select <= "00";
							alu_select <= "01";					-- 01 is for NAND
							rf_load <= '1';
							ram_load <= '0';
							z_load <= '1';
							c_load <= '0';

						else
							rf_a1_select <= '0';				-- Can be anything since carry is not set
							rf_a2_select <= '1';				-- Can be anything since carry is not set
							rf_a3_select <= "00";				-- Can be anything since carry is not set
							rf_d3_select <= "00";				-- Can be anything since carry is not set
							alu_b_select <= "00";				-- Can be anything since carry is not set
							imm_select <= '0';                  -- Can be anything since PC should be incremented
							pc_final_select <= "00";
							alu_select <= "01";					-- 01 is for NAND
							rf_load <= '0';
							ram_load <= '0';
							z_load <= '0';
							c_load <= '0';
							end if;

					when "10" =>
						-- NDZ
						if (cc_out(1) = '1') then
							rf_a1_select <= '0';
							rf_a2_select <= '1';
							rf_a3_select <= "00";
							rf_d3_select <= "00";
							alu_b_select <= "00";
							imm_select <= '0';                  -- Can be anything since PC should be incremented
							pc_final_select <= "00";
							alu_select <= "01";					-- 01 is for NAND
							rf_load <= '1';
							ram_load <= '0';
							z_load <= '1';
							c_load <= '0';

						else
							rf_a1_select <= '0';				-- Can be anything since zero is not set
							rf_a2_select <= '1';				-- Can be anything since zero is not set
							rf_a3_select <= "00";				-- Can be anything since zero is not set
							rf_d3_select <= "00";				-- Can be anything since zero is not set
							alu_b_select <= "00";				-- Can be anything since zero is not set
							imm_select <= '0';                  -- Can be anything since PC should be incremented
							pc_final_select <= "00";
							alu_select <= "01";					-- 01 is for NAND
							rf_load <= '0';
							ram_load <= '0';
							z_load <= '0';
							c_load <= '0';
							end if;

					when others =>
						-- Default behaviour (shouldn't really arise)
						rf_a1_select <= '0';
						rf_a2_select <= '1';
						rf_a3_select <= "00";
						rf_d3_select <= "00";
						alu_b_select <= "00";
						imm_select <= '0';                  	-- Can be anything since PC should be incremented
						pc_final_select <= "00";
						alu_select <= "01";
						rf_load <= '0';
						ram_load <= '0';
						z_load <= '0';
						c_load <= '0';
					end case;

			when "0011" =>
				-- LHI
				rf_a1_select <= '0';							-- Can be anything since the ALU is not used in LHI
				rf_a2_select <= '1';							-- Can be anything since the ALU is not used in LHI
				rf_a3_select <= "10";							
				rf_d3_select <= "01";
				alu_b_select <= "00";							-- Can be anything since the ALU is not used in LHI
				imm_select <= '0';                  			-- Can be anything since PC should be incremented
				pc_final_select <= "00";
				alu_select <= "00";								-- Can be anything since the ALU is not used in LHI
				rf_load <= '1';
				ram_load <= '0';
				z_load <= '0';
				c_load <= '0';

			when "0111" =>
				-- LW
				rf_a1_select <= '1';							
				rf_a2_select <= '0';							-- Can be anything since immediate data is used
				rf_a3_select <= "10";							
				rf_d3_select <= "10";
				alu_b_select <= "10";							
				imm_select <= '0';                  			-- Can be anything since PC should be incremented
				pc_final_select <= "00";
				alu_select <= "00";								-- 00 is for addition
				rf_load <= '1';
				ram_load <= '0';
				z_load <= '1';
				c_load <= '0';

			when "0101" =>
				-- SW
				rf_a1_select <= '1';							
				rf_a2_select <= '0';							
				rf_a3_select <= "10";							-- Can be anything since we don't write back into the register file
				rf_d3_select <= "10";							-- Can be anything since we don't write back into the register file
				alu_b_select <= "10";							
				imm_select <= '0';                  			-- Can be anything since PC should be incremented
				pc_final_select <= "00";
				alu_select <= "00";								-- 00 is for addition
				rf_load <= '0';
				ram_load <= '1';
				z_load <= '0';
				c_load <= '0';

			when "1000" =>
				-- BEQ
				rf_a1_select <= '0';							
				rf_a2_select <= '1';							
				rf_a3_select <= "00";							-- Can be anything since we don't write back into the register file
				rf_d3_select <= "00";							-- Can be anything since we don't write back into the register file
				alu_b_select <= "00";							
				imm_select <= '0';                  			-- Needs to be 0 to compute PC + Imm6

				if (flags(1) = '1') then
					pc_final_select <= "01";
				else 
					pc_final_select <= "00";
					end if;

				alu_select <= "10";								-- 10 is for XOR
				rf_load <= '0';
				ram_load <= '0';
				z_load <= '0';
				c_load <= '0';

			when "1001" =>
				-- JAL
				rf_a1_select <= '0';							-- Can be anything since we don't write back into the register file
				rf_a2_select <= '1';							-- Can be anything since we don't write back into the register file
				rf_a3_select <= "10";							-- 10 corresponds to Register RA
				rf_d3_select <= "11";							-- 11 corresponds to PC + 1
				alu_b_select <= "10";							-- Can be anything since ALU is not used
				imm_select <= '1';
				pc_final_select <= "01";
				alu_select <= "10";								-- Can be anything since ALU is not used
				rf_load <= '1';
				ram_load <= '0';
				z_load <= '0';
				c_load <= '0';

			when "1010" =>
				-- JLR
				rf_a1_select <= '0';							-- Can be anything since we don't write back into the register file
				rf_a2_select <= '1';							
				rf_a3_select <= "10";							-- 10 corresponds to Register RA
				rf_d3_select <= "11";							-- 11 corresponds to PC + 1
				alu_b_select <= "10";							-- Can be anything since ALU is not used
				imm_select <= '1';								-- Can be anything since you branch to address RB
				pc_final_select <= "10";
				alu_select <= "10";								-- Can be anything since ALU is not used
				rf_load <= '1';
				ram_load <= '0';
				z_load <= '0';
				c_load <= '0';

			when "1011" =>
				-- JRI
				rf_a1_select <= '0';							
				rf_a2_select <= '1';							
				rf_a3_select <= "10";							-- Can be anything since we don't write back into the register file
				rf_d3_select <= "11";							-- Can be anything since we don't write back into the register file
				alu_b_select <= "11";							
				imm_select <= '1';								-- 1 corresponds to Imm9
				pc_final_select <= "11";
				alu_select <= "00";								-- ALU should add
				rf_load <= '0';
				ram_load <= '0';
				z_load <= '0';
				c_load <= '0';

			when others =>
				-- For the time being, just increment the PC
				rf_a1_select <= '0';							
				rf_a2_select <= '1';							
				rf_a3_select <= "00";							
				rf_d3_select <= "00";							
				alu_b_select <= "00";							
				imm_select <= '0';								
				pc_final_select <= "00";
				alu_select <= "00";								
				rf_load <= '0';
				ram_load <= '0';
				z_load <= '0';
				c_load <= '0';

			end case;
	end process;

	test_out <= rf_d3; 
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
		in2 => ram_d_out,
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
		pc_in => pc_input,
		pc_out => pc_output);

	alu_b_mux: Multiplexer16bit4to1 port map(
		in0 => rf_d2,
		in1 => shift_out,
		in2 => se6_out,
		in3 => se9_out,
		sel => alu_b_select,
		sel_out => alu_b);
	
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
		address => alu_c,
		data_in => rf_d2,
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
	se6: SignExtender6Bit port map(
		data_in => instruction(5 downto 0),
		data_out => se6_out);

 	-- se9_in <= instruction(8 downto 0);
	se9: SignExtender9Bit port map(
		data_in => instruction(8 downto 0),
		data_out => se9_out);

	-- Configured to always add (specifically increment)
	incrementer: ALU port map(
		A => pc_output,
		B => "0000000000000001",
		control_in => "00",
		C => pc_plus_1,
		control_out => pc_increment_flags);

	pc_plus_imm_mux: Multiplexer16bit2to1 port map(
		in0 => se6_out,
		in1 => se9_out,
		sel => imm_select,
		sel_out => pc_imm);

	-- Configured to always add
	adder: ALU port map(
		A => pc_output,
		B => pc_imm,
		control_in => "00",
		C => pc_plus_imm,
		control_out => pc_plus_imm_flags);

	pc_final_mux: Multiplexer16bit4to1 port map(
		in0 => pc_plus_1,
		in1 => pc_plus_imm,
		in2 => rf_d2,
		in3 => alu_c,
		sel => pc_final_select,
		sel_out => pc_input);

end architecture run;
