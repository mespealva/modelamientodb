CREATE DATABASE caso2;
CREATE TABLE cursos (id SERIAL PRIMARY KEY, nombre VARCHAR(25));
CREATE TABLE alumnos(rut VARCHAR(10) PRIMARY KEY, nombre VARCHAR(50), id_curso INT, FOREIGN KEY(id_curso) REFERENCES cursos(id));
CREATE TABLE departamentos(id SERIAL PRIMARY KEY, nombre VARCHAR(25));
CREATE TABLE profesores (id SERIAL PRIMARY KEY, nombre VARCHAR(25), id_dpto INT, FOREIGN KEY (id_dpto) REFERENCES departamentos(id));
CREATE TABLE pruebas (id SERIAL PRIMARY KEY, puntaje INT, a_rut VARCHAR(10), p_id INT, FOREIGN KEY (a_rut) REFERENCES alumnos(rut), FOREIGN KEY (p_id) REFERENCES profesores(id));
