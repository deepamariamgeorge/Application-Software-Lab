USE lab;

#1
CREATE TABLE EMPLOYEES(
	Code INT PRIMARY KEY NOT NULL,
    Name VARCHAR(80),
    DOB Date,
    Designation VARCHAR(100),
    Salary FLOAT 
);

INSERT INTO EMPLOYEES (Code,Name,DOB,Designation,Salary)
VALUES ('101','Jenn Brown','1994-04-09','Architect',100000.31),
('228','Jancey Crompton', '1990-01-21','Project Manager',80000.90),
('555','Scooty Pam','1998-12-31','System Analyst', 60000.40)
;

#2
SELECT * FROM EMPLOYEES ORDER BY Name DESC;

#3
CREATE TABLE Deposit(
	BAccNo BIGINT,
    Branch_Name VARCHAR(60),
    Amount FLOAT 
);

INSERT INTO Deposit(BAccNo, Branch_Name,Amount)
VALUES (2050001,'Kollam',290000.25),
(2050002,'Thiruvanathapuram',291233.89),
(2050009,'Thrissur',123570.1);

#4
SELECT Branch_Name,COUNT(BAccNo),SUM(Amount) FROM Deposit GROUP BY Branch_Name;

