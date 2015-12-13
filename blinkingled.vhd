LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE IEEE.numeric_std.ALL;

ENTITY blinkingled IS
  PORT (clk, reset : IN std_logic;
        led : OUT std_logic);
END ENTITY blinkingled;

ARCHITECTURE bhv OF blinkingled IS
BEGIN
  blink : PROCESS(clk,reset)
  VARIABLE ledstate: std_logic;
  VARIABLE counter: integer := 0;
  BEGIN
    IF reset='1' THEN
		  ledstate := '0';
		  counter := 0;
    ELSIF falling_edge(clk) THEN
      counter := counter + 1;
      if counter >= 50000000 THEN
        ledstate := not ledstate;
        counter := 0;
      END IF;
    END IF;
      led <= ledstate;
  END PROCESS;
END;