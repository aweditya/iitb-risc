library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RAM is port(
	write_enable: in std_logic;
	address: in std_logic_vector(0 to 15);     -- RAM address
	data_in: in std_logic_vector(0 to 15);     -- Write data
	data_out: out std_logic_vector(0 to 15)    -- Read data
);
end entity RAM;

architecture behaviour of RAM is
	subtype word is std_logic_vector(0 to 7);       -- Define size of each RAM cell
	type memory is array(0 to 2**17 - 1) of word;   -- Define size of memory (PC is 16-bit so 2**16 addresses but 2**17 memory cells)
	signal RAM65K: memory;                          -- 65K RAM
begin
	ram_process: process(write_enable, address, data_in)
		variable ram_address_in : natural range 0 to 2**16 - 1;     -- Store address as an integer
	begin
		ram_address_in := to_integer(unsigned(address));            -- Translation to integer
		if (write_enable='1') then
			RAM65K(2*ram_address_in) <= data_in(0 to 7);             -- Since our memory cells are only 8-bit
			RAM65K(2*ram_address_in+1) <= data_in(8 to 15);
		end if;
		data_out(0 to 7) <= RAM65K(2*ram_address_in);
		data_out(8 to 15) <= RAM65K(2*ram_address_in+1);
	end process;
end architecture behaviour;