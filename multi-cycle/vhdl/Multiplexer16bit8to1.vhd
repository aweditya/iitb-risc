LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Multiplexer16bit8to1 IS PORT (
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
END ENTITY Multiplexer16bit8to1;

ARCHITECTURE mux8to1_select OF Multiplexer16bit8to1 IS
BEGIN
	PROCESS (in0, in1, in2, in3, in4, in5, in6, in7, sel) IS
	BEGIN
		IF (sel = "000") THEN
			sel_out <= in0;
		ELSIF (sel = "001") THEN
			sel_out <= in1;
		ELSIF (sel = "010") THEN
			sel_out <= in2;
		ELSIF (sel = "011") THEN
			sel_out <= in3;
		ELSIF (sel = "100") THEN
			sel_out <= in4;
		ELSIF (sel = "101") THEN
			sel_out <= in5;
		ELSIF (sel = "110") THEN
			sel_out <= in6;
		ELSE
			sel_out <= in7;
		END IF;
	END PROCESS;
END ARCHITECTURE mux8to1_select;