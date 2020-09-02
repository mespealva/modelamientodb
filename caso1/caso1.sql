CREATE DATABASE caso1;
CREATE TABLE departamentos(id SERIAL PRIMARY KEY, nombre VARCHAR(75));
CREATE TABLE trabajadores (id SERIAL PRIMARY KEY, nombre VARCHAR(75), rut VARCHAR(10) NOT NULL, direccion VARCHAR(75),id_dpto INT, FOREIGN KEY (id_dpto) REFERENCES departamentos(id));
CREATE TABLE liquidaciones(id SERIAL PRIMARY KEY, archivo XML, id_trabajador INT, FOREIGN KEY (id_trabajador) REFERENCES trabajadores(id));
