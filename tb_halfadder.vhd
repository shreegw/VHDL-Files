
library ieee;
use ieee.std_logic_1164.all;

entity tb_halfadder is 
end tb_halfadder;

architecture TB of tb_halfadder is 
component halfadder
port(
	A, B : in std_logic;
	C, D : out std_logic
);

end component;

signal A_tb : std_logic := '0';
signal B_tb : std_logic := '0';
signal C_tb : std_logic := '0';
signal D_tb : std_logic := '0';

begin

DUT : halfadder
port map(
	
	A => A_tb,
	B => B_tb,
	C => C_tb,
	D => D_tb
	
);

stim_proc : process

begin
A_tb <= '0';
B_tb <= '0';
wait for 10 ns;

A_tb<= '0';
B_tb <= '1';
wait for 10 ns;

A_tb<= '1';
B_tb <= '0';
wait for 10 ns;

A_tb<= '1';
B_tb <= '1';
wait for 10 ns;

wait;

end process;

end TB;