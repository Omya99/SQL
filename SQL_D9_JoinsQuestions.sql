-- 1 JUNE
USE FEBJAVA;
SELECT * FROM CUSTOMER;
SELECT * FROM ORDERS;
-- JOIN QUESTIONS->

 -- 1.Write a query to display Customer Name and Product ordered by them.
 SELECT C.CUSTOMER_NAME, O.PRODUCT
 FROM CUSTOMER C JOIN ORDERS O 
 ON C.CUSTOMER_ID=O.CUSTOMER_ID;

 -- 2.Write a query to display all customers and their products. Customers who have not placed any order should also appear.
 SELECT C.CUSTOMER_NAME, O.PRODUCT
 FROM CUSTOMER C LEFT JOIN ORDERS O 
 ON C.CUSTOMER_ID=O.CUSTOMER_ID;

 -- 3.Write a query to display all orders along with customer names, even if the customer details are missing.
 SELECT C.CUSTOMER_NAME, O.ORDER_ID, O.CUSTOMER_ID, O.PRODUCT
 FROM CUSTOMER C RIGHT JOIN ORDERS O
 ON C.CUSTOMER_ID=O.CUSTOMER_ID;

 -- 4.Write a query to display customers who have not placed any orders.
 SELECT C.CUSTOMER_NAME, O.PRODUCT, O.ORDER_ID
 FROM CUSTOMER C LEFT JOIN ORDERS O
 ON C.CUSTOMER_ID=O.CUSTOMER_ID
 WHERE O.ORDER_ID IS NULL;

 -- 5.Write a query to display customer name and total number of orders placed by each customer.
 SELECT C.CUSTOMER_NAME, COUNT(O.ORDER_ID) 
 FROM CUSTOMER C LEFT JOIN ORDERS O
 ON C.CUSTOMER_ID=O.CUSTOMER_ID 
 GROUP BY C.CUSTOMER_NAME;  

 -- 6.Write a query to display Customer Name, City, and Product where the customer is from 'Pune'.
 SELECT C.CUSTOMER_NAME, C.CITY, O.PRODUCT 
 FROM CUSTOMER C JOIN ORDERS O 
 ON C.CUSTOMER_ID=O.CUSTOMER_ID
 WHERE C.CITY="Pune";

 -- 7.Write a query to display customers who placed more than one order.
 SELECT C.CUSTOMER_NAME, COUNT(O.ORDER_ID)
 FROM CUSTOMER C LEFT JOIN ORDERS O
 ON C.CUSTOMER_ID=O.CUSTOMER_ID GROUP BY C.CUSTOMER_NAME
 HAVING COUNT(O.ORDER_ID)>1;

 -- 8.Question: Display Customer Name and Product for customers who live in 'Pune'.
 SELECT C.CUSTOMER_NAME, O.PRODUCT
 FROM CUSTOMER C JOIN ORDERS O 
 ON C.CUSTOMER_ID=O.CUSTOMER_ID
 WHERE C.CITY="Pune";

 -- 9.Question: Display Customer Name and City for customers who ordered 'Laptop'.
 SELECT C.CUSTOMER_NAME, C.CITY
 FROM CUSTOMER C JOIN ORDERS O 
 ON C.CUSTOMER_ID=O.CUSTOMER_ID
 WHERE O.PRODUCT = "Laptop";

 -- 10.Question: Display Customer Name and number of products ordered for customers who ordered more than one product.
SELECT C.CUSTOMER_NAME, COUNT(O.ORDER_ID)
FROM CUSTOMER C LEFT JOIN ORDERS O 
ON C.CUSTOMER_ID=O.CUSTOMER_ID GROUP BY C.CUSTOMER_NAME
HAVING COUNT(O.ORDER_ID)>1;

 -- 11.Question: Display Customer Name and City of customers who have not placed any orders.
SELECT C.CUSTOMER_NAME, C.CITY
FROM CUSTOMER C LEFT JOIN ORDERS O  
ON C.CUSTOMER_ID=O.CUSTOMER_ID 
WHERE O.ORDER_ID IS NULL;

 -- 12.Question: Display Customer Name and Product where product is Laptop or Mobile.
SELECT C.CUSTOMER_NAME, C.CITY
FROM CUSTOMER C JOIN ORDERS O
ON C.CUSTOMER_ID=O.CUSTOMER_ID
WHERE PRODUCT="Laptop" OR PRODUCT="Mobile";

SELECT * FROM EMPLOYEE1;
SELECT * FROM DEPARTMENT1;
 -- 13.Display Employees Working in 'IT' Department
SELECT E.FIRST_NAME, E.LAST_NAME, D.DEPT_NAME
FROM EMPLOYEE1 E LEFT JOIN DEPARTMENT1 D
ON E.DEPT_ID=D.DEPT_ID
WHERE D.DEPT_NAME="IT";

 -- 14. Display Employees with Salary Greater Than 70000
SELECT E.FIRST_NAME, E.LAST_NAME, E.SALARY
FROM EMPLOYEE1 E LEFT JOIN DEPARTMENT1 D
ON E.DEPT_ID=D.DEPT_ID
WHERE E.SALARY>70000;

-- 15. Display Employees Who Work in 'Chicago' Location
SELECT E.FIRST_NAME, E.LAST_NAME, D.LOCATION
FROM EMPLOYEE1 E JOIN DEPARTMENT1 D 
ON E.DEPT_ID=D.DEPT_ID
WHERE D.LOCATION="Chicago";

 -- 16.Display Employees Hired After 2020 with Their Department
SELECT E.FIRST_NAME, E.LAST_NAME, D.DEPT_NAME, E.HIRE_DATE
FROM EMPLOYEE1 E JOIN DEPARTMENT1 D 
ON E.DEPT_ID=D.DEPT_ID
WHERE YEAR(E.HIRE_DATE)>2020;

 -- 17. Display Employees Working in 'Finance' or 'IT' Department
SELECT E.FIRST_NAME, E.LAST_NAME, D.DEPT_NAME
FROM EMPLOYEE1 E JOIN DEPARTMENT1 D
ON E.DEPT_ID=D.DEPT_ID
WHERE D.DEPT_NAME="Finance" OR D.DEPT_NAME="IT";

-- OR
SELECT E.FIRST_NAME, E.LAST_NAME, D.DEPT_NAME
FROM EMPLOYEE1 E JOIN DEPARTMENT1 D
ON E.DEPT_ID=D.DEPT_ID
WHERE D.DEPT_NAME IN("Finance","IT");
