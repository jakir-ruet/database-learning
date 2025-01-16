CREATE DATABASE SQL_LEARNING;

USE SQL_LEARNING;

CREATE TABLE EmployeeInfo(
EmployeeId int,
FirstName varchar(50),
LastName varchar(35),
Age int,
Gender varchar(25)
);

INSERT INTO EmployeeInfo VALUES
(101, 'Jakir', 'Ahmed', 35, 'Male'),
(102, 'Jasim', 'Uddin', 30, 'Male'),
(103, 'Zabbar', 'Ali', 32, 'Male'),
(104, 'Sabrina', 'Begum', 25, 'Female'),
(105, 'Mamum', 'Hossain', 42, 'Male'),
(106, 'Sadek', 'Ahmed', 36, 'Male'),
(107, 'Kabir', 'Uddin', 39, 'Male'),
(108, 'Amirul', 'Islam', 34, 'Male'),
(109, 'Sairul', 'Alam', 33, 'Male'),
(110, 'Selim', 'Khan', 38, 'Male')

SELECT * FROM EmployeeInfo;

SELECT FirstName
FROM EmployeeInfo;

CREATE TABLE EmployeeSalary(
EmployeeId int,
Designation varchar(45),
Salary decimal
);

INSERT INTO EmployeeSalary VALUES
(101, 'AGM', 50000),
(102, 'Sr. Manager', 40000),
(103, 'Sr. Manager', 45000),
(104, 'Manager', 35000),
(105, 'Manager', 35000),
(106, 'Sr. Executive', 30000),
(107, 'Sr. Executive', 30000),
(108, 'Executive', 25000),
(109, 'Executive', 25000),
(110, 'Jr. Executive', 20000)

SELECT * FROM EmployeeSalary;