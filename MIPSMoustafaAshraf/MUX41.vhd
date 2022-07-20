----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:32:00 03/01/2022 
-- Design Name: 
-- Module Name:    MUX41 - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity MUX41 is
    Port ( a : in  STD_LOGIC_VECTOR (31 downto 0);
           b : in  STD_LOGIC_VECTOR (31 downto 0);
           c : in  STD_LOGIC_VECTOR (31 downto 0);
           d : in  STD_LOGIC_VECTOR (31 downto 0);
           s : in  STD_LOGIC_VECTOR (1 downto 0);
           o : out  STD_LOGIC_VECTOR (31 downto 0));
end MUX41;

architecture Behavioral of MUX41 is

component MUX21 is
    Port ( a : in  STD_LOGIC_VECTOR (31 downto 0);
           b : in  STD_LOGIC_VECTOR (31 downto 0);
           o : out  STD_LOGIC_VECTOR (31 downto 0);
           s : in  STD_LOGIC);
end component;

signal z0 : STD_LOGIC_VECTOR (31 downto 0);		--inputs to 3rd MUX
signal z1 : STD_LOGIC_VECTOR (31 downto 0);

begin

mux1 : MUX21 port map(a,b,z0,s(0));
mux2 : MUX21 port map(c,d,z1,s(0));
mux3 : MUX21 port map(z0,z1,o,s(1));

end Behavioral;

