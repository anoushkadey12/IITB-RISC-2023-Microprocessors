library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
 
entity mux7_1 is
port(A,B,C,D,E,F,G : in std_logic_vector (15 downto 0);
S: in std_logic_vector (2 downto 0);
Z: out std_logic_vector (15 downto 0));
end mux7_1;
 
architecture Beh of mux7_1 is
 
begin
 
p1: process (A,B,C,D,E,F,G,S) 
begin
			if (S ="000") then
			   Z <= A;
			elsif (S ="001") then
			   Z <= B;
			elsif (S ="010") then
			   Z <= C;
			elsif (S ="011") then
			   Z <= D;
			elsif (S ="100") then
			   Z <= E;
			elsif (S ="101") then
			   Z <= F;
			elsif (S="110") then
			   Z <= G;
			else
				Z <= G;
			end if;
end process p1;
 
end Beh;