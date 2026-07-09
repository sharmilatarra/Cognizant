USE EmployeeDB;
GO

-- 1. Annual Salary Function
CREATE FUNCTION fn_CalculateAnnualSalary
(
    @Salary DECIMAL(10,2)
)
RETURNS DECIMAL(10,2)
AS
BEGIN
    RETURN @Salary * 12;
END;
GO

-- Test Annual Salary Function
SELECT EmployeeID, FirstName, Salary,
dbo.fn_CalculateAnnualSalary(Salary) AS AnnualSalary
FROM Employees;
GO

-- 2. Table-Valued Function
CREATE FUNCTION fn_GetEmployeesByDepartment
(
    @DepartmentID INT
)
RETURNS TABLE
AS
RETURN
(
    SELECT * FROM Employees
    WHERE DepartmentID = @DepartmentID
);
GO

-- Test Table-Valued Function
SELECT * FROM dbo.fn_GetEmployeesByDepartment(3);
GO

-- 3. Bonus Function
CREATE FUNCTION fn_CalculateBonus
(
    @Salary DECIMAL(10,2)
)
RETURNS DECIMAL(10,2)
AS
BEGIN
    RETURN @Salary * 0.10;
END;
GO

-- Test Bonus Function
SELECT EmployeeID, FirstName,
dbo.fn_CalculateBonus(Salary) AS Bonus
FROM Employees;
GO

-- 4. Modify Bonus Function
ALTER FUNCTION fn_CalculateBonus
(
    @Salary DECIMAL(10,2)
)
RETURNS DECIMAL(10,2)
AS
BEGIN
    RETURN @Salary * 0.15;
END;
GO

-- Test Modified Bonus
SELECT EmployeeID, FirstName,
dbo.fn_CalculateBonus(Salary) AS Bonus
FROM Employees;
GO

-- 5. Nested Function
CREATE FUNCTION fn_CalculateTotalCompensation
(
    @Salary DECIMAL(10,2)
)
RETURNS DECIMAL(10,2)
AS
BEGIN
    RETURN dbo.fn_CalculateAnnualSalary(@Salary)
         + dbo.fn_CalculateBonus(@Salary);
END;
GO

-- Test Nested Function
SELECT EmployeeID, FirstName,
dbo.fn_CalculateTotalCompensation(Salary) AS TotalCompensation
FROM Employees;
GO

-- 6. Drop Bonus Function
DROP FUNCTION fn_CalculateBonus;
GO