LIBRARY std;
USE std.textio.ALL;

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Testbench IS
END ENTITY;
ARCHITECTURE Behave OF Testbench IS

  ----------------------------------------------------------------
  --  edit the following lines to set the number of i/o's of your
  --  DUT.
  ----------------------------------------------------------------
  CONSTANT number_of_inputs : INTEGER := 2; -- # input bits to your design.
  CONSTANT number_of_outputs : INTEGER := 21; -- # output bits from your design.
  ----------------------------------------------------------------
  ----------------------------------------------------------------

  -- Note that you will have to wrap your design into the DUT
  -- as indicated in class.
  COMPONENT DUT IS
    PORT (
      input_vector : IN STD_LOGIC_VECTOR(number_of_inputs - 1 DOWNTO 0);
      output_vector : OUT STD_LOGIC_VECTOR(number_of_outputs - 1 DOWNTO 0));
  END COMPONENT;
  SIGNAL input_vector : STD_LOGIC_VECTOR(number_of_inputs - 1 DOWNTO 0);
  SIGNAL output_vector : STD_LOGIC_VECTOR(number_of_outputs - 1 DOWNTO 0);

  -- create a constrained string
  FUNCTION to_string(x : STRING) RETURN STRING IS
    VARIABLE ret_val : STRING(1 TO x'length);
    ALIAS lx : STRING (1 TO x'length) IS x;
  BEGIN
    ret_val := lx;
    RETURN(ret_val);
  END to_string;

  -- bit-vector to std-logic-vector and vice-versa
  FUNCTION to_std_logic_vector(x : bit_vector) RETURN STD_LOGIC_VECTOR IS
    ALIAS lx : bit_vector(1 TO x'length) IS x;
    VARIABLE ret_val : STD_LOGIC_VECTOR(1 TO x'length);
  BEGIN
    FOR I IN 1 TO x'length LOOP
      IF (lx(I) = '1') THEN
        ret_val(I) := '1';
      ELSE
        ret_val(I) := '0';
      END IF;
    END LOOP;
    RETURN ret_val;
  END to_std_logic_vector;

  FUNCTION to_bit_vector(x : STD_LOGIC_VECTOR) RETURN bit_vector IS
    ALIAS lx : STD_LOGIC_VECTOR(1 TO x'length) IS x;
    VARIABLE ret_val : bit_vector(1 TO x'length);
  BEGIN
    FOR I IN 1 TO x'length LOOP
      IF (lx(I) = '1') THEN
        ret_val(I) := '1';
      ELSE
        ret_val(I) := '0';
      END IF;
    END LOOP;
    RETURN ret_val;
  END to_bit_vector;

BEGIN
  PROCESS
    VARIABLE err_flag : BOOLEAN := false;
    FILE INFILE : text OPEN read_mode IS "TRACEFILE.txt";
    FILE OUTFILE : text OPEN write_mode IS "outputs.txt";

    -- bit-vectors are read from the file.
    VARIABLE input_vector_var : bit_vector (number_of_inputs - 1 DOWNTO 0);
    VARIABLE output_vector_var : bit_vector (number_of_outputs - 1 DOWNTO 0);
    VARIABLE output_mask_var : bit_vector (number_of_outputs - 1 DOWNTO 0);

    -- for comparison of output with expected-output
    VARIABLE output_comp_var : STD_LOGIC_VECTOR (number_of_outputs - 1 DOWNTO 0);
    CONSTANT ZZZZ : STD_LOGIC_VECTOR(number_of_outputs - 1 DOWNTO 0) := (OTHERS => '0');

    -- for read/write.
    VARIABLE INPUT_LINE : Line;
    VARIABLE OUTPUT_LINE : Line;
    VARIABLE LINE_COUNT : INTEGER := 0;
  BEGIN
    WHILE NOT endfile(INFILE) LOOP
      -- will read a new line every 5ns, apply input,
      -- wait for 1 ns for circuit to settle.
      -- read output.
      LINE_COUNT := LINE_COUNT + 1;
      -- read input at current time.
      readLine (INFILE, INPUT_LINE);
      read (INPUT_LINE, input_vector_var);
      read (INPUT_LINE, output_vector_var);
      read (INPUT_LINE, output_mask_var);

      -- apply input.
      input_vector <= to_std_logic_vector(input_vector_var);

      -- wait for the circuit to settle 
      WAIT FOR 40 ns;

      -- check output.
      output_comp_var := (to_std_logic_vector(output_mask_var) AND
        (output_vector XOR to_std_logic_vector(output_vector_var)));
      IF (output_comp_var /= ZZZZ) THEN
        write(OUTPUT_LINE, to_string("ERROR: line "));
        write(OUTPUT_LINE, LINE_COUNT);
        writeline(OUTFILE, OUTPUT_LINE);
        err_flag := true;
      END IF;

      write(OUTPUT_LINE, to_bit_vector(input_vector));
      write(OUTPUT_LINE, to_string(" "));
      write(OUTPUT_LINE, to_bit_vector(output_vector));
      writeline(OUTFILE, OUTPUT_LINE);

      -- advance time by 4 ns.
      WAIT FOR 4 ns;
    END LOOP;

    ASSERT (err_flag) REPORT "SUCCESS, all tests passed." SEVERITY note;
    ASSERT (NOT err_flag) REPORT "FAILURE, some tests failed." SEVERITY error;

    WAIT;
  END PROCESS;

  dut_instance : DUT
  PORT MAP(input_vector => input_vector, output_vector => output_vector);

END Behave;