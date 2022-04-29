library ieee;
use ieee.std_logic_1164.all;

entity ZeroAppender is port(
	data_in: in std_logic_vector(8 downto 0);
	data_out: out std_logic_vector(15 downto 0)
);
end entity ZeroAppender;

architecture append of ZeroAppender is
begin
	data_out(15 downto 7) <= data_in;
	data_out(6 downto 0) <= "0000000";
end architecture append;