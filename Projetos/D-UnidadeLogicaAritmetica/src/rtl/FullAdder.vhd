-- Elementos de Sistemas
-- by Luciano Soares
-- FullAdder.vhd

-- Implementa Full Adder

Library ieee;
use ieee.std_logic_1164.all;

entity FullAdder is
	port(
		a,b,c:      in STD_LOGIC;   -- entradas
		soma,vaium: out STD_LOGIC   -- sum e carry
	);
end entity;

architecture rtl of FullAdder is
  -- Aqui declaramos sinais (fios auxiliares)
  -- e componentes (outros módulos) que serao
  -- utilizados nesse modulo.
  
  signal first_out : STD_LOGIC; --A xor B
  signal second_out : STD_LOGIC; -- first_out and C
  signal third_out : STD_LOGIC; --A and B
  

begin
  -- Implementação vem aqui!
  first_out <= a xor b;
  second_out <= first_out and  c;
  third_out <= a and b;
  
  soma <= first_out xor c;
  vaium <= second_out or third_out;

end architecture;
