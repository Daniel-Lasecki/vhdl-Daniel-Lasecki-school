----------------------------------------------------------------------------------
-- Company: Unemployed :DDDDDDDDDDDDD
-- Engineer: 
-- 
-- Create Date: 08/09/2019 10:47:12 AM
-- Design Name: 
-- Module Name: led_thingy_top - Behavioral
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

entity led_thingy_top is
  Port (
    btn :       in  STD_LOGIC_VECTOR(3 downto 0);
    sw :        in  STD_LOGIC_VECTOR(1 downto 0);
    led :       out  STD_LOGIC_VECTOR (3 downto 0);
    led4_r :    out STD_LOGIC;
    led4_g :    out STD_LOGIC;
    led4_b :    out STD_LOGIC;
    led5_r :    out STD_LOGIC;
    led5_g :    out STD_LOGIC;
    led5_b :    out STD_LOGIC
  );
end led_thingy_top;

architecture Behavioral of led_thingy_top is
   
    -- group of RGB led signals
    signal RGB_Led_4: std_logic_vector(0 to 2);
    -- group of RGB led signals
    signal RGB_Led_5: std_logic_vector(0 to 2);
    
    --2:4 decoder signal declaration
    signal decoder_result : std_logic_vector(3 downto 0);
    signal decoder_out    : std_logic_vector(3 downto 0);


begin

    -- buttons directly mapped to red leds
    led <= decoder_result;
    decoder_out <= decoder_result;
 
    -- Some "housekeeping" first
    -- map signal "RGB_Led_4" to actual output ports
    led4_r <= RGB_Led_4(2);
    led4_g <= RGB_Led_4(1);
    led4_b <= RGB_Led_4(0);
    
    -- map signal "RGB_Led_5" to actual output ports
    led5_r <= RGB_Led_5(2);
    led5_g <= RGB_Led_5(1);
    led5_b <= RGB_Led_5(0);
        
    decoder_result <= --2:4 decoder
        "1000" when (sw(0) = '1' and btn(1 downto 0) = "00") else -- led[3] in
        "1110" when (sw(0) = '1' and btn(1 downto 0) = "01") else -- led[3-1] on
        "1110" when (sw(0) = '1' and btn(1 downto 0) = "10") else -- led[3-1] on
        "0101" when (sw(0) = '1' and btn(1 downto 0) = "11") else -- led[2 and 0] on
        
        "0001" when (sw(0) = '0' and btn(1 downto 0) = "00") else -- led[0] on (RGB off)
        "0010" when (sw(0) = '0' and btn(1 downto 0) = "01") else -- led[1] on (RGB red)
        "0100" when (sw(0) = '0' and btn(1 downto 0) = "10") else -- led[2] on (RGB green)
        "1000" when (sw(0) = '0' and btn(1 downto 0) = "11") else -- led[3] on (RGB blue)
        "0000";  -- Default case
        
    
    
    with btn select
        RGB_Led_4 <=    "000" when "00", -- off
                        "100" when "01", -- red
                        "010" when "10", -- green 
                        "001" when "11", -- blue
                        "000" when others; 
                        
    
    
    RGB_Led_5 <=
        "111" when sw(1) = '1' else          -- sw 1 white         ---- remember sw(0) and sw(1) diff inputs
        RGB_Led_4 when sw(0) = '1' else      -- acts as led 4 
        "000";                               -- off     
                        
end Behavioral;