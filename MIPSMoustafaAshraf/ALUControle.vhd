library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
---------------------------------------------------------------------------------------------------------------------
entity ALUcontrole is
    Port ( ALUop : in  STD_LOGIC_VECTOR (1 downto 0);
           Instruction : in  STD_LOGIC_VECTOR (5 downto 0);
           Operation : out  STD_LOGIC_VECTOR (3 downto 0));
end ALUcontrole;
---------------------------------------------------------------------------------------------------------------------
architecture Behavioral of ALUcontrole is

begin

process(AluOp, Instruction)
begin

if ALUOP = "00"
		then Operation <= "0010";
	
	elsif ALUOP = "01"
		then Operation <= "0110";
		
	end if;
	
	if ALUOP = "10" AND Instruction(3 downto 0) = "0000"
		then Operation <= "0010";
	end if;
	
	if ALUOP(1) = '1' AND Instruction(3 downto 0) = "0010"
		then Operation <= "0110";
	end if;
	
	if ALUOP(1) = '1' AND Instruction(3 downto 0) = "1010"
		then Operation <= "0111";
	end if;
	
	if ALUOP = "10" AND Instruction(3 downto 0) = "0100"
		then Operation <= "0000";
	end if;
	
	if ALUOP = "10" AND Instruction(3 downto 0) = "0101"
		then Operation <= "0001";
	end if;

end process;

end Behavioral;

