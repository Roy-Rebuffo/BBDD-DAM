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
-- Table structure for table `alumno_se_matricula_asignatura`
--

DROP TABLE IF EXISTS `alumno_se_matricula_asignatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alumno_se_matricula_asignatura` (
  `id_alumno` int unsigned NOT NULL,
  `id_asignatura` int unsigned NOT NULL,
  `id_curso_escolar` int unsigned NOT NULL,
  PRIMARY KEY (`id_alumno`,`id_asignatura`,`id_curso_escolar`),
  KEY `id_asignatura` (`id_asignatura`),
  KEY `id_curso_escolar` (`id_curso_escolar`),
  CONSTRAINT `alumno_se_matricula_asignatura_ibfk_1` FOREIGN KEY (`id_alumno`) REFERENCES `persona` (`id`),
  CONSTRAINT `alumno_se_matricula_asignatura_ibfk_2` FOREIGN KEY (`id_asignatura`) REFERENCES `asignatura` (`id`),
  CONSTRAINT `alumno_se_matricula_asignatura_ibfk_3` FOREIGN KEY (`id_curso_escolar`) REFERENCES `curso_escolar` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alumno_se_matricula_asignatura`
--

LOCK TABLES `alumno_se_matricula_asignatura` WRITE;
/*!40000 ALTER TABLE `alumno_se_matricula_asignatura` DISABLE KEYS */;
INSERT INTO `alumno_se_matricula_asignatura` VALUES (1,1,1),(2,1,1),(4,1,1),(19,1,5),(23,1,5),(24,1,5),(1,2,1),(2,2,1),(4,2,1),(19,2,5),(23,2,5),(24,2,5),(1,3,1),(2,3,1),(4,3,1),(19,3,5),(23,3,5),(24,3,5),(19,4,5),(23,4,5),(24,4,5),(19,5,5),(23,5,5),(24,5,5),(19,6,5),(23,6,5),(24,6,5),(19,7,5),(23,7,5),(24,7,5),(19,8,5),(23,8,5),(24,8,5),(19,9,5),(23,9,5),(24,9,5),(19,10,5),(23,10,5),(24,10,5);
/*!40000 ALTER TABLE `alumno_se_matricula_asignatura` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-28 16:14:12
