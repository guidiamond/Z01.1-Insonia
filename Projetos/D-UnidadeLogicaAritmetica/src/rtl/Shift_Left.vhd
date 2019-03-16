library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity shift_right is
   port(
	     a    : in STD_LOGIC_VECTOR(15 downto 0);
       sel  : in STD_LOGIC;
       q   : out STD_LOGIC_VECTOR(15 downto 0)
   );
end comparador16;

architecture rtl of comparador16 is
  -- Aqui declaramos sinais (fios auxiliares)
  -- e componentes (outros módulos) que serao
  -- utilizados nesse modulo.

begin
  
  q(0)  <=   '0' when sel='1' else  a(0);
  q(1)  <=  a(0) when sel='1' else  a(1);
  q(2)  <=  a(1) when sel='1' else  a(2);
  q(3)  <=  a(2) when sel='1' else  a(3);
  q(4)  <=  a(3) when sel='1' else  a(4);
  q(5)  <=  a(4) when sel='1' else  a(5);
  q(6)  <=  a(5) when sel='1' else  a(6);
  q(7)  <=  a(6) when sel='1' else  a(7);
  q(8)  <=  a(7) when sel='1' else  a(8);
  q(9)  <=  a(8) when sel='1' else  a(9);
  q(10) <=  a(9) when sel='1' else a(10);
  q(11) <= a(10) when sel='1' else a(11);
  q(12) <= a(11) when sel='1' else a(12);
  q(13) <= a(12) when sel='1' else a(13);
  q(14) <= a(13) when sel='1' else a(14);
  q(15) <= a(14) when sel='1' else a(15);
  

end architecture;