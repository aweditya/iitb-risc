LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY ALU IS
        GENERIC (
                operand_width : INTEGER := 16;
                control_bits : INTEGER := 2
        );
        PORT (
                A : IN STD_LOGIC_VECTOR(operand_width - 1 DOWNTO 0);
                B : IN STD_LOGIC_VECTOR(operand_width - 1 DOWNTO 0);
                control_in : IN STD_LOGIC_VECTOR(control_bits - 1 DOWNTO 0);
                C : OUT STD_LOGIC_VECTOR(operand_width - 1 DOWNTO 0);
                control_out : OUT STD_LOGIC_VECTOR(control_bits - 1 DOWNTO 0)
        );
END ENTITY ALU;

ARCHITECTURE behavioural OF ALU IS
        -- Set zero flag
        FUNCTION set_zero(C : STD_LOGIC_VECTOR(operand_width - 1 DOWNTO 0)) RETURN STD_LOGIC IS
                VARIABLE j : INTEGER;
                VARIABLE zero_check : STD_LOGIC := '0';
        BEGIN
                zero_flag_calc : FOR j IN 0 TO operand_width - 1 LOOP
                        zero_check := zero_check OR C(j);
                END LOOP;

                zero_check := NOT zero_check;
                RETURN zero_check;
        END set_zero;

        -- ADD
        FUNCTION add(A : IN STD_LOGIC_VECTOR(operand_width - 1 DOWNTO 0); B : IN STD_LOGIC_VECTOR(operand_width - 1 DOWNTO 0)) RETURN STD_LOGIC_VECTOR IS
                VARIABLE sum : STD_LOGIC_VECTOR(operand_width DOWNTO 0) := (OTHERS => '0');
                VARIABLE carry : STD_LOGIC := '0';
                VARIABLE i : INTEGER;
        BEGIN
                bitsum : FOR i IN 0 TO operand_width - 1 LOOP
                        sum(i) := (A(i) XOR B(i)) XOR carry;
                        carry := (A(i) AND B(i)) OR (carry AND (A(i) OR B(i)));
                END LOOP;

                sum(operand_width) := carry;
                RETURN sum;
        END add;

        -- NAND
        FUNCTION nand_alu(A : IN STD_LOGIC_VECTOR(operand_width - 1 DOWNTO 0); B : IN STD_LOGIC_VECTOR(operand_width - 1 DOWNTO 0)) RETURN STD_LOGIC_VECTOR IS
                VARIABLE result : STD_LOGIC_VECTOR(operand_width - 1 DOWNTO 0) := (OTHERS => '0');
                VARIABLE i : INTEGER;
        BEGIN
                bitnand : FOR i IN 0 TO operand_width - 1 LOOP
                        result(i) := (A(i) NAND B(i));
                END LOOP;

                RETURN result;
        END nand_alu;

        -- XOR
        FUNCTION xor_alu(A : IN STD_LOGIC_VECTOR(operand_width - 1 DOWNTO 0); B : IN STD_LOGIC_VECTOR(operand_width - 1 DOWNTO 0))
                RETURN STD_LOGIC_VECTOR IS
                VARIABLE result : STD_LOGIC_VECTOR(operand_width - 1 DOWNTO 0) := (OTHERS => '0');
                VARIABLE i : INTEGER;
        BEGIN
                bitxor : FOR i IN 0 TO operand_width - 1 LOOP
                        result(i) := (A(i) XOR B(i));
                END LOOP;
                RETURN result;
        END xor_alu;

BEGIN
        alu : PROCESS (A, B, control_in)
                VARIABLE temp_op : STD_LOGIC_VECTOR(operand_width DOWNTO 0) := (OTHERS => '0');
                VARIABLE temp_op_2 : STD_LOGIC_VECTOR(operand_width - 1 DOWNTO 0) := (OTHERS => '0');
        BEGIN
                IF (control_in = "00") THEN
                        temp_op := add(A, B);
                        temp_op_2 := temp_op(operand_width - 1 DOWNTO 0);
                        C <= temp_op_2;
                        control_out(0) <= temp_op(operand_width);
                        control_out(1) <= set_zero(temp_op_2);

                ELSIF (control_in = "01") THEN
                        temp_op_2 := nand_alu(A, B);
                        C <= temp_op_2;
                        control_out(0) <= '0';
                        control_out(1) <= set_zero(temp_op_2);

                ELSIF (control_in = "10") THEN
                        temp_op_2 := xor_alu(A, B);
                        C <= temp_op_2;
                        control_out(0) <= '0';
                        control_out(1) <= set_zero(temp_op_2);

                ELSIF (control_in = "11") THEN
                        temp_op_2 := A; --none
                        C <= A;
                        control_out(0) <= '0';
                        control_out(1) <= set_zero(temp_op_2);

                END IF;
        END PROCESS alu;
END behavioural;