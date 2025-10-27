CREATE DATABASE  IF NOT EXISTS `ccaa` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `ccaa`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: ccaa
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
-- Table structure for table `provincias`
--

DROP TABLE IF EXISTS `provincias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `provincias` (
  `idProvincia` smallint unsigned NOT NULL,
  `idCCAA` tinyint unsigned NOT NULL,
  `Provincia` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`idProvincia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Lista de Provincias';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provincias`
--

LOCK TABLES `provincias` WRITE;
/*!40000 ALTER TABLE `provincias` DISABLE KEYS */;
INSERT INTO `provincias` VALUES (1,16,'Araba/Álava'),(2,8,'Albacete'),(3,10,'Alicante/Alacant'),(4,1,'Almería'),(5,7,'Ávila'),(6,11,'Badajoz'),(7,4,'Balears, Illes'),(8,9,'Barcelona'),(9,7,'Burgos'),(10,11,'Cáceres'),(11,1,'Cádiz'),(12,10,'Castellón/Castelló'),(13,8,'Ciudad Real'),(14,1,'Córdoba'),(15,12,'Coruña, A'),(16,8,'Cuenca'),(17,9,'Girona'),(18,1,'Granada'),(19,8,'Guadalajara'),(20,16,'Gipuzkoa'),(21,1,'Huelva'),(22,2,'Huesca'),(23,1,'Jaén'),(24,7,'León'),(25,9,'Lleida'),(26,17,'Rioja, La'),(27,12,'Lugo'),(28,13,'Madrid'),(29,1,'Málaga'),(30,14,'Murcia'),(31,15,'Navarra'),(32,12,'Ourense'),(33,3,'Asturias'),(34,7,'Palencia'),(35,5,'Palmas, Las'),(36,12,'Pontevedra'),(37,7,'Salamanca'),(38,5,'Santa Cruz de Tenerife'),(39,6,'Cantabria'),(40,7,'Segovia'),(41,1,'Sevilla'),(42,7,'Soria'),(43,9,'Tarragona'),(44,2,'Teruel'),(45,8,'Toledo'),(46,10,'Valencia/València'),(47,7,'Valladolid'),(48,16,'Bizkaia'),(49,7,'Zamora'),(50,2,'Zaragoza'),(51,18,'Ceuta'),(52,19,'Melilla');
/*!40000 ALTER TABLE `provincias` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-28 16:14:03
