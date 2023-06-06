--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:57:28 06/03/2023
-- Design Name:   
-- Module Name:   C:/Users/ACER/OneDrive/Desktop/DSD practs/jk_ff_pract/JK_ff_tb.vhd
-- Project Name:  jk_ff_pract
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: JK_ff
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
 
ENTITY JK_ff_tb IS
END JK_ff_tb;
 
ARCHITECTURE behavior OF JK_ff_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT JK_ff
    PORT(
         J : IN  std_logic;
         K : IN  std_logic;
         clk : IN  std_logic;
         rst : IN  std_logic;
         Q : OUT  std_logic;
         Qbar : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal J : std_logic := '0';
   signal K : std_logic := '0';
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal Qbar : std_logic;
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: JK_ff PORT MAP (
          J => J,
          K => K,
          clk => clk,
          rst => rst,
          Q => Q,
          Qbar => Qbar
        );

clock: process
begin
clk <= '1';
wait for 10 ns;
clk <= '0';
wait for 10 ns;
end process;

Force: process
begin
J <= '0';
K <= '0';
rst <= '0';
wait for 20 ns;

J <= '0';
K <= '1';
rst <= '0';
wait for 20 ns;

J <= '1';
K <= '0';
rst <= '0';
wait for 20 ns;

J <= '1';
K <= '1';
rst <= '0';
wait for 20 ns;

J <= '1';
K <= '1';
rst <= '0';
wait for 20 ns;

J <= '0';
K <= '0';
rst <= '0';
wait for 20 ns;

J <= '0';
K <= '0';
rst <= '1';
wait for 20 ns;
end process;
end behavior;
