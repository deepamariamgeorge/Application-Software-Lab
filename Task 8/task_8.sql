USE lab;

#1
CREATE TABLE EMPLOYEES(
	Code INT PRIMARY KEY NOT NULL,
    Name VARCHAR(80),
    DOB Date,
    Designation VARCHAR(100),
    Salary FLOAT 
);

#2
INSERT INTO EMPLOYEES (Code,Name,DOB,Designation,Salary)
VALUES ('101','Jenn Brown','1994-04-09','Architect',100000.31),
('228','Jancey Crompton', '1990-01-21','Project Manager',80000.90),
('555','Scooty Pam','1998-12-31','System Analyst', 60000.40)
;

#3
SELECT SUM(Salary) FROM EMPLOYEES 
WHERE Designation='System Analyst';

#4
SELECT MAX(Salary) FROM EMPLOYEES;

#5
SELECT AVG(Salary) FROM EMPLOYEES;

#6
SELECT MIN(Salary) FROM EMPLOYEES;

#7
SELECT COUNT(*) FROM EMPLOYEES;

