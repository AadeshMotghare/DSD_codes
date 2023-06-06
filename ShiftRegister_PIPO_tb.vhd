--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:08:04 06/05/2023
-- Design Name:   
-- Module Name:   C:/Users/ACER/OneDrive/Desktop/DSD practs/pipo_pract/ShiftRegister_PIPO_tb.vhd
-- Project Name:  pipo_pract
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: ShiftRegister_PIPO
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
 
ENTITY ShiftRegister_PIPO_tb IS
END ShiftRegister_PIPO_tb;


architecture Behavioral of ShiftRegister_PIPO_tb is
    constant clk_period: time := 10 ns;

    signal clk: std_logic := '0';
    signal reset: std_logic := '1';
    signal parallel_in: std_logic_vector(3 downto 0) := (others => '0');
    signal parallel_out: std_logic_vector(3 downto 0);

    component ShiftRegister_PIPO is
        port (
            clk             : in  std_logic;
            reset           : in  std_logic;
            parallel_in     : in  std_logic_vector(3 downto 0);
            parallel_out    : out std_logic_vector(3 downto 0)
        );
    end component;

begin
    DUT: ShiftRegister_PIPO
    port map (
        clk             => clk,
        reset           => reset,
        parallel_in     => parallel_in,
        parallel_out    => parallel_out
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

        parallel_in <= "1010";
        wait for clk_period;
        parallel_in <= "0110";
        wait for clk_period;
        parallel_in <= "1111";
        wait for clk_period;
        parallel_in <= "0011";
        wait for clk_period;
        wait;
    end process;
end architecture Behavioral;