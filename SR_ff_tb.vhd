--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:25:04 06/03/2023
-- Design Name:   
-- Module Name:   C:/Users/ACER/OneDrive/Desktop/DSD practs/sr_flip_flop_pract/SR_ff_tb.vhd
-- Project Name:  sr_flip_flop_pract
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: SR_ff
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
--USE ieee.numeric_std.ALL; ------- Name : Janhvi ardeshi
 
ENTITY SR_ff_tb IS
END SR_ff_tb;
 
ARCHITECTURE behavior OF SR_ff_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT SR_ff
    PORT(
         S : IN  std_logic;
         R : IN  std_logic;
         RST : IN  std_logic;
         CLK : IN  std_logic;
         Q : OUT  std_logic;
         Qb : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal S : std_logic := '0';
   signal R : std_logic := '0';
   signal RST : std_logic := '0';
   signal CLK : std_logic := '0';

 	--Outputs
   signal Q : std_logic;
   signal Qb : std_logic;

BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: SR_ff PORT MAP (
	S => S,
	R => R,
	RST => RST,
	CLK => CLK,
	Q => Q,
	Qb => Qb);

	Clock : process
		begin
		CLK <= '0';
		wait for 10 ns;
		CLK <= '1';
		wait for 10 ns;
end process;

Stim : process
begin
	RST <= '0';
 
	S <= '0';
	R <= '0';
	wait for 20 ns;

	S <= '0';
	R <= '1';
	wait for 20 ns;

	S <= '1';
	R <= '0';
	wait for 20 ns;

	S <= '1';
	R <= '1';
	wait for 20 ns;

	end process;
	end behavior;