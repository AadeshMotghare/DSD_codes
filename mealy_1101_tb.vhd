--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:28:09 06/04/2023
-- Design Name:   
-- Module Name:   C:/Users/ACER/OneDrive/Desktop/DSD practs/mealy_1101_SD_pract/mealy_1101_tb.vhd
-- Project Name:  mealy_1101_SD_pract
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mealy_1101
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY mealy_1101_tb IS
END mealy_1101_tb;
 

architecture Behavioral of mealy_1101_tb is
    constant clk_period: time := 10 ns;

    signal clk: std_logic := '0';
    signal reset: std_logic := '1';
    signal input: std_logic := '0';
    signal output: std_logic;

    component mealy_1101 is
        port (
            clk     : in  std_logic;
            reset   : in  std_logic;
            input   : in  std_logic;
            output  : out std_logic
        );
    end component;

begin
    DUT: mealy_1101
    port map (
        clk     => clk,
        reset   => reset,
        input   => input,
        output  => output
    );

    clk_process: process
    begin
        while now < 100 ns loop
            clk <= '0';
            wait for clk_period/2;
            clk <= '1';
            wait for clk_period/2;
        end loop;
        wait;
    end process;

    stimulus_process: process
    begin
        reset <= '1';
        wait for 20 ns;
        reset <= '0';

        wait for clk_period;

        input <= '1';
        wait for clk_period;
        input <= '1';
        wait for clk_period;
        input <= '0';
        wait for clk_period;
        input <= '1';
        wait for clk_period;
        input <= '0';
        wait for clk_period;
        input <= '1';
        wait for clk_period;
        input <= '1';
        wait for clk_period;
        input <= '0';
        wait for clk_period;
        input <= '1';

        wait;
    end process;

end Behavioral;
