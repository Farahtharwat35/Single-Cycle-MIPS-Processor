
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
use IEEE.NUMERIC_STD.ALL;


entity alu_32_bit is
	port(
		data1 : in std_logic_vector(31 downto 0);
		data2 : in std_logic_vector(31 downto 0);
		aluop : in std_logic_vector(3 downto 0);
		cin : in std_logic;
		dataout: out std_logic_vector(31 downto 0);
		cflag: out std_logic;
		zflag: out std_logic;
		oflag: out std_logic
	);
end alu_32_bit;

architecture Behavioral of alu_32_bit is

begin
process(data1,data2,aluop)
variable temp : std_logic_vector(32 downto 0 ); -- to avoid overflow of 33 bits
variable result : std_logic_vector(31 downto 0);
variable cflagv , oflagv : std_logic;
variable not_data2 : std_logic_vector (31 downto 0);
begin 
	cflag <= '0';
	zflag <= '0';
	oflag <= '0';
	temp := "000000000000000000000000000000000"; -- 33 bits
	not_data2 := not(data2);
	case aluop is 
		when "0000" => --And
			result := (data1 and data2);
		when "0001" => --OR
			result := data1 or data2;
		when "0010" => --Add
			temp := std_logic_vector(signed((data1(31) & data1)) + signed((data2(31) & data2)));
			result:= temp(31 downto 0);
			cflagv := temp(32) xor (data1(31) OR data2(31));
			oflagv:= temp(32) xor temp(31);			
		when "0110" => --Sub
		   temp := (data1(31) & data1) + (not_data2(31) & not_data2) + cin;
			result:= temp(31 downto 0);
			cflagv := not temp(32);
			oflagv:= temp(32) xor temp(31);			
			
		when "1100" => --Nor
				result := data1 nor data2;
		when "0111" => --slt
				if(data1 < data2) then
					result := x"00000001";
				else
					result := x"00000000";
				end if;
		when others =>  result := "00000000000000000000000000000000";
		end case;
		if (result = "00000000000000000000000000000000") then 
		zflag <= '1'; 
		else zflag <= '0';
		end if;
	dataout <= result;
	--zflag <= '1' when result = "00000000000000000000000000000000" else '0';
	cflag <= cflagv;
	oflag <= oflagv;
end process;	


end Behavioral;

