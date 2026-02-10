CREATE DATABASE IF NOT EXISTS estudio_danza;

USE estudio_danza;

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
    