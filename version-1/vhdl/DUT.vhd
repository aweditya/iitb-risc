library ieee;
use ieee.std_logic_1164.all;

entity DUT is port(
   input_vector: in std_logic_vector(1 downto 0);
   output_vector: out std_logic_vector(15 downto 0)
);
end entity;

architecture DutWrap of DUT is
   component Datapath is port(
      clock: in std_logic;
      reset: in std_logic;
      dummyout: out std_logic_vector(15 downto 0)
);
end component Datapath;
	
begin
   add_instance: Datapath
   port map(
      clock => input_vector(1),
      reset => input_vector(0),
      dummyout => output_vector
   );
end DutWrap;