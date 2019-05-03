library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Display is
	port ( 
			SW:  in  STD_LOGIC_VECTOR(3 downto 0);
			HEX0:  out STD_LOGIC_VECTOR(6 downto 0);
			)
end entity;

architecture rtl of Display is
begin

HEX0 <= "1111110" when (SW = '0000') else
		  "0110000" when (SW = '0001') else
		  "1111101" when (SW = '0010') else
		  "1111001" when (SW = '0011') else
		  "0110011" when (SW = '0100') else
		  "1110011" when (SW = '0101') else
		  "1011111" when (SW = '0110') else   
        "1110000" when (SW = '0111') else
        "1111111" when (SW = '1000') else
        "1110011" when (SW = '1001') else
        "1110111" when (SW = '1010') else
        "0011111" when (SW = '1011') else
        "1001110" when (SW = '1100') else
        "0111101" when (SW = '1101') else
        "1001111" when (SW = '1110') else
        "1000111" when (SW = '1111');


end architecture;