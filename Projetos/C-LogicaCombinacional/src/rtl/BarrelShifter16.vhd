library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity BarrelShifter16 is
	port ( 
			a:    in  STD_LOGIC_VECTOR(15 downto 0);   -- input vector
			dir:  in  std_logic;                       -- 0=>left 1=>right
			size: in  std_logic_vector(3 downto 0);    -- shift amount
			q:    out STD_LOGIC_VECTOR(15 downto 0));  -- output vector (shifted)
end entity;

architecture rtl of BarrelShifter16 is
begin

	q <= 	a(14 downto 0) & a(15          ) when dir='0' and size="0001" else
			a(13 downto 0) & a(15 downto 14) when dir='0' and size="0010" else
			a(12 downto 0) & a(15 downto 13) when dir='0' and size="0011" else
			a(11 downto 0) & a(15 downto 12) when dir='0' and size="0100" else
			a(10 downto 0) & a(15 downto 11) when dir='0' and size="0101" else
			a(9  downto 0) & a(15 downto 10) when dir='0' and size="0110" else
			a(8  downto 0) & a(15 downto 9 ) when dir='0' and size="0111" else
			a(7  downto 0) & a(15 downto 8 ) when dir='0' and size="1000" else
			a(6  downto 0) & a(15 downto 7 ) when dir='0' and size="1001" else
			a(5  downto 0) & a(15 downto 6 ) when dir='0' and size="1010" else
			a(4  downto 0) & a(15 downto 5 ) when dir='0' and size="1011" else
			a(3  downto 0) & a(15 downto 4 ) when dir='0' and size="1100" else
			a(2  downto 0) & a(15 downto 3 ) when dir='0' and size="1101" else
			a(1  downto 0) & a(15 downto 2 ) when dir='0' and size="1110" else
			a(0          ) & a(15 downto 1 ) when dir='0' and size="1111" else
			a 								 when dir='0' and size="0000" else
			a 								 when dir='1' and size="0000" else
	   		a(0) & a(15 downto 1)            when dir='1' and size="0001" else
	   		a(1  downto 0) & a(15 downto 2 ) when dir='1' and size="0010" else
	   		a(2  downto 0) & a(15 downto 3 ) when dir='1' and size="0011" else
			a(3  downto 0) & a(15 downto 4 ) when dir='1' and size="0100" else
			a(4  downto 0) & a(15 downto 5 ) when dir='1' and size="0101" else
			a(5  downto 0) & a(15 downto 6 ) when dir='1' and size="0110" else
			a(6  downto 0) & a(15 downto 7 ) when dir='1' and size="0111" else
			a(7  downto 0) & a(15 downto 8 ) when dir='1' and size="1000" else
			a(8  downto 0) & a(15 downto 9 ) when dir='1' and size="1001" else
			a(9  downto 0) & a(15 downto 10) when dir='1' and size="1010" else
			a(10 downto 0) & a(15 downto 11) when dir='1' and size="1011" else
			a(11 downto 0) & a(15 downto 12) when dir='1' and size="1100" else
			a(12 downto 0) & a(15 downto 13) when dir='1' and size="1101" else
			a(13 downto 0) & a(15 downto 14) when dir='1' and size="1110" else
			a(14 downto 0) & a(15) 		     when dir='1' and size="1111";

end architecture;
