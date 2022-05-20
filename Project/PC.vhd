library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity PC is
    Port ( clk : in  STD_LOGIC;
           rst : in  STD_LOGIC;
           di : in  STD_LOGIC_VECTOR (31 downto 0);
           do : out  STD_LOGIC_VECTOR (31 downto 0));
end PC;

architecture Behavioral of PC is
signal current_add : Std_logic_vector (31 downto 0):=x"00000000";
begin
process(clk)
	begin
		if(clk'event and clk='1') then
			current_add <=di;
		end if;
	end process;
do <= current_add;
end Behavioral;