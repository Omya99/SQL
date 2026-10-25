-- 29 May
-- Pre-define Functions
 -- 2) numeric Functions
 
 -- 2.1 ABS()
 SELECT ABS(-77);    -- convert negative value to positive
 
  -- 2.2 CEIL()      
  SELECT CEIL(20.2);  -- return nearest greatest value of given number
  
  -- 2.3 FLOOR()
  SELECT FLOOR(20.3);  -- return nearest lowest value of given number
  
  -- 2.4 ROUND()
  SELECT ROUND(3.567);
  SELECT ROUND(56.230);
  SELECT ROUND(7.1345, 2);
  SELECT ROUND(53.786, 2);
  SELECT ROUND(53.67);
  
  -- 2.5 MOD()
  SELECT MOD(20, 3);   -- return the mod of given numbers
  
  -- 2.6 POWER()
  SELECT POWER(4,3);   -- return the power of number (second given number is power)
  
  -- 2.7 SQRT()
  SELECT SQRT(49);    -- return the square root of given number
  
  -- 2.8 RAND() 
  SELECT RAND();      -- return random number every time
  
  -- 2.9 TRUNCATE()
  SELECT TRUNCATE(56.8736, 3);    -- cut the decimal number after point
  
  -- 2.10 SIGN()
  SELECT SIGN(-2);    -- if number is negative its return (-1), if number is positive its return (1)