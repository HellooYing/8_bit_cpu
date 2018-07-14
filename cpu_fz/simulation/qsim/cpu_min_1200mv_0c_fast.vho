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

-- DATE "07/13/2018 16:39:21"

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

ENTITY 	cpu IS
    PORT (
	add_r_out : OUT std_logic_vector(4 DOWNTO 0);
	clock : IN std_logic;
	mode : IN std_logic;
	cout : OUT std_logic_vector(7 DOWNTO 0);
	data_r_out : OUT std_logic_vector(21 DOWNTO 0);
	op_out : OUT std_logic_vector(2 DOWNTO 0);
	output : OUT std_logic_vector(7 DOWNTO 0);
	se : OUT std_logic_vector(5 DOWNTO 0)
	);
END cpu;

-- Design Ports Information
-- add_r_out[4]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- add_r_out[3]	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- add_r_out[2]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- add_r_out[1]	=>  Location: PIN_K10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- add_r_out[0]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- mode	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout[7]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout[6]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout[5]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout[4]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout[3]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout[2]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout[1]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- cout[0]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_r_out[21]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_r_out[20]	=>  Location: PIN_T12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_r_out[19]	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_r_out[18]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_r_out[17]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_r_out[16]	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_r_out[15]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_r_out[14]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_r_out[13]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_r_out[12]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_r_out[11]	=>  Location: PIN_P8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_r_out[10]	=>  Location: PIN_K9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_r_out[9]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_r_out[8]	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_r_out[7]	=>  Location: PIN_L9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_r_out[6]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_r_out[5]	=>  Location: PIN_R6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_r_out[4]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_r_out[3]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_r_out[2]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_r_out[1]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- data_r_out[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_out[2]	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_out[1]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- op_out[0]	=>  Location: PIN_R5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[7]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[6]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[5]	=>  Location: PIN_T6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[4]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[3]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[2]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[1]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- output[0]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- se[5]	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- se[4]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- se[3]	=>  Location: PIN_M10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- se[2]	=>  Location: PIN_N11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- se[1]	=>  Location: PIN_P11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- se[0]	=>  Location: PIN_M11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clock	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF cpu IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_add_r_out : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_clock : std_logic;
SIGNAL ww_mode : std_logic;
SIGNAL ww_cout : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_data_r_out : std_logic_vector(21 DOWNTO 0);
SIGNAL ww_op_out : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_output : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_se : std_logic_vector(5 DOWNTO 0);
SIGNAL \clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \mode~input_o\ : std_logic;
SIGNAL \add_r_out[4]~output_o\ : std_logic;
SIGNAL \add_r_out[3]~output_o\ : std_logic;
SIGNAL \add_r_out[2]~output_o\ : std_logic;
SIGNAL \add_r_out[1]~output_o\ : std_logic;
SIGNAL \add_r_out[0]~output_o\ : std_logic;
SIGNAL \cout[7]~output_o\ : std_logic;
SIGNAL \cout[6]~output_o\ : std_logic;
SIGNAL \cout[5]~output_o\ : std_logic;
SIGNAL \cout[4]~output_o\ : std_logic;
SIGNAL \cout[3]~output_o\ : std_logic;
SIGNAL \cout[2]~output_o\ : std_logic;
SIGNAL \cout[1]~output_o\ : std_logic;
SIGNAL \cout[0]~output_o\ : std_logic;
SIGNAL \data_r_out[21]~output_o\ : std_logic;
SIGNAL \data_r_out[20]~output_o\ : std_logic;
SIGNAL \data_r_out[19]~output_o\ : std_logic;
SIGNAL \data_r_out[18]~output_o\ : std_logic;
SIGNAL \data_r_out[17]~output_o\ : std_logic;
SIGNAL \data_r_out[16]~output_o\ : std_logic;
SIGNAL \data_r_out[15]~output_o\ : std_logic;
SIGNAL \data_r_out[14]~output_o\ : std_logic;
SIGNAL \data_r_out[13]~output_o\ : std_logic;
SIGNAL \data_r_out[12]~output_o\ : std_logic;
SIGNAL \data_r_out[11]~output_o\ : std_logic;
SIGNAL \data_r_out[10]~output_o\ : std_logic;
SIGNAL \data_r_out[9]~output_o\ : std_logic;
SIGNAL \data_r_out[8]~output_o\ : std_logic;
SIGNAL \data_r_out[7]~output_o\ : std_logic;
SIGNAL \data_r_out[6]~output_o\ : std_logic;
SIGNAL \data_r_out[5]~output_o\ : std_logic;
SIGNAL \data_r_out[4]~output_o\ : std_logic;
SIGNAL \data_r_out[3]~output_o\ : std_logic;
SIGNAL \data_r_out[2]~output_o\ : std_logic;
SIGNAL \data_r_out[1]~output_o\ : std_logic;
SIGNAL \data_r_out[0]~output_o\ : std_logic;
SIGNAL \op_out[2]~output_o\ : std_logic;
SIGNAL \op_out[1]~output_o\ : std_logic;
SIGNAL \op_out[0]~output_o\ : std_logic;
SIGNAL \output[7]~output_o\ : std_logic;
SIGNAL \output[6]~output_o\ : std_logic;
SIGNAL \output[5]~output_o\ : std_logic;
SIGNAL \output[4]~output_o\ : std_logic;
SIGNAL \output[3]~output_o\ : std_logic;
SIGNAL \output[2]~output_o\ : std_logic;
SIGNAL \output[1]~output_o\ : std_logic;
SIGNAL \output[0]~output_o\ : std_logic;
SIGNAL \se[5]~output_o\ : std_logic;
SIGNAL \se[4]~output_o\ : std_logic;
SIGNAL \se[3]~output_o\ : std_logic;
SIGNAL \se[2]~output_o\ : std_logic;
SIGNAL \se[1]~output_o\ : std_logic;
SIGNAL \se[0]~output_o\ : std_logic;
SIGNAL \clock~input_o\ : std_logic;
SIGNAL \clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst|add_r[4]~feeder_combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|count1~0_combout\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst|Add0~13\ : std_logic;
SIGNAL \inst|Add0~14_combout\ : std_logic;
SIGNAL \inst|Add0~15\ : std_logic;
SIGNAL \inst|Add0~16_combout\ : std_logic;
SIGNAL \inst|Add0~17\ : std_logic;
SIGNAL \inst|Add0~18_combout\ : std_logic;
SIGNAL \inst|Add0~19\ : std_logic;
SIGNAL \inst|Add0~20_combout\ : std_logic;
SIGNAL \inst|Add0~21\ : std_logic;
SIGNAL \inst|Add0~22_combout\ : std_logic;
SIGNAL \inst|Add0~23\ : std_logic;
SIGNAL \inst|Add0~24_combout\ : std_logic;
SIGNAL \inst|Add0~25\ : std_logic;
SIGNAL \inst|Add0~26_combout\ : std_logic;
SIGNAL \inst|Add0~27\ : std_logic;
SIGNAL \inst|Add0~28_combout\ : std_logic;
SIGNAL \inst|Add0~29\ : std_logic;
SIGNAL \inst|Add0~30_combout\ : std_logic;
SIGNAL \inst|Add0~31\ : std_logic;
SIGNAL \inst|Add0~32_combout\ : std_logic;
SIGNAL \inst|Add0~33\ : std_logic;
SIGNAL \inst|Add0~34_combout\ : std_logic;
SIGNAL \inst|Add0~35\ : std_logic;
SIGNAL \inst|Add0~36_combout\ : std_logic;
SIGNAL \inst|Add0~37\ : std_logic;
SIGNAL \inst|Add0~38_combout\ : std_logic;
SIGNAL \inst|Add0~39\ : std_logic;
SIGNAL \inst|Add0~40_combout\ : std_logic;
SIGNAL \inst|Add0~41\ : std_logic;
SIGNAL \inst|Add0~42_combout\ : std_logic;
SIGNAL \inst|Add0~43\ : std_logic;
SIGNAL \inst|Add0~44_combout\ : std_logic;
SIGNAL \inst|Add0~45\ : std_logic;
SIGNAL \inst|Add0~46_combout\ : std_logic;
SIGNAL \inst|Add0~47\ : std_logic;
SIGNAL \inst|Add0~48_combout\ : std_logic;
SIGNAL \inst|Add0~49\ : std_logic;
SIGNAL \inst|Add0~50_combout\ : std_logic;
SIGNAL \inst|Add0~51\ : std_logic;
SIGNAL \inst|Add0~52_combout\ : std_logic;
SIGNAL \inst|Add0~53\ : std_logic;
SIGNAL \inst|Add0~54_combout\ : std_logic;
SIGNAL \inst|Add0~55\ : std_logic;
SIGNAL \inst|Add0~56_combout\ : std_logic;
SIGNAL \inst|Add0~57\ : std_logic;
SIGNAL \inst|Add0~58_combout\ : std_logic;
SIGNAL \inst|Add0~59\ : std_logic;
SIGNAL \inst|Add0~60_combout\ : std_logic;
SIGNAL \inst|Equal0~5_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~2_combout\ : std_logic;
SIGNAL \inst|Equal0~3_combout\ : std_logic;
SIGNAL \inst|Equal0~4_combout\ : std_logic;
SIGNAL \inst|Equal0~6_combout\ : std_logic;
SIGNAL \inst|Equal0~7_combout\ : std_logic;
SIGNAL \inst|Equal0~8_combout\ : std_logic;
SIGNAL \inst|Equal0~9_combout\ : std_logic;
SIGNAL \inst|Mux4~1_combout\ : std_logic;
SIGNAL \inst|acc~18_combout\ : std_logic;
SIGNAL \inst|Mux8~0_combout\ : std_logic;
SIGNAL \inst|sysbus~39_combout\ : std_logic;
SIGNAL \inst|Mux3~0_combout\ : std_logic;
SIGNAL \inst|Mux3~1_combout\ : std_logic;
SIGNAL \inst|Mux1~0_combout\ : std_logic;
SIGNAL \inst|Mux1~1_combout\ : std_logic;
SIGNAL \inst|Mux9~0_combout\ : std_logic;
SIGNAL \inst|rrr[3]~3_combout\ : std_logic;
SIGNAL \inst|Mux7~0_combout\ : std_logic;
SIGNAL \inst|Mux7~1_combout\ : std_logic;
SIGNAL \inst|rrr[3]~2_combout\ : std_logic;
SIGNAL \inst|Mux8~1_combout\ : std_logic;
SIGNAL \inst|Mux14~0_combout\ : std_logic;
SIGNAL \inst|acc~10_combout\ : std_logic;
SIGNAL \inst|Mux13~0_combout\ : std_logic;
SIGNAL \inst|Add4~0_combout\ : std_logic;
SIGNAL \inst|Add2~0_combout\ : std_logic;
SIGNAL \inst|acc~35_combout\ : std_logic;
SIGNAL \inst|Mux0~0_combout\ : std_logic;
SIGNAL \inst|acc~36_combout\ : std_logic;
SIGNAL \inst|Add3~0_combout\ : std_logic;
SIGNAL \inst|acc~33_combout\ : std_logic;
SIGNAL \inst|acc~34_combout\ : std_logic;
SIGNAL \inst|acc~37_combout\ : std_logic;
SIGNAL \inst|Mux10~0_combout\ : std_logic;
SIGNAL \inst|acc~51_combout\ : std_logic;
SIGNAL \inst|sysbus~35_combout\ : std_logic;
SIGNAL \inst|Mux11~0_combout\ : std_logic;
SIGNAL \inst|sysbus~15_combout\ : std_logic;
SIGNAL \inst|sysbus~52_combout\ : std_logic;
SIGNAL \inst|count[0]~5_combout\ : std_logic;
SIGNAL \inst|Mux2~0_combout\ : std_logic;
SIGNAL \inst|Mux5~0_combout\ : std_logic;
SIGNAL \inst|count[2]~15_combout\ : std_logic;
SIGNAL \inst|Mux6~0_combout\ : std_logic;
SIGNAL \inst|acc~9_combout\ : std_logic;
SIGNAL \inst|Mux10~1_combout\ : std_logic;
SIGNAL \inst|acc~14_combout\ : std_logic;
SIGNAL \inst|acc~15_combout\ : std_logic;
SIGNAL \inst|acc~40_combout\ : std_logic;
SIGNAL \inst|Add4~1\ : std_logic;
SIGNAL \inst|Add4~2_combout\ : std_logic;
SIGNAL \inst|RESULT~8_combout\ : std_logic;
SIGNAL \inst|RESULT~9_combout\ : std_logic;
SIGNAL \inst|acc~5_combout\ : std_logic;
SIGNAL \inst|acc~4_combout\ : std_logic;
SIGNAL \inst|Add2~1\ : std_logic;
SIGNAL \inst|Add2~2_combout\ : std_logic;
SIGNAL \inst|acc~38_combout\ : std_logic;
SIGNAL \inst|Add3~1\ : std_logic;
SIGNAL \inst|Add3~2_combout\ : std_logic;
SIGNAL \inst|acc~39_combout\ : std_logic;
SIGNAL \inst|acc~41_combout\ : std_logic;
SIGNAL \inst|sysbus~34_combout\ : std_logic;
SIGNAL \inst|sysbus~19_combout\ : std_logic;
SIGNAL \inst|count[0]~6\ : std_logic;
SIGNAL \inst|count[1]~7_combout\ : std_logic;
SIGNAL \inst|sysbus~51_combout\ : std_logic;
SIGNAL \inst|acc~8_combout\ : std_logic;
SIGNAL \inst|Add4~3\ : std_logic;
SIGNAL \inst|Add4~4_combout\ : std_logic;
SIGNAL \inst|RESULT~10_combout\ : std_logic;
SIGNAL \inst|Add3~3\ : std_logic;
SIGNAL \inst|Add3~4_combout\ : std_logic;
SIGNAL \inst|Add2~3\ : std_logic;
SIGNAL \inst|Add2~4_combout\ : std_logic;
SIGNAL \inst|RESULT~11_combout\ : std_logic;
SIGNAL \inst|acc~42_combout\ : std_logic;
SIGNAL \inst|acc~43_combout\ : std_logic;
SIGNAL \inst|acc~44_combout\ : std_logic;
SIGNAL \inst|acc~45_combout\ : std_logic;
SIGNAL \inst|sysbus~33_combout\ : std_logic;
SIGNAL \inst|count[1]~8\ : std_logic;
SIGNAL \inst|count[2]~9_combout\ : std_logic;
SIGNAL \inst|acc~7_combout\ : std_logic;
SIGNAL \inst|acc~48_combout\ : std_logic;
SIGNAL \inst|Add4~5\ : std_logic;
SIGNAL \inst|Add4~6_combout\ : std_logic;
SIGNAL \inst|RESULT~12_combout\ : std_logic;
SIGNAL \inst|Add3~5\ : std_logic;
SIGNAL \inst|Add3~6_combout\ : std_logic;
SIGNAL \inst|RESULT~13_combout\ : std_logic;
SIGNAL \inst|Add2~5\ : std_logic;
SIGNAL \inst|Add2~6_combout\ : std_logic;
SIGNAL \inst|acc~46_combout\ : std_logic;
SIGNAL \inst|acc~47_combout\ : std_logic;
SIGNAL \inst|acc~49_combout\ : std_logic;
SIGNAL \inst|sysbus~32_combout\ : std_logic;
SIGNAL \inst|sysbus~49_combout\ : std_logic;
SIGNAL \inst|count[2]~10\ : std_logic;
SIGNAL \inst|count[3]~11_combout\ : std_logic;
SIGNAL \inst|instr_rrr~0_combout\ : std_logic;
SIGNAL \inst|sysbus~20_combout\ : std_logic;
SIGNAL \inst|sysbus~21_combout\ : std_logic;
SIGNAL \inst|sysbus~22_combout\ : std_logic;
SIGNAL \inst|mdr~3_combout\ : std_logic;
SIGNAL \inst|Mux12~0_combout\ : std_logic;
SIGNAL \inst|mdr[2]~1_combout\ : std_logic;
SIGNAL \inst|mdr[2]~2_combout\ : std_logic;
SIGNAL \inst|instr_rrr~1_combout\ : std_logic;
SIGNAL \inst|sysbus~50_combout\ : std_logic;
SIGNAL \inst|sysbus~23_combout\ : std_logic;
SIGNAL \inst|sysbus~24_combout\ : std_logic;
SIGNAL \inst|sysbus~25_combout\ : std_logic;
SIGNAL \inst|mdr~4_combout\ : std_logic;
SIGNAL \inst|instr_rrr~2_combout\ : std_logic;
SIGNAL \inst|sysbus~26_combout\ : std_logic;
SIGNAL \inst|sysbus~27_combout\ : std_logic;
SIGNAL \inst|sysbus~28_combout\ : std_logic;
SIGNAL \inst|mdr~5_combout\ : std_logic;
SIGNAL \inst|instr_rrr~3_combout\ : std_logic;
SIGNAL \inst|sysbus~29_combout\ : std_logic;
SIGNAL \inst|sysbus~30_combout\ : std_logic;
SIGNAL \inst|sysbus~31_combout\ : std_logic;
SIGNAL \inst|mdr~6_combout\ : std_logic;
SIGNAL \inst|ir_out[0]~feeder_combout\ : std_logic;
SIGNAL \inst|ir_out[0]~2_combout\ : std_logic;
SIGNAL \inst|acc~13_combout\ : std_logic;
SIGNAL \inst|acc~50_combout\ : std_logic;
SIGNAL \inst|acc~16_combout\ : std_logic;
SIGNAL \inst|Add4~7\ : std_logic;
SIGNAL \inst|Add4~8_combout\ : std_logic;
SIGNAL \inst|RESULT~0_combout\ : std_logic;
SIGNAL \inst|Add3~7\ : std_logic;
SIGNAL \inst|Add3~8_combout\ : std_logic;
SIGNAL \inst|Add2~7\ : std_logic;
SIGNAL \inst|Add2~8_combout\ : std_logic;
SIGNAL \inst|RESULT~1_combout\ : std_logic;
SIGNAL \inst|acc~11_combout\ : std_logic;
SIGNAL \inst|acc~12_combout\ : std_logic;
SIGNAL \inst|acc~17_combout\ : std_logic;
SIGNAL \inst|sysbus~14_combout\ : std_logic;
SIGNAL \inst|count[3]~12\ : std_logic;
SIGNAL \inst|count[4]~13_combout\ : std_logic;
SIGNAL \inst|sysbus~48_combout\ : std_logic;
SIGNAL \inst|sysbus~16_combout\ : std_logic;
SIGNAL \inst|sysbus~17_combout\ : std_logic;
SIGNAL \inst|sysbus~18_combout\ : std_logic;
SIGNAL \inst|mdr~0_combout\ : std_logic;
SIGNAL \inst|acc~6_combout\ : std_logic;
SIGNAL \inst|Add4~9\ : std_logic;
SIGNAL \inst|Add4~10_combout\ : std_logic;
SIGNAL \inst|RESULT~2_combout\ : std_logic;
SIGNAL \inst|Add3~9\ : std_logic;
SIGNAL \inst|Add3~10_combout\ : std_logic;
SIGNAL \inst|RESULT~3_combout\ : std_logic;
SIGNAL \inst|Add2~9\ : std_logic;
SIGNAL \inst|Add2~10_combout\ : std_logic;
SIGNAL \inst|acc~19_combout\ : std_logic;
SIGNAL \inst|acc~20_combout\ : std_logic;
SIGNAL \inst|acc~21_combout\ : std_logic;
SIGNAL \inst|acc~22_combout\ : std_logic;
SIGNAL \inst|sysbus~47_combout\ : std_logic;
SIGNAL \inst|sysbus~46_combout\ : std_logic;
SIGNAL \inst|sysbus~37_combout\ : std_logic;
SIGNAL \inst|sysbus~36_combout\ : std_logic;
SIGNAL \inst|sysbus~38_combout\ : std_logic;
SIGNAL \inst|mdr~7_combout\ : std_logic;
SIGNAL \inst|op[0]~feeder_combout\ : std_logic;
SIGNAL \inst|Mux19~1_combout\ : std_logic;
SIGNAL \inst|Mux19~0_combout\ : std_logic;
SIGNAL \inst|Mux19~2_combout\ : std_logic;
SIGNAL \inst|Equal1~1_combout\ : std_logic;
SIGNAL \inst|Equal3~0_combout\ : std_logic;
SIGNAL \inst|acc_out[6]~feeder_combout\ : std_logic;
SIGNAL \inst|sysbus~40_combout\ : std_logic;
SIGNAL \inst|sysbus~41_combout\ : std_logic;
SIGNAL \inst|sysbus~42_combout\ : std_logic;
SIGNAL \inst|mdr~8_combout\ : std_logic;
SIGNAL \inst|acc~23_combout\ : std_logic;
SIGNAL \inst|acc~26_combout\ : std_logic;
SIGNAL \inst|Add4~11\ : std_logic;
SIGNAL \inst|Add4~12_combout\ : std_logic;
SIGNAL \inst|RESULT~4_combout\ : std_logic;
SIGNAL \inst|Add3~11\ : std_logic;
SIGNAL \inst|Add3~12_combout\ : std_logic;
SIGNAL \inst|RESULT~5_combout\ : std_logic;
SIGNAL \inst|Add2~11\ : std_logic;
SIGNAL \inst|Add2~12_combout\ : std_logic;
SIGNAL \inst|acc~24_combout\ : std_logic;
SIGNAL \inst|acc~25_combout\ : std_logic;
SIGNAL \inst|acc~27_combout\ : std_logic;
SIGNAL \inst|Equal5~1_combout\ : std_logic;
SIGNAL \inst|sysbus~43_combout\ : std_logic;
SIGNAL \inst|sysbus~44_combout\ : std_logic;
SIGNAL \inst|mdr~9_combout\ : std_logic;
SIGNAL \inst|sysbus~45_combout\ : std_logic;
SIGNAL \inst|acc~28_combout\ : std_logic;
SIGNAL \inst|Add4~13\ : std_logic;
SIGNAL \inst|Add4~14_combout\ : std_logic;
SIGNAL \inst|RESULT~6_combout\ : std_logic;
SIGNAL \inst|Add3~13\ : std_logic;
SIGNAL \inst|Add3~14_combout\ : std_logic;
SIGNAL \inst|RESULT~7_combout\ : std_logic;
SIGNAL \inst|Add2~13\ : std_logic;
SIGNAL \inst|Add2~14_combout\ : std_logic;
SIGNAL \inst|acc~29_combout\ : std_logic;
SIGNAL \inst|acc~30_combout\ : std_logic;
SIGNAL \inst|acc~31_combout\ : std_logic;
SIGNAL \inst|acc~32_combout\ : std_logic;
SIGNAL \inst|Equal5~0_combout\ : std_logic;
SIGNAL \inst|Equal5~2_combout\ : std_logic;
SIGNAL \inst|z_flag~q\ : std_logic;
SIGNAL \inst|add_r~11_combout\ : std_logic;
SIGNAL \inst|add_r~12_combout\ : std_logic;
SIGNAL \inst|add_r~13_combout\ : std_logic;
SIGNAL \inst|Mux16~0_combout\ : std_logic;
SIGNAL \inst|Mux16~1_combout\ : std_logic;
SIGNAL \inst|Equal1~0_combout\ : std_logic;
SIGNAL \inst|Equal4~0_combout\ : std_logic;
SIGNAL \inst|add_r~2_combout\ : std_logic;
SIGNAL \inst|Mux17~0_combout\ : std_logic;
SIGNAL \inst|Equal2~2_combout\ : std_logic;
SIGNAL \inst|add_r~3_combout\ : std_logic;
SIGNAL \inst|add_r[3]~feeder_combout\ : std_logic;
SIGNAL \inst|Mux4~0_combout\ : std_logic;
SIGNAL \inst|Mux18~0_combout\ : std_logic;
SIGNAL \inst|Mux18~1_combout\ : std_logic;
SIGNAL \inst|add_r~4_combout\ : std_logic;
SIGNAL \inst|add_r~5_combout\ : std_logic;
SIGNAL \inst|add_r~6_combout\ : std_logic;
SIGNAL \inst|add_r~9_combout\ : std_logic;
SIGNAL \inst|add_r~10_combout\ : std_logic;
SIGNAL \inst|add_r[1]~feeder_combout\ : std_logic;
SIGNAL \inst|Mux17~1_combout\ : std_logic;
SIGNAL \inst|Mux17~2_combout\ : std_logic;
SIGNAL \inst|add_r~7_combout\ : std_logic;
SIGNAL \inst|add_r~8_combout\ : std_logic;
SIGNAL \inst|Mux15~0_combout\ : std_logic;
SIGNAL \inst|Mux15~1_combout\ : std_logic;
SIGNAL \inst|add_r~0_combout\ : std_logic;
SIGNAL \inst|add_r~1_combout\ : std_logic;
SIGNAL \inst9|Mux0~0_combout\ : std_logic;
SIGNAL \inst8|scan:count[15]~q\ : std_logic;
SIGNAL \inst8|Add0~0_combout\ : std_logic;
SIGNAL \inst8|scan:count[0]~q\ : std_logic;
SIGNAL \inst8|Add0~1\ : std_logic;
SIGNAL \inst8|Add0~2_combout\ : std_logic;
SIGNAL \inst8|scan:count[1]~q\ : std_logic;
SIGNAL \inst8|Add0~3\ : std_logic;
SIGNAL \inst8|Add0~4_combout\ : std_logic;
SIGNAL \inst8|scan:count[2]~q\ : std_logic;
SIGNAL \inst8|Add0~5\ : std_logic;
SIGNAL \inst8|Add0~6_combout\ : std_logic;
SIGNAL \inst8|scan:count[3]~q\ : std_logic;
SIGNAL \inst8|Add0~7\ : std_logic;
SIGNAL \inst8|Add0~8_combout\ : std_logic;
SIGNAL \inst8|scan:count[29]~q\ : std_logic;
SIGNAL \inst8|Add0~31\ : std_logic;
SIGNAL \inst8|Add0~32_combout\ : std_logic;
SIGNAL \inst8|scan:count[16]~q\ : std_logic;
SIGNAL \inst8|Add0~33\ : std_logic;
SIGNAL \inst8|Add0~34_combout\ : std_logic;
SIGNAL \inst8|scan:count[17]~q\ : std_logic;
SIGNAL \inst8|Add0~35\ : std_logic;
SIGNAL \inst8|Add0~36_combout\ : std_logic;
SIGNAL \inst8|scan:count[18]~q\ : std_logic;
SIGNAL \inst8|Add0~37\ : std_logic;
SIGNAL \inst8|Add0~38_combout\ : std_logic;
SIGNAL \inst8|scan:count[19]~q\ : std_logic;
SIGNAL \inst8|Add0~39\ : std_logic;
SIGNAL \inst8|Add0~40_combout\ : std_logic;
SIGNAL \inst8|scan:count[20]~q\ : std_logic;
SIGNAL \inst8|Add0~41\ : std_logic;
SIGNAL \inst8|Add0~42_combout\ : std_logic;
SIGNAL \inst8|scan:count[21]~q\ : std_logic;
SIGNAL \inst8|Add0~43\ : std_logic;
SIGNAL \inst8|Add0~44_combout\ : std_logic;
SIGNAL \inst8|scan:count[22]~q\ : std_logic;
SIGNAL \inst8|Add0~45\ : std_logic;
SIGNAL \inst8|Add0~46_combout\ : std_logic;
SIGNAL \inst8|scan:count[23]~q\ : std_logic;
SIGNAL \inst8|Add0~47\ : std_logic;
SIGNAL \inst8|Add0~48_combout\ : std_logic;
SIGNAL \inst8|scan:count[24]~q\ : std_logic;
SIGNAL \inst8|Add0~49\ : std_logic;
SIGNAL \inst8|Add0~50_combout\ : std_logic;
SIGNAL \inst8|scan:count[25]~q\ : std_logic;
SIGNAL \inst8|Add0~51\ : std_logic;
SIGNAL \inst8|Add0~52_combout\ : std_logic;
SIGNAL \inst8|scan:count[26]~q\ : std_logic;
SIGNAL \inst8|Add0~53\ : std_logic;
SIGNAL \inst8|Add0~54_combout\ : std_logic;
SIGNAL \inst8|scan:count[27]~q\ : std_logic;
SIGNAL \inst8|Add0~55\ : std_logic;
SIGNAL \inst8|Add0~56_combout\ : std_logic;
SIGNAL \inst8|scan:count[28]~q\ : std_logic;
SIGNAL \inst8|Add0~57\ : std_logic;
SIGNAL \inst8|Add0~58_combout\ : std_logic;
SIGNAL \inst8|scan:count[30]~q\ : std_logic;
SIGNAL \inst8|Add0~59\ : std_logic;
SIGNAL \inst8|Add0~60_combout\ : std_logic;
SIGNAL \inst8|Equal0~7_combout\ : std_logic;
SIGNAL \inst8|Equal0~9_combout\ : std_logic;
SIGNAL \inst8|Equal0~10_combout\ : std_logic;
SIGNAL \inst8|Equal0~11_combout\ : std_logic;
SIGNAL \inst8|Equal0~12_combout\ : std_logic;
SIGNAL \inst8|count~4_combout\ : std_logic;
SIGNAL \inst8|scan:count[4]~q\ : std_logic;
SIGNAL \inst8|Add0~9\ : std_logic;
SIGNAL \inst8|Add0~10_combout\ : std_logic;
SIGNAL \inst8|scan:count[5]~q\ : std_logic;
SIGNAL \inst8|Add0~11\ : std_logic;
SIGNAL \inst8|Add0~12_combout\ : std_logic;
SIGNAL \inst8|scan:count[6]~q\ : std_logic;
SIGNAL \inst8|Add0~13\ : std_logic;
SIGNAL \inst8|Add0~14_combout\ : std_logic;
SIGNAL \inst8|scan:count[7]~q\ : std_logic;
SIGNAL \inst8|Add0~15\ : std_logic;
SIGNAL \inst8|Add0~16_combout\ : std_logic;
SIGNAL \inst8|count~3_combout\ : std_logic;
SIGNAL \inst8|scan:count[8]~q\ : std_logic;
SIGNAL \inst8|Add0~17\ : std_logic;
SIGNAL \inst8|Add0~18_combout\ : std_logic;
SIGNAL \inst8|count~2_combout\ : std_logic;
SIGNAL \inst8|scan:count[9]~q\ : std_logic;
SIGNAL \inst8|Add0~19\ : std_logic;
SIGNAL \inst8|Add0~20_combout\ : std_logic;
SIGNAL \inst8|count~1_combout\ : std_logic;
SIGNAL \inst8|scan:count[10]~q\ : std_logic;
SIGNAL \inst8|Add0~21\ : std_logic;
SIGNAL \inst8|Add0~22_combout\ : std_logic;
SIGNAL \inst8|scan:count[11]~q\ : std_logic;
SIGNAL \inst8|Add0~23\ : std_logic;
SIGNAL \inst8|Add0~24_combout\ : std_logic;
SIGNAL \inst8|scan:count[12]~q\ : std_logic;
SIGNAL \inst8|Add0~25\ : std_logic;
SIGNAL \inst8|Add0~26_combout\ : std_logic;
SIGNAL \inst8|count~0_combout\ : std_logic;
SIGNAL \inst8|scan:count[13]~q\ : std_logic;
SIGNAL \inst8|Add0~27\ : std_logic;
SIGNAL \inst8|Add0~28_combout\ : std_logic;
SIGNAL \inst8|scan:count[14]~q\ : std_logic;
SIGNAL \inst8|Add0~29\ : std_logic;
SIGNAL \inst8|Add0~30_combout\ : std_logic;
SIGNAL \inst8|Equal0~2_combout\ : std_logic;
SIGNAL \inst8|Equal0~3_combout\ : std_logic;
SIGNAL \inst8|Equal0~4_combout\ : std_logic;
SIGNAL \inst8|Equal0~5_combout\ : std_logic;
SIGNAL \inst8|Equal0~6_combout\ : std_logic;
SIGNAL \inst8|Equal0~8_combout\ : std_logic;
SIGNAL \inst8|sel[0]~0_combout\ : std_logic;
SIGNAL \inst8|Equal0~0_combout\ : std_logic;
SIGNAL \inst8|Equal0~1_combout\ : std_logic;
SIGNAL \inst8|sel[0]~1_combout\ : std_logic;
SIGNAL \inst9|Mux7~0_combout\ : std_logic;
SIGNAL \inst8|Mux8~0_combout\ : std_logic;
SIGNAL \inst9|Mux1~0_combout\ : std_logic;
SIGNAL \inst9|Mux8~0_combout\ : std_logic;
SIGNAL \inst8|Mux7~0_combout\ : std_logic;
SIGNAL \inst9|Mux2~0_combout\ : std_logic;
SIGNAL \inst9|Mux9~0_combout\ : std_logic;
SIGNAL \inst8|Mux6~0_combout\ : std_logic;
SIGNAL \inst9|Mux3~0_combout\ : std_logic;
SIGNAL \inst9|Mux10~0_combout\ : std_logic;
SIGNAL \inst8|Mux5~0_combout\ : std_logic;
SIGNAL \inst9|Mux4~0_combout\ : std_logic;
SIGNAL \inst9|Mux11~0_combout\ : std_logic;
SIGNAL \inst8|Mux4~0_combout\ : std_logic;
SIGNAL \inst9|Mux5~0_combout\ : std_logic;
SIGNAL \inst9|Mux12~0_combout\ : std_logic;
SIGNAL \inst8|Mux3~0_combout\ : std_logic;
SIGNAL \inst9|Mux6~0_combout\ : std_logic;
SIGNAL \inst9|Mux13~0_combout\ : std_logic;
SIGNAL \inst8|Mux0~0_combout\ : std_logic;
SIGNAL \inst|data_r_out[20]~feeder_combout\ : std_logic;
SIGNAL \inst|data_r_out[17]~feeder_combout\ : std_logic;
SIGNAL \inst|data_r_out[16]~feeder_combout\ : std_logic;
SIGNAL \inst|data_r_out[15]~feeder_combout\ : std_logic;
SIGNAL \inst|data_r_out[13]~feeder_combout\ : std_logic;
SIGNAL \inst|Mux12~1_combout\ : std_logic;
SIGNAL \inst|data_r_out[8]~feeder_combout\ : std_logic;
SIGNAL \inst|data_r_out[4]~feeder_combout\ : std_logic;
SIGNAL \inst|data_r_out[3]~feeder_combout\ : std_logic;
SIGNAL \inst|op_out[1]~feeder_combout\ : std_logic;
SIGNAL \inst|op_out[0]~feeder_combout\ : std_logic;
SIGNAL \inst|count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|op_out\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|add_r_out\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|acc_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|count1\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \inst8|sel\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|data_r_out\ : std_logic_vector(21 DOWNTO 0);
SIGNAL \inst|add_r\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst|ir_out\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|op\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst|rrr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|mdr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|sysbus\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst|instr_rrr\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \inst8|ALT_INV_Mux8~0_combout\ : std_logic;
SIGNAL \inst8|ALT_INV_sel\ : std_logic_vector(0 DOWNTO 0);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

add_r_out <= ww_add_r_out;
ww_clock <= clock;
ww_mode <= mode;
cout <= ww_cout;
data_r_out <= ww_data_r_out;
op_out <= ww_op_out;
output <= ww_output;
se <= ww_se;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clock~input_o\);
\inst8|ALT_INV_Mux8~0_combout\ <= NOT \inst8|Mux8~0_combout\;
\inst8|ALT_INV_sel\(0) <= NOT \inst8|sel\(0);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X18_Y24_N23
\add_r_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|add_r_out\(4),
	devoe => ww_devoe,
	o => \add_r_out[4]~output_o\);

-- Location: IOOBUF_X23_Y0_N2
\add_r_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|add_r_out\(3),
	devoe => ww_devoe,
	o => \add_r_out[3]~output_o\);

-- Location: IOOBUF_X18_Y0_N23
\add_r_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|add_r_out\(2),
	devoe => ww_devoe,
	o => \add_r_out[2]~output_o\);

-- Location: IOOBUF_X25_Y0_N16
\add_r_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|add_r_out\(1),
	devoe => ww_devoe,
	o => \add_r_out[1]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
\add_r_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|add_r_out\(0),
	devoe => ww_devoe,
	o => \add_r_out[0]~output_o\);

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
	i => \inst8|ALT_INV_Mux8~0_combout\,
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
	i => \inst8|Mux7~0_combout\,
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
	i => \inst8|Mux6~0_combout\,
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
	i => \inst8|Mux5~0_combout\,
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
	i => \inst8|Mux4~0_combout\,
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
	i => \inst8|Mux3~0_combout\,
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
	i => \inst8|Mux0~0_combout\,
	devoe => ww_devoe,
	o => \cout[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\data_r_out[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|data_r_out\(21),
	devoe => ww_devoe,
	o => \data_r_out[21]~output_o\);

-- Location: IOOBUF_X25_Y0_N23
\data_r_out[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|data_r_out\(20),
	devoe => ww_devoe,
	o => \data_r_out[20]~output_o\);

-- Location: IOOBUF_X34_Y7_N9
\data_r_out[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|data_r_out\(19),
	devoe => ww_devoe,
	o => \data_r_out[19]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\data_r_out[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|data_r_out\(18),
	devoe => ww_devoe,
	o => \data_r_out[18]~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\data_r_out[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|data_r_out\(17),
	devoe => ww_devoe,
	o => \data_r_out[17]~output_o\);

-- Location: IOOBUF_X21_Y0_N9
\data_r_out[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|data_r_out\(16),
	devoe => ww_devoe,
	o => \data_r_out[16]~output_o\);

-- Location: IOOBUF_X23_Y0_N9
\data_r_out[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|data_r_out\(15),
	devoe => ww_devoe,
	o => \data_r_out[15]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\data_r_out[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|data_r_out\(14),
	devoe => ww_devoe,
	o => \data_r_out[14]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\data_r_out[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|data_r_out\(13),
	devoe => ww_devoe,
	o => \data_r_out[13]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\data_r_out[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|data_r_out\(12),
	devoe => ww_devoe,
	o => \data_r_out[12]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\data_r_out[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|data_r_out\(11),
	devoe => ww_devoe,
	o => \data_r_out[11]~output_o\);

-- Location: IOOBUF_X18_Y0_N9
\data_r_out[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|data_r_out\(10),
	devoe => ww_devoe,
	o => \data_r_out[10]~output_o\);

-- Location: IOOBUF_X21_Y0_N2
\data_r_out[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|data_r_out\(9),
	devoe => ww_devoe,
	o => \data_r_out[9]~output_o\);

-- Location: IOOBUF_X21_Y0_N23
\data_r_out[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|data_r_out\(8),
	devoe => ww_devoe,
	o => \data_r_out[8]~output_o\);

-- Location: IOOBUF_X18_Y0_N2
\data_r_out[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|data_r_out\(7),
	devoe => ww_devoe,
	o => \data_r_out[7]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\data_r_out[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|data_r_out\(6),
	devoe => ww_devoe,
	o => \data_r_out[6]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\data_r_out[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|data_r_out\(5),
	devoe => ww_devoe,
	o => \data_r_out[5]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\data_r_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|data_r_out\(4),
	devoe => ww_devoe,
	o => \data_r_out[4]~output_o\);

-- Location: IOOBUF_X16_Y24_N16
\data_r_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|data_r_out\(3),
	devoe => ww_devoe,
	o => \data_r_out[3]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\data_r_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|data_r_out\(2),
	devoe => ww_devoe,
	o => \data_r_out[2]~output_o\);

-- Location: IOOBUF_X16_Y24_N9
\data_r_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|data_r_out\(1),
	devoe => ww_devoe,
	o => \data_r_out[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N23
\data_r_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|data_r_out\(0),
	devoe => ww_devoe,
	o => \data_r_out[0]~output_o\);

-- Location: IOOBUF_X11_Y24_N9
\op_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|op_out\(2),
	devoe => ww_devoe,
	o => \op_out[2]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\op_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|op_out\(1),
	devoe => ww_devoe,
	o => \op_out[1]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\op_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|op_out\(0),
	devoe => ww_devoe,
	o => \op_out[0]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\output[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|acc_out\(7),
	devoe => ww_devoe,
	o => \output[7]~output_o\);

-- Location: IOOBUF_X13_Y0_N23
\output[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|acc_out\(6),
	devoe => ww_devoe,
	o => \output[6]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\output[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|acc_out\(5),
	devoe => ww_devoe,
	o => \output[5]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\output[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|acc_out\(4),
	devoe => ww_devoe,
	o => \output[4]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\output[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|acc_out\(3),
	devoe => ww_devoe,
	o => \output[3]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\output[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|acc_out\(2),
	devoe => ww_devoe,
	o => \output[2]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\output[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|acc_out\(1),
	devoe => ww_devoe,
	o => \output[1]~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\output[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|acc_out\(0),
	devoe => ww_devoe,
	o => \output[0]~output_o\);

-- Location: IOOBUF_X21_Y0_N16
\se[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|ALT_INV_sel\(0),
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
	i => \inst8|sel\(0),
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

-- Location: LCCOMB_X17_Y9_N20
\inst|add_r[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|add_r[4]~feeder_combout\ = \inst|add_r~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|add_r~1_combout\,
	combout => \inst|add_r[4]~feeder_combout\);

-- Location: FF_X16_Y10_N27
\inst|count1[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count1\(28));

-- Location: LCCOMB_X16_Y11_N2
\inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|count1\(0) $ (VCC)
-- \inst|Add0~1\ = CARRY(\inst|count1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count1\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: LCCOMB_X17_Y11_N6
\inst|count1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count1~0_combout\ = (\inst|Add0~0_combout\ & !\inst|Equal0~9_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~0_combout\,
	datad => \inst|Equal0~9_combout\,
	combout => \inst|count1~0_combout\);

-- Location: FF_X17_Y11_N7
\inst|count1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|count1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count1\(0));

-- Location: LCCOMB_X16_Y11_N4
\inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|count1\(1) & (!\inst|Add0~1\)) # (!\inst|count1\(1) & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst|count1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count1\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: FF_X16_Y11_N5
\inst|count1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count1\(1));

-- Location: LCCOMB_X16_Y11_N6
\inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|count1\(2) & (\inst|Add0~3\ $ (GND))) # (!\inst|count1\(2) & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst|count1\(2) & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count1\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: FF_X16_Y11_N7
\inst|count1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count1\(2));

-- Location: LCCOMB_X16_Y11_N8
\inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|count1\(3) & (!\inst|Add0~5\)) # (!\inst|count1\(3) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst|count1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count1\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: FF_X16_Y11_N9
\inst|count1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count1\(3));

-- Location: LCCOMB_X16_Y11_N10
\inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|count1\(4) & (\inst|Add0~7\ $ (GND))) # (!\inst|count1\(4) & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst|count1\(4) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count1\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: FF_X16_Y11_N11
\inst|count1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count1\(4));

-- Location: LCCOMB_X16_Y11_N12
\inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|count1\(5) & (!\inst|Add0~9\)) # (!\inst|count1\(5) & ((\inst|Add0~9\) # (GND)))
-- \inst|Add0~11\ = CARRY((!\inst|Add0~9\) # (!\inst|count1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count1\(5),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: FF_X16_Y11_N13
\inst|count1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count1\(5));

-- Location: LCCOMB_X16_Y11_N14
\inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = (\inst|count1\(6) & (\inst|Add0~11\ $ (GND))) # (!\inst|count1\(6) & (!\inst|Add0~11\ & VCC))
-- \inst|Add0~13\ = CARRY((\inst|count1\(6) & !\inst|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count1\(6),
	datad => VCC,
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\,
	cout => \inst|Add0~13\);

-- Location: FF_X16_Y11_N15
\inst|count1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count1\(6));

-- Location: LCCOMB_X16_Y11_N16
\inst|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~14_combout\ = (\inst|count1\(7) & (!\inst|Add0~13\)) # (!\inst|count1\(7) & ((\inst|Add0~13\) # (GND)))
-- \inst|Add0~15\ = CARRY((!\inst|Add0~13\) # (!\inst|count1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count1\(7),
	datad => VCC,
	cin => \inst|Add0~13\,
	combout => \inst|Add0~14_combout\,
	cout => \inst|Add0~15\);

-- Location: FF_X16_Y11_N17
\inst|count1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count1\(7));

-- Location: LCCOMB_X16_Y11_N18
\inst|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~16_combout\ = (\inst|count1\(8) & (\inst|Add0~15\ $ (GND))) # (!\inst|count1\(8) & (!\inst|Add0~15\ & VCC))
-- \inst|Add0~17\ = CARRY((\inst|count1\(8) & !\inst|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count1\(8),
	datad => VCC,
	cin => \inst|Add0~15\,
	combout => \inst|Add0~16_combout\,
	cout => \inst|Add0~17\);

-- Location: FF_X16_Y11_N19
\inst|count1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count1\(8));

-- Location: LCCOMB_X16_Y11_N20
\inst|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~18_combout\ = (\inst|count1\(9) & (!\inst|Add0~17\)) # (!\inst|count1\(9) & ((\inst|Add0~17\) # (GND)))
-- \inst|Add0~19\ = CARRY((!\inst|Add0~17\) # (!\inst|count1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count1\(9),
	datad => VCC,
	cin => \inst|Add0~17\,
	combout => \inst|Add0~18_combout\,
	cout => \inst|Add0~19\);

-- Location: FF_X16_Y11_N21
\inst|count1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count1\(9));

-- Location: LCCOMB_X16_Y11_N22
\inst|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~20_combout\ = (\inst|count1\(10) & (\inst|Add0~19\ $ (GND))) # (!\inst|count1\(10) & (!\inst|Add0~19\ & VCC))
-- \inst|Add0~21\ = CARRY((\inst|count1\(10) & !\inst|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count1\(10),
	datad => VCC,
	cin => \inst|Add0~19\,
	combout => \inst|Add0~20_combout\,
	cout => \inst|Add0~21\);

-- Location: FF_X16_Y11_N23
\inst|count1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count1\(10));

-- Location: LCCOMB_X16_Y11_N24
\inst|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~22_combout\ = (\inst|count1\(11) & (!\inst|Add0~21\)) # (!\inst|count1\(11) & ((\inst|Add0~21\) # (GND)))
-- \inst|Add0~23\ = CARRY((!\inst|Add0~21\) # (!\inst|count1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count1\(11),
	datad => VCC,
	cin => \inst|Add0~21\,
	combout => \inst|Add0~22_combout\,
	cout => \inst|Add0~23\);

-- Location: FF_X16_Y11_N25
\inst|count1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count1\(11));

-- Location: LCCOMB_X16_Y11_N26
\inst|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~24_combout\ = (\inst|count1\(12) & (\inst|Add0~23\ $ (GND))) # (!\inst|count1\(12) & (!\inst|Add0~23\ & VCC))
-- \inst|Add0~25\ = CARRY((\inst|count1\(12) & !\inst|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count1\(12),
	datad => VCC,
	cin => \inst|Add0~23\,
	combout => \inst|Add0~24_combout\,
	cout => \inst|Add0~25\);

-- Location: FF_X16_Y11_N27
\inst|count1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count1\(12));

-- Location: LCCOMB_X16_Y11_N28
\inst|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~26_combout\ = (\inst|count1\(13) & (!\inst|Add0~25\)) # (!\inst|count1\(13) & ((\inst|Add0~25\) # (GND)))
-- \inst|Add0~27\ = CARRY((!\inst|Add0~25\) # (!\inst|count1\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count1\(13),
	datad => VCC,
	cin => \inst|Add0~25\,
	combout => \inst|Add0~26_combout\,
	cout => \inst|Add0~27\);

-- Location: FF_X16_Y11_N29
\inst|count1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count1\(13));

-- Location: LCCOMB_X16_Y11_N30
\inst|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~28_combout\ = (\inst|count1\(14) & (\inst|Add0~27\ $ (GND))) # (!\inst|count1\(14) & (!\inst|Add0~27\ & VCC))
-- \inst|Add0~29\ = CARRY((\inst|count1\(14) & !\inst|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count1\(14),
	datad => VCC,
	cin => \inst|Add0~27\,
	combout => \inst|Add0~28_combout\,
	cout => \inst|Add0~29\);

-- Location: FF_X16_Y11_N31
\inst|count1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count1\(14));

-- Location: LCCOMB_X16_Y10_N0
\inst|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~30_combout\ = (\inst|count1\(15) & (!\inst|Add0~29\)) # (!\inst|count1\(15) & ((\inst|Add0~29\) # (GND)))
-- \inst|Add0~31\ = CARRY((!\inst|Add0~29\) # (!\inst|count1\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count1\(15),
	datad => VCC,
	cin => \inst|Add0~29\,
	combout => \inst|Add0~30_combout\,
	cout => \inst|Add0~31\);

-- Location: FF_X16_Y10_N1
\inst|count1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count1\(15));

-- Location: LCCOMB_X16_Y10_N2
\inst|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~32_combout\ = (\inst|count1\(16) & (\inst|Add0~31\ $ (GND))) # (!\inst|count1\(16) & (!\inst|Add0~31\ & VCC))
-- \inst|Add0~33\ = CARRY((\inst|count1\(16) & !\inst|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count1\(16),
	datad => VCC,
	cin => \inst|Add0~31\,
	combout => \inst|Add0~32_combout\,
	cout => \inst|Add0~33\);

-- Location: FF_X16_Y10_N3
\inst|count1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count1\(16));

-- Location: LCCOMB_X16_Y10_N4
\inst|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~34_combout\ = (\inst|count1\(17) & (!\inst|Add0~33\)) # (!\inst|count1\(17) & ((\inst|Add0~33\) # (GND)))
-- \inst|Add0~35\ = CARRY((!\inst|Add0~33\) # (!\inst|count1\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count1\(17),
	datad => VCC,
	cin => \inst|Add0~33\,
	combout => \inst|Add0~34_combout\,
	cout => \inst|Add0~35\);

-- Location: FF_X16_Y10_N5
\inst|count1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count1\(17));

-- Location: LCCOMB_X16_Y10_N6
\inst|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~36_combout\ = (\inst|count1\(18) & (\inst|Add0~35\ $ (GND))) # (!\inst|count1\(18) & (!\inst|Add0~35\ & VCC))
-- \inst|Add0~37\ = CARRY((\inst|count1\(18) & !\inst|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count1\(18),
	datad => VCC,
	cin => \inst|Add0~35\,
	combout => \inst|Add0~36_combout\,
	cout => \inst|Add0~37\);

-- Location: FF_X16_Y10_N7
\inst|count1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count1\(18));

-- Location: LCCOMB_X16_Y10_N8
\inst|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~38_combout\ = (\inst|count1\(19) & (!\inst|Add0~37\)) # (!\inst|count1\(19) & ((\inst|Add0~37\) # (GND)))
-- \inst|Add0~39\ = CARRY((!\inst|Add0~37\) # (!\inst|count1\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count1\(19),
	datad => VCC,
	cin => \inst|Add0~37\,
	combout => \inst|Add0~38_combout\,
	cout => \inst|Add0~39\);

-- Location: FF_X16_Y10_N9
\inst|count1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count1\(19));

-- Location: LCCOMB_X16_Y10_N10
\inst|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~40_combout\ = (\inst|count1\(20) & (\inst|Add0~39\ $ (GND))) # (!\inst|count1\(20) & (!\inst|Add0~39\ & VCC))
-- \inst|Add0~41\ = CARRY((\inst|count1\(20) & !\inst|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count1\(20),
	datad => VCC,
	cin => \inst|Add0~39\,
	combout => \inst|Add0~40_combout\,
	cout => \inst|Add0~41\);

-- Location: FF_X16_Y10_N11
\inst|count1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count1\(20));

-- Location: LCCOMB_X16_Y10_N12
\inst|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~42_combout\ = (\inst|count1\(21) & (!\inst|Add0~41\)) # (!\inst|count1\(21) & ((\inst|Add0~41\) # (GND)))
-- \inst|Add0~43\ = CARRY((!\inst|Add0~41\) # (!\inst|count1\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count1\(21),
	datad => VCC,
	cin => \inst|Add0~41\,
	combout => \inst|Add0~42_combout\,
	cout => \inst|Add0~43\);

-- Location: FF_X16_Y10_N13
\inst|count1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count1\(21));

-- Location: LCCOMB_X16_Y10_N14
\inst|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~44_combout\ = (\inst|count1\(22) & (\inst|Add0~43\ $ (GND))) # (!\inst|count1\(22) & (!\inst|Add0~43\ & VCC))
-- \inst|Add0~45\ = CARRY((\inst|count1\(22) & !\inst|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count1\(22),
	datad => VCC,
	cin => \inst|Add0~43\,
	combout => \inst|Add0~44_combout\,
	cout => \inst|Add0~45\);

-- Location: FF_X16_Y10_N15
\inst|count1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count1\(22));

-- Location: LCCOMB_X16_Y10_N16
\inst|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~46_combout\ = (\inst|count1\(23) & (!\inst|Add0~45\)) # (!\inst|count1\(23) & ((\inst|Add0~45\) # (GND)))
-- \inst|Add0~47\ = CARRY((!\inst|Add0~45\) # (!\inst|count1\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count1\(23),
	datad => VCC,
	cin => \inst|Add0~45\,
	combout => \inst|Add0~46_combout\,
	cout => \inst|Add0~47\);

-- Location: FF_X16_Y10_N17
\inst|count1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count1\(23));

-- Location: LCCOMB_X16_Y10_N18
\inst|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~48_combout\ = (\inst|count1\(24) & (\inst|Add0~47\ $ (GND))) # (!\inst|count1\(24) & (!\inst|Add0~47\ & VCC))
-- \inst|Add0~49\ = CARRY((\inst|count1\(24) & !\inst|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count1\(24),
	datad => VCC,
	cin => \inst|Add0~47\,
	combout => \inst|Add0~48_combout\,
	cout => \inst|Add0~49\);

-- Location: FF_X16_Y10_N19
\inst|count1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count1\(24));

-- Location: LCCOMB_X16_Y10_N20
\inst|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~50_combout\ = (\inst|count1\(25) & (!\inst|Add0~49\)) # (!\inst|count1\(25) & ((\inst|Add0~49\) # (GND)))
-- \inst|Add0~51\ = CARRY((!\inst|Add0~49\) # (!\inst|count1\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count1\(25),
	datad => VCC,
	cin => \inst|Add0~49\,
	combout => \inst|Add0~50_combout\,
	cout => \inst|Add0~51\);

-- Location: FF_X16_Y10_N21
\inst|count1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count1\(25));

-- Location: LCCOMB_X16_Y10_N22
\inst|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~52_combout\ = (\inst|count1\(26) & (\inst|Add0~51\ $ (GND))) # (!\inst|count1\(26) & (!\inst|Add0~51\ & VCC))
-- \inst|Add0~53\ = CARRY((\inst|count1\(26) & !\inst|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count1\(26),
	datad => VCC,
	cin => \inst|Add0~51\,
	combout => \inst|Add0~52_combout\,
	cout => \inst|Add0~53\);

-- Location: FF_X16_Y10_N23
\inst|count1[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count1\(26));

-- Location: LCCOMB_X16_Y10_N24
\inst|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~54_combout\ = (\inst|count1\(27) & (!\inst|Add0~53\)) # (!\inst|count1\(27) & ((\inst|Add0~53\) # (GND)))
-- \inst|Add0~55\ = CARRY((!\inst|Add0~53\) # (!\inst|count1\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count1\(27),
	datad => VCC,
	cin => \inst|Add0~53\,
	combout => \inst|Add0~54_combout\,
	cout => \inst|Add0~55\);

-- Location: FF_X16_Y10_N25
\inst|count1[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count1\(27));

-- Location: LCCOMB_X16_Y10_N26
\inst|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~56_combout\ = (\inst|count1\(28) & (\inst|Add0~55\ $ (GND))) # (!\inst|count1\(28) & (!\inst|Add0~55\ & VCC))
-- \inst|Add0~57\ = CARRY((\inst|count1\(28) & !\inst|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count1\(28),
	datad => VCC,
	cin => \inst|Add0~55\,
	combout => \inst|Add0~56_combout\,
	cout => \inst|Add0~57\);

-- Location: FF_X16_Y10_N29
\inst|count1[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count1\(29));

-- Location: LCCOMB_X16_Y10_N28
\inst|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~58_combout\ = (\inst|count1\(29) & (!\inst|Add0~57\)) # (!\inst|count1\(29) & ((\inst|Add0~57\) # (GND)))
-- \inst|Add0~59\ = CARRY((!\inst|Add0~57\) # (!\inst|count1\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count1\(29),
	datad => VCC,
	cin => \inst|Add0~57\,
	combout => \inst|Add0~58_combout\,
	cout => \inst|Add0~59\);

-- Location: FF_X16_Y10_N31
\inst|count1[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count1\(30));

-- Location: LCCOMB_X16_Y10_N30
\inst|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~60_combout\ = \inst|count1\(30) $ (!\inst|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count1\(30),
	cin => \inst|Add0~59\,
	combout => \inst|Add0~60_combout\);

-- Location: LCCOMB_X17_Y10_N4
\inst|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~5_combout\ = (!\inst|Add0~32_combout\ & (!\inst|Add0~34_combout\ & (!\inst|Add0~36_combout\ & !\inst|Add0~38_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~32_combout\,
	datab => \inst|Add0~34_combout\,
	datac => \inst|Add0~36_combout\,
	datad => \inst|Add0~38_combout\,
	combout => \inst|Equal0~5_combout\);

-- Location: LCCOMB_X16_Y11_N0
\inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\inst|Add0~10_combout\ & (!\inst|Add0~12_combout\ & (!\inst|Add0~8_combout\ & !\inst|Add0~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~10_combout\,
	datab => \inst|Add0~12_combout\,
	datac => \inst|Add0~8_combout\,
	datad => \inst|Add0~14_combout\,
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X17_Y10_N16
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (!\inst|Add0~2_combout\ & (\inst|Add0~0_combout\ & (!\inst|Add0~6_combout\ & !\inst|Add0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~2_combout\,
	datab => \inst|Add0~0_combout\,
	datac => \inst|Add0~6_combout\,
	datad => \inst|Add0~4_combout\,
	combout => \inst|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y10_N2
\inst|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~2_combout\ = (!\inst|Add0~16_combout\ & (!\inst|Add0~18_combout\ & (\inst|Equal0~1_combout\ & \inst|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~16_combout\,
	datab => \inst|Add0~18_combout\,
	datac => \inst|Equal0~1_combout\,
	datad => \inst|Equal0~0_combout\,
	combout => \inst|Equal0~2_combout\);

-- Location: LCCOMB_X17_Y10_N12
\inst|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~3_combout\ = (!\inst|Add0~24_combout\ & (!\inst|Add0~20_combout\ & (!\inst|Add0~22_combout\ & \inst|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~24_combout\,
	datab => \inst|Add0~20_combout\,
	datac => \inst|Add0~22_combout\,
	datad => \inst|Equal0~2_combout\,
	combout => \inst|Equal0~3_combout\);

-- Location: LCCOMB_X17_Y10_N6
\inst|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~4_combout\ = (!\inst|Add0~28_combout\ & (!\inst|Add0~26_combout\ & (!\inst|Add0~30_combout\ & \inst|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~28_combout\,
	datab => \inst|Add0~26_combout\,
	datac => \inst|Add0~30_combout\,
	datad => \inst|Equal0~3_combout\,
	combout => \inst|Equal0~4_combout\);

-- Location: LCCOMB_X17_Y10_N10
\inst|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~6_combout\ = (!\inst|Add0~42_combout\ & (!\inst|Add0~40_combout\ & (\inst|Equal0~5_combout\ & \inst|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~42_combout\,
	datab => \inst|Add0~40_combout\,
	datac => \inst|Equal0~5_combout\,
	datad => \inst|Equal0~4_combout\,
	combout => \inst|Equal0~6_combout\);

-- Location: LCCOMB_X17_Y10_N20
\inst|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~7_combout\ = (!\inst|Add0~44_combout\ & (!\inst|Add0~48_combout\ & (!\inst|Add0~46_combout\ & \inst|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~44_combout\,
	datab => \inst|Add0~48_combout\,
	datac => \inst|Add0~46_combout\,
	datad => \inst|Equal0~6_combout\,
	combout => \inst|Equal0~7_combout\);

-- Location: LCCOMB_X17_Y10_N18
\inst|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~8_combout\ = (!\inst|Add0~50_combout\ & (!\inst|Add0~54_combout\ & (!\inst|Add0~52_combout\ & \inst|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~50_combout\,
	datab => \inst|Add0~54_combout\,
	datac => \inst|Add0~52_combout\,
	datad => \inst|Equal0~7_combout\,
	combout => \inst|Equal0~8_combout\);

-- Location: LCCOMB_X17_Y10_N28
\inst|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~9_combout\ = (!\inst|Add0~56_combout\ & (!\inst|Add0~58_combout\ & (!\inst|Add0~60_combout\ & \inst|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add0~56_combout\,
	datab => \inst|Add0~58_combout\,
	datac => \inst|Add0~60_combout\,
	datad => \inst|Equal0~8_combout\,
	combout => \inst|Equal0~9_combout\);

-- Location: FF_X17_Y9_N21
\inst|add_r[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|add_r[4]~feeder_combout\,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|add_r\(4));

-- Location: LCCOMB_X17_Y9_N24
\inst|Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~1_combout\ = (\inst|add_r\(2) & (!\inst|add_r\(4) & \inst|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|add_r\(2),
	datab => \inst|add_r\(4),
	datad => \inst|Mux4~0_combout\,
	combout => \inst|Mux4~1_combout\);

-- Location: LCCOMB_X14_Y9_N24
\inst|acc~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~18_combout\ = (\inst|Mux4~1_combout\ & ((\inst|mdr\(5)))) # (!\inst|Mux4~1_combout\ & (\inst|acc_out\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|acc_out\(5),
	datac => \inst|Mux4~1_combout\,
	datad => \inst|mdr\(5),
	combout => \inst|acc~18_combout\);

-- Location: LCCOMB_X18_Y7_N2
\inst|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~0_combout\ = (\inst|add_r\(4) & (\inst|add_r\(0) $ (((!\inst|add_r\(1) & !\inst|add_r\(2)))))) # (!\inst|add_r\(4) & (\inst|add_r\(1) & ((\inst|add_r\(2)) # (!\inst|add_r\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|add_r\(0),
	datab => \inst|add_r\(1),
	datac => \inst|add_r\(4),
	datad => \inst|add_r\(2),
	combout => \inst|Mux8~0_combout\);

-- Location: LCCOMB_X18_Y9_N6
\inst|sysbus~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sysbus~39_combout\ = (\inst|Mux8~0_combout\ & ((\inst|add_r\(3) & ((\inst|acc_out\(5)))) # (!\inst|add_r\(3) & (\inst|mdr\(5))))) # (!\inst|Mux8~0_combout\ & (((\inst|acc_out\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mdr\(5),
	datab => \inst|Mux8~0_combout\,
	datac => \inst|add_r\(3),
	datad => \inst|acc_out\(5),
	combout => \inst|sysbus~39_combout\);

-- Location: LCCOMB_X18_Y7_N4
\inst|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~0_combout\ = (\inst|add_r\(1) & (!\inst|add_r\(4) & \inst|add_r\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|add_r\(1),
	datac => \inst|add_r\(4),
	datad => \inst|add_r\(2),
	combout => \inst|Mux3~0_combout\);

-- Location: LCCOMB_X18_Y7_N24
\inst|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux3~1_combout\ = (!\inst|add_r\(3) & (\inst|Mux3~0_combout\ & \inst|add_r\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|add_r\(3),
	datac => \inst|Mux3~0_combout\,
	datad => \inst|add_r\(0),
	combout => \inst|Mux3~1_combout\);

-- Location: LCCOMB_X18_Y7_N28
\inst|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~0_combout\ = (!\inst|add_r\(3) & !\inst|add_r\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|add_r\(3),
	datad => \inst|add_r\(2),
	combout => \inst|Mux1~0_combout\);

-- Location: LCCOMB_X18_Y7_N22
\inst|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux1~1_combout\ = (\inst|add_r\(4) & (!\inst|add_r\(1) & (\inst|add_r\(0) & \inst|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|add_r\(4),
	datab => \inst|add_r\(1),
	datac => \inst|add_r\(0),
	datad => \inst|Mux1~0_combout\,
	combout => \inst|Mux1~1_combout\);

-- Location: LCCOMB_X16_Y8_N28
\inst|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux9~0_combout\ = (\inst|add_r\(4) & (\inst|add_r\(0) & (!\inst|add_r\(1) & \inst|add_r\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|add_r\(4),
	datab => \inst|add_r\(0),
	datac => \inst|add_r\(1),
	datad => \inst|add_r\(2),
	combout => \inst|Mux9~0_combout\);

-- Location: LCCOMB_X18_Y9_N24
\inst|rrr[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|rrr[3]~3_combout\ = (!\inst|Mux9~0_combout\ & (((!\inst|add_r\(3) & \inst|Mux8~0_combout\)) # (!\inst|Mux1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|add_r\(3),
	datab => \inst|Mux1~1_combout\,
	datac => \inst|Mux8~0_combout\,
	datad => \inst|Mux9~0_combout\,
	combout => \inst|rrr[3]~3_combout\);

-- Location: LCCOMB_X17_Y11_N26
\inst|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~0_combout\ = (\inst|add_r\(2)) # ((\inst|add_r\(3)) # (\inst|add_r\(1) $ (\inst|add_r\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|add_r\(2),
	datab => \inst|add_r\(1),
	datac => \inst|add_r\(3),
	datad => \inst|add_r\(0),
	combout => \inst|Mux7~0_combout\);

-- Location: LCCOMB_X17_Y9_N26
\inst|Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux7~1_combout\ = (!\inst|add_r\(4) & !\inst|Mux7~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|add_r\(4),
	datad => \inst|Mux7~0_combout\,
	combout => \inst|Mux7~1_combout\);

-- Location: LCCOMB_X18_Y9_N18
\inst|rrr[3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|rrr[3]~2_combout\ = (\inst|Mux3~1_combout\ & (\inst|rrr[3]~3_combout\ & (!\inst|Mux7~1_combout\ & \inst|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux3~1_combout\,
	datab => \inst|rrr[3]~3_combout\,
	datac => \inst|Mux7~1_combout\,
	datad => \inst|Equal0~9_combout\,
	combout => \inst|rrr[3]~2_combout\);

-- Location: FF_X18_Y9_N7
\inst|rrr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|sysbus~39_combout\,
	ena => \inst|rrr[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|rrr\(5));

-- Location: LCCOMB_X17_Y8_N22
\inst|Mux8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux8~1_combout\ = (!\inst|add_r\(3) & \inst|Mux8~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|add_r\(3),
	datad => \inst|Mux8~0_combout\,
	combout => \inst|Mux8~1_combout\);

-- Location: LCCOMB_X16_Y8_N6
\inst|Mux14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux14~0_combout\ = (!\inst|add_r\(2) & (\inst|add_r\(0) & (\inst|add_r\(1) & \inst|add_r\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|add_r\(2),
	datab => \inst|add_r\(0),
	datac => \inst|add_r\(1),
	datad => \inst|add_r\(4),
	combout => \inst|Mux14~0_combout\);

-- Location: LCCOMB_X17_Y9_N0
\inst|acc~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~10_combout\ = (\inst|Mux4~1_combout\ & ((\inst|mdr\(0)))) # (!\inst|Mux4~1_combout\ & (\inst|acc_out\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc_out\(0),
	datac => \inst|mdr\(0),
	datad => \inst|Mux4~1_combout\,
	combout => \inst|acc~10_combout\);

-- Location: LCCOMB_X16_Y8_N24
\inst|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux13~0_combout\ = (!\inst|add_r\(2) & (!\inst|add_r\(3) & (!\inst|add_r\(1) & \inst|add_r\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|add_r\(2),
	datab => \inst|add_r\(3),
	datac => \inst|add_r\(1),
	datad => \inst|add_r\(4),
	combout => \inst|Mux13~0_combout\);

-- Location: LCCOMB_X14_Y10_N0
\inst|Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~0_combout\ = (\inst|acc~10_combout\ & (\inst|rrr\(0) $ (VCC))) # (!\inst|acc~10_combout\ & (\inst|rrr\(0) & VCC))
-- \inst|Add4~1\ = CARRY((\inst|acc~10_combout\ & \inst|rrr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc~10_combout\,
	datab => \inst|rrr\(0),
	datad => VCC,
	combout => \inst|Add4~0_combout\,
	cout => \inst|Add4~1\);

-- Location: LCCOMB_X12_Y9_N12
\inst|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~0_combout\ = (\inst|mdr\(0) & (\inst|acc~10_combout\ $ (VCC))) # (!\inst|mdr\(0) & (\inst|acc~10_combout\ & VCC))
-- \inst|Add2~1\ = CARRY((\inst|mdr\(0) & \inst|acc~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mdr\(0),
	datab => \inst|acc~10_combout\,
	datad => VCC,
	combout => \inst|Add2~0_combout\,
	cout => \inst|Add2~1\);

-- Location: LCCOMB_X16_Y8_N26
\inst|acc~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~35_combout\ = (\inst|ir_out\(0) & (((\inst|Add4~0_combout\)) # (!\inst|Mux13~0_combout\))) # (!\inst|ir_out\(0) & (\inst|Mux13~0_combout\ & ((\inst|Add2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ir_out\(0),
	datab => \inst|Mux13~0_combout\,
	datac => \inst|Add4~0_combout\,
	datad => \inst|Add2~0_combout\,
	combout => \inst|acc~35_combout\);

-- Location: LCCOMB_X16_Y8_N16
\inst|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux0~0_combout\ = (\inst|add_r\(4) & (\inst|add_r\(0) & \inst|add_r\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|add_r\(4),
	datab => \inst|add_r\(0),
	datad => \inst|add_r\(3),
	combout => \inst|Mux0~0_combout\);

-- Location: LCCOMB_X16_Y8_N8
\inst|acc~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~36_combout\ = (\inst|acc~10_combout\ & ((\inst|Mux9~0_combout\ & ((\inst|rrr\(0)))) # (!\inst|Mux9~0_combout\ & (!\inst|Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc~10_combout\,
	datab => \inst|Mux0~0_combout\,
	datac => \inst|rrr\(0),
	datad => \inst|Mux9~0_combout\,
	combout => \inst|acc~36_combout\);

-- Location: LCCOMB_X14_Y10_N16
\inst|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~0_combout\ = (\inst|mdr\(0) & (\inst|acc~10_combout\ $ (VCC))) # (!\inst|mdr\(0) & ((\inst|acc~10_combout\) # (GND)))
-- \inst|Add3~1\ = CARRY((\inst|acc~10_combout\) # (!\inst|mdr\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mdr\(0),
	datab => \inst|acc~10_combout\,
	datad => VCC,
	combout => \inst|Add3~0_combout\,
	cout => \inst|Add3~1\);

-- Location: LCCOMB_X16_Y8_N22
\inst|acc~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~33_combout\ = (!\inst|Mux14~0_combout\ & ((\inst|Mux9~0_combout\ & (\inst|mdr\(0))) # (!\inst|Mux9~0_combout\ & ((!\inst|Mux0~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux14~0_combout\,
	datab => \inst|Mux9~0_combout\,
	datac => \inst|mdr\(0),
	datad => \inst|Mux0~0_combout\,
	combout => \inst|acc~33_combout\);

-- Location: LCCOMB_X16_Y8_N20
\inst|acc~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~34_combout\ = (\inst|Mux14~0_combout\ & ((\inst|Add3~0_combout\) # ((\inst|acc~33_combout\ & \inst|acc~10_combout\)))) # (!\inst|Mux14~0_combout\ & (((\inst|acc~33_combout\ & \inst|acc~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux14~0_combout\,
	datab => \inst|Add3~0_combout\,
	datac => \inst|acc~33_combout\,
	datad => \inst|acc~10_combout\,
	combout => \inst|acc~34_combout\);

-- Location: LCCOMB_X16_Y8_N30
\inst|acc~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~37_combout\ = (\inst|acc~35_combout\ & ((\inst|Mux13~0_combout\) # ((\inst|acc~36_combout\)))) # (!\inst|acc~35_combout\ & (!\inst|Mux13~0_combout\ & ((\inst|acc~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc~35_combout\,
	datab => \inst|Mux13~0_combout\,
	datac => \inst|acc~36_combout\,
	datad => \inst|acc~34_combout\,
	combout => \inst|acc~37_combout\);

-- Location: LCCOMB_X16_Y8_N12
\inst|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux10~0_combout\ = (\inst|add_r\(3) & (((\inst|add_r\(1)) # (\inst|add_r\(2))) # (!\inst|add_r\(0)))) # (!\inst|add_r\(3) & ((\inst|add_r\(0) & (\inst|add_r\(1) & \inst|add_r\(2))) # (!\inst|add_r\(0) & ((\inst|add_r\(1)) # (\inst|add_r\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101110110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|add_r\(3),
	datab => \inst|add_r\(0),
	datac => \inst|add_r\(1),
	datad => \inst|add_r\(2),
	combout => \inst|Mux10~0_combout\);

-- Location: LCCOMB_X16_Y8_N14
\inst|acc~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~51_combout\ = (\inst|add_r\(4) & ((\inst|Mux10~0_combout\ & (\inst|acc~10_combout\)) # (!\inst|Mux10~0_combout\ & ((\inst|acc~37_combout\))))) # (!\inst|add_r\(4) & (\inst|acc~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|add_r\(4),
	datab => \inst|acc~10_combout\,
	datac => \inst|acc~37_combout\,
	datad => \inst|Mux10~0_combout\,
	combout => \inst|acc~51_combout\);

-- Location: FF_X16_Y8_N17
\inst|acc_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst|acc~51_combout\,
	sload => VCC,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|acc_out\(0));

-- Location: LCCOMB_X18_Y9_N20
\inst|sysbus~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sysbus~35_combout\ = (\inst|add_r\(3) & (\inst|acc_out\(0))) # (!\inst|add_r\(3) & ((\inst|Mux8~0_combout\ & ((\inst|mdr\(0)))) # (!\inst|Mux8~0_combout\ & (\inst|acc_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|add_r\(3),
	datab => \inst|acc_out\(0),
	datac => \inst|Mux8~0_combout\,
	datad => \inst|mdr\(0),
	combout => \inst|sysbus~35_combout\);

-- Location: FF_X18_Y9_N21
\inst|rrr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|sysbus~35_combout\,
	ena => \inst|rrr[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|rrr\(0));

-- Location: LCCOMB_X18_Y7_N6
\inst|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux11~0_combout\ = (\inst|add_r\(0) & (\inst|add_r\(1) & (!\inst|add_r\(4) & \inst|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|add_r\(0),
	datab => \inst|add_r\(1),
	datac => \inst|add_r\(4),
	datad => \inst|Mux1~0_combout\,
	combout => \inst|Mux11~0_combout\);

-- Location: LCCOMB_X18_Y7_N14
\inst|sysbus~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sysbus~15_combout\ = (!\inst|Mux11~0_combout\ & (((\inst|add_r\(3)) # (!\inst|Mux3~0_combout\)) # (!\inst|add_r\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|add_r\(0),
	datab => \inst|Mux3~0_combout\,
	datac => \inst|add_r\(3),
	datad => \inst|Mux11~0_combout\,
	combout => \inst|sysbus~15_combout\);

-- Location: LCCOMB_X17_Y8_N6
\inst|sysbus~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sysbus~52_combout\ = (\inst|sysbus~31_combout\) # ((!\inst|add_r\(3) & (\inst|Mux8~0_combout\ & \inst|mdr\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|add_r\(3),
	datab => \inst|Mux8~0_combout\,
	datac => \inst|mdr\(0),
	datad => \inst|sysbus~31_combout\,
	combout => \inst|sysbus~52_combout\);

-- Location: FF_X17_Y8_N7
\inst|sysbus[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|sysbus~52_combout\,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sysbus\(0));

-- Location: LCCOMB_X18_Y10_N4
\inst|count[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[0]~5_combout\ = \inst|count\(0) $ (VCC)
-- \inst|count[0]~6\ = CARRY(\inst|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(0),
	datad => VCC,
	combout => \inst|count[0]~5_combout\,
	cout => \inst|count[0]~6\);

-- Location: LCCOMB_X18_Y7_N10
\inst|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux2~0_combout\ = (\inst|add_r\(0) & (\inst|add_r\(2) & (\inst|add_r\(4) & \inst|add_r\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|add_r\(0),
	datab => \inst|add_r\(2),
	datac => \inst|add_r\(4),
	datad => \inst|add_r\(1),
	combout => \inst|Mux2~0_combout\);

-- Location: LCCOMB_X18_Y7_N8
\inst|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux5~0_combout\ = (!\inst|add_r\(0) & (!\inst|add_r\(1) & (!\inst|add_r\(4) & \inst|Mux1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|add_r\(0),
	datab => \inst|add_r\(1),
	datac => \inst|add_r\(4),
	datad => \inst|Mux1~0_combout\,
	combout => \inst|Mux5~0_combout\);

-- Location: LCCOMB_X18_Y10_N18
\inst|count[2]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[2]~15_combout\ = (\inst|Equal0~9_combout\ & ((\inst|Mux2~0_combout\) # (\inst|Mux5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux2~0_combout\,
	datac => \inst|Mux5~0_combout\,
	datad => \inst|Equal0~9_combout\,
	combout => \inst|count[2]~15_combout\);

-- Location: FF_X18_Y10_N5
\inst|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|count[0]~5_combout\,
	asdata => \inst|mdr\(0),
	sload => \inst|Mux2~0_combout\,
	ena => \inst|count[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(0));

-- Location: LCCOMB_X17_Y9_N30
\inst|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux6~0_combout\ = (!\inst|add_r\(2) & (!\inst|add_r\(4) & \inst|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|add_r\(2),
	datab => \inst|add_r\(4),
	datad => \inst|Mux4~0_combout\,
	combout => \inst|Mux6~0_combout\);

-- Location: FF_X17_Y8_N29
\inst|instr_rrr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|instr_rrr~3_combout\,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|instr_rrr\(1));

-- Location: LCCOMB_X17_Y9_N6
\inst|acc~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~9_combout\ = (\inst|Mux4~1_combout\ & (\inst|mdr\(1))) # (!\inst|Mux4~1_combout\ & ((\inst|acc_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mdr\(1),
	datab => \inst|acc_out\(1),
	datad => \inst|Mux4~1_combout\,
	combout => \inst|acc~9_combout\);

-- Location: LCCOMB_X16_Y8_N10
\inst|Mux10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux10~1_combout\ = (\inst|add_r\(4) & !\inst|Mux10~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|add_r\(4),
	datad => \inst|Mux10~0_combout\,
	combout => \inst|Mux10~1_combout\);

-- Location: LCCOMB_X16_Y8_N18
\inst|acc~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~14_combout\ = (\inst|ir_out\(0) & \inst|Mux13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ir_out\(0),
	datad => \inst|Mux13~0_combout\,
	combout => \inst|acc~14_combout\);

-- Location: LCCOMB_X16_Y8_N0
\inst|acc~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~15_combout\ = ((\inst|acc~14_combout\) # ((!\inst|Mux0~0_combout\ & \inst|acc~13_combout\))) # (!\inst|Mux10~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux10~1_combout\,
	datab => \inst|acc~14_combout\,
	datac => \inst|Mux0~0_combout\,
	datad => \inst|acc~13_combout\,
	combout => \inst|acc~15_combout\);

-- Location: LCCOMB_X13_Y9_N22
\inst|acc~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~40_combout\ = (\inst|acc~15_combout\ & ((\inst|acc~9_combout\) # ((\inst|acc~50_combout\)))) # (!\inst|acc~15_combout\ & (((\inst|acc~10_combout\ & !\inst|acc~50_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc~9_combout\,
	datab => \inst|acc~10_combout\,
	datac => \inst|acc~15_combout\,
	datad => \inst|acc~50_combout\,
	combout => \inst|acc~40_combout\);

-- Location: LCCOMB_X14_Y10_N2
\inst|Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~2_combout\ = (\inst|rrr\(1) & ((\inst|acc~9_combout\ & (\inst|Add4~1\ & VCC)) # (!\inst|acc~9_combout\ & (!\inst|Add4~1\)))) # (!\inst|rrr\(1) & ((\inst|acc~9_combout\ & (!\inst|Add4~1\)) # (!\inst|acc~9_combout\ & ((\inst|Add4~1\) # (GND)))))
-- \inst|Add4~3\ = CARRY((\inst|rrr\(1) & (!\inst|acc~9_combout\ & !\inst|Add4~1\)) # (!\inst|rrr\(1) & ((!\inst|Add4~1\) # (!\inst|acc~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|rrr\(1),
	datab => \inst|acc~9_combout\,
	datad => VCC,
	cin => \inst|Add4~1\,
	combout => \inst|Add4~2_combout\,
	cout => \inst|Add4~3\);

-- Location: LCCOMB_X12_Y9_N8
\inst|RESULT~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RESULT~8_combout\ = (\inst|rrr\(1) & ((\inst|Mux4~1_combout\ & (\inst|mdr\(1))) # (!\inst|Mux4~1_combout\ & ((\inst|acc_out\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux4~1_combout\,
	datab => \inst|mdr\(1),
	datac => \inst|rrr\(1),
	datad => \inst|acc_out\(1),
	combout => \inst|RESULT~8_combout\);

-- Location: LCCOMB_X12_Y9_N2
\inst|RESULT~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RESULT~9_combout\ = (\inst|mdr\(1) & ((\inst|acc_out\(1)) # (\inst|Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|acc_out\(1),
	datac => \inst|Mux4~1_combout\,
	datad => \inst|mdr\(1),
	combout => \inst|RESULT~9_combout\);

-- Location: LCCOMB_X13_Y10_N12
\inst|acc~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~5_combout\ = (!\inst|ir_out\(0) & !\inst|Mux13~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|ir_out\(0),
	datad => \inst|Mux13~0_combout\,
	combout => \inst|acc~5_combout\);

-- Location: LCCOMB_X16_Y9_N12
\inst|acc~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~4_combout\ = (\inst|ir_out\(0)) # ((\inst|Mux14~0_combout\ & !\inst|Mux13~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ir_out\(0),
	datab => \inst|Mux14~0_combout\,
	datad => \inst|Mux13~0_combout\,
	combout => \inst|acc~4_combout\);

-- Location: LCCOMB_X12_Y9_N14
\inst|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~2_combout\ = (\inst|acc~9_combout\ & ((\inst|mdr\(1) & (\inst|Add2~1\ & VCC)) # (!\inst|mdr\(1) & (!\inst|Add2~1\)))) # (!\inst|acc~9_combout\ & ((\inst|mdr\(1) & (!\inst|Add2~1\)) # (!\inst|mdr\(1) & ((\inst|Add2~1\) # (GND)))))
-- \inst|Add2~3\ = CARRY((\inst|acc~9_combout\ & (!\inst|mdr\(1) & !\inst|Add2~1\)) # (!\inst|acc~9_combout\ & ((!\inst|Add2~1\) # (!\inst|mdr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc~9_combout\,
	datab => \inst|mdr\(1),
	datad => VCC,
	cin => \inst|Add2~1\,
	combout => \inst|Add2~2_combout\,
	cout => \inst|Add2~3\);

-- Location: LCCOMB_X13_Y9_N2
\inst|acc~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~38_combout\ = (\inst|acc~5_combout\ & ((\inst|RESULT~9_combout\) # ((\inst|acc~4_combout\)))) # (!\inst|acc~5_combout\ & (((!\inst|acc~4_combout\ & \inst|Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RESULT~9_combout\,
	datab => \inst|acc~5_combout\,
	datac => \inst|acc~4_combout\,
	datad => \inst|Add2~2_combout\,
	combout => \inst|acc~38_combout\);

-- Location: LCCOMB_X14_Y10_N18
\inst|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~2_combout\ = (\inst|mdr\(1) & ((\inst|acc~9_combout\ & (!\inst|Add3~1\)) # (!\inst|acc~9_combout\ & ((\inst|Add3~1\) # (GND))))) # (!\inst|mdr\(1) & ((\inst|acc~9_combout\ & (\inst|Add3~1\ & VCC)) # (!\inst|acc~9_combout\ & (!\inst|Add3~1\))))
-- \inst|Add3~3\ = CARRY((\inst|mdr\(1) & ((!\inst|Add3~1\) # (!\inst|acc~9_combout\))) # (!\inst|mdr\(1) & (!\inst|acc~9_combout\ & !\inst|Add3~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mdr\(1),
	datab => \inst|acc~9_combout\,
	datad => VCC,
	cin => \inst|Add3~1\,
	combout => \inst|Add3~2_combout\,
	cout => \inst|Add3~3\);

-- Location: LCCOMB_X13_Y9_N28
\inst|acc~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~39_combout\ = (\inst|acc~38_combout\ & (((\inst|Add3~2_combout\) # (!\inst|acc~4_combout\)))) # (!\inst|acc~38_combout\ & (\inst|RESULT~8_combout\ & (\inst|acc~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RESULT~8_combout\,
	datab => \inst|acc~38_combout\,
	datac => \inst|acc~4_combout\,
	datad => \inst|Add3~2_combout\,
	combout => \inst|acc~39_combout\);

-- Location: LCCOMB_X13_Y9_N26
\inst|acc~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~41_combout\ = (\inst|acc~40_combout\ & (((\inst|Add4~2_combout\)) # (!\inst|acc~50_combout\))) # (!\inst|acc~40_combout\ & (\inst|acc~50_combout\ & ((\inst|acc~39_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc~40_combout\,
	datab => \inst|acc~50_combout\,
	datac => \inst|Add4~2_combout\,
	datad => \inst|acc~39_combout\,
	combout => \inst|acc~41_combout\);

-- Location: FF_X13_Y9_N27
\inst|acc_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|acc~41_combout\,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|acc_out\(1));

-- Location: LCCOMB_X18_Y9_N26
\inst|sysbus~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sysbus~34_combout\ = (\inst|Mux8~0_combout\ & ((\inst|add_r\(3) & ((\inst|acc_out\(1)))) # (!\inst|add_r\(3) & (\inst|mdr\(1))))) # (!\inst|Mux8~0_combout\ & (((\inst|acc_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mdr\(1),
	datab => \inst|Mux8~0_combout\,
	datac => \inst|add_r\(3),
	datad => \inst|acc_out\(1),
	combout => \inst|sysbus~34_combout\);

-- Location: FF_X18_Y9_N27
\inst|rrr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|sysbus~34_combout\,
	ena => \inst|rrr[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|rrr\(1));

-- Location: LCCOMB_X18_Y7_N18
\inst|sysbus~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sysbus~19_combout\ = (\inst|Mux3~1_combout\) # ((!\inst|Mux11~0_combout\ & \inst|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux11~0_combout\,
	datac => \inst|Mux5~0_combout\,
	datad => \inst|Mux3~1_combout\,
	combout => \inst|sysbus~19_combout\);

-- Location: LCCOMB_X18_Y10_N6
\inst|count[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[1]~7_combout\ = (\inst|count\(1) & (!\inst|count[0]~6\)) # (!\inst|count\(1) & ((\inst|count[0]~6\) # (GND)))
-- \inst|count[1]~8\ = CARRY((!\inst|count[0]~6\) # (!\inst|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(1),
	datad => VCC,
	cin => \inst|count[0]~6\,
	combout => \inst|count[1]~7_combout\,
	cout => \inst|count[1]~8\);

-- Location: FF_X18_Y10_N7
\inst|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|count[1]~7_combout\,
	asdata => \inst|mdr\(1),
	sload => \inst|Mux2~0_combout\,
	ena => \inst|count[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(1));

-- Location: LCCOMB_X17_Y8_N16
\inst|sysbus~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sysbus~51_combout\ = (\inst|sysbus~28_combout\) # ((!\inst|add_r\(3) & (\inst|Mux8~0_combout\ & \inst|mdr\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|add_r\(3),
	datab => \inst|Mux8~0_combout\,
	datac => \inst|mdr\(1),
	datad => \inst|sysbus~28_combout\,
	combout => \inst|sysbus~51_combout\);

-- Location: FF_X17_Y8_N17
\inst|sysbus[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|sysbus~51_combout\,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sysbus\(1));

-- Location: FF_X17_Y8_N27
\inst|instr_rrr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|instr_rrr~2_combout\,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|instr_rrr\(2));

-- Location: LCCOMB_X17_Y9_N18
\inst|acc~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~8_combout\ = (\inst|Mux4~1_combout\ & (\inst|mdr\(2))) # (!\inst|Mux4~1_combout\ & ((\inst|acc_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux4~1_combout\,
	datac => \inst|mdr\(2),
	datad => \inst|acc_out\(2),
	combout => \inst|acc~8_combout\);

-- Location: LCCOMB_X14_Y10_N4
\inst|Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~4_combout\ = ((\inst|acc~8_combout\ $ (\inst|rrr\(2) $ (!\inst|Add4~3\)))) # (GND)
-- \inst|Add4~5\ = CARRY((\inst|acc~8_combout\ & ((\inst|rrr\(2)) # (!\inst|Add4~3\))) # (!\inst|acc~8_combout\ & (\inst|rrr\(2) & !\inst|Add4~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc~8_combout\,
	datab => \inst|rrr\(2),
	datad => VCC,
	cin => \inst|Add4~3\,
	combout => \inst|Add4~4_combout\,
	cout => \inst|Add4~5\);

-- Location: LCCOMB_X13_Y9_N12
\inst|RESULT~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RESULT~10_combout\ = (\inst|mdr\(2) & ((\inst|Mux4~1_combout\) # (\inst|acc_out\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux4~1_combout\,
	datac => \inst|acc_out\(2),
	datad => \inst|mdr\(2),
	combout => \inst|RESULT~10_combout\);

-- Location: LCCOMB_X14_Y10_N20
\inst|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~4_combout\ = ((\inst|acc~8_combout\ $ (\inst|mdr\(2) $ (\inst|Add3~3\)))) # (GND)
-- \inst|Add3~5\ = CARRY((\inst|acc~8_combout\ & ((!\inst|Add3~3\) # (!\inst|mdr\(2)))) # (!\inst|acc~8_combout\ & (!\inst|mdr\(2) & !\inst|Add3~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc~8_combout\,
	datab => \inst|mdr\(2),
	datad => VCC,
	cin => \inst|Add3~3\,
	combout => \inst|Add3~4_combout\,
	cout => \inst|Add3~5\);

-- Location: LCCOMB_X12_Y9_N16
\inst|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~4_combout\ = ((\inst|mdr\(2) $ (\inst|acc~8_combout\ $ (!\inst|Add2~3\)))) # (GND)
-- \inst|Add2~5\ = CARRY((\inst|mdr\(2) & ((\inst|acc~8_combout\) # (!\inst|Add2~3\))) # (!\inst|mdr\(2) & (\inst|acc~8_combout\ & !\inst|Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mdr\(2),
	datab => \inst|acc~8_combout\,
	datad => VCC,
	cin => \inst|Add2~3\,
	combout => \inst|Add2~4_combout\,
	cout => \inst|Add2~5\);

-- Location: LCCOMB_X13_Y9_N8
\inst|RESULT~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RESULT~11_combout\ = (\inst|rrr\(2) & ((\inst|Mux4~1_combout\ & (\inst|mdr\(2))) # (!\inst|Mux4~1_combout\ & ((\inst|acc_out\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mdr\(2),
	datab => \inst|acc_out\(2),
	datac => \inst|Mux4~1_combout\,
	datad => \inst|rrr\(2),
	combout => \inst|RESULT~11_combout\);

-- Location: LCCOMB_X13_Y9_N6
\inst|acc~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~42_combout\ = (\inst|acc~5_combout\ & (((\inst|acc~4_combout\)))) # (!\inst|acc~5_combout\ & ((\inst|acc~4_combout\ & ((\inst|RESULT~11_combout\))) # (!\inst|acc~4_combout\ & (\inst|Add2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Add2~4_combout\,
	datab => \inst|acc~5_combout\,
	datac => \inst|acc~4_combout\,
	datad => \inst|RESULT~11_combout\,
	combout => \inst|acc~42_combout\);

-- Location: LCCOMB_X13_Y9_N0
\inst|acc~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~43_combout\ = (\inst|acc~5_combout\ & ((\inst|acc~42_combout\ & ((\inst|Add3~4_combout\))) # (!\inst|acc~42_combout\ & (\inst|RESULT~10_combout\)))) # (!\inst|acc~5_combout\ & (((\inst|acc~42_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RESULT~10_combout\,
	datab => \inst|acc~5_combout\,
	datac => \inst|Add3~4_combout\,
	datad => \inst|acc~42_combout\,
	combout => \inst|acc~43_combout\);

-- Location: LCCOMB_X13_Y9_N10
\inst|acc~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~44_combout\ = (\inst|acc~50_combout\ & (((\inst|acc~15_combout\) # (\inst|acc~43_combout\)))) # (!\inst|acc~50_combout\ & (\inst|acc~9_combout\ & (!\inst|acc~15_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc~9_combout\,
	datab => \inst|acc~50_combout\,
	datac => \inst|acc~15_combout\,
	datad => \inst|acc~43_combout\,
	combout => \inst|acc~44_combout\);

-- Location: LCCOMB_X13_Y9_N4
\inst|acc~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~45_combout\ = (\inst|acc~15_combout\ & ((\inst|acc~44_combout\ & ((\inst|Add4~4_combout\))) # (!\inst|acc~44_combout\ & (\inst|acc~8_combout\)))) # (!\inst|acc~15_combout\ & (((\inst|acc~44_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc~15_combout\,
	datab => \inst|acc~8_combout\,
	datac => \inst|Add4~4_combout\,
	datad => \inst|acc~44_combout\,
	combout => \inst|acc~45_combout\);

-- Location: FF_X13_Y9_N13
\inst|acc_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst|acc~45_combout\,
	sload => VCC,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|acc_out\(2));

-- Location: LCCOMB_X18_Y9_N0
\inst|sysbus~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sysbus~33_combout\ = (\inst|add_r\(3) & (((\inst|acc_out\(2))))) # (!\inst|add_r\(3) & ((\inst|Mux8~0_combout\ & (\inst|mdr\(2))) # (!\inst|Mux8~0_combout\ & ((\inst|acc_out\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|add_r\(3),
	datab => \inst|mdr\(2),
	datac => \inst|Mux8~0_combout\,
	datad => \inst|acc_out\(2),
	combout => \inst|sysbus~33_combout\);

-- Location: FF_X18_Y9_N1
\inst|rrr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|sysbus~33_combout\,
	ena => \inst|rrr[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|rrr\(2));

-- Location: LCCOMB_X18_Y10_N8
\inst|count[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[2]~9_combout\ = (\inst|count\(2) & (\inst|count[1]~8\ $ (GND))) # (!\inst|count\(2) & (!\inst|count[1]~8\ & VCC))
-- \inst|count[2]~10\ = CARRY((\inst|count\(2) & !\inst|count[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|count\(2),
	datad => VCC,
	cin => \inst|count[1]~8\,
	combout => \inst|count[2]~9_combout\,
	cout => \inst|count[2]~10\);

-- Location: FF_X18_Y10_N9
\inst|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|count[2]~9_combout\,
	asdata => \inst|mdr\(2),
	sload => \inst|Mux2~0_combout\,
	ena => \inst|count[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(2));

-- Location: FF_X17_Y8_N31
\inst|instr_rrr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|instr_rrr~1_combout\,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|instr_rrr\(3));

-- Location: LCCOMB_X14_Y9_N6
\inst|acc~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~7_combout\ = (\inst|Mux4~1_combout\ & ((\inst|mdr\(3)))) # (!\inst|Mux4~1_combout\ & (\inst|acc_out\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|acc_out\(3),
	datac => \inst|mdr\(3),
	datad => \inst|Mux4~1_combout\,
	combout => \inst|acc~7_combout\);

-- Location: LCCOMB_X14_Y9_N22
\inst|acc~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~48_combout\ = (\inst|acc~50_combout\ & (((\inst|acc~15_combout\)))) # (!\inst|acc~50_combout\ & ((\inst|acc~15_combout\ & (\inst|acc~7_combout\)) # (!\inst|acc~15_combout\ & ((\inst|acc~8_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc~7_combout\,
	datab => \inst|acc~50_combout\,
	datac => \inst|acc~15_combout\,
	datad => \inst|acc~8_combout\,
	combout => \inst|acc~48_combout\);

-- Location: LCCOMB_X14_Y10_N6
\inst|Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~6_combout\ = (\inst|acc~7_combout\ & ((\inst|rrr\(3) & (\inst|Add4~5\ & VCC)) # (!\inst|rrr\(3) & (!\inst|Add4~5\)))) # (!\inst|acc~7_combout\ & ((\inst|rrr\(3) & (!\inst|Add4~5\)) # (!\inst|rrr\(3) & ((\inst|Add4~5\) # (GND)))))
-- \inst|Add4~7\ = CARRY((\inst|acc~7_combout\ & (!\inst|rrr\(3) & !\inst|Add4~5\)) # (!\inst|acc~7_combout\ & ((!\inst|Add4~5\) # (!\inst|rrr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc~7_combout\,
	datab => \inst|rrr\(3),
	datad => VCC,
	cin => \inst|Add4~5\,
	combout => \inst|Add4~6_combout\,
	cout => \inst|Add4~7\);

-- Location: LCCOMB_X14_Y9_N14
\inst|RESULT~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RESULT~12_combout\ = (\inst|rrr\(3) & ((\inst|Mux4~1_combout\ & (\inst|mdr\(3))) # (!\inst|Mux4~1_combout\ & ((\inst|acc_out\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux4~1_combout\,
	datab => \inst|rrr\(3),
	datac => \inst|mdr\(3),
	datad => \inst|acc_out\(3),
	combout => \inst|RESULT~12_combout\);

-- Location: LCCOMB_X14_Y10_N22
\inst|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~6_combout\ = (\inst|acc~7_combout\ & ((\inst|mdr\(3) & (!\inst|Add3~5\)) # (!\inst|mdr\(3) & (\inst|Add3~5\ & VCC)))) # (!\inst|acc~7_combout\ & ((\inst|mdr\(3) & ((\inst|Add3~5\) # (GND))) # (!\inst|mdr\(3) & (!\inst|Add3~5\))))
-- \inst|Add3~7\ = CARRY((\inst|acc~7_combout\ & (\inst|mdr\(3) & !\inst|Add3~5\)) # (!\inst|acc~7_combout\ & ((\inst|mdr\(3)) # (!\inst|Add3~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc~7_combout\,
	datab => \inst|mdr\(3),
	datad => VCC,
	cin => \inst|Add3~5\,
	combout => \inst|Add3~6_combout\,
	cout => \inst|Add3~7\);

-- Location: LCCOMB_X14_Y9_N16
\inst|RESULT~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RESULT~13_combout\ = (\inst|mdr\(3) & ((\inst|Mux4~1_combout\) # (\inst|acc_out\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|mdr\(3),
	datac => \inst|Mux4~1_combout\,
	datad => \inst|acc_out\(3),
	combout => \inst|RESULT~13_combout\);

-- Location: LCCOMB_X12_Y9_N18
\inst|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~6_combout\ = (\inst|acc~7_combout\ & ((\inst|mdr\(3) & (\inst|Add2~5\ & VCC)) # (!\inst|mdr\(3) & (!\inst|Add2~5\)))) # (!\inst|acc~7_combout\ & ((\inst|mdr\(3) & (!\inst|Add2~5\)) # (!\inst|mdr\(3) & ((\inst|Add2~5\) # (GND)))))
-- \inst|Add2~7\ = CARRY((\inst|acc~7_combout\ & (!\inst|mdr\(3) & !\inst|Add2~5\)) # (!\inst|acc~7_combout\ & ((!\inst|Add2~5\) # (!\inst|mdr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc~7_combout\,
	datab => \inst|mdr\(3),
	datad => VCC,
	cin => \inst|Add2~5\,
	combout => \inst|Add2~6_combout\,
	cout => \inst|Add2~7\);

-- Location: LCCOMB_X14_Y9_N10
\inst|acc~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~46_combout\ = (\inst|acc~4_combout\ & (((\inst|acc~5_combout\)))) # (!\inst|acc~4_combout\ & ((\inst|acc~5_combout\ & (\inst|RESULT~13_combout\)) # (!\inst|acc~5_combout\ & ((\inst|Add2~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc~4_combout\,
	datab => \inst|RESULT~13_combout\,
	datac => \inst|Add2~6_combout\,
	datad => \inst|acc~5_combout\,
	combout => \inst|acc~46_combout\);

-- Location: LCCOMB_X14_Y9_N20
\inst|acc~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~47_combout\ = (\inst|acc~4_combout\ & ((\inst|acc~46_combout\ & ((\inst|Add3~6_combout\))) # (!\inst|acc~46_combout\ & (\inst|RESULT~12_combout\)))) # (!\inst|acc~4_combout\ & (((\inst|acc~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc~4_combout\,
	datab => \inst|RESULT~12_combout\,
	datac => \inst|Add3~6_combout\,
	datad => \inst|acc~46_combout\,
	combout => \inst|acc~47_combout\);

-- Location: LCCOMB_X14_Y9_N8
\inst|acc~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~49_combout\ = (\inst|acc~48_combout\ & (((\inst|Add4~6_combout\)) # (!\inst|acc~50_combout\))) # (!\inst|acc~48_combout\ & (\inst|acc~50_combout\ & ((\inst|acc~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc~48_combout\,
	datab => \inst|acc~50_combout\,
	datac => \inst|Add4~6_combout\,
	datad => \inst|acc~47_combout\,
	combout => \inst|acc~49_combout\);

-- Location: FF_X14_Y9_N27
\inst|acc_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst|acc~49_combout\,
	sload => VCC,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|acc_out\(3));

-- Location: LCCOMB_X18_Y9_N14
\inst|sysbus~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sysbus~32_combout\ = (\inst|add_r\(3) & (((\inst|acc_out\(3))))) # (!\inst|add_r\(3) & ((\inst|Mux8~0_combout\ & (\inst|mdr\(3))) # (!\inst|Mux8~0_combout\ & ((\inst|acc_out\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|add_r\(3),
	datab => \inst|Mux8~0_combout\,
	datac => \inst|mdr\(3),
	datad => \inst|acc_out\(3),
	combout => \inst|sysbus~32_combout\);

-- Location: FF_X18_Y9_N15
\inst|rrr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|sysbus~32_combout\,
	ena => \inst|rrr[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|rrr\(3));

-- Location: LCCOMB_X17_Y8_N12
\inst|sysbus~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sysbus~49_combout\ = (\inst|sysbus~22_combout\) # ((!\inst|add_r\(3) & (\inst|mdr\(3) & \inst|Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|add_r\(3),
	datab => \inst|mdr\(3),
	datac => \inst|sysbus~22_combout\,
	datad => \inst|Mux8~0_combout\,
	combout => \inst|sysbus~49_combout\);

-- Location: FF_X17_Y8_N13
\inst|sysbus[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|sysbus~49_combout\,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sysbus\(3));

-- Location: LCCOMB_X18_Y10_N10
\inst|count[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[3]~11_combout\ = (\inst|count\(3) & (!\inst|count[2]~10\)) # (!\inst|count\(3) & ((\inst|count[2]~10\) # (GND)))
-- \inst|count[3]~12\ = CARRY((!\inst|count[2]~10\) # (!\inst|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(3),
	datad => VCC,
	cin => \inst|count[2]~10\,
	combout => \inst|count[3]~11_combout\,
	cout => \inst|count[3]~12\);

-- Location: FF_X18_Y10_N11
\inst|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|count[3]~11_combout\,
	asdata => \inst|mdr\(3),
	sload => \inst|Mux2~0_combout\,
	ena => \inst|count[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(3));

-- Location: FF_X17_Y8_N19
\inst|instr_rrr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|instr_rrr~0_combout\,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|instr_rrr\(4));

-- Location: LCCOMB_X17_Y8_N18
\inst|instr_rrr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|instr_rrr~0_combout\ = (\inst|Mux6~0_combout\ & ((\inst|mdr\(4)))) # (!\inst|Mux6~0_combout\ & (\inst|instr_rrr\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux6~0_combout\,
	datac => \inst|instr_rrr\(4),
	datad => \inst|mdr\(4),
	combout => \inst|instr_rrr~0_combout\);

-- Location: LCCOMB_X18_Y8_N8
\inst|sysbus~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sysbus~20_combout\ = (\inst|sysbus~15_combout\ & (((\inst|sysbus~19_combout\)))) # (!\inst|sysbus~15_combout\ & ((\inst|sysbus~19_combout\ & ((\inst|acc_out\(3)))) # (!\inst|sysbus~19_combout\ & (\inst|instr_rrr~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sysbus~15_combout\,
	datab => \inst|instr_rrr~0_combout\,
	datac => \inst|acc_out\(3),
	datad => \inst|sysbus~19_combout\,
	combout => \inst|sysbus~20_combout\);

-- Location: LCCOMB_X18_Y8_N6
\inst|sysbus~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sysbus~21_combout\ = (\inst|sysbus~20_combout\ & (((\inst|count\(3)) # (!\inst|sysbus~15_combout\)))) # (!\inst|sysbus~20_combout\ & (\inst|sysbus\(3) & ((\inst|sysbus~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sysbus\(3),
	datab => \inst|count\(3),
	datac => \inst|sysbus~20_combout\,
	datad => \inst|sysbus~15_combout\,
	combout => \inst|sysbus~21_combout\);

-- Location: LCCOMB_X17_Y8_N24
\inst|sysbus~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sysbus~22_combout\ = (!\inst|Mux8~1_combout\ & ((\inst|Mux1~1_combout\ & (\inst|rrr\(3))) # (!\inst|Mux1~1_combout\ & ((\inst|sysbus~21_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux8~1_combout\,
	datab => \inst|rrr\(3),
	datac => \inst|Mux1~1_combout\,
	datad => \inst|sysbus~21_combout\,
	combout => \inst|sysbus~22_combout\);

-- Location: LCCOMB_X18_Y10_N30
\inst|mdr~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|mdr~3_combout\ = (\inst|Mux9~0_combout\ & ((\inst|sysbus~22_combout\) # ((\inst|Mux8~1_combout\ & \inst|mdr\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux8~1_combout\,
	datab => \inst|Mux9~0_combout\,
	datac => \inst|mdr\(3),
	datad => \inst|sysbus~22_combout\,
	combout => \inst|mdr~3_combout\);

-- Location: LCCOMB_X18_Y7_N0
\inst|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux12~0_combout\ = (\inst|add_r\(0) & (!\inst|add_r\(1) & (!\inst|add_r\(4)))) # (!\inst|add_r\(0) & ((\inst|add_r\(1) & (\inst|add_r\(4))) # (!\inst|add_r\(1) & ((\inst|add_r\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|add_r\(0),
	datab => \inst|add_r\(1),
	datac => \inst|add_r\(4),
	datad => \inst|add_r\(2),
	combout => \inst|Mux12~0_combout\);

-- Location: LCCOMB_X18_Y7_N20
\inst|mdr[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|mdr[2]~1_combout\ = (\inst|add_r\(3) & (((\inst|Mux3~0_combout\)))) # (!\inst|add_r\(3) & (\inst|Mux12~0_combout\ & ((!\inst|add_r\(0)) # (!\inst|Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|add_r\(3),
	datab => \inst|Mux12~0_combout\,
	datac => \inst|Mux3~0_combout\,
	datad => \inst|add_r\(0),
	combout => \inst|mdr[2]~1_combout\);

-- Location: LCCOMB_X18_Y10_N28
\inst|mdr[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|mdr[2]~2_combout\ = (!\inst|Mux7~1_combout\ & (\inst|Equal0~9_combout\ & ((\inst|mdr[2]~1_combout\) # (\inst|Mux9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mdr[2]~1_combout\,
	datab => \inst|Mux9~0_combout\,
	datac => \inst|Mux7~1_combout\,
	datad => \inst|Equal0~9_combout\,
	combout => \inst|mdr[2]~2_combout\);

-- Location: FF_X18_Y10_N31
\inst|mdr[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|mdr~3_combout\,
	ena => \inst|mdr[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mdr\(3));

-- Location: LCCOMB_X17_Y8_N30
\inst|instr_rrr~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|instr_rrr~1_combout\ = (\inst|Mux6~0_combout\ & ((\inst|mdr\(3)))) # (!\inst|Mux6~0_combout\ & (\inst|instr_rrr\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux6~0_combout\,
	datac => \inst|instr_rrr\(3),
	datad => \inst|mdr\(3),
	combout => \inst|instr_rrr~1_combout\);

-- Location: LCCOMB_X17_Y10_N24
\inst|sysbus~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sysbus~50_combout\ = (\inst|sysbus~25_combout\) # ((!\inst|add_r\(3) & (\inst|mdr\(2) & \inst|Mux8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|add_r\(3),
	datab => \inst|mdr\(2),
	datac => \inst|Mux8~0_combout\,
	datad => \inst|sysbus~25_combout\,
	combout => \inst|sysbus~50_combout\);

-- Location: FF_X17_Y10_N25
\inst|sysbus[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|sysbus~50_combout\,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sysbus\(2));

-- Location: LCCOMB_X19_Y10_N20
\inst|sysbus~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sysbus~23_combout\ = (\inst|sysbus~19_combout\ & (((\inst|sysbus~15_combout\)))) # (!\inst|sysbus~19_combout\ & ((\inst|sysbus~15_combout\ & ((\inst|sysbus\(2)))) # (!\inst|sysbus~15_combout\ & (\inst|instr_rrr~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|instr_rrr~1_combout\,
	datab => \inst|sysbus~19_combout\,
	datac => \inst|sysbus\(2),
	datad => \inst|sysbus~15_combout\,
	combout => \inst|sysbus~23_combout\);

-- Location: LCCOMB_X19_Y10_N2
\inst|sysbus~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sysbus~24_combout\ = (\inst|sysbus~19_combout\ & ((\inst|sysbus~23_combout\ & (\inst|count\(2))) # (!\inst|sysbus~23_combout\ & ((\inst|acc_out\(2)))))) # (!\inst|sysbus~19_combout\ & (((\inst|sysbus~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(2),
	datab => \inst|sysbus~19_combout\,
	datac => \inst|acc_out\(2),
	datad => \inst|sysbus~23_combout\,
	combout => \inst|sysbus~24_combout\);

-- Location: LCCOMB_X19_Y10_N24
\inst|sysbus~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sysbus~25_combout\ = (!\inst|Mux8~1_combout\ & ((\inst|Mux1~1_combout\ & (\inst|rrr\(2))) # (!\inst|Mux1~1_combout\ & ((\inst|sysbus~24_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|rrr\(2),
	datab => \inst|Mux1~1_combout\,
	datac => \inst|Mux8~1_combout\,
	datad => \inst|sysbus~24_combout\,
	combout => \inst|sysbus~25_combout\);

-- Location: LCCOMB_X18_Y10_N16
\inst|mdr~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|mdr~4_combout\ = (\inst|Mux9~0_combout\ & ((\inst|sysbus~25_combout\) # ((\inst|Mux8~1_combout\ & \inst|mdr\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sysbus~25_combout\,
	datab => \inst|Mux8~1_combout\,
	datac => \inst|mdr\(2),
	datad => \inst|Mux9~0_combout\,
	combout => \inst|mdr~4_combout\);

-- Location: FF_X18_Y10_N17
\inst|mdr[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|mdr~4_combout\,
	ena => \inst|mdr[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mdr\(2));

-- Location: LCCOMB_X17_Y8_N26
\inst|instr_rrr~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|instr_rrr~2_combout\ = (\inst|Mux6~0_combout\ & ((\inst|mdr\(2)))) # (!\inst|Mux6~0_combout\ & (\inst|instr_rrr\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux6~0_combout\,
	datac => \inst|instr_rrr\(2),
	datad => \inst|mdr\(2),
	combout => \inst|instr_rrr~2_combout\);

-- Location: LCCOMB_X18_Y8_N28
\inst|sysbus~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sysbus~26_combout\ = (\inst|sysbus~19_combout\ & (((\inst|sysbus~15_combout\)))) # (!\inst|sysbus~19_combout\ & ((\inst|sysbus~15_combout\ & (\inst|sysbus\(1))) # (!\inst|sysbus~15_combout\ & ((\inst|instr_rrr~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sysbus\(1),
	datab => \inst|sysbus~19_combout\,
	datac => \inst|instr_rrr~2_combout\,
	datad => \inst|sysbus~15_combout\,
	combout => \inst|sysbus~26_combout\);

-- Location: LCCOMB_X18_Y8_N2
\inst|sysbus~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sysbus~27_combout\ = (\inst|sysbus~19_combout\ & ((\inst|sysbus~26_combout\ & ((\inst|count\(1)))) # (!\inst|sysbus~26_combout\ & (\inst|acc_out\(1))))) # (!\inst|sysbus~19_combout\ & (((\inst|sysbus~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc_out\(1),
	datab => \inst|sysbus~19_combout\,
	datac => \inst|count\(1),
	datad => \inst|sysbus~26_combout\,
	combout => \inst|sysbus~27_combout\);

-- Location: LCCOMB_X17_Y8_N0
\inst|sysbus~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sysbus~28_combout\ = (!\inst|Mux8~1_combout\ & ((\inst|Mux1~1_combout\ & (\inst|rrr\(1))) # (!\inst|Mux1~1_combout\ & ((\inst|sysbus~27_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux8~1_combout\,
	datab => \inst|rrr\(1),
	datac => \inst|Mux1~1_combout\,
	datad => \inst|sysbus~27_combout\,
	combout => \inst|sysbus~28_combout\);

-- Location: LCCOMB_X18_Y10_N0
\inst|mdr~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|mdr~5_combout\ = (\inst|Mux9~0_combout\ & ((\inst|sysbus~28_combout\) # ((\inst|Mux8~1_combout\ & \inst|mdr\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sysbus~28_combout\,
	datab => \inst|Mux8~1_combout\,
	datac => \inst|mdr\(1),
	datad => \inst|Mux9~0_combout\,
	combout => \inst|mdr~5_combout\);

-- Location: FF_X18_Y10_N1
\inst|mdr[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|mdr~5_combout\,
	ena => \inst|mdr[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mdr\(1));

-- Location: LCCOMB_X17_Y8_N28
\inst|instr_rrr~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|instr_rrr~3_combout\ = (\inst|Mux6~0_combout\ & ((\inst|mdr\(1)))) # (!\inst|Mux6~0_combout\ & (\inst|instr_rrr\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux6~0_combout\,
	datac => \inst|instr_rrr\(1),
	datad => \inst|mdr\(1),
	combout => \inst|instr_rrr~3_combout\);

-- Location: LCCOMB_X18_Y8_N20
\inst|sysbus~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sysbus~29_combout\ = (\inst|sysbus~15_combout\ & (((\inst|sysbus~19_combout\)))) # (!\inst|sysbus~15_combout\ & ((\inst|sysbus~19_combout\ & ((\inst|acc_out\(0)))) # (!\inst|sysbus~19_combout\ & (\inst|instr_rrr~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sysbus~15_combout\,
	datab => \inst|instr_rrr~3_combout\,
	datac => \inst|acc_out\(0),
	datad => \inst|sysbus~19_combout\,
	combout => \inst|sysbus~29_combout\);

-- Location: LCCOMB_X18_Y8_N18
\inst|sysbus~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sysbus~30_combout\ = (\inst|sysbus~15_combout\ & ((\inst|sysbus~29_combout\ & ((\inst|count\(0)))) # (!\inst|sysbus~29_combout\ & (\inst|sysbus\(0))))) # (!\inst|sysbus~15_combout\ & (((\inst|sysbus~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sysbus~15_combout\,
	datab => \inst|sysbus\(0),
	datac => \inst|count\(0),
	datad => \inst|sysbus~29_combout\,
	combout => \inst|sysbus~30_combout\);

-- Location: LCCOMB_X17_Y8_N10
\inst|sysbus~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sysbus~31_combout\ = (!\inst|Mux8~1_combout\ & ((\inst|Mux1~1_combout\ & (\inst|rrr\(0))) # (!\inst|Mux1~1_combout\ & ((\inst|sysbus~30_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux8~1_combout\,
	datab => \inst|rrr\(0),
	datac => \inst|Mux1~1_combout\,
	datad => \inst|sysbus~30_combout\,
	combout => \inst|sysbus~31_combout\);

-- Location: LCCOMB_X18_Y10_N14
\inst|mdr~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|mdr~6_combout\ = (\inst|Mux9~0_combout\ & ((\inst|sysbus~31_combout\) # ((\inst|Mux8~1_combout\ & \inst|mdr\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sysbus~31_combout\,
	datab => \inst|Mux8~1_combout\,
	datac => \inst|mdr\(0),
	datad => \inst|Mux9~0_combout\,
	combout => \inst|mdr~6_combout\);

-- Location: FF_X18_Y10_N15
\inst|mdr[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|mdr~6_combout\,
	ena => \inst|mdr[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mdr\(0));

-- Location: LCCOMB_X16_Y9_N30
\inst|ir_out[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ir_out[0]~feeder_combout\ = \inst|mdr\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|mdr\(0),
	combout => \inst|ir_out[0]~feeder_combout\);

-- Location: LCCOMB_X16_Y9_N0
\inst|ir_out[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|ir_out[0]~2_combout\ = (\inst|Mux4~0_combout\ & (!\inst|add_r\(2) & (!\inst|add_r\(4) & \inst|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux4~0_combout\,
	datab => \inst|add_r\(2),
	datac => \inst|add_r\(4),
	datad => \inst|Equal0~9_combout\,
	combout => \inst|ir_out[0]~2_combout\);

-- Location: FF_X16_Y9_N31
\inst|ir_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|ir_out[0]~feeder_combout\,
	ena => \inst|ir_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|ir_out\(0));

-- Location: LCCOMB_X16_Y8_N2
\inst|acc~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~13_combout\ = (!\inst|Mux9~0_combout\ & (!\inst|Mux13~0_combout\ & ((\inst|ir_out\(0)) # (!\inst|Mux14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux14~0_combout\,
	datab => \inst|Mux9~0_combout\,
	datac => \inst|ir_out\(0),
	datad => \inst|Mux13~0_combout\,
	combout => \inst|acc~13_combout\);

-- Location: LCCOMB_X16_Y8_N4
\inst|acc~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~50_combout\ = (\inst|add_r\(4) & (!\inst|acc~13_combout\ & !\inst|Mux10~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|add_r\(4),
	datab => \inst|acc~13_combout\,
	datad => \inst|Mux10~0_combout\,
	combout => \inst|acc~50_combout\);

-- Location: LCCOMB_X13_Y10_N8
\inst|acc~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~16_combout\ = (\inst|acc~50_combout\ & (((\inst|acc~15_combout\)))) # (!\inst|acc~50_combout\ & ((\inst|acc~15_combout\ & (\inst|acc~6_combout\)) # (!\inst|acc~15_combout\ & ((\inst|acc~7_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc~6_combout\,
	datab => \inst|acc~50_combout\,
	datac => \inst|acc~7_combout\,
	datad => \inst|acc~15_combout\,
	combout => \inst|acc~16_combout\);

-- Location: LCCOMB_X14_Y10_N8
\inst|Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~8_combout\ = ((\inst|acc~6_combout\ $ (\inst|rrr\(4) $ (!\inst|Add4~7\)))) # (GND)
-- \inst|Add4~9\ = CARRY((\inst|acc~6_combout\ & ((\inst|rrr\(4)) # (!\inst|Add4~7\))) # (!\inst|acc~6_combout\ & (\inst|rrr\(4) & !\inst|Add4~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc~6_combout\,
	datab => \inst|rrr\(4),
	datad => VCC,
	cin => \inst|Add4~7\,
	combout => \inst|Add4~8_combout\,
	cout => \inst|Add4~9\);

-- Location: LCCOMB_X13_Y10_N28
\inst|RESULT~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RESULT~0_combout\ = (\inst|rrr\(4) & ((\inst|Mux4~1_combout\ & (\inst|mdr\(4))) # (!\inst|Mux4~1_combout\ & ((\inst|acc_out\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mdr\(4),
	datab => \inst|rrr\(4),
	datac => \inst|acc_out\(4),
	datad => \inst|Mux4~1_combout\,
	combout => \inst|RESULT~0_combout\);

-- Location: LCCOMB_X14_Y10_N24
\inst|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~8_combout\ = ((\inst|acc~6_combout\ $ (\inst|mdr\(4) $ (\inst|Add3~7\)))) # (GND)
-- \inst|Add3~9\ = CARRY((\inst|acc~6_combout\ & ((!\inst|Add3~7\) # (!\inst|mdr\(4)))) # (!\inst|acc~6_combout\ & (!\inst|mdr\(4) & !\inst|Add3~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc~6_combout\,
	datab => \inst|mdr\(4),
	datad => VCC,
	cin => \inst|Add3~7\,
	combout => \inst|Add3~8_combout\,
	cout => \inst|Add3~9\);

-- Location: LCCOMB_X12_Y9_N20
\inst|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~8_combout\ = ((\inst|acc~6_combout\ $ (\inst|mdr\(4) $ (!\inst|Add2~7\)))) # (GND)
-- \inst|Add2~9\ = CARRY((\inst|acc~6_combout\ & ((\inst|mdr\(4)) # (!\inst|Add2~7\))) # (!\inst|acc~6_combout\ & (\inst|mdr\(4) & !\inst|Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc~6_combout\,
	datab => \inst|mdr\(4),
	datad => VCC,
	cin => \inst|Add2~7\,
	combout => \inst|Add2~8_combout\,
	cout => \inst|Add2~9\);

-- Location: LCCOMB_X13_Y10_N24
\inst|RESULT~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RESULT~1_combout\ = (\inst|mdr\(4) & ((\inst|acc_out\(4)) # (\inst|Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mdr\(4),
	datab => \inst|acc_out\(4),
	datad => \inst|Mux4~1_combout\,
	combout => \inst|RESULT~1_combout\);

-- Location: LCCOMB_X13_Y10_N20
\inst|acc~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~11_combout\ = (\inst|acc~5_combout\ & ((\inst|acc~4_combout\) # ((\inst|RESULT~1_combout\)))) # (!\inst|acc~5_combout\ & (!\inst|acc~4_combout\ & (\inst|Add2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc~5_combout\,
	datab => \inst|acc~4_combout\,
	datac => \inst|Add2~8_combout\,
	datad => \inst|RESULT~1_combout\,
	combout => \inst|acc~11_combout\);

-- Location: LCCOMB_X13_Y10_N10
\inst|acc~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~12_combout\ = (\inst|acc~4_combout\ & ((\inst|acc~11_combout\ & ((\inst|Add3~8_combout\))) # (!\inst|acc~11_combout\ & (\inst|RESULT~0_combout\)))) # (!\inst|acc~4_combout\ & (((\inst|acc~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RESULT~0_combout\,
	datab => \inst|acc~4_combout\,
	datac => \inst|Add3~8_combout\,
	datad => \inst|acc~11_combout\,
	combout => \inst|acc~12_combout\);

-- Location: LCCOMB_X13_Y10_N14
\inst|acc~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~17_combout\ = (\inst|acc~16_combout\ & (((\inst|Add4~8_combout\)) # (!\inst|acc~50_combout\))) # (!\inst|acc~16_combout\ & (\inst|acc~50_combout\ & ((\inst|acc~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc~16_combout\,
	datab => \inst|acc~50_combout\,
	datac => \inst|Add4~8_combout\,
	datad => \inst|acc~12_combout\,
	combout => \inst|acc~17_combout\);

-- Location: FF_X13_Y10_N29
\inst|acc_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst|acc~17_combout\,
	sload => VCC,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|acc_out\(4));

-- Location: LCCOMB_X18_Y9_N12
\inst|sysbus~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sysbus~14_combout\ = (\inst|add_r\(3) & (((\inst|acc_out\(4))))) # (!\inst|add_r\(3) & ((\inst|Mux8~0_combout\ & ((\inst|mdr\(4)))) # (!\inst|Mux8~0_combout\ & (\inst|acc_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|add_r\(3),
	datab => \inst|Mux8~0_combout\,
	datac => \inst|acc_out\(4),
	datad => \inst|mdr\(4),
	combout => \inst|sysbus~14_combout\);

-- Location: FF_X18_Y9_N13
\inst|rrr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|sysbus~14_combout\,
	ena => \inst|rrr[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|rrr\(4));

-- Location: LCCOMB_X18_Y10_N12
\inst|count[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|count[4]~13_combout\ = \inst|count[3]~12\ $ (!\inst|count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst|count\(4),
	cin => \inst|count[3]~12\,
	combout => \inst|count[4]~13_combout\);

-- Location: FF_X18_Y10_N13
\inst|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|count[4]~13_combout\,
	asdata => \inst|mdr\(4),
	sload => \inst|Mux2~0_combout\,
	ena => \inst|count[2]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|count\(4));

-- Location: LCCOMB_X17_Y10_N26
\inst|sysbus~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sysbus~48_combout\ = (\inst|sysbus~18_combout\) # ((\inst|mdr\(4) & (\inst|Mux8~0_combout\ & !\inst|add_r\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mdr\(4),
	datab => \inst|Mux8~0_combout\,
	datac => \inst|sysbus~18_combout\,
	datad => \inst|add_r\(3),
	combout => \inst|sysbus~48_combout\);

-- Location: FF_X17_Y10_N27
\inst|sysbus[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|sysbus~48_combout\,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sysbus\(4));

-- Location: LCCOMB_X19_Y10_N0
\inst|sysbus~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sysbus~16_combout\ = (\inst|sysbus~15_combout\ & ((\inst|Mux5~0_combout\ & (\inst|count\(4))) # (!\inst|Mux5~0_combout\ & ((\inst|sysbus\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|count\(4),
	datab => \inst|sysbus\(4),
	datac => \inst|Mux5~0_combout\,
	datad => \inst|sysbus~15_combout\,
	combout => \inst|sysbus~16_combout\);

-- Location: LCCOMB_X19_Y10_N26
\inst|sysbus~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sysbus~17_combout\ = (!\inst|Mux1~1_combout\ & ((\inst|sysbus~16_combout\) # ((\inst|Mux3~1_combout\ & \inst|acc_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux3~1_combout\,
	datab => \inst|Mux1~1_combout\,
	datac => \inst|acc_out\(4),
	datad => \inst|sysbus~16_combout\,
	combout => \inst|sysbus~17_combout\);

-- Location: LCCOMB_X18_Y10_N20
\inst|sysbus~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sysbus~18_combout\ = (!\inst|Mux8~1_combout\ & ((\inst|sysbus~17_combout\) # ((\inst|rrr\(4) & \inst|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|rrr\(4),
	datab => \inst|Mux1~1_combout\,
	datac => \inst|Mux8~1_combout\,
	datad => \inst|sysbus~17_combout\,
	combout => \inst|sysbus~18_combout\);

-- Location: LCCOMB_X18_Y10_N2
\inst|mdr~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|mdr~0_combout\ = (\inst|Mux9~0_combout\ & ((\inst|sysbus~18_combout\) # ((\inst|Mux8~1_combout\ & \inst|mdr\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux8~1_combout\,
	datab => \inst|Mux9~0_combout\,
	datac => \inst|mdr\(4),
	datad => \inst|sysbus~18_combout\,
	combout => \inst|mdr~0_combout\);

-- Location: FF_X18_Y10_N3
\inst|mdr[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|mdr~0_combout\,
	ena => \inst|mdr[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mdr\(4));

-- Location: LCCOMB_X13_Y10_N30
\inst|acc~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~6_combout\ = (\inst|Mux4~1_combout\ & (\inst|mdr\(4))) # (!\inst|Mux4~1_combout\ & ((\inst|acc_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mdr\(4),
	datab => \inst|acc_out\(4),
	datad => \inst|Mux4~1_combout\,
	combout => \inst|acc~6_combout\);

-- Location: LCCOMB_X14_Y10_N10
\inst|Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~10_combout\ = (\inst|rrr\(5) & ((\inst|acc~18_combout\ & (\inst|Add4~9\ & VCC)) # (!\inst|acc~18_combout\ & (!\inst|Add4~9\)))) # (!\inst|rrr\(5) & ((\inst|acc~18_combout\ & (!\inst|Add4~9\)) # (!\inst|acc~18_combout\ & ((\inst|Add4~9\) # 
-- (GND)))))
-- \inst|Add4~11\ = CARRY((\inst|rrr\(5) & (!\inst|acc~18_combout\ & !\inst|Add4~9\)) # (!\inst|rrr\(5) & ((!\inst|Add4~9\) # (!\inst|acc~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|rrr\(5),
	datab => \inst|acc~18_combout\,
	datad => VCC,
	cin => \inst|Add4~9\,
	combout => \inst|Add4~10_combout\,
	cout => \inst|Add4~11\);

-- Location: LCCOMB_X14_Y9_N26
\inst|RESULT~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RESULT~2_combout\ = (\inst|mdr\(5) & ((\inst|Mux4~1_combout\) # (\inst|acc_out\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux4~1_combout\,
	datab => \inst|acc_out\(5),
	datad => \inst|mdr\(5),
	combout => \inst|RESULT~2_combout\);

-- Location: LCCOMB_X14_Y10_N26
\inst|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~10_combout\ = (\inst|mdr\(5) & ((\inst|acc~18_combout\ & (!\inst|Add3~9\)) # (!\inst|acc~18_combout\ & ((\inst|Add3~9\) # (GND))))) # (!\inst|mdr\(5) & ((\inst|acc~18_combout\ & (\inst|Add3~9\ & VCC)) # (!\inst|acc~18_combout\ & 
-- (!\inst|Add3~9\))))
-- \inst|Add3~11\ = CARRY((\inst|mdr\(5) & ((!\inst|Add3~9\) # (!\inst|acc~18_combout\))) # (!\inst|mdr\(5) & (!\inst|acc~18_combout\ & !\inst|Add3~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mdr\(5),
	datab => \inst|acc~18_combout\,
	datad => VCC,
	cin => \inst|Add3~9\,
	combout => \inst|Add3~10_combout\,
	cout => \inst|Add3~11\);

-- Location: LCCOMB_X14_Y9_N28
\inst|RESULT~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RESULT~3_combout\ = (\inst|rrr\(5) & ((\inst|Mux4~1_combout\ & (\inst|mdr\(5))) # (!\inst|Mux4~1_combout\ & ((\inst|acc_out\(5))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux4~1_combout\,
	datab => \inst|mdr\(5),
	datac => \inst|acc_out\(5),
	datad => \inst|rrr\(5),
	combout => \inst|RESULT~3_combout\);

-- Location: LCCOMB_X12_Y9_N22
\inst|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~10_combout\ = (\inst|acc~18_combout\ & ((\inst|mdr\(5) & (\inst|Add2~9\ & VCC)) # (!\inst|mdr\(5) & (!\inst|Add2~9\)))) # (!\inst|acc~18_combout\ & ((\inst|mdr\(5) & (!\inst|Add2~9\)) # (!\inst|mdr\(5) & ((\inst|Add2~9\) # (GND)))))
-- \inst|Add2~11\ = CARRY((\inst|acc~18_combout\ & (!\inst|mdr\(5) & !\inst|Add2~9\)) # (!\inst|acc~18_combout\ & ((!\inst|Add2~9\) # (!\inst|mdr\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc~18_combout\,
	datab => \inst|mdr\(5),
	datad => VCC,
	cin => \inst|Add2~9\,
	combout => \inst|Add2~10_combout\,
	cout => \inst|Add2~11\);

-- Location: LCCOMB_X14_Y9_N2
\inst|acc~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~19_combout\ = (\inst|acc~4_combout\ & ((\inst|RESULT~3_combout\) # ((\inst|acc~5_combout\)))) # (!\inst|acc~4_combout\ & (((\inst|Add2~10_combout\ & !\inst|acc~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc~4_combout\,
	datab => \inst|RESULT~3_combout\,
	datac => \inst|Add2~10_combout\,
	datad => \inst|acc~5_combout\,
	combout => \inst|acc~19_combout\);

-- Location: LCCOMB_X14_Y9_N0
\inst|acc~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~20_combout\ = (\inst|acc~5_combout\ & ((\inst|acc~19_combout\ & ((\inst|Add3~10_combout\))) # (!\inst|acc~19_combout\ & (\inst|RESULT~2_combout\)))) # (!\inst|acc~5_combout\ & (((\inst|acc~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RESULT~2_combout\,
	datab => \inst|acc~5_combout\,
	datac => \inst|Add3~10_combout\,
	datad => \inst|acc~19_combout\,
	combout => \inst|acc~20_combout\);

-- Location: LCCOMB_X14_Y9_N18
\inst|acc~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~21_combout\ = (\inst|acc~15_combout\ & (\inst|acc~50_combout\)) # (!\inst|acc~15_combout\ & ((\inst|acc~50_combout\ & ((\inst|acc~20_combout\))) # (!\inst|acc~50_combout\ & (\inst|acc~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc~15_combout\,
	datab => \inst|acc~50_combout\,
	datac => \inst|acc~6_combout\,
	datad => \inst|acc~20_combout\,
	combout => \inst|acc~21_combout\);

-- Location: LCCOMB_X14_Y9_N12
\inst|acc~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~22_combout\ = (\inst|acc~15_combout\ & ((\inst|acc~21_combout\ & ((\inst|Add4~10_combout\))) # (!\inst|acc~21_combout\ & (\inst|acc~18_combout\)))) # (!\inst|acc~15_combout\ & (((\inst|acc~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc~18_combout\,
	datab => \inst|Add4~10_combout\,
	datac => \inst|acc~15_combout\,
	datad => \inst|acc~21_combout\,
	combout => \inst|acc~22_combout\);

-- Location: FF_X14_Y9_N29
\inst|acc_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst|acc~22_combout\,
	sload => VCC,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|acc_out\(5));

-- Location: LCCOMB_X19_Y10_N14
\inst|sysbus~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sysbus~47_combout\ = (\inst|Mux1~1_combout\) # ((\inst|Mux8~0_combout\ & !\inst|add_r\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux8~0_combout\,
	datac => \inst|add_r\(3),
	datad => \inst|Mux1~1_combout\,
	combout => \inst|sysbus~47_combout\);

-- Location: LCCOMB_X19_Y10_N12
\inst|sysbus~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sysbus~46_combout\ = (\inst|Mux3~1_combout\ & (((!\inst|add_r\(3) & \inst|Mux8~0_combout\)) # (!\inst|Mux1~1_combout\))) # (!\inst|Mux3~1_combout\ & (((!\inst|add_r\(3) & \inst|Mux8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux3~1_combout\,
	datab => \inst|Mux1~1_combout\,
	datac => \inst|add_r\(3),
	datad => \inst|Mux8~0_combout\,
	combout => \inst|sysbus~46_combout\);

-- Location: LCCOMB_X19_Y10_N18
\inst|sysbus~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sysbus~37_combout\ = (\inst|sysbus~47_combout\ & ((\inst|sysbus~46_combout\ & ((\inst|mdr\(5)))) # (!\inst|sysbus~46_combout\ & (\inst|rrr\(5))))) # (!\inst|sysbus~47_combout\ & (((\inst|sysbus~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|rrr\(5),
	datab => \inst|mdr\(5),
	datac => \inst|sysbus~47_combout\,
	datad => \inst|sysbus~46_combout\,
	combout => \inst|sysbus~37_combout\);

-- Location: FF_X19_Y10_N31
\inst|sysbus[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|sysbus~38_combout\,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sysbus\(5));

-- Location: LCCOMB_X19_Y10_N28
\inst|sysbus~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sysbus~36_combout\ = (!\inst|sysbus~47_combout\ & ((\inst|sysbus~46_combout\) # ((!\inst|Mux5~0_combout\ & !\inst|Mux11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sysbus~46_combout\,
	datab => \inst|Mux5~0_combout\,
	datac => \inst|sysbus~47_combout\,
	datad => \inst|Mux11~0_combout\,
	combout => \inst|sysbus~36_combout\);

-- Location: LCCOMB_X19_Y10_N30
\inst|sysbus~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sysbus~38_combout\ = (\inst|sysbus~37_combout\ & ((\inst|acc_out\(5)) # ((!\inst|sysbus~36_combout\)))) # (!\inst|sysbus~37_combout\ & (((\inst|sysbus\(5) & \inst|sysbus~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc_out\(5),
	datab => \inst|sysbus~37_combout\,
	datac => \inst|sysbus\(5),
	datad => \inst|sysbus~36_combout\,
	combout => \inst|sysbus~38_combout\);

-- Location: LCCOMB_X18_Y10_N22
\inst|mdr~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|mdr~7_combout\ = (\inst|sysbus~38_combout\ & \inst|Mux9~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|sysbus~38_combout\,
	datad => \inst|Mux9~0_combout\,
	combout => \inst|mdr~7_combout\);

-- Location: FF_X18_Y10_N23
\inst|mdr[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|mdr~7_combout\,
	ena => \inst|mdr[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mdr\(5));

-- Location: LCCOMB_X16_Y9_N6
\inst|op[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|op[0]~feeder_combout\ = \inst|mdr\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|mdr\(5),
	combout => \inst|op[0]~feeder_combout\);

-- Location: FF_X16_Y9_N7
\inst|op[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|op[0]~feeder_combout\,
	ena => \inst|ir_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|op\(0));

-- Location: LCCOMB_X17_Y11_N28
\inst|Mux19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux19~1_combout\ = (\inst|add_r\(2) & (((\inst|add_r\(1) & !\inst|add_r\(3))) # (!\inst|add_r\(0)))) # (!\inst|add_r\(2) & ((\inst|add_r\(1) & (\inst|add_r\(3))) # (!\inst|add_r\(1) & ((\inst|add_r\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101100111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|add_r\(2),
	datab => \inst|add_r\(1),
	datac => \inst|add_r\(3),
	datad => \inst|add_r\(0),
	combout => \inst|Mux19~1_combout\);

-- Location: LCCOMB_X17_Y11_N18
\inst|Mux19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux19~0_combout\ = (!\inst|add_r\(3) & (!\inst|add_r\(0) & ((\inst|add_r\(2)) # (\inst|add_r\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|add_r\(2),
	datab => \inst|add_r\(1),
	datac => \inst|add_r\(3),
	datad => \inst|add_r\(0),
	combout => \inst|Mux19~0_combout\);

-- Location: LCCOMB_X17_Y11_N12
\inst|Mux19~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux19~2_combout\ = (\inst|add_r\(4) & ((\inst|Mux19~0_combout\))) # (!\inst|add_r\(4) & (!\inst|Mux19~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux19~1_combout\,
	datac => \inst|add_r\(4),
	datad => \inst|Mux19~0_combout\,
	combout => \inst|Mux19~2_combout\);

-- Location: LCCOMB_X16_Y9_N26
\inst|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~1_combout\ = (\inst|Mux18~1_combout\ & (\inst|Mux19~2_combout\ & (\inst|Mux15~1_combout\ & \inst|Mux16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux18~1_combout\,
	datab => \inst|Mux19~2_combout\,
	datac => \inst|Mux15~1_combout\,
	datad => \inst|Mux16~1_combout\,
	combout => \inst|Equal1~1_combout\);

-- Location: LCCOMB_X16_Y9_N14
\inst|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal3~0_combout\ = (!\inst|Mux18~1_combout\ & (\inst|Mux17~2_combout\ & (\inst|Equal1~0_combout\ & !\inst|Mux19~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux18~1_combout\,
	datab => \inst|Mux17~2_combout\,
	datac => \inst|Equal1~0_combout\,
	datad => \inst|Mux19~2_combout\,
	combout => \inst|Equal3~0_combout\);

-- Location: LCCOMB_X13_Y10_N22
\inst|acc_out[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc_out[6]~feeder_combout\ = \inst|acc~27_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|acc~27_combout\,
	combout => \inst|acc_out[6]~feeder_combout\);

-- Location: FF_X13_Y10_N23
\inst|acc_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|acc_out[6]~feeder_combout\,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|acc_out\(6));

-- Location: FF_X19_Y10_N17
\inst|sysbus[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|sysbus~42_combout\,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sysbus\(6));

-- Location: LCCOMB_X18_Y9_N8
\inst|sysbus~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sysbus~40_combout\ = (\inst|Mux8~0_combout\ & ((\inst|add_r\(3) & ((\inst|acc_out\(6)))) # (!\inst|add_r\(3) & (\inst|mdr\(6))))) # (!\inst|Mux8~0_combout\ & (((\inst|acc_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mdr\(6),
	datab => \inst|Mux8~0_combout\,
	datac => \inst|acc_out\(6),
	datad => \inst|add_r\(3),
	combout => \inst|sysbus~40_combout\);

-- Location: FF_X18_Y9_N9
\inst|rrr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|sysbus~40_combout\,
	ena => \inst|rrr[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|rrr\(6));

-- Location: LCCOMB_X19_Y10_N6
\inst|sysbus~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sysbus~41_combout\ = (\inst|sysbus~47_combout\ & ((\inst|sysbus~46_combout\ & ((\inst|mdr\(6)))) # (!\inst|sysbus~46_combout\ & (\inst|rrr\(6))))) # (!\inst|sysbus~47_combout\ & (((\inst|sysbus~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|rrr\(6),
	datab => \inst|sysbus~47_combout\,
	datac => \inst|mdr\(6),
	datad => \inst|sysbus~46_combout\,
	combout => \inst|sysbus~41_combout\);

-- Location: LCCOMB_X19_Y10_N16
\inst|sysbus~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sysbus~42_combout\ = (\inst|sysbus~36_combout\ & ((\inst|sysbus~41_combout\ & (\inst|acc_out\(6))) # (!\inst|sysbus~41_combout\ & ((\inst|sysbus\(6)))))) # (!\inst|sysbus~36_combout\ & (((\inst|sysbus~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc_out\(6),
	datab => \inst|sysbus~36_combout\,
	datac => \inst|sysbus\(6),
	datad => \inst|sysbus~41_combout\,
	combout => \inst|sysbus~42_combout\);

-- Location: LCCOMB_X18_Y10_N26
\inst|mdr~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|mdr~8_combout\ = (\inst|Mux9~0_combout\ & \inst|sysbus~42_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux9~0_combout\,
	datad => \inst|sysbus~42_combout\,
	combout => \inst|mdr~8_combout\);

-- Location: FF_X18_Y10_N27
\inst|mdr[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|mdr~8_combout\,
	ena => \inst|mdr[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mdr\(6));

-- Location: LCCOMB_X13_Y9_N30
\inst|acc~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~23_combout\ = (\inst|Mux4~1_combout\ & ((\inst|mdr\(6)))) # (!\inst|Mux4~1_combout\ & (\inst|acc_out\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux4~1_combout\,
	datab => \inst|acc_out\(6),
	datac => \inst|mdr\(6),
	combout => \inst|acc~23_combout\);

-- Location: LCCOMB_X13_Y10_N0
\inst|acc~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~26_combout\ = (\inst|acc~50_combout\ & (((\inst|acc~15_combout\)))) # (!\inst|acc~50_combout\ & ((\inst|acc~15_combout\ & (\inst|acc~23_combout\)) # (!\inst|acc~15_combout\ & ((\inst|acc~18_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc~23_combout\,
	datab => \inst|acc~50_combout\,
	datac => \inst|acc~18_combout\,
	datad => \inst|acc~15_combout\,
	combout => \inst|acc~26_combout\);

-- Location: LCCOMB_X14_Y10_N12
\inst|Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~12_combout\ = ((\inst|acc~23_combout\ $ (\inst|rrr\(6) $ (!\inst|Add4~11\)))) # (GND)
-- \inst|Add4~13\ = CARRY((\inst|acc~23_combout\ & ((\inst|rrr\(6)) # (!\inst|Add4~11\))) # (!\inst|acc~23_combout\ & (\inst|rrr\(6) & !\inst|Add4~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc~23_combout\,
	datab => \inst|rrr\(6),
	datad => VCC,
	cin => \inst|Add4~11\,
	combout => \inst|Add4~12_combout\,
	cout => \inst|Add4~13\);

-- Location: LCCOMB_X13_Y10_N4
\inst|RESULT~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RESULT~4_combout\ = (\inst|rrr\(6) & ((\inst|Mux4~1_combout\ & ((\inst|mdr\(6)))) # (!\inst|Mux4~1_combout\ & (\inst|acc_out\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc_out\(6),
	datab => \inst|mdr\(6),
	datac => \inst|rrr\(6),
	datad => \inst|Mux4~1_combout\,
	combout => \inst|RESULT~4_combout\);

-- Location: LCCOMB_X14_Y10_N28
\inst|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~12_combout\ = ((\inst|acc~23_combout\ $ (\inst|mdr\(6) $ (\inst|Add3~11\)))) # (GND)
-- \inst|Add3~13\ = CARRY((\inst|acc~23_combout\ & ((!\inst|Add3~11\) # (!\inst|mdr\(6)))) # (!\inst|acc~23_combout\ & (!\inst|mdr\(6) & !\inst|Add3~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc~23_combout\,
	datab => \inst|mdr\(6),
	datad => VCC,
	cin => \inst|Add3~11\,
	combout => \inst|Add3~12_combout\,
	cout => \inst|Add3~13\);

-- Location: LCCOMB_X13_Y10_N26
\inst|RESULT~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RESULT~5_combout\ = (\inst|mdr\(6) & ((\inst|Mux4~1_combout\) # (\inst|acc_out\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux4~1_combout\,
	datac => \inst|acc_out\(6),
	datad => \inst|mdr\(6),
	combout => \inst|RESULT~5_combout\);

-- Location: LCCOMB_X12_Y9_N24
\inst|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~12_combout\ = ((\inst|acc~23_combout\ $ (\inst|mdr\(6) $ (!\inst|Add2~11\)))) # (GND)
-- \inst|Add2~13\ = CARRY((\inst|acc~23_combout\ & ((\inst|mdr\(6)) # (!\inst|Add2~11\))) # (!\inst|acc~23_combout\ & (\inst|mdr\(6) & !\inst|Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc~23_combout\,
	datab => \inst|mdr\(6),
	datad => VCC,
	cin => \inst|Add2~11\,
	combout => \inst|Add2~12_combout\,
	cout => \inst|Add2~13\);

-- Location: LCCOMB_X13_Y10_N16
\inst|acc~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~24_combout\ = (\inst|acc~5_combout\ & ((\inst|acc~4_combout\) # ((\inst|RESULT~5_combout\)))) # (!\inst|acc~5_combout\ & (!\inst|acc~4_combout\ & ((\inst|Add2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc~5_combout\,
	datab => \inst|acc~4_combout\,
	datac => \inst|RESULT~5_combout\,
	datad => \inst|Add2~12_combout\,
	combout => \inst|acc~24_combout\);

-- Location: LCCOMB_X13_Y10_N2
\inst|acc~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~25_combout\ = (\inst|acc~4_combout\ & ((\inst|acc~24_combout\ & ((\inst|Add3~12_combout\))) # (!\inst|acc~24_combout\ & (\inst|RESULT~4_combout\)))) # (!\inst|acc~4_combout\ & (((\inst|acc~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RESULT~4_combout\,
	datab => \inst|Add3~12_combout\,
	datac => \inst|acc~4_combout\,
	datad => \inst|acc~24_combout\,
	combout => \inst|acc~25_combout\);

-- Location: LCCOMB_X13_Y10_N6
\inst|acc~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~27_combout\ = (\inst|acc~26_combout\ & (((\inst|Add4~12_combout\)) # (!\inst|acc~50_combout\))) # (!\inst|acc~26_combout\ & (\inst|acc~50_combout\ & ((\inst|acc~25_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc~26_combout\,
	datab => \inst|acc~50_combout\,
	datac => \inst|Add4~12_combout\,
	datad => \inst|acc~25_combout\,
	combout => \inst|acc~27_combout\);

-- Location: LCCOMB_X14_Y9_N30
\inst|Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~1_combout\ = (!\inst|acc~17_combout\ & !\inst|acc~22_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|acc~17_combout\,
	datad => \inst|acc~22_combout\,
	combout => \inst|Equal5~1_combout\);

-- Location: LCCOMB_X19_Y10_N10
\inst|sysbus~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sysbus~43_combout\ = (\inst|sysbus~47_combout\ & ((\inst|sysbus~46_combout\ & ((\inst|mdr\(7)))) # (!\inst|sysbus~46_combout\ & (\inst|rrr\(7))))) # (!\inst|sysbus~47_combout\ & (((\inst|sysbus~46_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|rrr\(7),
	datab => \inst|mdr\(7),
	datac => \inst|sysbus~47_combout\,
	datad => \inst|sysbus~46_combout\,
	combout => \inst|sysbus~43_combout\);

-- Location: FF_X13_Y9_N21
\inst|acc_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|acc~32_combout\,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|acc_out\(7));

-- Location: FF_X19_Y10_N5
\inst|sysbus[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|sysbus~44_combout\,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|sysbus\(7));

-- Location: LCCOMB_X19_Y10_N4
\inst|sysbus~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sysbus~44_combout\ = (\inst|sysbus~43_combout\ & ((\inst|acc_out\(7)) # ((!\inst|sysbus~36_combout\)))) # (!\inst|sysbus~43_combout\ & (((\inst|sysbus\(7) & \inst|sysbus~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|sysbus~43_combout\,
	datab => \inst|acc_out\(7),
	datac => \inst|sysbus\(7),
	datad => \inst|sysbus~36_combout\,
	combout => \inst|sysbus~44_combout\);

-- Location: LCCOMB_X18_Y10_N24
\inst|mdr~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|mdr~9_combout\ = (\inst|Mux9~0_combout\ & \inst|sysbus~44_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux9~0_combout\,
	datad => \inst|sysbus~44_combout\,
	combout => \inst|mdr~9_combout\);

-- Location: FF_X18_Y10_N25
\inst|mdr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|mdr~9_combout\,
	ena => \inst|mdr[2]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|mdr\(7));

-- Location: LCCOMB_X18_Y9_N10
\inst|sysbus~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|sysbus~45_combout\ = (\inst|Mux8~0_combout\ & ((\inst|add_r\(3) & ((\inst|acc_out\(7)))) # (!\inst|add_r\(3) & (\inst|mdr\(7))))) # (!\inst|Mux8~0_combout\ & (((\inst|acc_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|mdr\(7),
	datab => \inst|Mux8~0_combout\,
	datac => \inst|add_r\(3),
	datad => \inst|acc_out\(7),
	combout => \inst|sysbus~45_combout\);

-- Location: FF_X18_Y9_N11
\inst|rrr[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|sysbus~45_combout\,
	ena => \inst|rrr[3]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|rrr\(7));

-- Location: LCCOMB_X12_Y9_N0
\inst|acc~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~28_combout\ = (\inst|Mux4~1_combout\ & ((\inst|mdr\(7)))) # (!\inst|Mux4~1_combout\ & (\inst|acc_out\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc_out\(7),
	datac => \inst|mdr\(7),
	datad => \inst|Mux4~1_combout\,
	combout => \inst|acc~28_combout\);

-- Location: LCCOMB_X14_Y10_N14
\inst|Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add4~14_combout\ = \inst|rrr\(7) $ (\inst|Add4~13\ $ (\inst|acc~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|rrr\(7),
	datad => \inst|acc~28_combout\,
	cin => \inst|Add4~13\,
	combout => \inst|Add4~14_combout\);

-- Location: LCCOMB_X12_Y9_N10
\inst|RESULT~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RESULT~6_combout\ = (\inst|mdr\(7) & ((\inst|acc_out\(7)) # (\inst|Mux4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc_out\(7),
	datac => \inst|mdr\(7),
	datad => \inst|Mux4~1_combout\,
	combout => \inst|RESULT~6_combout\);

-- Location: LCCOMB_X14_Y10_N30
\inst|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add3~14_combout\ = \inst|mdr\(7) $ (\inst|Add3~13\ $ (!\inst|acc~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|mdr\(7),
	datad => \inst|acc~28_combout\,
	cin => \inst|Add3~13\,
	combout => \inst|Add3~14_combout\);

-- Location: LCCOMB_X18_Y9_N16
\inst|RESULT~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|RESULT~7_combout\ = (\inst|rrr\(7) & ((\inst|Mux4~1_combout\ & ((\inst|mdr\(7)))) # (!\inst|Mux4~1_combout\ & (\inst|acc_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|rrr\(7),
	datab => \inst|acc_out\(7),
	datac => \inst|Mux4~1_combout\,
	datad => \inst|mdr\(7),
	combout => \inst|RESULT~7_combout\);

-- Location: LCCOMB_X12_Y9_N26
\inst|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add2~14_combout\ = \inst|mdr\(7) $ (\inst|Add2~13\ $ (\inst|acc~28_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|mdr\(7),
	datad => \inst|acc~28_combout\,
	cin => \inst|Add2~13\,
	combout => \inst|Add2~14_combout\);

-- Location: LCCOMB_X13_Y9_N24
\inst|acc~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~29_combout\ = (\inst|acc~4_combout\ & ((\inst|RESULT~7_combout\) # ((\inst|acc~5_combout\)))) # (!\inst|acc~4_combout\ & (((\inst|Add2~14_combout\ & !\inst|acc~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc~4_combout\,
	datab => \inst|RESULT~7_combout\,
	datac => \inst|Add2~14_combout\,
	datad => \inst|acc~5_combout\,
	combout => \inst|acc~29_combout\);

-- Location: LCCOMB_X13_Y9_N18
\inst|acc~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~30_combout\ = (\inst|acc~5_combout\ & ((\inst|acc~29_combout\ & ((\inst|Add3~14_combout\))) # (!\inst|acc~29_combout\ & (\inst|RESULT~6_combout\)))) # (!\inst|acc~5_combout\ & (((\inst|acc~29_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|RESULT~6_combout\,
	datab => \inst|acc~5_combout\,
	datac => \inst|Add3~14_combout\,
	datad => \inst|acc~29_combout\,
	combout => \inst|acc~30_combout\);

-- Location: LCCOMB_X13_Y9_N16
\inst|acc~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~31_combout\ = (\inst|acc~15_combout\ & (\inst|acc~50_combout\)) # (!\inst|acc~15_combout\ & ((\inst|acc~50_combout\ & ((\inst|acc~30_combout\))) # (!\inst|acc~50_combout\ & (\inst|acc~23_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc~15_combout\,
	datab => \inst|acc~50_combout\,
	datac => \inst|acc~23_combout\,
	datad => \inst|acc~30_combout\,
	combout => \inst|acc~31_combout\);

-- Location: LCCOMB_X13_Y9_N20
\inst|acc~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|acc~32_combout\ = (\inst|acc~15_combout\ & ((\inst|acc~31_combout\ & (\inst|Add4~14_combout\)) # (!\inst|acc~31_combout\ & ((\inst|acc~28_combout\))))) # (!\inst|acc~15_combout\ & (((\inst|acc~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc~15_combout\,
	datab => \inst|Add4~14_combout\,
	datac => \inst|acc~28_combout\,
	datad => \inst|acc~31_combout\,
	combout => \inst|acc~32_combout\);

-- Location: LCCOMB_X13_Y9_N14
\inst|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~0_combout\ = (!\inst|acc~41_combout\ & (!\inst|acc~49_combout\ & (!\inst|acc~45_combout\ & !\inst|acc~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc~41_combout\,
	datab => \inst|acc~49_combout\,
	datac => \inst|acc~45_combout\,
	datad => \inst|acc~32_combout\,
	combout => \inst|Equal5~0_combout\);

-- Location: LCCOMB_X14_Y9_N4
\inst|Equal5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal5~2_combout\ = (!\inst|acc~27_combout\ & (!\inst|acc~51_combout\ & (\inst|Equal5~1_combout\ & \inst|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc~27_combout\,
	datab => \inst|acc~51_combout\,
	datac => \inst|Equal5~1_combout\,
	datad => \inst|Equal5~0_combout\,
	combout => \inst|Equal5~2_combout\);

-- Location: FF_X14_Y9_N5
\inst|z_flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Equal5~2_combout\,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|z_flag~q\);

-- Location: LCCOMB_X16_Y9_N10
\inst|add_r~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|add_r~11_combout\ = (\inst|Equal3~0_combout\) # ((\inst|Equal4~0_combout\ & (\inst|z_flag~q\)) # (!\inst|Equal4~0_combout\ & ((\inst|Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal4~0_combout\,
	datab => \inst|Equal3~0_combout\,
	datac => \inst|z_flag~q\,
	datad => \inst|Mux19~2_combout\,
	combout => \inst|add_r~11_combout\);

-- Location: LCCOMB_X16_Y9_N28
\inst|add_r~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|add_r~12_combout\ = (\inst|Equal1~1_combout\ & (\inst|ir_out\(0) & (!\inst|Mux17~2_combout\))) # (!\inst|Equal1~1_combout\ & (((\inst|add_r~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ir_out\(0),
	datab => \inst|Mux17~2_combout\,
	datac => \inst|Equal1~1_combout\,
	datad => \inst|add_r~11_combout\,
	combout => \inst|add_r~12_combout\);

-- Location: LCCOMB_X17_Y9_N4
\inst|add_r~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|add_r~13_combout\ = (\inst|add_r~12_combout\) # ((\inst|Mux17~2_combout\ & (\inst|op\(0) & \inst|Equal1~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux17~2_combout\,
	datab => \inst|op\(0),
	datac => \inst|Equal1~1_combout\,
	datad => \inst|add_r~12_combout\,
	combout => \inst|add_r~13_combout\);

-- Location: FF_X17_Y9_N27
\inst|add_r[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst|add_r~13_combout\,
	sload => VCC,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|add_r\(0));

-- Location: LCCOMB_X17_Y11_N22
\inst|Mux16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux16~0_combout\ = (\inst|add_r\(1) & (!\inst|add_r\(2) & (!\inst|add_r\(3) & \inst|add_r\(0)))) # (!\inst|add_r\(1) & (\inst|add_r\(3) & ((\inst|add_r\(0)) # (!\inst|add_r\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|add_r\(2),
	datab => \inst|add_r\(1),
	datac => \inst|add_r\(3),
	datad => \inst|add_r\(0),
	combout => \inst|Mux16~0_combout\);

-- Location: LCCOMB_X17_Y11_N8
\inst|Mux16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux16~1_combout\ = (\inst|add_r\(4) & (((\inst|Mux4~0_combout\ & \inst|add_r\(2))))) # (!\inst|add_r\(4) & (\inst|Mux16~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux16~0_combout\,
	datab => \inst|Mux4~0_combout\,
	datac => \inst|add_r\(4),
	datad => \inst|add_r\(2),
	combout => \inst|Mux16~1_combout\);

-- Location: LCCOMB_X17_Y11_N20
\inst|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal1~0_combout\ = (\inst|Mux16~1_combout\ & ((\inst|add_r\(4) & ((\inst|Mux19~0_combout\))) # (!\inst|add_r\(4) & (\inst|Mux15~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|add_r\(4),
	datab => \inst|Mux15~0_combout\,
	datac => \inst|Mux16~1_combout\,
	datad => \inst|Mux19~0_combout\,
	combout => \inst|Equal1~0_combout\);

-- Location: LCCOMB_X16_Y9_N4
\inst|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal4~0_combout\ = (!\inst|Mux18~1_combout\ & (\inst|Mux17~2_combout\ & (\inst|Equal1~0_combout\ & \inst|Mux19~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux18~1_combout\,
	datab => \inst|Mux17~2_combout\,
	datac => \inst|Equal1~0_combout\,
	datad => \inst|Mux19~2_combout\,
	combout => \inst|Equal4~0_combout\);

-- Location: LCCOMB_X16_Y9_N8
\inst|add_r~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|add_r~2_combout\ = (!\inst|Equal3~0_combout\ & ((\inst|Equal4~0_combout\ & (!\inst|z_flag~q\)) # (!\inst|Equal4~0_combout\ & ((\inst|Mux16~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Equal4~0_combout\,
	datab => \inst|Equal3~0_combout\,
	datac => \inst|z_flag~q\,
	datad => \inst|Mux16~1_combout\,
	combout => \inst|add_r~2_combout\);

-- Location: LCCOMB_X18_Y9_N28
\inst|Mux17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux17~0_combout\ = (\inst|add_r\(4) & (!\inst|add_r\(3) & (\inst|add_r\(2) & !\inst|add_r\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|add_r\(4),
	datab => \inst|add_r\(3),
	datac => \inst|add_r\(2),
	datad => \inst|add_r\(0),
	combout => \inst|Mux17~0_combout\);

-- Location: LCCOMB_X17_Y9_N10
\inst|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal2~2_combout\ = (\inst|Equal1~1_combout\ & (!\inst|Mux17~0_combout\ & ((\inst|add_r\(4)) # (!\inst|Mux17~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux17~1_combout\,
	datab => \inst|add_r\(4),
	datac => \inst|Equal1~1_combout\,
	datad => \inst|Mux17~0_combout\,
	combout => \inst|Equal2~2_combout\);

-- Location: LCCOMB_X17_Y9_N14
\inst|add_r~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|add_r~3_combout\ = (!\inst|Equal2~2_combout\ & ((\inst|add_r~2_combout\) # ((!\inst|ir_out\(0) & \inst|Equal3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|add_r~2_combout\,
	datab => \inst|ir_out\(0),
	datac => \inst|Equal3~0_combout\,
	datad => \inst|Equal2~2_combout\,
	combout => \inst|add_r~3_combout\);

-- Location: LCCOMB_X17_Y9_N8
\inst|add_r[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|add_r[3]~feeder_combout\ = \inst|add_r~3_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|add_r~3_combout\,
	combout => \inst|add_r[3]~feeder_combout\);

-- Location: FF_X17_Y9_N9
\inst|add_r[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|add_r[3]~feeder_combout\,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|add_r\(3));

-- Location: LCCOMB_X17_Y9_N2
\inst|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux4~0_combout\ = (!\inst|add_r\(3) & (!\inst|add_r\(0) & \inst|add_r\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|add_r\(3),
	datac => \inst|add_r\(0),
	datad => \inst|add_r\(1),
	combout => \inst|Mux4~0_combout\);

-- Location: LCCOMB_X17_Y11_N30
\inst|Mux18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux18~0_combout\ = (\inst|add_r\(2) & (!\inst|add_r\(1) & ((!\inst|add_r\(0)) # (!\inst|add_r\(3))))) # (!\inst|add_r\(2) & ((\inst|add_r\(3) & ((!\inst|add_r\(0)))) # (!\inst|add_r\(3) & ((\inst|add_r\(1)) # (\inst|add_r\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011101110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|add_r\(2),
	datab => \inst|add_r\(1),
	datac => \inst|add_r\(3),
	datad => \inst|add_r\(0),
	combout => \inst|Mux18~0_combout\);

-- Location: LCCOMB_X17_Y11_N24
\inst|Mux18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux18~1_combout\ = (\inst|add_r\(4) & (!\inst|add_r\(2) & (\inst|Mux4~0_combout\))) # (!\inst|add_r\(4) & (((\inst|Mux18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|add_r\(2),
	datab => \inst|Mux4~0_combout\,
	datac => \inst|Mux18~0_combout\,
	datad => \inst|add_r\(4),
	combout => \inst|Mux18~1_combout\);

-- Location: LCCOMB_X16_Y9_N16
\inst|add_r~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|add_r~4_combout\ = (\inst|Equal1~0_combout\ & ((\inst|Mux18~1_combout\ & ((\inst|Mux19~2_combout\))) # (!\inst|Mux18~1_combout\ & (\inst|Mux17~2_combout\ & !\inst|Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux18~1_combout\,
	datab => \inst|Mux17~2_combout\,
	datac => \inst|Equal1~0_combout\,
	datad => \inst|Mux19~2_combout\,
	combout => \inst|add_r~4_combout\);

-- Location: LCCOMB_X16_Y9_N24
\inst|add_r~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|add_r~5_combout\ = (\inst|Mux17~2_combout\ & (\inst|Equal1~0_combout\ & (\inst|Mux18~1_combout\ $ (!\inst|Mux19~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux18~1_combout\,
	datab => \inst|Mux17~2_combout\,
	datac => \inst|Equal1~0_combout\,
	datad => \inst|Mux19~2_combout\,
	combout => \inst|add_r~5_combout\);

-- Location: FF_X16_Y9_N21
\inst|op[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst|mdr\(6),
	sload => VCC,
	ena => \inst|ir_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|op\(1));

-- Location: LCCOMB_X16_Y9_N18
\inst|add_r~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|add_r~6_combout\ = (\inst|Mux17~2_combout\ & (\inst|Equal1~0_combout\ & \inst|Mux19~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux17~2_combout\,
	datac => \inst|Equal1~0_combout\,
	datad => \inst|Mux19~2_combout\,
	combout => \inst|add_r~6_combout\);

-- Location: LCCOMB_X16_Y9_N20
\inst|add_r~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|add_r~9_combout\ = (\inst|add_r~5_combout\ & ((\inst|add_r~6_combout\ & ((\inst|op\(1)))) # (!\inst|add_r~6_combout\ & (!\inst|ir_out\(0))))) # (!\inst|add_r~5_combout\ & (((\inst|add_r~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ir_out\(0),
	datab => \inst|add_r~5_combout\,
	datac => \inst|op\(1),
	datad => \inst|add_r~6_combout\,
	combout => \inst|add_r~9_combout\);

-- Location: LCCOMB_X17_Y9_N28
\inst|add_r~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|add_r~10_combout\ = (\inst|add_r~4_combout\ & (((\inst|add_r~9_combout\)))) # (!\inst|add_r~4_combout\ & ((\inst|add_r~9_combout\ & (\inst|z_flag~q\)) # (!\inst|add_r~9_combout\ & ((\inst|Mux18~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|add_r~4_combout\,
	datab => \inst|z_flag~q\,
	datac => \inst|Mux18~1_combout\,
	datad => \inst|add_r~9_combout\,
	combout => \inst|add_r~10_combout\);

-- Location: LCCOMB_X17_Y9_N16
\inst|add_r[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|add_r[1]~feeder_combout\ = \inst|add_r~10_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|add_r~10_combout\,
	combout => \inst|add_r[1]~feeder_combout\);

-- Location: FF_X17_Y9_N17
\inst|add_r[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|add_r[1]~feeder_combout\,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|add_r\(1));

-- Location: LCCOMB_X18_Y9_N2
\inst|Mux17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux17~1_combout\ = (\inst|add_r\(1) & (\inst|add_r\(0) & (!\inst|add_r\(2)))) # (!\inst|add_r\(1) & (\inst|add_r\(2) $ (((\inst|add_r\(0) & \inst|add_r\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001110001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|add_r\(1),
	datab => \inst|add_r\(0),
	datac => \inst|add_r\(2),
	datad => \inst|add_r\(3),
	combout => \inst|Mux17~1_combout\);

-- Location: LCCOMB_X17_Y9_N12
\inst|Mux17~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux17~2_combout\ = (\inst|Mux17~0_combout\) # ((\inst|Mux17~1_combout\ & !\inst|add_r\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux17~1_combout\,
	datab => \inst|add_r\(4),
	datad => \inst|Mux17~0_combout\,
	combout => \inst|Mux17~2_combout\);

-- Location: FF_X16_Y9_N3
\inst|op[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst|mdr\(7),
	sload => VCC,
	ena => \inst|ir_out[0]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|op\(2));

-- Location: LCCOMB_X16_Y9_N2
\inst|add_r~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|add_r~7_combout\ = (\inst|add_r~5_combout\ & ((\inst|add_r~6_combout\ & ((\inst|op\(2)))) # (!\inst|add_r~6_combout\ & (!\inst|ir_out\(0))))) # (!\inst|add_r~5_combout\ & (((!\inst|add_r~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000001110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|ir_out\(0),
	datab => \inst|add_r~5_combout\,
	datac => \inst|op\(2),
	datad => \inst|add_r~6_combout\,
	combout => \inst|add_r~7_combout\);

-- Location: LCCOMB_X17_Y9_N22
\inst|add_r~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|add_r~8_combout\ = (\inst|add_r~4_combout\ & (((\inst|add_r~7_combout\)))) # (!\inst|add_r~4_combout\ & ((\inst|add_r~7_combout\ & (\inst|Mux17~2_combout\)) # (!\inst|add_r~7_combout\ & ((\inst|z_flag~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux17~2_combout\,
	datab => \inst|z_flag~q\,
	datac => \inst|add_r~4_combout\,
	datad => \inst|add_r~7_combout\,
	combout => \inst|add_r~8_combout\);

-- Location: FF_X17_Y9_N23
\inst|add_r[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|add_r~8_combout\,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|add_r\(2));

-- Location: LCCOMB_X17_Y11_N16
\inst|Mux15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~0_combout\ = (\inst|add_r\(2) & (\inst|add_r\(3) & ((\inst|add_r\(0)) # (!\inst|add_r\(1))))) # (!\inst|add_r\(2) & ((\inst|add_r\(3)) # ((\inst|add_r\(1) & \inst|add_r\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|add_r\(2),
	datab => \inst|add_r\(1),
	datac => \inst|add_r\(3),
	datad => \inst|add_r\(0),
	combout => \inst|Mux15~0_combout\);

-- Location: LCCOMB_X17_Y11_N14
\inst|Mux15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux15~1_combout\ = (\inst|add_r\(4) & ((\inst|Mux19~0_combout\))) # (!\inst|add_r\(4) & (\inst|Mux15~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux15~0_combout\,
	datac => \inst|add_r\(4),
	datad => \inst|Mux19~0_combout\,
	combout => \inst|Mux15~1_combout\);

-- Location: LCCOMB_X17_Y11_N2
\inst|add_r~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|add_r~0_combout\ = (\inst|Mux19~2_combout\ & (((\inst|Mux18~1_combout\)))) # (!\inst|Mux19~2_combout\ & (!\inst|ir_out\(0) & (!\inst|Mux18~1_combout\ & \inst|Mux17~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|Mux19~2_combout\,
	datab => \inst|ir_out\(0),
	datac => \inst|Mux18~1_combout\,
	datad => \inst|Mux17~2_combout\,
	combout => \inst|add_r~0_combout\);

-- Location: LCCOMB_X17_Y11_N4
\inst|add_r~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|add_r~1_combout\ = (\inst|Mux15~1_combout\ & ((!\inst|add_r~0_combout\) # (!\inst|Mux16~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Mux15~1_combout\,
	datac => \inst|Mux16~1_combout\,
	datad => \inst|add_r~0_combout\,
	combout => \inst|add_r~1_combout\);

-- Location: FF_X17_Y11_N5
\inst|add_r_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|add_r~1_combout\,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|add_r_out\(4));

-- Location: FF_X17_Y9_N25
\inst|add_r_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst|add_r~3_combout\,
	sload => VCC,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|add_r_out\(3));

-- Location: FF_X17_Y9_N7
\inst|add_r_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst|add_r~8_combout\,
	sload => VCC,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|add_r_out\(2));

-- Location: FF_X17_Y9_N29
\inst|add_r_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|add_r~10_combout\,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|add_r_out\(1));

-- Location: FF_X17_Y9_N31
\inst|add_r_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst|add_r~13_combout\,
	sload => VCC,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|add_r_out\(0));

-- Location: LCCOMB_X18_Y8_N24
\inst9|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Mux0~0_combout\ = (\inst|acc_out\(0) & ((\inst|acc_out\(3)) # (\inst|acc_out\(2) $ (\inst|acc_out\(1))))) # (!\inst|acc_out\(0) & ((\inst|acc_out\(1)) # (\inst|acc_out\(2) $ (\inst|acc_out\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc_out\(0),
	datab => \inst|acc_out\(2),
	datac => \inst|acc_out\(3),
	datad => \inst|acc_out\(1),
	combout => \inst9|Mux0~0_combout\);

-- Location: FF_X10_Y1_N1
\inst8|scan:count[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|scan:count[15]~q\);

-- Location: LCCOMB_X10_Y2_N2
\inst8|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~0_combout\ = \inst8|scan:count[0]~q\ $ (VCC)
-- \inst8|Add0~1\ = CARRY(\inst8|scan:count[0]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|scan:count[0]~q\,
	datad => VCC,
	combout => \inst8|Add0~0_combout\,
	cout => \inst8|Add0~1\);

-- Location: FF_X10_Y2_N3
\inst8|scan:count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|scan:count[0]~q\);

-- Location: LCCOMB_X10_Y2_N4
\inst8|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~2_combout\ = (\inst8|scan:count[1]~q\ & (!\inst8|Add0~1\)) # (!\inst8|scan:count[1]~q\ & ((\inst8|Add0~1\) # (GND)))
-- \inst8|Add0~3\ = CARRY((!\inst8|Add0~1\) # (!\inst8|scan:count[1]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|scan:count[1]~q\,
	datad => VCC,
	cin => \inst8|Add0~1\,
	combout => \inst8|Add0~2_combout\,
	cout => \inst8|Add0~3\);

-- Location: FF_X10_Y2_N5
\inst8|scan:count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|scan:count[1]~q\);

-- Location: LCCOMB_X10_Y2_N6
\inst8|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~4_combout\ = (\inst8|scan:count[2]~q\ & (\inst8|Add0~3\ $ (GND))) # (!\inst8|scan:count[2]~q\ & (!\inst8|Add0~3\ & VCC))
-- \inst8|Add0~5\ = CARRY((\inst8|scan:count[2]~q\ & !\inst8|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|scan:count[2]~q\,
	datad => VCC,
	cin => \inst8|Add0~3\,
	combout => \inst8|Add0~4_combout\,
	cout => \inst8|Add0~5\);

-- Location: FF_X10_Y2_N7
\inst8|scan:count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|scan:count[2]~q\);

-- Location: LCCOMB_X10_Y2_N8
\inst8|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~6_combout\ = (\inst8|scan:count[3]~q\ & (!\inst8|Add0~5\)) # (!\inst8|scan:count[3]~q\ & ((\inst8|Add0~5\) # (GND)))
-- \inst8|Add0~7\ = CARRY((!\inst8|Add0~5\) # (!\inst8|scan:count[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|scan:count[3]~q\,
	datad => VCC,
	cin => \inst8|Add0~5\,
	combout => \inst8|Add0~6_combout\,
	cout => \inst8|Add0~7\);

-- Location: FF_X10_Y2_N9
\inst8|scan:count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|scan:count[3]~q\);

-- Location: LCCOMB_X10_Y2_N10
\inst8|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~8_combout\ = (\inst8|scan:count[4]~q\ & (\inst8|Add0~7\ $ (GND))) # (!\inst8|scan:count[4]~q\ & (!\inst8|Add0~7\ & VCC))
-- \inst8|Add0~9\ = CARRY((\inst8|scan:count[4]~q\ & !\inst8|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|scan:count[4]~q\,
	datad => VCC,
	cin => \inst8|Add0~7\,
	combout => \inst8|Add0~8_combout\,
	cout => \inst8|Add0~9\);

-- Location: FF_X10_Y1_N29
\inst8|scan:count[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|scan:count[29]~q\);

-- Location: LCCOMB_X10_Y1_N0
\inst8|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~30_combout\ = (\inst8|scan:count[15]~q\ & (!\inst8|Add0~29\)) # (!\inst8|scan:count[15]~q\ & ((\inst8|Add0~29\) # (GND)))
-- \inst8|Add0~31\ = CARRY((!\inst8|Add0~29\) # (!\inst8|scan:count[15]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|scan:count[15]~q\,
	datad => VCC,
	cin => \inst8|Add0~29\,
	combout => \inst8|Add0~30_combout\,
	cout => \inst8|Add0~31\);

-- Location: LCCOMB_X10_Y1_N2
\inst8|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~32_combout\ = (\inst8|scan:count[16]~q\ & (\inst8|Add0~31\ $ (GND))) # (!\inst8|scan:count[16]~q\ & (!\inst8|Add0~31\ & VCC))
-- \inst8|Add0~33\ = CARRY((\inst8|scan:count[16]~q\ & !\inst8|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|scan:count[16]~q\,
	datad => VCC,
	cin => \inst8|Add0~31\,
	combout => \inst8|Add0~32_combout\,
	cout => \inst8|Add0~33\);

-- Location: FF_X10_Y1_N3
\inst8|scan:count[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|scan:count[16]~q\);

-- Location: LCCOMB_X10_Y1_N4
\inst8|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~34_combout\ = (\inst8|scan:count[17]~q\ & (!\inst8|Add0~33\)) # (!\inst8|scan:count[17]~q\ & ((\inst8|Add0~33\) # (GND)))
-- \inst8|Add0~35\ = CARRY((!\inst8|Add0~33\) # (!\inst8|scan:count[17]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|scan:count[17]~q\,
	datad => VCC,
	cin => \inst8|Add0~33\,
	combout => \inst8|Add0~34_combout\,
	cout => \inst8|Add0~35\);

-- Location: FF_X10_Y1_N5
\inst8|scan:count[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|scan:count[17]~q\);

-- Location: LCCOMB_X10_Y1_N6
\inst8|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~36_combout\ = (\inst8|scan:count[18]~q\ & (\inst8|Add0~35\ $ (GND))) # (!\inst8|scan:count[18]~q\ & (!\inst8|Add0~35\ & VCC))
-- \inst8|Add0~37\ = CARRY((\inst8|scan:count[18]~q\ & !\inst8|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|scan:count[18]~q\,
	datad => VCC,
	cin => \inst8|Add0~35\,
	combout => \inst8|Add0~36_combout\,
	cout => \inst8|Add0~37\);

-- Location: FF_X10_Y1_N7
\inst8|scan:count[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|scan:count[18]~q\);

-- Location: LCCOMB_X10_Y1_N8
\inst8|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~38_combout\ = (\inst8|scan:count[19]~q\ & (!\inst8|Add0~37\)) # (!\inst8|scan:count[19]~q\ & ((\inst8|Add0~37\) # (GND)))
-- \inst8|Add0~39\ = CARRY((!\inst8|Add0~37\) # (!\inst8|scan:count[19]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|scan:count[19]~q\,
	datad => VCC,
	cin => \inst8|Add0~37\,
	combout => \inst8|Add0~38_combout\,
	cout => \inst8|Add0~39\);

-- Location: FF_X10_Y1_N9
\inst8|scan:count[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|scan:count[19]~q\);

-- Location: LCCOMB_X10_Y1_N10
\inst8|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~40_combout\ = (\inst8|scan:count[20]~q\ & (\inst8|Add0~39\ $ (GND))) # (!\inst8|scan:count[20]~q\ & (!\inst8|Add0~39\ & VCC))
-- \inst8|Add0~41\ = CARRY((\inst8|scan:count[20]~q\ & !\inst8|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|scan:count[20]~q\,
	datad => VCC,
	cin => \inst8|Add0~39\,
	combout => \inst8|Add0~40_combout\,
	cout => \inst8|Add0~41\);

-- Location: FF_X10_Y1_N11
\inst8|scan:count[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|scan:count[20]~q\);

-- Location: LCCOMB_X10_Y1_N12
\inst8|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~42_combout\ = (\inst8|scan:count[21]~q\ & (!\inst8|Add0~41\)) # (!\inst8|scan:count[21]~q\ & ((\inst8|Add0~41\) # (GND)))
-- \inst8|Add0~43\ = CARRY((!\inst8|Add0~41\) # (!\inst8|scan:count[21]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|scan:count[21]~q\,
	datad => VCC,
	cin => \inst8|Add0~41\,
	combout => \inst8|Add0~42_combout\,
	cout => \inst8|Add0~43\);

-- Location: FF_X10_Y1_N13
\inst8|scan:count[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|scan:count[21]~q\);

-- Location: LCCOMB_X10_Y1_N14
\inst8|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~44_combout\ = (\inst8|scan:count[22]~q\ & (\inst8|Add0~43\ $ (GND))) # (!\inst8|scan:count[22]~q\ & (!\inst8|Add0~43\ & VCC))
-- \inst8|Add0~45\ = CARRY((\inst8|scan:count[22]~q\ & !\inst8|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|scan:count[22]~q\,
	datad => VCC,
	cin => \inst8|Add0~43\,
	combout => \inst8|Add0~44_combout\,
	cout => \inst8|Add0~45\);

-- Location: FF_X10_Y1_N15
\inst8|scan:count[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|scan:count[22]~q\);

-- Location: LCCOMB_X10_Y1_N16
\inst8|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~46_combout\ = (\inst8|scan:count[23]~q\ & (!\inst8|Add0~45\)) # (!\inst8|scan:count[23]~q\ & ((\inst8|Add0~45\) # (GND)))
-- \inst8|Add0~47\ = CARRY((!\inst8|Add0~45\) # (!\inst8|scan:count[23]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|scan:count[23]~q\,
	datad => VCC,
	cin => \inst8|Add0~45\,
	combout => \inst8|Add0~46_combout\,
	cout => \inst8|Add0~47\);

-- Location: FF_X10_Y1_N17
\inst8|scan:count[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|scan:count[23]~q\);

-- Location: LCCOMB_X10_Y1_N18
\inst8|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~48_combout\ = (\inst8|scan:count[24]~q\ & (\inst8|Add0~47\ $ (GND))) # (!\inst8|scan:count[24]~q\ & (!\inst8|Add0~47\ & VCC))
-- \inst8|Add0~49\ = CARRY((\inst8|scan:count[24]~q\ & !\inst8|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|scan:count[24]~q\,
	datad => VCC,
	cin => \inst8|Add0~47\,
	combout => \inst8|Add0~48_combout\,
	cout => \inst8|Add0~49\);

-- Location: FF_X10_Y1_N19
\inst8|scan:count[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|scan:count[24]~q\);

-- Location: LCCOMB_X10_Y1_N20
\inst8|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~50_combout\ = (\inst8|scan:count[25]~q\ & (!\inst8|Add0~49\)) # (!\inst8|scan:count[25]~q\ & ((\inst8|Add0~49\) # (GND)))
-- \inst8|Add0~51\ = CARRY((!\inst8|Add0~49\) # (!\inst8|scan:count[25]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|scan:count[25]~q\,
	datad => VCC,
	cin => \inst8|Add0~49\,
	combout => \inst8|Add0~50_combout\,
	cout => \inst8|Add0~51\);

-- Location: FF_X10_Y1_N21
\inst8|scan:count[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|scan:count[25]~q\);

-- Location: LCCOMB_X10_Y1_N22
\inst8|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~52_combout\ = (\inst8|scan:count[26]~q\ & (\inst8|Add0~51\ $ (GND))) # (!\inst8|scan:count[26]~q\ & (!\inst8|Add0~51\ & VCC))
-- \inst8|Add0~53\ = CARRY((\inst8|scan:count[26]~q\ & !\inst8|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|scan:count[26]~q\,
	datad => VCC,
	cin => \inst8|Add0~51\,
	combout => \inst8|Add0~52_combout\,
	cout => \inst8|Add0~53\);

-- Location: FF_X10_Y1_N23
\inst8|scan:count[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|scan:count[26]~q\);

-- Location: LCCOMB_X10_Y1_N24
\inst8|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~54_combout\ = (\inst8|scan:count[27]~q\ & (!\inst8|Add0~53\)) # (!\inst8|scan:count[27]~q\ & ((\inst8|Add0~53\) # (GND)))
-- \inst8|Add0~55\ = CARRY((!\inst8|Add0~53\) # (!\inst8|scan:count[27]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|scan:count[27]~q\,
	datad => VCC,
	cin => \inst8|Add0~53\,
	combout => \inst8|Add0~54_combout\,
	cout => \inst8|Add0~55\);

-- Location: FF_X10_Y1_N25
\inst8|scan:count[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|scan:count[27]~q\);

-- Location: LCCOMB_X10_Y1_N26
\inst8|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~56_combout\ = (\inst8|scan:count[28]~q\ & (\inst8|Add0~55\ $ (GND))) # (!\inst8|scan:count[28]~q\ & (!\inst8|Add0~55\ & VCC))
-- \inst8|Add0~57\ = CARRY((\inst8|scan:count[28]~q\ & !\inst8|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|scan:count[28]~q\,
	datad => VCC,
	cin => \inst8|Add0~55\,
	combout => \inst8|Add0~56_combout\,
	cout => \inst8|Add0~57\);

-- Location: FF_X10_Y1_N27
\inst8|scan:count[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|scan:count[28]~q\);

-- Location: LCCOMB_X10_Y1_N28
\inst8|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~58_combout\ = (\inst8|scan:count[29]~q\ & (!\inst8|Add0~57\)) # (!\inst8|scan:count[29]~q\ & ((\inst8|Add0~57\) # (GND)))
-- \inst8|Add0~59\ = CARRY((!\inst8|Add0~57\) # (!\inst8|scan:count[29]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|scan:count[29]~q\,
	datad => VCC,
	cin => \inst8|Add0~57\,
	combout => \inst8|Add0~58_combout\,
	cout => \inst8|Add0~59\);

-- Location: FF_X10_Y1_N31
\inst8|scan:count[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|scan:count[30]~q\);

-- Location: LCCOMB_X10_Y1_N30
\inst8|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~60_combout\ = \inst8|scan:count[30]~q\ $ (!\inst8|Add0~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|scan:count[30]~q\,
	cin => \inst8|Add0~59\,
	combout => \inst8|Add0~60_combout\);

-- Location: LCCOMB_X11_Y2_N6
\inst8|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal0~7_combout\ = (!\inst8|Add0~34_combout\ & (!\inst8|Add0~38_combout\ & (!\inst8|Add0~32_combout\ & !\inst8|Add0~36_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~34_combout\,
	datab => \inst8|Add0~38_combout\,
	datac => \inst8|Add0~32_combout\,
	datad => \inst8|Add0~36_combout\,
	combout => \inst8|Equal0~7_combout\);

-- Location: LCCOMB_X11_Y2_N4
\inst8|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal0~9_combout\ = (!\inst8|Add0~40_combout\ & (!\inst8|Add0~44_combout\ & (!\inst8|Add0~42_combout\ & \inst8|Equal0~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~40_combout\,
	datab => \inst8|Add0~44_combout\,
	datac => \inst8|Add0~42_combout\,
	datad => \inst8|Equal0~7_combout\,
	combout => \inst8|Equal0~9_combout\);

-- Location: LCCOMB_X11_Y2_N2
\inst8|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal0~10_combout\ = (!\inst8|Add0~48_combout\ & (!\inst8|Add0~46_combout\ & (\inst8|Equal0~9_combout\ & \inst8|Equal0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~48_combout\,
	datab => \inst8|Add0~46_combout\,
	datac => \inst8|Equal0~9_combout\,
	datad => \inst8|Equal0~6_combout\,
	combout => \inst8|Equal0~10_combout\);

-- Location: LCCOMB_X11_Y2_N24
\inst8|Equal0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal0~11_combout\ = (!\inst8|Add0~52_combout\ & (!\inst8|Add0~50_combout\ & (!\inst8|Add0~54_combout\ & \inst8|Equal0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~52_combout\,
	datab => \inst8|Add0~50_combout\,
	datac => \inst8|Add0~54_combout\,
	datad => \inst8|Equal0~10_combout\,
	combout => \inst8|Equal0~11_combout\);

-- Location: LCCOMB_X11_Y2_N10
\inst8|Equal0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal0~12_combout\ = (!\inst8|Add0~58_combout\ & (!\inst8|Add0~56_combout\ & (!\inst8|Add0~60_combout\ & \inst8|Equal0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~58_combout\,
	datab => \inst8|Add0~56_combout\,
	datac => \inst8|Add0~60_combout\,
	datad => \inst8|Equal0~11_combout\,
	combout => \inst8|Equal0~12_combout\);

-- Location: LCCOMB_X11_Y2_N30
\inst8|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|count~4_combout\ = (\inst8|Add0~8_combout\ & !\inst8|Equal0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|Add0~8_combout\,
	datad => \inst8|Equal0~12_combout\,
	combout => \inst8|count~4_combout\);

-- Location: FF_X11_Y2_N31
\inst8|scan:count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|count~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|scan:count[4]~q\);

-- Location: LCCOMB_X10_Y2_N12
\inst8|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~10_combout\ = (\inst8|scan:count[5]~q\ & (!\inst8|Add0~9\)) # (!\inst8|scan:count[5]~q\ & ((\inst8|Add0~9\) # (GND)))
-- \inst8|Add0~11\ = CARRY((!\inst8|Add0~9\) # (!\inst8|scan:count[5]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|scan:count[5]~q\,
	datad => VCC,
	cin => \inst8|Add0~9\,
	combout => \inst8|Add0~10_combout\,
	cout => \inst8|Add0~11\);

-- Location: FF_X10_Y2_N13
\inst8|scan:count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|scan:count[5]~q\);

-- Location: LCCOMB_X10_Y2_N14
\inst8|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~12_combout\ = (\inst8|scan:count[6]~q\ & (\inst8|Add0~11\ $ (GND))) # (!\inst8|scan:count[6]~q\ & (!\inst8|Add0~11\ & VCC))
-- \inst8|Add0~13\ = CARRY((\inst8|scan:count[6]~q\ & !\inst8|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|scan:count[6]~q\,
	datad => VCC,
	cin => \inst8|Add0~11\,
	combout => \inst8|Add0~12_combout\,
	cout => \inst8|Add0~13\);

-- Location: FF_X10_Y2_N15
\inst8|scan:count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|scan:count[6]~q\);

-- Location: LCCOMB_X10_Y2_N16
\inst8|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~14_combout\ = (\inst8|scan:count[7]~q\ & (!\inst8|Add0~13\)) # (!\inst8|scan:count[7]~q\ & ((\inst8|Add0~13\) # (GND)))
-- \inst8|Add0~15\ = CARRY((!\inst8|Add0~13\) # (!\inst8|scan:count[7]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|scan:count[7]~q\,
	datad => VCC,
	cin => \inst8|Add0~13\,
	combout => \inst8|Add0~14_combout\,
	cout => \inst8|Add0~15\);

-- Location: FF_X10_Y2_N17
\inst8|scan:count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|scan:count[7]~q\);

-- Location: LCCOMB_X10_Y2_N18
\inst8|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~16_combout\ = (\inst8|scan:count[8]~q\ & (\inst8|Add0~15\ $ (GND))) # (!\inst8|scan:count[8]~q\ & (!\inst8|Add0~15\ & VCC))
-- \inst8|Add0~17\ = CARRY((\inst8|scan:count[8]~q\ & !\inst8|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|scan:count[8]~q\,
	datad => VCC,
	cin => \inst8|Add0~15\,
	combout => \inst8|Add0~16_combout\,
	cout => \inst8|Add0~17\);

-- Location: LCCOMB_X11_Y2_N20
\inst8|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|count~3_combout\ = (\inst8|Add0~16_combout\ & !\inst8|Equal0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|Add0~16_combout\,
	datad => \inst8|Equal0~12_combout\,
	combout => \inst8|count~3_combout\);

-- Location: FF_X11_Y2_N21
\inst8|scan:count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|scan:count[8]~q\);

-- Location: LCCOMB_X10_Y2_N20
\inst8|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~18_combout\ = (\inst8|scan:count[9]~q\ & (!\inst8|Add0~17\)) # (!\inst8|scan:count[9]~q\ & ((\inst8|Add0~17\) # (GND)))
-- \inst8|Add0~19\ = CARRY((!\inst8|Add0~17\) # (!\inst8|scan:count[9]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|scan:count[9]~q\,
	datad => VCC,
	cin => \inst8|Add0~17\,
	combout => \inst8|Add0~18_combout\,
	cout => \inst8|Add0~19\);

-- Location: LCCOMB_X11_Y2_N26
\inst8|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|count~2_combout\ = (\inst8|Add0~18_combout\ & !\inst8|Equal0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|Add0~18_combout\,
	datad => \inst8|Equal0~12_combout\,
	combout => \inst8|count~2_combout\);

-- Location: FF_X11_Y2_N27
\inst8|scan:count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|scan:count[9]~q\);

-- Location: LCCOMB_X10_Y2_N22
\inst8|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~20_combout\ = (\inst8|scan:count[10]~q\ & (\inst8|Add0~19\ $ (GND))) # (!\inst8|scan:count[10]~q\ & (!\inst8|Add0~19\ & VCC))
-- \inst8|Add0~21\ = CARRY((\inst8|scan:count[10]~q\ & !\inst8|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|scan:count[10]~q\,
	datad => VCC,
	cin => \inst8|Add0~19\,
	combout => \inst8|Add0~20_combout\,
	cout => \inst8|Add0~21\);

-- Location: LCCOMB_X11_Y2_N16
\inst8|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|count~1_combout\ = (\inst8|Add0~20_combout\ & !\inst8|Equal0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|Add0~20_combout\,
	datad => \inst8|Equal0~12_combout\,
	combout => \inst8|count~1_combout\);

-- Location: FF_X11_Y2_N17
\inst8|scan:count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|scan:count[10]~q\);

-- Location: LCCOMB_X10_Y2_N24
\inst8|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~22_combout\ = (\inst8|scan:count[11]~q\ & (!\inst8|Add0~21\)) # (!\inst8|scan:count[11]~q\ & ((\inst8|Add0~21\) # (GND)))
-- \inst8|Add0~23\ = CARRY((!\inst8|Add0~21\) # (!\inst8|scan:count[11]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|scan:count[11]~q\,
	datad => VCC,
	cin => \inst8|Add0~21\,
	combout => \inst8|Add0~22_combout\,
	cout => \inst8|Add0~23\);

-- Location: FF_X10_Y2_N25
\inst8|scan:count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|scan:count[11]~q\);

-- Location: LCCOMB_X10_Y2_N26
\inst8|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~24_combout\ = (\inst8|scan:count[12]~q\ & (\inst8|Add0~23\ $ (GND))) # (!\inst8|scan:count[12]~q\ & (!\inst8|Add0~23\ & VCC))
-- \inst8|Add0~25\ = CARRY((\inst8|scan:count[12]~q\ & !\inst8|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|scan:count[12]~q\,
	datad => VCC,
	cin => \inst8|Add0~23\,
	combout => \inst8|Add0~24_combout\,
	cout => \inst8|Add0~25\);

-- Location: FF_X10_Y2_N27
\inst8|scan:count[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|scan:count[12]~q\);

-- Location: LCCOMB_X10_Y2_N28
\inst8|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~26_combout\ = (\inst8|scan:count[13]~q\ & (!\inst8|Add0~25\)) # (!\inst8|scan:count[13]~q\ & ((\inst8|Add0~25\) # (GND)))
-- \inst8|Add0~27\ = CARRY((!\inst8|Add0~25\) # (!\inst8|scan:count[13]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst8|scan:count[13]~q\,
	datad => VCC,
	cin => \inst8|Add0~25\,
	combout => \inst8|Add0~26_combout\,
	cout => \inst8|Add0~27\);

-- Location: LCCOMB_X11_Y2_N22
\inst8|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|count~0_combout\ = (\inst8|Add0~26_combout\ & !\inst8|Equal0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst8|Add0~26_combout\,
	datad => \inst8|Equal0~12_combout\,
	combout => \inst8|count~0_combout\);

-- Location: FF_X11_Y2_N23
\inst8|scan:count[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|scan:count[13]~q\);

-- Location: LCCOMB_X10_Y2_N30
\inst8|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Add0~28_combout\ = (\inst8|scan:count[14]~q\ & (\inst8|Add0~27\ $ (GND))) # (!\inst8|scan:count[14]~q\ & (!\inst8|Add0~27\ & VCC))
-- \inst8|Add0~29\ = CARRY((\inst8|scan:count[14]~q\ & !\inst8|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|scan:count[14]~q\,
	datad => VCC,
	cin => \inst8|Add0~27\,
	combout => \inst8|Add0~28_combout\,
	cout => \inst8|Add0~29\);

-- Location: FF_X10_Y2_N31
\inst8|scan:count[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|scan:count[14]~q\);

-- Location: LCCOMB_X12_Y2_N4
\inst8|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal0~2_combout\ = (!\inst8|Add0~4_combout\ & (!\inst8|Add0~0_combout\ & (!\inst8|Add0~6_combout\ & !\inst8|Add0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~4_combout\,
	datab => \inst8|Add0~0_combout\,
	datac => \inst8|Add0~6_combout\,
	datad => \inst8|Add0~2_combout\,
	combout => \inst8|Equal0~2_combout\);

-- Location: LCCOMB_X10_Y2_N0
\inst8|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal0~3_combout\ = (\inst8|Add0~8_combout\ & (!\inst8|Add0~12_combout\ & (!\inst8|Add0~14_combout\ & !\inst8|Add0~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~8_combout\,
	datab => \inst8|Add0~12_combout\,
	datac => \inst8|Add0~14_combout\,
	datad => \inst8|Add0~10_combout\,
	combout => \inst8|Equal0~3_combout\);

-- Location: LCCOMB_X11_Y2_N0
\inst8|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal0~4_combout\ = (\inst8|Equal0~2_combout\ & (\inst8|Add0~16_combout\ & (\inst8|Equal0~3_combout\ & \inst8|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Equal0~2_combout\,
	datab => \inst8|Add0~16_combout\,
	datac => \inst8|Equal0~3_combout\,
	datad => \inst8|Add0~18_combout\,
	combout => \inst8|Equal0~4_combout\);

-- Location: LCCOMB_X11_Y2_N18
\inst8|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal0~5_combout\ = (!\inst8|Add0~22_combout\ & (\inst8|Add0~20_combout\ & (!\inst8|Add0~24_combout\ & \inst8|Equal0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~22_combout\,
	datab => \inst8|Add0~20_combout\,
	datac => \inst8|Add0~24_combout\,
	datad => \inst8|Equal0~4_combout\,
	combout => \inst8|Equal0~5_combout\);

-- Location: LCCOMB_X11_Y2_N12
\inst8|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal0~6_combout\ = (!\inst8|Add0~30_combout\ & (!\inst8|Add0~28_combout\ & (\inst8|Add0~26_combout\ & \inst8|Equal0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~30_combout\,
	datab => \inst8|Add0~28_combout\,
	datac => \inst8|Add0~26_combout\,
	datad => \inst8|Equal0~5_combout\,
	combout => \inst8|Equal0~6_combout\);

-- Location: LCCOMB_X11_Y2_N28
\inst8|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal0~8_combout\ = (!\inst8|Add0~40_combout\ & (!\inst8|Add0~42_combout\ & (!\inst8|Add0~44_combout\ & !\inst8|Add0~46_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~40_combout\,
	datab => \inst8|Add0~42_combout\,
	datac => \inst8|Add0~44_combout\,
	datad => \inst8|Add0~46_combout\,
	combout => \inst8|Equal0~8_combout\);

-- Location: LCCOMB_X11_Y2_N14
\inst8|sel[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|sel[0]~0_combout\ = ((!\inst8|Equal0~8_combout\) # (!\inst8|Equal0~7_combout\)) # (!\inst8|Equal0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Equal0~6_combout\,
	datac => \inst8|Equal0~7_combout\,
	datad => \inst8|Equal0~8_combout\,
	combout => \inst8|sel[0]~0_combout\);

-- Location: LCCOMB_X11_Y1_N8
\inst8|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal0~0_combout\ = (!\inst8|Add0~52_combout\ & (!\inst8|Add0~48_combout\ & (!\inst8|Add0~50_combout\ & !\inst8|Add0~54_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~52_combout\,
	datab => \inst8|Add0~48_combout\,
	datac => \inst8|Add0~50_combout\,
	datad => \inst8|Add0~54_combout\,
	combout => \inst8|Equal0~0_combout\);

-- Location: LCCOMB_X11_Y1_N14
\inst8|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Equal0~1_combout\ = (!\inst8|Add0~56_combout\ & (!\inst8|Add0~58_combout\ & (\inst8|Equal0~0_combout\ & !\inst8|Add0~60_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst8|Add0~56_combout\,
	datab => \inst8|Add0~58_combout\,
	datac => \inst8|Equal0~0_combout\,
	datad => \inst8|Add0~60_combout\,
	combout => \inst8|Equal0~1_combout\);

-- Location: LCCOMB_X11_Y2_N8
\inst8|sel[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|sel[0]~1_combout\ = \inst8|sel\(0) $ (((!\inst8|sel[0]~0_combout\ & \inst8|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst8|sel[0]~0_combout\,
	datac => \inst8|sel\(0),
	datad => \inst8|Equal0~1_combout\,
	combout => \inst8|sel[0]~1_combout\);

-- Location: FF_X11_Y2_N9
\inst8|sel[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst8|sel[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst8|sel\(0));

-- Location: LCCOMB_X19_Y8_N28
\inst9|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Mux7~0_combout\ = (\inst|acc_out\(4) & ((\inst|acc_out\(7)) # (\inst|acc_out\(5) $ (\inst|acc_out\(6))))) # (!\inst|acc_out\(4) & ((\inst|acc_out\(5)) # (\inst|acc_out\(6) $ (\inst|acc_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc_out\(5),
	datab => \inst|acc_out\(6),
	datac => \inst|acc_out\(7),
	datad => \inst|acc_out\(4),
	combout => \inst9|Mux7~0_combout\);

-- Location: LCCOMB_X19_Y8_N30
\inst8|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux8~0_combout\ = (\inst8|sel\(0) & ((\inst9|Mux7~0_combout\))) # (!\inst8|sel\(0) & (\inst9|Mux0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|Mux0~0_combout\,
	datac => \inst8|sel\(0),
	datad => \inst9|Mux7~0_combout\,
	combout => \inst8|Mux8~0_combout\);

-- Location: LCCOMB_X18_Y8_N14
\inst9|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Mux1~0_combout\ = (\inst|acc_out\(0) & (\inst|acc_out\(3) $ (((\inst|acc_out\(1)) # (!\inst|acc_out\(2)))))) # (!\inst|acc_out\(0) & (!\inst|acc_out\(2) & (!\inst|acc_out\(3) & \inst|acc_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc_out\(0),
	datab => \inst|acc_out\(2),
	datac => \inst|acc_out\(3),
	datad => \inst|acc_out\(1),
	combout => \inst9|Mux1~0_combout\);

-- Location: LCCOMB_X19_Y8_N8
\inst9|Mux8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Mux8~0_combout\ = (\inst|acc_out\(5) & (!\inst|acc_out\(7) & ((\inst|acc_out\(4)) # (!\inst|acc_out\(6))))) # (!\inst|acc_out\(5) & (\inst|acc_out\(4) & (\inst|acc_out\(6) $ (!\inst|acc_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc_out\(5),
	datab => \inst|acc_out\(6),
	datac => \inst|acc_out\(7),
	datad => \inst|acc_out\(4),
	combout => \inst9|Mux8~0_combout\);

-- Location: LCCOMB_X19_Y8_N6
\inst8|Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux7~0_combout\ = (\inst8|sel\(0) & ((\inst9|Mux8~0_combout\))) # (!\inst8|sel\(0) & (\inst9|Mux1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Mux1~0_combout\,
	datab => \inst9|Mux8~0_combout\,
	datac => \inst8|sel\(0),
	combout => \inst8|Mux7~0_combout\);

-- Location: LCCOMB_X18_Y8_N16
\inst9|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Mux2~0_combout\ = (\inst|acc_out\(1) & (\inst|acc_out\(0) & ((!\inst|acc_out\(3))))) # (!\inst|acc_out\(1) & ((\inst|acc_out\(2) & ((!\inst|acc_out\(3)))) # (!\inst|acc_out\(2) & (\inst|acc_out\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc_out\(0),
	datab => \inst|acc_out\(2),
	datac => \inst|acc_out\(3),
	datad => \inst|acc_out\(1),
	combout => \inst9|Mux2~0_combout\);

-- Location: LCCOMB_X19_Y8_N4
\inst9|Mux9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Mux9~0_combout\ = (\inst|acc_out\(5) & (((!\inst|acc_out\(7) & \inst|acc_out\(4))))) # (!\inst|acc_out\(5) & ((\inst|acc_out\(6) & (!\inst|acc_out\(7))) # (!\inst|acc_out\(6) & ((\inst|acc_out\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc_out\(5),
	datab => \inst|acc_out\(6),
	datac => \inst|acc_out\(7),
	datad => \inst|acc_out\(4),
	combout => \inst9|Mux9~0_combout\);

-- Location: LCCOMB_X19_Y8_N26
\inst8|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux6~0_combout\ = (\inst8|sel\(0) & ((\inst9|Mux9~0_combout\))) # (!\inst8|sel\(0) & (\inst9|Mux2~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Mux2~0_combout\,
	datab => \inst9|Mux9~0_combout\,
	datac => \inst8|sel\(0),
	combout => \inst8|Mux6~0_combout\);

-- Location: LCCOMB_X18_Y8_N22
\inst9|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Mux3~0_combout\ = (\inst|acc_out\(1) & ((\inst|acc_out\(0) & (\inst|acc_out\(2))) # (!\inst|acc_out\(0) & (!\inst|acc_out\(2) & \inst|acc_out\(3))))) # (!\inst|acc_out\(1) & (!\inst|acc_out\(3) & (\inst|acc_out\(0) $ (\inst|acc_out\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc_out\(0),
	datab => \inst|acc_out\(2),
	datac => \inst|acc_out\(3),
	datad => \inst|acc_out\(1),
	combout => \inst9|Mux3~0_combout\);

-- Location: LCCOMB_X19_Y8_N16
\inst9|Mux10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Mux10~0_combout\ = (\inst|acc_out\(5) & ((\inst|acc_out\(6) & ((\inst|acc_out\(4)))) # (!\inst|acc_out\(6) & (\inst|acc_out\(7) & !\inst|acc_out\(4))))) # (!\inst|acc_out\(5) & (!\inst|acc_out\(7) & (\inst|acc_out\(6) $ (\inst|acc_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc_out\(5),
	datab => \inst|acc_out\(6),
	datac => \inst|acc_out\(7),
	datad => \inst|acc_out\(4),
	combout => \inst9|Mux10~0_combout\);

-- Location: LCCOMB_X19_Y8_N10
\inst8|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux5~0_combout\ = (\inst8|sel\(0) & ((\inst9|Mux10~0_combout\))) # (!\inst8|sel\(0) & (\inst9|Mux3~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|Mux3~0_combout\,
	datac => \inst8|sel\(0),
	datad => \inst9|Mux10~0_combout\,
	combout => \inst8|Mux5~0_combout\);

-- Location: LCCOMB_X18_Y8_N12
\inst9|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Mux4~0_combout\ = (\inst|acc_out\(2) & (\inst|acc_out\(3) & ((\inst|acc_out\(1)) # (!\inst|acc_out\(0))))) # (!\inst|acc_out\(2) & (!\inst|acc_out\(0) & (!\inst|acc_out\(3) & \inst|acc_out\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc_out\(0),
	datab => \inst|acc_out\(2),
	datac => \inst|acc_out\(3),
	datad => \inst|acc_out\(1),
	combout => \inst9|Mux4~0_combout\);

-- Location: LCCOMB_X19_Y8_N12
\inst9|Mux11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Mux11~0_combout\ = (\inst|acc_out\(6) & (\inst|acc_out\(7) & ((\inst|acc_out\(5)) # (!\inst|acc_out\(4))))) # (!\inst|acc_out\(6) & (\inst|acc_out\(5) & (!\inst|acc_out\(7) & !\inst|acc_out\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc_out\(5),
	datab => \inst|acc_out\(6),
	datac => \inst|acc_out\(7),
	datad => \inst|acc_out\(4),
	combout => \inst9|Mux11~0_combout\);

-- Location: LCCOMB_X19_Y8_N22
\inst8|Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux4~0_combout\ = (\inst8|sel\(0) & ((\inst9|Mux11~0_combout\))) # (!\inst8|sel\(0) & (\inst9|Mux4~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Mux4~0_combout\,
	datac => \inst8|sel\(0),
	datad => \inst9|Mux11~0_combout\,
	combout => \inst8|Mux4~0_combout\);

-- Location: LCCOMB_X18_Y8_N26
\inst9|Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Mux5~0_combout\ = (\inst|acc_out\(3) & ((\inst|acc_out\(0) & ((\inst|acc_out\(1)))) # (!\inst|acc_out\(0) & (\inst|acc_out\(2))))) # (!\inst|acc_out\(3) & (\inst|acc_out\(2) & (\inst|acc_out\(0) $ (\inst|acc_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc_out\(0),
	datab => \inst|acc_out\(2),
	datac => \inst|acc_out\(3),
	datad => \inst|acc_out\(1),
	combout => \inst9|Mux5~0_combout\);

-- Location: LCCOMB_X19_Y8_N24
\inst9|Mux12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Mux12~0_combout\ = (\inst|acc_out\(5) & ((\inst|acc_out\(4) & ((\inst|acc_out\(7)))) # (!\inst|acc_out\(4) & (\inst|acc_out\(6))))) # (!\inst|acc_out\(5) & (\inst|acc_out\(6) & (\inst|acc_out\(7) $ (\inst|acc_out\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc_out\(5),
	datab => \inst|acc_out\(6),
	datac => \inst|acc_out\(7),
	datad => \inst|acc_out\(4),
	combout => \inst9|Mux12~0_combout\);

-- Location: LCCOMB_X19_Y8_N14
\inst8|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux3~0_combout\ = (\inst8|sel\(0) & ((\inst9|Mux12~0_combout\))) # (!\inst8|sel\(0) & (\inst9|Mux5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|Mux5~0_combout\,
	datab => \inst9|Mux12~0_combout\,
	datac => \inst8|sel\(0),
	combout => \inst8|Mux3~0_combout\);

-- Location: LCCOMB_X18_Y8_N4
\inst9|Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Mux6~0_combout\ = (\inst|acc_out\(2) & (!\inst|acc_out\(1) & (\inst|acc_out\(0) $ (!\inst|acc_out\(3))))) # (!\inst|acc_out\(2) & (\inst|acc_out\(0) & (\inst|acc_out\(3) $ (!\inst|acc_out\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc_out\(0),
	datab => \inst|acc_out\(2),
	datac => \inst|acc_out\(3),
	datad => \inst|acc_out\(1),
	combout => \inst9|Mux6~0_combout\);

-- Location: LCCOMB_X19_Y8_N20
\inst9|Mux13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst9|Mux13~0_combout\ = (\inst|acc_out\(6) & (!\inst|acc_out\(5) & (\inst|acc_out\(7) $ (!\inst|acc_out\(4))))) # (!\inst|acc_out\(6) & (\inst|acc_out\(4) & (\inst|acc_out\(5) $ (!\inst|acc_out\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|acc_out\(5),
	datab => \inst|acc_out\(6),
	datac => \inst|acc_out\(7),
	datad => \inst|acc_out\(4),
	combout => \inst9|Mux13~0_combout\);

-- Location: LCCOMB_X19_Y8_N2
\inst8|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst8|Mux0~0_combout\ = (\inst8|sel\(0) & ((\inst9|Mux13~0_combout\))) # (!\inst8|sel\(0) & (\inst9|Mux6~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst9|Mux6~0_combout\,
	datac => \inst8|sel\(0),
	datad => \inst9|Mux13~0_combout\,
	combout => \inst8|Mux0~0_combout\);

-- Location: FF_X16_Y8_N19
\inst|data_r_out[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst|Mux0~0_combout\,
	sload => VCC,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_r_out\(21));

-- Location: LCCOMB_X18_Y7_N16
\inst|data_r_out[20]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data_r_out[20]~feeder_combout\ = \inst|Mux1~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Mux1~1_combout\,
	combout => \inst|data_r_out[20]~feeder_combout\);

-- Location: FF_X18_Y7_N17
\inst|data_r_out[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|data_r_out[20]~feeder_combout\,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_r_out\(20));

-- Location: FF_X18_Y7_N11
\inst|data_r_out[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Mux2~0_combout\,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_r_out\(19));

-- Location: FF_X18_Y7_N25
\inst|data_r_out[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Mux3~1_combout\,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_r_out\(18));

-- Location: LCCOMB_X17_Y10_N8
\inst|data_r_out[17]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data_r_out[17]~feeder_combout\ = \inst|Mux4~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Mux4~1_combout\,
	combout => \inst|data_r_out[17]~feeder_combout\);

-- Location: FF_X17_Y10_N9
\inst|data_r_out[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|data_r_out[17]~feeder_combout\,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_r_out\(17));

-- Location: LCCOMB_X18_Y7_N26
\inst|data_r_out[16]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data_r_out[16]~feeder_combout\ = \inst|Mux5~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mux5~0_combout\,
	combout => \inst|data_r_out[16]~feeder_combout\);

-- Location: FF_X18_Y7_N27
\inst|data_r_out[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|data_r_out[16]~feeder_combout\,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_r_out\(16));

-- Location: LCCOMB_X18_Y8_N10
\inst|data_r_out[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data_r_out[15]~feeder_combout\ = \inst|Mux6~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|Mux6~0_combout\,
	combout => \inst|data_r_out[15]~feeder_combout\);

-- Location: FF_X18_Y8_N11
\inst|data_r_out[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|data_r_out[15]~feeder_combout\,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_r_out\(15));

-- Location: FF_X17_Y9_N13
\inst|data_r_out[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst|Mux7~1_combout\,
	sload => VCC,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_r_out\(14));

-- Location: LCCOMB_X17_Y8_N4
\inst|data_r_out[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data_r_out[13]~feeder_combout\ = \inst|Mux8~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mux8~1_combout\,
	combout => \inst|data_r_out[13]~feeder_combout\);

-- Location: FF_X17_Y8_N5
\inst|data_r_out[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|data_r_out[13]~feeder_combout\,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_r_out\(13));

-- Location: FF_X16_Y8_N29
\inst|data_r_out[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Mux9~0_combout\,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_r_out\(12));

-- Location: FF_X16_Y8_N11
\inst|data_r_out[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Mux10~1_combout\,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_r_out\(11));

-- Location: FF_X18_Y7_N9
\inst|data_r_out[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Mux5~0_combout\,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_r_out\(10));

-- Location: FF_X18_Y7_N7
\inst|data_r_out[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Mux11~0_combout\,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_r_out\(9));

-- Location: LCCOMB_X18_Y7_N30
\inst|Mux12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Mux12~1_combout\ = (\inst|add_r\(3) & (\inst|Mux3~0_combout\)) # (!\inst|add_r\(3) & ((\inst|Mux12~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|add_r\(3),
	datac => \inst|Mux3~0_combout\,
	datad => \inst|Mux12~0_combout\,
	combout => \inst|Mux12~1_combout\);

-- Location: LCCOMB_X18_Y7_N12
\inst|data_r_out[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data_r_out[8]~feeder_combout\ = \inst|Mux12~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mux12~1_combout\,
	combout => \inst|data_r_out[8]~feeder_combout\);

-- Location: FF_X18_Y7_N13
\inst|data_r_out[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|data_r_out[8]~feeder_combout\,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_r_out\(8));

-- Location: FF_X18_Y7_N31
\inst|data_r_out[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Mux12~1_combout\,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_r_out\(7));

-- Location: FF_X16_Y8_N25
\inst|data_r_out[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Mux13~0_combout\,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_r_out\(6));

-- Location: FF_X16_Y8_N7
\inst|data_r_out[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Mux14~0_combout\,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_r_out\(5));

-- Location: LCCOMB_X17_Y11_N10
\inst|data_r_out[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data_r_out[4]~feeder_combout\ = \inst|Mux15~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mux15~1_combout\,
	combout => \inst|data_r_out[4]~feeder_combout\);

-- Location: FF_X17_Y11_N11
\inst|data_r_out[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|data_r_out[4]~feeder_combout\,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_r_out\(4));

-- Location: LCCOMB_X17_Y11_N0
\inst|data_r_out[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|data_r_out[3]~feeder_combout\ = \inst|Mux16~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Mux16~1_combout\,
	combout => \inst|data_r_out[3]~feeder_combout\);

-- Location: FF_X17_Y11_N1
\inst|data_r_out[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|data_r_out[3]~feeder_combout\,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_r_out\(3));

-- Location: FF_X16_Y9_N13
\inst|data_r_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst|Mux17~2_combout\,
	sload => VCC,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_r_out\(2));

-- Location: FF_X17_Y11_N3
\inst|data_r_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst|Mux18~1_combout\,
	sload => VCC,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_r_out\(1));

-- Location: FF_X17_Y11_N13
\inst|data_r_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|Mux19~2_combout\,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|data_r_out\(0));

-- Location: FF_X13_Y10_N25
\inst|op_out[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	asdata => \inst|op\(2),
	sload => VCC,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|op_out\(2));

-- Location: LCCOMB_X13_Y10_N18
\inst|op_out[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|op_out[1]~feeder_combout\ = \inst|op\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst|op\(1),
	combout => \inst|op_out[1]~feeder_combout\);

-- Location: FF_X13_Y10_N19
\inst|op_out[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|op_out[1]~feeder_combout\,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|op_out\(1));

-- Location: LCCOMB_X17_Y10_N30
\inst|op_out[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|op_out[0]~feeder_combout\ = \inst|op\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|op\(0),
	combout => \inst|op_out[0]~feeder_combout\);

-- Location: FF_X17_Y10_N31
\inst|op_out[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clock~inputclkctrl_outclk\,
	d => \inst|op_out[0]~feeder_combout\,
	ena => \inst|Equal0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|op_out\(0));

-- Location: IOIBUF_X34_Y12_N15
\mode~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_mode,
	o => \mode~input_o\);

ww_add_r_out(4) <= \add_r_out[4]~output_o\;

ww_add_r_out(3) <= \add_r_out[3]~output_o\;

ww_add_r_out(2) <= \add_r_out[2]~output_o\;

ww_add_r_out(1) <= \add_r_out[1]~output_o\;

ww_add_r_out(0) <= \add_r_out[0]~output_o\;

ww_cout(7) <= \cout[7]~output_o\;

ww_cout(6) <= \cout[6]~output_o\;

ww_cout(5) <= \cout[5]~output_o\;

ww_cout(4) <= \cout[4]~output_o\;

ww_cout(3) <= \cout[3]~output_o\;

ww_cout(2) <= \cout[2]~output_o\;

ww_cout(1) <= \cout[1]~output_o\;

ww_cout(0) <= \cout[0]~output_o\;

ww_data_r_out(21) <= \data_r_out[21]~output_o\;

ww_data_r_out(20) <= \data_r_out[20]~output_o\;

ww_data_r_out(19) <= \data_r_out[19]~output_o\;

ww_data_r_out(18) <= \data_r_out[18]~output_o\;

ww_data_r_out(17) <= \data_r_out[17]~output_o\;

ww_data_r_out(16) <= \data_r_out[16]~output_o\;

ww_data_r_out(15) <= \data_r_out[15]~output_o\;

ww_data_r_out(14) <= \data_r_out[14]~output_o\;

ww_data_r_out(13) <= \data_r_out[13]~output_o\;

ww_data_r_out(12) <= \data_r_out[12]~output_o\;

ww_data_r_out(11) <= \data_r_out[11]~output_o\;

ww_data_r_out(10) <= \data_r_out[10]~output_o\;

ww_data_r_out(9) <= \data_r_out[9]~output_o\;

ww_data_r_out(8) <= \data_r_out[8]~output_o\;

ww_data_r_out(7) <= \data_r_out[7]~output_o\;

ww_data_r_out(6) <= \data_r_out[6]~output_o\;

ww_data_r_out(5) <= \data_r_out[5]~output_o\;

ww_data_r_out(4) <= \data_r_out[4]~output_o\;

ww_data_r_out(3) <= \data_r_out[3]~output_o\;

ww_data_r_out(2) <= \data_r_out[2]~output_o\;

ww_data_r_out(1) <= \data_r_out[1]~output_o\;

ww_data_r_out(0) <= \data_r_out[0]~output_o\;

ww_op_out(2) <= \op_out[2]~output_o\;

ww_op_out(1) <= \op_out[1]~output_o\;

ww_op_out(0) <= \op_out[0]~output_o\;

ww_output(7) <= \output[7]~output_o\;

ww_output(6) <= \output[6]~output_o\;

ww_output(5) <= \output[5]~output_o\;

ww_output(4) <= \output[4]~output_o\;

ww_output(3) <= \output[3]~output_o\;

ww_output(2) <= \output[2]~output_o\;

ww_output(1) <= \output[1]~output_o\;

ww_output(0) <= \output[0]~output_o\;

ww_se(5) <= \se[5]~output_o\;

ww_se(4) <= \se[4]~output_o\;

ww_se(3) <= \se[3]~output_o\;

ww_se(2) <= \se[2]~output_o\;

ww_se(1) <= \se[1]~output_o\;

ww_se(0) <= \se[0]~output_o\;
END structure;


