-- Code your testbench here
-- or browse Examples
library IEEE;
use IEEE.std_logic_1164.all;

entity bcd_ssd_tb is
end entity;

architecture beh of bcd_ssd_tb is

	component bcd_ssd is
		port(b:in std_logic_vector(3 downto 0);
			out1:out std_logic_vector(6 downto 0));
	end component;
	signal b:std_logic_vector(3 downto 0);
	signal out1 :std_logic_vector(6 downto 0);	
	begin
		UUT:bcd_ssd PORT MAP(
			b=>b,
			out1=>out1 
		);
	process
		begin 
			wait for 100 ns;
				b<="0000";
			wait for 100 ns;
				b<="0001";
			wait for 100 ns;
				b<="0010";
			wait for 100 ns;
				b<="0011";
			wait for 100 ns;
				b<="0100";
			wait for 100 ns;
				b<="0101";
			wait for 100 ns;
				b<="0110";
			wait for 100 ns;
				b<="0111";  
			wait for 100 ns;
				b<="1000";
			wait for 100 ns;
				b<="1001";
			wait for 100 ns;
		
			ASSERT FALSE REPORT "Test done. Open EPWave to see signals." SEVERITY NOTE;
		WAIT;  
end process;
end beh;