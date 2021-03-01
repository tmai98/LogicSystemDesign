library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;


entity adder4_tp is
--  Port ( );
end adder4_tp;

architecture Behavioral of adder4_tp is

component adder4 is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           f : out STD_LOGIC_VECTOR (4 downto 0));
end component;

signal a,b : STD_LOGIC_VECTOR (3 downto 0);
signal f : STD_LOGIC_VECTOR (4 downto 0);

begin

    uut: adder4 port map(a => a, b => b, f => f);
    
    process (a,b) 
        variable tempa, tempb : integer := 0;
    begin
 
            tempb := tempb + 1;
            
           if(tempb = 16) then
                tempa := tempa + 1;
                tempb := 0;
           end if;
            
            a <= std_logic_vector(to_unsigned(tempa, 4));
            b <= std_logic_vector(to_unsigned(tempb, 4));
            
            
    
    end process;

end Behavioral;
