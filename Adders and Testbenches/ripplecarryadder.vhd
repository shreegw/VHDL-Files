-- Ripple Carry Adder using Full Adder (4 Bit)

library ieee;
use ieee.std_logic_1164.all;

entity ripplecarryadder is  

port(
	A0, A1, A2, A3 : in std_logic;
	B0, B1, B2, B3 : in std_logic;
	Cin : in std_logic;
	S0, S1, S2, S3 : out std_logic;
	Cout : out std_logic
);

end ripplecarryadder;

architecture RCA of ripplecarryadder is 

	component fulladder
	port(
		A, B, Cin : in std_logic;
		Cout, Sum : out std_logic
	    );
	end component;

	signal Cout0: std_logic;
	signal Cout1: std_logic;
	signal Cout2: std_logic;

begin 
	FA1: fulladder
	port map(
		A => A0,
		B => B0,
		Cin => Cin,
		Sum => S0,
		Cout => Cout0
	);
	
	FA2: fulladder
	port map(
		A => A1,
		B => B1,
		Cin => Cout0,
		Sum => S1,
		Cout => Cout1
	);

	FA3: fulladder
	port map(
		A => A2,
		B => B2,
		Cin => Cout1,
		Sum => S2,
		Cout => Cout2
	);
	FA4: fulladder
	port map(
		A => A3,
		B => B3,
		Cin => Cout2,
		Sum => S3,
		Cout => Cout
	);


end RCA;