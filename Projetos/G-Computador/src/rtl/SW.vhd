-- Elementos de Sistemas
-- developed by Rafael Corsi
-- file: SW.vhd
-- date: 4/2019

library ieee;
use ieee.std_logic_1164.all;

entity SW is
  port(
    read : in std_logic;
    SW_in   : in std_logic_vector(15 downto 0);
    data_out : out std_logic_vector(15 downto 0)
    );
end entity;

architecture arch of SW is
begin

end architecture;
