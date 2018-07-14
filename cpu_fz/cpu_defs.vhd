library ieee;
use ieee.std_logic_1164.all;
package cpu_defs is
	type opcode is(sta,add,sub,and1,jmp,shl,nop);
	constant word_w:natural:=8;--代表8位
	constant op_w:natural:=3;--代表是sta还是add的3位
	constant rfill:std_logic_vector(op_w-1 downto 0):=(others=>'0');--rfill是000
	function op2slv(op:in opcode)return std_logic_vector;--一个函数
end package cpu_defs;

package body cpu_defs is --包体
	type optable is array(opcode) of std_logic_vector(op_w-1 downto 0);
	constant trans_table:optable:=("000","001","010", "011", "100", "101", "110");--000对应sta，110对应nop，中间一一对应
	function op2slv(op:in opcode)return std_logic_vector is
	begin
		return trans_table(op);--函数功能：op2slv(sta)就返回000
	end function op2slv;
end package body cpu_defs;