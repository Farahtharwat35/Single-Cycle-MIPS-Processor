--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package Register_components is COMPONENT Decoder IS
PORT( I : in  STD_LOGIC_VECTOR (4 downto 0);
 		E : in STD_LOGIC;
      O : out  STD_LOGIC_VECTOR (31 downto 0));
END COMPONENT;
COMPONENT register_32 is 
port (

load : in STD_Logic;
inp : in STD_LOGIC_Vector (31 downto 0);
clk : in STD_LOGIC;
q :out STD_logic_vector (31 downto 0)
);

END COMPONENT;

COMPONENT MUX IS 
 Port ( i0 : in  STD_LOGIC_VECTOR (31 downto 0);
				i1 : in  STD_LOGIC_VECTOR (31 downto 0);
				i2 : in  STD_LOGIC_VECTOR (31 downto 0);
				i3 : in  STD_LOGIC_VECTOR (31 downto 0);
				i4 : in  STD_LOGIC_VECTOR (31 downto 0);
				i5 : in  STD_LOGIC_VECTOR (31 downto 0);
				i6 : in  STD_LOGIC_VECTOR (31 downto 0);
				i7 : in  STD_LOGIC_VECTOR (31 downto 0);
				i8 : in  STD_LOGIC_VECTOR (31 downto 0);
				i9 : in  STD_LOGIC_VECTOR (31 downto 0);
				i10 : in  STD_LOGIC_VECTOR (31 downto 0);
				i11 : in  STD_LOGIC_VECTOR (31 downto 0);
				i12 : in  STD_LOGIC_VECTOR (31 downto 0);
				i13 : in  STD_LOGIC_VECTOR (31 downto 0);
				i14 : in  STD_LOGIC_VECTOR (31 downto 0);
				i15 : in  STD_LOGIC_VECTOR (31 downto 0);
				i16 : in  STD_LOGIC_VECTOR (31 downto 0);
				i17 : in  STD_LOGIC_VECTOR (31 downto 0);
				i18 : in  STD_LOGIC_VECTOR (31 downto 0);
				i19 : in  STD_LOGIC_VECTOR (31 downto 0);
				i20 : in  STD_LOGIC_VECTOR (31 downto 0);
				i21 : in  STD_LOGIC_VECTOR (31 downto 0);
				i22 : in  STD_LOGIC_VECTOR (31 downto 0);
				i23 : in  STD_LOGIC_VECTOR (31 downto 0);
				i24 : in  STD_LOGIC_VECTOR (31 downto 0);
				i25 : in  STD_LOGIC_VECTOR (31 downto 0);
				i26 : in  STD_LOGIC_VECTOR (31 downto 0);
				i27 : in  STD_LOGIC_VECTOR (31 downto 0);
				i28 : in  STD_LOGIC_VECTOR (31 downto 0);
				i29 : in  STD_LOGIC_VECTOR (31 downto 0);
				i30 : in  STD_LOGIC_VECTOR (31 downto 0);
				i31 : in  STD_LOGIC_VECTOR (31 downto 0);
				o : out  STD_LOGIC_VECTOR (31 downto 0);
				s : in  STD_LOGIC_VECTOR (4 downto 0));
END COMPONENT;


 
end Register_components;