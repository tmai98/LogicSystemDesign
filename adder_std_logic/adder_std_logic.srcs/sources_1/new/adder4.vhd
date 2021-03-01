
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

use IEEE.NUMERIC_STD.ALL;

entity adder4 is
    Port ( a : in STD_LOGIC_VECTOR (3 downto 0);
           b : in STD_LOGIC_VECTOR (3 downto 0);
           f : out STD_LOGIC_VECTOR (4 downto 0));
end adder4;

architecture Behavioral of adder4 is

signal tempa, tempb, tempresult: integer;

begin

tempa <= to_integer(unsigned(a));
tempb <= to_integer(unsigned(b));

tempresult <= tempa + tempb;

f <= std_logic_vector(to_unsigned(tempresult, 5));

end Behavioral;
