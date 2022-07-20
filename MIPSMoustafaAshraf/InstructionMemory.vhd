library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;
---------------------------------------------------------------------------------------------------------------------
entity InstructionMemory is
    Port ( InstAddress : in  STD_LOGIC_VECTOR (31 downto 0);
			  CLK: in STD_LOGIC;
			  Inst : out  STD_LOGIC_VECTOR (31 downto 0)
			 );
end InstructionMemory;
---------------------------------------------------------------------------------------------------------------------
architecture Behavioral of InstructionMemory is

type InstructionMemory is array (0 to 23) of STD_LOGIC_VECTOR(7 downto 0);
signal IM : InstructionMemory :=
				(
					"00000000", "10000101", "00010000", "00100000", -- add $v0, $a0, $a1
					"10101100", "00000010", "00000000", "00001000", -- sw $v0, 8($Zero)
					"10001100", "00000110", "00000000", "00001000", -- lw $a2, 8($Zero)
					"00010000", "11000010", "00000000", "00000001", -- beq $v0, $a2, 1
					"00000000", "01000110", "10001000", "00101010", -- slt $s1, $v0, $a2
					"00000000", "10100100", "10001000", "00100010"  -- sub $s1, $a1, $a0
				);

begin


Inst(31 downto 24)  <= IM(to_integer(unsigned(InstAddress)));
Inst(23 downto 16)  <= IM(to_integer(unsigned(InstAddress)+1));
Inst(15 downto 8)  <= IM(to_integer(unsigned(InstAddress)+2));
Inst(7 downto 0)  <= IM(to_integer(unsigned(InstAddress)+3));

end Behavioral;

