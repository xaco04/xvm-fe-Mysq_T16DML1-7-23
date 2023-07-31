CREATE DATABASE  IF NOT EXISTS `actividades1`;
USE `actividades1`;
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
