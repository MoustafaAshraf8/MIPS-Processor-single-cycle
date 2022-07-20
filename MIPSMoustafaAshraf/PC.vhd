library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
---------------------------------------------------------------------------------------------------------------------
entity PC is
    Port ( input : in  STD_LOGIC_VECTOR (31 downto 0);
			  CLK : in  STD_LOGIC;
			  output : out  STD_LOGIC_VECTOR (31 downto 0)
			);
end PC;
---------------------------------------------------------------------------------------------------------------------

architecture Behavioral of PC is

signal temp : STD_LOGIC_VECTOR (31 downto 0) := X"00000000";

begin


process(input,CLK)
begin


if rising_edge(CLK)				--if CLK if rising edge, register works
										--if first cycle, choose first instruction at first line
				then output <= temp;
end if;
if falling_edge(CLK)
	then temp <= input;
end if;


end process;
	

end Behavioral;

