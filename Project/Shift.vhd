library IEEE;
use IEEE.STD_LOGIC_1164.ALL;



entity Shift is
port ( di:in std_logic_vector (31 downto 0);
		  do : out std_logic_vector (31 downto 0));
end Shift;

architecture Behavioral of Shift is
begin
do <= di(29 downto 0) & "00";
end Behavioral;