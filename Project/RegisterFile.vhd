library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
library work;
use work.Register_components.all;



entity RegisterFile is
    Port ( write_data : in  STD_LOGIC_VECTOR (31 downto 0);
           write_sel : in  STD_LOGIC_VECTOR (4 downto 0);
           write_ena : in  STD_LOGIC;
           data1 : out  STD_LOGIC_VECTOR (31 downto 0);
           data2 : out  STD_LOGIC_VECTOR (31 downto 0);
           read_sel1 : in  STD_LOGIC_VECTOR (4 downto 0);
           read_sel2 : in  STD_LOGIC_VECTOR (4 downto 0);
           clk : in  STD_LOGIC);
end RegisterFile;

architecture Behavioral of RegisterFile is
signal L : STD_LOGIC_VECTOR (31 downto 0);

Signal out0 : std_logic_vector (31 downto 0);
Signal out1 : std_logic_vector (31 downto 0);
Signal out2 : std_logic_vector (31 downto 0);
Signal out3 : std_logic_vector (31 downto 0);
Signal out4 : std_logic_vector (31 downto 0);
Signal out5 : std_logic_vector (31 downto 0);
Signal out6 : std_logic_vector (31 downto 0);
Signal out7 : std_logic_vector (31 downto 0);
Signal out8 : std_logic_vector (31 downto 0);
Signal out9 : std_logic_vector (31 downto 0);
Signal out10 : std_logic_vector (31 downto 0);
Signal out11 : std_logic_vector(31 downto 0);
Signal out12 : STD_LOGIC_VECTOR(31 downto 0);
Signal out13 : std_logic_vector(31 downto 0);
Signal out14 : std_logic_vector(31 downto 0);
Signal out15 : std_logic_vector (31 downto 0);
Signal out16 : std_logic_vector (31 downto 0);
Signal out17 : std_logic_vector (31 downto 0);
Signal out18 : std_logic_vector (31 downto 0);
Signal out19 : std_logic_vector (31 downto 0);
Signal out20 : std_logic_vector (31 downto 0);
Signal out21 : std_logic_vector (31 downto 0);
Signal out22 : std_logic_vector (31 downto 0);
Signal out23 : std_logic_vector (31 downto 0);
Signal out24 : std_logic_vector (31 downto 0);
Signal out25 : std_logic_vector (31 downto 0);
Signal out26 : std_logic_vector (31 downto 0);
Signal out27 : std_logic_vector (31 downto 0);
Signal out28 : std_logic_vector (31 downto 0);
Signal out29 : std_logic_vector (31 downto 0);
Signal out30 : std_logic_vector (31 downto 0);
Signal out31 : std_logic_vector (31 downto 0);

begin

	decoder1: decoder port map(I => write_sel, E => write_ena, O => L);
	
	reg1 : register_32 Port Map (load => L(1), inp  => write_data, clk => clk, q => out1);
	reg2 : register_32 Port Map (load => L(2), inp  => write_data, clk => clk, q => out2);
	reg3 : register_32 Port Map (load => L(3), inp  => write_data, clk => clk, q => out3);
	reg4 : register_32 Port Map (load => L(4), inp  => write_data, clk => clk, q => out4);
	reg5 : register_32 Port Map (load => L(5), inp  => write_data, clk => clk, q => out5);
	reg6 : register_32 Port Map (load => L(6), inp  => write_data, clk => clk, q => out6);
	reg7 : register_32 Port Map (load => L(7), inp  => write_data, clk => clk, q => out7);
	reg8 : register_32 Port Map (load => L(8), inp  => write_data, clk => clk, q => out8);
	reg9 : register_32 Port Map (load => L(9), inp  => write_data, clk => clk, q => out9);
	reg10 : register_32 Port Map (load => L(10), inp  => write_data, clk => clk, q => out10);
	reg11 : register_32 Port Map (load => L(11), inp  => write_data, clk => clk, q => out11);
	reg12 : register_32 Port Map (load => L(12), inp  => write_data, clk => clk, q => out12);
	reg13 : register_32 Port Map (load => L(13), inp  => write_data, clk => clk, q => out13);
	reg14 : register_32 Port Map (load => L(14), inp  => write_data, clk => clk, q => out14);
	reg15 : register_32 Port Map (load => L(15), inp  => write_data, clk => clk, q => out15);
	reg16 : register_32 Port Map (load => L(16), inp  => write_data, clk => clk, q => out16);
	reg17 : register_32 Port Map (load => L(17), inp  => write_data, clk => clk, q => out17);
	reg18 : register_32 Port Map (load => L(18), inp  => write_data, clk => clk, q => out18);
	reg19 : register_32 Port Map (load => L(19), inp  => write_data, clk => clk, q => out19);
	reg20 : register_32 Port Map (load => L(20), inp  => write_data, clk => clk, q => out20);
	reg21 : register_32 Port Map (load => L(21), inp  => write_data, clk => clk, q => out21);
	reg22 : register_32 Port Map (load => L(22), inp  => write_data, clk => clk, q => out22);
	reg23 : register_32 Port Map (load => L(23), inp  => write_data, clk => clk, q => out23);
	reg24 : register_32 Port Map (load => L(24), inp  => write_data, clk => clk, q => out24);
	reg25 : register_32 Port Map (load => L(25), inp  => write_data, clk => clk, q => out25);
	reg26 : register_32 Port Map (load => L(26), inp  => write_data, clk => clk, q => out26);
	reg27 : register_32 Port Map (load => L(27), inp  => write_data, clk => clk, q => out27);
	reg28 : register_32 Port Map (load => L(28), inp  => write_data, clk => clk, q => out28);
	reg29 : register_32 Port Map (load => L(29), inp  => write_data, clk => clk, q => out29);
	reg30 : register_32 Port Map (load => L(30), inp  => write_data, clk => clk, q => out30);
	reg31 : register_32 Port Map (load => L(31), inp  => write_data, clk => clk, q => out31);
	
	mux1: MUX port map (
	i0=>x"00000000",
	i1=>out1,
	i2=>out2,
	i3=>out3,
	i4=>out4,
	i5=>out5,
	i6=>out6,
	i7=>out7,
	i8=>out8,
	i9=>out9,
	i10=>out10,
	i11=>out11,
	i12=>out12,
	i13=>out13,
	i14=>out14,
	i15=>out15,
	i16=>out16,
	i17=>out17,
	i18=>out18,
	i19=>out19,
	i20=>out20,
	i21=>out21,
	i22=>out22,
	i23=>out23,
	i24=>out24,
	i25=>out25,
	i26=>out26,
	i27=>out27,
	i28=>out28,
	i29=>out29,
	i30=>out30,
	i31=>out31,
	s => read_sel1, 
	o => data1
	);
	
	mux2: MUX port map (
	i0=>x"00000000",
	i1=>out1,
	i2=>out2,
	i3=>out3,
	i4=>out4,
	i5=>out5,
	i6=>out6,
	i7=>out7,
	i8=>out8,
	i9=>out9,
	i10=>out10,
	i11=>out11,
	i12=>out12,
	i13=>out13,
	i14=>out14,
	i15=>out15,
	i16=>out16,
	i17=>out17,
	i18=>out18,
	i19=>out19,
	i20=>out20,
	i21=>out21,
	i22=>out22,
	i23=>out23,
	i24=>out24,
	i25=>out25,
	i26=>out26,
	i27=>out27,
	i28=>out28,
	i29=>out29,
	i30=>out30,
	i31=>out31,
	s => read_sel2, 
	o => data2
	);

end Behavioral;

