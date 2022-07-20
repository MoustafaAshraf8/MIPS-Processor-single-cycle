library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
------------------------------------------------------------------------------------------------------------
entity MUX21 is
    Port ( in0 : in  STD_LOGIC_VECTOR (31 downto 0);
           in1 : in  STD_LOGIC_VECTOR (31 downto 0);
			  s : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (31 downto 0)
           );
end MUX21;
------------------------------------------------------------------------------------------------------------
architecture Behavioral of MUX21 is

begin

process(in0,in1,s)
begin

if s = '0' then output <= in0;
elsif s = '1' then output <= in1;

end if;

end process;

end Behavioral;

