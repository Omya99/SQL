-- 29 May
-- Pre-define Functions
 -- 3) Date And Time Functions
  
  -- 3.1 NOW()
  SELECT NOW();     -- Show the current date and time
  
  -- 3.2 CURDATE()
  SELECT CURDATE();   -- Show the current date, in the format(YYYY-MM-DD)
  
  -- 3.3 CURTIME()
  SELECT CURTIME();   -- Show the current time, in the format(HH:MM:SEC)
  
  -- 3.4 DATE() 
  SELECT DATE("2025-05-29 12:12:30");   -- show only date part.
  
  -- 3.5 DATE_ADD()
  SELECT DATE_ADD("2026-05-15", INTERVAL 10 DAY);   -- Add the days in the given date(in this line add 10 extra days)
  
  -- 3.6 DATEDIFF()
  SELECT DATEDIFF("2026-05-15", "2015-01-9");     -- return difference between this two dates (in days)
  
  -- 3.7 TIMESTAMP()
  SELECT TIMESTAMP("2026-05-15","12:6:30");    -- combine print the date and time 
  
  -- 3.8 YEAR()
  SELECT YEAR("2025-05-29");    -- show only year.
  
  -- 3.9 MONTH() 
  SELECT MONTH("2025-05-29");    -- show only month.
  
  -- 3.10 DAY()
  SELECT DAY("2025-05-29");     -- show only days.
  
  -- 3.11 DAYNAME()
  SELECT DAYNAME("2025-05-29");   -- show day name of given date
  
  -- 3.12 HOUR()
  SELECT HOUR("2:43:21");       -- show only hours.