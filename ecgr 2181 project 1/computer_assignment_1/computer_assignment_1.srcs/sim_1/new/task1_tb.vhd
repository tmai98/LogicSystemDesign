library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

entity task1_tb is

end task1_tb;

architecture Behavioral of task1_tb is

component task1
Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           Cin : in STD_LOGIC;
           Sum : out STD_LOGIC;
           Cout : out STD_LOGIC);
end component;

signal A: STD_LOGIC := '0';
signal B: STD_LOGIC := '0';
signal Cin: STD_LOGIC := '0';
signal Sum: STD_LOGIC;
signal Cout: STD_LOGIC;

begin

uut: task1 port map(
    A => A,
    B => B,
    Cin => Cin,
    Sum => Sum,
    Cout => Cout);
    
  tb: process
  begin
        wait for 80ns;
        A <= '0';
        B <= '0';
        Cin <= '0';
      
        wait for 70ns;
        A <= '0';
        B <= '0';
        Cin <= '1';
        
        wait for 60 ns;
        A <= '0';
        B <= '1';
        Cin <= '0';
        
        wait for 50 ns;
        A <= '0';
        B <= '1';
        Cin <= '1';
                
        wait for 40 ns;
        A <= '1';
        B <= '0';
        Cin <= '0';
                        
        wait for 30 ns;
        A <= '1';
        B <= '0';
        Cin <= '1';
                                
         wait for 20 ns;
         A <= '1';
         B <= '1';
         Cin <= '0';
                                        
         wait for 10 ns;
         A <= '1';
         B <= '1';
         Cin <= '1';
  end process tb;    
  
 

end Behavioral;
