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

-- DATE "04/17/2022 11:37:07"

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
	input_vector : IN std_logic_vector(1 DOWNTO 0);
	output_vector : BUFFER std_logic_vector(15 DOWNTO 0)
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
SIGNAL ww_input_vector : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(15 DOWNTO 0);
SIGNAL \add_instance|present_state.s15~regout\ : std_logic;
SIGNAL \add_instance|present_state.s16~regout\ : std_logic;
SIGNAL \add_instance|present_state.s0~regout\ : std_logic;
SIGNAL \add_instance|present_state.s1~regout\ : std_logic;
SIGNAL \add_instance|present_state.s2~regout\ : std_logic;
SIGNAL \add_instance|present_state.s14~regout\ : std_logic;
SIGNAL \add_instance|T1_in[15]~0_combout\ : std_logic;
SIGNAL \add_instance|RF_D3[9]~0_combout\ : std_logic;
SIGNAL \add_instance|ALU_A[15]~0_combout\ : std_logic;
SIGNAL \add_instance|WideOr51~combout\ : std_logic;
SIGNAL \add_instance|T3_load~combout\ : std_logic;
SIGNAL \add_instance|Selector86~0\ : std_logic;
SIGNAL \add_instance|WideOr57~combout\ : std_logic;
SIGNAL \add_instance|RF_load~combout\ : std_logic;
SIGNAL \add_instance|Selector135~0\ : std_logic;
SIGNAL \add_instance|WideOr8~0_combout\ : std_logic;
SIGNAL \add_instance|T1_load~combout\ : std_logic;
SIGNAL \add_instance|Selector104~0\ : std_logic;
SIGNAL \add_instance|Selector125~0\ : std_logic;
SIGNAL \add_instance|Selector103~0\ : std_logic;
SIGNAL \add_instance|Selector124~0\ : std_logic;
SIGNAL \add_instance|Selector102~0\ : std_logic;
SIGNAL \add_instance|Selector123~0\ : std_logic;
SIGNAL \add_instance|Selector101~0\ : std_logic;
SIGNAL \add_instance|Selector122~0\ : std_logic;
SIGNAL \add_instance|Selector100~0\ : std_logic;
SIGNAL \add_instance|Selector121~0\ : std_logic;
SIGNAL \add_instance|Selector99~0\ : std_logic;
SIGNAL \add_instance|Selector120~0\ : std_logic;
SIGNAL \add_instance|Selector98~0\ : std_logic;
SIGNAL \add_instance|Selector119~0\ : std_logic;
SIGNAL \add_instance|Selector97~0\ : std_logic;
SIGNAL \add_instance|Selector118~0\ : std_logic;
SIGNAL \add_instance|Selector96~0\ : std_logic;
SIGNAL \add_instance|Selector117~0\ : std_logic;
SIGNAL \add_instance|Selector95~0\ : std_logic;
SIGNAL \add_instance|Selector116~0\ : std_logic;
SIGNAL \add_instance|Selector94~0\ : std_logic;
SIGNAL \add_instance|Selector115~0\ : std_logic;
SIGNAL \add_instance|Selector93~0\ : std_logic;
SIGNAL \add_instance|Selector114~0\ : std_logic;
SIGNAL \add_instance|Selector92~0\ : std_logic;
SIGNAL \add_instance|Selector113~0\ : std_logic;
SIGNAL \add_instance|Selector91~0\ : std_logic;
SIGNAL \add_instance|Selector112~0\ : std_logic;
SIGNAL \add_instance|Selector90~0\ : std_logic;
SIGNAL \add_instance|Selector111~0\ : std_logic;
SIGNAL \add_instance|ALU|sum~0_combout\ : std_logic;
SIGNAL \input_vector~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \add_instance|RF|r0|output\ : std_logic_vector(0 TO 15);
SIGNAL \add_instance|T1|output\ : std_logic_vector(0 TO 15);
SIGNAL \add_instance|ALU_A\ : std_logic_vector(0 TO 15);
SIGNAL \add_instance|T3|output\ : std_logic_vector(0 TO 15);
SIGNAL \add_instance|RF|r7|output\ : std_logic_vector(0 TO 15);
SIGNAL \add_instance|RF_A1\ : std_logic_vector(0 TO 2);
SIGNAL \add_instance|ALU_B\ : std_logic_vector(0 TO 15);
SIGNAL \add_instance|T1_in\ : std_logic_vector(0 TO 15);
SIGNAL \add_instance|RF_D3\ : std_logic_vector(0 TO 15);
SIGNAL \add_instance|RF|demultiplexer|selection_output\ : std_logic_vector(0 TO 7);
SIGNAL \add_instance|RF_A3\ : std_logic_vector(0 TO 2);
SIGNAL \add_instance|T3_in\ : std_logic_vector(0 TO 15);
SIGNAL \ALT_INV_input_vector~combout\ : std_logic_vector(1 DOWNTO 1);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
\ALT_INV_input_vector~combout\(1) <= NOT \input_vector~combout\(1);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: LC_X1_Y7_N9
\add_instance|present_state.s15\ : maxv_lcell
-- Equation(s):
-- \add_instance|present_state.s15~regout\ = DFFEAS((((\add_instance|present_state.s14~regout\ & !\input_vector~combout\(0)))), GLOBAL(\input_vector~combout\(1)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(1),
	datac => \add_instance|present_state.s14~regout\,
	datad => \input_vector~combout\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|present_state.s15~regout\);

-- Location: LC_X2_Y7_N9
\add_instance|present_state.s16\ : maxv_lcell
-- Equation(s):
-- \add_instance|present_state.s16~regout\ = DFFEAS(((!\input_vector~combout\(0) & (\add_instance|present_state.s15~regout\))), GLOBAL(\input_vector~combout\(1)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3030",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(1),
	datab => \input_vector~combout\(0),
	datac => \add_instance|present_state.s15~regout\,
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|present_state.s16~regout\);

-- Location: LC_X1_Y7_N3
\add_instance|present_state.s0\ : maxv_lcell
-- Equation(s):
-- \add_instance|present_state.s0~regout\ = DFFEAS((((!\add_instance|present_state.s16~regout\ & !\input_vector~combout\(0)))), GLOBAL(\input_vector~combout\(1)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(1),
	datac => \add_instance|present_state.s16~regout\,
	datad => \input_vector~combout\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|present_state.s0~regout\);

-- Location: LC_X1_Y7_N6
\add_instance|present_state.s1\ : maxv_lcell
-- Equation(s):
-- \add_instance|present_state.s1~regout\ = DFFEAS((((!\add_instance|present_state.s0~regout\ & !\input_vector~combout\(0)))), GLOBAL(\input_vector~combout\(1)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "000f",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(1),
	datac => \add_instance|present_state.s0~regout\,
	datad => \input_vector~combout\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|present_state.s1~regout\);

-- Location: LC_X1_Y7_N2
\add_instance|present_state.s2\ : maxv_lcell
-- Equation(s):
-- \add_instance|present_state.s2~regout\ = DFFEAS((((\add_instance|present_state.s1~regout\ & !\input_vector~combout\(0)))), GLOBAL(\input_vector~combout\(1)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(1),
	datac => \add_instance|present_state.s1~regout\,
	datad => \input_vector~combout\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|present_state.s2~regout\);

-- Location: LC_X1_Y7_N0
\add_instance|present_state.s14\ : maxv_lcell
-- Equation(s):
-- \add_instance|present_state.s14~regout\ = DFFEAS(((\add_instance|present_state.s2~regout\ & ((!\input_vector~combout\(0))))), GLOBAL(\input_vector~combout\(1)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(1),
	datab => \add_instance|present_state.s2~regout\,
	datad => \input_vector~combout\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|present_state.s14~regout\);

-- Location: LC_X1_Y7_N8
\add_instance|T1_in[15]~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|T1_in[15]~0_combout\ = ((!\input_vector~combout\(0) & ((\add_instance|present_state.s14~regout\) # (!\add_instance|present_state.s0~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3033",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(0),
	datac => \add_instance|present_state.s14~regout\,
	datad => \add_instance|present_state.s0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T1_in[15]~0_combout\);

-- Location: LC_X1_Y7_N1
\add_instance|RF_A1[1]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF_A1\(1) = ((\add_instance|T1_in[15]~0_combout\ & ((!\add_instance|present_state.s0~regout\))) # (!\add_instance|T1_in[15]~0_combout\ & (\add_instance|RF_A1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|T1_in[15]~0_combout\,
	datac => \add_instance|RF_A1\(1),
	datad => \add_instance|present_state.s0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF_A1\(1));

-- Location: LC_X12_Y3_N4
\add_instance|RF_D3[9]~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF_D3[9]~0_combout\ = ((!\input_vector~combout\(0) & ((\add_instance|present_state.s16~regout\) # (\add_instance|present_state.s2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|present_state.s16~regout\,
	datac => \add_instance|present_state.s2~regout\,
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF_D3[9]~0_combout\);

-- Location: LC_X12_Y3_N2
\add_instance|ALU_A[15]~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_A[15]~0_combout\ = ((!\input_vector~combout\(0) & ((\add_instance|present_state.s1~regout\) # (\add_instance|present_state.s15~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3330",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(0),
	datac => \add_instance|present_state.s1~regout\,
	datad => \add_instance|present_state.s15~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_A[15]~0_combout\);

-- Location: LC_X3_Y7_N6
\add_instance|T3_in[15]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T3_in\(15) = ((GLOBAL(\add_instance|ALU_A[15]~0_combout\) & ((\add_instance|ALU_A\(15)))) # (!GLOBAL(\add_instance|ALU_A[15]~0_combout\) & (\add_instance|T3_in\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|T3_in\(15),
	datac => \add_instance|ALU_A[15]~0_combout\,
	datad => \add_instance|ALU_A\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T3_in\(15));

-- Location: LC_X1_Y7_N4
\add_instance|WideOr51\ : maxv_lcell
-- Equation(s):
-- \add_instance|WideOr51~combout\ = ((\add_instance|present_state.s15~regout\) # ((\add_instance|present_state.s1~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcfc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|present_state.s15~regout\,
	datac => \add_instance|present_state.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|WideOr51~combout\);

-- Location: LC_X1_Y7_N5
\add_instance|T3_load\ : maxv_lcell
-- Equation(s):
-- \add_instance|T3_load~combout\ = ((GLOBAL(\input_vector~combout\(0)) & (\add_instance|T3_load~combout\)) # (!GLOBAL(\input_vector~combout\(0)) & ((\add_instance|WideOr51~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|T3_load~combout\,
	datac => \add_instance|WideOr51~combout\,
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T3_load~combout\);

-- Location: LC_X2_Y7_N1
\add_instance|T3|output[15]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector86~0\ = ((E3_output[15] & ((\add_instance|present_state.s16~regout\) # (\add_instance|present_state.s2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|present_state.s16~regout\,
	datac => \add_instance|T3_in\(15),
	datad => \add_instance|present_state.s2~regout\,
	aclr => GND,
	sload => VCC,
	ena => \add_instance|T3_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector86~0\,
	regout => \add_instance|T3|output\(15));

-- Location: LC_X2_Y7_N4
\add_instance|WideOr57\ : maxv_lcell
-- Equation(s):
-- \add_instance|WideOr57~combout\ = ((\add_instance|present_state.s16~regout\) # ((\add_instance|present_state.s2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|present_state.s16~regout\,
	datad => \add_instance|present_state.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|WideOr57~combout\);

-- Location: LC_X2_Y7_N5
\add_instance|RF_load\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF_load~combout\ = ((GLOBAL(\input_vector~combout\(0)) & (\add_instance|RF_load~combout\)) # (!GLOBAL(\input_vector~combout\(0)) & ((\add_instance|WideOr57~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(0),
	datac => \add_instance|RF_load~combout\,
	datad => \add_instance|WideOr57~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF_load~combout\);

-- Location: LC_X2_Y10_N2
\add_instance|RF_A3[0]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF_A3\(0) = ((GLOBAL(\add_instance|RF_D3[9]~0_combout\) & (\add_instance|present_state.s2~regout\)) # (!GLOBAL(\add_instance|RF_D3[9]~0_combout\) & ((\add_instance|RF_A3\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|RF_D3[9]~0_combout\,
	datac => \add_instance|present_state.s2~regout\,
	datad => \add_instance|RF_A3\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF_A3\(0));

-- Location: LC_X2_Y6_N7
\add_instance|RF|demultiplexer|selection_output[0]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF|demultiplexer|selection_output\(0) = ((\add_instance|RF_load~combout\ & ((!\add_instance|RF_A3\(0)))) # (!\add_instance|RF_load~combout\ & (\add_instance|RF|demultiplexer|selection_output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "30fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|RF_load~combout\,
	datac => \add_instance|RF|demultiplexer|selection_output\(0),
	datad => \add_instance|RF_A3\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF|demultiplexer|selection_output\(0));

-- Location: LC_X2_Y8_N5
\add_instance|RF|r0|output[15]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF_D3\(15) = ((GLOBAL(\add_instance|RF_D3[9]~0_combout\) & ((\add_instance|Selector86~0\))) # (!GLOBAL(\add_instance|RF_D3[9]~0_combout\) & (\add_instance|RF_D3\(15))))
-- \add_instance|RF|r0|output\(15) = DFFEAS(\add_instance|RF_D3\(15), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|RF|demultiplexer|selection_output\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|RF_D3[9]~0_combout\,
	datac => \add_instance|RF_D3\(15),
	datad => \add_instance|Selector86~0\,
	aclr => GND,
	ena => \add_instance|RF|demultiplexer|selection_output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF_D3\(15),
	regout => \add_instance|RF|r0|output\(15));

-- Location: LC_X2_Y10_N0
\add_instance|RF|demultiplexer|selection_output[7]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF|demultiplexer|selection_output\(7) = ((\add_instance|RF_load~combout\ & (\add_instance|RF_A3\(0))) # (!\add_instance|RF_load~combout\ & ((\add_instance|RF|demultiplexer|selection_output\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|RF_A3\(0),
	datac => \add_instance|RF|demultiplexer|selection_output\(7),
	datad => \add_instance|RF_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF|demultiplexer|selection_output\(7));

-- Location: LC_X3_Y7_N8
\add_instance|RF|r7|output[15]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector135~0\ = ((\add_instance|RF_A1\(1) & (E13_output[15])) # (!\add_instance|RF_A1\(1) & ((\add_instance|RF|r0|output\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|RF_A1\(1),
	datac => \add_instance|RF_D3\(15),
	datad => \add_instance|RF|r0|output\(15),
	aclr => GND,
	sload => VCC,
	ena => \add_instance|RF|demultiplexer|selection_output\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector135~0\,
	regout => \add_instance|RF|r7|output\(15));

-- Location: LC_X1_Y7_N7
\add_instance|WideOr8~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|WideOr8~0_combout\ = (((\add_instance|present_state.s14~regout\) # (\add_instance|present_state.s15~regout\))) # (!\add_instance|present_state.s0~regout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff5",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|present_state.s0~regout\,
	datac => \add_instance|present_state.s14~regout\,
	datad => \add_instance|present_state.s15~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|WideOr8~0_combout\);

-- Location: LC_X2_Y7_N2
\add_instance|T1_load\ : maxv_lcell
-- Equation(s):
-- \add_instance|T1_load~combout\ = ((GLOBAL(\input_vector~combout\(0)) & (\add_instance|T1_load~combout\)) # (!GLOBAL(\input_vector~combout\(0)) & ((\add_instance|WideOr8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \input_vector~combout\(0),
	datac => \add_instance|T1_load~combout\,
	datad => \add_instance|WideOr8~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T1_load~combout\);

-- Location: LC_X3_Y7_N9
\add_instance|T1|output[15]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T1_in\(15) = (\add_instance|T1_in[15]~0_combout\ & (((\add_instance|Selector135~0\)))) # (!\add_instance|T1_in[15]~0_combout\ & (\add_instance|T1_in\(15)))
-- \add_instance|T1|output\(15) = DFFEAS(\add_instance|T1_in\(15), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|T1_load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	dataa => \add_instance|T1_in[15]~0_combout\,
	datab => \add_instance|T1_in\(15),
	datad => \add_instance|Selector135~0\,
	aclr => GND,
	ena => \add_instance|T1_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T1_in\(15),
	regout => \add_instance|T1|output\(15));

-- Location: LC_X3_Y7_N5
\add_instance|ALU_A[15]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_A\(15) = (GLOBAL(\add_instance|ALU_A[15]~0_combout\) & (((\add_instance|T1|output\(15))))) # (!GLOBAL(\add_instance|ALU_A[15]~0_combout\) & (\add_instance|ALU_A\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "caca",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU_A\(15),
	datab => \add_instance|T1|output\(15),
	datac => \add_instance|ALU_A[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_A\(15));

-- Location: LC_X2_Y9_N0
\add_instance|T3_in[14]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T3_in\(14) = ((GLOBAL(\add_instance|ALU_A[15]~0_combout\) & ((\add_instance|ALU_A\(14)))) # (!GLOBAL(\add_instance|ALU_A[15]~0_combout\) & (\add_instance|T3_in\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|T3_in\(14),
	datac => \add_instance|ALU_A[15]~0_combout\,
	datad => \add_instance|ALU_A\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T3_in\(14));

-- Location: LC_X2_Y9_N7
\add_instance|T3|output[14]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector104~0\ = ((E3_output[14] & ((\add_instance|present_state.s16~regout\) # (\add_instance|present_state.s2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|present_state.s16~regout\,
	datac => \add_instance|T3_in\(14),
	datad => \add_instance|present_state.s2~regout\,
	aclr => GND,
	sload => VCC,
	ena => \add_instance|T3_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector104~0\,
	regout => \add_instance|T3|output\(14));

-- Location: LC_X2_Y9_N8
\add_instance|RF|r0|output[14]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF_D3\(14) = (GLOBAL(\add_instance|RF_D3[9]~0_combout\) & (((\add_instance|Selector104~0\)))) # (!GLOBAL(\add_instance|RF_D3[9]~0_combout\) & (\add_instance|RF_D3\(14)))
-- \add_instance|RF|r0|output\(14) = DFFEAS(\add_instance|RF_D3\(14), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|RF|demultiplexer|selection_output\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	dataa => \add_instance|RF_D3\(14),
	datab => \add_instance|RF_D3[9]~0_combout\,
	datad => \add_instance|Selector104~0\,
	aclr => GND,
	ena => \add_instance|RF|demultiplexer|selection_output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF_D3\(14),
	regout => \add_instance|RF|r0|output\(14));

-- Location: LC_X1_Y9_N8
\add_instance|RF|r7|output[14]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector125~0\ = ((\add_instance|RF_A1\(1) & (E13_output[14])) # (!\add_instance|RF_A1\(1) & ((\add_instance|RF|r0|output\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|RF_A1\(1),
	datac => \add_instance|RF_D3\(14),
	datad => \add_instance|RF|r0|output\(14),
	aclr => GND,
	sload => VCC,
	ena => \add_instance|RF|demultiplexer|selection_output\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector125~0\,
	regout => \add_instance|RF|r7|output\(14));

-- Location: LC_X1_Y9_N9
\add_instance|T1|output[14]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T1_in\(14) = (\add_instance|T1_in[15]~0_combout\ & (((\add_instance|Selector125~0\)))) # (!\add_instance|T1_in[15]~0_combout\ & (\add_instance|T1_in\(14)))
-- \add_instance|T1|output\(14) = DFFEAS(\add_instance|T1_in\(14), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|T1_load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	dataa => \add_instance|T1_in[15]~0_combout\,
	datab => \add_instance|T1_in\(14),
	datad => \add_instance|Selector125~0\,
	aclr => GND,
	ena => \add_instance|T1_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T1_in\(14),
	regout => \add_instance|T1|output\(14));

-- Location: LC_X1_Y9_N2
\add_instance|ALU_A[14]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_A\(14) = ((GLOBAL(\add_instance|ALU_A[15]~0_combout\) & (\add_instance|T1|output\(14))) # (!GLOBAL(\add_instance|ALU_A[15]~0_combout\) & ((\add_instance|ALU_A\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|T1|output\(14),
	datac => \add_instance|ALU_A[15]~0_combout\,
	datad => \add_instance|ALU_A\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_A\(14));

-- Location: LC_X2_Y9_N6
\add_instance|T3_in[13]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T3_in\(13) = ((GLOBAL(\add_instance|ALU_A[15]~0_combout\) & ((\add_instance|ALU_A\(13)))) # (!GLOBAL(\add_instance|ALU_A[15]~0_combout\) & (\add_instance|T3_in\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|T3_in\(13),
	datac => \add_instance|ALU_A[15]~0_combout\,
	datad => \add_instance|ALU_A\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T3_in\(13));

-- Location: LC_X2_Y9_N3
\add_instance|T3|output[13]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector103~0\ = ((E3_output[13] & ((\add_instance|present_state.s2~regout\) # (\add_instance|present_state.s16~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|present_state.s2~regout\,
	datac => \add_instance|T3_in\(13),
	datad => \add_instance|present_state.s16~regout\,
	aclr => GND,
	sload => VCC,
	ena => \add_instance|T3_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector103~0\,
	regout => \add_instance|T3|output\(13));

-- Location: LC_X2_Y9_N1
\add_instance|RF|r0|output[13]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF_D3\(13) = ((GLOBAL(\add_instance|RF_D3[9]~0_combout\) & ((\add_instance|Selector103~0\))) # (!GLOBAL(\add_instance|RF_D3[9]~0_combout\) & (\add_instance|RF_D3\(13))))
-- \add_instance|RF|r0|output\(13) = DFFEAS(\add_instance|RF_D3\(13), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|RF|demultiplexer|selection_output\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|RF_D3[9]~0_combout\,
	datac => \add_instance|RF_D3\(13),
	datad => \add_instance|Selector103~0\,
	aclr => GND,
	ena => \add_instance|RF|demultiplexer|selection_output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF_D3\(13),
	regout => \add_instance|RF|r0|output\(13));

-- Location: LC_X1_Y9_N6
\add_instance|RF|r7|output[13]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector124~0\ = ((\add_instance|RF_A1\(1) & (E13_output[13])) # (!\add_instance|RF_A1\(1) & ((\add_instance|RF|r0|output\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|RF_A1\(1),
	datac => \add_instance|RF_D3\(13),
	datad => \add_instance|RF|r0|output\(13),
	aclr => GND,
	sload => VCC,
	ena => \add_instance|RF|demultiplexer|selection_output\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector124~0\,
	regout => \add_instance|RF|r7|output\(13));

-- Location: LC_X1_Y9_N7
\add_instance|T1|output[13]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T1_in\(13) = (\add_instance|T1_in[15]~0_combout\ & (((\add_instance|Selector124~0\)))) # (!\add_instance|T1_in[15]~0_combout\ & (((\add_instance|T1_in\(13)))))
-- \add_instance|T1|output\(13) = DFFEAS(\add_instance|T1_in\(13), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|T1_load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	dataa => \add_instance|T1_in[15]~0_combout\,
	datac => \add_instance|T1_in\(13),
	datad => \add_instance|Selector124~0\,
	aclr => GND,
	ena => \add_instance|T1_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T1_in\(13),
	regout => \add_instance|T1|output\(13));

-- Location: LC_X1_Y9_N0
\add_instance|ALU_A[13]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_A\(13) = ((GLOBAL(\add_instance|ALU_A[15]~0_combout\) & ((\add_instance|T1|output\(13)))) # (!GLOBAL(\add_instance|ALU_A[15]~0_combout\) & (\add_instance|ALU_A\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|ALU_A\(13),
	datac => \add_instance|ALU_A[15]~0_combout\,
	datad => \add_instance|T1|output\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_A\(13));

-- Location: LC_X1_Y9_N5
\add_instance|T3_in[12]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T3_in\(12) = ((GLOBAL(\add_instance|ALU_A[15]~0_combout\) & ((\add_instance|ALU_A\(12)))) # (!GLOBAL(\add_instance|ALU_A[15]~0_combout\) & (\add_instance|T3_in\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|T3_in\(12),
	datac => \add_instance|ALU_A[15]~0_combout\,
	datad => \add_instance|ALU_A\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T3_in\(12));

-- Location: LC_X1_Y6_N7
\add_instance|T3|output[12]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector102~0\ = ((E3_output[12] & ((\add_instance|present_state.s16~regout\) # (\add_instance|present_state.s2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|present_state.s16~regout\,
	datac => \add_instance|T3_in\(12),
	datad => \add_instance|present_state.s2~regout\,
	aclr => GND,
	sload => VCC,
	ena => \add_instance|T3_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector102~0\,
	regout => \add_instance|T3|output\(12));

-- Location: LC_X1_Y6_N0
\add_instance|RF|r0|output[12]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF_D3\(12) = ((GLOBAL(\add_instance|RF_D3[9]~0_combout\) & ((\add_instance|Selector102~0\))) # (!GLOBAL(\add_instance|RF_D3[9]~0_combout\) & (\add_instance|RF_D3\(12))))
-- \add_instance|RF|r0|output\(12) = DFFEAS(\add_instance|RF_D3\(12), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|RF|demultiplexer|selection_output\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|RF_D3\(12),
	datac => \add_instance|Selector102~0\,
	datad => \add_instance|RF_D3[9]~0_combout\,
	aclr => GND,
	ena => \add_instance|RF|demultiplexer|selection_output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF_D3\(12),
	regout => \add_instance|RF|r0|output\(12));

-- Location: LC_X1_Y9_N3
\add_instance|RF|r7|output[12]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector123~0\ = ((\add_instance|RF_A1\(1) & (E13_output[12])) # (!\add_instance|RF_A1\(1) & ((\add_instance|RF|r0|output\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|RF_A1\(1),
	datac => \add_instance|RF_D3\(12),
	datad => \add_instance|RF|r0|output\(12),
	aclr => GND,
	sload => VCC,
	ena => \add_instance|RF|demultiplexer|selection_output\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector123~0\,
	regout => \add_instance|RF|r7|output\(12));

-- Location: LC_X1_Y9_N4
\add_instance|T1|output[12]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T1_in\(12) = (\add_instance|T1_in[15]~0_combout\ & (((\add_instance|Selector123~0\)))) # (!\add_instance|T1_in[15]~0_combout\ & (((\add_instance|T1_in\(12)))))
-- \add_instance|T1|output\(12) = DFFEAS(\add_instance|T1_in\(12), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|T1_load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	dataa => \add_instance|T1_in[15]~0_combout\,
	datac => \add_instance|T1_in\(12),
	datad => \add_instance|Selector123~0\,
	aclr => GND,
	ena => \add_instance|T1_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T1_in\(12),
	regout => \add_instance|T1|output\(12));

-- Location: LC_X1_Y9_N1
\add_instance|ALU_A[12]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_A\(12) = ((GLOBAL(\add_instance|ALU_A[15]~0_combout\) & (\add_instance|T1|output\(12))) # (!GLOBAL(\add_instance|ALU_A[15]~0_combout\) & ((\add_instance|ALU_A\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|T1|output\(12),
	datac => \add_instance|ALU_A[15]~0_combout\,
	datad => \add_instance|ALU_A\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_A\(12));

-- Location: LC_X2_Y6_N6
\add_instance|T3_in[11]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T3_in\(11) = ((GLOBAL(\add_instance|ALU_A[15]~0_combout\) & ((\add_instance|ALU_A\(11)))) # (!GLOBAL(\add_instance|ALU_A[15]~0_combout\) & (\add_instance|T3_in\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|T3_in\(11),
	datac => \add_instance|ALU_A[15]~0_combout\,
	datad => \add_instance|ALU_A\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T3_in\(11));

-- Location: LC_X1_Y6_N9
\add_instance|T3|output[11]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector101~0\ = ((E3_output[11] & ((\add_instance|present_state.s16~regout\) # (\add_instance|present_state.s2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|present_state.s16~regout\,
	datac => \add_instance|T3_in\(11),
	datad => \add_instance|present_state.s2~regout\,
	aclr => GND,
	sload => VCC,
	ena => \add_instance|T3_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector101~0\,
	regout => \add_instance|T3|output\(11));

-- Location: LC_X1_Y6_N1
\add_instance|RF|r0|output[11]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF_D3\(11) = ((GLOBAL(\add_instance|RF_D3[9]~0_combout\) & (\add_instance|Selector101~0\)) # (!GLOBAL(\add_instance|RF_D3[9]~0_combout\) & ((\add_instance|RF_D3\(11)))))
-- \add_instance|RF|r0|output\(11) = DFFEAS(\add_instance|RF_D3\(11), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|RF|demultiplexer|selection_output\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccf0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|Selector101~0\,
	datac => \add_instance|RF_D3\(11),
	datad => \add_instance|RF_D3[9]~0_combout\,
	aclr => GND,
	ena => \add_instance|RF|demultiplexer|selection_output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF_D3\(11),
	regout => \add_instance|RF|r0|output\(11));

-- Location: LC_X2_Y6_N3
\add_instance|RF|r7|output[11]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector122~0\ = (\add_instance|RF_A1\(1) & (((E13_output[11])))) # (!\add_instance|RF_A1\(1) & (((\add_instance|RF|r0|output\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	dataa => \add_instance|RF_A1\(1),
	datac => \add_instance|RF_D3\(11),
	datad => \add_instance|RF|r0|output\(11),
	aclr => GND,
	sload => VCC,
	ena => \add_instance|RF|demultiplexer|selection_output\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector122~0\,
	regout => \add_instance|RF|r7|output\(11));

-- Location: LC_X2_Y6_N0
\add_instance|T1|output[11]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T1_in\(11) = ((\add_instance|T1_in[15]~0_combout\ & ((\add_instance|Selector122~0\))) # (!\add_instance|T1_in[15]~0_combout\ & (\add_instance|T1_in\(11))))
-- \add_instance|T1|output\(11) = DFFEAS(\add_instance|T1_in\(11), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|T1_load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|T1_in[15]~0_combout\,
	datac => \add_instance|T1_in\(11),
	datad => \add_instance|Selector122~0\,
	aclr => GND,
	ena => \add_instance|T1_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T1_in\(11),
	regout => \add_instance|T1|output\(11));

-- Location: LC_X2_Y6_N2
\add_instance|ALU_A[11]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_A\(11) = ((GLOBAL(\add_instance|ALU_A[15]~0_combout\) & (\add_instance|T1|output\(11))) # (!GLOBAL(\add_instance|ALU_A[15]~0_combout\) & ((\add_instance|ALU_A\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|T1|output\(11),
	datac => \add_instance|ALU_A[15]~0_combout\,
	datad => \add_instance|ALU_A\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_A\(11));

-- Location: LC_X2_Y6_N9
\add_instance|T3_in[10]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T3_in\(10) = ((GLOBAL(\add_instance|ALU_A[15]~0_combout\) & ((\add_instance|ALU_A\(10)))) # (!GLOBAL(\add_instance|ALU_A[15]~0_combout\) & (\add_instance|T3_in\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|T3_in\(10),
	datac => \add_instance|ALU_A[15]~0_combout\,
	datad => \add_instance|ALU_A\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T3_in\(10));

-- Location: LC_X1_Y6_N8
\add_instance|T3|output[10]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector100~0\ = ((E3_output[10] & ((\add_instance|present_state.s16~regout\) # (\add_instance|present_state.s2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|present_state.s16~regout\,
	datac => \add_instance|T3_in\(10),
	datad => \add_instance|present_state.s2~regout\,
	aclr => GND,
	sload => VCC,
	ena => \add_instance|T3_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector100~0\,
	regout => \add_instance|T3|output\(10));

-- Location: LC_X1_Y6_N4
\add_instance|RF|r0|output[10]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF_D3\(10) = ((GLOBAL(\add_instance|RF_D3[9]~0_combout\) & ((\add_instance|Selector100~0\))) # (!GLOBAL(\add_instance|RF_D3[9]~0_combout\) & (\add_instance|RF_D3\(10))))
-- \add_instance|RF|r0|output\(10) = DFFEAS(\add_instance|RF_D3\(10), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|RF|demultiplexer|selection_output\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|RF_D3[9]~0_combout\,
	datac => \add_instance|RF_D3\(10),
	datad => \add_instance|Selector100~0\,
	aclr => GND,
	ena => \add_instance|RF|demultiplexer|selection_output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF_D3\(10),
	regout => \add_instance|RF|r0|output\(10));

-- Location: LC_X2_Y6_N4
\add_instance|RF|r7|output[10]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector121~0\ = (\add_instance|RF_A1\(1) & (((E13_output[10])))) # (!\add_instance|RF_A1\(1) & (((\add_instance|RF|r0|output\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	dataa => \add_instance|RF_A1\(1),
	datac => \add_instance|RF_D3\(10),
	datad => \add_instance|RF|r0|output\(10),
	aclr => GND,
	sload => VCC,
	ena => \add_instance|RF|demultiplexer|selection_output\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector121~0\,
	regout => \add_instance|RF|r7|output\(10));

-- Location: LC_X2_Y6_N5
\add_instance|T1|output[10]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T1_in\(10) = (\add_instance|T1_in[15]~0_combout\ & (((\add_instance|Selector121~0\)))) # (!\add_instance|T1_in[15]~0_combout\ & (\add_instance|T1_in\(10)))
-- \add_instance|T1|output\(10) = DFFEAS(\add_instance|T1_in\(10), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|T1_load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	dataa => \add_instance|T1_in\(10),
	datab => \add_instance|T1_in[15]~0_combout\,
	datad => \add_instance|Selector121~0\,
	aclr => GND,
	ena => \add_instance|T1_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T1_in\(10),
	regout => \add_instance|T1|output\(10));

-- Location: LC_X2_Y6_N8
\add_instance|ALU_A[10]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_A\(10) = ((GLOBAL(\add_instance|ALU_A[15]~0_combout\) & (\add_instance|T1|output\(10))) # (!GLOBAL(\add_instance|ALU_A[15]~0_combout\) & ((\add_instance|ALU_A\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|T1|output\(10),
	datac => \add_instance|ALU_A[15]~0_combout\,
	datad => \add_instance|ALU_A\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_A\(10));

-- Location: LC_X3_Y8_N9
\add_instance|T3_in[9]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T3_in\(9) = ((GLOBAL(\add_instance|ALU_A[15]~0_combout\) & ((\add_instance|ALU_A\(9)))) # (!GLOBAL(\add_instance|ALU_A[15]~0_combout\) & (\add_instance|T3_in\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|T3_in\(9),
	datac => \add_instance|ALU_A[15]~0_combout\,
	datad => \add_instance|ALU_A\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T3_in\(9));

-- Location: LC_X2_Y8_N1
\add_instance|T3|output[9]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector99~0\ = ((E3_output[9] & ((\add_instance|present_state.s16~regout\) # (\add_instance|present_state.s2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|present_state.s16~regout\,
	datac => \add_instance|T3_in\(9),
	datad => \add_instance|present_state.s2~regout\,
	aclr => GND,
	sload => VCC,
	ena => \add_instance|T3_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector99~0\,
	regout => \add_instance|T3|output\(9));

-- Location: LC_X2_Y8_N2
\add_instance|RF|r0|output[9]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF_D3\(9) = ((GLOBAL(\add_instance|RF_D3[9]~0_combout\) & ((\add_instance|Selector99~0\))) # (!GLOBAL(\add_instance|RF_D3[9]~0_combout\) & (\add_instance|RF_D3\(9))))
-- \add_instance|RF|r0|output\(9) = DFFEAS(\add_instance|RF_D3\(9), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|RF|demultiplexer|selection_output\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|RF_D3[9]~0_combout\,
	datac => \add_instance|RF_D3\(9),
	datad => \add_instance|Selector99~0\,
	aclr => GND,
	ena => \add_instance|RF|demultiplexer|selection_output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF_D3\(9),
	regout => \add_instance|RF|r0|output\(9));

-- Location: LC_X3_Y8_N3
\add_instance|RF|r7|output[9]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector120~0\ = (\add_instance|RF_A1\(1) & (((E13_output[9])))) # (!\add_instance|RF_A1\(1) & (((\add_instance|RF|r0|output\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	dataa => \add_instance|RF_A1\(1),
	datac => \add_instance|RF_D3\(9),
	datad => \add_instance|RF|r0|output\(9),
	aclr => GND,
	sload => VCC,
	ena => \add_instance|RF|demultiplexer|selection_output\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector120~0\,
	regout => \add_instance|RF|r7|output\(9));

-- Location: LC_X3_Y8_N4
\add_instance|T1|output[9]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T1_in\(9) = ((\add_instance|T1_in[15]~0_combout\ & ((\add_instance|Selector120~0\))) # (!\add_instance|T1_in[15]~0_combout\ & (\add_instance|T1_in\(9))))
-- \add_instance|T1|output\(9) = DFFEAS(\add_instance|T1_in\(9), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|T1_load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|T1_in[15]~0_combout\,
	datac => \add_instance|T1_in\(9),
	datad => \add_instance|Selector120~0\,
	aclr => GND,
	ena => \add_instance|T1_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T1_in\(9),
	regout => \add_instance|T1|output\(9));

-- Location: LC_X3_Y8_N8
\add_instance|ALU_A[9]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_A\(9) = ((GLOBAL(\add_instance|ALU_A[15]~0_combout\) & (\add_instance|T1|output\(9))) # (!GLOBAL(\add_instance|ALU_A[15]~0_combout\) & ((\add_instance|ALU_A\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|T1|output\(9),
	datac => \add_instance|ALU_A[15]~0_combout\,
	datad => \add_instance|ALU_A\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_A\(9));

-- Location: LC_X2_Y8_N6
\add_instance|T3_in[8]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T3_in\(8) = ((GLOBAL(\add_instance|ALU_A[15]~0_combout\) & ((\add_instance|ALU_A\(8)))) # (!GLOBAL(\add_instance|ALU_A[15]~0_combout\) & (\add_instance|T3_in\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|T3_in\(8),
	datac => \add_instance|ALU_A[15]~0_combout\,
	datad => \add_instance|ALU_A\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T3_in\(8));

-- Location: LC_X2_Y8_N0
\add_instance|T3|output[8]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector98~0\ = ((E3_output[8] & ((\add_instance|present_state.s16~regout\) # (\add_instance|present_state.s2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|present_state.s16~regout\,
	datac => \add_instance|T3_in\(8),
	datad => \add_instance|present_state.s2~regout\,
	aclr => GND,
	sload => VCC,
	ena => \add_instance|T3_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector98~0\,
	regout => \add_instance|T3|output\(8));

-- Location: LC_X2_Y8_N9
\add_instance|RF|r0|output[8]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF_D3\(8) = ((GLOBAL(\add_instance|RF_D3[9]~0_combout\) & ((\add_instance|Selector98~0\))) # (!GLOBAL(\add_instance|RF_D3[9]~0_combout\) & (\add_instance|RF_D3\(8))))
-- \add_instance|RF|r0|output\(8) = DFFEAS(\add_instance|RF_D3\(8), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|RF|demultiplexer|selection_output\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|RF_D3\(8),
	datac => \add_instance|Selector98~0\,
	datad => \add_instance|RF_D3[9]~0_combout\,
	aclr => GND,
	ena => \add_instance|RF|demultiplexer|selection_output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF_D3\(8),
	regout => \add_instance|RF|r0|output\(8));

-- Location: LC_X1_Y8_N2
\add_instance|RF|r7|output[8]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector119~0\ = ((\add_instance|RF_A1\(1) & (E13_output[8])) # (!\add_instance|RF_A1\(1) & ((\add_instance|RF|r0|output\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|RF_A1\(1),
	datac => \add_instance|RF_D3\(8),
	datad => \add_instance|RF|r0|output\(8),
	aclr => GND,
	sload => VCC,
	ena => \add_instance|RF|demultiplexer|selection_output\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector119~0\,
	regout => \add_instance|RF|r7|output\(8));

-- Location: LC_X1_Y8_N3
\add_instance|T1|output[8]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T1_in\(8) = ((\add_instance|T1_in[15]~0_combout\ & ((\add_instance|Selector119~0\))) # (!\add_instance|T1_in[15]~0_combout\ & (\add_instance|T1_in\(8))))
-- \add_instance|T1|output\(8) = DFFEAS(\add_instance|T1_in\(8), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|T1_load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|T1_in[15]~0_combout\,
	datac => \add_instance|T1_in\(8),
	datad => \add_instance|Selector119~0\,
	aclr => GND,
	ena => \add_instance|T1_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T1_in\(8),
	regout => \add_instance|T1|output\(8));

-- Location: LC_X1_Y8_N7
\add_instance|ALU_A[8]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_A\(8) = ((GLOBAL(\add_instance|ALU_A[15]~0_combout\) & ((\add_instance|T1|output\(8)))) # (!GLOBAL(\add_instance|ALU_A[15]~0_combout\) & (\add_instance|ALU_A\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|ALU_A\(8),
	datac => \add_instance|ALU_A[15]~0_combout\,
	datad => \add_instance|T1|output\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_A\(8));

-- Location: LC_X1_Y8_N1
\add_instance|T3_in[7]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T3_in\(7) = ((GLOBAL(\add_instance|ALU_A[15]~0_combout\) & ((\add_instance|ALU_A\(7)))) # (!GLOBAL(\add_instance|ALU_A[15]~0_combout\) & (\add_instance|T3_in\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|T3_in\(7),
	datac => \add_instance|ALU_A[15]~0_combout\,
	datad => \add_instance|ALU_A\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T3_in\(7));

-- Location: LC_X1_Y6_N2
\add_instance|T3|output[7]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector97~0\ = ((E3_output[7] & ((\add_instance|present_state.s2~regout\) # (\add_instance|present_state.s16~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|present_state.s2~regout\,
	datac => \add_instance|T3_in\(7),
	datad => \add_instance|present_state.s16~regout\,
	aclr => GND,
	sload => VCC,
	ena => \add_instance|T3_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector97~0\,
	regout => \add_instance|T3|output\(7));

-- Location: LC_X1_Y6_N3
\add_instance|RF|r0|output[7]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF_D3\(7) = (GLOBAL(\add_instance|RF_D3[9]~0_combout\) & (((\add_instance|Selector97~0\)))) # (!GLOBAL(\add_instance|RF_D3[9]~0_combout\) & (\add_instance|RF_D3\(7)))
-- \add_instance|RF|r0|output\(7) = DFFEAS(\add_instance|RF_D3\(7), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|RF|demultiplexer|selection_output\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee22",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	dataa => \add_instance|RF_D3\(7),
	datab => \add_instance|RF_D3[9]~0_combout\,
	datad => \add_instance|Selector97~0\,
	aclr => GND,
	ena => \add_instance|RF|demultiplexer|selection_output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF_D3\(7),
	regout => \add_instance|RF|r0|output\(7));

-- Location: LC_X1_Y8_N5
\add_instance|RF|r7|output[7]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector118~0\ = ((\add_instance|RF_A1\(1) & (E13_output[7])) # (!\add_instance|RF_A1\(1) & ((\add_instance|RF|r0|output\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|RF_A1\(1),
	datac => \add_instance|RF_D3\(7),
	datad => \add_instance|RF|r0|output\(7),
	aclr => GND,
	sload => VCC,
	ena => \add_instance|RF|demultiplexer|selection_output\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector118~0\,
	regout => \add_instance|RF|r7|output\(7));

-- Location: LC_X1_Y8_N6
\add_instance|T1|output[7]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T1_in\(7) = (\add_instance|T1_in[15]~0_combout\ & (((\add_instance|Selector118~0\)))) # (!\add_instance|T1_in[15]~0_combout\ & (((\add_instance|T1_in\(7)))))
-- \add_instance|T1|output\(7) = DFFEAS(\add_instance|T1_in\(7), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|T1_load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	dataa => \add_instance|T1_in[15]~0_combout\,
	datac => \add_instance|T1_in\(7),
	datad => \add_instance|Selector118~0\,
	aclr => GND,
	ena => \add_instance|T1_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T1_in\(7),
	regout => \add_instance|T1|output\(7));

-- Location: LC_X1_Y8_N0
\add_instance|ALU_A[7]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_A\(7) = ((GLOBAL(\add_instance|ALU_A[15]~0_combout\) & ((\add_instance|T1|output\(7)))) # (!GLOBAL(\add_instance|ALU_A[15]~0_combout\) & (\add_instance|ALU_A\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|ALU_A\(7),
	datac => \add_instance|ALU_A[15]~0_combout\,
	datad => \add_instance|T1|output\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_A\(7));

-- Location: LC_X1_Y10_N5
\add_instance|T3_in[6]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T3_in\(6) = ((GLOBAL(\add_instance|ALU_A[15]~0_combout\) & ((\add_instance|ALU_A\(6)))) # (!GLOBAL(\add_instance|ALU_A[15]~0_combout\) & (\add_instance|T3_in\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|T3_in\(6),
	datac => \add_instance|ALU_A[15]~0_combout\,
	datad => \add_instance|ALU_A\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T3_in\(6));

-- Location: LC_X1_Y6_N5
\add_instance|T3|output[6]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector96~0\ = ((E3_output[6] & ((\add_instance|present_state.s2~regout\) # (\add_instance|present_state.s16~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|present_state.s2~regout\,
	datac => \add_instance|T3_in\(6),
	datad => \add_instance|present_state.s16~regout\,
	aclr => GND,
	sload => VCC,
	ena => \add_instance|T3_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector96~0\,
	regout => \add_instance|T3|output\(6));

-- Location: LC_X1_Y6_N6
\add_instance|RF|r0|output[6]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF_D3\(6) = ((GLOBAL(\add_instance|RF_D3[9]~0_combout\) & ((\add_instance|Selector96~0\))) # (!GLOBAL(\add_instance|RF_D3[9]~0_combout\) & (\add_instance|RF_D3\(6))))
-- \add_instance|RF|r0|output\(6) = DFFEAS(\add_instance|RF_D3\(6), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|RF|demultiplexer|selection_output\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|RF_D3[9]~0_combout\,
	datac => \add_instance|RF_D3\(6),
	datad => \add_instance|Selector96~0\,
	aclr => GND,
	ena => \add_instance|RF|demultiplexer|selection_output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF_D3\(6),
	regout => \add_instance|RF|r0|output\(6));

-- Location: LC_X1_Y10_N6
\add_instance|RF|r7|output[6]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector117~0\ = ((\add_instance|RF_A1\(1) & (E13_output[6])) # (!\add_instance|RF_A1\(1) & ((\add_instance|RF|r0|output\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|RF_A1\(1),
	datac => \add_instance|RF_D3\(6),
	datad => \add_instance|RF|r0|output\(6),
	aclr => GND,
	sload => VCC,
	ena => \add_instance|RF|demultiplexer|selection_output\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector117~0\,
	regout => \add_instance|RF|r7|output\(6));

-- Location: LC_X1_Y10_N7
\add_instance|T1|output[6]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T1_in\(6) = ((\add_instance|T1_in[15]~0_combout\ & ((\add_instance|Selector117~0\))) # (!\add_instance|T1_in[15]~0_combout\ & (\add_instance|T1_in\(6))))
-- \add_instance|T1|output\(6) = DFFEAS(\add_instance|T1_in\(6), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|T1_load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|T1_in[15]~0_combout\,
	datac => \add_instance|T1_in\(6),
	datad => \add_instance|Selector117~0\,
	aclr => GND,
	ena => \add_instance|T1_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T1_in\(6),
	regout => \add_instance|T1|output\(6));

-- Location: LC_X1_Y10_N4
\add_instance|ALU_A[6]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_A\(6) = ((GLOBAL(\add_instance|ALU_A[15]~0_combout\) & ((\add_instance|T1|output\(6)))) # (!GLOBAL(\add_instance|ALU_A[15]~0_combout\) & (\add_instance|ALU_A\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU_A\(6),
	datac => \add_instance|ALU_A[15]~0_combout\,
	datad => \add_instance|T1|output\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_A\(6));

-- Location: LC_X1_Y10_N2
\add_instance|T3_in[5]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T3_in\(5) = ((GLOBAL(\add_instance|ALU_A[15]~0_combout\) & ((\add_instance|ALU_A\(5)))) # (!GLOBAL(\add_instance|ALU_A[15]~0_combout\) & (\add_instance|T3_in\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|T3_in\(5),
	datac => \add_instance|ALU_A[15]~0_combout\,
	datad => \add_instance|ALU_A\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T3_in\(5));

-- Location: LC_X2_Y7_N7
\add_instance|T3|output[5]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector95~0\ = ((E3_output[5] & ((\add_instance|present_state.s16~regout\) # (\add_instance|present_state.s2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|present_state.s16~regout\,
	datac => \add_instance|T3_in\(5),
	datad => \add_instance|present_state.s2~regout\,
	aclr => GND,
	sload => VCC,
	ena => \add_instance|T3_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector95~0\,
	regout => \add_instance|T3|output\(5));

-- Location: LC_X2_Y10_N4
\add_instance|RF|r0|output[5]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF_D3\(5) = ((GLOBAL(\add_instance|RF_D3[9]~0_combout\) & ((\add_instance|Selector95~0\))) # (!GLOBAL(\add_instance|RF_D3[9]~0_combout\) & (\add_instance|RF_D3\(5))))
-- \add_instance|RF|r0|output\(5) = DFFEAS(\add_instance|RF_D3\(5), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|RF|demultiplexer|selection_output\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|RF_D3[9]~0_combout\,
	datac => \add_instance|RF_D3\(5),
	datad => \add_instance|Selector95~0\,
	aclr => GND,
	ena => \add_instance|RF|demultiplexer|selection_output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF_D3\(5),
	regout => \add_instance|RF|r0|output\(5));

-- Location: LC_X2_Y10_N6
\add_instance|RF|r7|output[5]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector116~0\ = ((\add_instance|RF_A1\(1) & (E13_output[5])) # (!\add_instance|RF_A1\(1) & ((\add_instance|RF|r0|output\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|RF_A1\(1),
	datac => \add_instance|RF_D3\(5),
	datad => \add_instance|RF|r0|output\(5),
	aclr => GND,
	sload => VCC,
	ena => \add_instance|RF|demultiplexer|selection_output\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector116~0\,
	regout => \add_instance|RF|r7|output\(5));

-- Location: LC_X1_Y10_N1
\add_instance|T1|output[5]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T1_in\(5) = ((\add_instance|T1_in[15]~0_combout\ & (\add_instance|Selector116~0\)) # (!\add_instance|T1_in[15]~0_combout\ & ((\add_instance|T1_in\(5)))))
-- \add_instance|T1|output\(5) = DFFEAS(\add_instance|T1_in\(5), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|T1_load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|T1_in[15]~0_combout\,
	datac => \add_instance|Selector116~0\,
	datad => \add_instance|T1_in\(5),
	aclr => GND,
	ena => \add_instance|T1_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T1_in\(5),
	regout => \add_instance|T1|output\(5));

-- Location: LC_X1_Y10_N3
\add_instance|ALU_A[5]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_A\(5) = ((GLOBAL(\add_instance|ALU_A[15]~0_combout\) & (\add_instance|T1|output\(5))) # (!GLOBAL(\add_instance|ALU_A[15]~0_combout\) & ((\add_instance|ALU_A\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|T1|output\(5),
	datac => \add_instance|ALU_A[15]~0_combout\,
	datad => \add_instance|ALU_A\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_A\(5));

-- Location: LC_X2_Y8_N4
\add_instance|T3_in[4]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T3_in\(4) = ((GLOBAL(\add_instance|ALU_A[15]~0_combout\) & ((\add_instance|ALU_A\(4)))) # (!GLOBAL(\add_instance|ALU_A[15]~0_combout\) & (\add_instance|T3_in\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|T3_in\(4),
	datac => \add_instance|ALU_A[15]~0_combout\,
	datad => \add_instance|ALU_A\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T3_in\(4));

-- Location: LC_X2_Y8_N7
\add_instance|T3|output[4]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector94~0\ = ((E3_output[4] & ((\add_instance|present_state.s16~regout\) # (\add_instance|present_state.s2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|present_state.s16~regout\,
	datac => \add_instance|T3_in\(4),
	datad => \add_instance|present_state.s2~regout\,
	aclr => GND,
	sload => VCC,
	ena => \add_instance|T3_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector94~0\,
	regout => \add_instance|T3|output\(4));

-- Location: LC_X2_Y8_N8
\add_instance|RF|r0|output[4]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF_D3\(4) = ((GLOBAL(\add_instance|RF_D3[9]~0_combout\) & (\add_instance|Selector94~0\)) # (!GLOBAL(\add_instance|RF_D3[9]~0_combout\) & ((\add_instance|RF_D3\(4)))))
-- \add_instance|RF|r0|output\(4) = DFFEAS(\add_instance|RF_D3\(4), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|RF|demultiplexer|selection_output\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|RF_D3[9]~0_combout\,
	datac => \add_instance|Selector94~0\,
	datad => \add_instance|RF_D3\(4),
	aclr => GND,
	ena => \add_instance|RF|demultiplexer|selection_output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF_D3\(4),
	regout => \add_instance|RF|r0|output\(4));

-- Location: LC_X1_Y8_N8
\add_instance|RF|r7|output[4]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector115~0\ = ((\add_instance|RF_A1\(1) & (E13_output[4])) # (!\add_instance|RF_A1\(1) & ((\add_instance|RF|r0|output\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|RF_A1\(1),
	datac => \add_instance|RF_D3\(4),
	datad => \add_instance|RF|r0|output\(4),
	aclr => GND,
	sload => VCC,
	ena => \add_instance|RF|demultiplexer|selection_output\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector115~0\,
	regout => \add_instance|RF|r7|output\(4));

-- Location: LC_X1_Y8_N9
\add_instance|T1|output[4]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T1_in\(4) = (\add_instance|T1_in[15]~0_combout\ & (((\add_instance|Selector115~0\)))) # (!\add_instance|T1_in[15]~0_combout\ & (\add_instance|T1_in\(4)))
-- \add_instance|T1|output\(4) = DFFEAS(\add_instance|T1_in\(4), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|T1_load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	dataa => \add_instance|T1_in[15]~0_combout\,
	datab => \add_instance|T1_in\(4),
	datad => \add_instance|Selector115~0\,
	aclr => GND,
	ena => \add_instance|T1_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T1_in\(4),
	regout => \add_instance|T1|output\(4));

-- Location: LC_X2_Y8_N3
\add_instance|ALU_A[4]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_A\(4) = ((GLOBAL(\add_instance|ALU_A[15]~0_combout\) & (\add_instance|T1|output\(4))) # (!GLOBAL(\add_instance|ALU_A[15]~0_combout\) & ((\add_instance|ALU_A\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|T1|output\(4),
	datac => \add_instance|ALU_A[15]~0_combout\,
	datad => \add_instance|ALU_A\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_A\(4));

-- Location: LC_X3_Y10_N9
\add_instance|T3_in[3]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T3_in\(3) = ((GLOBAL(\add_instance|ALU_A[15]~0_combout\) & ((\add_instance|ALU_A\(3)))) # (!GLOBAL(\add_instance|ALU_A[15]~0_combout\) & (\add_instance|T3_in\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|T3_in\(3),
	datac => \add_instance|ALU_A[15]~0_combout\,
	datad => \add_instance|ALU_A\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T3_in\(3));

-- Location: LC_X2_Y7_N0
\add_instance|T3|output[3]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector93~0\ = ((E3_output[3] & ((\add_instance|present_state.s16~regout\) # (\add_instance|present_state.s2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|present_state.s16~regout\,
	datac => \add_instance|T3_in\(3),
	datad => \add_instance|present_state.s2~regout\,
	aclr => GND,
	sload => VCC,
	ena => \add_instance|T3_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector93~0\,
	regout => \add_instance|T3|output\(3));

-- Location: LC_X2_Y10_N9
\add_instance|RF|r0|output[3]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF_D3\(3) = ((GLOBAL(\add_instance|RF_D3[9]~0_combout\) & (\add_instance|Selector93~0\)) # (!GLOBAL(\add_instance|RF_D3[9]~0_combout\) & ((\add_instance|RF_D3\(3)))))
-- \add_instance|RF|r0|output\(3) = DFFEAS(\add_instance|RF_D3\(3), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|RF|demultiplexer|selection_output\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|RF_D3[9]~0_combout\,
	datac => \add_instance|Selector93~0\,
	datad => \add_instance|RF_D3\(3),
	aclr => GND,
	ena => \add_instance|RF|demultiplexer|selection_output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF_D3\(3),
	regout => \add_instance|RF|r0|output\(3));

-- Location: LC_X2_Y10_N1
\add_instance|RF|r7|output[3]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector114~0\ = ((\add_instance|RF_A1\(1) & (E13_output[3])) # (!\add_instance|RF_A1\(1) & ((\add_instance|RF|r0|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|RF_A1\(1),
	datac => \add_instance|RF_D3\(3),
	datad => \add_instance|RF|r0|output\(3),
	aclr => GND,
	sload => VCC,
	ena => \add_instance|RF|demultiplexer|selection_output\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector114~0\,
	regout => \add_instance|RF|r7|output\(3));

-- Location: LC_X3_Y10_N3
\add_instance|T1|output[3]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T1_in\(3) = ((\add_instance|T1_in[15]~0_combout\ & (\add_instance|Selector114~0\)) # (!\add_instance|T1_in[15]~0_combout\ & ((\add_instance|T1_in\(3)))))
-- \add_instance|T1|output\(3) = DFFEAS(\add_instance|T1_in\(3), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|T1_load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|T1_in[15]~0_combout\,
	datac => \add_instance|Selector114~0\,
	datad => \add_instance|T1_in\(3),
	aclr => GND,
	ena => \add_instance|T1_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T1_in\(3),
	regout => \add_instance|T1|output\(3));

-- Location: LC_X3_Y10_N8
\add_instance|ALU_A[3]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_A\(3) = ((GLOBAL(\add_instance|ALU_A[15]~0_combout\) & (\add_instance|T1|output\(3))) # (!GLOBAL(\add_instance|ALU_A[15]~0_combout\) & ((\add_instance|ALU_A\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|T1|output\(3),
	datac => \add_instance|ALU_A[15]~0_combout\,
	datad => \add_instance|ALU_A\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_A\(3));

-- Location: LC_X2_Y9_N5
\add_instance|T3_in[2]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T3_in\(2) = ((GLOBAL(\add_instance|ALU_A[15]~0_combout\) & ((\add_instance|ALU_A\(2)))) # (!GLOBAL(\add_instance|ALU_A[15]~0_combout\) & (\add_instance|T3_in\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|T3_in\(2),
	datac => \add_instance|ALU_A[15]~0_combout\,
	datad => \add_instance|ALU_A\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T3_in\(2));

-- Location: LC_X2_Y9_N9
\add_instance|T3|output[2]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector92~0\ = ((E3_output[2] & ((\add_instance|present_state.s2~regout\) # (\add_instance|present_state.s16~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|present_state.s2~regout\,
	datac => \add_instance|T3_in\(2),
	datad => \add_instance|present_state.s16~regout\,
	aclr => GND,
	sload => VCC,
	ena => \add_instance|T3_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector92~0\,
	regout => \add_instance|T3|output\(2));

-- Location: LC_X2_Y9_N2
\add_instance|RF|r0|output[2]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF_D3\(2) = ((GLOBAL(\add_instance|RF_D3[9]~0_combout\) & ((\add_instance|Selector92~0\))) # (!GLOBAL(\add_instance|RF_D3[9]~0_combout\) & (\add_instance|RF_D3\(2))))
-- \add_instance|RF|r0|output\(2) = DFFEAS(\add_instance|RF_D3\(2), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|RF|demultiplexer|selection_output\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|RF_D3[9]~0_combout\,
	datac => \add_instance|RF_D3\(2),
	datad => \add_instance|Selector92~0\,
	aclr => GND,
	ena => \add_instance|RF|demultiplexer|selection_output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF_D3\(2),
	regout => \add_instance|RF|r0|output\(2));

-- Location: LC_X1_Y10_N8
\add_instance|RF|r7|output[2]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector113~0\ = ((\add_instance|RF_A1\(1) & (E13_output[2])) # (!\add_instance|RF_A1\(1) & ((\add_instance|RF|r0|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|RF_A1\(1),
	datac => \add_instance|RF_D3\(2),
	datad => \add_instance|RF|r0|output\(2),
	aclr => GND,
	sload => VCC,
	ena => \add_instance|RF|demultiplexer|selection_output\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector113~0\,
	regout => \add_instance|RF|r7|output\(2));

-- Location: LC_X1_Y10_N9
\add_instance|T1|output[2]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T1_in\(2) = ((\add_instance|T1_in[15]~0_combout\ & ((\add_instance|Selector113~0\))) # (!\add_instance|T1_in[15]~0_combout\ & (\add_instance|T1_in\(2))))
-- \add_instance|T1|output\(2) = DFFEAS(\add_instance|T1_in\(2), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|T1_load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|T1_in\(2),
	datac => \add_instance|T1_in[15]~0_combout\,
	datad => \add_instance|Selector113~0\,
	aclr => GND,
	ena => \add_instance|T1_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T1_in\(2),
	regout => \add_instance|T1|output\(2));

-- Location: LC_X2_Y9_N4
\add_instance|ALU_A[2]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_A\(2) = ((GLOBAL(\add_instance|ALU_A[15]~0_combout\) & ((\add_instance|T1|output\(2)))) # (!GLOBAL(\add_instance|ALU_A[15]~0_combout\) & (\add_instance|ALU_A\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU_A\(2),
	datac => \add_instance|ALU_A[15]~0_combout\,
	datad => \add_instance|T1|output\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_A\(2));

-- Location: LC_X3_Y8_N0
\add_instance|T3_in[1]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T3_in\(1) = ((GLOBAL(\add_instance|ALU_A[15]~0_combout\) & ((\add_instance|ALU_A\(1)))) # (!GLOBAL(\add_instance|ALU_A[15]~0_combout\) & (\add_instance|T3_in\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|T3_in\(1),
	datac => \add_instance|ALU_A[15]~0_combout\,
	datad => \add_instance|ALU_A\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T3_in\(1));

-- Location: LC_X2_Y7_N3
\add_instance|T3|output[1]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector91~0\ = ((E3_output[1] & ((\add_instance|present_state.s16~regout\) # (\add_instance|present_state.s2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|present_state.s16~regout\,
	datac => \add_instance|T3_in\(1),
	datad => \add_instance|present_state.s2~regout\,
	aclr => GND,
	sload => VCC,
	ena => \add_instance|T3_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector91~0\,
	regout => \add_instance|T3|output\(1));

-- Location: LC_X2_Y10_N3
\add_instance|RF|r0|output[1]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF_D3\(1) = ((GLOBAL(\add_instance|RF_D3[9]~0_combout\) & ((\add_instance|Selector91~0\))) # (!GLOBAL(\add_instance|RF_D3[9]~0_combout\) & (\add_instance|RF_D3\(1))))
-- \add_instance|RF|r0|output\(1) = DFFEAS(\add_instance|RF_D3\(1), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|RF|demultiplexer|selection_output\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|RF_D3[9]~0_combout\,
	datac => \add_instance|RF_D3\(1),
	datad => \add_instance|Selector91~0\,
	aclr => GND,
	ena => \add_instance|RF|demultiplexer|selection_output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF_D3\(1),
	regout => \add_instance|RF|r0|output\(1));

-- Location: LC_X2_Y10_N7
\add_instance|RF|r7|output[1]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector112~0\ = ((\add_instance|RF_A1\(1) & (E13_output[1])) # (!\add_instance|RF_A1\(1) & ((\add_instance|RF|r0|output\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|RF_A1\(1),
	datac => \add_instance|RF_D3\(1),
	datad => \add_instance|RF|r0|output\(1),
	aclr => GND,
	sload => VCC,
	ena => \add_instance|RF|demultiplexer|selection_output\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector112~0\,
	regout => \add_instance|RF|r7|output\(1));

-- Location: LC_X3_Y8_N7
\add_instance|T1|output[1]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T1_in\(1) = ((\add_instance|T1_in[15]~0_combout\ & ((\add_instance|Selector112~0\))) # (!\add_instance|T1_in[15]~0_combout\ & (\add_instance|T1_in\(1))))
-- \add_instance|T1|output\(1) = DFFEAS(\add_instance|T1_in\(1), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|T1_load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|T1_in[15]~0_combout\,
	datac => \add_instance|T1_in\(1),
	datad => \add_instance|Selector112~0\,
	aclr => GND,
	ena => \add_instance|T1_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T1_in\(1),
	regout => \add_instance|T1|output\(1));

-- Location: LC_X3_Y8_N2
\add_instance|ALU_A[1]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_A\(1) = ((GLOBAL(\add_instance|ALU_A[15]~0_combout\) & (\add_instance|T1|output\(1))) # (!GLOBAL(\add_instance|ALU_A[15]~0_combout\) & ((\add_instance|ALU_A\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "afa0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|T1|output\(1),
	datac => \add_instance|ALU_A[15]~0_combout\,
	datad => \add_instance|ALU_A\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_A\(1));

-- Location: LC_X3_Y7_N3
\add_instance|T3_in[0]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T3_in\(0) = ((GLOBAL(\add_instance|ALU_A[15]~0_combout\) & ((\add_instance|ALU|sum~0_combout\))) # (!GLOBAL(\add_instance|ALU_A[15]~0_combout\) & (\add_instance|T3_in\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|T3_in\(0),
	datac => \add_instance|ALU_A[15]~0_combout\,
	datad => \add_instance|ALU|sum~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T3_in\(0));

-- Location: LC_X2_Y7_N6
\add_instance|T3|output[0]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector90~0\ = ((E3_output[0] & ((\add_instance|present_state.s16~regout\) # (\add_instance|present_state.s2~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|present_state.s16~regout\,
	datac => \add_instance|T3_in\(0),
	datad => \add_instance|present_state.s2~regout\,
	aclr => GND,
	sload => VCC,
	ena => \add_instance|T3_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector90~0\,
	regout => \add_instance|T3|output\(0));

-- Location: LC_X2_Y10_N8
\add_instance|RF|r0|output[0]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF_D3\(0) = ((GLOBAL(\add_instance|RF_D3[9]~0_combout\) & ((\add_instance|Selector90~0\))) # (!GLOBAL(\add_instance|RF_D3[9]~0_combout\) & (\add_instance|RF_D3\(0))))
-- \add_instance|RF|r0|output\(0) = DFFEAS(\add_instance|RF_D3\(0), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|RF|demultiplexer|selection_output\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|RF_D3\(0),
	datac => \add_instance|Selector90~0\,
	datad => \add_instance|RF_D3[9]~0_combout\,
	aclr => GND,
	ena => \add_instance|RF|demultiplexer|selection_output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF_D3\(0),
	regout => \add_instance|RF|r0|output\(0));

-- Location: LC_X2_Y10_N5
\add_instance|RF|r7|output[0]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector111~0\ = ((\add_instance|RF_A1\(1) & (E13_output[0])) # (!\add_instance|RF_A1\(1) & ((\add_instance|RF|r0|output\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f3c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|RF_A1\(1),
	datac => \add_instance|RF_D3\(0),
	datad => \add_instance|RF|r0|output\(0),
	aclr => GND,
	sload => VCC,
	ena => \add_instance|RF|demultiplexer|selection_output\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector111~0\,
	regout => \add_instance|RF|r7|output\(0));

-- Location: LC_X3_Y7_N4
\add_instance|T1|output[0]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T1_in\(0) = ((\add_instance|T1_in[15]~0_combout\ & ((\add_instance|Selector111~0\))) # (!\add_instance|T1_in[15]~0_combout\ & (\add_instance|T1_in\(0))))
-- \add_instance|T1|output\(0) = DFFEAS(\add_instance|T1_in\(0), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|T1_load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|T1_in[15]~0_combout\,
	datac => \add_instance|T1_in\(0),
	datad => \add_instance|Selector111~0\,
	aclr => GND,
	ena => \add_instance|T1_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T1_in\(0),
	regout => \add_instance|T1|output\(0));

-- Location: LC_X3_Y7_N7
\add_instance|ALU_A[0]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_A\(0) = ((GLOBAL(\add_instance|ALU_A[15]~0_combout\) & ((\add_instance|T1|output\(0)))) # (!GLOBAL(\add_instance|ALU_A[15]~0_combout\) & (\add_instance|ALU_A\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|ALU_A\(0),
	datac => \add_instance|ALU_A[15]~0_combout\,
	datad => \add_instance|T1|output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_A\(0));

-- Location: LC_X3_Y7_N1
\add_instance|ALU_B[0]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_B\(0) = ((GLOBAL(\add_instance|ALU_A[15]~0_combout\) & ((\add_instance|present_state.s1~regout\))) # (!GLOBAL(\add_instance|ALU_A[15]~0_combout\) & (\add_instance|ALU_B\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc0c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|ALU_B\(0),
	datac => \add_instance|ALU_A[15]~0_combout\,
	datad => \add_instance|present_state.s1~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_B\(0));

-- Location: LC_X3_Y7_N2
\add_instance|ALU|sum~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU|sum~0_combout\ = ((\add_instance|ALU_A\(0) $ (\add_instance|ALU_B\(0))))

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
	datac => \add_instance|ALU_A\(0),
	datad => \add_instance|ALU_B\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU|sum~0_combout\);

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|ALU_A\(15),
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|ALU_A\(14),
	oe => VCC,
	padio => ww_output_vector(1));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|ALU_A\(13),
	oe => VCC,
	padio => ww_output_vector(2));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|ALU_A\(12),
	oe => VCC,
	padio => ww_output_vector(3));

-- Location: PIN_27,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|ALU_A\(11),
	oe => VCC,
	padio => ww_output_vector(4));

-- Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|ALU_A\(10),
	oe => VCC,
	padio => ww_output_vector(5));

-- Location: PIN_13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|ALU_A\(9),
	oe => VCC,
	padio => ww_output_vector(6));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|ALU_A\(8),
	oe => VCC,
	padio => ww_output_vector(7));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|ALU_A\(7),
	oe => VCC,
	padio => ww_output_vector(8));

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|ALU_A\(6),
	oe => VCC,
	padio => ww_output_vector(9));

-- Location: PIN_2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|ALU_A\(5),
	oe => VCC,
	padio => ww_output_vector(10));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|ALU_A\(4),
	oe => VCC,
	padio => ww_output_vector(11));

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|ALU_A\(3),
	oe => VCC,
	padio => ww_output_vector(12));

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|ALU_A\(2),
	oe => VCC,
	padio => ww_output_vector(13));

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|ALU_A\(1),
	oe => VCC,
	padio => ww_output_vector(14));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|ALU|sum~0_combout\,
	oe => VCC,
	padio => ww_output_vector(15));
END structure;


