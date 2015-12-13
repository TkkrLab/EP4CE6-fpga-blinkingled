-- Copyright (C) 1991-2015 Altera Corporation. All rights reserved.
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, the Altera Quartus Prime License Agreement,
-- the Altera MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Altera and sold by Altera or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 15.1.0 Build 185 10/21/2015 SJ Lite Edition"

-- DATE "12/13/2015 03:35:03"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	full_device IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	led : OUT std_logic;
	speedButton : IN std_logic
	);
END full_device;

-- Design Ports Information
-- led	=>  Location: PIN_141,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- speedButton	=>  Location: PIN_24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- clk	=>  Location: PIN_91,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- reset	=>  Location: PIN_25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default


ARCHITECTURE structure OF full_device IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_led : std_logic;
SIGNAL ww_speedButton : std_logic;
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \led~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \E_blinkingled|blink:counter[31]~q\ : std_logic;
SIGNAL \E_blinkingled|Add0~0_combout\ : std_logic;
SIGNAL \E_blinkingled|counter~30_combout\ : std_logic;
SIGNAL \E_blinkingled|blink:counter[0]~q\ : std_logic;
SIGNAL \E_blinkingled|Add0~1\ : std_logic;
SIGNAL \E_blinkingled|Add0~2_combout\ : std_logic;
SIGNAL \E_blinkingled|counter~29_combout\ : std_logic;
SIGNAL \E_blinkingled|blink:counter[1]~q\ : std_logic;
SIGNAL \E_blinkingled|Add0~3\ : std_logic;
SIGNAL \E_blinkingled|Add0~4_combout\ : std_logic;
SIGNAL \E_blinkingled|counter~28_combout\ : std_logic;
SIGNAL \E_blinkingled|blink:counter[2]~q\ : std_logic;
SIGNAL \E_blinkingled|Add0~5\ : std_logic;
SIGNAL \E_blinkingled|Add0~6_combout\ : std_logic;
SIGNAL \E_blinkingled|counter~27_combout\ : std_logic;
SIGNAL \E_blinkingled|blink:counter[3]~q\ : std_logic;
SIGNAL \E_blinkingled|Add0~7\ : std_logic;
SIGNAL \E_blinkingled|Add0~8_combout\ : std_logic;
SIGNAL \E_blinkingled|counter~26_combout\ : std_logic;
SIGNAL \E_blinkingled|blink:counter[4]~q\ : std_logic;
SIGNAL \E_blinkingled|Add0~9\ : std_logic;
SIGNAL \E_blinkingled|Add0~10_combout\ : std_logic;
SIGNAL \E_blinkingled|counter~25_combout\ : std_logic;
SIGNAL \E_blinkingled|blink:counter[5]~q\ : std_logic;
SIGNAL \E_blinkingled|Add0~11\ : std_logic;
SIGNAL \E_blinkingled|Add0~12_combout\ : std_logic;
SIGNAL \E_blinkingled|counter~24_combout\ : std_logic;
SIGNAL \E_blinkingled|blink:counter[6]~q\ : std_logic;
SIGNAL \E_blinkingled|Add0~13\ : std_logic;
SIGNAL \E_blinkingled|Add0~14_combout\ : std_logic;
SIGNAL \E_blinkingled|counter~23_combout\ : std_logic;
SIGNAL \E_blinkingled|blink:counter[7]~q\ : std_logic;
SIGNAL \E_blinkingled|Add0~15\ : std_logic;
SIGNAL \E_blinkingled|Add0~16_combout\ : std_logic;
SIGNAL \E_blinkingled|counter~22_combout\ : std_logic;
SIGNAL \E_blinkingled|blink:counter[8]~q\ : std_logic;
SIGNAL \E_blinkingled|Add0~17\ : std_logic;
SIGNAL \E_blinkingled|Add0~18_combout\ : std_logic;
SIGNAL \E_blinkingled|counter~21_combout\ : std_logic;
SIGNAL \E_blinkingled|blink:counter[9]~q\ : std_logic;
SIGNAL \E_blinkingled|Add0~19\ : std_logic;
SIGNAL \E_blinkingled|Add0~20_combout\ : std_logic;
SIGNAL \E_blinkingled|counter~20_combout\ : std_logic;
SIGNAL \E_blinkingled|blink:counter[10]~q\ : std_logic;
SIGNAL \E_blinkingled|Add0~21\ : std_logic;
SIGNAL \E_blinkingled|Add0~22_combout\ : std_logic;
SIGNAL \E_blinkingled|counter~19_combout\ : std_logic;
SIGNAL \E_blinkingled|blink:counter[11]~q\ : std_logic;
SIGNAL \E_blinkingled|Add0~23\ : std_logic;
SIGNAL \E_blinkingled|Add0~24_combout\ : std_logic;
SIGNAL \E_blinkingled|counter~18_combout\ : std_logic;
SIGNAL \E_blinkingled|blink:counter[12]~q\ : std_logic;
SIGNAL \E_blinkingled|Add0~25\ : std_logic;
SIGNAL \E_blinkingled|Add0~26_combout\ : std_logic;
SIGNAL \E_blinkingled|counter~17_combout\ : std_logic;
SIGNAL \E_blinkingled|blink:counter[13]~q\ : std_logic;
SIGNAL \E_blinkingled|Add0~27\ : std_logic;
SIGNAL \E_blinkingled|Add0~28_combout\ : std_logic;
SIGNAL \E_blinkingled|counter~16_combout\ : std_logic;
SIGNAL \E_blinkingled|blink:counter[14]~q\ : std_logic;
SIGNAL \E_blinkingled|Add0~29\ : std_logic;
SIGNAL \E_blinkingled|Add0~30_combout\ : std_logic;
SIGNAL \E_blinkingled|counter~15_combout\ : std_logic;
SIGNAL \E_blinkingled|blink:counter[15]~q\ : std_logic;
SIGNAL \E_blinkingled|Add0~31\ : std_logic;
SIGNAL \E_blinkingled|Add0~32_combout\ : std_logic;
SIGNAL \E_blinkingled|counter~14_combout\ : std_logic;
SIGNAL \E_blinkingled|blink:counter[16]~q\ : std_logic;
SIGNAL \E_blinkingled|Add0~33\ : std_logic;
SIGNAL \E_blinkingled|Add0~34_combout\ : std_logic;
SIGNAL \E_blinkingled|counter~13_combout\ : std_logic;
SIGNAL \E_blinkingled|blink:counter[17]~q\ : std_logic;
SIGNAL \E_blinkingled|Add0~35\ : std_logic;
SIGNAL \E_blinkingled|Add0~36_combout\ : std_logic;
SIGNAL \E_blinkingled|counter~12_combout\ : std_logic;
SIGNAL \E_blinkingled|blink:counter[18]~q\ : std_logic;
SIGNAL \E_blinkingled|Add0~37\ : std_logic;
SIGNAL \E_blinkingled|Add0~38_combout\ : std_logic;
SIGNAL \E_blinkingled|counter~11_combout\ : std_logic;
SIGNAL \E_blinkingled|blink:counter[19]~q\ : std_logic;
SIGNAL \E_blinkingled|Add0~39\ : std_logic;
SIGNAL \E_blinkingled|Add0~40_combout\ : std_logic;
SIGNAL \E_blinkingled|counter~10_combout\ : std_logic;
SIGNAL \E_blinkingled|blink:counter[20]~q\ : std_logic;
SIGNAL \E_blinkingled|Add0~41\ : std_logic;
SIGNAL \E_blinkingled|Add0~42_combout\ : std_logic;
SIGNAL \E_blinkingled|counter~9_combout\ : std_logic;
SIGNAL \E_blinkingled|blink:counter[21]~q\ : std_logic;
SIGNAL \E_blinkingled|Add0~43\ : std_logic;
SIGNAL \E_blinkingled|Add0~44_combout\ : std_logic;
SIGNAL \E_blinkingled|counter~8_combout\ : std_logic;
SIGNAL \E_blinkingled|blink:counter[22]~q\ : std_logic;
SIGNAL \E_blinkingled|Add0~45\ : std_logic;
SIGNAL \E_blinkingled|Add0~46_combout\ : std_logic;
SIGNAL \E_blinkingled|counter~7_combout\ : std_logic;
SIGNAL \E_blinkingled|blink:counter[23]~q\ : std_logic;
SIGNAL \E_blinkingled|Add0~47\ : std_logic;
SIGNAL \E_blinkingled|Add0~48_combout\ : std_logic;
SIGNAL \E_blinkingled|counter~6_combout\ : std_logic;
SIGNAL \E_blinkingled|blink:counter[24]~q\ : std_logic;
SIGNAL \E_blinkingled|Add0~49\ : std_logic;
SIGNAL \E_blinkingled|Add0~50_combout\ : std_logic;
SIGNAL \E_blinkingled|counter~5_combout\ : std_logic;
SIGNAL \E_blinkingled|blink:counter[25]~q\ : std_logic;
SIGNAL \E_blinkingled|Add0~51\ : std_logic;
SIGNAL \E_blinkingled|Add0~52_combout\ : std_logic;
SIGNAL \E_blinkingled|counter~4_combout\ : std_logic;
SIGNAL \E_blinkingled|blink:counter[26]~q\ : std_logic;
SIGNAL \E_blinkingled|Add0~53\ : std_logic;
SIGNAL \E_blinkingled|Add0~54_combout\ : std_logic;
SIGNAL \E_blinkingled|counter~3_combout\ : std_logic;
SIGNAL \E_blinkingled|blink:counter[27]~q\ : std_logic;
SIGNAL \E_blinkingled|Add0~55\ : std_logic;
SIGNAL \E_blinkingled|Add0~56_combout\ : std_logic;
SIGNAL \E_blinkingled|counter~2_combout\ : std_logic;
SIGNAL \E_blinkingled|blink:counter[28]~q\ : std_logic;
SIGNAL \E_blinkingled|Add0~57\ : std_logic;
SIGNAL \E_blinkingled|Add0~58_combout\ : std_logic;
SIGNAL \E_blinkingled|counter~1_combout\ : std_logic;
SIGNAL \E_blinkingled|blink:counter[29]~q\ : std_logic;
SIGNAL \E_blinkingled|Add0~59\ : std_logic;
SIGNAL \E_blinkingled|Add0~60_combout\ : std_logic;
SIGNAL \E_blinkingled|counter~0_combout\ : std_logic;
SIGNAL \E_blinkingled|blink:counter[30]~q\ : std_logic;
SIGNAL \E_blinkingled|Add0~61\ : std_logic;
SIGNAL \E_blinkingled|Add0~62_combout\ : std_logic;
SIGNAL \speedButton~input_o\ : std_logic;
SIGNAL \E_blinkingled|LessThan1~0_combout\ : std_logic;
SIGNAL \E_blinkingled|blink~0_combout\ : std_logic;
SIGNAL \E_blinkingled|LessThan1~1_combout\ : std_logic;
SIGNAL \E_blinkingled|LessThan1~2_combout\ : std_logic;
SIGNAL \E_blinkingled|LessThan1~3_combout\ : std_logic;
SIGNAL \E_blinkingled|blink~1_combout\ : std_logic;
SIGNAL \E_blinkingled|blink~2_combout\ : std_logic;
SIGNAL \E_blinkingled|LessThan0~4_combout\ : std_logic;
SIGNAL \E_blinkingled|LessThan0~5_combout\ : std_logic;
SIGNAL \E_blinkingled|LessThan0~2_combout\ : std_logic;
SIGNAL \E_blinkingled|LessThan0~0_combout\ : std_logic;
SIGNAL \E_blinkingled|LessThan0~1_combout\ : std_logic;
SIGNAL \E_blinkingled|LessThan0~3_combout\ : std_logic;
SIGNAL \E_blinkingled|blink~3_combout\ : std_logic;
SIGNAL \E_blinkingled|blink~4_combout\ : std_logic;
SIGNAL \E_blinkingled|blink~5_combout\ : std_logic;
SIGNAL \E_blinkingled|blink~6_combout\ : std_logic;
SIGNAL \E_blinkingled|blink:ledstate~0_combout\ : std_logic;
SIGNAL \E_blinkingled|blink:ledstate~q\ : std_logic;
SIGNAL \ALT_INV_clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_reset~inputclkctrl_outclk\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
led <= ww_led;
ww_speedButton <= speedButton;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\ALT_INV_clk~inputclkctrl_outclk\ <= NOT \clk~inputclkctrl_outclk\;
\ALT_INV_reset~inputclkctrl_outclk\ <= NOT \reset~inputclkctrl_outclk\;

-- Location: IOOBUF_X5_Y24_N9
\led~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \E_blinkingled|blink:ledstate~q\,
	devoe => ww_devoe,
	o => \led~output_o\);

-- Location: IOIBUF_X34_Y12_N1
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G9
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y11_N22
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G3
\reset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X11_Y13_N15
\E_blinkingled|blink:counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	asdata => \E_blinkingled|Add0~62_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E_blinkingled|blink:counter[31]~q\);

-- Location: LCCOMB_X11_Y14_N0
\E_blinkingled|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|Add0~0_combout\ = \E_blinkingled|blink:counter[0]~q\ $ (VCC)
-- \E_blinkingled|Add0~1\ = CARRY(\E_blinkingled|blink:counter[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \E_blinkingled|blink:counter[0]~q\,
	datad => VCC,
	combout => \E_blinkingled|Add0~0_combout\,
	cout => \E_blinkingled|Add0~1\);

-- Location: LCCOMB_X12_Y13_N0
\E_blinkingled|counter~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|counter~30_combout\ = (\E_blinkingled|Add0~0_combout\ & \E_blinkingled|blink~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E_blinkingled|Add0~0_combout\,
	datac => \E_blinkingled|blink~6_combout\,
	combout => \E_blinkingled|counter~30_combout\);

-- Location: FF_X12_Y13_N1
\E_blinkingled|blink:counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \E_blinkingled|counter~30_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E_blinkingled|blink:counter[0]~q\);

-- Location: LCCOMB_X11_Y14_N2
\E_blinkingled|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|Add0~2_combout\ = (\E_blinkingled|blink:counter[1]~q\ & (!\E_blinkingled|Add0~1\)) # (!\E_blinkingled|blink:counter[1]~q\ & ((\E_blinkingled|Add0~1\) # (GND)))
-- \E_blinkingled|Add0~3\ = CARRY((!\E_blinkingled|Add0~1\) # (!\E_blinkingled|blink:counter[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \E_blinkingled|blink:counter[1]~q\,
	datad => VCC,
	cin => \E_blinkingled|Add0~1\,
	combout => \E_blinkingled|Add0~2_combout\,
	cout => \E_blinkingled|Add0~3\);

-- Location: LCCOMB_X12_Y13_N6
\E_blinkingled|counter~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|counter~29_combout\ = (\E_blinkingled|Add0~2_combout\ & \E_blinkingled|blink~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \E_blinkingled|Add0~2_combout\,
	datac => \E_blinkingled|blink~6_combout\,
	combout => \E_blinkingled|counter~29_combout\);

-- Location: FF_X12_Y13_N7
\E_blinkingled|blink:counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \E_blinkingled|counter~29_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E_blinkingled|blink:counter[1]~q\);

-- Location: LCCOMB_X11_Y14_N4
\E_blinkingled|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|Add0~4_combout\ = (\E_blinkingled|blink:counter[2]~q\ & (\E_blinkingled|Add0~3\ $ (GND))) # (!\E_blinkingled|blink:counter[2]~q\ & (!\E_blinkingled|Add0~3\ & VCC))
-- \E_blinkingled|Add0~5\ = CARRY((\E_blinkingled|blink:counter[2]~q\ & !\E_blinkingled|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \E_blinkingled|blink:counter[2]~q\,
	datad => VCC,
	cin => \E_blinkingled|Add0~3\,
	combout => \E_blinkingled|Add0~4_combout\,
	cout => \E_blinkingled|Add0~5\);

-- Location: LCCOMB_X12_Y13_N8
\E_blinkingled|counter~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|counter~28_combout\ = (\E_blinkingled|Add0~4_combout\ & \E_blinkingled|blink~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \E_blinkingled|Add0~4_combout\,
	datac => \E_blinkingled|blink~6_combout\,
	combout => \E_blinkingled|counter~28_combout\);

-- Location: FF_X12_Y13_N9
\E_blinkingled|blink:counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \E_blinkingled|counter~28_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E_blinkingled|blink:counter[2]~q\);

-- Location: LCCOMB_X11_Y14_N6
\E_blinkingled|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|Add0~6_combout\ = (\E_blinkingled|blink:counter[3]~q\ & (!\E_blinkingled|Add0~5\)) # (!\E_blinkingled|blink:counter[3]~q\ & ((\E_blinkingled|Add0~5\) # (GND)))
-- \E_blinkingled|Add0~7\ = CARRY((!\E_blinkingled|Add0~5\) # (!\E_blinkingled|blink:counter[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \E_blinkingled|blink:counter[3]~q\,
	datad => VCC,
	cin => \E_blinkingled|Add0~5\,
	combout => \E_blinkingled|Add0~6_combout\,
	cout => \E_blinkingled|Add0~7\);

-- Location: LCCOMB_X12_Y13_N2
\E_blinkingled|counter~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|counter~27_combout\ = (\E_blinkingled|Add0~6_combout\ & \E_blinkingled|blink~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E_blinkingled|Add0~6_combout\,
	datac => \E_blinkingled|blink~6_combout\,
	combout => \E_blinkingled|counter~27_combout\);

-- Location: FF_X12_Y13_N3
\E_blinkingled|blink:counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \E_blinkingled|counter~27_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E_blinkingled|blink:counter[3]~q\);

-- Location: LCCOMB_X11_Y14_N8
\E_blinkingled|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|Add0~8_combout\ = (\E_blinkingled|blink:counter[4]~q\ & (\E_blinkingled|Add0~7\ $ (GND))) # (!\E_blinkingled|blink:counter[4]~q\ & (!\E_blinkingled|Add0~7\ & VCC))
-- \E_blinkingled|Add0~9\ = CARRY((\E_blinkingled|blink:counter[4]~q\ & !\E_blinkingled|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \E_blinkingled|blink:counter[4]~q\,
	datad => VCC,
	cin => \E_blinkingled|Add0~7\,
	combout => \E_blinkingled|Add0~8_combout\,
	cout => \E_blinkingled|Add0~9\);

-- Location: LCCOMB_X12_Y13_N12
\E_blinkingled|counter~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|counter~26_combout\ = (\E_blinkingled|Add0~8_combout\ & \E_blinkingled|blink~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E_blinkingled|Add0~8_combout\,
	datac => \E_blinkingled|blink~6_combout\,
	combout => \E_blinkingled|counter~26_combout\);

-- Location: FF_X12_Y13_N13
\E_blinkingled|blink:counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \E_blinkingled|counter~26_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E_blinkingled|blink:counter[4]~q\);

-- Location: LCCOMB_X11_Y14_N10
\E_blinkingled|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|Add0~10_combout\ = (\E_blinkingled|blink:counter[5]~q\ & (!\E_blinkingled|Add0~9\)) # (!\E_blinkingled|blink:counter[5]~q\ & ((\E_blinkingled|Add0~9\) # (GND)))
-- \E_blinkingled|Add0~11\ = CARRY((!\E_blinkingled|Add0~9\) # (!\E_blinkingled|blink:counter[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \E_blinkingled|blink:counter[5]~q\,
	datad => VCC,
	cin => \E_blinkingled|Add0~9\,
	combout => \E_blinkingled|Add0~10_combout\,
	cout => \E_blinkingled|Add0~11\);

-- Location: LCCOMB_X12_Y14_N22
\E_blinkingled|counter~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|counter~25_combout\ = (\E_blinkingled|Add0~10_combout\ & \E_blinkingled|blink~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E_blinkingled|Add0~10_combout\,
	datad => \E_blinkingled|blink~6_combout\,
	combout => \E_blinkingled|counter~25_combout\);

-- Location: FF_X12_Y14_N23
\E_blinkingled|blink:counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \E_blinkingled|counter~25_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E_blinkingled|blink:counter[5]~q\);

-- Location: LCCOMB_X11_Y14_N12
\E_blinkingled|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|Add0~12_combout\ = (\E_blinkingled|blink:counter[6]~q\ & (\E_blinkingled|Add0~11\ $ (GND))) # (!\E_blinkingled|blink:counter[6]~q\ & (!\E_blinkingled|Add0~11\ & VCC))
-- \E_blinkingled|Add0~13\ = CARRY((\E_blinkingled|blink:counter[6]~q\ & !\E_blinkingled|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \E_blinkingled|blink:counter[6]~q\,
	datad => VCC,
	cin => \E_blinkingled|Add0~11\,
	combout => \E_blinkingled|Add0~12_combout\,
	cout => \E_blinkingled|Add0~13\);

-- Location: LCCOMB_X12_Y13_N26
\E_blinkingled|counter~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|counter~24_combout\ = (\E_blinkingled|Add0~12_combout\ & \E_blinkingled|blink~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \E_blinkingled|Add0~12_combout\,
	datac => \E_blinkingled|blink~6_combout\,
	combout => \E_blinkingled|counter~24_combout\);

-- Location: FF_X12_Y13_N27
\E_blinkingled|blink:counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \E_blinkingled|counter~24_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E_blinkingled|blink:counter[6]~q\);

-- Location: LCCOMB_X11_Y14_N14
\E_blinkingled|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|Add0~14_combout\ = (\E_blinkingled|blink:counter[7]~q\ & (!\E_blinkingled|Add0~13\)) # (!\E_blinkingled|blink:counter[7]~q\ & ((\E_blinkingled|Add0~13\) # (GND)))
-- \E_blinkingled|Add0~15\ = CARRY((!\E_blinkingled|Add0~13\) # (!\E_blinkingled|blink:counter[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \E_blinkingled|blink:counter[7]~q\,
	datad => VCC,
	cin => \E_blinkingled|Add0~13\,
	combout => \E_blinkingled|Add0~14_combout\,
	cout => \E_blinkingled|Add0~15\);

-- Location: LCCOMB_X12_Y13_N16
\E_blinkingled|counter~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|counter~23_combout\ = (\E_blinkingled|Add0~14_combout\ & \E_blinkingled|blink~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \E_blinkingled|Add0~14_combout\,
	datac => \E_blinkingled|blink~6_combout\,
	combout => \E_blinkingled|counter~23_combout\);

-- Location: FF_X12_Y13_N17
\E_blinkingled|blink:counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \E_blinkingled|counter~23_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E_blinkingled|blink:counter[7]~q\);

-- Location: LCCOMB_X11_Y14_N16
\E_blinkingled|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|Add0~16_combout\ = (\E_blinkingled|blink:counter[8]~q\ & (\E_blinkingled|Add0~15\ $ (GND))) # (!\E_blinkingled|blink:counter[8]~q\ & (!\E_blinkingled|Add0~15\ & VCC))
-- \E_blinkingled|Add0~17\ = CARRY((\E_blinkingled|blink:counter[8]~q\ & !\E_blinkingled|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \E_blinkingled|blink:counter[8]~q\,
	datad => VCC,
	cin => \E_blinkingled|Add0~15\,
	combout => \E_blinkingled|Add0~16_combout\,
	cout => \E_blinkingled|Add0~17\);

-- Location: LCCOMB_X12_Y13_N22
\E_blinkingled|counter~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|counter~22_combout\ = (\E_blinkingled|Add0~16_combout\ & \E_blinkingled|blink~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E_blinkingled|Add0~16_combout\,
	datac => \E_blinkingled|blink~6_combout\,
	combout => \E_blinkingled|counter~22_combout\);

-- Location: FF_X12_Y13_N23
\E_blinkingled|blink:counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \E_blinkingled|counter~22_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E_blinkingled|blink:counter[8]~q\);

-- Location: LCCOMB_X11_Y14_N18
\E_blinkingled|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|Add0~18_combout\ = (\E_blinkingled|blink:counter[9]~q\ & (!\E_blinkingled|Add0~17\)) # (!\E_blinkingled|blink:counter[9]~q\ & ((\E_blinkingled|Add0~17\) # (GND)))
-- \E_blinkingled|Add0~19\ = CARRY((!\E_blinkingled|Add0~17\) # (!\E_blinkingled|blink:counter[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \E_blinkingled|blink:counter[9]~q\,
	datad => VCC,
	cin => \E_blinkingled|Add0~17\,
	combout => \E_blinkingled|Add0~18_combout\,
	cout => \E_blinkingled|Add0~19\);

-- Location: LCCOMB_X12_Y14_N0
\E_blinkingled|counter~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|counter~21_combout\ = (\E_blinkingled|Add0~18_combout\ & \E_blinkingled|blink~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \E_blinkingled|Add0~18_combout\,
	datad => \E_blinkingled|blink~6_combout\,
	combout => \E_blinkingled|counter~21_combout\);

-- Location: FF_X12_Y14_N1
\E_blinkingled|blink:counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \E_blinkingled|counter~21_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E_blinkingled|blink:counter[9]~q\);

-- Location: LCCOMB_X11_Y14_N20
\E_blinkingled|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|Add0~20_combout\ = (\E_blinkingled|blink:counter[10]~q\ & (\E_blinkingled|Add0~19\ $ (GND))) # (!\E_blinkingled|blink:counter[10]~q\ & (!\E_blinkingled|Add0~19\ & VCC))
-- \E_blinkingled|Add0~21\ = CARRY((\E_blinkingled|blink:counter[10]~q\ & !\E_blinkingled|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \E_blinkingled|blink:counter[10]~q\,
	datad => VCC,
	cin => \E_blinkingled|Add0~19\,
	combout => \E_blinkingled|Add0~20_combout\,
	cout => \E_blinkingled|Add0~21\);

-- Location: LCCOMB_X12_Y14_N30
\E_blinkingled|counter~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|counter~20_combout\ = (\E_blinkingled|Add0~20_combout\ & \E_blinkingled|blink~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \E_blinkingled|Add0~20_combout\,
	datad => \E_blinkingled|blink~6_combout\,
	combout => \E_blinkingled|counter~20_combout\);

-- Location: FF_X12_Y14_N31
\E_blinkingled|blink:counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \E_blinkingled|counter~20_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E_blinkingled|blink:counter[10]~q\);

-- Location: LCCOMB_X11_Y14_N22
\E_blinkingled|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|Add0~22_combout\ = (\E_blinkingled|blink:counter[11]~q\ & (!\E_blinkingled|Add0~21\)) # (!\E_blinkingled|blink:counter[11]~q\ & ((\E_blinkingled|Add0~21\) # (GND)))
-- \E_blinkingled|Add0~23\ = CARRY((!\E_blinkingled|Add0~21\) # (!\E_blinkingled|blink:counter[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \E_blinkingled|blink:counter[11]~q\,
	datad => VCC,
	cin => \E_blinkingled|Add0~21\,
	combout => \E_blinkingled|Add0~22_combout\,
	cout => \E_blinkingled|Add0~23\);

-- Location: LCCOMB_X12_Y14_N4
\E_blinkingled|counter~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|counter~19_combout\ = (\E_blinkingled|Add0~22_combout\ & \E_blinkingled|blink~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \E_blinkingled|Add0~22_combout\,
	datad => \E_blinkingled|blink~6_combout\,
	combout => \E_blinkingled|counter~19_combout\);

-- Location: FF_X12_Y14_N5
\E_blinkingled|blink:counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \E_blinkingled|counter~19_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E_blinkingled|blink:counter[11]~q\);

-- Location: LCCOMB_X11_Y14_N24
\E_blinkingled|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|Add0~24_combout\ = (\E_blinkingled|blink:counter[12]~q\ & (\E_blinkingled|Add0~23\ $ (GND))) # (!\E_blinkingled|blink:counter[12]~q\ & (!\E_blinkingled|Add0~23\ & VCC))
-- \E_blinkingled|Add0~25\ = CARRY((\E_blinkingled|blink:counter[12]~q\ & !\E_blinkingled|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \E_blinkingled|blink:counter[12]~q\,
	datad => VCC,
	cin => \E_blinkingled|Add0~23\,
	combout => \E_blinkingled|Add0~24_combout\,
	cout => \E_blinkingled|Add0~25\);

-- Location: LCCOMB_X12_Y13_N4
\E_blinkingled|counter~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|counter~18_combout\ = (\E_blinkingled|Add0~24_combout\ & \E_blinkingled|blink~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \E_blinkingled|Add0~24_combout\,
	datac => \E_blinkingled|blink~6_combout\,
	combout => \E_blinkingled|counter~18_combout\);

-- Location: FF_X12_Y13_N5
\E_blinkingled|blink:counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \E_blinkingled|counter~18_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E_blinkingled|blink:counter[12]~q\);

-- Location: LCCOMB_X11_Y14_N26
\E_blinkingled|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|Add0~26_combout\ = (\E_blinkingled|blink:counter[13]~q\ & (!\E_blinkingled|Add0~25\)) # (!\E_blinkingled|blink:counter[13]~q\ & ((\E_blinkingled|Add0~25\) # (GND)))
-- \E_blinkingled|Add0~27\ = CARRY((!\E_blinkingled|Add0~25\) # (!\E_blinkingled|blink:counter[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \E_blinkingled|blink:counter[13]~q\,
	datad => VCC,
	cin => \E_blinkingled|Add0~25\,
	combout => \E_blinkingled|Add0~26_combout\,
	cout => \E_blinkingled|Add0~27\);

-- Location: LCCOMB_X12_Y13_N30
\E_blinkingled|counter~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|counter~17_combout\ = (\E_blinkingled|blink~6_combout\ & \E_blinkingled|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \E_blinkingled|blink~6_combout\,
	datad => \E_blinkingled|Add0~26_combout\,
	combout => \E_blinkingled|counter~17_combout\);

-- Location: FF_X12_Y13_N31
\E_blinkingled|blink:counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \E_blinkingled|counter~17_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E_blinkingled|blink:counter[13]~q\);

-- Location: LCCOMB_X11_Y14_N28
\E_blinkingled|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|Add0~28_combout\ = (\E_blinkingled|blink:counter[14]~q\ & (\E_blinkingled|Add0~27\ $ (GND))) # (!\E_blinkingled|blink:counter[14]~q\ & (!\E_blinkingled|Add0~27\ & VCC))
-- \E_blinkingled|Add0~29\ = CARRY((\E_blinkingled|blink:counter[14]~q\ & !\E_blinkingled|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \E_blinkingled|blink:counter[14]~q\,
	datad => VCC,
	cin => \E_blinkingled|Add0~27\,
	combout => \E_blinkingled|Add0~28_combout\,
	cout => \E_blinkingled|Add0~29\);

-- Location: LCCOMB_X14_Y13_N22
\E_blinkingled|counter~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|counter~16_combout\ = (\E_blinkingled|Add0~28_combout\ & \E_blinkingled|blink~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \E_blinkingled|Add0~28_combout\,
	datad => \E_blinkingled|blink~6_combout\,
	combout => \E_blinkingled|counter~16_combout\);

-- Location: FF_X14_Y13_N23
\E_blinkingled|blink:counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \E_blinkingled|counter~16_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E_blinkingled|blink:counter[14]~q\);

-- Location: LCCOMB_X11_Y14_N30
\E_blinkingled|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|Add0~30_combout\ = (\E_blinkingled|blink:counter[15]~q\ & (!\E_blinkingled|Add0~29\)) # (!\E_blinkingled|blink:counter[15]~q\ & ((\E_blinkingled|Add0~29\) # (GND)))
-- \E_blinkingled|Add0~31\ = CARRY((!\E_blinkingled|Add0~29\) # (!\E_blinkingled|blink:counter[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \E_blinkingled|blink:counter[15]~q\,
	datad => VCC,
	cin => \E_blinkingled|Add0~29\,
	combout => \E_blinkingled|Add0~30_combout\,
	cout => \E_blinkingled|Add0~31\);

-- Location: LCCOMB_X12_Y13_N20
\E_blinkingled|counter~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|counter~15_combout\ = (\E_blinkingled|Add0~30_combout\ & \E_blinkingled|blink~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \E_blinkingled|Add0~30_combout\,
	datac => \E_blinkingled|blink~6_combout\,
	combout => \E_blinkingled|counter~15_combout\);

-- Location: FF_X12_Y13_N21
\E_blinkingled|blink:counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \E_blinkingled|counter~15_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E_blinkingled|blink:counter[15]~q\);

-- Location: LCCOMB_X11_Y13_N0
\E_blinkingled|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|Add0~32_combout\ = (\E_blinkingled|blink:counter[16]~q\ & (\E_blinkingled|Add0~31\ $ (GND))) # (!\E_blinkingled|blink:counter[16]~q\ & (!\E_blinkingled|Add0~31\ & VCC))
-- \E_blinkingled|Add0~33\ = CARRY((\E_blinkingled|blink:counter[16]~q\ & !\E_blinkingled|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \E_blinkingled|blink:counter[16]~q\,
	datad => VCC,
	cin => \E_blinkingled|Add0~31\,
	combout => \E_blinkingled|Add0~32_combout\,
	cout => \E_blinkingled|Add0~33\);

-- Location: LCCOMB_X13_Y13_N0
\E_blinkingled|counter~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|counter~14_combout\ = (\E_blinkingled|Add0~32_combout\ & \E_blinkingled|blink~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E_blinkingled|Add0~32_combout\,
	datac => \E_blinkingled|blink~6_combout\,
	combout => \E_blinkingled|counter~14_combout\);

-- Location: FF_X13_Y13_N1
\E_blinkingled|blink:counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \E_blinkingled|counter~14_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E_blinkingled|blink:counter[16]~q\);

-- Location: LCCOMB_X11_Y13_N2
\E_blinkingled|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|Add0~34_combout\ = (\E_blinkingled|blink:counter[17]~q\ & (!\E_blinkingled|Add0~33\)) # (!\E_blinkingled|blink:counter[17]~q\ & ((\E_blinkingled|Add0~33\) # (GND)))
-- \E_blinkingled|Add0~35\ = CARRY((!\E_blinkingled|Add0~33\) # (!\E_blinkingled|blink:counter[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \E_blinkingled|blink:counter[17]~q\,
	datad => VCC,
	cin => \E_blinkingled|Add0~33\,
	combout => \E_blinkingled|Add0~34_combout\,
	cout => \E_blinkingled|Add0~35\);

-- Location: LCCOMB_X14_Y13_N4
\E_blinkingled|counter~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|counter~13_combout\ = (\E_blinkingled|Add0~34_combout\ & \E_blinkingled|blink~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \E_blinkingled|Add0~34_combout\,
	datad => \E_blinkingled|blink~6_combout\,
	combout => \E_blinkingled|counter~13_combout\);

-- Location: FF_X14_Y13_N5
\E_blinkingled|blink:counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \E_blinkingled|counter~13_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E_blinkingled|blink:counter[17]~q\);

-- Location: LCCOMB_X11_Y13_N4
\E_blinkingled|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|Add0~36_combout\ = (\E_blinkingled|blink:counter[18]~q\ & (\E_blinkingled|Add0~35\ $ (GND))) # (!\E_blinkingled|blink:counter[18]~q\ & (!\E_blinkingled|Add0~35\ & VCC))
-- \E_blinkingled|Add0~37\ = CARRY((\E_blinkingled|blink:counter[18]~q\ & !\E_blinkingled|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \E_blinkingled|blink:counter[18]~q\,
	datad => VCC,
	cin => \E_blinkingled|Add0~35\,
	combout => \E_blinkingled|Add0~36_combout\,
	cout => \E_blinkingled|Add0~37\);

-- Location: LCCOMB_X13_Y13_N26
\E_blinkingled|counter~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|counter~12_combout\ = (\E_blinkingled|Add0~36_combout\ & \E_blinkingled|blink~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \E_blinkingled|Add0~36_combout\,
	datac => \E_blinkingled|blink~6_combout\,
	combout => \E_blinkingled|counter~12_combout\);

-- Location: FF_X13_Y13_N27
\E_blinkingled|blink:counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \E_blinkingled|counter~12_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E_blinkingled|blink:counter[18]~q\);

-- Location: LCCOMB_X11_Y13_N6
\E_blinkingled|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|Add0~38_combout\ = (\E_blinkingled|blink:counter[19]~q\ & (!\E_blinkingled|Add0~37\)) # (!\E_blinkingled|blink:counter[19]~q\ & ((\E_blinkingled|Add0~37\) # (GND)))
-- \E_blinkingled|Add0~39\ = CARRY((!\E_blinkingled|Add0~37\) # (!\E_blinkingled|blink:counter[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \E_blinkingled|blink:counter[19]~q\,
	datad => VCC,
	cin => \E_blinkingled|Add0~37\,
	combout => \E_blinkingled|Add0~38_combout\,
	cout => \E_blinkingled|Add0~39\);

-- Location: LCCOMB_X13_Y13_N16
\E_blinkingled|counter~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|counter~11_combout\ = (\E_blinkingled|Add0~38_combout\ & \E_blinkingled|blink~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \E_blinkingled|Add0~38_combout\,
	datac => \E_blinkingled|blink~6_combout\,
	combout => \E_blinkingled|counter~11_combout\);

-- Location: FF_X13_Y13_N17
\E_blinkingled|blink:counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \E_blinkingled|counter~11_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E_blinkingled|blink:counter[19]~q\);

-- Location: LCCOMB_X11_Y13_N8
\E_blinkingled|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|Add0~40_combout\ = (\E_blinkingled|blink:counter[20]~q\ & (\E_blinkingled|Add0~39\ $ (GND))) # (!\E_blinkingled|blink:counter[20]~q\ & (!\E_blinkingled|Add0~39\ & VCC))
-- \E_blinkingled|Add0~41\ = CARRY((\E_blinkingled|blink:counter[20]~q\ & !\E_blinkingled|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \E_blinkingled|blink:counter[20]~q\,
	datad => VCC,
	cin => \E_blinkingled|Add0~39\,
	combout => \E_blinkingled|Add0~40_combout\,
	cout => \E_blinkingled|Add0~41\);

-- Location: LCCOMB_X14_Y13_N30
\E_blinkingled|counter~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|counter~10_combout\ = (\E_blinkingled|Add0~40_combout\ & \E_blinkingled|blink~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \E_blinkingled|Add0~40_combout\,
	datad => \E_blinkingled|blink~6_combout\,
	combout => \E_blinkingled|counter~10_combout\);

-- Location: FF_X14_Y13_N31
\E_blinkingled|blink:counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \E_blinkingled|counter~10_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E_blinkingled|blink:counter[20]~q\);

-- Location: LCCOMB_X11_Y13_N10
\E_blinkingled|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|Add0~42_combout\ = (\E_blinkingled|blink:counter[21]~q\ & (!\E_blinkingled|Add0~41\)) # (!\E_blinkingled|blink:counter[21]~q\ & ((\E_blinkingled|Add0~41\) # (GND)))
-- \E_blinkingled|Add0~43\ = CARRY((!\E_blinkingled|Add0~41\) # (!\E_blinkingled|blink:counter[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \E_blinkingled|blink:counter[21]~q\,
	datad => VCC,
	cin => \E_blinkingled|Add0~41\,
	combout => \E_blinkingled|Add0~42_combout\,
	cout => \E_blinkingled|Add0~43\);

-- Location: LCCOMB_X13_Y13_N2
\E_blinkingled|counter~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|counter~9_combout\ = (\E_blinkingled|Add0~42_combout\ & \E_blinkingled|blink~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E_blinkingled|Add0~42_combout\,
	datac => \E_blinkingled|blink~6_combout\,
	combout => \E_blinkingled|counter~9_combout\);

-- Location: FF_X13_Y13_N3
\E_blinkingled|blink:counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \E_blinkingled|counter~9_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E_blinkingled|blink:counter[21]~q\);

-- Location: LCCOMB_X11_Y13_N12
\E_blinkingled|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|Add0~44_combout\ = (\E_blinkingled|blink:counter[22]~q\ & (\E_blinkingled|Add0~43\ $ (GND))) # (!\E_blinkingled|blink:counter[22]~q\ & (!\E_blinkingled|Add0~43\ & VCC))
-- \E_blinkingled|Add0~45\ = CARRY((\E_blinkingled|blink:counter[22]~q\ & !\E_blinkingled|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \E_blinkingled|blink:counter[22]~q\,
	datad => VCC,
	cin => \E_blinkingled|Add0~43\,
	combout => \E_blinkingled|Add0~44_combout\,
	cout => \E_blinkingled|Add0~45\);

-- Location: LCCOMB_X13_Y13_N28
\E_blinkingled|counter~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|counter~8_combout\ = (\E_blinkingled|blink~6_combout\ & \E_blinkingled|Add0~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \E_blinkingled|blink~6_combout\,
	datac => \E_blinkingled|Add0~44_combout\,
	combout => \E_blinkingled|counter~8_combout\);

-- Location: FF_X13_Y13_N29
\E_blinkingled|blink:counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \E_blinkingled|counter~8_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E_blinkingled|blink:counter[22]~q\);

-- Location: LCCOMB_X11_Y13_N14
\E_blinkingled|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|Add0~46_combout\ = (\E_blinkingled|blink:counter[23]~q\ & (!\E_blinkingled|Add0~45\)) # (!\E_blinkingled|blink:counter[23]~q\ & ((\E_blinkingled|Add0~45\) # (GND)))
-- \E_blinkingled|Add0~47\ = CARRY((!\E_blinkingled|Add0~45\) # (!\E_blinkingled|blink:counter[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \E_blinkingled|blink:counter[23]~q\,
	datad => VCC,
	cin => \E_blinkingled|Add0~45\,
	combout => \E_blinkingled|Add0~46_combout\,
	cout => \E_blinkingled|Add0~47\);

-- Location: LCCOMB_X14_Y13_N20
\E_blinkingled|counter~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|counter~7_combout\ = (\E_blinkingled|Add0~46_combout\ & \E_blinkingled|blink~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \E_blinkingled|Add0~46_combout\,
	datad => \E_blinkingled|blink~6_combout\,
	combout => \E_blinkingled|counter~7_combout\);

-- Location: FF_X14_Y13_N21
\E_blinkingled|blink:counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \E_blinkingled|counter~7_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E_blinkingled|blink:counter[23]~q\);

-- Location: LCCOMB_X11_Y13_N16
\E_blinkingled|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|Add0~48_combout\ = (\E_blinkingled|blink:counter[24]~q\ & (\E_blinkingled|Add0~47\ $ (GND))) # (!\E_blinkingled|blink:counter[24]~q\ & (!\E_blinkingled|Add0~47\ & VCC))
-- \E_blinkingled|Add0~49\ = CARRY((\E_blinkingled|blink:counter[24]~q\ & !\E_blinkingled|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \E_blinkingled|blink:counter[24]~q\,
	datad => VCC,
	cin => \E_blinkingled|Add0~47\,
	combout => \E_blinkingled|Add0~48_combout\,
	cout => \E_blinkingled|Add0~49\);

-- Location: LCCOMB_X14_Y13_N14
\E_blinkingled|counter~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|counter~6_combout\ = (\E_blinkingled|Add0~48_combout\ & \E_blinkingled|blink~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \E_blinkingled|Add0~48_combout\,
	datad => \E_blinkingled|blink~6_combout\,
	combout => \E_blinkingled|counter~6_combout\);

-- Location: FF_X14_Y13_N15
\E_blinkingled|blink:counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \E_blinkingled|counter~6_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E_blinkingled|blink:counter[24]~q\);

-- Location: LCCOMB_X11_Y13_N18
\E_blinkingled|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|Add0~50_combout\ = (\E_blinkingled|blink:counter[25]~q\ & (!\E_blinkingled|Add0~49\)) # (!\E_blinkingled|blink:counter[25]~q\ & ((\E_blinkingled|Add0~49\) # (GND)))
-- \E_blinkingled|Add0~51\ = CARRY((!\E_blinkingled|Add0~49\) # (!\E_blinkingled|blink:counter[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \E_blinkingled|blink:counter[25]~q\,
	datad => VCC,
	cin => \E_blinkingled|Add0~49\,
	combout => \E_blinkingled|Add0~50_combout\,
	cout => \E_blinkingled|Add0~51\);

-- Location: LCCOMB_X14_Y13_N12
\E_blinkingled|counter~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|counter~5_combout\ = (\E_blinkingled|Add0~50_combout\ & \E_blinkingled|blink~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \E_blinkingled|Add0~50_combout\,
	datad => \E_blinkingled|blink~6_combout\,
	combout => \E_blinkingled|counter~5_combout\);

-- Location: FF_X14_Y13_N13
\E_blinkingled|blink:counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \E_blinkingled|counter~5_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E_blinkingled|blink:counter[25]~q\);

-- Location: LCCOMB_X11_Y13_N20
\E_blinkingled|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|Add0~52_combout\ = (\E_blinkingled|blink:counter[26]~q\ & (\E_blinkingled|Add0~51\ $ (GND))) # (!\E_blinkingled|blink:counter[26]~q\ & (!\E_blinkingled|Add0~51\ & VCC))
-- \E_blinkingled|Add0~53\ = CARRY((\E_blinkingled|blink:counter[26]~q\ & !\E_blinkingled|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \E_blinkingled|blink:counter[26]~q\,
	datad => VCC,
	cin => \E_blinkingled|Add0~51\,
	combout => \E_blinkingled|Add0~52_combout\,
	cout => \E_blinkingled|Add0~53\);

-- Location: LCCOMB_X14_Y13_N10
\E_blinkingled|counter~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|counter~4_combout\ = (\E_blinkingled|Add0~52_combout\ & \E_blinkingled|blink~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \E_blinkingled|Add0~52_combout\,
	datad => \E_blinkingled|blink~6_combout\,
	combout => \E_blinkingled|counter~4_combout\);

-- Location: FF_X14_Y13_N11
\E_blinkingled|blink:counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \E_blinkingled|counter~4_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E_blinkingled|blink:counter[26]~q\);

-- Location: LCCOMB_X11_Y13_N22
\E_blinkingled|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|Add0~54_combout\ = (\E_blinkingled|blink:counter[27]~q\ & (!\E_blinkingled|Add0~53\)) # (!\E_blinkingled|blink:counter[27]~q\ & ((\E_blinkingled|Add0~53\) # (GND)))
-- \E_blinkingled|Add0~55\ = CARRY((!\E_blinkingled|Add0~53\) # (!\E_blinkingled|blink:counter[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \E_blinkingled|blink:counter[27]~q\,
	datad => VCC,
	cin => \E_blinkingled|Add0~53\,
	combout => \E_blinkingled|Add0~54_combout\,
	cout => \E_blinkingled|Add0~55\);

-- Location: LCCOMB_X14_Y13_N24
\E_blinkingled|counter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|counter~3_combout\ = (\E_blinkingled|Add0~54_combout\ & \E_blinkingled|blink~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \E_blinkingled|Add0~54_combout\,
	datad => \E_blinkingled|blink~6_combout\,
	combout => \E_blinkingled|counter~3_combout\);

-- Location: FF_X14_Y13_N25
\E_blinkingled|blink:counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \E_blinkingled|counter~3_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E_blinkingled|blink:counter[27]~q\);

-- Location: LCCOMB_X11_Y13_N24
\E_blinkingled|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|Add0~56_combout\ = (\E_blinkingled|blink:counter[28]~q\ & (\E_blinkingled|Add0~55\ $ (GND))) # (!\E_blinkingled|blink:counter[28]~q\ & (!\E_blinkingled|Add0~55\ & VCC))
-- \E_blinkingled|Add0~57\ = CARRY((\E_blinkingled|blink:counter[28]~q\ & !\E_blinkingled|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \E_blinkingled|blink:counter[28]~q\,
	datad => VCC,
	cin => \E_blinkingled|Add0~55\,
	combout => \E_blinkingled|Add0~56_combout\,
	cout => \E_blinkingled|Add0~57\);

-- Location: LCCOMB_X14_Y13_N18
\E_blinkingled|counter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|counter~2_combout\ = (\E_blinkingled|Add0~56_combout\ & \E_blinkingled|blink~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \E_blinkingled|Add0~56_combout\,
	datad => \E_blinkingled|blink~6_combout\,
	combout => \E_blinkingled|counter~2_combout\);

-- Location: FF_X14_Y13_N19
\E_blinkingled|blink:counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \E_blinkingled|counter~2_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E_blinkingled|blink:counter[28]~q\);

-- Location: LCCOMB_X11_Y13_N26
\E_blinkingled|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|Add0~58_combout\ = (\E_blinkingled|blink:counter[29]~q\ & (!\E_blinkingled|Add0~57\)) # (!\E_blinkingled|blink:counter[29]~q\ & ((\E_blinkingled|Add0~57\) # (GND)))
-- \E_blinkingled|Add0~59\ = CARRY((!\E_blinkingled|Add0~57\) # (!\E_blinkingled|blink:counter[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \E_blinkingled|blink:counter[29]~q\,
	datad => VCC,
	cin => \E_blinkingled|Add0~57\,
	combout => \E_blinkingled|Add0~58_combout\,
	cout => \E_blinkingled|Add0~59\);

-- Location: LCCOMB_X11_Y12_N2
\E_blinkingled|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|counter~1_combout\ = (\E_blinkingled|Add0~62_combout\ & \E_blinkingled|Add0~58_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \E_blinkingled|Add0~62_combout\,
	datad => \E_blinkingled|Add0~58_combout\,
	combout => \E_blinkingled|counter~1_combout\);

-- Location: FF_X11_Y12_N3
\E_blinkingled|blink:counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \E_blinkingled|counter~1_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E_blinkingled|blink:counter[29]~q\);

-- Location: LCCOMB_X11_Y13_N28
\E_blinkingled|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|Add0~60_combout\ = (\E_blinkingled|blink:counter[30]~q\ & (\E_blinkingled|Add0~59\ $ (GND))) # (!\E_blinkingled|blink:counter[30]~q\ & (!\E_blinkingled|Add0~59\ & VCC))
-- \E_blinkingled|Add0~61\ = CARRY((\E_blinkingled|blink:counter[30]~q\ & !\E_blinkingled|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \E_blinkingled|blink:counter[30]~q\,
	datad => VCC,
	cin => \E_blinkingled|Add0~59\,
	combout => \E_blinkingled|Add0~60_combout\,
	cout => \E_blinkingled|Add0~61\);

-- Location: LCCOMB_X11_Y12_N0
\E_blinkingled|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|counter~0_combout\ = (\E_blinkingled|Add0~62_combout\ & \E_blinkingled|Add0~60_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \E_blinkingled|Add0~62_combout\,
	datad => \E_blinkingled|Add0~60_combout\,
	combout => \E_blinkingled|counter~0_combout\);

-- Location: FF_X11_Y12_N1
\E_blinkingled|blink:counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \E_blinkingled|counter~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E_blinkingled|blink:counter[30]~q\);

-- Location: LCCOMB_X11_Y13_N30
\E_blinkingled|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|Add0~62_combout\ = \E_blinkingled|blink:counter[31]~q\ $ (\E_blinkingled|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \E_blinkingled|blink:counter[31]~q\,
	cin => \E_blinkingled|Add0~61\,
	combout => \E_blinkingled|Add0~62_combout\);

-- Location: IOIBUF_X0_Y11_N15
\speedButton~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_speedButton,
	o => \speedButton~input_o\);

-- Location: LCCOMB_X13_Y13_N22
\E_blinkingled|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|LessThan1~0_combout\ = (!\E_blinkingled|Add0~44_combout\ & (!\E_blinkingled|Add0~42_combout\ & ((!\E_blinkingled|Add0~38_combout\) # (!\E_blinkingled|Add0~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E_blinkingled|Add0~40_combout\,
	datab => \E_blinkingled|Add0~38_combout\,
	datac => \E_blinkingled|Add0~44_combout\,
	datad => \E_blinkingled|Add0~42_combout\,
	combout => \E_blinkingled|LessThan1~0_combout\);

-- Location: LCCOMB_X13_Y13_N8
\E_blinkingled|blink~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|blink~0_combout\ = (\E_blinkingled|Add0~32_combout\) # ((\E_blinkingled|Add0~36_combout\) # ((\E_blinkingled|Add0~44_combout\) # (\E_blinkingled|Add0~42_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E_blinkingled|Add0~32_combout\,
	datab => \E_blinkingled|Add0~36_combout\,
	datac => \E_blinkingled|Add0~44_combout\,
	datad => \E_blinkingled|Add0~42_combout\,
	combout => \E_blinkingled|blink~0_combout\);

-- Location: LCCOMB_X12_Y13_N10
\E_blinkingled|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|LessThan1~1_combout\ = (\E_blinkingled|Add0~20_combout\ & ((\E_blinkingled|Add0~14_combout\) # (\E_blinkingled|Add0~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E_blinkingled|Add0~14_combout\,
	datac => \E_blinkingled|Add0~16_combout\,
	datad => \E_blinkingled|Add0~20_combout\,
	combout => \E_blinkingled|LessThan1~1_combout\);

-- Location: LCCOMB_X12_Y13_N28
\E_blinkingled|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|LessThan1~2_combout\ = (\E_blinkingled|Add0~24_combout\ & ((\E_blinkingled|Add0~22_combout\) # ((\E_blinkingled|Add0~18_combout\ & \E_blinkingled|LessThan1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E_blinkingled|Add0~18_combout\,
	datab => \E_blinkingled|Add0~24_combout\,
	datac => \E_blinkingled|Add0~22_combout\,
	datad => \E_blinkingled|LessThan1~1_combout\,
	combout => \E_blinkingled|LessThan1~2_combout\);

-- Location: LCCOMB_X12_Y13_N18
\E_blinkingled|LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|LessThan1~3_combout\ = ((!\E_blinkingled|Add0~28_combout\ & (!\E_blinkingled|Add0~26_combout\ & !\E_blinkingled|LessThan1~2_combout\))) # (!\E_blinkingled|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E_blinkingled|Add0~28_combout\,
	datab => \E_blinkingled|Add0~30_combout\,
	datac => \E_blinkingled|Add0~26_combout\,
	datad => \E_blinkingled|LessThan1~2_combout\,
	combout => \E_blinkingled|LessThan1~3_combout\);

-- Location: LCCOMB_X13_Y13_N10
\E_blinkingled|blink~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|blink~1_combout\ = ((!\E_blinkingled|Add0~34_combout\ & (!\E_blinkingled|blink~0_combout\ & \E_blinkingled|LessThan1~3_combout\))) # (!\E_blinkingled|Add0~46_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E_blinkingled|Add0~46_combout\,
	datab => \E_blinkingled|Add0~34_combout\,
	datac => \E_blinkingled|blink~0_combout\,
	datad => \E_blinkingled|LessThan1~3_combout\,
	combout => \E_blinkingled|blink~1_combout\);

-- Location: LCCOMB_X13_Y13_N4
\E_blinkingled|blink~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|blink~2_combout\ = ((!\E_blinkingled|Add0~48_combout\ & ((\E_blinkingled|LessThan1~0_combout\) # (\E_blinkingled|blink~1_combout\)))) # (!\speedButton~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011101110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E_blinkingled|Add0~48_combout\,
	datab => \speedButton~input_o\,
	datac => \E_blinkingled|LessThan1~0_combout\,
	datad => \E_blinkingled|blink~1_combout\,
	combout => \E_blinkingled|blink~2_combout\);

-- Location: LCCOMB_X13_Y13_N12
\E_blinkingled|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|LessThan0~4_combout\ = (((!\E_blinkingled|Add0~36_combout\ & !\E_blinkingled|Add0~34_combout\)) # (!\E_blinkingled|Add0~40_combout\)) # (!\E_blinkingled|Add0~38_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E_blinkingled|Add0~36_combout\,
	datab => \E_blinkingled|Add0~34_combout\,
	datac => \E_blinkingled|Add0~38_combout\,
	datad => \E_blinkingled|Add0~40_combout\,
	combout => \E_blinkingled|LessThan0~4_combout\);

-- Location: LCCOMB_X13_Y13_N30
\E_blinkingled|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|LessThan0~5_combout\ = (((\E_blinkingled|LessThan0~4_combout\) # (!\E_blinkingled|Add0~46_combout\)) # (!\E_blinkingled|Add0~44_combout\)) # (!\E_blinkingled|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E_blinkingled|Add0~42_combout\,
	datab => \E_blinkingled|Add0~44_combout\,
	datac => \E_blinkingled|Add0~46_combout\,
	datad => \E_blinkingled|LessThan0~4_combout\,
	combout => \E_blinkingled|LessThan0~5_combout\);

-- Location: LCCOMB_X12_Y14_N8
\E_blinkingled|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|LessThan0~2_combout\ = (((!\E_blinkingled|Add0~30_combout\) # (!\E_blinkingled|Add0~28_combout\)) # (!\E_blinkingled|Add0~24_combout\)) # (!\E_blinkingled|Add0~26_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E_blinkingled|Add0~26_combout\,
	datab => \E_blinkingled|Add0~24_combout\,
	datac => \E_blinkingled|Add0~28_combout\,
	datad => \E_blinkingled|Add0~30_combout\,
	combout => \E_blinkingled|LessThan0~2_combout\);

-- Location: LCCOMB_X12_Y13_N24
\E_blinkingled|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|LessThan0~0_combout\ = (!\E_blinkingled|Add0~16_combout\ & !\E_blinkingled|Add0~14_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \E_blinkingled|Add0~16_combout\,
	datad => \E_blinkingled|Add0~14_combout\,
	combout => \E_blinkingled|LessThan0~0_combout\);

-- Location: LCCOMB_X12_Y13_N14
\E_blinkingled|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|LessThan0~1_combout\ = (!\E_blinkingled|Add0~18_combout\ & (!\E_blinkingled|Add0~20_combout\ & (!\E_blinkingled|Add0~22_combout\ & \E_blinkingled|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E_blinkingled|Add0~18_combout\,
	datab => \E_blinkingled|Add0~20_combout\,
	datac => \E_blinkingled|Add0~22_combout\,
	datad => \E_blinkingled|LessThan0~0_combout\,
	combout => \E_blinkingled|LessThan0~1_combout\);

-- Location: LCCOMB_X13_Y13_N18
\E_blinkingled|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|LessThan0~3_combout\ = (!\E_blinkingled|Add0~32_combout\ & (!\E_blinkingled|Add0~36_combout\ & ((\E_blinkingled|LessThan0~2_combout\) # (\E_blinkingled|LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E_blinkingled|Add0~32_combout\,
	datab => \E_blinkingled|Add0~36_combout\,
	datac => \E_blinkingled|LessThan0~2_combout\,
	datad => \E_blinkingled|LessThan0~1_combout\,
	combout => \E_blinkingled|LessThan0~3_combout\);

-- Location: LCCOMB_X13_Y13_N24
\E_blinkingled|blink~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|blink~3_combout\ = (!\E_blinkingled|Add0~48_combout\ & ((\E_blinkingled|LessThan0~5_combout\) # (\E_blinkingled|LessThan0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E_blinkingled|Add0~48_combout\,
	datac => \E_blinkingled|LessThan0~5_combout\,
	datad => \E_blinkingled|LessThan0~3_combout\,
	combout => \E_blinkingled|blink~3_combout\);

-- Location: LCCOMB_X13_Y13_N6
\E_blinkingled|blink~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|blink~4_combout\ = (!\E_blinkingled|Add0~52_combout\ & (((!\speedButton~input_o\ & \E_blinkingled|blink~3_combout\)) # (!\E_blinkingled|Add0~50_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E_blinkingled|Add0~52_combout\,
	datab => \speedButton~input_o\,
	datac => \E_blinkingled|Add0~50_combout\,
	datad => \E_blinkingled|blink~3_combout\,
	combout => \E_blinkingled|blink~4_combout\);

-- Location: LCCOMB_X13_Y13_N20
\E_blinkingled|blink~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|blink~5_combout\ = (!\E_blinkingled|Add0~56_combout\ & (!\E_blinkingled|Add0~54_combout\ & (\E_blinkingled|blink~2_combout\ & \E_blinkingled|blink~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E_blinkingled|Add0~56_combout\,
	datab => \E_blinkingled|Add0~54_combout\,
	datac => \E_blinkingled|blink~2_combout\,
	datad => \E_blinkingled|blink~4_combout\,
	combout => \E_blinkingled|blink~5_combout\);

-- Location: LCCOMB_X13_Y13_N14
\E_blinkingled|blink~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|blink~6_combout\ = (\E_blinkingled|Add0~62_combout\) # ((!\E_blinkingled|Add0~58_combout\ & (!\E_blinkingled|Add0~60_combout\ & \E_blinkingled|blink~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \E_blinkingled|Add0~62_combout\,
	datab => \E_blinkingled|Add0~58_combout\,
	datac => \E_blinkingled|Add0~60_combout\,
	datad => \E_blinkingled|blink~5_combout\,
	combout => \E_blinkingled|blink~6_combout\);

-- Location: LCCOMB_X14_Y13_N8
\E_blinkingled|blink:ledstate~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \E_blinkingled|blink:ledstate~0_combout\ = \E_blinkingled|blink:ledstate~q\ $ (!\E_blinkingled|blink~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \E_blinkingled|blink:ledstate~q\,
	datad => \E_blinkingled|blink~6_combout\,
	combout => \E_blinkingled|blink:ledstate~0_combout\);

-- Location: FF_X14_Y13_N9
\E_blinkingled|blink:ledstate\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_clk~inputclkctrl_outclk\,
	d => \E_blinkingled|blink:ledstate~0_combout\,
	clrn => \ALT_INV_reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \E_blinkingled|blink:ledstate~q\);

ww_led <= \led~output_o\;
END structure;


