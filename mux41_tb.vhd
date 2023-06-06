--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:10:02 06/02/2023
-- Design Name:   
-- Module Name:   C:/Users/ACER/OneDrive/Desktop/DSD practs/mux41_pract/mux41_tb.vhd
-- Project Name:  mux41_pract
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mux41
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
 
ENTITY mux41_tb IS
END mux41_tb;
 
ARCHITECTURE behavior OF mux41_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mux41
    PORT(
         A : IN  std_logic;
         B : IN  std_logic;
         C : IN  std_logic;
         D : IN  std_logic;
         S0 : IN  std_logic;
         S1 : IN  std_logic;
         Z : OUT  std_logic
        );
    END COMPONENT;
   --Inputs
   signal A : std_logic := '0';
   signal B : std_logic := '0';
   signal C : std_logic := '0';
   signal D : std_logic := '0';
   signal S0 : std_logic := '0';
   signal S1 : std_logic := '0';

 	--Outputs
   signal Z : std_logic;
BEGIN
 -- Instantiate the Unit Under Test (UUT)
   uut: mux41 PORT MAP (
          A => A,
          B => B,
          C => C,
          D => D,
          S0 => S0,
          S1 => S1,
          Z => Z
        );
 stim_proc: process
   begin
      wait for 100 ns; 
    A <= '1';
    B <= '0';
    C <= '1';
    D <= '0';       
    S0 <= '0'; S1 <= '0';
      wait for 100 ns; 
    S0 <= '1'; S1 <= '0';
      wait for 100 ns; 
    S0 <= '0'; S1 <= '1';
        wait for 100 ns;   
    S0 <= '0'; S1 <= '1';  
        wait for 100 ns;   
    end process;
END;


