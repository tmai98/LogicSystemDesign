library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;


entity task3 is
   Port ( 
          hex_in : in STD_LOGIC_VECTOR (3 downto 0);
          letters : out STD_LOGIC_vector (6 downto 0)
          );
end task3;

architecture Behavioral of task3 is

signal temphex_in: integer;

begin

process (hex_in)

    begin
    
    temphex_in <= to_integer(unsigned(hex_in));
    
        case hex_in is
                   when "0000" => letters <= "1111110"; 
                   when "0001" => letters <= "0110000"; 
                   when "0010" => letters <= "1101101"; 
                   when "0011" => letters <= "1111001"; 
                   when "0100" => letters <= "0110011"; 
                   when "0101" => letters <= "1011011"; 
                   when "0110" => letters <= "1011111"; 
                   when "0111" => letters <= "1110000"; 
                   when "1000" => letters <= "1111111"; 
                   when "1001" => letters <= "1111011"; 
                   when "1010" => letters <= "1110111"; 
                   when "1011" => letters <= "0011111"; 
                   when "1100" => letters <= "1001110";  
                   when "1101" => letters <= "0111101"; 
                   when "1110" => letters <= "1001111"; 
                   when others => letters <= "1000111";   
         end case;
         
         
         end process;

end Behavioral;
