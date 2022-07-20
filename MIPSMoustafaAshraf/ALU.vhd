library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
---------------------------------------------------------------------------------------------------------------------
entity ALU is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           controle : in  STD_LOGIC_VECTOR (3 downto 0);
           result : out  STD_LOGIC_VECTOR (31 downto 0);
           zero : out  STD_LOGIC);
end ALU;
---------------------------------------------------------------------------------------------------------------------
architecture Behavioral of ALU is

begin

process(A,B,controle)
begin

if controle = "0000" then result <= A and B;			--AND
elsif controle = "0001" then result <= A or B;	--OR
elsif controle = "0111" then 					--comaprision
	if A < B then result <= X"00000001";
	else result <= X"00000000";
	end if;
elsif controle = "0010" then result <= A + B;		--add
elsif controle = "0110" then result <= A - B;		--subtract	
elsif controle = "1100" then result <= A nor B;		--NOR
end if;


if A=B then zero <= '1';
else zero <= '0';			
end if;

end process;

end Behavioral;

