library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Mux4Way is
	port ( 
			a:   in  STD_LOGIC;
			b:   in  STD_LOGIC;
			c:   in  STD_LOGIC;
			d:   in  STD_LOGIC;
			sel: in  STD_LOGIC_VECTOR(1 downto 0);
			q:   out STD_LOGIC);
end entity;

architecture arch of Mux4Way is
begin

	q <= (a and not sel(0) and not sel(1)) or
		 (b and     sel(0) and not sel(1)) or
		 (c and not sel(0) and     sel(1)) or
		 (d and     sel(0) and     sel(1));

end architecture;
