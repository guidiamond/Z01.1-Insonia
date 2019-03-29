-- Elementos de Sistemas
-- developed by Luciano Soares
-- file: PC.vhd
-- date: 4/4/2017

-- Contador de 16bits
-- if (reset[t] == 1) out[t+1] = 0
-- else if (load[t] == 1)  out[t+1] = in[t]
-- else if (inc[t] == 1) out[t+1] = out[t] + 1
-- else out[t+1] = out[t]


library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity PC is
    port(
        clock     : in  STD_LOGIC;
        increment : in  STD_LOGIC;
        load      : in  STD_LOGIC;
        reset     : in  STD_LOGIC;
        input     : in  STD_LOGIC_VECTOR(15 downto 0);
        output    : out STD_LOGIC_VECTOR(15 downto 0)
    );
end entity;

architecture arch of PC is
  -- Aqui declaramos sinais (fios auxiliares)
  -- e componentes (outros módulos) que serao
  -- utilizados nesse modulo.
  component Inc16 is
    port(

        a: in STD_LOGIC_VECTOR(15 downto 0);
        q: out STD_LOGIC_VECTOR(15 downto 0)
  );
  end component;


  component inc16 is
  port(
    a   :  in STD_LOGIC_VECTOR(15 downto 0);
    q   : out STD_LOGIC_VECTOR(15 downto 0)
  );
  end component;

component Mux16 is
  port ( 
      a:   in  STD_LOGIC_VECTOR(15 downto 0);
      b:   in  STD_LOGIC_VECTOR(15 downto 0);
      sel: in  STD_LOGIC;
      q:   out STD_LOGIC_VECTOR(15 downto 0));
  end component;

component Register16 is
  port(
    clock:   in STD_LOGIC;
    input:   in STD_LOGIC_VECTOR(15 downto 0);
    load:    in STD_LOGIC;
    output: out STD_LOGIC_VECTOR(15 downto 0) := "0000000000000000"
  );
  end component;

  signal output_inc: STD_LOGIC_VECTOR(15 downto 0);
  signal output_s : STD_LOGIC_VECTOR(15 downto 0) ;
  signal mux0out, mux1out, mux2out, registerout: std_logic_vector(15 downto 0);

begin

   inc: Inc16 port map (output_s,output_inc);
   mux0: Mux16 port map(output_s, output_inc, increment, mux0out);
   mux1: Mux16 port map(mux0out, input, load, mux1out);
   mux2: Mux16 port map(mux1out, "0000000000000000", reset, mux2out);
   regiser1: Register16 port map(clock, mux2out, '1', output_s);
   output <= output_s;

  --process(clock)
  --begin
    --if (rising_edge(clock)) then
      --if (reset = '1') then
        --output_s <= "0000000000000000";
      --elsif (load = '1') then
       -- output_s <= input;
      --elsif (increment = '1') then
        --output_s <= output_inc;
      --else
      --  output_s <= output;
    --  end if;
  --  end if;
--  end process;

--    output <= output_s;


end architecture;
