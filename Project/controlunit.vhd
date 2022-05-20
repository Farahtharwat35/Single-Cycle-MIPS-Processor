library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

entity controlunit is

PORT (
signal OPcode: in std_logic_vector(5 downto 0);
        --signal RegDst,Branch,MemRead,MemtoReg,MemWrite, ALUSrc,RegWrite,Jump: out std_logic;
       signal ALUop : out std_logic_vector(1 downto 0);
		signal REGDST, ALUSRC, MEMTOREG, REGWRITE, MEMREAD : out std_logic;
       signal MEMWRITE, BRANCH, JUMP : out std_logic);
end controlunit;

architecture Behavioral of controlunit is
--signal temp : std_logic_vector (9 downto 0):="ZZZZZZZZZZ";
begin
 process(Opcode)
            begin
                case OPCODE is
                    when "000000" =>   -- R-type instructions (AND, OR, ADD, SUB, SLT and NOR)
                        RegDst <= '1';
								Branch <= '0';
								MemRead <= '0';
								MemWrite <= '0';
                        ALUSrc <= '0';
								RegWrite <= '1';
                       MemtoReg <= '0';
                       Jump <= '0';                        
								ALUop <= "10";
							--temp <= "1000010010";
                    when "100011" =>   -- load word
                       RegDst <= '0';
                        ALUSrc <= '1';
                        MemtoReg <= '1';
                      RegWrite <= '1';
                        Memread <= '1';
                       Memwrite <= '0';
                        Branch <= '0';
                        Jump <= '0';
                       ALUop <= "00";
							--temp <= "0111100000";
                    when "101011" =>   -- store word
                      Regdst <= 'X';
                       ALUSrc <= '1';
                       MemtoReg <= 'X';
                        RegWrite <= '0';
                        MemRead <= '0';
                        MemWrite <= '1';
                       Branch <= '0';
                      Jump <= '0';
                       ALUop <= "00";
							--temp <= "X1X0010000";
                    when "000100" =>   -- branch equal
                       Regdst <= 'X';
                       ALUSrc <= '0';
                       MemtoReg <= 'X';
                       RegWrite <= '0';
                       MemRead <= '0';
                       MemWrite <= '0';
                        Branch <= '1';
                        Jump <= '0';
                       ALUop <= "01";
								--temp <= "X0X0001001";
						 when "000101" =>   -- branch not equal
                        Regdst <= 'X';
                        ALUSrc <= '0';
                        MEMTOREG <= 'X';
                       RegWrite <= '0';
                       MEMREAD <= '0';
                      MEMWRITE <= '0';
                       Branch <= '1';
                        Jump <= '0';
                      ALUOP <= "01";
								--temp <= "X0X0001001";
                    when "000010" =>   -- jump
                      Regdst <= 'X';
                       ALUsrc <= 'X';
                        MemtoReg <= 'X';
                       RegWrite <= '0';
                        Memread <= '0';
                        MemWrite <= '0';
                        Branch <= '0';
                        Jump <= '1';
                       ALUOP <= "XX";
                 --temp <= "XXX00001XX";
					  when others => 
                       RegDst <= 'X';
                       ALUSrc <= 'X';
                        MemtoReg <= 'X';
                        RegWrite <= '0';
                      MemRead <= '0';
                        MemWrite <= '0';
                        Branch <= '0';
                      Jump <= '0';
                       ALUop <= "XX";
								--temp <= "XXX00000XX";
                end case;
        end process;
--regdst <=temp(0);
--alusrc <=temp(1);
--memtoreg <= temp(2);
--regwrite <= temp(3);
--memread <= temp(4);
--memwrite <= temp(5);
--branch <= temp(6);
--jump <= temp(7);
--aluop <= temp(9 downto 8);
end Behavioral;