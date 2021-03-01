library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity task2 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           F : out STD_LOGIC);
end task2;

architecture Behavioral of task2 is

begin


F <= A OR B OR C OR D OR (A AND B AND C AND D) OR (A AND (NOT B) AND (NOT C) AND (NOT D)); 


end Behavioral;
