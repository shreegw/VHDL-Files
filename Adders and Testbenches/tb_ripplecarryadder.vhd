library ieee;
use ieee.std_logic_1164.all;

entity tb_ripplecarryadder is 
end tb_ripplecarryadder;

architecture TB of tb_ripplecarryadder is 

component ripplecarryadder
port(
	A0, A1, A2, A3 : in std_logic;
	B0, B1, B2, B3 : in std_logic;
	Cin : in std_logic;
	S0, S1, S2, S3 : out std_logic;
	Cout : out std_logic
);

end component;

signal A0_tb : std_logic := '0';
signal B0_tb : std_logic := '0';
signal S0_tb : std_logic := '0';

signal A1_tb : std_logic := '0';
signal B1_tb : std_logic := '0';
signal S1_tb : std_logic := '0';

signal A2_tb : std_logic := '0';
signal B2_tb : std_logic := '0';
signal S2_tb : std_logic := '0';

signal A3_tb : std_logic := '0';
signal B3_tb : std_logic := '0';
signal S3_tb : std_logic := '0';

signal Cin_tb : std_logic := '0';
signal Cout_tb : std_logic := '0';

begin

DUT : ripplecarryadder
port map(
	
		A0 => A0_tb,
		A1 => A1_tb,
 		A2 => A2_tb,
		A3 => A3_tb,
		B0 => B0_tb,
 		B1 => B1_tb,
 		B2 => B2_tb,
 		B3 => B3_tb,
		Cin => Cin_tb,
		S0 => S0_tb,
 		S1 => S1_tb,
 		S2 => S2_tb,
 		S3 => S3_tb,
		Cout => Cout_tb
	
);

stim_proc : process

begin
A0_tb <= '0'; B0_tb <= '0';A1_tb <= '1'; B1_tb <= '0';A2_tb <= '1'; B2_tb <= '1';A3_tb <= '0'; B3_tb <= '1'; Cin_tb <= '0'; wait for 10 ns;

A0_tb<= '0'; B0_tb <= '1'; A1_tb <= '0'; B1_tb <= '0';A2_tb <= '0'; B2_tb <= '1';A3_tb <= '0'; B3_tb <= '0';Cin_tb <= '0'; wait for 10 ns;

A0_tb<= '1'; B0_tb <= '0'; A1_tb <= '1'; B1_tb <= '0';A2_tb <= '0'; B2_tb <= '0';A3_tb <= '0'; B3_tb <= '0';Cin_tb <= '0'; wait for 10 ns;

A0_tb<= '1'; B0_tb <= '1'; A1_tb <= '0'; B1_tb <= '0';A2_tb <= '1'; B2_tb <= '0';A3_tb <= '1'; B3_tb <= '0';Cin_tb <= '0'; wait for 10 ns;

A0_tb <= '0'; B0_tb <= '0';A1_tb <= '1'; B1_tb <= '1';A2_tb <= '1'; B2_tb <= '0';A3_tb <= '0'; B3_tb <= '1'; Cin_tb <= '1'; wait for 10 ns;

A0_tb<= '0'; B0_tb <= '1'; A1_tb <= '0'; B1_tb <= '1';A2_tb <= '0'; B2_tb <= '0';A3_tb <= '0'; B3_tb <= '0';Cin_tb <= '1'; wait for 10 ns;

A0_tb<= '1'; B0_tb <= '0'; A1_tb <= '1'; B1_tb <= '1';A2_tb <= '0'; B2_tb <= '1';A3_tb <= '0'; B3_tb <= '0';Cin_tb <= '1'; wait for 10 ns;

A0_tb<= '1'; B0_tb <= '1'; A1_tb <= '0'; B1_tb <= '1';A2_tb <= '1'; B2_tb <= '1';A3_tb <= '1'; B3_tb <= '0';Cin_tb <= '1'; wait for 10 ns;

wait;

end process;

end TB;