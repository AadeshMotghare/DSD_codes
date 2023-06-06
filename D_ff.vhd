----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:43:22 06/03/2023 
-- Design Name: 
-- Module Name:    D_ff - Behavioral 
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
entity D_ff is
	Port ( D, CLK, RST : in  STD_LOGIC;
		Q, Qb : out  STD_LOGIC);
	end D_ff;
architecture Behavioral of D_ff is
begin
	process (D, CLK, RST)
		begin
		if (RST = '1') then
			Q <= '0';
		elsif (rising_edge(CLK)) then 
			Q <= D;
			Qb <= not D;
		end if;
	end process;
end Behavioral;

