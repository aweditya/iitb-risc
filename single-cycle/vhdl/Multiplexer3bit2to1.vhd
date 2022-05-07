LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Multiplexer3bit2to1 IS PORT (
	in0 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	in1 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	sel : IN STD_LOGIC;
	sel_out : OUT STD_LOGIC_VECTOR(2 DOWNTO 0));
END ENTITY Multiplexer3bit2to1;

ARCHITECTURE mux2to1_select OF Multiplexer3bit2to1 IS
BEGIN
	PROCESS (in0, in1, sel) IS
	BEGIN
		IF (sel = '0') THEN
			sel_out <= in0;
		ELSE
			sel_out <= in1;
		END IF;
	END PROCESS;
END ARCHITECTURE mux2to1_select;