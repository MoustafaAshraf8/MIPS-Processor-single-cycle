library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
---------------------------------------------------------------------------------------------------------------------
entity RegisterFile is
    Port ( Rs : in  STD_LOGIC_VECTOR (4 downto 0);
           Rt : in  STD_LOGIC_VECTOR (4 downto 0);
           RegDstout : in  STD_LOGIC_VECTOR (4 downto 0);
           RdWriteData : in  STD_LOGIC_VECTOR (31 downto 0);
           RegWrite : in  STD_LOGIC;
			  CLK : in  STD_LOGIC;
			  RsData : out  STD_LOGIC_VECTOR (31 downto 0);
           RtData : out  STD_LOGIC_VECTOR (31 downto 0)
           );
end RegisterFile;
---------------------------------------------------------------------------------------------------------------------
architecture Behavioral of RegisterFile is

type RegFile is array (0 to 31) of STD_LOGIC_VECTOR (31 downto 0);		
signal RegNum : RegFile := (
										X"00000000", X"00000000", X"00000000", X"00000000", 
										X"00000005", X"00000007", X"00000000", X"00000000",
										X"00000000", X"00000000", X"00000000", X"00000000", 
										X"00000000", X"00000000", X"00000000", X"00000000",
										X"00000000", X"00000000", X"00000000", X"00000000", 
										X"00000000", X"00000000", X"00000000", X"00000000",
										X"00000000", X"00000000", X"00000000", X"00000000",
										X"00000000", X"00000000", X"00000000", X"00000000");



begin
RsData <= RegNum (to_integer(unsigned(Rs)));
RtData <= RegNum (to_integer(unsigned(Rt)));
process(RegWrite,CLK)
begin

if (rising_edge(CLK) and RegWrite = '1')												
	then 
		 RegNum(to_integer(unsigned(RegDstout))) <= RdWriteData;
			end if;


end process;
end behavioral;





