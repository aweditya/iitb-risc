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

-- DATE "04/30/2022 19:41:53"

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
	input_vector : IN std_logic_vector(42 DOWNTO 0);
	output_vector : BUFFER std_logic_vector(47 DOWNTO 0)
	);
END DUT;

-- Design Ports Information
-- output_vector[0]	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[1]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[2]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[3]	=>  Location: PIN_F14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[4]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[5]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[6]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[7]	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[8]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[9]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[10]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[11]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[12]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[13]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[14]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[15]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[16]	=>  Location: PIN_L10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[17]	=>  Location: PIN_L13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[18]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[19]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[20]	=>  Location: PIN_K11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[21]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[22]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[23]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[24]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[25]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[26]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[27]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[28]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[29]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[30]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[31]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[32]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[33]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[34]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[35]	=>  Location: PIN_L16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[36]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[37]	=>  Location: PIN_D16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[38]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[39]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[40]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[41]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[42]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[43]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[44]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[45]	=>  Location: PIN_D11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[46]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[47]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[16]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[17]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[18]	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[19]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[20]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[21]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[0]	=>  Location: PIN_K16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[42]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[1]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[2]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[3]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[4]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[5]	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[6]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[7]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[8]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[9]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[10]	=>  Location: PIN_F6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[11]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[12]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[13]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[14]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[15]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[22]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[40]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[38]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[41]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[39]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[23]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[24]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[25]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[26]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[27]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[28]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[29]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[30]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[31]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[32]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[33]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[34]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[35]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[36]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[37]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_input_vector : std_logic_vector(42 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(47 DOWNTO 0);
SIGNAL \input_vector[42]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \output_vector[16]~output_o\ : std_logic;
SIGNAL \output_vector[17]~output_o\ : std_logic;
SIGNAL \output_vector[18]~output_o\ : std_logic;
SIGNAL \output_vector[19]~output_o\ : std_logic;
SIGNAL \output_vector[20]~output_o\ : std_logic;
SIGNAL \output_vector[21]~output_o\ : std_logic;
SIGNAL \output_vector[22]~output_o\ : std_logic;
SIGNAL \output_vector[23]~output_o\ : std_logic;
SIGNAL \output_vector[24]~output_o\ : std_logic;
SIGNAL \output_vector[25]~output_o\ : std_logic;
SIGNAL \output_vector[26]~output_o\ : std_logic;
SIGNAL \output_vector[27]~output_o\ : std_logic;
SIGNAL \output_vector[28]~output_o\ : std_logic;
SIGNAL \output_vector[29]~output_o\ : std_logic;
SIGNAL \output_vector[30]~output_o\ : std_logic;
SIGNAL \output_vector[31]~output_o\ : std_logic;
SIGNAL \output_vector[32]~output_o\ : std_logic;
SIGNAL \output_vector[33]~output_o\ : std_logic;
SIGNAL \output_vector[34]~output_o\ : std_logic;
SIGNAL \output_vector[35]~output_o\ : std_logic;
SIGNAL \output_vector[36]~output_o\ : std_logic;
SIGNAL \output_vector[37]~output_o\ : std_logic;
SIGNAL \output_vector[38]~output_o\ : std_logic;
SIGNAL \output_vector[39]~output_o\ : std_logic;
SIGNAL \output_vector[40]~output_o\ : std_logic;
SIGNAL \output_vector[41]~output_o\ : std_logic;
SIGNAL \output_vector[42]~output_o\ : std_logic;
SIGNAL \output_vector[43]~output_o\ : std_logic;
SIGNAL \output_vector[44]~output_o\ : std_logic;
SIGNAL \output_vector[45]~output_o\ : std_logic;
SIGNAL \output_vector[46]~output_o\ : std_logic;
SIGNAL \output_vector[47]~output_o\ : std_logic;
SIGNAL \input_vector[42]~input_o\ : std_logic;
SIGNAL \input_vector[42]~inputclkctrl_outclk\ : std_logic;
SIGNAL \input_vector[0]~input_o\ : std_logic;
SIGNAL \input_vector[1]~input_o\ : std_logic;
SIGNAL \input_vector[2]~input_o\ : std_logic;
SIGNAL \add_instance|pc_out[2]~feeder_combout\ : std_logic;
SIGNAL \input_vector[3]~input_o\ : std_logic;
SIGNAL \input_vector[4]~input_o\ : std_logic;
SIGNAL \input_vector[5]~input_o\ : std_logic;
SIGNAL \add_instance|pc_out[5]~feeder_combout\ : std_logic;
SIGNAL \input_vector[6]~input_o\ : std_logic;
SIGNAL \input_vector[7]~input_o\ : std_logic;
SIGNAL \input_vector[8]~input_o\ : std_logic;
SIGNAL \input_vector[9]~input_o\ : std_logic;
SIGNAL \input_vector[10]~input_o\ : std_logic;
SIGNAL \input_vector[11]~input_o\ : std_logic;
SIGNAL \input_vector[12]~input_o\ : std_logic;
SIGNAL \input_vector[13]~input_o\ : std_logic;
SIGNAL \input_vector[14]~input_o\ : std_logic;
SIGNAL \input_vector[15]~input_o\ : std_logic;
SIGNAL \input_vector[18]~input_o\ : std_logic;
SIGNAL \input_vector[22]~input_o\ : std_logic;
SIGNAL \input_vector[40]~input_o\ : std_logic;
SIGNAL \input_vector[39]~input_o\ : std_logic;
SIGNAL \input_vector[41]~input_o\ : std_logic;
SIGNAL \input_vector[38]~input_o\ : std_logic;
SIGNAL \add_instance|Decoder0~6_combout\ : std_logic;
SIGNAL \add_instance|RF[3][0]~q\ : std_logic;
SIGNAL \input_vector[17]~input_o\ : std_logic;
SIGNAL \add_instance|Decoder0~3_combout\ : std_logic;
SIGNAL \add_instance|RF[2][0]~q\ : std_logic;
SIGNAL \add_instance|Decoder0~5_combout\ : std_logic;
SIGNAL \add_instance|RF[0][0]~q\ : std_logic;
SIGNAL \input_vector[16]~input_o\ : std_logic;
SIGNAL \add_instance|Decoder0~4_combout\ : std_logic;
SIGNAL \add_instance|RF[1][0]~q\ : std_logic;
SIGNAL \add_instance|Mux31~2_combout\ : std_logic;
SIGNAL \add_instance|Mux31~3_combout\ : std_logic;
SIGNAL \add_instance|Decoder0~2_combout\ : std_logic;
SIGNAL \add_instance|RF[4][0]~q\ : std_logic;
SIGNAL \add_instance|Decoder0~1_combout\ : std_logic;
SIGNAL \add_instance|RF[6][0]~q\ : std_logic;
SIGNAL \add_instance|Mux31~0_combout\ : std_logic;
SIGNAL \add_instance|Decoder0~0_combout\ : std_logic;
SIGNAL \add_instance|RF[5][0]~q\ : std_logic;
SIGNAL \add_instance|RF[7][0]~q\ : std_logic;
SIGNAL \add_instance|Mux31~1_combout\ : std_logic;
SIGNAL \add_instance|Mux31~4_combout\ : std_logic;
SIGNAL \input_vector[23]~input_o\ : std_logic;
SIGNAL \add_instance|RF[3][1]~q\ : std_logic;
SIGNAL \add_instance|RF[2][1]~q\ : std_logic;
SIGNAL \add_instance|RF[0][1]~q\ : std_logic;
SIGNAL \add_instance|RF[1][1]~q\ : std_logic;
SIGNAL \add_instance|Mux30~2_combout\ : std_logic;
SIGNAL \add_instance|Mux30~3_combout\ : std_logic;
SIGNAL \add_instance|RF[6][1]~q\ : std_logic;
SIGNAL \add_instance|RF[4][1]~q\ : std_logic;
SIGNAL \add_instance|Mux30~0_combout\ : std_logic;
SIGNAL \add_instance|RF[5][1]~q\ : std_logic;
SIGNAL \add_instance|RF[7][1]~q\ : std_logic;
SIGNAL \add_instance|Mux30~1_combout\ : std_logic;
SIGNAL \add_instance|Mux30~4_combout\ : std_logic;
SIGNAL \input_vector[24]~input_o\ : std_logic;
SIGNAL \add_instance|RF[3][2]~q\ : std_logic;
SIGNAL \add_instance|RF[2][2]~q\ : std_logic;
SIGNAL \add_instance|RF[1][2]~q\ : std_logic;
SIGNAL \add_instance|RF[0][2]~q\ : std_logic;
SIGNAL \add_instance|Mux29~2_combout\ : std_logic;
SIGNAL \add_instance|Mux29~3_combout\ : std_logic;
SIGNAL \add_instance|RF[6][2]~q\ : std_logic;
SIGNAL \add_instance|RF[4][2]~q\ : std_logic;
SIGNAL \add_instance|Mux29~0_combout\ : std_logic;
SIGNAL \add_instance|RF[5][2]~q\ : std_logic;
SIGNAL \add_instance|RF[7][2]~q\ : std_logic;
SIGNAL \add_instance|Mux29~1_combout\ : std_logic;
SIGNAL \add_instance|Mux29~4_combout\ : std_logic;
SIGNAL \input_vector[25]~input_o\ : std_logic;
SIGNAL \add_instance|RF[6][3]~q\ : std_logic;
SIGNAL \add_instance|RF[4][3]~q\ : std_logic;
SIGNAL \add_instance|Mux28~0_combout\ : std_logic;
SIGNAL \add_instance|RF[5][3]~q\ : std_logic;
SIGNAL \add_instance|RF[7][3]~q\ : std_logic;
SIGNAL \add_instance|Mux28~1_combout\ : std_logic;
SIGNAL \add_instance|RF[3][3]~q\ : std_logic;
SIGNAL \add_instance|RF[2][3]~q\ : std_logic;
SIGNAL \add_instance|RF[1][3]~q\ : std_logic;
SIGNAL \add_instance|RF[0][3]~q\ : std_logic;
SIGNAL \add_instance|Mux28~2_combout\ : std_logic;
SIGNAL \add_instance|Mux28~3_combout\ : std_logic;
SIGNAL \add_instance|Mux28~4_combout\ : std_logic;
SIGNAL \input_vector[26]~input_o\ : std_logic;
SIGNAL \add_instance|RF[4][4]~q\ : std_logic;
SIGNAL \add_instance|RF[6][4]~q\ : std_logic;
SIGNAL \add_instance|Mux27~0_combout\ : std_logic;
SIGNAL \add_instance|RF[5][4]~q\ : std_logic;
SIGNAL \add_instance|RF[7][4]~q\ : std_logic;
SIGNAL \add_instance|Mux27~1_combout\ : std_logic;
SIGNAL \add_instance|RF[3][4]~q\ : std_logic;
SIGNAL \add_instance|RF[1][4]~q\ : std_logic;
SIGNAL \add_instance|RF[0][4]~q\ : std_logic;
SIGNAL \add_instance|Mux27~2_combout\ : std_logic;
SIGNAL \add_instance|RF[2][4]~q\ : std_logic;
SIGNAL \add_instance|Mux27~3_combout\ : std_logic;
SIGNAL \add_instance|Mux27~4_combout\ : std_logic;
SIGNAL \input_vector[27]~input_o\ : std_logic;
SIGNAL \add_instance|RF[6][5]~q\ : std_logic;
SIGNAL \add_instance|RF[4][5]~q\ : std_logic;
SIGNAL \add_instance|Mux26~0_combout\ : std_logic;
SIGNAL \add_instance|RF[5][5]~q\ : std_logic;
SIGNAL \add_instance|RF[7][5]~q\ : std_logic;
SIGNAL \add_instance|Mux26~1_combout\ : std_logic;
SIGNAL \add_instance|RF[3][5]~q\ : std_logic;
SIGNAL \add_instance|RF[2][5]~q\ : std_logic;
SIGNAL \add_instance|RF[0][5]~q\ : std_logic;
SIGNAL \add_instance|RF[1][5]~q\ : std_logic;
SIGNAL \add_instance|Mux26~2_combout\ : std_logic;
SIGNAL \add_instance|Mux26~3_combout\ : std_logic;
SIGNAL \add_instance|Mux26~4_combout\ : std_logic;
SIGNAL \input_vector[28]~input_o\ : std_logic;
SIGNAL \add_instance|RF[3][6]~q\ : std_logic;
SIGNAL \add_instance|RF[2][6]~q\ : std_logic;
SIGNAL \add_instance|RF[1][6]~q\ : std_logic;
SIGNAL \add_instance|RF[0][6]~q\ : std_logic;
SIGNAL \add_instance|Mux25~2_combout\ : std_logic;
SIGNAL \add_instance|Mux25~3_combout\ : std_logic;
SIGNAL \add_instance|RF[7][6]~q\ : std_logic;
SIGNAL \add_instance|RF[5][6]~q\ : std_logic;
SIGNAL \add_instance|RF[6][6]~q\ : std_logic;
SIGNAL \add_instance|RF[4][6]~q\ : std_logic;
SIGNAL \add_instance|Mux25~0_combout\ : std_logic;
SIGNAL \add_instance|Mux25~1_combout\ : std_logic;
SIGNAL \add_instance|Mux25~4_combout\ : std_logic;
SIGNAL \input_vector[29]~input_o\ : std_logic;
SIGNAL \add_instance|RF[3][7]~q\ : std_logic;
SIGNAL \add_instance|RF[2][7]~q\ : std_logic;
SIGNAL \add_instance|RF[1][7]~q\ : std_logic;
SIGNAL \add_instance|RF[0][7]~q\ : std_logic;
SIGNAL \add_instance|Mux24~2_combout\ : std_logic;
SIGNAL \add_instance|Mux24~3_combout\ : std_logic;
SIGNAL \add_instance|RF[4][7]~q\ : std_logic;
SIGNAL \add_instance|RF[6][7]~q\ : std_logic;
SIGNAL \add_instance|Mux24~0_combout\ : std_logic;
SIGNAL \add_instance|RF[5][7]~q\ : std_logic;
SIGNAL \add_instance|RF[7][7]~q\ : std_logic;
SIGNAL \add_instance|Mux24~1_combout\ : std_logic;
SIGNAL \add_instance|Mux24~4_combout\ : std_logic;
SIGNAL \add_instance|RF[7][8]~q\ : std_logic;
SIGNAL \input_vector[30]~input_o\ : std_logic;
SIGNAL \add_instance|RF[5][8]~q\ : std_logic;
SIGNAL \add_instance|RF[4][8]~q\ : std_logic;
SIGNAL \add_instance|RF[6][8]~q\ : std_logic;
SIGNAL \add_instance|Mux23~0_combout\ : std_logic;
SIGNAL \add_instance|Mux23~1_combout\ : std_logic;
SIGNAL \add_instance|RF[3][8]~q\ : std_logic;
SIGNAL \add_instance|RF[2][8]~q\ : std_logic;
SIGNAL \add_instance|RF[1][8]~q\ : std_logic;
SIGNAL \add_instance|RF[0][8]~q\ : std_logic;
SIGNAL \add_instance|Mux23~2_combout\ : std_logic;
SIGNAL \add_instance|Mux23~3_combout\ : std_logic;
SIGNAL \add_instance|Mux23~4_combout\ : std_logic;
SIGNAL \input_vector[31]~input_o\ : std_logic;
SIGNAL \add_instance|RF[3][9]~q\ : std_logic;
SIGNAL \add_instance|RF[2][9]~q\ : std_logic;
SIGNAL \add_instance|RF[1][9]~q\ : std_logic;
SIGNAL \add_instance|RF[0][9]~q\ : std_logic;
SIGNAL \add_instance|Mux22~2_combout\ : std_logic;
SIGNAL \add_instance|Mux22~3_combout\ : std_logic;
SIGNAL \add_instance|RF[4][9]~q\ : std_logic;
SIGNAL \add_instance|RF[6][9]~q\ : std_logic;
SIGNAL \add_instance|Mux22~0_combout\ : std_logic;
SIGNAL \add_instance|RF[5][9]~q\ : std_logic;
SIGNAL \add_instance|RF[7][9]~q\ : std_logic;
SIGNAL \add_instance|Mux22~1_combout\ : std_logic;
SIGNAL \add_instance|Mux22~4_combout\ : std_logic;
SIGNAL \input_vector[32]~input_o\ : std_logic;
SIGNAL \add_instance|RF[0][10]~q\ : std_logic;
SIGNAL \add_instance|RF[1][10]~q\ : std_logic;
SIGNAL \add_instance|Mux21~2_combout\ : std_logic;
SIGNAL \add_instance|RF[3][10]~q\ : std_logic;
SIGNAL \add_instance|RF[2][10]~q\ : std_logic;
SIGNAL \add_instance|Mux21~3_combout\ : std_logic;
SIGNAL \add_instance|RF[7][10]~q\ : std_logic;
SIGNAL \add_instance|RF[5][10]~q\ : std_logic;
SIGNAL \add_instance|RF[4][10]~q\ : std_logic;
SIGNAL \add_instance|RF[6][10]~q\ : std_logic;
SIGNAL \add_instance|Mux21~0_combout\ : std_logic;
SIGNAL \add_instance|Mux21~1_combout\ : std_logic;
SIGNAL \add_instance|Mux21~4_combout\ : std_logic;
SIGNAL \input_vector[33]~input_o\ : std_logic;
SIGNAL \add_instance|RF[3][11]~q\ : std_logic;
SIGNAL \add_instance|RF[2][11]~q\ : std_logic;
SIGNAL \add_instance|RF[0][11]~q\ : std_logic;
SIGNAL \add_instance|RF[1][11]~q\ : std_logic;
SIGNAL \add_instance|Mux20~2_combout\ : std_logic;
SIGNAL \add_instance|Mux20~3_combout\ : std_logic;
SIGNAL \add_instance|RF[7][11]~q\ : std_logic;
SIGNAL \add_instance|RF[5][11]~q\ : std_logic;
SIGNAL \add_instance|RF[6][11]~q\ : std_logic;
SIGNAL \add_instance|RF[4][11]~q\ : std_logic;
SIGNAL \add_instance|Mux20~0_combout\ : std_logic;
SIGNAL \add_instance|Mux20~1_combout\ : std_logic;
SIGNAL \add_instance|Mux20~4_combout\ : std_logic;
SIGNAL \input_vector[34]~input_o\ : std_logic;
SIGNAL \add_instance|RF[3][12]~q\ : std_logic;
SIGNAL \add_instance|RF[1][12]~q\ : std_logic;
SIGNAL \add_instance|RF[0][12]~q\ : std_logic;
SIGNAL \add_instance|Mux19~2_combout\ : std_logic;
SIGNAL \add_instance|RF[2][12]~q\ : std_logic;
SIGNAL \add_instance|Mux19~3_combout\ : std_logic;
SIGNAL \add_instance|RF[4][12]~q\ : std_logic;
SIGNAL \add_instance|RF[6][12]~q\ : std_logic;
SIGNAL \add_instance|Mux19~0_combout\ : std_logic;
SIGNAL \add_instance|RF[5][12]~q\ : std_logic;
SIGNAL \add_instance|RF[7][12]~q\ : std_logic;
SIGNAL \add_instance|Mux19~1_combout\ : std_logic;
SIGNAL \add_instance|Mux19~4_combout\ : std_logic;
SIGNAL \input_vector[35]~input_o\ : std_logic;
SIGNAL \add_instance|RF[3][13]~q\ : std_logic;
SIGNAL \add_instance|RF[2][13]~q\ : std_logic;
SIGNAL \add_instance|RF[0][13]~q\ : std_logic;
SIGNAL \add_instance|RF[1][13]~q\ : std_logic;
SIGNAL \add_instance|Mux18~2_combout\ : std_logic;
SIGNAL \add_instance|Mux18~3_combout\ : std_logic;
SIGNAL \add_instance|RF[6][13]~q\ : std_logic;
SIGNAL \add_instance|RF[4][13]~q\ : std_logic;
SIGNAL \add_instance|Mux18~0_combout\ : std_logic;
SIGNAL \add_instance|RF[5][13]~q\ : std_logic;
SIGNAL \add_instance|RF[7][13]~q\ : std_logic;
SIGNAL \add_instance|Mux18~1_combout\ : std_logic;
SIGNAL \add_instance|Mux18~4_combout\ : std_logic;
SIGNAL \input_vector[36]~input_o\ : std_logic;
SIGNAL \add_instance|RF[4][14]~q\ : std_logic;
SIGNAL \add_instance|RF[6][14]~q\ : std_logic;
SIGNAL \add_instance|Mux17~0_combout\ : std_logic;
SIGNAL \add_instance|RF[5][14]~q\ : std_logic;
SIGNAL \add_instance|RF[7][14]~q\ : std_logic;
SIGNAL \add_instance|Mux17~1_combout\ : std_logic;
SIGNAL \add_instance|RF[1][14]~q\ : std_logic;
SIGNAL \add_instance|RF[0][14]~q\ : std_logic;
SIGNAL \add_instance|Mux17~2_combout\ : std_logic;
SIGNAL \add_instance|RF[2][14]~q\ : std_logic;
SIGNAL \add_instance|RF[3][14]~q\ : std_logic;
SIGNAL \add_instance|Mux17~3_combout\ : std_logic;
SIGNAL \add_instance|Mux17~4_combout\ : std_logic;
SIGNAL \input_vector[37]~input_o\ : std_logic;
SIGNAL \add_instance|RF[6][15]~q\ : std_logic;
SIGNAL \add_instance|RF[4][15]~q\ : std_logic;
SIGNAL \add_instance|Mux16~0_combout\ : std_logic;
SIGNAL \add_instance|RF[5][15]~q\ : std_logic;
SIGNAL \add_instance|RF[7][15]~q\ : std_logic;
SIGNAL \add_instance|Mux16~1_combout\ : std_logic;
SIGNAL \add_instance|RF[0][15]~q\ : std_logic;
SIGNAL \add_instance|RF[1][15]~q\ : std_logic;
SIGNAL \add_instance|Mux16~2_combout\ : std_logic;
SIGNAL \add_instance|RF[2][15]~q\ : std_logic;
SIGNAL \add_instance|RF[3][15]~q\ : std_logic;
SIGNAL \add_instance|Mux16~3_combout\ : std_logic;
SIGNAL \add_instance|Mux16~4_combout\ : std_logic;
SIGNAL \input_vector[19]~input_o\ : std_logic;
SIGNAL \input_vector[20]~input_o\ : std_logic;
SIGNAL \add_instance|Mux15~2_combout\ : std_logic;
SIGNAL \add_instance|Mux15~3_combout\ : std_logic;
SIGNAL \input_vector[21]~input_o\ : std_logic;
SIGNAL \add_instance|Mux15~0_combout\ : std_logic;
SIGNAL \add_instance|Mux15~1_combout\ : std_logic;
SIGNAL \add_instance|Mux15~4_combout\ : std_logic;
SIGNAL \add_instance|Mux14~0_combout\ : std_logic;
SIGNAL \add_instance|Mux14~1_combout\ : std_logic;
SIGNAL \add_instance|Mux14~2_combout\ : std_logic;
SIGNAL \add_instance|Mux14~3_combout\ : std_logic;
SIGNAL \add_instance|Mux14~4_combout\ : std_logic;
SIGNAL \add_instance|Mux13~2_combout\ : std_logic;
SIGNAL \add_instance|Mux13~3_combout\ : std_logic;
SIGNAL \add_instance|Mux13~0_combout\ : std_logic;
SIGNAL \add_instance|Mux13~1_combout\ : std_logic;
SIGNAL \add_instance|Mux13~4_combout\ : std_logic;
SIGNAL \add_instance|Mux12~2_combout\ : std_logic;
SIGNAL \add_instance|Mux12~3_combout\ : std_logic;
SIGNAL \add_instance|Mux12~0_combout\ : std_logic;
SIGNAL \add_instance|Mux12~1_combout\ : std_logic;
SIGNAL \add_instance|Mux12~4_combout\ : std_logic;
SIGNAL \add_instance|Mux11~0_combout\ : std_logic;
SIGNAL \add_instance|Mux11~1_combout\ : std_logic;
SIGNAL \add_instance|Mux11~2_combout\ : std_logic;
SIGNAL \add_instance|Mux11~3_combout\ : std_logic;
SIGNAL \add_instance|Mux11~4_combout\ : std_logic;
SIGNAL \add_instance|Mux10~2_combout\ : std_logic;
SIGNAL \add_instance|Mux10~3_combout\ : std_logic;
SIGNAL \add_instance|Mux10~0_combout\ : std_logic;
SIGNAL \add_instance|Mux10~1_combout\ : std_logic;
SIGNAL \add_instance|Mux10~4_combout\ : std_logic;
SIGNAL \add_instance|Mux9~0_combout\ : std_logic;
SIGNAL \add_instance|Mux9~1_combout\ : std_logic;
SIGNAL \add_instance|Mux9~2_combout\ : std_logic;
SIGNAL \add_instance|Mux9~3_combout\ : std_logic;
SIGNAL \add_instance|Mux9~4_combout\ : std_logic;
SIGNAL \add_instance|Mux8~0_combout\ : std_logic;
SIGNAL \add_instance|Mux8~1_combout\ : std_logic;
SIGNAL \add_instance|Mux8~2_combout\ : std_logic;
SIGNAL \add_instance|Mux8~3_combout\ : std_logic;
SIGNAL \add_instance|Mux8~4_combout\ : std_logic;
SIGNAL \add_instance|Mux7~2_combout\ : std_logic;
SIGNAL \add_instance|Mux7~3_combout\ : std_logic;
SIGNAL \add_instance|Mux7~0_combout\ : std_logic;
SIGNAL \add_instance|Mux7~1_combout\ : std_logic;
SIGNAL \add_instance|Mux7~4_combout\ : std_logic;
SIGNAL \add_instance|Mux6~0_combout\ : std_logic;
SIGNAL \add_instance|Mux6~1_combout\ : std_logic;
SIGNAL \add_instance|Mux6~2_combout\ : std_logic;
SIGNAL \add_instance|Mux6~3_combout\ : std_logic;
SIGNAL \add_instance|Mux6~4_combout\ : std_logic;
SIGNAL \add_instance|Mux5~2_combout\ : std_logic;
SIGNAL \add_instance|Mux5~3_combout\ : std_logic;
SIGNAL \add_instance|Mux5~0_combout\ : std_logic;
SIGNAL \add_instance|Mux5~1_combout\ : std_logic;
SIGNAL \add_instance|Mux5~4_combout\ : std_logic;
SIGNAL \add_instance|Mux4~0_combout\ : std_logic;
SIGNAL \add_instance|Mux4~1_combout\ : std_logic;
SIGNAL \add_instance|Mux4~2_combout\ : std_logic;
SIGNAL \add_instance|Mux4~3_combout\ : std_logic;
SIGNAL \add_instance|Mux4~4_combout\ : std_logic;
SIGNAL \add_instance|Mux3~0_combout\ : std_logic;
SIGNAL \add_instance|Mux3~1_combout\ : std_logic;
SIGNAL \add_instance|Mux3~2_combout\ : std_logic;
SIGNAL \add_instance|Mux3~3_combout\ : std_logic;
SIGNAL \add_instance|Mux3~4_combout\ : std_logic;
SIGNAL \add_instance|Mux2~0_combout\ : std_logic;
SIGNAL \add_instance|Mux2~1_combout\ : std_logic;
SIGNAL \add_instance|Mux2~2_combout\ : std_logic;
SIGNAL \add_instance|Mux2~3_combout\ : std_logic;
SIGNAL \add_instance|Mux2~4_combout\ : std_logic;
SIGNAL \add_instance|Mux1~2_combout\ : std_logic;
SIGNAL \add_instance|Mux1~3_combout\ : std_logic;
SIGNAL \add_instance|Mux1~0_combout\ : std_logic;
SIGNAL \add_instance|Mux1~1_combout\ : std_logic;
SIGNAL \add_instance|Mux1~4_combout\ : std_logic;
SIGNAL \add_instance|Mux0~0_combout\ : std_logic;
SIGNAL \add_instance|Mux0~1_combout\ : std_logic;
SIGNAL \add_instance|Mux0~2_combout\ : std_logic;
SIGNAL \add_instance|Mux0~3_combout\ : std_logic;
SIGNAL \add_instance|Mux0~4_combout\ : std_logic;
SIGNAL \add_instance|pc_out\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \ALT_INV_input_vector[42]~inputclkctrl_outclk\ : std_logic;

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

\input_vector[42]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \input_vector[42]~input_o\);
\ALT_INV_input_vector[42]~inputclkctrl_outclk\ <= NOT \input_vector[42]~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X34_Y17_N2
\output_vector[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|pc_out\(0),
	devoe => ww_devoe,
	o => \output_vector[0]~output_o\);

-- Location: IOOBUF_X34_Y8_N9
\output_vector[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|pc_out\(1),
	devoe => ww_devoe,
	o => \output_vector[1]~output_o\);

-- Location: IOOBUF_X34_Y10_N9
\output_vector[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|pc_out\(2),
	devoe => ww_devoe,
	o => \output_vector[2]~output_o\);

-- Location: IOOBUF_X34_Y19_N16
\output_vector[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|pc_out\(3),
	devoe => ww_devoe,
	o => \output_vector[3]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\output_vector[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|pc_out\(4),
	devoe => ww_devoe,
	o => \output_vector[4]~output_o\);

-- Location: IOOBUF_X34_Y11_N2
\output_vector[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|pc_out\(5),
	devoe => ww_devoe,
	o => \output_vector[5]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\output_vector[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|pc_out\(6),
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
	i => \add_instance|pc_out\(7),
	devoe => ww_devoe,
	o => \output_vector[7]~output_o\);

-- Location: IOOBUF_X23_Y24_N23
\output_vector[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|pc_out\(8),
	devoe => ww_devoe,
	o => \output_vector[8]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\output_vector[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|pc_out\(9),
	devoe => ww_devoe,
	o => \output_vector[9]~output_o\);

-- Location: IOOBUF_X7_Y24_N16
\output_vector[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|pc_out\(10),
	devoe => ww_devoe,
	o => \output_vector[10]~output_o\);

-- Location: IOOBUF_X21_Y24_N9
\output_vector[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|pc_out\(11),
	devoe => ww_devoe,
	o => \output_vector[11]~output_o\);

-- Location: IOOBUF_X30_Y24_N9
\output_vector[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|pc_out\(12),
	devoe => ww_devoe,
	o => \output_vector[12]~output_o\);

-- Location: IOOBUF_X11_Y24_N2
\output_vector[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|pc_out\(13),
	devoe => ww_devoe,
	o => \output_vector[13]~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\output_vector[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|pc_out\(14),
	devoe => ww_devoe,
	o => \output_vector[14]~output_o\);

-- Location: IOOBUF_X13_Y24_N2
\output_vector[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|pc_out\(15),
	devoe => ww_devoe,
	o => \output_vector[15]~output_o\);

-- Location: IOOBUF_X25_Y0_N9
\output_vector[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|Mux31~4_combout\,
	devoe => ww_devoe,
	o => \output_vector[16]~output_o\);

-- Location: IOOBUF_X34_Y8_N23
\output_vector[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|Mux30~4_combout\,
	devoe => ww_devoe,
	o => \output_vector[17]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\output_vector[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|Mux29~4_combout\,
	devoe => ww_devoe,
	o => \output_vector[18]~output_o\);

-- Location: IOOBUF_X34_Y10_N2
\output_vector[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|Mux28~4_combout\,
	devoe => ww_devoe,
	o => \output_vector[19]~output_o\);

-- Location: IOOBUF_X34_Y6_N16
\output_vector[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|Mux27~4_combout\,
	devoe => ww_devoe,
	o => \output_vector[20]~output_o\);

-- Location: IOOBUF_X34_Y5_N16
\output_vector[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|Mux26~4_combout\,
	devoe => ww_devoe,
	o => \output_vector[21]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\output_vector[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|Mux25~4_combout\,
	devoe => ww_devoe,
	o => \output_vector[22]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\output_vector[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|Mux24~4_combout\,
	devoe => ww_devoe,
	o => \output_vector[23]~output_o\);

-- Location: IOOBUF_X5_Y24_N2
\output_vector[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|Mux23~4_combout\,
	devoe => ww_devoe,
	o => \output_vector[24]~output_o\);

-- Location: IOOBUF_X5_Y24_N9
\output_vector[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|Mux22~4_combout\,
	devoe => ww_devoe,
	o => \output_vector[25]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\output_vector[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|Mux21~4_combout\,
	devoe => ww_devoe,
	o => \output_vector[26]~output_o\);

-- Location: IOOBUF_X13_Y24_N9
\output_vector[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|Mux20~4_combout\,
	devoe => ww_devoe,
	o => \output_vector[27]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\output_vector[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|Mux19~4_combout\,
	devoe => ww_devoe,
	o => \output_vector[28]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\output_vector[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|Mux18~4_combout\,
	devoe => ww_devoe,
	o => \output_vector[29]~output_o\);

-- Location: IOOBUF_X28_Y24_N16
\output_vector[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|Mux17~4_combout\,
	devoe => ww_devoe,
	o => \output_vector[30]~output_o\);

-- Location: IOOBUF_X13_Y24_N16
\output_vector[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|Mux16~4_combout\,
	devoe => ww_devoe,
	o => \output_vector[31]~output_o\);

-- Location: IOOBUF_X25_Y24_N16
\output_vector[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|Mux15~4_combout\,
	devoe => ww_devoe,
	o => \output_vector[32]~output_o\);

-- Location: IOOBUF_X34_Y9_N2
\output_vector[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|Mux14~4_combout\,
	devoe => ww_devoe,
	o => \output_vector[33]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\output_vector[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|Mux13~4_combout\,
	devoe => ww_devoe,
	o => \output_vector[34]~output_o\);

-- Location: IOOBUF_X34_Y8_N16
\output_vector[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|Mux12~4_combout\,
	devoe => ww_devoe,
	o => \output_vector[35]~output_o\);

-- Location: IOOBUF_X32_Y24_N9
\output_vector[36]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|Mux11~4_combout\,
	devoe => ww_devoe,
	o => \output_vector[36]~output_o\);

-- Location: IOOBUF_X34_Y19_N9
\output_vector[37]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|Mux10~4_combout\,
	devoe => ww_devoe,
	o => \output_vector[37]~output_o\);

-- Location: IOOBUF_X25_Y0_N23
\output_vector[38]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|Mux9~4_combout\,
	devoe => ww_devoe,
	o => \output_vector[38]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\output_vector[39]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|Mux8~4_combout\,
	devoe => ww_devoe,
	o => \output_vector[39]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\output_vector[40]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|Mux7~4_combout\,
	devoe => ww_devoe,
	o => \output_vector[40]~output_o\);

-- Location: IOOBUF_X7_Y24_N2
\output_vector[41]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|Mux6~4_combout\,
	devoe => ww_devoe,
	o => \output_vector[41]~output_o\);

-- Location: IOOBUF_X11_Y24_N9
\output_vector[42]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|Mux5~4_combout\,
	devoe => ww_devoe,
	o => \output_vector[42]~output_o\);

-- Location: IOOBUF_X11_Y24_N23
\output_vector[43]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|Mux4~4_combout\,
	devoe => ww_devoe,
	o => \output_vector[43]~output_o\);

-- Location: IOOBUF_X7_Y24_N9
\output_vector[44]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|Mux3~4_combout\,
	devoe => ww_devoe,
	o => \output_vector[44]~output_o\);

-- Location: IOOBUF_X32_Y24_N23
\output_vector[45]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|Mux2~4_combout\,
	devoe => ww_devoe,
	o => \output_vector[45]~output_o\);

-- Location: IOOBUF_X28_Y24_N23
\output_vector[46]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|Mux1~4_combout\,
	devoe => ww_devoe,
	o => \output_vector[46]~output_o\);

-- Location: IOOBUF_X9_Y24_N9
\output_vector[47]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|Mux0~4_combout\,
	devoe => ww_devoe,
	o => \output_vector[47]~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\input_vector[42]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(42),
	o => \input_vector[42]~input_o\);

-- Location: CLKCTRL_G2
\input_vector[42]~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \input_vector[42]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \input_vector[42]~inputclkctrl_outclk\);

-- Location: IOIBUF_X34_Y9_N15
\input_vector[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(0),
	o => \input_vector[0]~input_o\);

-- Location: FF_X25_Y17_N25
\add_instance|pc_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|pc_out\(0));

-- Location: IOIBUF_X25_Y0_N1
\input_vector[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(1),
	o => \input_vector[1]~input_o\);

-- Location: FF_X24_Y16_N25
\add_instance|pc_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|pc_out\(1));

-- Location: IOIBUF_X34_Y17_N22
\input_vector[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(2),
	o => \input_vector[2]~input_o\);

-- Location: LCCOMB_X33_Y17_N8
\add_instance|pc_out[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|pc_out[2]~feeder_combout\ = \input_vector[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_vector[2]~input_o\,
	combout => \add_instance|pc_out[2]~feeder_combout\);

-- Location: FF_X33_Y17_N9
\add_instance|pc_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	d => \add_instance|pc_out[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|pc_out\(2));

-- Location: IOIBUF_X25_Y24_N1
\input_vector[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(3),
	o => \input_vector[3]~input_o\);

-- Location: FF_X25_Y19_N17
\add_instance|pc_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|pc_out\(3));

-- Location: IOIBUF_X32_Y24_N15
\input_vector[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(4),
	o => \input_vector[4]~input_o\);

-- Location: FF_X25_Y19_N19
\add_instance|pc_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|pc_out\(4));

-- Location: IOIBUF_X30_Y24_N22
\input_vector[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(5),
	o => \input_vector[5]~input_o\);

-- Location: LCCOMB_X32_Y19_N0
\add_instance|pc_out[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|pc_out[5]~feeder_combout\ = \input_vector[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \input_vector[5]~input_o\,
	combout => \add_instance|pc_out[5]~feeder_combout\);

-- Location: FF_X32_Y19_N1
\add_instance|pc_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	d => \add_instance|pc_out[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|pc_out\(5));

-- Location: IOIBUF_X21_Y0_N8
\input_vector[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(6),
	o => \input_vector[6]~input_o\);

-- Location: FF_X24_Y16_N27
\add_instance|pc_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|pc_out\(6));

-- Location: IOIBUF_X34_Y7_N15
\input_vector[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(7),
	o => \input_vector[7]~input_o\);

-- Location: FF_X24_Y16_N13
\add_instance|pc_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|pc_out\(7));

-- Location: IOIBUF_X30_Y24_N1
\input_vector[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(8),
	o => \input_vector[8]~input_o\);

-- Location: FF_X23_Y20_N9
\add_instance|pc_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[8]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|pc_out\(8));

-- Location: IOIBUF_X13_Y24_N22
\input_vector[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(9),
	o => \input_vector[9]~input_o\);

-- Location: FF_X18_Y20_N17
\add_instance|pc_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[9]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|pc_out\(9));

-- Location: IOIBUF_X11_Y24_N15
\input_vector[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(10),
	o => \input_vector[10]~input_o\);

-- Location: FF_X18_Y20_N27
\add_instance|pc_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[10]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|pc_out\(10));

-- Location: IOIBUF_X5_Y24_N15
\input_vector[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(11),
	o => \input_vector[11]~input_o\);

-- Location: FF_X23_Y20_N11
\add_instance|pc_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[11]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|pc_out\(11));

-- Location: IOIBUF_X23_Y24_N8
\input_vector[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(12),
	o => \input_vector[12]~input_o\);

-- Location: FF_X23_Y20_N5
\add_instance|pc_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[12]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|pc_out\(12));

-- Location: IOIBUF_X28_Y24_N1
\input_vector[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(13),
	o => \input_vector[13]~input_o\);

-- Location: FF_X23_Y20_N23
\add_instance|pc_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[13]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|pc_out\(13));

-- Location: IOIBUF_X23_Y24_N1
\input_vector[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(14),
	o => \input_vector[14]~input_o\);

-- Location: FF_X23_Y20_N1
\add_instance|pc_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[14]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|pc_out\(14));

-- Location: IOIBUF_X9_Y24_N22
\input_vector[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(15),
	o => \input_vector[15]~input_o\);

-- Location: FF_X18_Y20_N5
\add_instance|pc_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[15]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|pc_out\(15));

-- Location: IOIBUF_X0_Y18_N22
\input_vector[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(18),
	o => \input_vector[18]~input_o\);

-- Location: IOIBUF_X34_Y20_N8
\input_vector[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(22),
	o => \input_vector[22]~input_o\);

-- Location: IOIBUF_X25_Y24_N22
\input_vector[40]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(40),
	o => \input_vector[40]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\input_vector[39]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(39),
	o => \input_vector[39]~input_o\);

-- Location: IOIBUF_X21_Y0_N15
\input_vector[41]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(41),
	o => \input_vector[41]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\input_vector[38]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(38),
	o => \input_vector[38]~input_o\);

-- Location: LCCOMB_X24_Y19_N6
\add_instance|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Decoder0~6_combout\ = (!\input_vector[40]~input_o\ & (\input_vector[39]~input_o\ & (\input_vector[41]~input_o\ & \input_vector[38]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[40]~input_o\,
	datab => \input_vector[39]~input_o\,
	datac => \input_vector[41]~input_o\,
	datad => \input_vector[38]~input_o\,
	combout => \add_instance|Decoder0~6_combout\);

-- Location: FF_X24_Y20_N19
\add_instance|RF[3][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[22]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[3][0]~q\);

-- Location: IOIBUF_X0_Y18_N15
\input_vector[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(17),
	o => \input_vector[17]~input_o\);

-- Location: LCCOMB_X24_Y19_N16
\add_instance|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Decoder0~3_combout\ = (!\input_vector[40]~input_o\ & (\input_vector[39]~input_o\ & (\input_vector[41]~input_o\ & !\input_vector[38]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[40]~input_o\,
	datab => \input_vector[39]~input_o\,
	datac => \input_vector[41]~input_o\,
	datad => \input_vector[38]~input_o\,
	combout => \add_instance|Decoder0~3_combout\);

-- Location: FF_X24_Y20_N25
\add_instance|RF[2][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[22]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[2][0]~q\);

-- Location: LCCOMB_X24_Y19_N4
\add_instance|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Decoder0~5_combout\ = (!\input_vector[40]~input_o\ & (!\input_vector[39]~input_o\ & (\input_vector[41]~input_o\ & !\input_vector[38]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[40]~input_o\,
	datab => \input_vector[39]~input_o\,
	datac => \input_vector[41]~input_o\,
	datad => \input_vector[38]~input_o\,
	combout => \add_instance|Decoder0~5_combout\);

-- Location: FF_X26_Y16_N27
\add_instance|RF[0][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[22]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[0][0]~q\);

-- Location: IOIBUF_X18_Y24_N22
\input_vector[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(16),
	o => \input_vector[16]~input_o\);

-- Location: LCCOMB_X24_Y19_N26
\add_instance|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Decoder0~4_combout\ = (!\input_vector[40]~input_o\ & (!\input_vector[39]~input_o\ & (\input_vector[41]~input_o\ & \input_vector[38]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[40]~input_o\,
	datab => \input_vector[39]~input_o\,
	datac => \input_vector[41]~input_o\,
	datad => \input_vector[38]~input_o\,
	combout => \add_instance|Decoder0~4_combout\);

-- Location: FF_X26_Y16_N1
\add_instance|RF[1][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[22]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[1][0]~q\);

-- Location: LCCOMB_X26_Y16_N0
\add_instance|Mux31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux31~2_combout\ = (\input_vector[16]~input_o\ & (((\add_instance|RF[1][0]~q\) # (\input_vector[17]~input_o\)))) # (!\input_vector[16]~input_o\ & (\add_instance|RF[0][0]~q\ & ((!\input_vector[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|RF[0][0]~q\,
	datab => \input_vector[16]~input_o\,
	datac => \add_instance|RF[1][0]~q\,
	datad => \input_vector[17]~input_o\,
	combout => \add_instance|Mux31~2_combout\);

-- Location: LCCOMB_X24_Y20_N24
\add_instance|Mux31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux31~3_combout\ = (\input_vector[17]~input_o\ & ((\add_instance|Mux31~2_combout\ & (\add_instance|RF[3][0]~q\)) # (!\add_instance|Mux31~2_combout\ & ((\add_instance|RF[2][0]~q\))))) # (!\input_vector[17]~input_o\ & 
-- (((\add_instance|Mux31~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|RF[3][0]~q\,
	datab => \input_vector[17]~input_o\,
	datac => \add_instance|RF[2][0]~q\,
	datad => \add_instance|Mux31~2_combout\,
	combout => \add_instance|Mux31~3_combout\);

-- Location: LCCOMB_X24_Y19_N14
\add_instance|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Decoder0~2_combout\ = (\input_vector[40]~input_o\ & (!\input_vector[39]~input_o\ & (\input_vector[41]~input_o\ & !\input_vector[38]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[40]~input_o\,
	datab => \input_vector[39]~input_o\,
	datac => \input_vector[41]~input_o\,
	datad => \input_vector[38]~input_o\,
	combout => \add_instance|Decoder0~2_combout\);

-- Location: FF_X25_Y19_N5
\add_instance|RF[4][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[22]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[4][0]~q\);

-- Location: LCCOMB_X24_Y19_N20
\add_instance|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Decoder0~1_combout\ = (\input_vector[40]~input_o\ & (\input_vector[39]~input_o\ & (\input_vector[41]~input_o\ & !\input_vector[38]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[40]~input_o\,
	datab => \input_vector[39]~input_o\,
	datac => \input_vector[41]~input_o\,
	datad => \input_vector[38]~input_o\,
	combout => \add_instance|Decoder0~1_combout\);

-- Location: FF_X24_Y19_N9
\add_instance|RF[6][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[22]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[6][0]~q\);

-- Location: LCCOMB_X24_Y19_N8
\add_instance|Mux31~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux31~0_combout\ = (\input_vector[17]~input_o\ & (((\add_instance|RF[6][0]~q\) # (\input_vector[16]~input_o\)))) # (!\input_vector[17]~input_o\ & (\add_instance|RF[4][0]~q\ & ((!\input_vector[16]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|RF[4][0]~q\,
	datab => \input_vector[17]~input_o\,
	datac => \add_instance|RF[6][0]~q\,
	datad => \input_vector[16]~input_o\,
	combout => \add_instance|Mux31~0_combout\);

-- Location: LCCOMB_X24_Y19_N2
\add_instance|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Decoder0~0_combout\ = (\input_vector[40]~input_o\ & (!\input_vector[39]~input_o\ & (\input_vector[41]~input_o\ & \input_vector[38]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[40]~input_o\,
	datab => \input_vector[39]~input_o\,
	datac => \input_vector[41]~input_o\,
	datad => \input_vector[38]~input_o\,
	combout => \add_instance|Decoder0~0_combout\);

-- Location: FF_X25_Y17_N11
\add_instance|RF[5][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[22]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[5][0]~q\);

-- Location: FF_X25_Y17_N21
\add_instance|RF[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[7][0]~q\);

-- Location: LCCOMB_X25_Y17_N10
\add_instance|Mux31~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux31~1_combout\ = (\input_vector[16]~input_o\ & ((\add_instance|Mux31~0_combout\ & ((\add_instance|RF[7][0]~q\))) # (!\add_instance|Mux31~0_combout\ & (\add_instance|RF[5][0]~q\)))) # (!\input_vector[16]~input_o\ & 
-- (\add_instance|Mux31~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[16]~input_o\,
	datab => \add_instance|Mux31~0_combout\,
	datac => \add_instance|RF[5][0]~q\,
	datad => \add_instance|RF[7][0]~q\,
	combout => \add_instance|Mux31~1_combout\);

-- Location: LCCOMB_X25_Y17_N22
\add_instance|Mux31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux31~4_combout\ = (\input_vector[18]~input_o\ & ((\add_instance|Mux31~1_combout\))) # (!\input_vector[18]~input_o\ & (\add_instance|Mux31~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[18]~input_o\,
	datac => \add_instance|Mux31~3_combout\,
	datad => \add_instance|Mux31~1_combout\,
	combout => \add_instance|Mux31~4_combout\);

-- Location: IOIBUF_X0_Y11_N22
\input_vector[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(23),
	o => \input_vector[23]~input_o\);

-- Location: FF_X24_Y20_N23
\add_instance|RF[3][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[23]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[3][1]~q\);

-- Location: FF_X24_Y20_N21
\add_instance|RF[2][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[23]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[2][1]~q\);

-- Location: FF_X26_Y16_N15
\add_instance|RF[0][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[23]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[0][1]~q\);

-- Location: FF_X26_Y16_N13
\add_instance|RF[1][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[23]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[1][1]~q\);

-- Location: LCCOMB_X26_Y16_N12
\add_instance|Mux30~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux30~2_combout\ = (\input_vector[17]~input_o\ & (((\input_vector[16]~input_o\)))) # (!\input_vector[17]~input_o\ & ((\input_vector[16]~input_o\ & ((\add_instance|RF[1][1]~q\))) # (!\input_vector[16]~input_o\ & (\add_instance|RF[0][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[17]~input_o\,
	datab => \add_instance|RF[0][1]~q\,
	datac => \add_instance|RF[1][1]~q\,
	datad => \input_vector[16]~input_o\,
	combout => \add_instance|Mux30~2_combout\);

-- Location: LCCOMB_X24_Y20_N20
\add_instance|Mux30~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux30~3_combout\ = (\input_vector[17]~input_o\ & ((\add_instance|Mux30~2_combout\ & (\add_instance|RF[3][1]~q\)) # (!\add_instance|Mux30~2_combout\ & ((\add_instance|RF[2][1]~q\))))) # (!\input_vector[17]~input_o\ & 
-- (((\add_instance|Mux30~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|RF[3][1]~q\,
	datab => \input_vector[17]~input_o\,
	datac => \add_instance|RF[2][1]~q\,
	datad => \add_instance|Mux30~2_combout\,
	combout => \add_instance|Mux30~3_combout\);

-- Location: FF_X24_Y19_N11
\add_instance|RF[6][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[23]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[6][1]~q\);

-- Location: FF_X25_Y19_N23
\add_instance|RF[4][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[23]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[4][1]~q\);

-- Location: LCCOMB_X24_Y19_N10
\add_instance|Mux30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux30~0_combout\ = (\input_vector[16]~input_o\ & (\input_vector[17]~input_o\)) # (!\input_vector[16]~input_o\ & ((\input_vector[17]~input_o\ & (\add_instance|RF[6][1]~q\)) # (!\input_vector[17]~input_o\ & ((\add_instance|RF[4][1]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[16]~input_o\,
	datab => \input_vector[17]~input_o\,
	datac => \add_instance|RF[6][1]~q\,
	datad => \add_instance|RF[4][1]~q\,
	combout => \add_instance|Mux30~0_combout\);

-- Location: FF_X24_Y16_N31
\add_instance|RF[5][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[23]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[5][1]~q\);

-- Location: FF_X24_Y16_N17
\add_instance|RF[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[7][1]~q\);

-- Location: LCCOMB_X24_Y16_N30
\add_instance|Mux30~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux30~1_combout\ = (\add_instance|Mux30~0_combout\ & (((\add_instance|RF[7][1]~q\)) # (!\input_vector[16]~input_o\))) # (!\add_instance|Mux30~0_combout\ & (\input_vector[16]~input_o\ & (\add_instance|RF[5][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux30~0_combout\,
	datab => \input_vector[16]~input_o\,
	datac => \add_instance|RF[5][1]~q\,
	datad => \add_instance|RF[7][1]~q\,
	combout => \add_instance|Mux30~1_combout\);

-- Location: LCCOMB_X24_Y16_N10
\add_instance|Mux30~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux30~4_combout\ = (\input_vector[18]~input_o\ & ((\add_instance|Mux30~1_combout\))) # (!\input_vector[18]~input_o\ & (\add_instance|Mux30~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[18]~input_o\,
	datac => \add_instance|Mux30~3_combout\,
	datad => \add_instance|Mux30~1_combout\,
	combout => \add_instance|Mux30~4_combout\);

-- Location: IOIBUF_X34_Y9_N22
\input_vector[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(24),
	o => \input_vector[24]~input_o\);

-- Location: FF_X25_Y16_N19
\add_instance|RF[3][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[24]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[3][2]~q\);

-- Location: FF_X25_Y16_N25
\add_instance|RF[2][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[24]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[2][2]~q\);

-- Location: FF_X26_Y16_N25
\add_instance|RF[1][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[24]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[1][2]~q\);

-- Location: FF_X26_Y16_N19
\add_instance|RF[0][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[24]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[0][2]~q\);

-- Location: LCCOMB_X26_Y16_N24
\add_instance|Mux29~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux29~2_combout\ = (\input_vector[17]~input_o\ & (\input_vector[16]~input_o\)) # (!\input_vector[17]~input_o\ & ((\input_vector[16]~input_o\ & (\add_instance|RF[1][2]~q\)) # (!\input_vector[16]~input_o\ & ((\add_instance|RF[0][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[17]~input_o\,
	datab => \input_vector[16]~input_o\,
	datac => \add_instance|RF[1][2]~q\,
	datad => \add_instance|RF[0][2]~q\,
	combout => \add_instance|Mux29~2_combout\);

-- Location: LCCOMB_X25_Y16_N24
\add_instance|Mux29~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux29~3_combout\ = (\input_vector[17]~input_o\ & ((\add_instance|Mux29~2_combout\ & (\add_instance|RF[3][2]~q\)) # (!\add_instance|Mux29~2_combout\ & ((\add_instance|RF[2][2]~q\))))) # (!\input_vector[17]~input_o\ & 
-- (((\add_instance|Mux29~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|RF[3][2]~q\,
	datab => \input_vector[17]~input_o\,
	datac => \add_instance|RF[2][2]~q\,
	datad => \add_instance|Mux29~2_combout\,
	combout => \add_instance|Mux29~3_combout\);

-- Location: FF_X24_Y19_N13
\add_instance|RF[6][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[24]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[6][2]~q\);

-- Location: FF_X25_Y19_N25
\add_instance|RF[4][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[24]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[4][2]~q\);

-- Location: LCCOMB_X24_Y19_N12
\add_instance|Mux29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux29~0_combout\ = (\input_vector[16]~input_o\ & (\input_vector[17]~input_o\)) # (!\input_vector[16]~input_o\ & ((\input_vector[17]~input_o\ & (\add_instance|RF[6][2]~q\)) # (!\input_vector[17]~input_o\ & ((\add_instance|RF[4][2]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[16]~input_o\,
	datab => \input_vector[17]~input_o\,
	datac => \add_instance|RF[6][2]~q\,
	datad => \add_instance|RF[4][2]~q\,
	combout => \add_instance|Mux29~0_combout\);

-- Location: FF_X25_Y17_N1
\add_instance|RF[5][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[24]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[5][2]~q\);

-- Location: FF_X25_Y17_N19
\add_instance|RF[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[7][2]~q\);

-- Location: LCCOMB_X25_Y17_N0
\add_instance|Mux29~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux29~1_combout\ = (\input_vector[16]~input_o\ & ((\add_instance|Mux29~0_combout\ & ((\add_instance|RF[7][2]~q\))) # (!\add_instance|Mux29~0_combout\ & (\add_instance|RF[5][2]~q\)))) # (!\input_vector[16]~input_o\ & 
-- (\add_instance|Mux29~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[16]~input_o\,
	datab => \add_instance|Mux29~0_combout\,
	datac => \add_instance|RF[5][2]~q\,
	datad => \add_instance|RF[7][2]~q\,
	combout => \add_instance|Mux29~1_combout\);

-- Location: LCCOMB_X25_Y17_N28
\add_instance|Mux29~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux29~4_combout\ = (\input_vector[18]~input_o\ & ((\add_instance|Mux29~1_combout\))) # (!\input_vector[18]~input_o\ & (\add_instance|Mux29~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[18]~input_o\,
	datab => \add_instance|Mux29~3_combout\,
	datac => \add_instance|Mux29~1_combout\,
	combout => \add_instance|Mux29~4_combout\);

-- Location: IOIBUF_X34_Y18_N15
\input_vector[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(25),
	o => \input_vector[25]~input_o\);

-- Location: FF_X24_Y19_N31
\add_instance|RF[6][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[25]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[6][3]~q\);

-- Location: FF_X25_Y19_N27
\add_instance|RF[4][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[25]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[4][3]~q\);

-- Location: LCCOMB_X24_Y19_N30
\add_instance|Mux28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux28~0_combout\ = (\input_vector[16]~input_o\ & (\input_vector[17]~input_o\)) # (!\input_vector[16]~input_o\ & ((\input_vector[17]~input_o\ & (\add_instance|RF[6][3]~q\)) # (!\input_vector[17]~input_o\ & ((\add_instance|RF[4][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[16]~input_o\,
	datab => \input_vector[17]~input_o\,
	datac => \add_instance|RF[6][3]~q\,
	datad => \add_instance|RF[4][3]~q\,
	combout => \add_instance|Mux28~0_combout\);

-- Location: FF_X25_Y17_N15
\add_instance|RF[5][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[25]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[5][3]~q\);

-- Location: FF_X25_Y19_N29
\add_instance|RF[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[7][3]~q\);

-- Location: LCCOMB_X25_Y17_N14
\add_instance|Mux28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux28~1_combout\ = (\input_vector[16]~input_o\ & ((\add_instance|Mux28~0_combout\ & ((\add_instance|RF[7][3]~q\))) # (!\add_instance|Mux28~0_combout\ & (\add_instance|RF[5][3]~q\)))) # (!\input_vector[16]~input_o\ & 
-- (\add_instance|Mux28~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[16]~input_o\,
	datab => \add_instance|Mux28~0_combout\,
	datac => \add_instance|RF[5][3]~q\,
	datad => \add_instance|RF[7][3]~q\,
	combout => \add_instance|Mux28~1_combout\);

-- Location: FF_X25_Y16_N7
\add_instance|RF[3][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[25]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[3][3]~q\);

-- Location: FF_X25_Y16_N13
\add_instance|RF[2][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[25]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[2][3]~q\);

-- Location: FF_X26_Y16_N5
\add_instance|RF[1][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[25]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[1][3]~q\);

-- Location: FF_X26_Y16_N23
\add_instance|RF[0][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[25]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[0][3]~q\);

-- Location: LCCOMB_X26_Y16_N4
\add_instance|Mux28~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux28~2_combout\ = (\input_vector[17]~input_o\ & (\input_vector[16]~input_o\)) # (!\input_vector[17]~input_o\ & ((\input_vector[16]~input_o\ & (\add_instance|RF[1][3]~q\)) # (!\input_vector[16]~input_o\ & ((\add_instance|RF[0][3]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[17]~input_o\,
	datab => \input_vector[16]~input_o\,
	datac => \add_instance|RF[1][3]~q\,
	datad => \add_instance|RF[0][3]~q\,
	combout => \add_instance|Mux28~2_combout\);

-- Location: LCCOMB_X25_Y16_N12
\add_instance|Mux28~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux28~3_combout\ = (\input_vector[17]~input_o\ & ((\add_instance|Mux28~2_combout\ & (\add_instance|RF[3][3]~q\)) # (!\add_instance|Mux28~2_combout\ & ((\add_instance|RF[2][3]~q\))))) # (!\input_vector[17]~input_o\ & 
-- (((\add_instance|Mux28~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|RF[3][3]~q\,
	datab => \input_vector[17]~input_o\,
	datac => \add_instance|RF[2][3]~q\,
	datad => \add_instance|Mux28~2_combout\,
	combout => \add_instance|Mux28~3_combout\);

-- Location: LCCOMB_X25_Y17_N8
\add_instance|Mux28~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux28~4_combout\ = (\input_vector[18]~input_o\ & (\add_instance|Mux28~1_combout\)) # (!\input_vector[18]~input_o\ & ((\add_instance|Mux28~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[18]~input_o\,
	datac => \add_instance|Mux28~1_combout\,
	datad => \add_instance|Mux28~3_combout\,
	combout => \add_instance|Mux28~4_combout\);

-- Location: IOIBUF_X34_Y19_N1
\input_vector[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(26),
	o => \input_vector[26]~input_o\);

-- Location: FF_X25_Y19_N7
\add_instance|RF[4][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[26]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[4][4]~q\);

-- Location: FF_X24_Y19_N25
\add_instance|RF[6][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[26]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[6][4]~q\);

-- Location: LCCOMB_X24_Y19_N24
\add_instance|Mux27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux27~0_combout\ = (\input_vector[16]~input_o\ & (((\input_vector[17]~input_o\)))) # (!\input_vector[16]~input_o\ & ((\input_vector[17]~input_o\ & ((\add_instance|RF[6][4]~q\))) # (!\input_vector[17]~input_o\ & (\add_instance|RF[4][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[16]~input_o\,
	datab => \add_instance|RF[4][4]~q\,
	datac => \add_instance|RF[6][4]~q\,
	datad => \input_vector[17]~input_o\,
	combout => \add_instance|Mux27~0_combout\);

-- Location: FF_X25_Y17_N27
\add_instance|RF[5][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[26]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[5][4]~q\);

-- Location: FF_X25_Y19_N9
\add_instance|RF[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[4]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[7][4]~q\);

-- Location: LCCOMB_X25_Y17_N26
\add_instance|Mux27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux27~1_combout\ = (\input_vector[16]~input_o\ & ((\add_instance|Mux27~0_combout\ & ((\add_instance|RF[7][4]~q\))) # (!\add_instance|Mux27~0_combout\ & (\add_instance|RF[5][4]~q\)))) # (!\input_vector[16]~input_o\ & 
-- (\add_instance|Mux27~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[16]~input_o\,
	datab => \add_instance|Mux27~0_combout\,
	datac => \add_instance|RF[5][4]~q\,
	datad => \add_instance|RF[7][4]~q\,
	combout => \add_instance|Mux27~1_combout\);

-- Location: FF_X25_Y16_N27
\add_instance|RF[3][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[26]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[3][4]~q\);

-- Location: FF_X26_Y16_N9
\add_instance|RF[1][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[26]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[1][4]~q\);

-- Location: FF_X26_Y16_N3
\add_instance|RF[0][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[26]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[0][4]~q\);

-- Location: LCCOMB_X26_Y16_N8
\add_instance|Mux27~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux27~2_combout\ = (\input_vector[17]~input_o\ & (\input_vector[16]~input_o\)) # (!\input_vector[17]~input_o\ & ((\input_vector[16]~input_o\ & (\add_instance|RF[1][4]~q\)) # (!\input_vector[16]~input_o\ & ((\add_instance|RF[0][4]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[17]~input_o\,
	datab => \input_vector[16]~input_o\,
	datac => \add_instance|RF[1][4]~q\,
	datad => \add_instance|RF[0][4]~q\,
	combout => \add_instance|Mux27~2_combout\);

-- Location: FF_X25_Y16_N1
\add_instance|RF[2][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[26]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[2][4]~q\);

-- Location: LCCOMB_X25_Y16_N0
\add_instance|Mux27~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux27~3_combout\ = (\add_instance|Mux27~2_combout\ & ((\add_instance|RF[3][4]~q\) # ((!\input_vector[17]~input_o\)))) # (!\add_instance|Mux27~2_combout\ & (((\add_instance|RF[2][4]~q\ & \input_vector[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|RF[3][4]~q\,
	datab => \add_instance|Mux27~2_combout\,
	datac => \add_instance|RF[2][4]~q\,
	datad => \input_vector[17]~input_o\,
	combout => \add_instance|Mux27~3_combout\);

-- Location: LCCOMB_X25_Y17_N12
\add_instance|Mux27~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux27~4_combout\ = (\input_vector[18]~input_o\ & (\add_instance|Mux27~1_combout\)) # (!\input_vector[18]~input_o\ & ((\add_instance|Mux27~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[18]~input_o\,
	datac => \add_instance|Mux27~1_combout\,
	datad => \add_instance|Mux27~3_combout\,
	combout => \add_instance|Mux27~4_combout\);

-- Location: IOIBUF_X34_Y18_N1
\input_vector[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(27),
	o => \input_vector[27]~input_o\);

-- Location: FF_X24_Y19_N19
\add_instance|RF[6][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[27]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[6][5]~q\);

-- Location: FF_X25_Y19_N3
\add_instance|RF[4][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[27]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[4][5]~q\);

-- Location: LCCOMB_X24_Y19_N18
\add_instance|Mux26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux26~0_combout\ = (\input_vector[16]~input_o\ & (\input_vector[17]~input_o\)) # (!\input_vector[16]~input_o\ & ((\input_vector[17]~input_o\ & (\add_instance|RF[6][5]~q\)) # (!\input_vector[17]~input_o\ & ((\add_instance|RF[4][5]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[16]~input_o\,
	datab => \input_vector[17]~input_o\,
	datac => \add_instance|RF[6][5]~q\,
	datad => \add_instance|RF[4][5]~q\,
	combout => \add_instance|Mux26~0_combout\);

-- Location: FF_X25_Y17_N31
\add_instance|RF[5][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[27]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[5][5]~q\);

-- Location: FF_X25_Y19_N21
\add_instance|RF[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[5]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[7][5]~q\);

-- Location: LCCOMB_X25_Y17_N30
\add_instance|Mux26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux26~1_combout\ = (\input_vector[16]~input_o\ & ((\add_instance|Mux26~0_combout\ & ((\add_instance|RF[7][5]~q\))) # (!\add_instance|Mux26~0_combout\ & (\add_instance|RF[5][5]~q\)))) # (!\input_vector[16]~input_o\ & 
-- (\add_instance|Mux26~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[16]~input_o\,
	datab => \add_instance|Mux26~0_combout\,
	datac => \add_instance|RF[5][5]~q\,
	datad => \add_instance|RF[7][5]~q\,
	combout => \add_instance|Mux26~1_combout\);

-- Location: FF_X25_Y16_N23
\add_instance|RF[3][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[27]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[3][5]~q\);

-- Location: FF_X25_Y16_N5
\add_instance|RF[2][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[27]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[2][5]~q\);

-- Location: FF_X26_Y16_N31
\add_instance|RF[0][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[27]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[0][5]~q\);

-- Location: FF_X26_Y16_N21
\add_instance|RF[1][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[27]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[1][5]~q\);

-- Location: LCCOMB_X26_Y16_N20
\add_instance|Mux26~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux26~2_combout\ = (\input_vector[16]~input_o\ & (((\add_instance|RF[1][5]~q\) # (\input_vector[17]~input_o\)))) # (!\input_vector[16]~input_o\ & (\add_instance|RF[0][5]~q\ & ((!\input_vector[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|RF[0][5]~q\,
	datab => \input_vector[16]~input_o\,
	datac => \add_instance|RF[1][5]~q\,
	datad => \input_vector[17]~input_o\,
	combout => \add_instance|Mux26~2_combout\);

-- Location: LCCOMB_X25_Y16_N4
\add_instance|Mux26~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux26~3_combout\ = (\input_vector[17]~input_o\ & ((\add_instance|Mux26~2_combout\ & (\add_instance|RF[3][5]~q\)) # (!\add_instance|Mux26~2_combout\ & ((\add_instance|RF[2][5]~q\))))) # (!\input_vector[17]~input_o\ & 
-- (((\add_instance|Mux26~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|RF[3][5]~q\,
	datab => \input_vector[17]~input_o\,
	datac => \add_instance|RF[2][5]~q\,
	datad => \add_instance|Mux26~2_combout\,
	combout => \add_instance|Mux26~3_combout\);

-- Location: LCCOMB_X25_Y17_N16
\add_instance|Mux26~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux26~4_combout\ = (\input_vector[18]~input_o\ & (\add_instance|Mux26~1_combout\)) # (!\input_vector[18]~input_o\ & ((\add_instance|Mux26~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[18]~input_o\,
	datac => \add_instance|Mux26~1_combout\,
	datad => \add_instance|Mux26~3_combout\,
	combout => \add_instance|Mux26~4_combout\);

-- Location: IOIBUF_X34_Y7_N8
\input_vector[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(28),
	o => \input_vector[28]~input_o\);

-- Location: FF_X25_Y16_N11
\add_instance|RF[3][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[28]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[3][6]~q\);

-- Location: FF_X25_Y16_N9
\add_instance|RF[2][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[28]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[2][6]~q\);

-- Location: FF_X26_Y16_N17
\add_instance|RF[1][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[28]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[1][6]~q\);

-- Location: FF_X26_Y16_N11
\add_instance|RF[0][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[28]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[0][6]~q\);

-- Location: LCCOMB_X26_Y16_N16
\add_instance|Mux25~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux25~2_combout\ = (\input_vector[17]~input_o\ & (\input_vector[16]~input_o\)) # (!\input_vector[17]~input_o\ & ((\input_vector[16]~input_o\ & (\add_instance|RF[1][6]~q\)) # (!\input_vector[16]~input_o\ & ((\add_instance|RF[0][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[17]~input_o\,
	datab => \input_vector[16]~input_o\,
	datac => \add_instance|RF[1][6]~q\,
	datad => \add_instance|RF[0][6]~q\,
	combout => \add_instance|Mux25~2_combout\);

-- Location: LCCOMB_X25_Y16_N8
\add_instance|Mux25~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux25~3_combout\ = (\input_vector[17]~input_o\ & ((\add_instance|Mux25~2_combout\ & (\add_instance|RF[3][6]~q\)) # (!\add_instance|Mux25~2_combout\ & ((\add_instance|RF[2][6]~q\))))) # (!\input_vector[17]~input_o\ & 
-- (((\add_instance|Mux25~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|RF[3][6]~q\,
	datab => \input_vector[17]~input_o\,
	datac => \add_instance|RF[2][6]~q\,
	datad => \add_instance|Mux25~2_combout\,
	combout => \add_instance|Mux25~3_combout\);

-- Location: FF_X24_Y16_N15
\add_instance|RF[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[6]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[7][6]~q\);

-- Location: FF_X24_Y16_N21
\add_instance|RF[5][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[28]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[5][6]~q\);

-- Location: FF_X24_Y19_N29
\add_instance|RF[6][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[28]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[6][6]~q\);

-- Location: FF_X25_Y19_N31
\add_instance|RF[4][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[28]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[4][6]~q\);

-- Location: LCCOMB_X24_Y19_N28
\add_instance|Mux25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux25~0_combout\ = (\input_vector[16]~input_o\ & (\input_vector[17]~input_o\)) # (!\input_vector[16]~input_o\ & ((\input_vector[17]~input_o\ & (\add_instance|RF[6][6]~q\)) # (!\input_vector[17]~input_o\ & ((\add_instance|RF[4][6]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[16]~input_o\,
	datab => \input_vector[17]~input_o\,
	datac => \add_instance|RF[6][6]~q\,
	datad => \add_instance|RF[4][6]~q\,
	combout => \add_instance|Mux25~0_combout\);

-- Location: LCCOMB_X24_Y16_N20
\add_instance|Mux25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux25~1_combout\ = (\input_vector[16]~input_o\ & ((\add_instance|Mux25~0_combout\ & (\add_instance|RF[7][6]~q\)) # (!\add_instance|Mux25~0_combout\ & ((\add_instance|RF[5][6]~q\))))) # (!\input_vector[16]~input_o\ & 
-- (((\add_instance|Mux25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[16]~input_o\,
	datab => \add_instance|RF[7][6]~q\,
	datac => \add_instance|RF[5][6]~q\,
	datad => \add_instance|Mux25~0_combout\,
	combout => \add_instance|Mux25~1_combout\);

-- Location: LCCOMB_X24_Y16_N8
\add_instance|Mux25~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux25~4_combout\ = (\input_vector[18]~input_o\ & ((\add_instance|Mux25~1_combout\))) # (!\input_vector[18]~input_o\ & (\add_instance|Mux25~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux25~3_combout\,
	datab => \add_instance|Mux25~1_combout\,
	datad => \input_vector[18]~input_o\,
	combout => \add_instance|Mux25~4_combout\);

-- Location: IOIBUF_X34_Y20_N1
\input_vector[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(29),
	o => \input_vector[29]~input_o\);

-- Location: FF_X25_Y16_N31
\add_instance|RF[3][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[29]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[3][7]~q\);

-- Location: FF_X25_Y16_N21
\add_instance|RF[2][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[29]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[2][7]~q\);

-- Location: FF_X26_Y16_N29
\add_instance|RF[1][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[29]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[1][7]~q\);

-- Location: FF_X26_Y16_N7
\add_instance|RF[0][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[29]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[0][7]~q\);

-- Location: LCCOMB_X26_Y16_N28
\add_instance|Mux24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux24~2_combout\ = (\input_vector[17]~input_o\ & (\input_vector[16]~input_o\)) # (!\input_vector[17]~input_o\ & ((\input_vector[16]~input_o\ & (\add_instance|RF[1][7]~q\)) # (!\input_vector[16]~input_o\ & ((\add_instance|RF[0][7]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[17]~input_o\,
	datab => \input_vector[16]~input_o\,
	datac => \add_instance|RF[1][7]~q\,
	datad => \add_instance|RF[0][7]~q\,
	combout => \add_instance|Mux24~2_combout\);

-- Location: LCCOMB_X25_Y16_N20
\add_instance|Mux24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux24~3_combout\ = (\input_vector[17]~input_o\ & ((\add_instance|Mux24~2_combout\ & (\add_instance|RF[3][7]~q\)) # (!\add_instance|Mux24~2_combout\ & ((\add_instance|RF[2][7]~q\))))) # (!\input_vector[17]~input_o\ & 
-- (((\add_instance|Mux24~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|RF[3][7]~q\,
	datab => \input_vector[17]~input_o\,
	datac => \add_instance|RF[2][7]~q\,
	datad => \add_instance|Mux24~2_combout\,
	combout => \add_instance|Mux24~3_combout\);

-- Location: FF_X22_Y20_N11
\add_instance|RF[4][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[29]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[4][7]~q\);

-- Location: FF_X22_Y20_N25
\add_instance|RF[6][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[29]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[6][7]~q\);

-- Location: LCCOMB_X22_Y20_N24
\add_instance|Mux24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux24~0_combout\ = (\input_vector[16]~input_o\ & (((\input_vector[17]~input_o\)))) # (!\input_vector[16]~input_o\ & ((\input_vector[17]~input_o\ & ((\add_instance|RF[6][7]~q\))) # (!\input_vector[17]~input_o\ & (\add_instance|RF[4][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|RF[4][7]~q\,
	datab => \input_vector[16]~input_o\,
	datac => \add_instance|RF[6][7]~q\,
	datad => \input_vector[17]~input_o\,
	combout => \add_instance|Mux24~0_combout\);

-- Location: FF_X24_Y16_N3
\add_instance|RF[5][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[29]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[5][7]~q\);

-- Location: FF_X24_Y16_N29
\add_instance|RF[7][7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[7]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[7][7]~q\);

-- Location: LCCOMB_X24_Y16_N2
\add_instance|Mux24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux24~1_combout\ = (\add_instance|Mux24~0_combout\ & (((\add_instance|RF[7][7]~q\)) # (!\input_vector[16]~input_o\))) # (!\add_instance|Mux24~0_combout\ & (\input_vector[16]~input_o\ & (\add_instance|RF[5][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux24~0_combout\,
	datab => \input_vector[16]~input_o\,
	datac => \add_instance|RF[5][7]~q\,
	datad => \add_instance|RF[7][7]~q\,
	combout => \add_instance|Mux24~1_combout\);

-- Location: LCCOMB_X24_Y16_N22
\add_instance|Mux24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux24~4_combout\ = (\input_vector[18]~input_o\ & ((\add_instance|Mux24~1_combout\))) # (!\input_vector[18]~input_o\ & (\add_instance|Mux24~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux24~3_combout\,
	datac => \add_instance|Mux24~1_combout\,
	datad => \input_vector[18]~input_o\,
	combout => \add_instance|Mux24~4_combout\);

-- Location: FF_X23_Y20_N21
\add_instance|RF[7][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[8]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[7][8]~q\);

-- Location: IOIBUF_X21_Y24_N1
\input_vector[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(30),
	o => \input_vector[30]~input_o\);

-- Location: FF_X23_Y20_N3
\add_instance|RF[5][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[30]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[5][8]~q\);

-- Location: FF_X22_Y20_N23
\add_instance|RF[4][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[30]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[4][8]~q\);

-- Location: FF_X22_Y20_N13
\add_instance|RF[6][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[30]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[6][8]~q\);

-- Location: LCCOMB_X22_Y20_N12
\add_instance|Mux23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux23~0_combout\ = (\input_vector[16]~input_o\ & (((\input_vector[17]~input_o\)))) # (!\input_vector[16]~input_o\ & ((\input_vector[17]~input_o\ & ((\add_instance|RF[6][8]~q\))) # (!\input_vector[17]~input_o\ & (\add_instance|RF[4][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|RF[4][8]~q\,
	datab => \input_vector[16]~input_o\,
	datac => \add_instance|RF[6][8]~q\,
	datad => \input_vector[17]~input_o\,
	combout => \add_instance|Mux23~0_combout\);

-- Location: LCCOMB_X23_Y20_N2
\add_instance|Mux23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux23~1_combout\ = (\input_vector[16]~input_o\ & ((\add_instance|Mux23~0_combout\ & (\add_instance|RF[7][8]~q\)) # (!\add_instance|Mux23~0_combout\ & ((\add_instance|RF[5][8]~q\))))) # (!\input_vector[16]~input_o\ & 
-- (((\add_instance|Mux23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[16]~input_o\,
	datab => \add_instance|RF[7][8]~q\,
	datac => \add_instance|RF[5][8]~q\,
	datad => \add_instance|Mux23~0_combout\,
	combout => \add_instance|Mux23~1_combout\);

-- Location: FF_X19_Y20_N19
\add_instance|RF[3][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[30]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[3][8]~q\);

-- Location: FF_X19_Y20_N9
\add_instance|RF[2][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[30]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[2][8]~q\);

-- Location: FF_X21_Y20_N17
\add_instance|RF[1][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[30]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[1][8]~q\);

-- Location: FF_X21_Y20_N11
\add_instance|RF[0][8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[30]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[0][8]~q\);

-- Location: LCCOMB_X21_Y20_N16
\add_instance|Mux23~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux23~2_combout\ = (\input_vector[16]~input_o\ & ((\input_vector[17]~input_o\) # ((\add_instance|RF[1][8]~q\)))) # (!\input_vector[16]~input_o\ & (!\input_vector[17]~input_o\ & ((\add_instance|RF[0][8]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[16]~input_o\,
	datab => \input_vector[17]~input_o\,
	datac => \add_instance|RF[1][8]~q\,
	datad => \add_instance|RF[0][8]~q\,
	combout => \add_instance|Mux23~2_combout\);

-- Location: LCCOMB_X19_Y20_N8
\add_instance|Mux23~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux23~3_combout\ = (\input_vector[17]~input_o\ & ((\add_instance|Mux23~2_combout\ & (\add_instance|RF[3][8]~q\)) # (!\add_instance|Mux23~2_combout\ & ((\add_instance|RF[2][8]~q\))))) # (!\input_vector[17]~input_o\ & 
-- (((\add_instance|Mux23~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[17]~input_o\,
	datab => \add_instance|RF[3][8]~q\,
	datac => \add_instance|RF[2][8]~q\,
	datad => \add_instance|Mux23~2_combout\,
	combout => \add_instance|Mux23~3_combout\);

-- Location: LCCOMB_X19_Y20_N20
\add_instance|Mux23~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux23~4_combout\ = (\input_vector[18]~input_o\ & (\add_instance|Mux23~1_combout\)) # (!\input_vector[18]~input_o\ & ((\add_instance|Mux23~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux23~1_combout\,
	datab => \input_vector[18]~input_o\,
	datac => \add_instance|Mux23~3_combout\,
	combout => \add_instance|Mux23~4_combout\);

-- Location: IOIBUF_X16_Y24_N15
\input_vector[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(31),
	o => \input_vector[31]~input_o\);

-- Location: FF_X19_Y20_N1
\add_instance|RF[3][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[31]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[3][9]~q\);

-- Location: FF_X19_Y20_N31
\add_instance|RF[2][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[31]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[2][9]~q\);

-- Location: FF_X21_Y20_N29
\add_instance|RF[1][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[31]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[1][9]~q\);

-- Location: FF_X21_Y20_N7
\add_instance|RF[0][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[31]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[0][9]~q\);

-- Location: LCCOMB_X21_Y20_N28
\add_instance|Mux22~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux22~2_combout\ = (\input_vector[16]~input_o\ & ((\input_vector[17]~input_o\) # ((\add_instance|RF[1][9]~q\)))) # (!\input_vector[16]~input_o\ & (!\input_vector[17]~input_o\ & ((\add_instance|RF[0][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[16]~input_o\,
	datab => \input_vector[17]~input_o\,
	datac => \add_instance|RF[1][9]~q\,
	datad => \add_instance|RF[0][9]~q\,
	combout => \add_instance|Mux22~2_combout\);

-- Location: LCCOMB_X19_Y20_N30
\add_instance|Mux22~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux22~3_combout\ = (\input_vector[17]~input_o\ & ((\add_instance|Mux22~2_combout\ & (\add_instance|RF[3][9]~q\)) # (!\add_instance|Mux22~2_combout\ & ((\add_instance|RF[2][9]~q\))))) # (!\input_vector[17]~input_o\ & 
-- (((\add_instance|Mux22~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[17]~input_o\,
	datab => \add_instance|RF[3][9]~q\,
	datac => \add_instance|RF[2][9]~q\,
	datad => \add_instance|Mux22~2_combout\,
	combout => \add_instance|Mux22~3_combout\);

-- Location: FF_X22_Y20_N27
\add_instance|RF[4][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[31]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[4][9]~q\);

-- Location: FF_X22_Y20_N1
\add_instance|RF[6][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[31]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[6][9]~q\);

-- Location: LCCOMB_X22_Y20_N0
\add_instance|Mux22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux22~0_combout\ = (\input_vector[16]~input_o\ & (((\input_vector[17]~input_o\)))) # (!\input_vector[16]~input_o\ & ((\input_vector[17]~input_o\ & ((\add_instance|RF[6][9]~q\))) # (!\input_vector[17]~input_o\ & (\add_instance|RF[4][9]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|RF[4][9]~q\,
	datab => \input_vector[16]~input_o\,
	datac => \add_instance|RF[6][9]~q\,
	datad => \input_vector[17]~input_o\,
	combout => \add_instance|Mux22~0_combout\);

-- Location: FF_X18_Y20_N23
\add_instance|RF[5][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[31]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[5][9]~q\);

-- Location: FF_X18_Y20_N9
\add_instance|RF[7][9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[9]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[7][9]~q\);

-- Location: LCCOMB_X18_Y20_N22
\add_instance|Mux22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux22~1_combout\ = (\add_instance|Mux22~0_combout\ & (((\add_instance|RF[7][9]~q\)) # (!\input_vector[16]~input_o\))) # (!\add_instance|Mux22~0_combout\ & (\input_vector[16]~input_o\ & (\add_instance|RF[5][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux22~0_combout\,
	datab => \input_vector[16]~input_o\,
	datac => \add_instance|RF[5][9]~q\,
	datad => \add_instance|RF[7][9]~q\,
	combout => \add_instance|Mux22~1_combout\);

-- Location: LCCOMB_X18_Y20_N18
\add_instance|Mux22~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux22~4_combout\ = (\input_vector[18]~input_o\ & ((\add_instance|Mux22~1_combout\))) # (!\input_vector[18]~input_o\ & (\add_instance|Mux22~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_vector[18]~input_o\,
	datac => \add_instance|Mux22~3_combout\,
	datad => \add_instance|Mux22~1_combout\,
	combout => \add_instance|Mux22~4_combout\);

-- Location: IOIBUF_X16_Y24_N22
\input_vector[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(32),
	o => \input_vector[32]~input_o\);

-- Location: FF_X21_Y20_N27
\add_instance|RF[0][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[32]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[0][10]~q\);

-- Location: FF_X21_Y20_N25
\add_instance|RF[1][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[32]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[1][10]~q\);

-- Location: LCCOMB_X21_Y20_N24
\add_instance|Mux21~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux21~2_combout\ = (\input_vector[17]~input_o\ & (((\input_vector[16]~input_o\)))) # (!\input_vector[17]~input_o\ & ((\input_vector[16]~input_o\ & ((\add_instance|RF[1][10]~q\))) # (!\input_vector[16]~input_o\ & 
-- (\add_instance|RF[0][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|RF[0][10]~q\,
	datab => \input_vector[17]~input_o\,
	datac => \add_instance|RF[1][10]~q\,
	datad => \input_vector[16]~input_o\,
	combout => \add_instance|Mux21~2_combout\);

-- Location: FF_X19_Y20_N29
\add_instance|RF[3][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[32]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[3][10]~q\);

-- Location: FF_X19_Y20_N11
\add_instance|RF[2][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[32]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[2][10]~q\);

-- Location: LCCOMB_X19_Y20_N10
\add_instance|Mux21~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux21~3_combout\ = (\add_instance|Mux21~2_combout\ & ((\add_instance|RF[3][10]~q\) # ((!\input_vector[17]~input_o\)))) # (!\add_instance|Mux21~2_combout\ & (((\add_instance|RF[2][10]~q\ & \input_vector[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux21~2_combout\,
	datab => \add_instance|RF[3][10]~q\,
	datac => \add_instance|RF[2][10]~q\,
	datad => \input_vector[17]~input_o\,
	combout => \add_instance|Mux21~3_combout\);

-- Location: FF_X18_Y20_N15
\add_instance|RF[7][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[10]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[7][10]~q\);

-- Location: FF_X18_Y20_N13
\add_instance|RF[5][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[32]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[5][10]~q\);

-- Location: FF_X22_Y20_N15
\add_instance|RF[4][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[32]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[4][10]~q\);

-- Location: FF_X22_Y20_N29
\add_instance|RF[6][10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[32]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[6][10]~q\);

-- Location: LCCOMB_X22_Y20_N28
\add_instance|Mux21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux21~0_combout\ = (\input_vector[16]~input_o\ & (((\input_vector[17]~input_o\)))) # (!\input_vector[16]~input_o\ & ((\input_vector[17]~input_o\ & ((\add_instance|RF[6][10]~q\))) # (!\input_vector[17]~input_o\ & 
-- (\add_instance|RF[4][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[16]~input_o\,
	datab => \add_instance|RF[4][10]~q\,
	datac => \add_instance|RF[6][10]~q\,
	datad => \input_vector[17]~input_o\,
	combout => \add_instance|Mux21~0_combout\);

-- Location: LCCOMB_X18_Y20_N12
\add_instance|Mux21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux21~1_combout\ = (\input_vector[16]~input_o\ & ((\add_instance|Mux21~0_combout\ & (\add_instance|RF[7][10]~q\)) # (!\add_instance|Mux21~0_combout\ & ((\add_instance|RF[5][10]~q\))))) # (!\input_vector[16]~input_o\ & 
-- (((\add_instance|Mux21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|RF[7][10]~q\,
	datab => \input_vector[16]~input_o\,
	datac => \add_instance|RF[5][10]~q\,
	datad => \add_instance|Mux21~0_combout\,
	combout => \add_instance|Mux21~1_combout\);

-- Location: LCCOMB_X18_Y20_N0
\add_instance|Mux21~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux21~4_combout\ = (\input_vector[18]~input_o\ & ((\add_instance|Mux21~1_combout\))) # (!\input_vector[18]~input_o\ & (\add_instance|Mux21~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_vector[18]~input_o\,
	datac => \add_instance|Mux21~3_combout\,
	datad => \add_instance|Mux21~1_combout\,
	combout => \add_instance|Mux21~4_combout\);

-- Location: IOIBUF_X18_Y24_N15
\input_vector[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(33),
	o => \input_vector[33]~input_o\);

-- Location: FF_X19_Y20_N17
\add_instance|RF[3][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[33]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[3][11]~q\);

-- Location: FF_X19_Y20_N7
\add_instance|RF[2][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[33]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[2][11]~q\);

-- Location: FF_X21_Y20_N23
\add_instance|RF[0][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[33]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[0][11]~q\);

-- Location: FF_X21_Y20_N13
\add_instance|RF[1][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[33]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[1][11]~q\);

-- Location: LCCOMB_X21_Y20_N12
\add_instance|Mux20~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux20~2_combout\ = (\input_vector[17]~input_o\ & (((\input_vector[16]~input_o\)))) # (!\input_vector[17]~input_o\ & ((\input_vector[16]~input_o\ & ((\add_instance|RF[1][11]~q\))) # (!\input_vector[16]~input_o\ & 
-- (\add_instance|RF[0][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|RF[0][11]~q\,
	datab => \input_vector[17]~input_o\,
	datac => \add_instance|RF[1][11]~q\,
	datad => \input_vector[16]~input_o\,
	combout => \add_instance|Mux20~2_combout\);

-- Location: LCCOMB_X19_Y20_N6
\add_instance|Mux20~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux20~3_combout\ = (\input_vector[17]~input_o\ & ((\add_instance|Mux20~2_combout\ & (\add_instance|RF[3][11]~q\)) # (!\add_instance|Mux20~2_combout\ & ((\add_instance|RF[2][11]~q\))))) # (!\input_vector[17]~input_o\ & 
-- (((\add_instance|Mux20~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[17]~input_o\,
	datab => \add_instance|RF[3][11]~q\,
	datac => \add_instance|RF[2][11]~q\,
	datad => \add_instance|Mux20~2_combout\,
	combout => \add_instance|Mux20~3_combout\);

-- Location: FF_X23_Y20_N25
\add_instance|RF[7][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[11]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[7][11]~q\);

-- Location: FF_X23_Y20_N7
\add_instance|RF[5][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[33]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[5][11]~q\);

-- Location: FF_X22_Y20_N9
\add_instance|RF[6][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[33]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[6][11]~q\);

-- Location: FF_X22_Y20_N3
\add_instance|RF[4][11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[33]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[4][11]~q\);

-- Location: LCCOMB_X22_Y20_N8
\add_instance|Mux20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux20~0_combout\ = (\input_vector[17]~input_o\ & ((\input_vector[16]~input_o\) # ((\add_instance|RF[6][11]~q\)))) # (!\input_vector[17]~input_o\ & (!\input_vector[16]~input_o\ & ((\add_instance|RF[4][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[17]~input_o\,
	datab => \input_vector[16]~input_o\,
	datac => \add_instance|RF[6][11]~q\,
	datad => \add_instance|RF[4][11]~q\,
	combout => \add_instance|Mux20~0_combout\);

-- Location: LCCOMB_X23_Y20_N6
\add_instance|Mux20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux20~1_combout\ = (\input_vector[16]~input_o\ & ((\add_instance|Mux20~0_combout\ & (\add_instance|RF[7][11]~q\)) # (!\add_instance|Mux20~0_combout\ & ((\add_instance|RF[5][11]~q\))))) # (!\input_vector[16]~input_o\ & 
-- (((\add_instance|Mux20~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[16]~input_o\,
	datab => \add_instance|RF[7][11]~q\,
	datac => \add_instance|RF[5][11]~q\,
	datad => \add_instance|Mux20~0_combout\,
	combout => \add_instance|Mux20~1_combout\);

-- Location: LCCOMB_X19_Y20_N2
\add_instance|Mux20~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux20~4_combout\ = (\input_vector[18]~input_o\ & ((\add_instance|Mux20~1_combout\))) # (!\input_vector[18]~input_o\ & (\add_instance|Mux20~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux20~3_combout\,
	datab => \input_vector[18]~input_o\,
	datad => \add_instance|Mux20~1_combout\,
	combout => \add_instance|Mux20~4_combout\);

-- Location: IOIBUF_X16_Y24_N1
\input_vector[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(34),
	o => \input_vector[34]~input_o\);

-- Location: FF_X19_Y20_N23
\add_instance|RF[3][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[34]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[3][12]~q\);

-- Location: FF_X21_Y20_N1
\add_instance|RF[1][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[34]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[1][12]~q\);

-- Location: FF_X21_Y20_N19
\add_instance|RF[0][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[34]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[0][12]~q\);

-- Location: LCCOMB_X21_Y20_N0
\add_instance|Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux19~2_combout\ = (\input_vector[16]~input_o\ & ((\input_vector[17]~input_o\) # ((\add_instance|RF[1][12]~q\)))) # (!\input_vector[16]~input_o\ & (!\input_vector[17]~input_o\ & ((\add_instance|RF[0][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[16]~input_o\,
	datab => \input_vector[17]~input_o\,
	datac => \add_instance|RF[1][12]~q\,
	datad => \add_instance|RF[0][12]~q\,
	combout => \add_instance|Mux19~2_combout\);

-- Location: FF_X19_Y20_N5
\add_instance|RF[2][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[34]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[2][12]~q\);

-- Location: LCCOMB_X19_Y20_N4
\add_instance|Mux19~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux19~3_combout\ = (\add_instance|Mux19~2_combout\ & ((\add_instance|RF[3][12]~q\) # ((!\input_vector[17]~input_o\)))) # (!\add_instance|Mux19~2_combout\ & (((\add_instance|RF[2][12]~q\ & \input_vector[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|RF[3][12]~q\,
	datab => \add_instance|Mux19~2_combout\,
	datac => \add_instance|RF[2][12]~q\,
	datad => \input_vector[17]~input_o\,
	combout => \add_instance|Mux19~3_combout\);

-- Location: FF_X22_Y20_N7
\add_instance|RF[4][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[34]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[4][12]~q\);

-- Location: FF_X22_Y20_N21
\add_instance|RF[6][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[34]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[6][12]~q\);

-- Location: LCCOMB_X22_Y20_N20
\add_instance|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux19~0_combout\ = (\input_vector[16]~input_o\ & (((\input_vector[17]~input_o\)))) # (!\input_vector[16]~input_o\ & ((\input_vector[17]~input_o\ & ((\add_instance|RF[6][12]~q\))) # (!\input_vector[17]~input_o\ & 
-- (\add_instance|RF[4][12]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|RF[4][12]~q\,
	datab => \input_vector[16]~input_o\,
	datac => \add_instance|RF[6][12]~q\,
	datad => \input_vector[17]~input_o\,
	combout => \add_instance|Mux19~0_combout\);

-- Location: FF_X23_Y20_N27
\add_instance|RF[5][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[34]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[5][12]~q\);

-- Location: FF_X23_Y20_N13
\add_instance|RF[7][12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[12]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[7][12]~q\);

-- Location: LCCOMB_X23_Y20_N26
\add_instance|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux19~1_combout\ = (\input_vector[16]~input_o\ & ((\add_instance|Mux19~0_combout\ & ((\add_instance|RF[7][12]~q\))) # (!\add_instance|Mux19~0_combout\ & (\add_instance|RF[5][12]~q\)))) # (!\input_vector[16]~input_o\ & 
-- (\add_instance|Mux19~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[16]~input_o\,
	datab => \add_instance|Mux19~0_combout\,
	datac => \add_instance|RF[5][12]~q\,
	datad => \add_instance|RF[7][12]~q\,
	combout => \add_instance|Mux19~1_combout\);

-- Location: LCCOMB_X19_Y20_N24
\add_instance|Mux19~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux19~4_combout\ = (\input_vector[18]~input_o\ & ((\add_instance|Mux19~1_combout\))) # (!\input_vector[18]~input_o\ & (\add_instance|Mux19~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \input_vector[18]~input_o\,
	datac => \add_instance|Mux19~3_combout\,
	datad => \add_instance|Mux19~1_combout\,
	combout => \add_instance|Mux19~4_combout\);

-- Location: IOIBUF_X25_Y24_N8
\input_vector[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(35),
	o => \input_vector[35]~input_o\);

-- Location: FF_X24_Y20_N27
\add_instance|RF[3][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[35]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[3][13]~q\);

-- Location: FF_X24_Y20_N17
\add_instance|RF[2][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[35]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[2][13]~q\);

-- Location: FF_X21_Y20_N31
\add_instance|RF[0][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[35]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[0][13]~q\);

-- Location: FF_X21_Y20_N21
\add_instance|RF[1][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[35]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[1][13]~q\);

-- Location: LCCOMB_X21_Y20_N20
\add_instance|Mux18~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux18~2_combout\ = (\input_vector[17]~input_o\ & (((\input_vector[16]~input_o\)))) # (!\input_vector[17]~input_o\ & ((\input_vector[16]~input_o\ & ((\add_instance|RF[1][13]~q\))) # (!\input_vector[16]~input_o\ & 
-- (\add_instance|RF[0][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|RF[0][13]~q\,
	datab => \input_vector[17]~input_o\,
	datac => \add_instance|RF[1][13]~q\,
	datad => \input_vector[16]~input_o\,
	combout => \add_instance|Mux18~2_combout\);

-- Location: LCCOMB_X24_Y20_N16
\add_instance|Mux18~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux18~3_combout\ = (\input_vector[17]~input_o\ & ((\add_instance|Mux18~2_combout\ & (\add_instance|RF[3][13]~q\)) # (!\add_instance|Mux18~2_combout\ & ((\add_instance|RF[2][13]~q\))))) # (!\input_vector[17]~input_o\ & 
-- (((\add_instance|Mux18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|RF[3][13]~q\,
	datab => \input_vector[17]~input_o\,
	datac => \add_instance|RF[2][13]~q\,
	datad => \add_instance|Mux18~2_combout\,
	combout => \add_instance|Mux18~3_combout\);

-- Location: FF_X22_Y20_N17
\add_instance|RF[6][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[35]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[6][13]~q\);

-- Location: FF_X22_Y20_N19
\add_instance|RF[4][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[35]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[4][13]~q\);

-- Location: LCCOMB_X22_Y20_N16
\add_instance|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux18~0_combout\ = (\input_vector[17]~input_o\ & ((\input_vector[16]~input_o\) # ((\add_instance|RF[6][13]~q\)))) # (!\input_vector[17]~input_o\ & (!\input_vector[16]~input_o\ & ((\add_instance|RF[4][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[17]~input_o\,
	datab => \input_vector[16]~input_o\,
	datac => \add_instance|RF[6][13]~q\,
	datad => \add_instance|RF[4][13]~q\,
	combout => \add_instance|Mux18~0_combout\);

-- Location: FF_X23_Y20_N15
\add_instance|RF[5][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[35]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[5][13]~q\);

-- Location: FF_X23_Y20_N17
\add_instance|RF[7][13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[13]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[7][13]~q\);

-- Location: LCCOMB_X23_Y20_N14
\add_instance|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux18~1_combout\ = (\input_vector[16]~input_o\ & ((\add_instance|Mux18~0_combout\ & ((\add_instance|RF[7][13]~q\))) # (!\add_instance|Mux18~0_combout\ & (\add_instance|RF[5][13]~q\)))) # (!\input_vector[16]~input_o\ & 
-- (\add_instance|Mux18~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[16]~input_o\,
	datab => \add_instance|Mux18~0_combout\,
	datac => \add_instance|RF[5][13]~q\,
	datad => \add_instance|RF[7][13]~q\,
	combout => \add_instance|Mux18~1_combout\);

-- Location: LCCOMB_X24_Y20_N28
\add_instance|Mux18~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux18~4_combout\ = (\input_vector[18]~input_o\ & ((\add_instance|Mux18~1_combout\))) # (!\input_vector[18]~input_o\ & (\add_instance|Mux18~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[18]~input_o\,
	datac => \add_instance|Mux18~3_combout\,
	datad => \add_instance|Mux18~1_combout\,
	combout => \add_instance|Mux18~4_combout\);

-- Location: IOIBUF_X21_Y24_N15
\input_vector[36]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(36),
	o => \input_vector[36]~input_o\);

-- Location: FF_X22_Y20_N31
\add_instance|RF[4][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[36]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[4][14]~q\);

-- Location: FF_X22_Y20_N5
\add_instance|RF[6][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[36]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[6][14]~q\);

-- Location: LCCOMB_X22_Y20_N4
\add_instance|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux17~0_combout\ = (\input_vector[16]~input_o\ & (((\input_vector[17]~input_o\)))) # (!\input_vector[16]~input_o\ & ((\input_vector[17]~input_o\ & ((\add_instance|RF[6][14]~q\))) # (!\input_vector[17]~input_o\ & 
-- (\add_instance|RF[4][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|RF[4][14]~q\,
	datab => \input_vector[16]~input_o\,
	datac => \add_instance|RF[6][14]~q\,
	datad => \input_vector[17]~input_o\,
	combout => \add_instance|Mux17~0_combout\);

-- Location: FF_X23_Y20_N19
\add_instance|RF[5][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[36]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[5][14]~q\);

-- Location: FF_X23_Y20_N29
\add_instance|RF[7][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[14]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[7][14]~q\);

-- Location: LCCOMB_X23_Y20_N18
\add_instance|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux17~1_combout\ = (\input_vector[16]~input_o\ & ((\add_instance|Mux17~0_combout\ & ((\add_instance|RF[7][14]~q\))) # (!\add_instance|Mux17~0_combout\ & (\add_instance|RF[5][14]~q\)))) # (!\input_vector[16]~input_o\ & 
-- (\add_instance|Mux17~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[16]~input_o\,
	datab => \add_instance|Mux17~0_combout\,
	datac => \add_instance|RF[5][14]~q\,
	datad => \add_instance|RF[7][14]~q\,
	combout => \add_instance|Mux17~1_combout\);

-- Location: FF_X21_Y20_N9
\add_instance|RF[1][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[36]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[1][14]~q\);

-- Location: FF_X21_Y20_N3
\add_instance|RF[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[36]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[0][14]~q\);

-- Location: LCCOMB_X21_Y20_N8
\add_instance|Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux17~2_combout\ = (\input_vector[16]~input_o\ & ((\input_vector[17]~input_o\) # ((\add_instance|RF[1][14]~q\)))) # (!\input_vector[16]~input_o\ & (!\input_vector[17]~input_o\ & ((\add_instance|RF[0][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[16]~input_o\,
	datab => \input_vector[17]~input_o\,
	datac => \add_instance|RF[1][14]~q\,
	datad => \add_instance|RF[0][14]~q\,
	combout => \add_instance|Mux17~2_combout\);

-- Location: FF_X24_Y20_N31
\add_instance|RF[2][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[36]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[2][14]~q\);

-- Location: FF_X24_Y20_N9
\add_instance|RF[3][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[36]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[3][14]~q\);

-- Location: LCCOMB_X24_Y20_N30
\add_instance|Mux17~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux17~3_combout\ = (\add_instance|Mux17~2_combout\ & (((\add_instance|RF[3][14]~q\)) # (!\input_vector[17]~input_o\))) # (!\add_instance|Mux17~2_combout\ & (\input_vector[17]~input_o\ & (\add_instance|RF[2][14]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux17~2_combout\,
	datab => \input_vector[17]~input_o\,
	datac => \add_instance|RF[2][14]~q\,
	datad => \add_instance|RF[3][14]~q\,
	combout => \add_instance|Mux17~3_combout\);

-- Location: LCCOMB_X24_Y20_N10
\add_instance|Mux17~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux17~4_combout\ = (\input_vector[18]~input_o\ & (\add_instance|Mux17~1_combout\)) # (!\input_vector[18]~input_o\ & ((\add_instance|Mux17~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[18]~input_o\,
	datab => \add_instance|Mux17~1_combout\,
	datac => \add_instance|Mux17~3_combout\,
	combout => \add_instance|Mux17~4_combout\);

-- Location: IOIBUF_X34_Y20_N15
\input_vector[37]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(37),
	o => \input_vector[37]~input_o\);

-- Location: FF_X24_Y19_N23
\add_instance|RF[6][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[37]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[6][15]~q\);

-- Location: FF_X24_Y19_N1
\add_instance|RF[4][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[37]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[4][15]~q\);

-- Location: LCCOMB_X24_Y19_N22
\add_instance|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux16~0_combout\ = (\input_vector[16]~input_o\ & (\input_vector[17]~input_o\)) # (!\input_vector[16]~input_o\ & ((\input_vector[17]~input_o\ & (\add_instance|RF[6][15]~q\)) # (!\input_vector[17]~input_o\ & ((\add_instance|RF[4][15]~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[16]~input_o\,
	datab => \input_vector[17]~input_o\,
	datac => \add_instance|RF[6][15]~q\,
	datad => \add_instance|RF[4][15]~q\,
	combout => \add_instance|Mux16~0_combout\);

-- Location: FF_X18_Y20_N11
\add_instance|RF[5][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[37]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[5][15]~q\);

-- Location: FF_X18_Y20_N21
\add_instance|RF[7][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[15]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[7][15]~q\);

-- Location: LCCOMB_X18_Y20_N10
\add_instance|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux16~1_combout\ = (\add_instance|Mux16~0_combout\ & (((\add_instance|RF[7][15]~q\)) # (!\input_vector[16]~input_o\))) # (!\add_instance|Mux16~0_combout\ & (\input_vector[16]~input_o\ & (\add_instance|RF[5][15]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux16~0_combout\,
	datab => \input_vector[16]~input_o\,
	datac => \add_instance|RF[5][15]~q\,
	datad => \add_instance|RF[7][15]~q\,
	combout => \add_instance|Mux16~1_combout\);

-- Location: FF_X21_Y20_N15
\add_instance|RF[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[37]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[0][15]~q\);

-- Location: FF_X21_Y20_N5
\add_instance|RF[1][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[37]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[1][15]~q\);

-- Location: LCCOMB_X21_Y20_N4
\add_instance|Mux16~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux16~2_combout\ = (\input_vector[16]~input_o\ & (((\add_instance|RF[1][15]~q\) # (\input_vector[17]~input_o\)))) # (!\input_vector[16]~input_o\ & (\add_instance|RF[0][15]~q\ & ((!\input_vector[17]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[16]~input_o\,
	datab => \add_instance|RF[0][15]~q\,
	datac => \add_instance|RF[1][15]~q\,
	datad => \input_vector[17]~input_o\,
	combout => \add_instance|Mux16~2_combout\);

-- Location: FF_X25_Y16_N17
\add_instance|RF[2][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[37]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[2][15]~q\);

-- Location: FF_X25_Y16_N3
\add_instance|RF[3][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[42]~inputclkctrl_outclk\,
	asdata => \input_vector[37]~input_o\,
	sload => VCC,
	ena => \add_instance|Decoder0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|RF[3][15]~q\);

-- Location: LCCOMB_X25_Y16_N16
\add_instance|Mux16~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux16~3_combout\ = (\add_instance|Mux16~2_combout\ & (((\add_instance|RF[3][15]~q\)) # (!\input_vector[17]~input_o\))) # (!\add_instance|Mux16~2_combout\ & (\input_vector[17]~input_o\ & (\add_instance|RF[2][15]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux16~2_combout\,
	datab => \input_vector[17]~input_o\,
	datac => \add_instance|RF[2][15]~q\,
	datad => \add_instance|RF[3][15]~q\,
	combout => \add_instance|Mux16~3_combout\);

-- Location: LCCOMB_X18_Y20_N30
\add_instance|Mux16~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux16~4_combout\ = (\input_vector[18]~input_o\ & (\add_instance|Mux16~1_combout\)) # (!\input_vector[18]~input_o\ & ((\add_instance|Mux16~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux16~1_combout\,
	datab => \input_vector[18]~input_o\,
	datad => \add_instance|Mux16~3_combout\,
	combout => \add_instance|Mux16~4_combout\);

-- Location: IOIBUF_X18_Y24_N8
\input_vector[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(19),
	o => \input_vector[19]~input_o\);

-- Location: IOIBUF_X9_Y24_N15
\input_vector[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(20),
	o => \input_vector[20]~input_o\);

-- Location: LCCOMB_X26_Y16_N26
\add_instance|Mux15~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux15~2_combout\ = (\input_vector[19]~input_o\ & ((\input_vector[20]~input_o\) # ((\add_instance|RF[1][0]~q\)))) # (!\input_vector[19]~input_o\ & (!\input_vector[20]~input_o\ & (\add_instance|RF[0][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[19]~input_o\,
	datab => \input_vector[20]~input_o\,
	datac => \add_instance|RF[0][0]~q\,
	datad => \add_instance|RF[1][0]~q\,
	combout => \add_instance|Mux15~2_combout\);

-- Location: LCCOMB_X24_Y20_N18
\add_instance|Mux15~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux15~3_combout\ = (\add_instance|Mux15~2_combout\ & (((\add_instance|RF[3][0]~q\)) # (!\input_vector[20]~input_o\))) # (!\add_instance|Mux15~2_combout\ & (\input_vector[20]~input_o\ & ((\add_instance|RF[2][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux15~2_combout\,
	datab => \input_vector[20]~input_o\,
	datac => \add_instance|RF[3][0]~q\,
	datad => \add_instance|RF[2][0]~q\,
	combout => \add_instance|Mux15~3_combout\);

-- Location: IOIBUF_X34_Y11_N8
\input_vector[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(21),
	o => \input_vector[21]~input_o\);

-- Location: LCCOMB_X25_Y19_N4
\add_instance|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux15~0_combout\ = (\input_vector[19]~input_o\ & (\input_vector[20]~input_o\)) # (!\input_vector[19]~input_o\ & ((\input_vector[20]~input_o\ & ((\add_instance|RF[6][0]~q\))) # (!\input_vector[20]~input_o\ & (\add_instance|RF[4][0]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[19]~input_o\,
	datab => \input_vector[20]~input_o\,
	datac => \add_instance|RF[4][0]~q\,
	datad => \add_instance|RF[6][0]~q\,
	combout => \add_instance|Mux15~0_combout\);

-- Location: LCCOMB_X25_Y17_N20
\add_instance|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux15~1_combout\ = (\input_vector[19]~input_o\ & ((\add_instance|Mux15~0_combout\ & (\add_instance|RF[7][0]~q\)) # (!\add_instance|Mux15~0_combout\ & ((\add_instance|RF[5][0]~q\))))) # (!\input_vector[19]~input_o\ & 
-- (\add_instance|Mux15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[19]~input_o\,
	datab => \add_instance|Mux15~0_combout\,
	datac => \add_instance|RF[7][0]~q\,
	datad => \add_instance|RF[5][0]~q\,
	combout => \add_instance|Mux15~1_combout\);

-- Location: LCCOMB_X24_Y20_N12
\add_instance|Mux15~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux15~4_combout\ = (\input_vector[21]~input_o\ & ((\add_instance|Mux15~1_combout\))) # (!\input_vector[21]~input_o\ & (\add_instance|Mux15~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|Mux15~3_combout\,
	datac => \input_vector[21]~input_o\,
	datad => \add_instance|Mux15~1_combout\,
	combout => \add_instance|Mux15~4_combout\);

-- Location: LCCOMB_X25_Y19_N22
\add_instance|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux14~0_combout\ = (\input_vector[19]~input_o\ & (\input_vector[20]~input_o\)) # (!\input_vector[19]~input_o\ & ((\input_vector[20]~input_o\ & ((\add_instance|RF[6][1]~q\))) # (!\input_vector[20]~input_o\ & (\add_instance|RF[4][1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[19]~input_o\,
	datab => \input_vector[20]~input_o\,
	datac => \add_instance|RF[4][1]~q\,
	datad => \add_instance|RF[6][1]~q\,
	combout => \add_instance|Mux14~0_combout\);

-- Location: LCCOMB_X24_Y16_N16
\add_instance|Mux14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux14~1_combout\ = (\input_vector[19]~input_o\ & ((\add_instance|Mux14~0_combout\ & ((\add_instance|RF[7][1]~q\))) # (!\add_instance|Mux14~0_combout\ & (\add_instance|RF[5][1]~q\)))) # (!\input_vector[19]~input_o\ & 
-- (((\add_instance|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|RF[5][1]~q\,
	datab => \input_vector[19]~input_o\,
	datac => \add_instance|RF[7][1]~q\,
	datad => \add_instance|Mux14~0_combout\,
	combout => \add_instance|Mux14~1_combout\);

-- Location: LCCOMB_X26_Y16_N14
\add_instance|Mux14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux14~2_combout\ = (\input_vector[19]~input_o\ & ((\input_vector[20]~input_o\) # ((\add_instance|RF[1][1]~q\)))) # (!\input_vector[19]~input_o\ & (!\input_vector[20]~input_o\ & (\add_instance|RF[0][1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[19]~input_o\,
	datab => \input_vector[20]~input_o\,
	datac => \add_instance|RF[0][1]~q\,
	datad => \add_instance|RF[1][1]~q\,
	combout => \add_instance|Mux14~2_combout\);

-- Location: LCCOMB_X24_Y20_N22
\add_instance|Mux14~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux14~3_combout\ = (\add_instance|Mux14~2_combout\ & (((\add_instance|RF[3][1]~q\) # (!\input_vector[20]~input_o\)))) # (!\add_instance|Mux14~2_combout\ & (\add_instance|RF[2][1]~q\ & ((\input_vector[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|RF[2][1]~q\,
	datab => \add_instance|Mux14~2_combout\,
	datac => \add_instance|RF[3][1]~q\,
	datad => \input_vector[20]~input_o\,
	combout => \add_instance|Mux14~3_combout\);

-- Location: LCCOMB_X24_Y16_N0
\add_instance|Mux14~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux14~4_combout\ = (\input_vector[21]~input_o\ & (\add_instance|Mux14~1_combout\)) # (!\input_vector[21]~input_o\ & ((\add_instance|Mux14~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux14~1_combout\,
	datab => \add_instance|Mux14~3_combout\,
	datad => \input_vector[21]~input_o\,
	combout => \add_instance|Mux14~4_combout\);

-- Location: LCCOMB_X26_Y16_N18
\add_instance|Mux13~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux13~2_combout\ = (\input_vector[19]~input_o\ & ((\input_vector[20]~input_o\) # ((\add_instance|RF[1][2]~q\)))) # (!\input_vector[19]~input_o\ & (!\input_vector[20]~input_o\ & (\add_instance|RF[0][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[19]~input_o\,
	datab => \input_vector[20]~input_o\,
	datac => \add_instance|RF[0][2]~q\,
	datad => \add_instance|RF[1][2]~q\,
	combout => \add_instance|Mux13~2_combout\);

-- Location: LCCOMB_X25_Y16_N18
\add_instance|Mux13~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux13~3_combout\ = (\input_vector[20]~input_o\ & ((\add_instance|Mux13~2_combout\ & ((\add_instance|RF[3][2]~q\))) # (!\add_instance|Mux13~2_combout\ & (\add_instance|RF[2][2]~q\)))) # (!\input_vector[20]~input_o\ & 
-- (((\add_instance|Mux13~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[20]~input_o\,
	datab => \add_instance|RF[2][2]~q\,
	datac => \add_instance|RF[3][2]~q\,
	datad => \add_instance|Mux13~2_combout\,
	combout => \add_instance|Mux13~3_combout\);

-- Location: LCCOMB_X25_Y19_N24
\add_instance|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux13~0_combout\ = (\input_vector[19]~input_o\ & (\input_vector[20]~input_o\)) # (!\input_vector[19]~input_o\ & ((\input_vector[20]~input_o\ & ((\add_instance|RF[6][2]~q\))) # (!\input_vector[20]~input_o\ & (\add_instance|RF[4][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[19]~input_o\,
	datab => \input_vector[20]~input_o\,
	datac => \add_instance|RF[4][2]~q\,
	datad => \add_instance|RF[6][2]~q\,
	combout => \add_instance|Mux13~0_combout\);

-- Location: LCCOMB_X25_Y17_N18
\add_instance|Mux13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux13~1_combout\ = (\input_vector[19]~input_o\ & ((\add_instance|Mux13~0_combout\ & ((\add_instance|RF[7][2]~q\))) # (!\add_instance|Mux13~0_combout\ & (\add_instance|RF[5][2]~q\)))) # (!\input_vector[19]~input_o\ & 
-- (((\add_instance|Mux13~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[19]~input_o\,
	datab => \add_instance|RF[5][2]~q\,
	datac => \add_instance|RF[7][2]~q\,
	datad => \add_instance|Mux13~0_combout\,
	combout => \add_instance|Mux13~1_combout\);

-- Location: LCCOMB_X25_Y16_N28
\add_instance|Mux13~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux13~4_combout\ = (\input_vector[21]~input_o\ & ((\add_instance|Mux13~1_combout\))) # (!\input_vector[21]~input_o\ & (\add_instance|Mux13~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|Mux13~3_combout\,
	datac => \add_instance|Mux13~1_combout\,
	datad => \input_vector[21]~input_o\,
	combout => \add_instance|Mux13~4_combout\);

-- Location: LCCOMB_X26_Y16_N22
\add_instance|Mux12~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux12~2_combout\ = (\input_vector[19]~input_o\ & ((\input_vector[20]~input_o\) # ((\add_instance|RF[1][3]~q\)))) # (!\input_vector[19]~input_o\ & (!\input_vector[20]~input_o\ & (\add_instance|RF[0][3]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[19]~input_o\,
	datab => \input_vector[20]~input_o\,
	datac => \add_instance|RF[0][3]~q\,
	datad => \add_instance|RF[1][3]~q\,
	combout => \add_instance|Mux12~2_combout\);

-- Location: LCCOMB_X25_Y16_N6
\add_instance|Mux12~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux12~3_combout\ = (\input_vector[20]~input_o\ & ((\add_instance|Mux12~2_combout\ & (\add_instance|RF[3][3]~q\)) # (!\add_instance|Mux12~2_combout\ & ((\add_instance|RF[2][3]~q\))))) # (!\input_vector[20]~input_o\ & 
-- (\add_instance|Mux12~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[20]~input_o\,
	datab => \add_instance|Mux12~2_combout\,
	datac => \add_instance|RF[3][3]~q\,
	datad => \add_instance|RF[2][3]~q\,
	combout => \add_instance|Mux12~3_combout\);

-- Location: LCCOMB_X25_Y19_N26
\add_instance|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux12~0_combout\ = (\input_vector[19]~input_o\ & (\input_vector[20]~input_o\)) # (!\input_vector[19]~input_o\ & ((\input_vector[20]~input_o\ & ((\add_instance|RF[6][3]~q\))) # (!\input_vector[20]~input_o\ & (\add_instance|RF[4][3]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[19]~input_o\,
	datab => \input_vector[20]~input_o\,
	datac => \add_instance|RF[4][3]~q\,
	datad => \add_instance|RF[6][3]~q\,
	combout => \add_instance|Mux12~0_combout\);

-- Location: LCCOMB_X25_Y19_N28
\add_instance|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux12~1_combout\ = (\input_vector[19]~input_o\ & ((\add_instance|Mux12~0_combout\ & ((\add_instance|RF[7][3]~q\))) # (!\add_instance|Mux12~0_combout\ & (\add_instance|RF[5][3]~q\)))) # (!\input_vector[19]~input_o\ & 
-- (((\add_instance|Mux12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[19]~input_o\,
	datab => \add_instance|RF[5][3]~q\,
	datac => \add_instance|RF[7][3]~q\,
	datad => \add_instance|Mux12~0_combout\,
	combout => \add_instance|Mux12~1_combout\);

-- Location: LCCOMB_X25_Y19_N0
\add_instance|Mux12~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux12~4_combout\ = (\input_vector[21]~input_o\ & ((\add_instance|Mux12~1_combout\))) # (!\input_vector[21]~input_o\ & (\add_instance|Mux12~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux12~3_combout\,
	datab => \add_instance|Mux12~1_combout\,
	datad => \input_vector[21]~input_o\,
	combout => \add_instance|Mux12~4_combout\);

-- Location: LCCOMB_X25_Y19_N6
\add_instance|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux11~0_combout\ = (\input_vector[19]~input_o\ & (\input_vector[20]~input_o\)) # (!\input_vector[19]~input_o\ & ((\input_vector[20]~input_o\ & ((\add_instance|RF[6][4]~q\))) # (!\input_vector[20]~input_o\ & (\add_instance|RF[4][4]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[19]~input_o\,
	datab => \input_vector[20]~input_o\,
	datac => \add_instance|RF[4][4]~q\,
	datad => \add_instance|RF[6][4]~q\,
	combout => \add_instance|Mux11~0_combout\);

-- Location: LCCOMB_X25_Y19_N8
\add_instance|Mux11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux11~1_combout\ = (\input_vector[19]~input_o\ & ((\add_instance|Mux11~0_combout\ & ((\add_instance|RF[7][4]~q\))) # (!\add_instance|Mux11~0_combout\ & (\add_instance|RF[5][4]~q\)))) # (!\input_vector[19]~input_o\ & 
-- (((\add_instance|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[19]~input_o\,
	datab => \add_instance|RF[5][4]~q\,
	datac => \add_instance|RF[7][4]~q\,
	datad => \add_instance|Mux11~0_combout\,
	combout => \add_instance|Mux11~1_combout\);

-- Location: LCCOMB_X26_Y16_N2
\add_instance|Mux11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux11~2_combout\ = (\input_vector[19]~input_o\ & ((\input_vector[20]~input_o\) # ((\add_instance|RF[1][4]~q\)))) # (!\input_vector[19]~input_o\ & (!\input_vector[20]~input_o\ & (\add_instance|RF[0][4]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[19]~input_o\,
	datab => \input_vector[20]~input_o\,
	datac => \add_instance|RF[0][4]~q\,
	datad => \add_instance|RF[1][4]~q\,
	combout => \add_instance|Mux11~2_combout\);

-- Location: LCCOMB_X25_Y16_N26
\add_instance|Mux11~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux11~3_combout\ = (\input_vector[20]~input_o\ & ((\add_instance|Mux11~2_combout\ & ((\add_instance|RF[3][4]~q\))) # (!\add_instance|Mux11~2_combout\ & (\add_instance|RF[2][4]~q\)))) # (!\input_vector[20]~input_o\ & 
-- (((\add_instance|Mux11~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[20]~input_o\,
	datab => \add_instance|RF[2][4]~q\,
	datac => \add_instance|RF[3][4]~q\,
	datad => \add_instance|Mux11~2_combout\,
	combout => \add_instance|Mux11~3_combout\);

-- Location: LCCOMB_X25_Y19_N10
\add_instance|Mux11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux11~4_combout\ = (\input_vector[21]~input_o\ & (\add_instance|Mux11~1_combout\)) # (!\input_vector[21]~input_o\ & ((\add_instance|Mux11~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|Mux11~1_combout\,
	datac => \add_instance|Mux11~3_combout\,
	datad => \input_vector[21]~input_o\,
	combout => \add_instance|Mux11~4_combout\);

-- Location: LCCOMB_X26_Y16_N30
\add_instance|Mux10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux10~2_combout\ = (\input_vector[19]~input_o\ & ((\input_vector[20]~input_o\) # ((\add_instance|RF[1][5]~q\)))) # (!\input_vector[19]~input_o\ & (!\input_vector[20]~input_o\ & (\add_instance|RF[0][5]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[19]~input_o\,
	datab => \input_vector[20]~input_o\,
	datac => \add_instance|RF[0][5]~q\,
	datad => \add_instance|RF[1][5]~q\,
	combout => \add_instance|Mux10~2_combout\);

-- Location: LCCOMB_X25_Y16_N22
\add_instance|Mux10~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux10~3_combout\ = (\input_vector[20]~input_o\ & ((\add_instance|Mux10~2_combout\ & ((\add_instance|RF[3][5]~q\))) # (!\add_instance|Mux10~2_combout\ & (\add_instance|RF[2][5]~q\)))) # (!\input_vector[20]~input_o\ & 
-- (((\add_instance|Mux10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[20]~input_o\,
	datab => \add_instance|RF[2][5]~q\,
	datac => \add_instance|RF[3][5]~q\,
	datad => \add_instance|Mux10~2_combout\,
	combout => \add_instance|Mux10~3_combout\);

-- Location: LCCOMB_X25_Y19_N2
\add_instance|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux10~0_combout\ = (\input_vector[19]~input_o\ & (\input_vector[20]~input_o\)) # (!\input_vector[19]~input_o\ & ((\input_vector[20]~input_o\ & ((\add_instance|RF[6][5]~q\))) # (!\input_vector[20]~input_o\ & (\add_instance|RF[4][5]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[19]~input_o\,
	datab => \input_vector[20]~input_o\,
	datac => \add_instance|RF[4][5]~q\,
	datad => \add_instance|RF[6][5]~q\,
	combout => \add_instance|Mux10~0_combout\);

-- Location: LCCOMB_X25_Y19_N20
\add_instance|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux10~1_combout\ = (\input_vector[19]~input_o\ & ((\add_instance|Mux10~0_combout\ & ((\add_instance|RF[7][5]~q\))) # (!\add_instance|Mux10~0_combout\ & (\add_instance|RF[5][5]~q\)))) # (!\input_vector[19]~input_o\ & 
-- (((\add_instance|Mux10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[19]~input_o\,
	datab => \add_instance|RF[5][5]~q\,
	datac => \add_instance|RF[7][5]~q\,
	datad => \add_instance|Mux10~0_combout\,
	combout => \add_instance|Mux10~1_combout\);

-- Location: LCCOMB_X25_Y19_N12
\add_instance|Mux10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux10~4_combout\ = (\input_vector[21]~input_o\ & ((\add_instance|Mux10~1_combout\))) # (!\input_vector[21]~input_o\ & (\add_instance|Mux10~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux10~3_combout\,
	datab => \add_instance|Mux10~1_combout\,
	datad => \input_vector[21]~input_o\,
	combout => \add_instance|Mux10~4_combout\);

-- Location: LCCOMB_X25_Y19_N30
\add_instance|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux9~0_combout\ = (\input_vector[19]~input_o\ & (\input_vector[20]~input_o\)) # (!\input_vector[19]~input_o\ & ((\input_vector[20]~input_o\ & ((\add_instance|RF[6][6]~q\))) # (!\input_vector[20]~input_o\ & (\add_instance|RF[4][6]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[19]~input_o\,
	datab => \input_vector[20]~input_o\,
	datac => \add_instance|RF[4][6]~q\,
	datad => \add_instance|RF[6][6]~q\,
	combout => \add_instance|Mux9~0_combout\);

-- Location: LCCOMB_X24_Y16_N14
\add_instance|Mux9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux9~1_combout\ = (\input_vector[19]~input_o\ & ((\add_instance|Mux9~0_combout\ & ((\add_instance|RF[7][6]~q\))) # (!\add_instance|Mux9~0_combout\ & (\add_instance|RF[5][6]~q\)))) # (!\input_vector[19]~input_o\ & 
-- (((\add_instance|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|RF[5][6]~q\,
	datab => \input_vector[19]~input_o\,
	datac => \add_instance|RF[7][6]~q\,
	datad => \add_instance|Mux9~0_combout\,
	combout => \add_instance|Mux9~1_combout\);

-- Location: LCCOMB_X26_Y16_N10
\add_instance|Mux9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux9~2_combout\ = (\input_vector[19]~input_o\ & ((\input_vector[20]~input_o\) # ((\add_instance|RF[1][6]~q\)))) # (!\input_vector[19]~input_o\ & (!\input_vector[20]~input_o\ & (\add_instance|RF[0][6]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[19]~input_o\,
	datab => \input_vector[20]~input_o\,
	datac => \add_instance|RF[0][6]~q\,
	datad => \add_instance|RF[1][6]~q\,
	combout => \add_instance|Mux9~2_combout\);

-- Location: LCCOMB_X25_Y16_N10
\add_instance|Mux9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux9~3_combout\ = (\add_instance|Mux9~2_combout\ & (((\add_instance|RF[3][6]~q\) # (!\input_vector[20]~input_o\)))) # (!\add_instance|Mux9~2_combout\ & (\add_instance|RF[2][6]~q\ & ((\input_vector[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|RF[2][6]~q\,
	datab => \add_instance|Mux9~2_combout\,
	datac => \add_instance|RF[3][6]~q\,
	datad => \input_vector[20]~input_o\,
	combout => \add_instance|Mux9~3_combout\);

-- Location: LCCOMB_X25_Y16_N14
\add_instance|Mux9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux9~4_combout\ = (\input_vector[21]~input_o\ & (\add_instance|Mux9~1_combout\)) # (!\input_vector[21]~input_o\ & ((\add_instance|Mux9~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux9~1_combout\,
	datab => \input_vector[21]~input_o\,
	datac => \add_instance|Mux9~3_combout\,
	combout => \add_instance|Mux9~4_combout\);

-- Location: LCCOMB_X22_Y20_N10
\add_instance|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux8~0_combout\ = (\input_vector[20]~input_o\ & ((\input_vector[19]~input_o\) # ((\add_instance|RF[6][7]~q\)))) # (!\input_vector[20]~input_o\ & (!\input_vector[19]~input_o\ & (\add_instance|RF[4][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[20]~input_o\,
	datab => \input_vector[19]~input_o\,
	datac => \add_instance|RF[4][7]~q\,
	datad => \add_instance|RF[6][7]~q\,
	combout => \add_instance|Mux8~0_combout\);

-- Location: LCCOMB_X24_Y16_N28
\add_instance|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux8~1_combout\ = (\add_instance|Mux8~0_combout\ & (((\add_instance|RF[7][7]~q\)) # (!\input_vector[19]~input_o\))) # (!\add_instance|Mux8~0_combout\ & (\input_vector[19]~input_o\ & ((\add_instance|RF[5][7]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux8~0_combout\,
	datab => \input_vector[19]~input_o\,
	datac => \add_instance|RF[7][7]~q\,
	datad => \add_instance|RF[5][7]~q\,
	combout => \add_instance|Mux8~1_combout\);

-- Location: LCCOMB_X26_Y16_N6
\add_instance|Mux8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux8~2_combout\ = (\input_vector[19]~input_o\ & ((\input_vector[20]~input_o\) # ((\add_instance|RF[1][7]~q\)))) # (!\input_vector[19]~input_o\ & (!\input_vector[20]~input_o\ & (\add_instance|RF[0][7]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[19]~input_o\,
	datab => \input_vector[20]~input_o\,
	datac => \add_instance|RF[0][7]~q\,
	datad => \add_instance|RF[1][7]~q\,
	combout => \add_instance|Mux8~2_combout\);

-- Location: LCCOMB_X25_Y16_N30
\add_instance|Mux8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux8~3_combout\ = (\input_vector[20]~input_o\ & ((\add_instance|Mux8~2_combout\ & ((\add_instance|RF[3][7]~q\))) # (!\add_instance|Mux8~2_combout\ & (\add_instance|RF[2][7]~q\)))) # (!\input_vector[20]~input_o\ & 
-- (((\add_instance|Mux8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[20]~input_o\,
	datab => \add_instance|RF[2][7]~q\,
	datac => \add_instance|RF[3][7]~q\,
	datad => \add_instance|Mux8~2_combout\,
	combout => \add_instance|Mux8~3_combout\);

-- Location: LCCOMB_X24_Y16_N18
\add_instance|Mux8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux8~4_combout\ = (\input_vector[21]~input_o\ & (\add_instance|Mux8~1_combout\)) # (!\input_vector[21]~input_o\ & ((\add_instance|Mux8~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux8~1_combout\,
	datac => \add_instance|Mux8~3_combout\,
	datad => \input_vector[21]~input_o\,
	combout => \add_instance|Mux8~4_combout\);

-- Location: LCCOMB_X21_Y20_N10
\add_instance|Mux7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux7~2_combout\ = (\input_vector[19]~input_o\ & ((\input_vector[20]~input_o\) # ((\add_instance|RF[1][8]~q\)))) # (!\input_vector[19]~input_o\ & (!\input_vector[20]~input_o\ & (\add_instance|RF[0][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[19]~input_o\,
	datab => \input_vector[20]~input_o\,
	datac => \add_instance|RF[0][8]~q\,
	datad => \add_instance|RF[1][8]~q\,
	combout => \add_instance|Mux7~2_combout\);

-- Location: LCCOMB_X19_Y20_N18
\add_instance|Mux7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux7~3_combout\ = (\input_vector[20]~input_o\ & ((\add_instance|Mux7~2_combout\ & (\add_instance|RF[3][8]~q\)) # (!\add_instance|Mux7~2_combout\ & ((\add_instance|RF[2][8]~q\))))) # (!\input_vector[20]~input_o\ & 
-- (\add_instance|Mux7~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[20]~input_o\,
	datab => \add_instance|Mux7~2_combout\,
	datac => \add_instance|RF[3][8]~q\,
	datad => \add_instance|RF[2][8]~q\,
	combout => \add_instance|Mux7~3_combout\);

-- Location: LCCOMB_X22_Y20_N22
\add_instance|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux7~0_combout\ = (\input_vector[20]~input_o\ & ((\input_vector[19]~input_o\) # ((\add_instance|RF[6][8]~q\)))) # (!\input_vector[20]~input_o\ & (!\input_vector[19]~input_o\ & (\add_instance|RF[4][8]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[20]~input_o\,
	datab => \input_vector[19]~input_o\,
	datac => \add_instance|RF[4][8]~q\,
	datad => \add_instance|RF[6][8]~q\,
	combout => \add_instance|Mux7~0_combout\);

-- Location: LCCOMB_X23_Y20_N20
\add_instance|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux7~1_combout\ = (\input_vector[19]~input_o\ & ((\add_instance|Mux7~0_combout\ & ((\add_instance|RF[7][8]~q\))) # (!\add_instance|Mux7~0_combout\ & (\add_instance|RF[5][8]~q\)))) # (!\input_vector[19]~input_o\ & 
-- (((\add_instance|Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[19]~input_o\,
	datab => \add_instance|RF[5][8]~q\,
	datac => \add_instance|RF[7][8]~q\,
	datad => \add_instance|Mux7~0_combout\,
	combout => \add_instance|Mux7~1_combout\);

-- Location: LCCOMB_X19_Y20_N26
\add_instance|Mux7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux7~4_combout\ = (\input_vector[21]~input_o\ & ((\add_instance|Mux7~1_combout\))) # (!\input_vector[21]~input_o\ & (\add_instance|Mux7~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|Mux7~3_combout\,
	datac => \input_vector[21]~input_o\,
	datad => \add_instance|Mux7~1_combout\,
	combout => \add_instance|Mux7~4_combout\);

-- Location: LCCOMB_X22_Y20_N26
\add_instance|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux6~0_combout\ = (\input_vector[20]~input_o\ & ((\input_vector[19]~input_o\) # ((\add_instance|RF[6][9]~q\)))) # (!\input_vector[20]~input_o\ & (!\input_vector[19]~input_o\ & (\add_instance|RF[4][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[20]~input_o\,
	datab => \input_vector[19]~input_o\,
	datac => \add_instance|RF[4][9]~q\,
	datad => \add_instance|RF[6][9]~q\,
	combout => \add_instance|Mux6~0_combout\);

-- Location: LCCOMB_X18_Y20_N8
\add_instance|Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux6~1_combout\ = (\input_vector[19]~input_o\ & ((\add_instance|Mux6~0_combout\ & ((\add_instance|RF[7][9]~q\))) # (!\add_instance|Mux6~0_combout\ & (\add_instance|RF[5][9]~q\)))) # (!\input_vector[19]~input_o\ & 
-- (((\add_instance|Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|RF[5][9]~q\,
	datab => \input_vector[19]~input_o\,
	datac => \add_instance|RF[7][9]~q\,
	datad => \add_instance|Mux6~0_combout\,
	combout => \add_instance|Mux6~1_combout\);

-- Location: LCCOMB_X21_Y20_N6
\add_instance|Mux6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux6~2_combout\ = (\input_vector[19]~input_o\ & ((\input_vector[20]~input_o\) # ((\add_instance|RF[1][9]~q\)))) # (!\input_vector[19]~input_o\ & (!\input_vector[20]~input_o\ & (\add_instance|RF[0][9]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[19]~input_o\,
	datab => \input_vector[20]~input_o\,
	datac => \add_instance|RF[0][9]~q\,
	datad => \add_instance|RF[1][9]~q\,
	combout => \add_instance|Mux6~2_combout\);

-- Location: LCCOMB_X19_Y20_N0
\add_instance|Mux6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux6~3_combout\ = (\add_instance|Mux6~2_combout\ & (((\add_instance|RF[3][9]~q\) # (!\input_vector[20]~input_o\)))) # (!\add_instance|Mux6~2_combout\ & (\add_instance|RF[2][9]~q\ & ((\input_vector[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|RF[2][9]~q\,
	datab => \add_instance|Mux6~2_combout\,
	datac => \add_instance|RF[3][9]~q\,
	datad => \input_vector[20]~input_o\,
	combout => \add_instance|Mux6~3_combout\);

-- Location: LCCOMB_X18_Y20_N24
\add_instance|Mux6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux6~4_combout\ = (\input_vector[21]~input_o\ & (\add_instance|Mux6~1_combout\)) # (!\input_vector[21]~input_o\ & ((\add_instance|Mux6~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[21]~input_o\,
	datab => \add_instance|Mux6~1_combout\,
	datac => \add_instance|Mux6~3_combout\,
	combout => \add_instance|Mux6~4_combout\);

-- Location: LCCOMB_X21_Y20_N26
\add_instance|Mux5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux5~2_combout\ = (\input_vector[19]~input_o\ & ((\input_vector[20]~input_o\) # ((\add_instance|RF[1][10]~q\)))) # (!\input_vector[19]~input_o\ & (!\input_vector[20]~input_o\ & (\add_instance|RF[0][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[19]~input_o\,
	datab => \input_vector[20]~input_o\,
	datac => \add_instance|RF[0][10]~q\,
	datad => \add_instance|RF[1][10]~q\,
	combout => \add_instance|Mux5~2_combout\);

-- Location: LCCOMB_X19_Y20_N28
\add_instance|Mux5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux5~3_combout\ = (\add_instance|Mux5~2_combout\ & (((\add_instance|RF[3][10]~q\)) # (!\input_vector[20]~input_o\))) # (!\add_instance|Mux5~2_combout\ & (\input_vector[20]~input_o\ & ((\add_instance|RF[2][10]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux5~2_combout\,
	datab => \input_vector[20]~input_o\,
	datac => \add_instance|RF[3][10]~q\,
	datad => \add_instance|RF[2][10]~q\,
	combout => \add_instance|Mux5~3_combout\);

-- Location: LCCOMB_X22_Y20_N14
\add_instance|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux5~0_combout\ = (\input_vector[20]~input_o\ & ((\input_vector[19]~input_o\) # ((\add_instance|RF[6][10]~q\)))) # (!\input_vector[20]~input_o\ & (!\input_vector[19]~input_o\ & (\add_instance|RF[4][10]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[20]~input_o\,
	datab => \input_vector[19]~input_o\,
	datac => \add_instance|RF[4][10]~q\,
	datad => \add_instance|RF[6][10]~q\,
	combout => \add_instance|Mux5~0_combout\);

-- Location: LCCOMB_X18_Y20_N14
\add_instance|Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux5~1_combout\ = (\input_vector[19]~input_o\ & ((\add_instance|Mux5~0_combout\ & ((\add_instance|RF[7][10]~q\))) # (!\add_instance|Mux5~0_combout\ & (\add_instance|RF[5][10]~q\)))) # (!\input_vector[19]~input_o\ & 
-- (((\add_instance|Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|RF[5][10]~q\,
	datab => \input_vector[19]~input_o\,
	datac => \add_instance|RF[7][10]~q\,
	datad => \add_instance|Mux5~0_combout\,
	combout => \add_instance|Mux5~1_combout\);

-- Location: LCCOMB_X18_Y20_N2
\add_instance|Mux5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux5~4_combout\ = (\input_vector[21]~input_o\ & ((\add_instance|Mux5~1_combout\))) # (!\input_vector[21]~input_o\ & (\add_instance|Mux5~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|Mux5~3_combout\,
	datac => \add_instance|Mux5~1_combout\,
	datad => \input_vector[21]~input_o\,
	combout => \add_instance|Mux5~4_combout\);

-- Location: LCCOMB_X22_Y20_N2
\add_instance|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux4~0_combout\ = (\input_vector[20]~input_o\ & ((\add_instance|RF[6][11]~q\) # ((\input_vector[19]~input_o\)))) # (!\input_vector[20]~input_o\ & (((\add_instance|RF[4][11]~q\ & !\input_vector[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[20]~input_o\,
	datab => \add_instance|RF[6][11]~q\,
	datac => \add_instance|RF[4][11]~q\,
	datad => \input_vector[19]~input_o\,
	combout => \add_instance|Mux4~0_combout\);

-- Location: LCCOMB_X23_Y20_N24
\add_instance|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux4~1_combout\ = (\add_instance|Mux4~0_combout\ & (((\add_instance|RF[7][11]~q\)) # (!\input_vector[19]~input_o\))) # (!\add_instance|Mux4~0_combout\ & (\input_vector[19]~input_o\ & ((\add_instance|RF[5][11]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux4~0_combout\,
	datab => \input_vector[19]~input_o\,
	datac => \add_instance|RF[7][11]~q\,
	datad => \add_instance|RF[5][11]~q\,
	combout => \add_instance|Mux4~1_combout\);

-- Location: LCCOMB_X21_Y20_N22
\add_instance|Mux4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux4~2_combout\ = (\input_vector[19]~input_o\ & ((\input_vector[20]~input_o\) # ((\add_instance|RF[1][11]~q\)))) # (!\input_vector[19]~input_o\ & (!\input_vector[20]~input_o\ & (\add_instance|RF[0][11]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[19]~input_o\,
	datab => \input_vector[20]~input_o\,
	datac => \add_instance|RF[0][11]~q\,
	datad => \add_instance|RF[1][11]~q\,
	combout => \add_instance|Mux4~2_combout\);

-- Location: LCCOMB_X19_Y20_N16
\add_instance|Mux4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux4~3_combout\ = (\input_vector[20]~input_o\ & ((\add_instance|Mux4~2_combout\ & ((\add_instance|RF[3][11]~q\))) # (!\add_instance|Mux4~2_combout\ & (\add_instance|RF[2][11]~q\)))) # (!\input_vector[20]~input_o\ & 
-- (((\add_instance|Mux4~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[20]~input_o\,
	datab => \add_instance|RF[2][11]~q\,
	datac => \add_instance|RF[3][11]~q\,
	datad => \add_instance|Mux4~2_combout\,
	combout => \add_instance|Mux4~3_combout\);

-- Location: LCCOMB_X19_Y20_N12
\add_instance|Mux4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux4~4_combout\ = (\input_vector[21]~input_o\ & (\add_instance|Mux4~1_combout\)) # (!\input_vector[21]~input_o\ & ((\add_instance|Mux4~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux4~1_combout\,
	datac => \input_vector[21]~input_o\,
	datad => \add_instance|Mux4~3_combout\,
	combout => \add_instance|Mux4~4_combout\);

-- Location: LCCOMB_X22_Y20_N6
\add_instance|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux3~0_combout\ = (\input_vector[20]~input_o\ & ((\input_vector[19]~input_o\) # ((\add_instance|RF[6][12]~q\)))) # (!\input_vector[20]~input_o\ & (!\input_vector[19]~input_o\ & (\add_instance|RF[4][12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[20]~input_o\,
	datab => \input_vector[19]~input_o\,
	datac => \add_instance|RF[4][12]~q\,
	datad => \add_instance|RF[6][12]~q\,
	combout => \add_instance|Mux3~0_combout\);

-- Location: LCCOMB_X23_Y20_N12
\add_instance|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux3~1_combout\ = (\input_vector[19]~input_o\ & ((\add_instance|Mux3~0_combout\ & (\add_instance|RF[7][12]~q\)) # (!\add_instance|Mux3~0_combout\ & ((\add_instance|RF[5][12]~q\))))) # (!\input_vector[19]~input_o\ & 
-- (\add_instance|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[19]~input_o\,
	datab => \add_instance|Mux3~0_combout\,
	datac => \add_instance|RF[7][12]~q\,
	datad => \add_instance|RF[5][12]~q\,
	combout => \add_instance|Mux3~1_combout\);

-- Location: LCCOMB_X21_Y20_N18
\add_instance|Mux3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux3~2_combout\ = (\input_vector[19]~input_o\ & ((\input_vector[20]~input_o\) # ((\add_instance|RF[1][12]~q\)))) # (!\input_vector[19]~input_o\ & (!\input_vector[20]~input_o\ & (\add_instance|RF[0][12]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[19]~input_o\,
	datab => \input_vector[20]~input_o\,
	datac => \add_instance|RF[0][12]~q\,
	datad => \add_instance|RF[1][12]~q\,
	combout => \add_instance|Mux3~2_combout\);

-- Location: LCCOMB_X19_Y20_N22
\add_instance|Mux3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux3~3_combout\ = (\input_vector[20]~input_o\ & ((\add_instance|Mux3~2_combout\ & ((\add_instance|RF[3][12]~q\))) # (!\add_instance|Mux3~2_combout\ & (\add_instance|RF[2][12]~q\)))) # (!\input_vector[20]~input_o\ & 
-- (((\add_instance|Mux3~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[20]~input_o\,
	datab => \add_instance|RF[2][12]~q\,
	datac => \add_instance|RF[3][12]~q\,
	datad => \add_instance|Mux3~2_combout\,
	combout => \add_instance|Mux3~3_combout\);

-- Location: LCCOMB_X19_Y20_N14
\add_instance|Mux3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux3~4_combout\ = (\input_vector[21]~input_o\ & (\add_instance|Mux3~1_combout\)) # (!\input_vector[21]~input_o\ & ((\add_instance|Mux3~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux3~1_combout\,
	datab => \input_vector[21]~input_o\,
	datad => \add_instance|Mux3~3_combout\,
	combout => \add_instance|Mux3~4_combout\);

-- Location: LCCOMB_X22_Y20_N18
\add_instance|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux2~0_combout\ = (\input_vector[20]~input_o\ & ((\input_vector[19]~input_o\) # ((\add_instance|RF[6][13]~q\)))) # (!\input_vector[20]~input_o\ & (!\input_vector[19]~input_o\ & (\add_instance|RF[4][13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[20]~input_o\,
	datab => \input_vector[19]~input_o\,
	datac => \add_instance|RF[4][13]~q\,
	datad => \add_instance|RF[6][13]~q\,
	combout => \add_instance|Mux2~0_combout\);

-- Location: LCCOMB_X23_Y20_N16
\add_instance|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux2~1_combout\ = (\input_vector[19]~input_o\ & ((\add_instance|Mux2~0_combout\ & ((\add_instance|RF[7][13]~q\))) # (!\add_instance|Mux2~0_combout\ & (\add_instance|RF[5][13]~q\)))) # (!\input_vector[19]~input_o\ & 
-- (((\add_instance|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[19]~input_o\,
	datab => \add_instance|RF[5][13]~q\,
	datac => \add_instance|RF[7][13]~q\,
	datad => \add_instance|Mux2~0_combout\,
	combout => \add_instance|Mux2~1_combout\);

-- Location: LCCOMB_X21_Y20_N30
\add_instance|Mux2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux2~2_combout\ = (\input_vector[19]~input_o\ & ((\input_vector[20]~input_o\) # ((\add_instance|RF[1][13]~q\)))) # (!\input_vector[19]~input_o\ & (!\input_vector[20]~input_o\ & (\add_instance|RF[0][13]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[19]~input_o\,
	datab => \input_vector[20]~input_o\,
	datac => \add_instance|RF[0][13]~q\,
	datad => \add_instance|RF[1][13]~q\,
	combout => \add_instance|Mux2~2_combout\);

-- Location: LCCOMB_X24_Y20_N26
\add_instance|Mux2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux2~3_combout\ = (\add_instance|Mux2~2_combout\ & (((\add_instance|RF[3][13]~q\)) # (!\input_vector[20]~input_o\))) # (!\add_instance|Mux2~2_combout\ & (\input_vector[20]~input_o\ & ((\add_instance|RF[2][13]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux2~2_combout\,
	datab => \input_vector[20]~input_o\,
	datac => \add_instance|RF[3][13]~q\,
	datad => \add_instance|RF[2][13]~q\,
	combout => \add_instance|Mux2~3_combout\);

-- Location: LCCOMB_X24_Y20_N14
\add_instance|Mux2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux2~4_combout\ = (\input_vector[21]~input_o\ & (\add_instance|Mux2~1_combout\)) # (!\input_vector[21]~input_o\ & ((\add_instance|Mux2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux2~1_combout\,
	datab => \input_vector[21]~input_o\,
	datac => \add_instance|Mux2~3_combout\,
	combout => \add_instance|Mux2~4_combout\);

-- Location: LCCOMB_X21_Y20_N2
\add_instance|Mux1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux1~2_combout\ = (\input_vector[19]~input_o\ & ((\add_instance|RF[1][14]~q\) # ((\input_vector[20]~input_o\)))) # (!\input_vector[19]~input_o\ & (((\add_instance|RF[0][14]~q\ & !\input_vector[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[19]~input_o\,
	datab => \add_instance|RF[1][14]~q\,
	datac => \add_instance|RF[0][14]~q\,
	datad => \input_vector[20]~input_o\,
	combout => \add_instance|Mux1~2_combout\);

-- Location: LCCOMB_X24_Y20_N8
\add_instance|Mux1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux1~3_combout\ = (\add_instance|Mux1~2_combout\ & (((\add_instance|RF[3][14]~q\)) # (!\input_vector[20]~input_o\))) # (!\add_instance|Mux1~2_combout\ & (\input_vector[20]~input_o\ & ((\add_instance|RF[2][14]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux1~2_combout\,
	datab => \input_vector[20]~input_o\,
	datac => \add_instance|RF[3][14]~q\,
	datad => \add_instance|RF[2][14]~q\,
	combout => \add_instance|Mux1~3_combout\);

-- Location: LCCOMB_X22_Y20_N30
\add_instance|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux1~0_combout\ = (\input_vector[20]~input_o\ & ((\add_instance|RF[6][14]~q\) # ((\input_vector[19]~input_o\)))) # (!\input_vector[20]~input_o\ & (((\add_instance|RF[4][14]~q\ & !\input_vector[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[20]~input_o\,
	datab => \add_instance|RF[6][14]~q\,
	datac => \add_instance|RF[4][14]~q\,
	datad => \input_vector[19]~input_o\,
	combout => \add_instance|Mux1~0_combout\);

-- Location: LCCOMB_X23_Y20_N28
\add_instance|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux1~1_combout\ = (\input_vector[19]~input_o\ & ((\add_instance|Mux1~0_combout\ & (\add_instance|RF[7][14]~q\)) # (!\add_instance|Mux1~0_combout\ & ((\add_instance|RF[5][14]~q\))))) # (!\input_vector[19]~input_o\ & 
-- (\add_instance|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[19]~input_o\,
	datab => \add_instance|Mux1~0_combout\,
	datac => \add_instance|RF[7][14]~q\,
	datad => \add_instance|RF[5][14]~q\,
	combout => \add_instance|Mux1~1_combout\);

-- Location: LCCOMB_X24_Y20_N0
\add_instance|Mux1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux1~4_combout\ = (\input_vector[21]~input_o\ & ((\add_instance|Mux1~1_combout\))) # (!\input_vector[21]~input_o\ & (\add_instance|Mux1~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|Mux1~3_combout\,
	datac => \input_vector[21]~input_o\,
	datad => \add_instance|Mux1~1_combout\,
	combout => \add_instance|Mux1~4_combout\);

-- Location: LCCOMB_X24_Y19_N0
\add_instance|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux0~0_combout\ = (\input_vector[20]~input_o\ & ((\add_instance|RF[6][15]~q\) # ((\input_vector[19]~input_o\)))) # (!\input_vector[20]~input_o\ & (((\add_instance|RF[4][15]~q\ & !\input_vector[19]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|RF[6][15]~q\,
	datab => \input_vector[20]~input_o\,
	datac => \add_instance|RF[4][15]~q\,
	datad => \input_vector[19]~input_o\,
	combout => \add_instance|Mux0~0_combout\);

-- Location: LCCOMB_X18_Y20_N20
\add_instance|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux0~1_combout\ = (\add_instance|Mux0~0_combout\ & (((\add_instance|RF[7][15]~q\)) # (!\input_vector[19]~input_o\))) # (!\add_instance|Mux0~0_combout\ & (\input_vector[19]~input_o\ & ((\add_instance|RF[5][15]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|Mux0~0_combout\,
	datab => \input_vector[19]~input_o\,
	datac => \add_instance|RF[7][15]~q\,
	datad => \add_instance|RF[5][15]~q\,
	combout => \add_instance|Mux0~1_combout\);

-- Location: LCCOMB_X21_Y20_N14
\add_instance|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux0~2_combout\ = (\input_vector[19]~input_o\ & ((\add_instance|RF[1][15]~q\) # ((\input_vector[20]~input_o\)))) # (!\input_vector[19]~input_o\ & (((\add_instance|RF[0][15]~q\ & !\input_vector[20]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[19]~input_o\,
	datab => \add_instance|RF[1][15]~q\,
	datac => \add_instance|RF[0][15]~q\,
	datad => \input_vector[20]~input_o\,
	combout => \add_instance|Mux0~2_combout\);

-- Location: LCCOMB_X25_Y16_N2
\add_instance|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux0~3_combout\ = (\input_vector[20]~input_o\ & ((\add_instance|Mux0~2_combout\ & ((\add_instance|RF[3][15]~q\))) # (!\add_instance|Mux0~2_combout\ & (\add_instance|RF[2][15]~q\)))) # (!\input_vector[20]~input_o\ & 
-- (((\add_instance|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector[20]~input_o\,
	datab => \add_instance|RF[2][15]~q\,
	datac => \add_instance|RF[3][15]~q\,
	datad => \add_instance|Mux0~2_combout\,
	combout => \add_instance|Mux0~3_combout\);

-- Location: LCCOMB_X18_Y20_N28
\add_instance|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|Mux0~4_combout\ = (\input_vector[21]~input_o\ & (\add_instance|Mux0~1_combout\)) # (!\input_vector[21]~input_o\ & ((\add_instance|Mux0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|Mux0~1_combout\,
	datac => \add_instance|Mux0~3_combout\,
	datad => \input_vector[21]~input_o\,
	combout => \add_instance|Mux0~4_combout\);

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

ww_output_vector(16) <= \output_vector[16]~output_o\;

ww_output_vector(17) <= \output_vector[17]~output_o\;

ww_output_vector(18) <= \output_vector[18]~output_o\;

ww_output_vector(19) <= \output_vector[19]~output_o\;

ww_output_vector(20) <= \output_vector[20]~output_o\;

ww_output_vector(21) <= \output_vector[21]~output_o\;

ww_output_vector(22) <= \output_vector[22]~output_o\;

ww_output_vector(23) <= \output_vector[23]~output_o\;

ww_output_vector(24) <= \output_vector[24]~output_o\;

ww_output_vector(25) <= \output_vector[25]~output_o\;

ww_output_vector(26) <= \output_vector[26]~output_o\;

ww_output_vector(27) <= \output_vector[27]~output_o\;

ww_output_vector(28) <= \output_vector[28]~output_o\;

ww_output_vector(29) <= \output_vector[29]~output_o\;

ww_output_vector(30) <= \output_vector[30]~output_o\;

ww_output_vector(31) <= \output_vector[31]~output_o\;

ww_output_vector(32) <= \output_vector[32]~output_o\;

ww_output_vector(33) <= \output_vector[33]~output_o\;

ww_output_vector(34) <= \output_vector[34]~output_o\;

ww_output_vector(35) <= \output_vector[35]~output_o\;

ww_output_vector(36) <= \output_vector[36]~output_o\;

ww_output_vector(37) <= \output_vector[37]~output_o\;

ww_output_vector(38) <= \output_vector[38]~output_o\;

ww_output_vector(39) <= \output_vector[39]~output_o\;

ww_output_vector(40) <= \output_vector[40]~output_o\;

ww_output_vector(41) <= \output_vector[41]~output_o\;

ww_output_vector(42) <= \output_vector[42]~output_o\;

ww_output_vector(43) <= \output_vector[43]~output_o\;

ww_output_vector(44) <= \output_vector[44]~output_o\;

ww_output_vector(45) <= \output_vector[45]~output_o\;

ww_output_vector(46) <= \output_vector[46]~output_o\;

ww_output_vector(47) <= \output_vector[47]~output_o\;
END structure;


