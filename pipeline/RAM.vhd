LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY RAM IS PORT (
	clk : IN STD_LOGIC;
	write_enable : IN STD_LOGIC;
	address : IN STD_LOGIC_VECTOR(15 DOWNTO 0); -- RAM address
	data_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0); -- Write data
	data_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0) -- Read data
);
END ENTITY RAM;

ARCHITECTURE behaviour OF RAM IS
	SUBTYPE word IS STD_LOGIC_VECTOR(7 DOWNTO 0); -- Define size of each RAM cell
	TYPE memory IS ARRAY(0 TO 2 ** 8 - 1) OF word; -- Define size of memory (PC is 16-bit so 2**16 addresses but 2**17 memory cells)
	SIGNAL RAM128 : memory := (
		OTHERS => x"00"
	);

BEGIN
	ram_process : PROCESS (clk, write_enable, address, data_in, RAM128)
		VARIABLE ram_address_in : NATURAL RANGE 0 TO 2 ** 7 - 1; -- Store address as an integer

	BEGIN
		ram_address_in := to_integer(unsigned(address(6 DOWNTO 0))); -- Translation to integer
		IF (falling_edge(clk)) THEN
			IF (write_enable = '1') THEN
				RAM128(2 * ram_address_in + 1) <= data_in(15 DOWNTO 8); -- Since our memory cells are only 8-bit
				RAM128(2 * ram_address_in) <= data_in(7 DOWNTO 0);
			END IF;
		END IF;
		data_out(15 DOWNTO 8) <= RAM128(2 * ram_address_in + 1);
		data_out(7 DOWNTO 0) <= RAM128(2 * ram_address_in);
	END PROCESS;
END ARCHITECTURE behaviour;