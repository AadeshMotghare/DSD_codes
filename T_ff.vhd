----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:05:10 06/03/2023 
-- Design Name: 
-- Module Name:    T_ff - Behavioral 
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
entity T_ff is
   Port ( T,CLK,RES,TEMP : in  STD_LOGIC;
          Q,QB : out STD_LOGIC);
end T_ff;

architecture Behavioral of T_ff is

	begin

	PROCESS(T,CLK,RES)

		VARIABLE TEMP:STD_LOGIC:='0';

		BEGIN
			IF(RES='1')THEN
				TEMP:='0';
			ELSIF(RISING_EDGE(CLK))THEN
				IF(T='1')THEN
				TEMP:= NOT TEMP;
				END IF;
			END IF;
			Q<= NOT TEMP;
			QB<= TEMP;

	END PROCESS;
END Behavioral;

