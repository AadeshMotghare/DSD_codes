--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:52:04 06/03/2023
-- Design Name:   
-- Module Name:   C:/Users/ACER/OneDrive/Desktop/DSD practs/d_ff_pract/D_ff_tb.vhd
-- Project Name:  d_ff_pract
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: D_ff
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
ENTITY D_ff_tb IS
END D_ff_tb;
 
ARCHITECTURE behavior OF D_ff_tb IS 
    COMPONENT D_ff
    PORT(
         D : IN  std_logic;
         CLK : IN  std_logic;
         RST : IN  std_logic;
         Q : OUT  std_logic;
         Qb : OUT  std_logic
        );
    END COMPONENT;
   --Inputs
   signal D : std_logic := '0';
   signal CLK : std_logic := '0';
   signal RST : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal Qb : std_logic;
constant CLK_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: D_ff PORT MAP (
          D => D,
          CLK => CLK,
          RST => RST,
          Q => Q,
          Qb => Qb
        );
Clock : process
	begin
		CLK <= '0';
			wait for 10 ns;
		CLK <= '1';
			wait for 10 ns;
	end process;

	stim : process
		begin
			RST <= '0';
			D <= '0';
			wait for 40 ns;
			D <= '1';
			wait for 40 ns;
	
			end process;
	end behavior;