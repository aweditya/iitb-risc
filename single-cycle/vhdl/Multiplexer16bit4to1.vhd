LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Multiplexer16bit4to1 IS PORT (
	in0 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	in1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	in2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	in3 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
	sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	sel_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
END ENTITY Multiplexer16bit4to1;

ARCHITECTURE mux4to1_select OF Multiplexer16bit4to1 IS
BEGIN
	PROCESS (in0, in1, in2, in3, sel) IS
	BEGIN
		IF (sel = "00") THEN
			sel_out <= in0;
		ELSIF (sel = "01") THEN
			sel_out <= in1;
		ELSIF (sel = "10") THEN
			sel_out <= in2;
		ELSE
			sel_out <= in3;
		END IF;
	END PROCESS;
END ARCHITECTURE mux4to1_select;