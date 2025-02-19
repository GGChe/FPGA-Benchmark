-- Simple generic RAM Model
--
-- +--------------------------------------------+
-- |    Copyright 2020 GABRIEL GALEOTE CHECA    |
-- |   designer :  GGCHE              		|
-- +--------------------------------------------+

LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.numeric_std.all;

ENTITY RAM128_32 IS

	generic (
	   D_Width : integer := 32;
           A_Width : integer := 8 ); 

	PORT
	(
		address	: IN STD_LOGIC_VECTOR (6 DOWNTO 0);
		clock		: IN STD_LOGIC  := '1';
		data		: IN STD_LOGIC_VECTOR (31 DOWNTO 0);
		wren		: IN STD_LOGIC ;
		q		: OUT STD_LOGIC_VECTOR (31 DOWNTO 0)
	);
END RAM128_32;

architecture RAM of RAM128_32 is
	type ram_type is array (0 to 2**A_Width-1) of std_logic_vector (D_Width-1 downto 0);
	signal ram : ram_type;
	signal data_reg:STD_LOGIC_VECTOR(31 downto 0);

begin 
ram_proc : process(clock)
begin 
	if (rising_edge(clock)) then
		if(wren = '1') then
		 	ram(to_integer(unsigned(address))) <= data;
		end if;
	end if;
	q <= ram(to_integer(unsigned(address)));
	end process ram_proc;
end architecture raM;





