library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.NUMERIC_STD.ALL;
------------------------------------------------------------------------------------------------------------------------
entity PC_Adder is
    Port ( input1 : in  STD_LOGIC_VECTOR (31 downto 0);
           output : out  STD_LOGIC_VECTOR (31 downto 0)
			  );
end PC_Adder;
------------------------------------------------------------------------------------------------------------------------
architecture Behavioral of PC_Adder is

 
begin


output <= input1 + x"00000004"; 

end Behavioral;

