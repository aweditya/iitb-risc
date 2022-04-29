library ieee;
use ieee.std_logic_1164.all;

entity Demultiplexer1to8 is port(
	load: in std_logic;
	address: in std_logic_vector(0 to 2);
	selection_output: out std_logic_vector(0 to 7)
);
end entity Demultiplexer1to8;

architecture selection of Demultiplexer1to8 is
begin
	selection_process: process(load, address)
	begin
		if (load = '1') then
			case address is
				when "000" => 
					selection_output <= "10000000";
				when "100" => 
					selection_output <= "01000000";
				when "010" => 
					selection_output <= "00100000";
				when "110" => 
					selection_output <= "00010000";
				when "001" => 
					selection_output <= "00001000";
				when "101" => 
					selection_output <= "00000100";
				when "011" => 
					selection_output <= "00000010";
				when "111" => 
					selection_output <= "00000001";
				when others =>
					selection_output <= "00000000";
			end case;
		end if;
	end process;
end architecture selection;