library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux4Way16 is
	port ( 
			a:   in  STD_LOGIC_VECTOR(15 downto 0);
			b:   in  STD_LOGIC_VECTOR(15 downto 0);
			c:   in  STD_LOGIC_VECTOR(15 downto 0);
			d:   in  STD_LOGIC_VECTOR(15 downto 0);
			sel: in  STD_LOGIC_VECTOR(1 downto 0);
			q:   out STD_LOGIC_VECTOR(15 downto 0));
end entity;

architecture arch of Mux4Way16 is
begin

q <= (a and not sel(0) and not sel(1)) or (b and not sel(1) and sel(0)) or (c and sel(0) and not sel(1)) or (d and sel(0) and sel(1));

end architecture;
