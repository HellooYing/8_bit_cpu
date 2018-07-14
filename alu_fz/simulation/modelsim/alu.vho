-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.0.0 Build 614 04/24/2018 SJ Lite Edition"

-- DATE "07/14/2018 07:40:20"

-- 
-- Device: Altera EP4CE6E22C8 Package TQFP144
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
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


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


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	alu IS
    PORT (
	rst : IN std_logic;
	acc : IN std_logic_vector(7 DOWNTO 0);
	mdr : IN std_logic_vector(7 DOWNTO 0);
	rrr : IN std_logic_vector(7 DOWNTO 0);
	mdr_or_r : IN std_logic;
	alu_add : IN std_logic;
	alu_sub : IN std_logic;
	alu_and : IN std_logic;
	alu_srl : IN std_logic;
	alu_out : BUFFER std_logic_vector(7 DOWNTO 0)
	);
END alu;

-- Design Ports Information
-- alu_out[0]	=>  Location: PIN_112,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_out[1]	=>  Location: PIN_98,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_out[2]	=>  Location: PIN_72,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_out[3]	=>  Location: PIN_104,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_out[4]	=>  Location: PIN_99,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_out[5]	=>  Location: PIN_67,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_out[6]	=>  Location: PIN_85,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_out[7]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_80,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc[0]	=>  Location: PIN_77,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rrr[0]	=>  Location: PIN_87,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdr[0]	=>  Location: PIN_110,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdr_or_r	=>  Location: PIN_75,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_and	=>  Location: PIN_74,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_add	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_sub	=>  Location: PIN_83,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- alu_srl	=>  Location: PIN_73,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc[1]	=>  Location: PIN_69,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rrr[1]	=>  Location: PIN_70,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdr[1]	=>  Location: PIN_86,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc[2]	=>  Location: PIN_71,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rrr[2]	=>  Location: PIN_84,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdr[2]	=>  Location: PIN_76,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc[3]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rrr[3]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdr[3]	=>  Location: PIN_103,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc[4]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rrr[4]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdr[4]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc[5]	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rrr[5]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdr[5]	=>  Location: PIN_100,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc[6]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rrr[6]	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdr[6]	=>  Location: PIN_25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- acc[7]	=>  Location: PIN_68,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rrr[7]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mdr[7]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF alu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_acc : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_mdr : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_rrr : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_mdr_or_r : std_logic;
SIGNAL ww_alu_add : std_logic;
SIGNAL ww_alu_sub : std_logic;
SIGNAL ww_alu_and : std_logic;
SIGNAL ww_alu_srl : std_logic;
SIGNAL ww_alu_out : std_logic_vector(7 DOWNTO 0);
SIGNAL \acc1[1]~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \alu_out[0]~output_o\ : std_logic;
SIGNAL \alu_out[1]~output_o\ : std_logic;
SIGNAL \alu_out[2]~output_o\ : std_logic;
SIGNAL \alu_out[3]~output_o\ : std_logic;
SIGNAL \alu_out[4]~output_o\ : std_logic;
SIGNAL \alu_out[5]~output_o\ : std_logic;
SIGNAL \alu_out[6]~output_o\ : std_logic;
SIGNAL \alu_out[7]~output_o\ : std_logic;
SIGNAL \mdr[0]~input_o\ : std_logic;
SIGNAL \alu_add~input_o\ : std_logic;
SIGNAL \rrr[0]~input_o\ : std_logic;
SIGNAL \mdr_or_r~input_o\ : std_logic;
SIGNAL \Add0~15_combout\ : std_logic;
SIGNAL \acc[0]~input_o\ : std_logic;
SIGNAL \Add0~17_cout\ : std_logic;
SIGNAL \Add0~18_combout\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \alu_sub~input_o\ : std_logic;
SIGNAL \acc1[0]~0_combout\ : std_logic;
SIGNAL \alu_and~input_o\ : std_logic;
SIGNAL \Add0~20_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \alu_srl~input_o\ : std_logic;
SIGNAL \acc1[1]~1_combout\ : std_logic;
SIGNAL \acc1[1]~1clkctrl_outclk\ : std_logic;
SIGNAL \alu_out~0_combout\ : std_logic;
SIGNAL \rrr[1]~input_o\ : std_logic;
SIGNAL \mdr[1]~input_o\ : std_logic;
SIGNAL \acc[1]~input_o\ : std_logic;
SIGNAL \Add0~21_combout\ : std_logic;
SIGNAL \Add0~22_combout\ : std_logic;
SIGNAL \Add0~23_combout\ : std_logic;
SIGNAL \Add0~19\ : std_logic;
SIGNAL \Add0~24_combout\ : std_logic;
SIGNAL \Add0~56_combout\ : std_logic;
SIGNAL \alu_out~1_combout\ : std_logic;
SIGNAL \mdr[2]~input_o\ : std_logic;
SIGNAL \rrr[2]~input_o\ : std_logic;
SIGNAL \Add0~28_combout\ : std_logic;
SIGNAL \acc[2]~input_o\ : std_logic;
SIGNAL \Add0~25\ : std_logic;
SIGNAL \Add0~29_combout\ : std_logic;
SIGNAL \Add0~26_combout\ : std_logic;
SIGNAL \Add0~27_combout\ : std_logic;
SIGNAL \Add0~57_combout\ : std_logic;
SIGNAL \alu_out~2_combout\ : std_logic;
SIGNAL \acc[3]~input_o\ : std_logic;
SIGNAL \mdr[3]~input_o\ : std_logic;
SIGNAL \rrr[3]~input_o\ : std_logic;
SIGNAL \Add0~31_combout\ : std_logic;
SIGNAL \Add0~32_combout\ : std_logic;
SIGNAL \Add0~33_combout\ : std_logic;
SIGNAL \Add0~30\ : std_logic;
SIGNAL \Add0~34_combout\ : std_logic;
SIGNAL \Add0~58_combout\ : std_logic;
SIGNAL \alu_out~3_combout\ : std_logic;
SIGNAL \rrr[4]~input_o\ : std_logic;
SIGNAL \mdr[4]~input_o\ : std_logic;
SIGNAL \Add0~38_combout\ : std_logic;
SIGNAL \acc[4]~input_o\ : std_logic;
SIGNAL \Add0~35\ : std_logic;
SIGNAL \Add0~39_combout\ : std_logic;
SIGNAL \Add0~36_combout\ : std_logic;
SIGNAL \Add0~37_combout\ : std_logic;
SIGNAL \Add0~59_combout\ : std_logic;
SIGNAL \alu_out~4_combout\ : std_logic;
SIGNAL \acc[5]~input_o\ : std_logic;
SIGNAL \rrr[5]~input_o\ : std_logic;
SIGNAL \mdr[5]~input_o\ : std_logic;
SIGNAL \Add0~41_combout\ : std_logic;
SIGNAL \Add0~42_combout\ : std_logic;
SIGNAL \Add0~43_combout\ : std_logic;
SIGNAL \Add0~40\ : std_logic;
SIGNAL \Add0~44_combout\ : std_logic;
SIGNAL \Add0~60_combout\ : std_logic;
SIGNAL \alu_out~5_combout\ : std_logic;
SIGNAL \mdr[6]~input_o\ : std_logic;
SIGNAL \acc[6]~input_o\ : std_logic;
SIGNAL \rrr[6]~input_o\ : std_logic;
SIGNAL \Add0~46_combout\ : std_logic;
SIGNAL \Add0~47_combout\ : std_logic;
SIGNAL \Add0~48_combout\ : std_logic;
SIGNAL \Add0~45\ : std_logic;
SIGNAL \Add0~49_combout\ : std_logic;
SIGNAL \Add0~61_combout\ : std_logic;
SIGNAL \alu_out~6_combout\ : std_logic;
SIGNAL \acc[7]~input_o\ : std_logic;
SIGNAL \rrr[7]~input_o\ : std_logic;
SIGNAL \mdr[7]~input_o\ : std_logic;
SIGNAL \Add0~51_combout\ : std_logic;
SIGNAL \Add0~52_combout\ : std_logic;
SIGNAL \Add0~53_combout\ : std_logic;
SIGNAL \Add0~50\ : std_logic;
SIGNAL \Add0~54_combout\ : std_logic;
SIGNAL \Add0~62_combout\ : std_logic;
SIGNAL \alu_out~7_combout\ : std_logic;
SIGNAL acc1 : std_logic_vector(7 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_rst <= rst;
ww_acc <= acc;
ww_mdr <= mdr;
ww_rrr <= rrr;
ww_mdr_or_r <= mdr_or_r;
ww_alu_add <= alu_add;
ww_alu_sub <= alu_sub;
ww_alu_and <= alu_and;
ww_alu_srl <= alu_srl;
alu_out <= ww_alu_out;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\acc1[1]~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \acc1[1]~1_combout\);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X28_Y24_N2
\alu_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_out~0_combout\,
	devoe => ww_devoe,
	o => \alu_out[0]~output_o\);

-- Location: IOOBUF_X34_Y17_N23
\alu_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_out~1_combout\,
	devoe => ww_devoe,
	o => \alu_out[1]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\alu_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_out~2_combout\,
	devoe => ww_devoe,
	o => \alu_out[2]~output_o\);

-- Location: IOOBUF_X34_Y18_N2
\alu_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_out~3_combout\,
	devoe => ww_devoe,
	o => \alu_out[3]~output_o\);

-- Location: IOOBUF_X34_Y17_N16
\alu_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_out~4_combout\,
	devoe => ww_devoe,
	o => \alu_out[4]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\alu_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_out~5_combout\,
	devoe => ww_devoe,
	o => \alu_out[5]~output_o\);

-- Location: IOOBUF_X34_Y9_N9
\alu_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_out~6_combout\,
	devoe => ww_devoe,
	o => \alu_out[6]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\alu_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \alu_out~7_combout\,
	devoe => ww_devoe,
	o => \alu_out[7]~output_o\);

-- Location: IOIBUF_X30_Y24_N1
\mdr[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mdr(0),
	o => \mdr[0]~input_o\);

-- Location: IOIBUF_X28_Y0_N1
\alu_add~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_add,
	o => \alu_add~input_o\);

-- Location: IOIBUF_X34_Y10_N8
\rrr[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rrr(0),
	o => \rrr[0]~input_o\);

-- Location: IOIBUF_X34_Y3_N22
\mdr_or_r~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mdr_or_r,
	o => \mdr_or_r~input_o\);

-- Location: LCCOMB_X29_Y4_N0
\Add0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~15_combout\ = \alu_add~input_o\ $ (((\mdr_or_r~input_o\ & ((!\rrr[0]~input_o\))) # (!\mdr_or_r~input_o\ & (!\mdr[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mdr[0]~input_o\,
	datab => \alu_add~input_o\,
	datac => \rrr[0]~input_o\,
	datad => \mdr_or_r~input_o\,
	combout => \Add0~15_combout\);

-- Location: IOIBUF_X34_Y4_N15
\acc[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_acc(0),
	o => \acc[0]~input_o\);

-- Location: LCCOMB_X29_Y4_N8
\Add0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~17_cout\ = CARRY(!\alu_add~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_add~input_o\,
	datad => VCC,
	cout => \Add0~17_cout\);

-- Location: LCCOMB_X29_Y4_N10
\Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~18_combout\ = (\Add0~15_combout\ & ((\acc[0]~input_o\ & (\Add0~17_cout\ & VCC)) # (!\acc[0]~input_o\ & (!\Add0~17_cout\)))) # (!\Add0~15_combout\ & ((\acc[0]~input_o\ & (!\Add0~17_cout\)) # (!\acc[0]~input_o\ & ((\Add0~17_cout\) # (GND)))))
-- \Add0~19\ = CARRY((\Add0~15_combout\ & (!\acc[0]~input_o\ & !\Add0~17_cout\)) # (!\Add0~15_combout\ & ((!\Add0~17_cout\) # (!\acc[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~15_combout\,
	datab => \acc[0]~input_o\,
	datad => VCC,
	cin => \Add0~17_cout\,
	combout => \Add0~18_combout\,
	cout => \Add0~19\);

-- Location: LCCOMB_X33_Y4_N12
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = (\acc[0]~input_o\ & ((\mdr_or_r~input_o\ & (\rrr[0]~input_o\)) # (!\mdr_or_r~input_o\ & ((\mdr[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rrr[0]~input_o\,
	datab => \mdr_or_r~input_o\,
	datac => \mdr[0]~input_o\,
	datad => \acc[0]~input_o\,
	combout => \Add0~14_combout\);

-- Location: IOIBUF_X34_Y9_N22
\alu_sub~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_sub,
	o => \alu_sub~input_o\);

-- Location: LCCOMB_X28_Y4_N0
\acc1[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \acc1[0]~0_combout\ = (!\alu_sub~input_o\ & !\alu_add~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \alu_sub~input_o\,
	datad => \alu_add~input_o\,
	combout => \acc1[0]~0_combout\);

-- Location: IOIBUF_X34_Y2_N15
\alu_and~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_and,
	o => \alu_and~input_o\);

-- Location: LCCOMB_X30_Y4_N14
\Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~20_combout\ = (\acc1[0]~0_combout\ & (((\Add0~14_combout\ & \alu_and~input_o\)))) # (!\acc1[0]~0_combout\ & (\Add0~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~18_combout\,
	datab => \Add0~14_combout\,
	datac => \acc1[0]~0_combout\,
	datad => \alu_and~input_o\,
	combout => \Add0~20_combout\);

-- Location: IOIBUF_X34_Y7_N8
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: IOIBUF_X34_Y2_N22
\alu_srl~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_alu_srl,
	o => \alu_srl~input_o\);

-- Location: LCCOMB_X33_Y4_N24
\acc1[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \acc1[1]~1_combout\ = (\rst~input_o\ & ((\alu_and~input_o\) # ((\alu_srl~input_o\) # (!\acc1[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \alu_and~input_o\,
	datac => \alu_srl~input_o\,
	datad => \acc1[0]~0_combout\,
	combout => \acc1[1]~1_combout\);

-- Location: CLKCTRL_G9
\acc1[1]~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \acc1[1]~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \acc1[1]~1clkctrl_outclk\);

-- Location: LCCOMB_X30_Y4_N8
\acc1[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- acc1(0) = (GLOBAL(\acc1[1]~1clkctrl_outclk\) & (\Add0~20_combout\)) # (!GLOBAL(\acc1[1]~1clkctrl_outclk\) & ((acc1(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~20_combout\,
	datac => acc1(0),
	datad => \acc1[1]~1clkctrl_outclk\,
	combout => acc1(0));

-- Location: LCCOMB_X30_Y4_N4
\alu_out~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_out~0_combout\ = (acc1(0) & \rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => acc1(0),
	datad => \rst~input_o\,
	combout => \alu_out~0_combout\);

-- Location: IOIBUF_X32_Y0_N22
\rrr[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rrr(1),
	o => \rrr[1]~input_o\);

-- Location: IOIBUF_X34_Y9_N1
\mdr[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mdr(1),
	o => \mdr[1]~input_o\);

-- Location: IOIBUF_X30_Y0_N1
\acc[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_acc(1),
	o => \acc[1]~input_o\);

-- Location: LCCOMB_X33_Y4_N4
\Add0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~21_combout\ = (\acc[1]~input_o\ & ((\mdr_or_r~input_o\ & (\rrr[1]~input_o\)) # (!\mdr_or_r~input_o\ & ((\mdr[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rrr[1]~input_o\,
	datab => \mdr_or_r~input_o\,
	datac => \mdr[1]~input_o\,
	datad => \acc[1]~input_o\,
	combout => \Add0~21_combout\);

-- Location: LCCOMB_X33_Y4_N28
\Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~22_combout\ = (\acc1[0]~0_combout\ & ((\alu_and~input_o\ & (\Add0~21_combout\)) # (!\alu_and~input_o\ & ((\acc[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_and~input_o\,
	datab => \acc1[0]~0_combout\,
	datac => \Add0~21_combout\,
	datad => \acc[0]~input_o\,
	combout => \Add0~22_combout\);

-- Location: LCCOMB_X29_Y4_N6
\Add0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~23_combout\ = \alu_add~input_o\ $ (((\mdr_or_r~input_o\ & (\rrr[1]~input_o\)) # (!\mdr_or_r~input_o\ & ((\mdr[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mdr_or_r~input_o\,
	datab => \alu_add~input_o\,
	datac => \rrr[1]~input_o\,
	datad => \mdr[1]~input_o\,
	combout => \Add0~23_combout\);

-- Location: LCCOMB_X29_Y4_N12
\Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~24_combout\ = ((\Add0~23_combout\ $ (\acc[1]~input_o\ $ (\Add0~19\)))) # (GND)
-- \Add0~25\ = CARRY((\Add0~23_combout\ & (\acc[1]~input_o\ & !\Add0~19\)) # (!\Add0~23_combout\ & ((\acc[1]~input_o\) # (!\Add0~19\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~23_combout\,
	datab => \acc[1]~input_o\,
	datad => VCC,
	cin => \Add0~19\,
	combout => \Add0~24_combout\,
	cout => \Add0~25\);

-- Location: LCCOMB_X33_Y4_N6
\Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~56_combout\ = (\Add0~22_combout\) # ((\Add0~24_combout\ & ((\alu_sub~input_o\) # (\alu_add~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~22_combout\,
	datab => \alu_sub~input_o\,
	datac => \Add0~24_combout\,
	datad => \alu_add~input_o\,
	combout => \Add0~56_combout\);

-- Location: LCCOMB_X33_Y4_N20
\acc1[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- acc1(1) = (GLOBAL(\acc1[1]~1clkctrl_outclk\) & ((\Add0~56_combout\))) # (!GLOBAL(\acc1[1]~1clkctrl_outclk\) & (acc1(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => acc1(1),
	datac => \Add0~56_combout\,
	datad => \acc1[1]~1clkctrl_outclk\,
	combout => acc1(1));

-- Location: LCCOMB_X33_Y4_N0
\alu_out~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_out~1_combout\ = (acc1(1) & \rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => acc1(1),
	datad => \rst~input_o\,
	combout => \alu_out~1_combout\);

-- Location: IOIBUF_X34_Y4_N22
\mdr[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mdr(2),
	o => \mdr[2]~input_o\);

-- Location: IOIBUF_X34_Y9_N15
\rrr[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rrr(2),
	o => \rrr[2]~input_o\);

-- Location: LCCOMB_X29_Y4_N28
\Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~28_combout\ = \alu_add~input_o\ $ (((\mdr_or_r~input_o\ & ((\rrr[2]~input_o\))) # (!\mdr_or_r~input_o\ & (\mdr[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mdr_or_r~input_o\,
	datab => \alu_add~input_o\,
	datac => \mdr[2]~input_o\,
	datad => \rrr[2]~input_o\,
	combout => \Add0~28_combout\);

-- Location: IOIBUF_X32_Y0_N15
\acc[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_acc(2),
	o => \acc[2]~input_o\);

-- Location: LCCOMB_X29_Y4_N14
\Add0~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~29_combout\ = (\Add0~28_combout\ & ((\acc[2]~input_o\ & (!\Add0~25\)) # (!\acc[2]~input_o\ & ((\Add0~25\) # (GND))))) # (!\Add0~28_combout\ & ((\acc[2]~input_o\ & (\Add0~25\ & VCC)) # (!\acc[2]~input_o\ & (!\Add0~25\))))
-- \Add0~30\ = CARRY((\Add0~28_combout\ & ((!\Add0~25\) # (!\acc[2]~input_o\))) # (!\Add0~28_combout\ & (!\acc[2]~input_o\ & !\Add0~25\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~28_combout\,
	datab => \acc[2]~input_o\,
	datad => VCC,
	cin => \Add0~25\,
	combout => \Add0~29_combout\,
	cout => \Add0~30\);

-- Location: LCCOMB_X33_Y4_N14
\Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~26_combout\ = (\acc[2]~input_o\ & ((\mdr_or_r~input_o\ & ((\rrr[2]~input_o\))) # (!\mdr_or_r~input_o\ & (\mdr[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mdr[2]~input_o\,
	datab => \mdr_or_r~input_o\,
	datac => \acc[2]~input_o\,
	datad => \rrr[2]~input_o\,
	combout => \Add0~26_combout\);

-- Location: LCCOMB_X33_Y4_N10
\Add0~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~27_combout\ = (\acc1[0]~0_combout\ & ((\alu_and~input_o\ & ((\Add0~26_combout\))) # (!\alu_and~input_o\ & (\acc[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc[1]~input_o\,
	datab => \acc1[0]~0_combout\,
	datac => \Add0~26_combout\,
	datad => \alu_and~input_o\,
	combout => \Add0~27_combout\);

-- Location: LCCOMB_X33_Y4_N18
\Add0~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~57_combout\ = (\Add0~27_combout\) # ((\Add0~29_combout\ & ((\alu_sub~input_o\) # (\alu_add~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~29_combout\,
	datab => \alu_sub~input_o\,
	datac => \Add0~27_combout\,
	datad => \alu_add~input_o\,
	combout => \Add0~57_combout\);

-- Location: LCCOMB_X33_Y4_N16
\acc1[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- acc1(2) = (GLOBAL(\acc1[1]~1clkctrl_outclk\) & ((\Add0~57_combout\))) # (!GLOBAL(\acc1[1]~1clkctrl_outclk\) & (acc1(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => acc1(2),
	datac => \Add0~57_combout\,
	datad => \acc1[1]~1clkctrl_outclk\,
	combout => acc1(2));

-- Location: LCCOMB_X33_Y4_N26
\alu_out~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_out~2_combout\ = (acc1(2) & \rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => acc1(2),
	datad => \rst~input_o\,
	combout => \alu_out~2_combout\);

-- Location: IOIBUF_X23_Y0_N8
\acc[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_acc(3),
	o => \acc[3]~input_o\);

-- Location: IOIBUF_X34_Y18_N15
\mdr[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mdr(3),
	o => \mdr[3]~input_o\);

-- Location: IOIBUF_X16_Y0_N8
\rrr[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rrr(3),
	o => \rrr[3]~input_o\);

-- Location: LCCOMB_X28_Y4_N8
\Add0~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~31_combout\ = (\acc[3]~input_o\ & ((\mdr_or_r~input_o\ & ((\rrr[3]~input_o\))) # (!\mdr_or_r~input_o\ & (\mdr[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mdr_or_r~input_o\,
	datab => \acc[3]~input_o\,
	datac => \mdr[3]~input_o\,
	datad => \rrr[3]~input_o\,
	combout => \Add0~31_combout\);

-- Location: LCCOMB_X28_Y4_N28
\Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~32_combout\ = (\acc1[0]~0_combout\ & ((\alu_and~input_o\ & ((\Add0~31_combout\))) # (!\alu_and~input_o\ & (\acc[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc1[0]~0_combout\,
	datab => \acc[2]~input_o\,
	datac => \Add0~31_combout\,
	datad => \alu_and~input_o\,
	combout => \Add0~32_combout\);

-- Location: LCCOMB_X28_Y4_N20
\Add0~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~33_combout\ = \alu_add~input_o\ $ (((\mdr_or_r~input_o\ & ((\rrr[3]~input_o\))) # (!\mdr_or_r~input_o\ & (\mdr[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mdr_or_r~input_o\,
	datab => \alu_add~input_o\,
	datac => \mdr[3]~input_o\,
	datad => \rrr[3]~input_o\,
	combout => \Add0~33_combout\);

-- Location: LCCOMB_X29_Y4_N16
\Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~34_combout\ = ((\acc[3]~input_o\ $ (\Add0~33_combout\ $ (\Add0~30\)))) # (GND)
-- \Add0~35\ = CARRY((\acc[3]~input_o\ & ((!\Add0~30\) # (!\Add0~33_combout\))) # (!\acc[3]~input_o\ & (!\Add0~33_combout\ & !\Add0~30\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \acc[3]~input_o\,
	datab => \Add0~33_combout\,
	datad => VCC,
	cin => \Add0~30\,
	combout => \Add0~34_combout\,
	cout => \Add0~35\);

-- Location: LCCOMB_X28_Y4_N4
\Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~58_combout\ = (\Add0~32_combout\) # ((\Add0~34_combout\ & ((\alu_add~input_o\) # (\alu_sub~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~32_combout\,
	datab => \Add0~34_combout\,
	datac => \alu_add~input_o\,
	datad => \alu_sub~input_o\,
	combout => \Add0~58_combout\);

-- Location: LCCOMB_X28_Y4_N24
\acc1[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- acc1(3) = (GLOBAL(\acc1[1]~1clkctrl_outclk\) & ((\Add0~58_combout\))) # (!GLOBAL(\acc1[1]~1clkctrl_outclk\) & (acc1(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => acc1(3),
	datac => \Add0~58_combout\,
	datad => \acc1[1]~1clkctrl_outclk\,
	combout => acc1(3));

-- Location: LCCOMB_X33_Y4_N8
\alu_out~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_out~3_combout\ = (acc1(3) & \rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => acc1(3),
	datad => \rst~input_o\,
	combout => \alu_out~3_combout\);

-- Location: IOIBUF_X25_Y0_N1
\rrr[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rrr(4),
	o => \rrr[4]~input_o\);

-- Location: IOIBUF_X13_Y0_N1
\mdr[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mdr(4),
	o => \mdr[4]~input_o\);

-- Location: LCCOMB_X29_Y4_N2
\Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~38_combout\ = \alu_add~input_o\ $ (((\mdr_or_r~input_o\ & (\rrr[4]~input_o\)) # (!\mdr_or_r~input_o\ & ((\mdr[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_add~input_o\,
	datab => \rrr[4]~input_o\,
	datac => \mdr[4]~input_o\,
	datad => \mdr_or_r~input_o\,
	combout => \Add0~38_combout\);

-- Location: IOIBUF_X13_Y0_N15
\acc[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_acc(4),
	o => \acc[4]~input_o\);

-- Location: LCCOMB_X29_Y4_N18
\Add0~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~39_combout\ = (\Add0~38_combout\ & ((\acc[4]~input_o\ & (!\Add0~35\)) # (!\acc[4]~input_o\ & ((\Add0~35\) # (GND))))) # (!\Add0~38_combout\ & ((\acc[4]~input_o\ & (\Add0~35\ & VCC)) # (!\acc[4]~input_o\ & (!\Add0~35\))))
-- \Add0~40\ = CARRY((\Add0~38_combout\ & ((!\Add0~35\) # (!\acc[4]~input_o\))) # (!\Add0~38_combout\ & (!\acc[4]~input_o\ & !\Add0~35\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~38_combout\,
	datab => \acc[4]~input_o\,
	datad => VCC,
	cin => \Add0~35\,
	combout => \Add0~39_combout\,
	cout => \Add0~40\);

-- Location: LCCOMB_X28_Y4_N12
\Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~36_combout\ = (\acc[4]~input_o\ & ((\mdr_or_r~input_o\ & (\rrr[4]~input_o\)) # (!\mdr_or_r~input_o\ & ((\mdr[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rrr[4]~input_o\,
	datab => \acc[4]~input_o\,
	datac => \mdr[4]~input_o\,
	datad => \mdr_or_r~input_o\,
	combout => \Add0~36_combout\);

-- Location: LCCOMB_X30_Y4_N28
\Add0~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~37_combout\ = (\acc1[0]~0_combout\ & ((\alu_and~input_o\ & (\Add0~36_combout\)) # (!\alu_and~input_o\ & ((\acc[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc1[0]~0_combout\,
	datab => \Add0~36_combout\,
	datac => \acc[3]~input_o\,
	datad => \alu_and~input_o\,
	combout => \Add0~37_combout\);

-- Location: LCCOMB_X30_Y4_N2
\Add0~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~59_combout\ = (\Add0~37_combout\) # ((\Add0~39_combout\ & ((\alu_sub~input_o\) # (\alu_add~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~39_combout\,
	datab => \alu_sub~input_o\,
	datac => \Add0~37_combout\,
	datad => \alu_add~input_o\,
	combout => \Add0~59_combout\);

-- Location: LCCOMB_X30_Y4_N6
\acc1[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- acc1(4) = (GLOBAL(\acc1[1]~1clkctrl_outclk\) & ((\Add0~59_combout\))) # (!GLOBAL(\acc1[1]~1clkctrl_outclk\) & (acc1(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => acc1(4),
	datac => \Add0~59_combout\,
	datad => \acc1[1]~1clkctrl_outclk\,
	combout => acc1(4));

-- Location: LCCOMB_X30_Y4_N18
\alu_out~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_out~4_combout\ = (acc1(4) & \rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => acc1(4),
	datad => \rst~input_o\,
	combout => \alu_out~4_combout\);

-- Location: IOIBUF_X28_Y0_N22
\acc[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_acc(5),
	o => \acc[5]~input_o\);

-- Location: IOIBUF_X18_Y0_N22
\rrr[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rrr(5),
	o => \rrr[5]~input_o\);

-- Location: IOIBUF_X34_Y17_N1
\mdr[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mdr(5),
	o => \mdr[5]~input_o\);

-- Location: LCCOMB_X28_Y4_N18
\Add0~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~41_combout\ = (\acc[5]~input_o\ & ((\mdr_or_r~input_o\ & (\rrr[5]~input_o\)) # (!\mdr_or_r~input_o\ & ((\mdr[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mdr_or_r~input_o\,
	datab => \acc[5]~input_o\,
	datac => \rrr[5]~input_o\,
	datad => \mdr[5]~input_o\,
	combout => \Add0~41_combout\);

-- Location: LCCOMB_X28_Y4_N6
\Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~42_combout\ = (\acc1[0]~0_combout\ & ((\alu_and~input_o\ & ((\Add0~41_combout\))) # (!\alu_and~input_o\ & (\acc[4]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc[4]~input_o\,
	datab => \Add0~41_combout\,
	datac => \acc1[0]~0_combout\,
	datad => \alu_and~input_o\,
	combout => \Add0~42_combout\);

-- Location: LCCOMB_X29_Y4_N30
\Add0~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~43_combout\ = \alu_add~input_o\ $ (((\mdr_or_r~input_o\ & ((\rrr[5]~input_o\))) # (!\mdr_or_r~input_o\ & (\mdr[5]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_add~input_o\,
	datab => \mdr_or_r~input_o\,
	datac => \mdr[5]~input_o\,
	datad => \rrr[5]~input_o\,
	combout => \Add0~43_combout\);

-- Location: LCCOMB_X29_Y4_N20
\Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~44_combout\ = ((\Add0~43_combout\ $ (\acc[5]~input_o\ $ (\Add0~40\)))) # (GND)
-- \Add0~45\ = CARRY((\Add0~43_combout\ & (\acc[5]~input_o\ & !\Add0~40\)) # (!\Add0~43_combout\ & ((\acc[5]~input_o\) # (!\Add0~40\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~43_combout\,
	datab => \acc[5]~input_o\,
	datad => VCC,
	cin => \Add0~40\,
	combout => \Add0~44_combout\,
	cout => \Add0~45\);

-- Location: LCCOMB_X29_Y4_N4
\Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~60_combout\ = (\Add0~42_combout\) # ((\Add0~44_combout\ & ((\alu_sub~input_o\) # (\alu_add~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sub~input_o\,
	datab => \Add0~42_combout\,
	datac => \alu_add~input_o\,
	datad => \Add0~44_combout\,
	combout => \Add0~60_combout\);

-- Location: LCCOMB_X29_Y4_N26
\acc1[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- acc1(5) = (GLOBAL(\acc1[1]~1clkctrl_outclk\) & (\Add0~60_combout\)) # (!GLOBAL(\acc1[1]~1clkctrl_outclk\) & ((acc1(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add0~60_combout\,
	datac => acc1(5),
	datad => \acc1[1]~1clkctrl_outclk\,
	combout => acc1(5));

-- Location: LCCOMB_X30_Y4_N24
\alu_out~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_out~5_combout\ = (acc1(5) & \rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => acc1(5),
	datad => \rst~input_o\,
	combout => \alu_out~5_combout\);

-- Location: IOIBUF_X0_Y11_N22
\mdr[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mdr(6),
	o => \mdr[6]~input_o\);

-- Location: IOIBUF_X18_Y0_N15
\acc[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_acc(6),
	o => \acc[6]~input_o\);

-- Location: IOIBUF_X0_Y11_N15
\rrr[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rrr(6),
	o => \rrr[6]~input_o\);

-- Location: LCCOMB_X28_Y4_N10
\Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~46_combout\ = (\acc[6]~input_o\ & ((\mdr_or_r~input_o\ & ((\rrr[6]~input_o\))) # (!\mdr_or_r~input_o\ & (\mdr[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mdr[6]~input_o\,
	datab => \acc[6]~input_o\,
	datac => \rrr[6]~input_o\,
	datad => \mdr_or_r~input_o\,
	combout => \Add0~46_combout\);

-- Location: LCCOMB_X30_Y4_N10
\Add0~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~47_combout\ = (\acc1[0]~0_combout\ & ((\alu_and~input_o\ & (\Add0~46_combout\)) # (!\alu_and~input_o\ & ((\acc[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc1[0]~0_combout\,
	datab => \Add0~46_combout\,
	datac => \acc[5]~input_o\,
	datad => \alu_and~input_o\,
	combout => \Add0~47_combout\);

-- Location: LCCOMB_X28_Y4_N30
\Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~48_combout\ = \alu_add~input_o\ $ (((\mdr_or_r~input_o\ & ((\rrr[6]~input_o\))) # (!\mdr_or_r~input_o\ & (\mdr[6]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mdr[6]~input_o\,
	datab => \alu_add~input_o\,
	datac => \rrr[6]~input_o\,
	datad => \mdr_or_r~input_o\,
	combout => \Add0~48_combout\);

-- Location: LCCOMB_X29_Y4_N22
\Add0~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~49_combout\ = (\acc[6]~input_o\ & ((\Add0~48_combout\ & (!\Add0~45\)) # (!\Add0~48_combout\ & (\Add0~45\ & VCC)))) # (!\acc[6]~input_o\ & ((\Add0~48_combout\ & ((\Add0~45\) # (GND))) # (!\Add0~48_combout\ & (!\Add0~45\))))
-- \Add0~50\ = CARRY((\acc[6]~input_o\ & (\Add0~48_combout\ & !\Add0~45\)) # (!\acc[6]~input_o\ & ((\Add0~48_combout\) # (!\Add0~45\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \acc[6]~input_o\,
	datab => \Add0~48_combout\,
	datad => VCC,
	cin => \Add0~45\,
	combout => \Add0~49_combout\,
	cout => \Add0~50\);

-- Location: LCCOMB_X30_Y4_N0
\Add0~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~61_combout\ = (\Add0~47_combout\) # ((\Add0~49_combout\ & ((\alu_sub~input_o\) # (\alu_add~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~47_combout\,
	datab => \alu_sub~input_o\,
	datac => \Add0~49_combout\,
	datad => \alu_add~input_o\,
	combout => \Add0~61_combout\);

-- Location: LCCOMB_X30_Y4_N20
\acc1[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- acc1(6) = (GLOBAL(\acc1[1]~1clkctrl_outclk\) & ((\Add0~61_combout\))) # (!GLOBAL(\acc1[1]~1clkctrl_outclk\) & (acc1(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => acc1(6),
	datac => \Add0~61_combout\,
	datad => \acc1[1]~1clkctrl_outclk\,
	combout => acc1(6));

-- Location: LCCOMB_X30_Y4_N26
\alu_out~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_out~6_combout\ = (acc1(6) & \rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => acc1(6),
	datad => \rst~input_o\,
	combout => \alu_out~6_combout\);

-- Location: IOIBUF_X30_Y0_N8
\acc[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_acc(7),
	o => \acc[7]~input_o\);

-- Location: IOIBUF_X16_Y0_N22
\rrr[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rrr(7),
	o => \rrr[7]~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\mdr[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mdr(7),
	o => \mdr[7]~input_o\);

-- Location: LCCOMB_X31_Y4_N24
\Add0~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~51_combout\ = (\acc[7]~input_o\ & ((\mdr_or_r~input_o\ & (\rrr[7]~input_o\)) # (!\mdr_or_r~input_o\ & ((\mdr[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc[7]~input_o\,
	datab => \rrr[7]~input_o\,
	datac => \mdr[7]~input_o\,
	datad => \mdr_or_r~input_o\,
	combout => \Add0~51_combout\);

-- Location: LCCOMB_X30_Y4_N16
\Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~52_combout\ = (\acc1[0]~0_combout\ & ((\alu_and~input_o\ & (\Add0~51_combout\)) # (!\alu_and~input_o\ & ((\acc[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \acc1[0]~0_combout\,
	datab => \Add0~51_combout\,
	datac => \acc[6]~input_o\,
	datad => \alu_and~input_o\,
	combout => \Add0~52_combout\);

-- Location: LCCOMB_X28_Y4_N22
\Add0~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~53_combout\ = \alu_add~input_o\ $ (((\mdr_or_r~input_o\ & ((\rrr[7]~input_o\))) # (!\mdr_or_r~input_o\ & (\mdr[7]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011010011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mdr_or_r~input_o\,
	datab => \alu_add~input_o\,
	datac => \mdr[7]~input_o\,
	datad => \rrr[7]~input_o\,
	combout => \Add0~53_combout\);

-- Location: LCCOMB_X29_Y4_N24
\Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~54_combout\ = \Add0~53_combout\ $ (\Add0~50\ $ (\acc[7]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add0~53_combout\,
	datad => \acc[7]~input_o\,
	cin => \Add0~50\,
	combout => \Add0~54_combout\);

-- Location: LCCOMB_X30_Y4_N30
\Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~62_combout\ = (\Add0~52_combout\) # ((\Add0~54_combout\ & ((\alu_sub~input_o\) # (\alu_add~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \alu_sub~input_o\,
	datab => \Add0~52_combout\,
	datac => \Add0~54_combout\,
	datad => \alu_add~input_o\,
	combout => \Add0~62_combout\);

-- Location: LCCOMB_X30_Y4_N22
\acc1[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- acc1(7) = (GLOBAL(\acc1[1]~1clkctrl_outclk\) & ((\Add0~62_combout\))) # (!GLOBAL(\acc1[1]~1clkctrl_outclk\) & (acc1(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => acc1(7),
	datac => \acc1[1]~1clkctrl_outclk\,
	datad => \Add0~62_combout\,
	combout => acc1(7));

-- Location: LCCOMB_X30_Y4_N12
\alu_out~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \alu_out~7_combout\ = (acc1(7) & \rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => acc1(7),
	datad => \rst~input_o\,
	combout => \alu_out~7_combout\);

ww_alu_out(0) <= \alu_out[0]~output_o\;

ww_alu_out(1) <= \alu_out[1]~output_o\;

ww_alu_out(2) <= \alu_out[2]~output_o\;

ww_alu_out(3) <= \alu_out[3]~output_o\;

ww_alu_out(4) <= \alu_out[4]~output_o\;

ww_alu_out(5) <= \alu_out[5]~output_o\;

ww_alu_out(6) <= \alu_out[6]~output_o\;

ww_alu_out(7) <= \alu_out[7]~output_o\;
END structure;


