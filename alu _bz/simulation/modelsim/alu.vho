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

-- DATE "07/14/2018 07:37:42"

-- 
-- Device: Altera EP4CE6F17C8 Package FBGA256
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

ENTITY 	alu IS
    PORT (
	led1 : OUT std_logic;
	reset : IN std_logic;
	key1 : IN std_logic;
	key2 : IN std_logic;
	key3 : IN std_logic;
	led2 : OUT std_logic;
	led3 : OUT std_logic;
	cout : OUT std_logic_vector(7 DOWNTO 0);
	clock : IN std_logic;
	se : OUT std_logic_vector(5 DOWNTO 0)
	);
END alu;

-- Design Ports Information
-- led1	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led2	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led3	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout[7]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout[6]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout[5]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout[4]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout[3]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout[2]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout[1]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout[0]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- se[5]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- se[4]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- se[3]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- se[2]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- se[1]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- se[0]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key2	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key1	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key3	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_led1 : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_key1 : std_logic;
SIGNAL ww_key2 : std_logic;
SIGNAL ww_key3 : std_logic;
SIGNAL ww_led2 : std_logic;
SIGNAL ww_led3 : std_logic;
SIGNAL ww_cout : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_se : std_logic_vector(5 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \led1~output_o\ : std_logic;
SIGNAL \led2~output_o\ : std_logic;
SIGNAL \led3~output_o\ : std_logic;
SIGNAL \cout[7]~output_o\ : std_logic;
SIGNAL \cout[6]~output_o\ : std_logic;
SIGNAL \cout[5]~output_o\ : std_logic;
SIGNAL \cout[4]~output_o\ : std_logic;
SIGNAL \cout[3]~output_o\ : std_logic;
SIGNAL \cout[2]~output_o\ : std_logic;
SIGNAL \cout[1]~output_o\ : std_logic;
SIGNAL \cout[0]~output_o\ : std_logic;
SIGNAL \se[5]~output_o\ : std_logic;
SIGNAL \se[4]~output_o\ : std_logic;
SIGNAL \se[3]~output_o\ : std_logic;
SIGNAL \se[2]~output_o\ : std_logic;
SIGNAL \se[1]~output_o\ : std_logic;
SIGNAL \se[0]~output_o\ : std_logic;
SIGNAL \key1~input_o\ : std_logic;
SIGNAL \key2~input_o\ : std_logic;
SIGNAL \inst|alu_out[0]~0_combout\ : std_logic;
SIGNAL \key3~input_o\ : std_logic;
SIGNAL \inst|alu_out[1]~1_combout\ : std_logic;
SIGNAL \inst|alu_out[2]~2_combout\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst2|scan:count[23]~q\ : std_logic;
SIGNAL \inst2|Add0~0_combout\ : std_logic;
SIGNAL \inst2|scan:count[0]~q\ : std_logic;
SIGNAL \inst2|Add0~1\ : std_logic;
SIGNAL \inst2|Add0~2_combout\ : std_logic;
SIGNAL \inst2|scan:count[1]~q\ : std_logic;
SIGNAL \inst2|Add0~3\ : std_logic;
SIGNAL \inst2|Add0~4_combout\ : std_logic;
SIGNAL \inst2|scan:count[2]~q\ : std_logic;
SIGNAL \inst2|Add0~5\ : std_logic;
SIGNAL \inst2|Add0~6_combout\ : std_logic;
SIGNAL \inst2|scan:count[3]~q\ : std_logic;
SIGNAL \inst2|Add0~7\ : std_logic;
SIGNAL \inst2|Add0~8_combout\ : std_logic;
SIGNAL \inst2|Equal0~1_combout\ : std_logic;
SIGNAL \inst2|Equal0~0_combout\ : std_logic;
SIGNAL \inst2|Equal0~3_combout\ : std_logic;
SIGNAL \inst2|Equal0~2_combout\ : std_logic;
SIGNAL \inst2|Equal0~4_combout\ : std_logic;
SIGNAL \inst2|scan:count[28]~q\ : std_logic;
SIGNAL \inst2|Add0~47\ : std_logic;
SIGNAL \inst2|Add0~48_combout\ : std_logic;
SIGNAL \inst2|scan:count[24]~q\ : std_logic;
SIGNAL \inst2|Add0~49\ : std_logic;
SIGNAL \inst2|Add0~50_combout\ : std_logic;
SIGNAL \inst2|scan:count[25]~q\ : std_logic;
SIGNAL \inst2|Add0~51\ : std_logic;
SIGNAL \inst2|Add0~52_combout\ : std_logic;
SIGNAL \inst2|scan:count[26]~q\ : std_logic;
SIGNAL \inst2|Add0~53\ : std_logic;
SIGNAL \inst2|Add0~54_combout\ : std_logic;
SIGNAL \inst2|scan:count[27]~q\ : std_logic;
SIGNAL \inst2|Add0~55\ : std_logic;
SIGNAL \inst2|Add0~56_combout\ : std_logic;
SIGNAL \inst2|scan:count[29]~q\ : std_logic;
SIGNAL \inst2|Add0~57\ : std_logic;
SIGNAL \inst2|Add0~58_combout\ : std_logic;
SIGNAL \inst2|scan:count[30]~q\ : std_logic;
SIGNAL \inst2|Add0~59\ : std_logic;
SIGNAL \inst2|Add0~60_combout\ : std_logic;
SIGNAL \inst2|Equal0~8_combout\ : std_logic;
SIGNAL \inst2|Equal0~9_combout\ : std_logic;
SIGNAL \inst2|count~0_combout\ : std_logic;
SIGNAL \inst2|scan:count[4]~q\ : std_logic;
SIGNAL \inst2|Add0~9\ : std_logic;
SIGNAL \inst2|Add0~10_combout\ : std_logic;
SIGNAL \inst2|scan:count[5]~q\ : std_logic;
SIGNAL \inst2|Add0~11\ : std_logic;
SIGNAL \inst2|Add0~12_combout\ : std_logic;
SIGNAL \inst2|scan:count[6]~q\ : std_logic;
SIGNAL \inst2|Add0~13\ : std_logic;
SIGNAL \inst2|Add0~14_combout\ : std_logic;
SIGNAL \inst2|scan:count[7]~q\ : std_logic;
SIGNAL \inst2|Add0~15\ : std_logic;
SIGNAL \inst2|Add0~16_combout\ : std_logic;
SIGNAL \inst2|count~1_combout\ : std_logic;
SIGNAL \inst2|scan:count[8]~q\ : std_logic;
SIGNAL \inst2|Add0~17\ : std_logic;
SIGNAL \inst2|Add0~18_combout\ : std_logic;
SIGNAL \inst2|count~2_combout\ : std_logic;
SIGNAL \inst2|scan:count[9]~q\ : std_logic;
SIGNAL \inst2|Add0~19\ : std_logic;
SIGNAL \inst2|Add0~20_combout\ : std_logic;
SIGNAL \inst2|count~3_combout\ : std_logic;
SIGNAL \inst2|scan:count[10]~q\ : std_logic;
SIGNAL \inst2|Add0~21\ : std_logic;
SIGNAL \inst2|Add0~22_combout\ : std_logic;
SIGNAL \inst2|scan:count[11]~q\ : std_logic;
SIGNAL \inst2|Add0~23\ : std_logic;
SIGNAL \inst2|Add0~24_combout\ : std_logic;
SIGNAL \inst2|scan:count[12]~q\ : std_logic;
SIGNAL \inst2|Add0~25\ : std_logic;
SIGNAL \inst2|Add0~26_combout\ : std_logic;
SIGNAL \inst2|count~4_combout\ : std_logic;
SIGNAL \inst2|count~5_combout\ : std_logic;
SIGNAL \inst2|scan:count[13]~q\ : std_logic;
SIGNAL \inst2|Add0~27\ : std_logic;
SIGNAL \inst2|Add0~28_combout\ : std_logic;
SIGNAL \inst2|scan:count[14]~q\ : std_logic;
SIGNAL \inst2|Add0~29\ : std_logic;
SIGNAL \inst2|Add0~30_combout\ : std_logic;
SIGNAL \inst2|scan:count[15]~q\ : std_logic;
SIGNAL \inst2|Add0~31\ : std_logic;
SIGNAL \inst2|Add0~32_combout\ : std_logic;
SIGNAL \inst2|scan:count[16]~q\ : std_logic;
SIGNAL \inst2|Add0~33\ : std_logic;
SIGNAL \inst2|Add0~34_combout\ : std_logic;
SIGNAL \inst2|scan:count[17]~q\ : std_logic;
SIGNAL \inst2|Add0~35\ : std_logic;
SIGNAL \inst2|Add0~36_combout\ : std_logic;
SIGNAL \inst2|scan:count[18]~q\ : std_logic;
SIGNAL \inst2|Add0~37\ : std_logic;
SIGNAL \inst2|Add0~38_combout\ : std_logic;
SIGNAL \inst2|scan:count[19]~q\ : std_logic;
SIGNAL \inst2|Add0~39\ : std_logic;
SIGNAL \inst2|Add0~40_combout\ : std_logic;
SIGNAL \inst2|scan:count[20]~q\ : std_logic;
SIGNAL \inst2|Add0~41\ : std_logic;
SIGNAL \inst2|Add0~42_combout\ : std_logic;
SIGNAL \inst2|scan:count[21]~q\ : std_logic;
SIGNAL \inst2|Add0~43\ : std_logic;
SIGNAL \inst2|Add0~44_combout\ : std_logic;
SIGNAL \inst2|scan:count[22]~q\ : std_logic;
SIGNAL \inst2|Add0~45\ : std_logic;
SIGNAL \inst2|Add0~46_combout\ : std_logic;
SIGNAL \inst2|Equal0~5_combout\ : std_logic;
SIGNAL \inst2|Equal0~6_combout\ : std_logic;
SIGNAL \inst2|Equal0~7_combout\ : std_logic;
SIGNAL \inst2|sel[0]~0_combout\ : std_logic;
SIGNAL \inst3|Mux0~0_combout\ : std_logic;
SIGNAL \inst3|Mux1~0_combout\ : std_logic;
SIGNAL \inst3|Mux2~0_combout\ : std_logic;
SIGNAL \inst3|Mux3~0_combout\ : std_logic;
SIGNAL \inst2|Mux4~0_combout\ : std_logic;
SIGNAL \inst2|sel\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst3|ALT_INV_Mux0~0_combout\ : std_logic;
SIGNAL \inst2|ALT_INV_sel\ : std_logic_vector(0 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

led1 <= ww_led1;
ww_reset <= reset;
ww_key1 <= key1;
ww_key2 <= key2;
ww_key3 <= key3;
led2 <= ww_led2;
led3 <= ww_led3;
cout <= ww_cout;
ww_clock <= clock;
se <= ww_se;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\inst3|ALT_INV_Mux0~0_combout\ <= NOT \inst3|Mux0~0_combout\;
\inst2|ALT_INV_sel\(0) <= NOT \inst2|sel\(0);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X28_Y24_N23
\led1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_out[0]~0_combout\,
	devoe => ww_devoe,
	o => \led1~output_o\);

-- Location: IOOBUF_X23_Y24_N16
\led2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_out[1]~1_combout\,
	devoe => ww_devoe,
	o => \led2~output_o\);

-- Location: IOOBUF_X18_Y24_N9
\led3~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|alu_out[2]~2_combout\,
	devoe => ww_devoe,
	o => \led3~output_o\);

-- Location: IOOBUF_X34_Y5_N16
\cout[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \cout[7]~output_o\);

-- Location: IOOBUF_X34_Y7_N16
\cout[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|ALT_INV_Mux0~0_combout\,
	devoe => ww_devoe,
	o => \cout[6]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\cout[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux1~0_combout\,
	devoe => ww_devoe,
	o => \cout[5]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\cout[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux2~0_combout\,
	devoe => ww_devoe,
	o => \cout[4]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\cout[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \cout[3]~output_o\);

-- Location: IOOBUF_X34_Y5_N23
\cout[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|Mux4~0_combout\,
	devoe => ww_devoe,
	o => \cout[2]~output_o\);

-- Location: IOOBUF_X34_Y7_N23
\cout[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \cout[1]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\cout[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|Mux3~0_combout\,
	devoe => ww_devoe,
	o => \cout[0]~output_o\);

-- Location: IOOBUF_X21_Y0_N16
\se[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|ALT_INV_sel\(0),
	devoe => ww_devoe,
	o => \se[5]~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\se[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|sel\(0),
	devoe => ww_devoe,
	o => \se[4]~output_o\);

-- Location: IOOBUF_X28_Y0_N2
\se[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \se[3]~output_o\);

-- Location: IOOBUF_X30_Y0_N23
\se[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \se[2]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\se[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \se[1]~output_o\);

-- Location: IOOBUF_X32_Y0_N9
\se[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \se[0]~output_o\);

-- Location: IOIBUF_X34_Y12_N15
\key1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key1,
	o => \key1~input_o\);

-- Location: IOIBUF_X34_Y12_N22
\key2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key2,
	o => \key2~input_o\);

-- Location: LCCOMB_X28_Y8_N16
\inst|alu_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu_out[0]~0_combout\ = (!\key1~input_o\ & \key2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key1~input_o\,
	datad => \key2~input_o\,
	combout => \inst|alu_out[0]~0_combout\);

-- Location: IOIBUF_X34_Y12_N8
\key3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key3,
	o => \key3~input_o\);

-- Location: LCCOMB_X28_Y8_N6
\inst|alu_out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu_out[1]~1_combout\ = (\key3~input_o\ & (\key1~input_o\ $ (\key2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key3~input_o\,
	datac => \key1~input_o\,
	datad => \key2~input_o\,
	combout => \inst|alu_out[1]~1_combout\);

-- Location: LCCOMB_X28_Y8_N20
\inst|alu_out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|alu_out[2]~2_combout\ = (\key3~input_o\ & (\key1~input_o\ & \key2~input_o\)) # (!\key3~input_o\ & ((!\key2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key3~input_o\,
	datac => \key1~input_o\,
	datad => \key2~input_o\,
	combout => \inst|alu_out[2]~2_combout\);

-- Location: IOIBUF_X0_Y11_N8
\clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clock,
	o => \clock~input_o\);

-- Location: CLKCTRL_G2
\clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clock~inputclkctrl_outclk\);

-- Location: FF_X22_Y2_N17
\inst2|scan:count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|scan:count[23]~q\);

-- Location: LCCOMB_X22_Y3_N2
\inst2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~0_combout\ = \inst2|scan:count[0]~q\ $ (VCC)
-- \inst2|Add0~1\ = CARRY(\inst2|scan:count[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2|scan:count[0]~q\,
	datad => VCC,
	combout => \inst2|Add0~0_combout\,
	cout => \inst2|Add0~1\);

-- Location: FF_X22_Y3_N3
\inst2|scan:count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|scan:count[0]~q\);

-- Location: LCCOMB_X22_Y3_N4
\inst2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~2_combout\ = (\inst2|scan:count[1]~q\ & (!\inst2|Add0~1\)) # (!\inst2|scan:count[1]~q\ & ((\inst2|Add0~1\) # (GND)))
-- \inst2|Add0~3\ = CARRY((!\inst2|Add0~1\) # (!\inst2|scan:count[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|scan:count[1]~q\,
	datad => VCC,
	cin => \inst2|Add0~1\,
	combout => \inst2|Add0~2_combout\,
	cout => \inst2|Add0~3\);

-- Location: FF_X22_Y3_N5
\inst2|scan:count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|scan:count[1]~q\);

-- Location: LCCOMB_X22_Y3_N6
\inst2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~4_combout\ = (\inst2|scan:count[2]~q\ & (\inst2|Add0~3\ $ (GND))) # (!\inst2|scan:count[2]~q\ & (!\inst2|Add0~3\ & VCC))
-- \inst2|Add0~5\ = CARRY((\inst2|scan:count[2]~q\ & !\inst2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|scan:count[2]~q\,
	datad => VCC,
	cin => \inst2|Add0~3\,
	combout => \inst2|Add0~4_combout\,
	cout => \inst2|Add0~5\);

-- Location: FF_X22_Y3_N7
\inst2|scan:count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|scan:count[2]~q\);

-- Location: LCCOMB_X22_Y3_N8
\inst2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~6_combout\ = (\inst2|scan:count[3]~q\ & (!\inst2|Add0~5\)) # (!\inst2|scan:count[3]~q\ & ((\inst2|Add0~5\) # (GND)))
-- \inst2|Add0~7\ = CARRY((!\inst2|Add0~5\) # (!\inst2|scan:count[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|scan:count[3]~q\,
	datad => VCC,
	cin => \inst2|Add0~5\,
	combout => \inst2|Add0~6_combout\,
	cout => \inst2|Add0~7\);

-- Location: FF_X22_Y3_N9
\inst2|scan:count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|scan:count[3]~q\);

-- Location: LCCOMB_X22_Y3_N10
\inst2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~8_combout\ = (\inst2|scan:count[4]~q\ & (\inst2|Add0~7\ $ (GND))) # (!\inst2|scan:count[4]~q\ & (!\inst2|Add0~7\ & VCC))
-- \inst2|Add0~9\ = CARRY((\inst2|scan:count[4]~q\ & !\inst2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|scan:count[4]~q\,
	datad => VCC,
	cin => \inst2|Add0~7\,
	combout => \inst2|Add0~8_combout\,
	cout => \inst2|Add0~9\);

-- Location: LCCOMB_X22_Y3_N0
\inst2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~1_combout\ = (\inst2|Add0~8_combout\ & (!\inst2|Add0~14_combout\ & (!\inst2|Add0~10_combout\ & !\inst2|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~8_combout\,
	datab => \inst2|Add0~14_combout\,
	datac => \inst2|Add0~10_combout\,
	datad => \inst2|Add0~12_combout\,
	combout => \inst2|Equal0~1_combout\);

-- Location: LCCOMB_X23_Y3_N28
\inst2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~0_combout\ = (!\inst2|Add0~0_combout\ & (!\inst2|Add0~4_combout\ & (!\inst2|Add0~2_combout\ & !\inst2|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~0_combout\,
	datab => \inst2|Add0~4_combout\,
	datac => \inst2|Add0~2_combout\,
	datad => \inst2|Add0~6_combout\,
	combout => \inst2|Equal0~0_combout\);

-- Location: LCCOMB_X23_Y2_N26
\inst2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~3_combout\ = (!\inst2|Add0~28_combout\ & (\inst2|Add0~26_combout\ & (!\inst2|Add0~30_combout\ & !\inst2|Add0~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~28_combout\,
	datab => \inst2|Add0~26_combout\,
	datac => \inst2|Add0~30_combout\,
	datad => \inst2|Add0~24_combout\,
	combout => \inst2|Equal0~3_combout\);

-- Location: LCCOMB_X23_Y2_N2
\inst2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~2_combout\ = (!\inst2|Add0~22_combout\ & (\inst2|Add0~16_combout\ & (\inst2|Add0~20_combout\ & \inst2|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~22_combout\,
	datab => \inst2|Add0~16_combout\,
	datac => \inst2|Add0~20_combout\,
	datad => \inst2|Add0~18_combout\,
	combout => \inst2|Equal0~2_combout\);

-- Location: LCCOMB_X23_Y2_N4
\inst2|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~4_combout\ = (\inst2|Equal0~1_combout\ & (\inst2|Equal0~0_combout\ & (\inst2|Equal0~3_combout\ & \inst2|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~1_combout\,
	datab => \inst2|Equal0~0_combout\,
	datac => \inst2|Equal0~3_combout\,
	datad => \inst2|Equal0~2_combout\,
	combout => \inst2|Equal0~4_combout\);

-- Location: FF_X22_Y2_N27
\inst2|scan:count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|scan:count[28]~q\);

-- Location: LCCOMB_X22_Y2_N16
\inst2|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~46_combout\ = (\inst2|scan:count[23]~q\ & (!\inst2|Add0~45\)) # (!\inst2|scan:count[23]~q\ & ((\inst2|Add0~45\) # (GND)))
-- \inst2|Add0~47\ = CARRY((!\inst2|Add0~45\) # (!\inst2|scan:count[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|scan:count[23]~q\,
	datad => VCC,
	cin => \inst2|Add0~45\,
	combout => \inst2|Add0~46_combout\,
	cout => \inst2|Add0~47\);

-- Location: LCCOMB_X22_Y2_N18
\inst2|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~48_combout\ = (\inst2|scan:count[24]~q\ & (\inst2|Add0~47\ $ (GND))) # (!\inst2|scan:count[24]~q\ & (!\inst2|Add0~47\ & VCC))
-- \inst2|Add0~49\ = CARRY((\inst2|scan:count[24]~q\ & !\inst2|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|scan:count[24]~q\,
	datad => VCC,
	cin => \inst2|Add0~47\,
	combout => \inst2|Add0~48_combout\,
	cout => \inst2|Add0~49\);

-- Location: FF_X22_Y2_N19
\inst2|scan:count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|scan:count[24]~q\);

-- Location: LCCOMB_X22_Y2_N20
\inst2|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~50_combout\ = (\inst2|scan:count[25]~q\ & (!\inst2|Add0~49\)) # (!\inst2|scan:count[25]~q\ & ((\inst2|Add0~49\) # (GND)))
-- \inst2|Add0~51\ = CARRY((!\inst2|Add0~49\) # (!\inst2|scan:count[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|scan:count[25]~q\,
	datad => VCC,
	cin => \inst2|Add0~49\,
	combout => \inst2|Add0~50_combout\,
	cout => \inst2|Add0~51\);

-- Location: FF_X22_Y2_N21
\inst2|scan:count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|scan:count[25]~q\);

-- Location: LCCOMB_X22_Y2_N22
\inst2|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~52_combout\ = (\inst2|scan:count[26]~q\ & (\inst2|Add0~51\ $ (GND))) # (!\inst2|scan:count[26]~q\ & (!\inst2|Add0~51\ & VCC))
-- \inst2|Add0~53\ = CARRY((\inst2|scan:count[26]~q\ & !\inst2|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|scan:count[26]~q\,
	datad => VCC,
	cin => \inst2|Add0~51\,
	combout => \inst2|Add0~52_combout\,
	cout => \inst2|Add0~53\);

-- Location: FF_X22_Y2_N23
\inst2|scan:count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|scan:count[26]~q\);

-- Location: LCCOMB_X22_Y2_N24
\inst2|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~54_combout\ = (\inst2|scan:count[27]~q\ & (!\inst2|Add0~53\)) # (!\inst2|scan:count[27]~q\ & ((\inst2|Add0~53\) # (GND)))
-- \inst2|Add0~55\ = CARRY((!\inst2|Add0~53\) # (!\inst2|scan:count[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|scan:count[27]~q\,
	datad => VCC,
	cin => \inst2|Add0~53\,
	combout => \inst2|Add0~54_combout\,
	cout => \inst2|Add0~55\);

-- Location: FF_X22_Y2_N25
\inst2|scan:count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|scan:count[27]~q\);

-- Location: LCCOMB_X22_Y2_N26
\inst2|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~56_combout\ = (\inst2|scan:count[28]~q\ & (\inst2|Add0~55\ $ (GND))) # (!\inst2|scan:count[28]~q\ & (!\inst2|Add0~55\ & VCC))
-- \inst2|Add0~57\ = CARRY((\inst2|scan:count[28]~q\ & !\inst2|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|scan:count[28]~q\,
	datad => VCC,
	cin => \inst2|Add0~55\,
	combout => \inst2|Add0~56_combout\,
	cout => \inst2|Add0~57\);

-- Location: FF_X22_Y2_N29
\inst2|scan:count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|scan:count[29]~q\);

-- Location: LCCOMB_X22_Y2_N28
\inst2|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~58_combout\ = (\inst2|scan:count[29]~q\ & (!\inst2|Add0~57\)) # (!\inst2|scan:count[29]~q\ & ((\inst2|Add0~57\) # (GND)))
-- \inst2|Add0~59\ = CARRY((!\inst2|Add0~57\) # (!\inst2|scan:count[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|scan:count[29]~q\,
	datad => VCC,
	cin => \inst2|Add0~57\,
	combout => \inst2|Add0~58_combout\,
	cout => \inst2|Add0~59\);

-- Location: FF_X22_Y2_N31
\inst2|scan:count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|scan:count[30]~q\);

-- Location: LCCOMB_X22_Y2_N30
\inst2|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~60_combout\ = \inst2|scan:count[30]~q\ $ (!\inst2|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|scan:count[30]~q\,
	cin => \inst2|Add0~59\,
	combout => \inst2|Add0~60_combout\);

-- Location: LCCOMB_X23_Y2_N28
\inst2|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~8_combout\ = (!\inst2|Add0~48_combout\ & (!\inst2|Add0~52_combout\ & (!\inst2|Add0~50_combout\ & !\inst2|Add0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~48_combout\,
	datab => \inst2|Add0~52_combout\,
	datac => \inst2|Add0~50_combout\,
	datad => \inst2|Add0~54_combout\,
	combout => \inst2|Equal0~8_combout\);

-- Location: LCCOMB_X23_Y2_N6
\inst2|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~9_combout\ = (!\inst2|Add0~56_combout\ & (!\inst2|Add0~58_combout\ & (!\inst2|Add0~60_combout\ & \inst2|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~56_combout\,
	datab => \inst2|Add0~58_combout\,
	datac => \inst2|Add0~60_combout\,
	datad => \inst2|Equal0~8_combout\,
	combout => \inst2|Equal0~9_combout\);

-- Location: LCCOMB_X23_Y2_N10
\inst2|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count~0_combout\ = (\inst2|Add0~8_combout\ & (((!\inst2|Equal0~9_combout\) # (!\inst2|Equal0~7_combout\)) # (!\inst2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~8_combout\,
	datab => \inst2|Equal0~4_combout\,
	datac => \inst2|Equal0~7_combout\,
	datad => \inst2|Equal0~9_combout\,
	combout => \inst2|count~0_combout\);

-- Location: FF_X23_Y2_N11
\inst2|scan:count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|scan:count[4]~q\);

-- Location: LCCOMB_X22_Y3_N12
\inst2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~10_combout\ = (\inst2|scan:count[5]~q\ & (!\inst2|Add0~9\)) # (!\inst2|scan:count[5]~q\ & ((\inst2|Add0~9\) # (GND)))
-- \inst2|Add0~11\ = CARRY((!\inst2|Add0~9\) # (!\inst2|scan:count[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|scan:count[5]~q\,
	datad => VCC,
	cin => \inst2|Add0~9\,
	combout => \inst2|Add0~10_combout\,
	cout => \inst2|Add0~11\);

-- Location: FF_X22_Y3_N13
\inst2|scan:count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|scan:count[5]~q\);

-- Location: LCCOMB_X22_Y3_N14
\inst2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~12_combout\ = (\inst2|scan:count[6]~q\ & (\inst2|Add0~11\ $ (GND))) # (!\inst2|scan:count[6]~q\ & (!\inst2|Add0~11\ & VCC))
-- \inst2|Add0~13\ = CARRY((\inst2|scan:count[6]~q\ & !\inst2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|scan:count[6]~q\,
	datad => VCC,
	cin => \inst2|Add0~11\,
	combout => \inst2|Add0~12_combout\,
	cout => \inst2|Add0~13\);

-- Location: FF_X22_Y3_N15
\inst2|scan:count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|scan:count[6]~q\);

-- Location: LCCOMB_X22_Y3_N16
\inst2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~14_combout\ = (\inst2|scan:count[7]~q\ & (!\inst2|Add0~13\)) # (!\inst2|scan:count[7]~q\ & ((\inst2|Add0~13\) # (GND)))
-- \inst2|Add0~15\ = CARRY((!\inst2|Add0~13\) # (!\inst2|scan:count[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|scan:count[7]~q\,
	datad => VCC,
	cin => \inst2|Add0~13\,
	combout => \inst2|Add0~14_combout\,
	cout => \inst2|Add0~15\);

-- Location: FF_X22_Y3_N17
\inst2|scan:count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|scan:count[7]~q\);

-- Location: LCCOMB_X22_Y3_N18
\inst2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~16_combout\ = (\inst2|scan:count[8]~q\ & (\inst2|Add0~15\ $ (GND))) # (!\inst2|scan:count[8]~q\ & (!\inst2|Add0~15\ & VCC))
-- \inst2|Add0~17\ = CARRY((\inst2|scan:count[8]~q\ & !\inst2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|scan:count[8]~q\,
	datad => VCC,
	cin => \inst2|Add0~15\,
	combout => \inst2|Add0~16_combout\,
	cout => \inst2|Add0~17\);

-- Location: LCCOMB_X23_Y2_N8
\inst2|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count~1_combout\ = (\inst2|Add0~16_combout\ & (((!\inst2|Equal0~9_combout\) # (!\inst2|Equal0~7_combout\)) # (!\inst2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~16_combout\,
	datab => \inst2|Equal0~4_combout\,
	datac => \inst2|Equal0~7_combout\,
	datad => \inst2|Equal0~9_combout\,
	combout => \inst2|count~1_combout\);

-- Location: FF_X23_Y2_N9
\inst2|scan:count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|scan:count[8]~q\);

-- Location: LCCOMB_X22_Y3_N20
\inst2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~18_combout\ = (\inst2|scan:count[9]~q\ & (!\inst2|Add0~17\)) # (!\inst2|scan:count[9]~q\ & ((\inst2|Add0~17\) # (GND)))
-- \inst2|Add0~19\ = CARRY((!\inst2|Add0~17\) # (!\inst2|scan:count[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|scan:count[9]~q\,
	datad => VCC,
	cin => \inst2|Add0~17\,
	combout => \inst2|Add0~18_combout\,
	cout => \inst2|Add0~19\);

-- Location: LCCOMB_X23_Y2_N22
\inst2|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count~2_combout\ = (\inst2|Add0~18_combout\ & (((!\inst2|Equal0~9_combout\) # (!\inst2|Equal0~7_combout\)) # (!\inst2|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~18_combout\,
	datab => \inst2|Equal0~4_combout\,
	datac => \inst2|Equal0~7_combout\,
	datad => \inst2|Equal0~9_combout\,
	combout => \inst2|count~2_combout\);

-- Location: FF_X23_Y2_N23
\inst2|scan:count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|scan:count[9]~q\);

-- Location: LCCOMB_X22_Y3_N22
\inst2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~20_combout\ = (\inst2|scan:count[10]~q\ & (\inst2|Add0~19\ $ (GND))) # (!\inst2|scan:count[10]~q\ & (!\inst2|Add0~19\ & VCC))
-- \inst2|Add0~21\ = CARRY((\inst2|scan:count[10]~q\ & !\inst2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|scan:count[10]~q\,
	datad => VCC,
	cin => \inst2|Add0~19\,
	combout => \inst2|Add0~20_combout\,
	cout => \inst2|Add0~21\);

-- Location: LCCOMB_X23_Y2_N20
\inst2|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count~3_combout\ = (\inst2|Add0~20_combout\ & (((!\inst2|Equal0~9_combout\) # (!\inst2|Equal0~4_combout\)) # (!\inst2|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~7_combout\,
	datab => \inst2|Add0~20_combout\,
	datac => \inst2|Equal0~4_combout\,
	datad => \inst2|Equal0~9_combout\,
	combout => \inst2|count~3_combout\);

-- Location: FF_X23_Y2_N21
\inst2|scan:count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|scan:count[10]~q\);

-- Location: LCCOMB_X22_Y3_N24
\inst2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~22_combout\ = (\inst2|scan:count[11]~q\ & (!\inst2|Add0~21\)) # (!\inst2|scan:count[11]~q\ & ((\inst2|Add0~21\) # (GND)))
-- \inst2|Add0~23\ = CARRY((!\inst2|Add0~21\) # (!\inst2|scan:count[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|scan:count[11]~q\,
	datad => VCC,
	cin => \inst2|Add0~21\,
	combout => \inst2|Add0~22_combout\,
	cout => \inst2|Add0~23\);

-- Location: FF_X22_Y3_N25
\inst2|scan:count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|scan:count[11]~q\);

-- Location: LCCOMB_X22_Y3_N26
\inst2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~24_combout\ = (\inst2|scan:count[12]~q\ & (\inst2|Add0~23\ $ (GND))) # (!\inst2|scan:count[12]~q\ & (!\inst2|Add0~23\ & VCC))
-- \inst2|Add0~25\ = CARRY((\inst2|scan:count[12]~q\ & !\inst2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|scan:count[12]~q\,
	datad => VCC,
	cin => \inst2|Add0~23\,
	combout => \inst2|Add0~24_combout\,
	cout => \inst2|Add0~25\);

-- Location: FF_X22_Y3_N27
\inst2|scan:count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|scan:count[12]~q\);

-- Location: LCCOMB_X22_Y3_N28
\inst2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~26_combout\ = (\inst2|scan:count[13]~q\ & (!\inst2|Add0~25\)) # (!\inst2|scan:count[13]~q\ & ((\inst2|Add0~25\) # (GND)))
-- \inst2|Add0~27\ = CARRY((!\inst2|Add0~25\) # (!\inst2|scan:count[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|scan:count[13]~q\,
	datad => VCC,
	cin => \inst2|Add0~25\,
	combout => \inst2|Add0~26_combout\,
	cout => \inst2|Add0~27\);

-- Location: LCCOMB_X23_Y2_N24
\inst2|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count~4_combout\ = (!\inst2|Add0~56_combout\ & (!\inst2|Add0~58_combout\ & (!\inst2|Add0~60_combout\ & \inst2|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~56_combout\,
	datab => \inst2|Add0~58_combout\,
	datac => \inst2|Add0~60_combout\,
	datad => \inst2|Equal0~8_combout\,
	combout => \inst2|count~4_combout\);

-- Location: LCCOMB_X23_Y2_N0
\inst2|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|count~5_combout\ = (\inst2|Add0~26_combout\ & (((!\inst2|count~4_combout\) # (!\inst2|Equal0~4_combout\)) # (!\inst2|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~7_combout\,
	datab => \inst2|Add0~26_combout\,
	datac => \inst2|Equal0~4_combout\,
	datad => \inst2|count~4_combout\,
	combout => \inst2|count~5_combout\);

-- Location: FF_X23_Y2_N1
\inst2|scan:count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|count~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|scan:count[13]~q\);

-- Location: LCCOMB_X22_Y3_N30
\inst2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~28_combout\ = (\inst2|scan:count[14]~q\ & (\inst2|Add0~27\ $ (GND))) # (!\inst2|scan:count[14]~q\ & (!\inst2|Add0~27\ & VCC))
-- \inst2|Add0~29\ = CARRY((\inst2|scan:count[14]~q\ & !\inst2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|scan:count[14]~q\,
	datad => VCC,
	cin => \inst2|Add0~27\,
	combout => \inst2|Add0~28_combout\,
	cout => \inst2|Add0~29\);

-- Location: FF_X22_Y3_N31
\inst2|scan:count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|scan:count[14]~q\);

-- Location: LCCOMB_X22_Y2_N0
\inst2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~30_combout\ = (\inst2|scan:count[15]~q\ & (!\inst2|Add0~29\)) # (!\inst2|scan:count[15]~q\ & ((\inst2|Add0~29\) # (GND)))
-- \inst2|Add0~31\ = CARRY((!\inst2|Add0~29\) # (!\inst2|scan:count[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|scan:count[15]~q\,
	datad => VCC,
	cin => \inst2|Add0~29\,
	combout => \inst2|Add0~30_combout\,
	cout => \inst2|Add0~31\);

-- Location: FF_X22_Y2_N1
\inst2|scan:count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|scan:count[15]~q\);

-- Location: LCCOMB_X22_Y2_N2
\inst2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~32_combout\ = (\inst2|scan:count[16]~q\ & (\inst2|Add0~31\ $ (GND))) # (!\inst2|scan:count[16]~q\ & (!\inst2|Add0~31\ & VCC))
-- \inst2|Add0~33\ = CARRY((\inst2|scan:count[16]~q\ & !\inst2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|scan:count[16]~q\,
	datad => VCC,
	cin => \inst2|Add0~31\,
	combout => \inst2|Add0~32_combout\,
	cout => \inst2|Add0~33\);

-- Location: FF_X22_Y2_N3
\inst2|scan:count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|scan:count[16]~q\);

-- Location: LCCOMB_X22_Y2_N4
\inst2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~34_combout\ = (\inst2|scan:count[17]~q\ & (!\inst2|Add0~33\)) # (!\inst2|scan:count[17]~q\ & ((\inst2|Add0~33\) # (GND)))
-- \inst2|Add0~35\ = CARRY((!\inst2|Add0~33\) # (!\inst2|scan:count[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|scan:count[17]~q\,
	datad => VCC,
	cin => \inst2|Add0~33\,
	combout => \inst2|Add0~34_combout\,
	cout => \inst2|Add0~35\);

-- Location: FF_X22_Y2_N5
\inst2|scan:count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|scan:count[17]~q\);

-- Location: LCCOMB_X22_Y2_N6
\inst2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~36_combout\ = (\inst2|scan:count[18]~q\ & (\inst2|Add0~35\ $ (GND))) # (!\inst2|scan:count[18]~q\ & (!\inst2|Add0~35\ & VCC))
-- \inst2|Add0~37\ = CARRY((\inst2|scan:count[18]~q\ & !\inst2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|scan:count[18]~q\,
	datad => VCC,
	cin => \inst2|Add0~35\,
	combout => \inst2|Add0~36_combout\,
	cout => \inst2|Add0~37\);

-- Location: FF_X22_Y2_N7
\inst2|scan:count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|scan:count[18]~q\);

-- Location: LCCOMB_X22_Y2_N8
\inst2|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~38_combout\ = (\inst2|scan:count[19]~q\ & (!\inst2|Add0~37\)) # (!\inst2|scan:count[19]~q\ & ((\inst2|Add0~37\) # (GND)))
-- \inst2|Add0~39\ = CARRY((!\inst2|Add0~37\) # (!\inst2|scan:count[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|scan:count[19]~q\,
	datad => VCC,
	cin => \inst2|Add0~37\,
	combout => \inst2|Add0~38_combout\,
	cout => \inst2|Add0~39\);

-- Location: FF_X22_Y2_N9
\inst2|scan:count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|scan:count[19]~q\);

-- Location: LCCOMB_X22_Y2_N10
\inst2|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~40_combout\ = (\inst2|scan:count[20]~q\ & (\inst2|Add0~39\ $ (GND))) # (!\inst2|scan:count[20]~q\ & (!\inst2|Add0~39\ & VCC))
-- \inst2|Add0~41\ = CARRY((\inst2|scan:count[20]~q\ & !\inst2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|scan:count[20]~q\,
	datad => VCC,
	cin => \inst2|Add0~39\,
	combout => \inst2|Add0~40_combout\,
	cout => \inst2|Add0~41\);

-- Location: FF_X22_Y2_N11
\inst2|scan:count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|scan:count[20]~q\);

-- Location: LCCOMB_X22_Y2_N12
\inst2|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~42_combout\ = (\inst2|scan:count[21]~q\ & (!\inst2|Add0~41\)) # (!\inst2|scan:count[21]~q\ & ((\inst2|Add0~41\) # (GND)))
-- \inst2|Add0~43\ = CARRY((!\inst2|Add0~41\) # (!\inst2|scan:count[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|scan:count[21]~q\,
	datad => VCC,
	cin => \inst2|Add0~41\,
	combout => \inst2|Add0~42_combout\,
	cout => \inst2|Add0~43\);

-- Location: FF_X22_Y2_N13
\inst2|scan:count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|scan:count[21]~q\);

-- Location: LCCOMB_X22_Y2_N14
\inst2|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Add0~44_combout\ = (\inst2|scan:count[22]~q\ & (\inst2|Add0~43\ $ (GND))) # (!\inst2|scan:count[22]~q\ & (!\inst2|Add0~43\ & VCC))
-- \inst2|Add0~45\ = CARRY((\inst2|scan:count[22]~q\ & !\inst2|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst2|scan:count[22]~q\,
	datad => VCC,
	cin => \inst2|Add0~43\,
	combout => \inst2|Add0~44_combout\,
	cout => \inst2|Add0~45\);

-- Location: FF_X22_Y2_N15
\inst2|scan:count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|scan:count[22]~q\);

-- Location: LCCOMB_X23_Y2_N14
\inst2|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~5_combout\ = (!\inst2|Add0~32_combout\ & (!\inst2|Add0~36_combout\ & (!\inst2|Add0~34_combout\ & !\inst2|Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~32_combout\,
	datab => \inst2|Add0~36_combout\,
	datac => \inst2|Add0~34_combout\,
	datad => \inst2|Add0~38_combout\,
	combout => \inst2|Equal0~5_combout\);

-- Location: LCCOMB_X23_Y2_N12
\inst2|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~6_combout\ = (!\inst2|Add0~40_combout\ & !\inst2|Add0~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~40_combout\,
	datad => \inst2|Add0~42_combout\,
	combout => \inst2|Equal0~6_combout\);

-- Location: LCCOMB_X23_Y2_N30
\inst2|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Equal0~7_combout\ = (!\inst2|Add0~46_combout\ & (!\inst2|Add0~44_combout\ & (\inst2|Equal0~5_combout\ & \inst2|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Add0~46_combout\,
	datab => \inst2|Add0~44_combout\,
	datac => \inst2|Equal0~5_combout\,
	datad => \inst2|Equal0~6_combout\,
	combout => \inst2|Equal0~7_combout\);

-- Location: LCCOMB_X23_Y2_N16
\inst2|sel[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|sel[0]~0_combout\ = \inst2|sel\(0) $ (((\inst2|Equal0~7_combout\ & (\inst2|Equal0~4_combout\ & \inst2|Equal0~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|Equal0~7_combout\,
	datab => \inst2|Equal0~4_combout\,
	datac => \inst2|sel\(0),
	datad => \inst2|Equal0~9_combout\,
	combout => \inst2|sel[0]~0_combout\);

-- Location: FF_X23_Y2_N17
\inst2|sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst2|sel[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sel\(0));

-- Location: LCCOMB_X28_Y8_N30
\inst3|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux0~0_combout\ = (!\inst2|sel\(0) & ((\key3~input_o\ & ((\key1~input_o\) # (\key2~input_o\))) # (!\key3~input_o\ & ((!\key2~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key3~input_o\,
	datab => \inst2|sel\(0),
	datac => \key1~input_o\,
	datad => \key2~input_o\,
	combout => \inst3|Mux0~0_combout\);

-- Location: LCCOMB_X28_Y8_N24
\inst3|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux1~0_combout\ = (!\inst2|sel\(0) & ((\key1~input_o\ & (\key3~input_o\ & !\key2~input_o\)) # (!\key1~input_o\ & ((\key2~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key3~input_o\,
	datab => \inst2|sel\(0),
	datac => \key1~input_o\,
	datad => \key2~input_o\,
	combout => \inst3|Mux1~0_combout\);

-- Location: LCCOMB_X28_Y8_N26
\inst3|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux2~0_combout\ = (!\inst2|sel\(0) & ((\key3~input_o\ & ((\key2~input_o\))) # (!\key3~input_o\ & ((!\key2~input_o\) # (!\key1~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key3~input_o\,
	datab => \inst2|sel\(0),
	datac => \key1~input_o\,
	datad => \key2~input_o\,
	combout => \inst3|Mux2~0_combout\);

-- Location: LCCOMB_X28_Y8_N28
\inst3|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Mux3~0_combout\ = (!\inst2|sel\(0) & (\key3~input_o\ $ (((!\key2~input_o\) # (!\key1~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key3~input_o\,
	datab => \inst2|sel\(0),
	datac => \key1~input_o\,
	datad => \key2~input_o\,
	combout => \inst3|Mux3~0_combout\);

-- Location: LCCOMB_X28_Y8_N22
\inst2|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst2|Mux4~0_combout\ = (\key3~input_o\ & (!\inst2|sel\(0) & (\key1~input_o\ & !\key2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key3~input_o\,
	datab => \inst2|sel\(0),
	datac => \key1~input_o\,
	datad => \key2~input_o\,
	combout => \inst2|Mux4~0_combout\);

-- Location: IOIBUF_X34_Y2_N22
\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

ww_led1 <= \led1~output_o\;

ww_led2 <= \led2~output_o\;

ww_led3 <= \led3~output_o\;

ww_cout(7) <= \cout[7]~output_o\;

ww_cout(6) <= \cout[6]~output_o\;

ww_cout(5) <= \cout[5]~output_o\;

ww_cout(4) <= \cout[4]~output_o\;

ww_cout(3) <= \cout[3]~output_o\;

ww_cout(2) <= \cout[2]~output_o\;

ww_cout(1) <= \cout[1]~output_o\;

ww_cout(0) <= \cout[0]~output_o\;

ww_se(5) <= \se[5]~output_o\;

ww_se(4) <= \se[4]~output_o\;

ww_se(3) <= \se[3]~output_o\;

ww_se(2) <= \se[2]~output_o\;

ww_se(1) <= \se[1]~output_o\;

ww_se(0) <= \se[0]~output_o\;
END structure;


