LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Demultiplexer1to8 IS PORT (
	load : IN STD_LOGIC;
	address : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	selection_output : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
);
END ENTITY Demultiplexer1to8;

ARCHITECTURE selection OF Demultiplexer1to8 IS
BEGIN
	selection_process : PROCESS (load, address)
	BEGIN
		IF (load = '1') THEN
			CASE address IS
				WHEN "000" =>
					selection_output <= "00000001";
				WHEN "001" =>
					selection_output <= "00000010";
				WHEN "010" =>
					selection_output <= "00000100";
				WHEN "011" =>
					selection_output <= "00001000";
				WHEN "100" =>
					selection_output <= "00010000";
				WHEN "101" =>
					selection_output <= "00100000";
				WHEN "110" =>
					selection_output <= "01000000";
				WHEN "111" =>
					selection_output <= "10000000";
				WHEN OTHERS =>
					selection_output <= "00000000";
			END CASE;
		ELSE
			selection_output <= "00000000";
		END IF;
	END PROCESS;
END ARCHITECTURE selection;