-- Elementos de Sistemas
-- by Luciano Soares
-- Ram64.vhd

Library ieee;
use ieee.std_logic_1164.all;

entity Ram64 is
	port(
		clock:   in  STD_LOGIC;
		input:   in  STD_LOGIC_VECTOR(15 downto 0);
		load:    in  STD_LOGIC;
		address: in  STD_LOGIC_VECTOR( 5 downto 0);
		output:  out STD_LOGIC_VECTOR(15 downto 0)
	);
end entity;



architecture arch of Ram64 is
  -- Aqui declaramos sinais (fios auxiliares)
  -- e componentes (outros módulos) que serao
  -- utilizados nesse modulo.

component Ram8 is
	port(
		clock:   in STD_LOGIC;
		input:   in STD_LOGIC_VECTOR(15 downto 0);
		load:    in STD_LOGIC;
		address: in  STD_LOGIC_VECTOR( 2 downto 0);
		output: out STD_LOGIC_VECTOR(15 downto 0)
	);
end component;

component Mux8Way16 is
	port ( 
			a:   in  STD_LOGIC_VECTOR(15 downto 0);
			b:   in  STD_LOGIC_VECTOR(15 downto 0);
			c:   in  STD_LOGIC_VECTOR(15 downto 0);
			d:   in  STD_LOGIC_VECTOR(15 downto 0);
			e:   in  STD_LOGIC_VECTOR(15 downto 0);
			f:   in  STD_LOGIC_VECTOR(15 downto 0);
			g:   in  STD_LOGIC_VECTOR(15 downto 0);
			h:   in  STD_LOGIC_VECTOR(15 downto 0);
			sel: in  STD_LOGIC_VECTOR(2  downto 0);
			q:   out STD_LOGIC_VECTOR(15 downto 0)
		);
end component;

component DMux8Way is
	port ( 
			a:   in  STD_LOGIC;
			sel: in  STD_LOGIC_VECTOR(2 downto 0);
			q0:  out STD_LOGIC;
			q1:  out STD_LOGIC;
			q2:  out STD_LOGIC;
			q3:  out STD_LOGIC;
			q4:  out STD_LOGIC;
			q5:  out STD_LOGIC;
			q6:  out STD_LOGIC;
			q7:  out STD_LOGIC
		);
end component;

signal  vet0,vet1,vet2,vet3,vet4,vet5,vet6,vet7  														 : STD_LOGIC;
signal  stored_vet0,stored_vet1,stored_vet2,stored_vet3,stored_vet4,stored_vet5,stored_vet6,stored_vet7  : STD_LOGIC_VECTOR(15 downto 0);

begin

	chose_memory_destination: DMux8Way port map(load, address(5 downto 3), vet0, vet1, vet2, vet3, vet4, vet5, vet6, vet7);
	vector0_creator: Ram8 port map(clock, input, vet0, address(2 downto 0), stored_vet0);
	vector1_creator: Ram8 port map(clock, input, vet1, address(2 downto 0), stored_vet1);
	vector2_creator: Ram8 port map(clock, input, vet2, address(2 downto 0), stored_vet2);
	vector3_creator: Ram8 port map(clock, input, vet3, address(2 downto 0), stored_vet3);
	vector4_creator: Ram8 port map(clock, input, vet4, address(2 downto 0), stored_vet4);
	vector5_creator: Ram8 port map(clock, input, vet5, address(2 downto 0), stored_vet5);
	vector6_creator: Ram8 port map(clock, input, vet6, address(2 downto 0), stored_vet6);
	vector7_creator: Ram8 port map(clock, input, vet7, address(2 downto 0), stored_vet7);


	read_memory: Mux8Way16 port map(stored_vet0, stored_vet1, stored_vet2, stored_vet3, stored_vet4, stored_vet5, stored_vet6, stored_vet7, address(5 downto 3), output);



end architecture;
