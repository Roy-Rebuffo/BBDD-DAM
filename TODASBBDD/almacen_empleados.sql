CREATE DATABASE  IF NOT EXISTS `almacen` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `almacen`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: almacen
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `EMPID` int NOT NULL,
  `APELLIDOS` varchar(20) DEFAULT NULL,
  `NOMBRE` varchar(10) DEFAULT NULL,
  `CARGO` varchar(30) DEFAULT NULL,
  `FECHA_NACIMIENTO` datetime DEFAULT NULL,
  `FECHA_CONTRATACION` datetime DEFAULT NULL,
  `DIRECCION` varchar(60) DEFAULT NULL,
  `CIUDAD` varchar(15) DEFAULT NULL,
  `REGION` varchar(15) DEFAULT NULL,
  `COD_POSTAL` varchar(10) DEFAULT NULL,
  `PAIS` varchar(15) DEFAULT NULL,
  `TELEF_DOMICILIO` varchar(24) DEFAULT NULL,
  `EXTENSION_TELEF` varchar(4) DEFAULT NULL,
  `NOTAS` mediumtext,
  `JEFE` double DEFAULT NULL,
  PRIMARY KEY (`EMPID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,'Davolio','Nancy','Representante','1948-12-08 00:00:00','1991-03-29 00:00:00','507 - 20th Ave. E.\r\nApt. 2A','Seattle','WA','98122','EE.UU.','(206) 555-9857','5467','Su formación incluye una licenciatura en Psicología por la Universidad del Estado de Colorado, en 1970. También completó \"El arte de la Llamada fría\". Nancy es miembro de Toastmasters Internacional.',2),(2,'Fuller','Andrew','Vicepresidente comercial','1942-02-19 00:00:00','1991-07-12 00:00:00','908 W. Capital Way','Tacoma','WA','98401','EE.UU.','(206) 555-9482','3457','Andrew completó su licenciatura en Comercio en 1964 y un Master de Mercadotecnia internacional de la Universidad de Dallas en 1971. Habla con fluidez en Francés e Italiano y lee el Alemán. Ingresó en la empresa como representante de ventas, fue ascendido a jefe de ventas en Enero de 1992 y a vicepresidente de ventas en Marzo de 1993. Andrew es miembro de la Mesa Redonda de Gestión de Ventas, la Cámara de Comercio de Seattle, y la Asociación de Importadores Pacific Rim.',NULL),(3,'Leverling','Janet','Representante','1963-08-30 00:00:00','1991-02-27 00:00:00','722 Moss Bay Blvd.','Kirkland','WA','98033','EE.UU.','(206) 555-3412','3355','Janet es licenciada en Química por la Universidad de Boston (1984). También ha completado un programa de formación en Gestión de minoristas de alimentación. Janet fue contratada como vendedora asociada en 1991 y fue ascendida a representante de ventas en Febrero de 1992.',2),(4,'Peacock','Margaret','Representante','1937-09-19 00:00:00','1992-03-30 00:00:00','4110 Old Redmond Rd.','Redmond','WA','98052','EE.UU.','(206) 555-8122','5176','Margaret es licenciada en Literatura inglesa por el Colegio Universitario Concordia (1958), y tiene un master del Instituto Americano de Artes Culinarias (1966). Estuvo asignada tenporalmente a la oficina de Londres desde Julio hasta Noviembre de 1992.',2),(5,'Buchanan','Steven','Gerente de ventas','1955-03-04 00:00:00','1992-09-13 00:00:00','14 Garrett Hill','London',NULL,'SW1 8JR','Reino Unido','(71) 555-4848','3453','Steven Buchanan se graduó en la Universidad de St. Andrews, Escocia, en 1976. Tras su ingreso en la empresa, en 1992, dedicó 6 meses a un programa de orientación en la oficina de Seattle y luego volvió a su puesto permanente en Londres. Fue ascendido a representante de ventas en Marzo de 1993.  El Sr. Buchanan ha asistido a cursos sobre Márketing telefónico y Gestión de ventas internacional. Habla el Francés con fluidez.',2),(6,'Suyama','Michael','Representante','1963-07-02 00:00:00','1992-09-13 00:00:00','Coventry House\r\nMiner Rd.','London',NULL,'EC2 7JR','Reino Unido','(71) 555-7773','428','Michael se graduó en la Universidad de Sussex (MA, economía, 1983) y la Universidad de California en Los Angeles (MBA, márketing, 1986). También ha asistido a cursos de Ventas multiculturales y Administración del tiempo para profesionales de ventas. Habla el Japonés con fluidez y lee el Francés, Portugués y Español.',5),(7,'King','Robert','Representante','1960-05-29 00:00:00','1992-11-29 00:00:00','Edgeham Hollow\r\nWinchester Way','London',NULL,'RG1 9SP','Reino Unido','(71) 555-5598','465','Robert King sirvió en la organización Peace Corps y viajó mucho, antes de completar su licenciatura en Inglés en la Universidad de Michigan en 1992, el año en que ingresó en la empresa. Después de completar un curso denominado \"Ventas en Europa\", fue transferido a la oficina de Londres en Marzo de 1993.',5),(8,'Callahan','Laura','Coordinador ventas interno','1958-01-09 00:00:00','1993-01-30 00:00:00','4726 - 11th Ave. N.E.','Seattle','WA','98105','EE.UU.','(206) 555-1189','2344','Laura se graduó en Psicología por la Universidad de Washington. También completó un curso de Francés de negocios. Lee y escribe en Francés.',2),(9,'Dodsworth','Anne','Representante','1966-01-27 00:00:00','1993-10-12 00:00:00','7 Houndstooth Rd.','London',NULL,'WG2 7LT','Reino Unido','(71) 555-4444','452','Anne tiene una licenciatura en Inglés por el  St. Lawrence College.  Habla confluidez el Francés y el Alemán.',5),(10,'Hellstern','Albert','Director comercial','1960-03-13 00:00:00','1993-03-01 00:00:00','13920 S.E. 40th Street','Bellevue','WA','98006','EE.UU.','(206) 555-4869','7559','Albert Hellstern se graduó en la Universidad de Harvard, donde consiguió una licenciatura en Ciencias en 1981; también tiene un master en Estudios Internacionales por la Universidad de Stanford (1985).  Mr. Hellstern fue contratado como Jefe asesor de negocios en 1993 y fue ascendido a Jefe de negocios poco después. Aunque el señor Hellstern tiene como lengua nativa el inglés, habla Alemán, Francés y Español con la misma fluidez. El Sr. Hellstern ha viajado por toda América del Sur y es responsable de establecer allí nuestra presencia.',2),(11,'Smith','Tim','Recepcionista correo','1973-06-06 00:00:00','1993-01-15 00:00:00','30301 - 166th Ave. N.E.','Kent','WA','98042','EE.UU.','(206) 555-3857','6261','Tim Smith se graduó en la Mariner High School y ahora toma clases nocturnas en una Escuela comunitaria local. Espera obtener su título AA de programación en Junio de 1994, y luego continuará su formación en la Universidad de Washington en Seattle. Planea seguir una carrera de Programador/Analista en una empresa de software local.',3),(12,'Patterson','Caroline','Recepcionista','1972-09-11 00:00:00','1993-05-15 00:00:00','16 Maple Lane','Auburn','WA','98002','EE.UU.','(206) 555-3487','1411','Caroline Patterson se graduó en la Tahoma High School y tiene un diploma  AA de la Escuela comunitaria de Bellevue en Bellevue, Washington; actualmente participa allí en el programa de enseñanza internacional. Tiene intención de continuar su formación y espera conseguir un master en el futuro.',3),(13,'Brid','Justin','Director','1962-10-08 00:00:00','1994-01-01 00:00:00','Plaza del Sol, 2','Madrid',NULL,'28010','España','(91) 763 83 16','377','Justin Brid se graduó en el Instituto Politécnico de Granada  en 1986 cum laude. El Sr. Brid asistió a la Escuela de Graduados Americana de Administración Internacional (Thunderbird) en Glendale, Arizona. Antes de trabajar para Neptuno, ocupó puestos en varias empresas de Importación/Exportación (Especialidades culinarias) en Alemania, Suiza y Austria. El Sr. Brid habla con fluidez tanto Español como  Inglés y Francés; también habla Alemán.',2),(14,'Martin','Xavier','Asistente comercial','1960-11-30 00:00:00','1994-01-15 00:00:00','Avda. de la Libertad, 9','Madrid',NULL,'28041','España','(91) 552 43 53','380','Xavier Martin se graduó en la Universidad de Barcelona  y en la ESC Bordeaux (Ecole Supérieure de Commerce de Bordeaux).  El Sr. Martin ha viajado con frecuencia por Europa del Este, y más recientemente por la República Checa, Polonia y Hungría, con el propósito de establecer una red de contactos para futuras actividades comerciales. El Sr. Martin habla con completa fluidez Español y Catalán (tiene ambos idiomas como lenguas maternas); también habla Inglés, Francés,  y comprende Polaco.',13),(15,'Pereira','Laurent','Especialista en publicidad','1965-12-09 00:00:00','1994-02-01 00:00:00','C/ Vicente Aleixandre, 7','Madrid',NULL,'28150','España','(91) 471 01 68','376','Laurent Pereira se graduó en la Escuela Superior de Ciencias Económicas y Comerciales de Vigo en 1989. Piensa continuar sus estudios en 1995 en la Universidad de Bochum.',NULL);
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-28 16:14:00
