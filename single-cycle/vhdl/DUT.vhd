LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY DUT IS PORT (
   input_vector : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
   output_vector : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
);
END ENTITY;

ARCHITECTURE DutWrap OF DUT IS
   COMPONENT SingleCycleDatapath IS PORT (
      clock : IN STD_LOGIC;
      reset : IN STD_LOGIC;
      test_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
      );
   END COMPONENT SingleCycleDatapath;

BEGIN
   add_instance : SingleCycleDatapath
   PORT MAP(
      clock => input_vector(1),
      reset => input_vector(0),
      test_out => output_vector
   );
END DutWrap;