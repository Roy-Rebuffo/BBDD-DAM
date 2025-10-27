CREATE DATABASE  IF NOT EXISTS `gestisimal` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gestisimal`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: gestisimal
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
-- Table structure for table `articulos`
--

DROP TABLE IF EXISTS `articulos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articulos` (
  `CODIGO` int NOT NULL AUTO_INCREMENT,
  `DESCRIPCION` varchar(200) DEFAULT NULL,
  `PRECIO_COMPRA` decimal(10,2) DEFAULT NULL,
  `PRECIO_VENTA` decimal(10,2) DEFAULT NULL,
  `STOCK` int DEFAULT NULL,
  PRIMARY KEY (`CODIGO`),
  CONSTRAINT `articulos_chk_1` CHECK ((`STOCK` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulos`
--

LOCK TABLES `articulos` WRITE;
/*!40000 ALTER TABLE `articulos` DISABLE KEYS */;
INSERT INTO `articulos` VALUES (1,'Tarjeta grafica RTX 4090',2546.60,2400.21,2),(2,'Salsa pesto receta original marca Hacendado',1.40,1.99,80),(3,'Pan integral marca Bimbo',1.20,1.50,200),(4,'Leche semidesnatada marca Puleva',0.90,1.20,500),(5,'Huevos camperos marca El Corte Inglés',1.80,2.10,150),(6,'Cereal de avena marca Kellogg\'s',2.50,3.00,100),(7,'Aceite de oliva virgen extra marca Carbonell',3.50,4.20,70),(8,'Arroz integral marca SOS',1.00,1.30,300),(9,'Galletas Digestive marca Gullón',1.10,1.50,250),(10,'Queso cheddar en lonchas marca President',2.30,2.70,90),(11,'Jamón de york marca Campofrío',1.70,2.00,120),(12,'Mermelada de fresa marca Hero',1.90,2.30,80),(13,'Yogur natural marca Danone',0.70,1.00,400),(14,'Zumo de naranja marca Don Simón',1.20,1.50,250),(15,'Papel higiénico doble capa marca Scottex',3.60,4.00,60),(16,'Detergente líquido para ropa marca Ariel',5.20,6.00,40),(17,'Champú para cabello seco marca Pantene',2.50,3.00,100),(18,'Crema hidratante marca Nivea',4.50,5.00,90),(19,'Toallitas desmaquillantes marca Neutrogena',3.00,3.50,70),(20,'Desodorante en spray marca Rexona',2.00,2.50,80),(21,'Pasta dental marca Colgate',1.50,1.80,150),(22,'Jabón líquido de manos marca Dove',1.80,2.10,100),(23,'Gel de baño marca Sanex',3.00,3.50,90),(24,'Papel de cocina marca Regina',2.50,3.00,60),(25,'Carne picada de ternera marca El Pozo',5.00,6.00,50),(26,'Pechuga de pollo fileteada marca Hacendado',4.20,5.00,80),(27,'Salchichas de Frankfurt marca Oscar Mayer',2.20,2.70,110),(28,'Helado de chocolate marca Ben & Jerry\'s',5.00,6.00,40),(29,'Gaseosa sabor limón marca Fanta',1.00,1.30,200),(30,'Café molido marca Marcilla',3.00,3.50,90),(31,'Almendras',2.80,4.50,50);
/*!40000 ALTER TABLE `articulos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-28 16:14:04
