library ieee;
use ieee.std_logic_1164.all;
use ieee.Numeric_std.all;

entity riscy_vee is
	
	port(
			clk_50		: in std_logic;
			rst_n			: in std_logic
		);
	signal x_rd_en	: std_logic;
	signal x_wr_en	: std_logic;
	signal x_addr	: std_logic_vector(7 downto 0);
	signal x_d_in	: std_logic_vector(31 downto 0);
	signal x_d_out	: std_logic_vector(31 downto 0);
	
	
end riscy_vee;

architecture desc of riscy_vee is
component x_registers
	port(
		clk	: in std_logic;
		w_en 	: in std_logic;
		r_en 	: in std_logic;
		d_in	: in std_logic_vector(31 downto 0);
		addr	: in std_logic_vector(7 downto 0);
		rst_n : in std_logic;
		d_out : out std_logic_vector(31 downto 0)
	);
end component;

begin
	x_r : x_registers port map(clk_50, x_wr_en, x_rd_en, x_d_in, x_addr, rst_n, x_d_out);

end desc;
