library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity alu_16 is
	generic(
        operand_width : integer:=16;
        control_bits : integer:=2
        );
	port (
        A: in std_logic_vector(operand_width-1 downto 0);
        B: in std_logic_vector(operand_width-1 downto 0);
        control_in: in std_logic_vector(control_bits-1 downto 0);
        C: out std_logic_vector(operand_width-1 downto 0)
		  control_out: out std_logic_vector(control_bits-1 downto 0);
    ) ;
end entity alu_16

architecture behavioural of alu_16 is
	function add(A: in std_logic_vector(operand_width-1 downto 0); B: in std_logic_vector(operand_width-1 downto 0))
        return std_logic_vector is
	        variable sum: std_logic_vector(operand_width-1 downto 0) := (others => '0');
		variable carry: std_logic := '0';
		variable i: integer;
        begin
		bitsum: for i in 0 to operand_width-1 loop
			sum(i) := (A(i) xor B(i)) xor carry;
			carry := (A(i) and B(i)) or (carry and (A(i) or B(i)));
		end loop;
            return sum;
        end add;

	function nand_alu(A: in std_logic_vector(operand_width-1 downto 0); B: in std_logic_vector(operand_width-1 downto 0))
        return std_logic_vector is
	        variable result: std_logic_vector(operand_width-1 downto 0) := (others => '0');
		variable i: integer;
        begin
		bitsum: for i in 0 to operand_width-1 loop
			result(i) := (A(i) nand B(i));
		end loop;
            return result;
        end nand_alu;

        function xor_alu(A: in std_logic_vector(operand_width-1 downto 0); B: in std_logic_vector(operand_width-1 downto 0))
        return std_logic_vector is
	        variable result: std_logic_vector(operand_width-1 downto 0) := (others => '0');
		variable i: integer;
        begin
		bitsum: for i in 0 to operand_width-1 loop
			result(i) := (A(i) xor B(i));
		end loop;
            return result;
        end xor_alu;

begin
        alu: process(A, B, control_in)

        begin
                

end behavioural