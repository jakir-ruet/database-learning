[![LinkedIn][linkedin-shield-lapissoft]][linkedin-url-lapissoft]
[![Facebook-Page][facebook-shield-lapissoft]][facebook-url-lapissoft]
[![Youtube][youtube-shield-lapissoft]][youtube-url-lapissoft]

## Visit Us [Lapis Soft](http://www.lapissoft.com)

# Welcome to Database Learning

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
