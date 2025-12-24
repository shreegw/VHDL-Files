--full adder using half adders

library ieee;
use ieee.std_logic_1164.all;

entity fulladder is  

port(
	A, B, Cin : in std_logic;
	Cout, Sum : out std_logic
);

end fulladder;

architecture FA of fulladder is 

	component halfadder
	port(
		A, B : in std_logic;
		C, D : out std_logic
	    );
	end component;

	signal s1: std_logic;
	signal c1: std_logic;
	signal c2: std_logic;

begin 
	HA1: halfadder
	port map(
		A => A,
		B => B,
		C => s1,
		D => c1
	);
	
	HA2: halfadder
	port map(
		A => s1,
		B => Cin,
		C => Sum,
		D => c2
	);

	Cout <= c1 or c2;


end FA;