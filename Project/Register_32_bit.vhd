library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Register_32_bit is
port (

	load : in STD_Logic;
	inp : in STD_LOGIC_Vector (31 downto 0);
	clk : in STD_LOGIC;
	q :out STD_logic_vector (31 downto 0)
);
end Register_32_bit;

architecture register_32_bit of Register_32_bit is

begin
process (clk)
begin
	if (clk'event and clk='1' and load='1') then 
		q<= inp;
	end if;

end process;

end register_32_bit;