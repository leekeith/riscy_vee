library ieee;
use ieee.std_logic_1164.all;
use ieee.Numeric_std.all;

entity reg_x is
	port(
			clk, rst_n	: in std_logic;
			sel			: in std_logic:
			w_enable		: in std_logic;
			r_enable		: in std_logic;
			d_in			: in std_logic_vector(31 downto 0);
			d_out			: out std_logic_vector(31 downto 0)
		);
end reg_x;
		
architecture desc of reg_x is
	signal d_reg : std_logic_vector(31 downto 0);
begin
	with r_enable select d_out <=
		d_reg when "1",
		16#00000000# when others;
		
	process (clk, rst_n)
	begin
		if rst_n = "1" then
			d_reg <= 16#00000000#;
		end if;
		if clk'event and clk = "1" and sel = "1" then
			if w_enable = "1" then
				d_reg <= d_in;
			end if;
		end if;
	end process;
		
		
end desc;