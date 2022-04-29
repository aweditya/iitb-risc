library ieee;
use ieee.std_logic_1164.all;

entity ZeroAppender is port(
	data_in: in std_logic_vector(0 to 8);
	data_out: out std_logic_vector(0 to 15)
);
end entity ZeroAppender;

architecture append of ZeroAppender is
begin
	data_out(0 to 8) <= data_in;
	data_out(9 to 15) <= "0000000";
end architecture append;