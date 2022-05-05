LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Counter IS PORT (
	clock : IN STD_LOGIC;
	clear : IN STD_LOGIC;
	increment : IN STD_LOGIC;
	output : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
);
END ENTITY Counter;

ARCHITECTURE count OF Counter IS
	TYPE state IS (c0, c1, c2, c3, c4, c5, c6, c7);
	SIGNAL present_state, next_state : state := c0;
BEGIN
	-- State update on falling clock edge
	clock_process : PROCESS (clock, clear)
	BEGIN
		IF (clear = '1') THEN
			present_state <= c0;
		ELSIF (falling_edge(clock)) THEN
			present_state <= next_state;
		END IF;
	END PROCESS clock_process;

	counting_process : PROCESS (clock, present_state, increment)
	BEGIN
		CASE present_state IS
			WHEN c0 =>
				IF (increment = '1') THEN
					next_state <= c1;
				ELSE
					next_state <= c0;
				END IF;
				output <= "000";

			WHEN c1 =>
				IF (increment = '1') THEN
					next_state <= c2;
				ELSE
					next_state <= c1;
				END IF;
				output <= "001";

			WHEN c2 =>
				IF (increment = '1') THEN
					next_state <= c3;
				ELSE
					next_state <= c2;
				END IF;
				output <= "010";

			WHEN c3 =>
				IF (increment = '1') THEN
					next_state <= c4;
				ELSE
					next_state <= c3;
				END IF;
				output <= "011";

			WHEN c4 =>
				IF (increment = '1') THEN
					next_state <= c5;
				ELSE
					next_state <= c4;
				END IF;
				output <= "100";

			WHEN c5 =>
				IF (increment = '1') THEN
					next_state <= c6;
				ELSE
					next_state <= c5;
				END IF;
				output <= "101";

			WHEN c6 =>
				IF (increment = '1') THEN
					next_state <= c7;
				ELSE
					next_state <= c6;
				END IF;
				output <= "110";

			WHEN c7 =>
				IF (increment = '1') THEN
					next_state <= c0;
				ELSE
					next_state <= c7;
				END IF;
				output <= "111";
				
		END CASE;
	END PROCESS;
END count;