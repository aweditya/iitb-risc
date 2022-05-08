LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Multiplexer16bit16to1 IS PORT (
    in0 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    in1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    in2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    in3 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    in4 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    in5 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    in6 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    in7 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    in8 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    in9 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    in10 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    in11 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    in12 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    in13 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    in14 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    in15 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    sel : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    sel_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0));
END ENTITY Multiplexer16bit16to1;

ARCHITECTURE mux16to1_select OF Multiplexer16bit16to1 IS
BEGIN
    PROCESS (in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15, sel) IS
    BEGIN
        IF (sel = "0000") THEN
            sel_out <= in0;
        ELSIF (sel = "0001") THEN
            sel_out <= in1;
        ELSIF (sel = "0010") THEN
            sel_out <= in2;
        ELSIF (sel = "0011") THEN
            sel_out <= in3;
        ELSIF (sel = "0100") THEN
            sel_out <= in4;
        ELSIF (sel = "0101") THEN
            sel_out <= in5;
        ELSIF (sel = "0110") THEN
            sel_out <= in6;
        ELSIF (sel = "0111") THEN
            sel_out <= in7;
        ELSIF (sel = "1000") THEN
            sel_out <= in8;
        ELSIF (sel = "1001") THEN
            sel_out <= in9;
        ELSIF (sel = "1010") THEN
            sel_out <= in10;
        ELSIF (sel = "1011") THEN
            sel_out <= in11;
        ELSIF (sel = "1100") THEN
            sel_out <= in12;
        ELSIF (sel = "1101") THEN
            sel_out <= in13;
        ELSIF (sel = "1110") THEN
            sel_out <= in14;
        ELSE
            sel_out <= in15;
        END IF;
    END PROCESS;
END ARCHITECTURE mux16to1_select;