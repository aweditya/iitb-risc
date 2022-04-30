library ieee;
use ieee.std_logic_1164.all;

entity Multiplexer3bit2to1 is port(
	in0: in std_logic_vector(2 downto 0);
	in1: in std_logic_vector(2 downto 0);
	sel: in std_logic;
	sel_out: out std_logic_vector(2 downto 0));
end entity Multiplexer3bit2to1;

architecture mux2to1_select of Multiplexer3bit2to1 is
begin
	process (in0, in1, sel) is 
	begin
		if (sel = '0') then
			sel_out <= in0;
		else 
			sel_out <= in1;
		end if;
	end process;
end architecture mux2to1_select;
