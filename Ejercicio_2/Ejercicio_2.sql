CREATE DATABASE  IF NOT EXISTS `actividades1`;
USE `actividades1`;
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
    
