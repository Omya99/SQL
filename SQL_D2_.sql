USE FEBJAVA;
CREATE TABLE STUDENTS2(STUDENT_ID INT, STUDENT_NAME VARCHAR(30), AGE INT, COURSE VARCHAR(40),CITY VARCHAR(20));

INSERT INTO STUDENTS2(STUDENT_ID, STUDENT_NAME, AGE, COURSE, CITY)
VALUES(1,"Rahul",20,"BCA","Pune"),
(2,"Anita",21,"BBA","Mumabi"),
(3,"Vikas",19,"BSC","Dehli"),
(4,"Priya",22,"BCA","Chennai"),
(5,"Sneha",21,"BCA","Pune"),
(6,"Rohan",23,"MBA","Mumabi"),
(7,"Amit",20,"BCOM","Nagpur"),
(8,"Kavita",20,"BSC","Dehli"),
(9,"Arjun",22,"BBA","Hydrabad"),
(10,"Neha",19,"BCA","Bangalore");

SELECT * FROM STUDENTS2;