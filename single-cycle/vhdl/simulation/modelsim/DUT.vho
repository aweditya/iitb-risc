-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "05/05/2022 19:47:06"

-- 
-- Device: Altera EP4CE10F17C8 Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DUT IS
    PORT (
	input_vector : IN std_logic_vector(1 DOWNTO 0);
	output_vector : BUFFER std_logic_vector(15 DOWNTO 0)
	);
END DUT;

-- Design Ports Information
-- output_vector[0]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[1]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[2]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[3]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[4]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[5]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[6]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[7]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[8]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[9]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[10]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[11]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[12]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[13]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[14]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[15]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[1]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[0]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DUT IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input_vector : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(15 DOWNTO 0);
SIGNAL \input_vector[0]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \input_vector[1]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \output_vector[0]~output_o\ : std_logic;
SIGNAL \output_vector[1]~output_o\ : std_logic;
SIGNAL \output_vector[2]~output_o\ : std_logic;
SIGNAL \output_vector[3]~output_o\ : std_logic;
SIGNAL \output_vector[4]~output_o\ : std_logic;
SIGNAL \output_vector[5]~output_o\ : std_logic;
SIGNAL \output_vector[6]~output_o\ : std_logic;
SIGNAL \output_vector[7]~output_o\ : std_logic;
SIGNAL \output_vector[8]~output_o\ : std_logic;
SIGNAL \output_vector[9]~output_o\ : std_logic;
SIGNAL \output_vector[10]~output_o\ : std_logic;
SIGNAL \output_vector[11]~output_o\ : std_logic;
SIGNAL \output_vector[12]~output_o\ : std_logic;
SIGNAL \output_vector[13]~output_o\ : std_logic;
SIGNAL \output_vector[14]~output_o\ : std_logic;
SIGNAL \output_vector[15]~output_o\ : std_logic;
SIGNAL \input_vector[1]~input_o\ : std_logic;
SIGNAL \input_vector[1]~inputclkctrl_outclk\ : std_logic;
SIGNAL \add_instance|rom_unit|rom_data~2069_combout\ : std_logic;
SIGNAL \add_instance|rom_unit|rom_data~2068_combout\ : std_logic;
SIGNAL \add_instance|control_unit|Mux15~0_combout\ : std_logic;
SIGNAL \add_instance|control_unit|Mux14~0_combout\ : std_logic;
SIGNAL \add_instance|control_unit|Mux9~0_combout\ : std_logic;
SIGNAL \add_instance|rom_unit|rom_data~2064_combout\ : std_logic;
SIGNAL \add_instance|rom_unit|rom_data~2067_combout\ : std_logic;
SIGNAL \add_instance|control_unit|Mux10~0_combout\ : std_logic;
SIGNAL \add_instance|control_unit|Mux10~1_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[2]~8_combout\ : std_logic;
SIGNAL \add_instance|incrementer|sum~1_combout\ : std_logic;
SIGNAL \add_instance|rf_d3_mux|sel_out[4]~29_combout\ : std_logic;
SIGNAL \add_instance|rf_d3_mux|sel_out[2]~10_combout\ : std_logic;
SIGNAL \input_vector[0]~input_o\ : std_logic;
SIGNAL \add_instance|rf|Decoder0~14_combout\ : std_logic;
SIGNAL \add_instance|rf|Decoder0~11_combout\ : std_logic;
SIGNAL \add_instance|rf|Decoder0~31_combout\ : std_logic;
SIGNAL \add_instance|rom_unit|rom_data~2072_combout\ : std_logic;
SIGNAL \add_instance|rf|Decoder0~24_combout\ : std_logic;
SIGNAL \add_instance|control_unit|Mux6~0_combout\ : std_logic;
SIGNAL \add_instance|rom_unit|rom_data~2061_combout\ : std_logic;
SIGNAL \add_instance|rom_unit|rom_data~2063_combout\ : std_logic;
SIGNAL \add_instance|rom_unit|rom_data~2065_combout\ : std_logic;
SIGNAL \add_instance|rf_a3_mux|sel_out[0]~0_combout\ : std_logic;
SIGNAL \add_instance|rf|Decoder0~28_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[0][2]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[1][2]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux29~0_combout\ : std_logic;
SIGNAL \add_instance|rom_unit|rom_data~2066_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux31~2_combout\ : std_logic;
SIGNAL \add_instance|rf|Decoder0~25_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[5][2]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux29~1_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux29~2_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|Equal0~0_combout\ : std_logic;
SIGNAL \add_instance|incrementer|sum~2_combout\ : std_logic;
SIGNAL \add_instance|rf_d3_mux|sel_out[3]~11_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[5][3]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux28~0_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[1][3]~q\ : std_logic;
SIGNAL \add_instance|rf|Decoder0~26_combout\ : std_logic;
SIGNAL \add_instance|rf|Decoder0~30_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[3][3]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[0][3]~q\ : std_logic;
SIGNAL \add_instance|rf|Decoder0~29_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[2][3]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux28~1_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux28~2_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[3]~12_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[3]~13_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux12~0_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[3]~5_combout\ : std_logic;
SIGNAL \add_instance|main_alu|result~36_combout\ : std_logic;
SIGNAL \add_instance|main_alu|result~35_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux13~0_combout\ : std_logic;
SIGNAL \add_instance|incrementer|sum~0_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[5][1]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux30~0_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[3][1]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[0][1]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[2][1]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux30~1_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux30~2_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[1]~7_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[1]~9_combout\ : std_logic;
SIGNAL \add_instance|main_alu|result~33_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[0][0]~q\ : std_logic;
SIGNAL \add_instance|rom_unit|rom_data~2070_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[0]~37_combout\ : std_logic;
SIGNAL \add_instance|main_alu|result~32_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[1]~1_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[1]~2_combout\ : std_logic;
SIGNAL \add_instance|rf_d3_mux|sel_out[1]~9_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[1][1]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux14~0_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux15~0_combout\ : std_logic;
SIGNAL \add_instance|main_alu|carry~2_combout\ : std_logic;
SIGNAL \add_instance|main_alu|carry~3_combout\ : std_logic;
SIGNAL \add_instance|main_alu|sum~0_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[3]~6_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux28~3_combout\ : std_logic;
SIGNAL \add_instance|adder|carry~2_combout\ : std_logic;
SIGNAL \add_instance|adder|sum~2_combout\ : std_logic;
SIGNAL \add_instance|main_alu|zero_check~2_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[8]~20_combout\ : std_logic;
SIGNAL \add_instance|pc_plus_imm_mux|sel_out[6]~0_combout\ : std_logic;
SIGNAL \add_instance|pc_plus_imm_mux|sel_out[6]~1_combout\ : std_logic;
SIGNAL \add_instance|adder|carry~5_combout\ : std_logic;
SIGNAL \add_instance|incrementer|carry~1_combout\ : std_logic;
SIGNAL \add_instance|rf_d3_mux|sel_out[7]~14_combout\ : std_logic;
SIGNAL \add_instance|rf_d3_mux|sel_out[7]~30_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[1][7]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[0][7]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux8~0_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[5][7]~feeder_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[5][7]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux24~1_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux24~0_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux24~2_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[7]~18_combout\ : std_logic;
SIGNAL \add_instance|incrementer|sum~5_combout\ : std_logic;
SIGNAL \add_instance|control_unit|Mux8~0_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[6]~16_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[6]~17_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[1][6]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux9~0_combout\ : std_logic;
SIGNAL \add_instance|main_alu|result~37_combout\ : std_logic;
SIGNAL \add_instance|incrementer|sum~4_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[0][4]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux27~0_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[5][4]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux27~1_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux27~2_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[5]~15_combout\ : std_logic;
SIGNAL \add_instance|main_alu|result~18_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[5]~39_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[5]~9_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[4]~14_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[4]~38_combout\ : std_logic;
SIGNAL \add_instance|main_alu|carry~4_combout\ : std_logic;
SIGNAL \add_instance|main_alu|carry~5_combout\ : std_logic;
SIGNAL \add_instance|main_alu|result~17_combout\ : std_logic;
SIGNAL \add_instance|main_alu|sum~1_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[5]~10_combout\ : std_logic;
SIGNAL \add_instance|rf_d3_mux|sel_out[5]~13_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[1][5]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[0][5]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux10~0_combout\ : std_logic;
SIGNAL \add_instance|main_alu|carry~6_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[6]~11_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[6]~12_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[0][6]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux25~0_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[5][6]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux25~1_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux25~2_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[7]~19_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[7]~13_combout\ : std_logic;
SIGNAL \add_instance|main_alu|result~38_combout\ : std_logic;
SIGNAL \add_instance|main_alu|carry~7_combout\ : std_logic;
SIGNAL \add_instance|main_alu|sum~2_combout\ : std_logic;
SIGNAL \add_instance|main_alu|result~39_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[7]~14_combout\ : std_logic;
SIGNAL \add_instance|incrementer|sum~6_combout\ : std_logic;
SIGNAL \add_instance|pc_plus_imm_mux|sel_out[7]~2_combout\ : std_logic;
SIGNAL \add_instance|adder|sum~6_combout\ : std_logic;
SIGNAL \add_instance|pc_final_mux|sel_out[7]~14_combout\ : std_logic;
SIGNAL \add_instance|pc_final_mux|sel_out[7]~15_combout\ : std_logic;
SIGNAL \input_vector[0]~inputclkctrl_outclk\ : std_logic;
SIGNAL \add_instance|rf|RF[7][7]~q\ : std_logic;
SIGNAL \add_instance|adder|carry~6_combout\ : std_logic;
SIGNAL \add_instance|adder|sum~7_combout\ : std_logic;
SIGNAL \add_instance|incrementer|sum~7_combout\ : std_logic;
SIGNAL \add_instance|rf_d3_mux|sel_out[8]~15_combout\ : std_logic;
SIGNAL \add_instance|rf_d3_mux|sel_out[8]~16_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[1][8]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[0][8]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux7~0_combout\ : std_logic;
SIGNAL \add_instance|main_alu|carry~8_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux23~0_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[5][8]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux23~1_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux23~2_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[8]~21_combout\ : std_logic;
SIGNAL \add_instance|main_alu|result~19_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[8]~15_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[8]~22_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[8]~16_combout\ : std_logic;
SIGNAL \add_instance|pc_final_mux|sel_out[8]~16_combout\ : std_logic;
SIGNAL \add_instance|pc_final_mux|sel_out[8]~17_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[7][8]~q\ : std_logic;
SIGNAL \add_instance|incrementer|sum~8_combout\ : std_logic;
SIGNAL \add_instance|rf_d3_mux|sel_out[9]~17_combout\ : std_logic;
SIGNAL \add_instance|rf_d3_mux|sel_out[9]~18_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[0][9]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[1][9]~feeder_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[1][9]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux6~0_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[9]~23_combout\ : std_logic;
SIGNAL \add_instance|main_alu|result~21_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[9]~24_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[9]~17_combout\ : std_logic;
SIGNAL \add_instance|main_alu|result~20_combout\ : std_logic;
SIGNAL \add_instance|main_alu|carry~9_combout\ : std_logic;
SIGNAL \add_instance|main_alu|sum~3_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[9]~18_combout\ : std_logic;
SIGNAL \add_instance|adder|sum~8_combout\ : std_logic;
SIGNAL \add_instance|pc_final_mux|sel_out[9]~18_combout\ : std_logic;
SIGNAL \add_instance|pc_final_mux|sel_out[9]~19_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[7][9]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[5][9]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux22~1_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux22~0_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux22~2_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[1][10]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux21~0_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[5][10]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux21~1_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux21~2_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[10]~25_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[10]~26_combout\ : std_logic;
SIGNAL \add_instance|main_alu|carry~10_combout\ : std_logic;
SIGNAL \add_instance|main_alu|result~22_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[10]~19_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[10]~20_combout\ : std_logic;
SIGNAL \add_instance|adder|carry~7_combout\ : std_logic;
SIGNAL \add_instance|adder|sum~9_combout\ : std_logic;
SIGNAL \add_instance|incrementer|carry~2_combout\ : std_logic;
SIGNAL \add_instance|incrementer|sum~9_combout\ : std_logic;
SIGNAL \add_instance|pc_final_mux|sel_out[10]~20_combout\ : std_logic;
SIGNAL \add_instance|pc_final_mux|sel_out[10]~21_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[7][10]~q\ : std_logic;
SIGNAL \add_instance|rf_d3_mux|sel_out[10]~19_combout\ : std_logic;
SIGNAL \add_instance|rf_d3_mux|sel_out[10]~31_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[0][10]~feeder_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[0][10]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux5~0_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[0][11]~feeder_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[0][11]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux20~0_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[5][11]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux20~1_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux20~2_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[11]~27_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[11]~28_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[11]~21_combout\ : std_logic;
SIGNAL \add_instance|main_alu|result~23_combout\ : std_logic;
SIGNAL \add_instance|main_alu|carry~11_combout\ : std_logic;
SIGNAL \add_instance|main_alu|sum~4_combout\ : std_logic;
SIGNAL \add_instance|main_alu|result~24_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[11]~22_combout\ : std_logic;
SIGNAL \add_instance|adder|sum~10_combout\ : std_logic;
SIGNAL \add_instance|pc_final_mux|sel_out[11]~22_combout\ : std_logic;
SIGNAL \add_instance|pc_final_mux|sel_out[11]~23_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[7][11]~q\ : std_logic;
SIGNAL \add_instance|incrementer|sum~10_combout\ : std_logic;
SIGNAL \add_instance|rf_d3_mux|sel_out[11]~20_combout\ : std_logic;
SIGNAL \add_instance|rf_d3_mux|sel_out[11]~21_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[1][11]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux4~0_combout\ : std_logic;
SIGNAL \add_instance|main_alu|zero_check~4_combout\ : std_logic;
SIGNAL \add_instance|main_alu|zero_check~3_combout\ : std_logic;
SIGNAL \add_instance|adder|carry~8_combout\ : std_logic;
SIGNAL \add_instance|adder|sum~11_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[0][12]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux19~0_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[5][12]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux19~1_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux19~2_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[12]~29_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[12]~30_combout\ : std_logic;
SIGNAL \add_instance|main_alu|result~25_combout\ : std_logic;
SIGNAL \add_instance|main_alu|carry~12_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[12]~23_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[12]~24_combout\ : std_logic;
SIGNAL \add_instance|pc_final_mux|sel_out[12]~24_combout\ : std_logic;
SIGNAL \add_instance|pc_final_mux|sel_out[12]~25_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[7][12]~q\ : std_logic;
SIGNAL \add_instance|incrementer|sum~11_combout\ : std_logic;
SIGNAL \add_instance|rf_d3_mux|sel_out[12]~22_combout\ : std_logic;
SIGNAL \add_instance|rf_d3_mux|sel_out[12]~23_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[1][12]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux3~0_combout\ : std_logic;
SIGNAL \add_instance|incrementer|carry~3_combout\ : std_logic;
SIGNAL \add_instance|rf_d3_mux|sel_out[13]~24_combout\ : std_logic;
SIGNAL \add_instance|rf_d3_mux|sel_out[13]~32_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[5][13]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux18~1_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[1][13]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[0][13]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux18~0_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux18~2_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[13]~31_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[13]~32_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux2~0_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[13]~25_combout\ : std_logic;
SIGNAL \add_instance|main_alu|result~27_combout\ : std_logic;
SIGNAL \add_instance|main_alu|result~26_combout\ : std_logic;
SIGNAL \add_instance|main_alu|carry~13_combout\ : std_logic;
SIGNAL \add_instance|main_alu|sum~5_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[13]~26_combout\ : std_logic;
SIGNAL \add_instance|adder|sum~12_combout\ : std_logic;
SIGNAL \add_instance|incrementer|sum~12_combout\ : std_logic;
SIGNAL \add_instance|pc_final_mux|sel_out[13]~26_combout\ : std_logic;
SIGNAL \add_instance|pc_final_mux|sel_out[13]~27_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[7][13]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux17~0_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[1][14]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux17~1_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux17~2_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[14]~33_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[14]~34_combout\ : std_logic;
SIGNAL \add_instance|main_alu|result~28_combout\ : std_logic;
SIGNAL \add_instance|main_alu|carry~14_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[14]~27_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[14]~28_combout\ : std_logic;
SIGNAL \add_instance|adder|carry~9_combout\ : std_logic;
SIGNAL \add_instance|adder|sum~13_combout\ : std_logic;
SIGNAL \add_instance|pc_final_mux|sel_out[14]~28_combout\ : std_logic;
SIGNAL \add_instance|pc_final_mux|sel_out[14]~29_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[7][14]~q\ : std_logic;
SIGNAL \add_instance|incrementer|sum~13_combout\ : std_logic;
SIGNAL \add_instance|rf_d3_mux|sel_out[14]~25_combout\ : std_logic;
SIGNAL \add_instance|rf_d3_mux|sel_out[14]~26_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[0][14]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux1~0_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux16~0_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[1][15]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux16~1_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux16~2_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[15]~35_combout\ : std_logic;
SIGNAL \add_instance|main_alu|result~30_combout\ : std_logic;
SIGNAL \add_instance|main_alu|result~29_combout\ : std_logic;
SIGNAL \add_instance|main_alu|sum~6_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[15]~36_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[15]~29_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[15]~30_combout\ : std_logic;
SIGNAL \add_instance|adder|sum~14_combout\ : std_logic;
SIGNAL \add_instance|pc_final_mux|sel_out[15]~30_combout\ : std_logic;
SIGNAL \add_instance|pc_final_mux|sel_out[15]~31_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[7][15]~q\ : std_logic;
SIGNAL \add_instance|incrementer|sum~14_combout\ : std_logic;
SIGNAL \add_instance|rf_d3_mux|sel_out[15]~27_combout\ : std_logic;
SIGNAL \add_instance|rf_d3_mux|sel_out[15]~28_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[0][15]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux0~0_combout\ : std_logic;
SIGNAL \add_instance|main_alu|zero_check~5_combout\ : std_logic;
SIGNAL \add_instance|main_alu|zero_check~6_combout\ : std_logic;
SIGNAL \add_instance|main_alu|result~31_combout\ : std_logic;
SIGNAL \add_instance|main_alu|zero_check~26_combout\ : std_logic;
SIGNAL \add_instance|main_alu|zero_check~27_combout\ : std_logic;
SIGNAL \add_instance|main_alu|zero_check~23_combout\ : std_logic;
SIGNAL \add_instance|main_alu|zero_check~24_combout\ : std_logic;
SIGNAL \add_instance|main_alu|zero_check~25_combout\ : std_logic;
SIGNAL \add_instance|main_alu|zero_check~28_combout\ : std_logic;
SIGNAL \add_instance|main_alu|result~16_combout\ : std_logic;
SIGNAL \add_instance|main_alu|result~34_combout\ : std_logic;
SIGNAL \add_instance|main_alu|zero_check~19_combout\ : std_logic;
SIGNAL \add_instance|main_alu|zero_check~20_combout\ : std_logic;
SIGNAL \add_instance|main_alu|zero_check~21_combout\ : std_logic;
SIGNAL \add_instance|main_alu|zero_check~16_combout\ : std_logic;
SIGNAL \add_instance|main_alu|zero_check~17_combout\ : std_logic;
SIGNAL \add_instance|main_alu|zero_check~29_combout\ : std_logic;
SIGNAL \add_instance|main_alu|zero_check~15_combout\ : std_logic;
SIGNAL \add_instance|main_alu|zero_check~18_combout\ : std_logic;
SIGNAL \add_instance|main_alu|zero_check~22_combout\ : std_logic;
SIGNAL \add_instance|main_alu|zero_check~10_combout\ : std_logic;
SIGNAL \add_instance|main_alu|zero_check~7_combout\ : std_logic;
SIGNAL \add_instance|main_alu|sum~7_combout\ : std_logic;
SIGNAL \add_instance|main_alu|zero_check~8_combout\ : std_logic;
SIGNAL \add_instance|main_alu|zero_check~9_combout\ : std_logic;
SIGNAL \add_instance|main_alu|zero_check~11_combout\ : std_logic;
SIGNAL \add_instance|main_alu|zero_check~12_combout\ : std_logic;
SIGNAL \add_instance|main_alu|zero_check~13_combout\ : std_logic;
SIGNAL \add_instance|main_alu|zero_check~14_combout\ : std_logic;
SIGNAL \add_instance|main_alu|control_out[1]~0_combout\ : std_logic;
SIGNAL \add_instance|main_alu|control_out[1]~1_combout\ : std_logic;
SIGNAL \add_instance|control_unit|Mux13~0_combout\ : std_logic;
SIGNAL \add_instance|pc_final_mux|sel_out[3]~6_combout\ : std_logic;
SIGNAL \add_instance|pc_final_mux|sel_out[3]~7_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[7][3]~q\ : std_logic;
SIGNAL \add_instance|rom_unit|rom_data~2059_combout\ : std_logic;
SIGNAL \add_instance|rf_a3_mux|sel_out[2]~1_combout\ : std_logic;
SIGNAL \add_instance|rf|Decoder0~27_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[1][0]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[3][0]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux31~4_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[2][0]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux31~5_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux31~6_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[5][0]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux31~3_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux31~7_combout\ : std_logic;
SIGNAL \add_instance|pc_final_mux|sel_out[0]~0_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[0]~0_combout\ : std_logic;
SIGNAL \add_instance|adder|result~0_combout\ : std_logic;
SIGNAL \add_instance|pc_final_mux|sel_out[0]~1_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[7][0]~q\ : std_logic;
SIGNAL \add_instance|incrementer|carry~0_combout\ : std_logic;
SIGNAL \add_instance|incrementer|sum~3_combout\ : std_logic;
SIGNAL \add_instance|rf_d3_mux|sel_out[4]~12_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[1][4]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux11~0_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[4]~7_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[4]~8_combout\ : std_logic;
SIGNAL \add_instance|adder|carry~3_combout\ : std_logic;
SIGNAL \add_instance|adder|sum~5_combout\ : std_logic;
SIGNAL \add_instance|pc_final_mux|sel_out[4]~12_combout\ : std_logic;
SIGNAL \add_instance|pc_final_mux|sel_out[4]~13_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[7][4]~q\ : std_logic;
SIGNAL \add_instance|adder|carry~10_combout\ : std_logic;
SIGNAL \add_instance|adder|carry~4_combout\ : std_logic;
SIGNAL \add_instance|adder|sum~3_combout\ : std_logic;
SIGNAL \add_instance|pc_final_mux|sel_out[6]~8_combout\ : std_logic;
SIGNAL \add_instance|pc_final_mux|sel_out[6]~9_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[7][6]~q\ : std_logic;
SIGNAL \add_instance|rom_unit|rom_data~2071_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux26~0_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[5][5]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux26~1_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux26~2_combout\ : std_logic;
SIGNAL \add_instance|adder|sum~4_combout\ : std_logic;
SIGNAL \add_instance|pc_final_mux|sel_out[5]~10_combout\ : std_logic;
SIGNAL \add_instance|pc_final_mux|sel_out[5]~11_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[7][5]~q\ : std_logic;
SIGNAL \add_instance|rom_unit|rom_data~2060_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[2]~6_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[2]~10_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[2]~11_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[2]~3_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[2]~4_combout\ : std_logic;
SIGNAL \add_instance|adder|sum~1_combout\ : std_logic;
SIGNAL \add_instance|pc_final_mux|sel_out[2]~4_combout\ : std_logic;
SIGNAL \add_instance|pc_final_mux|sel_out[2]~5_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[7][2]~q\ : std_logic;
SIGNAL \add_instance|rom_unit|rom_data~2062_combout\ : std_logic;
SIGNAL \add_instance|control_unit|Mux12~0_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux30~3_combout\ : std_logic;
SIGNAL \add_instance|adder|sum~0_combout\ : std_logic;
SIGNAL \add_instance|pc_final_mux|sel_out[1]~2_combout\ : std_logic;
SIGNAL \add_instance|pc_final_mux|sel_out[1]~3_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[7][1]~q\ : std_logic;
SIGNAL \add_instance|rom_unit|rom_data~2058_combout\ : std_logic;
SIGNAL \add_instance|control_unit|Mux7~0_combout\ : std_logic;
SIGNAL \add_instance|rf_d3_mux|sel_out[0]~8_combout\ : std_logic;
SIGNAL \add_instance|rf_d3_mux|sel_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_input_vector[1]~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_input_vector[0]~inputclkctrl_outclk\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\input_vector[0]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \input_vector[0]~input_o\);

\input_vector[1]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \input_vector[1]~input_o\);
\ALT_INV_input_vector[1]~inputclkctrl_outclk\ <= NOT \input_vector[1]~inputclkctrl_outclk\;
\ALT_INV_input_vector[0]~inputclkctrl_outclk\ <= NOT \input_vector[0]~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X11_Y24_N23
\output_vector[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|rf_d3_mux|sel_out[0]~8_combout\,
	devoe => ww_devoe,
	o => \output_vector[0]~output_o\);

-- Location: IOOBUF_X9_Y24_N16
\output_vector[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|rf_d3_mux|sel_out[1]~9_combout\,
	devoe => ww_devoe,
	o => \output_vector[1]~output_o\);

-- Location: IOOBUF_X9_Y24_N23
\output_vector[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|rf_d3_mux|sel_out[2]~10_combout\,
	devoe => ww_devoe,
	o => \output_vector[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\output_vector[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|rf_d3_mux|sel_out[3]~11_combout\,
	devoe => ww_devoe,
	o => \output_vector[3]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\output_vector[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|rf_d3_mux|sel_out[4]~12_combout\,
	devoe => ww_devoe,
	o => \output_vector[4]~output_o\);

-- Location: IOOBUF_X18_Y24_N9
\output_vector[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|rf_d3_mux|sel_out[5]~13_combout\,
	devoe => ww_devoe,
	o => \output_vector[5]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\output_vector[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|rf_d3_mux|sel_out\(6),
	devoe => ww_devoe,
	o => \output_vector[6]~output_o\);

-- Location: IOOBUF_X25_Y24_N16
\output_vector[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|rf_d3_mux|sel_out[7]~30_combout\,
	devoe => ww_devoe,
	o => \output_vector[7]~output_o\);

-- Location: IOOBUF_X11_Y24_N9
\output_vector[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|rf_d3_mux|sel_out[8]~16_combout\,
	devoe => ww_devoe,
	o => \output_vector[8]~output_o\);

-- Location: IOOBUF_X23_Y24_N9
\output_vector[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|rf_d3_mux|sel_out[9]~18_combout\,
	devoe => ww_devoe,
	o => \output_vector[9]~output_o\);

-- Location: IOOBUF_X25_Y24_N2
\output_vector[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|rf_d3_mux|sel_out[10]~31_combout\,
	devoe => ww_devoe,
	o => \output_vector[10]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\output_vector[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|rf_d3_mux|sel_out[11]~21_combout\,
	devoe => ww_devoe,
	o => \output_vector[11]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\output_vector[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|rf_d3_mux|sel_out[12]~23_combout\,
	devoe => ww_devoe,
	o => \output_vector[12]~output_o\);

-- Location: IOOBUF_X21_Y24_N9
\output_vector[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|rf_d3_mux|sel_out[13]~32_combout\,
	devoe => ww_devoe,
	o => \output_vector[13]~output_o\);

-- Location: IOOBUF_X18_Y24_N23
\output_vector[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|rf_d3_mux|sel_out[14]~26_combout\,
	devoe => ww_devoe,
	o => \output_vector[14]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\output_vector[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|rf_d3_mux|sel_out[15]~28_combout\,
	devoe => ww_devoe,
	o => \output_vector[15]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\input_vector[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(1),
	o => \input_vector[1]~input_o\);

-- Location: CLKCTRL_G2
\input_vector[1]~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \input_vector[1]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \input_vector[1]~inputclkctrl_outclk\);

-- Location: LCCOMB_X17_Y19_N30
\add_instance|rom_unit|rom_data~2069\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rom_unit|rom_data~2069_combout\ = (!\add_instance|rom_unit|rom_data~2058_combout\ & (!\add_instance|rf|RF[7][5]~q\ & (!\add_instance|rf|RF[7][4]~q\ & !\add_instance|rf|RF[7][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rom_unit|rom_data~2058_combout\,
	datab => \add_instance|rf|RF[7][5]~q\,
	datac => \add_instance|rf|RF[7][4]~q\,
	datad => \add_instance|rf|RF[7][6]~q\,
	combout => \add_instance|rom_unit|rom_data~2069_combout\);

-- Location: LCCOMB_X17_Y20_N4
\add_instance|rom_unit|rom_data~2068\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rom_unit|rom_data~2068_combout\ = (!\add_instance|rf|RF[7][6]~q\ & (!\add_instance|rf|RF[7][5]~q\ & (!\add_instance|rf|RF[7][4]~q\ & !\add_instance|rom_unit|rom_data~2059_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][6]~q\,
	datab => \add_instance|rf|RF[7][5]~q\,
	datac => \add_instance|rf|RF[7][4]~q\,
	datad => \add_instance|rom_unit|rom_data~2059_combout\,
	combout => \add_instance|rom_unit|rom_data~2068_combout\);

-- Location: LCCOMB_X17_Y22_N0
\add_instance|control_unit|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|control_unit|Mux15~0_combout\ = (!\add_instance|rom_unit|rom_data~2062_combout\ & (\add_instance|rom_unit|rom_data~2069_combout\ & !\add_instance|rom_unit|rom_data~2068_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rom_unit|rom_data~2062_combout\,
	datab => \add_instance|rom_unit|rom_data~2069_combout\,
	datad => \add_instance|rom_unit|rom_data~2068_combout\,
	combout => \add_instance|control_unit|Mux15~0_combout\);

-- Location: LCCOMB_X19_Y19_N24
\add_instance|control_unit|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|control_unit|Mux14~0_combout\ = ((!\add_instance|rom_unit|rom_data~2058_combout\ & \add_instance|rom_unit|rom_data~2068_combout\)) # (!\add_instance|rom_unit|rom_data~2062_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rom_unit|rom_data~2058_combout\,
	datab => \add_instance|rom_unit|rom_data~2062_combout\,
	datad => \add_instance|rom_unit|rom_data~2068_combout\,
	combout => \add_instance|control_unit|Mux14~0_combout\);

-- Location: LCCOMB_X17_Y20_N30
\add_instance|control_unit|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|control_unit|Mux9~0_combout\ = \add_instance|rom_unit|rom_data~2062_combout\ $ (((\add_instance|rom_unit|rom_data~2060_combout\ & ((!\add_instance|rom_unit|rom_data~2058_combout\) # (!\add_instance|rom_unit|rom_data~2059_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rom_unit|rom_data~2060_combout\,
	datab => \add_instance|rom_unit|rom_data~2059_combout\,
	datac => \add_instance|rom_unit|rom_data~2062_combout\,
	datad => \add_instance|rom_unit|rom_data~2058_combout\,
	combout => \add_instance|control_unit|Mux9~0_combout\);

-- Location: LCCOMB_X17_Y19_N12
\add_instance|rom_unit|rom_data~2064\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rom_unit|rom_data~2064_combout\ = (\add_instance|rf|RF[7][3]~q\) # ((\add_instance|rf|RF[7][0]~q\ & (\add_instance|rf|RF[7][2]~q\)) # (!\add_instance|rf|RF[7][0]~q\ & ((\add_instance|rf|RF[7][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][2]~q\,
	datab => \add_instance|rf|RF[7][3]~q\,
	datac => \add_instance|rf|RF[7][1]~q\,
	datad => \add_instance|rf|RF[7][0]~q\,
	combout => \add_instance|rom_unit|rom_data~2064_combout\);

-- Location: LCCOMB_X17_Y19_N22
\add_instance|rom_unit|rom_data~2067\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rom_unit|rom_data~2067_combout\ = (!\add_instance|rf|RF[7][3]~q\ & ((\add_instance|rf|RF[7][2]~q\ & (!\add_instance|rf|RF[7][1]~q\ & !\add_instance|rf|RF[7][0]~q\)) # (!\add_instance|rf|RF[7][2]~q\ & (\add_instance|rf|RF[7][1]~q\ & 
-- \add_instance|rf|RF[7][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][2]~q\,
	datab => \add_instance|rf|RF[7][3]~q\,
	datac => \add_instance|rf|RF[7][1]~q\,
	datad => \add_instance|rf|RF[7][0]~q\,
	combout => \add_instance|rom_unit|rom_data~2067_combout\);

-- Location: LCCOMB_X17_Y19_N16
\add_instance|control_unit|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|control_unit|Mux10~0_combout\ = ((\add_instance|rom_unit|rom_data~2058_combout\ & ((\add_instance|rom_unit|rom_data~2064_combout\) # (!\add_instance|rom_unit|rom_data~2067_combout\)))) # (!\add_instance|rom_unit|rom_data~2060_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rom_unit|rom_data~2064_combout\,
	datab => \add_instance|rom_unit|rom_data~2058_combout\,
	datac => \add_instance|rom_unit|rom_data~2060_combout\,
	datad => \add_instance|rom_unit|rom_data~2067_combout\,
	combout => \add_instance|control_unit|Mux10~0_combout\);

-- Location: LCCOMB_X18_Y19_N10
\add_instance|control_unit|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|control_unit|Mux10~1_combout\ = (\add_instance|control_unit|Mux10~0_combout\) # ((\add_instance|rom_unit|rom_data~2069_combout\ $ (\add_instance|rom_unit|rom_data~2062_combout\)) # (!\add_instance|rom_unit|rom_data~2068_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux10~0_combout\,
	datab => \add_instance|rom_unit|rom_data~2069_combout\,
	datac => \add_instance|rom_unit|rom_data~2068_combout\,
	datad => \add_instance|rom_unit|rom_data~2062_combout\,
	combout => \add_instance|control_unit|Mux10~1_combout\);

-- Location: LCCOMB_X18_Y19_N16
\add_instance|alu_b_mux|sel_out[2]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[2]~8_combout\ = (\add_instance|control_unit|Mux9~0_combout\ & !\add_instance|control_unit|Mux10~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|control_unit|Mux9~0_combout\,
	datad => \add_instance|control_unit|Mux10~1_combout\,
	combout => \add_instance|alu_b_mux|sel_out[2]~8_combout\);

-- Location: LCCOMB_X17_Y21_N10
\add_instance|incrementer|sum~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|incrementer|sum~1_combout\ = \add_instance|rf|RF[7][2]~q\ $ (((\add_instance|rf|RF[7][0]~q\ & \add_instance|rf|RF[7][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][0]~q\,
	datac => \add_instance|rf|RF[7][1]~q\,
	datad => \add_instance|rf|RF[7][2]~q\,
	combout => \add_instance|incrementer|sum~1_combout\);

-- Location: LCCOMB_X16_Y19_N18
\add_instance|rf_d3_mux|sel_out[4]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_d3_mux|sel_out[4]~29_combout\ = ((\add_instance|rom_unit|rom_data~2068_combout\ & (!\add_instance|rom_unit|rom_data~2062_combout\ & !\add_instance|rom_unit|rom_data~2058_combout\))) # (!\add_instance|control_unit|Mux7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rom_unit|rom_data~2068_combout\,
	datab => \add_instance|rom_unit|rom_data~2062_combout\,
	datac => \add_instance|rom_unit|rom_data~2058_combout\,
	datad => \add_instance|control_unit|Mux7~0_combout\,
	combout => \add_instance|rf_d3_mux|sel_out[4]~29_combout\);

-- Location: LCCOMB_X17_Y18_N4
\add_instance|rf_d3_mux|sel_out[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_d3_mux|sel_out[2]~10_combout\ = (\add_instance|rf_d3_mux|sel_out[4]~29_combout\ & (!\add_instance|control_unit|Mux7~0_combout\ & (\add_instance|incrementer|sum~1_combout\))) # (!\add_instance|rf_d3_mux|sel_out[4]~29_combout\ & 
-- (((\add_instance|main_alu|C[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux7~0_combout\,
	datab => \add_instance|incrementer|sum~1_combout\,
	datac => \add_instance|rf_d3_mux|sel_out[4]~29_combout\,
	datad => \add_instance|main_alu|C[2]~4_combout\,
	combout => \add_instance|rf_d3_mux|sel_out[2]~10_combout\);

-- Location: IOIBUF_X0_Y11_N15
\input_vector[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(0),
	o => \input_vector[0]~input_o\);

-- Location: LCCOMB_X17_Y21_N2
\add_instance|rf|Decoder0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Decoder0~14_combout\ = (\add_instance|rf|RF[7][3]~q\) # (!\add_instance|rf|RF[7][2]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|rf|RF[7][3]~q\,
	datad => \add_instance|rf|RF[7][2]~q\,
	combout => \add_instance|rf|Decoder0~14_combout\);

-- Location: LCCOMB_X17_Y22_N4
\add_instance|rf|Decoder0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Decoder0~11_combout\ = (\add_instance|rf|RF[7][1]~q\) # ((\add_instance|rf|Decoder0~14_combout\) # ((\add_instance|rf|RF[7][4]~q\) # (\add_instance|rf|RF[7][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][1]~q\,
	datab => \add_instance|rf|Decoder0~14_combout\,
	datac => \add_instance|rf|RF[7][4]~q\,
	datad => \add_instance|rf|RF[7][0]~q\,
	combout => \add_instance|rf|Decoder0~11_combout\);

-- Location: LCCOMB_X16_Y22_N4
\add_instance|rf|Decoder0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Decoder0~31_combout\ = (!\input_vector[0]~input_o\ & ((\add_instance|rf|RF[7][6]~q\) # ((\add_instance|rf|RF[7][5]~q\) # (\add_instance|rf|Decoder0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][6]~q\,
	datab => \add_instance|rf|RF[7][5]~q\,
	datac => \input_vector[0]~input_o\,
	datad => \add_instance|rf|Decoder0~11_combout\,
	combout => \add_instance|rf|Decoder0~31_combout\);

-- Location: LCCOMB_X16_Y20_N0
\add_instance|rom_unit|rom_data~2072\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rom_unit|rom_data~2072_combout\ = (!\add_instance|rf|RF[7][5]~q\ & (\add_instance|rom_unit|rom_data~2067_combout\ & (!\add_instance|rf|RF[7][6]~q\ & !\add_instance|rf|RF[7][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][5]~q\,
	datab => \add_instance|rom_unit|rom_data~2067_combout\,
	datac => \add_instance|rf|RF[7][6]~q\,
	datad => \add_instance|rf|RF[7][4]~q\,
	combout => \add_instance|rom_unit|rom_data~2072_combout\);

-- Location: LCCOMB_X16_Y19_N20
\add_instance|rf|Decoder0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Decoder0~24_combout\ = (\add_instance|rf|Decoder0~31_combout\ & ((\add_instance|rf_a3_mux|sel_out[2]~1_combout\) # ((!\add_instance|rom_unit|rom_data~2072_combout\ & !\add_instance|rom_unit|rom_data~2071_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf_a3_mux|sel_out[2]~1_combout\,
	datab => \add_instance|rf|Decoder0~31_combout\,
	datac => \add_instance|rom_unit|rom_data~2072_combout\,
	datad => \add_instance|rom_unit|rom_data~2071_combout\,
	combout => \add_instance|rf|Decoder0~24_combout\);

-- Location: LCCOMB_X17_Y22_N12
\add_instance|control_unit|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|control_unit|Mux6~0_combout\ = (!\add_instance|rom_unit|rom_data~2062_combout\ & (!\add_instance|rom_unit|rom_data~2069_combout\ & !\add_instance|rom_unit|rom_data~2068_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rom_unit|rom_data~2062_combout\,
	datab => \add_instance|rom_unit|rom_data~2069_combout\,
	datad => \add_instance|rom_unit|rom_data~2068_combout\,
	combout => \add_instance|control_unit|Mux6~0_combout\);

-- Location: LCCOMB_X17_Y20_N0
\add_instance|rom_unit|rom_data~2061\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rom_unit|rom_data~2061_combout\ = (!\add_instance|rf|RF[7][6]~q\ & (!\add_instance|rf|RF[7][5]~q\ & (!\add_instance|rf|RF[7][4]~q\ & !\add_instance|rf|RF[7][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][6]~q\,
	datab => \add_instance|rf|RF[7][5]~q\,
	datac => \add_instance|rf|RF[7][4]~q\,
	datad => \add_instance|rf|RF[7][3]~q\,
	combout => \add_instance|rom_unit|rom_data~2061_combout\);

-- Location: LCCOMB_X17_Y18_N20
\add_instance|rom_unit|rom_data~2063\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rom_unit|rom_data~2063_combout\ = (!\add_instance|rf|RF[7][2]~q\ & (!\add_instance|rf|RF[7][1]~q\ & (\add_instance|rf|RF[7][0]~q\ & \add_instance|rom_unit|rom_data~2061_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][2]~q\,
	datab => \add_instance|rf|RF[7][1]~q\,
	datac => \add_instance|rf|RF[7][0]~q\,
	datad => \add_instance|rom_unit|rom_data~2061_combout\,
	combout => \add_instance|rom_unit|rom_data~2063_combout\);

-- Location: LCCOMB_X17_Y20_N24
\add_instance|rom_unit|rom_data~2065\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rom_unit|rom_data~2065_combout\ = (!\add_instance|rf|RF[7][3]~q\ & ((\add_instance|rf|RF[7][1]~q\ & (!\add_instance|rf|RF[7][2]~q\)) # (!\add_instance|rf|RF[7][1]~q\ & (\add_instance|rf|RF[7][2]~q\ & !\add_instance|rf|RF[7][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][1]~q\,
	datab => \add_instance|rf|RF[7][3]~q\,
	datac => \add_instance|rf|RF[7][2]~q\,
	datad => \add_instance|rf|RF[7][0]~q\,
	combout => \add_instance|rom_unit|rom_data~2065_combout\);

-- Location: LCCOMB_X17_Y22_N22
\add_instance|rf_a3_mux|sel_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_a3_mux|sel_out[0]~0_combout\ = (\add_instance|control_unit|Mux6~0_combout\ & (((\add_instance|rom_unit|rom_data~2065_combout\ & \add_instance|rom_unit|rom_data~2060_combout\)))) # (!\add_instance|control_unit|Mux6~0_combout\ & 
-- (\add_instance|rom_unit|rom_data~2063_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux6~0_combout\,
	datab => \add_instance|rom_unit|rom_data~2063_combout\,
	datac => \add_instance|rom_unit|rom_data~2065_combout\,
	datad => \add_instance|rom_unit|rom_data~2060_combout\,
	combout => \add_instance|rf_a3_mux|sel_out[0]~0_combout\);

-- Location: LCCOMB_X16_Y19_N30
\add_instance|rf|Decoder0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Decoder0~28_combout\ = (\add_instance|rf|Decoder0~24_combout\ & ((\add_instance|rf_a3_mux|sel_out[2]~1_combout\ & ((!\add_instance|rf_a3_mux|sel_out[0]~0_combout\))) # (!\add_instance|rf_a3_mux|sel_out[2]~1_combout\ & 
-- (!\add_instance|rom_unit|rom_data~2072_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf_a3_mux|sel_out[2]~1_combout\,
	datab => \add_instance|rf|Decoder0~24_combout\,
	datac => \add_instance|rom_unit|rom_data~2072_combout\,
	datad => \add_instance|rf_a3_mux|sel_out[0]~0_combout\,
	combout => \add_instance|rf|Decoder0~28_combout\);

-- Location: FF_X17_Y18_N11
\add_instance|rf|RF[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[2]~10_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[0][2]~q\);

-- Location: FF_X17_Y18_N5
\add_instance|rf|RF[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf_d3_mux|sel_out[2]~10_combout\,
	ena => \add_instance|rf|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[1][2]~q\);

-- Location: LCCOMB_X17_Y18_N26
\add_instance|rf|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux29~0_combout\ = (\add_instance|rom_unit|rom_data~2071_combout\ & (((\add_instance|rf|RF[1][2]~q\) # (\add_instance|rom_unit|rom_data~2062_combout\)))) # (!\add_instance|rom_unit|rom_data~2071_combout\ & (\add_instance|rf|RF[0][2]~q\ & 
-- ((!\add_instance|rom_unit|rom_data~2062_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[0][2]~q\,
	datab => \add_instance|rf|RF[1][2]~q\,
	datac => \add_instance|rom_unit|rom_data~2071_combout\,
	datad => \add_instance|rom_unit|rom_data~2062_combout\,
	combout => \add_instance|rf|Mux29~0_combout\);

-- Location: LCCOMB_X17_Y20_N26
\add_instance|rom_unit|rom_data~2066\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rom_unit|rom_data~2066_combout\ = (!\add_instance|rf|RF[7][1]~q\ & \add_instance|rom_unit|rom_data~2061_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][1]~q\,
	datad => \add_instance|rom_unit|rom_data~2061_combout\,
	combout => \add_instance|rom_unit|rom_data~2066_combout\);

-- Location: LCCOMB_X17_Y20_N28
\add_instance|rf|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux31~2_combout\ = (!\add_instance|rf|RF[7][0]~q\ & (\add_instance|rf|RF[7][2]~q\ & (\add_instance|rom_unit|rom_data~2066_combout\ & \add_instance|rom_unit|rom_data~2071_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][0]~q\,
	datab => \add_instance|rf|RF[7][2]~q\,
	datac => \add_instance|rom_unit|rom_data~2066_combout\,
	datad => \add_instance|rom_unit|rom_data~2071_combout\,
	combout => \add_instance|rf|Mux31~2_combout\);

-- Location: LCCOMB_X16_Y19_N26
\add_instance|rf|Decoder0~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Decoder0~25_combout\ = (!\add_instance|rf_a3_mux|sel_out[2]~1_combout\ & (\add_instance|rf|Decoder0~31_combout\ & (\add_instance|rom_unit|rom_data~2072_combout\ & !\add_instance|rom_unit|rom_data~2071_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf_a3_mux|sel_out[2]~1_combout\,
	datab => \add_instance|rf|Decoder0~31_combout\,
	datac => \add_instance|rom_unit|rom_data~2072_combout\,
	datad => \add_instance|rom_unit|rom_data~2071_combout\,
	combout => \add_instance|rf|Decoder0~25_combout\);

-- Location: FF_X16_Y20_N31
\add_instance|rf|RF[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[2]~10_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[5][2]~q\);

-- Location: LCCOMB_X16_Y20_N30
\add_instance|rf|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux29~1_combout\ = (\add_instance|rom_unit|rom_data~2062_combout\ & ((\add_instance|rf|Mux31~2_combout\) # (!\add_instance|rf|RF[5][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|rom_unit|rom_data~2062_combout\,
	datac => \add_instance|rf|RF[5][2]~q\,
	datad => \add_instance|rf|Mux31~2_combout\,
	combout => \add_instance|rf|Mux29~1_combout\);

-- Location: LCCOMB_X17_Y19_N4
\add_instance|rf|Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux29~2_combout\ = (\add_instance|rf|Mux29~1_combout\ & (\add_instance|rf|Mux31~2_combout\ & ((\add_instance|rf|RF[7][2]~q\) # (!\add_instance|rf|Mux29~0_combout\)))) # (!\add_instance|rf|Mux29~1_combout\ & 
-- (\add_instance|rf|Mux29~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux29~0_combout\,
	datab => \add_instance|rf|Mux31~2_combout\,
	datac => \add_instance|rf|RF[7][2]~q\,
	datad => \add_instance|rf|Mux29~1_combout\,
	combout => \add_instance|rf|Mux29~2_combout\);

-- Location: LCCOMB_X18_Y19_N8
\add_instance|alu_b_mux|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|Equal0~0_combout\ = (!\add_instance|control_unit|Mux10~1_combout\) # (!\add_instance|control_unit|Mux9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|control_unit|Mux9~0_combout\,
	datad => \add_instance|control_unit|Mux10~1_combout\,
	combout => \add_instance|alu_b_mux|Equal0~0_combout\);

-- Location: LCCOMB_X16_Y21_N20
\add_instance|incrementer|sum~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|incrementer|sum~2_combout\ = \add_instance|rf|RF[7][3]~q\ $ (((\add_instance|rf|RF[7][0]~q\ & (\add_instance|rf|RF[7][2]~q\ & \add_instance|rf|RF[7][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][0]~q\,
	datab => \add_instance|rf|RF[7][2]~q\,
	datac => \add_instance|rf|RF[7][3]~q\,
	datad => \add_instance|rf|RF[7][1]~q\,
	combout => \add_instance|incrementer|sum~2_combout\);

-- Location: LCCOMB_X16_Y21_N26
\add_instance|rf_d3_mux|sel_out[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_d3_mux|sel_out[3]~11_combout\ = (\add_instance|rf_d3_mux|sel_out[4]~29_combout\ & (\add_instance|incrementer|sum~2_combout\ & (!\add_instance|control_unit|Mux7~0_combout\))) # (!\add_instance|rf_d3_mux|sel_out[4]~29_combout\ & 
-- (((\add_instance|main_alu|C[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf_d3_mux|sel_out[4]~29_combout\,
	datab => \add_instance|incrementer|sum~2_combout\,
	datac => \add_instance|control_unit|Mux7~0_combout\,
	datad => \add_instance|main_alu|C[3]~6_combout\,
	combout => \add_instance|rf_d3_mux|sel_out[3]~11_combout\);

-- Location: FF_X18_Y20_N3
\add_instance|rf|RF[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[3]~11_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[5][3]~q\);

-- Location: LCCOMB_X18_Y20_N2
\add_instance|rf|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux28~0_combout\ = (\add_instance|rom_unit|rom_data~2071_combout\ & ((\add_instance|rf|Mux31~2_combout\ & (\add_instance|rf|RF[7][3]~q\)) # (!\add_instance|rf|Mux31~2_combout\ & ((\add_instance|rf|RF[5][3]~q\))))) # 
-- (!\add_instance|rom_unit|rom_data~2071_combout\ & (((\add_instance|rf|Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][3]~q\,
	datab => \add_instance|rom_unit|rom_data~2071_combout\,
	datac => \add_instance|rf|RF[5][3]~q\,
	datad => \add_instance|rf|Mux31~2_combout\,
	combout => \add_instance|rf|Mux28~0_combout\);

-- Location: FF_X18_Y20_N9
\add_instance|rf|RF[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[3]~11_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[1][3]~q\);

-- Location: LCCOMB_X16_Y19_N12
\add_instance|rf|Decoder0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Decoder0~26_combout\ = (!\add_instance|rf_a3_mux|sel_out[2]~1_combout\ & (\add_instance|rf|Decoder0~31_combout\ & (!\add_instance|rom_unit|rom_data~2072_combout\ & \add_instance|rom_unit|rom_data~2071_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf_a3_mux|sel_out[2]~1_combout\,
	datab => \add_instance|rf|Decoder0~31_combout\,
	datac => \add_instance|rom_unit|rom_data~2072_combout\,
	datad => \add_instance|rom_unit|rom_data~2071_combout\,
	combout => \add_instance|rf|Decoder0~26_combout\);

-- Location: LCCOMB_X16_Y19_N6
\add_instance|rf|Decoder0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Decoder0~30_combout\ = (\add_instance|rf|Decoder0~26_combout\ & ((\add_instance|rf_a3_mux|sel_out[2]~1_combout\ & (\add_instance|rf_a3_mux|sel_out[0]~0_combout\)) # (!\add_instance|rf_a3_mux|sel_out[2]~1_combout\ & 
-- ((\add_instance|rom_unit|rom_data~2072_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf_a3_mux|sel_out[2]~1_combout\,
	datab => \add_instance|rf_a3_mux|sel_out[0]~0_combout\,
	datac => \add_instance|rom_unit|rom_data~2072_combout\,
	datad => \add_instance|rf|Decoder0~26_combout\,
	combout => \add_instance|rf|Decoder0~30_combout\);

-- Location: FF_X17_Y21_N9
\add_instance|rf|RF[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[3]~11_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[3][3]~q\);

-- Location: FF_X19_Y20_N11
\add_instance|rf|RF[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[3]~11_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[0][3]~q\);

-- Location: LCCOMB_X16_Y19_N0
\add_instance|rf|Decoder0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Decoder0~29_combout\ = (\add_instance|rf|Decoder0~26_combout\ & ((\add_instance|rf_a3_mux|sel_out[2]~1_combout\ & (!\add_instance|rf_a3_mux|sel_out[0]~0_combout\)) # (!\add_instance|rf_a3_mux|sel_out[2]~1_combout\ & 
-- ((!\add_instance|rom_unit|rom_data~2072_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf_a3_mux|sel_out[2]~1_combout\,
	datab => \add_instance|rf_a3_mux|sel_out[0]~0_combout\,
	datac => \add_instance|rom_unit|rom_data~2072_combout\,
	datad => \add_instance|rf|Decoder0~26_combout\,
	combout => \add_instance|rf|Decoder0~29_combout\);

-- Location: FF_X19_Y20_N25
\add_instance|rf|RF[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[3]~11_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[2][3]~q\);

-- Location: LCCOMB_X19_Y20_N24
\add_instance|rf|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux28~1_combout\ = (\add_instance|rom_unit|rom_data~2062_combout\ & (((\add_instance|rf|RF[2][3]~q\) # (\add_instance|rom_unit|rom_data~2071_combout\)))) # (!\add_instance|rom_unit|rom_data~2062_combout\ & (\add_instance|rf|RF[0][3]~q\ & 
-- ((!\add_instance|rom_unit|rom_data~2071_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rom_unit|rom_data~2062_combout\,
	datab => \add_instance|rf|RF[0][3]~q\,
	datac => \add_instance|rf|RF[2][3]~q\,
	datad => \add_instance|rom_unit|rom_data~2071_combout\,
	combout => \add_instance|rf|Mux28~1_combout\);

-- Location: LCCOMB_X18_Y20_N20
\add_instance|rf|Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux28~2_combout\ = (\add_instance|rom_unit|rom_data~2071_combout\ & ((\add_instance|rf|Mux28~1_combout\ & ((\add_instance|rf|RF[3][3]~q\))) # (!\add_instance|rf|Mux28~1_combout\ & (\add_instance|rf|RF[1][3]~q\)))) # 
-- (!\add_instance|rom_unit|rom_data~2071_combout\ & (((\add_instance|rf|Mux28~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[1][3]~q\,
	datab => \add_instance|rom_unit|rom_data~2071_combout\,
	datac => \add_instance|rf|RF[3][3]~q\,
	datad => \add_instance|rf|Mux28~1_combout\,
	combout => \add_instance|rf|Mux28~2_combout\);

-- Location: LCCOMB_X17_Y19_N20
\add_instance|alu_b_mux|sel_out[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[3]~12_combout\ = (!\add_instance|alu_b_mux|Equal0~0_combout\ & ((\add_instance|rom_unit|rom_data~2062_combout\ & (\add_instance|rf|Mux28~0_combout\)) # (!\add_instance|rom_unit|rom_data~2062_combout\ & 
-- ((\add_instance|rf|Mux28~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rom_unit|rom_data~2062_combout\,
	datab => \add_instance|alu_b_mux|Equal0~0_combout\,
	datac => \add_instance|rf|Mux28~0_combout\,
	datad => \add_instance|rf|Mux28~2_combout\,
	combout => \add_instance|alu_b_mux|sel_out[3]~12_combout\);

-- Location: LCCOMB_X17_Y19_N14
\add_instance|alu_b_mux|sel_out[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[3]~13_combout\ = (\add_instance|alu_b_mux|sel_out[2]~6_combout\) # ((\add_instance|alu_b_mux|sel_out[3]~12_combout\) # ((\add_instance|alu_b_mux|sel_out[2]~8_combout\ & \add_instance|rf|Mux29~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[2]~6_combout\,
	datab => \add_instance|alu_b_mux|sel_out[2]~8_combout\,
	datac => \add_instance|rf|Mux29~2_combout\,
	datad => \add_instance|alu_b_mux|sel_out[3]~12_combout\,
	combout => \add_instance|alu_b_mux|sel_out[3]~13_combout\);

-- Location: LCCOMB_X19_Y20_N10
\add_instance|rf|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux12~0_combout\ = (\add_instance|rom_unit|rom_data~2063_combout\ & (\add_instance|rf|RF[1][3]~q\)) # (!\add_instance|rom_unit|rom_data~2063_combout\ & ((\add_instance|rf|RF[0][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[1][3]~q\,
	datac => \add_instance|rf|RF[0][3]~q\,
	datad => \add_instance|rom_unit|rom_data~2063_combout\,
	combout => \add_instance|rf|Mux12~0_combout\);

-- Location: LCCOMB_X16_Y21_N24
\add_instance|main_alu|C[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[3]~5_combout\ = (\add_instance|control_unit|Mux14~0_combout\ & (\add_instance|control_unit|Mux15~0_combout\)) # (!\add_instance|control_unit|Mux14~0_combout\ & (\add_instance|rf|Mux12~0_combout\ $ 
-- (((!\add_instance|control_unit|Mux15~0_combout\ & \add_instance|alu_b_mux|sel_out[3]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux15~0_combout\,
	datab => \add_instance|control_unit|Mux14~0_combout\,
	datac => \add_instance|alu_b_mux|sel_out[3]~13_combout\,
	datad => \add_instance|rf|Mux12~0_combout\,
	combout => \add_instance|main_alu|C[3]~5_combout\);

-- Location: LCCOMB_X16_Y21_N14
\add_instance|main_alu|result~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|result~36_combout\ = (\add_instance|alu_b_mux|sel_out[3]~13_combout\ & ((\add_instance|rom_unit|rom_data~2063_combout\ & ((\add_instance|rf|RF[1][3]~q\))) # (!\add_instance|rom_unit|rom_data~2063_combout\ & 
-- (\add_instance|rf|RF[0][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rom_unit|rom_data~2063_combout\,
	datab => \add_instance|rf|RF[0][3]~q\,
	datac => \add_instance|alu_b_mux|sel_out[3]~13_combout\,
	datad => \add_instance|rf|RF[1][3]~q\,
	combout => \add_instance|main_alu|result~36_combout\);

-- Location: LCCOMB_X17_Y19_N6
\add_instance|main_alu|result~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|result~35_combout\ = (\add_instance|alu_b_mux|sel_out[2]~11_combout\ & ((\add_instance|rom_unit|rom_data~2063_combout\ & (\add_instance|rf|RF[1][2]~q\)) # (!\add_instance|rom_unit|rom_data~2063_combout\ & 
-- ((\add_instance|rf|RF[0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rom_unit|rom_data~2063_combout\,
	datab => \add_instance|rf|RF[1][2]~q\,
	datac => \add_instance|rf|RF[0][2]~q\,
	datad => \add_instance|alu_b_mux|sel_out[2]~11_combout\,
	combout => \add_instance|main_alu|result~35_combout\);

-- Location: LCCOMB_X17_Y18_N28
\add_instance|rf|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux13~0_combout\ = (\add_instance|rom_unit|rom_data~2063_combout\ & ((\add_instance|rf|RF[1][2]~q\))) # (!\add_instance|rom_unit|rom_data~2063_combout\ & (\add_instance|rf|RF[0][2]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[0][2]~q\,
	datac => \add_instance|rf|RF[1][2]~q\,
	datad => \add_instance|rom_unit|rom_data~2063_combout\,
	combout => \add_instance|rf|Mux13~0_combout\);

-- Location: LCCOMB_X17_Y22_N18
\add_instance|incrementer|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|incrementer|sum~0_combout\ = \add_instance|rf|RF[7][1]~q\ $ (\add_instance|rf|RF[7][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][1]~q\,
	datad => \add_instance|rf|RF[7][0]~q\,
	combout => \add_instance|incrementer|sum~0_combout\);

-- Location: FF_X16_Y19_N15
\add_instance|rf|RF[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[1]~9_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[5][1]~q\);

-- Location: LCCOMB_X16_Y19_N14
\add_instance|rf|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux30~0_combout\ = (\add_instance|rom_unit|rom_data~2071_combout\ & ((\add_instance|rf|Mux31~2_combout\ & (\add_instance|rf|RF[7][1]~q\)) # (!\add_instance|rf|Mux31~2_combout\ & ((\add_instance|rf|RF[5][1]~q\))))) # 
-- (!\add_instance|rom_unit|rom_data~2071_combout\ & (((\add_instance|rf|Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rom_unit|rom_data~2071_combout\,
	datab => \add_instance|rf|RF[7][1]~q\,
	datac => \add_instance|rf|RF[5][1]~q\,
	datad => \add_instance|rf|Mux31~2_combout\,
	combout => \add_instance|rf|Mux30~0_combout\);

-- Location: FF_X17_Y19_N9
\add_instance|rf|RF[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[1]~9_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[3][1]~q\);

-- Location: FF_X17_Y18_N15
\add_instance|rf|RF[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf_d3_mux|sel_out[1]~9_combout\,
	ena => \add_instance|rf|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[0][1]~q\);

-- Location: FF_X16_Y19_N29
\add_instance|rf|RF[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[1]~9_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[2][1]~q\);

-- Location: LCCOMB_X16_Y19_N28
\add_instance|rf|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux30~1_combout\ = (\add_instance|rom_unit|rom_data~2062_combout\ & (((\add_instance|rf|RF[2][1]~q\) # (\add_instance|rom_unit|rom_data~2071_combout\)))) # (!\add_instance|rom_unit|rom_data~2062_combout\ & (\add_instance|rf|RF[0][1]~q\ & 
-- ((!\add_instance|rom_unit|rom_data~2071_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[0][1]~q\,
	datab => \add_instance|rom_unit|rom_data~2062_combout\,
	datac => \add_instance|rf|RF[2][1]~q\,
	datad => \add_instance|rom_unit|rom_data~2071_combout\,
	combout => \add_instance|rf|Mux30~1_combout\);

-- Location: LCCOMB_X17_Y19_N8
\add_instance|rf|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux30~2_combout\ = (\add_instance|rom_unit|rom_data~2071_combout\ & ((\add_instance|rf|Mux30~1_combout\ & ((\add_instance|rf|RF[3][1]~q\))) # (!\add_instance|rf|Mux30~1_combout\ & (\add_instance|rf|RF[1][1]~q\)))) # 
-- (!\add_instance|rom_unit|rom_data~2071_combout\ & (((\add_instance|rf|Mux30~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[1][1]~q\,
	datab => \add_instance|rom_unit|rom_data~2071_combout\,
	datac => \add_instance|rf|RF[3][1]~q\,
	datad => \add_instance|rf|Mux30~1_combout\,
	combout => \add_instance|rf|Mux30~2_combout\);

-- Location: LCCOMB_X18_Y19_N14
\add_instance|alu_b_mux|sel_out[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[1]~7_combout\ = (!\add_instance|alu_b_mux|Equal0~0_combout\ & ((\add_instance|rom_unit|rom_data~2062_combout\ & (\add_instance|rf|Mux30~0_combout\)) # (!\add_instance|rom_unit|rom_data~2062_combout\ & 
-- ((\add_instance|rf|Mux30~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rom_unit|rom_data~2062_combout\,
	datab => \add_instance|alu_b_mux|Equal0~0_combout\,
	datac => \add_instance|rf|Mux30~0_combout\,
	datad => \add_instance|rf|Mux30~2_combout\,
	combout => \add_instance|alu_b_mux|sel_out[1]~7_combout\);

-- Location: LCCOMB_X18_Y19_N2
\add_instance|alu_b_mux|sel_out[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[1]~9_combout\ = (\add_instance|alu_b_mux|sel_out[2]~6_combout\) # ((\add_instance|alu_b_mux|sel_out[1]~7_combout\) # ((\add_instance|alu_b_mux|sel_out[2]~8_combout\ & \add_instance|rf|Mux31~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[2]~6_combout\,
	datab => \add_instance|alu_b_mux|sel_out[2]~8_combout\,
	datac => \add_instance|alu_b_mux|sel_out[1]~7_combout\,
	datad => \add_instance|rf|Mux31~7_combout\,
	combout => \add_instance|alu_b_mux|sel_out[1]~9_combout\);

-- Location: LCCOMB_X17_Y18_N8
\add_instance|main_alu|result~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|result~33_combout\ = \add_instance|alu_b_mux|sel_out[1]~9_combout\ $ (((\add_instance|rom_unit|rom_data~2063_combout\ & ((\add_instance|rf|RF[1][1]~q\))) # (!\add_instance|rom_unit|rom_data~2063_combout\ & 
-- (\add_instance|rf|RF[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[1]~9_combout\,
	datab => \add_instance|rf|RF[0][1]~q\,
	datac => \add_instance|rf|RF[1][1]~q\,
	datad => \add_instance|rom_unit|rom_data~2063_combout\,
	combout => \add_instance|main_alu|result~33_combout\);

-- Location: FF_X17_Y18_N23
\add_instance|rf|RF[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf_d3_mux|sel_out[0]~8_combout\,
	ena => \add_instance|rf|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[0][0]~q\);

-- Location: LCCOMB_X17_Y19_N28
\add_instance|rom_unit|rom_data~2070\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rom_unit|rom_data~2070_combout\ = (!\add_instance|rom_unit|rom_data~2064_combout\ & (!\add_instance|rf|RF[7][6]~q\ & (!\add_instance|rf|RF[7][4]~q\ & !\add_instance|rf|RF[7][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rom_unit|rom_data~2064_combout\,
	datab => \add_instance|rf|RF[7][6]~q\,
	datac => \add_instance|rf|RF[7][4]~q\,
	datad => \add_instance|rf|RF[7][5]~q\,
	combout => \add_instance|rom_unit|rom_data~2070_combout\);

-- Location: LCCOMB_X18_Y19_N26
\add_instance|alu_b_mux|sel_out[0]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[0]~37_combout\ = (\add_instance|control_unit|Mux9~0_combout\ & (\add_instance|control_unit|Mux10~1_combout\ & ((\add_instance|rf|Mux31~7_combout\)))) # (!\add_instance|control_unit|Mux9~0_combout\ & 
-- (((\add_instance|rom_unit|rom_data~2070_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux10~1_combout\,
	datab => \add_instance|rom_unit|rom_data~2070_combout\,
	datac => \add_instance|control_unit|Mux9~0_combout\,
	datad => \add_instance|rf|Mux31~7_combout\,
	combout => \add_instance|alu_b_mux|sel_out[0]~37_combout\);

-- Location: LCCOMB_X17_Y18_N16
\add_instance|main_alu|result~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|result~32_combout\ = (\add_instance|alu_b_mux|sel_out[0]~37_combout\ & ((\add_instance|rom_unit|rom_data~2063_combout\ & ((\add_instance|rf|RF[1][0]~q\))) # (!\add_instance|rom_unit|rom_data~2063_combout\ & 
-- (\add_instance|rf|RF[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[0][0]~q\,
	datab => \add_instance|rom_unit|rom_data~2063_combout\,
	datac => \add_instance|rf|RF[1][0]~q\,
	datad => \add_instance|alu_b_mux|sel_out[0]~37_combout\,
	combout => \add_instance|main_alu|result~32_combout\);

-- Location: LCCOMB_X19_Y18_N20
\add_instance|main_alu|C[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[1]~1_combout\ = (\add_instance|control_unit|Mux15~0_combout\ & (((\add_instance|control_unit|Mux14~0_combout\)))) # (!\add_instance|control_unit|Mux15~0_combout\ & (\add_instance|main_alu|result~33_combout\ $ 
-- (((\add_instance|main_alu|result~32_combout\ & \add_instance|control_unit|Mux14~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|main_alu|result~33_combout\,
	datab => \add_instance|control_unit|Mux15~0_combout\,
	datac => \add_instance|main_alu|result~32_combout\,
	datad => \add_instance|control_unit|Mux14~0_combout\,
	combout => \add_instance|main_alu|C[1]~1_combout\);

-- Location: LCCOMB_X19_Y21_N28
\add_instance|main_alu|C[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[1]~2_combout\ = (\add_instance|control_unit|Mux15~0_combout\ & ((\add_instance|rf|Mux14~0_combout\ & ((!\add_instance|main_alu|C[1]~1_combout\) # (!\add_instance|alu_b_mux|sel_out[1]~9_combout\))) # 
-- (!\add_instance|rf|Mux14~0_combout\ & ((\add_instance|main_alu|C[1]~1_combout\))))) # (!\add_instance|control_unit|Mux15~0_combout\ & (((\add_instance|main_alu|C[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[1]~9_combout\,
	datab => \add_instance|control_unit|Mux15~0_combout\,
	datac => \add_instance|rf|Mux14~0_combout\,
	datad => \add_instance|main_alu|C[1]~1_combout\,
	combout => \add_instance|main_alu|C[1]~2_combout\);

-- Location: LCCOMB_X17_Y18_N14
\add_instance|rf_d3_mux|sel_out[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_d3_mux|sel_out[1]~9_combout\ = (\add_instance|rf_d3_mux|sel_out[4]~29_combout\ & (!\add_instance|control_unit|Mux7~0_combout\ & (\add_instance|incrementer|sum~0_combout\))) # (!\add_instance|rf_d3_mux|sel_out[4]~29_combout\ & 
-- (((\add_instance|main_alu|C[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux7~0_combout\,
	datab => \add_instance|incrementer|sum~0_combout\,
	datac => \add_instance|rf_d3_mux|sel_out[4]~29_combout\,
	datad => \add_instance|main_alu|C[1]~2_combout\,
	combout => \add_instance|rf_d3_mux|sel_out[1]~9_combout\);

-- Location: FF_X17_Y18_N9
\add_instance|rf|RF[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[1]~9_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[1][1]~q\);

-- Location: LCCOMB_X17_Y18_N0
\add_instance|rf|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux14~0_combout\ = (\add_instance|rom_unit|rom_data~2063_combout\ & (\add_instance|rf|RF[1][1]~q\)) # (!\add_instance|rom_unit|rom_data~2063_combout\ & ((\add_instance|rf|RF[0][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[1][1]~q\,
	datab => \add_instance|rf|RF[0][1]~q\,
	datad => \add_instance|rom_unit|rom_data~2063_combout\,
	combout => \add_instance|rf|Mux14~0_combout\);

-- Location: LCCOMB_X17_Y18_N6
\add_instance|rf|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux15~0_combout\ = (\add_instance|rom_unit|rom_data~2063_combout\ & (\add_instance|rf|RF[1][0]~q\)) # (!\add_instance|rom_unit|rom_data~2063_combout\ & ((\add_instance|rf|RF[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|rf|RF[1][0]~q\,
	datac => \add_instance|rf|RF[0][0]~q\,
	datad => \add_instance|rom_unit|rom_data~2063_combout\,
	combout => \add_instance|rf|Mux15~0_combout\);

-- Location: LCCOMB_X18_Y19_N4
\add_instance|main_alu|carry~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|carry~2_combout\ = (\add_instance|rf|Mux14~0_combout\ & ((\add_instance|alu_b_mux|sel_out[1]~9_combout\) # ((\add_instance|rf|Mux15~0_combout\ & \add_instance|alu_b_mux|sel_out[0]~37_combout\)))) # 
-- (!\add_instance|rf|Mux14~0_combout\ & (\add_instance|rf|Mux15~0_combout\ & (\add_instance|alu_b_mux|sel_out[0]~37_combout\ & \add_instance|alu_b_mux|sel_out[1]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux14~0_combout\,
	datab => \add_instance|rf|Mux15~0_combout\,
	datac => \add_instance|alu_b_mux|sel_out[0]~37_combout\,
	datad => \add_instance|alu_b_mux|sel_out[1]~9_combout\,
	combout => \add_instance|main_alu|carry~2_combout\);

-- Location: LCCOMB_X18_Y19_N30
\add_instance|main_alu|carry~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|carry~3_combout\ = (\add_instance|main_alu|carry~2_combout\ & ((\add_instance|rf|Mux13~0_combout\) # (\add_instance|alu_b_mux|sel_out[2]~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|rf|Mux13~0_combout\,
	datac => \add_instance|main_alu|carry~2_combout\,
	datad => \add_instance|alu_b_mux|sel_out[2]~11_combout\,
	combout => \add_instance|main_alu|carry~3_combout\);

-- Location: LCCOMB_X17_Y21_N26
\add_instance|main_alu|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|sum~0_combout\ = \add_instance|rf|Mux12~0_combout\ $ (\add_instance|alu_b_mux|sel_out[3]~13_combout\ $ (((\add_instance|main_alu|result~35_combout\) # (\add_instance|main_alu|carry~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|main_alu|result~35_combout\,
	datab => \add_instance|rf|Mux12~0_combout\,
	datac => \add_instance|main_alu|carry~3_combout\,
	datad => \add_instance|alu_b_mux|sel_out[3]~13_combout\,
	combout => \add_instance|main_alu|sum~0_combout\);

-- Location: LCCOMB_X16_Y21_N2
\add_instance|main_alu|C[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[3]~6_combout\ = (\add_instance|main_alu|C[3]~5_combout\ & (((!\add_instance|control_unit|Mux14~0_combout\)) # (!\add_instance|main_alu|result~36_combout\))) # (!\add_instance|main_alu|C[3]~5_combout\ & 
-- (((\add_instance|control_unit|Mux14~0_combout\ & \add_instance|main_alu|sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|main_alu|C[3]~5_combout\,
	datab => \add_instance|main_alu|result~36_combout\,
	datac => \add_instance|control_unit|Mux14~0_combout\,
	datad => \add_instance|main_alu|sum~0_combout\,
	combout => \add_instance|main_alu|C[3]~6_combout\);

-- Location: LCCOMB_X18_Y20_N18
\add_instance|rf|Mux28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux28~3_combout\ = (\add_instance|rom_unit|rom_data~2062_combout\ & (\add_instance|rf|Mux28~0_combout\)) # (!\add_instance|rom_unit|rom_data~2062_combout\ & ((\add_instance|rf|Mux28~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rom_unit|rom_data~2062_combout\,
	datab => \add_instance|rf|Mux28~0_combout\,
	datad => \add_instance|rf|Mux28~2_combout\,
	combout => \add_instance|rf|Mux28~3_combout\);

-- Location: LCCOMB_X16_Y21_N6
\add_instance|adder|carry~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|adder|carry~2_combout\ = (\add_instance|rf|RF[7][1]~q\ & ((\add_instance|rom_unit|rom_data~2072_combout\) # ((\add_instance|rf|RF[7][0]~q\ & \add_instance|rom_unit|rom_data~2070_combout\)))) # (!\add_instance|rf|RF[7][1]~q\ & 
-- (\add_instance|rom_unit|rom_data~2072_combout\ & (\add_instance|rf|RF[7][0]~q\ & \add_instance|rom_unit|rom_data~2070_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][1]~q\,
	datab => \add_instance|rom_unit|rom_data~2072_combout\,
	datac => \add_instance|rf|RF[7][0]~q\,
	datad => \add_instance|rom_unit|rom_data~2070_combout\,
	combout => \add_instance|adder|carry~2_combout\);

-- Location: LCCOMB_X16_Y21_N16
\add_instance|adder|sum~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|adder|sum~2_combout\ = \add_instance|rf|RF[7][3]~q\ $ (((\add_instance|rom_unit|rom_data~2072_combout\ & (!\add_instance|rf|RF[7][2]~q\ & !\add_instance|adder|carry~2_combout\)) # (!\add_instance|rom_unit|rom_data~2072_combout\ & 
-- (\add_instance|rf|RF[7][2]~q\ & \add_instance|adder|carry~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][3]~q\,
	datab => \add_instance|rom_unit|rom_data~2072_combout\,
	datac => \add_instance|rf|RF[7][2]~q\,
	datad => \add_instance|adder|carry~2_combout\,
	combout => \add_instance|adder|sum~2_combout\);

-- Location: LCCOMB_X21_Y18_N16
\add_instance|main_alu|zero_check~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|zero_check~2_combout\ = (\add_instance|rf|Mux11~0_combout\) # ((\add_instance|rf|Mux14~0_combout\) # ((\add_instance|rf|Mux15~0_combout\) # (\add_instance|rf|Mux13~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux11~0_combout\,
	datab => \add_instance|rf|Mux14~0_combout\,
	datac => \add_instance|rf|Mux15~0_combout\,
	datad => \add_instance|rf|Mux13~0_combout\,
	combout => \add_instance|main_alu|zero_check~2_combout\);

-- Location: LCCOMB_X18_Y20_N22
\add_instance|alu_b_mux|sel_out[8]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[8]~20_combout\ = (!\add_instance|control_unit|Mux9~0_combout\ & ((\add_instance|control_unit|Mux10~1_combout\ & (\add_instance|rom_unit|rom_data~2072_combout\)) # (!\add_instance|control_unit|Mux10~1_combout\ & 
-- ((\add_instance|rom_unit|rom_data~2062_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rom_unit|rom_data~2072_combout\,
	datab => \add_instance|control_unit|Mux9~0_combout\,
	datac => \add_instance|control_unit|Mux10~1_combout\,
	datad => \add_instance|rom_unit|rom_data~2062_combout\,
	combout => \add_instance|alu_b_mux|sel_out[8]~20_combout\);

-- Location: LCCOMB_X17_Y22_N28
\add_instance|pc_plus_imm_mux|sel_out[6]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|pc_plus_imm_mux|sel_out[6]~0_combout\ = (!\add_instance|rf|RF[7][5]~q\ & !\add_instance|rf|RF[7][4]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|rf|RF[7][5]~q\,
	datad => \add_instance|rf|RF[7][4]~q\,
	combout => \add_instance|pc_plus_imm_mux|sel_out[6]~0_combout\);

-- Location: LCCOMB_X17_Y22_N30
\add_instance|pc_plus_imm_mux|sel_out[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|pc_plus_imm_mux|sel_out[6]~1_combout\ = (\add_instance|pc_plus_imm_mux|sel_out[6]~0_combout\ & ((\add_instance|control_unit|Mux7~0_combout\ & ((\add_instance|rom_unit|rom_data~2067_combout\))) # (!\add_instance|control_unit|Mux7~0_combout\ & 
-- (\add_instance|rom_unit|rom_data~2065_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux7~0_combout\,
	datab => \add_instance|pc_plus_imm_mux|sel_out[6]~0_combout\,
	datac => \add_instance|rom_unit|rom_data~2065_combout\,
	datad => \add_instance|rom_unit|rom_data~2067_combout\,
	combout => \add_instance|pc_plus_imm_mux|sel_out[6]~1_combout\);

-- Location: LCCOMB_X17_Y21_N18
\add_instance|adder|carry~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|adder|carry~5_combout\ = (\add_instance|pc_plus_imm_mux|sel_out[6]~1_combout\) # (\add_instance|rf|RF[7][6]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|pc_plus_imm_mux|sel_out[6]~1_combout\,
	datad => \add_instance|rf|RF[7][6]~q\,
	combout => \add_instance|adder|carry~5_combout\);

-- Location: LCCOMB_X16_Y20_N26
\add_instance|incrementer|carry~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|incrementer|carry~1_combout\ = (\add_instance|rf|RF[7][6]~q\ & (\add_instance|rf|RF[7][4]~q\ & (\add_instance|rf|RF[7][5]~q\ & \add_instance|incrementer|carry~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][6]~q\,
	datab => \add_instance|rf|RF[7][4]~q\,
	datac => \add_instance|rf|RF[7][5]~q\,
	datad => \add_instance|incrementer|carry~0_combout\,
	combout => \add_instance|incrementer|carry~1_combout\);

-- Location: LCCOMB_X21_Y19_N18
\add_instance|rf_d3_mux|sel_out[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_d3_mux|sel_out[7]~14_combout\ = (\add_instance|control_unit|Mux7~0_combout\ & ((\add_instance|rf_d3_mux|sel_out[4]~29_combout\ & (\add_instance|rom_unit|rom_data~2070_combout\)) # (!\add_instance|rf_d3_mux|sel_out[4]~29_combout\ & 
-- ((\add_instance|main_alu|C[7]~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux7~0_combout\,
	datab => \add_instance|rom_unit|rom_data~2070_combout\,
	datac => \add_instance|rf_d3_mux|sel_out[4]~29_combout\,
	datad => \add_instance|main_alu|C[7]~14_combout\,
	combout => \add_instance|rf_d3_mux|sel_out[7]~14_combout\);

-- Location: LCCOMB_X21_Y19_N30
\add_instance|rf_d3_mux|sel_out[7]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_d3_mux|sel_out[7]~30_combout\ = (\add_instance|rf_d3_mux|sel_out[7]~14_combout\) # ((!\add_instance|control_unit|Mux7~0_combout\ & (\add_instance|incrementer|carry~1_combout\ $ (\add_instance|rf|RF[7][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux7~0_combout\,
	datab => \add_instance|incrementer|carry~1_combout\,
	datac => \add_instance|rf|RF[7][7]~q\,
	datad => \add_instance|rf_d3_mux|sel_out[7]~14_combout\,
	combout => \add_instance|rf_d3_mux|sel_out[7]~30_combout\);

-- Location: FF_X18_Y18_N7
\add_instance|rf|RF[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[7]~30_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[1][7]~q\);

-- Location: FF_X18_Y18_N17
\add_instance|rf|RF[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[7]~30_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[0][7]~q\);

-- Location: LCCOMB_X18_Y18_N22
\add_instance|rf|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux8~0_combout\ = (\add_instance|rom_unit|rom_data~2063_combout\ & (\add_instance|rf|RF[1][7]~q\)) # (!\add_instance|rom_unit|rom_data~2063_combout\ & ((\add_instance|rf|RF[0][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[1][7]~q\,
	datab => \add_instance|rf|RF[0][7]~q\,
	datad => \add_instance|rom_unit|rom_data~2063_combout\,
	combout => \add_instance|rf|Mux8~0_combout\);

-- Location: LCCOMB_X21_Y19_N8
\add_instance|rf|RF[5][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|RF[5][7]~feeder_combout\ = \add_instance|rf_d3_mux|sel_out[7]~30_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|rf_d3_mux|sel_out[7]~30_combout\,
	combout => \add_instance|rf|RF[5][7]~feeder_combout\);

-- Location: FF_X21_Y19_N9
\add_instance|rf|RF[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|RF[5][7]~feeder_combout\,
	ena => \add_instance|rf|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[5][7]~q\);

-- Location: LCCOMB_X21_Y19_N26
\add_instance|rf|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux24~1_combout\ = (\add_instance|rom_unit|rom_data~2062_combout\ & ((\add_instance|rf|Mux31~2_combout\) # (!\add_instance|rf|RF[5][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|rom_unit|rom_data~2062_combout\,
	datac => \add_instance|rf|RF[5][7]~q\,
	datad => \add_instance|rf|Mux31~2_combout\,
	combout => \add_instance|rf|Mux24~1_combout\);

-- Location: LCCOMB_X18_Y18_N0
\add_instance|rf|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux24~0_combout\ = (\add_instance|rom_unit|rom_data~2062_combout\ & (((\add_instance|rom_unit|rom_data~2071_combout\)))) # (!\add_instance|rom_unit|rom_data~2062_combout\ & ((\add_instance|rom_unit|rom_data~2071_combout\ & 
-- (\add_instance|rf|RF[1][7]~q\)) # (!\add_instance|rom_unit|rom_data~2071_combout\ & ((\add_instance|rf|RF[0][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[1][7]~q\,
	datab => \add_instance|rf|RF[0][7]~q\,
	datac => \add_instance|rom_unit|rom_data~2062_combout\,
	datad => \add_instance|rom_unit|rom_data~2071_combout\,
	combout => \add_instance|rf|Mux24~0_combout\);

-- Location: LCCOMB_X21_Y19_N28
\add_instance|rf|Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux24~2_combout\ = (\add_instance|rf|Mux24~1_combout\ & (\add_instance|rf|Mux31~2_combout\ & ((\add_instance|rf|RF[7][7]~q\) # (!\add_instance|rf|Mux24~0_combout\)))) # (!\add_instance|rf|Mux24~1_combout\ & 
-- (((\add_instance|rf|Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux31~2_combout\,
	datab => \add_instance|rf|RF[7][7]~q\,
	datac => \add_instance|rf|Mux24~1_combout\,
	datad => \add_instance|rf|Mux24~0_combout\,
	combout => \add_instance|rf|Mux24~2_combout\);

-- Location: LCCOMB_X19_Y19_N8
\add_instance|alu_b_mux|sel_out[7]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[7]~18_combout\ = (\add_instance|control_unit|Mux9~0_combout\ & (((\add_instance|rf|Mux24~2_combout\ & \add_instance|control_unit|Mux10~1_combout\)))) # (!\add_instance|control_unit|Mux9~0_combout\ & 
-- ((\add_instance|rom_unit|rom_data~2072_combout\) # ((!\add_instance|control_unit|Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux9~0_combout\,
	datab => \add_instance|rom_unit|rom_data~2072_combout\,
	datac => \add_instance|rf|Mux24~2_combout\,
	datad => \add_instance|control_unit|Mux10~1_combout\,
	combout => \add_instance|alu_b_mux|sel_out[7]~18_combout\);

-- Location: LCCOMB_X16_Y20_N24
\add_instance|incrementer|sum~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|incrementer|sum~5_combout\ = \add_instance|rf|RF[7][6]~q\ $ (((\add_instance|rf|RF[7][4]~q\ & (\add_instance|rf|RF[7][5]~q\ & \add_instance|incrementer|carry~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][6]~q\,
	datab => \add_instance|rf|RF[7][4]~q\,
	datac => \add_instance|rf|RF[7][5]~q\,
	datad => \add_instance|incrementer|carry~0_combout\,
	combout => \add_instance|incrementer|sum~5_combout\);

-- Location: LCCOMB_X16_Y19_N2
\add_instance|control_unit|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|control_unit|Mux8~0_combout\ = (!\add_instance|rom_unit|rom_data~2058_combout\ & (\add_instance|rom_unit|rom_data~2068_combout\ & !\add_instance|rom_unit|rom_data~2062_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rom_unit|rom_data~2058_combout\,
	datab => \add_instance|rom_unit|rom_data~2068_combout\,
	datad => \add_instance|rom_unit|rom_data~2062_combout\,
	combout => \add_instance|control_unit|Mux8~0_combout\);

-- Location: LCCOMB_X19_Y19_N28
\add_instance|alu_b_mux|sel_out[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[6]~16_combout\ = (\add_instance|control_unit|Mux9~0_combout\ & ((\add_instance|control_unit|Mux10~1_combout\ & ((\add_instance|rf|Mux25~2_combout\))) # (!\add_instance|control_unit|Mux10~1_combout\ & 
-- (\add_instance|rf|Mux26~2_combout\)))) # (!\add_instance|control_unit|Mux9~0_combout\ & (((!\add_instance|control_unit|Mux10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110100001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux9~0_combout\,
	datab => \add_instance|rf|Mux26~2_combout\,
	datac => \add_instance|control_unit|Mux10~1_combout\,
	datad => \add_instance|rf|Mux25~2_combout\,
	combout => \add_instance|alu_b_mux|sel_out[6]~16_combout\);

-- Location: LCCOMB_X19_Y19_N2
\add_instance|alu_b_mux|sel_out[6]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[6]~17_combout\ = (\add_instance|control_unit|Mux9~0_combout\ & (((\add_instance|alu_b_mux|sel_out[6]~16_combout\)))) # (!\add_instance|control_unit|Mux9~0_combout\ & ((\add_instance|alu_b_mux|sel_out[6]~16_combout\ & 
-- ((\add_instance|rom_unit|rom_data~2071_combout\))) # (!\add_instance|alu_b_mux|sel_out[6]~16_combout\ & (\add_instance|rom_unit|rom_data~2072_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux9~0_combout\,
	datab => \add_instance|rom_unit|rom_data~2072_combout\,
	datac => \add_instance|rom_unit|rom_data~2071_combout\,
	datad => \add_instance|alu_b_mux|sel_out[6]~16_combout\,
	combout => \add_instance|alu_b_mux|sel_out[6]~17_combout\);

-- Location: FF_X19_Y19_N27
\add_instance|rf|RF[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out\(6),
	sload => VCC,
	ena => \add_instance|rf|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[1][6]~q\);

-- Location: LCCOMB_X19_Y20_N14
\add_instance|rf|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux9~0_combout\ = (\add_instance|rom_unit|rom_data~2063_combout\ & (\add_instance|rf|RF[1][6]~q\)) # (!\add_instance|rom_unit|rom_data~2063_combout\ & ((\add_instance|rf|RF[0][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|rf|RF[1][6]~q\,
	datac => \add_instance|rf|RF[0][6]~q\,
	datad => \add_instance|rom_unit|rom_data~2063_combout\,
	combout => \add_instance|rf|Mux9~0_combout\);

-- Location: LCCOMB_X19_Y20_N18
\add_instance|main_alu|result~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|result~37_combout\ = \add_instance|alu_b_mux|sel_out[6]~17_combout\ $ (((\add_instance|rom_unit|rom_data~2063_combout\ & ((\add_instance|rf|RF[1][6]~q\))) # (!\add_instance|rom_unit|rom_data~2063_combout\ & 
-- (\add_instance|rf|RF[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[0][6]~q\,
	datab => \add_instance|rf|RF[1][6]~q\,
	datac => \add_instance|rom_unit|rom_data~2063_combout\,
	datad => \add_instance|alu_b_mux|sel_out[6]~17_combout\,
	combout => \add_instance|main_alu|result~37_combout\);

-- Location: LCCOMB_X16_Y20_N6
\add_instance|incrementer|sum~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|incrementer|sum~4_combout\ = \add_instance|rf|RF[7][5]~q\ $ (((\add_instance|incrementer|carry~0_combout\ & \add_instance|rf|RF[7][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][5]~q\,
	datab => \add_instance|incrementer|carry~0_combout\,
	datad => \add_instance|rf|RF[7][4]~q\,
	combout => \add_instance|incrementer|sum~4_combout\);

-- Location: FF_X17_Y18_N3
\add_instance|rf|RF[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[4]~12_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[0][4]~q\);

-- Location: LCCOMB_X18_Y20_N14
\add_instance|rf|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux27~0_combout\ = (\add_instance|rom_unit|rom_data~2062_combout\ & (((\add_instance|rom_unit|rom_data~2071_combout\)))) # (!\add_instance|rom_unit|rom_data~2062_combout\ & ((\add_instance|rom_unit|rom_data~2071_combout\ & 
-- ((\add_instance|rf|RF[1][4]~q\))) # (!\add_instance|rom_unit|rom_data~2071_combout\ & (\add_instance|rf|RF[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[0][4]~q\,
	datab => \add_instance|rom_unit|rom_data~2062_combout\,
	datac => \add_instance|rf|RF[1][4]~q\,
	datad => \add_instance|rom_unit|rom_data~2071_combout\,
	combout => \add_instance|rf|Mux27~0_combout\);

-- Location: FF_X18_Y20_N19
\add_instance|rf|RF[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[4]~12_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[5][4]~q\);

-- Location: LCCOMB_X18_Y20_N28
\add_instance|rf|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux27~1_combout\ = (\add_instance|rom_unit|rom_data~2062_combout\ & ((\add_instance|rf|Mux31~2_combout\) # (!\add_instance|rf|RF[5][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|rom_unit|rom_data~2062_combout\,
	datac => \add_instance|rf|RF[5][4]~q\,
	datad => \add_instance|rf|Mux31~2_combout\,
	combout => \add_instance|rf|Mux27~1_combout\);

-- Location: LCCOMB_X18_Y20_N26
\add_instance|rf|Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux27~2_combout\ = (\add_instance|rf|Mux27~1_combout\ & (\add_instance|rf|Mux31~2_combout\ & ((\add_instance|rf|RF[7][4]~q\) # (!\add_instance|rf|Mux27~0_combout\)))) # (!\add_instance|rf|Mux27~1_combout\ & 
-- (((\add_instance|rf|Mux27~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][4]~q\,
	datab => \add_instance|rf|Mux31~2_combout\,
	datac => \add_instance|rf|Mux27~0_combout\,
	datad => \add_instance|rf|Mux27~1_combout\,
	combout => \add_instance|rf|Mux27~2_combout\);

-- Location: LCCOMB_X19_Y19_N14
\add_instance|alu_b_mux|sel_out[5]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[5]~15_combout\ = (\add_instance|control_unit|Mux9~0_combout\ & (((\add_instance|rf|Mux27~2_combout\ & !\add_instance|control_unit|Mux10~1_combout\)))) # (!\add_instance|control_unit|Mux9~0_combout\ & 
-- (\add_instance|rom_unit|rom_data~2072_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux9~0_combout\,
	datab => \add_instance|rom_unit|rom_data~2072_combout\,
	datac => \add_instance|rf|Mux27~2_combout\,
	datad => \add_instance|control_unit|Mux10~1_combout\,
	combout => \add_instance|alu_b_mux|sel_out[5]~15_combout\);

-- Location: LCCOMB_X18_Y18_N24
\add_instance|main_alu|result~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|result~18_combout\ = (\add_instance|rf|Mux10~0_combout\ & ((\add_instance|alu_b_mux|sel_out[5]~15_combout\) # ((\add_instance|rf|Mux26~2_combout\ & !\add_instance|alu_b_mux|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux26~2_combout\,
	datab => \add_instance|rf|Mux10~0_combout\,
	datac => \add_instance|alu_b_mux|Equal0~0_combout\,
	datad => \add_instance|alu_b_mux|sel_out[5]~15_combout\,
	combout => \add_instance|main_alu|result~18_combout\);

-- Location: LCCOMB_X19_Y19_N10
\add_instance|alu_b_mux|sel_out[5]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[5]~39_combout\ = (\add_instance|alu_b_mux|sel_out[5]~15_combout\) # ((\add_instance|control_unit|Mux9~0_combout\ & (\add_instance|rf|Mux26~2_combout\ & \add_instance|control_unit|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux9~0_combout\,
	datab => \add_instance|rf|Mux26~2_combout\,
	datac => \add_instance|alu_b_mux|sel_out[5]~15_combout\,
	datad => \add_instance|control_unit|Mux10~1_combout\,
	combout => \add_instance|alu_b_mux|sel_out[5]~39_combout\);

-- Location: LCCOMB_X18_Y18_N14
\add_instance|main_alu|C[5]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[5]~9_combout\ = (\add_instance|control_unit|Mux14~0_combout\ & (\add_instance|control_unit|Mux15~0_combout\)) # (!\add_instance|control_unit|Mux14~0_combout\ & (\add_instance|rf|Mux10~0_combout\ $ 
-- (((!\add_instance|control_unit|Mux15~0_combout\ & \add_instance|alu_b_mux|sel_out[5]~39_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux14~0_combout\,
	datab => \add_instance|control_unit|Mux15~0_combout\,
	datac => \add_instance|alu_b_mux|sel_out[5]~39_combout\,
	datad => \add_instance|rf|Mux10~0_combout\,
	combout => \add_instance|main_alu|C[5]~9_combout\);

-- Location: LCCOMB_X18_Y20_N16
\add_instance|alu_b_mux|sel_out[4]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[4]~14_combout\ = (\add_instance|control_unit|Mux9~0_combout\ & (((!\add_instance|control_unit|Mux10~1_combout\ & \add_instance|rf|Mux28~3_combout\)))) # (!\add_instance|control_unit|Mux9~0_combout\ & 
-- (\add_instance|rom_unit|rom_data~2071_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rom_unit|rom_data~2071_combout\,
	datab => \add_instance|control_unit|Mux9~0_combout\,
	datac => \add_instance|control_unit|Mux10~1_combout\,
	datad => \add_instance|rf|Mux28~3_combout\,
	combout => \add_instance|alu_b_mux|sel_out[4]~14_combout\);

-- Location: LCCOMB_X18_Y20_N30
\add_instance|alu_b_mux|sel_out[4]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[4]~38_combout\ = (\add_instance|alu_b_mux|sel_out[4]~14_combout\) # ((\add_instance|rf|Mux27~2_combout\ & (\add_instance|control_unit|Mux9~0_combout\ & \add_instance|control_unit|Mux10~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux27~2_combout\,
	datab => \add_instance|control_unit|Mux9~0_combout\,
	datac => \add_instance|control_unit|Mux10~1_combout\,
	datad => \add_instance|alu_b_mux|sel_out[4]~14_combout\,
	combout => \add_instance|alu_b_mux|sel_out[4]~38_combout\);

-- Location: LCCOMB_X18_Y19_N12
\add_instance|main_alu|carry~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|carry~4_combout\ = (\add_instance|rf|Mux12~0_combout\ & ((\add_instance|main_alu|result~35_combout\) # ((\add_instance|main_alu|carry~3_combout\) # (\add_instance|alu_b_mux|sel_out[3]~13_combout\)))) # 
-- (!\add_instance|rf|Mux12~0_combout\ & (\add_instance|alu_b_mux|sel_out[3]~13_combout\ & ((\add_instance|main_alu|result~35_combout\) # (\add_instance|main_alu|carry~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux12~0_combout\,
	datab => \add_instance|main_alu|result~35_combout\,
	datac => \add_instance|main_alu|carry~3_combout\,
	datad => \add_instance|alu_b_mux|sel_out[3]~13_combout\,
	combout => \add_instance|main_alu|carry~4_combout\);

-- Location: LCCOMB_X18_Y19_N6
\add_instance|main_alu|carry~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|carry~5_combout\ = (\add_instance|main_alu|carry~4_combout\ & ((\add_instance|rf|Mux11~0_combout\) # (\add_instance|alu_b_mux|sel_out[4]~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|rf|Mux11~0_combout\,
	datac => \add_instance|alu_b_mux|sel_out[4]~38_combout\,
	datad => \add_instance|main_alu|carry~4_combout\,
	combout => \add_instance|main_alu|carry~5_combout\);

-- Location: LCCOMB_X18_Y20_N4
\add_instance|main_alu|result~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|result~17_combout\ = (\add_instance|rf|Mux11~0_combout\ & ((\add_instance|alu_b_mux|sel_out[4]~14_combout\) # ((!\add_instance|alu_b_mux|Equal0~0_combout\ & \add_instance|rf|Mux27~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux11~0_combout\,
	datab => \add_instance|alu_b_mux|Equal0~0_combout\,
	datac => \add_instance|rf|Mux27~2_combout\,
	datad => \add_instance|alu_b_mux|sel_out[4]~14_combout\,
	combout => \add_instance|main_alu|result~17_combout\);

-- Location: LCCOMB_X18_Y18_N20
\add_instance|main_alu|sum~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|sum~1_combout\ = \add_instance|rf|Mux10~0_combout\ $ (\add_instance|alu_b_mux|sel_out[5]~39_combout\ $ (((\add_instance|main_alu|carry~5_combout\) # (\add_instance|main_alu|result~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|main_alu|carry~5_combout\,
	datab => \add_instance|rf|Mux10~0_combout\,
	datac => \add_instance|alu_b_mux|sel_out[5]~39_combout\,
	datad => \add_instance|main_alu|result~17_combout\,
	combout => \add_instance|main_alu|sum~1_combout\);

-- Location: LCCOMB_X18_Y18_N26
\add_instance|main_alu|C[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[5]~10_combout\ = (\add_instance|control_unit|Mux14~0_combout\ & ((\add_instance|main_alu|C[5]~9_combout\ & (!\add_instance|main_alu|result~18_combout\)) # (!\add_instance|main_alu|C[5]~9_combout\ & 
-- ((\add_instance|main_alu|sum~1_combout\))))) # (!\add_instance|control_unit|Mux14~0_combout\ & (((\add_instance|main_alu|C[5]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux14~0_combout\,
	datab => \add_instance|main_alu|result~18_combout\,
	datac => \add_instance|main_alu|C[5]~9_combout\,
	datad => \add_instance|main_alu|sum~1_combout\,
	combout => \add_instance|main_alu|C[5]~10_combout\);

-- Location: LCCOMB_X18_Y20_N6
\add_instance|rf_d3_mux|sel_out[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_d3_mux|sel_out[5]~13_combout\ = (\add_instance|rf_d3_mux|sel_out[4]~29_combout\ & (\add_instance|incrementer|sum~4_combout\ & (!\add_instance|control_unit|Mux7~0_combout\))) # (!\add_instance|rf_d3_mux|sel_out[4]~29_combout\ & 
-- (((\add_instance|main_alu|C[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|incrementer|sum~4_combout\,
	datab => \add_instance|control_unit|Mux7~0_combout\,
	datac => \add_instance|main_alu|C[5]~10_combout\,
	datad => \add_instance|rf_d3_mux|sel_out[4]~29_combout\,
	combout => \add_instance|rf_d3_mux|sel_out[5]~13_combout\);

-- Location: FF_X18_Y18_N13
\add_instance|rf|RF[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[5]~13_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[1][5]~q\);

-- Location: FF_X19_Y19_N25
\add_instance|rf|RF[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[5]~13_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[0][5]~q\);

-- Location: LCCOMB_X18_Y18_N18
\add_instance|rf|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux10~0_combout\ = (\add_instance|rom_unit|rom_data~2063_combout\ & (\add_instance|rf|RF[1][5]~q\)) # (!\add_instance|rom_unit|rom_data~2063_combout\ & ((\add_instance|rf|RF[0][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[1][5]~q\,
	datab => \add_instance|rf|RF[0][5]~q\,
	datad => \add_instance|rom_unit|rom_data~2063_combout\,
	combout => \add_instance|rf|Mux10~0_combout\);

-- Location: LCCOMB_X18_Y19_N0
\add_instance|main_alu|carry~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|carry~6_combout\ = (\add_instance|rf|Mux10~0_combout\ & ((\add_instance|main_alu|result~17_combout\) # ((\add_instance|alu_b_mux|sel_out[5]~39_combout\) # (\add_instance|main_alu|carry~5_combout\)))) # 
-- (!\add_instance|rf|Mux10~0_combout\ & (\add_instance|alu_b_mux|sel_out[5]~39_combout\ & ((\add_instance|main_alu|result~17_combout\) # (\add_instance|main_alu|carry~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux10~0_combout\,
	datab => \add_instance|main_alu|result~17_combout\,
	datac => \add_instance|alu_b_mux|sel_out[5]~39_combout\,
	datad => \add_instance|main_alu|carry~5_combout\,
	combout => \add_instance|main_alu|carry~6_combout\);

-- Location: LCCOMB_X19_Y20_N16
\add_instance|main_alu|C[6]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[6]~11_combout\ = (\add_instance|control_unit|Mux15~0_combout\ & (((\add_instance|control_unit|Mux14~0_combout\)))) # (!\add_instance|control_unit|Mux15~0_combout\ & (\add_instance|main_alu|result~37_combout\ $ 
-- (((\add_instance|main_alu|carry~6_combout\ & \add_instance|control_unit|Mux14~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux15~0_combout\,
	datab => \add_instance|main_alu|result~37_combout\,
	datac => \add_instance|main_alu|carry~6_combout\,
	datad => \add_instance|control_unit|Mux14~0_combout\,
	combout => \add_instance|main_alu|C[6]~11_combout\);

-- Location: LCCOMB_X19_Y20_N30
\add_instance|main_alu|C[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[6]~12_combout\ = (\add_instance|control_unit|Mux15~0_combout\ & ((\add_instance|rf|Mux9~0_combout\ & ((!\add_instance|main_alu|C[6]~11_combout\) # (!\add_instance|alu_b_mux|sel_out[6]~17_combout\))) # 
-- (!\add_instance|rf|Mux9~0_combout\ & ((\add_instance|main_alu|C[6]~11_combout\))))) # (!\add_instance|control_unit|Mux15~0_combout\ & (((\add_instance|main_alu|C[6]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux15~0_combout\,
	datab => \add_instance|alu_b_mux|sel_out[6]~17_combout\,
	datac => \add_instance|rf|Mux9~0_combout\,
	datad => \add_instance|main_alu|C[6]~11_combout\,
	combout => \add_instance|main_alu|C[6]~12_combout\);

-- Location: LCCOMB_X16_Y19_N22
\add_instance|rf_d3_mux|sel_out[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_d3_mux|sel_out\(6) = (\add_instance|control_unit|Mux7~0_combout\ & (((!\add_instance|control_unit|Mux8~0_combout\ & \add_instance|main_alu|C[6]~12_combout\)))) # (!\add_instance|control_unit|Mux7~0_combout\ & 
-- (\add_instance|incrementer|sum~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|incrementer|sum~5_combout\,
	datab => \add_instance|control_unit|Mux8~0_combout\,
	datac => \add_instance|main_alu|C[6]~12_combout\,
	datad => \add_instance|control_unit|Mux7~0_combout\,
	combout => \add_instance|rf_d3_mux|sel_out\(6));

-- Location: FF_X19_Y20_N15
\add_instance|rf|RF[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out\(6),
	sload => VCC,
	ena => \add_instance|rf|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[0][6]~q\);

-- Location: LCCOMB_X19_Y19_N26
\add_instance|rf|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux25~0_combout\ = (\add_instance|rom_unit|rom_data~2062_combout\ & (((\add_instance|rom_unit|rom_data~2071_combout\)))) # (!\add_instance|rom_unit|rom_data~2062_combout\ & ((\add_instance|rom_unit|rom_data~2071_combout\ & 
-- ((\add_instance|rf|RF[1][6]~q\))) # (!\add_instance|rom_unit|rom_data~2071_combout\ & (\add_instance|rf|RF[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[0][6]~q\,
	datab => \add_instance|rom_unit|rom_data~2062_combout\,
	datac => \add_instance|rf|RF[1][6]~q\,
	datad => \add_instance|rom_unit|rom_data~2071_combout\,
	combout => \add_instance|rf|Mux25~0_combout\);

-- Location: FF_X16_Y19_N3
\add_instance|rf|RF[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out\(6),
	sload => VCC,
	ena => \add_instance|rf|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[5][6]~q\);

-- Location: LCCOMB_X19_Y19_N0
\add_instance|rf|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux25~1_combout\ = (\add_instance|rom_unit|rom_data~2062_combout\ & ((\add_instance|rf|Mux31~2_combout\) # (!\add_instance|rf|RF[5][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|rf|RF[5][6]~q\,
	datac => \add_instance|rf|Mux31~2_combout\,
	datad => \add_instance|rom_unit|rom_data~2062_combout\,
	combout => \add_instance|rf|Mux25~1_combout\);

-- Location: LCCOMB_X19_Y19_N18
\add_instance|rf|Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux25~2_combout\ = (\add_instance|rf|Mux25~1_combout\ & (\add_instance|rf|Mux31~2_combout\ & ((\add_instance|rf|RF[7][6]~q\) # (!\add_instance|rf|Mux25~0_combout\)))) # (!\add_instance|rf|Mux25~1_combout\ & 
-- (((\add_instance|rf|Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][6]~q\,
	datab => \add_instance|rf|Mux31~2_combout\,
	datac => \add_instance|rf|Mux25~0_combout\,
	datad => \add_instance|rf|Mux25~1_combout\,
	combout => \add_instance|rf|Mux25~2_combout\);

-- Location: LCCOMB_X19_Y19_N6
\add_instance|alu_b_mux|sel_out[7]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[7]~19_combout\ = (\add_instance|control_unit|Mux10~1_combout\ & (((\add_instance|alu_b_mux|sel_out[7]~18_combout\)))) # (!\add_instance|control_unit|Mux10~1_combout\ & ((\add_instance|alu_b_mux|sel_out[7]~18_combout\ & 
-- (\add_instance|rom_unit|rom_data~2062_combout\)) # (!\add_instance|alu_b_mux|sel_out[7]~18_combout\ & ((\add_instance|rf|Mux25~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux10~1_combout\,
	datab => \add_instance|rom_unit|rom_data~2062_combout\,
	datac => \add_instance|alu_b_mux|sel_out[7]~18_combout\,
	datad => \add_instance|rf|Mux25~2_combout\,
	combout => \add_instance|alu_b_mux|sel_out[7]~19_combout\);

-- Location: LCCOMB_X19_Y20_N26
\add_instance|main_alu|C[7]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[7]~13_combout\ = (\add_instance|control_unit|Mux14~0_combout\ & (\add_instance|control_unit|Mux15~0_combout\)) # (!\add_instance|control_unit|Mux14~0_combout\ & (\add_instance|rf|Mux8~0_combout\ $ 
-- (((!\add_instance|control_unit|Mux15~0_combout\ & \add_instance|alu_b_mux|sel_out[7]~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux15~0_combout\,
	datab => \add_instance|rf|Mux8~0_combout\,
	datac => \add_instance|alu_b_mux|sel_out[7]~19_combout\,
	datad => \add_instance|control_unit|Mux14~0_combout\,
	combout => \add_instance|main_alu|C[7]~13_combout\);

-- Location: LCCOMB_X19_Y19_N12
\add_instance|main_alu|result~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|result~38_combout\ = (\add_instance|alu_b_mux|sel_out[6]~17_combout\ & ((\add_instance|rom_unit|rom_data~2063_combout\ & ((\add_instance|rf|RF[1][6]~q\))) # (!\add_instance|rom_unit|rom_data~2063_combout\ & 
-- (\add_instance|rf|RF[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[0][6]~q\,
	datab => \add_instance|rom_unit|rom_data~2063_combout\,
	datac => \add_instance|rf|RF[1][6]~q\,
	datad => \add_instance|alu_b_mux|sel_out[6]~17_combout\,
	combout => \add_instance|main_alu|result~38_combout\);

-- Location: LCCOMB_X18_Y19_N18
\add_instance|main_alu|carry~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|carry~7_combout\ = (\add_instance|main_alu|carry~6_combout\ & ((\add_instance|alu_b_mux|sel_out[6]~17_combout\) # (\add_instance|rf|Mux9~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[6]~17_combout\,
	datab => \add_instance|rf|Mux9~0_combout\,
	datad => \add_instance|main_alu|carry~6_combout\,
	combout => \add_instance|main_alu|carry~7_combout\);

-- Location: LCCOMB_X19_Y20_N8
\add_instance|main_alu|sum~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|sum~2_combout\ = \add_instance|rf|Mux8~0_combout\ $ (\add_instance|alu_b_mux|sel_out[7]~19_combout\ $ (((\add_instance|main_alu|result~38_combout\) # (\add_instance|main_alu|carry~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|main_alu|result~38_combout\,
	datab => \add_instance|rf|Mux8~0_combout\,
	datac => \add_instance|alu_b_mux|sel_out[7]~19_combout\,
	datad => \add_instance|main_alu|carry~7_combout\,
	combout => \add_instance|main_alu|sum~2_combout\);

-- Location: LCCOMB_X19_Y19_N30
\add_instance|main_alu|result~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|result~39_combout\ = (\add_instance|alu_b_mux|sel_out[7]~19_combout\ & ((\add_instance|rom_unit|rom_data~2063_combout\ & (\add_instance|rf|RF[1][7]~q\)) # (!\add_instance|rom_unit|rom_data~2063_combout\ & 
-- ((\add_instance|rf|RF[0][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[7]~19_combout\,
	datab => \add_instance|rf|RF[1][7]~q\,
	datac => \add_instance|rf|RF[0][7]~q\,
	datad => \add_instance|rom_unit|rom_data~2063_combout\,
	combout => \add_instance|main_alu|result~39_combout\);

-- Location: LCCOMB_X19_Y20_N0
\add_instance|main_alu|C[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[7]~14_combout\ = (\add_instance|main_alu|C[7]~13_combout\ & (((!\add_instance|main_alu|result~39_combout\)) # (!\add_instance|control_unit|Mux14~0_combout\))) # (!\add_instance|main_alu|C[7]~13_combout\ & 
-- (\add_instance|control_unit|Mux14~0_combout\ & (\add_instance|main_alu|sum~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|main_alu|C[7]~13_combout\,
	datab => \add_instance|control_unit|Mux14~0_combout\,
	datac => \add_instance|main_alu|sum~2_combout\,
	datad => \add_instance|main_alu|result~39_combout\,
	combout => \add_instance|main_alu|C[7]~14_combout\);

-- Location: LCCOMB_X21_Y21_N6
\add_instance|incrementer|sum~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|incrementer|sum~6_combout\ = \add_instance|incrementer|carry~1_combout\ $ (\add_instance|rf|RF[7][7]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|incrementer|carry~1_combout\,
	datad => \add_instance|rf|RF[7][7]~q\,
	combout => \add_instance|incrementer|sum~6_combout\);

-- Location: LCCOMB_X16_Y21_N10
\add_instance|pc_plus_imm_mux|sel_out[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|pc_plus_imm_mux|sel_out[7]~2_combout\ = (\add_instance|control_unit|Mux7~0_combout\ & (\add_instance|rom_unit|rom_data~2072_combout\)) # (!\add_instance|control_unit|Mux7~0_combout\ & ((\add_instance|rom_unit|rom_data~2062_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux7~0_combout\,
	datab => \add_instance|rom_unit|rom_data~2072_combout\,
	datad => \add_instance|rom_unit|rom_data~2062_combout\,
	combout => \add_instance|pc_plus_imm_mux|sel_out[7]~2_combout\);

-- Location: LCCOMB_X21_Y21_N26
\add_instance|adder|sum~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|adder|sum~6_combout\ = \add_instance|rf|RF[7][7]~q\ $ (\add_instance|pc_plus_imm_mux|sel_out[7]~2_combout\ $ (((\add_instance|adder|carry~5_combout\ & \add_instance|adder|carry~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|adder|carry~5_combout\,
	datab => \add_instance|rf|RF[7][7]~q\,
	datac => \add_instance|adder|carry~4_combout\,
	datad => \add_instance|pc_plus_imm_mux|sel_out[7]~2_combout\,
	combout => \add_instance|adder|sum~6_combout\);

-- Location: LCCOMB_X21_Y21_N0
\add_instance|pc_final_mux|sel_out[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|pc_final_mux|sel_out[7]~14_combout\ = (\add_instance|control_unit|Mux12~0_combout\ & (((\add_instance|control_unit|Mux13~0_combout\)))) # (!\add_instance|control_unit|Mux12~0_combout\ & ((\add_instance|control_unit|Mux13~0_combout\ & 
-- ((\add_instance|adder|sum~6_combout\))) # (!\add_instance|control_unit|Mux13~0_combout\ & (\add_instance|incrementer|sum~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|incrementer|sum~6_combout\,
	datab => \add_instance|control_unit|Mux12~0_combout\,
	datac => \add_instance|adder|sum~6_combout\,
	datad => \add_instance|control_unit|Mux13~0_combout\,
	combout => \add_instance|pc_final_mux|sel_out[7]~14_combout\);

-- Location: LCCOMB_X21_Y21_N28
\add_instance|pc_final_mux|sel_out[7]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|pc_final_mux|sel_out[7]~15_combout\ = (\add_instance|control_unit|Mux12~0_combout\ & ((\add_instance|pc_final_mux|sel_out[7]~14_combout\ & (\add_instance|main_alu|C[7]~14_combout\)) # (!\add_instance|pc_final_mux|sel_out[7]~14_combout\ & 
-- ((\add_instance|rf|Mux24~2_combout\))))) # (!\add_instance|control_unit|Mux12~0_combout\ & (((\add_instance|pc_final_mux|sel_out[7]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|main_alu|C[7]~14_combout\,
	datab => \add_instance|control_unit|Mux12~0_combout\,
	datac => \add_instance|rf|Mux24~2_combout\,
	datad => \add_instance|pc_final_mux|sel_out[7]~14_combout\,
	combout => \add_instance|pc_final_mux|sel_out[7]~15_combout\);

-- Location: CLKCTRL_G4
\input_vector[0]~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \input_vector[0]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \input_vector[0]~inputclkctrl_outclk\);

-- Location: FF_X21_Y21_N29
\add_instance|rf|RF[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|pc_final_mux|sel_out[7]~15_combout\,
	clrn => \ALT_INV_input_vector[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[7][7]~q\);

-- Location: LCCOMB_X21_Y21_N14
\add_instance|adder|carry~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|adder|carry~6_combout\ = (\add_instance|rf|RF[7][7]~q\ & ((\add_instance|pc_plus_imm_mux|sel_out[7]~2_combout\) # ((\add_instance|adder|carry~5_combout\ & \add_instance|adder|carry~4_combout\)))) # (!\add_instance|rf|RF[7][7]~q\ & 
-- (\add_instance|adder|carry~5_combout\ & (\add_instance|adder|carry~4_combout\ & \add_instance|pc_plus_imm_mux|sel_out[7]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|adder|carry~5_combout\,
	datab => \add_instance|rf|RF[7][7]~q\,
	datac => \add_instance|adder|carry~4_combout\,
	datad => \add_instance|pc_plus_imm_mux|sel_out[7]~2_combout\,
	combout => \add_instance|adder|carry~6_combout\);

-- Location: LCCOMB_X21_Y21_N8
\add_instance|adder|sum~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|adder|sum~7_combout\ = \add_instance|rf|RF[7][8]~q\ $ (\add_instance|adder|carry~6_combout\ $ (\add_instance|pc_plus_imm_mux|sel_out[7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][8]~q\,
	datac => \add_instance|adder|carry~6_combout\,
	datad => \add_instance|pc_plus_imm_mux|sel_out[7]~2_combout\,
	combout => \add_instance|adder|sum~7_combout\);

-- Location: LCCOMB_X21_Y21_N20
\add_instance|incrementer|sum~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|incrementer|sum~7_combout\ = \add_instance|rf|RF[7][8]~q\ $ (((\add_instance|incrementer|carry~1_combout\ & \add_instance|rf|RF[7][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][8]~q\,
	datac => \add_instance|incrementer|carry~1_combout\,
	datad => \add_instance|rf|RF[7][7]~q\,
	combout => \add_instance|incrementer|sum~7_combout\);

-- Location: LCCOMB_X16_Y21_N18
\add_instance|rf_d3_mux|sel_out[8]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_d3_mux|sel_out[8]~15_combout\ = (\add_instance|control_unit|Mux7~0_combout\ & ((\add_instance|rf_d3_mux|sel_out[4]~29_combout\ & (\add_instance|rom_unit|rom_data~2072_combout\)) # (!\add_instance|rf_d3_mux|sel_out[4]~29_combout\ & 
-- ((\add_instance|main_alu|C[8]~16_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf_d3_mux|sel_out[4]~29_combout\,
	datab => \add_instance|rom_unit|rom_data~2072_combout\,
	datac => \add_instance|control_unit|Mux7~0_combout\,
	datad => \add_instance|main_alu|C[8]~16_combout\,
	combout => \add_instance|rf_d3_mux|sel_out[8]~15_combout\);

-- Location: LCCOMB_X16_Y21_N8
\add_instance|rf_d3_mux|sel_out[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_d3_mux|sel_out[8]~16_combout\ = (\add_instance|rf_d3_mux|sel_out[8]~15_combout\) # ((\add_instance|incrementer|sum~7_combout\ & !\add_instance|control_unit|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|incrementer|sum~7_combout\,
	datac => \add_instance|control_unit|Mux7~0_combout\,
	datad => \add_instance|rf_d3_mux|sel_out[8]~15_combout\,
	combout => \add_instance|rf_d3_mux|sel_out[8]~16_combout\);

-- Location: FF_X19_Y19_N21
\add_instance|rf|RF[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[8]~16_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[1][8]~q\);

-- Location: FF_X17_Y18_N1
\add_instance|rf|RF[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[8]~16_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[0][8]~q\);

-- Location: LCCOMB_X17_Y18_N10
\add_instance|rf|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux7~0_combout\ = (\add_instance|rom_unit|rom_data~2063_combout\ & (\add_instance|rf|RF[1][8]~q\)) # (!\add_instance|rom_unit|rom_data~2063_combout\ & ((\add_instance|rf|RF[0][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[1][8]~q\,
	datab => \add_instance|rf|RF[0][8]~q\,
	datad => \add_instance|rom_unit|rom_data~2063_combout\,
	combout => \add_instance|rf|Mux7~0_combout\);

-- Location: LCCOMB_X18_Y19_N24
\add_instance|main_alu|carry~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|carry~8_combout\ = (\add_instance|alu_b_mux|sel_out[7]~19_combout\ & ((\add_instance|rf|Mux8~0_combout\) # ((\add_instance|main_alu|result~38_combout\) # (\add_instance|main_alu|carry~7_combout\)))) # 
-- (!\add_instance|alu_b_mux|sel_out[7]~19_combout\ & (\add_instance|rf|Mux8~0_combout\ & ((\add_instance|main_alu|result~38_combout\) # (\add_instance|main_alu|carry~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[7]~19_combout\,
	datab => \add_instance|rf|Mux8~0_combout\,
	datac => \add_instance|main_alu|result~38_combout\,
	datad => \add_instance|main_alu|carry~7_combout\,
	combout => \add_instance|main_alu|carry~8_combout\);

-- Location: LCCOMB_X19_Y19_N20
\add_instance|rf|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux23~0_combout\ = (\add_instance|rom_unit|rom_data~2062_combout\ & (((\add_instance|rom_unit|rom_data~2071_combout\)))) # (!\add_instance|rom_unit|rom_data~2062_combout\ & ((\add_instance|rom_unit|rom_data~2071_combout\ & 
-- ((\add_instance|rf|RF[1][8]~q\))) # (!\add_instance|rom_unit|rom_data~2071_combout\ & (\add_instance|rf|RF[0][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[0][8]~q\,
	datab => \add_instance|rom_unit|rom_data~2062_combout\,
	datac => \add_instance|rf|RF[1][8]~q\,
	datad => \add_instance|rom_unit|rom_data~2071_combout\,
	combout => \add_instance|rf|Mux23~0_combout\);

-- Location: FF_X16_Y21_N23
\add_instance|rf|RF[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[8]~16_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[5][8]~q\);

-- Location: LCCOMB_X21_Y19_N16
\add_instance|rf|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux23~1_combout\ = (\add_instance|rom_unit|rom_data~2062_combout\ & ((\add_instance|rf|Mux31~2_combout\) # (!\add_instance|rf|RF[5][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|rom_unit|rom_data~2062_combout\,
	datac => \add_instance|rf|RF[5][8]~q\,
	datad => \add_instance|rf|Mux31~2_combout\,
	combout => \add_instance|rf|Mux23~1_combout\);

-- Location: LCCOMB_X21_Y19_N2
\add_instance|rf|Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux23~2_combout\ = (\add_instance|rf|Mux23~1_combout\ & (\add_instance|rf|Mux31~2_combout\ & ((\add_instance|rf|RF[7][8]~q\) # (!\add_instance|rf|Mux23~0_combout\)))) # (!\add_instance|rf|Mux23~1_combout\ & 
-- (((\add_instance|rf|Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux31~2_combout\,
	datab => \add_instance|rf|RF[7][8]~q\,
	datac => \add_instance|rf|Mux23~0_combout\,
	datad => \add_instance|rf|Mux23~1_combout\,
	combout => \add_instance|rf|Mux23~2_combout\);

-- Location: LCCOMB_X21_Y19_N20
\add_instance|alu_b_mux|sel_out[8]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[8]~21_combout\ = (\add_instance|control_unit|Mux9~0_combout\ & ((\add_instance|control_unit|Mux10~1_combout\ & (\add_instance|rf|Mux23~2_combout\)) # (!\add_instance|control_unit|Mux10~1_combout\ & 
-- ((\add_instance|rf|Mux24~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux10~1_combout\,
	datab => \add_instance|rf|Mux23~2_combout\,
	datac => \add_instance|control_unit|Mux9~0_combout\,
	datad => \add_instance|rf|Mux24~2_combout\,
	combout => \add_instance|alu_b_mux|sel_out[8]~21_combout\);

-- Location: LCCOMB_X17_Y21_N28
\add_instance|main_alu|result~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|result~19_combout\ = \add_instance|rf|Mux7~0_combout\ $ (((\add_instance|alu_b_mux|sel_out[8]~20_combout\) # (\add_instance|alu_b_mux|sel_out[8]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[8]~20_combout\,
	datab => \add_instance|rf|Mux7~0_combout\,
	datad => \add_instance|alu_b_mux|sel_out[8]~21_combout\,
	combout => \add_instance|main_alu|result~19_combout\);

-- Location: LCCOMB_X16_Y21_N30
\add_instance|main_alu|C[8]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[8]~15_combout\ = (\add_instance|control_unit|Mux15~0_combout\ & (((\add_instance|control_unit|Mux14~0_combout\)))) # (!\add_instance|control_unit|Mux15~0_combout\ & (\add_instance|main_alu|result~19_combout\ $ 
-- (((\add_instance|main_alu|carry~8_combout\ & \add_instance|control_unit|Mux14~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|main_alu|carry~8_combout\,
	datab => \add_instance|control_unit|Mux14~0_combout\,
	datac => \add_instance|control_unit|Mux15~0_combout\,
	datad => \add_instance|main_alu|result~19_combout\,
	combout => \add_instance|main_alu|C[8]~15_combout\);

-- Location: LCCOMB_X16_Y21_N28
\add_instance|alu_b_mux|sel_out[8]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[8]~22_combout\ = (\add_instance|alu_b_mux|sel_out[8]~21_combout\) # (\add_instance|alu_b_mux|sel_out[8]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|alu_b_mux|sel_out[8]~21_combout\,
	datad => \add_instance|alu_b_mux|sel_out[8]~20_combout\,
	combout => \add_instance|alu_b_mux|sel_out[8]~22_combout\);

-- Location: LCCOMB_X16_Y21_N0
\add_instance|main_alu|C[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[8]~16_combout\ = (\add_instance|control_unit|Mux15~0_combout\ & ((\add_instance|rf|Mux7~0_combout\ & ((!\add_instance|alu_b_mux|sel_out[8]~22_combout\) # (!\add_instance|main_alu|C[8]~15_combout\))) # 
-- (!\add_instance|rf|Mux7~0_combout\ & (\add_instance|main_alu|C[8]~15_combout\)))) # (!\add_instance|control_unit|Mux15~0_combout\ & (((\add_instance|main_alu|C[8]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux15~0_combout\,
	datab => \add_instance|rf|Mux7~0_combout\,
	datac => \add_instance|main_alu|C[8]~15_combout\,
	datad => \add_instance|alu_b_mux|sel_out[8]~22_combout\,
	combout => \add_instance|main_alu|C[8]~16_combout\);

-- Location: LCCOMB_X16_Y21_N12
\add_instance|pc_final_mux|sel_out[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|pc_final_mux|sel_out[8]~16_combout\ = (\add_instance|control_unit|Mux12~0_combout\ & ((\add_instance|rf|Mux23~2_combout\) # ((\add_instance|control_unit|Mux13~0_combout\)))) # (!\add_instance|control_unit|Mux12~0_combout\ & 
-- (((\add_instance|incrementer|sum~7_combout\ & !\add_instance|control_unit|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux23~2_combout\,
	datab => \add_instance|incrementer|sum~7_combout\,
	datac => \add_instance|control_unit|Mux12~0_combout\,
	datad => \add_instance|control_unit|Mux13~0_combout\,
	combout => \add_instance|pc_final_mux|sel_out[8]~16_combout\);

-- Location: LCCOMB_X16_Y21_N4
\add_instance|pc_final_mux|sel_out[8]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|pc_final_mux|sel_out[8]~17_combout\ = (\add_instance|control_unit|Mux13~0_combout\ & ((\add_instance|pc_final_mux|sel_out[8]~16_combout\ & ((\add_instance|main_alu|C[8]~16_combout\))) # (!\add_instance|pc_final_mux|sel_out[8]~16_combout\ & 
-- (\add_instance|adder|sum~7_combout\)))) # (!\add_instance|control_unit|Mux13~0_combout\ & (((\add_instance|pc_final_mux|sel_out[8]~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|adder|sum~7_combout\,
	datab => \add_instance|main_alu|C[8]~16_combout\,
	datac => \add_instance|control_unit|Mux13~0_combout\,
	datad => \add_instance|pc_final_mux|sel_out[8]~16_combout\,
	combout => \add_instance|pc_final_mux|sel_out[8]~17_combout\);

-- Location: FF_X16_Y21_N5
\add_instance|rf|RF[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|pc_final_mux|sel_out[8]~17_combout\,
	clrn => \ALT_INV_input_vector[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[7][8]~q\);

-- Location: LCCOMB_X21_Y21_N22
\add_instance|incrementer|sum~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|incrementer|sum~8_combout\ = \add_instance|rf|RF[7][9]~q\ $ (((\add_instance|rf|RF[7][8]~q\ & (\add_instance|incrementer|carry~1_combout\ & \add_instance|rf|RF[7][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][8]~q\,
	datab => \add_instance|rf|RF[7][9]~q\,
	datac => \add_instance|incrementer|carry~1_combout\,
	datad => \add_instance|rf|RF[7][7]~q\,
	combout => \add_instance|incrementer|sum~8_combout\);

-- Location: LCCOMB_X21_Y19_N10
\add_instance|rf_d3_mux|sel_out[9]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_d3_mux|sel_out[9]~17_combout\ = (\add_instance|control_unit|Mux7~0_combout\ & ((\add_instance|rf_d3_mux|sel_out[4]~29_combout\ & (\add_instance|rom_unit|rom_data~2072_combout\)) # (!\add_instance|rf_d3_mux|sel_out[4]~29_combout\ & 
-- ((\add_instance|main_alu|C[9]~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux7~0_combout\,
	datab => \add_instance|rom_unit|rom_data~2072_combout\,
	datac => \add_instance|rf_d3_mux|sel_out[4]~29_combout\,
	datad => \add_instance|main_alu|C[9]~18_combout\,
	combout => \add_instance|rf_d3_mux|sel_out[9]~17_combout\);

-- Location: LCCOMB_X21_Y19_N4
\add_instance|rf_d3_mux|sel_out[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_d3_mux|sel_out[9]~18_combout\ = (\add_instance|rf_d3_mux|sel_out[9]~17_combout\) # ((\add_instance|incrementer|sum~8_combout\ & !\add_instance|control_unit|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|incrementer|sum~8_combout\,
	datac => \add_instance|control_unit|Mux7~0_combout\,
	datad => \add_instance|rf_d3_mux|sel_out[9]~17_combout\,
	combout => \add_instance|rf_d3_mux|sel_out[9]~18_combout\);

-- Location: FF_X21_Y19_N23
\add_instance|rf|RF[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[9]~18_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[0][9]~q\);

-- Location: LCCOMB_X22_Y19_N24
\add_instance|rf|RF[1][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|RF[1][9]~feeder_combout\ = \add_instance|rf_d3_mux|sel_out[9]~18_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|rf_d3_mux|sel_out[9]~18_combout\,
	combout => \add_instance|rf|RF[1][9]~feeder_combout\);

-- Location: FF_X22_Y19_N25
\add_instance|rf|RF[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|RF[1][9]~feeder_combout\,
	ena => \add_instance|rf|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[1][9]~q\);

-- Location: LCCOMB_X22_Y19_N26
\add_instance|rf|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux6~0_combout\ = (\add_instance|rom_unit|rom_data~2063_combout\ & ((\add_instance|rf|RF[1][9]~q\))) # (!\add_instance|rom_unit|rom_data~2063_combout\ & (\add_instance|rf|RF[0][9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|rf|RF[0][9]~q\,
	datac => \add_instance|rom_unit|rom_data~2063_combout\,
	datad => \add_instance|rf|RF[1][9]~q\,
	combout => \add_instance|rf|Mux6~0_combout\);

-- Location: LCCOMB_X21_Y19_N6
\add_instance|alu_b_mux|sel_out[9]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[9]~23_combout\ = (\add_instance|control_unit|Mux9~0_combout\ & ((\add_instance|control_unit|Mux10~1_combout\ & (\add_instance|rf|Mux22~2_combout\)) # (!\add_instance|control_unit|Mux10~1_combout\ & 
-- ((\add_instance|rf|Mux23~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux22~2_combout\,
	datab => \add_instance|control_unit|Mux9~0_combout\,
	datac => \add_instance|control_unit|Mux10~1_combout\,
	datad => \add_instance|rf|Mux23~2_combout\,
	combout => \add_instance|alu_b_mux|sel_out[9]~23_combout\);

-- Location: LCCOMB_X22_Y21_N24
\add_instance|main_alu|result~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|result~21_combout\ = (\add_instance|rf|Mux6~0_combout\ & ((\add_instance|alu_b_mux|sel_out[8]~20_combout\) # (\add_instance|alu_b_mux|sel_out[9]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[8]~20_combout\,
	datac => \add_instance|rf|Mux6~0_combout\,
	datad => \add_instance|alu_b_mux|sel_out[9]~23_combout\,
	combout => \add_instance|main_alu|result~21_combout\);

-- Location: LCCOMB_X21_Y19_N0
\add_instance|alu_b_mux|sel_out[9]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[9]~24_combout\ = (\add_instance|alu_b_mux|sel_out[8]~20_combout\) # (\add_instance|alu_b_mux|sel_out[9]~23_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|alu_b_mux|sel_out[8]~20_combout\,
	datad => \add_instance|alu_b_mux|sel_out[9]~23_combout\,
	combout => \add_instance|alu_b_mux|sel_out[9]~24_combout\);

-- Location: LCCOMB_X19_Y20_N6
\add_instance|main_alu|C[9]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[9]~17_combout\ = (\add_instance|control_unit|Mux14~0_combout\ & (\add_instance|control_unit|Mux15~0_combout\)) # (!\add_instance|control_unit|Mux14~0_combout\ & (\add_instance|rf|Mux6~0_combout\ $ 
-- (((!\add_instance|control_unit|Mux15~0_combout\ & \add_instance|alu_b_mux|sel_out[9]~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux15~0_combout\,
	datab => \add_instance|control_unit|Mux14~0_combout\,
	datac => \add_instance|alu_b_mux|sel_out[9]~24_combout\,
	datad => \add_instance|rf|Mux6~0_combout\,
	combout => \add_instance|main_alu|C[9]~17_combout\);

-- Location: LCCOMB_X17_Y21_N22
\add_instance|main_alu|result~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|result~20_combout\ = (\add_instance|rf|Mux7~0_combout\ & ((\add_instance|alu_b_mux|sel_out[8]~20_combout\) # (\add_instance|alu_b_mux|sel_out[8]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[8]~20_combout\,
	datab => \add_instance|rf|Mux7~0_combout\,
	datad => \add_instance|alu_b_mux|sel_out[8]~21_combout\,
	combout => \add_instance|main_alu|result~20_combout\);

-- Location: LCCOMB_X18_Y21_N2
\add_instance|main_alu|carry~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|carry~9_combout\ = (\add_instance|main_alu|carry~8_combout\ & ((\add_instance|alu_b_mux|sel_out[8]~21_combout\) # ((\add_instance|rf|Mux7~0_combout\) # (\add_instance|alu_b_mux|sel_out[8]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[8]~21_combout\,
	datab => \add_instance|rf|Mux7~0_combout\,
	datac => \add_instance|alu_b_mux|sel_out[8]~20_combout\,
	datad => \add_instance|main_alu|carry~8_combout\,
	combout => \add_instance|main_alu|carry~9_combout\);

-- Location: LCCOMB_X17_Y21_N24
\add_instance|main_alu|sum~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|sum~3_combout\ = \add_instance|rf|Mux6~0_combout\ $ (\add_instance|alu_b_mux|sel_out[9]~24_combout\ $ (((\add_instance|main_alu|result~20_combout\) # (\add_instance|main_alu|carry~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux6~0_combout\,
	datab => \add_instance|alu_b_mux|sel_out[9]~24_combout\,
	datac => \add_instance|main_alu|result~20_combout\,
	datad => \add_instance|main_alu|carry~9_combout\,
	combout => \add_instance|main_alu|sum~3_combout\);

-- Location: LCCOMB_X21_Y21_N12
\add_instance|main_alu|C[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[9]~18_combout\ = (\add_instance|control_unit|Mux14~0_combout\ & ((\add_instance|main_alu|C[9]~17_combout\ & (!\add_instance|main_alu|result~21_combout\)) # (!\add_instance|main_alu|C[9]~17_combout\ & 
-- ((\add_instance|main_alu|sum~3_combout\))))) # (!\add_instance|control_unit|Mux14~0_combout\ & (((\add_instance|main_alu|C[9]~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux14~0_combout\,
	datab => \add_instance|main_alu|result~21_combout\,
	datac => \add_instance|main_alu|C[9]~17_combout\,
	datad => \add_instance|main_alu|sum~3_combout\,
	combout => \add_instance|main_alu|C[9]~18_combout\);

-- Location: LCCOMB_X21_Y21_N30
\add_instance|adder|sum~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|adder|sum~8_combout\ = \add_instance|rf|RF[7][9]~q\ $ (((\add_instance|rf|RF[7][8]~q\ & (\add_instance|adder|carry~6_combout\ & !\add_instance|pc_plus_imm_mux|sel_out[7]~2_combout\)) # (!\add_instance|rf|RF[7][8]~q\ & 
-- (!\add_instance|adder|carry~6_combout\ & \add_instance|pc_plus_imm_mux|sel_out[7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][8]~q\,
	datab => \add_instance|rf|RF[7][9]~q\,
	datac => \add_instance|adder|carry~6_combout\,
	datad => \add_instance|pc_plus_imm_mux|sel_out[7]~2_combout\,
	combout => \add_instance|adder|sum~8_combout\);

-- Location: LCCOMB_X21_Y21_N24
\add_instance|pc_final_mux|sel_out[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|pc_final_mux|sel_out[9]~18_combout\ = (\add_instance|control_unit|Mux12~0_combout\ & (((\add_instance|control_unit|Mux13~0_combout\)))) # (!\add_instance|control_unit|Mux12~0_combout\ & ((\add_instance|control_unit|Mux13~0_combout\ & 
-- (\add_instance|adder|sum~8_combout\)) # (!\add_instance|control_unit|Mux13~0_combout\ & ((\add_instance|incrementer|sum~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|adder|sum~8_combout\,
	datab => \add_instance|control_unit|Mux12~0_combout\,
	datac => \add_instance|incrementer|sum~8_combout\,
	datad => \add_instance|control_unit|Mux13~0_combout\,
	combout => \add_instance|pc_final_mux|sel_out[9]~18_combout\);

-- Location: LCCOMB_X21_Y21_N18
\add_instance|pc_final_mux|sel_out[9]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|pc_final_mux|sel_out[9]~19_combout\ = (\add_instance|control_unit|Mux12~0_combout\ & ((\add_instance|pc_final_mux|sel_out[9]~18_combout\ & ((\add_instance|main_alu|C[9]~18_combout\))) # (!\add_instance|pc_final_mux|sel_out[9]~18_combout\ & 
-- (\add_instance|rf|Mux22~2_combout\)))) # (!\add_instance|control_unit|Mux12~0_combout\ & (((\add_instance|pc_final_mux|sel_out[9]~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux22~2_combout\,
	datab => \add_instance|control_unit|Mux12~0_combout\,
	datac => \add_instance|main_alu|C[9]~18_combout\,
	datad => \add_instance|pc_final_mux|sel_out[9]~18_combout\,
	combout => \add_instance|pc_final_mux|sel_out[9]~19_combout\);

-- Location: FF_X21_Y21_N19
\add_instance|rf|RF[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|pc_final_mux|sel_out[9]~19_combout\,
	clrn => \ALT_INV_input_vector[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[7][9]~q\);

-- Location: FF_X21_Y19_N5
\add_instance|rf|RF[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf_d3_mux|sel_out[9]~18_combout\,
	ena => \add_instance|rf|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[5][9]~q\);

-- Location: LCCOMB_X21_Y19_N14
\add_instance|rf|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux22~1_combout\ = (\add_instance|rom_unit|rom_data~2062_combout\ & ((\add_instance|rf|Mux31~2_combout\) # (!\add_instance|rf|RF[5][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux31~2_combout\,
	datac => \add_instance|rf|RF[5][9]~q\,
	datad => \add_instance|rom_unit|rom_data~2062_combout\,
	combout => \add_instance|rf|Mux22~1_combout\);

-- Location: LCCOMB_X21_Y19_N22
\add_instance|rf|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux22~0_combout\ = (\add_instance|rom_unit|rom_data~2071_combout\ & ((\add_instance|rf|RF[1][9]~q\) # ((\add_instance|rom_unit|rom_data~2062_combout\)))) # (!\add_instance|rom_unit|rom_data~2071_combout\ & (((\add_instance|rf|RF[0][9]~q\ 
-- & !\add_instance|rom_unit|rom_data~2062_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rom_unit|rom_data~2071_combout\,
	datab => \add_instance|rf|RF[1][9]~q\,
	datac => \add_instance|rf|RF[0][9]~q\,
	datad => \add_instance|rom_unit|rom_data~2062_combout\,
	combout => \add_instance|rf|Mux22~0_combout\);

-- Location: LCCOMB_X21_Y19_N12
\add_instance|rf|Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux22~2_combout\ = (\add_instance|rf|Mux22~1_combout\ & (\add_instance|rf|Mux31~2_combout\ & ((\add_instance|rf|RF[7][9]~q\) # (!\add_instance|rf|Mux22~0_combout\)))) # (!\add_instance|rf|Mux22~1_combout\ & 
-- (((\add_instance|rf|Mux22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][9]~q\,
	datab => \add_instance|rf|Mux22~1_combout\,
	datac => \add_instance|rf|Mux22~0_combout\,
	datad => \add_instance|rf|Mux31~2_combout\,
	combout => \add_instance|rf|Mux22~2_combout\);

-- Location: FF_X18_Y23_N23
\add_instance|rf|RF[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[10]~31_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[1][10]~q\);

-- Location: LCCOMB_X18_Y23_N8
\add_instance|rf|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux21~0_combout\ = (\add_instance|rom_unit|rom_data~2062_combout\ & (((\add_instance|rom_unit|rom_data~2071_combout\)))) # (!\add_instance|rom_unit|rom_data~2062_combout\ & ((\add_instance|rom_unit|rom_data~2071_combout\ & 
-- (\add_instance|rf|RF[1][10]~q\)) # (!\add_instance|rom_unit|rom_data~2071_combout\ & ((\add_instance|rf|RF[0][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[1][10]~q\,
	datab => \add_instance|rf|RF[0][10]~q\,
	datac => \add_instance|rom_unit|rom_data~2062_combout\,
	datad => \add_instance|rom_unit|rom_data~2071_combout\,
	combout => \add_instance|rf|Mux21~0_combout\);

-- Location: FF_X19_Y23_N29
\add_instance|rf|RF[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[10]~31_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[5][10]~q\);

-- Location: LCCOMB_X18_Y23_N18
\add_instance|rf|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux21~1_combout\ = (\add_instance|rom_unit|rom_data~2062_combout\ & ((\add_instance|rf|Mux31~2_combout\) # (!\add_instance|rf|RF[5][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rom_unit|rom_data~2062_combout\,
	datab => \add_instance|rf|RF[5][10]~q\,
	datac => \add_instance|rf|Mux31~2_combout\,
	combout => \add_instance|rf|Mux21~1_combout\);

-- Location: LCCOMB_X18_Y23_N16
\add_instance|rf|Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux21~2_combout\ = (\add_instance|rf|Mux21~1_combout\ & (\add_instance|rf|Mux31~2_combout\ & ((\add_instance|rf|RF[7][10]~q\) # (!\add_instance|rf|Mux21~0_combout\)))) # (!\add_instance|rf|Mux21~1_combout\ & 
-- (((\add_instance|rf|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][10]~q\,
	datab => \add_instance|rf|Mux21~0_combout\,
	datac => \add_instance|rf|Mux31~2_combout\,
	datad => \add_instance|rf|Mux21~1_combout\,
	combout => \add_instance|rf|Mux21~2_combout\);

-- Location: LCCOMB_X21_Y19_N24
\add_instance|alu_b_mux|sel_out[10]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[10]~25_combout\ = (\add_instance|control_unit|Mux9~0_combout\ & ((\add_instance|control_unit|Mux10~1_combout\ & ((\add_instance|rf|Mux21~2_combout\))) # (!\add_instance|control_unit|Mux10~1_combout\ & 
-- (\add_instance|rf|Mux22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux22~2_combout\,
	datab => \add_instance|control_unit|Mux9~0_combout\,
	datac => \add_instance|control_unit|Mux10~1_combout\,
	datad => \add_instance|rf|Mux21~2_combout\,
	combout => \add_instance|alu_b_mux|sel_out[10]~25_combout\);

-- Location: LCCOMB_X21_Y23_N24
\add_instance|alu_b_mux|sel_out[10]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[10]~26_combout\ = (\add_instance|alu_b_mux|sel_out[10]~25_combout\) # (\add_instance|alu_b_mux|sel_out[8]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|alu_b_mux|sel_out[10]~25_combout\,
	datad => \add_instance|alu_b_mux|sel_out[8]~20_combout\,
	combout => \add_instance|alu_b_mux|sel_out[10]~26_combout\);

-- Location: LCCOMB_X18_Y21_N24
\add_instance|main_alu|carry~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|carry~10_combout\ = (\add_instance|alu_b_mux|sel_out[9]~24_combout\ & ((\add_instance|main_alu|result~20_combout\) # ((\add_instance|rf|Mux6~0_combout\) # (\add_instance|main_alu|carry~9_combout\)))) # 
-- (!\add_instance|alu_b_mux|sel_out[9]~24_combout\ & (\add_instance|rf|Mux6~0_combout\ & ((\add_instance|main_alu|result~20_combout\) # (\add_instance|main_alu|carry~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[9]~24_combout\,
	datab => \add_instance|main_alu|result~20_combout\,
	datac => \add_instance|rf|Mux6~0_combout\,
	datad => \add_instance|main_alu|carry~9_combout\,
	combout => \add_instance|main_alu|carry~10_combout\);

-- Location: LCCOMB_X18_Y23_N6
\add_instance|main_alu|result~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|result~22_combout\ = \add_instance|rf|Mux5~0_combout\ $ (((\add_instance|alu_b_mux|sel_out[8]~20_combout\) # (\add_instance|alu_b_mux|sel_out[10]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|alu_b_mux|sel_out[8]~20_combout\,
	datac => \add_instance|alu_b_mux|sel_out[10]~25_combout\,
	datad => \add_instance|rf|Mux5~0_combout\,
	combout => \add_instance|main_alu|result~22_combout\);

-- Location: LCCOMB_X19_Y23_N2
\add_instance|main_alu|C[10]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[10]~19_combout\ = (\add_instance|control_unit|Mux15~0_combout\ & (\add_instance|control_unit|Mux14~0_combout\)) # (!\add_instance|control_unit|Mux15~0_combout\ & (\add_instance|main_alu|result~22_combout\ $ 
-- (((\add_instance|control_unit|Mux14~0_combout\ & \add_instance|main_alu|carry~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001101110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux14~0_combout\,
	datab => \add_instance|control_unit|Mux15~0_combout\,
	datac => \add_instance|main_alu|carry~10_combout\,
	datad => \add_instance|main_alu|result~22_combout\,
	combout => \add_instance|main_alu|C[10]~19_combout\);

-- Location: LCCOMB_X19_Y23_N8
\add_instance|main_alu|C[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[10]~20_combout\ = (\add_instance|rf|Mux5~0_combout\ & ((\add_instance|control_unit|Mux15~0_combout\ & ((!\add_instance|main_alu|C[10]~19_combout\) # (!\add_instance|alu_b_mux|sel_out[10]~26_combout\))) # 
-- (!\add_instance|control_unit|Mux15~0_combout\ & ((\add_instance|main_alu|C[10]~19_combout\))))) # (!\add_instance|rf|Mux5~0_combout\ & (((\add_instance|main_alu|C[10]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux5~0_combout\,
	datab => \add_instance|alu_b_mux|sel_out[10]~26_combout\,
	datac => \add_instance|control_unit|Mux15~0_combout\,
	datad => \add_instance|main_alu|C[10]~19_combout\,
	combout => \add_instance|main_alu|C[10]~20_combout\);

-- Location: LCCOMB_X21_Y21_N2
\add_instance|adder|carry~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|adder|carry~7_combout\ = (\add_instance|rf|RF[7][8]~q\ & ((\add_instance|pc_plus_imm_mux|sel_out[7]~2_combout\) # ((\add_instance|rf|RF[7][9]~q\ & \add_instance|adder|carry~6_combout\)))) # (!\add_instance|rf|RF[7][8]~q\ & 
-- (\add_instance|pc_plus_imm_mux|sel_out[7]~2_combout\ & ((\add_instance|rf|RF[7][9]~q\) # (\add_instance|adder|carry~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][8]~q\,
	datab => \add_instance|rf|RF[7][9]~q\,
	datac => \add_instance|adder|carry~6_combout\,
	datad => \add_instance|pc_plus_imm_mux|sel_out[7]~2_combout\,
	combout => \add_instance|adder|carry~7_combout\);

-- Location: LCCOMB_X19_Y23_N6
\add_instance|adder|sum~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|adder|sum~9_combout\ = \add_instance|adder|carry~7_combout\ $ (\add_instance|rf|RF[7][10]~q\ $ (\add_instance|pc_plus_imm_mux|sel_out[7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|adder|carry~7_combout\,
	datac => \add_instance|rf|RF[7][10]~q\,
	datad => \add_instance|pc_plus_imm_mux|sel_out[7]~2_combout\,
	combout => \add_instance|adder|sum~9_combout\);

-- Location: LCCOMB_X21_Y21_N4
\add_instance|incrementer|carry~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|incrementer|carry~2_combout\ = (\add_instance|rf|RF[7][8]~q\ & (\add_instance|rf|RF[7][9]~q\ & (\add_instance|incrementer|carry~1_combout\ & \add_instance|rf|RF[7][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][8]~q\,
	datab => \add_instance|rf|RF[7][9]~q\,
	datac => \add_instance|incrementer|carry~1_combout\,
	datad => \add_instance|rf|RF[7][7]~q\,
	combout => \add_instance|incrementer|carry~2_combout\);

-- Location: LCCOMB_X18_Y23_N28
\add_instance|incrementer|sum~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|incrementer|sum~9_combout\ = \add_instance|incrementer|carry~2_combout\ $ (\add_instance|rf|RF[7][10]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|incrementer|carry~2_combout\,
	datad => \add_instance|rf|RF[7][10]~q\,
	combout => \add_instance|incrementer|sum~9_combout\);

-- Location: LCCOMB_X18_Y23_N0
\add_instance|pc_final_mux|sel_out[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|pc_final_mux|sel_out[10]~20_combout\ = (\add_instance|control_unit|Mux12~0_combout\ & (((\add_instance|rf|Mux21~2_combout\) # (\add_instance|control_unit|Mux13~0_combout\)))) # (!\add_instance|control_unit|Mux12~0_combout\ & 
-- (\add_instance|incrementer|sum~9_combout\ & ((!\add_instance|control_unit|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux12~0_combout\,
	datab => \add_instance|incrementer|sum~9_combout\,
	datac => \add_instance|rf|Mux21~2_combout\,
	datad => \add_instance|control_unit|Mux13~0_combout\,
	combout => \add_instance|pc_final_mux|sel_out[10]~20_combout\);

-- Location: LCCOMB_X18_Y23_N12
\add_instance|pc_final_mux|sel_out[10]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|pc_final_mux|sel_out[10]~21_combout\ = (\add_instance|control_unit|Mux13~0_combout\ & ((\add_instance|pc_final_mux|sel_out[10]~20_combout\ & (\add_instance|main_alu|C[10]~20_combout\)) # (!\add_instance|pc_final_mux|sel_out[10]~20_combout\ & 
-- ((\add_instance|adder|sum~9_combout\))))) # (!\add_instance|control_unit|Mux13~0_combout\ & (((\add_instance|pc_final_mux|sel_out[10]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux13~0_combout\,
	datab => \add_instance|main_alu|C[10]~20_combout\,
	datac => \add_instance|adder|sum~9_combout\,
	datad => \add_instance|pc_final_mux|sel_out[10]~20_combout\,
	combout => \add_instance|pc_final_mux|sel_out[10]~21_combout\);

-- Location: FF_X18_Y23_N13
\add_instance|rf|RF[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|pc_final_mux|sel_out[10]~21_combout\,
	clrn => \ALT_INV_input_vector[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[7][10]~q\);

-- Location: LCCOMB_X19_Y23_N14
\add_instance|rf_d3_mux|sel_out[10]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_d3_mux|sel_out[10]~19_combout\ = (\add_instance|control_unit|Mux7~0_combout\ & ((\add_instance|rf_d3_mux|sel_out[4]~29_combout\ & (\add_instance|rom_unit|rom_data~2072_combout\)) # (!\add_instance|rf_d3_mux|sel_out[4]~29_combout\ & 
-- ((\add_instance|main_alu|C[10]~20_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf_d3_mux|sel_out[4]~29_combout\,
	datab => \add_instance|rom_unit|rom_data~2072_combout\,
	datac => \add_instance|main_alu|C[10]~20_combout\,
	datad => \add_instance|control_unit|Mux7~0_combout\,
	combout => \add_instance|rf_d3_mux|sel_out[10]~19_combout\);

-- Location: LCCOMB_X19_Y23_N30
\add_instance|rf_d3_mux|sel_out[10]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_d3_mux|sel_out[10]~31_combout\ = (\add_instance|rf_d3_mux|sel_out[10]~19_combout\) # ((!\add_instance|control_unit|Mux7~0_combout\ & (\add_instance|rf|RF[7][10]~q\ $ (\add_instance|incrementer|carry~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][10]~q\,
	datab => \add_instance|incrementer|carry~2_combout\,
	datac => \add_instance|rf_d3_mux|sel_out[10]~19_combout\,
	datad => \add_instance|control_unit|Mux7~0_combout\,
	combout => \add_instance|rf_d3_mux|sel_out[10]~31_combout\);

-- Location: LCCOMB_X18_Y18_N4
\add_instance|rf|RF[0][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|RF[0][10]~feeder_combout\ = \add_instance|rf_d3_mux|sel_out[10]~31_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \add_instance|rf_d3_mux|sel_out[10]~31_combout\,
	combout => \add_instance|rf|RF[0][10]~feeder_combout\);

-- Location: FF_X18_Y18_N5
\add_instance|rf|RF[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|RF[0][10]~feeder_combout\,
	ena => \add_instance|rf|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[0][10]~q\);

-- Location: LCCOMB_X18_Y18_N16
\add_instance|rf|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux5~0_combout\ = (\add_instance|rom_unit|rom_data~2063_combout\ & ((\add_instance|rf|RF[1][10]~q\))) # (!\add_instance|rom_unit|rom_data~2063_combout\ & (\add_instance|rf|RF[0][10]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[0][10]~q\,
	datab => \add_instance|rf|RF[1][10]~q\,
	datad => \add_instance|rom_unit|rom_data~2063_combout\,
	combout => \add_instance|rf|Mux5~0_combout\);

-- Location: LCCOMB_X21_Y23_N18
\add_instance|rf|RF[0][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|RF[0][11]~feeder_combout\ = \add_instance|rf_d3_mux|sel_out[11]~21_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \add_instance|rf_d3_mux|sel_out[11]~21_combout\,
	combout => \add_instance|rf|RF[0][11]~feeder_combout\);

-- Location: FF_X21_Y23_N19
\add_instance|rf|RF[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|RF[0][11]~feeder_combout\,
	ena => \add_instance|rf|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[0][11]~q\);

-- Location: LCCOMB_X21_Y23_N16
\add_instance|rf|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux20~0_combout\ = (\add_instance|rom_unit|rom_data~2062_combout\ & (((\add_instance|rom_unit|rom_data~2071_combout\)))) # (!\add_instance|rom_unit|rom_data~2062_combout\ & ((\add_instance|rom_unit|rom_data~2071_combout\ & 
-- (\add_instance|rf|RF[1][11]~q\)) # (!\add_instance|rom_unit|rom_data~2071_combout\ & ((\add_instance|rf|RF[0][11]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[1][11]~q\,
	datab => \add_instance|rf|RF[0][11]~q\,
	datac => \add_instance|rom_unit|rom_data~2062_combout\,
	datad => \add_instance|rom_unit|rom_data~2071_combout\,
	combout => \add_instance|rf|Mux20~0_combout\);

-- Location: FF_X19_Y23_N19
\add_instance|rf|RF[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf_d3_mux|sel_out[11]~21_combout\,
	ena => \add_instance|rf|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[5][11]~q\);

-- Location: LCCOMB_X19_Y23_N16
\add_instance|rf|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux20~1_combout\ = (\add_instance|rom_unit|rom_data~2062_combout\ & ((\add_instance|rf|Mux31~2_combout\) # (!\add_instance|rf|RF[5][11]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|rf|RF[5][11]~q\,
	datac => \add_instance|rom_unit|rom_data~2062_combout\,
	datad => \add_instance|rf|Mux31~2_combout\,
	combout => \add_instance|rf|Mux20~1_combout\);

-- Location: LCCOMB_X19_Y23_N26
\add_instance|rf|Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux20~2_combout\ = (\add_instance|rf|Mux20~1_combout\ & (\add_instance|rf|Mux31~2_combout\ & ((\add_instance|rf|RF[7][11]~q\) # (!\add_instance|rf|Mux20~0_combout\)))) # (!\add_instance|rf|Mux20~1_combout\ & 
-- (((\add_instance|rf|Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][11]~q\,
	datab => \add_instance|rf|Mux31~2_combout\,
	datac => \add_instance|rf|Mux20~0_combout\,
	datad => \add_instance|rf|Mux20~1_combout\,
	combout => \add_instance|rf|Mux20~2_combout\);

-- Location: LCCOMB_X18_Y23_N24
\add_instance|alu_b_mux|sel_out[11]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[11]~27_combout\ = (\add_instance|control_unit|Mux9~0_combout\ & ((\add_instance|control_unit|Mux10~1_combout\ & ((\add_instance|rf|Mux20~2_combout\))) # (!\add_instance|control_unit|Mux10~1_combout\ & 
-- (\add_instance|rf|Mux21~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux9~0_combout\,
	datab => \add_instance|rf|Mux21~2_combout\,
	datac => \add_instance|control_unit|Mux10~1_combout\,
	datad => \add_instance|rf|Mux20~2_combout\,
	combout => \add_instance|alu_b_mux|sel_out[11]~27_combout\);

-- Location: LCCOMB_X18_Y23_N26
\add_instance|alu_b_mux|sel_out[11]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[11]~28_combout\ = (\add_instance|alu_b_mux|sel_out[8]~20_combout\) # (\add_instance|alu_b_mux|sel_out[11]~27_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|alu_b_mux|sel_out[8]~20_combout\,
	datad => \add_instance|alu_b_mux|sel_out[11]~27_combout\,
	combout => \add_instance|alu_b_mux|sel_out[11]~28_combout\);

-- Location: LCCOMB_X18_Y23_N4
\add_instance|main_alu|C[11]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[11]~21_combout\ = (\add_instance|control_unit|Mux14~0_combout\ & (((\add_instance|control_unit|Mux15~0_combout\)))) # (!\add_instance|control_unit|Mux14~0_combout\ & (\add_instance|rf|Mux4~0_combout\ $ 
-- (((\add_instance|alu_b_mux|sel_out[11]~28_combout\ & !\add_instance|control_unit|Mux15~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[11]~28_combout\,
	datab => \add_instance|rf|Mux4~0_combout\,
	datac => \add_instance|control_unit|Mux14~0_combout\,
	datad => \add_instance|control_unit|Mux15~0_combout\,
	combout => \add_instance|main_alu|C[11]~21_combout\);

-- Location: LCCOMB_X18_Y21_N30
\add_instance|main_alu|result~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|result~23_combout\ = (\add_instance|rf|Mux5~0_combout\ & ((\add_instance|alu_b_mux|sel_out[8]~20_combout\) # (\add_instance|alu_b_mux|sel_out[10]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux5~0_combout\,
	datab => \add_instance|alu_b_mux|sel_out[8]~20_combout\,
	datad => \add_instance|alu_b_mux|sel_out[10]~25_combout\,
	combout => \add_instance|main_alu|result~23_combout\);

-- Location: LCCOMB_X18_Y21_N0
\add_instance|main_alu|carry~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|carry~11_combout\ = (\add_instance|main_alu|carry~10_combout\ & ((\add_instance|rf|Mux5~0_combout\) # ((\add_instance|alu_b_mux|sel_out[10]~25_combout\) # (\add_instance|alu_b_mux|sel_out[8]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux5~0_combout\,
	datab => \add_instance|alu_b_mux|sel_out[10]~25_combout\,
	datac => \add_instance|alu_b_mux|sel_out[8]~20_combout\,
	datad => \add_instance|main_alu|carry~10_combout\,
	combout => \add_instance|main_alu|carry~11_combout\);

-- Location: LCCOMB_X18_Y21_N6
\add_instance|main_alu|sum~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|sum~4_combout\ = \add_instance|rf|Mux4~0_combout\ $ (\add_instance|alu_b_mux|sel_out[11]~28_combout\ $ (((\add_instance|main_alu|result~23_combout\) # (\add_instance|main_alu|carry~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux4~0_combout\,
	datab => \add_instance|alu_b_mux|sel_out[11]~28_combout\,
	datac => \add_instance|main_alu|result~23_combout\,
	datad => \add_instance|main_alu|carry~11_combout\,
	combout => \add_instance|main_alu|sum~4_combout\);

-- Location: LCCOMB_X18_Y23_N22
\add_instance|main_alu|result~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|result~24_combout\ = (\add_instance|rf|Mux4~0_combout\ & ((\add_instance|alu_b_mux|sel_out[8]~20_combout\) # (\add_instance|alu_b_mux|sel_out[11]~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[8]~20_combout\,
	datab => \add_instance|rf|Mux4~0_combout\,
	datad => \add_instance|alu_b_mux|sel_out[11]~27_combout\,
	combout => \add_instance|main_alu|result~24_combout\);

-- Location: LCCOMB_X19_Y23_N20
\add_instance|main_alu|C[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[11]~22_combout\ = (\add_instance|control_unit|Mux14~0_combout\ & ((\add_instance|main_alu|C[11]~21_combout\ & ((!\add_instance|main_alu|result~24_combout\))) # (!\add_instance|main_alu|C[11]~21_combout\ & 
-- (\add_instance|main_alu|sum~4_combout\)))) # (!\add_instance|control_unit|Mux14~0_combout\ & (\add_instance|main_alu|C[11]~21_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux14~0_combout\,
	datab => \add_instance|main_alu|C[11]~21_combout\,
	datac => \add_instance|main_alu|sum~4_combout\,
	datad => \add_instance|main_alu|result~24_combout\,
	combout => \add_instance|main_alu|C[11]~22_combout\);

-- Location: LCCOMB_X19_Y23_N12
\add_instance|adder|sum~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|adder|sum~10_combout\ = \add_instance|rf|RF[7][11]~q\ $ (((\add_instance|rf|RF[7][10]~q\ & (\add_instance|adder|carry~7_combout\ & !\add_instance|pc_plus_imm_mux|sel_out[7]~2_combout\)) # (!\add_instance|rf|RF[7][10]~q\ & 
-- (!\add_instance|adder|carry~7_combout\ & \add_instance|pc_plus_imm_mux|sel_out[7]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][10]~q\,
	datab => \add_instance|adder|carry~7_combout\,
	datac => \add_instance|rf|RF[7][11]~q\,
	datad => \add_instance|pc_plus_imm_mux|sel_out[7]~2_combout\,
	combout => \add_instance|adder|sum~10_combout\);

-- Location: LCCOMB_X19_Y23_N10
\add_instance|pc_final_mux|sel_out[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|pc_final_mux|sel_out[11]~22_combout\ = (\add_instance|control_unit|Mux13~0_combout\ & ((\add_instance|adder|sum~10_combout\) # ((\add_instance|control_unit|Mux12~0_combout\)))) # (!\add_instance|control_unit|Mux13~0_combout\ & 
-- (((\add_instance|incrementer|sum~10_combout\ & !\add_instance|control_unit|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|adder|sum~10_combout\,
	datab => \add_instance|incrementer|sum~10_combout\,
	datac => \add_instance|control_unit|Mux13~0_combout\,
	datad => \add_instance|control_unit|Mux12~0_combout\,
	combout => \add_instance|pc_final_mux|sel_out[11]~22_combout\);

-- Location: LCCOMB_X19_Y23_N4
\add_instance|pc_final_mux|sel_out[11]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|pc_final_mux|sel_out[11]~23_combout\ = (\add_instance|control_unit|Mux12~0_combout\ & ((\add_instance|pc_final_mux|sel_out[11]~22_combout\ & ((\add_instance|main_alu|C[11]~22_combout\))) # (!\add_instance|pc_final_mux|sel_out[11]~22_combout\ 
-- & (\add_instance|rf|Mux20~2_combout\)))) # (!\add_instance|control_unit|Mux12~0_combout\ & (((\add_instance|pc_final_mux|sel_out[11]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux20~2_combout\,
	datab => \add_instance|main_alu|C[11]~22_combout\,
	datac => \add_instance|control_unit|Mux12~0_combout\,
	datad => \add_instance|pc_final_mux|sel_out[11]~22_combout\,
	combout => \add_instance|pc_final_mux|sel_out[11]~23_combout\);

-- Location: FF_X19_Y23_N5
\add_instance|rf|RF[7][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|pc_final_mux|sel_out[11]~23_combout\,
	clrn => \ALT_INV_input_vector[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[7][11]~q\);

-- Location: LCCOMB_X19_Y23_N28
\add_instance|incrementer|sum~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|incrementer|sum~10_combout\ = \add_instance|rf|RF[7][11]~q\ $ (((\add_instance|incrementer|carry~2_combout\ & \add_instance|rf|RF[7][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][11]~q\,
	datab => \add_instance|incrementer|carry~2_combout\,
	datad => \add_instance|rf|RF[7][10]~q\,
	combout => \add_instance|incrementer|sum~10_combout\);

-- Location: LCCOMB_X19_Y23_N22
\add_instance|rf_d3_mux|sel_out[11]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_d3_mux|sel_out[11]~20_combout\ = (\add_instance|control_unit|Mux7~0_combout\ & ((\add_instance|rf_d3_mux|sel_out[4]~29_combout\ & (\add_instance|rom_unit|rom_data~2071_combout\)) # (!\add_instance|rf_d3_mux|sel_out[4]~29_combout\ & 
-- ((\add_instance|main_alu|C[11]~22_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf_d3_mux|sel_out[4]~29_combout\,
	datab => \add_instance|control_unit|Mux7~0_combout\,
	datac => \add_instance|rom_unit|rom_data~2071_combout\,
	datad => \add_instance|main_alu|C[11]~22_combout\,
	combout => \add_instance|rf_d3_mux|sel_out[11]~20_combout\);

-- Location: LCCOMB_X19_Y23_N18
\add_instance|rf_d3_mux|sel_out[11]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_d3_mux|sel_out[11]~21_combout\ = (\add_instance|rf_d3_mux|sel_out[11]~20_combout\) # ((\add_instance|incrementer|sum~10_combout\ & !\add_instance|control_unit|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|incrementer|sum~10_combout\,
	datac => \add_instance|rf_d3_mux|sel_out[11]~20_combout\,
	datad => \add_instance|control_unit|Mux7~0_combout\,
	combout => \add_instance|rf_d3_mux|sel_out[11]~21_combout\);

-- Location: FF_X18_Y23_N29
\add_instance|rf|RF[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[11]~21_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[1][11]~q\);

-- Location: LCCOMB_X18_Y23_N14
\add_instance|rf|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux4~0_combout\ = (\add_instance|rom_unit|rom_data~2063_combout\ & (\add_instance|rf|RF[1][11]~q\)) # (!\add_instance|rom_unit|rom_data~2063_combout\ & ((\add_instance|rf|RF[0][11]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|rf|RF[1][11]~q\,
	datac => \add_instance|rom_unit|rom_data~2063_combout\,
	datad => \add_instance|rf|RF[0][11]~q\,
	combout => \add_instance|rf|Mux4~0_combout\);

-- Location: LCCOMB_X18_Y22_N18
\add_instance|main_alu|zero_check~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|zero_check~4_combout\ = (\add_instance|rf|Mux5~0_combout\) # ((\add_instance|rf|Mux7~0_combout\) # ((\add_instance|rf|Mux6~0_combout\) # (\add_instance|rf|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux5~0_combout\,
	datab => \add_instance|rf|Mux7~0_combout\,
	datac => \add_instance|rf|Mux6~0_combout\,
	datad => \add_instance|rf|Mux4~0_combout\,
	combout => \add_instance|main_alu|zero_check~4_combout\);

-- Location: LCCOMB_X18_Y18_N8
\add_instance|main_alu|zero_check~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|zero_check~3_combout\ = (\add_instance|rf|Mux8~0_combout\) # ((\add_instance|rf|Mux12~0_combout\) # ((\add_instance|rf|Mux9~0_combout\) # (\add_instance|rf|Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux8~0_combout\,
	datab => \add_instance|rf|Mux12~0_combout\,
	datac => \add_instance|rf|Mux9~0_combout\,
	datad => \add_instance|rf|Mux10~0_combout\,
	combout => \add_instance|main_alu|zero_check~3_combout\);

-- Location: LCCOMB_X19_Y23_N0
\add_instance|adder|carry~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|adder|carry~8_combout\ = (\add_instance|rf|RF[7][10]~q\ & ((\add_instance|pc_plus_imm_mux|sel_out[7]~2_combout\) # ((\add_instance|adder|carry~7_combout\ & \add_instance|rf|RF[7][11]~q\)))) # (!\add_instance|rf|RF[7][10]~q\ & 
-- (\add_instance|pc_plus_imm_mux|sel_out[7]~2_combout\ & ((\add_instance|adder|carry~7_combout\) # (\add_instance|rf|RF[7][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][10]~q\,
	datab => \add_instance|adder|carry~7_combout\,
	datac => \add_instance|rf|RF[7][11]~q\,
	datad => \add_instance|pc_plus_imm_mux|sel_out[7]~2_combout\,
	combout => \add_instance|adder|carry~8_combout\);

-- Location: LCCOMB_X19_Y22_N6
\add_instance|adder|sum~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|adder|sum~11_combout\ = \add_instance|pc_plus_imm_mux|sel_out[7]~2_combout\ $ (\add_instance|rf|RF[7][12]~q\ $ (\add_instance|adder|carry~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|pc_plus_imm_mux|sel_out[7]~2_combout\,
	datac => \add_instance|rf|RF[7][12]~q\,
	datad => \add_instance|adder|carry~8_combout\,
	combout => \add_instance|adder|sum~11_combout\);

-- Location: FF_X18_Y18_N19
\add_instance|rf|RF[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[12]~23_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[0][12]~q\);

-- Location: LCCOMB_X18_Y20_N0
\add_instance|rf|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux19~0_combout\ = (\add_instance|rom_unit|rom_data~2071_combout\ & (((\add_instance|rf|RF[1][12]~q\) # (\add_instance|rom_unit|rom_data~2062_combout\)))) # (!\add_instance|rom_unit|rom_data~2071_combout\ & (\add_instance|rf|RF[0][12]~q\ 
-- & ((!\add_instance|rom_unit|rom_data~2062_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[0][12]~q\,
	datab => \add_instance|rom_unit|rom_data~2071_combout\,
	datac => \add_instance|rf|RF[1][12]~q\,
	datad => \add_instance|rom_unit|rom_data~2062_combout\,
	combout => \add_instance|rf|Mux19~0_combout\);

-- Location: FF_X18_Y22_N27
\add_instance|rf|RF[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[12]~23_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[5][12]~q\);

-- Location: LCCOMB_X18_Y20_N8
\add_instance|rf|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux19~1_combout\ = (\add_instance|rom_unit|rom_data~2062_combout\ & ((\add_instance|rf|Mux31~2_combout\) # (!\add_instance|rf|RF[5][12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[5][12]~q\,
	datab => \add_instance|rom_unit|rom_data~2062_combout\,
	datad => \add_instance|rf|Mux31~2_combout\,
	combout => \add_instance|rf|Mux19~1_combout\);

-- Location: LCCOMB_X18_Y20_N10
\add_instance|rf|Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux19~2_combout\ = (\add_instance|rf|Mux19~1_combout\ & (\add_instance|rf|Mux31~2_combout\ & ((\add_instance|rf|RF[7][12]~q\) # (!\add_instance|rf|Mux19~0_combout\)))) # (!\add_instance|rf|Mux19~1_combout\ & 
-- (((\add_instance|rf|Mux19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][12]~q\,
	datab => \add_instance|rf|Mux19~0_combout\,
	datac => \add_instance|rf|Mux19~1_combout\,
	datad => \add_instance|rf|Mux31~2_combout\,
	combout => \add_instance|rf|Mux19~2_combout\);

-- Location: LCCOMB_X18_Y22_N8
\add_instance|alu_b_mux|sel_out[12]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[12]~29_combout\ = (\add_instance|control_unit|Mux9~0_combout\ & ((\add_instance|control_unit|Mux10~1_combout\ & (\add_instance|rf|Mux19~2_combout\)) # (!\add_instance|control_unit|Mux10~1_combout\ & 
-- ((\add_instance|rf|Mux20~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux19~2_combout\,
	datab => \add_instance|control_unit|Mux10~1_combout\,
	datac => \add_instance|control_unit|Mux9~0_combout\,
	datad => \add_instance|rf|Mux20~2_combout\,
	combout => \add_instance|alu_b_mux|sel_out[12]~29_combout\);

-- Location: LCCOMB_X18_Y22_N26
\add_instance|alu_b_mux|sel_out[12]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[12]~30_combout\ = (\add_instance|alu_b_mux|sel_out[12]~29_combout\) # (\add_instance|alu_b_mux|sel_out[8]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|alu_b_mux|sel_out[12]~29_combout\,
	datad => \add_instance|alu_b_mux|sel_out[8]~20_combout\,
	combout => \add_instance|alu_b_mux|sel_out[12]~30_combout\);

-- Location: LCCOMB_X18_Y22_N30
\add_instance|main_alu|result~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|result~25_combout\ = \add_instance|rf|Mux3~0_combout\ $ (((\add_instance|alu_b_mux|sel_out[12]~29_combout\) # (\add_instance|alu_b_mux|sel_out[8]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux3~0_combout\,
	datac => \add_instance|alu_b_mux|sel_out[12]~29_combout\,
	datad => \add_instance|alu_b_mux|sel_out[8]~20_combout\,
	combout => \add_instance|main_alu|result~25_combout\);

-- Location: LCCOMB_X18_Y21_N16
\add_instance|main_alu|carry~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|carry~12_combout\ = (\add_instance|rf|Mux4~0_combout\ & ((\add_instance|alu_b_mux|sel_out[11]~28_combout\) # ((\add_instance|main_alu|result~23_combout\) # (\add_instance|main_alu|carry~11_combout\)))) # 
-- (!\add_instance|rf|Mux4~0_combout\ & (\add_instance|alu_b_mux|sel_out[11]~28_combout\ & ((\add_instance|main_alu|result~23_combout\) # (\add_instance|main_alu|carry~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux4~0_combout\,
	datab => \add_instance|alu_b_mux|sel_out[11]~28_combout\,
	datac => \add_instance|main_alu|result~23_combout\,
	datad => \add_instance|main_alu|carry~11_combout\,
	combout => \add_instance|main_alu|carry~12_combout\);

-- Location: LCCOMB_X18_Y22_N12
\add_instance|main_alu|C[12]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[12]~23_combout\ = (\add_instance|control_unit|Mux15~0_combout\ & (((\add_instance|control_unit|Mux14~0_combout\)))) # (!\add_instance|control_unit|Mux15~0_combout\ & (\add_instance|main_alu|result~25_combout\ $ 
-- (((\add_instance|control_unit|Mux14~0_combout\ & \add_instance|main_alu|carry~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|main_alu|result~25_combout\,
	datab => \add_instance|control_unit|Mux15~0_combout\,
	datac => \add_instance|control_unit|Mux14~0_combout\,
	datad => \add_instance|main_alu|carry~12_combout\,
	combout => \add_instance|main_alu|C[12]~23_combout\);

-- Location: LCCOMB_X18_Y22_N2
\add_instance|main_alu|C[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[12]~24_combout\ = (\add_instance|rf|Mux3~0_combout\ & ((\add_instance|control_unit|Mux15~0_combout\ & ((!\add_instance|main_alu|C[12]~23_combout\) # (!\add_instance|alu_b_mux|sel_out[12]~30_combout\))) # 
-- (!\add_instance|control_unit|Mux15~0_combout\ & ((\add_instance|main_alu|C[12]~23_combout\))))) # (!\add_instance|rf|Mux3~0_combout\ & (((\add_instance|main_alu|C[12]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux3~0_combout\,
	datab => \add_instance|control_unit|Mux15~0_combout\,
	datac => \add_instance|alu_b_mux|sel_out[12]~30_combout\,
	datad => \add_instance|main_alu|C[12]~23_combout\,
	combout => \add_instance|main_alu|C[12]~24_combout\);

-- Location: LCCOMB_X18_Y22_N4
\add_instance|pc_final_mux|sel_out[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|pc_final_mux|sel_out[12]~24_combout\ = (\add_instance|control_unit|Mux12~0_combout\ & ((\add_instance|rf|Mux19~2_combout\) # ((\add_instance|control_unit|Mux13~0_combout\)))) # (!\add_instance|control_unit|Mux12~0_combout\ & 
-- (((\add_instance|incrementer|sum~11_combout\ & !\add_instance|control_unit|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux19~2_combout\,
	datab => \add_instance|control_unit|Mux12~0_combout\,
	datac => \add_instance|incrementer|sum~11_combout\,
	datad => \add_instance|control_unit|Mux13~0_combout\,
	combout => \add_instance|pc_final_mux|sel_out[12]~24_combout\);

-- Location: LCCOMB_X18_Y22_N16
\add_instance|pc_final_mux|sel_out[12]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|pc_final_mux|sel_out[12]~25_combout\ = (\add_instance|pc_final_mux|sel_out[12]~24_combout\ & (((\add_instance|main_alu|C[12]~24_combout\) # (!\add_instance|control_unit|Mux13~0_combout\)))) # 
-- (!\add_instance|pc_final_mux|sel_out[12]~24_combout\ & (\add_instance|adder|sum~11_combout\ & ((\add_instance|control_unit|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|adder|sum~11_combout\,
	datab => \add_instance|main_alu|C[12]~24_combout\,
	datac => \add_instance|pc_final_mux|sel_out[12]~24_combout\,
	datad => \add_instance|control_unit|Mux13~0_combout\,
	combout => \add_instance|pc_final_mux|sel_out[12]~25_combout\);

-- Location: FF_X18_Y22_N17
\add_instance|rf|RF[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|pc_final_mux|sel_out[12]~25_combout\,
	clrn => \ALT_INV_input_vector[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[7][12]~q\);

-- Location: LCCOMB_X18_Y23_N30
\add_instance|incrementer|sum~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|incrementer|sum~11_combout\ = \add_instance|rf|RF[7][12]~q\ $ (((\add_instance|rf|RF[7][11]~q\ & (\add_instance|incrementer|carry~2_combout\ & \add_instance|rf|RF[7][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][11]~q\,
	datab => \add_instance|rf|RF[7][12]~q\,
	datac => \add_instance|incrementer|carry~2_combout\,
	datad => \add_instance|rf|RF[7][10]~q\,
	combout => \add_instance|incrementer|sum~11_combout\);

-- Location: LCCOMB_X18_Y22_N24
\add_instance|rf_d3_mux|sel_out[12]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_d3_mux|sel_out[12]~22_combout\ = (\add_instance|control_unit|Mux7~0_combout\ & ((\add_instance|rf_d3_mux|sel_out[4]~29_combout\ & (\add_instance|rom_unit|rom_data~2072_combout\)) # (!\add_instance|rf_d3_mux|sel_out[4]~29_combout\ & 
-- ((\add_instance|main_alu|C[12]~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rom_unit|rom_data~2072_combout\,
	datab => \add_instance|control_unit|Mux7~0_combout\,
	datac => \add_instance|rf_d3_mux|sel_out[4]~29_combout\,
	datad => \add_instance|main_alu|C[12]~24_combout\,
	combout => \add_instance|rf_d3_mux|sel_out[12]~22_combout\);

-- Location: LCCOMB_X18_Y22_N14
\add_instance|rf_d3_mux|sel_out[12]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_d3_mux|sel_out[12]~23_combout\ = (\add_instance|rf_d3_mux|sel_out[12]~22_combout\) # ((!\add_instance|control_unit|Mux7~0_combout\ & \add_instance|incrementer|sum~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|control_unit|Mux7~0_combout\,
	datac => \add_instance|incrementer|sum~11_combout\,
	datad => \add_instance|rf_d3_mux|sel_out[12]~22_combout\,
	combout => \add_instance|rf_d3_mux|sel_out[12]~23_combout\);

-- Location: FF_X18_Y20_N1
\add_instance|rf|RF[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[12]~23_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[1][12]~q\);

-- Location: LCCOMB_X18_Y18_N12
\add_instance|rf|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux3~0_combout\ = (\add_instance|rom_unit|rom_data~2063_combout\ & (\add_instance|rf|RF[1][12]~q\)) # (!\add_instance|rom_unit|rom_data~2063_combout\ & ((\add_instance|rf|RF[0][12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[1][12]~q\,
	datab => \add_instance|rf|RF[0][12]~q\,
	datad => \add_instance|rom_unit|rom_data~2063_combout\,
	combout => \add_instance|rf|Mux3~0_combout\);

-- Location: LCCOMB_X19_Y23_N24
\add_instance|incrementer|carry~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|incrementer|carry~3_combout\ = (\add_instance|rf|RF[7][12]~q\ & (\add_instance|incrementer|carry~2_combout\ & (\add_instance|rf|RF[7][11]~q\ & \add_instance|rf|RF[7][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][12]~q\,
	datab => \add_instance|incrementer|carry~2_combout\,
	datac => \add_instance|rf|RF[7][11]~q\,
	datad => \add_instance|rf|RF[7][10]~q\,
	combout => \add_instance|incrementer|carry~3_combout\);

-- Location: LCCOMB_X19_Y22_N16
\add_instance|rf_d3_mux|sel_out[13]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_d3_mux|sel_out[13]~24_combout\ = (\add_instance|control_unit|Mux7~0_combout\ & ((\add_instance|rf_d3_mux|sel_out[4]~29_combout\ & (\add_instance|rom_unit|rom_data~2071_combout\)) # (!\add_instance|rf_d3_mux|sel_out[4]~29_combout\ & 
-- ((\add_instance|main_alu|C[13]~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf_d3_mux|sel_out[4]~29_combout\,
	datab => \add_instance|rom_unit|rom_data~2071_combout\,
	datac => \add_instance|control_unit|Mux7~0_combout\,
	datad => \add_instance|main_alu|C[13]~26_combout\,
	combout => \add_instance|rf_d3_mux|sel_out[13]~24_combout\);

-- Location: LCCOMB_X19_Y22_N30
\add_instance|rf_d3_mux|sel_out[13]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_d3_mux|sel_out[13]~32_combout\ = (\add_instance|rf_d3_mux|sel_out[13]~24_combout\) # ((!\add_instance|control_unit|Mux7~0_combout\ & (\add_instance|incrementer|carry~3_combout\ $ (\add_instance|rf|RF[7][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux7~0_combout\,
	datab => \add_instance|incrementer|carry~3_combout\,
	datac => \add_instance|rf|RF[7][13]~q\,
	datad => \add_instance|rf_d3_mux|sel_out[13]~24_combout\,
	combout => \add_instance|rf_d3_mux|sel_out[13]~32_combout\);

-- Location: FF_X19_Y22_N31
\add_instance|rf|RF[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf_d3_mux|sel_out[13]~32_combout\,
	ena => \add_instance|rf|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[5][13]~q\);

-- Location: LCCOMB_X17_Y22_N26
\add_instance|rf|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux18~1_combout\ = (\add_instance|rom_unit|rom_data~2062_combout\ & ((\add_instance|rf|Mux31~2_combout\) # (!\add_instance|rf|RF[5][13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rom_unit|rom_data~2062_combout\,
	datab => \add_instance|rf|RF[5][13]~q\,
	datad => \add_instance|rf|Mux31~2_combout\,
	combout => \add_instance|rf|Mux18~1_combout\);

-- Location: FF_X19_Y21_N23
\add_instance|rf|RF[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[13]~32_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[1][13]~q\);

-- Location: FF_X19_Y21_N17
\add_instance|rf|RF[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[13]~32_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[0][13]~q\);

-- Location: LCCOMB_X17_Y22_N20
\add_instance|rf|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux18~0_combout\ = (\add_instance|rom_unit|rom_data~2062_combout\ & (\add_instance|rom_unit|rom_data~2071_combout\)) # (!\add_instance|rom_unit|rom_data~2062_combout\ & ((\add_instance|rom_unit|rom_data~2071_combout\ & 
-- (\add_instance|rf|RF[1][13]~q\)) # (!\add_instance|rom_unit|rom_data~2071_combout\ & ((\add_instance|rf|RF[0][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rom_unit|rom_data~2062_combout\,
	datab => \add_instance|rom_unit|rom_data~2071_combout\,
	datac => \add_instance|rf|RF[1][13]~q\,
	datad => \add_instance|rf|RF[0][13]~q\,
	combout => \add_instance|rf|Mux18~0_combout\);

-- Location: LCCOMB_X17_Y22_N16
\add_instance|rf|Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux18~2_combout\ = (\add_instance|rf|Mux18~1_combout\ & (\add_instance|rf|Mux31~2_combout\ & ((\add_instance|rf|RF[7][13]~q\) # (!\add_instance|rf|Mux18~0_combout\)))) # (!\add_instance|rf|Mux18~1_combout\ & 
-- (((\add_instance|rf|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][13]~q\,
	datab => \add_instance|rf|Mux31~2_combout\,
	datac => \add_instance|rf|Mux18~1_combout\,
	datad => \add_instance|rf|Mux18~0_combout\,
	combout => \add_instance|rf|Mux18~2_combout\);

-- Location: LCCOMB_X18_Y22_N20
\add_instance|alu_b_mux|sel_out[13]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[13]~31_combout\ = (\add_instance|control_unit|Mux9~0_combout\ & ((\add_instance|control_unit|Mux10~1_combout\ & (\add_instance|rf|Mux18~2_combout\)) # (!\add_instance|control_unit|Mux10~1_combout\ & 
-- ((\add_instance|rf|Mux19~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux18~2_combout\,
	datab => \add_instance|control_unit|Mux10~1_combout\,
	datac => \add_instance|control_unit|Mux9~0_combout\,
	datad => \add_instance|rf|Mux19~2_combout\,
	combout => \add_instance|alu_b_mux|sel_out[13]~31_combout\);

-- Location: LCCOMB_X19_Y21_N14
\add_instance|alu_b_mux|sel_out[13]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[13]~32_combout\ = (\add_instance|alu_b_mux|sel_out[13]~31_combout\) # (\add_instance|alu_b_mux|sel_out[8]~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|alu_b_mux|sel_out[13]~31_combout\,
	datad => \add_instance|alu_b_mux|sel_out[8]~20_combout\,
	combout => \add_instance|alu_b_mux|sel_out[13]~32_combout\);

-- Location: LCCOMB_X19_Y21_N22
\add_instance|rf|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux2~0_combout\ = (\add_instance|rom_unit|rom_data~2063_combout\ & (\add_instance|rf|RF[1][13]~q\)) # (!\add_instance|rom_unit|rom_data~2063_combout\ & ((\add_instance|rf|RF[0][13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rom_unit|rom_data~2063_combout\,
	datac => \add_instance|rf|RF[1][13]~q\,
	datad => \add_instance|rf|RF[0][13]~q\,
	combout => \add_instance|rf|Mux2~0_combout\);

-- Location: LCCOMB_X19_Y22_N12
\add_instance|main_alu|C[13]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[13]~25_combout\ = (\add_instance|control_unit|Mux14~0_combout\ & (((\add_instance|control_unit|Mux15~0_combout\)))) # (!\add_instance|control_unit|Mux14~0_combout\ & (\add_instance|rf|Mux2~0_combout\ $ 
-- (((\add_instance|alu_b_mux|sel_out[13]~32_combout\ & !\add_instance|control_unit|Mux15~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[13]~32_combout\,
	datab => \add_instance|rf|Mux2~0_combout\,
	datac => \add_instance|control_unit|Mux15~0_combout\,
	datad => \add_instance|control_unit|Mux14~0_combout\,
	combout => \add_instance|main_alu|C[13]~25_combout\);

-- Location: LCCOMB_X19_Y21_N4
\add_instance|main_alu|result~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|result~27_combout\ = (\add_instance|rf|Mux2~0_combout\ & ((\add_instance|alu_b_mux|sel_out[13]~31_combout\) # (\add_instance|alu_b_mux|sel_out[8]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[13]~31_combout\,
	datac => \add_instance|rf|Mux2~0_combout\,
	datad => \add_instance|alu_b_mux|sel_out[8]~20_combout\,
	combout => \add_instance|main_alu|result~27_combout\);

-- Location: LCCOMB_X19_Y21_N16
\add_instance|main_alu|result~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|result~26_combout\ = (\add_instance|rf|Mux3~0_combout\ & ((\add_instance|alu_b_mux|sel_out[12]~29_combout\) # (\add_instance|alu_b_mux|sel_out[8]~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[12]~29_combout\,
	datab => \add_instance|rf|Mux3~0_combout\,
	datad => \add_instance|alu_b_mux|sel_out[8]~20_combout\,
	combout => \add_instance|main_alu|result~26_combout\);

-- Location: LCCOMB_X18_Y21_N14
\add_instance|main_alu|carry~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|carry~13_combout\ = (\add_instance|main_alu|carry~12_combout\ & ((\add_instance|rf|Mux3~0_combout\) # ((\add_instance|alu_b_mux|sel_out[12]~29_combout\) # (\add_instance|alu_b_mux|sel_out[8]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux3~0_combout\,
	datab => \add_instance|alu_b_mux|sel_out[12]~29_combout\,
	datac => \add_instance|alu_b_mux|sel_out[8]~20_combout\,
	datad => \add_instance|main_alu|carry~12_combout\,
	combout => \add_instance|main_alu|carry~13_combout\);

-- Location: LCCOMB_X18_Y21_N8
\add_instance|main_alu|sum~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|sum~5_combout\ = \add_instance|rf|Mux2~0_combout\ $ (\add_instance|alu_b_mux|sel_out[13]~32_combout\ $ (((\add_instance|main_alu|result~26_combout\) # (\add_instance|main_alu|carry~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux2~0_combout\,
	datab => \add_instance|main_alu|result~26_combout\,
	datac => \add_instance|main_alu|carry~13_combout\,
	datad => \add_instance|alu_b_mux|sel_out[13]~32_combout\,
	combout => \add_instance|main_alu|sum~5_combout\);

-- Location: LCCOMB_X19_Y22_N18
\add_instance|main_alu|C[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[13]~26_combout\ = (\add_instance|main_alu|C[13]~25_combout\ & (((!\add_instance|control_unit|Mux14~0_combout\)) # (!\add_instance|main_alu|result~27_combout\))) # (!\add_instance|main_alu|C[13]~25_combout\ & 
-- (((\add_instance|control_unit|Mux14~0_combout\ & \add_instance|main_alu|sum~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|main_alu|C[13]~25_combout\,
	datab => \add_instance|main_alu|result~27_combout\,
	datac => \add_instance|control_unit|Mux14~0_combout\,
	datad => \add_instance|main_alu|sum~5_combout\,
	combout => \add_instance|main_alu|C[13]~26_combout\);

-- Location: LCCOMB_X19_Y22_N0
\add_instance|adder|sum~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|adder|sum~12_combout\ = \add_instance|rf|RF[7][13]~q\ $ (((\add_instance|rf|RF[7][12]~q\ & (!\add_instance|pc_plus_imm_mux|sel_out[7]~2_combout\ & \add_instance|adder|carry~8_combout\)) # (!\add_instance|rf|RF[7][12]~q\ & 
-- (\add_instance|pc_plus_imm_mux|sel_out[7]~2_combout\ & !\add_instance|adder|carry~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][12]~q\,
	datab => \add_instance|rf|RF[7][13]~q\,
	datac => \add_instance|pc_plus_imm_mux|sel_out[7]~2_combout\,
	datad => \add_instance|adder|carry~8_combout\,
	combout => \add_instance|adder|sum~12_combout\);

-- Location: LCCOMB_X19_Y22_N14
\add_instance|incrementer|sum~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|incrementer|sum~12_combout\ = \add_instance|rf|RF[7][13]~q\ $ (\add_instance|incrementer|carry~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|rf|RF[7][13]~q\,
	datad => \add_instance|incrementer|carry~3_combout\,
	combout => \add_instance|incrementer|sum~12_combout\);

-- Location: LCCOMB_X19_Y22_N2
\add_instance|pc_final_mux|sel_out[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|pc_final_mux|sel_out[13]~26_combout\ = (\add_instance|control_unit|Mux12~0_combout\ & (((\add_instance|control_unit|Mux13~0_combout\)))) # (!\add_instance|control_unit|Mux12~0_combout\ & ((\add_instance|control_unit|Mux13~0_combout\ & 
-- (\add_instance|adder|sum~12_combout\)) # (!\add_instance|control_unit|Mux13~0_combout\ & ((\add_instance|incrementer|sum~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux12~0_combout\,
	datab => \add_instance|adder|sum~12_combout\,
	datac => \add_instance|incrementer|sum~12_combout\,
	datad => \add_instance|control_unit|Mux13~0_combout\,
	combout => \add_instance|pc_final_mux|sel_out[13]~26_combout\);

-- Location: LCCOMB_X19_Y22_N20
\add_instance|pc_final_mux|sel_out[13]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|pc_final_mux|sel_out[13]~27_combout\ = (\add_instance|control_unit|Mux12~0_combout\ & ((\add_instance|pc_final_mux|sel_out[13]~26_combout\ & (\add_instance|main_alu|C[13]~26_combout\)) # (!\add_instance|pc_final_mux|sel_out[13]~26_combout\ & 
-- ((\add_instance|rf|Mux18~2_combout\))))) # (!\add_instance|control_unit|Mux12~0_combout\ & (((\add_instance|pc_final_mux|sel_out[13]~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux12~0_combout\,
	datab => \add_instance|main_alu|C[13]~26_combout\,
	datac => \add_instance|rf|Mux18~2_combout\,
	datad => \add_instance|pc_final_mux|sel_out[13]~26_combout\,
	combout => \add_instance|pc_final_mux|sel_out[13]~27_combout\);

-- Location: FF_X19_Y22_N21
\add_instance|rf|RF[7][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|pc_final_mux|sel_out[13]~27_combout\,
	clrn => \ALT_INV_input_vector[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[7][13]~q\);

-- Location: LCCOMB_X17_Y22_N14
\add_instance|rf|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux17~0_combout\ = (\add_instance|rom_unit|rom_data~2065_combout\ & (\add_instance|rf|RF[7][14]~q\ & \add_instance|rom_unit|rom_data~2060_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rom_unit|rom_data~2065_combout\,
	datac => \add_instance|rf|RF[7][14]~q\,
	datad => \add_instance|rom_unit|rom_data~2060_combout\,
	combout => \add_instance|rf|Mux17~0_combout\);

-- Location: FF_X19_Y18_N9
\add_instance|rf|RF[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[14]~26_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[1][14]~q\);

-- Location: LCCOMB_X18_Y18_N30
\add_instance|rf|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux17~1_combout\ = (\add_instance|rom_unit|rom_data~2071_combout\ & (\add_instance|rf|RF[1][14]~q\)) # (!\add_instance|rom_unit|rom_data~2071_combout\ & ((\add_instance|rf|RF[0][14]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|rf|RF[1][14]~q\,
	datac => \add_instance|rf|RF[0][14]~q\,
	datad => \add_instance|rom_unit|rom_data~2071_combout\,
	combout => \add_instance|rf|Mux17~1_combout\);

-- Location: LCCOMB_X17_Y22_N8
\add_instance|rf|Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux17~2_combout\ = (\add_instance|rom_unit|rom_data~2062_combout\ & (\add_instance|rf|Mux17~0_combout\)) # (!\add_instance|rom_unit|rom_data~2062_combout\ & ((\add_instance|rf|Mux17~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rom_unit|rom_data~2062_combout\,
	datac => \add_instance|rf|Mux17~0_combout\,
	datad => \add_instance|rf|Mux17~1_combout\,
	combout => \add_instance|rf|Mux17~2_combout\);

-- Location: LCCOMB_X18_Y22_N0
\add_instance|alu_b_mux|sel_out[14]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[14]~33_combout\ = (\add_instance|control_unit|Mux9~0_combout\ & ((\add_instance|control_unit|Mux10~1_combout\ & ((\add_instance|rf|Mux17~2_combout\))) # (!\add_instance|control_unit|Mux10~1_combout\ & 
-- (\add_instance|rf|Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux18~2_combout\,
	datab => \add_instance|control_unit|Mux10~1_combout\,
	datac => \add_instance|control_unit|Mux9~0_combout\,
	datad => \add_instance|rf|Mux17~2_combout\,
	combout => \add_instance|alu_b_mux|sel_out[14]~33_combout\);

-- Location: LCCOMB_X19_Y21_N30
\add_instance|alu_b_mux|sel_out[14]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[14]~34_combout\ = (\add_instance|alu_b_mux|sel_out[8]~20_combout\) # (\add_instance|alu_b_mux|sel_out[14]~33_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[8]~20_combout\,
	datad => \add_instance|alu_b_mux|sel_out[14]~33_combout\,
	combout => \add_instance|alu_b_mux|sel_out[14]~34_combout\);

-- Location: LCCOMB_X19_Y21_N6
\add_instance|main_alu|result~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|result~28_combout\ = \add_instance|rf|Mux1~0_combout\ $ (((\add_instance|alu_b_mux|sel_out[8]~20_combout\) # (\add_instance|alu_b_mux|sel_out[14]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[8]~20_combout\,
	datac => \add_instance|rf|Mux1~0_combout\,
	datad => \add_instance|alu_b_mux|sel_out[14]~33_combout\,
	combout => \add_instance|main_alu|result~28_combout\);

-- Location: LCCOMB_X19_Y21_N12
\add_instance|main_alu|carry~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|carry~14_combout\ = (\add_instance|rf|Mux2~0_combout\ & ((\add_instance|main_alu|result~26_combout\) # ((\add_instance|alu_b_mux|sel_out[13]~32_combout\) # (\add_instance|main_alu|carry~13_combout\)))) # 
-- (!\add_instance|rf|Mux2~0_combout\ & (\add_instance|alu_b_mux|sel_out[13]~32_combout\ & ((\add_instance|main_alu|result~26_combout\) # (\add_instance|main_alu|carry~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux2~0_combout\,
	datab => \add_instance|main_alu|result~26_combout\,
	datac => \add_instance|alu_b_mux|sel_out[13]~32_combout\,
	datad => \add_instance|main_alu|carry~13_combout\,
	combout => \add_instance|main_alu|carry~14_combout\);

-- Location: LCCOMB_X19_Y21_N8
\add_instance|main_alu|C[14]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[14]~27_combout\ = (\add_instance|control_unit|Mux15~0_combout\ & (((\add_instance|control_unit|Mux14~0_combout\)))) # (!\add_instance|control_unit|Mux15~0_combout\ & (\add_instance|main_alu|result~28_combout\ $ 
-- (((\add_instance|control_unit|Mux14~0_combout\ & \add_instance|main_alu|carry~14_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|main_alu|result~28_combout\,
	datab => \add_instance|control_unit|Mux15~0_combout\,
	datac => \add_instance|control_unit|Mux14~0_combout\,
	datad => \add_instance|main_alu|carry~14_combout\,
	combout => \add_instance|main_alu|C[14]~27_combout\);

-- Location: LCCOMB_X19_Y21_N26
\add_instance|main_alu|C[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[14]~28_combout\ = (\add_instance|control_unit|Mux15~0_combout\ & ((\add_instance|rf|Mux1~0_combout\ & ((!\add_instance|main_alu|C[14]~27_combout\) # (!\add_instance|alu_b_mux|sel_out[14]~34_combout\))) # 
-- (!\add_instance|rf|Mux1~0_combout\ & ((\add_instance|main_alu|C[14]~27_combout\))))) # (!\add_instance|control_unit|Mux15~0_combout\ & (((\add_instance|main_alu|C[14]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[14]~34_combout\,
	datab => \add_instance|control_unit|Mux15~0_combout\,
	datac => \add_instance|rf|Mux1~0_combout\,
	datad => \add_instance|main_alu|C[14]~27_combout\,
	combout => \add_instance|main_alu|C[14]~28_combout\);

-- Location: LCCOMB_X19_Y22_N24
\add_instance|adder|carry~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|adder|carry~9_combout\ = (\add_instance|rf|RF[7][12]~q\ & ((\add_instance|pc_plus_imm_mux|sel_out[7]~2_combout\) # ((\add_instance|rf|RF[7][13]~q\ & \add_instance|adder|carry~8_combout\)))) # (!\add_instance|rf|RF[7][12]~q\ & 
-- (\add_instance|pc_plus_imm_mux|sel_out[7]~2_combout\ & ((\add_instance|rf|RF[7][13]~q\) # (\add_instance|adder|carry~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][12]~q\,
	datab => \add_instance|rf|RF[7][13]~q\,
	datac => \add_instance|pc_plus_imm_mux|sel_out[7]~2_combout\,
	datad => \add_instance|adder|carry~8_combout\,
	combout => \add_instance|adder|carry~9_combout\);

-- Location: LCCOMB_X19_Y22_N22
\add_instance|adder|sum~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|adder|sum~13_combout\ = \add_instance|rf|RF[7][14]~q\ $ (\add_instance|adder|carry~9_combout\ $ (\add_instance|pc_plus_imm_mux|sel_out[7]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][14]~q\,
	datab => \add_instance|adder|carry~9_combout\,
	datac => \add_instance|pc_plus_imm_mux|sel_out[7]~2_combout\,
	combout => \add_instance|adder|sum~13_combout\);

-- Location: LCCOMB_X18_Y22_N6
\add_instance|pc_final_mux|sel_out[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|pc_final_mux|sel_out[14]~28_combout\ = (\add_instance|control_unit|Mux12~0_combout\ & ((\add_instance|rf|Mux17~2_combout\) # ((\add_instance|control_unit|Mux13~0_combout\)))) # (!\add_instance|control_unit|Mux12~0_combout\ & 
-- (((\add_instance|incrementer|sum~13_combout\ & !\add_instance|control_unit|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux17~2_combout\,
	datab => \add_instance|incrementer|sum~13_combout\,
	datac => \add_instance|control_unit|Mux12~0_combout\,
	datad => \add_instance|control_unit|Mux13~0_combout\,
	combout => \add_instance|pc_final_mux|sel_out[14]~28_combout\);

-- Location: LCCOMB_X18_Y22_N10
\add_instance|pc_final_mux|sel_out[14]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|pc_final_mux|sel_out[14]~29_combout\ = (\add_instance|control_unit|Mux13~0_combout\ & ((\add_instance|pc_final_mux|sel_out[14]~28_combout\ & (\add_instance|main_alu|C[14]~28_combout\)) # (!\add_instance|pc_final_mux|sel_out[14]~28_combout\ & 
-- ((\add_instance|adder|sum~13_combout\))))) # (!\add_instance|control_unit|Mux13~0_combout\ & (((\add_instance|pc_final_mux|sel_out[14]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux13~0_combout\,
	datab => \add_instance|main_alu|C[14]~28_combout\,
	datac => \add_instance|adder|sum~13_combout\,
	datad => \add_instance|pc_final_mux|sel_out[14]~28_combout\,
	combout => \add_instance|pc_final_mux|sel_out[14]~29_combout\);

-- Location: FF_X18_Y22_N11
\add_instance|rf|RF[7][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|pc_final_mux|sel_out[14]~29_combout\,
	clrn => \ALT_INV_input_vector[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[7][14]~q\);

-- Location: LCCOMB_X19_Y22_N28
\add_instance|incrementer|sum~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|incrementer|sum~13_combout\ = \add_instance|rf|RF[7][14]~q\ $ (((\add_instance|rf|RF[7][13]~q\ & \add_instance|incrementer|carry~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|rf|RF[7][13]~q\,
	datac => \add_instance|rf|RF[7][14]~q\,
	datad => \add_instance|incrementer|carry~3_combout\,
	combout => \add_instance|incrementer|sum~13_combout\);

-- Location: LCCOMB_X19_Y18_N24
\add_instance|rf_d3_mux|sel_out[14]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_d3_mux|sel_out[14]~25_combout\ = (\add_instance|control_unit|Mux7~0_combout\ & ((\add_instance|rf_d3_mux|sel_out[4]~29_combout\ & (\add_instance|rom_unit|rom_data~2062_combout\)) # (!\add_instance|rf_d3_mux|sel_out[4]~29_combout\ & 
-- ((\add_instance|main_alu|C[14]~28_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux7~0_combout\,
	datab => \add_instance|rom_unit|rom_data~2062_combout\,
	datac => \add_instance|rf_d3_mux|sel_out[4]~29_combout\,
	datad => \add_instance|main_alu|C[14]~28_combout\,
	combout => \add_instance|rf_d3_mux|sel_out[14]~25_combout\);

-- Location: LCCOMB_X19_Y18_N26
\add_instance|rf_d3_mux|sel_out[14]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_d3_mux|sel_out[14]~26_combout\ = (\add_instance|rf_d3_mux|sel_out[14]~25_combout\) # ((\add_instance|incrementer|sum~13_combout\ & !\add_instance|control_unit|Mux7~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|incrementer|sum~13_combout\,
	datac => \add_instance|control_unit|Mux7~0_combout\,
	datad => \add_instance|rf_d3_mux|sel_out[14]~25_combout\,
	combout => \add_instance|rf_d3_mux|sel_out[14]~26_combout\);

-- Location: FF_X19_Y18_N31
\add_instance|rf|RF[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[14]~26_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[0][14]~q\);

-- Location: LCCOMB_X19_Y18_N14
\add_instance|rf|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux1~0_combout\ = (\add_instance|rom_unit|rom_data~2063_combout\ & ((\add_instance|rf|RF[1][14]~q\))) # (!\add_instance|rom_unit|rom_data~2063_combout\ & (\add_instance|rf|RF[0][14]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|rf|RF[0][14]~q\,
	datac => \add_instance|rf|RF[1][14]~q\,
	datad => \add_instance|rom_unit|rom_data~2063_combout\,
	combout => \add_instance|rf|Mux1~0_combout\);

-- Location: LCCOMB_X17_Y22_N10
\add_instance|rf|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux16~0_combout\ = (\add_instance|rom_unit|rom_data~2065_combout\ & (\add_instance|rf|RF[7][15]~q\ & \add_instance|rom_unit|rom_data~2060_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rom_unit|rom_data~2065_combout\,
	datac => \add_instance|rf|RF[7][15]~q\,
	datad => \add_instance|rom_unit|rom_data~2060_combout\,
	combout => \add_instance|rf|Mux16~0_combout\);

-- Location: FF_X19_Y18_N23
\add_instance|rf|RF[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf_d3_mux|sel_out[15]~28_combout\,
	ena => \add_instance|rf|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[1][15]~q\);

-- Location: LCCOMB_X19_Y18_N4
\add_instance|rf|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux16~1_combout\ = (\add_instance|rom_unit|rom_data~2071_combout\ & (\add_instance|rf|RF[1][15]~q\)) # (!\add_instance|rom_unit|rom_data~2071_combout\ & ((\add_instance|rf|RF[0][15]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|rf|RF[1][15]~q\,
	datac => \add_instance|rf|RF[0][15]~q\,
	datad => \add_instance|rom_unit|rom_data~2071_combout\,
	combout => \add_instance|rf|Mux16~1_combout\);

-- Location: LCCOMB_X18_Y22_N22
\add_instance|rf|Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux16~2_combout\ = (\add_instance|rom_unit|rom_data~2062_combout\ & (\add_instance|rf|Mux16~0_combout\)) # (!\add_instance|rom_unit|rom_data~2062_combout\ & ((\add_instance|rf|Mux16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|rom_unit|rom_data~2062_combout\,
	datac => \add_instance|rf|Mux16~0_combout\,
	datad => \add_instance|rf|Mux16~1_combout\,
	combout => \add_instance|rf|Mux16~2_combout\);

-- Location: LCCOMB_X18_Y22_N28
\add_instance|alu_b_mux|sel_out[15]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[15]~35_combout\ = (\add_instance|control_unit|Mux9~0_combout\ & ((\add_instance|control_unit|Mux10~1_combout\ & (\add_instance|rf|Mux16~2_combout\)) # (!\add_instance|control_unit|Mux10~1_combout\ & 
-- ((\add_instance|rf|Mux17~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux16~2_combout\,
	datab => \add_instance|control_unit|Mux10~1_combout\,
	datac => \add_instance|control_unit|Mux9~0_combout\,
	datad => \add_instance|rf|Mux17~2_combout\,
	combout => \add_instance|alu_b_mux|sel_out[15]~35_combout\);

-- Location: LCCOMB_X19_Y18_N12
\add_instance|main_alu|result~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|result~30_combout\ = (\add_instance|rf|Mux0~0_combout\ & ((\add_instance|alu_b_mux|sel_out[8]~20_combout\) # (\add_instance|alu_b_mux|sel_out[15]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[8]~20_combout\,
	datac => \add_instance|rf|Mux0~0_combout\,
	datad => \add_instance|alu_b_mux|sel_out[15]~35_combout\,
	combout => \add_instance|main_alu|result~30_combout\);

-- Location: LCCOMB_X19_Y18_N28
\add_instance|main_alu|result~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|result~29_combout\ = \add_instance|rf|Mux0~0_combout\ $ (((\add_instance|alu_b_mux|sel_out[8]~20_combout\) # (\add_instance|alu_b_mux|sel_out[15]~35_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|rf|Mux0~0_combout\,
	datac => \add_instance|alu_b_mux|sel_out[8]~20_combout\,
	datad => \add_instance|alu_b_mux|sel_out[15]~35_combout\,
	combout => \add_instance|main_alu|result~29_combout\);

-- Location: LCCOMB_X19_Y21_N20
\add_instance|main_alu|sum~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|sum~6_combout\ = \add_instance|main_alu|result~29_combout\ $ (((\add_instance|rf|Mux1~0_combout\ & ((\add_instance|alu_b_mux|sel_out[14]~34_combout\) # (\add_instance|main_alu|carry~14_combout\))) # 
-- (!\add_instance|rf|Mux1~0_combout\ & (\add_instance|alu_b_mux|sel_out[14]~34_combout\ & \add_instance|main_alu|carry~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|main_alu|result~29_combout\,
	datab => \add_instance|rf|Mux1~0_combout\,
	datac => \add_instance|alu_b_mux|sel_out[14]~34_combout\,
	datad => \add_instance|main_alu|carry~14_combout\,
	combout => \add_instance|main_alu|sum~6_combout\);

-- Location: LCCOMB_X19_Y18_N8
\add_instance|alu_b_mux|sel_out[15]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[15]~36_combout\ = (\add_instance|alu_b_mux|sel_out[8]~20_combout\) # (\add_instance|alu_b_mux|sel_out[15]~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[8]~20_combout\,
	datad => \add_instance|alu_b_mux|sel_out[15]~35_combout\,
	combout => \add_instance|alu_b_mux|sel_out[15]~36_combout\);

-- Location: LCCOMB_X19_Y18_N18
\add_instance|main_alu|C[15]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[15]~29_combout\ = (\add_instance|control_unit|Mux14~0_combout\ & (((\add_instance|control_unit|Mux15~0_combout\)))) # (!\add_instance|control_unit|Mux14~0_combout\ & (\add_instance|rf|Mux0~0_combout\ $ 
-- (((\add_instance|alu_b_mux|sel_out[15]~36_combout\ & !\add_instance|control_unit|Mux15~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[15]~36_combout\,
	datab => \add_instance|rf|Mux0~0_combout\,
	datac => \add_instance|control_unit|Mux15~0_combout\,
	datad => \add_instance|control_unit|Mux14~0_combout\,
	combout => \add_instance|main_alu|C[15]~29_combout\);

-- Location: LCCOMB_X19_Y18_N2
\add_instance|main_alu|C[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[15]~30_combout\ = (\add_instance|control_unit|Mux14~0_combout\ & ((\add_instance|main_alu|C[15]~29_combout\ & (!\add_instance|main_alu|result~30_combout\)) # (!\add_instance|main_alu|C[15]~29_combout\ & 
-- ((\add_instance|main_alu|sum~6_combout\))))) # (!\add_instance|control_unit|Mux14~0_combout\ & (((\add_instance|main_alu|C[15]~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|main_alu|result~30_combout\,
	datab => \add_instance|control_unit|Mux14~0_combout\,
	datac => \add_instance|main_alu|sum~6_combout\,
	datad => \add_instance|main_alu|C[15]~29_combout\,
	combout => \add_instance|main_alu|C[15]~30_combout\);

-- Location: LCCOMB_X19_Y22_N4
\add_instance|adder|sum~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|adder|sum~14_combout\ = \add_instance|rf|RF[7][15]~q\ $ (((\add_instance|rf|RF[7][14]~q\ & (!\add_instance|pc_plus_imm_mux|sel_out[7]~2_combout\ & \add_instance|adder|carry~9_combout\)) # (!\add_instance|rf|RF[7][14]~q\ & 
-- (\add_instance|pc_plus_imm_mux|sel_out[7]~2_combout\ & !\add_instance|adder|carry~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001010110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][14]~q\,
	datab => \add_instance|pc_plus_imm_mux|sel_out[7]~2_combout\,
	datac => \add_instance|rf|RF[7][15]~q\,
	datad => \add_instance|adder|carry~9_combout\,
	combout => \add_instance|adder|sum~14_combout\);

-- Location: LCCOMB_X19_Y22_N10
\add_instance|pc_final_mux|sel_out[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|pc_final_mux|sel_out[15]~30_combout\ = (\add_instance|control_unit|Mux12~0_combout\ & (((\add_instance|control_unit|Mux13~0_combout\)))) # (!\add_instance|control_unit|Mux12~0_combout\ & ((\add_instance|control_unit|Mux13~0_combout\ & 
-- ((\add_instance|adder|sum~14_combout\))) # (!\add_instance|control_unit|Mux13~0_combout\ & (\add_instance|incrementer|sum~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux12~0_combout\,
	datab => \add_instance|incrementer|sum~14_combout\,
	datac => \add_instance|adder|sum~14_combout\,
	datad => \add_instance|control_unit|Mux13~0_combout\,
	combout => \add_instance|pc_final_mux|sel_out[15]~30_combout\);

-- Location: LCCOMB_X19_Y22_N26
\add_instance|pc_final_mux|sel_out[15]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|pc_final_mux|sel_out[15]~31_combout\ = (\add_instance|control_unit|Mux12~0_combout\ & ((\add_instance|pc_final_mux|sel_out[15]~30_combout\ & ((\add_instance|main_alu|C[15]~30_combout\))) # (!\add_instance|pc_final_mux|sel_out[15]~30_combout\ 
-- & (\add_instance|rf|Mux16~2_combout\)))) # (!\add_instance|control_unit|Mux12~0_combout\ & (((\add_instance|pc_final_mux|sel_out[15]~30_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux12~0_combout\,
	datab => \add_instance|rf|Mux16~2_combout\,
	datac => \add_instance|main_alu|C[15]~30_combout\,
	datad => \add_instance|pc_final_mux|sel_out[15]~30_combout\,
	combout => \add_instance|pc_final_mux|sel_out[15]~31_combout\);

-- Location: FF_X19_Y22_N27
\add_instance|rf|RF[7][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|pc_final_mux|sel_out[15]~31_combout\,
	clrn => \ALT_INV_input_vector[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[7][15]~q\);

-- Location: LCCOMB_X19_Y22_N8
\add_instance|incrementer|sum~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|incrementer|sum~14_combout\ = \add_instance|rf|RF[7][15]~q\ $ (((\add_instance|rf|RF[7][14]~q\ & (\add_instance|rf|RF[7][13]~q\ & \add_instance|incrementer|carry~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][14]~q\,
	datab => \add_instance|rf|RF[7][13]~q\,
	datac => \add_instance|rf|RF[7][15]~q\,
	datad => \add_instance|incrementer|carry~3_combout\,
	combout => \add_instance|incrementer|sum~14_combout\);

-- Location: LCCOMB_X19_Y18_N16
\add_instance|rf_d3_mux|sel_out[15]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_d3_mux|sel_out[15]~27_combout\ = (\add_instance|control_unit|Mux7~0_combout\ & ((\add_instance|rf_d3_mux|sel_out[4]~29_combout\ & (\add_instance|rom_unit|rom_data~2062_combout\)) # (!\add_instance|rf_d3_mux|sel_out[4]~29_combout\ & 
-- ((\add_instance|main_alu|C[15]~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux7~0_combout\,
	datab => \add_instance|rom_unit|rom_data~2062_combout\,
	datac => \add_instance|rf_d3_mux|sel_out[4]~29_combout\,
	datad => \add_instance|main_alu|C[15]~30_combout\,
	combout => \add_instance|rf_d3_mux|sel_out[15]~27_combout\);

-- Location: LCCOMB_X19_Y18_N22
\add_instance|rf_d3_mux|sel_out[15]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_d3_mux|sel_out[15]~28_combout\ = (\add_instance|rf_d3_mux|sel_out[15]~27_combout\) # ((!\add_instance|control_unit|Mux7~0_combout\ & \add_instance|incrementer|sum~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux7~0_combout\,
	datac => \add_instance|incrementer|sum~14_combout\,
	datad => \add_instance|rf_d3_mux|sel_out[15]~27_combout\,
	combout => \add_instance|rf_d3_mux|sel_out[15]~28_combout\);

-- Location: FF_X19_Y18_N5
\add_instance|rf|RF[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[15]~28_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[0][15]~q\);

-- Location: LCCOMB_X18_Y18_N6
\add_instance|rf|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux0~0_combout\ = (\add_instance|rom_unit|rom_data~2063_combout\ & ((\add_instance|rf|RF[1][15]~q\))) # (!\add_instance|rom_unit|rom_data~2063_combout\ & (\add_instance|rf|RF[0][15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[0][15]~q\,
	datab => \add_instance|rf|RF[1][15]~q\,
	datad => \add_instance|rom_unit|rom_data~2063_combout\,
	combout => \add_instance|rf|Mux0~0_combout\);

-- Location: LCCOMB_X19_Y18_N6
\add_instance|main_alu|zero_check~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|zero_check~5_combout\ = (\add_instance|rf|Mux3~0_combout\) # ((\add_instance|rf|Mux1~0_combout\) # ((\add_instance|rf|Mux0~0_combout\) # (\add_instance|rf|Mux2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux3~0_combout\,
	datab => \add_instance|rf|Mux1~0_combout\,
	datac => \add_instance|rf|Mux0~0_combout\,
	datad => \add_instance|rf|Mux2~0_combout\,
	combout => \add_instance|main_alu|zero_check~5_combout\);

-- Location: LCCOMB_X18_Y18_N2
\add_instance|main_alu|zero_check~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|zero_check~6_combout\ = (\add_instance|main_alu|zero_check~2_combout\) # ((\add_instance|main_alu|zero_check~4_combout\) # ((\add_instance|main_alu|zero_check~3_combout\) # (\add_instance|main_alu|zero_check~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|main_alu|zero_check~2_combout\,
	datab => \add_instance|main_alu|zero_check~4_combout\,
	datac => \add_instance|main_alu|zero_check~3_combout\,
	datad => \add_instance|main_alu|zero_check~5_combout\,
	combout => \add_instance|main_alu|zero_check~6_combout\);

-- Location: LCCOMB_X19_Y18_N30
\add_instance|main_alu|result~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|result~31_combout\ = (\add_instance|rf|Mux1~0_combout\ & ((\add_instance|alu_b_mux|sel_out[8]~20_combout\) # (\add_instance|alu_b_mux|sel_out[14]~33_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[8]~20_combout\,
	datab => \add_instance|rf|Mux1~0_combout\,
	datad => \add_instance|alu_b_mux|sel_out[14]~33_combout\,
	combout => \add_instance|main_alu|result~31_combout\);

-- Location: LCCOMB_X19_Y18_N0
\add_instance|main_alu|zero_check~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|zero_check~26_combout\ = (((!\add_instance|main_alu|result~36_combout\) # (!\add_instance|main_alu|result~39_combout\)) # (!\add_instance|main_alu|result~38_combout\)) # (!\add_instance|rf|Mux14~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux14~0_combout\,
	datab => \add_instance|main_alu|result~38_combout\,
	datac => \add_instance|main_alu|result~39_combout\,
	datad => \add_instance|main_alu|result~36_combout\,
	combout => \add_instance|main_alu|zero_check~26_combout\);

-- Location: LCCOMB_X19_Y18_N10
\add_instance|main_alu|zero_check~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|zero_check~27_combout\ = (((\add_instance|main_alu|zero_check~26_combout\) # (!\add_instance|main_alu|result~31_combout\)) # (!\add_instance|main_alu|result~18_combout\)) # (!\add_instance|main_alu|result~17_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|main_alu|result~17_combout\,
	datab => \add_instance|main_alu|result~18_combout\,
	datac => \add_instance|main_alu|result~31_combout\,
	datad => \add_instance|main_alu|zero_check~26_combout\,
	combout => \add_instance|main_alu|zero_check~27_combout\);

-- Location: LCCOMB_X18_Y23_N10
\add_instance|main_alu|zero_check~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|zero_check~23_combout\ = (((!\add_instance|alu_b_mux|sel_out[8]~20_combout\ & !\add_instance|alu_b_mux|sel_out[11]~27_combout\)) # (!\add_instance|main_alu|result~23_combout\)) # (!\add_instance|rf|Mux4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[8]~20_combout\,
	datab => \add_instance|alu_b_mux|sel_out[11]~27_combout\,
	datac => \add_instance|rf|Mux4~0_combout\,
	datad => \add_instance|main_alu|result~23_combout\,
	combout => \add_instance|main_alu|zero_check~23_combout\);

-- Location: LCCOMB_X19_Y21_N10
\add_instance|main_alu|zero_check~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|zero_check~24_combout\ = (((!\add_instance|main_alu|result~26_combout\) # (!\add_instance|main_alu|result~32_combout\)) # (!\add_instance|main_alu|result~27_combout\)) # (!\add_instance|main_alu|result~35_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|main_alu|result~35_combout\,
	datab => \add_instance|main_alu|result~27_combout\,
	datac => \add_instance|main_alu|result~32_combout\,
	datad => \add_instance|main_alu|result~26_combout\,
	combout => \add_instance|main_alu|zero_check~24_combout\);

-- Location: LCCOMB_X21_Y21_N10
\add_instance|main_alu|zero_check~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|zero_check~25_combout\ = (((\add_instance|main_alu|zero_check~23_combout\) # (\add_instance|main_alu|zero_check~24_combout\)) # (!\add_instance|main_alu|result~20_combout\)) # (!\add_instance|main_alu|result~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|main_alu|result~21_combout\,
	datab => \add_instance|main_alu|result~20_combout\,
	datac => \add_instance|main_alu|zero_check~23_combout\,
	datad => \add_instance|main_alu|zero_check~24_combout\,
	combout => \add_instance|main_alu|zero_check~25_combout\);

-- Location: LCCOMB_X21_Y21_N16
\add_instance|main_alu|zero_check~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|zero_check~28_combout\ = (((\add_instance|main_alu|zero_check~27_combout\) # (\add_instance|main_alu|zero_check~25_combout\)) # (!\add_instance|alu_b_mux|sel_out[1]~9_combout\)) # (!\add_instance|main_alu|result~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|main_alu|result~30_combout\,
	datab => \add_instance|alu_b_mux|sel_out[1]~9_combout\,
	datac => \add_instance|main_alu|zero_check~27_combout\,
	datad => \add_instance|main_alu|zero_check~25_combout\,
	combout => \add_instance|main_alu|zero_check~28_combout\);

-- Location: LCCOMB_X19_Y20_N22
\add_instance|main_alu|result~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|result~16_combout\ = \add_instance|rf|Mux11~0_combout\ $ (((\add_instance|alu_b_mux|sel_out[4]~14_combout\) # ((\add_instance|rf|Mux27~2_combout\ & !\add_instance|alu_b_mux|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110111110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux27~2_combout\,
	datab => \add_instance|alu_b_mux|Equal0~0_combout\,
	datac => \add_instance|alu_b_mux|sel_out[4]~14_combout\,
	datad => \add_instance|rf|Mux11~0_combout\,
	combout => \add_instance|main_alu|result~16_combout\);

-- Location: LCCOMB_X17_Y18_N30
\add_instance|main_alu|result~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|result~34_combout\ = \add_instance|alu_b_mux|sel_out[2]~11_combout\ $ (((\add_instance|rom_unit|rom_data~2063_combout\ & ((\add_instance|rf|RF[1][2]~q\))) # (!\add_instance|rom_unit|rom_data~2063_combout\ & 
-- (\add_instance|rf|RF[0][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[0][2]~q\,
	datab => \add_instance|rom_unit|rom_data~2063_combout\,
	datac => \add_instance|rf|RF[1][2]~q\,
	datad => \add_instance|alu_b_mux|sel_out[2]~11_combout\,
	combout => \add_instance|main_alu|result~34_combout\);

-- Location: LCCOMB_X19_Y20_N20
\add_instance|main_alu|zero_check~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|zero_check~19_combout\ = (\add_instance|main_alu|result~34_combout\) # ((\add_instance|main_alu|result~37_combout\) # (\add_instance|rf|Mux8~0_combout\ $ (\add_instance|alu_b_mux|sel_out[7]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|main_alu|result~34_combout\,
	datab => \add_instance|rf|Mux8~0_combout\,
	datac => \add_instance|alu_b_mux|sel_out[7]~19_combout\,
	datad => \add_instance|main_alu|result~37_combout\,
	combout => \add_instance|main_alu|zero_check~19_combout\);

-- Location: LCCOMB_X18_Y18_N28
\add_instance|main_alu|zero_check~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|zero_check~20_combout\ = (\add_instance|main_alu|zero_check~19_combout\) # (\add_instance|rf|Mux12~0_combout\ $ (\add_instance|alu_b_mux|sel_out[3]~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|rf|Mux12~0_combout\,
	datac => \add_instance|alu_b_mux|sel_out[3]~13_combout\,
	datad => \add_instance|main_alu|zero_check~19_combout\,
	combout => \add_instance|main_alu|zero_check~20_combout\);

-- Location: LCCOMB_X18_Y18_N10
\add_instance|main_alu|zero_check~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|zero_check~21_combout\ = (\add_instance|main_alu|result~16_combout\) # ((\add_instance|main_alu|zero_check~20_combout\) # (\add_instance|alu_b_mux|sel_out[5]~39_combout\ $ (\add_instance|rf|Mux10~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[5]~39_combout\,
	datab => \add_instance|rf|Mux10~0_combout\,
	datac => \add_instance|main_alu|result~16_combout\,
	datad => \add_instance|main_alu|zero_check~20_combout\,
	combout => \add_instance|main_alu|zero_check~21_combout\);

-- Location: LCCOMB_X17_Y21_N12
\add_instance|main_alu|zero_check~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|zero_check~16_combout\ = (\add_instance|alu_b_mux|sel_out[1]~9_combout\ & ((\add_instance|alu_b_mux|sel_out[0]~37_combout\ $ (\add_instance|rf|Mux15~0_combout\)) # (!\add_instance|rf|Mux14~0_combout\))) # 
-- (!\add_instance|alu_b_mux|sel_out[1]~9_combout\ & ((\add_instance|rf|Mux14~0_combout\) # (\add_instance|alu_b_mux|sel_out[0]~37_combout\ $ (\add_instance|rf|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101111011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[1]~9_combout\,
	datab => \add_instance|alu_b_mux|sel_out[0]~37_combout\,
	datac => \add_instance|rf|Mux14~0_combout\,
	datad => \add_instance|rf|Mux15~0_combout\,
	combout => \add_instance|main_alu|zero_check~16_combout\);

-- Location: LCCOMB_X19_Y21_N0
\add_instance|main_alu|zero_check~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|zero_check~17_combout\ = (\add_instance|main_alu|zero_check~16_combout\) # ((\add_instance|main_alu|result~25_combout\) # (\add_instance|rf|Mux2~0_combout\ $ (\add_instance|alu_b_mux|sel_out[13]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux2~0_combout\,
	datab => \add_instance|alu_b_mux|sel_out[13]~32_combout\,
	datac => \add_instance|main_alu|zero_check~16_combout\,
	datad => \add_instance|main_alu|result~25_combout\,
	combout => \add_instance|main_alu|zero_check~17_combout\);

-- Location: LCCOMB_X17_Y21_N20
\add_instance|main_alu|zero_check~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|zero_check~29_combout\ = (\add_instance|main_alu|result~19_combout\) # (\add_instance|rf|Mux6~0_combout\ $ (((\add_instance|alu_b_mux|sel_out[8]~20_combout\) # (\add_instance|alu_b_mux|sel_out[9]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[8]~20_combout\,
	datab => \add_instance|main_alu|result~19_combout\,
	datac => \add_instance|alu_b_mux|sel_out[9]~23_combout\,
	datad => \add_instance|rf|Mux6~0_combout\,
	combout => \add_instance|main_alu|zero_check~29_combout\);

-- Location: LCCOMB_X18_Y23_N20
\add_instance|main_alu|zero_check~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|zero_check~15_combout\ = (\add_instance|main_alu|zero_check~29_combout\) # ((\add_instance|main_alu|result~22_combout\) # (\add_instance|alu_b_mux|sel_out[11]~28_combout\ $ (\add_instance|rf|Mux4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[11]~28_combout\,
	datab => \add_instance|rf|Mux4~0_combout\,
	datac => \add_instance|main_alu|zero_check~29_combout\,
	datad => \add_instance|main_alu|result~22_combout\,
	combout => \add_instance|main_alu|zero_check~15_combout\);

-- Location: LCCOMB_X19_Y21_N18
\add_instance|main_alu|zero_check~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|zero_check~18_combout\ = (\add_instance|main_alu|zero_check~17_combout\) # (\add_instance|main_alu|zero_check~15_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|main_alu|zero_check~17_combout\,
	datad => \add_instance|main_alu|zero_check~15_combout\,
	combout => \add_instance|main_alu|zero_check~18_combout\);

-- Location: LCCOMB_X19_Y21_N24
\add_instance|main_alu|zero_check~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|zero_check~22_combout\ = (\add_instance|main_alu|result~28_combout\) # ((\add_instance|main_alu|zero_check~21_combout\) # ((\add_instance|main_alu|result~29_combout\) # (\add_instance|main_alu|zero_check~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|main_alu|result~28_combout\,
	datab => \add_instance|main_alu|zero_check~21_combout\,
	datac => \add_instance|main_alu|result~29_combout\,
	datad => \add_instance|main_alu|zero_check~18_combout\,
	combout => \add_instance|main_alu|zero_check~22_combout\);

-- Location: LCCOMB_X17_Y21_N6
\add_instance|main_alu|zero_check~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|zero_check~10_combout\ = (\add_instance|main_alu|sum~1_combout\) # ((\add_instance|main_alu|sum~3_combout\) # ((\add_instance|main_alu|sum~0_combout\) # (\add_instance|main_alu|sum~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|main_alu|sum~1_combout\,
	datab => \add_instance|main_alu|sum~3_combout\,
	datac => \add_instance|main_alu|sum~0_combout\,
	datad => \add_instance|main_alu|sum~4_combout\,
	combout => \add_instance|main_alu|zero_check~10_combout\);

-- Location: LCCOMB_X17_Y21_N16
\add_instance|main_alu|zero_check~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|zero_check~7_combout\ = (\add_instance|main_alu|carry~8_combout\ & ((\add_instance|rf|Mux15~0_combout\ $ (\add_instance|alu_b_mux|sel_out[0]~37_combout\)) # (!\add_instance|main_alu|result~19_combout\))) # 
-- (!\add_instance|main_alu|carry~8_combout\ & ((\add_instance|main_alu|result~19_combout\) # (\add_instance|rf|Mux15~0_combout\ $ (\add_instance|alu_b_mux|sel_out[0]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|main_alu|carry~8_combout\,
	datab => \add_instance|rf|Mux15~0_combout\,
	datac => \add_instance|alu_b_mux|sel_out[0]~37_combout\,
	datad => \add_instance|main_alu|result~19_combout\,
	combout => \add_instance|main_alu|zero_check~7_combout\);

-- Location: LCCOMB_X19_Y20_N12
\add_instance|main_alu|sum~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|sum~7_combout\ = \add_instance|rf|Mux9~0_combout\ $ (\add_instance|main_alu|carry~6_combout\ $ (\add_instance|alu_b_mux|sel_out[6]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|rf|Mux9~0_combout\,
	datac => \add_instance|main_alu|carry~6_combout\,
	datad => \add_instance|alu_b_mux|sel_out[6]~17_combout\,
	combout => \add_instance|main_alu|sum~7_combout\);

-- Location: LCCOMB_X19_Y20_N2
\add_instance|main_alu|zero_check~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|zero_check~8_combout\ = (\add_instance|main_alu|sum~7_combout\) # ((\add_instance|main_alu|sum~2_combout\) # (\add_instance|main_alu|result~22_combout\ $ (\add_instance|main_alu|carry~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|main_alu|sum~7_combout\,
	datab => \add_instance|main_alu|sum~2_combout\,
	datac => \add_instance|main_alu|result~22_combout\,
	datad => \add_instance|main_alu|carry~10_combout\,
	combout => \add_instance|main_alu|zero_check~8_combout\);

-- Location: LCCOMB_X18_Y21_N26
\add_instance|main_alu|zero_check~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|zero_check~9_combout\ = (\add_instance|main_alu|zero_check~7_combout\) # ((\add_instance|main_alu|zero_check~8_combout\) # (\add_instance|main_alu|result~25_combout\ $ (\add_instance|main_alu|carry~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|main_alu|result~25_combout\,
	datab => \add_instance|main_alu|carry~12_combout\,
	datac => \add_instance|main_alu|zero_check~7_combout\,
	datad => \add_instance|main_alu|zero_check~8_combout\,
	combout => \add_instance|main_alu|zero_check~9_combout\);

-- Location: LCCOMB_X17_Y18_N12
\add_instance|main_alu|zero_check~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|zero_check~11_combout\ = (\add_instance|main_alu|result~32_combout\ & ((\add_instance|main_alu|carry~2_combout\ $ (\add_instance|main_alu|result~34_combout\)) # (!\add_instance|main_alu|result~33_combout\))) # 
-- (!\add_instance|main_alu|result~32_combout\ & ((\add_instance|main_alu|result~33_combout\) # (\add_instance|main_alu|carry~2_combout\ $ (\add_instance|main_alu|result~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|main_alu|result~32_combout\,
	datab => \add_instance|main_alu|result~33_combout\,
	datac => \add_instance|main_alu|carry~2_combout\,
	datad => \add_instance|main_alu|result~34_combout\,
	combout => \add_instance|main_alu|zero_check~11_combout\);

-- Location: LCCOMB_X19_Y21_N2
\add_instance|main_alu|zero_check~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|zero_check~12_combout\ = (\add_instance|main_alu|result~28_combout\ & ((\add_instance|main_alu|result~16_combout\ $ (\add_instance|main_alu|carry~4_combout\)) # (!\add_instance|main_alu|carry~14_combout\))) # 
-- (!\add_instance|main_alu|result~28_combout\ & ((\add_instance|main_alu|carry~14_combout\) # (\add_instance|main_alu|result~16_combout\ $ (\add_instance|main_alu|carry~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110110111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|main_alu|result~28_combout\,
	datab => \add_instance|main_alu|result~16_combout\,
	datac => \add_instance|main_alu|carry~4_combout\,
	datad => \add_instance|main_alu|carry~14_combout\,
	combout => \add_instance|main_alu|zero_check~12_combout\);

-- Location: LCCOMB_X18_Y21_N28
\add_instance|main_alu|zero_check~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|zero_check~13_combout\ = (\add_instance|main_alu|zero_check~11_combout\) # ((\add_instance|main_alu|sum~5_combout\) # ((\add_instance|main_alu|sum~6_combout\) # (\add_instance|main_alu|zero_check~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|main_alu|zero_check~11_combout\,
	datab => \add_instance|main_alu|sum~5_combout\,
	datac => \add_instance|main_alu|sum~6_combout\,
	datad => \add_instance|main_alu|zero_check~12_combout\,
	combout => \add_instance|main_alu|zero_check~13_combout\);

-- Location: LCCOMB_X18_Y21_N18
\add_instance|main_alu|zero_check~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|zero_check~14_combout\ = (\add_instance|main_alu|zero_check~10_combout\) # ((\add_instance|main_alu|zero_check~9_combout\) # (\add_instance|main_alu|zero_check~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|main_alu|zero_check~10_combout\,
	datac => \add_instance|main_alu|zero_check~9_combout\,
	datad => \add_instance|main_alu|zero_check~13_combout\,
	combout => \add_instance|main_alu|zero_check~14_combout\);

-- Location: LCCOMB_X18_Y21_N12
\add_instance|main_alu|control_out[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|control_out[1]~0_combout\ = (\add_instance|control_unit|Mux15~0_combout\ & (((\add_instance|control_unit|Mux14~0_combout\)))) # (!\add_instance|control_unit|Mux15~0_combout\ & ((\add_instance|control_unit|Mux14~0_combout\ & 
-- ((!\add_instance|main_alu|zero_check~14_combout\))) # (!\add_instance|control_unit|Mux14~0_combout\ & (!\add_instance|main_alu|zero_check~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux15~0_combout\,
	datab => \add_instance|main_alu|zero_check~22_combout\,
	datac => \add_instance|control_unit|Mux14~0_combout\,
	datad => \add_instance|main_alu|zero_check~14_combout\,
	combout => \add_instance|main_alu|control_out[1]~0_combout\);

-- Location: LCCOMB_X18_Y21_N10
\add_instance|main_alu|control_out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|control_out[1]~1_combout\ = (\add_instance|control_unit|Mux15~0_combout\ & ((\add_instance|main_alu|control_out[1]~0_combout\ & ((!\add_instance|main_alu|zero_check~28_combout\))) # (!\add_instance|main_alu|control_out[1]~0_combout\ 
-- & (!\add_instance|main_alu|zero_check~6_combout\)))) # (!\add_instance|control_unit|Mux15~0_combout\ & (((\add_instance|main_alu|control_out[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux15~0_combout\,
	datab => \add_instance|main_alu|zero_check~6_combout\,
	datac => \add_instance|main_alu|zero_check~28_combout\,
	datad => \add_instance|main_alu|control_out[1]~0_combout\,
	combout => \add_instance|main_alu|control_out[1]~1_combout\);

-- Location: LCCOMB_X18_Y21_N4
\add_instance|control_unit|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|control_unit|Mux13~0_combout\ = (\add_instance|rom_unit|rom_data~2062_combout\ & ((\add_instance|rom_unit|rom_data~2068_combout\) # ((!\add_instance|rom_unit|rom_data~2069_combout\ & \add_instance|main_alu|control_out[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rom_unit|rom_data~2062_combout\,
	datab => \add_instance|rom_unit|rom_data~2069_combout\,
	datac => \add_instance|rom_unit|rom_data~2068_combout\,
	datad => \add_instance|main_alu|control_out[1]~1_combout\,
	combout => \add_instance|control_unit|Mux13~0_combout\);

-- Location: LCCOMB_X17_Y19_N24
\add_instance|pc_final_mux|sel_out[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|pc_final_mux|sel_out[3]~6_combout\ = (\add_instance|control_unit|Mux12~0_combout\ & (((\add_instance|control_unit|Mux13~0_combout\)))) # (!\add_instance|control_unit|Mux12~0_combout\ & ((\add_instance|control_unit|Mux13~0_combout\ & 
-- ((\add_instance|adder|sum~2_combout\))) # (!\add_instance|control_unit|Mux13~0_combout\ & (\add_instance|incrementer|sum~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|incrementer|sum~2_combout\,
	datab => \add_instance|control_unit|Mux12~0_combout\,
	datac => \add_instance|adder|sum~2_combout\,
	datad => \add_instance|control_unit|Mux13~0_combout\,
	combout => \add_instance|pc_final_mux|sel_out[3]~6_combout\);

-- Location: LCCOMB_X17_Y19_N0
\add_instance|pc_final_mux|sel_out[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|pc_final_mux|sel_out[3]~7_combout\ = (\add_instance|control_unit|Mux12~0_combout\ & ((\add_instance|pc_final_mux|sel_out[3]~6_combout\ & (\add_instance|main_alu|C[3]~6_combout\)) # (!\add_instance|pc_final_mux|sel_out[3]~6_combout\ & 
-- ((\add_instance|rf|Mux28~3_combout\))))) # (!\add_instance|control_unit|Mux12~0_combout\ & (((\add_instance|pc_final_mux|sel_out[3]~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|main_alu|C[3]~6_combout\,
	datab => \add_instance|control_unit|Mux12~0_combout\,
	datac => \add_instance|rf|Mux28~3_combout\,
	datad => \add_instance|pc_final_mux|sel_out[3]~6_combout\,
	combout => \add_instance|pc_final_mux|sel_out[3]~7_combout\);

-- Location: FF_X17_Y19_N1
\add_instance|rf|RF[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|pc_final_mux|sel_out[3]~7_combout\,
	clrn => \ALT_INV_input_vector[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[7][3]~q\);

-- Location: LCCOMB_X17_Y20_N16
\add_instance|rom_unit|rom_data~2059\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rom_unit|rom_data~2059_combout\ = (\add_instance|rf|RF[7][3]~q\) # ((\add_instance|rf|RF[7][1]~q\ & ((\add_instance|rf|RF[7][2]~q\) # (\add_instance|rf|RF[7][0]~q\))) # (!\add_instance|rf|RF[7][1]~q\ & (\add_instance|rf|RF[7][2]~q\ & 
-- \add_instance|rf|RF[7][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][1]~q\,
	datab => \add_instance|rf|RF[7][3]~q\,
	datac => \add_instance|rf|RF[7][2]~q\,
	datad => \add_instance|rf|RF[7][0]~q\,
	combout => \add_instance|rom_unit|rom_data~2059_combout\);

-- Location: LCCOMB_X16_Y19_N10
\add_instance|rf_a3_mux|sel_out[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_a3_mux|sel_out[2]~1_combout\ = (\add_instance|rom_unit|rom_data~2060_combout\ & ((\add_instance|rom_unit|rom_data~2058_combout\ & (\add_instance|rom_unit|rom_data~2059_combout\ $ (\add_instance|rom_unit|rom_data~2062_combout\))) # 
-- (!\add_instance|rom_unit|rom_data~2058_combout\ & ((\add_instance|rom_unit|rom_data~2062_combout\) # (!\add_instance|rom_unit|rom_data~2059_combout\))))) # (!\add_instance|rom_unit|rom_data~2060_combout\ & 
-- (((!\add_instance|rom_unit|rom_data~2062_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rom_unit|rom_data~2058_combout\,
	datab => \add_instance|rom_unit|rom_data~2060_combout\,
	datac => \add_instance|rom_unit|rom_data~2059_combout\,
	datad => \add_instance|rom_unit|rom_data~2062_combout\,
	combout => \add_instance|rf_a3_mux|sel_out[2]~1_combout\);

-- Location: LCCOMB_X16_Y19_N4
\add_instance|rf|Decoder0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Decoder0~27_combout\ = (\add_instance|rf|Decoder0~24_combout\ & ((\add_instance|rf_a3_mux|sel_out[2]~1_combout\ & ((\add_instance|rf_a3_mux|sel_out[0]~0_combout\))) # (!\add_instance|rf_a3_mux|sel_out[2]~1_combout\ & 
-- (\add_instance|rom_unit|rom_data~2072_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf_a3_mux|sel_out[2]~1_combout\,
	datab => \add_instance|rf|Decoder0~24_combout\,
	datac => \add_instance|rom_unit|rom_data~2072_combout\,
	datad => \add_instance|rf_a3_mux|sel_out[0]~0_combout\,
	combout => \add_instance|rf|Decoder0~27_combout\);

-- Location: FF_X17_Y18_N17
\add_instance|rf|RF[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[0]~8_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[1][0]~q\);

-- Location: FF_X18_Y19_N23
\add_instance|rf|RF[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[0]~8_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[3][0]~q\);

-- Location: LCCOMB_X17_Y21_N0
\add_instance|rf|Mux31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux31~4_combout\ = (\add_instance|rf|RF[7][2]~q\ & (\add_instance|rom_unit|rom_data~2061_combout\ & (!\add_instance|rf|RF[7][0]~q\ & !\add_instance|rf|RF[7][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][2]~q\,
	datab => \add_instance|rom_unit|rom_data~2061_combout\,
	datac => \add_instance|rf|RF[7][0]~q\,
	datad => \add_instance|rf|RF[7][1]~q\,
	combout => \add_instance|rf|Mux31~4_combout\);

-- Location: FF_X18_Y19_N29
\add_instance|rf|RF[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[0]~8_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~29_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[2][0]~q\);

-- Location: LCCOMB_X18_Y19_N28
\add_instance|rf|Mux31~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux31~5_combout\ = (\add_instance|rf|Mux31~4_combout\ & (((\add_instance|rf|RF[2][0]~q\) # (\add_instance|rom_unit|rom_data~2071_combout\)))) # (!\add_instance|rf|Mux31~4_combout\ & (\add_instance|rf|RF[0][0]~q\ & 
-- ((!\add_instance|rom_unit|rom_data~2071_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux31~4_combout\,
	datab => \add_instance|rf|RF[0][0]~q\,
	datac => \add_instance|rf|RF[2][0]~q\,
	datad => \add_instance|rom_unit|rom_data~2071_combout\,
	combout => \add_instance|rf|Mux31~5_combout\);

-- Location: LCCOMB_X18_Y19_N22
\add_instance|rf|Mux31~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux31~6_combout\ = (\add_instance|rom_unit|rom_data~2071_combout\ & ((\add_instance|rf|Mux31~5_combout\ & ((\add_instance|rf|RF[3][0]~q\))) # (!\add_instance|rf|Mux31~5_combout\ & (\add_instance|rf|RF[1][0]~q\)))) # 
-- (!\add_instance|rom_unit|rom_data~2071_combout\ & (((\add_instance|rf|Mux31~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[1][0]~q\,
	datab => \add_instance|rom_unit|rom_data~2071_combout\,
	datac => \add_instance|rf|RF[3][0]~q\,
	datad => \add_instance|rf|Mux31~5_combout\,
	combout => \add_instance|rf|Mux31~6_combout\);

-- Location: FF_X16_Y19_N9
\add_instance|rf|RF[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[0]~8_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[5][0]~q\);

-- Location: LCCOMB_X16_Y19_N8
\add_instance|rf|Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux31~3_combout\ = (\add_instance|rom_unit|rom_data~2071_combout\ & ((\add_instance|rf|Mux31~2_combout\ & (\add_instance|rf|RF[7][0]~q\)) # (!\add_instance|rf|Mux31~2_combout\ & ((\add_instance|rf|RF[5][0]~q\))))) # 
-- (!\add_instance|rom_unit|rom_data~2071_combout\ & (((\add_instance|rf|Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rom_unit|rom_data~2071_combout\,
	datab => \add_instance|rf|RF[7][0]~q\,
	datac => \add_instance|rf|RF[5][0]~q\,
	datad => \add_instance|rf|Mux31~2_combout\,
	combout => \add_instance|rf|Mux31~3_combout\);

-- Location: LCCOMB_X18_Y19_N20
\add_instance|rf|Mux31~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux31~7_combout\ = (\add_instance|rom_unit|rom_data~2062_combout\ & ((\add_instance|rf|Mux31~3_combout\))) # (!\add_instance|rom_unit|rom_data~2062_combout\ & (\add_instance|rf|Mux31~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|rom_unit|rom_data~2062_combout\,
	datac => \add_instance|rf|Mux31~6_combout\,
	datad => \add_instance|rf|Mux31~3_combout\,
	combout => \add_instance|rf|Mux31~7_combout\);

-- Location: LCCOMB_X18_Y21_N22
\add_instance|pc_final_mux|sel_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|pc_final_mux|sel_out[0]~0_combout\ = (\add_instance|control_unit|Mux13~0_combout\ & (((\add_instance|control_unit|Mux12~0_combout\)))) # (!\add_instance|control_unit|Mux13~0_combout\ & ((\add_instance|control_unit|Mux12~0_combout\ & 
-- (\add_instance|rf|Mux31~7_combout\)) # (!\add_instance|control_unit|Mux12~0_combout\ & ((!\add_instance|rf|RF[7][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux31~7_combout\,
	datab => \add_instance|control_unit|Mux13~0_combout\,
	datac => \add_instance|control_unit|Mux12~0_combout\,
	datad => \add_instance|rf|RF[7][0]~q\,
	combout => \add_instance|pc_final_mux|sel_out[0]~0_combout\);

-- Location: LCCOMB_X19_Y20_N4
\add_instance|main_alu|C[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[0]~0_combout\ = (\add_instance|control_unit|Mux15~0_combout\ & ((\add_instance|control_unit|Mux14~0_combout\ & ((!\add_instance|rf|Mux15~0_combout\) # (!\add_instance|alu_b_mux|sel_out[0]~37_combout\))) # 
-- (!\add_instance|control_unit|Mux14~0_combout\ & ((\add_instance|rf|Mux15~0_combout\))))) # (!\add_instance|control_unit|Mux15~0_combout\ & ((\add_instance|alu_b_mux|sel_out[0]~37_combout\ $ (\add_instance|rf|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111111011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux15~0_combout\,
	datab => \add_instance|control_unit|Mux14~0_combout\,
	datac => \add_instance|alu_b_mux|sel_out[0]~37_combout\,
	datad => \add_instance|rf|Mux15~0_combout\,
	combout => \add_instance|main_alu|C[0]~0_combout\);

-- Location: LCCOMB_X17_Y21_N14
\add_instance|adder|result~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|adder|result~0_combout\ = \add_instance|rf|RF[7][0]~q\ $ (((\add_instance|rom_unit|rom_data~2064_combout\) # (!\add_instance|rom_unit|rom_data~2060_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][0]~q\,
	datac => \add_instance|rom_unit|rom_data~2060_combout\,
	datad => \add_instance|rom_unit|rom_data~2064_combout\,
	combout => \add_instance|adder|result~0_combout\);

-- Location: LCCOMB_X18_Y21_N20
\add_instance|pc_final_mux|sel_out[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|pc_final_mux|sel_out[0]~1_combout\ = (\add_instance|pc_final_mux|sel_out[0]~0_combout\ & ((\add_instance|main_alu|C[0]~0_combout\) # ((!\add_instance|control_unit|Mux13~0_combout\)))) # (!\add_instance|pc_final_mux|sel_out[0]~0_combout\ & 
-- (((\add_instance|control_unit|Mux13~0_combout\ & !\add_instance|adder|result~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|pc_final_mux|sel_out[0]~0_combout\,
	datab => \add_instance|main_alu|C[0]~0_combout\,
	datac => \add_instance|control_unit|Mux13~0_combout\,
	datad => \add_instance|adder|result~0_combout\,
	combout => \add_instance|pc_final_mux|sel_out[0]~1_combout\);

-- Location: FF_X18_Y21_N21
\add_instance|rf|RF[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|pc_final_mux|sel_out[0]~1_combout\,
	clrn => \ALT_INV_input_vector[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[7][0]~q\);

-- Location: LCCOMB_X16_Y20_N20
\add_instance|incrementer|carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|incrementer|carry~0_combout\ = (\add_instance|rf|RF[7][2]~q\ & (\add_instance|rf|RF[7][1]~q\ & (\add_instance|rf|RF[7][0]~q\ & \add_instance|rf|RF[7][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][2]~q\,
	datab => \add_instance|rf|RF[7][1]~q\,
	datac => \add_instance|rf|RF[7][0]~q\,
	datad => \add_instance|rf|RF[7][3]~q\,
	combout => \add_instance|incrementer|carry~0_combout\);

-- Location: LCCOMB_X16_Y20_N10
\add_instance|incrementer|sum~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|incrementer|sum~3_combout\ = \add_instance|rf|RF[7][4]~q\ $ (\add_instance|incrementer|carry~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|rf|RF[7][4]~q\,
	datad => \add_instance|incrementer|carry~0_combout\,
	combout => \add_instance|incrementer|sum~3_combout\);

-- Location: LCCOMB_X16_Y20_N8
\add_instance|rf_d3_mux|sel_out[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_d3_mux|sel_out[4]~12_combout\ = (\add_instance|rf_d3_mux|sel_out[4]~29_combout\ & (\add_instance|incrementer|sum~3_combout\ & (!\add_instance|control_unit|Mux7~0_combout\))) # (!\add_instance|rf_d3_mux|sel_out[4]~29_combout\ & 
-- (((\add_instance|main_alu|C[4]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|incrementer|sum~3_combout\,
	datab => \add_instance|control_unit|Mux7~0_combout\,
	datac => \add_instance|rf_d3_mux|sel_out[4]~29_combout\,
	datad => \add_instance|main_alu|C[4]~8_combout\,
	combout => \add_instance|rf_d3_mux|sel_out[4]~12_combout\);

-- Location: FF_X18_Y20_N15
\add_instance|rf|RF[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[4]~12_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~27_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[1][4]~q\);

-- Location: LCCOMB_X17_Y18_N2
\add_instance|rf|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux11~0_combout\ = (\add_instance|rom_unit|rom_data~2063_combout\ & (\add_instance|rf|RF[1][4]~q\)) # (!\add_instance|rom_unit|rom_data~2063_combout\ & ((\add_instance|rf|RF[0][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|rf|RF[1][4]~q\,
	datac => \add_instance|rf|RF[0][4]~q\,
	datad => \add_instance|rom_unit|rom_data~2063_combout\,
	combout => \add_instance|rf|Mux11~0_combout\);

-- Location: LCCOMB_X19_Y20_N28
\add_instance|main_alu|C[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[4]~7_combout\ = (\add_instance|control_unit|Mux15~0_combout\ & (\add_instance|control_unit|Mux14~0_combout\)) # (!\add_instance|control_unit|Mux15~0_combout\ & (\add_instance|main_alu|result~16_combout\ $ 
-- (((\add_instance|control_unit|Mux14~0_combout\ & \add_instance|main_alu|carry~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux15~0_combout\,
	datab => \add_instance|control_unit|Mux14~0_combout\,
	datac => \add_instance|main_alu|result~16_combout\,
	datad => \add_instance|main_alu|carry~4_combout\,
	combout => \add_instance|main_alu|C[4]~7_combout\);

-- Location: LCCOMB_X18_Y20_N12
\add_instance|main_alu|C[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[4]~8_combout\ = (\add_instance|rf|Mux11~0_combout\ & ((\add_instance|control_unit|Mux15~0_combout\ & ((!\add_instance|main_alu|C[4]~7_combout\) # (!\add_instance|alu_b_mux|sel_out[4]~38_combout\))) # 
-- (!\add_instance|control_unit|Mux15~0_combout\ & ((\add_instance|main_alu|C[4]~7_combout\))))) # (!\add_instance|rf|Mux11~0_combout\ & (((\add_instance|main_alu|C[4]~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux11~0_combout\,
	datab => \add_instance|control_unit|Mux15~0_combout\,
	datac => \add_instance|alu_b_mux|sel_out[4]~38_combout\,
	datad => \add_instance|main_alu|C[4]~7_combout\,
	combout => \add_instance|main_alu|C[4]~8_combout\);

-- Location: LCCOMB_X16_Y20_N4
\add_instance|adder|carry~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|adder|carry~3_combout\ = (\add_instance|rf|RF[7][2]~q\ & ((\add_instance|rom_unit|rom_data~2072_combout\) # ((\add_instance|rf|RF[7][3]~q\ & \add_instance|adder|carry~2_combout\)))) # (!\add_instance|rf|RF[7][2]~q\ & 
-- (\add_instance|rom_unit|rom_data~2072_combout\ & ((\add_instance|rf|RF[7][3]~q\) # (\add_instance|adder|carry~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][2]~q\,
	datab => \add_instance|rf|RF[7][3]~q\,
	datac => \add_instance|rom_unit|rom_data~2072_combout\,
	datad => \add_instance|adder|carry~2_combout\,
	combout => \add_instance|adder|carry~3_combout\);

-- Location: LCCOMB_X16_Y20_N28
\add_instance|adder|sum~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|adder|sum~5_combout\ = \add_instance|rom_unit|rom_data~2071_combout\ $ (\add_instance|adder|carry~3_combout\ $ (\add_instance|rf|RF[7][4]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|rom_unit|rom_data~2071_combout\,
	datac => \add_instance|adder|carry~3_combout\,
	datad => \add_instance|rf|RF[7][4]~q\,
	combout => \add_instance|adder|sum~5_combout\);

-- Location: LCCOMB_X16_Y20_N2
\add_instance|pc_final_mux|sel_out[4]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|pc_final_mux|sel_out[4]~12_combout\ = (\add_instance|control_unit|Mux12~0_combout\ & (((\add_instance|rf|Mux27~2_combout\) # (\add_instance|control_unit|Mux13~0_combout\)))) # (!\add_instance|control_unit|Mux12~0_combout\ & 
-- (\add_instance|incrementer|sum~3_combout\ & ((!\add_instance|control_unit|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|incrementer|sum~3_combout\,
	datab => \add_instance|control_unit|Mux12~0_combout\,
	datac => \add_instance|rf|Mux27~2_combout\,
	datad => \add_instance|control_unit|Mux13~0_combout\,
	combout => \add_instance|pc_final_mux|sel_out[4]~12_combout\);

-- Location: LCCOMB_X16_Y20_N16
\add_instance|pc_final_mux|sel_out[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|pc_final_mux|sel_out[4]~13_combout\ = (\add_instance|control_unit|Mux13~0_combout\ & ((\add_instance|pc_final_mux|sel_out[4]~12_combout\ & (\add_instance|main_alu|C[4]~8_combout\)) # (!\add_instance|pc_final_mux|sel_out[4]~12_combout\ & 
-- ((\add_instance|adder|sum~5_combout\))))) # (!\add_instance|control_unit|Mux13~0_combout\ & (((\add_instance|pc_final_mux|sel_out[4]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|main_alu|C[4]~8_combout\,
	datab => \add_instance|adder|sum~5_combout\,
	datac => \add_instance|control_unit|Mux13~0_combout\,
	datad => \add_instance|pc_final_mux|sel_out[4]~12_combout\,
	combout => \add_instance|pc_final_mux|sel_out[4]~13_combout\);

-- Location: FF_X16_Y20_N17
\add_instance|rf|RF[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|pc_final_mux|sel_out[4]~13_combout\,
	clrn => \ALT_INV_input_vector[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[7][4]~q\);

-- Location: LCCOMB_X16_Y20_N22
\add_instance|adder|carry~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|adder|carry~10_combout\ = (\add_instance|rf|RF[7][4]~q\) # ((!\add_instance|rf|RF[7][6]~q\ & (\add_instance|rom_unit|rom_data~2065_combout\ & !\add_instance|rf|RF[7][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][6]~q\,
	datab => \add_instance|rf|RF[7][4]~q\,
	datac => \add_instance|rom_unit|rom_data~2065_combout\,
	datad => \add_instance|rf|RF[7][5]~q\,
	combout => \add_instance|adder|carry~10_combout\);

-- Location: LCCOMB_X16_Y20_N18
\add_instance|adder|carry~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|adder|carry~4_combout\ = (\add_instance|rf|RF[7][5]~q\ & ((\add_instance|rom_unit|rom_data~2072_combout\) # ((\add_instance|adder|carry~10_combout\ & \add_instance|adder|carry~3_combout\)))) # (!\add_instance|rf|RF[7][5]~q\ & 
-- (\add_instance|adder|carry~10_combout\ & (\add_instance|adder|carry~3_combout\ & \add_instance|rom_unit|rom_data~2072_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|adder|carry~10_combout\,
	datab => \add_instance|rf|RF[7][5]~q\,
	datac => \add_instance|adder|carry~3_combout\,
	datad => \add_instance|rom_unit|rom_data~2072_combout\,
	combout => \add_instance|adder|carry~4_combout\);

-- Location: LCCOMB_X16_Y20_N12
\add_instance|adder|sum~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|adder|sum~3_combout\ = \add_instance|adder|carry~4_combout\ $ (((\add_instance|rf|RF[7][6]~q\) # (\add_instance|pc_plus_imm_mux|sel_out[6]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|adder|carry~4_combout\,
	datac => \add_instance|rf|RF[7][6]~q\,
	datad => \add_instance|pc_plus_imm_mux|sel_out[6]~1_combout\,
	combout => \add_instance|adder|sum~3_combout\);

-- Location: LCCOMB_X17_Y20_N2
\add_instance|pc_final_mux|sel_out[6]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|pc_final_mux|sel_out[6]~8_combout\ = (\add_instance|control_unit|Mux12~0_combout\ & (((\add_instance|rf|Mux25~2_combout\) # (\add_instance|control_unit|Mux13~0_combout\)))) # (!\add_instance|control_unit|Mux12~0_combout\ & 
-- (\add_instance|incrementer|sum~5_combout\ & ((!\add_instance|control_unit|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux12~0_combout\,
	datab => \add_instance|incrementer|sum~5_combout\,
	datac => \add_instance|rf|Mux25~2_combout\,
	datad => \add_instance|control_unit|Mux13~0_combout\,
	combout => \add_instance|pc_final_mux|sel_out[6]~8_combout\);

-- Location: LCCOMB_X17_Y20_N10
\add_instance|pc_final_mux|sel_out[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|pc_final_mux|sel_out[6]~9_combout\ = (\add_instance|control_unit|Mux13~0_combout\ & ((\add_instance|pc_final_mux|sel_out[6]~8_combout\ & ((\add_instance|main_alu|C[6]~12_combout\))) # (!\add_instance|pc_final_mux|sel_out[6]~8_combout\ & 
-- (\add_instance|adder|sum~3_combout\)))) # (!\add_instance|control_unit|Mux13~0_combout\ & (((\add_instance|pc_final_mux|sel_out[6]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|adder|sum~3_combout\,
	datab => \add_instance|main_alu|C[6]~12_combout\,
	datac => \add_instance|control_unit|Mux13~0_combout\,
	datad => \add_instance|pc_final_mux|sel_out[6]~8_combout\,
	combout => \add_instance|pc_final_mux|sel_out[6]~9_combout\);

-- Location: FF_X17_Y20_N11
\add_instance|rf|RF[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|pc_final_mux|sel_out[6]~9_combout\,
	clrn => \ALT_INV_input_vector[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[7][6]~q\);

-- Location: LCCOMB_X17_Y20_N18
\add_instance|rom_unit|rom_data~2071\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rom_unit|rom_data~2071_combout\ = (!\add_instance|rf|RF[7][6]~q\ & (!\add_instance|rf|RF[7][5]~q\ & (!\add_instance|rf|RF[7][4]~q\ & \add_instance|rom_unit|rom_data~2065_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][6]~q\,
	datab => \add_instance|rf|RF[7][5]~q\,
	datac => \add_instance|rf|RF[7][4]~q\,
	datad => \add_instance|rom_unit|rom_data~2065_combout\,
	combout => \add_instance|rom_unit|rom_data~2071_combout\);

-- Location: LCCOMB_X19_Y19_N4
\add_instance|rf|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux26~0_combout\ = (\add_instance|rom_unit|rom_data~2071_combout\ & (((\add_instance|rf|RF[1][5]~q\) # (\add_instance|rom_unit|rom_data~2062_combout\)))) # (!\add_instance|rom_unit|rom_data~2071_combout\ & (\add_instance|rf|RF[0][5]~q\ & 
-- ((!\add_instance|rom_unit|rom_data~2062_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rom_unit|rom_data~2071_combout\,
	datab => \add_instance|rf|RF[0][5]~q\,
	datac => \add_instance|rf|RF[1][5]~q\,
	datad => \add_instance|rom_unit|rom_data~2062_combout\,
	combout => \add_instance|rf|Mux26~0_combout\);

-- Location: FF_X18_Y20_N7
\add_instance|rf|RF[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf_d3_mux|sel_out[5]~13_combout\,
	ena => \add_instance|rf|Decoder0~25_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[5][5]~q\);

-- Location: LCCOMB_X19_Y19_N22
\add_instance|rf|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux26~1_combout\ = (\add_instance|rom_unit|rom_data~2062_combout\ & ((\add_instance|rf|Mux31~2_combout\) # (!\add_instance|rf|RF[5][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[5][5]~q\,
	datac => \add_instance|rf|Mux31~2_combout\,
	datad => \add_instance|rom_unit|rom_data~2062_combout\,
	combout => \add_instance|rf|Mux26~1_combout\);

-- Location: LCCOMB_X19_Y19_N16
\add_instance|rf|Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux26~2_combout\ = (\add_instance|rf|Mux26~1_combout\ & (\add_instance|rf|Mux31~2_combout\ & ((\add_instance|rf|RF[7][5]~q\) # (!\add_instance|rf|Mux26~0_combout\)))) # (!\add_instance|rf|Mux26~1_combout\ & 
-- (((\add_instance|rf|Mux26~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][5]~q\,
	datab => \add_instance|rf|Mux26~0_combout\,
	datac => \add_instance|rf|Mux31~2_combout\,
	datad => \add_instance|rf|Mux26~1_combout\,
	combout => \add_instance|rf|Mux26~2_combout\);

-- Location: LCCOMB_X16_Y20_N14
\add_instance|adder|sum~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|adder|sum~4_combout\ = \add_instance|rf|RF[7][5]~q\ $ (\add_instance|rom_unit|rom_data~2072_combout\ $ (((\add_instance|adder|carry~10_combout\ & \add_instance|adder|carry~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|adder|carry~10_combout\,
	datab => \add_instance|rf|RF[7][5]~q\,
	datac => \add_instance|adder|carry~3_combout\,
	datad => \add_instance|rom_unit|rom_data~2072_combout\,
	combout => \add_instance|adder|sum~4_combout\);

-- Location: LCCOMB_X18_Y20_N24
\add_instance|pc_final_mux|sel_out[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|pc_final_mux|sel_out[5]~10_combout\ = (\add_instance|control_unit|Mux13~0_combout\ & (((\add_instance|adder|sum~4_combout\) # (\add_instance|control_unit|Mux12~0_combout\)))) # (!\add_instance|control_unit|Mux13~0_combout\ & 
-- (\add_instance|incrementer|sum~4_combout\ & ((!\add_instance|control_unit|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|incrementer|sum~4_combout\,
	datab => \add_instance|adder|sum~4_combout\,
	datac => \add_instance|control_unit|Mux13~0_combout\,
	datad => \add_instance|control_unit|Mux12~0_combout\,
	combout => \add_instance|pc_final_mux|sel_out[5]~10_combout\);

-- Location: LCCOMB_X17_Y20_N8
\add_instance|pc_final_mux|sel_out[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|pc_final_mux|sel_out[5]~11_combout\ = (\add_instance|control_unit|Mux12~0_combout\ & ((\add_instance|pc_final_mux|sel_out[5]~10_combout\ & ((\add_instance|main_alu|C[5]~10_combout\))) # (!\add_instance|pc_final_mux|sel_out[5]~10_combout\ & 
-- (\add_instance|rf|Mux26~2_combout\)))) # (!\add_instance|control_unit|Mux12~0_combout\ & (((\add_instance|pc_final_mux|sel_out[5]~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux12~0_combout\,
	datab => \add_instance|rf|Mux26~2_combout\,
	datac => \add_instance|main_alu|C[5]~10_combout\,
	datad => \add_instance|pc_final_mux|sel_out[5]~10_combout\,
	combout => \add_instance|pc_final_mux|sel_out[5]~11_combout\);

-- Location: FF_X17_Y20_N9
\add_instance|rf|RF[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|pc_final_mux|sel_out[5]~11_combout\,
	clrn => \ALT_INV_input_vector[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[7][5]~q\);

-- Location: LCCOMB_X17_Y20_N6
\add_instance|rom_unit|rom_data~2060\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rom_unit|rom_data~2060_combout\ = (!\add_instance|rf|RF[7][5]~q\ & (!\add_instance|rf|RF[7][4]~q\ & !\add_instance|rf|RF[7][6]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|rf|RF[7][5]~q\,
	datac => \add_instance|rf|RF[7][4]~q\,
	datad => \add_instance|rf|RF[7][6]~q\,
	combout => \add_instance|rom_unit|rom_data~2060_combout\);

-- Location: LCCOMB_X17_Y19_N26
\add_instance|alu_b_mux|sel_out[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[2]~6_combout\ = (\add_instance|rom_unit|rom_data~2060_combout\ & (!\add_instance|control_unit|Mux9~0_combout\ & \add_instance|rom_unit|rom_data~2067_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rom_unit|rom_data~2060_combout\,
	datac => \add_instance|control_unit|Mux9~0_combout\,
	datad => \add_instance|rom_unit|rom_data~2067_combout\,
	combout => \add_instance|alu_b_mux|sel_out[2]~6_combout\);

-- Location: LCCOMB_X17_Y19_N2
\add_instance|alu_b_mux|sel_out[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[2]~10_combout\ = (\add_instance|alu_b_mux|sel_out[2]~8_combout\ & ((\add_instance|rom_unit|rom_data~2062_combout\ & (\add_instance|rf|Mux30~0_combout\)) # (!\add_instance|rom_unit|rom_data~2062_combout\ & 
-- ((\add_instance|rf|Mux30~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux30~0_combout\,
	datab => \add_instance|rf|Mux30~2_combout\,
	datac => \add_instance|rom_unit|rom_data~2062_combout\,
	datad => \add_instance|alu_b_mux|sel_out[2]~8_combout\,
	combout => \add_instance|alu_b_mux|sel_out[2]~10_combout\);

-- Location: LCCOMB_X17_Y19_N18
\add_instance|alu_b_mux|sel_out[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[2]~11_combout\ = (\add_instance|alu_b_mux|sel_out[2]~6_combout\) # ((\add_instance|alu_b_mux|sel_out[2]~10_combout\) # ((!\add_instance|alu_b_mux|Equal0~0_combout\ & \add_instance|rf|Mux29~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[2]~6_combout\,
	datab => \add_instance|alu_b_mux|Equal0~0_combout\,
	datac => \add_instance|rf|Mux29~2_combout\,
	datad => \add_instance|alu_b_mux|sel_out[2]~10_combout\,
	combout => \add_instance|alu_b_mux|sel_out[2]~11_combout\);

-- Location: LCCOMB_X17_Y18_N18
\add_instance|main_alu|C[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[2]~3_combout\ = (\add_instance|control_unit|Mux15~0_combout\ & (((\add_instance|control_unit|Mux14~0_combout\)))) # (!\add_instance|control_unit|Mux15~0_combout\ & (\add_instance|main_alu|result~34_combout\ $ 
-- (((\add_instance|main_alu|carry~2_combout\ & \add_instance|control_unit|Mux14~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux15~0_combout\,
	datab => \add_instance|main_alu|result~34_combout\,
	datac => \add_instance|main_alu|carry~2_combout\,
	datad => \add_instance|control_unit|Mux14~0_combout\,
	combout => \add_instance|main_alu|C[2]~3_combout\);

-- Location: LCCOMB_X17_Y18_N24
\add_instance|main_alu|C[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[2]~4_combout\ = (\add_instance|rf|Mux13~0_combout\ & ((\add_instance|control_unit|Mux15~0_combout\ & ((!\add_instance|main_alu|C[2]~3_combout\) # (!\add_instance|alu_b_mux|sel_out[2]~11_combout\))) # 
-- (!\add_instance|control_unit|Mux15~0_combout\ & ((\add_instance|main_alu|C[2]~3_combout\))))) # (!\add_instance|rf|Mux13~0_combout\ & (((\add_instance|main_alu|C[2]~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[2]~11_combout\,
	datab => \add_instance|rf|Mux13~0_combout\,
	datac => \add_instance|control_unit|Mux15~0_combout\,
	datad => \add_instance|main_alu|C[2]~3_combout\,
	combout => \add_instance|main_alu|C[2]~4_combout\);

-- Location: LCCOMB_X17_Y21_N8
\add_instance|adder|sum~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|adder|sum~1_combout\ = \add_instance|rf|RF[7][2]~q\ $ (\add_instance|adder|carry~2_combout\ $ (\add_instance|rom_unit|rom_data~2072_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][2]~q\,
	datab => \add_instance|adder|carry~2_combout\,
	datad => \add_instance|rom_unit|rom_data~2072_combout\,
	combout => \add_instance|adder|sum~1_combout\);

-- Location: LCCOMB_X17_Y21_N4
\add_instance|pc_final_mux|sel_out[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|pc_final_mux|sel_out[2]~4_combout\ = (\add_instance|control_unit|Mux12~0_combout\ & (((\add_instance|rf|Mux29~2_combout\) # (\add_instance|control_unit|Mux13~0_combout\)))) # (!\add_instance|control_unit|Mux12~0_combout\ & 
-- (\add_instance|incrementer|sum~1_combout\ & ((!\add_instance|control_unit|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|incrementer|sum~1_combout\,
	datab => \add_instance|control_unit|Mux12~0_combout\,
	datac => \add_instance|rf|Mux29~2_combout\,
	datad => \add_instance|control_unit|Mux13~0_combout\,
	combout => \add_instance|pc_final_mux|sel_out[2]~4_combout\);

-- Location: LCCOMB_X17_Y20_N14
\add_instance|pc_final_mux|sel_out[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|pc_final_mux|sel_out[2]~5_combout\ = (\add_instance|control_unit|Mux13~0_combout\ & ((\add_instance|pc_final_mux|sel_out[2]~4_combout\ & (\add_instance|main_alu|C[2]~4_combout\)) # (!\add_instance|pc_final_mux|sel_out[2]~4_combout\ & 
-- ((\add_instance|adder|sum~1_combout\))))) # (!\add_instance|control_unit|Mux13~0_combout\ & (((\add_instance|pc_final_mux|sel_out[2]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|main_alu|C[2]~4_combout\,
	datab => \add_instance|adder|sum~1_combout\,
	datac => \add_instance|control_unit|Mux13~0_combout\,
	datad => \add_instance|pc_final_mux|sel_out[2]~4_combout\,
	combout => \add_instance|pc_final_mux|sel_out[2]~5_combout\);

-- Location: FF_X17_Y20_N15
\add_instance|rf|RF[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|pc_final_mux|sel_out[2]~5_combout\,
	clrn => \ALT_INV_input_vector[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[7][2]~q\);

-- Location: LCCOMB_X17_Y20_N22
\add_instance|rom_unit|rom_data~2062\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rom_unit|rom_data~2062_combout\ = (!\add_instance|rf|RF[7][1]~q\ & (\add_instance|rf|RF[7][2]~q\ & (!\add_instance|rf|RF[7][0]~q\ & \add_instance|rom_unit|rom_data~2061_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][1]~q\,
	datab => \add_instance|rf|RF[7][2]~q\,
	datac => \add_instance|rf|RF[7][0]~q\,
	datad => \add_instance|rom_unit|rom_data~2061_combout\,
	combout => \add_instance|rom_unit|rom_data~2062_combout\);

-- Location: LCCOMB_X16_Y21_N22
\add_instance|control_unit|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|control_unit|Mux12~0_combout\ = (\add_instance|rom_unit|rom_data~2062_combout\ & \add_instance|rom_unit|rom_data~2069_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|rom_unit|rom_data~2062_combout\,
	datad => \add_instance|rom_unit|rom_data~2069_combout\,
	combout => \add_instance|control_unit|Mux12~0_combout\);

-- Location: LCCOMB_X16_Y19_N16
\add_instance|rf|Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux30~3_combout\ = (\add_instance|rom_unit|rom_data~2062_combout\ & ((\add_instance|rf|Mux30~0_combout\))) # (!\add_instance|rom_unit|rom_data~2062_combout\ & (\add_instance|rf|Mux30~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|rf|Mux30~2_combout\,
	datac => \add_instance|rf|Mux30~0_combout\,
	datad => \add_instance|rom_unit|rom_data~2062_combout\,
	combout => \add_instance|rf|Mux30~3_combout\);

-- Location: LCCOMB_X17_Y21_N30
\add_instance|adder|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|adder|sum~0_combout\ = \add_instance|rf|RF[7][1]~q\ $ (\add_instance|rom_unit|rom_data~2072_combout\ $ (((\add_instance|rom_unit|rom_data~2070_combout\ & \add_instance|rf|RF[7][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rom_unit|rom_data~2070_combout\,
	datab => \add_instance|rf|RF[7][0]~q\,
	datac => \add_instance|rf|RF[7][1]~q\,
	datad => \add_instance|rom_unit|rom_data~2072_combout\,
	combout => \add_instance|adder|sum~0_combout\);

-- Location: LCCOMB_X17_Y20_N20
\add_instance|pc_final_mux|sel_out[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|pc_final_mux|sel_out[1]~2_combout\ = (\add_instance|control_unit|Mux12~0_combout\ & (((\add_instance|control_unit|Mux13~0_combout\)))) # (!\add_instance|control_unit|Mux12~0_combout\ & ((\add_instance|control_unit|Mux13~0_combout\ & 
-- ((\add_instance|adder|sum~0_combout\))) # (!\add_instance|control_unit|Mux13~0_combout\ & (\add_instance|incrementer|sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux12~0_combout\,
	datab => \add_instance|incrementer|sum~0_combout\,
	datac => \add_instance|adder|sum~0_combout\,
	datad => \add_instance|control_unit|Mux13~0_combout\,
	combout => \add_instance|pc_final_mux|sel_out[1]~2_combout\);

-- Location: LCCOMB_X17_Y20_N12
\add_instance|pc_final_mux|sel_out[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|pc_final_mux|sel_out[1]~3_combout\ = (\add_instance|control_unit|Mux12~0_combout\ & ((\add_instance|pc_final_mux|sel_out[1]~2_combout\ & (\add_instance|main_alu|C[1]~2_combout\)) # (!\add_instance|pc_final_mux|sel_out[1]~2_combout\ & 
-- ((\add_instance|rf|Mux30~3_combout\))))) # (!\add_instance|control_unit|Mux12~0_combout\ & (((\add_instance|pc_final_mux|sel_out[1]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux12~0_combout\,
	datab => \add_instance|main_alu|C[1]~2_combout\,
	datac => \add_instance|rf|Mux30~3_combout\,
	datad => \add_instance|pc_final_mux|sel_out[1]~2_combout\,
	combout => \add_instance|pc_final_mux|sel_out[1]~3_combout\);

-- Location: FF_X17_Y20_N13
\add_instance|rf|RF[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|pc_final_mux|sel_out[1]~3_combout\,
	clrn => \ALT_INV_input_vector[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[7][1]~q\);

-- Location: LCCOMB_X17_Y19_N10
\add_instance|rom_unit|rom_data~2058\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rom_unit|rom_data~2058_combout\ = (\add_instance|rf|RF[7][1]~q\) # ((\add_instance|rf|RF[7][3]~q\) # ((\add_instance|rf|RF[7][2]~q\ & \add_instance|rf|RF[7][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][1]~q\,
	datab => \add_instance|rf|RF[7][3]~q\,
	datac => \add_instance|rf|RF[7][2]~q\,
	datad => \add_instance|rf|RF[7][0]~q\,
	combout => \add_instance|rom_unit|rom_data~2058_combout\);

-- Location: LCCOMB_X16_Y19_N24
\add_instance|control_unit|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|control_unit|Mux7~0_combout\ = (((\add_instance|rom_unit|rom_data~2058_combout\ & \add_instance|rom_unit|rom_data~2059_combout\)) # (!\add_instance|rom_unit|rom_data~2062_combout\)) # (!\add_instance|rom_unit|rom_data~2060_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rom_unit|rom_data~2058_combout\,
	datab => \add_instance|rom_unit|rom_data~2060_combout\,
	datac => \add_instance|rom_unit|rom_data~2059_combout\,
	datad => \add_instance|rom_unit|rom_data~2062_combout\,
	combout => \add_instance|control_unit|Mux7~0_combout\);

-- Location: LCCOMB_X17_Y18_N22
\add_instance|rf_d3_mux|sel_out[0]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_d3_mux|sel_out[0]~8_combout\ = (\add_instance|rf_d3_mux|sel_out[4]~29_combout\ & (!\add_instance|control_unit|Mux7~0_combout\ & (!\add_instance|rf|RF[7][0]~q\))) # (!\add_instance|rf_d3_mux|sel_out[4]~29_combout\ & 
-- (((\add_instance|main_alu|C[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|control_unit|Mux7~0_combout\,
	datab => \add_instance|rf|RF[7][0]~q\,
	datac => \add_instance|rf_d3_mux|sel_out[4]~29_combout\,
	datad => \add_instance|main_alu|C[0]~0_combout\,
	combout => \add_instance|rf_d3_mux|sel_out[0]~8_combout\);

ww_output_vector(0) <= \output_vector[0]~output_o\;

ww_output_vector(1) <= \output_vector[1]~output_o\;

ww_output_vector(2) <= \output_vector[2]~output_o\;

ww_output_vector(3) <= \output_vector[3]~output_o\;

ww_output_vector(4) <= \output_vector[4]~output_o\;

ww_output_vector(5) <= \output_vector[5]~output_o\;

ww_output_vector(6) <= \output_vector[6]~output_o\;

ww_output_vector(7) <= \output_vector[7]~output_o\;

ww_output_vector(8) <= \output_vector[8]~output_o\;

ww_output_vector(9) <= \output_vector[9]~output_o\;

ww_output_vector(10) <= \output_vector[10]~output_o\;

ww_output_vector(11) <= \output_vector[11]~output_o\;

ww_output_vector(12) <= \output_vector[12]~output_o\;

ww_output_vector(13) <= \output_vector[13]~output_o\;

ww_output_vector(14) <= \output_vector[14]~output_o\;

ww_output_vector(15) <= \output_vector[15]~output_o\;
END structure;


