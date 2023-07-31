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
