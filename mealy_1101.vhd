----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:25:18 06/04/2023 
-- Design Name: 
-- Module Name:    mealy_1101 - Behavioral 
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
entity mealy_1101 is
    port (
        clk     : in  std_logic;
        reset   : in  std_logic;
        input   : in  std_logic;
        output  : out std_logic
    );
end entity mealy_1101;

architecture Behavioral of mealy_1101 is
    type state_type is (S0, S1, S2, S3, S4);
    signal current_state, next_state: state_type;
begin
    process(clk, reset)
    begin
        if reset = '1' then
            current_state <= S0;
        elsif rising_edge(clk) then
            current_state <= next_state;
        end if;
    end process;

    process(current_state, input)
    begin
        case current_state is
            when S0 =>
                if input = '1' then
                    next_state <= S1;
                    output <= '0';
                else
                    next_state <= S0;
                    output <= '0';
                end if;

            when S1 =>
                if input = '1' then
                    next_state <= S2;
                    output <= '0';
                else
                    next_state <= S0;
                    output <= '0';
                end if;

            when S2 =>
                if input = '0' then
                    next_state <= S3;
                    output <= '0';
                else
                    next_state <= S0;
                    output <= '0';
                end if;

            when S3 =>
                if input = '1' then
                    next_state <= S4;
                    output <= '1';
                else
                    next_state <= S0;
                    output <= '0';
                end if;

            when S4 =>
                next_state <= S0;
                output <= '1';

            when others =>
                next_state <= S0;
                output <= '0';
        end case;
    end process;
end Behavioral;

