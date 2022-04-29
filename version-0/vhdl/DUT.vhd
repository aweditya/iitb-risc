-- A DUT entity is used to wrap your design.
--  This example shows how you can do this for the
--  ALU (using behavioural modelling)

library ieee;
use ieee.std_logic_1164.all;

entity DUT is
   port(input_vector: in std_logic_vector(1 downto 0);
       output_vector: out std_logic_vector(15 downto 0));
end entity;

architecture DutWrap of DUT is
	component Datapath is port(
    clock: in std_logic;
    reset: in std_logic;
	dummyout: out std_logic_vector(0 to 15)
);
end component Datapath;
	

begin

   -- input/output vector element ordering is critical,
   -- and must match the ordering in the trace file!
   add_instance: Datapath	
			port map (
					-- order of inputs <S1 S0 A3 A2 A1 A0 B3 B2 B1 B0> 
					clock => input_vector(1),
					reset => input_vector(0),

               -- order of outputs  <Y7 Y6 Y5 Y4 Y3 Y2 Y1 Y0>
					dummyout => output_vector(15 downto 0));
end DutWrap;