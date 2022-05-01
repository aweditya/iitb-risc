-- Datapath
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Datapath is port(
    clock: in std_logic;
    reset: in std_logic;
    test_out: out std_logic_vector(15 downto 0)
);
end entity Datapath;

architecture behavioural of Datapath is
    -- Component declarations
    component ALU is
		generic(
            operand_width : integer:=16;
            control_bits : integer:=2
        );
		port(
            A: in std_logic_vector(operand_width-1 downto 0);
            B: in std_logic_vector(operand_width-1 downto 0);
            control_in: in std_logic_vector(control_bits-1 downto 0);
            C: out std_logic_vector(operand_width-1 downto 0);
            control_out: out std_logic_vector(control_bits-1 downto 0)
        );
    end component ALU;

    component FlagRegister is port( 
        clock: in std_logic;
        zero_load: in std_logic; 
        carry_load: in std_logic;
        input: in std_logic_vector(1 downto 0);
        output : out std_logic_vector(1 downto 0)
    );
    end component FlagRegister; 

    component RAM is port(
		 clk: in std_logic;
	    write_enable: in std_logic;
	    address: in std_logic_vector(15 downto 0);     
	    data_in: in std_logic_vector(15 downto 0);     
	    data_out: out std_logic_vector(15 downto 0)    
    );
    end component RAM;

    component Register2Byte is port( 
        clock: in std_logic;
        load: in std_logic; 
        input: in std_logic_vector(15 downto 0);
        output : out std_logic_vector(15 downto 0)
    );
    end component Register2Byte;

    component RegisterBank is port( 
        clock: in std_logic;
        load: in std_logic; 
        address_in: in std_logic_vector(2 downto 0);
        data_in: in std_logic_vector(15 downto 0);
        address_out_1: in std_logic_vector(2 downto 0);
        data_out_1: out std_logic_vector(15 downto 0);
        address_out_2: in std_logic_vector(2 downto 0);
        data_out_2: out std_logic_vector(15 downto 0)
    );
    end component RegisterBank;

    component SignExtender6Bit is port(
        data_in: in std_logic_vector(5 downto 0); 
        data_out: out std_logic_vector(15 downto 0)
    );
    end component SignExtender6Bit;

    component SignExtender9Bit is port(
        data_in: in std_logic_vector(8 downto 0); 
        data_out: out std_logic_vector(15 downto 0)
    );
    end component SignExtender9Bit;

    component ZeroAppender is port(
        data_in: in std_logic_vector(8 downto 0);
        data_out: out std_logic_vector(15 downto 0)
    );
    end component ZeroAppender;

    component BitShifter is port(
        data_in: in std_logic_vector(15 downto 0);
        data_out: out std_logic_vector(15 downto 0)
    );
    end component BitShifter;
	 
    component Multiplexer16bit2to1 is port(
        in0: in std_logic_vector(15 downto 0);
        in1: in std_logic_vector(15 downto 0);
        sel: in std_logic;
        sel_out: out std_logic_vector(15 downto 0)
    );
    end component Multiplexer16bit2to1;
    
    component Multiplexer16bit4to1 is port(
        in0: in std_logic_vector(15 downto 0);
        in1: in std_logic_vector(15 downto 0);
        in2: in std_logic_vector(15 downto 0);
        in3: in std_logic_vector(15 downto 0);
        sel: in std_logic_vector(1 downto 0);
        sel_out: out std_logic_vector(15 downto 0)
    );
    end component Multiplexer16bit4to1;
    
    component Multiplexer3bit2to1 is port(
        in0: in std_logic_vector(2 downto 0);
        in1: in std_logic_vector(2 downto 0);
        sel: in std_logic;
        sel_out: out std_logic_vector(2 downto 0)
    );
    end component Multiplexer3bit2to1;
    
    component Multiplexer3bit4to1 is port(
        in0: in std_logic_vector(2 downto 0);
        in1: in std_logic_vector(2 downto 0);
        in2: in std_logic_vector(2 downto 0);
        in3: in std_logic_vector(2 downto 0);
        sel: in std_logic_vector(1 downto 0);
        sel_out: out std_logic_vector(2 downto 0)
    );
    end component Multiplexer3bit4to1;

    -- ALU signals
    signal alu_b, alu_c: std_logic_vector(15 downto 0);
    signal alu_select: std_logic_vector(1 downto 0);
    signal flags: std_logic_vector(1 downto 0);

    -- Condition code signals (order is Z C)
    signal cc_zero_load, cc_carry_load: std_logic;
    signal cc_out: std_logic_vector(1 downto 0);

    -- RAM signals
    signal wr_enable: std_logic;
    signal mem_d_in, mem_d_out, mem_a: std_logic_vector(15 downto 0);

    -- Register bank signals
    signal rf_load: std_logic;
    signal rf_a1, rf_a3: std_logic_vector(2 downto 0);
    signal rf_d1, rf_d2, rf_d3: std_logic_vector(15 downto 0);
	 
	-- T signals
	signal t_load: std_logic;
	signal t_out: std_logic_vector(15 downto 0);
	 
	-- T1 signals
    signal t1_load: std_logic;
    signal t1_in, t1_out: std_logic_vector(15 downto 0);

    -- T2 signals;
    signal t2_load: std_logic;
    signal t2_in, t2_out: std_logic_vector(15 downto 0);

    -- T3 signals
    signal t3_load: std_logic;
    signal t3_in, t3_out: std_logic_vector(15 downto 0);
    
    -- IR signals
    signal ir_load: std_logic;
    signal ir_out: std_logic_vector(15 downto 0);
    
    -- SE6 signals
    -- signal se6_in: std_logic_vector(5 downto 0);
    signal se6_out: std_logic_vector(15 downto 0);

    -- SE9 signals
    -- signal se9_in: std_logic_vector(8 downto 0);
    signal se9_out: std_logic_vector(15 downto 0);

    -- ZA signals
    -- signal za_in: std_logic_vector(8 downto 0);
    signal za_out: std_logic_vector(15 downto 0);

    -- Bit Shifter signals
    -- signal shift_in: std_logic_vector(15 downto 0);
    signal shift_out: std_logic_vector(15 downto 0);
    
    -- Mux select signals
    signal rf_a1_select: std_logic_vector(1 downto 0);
    signal rf_a3_select: std_logic_vector(1 downto 0);
    signal rf_d3_select: std_logic_vector(1 downto 0);
    signal ram_a_select: std_logic;
    signal t1_select: std_logic;
    signal t2_select: std_logic_vector(1 downto 0);
    signal alu_b_select: std_logic;
    signal t3_select: std_logic;
	 
    -- State declaration
    type state is (s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, s16, startup);
    signal present_state, next_state: state:= s0;
	 
begin 	 
    test_out <= rf_d3;

    -- State update on positive clock edge
    clock_process: process(clock, reset) 
    begin  
    if (falling_edge(clock)) then
        present_state <= next_state; 
        end if;
    if (reset = '1') then
        present_state <= startup;
        end if;
    end process clock_process;
    
    state_transition_process: process(present_state, alu_c, cc_out, mem_d_out, rf_d1, rf_d2, ir_out, t1_out, t2_out, t3_out, shift_out, za_out, se6_out, se9_out)
    begin	 
        case present_state is
            when startup =>
            -- Control signal assignment
            rf_a1_select <= "00";
            rf_a3_select <= "00";
            rf_d3_select <= "11";
            ram_a_select <= '0';
            t1_select <= '0';
            t2_select <= "01";
            alu_b_select <= '1';
            t3_select <= '0';
            alu_select <= "11";
            cc_zero_load <= '0';
            cc_carry_load <= '0';
            wr_enable <= '0';
            rf_load <= '1';
            t1_load <= '0';
            t2_load <= '0';
            t3_load <= '0';
            ir_load <= '0';
                    
            next_state <= s0;					 
            report "startup";
					 
            when s0 =>
                -- Control signal assignment
				rf_a1_select <= "00";
				rf_a3_select <= "00";
	            rf_d3_select <= "01";
	            ram_a_select <= '0';
	            t1_select <= '0';
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

                -- Next state logic
                if (mem_d_out(15 downto 12) = "0001") then
                    next_state <= s1;
                elsif (mem_d_out(15 downto 12) = "0000") then
                    next_state <= s1;
                elsif (mem_d_out(15 downto 12) = "0010") then
                    next_state <= s1;
                elsif (mem_d_out(15 downto 12) = "0011") then
                    next_state <= s1;
                elsif (mem_d_out(15 downto 12) = "0111") then
                    next_state <= s1;
                elsif (mem_d_out(15 downto 12) = "0101") then
                    next_state <= s1;
                elsif (mem_d_out(15 downto 12) = "1001") then
                    next_state <= s1;
                elsif (mem_d_out(15 downto 12) = "1010") then
                    next_state <= s1;
                elsif (mem_d_out(15 downto 12) = "1011") then
                    next_state <= s15;
				elsif (mem_d_out(15 downto 12) = "1000") then
                    next_state <= s3;
                else 
                    next_state <= startup;
                    end if;

				report "s0";
					 
        when s1 =>
            -- Control signal assignment
            rf_a1_select <= "10";
            rf_a3_select <= "01";
            rf_d3_select <= "11";
            ram_a_select <= '1';
            t1_select <= '0';
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

            -- Next state logic
            if (ir_out(15 downto 12) = "0001") then
                next_state <= s2;
            elsif (ir_out(15 downto 12) = "0000") then
                next_state <= s2;
            elsif (ir_out(15 downto 12) = "0010") then
                next_state <= s2;
            elsif (ir_out(15 downto 12) = "0011") then
                next_state <= s2;
            elsif (ir_out(15 downto 12) = "0111") then
                next_state <= s2;
            elsif (ir_out(15 downto 12) = "0101") then
                next_state <= s2;
            elsif (ir_out(15 downto 12) = "1001") then
                next_state <= s12;
            elsif (ir_out(15 downto 12) = "1010") then
                next_state <= s12;
            elsif (ir_out(15 downto 12) = "1000") then
                next_state <= s2;
            else 
                next_state <= startup;
                end if;

            report "s1";
                    
        when s2 =>                
            -- Control signal assignment
            rf_a1_select <= "10";
            rf_a3_select <= "00";
            rf_d3_select <= "01";
            ram_a_select <= '0';
            t1_select <= '0';
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

            -- Next state logic
            if ((ir_out(15 downto 12) & ir_out(2 downto 0)) = "0001000") then
                -- ADD 
                next_state <= s3;
            elsif ((ir_out(15 downto 12) & ir_out(2 downto 0)) = "0001010") then
                -- ADC
                if (cc_out(0) = '1') then
                    next_state <= s3;
                else 
                    next_state <= s0;
                    end if;
            elsif ((ir_out(15 downto 12) & ir_out(2 downto 0)) = "0001001") then
                -- ADZ
                if (cc_out(1) = '1') then
                    next_state <= s3;
                else 
                    next_state <= s0;
                    end if;
            elsif ((ir_out(15 downto 12) & ir_out(2 downto 0)) = "0001011") then
                -- ADL 
                next_state <= s6;
            elsif (ir_out(15 downto 12) = "0000") then
                -- ADI
                next_state <= s7;
            elsif ((ir_out(15 downto 12) & ir_out(2 downto 0)) = "0010000") then
                -- NDU
                next_state <= s3;
            elsif ((ir_out(15 downto 12) & ir_out(2 downto 0)) = "0010010") then
                -- NDC
                if (cc_out(0) = '1') then
                    next_state <= s3;
                else 
                    next_state <= s0;
                    end if;
            elsif ((ir_out(15 downto 12) & ir_out(2 downto 0)) = "0010001") then
                -- NDZ
                if (cc_out(1) = '1') then
                    next_state <= s3;
                else 
                    next_state <= s0;
                    end if;
            elsif (ir_out(15 downto 12) = "0011") then
                -- LHI
                next_state <= s9;
            elsif (ir_out(15 downto 12) = "0111") then
                -- LW
                next_state <= s10;
            elsif (ir_out(15 downto 12) = "0101") then
                -- SW
                next_state <= s10;
            elsif (ir_out(15 downto 12) = "1001") then
                -- JAL
                next_state <= s0;
            elsif (ir_out(15 downto 12) = "1011") then
                -- JRI
                next_state <= s0;
            else 
                next_state <= startup;
                end if;

            report "s2";
                    
        when s3 =>                
            -- Control signal assignment
            rf_a1_select <= "10";
            rf_a3_select <= "01";
            rf_d3_select <= "11";
            ram_a_select <= '1';
            t1_select <= '0';
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

            -- Next state logic
            if (ir_out(15 downto 12) = "0001") then
                -- ADD, ADC, ADZ only (ADL, ADI don't occur)
                next_state <= s4;
            elsif (ir_out(15 downto 12) = "0010") then
                -- NDU, NDC, NDZ
                next_state <= s4;
            elsif (ir_out(15 downto 12) = "1000") then
                -- BEQ
                next_state <= s4;
            else 
                next_state <= startup;
                end if;
                        
            report "s3";

        when s4 =>
            rf_a1_select <= "00";
            rf_a3_select <= "01";
            rf_d3_select <= "01";
            ram_a_select <= '0';
            t1_select <= '1';
            t2_select <= "10";
            alu_b_select <= '0';
            t3_select <= '0';
            
            -- Control signal assignment and next state logic
            if (ir_out(15 downto 12) = "0001") then
                -- ADD, ADC, ADZ, ADL
                alu_select <= "00";
                cc_zero_load <= '1';
                cc_carry_load <= '1';

                next_state <= s5;

            elsif (ir_out(15 downto 12) = "0000") then
                -- ADI
                alu_select <= "00";
                cc_zero_load <= '1';
                cc_carry_load <= '1';

                next_state <= s8;

            elsif (ir_out(15 downto 12) = "0010") then
                -- NDU, NDC, NDZ
                alu_select <= "01";
                cc_zero_load <= '1';
                cc_carry_load <= '0';

                next_state <= s5;

            elsif (ir_out(15 downto 12) = "0111") then
                -- LW
                alu_select <= "00";
                cc_zero_load <= '0';
                cc_carry_load <= '0';

                next_state <= s11;

            elsif (ir_out(15 downto 12) = "0101") then
                -- SW
                alu_select <= "00";
                cc_zero_load <= '0';
                cc_carry_load <= '0';

                next_state <= s13;

            elsif (ir_out(15 downto 12) = "1001") then
                -- JAL
                alu_select <= "00";
                cc_zero_load <= '0';
                cc_carry_load <= '0';

                next_state <= s2;

            elsif (ir_out(15 downto 12) = "1011") then
                -- JRI
                alu_select <= "00";
                cc_zero_load <= '0';
                cc_carry_load <= '0';

                next_state <= s2;

            elsif (ir_out(15 downto 12) = "1000") then
                -- BEQ                
                alu_select <= "10";
                cc_zero_load <= '0';
                cc_carry_load <= '0';
                if (flags(1) = '1') then
                    next_state <= s16;
                else
                    next_state <= s1;
                    end if;
            
            else
                alu_select <= "11";
                cc_zero_load <= '0';
                cc_carry_load <= '0';

                next_state <= startup;
                end if;
            
            wr_enable <= '0';
            rf_load <= '0';
            t_load <= '0';
            t1_load <= '1';
            t2_load <= '1';
            t3_load <= '1';
            ir_load <= '0';
                    
            report "s4";

        when s5 =>
            -- Control signal assignment
            rf_a1_select <= "10";
            rf_a3_select <= "01";
            rf_d3_select <= "01";
            ram_a_select <= '1';
            t1_select <= '0';
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

            -- Next state logic
            next_state <= s0;
                    
            report "s5";

        when s6 =>
            -- Control signal assignment
            rf_a1_select <= "10";
            rf_a3_select <= "01";
            rf_d3_select <= "01";
            ram_a_select <= '0';
            t1_select <= '0';
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

            -- Next state logic
            next_state <= s4;
                    
            report "s6";

        when s7 =>
            -- Control signal assignment
            rf_a1_select <= "10";
            rf_a3_select <= "01";
            rf_d3_select <= "01";
            ram_a_select <= '1';
            t1_select <= '0';
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

            -- Next state logic
            next_state <= s4;
                    
            report "s7";					 

        when s8 =>
            -- Control signal assignment
            rf_a1_select <= "01";
            rf_a3_select <= "10";
            rf_d3_select <= "01";
            ram_a_select <= '0';
            t1_select <= '0';
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

            -- Next state logic
            next_state <= s0;
                    
            report "s8";

        when s9 =>
            -- Control signal assignment
            rf_a1_select <= "10";
            rf_a3_select <= "11";
            rf_d3_select <= "10";
            ram_a_select <= '1';
            t1_select <= '0';
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

            -- Next state logic
            next_state <= s0;
                    
            report "s9";

        when s10 =>
            -- Control signal assignment
            rf_a1_select <= "01";
            rf_a3_select <= "00";
            rf_d3_select <= "00";
            ram_a_select <= '0';
            t1_select <= '0';
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

            -- Next state logic
            next_state <= s4;

            report "s10";

        when s11 =>
            -- Control signal assignment
            rf_a1_select <= "10";
            rf_a3_select <= "01";
            rf_d3_select <= "10";
            ram_a_select <= '1';
            t1_select <= '0';
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

            -- Next state logic
            next_state <= s12;

            report "s11";

        when s12 =>            
            -- Control signal assignment
            rf_a1_select <= "01";
            rf_a3_select <= "11";
            rf_d3_select <= "01";
            ram_a_select <= '0';
            t1_select <= '0';
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

            -- Next state logic
            if (ir_out(15 downto 12) = "0111") then
                next_state <= s0;
            elsif (ir_out(15 downto 12) = "1001") then
                next_state <= s4;
            elsif (ir_out(15 downto 12) = "1010") then
                next_state <= s14;
                end if;

            report "s12";

        when s13 =>
            -- Control signal assignment
            rf_a1_select <= "10";
            rf_a3_select <= "11";
            rf_d3_select <= "00";
            ram_a_select <= '1';
            t1_select <= '0';
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

            -- Next state logic
            next_state <= s0;

            report "s13";

        when s14 =>
            -- Control signal assignment
            rf_a1_select <= "01";
            rf_a3_select <= "00";
            rf_d3_select <= "00";
            ram_a_select <= '0';
            t1_select <= '0';
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

            -- Next state logic
            next_state <= s0;

            report "s14";
            
        when s15 =>
            -- Control signal assignment
            rf_a1_select <= "10";
            rf_a3_select <= "01";
            rf_d3_select <= "00";
            ram_a_select <= '1';
            t1_select <= '0';
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

            -- Next state logic
            next_state <= s4;

            report "s15";

        when s16 =>
            rf_a1_select <= "00";
            rf_a3_select <= "01";
            rf_d3_select <= "01";
            ram_a_select <= '0';
            t1_select <= '0';
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

            next_state <= s2;
                    
            report "s16";
            
        when others =>
            rf_a1_select <= "10";
            rf_a3_select <= "01";
            rf_d3_select <= "00";
            ram_a_select <= '1';
            t2_select <= "11";
            alu_b_select <= '0';
            t3_select <= '1';
            alu_select <= "11";
            cc_zero_load <= '0';
            cc_carry_load <= '0';
            wr_enable <= '0';
            rf_load <= '0';
            t1_load <= '0';
            t2_load <= '0';
            t3_load <= '0';
            ir_load <= '0';
            
            next_state <= s0;

		end case;
    end process state_transition_process;

    -- Port mapping
	-- alu_a <= t1_out;
	 
	alu_b_mux: Multiplexer16bit2to1 port map(
        in0 => t2_out,
        in1 => "0000000000000001",
        sel => alu_b_select,
        sel_out => alu_b);
    
    alu_unit: ALU port map(
        A => t1_out, 
        B => alu_b, 
        control_in => alu_select, 
        C => alu_c, 
        control_out => flags);

    CC: FlagRegister port map(
        clock => clock, 
        zero_load => cc_zero_load, 
        carry_load => cc_carry_load, 
        input => flags, 
        output => cc_out);
	
	ram_a_mux: Multiplexer16bit2to1 port map(
        in0 => rf_d1,
        in1 => t3_out,
        sel => ram_a_select,
        sel_out => mem_a);
		  
	-- mem_d_in <= rf_d1;
		  
	ram_unit: RAM port map(
        clk => clock,
        write_enable => wr_enable,
		address => mem_a,
		data_in => rf_d1,
		data_out => mem_d_out);
	 
	-- t1_in <= rf_d1; 
		
    T: Register2Byte port map(
        clock => clock, 
        load => t_load, 
        input => rf_d1, 
        output => t_out);
	
    t1_mux: Multiplexer16bit2to1 port map(
        in0 => rf_d1,
        in1 => t_out,
        sel => t1_select,
        sel_out => t1_in);

	T1: Register2Byte port map(
        clock => clock, 
        load => t1_load, 
        input => t1_in, 
        output => t1_out);	

	t2_mux: Multiplexer16bit4to1 port map(
        in0 => rf_d2,
        in1 => shift_out,
        in2 => se6_out,
        in3 => se9_out,
        sel => t2_select,
        sel_out => t2_in);
		  
    T2: Register2Byte port map(
        clock => clock, 
        load => t2_load, 
        input => t2_in, 
        output => t2_out);
		  
	t3_mux: Multiplexer16bit2to1 port map(
        in0 => alu_c,
        in1 => mem_d_out,
        sel => t3_select,
        sel_out => t3_in);

    T3: Register2Byte port map(
        clock => clock,
        load => t3_load, 
        input => t3_in, 
        output => t3_out);
		  
	-- ir_in <= mem_d_out;

    IR: Register2Byte port map(
        clock => clock, 
        load => ir_load, 
        input => mem_d_out, 
        output => ir_out);
		
    rf_a1_mux: Multiplexer3bit4to1 port map(
        in0 => "111",
        in1 => ir_out(8 downto 6),
        in2 => ir_out(11 downto 9),
        in3 => "111",
        sel => rf_a1_select,
        sel_out => rf_a1);
        
    -- rf_a2 <= ir_out(8 downto 6);
	 
    rf_a3_mux: Multiplexer3bit4to1 port map(
        in0 => "111",
        in1 => ir_out(5 downto 3),
        in2 => ir_out(8 downto 6),
        in3 => ir_out(11 downto 9),
        sel => rf_a3_select,
        sel_out => rf_a3);	 
        
    rf_d3_mux: Multiplexer16bit4to1 port map(
        in0 => rf_d1,
        in1 => t3_out,
        in2 => za_out,
        in3 => "0000000000000000",
        sel => rf_d3_select,
        sel_out => rf_d3);	 
        
    RF: RegisterBank port map(
        clock => clock, 
        load => rf_load, 
        address_in => rf_a3, 
        data_in => rf_d3, 
        address_out_1 => rf_a1, 
        data_out_1 => rf_d1, 
        address_out_2 => ir_out(8 downto 6), 
        data_out_2 => rf_d2);

	-- se6_in <= ir_out(5 downto 0);
		  
    SE6: SignExtender6Bit port map(
        data_in => ir_out(5 downto 0), 
        data_out => se6_out);

	-- se9_in <= ir_out(8 downto 0);
		  
    SE9: SignExtender9Bit port map(
        data_in => ir_out(8 downto 0), 
        data_out => se9_out);

	-- za_in <= ir_out(8 downto 0);
		  
    ZA: ZeroAppender port map(
        data_in => ir_out(8 downto 0), 
        data_out => za_out);
		  
	-- shift_in <= rf_d2;

    Shifter: BitShifter port map(
        data_in => rf_d2, 
        data_out => shift_out);
end architecture behavioural;
