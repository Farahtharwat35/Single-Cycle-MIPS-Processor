library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mux2x1 is
GENERIC(N:NATURAL);
   Port ( i0 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           i1 : in  STD_LOGIC_VECTOR (n-1 downto 0);
           o : out  STD_LOGIC_VECTOR (n-1 downto 0);
           s : in  STD_LOGIC);
end mux2x1;

architecture mux of mux2x1 is

begin
o <= i0 WHEN s = '0' ELSE
i1 WHEN s = '1' ELSE
(OTHERS => 'Z');

end mux;