library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
---------------------------------------------------------------------------------------------------------------------
entity Memory_Unit is
    Port ( Address : in  STD_LOGIC_VECTOR (31 downto 0);
           WriteData : in  STD_LOGIC_VECTOR (31 downto 0);
			  MemWrite : in  STD_LOGIC;
           MemRead : in  STD_LOGIC;
			  CLK : in  STD_LOGIC;
           ReadData : out  STD_LOGIC_VECTOR (31 downto 0)
           );
end Memory_Unit;
---------------------------------------------------------------------------------------------------------------------
architecture Behavioral of Memory_Unit is

	type Memory is array (0 to 35) of STD_LOGIC_VECTOR(7 DOWNTO 0);
	
	signal MM : Memory := (X"AB",X"CD",X"EF",X"00",
									X"75",X"74",X"65",X"72",		
									X"20",X"41",X"72",X"63",		
									X"68",X"69",X"74",X"65",		
									X"12",X"34",X"56",X"78",		
									X"7F",X"7F",X"6D",X"6D",		
									X"00",X"00",X"00",X"00",		
									X"78",X"78",X"6A",X"6A",		
									X"00",X"00",X"00",X"01");
---------------------------------------------------------------------------------------------------------------------
begin


process(MemRead,MemWrite,Address,CLK)
begin
if MemRead = '1' and MemWrite = '0' then
						--Read from memory and the output go to ReadData
ReadData (31 downto 24) <= MM(to_integer(unsigned(Address)));
ReadData (23 downto 16) <= MM(to_integer(unsigned(Address)+1));
ReadData (15 downto 8) <= MM(to_integer(unsigned(Address)+2));
ReadData (7 downto 0) <= MM(to_integer(unsigned(Address)+3));

elsif MemRead = '0' and MemWrite = '1' and rising_edge(CLK) then
						--Write to memory
MM(to_integer(unsigned(Address))) <= WriteData(31 downto 24);
MM(to_integer(unsigned(Address)+1)) <= WriteData(23 downto 16);
MM(to_integer(unsigned(Address)+2)) <= WriteData(15 downto 8);
MM(to_integer(unsigned(Address)+3)) <= WriteData(7 downto 0);

end if;
end process;

end Behavioral;

