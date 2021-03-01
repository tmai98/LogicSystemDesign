library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

entity task1 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Cin : in STD_LOGIC;
           Sum : out STD_LOGIC;
           Cout : out STD_LOGIC);
end task1;

architecture Behavioral of task1 is



begin

Sum <= A XOR B XOR Cin;
Cout <= (A AND B) OR (A AND Cin) OR (B AND Cin);


end Behavioral;
