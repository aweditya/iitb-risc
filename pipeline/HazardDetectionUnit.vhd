library ieee;
use ieee.std_logic_1164.all;

entity HazardDetectionUnit is port (
	or_ex_opcode : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	or_ex_rf_a3 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);

	id_or_rf_a1 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	id_or_rf_a2 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);

	hazard_detected : OUT STD_LOGIC);
end entity HazardDetectionUnit;

architecture detect of HazardDetectionUnit is
begin
	-- Using active low logic because we can directly feed hazard detected to PC load and OR_EX load
	-- LHI is the only instruction that reads memory (ignore LW for the time being)
	hazard_detected <= '0' when ((or_ex_opcode = "0111") and ((or_ex_rf_a3 = id_or_rf_a1) or (or_ex_rf_a3 = id_or_rf_a2))) else '1';
end architecture detect;
