CREATE DATABASE IF NOT EXISTS estudio_danza;

USE estudio_danza;

-- Creación de tablas

CREATE TABLE IF NOT EXISTS estudio_danza.alumno(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(100),
    apellido VARCHAR(100),
    dni VARCHAR(10),
    fecha_nacimiento DATE,
    telefono VARCHAR(20),
    email VARCHAR(100) UNIQUE
    );
    
CREATE TABLE IF NOT EXISTS estudio_danza.estilo( 
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre_estilo VARCHAR (100),
    descripcion TEXT
    );
    
CREATE TABLE IF NOT EXISTS estudio_danza.profesor( 
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR (100),
    apellido VARCHAR (100),
    id_estilo INT,
    telefono VARCHAR(20),
    email VARCHAR(120) UNIQUE,
    FOREIGN KEY (id_estilo) REFERENCES estudio_danza.estilo(id)
    );
    
CREATE TABLE IF NOT EXISTS estudio_danza.nivel( 
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre_nivel VARCHAR (30) NOT NULL
   );
   
CREATE TABLE IF NOT EXISTS estudio_danza.rango_edad( 
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre_rango VARCHAR (50) NOT NULL,
    edad_minima INT,
    edad_maxima INT
   );
   
CREATE TABLE IF NOT EXISTS estudio_danza.dia(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre_dia VARCHAR (15) NOT NULL UNIQUE
    );   
   
CREATE TABLE IF NOT EXISTS estudio_danza.horario( 
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_dia INT,
    hora_inicio TIME NOT NULL,
    hora_fin TIME NOT NULL,
    FOREIGN KEY (id_dia) REFERENCES estudio_danza.dia(id)
   );
    
CREATE TABLE IF NOT EXISTS estudio_danza.clase( 
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    id_profesor INT,
    id_estilo INT,
    id_nivel INT,
    id_rango_edad INT,
    id_horario INT,
	FOREIGN KEY (id_profesor) REFERENCES estudio_danza.profesor(id),
    FOREIGN KEY (id_estilo) REFERENCES estudio_danza.estilo(id),
    FOREIGN KEY (id_nivel) REFERENCES estudio_danza.nivel(id),
	FOREIGN KEY (id_rango_edad) REFERENCES estudio_danza.rango_edad(id),
	FOREIGN KEY (id_horario) REFERENCES estudio_danza.horario(id)
	);    

CREATE TABLE IF NOT EXISTS estudio_danza.inscripcion( 
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,  
    id_alumno INT,
    id_clase INT,
    fecha_inscripcion DATE DEFAULT (CURRENT_DATE),
    FOREIGN KEY (id_alumno) REFERENCES estudio_danza.alumno(id),
    FOREIGN KEY (id_clase) REFERENCES estudio_danza.clase(id)
    );

CREATE TABLE IF NOT EXISTS estudio_danza.pago( 
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,  
    id_alumno INT,
    monto DECIMAL (10,2) NOT NULL,
    fecha_pago DATETIME DEFAULT (CURRENT_DATE),
    metodo_pago VARCHAR(50),
    FOREIGN KEY (id_alumno) REFERENCES estudio_danza.alumno(id)
    );

USE estudio_danza;

CREATE TABLE estudio_danza.planes(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    nombre_plan VARCHAR (50),
    cantidad_clases INT NOT NULL,
    precio_plan DECIMAL (10,2) NOT NULL
);

ALTER TABLE estudio_danza.pago
ADD COLUMN id_plan INT AFTER id_alumno;

ALTER TABLE estudio_danza.pago
ADD FOREIGN KEY (id_plan) REFERENCES estudio_danza.planes(id);

ALTER TABLE estudio_danza.profesor 
DROP FOREIGN KEY profesor_ibfk_1;

ALTER TABLE estudio_danza.profesor
DROP COLUMN id_estilo;

-- Inserción de datos

INSERT INTO estudio_danza.alumno (nombre, apellido, dni, fecha_nacimiento, telefono, email, fecha_ingreso) VALUES
('Mateo', 'Díaz', '60456789', '2022-06-03', '1145678911', 'mateo.diaz@gmail.com', '2026-03-01'),
('Sofía', 'Ramírez', '58123456', '2021-04-18', '1112345678', 'sofia_r@gmail.com', '2024-05-12'),
('Barbara', 'Rojas', '60012345', '2022-05-05', '1101234599', 'barbie_rojas@gmail.com', '2026-02-15'),
('Lola', 'Acosta', '58901234', '2021-03-14', '1190123488', 'lola.acosta@hotmail.com', '2024-03-20'),
('Olivia', 'Serrano', '60901234', '2022-04-12', '1190123499', 'olivia.s@gmail.com', '2026-01-10'),
('Benjamín', 'Cardozo', '59234567', '2022-07-07', '1123456733', 'b.cardozo@gmail.com', '2025-08-22'),
('Camila', 'Moreno', '59123456', '2021-07-19', '1112345688', 'cami.moreno@gmail.com', '2024-11-30'),
('Brenda', 'Aguilar', '57678901', '2021-12-05', '1167890144', 'brenda.aguilar@gmail.com', '2025-02-14'),
('Filipa', 'Mendez', '58765432', '2022-01-10', '1122334455', 'filipa.m@gmail.com', '2025-06-05'),
('Emma', 'Sosa', '59876543', '2022-09-15', '1133445566', 'emma.sosa@hotmail.com', '2026-03-10'),

('Elena', 'Vázquez', '55567890', '2018-10-03', '1156789022', 'elena_v@yahoo.com', '2023-04-15'),
('Martina', 'Alvarez', '53901234', '2016-11-15', '1190123466', 'marti.alvarez@gmail.com', '2022-08-10'),
('Victoria', 'Romero', '54345678', '2017-02-28', '1134567800', 'vicky.romero@outlook.com', '2023-03-12'),
('Delfina', 'Morales', '56123456', '2019-01-15', '1112345699', 'delfi.m@gmail.com', '2024-07-22'),
('Catalina', 'Ríos', '52345678', '2015-06-25', '1134567822', 'cata_rios@gmail.com', '2022-12-01'),
('Renata', 'Silva', '53567890', '2016-04-04', '1156789044', 'renata_silva@gmail.com', '2022-05-18'),
('Zoe', 'Cano', '55123456', '2018-09-21', '1112345600', 'zoe.cano@hotmail.com', '2023-10-05'),
('Isabella', 'Peralta', '57567890', '2019-08-08', '1156789055', 'isa.peralta@gmail.com', '2025-01-15'),
('Thiago', 'Guzman', '54433221', '2017-05-12', '1144556677', 'thiago.g@gmail.com', '2023-06-30'),
('Mia', 'Ortega', '56677889', '2019-11-30', '1155667788', 'mia.ortega@yahoo.com', '2024-02-28'),

('Julieta', 'Suárez', '50789012', '2013-03-22', '1178901255', 'jsuarez@hotmail.com', '2025-03-15'),
('Micaela', 'Benítez', '51789012', '2014-01-30', '1178901266', 'mica.benitez@outlook.com', '2024-10-10'),
('Milagros', 'Vera', '49789012', '2012-02-20', '1178901277', 'mili_vera@gmail.com', '2022-04-05'),
('Juana', 'Luna', '51123456', '2014-01-15', '1112345622', 'juanaluna@outlook.com', '2025-11-20'),
('Santino', 'Paz', '48123456', '2011-08-14', '1166778899', 'santino.paz@gmail.com', '2023-09-01'),
('Abril', 'Domínguez', '47345678', '2010-12-12', '1134567833', 'abril.d@yahoo.com', '2022-03-15'),
('Lautaro', 'Vega', '46123456', '2009-02-25', '1177889900', 'lauti.vega@gmail.com', '2024-01-10'),
('Tamara', 'Flores', '48567890', '2011-10-10', '1188990011', 'tamara.f@hotmail.com', '2023-05-25'),
('Alma', 'Godoy', '49345678', '2012-06-05', '1199001122', 'alma.godoy@gmail.com', '2022-11-12'),
('Tomas', 'Duarte', '50234567', '2013-01-20', '1111223344', 'tomas.d@outlook.com', '2025-04-30'),

('Juan', 'García', '25456789', '1976-03-12', '1145678901', 'juan.garcia@gmail.com', '2022-02-10'),
('María', 'Rodríguez', '33567890', '1988-07-22', '1156789012', 'm.rodriguez@hotmail.com', '2022-06-15'),
('Carla', 'López', '40678901', '1998-11-05', '1167890123', 'carlopez88@yahoo.com', '2023-01-20'),
('Ana', 'Martínez', '45789012', '2005-01-30', '1178901234', 'ana.mtz@outlook.com', '2025-12-05'),
('Luis', 'González', '27890123', '1980-05-15', '1189012345', 'luisgo@gmail.com', '2022-03-01'),
('Diego', 'Sánchez', '30012345', '1982-12-25', '1101234567', 'diego.san@gmail.com', '2024-04-18'),
('Javier', 'Torres', '26234567', '1977-08-11', '1123456789', 'jtorres@gmail.com', '2022-05-10'),
('Lucía', 'Gómez', '31345678', '1985-02-14', '1134567890', 'lu.gomez@hotmail.com', '2023-08-25'),
('Santiago', 'Castro', '35678901', '1990-01-12', '1167890133', 'scastro@outlook.com', '2024-09-14'),
('Valentina', 'Mendoza', '41789012', '1999-04-24', '1178901244', 'valen.m@gmail.com', '2022-10-30'),
('Nicolás', 'Ruiz', '30890123', '1983-08-30', '1189012355', 'nico_ruiz@hotmail.com', '2025-07-12'),
('Joaquín', 'Jiménez', '28012345', '1981-03-05', '1101234577', 'jjimenez@gmail.com', '2023-11-05'),
('Tomás', 'Muñoz', '25234567', '1976-12-01', '1123456799', 'tomasm@yahoo.com', '2022-07-20'),
('Luciana', 'Herrera', '36456789', '1991-06-10', '1145678922', 'lherrera@gmail.com', '2024-05-22'),
('Florencia', 'Medina', '44567890', '2004-09-14', '1156789033', 'flor_medina@hotmail.com', '2022-09-08'),
('Agostina', 'Blanco', '38890123', '1994-08-08', '1189012366', 'agos.blanco@gmail.com', '2023-02-14'),
('Paula', 'Giménez', '46901234', '2006-11-20', '1190123477', 'paula_g@yahoo.com', '2025-01-30'),
('Andrea', 'Ortega', '29012345', '1982-05-30', '1101234588', 'aortega@outlook.com', '2022-12-25'),
('Marcela', 'Pereyra', '31234567', '1984-10-10', '1123456711', 'mpereyra@hotmail.com', '2024-08-11'),
('Guadalupe', 'Navarro', '42345678', '2001-02-02', '1134567844', 'guada_n@hotmail.com', '2023-10-10');

INSERT INTO estudio_danza.estilo (nombre_estilo, descripcion) VALUES
('Danza Clásica', 'Técnica académica formal con énfasis en la precisión de movimientos y la verticalidad.'),
('Danza Contemporánea', 'Estilo que busca la libertad de movimiento y la expresión corporal abstracta.'),
('Jazz', 'Danza enérgica que combina técnicas de ballet con ritmos populares y síncopas.'),
('Danzas Urbanas', 'Estilo urbano que incluye popping, locking y breaking, nacido en la cultura callejera.'),
('Tango', 'Danza de pareja rioplatense caracterizada por el abrazo y la improvisación.'),
('Flamenco', 'Danza española con gran fuerza emocional, zapateo y movimientos de brazos.'),
('Salsa', 'Ritmo caribeño dinámico y social, centrado en el movimiento de cadera y pies.'),
('Árabe', 'Danza milenaria de Oriente Medio que se enfoca en el control muscular del torso.'),
('Zapateo Americano', 'Disciplina donde los pies se utilizan como instrumentos de percusión.'),
('Bachata', 'Danza sensual originaria de República Dominicana con ritmo pausado y marcado.'),
('Danzas Folclóricas', 'Expresiones tradicionales que representan la identidad cultural de un pueblo.'),
('Iniciación a la Danza', 'Etapa pedagógica formativa centrada en el desarrollo de la conciencia corporal, la educación rítmica y la orientación espacial. Utiliza el juego y la exploración creativa como herramientas para introducir conceptos técnicos básicos antes de la especialización en un género específico.');

INSERT INTO estudio_danza.profesor (nombre, apellido, telefono, email) VALUES
('Martina', 'García', '1144556677', 'm.garcia@gmail.com'), 
('Elena', 'Rodríguez', '1122334455', 'elena.rod@gmail.com'), 
('Sofía', 'López', '1199887766', 'sofia.lopez@hotmail.com'), 
('Lucía', 'Fernández', '1133221100', 'lucia.fer@outlook.com'), 
('Valeria', 'Sánchez', '1155667788', 'v.sanchez@outlook.com'), 
('Julieta', 'Pérez', '1166778899', 'juli.perez@gmail.com'), 
('Camila', 'Gómez', '1177889900', 'cami.gomez@hotmail.com'), 
('Mariana', 'Díaz', '1188990011', 'mariana.diaz@gmail.com'), 
('Agustina', 'Torres', '1122446688', 'agus.torres@gmail.com'), 
('Sandra', 'Barrios', '1136157893', 's.barrios@hotmail.com'); 

INSERT INTO estudio_danza.nivel (nombre_nivel) VALUES 
('Inicial'),
('Principiante'),
('Intermedio'),
('Avanzado');

INSERT INTO estudio_danza.rango_edad (nombre_rango, edad_minima, edad_maxima) VALUES 
('Babys', 3, 5),
('Niños', 6, 11),
('Adolescentes', 12, 17),
('Adultos', 18, 99);

INSERT INTO estudio_danza.dia (nombre_dia) VALUES 
('Lunes'),
('Martes'),
('Miércoles'),
('Jueves'),
('Viernes'),
('Sábado'),
('Domingo');

INSERT INTO estudio_danza.horario (id_dia, hora_inicio, hora_fin) VALUES
(1, '16:30:00', '18:00:00'), 
(1, '18:00:00', '19:00:00'), 
(1, '19:00:00', '20:30:00'), 
(1, '20:30:00', '22:00:00'), 
(2, '16:00:00', '17:00:00'), 
(2, '17:00:00', '18:00:00'), 
(2, '18:00:00', '19:00:00'), 
(2, '19:00:00', '20:00:00'), 
(2, '20:00:00', '21:30:00'), 
(3, '16:30:00', '18:00:00'), 
(3, '18:00:00', '19:30:00'), 
(3, '19:30:00', '20:30:00'), 
(3, '20:30:00', '22:00:00'), 
(4, '16:00:00', '17:00:00'), 
(4, '17:00:00', '18:00:00'), 
(4, '18:00:00', '19:00:00'), 
(4, '19:00:00', '20:00:00'), 
(4, '20:00:00', '21:30:00'), 
(5, '16:00:00', '17:00:00'), 
(5, '17:00:00', '18:00:00'), 
(5, '18:00:00', '19:00:00'), 
(5, '19:00:00', '20:30:00'), 
(5, '20:30:00', '22:00:00'), 
(6, '10:00:00', '11:00:00'), 
(6, '11:00:00', '12:00:00'), 
(6, '16:00:00', '17:30:00'), 
(6, '17:30:00', '19:00:00'), 
(6, '19:00:00', '20:00:00'); 

INSERT INTO estudio_danza.clase (id_profesor, id_estilo, id_nivel, id_rango_edad, id_horario) VALUES
(1, 12, 1, 1, 2),
(1, 12, 1, 1, 14),
(2, 1, 4, 4, 3),
(2, 2, 2, 4, 4),
(2, 1, 3, 4, 22),
(2, 2, 3, 4, 23),
(3, 1, 2, 2, 6),
(3, 1, 3, 2, 7),
(4, 1, 4, 4, 13),
(4, 3, 2, 4, 24),
(4, 4, 2, 4, 25),
(5, 4, 2, 2, 15),
(5, 3, 2, 3, 16),
(5, 4, 2, 3, 20),
(5, 3, 3, 4, 21),
(6, 7, 2, 4, 9),
(6, 10, 2, 4, 18),
(7, 3, 2, 2, 8),
(7, 1, 3, 3, 11),
(7, 3, 3, 3, 12),
(7, 1, 2, 3, 17),
(8, 11, 2, 4, 26),
(8, 11, 3, 4, 27),
(9, 2, 2, 3, 1),
(9, 2, 3, 3, 10),
(10, 8, 2, 2, 5),
(10, 8, 2, 3, 19),
(10, 8, 2, 4, 28);

INSERT INTO estudio_danza.inscripcion (id_alumno, id_clase, fecha_inscripcion) VALUES
(1, 1, '2026-03-02'),
(1, 2, '2026-03-02'),
(2, 1, '2026-03-02'),
(3, 1, '2026-02-16'),
(4, 1, '2026-02-02'),
(4, 2, '2026-02-02'),
(5, 2, '2026-03-02'),
(6, 1, '2026-02-16'),
(6, 2, '2026-02-16'),
(7, 1, '2026-02-02'),
(7, 2, '2026-02-02'),
(8, 1, '2026-02-16'),
(9, 2, '2026-02-16'),
(10, 1, '2026-03-16'),
(10, 2, '2026-03-16'),
(11, 7, '2026-03-02'),
(11, 26, '2026-03-02'),
(12, 7, '2026-02-02'),
(12, 12, '2026-02-02'),
(13, 8, '2026-02-16'),
(13, 18, '2026-02-16'),
(14, 7, '2026-03-02'),
(15, 7, '2026-02-02'),
(15, 26, '2026-02-02'),
(15, 18, '2026-02-02'),
(16, 18, '2026-02-16'),
(16, 12, '2026-02-16'),
(17, 8, '2026-03-02'),
(17, 12, '2026-03-02'),
(17, 18, '2026-03-02'),
(18, 18, '2026-02-02'),
(19, 12, '2026-02-02'),
(20, 8, '2026-02-16'),
(20, 18, '2026-02-16'),
(21, 21, '2026-02-02'),
(21, 13, '2026-02-02'),
(21, 14, '2026-02-02'),
(22, 27, '2026-02-16'),
(22, 14, '2026-02-16'),
(23, 19, '2026-02-16'),
(23, 25, '2026-02-16'),
(24, 24, '2026-03-02'),
(24, 13, '2026-03-02'),
(25, 14, '2026-03-02'),
(25, 20, '2026-03-02'),
(26, 19, '2026-02-16'),
(26, 25, '2026-02-16'),
(26, 20, '2026-02-16'),
(27, 13, '2026-02-02'),
(28, 21, '2026-02-02'),
(28, 13, '2026-02-02'),
(29, 20, '2026-03-02'),
(29, 27, '2026-03-02'),
(30, 14, '2026-02-02'),
(30, 24, '2026-02-02'),
(31, 16, '2026-02-16'),
(31, 17, '2026-02-16'),
(32, 28, '2026-03-02'),
(32, 3, '2026-03-02'),
(32, 4, '2026-03-02'),
(33, 5, '2026-02-16'),
(33, 6, '2026-02-16'),
(33, 11, '2026-02-16'),
(34, 9, '2026-02-02'),
(34, 15, '2026-02-02'),
(34, 16, '2026-02-02'),
(35, 16, '2026-02-02'),
(35, 17, '2026-02-02'),
(36, 22, '2026-03-02'),
(36, 16, '2026-03-02'),
(37, 17, '2026-02-16'),
(37, 23, '2026-02-16'),
(38, 17, '2026-02-02'),
(38, 11, '2026-02-02'),
(39, 11, '2026-03-02'),
(39, 10, '2026-03-02'),
(40, 9, '2026-02-02'),
(40, 6, '2026-02-02'),
(40, 11, '2026-02-02'),
(41, 16, '2026-03-02'),
(42, 17, '2026-02-16'),
(43, 23, '2026-02-16'),
(44, 28, '2026-03-02'),
(44, 16, '2026-03-02'),
(44, 23, '2026-03-02'),
(45, 9, '2026-02-02'),
(45, 4, '2026-02-02'),
(46, 3, '2026-02-16'),
(46, 6, '2026-02-16'),
(46, 15, '2026-02-16'),
(47, 9, '2026-02-02'),
(47, 10, '2026-02-02'),
(48, 23, '2026-02-16'),
(49, 16, '2026-03-02'),
(49, 17, '2026-03-02'),
(49, 22, '2026-03-02'),
(50, 5, '2026-02-16'),
(50, 6, '2026-02-16');

INSERT INTO estudio_danza.planes (nombre_plan, cantidad_clases, precio_plan) VALUES
('Una vez por semana', 1, 25000.00), 
('Dos veces por semana', 2, 30000.00), 
('Tres veces por semana', 3, 33000.00);

INSERT INTO estudio_danza.pago (id_alumno, id_plan, monto, fecha_pago, metodo_pago) VALUES
(1, 2, 30000.00, '2026-03-02', 'débito'),
(2, 1, 25000.00, '2026-03-02', 'transferencia'),
(3, 2, 30000.00, '2026-02-16', 'débito'),
(4, 2, 30000.00, '2026-02-02', 'débito'),
(5, 1, 25000.00, '2026-03-02', 'transferencia'),
(6, 2, 30000.00, '2026-02-16', 'efectivo'),
(7, 2, 30000.00, '2026-02-02', 'débito'),
(8, 1, 25000.00, '2026-02-16', 'débito'),
(9, 1, 25000.00, '2026-02-16', 'efectivo'),
(10, 2, 30000.00, '2026-03-16', 'transferencia'),
(11, 2, 30000.00, '2026-03-02', 'efectivo'),
(12, 2, 30000.00, '2026-02-02', 'efectivo'),
(13, 2, 30000.00, '2026-02-16', 'transferencia'),
(14, 1, 25000.00, '2026-03-02', 'débito'),
(15, 3, 33000.00, '2026-02-02', 'transferencia'),
(16, 2, 30000.00, '2026-02-16', 'transferencia'),
(17, 3, 33000.00, '2026-03-02', 'débito'),
(18, 1, 25000.00, '2026-02-02', 'débito'),
(19, 1, 25000.00, '2026-02-02', 'efectivo'),
(20, 2, 30000.00, '2026-02-16', 'transferencia'),
(21, 3, 33000.00, '2026-02-02', 'efectivo'),
(22, 2, 30000.00, '2026-02-16', 'transferencia'),
(23, 2, 30000.00, '2026-02-16', 'transferencia'),
(24, 2, 30000.00, '2026-03-02', 'transferencia'),
(25, 2, 30000.00, '2026-03-02', 'efectivo'),
(26, 3, 33000.00, '2026-02-16', 'efectivo'),
(27, 2, 30000.00, '2026-02-02', 'efectivo'),
(28, 2, 30000.00, '2026-02-02', 'efectivo'),
(29, 2, 30000.00, '2026-03-02', 'efectivo'),
(30, 2, 30000.00, '2026-02-02', 'efectivo'),
(31, 2, 30000.00, '2026-02-16', 'transferencia'),
(32, 3, 33000.00, '2026-03-02', 'transferencia'),
(33, 3, 33000.00, '2026-02-16', 'transferencia'),
(34, 3, 33000.00, '2026-02-02', 'débito'),
(35, 2, 30000.00, '2026-02-02', 'débito'),
(36, 2, 30000.00, '2026-03-02', 'transferencia'),
(37, 2, 30000.00, '2026-02-16', 'efectivo'),
(38, 2, 30000.00, '2026-02-02', 'efectivo'),
(39, 2, 30000.00, '2026-03-02', 'débito'),
(40, 3, 33000.00, '2026-02-02', 'débito'),
(41, 1, 25000.00, '2026-03-02', 'transferencia'),
(42, 1, 25000.00, '2026-02-16', 'transferencia'),
(43, 1, 25000.00, '2026-02-16', 'transferencia'),
(44, 3, 33000.00, '2026-03-02', 'transferencia'),
(45, 3, 33000.00, '2026-02-02', 'transferencia'),
(46, 3, 33000.00, '2026-02-16', 'efectivo'),
(47, 2, 30000.00, '2026-02-02', 'efectivo'),
(48, 1, 25000.00, '2026-02-16', 'efectivo'),
(49, 3, 33000.00, '2026-03-02', 'débito'),
(50, 3, 33000.00, '2026-02-16', 'débito');

ALTER TABLE estudio_danza.clase 
ADD COLUMN cupo_maximo INT NOT NULL DEFAULT 20;

-- Vistas

-- Vista 1
CREATE OR REPLACE VIEW estudio_danza.view_cronograma_clases AS
SELECT 
    c.id AS clase_id,
    e.nombre_estilo,
    p.nombre AS nombre_profesor,
    p.apellido AS apellido_profesor,
    n.nombre_nivel,
    r.nombre_rango AS rango_edad,
    d.nombre_dia,
    h.hora_inicio,
    h.hora_fin
FROM estudio_danza.clase c
INNER JOIN estudio_danza.profesor p ON c.id_profesor = p.id
INNER JOIN estudio_danza.estilo e ON c.id_estilo = e.id
INNER JOIN estudio_danza.nivel n ON c.id_nivel = n.id
INNER JOIN estudio_danza.rango_edad r ON c.id_rango_edad = r.id
INNER JOIN estudio_danza.horario h ON c.id_horario = h.id
INNER JOIN estudio_danza.dia d ON h.id_dia = d.id;

SELECT * FROM estudio_danza.view_cronograma_clases;

-- Vista 2
CREATE OR REPLACE VIEW estudio_danza.view_reporte_ingresos_planes AS
SELECT 
    pl.nombre_plan,
    COUNT(p.id) AS cantidad_ventas,
    SUM(p.monto) AS total_recaudado,
    AVG(p.monto) AS promedio_por_venta
FROM estudio_danza.planes pl
LEFT JOIN estudio_danza.pago p ON pl.id = p.id_plan
GROUP BY pl.id, pl.nombre_plan;

SELECT * FROM estudio_danza.view_reporte_ingresos_planes;
-- Vista 3
-- Aclaración: debe primero ejecutarse la función 1 para que esta vista se ejecute. Se coloca en esta parte del código para mantener el orden de ítems solicitados. 
CREATE OR REPLACE VIEW estudio_danza.view_estado_cupos_clases AS
SELECT 
    c.id AS clase_id,
    CONCAT_WS (' - ', e.nombre_estilo, r.nombre_rango, n.nombre_nivel) AS nombre_clase,
    c.cupo_maximo,
    COUNT(i.id) AS total_inscriptos,
    (c.cupo_maximo - COUNT(i.id)) AS lugares_libres,
    fn_hay_cupo_disponible(c.id) AS esta_disponible
FROM estudio_danza.clase c
INNER JOIN estudio_danza.estilo e ON c.id_estilo = e.id
INNER JOIN estudio_danza.rango_edad r ON c.id_rango_edad = r.id
INNER JOIN estudio_danza.nivel n ON c.id_nivel = n.id
LEFT JOIN estudio_danza.inscripcion i ON c.id = i.id_clase
GROUP BY 
    c.id, 
    e.nombre_estilo, 
    r.nombre_rango,
    n.nombre_nivel, 
    c.cupo_maximo;

SELECT * FROM estudio_danza.view_estado_cupos_clases;

-- Funciones

-- Función 1
DELIMITER //

CREATE FUNCTION fn_hay_cupo_disponible(
_clase_id INT) 
RETURNS BOOLEAN
READS SQL DATA
BEGIN
    DECLARE valor_inscriptos INT;
    DECLARE valor_cupo_max INT;
    DECLARE valor_resultado BOOLEAN;

    SELECT cupo_maximo INTO valor_cupo_max 
    FROM estudio_danza.clase 
    WHERE id = _clase_id;

    SELECT COUNT(*) INTO valor_inscriptos 
    FROM estudio_danza.inscripcion 
    WHERE id_clase = _clase_id;

    IF valor_inscriptos < valor_cupo_max THEN
        SET valor_resultado = TRUE;
    ELSE
        SET valor_resultado = FALSE;
    END IF;

    RETURN valor_resultado;
END //

DELIMITER ;

-- Ejemplo: Para saber si la clase con ID 10 tiene lugar.
SELECT fn_hay_cupo_disponible(10) AS tiene_cupo;

-- Ejemplo: Para ver la disponibilidad de todas las clases (ver Vista 3).

-- Función 2
DELIMITER //

CREATE FUNCTION fn_calcular_edad(
_alumno_id INT) 
RETURNS INT
DETERMINISTIC
BEGIN
    DECLARE valor_edad INT;
    SELECT TIMESTAMPDIFF(YEAR, fecha_nacimiento, CURDATE()) INTO valor_edad
    FROM estudio_danza.alumno
    WHERE id = _alumno_id;
    RETURN valor_edad;
END //

DELIMITER ;

-- Ejemplo: Para saber la edad del alumno con el ID 5.
SELECT fn_calcular_edad(5) AS edad_del_alumno;

-- Ejemplo: Para ver la edad de todos los alumnos.
SELECT nombre, apellido, fn_calcular_edad(id) AS edad 
FROM estudio_danza.alumno;

-- Procedimientos

-- Procedimiento 1
DELIMITER //

CREATE PROCEDURE sp_inscribir_alumno(
    IN _alumno_id INT,
    IN _clase_id INT
)
BEGIN
    -- Validamos usando la función
    IF fn_hay_cupo_disponible(_clase_id) = TRUE THEN
        
        INSERT INTO estudio_danza.inscripcion (id_alumno, id_clase, fecha_inscripcion)
        VALUES (_alumno_id, _clase_id, CURDATE());
        
        SELECT 'Inscripción realizada con éxito.' AS mensaje;
    ELSE
        SELECT 'Error: No se pudo inscribir. La clase está llena.' AS mensaje;
    END IF;
END //

DELIMITER ;

-- Ejemplo: Inscribir al alumno con ID 25 en la clase con ID 8.
CALL sp_inscribir_alumno(25, 14);

-- Procedimiento 2
DELIMITER //
CREATE PROCEDURE sp_registrar_pago_plan(
    IN _alumno_id INT,
    IN _plan_id INT,
    IN _metodo VARCHAR(50)
)
BEGIN
    DECLARE v_precio DECIMAL(10,2);
    
    SELECT precio_plan INTO v_precio FROM estudio_danza.planes WHERE id = p_plan_id;
    
    INSERT INTO estudio_danza.pago (id_alumno, id_plan, monto, fecha_pago, metodo_pago)
    VALUES (_alumno_id, _plan_id, _precio, NOW(), _metodo);
END //

DELIMITER ;

-- Ejemplo: Registrar que el alumno ID 10 pagó el plan ID 2 con el método 'Efectivo'.
CALL sp_registrar_pago_plan(10, 2, 'Efectivo');

-- Triggers

-- Trigger 1
DELIMITER //

CREATE TRIGGER tr_validar_cupo_antes_insertar
BEFORE INSERT ON estudio_danza.inscripcion
FOR EACH ROW
BEGIN
    IF fn_hay_cupo_disponible(NEW.id_clase) = FALSE THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Error: La clase seleccionada ya alcanzó su cupo máximo.';
    END IF;
END //

DELIMITER ;

SHOW TRIGGERS LIKE 'tr_validar_cupo_antes_insertar';

-- Trigger 2
DELIMITER //

CREATE TRIGGER tr_validar_edad_inscripcion
BEFORE INSERT ON estudio_danza.inscripcion
FOR EACH ROW
BEGIN
    DECLARE valor_edad_alumno INT;
    DECLARE valor_min INT;
    DECLARE valor_max INT;
    DECLARE valor_nombre_rango VARCHAR(50);

    SET valor_edad_alumno = fn_calcular_edad(NEW.id_alumno);

    SELECT r.edad_minima, r.edad_maxima, r.nombre_rango 
    INTO valor_min, valor_max, valor_nombre_rango
    FROM estudio_danza.clase c
    JOIN estudio_danza.rango_edad r ON c.id_rango_edad = r.id
    WHERE c.id = NEW.id_clase;

    IF valor_edad_alumno < valor_min OR valor_edad_alumno > valor_max THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Error: El alumno no cumple con el rango de edad para esta clase.';
    END IF;
END //

DELIMITER ;

SHOW TRIGGERS LIKE 'tr_validar_edad_inscripcion';
