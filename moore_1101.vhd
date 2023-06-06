----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:44:47 06/03/2023 
-- Design Name: 
-- Module Name:    moore_1101 - Behavioral 
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
-- Moore 1101 Sequence Detector

entity moore_1101 is
    port (
        clk   : in std_logic;
        reset : in std_logic;
        input : in std_logic;
        output: out std_logic
    );
end entity moore_1101;
architecture behavior of moore_1101 is
    type state_type is (S0, S1, S2, S3, S4);
    signal current_state, next_state: state_type;
begin
    -- Moore FSM logic
    process (clk, reset)
    begin
        if reset = '1' then
            current_state <= S0;
        elsif rising_edge(clk) then
            current_state <= next_state;
        end if;
    end process;
 
    -- Next state and output logic
    process (current_state, input)
    begin
        case current_state is
            when S0 =>
                if input = '1' then
                    next_state <= S1;
                else
                    next_state <= S0;
                end if;
                output <= '0';
            when S1 =>
                if input = '1' then
                    next_state <= S2;
                else
                    next_state <= S0;
                end if;
                output <= '0';
            when S2 =>
                if input = '0' then
                    next_state <= S3;
                else
                    next_state <= S0;
                end if;
                output <= '0';
            when S3 =>
                if input = '1' then
                    next_state <= S4;
                else
                    next_state <= S0;
                end if;
                output <= '0';
            when S4 =>
                next_state <= S0;
                output <= '1';
        end case;
    end process;
end behavior;
