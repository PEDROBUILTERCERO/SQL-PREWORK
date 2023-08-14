"""Nivel de dificultad: Difícil"""
#3.1
CREATE TABLE Productos (
	id INT PRIMARY KEY,
	nombre VARCHAR (20),
	precio INT
)
#3.2
INSERT INTO productos (id, nombre, precio)
VALUES (1, 'kiwi', 5), (2, 'melon', 10), (3, 'manzana', 2), (4,'fresa', 5), (5, 'cereza', 7)
#3.3
UPDATE productos
SET precio = 12
WHERE id = 4
#3.4
DELETE from productos
WHERE id = 5
#3.5
SELECT usuarios.nombre, productos.nombre
FROM usuarios INNER JOIN productos ON usuarios.id = productos.id
