library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity bit1_alu is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
           op : in  STD_LOGIC_VECTOR (3 downto 0);
           cin : in  STD_LOGIC;
			  m : in STD_LOGIC;
           result : out  STD_LOGIC:
			  cout : out STD_LOGIC);
end bit1_alu;

architecture Behavioral of bit1_alu is

begin
	m <= '1' when op = "0110" else '0';
	
	result <= (a and b) when op = "0000" else
	(a or b) when op = "0001" else
	(a nor b) when op = "1100" else
	(())



end Behavioral;

