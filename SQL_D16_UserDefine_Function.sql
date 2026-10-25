-- USER-DEFINE FUNCTIONTAX
 -- Syntax ->
 /*
   DELIMITER $$
   CREATE FUNCTION function_name (param1 datatype, param datatype,...)
   RETURN return_datatype
   deterministic
   begin
    -- function logic
    RETURN value
   END $$
   DELIMITER ;
   SELECT function_name(param)
 */
 
 -- -----------------------------------------------------------------------------------------------------------------------------------------------
 
 -- 1) create function to add two numbers
 DELIMITER $$
 CREATE FUNCTION ADD_NUMBERS(num1 INT,num2 INT)
 RETURNS INT
 DETERMINISTIC 
 BEGIN
 RETURN num1+num2;
 END $$
 DELIMITER ;
 SELECT ADD_NUMBERS(7,4);
 
 -- 2) square of a number
 DELIMITER $$
 CREATE FUNCTION SQUARE_OF_NUMBER(num INT)
 RETURNS INT
 DETERMINISTIC
 BEGIN 
 RETURN num*num;
 END $$
 DELIMITER ;
 SELECT SQUARE_OF_NUMBER(7);
 
 -- 3) Greater of two Numbers
 DELIMITER $$
 CREATE FUNCTION GREATER_NUMBER(a INT,b INT)
 RETURNS INT 
 DETERMINISTIC
 BEGIN
 IF a>b THEN RETURN a;
 ELSE RETURN b;
 END IF;
 END $$
 DELIMITER ;
 SELECT GREATER_NUMBER(3,8);
 
 -- 
 DELIMITER $$
 CREATE FUNCTION EVEN_ODD_CHECK(num INT)
 RETURNS VARCHAR(20) 
 DETERMINISTIC
 BEGIN
 IF num%2=0 THEN RETURN "IT IS EVEN NUMBER";
 ELSE RETURN "IT IS ODD NUMBER";
 END IF;
 END $$
 DELIMITER ;
 SELECT EVEN_ODD_CHECK(8);
 
 -- UDF to return full name
 DELIMITER $$
 CREATE FUNCTION FULLNAME(F_NAME VARCHAR(20), L_NAME VARCHAR(20))
 RETURNS VARCHAR(40)
 DETERMINISTIC
 BEGIN 
 RETURN
 CONCAT(F_NAME,' ',L_NAME);
 END $$
 DELIMITER ;
 SELECT FULLNAME("OM","KADAM");
 
 -- UDF to get age from birthdate
 DELIMITER $$
 CREATE  FUNCTION YEAR_DIFF(B_DATE DATE,C_DATE DATE)
 RETURNS INT
 DETERMINISTIC
 BEGIN
 RETURN YEAR(B_DATE)-YEAR(C_DATE);
 END $$
 DELIMITER ;
 SELECT YEAR_DIFF(CURDATE(),"2005/7/18");
 