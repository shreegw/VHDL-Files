

library ieee;
use ieee.std_logic_1164.all;

entity tb_fulladder is 
end tb_fulladder;

architecture TB of tb_fulladder is 
component fulladder
port(
	A, B, Cin : in std_logic;
	Cout, Sum : out std_logic
);

end component;

signal A_tb : std_logic := '0';
signal B_tb : std_logic := '0';
signal Cin_tb : std_logic := '0';
signal Cout_tb : std_logic := '0';
signal Sum_tb : std_logic := '0';

begin

DUT : fulladder
port map(
	
	A => A_tb,
	B => B_tb,
	Cin => Cin_tb,
	Sum => Sum_tb,
	Cout => Cout_tb
	
);

stim_proc : process

begin
A_tb <= '0'; B_tb <= '0'; Cin_tb <= '0'; wait for 10 ns;

A_tb<= '0'; B_tb <= '1'; Cin_tb <= '0'; wait for 10 ns;

A_tb<= '1'; B_tb <= '0'; Cin_tb <= '0'; wait for 10 ns;

A_tb<= '1'; B_tb <= '1'; Cin_tb <= '0'; wait for 10 ns;

A_tb <= '0'; B_tb <= '0'; Cin_tb <= '1'; wait for 10 ns;

A_tb<= '0'; B_tb <= '1'; Cin_tb <= '1'; wait for 10 ns;

A_tb<= '1'; B_tb <= '0'; Cin_tb <= '1'; wait for 10 ns;

A_tb<= '1'; B_tb <= '1'; Cin_tb <= '1'; wait for 10 ns;

wait;

end process;

end TB;