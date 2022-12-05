CREATE DATABASE laboratorio;

--Connect database in terminal
--\c laboratorio;

-- Create user by use database laboratorio, 
CREATE USER userlab with encrypted password '1q2w3e4r5t6y';

-- Dar permisos a un usuario en PostgreSQL
--ALL, otorga todos los permisos sobre la base de datos
--ALTER, permite modificar tablas, secuencias, other...
--CREATE, permite crear tablas, secuencias, others...
--DROP, permite borrar tablas, secuencias, others....
--DELETE, permite borrar registros en tablas
--INSERT, permite insertar registros tablas
--UPDATE, permite actualizar registros en tablas
--SELECT, permite consultar tablas, secuencias, others...

GRANT ALL PRIVILEGES on database laboratorio to userlab;

 
--Create table
CREATE TABLE cliente(id serial PRIMARY KEY, nombre VARCHAR(20), apell_pat VARCHAR(20), apell_mat VARCHAR(20), domicilio VARCHAR(50));

-- Create table
CREATE TABLE producto(id SERIAL, cliente_id INT NOT NULL, nom VARCHAR(20), descr VARCHAR(40), precio DECIMAL(5) NOT NULL, PRIMARY KEY(id));

-- Alter password postgresA
ALTER user postgres WITH PASSWORD 'secret123';



-- Comandos para MYSQL
USE laboratorio; -- Use the database laboratorio in MYSQL
DESCRIBE user; -- See the atributes of table user
