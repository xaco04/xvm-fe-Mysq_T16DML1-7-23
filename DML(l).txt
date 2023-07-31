CREATE DATABASE  IF NOT EXISTS `actividades1`;
USE `actividades1`;
-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ----------------------------------------------------------------------------------------------------------------------EJERCICIO 1--------------------------------------------------------------------------------------------------------
-- SQL CODE Ejercicio 1
CREATE TABLE DESPACHOS (
    Numero INT,
    Capacidad INT,
    primary key(Numero)
);

CREATE TABLE DIRECTORES (
    DNI VARCHAR(8),
    NomApels NVARCHAR(255),
    DNIJefe VARCHAR(8),
    Despacho INT,
    primary key (DNI),
    FOREIGN KEY (DNIJefe) REFERENCES DIRECTORES(DNI),
    FOREIGN KEY (Despacho) REFERENCES DESPACHOS(Numero)
);

-- Inserta 10 tuplas validas por cada tabla creada
-- Inserciones en la tabla DESPACHOS
INSERT INTO DESPACHOS (Numero, Capacidad) VALUES
(1, 5),
(2, 3),
(3, 4),
(4, 6),
(5, 2),
(6, 7),
(7, 4),
(8, 3),
(9, 5),
(10, 6);
-- Inserciones en la tabla DIRECTORES
INSERT INTO DIRECTORES (DNI, NomApels, DNIJefe, Despacho) VALUES
('12345678', 'Juan Pérez', NULL, 1),
('87654321', 'María Gómez', NULL, 2),
('13579246', 'Pedro Rodríguez', '12345678', 1),
('24681357', 'Laura López', '12345678', 3),
('98765432', 'Carlos Ramírez', '87654321', 4),
('45678901', 'Ana Martínez', '87654321', 5),
('15975346', 'Miguel Torres', '12345678', 2),
('36925814', 'Sara Fernández', '98765432', 7),
('25814736', 'Manuel Castro', '98765432', 6),
('78541236', 'Elena Ruiz', '13579246', 3);


-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ----------------------------------------------------------------------------------------------------------------------EJERCICIO 2--------------------------------------------------------------------------------------------------------
-- SQL CODE Ejercicio 2
CREATE TABLE PIEZAS (
    Codigo INT,
    Nombre NVARCHAR(100),
    primary key (Codigo)
);
CREATE TABLE PROVEEDORES (
    Id CHAR(4),
    Nombre NVARCHAR(100),
    primary key (Id)
);
CREATE TABLE SUMINISTRA (
    CodigoPieza INT,
    IdProveedor CHAR(4),
    Precio INT,
    PRIMARY KEY (CodigoPieza, IdProveedor),
    FOREIGN KEY (CodigoPieza) REFERENCES PIEZAS(Codigo),
    FOREIGN KEY (IdProveedor) REFERENCES PROVEEDORES(Id)
);
-- Inserta 10 tuplas validas por cada tabla creada
-- Inserciones en la tabla PIEZAS
INSERT INTO PIEZAS (Codigo, Nombre)
VALUES
    (1, 'Tuerca'),
    (2, 'Perno'),
    (3, 'Arandela'),
    (4, 'Resorte'),
    (5, 'Engranaje'),
    (6, 'Cable'),
    (7, 'Válvula'),
    (8, 'Junta'),
    (9, 'Rodamiento'),
    (10, 'Correa');
-- Inserciones en la tabla PROVEEDORES
INSERT INTO PROVEEDORES (Id, Nombre)
VALUES
    ('P001', 'Proveedor A'),
    ('P002', 'Proveedor B'),
    ('P003', 'Proveedor C'),
    ('P004', 'Proveedor D'),
    ('P005', 'Proveedor E'),
    ('P006', 'Proveedor F'),
    ('P007', 'Proveedor G'),
    ('P008', 'Proveedor H'),
    ('P009', 'Proveedor I'),
    ('P010', 'Proveedor J');
-- Inserciones en la tabla SUMINISTRA
INSERT INTO SUMINISTRA (CodigoPieza, IdProveedor, Precio)
VALUES
    (1, 'P001', 100),
    (2, 'P002', 80),
    (3, 'P003', 50),
    (4, 'P004', 120),
    (5, 'P005', 200),
    (6, 'P006', 70),
    (7, 'P007', 150),
    (8, 'P008', 90),
    (9, 'P009', 180),
    (10, 'P010', 110);
    

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ----------------------------------------------------------------------------------------------------------------------EJERCICIO 3--------------------------------------------------------------------------------------------------------
-- SQL CODE Ejercicio 3
CREATE TABLE CIENTIFICOS (
    DNI varchar(8),
    NomApels nvarchar(255),
    primary key (DNI)
);
CREATE TABLE PROYECTO (
    Id char(4),
    Nombre nvarchar(255),
    Horas int,
    primary key(Id)
);
CREATE TABLE ASIGNADO_A (
    Cientifico varchar(8),
    Proyecto char(4),
    PRIMARY KEY (Cientifico, Proyecto),
    FOREIGN KEY (Cientifico) REFERENCES CIENTIFICOS (DNI),
    FOREIGN KEY (Proyecto) REFERENCES PROYECTO (Id)
);
-- Inserta 10 tuplas validas por cada tabla creada
-- Inserciones en la tabla CIENTIFICOS
INSERT INTO CIENTIFICOS (DNI, NomApels)
VALUES
    ('12345678', 'Juan Pérez'),
    ('87654321', 'María López'),
    ('98765432', 'Carlos García'),
    ('54321678', 'Ana Rodríguez'),
    ('23456789', 'Pedro Martínez'),
    ('45678912', 'Laura Sánchez'),
    ('67891234', 'David Torres'),
    ('89123456', 'Sara Gómez'),
    ('34567891', 'Pablo Ramírez'),
    ('98765431', 'Elena Castro');
    
-- Inserciones en la tabla PROYECTO
INSERT INTO PROYECTO (Id, Nombre, Horas)
VALUES
    ('P001', 'Proyecto A', 100),
    ('P002', 'Proyecto B', 200),
    ('P003', 'Proyecto C', 150),
    ('P004', 'Proyecto D', 300),
    ('P005', 'Proyecto E', 120),
    ('P006', 'Proyecto F', 180),
    ('P007', 'Proyecto G', 250),
    ('P008', 'Proyecto H', 140),
    ('P009', 'Proyecto I', 220),
    ('P010', 'Proyecto J', 190);

-- Inserciones en la tabla ASIGNADO_A
INSERT INTO ASIGNADO_A (Cientifico, Proyecto)
VALUES
    ('12345678', 'P001'),
    ('12345678', 'P002'),
    ('87654321', 'P001'),
    ('87654321', 'P003'),
    ('98765432', 'P004'),
    ('98765432', 'P005'),
    ('54321678', 'P006'),
    ('54321678', 'P007'),
    ('23456789', 'P008'),
    ('23456789', 'P009');


-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ----------------------------------------------------------------------------------------------------------------------EJERCICIO 4--------------------------------------------------------------------------------------------------------
-- SQL CODE Ejercicio 4
CREATE TABLE PRODUCTOS (
    Codigo int,
    Nombre nvarchar(100),
    Precio int,
    primary key (Codigo)
);
CREATE TABLE CAJEROS (
    Codigo int,
    NomApels nvarchar(255),
    primary key(Codigo)
);
CREATE TABLE MAQUINAS_REGISTRADORAS (
    Codigo int,
    Piso int,
    primary key(Codigo)
);
CREATE TABLE VENTA (
    Cajero int,
    Maquina int,
    Producto int,
    PRIMARY KEY (Cajero, Maquina, Producto),
    FOREIGN KEY (Cajero) REFERENCES CAJEROS (Codigo),
    FOREIGN KEY (Maquina) REFERENCES MAQUINAS_REGISTRADORAS (Codigo),
    FOREIGN KEY (Producto) REFERENCES PRODUCTOS (Codigo)
);


-- Inserta 10 tuplas validas por cada tabla creada
-- Inserciones en la tabla PRODUCTOS
INSERT INTO PRODUCTOS (Codigo, Nombre, Precio)
VALUES
    (1, 'Producto A', 100),
    (2, 'Producto B', 150),
    (3, 'Producto C', 200),
    (4, 'Producto D', 120),
    (5, 'Producto E', 180),
    (6, 'Producto F', 90),
    (7, 'Producto G', 210),
    (8, 'Producto H', 80),
    (9, 'Producto I', 230),
    (10, 'Producto J', 140);
    
-- Inserciones en la tabla CAJEROS
INSERT INTO CAJEROS (Codigo, NomApels)
VALUES
    (101, 'Juan Pérez'),
    (102, 'María López'),
    (103, 'Carlos García'),
    (104, 'Ana Rodríguez'),
    (105, 'Pedro Martínez'),
    (106, 'Laura Sánchez'),
    (107, 'David Torres'),
    (108, 'Sara Gómez'),
    (109, 'Pablo Ramírez'),
    (110, 'Elena Castro');

-- Inserciones en la tabla MAQUINAS_REGISTRADORAS
INSERT INTO MAQUINAS_REGISTRADORAS (Codigo, Piso)
VALUES
    (201, 1),
    (202, 1),
    (203, 2),
    (204, 2),
    (205, 3),
    (206, 3),
    (207, 4),
    (208, 4),
    (209, 5),
    (210, 5);

-- Inserciones en la tabla VENTA
INSERT INTO VENTA (Cajero, Maquina, Producto)
VALUES
    (101, 201, 1),
    (102, 202, 3),
    (103, 203, 2),
    (104, 201, 4),
    (105, 202, 6),
    (101, 203, 5),
    (102, 201, 7),
    (103, 202, 9),
    (104, 203, 8),
    (105, 201, 10);
    
    
-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- ----------------------------------------------------------------------------------------------------------------------EJERCICIO 5--------------------------------------------------------------------------------------------------------
-- SQL CODE Ejercicio 5
CREATE TABLE FACULTAD (
    Codigo int,
    Nombre nvarchar(100),
    primary key(Codigo)
);
CREATE TABLE INVESTIGADORES (
    DNI varchar(8),
    NomApels nvarchar(255),
    Facultad int,
    primary key (DNI),
    FOREIGN KEY (Facultad) REFERENCES FACULTAD (Codigo)
);
CREATE TABLE EQUIPOS (
    NumSerie char(4),
    Nombre nvarchar(100),
    Facultad int,
    primary key(NumSerie),
    FOREIGN KEY (Facultad) REFERENCES FACULTAD (Codigo)
);

CREATE TABLE RESERVA (
    DNI varchar(8),
    NumSerie char(4),
    Comienzo datetime,
    Fin datetime,
    PRIMARY KEY (DNI, NumSerie),
    FOREIGN KEY (DNI) REFERENCES INVESTIGADORES (DNI),
    FOREIGN KEY (NumSerie) REFERENCES EQUIPOS (NumSerie)
);

-- Inserta 10 tuplas validas por cada tabla creada
-- Inserciones en la tabla FACULTAD
INSERT INTO FACULTAD (Codigo, Nombre)
VALUES
    (1, 'Facultad de Ciencias'),
    (2, 'Facultad de Ingeniería'),
    (3, 'Facultad de Medicina'),
    (4, 'Facultad de Derecho'),
    (5, 'Facultad de Economía'),
    (6, 'Facultad de Letras'),
    (7, 'Facultad de Arquitectura'),
    (8, 'Facultad de Psicología'),
    (9, 'Facultad de Educación'),
    (10, 'Facultad de Farmacia');

-- Inserciones en la tabla INVESTIGADORES
INSERT INTO INVESTIGADORES (DNI, NomApels, Facultad)
VALUES
    ('12345678', 'Juan Pérez', 1),
    ('87654321', 'María López', 2),
    ('98765432', 'Carlos García', 1),
    ('54321678', 'Ana Rodríguez', 3),
    ('23456789', 'Pedro Martínez', 2),
    ('45678912', 'Laura Sánchez', 1),
    ('67891234', 'David Torres', 3),
    ('89123456', 'Sara Gómez', 1),
    ('34567891', 'Pablo Ramírez', 2),
    ('98765431', 'Elena Castro', 3);

-- Inserciones en la tabla EQUIPOS
INSERT INTO EQUIPOS (NumSerie, Nombre, Facultad)
VALUES
    ('ES01', 'Equipo A', 1),
    ('ES02', 'Equipo B', 2),
    ('ES03', 'Equipo C', 3),
    ('ES04', 'Equipo D', 1),
    ('ES05', 'Equipo E', 2),
    ('ES06', 'Equipo F', 3),
    ('ES07', 'Equipo G', 1),
    ('ES08', 'Equipo H', 2),
    ('ES09', 'Equipo I', 3),
    ('ES10', 'Equipo J', 1);

-- Inserciones en la tabla RESERVA
INSERT INTO RESERVA (DNI, NumSerie, Comienzo, Fin)
VALUES
    ('12345678', 'ES01', '2023-07-31 10:00:00', '2023-07-31 12:00:00'),
    ('87654321', 'ES02', '2023-08-01 14:00:00', '2023-08-01 16:00:00'),
    ('98765432', 'ES03', '2023-08-02 09:00:00', '2023-08-02 11:00:00'),
    ('54321678', 'ES01', '2023-08-03 13:00:00', '2023-08-03 15:00:00'),
    ('23456789', 'ES02', '2023-08-04 11:00:00', '2023-08-04 13:00:00'),
    ('45678912', 'ES03', '2023-08-05 16:00:00', '2023-08-05 18:00:00'),
    ('67891234', 'ES01', '2023-08-06 10:00:00', '2023-08-06 12:00:00'),
    ('89123456', 'ES02', '2023-08-07 14:00:00', '2023-08-07 16:00:00'),
    ('34567891', 'ES03', '2023-08-08 09:00:00', '2023-08-08 11:00:00'),
    ('98765431', 'ES01', '2023-08-09 13:00:00', '2023-08-09 15:00:00');
