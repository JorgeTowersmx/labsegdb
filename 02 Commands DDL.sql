
-- Commands in Postgresql

ALTER TABLE pedidos 
RENAME COLUMN codigo_pedido TO codigo_producto;


ALTER TABLE pedidos
DROP codigo_pedidos;

ALTER TABLE pedidos
RENAME TO pedidos_nuevos;

ALTER TABLE pedidos
ALTER COLUMN notes TYPE varchar(500);


-- Commands in MYSQL

-- CREATE TABLE 
CREATE TABLE users(
  id INT, 
  name VARCHAR(50),
  password VARCHAR(50),
  lastname VARCHAR(50),
  email VARCHAR(50),
  country VARCHAR(10),
  cp VARCHAR(10),
  gender ENUM('male','female'),
  created_at DATETIME
);


-- CREATE TABLE with CONSTRAINTS
--RULES by columns
--NOT NULL
--UNIQUE
--PRIMARY KEY
--DEFAULT
--UNSIGNED
--ENUMS!

CREATE TABLE users(
  id INT UNSIGNED PRIMARY KEY AUTO_INCREMENT, 
  username VARCHAR(50) NOT NULL UNIQUE,
  age INT NOT NULL,
  password VARCHAR(50),
  lastname VARCHAR(50),
  email VARCHAR(50) NOT NULL,
  country VARCHAR(10) NOT NULL,
  cp VARCHAR(10) NOT NULL,
  gender ENUM('male','female') NOT NULL DEFAULT 'female',
  created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);


--Describe table users
DESC users;

--Rename a column
ALTER TABLE pedidos CHANGE COLUMN name product VARCHAR(10);

--Drop column
ALTER TABLE pedidos DROP COLUMN descripcion;

-- Create users
CREATE USER 'nuevo_usuario'@'localhost' IDENTIFIED BY 'passwordtemporal';

-- Assign permissions to user
GRANT ALL PRIVILEGES ON * . * TO 'soporte'@'localhost';

--Apply changes
FLUSH PRIVILEGES;

-- SHOW PRIVILEGES by USER
SHOW GRANTS FOR 'soporte'@'localhost';

