library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu_16 is
	generic(
        operand_width : integer:=16;
        control_bits : integer:=2
        );
	port (
        A: in std_logic_vector(0 to operand_width-1);
        B: in std_logic_vector(0 to operand_width-1);
        control_in: in std_logic_vector(0 to control_bits-1);
        C: out std_logic_vector(0 to operand_width-1);
	control_out: out std_logic_vector(0 to control_bits-1)
    ) ;
end entity alu_16;

architecture behavioural of alu_16 is

        --set zero flag
        function set_zero(C: std_logic_vector(operand_width-1 downto 0))
        return std_logic is
                variable j: integer;
                variable zero_check: std_logic := '0';
        begin
                zero_flag_calc: for j in 0 to operand_width-1 loop
                        zero_check := zero_check or C(j);
                end loop;
                zero_check := not zero_check;
                return zero_check;
        end set_zero;
        
        --add
	function add(A: in std_logic_vector(operand_width-1 downto 0); B: in std_logic_vector(operand_width-1 downto 0))
        return std_logic_vector is
	        variable sum: std_logic_vector(operand_width downto 0) := (others => '0');
		variable carry: std_logic := '0';
		variable i: integer;
        begin
		bitsum: for i in 0 to operand_width-1 loop
			sum(i) := (A(i) xor B(i)) xor carry;
			carry := (A(i) and B(i)) or (carry and (A(i) or B(i)));
		end loop;
                sum(operand_width) := carry;
            return sum;
        end add;
        
        --nand
	function nand_alu(A: in std_logic_vector(operand_width-1 downto 0); B: in std_logic_vector(operand_width-1 downto 0))
        return std_logic_vector is
	        variable result: std_logic_vector(operand_width-1 downto 0) := (others => '0');
		variable i: integer;
        begin
		bitnand: for i in 0 to operand_width-1 loop
			result(i) := (A(i) nand B(i));
		end loop;
            return result;
        end nand_alu;
        
        ---xor
        function xor_alu(A: in std_logic_vector(operand_width-1 downto 0); B: in std_logic_vector(operand_width-1 downto 0))
        return std_logic_vector is
	        variable result: std_logic_vector(operand_width-1 downto 0) := (others => '0');
		variable i: integer;
        begin
		bitxor: for i in 0 to operand_width-1 loop
			result(i) := (A(i) xor B(i));
		end loop;
            return result;
        end xor_alu;

begin
        alu: process(A, B, control_in)
                variable temp_op: std_logic_vector(operand_width downto 0) := (others => '0');
					 variable temp_op_2: std_logic_vector(operand_width-1 downto 0) := (others => '0');
        begin
                if (control_in = "00") then
                        temp_op := add(A,B);
                        temp_op_2 := temp_op(operand_width-1 downto 0);
								C <= temp_op_2;
                        control_out(1) <= temp_op(operand_width);
                        control_out(0) <= set_zero(temp_op_2);
                elsif (control_in  = "01") then
                        control_out(1) <= '0';
                        temp_op_2 := nand_alu(A,B);
                        control_out(0) <= set_zero(temp_op_2);
								C<=temp_op_2;
                elsif (control_in  = "10") then
                        temp_op_2 := xor_alu(A,B);
								C<= temp_op_2;
                        control_out(1) <= '0';
                        control_out(0) <= set_zero(temp_op_2);
                elsif (control_in  = "11") then
                        temp_op_2 := A; --none
								C<=A;
                        control_out(1) <= '0';
                        control_out(0) <= set_zero(temp_op_2);
                end if;
        end process ; -- alu

end behavioural;
