library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
-----------------------------------------------------------------------------------------------------------------------
entity SignExtend is
    Port ( input : in  STD_LOGIC_VECTOR (15 downto 0);
           output : out  STD_LOGIC_VECTOR (31 downto 0));
end SignExtend;
-----------------------------------------------------------------------------------------------------------------------
architecture Behavioral of SignExtend is

begin

	output(15 downto 0) <= input(15 downto 0);
	output(31 downto 16) <= (31 downto 16 => input(15));		--see the 15th bit of input and repeate it (to get the sign)

end Behavioral;

