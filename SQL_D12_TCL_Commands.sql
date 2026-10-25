USE FEBJAVA;
-- TCL COMMAND (Transaction Control Statement)

SELECT * FROM STUDENTS2;

SET AUTOCOMMIT=0;
-- 1ST ROW DELETE
DELETE FROM STUDENTS2 WHERE STUDENT_ID=1;

-- COURSE =BE (ID-2)--(BBA)
UPDATE STUDENTS2 SET COURSE="BE" WHERE STUDENT_ID=2;

SAVEPOINT S1;

-- INSERT
INSERT INTO  STUDENTS2(STUDENT_ID,STUDENT_NAME,AGE,COURSE,CITY)
VALUES (11,'A',20,'BE','PUNE');

SAVEPOINT S2;

ROLLBACK TO S1;
ROLLBACK TO S2;
ROLLBACK;

COMMIT;
-- -------------------------------------------------------------------------------------------------------------------------------------------------