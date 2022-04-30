library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity RAM is port(
	clk: in std_logic;
	write_enable: in std_logic;
	address: in std_logic_vector(15 downto 0);     -- RAM address
	data_in: in std_logic_vector(15 downto 0);     -- Write data
	data_out: out std_logic_vector(15 downto 0)    -- Read data
);
end entity RAM;

architecture behaviour of RAM is
	subtype word is std_logic_vector(7 downto 0);       -- Define size of each RAM cell
	type memory is array(0 to 2**8 - 1) of word;        -- Define size of memory (PC is 16-bit so 2**16 addresses but 2**17 memory cells)
	signal RAM128: memory := (
		others => x"00"
	);                              
	
begin
	ram_process: process(clk, write_enable, address, data_in, RAM128)
		variable ram_address_in : natural range 0 to 2**7 - 1;                   -- Store address as an integer
		
	begin
		ram_address_in := to_integer(unsigned(address(6 downto 0)));             -- Translation to integer
		if (falling_edge(clk)) then
			if (write_enable='1') then
				RAM128(2*ram_address_in+1) <= data_in(15 downto 8);      -- Since our memory cells are only 8-bit
				RAM128(2*ram_address_in) <= data_in(7 downto 0);             
			end if;
		end if;
		data_out(15 downto 8) <= RAM128(2*ram_address_in+1);
		data_out(7 downto 0) <= RAM128(2*ram_address_in);
	end process;
end architecture behaviour;
