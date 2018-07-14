library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity aluu is  port(
	reset:in std_logic;
	key1:in std_logic;
	key2:in std_logic;
	key3:in std_logic;
	alu_out:out std_logic_vector(7 downto 0);--alu计算结果 	
	led1:out std_logic;
	led2:out std_logic;
	led3:out std_logic
	); 
end aluu;
architecture a of aluu is
	signal acc1:std_logic_vector(7 downto 0);
	signal rst:std_logic;
	signal acc:std_logic_vector(7 downto 0);--累加器 	
	signal mdr:std_logic_vector(7 downto 0);--数据寄存器
	signal rrr:std_logic_vector(7 downto 0);--r寄存器 	
	signal mdr_or_r:std_logic;--直接寻址还是间接寻址 即用rrr还是mdr，0用mdr，1用rrr 	
	signal alu_add:std_logic;--add加 	
	signal alu_sub:std_logic;--sub减 	
	signal alu_and:std_logic;--and与 	
	signal alu_srl:std_logic;--srl左移 
	signal temp:std_logic;	
begin
rst<='1';
acc<="00000010";--累加器 	
mdr<="00000010";--数据寄存器
rrr<="00000001";--r寄存器 	
mdr_or_r<='1';--直接寻址还是间接寻址 即用rrr还是mdr，0用mdr，1用rrr 	
	
	process(key1,key2,key3)
		begin
		if key2='1' then
			if key3='1' then
				alu_add<='1';
				alu_sub<='0';
				alu_and<='0';
				alu_srl<='0';
			else--10
				alu_add<='0';
				alu_sub<='1';
				alu_and<='0';
				alu_srl<='0';
			end if;
		else
			if key3='1' then--01
				alu_add<='0';
				alu_sub<='0';
				alu_and<='1';
				alu_srl<='0';
			else--00
				alu_add<='0';
				alu_sub<='0';
				alu_and<='0';
				alu_srl<='1';
			end if;
		end if;
		if rst='0' then
			alu_out<="00000000";
		else
			if key1='1' then
				if alu_add='1' then
					acc1<=acc+mdr;--累加器内容为它本身加上数据寄存器内容
				elsif alu_sub='1' then
					acc1<=acc-mdr; 			
				elsif alu_and='1' then
					acc1<=acc and mdr; 			
				elsif alu_srl='1' then				
					acc1<=acc(6 downto 0)&'0';
				else
					acc1<=acc;
				end if;
			else
				if alu_add='1' then
					acc1<=acc+rrr;--累加器内容为它本身加上数据寄存器内容
				elsif alu_sub='1' then
					acc1<=acc-rrr; 			
				elsif alu_and='1' then
					acc1<=acc and rrr; 			
				elsif alu_srl='1' then				
					acc1<=acc(6 downto 0)&'0';
				else
					acc1<=acc;
				end if;
			end if;
			alu_out<=acc1;
			led1<=acc1(0);
			led2<=acc1(1);
			led3<=acc1(2);
		end if;
	end process;
  end a;