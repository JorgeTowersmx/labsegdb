
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
