----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:55:43 05/30/2022 
-- Design Name: 
-- Module Name:    ShiftLeftBy2_Jump - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ShiftLeftBy2_Jump is
    Port ( input1 : in  STD_LOGIC_VECTOR (25 downto 0);
           input2 : in  STD_LOGIC_VECTOR (31 downto 0);
           output : out  STD_LOGIC_VECTOR (31 downto 0)
			);
end ShiftLeftBy2_Jump;

architecture Behavioral of ShiftLeftBy2_Jump is

--signal B : STD_LOGIC_VECTOR (31 downto 0);

begin

output(27 downto 2) <= input1(25 downto 0);
output(1 downto 0) <= "00";
output(31 downto 28) <= input2(3 downto 0);

end Behavioral;

