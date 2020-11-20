USE lab;


CREATE TABLE EMPLOYEE(
	EmpId CHAR(4) NOT NULL, 
    EmployeeName VARCHAR(10) NOT NULL,
    Designation VARCHAR(30),
    DateOfBirth DATE,
    Salary NUMERIC,
    PRIMARY KEY(EmpId)
);

INSERT INTO EMPLOYEE (EmpId, EmployeeName, Designation, DateOfBirth, Salary)
VALUES ('e1','Jonas','Manager','1985-04-09',95800),('e2','Scarlet','Analyst','1994-12-06',67400);

SELECT * FROM EMPLOYEE;

CREATE TABLE EMPLOYDETAILS(
	Sex CHAR(1),
    Nationality CHAR(10),
    GNo INT,
    PRIMARY KEY(GNo),
    EmpId CHAR(4) REFERENCES EMPLOYEE(EmpId)
    );

INSERT INTO EMPLOYDETAILS(Sex,Nationality,GNo,EmpId)
VALUES ("F","German","25","e1"), ("F","Italian","35","e4");

SELECT * FROM EMPLOYEE WHERE
EmpId IN (SELECT EmpId FROM EMPLOYDETAILS);

SELECT * FROM EMPLOYEE WHERE
EmpId NOT IN(SELECT EmpId FROM EMPLOYDETAILS);