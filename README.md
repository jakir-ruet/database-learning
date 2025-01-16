[![LinkedIn][linkedin-shield-lapissoft]][linkedin-url-lapissoft]
[![Facebook-Page][facebook-shield-lapissoft]][facebook-url-lapissoft]
[![Youtube][youtube-shield-lapissoft]][youtube-url-lapissoft]

## Visit Us [Lapis Soft](http://www.lapissoft.com)

# Welcome to Database Learning
## [For More](SQL Database Introduction to Advance.pdf)


# SQL Data Types
Data types are used to represent the nature of the data that can be stored in the database table. For example, in a particular column of a table, if we want to store a string type of data, we will have to declare a string data type for this column. Data types are mainly classified into three categories for every database:
1. String Data types
2. Numeric Data types
3. Date and time Data types

## SQL Server String Data Type
| Data Type     | Description                                                            | Max Size                    |
|---------------|------------------------------------------------------------------------|-----------------------------|
| `char(n)`     | Fixed width character string data type.                                 | Up to 8000 characters       |
| `varchar(n)`  | Variable width character string data type.                             | Up to 8000 characters       |
| `varchar(max)`| Variable width character string data type.                             | Up to 1,073,741,824 characters|
| `text`        | Variable width character string data type.                             | Up to 2GB of text data      |
| `nchar`       | Fixed width Unicode string data type.                                  | Up to 4000 characters       |
| `nvarchar`    | Variable width Unicode string data type.                               | Up to 4000 characters       |
| `ntext`       | Variable width Unicode string data type.                               | Up to 2GB of text data      |
| `binary(n)`   | Fixed width Binary string data type.                                   | Up to 8000 bytes            |
| `varbinary`   | Variable width Binary string data type.                                | Up to 8000 bytes            |
| `image`       | Variable width Binary string data type.                                | Up to 2GB                   |

## SQL Server Numeric Data Types
| Data Type     | Description                                                            | Range                         |
|---------------|------------------------------------------------------------------------|-------------------------------|
| `bit`         | Integer that can be 0, 1 or null.                                       | 0, 1, NULL                    |
| `tinyint`     | Whole numbers from 0 to 255.                                            | 0 to 255                      |
| `smallint`    | Whole numbers between -32,768 and 32,767.                              | -32,768 to 32,767             |
| `int`         | Whole numbers between -2,147,483,648 and 2,147,483,647.                | -2,147,483,648 to 2,147,483,647|
| `bigint`      | Whole numbers between -9,223,372,036,854,775,808 and 9,223,372,036,854,775,807. | -9,223,372,036,854,775,808 to 9,223,372,036,854,775,807 |
| `float(n)`    | Floating precision number data from -1.79E+308 to 1.79E+308. The `n` parameter indicates whether the field should hold 4 or 8 bytes. | -1.79E+308 to 1.79E+308      |
| `real`        | Floating precision number from -3.40E+38 to 3.40E+38.                  | -3.40E+38 to 3.40E+38        |
| `money`       | Monetary data from -922,337,233,685,477.5808 to 922,337,203,685,477.5807. | -922,337,233,685,477.5808 to 922,337,203,685,477.5807 |

## SQL Server Date and Time Data Type
| Data Type     | Description                                                            | Range                         |
|---------------|------------------------------------------------------------------------|-------------------------------|
| `datetime`    | Date and time combination, supports range from January 1, 1753 to December 31, 9999 with 3.33 milliseconds accuracy. | January 1, 1753 to December 31, 9999 |
| `datetime2`   | Date and time combination, supports range from January 1, 0001 to December 31, 9999 with 100 nanoseconds accuracy. | January 1, 0001 to December 31, 9999 |
| `date`        | Stores date only.                                                       | January 1, 0001 to December 31, 9999 |
| `time`        | Stores time only with 100 nanoseconds accuracy.                         | N/A                           |
| `timestamp`   | Stores a unique number when a new row gets created or modified, based on an internal clock. | N/A                           |

## SQL Server Other Data Types
| Data Type      | Description                                                              | Max Size                     |
|----------------|--------------------------------------------------------------------------|------------------------------|
| `sql_variant`  | Used for various data types except for text, timestamp, and ntext. Stores up to 8000 bytes of data. | Up to 8000 bytes             |
| `XML`          | Stores XML formatted data.                                                | Maximum 2GB                   |
| `cursor`       | Stores a reference to a cursor used for database operations.             | N/A                          |
| `table`        | Stores result set for later processing.                                   | N/A                          |
| `uniqueidentifier` | Stores GUID (Globally Unique Identifier).                              | N/A                          |

# Normalization in DBMS (SQL)

Normalization is the process of organizing the fields (columns) and tables (relations) of a database to minimize redundancy and dependency. The goal of normalization is to ensure that the database is efficient, consistent, and free from undesirable characteristics like update anomalies, insertion anomalies, and deletion anomalies.

Normalization is typically done in stages, each stage or form called a **normal form (NF)**. The most common normal forms are **1NF**, **2NF**, **3NF**, and **BCNF**.

## 1. First Normal Form (1NF)

A table is in **1NF** if:
- It has a primary key.
- All columns contain atomic (indivisible) values.
- Each column contains values of a single type.
- Each column contains unique values for a given record.

### Example:
Consider the following table of students and their courses:

| StudentID | StudentName | Courses                        |
|-----------|-------------|--------------------------------|
| 1         | Alice       | Math, English, History         |
| 2         | Bob         | Science, Math                  |

In this case, the **Courses** column is not atomic because it contains multiple values. To convert this table to **1NF**, we split the courses into separate rows:

| StudentID | StudentName | Course   |
|-----------|-------------|----------|
| 1         | Alice       | Math     |
| 1         | Alice       | English  |
| 1         | Alice       | History  |
| 2         | Bob         | Science  |
| 2         | Bob         | Math     |

Now, each column contains atomic values, and the table is in **1NF**.

---

## 2. Second Normal Form (2NF)

A table is in **2NF** if:
- It is in **1NF**.
- It does not have partial dependency, i.e., every non-key attribute is fully dependent on the primary key.

**Partial dependency** occurs when a non-key column is dependent on only part of the composite primary key. This is only relevant when you have a composite primary key (a key made up of more than one column).

### Example:
Consider the following table of orders:

| OrderID | ProductID | ProductName | Quantity | Price |
|---------|-----------|-------------|----------|-------|
| 1       | 101       | Laptop      | 2        | 500   |
| 1       | 102       | Mouse       | 1        | 25    |
| 2       | 101       | Laptop      | 1        | 500   |

Here, **OrderID** and **ProductID** together form the composite primary key. The **ProductName** and **Price** are dependent only on **ProductID**, not on the full composite key (**OrderID, ProductID**). To achieve **2NF**, we split the table into two:

1. **Orders Table:**

| OrderID | ProductID | Quantity |
|---------|-----------|----------|
| 1       | 101       | 2        |
| 1       | 102       | 1        |
| 2       | 101       | 1        |

2. **Products Table:**

| ProductID | ProductName | Price |
|-----------|-------------|-------|
| 101       | Laptop      | 500   |
| 102       | Mouse       | 25    |

Now, both tables are in **2NF**, as all non-key attributes are fully dependent on the primary key.

---

## 3. Third Normal Form (3NF)

A table is in **3NF** if:
- It is in **2NF**.
- It does not have transitive dependency, i.e., non-key attributes are not dependent on other non-key attributes.

**Transitive dependency** occurs when a non-key attribute depends on another non-key attribute rather than the primary key.

### Example:
Consider the following table of employees:

| EmployeeID | EmployeeName | DepartmentID | DepartmentName | Manager |
|------------|--------------|--------------|----------------|---------|
| 1          | Alice        | D1           | Sales          | John    |
| 2          | Bob          | D2           | HR             | Sarah   |

Here, **DepartmentName** and **Manager** are dependent on **DepartmentID**, which is a non-key attribute. This is a transitive dependency because **DepartmentID** determines **DepartmentName** and **Manager**, and they depend on **DepartmentID** rather than on the primary key **EmployeeID**.

To achieve **3NF**, we break the table into two:

1. **Employees Table:**

| EmployeeID | EmployeeName | DepartmentID |
|------------|--------------|--------------|
| 1          | Alice        | D1           |
| 2          | Bob          | D2           |

2. **Departments Table:**

| DepartmentID | DepartmentName | Manager |
|--------------|----------------|---------|
| D1           | Sales          | John    |
| D2           | HR             | Sarah   |

Now, the tables are in **3NF**, with no transitive dependencies.

---

## 4. Boyce-Codd Normal Form (BCNF)

A table is in **BCNF** if:
- It is in **3NF**.
- It has no exceptions to the rule that every determinant is a candidate key. In simpler terms, if any non-prime attribute (not part of a candidate key) determines another attribute, it violates BCNF.

In **BCNF**, each determinant must be a candidate key.

### Example:
Consider the following table of courses:

| CourseID | Instructor | Room  |
|----------|------------|-------|
| CS101    | Dr. Smith  | A101  |
| CS102    | Dr. Johnson| B202  |

In this case, **Instructor** determines **Room**, but **Instructor** is not a candidate key (only **CourseID** is the primary key). This violates BCNF because **Instructor** (a non-key attribute) is determining another attribute (**Room**).

To achieve **BCNF**, we split the table into two:

1. **Courses Table:**

| CourseID | Instructor |
|----------|------------|
| CS101    | Dr. Smith  |
| CS102    | Dr. Johnson|

2. **Rooms Table:**

| Instructor  | Room  |
|-------------|-------|
| Dr. Smith   | A101  |
| Dr. Johnson | B202  |

Now the tables are in **BCNF**.

---

## Summary of Normal Forms (NF):

| Normal Form | Condition                                                                                           |
|-------------|-----------------------------------------------------------------------------------------------------|
| **1NF**     | Each column contains atomic values.                                                                 |
| **2NF**     | It is in 1NF, and there is no partial dependency (i.e., non-key attributes depend on the whole key).  |
| **3NF**     | It is in 2NF, and there is no transitive dependency (i.e., non-key attributes do not depend on other non-key attributes). |
| **BCNF**    | It is in 3NF, and there is no exception to the rule that every determinant is a candidate key.       |

---

## Conclusion:
Normalization helps in reducing redundancy, improving data integrity, and ensuring efficient storage and retrieval. However, in some cases, normalization can lead to performance issues (e.g., requiring many joins). In such cases, a balanced approach between normalization and denormalization may be needed based on specific use cases.

# What is a Stored Procedure?

A **Stored Procedure** is a precompiled collection of one or more SQL statements that can be executed as a single unit. Stored procedures are used to encapsulate complex business logic, reduce the amount of repetitive SQL code, and improve performance. They can be executed by applications, users, or other procedures. They are stored in the database itself, making them reusable and easier to manage.

## Benefits of Using Stored Procedures:
1. **Modularity:** Stored procedures allow you to write and maintain complex logic in a single place. This makes the code more modular and easier to manage.
2. **Performance:** Stored procedures are precompiled, which can lead to performance improvements compared to executing individual SQL statements every time.
3. **Security:** By using stored procedures, you can grant users permission to execute specific procedures without giving them direct access to the underlying tables.
4. **Reusability:** Once written, stored procedures can be reused multiple times across different applications or parts of the same application.
5. **Maintainability:** Since the logic is contained within the database, updating business logic can be done in one place without modifying application code.

---

## Syntax of a Stored Procedure in SQL:

The basic syntax for creating a stored procedure in SQL is:

```sql
CREATE PROCEDURE ProcedureName
    @Parameter1 DataType,
    @Parameter2 DataType
AS
BEGIN
    -- SQL Statements
    SELECT * FROM TableName WHERE Column1 = @Parameter1;
    -- Additional SQL statements
END;
```
## Courtesy of Jakir

[![LinkedIn][linkedin-shield-jakir]][linkedin-url-jakir]
[![Facebook-Page][facebook-shield-jakir]][facebook-url-jakir]
[![Youtube][youtube-shield-jakir]][youtube-url-jakir]

### Have a good day, stay with me
<!-- Personal profile -->

[linkedin-shield-jakir]: https://img.shields.io/badge/linkedin-%230077B5.svg?style=for-the-badge&logo=linkedin&logoColor=white
[linkedin-url-jakir]: https://www.linkedin.com/in/jakir-ruet/
[facebook-shield-jakir]: https://img.shields.io/badge/Facebook-%231877F2.svg?style=for-the-badge&logo=Facebook&logoColor=white
[facebook-url-jakir]: https://www.facebook.com/jakir-ruet/
[youtube-shield-jakir]: https://img.shields.io/badge/YouTube-%23FF0000.svg?style=for-the-badge&logo=YouTube&logoColor=white
[youtube-url-jakir]: https://www.youtube.com/@mjakaria-ruet/featured

<!-- Company profile -->

[linkedin-shield-lapissoft]: https://img.shields.io/badge/linkedin-%230077B5.svg?style=for-the-badge&logo=linkedin&logoColor=white
[linkedin-url-lapissoft]: https://www.linkedin.com/company/lapis-soft/
[facebook-shield-lapissoft]: https://img.shields.io/badge/Facebook-%231877F2.svg?style=for-the-badge&logo=Facebook&logoColor=white
[facebook-url-lapissoft]: https://www.facebook.com/GoLapisSoft/
[youtube-shield-lapissoft]: https://img.shields.io/badge/YouTube-%23FF0000.svg?style=for-the-badge&logo=YouTube&logoColor=white
[youtube-url-lapissoft]: https://www.youtube.com/@LapisSoft/featured
