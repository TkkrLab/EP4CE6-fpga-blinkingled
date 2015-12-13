LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
ENTITY full_device IS
  PORT (clk  : IN std_logic;
        reset  : IN std_logic;
		  led : OUT std_logic;
		  speedButton : IN std_logic);
END ENTITY full_device;

ARCHITECTURE full_device_architecture OF full_device IS
BEGIN
	E_blinkingled:ENTITY work.blinkingled PORT MAP (
		reset     => reset,
		clk       => clk,
		led      => led,
		speedButton	=>	speedButton );
  
END full_device_architecture;