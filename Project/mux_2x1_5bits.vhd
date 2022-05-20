library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity mux_2x1_5bits is
    Port ( i0 : in  STD_LOGIC_VECTOR (4 downto 0);
           i1 : in  STD_LOGIC_VECTOR (4 downto 0);
           s : in  STD_LOGIC;
           o : out  STD_LOGIC_VECTOR (4 downto 0));
end mux_2x1_5bits;


architecture mux of mux2x1 is

begin
o <= i0 WHEN s = '0' ELSE
i1 WHEN s = '1' ELSE
(OTHERS => 'Z');

end mux;
