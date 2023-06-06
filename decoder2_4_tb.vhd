--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   22:31:25 06/02/2023
-- Design Name:   
-- Module Name:   C:/Users/ACER/OneDrive/Desktop/DSD practs/dcoder2_4_pract/decoder2_4_tb.vhd
-- Project Name:  dcoder2_4_pract
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: decoder
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

ENTITY decoder2_4_tb IS
END decoder2_4_tb;
 
ARCHITECTURE behavior OF decoder2_4_tb IS 

    COMPONENT decoder2_4
    PORT(
         a : IN  std_logic_vector(1 downto 0);
         b : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;

   signal a : std_logic_vector(1 downto 0) ;

 	--Outputs
   signal b : std_logic_vector(3 downto 0);
 
BEGIN
	-- Instantiate the Unit Under Test (UUT)
   uut: decoder2_4 PORT MAP (
          a => a,
          b => b
        );
   -- Stimulus process 
  stim_proc: process
	begin
 -- hold reset state for 100 ns.
	wait for 100 ns;
	a <= "00";
	wait for 100 ns;
 
	a <= "01";
	wait for 100 ns;
 
	a <= "10";
	wait for 100 ns;
 
	a <= "11";
	wait;
	end process; 
END;
