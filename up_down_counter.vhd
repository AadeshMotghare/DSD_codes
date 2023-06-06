----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    20:10:02 06/03/2023 
-- Design Name: 
-- Module Name:    up_down_counter - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;
-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;
-- Name :  Janhvi Pardeshi
entity up_down_counter is
    Port ( clk,rst,updown : in  STD_LOGIC;
           count : out  STD_LOGIC_VECTOR (3 downto 0));
end up_down_counter;

architecture Behavioral of up_down_counter is
	signal temp:std_logic_vector(3 downto 0):="0000";
	begin
		process(clk,rst)
			begin
				if(rst='1')then
					temp<="0000";
				elsif(rising_edge(clk))then
					if(updown='0')then
						temp<=temp+1;
					else
						temp<=temp-1;
					end if;
				end if;
end process;
count<=temp;
end Behavioral;
