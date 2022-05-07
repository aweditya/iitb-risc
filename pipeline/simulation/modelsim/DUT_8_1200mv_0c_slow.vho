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

-- DATE "05/07/2022 10:29:26"

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
-- output_vector[0]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[1]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[2]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[3]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[4]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[5]	=>  Location: PIN_K1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[6]	=>  Location: PIN_K2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[7]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[8]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[9]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[10]	=>  Location: PIN_L1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[11]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[12]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[13]	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[14]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[15]	=>  Location: PIN_L2,	 I/O Standard: 2.5 V,	 Current Strength: Default
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
SIGNAL \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a1_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a1_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a1_PORTBADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a1_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTAADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBADDR_bus\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
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
SIGNAL \add_instance|rf|RF[7][0]~0_combout\ : std_logic;
SIGNAL \input_vector[0]~input_o\ : std_logic;
SIGNAL \input_vector[0]~inputclkctrl_outclk\ : std_logic;
SIGNAL \add_instance|rf|RF[7][0]~q\ : std_logic;
SIGNAL \add_instance|incrementer|sum~0_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[7][1]~q\ : std_logic;
SIGNAL \add_instance|incrementer|sum~1_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[7][2]~q\ : std_logic;
SIGNAL \add_instance|incrementer|sum~2_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[7][3]~q\ : std_logic;
SIGNAL \add_instance|incrementer|carry~0_combout\ : std_logic;
SIGNAL \add_instance|incrementer|sum~3_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[7][4]~q\ : std_logic;
SIGNAL \add_instance|incrementer|sum~4_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[7][5]~q\ : std_logic;
SIGNAL \add_instance|incrementer|sum~5_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[7][6]~q\ : std_logic;
SIGNAL \add_instance|rom_unit|rom_data~2050_combout\ : std_logic;
SIGNAL \add_instance|rom_unit|rom_data~2051_combout\ : std_logic;
SIGNAL \add_instance|rom_unit|rom_data~2052_combout\ : std_logic;
SIGNAL \add_instance|rom_unit|rom_data~2053_combout\ : std_logic;
SIGNAL \add_instance|Mux10~0_combout\ : std_logic;
SIGNAL \add_instance|id_or_register|rf_d3_select_OR[0]~feeder_combout\ : std_logic;
SIGNAL \add_instance|or_ex_register|rf_d3_select_EX[0]~feeder_combout\ : std_logic;
SIGNAL \add_instance|rom_unit|rom_data~2054_combout\ : std_logic;
SIGNAL \add_instance|rom_unit|rom_data~2055_combout\ : std_logic;
SIGNAL \add_instance|id_or_register|rf_a1_OR_in[0]~feeder_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a6\ : std_logic;
SIGNAL \add_instance|rf_a3_mux|sel_out[0]~2_combout\ : std_logic;
SIGNAL \add_instance|Mux11~0_combout\ : std_logic;
SIGNAL \add_instance|rf_a3_mux|sel_out[0]~3_combout\ : std_logic;
SIGNAL \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|add_sub4_result_int[0]~1\ : std_logic;
SIGNAL \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|add_sub4_result_int[1]~2_combout\ : std_logic;
SIGNAL \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|trigger_mux_w[1]~1_combout\ : std_logic;
SIGNAL \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|add_sub4_result_int[1]~3\ : std_logic;
SIGNAL \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|add_sub4_result_int[2]~4_combout\ : std_logic;
SIGNAL \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|add_sub4_result_int[0]~0_combout\ : std_logic;
SIGNAL \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|trigger_mux_w[0]~0_combout\ : std_logic;
SIGNAL \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|dffe3a[0]~feeder_combout\ : std_logic;
SIGNAL \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|dffe3a[1]~0_combout\ : std_logic;
SIGNAL \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|dffe3a[1]~_wirecell_combout\ : std_logic;
SIGNAL \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \add_instance|rom_unit|rom_data~2048_combout\ : std_logic;
SIGNAL \add_instance|rom_unit|rom_data~2049_combout\ : std_logic;
SIGNAL \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a7\ : std_logic;
SIGNAL \add_instance|rf_a3_mux|sel_out[1]~0_combout\ : std_logic;
SIGNAL \add_instance|rf_a3_mux|sel_out[1]~1_combout\ : std_logic;
SIGNAL \add_instance|rom_unit|rom_data~2056_combout\ : std_logic;
SIGNAL \add_instance|rom_unit|rom_data~2057_combout\ : std_logic;
SIGNAL \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a5\ : std_logic;
SIGNAL \add_instance|rf_a3_mux|sel_out[2]~4_combout\ : std_logic;
SIGNAL \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a2\ : std_logic;
SIGNAL \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a1~portbdataout\ : std_logic;
SIGNAL \add_instance|forwarding_unit|forward_selection_process~4_combout\ : std_logic;
SIGNAL \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a3\ : std_logic;
SIGNAL \add_instance|Mux18~0_combout\ : std_logic;
SIGNAL \add_instance|or_ex_register|alu_select_EX_in[0]~feeder_combout\ : std_logic;
SIGNAL \add_instance|Mux22~1_combout\ : std_logic;
SIGNAL \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a0~portbdataout\ : std_logic;
SIGNAL \add_instance|forwarding_unit|forward_selection_process~6_combout\ : std_logic;
SIGNAL \add_instance|or_ex_register|rf_a2_EX_in[1]~feeder_combout\ : std_logic;
SIGNAL \add_instance|id_or_register|rf_a2_OR_in[0]~feeder_combout\ : std_logic;
SIGNAL \add_instance|or_ex_register|rf_a2_EX_in[0]~feeder_combout\ : std_logic;
SIGNAL \add_instance|forwarding_unit|forward_selection_process~7_combout\ : std_logic;
SIGNAL \add_instance|alu_a_forwarding_mux|sel_out[15]~32_combout\ : std_logic;
SIGNAL \add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\ : std_logic;
SIGNAL \add_instance|mem_wb_register|rf_load_WB_in~q\ : std_logic;
SIGNAL \add_instance|forwarding_unit|forward_selection_process~8_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[1][15]~feeder_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[1][15]~q\ : std_logic;
SIGNAL \add_instance|rf|Decoder0~8_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[3][15]~q\ : std_logic;
SIGNAL \add_instance|rf|Decoder0~2_combout\ : std_logic;
SIGNAL \add_instance|rf|Decoder0~7_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[0][15]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux16~0_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux16~1_combout\ : std_logic;
SIGNAL \add_instance|forwarding_unit|forward_selection_process~9_combout\ : std_logic;
SIGNAL \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a0~portadataout\ : std_logic;
SIGNAL \add_instance|Mux15~0_combout\ : std_logic;
SIGNAL \add_instance|ex_mem_register|za_out_MEM[14]~feeder_combout\ : std_logic;
SIGNAL \add_instance|mem_wb_register|za_out_WB_in[14]~feeder_combout\ : std_logic;
SIGNAL \add_instance|id_or_register|alu_b_select_OR[1]~feeder_combout\ : std_logic;
SIGNAL \add_instance|id_or_register|za_out_OR[12]~feeder_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[8]~24_combout\ : std_logic;
SIGNAL \add_instance|ex_mem_register|za_out_MEM[13]~feeder_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[1][13]~feeder_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[1][13]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[0][13]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux2~2_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[3][13]~feeder_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[3][13]~q\ : std_logic;
SIGNAL \add_instance|rf|Decoder0~5_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[2][13]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux2~3_combout\ : std_logic;
SIGNAL \add_instance|incrementer|carry~1_combout\ : std_logic;
SIGNAL \add_instance|incrementer|sum~6_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[7][7]~q\ : std_logic;
SIGNAL \add_instance|incrementer|sum~7_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[7][8]~q\ : std_logic;
SIGNAL \add_instance|incrementer|sum~8_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[7][9]~q\ : std_logic;
SIGNAL \add_instance|incrementer|carry~2_combout\ : std_logic;
SIGNAL \add_instance|incrementer|sum~9_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[7][10]~q\ : std_logic;
SIGNAL \add_instance|incrementer|sum~10_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[7][11]~q\ : std_logic;
SIGNAL \add_instance|incrementer|sum~11_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[7][12]~q\ : std_logic;
SIGNAL \add_instance|incrementer|carry~3_combout\ : std_logic;
SIGNAL \add_instance|incrementer|sum~12_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[7][13]~q\ : std_logic;
SIGNAL \add_instance|rf|Decoder0~4_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[4][13]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[6][13]~feeder_combout\ : std_logic;
SIGNAL \add_instance|rf|Decoder0~3_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[6][13]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux2~0_combout\ : std_logic;
SIGNAL \add_instance|rf|Decoder0~1_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[5][13]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux2~1_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux2~4_combout\ : std_logic;
SIGNAL \add_instance|alu_a_forwarding_mux|sel_out[13]~26_combout\ : std_logic;
SIGNAL \add_instance|alu_a_forwarding_mux|sel_out[13]~27_combout\ : std_logic;
SIGNAL \add_instance|id_or_register|za_out_OR[11]~feeder_combout\ : std_logic;
SIGNAL \add_instance|ex_mem_register|za_out_MEM[11]~feeder_combout\ : std_logic;
SIGNAL \add_instance|forwarding_unit|forward_selection_process~5_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[5][11]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[6][11]~feeder_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[6][11]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[4][11]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux4~0_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux4~1_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[1][11]~feeder_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[1][11]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[0][11]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux4~2_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[2][11]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[3][11]~feeder_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[3][11]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux4~3_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux4~4_combout\ : std_logic;
SIGNAL \add_instance|alu_a_forwarding_mux|sel_out[11]~22_combout\ : std_logic;
SIGNAL \add_instance|alu_a_forwarding_mux|sel_out[11]~23_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux20~0_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux20~1_combout\ : std_logic;
SIGNAL \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \add_instance|id_or_register|za_out_OR[9]~feeder_combout\ : std_logic;
SIGNAL \add_instance|ex_mem_register|za_out_MEM[9]~feeder_combout\ : std_logic;
SIGNAL \add_instance|mem_wb_register|za_out_WB_in[9]~feeder_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[5][9]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[6][9]~feeder_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[6][9]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[4][9]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux6~0_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux6~1_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[2][9]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[3][9]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[0][9]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux6~2_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux6~3_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux6~4_combout\ : std_logic;
SIGNAL \add_instance|alu_a_forwarding_mux|sel_out[9]~18_combout\ : std_logic;
SIGNAL \add_instance|alu_a_forwarding_mux|sel_out[9]~19_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[0][2]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[1][2]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux13~2_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[3][2]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux13~3_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[6][2]~feeder_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[6][2]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[4][2]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux13~0_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[5][2]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux13~1_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux13~4_combout\ : std_logic;
SIGNAL \add_instance|alu_a_forwarding_mux|sel_out[2]~4_combout\ : std_logic;
SIGNAL \add_instance|alu_a_forwarding_mux|sel_out[2]~5_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|Equal1~0_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[4][1]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[6][1]~feeder_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[6][1]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux14~0_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[5][1]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux14~1_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[2][1]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[3][1]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[1][1]~feeder_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[1][1]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[0][1]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux14~2_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux14~3_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux14~4_combout\ : std_logic;
SIGNAL \add_instance|alu_a_forwarding_mux|sel_out[1]~2_combout\ : std_logic;
SIGNAL \add_instance|alu_a_forwarding_mux|sel_out[1]~3_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[1]~6_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[1]~7_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[0][0]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux31~0_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[3][0]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[2][0]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux31~1_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux30~0_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux30~1_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[0]~4_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[1]~5_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[1]~8_combout\ : std_logic;
SIGNAL \add_instance|id_or_register|za_out_OR[7]~feeder_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[0]~2_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[0]~3_combout\ : std_logic;
SIGNAL \add_instance|main_alu|result~2_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[1]~1_combout\ : std_logic;
SIGNAL \add_instance|rf_d3_mux|sel_out[1]~1_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[2]~9_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[2]~10_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[2]~11_combout\ : std_logic;
SIGNAL \add_instance|main_alu|carry~0_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[2]~2_combout\ : std_logic;
SIGNAL \add_instance|rf_d3_mux|sel_out[2]~2_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[2][2]~feeder_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[2][2]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux29~0_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux29~1_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[3]~13_combout\ : std_logic;
SIGNAL \add_instance|id_or_register|za_out_OR[10]~feeder_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[3]~12_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[3]~14_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[6][3]~feeder_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[6][3]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[4][3]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux12~0_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[5][3]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux12~1_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[2][3]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[3][3]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[0][3]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux12~2_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux12~3_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux12~4_combout\ : std_logic;
SIGNAL \add_instance|alu_a_forwarding_mux|sel_out[3]~6_combout\ : std_logic;
SIGNAL \add_instance|alu_a_forwarding_mux|sel_out[3]~7_combout\ : std_logic;
SIGNAL \add_instance|main_alu|result~5_combout\ : std_logic;
SIGNAL \add_instance|main_alu|carry~1_combout\ : std_logic;
SIGNAL \add_instance|main_alu|sum~0_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[3]~3_combout\ : std_logic;
SIGNAL \add_instance|rf_d3_mux|sel_out[3]~3_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[1][3]~feeder_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[1][3]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux28~0_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux28~1_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[4]~16_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[4]~15_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[4]~17_combout\ : std_logic;
SIGNAL \add_instance|main_alu|carry~2_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[6][4]~feeder_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[6][4]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[4][4]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux11~0_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[5][4]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux11~1_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[2][4]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[1][4]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux11~2_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[3][4]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux11~3_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux11~4_combout\ : std_logic;
SIGNAL \add_instance|alu_a_forwarding_mux|sel_out[4]~8_combout\ : std_logic;
SIGNAL \add_instance|alu_a_forwarding_mux|sel_out[4]~9_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[4]~4_combout\ : std_logic;
SIGNAL \add_instance|rf_d3_mux|sel_out[4]~4_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[0][4]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux27~0_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux27~1_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[5]~18_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[4][5]~feeder_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[4][5]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[6][5]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux10~0_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[5][5]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux10~1_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[0][5]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux10~2_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[3][5]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[2][5]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux10~3_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux10~4_combout\ : std_logic;
SIGNAL \add_instance|alu_a_forwarding_mux|sel_out[5]~10_combout\ : std_logic;
SIGNAL \add_instance|alu_a_forwarding_mux|sel_out[5]~11_combout\ : std_logic;
SIGNAL \add_instance|main_alu|result~3_combout\ : std_logic;
SIGNAL \add_instance|main_alu|carry~3_combout\ : std_logic;
SIGNAL \add_instance|main_alu|carry~4_combout\ : std_logic;
SIGNAL \add_instance|main_alu|sum~1_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[5]~5_combout\ : std_logic;
SIGNAL \add_instance|rf_d3_mux|sel_out[5]~5_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[1][5]~feeder_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[1][5]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux26~0_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux26~1_combout\ : std_logic;
SIGNAL \add_instance|alu_b_forwarding_mux|sel_out[5]~0_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[5]~49_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[5]~19_combout\ : std_logic;
SIGNAL \add_instance|main_alu|carry~5_combout\ : std_logic;
SIGNAL \add_instance|rf_d3_mux|sel_out[6]~6_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[3][6]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[2][6]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[1][6]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[0][6]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux25~0_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux25~1_combout\ : std_logic;
SIGNAL \add_instance|alu_b_forwarding_mux|sel_out[6]~1_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[6]~20_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[6]~21_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[5][6]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[4][6]~feeder_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[4][6]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[6][6]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux9~0_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux9~1_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux9~2_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux9~3_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux9~4_combout\ : std_logic;
SIGNAL \add_instance|alu_a_forwarding_mux|sel_out[6]~12_combout\ : std_logic;
SIGNAL \add_instance|alu_a_forwarding_mux|sel_out[6]~13_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[6]~6_combout\ : std_logic;
SIGNAL \add_instance|main_alu|result~4_combout\ : std_logic;
SIGNAL \add_instance|ex_mem_register|za_out_MEM[7]~feeder_combout\ : std_logic;
SIGNAL \add_instance|main_alu|carry~6_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[6][7]~feeder_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[6][7]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[4][7]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux8~0_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[5][7]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux8~1_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[2][7]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[1][7]~feeder_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[1][7]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[0][7]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux8~2_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux8~3_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux8~4_combout\ : std_logic;
SIGNAL \add_instance|alu_a_forwarding_mux|sel_out[7]~14_combout\ : std_logic;
SIGNAL \add_instance|alu_a_forwarding_mux|sel_out[7]~15_combout\ : std_logic;
SIGNAL \add_instance|main_alu|sum~2_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[7]~7_combout\ : std_logic;
SIGNAL \add_instance|rf_d3_mux|sel_out[7]~7_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[3][7]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux24~0_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux24~1_combout\ : std_logic;
SIGNAL \add_instance|alu_b_forwarding_mux|sel_out[7]~2_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[7]~22_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[7]~23_combout\ : std_logic;
SIGNAL \add_instance|main_alu|carry~7_combout\ : std_logic;
SIGNAL \add_instance|mem_wb_register|za_out_WB_in[8]~feeder_combout\ : std_logic;
SIGNAL \add_instance|rf_d3_mux|sel_out[8]~8_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[6][8]~feeder_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[6][8]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[4][8]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux7~0_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[5][8]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux7~1_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[2][8]~feeder_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[2][8]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[3][8]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[0][8]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[1][8]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux7~2_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux7~3_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux7~4_combout\ : std_logic;
SIGNAL \add_instance|alu_a_forwarding_mux|sel_out[8]~16_combout\ : std_logic;
SIGNAL \add_instance|alu_a_forwarding_mux|sel_out[8]~17_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux23~0_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux23~1_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[8]~26_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[8]~25_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[8]~27_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[8]~8_combout\ : std_logic;
SIGNAL \add_instance|main_alu|carry~8_combout\ : std_logic;
SIGNAL \add_instance|main_alu|carry~9_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[9]~29_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[9]~28_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[9]~30_combout\ : std_logic;
SIGNAL \add_instance|main_alu|sum~3_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[9]~9_combout\ : std_logic;
SIGNAL \add_instance|rf_d3_mux|sel_out[9]~9_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[1][9]~feeder_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[1][9]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux22~0_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux22~1_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[10]~31_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[10]~32_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[10]~33_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[6][10]~feeder_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[6][10]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[4][10]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux5~0_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[5][10]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux5~1_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[2][10]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[1][10]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux5~2_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[3][10]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux5~3_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux5~4_combout\ : std_logic;
SIGNAL \add_instance|alu_a_forwarding_mux|sel_out[10]~20_combout\ : std_logic;
SIGNAL \add_instance|alu_a_forwarding_mux|sel_out[10]~21_combout\ : std_logic;
SIGNAL \add_instance|main_alu|carry~10_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[10]~10_combout\ : std_logic;
SIGNAL \add_instance|mem_wb_register|za_out_WB_in[10]~feeder_combout\ : std_logic;
SIGNAL \add_instance|rf_d3_mux|sel_out[10]~10_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[0][10]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux21~0_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux21~1_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[11]~34_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[11]~35_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[11]~36_combout\ : std_logic;
SIGNAL \add_instance|main_alu|carry~11_combout\ : std_logic;
SIGNAL \add_instance|main_alu|carry~12_combout\ : std_logic;
SIGNAL \add_instance|main_alu|sum~4_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[11]~11_combout\ : std_logic;
SIGNAL \add_instance|mem_wb_register|alu_c_WB_in[11]~feeder_combout\ : std_logic;
SIGNAL \add_instance|rf_d3_mux|sel_out[11]~11_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[12]~38_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[3][12]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[2][12]~feeder_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[2][12]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[0][12]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[1][12]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux19~0_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux19~1_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[12]~37_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[12]~39_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux3~2_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux3~3_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[4][12]~feeder_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[4][12]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[6][12]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux3~0_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[5][12]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux3~1_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux3~4_combout\ : std_logic;
SIGNAL \add_instance|alu_a_forwarding_mux|sel_out[12]~24_combout\ : std_logic;
SIGNAL \add_instance|alu_a_forwarding_mux|sel_out[12]~25_combout\ : std_logic;
SIGNAL \add_instance|main_alu|carry~13_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[12]~12_combout\ : std_logic;
SIGNAL \add_instance|rf_d3_mux|sel_out[12]~12_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[13]~41_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux18~0_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux18~1_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[13]~40_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[13]~42_combout\ : std_logic;
SIGNAL \add_instance|main_alu|carry~14_combout\ : std_logic;
SIGNAL \add_instance|main_alu|carry~15_combout\ : std_logic;
SIGNAL \add_instance|main_alu|sum~5_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[13]~13_combout\ : std_logic;
SIGNAL \add_instance|mem_wb_register|alu_c_WB_in[13]~feeder_combout\ : std_logic;
SIGNAL \add_instance|rf_d3_mux|sel_out[13]~13_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[14]~44_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[14]~43_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[14]~45_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[6][14]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[4][14]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux1~0_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[5][14]~q\ : std_logic;
SIGNAL \add_instance|incrementer|sum~13_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[7][14]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux1~1_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[1][14]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[0][14]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux1~2_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[3][14]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux1~3_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux1~4_combout\ : std_logic;
SIGNAL \add_instance|alu_a_forwarding_mux|sel_out[14]~28_combout\ : std_logic;
SIGNAL \add_instance|alu_a_forwarding_mux|sel_out[14]~29_combout\ : std_logic;
SIGNAL \add_instance|main_alu|carry~16_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[14]~14_combout\ : std_logic;
SIGNAL \add_instance|mem_wb_register|alu_c_WB_in[14]~feeder_combout\ : std_logic;
SIGNAL \add_instance|rf_d3_mux|sel_out[14]~14_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[2][14]~feeder_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[2][14]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux17~0_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux17~1_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[15]~46_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[15]~47_combout\ : std_logic;
SIGNAL \add_instance|alu_b_mux|sel_out[15]~48_combout\ : std_logic;
SIGNAL \add_instance|main_alu|sum~6_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[15]~15_combout\ : std_logic;
SIGNAL \add_instance|rf_d3_mux|sel_out[15]~15_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[2][15]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux0~2_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux0~3_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[4][15]~feeder_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[4][15]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[6][15]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux0~0_combout\ : std_logic;
SIGNAL \add_instance|incrementer|sum~14_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[7][15]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[5][15]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux0~1_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux0~4_combout\ : std_logic;
SIGNAL \add_instance|alu_a_forwarding_mux|sel_out[15]~30_combout\ : std_logic;
SIGNAL \add_instance|alu_a_forwarding_mux|sel_out[15]~31_combout\ : std_logic;
SIGNAL \add_instance|main_alu|carry~17_combout\ : std_logic;
SIGNAL \add_instance|main_alu|carry~18_combout\ : std_logic;
SIGNAL \add_instance|main_alu|carry~19_combout\ : std_logic;
SIGNAL \add_instance|cc|output[0]~19_combout\ : std_logic;
SIGNAL \add_instance|Mux22~0_combout\ : std_logic;
SIGNAL \add_instance|Mux19~1_combout\ : std_logic;
SIGNAL \add_instance|cc|output[1]~3_combout\ : std_logic;
SIGNAL \add_instance|cc|output[1]~5_combout\ : std_logic;
SIGNAL \add_instance|cc|output[1]~6_combout\ : std_logic;
SIGNAL \add_instance|cc|output[1]~4_combout\ : std_logic;
SIGNAL \add_instance|cc|output[1]~1_combout\ : std_logic;
SIGNAL \add_instance|cc|output[1]~0_combout\ : std_logic;
SIGNAL \add_instance|cc|output[1]~2_combout\ : std_logic;
SIGNAL \add_instance|cc|output[1]~7_combout\ : std_logic;
SIGNAL \add_instance|cc|output[1]~8_combout\ : std_logic;
SIGNAL \add_instance|cc|output[1]~9_combout\ : std_logic;
SIGNAL \add_instance|cc|output[1]~10_combout\ : std_logic;
SIGNAL \add_instance|cc|output[1]~11_combout\ : std_logic;
SIGNAL \add_instance|main_alu|sum~8_combout\ : std_logic;
SIGNAL \add_instance|cc|output[1]~14_combout\ : std_logic;
SIGNAL \add_instance|main_alu|sum~7_combout\ : std_logic;
SIGNAL \add_instance|cc|output[1]~13_combout\ : std_logic;
SIGNAL \add_instance|main_alu|sum~9_combout\ : std_logic;
SIGNAL \add_instance|cc|output[1]~15_combout\ : std_logic;
SIGNAL \add_instance|cc|output[1]~16_combout\ : std_logic;
SIGNAL \add_instance|cc|output[1]~12_combout\ : std_logic;
SIGNAL \add_instance|cc|output[1]~17_combout\ : std_logic;
SIGNAL \add_instance|cc|output[1]~18_combout\ : std_logic;
SIGNAL \add_instance|Mux6~0_combout\ : std_logic;
SIGNAL \add_instance|Mux19~0_combout\ : std_logic;
SIGNAL \add_instance|rf|Decoder0~0_combout\ : std_logic;
SIGNAL \add_instance|rf|Decoder0~6_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[1][0]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux15~2_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux15~3_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[6][0]~feeder_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[6][0]~q\ : std_logic;
SIGNAL \add_instance|rf|RF[4][0]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux15~0_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[5][0]~q\ : std_logic;
SIGNAL \add_instance|rf|Mux15~1_combout\ : std_logic;
SIGNAL \add_instance|rf|Mux15~4_combout\ : std_logic;
SIGNAL \add_instance|alu_a_forwarding_mux|sel_out[0]~0_combout\ : std_logic;
SIGNAL \add_instance|alu_a_forwarding_mux|sel_out[0]~1_combout\ : std_logic;
SIGNAL \add_instance|main_alu|C[0]~0_combout\ : std_logic;
SIGNAL \add_instance|rf_d3_mux|sel_out[0]~0_combout\ : std_logic;
SIGNAL \add_instance|id_or_register|rf_d3_select_OR\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \add_instance|id_or_register|za_out_OR\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \add_instance|id_or_register|alu_b_select_OR\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \add_instance|or_ex_register|rf_a1_EX_in\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \add_instance|or_ex_register|rf_d1_EX_in\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \add_instance|or_ex_register|alu_select_EX_in\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|counter_reg_bit\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \add_instance|mem_wb_register|rf_a3_WB_in\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \add_instance|ex_mem_register|rf_d3_select_MEM\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \add_instance|ex_mem_register|za_out_MEM\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \add_instance|id_or_register|alu_select_OR\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \add_instance|mem_wb_register|za_out_WB_in\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \add_instance|id_or_register|rf_a1_OR_in\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \add_instance|mem_wb_register|alu_c_WB_in\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \add_instance|ex_mem_register|alu_c_MEM\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \add_instance|or_ex_register|rf_a2_EX_in\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \add_instance|or_ex_register|alu_b_select_EX_in\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \add_instance|or_ex_register|za_out_EX\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \add_instance|if_id_register|instruction_ID_in\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \add_instance|or_ex_register|rf_d2_EX\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \add_instance|or_ex_register|rf_d3_select_EX\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|dffe3a\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \add_instance|forwarding_unit|forward_select_b\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \add_instance|id_or_register|rf_a2_OR_in\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \add_instance|mem_wb_register|rf_d3_select_WB_in\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \add_instance|cc|output\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \ALT_INV_input_vector[1]~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_input_vector[0]~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_input_vector[1]~input_o\ : std_logic;

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

\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a1_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \add_instance|rf_a3_mux|sel_out[2]~4_combout\ & \add_instance|rf_a3_mux|sel_out[1]~1_combout\ & \add_instance|rf_a3_mux|sel_out[0]~3_combout\);

\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a1_PORTAADDR_bus\ <= (\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & 
\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|counter_reg_bit\(0));

\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a1_PORTBADDR_bus\ <= (\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|dffe3a[1]~_wirecell_combout\ & 
\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|dffe3a\(0));

\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a1~portbdataout\ <= \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a1_PORTBDATAOUT_bus\(0);
\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a2\ <= \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a1_PORTBDATAOUT_bus\(1);
\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a3\ <= \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a1_PORTBDATAOUT_bus\(2);

\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd
& gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & \add_instance|Mux19~0_combout\);

\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTAADDR_bus\ <= (\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & 
\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|counter_reg_bit\(0));

\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBADDR_bus\ <= (\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|dffe3a[1]~_wirecell_combout\ & 
\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|dffe3a\(0));

\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a0~portbdataout\ <= \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\(0);

\add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\add_instance|rf|RF[7][6]~q\ & \add_instance|rf|RF[7][5]~q\ & \add_instance|rf|RF[7][4]~q\ & \add_instance|rf|RF[7][3]~q\ & \add_instance|rf|RF[7][2]~q\ & 
\add_instance|rf|RF[7][1]~q\ & \add_instance|rf|RF[7][0]~q\ & \~GND~combout\);

\add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a0~portadataout\ <= \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(0);
\add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a1\ <= \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(1);
\add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a2\ <= \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(2);
\add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a3\ <= \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(3);
\add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a4\ <= \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(4);
\add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a5\ <= \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(5);
\add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a6\ <= \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(6);
\add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a7\ <= \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\(7);

\input_vector[0]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \input_vector[0]~input_o\);

\input_vector[1]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \input_vector[1]~input_o\);
\ALT_INV_input_vector[1]~inputclkctrl_outclk\ <= NOT \input_vector[1]~inputclkctrl_outclk\;
\ALT_INV_input_vector[0]~inputclkctrl_outclk\ <= NOT \input_vector[0]~inputclkctrl_outclk\;
\ALT_INV_input_vector[1]~input_o\ <= NOT \input_vector[1]~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X0_Y18_N16
\output_vector[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|rf_d3_mux|sel_out[0]~0_combout\,
	devoe => ww_devoe,
	o => \output_vector[0]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\output_vector[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|rf_d3_mux|sel_out[1]~1_combout\,
	devoe => ww_devoe,
	o => \output_vector[1]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\output_vector[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|rf_d3_mux|sel_out[2]~2_combout\,
	devoe => ww_devoe,
	o => \output_vector[2]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\output_vector[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|rf_d3_mux|sel_out[3]~3_combout\,
	devoe => ww_devoe,
	o => \output_vector[3]~output_o\);

-- Location: IOOBUF_X11_Y24_N16
\output_vector[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|rf_d3_mux|sel_out[4]~4_combout\,
	devoe => ww_devoe,
	o => \output_vector[4]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\output_vector[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|rf_d3_mux|sel_out[5]~5_combout\,
	devoe => ww_devoe,
	o => \output_vector[5]~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\output_vector[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|rf_d3_mux|sel_out[6]~6_combout\,
	devoe => ww_devoe,
	o => \output_vector[6]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\output_vector[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|rf_d3_mux|sel_out[7]~7_combout\,
	devoe => ww_devoe,
	o => \output_vector[7]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\output_vector[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|rf_d3_mux|sel_out[8]~8_combout\,
	devoe => ww_devoe,
	o => \output_vector[8]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\output_vector[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|rf_d3_mux|sel_out[9]~9_combout\,
	devoe => ww_devoe,
	o => \output_vector[9]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\output_vector[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|rf_d3_mux|sel_out[10]~10_combout\,
	devoe => ww_devoe,
	o => \output_vector[10]~output_o\);

-- Location: IOOBUF_X11_Y24_N9
\output_vector[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|rf_d3_mux|sel_out[11]~11_combout\,
	devoe => ww_devoe,
	o => \output_vector[11]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\output_vector[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|rf_d3_mux|sel_out[12]~12_combout\,
	devoe => ww_devoe,
	o => \output_vector[12]~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\output_vector[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|rf_d3_mux|sel_out[13]~13_combout\,
	devoe => ww_devoe,
	o => \output_vector[13]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\output_vector[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|rf_d3_mux|sel_out[14]~14_combout\,
	devoe => ww_devoe,
	o => \output_vector[14]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\output_vector[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|rf_d3_mux|sel_out[15]~15_combout\,
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

-- Location: LCCOMB_X14_Y12_N10
\add_instance|rf|RF[7][0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|RF[7][0]~0_combout\ = !\add_instance|rf|RF[7][0]~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|rf|RF[7][0]~q\,
	combout => \add_instance|rf|RF[7][0]~0_combout\);

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

-- Location: FF_X14_Y12_N11
\add_instance|rf|RF[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|RF[7][0]~0_combout\,
	clrn => \ALT_INV_input_vector[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[7][0]~q\);

-- Location: LCCOMB_X17_Y12_N0
\add_instance|incrementer|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|incrementer|sum~0_combout\ = \add_instance|rf|RF[7][0]~q\ $ (\add_instance|rf|RF[7][1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][0]~q\,
	datac => \add_instance|rf|RF[7][1]~q\,
	combout => \add_instance|incrementer|sum~0_combout\);

-- Location: FF_X17_Y12_N1
\add_instance|rf|RF[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|incrementer|sum~0_combout\,
	clrn => \ALT_INV_input_vector[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[7][1]~q\);

-- Location: LCCOMB_X17_Y12_N6
\add_instance|incrementer|sum~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|incrementer|sum~1_combout\ = \add_instance|rf|RF[7][2]~q\ $ (((\add_instance|rf|RF[7][0]~q\ & \add_instance|rf|RF[7][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][0]~q\,
	datac => \add_instance|rf|RF[7][2]~q\,
	datad => \add_instance|rf|RF[7][1]~q\,
	combout => \add_instance|incrementer|sum~1_combout\);

-- Location: FF_X17_Y12_N7
\add_instance|rf|RF[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|incrementer|sum~1_combout\,
	clrn => \ALT_INV_input_vector[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[7][2]~q\);

-- Location: LCCOMB_X17_Y12_N20
\add_instance|incrementer|sum~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|incrementer|sum~2_combout\ = \add_instance|rf|RF[7][3]~q\ $ (((\add_instance|rf|RF[7][0]~q\ & (\add_instance|rf|RF[7][1]~q\ & \add_instance|rf|RF[7][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][0]~q\,
	datab => \add_instance|rf|RF[7][1]~q\,
	datac => \add_instance|rf|RF[7][3]~q\,
	datad => \add_instance|rf|RF[7][2]~q\,
	combout => \add_instance|incrementer|sum~2_combout\);

-- Location: FF_X17_Y12_N21
\add_instance|rf|RF[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|incrementer|sum~2_combout\,
	clrn => \ALT_INV_input_vector[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[7][3]~q\);

-- Location: LCCOMB_X17_Y12_N12
\add_instance|incrementer|carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|incrementer|carry~0_combout\ = (\add_instance|rf|RF[7][2]~q\ & (\add_instance|rf|RF[7][3]~q\ & (\add_instance|rf|RF[7][0]~q\ & \add_instance|rf|RF[7][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][2]~q\,
	datab => \add_instance|rf|RF[7][3]~q\,
	datac => \add_instance|rf|RF[7][0]~q\,
	datad => \add_instance|rf|RF[7][1]~q\,
	combout => \add_instance|incrementer|carry~0_combout\);

-- Location: LCCOMB_X17_Y12_N22
\add_instance|incrementer|sum~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|incrementer|sum~3_combout\ = \add_instance|rf|RF[7][4]~q\ $ (\add_instance|incrementer|carry~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|rf|RF[7][4]~q\,
	datad => \add_instance|incrementer|carry~0_combout\,
	combout => \add_instance|incrementer|sum~3_combout\);

-- Location: FF_X17_Y12_N23
\add_instance|rf|RF[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|incrementer|sum~3_combout\,
	clrn => \ALT_INV_input_vector[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[7][4]~q\);

-- Location: LCCOMB_X17_Y12_N8
\add_instance|incrementer|sum~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|incrementer|sum~4_combout\ = \add_instance|rf|RF[7][5]~q\ $ (((\add_instance|incrementer|carry~0_combout\ & \add_instance|rf|RF[7][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|incrementer|carry~0_combout\,
	datac => \add_instance|rf|RF[7][5]~q\,
	datad => \add_instance|rf|RF[7][4]~q\,
	combout => \add_instance|incrementer|sum~4_combout\);

-- Location: FF_X17_Y12_N9
\add_instance|rf|RF[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|incrementer|sum~4_combout\,
	clrn => \ALT_INV_input_vector[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[7][5]~q\);

-- Location: LCCOMB_X17_Y12_N14
\add_instance|incrementer|sum~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|incrementer|sum~5_combout\ = \add_instance|rf|RF[7][6]~q\ $ (((\add_instance|incrementer|carry~0_combout\ & (\add_instance|rf|RF[7][5]~q\ & \add_instance|rf|RF[7][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|incrementer|carry~0_combout\,
	datab => \add_instance|rf|RF[7][5]~q\,
	datac => \add_instance|rf|RF[7][6]~q\,
	datad => \add_instance|rf|RF[7][4]~q\,
	combout => \add_instance|incrementer|sum~5_combout\);

-- Location: FF_X17_Y12_N15
\add_instance|rf|RF[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|incrementer|sum~5_combout\,
	clrn => \ALT_INV_input_vector[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[7][6]~q\);

-- Location: LCCOMB_X17_Y12_N28
\add_instance|rom_unit|rom_data~2050\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rom_unit|rom_data~2050_combout\ = (\add_instance|rf|RF[7][3]~q\ & ((\add_instance|rf|RF[7][2]~q\) # ((\add_instance|rf|RF[7][0]~q\ & \add_instance|rf|RF[7][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][2]~q\,
	datab => \add_instance|rf|RF[7][3]~q\,
	datac => \add_instance|rf|RF[7][0]~q\,
	datad => \add_instance|rf|RF[7][1]~q\,
	combout => \add_instance|rom_unit|rom_data~2050_combout\);

-- Location: LCCOMB_X17_Y12_N24
\add_instance|rom_unit|rom_data~2051\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rom_unit|rom_data~2051_combout\ = (!\add_instance|rf|RF[7][4]~q\ & (!\add_instance|rf|RF[7][5]~q\ & (!\add_instance|rf|RF[7][6]~q\ & !\add_instance|rom_unit|rom_data~2050_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][4]~q\,
	datab => \add_instance|rf|RF[7][5]~q\,
	datac => \add_instance|rf|RF[7][6]~q\,
	datad => \add_instance|rom_unit|rom_data~2050_combout\,
	combout => \add_instance|rom_unit|rom_data~2051_combout\);

-- Location: FF_X17_Y12_N25
\add_instance|if_id_register|instruction_ID_in[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rom_unit|rom_data~2051_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|if_id_register|instruction_ID_in\(12));

-- Location: LCCOMB_X17_Y12_N26
\add_instance|rom_unit|rom_data~2052\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rom_unit|rom_data~2052_combout\ = (\add_instance|rf|RF[7][3]~q\) # ((\add_instance|rf|RF[7][2]~q\ & (\add_instance|rf|RF[7][0]~q\ & \add_instance|rf|RF[7][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][2]~q\,
	datab => \add_instance|rf|RF[7][3]~q\,
	datac => \add_instance|rf|RF[7][0]~q\,
	datad => \add_instance|rf|RF[7][1]~q\,
	combout => \add_instance|rom_unit|rom_data~2052_combout\);

-- Location: LCCOMB_X17_Y12_N18
\add_instance|rom_unit|rom_data~2053\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rom_unit|rom_data~2053_combout\ = (!\add_instance|rom_unit|rom_data~2052_combout\ & (!\add_instance|rf|RF[7][5]~q\ & (!\add_instance|rf|RF[7][6]~q\ & !\add_instance|rf|RF[7][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rom_unit|rom_data~2052_combout\,
	datab => \add_instance|rf|RF[7][5]~q\,
	datac => \add_instance|rf|RF[7][6]~q\,
	datad => \add_instance|rf|RF[7][4]~q\,
	combout => \add_instance|rom_unit|rom_data~2053_combout\);

-- Location: FF_X17_Y12_N19
\add_instance|if_id_register|instruction_ID_in[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rom_unit|rom_data~2053_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|if_id_register|instruction_ID_in\(13));

-- Location: LCCOMB_X16_Y11_N6
\add_instance|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux10~0_combout\ = (\add_instance|if_id_register|instruction_ID_in\(12) & \add_instance|if_id_register|instruction_ID_in\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|if_id_register|instruction_ID_in\(12),
	datad => \add_instance|if_id_register|instruction_ID_in\(13),
	combout => \add_instance|Mux10~0_combout\);

-- Location: LCCOMB_X16_Y14_N28
\add_instance|id_or_register|rf_d3_select_OR[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|id_or_register|rf_d3_select_OR[0]~feeder_combout\ = \add_instance|Mux10~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \add_instance|Mux10~0_combout\,
	combout => \add_instance|id_or_register|rf_d3_select_OR[0]~feeder_combout\);

-- Location: FF_X16_Y14_N29
\add_instance|id_or_register|rf_d3_select_OR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|id_or_register|rf_d3_select_OR[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|id_or_register|rf_d3_select_OR\(0));

-- Location: LCCOMB_X16_Y14_N22
\add_instance|or_ex_register|rf_d3_select_EX[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|or_ex_register|rf_d3_select_EX[0]~feeder_combout\ = \add_instance|id_or_register|rf_d3_select_OR\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \add_instance|id_or_register|rf_d3_select_OR\(0),
	combout => \add_instance|or_ex_register|rf_d3_select_EX[0]~feeder_combout\);

-- Location: FF_X16_Y14_N23
\add_instance|or_ex_register|rf_d3_select_EX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|or_ex_register|rf_d3_select_EX[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|rf_d3_select_EX\(0));

-- Location: FF_X13_Y14_N9
\add_instance|ex_mem_register|rf_d3_select_MEM[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|or_ex_register|rf_d3_select_EX\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|ex_mem_register|rf_d3_select_MEM\(0));

-- Location: FF_X13_Y14_N3
\add_instance|mem_wb_register|rf_d3_select_WB_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|ex_mem_register|rf_d3_select_MEM\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|mem_wb_register|rf_d3_select_WB_in\(0));

-- Location: LCCOMB_X14_Y12_N0
\add_instance|rom_unit|rom_data~2054\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rom_unit|rom_data~2054_combout\ = (\add_instance|rf|RF[7][0]~q\ & (!\add_instance|rf|RF[7][3]~q\ & ((!\add_instance|rf|RF[7][1]~q\) # (!\add_instance|rf|RF[7][2]~q\)))) # (!\add_instance|rf|RF[7][0]~q\ & (\add_instance|rf|RF[7][3]~q\ & 
-- (!\add_instance|rf|RF[7][2]~q\ & !\add_instance|rf|RF[7][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][0]~q\,
	datab => \add_instance|rf|RF[7][3]~q\,
	datac => \add_instance|rf|RF[7][2]~q\,
	datad => \add_instance|rf|RF[7][1]~q\,
	combout => \add_instance|rom_unit|rom_data~2054_combout\);

-- Location: LCCOMB_X14_Y12_N20
\add_instance|rom_unit|rom_data~2055\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rom_unit|rom_data~2055_combout\ = (!\add_instance|rf|RF[7][5]~q\ & (!\add_instance|rf|RF[7][6]~q\ & (\add_instance|rom_unit|rom_data~2054_combout\ & !\add_instance|rf|RF[7][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][5]~q\,
	datab => \add_instance|rf|RF[7][6]~q\,
	datac => \add_instance|rom_unit|rom_data~2054_combout\,
	datad => \add_instance|rf|RF[7][4]~q\,
	combout => \add_instance|rom_unit|rom_data~2055_combout\);

-- Location: FF_X14_Y12_N21
\add_instance|if_id_register|instruction_ID_in[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rom_unit|rom_data~2055_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|if_id_register|instruction_ID_in\(9));

-- Location: LCCOMB_X14_Y12_N12
\add_instance|id_or_register|rf_a1_OR_in[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|id_or_register|rf_a1_OR_in[0]~feeder_combout\ = \add_instance|if_id_register|instruction_ID_in\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \add_instance|if_id_register|instruction_ID_in\(9),
	combout => \add_instance|id_or_register|rf_a1_OR_in[0]~feeder_combout\);

-- Location: FF_X14_Y12_N13
\add_instance|id_or_register|rf_a1_OR_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|id_or_register|rf_a1_OR_in[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|id_or_register|rf_a1_OR_in\(0));

-- Location: FF_X14_Y14_N31
\add_instance|or_ex_register|rf_a1_EX_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|id_or_register|rf_a1_OR_in\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|rf_a1_EX_in\(0));

-- Location: LCCOMB_X16_Y11_N18
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: M9K_X15_Y11_N0
\add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init2 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init1 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	mem_init0 => X"00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000500050000500090000480049000500090000F00020000E80010000E00008000D80004000D00002000C80001000C00000",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/DUT.ram0_ROM128_b6a3b0fd.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "PipelinedDatapath:add_instance|ROM128:rom_unit|altsyncram:rom_data_rtl_0|altsyncram_4c61:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 8,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 255,
	port_a_logical_ram_depth => 256,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 8,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	portaaddr => \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a0_PORTADATAOUT_bus\);

-- Location: LCCOMB_X16_Y11_N26
\add_instance|rf_a3_mux|sel_out[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_a3_mux|sel_out[0]~2_combout\ = (\add_instance|if_id_register|instruction_ID_in\(13) & (\add_instance|if_id_register|instruction_ID_in\(12) & (\add_instance|if_id_register|instruction_ID_in\(9)))) # 
-- (!\add_instance|if_id_register|instruction_ID_in\(13) & (!\add_instance|if_id_register|instruction_ID_in\(12) & ((\add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a6\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|if_id_register|instruction_ID_in\(13),
	datab => \add_instance|if_id_register|instruction_ID_in\(12),
	datac => \add_instance|if_id_register|instruction_ID_in\(9),
	datad => \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a6\,
	combout => \add_instance|rf_a3_mux|sel_out[0]~2_combout\);

-- Location: LCCOMB_X17_Y11_N24
\add_instance|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux11~0_combout\ = (!\add_instance|if_id_register|instruction_ID_in\(13) & !\add_instance|if_id_register|instruction_ID_in\(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|if_id_register|instruction_ID_in\(13),
	datac => \add_instance|if_id_register|instruction_ID_in\(12),
	combout => \add_instance|Mux11~0_combout\);

-- Location: LCCOMB_X16_Y11_N0
\add_instance|rf_a3_mux|sel_out[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_a3_mux|sel_out[0]~3_combout\ = (\add_instance|rf_a3_mux|sel_out[0]~2_combout\) # ((\add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a3\ & (\add_instance|Mux10~0_combout\ $ (!\add_instance|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux10~0_combout\,
	datab => \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a3\,
	datac => \add_instance|rf_a3_mux|sel_out[0]~2_combout\,
	datad => \add_instance|Mux11~0_combout\,
	combout => \add_instance|rf_a3_mux|sel_out[0]~3_combout\);

-- Location: LCCOMB_X16_Y13_N18
\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|add_sub4_result_int[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|add_sub4_result_int[0]~0_combout\ = \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|counter_reg_bit\(0) $ (VCC)
-- \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|add_sub4_result_int[0]~1\ = CARRY(\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|counter_reg_bit\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|counter_reg_bit\(0),
	datad => VCC,
	combout => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|add_sub4_result_int[0]~0_combout\,
	cout => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|add_sub4_result_int[0]~1\);

-- Location: LCCOMB_X16_Y13_N20
\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|add_sub4_result_int[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|add_sub4_result_int[1]~2_combout\ = (\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & 
-- (!\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|add_sub4_result_int[0]~1\)) # (!\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|counter_reg_bit\(1) & 
-- ((\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|add_sub4_result_int[0]~1\) # (GND)))
-- \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|add_sub4_result_int[1]~3\ = CARRY((!\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|add_sub4_result_int[0]~1\) # 
-- (!\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|counter_reg_bit\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|counter_reg_bit\(1),
	datad => VCC,
	cin => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|add_sub4_result_int[0]~1\,
	combout => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|add_sub4_result_int[1]~2_combout\,
	cout => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|add_sub4_result_int[1]~3\);

-- Location: LCCOMB_X16_Y13_N14
\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|trigger_mux_w[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|trigger_mux_w[1]~1_combout\ = (!\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|add_sub4_result_int[2]~4_combout\ & 
-- (\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|add_sub4_result_int[1]~2_combout\ & ((\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|counter_reg_bit\(0)) # 
-- (!\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|counter_reg_bit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|add_sub4_result_int[2]~4_combout\,
	datab => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|add_sub4_result_int[1]~2_combout\,
	datac => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|counter_reg_bit\(1),
	datad => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|counter_reg_bit\(0),
	combout => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|trigger_mux_w[1]~1_combout\);

-- Location: FF_X16_Y13_N15
\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|counter_reg_bit[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|trigger_mux_w[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|counter_reg_bit\(1));

-- Location: LCCOMB_X16_Y13_N22
\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|add_sub4_result_int[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|add_sub4_result_int[2]~4_combout\ = !\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|add_sub4_result_int[1]~3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|add_sub4_result_int[1]~3\,
	combout => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|add_sub4_result_int[2]~4_combout\);

-- Location: LCCOMB_X16_Y13_N12
\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|trigger_mux_w[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|trigger_mux_w[0]~0_combout\ = (!\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|add_sub4_result_int[2]~4_combout\ & 
-- (\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|add_sub4_result_int[0]~0_combout\ & ((\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|counter_reg_bit\(0)) # 
-- (!\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|counter_reg_bit\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|add_sub4_result_int[2]~4_combout\,
	datab => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|counter_reg_bit\(1),
	datac => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|counter_reg_bit\(0),
	datad => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|add_sub4_result_int[0]~0_combout\,
	combout => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|trigger_mux_w[0]~0_combout\);

-- Location: FF_X16_Y13_N13
\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|counter_reg_bit[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|trigger_mux_w[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|counter_reg_bit\(0));

-- Location: LCCOMB_X16_Y13_N4
\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|dffe3a[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|dffe3a[0]~feeder_combout\ = \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|counter_reg_bit\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|counter_reg_bit\(0),
	combout => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|dffe3a[0]~feeder_combout\);

-- Location: FF_X16_Y13_N5
\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|dffe3a[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|dffe3a[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|dffe3a\(0));

-- Location: LCCOMB_X16_Y13_N26
\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|dffe3a[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|dffe3a[1]~0_combout\ = !\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|counter_reg_bit\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|cntr1|counter_reg_bit\(1),
	combout => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|dffe3a[1]~0_combout\);

-- Location: FF_X16_Y13_N27
\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|dffe3a[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|dffe3a[1]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|dffe3a\(1));

-- Location: LCCOMB_X16_Y13_N0
\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|dffe3a[1]~_wirecell\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|dffe3a[1]~_wirecell_combout\ = !\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|dffe3a\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|dffe3a\(1),
	combout => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|dffe3a[1]~_wirecell_combout\);

-- Location: LCCOMB_X14_Y12_N30
\add_instance|rom_unit|rom_data~2048\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rom_unit|rom_data~2048_combout\ = (\add_instance|rf|RF[7][3]~q\ & (!\add_instance|rf|RF[7][2]~q\ & (\add_instance|rf|RF[7][0]~q\ $ (\add_instance|rf|RF[7][1]~q\)))) # (!\add_instance|rf|RF[7][3]~q\ & (((\add_instance|rf|RF[7][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][0]~q\,
	datab => \add_instance|rf|RF[7][3]~q\,
	datac => \add_instance|rf|RF[7][2]~q\,
	datad => \add_instance|rf|RF[7][1]~q\,
	combout => \add_instance|rom_unit|rom_data~2048_combout\);

-- Location: LCCOMB_X14_Y12_N14
\add_instance|rom_unit|rom_data~2049\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rom_unit|rom_data~2049_combout\ = (!\add_instance|rf|RF[7][5]~q\ & (!\add_instance|rf|RF[7][6]~q\ & (\add_instance|rom_unit|rom_data~2048_combout\ & !\add_instance|rf|RF[7][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][5]~q\,
	datab => \add_instance|rf|RF[7][6]~q\,
	datac => \add_instance|rom_unit|rom_data~2048_combout\,
	datad => \add_instance|rf|RF[7][4]~q\,
	combout => \add_instance|rom_unit|rom_data~2049_combout\);

-- Location: FF_X14_Y12_N15
\add_instance|if_id_register|instruction_ID_in[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rom_unit|rom_data~2049_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|if_id_register|instruction_ID_in\(10));

-- Location: LCCOMB_X16_Y11_N28
\add_instance|rf_a3_mux|sel_out[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_a3_mux|sel_out[1]~0_combout\ = (\add_instance|if_id_register|instruction_ID_in\(12) & (\add_instance|if_id_register|instruction_ID_in\(10) & ((\add_instance|if_id_register|instruction_ID_in\(13))))) # 
-- (!\add_instance|if_id_register|instruction_ID_in\(12) & (((\add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a7\ & !\add_instance|if_id_register|instruction_ID_in\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|if_id_register|instruction_ID_in\(12),
	datab => \add_instance|if_id_register|instruction_ID_in\(10),
	datac => \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a7\,
	datad => \add_instance|if_id_register|instruction_ID_in\(13),
	combout => \add_instance|rf_a3_mux|sel_out[1]~0_combout\);

-- Location: LCCOMB_X16_Y11_N24
\add_instance|rf_a3_mux|sel_out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_a3_mux|sel_out[1]~1_combout\ = (\add_instance|rf_a3_mux|sel_out[1]~0_combout\) # ((\add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a4\ & (\add_instance|Mux10~0_combout\ $ (!\add_instance|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux10~0_combout\,
	datab => \add_instance|Mux11~0_combout\,
	datac => \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a4\,
	datad => \add_instance|rf_a3_mux|sel_out[1]~0_combout\,
	combout => \add_instance|rf_a3_mux|sel_out[1]~1_combout\);

-- Location: LCCOMB_X14_Y12_N22
\add_instance|rom_unit|rom_data~2056\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rom_unit|rom_data~2056_combout\ = (!\add_instance|rf|RF[7][3]~q\ & (\add_instance|rf|RF[7][2]~q\ & ((!\add_instance|rf|RF[7][1]~q\) # (!\add_instance|rf|RF[7][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][0]~q\,
	datab => \add_instance|rf|RF[7][3]~q\,
	datac => \add_instance|rf|RF[7][2]~q\,
	datad => \add_instance|rf|RF[7][1]~q\,
	combout => \add_instance|rom_unit|rom_data~2056_combout\);

-- Location: LCCOMB_X14_Y12_N26
\add_instance|rom_unit|rom_data~2057\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rom_unit|rom_data~2057_combout\ = (!\add_instance|rf|RF[7][5]~q\ & (!\add_instance|rf|RF[7][6]~q\ & (\add_instance|rom_unit|rom_data~2056_combout\ & !\add_instance|rf|RF[7][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][5]~q\,
	datab => \add_instance|rf|RF[7][6]~q\,
	datac => \add_instance|rom_unit|rom_data~2056_combout\,
	datad => \add_instance|rf|RF[7][4]~q\,
	combout => \add_instance|rom_unit|rom_data~2057_combout\);

-- Location: FF_X14_Y12_N27
\add_instance|if_id_register|instruction_ID_in[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rom_unit|rom_data~2057_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|if_id_register|instruction_ID_in\(11));

-- Location: LCCOMB_X14_Y11_N20
\add_instance|rf_a3_mux|sel_out[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_a3_mux|sel_out[2]~4_combout\ = (\add_instance|if_id_register|instruction_ID_in\(12) & ((\add_instance|if_id_register|instruction_ID_in\(13) & (\add_instance|if_id_register|instruction_ID_in\(11))) # 
-- (!\add_instance|if_id_register|instruction_ID_in\(13) & ((\add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a5\))))) # (!\add_instance|if_id_register|instruction_ID_in\(12) & (\add_instance|if_id_register|instruction_ID_in\(13) & 
-- ((\add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|if_id_register|instruction_ID_in\(12),
	datab => \add_instance|if_id_register|instruction_ID_in\(13),
	datac => \add_instance|if_id_register|instruction_ID_in\(11),
	datad => \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a5\,
	combout => \add_instance|rf_a3_mux|sel_out[2]~4_combout\);

-- Location: M9K_X15_Y14_N0
\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a1\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "PipelinedDatapath:add_instance|ID_OR_reg:id_or_register|altshift_taps:rf_load_OR_rtl_0|shift_taps_86m:auto_generated|altsyncram_rk31:altsyncram4|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 2,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 1,
	port_a_last_address => 3,
	port_a_logical_ram_depth => 3,
	port_a_logical_ram_width => 21,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 2,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 1,
	port_b_last_address => 3,
	port_b_logical_ram_depth => 3,
	port_b_logical_ram_width => 21,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portbre => VCC,
	clk0 => \ALT_INV_input_vector[1]~input_o\,
	clk1 => GND,
	portadatain => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a1_PORTADATAIN_bus\,
	portaaddr => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a1_PORTAADDR_bus\,
	portbaddr => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a1_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a1_PORTBDATAOUT_bus\);

-- Location: FF_X14_Y14_N15
\add_instance|mem_wb_register|rf_a3_WB_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a2\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|mem_wb_register|rf_a3_WB_in\(1));

-- Location: FF_X13_Y12_N21
\add_instance|id_or_register|rf_a1_OR_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|if_id_register|instruction_ID_in\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|id_or_register|rf_a1_OR_in\(1));

-- Location: FF_X14_Y14_N11
\add_instance|or_ex_register|rf_a1_EX_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|id_or_register|rf_a1_OR_in\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|rf_a1_EX_in\(1));

-- Location: FF_X14_Y14_N17
\add_instance|mem_wb_register|rf_a3_WB_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a1~portbdataout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|mem_wb_register|rf_a3_WB_in\(0));

-- Location: LCCOMB_X14_Y14_N10
\add_instance|forwarding_unit|forward_selection_process~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|forwarding_unit|forward_selection_process~4_combout\ = (\add_instance|or_ex_register|rf_a1_EX_in\(0) & (\add_instance|mem_wb_register|rf_a3_WB_in\(0) & (\add_instance|mem_wb_register|rf_a3_WB_in\(1) $ 
-- (!\add_instance|or_ex_register|rf_a1_EX_in\(1))))) # (!\add_instance|or_ex_register|rf_a1_EX_in\(0) & (!\add_instance|mem_wb_register|rf_a3_WB_in\(0) & (\add_instance|mem_wb_register|rf_a3_WB_in\(1) $ (!\add_instance|or_ex_register|rf_a1_EX_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|rf_a1_EX_in\(0),
	datab => \add_instance|mem_wb_register|rf_a3_WB_in\(1),
	datac => \add_instance|or_ex_register|rf_a1_EX_in\(1),
	datad => \add_instance|mem_wb_register|rf_a3_WB_in\(0),
	combout => \add_instance|forwarding_unit|forward_selection_process~4_combout\);

-- Location: FF_X14_Y14_N5
\add_instance|mem_wb_register|rf_a3_WB_in[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a3\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|mem_wb_register|rf_a3_WB_in\(2));

-- Location: LCCOMB_X16_Y12_N10
\add_instance|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux18~0_combout\ = (!\add_instance|if_id_register|instruction_ID_in\(12) & \add_instance|if_id_register|instruction_ID_in\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|if_id_register|instruction_ID_in\(12),
	datad => \add_instance|if_id_register|instruction_ID_in\(13),
	combout => \add_instance|Mux18~0_combout\);

-- Location: FF_X16_Y12_N11
\add_instance|id_or_register|alu_select_OR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|Mux18~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|id_or_register|alu_select_OR\(0));

-- Location: LCCOMB_X16_Y12_N12
\add_instance|or_ex_register|alu_select_EX_in[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|or_ex_register|alu_select_EX_in[0]~feeder_combout\ = \add_instance|id_or_register|alu_select_OR\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \add_instance|id_or_register|alu_select_OR\(0),
	combout => \add_instance|or_ex_register|alu_select_EX_in[0]~feeder_combout\);

-- Location: FF_X16_Y12_N13
\add_instance|or_ex_register|alu_select_EX_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|or_ex_register|alu_select_EX_in[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|alu_select_EX_in\(0));

-- Location: LCCOMB_X14_Y11_N30
\add_instance|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux22~1_combout\ = (!\add_instance|if_id_register|instruction_ID_in\(13) & ((\add_instance|Mux22~0_combout\) # (!\add_instance|if_id_register|instruction_ID_in\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|if_id_register|instruction_ID_in\(12),
	datab => \add_instance|if_id_register|instruction_ID_in\(13),
	datad => \add_instance|Mux22~0_combout\,
	combout => \add_instance|Mux22~1_combout\);

-- Location: FF_X14_Y12_N29
\add_instance|id_or_register|rf_a1_OR_in[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|if_id_register|instruction_ID_in\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|id_or_register|rf_a1_OR_in\(2));

-- Location: FF_X14_Y14_N21
\add_instance|or_ex_register|rf_a1_EX_in[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|id_or_register|rf_a1_OR_in\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|rf_a1_EX_in\(2));

-- Location: M9K_X15_Y13_N0
\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	logical_ram_name => "PipelinedDatapath:add_instance|ID_OR_reg:id_or_register|altshift_taps:rf_load_OR_rtl_0|shift_taps_86m:auto_generated|altsyncram_rk31:altsyncram4|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 2,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 3,
	port_a_logical_ram_depth => 3,
	port_a_logical_ram_width => 21,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock0",
	port_b_address_width => 2,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "clock0",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 3,
	port_b_logical_ram_depth => 3,
	port_b_logical_ram_width => 21,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock0",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => VCC,
	portbre => VCC,
	clk0 => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	clk1 => GND,
	portadatain => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTADATAIN_bus\,
	portaaddr => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTAADDR_bus\,
	portbaddr => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X14_Y14_N30
\add_instance|forwarding_unit|forward_selection_process~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|forwarding_unit|forward_selection_process~6_combout\ = (\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a1~portbdataout\ & (\add_instance|or_ex_register|rf_a1_EX_in\(0) & 
-- (\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a2\ $ (!\add_instance|or_ex_register|rf_a1_EX_in\(1))))) # (!\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a1~portbdataout\ & 
-- (!\add_instance|or_ex_register|rf_a1_EX_in\(0) & (\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a2\ $ (!\add_instance|or_ex_register|rf_a1_EX_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a1~portbdataout\,
	datab => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a2\,
	datac => \add_instance|or_ex_register|rf_a1_EX_in\(0),
	datad => \add_instance|or_ex_register|rf_a1_EX_in\(1),
	combout => \add_instance|forwarding_unit|forward_selection_process~6_combout\);

-- Location: FF_X14_Y11_N1
\add_instance|id_or_register|rf_a2_OR_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a7\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|id_or_register|rf_a2_OR_in\(1));

-- Location: LCCOMB_X16_Y14_N8
\add_instance|or_ex_register|rf_a2_EX_in[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|or_ex_register|rf_a2_EX_in[1]~feeder_combout\ = \add_instance|id_or_register|rf_a2_OR_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|id_or_register|rf_a2_OR_in\(1),
	combout => \add_instance|or_ex_register|rf_a2_EX_in[1]~feeder_combout\);

-- Location: FF_X16_Y14_N9
\add_instance|or_ex_register|rf_a2_EX_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~input_o\,
	d => \add_instance|or_ex_register|rf_a2_EX_in[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|rf_a2_EX_in\(1));

-- Location: LCCOMB_X16_Y11_N22
\add_instance|id_or_register|rf_a2_OR_in[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|id_or_register|rf_a2_OR_in[0]~feeder_combout\ = \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a6\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a6\,
	combout => \add_instance|id_or_register|rf_a2_OR_in[0]~feeder_combout\);

-- Location: FF_X16_Y11_N23
\add_instance|id_or_register|rf_a2_OR_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|id_or_register|rf_a2_OR_in[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|id_or_register|rf_a2_OR_in\(0));

-- Location: LCCOMB_X16_Y14_N30
\add_instance|or_ex_register|rf_a2_EX_in[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|or_ex_register|rf_a2_EX_in[0]~feeder_combout\ = \add_instance|id_or_register|rf_a2_OR_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|id_or_register|rf_a2_OR_in\(0),
	combout => \add_instance|or_ex_register|rf_a2_EX_in[0]~feeder_combout\);

-- Location: FF_X16_Y14_N31
\add_instance|or_ex_register|rf_a2_EX_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~input_o\,
	d => \add_instance|or_ex_register|rf_a2_EX_in[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|rf_a2_EX_in\(0));

-- Location: LCCOMB_X14_Y14_N14
\add_instance|forwarding_unit|forward_selection_process~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|forwarding_unit|forward_selection_process~7_combout\ = (\add_instance|or_ex_register|rf_a2_EX_in\(1) & (\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a2\ & (\add_instance|or_ex_register|rf_a2_EX_in\(0) $ 
-- (!\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a1~portbdataout\)))) # (!\add_instance|or_ex_register|rf_a2_EX_in\(1) & (!\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a2\ & 
-- (\add_instance|or_ex_register|rf_a2_EX_in\(0) $ (!\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a1~portbdataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|rf_a2_EX_in\(1),
	datab => \add_instance|or_ex_register|rf_a2_EX_in\(0),
	datac => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a2\,
	datad => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a1~portbdataout\,
	combout => \add_instance|forwarding_unit|forward_selection_process~7_combout\);

-- Location: LCCOMB_X14_Y14_N20
\add_instance|alu_a_forwarding_mux|sel_out[15]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_a_forwarding_mux|sel_out[15]~32_combout\ = (\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a3\ & (\add_instance|forwarding_unit|forward_selection_process~6_combout\ & 
-- (\add_instance|or_ex_register|rf_a1_EX_in\(2)))) # (!\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a3\ & ((\add_instance|forwarding_unit|forward_selection_process~7_combout\) # 
-- ((\add_instance|forwarding_unit|forward_selection_process~6_combout\ & !\add_instance|or_ex_register|rf_a1_EX_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a3\,
	datab => \add_instance|forwarding_unit|forward_selection_process~6_combout\,
	datac => \add_instance|or_ex_register|rf_a1_EX_in\(2),
	datad => \add_instance|forwarding_unit|forward_selection_process~7_combout\,
	combout => \add_instance|alu_a_forwarding_mux|sel_out[15]~32_combout\);

-- Location: LCCOMB_X14_Y14_N0
\add_instance|alu_a_forwarding_mux|sel_out[15]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\ = (\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a0~portbdataout\ & (\add_instance|alu_a_forwarding_mux|sel_out[15]~32_combout\ & 
-- ((\add_instance|or_ex_register|rf_a1_EX_in\(2)) # (!\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a3\,
	datab => \add_instance|or_ex_register|rf_a1_EX_in\(2),
	datac => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a0~portbdataout\,
	datad => \add_instance|alu_a_forwarding_mux|sel_out[15]~32_combout\,
	combout => \add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\);

-- Location: FF_X14_Y14_N25
\add_instance|mem_wb_register|rf_load_WB_in\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a0~portbdataout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|mem_wb_register|rf_load_WB_in~q\);

-- Location: LCCOMB_X14_Y14_N24
\add_instance|forwarding_unit|forward_selection_process~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|forwarding_unit|forward_selection_process~8_combout\ = (\add_instance|mem_wb_register|rf_load_WB_in~q\ & (\add_instance|forwarding_unit|forward_selection_process~4_combout\ & (\add_instance|or_ex_register|rf_a1_EX_in\(2) $ 
-- (!\add_instance|mem_wb_register|rf_a3_WB_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|rf_a1_EX_in\(2),
	datab => \add_instance|mem_wb_register|rf_a3_WB_in\(2),
	datac => \add_instance|mem_wb_register|rf_load_WB_in~q\,
	datad => \add_instance|forwarding_unit|forward_selection_process~4_combout\,
	combout => \add_instance|forwarding_unit|forward_selection_process~8_combout\);

-- Location: LCCOMB_X13_Y10_N14
\add_instance|rf|RF[1][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|RF[1][15]~feeder_combout\ = \add_instance|rf_d3_mux|sel_out[15]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \add_instance|rf_d3_mux|sel_out[15]~15_combout\,
	combout => \add_instance|rf|RF[1][15]~feeder_combout\);

-- Location: FF_X13_Y10_N15
\add_instance|rf|RF[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|RF[1][15]~feeder_combout\,
	ena => \add_instance|rf|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[1][15]~q\);

-- Location: LCCOMB_X13_Y11_N12
\add_instance|rf|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Decoder0~8_combout\ = (!\add_instance|mem_wb_register|rf_a3_WB_in\(2) & (\add_instance|mem_wb_register|rf_a3_WB_in\(1) & \add_instance|rf|Decoder0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|mem_wb_register|rf_a3_WB_in\(2),
	datab => \add_instance|mem_wb_register|rf_a3_WB_in\(1),
	datad => \add_instance|rf|Decoder0~0_combout\,
	combout => \add_instance|rf|Decoder0~8_combout\);

-- Location: FF_X13_Y11_N13
\add_instance|rf|RF[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[15]~15_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[3][15]~q\);

-- Location: LCCOMB_X14_Y11_N6
\add_instance|rf|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Decoder0~2_combout\ = (!\input_vector[0]~input_o\ & (!\add_instance|mem_wb_register|rf_a3_WB_in\(0) & \add_instance|Mux19~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[0]~input_o\,
	datab => \add_instance|mem_wb_register|rf_a3_WB_in\(0),
	datad => \add_instance|Mux19~0_combout\,
	combout => \add_instance|rf|Decoder0~2_combout\);

-- Location: LCCOMB_X13_Y11_N30
\add_instance|rf|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Decoder0~7_combout\ = (!\add_instance|mem_wb_register|rf_a3_WB_in\(1) & (!\add_instance|mem_wb_register|rf_a3_WB_in\(2) & \add_instance|rf|Decoder0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|mem_wb_register|rf_a3_WB_in\(1),
	datac => \add_instance|mem_wb_register|rf_a3_WB_in\(2),
	datad => \add_instance|rf|Decoder0~2_combout\,
	combout => \add_instance|rf|Decoder0~7_combout\);

-- Location: FF_X12_Y10_N3
\add_instance|rf|RF[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[15]~15_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[0][15]~q\);

-- Location: LCCOMB_X13_Y11_N14
\add_instance|rf|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux16~0_combout\ = (\add_instance|id_or_register|rf_a2_OR_in\(1) & (((\add_instance|rf|RF[2][15]~q\) # (\add_instance|id_or_register|rf_a2_OR_in\(0))))) # (!\add_instance|id_or_register|rf_a2_OR_in\(1) & (\add_instance|rf|RF[0][15]~q\ & 
-- ((!\add_instance|id_or_register|rf_a2_OR_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[0][15]~q\,
	datab => \add_instance|id_or_register|rf_a2_OR_in\(1),
	datac => \add_instance|rf|RF[2][15]~q\,
	datad => \add_instance|id_or_register|rf_a2_OR_in\(0),
	combout => \add_instance|rf|Mux16~0_combout\);

-- Location: LCCOMB_X12_Y10_N22
\add_instance|rf|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux16~1_combout\ = (\add_instance|id_or_register|rf_a2_OR_in\(0) & ((\add_instance|rf|Mux16~0_combout\ & ((\add_instance|rf|RF[3][15]~q\))) # (!\add_instance|rf|Mux16~0_combout\ & (\add_instance|rf|RF[1][15]~q\)))) # 
-- (!\add_instance|id_or_register|rf_a2_OR_in\(0) & (((\add_instance|rf|Mux16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a2_OR_in\(0),
	datab => \add_instance|rf|RF[1][15]~q\,
	datac => \add_instance|rf|RF[3][15]~q\,
	datad => \add_instance|rf|Mux16~0_combout\,
	combout => \add_instance|rf|Mux16~1_combout\);

-- Location: FF_X12_Y10_N23
\add_instance|or_ex_register|rf_d2_EX[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|Mux16~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|rf_d2_EX\(15));

-- Location: LCCOMB_X14_Y14_N4
\add_instance|forwarding_unit|forward_selection_process~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|forwarding_unit|forward_selection_process~9_combout\ = (\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a0~portbdataout\ & 
-- (!\add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a3\ & \add_instance|forwarding_unit|forward_selection_process~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a0~portbdataout\,
	datac => \add_instance|id_or_register|rf_load_OR_rtl_0|auto_generated|altsyncram4|ram_block5a3\,
	datad => \add_instance|forwarding_unit|forward_selection_process~7_combout\,
	combout => \add_instance|forwarding_unit|forward_selection_process~9_combout\);

-- Location: LCCOMB_X14_Y14_N2
\add_instance|forwarding_unit|forward_select_b[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|forwarding_unit|forward_select_b\(1) = (\add_instance|forwarding_unit|forward_selection_process~9_combout\ & (\add_instance|forwarding_unit|forward_select_b\(1))) # (!\add_instance|forwarding_unit|forward_selection_process~9_combout\ & 
-- ((\add_instance|forwarding_unit|forward_selection_process~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|forwarding_unit|forward_select_b\(1),
	datab => \add_instance|forwarding_unit|forward_selection_process~9_combout\,
	datad => \add_instance|forwarding_unit|forward_selection_process~8_combout\,
	combout => \add_instance|forwarding_unit|forward_select_b\(1));

-- Location: LCCOMB_X14_Y11_N12
\add_instance|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux15~0_combout\ = (\add_instance|if_id_register|instruction_ID_in\(12) & (!\add_instance|if_id_register|instruction_ID_in\(13) & (\add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a1\ & 
-- \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a0~portadataout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|if_id_register|instruction_ID_in\(12),
	datab => \add_instance|if_id_register|instruction_ID_in\(13),
	datac => \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a1\,
	datad => \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \add_instance|Mux15~0_combout\);

-- Location: FF_X14_Y11_N13
\add_instance|id_or_register|alu_b_select_OR[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|Mux15~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|id_or_register|alu_b_select_OR\(0));

-- Location: FF_X13_Y14_N17
\add_instance|or_ex_register|alu_b_select_EX_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|id_or_register|alu_b_select_OR\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|alu_b_select_EX_in\(0));

-- Location: LCCOMB_X9_Y11_N18
\add_instance|ex_mem_register|za_out_MEM[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|ex_mem_register|za_out_MEM[14]~feeder_combout\ = \add_instance|or_ex_register|rf_a2_EX_in\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \add_instance|or_ex_register|rf_a2_EX_in\(1),
	combout => \add_instance|ex_mem_register|za_out_MEM[14]~feeder_combout\);

-- Location: FF_X9_Y11_N19
\add_instance|ex_mem_register|za_out_MEM[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|ex_mem_register|za_out_MEM[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|ex_mem_register|za_out_MEM\(14));

-- Location: LCCOMB_X9_Y11_N28
\add_instance|mem_wb_register|za_out_WB_in[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|mem_wb_register|za_out_WB_in[14]~feeder_combout\ = \add_instance|ex_mem_register|za_out_MEM\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \add_instance|ex_mem_register|za_out_MEM\(14),
	combout => \add_instance|mem_wb_register|za_out_WB_in[14]~feeder_combout\);

-- Location: FF_X9_Y11_N29
\add_instance|mem_wb_register|za_out_WB_in[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|mem_wb_register|za_out_WB_in[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|mem_wb_register|za_out_WB_in\(14));

-- Location: LCCOMB_X16_Y11_N12
\add_instance|id_or_register|alu_b_select_OR[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|id_or_register|alu_b_select_OR[1]~feeder_combout\ = \add_instance|Mux11~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \add_instance|Mux11~0_combout\,
	combout => \add_instance|id_or_register|alu_b_select_OR[1]~feeder_combout\);

-- Location: FF_X16_Y11_N13
\add_instance|id_or_register|alu_b_select_OR[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|id_or_register|alu_b_select_OR[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|id_or_register|alu_b_select_OR\(1));

-- Location: FF_X13_Y14_N25
\add_instance|or_ex_register|alu_b_select_EX_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|id_or_register|alu_b_select_OR\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|alu_b_select_EX_in\(1));

-- Location: LCCOMB_X14_Y11_N14
\add_instance|id_or_register|za_out_OR[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|id_or_register|za_out_OR[12]~feeder_combout\ = \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a5\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a5\,
	combout => \add_instance|id_or_register|za_out_OR[12]~feeder_combout\);

-- Location: FF_X14_Y11_N15
\add_instance|id_or_register|za_out_OR[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|id_or_register|za_out_OR[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|id_or_register|za_out_OR\(12));

-- Location: FF_X13_Y13_N31
\add_instance|or_ex_register|za_out_EX[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|id_or_register|za_out_OR\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|za_out_EX\(12));

-- Location: LCCOMB_X10_Y15_N6
\add_instance|alu_b_mux|sel_out[8]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[8]~24_combout\ = (\add_instance|or_ex_register|alu_b_select_EX_in\(1) & (!\add_instance|or_ex_register|alu_b_select_EX_in\(0) & \add_instance|or_ex_register|za_out_EX\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|or_ex_register|alu_b_select_EX_in\(1),
	datac => \add_instance|or_ex_register|alu_b_select_EX_in\(0),
	datad => \add_instance|or_ex_register|za_out_EX\(12),
	combout => \add_instance|alu_b_mux|sel_out[8]~24_combout\);

-- Location: LCCOMB_X16_Y12_N22
\add_instance|ex_mem_register|za_out_MEM[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|ex_mem_register|za_out_MEM[13]~feeder_combout\ = \add_instance|or_ex_register|rf_a2_EX_in\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \add_instance|or_ex_register|rf_a2_EX_in\(0),
	combout => \add_instance|ex_mem_register|za_out_MEM[13]~feeder_combout\);

-- Location: FF_X16_Y12_N23
\add_instance|ex_mem_register|za_out_MEM[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|ex_mem_register|za_out_MEM[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|ex_mem_register|za_out_MEM\(13));

-- Location: FF_X16_Y12_N21
\add_instance|mem_wb_register|za_out_WB_in[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|ex_mem_register|za_out_MEM\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|mem_wb_register|za_out_WB_in\(13));

-- Location: LCCOMB_X13_Y10_N0
\add_instance|rf|RF[1][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|RF[1][13]~feeder_combout\ = \add_instance|rf_d3_mux|sel_out[13]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|rf_d3_mux|sel_out[13]~13_combout\,
	combout => \add_instance|rf|RF[1][13]~feeder_combout\);

-- Location: FF_X13_Y10_N1
\add_instance|rf|RF[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|RF[1][13]~feeder_combout\,
	ena => \add_instance|rf|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[1][13]~q\);

-- Location: FF_X13_Y10_N19
\add_instance|rf|RF[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[13]~13_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[0][13]~q\);

-- Location: LCCOMB_X13_Y10_N18
\add_instance|rf|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux2~2_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(0) & ((\add_instance|rf|RF[1][13]~q\) # ((\add_instance|id_or_register|rf_a1_OR_in\(1))))) # (!\add_instance|id_or_register|rf_a1_OR_in\(0) & (((\add_instance|rf|RF[0][13]~q\ & 
-- !\add_instance|id_or_register|rf_a1_OR_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(0),
	datab => \add_instance|rf|RF[1][13]~q\,
	datac => \add_instance|rf|RF[0][13]~q\,
	datad => \add_instance|id_or_register|rf_a1_OR_in\(1),
	combout => \add_instance|rf|Mux2~2_combout\);

-- Location: LCCOMB_X13_Y11_N2
\add_instance|rf|RF[3][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|RF[3][13]~feeder_combout\ = \add_instance|rf_d3_mux|sel_out[13]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|rf_d3_mux|sel_out[13]~13_combout\,
	combout => \add_instance|rf|RF[3][13]~feeder_combout\);

-- Location: FF_X13_Y11_N3
\add_instance|rf|RF[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|RF[3][13]~feeder_combout\,
	ena => \add_instance|rf|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[3][13]~q\);

-- Location: LCCOMB_X13_Y11_N18
\add_instance|rf|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Decoder0~5_combout\ = (!\add_instance|mem_wb_register|rf_a3_WB_in\(2) & (\add_instance|mem_wb_register|rf_a3_WB_in\(1) & \add_instance|rf|Decoder0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|mem_wb_register|rf_a3_WB_in\(2),
	datab => \add_instance|mem_wb_register|rf_a3_WB_in\(1),
	datad => \add_instance|rf|Decoder0~2_combout\,
	combout => \add_instance|rf|Decoder0~5_combout\);

-- Location: FF_X13_Y11_N17
\add_instance|rf|RF[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[13]~13_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[2][13]~q\);

-- Location: LCCOMB_X13_Y11_N16
\add_instance|rf|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux2~3_combout\ = (\add_instance|rf|Mux2~2_combout\ & ((\add_instance|rf|RF[3][13]~q\) # ((!\add_instance|id_or_register|rf_a1_OR_in\(1))))) # (!\add_instance|rf|Mux2~2_combout\ & (((\add_instance|rf|RF[2][13]~q\ & 
-- \add_instance|id_or_register|rf_a1_OR_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux2~2_combout\,
	datab => \add_instance|rf|RF[3][13]~q\,
	datac => \add_instance|rf|RF[2][13]~q\,
	datad => \add_instance|id_or_register|rf_a1_OR_in\(1),
	combout => \add_instance|rf|Mux2~3_combout\);

-- Location: LCCOMB_X17_Y12_N10
\add_instance|incrementer|carry~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|incrementer|carry~1_combout\ = (\add_instance|incrementer|carry~0_combout\ & (\add_instance|rf|RF[7][5]~q\ & (\add_instance|rf|RF[7][6]~q\ & \add_instance|rf|RF[7][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|incrementer|carry~0_combout\,
	datab => \add_instance|rf|RF[7][5]~q\,
	datac => \add_instance|rf|RF[7][6]~q\,
	datad => \add_instance|rf|RF[7][4]~q\,
	combout => \add_instance|incrementer|carry~1_combout\);

-- Location: LCCOMB_X11_Y12_N18
\add_instance|incrementer|sum~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|incrementer|sum~6_combout\ = \add_instance|rf|RF[7][7]~q\ $ (\add_instance|incrementer|carry~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|rf|RF[7][7]~q\,
	datad => \add_instance|incrementer|carry~1_combout\,
	combout => \add_instance|incrementer|sum~6_combout\);

-- Location: FF_X11_Y12_N19
\add_instance|rf|RF[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|incrementer|sum~6_combout\,
	clrn => \ALT_INV_input_vector[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[7][7]~q\);

-- Location: LCCOMB_X11_Y12_N6
\add_instance|incrementer|sum~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|incrementer|sum~7_combout\ = \add_instance|rf|RF[7][8]~q\ $ (((\add_instance|rf|RF[7][7]~q\ & \add_instance|incrementer|carry~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|rf|RF[7][7]~q\,
	datac => \add_instance|rf|RF[7][8]~q\,
	datad => \add_instance|incrementer|carry~1_combout\,
	combout => \add_instance|incrementer|sum~7_combout\);

-- Location: FF_X11_Y12_N7
\add_instance|rf|RF[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|incrementer|sum~7_combout\,
	clrn => \ALT_INV_input_vector[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[7][8]~q\);

-- Location: LCCOMB_X11_Y12_N22
\add_instance|incrementer|sum~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|incrementer|sum~8_combout\ = \add_instance|rf|RF[7][9]~q\ $ (((\add_instance|rf|RF[7][8]~q\ & (\add_instance|rf|RF[7][7]~q\ & \add_instance|incrementer|carry~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][8]~q\,
	datab => \add_instance|rf|RF[7][7]~q\,
	datac => \add_instance|rf|RF[7][9]~q\,
	datad => \add_instance|incrementer|carry~1_combout\,
	combout => \add_instance|incrementer|sum~8_combout\);

-- Location: FF_X11_Y12_N23
\add_instance|rf|RF[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|incrementer|sum~8_combout\,
	clrn => \ALT_INV_input_vector[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[7][9]~q\);

-- Location: LCCOMB_X11_Y12_N10
\add_instance|incrementer|carry~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|incrementer|carry~2_combout\ = (\add_instance|rf|RF[7][8]~q\ & (\add_instance|rf|RF[7][7]~q\ & (\add_instance|rf|RF[7][9]~q\ & \add_instance|incrementer|carry~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][8]~q\,
	datab => \add_instance|rf|RF[7][7]~q\,
	datac => \add_instance|rf|RF[7][9]~q\,
	datad => \add_instance|incrementer|carry~1_combout\,
	combout => \add_instance|incrementer|carry~2_combout\);

-- Location: LCCOMB_X11_Y11_N18
\add_instance|incrementer|sum~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|incrementer|sum~9_combout\ = \add_instance|rf|RF[7][10]~q\ $ (\add_instance|incrementer|carry~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|rf|RF[7][10]~q\,
	datad => \add_instance|incrementer|carry~2_combout\,
	combout => \add_instance|incrementer|sum~9_combout\);

-- Location: FF_X11_Y11_N19
\add_instance|rf|RF[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|incrementer|sum~9_combout\,
	clrn => \ALT_INV_input_vector[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[7][10]~q\);

-- Location: LCCOMB_X11_Y11_N30
\add_instance|incrementer|sum~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|incrementer|sum~10_combout\ = \add_instance|rf|RF[7][11]~q\ $ (((\add_instance|rf|RF[7][10]~q\ & \add_instance|incrementer|carry~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|rf|RF[7][10]~q\,
	datac => \add_instance|rf|RF[7][11]~q\,
	datad => \add_instance|incrementer|carry~2_combout\,
	combout => \add_instance|incrementer|sum~10_combout\);

-- Location: FF_X11_Y11_N31
\add_instance|rf|RF[7][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|incrementer|sum~10_combout\,
	clrn => \ALT_INV_input_vector[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[7][11]~q\);

-- Location: LCCOMB_X11_Y11_N6
\add_instance|incrementer|sum~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|incrementer|sum~11_combout\ = \add_instance|rf|RF[7][12]~q\ $ (((\add_instance|rf|RF[7][11]~q\ & (\add_instance|rf|RF[7][10]~q\ & \add_instance|incrementer|carry~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][11]~q\,
	datab => \add_instance|rf|RF[7][10]~q\,
	datac => \add_instance|rf|RF[7][12]~q\,
	datad => \add_instance|incrementer|carry~2_combout\,
	combout => \add_instance|incrementer|sum~11_combout\);

-- Location: FF_X11_Y11_N7
\add_instance|rf|RF[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|incrementer|sum~11_combout\,
	clrn => \ALT_INV_input_vector[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[7][12]~q\);

-- Location: LCCOMB_X11_Y11_N2
\add_instance|incrementer|carry~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|incrementer|carry~3_combout\ = (\add_instance|rf|RF[7][12]~q\ & (\add_instance|rf|RF[7][10]~q\ & (\add_instance|rf|RF[7][11]~q\ & \add_instance|incrementer|carry~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][12]~q\,
	datab => \add_instance|rf|RF[7][10]~q\,
	datac => \add_instance|rf|RF[7][11]~q\,
	datad => \add_instance|incrementer|carry~2_combout\,
	combout => \add_instance|incrementer|carry~3_combout\);

-- Location: LCCOMB_X11_Y11_N22
\add_instance|incrementer|sum~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|incrementer|sum~12_combout\ = \add_instance|rf|RF[7][13]~q\ $ (\add_instance|incrementer|carry~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|rf|RF[7][13]~q\,
	datad => \add_instance|incrementer|carry~3_combout\,
	combout => \add_instance|incrementer|sum~12_combout\);

-- Location: FF_X11_Y11_N23
\add_instance|rf|RF[7][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|incrementer|sum~12_combout\,
	clrn => \ALT_INV_input_vector[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[7][13]~q\);

-- Location: LCCOMB_X13_Y11_N26
\add_instance|rf|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Decoder0~4_combout\ = (!\add_instance|mem_wb_register|rf_a3_WB_in\(1) & (\add_instance|mem_wb_register|rf_a3_WB_in\(2) & \add_instance|rf|Decoder0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|mem_wb_register|rf_a3_WB_in\(1),
	datac => \add_instance|mem_wb_register|rf_a3_WB_in\(2),
	datad => \add_instance|rf|Decoder0~2_combout\,
	combout => \add_instance|rf|Decoder0~4_combout\);

-- Location: FF_X10_Y11_N31
\add_instance|rf|RF[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[13]~13_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[4][13]~q\);

-- Location: LCCOMB_X10_Y11_N12
\add_instance|rf|RF[6][13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|RF[6][13]~feeder_combout\ = \add_instance|rf_d3_mux|sel_out[13]~13_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|rf_d3_mux|sel_out[13]~13_combout\,
	combout => \add_instance|rf|RF[6][13]~feeder_combout\);

-- Location: LCCOMB_X14_Y11_N0
\add_instance|rf|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Decoder0~3_combout\ = (\add_instance|mem_wb_register|rf_a3_WB_in\(1) & (\add_instance|mem_wb_register|rf_a3_WB_in\(2) & \add_instance|rf|Decoder0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|mem_wb_register|rf_a3_WB_in\(1),
	datab => \add_instance|mem_wb_register|rf_a3_WB_in\(2),
	datad => \add_instance|rf|Decoder0~2_combout\,
	combout => \add_instance|rf|Decoder0~3_combout\);

-- Location: FF_X10_Y11_N13
\add_instance|rf|RF[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|RF[6][13]~feeder_combout\,
	ena => \add_instance|rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[6][13]~q\);

-- Location: LCCOMB_X10_Y11_N30
\add_instance|rf|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux2~0_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(0) & (\add_instance|id_or_register|rf_a1_OR_in\(1))) # (!\add_instance|id_or_register|rf_a1_OR_in\(0) & ((\add_instance|id_or_register|rf_a1_OR_in\(1) & 
-- ((\add_instance|rf|RF[6][13]~q\))) # (!\add_instance|id_or_register|rf_a1_OR_in\(1) & (\add_instance|rf|RF[4][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(0),
	datab => \add_instance|id_or_register|rf_a1_OR_in\(1),
	datac => \add_instance|rf|RF[4][13]~q\,
	datad => \add_instance|rf|RF[6][13]~q\,
	combout => \add_instance|rf|Mux2~0_combout\);

-- Location: LCCOMB_X14_Y11_N10
\add_instance|rf|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Decoder0~1_combout\ = (!\add_instance|mem_wb_register|rf_a3_WB_in\(1) & (\add_instance|mem_wb_register|rf_a3_WB_in\(2) & \add_instance|rf|Decoder0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|mem_wb_register|rf_a3_WB_in\(1),
	datab => \add_instance|mem_wb_register|rf_a3_WB_in\(2),
	datad => \add_instance|rf|Decoder0~0_combout\,
	combout => \add_instance|rf|Decoder0~1_combout\);

-- Location: FF_X11_Y11_N25
\add_instance|rf|RF[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[13]~13_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[5][13]~q\);

-- Location: LCCOMB_X11_Y11_N24
\add_instance|rf|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux2~1_combout\ = (\add_instance|rf|Mux2~0_combout\ & ((\add_instance|rf|RF[7][13]~q\) # ((!\add_instance|id_or_register|rf_a1_OR_in\(0))))) # (!\add_instance|rf|Mux2~0_combout\ & (((\add_instance|rf|RF[5][13]~q\ & 
-- \add_instance|id_or_register|rf_a1_OR_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][13]~q\,
	datab => \add_instance|rf|Mux2~0_combout\,
	datac => \add_instance|rf|RF[5][13]~q\,
	datad => \add_instance|id_or_register|rf_a1_OR_in\(0),
	combout => \add_instance|rf|Mux2~1_combout\);

-- Location: LCCOMB_X11_Y11_N26
\add_instance|rf|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux2~4_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(2) & ((\add_instance|rf|Mux2~1_combout\))) # (!\add_instance|id_or_register|rf_a1_OR_in\(2) & (\add_instance|rf|Mux2~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(2),
	datab => \add_instance|rf|Mux2~3_combout\,
	datad => \add_instance|rf|Mux2~1_combout\,
	combout => \add_instance|rf|Mux2~4_combout\);

-- Location: FF_X11_Y11_N27
\add_instance|or_ex_register|rf_d1_EX_in[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|Mux2~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|rf_d1_EX_in\(13));

-- Location: LCCOMB_X11_Y15_N2
\add_instance|alu_a_forwarding_mux|sel_out[13]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_a_forwarding_mux|sel_out[13]~26_combout\ = (!\add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\ & ((\add_instance|forwarding_unit|forward_selection_process~8_combout\ & ((\add_instance|rf_d3_mux|sel_out[13]~13_combout\))) # 
-- (!\add_instance|forwarding_unit|forward_selection_process~8_combout\ & (\add_instance|or_ex_register|rf_d1_EX_in\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|forwarding_unit|forward_selection_process~8_combout\,
	datab => \add_instance|or_ex_register|rf_d1_EX_in\(13),
	datac => \add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\,
	datad => \add_instance|rf_d3_mux|sel_out[13]~13_combout\,
	combout => \add_instance|alu_a_forwarding_mux|sel_out[13]~26_combout\);

-- Location: LCCOMB_X12_Y15_N26
\add_instance|alu_a_forwarding_mux|sel_out[13]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_a_forwarding_mux|sel_out[13]~27_combout\ = (\add_instance|alu_a_forwarding_mux|sel_out[13]~26_combout\) # ((\add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\ & \add_instance|ex_mem_register|alu_c_MEM\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\,
	datac => \add_instance|alu_a_forwarding_mux|sel_out[13]~26_combout\,
	datad => \add_instance|ex_mem_register|alu_c_MEM\(13),
	combout => \add_instance|alu_a_forwarding_mux|sel_out[13]~27_combout\);

-- Location: LCCOMB_X16_Y11_N4
\add_instance|id_or_register|za_out_OR[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|id_or_register|za_out_OR[11]~feeder_combout\ = \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a4\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a4\,
	combout => \add_instance|id_or_register|za_out_OR[11]~feeder_combout\);

-- Location: FF_X16_Y11_N5
\add_instance|id_or_register|za_out_OR[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|id_or_register|za_out_OR[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|id_or_register|za_out_OR\(11));

-- Location: FF_X14_Y13_N19
\add_instance|or_ex_register|za_out_EX[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|id_or_register|za_out_OR\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|za_out_EX\(11));

-- Location: LCCOMB_X16_Y12_N4
\add_instance|ex_mem_register|za_out_MEM[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|ex_mem_register|za_out_MEM[11]~feeder_combout\ = \add_instance|or_ex_register|za_out_EX\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \add_instance|or_ex_register|za_out_EX\(11),
	combout => \add_instance|ex_mem_register|za_out_MEM[11]~feeder_combout\);

-- Location: FF_X16_Y12_N5
\add_instance|ex_mem_register|za_out_MEM[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|ex_mem_register|za_out_MEM[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|ex_mem_register|za_out_MEM\(11));

-- Location: FF_X16_Y12_N9
\add_instance|mem_wb_register|za_out_WB_in[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|ex_mem_register|za_out_MEM\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|mem_wb_register|za_out_WB_in\(11));

-- Location: LCCOMB_X14_Y14_N16
\add_instance|forwarding_unit|forward_selection_process~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|forwarding_unit|forward_selection_process~5_combout\ = (\add_instance|mem_wb_register|rf_load_WB_in~q\ & (\add_instance|or_ex_register|rf_a1_EX_in\(2) $ (!\add_instance|mem_wb_register|rf_a3_WB_in\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|rf_a1_EX_in\(2),
	datab => \add_instance|mem_wb_register|rf_a3_WB_in\(2),
	datad => \add_instance|mem_wb_register|rf_load_WB_in~q\,
	combout => \add_instance|forwarding_unit|forward_selection_process~5_combout\);

-- Location: FF_X11_Y11_N5
\add_instance|rf|RF[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[11]~11_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[5][11]~q\);

-- Location: LCCOMB_X10_Y11_N28
\add_instance|rf|RF[6][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|RF[6][11]~feeder_combout\ = \add_instance|rf_d3_mux|sel_out[11]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|rf_d3_mux|sel_out[11]~11_combout\,
	combout => \add_instance|rf|RF[6][11]~feeder_combout\);

-- Location: FF_X10_Y11_N29
\add_instance|rf|RF[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|RF[6][11]~feeder_combout\,
	ena => \add_instance|rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[6][11]~q\);

-- Location: FF_X10_Y11_N15
\add_instance|rf|RF[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[11]~11_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[4][11]~q\);

-- Location: LCCOMB_X10_Y11_N14
\add_instance|rf|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux4~0_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(0) & (((\add_instance|id_or_register|rf_a1_OR_in\(1))))) # (!\add_instance|id_or_register|rf_a1_OR_in\(0) & ((\add_instance|id_or_register|rf_a1_OR_in\(1) & 
-- (\add_instance|rf|RF[6][11]~q\)) # (!\add_instance|id_or_register|rf_a1_OR_in\(1) & ((\add_instance|rf|RF[4][11]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(0),
	datab => \add_instance|rf|RF[6][11]~q\,
	datac => \add_instance|rf|RF[4][11]~q\,
	datad => \add_instance|id_or_register|rf_a1_OR_in\(1),
	combout => \add_instance|rf|Mux4~0_combout\);

-- Location: LCCOMB_X11_Y11_N4
\add_instance|rf|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux4~1_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(0) & ((\add_instance|rf|Mux4~0_combout\ & (\add_instance|rf|RF[7][11]~q\)) # (!\add_instance|rf|Mux4~0_combout\ & ((\add_instance|rf|RF[5][11]~q\))))) # 
-- (!\add_instance|id_or_register|rf_a1_OR_in\(0) & (((\add_instance|rf|Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][11]~q\,
	datab => \add_instance|id_or_register|rf_a1_OR_in\(0),
	datac => \add_instance|rf|RF[5][11]~q\,
	datad => \add_instance|rf|Mux4~0_combout\,
	combout => \add_instance|rf|Mux4~1_combout\);

-- Location: LCCOMB_X13_Y10_N4
\add_instance|rf|RF[1][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|RF[1][11]~feeder_combout\ = \add_instance|rf_d3_mux|sel_out[11]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|rf_d3_mux|sel_out[11]~11_combout\,
	combout => \add_instance|rf|RF[1][11]~feeder_combout\);

-- Location: FF_X13_Y10_N5
\add_instance|rf|RF[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|RF[1][11]~feeder_combout\,
	ena => \add_instance|rf|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[1][11]~q\);

-- Location: FF_X13_Y10_N11
\add_instance|rf|RF[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[11]~11_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[0][11]~q\);

-- Location: LCCOMB_X13_Y10_N10
\add_instance|rf|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux4~2_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(1) & (((\add_instance|id_or_register|rf_a1_OR_in\(0))))) # (!\add_instance|id_or_register|rf_a1_OR_in\(1) & ((\add_instance|id_or_register|rf_a1_OR_in\(0) & 
-- (\add_instance|rf|RF[1][11]~q\)) # (!\add_instance|id_or_register|rf_a1_OR_in\(0) & ((\add_instance|rf|RF[0][11]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[1][11]~q\,
	datab => \add_instance|id_or_register|rf_a1_OR_in\(1),
	datac => \add_instance|rf|RF[0][11]~q\,
	datad => \add_instance|id_or_register|rf_a1_OR_in\(0),
	combout => \add_instance|rf|Mux4~2_combout\);

-- Location: FF_X12_Y12_N11
\add_instance|rf|RF[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[11]~11_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[2][11]~q\);

-- Location: LCCOMB_X13_Y11_N10
\add_instance|rf|RF[3][11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|RF[3][11]~feeder_combout\ = \add_instance|rf_d3_mux|sel_out[11]~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|rf_d3_mux|sel_out[11]~11_combout\,
	combout => \add_instance|rf|RF[3][11]~feeder_combout\);

-- Location: FF_X13_Y11_N11
\add_instance|rf|RF[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|RF[3][11]~feeder_combout\,
	ena => \add_instance|rf|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[3][11]~q\);

-- Location: LCCOMB_X12_Y12_N10
\add_instance|rf|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux4~3_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(1) & ((\add_instance|rf|Mux4~2_combout\ & ((\add_instance|rf|RF[3][11]~q\))) # (!\add_instance|rf|Mux4~2_combout\ & (\add_instance|rf|RF[2][11]~q\)))) # 
-- (!\add_instance|id_or_register|rf_a1_OR_in\(1) & (\add_instance|rf|Mux4~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(1),
	datab => \add_instance|rf|Mux4~2_combout\,
	datac => \add_instance|rf|RF[2][11]~q\,
	datad => \add_instance|rf|RF[3][11]~q\,
	combout => \add_instance|rf|Mux4~3_combout\);

-- Location: LCCOMB_X11_Y12_N0
\add_instance|rf|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux4~4_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(2) & (\add_instance|rf|Mux4~1_combout\)) # (!\add_instance|id_or_register|rf_a1_OR_in\(2) & ((\add_instance|rf|Mux4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(2),
	datac => \add_instance|rf|Mux4~1_combout\,
	datad => \add_instance|rf|Mux4~3_combout\,
	combout => \add_instance|rf|Mux4~4_combout\);

-- Location: FF_X11_Y12_N1
\add_instance|or_ex_register|rf_d1_EX_in[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|Mux4~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|rf_d1_EX_in\(11));

-- Location: LCCOMB_X14_Y14_N12
\add_instance|alu_a_forwarding_mux|sel_out[11]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_a_forwarding_mux|sel_out[11]~22_combout\ = (\add_instance|forwarding_unit|forward_selection_process~4_combout\ & ((\add_instance|forwarding_unit|forward_selection_process~5_combout\ & (\add_instance|rf_d3_mux|sel_out[11]~11_combout\)) # 
-- (!\add_instance|forwarding_unit|forward_selection_process~5_combout\ & ((\add_instance|or_ex_register|rf_d1_EX_in\(11)))))) # (!\add_instance|forwarding_unit|forward_selection_process~4_combout\ & (((\add_instance|or_ex_register|rf_d1_EX_in\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|forwarding_unit|forward_selection_process~4_combout\,
	datab => \add_instance|rf_d3_mux|sel_out[11]~11_combout\,
	datac => \add_instance|forwarding_unit|forward_selection_process~5_combout\,
	datad => \add_instance|or_ex_register|rf_d1_EX_in\(11),
	combout => \add_instance|alu_a_forwarding_mux|sel_out[11]~22_combout\);

-- Location: LCCOMB_X12_Y14_N8
\add_instance|alu_a_forwarding_mux|sel_out[11]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_a_forwarding_mux|sel_out[11]~23_combout\ = (\add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\ & ((\add_instance|ex_mem_register|alu_c_MEM\(11)))) # (!\add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\ & 
-- (\add_instance|alu_a_forwarding_mux|sel_out[11]~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_a_forwarding_mux|sel_out[11]~22_combout\,
	datab => \add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\,
	datad => \add_instance|ex_mem_register|alu_c_MEM\(11),
	combout => \add_instance|alu_a_forwarding_mux|sel_out[11]~23_combout\);

-- Location: LCCOMB_X12_Y10_N20
\add_instance|rf|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux20~0_combout\ = (\add_instance|id_or_register|rf_a2_OR_in\(0) & (((\add_instance|id_or_register|rf_a2_OR_in\(1))))) # (!\add_instance|id_or_register|rf_a2_OR_in\(0) & ((\add_instance|id_or_register|rf_a2_OR_in\(1) & 
-- ((\add_instance|rf|RF[2][11]~q\))) # (!\add_instance|id_or_register|rf_a2_OR_in\(1) & (\add_instance|rf|RF[0][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a2_OR_in\(0),
	datab => \add_instance|rf|RF[0][11]~q\,
	datac => \add_instance|rf|RF[2][11]~q\,
	datad => \add_instance|id_or_register|rf_a2_OR_in\(1),
	combout => \add_instance|rf|Mux20~0_combout\);

-- Location: LCCOMB_X12_Y10_N30
\add_instance|rf|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux20~1_combout\ = (\add_instance|id_or_register|rf_a2_OR_in\(0) & ((\add_instance|rf|Mux20~0_combout\ & (\add_instance|rf|RF[3][11]~q\)) # (!\add_instance|rf|Mux20~0_combout\ & ((\add_instance|rf|RF[1][11]~q\))))) # 
-- (!\add_instance|id_or_register|rf_a2_OR_in\(0) & (((\add_instance|rf|Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a2_OR_in\(0),
	datab => \add_instance|rf|RF[3][11]~q\,
	datac => \add_instance|rf|RF[1][11]~q\,
	datad => \add_instance|rf|Mux20~0_combout\,
	combout => \add_instance|rf|Mux20~1_combout\);

-- Location: FF_X12_Y10_N31
\add_instance|or_ex_register|rf_d2_EX[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|Mux20~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|rf_d2_EX\(11));

-- Location: LCCOMB_X14_Y11_N8
\add_instance|id_or_register|za_out_OR[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|id_or_register|za_out_OR[9]~feeder_combout\ = \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a2\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a2\,
	combout => \add_instance|id_or_register|za_out_OR[9]~feeder_combout\);

-- Location: FF_X14_Y11_N9
\add_instance|id_or_register|za_out_OR[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|id_or_register|za_out_OR[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|id_or_register|za_out_OR\(9));

-- Location: FF_X13_Y14_N19
\add_instance|or_ex_register|za_out_EX[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|id_or_register|za_out_OR\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|za_out_EX\(9));

-- Location: LCCOMB_X11_Y12_N28
\add_instance|ex_mem_register|za_out_MEM[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|ex_mem_register|za_out_MEM[9]~feeder_combout\ = \add_instance|or_ex_register|za_out_EX\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|or_ex_register|za_out_EX\(9),
	combout => \add_instance|ex_mem_register|za_out_MEM[9]~feeder_combout\);

-- Location: FF_X11_Y12_N29
\add_instance|ex_mem_register|za_out_MEM[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|ex_mem_register|za_out_MEM[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|ex_mem_register|za_out_MEM\(9));

-- Location: LCCOMB_X11_Y12_N12
\add_instance|mem_wb_register|za_out_WB_in[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|mem_wb_register|za_out_WB_in[9]~feeder_combout\ = \add_instance|ex_mem_register|za_out_MEM\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \add_instance|ex_mem_register|za_out_MEM\(9),
	combout => \add_instance|mem_wb_register|za_out_WB_in[9]~feeder_combout\);

-- Location: FF_X11_Y12_N13
\add_instance|mem_wb_register|za_out_WB_in[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|mem_wb_register|za_out_WB_in[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|mem_wb_register|za_out_WB_in\(9));

-- Location: FF_X11_Y12_N5
\add_instance|rf|RF[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[9]~9_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[5][9]~q\);

-- Location: LCCOMB_X10_Y11_N8
\add_instance|rf|RF[6][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|RF[6][9]~feeder_combout\ = \add_instance|rf_d3_mux|sel_out[9]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|rf_d3_mux|sel_out[9]~9_combout\,
	combout => \add_instance|rf|RF[6][9]~feeder_combout\);

-- Location: FF_X10_Y11_N9
\add_instance|rf|RF[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|RF[6][9]~feeder_combout\,
	ena => \add_instance|rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[6][9]~q\);

-- Location: FF_X10_Y11_N7
\add_instance|rf|RF[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[9]~9_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[4][9]~q\);

-- Location: LCCOMB_X10_Y11_N6
\add_instance|rf|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux6~0_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(0) & (((\add_instance|id_or_register|rf_a1_OR_in\(1))))) # (!\add_instance|id_or_register|rf_a1_OR_in\(0) & ((\add_instance|id_or_register|rf_a1_OR_in\(1) & 
-- (\add_instance|rf|RF[6][9]~q\)) # (!\add_instance|id_or_register|rf_a1_OR_in\(1) & ((\add_instance|rf|RF[4][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(0),
	datab => \add_instance|rf|RF[6][9]~q\,
	datac => \add_instance|rf|RF[4][9]~q\,
	datad => \add_instance|id_or_register|rf_a1_OR_in\(1),
	combout => \add_instance|rf|Mux6~0_combout\);

-- Location: LCCOMB_X11_Y12_N4
\add_instance|rf|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux6~1_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(0) & ((\add_instance|rf|Mux6~0_combout\ & (\add_instance|rf|RF[7][9]~q\)) # (!\add_instance|rf|Mux6~0_combout\ & ((\add_instance|rf|RF[5][9]~q\))))) # 
-- (!\add_instance|id_or_register|rf_a1_OR_in\(0) & (((\add_instance|rf|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][9]~q\,
	datab => \add_instance|id_or_register|rf_a1_OR_in\(0),
	datac => \add_instance|rf|RF[5][9]~q\,
	datad => \add_instance|rf|Mux6~0_combout\,
	combout => \add_instance|rf|Mux6~1_combout\);

-- Location: FF_X13_Y11_N23
\add_instance|rf|RF[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[9]~9_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[2][9]~q\);

-- Location: FF_X13_Y11_N9
\add_instance|rf|RF[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[9]~9_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[3][9]~q\);

-- Location: FF_X12_Y11_N15
\add_instance|rf|RF[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[9]~9_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[0][9]~q\);

-- Location: LCCOMB_X12_Y11_N14
\add_instance|rf|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux6~2_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(1) & (((\add_instance|id_or_register|rf_a1_OR_in\(0))))) # (!\add_instance|id_or_register|rf_a1_OR_in\(1) & ((\add_instance|id_or_register|rf_a1_OR_in\(0) & 
-- (\add_instance|rf|RF[1][9]~q\)) # (!\add_instance|id_or_register|rf_a1_OR_in\(0) & ((\add_instance|rf|RF[0][9]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(1),
	datab => \add_instance|rf|RF[1][9]~q\,
	datac => \add_instance|rf|RF[0][9]~q\,
	datad => \add_instance|id_or_register|rf_a1_OR_in\(0),
	combout => \add_instance|rf|Mux6~2_combout\);

-- Location: LCCOMB_X13_Y11_N8
\add_instance|rf|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux6~3_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(1) & ((\add_instance|rf|Mux6~2_combout\ & ((\add_instance|rf|RF[3][9]~q\))) # (!\add_instance|rf|Mux6~2_combout\ & (\add_instance|rf|RF[2][9]~q\)))) # 
-- (!\add_instance|id_or_register|rf_a1_OR_in\(1) & (((\add_instance|rf|Mux6~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[2][9]~q\,
	datab => \add_instance|id_or_register|rf_a1_OR_in\(1),
	datac => \add_instance|rf|RF[3][9]~q\,
	datad => \add_instance|rf|Mux6~2_combout\,
	combout => \add_instance|rf|Mux6~3_combout\);

-- Location: LCCOMB_X11_Y12_N30
\add_instance|rf|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux6~4_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(2) & (\add_instance|rf|Mux6~1_combout\)) # (!\add_instance|id_or_register|rf_a1_OR_in\(2) & ((\add_instance|rf|Mux6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|rf|Mux6~1_combout\,
	datac => \add_instance|id_or_register|rf_a1_OR_in\(2),
	datad => \add_instance|rf|Mux6~3_combout\,
	combout => \add_instance|rf|Mux6~4_combout\);

-- Location: FF_X11_Y12_N31
\add_instance|or_ex_register|rf_d1_EX_in[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|Mux6~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|rf_d1_EX_in\(9));

-- Location: LCCOMB_X11_Y15_N4
\add_instance|alu_a_forwarding_mux|sel_out[9]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_a_forwarding_mux|sel_out[9]~18_combout\ = (!\add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\ & ((\add_instance|forwarding_unit|forward_selection_process~8_combout\ & ((\add_instance|rf_d3_mux|sel_out[9]~9_combout\))) # 
-- (!\add_instance|forwarding_unit|forward_selection_process~8_combout\ & (\add_instance|or_ex_register|rf_d1_EX_in\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\,
	datab => \add_instance|or_ex_register|rf_d1_EX_in\(9),
	datac => \add_instance|rf_d3_mux|sel_out[9]~9_combout\,
	datad => \add_instance|forwarding_unit|forward_selection_process~8_combout\,
	combout => \add_instance|alu_a_forwarding_mux|sel_out[9]~18_combout\);

-- Location: LCCOMB_X12_Y15_N16
\add_instance|alu_a_forwarding_mux|sel_out[9]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_a_forwarding_mux|sel_out[9]~19_combout\ = (\add_instance|alu_a_forwarding_mux|sel_out[9]~18_combout\) # ((\add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\ & \add_instance|ex_mem_register|alu_c_MEM\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\,
	datab => \add_instance|alu_a_forwarding_mux|sel_out[9]~18_combout\,
	datad => \add_instance|ex_mem_register|alu_c_MEM\(9),
	combout => \add_instance|alu_a_forwarding_mux|sel_out[9]~19_combout\);

-- Location: FF_X13_Y10_N27
\add_instance|rf|RF[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[2]~2_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[0][2]~q\);

-- Location: FF_X13_Y10_N17
\add_instance|rf|RF[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[2]~2_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[1][2]~q\);

-- Location: LCCOMB_X13_Y10_N26
\add_instance|rf|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux13~2_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(0) & ((\add_instance|id_or_register|rf_a1_OR_in\(1)) # ((\add_instance|rf|RF[1][2]~q\)))) # (!\add_instance|id_or_register|rf_a1_OR_in\(0) & 
-- (!\add_instance|id_or_register|rf_a1_OR_in\(1) & (\add_instance|rf|RF[0][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(0),
	datab => \add_instance|id_or_register|rf_a1_OR_in\(1),
	datac => \add_instance|rf|RF[0][2]~q\,
	datad => \add_instance|rf|RF[1][2]~q\,
	combout => \add_instance|rf|Mux13~2_combout\);

-- Location: FF_X13_Y11_N29
\add_instance|rf|RF[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[2]~2_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[3][2]~q\);

-- Location: LCCOMB_X13_Y11_N28
\add_instance|rf|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux13~3_combout\ = (\add_instance|rf|Mux13~2_combout\ & (((\add_instance|rf|RF[3][2]~q\) # (!\add_instance|id_or_register|rf_a1_OR_in\(1))))) # (!\add_instance|rf|Mux13~2_combout\ & (\add_instance|rf|RF[2][2]~q\ & 
-- ((\add_instance|id_or_register|rf_a1_OR_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[2][2]~q\,
	datab => \add_instance|rf|Mux13~2_combout\,
	datac => \add_instance|rf|RF[3][2]~q\,
	datad => \add_instance|id_or_register|rf_a1_OR_in\(1),
	combout => \add_instance|rf|Mux13~3_combout\);

-- Location: LCCOMB_X10_Y12_N22
\add_instance|rf|RF[6][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|RF[6][2]~feeder_combout\ = \add_instance|rf_d3_mux|sel_out[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|rf_d3_mux|sel_out[2]~2_combout\,
	combout => \add_instance|rf|RF[6][2]~feeder_combout\);

-- Location: FF_X10_Y12_N23
\add_instance|rf|RF[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|RF[6][2]~feeder_combout\,
	ena => \add_instance|rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[6][2]~q\);

-- Location: FF_X10_Y12_N9
\add_instance|rf|RF[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[2]~2_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[4][2]~q\);

-- Location: LCCOMB_X10_Y12_N8
\add_instance|rf|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux13~0_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(1) & ((\add_instance|rf|RF[6][2]~q\) # ((\add_instance|id_or_register|rf_a1_OR_in\(0))))) # (!\add_instance|id_or_register|rf_a1_OR_in\(1) & (((\add_instance|rf|RF[4][2]~q\ & 
-- !\add_instance|id_or_register|rf_a1_OR_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(1),
	datab => \add_instance|rf|RF[6][2]~q\,
	datac => \add_instance|rf|RF[4][2]~q\,
	datad => \add_instance|id_or_register|rf_a1_OR_in\(0),
	combout => \add_instance|rf|Mux13~0_combout\);

-- Location: FF_X14_Y12_N19
\add_instance|rf|RF[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[2]~2_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[5][2]~q\);

-- Location: LCCOMB_X14_Y12_N18
\add_instance|rf|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux13~1_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(0) & ((\add_instance|rf|Mux13~0_combout\ & ((\add_instance|rf|RF[7][2]~q\))) # (!\add_instance|rf|Mux13~0_combout\ & (\add_instance|rf|RF[5][2]~q\)))) # 
-- (!\add_instance|id_or_register|rf_a1_OR_in\(0) & (\add_instance|rf|Mux13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(0),
	datab => \add_instance|rf|Mux13~0_combout\,
	datac => \add_instance|rf|RF[5][2]~q\,
	datad => \add_instance|rf|RF[7][2]~q\,
	combout => \add_instance|rf|Mux13~1_combout\);

-- Location: LCCOMB_X13_Y12_N28
\add_instance|rf|Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux13~4_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(2) & ((\add_instance|rf|Mux13~1_combout\))) # (!\add_instance|id_or_register|rf_a1_OR_in\(2) & (\add_instance|rf|Mux13~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|rf|Mux13~3_combout\,
	datac => \add_instance|id_or_register|rf_a1_OR_in\(2),
	datad => \add_instance|rf|Mux13~1_combout\,
	combout => \add_instance|rf|Mux13~4_combout\);

-- Location: FF_X13_Y14_N31
\add_instance|or_ex_register|rf_d1_EX_in[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf|Mux13~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|rf_d1_EX_in\(2));

-- Location: LCCOMB_X13_Y14_N30
\add_instance|alu_a_forwarding_mux|sel_out[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_a_forwarding_mux|sel_out[2]~4_combout\ = (\add_instance|forwarding_unit|forward_selection_process~5_combout\ & ((\add_instance|forwarding_unit|forward_selection_process~4_combout\ & (\add_instance|rf_d3_mux|sel_out[2]~2_combout\)) # 
-- (!\add_instance|forwarding_unit|forward_selection_process~4_combout\ & ((\add_instance|or_ex_register|rf_d1_EX_in\(2)))))) # (!\add_instance|forwarding_unit|forward_selection_process~5_combout\ & (((\add_instance|or_ex_register|rf_d1_EX_in\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf_d3_mux|sel_out[2]~2_combout\,
	datab => \add_instance|forwarding_unit|forward_selection_process~5_combout\,
	datac => \add_instance|or_ex_register|rf_d1_EX_in\(2),
	datad => \add_instance|forwarding_unit|forward_selection_process~4_combout\,
	combout => \add_instance|alu_a_forwarding_mux|sel_out[2]~4_combout\);

-- Location: LCCOMB_X14_Y15_N0
\add_instance|alu_a_forwarding_mux|sel_out[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_a_forwarding_mux|sel_out[2]~5_combout\ = (\add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\ & ((\add_instance|ex_mem_register|alu_c_MEM\(2)))) # (!\add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\ & 
-- (\add_instance|alu_a_forwarding_mux|sel_out[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|alu_a_forwarding_mux|sel_out[2]~4_combout\,
	datac => \add_instance|ex_mem_register|alu_c_MEM\(2),
	datad => \add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\,
	combout => \add_instance|alu_a_forwarding_mux|sel_out[2]~5_combout\);

-- Location: LCCOMB_X13_Y14_N2
\add_instance|alu_b_mux|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|Equal1~0_combout\ = (!\add_instance|or_ex_register|alu_b_select_EX_in\(1) & \add_instance|or_ex_register|alu_b_select_EX_in\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|alu_b_select_EX_in\(1),
	datab => \add_instance|or_ex_register|alu_b_select_EX_in\(0),
	combout => \add_instance|alu_b_mux|Equal1~0_combout\);

-- Location: FF_X10_Y12_N17
\add_instance|rf|RF[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[1]~1_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[4][1]~q\);

-- Location: LCCOMB_X10_Y12_N6
\add_instance|rf|RF[6][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|RF[6][1]~feeder_combout\ = \add_instance|rf_d3_mux|sel_out[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|rf_d3_mux|sel_out[1]~1_combout\,
	combout => \add_instance|rf|RF[6][1]~feeder_combout\);

-- Location: FF_X10_Y12_N7
\add_instance|rf|RF[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|RF[6][1]~feeder_combout\,
	ena => \add_instance|rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[6][1]~q\);

-- Location: LCCOMB_X10_Y12_N16
\add_instance|rf|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux14~0_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(1) & ((\add_instance|id_or_register|rf_a1_OR_in\(0)) # ((\add_instance|rf|RF[6][1]~q\)))) # (!\add_instance|id_or_register|rf_a1_OR_in\(1) & 
-- (!\add_instance|id_or_register|rf_a1_OR_in\(0) & (\add_instance|rf|RF[4][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(1),
	datab => \add_instance|id_or_register|rf_a1_OR_in\(0),
	datac => \add_instance|rf|RF[4][1]~q\,
	datad => \add_instance|rf|RF[6][1]~q\,
	combout => \add_instance|rf|Mux14~0_combout\);

-- Location: FF_X14_Y12_N5
\add_instance|rf|RF[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[1]~1_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[5][1]~q\);

-- Location: LCCOMB_X14_Y12_N4
\add_instance|rf|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux14~1_combout\ = (\add_instance|rf|Mux14~0_combout\ & ((\add_instance|rf|RF[7][1]~q\) # ((!\add_instance|id_or_register|rf_a1_OR_in\(0))))) # (!\add_instance|rf|Mux14~0_combout\ & (((\add_instance|rf|RF[5][1]~q\ & 
-- \add_instance|id_or_register|rf_a1_OR_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][1]~q\,
	datab => \add_instance|rf|Mux14~0_combout\,
	datac => \add_instance|rf|RF[5][1]~q\,
	datad => \add_instance|id_or_register|rf_a1_OR_in\(0),
	combout => \add_instance|rf|Mux14~1_combout\);

-- Location: FF_X12_Y12_N9
\add_instance|rf|RF[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[1]~1_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[2][1]~q\);

-- Location: FF_X12_Y12_N31
\add_instance|rf|RF[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[1]~1_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[3][1]~q\);

-- Location: LCCOMB_X12_Y11_N24
\add_instance|rf|RF[1][1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|RF[1][1]~feeder_combout\ = \add_instance|rf_d3_mux|sel_out[1]~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|rf_d3_mux|sel_out[1]~1_combout\,
	combout => \add_instance|rf|RF[1][1]~feeder_combout\);

-- Location: FF_X12_Y11_N25
\add_instance|rf|RF[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|RF[1][1]~feeder_combout\,
	ena => \add_instance|rf|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[1][1]~q\);

-- Location: FF_X12_Y11_N31
\add_instance|rf|RF[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[1]~1_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[0][1]~q\);

-- Location: LCCOMB_X12_Y11_N30
\add_instance|rf|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux14~2_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(1) & (((\add_instance|id_or_register|rf_a1_OR_in\(0))))) # (!\add_instance|id_or_register|rf_a1_OR_in\(1) & ((\add_instance|id_or_register|rf_a1_OR_in\(0) & 
-- (\add_instance|rf|RF[1][1]~q\)) # (!\add_instance|id_or_register|rf_a1_OR_in\(0) & ((\add_instance|rf|RF[0][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(1),
	datab => \add_instance|rf|RF[1][1]~q\,
	datac => \add_instance|rf|RF[0][1]~q\,
	datad => \add_instance|id_or_register|rf_a1_OR_in\(0),
	combout => \add_instance|rf|Mux14~2_combout\);

-- Location: LCCOMB_X12_Y12_N30
\add_instance|rf|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux14~3_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(1) & ((\add_instance|rf|Mux14~2_combout\ & ((\add_instance|rf|RF[3][1]~q\))) # (!\add_instance|rf|Mux14~2_combout\ & (\add_instance|rf|RF[2][1]~q\)))) # 
-- (!\add_instance|id_or_register|rf_a1_OR_in\(1) & (((\add_instance|rf|Mux14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(1),
	datab => \add_instance|rf|RF[2][1]~q\,
	datac => \add_instance|rf|RF[3][1]~q\,
	datad => \add_instance|rf|Mux14~2_combout\,
	combout => \add_instance|rf|Mux14~3_combout\);

-- Location: LCCOMB_X13_Y12_N24
\add_instance|rf|Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux14~4_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(2) & (\add_instance|rf|Mux14~1_combout\)) # (!\add_instance|id_or_register|rf_a1_OR_in\(2) & ((\add_instance|rf|Mux14~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux14~1_combout\,
	datac => \add_instance|id_or_register|rf_a1_OR_in\(2),
	datad => \add_instance|rf|Mux14~3_combout\,
	combout => \add_instance|rf|Mux14~4_combout\);

-- Location: FF_X14_Y15_N15
\add_instance|or_ex_register|rf_d1_EX_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf|Mux14~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|rf_d1_EX_in\(1));

-- Location: LCCOMB_X14_Y15_N14
\add_instance|alu_a_forwarding_mux|sel_out[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_a_forwarding_mux|sel_out[1]~2_combout\ = (\add_instance|forwarding_unit|forward_selection_process~4_combout\ & ((\add_instance|forwarding_unit|forward_selection_process~5_combout\ & (\add_instance|rf_d3_mux|sel_out[1]~1_combout\)) # 
-- (!\add_instance|forwarding_unit|forward_selection_process~5_combout\ & ((\add_instance|or_ex_register|rf_d1_EX_in\(1)))))) # (!\add_instance|forwarding_unit|forward_selection_process~4_combout\ & (((\add_instance|or_ex_register|rf_d1_EX_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf_d3_mux|sel_out[1]~1_combout\,
	datab => \add_instance|forwarding_unit|forward_selection_process~4_combout\,
	datac => \add_instance|or_ex_register|rf_d1_EX_in\(1),
	datad => \add_instance|forwarding_unit|forward_selection_process~5_combout\,
	combout => \add_instance|alu_a_forwarding_mux|sel_out[1]~2_combout\);

-- Location: LCCOMB_X14_Y15_N20
\add_instance|alu_a_forwarding_mux|sel_out[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_a_forwarding_mux|sel_out[1]~3_combout\ = (\add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\ & (\add_instance|ex_mem_register|alu_c_MEM\(1))) # (!\add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\ & 
-- ((\add_instance|alu_a_forwarding_mux|sel_out[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|ex_mem_register|alu_c_MEM\(1),
	datac => \add_instance|alu_a_forwarding_mux|sel_out[1]~2_combout\,
	datad => \add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\,
	combout => \add_instance|alu_a_forwarding_mux|sel_out[1]~3_combout\);

-- Location: LCCOMB_X13_Y14_N14
\add_instance|alu_b_mux|sel_out[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[1]~6_combout\ = (\add_instance|or_ex_register|alu_b_select_EX_in\(0) & ((\add_instance|mem_wb_register|alu_c_WB_in\(0)))) # (!\add_instance|or_ex_register|alu_b_select_EX_in\(0) & 
-- (\add_instance|mem_wb_register|alu_c_WB_in\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|mem_wb_register|alu_c_WB_in\(1),
	datac => \add_instance|mem_wb_register|alu_c_WB_in\(0),
	datad => \add_instance|or_ex_register|alu_b_select_EX_in\(0),
	combout => \add_instance|alu_b_mux|sel_out[1]~6_combout\);

-- Location: LCCOMB_X13_Y14_N12
\add_instance|alu_b_mux|sel_out[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[1]~7_combout\ = (!\add_instance|or_ex_register|alu_b_select_EX_in\(1) & (\add_instance|alu_b_mux|sel_out[1]~6_combout\ & (!\add_instance|mem_wb_register|rf_d3_select_WB_in\(0) & 
-- \add_instance|forwarding_unit|forward_select_b\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|alu_b_select_EX_in\(1),
	datab => \add_instance|alu_b_mux|sel_out[1]~6_combout\,
	datac => \add_instance|mem_wb_register|rf_d3_select_WB_in\(0),
	datad => \add_instance|forwarding_unit|forward_select_b\(1),
	combout => \add_instance|alu_b_mux|sel_out[1]~7_combout\);

-- Location: FF_X14_Y11_N11
\add_instance|id_or_register|za_out_OR[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a1\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|id_or_register|za_out_OR\(8));

-- Location: FF_X13_Y14_N23
\add_instance|or_ex_register|za_out_EX[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|id_or_register|za_out_OR\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|za_out_EX\(8));

-- Location: FF_X12_Y11_N3
\add_instance|rf|RF[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[0]~0_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[0][0]~q\);

-- Location: LCCOMB_X12_Y11_N8
\add_instance|rf|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux31~0_combout\ = (\add_instance|id_or_register|rf_a2_OR_in\(1) & (((\add_instance|id_or_register|rf_a2_OR_in\(0))))) # (!\add_instance|id_or_register|rf_a2_OR_in\(1) & ((\add_instance|id_or_register|rf_a2_OR_in\(0) & 
-- ((\add_instance|rf|RF[1][0]~q\))) # (!\add_instance|id_or_register|rf_a2_OR_in\(0) & (\add_instance|rf|RF[0][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a2_OR_in\(1),
	datab => \add_instance|rf|RF[0][0]~q\,
	datac => \add_instance|rf|RF[1][0]~q\,
	datad => \add_instance|id_or_register|rf_a2_OR_in\(0),
	combout => \add_instance|rf|Mux31~0_combout\);

-- Location: FF_X12_Y12_N15
\add_instance|rf|RF[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[0]~0_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[3][0]~q\);

-- Location: FF_X12_Y12_N17
\add_instance|rf|RF[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[0]~0_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[2][0]~q\);

-- Location: LCCOMB_X12_Y12_N16
\add_instance|rf|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux31~1_combout\ = (\add_instance|rf|Mux31~0_combout\ & ((\add_instance|rf|RF[3][0]~q\) # ((!\add_instance|id_or_register|rf_a2_OR_in\(1))))) # (!\add_instance|rf|Mux31~0_combout\ & (((\add_instance|rf|RF[2][0]~q\ & 
-- \add_instance|id_or_register|rf_a2_OR_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux31~0_combout\,
	datab => \add_instance|rf|RF[3][0]~q\,
	datac => \add_instance|rf|RF[2][0]~q\,
	datad => \add_instance|id_or_register|rf_a2_OR_in\(1),
	combout => \add_instance|rf|Mux31~1_combout\);

-- Location: FF_X13_Y14_N11
\add_instance|or_ex_register|rf_d2_EX[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf|Mux31~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|rf_d2_EX\(0));

-- Location: LCCOMB_X12_Y12_N8
\add_instance|rf|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux30~0_combout\ = (\add_instance|id_or_register|rf_a2_OR_in\(0) & (((\add_instance|id_or_register|rf_a2_OR_in\(1))))) # (!\add_instance|id_or_register|rf_a2_OR_in\(0) & ((\add_instance|id_or_register|rf_a2_OR_in\(1) & 
-- ((\add_instance|rf|RF[2][1]~q\))) # (!\add_instance|id_or_register|rf_a2_OR_in\(1) & (\add_instance|rf|RF[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a2_OR_in\(0),
	datab => \add_instance|rf|RF[0][1]~q\,
	datac => \add_instance|rf|RF[2][1]~q\,
	datad => \add_instance|id_or_register|rf_a2_OR_in\(1),
	combout => \add_instance|rf|Mux30~0_combout\);

-- Location: LCCOMB_X12_Y12_N28
\add_instance|rf|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux30~1_combout\ = (\add_instance|rf|Mux30~0_combout\ & ((\add_instance|rf|RF[3][1]~q\) # ((!\add_instance|id_or_register|rf_a2_OR_in\(0))))) # (!\add_instance|rf|Mux30~0_combout\ & (((\add_instance|rf|RF[1][1]~q\ & 
-- \add_instance|id_or_register|rf_a2_OR_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[3][1]~q\,
	datab => \add_instance|rf|Mux30~0_combout\,
	datac => \add_instance|rf|RF[1][1]~q\,
	datad => \add_instance|id_or_register|rf_a2_OR_in\(0),
	combout => \add_instance|rf|Mux30~1_combout\);

-- Location: FF_X13_Y14_N29
\add_instance|or_ex_register|rf_d2_EX[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf|Mux30~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|rf_d2_EX\(1));

-- Location: LCCOMB_X13_Y14_N8
\add_instance|alu_b_mux|sel_out[0]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[0]~4_combout\ = (!\add_instance|or_ex_register|alu_b_select_EX_in\(1) & !\add_instance|forwarding_unit|forward_select_b\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|alu_b_select_EX_in\(1),
	datad => \add_instance|forwarding_unit|forward_select_b\(1),
	combout => \add_instance|alu_b_mux|sel_out[0]~4_combout\);

-- Location: LCCOMB_X13_Y14_N28
\add_instance|alu_b_mux|sel_out[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[1]~5_combout\ = (\add_instance|alu_b_mux|sel_out[0]~4_combout\ & ((\add_instance|alu_b_mux|Equal1~0_combout\ & (\add_instance|or_ex_register|rf_d2_EX\(0))) # (!\add_instance|alu_b_mux|Equal1~0_combout\ & 
-- ((\add_instance|or_ex_register|rf_d2_EX\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|rf_d2_EX\(0),
	datab => \add_instance|alu_b_mux|Equal1~0_combout\,
	datac => \add_instance|or_ex_register|rf_d2_EX\(1),
	datad => \add_instance|alu_b_mux|sel_out[0]~4_combout\,
	combout => \add_instance|alu_b_mux|sel_out[1]~5_combout\);

-- Location: LCCOMB_X13_Y14_N22
\add_instance|alu_b_mux|sel_out[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[1]~8_combout\ = (\add_instance|alu_b_mux|sel_out[1]~7_combout\) # ((\add_instance|alu_b_mux|sel_out[1]~5_combout\) # ((\add_instance|or_ex_register|alu_b_select_EX_in\(1) & \add_instance|or_ex_register|za_out_EX\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[1]~7_combout\,
	datab => \add_instance|or_ex_register|alu_b_select_EX_in\(1),
	datac => \add_instance|or_ex_register|za_out_EX\(8),
	datad => \add_instance|alu_b_mux|sel_out[1]~5_combout\,
	combout => \add_instance|alu_b_mux|sel_out[1]~8_combout\);

-- Location: LCCOMB_X14_Y11_N26
\add_instance|id_or_register|za_out_OR[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|id_or_register|za_out_OR[7]~feeder_combout\ = \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a0~portadataout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \add_instance|id_or_register|za_out_OR[7]~feeder_combout\);

-- Location: FF_X14_Y11_N27
\add_instance|id_or_register|za_out_OR[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|id_or_register|za_out_OR[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|id_or_register|za_out_OR\(7));

-- Location: FF_X14_Y11_N19
\add_instance|or_ex_register|za_out_EX[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|id_or_register|za_out_OR\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|za_out_EX\(7));

-- Location: LCCOMB_X13_Y14_N10
\add_instance|alu_b_mux|sel_out[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[0]~2_combout\ = (\add_instance|forwarding_unit|forward_select_b\(1) & (\add_instance|mem_wb_register|alu_c_WB_in\(0) & (!\add_instance|mem_wb_register|rf_d3_select_WB_in\(0)))) # 
-- (!\add_instance|forwarding_unit|forward_select_b\(1) & (((\add_instance|or_ex_register|rf_d2_EX\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|mem_wb_register|alu_c_WB_in\(0),
	datab => \add_instance|mem_wb_register|rf_d3_select_WB_in\(0),
	datac => \add_instance|or_ex_register|rf_d2_EX\(0),
	datad => \add_instance|forwarding_unit|forward_select_b\(1),
	combout => \add_instance|alu_b_mux|sel_out[0]~2_combout\);

-- Location: LCCOMB_X13_Y14_N16
\add_instance|alu_b_mux|sel_out[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[0]~3_combout\ = (\add_instance|or_ex_register|alu_b_select_EX_in\(1) & (\add_instance|or_ex_register|za_out_EX\(7))) # (!\add_instance|or_ex_register|alu_b_select_EX_in\(1) & 
-- (((!\add_instance|or_ex_register|alu_b_select_EX_in\(0) & \add_instance|alu_b_mux|sel_out[0]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|alu_b_select_EX_in\(1),
	datab => \add_instance|or_ex_register|za_out_EX\(7),
	datac => \add_instance|or_ex_register|alu_b_select_EX_in\(0),
	datad => \add_instance|alu_b_mux|sel_out[0]~2_combout\,
	combout => \add_instance|alu_b_mux|sel_out[0]~3_combout\);

-- Location: LCCOMB_X16_Y15_N18
\add_instance|main_alu|result~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|result~2_combout\ = (\add_instance|alu_b_mux|sel_out[0]~3_combout\ & ((\add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\ & (\add_instance|ex_mem_register|alu_c_MEM\(0))) # 
-- (!\add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\ & ((\add_instance|alu_a_forwarding_mux|sel_out[0]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[0]~3_combout\,
	datab => \add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\,
	datac => \add_instance|ex_mem_register|alu_c_MEM\(0),
	datad => \add_instance|alu_a_forwarding_mux|sel_out[0]~0_combout\,
	combout => \add_instance|main_alu|result~2_combout\);

-- Location: LCCOMB_X16_Y15_N22
\add_instance|main_alu|C[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[1]~1_combout\ = (\add_instance|or_ex_register|alu_select_EX_in\(0) & (((!\add_instance|alu_b_mux|sel_out[1]~8_combout\)) # (!\add_instance|alu_a_forwarding_mux|sel_out[1]~3_combout\))) # 
-- (!\add_instance|or_ex_register|alu_select_EX_in\(0) & (\add_instance|alu_a_forwarding_mux|sel_out[1]~3_combout\ $ (\add_instance|alu_b_mux|sel_out[1]~8_combout\ $ (\add_instance|main_alu|result~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101100111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|alu_select_EX_in\(0),
	datab => \add_instance|alu_a_forwarding_mux|sel_out[1]~3_combout\,
	datac => \add_instance|alu_b_mux|sel_out[1]~8_combout\,
	datad => \add_instance|main_alu|result~2_combout\,
	combout => \add_instance|main_alu|C[1]~1_combout\);

-- Location: FF_X16_Y15_N23
\add_instance|ex_mem_register|alu_c_MEM[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|main_alu|C[1]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|ex_mem_register|alu_c_MEM\(1));

-- Location: FF_X13_Y14_N5
\add_instance|mem_wb_register|alu_c_WB_in[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|ex_mem_register|alu_c_MEM\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|mem_wb_register|alu_c_WB_in\(1));

-- Location: LCCOMB_X13_Y14_N24
\add_instance|rf_d3_mux|sel_out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_d3_mux|sel_out[1]~1_combout\ = (\add_instance|mem_wb_register|alu_c_WB_in\(1) & !\add_instance|mem_wb_register|rf_d3_select_WB_in\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|mem_wb_register|alu_c_WB_in\(1),
	datad => \add_instance|mem_wb_register|rf_d3_select_WB_in\(0),
	combout => \add_instance|rf_d3_mux|sel_out[1]~1_combout\);

-- Location: LCCOMB_X13_Y14_N6
\add_instance|alu_b_mux|sel_out[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[2]~9_combout\ = (\add_instance|forwarding_unit|forward_select_b\(1) & ((\add_instance|alu_b_mux|Equal1~0_combout\ & ((\add_instance|rf_d3_mux|sel_out[1]~1_combout\))) # (!\add_instance|alu_b_mux|Equal1~0_combout\ & 
-- (\add_instance|rf_d3_mux|sel_out[2]~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|forwarding_unit|forward_select_b\(1),
	datab => \add_instance|alu_b_mux|Equal1~0_combout\,
	datac => \add_instance|rf_d3_mux|sel_out[2]~2_combout\,
	datad => \add_instance|rf_d3_mux|sel_out[1]~1_combout\,
	combout => \add_instance|alu_b_mux|sel_out[2]~9_combout\);

-- Location: LCCOMB_X13_Y14_N0
\add_instance|alu_b_mux|sel_out[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[2]~10_combout\ = (\add_instance|alu_b_mux|sel_out[0]~4_combout\ & ((\add_instance|alu_b_mux|Equal1~0_combout\ & (\add_instance|or_ex_register|rf_d2_EX\(1))) # (!\add_instance|alu_b_mux|Equal1~0_combout\ & 
-- ((\add_instance|or_ex_register|rf_d2_EX\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|rf_d2_EX\(1),
	datab => \add_instance|alu_b_mux|Equal1~0_combout\,
	datac => \add_instance|alu_b_mux|sel_out[0]~4_combout\,
	datad => \add_instance|or_ex_register|rf_d2_EX\(2),
	combout => \add_instance|alu_b_mux|sel_out[2]~10_combout\);

-- Location: LCCOMB_X13_Y14_N18
\add_instance|alu_b_mux|sel_out[2]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[2]~11_combout\ = (\add_instance|alu_b_mux|sel_out[2]~10_combout\) # ((\add_instance|or_ex_register|alu_b_select_EX_in\(1) & ((\add_instance|or_ex_register|za_out_EX\(9)))) # 
-- (!\add_instance|or_ex_register|alu_b_select_EX_in\(1) & (\add_instance|alu_b_mux|sel_out[2]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[2]~9_combout\,
	datab => \add_instance|or_ex_register|alu_b_select_EX_in\(1),
	datac => \add_instance|or_ex_register|za_out_EX\(9),
	datad => \add_instance|alu_b_mux|sel_out[2]~10_combout\,
	combout => \add_instance|alu_b_mux|sel_out[2]~11_combout\);

-- Location: LCCOMB_X14_Y15_N6
\add_instance|main_alu|carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|carry~0_combout\ = (\add_instance|alu_b_mux|sel_out[1]~8_combout\ & ((\add_instance|alu_a_forwarding_mux|sel_out[1]~3_combout\) # ((\add_instance|alu_b_mux|sel_out[0]~3_combout\ & 
-- \add_instance|alu_a_forwarding_mux|sel_out[0]~1_combout\)))) # (!\add_instance|alu_b_mux|sel_out[1]~8_combout\ & (\add_instance|alu_b_mux|sel_out[0]~3_combout\ & (\add_instance|alu_a_forwarding_mux|sel_out[0]~1_combout\ & 
-- \add_instance|alu_a_forwarding_mux|sel_out[1]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[0]~3_combout\,
	datab => \add_instance|alu_a_forwarding_mux|sel_out[0]~1_combout\,
	datac => \add_instance|alu_b_mux|sel_out[1]~8_combout\,
	datad => \add_instance|alu_a_forwarding_mux|sel_out[1]~3_combout\,
	combout => \add_instance|main_alu|carry~0_combout\);

-- Location: LCCOMB_X14_Y15_N24
\add_instance|main_alu|C[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[2]~2_combout\ = (\add_instance|or_ex_register|alu_select_EX_in\(0) & (((!\add_instance|alu_b_mux|sel_out[2]~11_combout\)) # (!\add_instance|alu_a_forwarding_mux|sel_out[2]~5_combout\))) # 
-- (!\add_instance|or_ex_register|alu_select_EX_in\(0) & (\add_instance|alu_a_forwarding_mux|sel_out[2]~5_combout\ $ (\add_instance|alu_b_mux|sel_out[2]~11_combout\ $ (\add_instance|main_alu|carry~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_a_forwarding_mux|sel_out[2]~5_combout\,
	datab => \add_instance|alu_b_mux|sel_out[2]~11_combout\,
	datac => \add_instance|or_ex_register|alu_select_EX_in\(0),
	datad => \add_instance|main_alu|carry~0_combout\,
	combout => \add_instance|main_alu|C[2]~2_combout\);

-- Location: FF_X14_Y15_N25
\add_instance|ex_mem_register|alu_c_MEM[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|main_alu|C[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|ex_mem_register|alu_c_MEM\(2));

-- Location: FF_X13_Y14_N27
\add_instance|mem_wb_register|alu_c_WB_in[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|ex_mem_register|alu_c_MEM\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|mem_wb_register|alu_c_WB_in\(2));

-- Location: LCCOMB_X13_Y14_N26
\add_instance|rf_d3_mux|sel_out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_d3_mux|sel_out[2]~2_combout\ = (\add_instance|mem_wb_register|alu_c_WB_in\(2) & !\add_instance|mem_wb_register|rf_d3_select_WB_in\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|mem_wb_register|alu_c_WB_in\(2),
	datad => \add_instance|mem_wb_register|rf_d3_select_WB_in\(0),
	combout => \add_instance|rf_d3_mux|sel_out[2]~2_combout\);

-- Location: LCCOMB_X13_Y12_N30
\add_instance|rf|RF[2][2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|RF[2][2]~feeder_combout\ = \add_instance|rf_d3_mux|sel_out[2]~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|rf_d3_mux|sel_out[2]~2_combout\,
	combout => \add_instance|rf|RF[2][2]~feeder_combout\);

-- Location: FF_X13_Y12_N31
\add_instance|rf|RF[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|RF[2][2]~feeder_combout\,
	ena => \add_instance|rf|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[2][2]~q\);

-- Location: LCCOMB_X13_Y10_N16
\add_instance|rf|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux29~0_combout\ = (\add_instance|id_or_register|rf_a2_OR_in\(0) & (((\add_instance|rf|RF[1][2]~q\) # (\add_instance|id_or_register|rf_a2_OR_in\(1))))) # (!\add_instance|id_or_register|rf_a2_OR_in\(0) & (\add_instance|rf|RF[0][2]~q\ & 
-- ((!\add_instance|id_or_register|rf_a2_OR_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[0][2]~q\,
	datab => \add_instance|id_or_register|rf_a2_OR_in\(0),
	datac => \add_instance|rf|RF[1][2]~q\,
	datad => \add_instance|id_or_register|rf_a2_OR_in\(1),
	combout => \add_instance|rf|Mux29~0_combout\);

-- Location: LCCOMB_X14_Y14_N22
\add_instance|rf|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux29~1_combout\ = (\add_instance|id_or_register|rf_a2_OR_in\(1) & ((\add_instance|rf|Mux29~0_combout\ & ((\add_instance|rf|RF[3][2]~q\))) # (!\add_instance|rf|Mux29~0_combout\ & (\add_instance|rf|RF[2][2]~q\)))) # 
-- (!\add_instance|id_or_register|rf_a2_OR_in\(1) & (((\add_instance|rf|Mux29~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[2][2]~q\,
	datab => \add_instance|id_or_register|rf_a2_OR_in\(1),
	datac => \add_instance|rf|Mux29~0_combout\,
	datad => \add_instance|rf|RF[3][2]~q\,
	combout => \add_instance|rf|Mux29~1_combout\);

-- Location: FF_X14_Y14_N23
\add_instance|or_ex_register|rf_d2_EX[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|Mux29~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|rf_d2_EX\(2));

-- Location: LCCOMB_X14_Y14_N6
\add_instance|alu_b_mux|sel_out[3]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[3]~13_combout\ = (!\add_instance|forwarding_unit|forward_select_b\(1) & ((\add_instance|alu_b_mux|Equal1~0_combout\ & (\add_instance|or_ex_register|rf_d2_EX\(2))) # (!\add_instance|alu_b_mux|Equal1~0_combout\ & 
-- ((\add_instance|or_ex_register|rf_d2_EX\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|rf_d2_EX\(2),
	datab => \add_instance|forwarding_unit|forward_select_b\(1),
	datac => \add_instance|or_ex_register|rf_d2_EX\(3),
	datad => \add_instance|alu_b_mux|Equal1~0_combout\,
	combout => \add_instance|alu_b_mux|sel_out[3]~13_combout\);

-- Location: LCCOMB_X16_Y11_N30
\add_instance|id_or_register|za_out_OR[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|id_or_register|za_out_OR[10]~feeder_combout\ = \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a3\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a3\,
	combout => \add_instance|id_or_register|za_out_OR[10]~feeder_combout\);

-- Location: FF_X16_Y11_N31
\add_instance|id_or_register|za_out_OR[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|id_or_register|za_out_OR[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|id_or_register|za_out_OR\(10));

-- Location: FF_X14_Y14_N9
\add_instance|or_ex_register|za_out_EX[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|id_or_register|za_out_OR\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|za_out_EX\(10));

-- Location: LCCOMB_X14_Y14_N18
\add_instance|alu_b_mux|sel_out[3]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[3]~12_combout\ = (\add_instance|forwarding_unit|forward_select_b\(1) & ((\add_instance|alu_b_mux|Equal1~0_combout\ & (\add_instance|rf_d3_mux|sel_out[2]~2_combout\)) # (!\add_instance|alu_b_mux|Equal1~0_combout\ & 
-- ((\add_instance|rf_d3_mux|sel_out[3]~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|Equal1~0_combout\,
	datab => \add_instance|forwarding_unit|forward_select_b\(1),
	datac => \add_instance|rf_d3_mux|sel_out[2]~2_combout\,
	datad => \add_instance|rf_d3_mux|sel_out[3]~3_combout\,
	combout => \add_instance|alu_b_mux|sel_out[3]~12_combout\);

-- Location: LCCOMB_X14_Y14_N8
\add_instance|alu_b_mux|sel_out[3]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[3]~14_combout\ = (\add_instance|or_ex_register|alu_b_select_EX_in\(1) & (((\add_instance|or_ex_register|za_out_EX\(10))))) # (!\add_instance|or_ex_register|alu_b_select_EX_in\(1) & 
-- ((\add_instance|alu_b_mux|sel_out[3]~13_combout\) # ((\add_instance|alu_b_mux|sel_out[3]~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[3]~13_combout\,
	datab => \add_instance|or_ex_register|alu_b_select_EX_in\(1),
	datac => \add_instance|or_ex_register|za_out_EX\(10),
	datad => \add_instance|alu_b_mux|sel_out[3]~12_combout\,
	combout => \add_instance|alu_b_mux|sel_out[3]~14_combout\);

-- Location: LCCOMB_X10_Y11_N4
\add_instance|rf|RF[6][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|RF[6][3]~feeder_combout\ = \add_instance|rf_d3_mux|sel_out[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|rf_d3_mux|sel_out[3]~3_combout\,
	combout => \add_instance|rf|RF[6][3]~feeder_combout\);

-- Location: FF_X10_Y11_N5
\add_instance|rf|RF[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|RF[6][3]~feeder_combout\,
	ena => \add_instance|rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[6][3]~q\);

-- Location: FF_X10_Y11_N27
\add_instance|rf|RF[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[3]~3_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[4][3]~q\);

-- Location: LCCOMB_X10_Y11_N26
\add_instance|rf|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux12~0_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(0) & (((\add_instance|id_or_register|rf_a1_OR_in\(1))))) # (!\add_instance|id_or_register|rf_a1_OR_in\(0) & ((\add_instance|id_or_register|rf_a1_OR_in\(1) & 
-- (\add_instance|rf|RF[6][3]~q\)) # (!\add_instance|id_or_register|rf_a1_OR_in\(1) & ((\add_instance|rf|RF[4][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(0),
	datab => \add_instance|rf|RF[6][3]~q\,
	datac => \add_instance|rf|RF[4][3]~q\,
	datad => \add_instance|id_or_register|rf_a1_OR_in\(1),
	combout => \add_instance|rf|Mux12~0_combout\);

-- Location: FF_X14_Y12_N17
\add_instance|rf|RF[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[3]~3_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[5][3]~q\);

-- Location: LCCOMB_X14_Y12_N16
\add_instance|rf|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux12~1_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(0) & ((\add_instance|rf|Mux12~0_combout\ & ((\add_instance|rf|RF[7][3]~q\))) # (!\add_instance|rf|Mux12~0_combout\ & (\add_instance|rf|RF[5][3]~q\)))) # 
-- (!\add_instance|id_or_register|rf_a1_OR_in\(0) & (\add_instance|rf|Mux12~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(0),
	datab => \add_instance|rf|Mux12~0_combout\,
	datac => \add_instance|rf|RF[5][3]~q\,
	datad => \add_instance|rf|RF[7][3]~q\,
	combout => \add_instance|rf|Mux12~1_combout\);

-- Location: FF_X12_Y12_N19
\add_instance|rf|RF[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[3]~3_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[2][3]~q\);

-- Location: FF_X12_Y12_N13
\add_instance|rf|RF[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[3]~3_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[3][3]~q\);

-- Location: FF_X13_Y10_N31
\add_instance|rf|RF[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[3]~3_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[0][3]~q\);

-- Location: LCCOMB_X13_Y10_N30
\add_instance|rf|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux12~2_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(1) & (((\add_instance|id_or_register|rf_a1_OR_in\(0))))) # (!\add_instance|id_or_register|rf_a1_OR_in\(1) & ((\add_instance|id_or_register|rf_a1_OR_in\(0) & 
-- (\add_instance|rf|RF[1][3]~q\)) # (!\add_instance|id_or_register|rf_a1_OR_in\(0) & ((\add_instance|rf|RF[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(1),
	datab => \add_instance|rf|RF[1][3]~q\,
	datac => \add_instance|rf|RF[0][3]~q\,
	datad => \add_instance|id_or_register|rf_a1_OR_in\(0),
	combout => \add_instance|rf|Mux12~2_combout\);

-- Location: LCCOMB_X12_Y12_N12
\add_instance|rf|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux12~3_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(1) & ((\add_instance|rf|Mux12~2_combout\ & ((\add_instance|rf|RF[3][3]~q\))) # (!\add_instance|rf|Mux12~2_combout\ & (\add_instance|rf|RF[2][3]~q\)))) # 
-- (!\add_instance|id_or_register|rf_a1_OR_in\(1) & (((\add_instance|rf|Mux12~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(1),
	datab => \add_instance|rf|RF[2][3]~q\,
	datac => \add_instance|rf|RF[3][3]~q\,
	datad => \add_instance|rf|Mux12~2_combout\,
	combout => \add_instance|rf|Mux12~3_combout\);

-- Location: LCCOMB_X14_Y14_N26
\add_instance|rf|Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux12~4_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(2) & (\add_instance|rf|Mux12~1_combout\)) # (!\add_instance|id_or_register|rf_a1_OR_in\(2) & ((\add_instance|rf|Mux12~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux12~1_combout\,
	datac => \add_instance|id_or_register|rf_a1_OR_in\(2),
	datad => \add_instance|rf|Mux12~3_combout\,
	combout => \add_instance|rf|Mux12~4_combout\);

-- Location: FF_X14_Y14_N27
\add_instance|or_ex_register|rf_d1_EX_in[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|Mux12~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|rf_d1_EX_in\(3));

-- Location: LCCOMB_X14_Y14_N28
\add_instance|alu_a_forwarding_mux|sel_out[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_a_forwarding_mux|sel_out[3]~6_combout\ = (\add_instance|forwarding_unit|forward_selection_process~4_combout\ & ((\add_instance|forwarding_unit|forward_selection_process~5_combout\ & ((\add_instance|rf_d3_mux|sel_out[3]~3_combout\))) # 
-- (!\add_instance|forwarding_unit|forward_selection_process~5_combout\ & (\add_instance|or_ex_register|rf_d1_EX_in\(3))))) # (!\add_instance|forwarding_unit|forward_selection_process~4_combout\ & (\add_instance|or_ex_register|rf_d1_EX_in\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|forwarding_unit|forward_selection_process~4_combout\,
	datab => \add_instance|or_ex_register|rf_d1_EX_in\(3),
	datac => \add_instance|forwarding_unit|forward_selection_process~5_combout\,
	datad => \add_instance|rf_d3_mux|sel_out[3]~3_combout\,
	combout => \add_instance|alu_a_forwarding_mux|sel_out[3]~6_combout\);

-- Location: LCCOMB_X14_Y15_N30
\add_instance|alu_a_forwarding_mux|sel_out[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_a_forwarding_mux|sel_out[3]~7_combout\ = (\add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\ & ((\add_instance|ex_mem_register|alu_c_MEM\(3)))) # (!\add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\ & 
-- (\add_instance|alu_a_forwarding_mux|sel_out[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\,
	datac => \add_instance|alu_a_forwarding_mux|sel_out[3]~6_combout\,
	datad => \add_instance|ex_mem_register|alu_c_MEM\(3),
	combout => \add_instance|alu_a_forwarding_mux|sel_out[3]~7_combout\);

-- Location: LCCOMB_X14_Y15_N26
\add_instance|main_alu|result~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|result~5_combout\ = (\add_instance|alu_b_mux|sel_out[2]~11_combout\ & ((\add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\ & (\add_instance|ex_mem_register|alu_c_MEM\(2))) # 
-- (!\add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\ & ((\add_instance|alu_a_forwarding_mux|sel_out[2]~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ex_mem_register|alu_c_MEM\(2),
	datab => \add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\,
	datac => \add_instance|alu_a_forwarding_mux|sel_out[2]~4_combout\,
	datad => \add_instance|alu_b_mux|sel_out[2]~11_combout\,
	combout => \add_instance|main_alu|result~5_combout\);

-- Location: LCCOMB_X14_Y15_N28
\add_instance|main_alu|carry~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|carry~1_combout\ = (\add_instance|main_alu|carry~0_combout\ & ((\add_instance|alu_b_mux|sel_out[2]~11_combout\) # (\add_instance|alu_a_forwarding_mux|sel_out[2]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[2]~11_combout\,
	datab => \add_instance|alu_a_forwarding_mux|sel_out[2]~5_combout\,
	datad => \add_instance|main_alu|carry~0_combout\,
	combout => \add_instance|main_alu|carry~1_combout\);

-- Location: LCCOMB_X14_Y13_N24
\add_instance|main_alu|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|sum~0_combout\ = \add_instance|alu_a_forwarding_mux|sel_out[3]~7_combout\ $ (\add_instance|alu_b_mux|sel_out[3]~14_combout\ $ (((\add_instance|main_alu|result~5_combout\) # (\add_instance|main_alu|carry~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000100011110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|main_alu|result~5_combout\,
	datab => \add_instance|main_alu|carry~1_combout\,
	datac => \add_instance|alu_a_forwarding_mux|sel_out[3]~7_combout\,
	datad => \add_instance|alu_b_mux|sel_out[3]~14_combout\,
	combout => \add_instance|main_alu|sum~0_combout\);

-- Location: LCCOMB_X14_Y13_N6
\add_instance|main_alu|C[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[3]~3_combout\ = (\add_instance|or_ex_register|alu_select_EX_in\(0) & (((!\add_instance|alu_a_forwarding_mux|sel_out[3]~7_combout\)) # (!\add_instance|alu_b_mux|sel_out[3]~14_combout\))) # 
-- (!\add_instance|or_ex_register|alu_select_EX_in\(0) & (((\add_instance|main_alu|sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[3]~14_combout\,
	datab => \add_instance|or_ex_register|alu_select_EX_in\(0),
	datac => \add_instance|alu_a_forwarding_mux|sel_out[3]~7_combout\,
	datad => \add_instance|main_alu|sum~0_combout\,
	combout => \add_instance|main_alu|C[3]~3_combout\);

-- Location: FF_X14_Y13_N7
\add_instance|ex_mem_register|alu_c_MEM[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|main_alu|C[3]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|ex_mem_register|alu_c_MEM\(3));

-- Location: FF_X13_Y14_N21
\add_instance|mem_wb_register|alu_c_WB_in[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|ex_mem_register|alu_c_MEM\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|mem_wb_register|alu_c_WB_in\(3));

-- Location: LCCOMB_X13_Y14_N20
\add_instance|rf_d3_mux|sel_out[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_d3_mux|sel_out[3]~3_combout\ = (\add_instance|mem_wb_register|alu_c_WB_in\(3) & !\add_instance|mem_wb_register|rf_d3_select_WB_in\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|mem_wb_register|alu_c_WB_in\(3),
	datad => \add_instance|mem_wb_register|rf_d3_select_WB_in\(0),
	combout => \add_instance|rf_d3_mux|sel_out[3]~3_combout\);

-- Location: LCCOMB_X13_Y10_N24
\add_instance|rf|RF[1][3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|RF[1][3]~feeder_combout\ = \add_instance|rf_d3_mux|sel_out[3]~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|rf_d3_mux|sel_out[3]~3_combout\,
	combout => \add_instance|rf|RF[1][3]~feeder_combout\);

-- Location: FF_X13_Y10_N25
\add_instance|rf|RF[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|RF[1][3]~feeder_combout\,
	ena => \add_instance|rf|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[1][3]~q\);

-- Location: LCCOMB_X12_Y12_N18
\add_instance|rf|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux28~0_combout\ = (\add_instance|id_or_register|rf_a2_OR_in\(1) & (((\add_instance|rf|RF[2][3]~q\) # (\add_instance|id_or_register|rf_a2_OR_in\(0))))) # (!\add_instance|id_or_register|rf_a2_OR_in\(1) & (\add_instance|rf|RF[0][3]~q\ & 
-- ((!\add_instance|id_or_register|rf_a2_OR_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[0][3]~q\,
	datab => \add_instance|id_or_register|rf_a2_OR_in\(1),
	datac => \add_instance|rf|RF[2][3]~q\,
	datad => \add_instance|id_or_register|rf_a2_OR_in\(0),
	combout => \add_instance|rf|Mux28~0_combout\);

-- Location: LCCOMB_X13_Y12_N12
\add_instance|rf|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux28~1_combout\ = (\add_instance|id_or_register|rf_a2_OR_in\(0) & ((\add_instance|rf|Mux28~0_combout\ & ((\add_instance|rf|RF[3][3]~q\))) # (!\add_instance|rf|Mux28~0_combout\ & (\add_instance|rf|RF[1][3]~q\)))) # 
-- (!\add_instance|id_or_register|rf_a2_OR_in\(0) & (((\add_instance|rf|Mux28~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a2_OR_in\(0),
	datab => \add_instance|rf|RF[1][3]~q\,
	datac => \add_instance|rf|RF[3][3]~q\,
	datad => \add_instance|rf|Mux28~0_combout\,
	combout => \add_instance|rf|Mux28~1_combout\);

-- Location: FF_X13_Y12_N13
\add_instance|or_ex_register|rf_d2_EX[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|Mux28~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|rf_d2_EX\(3));

-- Location: LCCOMB_X14_Y13_N2
\add_instance|alu_b_mux|sel_out[4]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[4]~16_combout\ = (!\add_instance|forwarding_unit|forward_select_b\(1) & ((\add_instance|alu_b_mux|Equal1~0_combout\ & (\add_instance|or_ex_register|rf_d2_EX\(3))) # (!\add_instance|alu_b_mux|Equal1~0_combout\ & 
-- ((\add_instance|or_ex_register|rf_d2_EX\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|rf_d2_EX\(3),
	datab => \add_instance|forwarding_unit|forward_select_b\(1),
	datac => \add_instance|or_ex_register|rf_d2_EX\(4),
	datad => \add_instance|alu_b_mux|Equal1~0_combout\,
	combout => \add_instance|alu_b_mux|sel_out[4]~16_combout\);

-- Location: LCCOMB_X14_Y13_N16
\add_instance|alu_b_mux|sel_out[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[4]~15_combout\ = (\add_instance|forwarding_unit|forward_select_b\(1) & ((\add_instance|alu_b_mux|Equal1~0_combout\ & ((\add_instance|rf_d3_mux|sel_out[3]~3_combout\))) # (!\add_instance|alu_b_mux|Equal1~0_combout\ & 
-- (\add_instance|rf_d3_mux|sel_out[4]~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf_d3_mux|sel_out[4]~4_combout\,
	datab => \add_instance|forwarding_unit|forward_select_b\(1),
	datac => \add_instance|rf_d3_mux|sel_out[3]~3_combout\,
	datad => \add_instance|alu_b_mux|Equal1~0_combout\,
	combout => \add_instance|alu_b_mux|sel_out[4]~15_combout\);

-- Location: LCCOMB_X14_Y13_N18
\add_instance|alu_b_mux|sel_out[4]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[4]~17_combout\ = (\add_instance|or_ex_register|alu_b_select_EX_in\(1) & (((\add_instance|or_ex_register|za_out_EX\(11))))) # (!\add_instance|or_ex_register|alu_b_select_EX_in\(1) & 
-- ((\add_instance|alu_b_mux|sel_out[4]~16_combout\) # ((\add_instance|alu_b_mux|sel_out[4]~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|alu_b_select_EX_in\(1),
	datab => \add_instance|alu_b_mux|sel_out[4]~16_combout\,
	datac => \add_instance|or_ex_register|za_out_EX\(11),
	datad => \add_instance|alu_b_mux|sel_out[4]~15_combout\,
	combout => \add_instance|alu_b_mux|sel_out[4]~17_combout\);

-- Location: LCCOMB_X14_Y13_N10
\add_instance|main_alu|carry~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|carry~2_combout\ = (\add_instance|alu_a_forwarding_mux|sel_out[3]~7_combout\ & ((\add_instance|main_alu|result~5_combout\) # ((\add_instance|main_alu|carry~1_combout\) # (\add_instance|alu_b_mux|sel_out[3]~14_combout\)))) # 
-- (!\add_instance|alu_a_forwarding_mux|sel_out[3]~7_combout\ & (\add_instance|alu_b_mux|sel_out[3]~14_combout\ & ((\add_instance|main_alu|result~5_combout\) # (\add_instance|main_alu|carry~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|main_alu|result~5_combout\,
	datab => \add_instance|main_alu|carry~1_combout\,
	datac => \add_instance|alu_a_forwarding_mux|sel_out[3]~7_combout\,
	datad => \add_instance|alu_b_mux|sel_out[3]~14_combout\,
	combout => \add_instance|main_alu|carry~2_combout\);

-- Location: LCCOMB_X10_Y12_N2
\add_instance|rf|RF[6][4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|RF[6][4]~feeder_combout\ = \add_instance|rf_d3_mux|sel_out[4]~4_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|rf_d3_mux|sel_out[4]~4_combout\,
	combout => \add_instance|rf|RF[6][4]~feeder_combout\);

-- Location: FF_X10_Y12_N3
\add_instance|rf|RF[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|RF[6][4]~feeder_combout\,
	ena => \add_instance|rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[6][4]~q\);

-- Location: FF_X10_Y12_N29
\add_instance|rf|RF[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[4]~4_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[4][4]~q\);

-- Location: LCCOMB_X10_Y12_N28
\add_instance|rf|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux11~0_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(1) & ((\add_instance|rf|RF[6][4]~q\) # ((\add_instance|id_or_register|rf_a1_OR_in\(0))))) # (!\add_instance|id_or_register|rf_a1_OR_in\(1) & (((\add_instance|rf|RF[4][4]~q\ & 
-- !\add_instance|id_or_register|rf_a1_OR_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(1),
	datab => \add_instance|rf|RF[6][4]~q\,
	datac => \add_instance|rf|RF[4][4]~q\,
	datad => \add_instance|id_or_register|rf_a1_OR_in\(0),
	combout => \add_instance|rf|Mux11~0_combout\);

-- Location: FF_X14_Y12_N7
\add_instance|rf|RF[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[4]~4_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[5][4]~q\);

-- Location: LCCOMB_X14_Y12_N6
\add_instance|rf|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux11~1_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(0) & ((\add_instance|rf|Mux11~0_combout\ & ((\add_instance|rf|RF[7][4]~q\))) # (!\add_instance|rf|Mux11~0_combout\ & (\add_instance|rf|RF[5][4]~q\)))) # 
-- (!\add_instance|id_or_register|rf_a1_OR_in\(0) & (\add_instance|rf|Mux11~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(0),
	datab => \add_instance|rf|Mux11~0_combout\,
	datac => \add_instance|rf|RF[5][4]~q\,
	datad => \add_instance|rf|RF[7][4]~q\,
	combout => \add_instance|rf|Mux11~1_combout\);

-- Location: FF_X13_Y11_N7
\add_instance|rf|RF[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[4]~4_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[2][4]~q\);

-- Location: FF_X12_Y11_N13
\add_instance|rf|RF[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[4]~4_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[1][4]~q\);

-- Location: LCCOMB_X12_Y11_N22
\add_instance|rf|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux11~2_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(1) & (\add_instance|id_or_register|rf_a1_OR_in\(0))) # (!\add_instance|id_or_register|rf_a1_OR_in\(1) & ((\add_instance|id_or_register|rf_a1_OR_in\(0) & 
-- ((\add_instance|rf|RF[1][4]~q\))) # (!\add_instance|id_or_register|rf_a1_OR_in\(0) & (\add_instance|rf|RF[0][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(1),
	datab => \add_instance|id_or_register|rf_a1_OR_in\(0),
	datac => \add_instance|rf|RF[0][4]~q\,
	datad => \add_instance|rf|RF[1][4]~q\,
	combout => \add_instance|rf|Mux11~2_combout\);

-- Location: FF_X13_Y11_N1
\add_instance|rf|RF[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[4]~4_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[3][4]~q\);

-- Location: LCCOMB_X13_Y11_N0
\add_instance|rf|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux11~3_combout\ = (\add_instance|rf|Mux11~2_combout\ & (((\add_instance|rf|RF[3][4]~q\) # (!\add_instance|id_or_register|rf_a1_OR_in\(1))))) # (!\add_instance|rf|Mux11~2_combout\ & (\add_instance|rf|RF[2][4]~q\ & 
-- ((\add_instance|id_or_register|rf_a1_OR_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[2][4]~q\,
	datab => \add_instance|rf|Mux11~2_combout\,
	datac => \add_instance|rf|RF[3][4]~q\,
	datad => \add_instance|id_or_register|rf_a1_OR_in\(1),
	combout => \add_instance|rf|Mux11~3_combout\);

-- Location: LCCOMB_X14_Y12_N8
\add_instance|rf|Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux11~4_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(2) & (\add_instance|rf|Mux11~1_combout\)) # (!\add_instance|id_or_register|rf_a1_OR_in\(2) & ((\add_instance|rf|Mux11~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux11~1_combout\,
	datac => \add_instance|rf|Mux11~3_combout\,
	datad => \add_instance|id_or_register|rf_a1_OR_in\(2),
	combout => \add_instance|rf|Mux11~4_combout\);

-- Location: FF_X14_Y12_N9
\add_instance|or_ex_register|rf_d1_EX_in[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|Mux11~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|rf_d1_EX_in\(4));

-- Location: LCCOMB_X14_Y13_N20
\add_instance|alu_a_forwarding_mux|sel_out[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_a_forwarding_mux|sel_out[4]~8_combout\ = (!\add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\ & ((\add_instance|forwarding_unit|forward_selection_process~8_combout\ & (\add_instance|rf_d3_mux|sel_out[4]~4_combout\)) # 
-- (!\add_instance|forwarding_unit|forward_selection_process~8_combout\ & ((\add_instance|or_ex_register|rf_d1_EX_in\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf_d3_mux|sel_out[4]~4_combout\,
	datab => \add_instance|or_ex_register|rf_d1_EX_in\(4),
	datac => \add_instance|forwarding_unit|forward_selection_process~8_combout\,
	datad => \add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\,
	combout => \add_instance|alu_a_forwarding_mux|sel_out[4]~8_combout\);

-- Location: LCCOMB_X14_Y13_N12
\add_instance|alu_a_forwarding_mux|sel_out[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_a_forwarding_mux|sel_out[4]~9_combout\ = (\add_instance|alu_a_forwarding_mux|sel_out[4]~8_combout\) # ((\add_instance|ex_mem_register|alu_c_MEM\(4) & \add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|ex_mem_register|alu_c_MEM\(4),
	datac => \add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\,
	datad => \add_instance|alu_a_forwarding_mux|sel_out[4]~8_combout\,
	combout => \add_instance|alu_a_forwarding_mux|sel_out[4]~9_combout\);

-- Location: LCCOMB_X14_Y13_N8
\add_instance|main_alu|C[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[4]~4_combout\ = (\add_instance|or_ex_register|alu_select_EX_in\(0) & (((!\add_instance|alu_a_forwarding_mux|sel_out[4]~9_combout\)) # (!\add_instance|alu_b_mux|sel_out[4]~17_combout\))) # 
-- (!\add_instance|or_ex_register|alu_select_EX_in\(0) & (\add_instance|alu_b_mux|sel_out[4]~17_combout\ $ (\add_instance|main_alu|carry~2_combout\ $ (\add_instance|alu_a_forwarding_mux|sel_out[4]~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[4]~17_combout\,
	datab => \add_instance|main_alu|carry~2_combout\,
	datac => \add_instance|alu_a_forwarding_mux|sel_out[4]~9_combout\,
	datad => \add_instance|or_ex_register|alu_select_EX_in\(0),
	combout => \add_instance|main_alu|C[4]~4_combout\);

-- Location: FF_X14_Y13_N9
\add_instance|ex_mem_register|alu_c_MEM[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|main_alu|C[4]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|ex_mem_register|alu_c_MEM\(4));

-- Location: FF_X14_Y13_N31
\add_instance|mem_wb_register|alu_c_WB_in[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|ex_mem_register|alu_c_MEM\(4),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|mem_wb_register|alu_c_WB_in\(4));

-- Location: LCCOMB_X14_Y13_N30
\add_instance|rf_d3_mux|sel_out[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_d3_mux|sel_out[4]~4_combout\ = (\add_instance|mem_wb_register|alu_c_WB_in\(4) & !\add_instance|mem_wb_register|rf_d3_select_WB_in\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|mem_wb_register|alu_c_WB_in\(4),
	datad => \add_instance|mem_wb_register|rf_d3_select_WB_in\(0),
	combout => \add_instance|rf_d3_mux|sel_out[4]~4_combout\);

-- Location: FF_X12_Y11_N23
\add_instance|rf|RF[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[4]~4_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[0][4]~q\);

-- Location: LCCOMB_X12_Y11_N12
\add_instance|rf|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux27~0_combout\ = (\add_instance|id_or_register|rf_a2_OR_in\(0) & (((\add_instance|rf|RF[1][4]~q\) # (\add_instance|id_or_register|rf_a2_OR_in\(1))))) # (!\add_instance|id_or_register|rf_a2_OR_in\(0) & (\add_instance|rf|RF[0][4]~q\ & 
-- ((!\add_instance|id_or_register|rf_a2_OR_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[0][4]~q\,
	datab => \add_instance|id_or_register|rf_a2_OR_in\(0),
	datac => \add_instance|rf|RF[1][4]~q\,
	datad => \add_instance|id_or_register|rf_a2_OR_in\(1),
	combout => \add_instance|rf|Mux27~0_combout\);

-- Location: LCCOMB_X13_Y11_N6
\add_instance|rf|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux27~1_combout\ = (\add_instance|rf|Mux27~0_combout\ & (((\add_instance|rf|RF[3][4]~q\)) # (!\add_instance|id_or_register|rf_a2_OR_in\(1)))) # (!\add_instance|rf|Mux27~0_combout\ & (\add_instance|id_or_register|rf_a2_OR_in\(1) & 
-- (\add_instance|rf|RF[2][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux27~0_combout\,
	datab => \add_instance|id_or_register|rf_a2_OR_in\(1),
	datac => \add_instance|rf|RF[2][4]~q\,
	datad => \add_instance|rf|RF[3][4]~q\,
	combout => \add_instance|rf|Mux27~1_combout\);

-- Location: FF_X14_Y13_N3
\add_instance|or_ex_register|rf_d2_EX[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf|Mux27~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|rf_d2_EX\(4));

-- Location: LCCOMB_X13_Y13_N8
\add_instance|alu_b_mux|sel_out[5]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[5]~18_combout\ = (\add_instance|forwarding_unit|forward_select_b\(1) & (((!\add_instance|mem_wb_register|rf_d3_select_WB_in\(0) & \add_instance|mem_wb_register|alu_c_WB_in\(4))))) # 
-- (!\add_instance|forwarding_unit|forward_select_b\(1) & (\add_instance|or_ex_register|rf_d2_EX\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|rf_d2_EX\(4),
	datab => \add_instance|mem_wb_register|rf_d3_select_WB_in\(0),
	datac => \add_instance|mem_wb_register|alu_c_WB_in\(4),
	datad => \add_instance|forwarding_unit|forward_select_b\(1),
	combout => \add_instance|alu_b_mux|sel_out[5]~18_combout\);

-- Location: LCCOMB_X10_Y12_N20
\add_instance|rf|RF[4][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|RF[4][5]~feeder_combout\ = \add_instance|rf_d3_mux|sel_out[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|rf_d3_mux|sel_out[5]~5_combout\,
	combout => \add_instance|rf|RF[4][5]~feeder_combout\);

-- Location: FF_X10_Y12_N21
\add_instance|rf|RF[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|RF[4][5]~feeder_combout\,
	ena => \add_instance|rf|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[4][5]~q\);

-- Location: FF_X10_Y12_N27
\add_instance|rf|RF[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[5]~5_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[6][5]~q\);

-- Location: LCCOMB_X10_Y12_N26
\add_instance|rf|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux10~0_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(1) & (((\add_instance|rf|RF[6][5]~q\) # (\add_instance|id_or_register|rf_a1_OR_in\(0))))) # (!\add_instance|id_or_register|rf_a1_OR_in\(1) & (\add_instance|rf|RF[4][5]~q\ & 
-- ((!\add_instance|id_or_register|rf_a1_OR_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(1),
	datab => \add_instance|rf|RF[4][5]~q\,
	datac => \add_instance|rf|RF[6][5]~q\,
	datad => \add_instance|id_or_register|rf_a1_OR_in\(0),
	combout => \add_instance|rf|Mux10~0_combout\);

-- Location: FF_X14_Y12_N25
\add_instance|rf|RF[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[5]~5_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[5][5]~q\);

-- Location: LCCOMB_X14_Y12_N24
\add_instance|rf|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux10~1_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(0) & ((\add_instance|rf|Mux10~0_combout\ & ((\add_instance|rf|RF[7][5]~q\))) # (!\add_instance|rf|Mux10~0_combout\ & (\add_instance|rf|RF[5][5]~q\)))) # 
-- (!\add_instance|id_or_register|rf_a1_OR_in\(0) & (\add_instance|rf|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(0),
	datab => \add_instance|rf|Mux10~0_combout\,
	datac => \add_instance|rf|RF[5][5]~q\,
	datad => \add_instance|rf|RF[7][5]~q\,
	combout => \add_instance|rf|Mux10~1_combout\);

-- Location: FF_X13_Y10_N3
\add_instance|rf|RF[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[5]~5_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[0][5]~q\);

-- Location: LCCOMB_X13_Y10_N2
\add_instance|rf|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux10~2_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(0) & ((\add_instance|id_or_register|rf_a1_OR_in\(1)) # ((\add_instance|rf|RF[1][5]~q\)))) # (!\add_instance|id_or_register|rf_a1_OR_in\(0) & 
-- (!\add_instance|id_or_register|rf_a1_OR_in\(1) & (\add_instance|rf|RF[0][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(0),
	datab => \add_instance|id_or_register|rf_a1_OR_in\(1),
	datac => \add_instance|rf|RF[0][5]~q\,
	datad => \add_instance|rf|RF[1][5]~q\,
	combout => \add_instance|rf|Mux10~2_combout\);

-- Location: FF_X12_Y13_N13
\add_instance|rf|RF[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[5]~5_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[3][5]~q\);

-- Location: FF_X13_Y13_N5
\add_instance|rf|RF[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[5]~5_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[2][5]~q\);

-- Location: LCCOMB_X12_Y13_N12
\add_instance|rf|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux10~3_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(1) & ((\add_instance|rf|Mux10~2_combout\ & (\add_instance|rf|RF[3][5]~q\)) # (!\add_instance|rf|Mux10~2_combout\ & ((\add_instance|rf|RF[2][5]~q\))))) # 
-- (!\add_instance|id_or_register|rf_a1_OR_in\(1) & (\add_instance|rf|Mux10~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(1),
	datab => \add_instance|rf|Mux10~2_combout\,
	datac => \add_instance|rf|RF[3][5]~q\,
	datad => \add_instance|rf|RF[2][5]~q\,
	combout => \add_instance|rf|Mux10~3_combout\);

-- Location: LCCOMB_X13_Y13_N14
\add_instance|rf|Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux10~4_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(2) & (\add_instance|rf|Mux10~1_combout\)) # (!\add_instance|id_or_register|rf_a1_OR_in\(2) & ((\add_instance|rf|Mux10~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(2),
	datab => \add_instance|rf|Mux10~1_combout\,
	datad => \add_instance|rf|Mux10~3_combout\,
	combout => \add_instance|rf|Mux10~4_combout\);

-- Location: FF_X13_Y13_N15
\add_instance|or_ex_register|rf_d1_EX_in[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|Mux10~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|rf_d1_EX_in\(5));

-- Location: LCCOMB_X13_Y13_N28
\add_instance|alu_a_forwarding_mux|sel_out[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_a_forwarding_mux|sel_out[5]~10_combout\ = (\add_instance|forwarding_unit|forward_selection_process~8_combout\ & (\add_instance|mem_wb_register|alu_c_WB_in\(5) & ((!\add_instance|mem_wb_register|rf_d3_select_WB_in\(0))))) # 
-- (!\add_instance|forwarding_unit|forward_selection_process~8_combout\ & (((\add_instance|or_ex_register|rf_d1_EX_in\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|mem_wb_register|alu_c_WB_in\(5),
	datab => \add_instance|or_ex_register|rf_d1_EX_in\(5),
	datac => \add_instance|forwarding_unit|forward_selection_process~8_combout\,
	datad => \add_instance|mem_wb_register|rf_d3_select_WB_in\(0),
	combout => \add_instance|alu_a_forwarding_mux|sel_out[5]~10_combout\);

-- Location: LCCOMB_X13_Y13_N22
\add_instance|alu_a_forwarding_mux|sel_out[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_a_forwarding_mux|sel_out[5]~11_combout\ = (\add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\ & (\add_instance|ex_mem_register|alu_c_MEM\(5))) # (!\add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\ & 
-- ((\add_instance|alu_a_forwarding_mux|sel_out[5]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ex_mem_register|alu_c_MEM\(5),
	datab => \add_instance|alu_a_forwarding_mux|sel_out[5]~10_combout\,
	datad => \add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\,
	combout => \add_instance|alu_a_forwarding_mux|sel_out[5]~11_combout\);

-- Location: LCCOMB_X14_Y13_N26
\add_instance|main_alu|result~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|result~3_combout\ = (\add_instance|alu_b_mux|sel_out[4]~17_combout\ & ((\add_instance|alu_a_forwarding_mux|sel_out[4]~8_combout\) # ((\add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\ & 
-- \add_instance|ex_mem_register|alu_c_MEM\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\,
	datab => \add_instance|alu_a_forwarding_mux|sel_out[4]~8_combout\,
	datac => \add_instance|ex_mem_register|alu_c_MEM\(4),
	datad => \add_instance|alu_b_mux|sel_out[4]~17_combout\,
	combout => \add_instance|main_alu|result~3_combout\);

-- Location: LCCOMB_X14_Y15_N10
\add_instance|main_alu|carry~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|carry~3_combout\ = (\add_instance|alu_b_mux|sel_out[3]~14_combout\ & ((\add_instance|main_alu|result~5_combout\) # ((\add_instance|alu_a_forwarding_mux|sel_out[3]~7_combout\) # (\add_instance|main_alu|carry~1_combout\)))) # 
-- (!\add_instance|alu_b_mux|sel_out[3]~14_combout\ & (\add_instance|alu_a_forwarding_mux|sel_out[3]~7_combout\ & ((\add_instance|main_alu|result~5_combout\) # (\add_instance|main_alu|carry~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|main_alu|result~5_combout\,
	datab => \add_instance|alu_b_mux|sel_out[3]~14_combout\,
	datac => \add_instance|alu_a_forwarding_mux|sel_out[3]~7_combout\,
	datad => \add_instance|main_alu|carry~1_combout\,
	combout => \add_instance|main_alu|carry~3_combout\);

-- Location: LCCOMB_X14_Y15_N16
\add_instance|main_alu|carry~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|carry~4_combout\ = (\add_instance|main_alu|carry~3_combout\ & ((\add_instance|alu_b_mux|sel_out[4]~17_combout\) # (\add_instance|alu_a_forwarding_mux|sel_out[4]~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[4]~17_combout\,
	datac => \add_instance|alu_a_forwarding_mux|sel_out[4]~9_combout\,
	datad => \add_instance|main_alu|carry~3_combout\,
	combout => \add_instance|main_alu|carry~4_combout\);

-- Location: LCCOMB_X14_Y13_N0
\add_instance|main_alu|sum~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|sum~1_combout\ = \add_instance|alu_a_forwarding_mux|sel_out[5]~11_combout\ $ (\add_instance|alu_b_mux|sel_out[5]~19_combout\ $ (((\add_instance|main_alu|result~3_combout\) # (\add_instance|main_alu|carry~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|main_alu|result~3_combout\,
	datab => \add_instance|alu_a_forwarding_mux|sel_out[5]~11_combout\,
	datac => \add_instance|alu_b_mux|sel_out[5]~19_combout\,
	datad => \add_instance|main_alu|carry~4_combout\,
	combout => \add_instance|main_alu|sum~1_combout\);

-- Location: LCCOMB_X13_Y13_N26
\add_instance|main_alu|C[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[5]~5_combout\ = (\add_instance|or_ex_register|alu_select_EX_in\(0) & (((!\add_instance|alu_b_mux|sel_out[5]~19_combout\)) # (!\add_instance|alu_a_forwarding_mux|sel_out[5]~11_combout\))) # 
-- (!\add_instance|or_ex_register|alu_select_EX_in\(0) & (((\add_instance|main_alu|sum~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_a_forwarding_mux|sel_out[5]~11_combout\,
	datab => \add_instance|alu_b_mux|sel_out[5]~19_combout\,
	datac => \add_instance|main_alu|sum~1_combout\,
	datad => \add_instance|or_ex_register|alu_select_EX_in\(0),
	combout => \add_instance|main_alu|C[5]~5_combout\);

-- Location: FF_X13_Y13_N27
\add_instance|ex_mem_register|alu_c_MEM[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|main_alu|C[5]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|ex_mem_register|alu_c_MEM\(5));

-- Location: FF_X13_Y13_N21
\add_instance|mem_wb_register|alu_c_WB_in[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|ex_mem_register|alu_c_MEM\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|mem_wb_register|alu_c_WB_in\(5));

-- Location: LCCOMB_X12_Y13_N28
\add_instance|rf_d3_mux|sel_out[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_d3_mux|sel_out[5]~5_combout\ = (!\add_instance|mem_wb_register|rf_d3_select_WB_in\(0) & \add_instance|mem_wb_register|alu_c_WB_in\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|mem_wb_register|rf_d3_select_WB_in\(0),
	datac => \add_instance|mem_wb_register|alu_c_WB_in\(5),
	combout => \add_instance|rf_d3_mux|sel_out[5]~5_combout\);

-- Location: LCCOMB_X13_Y10_N28
\add_instance|rf|RF[1][5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|RF[1][5]~feeder_combout\ = \add_instance|rf_d3_mux|sel_out[5]~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|rf_d3_mux|sel_out[5]~5_combout\,
	combout => \add_instance|rf|RF[1][5]~feeder_combout\);

-- Location: FF_X13_Y10_N29
\add_instance|rf|RF[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|RF[1][5]~feeder_combout\,
	ena => \add_instance|rf|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[1][5]~q\);

-- Location: LCCOMB_X13_Y13_N4
\add_instance|rf|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux26~0_combout\ = (\add_instance|id_or_register|rf_a2_OR_in\(1) & (((\add_instance|rf|RF[2][5]~q\) # (\add_instance|id_or_register|rf_a2_OR_in\(0))))) # (!\add_instance|id_or_register|rf_a2_OR_in\(1) & (\add_instance|rf|RF[0][5]~q\ & 
-- ((!\add_instance|id_or_register|rf_a2_OR_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[0][5]~q\,
	datab => \add_instance|id_or_register|rf_a2_OR_in\(1),
	datac => \add_instance|rf|RF[2][5]~q\,
	datad => \add_instance|id_or_register|rf_a2_OR_in\(0),
	combout => \add_instance|rf|Mux26~0_combout\);

-- Location: LCCOMB_X13_Y13_N10
\add_instance|rf|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux26~1_combout\ = (\add_instance|rf|Mux26~0_combout\ & (((\add_instance|rf|RF[3][5]~q\) # (!\add_instance|id_or_register|rf_a2_OR_in\(0))))) # (!\add_instance|rf|Mux26~0_combout\ & (\add_instance|rf|RF[1][5]~q\ & 
-- ((\add_instance|id_or_register|rf_a2_OR_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[1][5]~q\,
	datab => \add_instance|rf|RF[3][5]~q\,
	datac => \add_instance|rf|Mux26~0_combout\,
	datad => \add_instance|id_or_register|rf_a2_OR_in\(0),
	combout => \add_instance|rf|Mux26~1_combout\);

-- Location: FF_X13_Y13_N11
\add_instance|or_ex_register|rf_d2_EX[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|Mux26~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|rf_d2_EX\(5));

-- Location: LCCOMB_X13_Y13_N20
\add_instance|alu_b_forwarding_mux|sel_out[5]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_forwarding_mux|sel_out[5]~0_combout\ = (\add_instance|forwarding_unit|forward_select_b\(1) & (((!\add_instance|mem_wb_register|rf_d3_select_WB_in\(0) & \add_instance|mem_wb_register|alu_c_WB_in\(5))))) # 
-- (!\add_instance|forwarding_unit|forward_select_b\(1) & (\add_instance|or_ex_register|rf_d2_EX\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|rf_d2_EX\(5),
	datab => \add_instance|mem_wb_register|rf_d3_select_WB_in\(0),
	datac => \add_instance|mem_wb_register|alu_c_WB_in\(5),
	datad => \add_instance|forwarding_unit|forward_select_b\(1),
	combout => \add_instance|alu_b_forwarding_mux|sel_out[5]~0_combout\);

-- Location: LCCOMB_X13_Y13_N6
\add_instance|alu_b_mux|sel_out[5]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[5]~49_combout\ = (!\add_instance|or_ex_register|alu_b_select_EX_in\(1) & ((\add_instance|or_ex_register|alu_b_select_EX_in\(0) & (\add_instance|alu_b_mux|sel_out[5]~18_combout\)) # 
-- (!\add_instance|or_ex_register|alu_b_select_EX_in\(0) & ((\add_instance|alu_b_forwarding_mux|sel_out[5]~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|alu_b_select_EX_in\(0),
	datab => \add_instance|or_ex_register|alu_b_select_EX_in\(1),
	datac => \add_instance|alu_b_mux|sel_out[5]~18_combout\,
	datad => \add_instance|alu_b_forwarding_mux|sel_out[5]~0_combout\,
	combout => \add_instance|alu_b_mux|sel_out[5]~49_combout\);

-- Location: LCCOMB_X13_Y13_N30
\add_instance|alu_b_mux|sel_out[5]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[5]~19_combout\ = (\add_instance|alu_b_mux|sel_out[5]~49_combout\) # ((\add_instance|or_ex_register|alu_b_select_EX_in\(1) & \add_instance|or_ex_register|za_out_EX\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|or_ex_register|alu_b_select_EX_in\(1),
	datac => \add_instance|or_ex_register|za_out_EX\(12),
	datad => \add_instance|alu_b_mux|sel_out[5]~49_combout\,
	combout => \add_instance|alu_b_mux|sel_out[5]~19_combout\);

-- Location: LCCOMB_X14_Y15_N2
\add_instance|main_alu|carry~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|carry~5_combout\ = (\add_instance|alu_b_mux|sel_out[5]~19_combout\ & ((\add_instance|main_alu|result~3_combout\) # ((\add_instance|alu_a_forwarding_mux|sel_out[5]~11_combout\) # (\add_instance|main_alu|carry~4_combout\)))) # 
-- (!\add_instance|alu_b_mux|sel_out[5]~19_combout\ & (\add_instance|alu_a_forwarding_mux|sel_out[5]~11_combout\ & ((\add_instance|main_alu|result~3_combout\) # (\add_instance|main_alu|carry~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[5]~19_combout\,
	datab => \add_instance|main_alu|result~3_combout\,
	datac => \add_instance|alu_a_forwarding_mux|sel_out[5]~11_combout\,
	datad => \add_instance|main_alu|carry~4_combout\,
	combout => \add_instance|main_alu|carry~5_combout\);

-- Location: FF_X13_Y13_N3
\add_instance|mem_wb_register|alu_c_WB_in[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|ex_mem_register|alu_c_MEM\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|mem_wb_register|alu_c_WB_in\(6));

-- Location: LCCOMB_X12_Y13_N18
\add_instance|rf_d3_mux|sel_out[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_d3_mux|sel_out[6]~6_combout\ = (\add_instance|mem_wb_register|alu_c_WB_in\(6) & !\add_instance|mem_wb_register|rf_d3_select_WB_in\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|mem_wb_register|alu_c_WB_in\(6),
	datac => \add_instance|mem_wb_register|rf_d3_select_WB_in\(0),
	combout => \add_instance|rf_d3_mux|sel_out[6]~6_combout\);

-- Location: FF_X12_Y12_N25
\add_instance|rf|RF[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[6]~6_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[3][6]~q\);

-- Location: FF_X12_Y12_N7
\add_instance|rf|RF[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[6]~6_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[2][6]~q\);

-- Location: FF_X12_Y11_N1
\add_instance|rf|RF[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[6]~6_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[1][6]~q\);

-- Location: FF_X12_Y11_N19
\add_instance|rf|RF[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[6]~6_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[0][6]~q\);

-- Location: LCCOMB_X12_Y11_N0
\add_instance|rf|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux25~0_combout\ = (\add_instance|id_or_register|rf_a2_OR_in\(1) & (\add_instance|id_or_register|rf_a2_OR_in\(0))) # (!\add_instance|id_or_register|rf_a2_OR_in\(1) & ((\add_instance|id_or_register|rf_a2_OR_in\(0) & 
-- (\add_instance|rf|RF[1][6]~q\)) # (!\add_instance|id_or_register|rf_a2_OR_in\(0) & ((\add_instance|rf|RF[0][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a2_OR_in\(1),
	datab => \add_instance|id_or_register|rf_a2_OR_in\(0),
	datac => \add_instance|rf|RF[1][6]~q\,
	datad => \add_instance|rf|RF[0][6]~q\,
	combout => \add_instance|rf|Mux25~0_combout\);

-- Location: LCCOMB_X13_Y12_N22
\add_instance|rf|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux25~1_combout\ = (\add_instance|id_or_register|rf_a2_OR_in\(1) & ((\add_instance|rf|Mux25~0_combout\ & (\add_instance|rf|RF[3][6]~q\)) # (!\add_instance|rf|Mux25~0_combout\ & ((\add_instance|rf|RF[2][6]~q\))))) # 
-- (!\add_instance|id_or_register|rf_a2_OR_in\(1) & (((\add_instance|rf|Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a2_OR_in\(1),
	datab => \add_instance|rf|RF[3][6]~q\,
	datac => \add_instance|rf|RF[2][6]~q\,
	datad => \add_instance|rf|Mux25~0_combout\,
	combout => \add_instance|rf|Mux25~1_combout\);

-- Location: FF_X13_Y12_N23
\add_instance|or_ex_register|rf_d2_EX[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|Mux25~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|rf_d2_EX\(6));

-- Location: LCCOMB_X13_Y13_N2
\add_instance|alu_b_forwarding_mux|sel_out[6]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_forwarding_mux|sel_out[6]~1_combout\ = (\add_instance|forwarding_unit|forward_select_b\(1) & (((!\add_instance|mem_wb_register|rf_d3_select_WB_in\(0) & \add_instance|mem_wb_register|alu_c_WB_in\(6))))) # 
-- (!\add_instance|forwarding_unit|forward_select_b\(1) & (\add_instance|or_ex_register|rf_d2_EX\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|rf_d2_EX\(6),
	datab => \add_instance|mem_wb_register|rf_d3_select_WB_in\(0),
	datac => \add_instance|mem_wb_register|alu_c_WB_in\(6),
	datad => \add_instance|forwarding_unit|forward_select_b\(1),
	combout => \add_instance|alu_b_forwarding_mux|sel_out[6]~1_combout\);

-- Location: LCCOMB_X13_Y13_N0
\add_instance|alu_b_mux|sel_out[6]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[6]~20_combout\ = (\add_instance|or_ex_register|alu_b_select_EX_in\(0) & (\add_instance|or_ex_register|alu_b_select_EX_in\(1))) # (!\add_instance|or_ex_register|alu_b_select_EX_in\(0) & 
-- ((\add_instance|or_ex_register|alu_b_select_EX_in\(1) & (\add_instance|or_ex_register|za_out_EX\(12))) # (!\add_instance|or_ex_register|alu_b_select_EX_in\(1) & ((\add_instance|alu_b_forwarding_mux|sel_out[6]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|alu_b_select_EX_in\(0),
	datab => \add_instance|or_ex_register|alu_b_select_EX_in\(1),
	datac => \add_instance|or_ex_register|za_out_EX\(12),
	datad => \add_instance|alu_b_forwarding_mux|sel_out[6]~1_combout\,
	combout => \add_instance|alu_b_mux|sel_out[6]~20_combout\);

-- Location: LCCOMB_X13_Y13_N12
\add_instance|alu_b_mux|sel_out[6]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[6]~21_combout\ = (\add_instance|or_ex_register|alu_b_select_EX_in\(0) & ((\add_instance|alu_b_mux|sel_out[6]~20_combout\ & ((\add_instance|or_ex_register|rf_a2_EX_in\(0)))) # (!\add_instance|alu_b_mux|sel_out[6]~20_combout\ 
-- & (\add_instance|alu_b_forwarding_mux|sel_out[5]~0_combout\)))) # (!\add_instance|or_ex_register|alu_b_select_EX_in\(0) & (((\add_instance|alu_b_mux|sel_out[6]~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|alu_b_select_EX_in\(0),
	datab => \add_instance|alu_b_forwarding_mux|sel_out[5]~0_combout\,
	datac => \add_instance|or_ex_register|rf_a2_EX_in\(0),
	datad => \add_instance|alu_b_mux|sel_out[6]~20_combout\,
	combout => \add_instance|alu_b_mux|sel_out[6]~21_combout\);

-- Location: FF_X11_Y12_N21
\add_instance|rf|RF[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[6]~6_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[5][6]~q\);

-- Location: LCCOMB_X10_Y12_N4
\add_instance|rf|RF[4][6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|RF[4][6]~feeder_combout\ = \add_instance|rf_d3_mux|sel_out[6]~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \add_instance|rf_d3_mux|sel_out[6]~6_combout\,
	combout => \add_instance|rf|RF[4][6]~feeder_combout\);

-- Location: FF_X10_Y12_N5
\add_instance|rf|RF[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|RF[4][6]~feeder_combout\,
	ena => \add_instance|rf|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[4][6]~q\);

-- Location: FF_X10_Y12_N15
\add_instance|rf|RF[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[6]~6_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[6][6]~q\);

-- Location: LCCOMB_X10_Y12_N14
\add_instance|rf|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux9~0_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(1) & (((\add_instance|rf|RF[6][6]~q\) # (\add_instance|id_or_register|rf_a1_OR_in\(0))))) # (!\add_instance|id_or_register|rf_a1_OR_in\(1) & (\add_instance|rf|RF[4][6]~q\ & 
-- ((!\add_instance|id_or_register|rf_a1_OR_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(1),
	datab => \add_instance|rf|RF[4][6]~q\,
	datac => \add_instance|rf|RF[6][6]~q\,
	datad => \add_instance|id_or_register|rf_a1_OR_in\(0),
	combout => \add_instance|rf|Mux9~0_combout\);

-- Location: LCCOMB_X11_Y12_N20
\add_instance|rf|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux9~1_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(0) & ((\add_instance|rf|Mux9~0_combout\ & (\add_instance|rf|RF[7][6]~q\)) # (!\add_instance|rf|Mux9~0_combout\ & ((\add_instance|rf|RF[5][6]~q\))))) # 
-- (!\add_instance|id_or_register|rf_a1_OR_in\(0) & (((\add_instance|rf|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(0),
	datab => \add_instance|rf|RF[7][6]~q\,
	datac => \add_instance|rf|RF[5][6]~q\,
	datad => \add_instance|rf|Mux9~0_combout\,
	combout => \add_instance|rf|Mux9~1_combout\);

-- Location: LCCOMB_X12_Y11_N18
\add_instance|rf|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux9~2_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(1) & (\add_instance|id_or_register|rf_a1_OR_in\(0))) # (!\add_instance|id_or_register|rf_a1_OR_in\(1) & ((\add_instance|id_or_register|rf_a1_OR_in\(0) & 
-- ((\add_instance|rf|RF[1][6]~q\))) # (!\add_instance|id_or_register|rf_a1_OR_in\(0) & (\add_instance|rf|RF[0][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(1),
	datab => \add_instance|id_or_register|rf_a1_OR_in\(0),
	datac => \add_instance|rf|RF[0][6]~q\,
	datad => \add_instance|rf|RF[1][6]~q\,
	combout => \add_instance|rf|Mux9~2_combout\);

-- Location: LCCOMB_X12_Y12_N24
\add_instance|rf|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux9~3_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(1) & ((\add_instance|rf|Mux9~2_combout\ & (\add_instance|rf|RF[3][6]~q\)) # (!\add_instance|rf|Mux9~2_combout\ & ((\add_instance|rf|RF[2][6]~q\))))) # 
-- (!\add_instance|id_or_register|rf_a1_OR_in\(1) & (\add_instance|rf|Mux9~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(1),
	datab => \add_instance|rf|Mux9~2_combout\,
	datac => \add_instance|rf|RF[3][6]~q\,
	datad => \add_instance|rf|RF[2][6]~q\,
	combout => \add_instance|rf|Mux9~3_combout\);

-- Location: LCCOMB_X12_Y12_N6
\add_instance|rf|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux9~4_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(2) & (\add_instance|rf|Mux9~1_combout\)) # (!\add_instance|id_or_register|rf_a1_OR_in\(2) & ((\add_instance|rf|Mux9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(2),
	datab => \add_instance|rf|Mux9~1_combout\,
	datad => \add_instance|rf|Mux9~3_combout\,
	combout => \add_instance|rf|Mux9~4_combout\);

-- Location: FF_X13_Y13_N23
\add_instance|or_ex_register|rf_d1_EX_in[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf|Mux9~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|rf_d1_EX_in\(6));

-- Location: LCCOMB_X13_Y13_N24
\add_instance|alu_a_forwarding_mux|sel_out[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_a_forwarding_mux|sel_out[6]~12_combout\ = (\add_instance|forwarding_unit|forward_selection_process~8_combout\ & (((\add_instance|mem_wb_register|alu_c_WB_in\(6) & !\add_instance|mem_wb_register|rf_d3_select_WB_in\(0))))) # 
-- (!\add_instance|forwarding_unit|forward_selection_process~8_combout\ & (\add_instance|or_ex_register|rf_d1_EX_in\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|rf_d1_EX_in\(6),
	datab => \add_instance|mem_wb_register|alu_c_WB_in\(6),
	datac => \add_instance|forwarding_unit|forward_selection_process~8_combout\,
	datad => \add_instance|mem_wb_register|rf_d3_select_WB_in\(0),
	combout => \add_instance|alu_a_forwarding_mux|sel_out[6]~12_combout\);

-- Location: LCCOMB_X13_Y13_N18
\add_instance|alu_a_forwarding_mux|sel_out[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_a_forwarding_mux|sel_out[6]~13_combout\ = (\add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\ & (\add_instance|ex_mem_register|alu_c_MEM\(6))) # (!\add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\ & 
-- ((\add_instance|alu_a_forwarding_mux|sel_out[6]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|ex_mem_register|alu_c_MEM\(6),
	datac => \add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\,
	datad => \add_instance|alu_a_forwarding_mux|sel_out[6]~12_combout\,
	combout => \add_instance|alu_a_forwarding_mux|sel_out[6]~13_combout\);

-- Location: LCCOMB_X16_Y15_N0
\add_instance|main_alu|C[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[6]~6_combout\ = (\add_instance|or_ex_register|alu_select_EX_in\(0) & (((!\add_instance|alu_a_forwarding_mux|sel_out[6]~13_combout\) # (!\add_instance|alu_b_mux|sel_out[6]~21_combout\)))) # 
-- (!\add_instance|or_ex_register|alu_select_EX_in\(0) & (\add_instance|main_alu|carry~5_combout\ $ (\add_instance|alu_b_mux|sel_out[6]~21_combout\ $ (\add_instance|alu_a_forwarding_mux|sel_out[6]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|main_alu|carry~5_combout\,
	datab => \add_instance|alu_b_mux|sel_out[6]~21_combout\,
	datac => \add_instance|or_ex_register|alu_select_EX_in\(0),
	datad => \add_instance|alu_a_forwarding_mux|sel_out[6]~13_combout\,
	combout => \add_instance|main_alu|C[6]~6_combout\);

-- Location: FF_X16_Y15_N1
\add_instance|ex_mem_register|alu_c_MEM[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|main_alu|C[6]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|ex_mem_register|alu_c_MEM\(6));

-- Location: LCCOMB_X13_Y13_N16
\add_instance|main_alu|result~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|result~4_combout\ = (\add_instance|alu_b_mux|sel_out[6]~21_combout\ & ((\add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\ & (\add_instance|ex_mem_register|alu_c_MEM\(6))) # 
-- (!\add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\ & ((\add_instance|alu_a_forwarding_mux|sel_out[6]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ex_mem_register|alu_c_MEM\(6),
	datab => \add_instance|alu_a_forwarding_mux|sel_out[6]~12_combout\,
	datac => \add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\,
	datad => \add_instance|alu_b_mux|sel_out[6]~21_combout\,
	combout => \add_instance|main_alu|result~4_combout\);

-- Location: LCCOMB_X14_Y11_N16
\add_instance|ex_mem_register|za_out_MEM[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|ex_mem_register|za_out_MEM[7]~feeder_combout\ = \add_instance|or_ex_register|za_out_EX\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \add_instance|or_ex_register|za_out_EX\(7),
	combout => \add_instance|ex_mem_register|za_out_MEM[7]~feeder_combout\);

-- Location: FF_X14_Y11_N17
\add_instance|ex_mem_register|za_out_MEM[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|ex_mem_register|za_out_MEM[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|ex_mem_register|za_out_MEM\(7));

-- Location: FF_X12_Y14_N27
\add_instance|mem_wb_register|za_out_WB_in[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|ex_mem_register|za_out_MEM\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|mem_wb_register|za_out_WB_in\(7));

-- Location: LCCOMB_X14_Y15_N12
\add_instance|main_alu|carry~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|carry~6_combout\ = (\add_instance|main_alu|carry~5_combout\ & ((\add_instance|alu_b_mux|sel_out[6]~21_combout\) # (\add_instance|alu_a_forwarding_mux|sel_out[6]~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|alu_b_mux|sel_out[6]~21_combout\,
	datac => \add_instance|alu_a_forwarding_mux|sel_out[6]~13_combout\,
	datad => \add_instance|main_alu|carry~5_combout\,
	combout => \add_instance|main_alu|carry~6_combout\);

-- Location: LCCOMB_X10_Y11_N0
\add_instance|rf|RF[6][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|RF[6][7]~feeder_combout\ = \add_instance|rf_d3_mux|sel_out[7]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|rf_d3_mux|sel_out[7]~7_combout\,
	combout => \add_instance|rf|RF[6][7]~feeder_combout\);

-- Location: FF_X10_Y11_N1
\add_instance|rf|RF[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|RF[6][7]~feeder_combout\,
	ena => \add_instance|rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[6][7]~q\);

-- Location: FF_X10_Y11_N11
\add_instance|rf|RF[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[7]~7_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[4][7]~q\);

-- Location: LCCOMB_X10_Y11_N10
\add_instance|rf|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux8~0_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(0) & (((\add_instance|id_or_register|rf_a1_OR_in\(1))))) # (!\add_instance|id_or_register|rf_a1_OR_in\(0) & ((\add_instance|id_or_register|rf_a1_OR_in\(1) & 
-- (\add_instance|rf|RF[6][7]~q\)) # (!\add_instance|id_or_register|rf_a1_OR_in\(1) & ((\add_instance|rf|RF[4][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(0),
	datab => \add_instance|rf|RF[6][7]~q\,
	datac => \add_instance|rf|RF[4][7]~q\,
	datad => \add_instance|id_or_register|rf_a1_OR_in\(1),
	combout => \add_instance|rf|Mux8~0_combout\);

-- Location: FF_X11_Y11_N15
\add_instance|rf|RF[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[7]~7_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[5][7]~q\);

-- Location: LCCOMB_X11_Y11_N14
\add_instance|rf|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux8~1_combout\ = (\add_instance|rf|Mux8~0_combout\ & ((\add_instance|rf|RF[7][7]~q\) # ((!\add_instance|id_or_register|rf_a1_OR_in\(0))))) # (!\add_instance|rf|Mux8~0_combout\ & (((\add_instance|rf|RF[5][7]~q\ & 
-- \add_instance|id_or_register|rf_a1_OR_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux8~0_combout\,
	datab => \add_instance|rf|RF[7][7]~q\,
	datac => \add_instance|rf|RF[5][7]~q\,
	datad => \add_instance|id_or_register|rf_a1_OR_in\(0),
	combout => \add_instance|rf|Mux8~1_combout\);

-- Location: FF_X12_Y12_N27
\add_instance|rf|RF[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[7]~7_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[2][7]~q\);

-- Location: LCCOMB_X12_Y11_N28
\add_instance|rf|RF[1][7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|RF[1][7]~feeder_combout\ = \add_instance|rf_d3_mux|sel_out[7]~7_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|rf_d3_mux|sel_out[7]~7_combout\,
	combout => \add_instance|rf|RF[1][7]~feeder_combout\);

-- Location: FF_X12_Y11_N29
\add_instance|rf|RF[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|RF[1][7]~feeder_combout\,
	ena => \add_instance|rf|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[1][7]~q\);

-- Location: FF_X12_Y11_N27
\add_instance|rf|RF[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[7]~7_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[0][7]~q\);

-- Location: LCCOMB_X12_Y11_N26
\add_instance|rf|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux8~2_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(1) & (((\add_instance|id_or_register|rf_a1_OR_in\(0))))) # (!\add_instance|id_or_register|rf_a1_OR_in\(1) & ((\add_instance|id_or_register|rf_a1_OR_in\(0) & 
-- (\add_instance|rf|RF[1][7]~q\)) # (!\add_instance|id_or_register|rf_a1_OR_in\(0) & ((\add_instance|rf|RF[0][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(1),
	datab => \add_instance|rf|RF[1][7]~q\,
	datac => \add_instance|rf|RF[0][7]~q\,
	datad => \add_instance|id_or_register|rf_a1_OR_in\(0),
	combout => \add_instance|rf|Mux8~2_combout\);

-- Location: LCCOMB_X12_Y12_N4
\add_instance|rf|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux8~3_combout\ = (\add_instance|rf|Mux8~2_combout\ & (((\add_instance|rf|RF[3][7]~q\) # (!\add_instance|id_or_register|rf_a1_OR_in\(1))))) # (!\add_instance|rf|Mux8~2_combout\ & (\add_instance|rf|RF[2][7]~q\ & 
-- ((\add_instance|id_or_register|rf_a1_OR_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[2][7]~q\,
	datab => \add_instance|rf|Mux8~2_combout\,
	datac => \add_instance|rf|RF[3][7]~q\,
	datad => \add_instance|id_or_register|rf_a1_OR_in\(1),
	combout => \add_instance|rf|Mux8~3_combout\);

-- Location: LCCOMB_X12_Y14_N2
\add_instance|rf|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux8~4_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(2) & (\add_instance|rf|Mux8~1_combout\)) # (!\add_instance|id_or_register|rf_a1_OR_in\(2) & ((\add_instance|rf|Mux8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|rf|Mux8~1_combout\,
	datac => \add_instance|rf|Mux8~3_combout\,
	datad => \add_instance|id_or_register|rf_a1_OR_in\(2),
	combout => \add_instance|rf|Mux8~4_combout\);

-- Location: FF_X12_Y14_N3
\add_instance|or_ex_register|rf_d1_EX_in[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|Mux8~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|rf_d1_EX_in\(7));

-- Location: LCCOMB_X12_Y14_N4
\add_instance|alu_a_forwarding_mux|sel_out[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_a_forwarding_mux|sel_out[7]~14_combout\ = (!\add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\ & ((\add_instance|forwarding_unit|forward_selection_process~8_combout\ & (\add_instance|rf_d3_mux|sel_out[7]~7_combout\)) # 
-- (!\add_instance|forwarding_unit|forward_selection_process~8_combout\ & ((\add_instance|or_ex_register|rf_d1_EX_in\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf_d3_mux|sel_out[7]~7_combout\,
	datab => \add_instance|or_ex_register|rf_d1_EX_in\(7),
	datac => \add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\,
	datad => \add_instance|forwarding_unit|forward_selection_process~8_combout\,
	combout => \add_instance|alu_a_forwarding_mux|sel_out[7]~14_combout\);

-- Location: LCCOMB_X12_Y14_N0
\add_instance|alu_a_forwarding_mux|sel_out[7]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_a_forwarding_mux|sel_out[7]~15_combout\ = (\add_instance|alu_a_forwarding_mux|sel_out[7]~14_combout\) # ((\add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\ & \add_instance|ex_mem_register|alu_c_MEM\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\,
	datab => \add_instance|ex_mem_register|alu_c_MEM\(7),
	datad => \add_instance|alu_a_forwarding_mux|sel_out[7]~14_combout\,
	combout => \add_instance|alu_a_forwarding_mux|sel_out[7]~15_combout\);

-- Location: LCCOMB_X12_Y15_N14
\add_instance|main_alu|sum~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|sum~2_combout\ = \add_instance|alu_b_mux|sel_out[7]~23_combout\ $ (\add_instance|alu_a_forwarding_mux|sel_out[7]~15_combout\ $ (((\add_instance|main_alu|carry~6_combout\) # (\add_instance|main_alu|result~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|main_alu|carry~6_combout\,
	datab => \add_instance|alu_b_mux|sel_out[7]~23_combout\,
	datac => \add_instance|alu_a_forwarding_mux|sel_out[7]~15_combout\,
	datad => \add_instance|main_alu|result~4_combout\,
	combout => \add_instance|main_alu|sum~2_combout\);

-- Location: LCCOMB_X12_Y15_N20
\add_instance|main_alu|C[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[7]~7_combout\ = (\add_instance|or_ex_register|alu_select_EX_in\(0) & (((!\add_instance|alu_b_mux|sel_out[7]~23_combout\) # (!\add_instance|alu_a_forwarding_mux|sel_out[7]~15_combout\)))) # 
-- (!\add_instance|or_ex_register|alu_select_EX_in\(0) & (\add_instance|main_alu|sum~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|main_alu|sum~2_combout\,
	datab => \add_instance|or_ex_register|alu_select_EX_in\(0),
	datac => \add_instance|alu_a_forwarding_mux|sel_out[7]~15_combout\,
	datad => \add_instance|alu_b_mux|sel_out[7]~23_combout\,
	combout => \add_instance|main_alu|C[7]~7_combout\);

-- Location: FF_X12_Y15_N21
\add_instance|ex_mem_register|alu_c_MEM[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|main_alu|C[7]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|ex_mem_register|alu_c_MEM\(7));

-- Location: FF_X12_Y14_N13
\add_instance|mem_wb_register|alu_c_WB_in[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|ex_mem_register|alu_c_MEM\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|mem_wb_register|alu_c_WB_in\(7));

-- Location: LCCOMB_X12_Y14_N12
\add_instance|rf_d3_mux|sel_out[7]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_d3_mux|sel_out[7]~7_combout\ = (\add_instance|mem_wb_register|rf_d3_select_WB_in\(0) & (\add_instance|mem_wb_register|za_out_WB_in\(7))) # (!\add_instance|mem_wb_register|rf_d3_select_WB_in\(0) & 
-- ((\add_instance|mem_wb_register|alu_c_WB_in\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|mem_wb_register|za_out_WB_in\(7),
	datab => \add_instance|mem_wb_register|rf_d3_select_WB_in\(0),
	datac => \add_instance|mem_wb_register|alu_c_WB_in\(7),
	combout => \add_instance|rf_d3_mux|sel_out[7]~7_combout\);

-- Location: FF_X12_Y12_N5
\add_instance|rf|RF[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[7]~7_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[3][7]~q\);

-- Location: LCCOMB_X12_Y12_N26
\add_instance|rf|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux24~0_combout\ = (\add_instance|id_or_register|rf_a2_OR_in\(0) & (((\add_instance|id_or_register|rf_a2_OR_in\(1))))) # (!\add_instance|id_or_register|rf_a2_OR_in\(0) & ((\add_instance|id_or_register|rf_a2_OR_in\(1) & 
-- ((\add_instance|rf|RF[2][7]~q\))) # (!\add_instance|id_or_register|rf_a2_OR_in\(1) & (\add_instance|rf|RF[0][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a2_OR_in\(0),
	datab => \add_instance|rf|RF[0][7]~q\,
	datac => \add_instance|rf|RF[2][7]~q\,
	datad => \add_instance|id_or_register|rf_a2_OR_in\(1),
	combout => \add_instance|rf|Mux24~0_combout\);

-- Location: LCCOMB_X11_Y12_N2
\add_instance|rf|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux24~1_combout\ = (\add_instance|id_or_register|rf_a2_OR_in\(0) & ((\add_instance|rf|Mux24~0_combout\ & (\add_instance|rf|RF[3][7]~q\)) # (!\add_instance|rf|Mux24~0_combout\ & ((\add_instance|rf|RF[1][7]~q\))))) # 
-- (!\add_instance|id_or_register|rf_a2_OR_in\(0) & (((\add_instance|rf|Mux24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[3][7]~q\,
	datab => \add_instance|rf|RF[1][7]~q\,
	datac => \add_instance|id_or_register|rf_a2_OR_in\(0),
	datad => \add_instance|rf|Mux24~0_combout\,
	combout => \add_instance|rf|Mux24~1_combout\);

-- Location: FF_X11_Y12_N3
\add_instance|or_ex_register|rf_d2_EX[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|Mux24~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|rf_d2_EX\(7));

-- Location: LCCOMB_X10_Y15_N20
\add_instance|alu_b_forwarding_mux|sel_out[7]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_forwarding_mux|sel_out[7]~2_combout\ = (\add_instance|forwarding_unit|forward_select_b\(1) & ((\add_instance|rf_d3_mux|sel_out[7]~7_combout\))) # (!\add_instance|forwarding_unit|forward_select_b\(1) & 
-- (\add_instance|or_ex_register|rf_d2_EX\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|rf_d2_EX\(7),
	datac => \add_instance|rf_d3_mux|sel_out[7]~7_combout\,
	datad => \add_instance|forwarding_unit|forward_select_b\(1),
	combout => \add_instance|alu_b_forwarding_mux|sel_out[7]~2_combout\);

-- Location: LCCOMB_X10_Y15_N10
\add_instance|alu_b_mux|sel_out[7]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[7]~22_combout\ = (\add_instance|or_ex_register|alu_b_select_EX_in\(0) & (((\add_instance|or_ex_register|alu_b_select_EX_in\(1))))) # (!\add_instance|or_ex_register|alu_b_select_EX_in\(0) & 
-- ((\add_instance|or_ex_register|alu_b_select_EX_in\(1) & (\add_instance|or_ex_register|za_out_EX\(12))) # (!\add_instance|or_ex_register|alu_b_select_EX_in\(1) & ((\add_instance|alu_b_forwarding_mux|sel_out[7]~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|alu_b_select_EX_in\(0),
	datab => \add_instance|or_ex_register|za_out_EX\(12),
	datac => \add_instance|or_ex_register|alu_b_select_EX_in\(1),
	datad => \add_instance|alu_b_forwarding_mux|sel_out[7]~2_combout\,
	combout => \add_instance|alu_b_mux|sel_out[7]~22_combout\);

-- Location: LCCOMB_X10_Y15_N24
\add_instance|alu_b_mux|sel_out[7]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[7]~23_combout\ = (\add_instance|or_ex_register|alu_b_select_EX_in\(0) & ((\add_instance|alu_b_mux|sel_out[7]~22_combout\ & (\add_instance|or_ex_register|rf_a2_EX_in\(1))) # (!\add_instance|alu_b_mux|sel_out[7]~22_combout\ & 
-- ((\add_instance|alu_b_forwarding_mux|sel_out[6]~1_combout\))))) # (!\add_instance|or_ex_register|alu_b_select_EX_in\(0) & (((\add_instance|alu_b_mux|sel_out[7]~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|alu_b_select_EX_in\(0),
	datab => \add_instance|or_ex_register|rf_a2_EX_in\(1),
	datac => \add_instance|alu_b_forwarding_mux|sel_out[6]~1_combout\,
	datad => \add_instance|alu_b_mux|sel_out[7]~22_combout\,
	combout => \add_instance|alu_b_mux|sel_out[7]~23_combout\);

-- Location: LCCOMB_X14_Y15_N22
\add_instance|main_alu|carry~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|carry~7_combout\ = (\add_instance|alu_b_mux|sel_out[7]~23_combout\ & ((\add_instance|main_alu|result~4_combout\) # ((\add_instance|alu_a_forwarding_mux|sel_out[7]~15_combout\) # (\add_instance|main_alu|carry~6_combout\)))) # 
-- (!\add_instance|alu_b_mux|sel_out[7]~23_combout\ & (\add_instance|alu_a_forwarding_mux|sel_out[7]~15_combout\ & ((\add_instance|main_alu|result~4_combout\) # (\add_instance|main_alu|carry~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|main_alu|result~4_combout\,
	datab => \add_instance|alu_b_mux|sel_out[7]~23_combout\,
	datac => \add_instance|alu_a_forwarding_mux|sel_out[7]~15_combout\,
	datad => \add_instance|main_alu|carry~6_combout\,
	combout => \add_instance|main_alu|carry~7_combout\);

-- Location: FF_X10_Y15_N5
\add_instance|mem_wb_register|alu_c_WB_in[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|ex_mem_register|alu_c_MEM\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|mem_wb_register|alu_c_WB_in\(8));

-- Location: FF_X12_Y14_N1
\add_instance|ex_mem_register|za_out_MEM[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|or_ex_register|za_out_EX\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|ex_mem_register|za_out_MEM\(8));

-- Location: LCCOMB_X11_Y14_N0
\add_instance|mem_wb_register|za_out_WB_in[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|mem_wb_register|za_out_WB_in[8]~feeder_combout\ = \add_instance|ex_mem_register|za_out_MEM\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \add_instance|ex_mem_register|za_out_MEM\(8),
	combout => \add_instance|mem_wb_register|za_out_WB_in[8]~feeder_combout\);

-- Location: FF_X11_Y14_N1
\add_instance|mem_wb_register|za_out_WB_in[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|mem_wb_register|za_out_WB_in[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|mem_wb_register|za_out_WB_in\(8));

-- Location: LCCOMB_X10_Y15_N4
\add_instance|rf_d3_mux|sel_out[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_d3_mux|sel_out[8]~8_combout\ = (\add_instance|mem_wb_register|rf_d3_select_WB_in\(0) & ((\add_instance|mem_wb_register|za_out_WB_in\(8)))) # (!\add_instance|mem_wb_register|rf_d3_select_WB_in\(0) & 
-- (\add_instance|mem_wb_register|alu_c_WB_in\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|mem_wb_register|rf_d3_select_WB_in\(0),
	datac => \add_instance|mem_wb_register|alu_c_WB_in\(8),
	datad => \add_instance|mem_wb_register|za_out_WB_in\(8),
	combout => \add_instance|rf_d3_mux|sel_out[8]~8_combout\);

-- Location: LCCOMB_X10_Y11_N20
\add_instance|rf|RF[6][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|RF[6][8]~feeder_combout\ = \add_instance|rf_d3_mux|sel_out[8]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|rf_d3_mux|sel_out[8]~8_combout\,
	combout => \add_instance|rf|RF[6][8]~feeder_combout\);

-- Location: FF_X10_Y11_N21
\add_instance|rf|RF[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|RF[6][8]~feeder_combout\,
	ena => \add_instance|rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[6][8]~q\);

-- Location: FF_X10_Y11_N19
\add_instance|rf|RF[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[8]~8_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[4][8]~q\);

-- Location: LCCOMB_X10_Y11_N18
\add_instance|rf|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux7~0_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(0) & (((\add_instance|id_or_register|rf_a1_OR_in\(1))))) # (!\add_instance|id_or_register|rf_a1_OR_in\(0) & ((\add_instance|id_or_register|rf_a1_OR_in\(1) & 
-- (\add_instance|rf|RF[6][8]~q\)) # (!\add_instance|id_or_register|rf_a1_OR_in\(1) & ((\add_instance|rf|RF[4][8]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(0),
	datab => \add_instance|rf|RF[6][8]~q\,
	datac => \add_instance|rf|RF[4][8]~q\,
	datad => \add_instance|id_or_register|rf_a1_OR_in\(1),
	combout => \add_instance|rf|Mux7~0_combout\);

-- Location: FF_X11_Y12_N17
\add_instance|rf|RF[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[8]~8_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[5][8]~q\);

-- Location: LCCOMB_X11_Y12_N16
\add_instance|rf|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux7~1_combout\ = (\add_instance|rf|Mux7~0_combout\ & (((\add_instance|rf|RF[7][8]~q\)) # (!\add_instance|id_or_register|rf_a1_OR_in\(0)))) # (!\add_instance|rf|Mux7~0_combout\ & (\add_instance|id_or_register|rf_a1_OR_in\(0) & 
-- (\add_instance|rf|RF[5][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux7~0_combout\,
	datab => \add_instance|id_or_register|rf_a1_OR_in\(0),
	datac => \add_instance|rf|RF[5][8]~q\,
	datad => \add_instance|rf|RF[7][8]~q\,
	combout => \add_instance|rf|Mux7~1_combout\);

-- Location: LCCOMB_X12_Y12_N22
\add_instance|rf|RF[2][8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|RF[2][8]~feeder_combout\ = \add_instance|rf_d3_mux|sel_out[8]~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|rf_d3_mux|sel_out[8]~8_combout\,
	combout => \add_instance|rf|RF[2][8]~feeder_combout\);

-- Location: FF_X12_Y12_N23
\add_instance|rf|RF[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|RF[2][8]~feeder_combout\,
	ena => \add_instance|rf|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[2][8]~q\);

-- Location: FF_X12_Y12_N21
\add_instance|rf|RF[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[8]~8_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[3][8]~q\);

-- Location: FF_X13_Y10_N7
\add_instance|rf|RF[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[8]~8_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[0][8]~q\);

-- Location: FF_X13_Y10_N21
\add_instance|rf|RF[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[8]~8_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[1][8]~q\);

-- Location: LCCOMB_X13_Y10_N6
\add_instance|rf|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux7~2_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(0) & ((\add_instance|id_or_register|rf_a1_OR_in\(1)) # ((\add_instance|rf|RF[1][8]~q\)))) # (!\add_instance|id_or_register|rf_a1_OR_in\(0) & 
-- (!\add_instance|id_or_register|rf_a1_OR_in\(1) & (\add_instance|rf|RF[0][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(0),
	datab => \add_instance|id_or_register|rf_a1_OR_in\(1),
	datac => \add_instance|rf|RF[0][8]~q\,
	datad => \add_instance|rf|RF[1][8]~q\,
	combout => \add_instance|rf|Mux7~2_combout\);

-- Location: LCCOMB_X12_Y12_N20
\add_instance|rf|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux7~3_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(1) & ((\add_instance|rf|Mux7~2_combout\ & ((\add_instance|rf|RF[3][8]~q\))) # (!\add_instance|rf|Mux7~2_combout\ & (\add_instance|rf|RF[2][8]~q\)))) # 
-- (!\add_instance|id_or_register|rf_a1_OR_in\(1) & (((\add_instance|rf|Mux7~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(1),
	datab => \add_instance|rf|RF[2][8]~q\,
	datac => \add_instance|rf|RF[3][8]~q\,
	datad => \add_instance|rf|Mux7~2_combout\,
	combout => \add_instance|rf|Mux7~3_combout\);

-- Location: LCCOMB_X11_Y12_N24
\add_instance|rf|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux7~4_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(2) & (\add_instance|rf|Mux7~1_combout\)) # (!\add_instance|id_or_register|rf_a1_OR_in\(2) & ((\add_instance|rf|Mux7~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(2),
	datab => \add_instance|rf|Mux7~1_combout\,
	datac => \add_instance|rf|Mux7~3_combout\,
	combout => \add_instance|rf|Mux7~4_combout\);

-- Location: FF_X11_Y12_N25
\add_instance|or_ex_register|rf_d1_EX_in[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|Mux7~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|rf_d1_EX_in\(8));

-- Location: LCCOMB_X10_Y15_N26
\add_instance|alu_a_forwarding_mux|sel_out[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_a_forwarding_mux|sel_out[8]~16_combout\ = (!\add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\ & ((\add_instance|forwarding_unit|forward_selection_process~8_combout\ & ((\add_instance|rf_d3_mux|sel_out[8]~8_combout\))) # 
-- (!\add_instance|forwarding_unit|forward_selection_process~8_combout\ & (\add_instance|or_ex_register|rf_d1_EX_in\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|rf_d1_EX_in\(8),
	datab => \add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\,
	datac => \add_instance|rf_d3_mux|sel_out[8]~8_combout\,
	datad => \add_instance|forwarding_unit|forward_selection_process~8_combout\,
	combout => \add_instance|alu_a_forwarding_mux|sel_out[8]~16_combout\);

-- Location: LCCOMB_X10_Y15_N0
\add_instance|alu_a_forwarding_mux|sel_out[8]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_a_forwarding_mux|sel_out[8]~17_combout\ = (\add_instance|alu_a_forwarding_mux|sel_out[8]~16_combout\) # ((\add_instance|ex_mem_register|alu_c_MEM\(8) & \add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ex_mem_register|alu_c_MEM\(8),
	datac => \add_instance|alu_a_forwarding_mux|sel_out[8]~16_combout\,
	datad => \add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\,
	combout => \add_instance|alu_a_forwarding_mux|sel_out[8]~17_combout\);

-- Location: LCCOMB_X13_Y10_N20
\add_instance|rf|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux23~0_combout\ = (\add_instance|id_or_register|rf_a2_OR_in\(0) & (((\add_instance|rf|RF[1][8]~q\) # (\add_instance|id_or_register|rf_a2_OR_in\(1))))) # (!\add_instance|id_or_register|rf_a2_OR_in\(0) & (\add_instance|rf|RF[0][8]~q\ & 
-- ((!\add_instance|id_or_register|rf_a2_OR_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[0][8]~q\,
	datab => \add_instance|id_or_register|rf_a2_OR_in\(0),
	datac => \add_instance|rf|RF[1][8]~q\,
	datad => \add_instance|id_or_register|rf_a2_OR_in\(1),
	combout => \add_instance|rf|Mux23~0_combout\);

-- Location: LCCOMB_X13_Y12_N16
\add_instance|rf|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux23~1_combout\ = (\add_instance|rf|Mux23~0_combout\ & (((\add_instance|rf|RF[3][8]~q\) # (!\add_instance|id_or_register|rf_a2_OR_in\(1))))) # (!\add_instance|rf|Mux23~0_combout\ & (\add_instance|rf|RF[2][8]~q\ & 
-- (\add_instance|id_or_register|rf_a2_OR_in\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[2][8]~q\,
	datab => \add_instance|rf|Mux23~0_combout\,
	datac => \add_instance|id_or_register|rf_a2_OR_in\(1),
	datad => \add_instance|rf|RF[3][8]~q\,
	combout => \add_instance|rf|Mux23~1_combout\);

-- Location: FF_X13_Y12_N17
\add_instance|or_ex_register|rf_d2_EX[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|Mux23~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|rf_d2_EX\(8));

-- Location: LCCOMB_X10_Y15_N2
\add_instance|alu_b_mux|sel_out[8]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[8]~26_combout\ = (!\add_instance|or_ex_register|alu_b_select_EX_in\(0) & ((\add_instance|forwarding_unit|forward_select_b\(1) & (\add_instance|rf_d3_mux|sel_out[8]~8_combout\)) # 
-- (!\add_instance|forwarding_unit|forward_select_b\(1) & ((\add_instance|or_ex_register|rf_d2_EX\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|alu_b_select_EX_in\(0),
	datab => \add_instance|forwarding_unit|forward_select_b\(1),
	datac => \add_instance|rf_d3_mux|sel_out[8]~8_combout\,
	datad => \add_instance|or_ex_register|rf_d2_EX\(8),
	combout => \add_instance|alu_b_mux|sel_out[8]~26_combout\);

-- Location: LCCOMB_X10_Y15_N8
\add_instance|alu_b_mux|sel_out[8]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[8]~25_combout\ = (\add_instance|or_ex_register|alu_b_select_EX_in\(0) & ((\add_instance|forwarding_unit|forward_select_b\(1) & (\add_instance|rf_d3_mux|sel_out[7]~7_combout\)) # 
-- (!\add_instance|forwarding_unit|forward_select_b\(1) & ((\add_instance|or_ex_register|rf_d2_EX\(7))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|alu_b_select_EX_in\(0),
	datab => \add_instance|forwarding_unit|forward_select_b\(1),
	datac => \add_instance|rf_d3_mux|sel_out[7]~7_combout\,
	datad => \add_instance|or_ex_register|rf_d2_EX\(7),
	combout => \add_instance|alu_b_mux|sel_out[8]~25_combout\);

-- Location: LCCOMB_X10_Y15_N12
\add_instance|alu_b_mux|sel_out[8]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[8]~27_combout\ = (\add_instance|alu_b_mux|sel_out[8]~24_combout\) # ((!\add_instance|or_ex_register|alu_b_select_EX_in\(1) & ((\add_instance|alu_b_mux|sel_out[8]~26_combout\) # 
-- (\add_instance|alu_b_mux|sel_out[8]~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|alu_b_select_EX_in\(1),
	datab => \add_instance|alu_b_mux|sel_out[8]~26_combout\,
	datac => \add_instance|alu_b_mux|sel_out[8]~25_combout\,
	datad => \add_instance|alu_b_mux|sel_out[8]~24_combout\,
	combout => \add_instance|alu_b_mux|sel_out[8]~27_combout\);

-- Location: LCCOMB_X10_Y15_N22
\add_instance|main_alu|C[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[8]~8_combout\ = (\add_instance|or_ex_register|alu_select_EX_in\(0) & (((!\add_instance|alu_b_mux|sel_out[8]~27_combout\) # (!\add_instance|alu_a_forwarding_mux|sel_out[8]~17_combout\)))) # 
-- (!\add_instance|or_ex_register|alu_select_EX_in\(0) & (\add_instance|main_alu|carry~7_combout\ $ (\add_instance|alu_a_forwarding_mux|sel_out[8]~17_combout\ $ (\add_instance|alu_b_mux|sel_out[8]~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|main_alu|carry~7_combout\,
	datab => \add_instance|alu_a_forwarding_mux|sel_out[8]~17_combout\,
	datac => \add_instance|alu_b_mux|sel_out[8]~27_combout\,
	datad => \add_instance|or_ex_register|alu_select_EX_in\(0),
	combout => \add_instance|main_alu|C[8]~8_combout\);

-- Location: FF_X10_Y15_N23
\add_instance|ex_mem_register|alu_c_MEM[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|main_alu|C[8]~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|ex_mem_register|alu_c_MEM\(8));

-- Location: LCCOMB_X10_Y15_N16
\add_instance|main_alu|carry~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|carry~8_combout\ = (\add_instance|alu_b_mux|sel_out[8]~27_combout\ & ((\add_instance|alu_a_forwarding_mux|sel_out[8]~16_combout\) # ((\add_instance|ex_mem_register|alu_c_MEM\(8) & 
-- \add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ex_mem_register|alu_c_MEM\(8),
	datab => \add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\,
	datac => \add_instance|alu_a_forwarding_mux|sel_out[8]~16_combout\,
	datad => \add_instance|alu_b_mux|sel_out[8]~27_combout\,
	combout => \add_instance|main_alu|carry~8_combout\);

-- Location: LCCOMB_X13_Y15_N10
\add_instance|main_alu|carry~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|carry~9_combout\ = (\add_instance|main_alu|carry~7_combout\ & ((\add_instance|alu_b_mux|sel_out[8]~27_combout\) # (\add_instance|alu_a_forwarding_mux|sel_out[8]~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[8]~27_combout\,
	datac => \add_instance|alu_a_forwarding_mux|sel_out[8]~17_combout\,
	datad => \add_instance|main_alu|carry~7_combout\,
	combout => \add_instance|main_alu|carry~9_combout\);

-- Location: LCCOMB_X10_Y15_N28
\add_instance|alu_b_mux|sel_out[9]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[9]~29_combout\ = (\add_instance|forwarding_unit|forward_select_b\(1) & ((\add_instance|or_ex_register|alu_b_select_EX_in\(0) & (\add_instance|rf_d3_mux|sel_out[8]~8_combout\)) # 
-- (!\add_instance|or_ex_register|alu_b_select_EX_in\(0) & ((\add_instance|rf_d3_mux|sel_out[9]~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|alu_b_select_EX_in\(0),
	datab => \add_instance|forwarding_unit|forward_select_b\(1),
	datac => \add_instance|rf_d3_mux|sel_out[8]~8_combout\,
	datad => \add_instance|rf_d3_mux|sel_out[9]~9_combout\,
	combout => \add_instance|alu_b_mux|sel_out[9]~29_combout\);

-- Location: LCCOMB_X10_Y15_N14
\add_instance|alu_b_mux|sel_out[9]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[9]~28_combout\ = (!\add_instance|forwarding_unit|forward_select_b\(1) & ((\add_instance|or_ex_register|alu_b_select_EX_in\(0) & ((\add_instance|or_ex_register|rf_d2_EX\(8)))) # 
-- (!\add_instance|or_ex_register|alu_b_select_EX_in\(0) & (\add_instance|or_ex_register|rf_d2_EX\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|alu_b_select_EX_in\(0),
	datab => \add_instance|forwarding_unit|forward_select_b\(1),
	datac => \add_instance|or_ex_register|rf_d2_EX\(9),
	datad => \add_instance|or_ex_register|rf_d2_EX\(8),
	combout => \add_instance|alu_b_mux|sel_out[9]~28_combout\);

-- Location: LCCOMB_X10_Y15_N18
\add_instance|alu_b_mux|sel_out[9]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[9]~30_combout\ = (\add_instance|alu_b_mux|sel_out[8]~24_combout\) # ((!\add_instance|or_ex_register|alu_b_select_EX_in\(1) & ((\add_instance|alu_b_mux|sel_out[9]~29_combout\) # 
-- (\add_instance|alu_b_mux|sel_out[9]~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|alu_b_select_EX_in\(1),
	datab => \add_instance|alu_b_mux|sel_out[9]~29_combout\,
	datac => \add_instance|alu_b_mux|sel_out[9]~28_combout\,
	datad => \add_instance|alu_b_mux|sel_out[8]~24_combout\,
	combout => \add_instance|alu_b_mux|sel_out[9]~30_combout\);

-- Location: LCCOMB_X13_Y15_N12
\add_instance|main_alu|sum~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|sum~3_combout\ = \add_instance|alu_a_forwarding_mux|sel_out[9]~19_combout\ $ (\add_instance|alu_b_mux|sel_out[9]~30_combout\ $ (((\add_instance|main_alu|carry~8_combout\) # (\add_instance|main_alu|carry~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_a_forwarding_mux|sel_out[9]~19_combout\,
	datab => \add_instance|main_alu|carry~8_combout\,
	datac => \add_instance|main_alu|carry~9_combout\,
	datad => \add_instance|alu_b_mux|sel_out[9]~30_combout\,
	combout => \add_instance|main_alu|sum~3_combout\);

-- Location: LCCOMB_X12_Y15_N2
\add_instance|main_alu|C[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[9]~9_combout\ = (\add_instance|or_ex_register|alu_select_EX_in\(0) & (((!\add_instance|alu_b_mux|sel_out[9]~30_combout\)) # (!\add_instance|alu_a_forwarding_mux|sel_out[9]~19_combout\))) # 
-- (!\add_instance|or_ex_register|alu_select_EX_in\(0) & (((\add_instance|main_alu|sum~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_a_forwarding_mux|sel_out[9]~19_combout\,
	datab => \add_instance|or_ex_register|alu_select_EX_in\(0),
	datac => \add_instance|main_alu|sum~3_combout\,
	datad => \add_instance|alu_b_mux|sel_out[9]~30_combout\,
	combout => \add_instance|main_alu|C[9]~9_combout\);

-- Location: FF_X12_Y15_N3
\add_instance|ex_mem_register|alu_c_MEM[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|main_alu|C[9]~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|ex_mem_register|alu_c_MEM\(9));

-- Location: FF_X11_Y12_N27
\add_instance|mem_wb_register|alu_c_WB_in[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|ex_mem_register|alu_c_MEM\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|mem_wb_register|alu_c_WB_in\(9));

-- Location: LCCOMB_X11_Y12_N26
\add_instance|rf_d3_mux|sel_out[9]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_d3_mux|sel_out[9]~9_combout\ = (\add_instance|mem_wb_register|rf_d3_select_WB_in\(0) & (\add_instance|mem_wb_register|za_out_WB_in\(9))) # (!\add_instance|mem_wb_register|rf_d3_select_WB_in\(0) & 
-- ((\add_instance|mem_wb_register|alu_c_WB_in\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|mem_wb_register|za_out_WB_in\(9),
	datac => \add_instance|mem_wb_register|alu_c_WB_in\(9),
	datad => \add_instance|mem_wb_register|rf_d3_select_WB_in\(0),
	combout => \add_instance|rf_d3_mux|sel_out[9]~9_combout\);

-- Location: LCCOMB_X12_Y11_N16
\add_instance|rf|RF[1][9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|RF[1][9]~feeder_combout\ = \add_instance|rf_d3_mux|sel_out[9]~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|rf_d3_mux|sel_out[9]~9_combout\,
	combout => \add_instance|rf|RF[1][9]~feeder_combout\);

-- Location: FF_X12_Y11_N17
\add_instance|rf|RF[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|RF[1][9]~feeder_combout\,
	ena => \add_instance|rf|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[1][9]~q\);

-- Location: LCCOMB_X13_Y11_N22
\add_instance|rf|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux22~0_combout\ = (\add_instance|id_or_register|rf_a2_OR_in\(1) & (((\add_instance|rf|RF[2][9]~q\) # (\add_instance|id_or_register|rf_a2_OR_in\(0))))) # (!\add_instance|id_or_register|rf_a2_OR_in\(1) & (\add_instance|rf|RF[0][9]~q\ & 
-- ((!\add_instance|id_or_register|rf_a2_OR_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[0][9]~q\,
	datab => \add_instance|id_or_register|rf_a2_OR_in\(1),
	datac => \add_instance|rf|RF[2][9]~q\,
	datad => \add_instance|id_or_register|rf_a2_OR_in\(0),
	combout => \add_instance|rf|Mux22~0_combout\);

-- Location: LCCOMB_X13_Y12_N14
\add_instance|rf|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux22~1_combout\ = (\add_instance|rf|Mux22~0_combout\ & (((\add_instance|rf|RF[3][9]~q\) # (!\add_instance|id_or_register|rf_a2_OR_in\(0))))) # (!\add_instance|rf|Mux22~0_combout\ & (\add_instance|rf|RF[1][9]~q\ & 
-- ((\add_instance|id_or_register|rf_a2_OR_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[1][9]~q\,
	datab => \add_instance|rf|RF[3][9]~q\,
	datac => \add_instance|rf|Mux22~0_combout\,
	datad => \add_instance|id_or_register|rf_a2_OR_in\(0),
	combout => \add_instance|rf|Mux22~1_combout\);

-- Location: FF_X13_Y12_N15
\add_instance|or_ex_register|rf_d2_EX[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|Mux22~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|rf_d2_EX\(9));

-- Location: LCCOMB_X11_Y13_N8
\add_instance|alu_b_mux|sel_out[10]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[10]~31_combout\ = (!\add_instance|forwarding_unit|forward_select_b\(1) & ((\add_instance|or_ex_register|alu_b_select_EX_in\(0) & (\add_instance|or_ex_register|rf_d2_EX\(9))) # 
-- (!\add_instance|or_ex_register|alu_b_select_EX_in\(0) & ((\add_instance|or_ex_register|rf_d2_EX\(10))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|rf_d2_EX\(9),
	datab => \add_instance|or_ex_register|rf_d2_EX\(10),
	datac => \add_instance|or_ex_register|alu_b_select_EX_in\(0),
	datad => \add_instance|forwarding_unit|forward_select_b\(1),
	combout => \add_instance|alu_b_mux|sel_out[10]~31_combout\);

-- Location: LCCOMB_X11_Y13_N14
\add_instance|alu_b_mux|sel_out[10]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[10]~32_combout\ = (\add_instance|forwarding_unit|forward_select_b\(1) & ((\add_instance|or_ex_register|alu_b_select_EX_in\(0) & (\add_instance|rf_d3_mux|sel_out[9]~9_combout\)) # 
-- (!\add_instance|or_ex_register|alu_b_select_EX_in\(0) & ((\add_instance|rf_d3_mux|sel_out[10]~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|alu_b_select_EX_in\(0),
	datab => \add_instance|forwarding_unit|forward_select_b\(1),
	datac => \add_instance|rf_d3_mux|sel_out[9]~9_combout\,
	datad => \add_instance|rf_d3_mux|sel_out[10]~10_combout\,
	combout => \add_instance|alu_b_mux|sel_out[10]~32_combout\);

-- Location: LCCOMB_X11_Y13_N0
\add_instance|alu_b_mux|sel_out[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[10]~33_combout\ = (\add_instance|alu_b_mux|sel_out[8]~24_combout\) # ((!\add_instance|or_ex_register|alu_b_select_EX_in\(1) & ((\add_instance|alu_b_mux|sel_out[10]~31_combout\) # 
-- (\add_instance|alu_b_mux|sel_out[10]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|alu_b_select_EX_in\(1),
	datab => \add_instance|alu_b_mux|sel_out[10]~31_combout\,
	datac => \add_instance|alu_b_mux|sel_out[10]~32_combout\,
	datad => \add_instance|alu_b_mux|sel_out[8]~24_combout\,
	combout => \add_instance|alu_b_mux|sel_out[10]~33_combout\);

-- Location: LCCOMB_X10_Y11_N16
\add_instance|rf|RF[6][10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|RF[6][10]~feeder_combout\ = \add_instance|rf_d3_mux|sel_out[10]~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|rf_d3_mux|sel_out[10]~10_combout\,
	combout => \add_instance|rf|RF[6][10]~feeder_combout\);

-- Location: FF_X10_Y11_N17
\add_instance|rf|RF[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|RF[6][10]~feeder_combout\,
	ena => \add_instance|rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[6][10]~q\);

-- Location: FF_X10_Y11_N3
\add_instance|rf|RF[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[10]~10_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[4][10]~q\);

-- Location: LCCOMB_X10_Y11_N2
\add_instance|rf|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux5~0_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(0) & (((\add_instance|id_or_register|rf_a1_OR_in\(1))))) # (!\add_instance|id_or_register|rf_a1_OR_in\(0) & ((\add_instance|id_or_register|rf_a1_OR_in\(1) & 
-- (\add_instance|rf|RF[6][10]~q\)) # (!\add_instance|id_or_register|rf_a1_OR_in\(1) & ((\add_instance|rf|RF[4][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(0),
	datab => \add_instance|rf|RF[6][10]~q\,
	datac => \add_instance|rf|RF[4][10]~q\,
	datad => \add_instance|id_or_register|rf_a1_OR_in\(1),
	combout => \add_instance|rf|Mux5~0_combout\);

-- Location: FF_X11_Y11_N9
\add_instance|rf|RF[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[10]~10_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[5][10]~q\);

-- Location: LCCOMB_X11_Y11_N8
\add_instance|rf|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux5~1_combout\ = (\add_instance|rf|Mux5~0_combout\ & ((\add_instance|rf|RF[7][10]~q\) # ((!\add_instance|id_or_register|rf_a1_OR_in\(0))))) # (!\add_instance|rf|Mux5~0_combout\ & (((\add_instance|rf|RF[5][10]~q\ & 
-- \add_instance|id_or_register|rf_a1_OR_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux5~0_combout\,
	datab => \add_instance|rf|RF[7][10]~q\,
	datac => \add_instance|rf|RF[5][10]~q\,
	datad => \add_instance|id_or_register|rf_a1_OR_in\(0),
	combout => \add_instance|rf|Mux5~1_combout\);

-- Location: FF_X13_Y11_N19
\add_instance|rf|RF[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[10]~10_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[2][10]~q\);

-- Location: FF_X13_Y10_N13
\add_instance|rf|RF[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[10]~10_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[1][10]~q\);

-- Location: LCCOMB_X13_Y10_N22
\add_instance|rf|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux5~2_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(1) & (((\add_instance|id_or_register|rf_a1_OR_in\(0))))) # (!\add_instance|id_or_register|rf_a1_OR_in\(1) & ((\add_instance|id_or_register|rf_a1_OR_in\(0) & 
-- (\add_instance|rf|RF[1][10]~q\)) # (!\add_instance|id_or_register|rf_a1_OR_in\(0) & ((\add_instance|rf|RF[0][10]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[1][10]~q\,
	datab => \add_instance|id_or_register|rf_a1_OR_in\(1),
	datac => \add_instance|rf|RF[0][10]~q\,
	datad => \add_instance|id_or_register|rf_a1_OR_in\(0),
	combout => \add_instance|rf|Mux5~2_combout\);

-- Location: FF_X13_Y11_N5
\add_instance|rf|RF[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[10]~10_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[3][10]~q\);

-- Location: LCCOMB_X13_Y11_N4
\add_instance|rf|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux5~3_combout\ = (\add_instance|rf|Mux5~2_combout\ & (((\add_instance|rf|RF[3][10]~q\) # (!\add_instance|id_or_register|rf_a1_OR_in\(1))))) # (!\add_instance|rf|Mux5~2_combout\ & (\add_instance|rf|RF[2][10]~q\ & 
-- ((\add_instance|id_or_register|rf_a1_OR_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[2][10]~q\,
	datab => \add_instance|rf|Mux5~2_combout\,
	datac => \add_instance|rf|RF[3][10]~q\,
	datad => \add_instance|id_or_register|rf_a1_OR_in\(1),
	combout => \add_instance|rf|Mux5~3_combout\);

-- Location: LCCOMB_X11_Y11_N0
\add_instance|rf|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux5~4_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(2) & (\add_instance|rf|Mux5~1_combout\)) # (!\add_instance|id_or_register|rf_a1_OR_in\(2) & ((\add_instance|rf|Mux5~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(2),
	datac => \add_instance|rf|Mux5~1_combout\,
	datad => \add_instance|rf|Mux5~3_combout\,
	combout => \add_instance|rf|Mux5~4_combout\);

-- Location: FF_X11_Y11_N1
\add_instance|or_ex_register|rf_d1_EX_in[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|Mux5~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|rf_d1_EX_in\(10));

-- Location: LCCOMB_X12_Y14_N10
\add_instance|alu_a_forwarding_mux|sel_out[10]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_a_forwarding_mux|sel_out[10]~20_combout\ = (!\add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\ & ((\add_instance|forwarding_unit|forward_selection_process~8_combout\ & ((\add_instance|rf_d3_mux|sel_out[10]~10_combout\))) # 
-- (!\add_instance|forwarding_unit|forward_selection_process~8_combout\ & (\add_instance|or_ex_register|rf_d1_EX_in\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\,
	datab => \add_instance|forwarding_unit|forward_selection_process~8_combout\,
	datac => \add_instance|or_ex_register|rf_d1_EX_in\(10),
	datad => \add_instance|rf_d3_mux|sel_out[10]~10_combout\,
	combout => \add_instance|alu_a_forwarding_mux|sel_out[10]~20_combout\);

-- Location: LCCOMB_X12_Y14_N6
\add_instance|alu_a_forwarding_mux|sel_out[10]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_a_forwarding_mux|sel_out[10]~21_combout\ = (\add_instance|alu_a_forwarding_mux|sel_out[10]~20_combout\) # ((\add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\ & \add_instance|ex_mem_register|alu_c_MEM\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_a_forwarding_mux|sel_out[10]~20_combout\,
	datab => \add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\,
	datad => \add_instance|ex_mem_register|alu_c_MEM\(10),
	combout => \add_instance|alu_a_forwarding_mux|sel_out[10]~21_combout\);

-- Location: LCCOMB_X13_Y15_N6
\add_instance|main_alu|carry~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|carry~10_combout\ = (\add_instance|alu_a_forwarding_mux|sel_out[9]~19_combout\ & ((\add_instance|alu_b_mux|sel_out[9]~30_combout\) # ((\add_instance|main_alu|carry~8_combout\) # (\add_instance|main_alu|carry~9_combout\)))) # 
-- (!\add_instance|alu_a_forwarding_mux|sel_out[9]~19_combout\ & (\add_instance|alu_b_mux|sel_out[9]~30_combout\ & ((\add_instance|main_alu|carry~8_combout\) # (\add_instance|main_alu|carry~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_a_forwarding_mux|sel_out[9]~19_combout\,
	datab => \add_instance|alu_b_mux|sel_out[9]~30_combout\,
	datac => \add_instance|main_alu|carry~8_combout\,
	datad => \add_instance|main_alu|carry~9_combout\,
	combout => \add_instance|main_alu|carry~10_combout\);

-- Location: LCCOMB_X12_Y14_N30
\add_instance|main_alu|C[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[10]~10_combout\ = (\add_instance|or_ex_register|alu_select_EX_in\(0) & (((!\add_instance|alu_a_forwarding_mux|sel_out[10]~21_combout\)) # (!\add_instance|alu_b_mux|sel_out[10]~33_combout\))) # 
-- (!\add_instance|or_ex_register|alu_select_EX_in\(0) & (\add_instance|alu_b_mux|sel_out[10]~33_combout\ $ (\add_instance|alu_a_forwarding_mux|sel_out[10]~21_combout\ $ (\add_instance|main_alu|carry~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[10]~33_combout\,
	datab => \add_instance|alu_a_forwarding_mux|sel_out[10]~21_combout\,
	datac => \add_instance|main_alu|carry~10_combout\,
	datad => \add_instance|or_ex_register|alu_select_EX_in\(0),
	combout => \add_instance|main_alu|C[10]~10_combout\);

-- Location: FF_X12_Y14_N31
\add_instance|ex_mem_register|alu_c_MEM[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|main_alu|C[10]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|ex_mem_register|alu_c_MEM\(10));

-- Location: FF_X12_Y14_N29
\add_instance|mem_wb_register|alu_c_WB_in[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|ex_mem_register|alu_c_MEM\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|mem_wb_register|alu_c_WB_in\(10));

-- Location: FF_X14_Y14_N3
\add_instance|ex_mem_register|za_out_MEM[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|or_ex_register|za_out_EX\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|ex_mem_register|za_out_MEM\(10));

-- Location: LCCOMB_X16_Y14_N18
\add_instance|mem_wb_register|za_out_WB_in[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|mem_wb_register|za_out_WB_in[10]~feeder_combout\ = \add_instance|ex_mem_register|za_out_MEM\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \add_instance|ex_mem_register|za_out_MEM\(10),
	combout => \add_instance|mem_wb_register|za_out_WB_in[10]~feeder_combout\);

-- Location: FF_X16_Y14_N19
\add_instance|mem_wb_register|za_out_WB_in[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|mem_wb_register|za_out_WB_in[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|mem_wb_register|za_out_WB_in\(10));

-- Location: LCCOMB_X12_Y14_N28
\add_instance|rf_d3_mux|sel_out[10]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_d3_mux|sel_out[10]~10_combout\ = (\add_instance|mem_wb_register|rf_d3_select_WB_in\(0) & ((\add_instance|mem_wb_register|za_out_WB_in\(10)))) # (!\add_instance|mem_wb_register|rf_d3_select_WB_in\(0) & 
-- (\add_instance|mem_wb_register|alu_c_WB_in\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|mem_wb_register|rf_d3_select_WB_in\(0),
	datac => \add_instance|mem_wb_register|alu_c_WB_in\(10),
	datad => \add_instance|mem_wb_register|za_out_WB_in\(10),
	combout => \add_instance|rf_d3_mux|sel_out[10]~10_combout\);

-- Location: FF_X13_Y10_N23
\add_instance|rf|RF[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[10]~10_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[0][10]~q\);

-- Location: LCCOMB_X13_Y10_N12
\add_instance|rf|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux21~0_combout\ = (\add_instance|id_or_register|rf_a2_OR_in\(0) & (((\add_instance|rf|RF[1][10]~q\) # (\add_instance|id_or_register|rf_a2_OR_in\(1))))) # (!\add_instance|id_or_register|rf_a2_OR_in\(0) & (\add_instance|rf|RF[0][10]~q\ & 
-- ((!\add_instance|id_or_register|rf_a2_OR_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[0][10]~q\,
	datab => \add_instance|id_or_register|rf_a2_OR_in\(0),
	datac => \add_instance|rf|RF[1][10]~q\,
	datad => \add_instance|id_or_register|rf_a2_OR_in\(1),
	combout => \add_instance|rf|Mux21~0_combout\);

-- Location: LCCOMB_X12_Y10_N28
\add_instance|rf|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux21~1_combout\ = (\add_instance|rf|Mux21~0_combout\ & ((\add_instance|rf|RF[3][10]~q\) # ((!\add_instance|id_or_register|rf_a2_OR_in\(1))))) # (!\add_instance|rf|Mux21~0_combout\ & (((\add_instance|rf|RF[2][10]~q\ & 
-- \add_instance|id_or_register|rf_a2_OR_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux21~0_combout\,
	datab => \add_instance|rf|RF[3][10]~q\,
	datac => \add_instance|rf|RF[2][10]~q\,
	datad => \add_instance|id_or_register|rf_a2_OR_in\(1),
	combout => \add_instance|rf|Mux21~1_combout\);

-- Location: FF_X12_Y10_N29
\add_instance|or_ex_register|rf_d2_EX[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|Mux21~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|rf_d2_EX\(10));

-- Location: LCCOMB_X11_Y13_N26
\add_instance|alu_b_mux|sel_out[11]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[11]~34_combout\ = (!\add_instance|forwarding_unit|forward_select_b\(1) & ((\add_instance|or_ex_register|alu_b_select_EX_in\(0) & ((\add_instance|or_ex_register|rf_d2_EX\(10)))) # 
-- (!\add_instance|or_ex_register|alu_b_select_EX_in\(0) & (\add_instance|or_ex_register|rf_d2_EX\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|rf_d2_EX\(11),
	datab => \add_instance|forwarding_unit|forward_select_b\(1),
	datac => \add_instance|or_ex_register|alu_b_select_EX_in\(0),
	datad => \add_instance|or_ex_register|rf_d2_EX\(10),
	combout => \add_instance|alu_b_mux|sel_out[11]~34_combout\);

-- Location: LCCOMB_X11_Y13_N24
\add_instance|alu_b_mux|sel_out[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[11]~35_combout\ = (\add_instance|forwarding_unit|forward_select_b\(1) & ((\add_instance|or_ex_register|alu_b_select_EX_in\(0) & ((\add_instance|rf_d3_mux|sel_out[10]~10_combout\))) # 
-- (!\add_instance|or_ex_register|alu_b_select_EX_in\(0) & (\add_instance|rf_d3_mux|sel_out[11]~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|alu_b_select_EX_in\(0),
	datab => \add_instance|forwarding_unit|forward_select_b\(1),
	datac => \add_instance|rf_d3_mux|sel_out[11]~11_combout\,
	datad => \add_instance|rf_d3_mux|sel_out[10]~10_combout\,
	combout => \add_instance|alu_b_mux|sel_out[11]~35_combout\);

-- Location: LCCOMB_X11_Y13_N18
\add_instance|alu_b_mux|sel_out[11]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[11]~36_combout\ = (\add_instance|alu_b_mux|sel_out[8]~24_combout\) # ((!\add_instance|or_ex_register|alu_b_select_EX_in\(1) & ((\add_instance|alu_b_mux|sel_out[11]~34_combout\) # 
-- (\add_instance|alu_b_mux|sel_out[11]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|alu_b_select_EX_in\(1),
	datab => \add_instance|alu_b_mux|sel_out[8]~24_combout\,
	datac => \add_instance|alu_b_mux|sel_out[11]~34_combout\,
	datad => \add_instance|alu_b_mux|sel_out[11]~35_combout\,
	combout => \add_instance|alu_b_mux|sel_out[11]~36_combout\);

-- Location: LCCOMB_X12_Y14_N20
\add_instance|main_alu|carry~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|carry~11_combout\ = (\add_instance|alu_b_mux|sel_out[10]~33_combout\ & ((\add_instance|alu_a_forwarding_mux|sel_out[10]~20_combout\) # ((\add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\ & 
-- \add_instance|ex_mem_register|alu_c_MEM\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_a_forwarding_mux|sel_out[10]~20_combout\,
	datab => \add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\,
	datac => \add_instance|ex_mem_register|alu_c_MEM\(10),
	datad => \add_instance|alu_b_mux|sel_out[10]~33_combout\,
	combout => \add_instance|main_alu|carry~11_combout\);

-- Location: LCCOMB_X13_Y15_N20
\add_instance|main_alu|carry~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|carry~12_combout\ = (\add_instance|main_alu|carry~10_combout\ & ((\add_instance|alu_b_mux|sel_out[10]~33_combout\) # (\add_instance|alu_a_forwarding_mux|sel_out[10]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[10]~33_combout\,
	datac => \add_instance|alu_a_forwarding_mux|sel_out[10]~21_combout\,
	datad => \add_instance|main_alu|carry~10_combout\,
	combout => \add_instance|main_alu|carry~12_combout\);

-- Location: LCCOMB_X13_Y15_N14
\add_instance|main_alu|sum~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|sum~4_combout\ = \add_instance|alu_b_mux|sel_out[11]~36_combout\ $ (\add_instance|alu_a_forwarding_mux|sel_out[11]~23_combout\ $ (((\add_instance|main_alu|carry~11_combout\) # (\add_instance|main_alu|carry~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[11]~36_combout\,
	datab => \add_instance|main_alu|carry~11_combout\,
	datac => \add_instance|alu_a_forwarding_mux|sel_out[11]~23_combout\,
	datad => \add_instance|main_alu|carry~12_combout\,
	combout => \add_instance|main_alu|sum~4_combout\);

-- Location: LCCOMB_X13_Y15_N0
\add_instance|main_alu|C[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[11]~11_combout\ = (\add_instance|or_ex_register|alu_select_EX_in\(0) & (((!\add_instance|alu_b_mux|sel_out[11]~36_combout\)) # (!\add_instance|alu_a_forwarding_mux|sel_out[11]~23_combout\))) # 
-- (!\add_instance|or_ex_register|alu_select_EX_in\(0) & (((\add_instance|main_alu|sum~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_a_forwarding_mux|sel_out[11]~23_combout\,
	datab => \add_instance|main_alu|sum~4_combout\,
	datac => \add_instance|or_ex_register|alu_select_EX_in\(0),
	datad => \add_instance|alu_b_mux|sel_out[11]~36_combout\,
	combout => \add_instance|main_alu|C[11]~11_combout\);

-- Location: FF_X13_Y15_N1
\add_instance|ex_mem_register|alu_c_MEM[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|main_alu|C[11]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|ex_mem_register|alu_c_MEM\(11));

-- Location: LCCOMB_X16_Y12_N18
\add_instance|mem_wb_register|alu_c_WB_in[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|mem_wb_register|alu_c_WB_in[11]~feeder_combout\ = \add_instance|ex_mem_register|alu_c_MEM\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|ex_mem_register|alu_c_MEM\(11),
	combout => \add_instance|mem_wb_register|alu_c_WB_in[11]~feeder_combout\);

-- Location: FF_X16_Y12_N19
\add_instance|mem_wb_register|alu_c_WB_in[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|mem_wb_register|alu_c_WB_in[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|mem_wb_register|alu_c_WB_in\(11));

-- Location: LCCOMB_X16_Y12_N8
\add_instance|rf_d3_mux|sel_out[11]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_d3_mux|sel_out[11]~11_combout\ = (\add_instance|mem_wb_register|rf_d3_select_WB_in\(0) & (\add_instance|mem_wb_register|za_out_WB_in\(11))) # (!\add_instance|mem_wb_register|rf_d3_select_WB_in\(0) & 
-- ((\add_instance|mem_wb_register|alu_c_WB_in\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|mem_wb_register|rf_d3_select_WB_in\(0),
	datac => \add_instance|mem_wb_register|za_out_WB_in\(11),
	datad => \add_instance|mem_wb_register|alu_c_WB_in\(11),
	combout => \add_instance|rf_d3_mux|sel_out[11]~11_combout\);

-- Location: LCCOMB_X11_Y13_N2
\add_instance|alu_b_mux|sel_out[12]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[12]~38_combout\ = (\add_instance|forwarding_unit|forward_select_b\(1) & ((\add_instance|or_ex_register|alu_b_select_EX_in\(0) & (\add_instance|rf_d3_mux|sel_out[11]~11_combout\)) # 
-- (!\add_instance|or_ex_register|alu_b_select_EX_in\(0) & ((\add_instance|rf_d3_mux|sel_out[12]~12_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|alu_b_select_EX_in\(0),
	datab => \add_instance|forwarding_unit|forward_select_b\(1),
	datac => \add_instance|rf_d3_mux|sel_out[11]~11_combout\,
	datad => \add_instance|rf_d3_mux|sel_out[12]~12_combout\,
	combout => \add_instance|alu_b_mux|sel_out[12]~38_combout\);

-- Location: FF_X12_Y13_N31
\add_instance|rf|RF[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[12]~12_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[3][12]~q\);

-- Location: LCCOMB_X12_Y12_N0
\add_instance|rf|RF[2][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|RF[2][12]~feeder_combout\ = \add_instance|rf_d3_mux|sel_out[12]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \add_instance|rf_d3_mux|sel_out[12]~12_combout\,
	combout => \add_instance|rf|RF[2][12]~feeder_combout\);

-- Location: FF_X12_Y12_N1
\add_instance|rf|RF[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|RF[2][12]~feeder_combout\,
	ena => \add_instance|rf|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[2][12]~q\);

-- Location: FF_X12_Y11_N7
\add_instance|rf|RF[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[12]~12_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[0][12]~q\);

-- Location: FF_X12_Y11_N21
\add_instance|rf|RF[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[12]~12_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[1][12]~q\);

-- Location: LCCOMB_X12_Y11_N20
\add_instance|rf|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux19~0_combout\ = (\add_instance|id_or_register|rf_a2_OR_in\(0) & (((\add_instance|rf|RF[1][12]~q\) # (\add_instance|id_or_register|rf_a2_OR_in\(1))))) # (!\add_instance|id_or_register|rf_a2_OR_in\(0) & (\add_instance|rf|RF[0][12]~q\ & 
-- ((!\add_instance|id_or_register|rf_a2_OR_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[0][12]~q\,
	datab => \add_instance|id_or_register|rf_a2_OR_in\(0),
	datac => \add_instance|rf|RF[1][12]~q\,
	datad => \add_instance|id_or_register|rf_a2_OR_in\(1),
	combout => \add_instance|rf|Mux19~0_combout\);

-- Location: LCCOMB_X12_Y13_N8
\add_instance|rf|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux19~1_combout\ = (\add_instance|rf|Mux19~0_combout\ & ((\add_instance|rf|RF[3][12]~q\) # ((!\add_instance|id_or_register|rf_a2_OR_in\(1))))) # (!\add_instance|rf|Mux19~0_combout\ & (((\add_instance|rf|RF[2][12]~q\ & 
-- \add_instance|id_or_register|rf_a2_OR_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[3][12]~q\,
	datab => \add_instance|rf|RF[2][12]~q\,
	datac => \add_instance|rf|Mux19~0_combout\,
	datad => \add_instance|id_or_register|rf_a2_OR_in\(1),
	combout => \add_instance|rf|Mux19~1_combout\);

-- Location: FF_X12_Y13_N9
\add_instance|or_ex_register|rf_d2_EX[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|Mux19~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|rf_d2_EX\(12));

-- Location: LCCOMB_X11_Y13_N4
\add_instance|alu_b_mux|sel_out[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[12]~37_combout\ = (!\add_instance|forwarding_unit|forward_select_b\(1) & ((\add_instance|or_ex_register|alu_b_select_EX_in\(0) & (\add_instance|or_ex_register|rf_d2_EX\(11))) # 
-- (!\add_instance|or_ex_register|alu_b_select_EX_in\(0) & ((\add_instance|or_ex_register|rf_d2_EX\(12))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|rf_d2_EX\(11),
	datab => \add_instance|or_ex_register|alu_b_select_EX_in\(0),
	datac => \add_instance|or_ex_register|rf_d2_EX\(12),
	datad => \add_instance|forwarding_unit|forward_select_b\(1),
	combout => \add_instance|alu_b_mux|sel_out[12]~37_combout\);

-- Location: LCCOMB_X11_Y13_N16
\add_instance|alu_b_mux|sel_out[12]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[12]~39_combout\ = (\add_instance|alu_b_mux|sel_out[8]~24_combout\) # ((!\add_instance|or_ex_register|alu_b_select_EX_in\(1) & ((\add_instance|alu_b_mux|sel_out[12]~38_combout\) # 
-- (\add_instance|alu_b_mux|sel_out[12]~37_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|alu_b_select_EX_in\(1),
	datab => \add_instance|alu_b_mux|sel_out[12]~38_combout\,
	datac => \add_instance|alu_b_mux|sel_out[12]~37_combout\,
	datad => \add_instance|alu_b_mux|sel_out[8]~24_combout\,
	combout => \add_instance|alu_b_mux|sel_out[12]~39_combout\);

-- Location: LCCOMB_X12_Y11_N6
\add_instance|rf|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux3~2_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(1) & (((\add_instance|id_or_register|rf_a1_OR_in\(0))))) # (!\add_instance|id_or_register|rf_a1_OR_in\(1) & ((\add_instance|id_or_register|rf_a1_OR_in\(0) & 
-- (\add_instance|rf|RF[1][12]~q\)) # (!\add_instance|id_or_register|rf_a1_OR_in\(0) & ((\add_instance|rf|RF[0][12]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(1),
	datab => \add_instance|rf|RF[1][12]~q\,
	datac => \add_instance|rf|RF[0][12]~q\,
	datad => \add_instance|id_or_register|rf_a1_OR_in\(0),
	combout => \add_instance|rf|Mux3~2_combout\);

-- Location: LCCOMB_X12_Y13_N30
\add_instance|rf|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux3~3_combout\ = (\add_instance|rf|Mux3~2_combout\ & (((\add_instance|rf|RF[3][12]~q\) # (!\add_instance|id_or_register|rf_a1_OR_in\(1))))) # (!\add_instance|rf|Mux3~2_combout\ & (\add_instance|rf|RF[2][12]~q\ & 
-- ((\add_instance|id_or_register|rf_a1_OR_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux3~2_combout\,
	datab => \add_instance|rf|RF[2][12]~q\,
	datac => \add_instance|rf|RF[3][12]~q\,
	datad => \add_instance|id_or_register|rf_a1_OR_in\(1),
	combout => \add_instance|rf|Mux3~3_combout\);

-- Location: LCCOMB_X10_Y11_N22
\add_instance|rf|RF[4][12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|RF[4][12]~feeder_combout\ = \add_instance|rf_d3_mux|sel_out[12]~12_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|rf_d3_mux|sel_out[12]~12_combout\,
	combout => \add_instance|rf|RF[4][12]~feeder_combout\);

-- Location: FF_X10_Y11_N23
\add_instance|rf|RF[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|RF[4][12]~feeder_combout\,
	ena => \add_instance|rf|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[4][12]~q\);

-- Location: FF_X10_Y11_N25
\add_instance|rf|RF[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[12]~12_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[6][12]~q\);

-- Location: LCCOMB_X10_Y11_N24
\add_instance|rf|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux3~0_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(0) & (((\add_instance|id_or_register|rf_a1_OR_in\(1))))) # (!\add_instance|id_or_register|rf_a1_OR_in\(0) & ((\add_instance|id_or_register|rf_a1_OR_in\(1) & 
-- ((\add_instance|rf|RF[6][12]~q\))) # (!\add_instance|id_or_register|rf_a1_OR_in\(1) & (\add_instance|rf|RF[4][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(0),
	datab => \add_instance|rf|RF[4][12]~q\,
	datac => \add_instance|rf|RF[6][12]~q\,
	datad => \add_instance|id_or_register|rf_a1_OR_in\(1),
	combout => \add_instance|rf|Mux3~0_combout\);

-- Location: FF_X11_Y11_N21
\add_instance|rf|RF[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[12]~12_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[5][12]~q\);

-- Location: LCCOMB_X11_Y11_N20
\add_instance|rf|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux3~1_combout\ = (\add_instance|rf|Mux3~0_combout\ & ((\add_instance|rf|RF[7][12]~q\) # ((!\add_instance|id_or_register|rf_a1_OR_in\(0))))) # (!\add_instance|rf|Mux3~0_combout\ & (((\add_instance|rf|RF[5][12]~q\ & 
-- \add_instance|id_or_register|rf_a1_OR_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][12]~q\,
	datab => \add_instance|rf|Mux3~0_combout\,
	datac => \add_instance|rf|RF[5][12]~q\,
	datad => \add_instance|id_or_register|rf_a1_OR_in\(0),
	combout => \add_instance|rf|Mux3~1_combout\);

-- Location: LCCOMB_X12_Y14_N18
\add_instance|rf|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux3~4_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(2) & ((\add_instance|rf|Mux3~1_combout\))) # (!\add_instance|id_or_register|rf_a1_OR_in\(2) & (\add_instance|rf|Mux3~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|rf|Mux3~3_combout\,
	datac => \add_instance|rf|Mux3~1_combout\,
	datad => \add_instance|id_or_register|rf_a1_OR_in\(2),
	combout => \add_instance|rf|Mux3~4_combout\);

-- Location: FF_X12_Y14_N19
\add_instance|or_ex_register|rf_d1_EX_in[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|Mux3~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|rf_d1_EX_in\(12));

-- Location: LCCOMB_X12_Y14_N16
\add_instance|alu_a_forwarding_mux|sel_out[12]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_a_forwarding_mux|sel_out[12]~24_combout\ = (!\add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\ & ((\add_instance|forwarding_unit|forward_selection_process~8_combout\ & ((\add_instance|rf_d3_mux|sel_out[12]~12_combout\))) # 
-- (!\add_instance|forwarding_unit|forward_selection_process~8_combout\ & (\add_instance|or_ex_register|rf_d1_EX_in\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|rf_d1_EX_in\(12),
	datab => \add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\,
	datac => \add_instance|rf_d3_mux|sel_out[12]~12_combout\,
	datad => \add_instance|forwarding_unit|forward_selection_process~8_combout\,
	combout => \add_instance|alu_a_forwarding_mux|sel_out[12]~24_combout\);

-- Location: LCCOMB_X12_Y14_N26
\add_instance|alu_a_forwarding_mux|sel_out[12]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_a_forwarding_mux|sel_out[12]~25_combout\ = (\add_instance|alu_a_forwarding_mux|sel_out[12]~24_combout\) # ((\add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\ & \add_instance|ex_mem_register|alu_c_MEM\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\,
	datab => \add_instance|alu_a_forwarding_mux|sel_out[12]~24_combout\,
	datad => \add_instance|ex_mem_register|alu_c_MEM\(12),
	combout => \add_instance|alu_a_forwarding_mux|sel_out[12]~25_combout\);

-- Location: LCCOMB_X13_Y15_N28
\add_instance|main_alu|carry~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|carry~13_combout\ = (\add_instance|alu_b_mux|sel_out[11]~36_combout\ & ((\add_instance|main_alu|carry~11_combout\) # ((\add_instance|alu_a_forwarding_mux|sel_out[11]~23_combout\) # (\add_instance|main_alu|carry~12_combout\)))) # 
-- (!\add_instance|alu_b_mux|sel_out[11]~36_combout\ & (\add_instance|alu_a_forwarding_mux|sel_out[11]~23_combout\ & ((\add_instance|main_alu|carry~11_combout\) # (\add_instance|main_alu|carry~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[11]~36_combout\,
	datab => \add_instance|main_alu|carry~11_combout\,
	datac => \add_instance|alu_a_forwarding_mux|sel_out[11]~23_combout\,
	datad => \add_instance|main_alu|carry~12_combout\,
	combout => \add_instance|main_alu|carry~13_combout\);

-- Location: LCCOMB_X12_Y14_N14
\add_instance|main_alu|C[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[12]~12_combout\ = (\add_instance|or_ex_register|alu_select_EX_in\(0) & (((!\add_instance|alu_a_forwarding_mux|sel_out[12]~25_combout\)) # (!\add_instance|alu_b_mux|sel_out[12]~39_combout\))) # 
-- (!\add_instance|or_ex_register|alu_select_EX_in\(0) & (\add_instance|alu_b_mux|sel_out[12]~39_combout\ $ (\add_instance|alu_a_forwarding_mux|sel_out[12]~25_combout\ $ (\add_instance|main_alu|carry~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101100111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|alu_select_EX_in\(0),
	datab => \add_instance|alu_b_mux|sel_out[12]~39_combout\,
	datac => \add_instance|alu_a_forwarding_mux|sel_out[12]~25_combout\,
	datad => \add_instance|main_alu|carry~13_combout\,
	combout => \add_instance|main_alu|C[12]~12_combout\);

-- Location: FF_X12_Y14_N15
\add_instance|ex_mem_register|alu_c_MEM[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|main_alu|C[12]~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|ex_mem_register|alu_c_MEM\(12));

-- Location: FF_X12_Y14_N23
\add_instance|mem_wb_register|alu_c_WB_in[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|ex_mem_register|alu_c_MEM\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|mem_wb_register|alu_c_WB_in\(12));

-- Location: FF_X12_Y14_N9
\add_instance|ex_mem_register|za_out_MEM[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|or_ex_register|za_out_EX\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|ex_mem_register|za_out_MEM\(12));

-- Location: FF_X12_Y14_N7
\add_instance|mem_wb_register|za_out_WB_in[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|ex_mem_register|za_out_MEM\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|mem_wb_register|za_out_WB_in\(12));

-- Location: LCCOMB_X12_Y14_N22
\add_instance|rf_d3_mux|sel_out[12]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_d3_mux|sel_out[12]~12_combout\ = (\add_instance|mem_wb_register|rf_d3_select_WB_in\(0) & ((\add_instance|mem_wb_register|za_out_WB_in\(12)))) # (!\add_instance|mem_wb_register|rf_d3_select_WB_in\(0) & 
-- (\add_instance|mem_wb_register|alu_c_WB_in\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|mem_wb_register|rf_d3_select_WB_in\(0),
	datac => \add_instance|mem_wb_register|alu_c_WB_in\(12),
	datad => \add_instance|mem_wb_register|za_out_WB_in\(12),
	combout => \add_instance|rf_d3_mux|sel_out[12]~12_combout\);

-- Location: LCCOMB_X11_Y13_N20
\add_instance|alu_b_mux|sel_out[13]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[13]~41_combout\ = (\add_instance|forwarding_unit|forward_select_b\(1) & ((\add_instance|or_ex_register|alu_b_select_EX_in\(0) & (\add_instance|rf_d3_mux|sel_out[12]~12_combout\)) # 
-- (!\add_instance|or_ex_register|alu_b_select_EX_in\(0) & ((\add_instance|rf_d3_mux|sel_out[13]~13_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf_d3_mux|sel_out[12]~12_combout\,
	datab => \add_instance|forwarding_unit|forward_select_b\(1),
	datac => \add_instance|or_ex_register|alu_b_select_EX_in\(0),
	datad => \add_instance|rf_d3_mux|sel_out[13]~13_combout\,
	combout => \add_instance|alu_b_mux|sel_out[13]~41_combout\);

-- Location: LCCOMB_X13_Y10_N8
\add_instance|rf|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux18~0_combout\ = (\add_instance|id_or_register|rf_a2_OR_in\(0) & (((\add_instance|id_or_register|rf_a2_OR_in\(1))))) # (!\add_instance|id_or_register|rf_a2_OR_in\(0) & ((\add_instance|id_or_register|rf_a2_OR_in\(1) & 
-- (\add_instance|rf|RF[2][13]~q\)) # (!\add_instance|id_or_register|rf_a2_OR_in\(1) & ((\add_instance|rf|RF[0][13]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[2][13]~q\,
	datab => \add_instance|rf|RF[0][13]~q\,
	datac => \add_instance|id_or_register|rf_a2_OR_in\(0),
	datad => \add_instance|id_or_register|rf_a2_OR_in\(1),
	combout => \add_instance|rf|Mux18~0_combout\);

-- Location: LCCOMB_X12_Y10_N12
\add_instance|rf|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux18~1_combout\ = (\add_instance|rf|Mux18~0_combout\ & ((\add_instance|rf|RF[3][13]~q\) # ((!\add_instance|id_or_register|rf_a2_OR_in\(0))))) # (!\add_instance|rf|Mux18~0_combout\ & (((\add_instance|rf|RF[1][13]~q\ & 
-- \add_instance|id_or_register|rf_a2_OR_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[3][13]~q\,
	datab => \add_instance|rf|Mux18~0_combout\,
	datac => \add_instance|rf|RF[1][13]~q\,
	datad => \add_instance|id_or_register|rf_a2_OR_in\(0),
	combout => \add_instance|rf|Mux18~1_combout\);

-- Location: FF_X12_Y10_N13
\add_instance|or_ex_register|rf_d2_EX[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|Mux18~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|rf_d2_EX\(13));

-- Location: LCCOMB_X11_Y13_N30
\add_instance|alu_b_mux|sel_out[13]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[13]~40_combout\ = (!\add_instance|forwarding_unit|forward_select_b\(1) & ((\add_instance|or_ex_register|alu_b_select_EX_in\(0) & (\add_instance|or_ex_register|rf_d2_EX\(12))) # 
-- (!\add_instance|or_ex_register|alu_b_select_EX_in\(0) & ((\add_instance|or_ex_register|rf_d2_EX\(13))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|alu_b_select_EX_in\(0),
	datab => \add_instance|or_ex_register|rf_d2_EX\(12),
	datac => \add_instance|or_ex_register|rf_d2_EX\(13),
	datad => \add_instance|forwarding_unit|forward_select_b\(1),
	combout => \add_instance|alu_b_mux|sel_out[13]~40_combout\);

-- Location: LCCOMB_X11_Y13_N6
\add_instance|alu_b_mux|sel_out[13]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[13]~42_combout\ = (\add_instance|alu_b_mux|sel_out[8]~24_combout\) # ((!\add_instance|or_ex_register|alu_b_select_EX_in\(1) & ((\add_instance|alu_b_mux|sel_out[13]~41_combout\) # 
-- (\add_instance|alu_b_mux|sel_out[13]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|alu_b_select_EX_in\(1),
	datab => \add_instance|alu_b_mux|sel_out[13]~41_combout\,
	datac => \add_instance|alu_b_mux|sel_out[13]~40_combout\,
	datad => \add_instance|alu_b_mux|sel_out[8]~24_combout\,
	combout => \add_instance|alu_b_mux|sel_out[13]~42_combout\);

-- Location: LCCOMB_X12_Y14_N24
\add_instance|main_alu|carry~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|carry~14_combout\ = (\add_instance|alu_b_mux|sel_out[12]~39_combout\ & ((\add_instance|alu_a_forwarding_mux|sel_out[12]~24_combout\) # ((\add_instance|ex_mem_register|alu_c_MEM\(12) & 
-- \add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ex_mem_register|alu_c_MEM\(12),
	datab => \add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\,
	datac => \add_instance|alu_a_forwarding_mux|sel_out[12]~24_combout\,
	datad => \add_instance|alu_b_mux|sel_out[12]~39_combout\,
	combout => \add_instance|main_alu|carry~14_combout\);

-- Location: LCCOMB_X13_Y15_N2
\add_instance|main_alu|carry~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|carry~15_combout\ = (\add_instance|main_alu|carry~13_combout\ & ((\add_instance|alu_b_mux|sel_out[12]~39_combout\) # (\add_instance|alu_a_forwarding_mux|sel_out[12]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|alu_b_mux|sel_out[12]~39_combout\,
	datac => \add_instance|alu_a_forwarding_mux|sel_out[12]~25_combout\,
	datad => \add_instance|main_alu|carry~13_combout\,
	combout => \add_instance|main_alu|carry~15_combout\);

-- Location: LCCOMB_X12_Y15_N28
\add_instance|main_alu|sum~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|sum~5_combout\ = \add_instance|alu_a_forwarding_mux|sel_out[13]~27_combout\ $ (\add_instance|alu_b_mux|sel_out[13]~42_combout\ $ (((\add_instance|main_alu|carry~14_combout\) # (\add_instance|main_alu|carry~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_a_forwarding_mux|sel_out[13]~27_combout\,
	datab => \add_instance|main_alu|carry~14_combout\,
	datac => \add_instance|alu_b_mux|sel_out[13]~42_combout\,
	datad => \add_instance|main_alu|carry~15_combout\,
	combout => \add_instance|main_alu|sum~5_combout\);

-- Location: LCCOMB_X12_Y15_N12
\add_instance|main_alu|C[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[13]~13_combout\ = (\add_instance|or_ex_register|alu_select_EX_in\(0) & (((!\add_instance|alu_b_mux|sel_out[13]~42_combout\)) # (!\add_instance|alu_a_forwarding_mux|sel_out[13]~27_combout\))) # 
-- (!\add_instance|or_ex_register|alu_select_EX_in\(0) & (((\add_instance|main_alu|sum~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_a_forwarding_mux|sel_out[13]~27_combout\,
	datab => \add_instance|or_ex_register|alu_select_EX_in\(0),
	datac => \add_instance|alu_b_mux|sel_out[13]~42_combout\,
	datad => \add_instance|main_alu|sum~5_combout\,
	combout => \add_instance|main_alu|C[13]~13_combout\);

-- Location: FF_X12_Y15_N13
\add_instance|ex_mem_register|alu_c_MEM[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|main_alu|C[13]~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|ex_mem_register|alu_c_MEM\(13));

-- Location: LCCOMB_X16_Y12_N2
\add_instance|mem_wb_register|alu_c_WB_in[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|mem_wb_register|alu_c_WB_in[13]~feeder_combout\ = \add_instance|ex_mem_register|alu_c_MEM\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \add_instance|ex_mem_register|alu_c_MEM\(13),
	combout => \add_instance|mem_wb_register|alu_c_WB_in[13]~feeder_combout\);

-- Location: FF_X16_Y12_N3
\add_instance|mem_wb_register|alu_c_WB_in[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|mem_wb_register|alu_c_WB_in[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|mem_wb_register|alu_c_WB_in\(13));

-- Location: LCCOMB_X16_Y12_N20
\add_instance|rf_d3_mux|sel_out[13]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_d3_mux|sel_out[13]~13_combout\ = (\add_instance|mem_wb_register|rf_d3_select_WB_in\(0) & (\add_instance|mem_wb_register|za_out_WB_in\(13))) # (!\add_instance|mem_wb_register|rf_d3_select_WB_in\(0) & 
-- ((\add_instance|mem_wb_register|alu_c_WB_in\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|mem_wb_register|rf_d3_select_WB_in\(0),
	datac => \add_instance|mem_wb_register|za_out_WB_in\(13),
	datad => \add_instance|mem_wb_register|alu_c_WB_in\(13),
	combout => \add_instance|rf_d3_mux|sel_out[13]~13_combout\);

-- Location: LCCOMB_X11_Y13_N22
\add_instance|alu_b_mux|sel_out[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[14]~44_combout\ = (\add_instance|forwarding_unit|forward_select_b\(1) & ((\add_instance|or_ex_register|alu_b_select_EX_in\(0) & ((\add_instance|rf_d3_mux|sel_out[13]~13_combout\))) # 
-- (!\add_instance|or_ex_register|alu_b_select_EX_in\(0) & (\add_instance|rf_d3_mux|sel_out[14]~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf_d3_mux|sel_out[14]~14_combout\,
	datab => \add_instance|forwarding_unit|forward_select_b\(1),
	datac => \add_instance|or_ex_register|alu_b_select_EX_in\(0),
	datad => \add_instance|rf_d3_mux|sel_out[13]~13_combout\,
	combout => \add_instance|alu_b_mux|sel_out[14]~44_combout\);

-- Location: LCCOMB_X11_Y13_N28
\add_instance|alu_b_mux|sel_out[14]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[14]~43_combout\ = (!\add_instance|forwarding_unit|forward_select_b\(1) & ((\add_instance|or_ex_register|alu_b_select_EX_in\(0) & (\add_instance|or_ex_register|rf_d2_EX\(13))) # 
-- (!\add_instance|or_ex_register|alu_b_select_EX_in\(0) & ((\add_instance|or_ex_register|rf_d2_EX\(14))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|alu_b_select_EX_in\(0),
	datab => \add_instance|forwarding_unit|forward_select_b\(1),
	datac => \add_instance|or_ex_register|rf_d2_EX\(13),
	datad => \add_instance|or_ex_register|rf_d2_EX\(14),
	combout => \add_instance|alu_b_mux|sel_out[14]~43_combout\);

-- Location: LCCOMB_X11_Y13_N12
\add_instance|alu_b_mux|sel_out[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[14]~45_combout\ = (\add_instance|alu_b_mux|sel_out[8]~24_combout\) # ((!\add_instance|or_ex_register|alu_b_select_EX_in\(1) & ((\add_instance|alu_b_mux|sel_out[14]~44_combout\) # 
-- (\add_instance|alu_b_mux|sel_out[14]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|alu_b_select_EX_in\(1),
	datab => \add_instance|alu_b_mux|sel_out[8]~24_combout\,
	datac => \add_instance|alu_b_mux|sel_out[14]~44_combout\,
	datad => \add_instance|alu_b_mux|sel_out[14]~43_combout\,
	combout => \add_instance|alu_b_mux|sel_out[14]~45_combout\);

-- Location: FF_X10_Y12_N31
\add_instance|rf|RF[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[14]~14_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[6][14]~q\);

-- Location: FF_X10_Y12_N1
\add_instance|rf|RF[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf_d3_mux|sel_out[14]~14_combout\,
	ena => \add_instance|rf|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[4][14]~q\);

-- Location: LCCOMB_X10_Y12_N30
\add_instance|rf|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux1~0_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(1) & ((\add_instance|id_or_register|rf_a1_OR_in\(0)) # ((\add_instance|rf|RF[6][14]~q\)))) # (!\add_instance|id_or_register|rf_a1_OR_in\(1) & 
-- (!\add_instance|id_or_register|rf_a1_OR_in\(0) & ((\add_instance|rf|RF[4][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(1),
	datab => \add_instance|id_or_register|rf_a1_OR_in\(0),
	datac => \add_instance|rf|RF[6][14]~q\,
	datad => \add_instance|rf|RF[4][14]~q\,
	combout => \add_instance|rf|Mux1~0_combout\);

-- Location: FF_X11_Y12_N9
\add_instance|rf|RF[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[14]~14_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[5][14]~q\);

-- Location: LCCOMB_X11_Y11_N12
\add_instance|incrementer|sum~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|incrementer|sum~13_combout\ = \add_instance|rf|RF[7][14]~q\ $ (((\add_instance|rf|RF[7][13]~q\ & \add_instance|incrementer|carry~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][13]~q\,
	datac => \add_instance|rf|RF[7][14]~q\,
	datad => \add_instance|incrementer|carry~3_combout\,
	combout => \add_instance|incrementer|sum~13_combout\);

-- Location: FF_X11_Y11_N13
\add_instance|rf|RF[7][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|incrementer|sum~13_combout\,
	clrn => \ALT_INV_input_vector[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[7][14]~q\);

-- Location: LCCOMB_X11_Y12_N8
\add_instance|rf|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux1~1_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(0) & ((\add_instance|rf|Mux1~0_combout\ & ((\add_instance|rf|RF[7][14]~q\))) # (!\add_instance|rf|Mux1~0_combout\ & (\add_instance|rf|RF[5][14]~q\)))) # 
-- (!\add_instance|id_or_register|rf_a1_OR_in\(0) & (\add_instance|rf|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(0),
	datab => \add_instance|rf|Mux1~0_combout\,
	datac => \add_instance|rf|RF[5][14]~q\,
	datad => \add_instance|rf|RF[7][14]~q\,
	combout => \add_instance|rf|Mux1~1_combout\);

-- Location: FF_X12_Y11_N5
\add_instance|rf|RF[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[14]~14_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[1][14]~q\);

-- Location: FF_X12_Y11_N11
\add_instance|rf|RF[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[14]~14_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[0][14]~q\);

-- Location: LCCOMB_X12_Y11_N10
\add_instance|rf|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux1~2_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(1) & (((\add_instance|id_or_register|rf_a1_OR_in\(0))))) # (!\add_instance|id_or_register|rf_a1_OR_in\(1) & ((\add_instance|id_or_register|rf_a1_OR_in\(0) & 
-- (\add_instance|rf|RF[1][14]~q\)) # (!\add_instance|id_or_register|rf_a1_OR_in\(0) & ((\add_instance|rf|RF[0][14]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(1),
	datab => \add_instance|rf|RF[1][14]~q\,
	datac => \add_instance|rf|RF[0][14]~q\,
	datad => \add_instance|id_or_register|rf_a1_OR_in\(0),
	combout => \add_instance|rf|Mux1~2_combout\);

-- Location: FF_X12_Y13_N25
\add_instance|rf|RF[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[14]~14_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[3][14]~q\);

-- Location: LCCOMB_X12_Y13_N24
\add_instance|rf|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux1~3_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(1) & ((\add_instance|rf|Mux1~2_combout\ & (\add_instance|rf|RF[3][14]~q\)) # (!\add_instance|rf|Mux1~2_combout\ & ((\add_instance|rf|RF[2][14]~q\))))) # 
-- (!\add_instance|id_or_register|rf_a1_OR_in\(1) & (\add_instance|rf|Mux1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(1),
	datab => \add_instance|rf|Mux1~2_combout\,
	datac => \add_instance|rf|RF[3][14]~q\,
	datad => \add_instance|rf|RF[2][14]~q\,
	combout => \add_instance|rf|Mux1~3_combout\);

-- Location: LCCOMB_X11_Y12_N14
\add_instance|rf|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux1~4_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(2) & (\add_instance|rf|Mux1~1_combout\)) # (!\add_instance|id_or_register|rf_a1_OR_in\(2) & ((\add_instance|rf|Mux1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(2),
	datac => \add_instance|rf|Mux1~1_combout\,
	datad => \add_instance|rf|Mux1~3_combout\,
	combout => \add_instance|rf|Mux1~4_combout\);

-- Location: FF_X11_Y12_N15
\add_instance|or_ex_register|rf_d1_EX_in[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|Mux1~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|rf_d1_EX_in\(14));

-- Location: LCCOMB_X11_Y15_N20
\add_instance|alu_a_forwarding_mux|sel_out[14]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_a_forwarding_mux|sel_out[14]~28_combout\ = (!\add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\ & ((\add_instance|forwarding_unit|forward_selection_process~8_combout\ & ((\add_instance|rf_d3_mux|sel_out[14]~14_combout\))) # 
-- (!\add_instance|forwarding_unit|forward_selection_process~8_combout\ & (\add_instance|or_ex_register|rf_d1_EX_in\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\,
	datab => \add_instance|or_ex_register|rf_d1_EX_in\(14),
	datac => \add_instance|rf_d3_mux|sel_out[14]~14_combout\,
	datad => \add_instance|forwarding_unit|forward_selection_process~8_combout\,
	combout => \add_instance|alu_a_forwarding_mux|sel_out[14]~28_combout\);

-- Location: LCCOMB_X11_Y15_N22
\add_instance|alu_a_forwarding_mux|sel_out[14]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_a_forwarding_mux|sel_out[14]~29_combout\ = (\add_instance|alu_a_forwarding_mux|sel_out[14]~28_combout\) # ((\add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\ & \add_instance|ex_mem_register|alu_c_MEM\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_a_forwarding_mux|sel_out[14]~28_combout\,
	datab => \add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\,
	datad => \add_instance|ex_mem_register|alu_c_MEM\(14),
	combout => \add_instance|alu_a_forwarding_mux|sel_out[14]~29_combout\);

-- Location: LCCOMB_X13_Y15_N16
\add_instance|main_alu|carry~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|carry~16_combout\ = (\add_instance|alu_b_mux|sel_out[13]~42_combout\ & ((\add_instance|main_alu|carry~14_combout\) # ((\add_instance|alu_a_forwarding_mux|sel_out[13]~27_combout\) # (\add_instance|main_alu|carry~15_combout\)))) # 
-- (!\add_instance|alu_b_mux|sel_out[13]~42_combout\ & (\add_instance|alu_a_forwarding_mux|sel_out[13]~27_combout\ & ((\add_instance|main_alu|carry~14_combout\) # (\add_instance|main_alu|carry~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[13]~42_combout\,
	datab => \add_instance|main_alu|carry~14_combout\,
	datac => \add_instance|alu_a_forwarding_mux|sel_out[13]~27_combout\,
	datad => \add_instance|main_alu|carry~15_combout\,
	combout => \add_instance|main_alu|carry~16_combout\);

-- Location: LCCOMB_X12_Y15_N30
\add_instance|main_alu|C[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[14]~14_combout\ = (\add_instance|or_ex_register|alu_select_EX_in\(0) & (((!\add_instance|alu_a_forwarding_mux|sel_out[14]~29_combout\)) # (!\add_instance|alu_b_mux|sel_out[14]~45_combout\))) # 
-- (!\add_instance|or_ex_register|alu_select_EX_in\(0) & (\add_instance|alu_b_mux|sel_out[14]~45_combout\ $ (\add_instance|alu_a_forwarding_mux|sel_out[14]~29_combout\ $ (\add_instance|main_alu|carry~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[14]~45_combout\,
	datab => \add_instance|alu_a_forwarding_mux|sel_out[14]~29_combout\,
	datac => \add_instance|or_ex_register|alu_select_EX_in\(0),
	datad => \add_instance|main_alu|carry~16_combout\,
	combout => \add_instance|main_alu|C[14]~14_combout\);

-- Location: FF_X12_Y15_N31
\add_instance|ex_mem_register|alu_c_MEM[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|main_alu|C[14]~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|ex_mem_register|alu_c_MEM\(14));

-- Location: LCCOMB_X11_Y15_N28
\add_instance|mem_wb_register|alu_c_WB_in[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|mem_wb_register|alu_c_WB_in[14]~feeder_combout\ = \add_instance|ex_mem_register|alu_c_MEM\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \add_instance|ex_mem_register|alu_c_MEM\(14),
	combout => \add_instance|mem_wb_register|alu_c_WB_in[14]~feeder_combout\);

-- Location: FF_X11_Y15_N29
\add_instance|mem_wb_register|alu_c_WB_in[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|mem_wb_register|alu_c_WB_in[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|mem_wb_register|alu_c_WB_in\(14));

-- Location: LCCOMB_X10_Y12_N0
\add_instance|rf_d3_mux|sel_out[14]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_d3_mux|sel_out[14]~14_combout\ = (\add_instance|mem_wb_register|rf_d3_select_WB_in\(0) & (\add_instance|mem_wb_register|za_out_WB_in\(14))) # (!\add_instance|mem_wb_register|rf_d3_select_WB_in\(0) & 
-- ((\add_instance|mem_wb_register|alu_c_WB_in\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|mem_wb_register|rf_d3_select_WB_in\(0),
	datac => \add_instance|mem_wb_register|za_out_WB_in\(14),
	datad => \add_instance|mem_wb_register|alu_c_WB_in\(14),
	combout => \add_instance|rf_d3_mux|sel_out[14]~14_combout\);

-- Location: LCCOMB_X13_Y11_N24
\add_instance|rf|RF[2][14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|RF[2][14]~feeder_combout\ = \add_instance|rf_d3_mux|sel_out[14]~14_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \add_instance|rf_d3_mux|sel_out[14]~14_combout\,
	combout => \add_instance|rf|RF[2][14]~feeder_combout\);

-- Location: FF_X13_Y11_N25
\add_instance|rf|RF[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|RF[2][14]~feeder_combout\,
	ena => \add_instance|rf|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[2][14]~q\);

-- Location: LCCOMB_X12_Y11_N4
\add_instance|rf|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux17~0_combout\ = (\add_instance|id_or_register|rf_a2_OR_in\(0) & (((\add_instance|rf|RF[1][14]~q\) # (\add_instance|id_or_register|rf_a2_OR_in\(1))))) # (!\add_instance|id_or_register|rf_a2_OR_in\(0) & (\add_instance|rf|RF[0][14]~q\ & 
-- ((!\add_instance|id_or_register|rf_a2_OR_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[0][14]~q\,
	datab => \add_instance|id_or_register|rf_a2_OR_in\(0),
	datac => \add_instance|rf|RF[1][14]~q\,
	datad => \add_instance|id_or_register|rf_a2_OR_in\(1),
	combout => \add_instance|rf|Mux17~0_combout\);

-- Location: LCCOMB_X12_Y13_N26
\add_instance|rf|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux17~1_combout\ = (\add_instance|rf|Mux17~0_combout\ & (((\add_instance|rf|RF[3][14]~q\) # (!\add_instance|id_or_register|rf_a2_OR_in\(1))))) # (!\add_instance|rf|Mux17~0_combout\ & (\add_instance|rf|RF[2][14]~q\ & 
-- ((\add_instance|id_or_register|rf_a2_OR_in\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[2][14]~q\,
	datab => \add_instance|rf|RF[3][14]~q\,
	datac => \add_instance|rf|Mux17~0_combout\,
	datad => \add_instance|id_or_register|rf_a2_OR_in\(1),
	combout => \add_instance|rf|Mux17~1_combout\);

-- Location: FF_X12_Y13_N27
\add_instance|or_ex_register|rf_d2_EX[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|Mux17~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|rf_d2_EX\(14));

-- Location: LCCOMB_X11_Y13_N10
\add_instance|alu_b_mux|sel_out[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[15]~46_combout\ = (!\add_instance|forwarding_unit|forward_select_b\(1) & ((\add_instance|or_ex_register|alu_b_select_EX_in\(0) & ((\add_instance|or_ex_register|rf_d2_EX\(14)))) # 
-- (!\add_instance|or_ex_register|alu_b_select_EX_in\(0) & (\add_instance|or_ex_register|rf_d2_EX\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|rf_d2_EX\(15),
	datab => \add_instance|forwarding_unit|forward_select_b\(1),
	datac => \add_instance|or_ex_register|alu_b_select_EX_in\(0),
	datad => \add_instance|or_ex_register|rf_d2_EX\(14),
	combout => \add_instance|alu_b_mux|sel_out[15]~46_combout\);

-- Location: LCCOMB_X11_Y15_N8
\add_instance|alu_b_mux|sel_out[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[15]~47_combout\ = (\add_instance|forwarding_unit|forward_select_b\(1) & ((\add_instance|or_ex_register|alu_b_select_EX_in\(0) & (\add_instance|rf_d3_mux|sel_out[14]~14_combout\)) # 
-- (!\add_instance|or_ex_register|alu_b_select_EX_in\(0) & ((\add_instance|rf_d3_mux|sel_out[15]~15_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|forwarding_unit|forward_select_b\(1),
	datab => \add_instance|or_ex_register|alu_b_select_EX_in\(0),
	datac => \add_instance|rf_d3_mux|sel_out[14]~14_combout\,
	datad => \add_instance|rf_d3_mux|sel_out[15]~15_combout\,
	combout => \add_instance|alu_b_mux|sel_out[15]~47_combout\);

-- Location: LCCOMB_X11_Y15_N26
\add_instance|alu_b_mux|sel_out[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_b_mux|sel_out[15]~48_combout\ = (\add_instance|alu_b_mux|sel_out[8]~24_combout\) # ((!\add_instance|or_ex_register|alu_b_select_EX_in\(1) & ((\add_instance|alu_b_mux|sel_out[15]~46_combout\) # 
-- (\add_instance|alu_b_mux|sel_out[15]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[15]~46_combout\,
	datab => \add_instance|alu_b_mux|sel_out[15]~47_combout\,
	datac => \add_instance|alu_b_mux|sel_out[8]~24_combout\,
	datad => \add_instance|or_ex_register|alu_b_select_EX_in\(1),
	combout => \add_instance|alu_b_mux|sel_out[15]~48_combout\);

-- Location: LCCOMB_X12_Y15_N18
\add_instance|main_alu|sum~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|sum~6_combout\ = \add_instance|alu_b_mux|sel_out[15]~48_combout\ $ (((\add_instance|alu_b_mux|sel_out[14]~45_combout\ & ((\add_instance|alu_a_forwarding_mux|sel_out[14]~29_combout\) # (\add_instance|main_alu|carry~16_combout\))) # 
-- (!\add_instance|alu_b_mux|sel_out[14]~45_combout\ & (\add_instance|alu_a_forwarding_mux|sel_out[14]~29_combout\ & \add_instance|main_alu|carry~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[14]~45_combout\,
	datab => \add_instance|alu_a_forwarding_mux|sel_out[14]~29_combout\,
	datac => \add_instance|alu_b_mux|sel_out[15]~48_combout\,
	datad => \add_instance|main_alu|carry~16_combout\,
	combout => \add_instance|main_alu|sum~6_combout\);

-- Location: LCCOMB_X12_Y15_N4
\add_instance|main_alu|C[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[15]~15_combout\ = (\add_instance|or_ex_register|alu_select_EX_in\(0) & (((!\add_instance|alu_a_forwarding_mux|sel_out[15]~31_combout\)) # (!\add_instance|alu_b_mux|sel_out[15]~48_combout\))) # 
-- (!\add_instance|or_ex_register|alu_select_EX_in\(0) & ((\add_instance|alu_a_forwarding_mux|sel_out[15]~31_combout\ $ (\add_instance|main_alu|sum~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[15]~48_combout\,
	datab => \add_instance|alu_a_forwarding_mux|sel_out[15]~31_combout\,
	datac => \add_instance|or_ex_register|alu_select_EX_in\(0),
	datad => \add_instance|main_alu|sum~6_combout\,
	combout => \add_instance|main_alu|C[15]~15_combout\);

-- Location: FF_X12_Y15_N5
\add_instance|ex_mem_register|alu_c_MEM[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|main_alu|C[15]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|ex_mem_register|alu_c_MEM\(15));

-- Location: FF_X11_Y15_N19
\add_instance|mem_wb_register|alu_c_WB_in[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|ex_mem_register|alu_c_MEM\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|mem_wb_register|alu_c_WB_in\(15));

-- Location: LCCOMB_X11_Y15_N18
\add_instance|rf_d3_mux|sel_out[15]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_d3_mux|sel_out[15]~15_combout\ = (\add_instance|mem_wb_register|alu_c_WB_in\(15) & !\add_instance|mem_wb_register|rf_d3_select_WB_in\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|mem_wb_register|alu_c_WB_in\(15),
	datad => \add_instance|mem_wb_register|rf_d3_select_WB_in\(0),
	combout => \add_instance|rf_d3_mux|sel_out[15]~15_combout\);

-- Location: FF_X13_Y11_N15
\add_instance|rf|RF[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[15]~15_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[2][15]~q\);

-- Location: LCCOMB_X12_Y10_N2
\add_instance|rf|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux0~2_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(1) & (((\add_instance|id_or_register|rf_a1_OR_in\(0))))) # (!\add_instance|id_or_register|rf_a1_OR_in\(1) & ((\add_instance|id_or_register|rf_a1_OR_in\(0) & 
-- (\add_instance|rf|RF[1][15]~q\)) # (!\add_instance|id_or_register|rf_a1_OR_in\(0) & ((\add_instance|rf|RF[0][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(1),
	datab => \add_instance|rf|RF[1][15]~q\,
	datac => \add_instance|rf|RF[0][15]~q\,
	datad => \add_instance|id_or_register|rf_a1_OR_in\(0),
	combout => \add_instance|rf|Mux0~2_combout\);

-- Location: LCCOMB_X12_Y10_N0
\add_instance|rf|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux0~3_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(1) & ((\add_instance|rf|Mux0~2_combout\ & ((\add_instance|rf|RF[3][15]~q\))) # (!\add_instance|rf|Mux0~2_combout\ & (\add_instance|rf|RF[2][15]~q\)))) # 
-- (!\add_instance|id_or_register|rf_a1_OR_in\(1) & (((\add_instance|rf|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(1),
	datab => \add_instance|rf|RF[2][15]~q\,
	datac => \add_instance|rf|RF[3][15]~q\,
	datad => \add_instance|rf|Mux0~2_combout\,
	combout => \add_instance|rf|Mux0~3_combout\);

-- Location: LCCOMB_X10_Y12_N10
\add_instance|rf|RF[4][15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|RF[4][15]~feeder_combout\ = \add_instance|rf_d3_mux|sel_out[15]~15_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|rf_d3_mux|sel_out[15]~15_combout\,
	combout => \add_instance|rf|RF[4][15]~feeder_combout\);

-- Location: FF_X10_Y12_N11
\add_instance|rf|RF[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|RF[4][15]~feeder_combout\,
	ena => \add_instance|rf|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[4][15]~q\);

-- Location: FF_X10_Y12_N13
\add_instance|rf|RF[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[15]~15_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[6][15]~q\);

-- Location: LCCOMB_X10_Y12_N12
\add_instance|rf|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux0~0_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(0) & (((\add_instance|id_or_register|rf_a1_OR_in\(1))))) # (!\add_instance|id_or_register|rf_a1_OR_in\(0) & ((\add_instance|id_or_register|rf_a1_OR_in\(1) & 
-- ((\add_instance|rf|RF[6][15]~q\))) # (!\add_instance|id_or_register|rf_a1_OR_in\(1) & (\add_instance|rf|RF[4][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[4][15]~q\,
	datab => \add_instance|id_or_register|rf_a1_OR_in\(0),
	datac => \add_instance|rf|RF[6][15]~q\,
	datad => \add_instance|id_or_register|rf_a1_OR_in\(1),
	combout => \add_instance|rf|Mux0~0_combout\);

-- Location: LCCOMB_X11_Y11_N28
\add_instance|incrementer|sum~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|incrementer|sum~14_combout\ = \add_instance|rf|RF[7][15]~q\ $ (((\add_instance|rf|RF[7][13]~q\ & (\add_instance|rf|RF[7][14]~q\ & \add_instance|incrementer|carry~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][13]~q\,
	datab => \add_instance|rf|RF[7][14]~q\,
	datac => \add_instance|rf|RF[7][15]~q\,
	datad => \add_instance|incrementer|carry~3_combout\,
	combout => \add_instance|incrementer|sum~14_combout\);

-- Location: FF_X11_Y11_N29
\add_instance|rf|RF[7][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|incrementer|sum~14_combout\,
	clrn => \ALT_INV_input_vector[0]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[7][15]~q\);

-- Location: FF_X11_Y11_N11
\add_instance|rf|RF[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[15]~15_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[5][15]~q\);

-- Location: LCCOMB_X11_Y11_N10
\add_instance|rf|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux0~1_combout\ = (\add_instance|rf|Mux0~0_combout\ & ((\add_instance|rf|RF[7][15]~q\) # ((!\add_instance|id_or_register|rf_a1_OR_in\(0))))) # (!\add_instance|rf|Mux0~0_combout\ & (((\add_instance|rf|RF[5][15]~q\ & 
-- \add_instance|id_or_register|rf_a1_OR_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux0~0_combout\,
	datab => \add_instance|rf|RF[7][15]~q\,
	datac => \add_instance|rf|RF[5][15]~q\,
	datad => \add_instance|id_or_register|rf_a1_OR_in\(0),
	combout => \add_instance|rf|Mux0~1_combout\);

-- Location: LCCOMB_X11_Y11_N16
\add_instance|rf|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux0~4_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(2) & ((\add_instance|rf|Mux0~1_combout\))) # (!\add_instance|id_or_register|rf_a1_OR_in\(2) & (\add_instance|rf|Mux0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(2),
	datab => \add_instance|rf|Mux0~3_combout\,
	datad => \add_instance|rf|Mux0~1_combout\,
	combout => \add_instance|rf|Mux0~4_combout\);

-- Location: FF_X11_Y11_N17
\add_instance|or_ex_register|rf_d1_EX_in[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|Mux0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|rf_d1_EX_in\(15));

-- Location: LCCOMB_X11_Y15_N16
\add_instance|alu_a_forwarding_mux|sel_out[15]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_a_forwarding_mux|sel_out[15]~30_combout\ = (!\add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\ & ((\add_instance|forwarding_unit|forward_selection_process~8_combout\ & ((\add_instance|rf_d3_mux|sel_out[15]~15_combout\))) # 
-- (!\add_instance|forwarding_unit|forward_selection_process~8_combout\ & (\add_instance|or_ex_register|rf_d1_EX_in\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|forwarding_unit|forward_selection_process~8_combout\,
	datab => \add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\,
	datac => \add_instance|or_ex_register|rf_d1_EX_in\(15),
	datad => \add_instance|rf_d3_mux|sel_out[15]~15_combout\,
	combout => \add_instance|alu_a_forwarding_mux|sel_out[15]~30_combout\);

-- Location: LCCOMB_X11_Y15_N10
\add_instance|alu_a_forwarding_mux|sel_out[15]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_a_forwarding_mux|sel_out[15]~31_combout\ = (\add_instance|alu_a_forwarding_mux|sel_out[15]~30_combout\) # ((\add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\ & \add_instance|ex_mem_register|alu_c_MEM\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\,
	datac => \add_instance|alu_a_forwarding_mux|sel_out[15]~30_combout\,
	datad => \add_instance|ex_mem_register|alu_c_MEM\(15),
	combout => \add_instance|alu_a_forwarding_mux|sel_out[15]~31_combout\);

-- Location: LCCOMB_X11_Y15_N6
\add_instance|main_alu|carry~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|carry~17_combout\ = (\add_instance|alu_b_mux|sel_out[14]~45_combout\ & ((\add_instance|alu_a_forwarding_mux|sel_out[14]~28_combout\) # ((\add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\ & 
-- \add_instance|ex_mem_register|alu_c_MEM\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_a_forwarding_mux|sel_out[14]~28_combout\,
	datab => \add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\,
	datac => \add_instance|alu_b_mux|sel_out[14]~45_combout\,
	datad => \add_instance|ex_mem_register|alu_c_MEM\(14),
	combout => \add_instance|main_alu|carry~17_combout\);

-- Location: LCCOMB_X11_Y15_N30
\add_instance|main_alu|carry~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|carry~18_combout\ = (\add_instance|main_alu|carry~16_combout\ & ((\add_instance|alu_a_forwarding_mux|sel_out[14]~29_combout\) # (\add_instance|alu_b_mux|sel_out[14]~45_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|alu_a_forwarding_mux|sel_out[14]~29_combout\,
	datac => \add_instance|alu_b_mux|sel_out[14]~45_combout\,
	datad => \add_instance|main_alu|carry~16_combout\,
	combout => \add_instance|main_alu|carry~18_combout\);

-- Location: LCCOMB_X11_Y15_N0
\add_instance|main_alu|carry~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|carry~19_combout\ = (\add_instance|alu_a_forwarding_mux|sel_out[15]~31_combout\ & ((\add_instance|main_alu|carry~17_combout\) # ((\add_instance|main_alu|carry~18_combout\) # (\add_instance|alu_b_mux|sel_out[15]~48_combout\)))) # 
-- (!\add_instance|alu_a_forwarding_mux|sel_out[15]~31_combout\ & (\add_instance|alu_b_mux|sel_out[15]~48_combout\ & ((\add_instance|main_alu|carry~17_combout\) # (\add_instance|main_alu|carry~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_a_forwarding_mux|sel_out[15]~31_combout\,
	datab => \add_instance|main_alu|carry~17_combout\,
	datac => \add_instance|main_alu|carry~18_combout\,
	datad => \add_instance|alu_b_mux|sel_out[15]~48_combout\,
	combout => \add_instance|main_alu|carry~19_combout\);

-- Location: LCCOMB_X11_Y15_N12
\add_instance|cc|output[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|cc|output[0]~19_combout\ = (\add_instance|Mux22~1_combout\ & (!\add_instance|or_ex_register|alu_select_EX_in\(0) & ((\add_instance|main_alu|carry~19_combout\)))) # (!\add_instance|Mux22~1_combout\ & (((\add_instance|cc|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|alu_select_EX_in\(0),
	datab => \add_instance|Mux22~1_combout\,
	datac => \add_instance|cc|output\(0),
	datad => \add_instance|main_alu|carry~19_combout\,
	combout => \add_instance|cc|output[0]~19_combout\);

-- Location: FF_X11_Y15_N13
\add_instance|cc|output[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|cc|output[0]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|cc|output\(0));

-- Location: LCCOMB_X14_Y11_N28
\add_instance|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux22~0_combout\ = (\add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a1\ & ((\add_instance|cc|output\(1)) # ((\add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a0~portadataout\)))) # 
-- (!\add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a1\ & (((\add_instance|cc|output\(0)) # (!\add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a0~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|cc|output\(1),
	datab => \add_instance|cc|output\(0),
	datac => \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a1\,
	datad => \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \add_instance|Mux22~0_combout\);

-- Location: LCCOMB_X14_Y11_N4
\add_instance|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux19~1_combout\ = (\add_instance|if_id_register|instruction_ID_in\(12) & (!\add_instance|if_id_register|instruction_ID_in\(13) & ((\add_instance|Mux22~0_combout\)))) # (!\add_instance|if_id_register|instruction_ID_in\(12) & 
-- (((\add_instance|Mux6~0_combout\)) # (!\add_instance|if_id_register|instruction_ID_in\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|if_id_register|instruction_ID_in\(12),
	datab => \add_instance|if_id_register|instruction_ID_in\(13),
	datac => \add_instance|Mux6~0_combout\,
	datad => \add_instance|Mux22~0_combout\,
	combout => \add_instance|Mux19~1_combout\);

-- Location: LCCOMB_X12_Y15_N8
\add_instance|cc|output[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|cc|output[1]~3_combout\ = (\add_instance|alu_b_mux|sel_out[5]~19_combout\ & (\add_instance|alu_a_forwarding_mux|sel_out[9]~19_combout\ & (\add_instance|alu_a_forwarding_mux|sel_out[5]~11_combout\ & 
-- \add_instance|alu_b_mux|sel_out[9]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_b_mux|sel_out[5]~19_combout\,
	datab => \add_instance|alu_a_forwarding_mux|sel_out[9]~19_combout\,
	datac => \add_instance|alu_a_forwarding_mux|sel_out[5]~11_combout\,
	datad => \add_instance|alu_b_mux|sel_out[9]~30_combout\,
	combout => \add_instance|cc|output[1]~3_combout\);

-- Location: LCCOMB_X12_Y15_N0
\add_instance|cc|output[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|cc|output[1]~5_combout\ = (\add_instance|alu_a_forwarding_mux|sel_out[15]~31_combout\ & (\add_instance|main_alu|result~4_combout\ & (\add_instance|alu_b_mux|sel_out[15]~48_combout\ & \add_instance|main_alu|result~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_a_forwarding_mux|sel_out[15]~31_combout\,
	datab => \add_instance|main_alu|result~4_combout\,
	datac => \add_instance|alu_b_mux|sel_out[15]~48_combout\,
	datad => \add_instance|main_alu|result~2_combout\,
	combout => \add_instance|cc|output[1]~5_combout\);

-- Location: LCCOMB_X11_Y15_N24
\add_instance|cc|output[1]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|cc|output[1]~6_combout\ = (\add_instance|or_ex_register|alu_select_EX_in\(0) & (\add_instance|alu_a_forwarding_mux|sel_out[7]~15_combout\ & (\add_instance|cc|output[1]~5_combout\ & \add_instance|alu_b_mux|sel_out[7]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|alu_select_EX_in\(0),
	datab => \add_instance|alu_a_forwarding_mux|sel_out[7]~15_combout\,
	datac => \add_instance|cc|output[1]~5_combout\,
	datad => \add_instance|alu_b_mux|sel_out[7]~23_combout\,
	combout => \add_instance|cc|output[1]~6_combout\);

-- Location: LCCOMB_X12_Y15_N22
\add_instance|cc|output[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|cc|output[1]~4_combout\ = (\add_instance|alu_a_forwarding_mux|sel_out[13]~27_combout\ & (\add_instance|alu_a_forwarding_mux|sel_out[11]~23_combout\ & (\add_instance|alu_b_mux|sel_out[13]~42_combout\ & 
-- \add_instance|alu_b_mux|sel_out[11]~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_a_forwarding_mux|sel_out[13]~27_combout\,
	datab => \add_instance|alu_a_forwarding_mux|sel_out[11]~23_combout\,
	datac => \add_instance|alu_b_mux|sel_out[13]~42_combout\,
	datad => \add_instance|alu_b_mux|sel_out[11]~36_combout\,
	combout => \add_instance|cc|output[1]~4_combout\);

-- Location: LCCOMB_X14_Y13_N22
\add_instance|cc|output[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|cc|output[1]~1_combout\ = (\add_instance|alu_a_forwarding_mux|sel_out[3]~7_combout\ & (\add_instance|alu_a_forwarding_mux|sel_out[1]~3_combout\ & (\add_instance|alu_b_mux|sel_out[1]~8_combout\ & 
-- \add_instance|alu_b_mux|sel_out[3]~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_a_forwarding_mux|sel_out[3]~7_combout\,
	datab => \add_instance|alu_a_forwarding_mux|sel_out[1]~3_combout\,
	datac => \add_instance|alu_b_mux|sel_out[1]~8_combout\,
	datad => \add_instance|alu_b_mux|sel_out[3]~14_combout\,
	combout => \add_instance|cc|output[1]~1_combout\);

-- Location: LCCOMB_X14_Y13_N14
\add_instance|cc|output[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|cc|output[1]~0_combout\ = (\add_instance|main_alu|carry~8_combout\ & (\add_instance|main_alu|result~5_combout\ & (\add_instance|main_alu|result~3_combout\ & \add_instance|main_alu|carry~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|main_alu|carry~8_combout\,
	datab => \add_instance|main_alu|result~5_combout\,
	datac => \add_instance|main_alu|result~3_combout\,
	datad => \add_instance|main_alu|carry~11_combout\,
	combout => \add_instance|cc|output[1]~0_combout\);

-- Location: LCCOMB_X14_Y13_N28
\add_instance|cc|output[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|cc|output[1]~2_combout\ = (\add_instance|cc|output[1]~1_combout\ & (\add_instance|main_alu|carry~17_combout\ & (\add_instance|cc|output[1]~0_combout\ & \add_instance|main_alu|carry~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|cc|output[1]~1_combout\,
	datab => \add_instance|main_alu|carry~17_combout\,
	datac => \add_instance|cc|output[1]~0_combout\,
	datad => \add_instance|main_alu|carry~14_combout\,
	combout => \add_instance|cc|output[1]~2_combout\);

-- Location: LCCOMB_X12_Y15_N10
\add_instance|cc|output[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|cc|output[1]~7_combout\ = (\add_instance|cc|output[1]~3_combout\ & (\add_instance|cc|output[1]~6_combout\ & (\add_instance|cc|output[1]~4_combout\ & \add_instance|cc|output[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|cc|output[1]~3_combout\,
	datab => \add_instance|cc|output[1]~6_combout\,
	datac => \add_instance|cc|output[1]~4_combout\,
	datad => \add_instance|cc|output[1]~2_combout\,
	combout => \add_instance|cc|output[1]~7_combout\);

-- Location: LCCOMB_X16_Y15_N16
\add_instance|cc|output[1]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|cc|output[1]~8_combout\ = (\add_instance|alu_a_forwarding_mux|sel_out[0]~1_combout\ & (\add_instance|alu_b_mux|sel_out[0]~3_combout\ & (\add_instance|alu_a_forwarding_mux|sel_out[1]~3_combout\ $ 
-- (\add_instance|alu_b_mux|sel_out[1]~8_combout\)))) # (!\add_instance|alu_a_forwarding_mux|sel_out[0]~1_combout\ & (!\add_instance|alu_b_mux|sel_out[0]~3_combout\ & (\add_instance|alu_a_forwarding_mux|sel_out[1]~3_combout\ $ 
-- (!\add_instance|alu_b_mux|sel_out[1]~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_a_forwarding_mux|sel_out[1]~3_combout\,
	datab => \add_instance|alu_a_forwarding_mux|sel_out[0]~1_combout\,
	datac => \add_instance|alu_b_mux|sel_out[1]~8_combout\,
	datad => \add_instance|alu_b_mux|sel_out[0]~3_combout\,
	combout => \add_instance|cc|output[1]~8_combout\);

-- Location: LCCOMB_X16_Y15_N10
\add_instance|cc|output[1]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|cc|output[1]~9_combout\ = (!\add_instance|or_ex_register|alu_select_EX_in\(0) & (\add_instance|alu_b_mux|sel_out[6]~21_combout\ $ (\add_instance|alu_a_forwarding_mux|sel_out[6]~13_combout\ $ (!\add_instance|main_alu|carry~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|or_ex_register|alu_select_EX_in\(0),
	datab => \add_instance|alu_b_mux|sel_out[6]~21_combout\,
	datac => \add_instance|alu_a_forwarding_mux|sel_out[6]~13_combout\,
	datad => \add_instance|main_alu|carry~5_combout\,
	combout => \add_instance|cc|output[1]~9_combout\);

-- Location: LCCOMB_X16_Y15_N12
\add_instance|cc|output[1]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|cc|output[1]~10_combout\ = (\add_instance|cc|output[1]~8_combout\ & \add_instance|cc|output[1]~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|cc|output[1]~8_combout\,
	datad => \add_instance|cc|output[1]~9_combout\,
	combout => \add_instance|cc|output[1]~10_combout\);

-- Location: LCCOMB_X13_Y15_N24
\add_instance|cc|output[1]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|cc|output[1]~11_combout\ = (!\add_instance|main_alu|sum~3_combout\ & (!\add_instance|main_alu|sum~0_combout\ & (!\add_instance|main_alu|sum~4_combout\ & !\add_instance|main_alu|sum~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|main_alu|sum~3_combout\,
	datab => \add_instance|main_alu|sum~0_combout\,
	datac => \add_instance|main_alu|sum~4_combout\,
	datad => \add_instance|main_alu|sum~1_combout\,
	combout => \add_instance|cc|output[1]~11_combout\);

-- Location: LCCOMB_X12_Y15_N6
\add_instance|main_alu|sum~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|sum~8_combout\ = \add_instance|alu_a_forwarding_mux|sel_out[8]~17_combout\ $ (\add_instance|alu_b_mux|sel_out[8]~27_combout\ $ (\add_instance|main_alu|carry~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|alu_a_forwarding_mux|sel_out[8]~17_combout\,
	datac => \add_instance|alu_b_mux|sel_out[8]~27_combout\,
	datad => \add_instance|main_alu|carry~7_combout\,
	combout => \add_instance|main_alu|sum~8_combout\);

-- Location: LCCOMB_X13_Y15_N26
\add_instance|cc|output[1]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|cc|output[1]~14_combout\ = (!\add_instance|main_alu|sum~8_combout\ & (\add_instance|alu_a_forwarding_mux|sel_out[10]~21_combout\ $ (\add_instance|alu_b_mux|sel_out[10]~33_combout\ $ (!\add_instance|main_alu|carry~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_a_forwarding_mux|sel_out[10]~21_combout\,
	datab => \add_instance|main_alu|sum~8_combout\,
	datac => \add_instance|alu_b_mux|sel_out[10]~33_combout\,
	datad => \add_instance|main_alu|carry~10_combout\,
	combout => \add_instance|cc|output[1]~14_combout\);

-- Location: LCCOMB_X14_Y15_N8
\add_instance|main_alu|sum~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|sum~7_combout\ = \add_instance|main_alu|carry~0_combout\ $ (\add_instance|alu_a_forwarding_mux|sel_out[2]~5_combout\ $ (\add_instance|alu_b_mux|sel_out[2]~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|main_alu|carry~0_combout\,
	datab => \add_instance|alu_a_forwarding_mux|sel_out[2]~5_combout\,
	datad => \add_instance|alu_b_mux|sel_out[2]~11_combout\,
	combout => \add_instance|main_alu|sum~7_combout\);

-- Location: LCCOMB_X14_Y13_N4
\add_instance|cc|output[1]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|cc|output[1]~13_combout\ = (!\add_instance|main_alu|sum~7_combout\ & (\add_instance|alu_a_forwarding_mux|sel_out[4]~9_combout\ $ (\add_instance|alu_b_mux|sel_out[4]~17_combout\ $ (!\add_instance|main_alu|carry~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|main_alu|sum~7_combout\,
	datab => \add_instance|alu_a_forwarding_mux|sel_out[4]~9_combout\,
	datac => \add_instance|alu_b_mux|sel_out[4]~17_combout\,
	datad => \add_instance|main_alu|carry~2_combout\,
	combout => \add_instance|cc|output[1]~13_combout\);

-- Location: LCCOMB_X13_Y15_N4
\add_instance|main_alu|sum~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|sum~9_combout\ = \add_instance|alu_b_mux|sel_out[12]~39_combout\ $ (\add_instance|alu_a_forwarding_mux|sel_out[12]~25_combout\ $ (\add_instance|main_alu|carry~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|alu_b_mux|sel_out[12]~39_combout\,
	datac => \add_instance|alu_a_forwarding_mux|sel_out[12]~25_combout\,
	datad => \add_instance|main_alu|carry~13_combout\,
	combout => \add_instance|main_alu|sum~9_combout\);

-- Location: LCCOMB_X13_Y15_N22
\add_instance|cc|output[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|cc|output[1]~15_combout\ = (!\add_instance|main_alu|sum~9_combout\ & (\add_instance|alu_a_forwarding_mux|sel_out[14]~29_combout\ $ (\add_instance|alu_b_mux|sel_out[14]~45_combout\ $ (!\add_instance|main_alu|carry~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_a_forwarding_mux|sel_out[14]~29_combout\,
	datab => \add_instance|alu_b_mux|sel_out[14]~45_combout\,
	datac => \add_instance|main_alu|sum~9_combout\,
	datad => \add_instance|main_alu|carry~16_combout\,
	combout => \add_instance|cc|output[1]~15_combout\);

-- Location: LCCOMB_X13_Y15_N8
\add_instance|cc|output[1]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|cc|output[1]~16_combout\ = (\add_instance|cc|output[1]~14_combout\ & (\add_instance|cc|output[1]~13_combout\ & (\add_instance|cc|output[1]~15_combout\ & !\add_instance|main_alu|sum~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|cc|output[1]~14_combout\,
	datab => \add_instance|cc|output[1]~13_combout\,
	datac => \add_instance|cc|output[1]~15_combout\,
	datad => \add_instance|main_alu|sum~2_combout\,
	combout => \add_instance|cc|output[1]~16_combout\);

-- Location: LCCOMB_X12_Y15_N24
\add_instance|cc|output[1]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|cc|output[1]~12_combout\ = (!\add_instance|main_alu|sum~5_combout\ & (\add_instance|alu_a_forwarding_mux|sel_out[15]~31_combout\ $ (!\add_instance|main_alu|sum~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_a_forwarding_mux|sel_out[15]~31_combout\,
	datab => \add_instance|main_alu|sum~5_combout\,
	datad => \add_instance|main_alu|sum~6_combout\,
	combout => \add_instance|cc|output[1]~12_combout\);

-- Location: LCCOMB_X13_Y15_N18
\add_instance|cc|output[1]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|cc|output[1]~17_combout\ = (\add_instance|cc|output[1]~10_combout\ & (\add_instance|cc|output[1]~11_combout\ & (\add_instance|cc|output[1]~16_combout\ & \add_instance|cc|output[1]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|cc|output[1]~10_combout\,
	datab => \add_instance|cc|output[1]~11_combout\,
	datac => \add_instance|cc|output[1]~16_combout\,
	datad => \add_instance|cc|output[1]~12_combout\,
	combout => \add_instance|cc|output[1]~17_combout\);

-- Location: LCCOMB_X13_Y15_N30
\add_instance|cc|output[1]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|cc|output[1]~18_combout\ = (\add_instance|Mux19~1_combout\ & ((\add_instance|cc|output[1]~7_combout\) # ((\add_instance|cc|output[1]~17_combout\)))) # (!\add_instance|Mux19~1_combout\ & (((\add_instance|cc|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux19~1_combout\,
	datab => \add_instance|cc|output[1]~7_combout\,
	datac => \add_instance|cc|output\(1),
	datad => \add_instance|cc|output[1]~17_combout\,
	combout => \add_instance|cc|output[1]~18_combout\);

-- Location: FF_X13_Y15_N31
\add_instance|cc|output[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|cc|output[1]~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|cc|output\(1));

-- Location: LCCOMB_X14_Y11_N22
\add_instance|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux6~0_combout\ = (\add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a1\ & (\add_instance|cc|output\(1) & ((!\add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a0~portadataout\)))) # 
-- (!\add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a1\ & (((\add_instance|cc|output\(0)) # (!\add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a0~portadataout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|cc|output\(1),
	datab => \add_instance|cc|output\(0),
	datac => \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a1\,
	datad => \add_instance|rom_unit|rom_data_rtl_0|auto_generated|ram_block1a0~portadataout\,
	combout => \add_instance|Mux6~0_combout\);

-- Location: LCCOMB_X14_Y11_N2
\add_instance|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux19~0_combout\ = (\add_instance|if_id_register|instruction_ID_in\(12) & ((\add_instance|if_id_register|instruction_ID_in\(13)) # ((\add_instance|Mux22~0_combout\)))) # (!\add_instance|if_id_register|instruction_ID_in\(12) & 
-- (((\add_instance|Mux6~0_combout\)) # (!\add_instance|if_id_register|instruction_ID_in\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|if_id_register|instruction_ID_in\(12),
	datab => \add_instance|if_id_register|instruction_ID_in\(13),
	datac => \add_instance|Mux6~0_combout\,
	datad => \add_instance|Mux22~0_combout\,
	combout => \add_instance|Mux19~0_combout\);

-- Location: LCCOMB_X14_Y11_N24
\add_instance|rf|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Decoder0~0_combout\ = (!\input_vector[0]~input_o\ & (\add_instance|mem_wb_register|rf_a3_WB_in\(0) & \add_instance|Mux19~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[0]~input_o\,
	datab => \add_instance|mem_wb_register|rf_a3_WB_in\(0),
	datad => \add_instance|Mux19~0_combout\,
	combout => \add_instance|rf|Decoder0~0_combout\);

-- Location: LCCOMB_X13_Y11_N20
\add_instance|rf|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Decoder0~6_combout\ = (!\add_instance|mem_wb_register|rf_a3_WB_in\(1) & (!\add_instance|mem_wb_register|rf_a3_WB_in\(2) & \add_instance|rf|Decoder0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|mem_wb_register|rf_a3_WB_in\(1),
	datac => \add_instance|mem_wb_register|rf_a3_WB_in\(2),
	datad => \add_instance|rf|Decoder0~0_combout\,
	combout => \add_instance|rf|Decoder0~6_combout\);

-- Location: FF_X12_Y11_N9
\add_instance|rf|RF[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[0]~0_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[1][0]~q\);

-- Location: LCCOMB_X12_Y11_N2
\add_instance|rf|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux15~2_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(1) & (((\add_instance|id_or_register|rf_a1_OR_in\(0))))) # (!\add_instance|id_or_register|rf_a1_OR_in\(1) & ((\add_instance|id_or_register|rf_a1_OR_in\(0) & 
-- (\add_instance|rf|RF[1][0]~q\)) # (!\add_instance|id_or_register|rf_a1_OR_in\(0) & ((\add_instance|rf|RF[0][0]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(1),
	datab => \add_instance|rf|RF[1][0]~q\,
	datac => \add_instance|rf|RF[0][0]~q\,
	datad => \add_instance|id_or_register|rf_a1_OR_in\(0),
	combout => \add_instance|rf|Mux15~2_combout\);

-- Location: LCCOMB_X12_Y12_N14
\add_instance|rf|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux15~3_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(1) & ((\add_instance|rf|Mux15~2_combout\ & (\add_instance|rf|RF[3][0]~q\)) # (!\add_instance|rf|Mux15~2_combout\ & ((\add_instance|rf|RF[2][0]~q\))))) # 
-- (!\add_instance|id_or_register|rf_a1_OR_in\(1) & (\add_instance|rf|Mux15~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(1),
	datab => \add_instance|rf|Mux15~2_combout\,
	datac => \add_instance|rf|RF[3][0]~q\,
	datad => \add_instance|rf|RF[2][0]~q\,
	combout => \add_instance|rf|Mux15~3_combout\);

-- Location: LCCOMB_X10_Y12_N18
\add_instance|rf|RF[6][0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|RF[6][0]~feeder_combout\ = \add_instance|rf_d3_mux|sel_out[0]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|rf_d3_mux|sel_out[0]~0_combout\,
	combout => \add_instance|rf|RF[6][0]~feeder_combout\);

-- Location: FF_X10_Y12_N19
\add_instance|rf|RF[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|RF[6][0]~feeder_combout\,
	ena => \add_instance|rf|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[6][0]~q\);

-- Location: FF_X10_Y12_N25
\add_instance|rf|RF[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[0]~0_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[4][0]~q\);

-- Location: LCCOMB_X10_Y12_N24
\add_instance|rf|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux15~0_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(1) & ((\add_instance|rf|RF[6][0]~q\) # ((\add_instance|id_or_register|rf_a1_OR_in\(0))))) # (!\add_instance|id_or_register|rf_a1_OR_in\(1) & (((\add_instance|rf|RF[4][0]~q\ & 
-- !\add_instance|id_or_register|rf_a1_OR_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(1),
	datab => \add_instance|rf|RF[6][0]~q\,
	datac => \add_instance|rf|RF[4][0]~q\,
	datad => \add_instance|id_or_register|rf_a1_OR_in\(0),
	combout => \add_instance|rf|Mux15~0_combout\);

-- Location: FF_X14_Y12_N3
\add_instance|rf|RF[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf_d3_mux|sel_out[0]~0_combout\,
	sload => VCC,
	ena => \add_instance|rf|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[5][0]~q\);

-- Location: LCCOMB_X14_Y12_N2
\add_instance|rf|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux15~1_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(0) & ((\add_instance|rf|Mux15~0_combout\ & ((\add_instance|rf|RF[7][0]~q\))) # (!\add_instance|rf|Mux15~0_combout\ & (\add_instance|rf|RF[5][0]~q\)))) # 
-- (!\add_instance|id_or_register|rf_a1_OR_in\(0) & (\add_instance|rf|Mux15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|id_or_register|rf_a1_OR_in\(0),
	datab => \add_instance|rf|Mux15~0_combout\,
	datac => \add_instance|rf|RF[5][0]~q\,
	datad => \add_instance|rf|RF[7][0]~q\,
	combout => \add_instance|rf|Mux15~1_combout\);

-- Location: LCCOMB_X13_Y12_N2
\add_instance|rf|Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf|Mux15~4_combout\ = (\add_instance|id_or_register|rf_a1_OR_in\(2) & ((\add_instance|rf|Mux15~1_combout\))) # (!\add_instance|id_or_register|rf_a1_OR_in\(2) & (\add_instance|rf|Mux15~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|Mux15~3_combout\,
	datac => \add_instance|id_or_register|rf_a1_OR_in\(2),
	datad => \add_instance|rf|Mux15~1_combout\,
	combout => \add_instance|rf|Mux15~4_combout\);

-- Location: FF_X14_Y15_N19
\add_instance|or_ex_register|rf_d1_EX_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|rf|Mux15~4_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|or_ex_register|rf_d1_EX_in\(0));

-- Location: LCCOMB_X14_Y15_N18
\add_instance|alu_a_forwarding_mux|sel_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_a_forwarding_mux|sel_out[0]~0_combout\ = (\add_instance|forwarding_unit|forward_selection_process~4_combout\ & ((\add_instance|forwarding_unit|forward_selection_process~5_combout\ & (\add_instance|rf_d3_mux|sel_out[0]~0_combout\)) # 
-- (!\add_instance|forwarding_unit|forward_selection_process~5_combout\ & ((\add_instance|or_ex_register|rf_d1_EX_in\(0)))))) # (!\add_instance|forwarding_unit|forward_selection_process~4_combout\ & (((\add_instance|or_ex_register|rf_d1_EX_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf_d3_mux|sel_out[0]~0_combout\,
	datab => \add_instance|forwarding_unit|forward_selection_process~4_combout\,
	datac => \add_instance|or_ex_register|rf_d1_EX_in\(0),
	datad => \add_instance|forwarding_unit|forward_selection_process~5_combout\,
	combout => \add_instance|alu_a_forwarding_mux|sel_out[0]~0_combout\);

-- Location: LCCOMB_X14_Y15_N4
\add_instance|alu_a_forwarding_mux|sel_out[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|alu_a_forwarding_mux|sel_out[0]~1_combout\ = (\add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\ & (\add_instance|ex_mem_register|alu_c_MEM\(0))) # (!\add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\ & 
-- ((\add_instance|alu_a_forwarding_mux|sel_out[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ex_mem_register|alu_c_MEM\(0),
	datab => \add_instance|alu_a_forwarding_mux|sel_out[0]~0_combout\,
	datad => \add_instance|alu_a_forwarding_mux|sel_out[15]~33_combout\,
	combout => \add_instance|alu_a_forwarding_mux|sel_out[0]~1_combout\);

-- Location: LCCOMB_X16_Y15_N8
\add_instance|main_alu|C[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|main_alu|C[0]~0_combout\ = (\add_instance|alu_a_forwarding_mux|sel_out[0]~1_combout\ & ((!\add_instance|alu_b_mux|sel_out[0]~3_combout\))) # (!\add_instance|alu_a_forwarding_mux|sel_out[0]~1_combout\ & 
-- ((\add_instance|or_ex_register|alu_select_EX_in\(0)) # (\add_instance|alu_b_mux|sel_out[0]~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|alu_a_forwarding_mux|sel_out[0]~1_combout\,
	datac => \add_instance|or_ex_register|alu_select_EX_in\(0),
	datad => \add_instance|alu_b_mux|sel_out[0]~3_combout\,
	combout => \add_instance|main_alu|C[0]~0_combout\);

-- Location: FF_X16_Y15_N9
\add_instance|ex_mem_register|alu_c_MEM[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|main_alu|C[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|ex_mem_register|alu_c_MEM\(0));

-- Location: FF_X13_Y14_N15
\add_instance|mem_wb_register|alu_c_WB_in[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	asdata => \add_instance|ex_mem_register|alu_c_MEM\(0),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|mem_wb_register|alu_c_WB_in\(0));

-- Location: LCCOMB_X13_Y14_N4
\add_instance|rf_d3_mux|sel_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_d3_mux|sel_out[0]~0_combout\ = (!\add_instance|mem_wb_register|rf_d3_select_WB_in\(0) & \add_instance|mem_wb_register|alu_c_WB_in\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|mem_wb_register|rf_d3_select_WB_in\(0),
	datad => \add_instance|mem_wb_register|alu_c_WB_in\(0),
	combout => \add_instance|rf_d3_mux|sel_out[0]~0_combout\);

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


