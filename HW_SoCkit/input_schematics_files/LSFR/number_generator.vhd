library ieee;
use ieee.std_logic_1164.all;

library work;

entity number_generator is
port(
	reset_in : in std_logic;
	clk_in : in std_logic;
	CS: in std_logic;
	OE: in std_logic;
	readdata: out std_logic_vector(0 to 31)
	);
end entity number_generator;

architecture main of number_generator is

	COMPONENT LFSR
		PORT
		(
			reset_in		:	 IN STD_LOGIC;
			clk_in		:	 IN STD_LOGIC;
			CS		:	 IN STD_LOGIC;
			OE		:	 IN STD_LOGIC;
			readdata		:	 OUT STD_LOGIC_VECTOR(0 TO 31)
		);
	END COMPONENT;
	
	begin
	
	gen1: component LFSR port map(
		reset_in => reset_in,
		clk_in => clk_in,
		CS => CS,
		OE => OE,
		readdata => readdata	
	);
	
end architecture;
	