library IEEE;
use IEEE.STD_LOGIC_1164.ALL;


entity Alu_Control is
Port ( ALUop : in  STD_LOGIC_VECTOR (1 downto 0);
		  funct : in  STD_LOGIC_VECTOR (5 downto 0);
		  ALUcontrol : out  STD_LOGIC_VECTOR (3 downto 0));
end Alu_Control;

architecture Behavioral of Alu_Control is

begin
process(ALUop,funct)
begin
	case aluop is
			when "00" => alucontrol <="0010"; -- sw lw
			when "01" => alucontrol	<="0110"; --beq / bne
			when "10" => case funct is 
										when "100000" => alucontrol <= --add 
											"0010";
										when "100010" => alucontrol <= --sub
											"0110";
										when "100100" => alucontrol <= --and
											"0000";
										when "100101" => alucontrol <= --or
											"0001";
										when "101010" => alucontrol <= --slt
											"0111";
										when "100111" => alucontrol <= --nor
											"1100";
										when others => alucontrol <=
											"0000";
								end case;
			 when others => alucontrol <="XXXX";
			
end case;
end process;
end Behavioral;