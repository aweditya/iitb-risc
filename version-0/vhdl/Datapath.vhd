-- Datapath
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity Datapath is port(
    clock: in std_logic;
    reset: in std_logic;
    dummyout: out std_logic_vector(0 to 15)
);
end entity Datapath;

architecture behavioural of Datapath is
    -- Component declarations
    component sign_extender_6bit is port(
        data_in: in std_logic_vector(0 to 5); 
        data_out: out std_logic_vector(0 to 15)
    );
    end component sign_extender_6bit;

    component sign_extender_9bit is port(
        data_in: in std_logic_vector(0 to 8); 
        data_out: out std_logic_vector(0 to 15)
    );
    end component sign_extender_9bit;

    component ZeroAppender is port(
        data_in: in std_logic_vector(0 to 8);
        data_out: out std_logic_vector(0 to 15)
    );
    end component ZeroAppender;

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
	 
	 component one_shift is port(
	data_in: in std_logic_vector(0 to 15); 
	data_out: out std_logic_vector(0 to 15)
);
	 end component one_shift;

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

    -- T signals
    signal T_load: std_logic;
    signal T_in, T_out: std_logic_vector(0 to 15);
    
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
    
    -- SE6 signals
    signal SE6_in: std_logic_vector(0 to 5);
    signal SE6_out: std_logic_vector(0 to 15);

    -- SE9 signals
    signal SE9_in: std_logic_vector(0 to 8);
    signal SE9_out: std_logic_vector(0 to 15);

    -- ZA signals
    signal ZA_in: std_logic_vector(0 to 9);
    signal ZA_out: std_logic_vector(0 to 15);
	 
    --One bit shifter signals
	 signal one_shift_in: std_logic_vector(0 to 15);
	 signal one_shift_out: std_logic_vector(0 to 15);
	 
	 --Zero append signals
	 signal APP_in: std_logic_vector(0 to 8);
	 signal APP_out: std_logic_vector(0 to 15);
    
	 
	 type state is (s0, s1, s2, s3, s4, s5, s6, s7, s8, s9, s10, s11, s12, s13, s14, s15, 
	 s16, s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28, s29, s30, s31, s32, s33, s34, s35, s36, s37, 
	 s38, s39, s40, s41, s42, s43, s44, s45, s46, s47, s48, s49, s50);
    signal present_state, next_state: state:= s0;
begin   
     dummyout <= ALU_C;
    -- State update on positive clock edge
    clock_process: process(clock) 
    begin  
            if(rising_edge(clock)) then 
                present_state <= next_state; 
        end if;
        
    end process clock_process;
    
    state_transition_process: process(present_state)
    begin	 
        if (reset = '1') then
            next_state <= s0;
        else 
            case present_state is
                -- Instruction fetch
                when s0 => 
                    RF_A1 <= "111";
						  mem_A <= RF_D1;
						  T1_in <= RF_D1;
						  IR_in <= mem_D_out;

                    RF_load <= '0';
                    CC_load <= '0';
                    T1_load <= '1';
                    T2_load <= '0';
                    T3_load <= '0';
                    IR_load <= '1';
                    wr_enable <= '0'; 

                    if ((IR_out(0 to 3) & IR_out(13 to 15)) = "0001000") then
                        --ADD
                        next_state <= s1;
                    elsif ((IR_out(0 to 3) & IR_out(13 to 15)) = "0001010") then
                        --ADC
	                    next_state <= s1;
                    elsif ((IR_out(0 to 3) & IR_out(13 to 15)) = "0001001") then
                        -- ADZ
	                    next_state <= s1;
                    elsif ((IR_out(0 to 3) & IR_out(13 to 15)) = "0001011") then
                        --ADL
                        next_state <= s1;
                    elsif (IR_out(0 to 3) = "0000") then
                        --ADI
                        next_state <= s1;
                    elsif ((IR_out(0 to 3) & IR_out(13 to 15)) = "0010000") then
                        --NDU
                        next_state <= s1;
                    elsif ((IR_out(0 to 3) & IR_out(13 to 15)) = "0010010") then
                        --NDC
                        next_state <= s1;
                    elsif ((IR_out(0 to 3) & IR_out(13 to 15)) = "0010001") then
                        --NDZ
                        next_state <= s1;
                    elsif (IR_out(0 to 3) = "0000") then
                        --LHI
                        next_state <= s1;
                    elsif (IR_out(0 to 3) = "0111") then
                        --LW
                        next_state <= s1;
                    elsif (IR_out(0 to 3) = "0101") then
                        --SW
                        next_state <= s1;
                    elsif (IR_out(0 to 3) = "1100") then
                        --LM
                        next_state <= s1;
                    elsif (IR_out(0 to 3) = "1101") then
                        --SM
                        next_state <= s1;
                    elsif (IR_out(0 to 3) = "1000") then
                        --BEQ 
                        next_state <= s10;
                    elsif (IR_out(0 to 3) = "1001") then
                        --JAL 
                        next_state <= s1;
                    elsif (IR_out(0 to 3) = "1010") then
                        --JLR
                        next_state <= s1;
                    elsif (IR_out(0 to 3) = "1011") then
                        --JRI 
                        next_state <= s6;
                    end if;
                    
                    
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

                    if ((IR_out(0 to 3) & IR_out(13 to 15)) = "0001000") then
                        --ADD
                        next_state <= s2;
                    elsif ((IR_out(0 to 3) & IR_out(13 to 15)) = "0001010") then
                        --ADC
	                    next_state <= s2;
                    elsif ((IR_out(0 to 3) & IR_out(13 to 15)) = "0001001") then
                        -- ADZ
	                    next_state <= s2;
                    elsif ((IR_out(0 to 3) & IR_out(13 to 15)) = "0001011") then
                        --ADL
                        next_state <= s2;
                    elsif (IR_out(0 to 3) = "0000") then
                        --ADI
                        next_state <= s2;
                    elsif ((IR_out(0 to 3) & IR_out(13 to 15)) = "0010000") then
                        --NDU
                        next_state <= s2;
                    elsif ((IR_out(0 to 3) & IR_out(13 to 15)) = "0010010") then
                        --NDC
                        next_state <= s2;
                    elsif ((IR_out(0 to 3) & IR_out(13 to 15)) = "0010001") then
                        --NDZ
                        next_state <= s2;
                    elsif (IR_out(0 to 3) = "0000") then
                        --LHI
                        next_state <= s2;
                    elsif (IR_out(0 to 3) = "0111") then
                        --LW
                        next_state <= s2;
                    elsif (IR_out(0 to 3) = "0101") then
                        --SW
                        next_state <= s2;
                    elsif (IR_out(0 to 3) = "1100") then
                        --LM
                        next_state <= s9;
                    elsif (IR_out(0 to 3) = "1101") then
                        --SM
                        next_state <= s9;
                    elsif (IR_out(0 to 3) = "1000") then
                        --BEQ 
                        next_state <= s0;
                    elsif (IR_out(0 to 3) = "1001") then
                        --JAL 
                        next_state <= s7;
                    elsif (IR_out(0 to 3) = "1010") then
                        --JLR
                        next_state <= s8;
                    elsif (IR_out(0 to 3) = "1011") then
                        --JRI 
                        next_state <= s0;
                    end if;
                    

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

                    if ((IR_out(0 to 3) & IR_out(13 to 15)) = "0001000") then
                        --ADD
                        next_state <= s3;
                    elsif ((IR_out(0 to 3) & IR_out(13 to 15)) = "0001010") then
                        --ADC
	                    next_state <= s11;
                    elsif ((IR_out(0 to 3) & IR_out(13 to 15)) = "0001001") then
                        -- ADZ
	                    next_state <= s12;
                    elsif ((IR_out(0 to 3) & IR_out(13 to 15)) = "0001011") then
                        --ADL
                        next_state <= s13;
                    elsif (IR_out(0 to 3) = "0000") then
                        --ADI
                        next_state <= s14;
                    elsif ((IR_out(0 to 3) & IR_out(13 to 15)) = "0010000") then
                        --NDU
                        next_state <= s17;
                    elsif ((IR_out(0 to 3) & IR_out(13 to 15)) = "0010010") then
                        --NDC
                        next_state <= s11;
                    elsif ((IR_out(0 to 3) & IR_out(13 to 15)) = "0010001") then
                        --NDZ
                        next_state <= s12;
                    elsif (IR_out(0 to 3) = "0000") then
                        --LHI
                        next_state <= s19;
                    elsif (IR_out(0 to 3) = "0111") then
                        --LW
                        next_state <= s20;
                    elsif (IR_out(0 to 3) = "0101") then
                        --SW
                        next_state <= s20;
                    elsif (IR_out(0 to 3) = "1100") then
                        --LM
                        next_state <= s0;
                    elsif (IR_out(0 to 3) = "1101") then
                        --SM
                        next_state <= s0;
                    elsif (IR_out(0 to 3) = "1000") then
                        --BEQ 
                        next_state <= s0;
                    elsif (IR_out(0 to 3) = "1001") then
                        --JAL 
                        next_state <= s0;
                    elsif (IR_out(0 to 3) = "1010") then
                        --JLR
                        next_state <= s0;
                    elsif (IR_out(0 to 3) = "1011") then
                        --JRI 
                        next_state <= s0;
                    end if;

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

                    if ((IR_out(0 to 3) & IR_out(13 to 15)) = "0001000") then
                        --ADD
                        next_state <= s4;
                    elsif ((IR_out(0 to 3) & IR_out(13 to 15)) = "0001010") then
                        --ADC
	                    next_state <= s0;
                    elsif ((IR_out(0 to 3) & IR_out(13 to 15)) = "0001001") then
                        -- ADZ
	                    next_state <= s0;
                    elsif ((IR_out(0 to 3) & IR_out(13 to 15)) = "0001011") then
                        --ADL
                        next_state <= s0;
                    elsif (IR_out(0 to 3) = "0000") then
                        --ADI
                        next_state <= s0;
                    elsif ((IR_out(0 to 3) & IR_out(13 to 15)) = "0010000") then
                        --NDU
                        next_state <= s0;
                    elsif ((IR_out(0 to 3) & IR_out(13 to 15)) = "0010010") then
                        --NDC
                        next_state <= s0;
                    elsif ((IR_out(0 to 3) & IR_out(13 to 15)) = "0010001") then
                        --NDZ
                        next_state <= s0;
                    elsif (IR_out(0 to 3) = "0000") then
                        --LHI
                        next_state <= s0;
                    elsif (IR_out(0 to 3) = "0111") then
                        --LW
                        next_state <= s0;
                    elsif (IR_out(0 to 3) = "0101") then
                        --SW
                        next_state <= s0;
                    elsif (IR_out(0 to 3) = "1100") then
                        --LM
                        next_state <= s0;
                    elsif (IR_out(0 to 3) = "1101") then
                        --SM
                        next_state <= s0;
                    elsif (IR_out(0 to 3) = "1000") then
                        --BEQ 
                        next_state <= s0;
                    elsif (IR_out(0 to 3) = "1001") then
                        --JAL 
                        next_state <= s0;
                    elsif (IR_out(0 to 3) = "1010") then
                        --JLR
                        next_state <= s0;
                    elsif (IR_out(0 to 3) = "1011") then
                        --JRI 
                        next_state <= s0;
                    end if;

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

                    if ((IR_out(0 to 3) & IR_out(13 to 15)) = "0001000") then
                        --ADD
                        next_state <= s5;
                    elsif ((IR_out(0 to 3) & IR_out(13 to 15)) = "0001010") then
                        --ADC
	                    next_state <= s9;
                    elsif ((IR_out(0 to 3) & IR_out(13 to 15)) = "0001001") then
                        -- ADZ
	                    next_state <= s5;
                    elsif ((IR_out(0 to 3) & IR_out(13 to 15)) = "0001011") then
                        --ADL
                        next_state <= s5;
                    elsif (IR_out(0 to 3) = "0000") then
                        --ADI
                        next_state <= s0;
                    elsif ((IR_out(0 to 3) & IR_out(13 to 15)) = "0010000") then
                        --NDU
                        next_state <= s0;
                    elsif ((IR_out(0 to 3) & IR_out(13 to 15)) = "0010010") then
                        --NDC
                        next_state <= s0;
                    elsif ((IR_out(0 to 3) & IR_out(13 to 15)) = "0010001") then
                        --NDZ
                        next_state <= s0;
                    elsif (IR_out(0 to 3) = "0000") then
                        --LHI
                        next_state <= s0;
                    elsif (IR_out(0 to 3) = "0111") then
                        --LW
                        next_state <= s0;
                    elsif (IR_out(0 to 3) = "0101") then
                        --SW
                        next_state <= s0;
                    elsif (IR_out(0 to 3) = "1100") then
                        --LM
                        next_state <= s0;
                    elsif (IR_out(0 to 3) = "1101") then
                        --SM
                        next_state <= s0;
                    elsif (IR_out(0 to 3) = "1000") then
                        --BEQ 
                        next_state <= s0;
                    elsif (IR_out(0 to 3) = "1001") then
                        --JAL 
                        next_state <= s0;
                    elsif (IR_out(0 to 3) = "1010") then
                        --JLR
                        next_state <= s0;
                    elsif (IR_out(0 to 3) = "1011") then
                        --JRI 
                        next_state <= s0;
                    end if;

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

                    if ((IR_out(0 to 3) & IR_out(13 to 15)) = "0001000") then
                        --ADD
                        next_state <= s0;
                    elsif ((IR_out(0 to 3) & IR_out(13 to 15)) = "0001010") then
                        --ADC
	                    next_state <= s0;
                    elsif ((IR_out(0 to 3) & IR_out(13 to 15)) = "0001001") then
                        -- ADZ
	                    next_state <= s0;
                    elsif ((IR_out(0 to 3) & IR_out(13 to 15)) = "0001011") then
                        --ADL
                        next_state <= s0;
                    elsif (IR_out(0 to 3) = "0000") then
                        --ADI
                        next_state <= s0;
                    elsif ((IR_out(0 to 3) & IR_out(13 to 15)) = "0010000") then
                        --NDU
                        next_state <= s0;
                    elsif ((IR_out(0 to 3) & IR_out(13 to 15)) = "0010010") then
                        --NDC
                        next_state <= s0;
                    elsif ((IR_out(0 to 3) & IR_out(13 to 15)) = "0010001") then
                        --NDZ
                        next_state <= s0;
                    elsif (IR_out(0 to 3) = "0000") then
                        --LHI
                        next_state <= s0;
                    elsif (IR_out(0 to 3) = "0111") then
                        --LW
                        next_state <= s0;
                    elsif (IR_out(0 to 3) = "0101") then
                        --SW
                        next_state <= s0;
                    elsif (IR_out(0 to 3) = "1100") then
                        --LM
                        next_state <= s0;
                    elsif (IR_out(0 to 3) = "1101") then
                        --SM
                        next_state <= s0;
                    elsif (IR_out(0 to 3) = "1000") then
                        --BEQ 
                        next_state <= s0;
                    elsif (IR_out(0 to 3) = "1001") then
                        --JAL 
                        next_state <= s0;
                    elsif (IR_out(0 to 3) = "1010") then
                        --JLR
                        next_state <= s0;
                    elsif (IR_out(0 to 3) = "1011") then
                        --JRI 
                        next_state <= s0;
                    end if;
                
                    --- S6 onwards
                    when s6=>
						  RF_A1<= IR_out(4 to 6);
						  T1_in <= RF_D1;
						  SE9_in <= IR_out(7 to 15);
						  T2_in <= SE9_out;
					     
						  RF_load <= '0';
                    CC_load <= '0';
                    T1_load <= '1';
                    T2_load <= '1';
                    T3_load <= '0';
                    IR_load <= '0';
                    wr_enable <= '0'; 
						  
                    if  (IR_out(0 to 3) = "1011") then
                        --JRI 
                        next_state <= s24;
	 else
	       next_state <= s0;
                    end if;
						 
					 when s7=>
						  RF_D3<= T3_out;
						  RF_A3 <= IR_out(4 to 6);
						  SE9_in <= IR_out(7 to 15);
						  T2_in<= SE9_out;
					     
						  RF_load <= '1';
                    CC_load <= '0';
                    T1_load <= '0';
                    T2_load <= '1';
                    T3_load <= '0';
                    IR_load <= '0';
                    wr_enable <= '0'; 
						  
						  if  (IR_out(0 to 3) = "1001") then
                        --JAL
                        next_state <= s24;
	 else
	       next_state <= s0;
                    end if;
					 
					 when s8=>
						  RF_D3<= T3_out;
						  RF_A3 <= IR_out(4 to 6);
						  RF_A1 <= IR_out(7 to 9);
						  T1_in<= RF_D1;
					     
						  RF_load <= '1';
                    CC_load <= '0';
                    T1_load <= '1';
                    T2_load <= '0';
                    T3_load <= '0';
                    IR_load <= '0';
                    wr_enable <= '0'; 
						  
						   if (IR_out(0 to 3) = "1010") then
                        --JLR
		next_state <= s29;
	else
                next_state <= s0;
                end if;
						  
					 when s9=>
						  RF_D3<= T3_out;
						  RF_A3 <= "111";
						  RF_A1 <= IR_out(4 to 6);
						  T1_in<= RF_D1;
					     
						  RF_load <= '1';
                    CC_load <= '0';
                    T1_load <= '1';
                    T2_load <= '0';
                    T3_load <= '0';
                    IR_load <= '0';
                    wr_enable <= '0'; 
						  
						  if (IR_out(0 to 3) = "1100") then
                        --LM
                        next_state <= s30;
                    elsif (IR_out(0 to 3) = "1101") then
                        --SM
                        next_state <= s48;
                        end if;
						  
					 
					  when s10=>
						  
						  RF_A1 <= IR_out(4 to 6);
						  RF_A2 <= IR_out(7 to 9);
						  T1_in<= RF_D1;
						  T2_in<= RF_D2;
					     
						  RF_load <= '0';
                    CC_load <= '0';
                    T1_load <= '1';
                    T2_load <= '1';
                    T3_load <= '0';
                    IR_load <= '0';
                    wr_enable <= '0'; 
						  
						  if (IR_out(0 to 3) = "1000") then
                        --BEQ 
                        next_state <= s24;
							else
								next_state <= s0;
						end if;
						  
					 
					  when s11=>
						  if( cc_out(0) = '1') then
						  				     
						  RF_A1 <= IR_out(4 to 6);
						  RF_A2 <= IR_out(7 to 9);
						  T1_in<= RF_D1;
						  T2_in<= RF_D2;
					     
						  RF_load <= '0';
                    CC_load <= '0';
                    T1_load <= '1';
                    T2_load <= '1';
                    T3_load <= '0';
                    IR_load <= '0';
                    wr_enable <= '0'; 
						  
						  if ((IR_out(0 to 3) & IR_out(13 to 15)) = "0001010") then
                        --ADC
	                    next_state <= s4;
                    elsif ((IR_out(0 to 3) & IR_out(13 to 15)) = "0010010") then
                        --NDC
                        next_state <= s18;
	                 else
								next_state <= s0;
							end if;
							end if;
					 
						  
					  when s12=>
						  if( cc_out(1) = '1') then
						  				     
						  RF_A1 <= IR_out(4 to 6);
						  RF_A2 <= IR_out(7 to 9);
						  T1_in<= RF_D1;
						  T2_in<= RF_D2;
					     
						  RF_load <= '0';
                    CC_load <= '0';
                    T1_load <= '1';
                    T2_load <= '1';
                    T3_load <= '0';
                    IR_load <= '0';
                    wr_enable <= '0'; 
						  
						  end if;
						  
						  if ((IR_out(0 to 3) & IR_out(13 to 15)) = "0001001") then
                        -- ADZ
	                    next_state <= s4;
							elsif ((IR_out(0 to 3) & IR_out(13 to 15)) = "0010001") then
                        --NDZ
                        next_state <= s18;
							else
							next_state <= s0;
							end if;
						  
						  
					  when s13=>
					     RF_A1 <= IR_out(4 to 6);
						  RF_A2 <= IR_out(7 to 9);
						  T1_in<= RF_D1;
						  one_shift_in<= RF_D2;
						  T2_in<=one_shift_out;
					     
						  RF_load <= '0';
                    CC_load <= '0';
                    T1_load <= '1';
                    T2_load <= '0';
                    T3_load <= '0';
                    IR_load <= '0';
                    wr_enable <= '0'; 
						  
						 if ((IR_out(0 to 3) & IR_out(13 to 15)) = "0001011") then
                        --ADL
                        next_state <= s4;
							else
							next_state <= s0;
								end if;
						
						when s14=>
						  RF_A1 <= IR_out(4 to 6);
						  T1_in<=RF_D1;
					     
						  RF_load <= '0';
                    CC_load <= '0';
                    T1_load <= '1';
                    T2_load <= '0';
                    T3_load <= '0';
                    IR_load <= '0';
                    wr_enable <= '0'; 
						  
						   if (IR_out(0 to 3) = "0000") then
                        --ADI
                        next_state <= s15;
							else
							  next_state <= s0;
							end if;
						  
						 
						 when s15=>
						  ALU_A <= T1_out;
						  SE6_in <= IR_out(10 to 15);
						  ALU_B <= SE6_out;
						  T3_in<= ALU_C;
					     
						  RF_load <= '0';
                    CC_load <= '0';
                    T1_load <= '1';
                    T2_load <= '0';
                    T3_load <= '1';
                    IR_load <= '0';
                    wr_enable <= '0'; 
						  
						  if (IR_out(0 to 3) = "0000") then
                        --ADI
                        next_state <= s16;
							else
							next_state <= s0;
							end if;
						  
						 
						 when s16=>
						  RF_D3 <= T3_out;
						  RF_A3 <= IR_out(7 to 9);
						  
					     
						  RF_load <= '1';
                    CC_load <= '0';
                    T1_load <= '0';
                    T2_load <= '0';
                    T3_load <= '0';
                    IR_load <= '0';
                    wr_enable <= '0'; 
						  
						    if (IR_out(0 to 3) = "0000") then
                        --ADI
                        next_state <= s0;
							else
								next_state <= s0;
							end if;
						  
						 when s17=>
						  RF_A1 <= IR_out(4 to 6);
						  RF_A2 <= IR_out(7 to 9);
						  T1_in<= RF_D1;
						  T2_in <= RF_D2;
					     
						  RF_load <= '0';
                    CC_load <= '0';
                    T1_load <= '1';
                    T2_load <= '1';
                    T3_load <= '0';
                    IR_load <= '0';
                    wr_enable <= '0'; 
						  
						  if ((IR_out(0 to 3) & IR_out(13 to 15)) = "0010000") then
                        --NDU
                        next_state <= s18;
							else
								next_state <= s0;
							end if;
						  
						  
						 when s18=>
						  ALU_A<= T1_out;
						  ALU_B<= T2_out;
						  T3_in <= RF_D1;
						  
					     
						  RF_load <= '0';
                    CC_load <= '0';
                    T1_load <= '0';
                    T2_load <= '0';
                    T3_load <= '1';
                    IR_load <= '0';
                    wr_enable <= '0'; 
						  
						   if ((IR_out(0 to 3) & IR_out(13 to 15)) = "0010000") then
                        --NDU
                        next_state <= s5;
							elsif ((IR_out(0 to 3) & IR_out(13 to 15)) = "0010010") then
                        --NDC
                        next_state <= s5;
							elsif ((IR_out(0 to 3) & IR_out(13 to 15)) = "0010001") then
                        --NDZ
                        next_state <= s5;
							else
							next_state <= s0;
							end if;
						  
						  
						 when s19=> 
						  APP_in<= IR_out(7 to 15);
						  RF_D3 <= APP_out;
						  RF_A3 <= IR_out(4 to 6);
						  
						  RF_load <= '1';
                    CC_load <= '0';
                    T1_load <= '0';
                    T2_load <= '0';
                    T3_load <= '0';
                    IR_load <= '0';
                    wr_enable <= '0'; 
						  
						   if (IR_out(0 to 3) = "0000") then
                        --LHI
                        next_state <= s0;
							else
							next_state <= s0;
							end if;
						  
						  
						 when s20=> 
						  RF_A1<= IR_out(7 to 9);
						  T1_in <= RF_D1;
						  SE6_in<= IR_out(10 to 15);
						  T2_in <= SE6_out;
						  
						  RF_load <= '0';
                    CC_load <= '0';
                    T1_load <= '1';
                    T2_load <= '1';
                    T3_load <= '0';
                    IR_load <= '0';
                    wr_enable <= '0'; 
						  
						   if (IR_out(0 to 3) = "0111") then
                        --LW
                        next_state <= s21;
							elsif (IR_out(0 to 3) = "0101") then
                        --SW
                        next_state <= s24;
							else
							next_state <= s0;
							end if;
	
						  
							
						 when s21=>
						  ALU_A<= T1_out;
						  ALU_B <= T2_out;
						  T3_in <= ALU_C;
						  
						  RF_load <= '0';
                    CC_load <= '0';
                    T1_load <= '0';
                    T2_load <= '0';
                    T3_load <= '1';
                    IR_load <= '0';
                    wr_enable <= '0'; 
						  
						 if (IR_out(0 to 3) = "0111") then
                        --LW
                        next_state <= s22;
						else
								next_state <= s0;
						end if;
						  
						 when s22=> 
						  Mem_A <= T3_out;
						  T3_in<= Mem_D_out;
						  
						  RF_load <= '0';
                    CC_load <= '0';
                    T1_load <= '0';
                    T2_load <= '0';
                    T3_load <= '0';
                    IR_load <= '0';
                    wr_enable <= '1'; 
						  
						  if (IR_out(0 to 3) = "0111") then
                        --LW
                        next_state <= s23;
							else
								next_state <= s0;
							end if;
                    
                    --- S23 onwards
                    when s23 =>
                    RF_A3 <= IR_out(4 to 6);
                    RF_D3 <= T3_out;

                    RF_load <= '1';
                    CC_load <= '0';
                    T1_load <= '0';
                    T2_load <= '0';
                    T3_load <= '0';
                    IR_load <= '0';
                    wr_enable <= '0';

                     if (IR_out(0 to 3) = "0111") then
                        --LW
                        next_state <= s0;
							else
								next_state <= s0;
							end if;
               
					when s24 =>
                    if (cc_out(0) = '1') then 
                        ALU_A <= T1_out;
                        ALU_B <= T2_out;
                        T3_in <= ALU_C;

                        RF_load <= '0';
                        CC_load <= '0';
                        T1_load <= '0';
                        T2_load <= '0';
                        T3_load <= '1';
                        IR_load <= '0';
                        wr_enable <= '0';

                         if (IR_out(0 to 3) = "1000") then
                        --BEQ 
                        next_state <= s27;
								elsif (IR_out(0 to 3) = "1001") then
                        --JAL 
                        next_state <= s29;
								else
								next_state <= s0;
								end if;
                    else
                        RF_load <= '0';
                        CC_load <= '0';
                        T1_load <= '0';
                        T2_load <= '0';
                        T3_load <= '0';
                        IR_load <= '0';
                        wr_enable <= '0';

                        if (IR_out(0 to 3) = "1000") then
                        --BEQ 
                        next_state <= s28;
								elsif (IR_out(0 to 3) = "1001") then
                        --JAL 
                        next_state <= s29;
								else
								next_state <= s0;
								end if;
                    end if;
						  
                when s25 =>
                    RF_A1 <= IR_out(4 to 6);
                    T2_in <= RF_D1;

                    RF_load <= '0';
                    CC_load <= '0';
                    T1_load <= '0';
                    T2_load <= '1';
                    T3_load <= '0';
                    IR_load <= '0';
                    wr_enable <= '0';

                    if (IR_out(0 to 3) = "0101") then
                        --SW
                        next_state <= s26;
							else
								next_state <= s0;
						end if;
						
                when s26 =>
                    mem_A <= T3_out;
                    mem_D_in <= T2_out;
                    
                    RF_load <= '0';
                    CC_load <= '0';
                    T1_load <= '0';
                    T2_load <= '0';
                    T3_load <= '0';
                    IR_load <= '0';
                    wr_enable <= '1';

                    next_state <= s27;
                when s27 =>
                    if (cc_out(0) = '1') then
                        T1_in <= T_out;
                        SE6_in <= IR_out(10 to 15);
                        T2_in <= SE6_out;

                        RF_load <= '0';
                        CC_load <= '0';
                        T1_load <= '1';
                        T2_load <= '1';
                        T3_load <= '0';
                        IR_load <= '0';
                        wr_enable <= '0';

                        next_state <= s28;
                    else 
                        RF_load <= '0';
                        CC_load <= '0';
                        T1_load <= '0';
                        T2_load <= '0';
                        T3_load <= '0';
                        IR_load <= '0';
                        wr_enable <= '0';

                        next_state <= s28;
                    end if;
                when s28 =>
                    if (cc_out(0) = '0') then
                        T1_in <= T_out;
                        T2_in <= "1000000000000000";

                        RF_load <= '0';
                        CC_load <= '0';
                        T1_load <= '1';
                        T2_load <= '1';
                        T3_load <= '0';
                        IR_load <= '0';
                        wr_enable <= '0';

                        next_state <= s29;
                    else 
                        RF_load <= '0';
                        CC_load <= '0';
                        T1_load <= '0';
                        T2_load <= '0';
                        T3_load <= '0';
                        IR_load <= '0';
                        wr_enable <= '0';

                        next_state <= s29;
                    end if;
                when s29 =>
                    RF_D3 <= T3_out;
                    RF_A3 <= "111";
                    
                    RF_load <= '1';
                    CC_load <= '0';
                    T1_load <= '0';
                    T2_load <= '0';
                    T3_load <= '0';
                    IR_load <= '0';
                    wr_enable <= '0';

                    next_state <= s30;
                when s30 =>
                    mem_A <= T1_out;
                    T2_in <= mem_D_out;
                    
                    RF_load <= '0';
                    CC_load <= '0';
                    T1_load <= '0';
                    T2_load <= '1';
                    T3_load <= '0';
                    IR_load <= '0';
                    wr_enable <= '0';

                    next_state <= s31;
                when s31 =>
                    ALU_A <= T1_out;
                    if (IR_out(12)='1') then
                        RF_A3 <= "110";
                        RF_D3 <= T2_out;
                        ALU_B <= "1000000000000000";

                        RF_load <= '1';
                        CC_load <= '0';
                        T1_load <= '0';
                        T2_load <= '0';
                        T3_load <= '0';
                        IR_load <= '0';
                        wr_enable <= '0';

                        next_state <= s32;
                    else 
                        RF_load <= '0';
                        CC_load <= '0';
                        T1_load <= '0';
                        T2_load <= '0';
                        T3_load <= '0';
                        IR_load <= '0';
                        wr_enable <= '0';

                        next_state <= s32;
							end if;
                when s32 =>
                    T3_in <= ALU_C;
                    if (IR_out(14) = '0') then
                        ALU_B <= "0000000000000000";
                        

                        RF_load <= '0';
                        CC_load <= '0';
                        T1_load <= '0';
                        T2_load <= '0';
                        T3_load <= '1';
                        IR_load <= '0';
                        wr_enable <= '0';

                        next_state <= s33;
                    else 
                        RF_load <= '0';
                        CC_load <= '0';
                        T1_load <= '0';
                        T2_load <= '0';
                        T3_load <= '0';
                        IR_load <= '0';
                        wr_enable <= '0';

                        next_state <= s33;
							end if;
                when s33 =>
                    T1_in <= T3_out;

                    RF_load <= '0';
                    CC_load <= '0';
                    T1_load <= '1';
                    T2_load <= '0';
                    T3_load <= '0';
                    IR_load <= '0';
                    wr_enable <= '0';

                    next_state <= s34;
                when s34 =>
                    ALU_A <= T1_out;
                    if (IR_out(10)='1') then
                        RF_A3 <= "101";
                        RF_D3 <= T2_out;
                        ALU_B <= "1000000000000000";

                        RF_load <= '1';
                        CC_load <= '0';
                        T1_load <= '0';
                        T2_load <= '0';
                        T3_load <= '0';
                        IR_load <= '0';
                        wr_enable <= '0';

                        next_state <= s35;
                    else 
                        RF_load <= '0';
                        CC_load <= '0';
                        T1_load <= '0';
                        T2_load <= '0';
                        T3_load <= '0';
                        IR_load <= '0';
                        wr_enable <= '0';

                        next_state <= s35;
							end if;
                when s35 =>
                    ALU_A <= T1_out;
                    if (IR_out(15)='1') then
                        RF_A3 <= "000";
                        RF_D3 <= T2_out;
                        ALU_B <= "1000000000000000";

                        RF_load <= '1';
                        CC_load <= '0';
                        T1_load <= '0';
                        T2_load <= '0';
                        T3_load <= '0';
                        IR_load <= '0';
                        wr_enable <= '0';

                        next_state <= s36;
                    else 
                        RF_load <= '0';
                        CC_load <= '0';
                        T1_load <= '0';
                        T2_load <= '0';
                        T3_load <= '0';
                        IR_load <= '0';
                        wr_enable <= '0';

                        next_state <= s36;
							end if;
                when s36 =>
                    if (IR_out(15)='1') then
                        mem_D_in <= T2_out;
                        mem_A <= T1_out;

                        RF_load <= '0';
                        CC_load <= '0';
                        T1_load <= '0';
                        T2_load <= '0';
                        T3_load <= '0';
                        IR_load <= '0';
                        wr_enable <= '1';

                        next_state <= s37;
                    else
                        RF_load <= '0';
                        CC_load <= '0';
                        T1_load <= '0';
                        T2_load <= '0';
                        T3_load <= '0';
                        IR_load <= '0';
                        wr_enable <= '0';

                        next_state <= s37;
							end if;
                when s37 =>
                    ALU_A <= T1_out;
                    if (IR_out(8)='1') then
                        RF_A3 <= "111";
                        RF_D3 <= T2_out;
                        ALU_B <= "1000000000000000";

                        RF_load <= '1';
                        CC_load <= '0';
                        T1_load <= '0';
                        T2_load <= '0';
                        T3_load <= '0';
                        IR_load <= '0';
                        wr_enable <= '0';

                        next_state <= s38;
                    else 
                        RF_load <= '0';
                        CC_load <= '0';
                        T1_load <= '0';
                        T2_load <= '0';
                        T3_load <= '0';
                        IR_load <= '0';
                        wr_enable <= '0';

                        next_state <= s38;
							end if;
                when s38 =>
                    if (IR_out(11)='1') then 
                        RF_A2 <= "001";
                        T2_in <= RF_D2;

                        RF_load <= '0';
                        CC_load <= '0';
                        T1_load <= '0';
                        T2_load <= '1';
                        T3_load <= '0';
                        IR_load <= '0';
                        wr_enable <= '0';

                        next_state <= s39;
                    else
                        RF_load <= '0';
                        CC_load <= '0';
                        T1_load <= '0';
                        T2_load <= '0';
                        T3_load <= '0';
                        IR_load <= '0';
                        wr_enable <= '0';

                        next_state <= s39;
							end if;
                when s39 =>
                    if (IR_out(12)='1') then 
                        RF_A2 <= "110";
                        T2_in <= RF_D2;

                        RF_load <= '0';
                        CC_load <= '0';
                        T1_load <= '0';
                        T2_load <= '1';
                        T3_load <= '0';
                        IR_load <= '0';
                        wr_enable <= '0';

                        next_state <= s40;
                    else
                        RF_load <= '0';
                        CC_load <= '0';
                        T1_load <= '0';
                        T2_load <= '0';
                        T3_load <= '0';
                        IR_load <= '0';
                        wr_enable <= '0';

                        next_state <= s40;
							end if;
                when s40 =>
                    ALU_A <= T1_out;
                    if (IR_out(14)='1') then
                        RF_A3 <= "100";
                        RF_D3 <= T2_out;
                        ALU_B <= "1000000000000000";

                        RF_load <= '1';
                        CC_load <= '0';
                        T1_load <= '0';
                        T2_load <= '0';
                        T3_load <= '0';
                        IR_load <= '0';
                        wr_enable <= '0';

                        next_state <= s41;
                    else 
                        RF_load <= '0';
                        CC_load <= '0';
                        T1_load <= '0';
                        T2_load <= '0';
                        T3_load <= '0';
                        IR_load <= '0';
                        wr_enable <= '0';

                        next_state <= s41;
							end if;
                when s41 =>
                    if (IR_out(13)='1') then 
                        RF_A2 <= "010";
                        T2_in <= RF_D2;

                        RF_load <= '0';
                        CC_load <= '0';
                        T1_load <= '0';
                        T2_load <= '1';
                        T3_load <= '0';
                        IR_load <= '0';
                        wr_enable <= '0';

                        next_state <= s42;
                    else
                        RF_load <= '0';
                        CC_load <= '0';
                        T1_load <= '0';
                        T2_load <= '0';
                        T3_load <= '0';
                        IR_load <= '0';
                        wr_enable <= '0';

                        next_state <= s42;
							end if;
                when s42 =>
                    if (IR_out(8)='1') then 
                        RF_A2 <= "111";
                        T2_in <= RF_D2;

                        RF_load <= '0';
                        CC_load <= '0';
                        T1_load <= '0';
                        T2_load <= '1';
                        T3_load <= '0';
                        IR_load <= '0';
                        wr_enable <= '0';

                        next_state <= s43;
                    else
                        RF_load <= '0';
                        CC_load <= '0';
                        T1_load <= '0';
                        T2_load <= '0';
                        T3_load <= '0';
                        IR_load <= '0';
                        wr_enable <= '0';

                        next_state <= s44;
							end if;
                when s43 =>
                    ALU_A <= T1_out;
                    if (IR_out(13)='1') then
                        RF_A3 <= "010";
                        RF_D3 <= T2_out;
                        ALU_B <= "1000000000000000";

                        RF_load <= '1';
                        CC_load <= '0';
                        T1_load <= '0';
                        T2_load <= '0';
                        T3_load <= '0';
                        IR_load <= '0';
                        wr_enable <= '0';

                        next_state <= s44;
                    else 
                        RF_load <= '0';
                        CC_load <= '0';
                        T1_load <= '0';
                        T2_load <= '0';
                        T3_load <= '0';
                        IR_load <= '0';
                        wr_enable <= '0';

                        next_state <= s44;
							end if;
                when s44 =>
                    if (IR_out(14)='1') then 
                        RF_A2 <= "100";
                        T2_in <= RF_D2;

                        RF_load <= '0';
                        CC_load <= '0';
                        T1_load <= '0';
                        T2_load <= '1';
                        T3_load <= '0';
                        IR_load <= '0';
                        wr_enable <= '0';

                        next_state <= s45;
                    else
                        RF_load <= '0';
                        CC_load <= '0';
                        T1_load <= '0';
                        T2_load <= '0';
                        T3_load <= '0';
                        IR_load <= '0';
                        wr_enable <= '0';

                        next_state <= s45;
							end if;
                when s45 =>
                    ALU_A <= T1_out;
                    if (IR_out(9)='1') then
                        RF_A3 <= "011";
                        RF_D3 <= T2_out;
                        ALU_B <= "1000000000000000";

                        RF_load <= '1';
                        CC_load <= '0';
                        T1_load <= '0';
                        T2_load <= '0';
                        T3_load <= '0';
                        IR_load <= '0';
                        wr_enable <= '0';

                        next_state <= s46;
                    else 
                        RF_load <= '0';
                        CC_load <= '0';
                        T1_load <= '0';
                        T2_load <= '0';
                        T3_load <= '0';
                        IR_load <= '0';
                        wr_enable <= '0';

                        next_state <= s46;
							end if;
                when s46 =>
                    ALU_A <= T1_out;
                    if (IR_out(11)='1') then
                        RF_A3 <= "001";
                        RF_D3 <= T2_out;
                        ALU_B <= "1000000000000000";

                        RF_load <= '1';
                        CC_load <= '0';
                        T1_load <= '0';
                        T2_load <= '0';
                        T3_load <= '0';
                        IR_load <= '0';
                        wr_enable <= '0';

                        next_state <= s47;
                    else 
                        RF_load <= '0';
                        CC_load <= '0';
                        T1_load <= '0';
                        T2_load <= '0';
                        T3_load <= '0';
                        IR_load <= '0';
                        wr_enable <= '0';

                        next_state <= s47;
							end if;
                when s47 =>
                    if (IR_out(10)='1') then 
                        RF_A2 <= "101";
                        T2_in <= RF_D2;

                        RF_load <= '0';
                        CC_load <= '0';
                        T1_load <= '0';
                        T2_load <= '1';
                        T3_load <= '0';
                        IR_load <= '0';
                        wr_enable <= '0';

                        next_state <= s48;
                    else
                        RF_load <= '0';
                        CC_load <= '0';
                        T1_load <= '0';
                        T2_load <= '0';
                        T3_load <= '0';
                        IR_load <= '0';
                        wr_enable <= '0';

                        next_state <= s48;
							end if;
                when s48 =>
                    if (IR_out(15)='1') then 
                        RF_A2 <= "000";
                        T2_in <= RF_D2;

                        RF_load <= '0';
                        CC_load <= '0';
                        T1_load <= '0';
                        T2_load <= '1';
                        T3_load <= '0';
                        IR_load <= '0';
                        wr_enable <= '0';

                        next_state <= s49;
                    else
                        RF_load <= '0';
                        CC_load <= '0';
                        T1_load <= '0';
                        T2_load <= '0';
                        T3_load <= '0';
                        IR_load <= '0';
                        wr_enable <= '0';

                        next_state <= s49;
							end if;
                when s49 =>
                    if (IR_out(9)='1') then 
                        RF_A2 <= "011";
                        T2_in <= RF_D2;

                        RF_load <= '0';
                        CC_load <= '0';
                        T1_load <= '0';
                        T2_load <= '1';
                        T3_load <= '0';
                        IR_load <= '0';
                        wr_enable <= '0';

                        next_state <= s0;
                    else
                        RF_load <= '0';
                        CC_load <= '0';
                        T1_load <= '0';
                        T2_load <= '0';
                        T3_load <= '0';
                        IR_load <= '0';
                        wr_enable <= '0';

                        next_state <= s0;
							end if;
                                
                    
                    
						  
                    
                    
                    
							
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

    T: register2byte
        port map(clock => clock, load => T_load, input => T_in, output => T_out);

    IR: register2byte
        port map(clock => clock, load => IR_load, input => IR_in, output => IR_out);
        
    RF: register_bank
        port map(clock => clock, load => RF_load, address_in => RF_A3, data_in => RF_D3, address_out_1 => RF_A1, data_out_1 => RF_D1, address_out_2 => RF_A2, data_out_2 => RF_D2);
    
    CC: register2bit
        port map(clock => clock , load => CC_load,  input => CC_in , output => CC_out );

    SE6: sign_extender_6bit 
    port map(
        data_in => SE6_in, 
        data_out  => SE6_out);

    SE9: sign_extender_9bit
    port map(data_in=> SE9_in,
        data_out=> SE9_out
    );

    ZA: ZeroAppender 
    port map(
        data_in=> APP_in,
        data_out=> APP_out
    );
	 
	 OnebitShifter: one_shift
	 port map( 
			data_in=> one_shift_in,
			data_out=> one_shift_out);
-----------------------------------------------------------------------------------------

end architecture behavioural;
