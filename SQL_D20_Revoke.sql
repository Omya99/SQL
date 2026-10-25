-- 17 June
USE FEBJAVA;

CREATE USER  "OM"@"LOCALHOST" IDENTIFIED BY "OMK@1234";
GRANT SELECT , INSERT, UPDATE ON FEBJAVA.* TO "OM"@"LOCALHOST"; -- Give access, only access select,insert,update


CREATE USER "KADAM"@"LOCALHOST" IDENTIFIED BY "OMK@1234";
GRANT ALL ON FEBJAVA.COMPANY TO "KADAM"@"LOCALHOST";

REVOKE SELECT,INSERT,UPDATE ON FEBJAVA.* FROM "OM"@"LOCALHOST";  -- remove given access 

-- --------------------------------------------------------------------------------------------------------------------
-- CUSTOMER who place orders
-- NON-CORRELATED
SELECT CUSTOMER_ID,CUSTOMER_NAME 
FROM CUSTOMER WHERE CUSTOMER_ID IN(SELECT CUSTOMER_ID FROM ORDERS);


-- -----------------------------------------------------------------------------------------------------------------------
-- CUSTOMER who place orders
-- CORRELATED
SELECT CUSTOMER_ID,CUSTOMER_NAME
FROM CUSTOMER C
WHERE CUSTOMER_ID IN(SELECT CUSTOMER_ID FROM ORDERS O WHERE C.CUSTOMER_ID=O.CUSTOMER_ID);


-- CUSTOMER who NOT place orders