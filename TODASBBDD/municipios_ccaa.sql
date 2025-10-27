CREATE DATABASE  IF NOT EXISTS `municipios` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `municipios`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: municipios
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
-- Table structure for table `ccaa`
--

DROP TABLE IF EXISTS `ccaa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ccaa` (
  `idCCAA` tinyint unsigned NOT NULL,
  `Nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`idCCAA`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COMMENT='Lista de Comunicades Autónomas';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ccaa`
--

LOCK TABLES `ccaa` WRITE;
/*!40000 ALTER TABLE `ccaa` DISABLE KEYS */;
INSERT INTO `ccaa` VALUES (1,'Andalucía'),(2,'Aragón'),(3,'Asturias, Principado de'),(4,'Balears, Illes'),(5,'Canarias'),(6,'Cantabria'),(7,'Castilla y León'),(8,'Castilla - La Mancha'),(9,'Catalunya'),(10,'Comunitat Valenciana'),(11,'Extremadura'),(12,'Galicia'),(13,'Madrid, Comunidad de'),(14,'Murcia, Región de'),(15,'Navarra, Comunidad Foral de'),(16,'País Vasco'),(17,'Rioja, La'),(18,'Ceuta'),(19,'Melilla');
/*!40000 ALTER TABLE `ccaa` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-28 16:14:10
