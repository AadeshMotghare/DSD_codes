----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:35:40 06/02/2023 
-- Design Name: 
-- Module Name:    SR_ff - Behavioral 
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
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

entity SR_ff is
    Port ( S,R,RST,CLK : in  STD_LOGIC;
           Q,Qb : out STD_LOGIC);
end SR_ff;
architecture Behavioral of SR_ff is
	begin
	process (S,R,RST,CLK)
		begin
			if (RST = '1') then
				Q <= '0';
			elsif (RISING_EDGE(CLK))then
			if (S /= R) then
				Q <= S;
				Qb <= R;
			elsif (S = '1' AND R = '1') then
				Q <= 'Z';
				Qb <= 'Z';
			end if;
			end if; 
	end process;
end Behavioral;
