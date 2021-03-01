library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;


entity encoder_tb is
 
end encoder_tb;

architecture behavioral of encoder_tb is

component task3
Port(
         hex_in : in STD_LOGIC_VECTOR (3 downto 0);
         letters : out STD_LOGIC_VECTOR (6 downto 0)
         );
end component;

signal hex_in : STD_LOGIC_VECTOR (3 downto 0) := "0000";


signal letters : STD_LOGIC_vector (6 downto 0);

begin

uut: task3 port map (
    hex_in => hex_in,
    letters => letters
    ); 
    
    tb: process
    variable temphex_in : integer := 0;
    begin
        temphex_in := temphex_in + 1;
        
        if(temphex_in = 16) then
        temphex_in := temphex_in + 1;
        end if;
        
        hex_in <= std_logic_vector(to_unsigned(temphex_in, 4));
        
        
        wait for 20ns;
    end process tb;

end behavioral;
