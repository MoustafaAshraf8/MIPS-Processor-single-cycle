library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
---------------------------------------------------------------------------------------------------------------------
entity Controle_Unit is
    Port ( Op : in  STD_LOGIC_VECTOR (5 downto 0);
			  RegDst : out  STD_LOGIC;
			  Branch : out  STD_LOGIC;
			  MemRead : out  STD_LOGIC;
			  MemtoReg : out  STD_LOGIC;
			  ALUop : out  STD_LOGIC_VECTOR (1 downto 0);
			  MemWrite : out  STD_LOGIC;
			  ALUsrc : out  STD_LOGIC;
			  RegWrite : out  STD_LOGIC
			 );
end Controle_Unit;
---------------------------------------------------------------------------------------------------------------------
architecture Behavioral of Controle_Unit is


begin

process(Op)
begin


if Op = "000000" then 
		RegDst 	<= '1';
		ALUSrc 	<= '0';
		MemtoReg <= '0';
		RegWrite <= '1';
		MemRead 	<= '0';
		MemWrite <= '0';
		Branch 	<= '0';
		ALUop 	<= "10";

elsif Op = "100011" then 
		RegDst 	<= '0';
		ALUSrc 	<= '1';
		MemtoReg <= '1';
		RegWrite <= '1';
		MemRead 	<= '1';
		MemWrite <= '0';
		Branch 	<= '0';
		ALUop 	<= "00";
		
elsif Op = "101011" then
		RegDst 	<= '0';
		ALUSrc 	<= '1';
		MemtoReg <= '0';
		RegWrite <= '0';
		MemRead 	<= '0';
		MemWrite <= '1';
		Branch 	<= '0';
		ALUop 	<= "00";


elsif Op = "000100" then
		RegDst 	<= '0';
		ALUSrc 	<= '0';
		MemtoReg <= '0';
		RegWrite <= '0';
		MemRead 	<= '0';
		MemWrite <= '0';
		Branch 	<= '1';
		ALUop 	<= "01";


end if;
end process;
end Behavioral;

