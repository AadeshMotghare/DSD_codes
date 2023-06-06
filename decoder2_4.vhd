----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:26:04 06/02/2023 
-- Design Name: 
-- Module Name:    decoder2_4 - Behavioral 
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
 
entity decoder2_4 is
	port(
	a : in STD_LOGIC_VECTOR(1 downto 0);
	b : out STD_LOGIC_VECTOR(3 downto 0)
 );
	end decoder2_4;
 
architecture behavior of decoder2_4 is
	begin
		process(a)
			begin
				if (a="00") then
					b <= "0001";
				elsif (a="01") then
					b <= "0010";
				elsif (a="10") then
					b <= "0100";
				else
					b <= "1000";
				end if;
		end process;
end behavior;


