


-- Commands MYSQL
--Since terminal  example = root@debian#mysqldump 

mysqldump -u root -p name_database > respaldo_name_database.sql

--Restore
mysql -u usuario -p name_database < respaldo_name_database.sql
