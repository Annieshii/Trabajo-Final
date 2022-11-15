CREATE DATABASE pedidosYa;

CREATE TABLE usuario (id_usuario INT PRIMARY KEY, nombre_usuario VARCHAR (40), contraseña VARCHAR (10), direccion VARCHAR (40))
CREATE TABLE producto (id_producto INT PRIMARY KEY, descripcion VARCHAR (40), proveedor VARCHAR (10))
CREATE TABLE factura (id INT PRIMARY KEY, monto INTEGER, tipo_pago VARCHAR (30))
CREATE TABLE pedido (producto INT, usuario VARCHAR (40), cantidad INT, id_factura INT PRIMARY KEY , monto INT)

INSERT INTO factura VALUES (100, 12500, 'Efectivo')
INSERT INTO factura VALUES (101, 1200, 'Tarjeta de Credito')
INSERT INTO factura VALUES (102, 950, 'Mercado Pago')
INSERT INTO factura VALUES (103, 2450, 'Tarjeta de Credito')
INSERT INTO factura VALUES (104, 5500, 'Efectivo')
INSERT INTO factura VALUES (105, 8500, 'Mercado Pago')
INSERT INTO factura VALUES (106, 1500, 'Mercado Pago')

INSERT INTO usuario VALUES (1, 'Juan Dominguez' , '247JJ', 'Quilmes 250')
INSERT INTO usuario VALUES (2, 'Carola Martinez' , 'rojo77', 'Bernal 900')
INSERT INTO usuario VALUES (3, 'Marcos Flores' , '258PP', 'Flores 1500')
INSERT INTO usuario VALUES (4, 'Lorena Biglia' , 'luna89', 'Ezpeleta 200')
INSERT INTO usuario VALUES (5, 'Luis Diaz' , 'luis2000', 'AV Rivadavia 150')
INSERT INTO usuario VALUES (6, 'Mora Gutierrez' , 'morguti5', 'Berazategui 145')
INSERT INTO usuario VALUES (7, 'Rosa Salomon' , 'salomon875', 'Berazategui 255')

INSERT INTO producto VALUES (200, 'Pastas caseras de verdura', 'Rioja SRL')
INSERT INTO producto VALUES (201, 'Pastas caseras de ricota', 'Rioja SRL')
INSERT INTO producto VALUES (202, 'Cafe colombiano torrado', 'Cafe Sur')
INSERT INTO producto VALUES (203, 'Cafe Arabe torrado', 'Cafe Sur')
INSERT INTO producto VALUES (204, 'Aceite Vegetal 15lt', 'Suka SA')
INSERT INTO producto VALUES (205, 'Blend Te de manzanilla', 'Gourmet')
INSERT INTO producto VALUES (206, 'Blend Te de frutos rojos', 'Gourmet')

INSERT INTO pedido VALUES (200, 'Juan Dominguez', 2, 100, 12500)
INSERT INTO pedido VALUES (201, 'Carola Martinez', 5, 101, 1200)
INSERT INTO pedido VALUES (202, 'Marcos Flores', 3, 102, 950)
INSERT INTO pedido VALUES (203, 'Lorena Biglia', 3, 103, 2450)
INSERT INTO pedido VALUES (204, 'Luis Diaz', 6, 104, 5500)
INSERT INTO pedido VALUES (205, 'Mora Gutierrez', 12, 105, 8500)
INSERT INTO pedido VALUES (206, 'Rosa Salomon', 2, 106, 1500)


SELECT pedido.usuario, pedido.cantidad, pedido.monto, producto.id_producto 
from pedido, producto WHERE pedido.producto = producto.id_producto;


SELECT pedido.producto, pedido.monto, factura.tipo_pago
from factura, pedido
WHERE pedido.id_factura = factura.id;


SELECT producto.descripcion, pedido.cantidad, pedido.monto
from producto, pedido
WHERE pedido.producto = producto.id_producto;


SELECT producto.descripcion, pedido.producto, factura.tipo_pago
from pedido, factura, producto
WHERE factura.id = pedido.id_factura
and factura.tipo_pago = 'Efectivo'
and producto.id_producto = pedido.producto;


SELECT producto, usuario, cantidad  from pedido ;


SELECT factura.monto from factura WHERE monto > 500

Update factura
set tipo_pago = 'Tarjeta de Debito'
where tipo_pago = 'Mercado Pago';

