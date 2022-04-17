library ieee;
use ieee.std_logic_1164.all;

entity sign_extender_6bit is port(
	data_in: in std_logic_vector(0 to 15); 
	data_out: out std_logic_vector(0 to 15)
);
end entity sign_extender_6bit;

architecture shift of sign_extender_6bit is
begin
	data_out(1 to 15) <= data_in(0 to 14);
	data_out(0) <= '0';
end architecture shift;