library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use ieee.std_logic_unsigned.all;

entity top is
    Port ( clk : in  STD_LOGIC;
			  reset : in  STD_LOGIC;
           up_down : in  STD_LOGIC;
           enable : in  STD_LOGIC; 
            p1,p2,p3,p4,start: in STD_LOGIC;
			  seg_out : out STD_LOGIC_VECTOR(7 downto 0);
			  led : out STD_LOGIC; --map it
			  seg_sel : out STD_LOGIC_VECTOR(7 downto 0)

			  );
end top;

architecture Behavioral of top is

component clk_converter
    Port (
        clk_in : in  STD_LOGIC;
        enable  : in  STD_LOGIC;
		  rst   : in  STD_LOGIC;
        clk_out: out STD_LOGIC
    );
end component;

component universal_counter 
		Port ( clk : in STD_LOGIC;
			    rst : in STD_LOGIC;
				 up_down : in STD_LOGIC;
				 enable : in STD_LOGIC;
				 upperlimit : in STD_LOGIC_VECTOR(3 downto 0);
				 enable_out : out STD_LOGIC;
				 result : out STD_LOGIC_VECTOR(3 downto 0));
		end component;

component seven_four 
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
			
end component;

    signal c: STD_LOGIC:='0';
	signal clk1,w0,w1,w2,w3,dp: STD_LOGIC; --enable outs
	signal b0,b1,b2,b3 : STD_LOGIC_VECTOR(3 downto 0); --results
    signal aasec1,aasec10,aamin1,aamin10:STD_LOGIC_VECTOR(3 downto 0):="0000";
	signal seg_out_7 :STD_LOGIC_VECTOR(6 downto 0); 
	signal seg_sel_4 : STD_LOGIC_VECTOR(7 downto 0);

begin
    led<=c;
	C0:clk_converter port map(clk,enable,reset,clk1);
	sec1:universal_counter port map(clk1,reset,up_down,enable,"1001",w0,b0);
	sec10:universal_counter port map(clk1,reset,up_down,w0,"0101",w1,b1);
	min1:universal_counter port map(clk1,reset,up_down,w1,"1001",w2,b2);
	min10:universal_counter port map(clk1,reset,up_down,w2,"0101",w3,b3);

--seven segment te hangi clock kullanýlacak bir bak !!

process(clk,p1,p2,p3,p4,start)
begin    
    if (p1 = '1') then
        aasec1 <= aasec1 + "0001";
    elsif (p2 = '1') then
        aasec10 <= aasec10 + "0001";
    elsif (p3 = '1') then
        aamin1 <= aamin1 + "0001";
    elsif (p4 = '1') then
        aamin10 <= aamin10 + "0001";
    end if;
    if (b0 = aasec1 and b1 = aasec10 and b2 = aamin1 and b3 = aamin10 and start = '1') then
            c<=not c; 
    end if;
end process;
	C5 :seven_four port map (b0, b1, b2, b3,aasec1, aasec10 , aamin1 , aamin10, clk, dp,seg_sel_4,seg_out_7);
	seg_out <= (seg_out_7 &dp);              
	seg_sel <= seg_sel_4;

end Behavioral;