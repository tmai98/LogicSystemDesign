library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

entity task2_tb is
end task2_tb;

architecture Behavioral of task2_tb is

component task2 
Port ( A : in STD_LOGIC;
           B : in STD_LOGIC;
           C : in STD_LOGIC;
           D : in STD_LOGIC;
           F : out STD_LOGIC);
 end component;
 
 signal A : STD_LOGIC := '0';
 signal B : STD_LOGIC := '0';
 signal C : STD_LOGIC := '0';
 signal D : STD_LOGIC := '0';
 
 signal F : STD_LOGIC;
 
begin

uut: task2 port map(
    A => A,
    B => B,
    C => C,
    D => D,
    F => F);
     
     tb: process
       begin
             wait for 160ns;
             A <= '0';
             B <= '0';
             C <= '0';
             D <= '0';
             wait for 150ns;
             A <= '0';
             B <= '0';
             C <= '0';
             D <= '1';
             wait for 140ns;
             A <= '0';
             B <= '0';
             C <= '1';
             D <= '0';
             wait for 130ns;
             A <= '0';
             B <= '0';
             C <= '1';
             D <= '1';
             wait for 120ns;
             A <= '0';
             B <= '1';
             C <= '0';
             D <= '0';
             wait for 110ns;
             A <= '0';
             B <= '1';
             C <= '0';
             D <= '1';
             wait for 100ns;
             A <= '0';
             B <= '1';
             C <= '1';
             D <= '0';
             wait for 90ns;
             A <= '0';
             B <= '1';
             C <= '1';
             D <= '1';
             wait for 80ns;
             A <= '1';
             B <= '0';
             C <= '0';
             D <= '0';
             wait for 70ns;
             A <= '1';
             B <= '0';
             C <= '0';
             D <= '1';
             wait for 60ns;
             A <= '1';
             B <= '0';
             C <= '1';
             D <= '0';
             wait for 50ns;
             A <= '1';
             B <= '0';
             C <= '1';
             D <= '1';
             wait for 40ns;
             A <= '1';
             B <= '1';
             C <= '0';
             D <= '0';
             wait for 30ns;
             A <= '1';
             B <= '1';
             C <= '0';
             D <= '1';
             wait for 20ns;
             A <= '1';
             B <= '1';
             C <= '1';
             D <= '0';
             wait for 10ns;
             A <= '1';
             B <= '1';
             C <= '1';
             D <= '1';
       end process tb;    

end Behavioral;
