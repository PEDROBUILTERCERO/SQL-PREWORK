"""Nivel de dificultad: Fácil"""
#2.1
CREATE DATABASE MiBaseDeDatos
#2.2
CREATE TABLE usuarios (
	id INT PRIMARY KEY,
	nombre VARCHAR (200),
	edad INT
)
#2.3
INSERT INTO usuarios (id, nombre, edad)
VALUES (1, 'Ana', 20),(2, 'Bea', 30)
#2.4
UPDATE usuarios
SET	edad = 25
WHERE id = 1
#2.5
DELETE FROM usuarios
WHERE id = 2
""" Nivel de dificultad: Moderado"""
#2.1
CREATE TABLE ciudades (
	id INT PRIMARY KEY,
	nombre VARCHAR (100),
	pais VARCHAR (50)
)
#2.2
INSERT INTO ciudades (id, nombre, pais)
VALUES (1, 'CiudadA', 'Albania'), (2, 'CiudadB', 'Belgica'), (3, 'CiudadC', 'Croacia')
#2.3
ALTER TABLE usuarios
ADD CONSTRAINT fk_ciudades FOREIGN KEY (id) REFERENCES ciudades (id)
#2.4
SELECT usuarios.nombre, ciudades.nombre, ciudades.pais
FROM usuarios LEFT JOIN ciudades ON usuarios.id = ciudades.id
#2.5
SELECT usuarios.nombre, ciudades.nombre
FROM usuarios INNER JOIN ciudades ON usuarios.id = ciudades.id
