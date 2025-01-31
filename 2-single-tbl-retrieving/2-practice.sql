USE SQL_LEARNING

SELECT Gender, Age, COUNT(Gender) AS TotalEmployee
FROM EmployeeInfo
GROUP BY Gender, Age

SELECT Gender, Age, COUNT(Gender) AS TotalEmployee
FROM EmployeeInfo
WHERE Age <= 35
GROUP BY Gender, Age