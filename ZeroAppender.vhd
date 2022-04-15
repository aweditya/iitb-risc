library ieee;
use ieee.std_logic_1164.all;

entity zero-appender is port(
	data_in: in std_logic_vector(0 to 8);
	data_out: out std_logic_vector(0 to 15)
);
end entity zero-appender;

architecture append of zero-appender is
begin
	data_out(0 to 8) => data_in;
	data_out(9 to 15) => "0000000"
end architecture append;