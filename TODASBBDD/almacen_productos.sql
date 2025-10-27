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
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `PROID` int NOT NULL AUTO_INCREMENT,
  `PROVID` int DEFAULT NULL,
  `CATID` int DEFAULT NULL,
  `NOMBRE` varchar(40) DEFAULT NULL,
  `NOMBRE_ESPA` varchar(40) DEFAULT NULL,
  `CANTIDAD_UNIDAD` varchar(20) DEFAULT NULL,
  `PRECIO_UNIDAD` double DEFAULT NULL,
  `UNIDADES_EXIS` int DEFAULT NULL,
  `UNIDADES_PED` int DEFAULT NULL,
  `NIVEL_NUEVO_PED` int DEFAULT NULL,
  `SUSPENDIDO` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`PROID`),
  KEY `FK1_idx` (`CATID`),
  KEY `FK2_idx` (`PROVID`),
  CONSTRAINT `FK1` FOREIGN KEY (`CATID`) REFERENCES `categorias` (`CATID`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `FK2` FOREIGN KEY (`PROVID`) REFERENCES `proveedores` (`PROVID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=78 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,18,3,'Chai','Té Dharamsala','10 cajas x 20 bolsas',18,39,0,10,'No'),(2,1,1,'Chang','Cerveza tibetana Barley','24 - bot. 12 oz',19,17,40,25,'No'),(3,1,2,'Aniseed Syrup','Sirope de regaliz','12 - bot. 550 ml',10,13,70,25,'No'),(4,2,2,'Chef Anton\'s Cajun Seasoning','Especias Cajun del chef Anton','48 - frascos 6 oz',22,53,0,0,'No'),(5,2,2,'Chef Anton\'s Gumbo Mix','Mezcla Gumbo del chef Anton','36 cajas',21.35,0,0,0,'Sí'),(6,3,2,'Grandma\'s Boysenberry Spread','Mermelada de grosellas de la abuela','12 - frascos 8 oz',25,120,0,25,'No'),(7,3,7,'Uncle Bob\'s Organic Dried Pears','DDD','12 - paq. 1 lb',30,15,0,10,'No'),(8,3,2,'Northwoods Cranberry Sauce','Salsa de arándanos Northwoods','12 - frascos 12 oz',40,6,0,0,'No'),(9,4,6,'Mishi Kobe Niku','Buey Mishi Kobe','18 - paq. 500 g',97,29,0,0,'Sí'),(10,4,8,'Ikura','Pez Espada','12 - frascos 200 ml',31,31,0,0,'No'),(11,5,4,'Queso Cabrales','SDDD','paq. 1 kg',21,22,30,30,'No'),(12,5,4,'Queso Manchego La Pastora','Queso Manchego La Pastora','10 - paq. 500 g',38,86,0,0,'No'),(13,6,8,'Konbu','Algas Konbu','caja 2 kg',6,24,0,5,'No'),(14,6,7,'Tofu','Cuajada de judías','40 - paq. 100 g',23.25,35,0,0,'No'),(15,6,2,'Genen Shouyu','Salsa de soja baja en sodio','24 - bot. 250 ml',15.5,39,0,5,'No'),(16,7,3,'Pavlova','Postre de merengue Pavlova','32 - cajas 500 g',17.45,29,0,10,'No'),(17,7,6,'Alice Mutton','Cordero Alice Springs','20 - latas 1 kg',39,0,0,10,'Sí'),(18,7,8,'Carnarvon Tigers','Langostinos tigre Carnarvon','paq. 16 kg',62.5,42,0,0,'No'),(19,8,3,'Teatime Chocolate Biscuits','Pastas de té de chocolate','10 cajas x 12 piezas',9.2,25,0,5,'No'),(20,8,3,'Sir Rodney\'s Marmalade','Mermelada de Sir Rodney\'s','30 cajas regalo',81,40,0,0,'No'),(21,8,3,'Sir Rodney\'s Scones','Bollos de Sir Rodney\'s','24 paq. x 4 piezas',10,3,40,5,'No'),(22,9,5,'Gustaf\'s Knäckebröd','Pan de centeno crujiente estilo Gustaf\'s','24 - paq. 500 g',21,104,0,25,'No'),(23,9,5,'Tunnbröd','Pan fino','12 - paq. 250 g',9,61,0,25,'No'),(24,10,1,'Guaraná Fantástica','Refresco Guaraná Fantástica','12 - latas 355 ml',4.5,20,0,0,'Sí'),(25,11,3,'NuNuCa Nuß-Nougat-Creme','Crema de chocolate y nueces NuNuCa','20 - vasos  450 g',14,76,0,30,'No'),(26,11,3,'Gumbär Gummibärchen','Ositos de goma Gumbär','100 - bolsas 250 g',31.23,15,0,0,'No'),(27,11,3,'Schoggi Schokolade','Chocolate Schoggi','100 - piezas 100 g',43.9,49,0,30,'No'),(28,12,7,'Rössle Sauerkraut','Col fermentada Rössle','25 - latas 825 g',45.6,26,0,0,'Sí'),(29,12,6,'Thüringer Rostbratwurst','Salchicha Thüringer','50 bolsas x 30 salch',123.79,0,0,0,'Sí'),(30,13,8,'Nord-Ost Matjeshering','Arenque blanco del noroeste','10 - vasos 200 g',25.89,10,0,15,'No'),(31,14,4,'Gorgonzola Telino','Queso gorgonzola Telino','12 - paq. 100 g',12.5,0,70,20,'No'),(32,14,4,'Mascarpone Fabioli','Queso Mascarpone Fabioli','24 - paq. 200 g',32,9,40,25,'No'),(33,15,4,'Geitost','Queso de cabra','500 g',2.5,112,0,20,'No'),(34,16,1,'Sasquatch Ale','Cerveza Sasquatch','24 - bot. 12 oz',14,111,0,15,'No'),(35,16,1,'Steeleye Stout','Cerveza negra Steeleye','24 - bot. 12 oz',18,20,0,15,'No'),(36,17,8,'Inlagd Sill','Escabeche de arenque','24 - frascos 250 g',19,112,0,20,'No'),(37,17,8,'Gravad lax','Salmón ahumado Gravad','12 - paq. 500 g',26,11,50,25,'No'),(38,18,1,'Côte de Blaye','Vino Côte de Blaye','12 - bot. 75 cl',263.5,17,0,15,'No'),(39,18,1,'Chartreuse verte','Licor verde Chartreuse','750 cc por bot.',18,69,0,5,'No'),(40,19,8,'Boston Crab Meat','Carne de cangrejo de Boston','24 - latas 4 oz',18.4,123,0,30,'No'),(41,19,8,'Jack\'s New England Clam Chowder','Crema de almejas estilo Nueva Inglaterra','12 - latas 12 oz',9.65,85,0,10,'No'),(42,20,5,'Singaporean Hokkien Fried Mee','Tallarines de Singapur','32 - 1 kg paq.',14,26,0,0,'Sí'),(43,20,1,'Ipoh Coffee','Café de Malasia','16 - latas 500 g',46,17,10,25,'No'),(44,20,2,'Gula Malacca','Azucar negra Malacca','20 - bolsas 2 kg',19.45,27,0,15,'No'),(45,21,8,'Røgede sild','Arenque ahumado','paq. 1k',9.5,5,70,15,'No'),(46,21,8,'Spegesild','Arenque salado','4 - vasos 450 g',12,95,0,0,'No'),(47,22,3,'Zaanse koeken','Galletas Zaanse','10 - cajas 4 oz',9.5,36,0,0,'No'),(48,22,3,'Chocolade','Chocolate holandés','10 paq.',12.75,15,70,25,'No'),(49,23,3,'Maxilaku','Regaliz','24 - paq. 50 g',20,10,60,15,'No'),(50,23,3,'Valkoinen suklaa','Chocolate blanco','12 - barras 100 g',16.25,65,0,30,'No'),(51,24,7,'Manjimup Dried Apples','Manzanas secas Manjimup','50 - paq. 300 g',53,20,0,10,'No'),(52,24,5,'Filo Mix','Cereales para Filo','16 - cajas 2 kg',7,38,0,25,'No'),(53,24,6,'Perth Pasties','Empanada de carne','48 porc.',32.8,0,0,0,'Sí'),(54,25,6,'Tourtière','Empanada de cerdo','16 tartas',7.45,21,0,10,'No'),(55,25,6,'Pâté chinois','Paté chino','24 cajas x 2 tartas',24,115,0,20,'No'),(56,26,5,'Gnocchi di nonna Alice','Gnocchi de la abuela Alicia','24 - paq. 250 g',38,21,10,30,'No'),(57,26,5,'Ravioli Angelo','Raviolis Angelo','24 - paq. 250 g',19.5,36,0,20,'No'),(58,27,8,'Escargots de Bourgogne','Caracoles de Borgoña','24 porc.',13.25,62,0,20,'No'),(59,28,4,'Raclette Courdavault','Raclet de queso Courdavault','paq. 5 kg',55,79,0,0,'No'),(60,28,4,'Camembert Pierrot','Camembert Pierrot','15 - paq. 300 g',34,19,0,0,'No'),(61,29,2,'Sirop d\'érable','Sirope de arce','24 - bot. 500 ml',28.5,113,0,25,'No'),(62,29,3,'Tarte au sucre','Tarta de azúcar','48 tartas',49.3,17,0,0,'No'),(63,7,2,'Vegie-spread','Sandwich de vegetales','15 - frascos 625 g',43.9,24,0,5,'No'),(64,12,5,'Wimmers gute Semmelknödel','Bollos de pan de Wimmer','20 bolsas x 4 porc.',33.25,22,80,30,'No'),(65,2,2,'Louisiana Fiery Hot Pepper Sauce','Salsa de pimiento picante de Luisiana','32 - bot. 8 oz',21.05,76,0,0,'No'),(66,2,2,'Louisiana Hot Spiced Okra','Especias picantes de Luisiana','24 - frascos 8 oz',17,4,100,20,'No'),(67,16,1,'Laughing Lumberjack Lager','Cerveza Laughing Lumberjack','24 - bot. 12 oz',14,52,0,10,'No'),(68,8,3,'Scottish Longbreads','Barras de pan de Escocia','10 cajas x 8 porc.',12.5,6,10,15,'No'),(69,15,4,'Gudbrandsdalsost','Queso Gudbrandsdals','paq. 10 kg',36,26,0,15,'No'),(70,7,1,'Outback Lager','Cerveza Outback','24 - bot. 355 ml',15,15,10,30,'No'),(71,15,4,'Fløtemysost','Crema de queso Fløtemys','10 - paq. 500 g',21.5,26,0,0,'No'),(72,14,4,'Mozzarella di Giovanni','Queso Mozzarella Giovanni','24 - paq. 200 g',34.8,14,0,0,'No'),(73,17,8,'Röd Kaviar','Caviar rojo','24 - frascos150 g',15,101,0,5,'No'),(74,4,7,'Longlife Tofu','Queso de soja Longlife','paq. 5 kg',10,4,20,5,'No'),(75,12,1,'Rhönbräu Klosterbier','Cerveza Klosterbier Rhönbräu','24 - bot. 0,5 l',7.75,125,0,25,'No'),(76,23,1,'Lakkalikööri','Licor Cloudberry','500 ml',18,57,0,20,'No'),(77,12,2,'Original Frankfurter grüne Soße','Salsa verde original Frankfurter','12 cajas',13,32,0,15,'No');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-10-28 16:13:59
