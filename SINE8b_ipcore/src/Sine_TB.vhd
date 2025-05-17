----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.05.2025 17:41:36
-- Design Name: 
-- Module Name: Sine_TB - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Sine_TB is
--  Port ( );
end Sine_TB;

architecture Behavioral of Sine_TB is
signal clk     :  std_logic;
signal aresetn :  std_logic;
signal Rate    :  std_logic_vector(7 downto 0);
signal Depth   :  std_logic_vector(7 downto 0);
signal OSC_out :  std_logic_vector(7 downto 0);
--signal COUNT  :  std_logic_vector(7 downto 0):=(others=>'0');

component Sine_8b is
generic(
clkfrq : integer :=100_000_000;
clkdiv : integer :=1
);
port(
clk     : in std_logic;
aresetn : in std_logic;
Rate    : in std_logic_vector(7 downto 0);
Depth   : in std_logic_vector(7 downto 0);
OSC_out : out std_logic_vector(7 downto 0)
);
end component;

BEGIN

DUT: Sine_8b
generic map(
clkdiv=>195000)
port map(
clk=>clk,
aresetn=>aresetn,
rate=>rate,
depth=>depth,
OSC_out=>OSC_out
);





clk_generator : process is          
   begin    
       while (now<=1000ms)loop		-- define number of clock cycles to simulate
        
 		clk <= '1';					-- create one full clock period every loop iteration
           wait for 5ns;
			clk <= '0';
           wait for 5ns;
			
        end loop;	   
		
		wait;		
    end process	clk_generator;

process
begin

aresetn <='1';
rate <="00000011";
depth<="11111111";

wait;
end process;

end Behavioral;
