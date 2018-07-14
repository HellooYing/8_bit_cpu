library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
entity alu is  port(
 	rst:in std_logic;
  	acc:in std_logic_vector(7 downto 0);--累加器 	
	mdr:in std_logic_vector(7 downto 0);--数据寄存器 	
	rrr:in std_logic_vector(7 downto 0);--r寄存器 	
	mdr_or_r:in std_logic;--直接寻址还是间接寻址 即用rrr还是mdr，0用mdr，1用rrr 	
	alu_add:in std_logic;--add加 	
	alu_sub:in std_logic;--sub减 	
	alu_and:in std_logic;--and与 	
	alu_srl:in std_logic;--srl左移 	
	alu_out:out std_logic_vector(7 downto 0)--alu计算结果 	
	); 
end alu;
architecture a of alu is
	signal acc1:std_logic_vector(7 downto 0);
begin
	process(rst)
		begin
		if rst='0' then
			alu_out<="00000000";
		else
			if mdr_or_r='0' then
				if alu_add='1' then
					acc1<=acc+mdr;--累加器内容为它本身加上数据寄存器内容
				elsif alu_sub='1' then
					acc1<=acc-mdr; 			
				elsif alu_and='1' then
					acc1<=acc and mdr; 			
				elsif alu_srl='1' then				
					acc1<=acc(6 downto 0)&'0';
				end if;
				alu_out<=acc1;
			else
				if alu_add='1' then
					acc1<=acc+rrr;--累加器内容为它本身加上数据寄存器内容
				elsif alu_sub='1' then
					acc1<=acc-rrr; 			
				elsif alu_and='1' then
					acc1<=acc and rrr; 			
				elsif alu_srl='1' then				
					acc1<=acc(6 downto 0)&'0';
				end if;
				alu_out<=acc1;
			end if;
		end if;
	end process;
  end a;