library ieee;
use ieee.std_logic_1164.all;
use ieee.Numeric_std.all;

type reg_mux_in is array(31 downto 0) of std_logic_vector(31 downto 0);

entity x_registers is
	port(
		clk	: in std_logic;
		w_en 	: in std_logic;
		r_en 	: in std_logic;
		d_in	: in std_logic_vector(31 downto 0);
		addr	: in std_logic_vector(7 downto 0);
		rst_n : in std_logic
		);
end x_registers;

architecture desc of x_registers is
	component reg_x
		port(
			clk, rst_n	: in std_logic;
			sel			: in std_logic;
			w_enable		: in std_logic;
			r_enable		: in std_logic;
			d_in			: in std_logic_vector(31 downto 0);
			d_out			: out std_logic_vector(31 downto 0)
		);
	end component;
	signal reg_sel : std_logic_vector(31 downto 0);
	signal reg_mux : reg_mux_out;
begin
	GEN_R: for i in 0 to 31 generate
		reg_x_i: reg_x port map(clk, rst_n, reg_sel(i), w_en, r_en, d_in, reg_mux(i));
	end generate;
	
	d_out <= 
		
	
end desc