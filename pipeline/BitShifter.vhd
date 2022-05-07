LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY BitShifter IS PORT (
    data_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    data_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
END ENTITY BitShifter;

ARCHITECTURE shift OF BitShifter IS
BEGIN
    data_out(15 DOWNTO 1) <= data_in(14 DOWNTO 0);
    data_out(0) <= '0';
END ARCHITECTURE shift;