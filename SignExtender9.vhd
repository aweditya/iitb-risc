library ieee;
use ieee.std_logic_1164.all;

entity sign_extender_9bit is port(
	data_in: in std_logic_vector(0 to 8); 
	data_out: out std_logic_vector(0 to 15)
);
end entity sign_extender_9bit;

architecture extend of sign_extender_9bit is
begin
	data_out(0 to 8) <= data_in;
	data_out(9) <= data_in(8);
	data_out(10) <= data_in(8);
	data_out(11) <= data_in(8);
	data_out(12) <= data_in(8);
	data_out(13) <= data_in(8);
	data_out(14) <= data_in(8);
	data_out(15) <= data_in(8);
end architecture extend;