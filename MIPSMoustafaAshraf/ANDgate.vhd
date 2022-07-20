library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.NUMERIC_STD.ALL;
----------------------------------------------------------------------------------------------------------------------------------------
entity ANDgate is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           output : out  STD_LOGIC
			  );
end ANDgate;
----------------------------------------------------------------------------------------------------------------------------------------
architecture Behavioral of ANDgate is

begin

output <= A and B;

end Behavioral;

