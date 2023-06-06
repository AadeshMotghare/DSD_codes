--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:24:59 06/03/2023
-- Design Name:   
-- Module Name:   C:/Users/ACER/OneDrive/Desktop/DSD practs/ram_pract/RAM_tb.vhd
-- Project Name:  ram_pract
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: RAM1
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

ENTITY RAM_tb IS
END RAM_tb;
 
ARCHITECTURE behavior OF RAM_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT RAM1
    PORT(
         din : IN  std_logic_vector(7 downto 0);
         dout : OUT  std_logic_vector(7 downto 0);
         clk : IN  std_logic;
         rd : IN  std_logic;
         wr : IN  std_logic;
         locn : IN  integer
        );
    END COMPONENT;
    

   --Inputs
   signal din : std_logic_vector(7 downto 0) := (others => '0');
   signal clk : std_logic := '0';
   signal rd : std_logic := '0';
   signal wr : std_logic := '0';
   signal locn : integer := 0;

 	--Outputs
   signal dout : std_logic_vector(7 downto 0);
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: RAM1 PORT MAP (
          din => din,
          dout => dout,
          clk => clk,
          rd => rd,
          wr => wr,
          locn => locn
        );
   stim_proc: process
   begin		
		din <= "10111011";
		rd <= '0';
		wr <= '1';
		locn <= 0;
		wait for 10 ns;
		din <= "11111111";
		rd <= '0';
		wr <= '1';
		locn <= 2;
		wait for 10 ns;
		din <= "11001100";
		rd <= '1';
		wr <= '0';
		locn <= 0;
		wait for 10 ns;
		din <= "11111111";
		rd <= '0';
		wr <= '1';
		locn <= 0;
		wait for 10 ns;
   end process;
	clk <= not clk after 5 ns;
END behavior;
