----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:13:55 06/03/2023 
-- Design Name: 
-- Module Name:    RAM1 - Behavioral 
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

entity RAM1 is
	port(din : in std_logic_vector(7 downto 0);
		  dout: out std_logic_vector(7 downto 0);
		  clk : in std_logic;
		  rd,wr: in std_logic;
		  locn : in integer range 0 to 7);
end RAM1;

architecture Behavioral of RAM1 is
	type mem is array(integer range 0 to 7) of std_logic_vector(7 downto 0);
	signal ram : mem;
begin 
	process(clk,rd,wr,din)
		begin
			if ((rd and wr) /= '1') then
				if (clk = '1' and clk'event) then
					if (rd = '1') then 
						dout <= ram(locn);
					elsif (wr = '1') then
						ram(locn) <= din;
					end if;
				end if;
			end if;
		end process;
end Behavioral;

