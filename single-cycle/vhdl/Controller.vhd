LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Controller IS PORT (
    instruction : IN STD_LOGIC_VECTOR(15 DOWNTO 0);
    cc_out : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    flags : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
    rf_a1_select : OUT STD_LOGIC;
    rf_a2_select : OUT STD_LOGIC;
    rf_a3_select : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    rf_d3_select : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    alu_b_select : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    imm_select : OUT STD_LOGIC;
    pc_final_select : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    alu_select : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    rf_load : OUT STD_LOGIC;
    ram_load : OUT STD_LOGIC;
    z_load : OUT STD_LOGIC;
    c_load : OUT STD_LOGIC
);
END ENTITY Controller;

ARCHITECTURE control OF Controller IS
BEGIN
    control_select_process : PROCESS (instruction, cc_out, flags)
    BEGIN
        CASE instruction(15 DOWNTO 12) IS
            WHEN "0001" =>
                -- ADD, ADC, ADZ, ADL
                CASE instruction(1 DOWNTO 0) IS
                    WHEN "00" =>
                        -- ADD
                        rf_a1_select <= '0';
                        rf_a2_select <= '1';
                        rf_a3_select <= "00";
                        rf_d3_select <= "00";
                        alu_b_select <= "00";
                        imm_select <= '0'; -- Can be anything since PC should be incremented
                        pc_final_select <= "00";
                        alu_select <= "00"; -- 00 is for addition
                        rf_load <= '1';
                        ram_load <= '0';
                        z_load <= '1';
                        c_load <= '1';

                    WHEN "01" =>
                        -- ADC
                        IF (cc_out(0) = '1') THEN
                            rf_a1_select <= '0';
                            rf_a2_select <= '1';
                            rf_a3_select <= "00";
                            rf_d3_select <= "00";
                            alu_b_select <= "00";
                            imm_select <= '0'; -- Can be anything since PC should be incremented
                            pc_final_select <= "00";
                            alu_select <= "00"; -- 00 is for addition
                            rf_load <= '1';
                            ram_load <= '0';
                            z_load <= '1';
                            c_load <= '1';

                        ELSE
                            rf_a1_select <= '0'; -- Can be anything since carry is not set
                            rf_a2_select <= '1'; -- Can be anything since carry is not set
                            rf_a3_select <= "00"; -- Can be anything since carry is not set
                            rf_d3_select <= "00"; -- Can be anything since carry is not set
                            alu_b_select <= "00"; -- Can be anything since carry is not set
                            imm_select <= '0'; -- Can be anything since PC should be incremented
                            pc_final_select <= "00";
                            alu_select <= "00"; -- 00 is for addition
                            rf_load <= '0';
                            ram_load <= '0';
                            z_load <= '0';
                            c_load <= '0';
                        END IF;

                    WHEN "10" =>
                        -- ADZ
                        IF (cc_out(1) = '1') THEN
                            rf_a1_select <= '0';
                            rf_a2_select <= '1';
                            rf_a3_select <= "00";
                            rf_d3_select <= "00";
                            alu_b_select <= "00";
                            imm_select <= '0'; -- Can be anything since PC should be incremented
                            pc_final_select <= "00";
                            alu_select <= "00"; -- 00 is for addition
                            rf_load <= '1';
                            ram_load <= '0';
                            z_load <= '1';
                            c_load <= '1';

                        ELSE
                            rf_a1_select <= '0'; -- Can be anything since zero is not set
                            rf_a2_select <= '1'; -- Can be anything since zero is not set
                            rf_a3_select <= "00"; -- Can be anything since zero is not set
                            rf_d3_select <= "00"; -- Can be anything since zero is not set
                            alu_b_select <= "00"; -- Can be anything since zero is not set
                            imm_select <= '0'; -- Can be anything since PC should be incremented
                            pc_final_select <= "00";
                            alu_select <= "00"; -- 00 is for addition
                            rf_load <= '0';
                            ram_load <= '0';
                            z_load <= '0';
                            c_load <= '0';
                        END IF;

                    WHEN "11" =>
                        -- ADL
                        rf_a1_select <= '0';
                        rf_a2_select <= '1';
                        rf_a3_select <= "00";
                        rf_d3_select <= "00";
                        alu_b_select <= "01";
                        imm_select <= '0'; -- Can be anything since PC should be incremented
                        pc_final_select <= "00";
                        alu_select <= "00";
                        rf_load <= '1';
                        ram_load <= '0';
                        z_load <= '1';
                        c_load <= '1';

                    WHEN OTHERS =>
                        -- Default behaviour (shouldn't really arise)
                        rf_a1_select <= '0';
                        rf_a2_select <= '1';
                        rf_a3_select <= "00";
                        rf_d3_select <= "00";
                        alu_b_select <= "00";
                        imm_select <= '0'; -- Can be anything since PC should be incremented
                        pc_final_select <= "00";
                        alu_select <= "00";
                        rf_load <= '0';
                        ram_load <= '0';
                        z_load <= '0';
                        c_load <= '0';
                END CASE;

            WHEN "0000" =>
                -- ADI
                rf_a1_select <= '0';
                rf_a2_select <= '1'; -- Can be anything because you're adding immediate data
                rf_a3_select <= "01";
                rf_d3_select <= "00";
                alu_b_select <= "10";
                imm_select <= '0'; -- Can be anything since PC should be incremented
                pc_final_select <= "00";
                alu_select <= "00"; -- 00 is for addition
                rf_load <= '1';
                ram_load <= '0';
                z_load <= '1';
                c_load <= '1';

            WHEN "0010" =>
                -- NDU, NDC, NDZ
                CASE instruction(1 DOWNTO 0) IS
                    WHEN "00" =>
                        -- NDU
                        rf_a1_select <= '0';
                        rf_a2_select <= '1';
                        rf_a3_select <= "00";
                        rf_d3_select <= "00";
                        alu_b_select <= "00";
                        imm_select <= '0'; -- Can be anything since PC should be incremented
                        pc_final_select <= "00";
                        alu_select <= "01"; -- 01 is for NAND
                        rf_load <= '1';
                        ram_load <= '0';
                        z_load <= '1';
                        c_load <= '0';

                    WHEN "01" =>
                        -- NDC
                        IF (cc_out(0) = '1') THEN
                            rf_a1_select <= '0';
                            rf_a2_select <= '1';
                            rf_a3_select <= "00";
                            rf_d3_select <= "00";
                            alu_b_select <= "00";
                            imm_select <= '0'; -- Can be anything since PC should be incremented
                            pc_final_select <= "00";
                            alu_select <= "01"; -- 01 is for NAND
                            rf_load <= '1';
                            ram_load <= '0';
                            z_load <= '1';
                            c_load <= '0';

                        ELSE
                            rf_a1_select <= '0'; -- Can be anything since carry is not set
                            rf_a2_select <= '1'; -- Can be anything since carry is not set
                            rf_a3_select <= "00"; -- Can be anything since carry is not set
                            rf_d3_select <= "00"; -- Can be anything since carry is not set
                            alu_b_select <= "00"; -- Can be anything since carry is not set
                            imm_select <= '0'; -- Can be anything since PC should be incremented
                            pc_final_select <= "00";
                            alu_select <= "01"; -- 01 is for NAND
                            rf_load <= '0';
                            ram_load <= '0';
                            z_load <= '0';
                            c_load <= '0';
                        END IF;

                    WHEN "10" =>
                        -- NDZ
                        IF (cc_out(1) = '1') THEN
                            rf_a1_select <= '0';
                            rf_a2_select <= '1';
                            rf_a3_select <= "00";
                            rf_d3_select <= "00";
                            alu_b_select <= "00";
                            imm_select <= '0'; -- Can be anything since PC should be incremented
                            pc_final_select <= "00";
                            alu_select <= "01"; -- 01 is for NAND
                            rf_load <= '1';
                            ram_load <= '0';
                            z_load <= '1';
                            c_load <= '0';

                        ELSE
                            rf_a1_select <= '0'; -- Can be anything since zero is not set
                            rf_a2_select <= '1'; -- Can be anything since zero is not set
                            rf_a3_select <= "00"; -- Can be anything since zero is not set
                            rf_d3_select <= "00"; -- Can be anything since zero is not set
                            alu_b_select <= "00"; -- Can be anything since zero is not set
                            imm_select <= '0'; -- Can be anything since PC should be incremented
                            pc_final_select <= "00";
                            alu_select <= "01"; -- 01 is for NAND
                            rf_load <= '0';
                            ram_load <= '0';
                            z_load <= '0';
                            c_load <= '0';
                        END IF;

                    WHEN OTHERS =>
                        -- Default behaviour (shouldn't really arise)
                        rf_a1_select <= '0';
                        rf_a2_select <= '1';
                        rf_a3_select <= "00";
                        rf_d3_select <= "00";
                        alu_b_select <= "00";
                        imm_select <= '0'; -- Can be anything since PC should be incremented
                        pc_final_select <= "00";
                        alu_select <= "01";
                        rf_load <= '0';
                        ram_load <= '0';
                        z_load <= '0';
                        c_load <= '0';
                END CASE;

            WHEN "0011" =>
                -- LHI
                rf_a1_select <= '0'; -- Can be anything since the ALU is not used in LHI
                rf_a2_select <= '1'; -- Can be anything since the ALU is not used in LHI
                rf_a3_select <= "10";
                rf_d3_select <= "01";
                alu_b_select <= "00"; -- Can be anything since the ALU is not used in LHI
                imm_select <= '0'; -- Can be anything since PC should be incremented
                pc_final_select <= "00";
                alu_select <= "00"; -- Can be anything since the ALU is not used in LHI
                rf_load <= '1';
                ram_load <= '0';
                z_load <= '0';
                c_load <= '0';

            WHEN "0111" =>
                -- LW
                rf_a1_select <= '1';
                rf_a2_select <= '0'; -- Can be anything since immediate data is used
                rf_a3_select <= "10";
                rf_d3_select <= "10";
                alu_b_select <= "10";
                imm_select <= '0'; -- Can be anything since PC should be incremented
                pc_final_select <= "00";
                alu_select <= "00"; -- 00 is for addition
                rf_load <= '1';
                ram_load <= '0';
                z_load <= '1';
                c_load <= '0';

            WHEN "0101" =>
                -- SW
                rf_a1_select <= '1';
                rf_a2_select <= '0';
                rf_a3_select <= "10"; -- Can be anything since we don't write back into the register file
                rf_d3_select <= "10"; -- Can be anything since we don't write back into the register file
                alu_b_select <= "10";
                imm_select <= '0'; -- Can be anything since PC should be incremented
                pc_final_select <= "00";
                alu_select <= "00"; -- 00 is for addition
                rf_load <= '0';
                ram_load <= '1';
                z_load <= '0';
                c_load <= '0';

            WHEN "1000" =>
                -- BEQ
                rf_a1_select <= '0';
                rf_a2_select <= '1';
                rf_a3_select <= "00"; -- Can be anything since we don't write back into the register file
                rf_d3_select <= "00"; -- Can be anything since we don't write back into the register file
                alu_b_select <= "00";
                imm_select <= '0'; -- Needs to be 0 to compute PC + Imm6

                IF (flags(1) = '1') THEN
                    pc_final_select <= "01";
                ELSE
                    pc_final_select <= "00";
                END IF;

                alu_select <= "10"; -- 10 is for XOR
                rf_load <= '0';
                ram_load <= '0';
                z_load <= '0';
                c_load <= '0';

            WHEN "1001" =>
                -- JAL
                rf_a1_select <= '0'; -- Can be anything since we don't write back into the register file
                rf_a2_select <= '1'; -- Can be anything since we don't write back into the register file
                rf_a3_select <= "10"; -- 10 corresponds to Register RA
                rf_d3_select <= "11"; -- 11 corresponds to PC + 1
                alu_b_select <= "10"; -- Can be anything since ALU is not used
                imm_select <= '1';
                pc_final_select <= "01";
                alu_select <= "10"; -- Can be anything since ALU is not used
                rf_load <= '1';
                ram_load <= '0';
                z_load <= '0';
                c_load <= '0';

            WHEN "1010" =>
                -- JLR
                rf_a1_select <= '0'; -- Can be anything since we don't write back into the register file
                rf_a2_select <= '1';
                rf_a3_select <= "10"; -- 10 corresponds to Register RA
                rf_d3_select <= "11"; -- 11 corresponds to PC + 1
                alu_b_select <= "10"; -- Can be anything since ALU is not used
                imm_select <= '1'; -- Can be anything since you branch to address RB
                pc_final_select <= "10";
                alu_select <= "10"; -- Can be anything since ALU is not used
                rf_load <= '1';
                ram_load <= '0';
                z_load <= '0';
                c_load <= '0';

            WHEN "1011" =>
                -- JRI
                rf_a1_select <= '0';
                rf_a2_select <= '1';
                rf_a3_select <= "10"; -- Can be anything since we don't write back into the register file
                rf_d3_select <= "11"; -- Can be anything since we don't write back into the register file
                alu_b_select <= "11";
                imm_select <= '1'; -- 1 corresponds to Imm9
                pc_final_select <= "11";
                alu_select <= "00"; -- ALU should add
                rf_load <= '0';
                ram_load <= '0';
                z_load <= '0';
                c_load <= '0';

            WHEN OTHERS =>
                -- For the time being, just increment the PC
                rf_a1_select <= '0';
                rf_a2_select <= '1';
                rf_a3_select <= "00";
                rf_d3_select <= "00";
                alu_b_select <= "00";
                imm_select <= '0';
                pc_final_select <= "00";
                alu_select <= "00";
                rf_load <= '0';
                ram_load <= '0';
                z_load <= '0';
                c_load <= '0';

        END CASE;
    END PROCESS;

END ARCHITECTURE control;