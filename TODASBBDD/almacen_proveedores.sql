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
-- Table structure for table `proveedores`
--

DROP TABLE IF EXISTS `proveedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proveedores` (
  `PROVID` int NOT NULL AUTO_INCREMENT,
  `NOMBRE` varchar(40) DEFAULT NULL,
  `NOMBRE_CONTACTO` varchar(30) DEFAULT NULL,
  `CARGO_CONTACTO` varchar(30) DEFAULT NULL,
  `DIRECCION` varchar(60) DEFAULT NULL,
  `CIUDAD` varchar(15) DEFAULT NULL,
  `REGION` varchar(15) DEFAULT NULL,
  `COD_POSTAL` varchar(10) DEFAULT NULL,
  `PAIS` varchar(15) DEFAULT NULL,
  `TELEFONO` varchar(24) DEFAULT NULL,
  `FAX` varchar(24) DEFAULT NULL,
  PRIMARY KEY (`PROVID`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proveedores`
--

LOCK TABLES `proveedores` WRITE;
/*!40000 ALTER TABLE `proveedores` DISABLE KEYS */;
INSERT INTO `proveedores` VALUES (1,'Exotic Liquids','Charlotte Cooper','Gerente de compras','49 Gilbert St.','London',NULL,'EC1 4SD','Reino Unido','(71) 555-2222',NULL),(2,'New Orleans Cajun Delights','Shelley Burke','Administrador de pedidos','P.O. Box 78934','New Orleans','LA','70117','EE.UU.','(100) 555-4822',NULL),(3,'Grandma Kelly\'s Homestead','Regina Murphy','Representante de ventas','707 Oxford Rd.','Ann Arbor','MI','48104','EE.UU.','(313) 555-5735','(313) 555-3349'),(4,'Tokyo Traders','Yoshi Nagase','Gerente de marketing','9-8 Sekimai\r\nMusashino-shi','Tokyo',NULL,'100','Japón','(03) 3555-5011',NULL),(5,'Cooperativa de Quesos \'Las Cabras\'','Antonio del Valle Saavedra ','Administrador de exportaciones','Calle del Rosal 4','Oviedo','Asturias','33007','España','(98) 598 76 54',NULL),(6,'Mayumi\'s','Mayumi Ohno','Representante de marketing','92 Setsuko\r\nChuo-ku','Osaka',NULL,'545','Japón','(06) 431-7877',NULL),(7,'Pavlova, Ltd.','Ian Devling','Gerente de marketing','74 Rose St.\r\nMoonie Ponds','Melbourne','Victoria','3058','Australia','(03) 444-2343','(03) 444-6588'),(8,'Specialty Biscuits, Ltd.','Peter Wilson','Representante de ventas','29 King\'s Way','Manchester',NULL,'M14 GSD','Reino Unido','(26) 555-4448',NULL),(9,'PB Knäckebröd AB','Lars Peterson','Agente de ventas','Kaloadagatan 13','Göteborg',NULL,'S-345 67','Suecia','031-987 65 43','031-987 65 91'),(10,'Refrescos Americanas LTDA','Carlos Diaz','Gerente de marketing','Av. das Americanas 12.890','São Paulo',NULL,'5442','Brasil','(11) 555 4640',NULL),(11,'Heli Süßwaren GmbH & Co. KG','Petra Winkler','Gerente de ventas','Tiergartenstraße 5','Berlin',NULL,'10785','Alemania','(010) 9984510',NULL),(12,'Plusspar Lebensmittelgroßmärkte AG','Martin Bein','Ger. marketing internacional','Bogenallee 51','Frankfurt',NULL,'60439','Alemania','(069) 992755',NULL),(13,'Nord-Ost-Fisch Handelsgesellschaft mbH','Sven Petersen','Coordinador de mercados','Frahmredder 112a','Cuxhaven',NULL,'27478','Alemania','(04721) 8713','(04721) 8714'),(14,'Formaggi Fortini s.r.l.','Elio Rossi','Representante de ventas','Viale Dante, 75','Ravenna',NULL,'48100','Italia','(0544) 60323','(0544) 60603'),(15,'Norske Meierier','Beate Vileid','Gerente de marketing','Hatlevegen 5','Sandvika',NULL,'1320','Noruega','(0)2-953010',NULL),(16,'Bigfoot Breweries','Cheryl Saylor','Repr. de cuentas regional','3400 - 8th Avenue\r\nSuite 210','Bend','OR','97101','EE.UU.','(503) 555-9931',NULL),(17,'Svensk Sjöföda AB','Michael Björn','Representante de ventas','Brovallavägen 231','Stockholm',NULL,'S-123 45','Suecia','08-123 45 67',NULL),(18,'Aux joyeux ecclésiastiques','Guylène Nodier','Gerente de ventas','203, Rue des Francs-Bourgeois','Paris',NULL,'75004','Francia','(1) 03.83.00.68','(1) 03.83.00.62'),(19,'New England Seafood Cannery','Robb Merchant','Agente de cuentas al por mayor','Order Processing Dept.\r\n2100 Paul Revere Blvd.','Boston','MA','02134','EE.UU.','(617) 555-3267','(617) 555-3389'),(20,'Leka Trading','Chandra Leka','Propietario','471 Serangoon Loop, Suite #402','Singapore',NULL,'0512','Singapur','555-8787',NULL),(21,'Lyngbysild','Niels Petersen','Gerente de ventas','Lyngbysild\r\nFiskebakken 10','Lyngby',NULL,'2800','Dinamarca','43844108','43844115'),(22,'Zaanse Snoepfabriek','Dirk Luchte','Gerente de contabilidad','Verkoop\r\nRijnweg 22','Zaandam',NULL,'9999 ZZ','Holanda','(12345) 1212','(12345) 1210'),(23,'Karkki Oy','Anne Heikkonen','Gerente de producción','Valtakatu 12','Lappeenranta',NULL,'53120','Finlandia','(953) 10956',NULL),(24,'G\'day, Mate','Wendy Mackenzie','Representante de ventas','170 Prince Edward Parade\r\nHunter\'s Hill','Sydney','NSW','2042','Australia','(02) 555-5914','(02) 555-4873'),(25,'Ma Maison','Jean-Guy Lauzon','Gerente de marketing','2960 Rue St. Laurent','Montréal','Québec','H1J 1C3','Canadá','(514) 555-9022',NULL),(26,'Pasta Buttini s.r.l.','Giovanni Giudici','Administrador de pedidos','Via dei Gelsomini, 153','Salerno',NULL,'84100','Italia','(089) 6547665','(089) 6547667'),(27,'Escargots Nouveaux','Marie Delamare','Gerente de ventas','22, rue H. Voiron','Montceau',NULL,'71300','Francia','85.57.00.07',NULL),(28,'Gai pâturage','Eliane Noz','Representante de ventas','Bat. B\r\n3, rue des Alpes','Annecy',NULL,'74000','Francia','38.76.98.06','38.76.98.58'),(29,'Forêts d\'érables','Chantal Goulet','Gerente de contabilidad','148 rue Chasseur','Ste-Hyacinthe','Québec','J2S 7S8','Canadá','(514) 555-2955','(514) 555-2921');
/*!40000 ALTER TABLE `proveedores` ENABLE KEYS */;
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
