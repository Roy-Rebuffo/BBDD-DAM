CREATE DATABASE  IF NOT EXISTS `circo` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `circo`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: circo
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
-- Table structure for table `atraccion_dia`
--

DROP TABLE IF EXISTS `atraccion_dia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `atraccion_dia` (
  `id_atraccion` int unsigned NOT NULL,
  `fecha` date NOT NULL,
  `num_espectadores` smallint unsigned DEFAULT NULL,
  `ganancias` decimal(7,2) DEFAULT NULL,
  PRIMARY KEY (`id_atraccion`,`fecha`),
  CONSTRAINT `atraccion_dia_ibfk_1` FOREIGN KEY (`id_atraccion`) REFERENCES `atracciones` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `atraccion_dia_chk_1` CHECK ((`num_espectadores` > 50))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `atraccion_dia`
--

LOCK TABLES `atraccion_dia` WRITE;
/*!40000 ALTER TABLE `atraccion_dia` DISABLE KEYS */;
INSERT INTO `atraccion_dia` VALUES (1,'2001-04-01',400,43012.00),(2,'1999-11-01',100,11121.00),(2,'2000-01-01',240,21000.00),(2,'2000-04-01',340,31000.00),(5,'2000-04-01',120,15030.00),(5,'2000-08-01',333,31000.00);
/*!40000 ALTER TABLE `atraccion_dia` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-28 16:14:08
