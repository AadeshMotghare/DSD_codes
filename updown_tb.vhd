--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:34:53 06/03/2023
-- Design Name:   
-- Module Name:   C:/Users/ACER/OneDrive/Desktop/DSD practs/up_down_counter_pract/updown_tb.vhd
-- Project Name:  up_down_counter_pract
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: up_down_counter
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
 
ENTITY updown_tb IS
END updown_tb;
 
ARCHITECTURE behavior OF updown_tb IS 
    COMPONENT up_down_counter
    PORT(
         clk : IN  std_logic;
         rst : IN  std_logic;
         updown : IN  std_logic;
         count : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
   signal clk : std_logic := '0';
   signal rst : std_logic := '0';
   signal updown : std_logic := '0';

   signal count : std_logic_vector(3 downto 0);
constant num_of_clocks : integer := 20;
signal i : integer := 0;
constant T : time := 20 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: up_down_counter PORT MAP (
          clk => clk,
          rst => rst,
          updown => updown,
          count => count
        );
   process 
	begin
		rst <= '0';
		clk <= '0';
		wait for T/2;
		clk <= '1';
		wait for T/2;

		if (i = num_of_clocks) then
			wait;
		else
			i <= i + 1;
		end if;

		if (i < 10) then
			updown <= '0';
		else
			updown <= '1';
		end if;

	end process;
end behavior;
