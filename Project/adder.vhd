library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.numeric_std.all;

entity adder is
 port(
        signal data1, data2 : in std_logic_vector(31 downto 0);
        signal Result : out std_logic_vector(31 downto 0)
    );
end adder;

architecture Behavioral of adder is

begin
Result <= std_logic_vector((signed(data1)) + signed(data2));
end Behavioral;