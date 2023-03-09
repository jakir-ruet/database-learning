-- CREATE DATABASE MYTESTDB;
-- USE MYTESTDB;
-- SHOW DATABASES;
-- DROP DATABASE MYTESTDB;

CREATE TABLE MYTESTTABLE(
    ID INT UNSIGNED UNIQUE,
    USER_NAME VARCHAR(150),
    FATHER_NAME VARCHAR(150),
    MOTHER_NAME VARCHAR(150),
    EMAIL VARCHAR(100),
    PHONE VARCHAR(100)
)

-- Inserting data
SELECT * FROM MYTESTTABLE;
INSERT INTO MYTESTTABLE(ID, USER_NAME, FATHER_NAME, MOTHER_NAME, EMAIL, PHONE) VALUE(1, 'Jakir', 'Humaion Ali', 'Banu Begum', 'jakir.ruet.bd@gmail.com', '+8801788916805');
INSERT INTO MYTESTTABLE(ID, USER_NAME, FATHER_NAME, MOTHER_NAME, EMAIL, PHONE) VALUE(2, 'Jasim', 'Ali Ahmed', 'Sarah Begum', 'jasim.ruet.bd@gmail.com', '+8801788916806');
INSERT INTO MYTESTTABLE(ID, USER_NAME, FATHER_NAME, MOTHER_NAME, EMAIL, PHONE) VALUE(3, 'Rahim', 'Rafique Haque', 'rahima Begum', 'rahim@gmail.com', '+8801788917634');
INSERT INTO MYTESTTABLE(ID, USER_NAME, FATHER_NAME, MOTHER_NAME, EMAIL, PHONE) VALUE(4, 'Karim', 'Kabir Ahmed', 'karima Begum', 'karim@gmail.com', '+8801788976523');

-- Data viewing
SELECT * FROM MYTESTTABLE;

SELECT * FROM MYTESTTABLE WHERE FATHER_NAME = 'Humaion Ali';
SELECT * FROM MYTESTTABLE WHERE EMAIL = 'jasim.ruet.bd@gmail.com';

SELECT * FROM MYTESTTABLE WHERE USER_NAME = 'Jakir' AND EMAIL = 'jakir.ruet.bd@gmail.com';
SELECT * FROM MYTESTTABLE WHERE USER_NAME = 'Jasim' OR EMAIL = 'jakir.ruet.bd@gmail.com';

SELECT * FROM MYTESTTABLE WHERE NOT FATHER_NAME = 'Humaion Ali';

-- updating data
UPDATE MYTESTTABLE SET USER_NAME = 'Jakir', FATHER_NAME = 'Kabir Hossain' WHERE ID = '1';
UPDATE MYTESTTABLE SET USER_NAME = 'Rahim', MOTHER_NAME = 'Rahima Begum' WHERE ID = '3';
UPDATE MYTESTTABLE SET USER_NAME = 'Karim', MOTHER_NAME = 'Karima Begum' WHERE ID = '4';

SELECT * FROM MYTESTTABLE;

-- By order
SELECT * FROM MYTESTTABLE ORDER BY USER_NAME;
SELECT * FROM MYTESTTABLE ORDER BY FATHER_NAME;
SELECT * FROM MYTESTTABLE ORDER BY MOTHER_NAME;

-- Order by null value
SELECT * FROM MYTESTTABLE WHERE USER_NAME IS NULL;