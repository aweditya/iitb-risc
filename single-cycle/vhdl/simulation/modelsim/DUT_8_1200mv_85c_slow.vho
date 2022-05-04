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

-- DATE "05/04/2022 15:53:15"

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
-- input_vector[0]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[0]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[1]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[2]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[3]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[4]	=>  Location: PIN_E5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[5]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[6]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[7]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[8]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[9]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[10]	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[11]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[12]	=>  Location: PIN_T2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[13]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[14]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output_vector[15]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- input_vector[1]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL \input_vector[1]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \input_vector[0]~input_o\ : std_logic;
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
SIGNAL \add_instance|rf|RF[7][0]~q\ : std_logic;
SIGNAL \add_instance|incrementer|sum~5_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[7][1]~q\ : std_logic;
SIGNAL \add_instance|incrementer|sum~4_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[7][2]~q\ : std_logic;
SIGNAL \add_instance|incrementer|sum~3_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[7][3]~q\ : std_logic;
SIGNAL \add_instance|incrementer|carry~0_combout\ : std_logic;
SIGNAL \add_instance|incrementer|sum~2_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[7][4]~q\ : std_logic;
SIGNAL \add_instance|incrementer|sum~1_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[7][5]~q\ : std_logic;
SIGNAL \add_instance|incrementer|sum~0_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[7][6]~q\ : std_logic;
SIGNAL \add_instance|rom_unit|rom_data~2048_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[0][14]~q\ : std_logic;
SIGNAL \add_instance|rf_d3_mux|sel_out[14]~0_combout\ : std_logic;
SIGNAL \add_instance|rf_d3_mux|sel_out[14]~1_combout\ : std_logic;
SIGNAL \add_instance|rf|RF[0][15]~q\ : std_logic;
SIGNAL \add_instance|rom_unit|rom_data~2049_combout\ : std_logic;
SIGNAL \add_instance|rf_d3_mux|sel_out[15]~2_combout\ : std_logic;
SIGNAL \ALT_INV_input_vector[1]~inputclkctrl_outclk\ : std_logic;

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

\input_vector[1]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \input_vector[1]~input_o\);
\ALT_INV_input_vector[1]~inputclkctrl_outclk\ <= NOT \input_vector[1]~inputclkctrl_outclk\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X18_Y24_N16
\output_vector[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[0]~output_o\);

-- Location: IOOBUF_X28_Y24_N9
\output_vector[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[1]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\output_vector[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[2]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\output_vector[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[3]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\output_vector[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[4]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\output_vector[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[5]~output_o\);

-- Location: IOOBUF_X32_Y24_N9
\output_vector[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[6]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\output_vector[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \output_vector[7]~output_o\);

-- Location: IOOBUF_X28_Y24_N2
\output_vector[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[8]~output_o\);

-- Location: IOOBUF_X3_Y24_N23
\output_vector[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[9]~output_o\);

-- Location: IOOBUF_X0_Y18_N16
\output_vector[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[10]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\output_vector[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[11]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\output_vector[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[12]~output_o\);

-- Location: IOOBUF_X21_Y24_N16
\output_vector[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \output_vector[13]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\output_vector[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|rf_d3_mux|sel_out[14]~1_combout\,
	devoe => ww_devoe,
	o => \output_vector[14]~output_o\);

-- Location: IOOBUF_X0_Y4_N16
\output_vector[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \add_instance|rf_d3_mux|sel_out[15]~2_combout\,
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

-- Location: LCCOMB_X1_Y4_N4
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

-- Location: FF_X1_Y4_N5
\add_instance|rf|RF[7][0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf|RF[7][0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[7][0]~q\);

-- Location: LCCOMB_X1_Y4_N30
\add_instance|incrementer|sum~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|incrementer|sum~5_combout\ = \add_instance|rf|RF[7][0]~q\ $ (\add_instance|rf|RF[7][1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|rf|RF[7][0]~q\,
	datac => \add_instance|rf|RF[7][1]~q\,
	combout => \add_instance|incrementer|sum~5_combout\);

-- Location: FF_X1_Y4_N31
\add_instance|rf|RF[7][1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|incrementer|sum~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[7][1]~q\);

-- Location: LCCOMB_X1_Y4_N28
\add_instance|incrementer|sum~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|incrementer|sum~4_combout\ = \add_instance|rf|RF[7][2]~q\ $ (((\add_instance|rf|RF[7][1]~q\ & \add_instance|rf|RF[7][0]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][1]~q\,
	datab => \add_instance|rf|RF[7][0]~q\,
	datac => \add_instance|rf|RF[7][2]~q\,
	combout => \add_instance|incrementer|sum~4_combout\);

-- Location: FF_X1_Y4_N29
\add_instance|rf|RF[7][2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|incrementer|sum~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[7][2]~q\);

-- Location: LCCOMB_X1_Y4_N24
\add_instance|incrementer|sum~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|incrementer|sum~3_combout\ = \add_instance|rf|RF[7][3]~q\ $ (((\add_instance|rf|RF[7][1]~q\ & (\add_instance|rf|RF[7][0]~q\ & \add_instance|rf|RF[7][2]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][1]~q\,
	datab => \add_instance|rf|RF[7][0]~q\,
	datac => \add_instance|rf|RF[7][3]~q\,
	datad => \add_instance|rf|RF[7][2]~q\,
	combout => \add_instance|incrementer|sum~3_combout\);

-- Location: FF_X1_Y4_N25
\add_instance|rf|RF[7][3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|incrementer|sum~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[7][3]~q\);

-- Location: LCCOMB_X1_Y4_N12
\add_instance|incrementer|carry~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|incrementer|carry~0_combout\ = (\add_instance|rf|RF[7][1]~q\ & (\add_instance|rf|RF[7][3]~q\ & (\add_instance|rf|RF[7][0]~q\ & \add_instance|rf|RF[7][2]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][1]~q\,
	datab => \add_instance|rf|RF[7][3]~q\,
	datac => \add_instance|rf|RF[7][0]~q\,
	datad => \add_instance|rf|RF[7][2]~q\,
	combout => \add_instance|incrementer|carry~0_combout\);

-- Location: LCCOMB_X1_Y4_N22
\add_instance|incrementer|sum~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|incrementer|sum~2_combout\ = \add_instance|rf|RF[7][4]~q\ $ (\add_instance|incrementer|carry~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|rf|RF[7][4]~q\,
	datad => \add_instance|incrementer|carry~0_combout\,
	combout => \add_instance|incrementer|sum~2_combout\);

-- Location: FF_X1_Y4_N23
\add_instance|rf|RF[7][4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|incrementer|sum~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[7][4]~q\);

-- Location: LCCOMB_X1_Y4_N20
\add_instance|incrementer|sum~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|incrementer|sum~1_combout\ = \add_instance|rf|RF[7][5]~q\ $ (((\add_instance|rf|RF[7][4]~q\ & \add_instance|incrementer|carry~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|rf|RF[7][4]~q\,
	datac => \add_instance|rf|RF[7][5]~q\,
	datad => \add_instance|incrementer|carry~0_combout\,
	combout => \add_instance|incrementer|sum~1_combout\);

-- Location: FF_X1_Y4_N21
\add_instance|rf|RF[7][5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|incrementer|sum~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[7][5]~q\);

-- Location: LCCOMB_X1_Y4_N26
\add_instance|incrementer|sum~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|incrementer|sum~0_combout\ = \add_instance|rf|RF[7][6]~q\ $ (((\add_instance|rf|RF[7][4]~q\ & (\add_instance|rf|RF[7][5]~q\ & \add_instance|incrementer|carry~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][4]~q\,
	datab => \add_instance|rf|RF[7][5]~q\,
	datac => \add_instance|rf|RF[7][6]~q\,
	datad => \add_instance|incrementer|carry~0_combout\,
	combout => \add_instance|incrementer|sum~0_combout\);

-- Location: FF_X1_Y4_N27
\add_instance|rf|RF[7][6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|incrementer|sum~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[7][6]~q\);

-- Location: LCCOMB_X1_Y4_N10
\add_instance|rom_unit|rom_data~2048\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rom_unit|rom_data~2048_combout\ = (!\add_instance|rf|RF[7][6]~q\ & (!\add_instance|rf|RF[7][5]~q\ & (!\add_instance|rf|RF[7][4]~q\ & !\add_instance|rf|RF[7][3]~q\)))

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
	combout => \add_instance|rom_unit|rom_data~2048_combout\);

-- Location: FF_X1_Y4_N9
\add_instance|rf|RF[0][14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf_d3_mux|sel_out[14]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[0][14]~q\);

-- Location: LCCOMB_X1_Y4_N2
\add_instance|rf_d3_mux|sel_out[14]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_d3_mux|sel_out[14]~0_combout\ = (\add_instance|rf|RF[7][1]~q\) # (\add_instance|rf|RF[7][0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][1]~q\,
	datac => \add_instance|rf|RF[7][0]~q\,
	combout => \add_instance|rf_d3_mux|sel_out[14]~0_combout\);

-- Location: LCCOMB_X1_Y4_N8
\add_instance|rf_d3_mux|sel_out[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_d3_mux|sel_out[14]~1_combout\ = (\add_instance|rf|RF[0][14]~q\ & (((\add_instance|rf|RF[7][2]~q\) # (\add_instance|rf_d3_mux|sel_out[14]~0_combout\)) # (!\add_instance|rom_unit|rom_data~2048_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rom_unit|rom_data~2048_combout\,
	datab => \add_instance|rf|RF[7][2]~q\,
	datac => \add_instance|rf|RF[0][14]~q\,
	datad => \add_instance|rf_d3_mux|sel_out[14]~0_combout\,
	combout => \add_instance|rf_d3_mux|sel_out[14]~1_combout\);

-- Location: FF_X1_Y4_N17
\add_instance|rf|RF[0][15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_input_vector[1]~inputclkctrl_outclk\,
	d => \add_instance|rf_d3_mux|sel_out[15]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \add_instance|rf|RF[0][15]~q\);

-- Location: LCCOMB_X1_Y4_N6
\add_instance|rom_unit|rom_data~2049\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rom_unit|rom_data~2049_combout\ = (!\add_instance|rf|RF[7][1]~q\ & (!\add_instance|rf|RF[7][2]~q\ & (!\add_instance|rf|RF[7][0]~q\ & \add_instance|rom_unit|rom_data~2048_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \add_instance|rf|RF[7][1]~q\,
	datab => \add_instance|rf|RF[7][2]~q\,
	datac => \add_instance|rf|RF[7][0]~q\,
	datad => \add_instance|rom_unit|rom_data~2048_combout\,
	combout => \add_instance|rom_unit|rom_data~2049_combout\);

-- Location: LCCOMB_X1_Y4_N16
\add_instance|rf_d3_mux|sel_out[15]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \add_instance|rf_d3_mux|sel_out[15]~2_combout\ = (\add_instance|rf|RF[0][15]~q\ & !\add_instance|rom_unit|rom_data~2049_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \add_instance|rf|RF[0][15]~q\,
	datad => \add_instance|rom_unit|rom_data~2049_combout\,
	combout => \add_instance|rf_d3_mux|sel_out[15]~2_combout\);

-- Location: IOIBUF_X3_Y24_N15
\input_vector[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_input_vector(0),
	o => \input_vector[0]~input_o\);

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


