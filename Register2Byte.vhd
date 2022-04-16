library ieee;
use ieee.std_logic_1164.all;

entity register2byte is port( 
	clock: in std_logic;
	load: in std_logic; 
	input: in std_logic_vector(0 to 15);
	output : out std_logic_vector(0 to 15)
);
end entity register2byte;

architecture behaviour of register2byte is
begin
	register_process : process(load, clock)
	begin
		if (falling_edge(clock)) then
			if load = '1' then
				output <= input;
			end if;
		end if;
	end process;
end behaviour;