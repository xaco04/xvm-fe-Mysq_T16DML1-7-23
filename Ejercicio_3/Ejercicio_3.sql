CREATE DATABASE  IF NOT EXISTS `actividades1`;
USE `actividades1`;
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
