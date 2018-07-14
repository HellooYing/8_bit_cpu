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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "07/12/2018 17:52:44"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          cpu
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY cpu_vhd_vec_tst IS
END cpu_vhd_vec_tst;
ARCHITECTURE cpu_arch OF cpu_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL add_r_out : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL clock : STD_LOGIC;
SIGNAL data_r_out : STD_LOGIC_VECTOR(21 DOWNTO 0);
SIGNAL mem_addr : STD_LOGIC_VECTOR(4 DOWNTO 0);
SIGNAL mode : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL op_out : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL output : STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
COMPONENT cpu
	PORT (
	add_r_out : BUFFER STD_LOGIC_VECTOR(4 DOWNTO 0);
	clock : IN STD_LOGIC;
	data_r_out : BUFFER STD_LOGIC_VECTOR(21 DOWNTO 0);
	mem_addr : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
	mode : IN STD_LOGIC_VECTOR(2 DOWNTO 0);
	op_out : BUFFER STD_LOGIC_VECTOR(2 DOWNTO 0);
	output : BUFFER STD_LOGIC_VECTOR(7 DOWNTO 0);
	reset : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : cpu
	PORT MAP (
-- list connections between master ports and signals
	add_r_out => add_r_out,
	clock => clock,
	data_r_out => data_r_out,
	mem_addr => mem_addr,
	mode => mode,
	op_out => op_out,
	output => output,
	reset => reset
	);

-- clock
t_prcs_clock: PROCESS
BEGIN
LOOP
	clock <= '0';
	WAIT FOR 5000 ps;
	clock <= '1';
	WAIT FOR 5000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clock;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '1';
WAIT;
END PROCESS t_prcs_reset;
-- mode[2]
t_prcs_mode_2: PROCESS
BEGIN
	mode(2) <= '0';
WAIT;
END PROCESS t_prcs_mode_2;
-- mode[1]
t_prcs_mode_1: PROCESS
BEGIN
	mode(1) <= '1';
WAIT;
END PROCESS t_prcs_mode_1;
-- mode[0]
t_prcs_mode_0: PROCESS
BEGIN
	mode(0) <= '0';
WAIT;
END PROCESS t_prcs_mode_0;
-- mem_addr[4]
t_prcs_mem_addr_4: PROCESS
BEGIN
	FOR i IN 1 TO 3
	LOOP
		mem_addr(4) <= '0';
		WAIT FOR 160000 ps;
		mem_addr(4) <= '1';
		WAIT FOR 160000 ps;
	END LOOP;
	mem_addr(4) <= '0';
WAIT;
END PROCESS t_prcs_mem_addr_4;
-- mem_addr[3]
t_prcs_mem_addr_3: PROCESS
BEGIN
	FOR i IN 1 TO 6
	LOOP
		mem_addr(3) <= '0';
		WAIT FOR 80000 ps;
		mem_addr(3) <= '1';
		WAIT FOR 80000 ps;
	END LOOP;
	mem_addr(3) <= '0';
WAIT;
END PROCESS t_prcs_mem_addr_3;
-- mem_addr[2]
t_prcs_mem_addr_2: PROCESS
BEGIN
	FOR i IN 1 TO 12
	LOOP
		mem_addr(2) <= '0';
		WAIT FOR 40000 ps;
		mem_addr(2) <= '1';
		WAIT FOR 40000 ps;
	END LOOP;
	mem_addr(2) <= '0';
WAIT;
END PROCESS t_prcs_mem_addr_2;
-- mem_addr[1]
t_prcs_mem_addr_1: PROCESS
BEGIN
LOOP
	mem_addr(1) <= '0';
	WAIT FOR 20000 ps;
	mem_addr(1) <= '1';
	WAIT FOR 20000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_mem_addr_1;
-- mem_addr[0]
t_prcs_mem_addr_0: PROCESS
BEGIN
LOOP
	mem_addr(0) <= '0';
	WAIT FOR 10000 ps;
	mem_addr(0) <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_mem_addr_0;
END cpu_arch;
