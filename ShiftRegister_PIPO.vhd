----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:56:26 06/05/2023 
-- Design Name: 
-- Module Name:    ShiftRegister_PIPO - Behavioral 
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
entity ShiftRegister_PIPO is
    port (
        clk         : in  std_logic;
        reset       : in  std_logic;
        parallel_in : in  std_logic_vector(3 downto 0);
        parallel_out: out std_logic_vector(3 downto 0)
    );
end entity ShiftRegister_PIPO;

architecture Behavioral of ShiftRegister_PIPO is
    signal shift_reg: std_logic_vector(3 downto 0);
begin
    process(clk, reset)
    begin
        if reset = '1' then
            shift_reg <= (others => '0');
        elsif rising_edge(clk) then
            shift_reg <= parallel_in;
        end if;
    end process;

    parallel_out <= shift_reg;
end architecture Behavioral;

