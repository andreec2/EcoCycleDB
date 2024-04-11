CREATE TABLE Usuarios (
    usuario_id INT,
    nombre VARCHAR(50),
    apellido VARCHAR(50),
    email VARCHAR(100),
    contrasena VARCHAR(50)
);

CREATE TABLE Materiales (
    material_id INT,
    nombre VARCHAR(50),
    descripcion VARCHAR(255),
    tipo VARCHAR(50),
    depositos INT
);


CREATE TABLE PuntosRe (
    punto_id INT,
    nombre VARCHAR(100),
    direccion VARCHAR(200),
    latitud DECIMAL(10, 8),
    longitud DECIMAL(11, 8),
    deposito INT 
);

CREATE TABLE Depositos (
    deposito_id INT,
    material_id INT,
    cantidad DECIMAL(10, 2),
    fecha_deposito DATE,
    usuario INT
);

CREATE TABLE RegistroReciclaje (
    registro_id INT,
    punto_id INT,
    material_id INT,
    cantidad DECIMAL(10, 2),
    fecha_registro DATE,
    usuarios INT
);

--Primarias 

ALTER TABLE Usuarios ADD CONSTRAINT PK_Usuarios PRIMARY KEY (usuario_id);
ALTER TABLE Materiales ADD CONSTRAINT PK_Materiales PRIMARY KEY (material_id);
ALTER TABLE PuntosRe ADD CONSTRAINT PK_PuntosReciclaje PRIMARY KEY (punto_id);
ALTER TABLE Depositos ADD CONSTRAINT PK_Depositos PRIMARY KEY (deposito_id);
ALTER TABLE RegistroReciclaje ADD CONSTRAINT PK_RegistroReciclaje PRIMARY KEY (registro_id);

--Foraneas 

ALTER TABLE RegistroReciclaje
ADD CONSTRAINT FK_Usuario_RegistroReciclaje FOREIGN KEY (usuarios) REFERENCES Usuarios(usuario_id);

ALTER TABLE Materiales
ADD CONSTRAINT FK_Depositos_Materiales FOREIGN KEY (depositos) REFERENCES Depositos(deposito_id);

ALTER TABLE Depositos
ADD CONSTRAINT FK_Usuario_Depositos FOREIGN KEY (usuario) REFERENCES Usuarios(usuario_id);

ALTER TABLE PuntosRe
ADD CONSTRAINT FK_Depositos_PuntosReciclaje FOREIGN KEY (deposito) REFERENCES Depositos(deposito_id);

--XTablas

-- Drop de la tabla RegistroReciclaje
DROP TABLE RegistroReciclaje;
-- Drop de la tabla Materiales
DROP TABLE Materiales;
-- Drop de la tabla PuntosReciclaje
DROP TABLE PuntosRe;
-- Drop de la tabla Depositos
DROP TABLE Depositos;
-- Drop de la tabla Usuarios
DROP TABLE Usuarios;

--poblando 

-- Inserciones para la tabla Usuarios
INSERT INTO Usuarios (usuario_id, nombre, apellido, email, contrasena) VALUES
(1, 'Juan', 'Perez', 'juan@example.com', 'contraseña123');

INSERT INTO Usuarios (usuario_id, nombre, apellido, email, contrasena) VALUES
(2, 'María', 'García', 'maria@example.com', 'password456');

INSERT INTO Usuarios (usuario_id, nombre, apellido, email, contrasena) VALUES
(3, 'Carlos', 'López', 'carlos@example.com', 'clave789');

INSERT INTO Usuarios (usuario_id, nombre, apellido, email, contrasena) VALUES
(4, 'Ana', 'Martínez', 'ana@example.com', 'seguridad321');

INSERT INTO Usuarios (usuario_id, nombre, apellido, email, contrasena) VALUES
(5, 'Pedro', 'Rodríguez', 'pedro@example.com', 'contras3ña');

INSERT INTO Usuarios (usuario_id, nombre, apellido, email, contrasena) VALUES
(6, 'Luis', 'González', 'luis@example.com', 'clave123');

INSERT INTO Usuarios (usuario_id, nombre, apellido, email, contrasena) VALUES
(7, 'Elena', 'Fernández', 'elena@example.com', 'password456');

INSERT INTO Usuarios (usuario_id, nombre, apellido, email, contrasena) VALUES
(8, 'Ana', 'López', 'ana@example.com', 'seguridad789');

INSERT INTO Usuarios (usuario_id, nombre, apellido, email, contrasena) VALUES
(9, 'Diego', 'Martínez', 'diego@example.com', 'contraseña987');

INSERT INTO Usuarios (usuario_id, nombre, apellido, email, contrasena) VALUES
(10, 'Laura', 'Sánchez', 'laura@example.com', 'clave456');

INSERT INTO Usuarios (usuario_id, nombre, apellido, email, contrasena) VALUES
(11, 'Marta', 'Pérez', 'marta@example.com', 'password789');

INSERT INTO Usuarios (usuario_id, nombre, apellido, email, contrasena) VALUES
(12, 'Pablo', 'Gómez', 'pablo@example.com', 'seguridad123');

INSERT INTO Usuarios (usuario_id, nombre, apellido, email, contrasena) VALUES
(13, 'Sara', 'Díaz', 'sara@example.com', 'contraseña123');

INSERT INTO Usuarios (usuario_id, nombre, apellido, email, contrasena) VALUES
(14, 'Javier', 'Hernández', 'javier@example.com', 'clave789');

INSERT INTO Usuarios (usuario_id, nombre, apellido, email, contrasena) VALUES
(15, 'Carmen', 'Ruiz', 'carmen@example.com', 'password987');

INSERT INTO Usuarios (usuario_id, nombre, apellido, email, contrasena) VALUES
(16, 'Raúl', 'Torres', 'raul@example.com', 'seguridad456');

INSERT INTO Usuarios (usuario_id, nombre, apellido, email, contrasena) VALUES
(17, 'Natalia', 'López', 'natalia@example.com', 'contraseña456');

INSERT INTO Usuarios (usuario_id, nombre, apellido, email, contrasena) VALUES
(18, 'Alejandro', 'García', 'alejandro@example.com', 'clave123');

INSERT INTO Usuarios (usuario_id, nombre, apellido, email, contrasena) VALUES
(19, 'Lucía', 'Fernández', 'lucia@example.com', 'password789');

INSERT INTO Usuarios (usuario_id, nombre, apellido, email, contrasena) VALUES
(20, 'Daniel', 'Martínez', 'daniel@example.com', 'seguridad123');


-- Inserciones para la tabla Depositos
INSERT INTO Depositos (deposito_id, material_id, cantidad, fecha_deposito, usuario) VALUES
(1, 1, 5.5, TO_DATE('2024-04-01', 'YYYY-MM-DD'), 1);

INSERT INTO Depositos (deposito_id, material_id, cantidad, fecha_deposito, usuario) VALUES
(2, 2, 3.2, TO_DATE('2024-04-02', 'YYYY-MM-DD'), 2);

INSERT INTO Depositos (deposito_id, material_id, cantidad, fecha_deposito, usuario) VALUES
(3, 3, 8.9, TO_DATE('2024-04-03', 'YYYY-MM-DD'), 3);

INSERT INTO Depositos (deposito_id, material_id, cantidad, fecha_deposito, usuario) VALUES
(4, 4, 2.7, TO_DATE('2024-04-04', 'YYYY-MM-DD'), 4);

INSERT INTO Depositos (deposito_id, material_id, cantidad, fecha_deposito, usuario) VALUES
(5, 5, 6.3, TO_DATE('2024-04-05', 'YYYY-MM-DD'), 5);

INSERT INTO Depositos (deposito_id, material_id, cantidad, fecha_deposito, usuario) VALUES
(6, 1, 3.5, TO_DATE('2024-04-06', 'YYYY-MM-DD'), 6);

INSERT INTO Depositos (deposito_id, material_id, cantidad, fecha_deposito, usuario) VALUES
(7, 2, 4.2, TO_DATE('2024-04-07', 'YYYY-MM-DD'), 7);

INSERT INTO Depositos (deposito_id, material_id, cantidad, fecha_deposito, usuario) VALUES
(8, 3, 2.1, TO_DATE('2024-04-08', 'YYYY-MM-DD'), 8);

INSERT INTO Depositos (deposito_id, material_id, cantidad, fecha_deposito, usuario) VALUES
(9, 4, 5.7, TO_DATE('2024-04-09', 'YYYY-MM-DD'), 9);

INSERT INTO Depositos (deposito_id, material_id, cantidad, fecha_deposito, usuario) VALUES
(10, 5, 3.9, TO_DATE('2024-04-10', 'YYYY-MM-DD'), 10);

INSERT INTO Depositos (deposito_id, material_id, cantidad, fecha_deposito, usuario) VALUES
(11, 1, 2.8, TO_DATE('2024-04-11', 'YYYY-MM-DD'), 11);

INSERT INTO Depositos (deposito_id, material_id, cantidad, fecha_deposito, usuario) VALUES
(12, 2, 4.1, TO_DATE('2024-04-12', 'YYYY-MM-DD'), 12);

INSERT INTO Depositos (deposito_id, material_id, cantidad, fecha_deposito, usuario) VALUES
(13, 3, 1.6, TO_DATE('2024-04-13', 'YYYY-MM-DD'), 13);

INSERT INTO Depositos (deposito_id, material_id, cantidad, fecha_deposito, usuario) VALUES
(14, 4, 6.4, TO_DATE('2024-04-14', 'YYYY-MM-DD'), 14);

INSERT INTO Depositos (deposito_id, material_id, cantidad, fecha_deposito, usuario) VALUES
(15, 5, 3.2, TO_DATE('2024-04-15', 'YYYY-MM-DD'), 15);

INSERT INTO Depositos (deposito_id, material_id, cantidad, fecha_deposito, usuario) VALUES
(16, 1, 2.5, TO_DATE('2024-04-16', 'YYYY-MM-DD'), 16);

INSERT INTO Depositos (deposito_id, material_id, cantidad, fecha_deposito, usuario) VALUES
(17, 2, 5.8, TO_DATE('2024-04-17', 'YYYY-MM-DD'), 17);

INSERT INTO Depositos (deposito_id, material_id, cantidad, fecha_deposito, usuario) VALUES
(18, 3, 3.9, TO_DATE('2024-04-18', 'YYYY-MM-DD'), 18);

INSERT INTO Depositos (deposito_id, material_id, cantidad, fecha_deposito, usuario) VALUES
(19, 4, 4.7, TO_DATE('2024-04-19', 'YYYY-MM-DD'), 19);

INSERT INTO Depositos (deposito_id, material_id, cantidad, fecha_deposito, usuario) VALUES
(20, 5, 2.3, TO_DATE('2024-04-20', 'YYYY-MM-DD'), 20);


-- Inserciones para la tabla Materiales
INSERT INTO Materiales (material_id, nombre, descripcion, tipo, depositos) VALUES
(1, 'Papel', 'Material reciclable de papel', 'Papelera', 1);

INSERT INTO Materiales (material_id, nombre, descripcion, tipo, depositos) VALUES
(2, 'Plástico', 'Material reciclable de plástico', 'Contenedor', 2);

INSERT INTO Materiales (material_id, nombre, descripcion, tipo, depositos) VALUES
(3, 'Vidrio', 'Material reciclable de vidrio', 'Contenedor', 3);

INSERT INTO Materiales (material_id, nombre, descripcion, tipo, depositos) VALUES
(4, 'Metal', 'Material reciclable de metal', 'Contenedor', 4);

INSERT INTO Materiales (material_id, nombre, descripcion, tipo, depositos) VALUES
(5, 'Cartón', 'Material reciclable de cartón', 'Papelera', 5);

INSERT INTO Materiales (material_id, nombre, descripcion, tipo, depositos) VALUES
(6, 'Plástico', 'Material reciclable de plástico', 'Contenedor', 6);

INSERT INTO Materiales (material_id, nombre, descripcion, tipo, depositos) VALUES
(7, 'Vidrio', 'Material reciclable de vidrio', 'Contenedor', 7);

INSERT INTO Materiales (material_id, nombre, descripcion, tipo, depositos) VALUES
(8, 'Metal', 'Material reciclable de metal', 'Contenedor', 8);

INSERT INTO Materiales (material_id, nombre, descripcion, tipo, depositos) VALUES
(9, 'Papel', 'Material reciclable de papel', 'Papelera', 9);

INSERT INTO Materiales (material_id, nombre, descripcion, tipo, depositos) VALUES
(10, 'Cartón', 'Material reciclable de cartón', 'Papelera', 10);

INSERT INTO Materiales (material_id, nombre, descripcion, tipo, depositos) VALUES
(11, 'Plástico', 'Material reciclable de plástico', 'Contenedor', 11);

INSERT INTO Materiales (material_id, nombre, descripcion, tipo, depositos) VALUES
(12, 'Vidrio', 'Material reciclable de vidrio', 'Contenedor', 12);

INSERT INTO Materiales (material_id, nombre, descripcion, tipo, depositos) VALUES
(13, 'Metal', 'Material reciclable de metal', 'Contenedor', 13);

INSERT INTO Materiales (material_id, nombre, descripcion, tipo, depositos) VALUES
(14, 'Papel', 'Material reciclable de papel', 'Papelera', 14);

INSERT INTO Materiales (material_id, nombre, descripcion, tipo, depositos) VALUES
(15, 'Cartón', 'Material reciclable de cartón', 'Papelera', 15);

INSERT INTO Materiales (material_id, nombre, descripcion, tipo, depositos) VALUES
(16, 'Plástico', 'Material reciclable de plástico', 'Contenedor', 16);

INSERT INTO Materiales (material_id, nombre, descripcion, tipo, depositos) VALUES
(17, 'Vidrio', 'Material reciclable de vidrio', 'Contenedor', 17);

INSERT INTO Materiales (material_id, nombre, descripcion, tipo, depositos) VALUES
(18, 'Metal', 'Material reciclable de metal', 'Contenedor', 18);

INSERT INTO Materiales (material_id, nombre, descripcion, tipo, depositos) VALUES
(19, 'Papel', 'Material reciclable de papel', 'Papelera', 19);

INSERT INTO Materiales (material_id, nombre, descripcion, tipo, depositos) VALUES
(20, 'Cartón', 'Material reciclable de cartón', 'Papelera', 20);


-- Inserciones para la tabla PuntosReciclaje
INSERT INTO PuntosRe (punto_id, nombre, direccion, latitud, longitud, deposito) VALUES
(1, 'Punto de reciclaje A', 'Calle 123', 40.7128, -74.0060, 1);

-- Inserción 2
INSERT INTO PuntosRe (punto_id, nombre, direccion, latitud, longitud, deposito) VALUES
(2, 'Punto de reciclaje B', 'Avenida Principal', 34.0522, -118.2437, 2);

-- Inserción 3
INSERT INTO PuntosRe (punto_id, nombre, direccion, latitud, longitud, deposito) VALUES
(3, 'Punto de reciclaje C', 'Plaza Central', 51.5074, -0.1278, 3);

-- Inserción 4
INSERT INTO PuntosRe (punto_id, nombre, direccion, latitud, longitud, deposito) VALUES
(4, 'Punto de reciclaje D', 'Avenida Principal', 35.6895, 139.6917, 4);

-- Inserción 5
INSERT INTO PuntosRe (punto_id, nombre, direccion, latitud, longitud, deposito) VALUES
(5, 'Punto de reciclaje E', 'Calle Principal', 52.5200, 13.4050, 5);

INSERT INTO PuntosRe (punto_id, nombre, direccion, latitud, longitud, deposito) VALUES
(6, 'Punto de reciclaje F', 'Avenida Central', 40.7306, -73.9352, 6);

INSERT INTO PuntosRe (punto_id, nombre, direccion, latitud, longitud, deposito) VALUES
(7, 'Punto de reciclaje G', 'Calle Principal', 34.0522, -118.2437, 7);

INSERT INTO PuntosRe (punto_id, nombre, direccion, latitud, longitud, deposito) VALUES
(8, 'Punto de reciclaje H', 'Plaza Mayor', 51.5074, -0.1278, 8);

INSERT INTO PuntosRe (punto_id, nombre, direccion, latitud, longitud, deposito) VALUES
(9, 'Punto de reciclaje I', 'Calle Principal', 35.6895, 139.6917, 9);

INSERT INTO PuntosRe (punto_id, nombre, direccion, latitud, longitud, deposito) VALUES
(10, 'Punto de reciclaje J', 'Avenida Principal', 52.5200, 13.4050, 10);

INSERT INTO PuntosRe (punto_id, nombre, direccion, latitud, longitud, deposito) VALUES
(11, 'Punto de reciclaje K', 'Calle 123', 40.7128, -74.0060, 11);

INSERT INTO PuntosRe (punto_id, nombre, direccion, latitud, longitud, deposito) VALUES
(12, 'Punto de reciclaje L', 'Avenida Central', 34.0522, -118.2437, 12);

INSERT INTO PuntosRe (punto_id, nombre, direccion, latitud, longitud, deposito) VALUES
(13, 'Punto de reciclaje M', 'Plaza Principal', 51.5074, -0.1278, 13);

INSERT INTO PuntosRe (punto_id, nombre, direccion, latitud, longitud, deposito) VALUES
(14, 'Punto de reciclaje N', 'Calle Central', 35.6895, 139.6917, 14);

INSERT INTO PuntosRe (punto_id, nombre, direccion, latitud, longitud, deposito) VALUES
(15, 'Punto de reciclaje O', 'Avenida Principal', 52.5200, 13.4050, 15);

INSERT INTO PuntosRe (punto_id, nombre, direccion, latitud, longitud, deposito) VALUES
(16, 'Punto de reciclaje P', 'Calle Principal', 40.7128, -74.0060, 16);

INSERT INTO PuntosRe (punto_id, nombre, direccion, latitud, longitud, deposito) VALUES
(17, 'Punto de reciclaje Q', 'Avenida Central', 34.0522, -118.2437, 17);

INSERT INTO PuntosRe (punto_id, nombre, direccion, latitud, longitud, deposito) VALUES
(18, 'Punto de reciclaje R', 'Plaza Principal', 51.5074, -0.1278, 18);

INSERT INTO PuntosRe (punto_id, nombre, direccion, latitud, longitud, deposito) VALUES
(19, 'Punto de reciclaje S', 'Calle Central', 35.6895, 139.6917, 19);

INSERT INTO PuntosRe (punto_id, nombre, direccion, latitud, longitud, deposito) VALUES
(20, 'Punto de reciclaje T', 'Avenida Principal', 52.5200, 13.4050, 20);



-- Inserciones para la tabla RegistroReciclaje
INSERT INTO RegistroReciclaje (registro_id, punto_id, material_id, cantidad, fecha_registro, usuarios) VALUES
(1, 1, 1, 2.3, TO_DATE('2024-04-05', 'YYYY-MM-DD'), 1);

INSERT INTO RegistroReciclaje (registro_id, punto_id, material_id, cantidad, fecha_registro, usuarios) VALUES
(2, 1, 1, 2.5, TO_DATE('2024-04-06', 'YYYY-MM-DD'), 2);

INSERT INTO RegistroReciclaje (registro_id, punto_id, material_id, cantidad, fecha_registro, usuarios) VALUES
(3, 1, 2, 3.1, TO_DATE('2024-04-07', 'YYYY-MM-DD'), 3);

INSERT INTO RegistroReciclaje (registro_id, punto_id, material_id, cantidad, fecha_registro, usuarios) VALUES
(4, 1, 3, 1.8, TO_DATE('2024-04-08', 'YYYY-MM-DD'), 4);

INSERT INTO RegistroReciclaje (registro_id, punto_id, material_id, cantidad, fecha_registro, usuarios) VALUES
(5, 1, 4, 4.2, TO_DATE('2024-04-09', 'YYYY-MM-DD'), 5);

INSERT INTO RegistroReciclaje (registro_id, punto_id, material_id, cantidad, fecha_registro, usuarios) VALUES
(6, 2, 5, 3.5, TO_DATE('2024-04-10', 'YYYY-MM-DD'), 6);

INSERT INTO RegistroReciclaje (registro_id, punto_id, material_id, cantidad, fecha_registro, usuarios) VALUES
(7, 3, 6, 2.8, TO_DATE('2024-04-11', 'YYYY-MM-DD'), 7);

INSERT INTO RegistroReciclaje (registro_id, punto_id, material_id, cantidad, fecha_registro, usuarios) VALUES
(8, 4, 7, 1.9, TO_DATE('2024-04-12', 'YYYY-MM-DD'), 8);

INSERT INTO RegistroReciclaje (registro_id, punto_id, material_id, cantidad, fecha_registro, usuarios) VALUES
(9, 5, 8, 5.4, TO_DATE('2024-04-13', 'YYYY-MM-DD'), 9);

INSERT INTO RegistroReciclaje (registro_id, punto_id, material_id, cantidad, fecha_registro, usuarios) VALUES
(10, 6, 9, 4.7, TO_DATE('2024-04-14', 'YYYY-MM-DD'), 10);

INSERT INTO RegistroReciclaje (registro_id, punto_id, material_id, cantidad, fecha_registro, usuarios) VALUES
(11, 7, 10, 3.2, TO_DATE('2024-04-15', 'YYYY-MM-DD'), 11);

INSERT INTO RegistroReciclaje (registro_id, punto_id, material_id, cantidad, fecha_registro, usuarios) VALUES
(12, 8, 11, 2.1, TO_DATE('2024-04-16', 'YYYY-MM-DD'), 12);

INSERT INTO RegistroReciclaje (registro_id, punto_id, material_id, cantidad, fecha_registro, usuarios) VALUES
(13, 9, 12, 6.9, TO_DATE('2024-04-17', 'YYYY-MM-DD'), 13);

INSERT INTO RegistroReciclaje (registro_id, punto_id, material_id, cantidad, fecha_registro, usuarios) VALUES
(14, 10, 13, 5.1, TO_DATE('2024-04-18', 'YYYY-MM-DD'), 14);

INSERT INTO RegistroReciclaje (registro_id, punto_id, material_id, cantidad, fecha_registro, usuarios) VALUES
(15, 11, 14, 3.8, TO_DATE('2024-04-19', 'YYYY-MM-DD'), 15);

INSERT INTO RegistroReciclaje (registro_id, punto_id, material_id, cantidad, fecha_registro, usuarios) VALUES
(16, 12, 15, 2.5, TO_DATE('2024-04-20', 'YYYY-MM-DD'), 16);

INSERT INTO RegistroReciclaje (registro_id, punto_id, material_id, cantidad, fecha_registro, usuarios) VALUES
(17, 13, 16, 4.3, TO_DATE('2024-04-21', 'YYYY-MM-DD'), 17);

INSERT INTO RegistroReciclaje (registro_id, punto_id, material_id, cantidad, fecha_registro, usuarios) VALUES
(18, 14, 17, 6.2, TO_DATE('2024-04-22', 'YYYY-MM-DD'), 18);

INSERT INTO RegistroReciclaje (registro_id, punto_id, material_id, cantidad, fecha_registro, usuarios) VALUES
(19, 15, 18, 3.4, TO_DATE('2024-04-23', 'YYYY-MM-DD'), 19);

INSERT INTO RegistroReciclaje (registro_id, punto_id, material_id, cantidad, fecha_registro, usuarios) VALUES
(20, 16, 19, 2.9, TO_DATE('2024-04-24', 'YYYY-MM-DD'), 20);


--consultas 
SELECT
    pr.nombre AS punto_reciclaje,
    m.nombre AS material,
    SUM(rr.cantidad) AS total_reciclado
FROM
    RegistroReciclaje rr
JOIN
    PuntosRe pr ON rr.punto_id = pr.punto_id
JOIN
    Materiales m ON rr.material_id = m.material_id
WHERE
    rr.fecha_registro BETWEEN TO_DATE('2000-01-01', 'YYYY-MM-DD') AND TO_DATE('2024-12-31', 'YYYY-MM-DD')
GROUP BY
    pr.nombre, m.nombre
ORDER BY
    total_reciclado DESC;

--consulta 2  
SELECT
    rr.registro_id,
    pr.nombre AS punto_reciclaje,
    m.nombre AS material,
    rr.cantidad AS cantidad_reciclada,
    rr.fecha_registro AS fecha_registro,
    u.nombre AS nombre_usuario,
    u.apellido AS apellido_usuario,
    u.email AS email_usuario
FROM
    RegistroReciclaje rr
JOIN
    PuntosRe pr ON rr.punto_id = pr.punto_id
JOIN
    Materiales m ON rr.material_id = m.material_id
JOIN
    Usuarios u ON rr.usuarios = u.usuario_id
ORDER BY
    rr.fecha_registro DESC;






