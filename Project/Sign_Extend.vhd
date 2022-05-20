library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Sign_Extend is

PORT (
Instruction: in STD_LOGIC_VECTOR(15 DOWNTO 0);
Iextended: out STD_LOGIC_VECTOR(31 DOWNTO 0));

end Sign_Extend;

architecture Behavioral of Sign_Extend is
begin
	
process(Instruction)
	begin
	if(Instruction(15) = '1') then
		Iextended <= "1111111111111111" & Instruction(15 downto 0);
	else
		Iextended <= "0000000000000000" & Instruction(15 downto 0);
	end if;
end process;
--Iextended(15 downto 0)<=Instruction(15 downto 0); 
--with Instruction(15) select Iextended(31 downto 16) <= "1111111111111111" when '1', "00000000000000000" when others;	

end Behavioral;