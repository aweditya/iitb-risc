LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY DUT IS PORT (
   input_vector : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
   output_vector : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
);
END ENTITY;

ARCHITECTURE DutWrap OF DUT IS
   COMPONENT PipelinedDatapath IS PORT (
      clock : IN STD_LOGIC;
      reset : IN STD_LOGIC;
      test_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
      );
   END COMPONENT PipelinedDatapath;

BEGIN
   add_instance : PipelinedDatapath
   PORT MAP(
      clock => input_vector(1),
      reset => input_vector(0),
      test_out => output_vector
   );
END DutWrap;