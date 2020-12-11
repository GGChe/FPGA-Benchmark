LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
use IEEE.std_logic_unsigned.all;


entity AAC2M2P1 is port (                 	
   CP: 	in std_logic; 	-- clock
   SR:  in std_logic;  -- Active low, synchronous reset
   P:    in std_logic_vector(3 downto 0);  -- Parallel input
   PE:   in std_logic;  -- Parallel Enable (Load)
   CEP: in std_logic;  -- Count enable parallel input
   CET:  in std_logic; -- Count enable trickle input
   Q:   out std_logic_vector(3 downto 0);            			
   TC:  out std_logic  -- Terminal Count
);            		
end entity AAC2M2P1;

architecture counter_architecture of AAC2M2P1 is
begin

count_proc : process (CP, SR, PE,CEP, CET)
begin
	if(SR = '0') then Q <= "0000";
  		else if(rising_edge(CP)) then 
    			else if(PE = '0') then Q<=P;
    				else if(CEP = '1' and CET='1') then	 Q <= Q + 1;
				end if;
			end if;		
		end if;
	end if;
TC <= CET and Q(0) and Q(1) and Q(2) and Q(3);
end process;
end architecture counter_architecture;

