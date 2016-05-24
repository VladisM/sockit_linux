library ieee;
use ieee.std_logic_1164.all;

entity output_selector is port(
	input_data: in std_logic_vector(36 downto 0);
	output_data: out std_logic_vector(13 downto 0);
	bank_select: in std_logic_vector(2 downto 0)
);
end entity output_selector;

architecture main of output_selector is 

begin
with bank_select select
	output_data <= input_data(29 downto 16) when "000",
						input_data(29 downto 16) when "001",
						input_data(27 downto 14) when "010",
						input_data(27 downto 14) when "011",
						input_data(29 downto 16) when "100",
						input_data(29 downto 16) when "101",
						input_data(28 downto 15) when "110",
						input_data(28 downto 15) when "111",
						"00000000000000" when others;
end architecture main;
	