library ieee;
use ieee.std_logic_1164.all;

entity BitShifter is port(
    data_in: in std_logic_vector(15 downto 0);
    data_out: out std_logic_vector(15 downto 0));
end entity BitShifter;

architecture shift of BitShifter is
begin
    data_out(15 downto 1) <= data_in(14 downto 0);
    data_out(0) <= '0';
end architecture shift;
