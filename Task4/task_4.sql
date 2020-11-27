USE lab;

#a)
CREATE TABLE Department(
    Code INT PRIMARY KEY NOT NULL,
    Title VARCHAR(30),
    Dept_Name VARCHAR(30) UNIQUE NOT NULL,
    Dept_Id INT UNIQUE NOT NULL,
    Salary INT,
    CHECK (Salary > 2000 )
);

INSERT INTO Department(Code, Title, Dept_Name, Dept_Id, Salary) 
VALUES (507, "FI_RS", "Research", 110, 17000);


#b)
CREATE TABLE Instructor(
    Name VARCHAR(50) NOT NULL,
    Code INT NOT NULL,
    Id INT PRIMARY KEY DEFAULT 0
);

INSERT INTO Instructor(Name, Code)
VALUES ("Jen Jam", 177);



