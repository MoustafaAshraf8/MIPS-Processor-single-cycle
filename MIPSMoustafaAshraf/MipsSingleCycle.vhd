library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_arith.ALL;
use IEEE.STD_LOGIC_unsigned.ALL;
use IEEE.NUMERIC_STD.ALL;
------------------------------------------------------------------------------------------------------------
entity MipsSingleCycle is

    Port ( CLK : in  STD_LOGIC := '0');

end MipsSingleCycle;

architecture Behavioral of MipsSingleCycle is
------------------------------------------------------------------------------------------------------------
										--PC register
component PC is
    Port ( input : in  STD_LOGIC_VECTOR (31 downto 0);
			  CLK : in  STD_LOGIC;
			  output : out  STD_LOGIC_VECTOR (31 downto 0)
			);
end component;
------------------------------------------------------------------------------------------------------------
										--PC adder
component PC_Adder is
    Port ( input1 : in  STD_LOGIC_VECTOR (31 downto 0);
           output : out  STD_LOGIC_VECTOR (31 downto 0)
			  );
end component;
-------------------------------------------------------------------------------------------------------------------------
										--Instruction memory
component InstructionMemory is
    Port ( InstAddress : in  STD_LOGIC_VECTOR (31 downto 0);
			  CLK: in STD_LOGIC;
			  Inst : out  STD_LOGIC_VECTOR (31 downto 0)
			 );
end component;
-------------------------------------------------------------------------------------------------------------------------
										--Register file
component RegisterFile is
    Port ( Rs : in  STD_LOGIC_VECTOR (4 downto 0);
           Rt : in  STD_LOGIC_VECTOR (4 downto 0);
           RegDstout : in  STD_LOGIC_VECTOR (4 downto 0);
           RdWriteData : in  STD_LOGIC_VECTOR (31 downto 0);
           RegWrite : in  STD_LOGIC;
			  CLK : in  STD_LOGIC;
			  RsData : out  STD_LOGIC_VECTOR (31 downto 0);
           RtData : out  STD_LOGIC_VECTOR (31 downto 0)
           );
end component;
-------------------------------------------------------------------------------------------------------------------------
										--Controle unit
component Controle_Unit is
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
end component;
-------------------------------------------------------------------------------------------------------------------------
										--ALU controle
component ALUcontrole is
    Port ( ALUop : in  STD_LOGIC_VECTOR (1 downto 0);
           Instruction : in  STD_LOGIC_VECTOR (5 downto 0);
           Operation : out  STD_LOGIC_VECTOR (3 downto 0));
end component;
-------------------------------------------------------------------------------------------------------------------------
										--ALU
component ALU is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : in  STD_LOGIC_VECTOR (31 downto 0);
           controle : in  STD_LOGIC_VECTOR (3 downto 0);
           result : out  STD_LOGIC_VECTOR (31 downto 0);
           zero : out  STD_LOGIC);
end component;
-------------------------------------------------------------------------------------------------------------------------
										--Memory unit
component Memory_Unit is
    Port ( Address : in  STD_LOGIC_VECTOR (31 downto 0);
           WriteData : in  STD_LOGIC_VECTOR (31 downto 0);
			  MemWrite : in  STD_LOGIC;
           MemRead : in  STD_LOGIC;
			  CLK : in  STD_LOGIC;
           ReadData : out  STD_LOGIC_VECTOR (31 downto 0)
           );
end component;
-------------------------------------------------------------------------------------------------------------------------
										--Shift left by 2
component ShiftLeftby2 is
    Port ( A : in  STD_LOGIC_VECTOR (31 downto 0);
           B : out  STD_LOGIC_VECTOR (31 downto 0));
end component;
-------------------------------------------------------------------------------------------------------------------------
										--Sign extend
component SignExtend is
    Port ( input : in  STD_LOGIC_VECTOR (15 downto 0);
           output : out  STD_LOGIC_VECTOR (31 downto 0));
end component;
-------------------------------------------------------------------------------------------------------------------------
										--Mux 2x1
component MUX21 is
    Port ( in0 : in  STD_LOGIC_VECTOR (31 downto 0);
           in1 : in  STD_LOGIC_VECTOR (31 downto 0);
			  s : in  STD_LOGIC;
           output : out  STD_LOGIC_VECTOR (31 downto 0)
           );
end component;
-------------------------------------------------------------------------------------------------------------------------
component MUX5bit is
    Port ( A : in  STD_LOGIC_VECTOR (4 downto 0);
           B : in  STD_LOGIC_VECTOR (4 downto 0);
           s : in  STD_LOGIC;
           C : out  STD_LOGIC_VECTOR (4 downto 0));
end component;
-------------------------------------------------------------------------------------------------------------------------
										--shift left for the jump instruction
--component ShiftLeftBy2_Jump is
--    Port ( input1 : in  STD_LOGIC_VECTOR (25 downto 0);
--           input2 : in  STD_LOGIC_VECTOR (31 downto 0);
--           output : out  STD_LOGIC_VECTOR (31 downto 0)
--			);
--end component;
-------------------------------------------------------------------------------------------------------------------------
component ANDgate is
    Port ( A : in  STD_LOGIC;
           B : in  STD_LOGIC;
           output : out  STD_LOGIC
			  );
end component;
-------------------------------------------------------------------------------------------------------------------------
component Adder is
    Port ( input1 : in  STD_LOGIC_VECTOR (31 downto 0);
           input2 : in  STD_LOGIC_VECTOR (31 downto 0);
           output : out  STD_LOGIC_VECTOR (31 downto 0)
			 );
end component;
-------------------------------------------------------------------------------------------------------------------------




--PC
signal pcin : STD_LOGIC_VECTOR (31 downto 0); 				--input
signal pcout : STD_LOGIC_VECTOR (31 downto 0); 				--output



--instruction memory
--pcout input
signal INST : STD_LOGIC_VECTOR (31 downto 0);				--output
signal op : STD_LOGIC_VECTOR (5 downto 0);					--output
signal Rs : STD_LOGIC_VECTOR (4 downto 0);					--output
signal Rt : STD_LOGIC_VECTOR (4 downto 0);					--output
signal Rd : STD_LOGIC_VECTOR (4 downto 0);					--output
signal coeff : STD_LOGIC_VECTOR (15 downto 0);				--output
signal funct : STD_LOGIC_VECTOR (5 downto 0);				--output
--signal newline : STD_LOGIC_VECTOR (25 downto 0);			--output


--Controle unit
--op input
signal REG_DST : STD_LOGIC;
--signal JUMP : STD_LOGIC;
signal BRANCH : STD_LOGIC;
signal MEM_READ : STD_LOGIC;
signal MEM_to_REG : STD_LOGIC;
signal ALU_OP : STD_LOGIC_VECTOR (1 downto 0);
signal MEM_WRITE : STD_LOGIC;
signal ALU_SRC : STD_LOGIC;
signal REG_WRITE : STD_LOGIC;


--MUXregdst
--Rt
--Rd
--_RegDst
signal RegDstout : STD_LOGIC_VECTOR (4 downto 0);				--output

--Register file
--Rs
--Rt
--Regdstout
signal MemtoRegout : STD_LOGIC_VECTOR (31 downto 0);				--input
signal RsData : STD_LOGIC_VECTOR (31 downto 0);				--output
signal RtData : STD_LOGIC_VECTOR (31 downto 0);				--output


--Sign Extend
--coeff
signal SignExout : STD_LOGIC_VECTOR (31 downto 0);				--output

--MUX alusrc
--RtData
--SignExout
--_ALUsrc
signal ALUsrcout : STD_LOGIC_VECTOR (31 downto 0);				--output



--ALU controle
--_ALUop
--funct
signal ALUctrl : STD_LOGIC_VECTOR (3 downto 0);				--output

--ALU main
--RsData
--ALUsrcout
--ALUctrl
signal ALUres : STD_LOGIC_VECTOR (31 downto 0);				--output
signal ALUzero : STD_LOGIC;				--output

--Memory unit
--ALUres
--RtData
--_MemWrite
--_MemRead
signal Dataout : STD_LOGIC_VECTOR (31 downto 0);				--output

--MUX memtoreg
--ALUres
--Dataout
--_MemtoReg
--MemtoRegout				--output


--PC adder
--pcout
signal pcadderout : STD_LOGIC_VECTOR (31 downto 0);				--output

--ShiftLeftby2_Jump
--newline
--pcadderout
--signal JumpNewAddress : STD_LOGIC_VECTOR (31 downto 0);				--output

--ShiftLeftby2
--SignExout
signal shiftleftout : STD_LOGIC_VECTOR (31 downto 0);				--output

--Adder
--pcadderout
--shiftleftout
signal BranchNewAddress : STD_LOGIC_VECTOR (31 downto 0);				--output

--MUXbranch
--pcadderout
--signal NewAddress : STD_LOGIC_VECTOR (31 downto 0);				--output

--MUXjump
--NewAddress
--JumpNewAddress
--_Jump
--pcin		--output
-------------------------------------------------------------------------------------------------------------------------
begin

								--PC register
pc1 : PC port map(pcin,  CLK, pcout);

		

								--enter the instruction address to fetch the desired instruction
IM : InstructionMemory port map(pcout, CLK, INST);

				op <= INST (31 downto 26);
				Rs <= INST (25 downto 21);
				Rt <= INST (20 downto 16);
				Rd <= INST (15 downto 11);
				funct <= INST (5 downto 0);
				coeff <= INST (15 downto 0);



								--give the Controle unit the 6-bit OP code
CU : Controle_Unit port map(op, REG_DST, BRANCH, MEM_READ, MEM_to_REG, ALU_OP, MEM_WRITE, ALU_SRC, REG_WRITE);



--RegDst mux
MUXregdst : MUX5bit port map(Rt, Rd, REG_DST, RegDstout);



								--give the Register File the address of the targeted rgisters
RegFile : RegisterFile port map(Rs, Rt, RegDstout, MemtoRegout, REG_WRITE, CLK, RsData, RtData);


								--give the sign extend its part to use if it is I-type instruction
SignEx : SignExtend port map(coeff, SignExout);



--ALUsrc mux
MUXalusrc : MUX21 port map(RtData, SignExout, ALU_SRC, ALUsrcout);


--give the ALU controle the ALUop code to determine the desired operation (based on the function if it is R-type instruction)
ALUcontrl : ALUcontrole port map(ALU_OP, funct, ALUctrl);



								--give the ALU the variables to do the operation on them based on the ALU controle signal "ALUctrl"
ALUmain : ALU port map(RsData, ALUsrcout, ALUctrl, ALUres, ALUzero);



								--Enter the memory with address and Rt data and determine if I will write or read
Memory : Memory_Unit port map(ALUres, RtData, MEM_WRITE, MEM_READ, CLK, Dataout);


--MemtoReg mux to determine the data of Rd, ALU out if R-type or Memory Data if lw
MUXmemtoreg : MUX21 port map(ALUres, Dataout, MEM_to_REG, MemtoRegout);



--RegFile port map(Rs, Rt, RegDstout, RdWriteData, $RegWrite, CLK, RsData, RtData);

								--PC adder to get normal next instruction
pcadder : PC_Adder port map(pcout, pcadderout);
	

--shift the 0-25 bit of new jump by 2 and concatinate the MSB of next instruction address
--sllJ : ShiftLeftBy2_Jump port map(newline, pcadderout, JumpNewAddress);


--shift the coefficient by 2 (word addressable processor)
slladder : ShiftLeftby2 port map(SignExout,shiftleftout);




--add the the shifted coefficient to the next instruction address
add : Adder port map(pcadderout, shiftleftout, BranchNewAddress);


--mux determine if I will choose the branshed new line or normal next instruction
MUXbranch : MUX21 port map(pcadderout, BranchNewAddress,ALUzero AND Branch, pcin);

--mux determine if I will jump to a specific instruction or complete with next or branch instruction




end Behavioral;

