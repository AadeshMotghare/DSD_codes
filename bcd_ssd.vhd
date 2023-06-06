----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:17:26 06/06/2023 
-- Design Name: 
-- Module Name:    bcd_ssd - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity bcd_ssd is
port(b:in std_logic_vector(3 downto 0);
     out1:out std_logic_vector(6 downto 0));
end entity;
architecture beh of bcd_ssd is
begin
with b SELECT
   out1<= "0000001" when "0000",
   		 "1001111" when "0001",
          "0010010" when "0010",
  		    "0001100" when "0011",
		    "1001100" when "0100",
  		    "0101000" when "0101",
          "0100000" when "0110",
  		    "0001110" when "0111",
 		    "0000000" when "1000",
          "0001100" when "1001",
          "1111111" when OTHERS; 
end beh;
