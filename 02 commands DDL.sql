
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
--Rename a column
ALTER TABLE pedidos CHANGE COLUMN name product VARCHAR(10);

--Drop column
ALTER TABLE pedidos DROP COLUMN descripcion;

-- Create users
CREATE USER 'nuevo_usuario'@'localhost' IDENTIFIED BY 'passwordtemporal';

-- Assign permissions to user
GRANT ALL PRIVILEGES ON * . * TO 'nuevo_usuario'@'localhost';

--Apply changes
FLUSH PRIVILEGES;

-- Reference by MySQL https://www.hostinger.mx/tutoriales/como-crear-usuario-mysql
