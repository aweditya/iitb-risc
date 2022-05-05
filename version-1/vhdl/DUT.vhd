LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY DUT IS PORT (
   input_vector : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
   output_vector : OUT STD_LOGIC_VECTOR(20 DOWNTO 0)
);
END ENTITY;

ARCHITECTURE DutWrap OF DUT IS
   COMPONENT Datapath IS PORT (
      clock : IN STD_LOGIC;
      reset : IN STD_LOGIC;
      state_identifier : OUT STD_LOGIC_VECTOR(4 downto 0);
      test_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
      );
   END COMPONENT Datapath;

BEGIN
   add_instance : Datapath
   PORT MAP(
      clock => input_vector(1),
      reset => input_vector(0),

      state_identifier => output_vector(20 downto 16),
      test_out => output_vector(15 downto 0)
   );
END DutWrap;