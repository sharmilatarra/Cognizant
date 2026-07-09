
CREATE DATABASE EmployeeDB1;
GO

USE EmployeeDB1;
GO




CREATE TABLE Departments (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100)
);

CREATE TABLE Employees (
    EmployeeID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DepartmentID INT,
    Salary DECIMAL(10,2),
    JoinDate DATE,
    FOREIGN KEY (DepartmentID) REFERENCES Departments(DepartmentID)
);

-- Insert Sample Data
INSERT INTO Departments VALUES
(1,'HR'),
(2,'Finance'),
(3,'IT'),
(4,'Marketing');

INSERT INTO Employees VALUES
(1,'John','Doe',1,5000,'2020-01-15'),
(2,'Jane','Smith',2,6000,'2019-03-22'),
(3,'Michael','Johnson',3,7000,'2018-07-30'),
(4,'Emily','Davis',4,5500,'2021-11-05');

-- Create Index
CREATE INDEX IX_Employees_LastName
ON Employees(LastName);

-- Create Unique Index
CREATE UNIQUE INDEX IX_Employees_First_Last
ON Employees(FirstName, LastName);

-- Create Composite Index
CREATE INDEX IX_Employees_Department_Salary
ON Employees(DepartmentID, Salary);

-- View Indexes
EXEC sp_helpindex 'Employees';

-- Test Index
SELECT * FROM Employees
WHERE LastName='Smith';

-- Rebuild Index
ALTER INDEX IX_Employees_Department_Salary
ON Employees REBUILD;

-- Reorganize Index
ALTER INDEX IX_Employees_Department_Salary
ON Employees REORGANIZE;

-- Disable Index
ALTER INDEX IX_Employees_Department_Salary
ON Employees DISABLE;

-- Enable Index
ALTER INDEX IX_Employees_Department_Salary
ON Employees REBUILD;

-- Drop Index
DROP INDEX IX_Employees_LastName
ON Employees;