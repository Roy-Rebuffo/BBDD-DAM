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
-- Table structure for table `carlosjorge`
--

DROP TABLE IF EXISTS `carlosjorge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carlosjorge` (
  `DOMINIO` varchar(6) NOT NULL DEFAULT '',
  `NOMBRE` varchar(100) CHARACTER SET utf8mb3 NOT NULL,
  `PROVINCIA` varchar(30) CHARACTER SET utf8mb3 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carlosjorge`
--

LOCK TABLES `carlosjorge` WRITE;
/*!40000 ALTER TABLE `carlosjorge` DISABLE KEYS */;
INSERT INTO `carlosjorge` VALUES ('ESPAÑA','Andalucía','Almería'),('ESPAÑA','Andalucía','Cádiz'),('ESPAÑA','Andalucía','Córdoba'),('ESPAÑA','Andalucía','Granada'),('ESPAÑA','Andalucía','Huelva'),('ESPAÑA','Andalucía','Jaén'),('ESPAÑA','Andalucía','Málaga'),('ESPAÑA','Andalucía','Sevilla'),('ESPAÑA','Aragón','Huesca'),('ESPAÑA','Aragón','Teruel'),('ESPAÑA','Aragón','Zaragoza'),('ESPAÑA','Asturias, Principado de','Asturias'),('ESPAÑA','Balears, Illes','Balears, Illes'),('ESPAÑA','Canarias','Palmas, Las'),('ESPAÑA','Canarias','Santa Cruz de Tenerife'),('ESPAÑA','Cantabria','Cantabria'),('ESPAÑA','Castilla - La Mancha','Albacete'),('ESPAÑA','Castilla - La Mancha','Ciudad Real'),('ESPAÑA','Castilla - La Mancha','Cuenca'),('ESPAÑA','Castilla - La Mancha','Guadalajara'),('ESPAÑA','Castilla - La Mancha','Toledo'),('ESPAÑA','Castilla y León','Ávila'),('ESPAÑA','Castilla y León','Burgos'),('ESPAÑA','Castilla y León','León'),('ESPAÑA','Castilla y León','Palencia'),('ESPAÑA','Castilla y León','Salamanca'),('ESPAÑA','Castilla y León','Segovia'),('ESPAÑA','Castilla y León','Soria'),('ESPAÑA','Castilla y León','Valladolid'),('ESPAÑA','Castilla y León','Zamora'),('ESPAÑA','Catalunya','Barcelona'),('ESPAÑA','Catalunya','Girona'),('ESPAÑA','Catalunya','Lleida'),('ESPAÑA','Catalunya','Tarragona'),('ESPAÑA','Ceuta','Ceuta'),('ESPAÑA','Comunitat Valenciana','Alicante/Alacant'),('ESPAÑA','Comunitat Valenciana','Castellón/Castelló'),('ESPAÑA','Comunitat Valenciana','Valencia/València'),('ESPAÑA','Extremadura','Badajoz'),('ESPAÑA','Extremadura','Cáceres'),('ESPAÑA','Galicia','Coruña, A'),('ESPAÑA','Galicia','Lugo'),('ESPAÑA','Galicia','Ourense'),('ESPAÑA','Galicia','Pontevedra'),('ESPAÑA','Madrid, Comunidad de','Madrid'),('ESPAÑA','Melilla','Melilla'),('ESPAÑA','Murcia, Región de','Murcia'),('ESPAÑA','Navarra, Comunidad Foral de','Navarra'),('ESPAÑA','País Vasco','Araba/Álava'),('ESPAÑA','País Vasco','Bizkaia'),('ESPAÑA','País Vasco','Gipuzkoa'),('ESPAÑA','Rioja, La','Rioja, La');
/*!40000 ALTER TABLE `carlosjorge` ENABLE KEYS */;
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
