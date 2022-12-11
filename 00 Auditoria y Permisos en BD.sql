-- Comands by MYSQL 
--First you need create a user
-- Privilege by Administrator
GRANT ALL PRIVILEGES ON *.* TO 'appadmin'@'localhost';
FLUSH PRIVILEGES;


-- Privilege by user application
-- *.*, first * is database and second * is tables
GRANT SELECT,INSERT,UPDATE, DELETE ON bootcamp.* TO 'appuser'@'localhost';
FLUSH PRIVILEGES;

--SHOW Privileges

SHOW GRANTS FOR 'appuser'@'localhost';

-- OUTPUT query
--+-------------------------------------------------------------------------------+
--| Grants for appuser@localhost                                                  |
--+-------------------------------------------------------------------------------+
--| GRANT USAGE ON *.* TO `appuser`@`localhost`                                   |
--| GRANT SELECT, INSERT, UPDATE, DELETE ON `bootcamp`.* TO `appuser`@`localhost` |
--+-------------------------------------------------------------------------------+

--Path logs
SHOW VARIABLES LIKE '%general_log%';

--Enable audit
SET GLOBAL general_log=on;
--OUTPUT audit
--root@debian:/var/lib/mysql# tail debian.log  
--/usr/sbin/mysqld, Version: 8.0.31 (MySQL Community Server - GPL). started with:
--Tcp port: 3306  Unix socket: /var/run/mysqld/mysqld.sock
--Time                 Id Command    Argument
--2022-12-11T02:21:47.037157Z	   11 Query	SHOW VARIABLES LIKE '%general_log%'
--2022-12-11T02:22:19.772122Z	   11 Query	SELECT DATABASE()
--2022-12-11T02:22:19.772608Z	   11 Init DB	bootcamp
--2022-12-11T02:22:24.940084Z	   11 Query	SHOW TABLES
--2022-12-11T02:22:31.940009Z	   11 Query	select * from users
--2022-12-11T02:23:05.328025Z	   11 Query	SELECT COUNT(*) FROM (SELECT DISTINC country FROM users) AS result
--2022-12-11T02:23:23.676939Z	   11 Query	SELECT name  FROM users WHERE gender = 'Male' AND  age>50
