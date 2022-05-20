library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity MUX is
   Port ( i0 : in  STD_LOGIC_VECTOR (31 downto 0);
           i1 : in  STD_LOGIC_VECTOR (31 downto 0);
           i2 : in  STD_LOGIC_VECTOR (31 downto 0);
           i3 : in  STD_LOGIC_VECTOR (31 downto 0);
           i4 : in  STD_LOGIC_VECTOR (31 downto 0);
           i5 : in  STD_LOGIC_VECTOR (31 downto 0);
           i6 : in  STD_LOGIC_VECTOR (31 downto 0);
           i7 : in  STD_LOGIC_VECTOR (31 downto 0);
           i8 : in  STD_LOGIC_VECTOR (31 downto 0);
           i9 : in  STD_LOGIC_VECTOR (31 downto 0);
           i10 : in  STD_LOGIC_VECTOR (31 downto 0);
           i11 : in  STD_LOGIC_VECTOR (31 downto 0);
           i12 : in  STD_LOGIC_VECTOR (31 downto 0);
           i13 : in  STD_LOGIC_VECTOR (31 downto 0);
           i14 : in  STD_LOGIC_VECTOR (31 downto 0);
           i15 : in  STD_LOGIC_VECTOR (31 downto 0);
           i16 : in  STD_LOGIC_VECTOR (31 downto 0);
           i17 : in  STD_LOGIC_VECTOR (31 downto 0);
           i18 : in  STD_LOGIC_VECTOR (31 downto 0);
           i19 : in  STD_LOGIC_VECTOR (31 downto 0);
           i20 : in  STD_LOGIC_VECTOR (31 downto 0);
           i21 : in  STD_LOGIC_VECTOR (31 downto 0);
           i22 : in  STD_LOGIC_VECTOR (31 downto 0);
           i23 : in  STD_LOGIC_VECTOR (31 downto 0);
           i24 : in  STD_LOGIC_VECTOR (31 downto 0);
           i25 : in  STD_LOGIC_VECTOR (31 downto 0);
           i26 : in  STD_LOGIC_VECTOR (31 downto 0);
           i27 : in  STD_LOGIC_VECTOR (31 downto 0);
           i28 : in  STD_LOGIC_VECTOR (31 downto 0);
           i29 : in  STD_LOGIC_VECTOR (31 downto 0);
           i30 : in  STD_LOGIC_VECTOR (31 downto 0);
           i31 : in  STD_LOGIC_VECTOR (31 downto 0);
           o : out  STD_LOGIC_VECTOR (31 downto 0);
           s : in  STD_LOGIC_VECTOR (4 downto 0));
end MUX;

architecture mux of MUX is

begin
o <= i0 WHEN s = "00000" ELSE
	i1 WHEN s = "00001" ELSE
	i2 WHEN s = "00010" ELSE
	i3 WHEN s = "00011" ELSE
	i4 WHEN s = "00100" ELSE
	i5 WHEN s = "00101" ELSE
	i6 WHEN s = "00110" ELSE
	i7 WHEN s = "00111" ELSE
	i8 WHEN s = "01000" ELSE
	i9 WHEN s = "01001" ELSE
	i10 WHEN s = "01010" ELSE
	i11 WHEN s = "01011" ELSE
	i12 WHEN s = "01100" ELSE
	i13 WHEN s = "01101" ELSE
	i14 WHEN s = "01110" ELSE
	i15 WHEN s = "01111" ELSE
	i16 WHEN s = "10000" ELSE
	i17 WHEN s = "10001" ELSE
	i18 WHEN s = "10010" ELSE
	i19 WHEN s = "10011" ELSE
	i20 WHEN s = "10100" ELSE
	i21 WHEN s = "10101" ELSE
	i22 WHEN s = "10110" ELSE
	i23 WHEN s = "10111" ELSE
	i24 WHEN s = "11000" ELSE
	i25 WHEN s = "11001" ELSE
	i26 WHEN s = "11010" ELSE
	i27 WHEN s = "11011" ELSE
	i28 WHEN s = "11100" ELSE
	i29 WHEN s = "11101" ELSE
	i30 WHEN s = "11110" ELSE
	i31 WHEN s = "11111" ELSE
	(OTHERS => 'Z');

end mux;