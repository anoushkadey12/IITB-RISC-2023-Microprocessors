library ieee;
use ieee.std_logic_1164.all;

entity PC_signalcontrol is 
		port(D1: in std_logic_vector(2 downto 0); En:in std_logic; throw_for_R0: in std_logic_vector(1 downto 0); Q: out std_logic_vector(2 downto 0));
	end entity PC_signalcontrol;

architecture behav of PC_signalcontrol is
	begin
	
		proc: process (En, D1)
			begin
			if(En='1') then
				if (throw_for_R0="00") then
					Q <= "101"; 
				elsif (throw_for_R0="01") then
					Q <= "110";
				else 
					Q<= D1;
				end if;
			else
				Q <= "100"; 
			end if;
	end process;
end behav;