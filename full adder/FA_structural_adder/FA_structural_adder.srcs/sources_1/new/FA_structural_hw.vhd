library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity FA_structural_hw is
    Port ( sw : in STD_LOGIC_VECTOR (2 downto 0);
           led : out STD_LOGIC_VECTOR (1 downto 0));
end FA_structural_hw;

architecture Behavioral of FA_structural_hw is


component full_adder_structural is
    Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Cin : in STD_LOGIC;
           Sum : out STD_LOGIC;
           Cout : out STD_LOGIC);
end component;


begin

fa_test: full_adder_structural port map(a => sw(2), b => sw(1), cin => sw(0),
    cout => led(1), sum => led(1));




end Behavioral;
