USE FEBJAVA;
-- VIEW         (use only to view the table, we can not opration performance on table)
 -- EMPLOYEE1(TABLE)
 CREATE VIEW V1 AS 
 SELECT * FROM EMPLOYEE1 WHERE SALARY>70000;
 
 -- DEPARTMENT1
 CREATE VIEW V2 AS
 SELECT * FROM DEPARTMENT1;
 
 -- UPDATE VIEW(v2)   -- not update the data update Just view.
 CREATE OR REPLACE VIEW V2 AS
 SELECT DEPT_NAME,LOCATION FROM DEPARTMENT1;
 
 -- PRACTICE QUESTIONS---------------------------------------------------------------------------------------------------------------------------
 SELECT * FROM EMPLOYEE1;
 SELECT * FROM DEPARTMENT1;
 
 -- 1.employees whose salary is greater than the average salary
 SELECT * FROM EMPLOYEE1 WHERE SALARY > (SELECT AVG(SALARY) FROM EMPLOYEE1);

-- 2, employees who earn the same salary as the minimum salary for all departments
SELECT * FROM EMPLOYEE1 WHERE SALARY = (SELECT MIN(SALARY) FROM EMPLOYEE1);

-- 3. even numbered records from employees table
SELECT * FROM EMPLOYEE1 WHERE EMP_ID%2=0;

-- 4.5th maximum salary in the employees table
SELECT * FROM EMPLOYEE1 ORDER BY SALARY DESC LIMIT 4,1;

-- 5.4th minimum salary in the employees table
SELECT * FROM EMPLOYEE1 ORDER BY SALARY ASC LIMIT 3,1;

-- 6. Write a query to get 3 maximum salaries
SELECT * FROM EMPLOYEE1 ORDER BY SALARY DESC LIMIT 0,3;

-- 7.Write a query to get 3 minimum salaries
SELECT * FROM EMPLOYEE1 ORDER BY SALARY ASC LIMIT 0,3;

-- 8.difference Between The HighestAnd LowestSalaries
SELECT MAX(SALARY)-MIN(SALARY) AS DIFFERENCE FROM EMPLOYEE1;

-- 9.total salary payable in each department
SELECT DEPT_ID,SUM(SALARY) AS TOTAL_SALARY FROM EMPLOYEE1 GROUP BY DEPT_ID; 
 
-- 10.get all first name from employees table in upper case
SELECT UPPER(FIRST_NAME) FROM EMPLOYEE1; 

-- 11.get the first three characters of first name of all employees
SELECT SUBSTRING(FIRST_NAME, 1,3) FROM EMPLOYEE1;

-- 12.Write a query to calculate 171*214+625
SELECT 171*214+625;

-- 13.nameStartFrom S
SELECT FIRST_NAME FROM EMPLOYEE1 WHERE FIRST_NAME LIKE "S%";

-- 14. name EndsFromA
SELECT FIRST_NAME FROM EMPLOYEE1 WHERE FIRST_NAME LIKE "%A";

-- 15.nameContains'so'
SELECT FIRST_NAME FROM EMPLOYEE1 WHERE FIRST_NAME LIKE "%SO%";

-- 16 nameStartFromGAndEndFromU
SELECT FIRST_NAME FROM EMPLOYEE1 WHERE FIRST_NAME LIKE "G%U";

-- 17.calculate length of FIRST name
SELECT LENGTH(FIRST_NAME) FROM EMPLOYEE1;

-- 18.calculate length of FIRST name
SELECT LENGTH(FIRST_NAME) FROM EMPLOYEE1;