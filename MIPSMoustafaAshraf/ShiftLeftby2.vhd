library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
----------------------------------------------------------------------------------------------------------------------------------------
entity ShiftLeftby2 is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : out  STD_LOGIC_VECTOR (31 downto 0));
end ShiftLeftby2;
----------------------------------------------------------------------------------------------------------------------------------------
architecture Behavioral of ShiftLeftby2 is

begin

	B(31 downto 2) <= A(29 downto 0);
	B(1 downto 0) <= "00";

end Behavioral;

