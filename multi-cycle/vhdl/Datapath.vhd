-- Datapath
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY Datapath IS PORT (
    clock : IN STD_LOGIC;
    reset : IN STD_LOGIC;
    state_identifier : OUT STD_LOGIC_VECTOR(4 DOWNTO 0);
    test_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
);
END ENTITY Datapath;

ARCHITECTURE behavioural OF Datapath IS
    -- Component declarations
    COMPONENT ALU IS
        GENERIC (
            operand_width : INTEGER := 16;
            control_bits : INTEGER := 2
        );
        PORT (
            A : IN STD_LOGIC_VECTOR(operand_width - 1 DOWNTO 0);
            B : IN STD_LOGIC_VECTOR(operand_width - 1 DOWNTO 0);
            control_in : IN STD_LOGIC_VECTOR(control_bits - 1 DOWNTO 0);
            C : OUT STD_LOGIC_VECTOR(operand_width - 1 DOWNTO 0);
            control_out : OUT STD_LOGIC_VECTOR(control_bits - 1 DOWNTO 0)
        );
    END COMPONENT ALU;

    COMPONENT FlagRegister IS PORT (
        clock : IN STD_LOGIC;
        zero_load : IN STD_LOGIC;
        carry_load : IN STD_LOGIC;
        input : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        output : OUT STD_LOGIC_VECTOR(1 DOWNTO 0)
        );
    END COMPONENT FlagRegister;

    COMPONENT RAM IS PORT (
        clk : IN STD_LOGIC;
        write_enable : IN STD_LOGIC;
        address : IN STD_LOGIC_VECTOR(15 DOWNTO 0); -- RAM address
        data_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0); -- Write data
        data_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0) -- Read data
        );
    END COMPONENT RAM;

    COMPONENT Register2Byte IS PORT (
        clock : IN STD_LOGIC;
        load : IN STD_LOGIC;
        input : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        output : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
        );
    END COMPONENT Register2Byte;

    COMPONENT RegisterBank IS PORT (
        clock : IN STD_LOGIC;
        load : IN STD_LOGIC;
        address_in : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        data_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        address_out_1 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        data_out_1 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0);
        address_out_2 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        data_out_2 : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
        );
    END COMPONENT RegisterBank;

    COMPONENT SignExtender6Bit IS PORT (
        data_in : IN STD_LOGIC_VECTOR(5 DOWNTO 0);
        data_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
        );
    END COMPONENT SignExtender6Bit;

    COMPONENT SignExtender9Bit IS PORT (
        data_in : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
        data_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
        );
    END COMPONENT SignExtender9Bit;

    COMPONENT ZeroAppender IS PORT (
        data_in : IN STD_LOGIC_VECTOR(8 DOWNTO 0);
        data_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
        );
    END COMPONENT ZeroAppender;

    COMPONENT BitShifter IS PORT (
        data_in : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        data_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
        );
    END COMPONENT BitShifter;

    COMPONENT Multiplexer16bit2to1 IS PORT (
        in0 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        in1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        sel : IN STD_LOGIC;
        sel_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
        );
    END COMPONENT Multiplexer16bit2to1;

    COMPONENT Multiplexer16bit4to1 IS PORT (
        in0 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        in1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        in2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        in3 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        sel_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
        );
    END COMPONENT Multiplexer16bit4to1;

    COMPONENT Multiplexer16bit8to1 IS PORT (
        in0 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        in1 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        in2 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        in3 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        in4 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        in5 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        in6 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        in7 : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        sel : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        sel_out : OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
        );
    END COMPONENT Multiplexer16bit8to1;

    COMPONENT Multiplexer3bit2to1 IS PORT (
        in0 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        in1 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        sel : IN STD_LOGIC;
        sel_out : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
        );
    END COMPONENT Multiplexer3bit2to1;

    COMPONENT Multiplexer3bit4to1 IS PORT (
        in0 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        in1 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        in2 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        in3 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        sel : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
        sel_out : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
        );
    END COMPONENT Multiplexer3bit4to1;

    COMPONENT Multiplexer3bit8to1 IS PORT (
        in0 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        in1 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        in2 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        in3 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        in4 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        in5 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        in6 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        in7 : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        sel : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        sel_out : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
        );
    END COMPONENT Multiplexer3bit8to1;

    COMPONENT Multiplexer1bit8to1 IS PORT (
        in0 : IN STD_LOGIC;
        in1 : IN STD_LOGIC;
        in2 : IN STD_LOGIC;
        in3 : IN STD_LOGIC;
        in4 : IN STD_LOGIC;
        in5 : IN STD_LOGIC;
        in6 : IN STD_LOGIC;
        in7 : IN STD_LOGIC;
        sel : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
        sel_out : OUT STD_LOGIC
        );
    END COMPONENT Multiplexer1bit8to1;

    COMPONENT Counter IS PORT (
        clock : IN STD_LOGIC;
        clear : IN STD_LOGIC;
        increment : IN STD_LOGIC;
        output : OUT STD_LOGIC_VECTOR(2 DOWNTO 0)
        );
    END COMPONENT Counter;
	 
	 -- State tracking ID
    SIGNAL state_id : STD_LOGIC_VECTOR(4 DOWNTO 0);

    -- ALU signals
    SIGNAL alu_b, alu_c : STD_LOGIC_VECTOR(15 DOWNTO 0);
    SIGNAL alu_select : STD_LOGIC_VECTOR(1 DOWNTO 0);
    SIGNAL flags : STD_LOGIC_VECTOR(1 DOWNTO 0);

    -- Condition code signals (order is Z C)
    SIGNAL cc_zero_load, cc_carry_load : STD_LOGIC;
    SIGNAL cc_out : STD_LOGIC_VECTOR(1 DOWNTO 0);

    -- RAM signals
    SIGNAL wr_enable : STD_LOGIC;
    SIGNAL mem_d_in, mem_d_out, mem_a : STD_LOGIC_VECTOR(15 DOWNTO 0);

    -- Register bank signals
    SIGNAL rf_load : STD_LOGIC;
    SIGNAL rf_a1, rf_a2, rf_a3 : STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL rf_d1, rf_d2, rf_d3 : STD_LOGIC_VECTOR(15 DOWNTO 0);

    --T signals
    SIGNAL t_load : STD_LOGIC;
    SIGNAL t_out : STD_LOGIC_VECTOR(15 DOWNTO 0);

    -- T1 signals
    SIGNAL t1_load : STD_LOGIC;
    SIGNAL t1_in, t1_out : STD_LOGIC_VECTOR(15 DOWNTO 0);

    -- T2 signals;
    SIGNAL t2_load : STD_LOGIC;
    SIGNAL t2_in, t2_out : STD_LOGIC_VECTOR(15 DOWNTO 0);

    -- T3 signals
    SIGNAL t3_load : STD_LOGIC;
    SIGNAL t3_in, t3_out : STD_LOGIC_VECTOR(15 DOWNTO 0);

    -- IR signals
    SIGNAL ir_load : STD_LOGIC;
    SIGNAL ir_out : STD_LOGIC_VECTOR(15 DOWNTO 0);

    -- SE6 signals
    -- signal se6_in: std_logic_vector(5 downto 0);
    SIGNAL se6_out : STD_LOGIC_VECTOR(15 DOWNTO 0);

    -- SE9 signals
    -- signal se9_in: std_logic_vector(8 downto 0);
    SIGNAL se9_out : STD_LOGIC_VECTOR(15 DOWNTO 0);

    -- ZA signals
    -- signal za_in: std_logic_vector(8 downto 0);
    SIGNAL za_out : STD_LOGIC_VECTOR(15 DOWNTO 0);

    -- Bit Shifter signals
    -- signal shift_in: std_logic_vector(15 downto 0);
    SIGNAL shift_out : STD_LOGIC_VECTOR(15 DOWNTO 0);

    -- Counter signals
    SIGNAL clear_counter : STD_LOGIC;
    SIGNAL increment_counter : STD_LOGIC;
    SIGNAL counter_out : STD_LOGIC_VECTOR(2 DOWNTO 0);

    -- Mux select signals
    SIGNAL rf_a1_select : STD_LOGIC_VECTOR(1 DOWNTO 0);
    SIGNAL rf_a2_select : STD_LOGIC;
    SIGNAL rf_a3_select : STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL rf_d3_select : STD_LOGIC_VECTOR(2 DOWNTO 0);
    SIGNAL ram_a_select : STD_LOGIC_VECTOR(1 DOWNTO 0);
    SIGNAL ram_d_in_select : STD_LOGIC;
    SIGNAL t1_select : STD_LOGIC_VECTOR(1 DOWNTO 0);
    SIGNAL t2_select : STD_LOGIC_VECTOR(1 DOWNTO 0);
    SIGNAL alu_b_select : STD_LOGIC;
    SIGNAL t3_select : STD_LOGIC;

    -- LM/SM signals
    SIGNAL lm_sm_load : STD_LOGIC;

    -- State declaration
    TYPE state IS (s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, s17, s18, startup);
    SIGNAL present_state, next_state : state := s0;

BEGIN
    state_identifier <= state_id;
    test_out(15 downto 13) <= counter_out;
	 -- test_out <= rf_d3;

    -- State update on positive clock edge
    clock_process : PROCESS (clock, reset)
    BEGIN
        IF (reset = '1') THEN
            present_state <= startup;
        ELSIF (falling_edge(clock)) THEN
            present_state <= next_state;
        END IF;
    END PROCESS clock_process;

    state_transition_process : PROCESS (present_state, alu_c, flags, cc_out, mem_d_out, rf_d1, rf_d2, ir_out, t1_out, t2_out, t3_out, shift_out, za_out, se6_out, se9_out, lm_sm_load, counter_out)
    BEGIN
        CASE present_state IS
            WHEN startup =>
                state_id <= "11111";

                -- Control signal assignment
                rf_a1_select <= "00";
                rf_a2_select <= '0';
                rf_a3_select <= "000";
                rf_d3_select <= "100";
                ram_a_select <= "00";
                ram_d_in_select <= '0';
                t1_select <= "00";
                t2_select <= "01";
                alu_b_select <= '1';
                t3_select <= '0';
                alu_select <= "11";
                cc_zero_load <= '0';
                cc_carry_load <= '0';
                wr_enable <= '0';
                rf_load <= '1';
                t_load <= '0';
                t1_load <= '0';
                t2_load <= '0';
                t3_load <= '0';
                ir_load <= '0';

                clear_counter <= '1';
                increment_counter <= '0';

                next_state <= s0;

            WHEN s0 =>
                state_id <= "00000";

                -- Control signal assignment
                rf_a1_select <= "00";
                rf_a2_select <= '0';
                rf_a3_select <= "000";
                rf_d3_select <= "001";
                ram_a_select <= "00";
                ram_d_in_select <= '0';
                t1_select <= "00";
                t2_select <= "01";
                alu_b_select <= '1';
                t3_select <= '0';
                alu_select <= "11";
                cc_zero_load <= '0';
                cc_carry_load <= '0';
                wr_enable <= '0';
                rf_load <= '0';
                t_load <= '1';
                t1_load <= '1';
                t2_load <= '0';
                t3_load <= '0';
                ir_load <= '1';

                clear_counter <= '1';
                increment_counter <= '0';

                -- Next state logic
                IF (mem_d_out(15 DOWNTO 12) = "0001") THEN
                    -- ADD, ADC, ADZ, ADL
                    next_state <= s1;
                ELSIF (mem_d_out(15 DOWNTO 12) = "0000") THEN
                    -- ADI
                    next_state <= s1;
                ELSIF (mem_d_out(15 DOWNTO 12) = "0010") THEN
                    -- NDU, NDC, NDZ
                    next_state <= s1;
                ELSIF (mem_d_out(15 DOWNTO 12) = "0011") THEN
                    -- LHI
                    next_state <= s1;
                ELSIF (mem_d_out(15 DOWNTO 12) = "0111") THEN
                    -- LW
                    next_state <= s1;
                ELSIF (mem_d_out(15 DOWNTO 12) = "0101") THEN
                    -- SW
                    next_state <= s1;
                ELSIF (mem_d_out(15 DOWNTO 12) = "1001") THEN
                    -- JAL
                    next_state <= s1;
                ELSIF (mem_d_out(15 DOWNTO 12) = "1010") THEN
                    -- JLR
                    next_state <= s1;
                ELSIF (mem_d_out(15 DOWNTO 12) = "1011") THEN
                    -- JRI
                    next_state <= s15;
                ELSIF (mem_d_out(15 DOWNTO 12) = "1000") THEN
                    -- BEQ
                    next_state <= s3;
                ELSIF (mem_d_out(15 DOWNTO 12) = "1100") THEN
                    -- LM
                    next_state <= s1;
                ELSIF (mem_d_out(15 DOWNTO 12) = "1101") THEN
                    -- SM
                    next_state <= s1;
                ELSE
                    next_state <= startup;
                END IF;

            WHEN s1 =>
                state_id <= "00001";

                -- Control signal assignment
                rf_a1_select <= "10";
                rf_a2_select <= '0';
                rf_a3_select <= "001";
                rf_d3_select <= "100";
                ram_a_select <= "01";
                ram_d_in_select <= '0';
                t1_select <= "00";
                t2_select <= "00";
                alu_b_select <= '1';
                t3_select <= '0';
                alu_select <= "00";
                cc_zero_load <= '0';
                cc_carry_load <= '0';
                wr_enable <= '0';
                rf_load <= '0';
                t_load <= '0';
                t1_load <= '0';
                t2_load <= '0';
                t3_load <= '1';
                ir_load <= '0';

                clear_counter <= '1';
                increment_counter <= '0';

                -- Next state logic
                IF (ir_out(15 DOWNTO 12) = "0001") THEN
                    -- ADD, ADC, ADZ, ADL
                    next_state <= s2;
                ELSIF (ir_out(15 DOWNTO 12) = "0000") THEN
                    -- ADI
                    next_state <= s2;
                ELSIF (ir_out(15 DOWNTO 12) = "0010") THEN
                    -- NDU, NDC, NDZ
                    next_state <= s2;
                ELSIF (ir_out(15 DOWNTO 12) = "0011") THEN
                    -- LHI
                    next_state <= s2;
                ELSIF (ir_out(15 DOWNTO 12) = "0111") THEN
                    -- LW
                    next_state <= s2;
                ELSIF (ir_out(15 DOWNTO 12) = "0101") THEN
                    -- SW
                    next_state <= s2;
                ELSIF (ir_out(15 DOWNTO 12) = "1001") THEN
                    -- JAL
                    next_state <= s12;
                ELSIF (ir_out(15 DOWNTO 12) = "1010") THEN
                    -- JLR
                    next_state <= s12;
                ELSIF (ir_out(15 DOWNTO 12) = "1000") THEN
                    -- BEQ
                    next_state <= s2;
                ELSIF (ir_out(15 DOWNTO 12) = "1100") THEN
                    -- LM
                    next_state <= s2;
                ELSIF (ir_out(15 DOWNTO 12) = "1101") THEN
                    -- SM
                    next_state <= s2;
                ELSE
                    next_state <= startup;
                END IF;	

            WHEN s2 =>
                state_id <= "00010";

                -- Control signal assignment
                rf_a1_select <= "10";
                rf_a2_select <= '0';
                rf_a3_select <= "000";
                rf_d3_select <= "001";
                ram_a_select <= "00";
                ram_d_in_select <= '0';
                t1_select <= "00";
                t2_select <= "01";
                alu_b_select <= '1';
                t3_select <= '1';
                alu_select <= "11";
                cc_zero_load <= '0';
                cc_carry_load <= '0';
                wr_enable <= '0';
                rf_load <= '1';
                t_load <= '0';
                t1_load <= '0';
                t2_load <= '0';
                t3_load <= '0';
                ir_load <= '0';

                clear_counter <= '1';
                increment_counter <= '0';

                -- Next state logic
                IF ((ir_out(15 DOWNTO 12) & ir_out(2 DOWNTO 0)) = "0001000") THEN
                    -- ADD 
                    next_state <= s3;
                ELSIF ((ir_out(15 DOWNTO 12) & ir_out(2 DOWNTO 0)) = "0001010") THEN
                    -- ADC
                    IF (cc_out(0) = '1') THEN
                        next_state <= s3;
                    ELSE
                        next_state <= s0;
                    END IF;
                ELSIF ((ir_out(15 DOWNTO 12) & ir_out(2 DOWNTO 0)) = "0001001") THEN
                    -- ADZ
                    IF (cc_out(1) = '1') THEN
                        next_state <= s3;
                    ELSE
                        next_state <= s0;
                    END IF;
                ELSIF ((ir_out(15 DOWNTO 12) & ir_out(2 DOWNTO 0)) = "0001011") THEN
                    -- ADL 
                    next_state <= s6;
                ELSIF (ir_out(15 DOWNTO 12) = "0000") THEN
                    -- ADI
                    next_state <= s7;
                ELSIF ((ir_out(15 DOWNTO 12) & ir_out(2 DOWNTO 0)) = "0010000") THEN
                    -- NDU
                    next_state <= s3;
                ELSIF ((ir_out(15 DOWNTO 12) & ir_out(2 DOWNTO 0)) = "0010010") THEN
                    -- NDC
                    IF (cc_out(0) = '1') THEN
                        next_state <= s3;
                    ELSE
                        next_state <= s0;
                    END IF;
                ELSIF ((ir_out(15 DOWNTO 12) & ir_out(2 DOWNTO 0)) = "0010001") THEN
                    -- NDZ
                    IF (cc_out(1) = '1') THEN
                        next_state <= s3;
                    ELSE
                        next_state <= s0;
                    END IF;
                ELSIF (ir_out(15 DOWNTO 12) = "0011") THEN
                    -- LHI
                    next_state <= s9;
                ELSIF (ir_out(15 DOWNTO 12) = "0111") THEN
                    -- LW
                    next_state <= s10;
                ELSIF (ir_out(15 DOWNTO 12) = "0101") THEN
                    -- SW
                    next_state <= s10;
                ELSIF (ir_out(15 DOWNTO 12) = "1001") THEN
                    -- JAL
                    next_state <= s0;
                ELSIF (ir_out(15 DOWNTO 12) = "1011") THEN
                    -- JRI
                    next_state <= s0;
                ELSIF (ir_out(15 DOWNTO 12) = "1100") THEN
                    -- LM
                    next_state <= s3;
                ELSIF (ir_out(15 DOWNTO 12) = "1101") THEN
                    -- SM
                    next_state <= s3;
                ELSE
                    next_state <= startup;
                END IF;

            WHEN s3 =>
                state_id <= "00011";

                -- Control signal assignment
                rf_a1_select <= "10";
                rf_a2_select <= '0';
                rf_a3_select <= "001";
                rf_d3_select <= "100";
                ram_a_select <= "01";
                ram_d_in_select <= '0';
                t1_select <= "00";
                t2_select <= "00";
                alu_b_select <= '1';
                t3_select <= '1';
                alu_select <= "11";
                cc_zero_load <= '0';
                cc_carry_load <= '0';
                wr_enable <= '0';
                rf_load <= '0';
                t_load <= '0';
                t1_load <= '1';
                t2_load <= '1';
                t3_load <= '0';
                ir_load <= '0';

                clear_counter <= '1';
                increment_counter <= '0';

                -- Next state logic
                IF (ir_out(15 DOWNTO 12) = "0001") THEN
                    -- ADD, ADC, ADZ only (ADL, ADI don't occur)
                    next_state <= s4;
                ELSIF (ir_out(15 DOWNTO 12) = "0010") THEN
                    -- NDU, NDC, NDZ
                    next_state <= s4;
                ELSIF (ir_out(15 DOWNTO 12) = "1000") THEN
                    -- BEQ
                    next_state <= s4;
                ELSIF (ir_out(15 DOWNTO 12) = "1100") THEN
                    --LM
                    next_state <= s17;
                ELSIF (ir_out(15 DOWNTO 12) = "1101") THEN
                    --SM
                    next_state <= s18;
                ELSE
                    next_state <= startup;
                END IF;

            WHEN s4 =>
                state_id <= "00100";

                rf_a1_select <= "00";
                rf_a2_select <= '0';
                rf_a3_select <= "001";
                rf_d3_select <= "001";
                ram_a_select <= "00";
                ram_d_in_select <= '0';
                t1_select <= "01";
                t2_select <= "10";
                alu_b_select <= '0';
                t3_select <= '0';

                clear_counter <= '1';
                increment_counter <= '0';

                -- Control signal assignment and next state logic
                IF (ir_out(15 DOWNTO 12) = "0001") THEN
                    -- ADD, ADC, ADZ, ADL
                    alu_select <= "00";
                    cc_zero_load <= '1';
                    cc_carry_load <= '1';

                    next_state <= s5;

                ELSIF (ir_out(15 DOWNTO 12) = "0000") THEN
                    -- ADI
                    alu_select <= "00";
                    cc_zero_load <= '1';
                    cc_carry_load <= '1';

                    next_state <= s8;

                ELSIF (ir_out(15 DOWNTO 12) = "0010") THEN
                    -- NDU, NDC, NDZ
                    alu_select <= "01";
                    cc_zero_load <= '1';
                    cc_carry_load <= '0';

                    next_state <= s5;

                ELSIF (ir_out(15 DOWNTO 12) = "0111") THEN
                    -- LW
                    alu_select <= "00";
                    cc_zero_load <= '0';
                    cc_carry_load <= '0';

                    next_state <= s11;

                ELSIF (ir_out(15 DOWNTO 12) = "0101") THEN
                    -- SW
                    alu_select <= "00";
                    cc_zero_load <= '0';
                    cc_carry_load <= '0';

                    next_state <= s13;

                ELSIF (ir_out(15 DOWNTO 12) = "1001") THEN
                    -- JAL
                    alu_select <= "00";
                    cc_zero_load <= '0';
                    cc_carry_load <= '0';

                    next_state <= s2;

                ELSIF (ir_out(15 DOWNTO 12) = "1011") THEN
                    -- JRI
                    alu_select <= "00";
                    cc_zero_load <= '0';
                    cc_carry_load <= '0';

                    next_state <= s2;
                ELSIF (ir_out(15 DOWNTO 12) = "1000") THEN
                    -- BEQ
                    alu_select <= "10";
                    cc_zero_load <= '0';
                    cc_carry_load <= '0';
                    IF (flags(1) = '1') THEN
                        next_state <= s16;
                    ELSE
                        next_state <= s1;
                    END IF;

                ELSE
                    alu_select <= "11";
                    cc_zero_load <= '0';
                    cc_carry_load <= '0';

                    next_state <= startup;
                END IF;

                wr_enable <= '0';
                rf_load <= '0';
                t_load <= '0';
                t1_load <= '1';
                t2_load <= '1';
                t3_load <= '1';
                ir_load <= '0';

            WHEN s5 =>
                state_id <= "00101";

                -- Control signal assignment
                rf_a1_select <= "10";
                rf_a2_select <= '0';
                rf_a3_select <= "001";
                rf_d3_select <= "001";
                ram_a_select <= "01";
                ram_d_in_select <= '0';
                t1_select <= "00";
                t2_select <= "10";
                alu_b_select <= '0';
                t3_select <= '0';
                alu_select <= "11";
                cc_zero_load <= '0';
                cc_carry_load <= '0';
                wr_enable <= '0';
                rf_load <= '1';
                t_load <= '0';
                t1_load <= '0';
                t2_load <= '0';
                t3_load <= '0';
                ir_load <= '0';

                clear_counter <= '1';
                increment_counter <= '0';

                -- Next state logic
                next_state <= s0;

            WHEN s6 =>
                state_id <= "00110";

                -- Control signal assignment               
                rf_a1_select <= "10";
                rf_a2_select <= '0';
                rf_a3_select <= "001";
                rf_d3_select <= "001";
                ram_a_select <= "00";
                ram_d_in_select <= '0';
                t1_select <= "00";
                t2_select <= "01";
                alu_b_select <= '0';
                t3_select <= '1';
                alu_select <= "11";
                cc_zero_load <= '0';
                cc_carry_load <= '0';
                wr_enable <= '0';
                rf_load <= '0';
                t_load <= '0';
                t1_load <= '1';
                t2_load <= '1';
                t3_load <= '0';
                ir_load <= '0';

                clear_counter <= '1';
                increment_counter <= '0';

                -- Next state logic
                next_state <= s4;

            WHEN s7 =>
                state_id <= "00111";

                -- Control signal assignment                
                rf_a1_select <= "10";
                rf_a2_select <= '0';
                rf_a3_select <= "001";
                rf_d3_select <= "001";
                ram_a_select <= "01";
                ram_d_in_select <= '0';
                t1_select <= "00";
                t2_select <= "10";
                alu_b_select <= '0';
                t3_select <= '1';
                alu_select <= "11";
                cc_zero_load <= '0';
                cc_carry_load <= '0';
                wr_enable <= '0';
                rf_load <= '0';
                t_load <= '0';
                t1_load <= '1';
                t2_load <= '1';
                t3_load <= '0';
                ir_load <= '0';

                clear_counter <= '1';
                increment_counter <= '0';

                -- Next state logic
                next_state <= s4;

            WHEN s8 =>
                state_id <= "01000";

                -- Control signal assignment                                                
                rf_a1_select <= "01";
                rf_a2_select <= '0';
                rf_a3_select <= "010";
                rf_d3_select <= "001";
                ram_a_select <= "00";
                ram_d_in_select <= '0';
                t1_select <= "00";
                t2_select <= "10";
                alu_b_select <= '1';
                t3_select <= '0';
                alu_select <= "11";
                cc_zero_load <= '0';
                cc_carry_load <= '0';
                wr_enable <= '0';
                rf_load <= '1';
                t_load <= '0';
                t1_load <= '0';
                t2_load <= '0';
                t3_load <= '0';
                ir_load <= '0';

                clear_counter <= '1';
                increment_counter <= '0';

                -- Next state logic
                next_state <= s0;

            WHEN s9 =>
                state_id <= "01001";

                -- Control signal assignment                                               
                rf_a1_select <= "10";
                rf_a2_select <= '0';
                rf_a3_select <= "011";
                rf_d3_select <= "010";
                ram_a_select <= "01";
                ram_d_in_select <= '0';
                t1_select <= "00";
                t2_select <= "10";
                alu_b_select <= '1';
                t3_select <= '0';
                alu_select <= "11";
                cc_zero_load <= '0';
                cc_carry_load <= '0';
                wr_enable <= '0';
                rf_load <= '1';
                t_load <= '0';
                t1_load <= '0';
                t2_load <= '0';
                t3_load <= '0';
                ir_load <= '0';

                clear_counter <= '1';
                increment_counter <= '0';

                -- Next state logic
                next_state <= s0;

            WHEN s10 =>
                state_id <= "01010";

                -- Control signal assignment                                               
                rf_a1_select <= "01";
                rf_a2_select <= '0';
                rf_a3_select <= "000";
                rf_d3_select <= "000";
                ram_a_select <= "00";
                ram_d_in_select <= '0';
                t1_select <= "00";
                t2_select <= "10";
                alu_b_select <= '1';
                t3_select <= '1';
                alu_select <= "11";
                cc_zero_load <= '0';
                cc_carry_load <= '0';
                wr_enable <= '0';
                rf_load <= '0';
                t_load <= '0';
                t1_load <= '1';
                t2_load <= '1';
                t3_load <= '0';
                ir_load <= '0';

                clear_counter <= '1';
                increment_counter <= '0';

                -- Next state logic
                next_state <= s4;

            WHEN s11 =>
                state_id <= "01011";

                -- Control signal assignment                                                
                rf_a1_select <= "10";
                rf_a2_select <= '0';
                rf_a3_select <= "001";
                rf_d3_select <= "010";
                ram_a_select <= "01";
                ram_d_in_select <= '0';
                t1_select <= "00";
                t2_select <= "10";
                alu_b_select <= '1';
                t3_select <= '1';
                alu_select <= "11";
                cc_zero_load <= '0';
                cc_carry_load <= '0';
                wr_enable <= '0';
                rf_load <= '0';
                t_load <= '0';
                t1_load <= '0';
                t2_load <= '0';
                t3_load <= '1';
                ir_load <= '0';

                clear_counter <= '1';
                increment_counter <= '0';

                -- Next state logic
                next_state <= s12;

            WHEN s12 =>
                state_id <= "01100";

                -- Control signal assignment                                            
                rf_a1_select <= "01";
                rf_a2_select <= '0';
                rf_a3_select <= "011";
                rf_d3_select <= "001";
                ram_a_select <= "00";
                ram_d_in_select <= '0';
                t1_select <= "00";
                t2_select <= "11";
                alu_b_select <= '0';
                t3_select <= '0';
                alu_select <= "11";
                cc_zero_load <= '0';
                cc_carry_load <= '0';
                wr_enable <= '0';
                rf_load <= '1';
                t_load <= '0';
                t1_load <= '0';
                t2_load <= '1';
                t3_load <= '0';
                ir_load <= '0';

                clear_counter <= '1';
                increment_counter <= '0';

                -- Next state logic
                IF (ir_out(15 DOWNTO 12) = "0111") THEN
                    -- LW
                    next_state <= s0;
                ELSIF (ir_out(15 DOWNTO 12) = "1001") THEN
                    -- JAL
                    next_state <= s4;
                ELSIF (ir_out(15 DOWNTO 12) = "1010") THEN
                    -- JLR
                    next_state <= s14;
                END IF;

            WHEN s13 =>
                state_id <= "01101";

                -- Control signal assignment
                rf_a1_select <= "10";
                rf_a2_select <= '0';
                rf_a3_select <= "011";
                rf_d3_select <= "000";
                ram_a_select <= "01";
                ram_d_in_select <= '0';
                t1_select <= "00";
                t2_select <= "11";
                alu_b_select <= '0';
                t3_select <= '0';
                alu_select <= "11";
                cc_zero_load <= '0';
                cc_carry_load <= '0';
                wr_enable <= '1';
                rf_load <= '0';
                t_load <= '0';
                t1_load <= '0';
                t2_load <= '0';
                t3_load <= '0';
                ir_load <= '0';

                clear_counter <= '1';
                increment_counter <= '0';

                -- Next state logic
                next_state <= s0;

            WHEN s14 =>
                state_id <= "01110";

                -- Control signal assignment
                rf_a1_select <= "01";
                rf_a2_select <= '0';
                rf_a3_select <= "000";
                rf_d3_select <= "000";
                ram_a_select <= "00";
                ram_d_in_select <= '0';
                t1_select <= "00";
                t2_select <= "11";
                alu_b_select <= '0';
                t3_select <= '1';
                alu_select <= "11";
                cc_zero_load <= '0';
                cc_carry_load <= '0';
                wr_enable <= '0';
                rf_load <= '1';
                t_load <= '0';
                t1_load <= '0';
                t2_load <= '0';
                t3_load <= '0';
                ir_load <= '0';

                clear_counter <= '1';
                increment_counter <= '0';

                -- Next state logic
                next_state <= s0;

            WHEN s15 =>
                state_id <= "01111";

                -- Control signal assignment
                rf_a1_select <= "10";
                rf_a2_select <= '0';
                rf_a3_select <= "001";
                rf_d3_select <= "000";
                ram_a_select <= "01";
                ram_d_in_select <= '0';
                t1_select <= "00";
                t2_select <= "11";
                alu_b_select <= '0';
                t3_select <= '1';
                alu_select <= "11";
                cc_zero_load <= '0';
                cc_carry_load <= '0';
                wr_enable <= '0';
                rf_load <= '0';
                t_load <= '0';
                t1_load <= '1';
                t2_load <= '1';
                t3_load <= '0';
                ir_load <= '0';

                clear_counter <= '1';
                increment_counter <= '0';

                -- Next state logic
                next_state <= s4;

            WHEN s16 =>
                state_id <= "10000";

                rf_a1_select <= "00";
                rf_a2_select <= '0';
                rf_a3_select <= "001";
                rf_d3_select <= "001";
                ram_a_select <= "00";
                ram_d_in_select <= '0';
                t1_select <= "00";
                t2_select <= "01";
                alu_b_select <= '0';
                t3_select <= '0';
                alu_select <= "00";
                cc_zero_load <= '0';
                cc_carry_load <= '0';
                wr_enable <= '0';
                rf_load <= '0';
                t_load <= '0';
                t1_load <= '0';
                t2_load <= '0';
                t3_load <= '1';
                ir_load <= '0';

                clear_counter <= '1';
                increment_counter <= '0';

                -- Next state logic
                next_state <= s2;

            WHEN s17 =>
                state_id <= "10001";

                -- LM
                rf_a1_select <= "00";
                rf_a2_select <= '0';
                rf_a3_select <= "100";
                rf_d3_select <= "011";
                ram_a_select <= "10";
                ram_d_in_select <= '0';
                t1_select <= "10";
                t2_select <= "00";
                alu_b_select <= '1';
                t3_select <= '0';

                IF (lm_sm_load = '1') THEN
                    alu_select <= "00";
                    rf_load <= '1';
                ELSE
                    alu_select <= "11";
                    rf_load <= '0';
                END IF;

                cc_zero_load <= '0';
                cc_carry_load <= '0';
                wr_enable <= '0';
                t_load <= '0';
                t1_load <= '1';
                t2_load <= '0';
                t3_load <= '0';
                ir_load <= '0';
					 
					 clear_counter <= '0';
					 increment_counter <= '1';

                IF (counter_out = "111") THEN
                    next_state <= s0;
                ELSE
                    next_state <= s17;
                END IF;

            WHEN s18 =>
                state_id <= "10010";

                -- SM
                rf_a1_select <= "00";
                rf_a2_select <= '1';
                rf_a3_select <= "000";
                rf_d3_select <= "000";
                ram_a_select <= "10";
                ram_d_in_select <= '1';
                t1_select <= "10";
                t2_select <= "00";
                alu_b_select <= '1';
                t3_select <= '0';

                IF (lm_sm_load = '1') THEN
                    alu_select <= "00";
                    wr_enable <= '1';
                ELSE
                    alu_select <= "11";
                    wr_enable <= '0';
                END IF;

                cc_zero_load <= '0';
                cc_carry_load <= '0';
                rf_load <= '0';
                t_load <= '0';
                t1_load <= '1';
                t2_load <= '0';
                t3_load <= '0';
                ir_load <= '0';

                clear_counter <= '0';
					 increment_counter <= '1';

                IF (counter_out = "111") THEN
                    next_state <= s0;
                ELSE
                    next_state <= s18;
                END IF;
					 
        END CASE;
    END PROCESS state_transition_process;

    -- Port mapping
    alu_b_mux : Multiplexer16bit2to1 PORT MAP(
        in0 => t2_out,
        in1 => "0000000000000001",
        sel => alu_b_select,
        sel_out => alu_b);

    alu_unit : ALU PORT MAP(
        A => t1_out,
        B => alu_b,
        control_in => alu_select,
        C => alu_c,
        control_out => flags);

    CC : FlagRegister PORT MAP(
        clock => clock,
        zero_load => cc_zero_load,
        carry_load => cc_carry_load,
        input => flags,
        output => cc_out);

    ram_a_mux : Multiplexer16bit4to1 PORT MAP(
        in0 => rf_d1,
        in1 => t3_out,
        in2 => t1_out,
        in3 => "0000000000000000",
        sel => ram_a_select,
        sel_out => mem_a);

    ram_d_in_mux : Multiplexer16bit2to1 PORT MAP(
        in0 => rf_d1,
        in1 => rf_d2,
        sel => ram_d_in_select,
        sel_out => mem_d_in);

    ram_unit : RAM PORT MAP(
        clk => clock,
        write_enable => wr_enable,
        address => mem_a,
        data_in => mem_d_in,
        data_out => mem_d_out);

    t1_mux : Multiplexer16bit4to1 PORT MAP(
        in0 => rf_d1,
        in1 => t_out,
        in2 => alu_c,
        in3 => rf_d1,
        sel => t1_select,
        sel_out => t1_in);

    T1 : Register2Byte PORT MAP(
        clock => clock,
        load => t1_load,
        input => t1_in,
        output => t1_out);

    T : Register2Byte PORT MAP(
        clock => clock,
        load => t_load,
        input => rf_d1,
        output => t_out);

    t2_mux : Multiplexer16bit4to1 PORT MAP(
        in0 => rf_d2,
        in1 => shift_out,
        in2 => se6_out,
        in3 => se9_out,
        sel => t2_select,
        sel_out => t2_in);

    T2 : Register2Byte PORT MAP(
        clock => clock,
        load => t2_load,
        input => t2_in,
        output => t2_out);

    t3_mux : Multiplexer16bit2to1 PORT MAP(
        in0 => alu_c,
        in1 => mem_d_out,
        sel => t3_select,
        sel_out => t3_in);

    T3 : Register2Byte PORT MAP(
        clock => clock,
        load => t3_load,
        input => t3_in,
        output => t3_out);

    -- ir_in <= mem_d_out;
    IR : Register2Byte PORT MAP(
        clock => clock,
        load => ir_load,
        input => mem_d_out,
        output => ir_out);

    rf_a1_mux : Multiplexer3bit4to1 PORT MAP(
        in0 => "111",
        in1 => ir_out(8 DOWNTO 6),
        in2 => ir_out(11 DOWNTO 9),
        in3 => "111",
        sel => rf_a1_select,
        sel_out => rf_a1);

    rf_a2_mux : Multiplexer3bit2to1 PORT MAP(
        in0 => ir_out(8 DOWNTO 6),
        in1 => counter_out,
        sel => rf_a2_select,
        sel_out => rf_a2);

    rf_a3_mux : Multiplexer3bit8to1 PORT MAP(
        in0 => "111",
        in1 => ir_out(5 DOWNTO 3),
        in2 => ir_out(8 DOWNTO 6),
        in3 => ir_out(11 DOWNTO 9),
        in4 => counter_out,
        in5 => "111",
        in6 => "111",
        in7 => "111",
        sel => rf_a3_select,
        sel_out => rf_a3);

    rf_d3_mux : Multiplexer16bit8to1 PORT MAP(
        in0 => rf_d1,
        in1 => t3_out,
        in2 => za_out,
        in3 => mem_d_out,
        in4 => "0000000000000000",
        in5 => "0000000000000000",
        in6 => "0000000000000000",
        in7 => "0000000000000000",
        sel => rf_d3_select,
        sel_out => rf_d3);

    RF : RegisterBank PORT MAP(
        clock => clock,
        load => rf_load,
        address_in => rf_a3,
        data_in => rf_d3,
        address_out_1 => rf_a1,
        data_out_1 => rf_d1,
        address_out_2 => rf_a2,
        data_out_2 => rf_d2);

    -- se6_in <= ir_out(5 downto 0);
    SE6 : SignExtender6Bit PORT MAP(
        data_in => ir_out(5 DOWNTO 0),
        data_out => se6_out);

    -- se9_in <= ir_out(8 downto 0);
    SE9 : SignExtender9Bit PORT MAP(
        data_in => ir_out(8 DOWNTO 0),
        data_out => se9_out);

    -- za_in <= ir_out(8 downto 0);
    ZA : ZeroAppender PORT MAP(
        data_in => ir_out(8 DOWNTO 0),
        data_out => za_out);

    -- shift_in <= rf_d2;
    Shifter : BitShifter PORT MAP(
        data_in => rf_d2,
        data_out => shift_out);

    Counter0to7 : Counter PORT MAP(
        clock => clock,
        clear => clear_counter,
        increment => increment_counter,
        output => counter_out);

    load_mux : Multiplexer1bit8to1 PORT MAP(
        in0 => ir_out(0),
        in1 => ir_out(1),
        in2 => ir_out(2),
        in3 => ir_out(3),
        in4 => ir_out(4),
        in5 => ir_out(5),
        in6 => ir_out(6),
        in7 => ir_out(7),
        sel => counter_out,
        sel_out => lm_sm_load);

END ARCHITECTURE behavioural;