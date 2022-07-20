----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:25:20 03/08/2022 
-- Design Name: 
-- Module Name:    ALU - Behavioral 
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

use IEE.STD_LOGIC_ARITH.ALL;
use IEE.STD_LOGIC_UNSIGNED.ALL;



-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity ALU is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           controle : in  STD_LOGIC_VECTOR (3 downto 0);
           result : out  STD_LOGIC_VECTOR (31 downto 0);
           equality : in  STD_LOGIC);
end ALU;

architecture Behavioral of ALU is

begin

process(A,B,controle)
begin

if controle = "0000" then result <= A and B;			--AND
else if controle = "0001" then result <= A or B;	--OR
else if controle = "0010" then result <= A + B;		--add
else if controle = "0011" then result <= A - B;		--subtract

else if controle = "0111" then 					--comaprision
	if A < B then result <= X"00000001";
	else result <= X"00000000";
	end if;
	
else if controle = "1100" then result <= A nor B;		--NOR
end if;

if A=B then equality <= '1';
else equality <= '0';			
end if;

end process;

end Behavioral;

