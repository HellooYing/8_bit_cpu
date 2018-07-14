library ieee;
use ieee.std_logic_1164.all,ieee.numeric_std.all;
use work.cpu_defs.all;
entity cpuu is
port(
	clock:in std_logic;
	reset:in std_logic;
	output:out std_logic_vector(word_w-1 downto 0); 
	data_r_out:out std_logic_vector(21 downto 0);
	op_out:out std_logic_vector(op_w-1 downto 0);
	add_r_out:out std_logic_vector(word_w-op_w-1 downto 0)  	  
	);	         
end entity;
architecture rtl of cpuu is	
	type mem_array is array (0 to 2**(word_w-op_w)-1) of std_logic_vector(word_w-1 downto 0);
	signal mem:mem_array;
	constant prog:mem_array:=(--指令
	0=>op2slv(sta)&std_logic_vector(to_unsigned(9,word_w-op_w-1))&'0',
	1=>op2slv(sta)&std_logic_vector(to_unsigned(10,word_w-op_w-1))&'1',
	2=>op2slv(add)&std_logic_vector(to_unsigned(9,word_w-op_w-1))&'1',
	3=>op2slv(sub)&std_logic_vector(to_unsigned(10,word_w-op_w-1))&'0',
	4=>op2slv(and1)&std_logic_vector(to_unsigned(10,word_w-op_w-1))&'0',
	5=>op2slv(shl)&std_logic_vector(to_unsigned(10,word_w-op_w-1))&'0',
	6=>op2slv(nop)&std_logic_vector(to_unsigned(9,word_w-op_w-1))&'0',
	7=>op2slv(sta)&std_logic_vector(to_unsigned(11,word_w-op_w-1))&'0',
	8=>op2slv(jmp)&std_logic_vector(to_unsigned(12,word_w-op_w-1))&'0',
	9=>std_logic_vector(to_unsigned(2,word_w)),
	10=>std_logic_vector(to_unsigned(3,word_w)),
	others=>(others=>'0'));	
	type microcode_array is array (0 to 25) of std_logic_vector(21 downto 0);--微指令
	constant code:microcode_array:=(
		0=>"0000010100010000000001",--第0步：计数器内容驱动总线，用总线内容加载地址寄存器（0），计数器++
		1=>"0000000000000110000010",--第1步：根据地址寄存器内容，把存储器里的内容存到数据寄存器
		2=>"0000001010000000000011",--第2步：用数据寄存器内容驱动总线，用总线内容加载指令寄存器
		3=>"0000000100001000011111",--第3步：用IR指令中的地址部分驱动总线，用总线内容加载地址寄存器--判断IR_out(0),确定寻址方式是立即寻址还是寄存器寻址
		4=>"0000000000000110000110",--第4步：根据地址寄存器内容，把存储器里的内容存到数据寄存器
		5=>"0000000000000110000111",--第5步：同上
		6=>"0000100010000000000000",--第6步：用数据寄存器内容驱动总线，将总线内容载入累加器
		7=>"0001000010000000000000",--第7步：用数据寄存器内容驱动总线，将总线内容载入r寄存器
		8=>"0000000000000000011011",--第8步：sta，11011，改add_r
		9=>"0000000000000000011100",--第9步：add，11100，改add_r
		10=>"0000000000000000010010",	--第10步：sub，10010，改add_r
		11=>"0000000000000000010100",--第11步：and，10100
		12=>"0000000000000000010110",--第12步：jmp，10110
		13=>"0000000000000000011001",--第13步：shl，11001
		14=>"0000000000000110000000",--第14步：根据地址寄存器内容，把存储器里的内容存到数据寄存器--判断IR_out(0),确定寻址方式是立即寻址还是寄存器寻址
		15=>"0000000000000110010001", --第15步：根据地址寄存器内容，把存储器里的内容存到数据寄存器
		16=>"0000000010100001000000",--第16步：根据数据寄存器驱动总线，在ALU中执行逻辑加操作，用ALU的结果装载ACC
		17=>"0100000000100001000000",--第17步：根据r寄存器驱动总线，在ALU中执行逻辑加操作，用ALU的结果装载ACC
		18=>"0000000000000110010011",--第18步：根据地址寄存器内容，把存储器里的内容存到数据寄存器
		19=>"0000000010100000100000",--第19步：根据数据寄存器驱动总线，在ALU中执行逻辑减操作，用ALU的结果装载ACC
		20=>"0000000000000110010101",--第20步：根据地址寄存器内容，把存储器里的内容存到数据寄存器
		21=>"0000000011100000000000",--第21步：根据地址寄存器驱动总线，在ALU中执行逻辑与操作，用ALU的结果装载ACC
		22=>"0000000000000110011101",--第22步：根据地址寄存器内容，把存储器里的内容存到数据寄存器--判断z_flag是否为0
		23=>"0010000010000000000000",--第23步：根据数据寄存器内容驱动总线，用总线加载计数器内容
		24=>"0000000000000000000000",--第24步：无
		25=>"1000000000100000000000");--第25步：在ALU中执行逻辑左移操作，用ALU的结果装载ACC
	signal count:unsigned(word_w-op_w-1 downto 0);
	signal op:std_logic_vector(op_w-1 downto 0);		
	signal z_flag:std_logic;                          
	signal mdr_out:std_logic_vector(word_w-1 downto 0);   
	signal mar_out:unsigned(word_w-op_w-1 downto 0);       
	signal ir_out:std_logic_vector(word_w-1 downto 0);    	
	signal acc_out:unsigned(word_w-1 downto 0);            	
	signal sysbus_out:std_logic_vector(word_w-1 downto 0);  
	begin	
	process(reset,clock)
		variable instr_rrr:std_logic_vector(word_w-1 downto 0);	
		variable acc:unsigned(word_w-1 downto 0);
		constant zero:unsigned(word_w-1 downto 0):=(others =>'0');		
		variable mdr:std_logic_vector(word_w-1 downto 0);
		variable rrr:std_logic_vector(word_w-1 downto 0);
		variable mar:unsigned(word_w-op_w-1 downto 0);
		variable sysbus:std_logic_vector(word_w-1 downto 0);			
		variable microcode:microcode_array;
		variable add_r:unsigned(4 downto 0);	
    	variable data_r:std_logic_vector(21 downto 0);
		variable temp:std_logic_vector(4 downto 0);
		variable count1 : natural;
	begin	
		if reset='0' then--如果reset=‘0’，就令寄存器的内容均为0
			add_r:=(others =>'0');
			count<=(others =>'0');
			instr_rrr:=(others =>'0');
			acc:=(others =>'0');
			mdr:=(others =>'0');
			rrr:=(others =>'0');
			mar:=(others =>'0');
			z_flag<='0';
			mem<= prog;
			sysbus:=(others =>'0');	
		elsif rising_edge(clock) then--否则，当clock上升沿或下降沿时
			data_r:=code(to_integer(add_r));--使data_r为第0步的微指令
			if data_r(4 downto 0)="11111" then--如果data_r的后五位是11111，也就是说在第三步
				temp:="01"&op(2 downto 0);--temp=01000（sta）
				add_r:=unsigned(temp);--add_r=temp=01000（sta）
			elsif data_r(4 downto 0)="11011" then--如果在sta的第八步
				if ir_out(0)='1' then--如果指令的末尾是1，即想要寄存器间接寻址
					add_r:="00101";--就去4+1=5，第五步（第五步接的是第七步）
				else
					add_r:="00100";--否则去第四步（接第六步）
				end if;
			elsif data_r(4 downto 0)="11100" then--如果在第九步add
				if ir_out(0)='1' then
					add_r:="10001";--17
				else
					add_r:="01111";--15-16
				end if;
			elsif data_r(4 downto 0)="11101" then--如果在22步
				if z_flag='1' then--z_flag=1去第23步
					add_r:="10111";
				else 
					add_r:="11000";--否则去24步
				end if;
			else
				add_r:=unsigned(data_r(4 downto 0));--都不是就去最后五个数字对应的那一步//所以add_r=1
			end if;
			data_r_out<=data_r;
			add_r_out<=std_logic_vector(add_r);
			
			--计数器
			if data_r(16)='1' then--pc_bus='1'
				sysbus:=rfill&std_logic_vector(count);--让总线等于000+count，共8位
			end if;
			if data_r(19)='1' then--load_pc='1'
				count<=unsigned(mdr(word_w-op_w-1 downto 0));--让count等于数据寄存器中的数据的0-5位，共5位
			elsif data_r(10)='1' then--inc_pc='1'
				count<=count+1;--count++
			else
				count<=count;--否则不变
			end if;
			
			--指令寄存器
			if data_r(15)='1' then--load_ir='1'
				instr_rrr:=mdr;--取数据寄存器的值
			end if;
			if data_r(9)='1' then--addr_bus='1'
			sysbus:='0'&rfill&instr_rrr(word_w-op_w-1 downto 1);--总线="0000"+instr_rrr的1-5位，共8位
			end if;
			op<=instr_rrr(word_w-1 downto word_w-op_w);--op=instr_rrr的后三位（5-8）
			ir_out<=instr_rrr;--输出
			op_out<=op;
			
			--alu算数逻辑模块
			if data_r(18)='1' then--acc_bus='1'//应该是load_reg='1'
				sysbus:=std_logic_vector(acc);--总线=累加器acc//所以应该是r寄存器等于总线的值//但是这么改了就死循环了 这部分逻辑有点迷
			end if;
			if data_r(20)='1' then --rrr_bus='1'
				sysbus:=std_logic_vector(rrr);--总线=r寄存器里的内容
			end if;
			if data_r(17)='1' then--load_acc='1'
				acc:=unsigned(mdr);--累加器内容=数据寄存器内容
			end if;
			if data_r(13)='1' then--mdr_bus='1'
				sysbus:=mdr;--总线=数据寄存器内容
			end if;
			
			if ir_out(0)='0' then
				if data_r(11)='1' then --alu_acc='1'
					if data_r(6)='1' then --alu_add='1'
						acc:=acc+unsigned(mdr);--累加器内容为它本身加上数据寄存器内容
					elsif data_r(5)='1' then--alu_sub='1'
						acc:=acc-unsigned(mdr);
					elsif data_r(12)='1' then--alu_and='1'
						acc:=acc and unsigned(mdr);
					elsif data_r(21)='1' then--alu_srl='1'
						acc:=acc(word_w-2 downto 0)&'0';
					end if;
				end if;
			else 
				if data_r(11)='1' then--alu_acc='1'
					if data_r(6)='1' then--alu_add='1'
						acc:=acc+unsigned(rrr);
					elsif data_r(12)='1' then--alu_and='1'
						acc:=acc and unsigned(rrr);
					elsif data_r(21)='1' then--alu_srl='1'
						acc:=acc(word_w-2 downto 0)&'0';
					end if;
				end if;
			end if;
				if acc=zero then
					z_flag<='1';
				else
					z_flag<='0';
			end if;
			acc_out<=acc;
			
			--存储器
			if data_r(14)='1' then--load_mar='1'
				mar:=unsigned(sysbus(word_w-op_w-1 downto 0));--地址寄存器内容为总线的0-5位，共5位
			elsif data_r(12)='1' then--load_mdr='1'
				mdr:=sysbus;--数据寄存器=总线
			elsif data_r(18)='1' then--load_rrr='1'
				rrr:=sysbus;
			elsif data_r(8)='1' then--cs='1'，在cs=1的情况下，如果r_nw也是1，就把存储器里的内容存到数据寄存器，如果r_nw是0，就把数据存储器的内容存到存储器。
				if data_r(7)='1' then--r_nw='1'
					mdr:=mem(to_integer(mar));--数据寄存器=mem_array(地址寄存器）也就是读取一条新的指令来执行。
				else
					mem(to_integer(mar))<=mdr;--mem_array(地址寄存器）=数据寄存器，把指令给改了。
				end if;	
			end if;			
			mdr_out <= mdr;
			mar_out <= mar;	
		end if;	
		sysbus_out <=sysbus;	
	end process;
	process(reset)
	begin
	if reset='0' then
		output<=(others=>'0');
	else
		output<=std_logic_vector(acc_out);
		--output<=ir_out;
	end if;
	end process;


end architecture;
