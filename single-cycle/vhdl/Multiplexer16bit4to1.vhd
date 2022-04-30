library ieee;
use ieee.std_logic_1164.all;

entity Multiplexer16bit4to1 is port(
	in0: in std_logic_vector(15 downto 0);
	in1: in std_logic_vector(15 downto 0);
	in2: in std_logic_vector(15 downto 0);
	in3: in std_logic_vector(15 downto 0);
	sel: in std_logic_vector(1 downto 0);
	sel_out: out std_logic_vector(15 downto 0));
end entity Multiplexer16bit4to1;

architecture mux4to1_select of Multiplexer16bit4to1 is
begin
	process (in0, in1, in2, in3, sel) is 
	begin
		if (sel = "00") then
			sel_out <= in0;
		elsif (sel = "01") then
			sel_out <= in1;
		elsif (sel = "10") then
			sel_out <= in2;
		else 
			sel_out <= in3;
		end if;
	end process;
end architecture mux4to1_select;
