library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity register_32 is
port (

	load : in STD_Logic;
	inp : in STD_LOGIC_Vector (31 downto 0);
	clk : in STD_LOGIC;
	q :out STD_logic_vector (31 downto 0)
);
end register_32;

architecture register_32 of register_32 is

begin
process (clk)
begin
	if (clk'event and clk='1' and load='1') then 
		q<= inp;
	end if;

end process;

end register_32;