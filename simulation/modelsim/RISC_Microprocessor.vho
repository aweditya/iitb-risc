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

-- DATE "04/14/2022 10:37:25"

-- 
-- Device: Altera 5M1270ZT144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	DUT IS
    PORT (
	input_vector : IN std_logic_vector(33 DOWNTO 0);
	output_vector : BUFFER std_logic_vector(17 DOWNTO 0)
	);
END DUT;

-- Design Ports Information


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
SIGNAL ww_input_vector : std_logic_vector(33 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(17 DOWNTO 0);
SIGNAL \add_instance|result~4_combout\ : std_logic;
SIGNAL \add_instance|zero_check~33_combout\ : std_logic;
SIGNAL \add_instance|zero_check~9_combout\ : std_logic;
SIGNAL \add_instance|zero_check~7_combout\ : std_logic;
SIGNAL \add_instance|result~3_combout\ : std_logic;
SIGNAL \add_instance|zero_check~8_combout\ : std_logic;
SIGNAL \add_instance|result~1_combout\ : std_logic;
SIGNAL \add_instance|zero_check~32_combout\ : std_logic;
SIGNAL \add_instance|zero_check~6_combout\ : std_logic;
SIGNAL \add_instance|zero_check~4_combout\ : std_logic;
SIGNAL \add_instance|result~0_combout\ : std_logic;
SIGNAL \add_instance|zero_check~5_combout\ : std_logic;
SIGNAL \add_instance|zero_check~10_combout\ : std_logic;
SIGNAL \add_instance|zero_check~27_combout\ : std_logic;
SIGNAL \add_instance|zero_check~30_combout\ : std_logic;
SIGNAL \add_instance|zero_check~29_combout\ : std_logic;
SIGNAL \add_instance|zero_check~28_combout\ : std_logic;
SIGNAL \add_instance|zero_check~31_combout\ : std_logic;
SIGNAL \add_instance|carry~5_combout\ : std_logic;
SIGNAL \add_instance|carry~6_combout\ : std_logic;
SIGNAL \add_instance|carry~7_combout\ : std_logic;
SIGNAL \add_instance|carry~4_combout\ : std_logic;
SIGNAL \add_instance|zero_check~12_combout\ : std_logic;
SIGNAL \add_instance|zero_check~15_combout\ : std_logic;
SIGNAL \add_instance|zero_check~14_combout\ : std_logic;
SIGNAL \add_instance|zero_check~16_combout\ : std_logic;
SIGNAL \add_instance|zero_check~13_combout\ : std_logic;
SIGNAL \add_instance|zero_check~17_combout\ : std_logic;
SIGNAL \add_instance|carry~2_combout\ : std_logic;
SIGNAL \add_instance|carry~1_combout\ : std_logic;
SIGNAL \add_instance|carry~0_combout\ : std_logic;
SIGNAL \add_instance|carry~3_combout\ : std_logic;
SIGNAL \add_instance|zero_check~11_combout\ : std_logic;
SIGNAL \add_instance|zero_check~18_combout\ : std_logic;
SIGNAL \add_instance|carry~8_combout\ : std_logic;
SIGNAL \add_instance|carry~10_combout\ : std_logic;
SIGNAL \add_instance|carry~11_combout\ : std_logic;
SIGNAL \add_instance|carry~13_combout\ : std_logic;
SIGNAL \add_instance|carry~14_combout\ : std_logic;
SIGNAL \add_instance|carry~16_combout\ : std_logic;
SIGNAL \add_instance|carry~17_combout\ : std_logic;
SIGNAL \add_instance|carry~19_combout\ : std_logic;
SIGNAL \add_instance|carry~20_combout\ : std_logic;
SIGNAL \add_instance|carry~22_combout\ : std_logic;
SIGNAL \add_instance|carry~23_combout\ : std_logic;
SIGNAL \add_instance|sum~5_combout\ : std_logic;
SIGNAL \add_instance|carry~25_combout\ : std_logic;
SIGNAL \add_instance|carry~26_combout\ : std_logic;
SIGNAL \add_instance|result~8_combout\ : std_logic;
SIGNAL \add_instance|sum~2_combout\ : std_logic;
SIGNAL \add_instance|sum~1_combout\ : std_logic;
SIGNAL \add_instance|sum~3_combout\ : std_logic;
SIGNAL \add_instance|sum~4_combout\ : std_logic;
SIGNAL \add_instance|zero_check~24_combout\ : std_logic;
SIGNAL \add_instance|zero_check~25_combout\ : std_logic;
SIGNAL \add_instance|carry~15_combout\ : std_logic;
SIGNAL \add_instance|carry~18_combout\ : std_logic;
SIGNAL \add_instance|zero_check~20_combout\ : std_logic;
SIGNAL \add_instance|carry~24_combout\ : std_logic;
SIGNAL \add_instance|result~5_combout\ : std_logic;
SIGNAL \add_instance|result~7_combout\ : std_logic;
SIGNAL \add_instance|carry~21_combout\ : std_logic;
SIGNAL \add_instance|zero_check~21_combout\ : std_logic;
SIGNAL \add_instance|carry~27_combout\ : std_logic;
SIGNAL \add_instance|sum~0_combout\ : std_logic;
SIGNAL \add_instance|zero_check~22_combout\ : std_logic;
SIGNAL \add_instance|zero_check~23_combout\ : std_logic;
SIGNAL \add_instance|carry~9_combout\ : std_logic;
SIGNAL \add_instance|result~2_combout\ : std_logic;
SIGNAL \add_instance|result~6_combout\ : std_logic;
SIGNAL \add_instance|carry~12_combout\ : std_logic;
SIGNAL \add_instance|zero_check~19_combout\ : std_logic;
SIGNAL \add_instance|zero_check~26_combout\ : std_logic;
SIGNAL \add_instance|control_out[0]~0_combout\ : std_logic;
SIGNAL \add_instance|control_out[0]~1_combout\ : std_logic;
SIGNAL \add_instance|carry~28_combout\ : std_logic;
SIGNAL \add_instance|carry~29_combout\ : std_logic;
SIGNAL \add_instance|control_out[1]~2_combout\ : std_logic;
SIGNAL \add_instance|C[0]~2_combout\ : std_logic;
SIGNAL \add_instance|C[1]~3_combout\ : std_logic;
SIGNAL \add_instance|C[1]~4_combout\ : std_logic;
SIGNAL \add_instance|C[2]~5_combout\ : std_logic;
SIGNAL \add_instance|C[2]~6_combout\ : std_logic;
SIGNAL \add_instance|C[3]~7_combout\ : std_logic;
SIGNAL \add_instance|C[3]~8_combout\ : std_logic;
SIGNAL \add_instance|C[4]~9_combout\ : std_logic;
SIGNAL \add_instance|C[4]~10_combout\ : std_logic;
SIGNAL \add_instance|C[5]~11_combout\ : std_logic;
SIGNAL \add_instance|C[5]~12_combout\ : std_logic;
SIGNAL \add_instance|C[6]~13_combout\ : std_logic;
SIGNAL \add_instance|C[6]~14_combout\ : std_logic;
SIGNAL \add_instance|C[7]~15_combout\ : std_logic;
SIGNAL \add_instance|C[7]~16_combout\ : std_logic;
SIGNAL \add_instance|C[8]~17_combout\ : std_logic;
SIGNAL \add_instance|C[8]~18_combout\ : std_logic;
SIGNAL \add_instance|C[9]~19_combout\ : std_logic;
SIGNAL \add_instance|C[9]~20_combout\ : std_logic;
SIGNAL \add_instance|C[10]~21_combout\ : std_logic;
SIGNAL \add_instance|C[10]~22_combout\ : std_logic;
SIGNAL \add_instance|C[11]~23_combout\ : std_logic;
SIGNAL \add_instance|C[11]~24_combout\ : std_logic;
SIGNAL \add_instance|C[12]~25_combout\ : std_logic;
SIGNAL \add_instance|C[12]~26_combout\ : std_logic;
SIGNAL \add_instance|C[13]~27_combout\ : std_logic;
SIGNAL \add_instance|C[13]~28_combout\ : std_logic;
SIGNAL \add_instance|C[14]~29_combout\ : std_logic;
SIGNAL \add_instance|C[14]~32_combout\ : std_logic;
SIGNAL \add_instance|C[15]~30_combout\ : std_logic;
SIGNAL \add_instance|C[15]~31_combout\ : std_logic;
SIGNAL \input_vector~combout\ : std_logic_vector(33 DOWNTO 0);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[33]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(33),
	combout => \input_vector~combout\(33));

-- Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(17),
	combout => \input_vector~combout\(17));

-- Location: LC_X5_Y7_N1
\add_instance|result~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|result~4_combout\ = (\input_vector~combout\(33) $ ((\input_vector~combout\(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(33),
	datac => \input_vector~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|result~4_combout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[30]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(30),
	combout => \input_vector~combout\(30));

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(14),
	combout => \input_vector~combout\(14));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[31]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(31),
	combout => \input_vector~combout\(31));

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(15),
	combout => \input_vector~combout\(15));

-- Location: PIN_42,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[32]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(32),
	combout => \input_vector~combout\(32));

-- Location: PIN_39,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(16),
	combout => \input_vector~combout\(16));

-- Location: LC_X4_Y6_N8
\add_instance|zero_check~33\ : maxv_lcell
-- Equation(s):
-- \add_instance|zero_check~33_combout\ = (\input_vector~combout\(31) & ((\input_vector~combout\(32) $ (\input_vector~combout\(16))) # (!\input_vector~combout\(15)))) # (!\input_vector~combout\(31) & ((\input_vector~combout\(15)) # 
-- (\input_vector~combout\(32) $ (\input_vector~combout\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ff6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(31),
	datab => \input_vector~combout\(15),
	datac => \input_vector~combout\(32),
	datad => \input_vector~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|zero_check~33_combout\);

-- Location: LC_X4_Y7_N4
\add_instance|zero_check~9\ : maxv_lcell
-- Equation(s):
-- \add_instance|zero_check~9_combout\ = (\add_instance|result~4_combout\) # ((\add_instance|zero_check~33_combout\) # (\input_vector~combout\(30) $ (\input_vector~combout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffbe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|result~4_combout\,
	datab => \input_vector~combout\(30),
	datac => \input_vector~combout\(14),
	datad => \add_instance|zero_check~33_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|zero_check~9_combout\);

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(12),
	combout => \input_vector~combout\(12));

-- Location: PIN_41,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[29]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(29),
	combout => \input_vector~combout\(29));

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(13),
	combout => \input_vector~combout\(13));

-- Location: PIN_140,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[28]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(28),
	combout => \input_vector~combout\(28));

-- Location: LC_X4_Y9_N7
\add_instance|zero_check~7\ : maxv_lcell
-- Equation(s):
-- \add_instance|zero_check~7_combout\ = (\input_vector~combout\(12) & ((\input_vector~combout\(29) $ (\input_vector~combout\(13))) # (!\input_vector~combout\(28)))) # (!\input_vector~combout\(12) & ((\input_vector~combout\(28)) # (\input_vector~combout\(29) 
-- $ (\input_vector~combout\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7dbe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(12),
	datab => \input_vector~combout\(29),
	datac => \input_vector~combout\(13),
	datad => \input_vector~combout\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|zero_check~7_combout\);

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[27]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(27),
	combout => \input_vector~combout\(27));

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(11),
	combout => \input_vector~combout\(11));

-- Location: LC_X4_Y8_N5
\add_instance|result~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|result~3_combout\ = (\input_vector~combout\(27) $ ((\input_vector~combout\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(27),
	datac => \input_vector~combout\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|result~3_combout\);

-- Location: PIN_134,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[26]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(26),
	combout => \input_vector~combout\(26));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(10),
	combout => \input_vector~combout\(10));

-- Location: LC_X4_Y7_N1
\add_instance|zero_check~8\ : maxv_lcell
-- Equation(s):
-- \add_instance|zero_check~8_combout\ = (\add_instance|zero_check~7_combout\) # ((\add_instance|result~3_combout\) # (\input_vector~combout\(26) $ (\input_vector~combout\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "effe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|zero_check~7_combout\,
	datab => \add_instance|result~3_combout\,
	datac => \input_vector~combout\(26),
	datad => \input_vector~combout\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|zero_check~8_combout\);

-- Location: PIN_60,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(9),
	combout => \input_vector~combout\(9));

-- Location: PIN_123,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[25]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(25),
	combout => \input_vector~combout\(25));

-- Location: LC_X10_Y7_N4
\add_instance|result~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|result~1_combout\ = (\input_vector~combout\(9) $ ((\input_vector~combout\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(9),
	datac => \input_vector~combout\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|result~1_combout\);

-- Location: PIN_127,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(6),
	combout => \input_vector~combout\(6));

-- Location: PIN_121,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[22]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(22),
	combout => \input_vector~combout\(22));

-- Location: PIN_124,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(8),
	combout => \input_vector~combout\(8));

-- Location: PIN_129,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[23]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(23),
	combout => \input_vector~combout\(23));

-- Location: PIN_62,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[24]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(24),
	combout => \input_vector~combout\(24));

-- Location: PIN_131,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(7),
	combout => \input_vector~combout\(7));

-- Location: LC_X9_Y8_N0
\add_instance|zero_check~32\ : maxv_lcell
-- Equation(s):
-- \add_instance|zero_check~32_combout\ = (\input_vector~combout\(8) & ((\input_vector~combout\(23) $ (\input_vector~combout\(7))) # (!\input_vector~combout\(24)))) # (!\input_vector~combout\(8) & ((\input_vector~combout\(24)) # (\input_vector~combout\(23) $ 
-- (\input_vector~combout\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7bde",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(8),
	datab => \input_vector~combout\(23),
	datac => \input_vector~combout\(24),
	datad => \input_vector~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|zero_check~32_combout\);

-- Location: LC_X9_Y8_N1
\add_instance|zero_check~6\ : maxv_lcell
-- Equation(s):
-- \add_instance|zero_check~6_combout\ = (\add_instance|result~1_combout\) # ((\add_instance|zero_check~32_combout\) # (\input_vector~combout\(6) $ (\input_vector~combout\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffbe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|result~1_combout\,
	datab => \input_vector~combout\(6),
	datac => \input_vector~combout\(22),
	datad => \add_instance|zero_check~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|zero_check~6_combout\);

-- Location: PIN_117,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(4),
	combout => \input_vector~combout\(4));

-- Location: PIN_57,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(5),
	combout => \input_vector~combout\(5));

-- Location: PIN_125,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[21]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(21),
	combout => \input_vector~combout\(21));

-- Location: PIN_133,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[20]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(20),
	combout => \input_vector~combout\(20));

-- Location: LC_X9_Y7_N2
\add_instance|zero_check~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|zero_check~4_combout\ = (\input_vector~combout\(4) & ((\input_vector~combout\(5) $ (\input_vector~combout\(21))) # (!\input_vector~combout\(20)))) # (!\input_vector~combout\(4) & ((\input_vector~combout\(20)) # (\input_vector~combout\(5) $ 
-- (\input_vector~combout\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7dbe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datab => \input_vector~combout\(5),
	datac => \input_vector~combout\(21),
	datad => \input_vector~combout\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|zero_check~4_combout\);

-- Location: PIN_51,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: PIN_48,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[18]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(18),
	combout => \input_vector~combout\(18));

-- Location: PIN_132,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[19]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(19),
	combout => \input_vector~combout\(19));

-- Location: PIN_52,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: LC_X7_Y7_N2
\add_instance|result~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|result~0_combout\ = ((\input_vector~combout\(19) $ (\input_vector~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \input_vector~combout\(19),
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|result~0_combout\);

-- Location: LC_X7_Y7_N1
\add_instance|zero_check~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|zero_check~5_combout\ = (\add_instance|zero_check~4_combout\) # ((\add_instance|result~0_combout\) # (\input_vector~combout\(2) $ (\input_vector~combout\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffbe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|zero_check~4_combout\,
	datab => \input_vector~combout\(2),
	datac => \input_vector~combout\(18),
	datad => \add_instance|result~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|zero_check~5_combout\);

-- Location: LC_X6_Y7_N1
\add_instance|zero_check~10\ : maxv_lcell
-- Equation(s):
-- \add_instance|zero_check~10_combout\ = (\add_instance|zero_check~9_combout\) # ((\add_instance|zero_check~8_combout\) # ((\add_instance|zero_check~6_combout\) # (\add_instance|zero_check~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|zero_check~9_combout\,
	datab => \add_instance|zero_check~8_combout\,
	datac => \add_instance|zero_check~6_combout\,
	datad => \add_instance|zero_check~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|zero_check~10_combout\);

-- Location: PIN_43,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: LC_X7_Y7_N3
\add_instance|zero_check~27\ : maxv_lcell
-- Equation(s):
-- \add_instance|zero_check~27_combout\ = (\input_vector~combout\(19)) # ((\input_vector~combout\(20)) # ((\input_vector~combout\(18)) # (\input_vector~combout\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(19),
	datab => \input_vector~combout\(20),
	datac => \input_vector~combout\(18),
	datad => \input_vector~combout\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|zero_check~27_combout\);

-- Location: LC_X4_Y7_N2
\add_instance|zero_check~30\ : maxv_lcell
-- Equation(s):
-- \add_instance|zero_check~30_combout\ = (\input_vector~combout\(31)) # ((\input_vector~combout\(33)) # ((\input_vector~combout\(32)) # (\input_vector~combout\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(31),
	datab => \input_vector~combout\(33),
	datac => \input_vector~combout\(32),
	datad => \input_vector~combout\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|zero_check~30_combout\);

-- Location: LC_X4_Y7_N9
\add_instance|zero_check~29\ : maxv_lcell
-- Equation(s):
-- \add_instance|zero_check~29_combout\ = (\input_vector~combout\(29)) # ((\input_vector~combout\(27)) # ((\input_vector~combout\(26)) # (\input_vector~combout\(28))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(29),
	datab => \input_vector~combout\(27),
	datac => \input_vector~combout\(26),
	datad => \input_vector~combout\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|zero_check~29_combout\);

-- Location: LC_X9_Y8_N4
\add_instance|zero_check~28\ : maxv_lcell
-- Equation(s):
-- \add_instance|zero_check~28_combout\ = (\input_vector~combout\(24)) # ((\input_vector~combout\(23)) # ((\input_vector~combout\(22)) # (\input_vector~combout\(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(24),
	datab => \input_vector~combout\(23),
	datac => \input_vector~combout\(22),
	datad => \input_vector~combout\(25),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|zero_check~28_combout\);

-- Location: LC_X5_Y7_N4
\add_instance|zero_check~31\ : maxv_lcell
-- Equation(s):
-- \add_instance|zero_check~31_combout\ = (\add_instance|zero_check~27_combout\) # ((\add_instance|zero_check~30_combout\) # ((\add_instance|zero_check~29_combout\) # (\add_instance|zero_check~28_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|zero_check~27_combout\,
	datab => \add_instance|zero_check~30_combout\,
	datac => \add_instance|zero_check~29_combout\,
	datad => \add_instance|zero_check~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|zero_check~31_combout\);

-- Location: LC_X4_Y9_N5
\add_instance|carry~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~5_combout\ = (\input_vector~combout\(12) & (((\input_vector~combout\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(12),
	datad => \input_vector~combout\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~5_combout\);

-- Location: LC_X4_Y7_N5
\add_instance|carry~6\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~6_combout\ = (((\input_vector~combout\(14) & \input_vector~combout\(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \input_vector~combout\(14),
	datad => \input_vector~combout\(30),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~6_combout\);

-- Location: LC_X4_Y6_N7
\add_instance|carry~7\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~7_combout\ = (((\input_vector~combout\(32) & \input_vector~combout\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \input_vector~combout\(32),
	datad => \input_vector~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~7_combout\);

-- Location: LC_X6_Y7_N7
\add_instance|carry~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~4_combout\ = (\input_vector~combout\(10) & (((\input_vector~combout\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(10),
	datad => \input_vector~combout\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~4_combout\);

-- Location: LC_X4_Y9_N8
\add_instance|zero_check~12\ : maxv_lcell
-- Equation(s):
-- \add_instance|zero_check~12_combout\ = (((!\add_instance|carry~4_combout\) # (!\add_instance|carry~7_combout\)) # (!\add_instance|carry~6_combout\)) # (!\add_instance|carry~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|carry~5_combout\,
	datab => \add_instance|carry~6_combout\,
	datac => \add_instance|carry~7_combout\,
	datad => \add_instance|carry~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|zero_check~12_combout\);

-- Location: LC_X8_Y7_N8
\add_instance|zero_check~15\ : maxv_lcell
-- Equation(s):
-- \add_instance|zero_check~15_combout\ = (((!\input_vector~combout\(21)) # (!\input_vector~combout\(25))) # (!\input_vector~combout\(23))) # (!\input_vector~combout\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(19),
	datab => \input_vector~combout\(23),
	datac => \input_vector~combout\(25),
	datad => \input_vector~combout\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|zero_check~15_combout\);

-- Location: LC_X4_Y8_N6
\add_instance|zero_check~14\ : maxv_lcell
-- Equation(s):
-- \add_instance|zero_check~14_combout\ = (((!\input_vector~combout\(17)) # (!\input_vector~combout\(11))) # (!\input_vector~combout\(13))) # (!\input_vector~combout\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(15),
	datab => \input_vector~combout\(13),
	datac => \input_vector~combout\(11),
	datad => \input_vector~combout\(17),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|zero_check~14_combout\);

-- Location: LC_X3_Y8_N5
\add_instance|zero_check~16\ : maxv_lcell
-- Equation(s):
-- \add_instance|zero_check~16_combout\ = (((!\input_vector~combout\(27)) # (!\input_vector~combout\(29))) # (!\input_vector~combout\(31))) # (!\input_vector~combout\(33))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(33),
	datab => \input_vector~combout\(31),
	datac => \input_vector~combout\(29),
	datad => \input_vector~combout\(27),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|zero_check~16_combout\);

-- Location: LC_X8_Y7_N9
\add_instance|zero_check~13\ : maxv_lcell
-- Equation(s):
-- \add_instance|zero_check~13_combout\ = (((!\input_vector~combout\(9)) # (!\input_vector~combout\(5))) # (!\input_vector~combout\(3))) # (!\input_vector~combout\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(7),
	datab => \input_vector~combout\(3),
	datac => \input_vector~combout\(5),
	datad => \input_vector~combout\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|zero_check~13_combout\);

-- Location: LC_X8_Y7_N6
\add_instance|zero_check~17\ : maxv_lcell
-- Equation(s):
-- \add_instance|zero_check~17_combout\ = (\add_instance|zero_check~15_combout\) # ((\add_instance|zero_check~14_combout\) # ((\add_instance|zero_check~16_combout\) # (\add_instance|zero_check~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|zero_check~15_combout\,
	datab => \add_instance|zero_check~14_combout\,
	datac => \add_instance|zero_check~16_combout\,
	datad => \add_instance|zero_check~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|zero_check~17_combout\);

-- Location: LC_X9_Y8_N3
\add_instance|carry~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~2_combout\ = ((\input_vector~combout\(6) & (\input_vector~combout\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(6),
	datac => \input_vector~combout\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~2_combout\);

-- Location: LC_X9_Y7_N9
\add_instance|carry~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~1_combout\ = ((\input_vector~combout\(20) & (\input_vector~combout\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(20),
	datac => \input_vector~combout\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~1_combout\);

-- Location: LC_X7_Y7_N4
\add_instance|carry~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~0_combout\ = ((\input_vector~combout\(2) & (\input_vector~combout\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(2),
	datac => \input_vector~combout\(18),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~0_combout\);

-- Location: LC_X10_Y7_N1
\add_instance|carry~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~3_combout\ = ((\input_vector~combout\(8) & ((\input_vector~combout\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(8),
	datad => \input_vector~combout\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~3_combout\);

-- Location: LC_X9_Y7_N7
\add_instance|zero_check~11\ : maxv_lcell
-- Equation(s):
-- \add_instance|zero_check~11_combout\ = (((!\add_instance|carry~3_combout\) # (!\add_instance|carry~0_combout\)) # (!\add_instance|carry~1_combout\)) # (!\add_instance|carry~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7fff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|carry~2_combout\,
	datab => \add_instance|carry~1_combout\,
	datac => \add_instance|carry~0_combout\,
	datad => \add_instance|carry~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|zero_check~11_combout\);

-- Location: LC_X8_Y7_N2
\add_instance|zero_check~18\ : maxv_lcell
-- Equation(s):
-- \add_instance|zero_check~18_combout\ = (\add_instance|zero_check~12_combout\) # (((\add_instance|zero_check~17_combout\) # (\add_instance|zero_check~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|zero_check~12_combout\,
	datac => \add_instance|zero_check~17_combout\,
	datad => \add_instance|zero_check~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|zero_check~18_combout\);

-- Location: LC_X7_Y7_N9
\add_instance|carry~8\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~8_combout\ = (\input_vector~combout\(19) & ((\input_vector~combout\(3)) # ((\input_vector~combout\(2) & \input_vector~combout\(18))))) # (!\input_vector~combout\(19) & (\input_vector~combout\(2) & (\input_vector~combout\(18) & 
-- \input_vector~combout\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ea80",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(19),
	datab => \input_vector~combout\(2),
	datac => \input_vector~combout\(18),
	datad => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~8_combout\);

-- Location: LC_X9_Y7_N6
\add_instance|carry~10\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~10_combout\ = (\add_instance|carry~8_combout\ & ((\input_vector~combout\(4)) # ((\input_vector~combout\(20)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e0e0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datab => \input_vector~combout\(20),
	datac => \add_instance|carry~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~10_combout\);

-- Location: LC_X9_Y7_N0
\add_instance|carry~11\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~11_combout\ = (\input_vector~combout\(21) & ((\add_instance|carry~10_combout\) # ((\add_instance|carry~1_combout\) # (\input_vector~combout\(5))))) # (!\input_vector~combout\(21) & (\input_vector~combout\(5) & 
-- ((\add_instance|carry~10_combout\) # (\add_instance|carry~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fee0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|carry~10_combout\,
	datab => \add_instance|carry~1_combout\,
	datac => \input_vector~combout\(21),
	datad => \input_vector~combout\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~11_combout\);

-- Location: LC_X9_Y8_N8
\add_instance|carry~13\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~13_combout\ = (\add_instance|carry~11_combout\ & ((\input_vector~combout\(6)) # ((\input_vector~combout\(22)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a8a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|carry~11_combout\,
	datab => \input_vector~combout\(6),
	datac => \input_vector~combout\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~13_combout\);

-- Location: LC_X9_Y8_N5
\add_instance|carry~14\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~14_combout\ = (\input_vector~combout\(23) & ((\add_instance|carry~13_combout\) # ((\input_vector~combout\(7)) # (\add_instance|carry~2_combout\)))) # (!\input_vector~combout\(23) & (\input_vector~combout\(7) & 
-- ((\add_instance|carry~13_combout\) # (\add_instance|carry~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fce8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|carry~13_combout\,
	datab => \input_vector~combout\(23),
	datac => \input_vector~combout\(7),
	datad => \add_instance|carry~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~14_combout\);

-- Location: LC_X10_Y7_N9
\add_instance|carry~16\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~16_combout\ = (\add_instance|carry~14_combout\ & ((\input_vector~combout\(8)) # ((\input_vector~combout\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|carry~14_combout\,
	datab => \input_vector~combout\(8),
	datad => \input_vector~combout\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~16_combout\);

-- Location: LC_X10_Y7_N2
\add_instance|carry~17\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~17_combout\ = (\input_vector~combout\(9) & ((\add_instance|carry~16_combout\) # ((\input_vector~combout\(25)) # (\add_instance|carry~3_combout\)))) # (!\input_vector~combout\(9) & (\input_vector~combout\(25) & 
-- ((\add_instance|carry~16_combout\) # (\add_instance|carry~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fae8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(9),
	datab => \add_instance|carry~16_combout\,
	datac => \input_vector~combout\(25),
	datad => \add_instance|carry~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~17_combout\);

-- Location: LC_X6_Y7_N2
\add_instance|carry~19\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~19_combout\ = ((\add_instance|carry~17_combout\ & ((\input_vector~combout\(10)) # (\input_vector~combout\(26)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(10),
	datab => \input_vector~combout\(26),
	datad => \add_instance|carry~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~19_combout\);

-- Location: LC_X4_Y9_N0
\add_instance|carry~20\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~20_combout\ = (\input_vector~combout\(11) & ((\input_vector~combout\(27)) # ((\add_instance|carry~19_combout\) # (\add_instance|carry~4_combout\)))) # (!\input_vector~combout\(11) & (\input_vector~combout\(27) & 
-- ((\add_instance|carry~19_combout\) # (\add_instance|carry~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "eee8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(11),
	datab => \input_vector~combout\(27),
	datac => \add_instance|carry~19_combout\,
	datad => \add_instance|carry~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~20_combout\);

-- Location: LC_X4_Y9_N1
\add_instance|carry~22\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~22_combout\ = ((\add_instance|carry~20_combout\ & ((\input_vector~combout\(12)) # (\input_vector~combout\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(12),
	datac => \add_instance|carry~20_combout\,
	datad => \input_vector~combout\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~22_combout\);

-- Location: LC_X4_Y9_N2
\add_instance|carry~23\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~23_combout\ = (\input_vector~combout\(29) & ((\add_instance|carry~5_combout\) # ((\input_vector~combout\(13)) # (\add_instance|carry~22_combout\)))) # (!\input_vector~combout\(29) & (\input_vector~combout\(13) & 
-- ((\add_instance|carry~5_combout\) # (\add_instance|carry~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fce8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|carry~5_combout\,
	datab => \input_vector~combout\(29),
	datac => \input_vector~combout\(13),
	datad => \add_instance|carry~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~23_combout\);

-- Location: LC_X4_Y7_N0
\add_instance|sum~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|sum~5_combout\ = \add_instance|carry~23_combout\ $ (\input_vector~combout\(30) $ ((\input_vector~combout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9696",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|carry~23_combout\,
	datab => \input_vector~combout\(30),
	datac => \input_vector~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sum~5_combout\);

-- Location: LC_X4_Y7_N3
\add_instance|carry~25\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~25_combout\ = (\add_instance|carry~23_combout\ & ((\input_vector~combout\(30)) # ((\input_vector~combout\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a8a8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|carry~23_combout\,
	datab => \input_vector~combout\(30),
	datac => \input_vector~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~25_combout\);

-- Location: LC_X4_Y6_N9
\add_instance|carry~26\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~26_combout\ = (\input_vector~combout\(15) & ((\add_instance|carry~25_combout\) # ((\input_vector~combout\(31)) # (\add_instance|carry~6_combout\)))) # (!\input_vector~combout\(15) & (\input_vector~combout\(31) & 
-- ((\add_instance|carry~25_combout\) # (\add_instance|carry~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fce8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|carry~25_combout\,
	datab => \input_vector~combout\(15),
	datac => \input_vector~combout\(31),
	datad => \add_instance|carry~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~26_combout\);

-- Location: LC_X4_Y6_N4
\add_instance|result~8\ : maxv_lcell
-- Equation(s):
-- \add_instance|result~8_combout\ = ((\input_vector~combout\(32) $ (\input_vector~combout\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \input_vector~combout\(32),
	datad => \input_vector~combout\(16),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|result~8_combout\);

-- Location: LC_X10_Y7_N6
\add_instance|sum~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|sum~2_combout\ = \add_instance|carry~14_combout\ $ (\input_vector~combout\(8) $ (((\input_vector~combout\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9966",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|carry~14_combout\,
	datab => \input_vector~combout\(8),
	datad => \input_vector~combout\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sum~2_combout\);

-- Location: LC_X9_Y8_N2
\add_instance|sum~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|sum~1_combout\ = \add_instance|carry~11_combout\ $ (\input_vector~combout\(6) $ ((\input_vector~combout\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9696",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|carry~11_combout\,
	datab => \input_vector~combout\(6),
	datac => \input_vector~combout\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sum~1_combout\);

-- Location: LC_X6_Y7_N0
\add_instance|sum~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|sum~3_combout\ = \input_vector~combout\(10) $ (\input_vector~combout\(26) $ (((\add_instance|carry~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9966",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(10),
	datab => \input_vector~combout\(26),
	datad => \add_instance|carry~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sum~3_combout\);

-- Location: LC_X4_Y9_N6
\add_instance|sum~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|sum~4_combout\ = \input_vector~combout\(12) $ (((\add_instance|carry~20_combout\ $ (\input_vector~combout\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a55a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(12),
	datac => \add_instance|carry~20_combout\,
	datad => \input_vector~combout\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sum~4_combout\);

-- Location: LC_X6_Y7_N3
\add_instance|zero_check~24\ : maxv_lcell
-- Equation(s):
-- \add_instance|zero_check~24_combout\ = (\add_instance|sum~2_combout\) # ((\add_instance|sum~1_combout\) # ((\add_instance|sum~3_combout\) # (\add_instance|sum~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|sum~2_combout\,
	datab => \add_instance|sum~1_combout\,
	datac => \add_instance|sum~3_combout\,
	datad => \add_instance|sum~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|zero_check~24_combout\);

-- Location: LC_X4_Y6_N6
\add_instance|zero_check~25\ : maxv_lcell
-- Equation(s):
-- \add_instance|zero_check~25_combout\ = (\add_instance|sum~5_combout\) # ((\add_instance|zero_check~24_combout\) # (\add_instance|carry~26_combout\ $ (\add_instance|result~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffbe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|sum~5_combout\,
	datab => \add_instance|carry~26_combout\,
	datac => \add_instance|result~8_combout\,
	datad => \add_instance|zero_check~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|zero_check~25_combout\);

-- Location: LC_X10_Y7_N3
\add_instance|carry~15\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~15_combout\ = (\add_instance|carry~14_combout\ & ((\input_vector~combout\(8)) # ((\input_vector~combout\(24))))) # (!\add_instance|carry~14_combout\ & (\input_vector~combout\(8) & ((\input_vector~combout\(24)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|carry~14_combout\,
	datab => \input_vector~combout\(8),
	datad => \input_vector~combout\(24),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~15_combout\);

-- Location: LC_X6_Y7_N5
\add_instance|carry~18\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~18_combout\ = (\input_vector~combout\(10) & ((\input_vector~combout\(26)) # ((\add_instance|carry~17_combout\)))) # (!\input_vector~combout\(10) & (\input_vector~combout\(26) & ((\add_instance|carry~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(10),
	datab => \input_vector~combout\(26),
	datad => \add_instance|carry~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~18_combout\);

-- Location: LC_X6_Y7_N8
\add_instance|zero_check~20\ : maxv_lcell
-- Equation(s):
-- \add_instance|zero_check~20_combout\ = (\add_instance|carry~15_combout\ & ((\add_instance|result~3_combout\ $ (\add_instance|carry~18_combout\)) # (!\add_instance|result~1_combout\))) # (!\add_instance|carry~15_combout\ & 
-- ((\add_instance|result~1_combout\) # (\add_instance|result~3_combout\ $ (\add_instance|carry~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7dbe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|carry~15_combout\,
	datab => \add_instance|result~3_combout\,
	datac => \add_instance|carry~18_combout\,
	datad => \add_instance|result~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|zero_check~20_combout\);

-- Location: LC_X4_Y7_N8
\add_instance|carry~24\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~24_combout\ = (\add_instance|carry~23_combout\ & ((\input_vector~combout\(30)) # ((\input_vector~combout\(14))))) # (!\add_instance|carry~23_combout\ & (\input_vector~combout\(30) & (\input_vector~combout\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|carry~23_combout\,
	datab => \input_vector~combout\(30),
	datac => \input_vector~combout\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~24_combout\);

-- Location: LC_X4_Y8_N7
\add_instance|result~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|result~5_combout\ = ((\input_vector~combout\(15) $ (\input_vector~combout\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \input_vector~combout\(15),
	datad => \input_vector~combout\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|result~5_combout\);

-- Location: LC_X4_Y8_N0
\add_instance|result~7\ : maxv_lcell
-- Equation(s):
-- \add_instance|result~7_combout\ = ((\input_vector~combout\(29) $ (\input_vector~combout\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0ff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \input_vector~combout\(29),
	datad => \input_vector~combout\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|result~7_combout\);

-- Location: LC_X4_Y9_N3
\add_instance|carry~21\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~21_combout\ = (\input_vector~combout\(12) & (((\add_instance|carry~20_combout\) # (\input_vector~combout\(28))))) # (!\input_vector~combout\(12) & (((\add_instance|carry~20_combout\ & \input_vector~combout\(28)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(12),
	datac => \add_instance|carry~20_combout\,
	datad => \input_vector~combout\(28),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~21_combout\);

-- Location: LC_X4_Y8_N1
\add_instance|zero_check~21\ : maxv_lcell
-- Equation(s):
-- \add_instance|zero_check~21_combout\ = (\add_instance|carry~24_combout\ & ((\add_instance|result~7_combout\ $ (\add_instance|carry~21_combout\)) # (!\add_instance|result~5_combout\))) # (!\add_instance|carry~24_combout\ & 
-- ((\add_instance|result~5_combout\) # (\add_instance|result~7_combout\ $ (\add_instance|carry~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "6ff6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|carry~24_combout\,
	datab => \add_instance|result~5_combout\,
	datac => \add_instance|result~7_combout\,
	datad => \add_instance|carry~21_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|zero_check~21_combout\);

-- Location: LC_X4_Y6_N2
\add_instance|carry~27\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~27_combout\ = (\input_vector~combout\(16) & (((\input_vector~combout\(32)) # (\add_instance|carry~26_combout\)))) # (!\input_vector~combout\(16) & (((\input_vector~combout\(32) & \add_instance|carry~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "faa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(16),
	datac => \input_vector~combout\(32),
	datad => \add_instance|carry~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~27_combout\);

-- Location: LC_X9_Y7_N8
\add_instance|sum~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|sum~0_combout\ = \input_vector~combout\(4) $ (\input_vector~combout\(20) $ ((\add_instance|carry~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9696",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datab => \input_vector~combout\(20),
	datac => \add_instance|carry~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|sum~0_combout\);

-- Location: LC_X7_Y7_N8
\add_instance|zero_check~22\ : maxv_lcell
-- Equation(s):
-- \add_instance|zero_check~22_combout\ = (\add_instance|sum~0_combout\) # ((\input_vector~combout\(2) & ((!\add_instance|result~0_combout\) # (!\input_vector~combout\(18)))) # (!\input_vector~combout\(2) & ((\input_vector~combout\(18)) # 
-- (\add_instance|result~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|sum~0_combout\,
	datab => \input_vector~combout\(2),
	datac => \input_vector~combout\(18),
	datad => \add_instance|result~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|zero_check~22_combout\);

-- Location: LC_X5_Y7_N7
\add_instance|zero_check~23\ : maxv_lcell
-- Equation(s):
-- \add_instance|zero_check~23_combout\ = (\add_instance|zero_check~21_combout\) # ((\add_instance|zero_check~22_combout\) # (\add_instance|result~4_combout\ $ (\add_instance|carry~27_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffbe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|zero_check~21_combout\,
	datab => \add_instance|result~4_combout\,
	datac => \add_instance|carry~27_combout\,
	datad => \add_instance|zero_check~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|zero_check~23_combout\);

-- Location: LC_X9_Y7_N1
\add_instance|carry~9\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~9_combout\ = (\input_vector~combout\(4) & ((\input_vector~combout\(20)) # ((\add_instance|carry~8_combout\)))) # (!\input_vector~combout\(4) & (\input_vector~combout\(20) & (\add_instance|carry~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(4),
	datab => \input_vector~combout\(20),
	datac => \add_instance|carry~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~9_combout\);

-- Location: LC_X8_Y7_N1
\add_instance|result~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|result~2_combout\ = (\input_vector~combout\(23) $ ((\input_vector~combout\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3c3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(23),
	datac => \input_vector~combout\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|result~2_combout\);

-- Location: LC_X7_Y7_N0
\add_instance|result~6\ : maxv_lcell
-- Equation(s):
-- \add_instance|result~6_combout\ = (\input_vector~combout\(5) $ (((\input_vector~combout\(21)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(5),
	datad => \input_vector~combout\(21),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|result~6_combout\);

-- Location: LC_X9_Y8_N9
\add_instance|carry~12\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~12_combout\ = (\add_instance|carry~11_combout\ & ((\input_vector~combout\(6)) # ((\input_vector~combout\(22))))) # (!\add_instance|carry~11_combout\ & (\input_vector~combout\(6) & (\input_vector~combout\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8e8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|carry~11_combout\,
	datab => \input_vector~combout\(6),
	datac => \input_vector~combout\(22),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~12_combout\);

-- Location: LC_X8_Y7_N3
\add_instance|zero_check~19\ : maxv_lcell
-- Equation(s):
-- \add_instance|zero_check~19_combout\ = (\add_instance|carry~9_combout\ & ((\add_instance|result~2_combout\ $ (\add_instance|carry~12_combout\)) # (!\add_instance|result~6_combout\))) # (!\add_instance|carry~9_combout\ & ((\add_instance|result~6_combout\) 
-- # (\add_instance|result~2_combout\ $ (\add_instance|carry~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "7bde",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|carry~9_combout\,
	datab => \add_instance|result~2_combout\,
	datac => \add_instance|result~6_combout\,
	datad => \add_instance|carry~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|zero_check~19_combout\);

-- Location: LC_X5_Y7_N0
\add_instance|zero_check~26\ : maxv_lcell
-- Equation(s):
-- \add_instance|zero_check~26_combout\ = (\add_instance|zero_check~25_combout\) # ((\add_instance|zero_check~20_combout\) # ((\add_instance|zero_check~23_combout\) # (\add_instance|zero_check~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fffe",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|zero_check~25_combout\,
	datab => \add_instance|zero_check~20_combout\,
	datac => \add_instance|zero_check~23_combout\,
	datad => \add_instance|zero_check~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|zero_check~26_combout\);

-- Location: PIN_120,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: LC_X5_Y7_N2
\add_instance|control_out[0]~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|control_out[0]~0_combout\ = (\input_vector~combout\(1) & (((\input_vector~combout\(0))))) # (!\input_vector~combout\(1) & ((\input_vector~combout\(0) & (!\add_instance|zero_check~18_combout\)) # (!\input_vector~combout\(0) & 
-- ((!\add_instance|zero_check~26_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd03",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|zero_check~18_combout\,
	datab => \input_vector~combout\(1),
	datac => \add_instance|zero_check~26_combout\,
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|control_out[0]~0_combout\);

-- Location: LC_X5_Y7_N8
\add_instance|control_out[0]~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|control_out[0]~1_combout\ = (\input_vector~combout\(1) & ((\add_instance|control_out[0]~0_combout\ & ((!\add_instance|zero_check~31_combout\))) # (!\add_instance|control_out[0]~0_combout\ & (!\add_instance|zero_check~10_combout\)))) # 
-- (!\input_vector~combout\(1) & (((\add_instance|control_out[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3f44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|zero_check~10_combout\,
	datab => \input_vector~combout\(1),
	datac => \add_instance|zero_check~31_combout\,
	datad => \add_instance|control_out[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|control_out[0]~1_combout\);

-- Location: LC_X4_Y6_N5
\add_instance|carry~28\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~28_combout\ = ((\add_instance|carry~26_combout\ & ((\input_vector~combout\(16)) # (\input_vector~combout\(32)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(16),
	datac => \input_vector~combout\(32),
	datad => \add_instance|carry~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~28_combout\);

-- Location: LC_X5_Y7_N3
\add_instance|carry~29\ : maxv_lcell
-- Equation(s):
-- \add_instance|carry~29_combout\ = (\input_vector~combout\(33) & ((\add_instance|carry~28_combout\) # ((\input_vector~combout\(17)) # (\add_instance|carry~7_combout\)))) # (!\input_vector~combout\(33) & (\input_vector~combout\(17) & 
-- ((\add_instance|carry~28_combout\) # (\add_instance|carry~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fce8",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|carry~28_combout\,
	datab => \input_vector~combout\(33),
	datac => \input_vector~combout\(17),
	datad => \add_instance|carry~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|carry~29_combout\);

-- Location: LC_X5_Y7_N6
\add_instance|control_out[1]~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|control_out[1]~2_combout\ = (\add_instance|carry~29_combout\ & (!\input_vector~combout\(1) & ((!\input_vector~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0022",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|carry~29_combout\,
	datab => \input_vector~combout\(1),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|control_out[1]~2_combout\);

-- Location: LC_X7_Y7_N5
\add_instance|C[0]~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|C[0]~2_combout\ = (\input_vector~combout\(18) & (((\input_vector~combout\(1) & \input_vector~combout\(0))) # (!\input_vector~combout\(2)))) # (!\input_vector~combout\(18) & ((\input_vector~combout\(0) & ((!\input_vector~combout\(1)))) # 
-- (!\input_vector~combout\(0) & (\input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a766",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(18),
	datab => \input_vector~combout\(2),
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|C[0]~2_combout\);

-- Location: LC_X7_Y7_N7
\add_instance|C[1]~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|C[1]~3_combout\ = (\input_vector~combout\(0) & (((\input_vector~combout\(1))))) # (!\input_vector~combout\(0) & (\add_instance|result~0_combout\ $ (((\add_instance|carry~0_combout\ & !\input_vector~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0c6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|carry~0_combout\,
	datab => \add_instance|result~0_combout\,
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|C[1]~3_combout\);

-- Location: LC_X7_Y7_N6
\add_instance|C[1]~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|C[1]~4_combout\ = (\input_vector~combout\(19) & ((\add_instance|C[1]~3_combout\) # ((!\input_vector~combout\(3) & \input_vector~combout\(0))))) # (!\input_vector~combout\(19) & ((\add_instance|C[1]~3_combout\ $ (\input_vector~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a7f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(19),
	datab => \input_vector~combout\(3),
	datac => \add_instance|C[1]~3_combout\,
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|C[1]~4_combout\);

-- Location: LC_X9_Y7_N4
\add_instance|C[2]~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|C[2]~5_combout\ = (\input_vector~combout\(1) & (((\input_vector~combout\(0))))) # (!\input_vector~combout\(1) & ((\input_vector~combout\(0) & ((!\add_instance|carry~1_combout\))) # (!\input_vector~combout\(0) & 
-- (\add_instance|sum~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f30a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|sum~0_combout\,
	datab => \add_instance|carry~1_combout\,
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|C[2]~5_combout\);

-- Location: LC_X9_Y7_N5
\add_instance|C[2]~6\ : maxv_lcell
-- Equation(s):
-- \add_instance|C[2]~6_combout\ = (\input_vector~combout\(1) & (\input_vector~combout\(20) $ (((!\add_instance|C[2]~5_combout\ & \input_vector~combout\(4)))))) # (!\input_vector~combout\(1) & (\add_instance|C[2]~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ae62",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|C[2]~5_combout\,
	datab => \input_vector~combout\(1),
	datac => \input_vector~combout\(4),
	datad => \input_vector~combout\(20),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|C[2]~6_combout\);

-- Location: LC_X8_Y7_N0
\add_instance|C[3]~7\ : maxv_lcell
-- Equation(s):
-- \add_instance|C[3]~7_combout\ = (\input_vector~combout\(0) & (((\input_vector~combout\(1))))) # (!\input_vector~combout\(0) & (\add_instance|result~6_combout\ $ (((!\input_vector~combout\(1) & \add_instance|carry~9_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e1e2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|result~6_combout\,
	datab => \input_vector~combout\(0),
	datac => \input_vector~combout\(1),
	datad => \add_instance|carry~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|C[3]~7_combout\);

-- Location: LC_X9_Y7_N3
\add_instance|C[3]~8\ : maxv_lcell
-- Equation(s):
-- \add_instance|C[3]~8_combout\ = (\add_instance|C[3]~7_combout\ & (((\input_vector~combout\(21)) # (!\input_vector~combout\(0))))) # (!\add_instance|C[3]~7_combout\ & (\input_vector~combout\(0) & ((!\input_vector~combout\(21)) # 
-- (!\input_vector~combout\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b5aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|C[3]~7_combout\,
	datab => \input_vector~combout\(5),
	datac => \input_vector~combout\(21),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|C[3]~8_combout\);

-- Location: LC_X9_Y8_N7
\add_instance|C[4]~9\ : maxv_lcell
-- Equation(s):
-- \add_instance|C[4]~9_combout\ = (\input_vector~combout\(1) & (((\input_vector~combout\(0))))) # (!\input_vector~combout\(1) & ((\input_vector~combout\(0) & (!\add_instance|carry~2_combout\)) # (!\input_vector~combout\(0) & 
-- ((\add_instance|sum~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f50c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|carry~2_combout\,
	datab => \add_instance|sum~1_combout\,
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|C[4]~9_combout\);

-- Location: LC_X9_Y8_N6
\add_instance|C[4]~10\ : maxv_lcell
-- Equation(s):
-- \add_instance|C[4]~10_combout\ = (\input_vector~combout\(1) & (\input_vector~combout\(22) $ (((!\add_instance|C[4]~9_combout\ & \input_vector~combout\(6)))))) # (!\input_vector~combout\(1) & (\add_instance|C[4]~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c6e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \add_instance|C[4]~9_combout\,
	datac => \input_vector~combout\(22),
	datad => \input_vector~combout\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|C[4]~10_combout\);

-- Location: LC_X8_Y7_N7
\add_instance|C[5]~11\ : maxv_lcell
-- Equation(s):
-- \add_instance|C[5]~11_combout\ = (\input_vector~combout\(0) & (((\input_vector~combout\(1))))) # (!\input_vector~combout\(0) & (\add_instance|result~2_combout\ $ (((\add_instance|carry~12_combout\ & !\input_vector~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f1a4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \add_instance|carry~12_combout\,
	datac => \input_vector~combout\(1),
	datad => \add_instance|result~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|C[5]~11_combout\);

-- Location: LC_X8_Y7_N5
\add_instance|C[5]~12\ : maxv_lcell
-- Equation(s):
-- \add_instance|C[5]~12_combout\ = (\input_vector~combout\(23) & ((\add_instance|C[5]~11_combout\) # ((!\input_vector~combout\(7) & \input_vector~combout\(0))))) # (!\input_vector~combout\(23) & ((\add_instance|C[5]~11_combout\ $ 
-- (\input_vector~combout\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c7f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(7),
	datab => \input_vector~combout\(23),
	datac => \add_instance|C[5]~11_combout\,
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|C[5]~12_combout\);

-- Location: LC_X10_Y7_N7
\add_instance|C[6]~13\ : maxv_lcell
-- Equation(s):
-- \add_instance|C[6]~13_combout\ = (\input_vector~combout\(1) & (((\input_vector~combout\(0))))) # (!\input_vector~combout\(1) & ((\input_vector~combout\(0) & (!\add_instance|carry~3_combout\)) # (!\input_vector~combout\(0) & 
-- ((\add_instance|sum~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \add_instance|carry~3_combout\,
	datac => \add_instance|sum~2_combout\,
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|C[6]~13_combout\);

-- Location: LC_X10_Y7_N5
\add_instance|C[6]~14\ : maxv_lcell
-- Equation(s):
-- \add_instance|C[6]~14_combout\ = (\input_vector~combout\(1) & (\input_vector~combout\(24) $ (((\input_vector~combout\(8) & !\add_instance|C[6]~13_combout\))))) # (!\input_vector~combout\(1) & (((\add_instance|C[6]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a6f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(24),
	datab => \input_vector~combout\(8),
	datac => \add_instance|C[6]~13_combout\,
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|C[6]~14_combout\);

-- Location: LC_X10_Y7_N8
\add_instance|C[7]~15\ : maxv_lcell
-- Equation(s):
-- \add_instance|C[7]~15_combout\ = (\input_vector~combout\(0) & (((\input_vector~combout\(1))))) # (!\input_vector~combout\(0) & (\add_instance|result~1_combout\ $ (((\add_instance|carry~15_combout\ & !\input_vector~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccd2",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|carry~15_combout\,
	datab => \input_vector~combout\(1),
	datac => \add_instance|result~1_combout\,
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|C[7]~15_combout\);

-- Location: LC_X10_Y7_N0
\add_instance|C[7]~16\ : maxv_lcell
-- Equation(s):
-- \add_instance|C[7]~16_combout\ = (\add_instance|C[7]~15_combout\ & (((\input_vector~combout\(25)) # (!\input_vector~combout\(0))))) # (!\add_instance|C[7]~15_combout\ & (\input_vector~combout\(0) & ((!\input_vector~combout\(25)) # 
-- (!\input_vector~combout\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "b5aa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|C[7]~15_combout\,
	datab => \input_vector~combout\(9),
	datac => \input_vector~combout\(25),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|C[7]~16_combout\);

-- Location: LC_X6_Y7_N9
\add_instance|C[8]~17\ : maxv_lcell
-- Equation(s):
-- \add_instance|C[8]~17_combout\ = (\input_vector~combout\(1) & (((\input_vector~combout\(0))))) # (!\input_vector~combout\(1) & ((\input_vector~combout\(0) & (!\add_instance|carry~4_combout\)) # (!\input_vector~combout\(0) & 
-- ((\add_instance|sum~3_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f50c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|carry~4_combout\,
	datab => \add_instance|sum~3_combout\,
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|C[8]~17_combout\);

-- Location: LC_X6_Y7_N4
\add_instance|C[8]~18\ : maxv_lcell
-- Equation(s):
-- \add_instance|C[8]~18_combout\ = (\input_vector~combout\(1) & (\input_vector~combout\(26) $ (((!\add_instance|C[8]~17_combout\ & \input_vector~combout\(10)))))) # (!\input_vector~combout\(1) & (\add_instance|C[8]~17_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ce64",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \add_instance|C[8]~17_combout\,
	datac => \input_vector~combout\(10),
	datad => \input_vector~combout\(26),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|C[8]~18_combout\);

-- Location: LC_X6_Y7_N6
\add_instance|C[9]~19\ : maxv_lcell
-- Equation(s):
-- \add_instance|C[9]~19_combout\ = (\input_vector~combout\(0) & (((\input_vector~combout\(1))))) # (!\input_vector~combout\(0) & (\add_instance|result~3_combout\ $ (((\add_instance|carry~18_combout\ & !\input_vector~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0c6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|carry~18_combout\,
	datab => \add_instance|result~3_combout\,
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|C[9]~19_combout\);

-- Location: LC_X4_Y8_N2
\add_instance|C[9]~20\ : maxv_lcell
-- Equation(s):
-- \add_instance|C[9]~20_combout\ = (\input_vector~combout\(27) & ((\add_instance|C[9]~19_combout\) # ((!\input_vector~combout\(11) & \input_vector~combout\(0))))) # (!\input_vector~combout\(27) & ((\input_vector~combout\(0) $ 
-- (\add_instance|C[9]~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cf70",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(11),
	datab => \input_vector~combout\(27),
	datac => \input_vector~combout\(0),
	datad => \add_instance|C[9]~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|C[9]~20_combout\);

-- Location: LC_X4_Y9_N4
\add_instance|C[10]~21\ : maxv_lcell
-- Equation(s):
-- \add_instance|C[10]~21_combout\ = (\input_vector~combout\(1) & (((\input_vector~combout\(0))))) # (!\input_vector~combout\(1) & ((\input_vector~combout\(0) & ((!\add_instance|carry~5_combout\))) # (!\input_vector~combout\(0) & 
-- (\add_instance|sum~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "af44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \add_instance|sum~4_combout\,
	datac => \add_instance|carry~5_combout\,
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|C[10]~21_combout\);

-- Location: LC_X4_Y9_N9
\add_instance|C[10]~22\ : maxv_lcell
-- Equation(s):
-- \add_instance|C[10]~22_combout\ = (\input_vector~combout\(1) & (\input_vector~combout\(28) $ (((\input_vector~combout\(12) & !\add_instance|C[10]~21_combout\))))) # (!\input_vector~combout\(1) & (((\add_instance|C[10]~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c6f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(12),
	datab => \input_vector~combout\(28),
	datac => \add_instance|C[10]~21_combout\,
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|C[10]~22_combout\);

-- Location: LC_X4_Y8_N4
\add_instance|C[11]~23\ : maxv_lcell
-- Equation(s):
-- \add_instance|C[11]~23_combout\ = (\input_vector~combout\(0) & (((\input_vector~combout\(1))))) # (!\input_vector~combout\(0) & (\add_instance|result~7_combout\ $ (((\add_instance|carry~21_combout\ & !\input_vector~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa14",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \add_instance|carry~21_combout\,
	datac => \add_instance|result~7_combout\,
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|C[11]~23_combout\);

-- Location: LC_X4_Y8_N8
\add_instance|C[11]~24\ : maxv_lcell
-- Equation(s):
-- \add_instance|C[11]~24_combout\ = (\input_vector~combout\(29) & ((\add_instance|C[11]~23_combout\) # ((!\input_vector~combout\(13) & \input_vector~combout\(0))))) # (!\input_vector~combout\(29) & ((\input_vector~combout\(0) $ 
-- (\add_instance|C[11]~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "af70",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(29),
	datab => \input_vector~combout\(13),
	datac => \input_vector~combout\(0),
	datad => \add_instance|C[11]~23_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|C[11]~24_combout\);

-- Location: LC_X4_Y7_N6
\add_instance|C[12]~25\ : maxv_lcell
-- Equation(s):
-- \add_instance|C[12]~25_combout\ = (\input_vector~combout\(1) & (((\input_vector~combout\(0))))) # (!\input_vector~combout\(1) & ((\input_vector~combout\(0) & (!\add_instance|carry~6_combout\)) # (!\input_vector~combout\(0) & 
-- ((\add_instance|sum~5_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|carry~6_combout\,
	datab => \input_vector~combout\(1),
	datac => \add_instance|sum~5_combout\,
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|C[12]~25_combout\);

-- Location: LC_X4_Y7_N7
\add_instance|C[12]~26\ : maxv_lcell
-- Equation(s):
-- \add_instance|C[12]~26_combout\ = (\input_vector~combout\(1) & (\input_vector~combout\(30) $ (((!\add_instance|C[12]~25_combout\ & \input_vector~combout\(14)))))) # (!\input_vector~combout\(1) & (\add_instance|C[12]~25_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9caa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|C[12]~25_combout\,
	datab => \input_vector~combout\(30),
	datac => \input_vector~combout\(14),
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|C[12]~26_combout\);

-- Location: LC_X4_Y8_N9
\add_instance|C[13]~27\ : maxv_lcell
-- Equation(s):
-- \add_instance|C[13]~27_combout\ = (\input_vector~combout\(0) & (((\input_vector~combout\(1))))) # (!\input_vector~combout\(0) & (\add_instance|result~5_combout\ $ (((\add_instance|carry~24_combout\ & !\input_vector~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee14",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(0),
	datab => \add_instance|result~5_combout\,
	datac => \add_instance|carry~24_combout\,
	datad => \input_vector~combout\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|C[13]~27_combout\);

-- Location: LC_X4_Y8_N3
\add_instance|C[13]~28\ : maxv_lcell
-- Equation(s):
-- \add_instance|C[13]~28_combout\ = (\add_instance|C[13]~27_combout\ & (((\input_vector~combout\(31)) # (!\input_vector~combout\(0))))) # (!\add_instance|C[13]~27_combout\ & (\input_vector~combout\(0) & ((!\input_vector~combout\(31)) # 
-- (!\input_vector~combout\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dc3c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(15),
	datab => \add_instance|C[13]~27_combout\,
	datac => \input_vector~combout\(0),
	datad => \input_vector~combout\(31),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|C[13]~28_combout\);

-- Location: LC_X4_Y6_N1
\add_instance|C[14]~29\ : maxv_lcell
-- Equation(s):
-- \add_instance|C[14]~29_combout\ = (\input_vector~combout\(0) & (((\input_vector~combout\(1))))) # (!\input_vector~combout\(0) & (\input_vector~combout\(16) $ (((\add_instance|carry~26_combout\ & !\input_vector~combout\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0a6",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(16),
	datab => \add_instance|carry~26_combout\,
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|C[14]~29_combout\);

-- Location: LC_X4_Y6_N3
\add_instance|C[14]~32\ : maxv_lcell
-- Equation(s):
-- \add_instance|C[14]~32_combout\ = (\add_instance|C[14]~29_combout\ & ((\input_vector~combout\(32) $ (!\input_vector~combout\(0))))) # (!\add_instance|C[14]~29_combout\ & ((\input_vector~combout\(32) & ((!\input_vector~combout\(0)) # 
-- (!\input_vector~combout\(16)))) # (!\input_vector~combout\(32) & ((\input_vector~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "d33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(16),
	datab => \add_instance|C[14]~29_combout\,
	datac => \input_vector~combout\(32),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|C[14]~32_combout\);

-- Location: LC_X5_Y7_N9
\add_instance|C[15]~30\ : maxv_lcell
-- Equation(s):
-- \add_instance|C[15]~30_combout\ = (\input_vector~combout\(0) & (\input_vector~combout\(1))) # (!\input_vector~combout\(0) & (\add_instance|result~4_combout\ $ (((!\input_vector~combout\(1) & \add_instance|carry~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aa9c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \add_instance|result~4_combout\,
	datac => \add_instance|carry~27_combout\,
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|C[15]~30_combout\);

-- Location: LC_X5_Y7_N5
\add_instance|C[15]~31\ : maxv_lcell
-- Equation(s):
-- \add_instance|C[15]~31_combout\ = (\input_vector~combout\(33) & ((\add_instance|C[15]~30_combout\) # ((!\input_vector~combout\(17) & \input_vector~combout\(0))))) # (!\input_vector~combout\(33) & (\add_instance|C[15]~30_combout\ $ 
-- (((\input_vector~combout\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9bcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(33),
	datab => \add_instance|C[15]~30_combout\,
	datac => \input_vector~combout\(17),
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|C[15]~31_combout\);

-- Location: PIN_31,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|control_out[0]~1_combout\,
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_101,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|control_out[1]~2_combout\,
	oe => VCC,
	padio => ww_output_vector(1));

-- Location: PIN_50,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|C[0]~2_combout\,
	oe => VCC,
	padio => ww_output_vector(2));

-- Location: PIN_49,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|C[1]~4_combout\,
	oe => VCC,
	padio => ww_output_vector(3));

-- Location: PIN_59,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|C[2]~6_combout\,
	oe => VCC,
	padio => ww_output_vector(4));

-- Location: PIN_102,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|C[3]~8_combout\,
	oe => VCC,
	padio => ww_output_vector(5));

-- Location: PIN_119,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|C[4]~10_combout\,
	oe => VCC,
	padio => ww_output_vector(6));

-- Location: PIN_53,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|C[5]~12_combout\,
	oe => VCC,
	padio => ww_output_vector(7));

-- Location: PIN_58,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|C[6]~14_combout\,
	oe => VCC,
	padio => ww_output_vector(8));

-- Location: PIN_118,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|C[7]~16_combout\,
	oe => VCC,
	padio => ww_output_vector(9));

-- Location: PIN_137,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|C[8]~18_combout\,
	oe => VCC,
	padio => ww_output_vector(10));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|C[9]~20_combout\,
	oe => VCC,
	padio => ww_output_vector(11));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|C[10]~22_combout\,
	oe => VCC,
	padio => ww_output_vector(12));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|C[11]~24_combout\,
	oe => VCC,
	padio => ww_output_vector(13));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|C[12]~26_combout\,
	oe => VCC,
	padio => ww_output_vector(14));

-- Location: PIN_40,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|C[13]~28_combout\,
	oe => VCC,
	padio => ww_output_vector(15));

-- Location: PIN_22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[16]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|C[14]~32_combout\,
	oe => VCC,
	padio => ww_output_vector(16));

-- Location: PIN_44,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[17]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|C[15]~31_combout\,
	oe => VCC,
	padio => ww_output_vector(17));
END structure;


