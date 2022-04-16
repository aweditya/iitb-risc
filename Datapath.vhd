-- Datapath
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Datapath is port(
    clock: in std_logic;
    reset: in std_logic;
    dummyout: out std_logic
);
end entity Datapath;

architecture behavioural of Datapath is
    -- Component declarations
    component register_bank is port( 
        clock: in std_logic;
        load: in std_logic; 
        address_in: in std_logic_vector(0 to 2);
        data_in: in std_logic_vector(0 to 15);
        address_out_1: in std_logic_vector(0 to 2);
        data_out_1: out std_logic_vector(0 to 15);
        address_out_2: in std_logic_vector(0 to 2);
        data_out_2: out std_logic_vector(0 to 15)
    );
    end component register_bank;

    component register2bit is port( 
        clock: in std_logic;
        load: in std_logic; 
        input: in std_logic_vector(0 to 1);
        output : out std_logic_vector(0 to 1)
    );
    end component register2bit;

    component alu_16 is
		generic(
			  operand_width : integer:=16;
			  control_bits : integer:=2
			  );
		port (
			  A: in std_logic_vector(0 to operand_width-1);
			  B: in std_logic_vector(0 to operand_width-1);
			  control_in: in std_logic_vector(0 to control_bits-1);
			  C: out std_logic_vector(0 to operand_width-1);
		control_out: out std_logic_vector(0 to control_bits-1)
		 ) ;
    end component alu_16;

    component register2byte is port( 
        clock: in std_logic;
        load: in std_logic; 
        input: in std_logic_vector(0 to 15);
        output : out std_logic_vector(0 to 15)
    );
    end component register2byte;

    component RAM is port(
	    write_enable: in std_logic;
	    address: in std_logic_vector(0 to 15);     -- RAM address
	    data_in: in std_logic_vector(0 to 15);     -- Write data
	    data_out: out std_logic_vector(0 to 15)    -- Read data
    );
    end component RAM;

    -- Register bank signals
    signal RF_load: std_logic;
    signal RF_A1, RF_A2, RF_A3: std_logic_vector(0 to 2);
    signal RF_D1, RF_D2, RF_D3: std_logic_vector(0 to 15);
    
    -- CC signals
    signal CC_load: std_logic;
    signal CC_in, CC_out: std_logic_vector(0 to 1);

    -- T1 signals
    signal T1_load: std_logic;
    signal T1_in, T1_out: std_logic_vector(0 to 15);

    -- T2 signals;
    signal T2_load: std_logic;
    signal T2_in, T2_out: std_logic_vector(0 to 15);

    -- T3 signals
    signal T3_load: std_logic;
    signal T3_in, T3_out: std_logic_vector(0 to 15);
    
    -- IR signals
    signal IR_load: std_logic;
    signal IR_in, IR_out: std_logic_vector(0 to 15);
    
    -- RAM signals
    signal wr_enable: std_logic;
    signal mem_D_in, mem_D_out, mem_A: std_logic_vector(0 to 15);

    -- ALU signals
    signal ALU_A, ALU_B, ALU_C: std_logic_vector(0 to 15);
    signal alu_select: std_logic_vector(0 to 1);
    signal flags: std_logic_vector(0 to 1);
    
	 
	 type state is (s0, s1, s2, s3, s4, s5);
    signal present_state, next_state: state:= s0;
begin   
     dummyout <= '1';
    -- State update on positive clock edge
    clock_process: process(clock) 
    begin  
            if(rising_edge(clock)) then 
                present_state <= next_state; 
        end if;
        
    end process clock_process;
    
    state_transition_process: process(present_state, reset, clock)
    begin	 
        if (reset = '1') then
            next_state <= s0;
        else 
            case present_state is
                -- Instruction fetch
                when s0 => 
                    RF_A1 <= "111";

                    RF_load <= '0';
                    CC_load <= '0';
                    T1_load <= '0';
                    T2_load <= '0';
                    T3_load <= '0';
                    IR_load <= '0';
                    wr_enable <= '0'; 

                    next_state <= s1;
                    
                -- PC increment
                when s1 =>
                    ALU_A <= T1_out;
                    ALU_B <= "1000000000000000";
                    T3_in <= ALU_C;

                    RF_load <= '0';
                    CC_load <= '0';
                    T1_load <= '0';
                    T2_load <= '0';
                    T3_load <= '1';
                    IR_load <= '0';
                    wr_enable <= '0';

                    next_state <= s2;

                -- Write back to PC
                when s2 => 
                    RF_D3 <= T3_out;
                    RF_A3 <= "111";

                    RF_load <= '1';
                    CC_load <= '0';
                    T1_load <= '0';
                    T2_load <= '0';
                    T3_load <= '0';
                    IR_load <= '0';
                    wr_enable <= '0';

                    next_state <= s3;

                -- Read the operands
                when s3 => 
                    RF_A1 <= IR_out(4 to 6);
                    RF_A2 <= IR_out(7 to 9);
                    T1_in <= RF_D1;
                    T2_in <= RF_D2;

                    RF_load <= '0';
                    CC_load <= '0';
                    T1_load <= '1';
                    T2_load <= '1';
                    T3_load <= '0';
                    IR_load <= '0';
                    wr_enable <= '0';

                    next_state <= s4;

                -- Send the operands to ALU and compute the result
                when s4 => 
                    ALU_A <= T1_out;
                    ALU_B <= T2_out;
                    alu_select <= "00";
                    CC_in <= flags;
                    T3_in <= ALU_C;

                    RF_load <= '0';
                    CC_load <= '1';
                    T1_load <= '0';
                    T2_load <= '0';
                    T3_load <= '1';
                    IR_load <= '0';
                    wr_enable <= '0';

                    next_state <= s5;

                -- Write the result back to the register file
                when s5 => 
                    RF_D3 <= T3_out;
                    RF_A3 <= IR_out(10 to 12);

                    RF_load <= '1';
                    CC_load <= '0';
                    T1_load <= '0';
                    T2_load <= '0';
                    T3_load <= '0';
                    IR_load <= '0';
                    wr_enable <= '0';

                    next_state <= s0;

                when others =>
                    next_state <= s0;    
            end case;
        end if;
    end process state_transition_process;

-----------------------------------------------------------------------------------------

    ALU: alu_16 
        port map(A => ALU_A, B => ALU_B, control_in =>alu_select, C =>ALU_C, control_out => flags );

    T1: register2byte
        port map(clock => clock, load =>T1_load, input => T1_in, output => T1_out);

    T2: register2byte
        port map(clock => clock, load => T2_load, input => T2_in, output => T2_out);

    T3: register2byte
        port map(clock => clock, load => T3_load, input => T3_in, output => T3_out);

    IR: register2byte
        port map(clock => clock, load => IR_load, input => IR_in, output => IR_out);
        
    RF: register_bank
        port map(clock => clock, load => RF_load, address_in => RF_A3, data_in => RF_D3, address_out_1 => RF_A1, data_out_1 => RF_D1, address_out_2 => RF_A2, data_out_2 => RF_D2);
    
    CC: register2bit
        port map(clock => clock , load => CC_load,  input => CC_in , output => CC_out );
-----------------------------------------------------------------------------------------

end architecture behavioural;
