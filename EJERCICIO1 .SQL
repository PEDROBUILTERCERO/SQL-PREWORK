#EJERCICIO_1_SQL
#1
CREATE TABLE clientes (
	id INT PRIMARY KEY,
	nombre VARCHAR (200),
	email VARCHAR (200)
)
#2
INSERT INTO public.clientes (id, nombre, email)
VALUES (1, 'Juan', 'juan@example.com')

#3
UPDATE public.clientes
SET email = 'juan@gmail.com'
WHERE id = 1;

#4
DELETE FROM public.clientes
WHERE id = 1;

#5
	CREATE TABLE pedidos(
	id INT PRIMARY KEY,
	cliente_id INT,
	producto VARCHAR (200),
	cantidad INT,
	CONSTRAINT FK_cliente_id FOREIGN KEY (cliente_id) REFERENCES clientes (id)
)
#6
INSERT INTO public.clientes (id, nombre, email)
VALUES (1, 'Juan', 'juan@gmail.com')
INSERT INTO public.pedidos (id, cliente_id, producto, cantidad)
VALUES (1, 1, 'camiseta', 2)

#7
UPDATE public.pedidos
SET cantidad = 3
WHERE id = 1;

#8
DELETE FROM public.pedidos
WHERE id = 1;

#9
CREATE TABLE productos(
	id INT PRIMARY KEY,
	nombre VARCHAR (200),
	precio DECIMAL
)

#10
INSERT INTO public.productos (id, nombre, precio)
VALUES (1,'camisetas', 5)
INSERT INTO public.productos (id, nombre, precio)
VALUES (2,'calcetines', 2.5)
INSERT INTO public.productos (id, nombre, precio)
VALUES (3,'pantalones', 12.8)
INSERT INTO public.productos (id, nombre, precio)
VALUES (4,'jersey', 20)

#11
SELECT * FROM public.clientes


"""#AÑADO DATOS EN LAS OTRAS TABLAS"""
INSERT INTO public.clientes (id, nombre, email)
VALUES (2, 'Ana', 'ana@gmail.com')
INSERT INTO public.pedidos (id, cliente_id, producto, cantidad)
VALUES (2, 2, 'calcetines', 8)
INSERT INTO public.pedidos (id, cliente_id, producto, cantidad)
VALUES (1, 1, 'camisetas', 5)
#12 
SELECT pedidos.id as pedido_id, clientes.nombre FROM clientes JOIN pedidos ON pedidos.cliente_id = clientes.id

#13
SELECT * FROM public.productos
WHERE precio > 50

#14 SELECT * FROM public.pedidos
WHERE cantidad >= 5

#15
SELECT * FROM public.clientes
WHERE nombre LIKE 'A%'

#16
SELECT pedidos.cantidad as pedido_cantidad, clientes.nombre FROM clientes
INNER JOIN pedidos ON pedidos.cliente_id = clientes.id

#17
SELECT pedidos.cantidad as pedido_cantidad, productos.nombre FROM productos
INNER JOIN pedidos ON pedidos.cliente_id = productos.id

#18
ALTER TABLE pedidos
ADD COLUMN fecha TIMESTAMP
#19
ALTER TABLE pedidos
ADD product_id INT;

ALTER TABLE pedidos
ADD CONSTRAINT fk_product_id
	FOREIGN KEY (product_id)
		REFERENCES productos (id)
#20
SELECT clientes.nombre, productos.nombre, pedidos.cantidad
FROM clientes
INNER JOIN productos
ON clientes.id = productos.id
INNER JOIN pedidos
ON pedidos.cliente_id = clientes.id