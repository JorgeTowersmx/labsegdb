
--
ALTER TABLE pedidos 
RENAME COLUMN codigo_pedido TO codigo_producto;


ALTER TABLE pedidos
DROP codigo_pedidos;

ALTER TABLE pedidos
RENAME TO pedidos_nuevos;

ALTER TABLE pedidos
ALTER COLUMN notes TYPE varchar(500);
