library ieee;
use ieee.std_logic_1164.all;

entity register2bit is port( 
	clock: in std_logic;
	load: in std_logic; 
	input: in std_logic_vector(0 to 1);
	output : out std_logic_vector(0 to 1)
);
end entity register2bit;

architecture behaviour of register2bit is
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