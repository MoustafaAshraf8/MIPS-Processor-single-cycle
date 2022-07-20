--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   09:36:57 03/15/2022
-- Design Name:   
-- Module Name:   D:/Student/Desktop/New folder/MIPSMoustafaAshraf/ALUControleTest.vhd
-- Project Name:  MIPSMoustafaAshraf
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ALUControle
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
 
ENTITY ALUControleTest IS
END ALUControleTest;
 
ARCHITECTURE behavior OF ALUControleTest IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT ALUControle
    PORT(
         ALUop : IN  std_logic_vector(1 downto 0);
         Funct_field : IN  std_logic_vector(5 downto 0);
         Operation : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal ALUop : std_logic_vector(1 downto 0) := (others => '0');
   signal Funct_field : std_logic_vector(5 downto 0) := (others => '0');

 	--Outputs
   signal Operation : std_logic_vector(3 downto 0);
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: ALUControle PORT MAP (
          ALUop => ALUop,
          Funct_field => Funct_field,
          Operation => Operation
        );

   -- Clock process definitions
   
 

   -- Stimulus process
   stim_proc: process
   begin		
     
		ALUop <="10" ;
		Funct_field <= "100000";
      wait for 100 ns;
		
		ALUop <="10" ;
		Funct_field <= "100010";
      wait for 100 ns;
		
		ALUop <="10" ;
		Funct_field <= "100100";
      wait for 100 ns;
		
		ALUop <="10" ;
		Funct_field <= "100101";
      wait for 100 ns;
		
		ALUop <="10" ;
		Funct_field <= "101010";
      wait for 100 ns;
		
      
      
   end process;

END;
