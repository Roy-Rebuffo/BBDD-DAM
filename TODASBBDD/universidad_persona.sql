CREATE DATABASE  IF NOT EXISTS `universidad` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `universidad`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: universidad
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
-- Table structure for table `persona`
--

DROP TABLE IF EXISTS `persona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `persona` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nif` varchar(9) DEFAULT NULL,
  `nombre` varchar(25) NOT NULL,
  `apellido1` varchar(50) NOT NULL,
  `apellido2` varchar(50) DEFAULT NULL,
  `ciudad` varchar(25) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `telefono` varchar(9) DEFAULT NULL,
  `fecha_nacimiento` date NOT NULL,
  `sexo` enum('H','M') NOT NULL,
  `tipo` enum('profesor','alumno') NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nif` (`nif`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `persona`
--

LOCK TABLES `persona` WRITE;
/*!40000 ALTER TABLE `persona` DISABLE KEYS */;
INSERT INTO `persona` VALUES (1,'26902806M','Salvador','Sánchez','Pérez','Almería','C/ Real del barrio alto','950254837','1991-03-28','H','alumno'),(2,'89542419S','Juan','Saez','Vega','Almería','C/ Mercurio','618253876','1992-08-08','H','alumno'),(3,'11105554G','Zoe','Ramirez','Gea','Almería','C/ Marte','618223876','1979-08-19','M','profesor'),(4,'17105885A','Pedro','Heller','Pagac','Almería','C/ Estrella fugaz',NULL,'2000-10-05','H','alumno'),(5,'38223286T','David','Schmidt','Fisher','Almería','C/ Venus','678516294','1978-01-19','H','profesor'),(6,'04233869Y','José','Koss','Bayer','Almería','C/ Júpiter','628349590','1998-01-28','H','alumno'),(7,'97258166K','Ismael','Strosin','Turcotte','Almería','C/ Neptuno',NULL,'1999-05-24','H','alumno'),(8,'79503962T','Cristina','Lemke','Rutherford','Almería','C/ Saturno','669162534','1977-08-21','M','profesor'),(9,'82842571K','Ramón','Herzog','Tremblay','Almería','C/ Urano','626351429','1996-11-21','H','alumno'),(10,'61142000L','Esther','Spencer','Lakin','Almería','C/ Plutón',NULL,'1977-05-19','M','profesor'),(11,'46900725E','Daniel','Herman','Pacocha','Almería','C/ Andarax','679837625','1997-04-26','H','alumno'),(12,'85366986W','Carmen','Streich','Hirthe','Almería','C/ Almanzora',NULL,'1971-04-29','M','profesor'),(13,'73571384L','Alfredo','Stiedemann','Morissette','Almería','C/ Guadalquivir','950896725','1980-02-01','H','profesor'),(14,'82937751G','Manolo','Hamill','Kozey','Almería','C/ Duero','950263514','1977-01-02','H','profesor'),(15,'80502866Z','Alejandro','Kohler','Schoen','Almería','C/ Tajo','668726354','1980-03-14','H','profesor'),(16,'10485008K','Antonio','Fahey','Considine','Almería','C/ Sierra de los Filabres',NULL,'1982-03-18','H','profesor'),(17,'85869555K','Guillermo','Ruecker','Upton','Almería','C/ Sierra de Gádor',NULL,'1973-05-05','H','profesor'),(18,'04326833G','Micaela','Monahan','Murray','Almería','C/ Veleta','662765413','1976-02-25','H','profesor'),(19,'11578526G','Inma','Lakin','Yundt','Almería','C/ Picos de Europa','678652431','1998-09-01','M','alumno'),(20,'79221403L','Francesca','Schowalter','Muller','Almería','C/ Quinto pino',NULL,'1980-10-31','H','profesor'),(21,'79089577Y','Juan','Gutiérrez','López','Almería','C/ Los pinos','678652431','1998-01-01','H','alumno'),(22,'41491230N','Antonio','Domínguez','Guerrero','Almería','C/ Cabo de Gata','626652498','1999-02-11','H','alumno'),(23,'64753215G','Irene','Hernández','Martínez','Almería','C/ Zapillo','628452384','1996-03-12','M','alumno'),(24,'85135690V','Sonia','Gea','Ruiz','Almería','C/ Mercurio','678812017','1995-04-13','M','alumno');
/*!40000 ALTER TABLE `persona` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-28 16:14:11
