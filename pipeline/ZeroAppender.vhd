LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY ZeroAppender IS PORT (
	data_in : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
	data_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
END ENTITY ZeroAppender;

ARCHITECTURE append OF ZeroAppender IS
BEGIN
	data_out(15 DOWNTO 7) <= data_in;
	data_out(6 DOWNTO 0) <= "0000000";
END ARCHITECTURE append;