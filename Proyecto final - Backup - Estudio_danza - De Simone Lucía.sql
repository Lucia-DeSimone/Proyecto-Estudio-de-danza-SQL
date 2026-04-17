CREATE DATABASE  IF NOT EXISTS `estudio_danza` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `estudio_danza`;
-- MySQL dump 10.13  Distrib 8.0.44, for Win64 (x86_64)
--
-- Host: localhost    Database: estudio_danza
-- ------------------------------------------------------
-- Server version	8.0.44

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `alumno`
--

DROP TABLE IF EXISTS `alumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumno` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `dni` varchar(10) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `fecha_ingreso` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno`
--

LOCK TABLES `alumno` WRITE;
/*!40000 ALTER TABLE `alumno` DISABLE KEYS */;
INSERT INTO `alumno` VALUES (1,'Mateo','Díaz','60456789','2022-06-03','1145678911','mateo.diaz@gmail.com','2026-03-01'),(2,'Sofía','Ramírez','58123456','2021-04-18','1112345678','sofia_r@gmail.com','2024-05-12'),(3,'Barbara','Rojas','60012345','2022-05-05','1101234599','barbie_rojas@gmail.com','2026-02-15'),(4,'Lola','Acosta','58901234','2021-03-14','1190123488','lola.acosta@hotmail.com','2024-03-20'),(5,'Olivia','Serrano','60901234','2022-04-12','1190123499','olivia.s@gmail.com','2026-01-10'),(6,'Benjamín','Cardozo','59234567','2022-07-07','1123456733','b.cardozo@gmail.com','2025-08-22'),(7,'Camila','Moreno','59123456','2021-07-19','1112345688','cami.moreno@gmail.com','2024-11-30'),(8,'Brenda','Aguilar','57678901','2021-12-05','1167890144','brenda.aguilar@gmail.com','2025-02-14'),(9,'Filipa','Mendez','58765432','2022-01-10','1122334455','filipa.m@gmail.com','2025-06-05'),(10,'Emma','Sosa','59876543','2022-09-15','1133445566','emma.sosa@hotmail.com','2026-03-10'),(11,'Elena','Vázquez','55567890','2018-10-03','1156789022','elena_v@yahoo.com','2023-04-15'),(12,'Martina','Alvarez','53901234','2016-11-15','1190123466','marti.alvarez@gmail.com','2022-08-10'),(13,'Victoria','Romero','54345678','2017-02-28','1134567800','vicky.romero@outlook.com','2023-03-12'),(14,'Delfina','Morales','56123456','2019-01-15','1112345699','delfi.m@gmail.com','2024-07-22'),(15,'Catalina','Ríos','52345678','2015-06-25','1134567822','cata_rios@gmail.com','2022-12-01'),(16,'Renata','Silva','53567890','2016-04-04','1156789044','renata_silva@gmail.com','2022-05-18'),(17,'Zoe','Cano','55123456','2018-09-21','1112345600','zoe.cano@hotmail.com','2023-10-05'),(18,'Isabella','Peralta','57567890','2020-08-08','1156789055','isa.peralta@gmail.com','2025-01-15'),(19,'Thiago','Guzman','54433221','2017-05-12','1144556677','thiago.g@gmail.com','2023-06-30'),(20,'Mia','Ortega','56677889','2019-11-30','1155667788','mia.ortega@yahoo.com','2024-02-28'),(21,'Julieta','Suárez','50789012','2013-03-22','1178901255','jsuarez@hotmail.com','2025-03-15'),(22,'Micaela','Benítez','51789012','2013-12-30','1178901266','mica.benitez@outlook.com','2024-10-10'),(23,'Milagros','Vera','49789012','2012-02-20','1178901277','mili_vera@gmail.com','2022-04-05'),(24,'Juana','Luna','51123456','2013-05-15','1112345622','juanaluna@outlook.com','2025-11-20'),(25,'Santino','Paz','48123456','2011-08-14','1166778899','santino.paz@gmail.com','2023-09-01'),(26,'Abril','Domínguez','47345678','2010-12-12','1134567833','abril.d@yahoo.com','2022-03-15'),(27,'Lautaro','Vega','46123456','2009-02-25','1177889900','lauti.vega@gmail.com','2024-01-10'),(28,'Tamara','Flores','48567890','2011-10-10','1188990011','tamara.f@hotmail.com','2023-05-25'),(29,'Alma','Godoy','49345678','2012-06-05','1199001122','alma.godoy@gmail.com','2022-11-12'),(30,'Tomas','Duarte','50234567','2013-01-20','1111223344','tomas.d@outlook.com','2025-04-30'),(31,'Juan','García','25456789','1976-03-12','1145678901','juan.garcia@gmail.com','2022-02-10'),(32,'María','Rodríguez','33567890','1988-07-22','1156789012','m.rodriguez@hotmail.com','2022-06-15'),(33,'Carla','López','40678901','1998-11-05','1167890123','carlopez88@yahoo.com','2023-01-20'),(34,'Ana','Martínez','45789012','2005-01-30','1178901234','ana.mtz@outlook.com','2025-12-05'),(35,'Luis','González','27890123','1980-05-15','1189012345','luisgo@gmail.com','2022-03-01'),(36,'Diego','Sánchez','30012345','1982-12-25','1101234567','diego.san@gmail.com','2024-04-18'),(37,'Javier','Torres','26234567','1977-08-11','1123456789','jtorres@gmail.com','2022-05-10'),(38,'Lucía','Gómez','31345678','1985-02-14','1134567890','lu.gomez@hotmail.com','2023-08-25'),(39,'Santiago','Castro','35678901','1990-01-12','1167890133','scastro@outlook.com','2024-09-14'),(40,'Valentina','Mendoza','41789012','1999-04-24','1178901244','valen.m@gmail.com','2022-10-30'),(41,'Nicolás','Ruiz','30890123','1983-08-30','1189012355','nico_ruiz@hotmail.com','2025-07-12'),(42,'Joaquín','Jiménez','28012345','1981-03-05','1101234577','jjimenez@gmail.com','2023-11-05'),(43,'Tomás','Muñoz','25234567','1976-12-01','1123456799','tomasm@yahoo.com','2022-07-20'),(44,'Luciana','Herrera','36456789','1991-06-10','1145678922','lherrera@gmail.com','2024-05-22'),(45,'Florencia','Medina','44567890','2004-09-14','1156789033','flor_medina@hotmail.com','2022-09-08'),(46,'Agostina','Blanco','38890123','1994-08-08','1189012366','agos.blanco@gmail.com','2023-02-14'),(47,'Paula','Giménez','46901234','2006-11-20','1190123477','paula_g@yahoo.com','2025-01-30'),(48,'Andrea','Ortega','29012345','1982-05-30','1101234588','aortega@outlook.com','2022-12-25'),(49,'Marcela','Pereyra','31234567','1984-10-10','1123456711','mpereyra@hotmail.com','2024-08-11'),(50,'Guadalupe','Navarro','42345678','2001-02-02','1134567844','guada_n@hotmail.com','2023-10-10');
/*!40000 ALTER TABLE `alumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clase`
--

DROP TABLE IF EXISTS `clase`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clase` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_profesor` int DEFAULT NULL,
  `id_estilo` int DEFAULT NULL,
  `id_nivel` int DEFAULT NULL,
  `id_rango_edad` int DEFAULT NULL,
  `id_horario` int DEFAULT NULL,
  `cupo_maximo` int NOT NULL DEFAULT '20',
  PRIMARY KEY (`id`),
  KEY `id_profesor` (`id_profesor`),
  KEY `id_estilo` (`id_estilo`),
  KEY `id_nivel` (`id_nivel`),
  KEY `id_rango_edad` (`id_rango_edad`),
  KEY `id_horario` (`id_horario`),
  CONSTRAINT `clase_ibfk_1` FOREIGN KEY (`id_profesor`) REFERENCES `profesor` (`id`),
  CONSTRAINT `clase_ibfk_2` FOREIGN KEY (`id_estilo`) REFERENCES `estilo` (`id`),
  CONSTRAINT `clase_ibfk_3` FOREIGN KEY (`id_nivel`) REFERENCES `nivel` (`id`),
  CONSTRAINT `clase_ibfk_4` FOREIGN KEY (`id_rango_edad`) REFERENCES `rango_edad` (`id`),
  CONSTRAINT `clase_ibfk_5` FOREIGN KEY (`id_horario`) REFERENCES `horario` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clase`
--

LOCK TABLES `clase` WRITE;
/*!40000 ALTER TABLE `clase` DISABLE KEYS */;
INSERT INTO `clase` VALUES (1,1,12,1,1,2,20),(2,1,12,1,1,14,20),(3,2,1,4,4,3,20),(4,2,2,2,4,4,20),(5,2,1,3,4,22,20),(6,2,2,3,4,23,20),(7,3,1,2,2,6,20),(8,3,1,3,2,7,20),(9,4,1,4,4,13,20),(10,4,3,2,4,24,20),(11,4,4,2,4,25,20),(12,5,4,2,2,15,20),(13,5,3,2,3,16,20),(14,5,4,2,3,20,20),(15,5,3,3,4,21,20),(16,6,7,2,4,9,20),(17,6,10,2,4,18,20),(18,7,3,2,2,8,20),(19,7,1,3,3,11,20),(20,7,3,3,3,12,20),(21,7,1,2,3,17,20),(22,8,11,2,4,26,20),(23,8,11,3,4,27,20),(24,9,2,2,3,1,20),(25,9,2,3,3,10,20),(26,10,8,2,2,5,20),(27,10,8,2,3,19,20),(28,10,8,2,4,28,20);
/*!40000 ALTER TABLE `clase` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dia`
--

DROP TABLE IF EXISTS `dia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dia` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_dia` varchar(15) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nombre_dia` (`nombre_dia`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dia`
--

LOCK TABLES `dia` WRITE;
/*!40000 ALTER TABLE `dia` DISABLE KEYS */;
INSERT INTO `dia` VALUES (7,'Domingo'),(4,'Jueves'),(1,'Lunes'),(2,'Martes'),(3,'Miércoles'),(6,'Sábado'),(5,'Viernes');
/*!40000 ALTER TABLE `dia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estilo`
--

DROP TABLE IF EXISTS `estilo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estilo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_estilo` varchar(100) DEFAULT NULL,
  `descripcion` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estilo`
--

LOCK TABLES `estilo` WRITE;
/*!40000 ALTER TABLE `estilo` DISABLE KEYS */;
INSERT INTO `estilo` VALUES (1,'Danza Clásica','Técnica académica formal con énfasis en la precisión de movimientos y la verticalidad.'),(2,'Danza Contemporánea','Estilo que busca la libertad de movimiento y la expresión corporal abstracta.'),(3,'Jazz','Danza enérgica que combina técnicas de ballet con ritmos populares y síncopas.'),(4,'Danzas Urbanas','Estilo urbano que incluye popping, locking y breaking, nacido en la cultura callejera.'),(5,'Tango','Danza de pareja rioplatense caracterizada por el abrazo y la improvisación.'),(6,'Flamenco','Danza española con gran fuerza emocional, zapateo y movimientos de brazos.'),(7,'Salsa','Ritmo caribeño dinámico y social, centrado en el movimiento de cadera y pies.'),(8,'Árabe','Danza milenaria de Oriente Medio que se enfoca en el control muscular del torso.'),(9,'Zapateo Americano','Disciplina donde los pies se utilizan como instrumentos de percusión.'),(10,'Bachata','Danza sensual originaria de República Dominicana con ritmo pausado y marcado.'),(11,'Danzas Folclóricas','Expresiones tradicionales que representan la identidad cultural de un pueblo.'),(12,'Iniciación a la Danza','Etapa pedagógica formativa centrada en el desarrollo de la conciencia corporal, la educación rítmica y la orientación espacial. Utiliza el juego y la exploración creativa como herramientas para introducir conceptos técnicos básicos antes de la especialización en un género específico.');
/*!40000 ALTER TABLE `estilo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horario`
--

DROP TABLE IF EXISTS `horario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horario` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_dia` int DEFAULT NULL,
  `hora_inicio` time NOT NULL,
  `hora_fin` time NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_dia` (`id_dia`),
  CONSTRAINT `horario_ibfk_1` FOREIGN KEY (`id_dia`) REFERENCES `dia` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horario`
--

LOCK TABLES `horario` WRITE;
/*!40000 ALTER TABLE `horario` DISABLE KEYS */;
INSERT INTO `horario` VALUES (1,1,'16:30:00','18:00:00'),(2,1,'18:00:00','19:00:00'),(3,1,'19:00:00','20:30:00'),(4,1,'20:30:00','22:00:00'),(5,2,'16:00:00','17:00:00'),(6,2,'17:00:00','18:00:00'),(7,2,'18:00:00','19:00:00'),(8,2,'19:00:00','20:00:00'),(9,2,'20:00:00','21:30:00'),(10,3,'16:30:00','18:00:00'),(11,3,'18:00:00','19:30:00'),(12,3,'19:30:00','20:30:00'),(13,3,'20:30:00','22:00:00'),(14,4,'16:00:00','17:00:00'),(15,4,'17:00:00','18:00:00'),(16,4,'18:00:00','19:00:00'),(17,4,'19:00:00','20:00:00'),(18,4,'20:00:00','21:30:00'),(19,5,'16:00:00','17:00:00'),(20,5,'17:00:00','18:00:00'),(21,5,'18:00:00','19:00:00'),(22,5,'19:00:00','20:30:00'),(23,5,'20:30:00','22:00:00'),(24,6,'10:00:00','11:00:00'),(25,6,'11:00:00','12:00:00'),(26,6,'16:00:00','17:30:00'),(27,6,'17:30:00','19:00:00'),(28,6,'19:00:00','20:00:00'),(29,1,'16:30:00','18:00:00'),(30,1,'18:00:00','19:00:00'),(31,1,'19:00:00','20:30:00'),(32,1,'20:30:00','22:00:00'),(33,2,'16:00:00','17:00:00'),(34,2,'17:00:00','18:00:00'),(35,2,'18:00:00','19:00:00'),(36,2,'19:00:00','20:00:00'),(37,2,'20:00:00','21:30:00'),(38,3,'16:30:00','18:00:00'),(39,3,'18:00:00','19:30:00'),(40,3,'19:30:00','20:30:00'),(41,3,'20:30:00','22:00:00'),(42,4,'16:00:00','17:00:00'),(43,4,'17:00:00','18:00:00'),(44,4,'18:00:00','19:00:00'),(45,4,'19:00:00','20:00:00'),(46,4,'20:00:00','21:30:00'),(47,5,'16:00:00','17:00:00'),(48,5,'17:00:00','18:00:00'),(49,5,'18:00:00','19:00:00'),(50,5,'19:00:00','20:30:00'),(51,5,'20:30:00','22:00:00'),(52,6,'10:00:00','11:00:00'),(53,6,'11:00:00','12:00:00'),(54,6,'16:00:00','17:30:00'),(55,6,'17:30:00','19:00:00'),(56,6,'19:00:00','20:00:00');
/*!40000 ALTER TABLE `horario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inscripcion`
--

DROP TABLE IF EXISTS `inscripcion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inscripcion` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_alumno` int DEFAULT NULL,
  `id_clase` int DEFAULT NULL,
  `fecha_inscripcion` date DEFAULT (curdate()),
  PRIMARY KEY (`id`),
  KEY `id_alumno` (`id_alumno`),
  KEY `id_clase` (`id_clase`),
  CONSTRAINT `inscripcion_ibfk_1` FOREIGN KEY (`id_alumno`) REFERENCES `alumno` (`id`),
  CONSTRAINT `inscripcion_ibfk_2` FOREIGN KEY (`id_clase`) REFERENCES `clase` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=198 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inscripcion`
--

LOCK TABLES `inscripcion` WRITE;
/*!40000 ALTER TABLE `inscripcion` DISABLE KEYS */;
INSERT INTO `inscripcion` VALUES (99,1,1,'2026-03-02'),(100,1,2,'2026-03-02'),(101,2,1,'2026-03-02'),(102,3,1,'2026-02-16'),(103,4,1,'2026-02-02'),(104,4,2,'2026-02-02'),(105,5,2,'2026-03-02'),(106,6,1,'2026-02-16'),(107,6,2,'2026-02-16'),(108,7,1,'2026-02-02'),(109,7,2,'2026-02-02'),(110,8,1,'2026-02-16'),(111,9,2,'2026-02-16'),(112,10,1,'2026-03-16'),(113,10,2,'2026-03-16'),(114,11,7,'2026-03-02'),(115,11,26,'2026-03-02'),(116,12,7,'2026-02-02'),(117,12,12,'2026-02-02'),(118,13,8,'2026-02-16'),(119,13,18,'2026-02-16'),(120,14,7,'2026-03-02'),(121,15,7,'2026-02-02'),(122,15,26,'2026-02-02'),(123,15,18,'2026-02-02'),(124,16,18,'2026-02-16'),(125,16,12,'2026-02-16'),(126,17,8,'2026-03-02'),(127,17,12,'2026-03-02'),(128,17,18,'2026-03-02'),(129,18,18,'2026-02-02'),(130,19,12,'2026-02-02'),(131,20,8,'2026-02-16'),(132,20,18,'2026-02-16'),(133,21,21,'2026-02-02'),(134,21,13,'2026-02-02'),(135,21,14,'2026-02-02'),(136,22,27,'2026-02-16'),(137,22,14,'2026-02-16'),(138,23,19,'2026-02-16'),(139,23,25,'2026-02-16'),(140,24,24,'2026-03-02'),(141,24,13,'2026-03-02'),(143,25,20,'2026-03-02'),(144,26,19,'2026-02-16'),(145,26,25,'2026-02-16'),(146,26,20,'2026-02-16'),(147,27,13,'2026-02-02'),(148,28,21,'2026-02-02'),(149,28,13,'2026-02-02'),(150,29,20,'2026-03-02'),(151,29,27,'2026-03-02'),(152,30,14,'2026-02-02'),(153,30,24,'2026-02-02'),(154,31,16,'2026-02-16'),(155,31,17,'2026-02-16'),(156,32,28,'2026-03-02'),(157,32,3,'2026-03-02'),(158,32,4,'2026-03-02'),(159,33,5,'2026-02-16'),(160,33,6,'2026-02-16'),(161,33,11,'2026-02-16'),(162,34,9,'2026-02-02'),(163,34,15,'2026-02-02'),(164,34,16,'2026-02-02'),(165,35,16,'2026-02-02'),(166,35,17,'2026-02-02'),(167,36,22,'2026-03-02'),(168,36,16,'2026-03-02'),(169,37,17,'2026-02-16'),(170,37,23,'2026-02-16'),(171,38,17,'2026-02-02'),(172,38,11,'2026-02-02'),(173,39,11,'2026-03-02'),(174,39,10,'2026-03-02'),(175,40,9,'2026-02-02'),(176,40,6,'2026-02-02'),(177,40,11,'2026-02-02'),(178,41,16,'2026-03-02'),(179,42,17,'2026-02-16'),(180,43,23,'2026-02-16'),(181,44,28,'2026-03-02'),(182,44,16,'2026-03-02'),(183,44,23,'2026-03-02'),(184,45,9,'2026-02-02'),(185,45,4,'2026-02-02'),(186,46,3,'2026-02-16'),(187,46,6,'2026-02-16'),(188,46,15,'2026-02-16'),(189,47,9,'2026-02-02'),(190,47,10,'2026-02-02'),(191,48,23,'2026-02-16'),(192,49,16,'2026-03-02'),(193,49,17,'2026-03-02'),(194,49,22,'2026-03-02'),(195,50,5,'2026-02-16'),(196,50,6,'2026-02-16');
/*!40000 ALTER TABLE `inscripcion` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_validar_cupo_antes_insertar` BEFORE INSERT ON `inscripcion` FOR EACH ROW BEGIN
    IF fn_hay_cupo_disponible(NEW.id_clase) = FALSE THEN
        SIGNAL SQLSTATE '45000' 
        SET MESSAGE_TEXT = 'Error: La clase seleccionada ya alcanzó su cupo máximo.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `tr_validar_edad_inscripcion` BEFORE INSERT ON `inscripcion` FOR EACH ROW BEGIN
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
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `nivel`
--

DROP TABLE IF EXISTS `nivel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nivel` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_nivel` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nivel`
--

LOCK TABLES `nivel` WRITE;
/*!40000 ALTER TABLE `nivel` DISABLE KEYS */;
INSERT INTO `nivel` VALUES (1,'Inicial'),(2,'Principiante'),(3,'Intermedio'),(4,'Avanzado');
/*!40000 ALTER TABLE `nivel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pago`
--

DROP TABLE IF EXISTS `pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pago` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_alumno` int DEFAULT NULL,
  `id_plan` int DEFAULT NULL,
  `monto` decimal(10,2) NOT NULL,
  `fecha_pago` datetime DEFAULT (curdate()),
  `metodo_pago` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_alumno` (`id_alumno`),
  KEY `id_plan` (`id_plan`),
  CONSTRAINT `pago_ibfk_1` FOREIGN KEY (`id_alumno`) REFERENCES `alumno` (`id`),
  CONSTRAINT `pago_ibfk_2` FOREIGN KEY (`id_plan`) REFERENCES `planes` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pago`
--

LOCK TABLES `pago` WRITE;
/*!40000 ALTER TABLE `pago` DISABLE KEYS */;
INSERT INTO `pago` VALUES (1,1,2,30000.00,'2026-03-02 00:00:00','débito'),(2,2,1,25000.00,'2026-03-02 00:00:00','transferencia'),(3,3,2,30000.00,'2026-02-16 00:00:00','débito'),(4,4,2,30000.00,'2026-02-02 00:00:00','débito'),(5,5,1,25000.00,'2026-03-02 00:00:00','transferencia'),(6,6,2,30000.00,'2026-02-16 00:00:00','efectivo'),(7,7,2,30000.00,'2026-02-02 00:00:00','débito'),(8,8,1,25000.00,'2026-02-16 00:00:00','débito'),(9,9,1,25000.00,'2026-02-16 00:00:00','efectivo'),(10,10,2,30000.00,'2026-03-16 00:00:00','transferencia'),(11,11,2,30000.00,'2026-03-02 00:00:00','efectivo'),(12,12,2,30000.00,'2026-02-02 00:00:00','efectivo'),(13,13,2,30000.00,'2026-02-16 00:00:00','transferencia'),(14,14,1,25000.00,'2026-03-02 00:00:00','débito'),(15,15,3,33000.00,'2026-02-02 00:00:00','transferencia'),(16,16,2,30000.00,'2026-02-16 00:00:00','transferencia'),(17,17,3,33000.00,'2026-03-02 00:00:00','débito'),(18,18,1,25000.00,'2026-02-02 00:00:00','débito'),(19,19,1,25000.00,'2026-02-02 00:00:00','efectivo'),(20,20,2,30000.00,'2026-02-16 00:00:00','transferencia'),(21,21,3,33000.00,'2026-02-02 00:00:00','efectivo'),(22,22,2,30000.00,'2026-02-16 00:00:00','transferencia'),(23,23,2,30000.00,'2026-02-16 00:00:00','transferencia'),(24,24,2,30000.00,'2026-03-02 00:00:00','transferencia'),(25,25,2,30000.00,'2026-03-02 00:00:00','efectivo'),(26,26,3,33000.00,'2026-02-16 00:00:00','efectivo'),(27,27,2,30000.00,'2026-02-02 00:00:00','efectivo'),(28,28,2,30000.00,'2026-02-02 00:00:00','efectivo'),(29,29,2,30000.00,'2026-03-02 00:00:00','efectivo'),(30,30,2,30000.00,'2026-02-02 00:00:00','efectivo'),(31,31,2,30000.00,'2026-02-16 00:00:00','transferencia'),(32,32,3,33000.00,'2026-03-02 00:00:00','transferencia'),(33,33,3,33000.00,'2026-02-16 00:00:00','transferencia'),(34,34,3,33000.00,'2026-02-02 00:00:00','débito'),(35,35,2,30000.00,'2026-02-02 00:00:00','débito'),(36,36,2,30000.00,'2026-03-02 00:00:00','transferencia'),(37,37,2,30000.00,'2026-02-16 00:00:00','efectivo'),(38,38,2,30000.00,'2026-02-02 00:00:00','efectivo'),(39,39,2,30000.00,'2026-03-02 00:00:00','débito'),(40,40,3,33000.00,'2026-02-02 00:00:00','débito'),(41,41,1,25000.00,'2026-03-02 00:00:00','transferencia'),(42,42,1,25000.00,'2026-02-16 00:00:00','transferencia'),(43,43,1,25000.00,'2026-02-16 00:00:00','transferencia'),(44,44,3,33000.00,'2026-03-02 00:00:00','transferencia'),(45,45,3,33000.00,'2026-02-02 00:00:00','transferencia'),(46,46,3,33000.00,'2026-02-16 00:00:00','efectivo'),(47,47,2,30000.00,'2026-02-02 00:00:00','efectivo'),(48,48,1,25000.00,'2026-02-16 00:00:00','efectivo'),(49,49,3,33000.00,'2026-03-02 00:00:00','débito'),(50,50,3,33000.00,'2026-02-16 00:00:00','débito');
/*!40000 ALTER TABLE `pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `planes`
--

DROP TABLE IF EXISTS `planes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `planes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_plan` varchar(50) DEFAULT NULL,
  `cantidad_clases` int NOT NULL,
  `precio_plan` decimal(10,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `planes`
--

LOCK TABLES `planes` WRITE;
/*!40000 ALTER TABLE `planes` DISABLE KEYS */;
INSERT INTO `planes` VALUES (1,'Una vez por semana',1,25000.00),(2,'Dos veces por semana',2,30000.00),(3,'Tres veces por semana',3,33000.00);
/*!40000 ALTER TABLE `planes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `profesor`
--

DROP TABLE IF EXISTS `profesor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `profesor` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `profesor`
--

LOCK TABLES `profesor` WRITE;
/*!40000 ALTER TABLE `profesor` DISABLE KEYS */;
INSERT INTO `profesor` VALUES (1,'Martina','García','1144556677','m.garcia@gmail.com'),(2,'Elena','Rodríguez','1122334455','elena.rod@gmail.com'),(3,'Sofía','López','1199887766','sofia.lopez@hotmail.com'),(4,'Lucía','Fernández','1133221100','lucia.fer@outlook.com'),(5,'Valeria','Sánchez','1155667788','v.sanchez@outlook.com'),(6,'Julieta','Pérez','1166778899','juli.perez@gmail.com'),(7,'Camila','Gómez','1177889900','cami.gomez@hotmail.com'),(8,'Mariana','Díaz','1188990011','mariana.diaz@gmail.com'),(9,'Agustina','Torres','1122446688','agus.torres@gmail.com'),(10,'Sandra','Barrios','1136157893','s.barrios@hotmail.com');
/*!40000 ALTER TABLE `profesor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rango_edad`
--

DROP TABLE IF EXISTS `rango_edad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rango_edad` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_rango` varchar(50) NOT NULL,
  `edad_minima` int DEFAULT NULL,
  `edad_maxima` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rango_edad`
--

LOCK TABLES `rango_edad` WRITE;
/*!40000 ALTER TABLE `rango_edad` DISABLE KEYS */;
INSERT INTO `rango_edad` VALUES (1,'Babys',3,5),(2,'Niños',6,11),(3,'Adolescentes',12,17),(4,'Adultos',18,99);
/*!40000 ALTER TABLE `rango_edad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `view_cronograma_clases`
--

DROP TABLE IF EXISTS `view_cronograma_clases`;
/*!50001 DROP VIEW IF EXISTS `view_cronograma_clases`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_cronograma_clases` AS SELECT 
 1 AS `clase_id`,
 1 AS `nombre_estilo`,
 1 AS `nombre_profesor`,
 1 AS `apellido_profesor`,
 1 AS `nombre_nivel`,
 1 AS `rango_edad`,
 1 AS `nombre_dia`,
 1 AS `hora_inicio`,
 1 AS `hora_fin`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_estado_cupos_clases`
--

DROP TABLE IF EXISTS `view_estado_cupos_clases`;
/*!50001 DROP VIEW IF EXISTS `view_estado_cupos_clases`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_estado_cupos_clases` AS SELECT 
 1 AS `clase_id`,
 1 AS `nombre_clase`,
 1 AS `cupo_maximo`,
 1 AS `total_inscriptos`,
 1 AS `lugares_libres`,
 1 AS `esta_disponible`*/;
SET character_set_client = @saved_cs_client;

--
-- Temporary view structure for view `view_reporte_ingresos_planes`
--

DROP TABLE IF EXISTS `view_reporte_ingresos_planes`;
/*!50001 DROP VIEW IF EXISTS `view_reporte_ingresos_planes`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `view_reporte_ingresos_planes` AS SELECT 
 1 AS `nombre_plan`,
 1 AS `cantidad_ventas`,
 1 AS `total_recaudado`,
 1 AS `promedio_por_venta`*/;
SET character_set_client = @saved_cs_client;

--
-- Dumping routines for database 'estudio_danza'
--
/*!50003 DROP FUNCTION IF EXISTS `fn_calcular_edad` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_calcular_edad`(
_alumno_id INT) RETURNS int
    DETERMINISTIC
BEGIN
    DECLARE valor_edad INT;
    SELECT TIMESTAMPDIFF(YEAR, fecha_nacimiento, CURDATE()) INTO valor_edad
    FROM estudio_danza.alumno
    WHERE id = _alumno_id;
    RETURN valor_edad;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `fn_hay_cupo_disponible` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `fn_hay_cupo_disponible`(
_clase_id INT) RETURNS tinyint(1)
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_inscribir_alumno` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_inscribir_alumno`(
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
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_registrar_pago_plan` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_registrar_pago_plan`(
    IN _alumno_id INT,
    IN _plan_id INT,
    IN _metodo VARCHAR(50)
)
BEGIN
    DECLARE v_precio DECIMAL(10,2);
    
    SELECT precio_plan INTO v_precio FROM estudio_danza.planes WHERE id = p_plan_id;
    
    INSERT INTO estudio_danza.pago (id_alumno, id_plan, monto, fecha_pago, metodo_pago)
    VALUES (_alumno_id, _plan_id, _precio, NOW(), _metodo);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `view_cronograma_clases`
--

/*!50001 DROP VIEW IF EXISTS `view_cronograma_clases`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_cronograma_clases` AS select `c`.`id` AS `clase_id`,`e`.`nombre_estilo` AS `nombre_estilo`,`p`.`nombre` AS `nombre_profesor`,`p`.`apellido` AS `apellido_profesor`,`n`.`nombre_nivel` AS `nombre_nivel`,`r`.`nombre_rango` AS `rango_edad`,`d`.`nombre_dia` AS `nombre_dia`,`h`.`hora_inicio` AS `hora_inicio`,`h`.`hora_fin` AS `hora_fin` from ((((((`clase` `c` join `profesor` `p` on((`c`.`id_profesor` = `p`.`id`))) join `estilo` `e` on((`c`.`id_estilo` = `e`.`id`))) join `nivel` `n` on((`c`.`id_nivel` = `n`.`id`))) join `rango_edad` `r` on((`c`.`id_rango_edad` = `r`.`id`))) join `horario` `h` on((`c`.`id_horario` = `h`.`id`))) join `dia` `d` on((`h`.`id_dia` = `d`.`id`))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_estado_cupos_clases`
--

/*!50001 DROP VIEW IF EXISTS `view_estado_cupos_clases`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_estado_cupos_clases` AS select `c`.`id` AS `clase_id`,concat_ws(' - ',`e`.`nombre_estilo`,`r`.`nombre_rango`,`n`.`nombre_nivel`) AS `nombre_clase`,`c`.`cupo_maximo` AS `cupo_maximo`,count(`i`.`id`) AS `total_inscriptos`,(`c`.`cupo_maximo` - count(`i`.`id`)) AS `lugares_libres`,`fn_hay_cupo_disponible`(`c`.`id`) AS `esta_disponible` from ((((`clase` `c` join `estilo` `e` on((`c`.`id_estilo` = `e`.`id`))) join `rango_edad` `r` on((`c`.`id_rango_edad` = `r`.`id`))) join `nivel` `n` on((`c`.`id_nivel` = `n`.`id`))) left join `inscripcion` `i` on((`c`.`id` = `i`.`id_clase`))) group by `c`.`id`,`e`.`nombre_estilo`,`r`.`nombre_rango`,`n`.`nombre_nivel`,`c`.`cupo_maximo` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `view_reporte_ingresos_planes`
--

/*!50001 DROP VIEW IF EXISTS `view_reporte_ingresos_planes`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `view_reporte_ingresos_planes` AS select `pl`.`nombre_plan` AS `nombre_plan`,count(`p`.`id`) AS `cantidad_ventas`,sum(`p`.`monto`) AS `total_recaudado`,avg(`p`.`monto`) AS `promedio_por_venta` from (`planes` `pl` left join `pago` `p` on((`pl`.`id` = `p`.`id_plan`))) group by `pl`.`id`,`pl`.`nombre_plan` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-04-14 23:13:22
