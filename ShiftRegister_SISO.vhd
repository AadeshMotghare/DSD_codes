----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:30:00 06/05/2023 
-- Design Name: 
-- Module Name:    ShiftRegister_SISO - Behavioral 
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

entity ShiftRegister_SISO is
    port (
        clk     : in  std_logic;
        reset   : in  std_logic;
        serial_in   : in  std_logic;
        serial_out  : out std_logic
    );
end entity ShiftRegister_SISO;

architecture Behavioral of ShiftRegister_SISO is
    signal shift_reg: std_logic_vector(3 downto 0);
begin
    process(clk, reset)
    begin
        if reset = '1' then
            shift_reg <= (others => '0');
        elsif rising_edge(clk) then
            shift_reg <= serial_in & shift_reg(3 downto 1);
        end if;
    end process;

    serial_out <= shift_reg(0);
end architecture Behavioral;

