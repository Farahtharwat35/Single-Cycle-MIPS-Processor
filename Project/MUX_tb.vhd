--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:22:48 04/30/2022
-- Design Name:   
-- Module Name:   D:/arc/Project/MUX_tb.vhd
-- Project Name:  Project
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: MUX
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY MUX_tb IS
END MUX_tb;
 
ARCHITECTURE behavior OF MUX_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT MUX
    PORT(
         i0 : IN  std_logic_vector(31 downto 0);
         i1 : IN  std_logic_vector(31 downto 0);
         i2 : IN  std_logic_vector(31 downto 0);
         i3 : IN  std_logic_vector(31 downto 0);
         i4 : IN  std_logic_vector(31 downto 0);
         i5 : IN  std_logic_vector(31 downto 0);
         i6 : IN  std_logic_vector(31 downto 0);
         i7 : IN  std_logic_vector(31 downto 0);
         i8 : IN  std_logic_vector(31 downto 0);
         i9 : IN  std_logic_vector(31 downto 0);
         i10 : IN  std_logic_vector(31 downto 0);
         i11 : IN  std_logic_vector(31 downto 0);
         i12 : IN  std_logic_vector(31 downto 0);
         i13 : IN  std_logic_vector(31 downto 0);
         i14 : IN  std_logic_vector(31 downto 0);
         i15 : IN  std_logic_vector(31 downto 0);
         i16 : IN  std_logic_vector(31 downto 0);
         i17 : IN  std_logic_vector(31 downto 0);
         i18 : IN  std_logic_vector(31 downto 0);
         i19 : IN  std_logic_vector(31 downto 0);
         i20 : IN  std_logic_vector(31 downto 0);
         i21 : IN  std_logic_vector(31 downto 0);
         i22 : IN  std_logic_vector(31 downto 0);
         i23 : IN  std_logic_vector(31 downto 0);
         i24 : IN  std_logic_vector(31 downto 0);
         i25 : IN  std_logic_vector(31 downto 0);
         i26 : IN  std_logic_vector(31 downto 0);
         i27 : IN  std_logic_vector(31 downto 0);
         i28 : IN  std_logic_vector(31 downto 0);
         i29 : IN  std_logic_vector(31 downto 0);
         i30 : IN  std_logic_vector(31 downto 0);
         i31 : IN  std_logic_vector(31 downto 0);
         o : OUT  std_logic_vector(31 downto 0);
         s : IN  std_logic_vector(4 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal i0 : std_logic_vector(31 downto 0) := (others => '0');
   signal i1 : std_logic_vector(31 downto 0) := (others => '0');
   signal i2 : std_logic_vector(31 downto 0) := (others => '0');
   signal i3 : std_logic_vector(31 downto 0) := (others => '0');
   signal i4 : std_logic_vector(31 downto 0) := (others => '0');
   signal i5 : std_logic_vector(31 downto 0) := (others => '0');
   signal i6 : std_logic_vector(31 downto 0) := (others => '0');
   signal i7 : std_logic_vector(31 downto 0) := (others => '0');
   signal i8 : std_logic_vector(31 downto 0) := (others => '0');
   signal i9 : std_logic_vector(31 downto 0) := (others => '0');
   signal i10 : std_logic_vector(31 downto 0) := (others => '0');
   signal i11 : std_logic_vector(31 downto 0) := (others => '0');
   signal i12 : std_logic_vector(31 downto 0) := (others => '0');
   signal i13 : std_logic_vector(31 downto 0) := (others => '0');
   signal i14 : std_logic_vector(31 downto 0) := (others => '0');
   signal i15 : std_logic_vector(31 downto 0) := (others => '0');
   signal i16 : std_logic_vector(31 downto 0) := (others => '0');
   signal i17 : std_logic_vector(31 downto 0) := (others => '0');
   signal i18 : std_logic_vector(31 downto 0) := (others => '0');
   signal i19 : std_logic_vector(31 downto 0) := (others => '0');
   signal i20 : std_logic_vector(31 downto 0) := (others => '0');
   signal i21 : std_logic_vector(31 downto 0) := (others => '0');
   signal i22 : std_logic_vector(31 downto 0) := (others => '0');
   signal i23 : std_logic_vector(31 downto 0) := (others => '0');
   signal i24 : std_logic_vector(31 downto 0) := (others => '0');
   signal i25 : std_logic_vector(31 downto 0) := (others => '0');
   signal i26 : std_logic_vector(31 downto 0) := (others => '0');
   signal i27 : std_logic_vector(31 downto 0) := (others => '0');
   signal i28 : std_logic_vector(31 downto 0) := (others => '0');
   signal i29 : std_logic_vector(31 downto 0) := (others => '0');
   signal i30 : std_logic_vector(31 downto 0) := (others => '0');
   signal i31 : std_logic_vector(31 downto 0) := (others => '0');
   signal s : std_logic_vector(4 downto 0) := (others => '0');

 	--Outputs
   signal o : std_logic_vector(31 downto 0);

 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: MUX PORT MAP (
          i0 => i0,
          i1 => i1,
          i2 => i2,
          i3 => i3,
          i4 => i4,
          i5 => i5,
          i6 => i6,
          i7 => i7,
          i8 => i8,
          i9 => i9,
          i10 => i10,
          i11 => i11,
          i12 => i12,
          i13 => i13,
          i14 => i14,
          i15 => i15,
          i16 => i16,
          i17 => i17,
          i18 => i18,
          i19 => i19,
          i20 => i20,
          i21 => i21,
          i22 => i22,
          i23 => i23,
          i24 => i24,
          i25 => i25,
          i26 => i26,
          i27 => i27,
          i28 => i28,
          i29 => i29,
          i30 => i30,
          i31 => i31,
          o => o,
          s => s
        );

   -- Clock process definitions


   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
		i0 <= "00000000000000000000000000000001";
		i1 <= "00000000000000000000000000000010";
		i2 <= "00000000000000000000000000000100";
		i3 <= "00000000000000000000000000001000";
		i4 <= "00000000000000000000000000010000";
		i5 <= "00000000000000000000000000100000";
		i6 <= "00000000000000000000000001000000";
		i7 <= "00000000000000000000000010000000";
		i8 <= "00000000000000000000000100000000";
		i9 <= "00000000000000000000001000000000";
		i10 <= "00000000000000000000100000000000";
		i11 <= "00000000000000000001000000000000";
		i12 <= "00000000000000000010000000000000";
		i13 <= "00000000000000000100000000000000";
		i14 <= "00000000000000001000000000000000";
		i15 <= "00000000000000010000000000000000";
		i16 <= "00000000000000100000000000000000";
		i17 <= "00000000000001000000000000000000";
		i18 <= "00000000000010000000000000000000";
		i19 <= "00000000000100000000000000000000";
		i20 <= "00000000001000000000000000000000";
		i21 <= "00000000010000000000000000000000";
		i22 <= "00000000100000000000000000000000";
		i23 <= "00000001000000000000000000000000";
		i24 <= "00000010000000000000000000000000";
		i25 <= "00000100000000000000000000000000";
		i26 <= "00001000000000000000000000000000";
		i27 <= "00010000000000000000000000000000";
		i28 <= "00100000000000000000000000000000";
		i29 <= "01000000000000000000000000000000";
		i30 <= "10000000000000000000000000000000";
		i31 <= "10000000000000000000000000000001";
		s <= "00000";
      wait for 100 ns;	
		s <= "00001";
      wait for 100 ns;	
		s <= "00010";
      wait for 100 ns;	
		s <= "00011";
      wait for 100 ns;
		s <= "00111";
      wait for 100 ns;
		s <= "00110";
      wait for 100 ns;
		s <= "01110";

			
		

      -- insert stimulus here 

      wait;
   end process;

END;
