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

-- DATE "04/16/2022 23:30:26"

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
	output_vector : OUT std_logic_vector(15 DOWNTO 0)
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
SIGNAL \add_instance|present_state.s2~regout\ : std_logic;
SIGNAL \add_instance|present_state.s3~regout\ : std_logic;
SIGNAL \add_instance|present_state.s4~regout\ : std_logic;
SIGNAL \add_instance|present_state.s5~regout\ : std_logic;
SIGNAL \add_instance|present_state.s0~regout\ : std_logic;
SIGNAL \add_instance|present_state.s1~regout\ : std_logic;
SIGNAL \add_instance|ALU_B[15]~0_combout\ : std_logic;
SIGNAL \add_instance|T1_in[15]~0_combout\ : std_logic;
SIGNAL \add_instance|WideOr1~0_combout\ : std_logic;
SIGNAL \add_instance|T3_load~combout\ : std_logic;
SIGNAL \add_instance|RF_D3[12]~0_combout\ : std_logic;
SIGNAL \add_instance|RF_D3~1_combout\ : std_logic;
SIGNAL \add_instance|RF_load~combout\ : std_logic;
SIGNAL \add_instance|RF|Mux15~0\ : std_logic;
SIGNAL \add_instance|T1_load~2_combout\ : std_logic;
SIGNAL \add_instance|T1_load~combout\ : std_logic;
SIGNAL \add_instance|next_state.s4~0\ : std_logic;
SIGNAL \add_instance|T2_load~combout\ : std_logic;
SIGNAL \add_instance|Selector4~0\ : std_logic;
SIGNAL \add_instance|ALU|result~0_combout\ : std_logic;
SIGNAL \add_instance|RF|Mux14~0\ : std_logic;
SIGNAL \add_instance|Selector6~0\ : std_logic;
SIGNAL \add_instance|ALU|sum~0_combout\ : std_logic;
SIGNAL \add_instance|Selector7~0\ : std_logic;
SIGNAL \add_instance|RF|Mux13~0\ : std_logic;
SIGNAL \add_instance|ALU|carry~0_combout\ : std_logic;
SIGNAL \add_instance|ALU|sum~1_combout\ : std_logic;
SIGNAL \add_instance|Selector8~0\ : std_logic;
SIGNAL \add_instance|ALU|carry~1_combout\ : std_logic;
SIGNAL \add_instance|ALU|carry~2_combout\ : std_logic;
SIGNAL \add_instance|RF|Mux12~0\ : std_logic;
SIGNAL \add_instance|ALU|sum~2_combout\ : std_logic;
SIGNAL \add_instance|RF|Mux11~0\ : std_logic;
SIGNAL \add_instance|ALU|carry~3_combout\ : std_logic;
SIGNAL \add_instance|Selector9~0\ : std_logic;
SIGNAL \add_instance|ALU|sum~3_combout\ : std_logic;
SIGNAL \add_instance|ALU|carry~5_combout\ : std_logic;
SIGNAL \add_instance|Selector10~0\ : std_logic;
SIGNAL \add_instance|ALU|carry~4_combout\ : std_logic;
SIGNAL \add_instance|RF|Mux10~0\ : std_logic;
SIGNAL \add_instance|ALU|sum~4_combout\ : std_logic;
SIGNAL \add_instance|Selector11~0\ : std_logic;
SIGNAL \add_instance|ALU|carry~6_combout\ : std_logic;
SIGNAL \add_instance|RF|Mux9~0\ : std_logic;
SIGNAL \add_instance|ALU|sum~5_combout\ : std_logic;
SIGNAL \add_instance|ALU|carry~7_combout\ : std_logic;
SIGNAL \add_instance|Selector12~0\ : std_logic;
SIGNAL \add_instance|ALU|carry~8_combout\ : std_logic;
SIGNAL \add_instance|RF|Mux8~0\ : std_logic;
SIGNAL \add_instance|ALU|sum~6_combout\ : std_logic;
SIGNAL \add_instance|Selector13~0\ : std_logic;
SIGNAL \add_instance|ALU|carry~9_combout\ : std_logic;
SIGNAL \add_instance|RF|Mux7~0\ : std_logic;
SIGNAL \add_instance|ALU|sum~7_combout\ : std_logic;
SIGNAL \add_instance|ALU|carry~10_combout\ : std_logic;
SIGNAL \add_instance|Selector14~0\ : std_logic;
SIGNAL \add_instance|RF|Mux6~0\ : std_logic;
SIGNAL \add_instance|ALU|carry~11_combout\ : std_logic;
SIGNAL \add_instance|ALU|sum~8_combout\ : std_logic;
SIGNAL \add_instance|Selector15~0\ : std_logic;
SIGNAL \add_instance|ALU|carry~12_combout\ : std_logic;
SIGNAL \add_instance|RF|Mux5~0\ : std_logic;
SIGNAL \add_instance|ALU|sum~9_combout\ : std_logic;
SIGNAL \add_instance|Selector16~0\ : std_logic;
SIGNAL \add_instance|RF|Mux4~0\ : std_logic;
SIGNAL \add_instance|ALU|carry~14_combout\ : std_logic;
SIGNAL \add_instance|ALU|carry~13_combout\ : std_logic;
SIGNAL \add_instance|ALU|sum~10_combout\ : std_logic;
SIGNAL \add_instance|RF|Mux3~0\ : std_logic;
SIGNAL \add_instance|Selector17~0\ : std_logic;
SIGNAL \add_instance|ALU|carry~15_combout\ : std_logic;
SIGNAL \add_instance|ALU|sum~11_combout\ : std_logic;
SIGNAL \add_instance|Selector18~0\ : std_logic;
SIGNAL \add_instance|RF|Mux2~0\ : std_logic;
SIGNAL \add_instance|ALU|carry~16_combout\ : std_logic;
SIGNAL \add_instance|ALU|carry~17_combout\ : std_logic;
SIGNAL \add_instance|ALU|sum~12_combout\ : std_logic;
SIGNAL \add_instance|RF|Mux1~0\ : std_logic;
SIGNAL \add_instance|Selector19~0\ : std_logic;
SIGNAL \add_instance|ALU|carry~18_combout\ : std_logic;
SIGNAL \add_instance|ALU|sum~13_combout\ : std_logic;
SIGNAL \add_instance|Selector20~0\ : std_logic;
SIGNAL \add_instance|RF|Mux0~0\ : std_logic;
SIGNAL \add_instance|ALU|carry~19_combout\ : std_logic;
SIGNAL \add_instance|ALU|sum~14_combout\ : std_logic;
SIGNAL \add_instance|RF|r7|output\ : std_logic_vector(0 TO 15);
SIGNAL \add_instance|T2|output\ : std_logic_vector(0 TO 15);
SIGNAL \add_instance|RF|r0|output\ : std_logic_vector(0 TO 15);
SIGNAL \input_vector~combout\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \add_instance|ALU_B\ : std_logic_vector(0 TO 15);
SIGNAL \add_instance|T1|output\ : std_logic_vector(0 TO 15);
SIGNAL \add_instance|ALU_A\ : std_logic_vector(0 TO 15);
SIGNAL \add_instance|RF_A1\ : std_logic_vector(0 TO 2);
SIGNAL \add_instance|T2_in\ : std_logic_vector(0 TO 15);
SIGNAL \add_instance|T1_in\ : std_logic_vector(0 TO 15);
SIGNAL \add_instance|RF_D3\ : std_logic_vector(0 TO 15);
SIGNAL \add_instance|RF|demultiplexer|selection_output\ : std_logic_vector(0 TO 7);
SIGNAL \add_instance|RF_A3\ : std_logic_vector(0 TO 2);
SIGNAL \add_instance|T3|output\ : std_logic_vector(0 TO 15);
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

-- Location: LC_X1_Y7_N2
\add_instance|present_state.s3\ : maxv_lcell
-- Equation(s):
-- \add_instance|present_state.s3~regout\ = DFFEAS(((\add_instance|present_state.s2~regout\ & ((!\input_vector~combout\(0))))), GLOBAL(\input_vector~combout\(1)), VCC, , , , , , )

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
	regout => \add_instance|present_state.s3~regout\);

-- Location: LC_X1_Y7_N1
\add_instance|present_state.s4\ : maxv_lcell
-- Equation(s):
-- \add_instance|next_state.s4~0\ = ((\add_instance|present_state.s3~regout\ & ((!\input_vector~combout\(0)))))
-- \add_instance|present_state.s4~regout\ = DFFEAS(\add_instance|next_state.s4~0\, GLOBAL(\input_vector~combout\(1)), VCC, , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00cc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(1),
	datab => \add_instance|present_state.s3~regout\,
	datad => \input_vector~combout\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|next_state.s4~0\,
	regout => \add_instance|present_state.s4~regout\);

-- Location: LC_X1_Y7_N4
\add_instance|present_state.s5\ : maxv_lcell
-- Equation(s):
-- \add_instance|present_state.s5~regout\ = DFFEAS(((\add_instance|present_state.s4~regout\ & ((!\input_vector~combout\(0))))), GLOBAL(\input_vector~combout\(1)), VCC, , , , , , )

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
	datab => \add_instance|present_state.s4~regout\,
	datad => \input_vector~combout\(0),
	aclr => GND,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|present_state.s5~regout\);

-- Location: LC_X1_Y7_N0
\add_instance|present_state.s0\ : maxv_lcell
-- Equation(s):
-- \add_instance|present_state.s0~regout\ = DFFEAS((((!\add_instance|present_state.s5~regout\ & !\input_vector~combout\(0)))), GLOBAL(\input_vector~combout\(1)), VCC, , , , , , )

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
	datac => \add_instance|present_state.s5~regout\,
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

-- Location: LC_X12_Y3_N2
\add_instance|ALU_B[15]~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_B[15]~0_combout\ = ((\input_vector~combout\(0)) # ((!\add_instance|present_state.s1~regout\ & !\add_instance|present_state.s4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff03",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|present_state.s1~regout\,
	datac => \add_instance|present_state.s4~regout\,
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_B[15]~0_combout\);

-- Location: LC_X1_Y10_N5
\add_instance|T1_in[15]~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|T1_in[15]~0_combout\ = ((!\input_vector~combout\(0) & ((\add_instance|present_state.s3~regout\) # (!\add_instance|present_state.s0~regout\))))

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
	datac => \add_instance|present_state.s3~regout\,
	datad => \add_instance|present_state.s0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T1_in[15]~0_combout\);

-- Location: LC_X2_Y10_N0
\add_instance|RF_A1[1]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF_A1\(1) = ((\add_instance|T1_in[15]~0_combout\ & ((!\add_instance|present_state.s3~regout\))) # (!\add_instance|T1_in[15]~0_combout\ & (\add_instance|RF_A1\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0fcc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|RF_A1\(1),
	datac => \add_instance|present_state.s3~regout\,
	datad => \add_instance|T1_in[15]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF_A1\(1));

-- Location: LC_X1_Y7_N8
\add_instance|WideOr1~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|WideOr1~0_combout\ = (((\add_instance|present_state.s1~regout\) # (\add_instance|present_state.s4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|present_state.s1~regout\,
	datad => \add_instance|present_state.s4~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|WideOr1~0_combout\);

-- Location: LC_X1_Y7_N3
\add_instance|T3_load\ : maxv_lcell
-- Equation(s):
-- \add_instance|T3_load~combout\ = ((GLOBAL(\input_vector~combout\(0)) & (\add_instance|T3_load~combout\)) # (!GLOBAL(\input_vector~combout\(0)) & ((\add_instance|WideOr1~0_combout\))))

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
	datac => \add_instance|T3_load~combout\,
	datad => \add_instance|WideOr1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T3_load~combout\);

-- Location: LC_X3_Y10_N3
\add_instance|T3|output[15]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T3_in\(15) = ((GLOBAL(\add_instance|ALU_B[15]~0_combout\) & ((\add_instance|T3_in\(15)))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (\add_instance|ALU|result~0_combout\)))
-- \add_instance|T3|output\(15) = DFFEAS(\add_instance|T3_in\(15), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|T3_load~combout\, , , , )

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
	datab => \add_instance|ALU|result~0_combout\,
	datac => \add_instance|ALU_B[15]~0_combout\,
	datad => \add_instance|T3_in\(15),
	aclr => GND,
	ena => \add_instance|T3_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T3_in\(15),
	regout => \add_instance|T3|output\(15));

-- Location: LC_X10_Y7_N2
\add_instance|RF_D3[12]~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF_D3[12]~0_combout\ = ((!\input_vector~combout\(0) & ((\add_instance|present_state.s2~regout\) # (\add_instance|present_state.s5~regout\))))

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
	datab => \add_instance|present_state.s2~regout\,
	datac => \add_instance|present_state.s5~regout\,
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF_D3[12]~0_combout\);

-- Location: LC_X1_Y7_N7
\add_instance|RF_D3~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF_D3~1_combout\ = (((\add_instance|present_state.s5~regout\) # (\add_instance|present_state.s2~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fff0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|present_state.s5~regout\,
	datad => \add_instance|present_state.s2~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF_D3~1_combout\);

-- Location: LC_X1_Y7_N5
\add_instance|RF_load\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF_load~combout\ = ((GLOBAL(\input_vector~combout\(0)) & (\add_instance|RF_load~combout\)) # (!GLOBAL(\input_vector~combout\(0)) & ((\add_instance|RF_D3~1_combout\))))

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
	dataa => \add_instance|RF_load~combout\,
	datac => \add_instance|RF_D3~1_combout\,
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF_load~combout\);

-- Location: LC_X2_Y6_N2
\add_instance|RF_A3[0]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF_A3\(0) = ((GLOBAL(\add_instance|RF_D3[12]~0_combout\) & (!\add_instance|present_state.s5~regout\)) # (!GLOBAL(\add_instance|RF_D3[12]~0_combout\) & ((\add_instance|RF_A3\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "33f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|present_state.s5~regout\,
	datac => \add_instance|RF_A3\(0),
	datad => \add_instance|RF_D3[12]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF_A3\(0));

-- Location: LC_X2_Y6_N5
\add_instance|RF|demultiplexer|selection_output[0]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF|demultiplexer|selection_output\(0) = ((\add_instance|RF_load~combout\ & ((!\add_instance|RF_A3\(0)))) # (!\add_instance|RF_load~combout\ & (\add_instance|RF|demultiplexer|selection_output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0afa",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|RF|demultiplexer|selection_output\(0),
	datac => \add_instance|RF_load~combout\,
	datad => \add_instance|RF_A3\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF|demultiplexer|selection_output\(0));

-- Location: LC_X3_Y10_N6
\add_instance|RF|r0|output[15]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF_D3\(15) = ((GLOBAL(\add_instance|RF_D3[12]~0_combout\) & (\add_instance|T3|output\(15))) # (!GLOBAL(\add_instance|RF_D3[12]~0_combout\) & ((\add_instance|RF_D3\(15)))))
-- \add_instance|RF|r0|output\(15) = DFFEAS(\add_instance|RF_D3\(15), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|RF|demultiplexer|selection_output\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	dataa => \add_instance|T3|output\(15),
	datac => \add_instance|RF_D3\(15),
	datad => \add_instance|RF_D3[12]~0_combout\,
	aclr => GND,
	ena => \add_instance|RF|demultiplexer|selection_output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF_D3\(15),
	regout => \add_instance|RF|r0|output\(15));

-- Location: LC_X3_Y6_N4
\add_instance|RF|demultiplexer|selection_output[7]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF|demultiplexer|selection_output\(7) = (\add_instance|RF_load~combout\ & (((\add_instance|RF_A3\(0))))) # (!\add_instance|RF_load~combout\ & (((\add_instance|RF|demultiplexer|selection_output\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|RF_load~combout\,
	datac => \add_instance|RF|demultiplexer|selection_output\(7),
	datad => \add_instance|RF_A3\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF|demultiplexer|selection_output\(7));

-- Location: LC_X4_Y10_N0
\add_instance|RF|r7|output[15]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF|Mux15~0\ = (\add_instance|RF_A1\(1) & (((E12_output[15])))) # (!\add_instance|RF_A1\(1) & (\add_instance|RF|r0|output\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	dataa => \add_instance|RF_A1\(1),
	datab => \add_instance|RF|r0|output\(15),
	datac => \add_instance|RF_D3\(15),
	aclr => GND,
	sload => VCC,
	ena => \add_instance|RF|demultiplexer|selection_output\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF|Mux15~0\,
	regout => \add_instance|RF|r7|output\(15));

-- Location: LC_X2_Y10_N5
\add_instance|T1_load~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|T1_load~2_combout\ = (((\add_instance|present_state.s3~regout\) # (!\add_instance|present_state.s0~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|present_state.s3~regout\,
	datad => \add_instance|present_state.s0~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T1_load~2_combout\);

-- Location: LC_X2_Y10_N6
\add_instance|T1_load\ : maxv_lcell
-- Equation(s):
-- \add_instance|T1_load~combout\ = ((GLOBAL(\input_vector~combout\(0)) & (\add_instance|T1_load~combout\)) # (!GLOBAL(\input_vector~combout\(0)) & ((\add_instance|T1_load~2_combout\))))

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
	datad => \add_instance|T1_load~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T1_load~combout\);

-- Location: LC_X4_Y10_N8
\add_instance|T1|output[15]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T1_in\(15) = ((\add_instance|T1_in[15]~0_combout\ & (\add_instance|RF|Mux15~0\)) # (!\add_instance|T1_in[15]~0_combout\ & ((\add_instance|T1_in\(15)))))
-- \add_instance|T1|output\(15) = DFFEAS(\add_instance|T1_in\(15), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|T1_load~combout\, , , , )

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
	datac => \add_instance|RF|Mux15~0\,
	datad => \add_instance|T1_in\(15),
	aclr => GND,
	ena => \add_instance|T1_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T1_in\(15),
	regout => \add_instance|T1|output\(15));

-- Location: LC_X4_Y10_N9
\add_instance|ALU_A[15]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_A\(15) = ((GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (\add_instance|ALU_A\(15))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & ((\add_instance|T1|output\(15)))))

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
	datab => \add_instance|ALU_A\(15),
	datac => \add_instance|ALU_B[15]~0_combout\,
	datad => \add_instance|T1|output\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_A\(15));

-- Location: LC_X4_Y8_N5
\add_instance|T2_in[15]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T2_in\(15) = ((\add_instance|next_state.s4~0\ & ((\add_instance|RF|r0|output\(15)))) # (!\add_instance|next_state.s4~0\ & (\add_instance|T2_in\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|next_state.s4~0\,
	datac => \add_instance|T2_in\(15),
	datad => \add_instance|RF|r0|output\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T2_in\(15));

-- Location: LC_X5_Y7_N4
\add_instance|T2_load\ : maxv_lcell
-- Equation(s):
-- \add_instance|T2_load~combout\ = ((GLOBAL(\input_vector~combout\(0)) & (\add_instance|T2_load~combout\)) # (!GLOBAL(\input_vector~combout\(0)) & ((\add_instance|present_state.s3~regout\))))

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
	dataa => \add_instance|T2_load~combout\,
	datac => \add_instance|present_state.s3~regout\,
	datad => \input_vector~combout\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T2_load~combout\);

-- Location: LC_X4_Y8_N1
\add_instance|T2|output[15]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector4~0\ = (((E2_output[15] & \add_instance|present_state.s4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datac => \add_instance|T2_in\(15),
	datad => \add_instance|present_state.s4~regout\,
	aclr => GND,
	sload => VCC,
	ena => \add_instance|T2_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector4~0\,
	regout => \add_instance|T2|output\(15));

-- Location: LC_X4_Y8_N6
\add_instance|ALU_B[15]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_B\(15) = (GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|ALU_B\(15))))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|Selector4~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU_B[15]~0_combout\,
	datac => \add_instance|ALU_B\(15),
	datad => \add_instance|Selector4~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_B\(15));

-- Location: LC_X4_Y9_N4
\add_instance|ALU|result~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU|result~0_combout\ = (\add_instance|ALU_A\(15) $ (((\add_instance|ALU_B\(15)))))

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
	datab => \add_instance|ALU_A\(15),
	datad => \add_instance|ALU_B\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU|result~0_combout\);

-- Location: LC_X3_Y10_N2
\add_instance|T3|output[14]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T3_in\(14) = ((GLOBAL(\add_instance|ALU_B[15]~0_combout\) & ((\add_instance|T3_in\(14)))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (\add_instance|ALU|sum~0_combout\)))
-- \add_instance|T3|output\(14) = DFFEAS(\add_instance|T3_in\(14), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|T3_load~combout\, , , , )

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
	datab => \add_instance|ALU|sum~0_combout\,
	datac => \add_instance|ALU_B[15]~0_combout\,
	datad => \add_instance|T3_in\(14),
	aclr => GND,
	ena => \add_instance|T3_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T3_in\(14),
	regout => \add_instance|T3|output\(14));

-- Location: LC_X3_Y10_N5
\add_instance|RF|r0|output[14]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF_D3\(14) = ((GLOBAL(\add_instance|RF_D3[12]~0_combout\) & (\add_instance|T3|output\(14))) # (!GLOBAL(\add_instance|RF_D3[12]~0_combout\) & ((\add_instance|RF_D3\(14)))))
-- \add_instance|RF|r0|output\(14) = DFFEAS(\add_instance|RF_D3\(14), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|RF|demultiplexer|selection_output\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	dataa => \add_instance|T3|output\(14),
	datac => \add_instance|RF_D3\(14),
	datad => \add_instance|RF_D3[12]~0_combout\,
	aclr => GND,
	ena => \add_instance|RF|demultiplexer|selection_output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF_D3\(14),
	regout => \add_instance|RF|r0|output\(14));

-- Location: LC_X3_Y6_N9
\add_instance|RF|r7|output[14]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF|Mux14~0\ = ((\add_instance|RF_A1\(1) & (E12_output[14])) # (!\add_instance|RF_A1\(1) & ((\add_instance|RF|r0|output\(14)))))

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
	combout => \add_instance|RF|Mux14~0\,
	regout => \add_instance|RF|r7|output\(14));

-- Location: LC_X3_Y6_N3
\add_instance|T1|output[14]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T1_in\(14) = (\add_instance|T1_in[15]~0_combout\ & (((\add_instance|RF|Mux14~0\)))) # (!\add_instance|T1_in[15]~0_combout\ & (((\add_instance|T1_in\(14)))))
-- \add_instance|T1|output\(14) = DFFEAS(\add_instance|T1_in\(14), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|T1_load~combout\, , , , )

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
	datac => \add_instance|T1_in\(14),
	datad => \add_instance|RF|Mux14~0\,
	aclr => GND,
	ena => \add_instance|T1_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T1_in\(14),
	regout => \add_instance|T1|output\(14));

-- Location: LC_X3_Y6_N2
\add_instance|ALU_A[14]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_A\(14) = ((GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (\add_instance|ALU_A\(14))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & ((\add_instance|T1|output\(14)))))

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
	datab => \add_instance|ALU_A\(14),
	datac => \add_instance|ALU_B[15]~0_combout\,
	datad => \add_instance|T1|output\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_A\(14));

-- Location: LC_X4_Y8_N7
\add_instance|T2_in[14]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T2_in\(14) = (\add_instance|next_state.s4~0\ & (((\add_instance|RF|r0|output\(14))))) # (!\add_instance|next_state.s4~0\ & (\add_instance|T2_in\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|next_state.s4~0\,
	datab => \add_instance|T2_in\(14),
	datad => \add_instance|RF|r0|output\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T2_in\(14));

-- Location: LC_X4_Y8_N8
\add_instance|T2|output[14]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector6~0\ = (((E2_output[14] & \add_instance|present_state.s4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datac => \add_instance|T2_in\(14),
	datad => \add_instance|present_state.s4~regout\,
	aclr => GND,
	sload => VCC,
	ena => \add_instance|T2_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector6~0\,
	regout => \add_instance|T2|output\(14));

-- Location: LC_X4_Y8_N4
\add_instance|ALU_B[14]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_B\(14) = (GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|ALU_B\(14))))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|Selector6~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU_B[15]~0_combout\,
	datac => \add_instance|ALU_B\(14),
	datad => \add_instance|Selector6~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_B\(14));

-- Location: LC_X4_Y8_N9
\add_instance|ALU|sum~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU|sum~0_combout\ = \add_instance|ALU_A\(14) $ (\add_instance|ALU_B\(14) $ (((\add_instance|ALU_B\(15) & \add_instance|ALU_A\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "8778",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU_B\(15),
	datab => \add_instance|ALU_A\(15),
	datac => \add_instance|ALU_A\(14),
	datad => \add_instance|ALU_B\(14),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU|sum~0_combout\);

-- Location: LC_X3_Y10_N8
\add_instance|T3|output[13]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T3_in\(13) = ((GLOBAL(\add_instance|ALU_B[15]~0_combout\) & ((\add_instance|T3_in\(13)))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (\add_instance|ALU|sum~1_combout\)))
-- \add_instance|T3|output\(13) = DFFEAS(\add_instance|T3_in\(13), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|T3_load~combout\, , , , )

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
	datab => \add_instance|ALU|sum~1_combout\,
	datac => \add_instance|ALU_B[15]~0_combout\,
	datad => \add_instance|T3_in\(13),
	aclr => GND,
	ena => \add_instance|T3_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T3_in\(13),
	regout => \add_instance|T3|output\(13));

-- Location: LC_X3_Y10_N0
\add_instance|RF|r0|output[13]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF_D3\(13) = ((GLOBAL(\add_instance|RF_D3[12]~0_combout\) & (\add_instance|T3|output\(13))) # (!GLOBAL(\add_instance|RF_D3[12]~0_combout\) & ((\add_instance|RF_D3\(13)))))
-- \add_instance|RF|r0|output\(13) = DFFEAS(\add_instance|RF_D3\(13), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|RF|demultiplexer|selection_output\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	dataa => \add_instance|T3|output\(13),
	datac => \add_instance|RF_D3\(13),
	datad => \add_instance|RF_D3[12]~0_combout\,
	aclr => GND,
	ena => \add_instance|RF|demultiplexer|selection_output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF_D3\(13),
	regout => \add_instance|RF|r0|output\(13));

-- Location: LC_X4_Y7_N5
\add_instance|T2_in[13]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T2_in\(13) = (\add_instance|next_state.s4~0\ & (((\add_instance|RF|r0|output\(13))))) # (!\add_instance|next_state.s4~0\ & (((\add_instance|T2_in\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|next_state.s4~0\,
	datac => \add_instance|T2_in\(13),
	datad => \add_instance|RF|r0|output\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T2_in\(13));

-- Location: LC_X4_Y7_N3
\add_instance|T2|output[13]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector7~0\ = (((E2_output[13] & \add_instance|present_state.s4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datac => \add_instance|T2_in\(13),
	datad => \add_instance|present_state.s4~regout\,
	aclr => GND,
	sload => VCC,
	ena => \add_instance|T2_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector7~0\,
	regout => \add_instance|T2|output\(13));

-- Location: LC_X4_Y7_N4
\add_instance|ALU_B[13]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_B\(13) = ((GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (\add_instance|ALU_B\(13))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & ((\add_instance|Selector7~0\))))

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
	dataa => \add_instance|ALU_B\(13),
	datac => \add_instance|ALU_B[15]~0_combout\,
	datad => \add_instance|Selector7~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_B\(13));

-- Location: LC_X4_Y10_N5
\add_instance|RF|r7|output[13]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF|Mux13~0\ = (\add_instance|RF_A1\(1) & (((E12_output[13])))) # (!\add_instance|RF_A1\(1) & (((\add_instance|RF|r0|output\(13)))))

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
	datac => \add_instance|RF_D3\(13),
	datad => \add_instance|RF|r0|output\(13),
	aclr => GND,
	sload => VCC,
	ena => \add_instance|RF|demultiplexer|selection_output\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF|Mux13~0\,
	regout => \add_instance|RF|r7|output\(13));

-- Location: LC_X4_Y10_N1
\add_instance|T1|output[13]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T1_in\(13) = ((\add_instance|T1_in[15]~0_combout\ & (\add_instance|RF|Mux13~0\)) # (!\add_instance|T1_in[15]~0_combout\ & ((\add_instance|T1_in\(13)))))
-- \add_instance|T1|output\(13) = DFFEAS(\add_instance|T1_in\(13), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|T1_load~combout\, , , , )

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
	datac => \add_instance|RF|Mux13~0\,
	datad => \add_instance|T1_in\(13),
	aclr => GND,
	ena => \add_instance|T1_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T1_in\(13),
	regout => \add_instance|T1|output\(13));

-- Location: LC_X3_Y10_N7
\add_instance|ALU_A[13]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_A\(13) = (GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|ALU_A\(13))))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|T1|output\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU_B[15]~0_combout\,
	datac => \add_instance|ALU_A\(13),
	datad => \add_instance|T1|output\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_A\(13));

-- Location: LC_X3_Y8_N9
\add_instance|ALU|carry~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU|carry~0_combout\ = (\add_instance|ALU_B\(14) & ((\add_instance|ALU_A\(14)) # ((\add_instance|ALU_B\(15) & \add_instance|ALU_A\(15))))) # (!\add_instance|ALU_B\(14) & (\add_instance|ALU_B\(15) & (\add_instance|ALU_A\(14) & 
-- \add_instance|ALU_A\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e8c0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU_B\(15),
	datab => \add_instance|ALU_B\(14),
	datac => \add_instance|ALU_A\(14),
	datad => \add_instance|ALU_A\(15),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU|carry~0_combout\);

-- Location: LC_X3_Y10_N1
\add_instance|ALU|sum~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU|sum~1_combout\ = \add_instance|ALU_B\(13) $ (((\add_instance|ALU_A\(13) $ (\add_instance|ALU|carry~0_combout\))))

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
	dataa => \add_instance|ALU_B\(13),
	datac => \add_instance|ALU_A\(13),
	datad => \add_instance|ALU|carry~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU|sum~1_combout\);

-- Location: LC_X3_Y7_N7
\add_instance|T3|output[12]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T3_in\(12) = ((GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (\add_instance|T3_in\(12))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & ((\add_instance|ALU|sum~2_combout\))))
-- \add_instance|T3|output\(12) = DFFEAS(\add_instance|T3_in\(12), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|T3_load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|T3_in\(12),
	datac => \add_instance|ALU_B[15]~0_combout\,
	datad => \add_instance|ALU|sum~2_combout\,
	aclr => GND,
	ena => \add_instance|T3_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T3_in\(12),
	regout => \add_instance|T3|output\(12));

-- Location: LC_X3_Y7_N0
\add_instance|RF|r0|output[12]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF_D3\(12) = ((GLOBAL(\add_instance|RF_D3[12]~0_combout\) & ((\add_instance|T3|output\(12)))) # (!GLOBAL(\add_instance|RF_D3[12]~0_combout\) & (\add_instance|RF_D3\(12))))
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
	datac => \add_instance|T3|output\(12),
	datad => \add_instance|RF_D3[12]~0_combout\,
	aclr => GND,
	ena => \add_instance|RF|demultiplexer|selection_output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF_D3\(12),
	regout => \add_instance|RF|r0|output\(12));

-- Location: LC_X3_Y7_N2
\add_instance|T2_in[12]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T2_in\(12) = ((\add_instance|next_state.s4~0\ & (\add_instance|RF|r0|output\(12))) # (!\add_instance|next_state.s4~0\ & ((\add_instance|T2_in\(12)))))

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
	datab => \add_instance|next_state.s4~0\,
	datac => \add_instance|RF|r0|output\(12),
	datad => \add_instance|T2_in\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T2_in\(12));

-- Location: LC_X2_Y7_N8
\add_instance|T2|output[12]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector8~0\ = (((E2_output[12] & \add_instance|present_state.s4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datac => \add_instance|T2_in\(12),
	datad => \add_instance|present_state.s4~regout\,
	aclr => GND,
	sload => VCC,
	ena => \add_instance|T2_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector8~0\,
	regout => \add_instance|T2|output\(12));

-- Location: LC_X2_Y7_N0
\add_instance|ALU_B[12]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_B\(12) = (GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|ALU_B\(12))))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|Selector8~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU_B[15]~0_combout\,
	datac => \add_instance|ALU_B\(12),
	datad => \add_instance|Selector8~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_B\(12));

-- Location: LC_X3_Y8_N0
\add_instance|ALU|carry~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU|carry~1_combout\ = (((\add_instance|ALU_B\(13) & \add_instance|ALU_A\(13))))

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
	datac => \add_instance|ALU_B\(13),
	datad => \add_instance|ALU_A\(13),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU|carry~1_combout\);

-- Location: LC_X3_Y8_N1
\add_instance|ALU|carry~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU|carry~2_combout\ = ((\add_instance|ALU|carry~0_combout\ & ((\add_instance|ALU_A\(13)) # (\add_instance|ALU_B\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|ALU_A\(13),
	datac => \add_instance|ALU_B\(13),
	datad => \add_instance|ALU|carry~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU|carry~2_combout\);

-- Location: LC_X4_Y10_N6
\add_instance|RF|r7|output[12]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF|Mux12~0\ = (\add_instance|RF_A1\(1) & (((E12_output[12])))) # (!\add_instance|RF_A1\(1) & (((\add_instance|RF|r0|output\(12)))))

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
	datac => \add_instance|RF_D3\(12),
	datad => \add_instance|RF|r0|output\(12),
	aclr => GND,
	sload => VCC,
	ena => \add_instance|RF|demultiplexer|selection_output\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF|Mux12~0\,
	regout => \add_instance|RF|r7|output\(12));

-- Location: LC_X4_Y10_N7
\add_instance|T1|output[12]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T1_in\(12) = ((\add_instance|T1_in[15]~0_combout\ & ((\add_instance|RF|Mux12~0\))) # (!\add_instance|T1_in[15]~0_combout\ & (\add_instance|T1_in\(12))))
-- \add_instance|T1|output\(12) = DFFEAS(\add_instance|T1_in\(12), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|T1_load~combout\, , , , )

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
	datac => \add_instance|T1_in\(12),
	datad => \add_instance|RF|Mux12~0\,
	aclr => GND,
	ena => \add_instance|T1_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T1_in\(12),
	regout => \add_instance|T1|output\(12));

-- Location: LC_X4_Y9_N9
\add_instance|ALU_A[12]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_A\(12) = (GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (\add_instance|ALU_A\(12))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|T1|output\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU_B[15]~0_combout\,
	datab => \add_instance|ALU_A\(12),
	datad => \add_instance|T1|output\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_A\(12));

-- Location: LC_X3_Y7_N9
\add_instance|ALU|sum~2\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU|sum~2_combout\ = \add_instance|ALU_B\(12) $ (\add_instance|ALU_A\(12) $ (((\add_instance|ALU|carry~1_combout\) # (\add_instance|ALU|carry~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "a956",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU_B\(12),
	datab => \add_instance|ALU|carry~1_combout\,
	datac => \add_instance|ALU|carry~2_combout\,
	datad => \add_instance|ALU_A\(12),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU|sum~2_combout\);

-- Location: LC_X2_Y6_N3
\add_instance|T3|output[11]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T3_in\(11) = ((GLOBAL(\add_instance|ALU_B[15]~0_combout\) & ((\add_instance|T3_in\(11)))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (\add_instance|ALU|sum~3_combout\)))
-- \add_instance|T3|output\(11) = DFFEAS(\add_instance|T3_in\(11), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|T3_load~combout\, , , , )

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
	datab => \add_instance|ALU|sum~3_combout\,
	datac => \add_instance|ALU_B[15]~0_combout\,
	datad => \add_instance|T3_in\(11),
	aclr => GND,
	ena => \add_instance|T3_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T3_in\(11),
	regout => \add_instance|T3|output\(11));

-- Location: LC_X2_Y6_N0
\add_instance|RF|r0|output[11]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF_D3\(11) = ((GLOBAL(\add_instance|RF_D3[12]~0_combout\) & (\add_instance|T3|output\(11))) # (!GLOBAL(\add_instance|RF_D3[12]~0_combout\) & ((\add_instance|RF_D3\(11)))))
-- \add_instance|RF|r0|output\(11) = DFFEAS(\add_instance|RF_D3\(11), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|RF|demultiplexer|selection_output\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	dataa => \add_instance|T3|output\(11),
	datac => \add_instance|RF_D3\(11),
	datad => \add_instance|RF_D3[12]~0_combout\,
	aclr => GND,
	ena => \add_instance|RF|demultiplexer|selection_output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF_D3\(11),
	regout => \add_instance|RF|r0|output\(11));

-- Location: LC_X2_Y9_N3
\add_instance|RF|r7|output[11]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF|Mux11~0\ = (\add_instance|RF_A1\(1) & (((E12_output[11])))) # (!\add_instance|RF_A1\(1) & (((\add_instance|RF|r0|output\(11)))))

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
	combout => \add_instance|RF|Mux11~0\,
	regout => \add_instance|RF|r7|output\(11));

-- Location: LC_X2_Y9_N4
\add_instance|T1|output[11]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T1_in\(11) = ((\add_instance|T1_in[15]~0_combout\ & ((\add_instance|RF|Mux11~0\))) # (!\add_instance|T1_in[15]~0_combout\ & (\add_instance|T1_in\(11))))
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
	datad => \add_instance|RF|Mux11~0\,
	aclr => GND,
	ena => \add_instance|T1_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T1_in\(11),
	regout => \add_instance|T1|output\(11));

-- Location: LC_X3_Y9_N7
\add_instance|ALU_A[11]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_A\(11) = (GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|ALU_A\(11))))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|T1|output\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU_B[15]~0_combout\,
	datac => \add_instance|ALU_A\(11),
	datad => \add_instance|T1|output\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_A\(11));

-- Location: LC_X3_Y8_N2
\add_instance|ALU|carry~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU|carry~3_combout\ = (\add_instance|ALU_B\(12) & ((\add_instance|ALU_A\(12)) # ((\add_instance|ALU|carry~1_combout\) # (\add_instance|ALU|carry~2_combout\)))) # (!\add_instance|ALU_B\(12) & (\add_instance|ALU_A\(12) & 
-- ((\add_instance|ALU|carry~1_combout\) # (\add_instance|ALU|carry~2_combout\))))

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
	dataa => \add_instance|ALU_B\(12),
	datab => \add_instance|ALU_A\(12),
	datac => \add_instance|ALU|carry~1_combout\,
	datad => \add_instance|ALU|carry~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU|carry~3_combout\);

-- Location: LC_X4_Y7_N0
\add_instance|T2_in[11]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T2_in\(11) = (\add_instance|next_state.s4~0\ & (((\add_instance|RF|r0|output\(11))))) # (!\add_instance|next_state.s4~0\ & (((\add_instance|T2_in\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|next_state.s4~0\,
	datac => \add_instance|T2_in\(11),
	datad => \add_instance|RF|r0|output\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T2_in\(11));

-- Location: LC_X4_Y7_N2
\add_instance|T2|output[11]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector9~0\ = (((E2_output[11] & \add_instance|present_state.s4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datac => \add_instance|T2_in\(11),
	datad => \add_instance|present_state.s4~regout\,
	aclr => GND,
	sload => VCC,
	ena => \add_instance|T2_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector9~0\,
	regout => \add_instance|T2|output\(11));

-- Location: LC_X4_Y7_N7
\add_instance|ALU_B[11]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_B\(11) = ((GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (\add_instance|ALU_B\(11))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & ((\add_instance|Selector9~0\))))

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
	datab => \add_instance|ALU_B\(11),
	datac => \add_instance|ALU_B[15]~0_combout\,
	datad => \add_instance|Selector9~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_B\(11));

-- Location: LC_X3_Y9_N1
\add_instance|ALU|sum~3\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU|sum~3_combout\ = (\add_instance|ALU_A\(11) $ (\add_instance|ALU|carry~3_combout\ $ (\add_instance|ALU_B\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|ALU_A\(11),
	datac => \add_instance|ALU|carry~3_combout\,
	datad => \add_instance|ALU_B\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU|sum~3_combout\);

-- Location: LC_X3_Y8_N3
\add_instance|ALU|carry~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU|carry~5_combout\ = ((\add_instance|ALU|carry~3_combout\ & ((\add_instance|ALU_A\(11)) # (\add_instance|ALU_B\(11)))))

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
	dataa => \add_instance|ALU_A\(11),
	datab => \add_instance|ALU_B\(11),
	datad => \add_instance|ALU|carry~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU|carry~5_combout\);

-- Location: LC_X3_Y10_N9
\add_instance|T3|output[10]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T3_in\(10) = ((GLOBAL(\add_instance|ALU_B[15]~0_combout\) & ((\add_instance|T3_in\(10)))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (\add_instance|ALU|sum~4_combout\)))
-- \add_instance|T3|output\(10) = DFFEAS(\add_instance|T3_in\(10), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|T3_load~combout\, , , , )

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
	datab => \add_instance|ALU|sum~4_combout\,
	datac => \add_instance|ALU_B[15]~0_combout\,
	datad => \add_instance|T3_in\(10),
	aclr => GND,
	ena => \add_instance|T3_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T3_in\(10),
	regout => \add_instance|T3|output\(10));

-- Location: LC_X3_Y10_N4
\add_instance|RF|r0|output[10]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF_D3\(10) = ((GLOBAL(\add_instance|RF_D3[12]~0_combout\) & (\add_instance|T3|output\(10))) # (!GLOBAL(\add_instance|RF_D3[12]~0_combout\) & ((\add_instance|RF_D3\(10)))))
-- \add_instance|RF|r0|output\(10) = DFFEAS(\add_instance|RF_D3\(10), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|RF|demultiplexer|selection_output\(0), , , , )

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
	datab => \add_instance|T3|output\(10),
	datac => \add_instance|RF_D3\(10),
	datad => \add_instance|RF_D3[12]~0_combout\,
	aclr => GND,
	ena => \add_instance|RF|demultiplexer|selection_output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF_D3\(10),
	regout => \add_instance|RF|r0|output\(10));

-- Location: LC_X5_Y7_N0
\add_instance|T2_in[10]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T2_in\(10) = ((\add_instance|next_state.s4~0\ & ((\add_instance|RF|r0|output\(10)))) # (!\add_instance|next_state.s4~0\ & (\add_instance|T2_in\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|next_state.s4~0\,
	datac => \add_instance|T2_in\(10),
	datad => \add_instance|RF|r0|output\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T2_in\(10));

-- Location: LC_X5_Y7_N7
\add_instance|T2|output[10]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector10~0\ = (((E2_output[10] & \add_instance|present_state.s4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datac => \add_instance|T2_in\(10),
	datad => \add_instance|present_state.s4~regout\,
	aclr => GND,
	sload => VCC,
	ena => \add_instance|T2_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector10~0\,
	regout => \add_instance|T2|output\(10));

-- Location: LC_X5_Y7_N1
\add_instance|ALU_B[10]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_B\(10) = (GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|ALU_B\(10))))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|Selector10~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU_B[15]~0_combout\,
	datac => \add_instance|Selector10~0\,
	datad => \add_instance|ALU_B\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_B\(10));

-- Location: LC_X3_Y9_N5
\add_instance|ALU|carry~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU|carry~4_combout\ = (((\add_instance|ALU_A\(11) & \add_instance|ALU_B\(11))))

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
	datac => \add_instance|ALU_A\(11),
	datad => \add_instance|ALU_B\(11),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU|carry~4_combout\);

-- Location: LC_X2_Y10_N1
\add_instance|RF|r7|output[10]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF|Mux10~0\ = ((\add_instance|RF_A1\(1) & (E12_output[10])) # (!\add_instance|RF_A1\(1) & ((\add_instance|RF|r0|output\(10)))))

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
	datac => \add_instance|RF_D3\(10),
	datad => \add_instance|RF|r0|output\(10),
	aclr => GND,
	sload => VCC,
	ena => \add_instance|RF|demultiplexer|selection_output\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF|Mux10~0\,
	regout => \add_instance|RF|r7|output\(10));

-- Location: LC_X2_Y10_N7
\add_instance|T1|output[10]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T1_in\(10) = ((\add_instance|T1_in[15]~0_combout\ & ((\add_instance|RF|Mux10~0\))) # (!\add_instance|T1_in[15]~0_combout\ & (\add_instance|T1_in\(10))))
-- \add_instance|T1|output\(10) = DFFEAS(\add_instance|T1_in\(10), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|T1_load~combout\, , , , )

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
	datab => \add_instance|T1_in\(10),
	datac => \add_instance|T1_in[15]~0_combout\,
	datad => \add_instance|RF|Mux10~0\,
	aclr => GND,
	ena => \add_instance|T1_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T1_in\(10),
	regout => \add_instance|T1|output\(10));

-- Location: LC_X2_Y10_N4
\add_instance|ALU_A[10]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_A\(10) = (GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|ALU_A\(10))))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|T1|output\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU_B[15]~0_combout\,
	datac => \add_instance|ALU_A\(10),
	datad => \add_instance|T1|output\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_A\(10));

-- Location: LC_X3_Y9_N2
\add_instance|ALU|sum~4\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU|sum~4_combout\ = \add_instance|ALU_B\(10) $ (\add_instance|ALU_A\(10) $ (((\add_instance|ALU|carry~5_combout\) # (\add_instance|ALU|carry~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c936",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU|carry~5_combout\,
	datab => \add_instance|ALU_B\(10),
	datac => \add_instance|ALU|carry~4_combout\,
	datad => \add_instance|ALU_A\(10),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU|sum~4_combout\);

-- Location: LC_X1_Y9_N8
\add_instance|T3|output[9]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T3_in\(9) = ((GLOBAL(\add_instance|ALU_B[15]~0_combout\) & ((\add_instance|T3_in\(9)))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (\add_instance|ALU|sum~5_combout\)))
-- \add_instance|T3|output\(9) = DFFEAS(\add_instance|T3_in\(9), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|T3_load~combout\, , , , )

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
	datab => \add_instance|ALU|sum~5_combout\,
	datac => \add_instance|ALU_B[15]~0_combout\,
	datad => \add_instance|T3_in\(9),
	aclr => GND,
	ena => \add_instance|T3_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T3_in\(9),
	regout => \add_instance|T3|output\(9));

-- Location: LC_X1_Y9_N5
\add_instance|RF|r0|output[9]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF_D3\(9) = ((GLOBAL(\add_instance|RF_D3[12]~0_combout\) & (\add_instance|T3|output\(9))) # (!GLOBAL(\add_instance|RF_D3[12]~0_combout\) & ((\add_instance|RF_D3\(9)))))
-- \add_instance|RF|r0|output\(9) = DFFEAS(\add_instance|RF_D3\(9), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|RF|demultiplexer|selection_output\(0), , , , )

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
	datab => \add_instance|T3|output\(9),
	datac => \add_instance|RF_D3\(9),
	datad => \add_instance|RF_D3[12]~0_combout\,
	aclr => GND,
	ena => \add_instance|RF|demultiplexer|selection_output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF_D3\(9),
	regout => \add_instance|RF|r0|output\(9));

-- Location: LC_X2_Y7_N5
\add_instance|T2_in[9]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T2_in\(9) = (\add_instance|next_state.s4~0\ & (((\add_instance|RF|r0|output\(9))))) # (!\add_instance|next_state.s4~0\ & (((\add_instance|T2_in\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|next_state.s4~0\,
	datac => \add_instance|T2_in\(9),
	datad => \add_instance|RF|r0|output\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T2_in\(9));

-- Location: LC_X2_Y7_N4
\add_instance|T2|output[9]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector11~0\ = (((E2_output[9] & \add_instance|present_state.s4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datac => \add_instance|T2_in\(9),
	datad => \add_instance|present_state.s4~regout\,
	aclr => GND,
	sload => VCC,
	ena => \add_instance|T2_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector11~0\,
	regout => \add_instance|T2|output\(9));

-- Location: LC_X1_Y8_N4
\add_instance|ALU_B[9]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_B\(9) = (GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|ALU_B\(9))))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|Selector11~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU_B[15]~0_combout\,
	datac => \add_instance|ALU_B\(9),
	datad => \add_instance|Selector11~0\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_B\(9));

-- Location: LC_X3_Y8_N4
\add_instance|ALU|carry~6\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU|carry~6_combout\ = (\add_instance|ALU_B\(10) & ((\add_instance|ALU_A\(10)) # ((\add_instance|ALU|carry~4_combout\) # (\add_instance|ALU|carry~5_combout\)))) # (!\add_instance|ALU_B\(10) & (\add_instance|ALU_A\(10) & 
-- ((\add_instance|ALU|carry~4_combout\) # (\add_instance|ALU|carry~5_combout\))))

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
	dataa => \add_instance|ALU_B\(10),
	datab => \add_instance|ALU_A\(10),
	datac => \add_instance|ALU|carry~4_combout\,
	datad => \add_instance|ALU|carry~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU|carry~6_combout\);

-- Location: LC_X3_Y6_N6
\add_instance|RF|r7|output[9]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF|Mux9~0\ = ((\add_instance|RF_A1\(1) & (E12_output[9])) # (!\add_instance|RF_A1\(1) & ((\add_instance|RF|r0|output\(9)))))

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
	datac => \add_instance|RF_D3\(9),
	datad => \add_instance|RF|r0|output\(9),
	aclr => GND,
	sload => VCC,
	ena => \add_instance|RF|demultiplexer|selection_output\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF|Mux9~0\,
	regout => \add_instance|RF|r7|output\(9));

-- Location: LC_X3_Y6_N7
\add_instance|T1|output[9]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T1_in\(9) = (\add_instance|T1_in[15]~0_combout\ & (((\add_instance|RF|Mux9~0\)))) # (!\add_instance|T1_in[15]~0_combout\ & (((\add_instance|T1_in\(9)))))
-- \add_instance|T1|output\(9) = DFFEAS(\add_instance|T1_in\(9), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|T1_load~combout\, , , , )

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
	datac => \add_instance|T1_in\(9),
	datad => \add_instance|RF|Mux9~0\,
	aclr => GND,
	ena => \add_instance|T1_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T1_in\(9),
	regout => \add_instance|T1|output\(9));

-- Location: LC_X2_Y8_N0
\add_instance|ALU_A[9]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_A\(9) = (GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|ALU_A\(9))))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|T1|output\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU_B[15]~0_combout\,
	datac => \add_instance|ALU_A\(9),
	datad => \add_instance|T1|output\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_A\(9));

-- Location: LC_X1_Y8_N8
\add_instance|ALU|sum~5\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU|sum~5_combout\ = \add_instance|ALU_B\(9) $ (\add_instance|ALU|carry~6_combout\ $ ((\add_instance|ALU_A\(9))))

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
	dataa => \add_instance|ALU_B\(9),
	datab => \add_instance|ALU|carry~6_combout\,
	datac => \add_instance|ALU_A\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU|sum~5_combout\);

-- Location: LC_X1_Y8_N5
\add_instance|ALU|carry~7\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU|carry~7_combout\ = (((\add_instance|ALU_A\(9) & \add_instance|ALU_B\(9))))

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
	datac => \add_instance|ALU_A\(9),
	datad => \add_instance|ALU_B\(9),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU|carry~7_combout\);

-- Location: LC_X1_Y9_N3
\add_instance|T3|output[8]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T3_in\(8) = ((GLOBAL(\add_instance|ALU_B[15]~0_combout\) & ((\add_instance|T3_in\(8)))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (\add_instance|ALU|sum~6_combout\)))
-- \add_instance|T3|output\(8) = DFFEAS(\add_instance|T3_in\(8), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|T3_load~combout\, , , , )

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
	datab => \add_instance|ALU|sum~6_combout\,
	datac => \add_instance|ALU_B[15]~0_combout\,
	datad => \add_instance|T3_in\(8),
	aclr => GND,
	ena => \add_instance|T3_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T3_in\(8),
	regout => \add_instance|T3|output\(8));

-- Location: LC_X1_Y9_N1
\add_instance|RF|r0|output[8]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF_D3\(8) = ((GLOBAL(\add_instance|RF_D3[12]~0_combout\) & ((\add_instance|T3|output\(8)))) # (!GLOBAL(\add_instance|RF_D3[12]~0_combout\) & (\add_instance|RF_D3\(8))))
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
	datac => \add_instance|T3|output\(8),
	datad => \add_instance|RF_D3[12]~0_combout\,
	aclr => GND,
	ena => \add_instance|RF|demultiplexer|selection_output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF_D3\(8),
	regout => \add_instance|RF|r0|output\(8));

-- Location: LC_X4_Y9_N5
\add_instance|T2_in[8]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T2_in\(8) = (\add_instance|next_state.s4~0\ & (((\add_instance|RF|r0|output\(8))))) # (!\add_instance|next_state.s4~0\ & (((\add_instance|T2_in\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|next_state.s4~0\,
	datac => \add_instance|T2_in\(8),
	datad => \add_instance|RF|r0|output\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T2_in\(8));

-- Location: LC_X4_Y9_N6
\add_instance|T2|output[8]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector12~0\ = (((E2_output[8] & \add_instance|present_state.s4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datac => \add_instance|T2_in\(8),
	datad => \add_instance|present_state.s4~regout\,
	aclr => GND,
	sload => VCC,
	ena => \add_instance|T2_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector12~0\,
	regout => \add_instance|T2|output\(8));

-- Location: LC_X4_Y9_N2
\add_instance|ALU_B[8]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_B\(8) = (GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|ALU_B\(8))))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|Selector12~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU_B[15]~0_combout\,
	datac => \add_instance|Selector12~0\,
	datad => \add_instance|ALU_B\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_B\(8));

-- Location: LC_X3_Y8_N5
\add_instance|ALU|carry~8\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU|carry~8_combout\ = ((\add_instance|ALU|carry~6_combout\ & ((\add_instance|ALU_A\(9)) # (\add_instance|ALU_B\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|ALU_A\(9),
	datac => \add_instance|ALU_B\(9),
	datad => \add_instance|ALU|carry~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU|carry~8_combout\);

-- Location: LC_X2_Y9_N6
\add_instance|RF|r7|output[8]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF|Mux8~0\ = (\add_instance|RF_A1\(1) & (((E12_output[8])))) # (!\add_instance|RF_A1\(1) & (((\add_instance|RF|r0|output\(8)))))

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
	datac => \add_instance|RF_D3\(8),
	datad => \add_instance|RF|r0|output\(8),
	aclr => GND,
	sload => VCC,
	ena => \add_instance|RF|demultiplexer|selection_output\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF|Mux8~0\,
	regout => \add_instance|RF|r7|output\(8));

-- Location: LC_X2_Y9_N9
\add_instance|T1|output[8]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T1_in\(8) = ((\add_instance|T1_in[15]~0_combout\ & (\add_instance|RF|Mux8~0\)) # (!\add_instance|T1_in[15]~0_combout\ & ((\add_instance|T1_in\(8)))))
-- \add_instance|T1|output\(8) = DFFEAS(\add_instance|T1_in\(8), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|T1_load~combout\, , , , )

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
	datac => \add_instance|RF|Mux8~0\,
	datad => \add_instance|T1_in\(8),
	aclr => GND,
	ena => \add_instance|T1_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T1_in\(8),
	regout => \add_instance|T1|output\(8));

-- Location: LC_X2_Y9_N0
\add_instance|ALU_A[8]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_A\(8) = (GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|ALU_A\(8))))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (\add_instance|T1|output\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "e4e4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU_B[15]~0_combout\,
	datab => \add_instance|T1|output\(8),
	datac => \add_instance|ALU_A\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_A\(8));

-- Location: LC_X3_Y9_N4
\add_instance|ALU|sum~6\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU|sum~6_combout\ = \add_instance|ALU_B\(8) $ (\add_instance|ALU_A\(8) $ (((\add_instance|ALU|carry~7_combout\) # (\add_instance|ALU|carry~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c936",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU|carry~7_combout\,
	datab => \add_instance|ALU_B\(8),
	datac => \add_instance|ALU|carry~8_combout\,
	datad => \add_instance|ALU_A\(8),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU|sum~6_combout\);

-- Location: LC_X2_Y6_N9
\add_instance|T3|output[7]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T3_in\(7) = ((GLOBAL(\add_instance|ALU_B[15]~0_combout\) & ((\add_instance|T3_in\(7)))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (\add_instance|ALU|sum~7_combout\)))
-- \add_instance|T3|output\(7) = DFFEAS(\add_instance|T3_in\(7), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|T3_load~combout\, , , , )

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
	datab => \add_instance|ALU|sum~7_combout\,
	datac => \add_instance|ALU_B[15]~0_combout\,
	datad => \add_instance|T3_in\(7),
	aclr => GND,
	ena => \add_instance|T3_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T3_in\(7),
	regout => \add_instance|T3|output\(7));

-- Location: LC_X2_Y6_N4
\add_instance|RF|r0|output[7]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF_D3\(7) = ((GLOBAL(\add_instance|RF_D3[12]~0_combout\) & (\add_instance|T3|output\(7))) # (!GLOBAL(\add_instance|RF_D3[12]~0_combout\) & ((\add_instance|RF_D3\(7)))))
-- \add_instance|RF|r0|output\(7) = DFFEAS(\add_instance|RF_D3\(7), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|RF|demultiplexer|selection_output\(0), , , , )

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
	datab => \add_instance|T3|output\(7),
	datac => \add_instance|RF_D3\(7),
	datad => \add_instance|RF_D3[12]~0_combout\,
	aclr => GND,
	ena => \add_instance|RF|demultiplexer|selection_output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF_D3\(7),
	regout => \add_instance|RF|r0|output\(7));

-- Location: LC_X4_Y8_N0
\add_instance|T2_in[7]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T2_in\(7) = (\add_instance|next_state.s4~0\ & (\add_instance|RF|r0|output\(7))) # (!\add_instance|next_state.s4~0\ & (((\add_instance|T2_in\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "bb88",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|RF|r0|output\(7),
	datab => \add_instance|next_state.s4~0\,
	datad => \add_instance|T2_in\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T2_in\(7));

-- Location: LC_X4_Y8_N2
\add_instance|T2|output[7]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector13~0\ = (((E2_output[7] & \add_instance|present_state.s4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datac => \add_instance|T2_in\(7),
	datad => \add_instance|present_state.s4~regout\,
	aclr => GND,
	sload => VCC,
	ena => \add_instance|T2_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector13~0\,
	regout => \add_instance|T2|output\(7));

-- Location: LC_X4_Y8_N3
\add_instance|ALU_B[7]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_B\(7) = (GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|ALU_B\(7))))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (\add_instance|Selector13~0\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU_B[15]~0_combout\,
	datab => \add_instance|Selector13~0\,
	datad => \add_instance|ALU_B\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_B\(7));

-- Location: LC_X3_Y8_N6
\add_instance|ALU|carry~9\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU|carry~9_combout\ = (\add_instance|ALU_B\(8) & ((\add_instance|ALU_A\(8)) # ((\add_instance|ALU|carry~7_combout\) # (\add_instance|ALU|carry~8_combout\)))) # (!\add_instance|ALU_B\(8) & (\add_instance|ALU_A\(8) & 
-- ((\add_instance|ALU|carry~7_combout\) # (\add_instance|ALU|carry~8_combout\))))

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
	dataa => \add_instance|ALU_B\(8),
	datab => \add_instance|ALU_A\(8),
	datac => \add_instance|ALU|carry~7_combout\,
	datad => \add_instance|ALU|carry~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU|carry~9_combout\);

-- Location: LC_X3_Y6_N8
\add_instance|RF|r7|output[7]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF|Mux7~0\ = ((\add_instance|RF_A1\(1) & ((E12_output[7]))) # (!\add_instance|RF_A1\(1) & (\add_instance|RF|r0|output\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|RF|r0|output\(7),
	datac => \add_instance|RF_D3\(7),
	datad => \add_instance|RF_A1\(1),
	aclr => GND,
	sload => VCC,
	ena => \add_instance|RF|demultiplexer|selection_output\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF|Mux7~0\,
	regout => \add_instance|RF|r7|output\(7));

-- Location: LC_X3_Y9_N0
\add_instance|T1|output[7]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T1_in\(7) = (\add_instance|T1_in[15]~0_combout\ & (((\add_instance|RF|Mux7~0\)))) # (!\add_instance|T1_in[15]~0_combout\ & (((\add_instance|T1_in\(7)))))
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
	datad => \add_instance|RF|Mux7~0\,
	aclr => GND,
	ena => \add_instance|T1_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T1_in\(7),
	regout => \add_instance|T1|output\(7));

-- Location: LC_X3_Y9_N8
\add_instance|ALU_A[7]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_A\(7) = (GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|ALU_A\(7))))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|T1|output\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU_B[15]~0_combout\,
	datac => \add_instance|T1|output\(7),
	datad => \add_instance|ALU_A\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_A\(7));

-- Location: LC_X3_Y9_N3
\add_instance|ALU|sum~7\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU|sum~7_combout\ = \add_instance|ALU_B\(7) $ (((\add_instance|ALU|carry~9_combout\ $ (\add_instance|ALU_A\(7)))))

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
	dataa => \add_instance|ALU_B\(7),
	datac => \add_instance|ALU|carry~9_combout\,
	datad => \add_instance|ALU_A\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU|sum~7_combout\);

-- Location: LC_X3_Y9_N6
\add_instance|ALU|carry~10\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU|carry~10_combout\ = (\add_instance|ALU_A\(7) & (((\add_instance|ALU_B\(7)))))

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
	dataa => \add_instance|ALU_A\(7),
	datad => \add_instance|ALU_B\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU|carry~10_combout\);

-- Location: LC_X2_Y6_N8
\add_instance|T3|output[6]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T3_in\(6) = ((GLOBAL(\add_instance|ALU_B[15]~0_combout\) & ((\add_instance|T3_in\(6)))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (\add_instance|ALU|sum~8_combout\)))
-- \add_instance|T3|output\(6) = DFFEAS(\add_instance|T3_in\(6), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|T3_load~combout\, , , , )

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
	datab => \add_instance|ALU|sum~8_combout\,
	datac => \add_instance|ALU_B[15]~0_combout\,
	datad => \add_instance|T3_in\(6),
	aclr => GND,
	ena => \add_instance|T3_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T3_in\(6),
	regout => \add_instance|T3|output\(6));

-- Location: LC_X2_Y6_N1
\add_instance|RF|r0|output[6]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF_D3\(6) = ((GLOBAL(\add_instance|RF_D3[12]~0_combout\) & (\add_instance|T3|output\(6))) # (!GLOBAL(\add_instance|RF_D3[12]~0_combout\) & ((\add_instance|RF_D3\(6)))))
-- \add_instance|RF|r0|output\(6) = DFFEAS(\add_instance|RF_D3\(6), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|RF|demultiplexer|selection_output\(0), , , , )

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
	datab => \add_instance|RF_D3[12]~0_combout\,
	datac => \add_instance|T3|output\(6),
	datad => \add_instance|RF_D3\(6),
	aclr => GND,
	ena => \add_instance|RF|demultiplexer|selection_output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF_D3\(6),
	regout => \add_instance|RF|r0|output\(6));

-- Location: LC_X6_Y7_N4
\add_instance|T2_in[6]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T2_in\(6) = (\add_instance|next_state.s4~0\ & (((\add_instance|RF|r0|output\(6))))) # (!\add_instance|next_state.s4~0\ & (((\add_instance|T2_in\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|next_state.s4~0\,
	datac => \add_instance|T2_in\(6),
	datad => \add_instance|RF|r0|output\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T2_in\(6));

-- Location: LC_X6_Y7_N6
\add_instance|T2|output[6]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector14~0\ = (((E2_output[6] & \add_instance|present_state.s4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datac => \add_instance|T2_in\(6),
	datad => \add_instance|present_state.s4~regout\,
	aclr => GND,
	sload => VCC,
	ena => \add_instance|T2_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector14~0\,
	regout => \add_instance|T2|output\(6));

-- Location: LC_X6_Y7_N3
\add_instance|ALU_B[6]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_B\(6) = (GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|ALU_B\(6))))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|Selector14~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU_B[15]~0_combout\,
	datac => \add_instance|Selector14~0\,
	datad => \add_instance|ALU_B\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_B\(6));

-- Location: LC_X3_Y6_N0
\add_instance|RF|r7|output[6]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF|Mux6~0\ = ((\add_instance|RF_A1\(1) & (E12_output[6])) # (!\add_instance|RF_A1\(1) & ((\add_instance|RF|r0|output\(6)))))

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
	combout => \add_instance|RF|Mux6~0\,
	regout => \add_instance|RF|r7|output\(6));

-- Location: LC_X3_Y6_N1
\add_instance|T1|output[6]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T1_in\(6) = (\add_instance|T1_in[15]~0_combout\ & (((\add_instance|RF|Mux6~0\)))) # (!\add_instance|T1_in[15]~0_combout\ & (((\add_instance|T1_in\(6)))))
-- \add_instance|T1|output\(6) = DFFEAS(\add_instance|T1_in\(6), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|T1_load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	dataa => \add_instance|T1_in[15]~0_combout\,
	datac => \add_instance|RF|Mux6~0\,
	datad => \add_instance|T1_in\(6),
	aclr => GND,
	ena => \add_instance|T1_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T1_in\(6),
	regout => \add_instance|T1|output\(6));

-- Location: LC_X3_Y6_N5
\add_instance|ALU_A[6]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_A\(6) = (GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|ALU_A\(6))))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|T1|output\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU_B[15]~0_combout\,
	datac => \add_instance|ALU_A\(6),
	datad => \add_instance|T1|output\(6),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_A\(6));

-- Location: LC_X3_Y8_N7
\add_instance|ALU|carry~11\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU|carry~11_combout\ = ((\add_instance|ALU|carry~9_combout\ & ((\add_instance|ALU_A\(7)) # (\add_instance|ALU_B\(7)))))

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
	dataa => \add_instance|ALU_A\(7),
	datab => \add_instance|ALU_B\(7),
	datad => \add_instance|ALU|carry~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU|carry~11_combout\);

-- Location: LC_X2_Y6_N7
\add_instance|ALU|sum~8\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU|sum~8_combout\ = \add_instance|ALU_B\(6) $ (\add_instance|ALU_A\(6) $ (((\add_instance|ALU|carry~10_combout\) # (\add_instance|ALU|carry~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c396",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU|carry~10_combout\,
	datab => \add_instance|ALU_B\(6),
	datac => \add_instance|ALU_A\(6),
	datad => \add_instance|ALU|carry~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU|sum~8_combout\);

-- Location: LC_X1_Y9_N2
\add_instance|T3|output[5]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T3_in\(5) = ((GLOBAL(\add_instance|ALU_B[15]~0_combout\) & ((\add_instance|T3_in\(5)))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (\add_instance|ALU|sum~9_combout\)))
-- \add_instance|T3|output\(5) = DFFEAS(\add_instance|T3_in\(5), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|T3_load~combout\, , , , )

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
	datab => \add_instance|ALU|sum~9_combout\,
	datac => \add_instance|ALU_B[15]~0_combout\,
	datad => \add_instance|T3_in\(5),
	aclr => GND,
	ena => \add_instance|T3_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T3_in\(5),
	regout => \add_instance|T3|output\(5));

-- Location: LC_X1_Y9_N0
\add_instance|RF|r0|output[5]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF_D3\(5) = ((GLOBAL(\add_instance|RF_D3[12]~0_combout\) & (\add_instance|T3|output\(5))) # (!GLOBAL(\add_instance|RF_D3[12]~0_combout\) & ((\add_instance|RF_D3\(5)))))
-- \add_instance|RF|r0|output\(5) = DFFEAS(\add_instance|RF_D3\(5), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|RF|demultiplexer|selection_output\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aaf0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	dataa => \add_instance|T3|output\(5),
	datac => \add_instance|RF_D3\(5),
	datad => \add_instance|RF_D3[12]~0_combout\,
	aclr => GND,
	ena => \add_instance|RF|demultiplexer|selection_output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF_D3\(5),
	regout => \add_instance|RF|r0|output\(5));

-- Location: LC_X6_Y7_N5
\add_instance|T2_in[5]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T2_in\(5) = (\add_instance|next_state.s4~0\ & (((\add_instance|RF|r0|output\(5))))) # (!\add_instance|next_state.s4~0\ & (((\add_instance|T2_in\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|next_state.s4~0\,
	datac => \add_instance|T2_in\(5),
	datad => \add_instance|RF|r0|output\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T2_in\(5));

-- Location: LC_X6_Y7_N7
\add_instance|T2|output[5]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector15~0\ = (((E2_output[5] & \add_instance|present_state.s4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datac => \add_instance|T2_in\(5),
	datad => \add_instance|present_state.s4~regout\,
	aclr => GND,
	sload => VCC,
	ena => \add_instance|T2_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector15~0\,
	regout => \add_instance|T2|output\(5));

-- Location: LC_X6_Y7_N8
\add_instance|ALU_B[5]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_B\(5) = (GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|ALU_B\(5))))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|Selector15~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU_B[15]~0_combout\,
	datac => \add_instance|Selector15~0\,
	datad => \add_instance|ALU_B\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_B\(5));

-- Location: LC_X3_Y8_N8
\add_instance|ALU|carry~12\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU|carry~12_combout\ = (\add_instance|ALU_B\(6) & ((\add_instance|ALU|carry~10_combout\) # ((\add_instance|ALU_A\(6)) # (\add_instance|ALU|carry~11_combout\)))) # (!\add_instance|ALU_B\(6) & (\add_instance|ALU_A\(6) & 
-- ((\add_instance|ALU|carry~10_combout\) # (\add_instance|ALU|carry~11_combout\))))

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
	dataa => \add_instance|ALU_B\(6),
	datab => \add_instance|ALU|carry~10_combout\,
	datac => \add_instance|ALU_A\(6),
	datad => \add_instance|ALU|carry~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU|carry~12_combout\);

-- Location: LC_X2_Y9_N5
\add_instance|RF|r7|output[5]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF|Mux5~0\ = (\add_instance|RF_A1\(1) & (((E12_output[5])))) # (!\add_instance|RF_A1\(1) & (((\add_instance|RF|r0|output\(5)))))

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
	datac => \add_instance|RF_D3\(5),
	datad => \add_instance|RF|r0|output\(5),
	aclr => GND,
	sload => VCC,
	ena => \add_instance|RF|demultiplexer|selection_output\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF|Mux5~0\,
	regout => \add_instance|RF|r7|output\(5));

-- Location: LC_X2_Y9_N2
\add_instance|T1|output[5]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T1_in\(5) = ((\add_instance|T1_in[15]~0_combout\ & (\add_instance|RF|Mux5~0\)) # (!\add_instance|T1_in[15]~0_combout\ & ((\add_instance|T1_in\(5)))))
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
	datac => \add_instance|RF|Mux5~0\,
	datad => \add_instance|T1_in\(5),
	aclr => GND,
	ena => \add_instance|T1_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T1_in\(5),
	regout => \add_instance|T1|output\(5));

-- Location: LC_X2_Y9_N8
\add_instance|ALU_A[5]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_A\(5) = (GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|ALU_A\(5))))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (\add_instance|T1|output\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU_B[15]~0_combout\,
	datab => \add_instance|T1|output\(5),
	datad => \add_instance|ALU_A\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_A\(5));

-- Location: LC_X2_Y8_N2
\add_instance|ALU|sum~9\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU|sum~9_combout\ = \add_instance|ALU_B\(5) $ (\add_instance|ALU|carry~12_combout\ $ (((\add_instance|ALU_A\(5)))))

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
	dataa => \add_instance|ALU_B\(5),
	datab => \add_instance|ALU|carry~12_combout\,
	datad => \add_instance|ALU_A\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU|sum~9_combout\);

-- Location: LC_X1_Y8_N3
\add_instance|T3|output[4]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T3_in\(4) = ((GLOBAL(\add_instance|ALU_B[15]~0_combout\) & ((\add_instance|T3_in\(4)))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (\add_instance|ALU|sum~10_combout\)))
-- \add_instance|T3|output\(4) = DFFEAS(\add_instance|T3_in\(4), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|T3_load~combout\, , , , )

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
	datab => \add_instance|ALU|sum~10_combout\,
	datac => \add_instance|ALU_B[15]~0_combout\,
	datad => \add_instance|T3_in\(4),
	aclr => GND,
	ena => \add_instance|T3_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T3_in\(4),
	regout => \add_instance|T3|output\(4));

-- Location: LC_X1_Y10_N9
\add_instance|RF|r0|output[4]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF_D3\(4) = ((GLOBAL(\add_instance|RF_D3[12]~0_combout\) & (\add_instance|T3|output\(4))) # (!GLOBAL(\add_instance|RF_D3[12]~0_combout\) & ((\add_instance|RF_D3\(4)))))
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
	datab => \add_instance|RF_D3[12]~0_combout\,
	datac => \add_instance|T3|output\(4),
	datad => \add_instance|RF_D3\(4),
	aclr => GND,
	ena => \add_instance|RF|demultiplexer|selection_output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF_D3\(4),
	regout => \add_instance|RF|r0|output\(4));

-- Location: LC_X2_Y7_N7
\add_instance|T2_in[4]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T2_in\(4) = (\add_instance|next_state.s4~0\ & (((\add_instance|RF|r0|output\(4))))) # (!\add_instance|next_state.s4~0\ & (((\add_instance|T2_in\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|next_state.s4~0\,
	datac => \add_instance|T2_in\(4),
	datad => \add_instance|RF|r0|output\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T2_in\(4));

-- Location: LC_X2_Y7_N9
\add_instance|T2|output[4]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector16~0\ = (((E2_output[4] & \add_instance|present_state.s4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datac => \add_instance|T2_in\(4),
	datad => \add_instance|present_state.s4~regout\,
	aclr => GND,
	sload => VCC,
	ena => \add_instance|T2_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector16~0\,
	regout => \add_instance|T2|output\(4));

-- Location: LC_X2_Y7_N1
\add_instance|ALU_B[4]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_B\(4) = (GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|ALU_B\(4))))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (\add_instance|Selector16~0\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU_B[15]~0_combout\,
	datab => \add_instance|Selector16~0\,
	datad => \add_instance|ALU_B\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_B\(4));

-- Location: LC_X2_Y10_N9
\add_instance|RF|r7|output[4]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF|Mux4~0\ = ((\add_instance|RF_A1\(1) & ((E12_output[4]))) # (!\add_instance|RF_A1\(1) & (\add_instance|RF|r0|output\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|RF|r0|output\(4),
	datac => \add_instance|RF_D3\(4),
	datad => \add_instance|RF_A1\(1),
	aclr => GND,
	sload => VCC,
	ena => \add_instance|RF|demultiplexer|selection_output\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF|Mux4~0\,
	regout => \add_instance|RF|r7|output\(4));

-- Location: LC_X2_Y10_N8
\add_instance|T1|output[4]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T1_in\(4) = ((\add_instance|T1_in[15]~0_combout\ & (\add_instance|RF|Mux4~0\)) # (!\add_instance|T1_in[15]~0_combout\ & ((\add_instance|T1_in\(4)))))
-- \add_instance|T1|output\(4) = DFFEAS(\add_instance|T1_in\(4), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|T1_load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|RF|Mux4~0\,
	datac => \add_instance|T1_in[15]~0_combout\,
	datad => \add_instance|T1_in\(4),
	aclr => GND,
	ena => \add_instance|T1_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T1_in\(4),
	regout => \add_instance|T1|output\(4));

-- Location: LC_X1_Y10_N7
\add_instance|ALU_A[4]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_A\(4) = (GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|ALU_A\(4))))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|T1|output\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU_B[15]~0_combout\,
	datac => \add_instance|ALU_A\(4),
	datad => \add_instance|T1|output\(4),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_A\(4));

-- Location: LC_X2_Y8_N4
\add_instance|ALU|carry~14\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU|carry~14_combout\ = ((\add_instance|ALU|carry~12_combout\ & ((\add_instance|ALU_A\(5)) # (\add_instance|ALU_B\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc00",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|ALU_A\(5),
	datac => \add_instance|ALU_B\(5),
	datad => \add_instance|ALU|carry~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU|carry~14_combout\);

-- Location: LC_X1_Y8_N9
\add_instance|ALU|carry~13\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU|carry~13_combout\ = ((\add_instance|ALU_A\(5) & ((\add_instance|ALU_B\(5)))))

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
	datab => \add_instance|ALU_A\(5),
	datad => \add_instance|ALU_B\(5),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU|carry~13_combout\);

-- Location: LC_X1_Y8_N2
\add_instance|ALU|sum~10\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU|sum~10_combout\ = \add_instance|ALU_B\(4) $ (\add_instance|ALU_A\(4) $ (((\add_instance|ALU|carry~14_combout\) # (\add_instance|ALU|carry~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU_B\(4),
	datab => \add_instance|ALU_A\(4),
	datac => \add_instance|ALU|carry~14_combout\,
	datad => \add_instance|ALU|carry~13_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU|sum~10_combout\);

-- Location: LC_X1_Y10_N8
\add_instance|T3|output[3]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T3_in\(3) = ((GLOBAL(\add_instance|ALU_B[15]~0_combout\) & ((\add_instance|T3_in\(3)))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (\add_instance|ALU|sum~11_combout\)))
-- \add_instance|T3|output\(3) = DFFEAS(\add_instance|T3_in\(3), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|T3_load~combout\, , , , )

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
	datab => \add_instance|ALU|sum~11_combout\,
	datac => \add_instance|ALU_B[15]~0_combout\,
	datad => \add_instance|T3_in\(3),
	aclr => GND,
	ena => \add_instance|T3_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T3_in\(3),
	regout => \add_instance|T3|output\(3));

-- Location: LC_X1_Y10_N6
\add_instance|RF|r0|output[3]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF_D3\(3) = ((GLOBAL(\add_instance|RF_D3[12]~0_combout\) & (\add_instance|T3|output\(3))) # (!GLOBAL(\add_instance|RF_D3[12]~0_combout\) & ((\add_instance|RF_D3\(3)))))
-- \add_instance|RF|r0|output\(3) = DFFEAS(\add_instance|RF_D3\(3), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|RF|demultiplexer|selection_output\(0), , , , )

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
	datab => \add_instance|T3|output\(3),
	datac => \add_instance|RF_D3\(3),
	datad => \add_instance|RF_D3[12]~0_combout\,
	aclr => GND,
	ena => \add_instance|RF|demultiplexer|selection_output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF_D3\(3),
	regout => \add_instance|RF|r0|output\(3));

-- Location: LC_X2_Y10_N2
\add_instance|RF|r7|output[3]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF|Mux3~0\ = ((\add_instance|RF_A1\(1) & (E12_output[3])) # (!\add_instance|RF_A1\(1) & ((\add_instance|RF|r0|output\(3)))))

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
	combout => \add_instance|RF|Mux3~0\,
	regout => \add_instance|RF|r7|output\(3));

-- Location: LC_X2_Y10_N3
\add_instance|T1|output[3]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T1_in\(3) = ((\add_instance|T1_in[15]~0_combout\ & ((\add_instance|RF|Mux3~0\))) # (!\add_instance|T1_in[15]~0_combout\ & (\add_instance|T1_in\(3))))
-- \add_instance|T1|output\(3) = DFFEAS(\add_instance|T1_in\(3), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|T1_load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa0a",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	dataa => \add_instance|T1_in\(3),
	datac => \add_instance|T1_in[15]~0_combout\,
	datad => \add_instance|RF|Mux3~0\,
	aclr => GND,
	ena => \add_instance|T1_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T1_in\(3),
	regout => \add_instance|T1|output\(3));

-- Location: LC_X1_Y10_N3
\add_instance|ALU_A[3]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_A\(3) = (GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|ALU_A\(3))))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|T1|output\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU_B[15]~0_combout\,
	datac => \add_instance|T1|output\(3),
	datad => \add_instance|ALU_A\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_A\(3));

-- Location: LC_X5_Y7_N5
\add_instance|T2_in[3]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T2_in\(3) = (\add_instance|next_state.s4~0\ & (((\add_instance|RF|r0|output\(3))))) # (!\add_instance|next_state.s4~0\ & (((\add_instance|T2_in\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|next_state.s4~0\,
	datac => \add_instance|T2_in\(3),
	datad => \add_instance|RF|r0|output\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T2_in\(3));

-- Location: LC_X5_Y7_N9
\add_instance|T2|output[3]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector17~0\ = (((E2_output[3] & \add_instance|present_state.s4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datac => \add_instance|T2_in\(3),
	datad => \add_instance|present_state.s4~regout\,
	aclr => GND,
	sload => VCC,
	ena => \add_instance|T2_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector17~0\,
	regout => \add_instance|T2|output\(3));

-- Location: LC_X5_Y7_N8
\add_instance|ALU_B[3]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_B\(3) = (GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|ALU_B\(3))))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (\add_instance|Selector17~0\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU_B[15]~0_combout\,
	datab => \add_instance|Selector17~0\,
	datad => \add_instance|ALU_B\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_B\(3));

-- Location: LC_X2_Y8_N5
\add_instance|ALU|carry~15\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU|carry~15_combout\ = (\add_instance|ALU_A\(4) & ((\add_instance|ALU|carry~13_combout\) # ((\add_instance|ALU_B\(4)) # (\add_instance|ALU|carry~14_combout\)))) # (!\add_instance|ALU_A\(4) & (\add_instance|ALU_B\(4) & 
-- ((\add_instance|ALU|carry~13_combout\) # (\add_instance|ALU|carry~14_combout\))))

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
	dataa => \add_instance|ALU|carry~13_combout\,
	datab => \add_instance|ALU_A\(4),
	datac => \add_instance|ALU_B\(4),
	datad => \add_instance|ALU|carry~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU|carry~15_combout\);

-- Location: LC_X1_Y10_N0
\add_instance|ALU|sum~11\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU|sum~11_combout\ = \add_instance|ALU_A\(3) $ (((\add_instance|ALU_B\(3) $ (\add_instance|ALU|carry~15_combout\))))

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
	dataa => \add_instance|ALU_A\(3),
	datac => \add_instance|ALU_B\(3),
	datad => \add_instance|ALU|carry~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU|sum~11_combout\);

-- Location: LC_X1_Y9_N9
\add_instance|T3|output[2]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T3_in\(2) = (GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|T3_in\(2))))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|ALU|sum~12_combout\))))
-- \add_instance|T3|output\(2) = DFFEAS(\add_instance|T3_in\(2), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|T3_load~combout\, , , , )

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
	dataa => \add_instance|ALU_B[15]~0_combout\,
	datac => \add_instance|ALU|sum~12_combout\,
	datad => \add_instance|T3_in\(2),
	aclr => GND,
	ena => \add_instance|T3_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T3_in\(2),
	regout => \add_instance|T3|output\(2));

-- Location: LC_X3_Y9_N9
\add_instance|RF|r0|output[2]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF_D3\(2) = ((GLOBAL(\add_instance|RF_D3[12]~0_combout\) & ((\add_instance|T3|output\(2)))) # (!GLOBAL(\add_instance|RF_D3[12]~0_combout\) & (\add_instance|RF_D3\(2))))
-- \add_instance|RF|r0|output\(2) = DFFEAS(\add_instance|RF_D3\(2), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|RF|demultiplexer|selection_output\(0), , , , )

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
	datab => \add_instance|RF_D3\(2),
	datac => \add_instance|T3|output\(2),
	datad => \add_instance|RF_D3[12]~0_combout\,
	aclr => GND,
	ena => \add_instance|RF|demultiplexer|selection_output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF_D3\(2),
	regout => \add_instance|RF|r0|output\(2));

-- Location: LC_X4_Y9_N0
\add_instance|T2_in[2]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T2_in\(2) = ((\add_instance|next_state.s4~0\ & ((\add_instance|RF|r0|output\(2)))) # (!\add_instance|next_state.s4~0\ & (\add_instance|T2_in\(2))))

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
	datab => \add_instance|T2_in\(2),
	datac => \add_instance|next_state.s4~0\,
	datad => \add_instance|RF|r0|output\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T2_in\(2));

-- Location: LC_X4_Y9_N7
\add_instance|T2|output[2]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector18~0\ = (((E2_output[2] & \add_instance|present_state.s4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datac => \add_instance|T2_in\(2),
	datad => \add_instance|present_state.s4~regout\,
	aclr => GND,
	sload => VCC,
	ena => \add_instance|T2_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector18~0\,
	regout => \add_instance|T2|output\(2));

-- Location: LC_X4_Y9_N8
\add_instance|ALU_B[2]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_B\(2) = (GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|ALU_B\(2))))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|Selector18~0\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU_B[15]~0_combout\,
	datac => \add_instance|Selector18~0\,
	datad => \add_instance|ALU_B\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_B\(2));

-- Location: LC_X2_Y9_N1
\add_instance|RF|r7|output[2]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF|Mux2~0\ = (\add_instance|RF_A1\(1) & (((E12_output[2])))) # (!\add_instance|RF_A1\(1) & (((\add_instance|RF|r0|output\(2)))))

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
	datac => \add_instance|RF_D3\(2),
	datad => \add_instance|RF|r0|output\(2),
	aclr => GND,
	sload => VCC,
	ena => \add_instance|RF|demultiplexer|selection_output\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF|Mux2~0\,
	regout => \add_instance|RF|r7|output\(2));

-- Location: LC_X2_Y9_N7
\add_instance|T1|output[2]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T1_in\(2) = ((\add_instance|T1_in[15]~0_combout\ & ((\add_instance|RF|Mux2~0\))) # (!\add_instance|T1_in[15]~0_combout\ & (\add_instance|T1_in\(2))))
-- \add_instance|T1|output\(2) = DFFEAS(\add_instance|T1_in\(2), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|T1_load~combout\, , , , )

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
	datac => \add_instance|T1_in\(2),
	datad => \add_instance|RF|Mux2~0\,
	aclr => GND,
	ena => \add_instance|T1_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T1_in\(2),
	regout => \add_instance|T1|output\(2));

-- Location: LC_X1_Y9_N4
\add_instance|ALU_A[2]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_A\(2) = (GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|ALU_A\(2))))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|T1|output\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU_B[15]~0_combout\,
	datac => \add_instance|ALU_A\(2),
	datad => \add_instance|T1|output\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_A\(2));

-- Location: LC_X1_Y10_N4
\add_instance|ALU|carry~16\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU|carry~16_combout\ = (((\add_instance|ALU_B\(3) & \add_instance|ALU_A\(3))))

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
	datac => \add_instance|ALU_B\(3),
	datad => \add_instance|ALU_A\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU|carry~16_combout\);

-- Location: LC_X2_Y8_N6
\add_instance|ALU|carry~17\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU|carry~17_combout\ = ((\add_instance|ALU|carry~15_combout\ & ((\add_instance|ALU_B\(3)) # (\add_instance|ALU_A\(3)))))

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
	dataa => \add_instance|ALU_B\(3),
	datab => \add_instance|ALU_A\(3),
	datad => \add_instance|ALU|carry~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU|carry~17_combout\);

-- Location: LC_X1_Y9_N7
\add_instance|ALU|sum~12\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU|sum~12_combout\ = \add_instance|ALU_B\(2) $ (\add_instance|ALU_A\(2) $ (((\add_instance|ALU|carry~16_combout\) # (\add_instance|ALU|carry~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "9996",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU_B\(2),
	datab => \add_instance|ALU_A\(2),
	datac => \add_instance|ALU|carry~16_combout\,
	datad => \add_instance|ALU|carry~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU|sum~12_combout\);

-- Location: LC_X3_Y7_N4
\add_instance|T3|output[1]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T3_in\(1) = (GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|T3_in\(1))))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|ALU|sum~13_combout\))))
-- \add_instance|T3|output\(1) = DFFEAS(\add_instance|T3_in\(1), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|T3_load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	dataa => \add_instance|ALU_B[15]~0_combout\,
	datac => \add_instance|T3_in\(1),
	datad => \add_instance|ALU|sum~13_combout\,
	aclr => GND,
	ena => \add_instance|T3_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T3_in\(1),
	regout => \add_instance|T3|output\(1));

-- Location: LC_X3_Y7_N5
\add_instance|RF|r0|output[1]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF_D3\(1) = ((GLOBAL(\add_instance|RF_D3[12]~0_combout\) & ((\add_instance|T3|output\(1)))) # (!GLOBAL(\add_instance|RF_D3[12]~0_combout\) & (\add_instance|RF_D3\(1))))
-- \add_instance|RF|r0|output\(1) = DFFEAS(\add_instance|RF_D3\(1), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|RF|demultiplexer|selection_output\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0aa",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	dataa => \add_instance|RF_D3\(1),
	datac => \add_instance|T3|output\(1),
	datad => \add_instance|RF_D3[12]~0_combout\,
	aclr => GND,
	ena => \add_instance|RF|demultiplexer|selection_output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF_D3\(1),
	regout => \add_instance|RF|r0|output\(1));

-- Location: LC_X4_Y10_N3
\add_instance|RF|r7|output[1]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF|Mux1~0\ = (\add_instance|RF_A1\(1) & (((E12_output[1])))) # (!\add_instance|RF_A1\(1) & (((\add_instance|RF|r0|output\(1)))))

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
	datac => \add_instance|RF_D3\(1),
	datad => \add_instance|RF|r0|output\(1),
	aclr => GND,
	sload => VCC,
	ena => \add_instance|RF|demultiplexer|selection_output\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF|Mux1~0\,
	regout => \add_instance|RF|r7|output\(1));

-- Location: LC_X4_Y10_N4
\add_instance|T1|output[1]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T1_in\(1) = ((\add_instance|T1_in[15]~0_combout\ & ((\add_instance|RF|Mux1~0\))) # (!\add_instance|T1_in[15]~0_combout\ & (\add_instance|T1_in\(1))))
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
	datad => \add_instance|RF|Mux1~0\,
	aclr => GND,
	ena => \add_instance|T1_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T1_in\(1),
	regout => \add_instance|T1|output\(1));

-- Location: LC_X4_Y10_N2
\add_instance|ALU_A[1]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_A\(1) = (GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|ALU_A\(1))))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (\add_instance|T1|output\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU_B[15]~0_combout\,
	datab => \add_instance|T1|output\(1),
	datad => \add_instance|ALU_A\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_A\(1));

-- Location: LC_X4_Y7_N6
\add_instance|T2_in[1]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T2_in\(1) = ((\add_instance|next_state.s4~0\ & ((\add_instance|RF|r0|output\(1)))) # (!\add_instance|next_state.s4~0\ & (\add_instance|T2_in\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fc30",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|next_state.s4~0\,
	datac => \add_instance|T2_in\(1),
	datad => \add_instance|RF|r0|output\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T2_in\(1));

-- Location: LC_X4_Y7_N9
\add_instance|T2|output[1]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector19~0\ = (((E2_output[1] & \add_instance|present_state.s4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f000",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datac => \add_instance|T2_in\(1),
	datad => \add_instance|present_state.s4~regout\,
	aclr => GND,
	sload => VCC,
	ena => \add_instance|T2_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector19~0\,
	regout => \add_instance|T2|output\(1));

-- Location: LC_X4_Y7_N8
\add_instance|ALU_B[1]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_B\(1) = (GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|ALU_B\(1))))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (\add_instance|Selector19~0\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU_B[15]~0_combout\,
	datab => \add_instance|Selector19~0\,
	datad => \add_instance|ALU_B\(1),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_B\(1));

-- Location: LC_X2_Y8_N7
\add_instance|ALU|carry~18\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU|carry~18_combout\ = (\add_instance|ALU_A\(2) & ((\add_instance|ALU_B\(2)) # ((\add_instance|ALU|carry~16_combout\) # (\add_instance|ALU|carry~17_combout\)))) # (!\add_instance|ALU_A\(2) & (\add_instance|ALU_B\(2) & 
-- ((\add_instance|ALU|carry~16_combout\) # (\add_instance|ALU|carry~17_combout\))))

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
	dataa => \add_instance|ALU_A\(2),
	datab => \add_instance|ALU_B\(2),
	datac => \add_instance|ALU|carry~16_combout\,
	datad => \add_instance|ALU|carry~17_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU|carry~18_combout\);

-- Location: LC_X3_Y7_N3
\add_instance|ALU|sum~13\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU|sum~13_combout\ = (\add_instance|ALU_A\(1) $ (\add_instance|ALU_B\(1) $ (\add_instance|ALU|carry~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|ALU_A\(1),
	datac => \add_instance|ALU_B\(1),
	datad => \add_instance|ALU|carry~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU|sum~13_combout\);

-- Location: LC_X1_Y8_N7
\add_instance|T3|output[0]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T3_in\(0) = (GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|T3_in\(0))))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|ALU|sum~14_combout\))))
-- \add_instance|T3|output\(0) = DFFEAS(\add_instance|T3_in\(0), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|T3_load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f5a0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	dataa => \add_instance|ALU_B[15]~0_combout\,
	datac => \add_instance|T3_in\(0),
	datad => \add_instance|ALU|sum~14_combout\,
	aclr => GND,
	ena => \add_instance|T3_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T3_in\(0),
	regout => \add_instance|T3|output\(0));

-- Location: LC_X1_Y8_N1
\add_instance|RF|r0|output[0]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF_D3\(0) = ((GLOBAL(\add_instance|RF_D3[12]~0_combout\) & (\add_instance|T3|output\(0))) # (!GLOBAL(\add_instance|RF_D3[12]~0_combout\) & ((\add_instance|RF_D3\(0)))))
-- \add_instance|RF|r0|output\(0) = DFFEAS(\add_instance|RF_D3\(0), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|RF|demultiplexer|selection_output\(0), , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "aacc",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	dataa => \add_instance|T3|output\(0),
	datab => \add_instance|RF_D3\(0),
	datad => \add_instance|RF_D3[12]~0_combout\,
	aclr => GND,
	ena => \add_instance|RF|demultiplexer|selection_output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF_D3\(0),
	regout => \add_instance|RF|r0|output\(0));

-- Location: LC_X2_Y7_N6
\add_instance|T2_in[0]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T2_in\(0) = (\add_instance|next_state.s4~0\ & (((\add_instance|RF|r0|output\(0))))) # (!\add_instance|next_state.s4~0\ & (((\add_instance|T2_in\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fa50",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|next_state.s4~0\,
	datac => \add_instance|T2_in\(0),
	datad => \add_instance|RF|r0|output\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T2_in\(0));

-- Location: LC_X2_Y7_N2
\add_instance|T2|output[0]\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector20~0\ = (((E2_output[0]) # (!\add_instance|present_state.s4~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0ff",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datac => \add_instance|T2_in\(0),
	datad => \add_instance|present_state.s4~regout\,
	aclr => GND,
	sload => VCC,
	ena => \add_instance|T2_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector20~0\,
	regout => \add_instance|T2|output\(0));

-- Location: LC_X2_Y7_N3
\add_instance|ALU_B[0]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_B\(0) = (GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|ALU_B\(0))))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (\add_instance|Selector20~0\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU_B[15]~0_combout\,
	datab => \add_instance|Selector20~0\,
	datad => \add_instance|ALU_B\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_B\(0));

-- Location: LC_X2_Y8_N9
\add_instance|RF|r7|output[0]\ : maxv_lcell
-- Equation(s):
-- \add_instance|RF|Mux0~0\ = ((\add_instance|RF_A1\(1) & ((E12_output[0]))) # (!\add_instance|RF_A1\(1) & (\add_instance|RF|r0|output\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "f0cc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "qfbk",
	synch_mode => "on")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	datab => \add_instance|RF|r0|output\(0),
	datac => \add_instance|RF_D3\(0),
	datad => \add_instance|RF_A1\(1),
	aclr => GND,
	sload => VCC,
	ena => \add_instance|RF|demultiplexer|selection_output\(7),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|RF|Mux0~0\,
	regout => \add_instance|RF|r7|output\(0));

-- Location: LC_X2_Y8_N1
\add_instance|T1|output[0]\ : maxv_lcell
-- Equation(s):
-- \add_instance|T1_in\(0) = (\add_instance|T1_in[15]~0_combout\ & (\add_instance|RF|Mux0~0\)) # (!\add_instance|T1_in[15]~0_combout\ & (((\add_instance|T1_in\(0)))))
-- \add_instance|T1|output\(0) = DFFEAS(\add_instance|T1_in\(0), !GLOBAL(\input_vector~combout\(1)), VCC, , \add_instance|T1_load~combout\, , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "dd88",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector~combout\(1),
	dataa => \add_instance|T1_in[15]~0_combout\,
	datab => \add_instance|RF|Mux0~0\,
	datad => \add_instance|T1_in\(0),
	aclr => GND,
	ena => \add_instance|T1_load~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|T1_in\(0),
	regout => \add_instance|T1|output\(0));

-- Location: LC_X2_Y8_N3
\add_instance|ALU_A[0]\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU_A\(0) = (GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (((\add_instance|ALU_A\(0))))) # (!GLOBAL(\add_instance|ALU_B[15]~0_combout\) & (\add_instance|T1|output\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ee44",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|ALU_B[15]~0_combout\,
	datab => \add_instance|T1|output\(0),
	datad => \add_instance|ALU_A\(0),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU_A\(0));

-- Location: LC_X2_Y8_N8
\add_instance|ALU|carry~19\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU|carry~19_combout\ = ((\add_instance|ALU_A\(1) & ((\add_instance|ALU_B\(1)) # (\add_instance|ALU|carry~18_combout\))) # (!\add_instance|ALU_A\(1) & (\add_instance|ALU_B\(1) & \add_instance|ALU|carry~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "fcc0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|ALU_A\(1),
	datac => \add_instance|ALU_B\(1),
	datad => \add_instance|ALU|carry~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU|carry~19_combout\);

-- Location: LC_X1_Y8_N6
\add_instance|ALU|sum~14\ : maxv_lcell
-- Equation(s):
-- \add_instance|ALU|sum~14_combout\ = (\add_instance|ALU_B\(0) $ (\add_instance|ALU_A\(0) $ (\add_instance|ALU|carry~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "c33c",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|ALU_B\(0),
	datac => \add_instance|ALU_A\(0),
	datad => \add_instance|ALU|carry~19_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|ALU|sum~14_combout\);

-- Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|ALU|result~0_combout\,
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_140,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|ALU|sum~0_combout\,
	oe => VCC,
	padio => ww_output_vector(1));

-- Location: PIN_143,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|ALU|sum~1_combout\,
	oe => VCC,
	padio => ww_output_vector(2));

-- Location: PIN_12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|ALU|sum~2_combout\,
	oe => VCC,
	padio => ww_output_vector(3));

-- Location: PIN_15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[4]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|ALU|sum~3_combout\,
	oe => VCC,
	padio => ww_output_vector(4));

-- Location: PIN_142,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[5]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|ALU|sum~4_combout\,
	oe => VCC,
	padio => ww_output_vector(5));

-- Location: PIN_6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[6]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|ALU|sum~5_combout\,
	oe => VCC,
	padio => ww_output_vector(6));

-- Location: PIN_4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[7]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|ALU|sum~6_combout\,
	oe => VCC,
	padio => ww_output_vector(7));

-- Location: PIN_16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[8]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|ALU|sum~7_combout\,
	oe => VCC,
	padio => ww_output_vector(8));

-- Location: PIN_23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[9]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|ALU|sum~8_combout\,
	oe => VCC,
	padio => ww_output_vector(9));

-- Location: PIN_5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[10]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|ALU|sum~9_combout\,
	oe => VCC,
	padio => ww_output_vector(10));

-- Location: PIN_8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[11]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|ALU|sum~10_combout\,
	oe => VCC,
	padio => ww_output_vector(11));

-- Location: PIN_3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[12]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|ALU|sum~11_combout\,
	oe => VCC,
	padio => ww_output_vector(12));

-- Location: PIN_1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[13]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|ALU|sum~12_combout\,
	oe => VCC,
	padio => ww_output_vector(13));

-- Location: PIN_14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[14]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|ALU|sum~13_combout\,
	oe => VCC,
	padio => ww_output_vector(14));

-- Location: PIN_7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[15]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|ALU|sum~14_combout\,
	oe => VCC,
	padio => ww_output_vector(15));
END structure;


