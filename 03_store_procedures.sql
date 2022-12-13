--MYSQL
-- Command DDL TYPE
-- SP Insert 3 values in table users
DELIMITER //
CREATE PROCEDURE insert_users(IN p_username VARCHAR(50), IN p_password VARCHAR(150), IN p_email VARCHAR(100))
BEGIN 
    INSERT INTO users(username,password,email) VALUES (p_username,p_password,p_email);
END //
DELIMITER ;

--USE SP insert_users
CALL insert_users('usuariox','paswordy','correo@fake.com');

-- DROP SP 
DROP PROCEDURE insert_users;
