library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
entity shuchu is
port
(
	clk_50m : in std_logic;--50M晶振脉冲输入
	--mode:in bit_vector(2 downto 0);
	hex_0,hex_1 : in std_logic_vector( 7 downto 0 );--output
	cout : buffer std_logic_vector( 7 downto 0 );--输出八位
	se : out std_logic_vector( 5 downto 0 )  --选择输出译码管
);
end shuchu;
architecture part of shuchu is
	signal sel : STD_LOGIC_VECTOR( 2 downto 0 );--用作循环
begin
	scan : process( clk_50m )
	variable count : natural;
	begin
		if ( clk_50m'event and clk_50m = '1' ) then--分频
			count := count + 1;
			if ( count = 10000 ) then
				count := 0;--分频
				if ( sel > "000" ) then sel <= "000";--循环过程
				else sel <= sel + 1;
				end if;
			end if;
		end if;
		case sel is--选择输出的内容和输出的译码管
			when "000" => cout <= hex_0; se <= "101111";--数码管为共阳极数码管，低有效
			when "001" => cout <= hex_1; se <= "011111";
			when others => se <= "111111";
		end case;
	end process scan;
end part;