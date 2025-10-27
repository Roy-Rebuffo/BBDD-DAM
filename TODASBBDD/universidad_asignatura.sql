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
-- Table structure for table `asignatura`
--

DROP TABLE IF EXISTS `asignatura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `asignatura` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `creditos` float unsigned NOT NULL,
  `tipo` enum('básica','obligatoria','optativa') NOT NULL,
  `curso` tinyint unsigned NOT NULL,
  `cuatrimestre` tinyint unsigned NOT NULL,
  `id_profesor` int unsigned DEFAULT NULL,
  `id_grado` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_profesor` (`id_profesor`),
  KEY `id_grado` (`id_grado`),
  CONSTRAINT `asignatura_ibfk_1` FOREIGN KEY (`id_profesor`) REFERENCES `profesor` (`id_profesor`),
  CONSTRAINT `asignatura_ibfk_2` FOREIGN KEY (`id_grado`) REFERENCES `grado` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=84 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `asignatura`
--

LOCK TABLES `asignatura` WRITE;
/*!40000 ALTER TABLE `asignatura` DISABLE KEYS */;
INSERT INTO `asignatura` VALUES (1,'Álgegra lineal y matemática discreta',6,'básica',1,1,3,4),(2,'Cálculo',6,'básica',1,1,14,4),(3,'Física para informática',6,'básica',1,1,3,4),(4,'Introducción a la programación',6,'básica',1,1,14,4),(5,'Organización y gestión de empresas',6,'básica',1,1,3,4),(6,'Estadística',6,'básica',1,2,14,4),(7,'Estructura y tecnología de computadores',6,'básica',1,2,3,4),(8,'Fundamentos de electrónica',6,'básica',1,2,14,4),(9,'Lógica y algorítmica',6,'básica',1,2,3,4),(10,'Metodología de la programación',6,'básica',1,2,14,4),(11,'Arquitectura de Computadores',6,'básica',2,1,3,4),(12,'Estructura de Datos y Algoritmos I',6,'obligatoria',2,1,3,4),(13,'Ingeniería del Software',6,'obligatoria',2,1,14,4),(14,'Sistemas Inteligentes',6,'obligatoria',2,1,3,4),(15,'Sistemas Operativos',6,'obligatoria',2,1,14,4),(16,'Bases de Datos',6,'básica',2,2,14,4),(17,'Estructura de Datos y Algoritmos II',6,'obligatoria',2,2,14,4),(18,'Fundamentos de Redes de Computadores',6,'obligatoria',2,2,3,4),(19,'Planificación y Gestión de Proyectos Informáticos',6,'obligatoria',2,2,3,4),(20,'Programación de Servicios Software',6,'obligatoria',2,2,14,4),(21,'Desarrollo de interfaces de usuario',6,'obligatoria',3,1,14,4),(22,'Ingeniería de Requisitos',6,'optativa',3,1,NULL,4),(23,'Integración de las Tecnologías de la Información en las Organizaciones',6,'optativa',3,1,NULL,4),(24,'Modelado y Diseño del Software 1',6,'optativa',3,1,NULL,4),(25,'Multiprocesadores',6,'optativa',3,1,NULL,4),(26,'Seguridad y cumplimiento normativo',6,'optativa',3,1,NULL,4),(27,'Sistema de Información para las Organizaciones',6,'optativa',3,1,NULL,4),(28,'Tecnologías web',6,'optativa',3,1,NULL,4),(29,'Teoría de códigos y criptografía',6,'optativa',3,1,NULL,4),(30,'Administración de bases de datos',6,'optativa',3,2,NULL,4),(31,'Herramientas y Métodos de Ingeniería del Software',6,'optativa',3,2,NULL,4),(32,'Informática industrial y robótica',6,'optativa',3,2,NULL,4),(33,'Ingeniería de Sistemas de Información',6,'optativa',3,2,NULL,4),(34,'Modelado y Diseño del Software 2',6,'optativa',3,2,NULL,4),(35,'Negocio Electrónico',6,'optativa',3,2,NULL,4),(36,'Periféricos e interfaces',6,'optativa',3,2,NULL,4),(37,'Sistemas de tiempo real',6,'optativa',3,2,NULL,4),(38,'Tecnologías de acceso a red',6,'optativa',3,2,NULL,4),(39,'Tratamiento digital de imágenes',6,'optativa',3,2,NULL,4),(40,'Administración de redes y sistemas operativos',6,'optativa',4,1,NULL,4),(41,'Almacenes de Datos',6,'optativa',4,1,NULL,4),(42,'Fiabilidad y Gestión de Riesgos',6,'optativa',4,1,NULL,4),(43,'Líneas de Productos Software',6,'optativa',4,1,NULL,4),(44,'Procesos de Ingeniería del Software 1',6,'optativa',4,1,NULL,4),(45,'Tecnologías multimedia',6,'optativa',4,1,NULL,4),(46,'Análisis y planificación de las TI',6,'optativa',4,2,NULL,4),(47,'Desarrollo Rápido de Aplicaciones',6,'optativa',4,2,NULL,4),(48,'Gestión de la Calidad y de la Innovación Tecnológica',6,'optativa',4,2,NULL,4),(49,'Inteligencia del Negocio',6,'optativa',4,2,NULL,4),(50,'Procesos de Ingeniería del Software 2',6,'optativa',4,2,NULL,4),(51,'Seguridad Informática',6,'optativa',4,2,NULL,4),(52,'Biologia celular',6,'básica',1,1,NULL,7),(53,'Física',6,'básica',1,1,NULL,7),(54,'Matemáticas I',6,'básica',1,1,NULL,7),(55,'Química general',6,'básica',1,1,NULL,7),(56,'Química orgánica',6,'básica',1,1,NULL,7),(57,'Biología vegetal y animal',6,'básica',1,2,NULL,7),(58,'Bioquímica',6,'básica',1,2,NULL,7),(59,'Genética',6,'básica',1,2,NULL,7),(60,'Matemáticas II',6,'básica',1,2,NULL,7),(61,'Microbiología',6,'básica',1,2,NULL,7),(62,'Botánica agrícola',6,'obligatoria',2,1,NULL,7),(63,'Fisiología vegetal',6,'obligatoria',2,1,NULL,7),(64,'Genética molecular',6,'obligatoria',2,1,NULL,7),(65,'Ingeniería bioquímica',6,'obligatoria',2,1,NULL,7),(66,'Termodinámica y cinética química aplicada',6,'obligatoria',2,1,NULL,7),(67,'Biorreactores',6,'obligatoria',2,2,NULL,7),(68,'Biotecnología microbiana',6,'obligatoria',2,2,NULL,7),(69,'Ingeniería genética',6,'obligatoria',2,2,NULL,7),(70,'Inmunología',6,'obligatoria',2,2,NULL,7),(71,'Virología',6,'obligatoria',2,2,NULL,7),(72,'Bases moleculares del desarrollo vegetal',4.5,'obligatoria',3,1,NULL,7),(73,'Fisiología animal',4.5,'obligatoria',3,1,NULL,7),(74,'Metabolismo y biosíntesis de biomoléculas',6,'obligatoria',3,1,NULL,7),(75,'Operaciones de separación',6,'obligatoria',3,1,NULL,7),(76,'Patología molecular de plantas',4.5,'obligatoria',3,1,NULL,7),(77,'Técnicas instrumentales básicas',4.5,'obligatoria',3,1,NULL,7),(78,'Bioinformática',4.5,'obligatoria',3,2,NULL,7),(79,'Biotecnología de los productos hortofrutículas',4.5,'obligatoria',3,2,NULL,7),(80,'Biotecnología vegetal',6,'obligatoria',3,2,NULL,7),(81,'Genómica y proteómica',4.5,'obligatoria',3,2,NULL,7),(82,'Procesos biotecnológicos',6,'obligatoria',3,2,NULL,7),(83,'Técnicas instrumentales avanzadas',4.5,'obligatoria',3,2,NULL,7);
/*!40000 ALTER TABLE `asignatura` ENABLE KEYS */;
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
