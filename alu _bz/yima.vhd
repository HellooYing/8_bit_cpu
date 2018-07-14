library ieee;
use ieee.std_logic_1164.all;

entity yima is
port (	clk : in std_logic;--时钟信号输入端
		output:in std_logic_vector(7 downto 0);--最大255
		hex_0,hex_1 : buffer std_logic_vector( 7 downto 0 )--编码输出
		);
end yima;
architecture part of yima is
constant num_0 : std_logic_vector( 7 downto 0 ) := X"c0";--整数转换八段数码管编码,高电平有效
constant num_1 : std_logic_vector( 7 downto 0 ) := X"f9";
constant num_2 : std_logic_vector( 7 downto 0 ) := X"a4";
constant num_3 : std_logic_vector( 7 downto 0 ) := X"b0";
constant num_4 : std_logic_vector( 7 downto 0 ) := X"99";
constant num_5 : std_logic_vector( 7 downto 0 ) := X"92";
constant num_6 : std_logic_vector( 7 downto 0 ) := X"82";
constant num_7 : std_logic_vector( 7 downto 0 ) := X"f8";
constant num_8 : std_logic_vector( 7 downto 0 ) := X"80";
constant num_9 : std_logic_vector( 7 downto 0 ) := X"90";
constant num_a : std_logic_vector( 7 downto 0 ) := X"88";
constant num_b : std_logic_vector( 7 downto 0 ) := X"83";
constant num_c : std_logic_vector( 7 downto 0 ) := X"c6";
constant num_d : std_logic_vector( 7 downto 0 ) := X"a1";
constant num_e : std_logic_vector( 7 downto 0 ) := X"86";
constant num_f : std_logic_vector( 7 downto 0 ) := X"8e";

begin
	process(clk)
	variable temp_0,temp_1 : std_logic_vector (3 downto 0) ;
	begin
		temp_0 := output(3 downto 0);--个位
		temp_1 := output(7 downto 4);--十位
      --temp_0 := "0000";--个位
		--temp_1 := "0000";--十位
		case temp_0 is--对每一位的编码
			when "0000" => hex_0 <= num_0;--转换编码的过程
			when "0001" => hex_0 <= num_1;
			when "0010" => hex_0 <= num_2;
			when "0011" => hex_0 <= num_3;
			when "0100" => hex_0 <= num_4;
			when "0101" => hex_0 <= num_5;
			when "0110" => hex_0 <= num_6;
			when "0111" => hex_0 <= num_7;
			when "1000" => hex_0 <= num_8;
			when "1001" => hex_0 <= num_9;
			when "1010" => hex_0 <= num_a;
			when "1011" => hex_0 <= num_b;
			when "1100" => hex_0 <= num_c;
			when "1101" => hex_0 <= num_d;
			when "1110" => hex_0 <= num_e;
			when "1111" => hex_0 <= num_f;
			when others => null;
		end case;
		case temp_1 is
			when "0000" => hex_1 <= num_0;--转换编码的过程
			when "0001" => hex_1 <= num_1;
			when "0010" => hex_1 <= num_2;
			when "0011" => hex_1 <= num_3;
			when "0100" => hex_1 <= num_4;
			when "0101" => hex_1 <= num_5;
			when "0110" => hex_1 <= num_6;
			when "0111" => hex_1 <= num_7;
			when "1000" => hex_1 <= num_8;
			when "1001" => hex_1 <= num_9;
			when "1010" => hex_1 <= num_a;
			when "1011" => hex_1 <= num_b;
			when "1100" => hex_1 <= num_c;
			when "1101" => hex_1 <= num_d;
			when "1110" => hex_1 <= num_e;
			when "1111" => hex_1 <= num_f;
			when others => null;
		end case;
		end process;
end part;