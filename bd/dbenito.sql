
create table categoria(
idcategoria int auto_increment primary key,
nombrecategoria varchar(50)
);
create table proveedor(
idproveedor int auto_increment primary key,
nombreprov varchar(50),
direccionprov varchar(60),
telefonoprov int CHECK(telefonoprov between 900000000 and 999999999),
emailprov varchar(80));

create table producto(
idproducto int auto_increment primary key,
idcategoria int,
idproveedor int,
nombreproducto varchar(150),
enlace varchar(400),
preciooriginal decimal(6,2),
porcentajedescuento decimal(6,2),
preciodescuento decimal(6,2),
calificacion int NOT NULL CHECK (calificacion BETWEEN 1 AND 5),
cantidad int,
foreign key(idcategoria) references categoria(idcategoria),
foreign key(idproveedor) references proveedor(idproveedor)
);
create table rol(
idrol int auto_increment primary key,
nombrerol varchar(50));

create table usuario(
idusuario int auto_increment primary key,
idrol int,
nombreusuario varchar(100),
correousuario varchar(80),
telefonousuario int CHECK(telefonousuario between 900000000 and 999999999),
direccionusuario varchar(150),
usuario varchar(80),
contrasena varchar(80),
foreign key(idrol) references rol(idrol));
create table pedido(
idpedido int auto_increment primary key,
idusuario int,
total Decimal(6,2),
estado int CHECK(estado between 0 and 3),
totalproductos int,
fecha datetime,
foreign key(idusuario) references usuario(idusuario));
create table detallespedido(
idpedido int not null,
idproducto int not null,
nombreproducto varchar(150),
preciooriginal decimal(6,2),
porcentajedescuento decimal(6,2),
preciodescuento decimal(6,2),
calificacion int CHECK (calificacion BETWEEN 1 AND 5),
categoria varchar(50),
proveedor varchar(50),
cantidad int,
foreign key(idpedido) references pedido(idpedido),
foreign key(idproducto) references producto(idproducto));
INSERT INTO rol (nombrerol) VALUES
('Administrador'),
('Cliente'),
('Empleado');
-- /SE RELLENA LA TABLA CATEGORIAS/
INSERT INTO categoria (nombrecategoria) VALUES
('Alimentos'),
('Bebidas'),
('Lácteos'),
('Carnes y Aves'),
('Verduras'),
('Frutas'),
('Panadería'),
('Limpieza'),
('Aseo Personal'),
('Mascotas'),
('Papelería'),
('Suministros Médicos'),
('Snacks');

/*SE RELLENA LA TABLA PROVEEDOR*/
INSERT INTO proveedor (nombreprov, direccionprov, telefonoprov, emailprov)
VALUES
('Abarrotes San Jorge', 'Av. Perú 1234, Lima', 912345678, 'contacto@sanjorge.com'),
('Distribuidora Andina', 'Jr. Los Andes 5678, Cusco', 923456789, 'info@andina.com'),
('Productos del Norte', 'Calle Comercio 2345, Trujillo', 934567890, 'ventas@norte.com'),
('Central de Abarrotes', 'Av. Central 3456, Arequipa', 945678901, 'contacto@central.com'),
('Abarrotes del Valle', 'Av. Valle 5678, Chiclayo', 967890123, 'ventas@valle.com'),
('Alicorp', 'Av. Nicolás Ayllón 4986, Lima', 981234567, 'contacto@alicorp.com'),
('Proveedores del Centro', 'Calle Centro 6789, Huancayo', 978901234, 'contacto@centro.com'),
('Distribuciones del Sur', 'Av. Sur 7890, Ica', 989012345, 'info@surdist.com'),
('Abarrotes y Más', 'Jr. Más 8901, Piura', 900123456, 'ventas@abymas.com'),
('Productos Selectos', 'Av. Selecta 9012, Puno', 901234567, 'contacto@selectos.com');

-- /SE RELLENA LA TABLA PRODUCTOS/
-- /AQUÍ SE ESTÁ AGREGANDO PRODUCTOS DE LA CATEGORÍA 1, ALIMENTOS/
INSERT INTO producto (idcategoria,idproveedor, nombreproducto, enlace,preciooriginal,porcentajedescuento,preciodescuento,calificacion,cantidad)
VALUES
    (1,2, 'Pacasmayo Arroz Extra A Granel X Kg', 'https://corporacionliderperu.com/50111-large_default/pacasmayo-arroz-extra-a-granel-x-kg-exo-igv.jpg', 4.40, 0,0, 4,20),
    (1,4, 'Caserita Arroz Extra A Granel X Kg', 'https://corporacionliderperu.com/50113-large_default/caserita-arroz-extra-a-granel-x-kg-exo-igv.jpg', 3.80, 5,3.61, 3,10),
    (1,2, 'Arroz Faraon Añejo Extra A Granel X Kg (Exo-Igv)', 'https://corporacionliderperu.com/50112-large_default/arroz-faraon-anejo-extra-a-granel-x-kg-exo-igv.jpg', 4.80, 4,4.61, 4,15),
    (1,5, 'Arroz Paisana Integral X 1 Kg. (Exo-Igv)', 'https://corporacionliderperu.com/50462-large_default/arroz-paisana-integral-x-1-kg-exo-igv.jpg', 5.90, 5,5.61, 5,12),
    (1,5, 'Valle Norte Arroz Extra X 750 Gr. (Exo-Igv)', 'https://corporacionliderperu.com/48387-large_default/valle-norte-arroz-extra-x-750-gr-exo-igv.jpg', 4.20, 0,0, 4,15),
    (1,8, 'La Siembra Arroz Extra Añejo Bolsa X 1 Kg (Exo-Igv)', 'https://corporacionliderperu.com/47198-large_default/la-siembra-arroz-extra-anejo-bolsa-x-1-kg-exo-igv.jpg', 5.40, 7.5,5, 5,10),
    (1,2, 'Huevos Rosados A Granel X Kg', 'https://corporacionliderperu.com/45609-large_default/huevos-rosados-a-granel-x-kg.jpg', 10.90,0, 0, 5,100);