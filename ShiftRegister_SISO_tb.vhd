--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:42:04 06/05/2023
-- Design Name:   
-- Module Name:   C:/Users/ACER/OneDrive/Desktop/DSD practs/siso_pract/ShiftRegister_SISO_tb.vhd
-- Project Name:  siso_pract
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ShiftRegister_SISO
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
 
ENTITY ShiftRegister_SISO_tb IS
END ShiftRegister_SISO_tb;

architecture Behavioral of ShiftRegister_SISO_tb is
    constant clk_period: time := 10 ns;

    signal clk: std_logic := '0';
    signal reset: std_logic := '1';
    signal serial_in: std_logic := '0';
    signal serial_out: std_logic;

    component ShiftRegister_SISO is
        port (
            clk         : in  std_logic;
            reset       : in  std_logic;
            serial_in   : in  std_logic;
            serial_out  : out std_logic
        );
    end component;

begin
    DUT: ShiftRegister_SISO
    port map (
        clk         => clk,
        reset       => reset,
        serial_in   => serial_in,
        serial_out  => serial_out
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

        serial_in <= '1';
        wait for clk_period;
        serial_in <= '0';
        wait for clk_period;
        serial_in <= '1';
        wait for clk_period;
        serial_in <= '0';
        wait for clk_period;
        serial_in <= '1';
        wait for clk_period;
        serial_in <= '1';
        wait for clk_period;
        serial_in <= '0';
        wait for clk_period;
        serial_in <= '0';
        wait for clk_period;
        serial_in <= '1';
        
        wait for clk_period;

        wait;

    end process;

end Behavioral;