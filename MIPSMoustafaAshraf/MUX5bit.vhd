library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
---------------------------------------------------------------------------------------------------------------------------------------------
entity MUX5bit is
    Port ( A : in  STD_LOGIC_VECTOR (4 downto 0);
           B : in  STD_LOGIC_VECTOR (4 downto 0);
           s : in  STD_LOGIC;
           C : out  STD_LOGIC_VECTOR (4 downto 0));
end MUX5bit;
---------------------------------------------------------------------------------------------------------------------------------------------
architecture Behavioral of MUX5bit is

begin
process(A,B,s)
begin


if s = '0'	then
		C <= A;
else
		C <= B;

end if;

end process;
end Behavioral;

