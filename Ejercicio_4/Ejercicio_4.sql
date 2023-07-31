CREATE DATABASE  IF NOT EXISTS `actividades1`;
USE `actividades1`;
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
    