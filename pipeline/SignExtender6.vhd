LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY SignExtender6Bit IS PORT (
	data_in : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
	data_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
);
END ENTITY SignExtender6Bit;

ARCHITECTURE extend9Bits OF SignExtender6Bit IS
BEGIN
	data_out(15) <= data_in(5);
	data_out(14) <= data_in(5);
	data_out(13) <= data_in(5);
	data_out(12) <= data_in(5);
	data_out(11) <= data_in(5);
	data_out(10) <= data_in(5);
	data_out(9) <= data_in(5);
	data_out(8) <= data_in(5);
	data_out(7) <= data_in(5);
	data_out(6) <= data_in(5);
	data_out(5 DOWNTO 0) <= data_in;
END ARCHITECTURE extend9Bits;