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

----------------------------
-- Entrada e saidas do bloco
----------------------------
entity TopLevel is
	port(
--			x,y:   in STD_LOGIC_VECTOR(15 downto 0); -- entradas de dados da ALU
			HEX0 	  : out std_logic_vector(0 to 6);
			HEX1 	  : out std_logic_vector(0 to 6);
			HEX2 	  : out std_logic_vector(0 to 6);
			HEX3 	  : out std_logic_vector(0 to 6);
			SW      : in  std_logic_vector(5 downto 0);
			LEDR    : out std_logic_vector(9 downto 0)
	);
end entity;

----------------------------
-- Implementacao do bloco -- 
----------------------------
architecture rtl of TopLevel is

--------------
-- signals
--------------

  signal x : std_logic_vector(15 downto 0) := x"0073"; -- 115
  signal y : std_logic_vector(15 downto 0) := x"005F"; -- 95
  signal saida2: std_logic_vector(15 downto 0);
--------------
-- component
--------------

  COMPONENT ALU
    PORT
      (
        x		:	 IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        y		:	 IN STD_LOGIC_VECTOR(15 DOWNTO 0);
        zx	    :	 IN STD_LOGIC;
        nx	    :	 IN STD_LOGIC;
        zy	    :	 IN STD_LOGIC;
        ny	    :	 IN STD_LOGIC;
        f		:	 IN STD_LOGIC;
        no	    :	 IN STD_LOGIC;
        zr	    :	 OUT STD_LOGIC;
        ng	    :	 OUT STD_LOGIC;
        saida	:	 OUT STD_LOGIC_VECTOR(15 DOWNTO 0)
        );
  END COMPONENT;
    

---------------
-- implementacao
---------------
begin

	--x <= "0000000001110011";
	--y <= "0000000001011111";
	
  ula0: ALU port map (
    x                  => x,
    Y                  => y,
    Zx                 => SW(0),
    Nx                 => SW(1),
    Zy                 => SW(2),
    Ny                 => SW(3),
    F                  => SW(4),
    No                 => SW(5),
    Zr                 => LEDR(8),
    Ng                 => LEDR(9),
    Saida(15 downto 0)  => saida2
   );


	 
	 HEX0 <= "0000001" when (saida2(3 downto 0) = "0000") else
		  "1001111" when (saida2(3 downto 0) = "0001") else
		  "0010010" when (saida2(3 downto 0) = "0010") else
		  "0000110" when (saida2(3 downto 0) = "0011") else
		  "1001100" when (saida2(3 downto 0) = "0100") else
		  "0100100" when (saida2(3 downto 0) = "0101") else
		  "0100000" when (saida2(3 downto 0) = "0110") else   
        "0001111" when (saida2(3 downto 0) = "0111") else
        "0000000" when (saida2(3 downto 0) = "1000") else
        "0001100" when (saida2(3 downto 0) = "1001") else
        "0001000" when (saida2(3 downto 0) = "1010") else
        "1100000" when (saida2(3 downto 0) = "1011") else
        "0110001" when (saida2(3 downto 0) = "1100") else
        "1000010" when (saida2(3 downto 0) = "1101") else
        "0110000" when (saida2(3 downto 0) = "1110") else
        "0111000" when (saida2(3 downto 0) = "1111");
		  
	HEX1 <=  "0000001" when (saida2(7 downto 4) = "0000") else
		   "1001111" when (saida2(7 downto 4) = "0001") else
		   "0010010" when (saida2(7 downto 4) = "0010") else
		   "0000110" when (saida2(7 downto 4) = "0011") else
		   "1001100" when (saida2(7 downto 4) = "0100") else
		   "0100100" when (saida2(7 downto 4) = "0101") else
		   "0100000" when (saida2(7 downto 4) = "0110") else   
         "0001111" when (saida2(7 downto 4) = "0111") else
         "0000000" when (saida2(7 downto 4) = "1000") else
         "0001100" when (saida2(7 downto 4) = "1001") else
         "0001000" when (saida2(7 downto 4) = "1010") else
         "1100000" when (saida2(7 downto 4) = "1011") else
         "0110001" when (saida2(7 downto 4) = "1100") else
         "1000010" when (saida2(7 downto 4) = "1101") else
         "0110000" when (saida2(7 downto 4) = "1110") else
         "0111000" when (saida2(7 downto 4) = "1111");	
			
	HEX2 <= "0000001" when (saida2(11 downto 8) = "0000") else
		  "1001111" when (saida2(11 downto 8) = "0001") else
		  "0010010" when (saida2(11 downto 8) = "0010") else
		  "0000110" when (saida2(11 downto 8) = "0011") else
		  "1001100" when (saida2(11 downto 8) = "0100") else
		  "0100100" when (saida2(11 downto 8) = "0101") else
		  "0100000" when (saida2(11 downto 8) = "0110") else   
        "0001111" when (saida2(11 downto 8) = "0111") else
        "0000000" when (saida2(11 downto 8) = "1000") else
        "0001100" when (saida2(11 downto 8) = "1001") else
        "0001000" when (saida2(11 downto 8) = "1010") else
        "1100000" when (saida2(11 downto 8) = "1011") else
        "0110001" when (saida2(11 downto 8) = "1100") else
        "1000010" when (saida2(11 downto 8) = "1101") else
        "0110000" when (saida2(11 downto 8) = "1110") else
        "0111000" when (saida2(11 downto 8) = "1111");
		  
	HEX3 <=  "0000001" when (saida2(15 downto 12) = "0000") else
		   "1001111" when (saida2(15 downto 12) = "0001") else
		   "0010010" when (saida2(15 downto 12) = "0010") else
		   "0000110" when (saida2(15 downto 12) = "0011") else
		   "1001100" when (saida2(15 downto 12) = "0100") else
		   "0100100" when (saida2(15 downto 12) = "0101") else
		   "0100000" when (saida2(15 downto 12) = "0110") else   
         "0001111" when (saida2(15 downto 12) = "0111") else
         "0000000" when (saida2(15 downto 12) = "1000") else
         "0001100" when (saida2(15 downto 12) = "1001") else
         "0001000" when (saida2(15 downto 12) = "1010") else
         "1100000" when (saida2(15 downto 12) = "1011") else
         "0110001" when (saida2(15 downto 12) = "1100") else
         "1000010" when (saida2(15 downto 12) = "1101") else
         "0110000" when (saida2(15 downto 12) = "1110") else
         "0111000" when (saida2(15 downto 12) = "1111");	

end rtl;
