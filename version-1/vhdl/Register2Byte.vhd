library ieee;
use ieee.std_logic_1164.all;

entity Register2Byte is port( 
	clock: in std_logic;
	load: in std_logic; 
	input: in std_logic_vector(15 downto 0);
	output: out std_logic_vector(15 downto 0)
);
end entity Register2Byte;

architecture behaviour of Register2Byte is
begin
	register_process : process(clock, load)
	begin
		if (falling_edge(clock)) then
			if load = '1' then
				output <= input;
			end if;
		end if;
	end process;
end behaviour;