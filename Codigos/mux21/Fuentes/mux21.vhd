library IEEE;
use IEEE.std_logic_1164.all;

entity mux21 is
	port(
		a_i: in std_logic;
		b_i: in std_logic;
		sel_i: in std_logic;
		s_o: out std_logic
	);
end;

architecture mux21_arq of mux21 is
	--Parte declarativa
	signal a_aux: std_logic;
	signal b_aux: std_logic;

begin
	--Parte descriptiva

	a_aux <= a_i and sel_i;
	b_aux <= b_i and (not sel_i); 
	s_o   <= a_aux or b_aux;

	
end;