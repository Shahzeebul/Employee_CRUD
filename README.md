# Employee_CRUD
CREATE DATABASE EmployeeDB;
USE EmployeeDB;
DROP DATABASE EmployeeDB;

CREATE TABLE Employee (
    EmpID INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(50) NOT NULL,
    Age INT,
    Position VARCHAR(50),
    Salary DOUBLE,
    Email VARCHAR(100),
    Password VARCHAR(50)
);


DESC Employee;
SELECT * FROM Employee;

