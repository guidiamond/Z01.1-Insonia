--
-- Elementos de Sistemas - Aula 5 - Logica Combinacional
-- Rafael . Corsi @ insper . edu . br 
--
-- Arquivo exemplo para acionar os LEDs e ler os bottoes
-- da placa DE0-CV utilizada no curso de elementos de 
-- sistemas do 3s da eng. da computacao

----------------------------
-- Bibliotecas ieee       --
----------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;


----------------------------
-- Entrada e saidas do bloco
----------------------------
entity Hexadecimal is
	port(
		SW      : in  std_logic_vector(9 downto 0);
		HEX0 	  : out std_logic_vector(0 to 6);
		HEX1 	  : out std_logic_vector(0 to 6);
		HEX2 	  : out std_logic_vector(0 to 6);
		LEDR    : out std_logic_vector(9 downto 0)
	);
end entity;

----------------------------
-- Implementacao do bloco -- 
----------------------------
architecture rtl of Hexadecimal is

--------------
-- signals
--------------

---------------
-- implementacao
---------------
begin

HEX0 <= "0000001" when (SW(3 downto 0) = "0000") else
		  "1001111" when (SW(3 downto 0) = "0001") else
		  "0010010" when (SW(3 downto 0) = "0010") else
		  "0000110" when (SW(3 downto 0) = "0011") else
		  "1001100" when (SW(3 downto 0) = "0100") else
		  "0100100" when (SW(3 downto 0) = "0101") else
		  "0100000" when (SW(3 downto 0) = "0110") else   
        "0001111" when (SW(3 downto 0) = "0111") else
        "0000000" when (SW(3 downto 0) = "1000") else
        "0001100" when (SW(3 downto 0) = "1001") else
        "0001000" when (SW(3 downto 0) = "1010") else
        "1100000" when (SW(3 downto 0) = "1011") else
        "0110001" when (SW(3 downto 0) = "1100") else
        "1000010" when (SW(3 downto 0) = "1101") else
        "0110000" when (SW(3 downto 0) = "1110") else
        "0111000" when (SW(3 downto 0) = "1111");
		  
HEX1 <=  "0000001" when (SW(7 downto 4) = "0000") else
		   "1001111" when (SW(7 downto 4) = "0001") else
		   "0010010" when (SW(7 downto 4) = "0010") else
		   "0000110" when (SW(7 downto 4) = "0011") else
		   "1001100" when (SW(7 downto 4) = "0100") else
		   "0100100" when (SW(7 downto 4) = "0101") else
		   "0100000" when (SW(7 downto 4) = "0110") else   
         "0001111" when (SW(7 downto 4) = "0111") else
         "0000000" when (SW(7 downto 4) = "1000") else
         "0001100" when (SW(7 downto 4) = "1001") else
         "0001000" when (SW(7 downto 4) = "1010") else
         "1100000" when (SW(7 downto 4) = "1011") else
         "0110001" when (SW(7 downto 4) = "1100") else
         "1000010" when (SW(7 downto 4) = "1101") else
         "0110000" when (SW(7 downto 4) = "1110") else
         "0111000" when (SW(7 downto 4) = "1111");	
		  
HEX2 <=  "0000001" when (SW(9 downto 8) = "00") else
		   "1001111" when (SW(9 downto 8) = "01") else
		   "0010010" when (SW(9 downto 8) = "10") else
		   "0000110" when (SW(9 downto 8) = "11"); 		  

end rtl;
