-- 29 May
USE FEBJAVA;

SELECT * FROM EMPLOYEE1;

-- QUESTONS 
  -- 1) Display full name of employee in uppercase
  SELECT UPPER(CONCAT(FIRST_NAME," ",LAST_NAME))  AS FULL_NAME FROM EMPLOYEE1;
  
  -- 2) Round wmployee salary
  SELECT ROUND(SALARY) FROM EMPLOYEE1;
  
  -- 3. What is the average salary of employees?
  SELECT AVG(SALARY) FROM EMPLOYEE1;
  
  -- 4. What is the highest salary in the company?
  SELECT MAX(SALARY) FROM EMPLOYEE1;
  
  -- 5. What is the lowest salary?
  SELECT MIN(SALARY) FROM EMPLOYEE1;
  
  -- 6. How many employees are there?
  SELECT COUNT(EMP_ID) FROM EMPLOYEE1;
  
  -- 7. How many employees are working in each department?
  SELECT DEPT_ID,COUNT(EMP_ID) FROM EMPLOYEE1 GROUP BY DEPT_ID;
  
  -- 9.Round each employee’s salary to 2 decimal places.
  SELECT ROUND(SALARY,2) FROM EMPLOYEE1;
  
  -- 10. Remove decimal values from salary.
  SELECT TRUNCATE(SALARY,0) FROM EMPLOYEE1;
  -- or
  SELECT ROUND(SALARY) FROM EMPLOYEE1;
  
  -- 11.Show departments having more than 1 employees.
  SELECT DEPT_ID,COUNT(EMP_ID) FROM EMPLOYEE1 GROUP BY DEPT_ID HAVING COUNT(EMP_ID)>1;
  
  -- 12.Display departments where average salary is greater than 70000.
  SELECT DEPT_ID,AVG(SALARY) FROM EMPLOYEE1 GROUP BY DEPT_ID HAVING AVG(SALARY)>70000;
  
  -- 13.Find departments having minimum salary less than 40000.
  SELECT DEPT_ID,AVG(SALARY) FROM EMPLOYEE1 GROUP BY DEPT_ID HAVING MIN(SALARY)<40000;
  
  -- 14. Display the current date.
  SELECT CURDATE();
  
  -- 15. Find employees hired after 2020.
  SELECT * FROM EMPLOYEE1 WHERE YEAR(HIRE_DATE)>2020; 
  
  -- 16. Find employees hired in the year 2019.
   SELECT * FROM EMPLOYEE1 WHERE YEAR(HIRE_DATE)=2019; 
  
  -- 17. Display the number of days between hire date and current date.
  SELECT DATEDIFF(CURDATE(), HIRE_DATE) AS NUMBER_OF_DAYS FROM EMPLOYEE1;
  