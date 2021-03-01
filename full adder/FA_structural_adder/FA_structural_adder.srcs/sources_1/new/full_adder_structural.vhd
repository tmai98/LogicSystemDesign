library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity full_adder_structural is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Cin : in STD_LOGIC;
           Sum : out STD_LOGIC;
           Cout : out STD_LOGIC);
end full_adder_structural;

architecture Behavioral of full_adder_structural is

-- Importing components

component and2 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           F : out STD_LOGIC);
end component;

component or2 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           F : out STD_LOGIC);
end component;

component xor2 is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           F : out STD_LOGIC);
end component;

-- Declare signals 

signal w1, w2, w3, w4, w5: std_logic;

begin

x1: xor2 port map(a => a, b => b, f => w1);
x2: xor2 port map(a => w1, b => cin, f => sum);

a1: and2 port map(a => a,b => b, f => w2);
a2: and2 port map(a => a, b => cin, f => w3);
a3: and2 port map(a => b, b => cin, f => w4);

o1: or2 port map(a => w2, b => w3, f => w5);
o2: or2 port map(a => w5, b => w4, f => cout);

end Behavioral;
