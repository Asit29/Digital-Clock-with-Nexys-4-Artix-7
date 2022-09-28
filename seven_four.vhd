library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity seven_four is
    Port ( in1 : in  STD_LOGIC_VECTOR (3 downto 0);
           in2 : in  STD_LOGIC_VECTOR (3 downto 0);
           in3 : in  STD_LOGIC_VECTOR (3 downto 0);
           in4 : in  STD_LOGIC_VECTOR (3 downto 0);
           in5 : in  STD_LOGIC_VECTOR (3 downto 0);
           in6 : in  STD_LOGIC_VECTOR (3 downto 0);
           in7 : in  STD_LOGIC_VECTOR (3 downto 0);
           in8 : in  STD_LOGIC_VECTOR (3 downto 0);
           clk : in  STD_LOGIC;
		   dp  : out  STD_LOGIC;
           sel : out  STD_LOGIC_VECTOR (7 downto 0);
           segment : out  STD_LOGIC_VECTOR (6 downto 0)
			);
			
end seven_four;

architecture Behavioral of seven_four is

signal counter : STD_LOGIC_VECTOR (17 downto 0) ;
signal sev_in1, sev_in2, sev_in3, sev_in4, sev_in5, sev_in6, sev_in7, sev_in8 : STD_LOGIC_VECTOR (6 downto 0);

begin
	
	dp <= '1';

	with in1 select
		sev_in1 (6 downto 0)<= 
			"1000000" when "0000",
			"1111001" when "0001",
			"0100100" when "0010",
			"0110000" when "0011",
			"0011001" when "0100",
			"0010010" when "0101",
			"0000010" when "0110",
			"1111000" when "0111",
			"0000000" when "1000",
			"0010000" when "1001",
			"0001000" when "1010",			
			"0000011" when "1011",
			"1000110" when "1100",
			"0100001" when "1101",
			"0000110" when "1110",
			"0001110" when "1111",
			"1111111" when others;
			
	with in2 select
		sev_in2 (6 downto 0)<= 
			"1000000" when "0000",
			"1111001" when "0001",
			"0100100" when "0010",
			"0110000" when "0011",
			"0011001" when "0100",
			"0010010" when "0101",
			"0000010" when "0110",
			"1111000" when "0111",
			"0000000" when "1000",
			"0010000" when "1001",
			"0001000" when "1010",			
			"0000011" when "1011",
			"1000110" when "1100",
			"0100001" when "1101",
			"0000110" when "1110",
			"0001110" when "1111",
			"1111111" when others;

			
	with in3 select
		sev_in3 (6 downto 0)<= 
			"1000000" when "0000",
			"1111001" when "0001",
			"0100100" when "0010",
			"0110000" when "0011",
			"0011001" when "0100",
			"0010010" when "0101",
			"0000010" when "0110",
			"1111000" when "0111",
			"0000000" when "1000",
			"0010000" when "1001",
			"0001000" when "1010",			
			"0000011" when "1011",
			"1000110" when "1100",
			"0100001" when "1101",
			"0000110" when "1110",
			"0001110" when "1111",
			"1111111" when others;

			
	with in4 select
		sev_in4 (6 downto 0)<= 
			"1000000" when "0000",
			"1111001" when "0001",
			"0100100" when "0010",
			"0110000" when "0011",
			"0011001" when "0100",
			"0010010" when "0101",
			"0000010" when "0110",
			"1111000" when "0111",
			"0000000" when "1000",
			"0010000" when "1001",
			"0001000" when "1010",			
			"0000011" when "1011",
			"1000110" when "1100",
			"0100001" when "1101",
			"0000110" when "1110",
			"0001110" when "1111",
			"1111111" when others;
			
    with in5 select
                    sev_in5 (6 downto 0)<= 
                        "1000000" when "0000",
                        "1111001" when "0001",
                        "0100100" when "0010",
                        "0110000" when "0011",
                        "0011001" when "0100",
                        "0010010" when "0101",
                        "0000010" when "0110",
                        "1111000" when "0111",
                        "0000000" when "1000",
                        "0010000" when "1001",
                        "0001000" when "1010",            
                        "0000011" when "1011",
                        "1000110" when "1100",
                        "0100001" when "1101",
                        "0000110" when "1110",
                        "0001110" when "1111",
                        "1111111" when others;

with in6 select
		sev_in6 (6 downto 0)<= 
			"1000000" when "0000",
			"1111001" when "0001",
			"0100100" when "0010",
			"0110000" when "0011",
			"0011001" when "0100",
			"0010010" when "0101",
			"0000010" when "0110",
			"1111000" when "0111",
			"0000000" when "1000",
			"0010000" when "1001",
			"0001000" when "1010",			
			"0000011" when "1011",
			"1000110" when "1100",
			"0100001" when "1101",
			"0000110" when "1110",
			"0001110" when "1111",
			"1111111" when others;			
			
			with in7 select
                    sev_in7 (6 downto 0)<= 
                        "1000000" when "0000",
                        "1111001" when "0001",
                        "0100100" when "0010",
                        "0110000" when "0011",
                        "0011001" when "0100",
                        "0010010" when "0101",
                        "0000010" when "0110",
                        "1111000" when "0111",
                        "0000000" when "1000",
                        "0010000" when "1001",
                        "0001000" when "1010",            
                        "0000011" when "1011",
                        "1000110" when "1100",
                        "0100001" when "1101",
                        "0000110" when "1110",
                        "0001110" when "1111",
                        "1111111" when others;
                        
                    with in8 select
                                sev_in8 (6 downto 0)<= 
                                    "1000000" when "0000",
                                    "1111001" when "0001",
                                    "0100100" when "0010",
                                    "0110000" when "0011",
                                    "0011001" when "0100",
                                    "0010010" when "0101",
                                    "0000010" when "0110",
                                    "1111000" when "0111",
                                    "0000000" when "1000",
                                    "0010000" when "1001",
                                    "0001000" when "1010",            
                                    "0000011" when "1011",
                                    "1000110" when "1100",
                                    "0100001" when "1101",
                                    "0000110" when "1110",
                                    "0001110" when "1111",
                                    "1111111" when others;
                                    
	process (clk, sev_in1, sev_in2, sev_in3, sev_in4,sev_in5, sev_in6, sev_in7, sev_in8)	
	variable sec : STD_LOGIC_VECTOR (2 downto 0) := "000" ;
	begin
		if(clk'event and clk = '1') then
		counter <= counter + 1;
		sec := (counter(17) & counter(16)& counter(15));
		end if;
		
		case (sec) is
			when "000" =>
				sel <= "11111110";
				segment <= sev_in1;
						
			when "001" =>
				sel <= "11111101";
				segment <= sev_in2;
			
			when "010" =>
				sel <= "11111011";
				segment <= sev_in3;
			
			when "011" => 
				sel <= "11110111";
				segment <= sev_in4;
			when "100" =>
                    sel <= "11101111";
                    segment <= sev_in5;
                            
                when "101" =>
                    sel <= "11011111";
                    segment <= sev_in6;
                
                when "110" =>
                    sel <= "10111111";
                    segment <= sev_in7;
                
                when "111" => 
                    sel <= "01111111";
                    segment <= sev_in8;			
			when others => 
				sel <= "11111111";
				segment <= "1111111";	
		end case;
		
end process;

end Behavioral;
