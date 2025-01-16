-- select query
USE SQL_LEARNING

SELECT TOP 3 *
FROM EmployeeInfo;

-- This query retrieves all unique values from the Gender column in the EmployeeInfo table. 
-- The DISTINCT keyword ensures that only different, non-duplicate values for Gender are returned.
SELECT DISTINCT(Gender)
FROM EmployeeInfo;

SELECT COUNT(FirstName) AS TotalEmployees
FROM EmployeeInfo;

SELECT MAX(Salary) AS EmployeeSalary
FROM EmployeeSalary;

SELECT MIN(Salary) AS EmployeeSalary
FROM EmployeeSalary;

SELECT AVG(Salary) AS EmployeeSalary
FROM EmployeeSalary;