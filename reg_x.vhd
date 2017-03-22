library ieee;
use ieee.std_logic_1164.all;
use ieee.Numeric_std.all;

entity reg_x is
	port(
			clk			: in std_logic;
			rst_n			: in std_logic;
			sel			: in std_logic;
			w_enable		: in std_logic;
			r_enable		: in std_logic;
			d_in			: in std_logic_vector(31 downto 0);
			d_out			: out std_logic_vector(31 downto 0)
		);
end reg_x;
		
architecture desc of reg_x is
begin
	
	process (clk, rst_n)
	begin
		if rst_n = '0' then
			d_out <= x"00000000";
		elsif clk'event and clk = '1' and sel = '1' then
			if w_enable = '1' then
				d_out <= d_in;
			end if;
		end if;
	end process;
		
		
end desc;