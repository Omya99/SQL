USE FEBJAVA;
SELECT * FROM EMPLOYEE1;
SELECT * FROM DEPARTMENT1;

-- (QUESTIONS ON EMPLOYEE AND DEPARTMENT TABLE)

-- 1. Display all employees and their department names.
SELECT E.FIRST_NAME, E.LAST_NAME, D.DEPT_NAME 
FROM EMPLOYEE1 E JOIN DEPARTMENT1 D 
ON E.DEPT_ID=D.DEPT_ID;

-- 2. Display all departments and their employees.


-- 3. Display employee name, department name, and hire date.
SELECT E.FIRST_NAME,E.LAST_NAME, D.DEPT_NAME, E.HIRE_DATE
FROM EMPLOYEE1 E JOIN DEPARTMENT1 D 
ON E.DEPT_ID=D.DEPT_ID;

-- 4. List employees working in the IT department.
SELECT E.FIRST_NAME, E.LAST_NAME, D.DEPT_NAME
FROM EMPLOYEE1 E JOIN DEPARTMENT1 D
ON E.DEPT_ID=D.DEPT_ID 
WHERE D.DEPT_NAME="IT";

-- 5. Show employee name, salary, and department location.
SELECT E.FIRST_NAME, E.LAST_NAME, E.SALARY, D.LOCATION
FROM EMPLOYEE1 E JOIN DEPARTMENT1 D
ON E.DEPT_ID=D.DEPT_ID;

-- 6. Display employee first name, last name, and department name.
SELECT E.FIRST_NAME, E.LAST_NAME,D.DEPT_NAME
FROM EMPLOYEE1 E JOIN DEPARTMENT1 D 
ON E.DEPT_ID=D.DEPT_ID;

-- ------------------------------------------------------------------------------------------------------------

CREATE TABLE Products3 (
    Customer_ID INT PRIMARY KEY,
    Product_Name VARCHAR(50),
    Price DECIMAL(10,2)
);

INSERT INTO Products3 (customer_ID, Product_Name, Price) 
VALUES
(1, 'Laptop', 70000),
(2, 'Mobile', 25000),
(3, 'Headphones', 3000),
(4, 'Tablet', 20000);


SELECT * FROM CUSTOMER;
SELECT * FROM ORDERS;
SELECT * FROM PRODUCTS3;

-- (QUESTIONS ON 3 TABLES CUSTOMER,ORDERS AND PRODUCTS TABLE)
-- 1. Display customer name, product name,order_id and Price they ordered.
SELECT C.CUSTOMER_NAME, P.PRODUCT_NAME, O.ORDER_ID, P.PRICE
FROM CUSTOMER C JOIN ORDERS O
ON C.CUSTOMER_ID=O.CUSTOMER_ID
JOIN PRODUCTS3 P           -- For third table join
ON O.CUSTOMER_ID=P.CUSTOMER_ID;

-- 2. Show customer name, city, and product ordered.
SELECT C.CUSTOMER_NAME, C.CITY, P.PRODUCT_NAME
FROM CUSTOMER C JOIN PRODUCTS3 P 
ON C.CUSTOMER_ID=P.CUSTOMER_ID;

-- 3. Show all customers,Price of products and the products they ordered (even if no order).
SELECT C.CUSTOMER_NAME,P.PRODUCT_NAME,P.PRICE
FROM CUSTOMER C JOIN PRODUCTS3 P 
ON C.CUSTOMER_ID=P.CUSTOMER_ID
