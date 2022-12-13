-- sudo mysql;
-- mysql -u root -p;

-- CREATE USER 'jakir'@'localhost' IDENTIFIED WITH authentication_plugin BY 'My@054003';
-- CREATE USER 'jakir'@'localhost' IDENTIFIED WITH caching_sha2_password BY 'My@054003';

-- SELECT USER FROM MYSQL.USER;

-- CREATE USER 'jasim'@'localhost' IDENTIFIED BY 'My@054004';
-- ALTER USER 'jasim'@'localhost' IDENTIFIED BY 'My@054005';

-- CREATE USER 'karim'@'localhost' IDENTIFIED WITH mysql_native_password BY 'My@054006';

-- Permission --
-- Grand Permission (Get All Access)
-- GRANT CREATE ON *.* TO 'jakir'@'localhost';
-- GRANT ALTER ON *.* TO 'jakir'@'localhost';

-- SHOW GRANTS FOR 'jakir'@'localhost';

-- REVOKE CREATE ON *.* FROM 'jakir'@'localhost';
-- SHOW GRANTS FOR 'jakir'@'localhost';

-- REVOKE ALTER ON *.* FROM 'jakir'@'localhost';
-- SHOW GRANTS FOR 'jakir'@'localhost';

-- SELECT USER FROM MYSQL.USER;
-- DROP USER 'sammy'@'localhost';