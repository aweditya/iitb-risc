library ieee;
use ieee.std_logic_1164.all;

entity FlagRegister is port( 
	clock: in std_logic;
	zero_load: in std_logic; 
	carry_load: in std_logic;
	input: in std_logic_vector(1 downto 0);
	output : out std_logic_vector(1 downto 0)
);
end entity FlagRegister;

architecture behaviour of FlagRegister is
begin
	register_process : process(zero_load, carry_load, clock)
	begin
		if (falling_edge(clock)) then
			if zero_load = '1' then
				output(1) <= input(1);
			end if;
			
			if carry_load = '1' then
				output(0) <= input(0);
			end if;
		end if;
	end process;
end behaviour;