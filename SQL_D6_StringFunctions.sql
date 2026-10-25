-- FUNCTIONS
 -- Pre-define Function
  -- 1) STRING Function
  
   -- 1.1 CONCAT()
   SELECT CONCAT("Hello"," ","World");
   
   -- 1.2 LENGTH()
   SELECT LENGTH("OM KADAM");
   
   -- 1.3 CHAR_LENGTH()
   SELECT CHAR_LENGTH("HEFSHINE");
   
   -- 1.4 LOWER()
   SELECT LOWER("KADAM");
   
   -- 1.5 UPPER()
   SELECT UPPER("kadam");
   
   -- 1.6 TRIM()
   SELECT TRIM("  om   ");  -- it is remove the starting and ending spaces  
   
   -- 1.7 SUBSTRING()
   SELECT SUBSTRING("Database", 1,3);  -- extract the perticular part in string (index start from 1 and include the start and end)
   
   -- 1.8 REPLACE()
   SELECT REPLACE("28-05-2026", "-","/");  -- Replace the string 
   
   -- 1.9 INSTR()
   SELECT INSTR("Hello word","W");  -- It is return index of given STRING (in this case return the 'W' index)
   
   -- 1.10 REVERSE()
   SELECT REVERSE("ABCD");  -- Reverse the string
   
   -- 1.11 RIGHT()
   SELECT RIGHT("Hefshine",3); -- return the string/charactors from right side acoording to index (in this case return 'ing ' )