"""EJERCICIO 5 """
#1. """ Crea una tabla llamada "Clientes" con las columnas id (entero) y nombre
(cadena de texto)"""
CREATE TABLE Clientes (
	id INT,
	nombre VARCHAR (20)
)
INSERT INTO clientes (id, nombre)
VALUES (1, 'John')

UPDATE clientes
SET nombre = 'John Doe'
WHERE id = 1

DELETE FROM clientes
WHERE id = 1

SELECT clientes.id, clientes.nombre
FROM clientes

#6 """Crea una tabla llamada "Pedidos" con las columnas id (entero) y cliente_id
(entero)."""

CREATE TABLE pedidos (
	id INT,
	cliente_id INT
)
INSERT INTO pedidos (id, cliente_id)
			VALUES (1, 1)
UPDATE pedidos
SET cliente_id = 2
WHERE id = 1

DELETE FROM pedidos
WHERE id = 1

SELECT pedidos.id, pedidos.cliente_id
FROM pedidos

#11. """Crea una tabla llamada "Productos" con las columnas id (entero) y nombre
(cadena de texto)"""
CREATE TABLE productos (
		id INT,
		nombre VARCHAR (20)
)
INSERT INTO productos (id, nombre)
	VALUES (1, 'camisa')

UPDATE productos
SET nombre = 'pantalon'
WHERE id = 1

DELETE FROM productos
WHERE id = 1
SELECT productos.id, productos.nombre
FROM public.productos

#16."""16. Crea una tabla llamada "DetallesPedido" con las columnas pedido_id (entero) y
producto_id (entero)."""

CREATE TABLE DetallesPedido (
		pedido_id INT,
		producto_id INT
)

INSERT INTO DetallesPedido (pedido_id, producto_id)
	VALUES (1,1)
UPDATE Detallespedido
SET producto_id = 2
WHERE pedido_id = 1
DELETE FROM Detallespedido
WHERE pedido_id = 1

SELECT Detallespedido.pedido_id, Detallespedido.producto_id
FROM public.detallespedido

#21"""Realiza una consulta para obtener todos los clientes y sus pedidos
correspondientes """
SELECT * FROM clientes
INNER JOIN pedidos
ON clientes.id = pedidos.cliente_id

SELECT * FROM clientes
LEFT JOIN pedidos
ON clientes.id = pedidos.cliente_id

SELECT * FROM productos
INNER JOIN Detallespedido
ON productos.id = Detallespedido.producto_id

SELECT * FROM productos
LEFT JOIN Detallespedido
ON productos.id = Detallespedido.producto_id

#25 """Crea una nueva columna llamada telefono de tipo cadena de texto en la tabla
Clientes"""

ALTER TABLE clientes
ADD COLUMN telefono VARCHAR (12)

ALTER TABLE clientes
ALTER COLUMN telefono TYPE INT USING (telefono::integer);

ALTER TABLE clientes
DROP COLUMN telefono

ALTER TABLE clientes
RENAME TO usuarios

ALTER TABLE usuarios
RENAME COLUMN nombre TO nombre_completo;
ALTER TABLE usuarios
ADD CONSTRAINT pk
PRIMARY KEY (id);
