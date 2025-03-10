library IEEE;
use IEEE.std_logic_1164.all;

entity mux21_tb is
end;

architecture mux21_tb_arq of mux21_tb is

-- no declaro el componente uso entity
	
	-- Declaracion de senales de prueba
	signal a_tb: std_logic := '0';
	signal b_tb: std_logic := '0';
	signal sel_tb: std_logic := '0';
	signal s_tb: std_logic;

begin

	--a_tb <= '1' after 100 ns, '0' after 500 ns;
	--b_tb <= '1' after 200 ns, '0' after 400 ns;
	--sel_tb <= '1' after 150 ns, '0' after 900 ns;

	a_tb <= not a_tb after 10 ns;
	b_tb <= not b_tb after 20 ns;
	sel_tb <= not sel_tb after 40 ns;


	DUT: entity work.mux21

		port map(
			a_i	 => a_tb, 
			b_i	 => b_tb,
			sel_i => sel_tb,
			s_o	 => s_tb
		);

	
end;