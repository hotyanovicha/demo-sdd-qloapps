-- MySQL dump 10.13  Distrib 8.0.45, for Linux (aarch64)
--
-- Host: localhost    Database: qloapps
-- ------------------------------------------------------
-- Server version	8.0.45

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `qlo_access`
--

DROP TABLE IF EXISTS `qlo_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_access` (
  `id_profile` int unsigned NOT NULL,
  `id_tab` int unsigned NOT NULL,
  `view` int NOT NULL,
  `add` int NOT NULL,
  `edit` int NOT NULL,
  `delete` int NOT NULL,
  PRIMARY KEY (`id_profile`,`id_tab`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_access`
--

LOCK TABLES `qlo_access` WRITE;
/*!40000 ALTER TABLE `qlo_access` DISABLE KEYS */;
INSERT INTO `qlo_access` VALUES (1,1,0,0,0,0),(1,2,0,0,0,0),(1,3,0,0,0,0),(1,4,0,0,0,0),(1,5,0,0,0,0),(1,6,0,0,0,0),(1,7,0,0,0,0),(1,8,0,0,0,0),(1,9,0,0,0,0),(1,10,0,0,0,0),(1,11,0,0,0,0),(1,12,0,0,0,0),(1,13,0,0,0,0),(1,14,0,0,0,0),(1,15,0,0,0,0),(1,16,0,0,0,0),(1,17,0,0,0,0),(1,18,0,0,0,0),(1,19,0,0,0,0),(1,20,0,0,0,0),(1,21,0,0,0,0),(1,22,0,0,0,0),(1,23,0,0,0,0),(1,24,0,0,0,0),(1,25,0,0,0,0),(1,26,0,0,0,0),(1,27,0,0,0,0),(1,28,0,0,0,0),(1,29,0,0,0,0),(1,30,0,0,0,0),(1,31,0,0,0,0),(1,32,0,0,0,0),(1,33,0,0,0,0),(1,34,0,0,0,0),(1,35,0,0,0,0),(1,36,0,0,0,0),(1,37,0,0,0,0),(1,38,0,0,0,0),(1,39,0,0,0,0),(1,40,0,0,0,0),(1,41,0,0,0,0),(1,42,0,0,0,0),(1,43,0,0,0,0),(1,44,0,0,0,0),(1,45,0,0,0,0),(1,46,0,0,0,0),(1,47,0,0,0,0),(1,48,0,0,0,0),(1,49,0,0,0,0),(1,50,0,0,0,0),(1,51,0,0,0,0),(1,52,0,0,0,0),(1,53,0,0,0,0),(1,54,0,0,0,0),(1,55,0,0,0,0),(1,56,0,0,0,0),(1,57,0,0,0,0),(1,58,0,0,0,0),(1,59,0,0,0,0),(1,60,0,0,0,0),(1,61,0,0,0,0),(1,62,0,0,0,0),(1,63,0,0,0,0),(1,64,0,0,0,0),(1,65,0,0,0,0),(1,66,0,0,0,0),(1,67,0,0,0,0),(1,68,0,0,0,0),(1,69,0,0,0,0),(1,70,0,0,0,0),(1,71,0,0,0,0),(1,72,0,0,0,0),(1,73,0,0,0,0),(1,74,0,0,0,0),(1,75,0,0,0,0),(1,76,0,0,0,0),(1,77,0,0,0,0),(1,78,0,0,0,0),(1,79,0,0,0,0),(1,80,0,0,0,0),(1,81,0,0,0,0);
/*!40000 ALTER TABLE `qlo_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_accessory`
--

DROP TABLE IF EXISTS `qlo_accessory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_accessory` (
  `id_product_1` int unsigned NOT NULL,
  `id_product_2` int unsigned NOT NULL,
  KEY `accessory_product` (`id_product_1`,`id_product_2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_accessory`
--

LOCK TABLES `qlo_accessory` WRITE;
/*!40000 ALTER TABLE `qlo_accessory` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_accessory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_address`
--

DROP TABLE IF EXISTS `qlo_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_address` (
  `id_address` int unsigned NOT NULL AUTO_INCREMENT,
  `id_country` int unsigned NOT NULL,
  `id_state` int unsigned DEFAULT NULL,
  `id_customer` int unsigned NOT NULL DEFAULT '0',
  `id_manufacturer` int unsigned NOT NULL DEFAULT '0',
  `id_supplier` int unsigned NOT NULL DEFAULT '0',
  `id_warehouse` int unsigned NOT NULL DEFAULT '0',
  `id_hotel` int unsigned NOT NULL DEFAULT '0',
  `alias` varchar(32) NOT NULL,
  `company` varchar(255) DEFAULT NULL,
  `lastname` varchar(32) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `address1` varchar(128) NOT NULL,
  `address2` varchar(128) DEFAULT NULL,
  `postcode` varchar(12) DEFAULT NULL,
  `city` varchar(64) NOT NULL,
  `other` text,
  `phone` varchar(32) DEFAULT NULL,
  `phone_mobile` varchar(32) DEFAULT NULL,
  `vat_number` varchar(32) DEFAULT NULL,
  `dni` varchar(16) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `active` tinyint unsigned NOT NULL DEFAULT '1',
  `deleted` tinyint unsigned NOT NULL DEFAULT '0',
  `auto_generated` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_address`),
  KEY `address_customer` (`id_customer`),
  KEY `id_country` (`id_country`),
  KEY `id_state` (`id_state`),
  KEY `id_manufacturer` (`id_manufacturer`),
  KEY `id_supplier` (`id_supplier`),
  KEY `id_warehouse` (`id_warehouse`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_address`
--

LOCK TABLES `qlo_address` WRITE;
/*!40000 ALTER TABLE `qlo_address` DISABLE KEYS */;
INSERT INTO `qlo_address` VALUES (1,14,0,1,0,0,0,0,'My Address','','Doe','John','16, Main street','2nd floor','23-888','Demo City','','0102030405','','','','2026-02-18 16:25:19','2026-02-18 16:25:19',1,0,0),(2,14,0,0,0,0,0,1,'The Hotel Prime','','The Hotel Prime','The Hotel Prime','Monticello Dr, Montgomery, 10010','','16-226','Demo City','','0987654321','','','','2026-02-18 16:25:22','2026-02-18 16:25:22',1,0,0);
/*!40000 ALTER TABLE `qlo_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_address_format`
--

DROP TABLE IF EXISTS `qlo_address_format`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_address_format` (
  `id_country` int unsigned NOT NULL,
  `format` varchar(255) NOT NULL DEFAULT '',
  PRIMARY KEY (`id_country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_address_format`
--

LOCK TABLES `qlo_address_format` WRITE;
/*!40000 ALTER TABLE `qlo_address_format` DISABLE KEYS */;
INSERT INTO `qlo_address_format` VALUES (1,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(2,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(3,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(4,'firstname lastname\ncompany\naddress1\naddress2\ncity State:name postcode\nCountry:name\nphone\nphone_mobile'),(5,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(6,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(7,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(8,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(9,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(10,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nState:name\nCountry:name\nphone\nphone_mobile'),(11,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nState:name\nCountry:name\nphone\nphone_mobile'),(12,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(13,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(14,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(15,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(16,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(17,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\ncity\npostcode\nCountry:name\nphone\nphone_mobile'),(18,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(19,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(20,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(21,'firstname lastname\ncompany\naddress1 address2\ncity, State:name postcode\nCountry:name\nphone\nphone_mobile'),(22,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(23,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(24,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(25,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(26,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(27,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(28,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(29,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(30,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(31,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(32,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(33,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(34,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(35,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(36,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(37,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(38,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(39,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(40,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(41,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(42,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(43,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(44,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nState:name\nCountry:name\nphone\nphone_mobile'),(45,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(46,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(47,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(48,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(49,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(50,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(51,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(52,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(53,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(54,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(55,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(56,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(57,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(58,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(59,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(60,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(61,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(62,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(63,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(64,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(65,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(66,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(67,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(68,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(69,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(70,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(71,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(72,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(73,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(74,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(75,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(76,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(77,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(78,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(79,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(80,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(81,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(82,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(83,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(84,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(85,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(86,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(87,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(88,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(89,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(90,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(91,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(92,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(93,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(94,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(95,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(96,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(97,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(98,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(99,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(100,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(101,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(102,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(103,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(104,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(105,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(106,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(107,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(108,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(109,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(110,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(111,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nState:name\nCountry:name\nphone\nphone_mobile'),(112,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(113,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(114,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(115,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(116,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(117,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(118,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(119,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(120,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(121,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(122,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(123,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(124,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(125,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(126,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(127,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(128,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(129,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(130,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(131,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(132,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(133,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(134,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(135,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(136,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(137,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(138,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(139,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(140,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(141,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(142,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(143,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(144,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(145,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nState:name\nCountry:name\nphone\nphone_mobile'),(146,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(147,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(148,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(149,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(150,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(151,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(152,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(153,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(154,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(155,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(156,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(157,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(158,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(159,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(160,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(161,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(162,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(163,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(164,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(165,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(166,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(167,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(168,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(169,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(170,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(171,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(172,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(173,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(174,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(175,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(176,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(177,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(178,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(179,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(180,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(181,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(182,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(183,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(184,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(185,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(186,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(187,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(188,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(189,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(190,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(191,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(192,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(193,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(194,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(195,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(196,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(197,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(198,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(199,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(200,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(201,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(202,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(203,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(204,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(205,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(206,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(207,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(208,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(209,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(210,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(211,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(212,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(213,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(214,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(215,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(216,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(217,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(218,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(219,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(220,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(221,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(222,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(223,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(224,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(225,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(226,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(227,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(228,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(229,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(230,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(231,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(232,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(233,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(234,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(235,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(236,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(237,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(238,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(239,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(240,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(241,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(242,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(243,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile'),(244,'firstname lastname\ncompany\nvat_number\naddress1\naddress2\npostcode city\nCountry:name\nphone\nphone_mobile');
/*!40000 ALTER TABLE `qlo_address_format` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_alias`
--

DROP TABLE IF EXISTS `qlo_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_alias` (
  `id_alias` int unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(255) NOT NULL,
  `search` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_alias`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_alias`
--

LOCK TABLES `qlo_alias` WRITE;
/*!40000 ALTER TABLE `qlo_alias` DISABLE KEYS */;
INSERT INTO `qlo_alias` VALUES (1,'bloose','blouse',1),(2,'blues','blouse',1);
/*!40000 ALTER TABLE `qlo_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_attachment`
--

DROP TABLE IF EXISTS `qlo_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_attachment` (
  `id_attachment` int unsigned NOT NULL AUTO_INCREMENT,
  `file` varchar(40) NOT NULL,
  `file_name` varchar(128) NOT NULL,
  `file_size` bigint unsigned NOT NULL DEFAULT '0',
  `mime` varchar(128) NOT NULL,
  PRIMARY KEY (`id_attachment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_attachment`
--

LOCK TABLES `qlo_attachment` WRITE;
/*!40000 ALTER TABLE `qlo_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_attachment_lang`
--

DROP TABLE IF EXISTS `qlo_attachment_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_attachment_lang` (
  `id_attachment` int unsigned NOT NULL AUTO_INCREMENT,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(32) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id_attachment`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_attachment_lang`
--

LOCK TABLES `qlo_attachment_lang` WRITE;
/*!40000 ALTER TABLE `qlo_attachment_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_attachment_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_attribute`
--

DROP TABLE IF EXISTS `qlo_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_attribute` (
  `id_attribute` int unsigned NOT NULL AUTO_INCREMENT,
  `id_attribute_group` int unsigned NOT NULL,
  `color` varchar(32) DEFAULT NULL,
  `position` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_attribute`),
  KEY `attribute_group` (`id_attribute_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_attribute`
--

LOCK TABLES `qlo_attribute` WRITE;
/*!40000 ALTER TABLE `qlo_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_attribute_group`
--

DROP TABLE IF EXISTS `qlo_attribute_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_attribute_group` (
  `id_attribute_group` int unsigned NOT NULL AUTO_INCREMENT,
  `is_color_group` tinyint(1) NOT NULL DEFAULT '0',
  `group_type` enum('select','radio','color') NOT NULL DEFAULT 'select',
  `position` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_attribute_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_attribute_group`
--

LOCK TABLES `qlo_attribute_group` WRITE;
/*!40000 ALTER TABLE `qlo_attribute_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_attribute_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_attribute_group_lang`
--

DROP TABLE IF EXISTS `qlo_attribute_group_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_attribute_group_lang` (
  `id_attribute_group` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `public_name` varchar(64) NOT NULL,
  PRIMARY KEY (`id_attribute_group`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_attribute_group_lang`
--

LOCK TABLES `qlo_attribute_group_lang` WRITE;
/*!40000 ALTER TABLE `qlo_attribute_group_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_attribute_group_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_attribute_group_shop`
--

DROP TABLE IF EXISTS `qlo_attribute_group_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_attribute_group_shop` (
  `id_attribute_group` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  PRIMARY KEY (`id_attribute_group`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_attribute_group_shop`
--

LOCK TABLES `qlo_attribute_group_shop` WRITE;
/*!40000 ALTER TABLE `qlo_attribute_group_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_attribute_group_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_attribute_impact`
--

DROP TABLE IF EXISTS `qlo_attribute_impact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_attribute_impact` (
  `id_attribute_impact` int unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int unsigned NOT NULL,
  `id_attribute` int unsigned NOT NULL,
  `weight` decimal(20,6) NOT NULL,
  `price` decimal(17,2) NOT NULL,
  PRIMARY KEY (`id_attribute_impact`),
  UNIQUE KEY `id_product` (`id_product`,`id_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_attribute_impact`
--

LOCK TABLES `qlo_attribute_impact` WRITE;
/*!40000 ALTER TABLE `qlo_attribute_impact` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_attribute_impact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_attribute_lang`
--

DROP TABLE IF EXISTS `qlo_attribute_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_attribute_lang` (
  `id_attribute` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id_attribute`,`id_lang`),
  KEY `id_lang` (`id_lang`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_attribute_lang`
--

LOCK TABLES `qlo_attribute_lang` WRITE;
/*!40000 ALTER TABLE `qlo_attribute_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_attribute_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_attribute_shop`
--

DROP TABLE IF EXISTS `qlo_attribute_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_attribute_shop` (
  `id_attribute` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  PRIMARY KEY (`id_attribute`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_attribute_shop`
--

LOCK TABLES `qlo_attribute_shop` WRITE;
/*!40000 ALTER TABLE `qlo_attribute_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_attribute_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_carrier`
--

DROP TABLE IF EXISTS `qlo_carrier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_carrier` (
  `id_carrier` int unsigned NOT NULL AUTO_INCREMENT,
  `id_reference` int unsigned NOT NULL,
  `id_tax_rules_group` int unsigned DEFAULT '0',
  `name` varchar(64) NOT NULL,
  `url` varchar(255) DEFAULT NULL,
  `active` tinyint unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint unsigned NOT NULL DEFAULT '0',
  `shipping_handling` tinyint unsigned NOT NULL DEFAULT '1',
  `range_behavior` tinyint unsigned NOT NULL DEFAULT '0',
  `is_module` tinyint unsigned NOT NULL DEFAULT '0',
  `is_free` tinyint unsigned NOT NULL DEFAULT '0',
  `shipping_external` tinyint unsigned NOT NULL DEFAULT '0',
  `need_range` tinyint unsigned NOT NULL DEFAULT '0',
  `external_module_name` varchar(64) DEFAULT NULL,
  `shipping_method` int NOT NULL DEFAULT '0',
  `position` int unsigned NOT NULL DEFAULT '0',
  `max_width` int DEFAULT '0',
  `max_height` int DEFAULT '0',
  `max_depth` int DEFAULT '0',
  `max_weight` decimal(20,6) DEFAULT '0.000000',
  `grade` int DEFAULT '0',
  PRIMARY KEY (`id_carrier`),
  KEY `deleted` (`deleted`,`active`),
  KEY `id_tax_rules_group` (`id_tax_rules_group`),
  KEY `reference` (`id_reference`,`deleted`,`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_carrier`
--

LOCK TABLES `qlo_carrier` WRITE;
/*!40000 ALTER TABLE `qlo_carrier` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_carrier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_carrier_group`
--

DROP TABLE IF EXISTS `qlo_carrier_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_carrier_group` (
  `id_carrier` int unsigned NOT NULL,
  `id_group` int unsigned NOT NULL,
  PRIMARY KEY (`id_carrier`,`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_carrier_group`
--

LOCK TABLES `qlo_carrier_group` WRITE;
/*!40000 ALTER TABLE `qlo_carrier_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_carrier_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_carrier_lang`
--

DROP TABLE IF EXISTS `qlo_carrier_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_carrier_lang` (
  `id_carrier` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `id_lang` int unsigned NOT NULL,
  `delay` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id_lang`,`id_shop`,`id_carrier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_carrier_lang`
--

LOCK TABLES `qlo_carrier_lang` WRITE;
/*!40000 ALTER TABLE `qlo_carrier_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_carrier_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_carrier_shop`
--

DROP TABLE IF EXISTS `qlo_carrier_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_carrier_shop` (
  `id_carrier` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  PRIMARY KEY (`id_carrier`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_carrier_shop`
--

LOCK TABLES `qlo_carrier_shop` WRITE;
/*!40000 ALTER TABLE `qlo_carrier_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_carrier_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_carrier_tax_rules_group_shop`
--

DROP TABLE IF EXISTS `qlo_carrier_tax_rules_group_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_carrier_tax_rules_group_shop` (
  `id_carrier` int unsigned NOT NULL,
  `id_tax_rules_group` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  PRIMARY KEY (`id_carrier`,`id_tax_rules_group`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_carrier_tax_rules_group_shop`
--

LOCK TABLES `qlo_carrier_tax_rules_group_shop` WRITE;
/*!40000 ALTER TABLE `qlo_carrier_tax_rules_group_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_carrier_tax_rules_group_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_carrier_zone`
--

DROP TABLE IF EXISTS `qlo_carrier_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_carrier_zone` (
  `id_carrier` int unsigned NOT NULL,
  `id_zone` int unsigned NOT NULL,
  PRIMARY KEY (`id_carrier`,`id_zone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_carrier_zone`
--

LOCK TABLES `qlo_carrier_zone` WRITE;
/*!40000 ALTER TABLE `qlo_carrier_zone` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_carrier_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_cart`
--

DROP TABLE IF EXISTS `qlo_cart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_cart` (
  `id_cart` int unsigned NOT NULL AUTO_INCREMENT,
  `id_shop_group` int unsigned NOT NULL DEFAULT '1',
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `id_carrier` int unsigned NOT NULL,
  `delivery_option` text NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `id_address_delivery` int unsigned NOT NULL,
  `id_address_invoice` int unsigned NOT NULL,
  `id_currency` int unsigned NOT NULL,
  `id_customer` int unsigned NOT NULL,
  `id_guest` int unsigned NOT NULL,
  `secure_key` varchar(32) NOT NULL DEFAULT '-1',
  `recyclable` tinyint unsigned NOT NULL DEFAULT '1',
  `gift` tinyint unsigned NOT NULL DEFAULT '0',
  `gift_message` text,
  `mobile_theme` tinyint(1) NOT NULL DEFAULT '0',
  `allow_seperated_package` tinyint unsigned NOT NULL DEFAULT '0',
  `is_advance_payment` tinyint(1) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_cart`),
  KEY `cart_customer` (`id_customer`),
  KEY `id_address_delivery` (`id_address_delivery`),
  KEY `id_address_invoice` (`id_address_invoice`),
  KEY `id_carrier` (`id_carrier`),
  KEY `id_lang` (`id_lang`),
  KEY `id_currency` (`id_currency`),
  KEY `id_guest` (`id_guest`),
  KEY `id_shop_group` (`id_shop_group`),
  KEY `id_shop_2` (`id_shop`,`date_upd`),
  KEY `id_shop` (`id_shop`,`date_add`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_cart`
--

LOCK TABLES `qlo_cart` WRITE;
/*!40000 ALTER TABLE `qlo_cart` DISABLE KEYS */;
INSERT INTO `qlo_cart` VALUES (1,1,1,0,'',1,0,0,1,2,2,'5663db309f268b6eb8500db5e32d04c7',0,0,'',0,0,0,'2026-02-18 16:36:35','2026-02-18 16:37:03'),(2,1,1,0,'',1,0,0,1,2,2,'5663db309f268b6eb8500db5e32d04c7',0,0,'',0,0,0,'2026-02-18 18:05:10','2026-02-18 18:05:42'),(3,1,1,0,'',1,0,0,1,2,2,'5663db309f268b6eb8500db5e32d04c7',0,0,'',0,0,0,'2026-02-18 18:17:02','2026-02-18 18:18:18');
/*!40000 ALTER TABLE `qlo_cart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_cart_cart_rule`
--

DROP TABLE IF EXISTS `qlo_cart_cart_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_cart_cart_rule` (
  `id_cart` int unsigned NOT NULL,
  `id_cart_rule` int unsigned NOT NULL,
  PRIMARY KEY (`id_cart`,`id_cart_rule`),
  KEY `id_cart_rule` (`id_cart_rule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_cart_cart_rule`
--

LOCK TABLES `qlo_cart_cart_rule` WRITE;
/*!40000 ALTER TABLE `qlo_cart_cart_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_cart_cart_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_cart_customer_guest`
--

DROP TABLE IF EXISTS `qlo_cart_customer_guest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_cart_customer_guest` (
  `id_customer_guest_detail` int unsigned NOT NULL,
  `id_cart` int unsigned NOT NULL,
  PRIMARY KEY (`id_customer_guest_detail`,`id_cart`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_cart_customer_guest`
--

LOCK TABLES `qlo_cart_customer_guest` WRITE;
/*!40000 ALTER TABLE `qlo_cart_customer_guest` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_cart_customer_guest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_cart_product`
--

DROP TABLE IF EXISTS `qlo_cart_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_cart_product` (
  `id_cart` int unsigned NOT NULL,
  `id_product` int unsigned NOT NULL,
  `id_address_delivery` int unsigned NOT NULL DEFAULT '0',
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `id_product_attribute` int unsigned NOT NULL DEFAULT '0',
  `quantity` int unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_cart`,`id_product`,`id_product_attribute`,`id_address_delivery`),
  KEY `id_product_attribute` (`id_product_attribute`),
  KEY `id_cart_order` (`id_cart`,`date_add`,`id_product`,`id_product_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_cart_product`
--

LOCK TABLES `qlo_cart_product` WRITE;
/*!40000 ALTER TABLE `qlo_cart_product` DISABLE KEYS */;
INSERT INTO `qlo_cart_product` VALUES (1,1,0,1,0,2,'2026-02-18 16:36:35'),(1,5,0,1,0,2,'2026-02-18 16:36:35'),(1,6,0,1,0,1,'2026-02-18 16:36:35'),(2,1,0,1,0,9,'2026-02-18 18:05:10'),(2,5,0,1,0,9,'2026-02-18 18:05:10'),(2,6,0,1,0,1,'2026-02-18 18:05:10'),(3,2,0,1,0,2,'2026-02-18 18:17:02'),(3,5,0,1,0,2,'2026-02-18 18:17:02'),(3,6,0,1,0,1,'2026-02-18 18:17:02');
/*!40000 ALTER TABLE `qlo_cart_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_cart_rule`
--

DROP TABLE IF EXISTS `qlo_cart_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_cart_rule` (
  `id_cart_rule` int unsigned NOT NULL AUTO_INCREMENT,
  `id_customer` int unsigned NOT NULL DEFAULT '0',
  `date_from` datetime NOT NULL,
  `date_to` datetime NOT NULL,
  `description` text,
  `quantity` int unsigned NOT NULL DEFAULT '0',
  `quantity_per_user` int unsigned NOT NULL DEFAULT '0',
  `priority` int unsigned NOT NULL DEFAULT '1',
  `partial_use` tinyint unsigned NOT NULL DEFAULT '0',
  `code` varchar(254) NOT NULL,
  `minimum_amount` decimal(17,2) NOT NULL DEFAULT '0.00',
  `minimum_amount_tax` tinyint(1) NOT NULL DEFAULT '0',
  `minimum_amount_currency` int unsigned NOT NULL DEFAULT '0',
  `minimum_amount_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `country_restriction` tinyint unsigned NOT NULL DEFAULT '0',
  `carrier_restriction` tinyint unsigned NOT NULL DEFAULT '0',
  `group_restriction` tinyint unsigned NOT NULL DEFAULT '0',
  `cart_rule_restriction` tinyint unsigned NOT NULL DEFAULT '0',
  `product_restriction` tinyint unsigned NOT NULL DEFAULT '0',
  `shop_restriction` tinyint unsigned NOT NULL DEFAULT '0',
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  `reduction_percent` decimal(5,2) NOT NULL DEFAULT '0.00',
  `reduction_amount` decimal(17,2) NOT NULL DEFAULT '0.00',
  `reduction_tax` tinyint unsigned NOT NULL DEFAULT '0',
  `reduction_currency` int unsigned NOT NULL DEFAULT '0',
  `reduction_product` int NOT NULL DEFAULT '0',
  `gift_product` int unsigned NOT NULL DEFAULT '0',
  `gift_product_attribute` int unsigned NOT NULL DEFAULT '0',
  `highlight` tinyint unsigned NOT NULL DEFAULT '0',
  `active` tinyint unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_cart_rule`),
  KEY `id_customer` (`id_customer`,`active`,`date_to`),
  KEY `group_restriction` (`group_restriction`,`active`,`date_to`),
  KEY `id_customer_2` (`id_customer`,`active`,`highlight`,`date_to`),
  KEY `group_restriction_2` (`group_restriction`,`active`,`highlight`,`date_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_cart_rule`
--

LOCK TABLES `qlo_cart_rule` WRITE;
/*!40000 ALTER TABLE `qlo_cart_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_cart_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_cart_rule_carrier`
--

DROP TABLE IF EXISTS `qlo_cart_rule_carrier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_cart_rule_carrier` (
  `id_cart_rule` int unsigned NOT NULL,
  `id_carrier` int unsigned NOT NULL,
  PRIMARY KEY (`id_cart_rule`,`id_carrier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_cart_rule_carrier`
--

LOCK TABLES `qlo_cart_rule_carrier` WRITE;
/*!40000 ALTER TABLE `qlo_cart_rule_carrier` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_cart_rule_carrier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_cart_rule_combination`
--

DROP TABLE IF EXISTS `qlo_cart_rule_combination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_cart_rule_combination` (
  `id_cart_rule_1` int unsigned NOT NULL,
  `id_cart_rule_2` int unsigned NOT NULL,
  PRIMARY KEY (`id_cart_rule_1`,`id_cart_rule_2`),
  KEY `id_cart_rule_1` (`id_cart_rule_1`),
  KEY `id_cart_rule_2` (`id_cart_rule_2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_cart_rule_combination`
--

LOCK TABLES `qlo_cart_rule_combination` WRITE;
/*!40000 ALTER TABLE `qlo_cart_rule_combination` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_cart_rule_combination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_cart_rule_country`
--

DROP TABLE IF EXISTS `qlo_cart_rule_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_cart_rule_country` (
  `id_cart_rule` int unsigned NOT NULL,
  `id_country` int unsigned NOT NULL,
  PRIMARY KEY (`id_cart_rule`,`id_country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_cart_rule_country`
--

LOCK TABLES `qlo_cart_rule_country` WRITE;
/*!40000 ALTER TABLE `qlo_cart_rule_country` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_cart_rule_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_cart_rule_group`
--

DROP TABLE IF EXISTS `qlo_cart_rule_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_cart_rule_group` (
  `id_cart_rule` int unsigned NOT NULL,
  `id_group` int unsigned NOT NULL,
  PRIMARY KEY (`id_cart_rule`,`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_cart_rule_group`
--

LOCK TABLES `qlo_cart_rule_group` WRITE;
/*!40000 ALTER TABLE `qlo_cart_rule_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_cart_rule_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_cart_rule_lang`
--

DROP TABLE IF EXISTS `qlo_cart_rule_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_cart_rule_lang` (
  `id_cart_rule` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(254) NOT NULL,
  PRIMARY KEY (`id_cart_rule`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_cart_rule_lang`
--

LOCK TABLES `qlo_cart_rule_lang` WRITE;
/*!40000 ALTER TABLE `qlo_cart_rule_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_cart_rule_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_cart_rule_product_rule`
--

DROP TABLE IF EXISTS `qlo_cart_rule_product_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_cart_rule_product_rule` (
  `id_product_rule` int unsigned NOT NULL AUTO_INCREMENT,
  `id_product_rule_group` int unsigned NOT NULL,
  `type` enum('products','categories','attributes','manufacturers','suppliers') NOT NULL,
  PRIMARY KEY (`id_product_rule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_cart_rule_product_rule`
--

LOCK TABLES `qlo_cart_rule_product_rule` WRITE;
/*!40000 ALTER TABLE `qlo_cart_rule_product_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_cart_rule_product_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_cart_rule_product_rule_group`
--

DROP TABLE IF EXISTS `qlo_cart_rule_product_rule_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_cart_rule_product_rule_group` (
  `id_product_rule_group` int unsigned NOT NULL AUTO_INCREMENT,
  `id_cart_rule` int unsigned NOT NULL,
  `quantity` int unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_product_rule_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_cart_rule_product_rule_group`
--

LOCK TABLES `qlo_cart_rule_product_rule_group` WRITE;
/*!40000 ALTER TABLE `qlo_cart_rule_product_rule_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_cart_rule_product_rule_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_cart_rule_product_rule_value`
--

DROP TABLE IF EXISTS `qlo_cart_rule_product_rule_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_cart_rule_product_rule_value` (
  `id_product_rule` int unsigned NOT NULL,
  `id_item` int unsigned NOT NULL,
  PRIMARY KEY (`id_product_rule`,`id_item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_cart_rule_product_rule_value`
--

LOCK TABLES `qlo_cart_rule_product_rule_value` WRITE;
/*!40000 ALTER TABLE `qlo_cart_rule_product_rule_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_cart_rule_product_rule_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_cart_rule_shop`
--

DROP TABLE IF EXISTS `qlo_cart_rule_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_cart_rule_shop` (
  `id_cart_rule` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  PRIMARY KEY (`id_cart_rule`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_cart_rule_shop`
--

LOCK TABLES `qlo_cart_rule_shop` WRITE;
/*!40000 ALTER TABLE `qlo_cart_rule_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_cart_rule_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_category`
--

DROP TABLE IF EXISTS `qlo_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_category` (
  `id_category` int unsigned NOT NULL AUTO_INCREMENT,
  `id_parent` int unsigned NOT NULL,
  `id_shop_default` int unsigned NOT NULL DEFAULT '1',
  `level_depth` tinyint unsigned NOT NULL DEFAULT '0',
  `nleft` int unsigned NOT NULL DEFAULT '0',
  `nright` int unsigned NOT NULL DEFAULT '0',
  `active` tinyint unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `position` int unsigned NOT NULL DEFAULT '0',
  `is_root_category` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_category`),
  KEY `category_parent` (`id_parent`),
  KEY `nleftrightactive` (`nleft`,`nright`,`active`),
  KEY `level_depth` (`level_depth`),
  KEY `nright` (`nright`),
  KEY `activenleft` (`active`,`nleft`),
  KEY `activenright` (`active`,`nright`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_category`
--

LOCK TABLES `qlo_category` WRITE;
/*!40000 ALTER TABLE `qlo_category` DISABLE KEYS */;
INSERT INTO `qlo_category` VALUES (1,0,1,0,1,22,1,'2026-02-18 16:25:13','2026-02-18 16:25:13',0,0),(2,1,1,1,2,21,1,'2026-02-18 16:25:13','2026-02-18 16:25:13',0,1),(3,2,1,2,3,10,1,'2026-02-18 16:25:13','2026-02-18 16:25:13',0,0),(4,2,1,2,11,20,1,'2026-02-18 16:25:13','2026-02-18 16:25:13',0,0),(5,3,1,3,4,9,1,'2026-02-18 16:25:22','2026-02-18 16:25:22',0,0),(6,5,1,4,5,8,1,'2026-02-18 16:25:22','2026-02-18 16:25:22',0,0),(7,6,1,5,6,7,1,'2026-02-18 16:25:22','2026-02-18 16:25:22',0,0),(8,4,1,3,12,13,1,'2026-02-18 16:25:25','2026-02-18 16:25:25',0,0),(9,4,1,3,14,15,1,'2026-02-18 16:25:25','2026-02-18 16:25:25',0,0),(10,4,1,3,16,17,1,'2026-02-18 16:25:25','2026-02-18 16:25:25',0,0),(11,4,1,3,18,19,1,'2026-02-18 16:25:25','2026-02-18 16:25:25',0,0);
/*!40000 ALTER TABLE `qlo_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_category_group`
--

DROP TABLE IF EXISTS `qlo_category_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_category_group` (
  `id_category` int unsigned NOT NULL,
  `id_group` int unsigned NOT NULL,
  PRIMARY KEY (`id_category`,`id_group`),
  KEY `id_category` (`id_category`),
  KEY `id_group` (`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_category_group`
--

LOCK TABLES `qlo_category_group` WRITE;
/*!40000 ALTER TABLE `qlo_category_group` DISABLE KEYS */;
INSERT INTO `qlo_category_group` VALUES (1,1),(1,2),(1,3),(2,1),(2,2),(2,3),(3,1),(3,2),(3,3),(4,1),(4,2),(4,3),(5,1),(5,2),(5,3),(6,1),(6,2),(6,3),(7,1),(7,2),(7,3),(8,1),(8,2),(8,3),(9,1),(9,2),(9,3),(10,1),(10,2),(10,3),(11,1),(11,2),(11,3);
/*!40000 ALTER TABLE `qlo_category_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_category_lang`
--

DROP TABLE IF EXISTS `qlo_category_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_category_lang` (
  `id_category` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `id_lang` int unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `description` text,
  `link_rewrite` varchar(128) NOT NULL,
  `meta_title` varchar(128) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_category`,`id_shop`,`id_lang`),
  KEY `category_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_category_lang`
--

LOCK TABLES `qlo_category_lang` WRITE;
/*!40000 ALTER TABLE `qlo_category_lang` DISABLE KEYS */;
INSERT INTO `qlo_category_lang` VALUES (1,1,1,'Root','','root','','',''),(1,1,2,'Bazowa','','bazowa','','',''),(2,1,1,'Home','','home','','',''),(2,1,2,'Główna','','glowna','','',''),(3,1,1,'Locations','','locations','','',''),(3,1,2,'Locations','','locations','','',''),(4,1,1,'Services','','services','','',''),(4,1,2,'Services','','services','','',''),(5,1,1,'Poland','This category are for hotels only','poland','','',''),(5,1,2,'Poland','This category are for hotels only','poland','','',''),(6,1,1,'Demo City','This category are for hotels only','demo-city','','',''),(6,1,2,'Demo City','This category are for hotels only','demo-city','','',''),(7,1,1,'The Hotel Prime','This category are for hotels only','the-hotel-prime','','',''),(7,1,2,'The Hotel Prime','This category are for hotels only','the-hotel-prime','','',''),(8,1,1,'Restaurant','This category are for hotels only','restaurant','','',''),(8,1,2,'Restaurant','This category are for hotels only','restaurant','','',''),(9,1,1,'Transfers','This category are for hotels only','transfers','','',''),(9,1,2,'Transfers','This category are for hotels only','transfers','','',''),(10,1,1,'Activities','This category are for hotels only','activities','','',''),(10,1,2,'Activities','This category are for hotels only','activities','','',''),(11,1,1,'Operational charges','This category are for hotels only','operational-charges','','',''),(11,1,2,'Operational charges','This category are for hotels only','operational-charges','','','');
/*!40000 ALTER TABLE `qlo_category_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_category_product`
--

DROP TABLE IF EXISTS `qlo_category_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_category_product` (
  `id_category` int unsigned NOT NULL,
  `id_product` int unsigned NOT NULL,
  `position` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_category`,`id_product`),
  KEY `id_product` (`id_product`),
  KEY `id_category` (`id_category`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_category_product`
--

LOCK TABLES `qlo_category_product` WRITE;
/*!40000 ALTER TABLE `qlo_category_product` DISABLE KEYS */;
INSERT INTO `qlo_category_product` VALUES (2,1,0),(2,2,1),(2,3,2),(2,4,3),(3,1,0),(3,2,1),(3,3,2),(3,4,3),(5,1,0),(5,2,1),(5,3,2),(5,4,3),(6,1,0),(6,2,1),(6,3,2),(6,4,3),(7,1,0),(7,2,1),(7,3,2),(7,4,3),(8,9,0),(8,10,1),(9,7,0),(9,8,1),(11,5,0),(11,6,1);
/*!40000 ALTER TABLE `qlo_category_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_category_shop`
--

DROP TABLE IF EXISTS `qlo_category_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_category_shop` (
  `id_category` int NOT NULL,
  `id_shop` int NOT NULL,
  `position` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_category`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_category_shop`
--

LOCK TABLES `qlo_category_shop` WRITE;
/*!40000 ALTER TABLE `qlo_category_shop` DISABLE KEYS */;
INSERT INTO `qlo_category_shop` VALUES (1,1,0),(2,1,0),(3,1,0),(4,1,1),(5,1,0),(6,1,0),(7,1,0),(8,1,0),(9,1,1),(10,1,2),(11,1,3);
/*!40000 ALTER TABLE `qlo_category_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_cms`
--

DROP TABLE IF EXISTS `qlo_cms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_cms` (
  `id_cms` int unsigned NOT NULL AUTO_INCREMENT,
  `id_cms_category` int unsigned NOT NULL,
  `position` int unsigned NOT NULL DEFAULT '0',
  `active` tinyint unsigned NOT NULL DEFAULT '0',
  `indexation` tinyint unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_cms`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_cms`
--

LOCK TABLES `qlo_cms` WRITE;
/*!40000 ALTER TABLE `qlo_cms` DISABLE KEYS */;
INSERT INTO `qlo_cms` VALUES (1,1,0,1,0),(2,1,1,1,0),(3,1,2,1,0),(4,1,3,1,0),(5,1,4,1,0);
/*!40000 ALTER TABLE `qlo_cms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_cms_category`
--

DROP TABLE IF EXISTS `qlo_cms_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_cms_category` (
  `id_cms_category` int unsigned NOT NULL AUTO_INCREMENT,
  `id_parent` int unsigned NOT NULL,
  `level_depth` tinyint unsigned NOT NULL DEFAULT '0',
  `active` tinyint unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `position` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_cms_category`),
  KEY `category_parent` (`id_parent`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_cms_category`
--

LOCK TABLES `qlo_cms_category` WRITE;
/*!40000 ALTER TABLE `qlo_cms_category` DISABLE KEYS */;
INSERT INTO `qlo_cms_category` VALUES (1,0,1,1,'2026-02-18 16:25:13','2026-02-18 16:25:13',0);
/*!40000 ALTER TABLE `qlo_cms_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_cms_category_lang`
--

DROP TABLE IF EXISTS `qlo_cms_category_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_cms_category_lang` (
  `id_cms_category` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `name` varchar(128) NOT NULL,
  `description` text,
  `link_rewrite` varchar(128) NOT NULL,
  `meta_title` varchar(128) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_cms_category`,`id_shop`,`id_lang`),
  KEY `category_name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_cms_category_lang`
--

LOCK TABLES `qlo_cms_category_lang` WRITE;
/*!40000 ALTER TABLE `qlo_cms_category_lang` DISABLE KEYS */;
INSERT INTO `qlo_cms_category_lang` VALUES (1,1,1,'Home','','home','','',''),(1,2,1,'Główna','','glowna','','','');
/*!40000 ALTER TABLE `qlo_cms_category_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_cms_category_shop`
--

DROP TABLE IF EXISTS `qlo_cms_category_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_cms_category_shop` (
  `id_cms_category` int unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int unsigned NOT NULL,
  PRIMARY KEY (`id_cms_category`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_cms_category_shop`
--

LOCK TABLES `qlo_cms_category_shop` WRITE;
/*!40000 ALTER TABLE `qlo_cms_category_shop` DISABLE KEYS */;
INSERT INTO `qlo_cms_category_shop` VALUES (1,1);
/*!40000 ALTER TABLE `qlo_cms_category_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_cms_lang`
--

DROP TABLE IF EXISTS `qlo_cms_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_cms_lang` (
  `id_cms` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `meta_title` varchar(128) NOT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `content` longtext,
  `link_rewrite` varchar(128) NOT NULL,
  PRIMARY KEY (`id_cms`,`id_shop`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_cms_lang`
--

LOCK TABLES `qlo_cms_lang` WRITE;
/*!40000 ALTER TABLE `qlo_cms_lang` DISABLE KEYS */;
INSERT INTO `qlo_cms_lang` VALUES (1,1,1,'Policies','Our policies of hotel bookings','conditions, policy, guidelines, protocol, rule','<h2 class=\"page-heading bottom-indent\">Policies</h2>\n      <div>\n      <p style=\"border-left:2px solid #808080;padding-left:5px;\">This page contains demo content for illustrative purposes only. Any resemblance to actual products, services, or events is purely coincidental. Thank you for your understanding.</p>\n      <hr /></div>\n      <div>\n      <p class=\"page-subheading\">Reservation Policy:</p>\n      <ul class=\"margin-btm-30\">\n      <li class=\"margin-btm-10\">Guests must provide valid credit card details to secure a reservation.</li>\n      <li class=\"margin-btm-10\">Cancellation policies vary based on room type and rate plan.</li>\n      <li class=\"margin-btm-10\">Changes to reservations may be subject to availability and additional charges.</li>\n      </ul>\n      <p class=\"page-subheading\">Check-in and Check-out Times:</p>\n      <ul class=\"margin-btm-30\">\n      <li class=\"margin-btm-10\">Check-in time: 11:00 AM</li>\n      <li class=\"margin-btm-10\">Check-out time: 10:30 AM</li>\n      <li class=\"margin-btm-10\">Early check-in and late check-out requests are subject to availability and may incur additional charges.</li>\n      </ul>\n      <p class=\"page-subheading\">Payment Policy:</p>\n      <ul class=\"margin-btm-30\">\n      <li class=\"margin-btm-10\">Payment for the entire stay is due upon check-in.</li>\n      <li class=\"margin-btm-10\">Acceptable forms of payment: credit cards, cash, etc.</li>\n      <li class=\"margin-btm-10\">A security deposit may be required upon arrival.</li>\n      </ul>\n      <p class=\"page-subheading\">Cancellation and No-show Policy:</p>\n      <ul class=\"margin-btm-30\">\n      <li class=\"margin-btm-10\">Cancellations made 7 days prior to arrival are eligible for a full refund.</li>\n      <li class=\"margin-btm-10\">No-shows will be charged the full amount of the reservation.</li>\n      </ul>\n      <p class=\"page-subheading\">Pet Policy:</p>\n      <ul class=\"margin-btm-30\">\n      <li class=\"margin-btm-10\">Pets are welcome with prior arrangement.</li>\n      <li class=\"margin-btm-10\">Additional charges may apply for pet-friendly accommodations.</li>\n      <li class=\"margin-btm-10\">Guests are responsible for any damages caused by their pets.</li>\n      </ul>\n      <p class=\"page-subheading\">Smoking Policy:</p>\n      <ul class=\"margin-btm-30\">\n      <li class=\"margin-btm-10\">Our hotel is smoke-free. Smoking is strictly prohibited indoors.</li>\n      <li class=\"margin-btm-10\">Designated smoking areas are available outside the premises.</li>\n      </ul>\n      <p class=\"page-subheading\">Privacy Policy:</p>\n      <ul class=\"margin-btm-30\">\n      <li class=\"margin-btm-10\">We are committed to protecting your privacy and personal information.</li>\n      <li class=\"margin-btm-10\">Information collected during booking and stay is used solely for operational purposes.</li>\n      </ul>\n      <p class=\"page-subheading\">Accessibility Policy:</p>\n      <ul class=\"margin-btm-30\">\n      <li class=\"margin-btm-10\">Our hotel is committed to providing accessible accommodations and facilities for guests with disabilities.</li>\n      <li class=\"margin-btm-10\">Please contact us directly for specific accessibility requests.</li>\n      </ul>\n      <p class=\"page-subheading\">Additional Policies:</p>\n      <ul class=\"margin-btm-30\">\n      <li class=\"margin-btm-10\">Use of hotel facilities such as the gym, spa, pool, etc.</li>\n      <li class=\"margin-btm-10\">Conduct and behavior expectations while on hotel premises.</li>\n      </ul>\n      </div>\n    ','policies'),(1,2,1,'Policies','Our policies of hotel bookings','conditions, policy, guidelines, protocol, rule','<h2 class=\"page-heading bottom-indent\">Policies</h2>\n      <div>\n      <p style=\"border-left:2px solid #808080;padding-left:5px;\">This page contains demo content for illustrative purposes only. Any resemblance to actual products, services, or events is purely coincidental. Thank you for your understanding.</p>\n      <hr /></div>\n      <div>\n      <p class=\"page-subheading\">Reservation Policy:</p>\n      <ul class=\"margin-btm-30\">\n      <li class=\"margin-btm-10\">Guests must provide valid credit card details to secure a reservation.</li>\n      <li class=\"margin-btm-10\">Cancellation policies vary based on room type and rate plan.</li>\n      <li class=\"margin-btm-10\">Changes to reservations may be subject to availability and additional charges.</li>\n      </ul>\n      <p class=\"page-subheading\">Check-in and Check-out Times:</p>\n      <ul class=\"margin-btm-30\">\n      <li class=\"margin-btm-10\">Check-in time: 11:00 AM</li>\n      <li class=\"margin-btm-10\">Check-out time: 10:30 AM</li>\n      <li class=\"margin-btm-10\">Early check-in and late check-out requests are subject to availability and may incur additional charges.</li>\n      </ul>\n      <p class=\"page-subheading\">Payment Policy:</p>\n      <ul class=\"margin-btm-30\">\n      <li class=\"margin-btm-10\">Payment for the entire stay is due upon check-in.</li>\n      <li class=\"margin-btm-10\">Acceptable forms of payment: credit cards, cash, etc.</li>\n      <li class=\"margin-btm-10\">A security deposit may be required upon arrival.</li>\n      </ul>\n      <p class=\"page-subheading\">Cancellation and No-show Policy:</p>\n      <ul class=\"margin-btm-30\">\n      <li class=\"margin-btm-10\">Cancellations made 7 days prior to arrival are eligible for a full refund.</li>\n      <li class=\"margin-btm-10\">No-shows will be charged the full amount of the reservation.</li>\n      </ul>\n      <p class=\"page-subheading\">Pet Policy:</p>\n      <ul class=\"margin-btm-30\">\n      <li class=\"margin-btm-10\">Pets are welcome with prior arrangement.</li>\n      <li class=\"margin-btm-10\">Additional charges may apply for pet-friendly accommodations.</li>\n      <li class=\"margin-btm-10\">Guests are responsible for any damages caused by their pets.</li>\n      </ul>\n      <p class=\"page-subheading\">Smoking Policy:</p>\n      <ul class=\"margin-btm-30\">\n      <li class=\"margin-btm-10\">Our hotel is smoke-free. Smoking is strictly prohibited indoors.</li>\n      <li class=\"margin-btm-10\">Designated smoking areas are available outside the premises.</li>\n      </ul>\n      <p class=\"page-subheading\">Privacy Policy:</p>\n      <ul class=\"margin-btm-30\">\n      <li class=\"margin-btm-10\">We are committed to protecting your privacy and personal information.</li>\n      <li class=\"margin-btm-10\">Information collected during booking and stay is used solely for operational purposes.</li>\n      </ul>\n      <p class=\"page-subheading\">Accessibility Policy:</p>\n      <ul class=\"margin-btm-30\">\n      <li class=\"margin-btm-10\">Our hotel is committed to providing accessible accommodations and facilities for guests with disabilities.</li>\n      <li class=\"margin-btm-10\">Please contact us directly for specific accessibility requests.</li>\n      </ul>\n      <p class=\"page-subheading\">Additional Policies:</p>\n      <ul class=\"margin-btm-30\">\n      <li class=\"margin-btm-10\">Use of hotel facilities such as the gym, spa, pool, etc.</li>\n      <li class=\"margin-btm-10\">Conduct and behavior expectations while on hotel premises.</li>\n      </ul>\n      </div>\n    ','policies'),(2,1,1,'Legal Notice','Legal notice','notice, legal, credits','\n      <h2 class=\"page-heading bottom-indent\"><strong>Legal Notice</strong></h2>\n      <div>\n      <p style=\"border-left:2px solid #808080;padding-left:5px;\">This page contains demo content for illustrative purposes only. Any resemblance to actual products, services, or events is purely coincidental. Thank you for your understanding.</p>\n      <hr /></div>\n      <p class=\"margin-btm-30 page-subheading\">Website Terms of Use:</p>\n      <ul class=\"margin-btm-30\">\n      <li class=\"margin-btm-20\">The content of the pages of this website is for your general information and use only. It is subject to change without notice.</li>\n      <li class=\"margin-btm-20\">Neither we nor any third parties provide any warranty or guarantee as to the accuracy, timeliness, performance, completeness, or suitability of the information and materials found or offered on this website for any particular purpose. You acknowledge that such information and materials may contain inaccuracies or errors, and we expressly exclude liability for any such inaccuracies or errors to the fullest extent permitted by law.</li>\n      <li class=\"margin-btm-20\">Your use of any information or materials on this website is entirely at your own risk, for which we shall not be liable. It shall be your own responsibility to ensure that any products, services, or information available through this website meet your specific requirements.</li>\n      </ul>\n      <p class=\"page-subheading\">Intellectual Property:</p>\n      <ul class=\"margin-btm-30\">\n      <li class=\"margin-btm-20\">This website contains material which is owned by or licensed to us. This material includes, but is not limited to, the design, layout, look, appearance, and graphics. Reproduction is prohibited other than in accordance with the copyright notice, which forms part of these terms and conditions.</li>\n      <li class=\"margin-btm-20\">All trademarks reproduced in this website, which are not the property of, or licensed to the operator, are acknowledged on the website.</li>\n      </ul>\n      <p class=\"page-subheading\">Privacy Policy:</p>\n      <ul class=\"margin-btm-30\">\n      <li class=\"margin-btm-20\">Your privacy is important to us. Please review our Privacy Policy to understand how we collect, use, and disclose information about you.</li>\n      </ul>\n      <p class=\"page-subheading\">Limitation of Liability:</p>\n      <ul class=\"margin-btm-30\">\n      <li class=\"margin-btm-20\">Neither we nor any third parties provide any warranty or guarantee as to the accuracy, timeliness, performance, completeness, or suitability of the information and materials found or offered on this website for any particular purpose. You acknowledge that such information and materials may contain inaccuracies or errors, and we expressly exclude liability for any such inaccuracies or errors to the fullest extent permitted by law.</li>\n      <li class=\"margin-btm-20\">Your use of any information or materials on this website is entirely at your own risk, for which we shall not be liable. It shall be your own responsibility to ensure that any products, services, or information available through this website meet your specific requirements.</li>\n      </ul>\n    ','legal-notice'),(2,2,1,'Legal Notice','Legal notice','notice, legal, credits','\n      <h2 class=\"page-heading bottom-indent\"><strong>Legal Notice</strong></h2>\n      <div>\n      <p style=\"border-left:2px solid #808080;padding-left:5px;\">This page contains demo content for illustrative purposes only. Any resemblance to actual products, services, or events is purely coincidental. Thank you for your understanding.</p>\n      <hr /></div>\n      <p class=\"margin-btm-30 page-subheading\">Website Terms of Use:</p>\n      <ul class=\"margin-btm-30\">\n      <li class=\"margin-btm-20\">The content of the pages of this website is for your general information and use only. It is subject to change without notice.</li>\n      <li class=\"margin-btm-20\">Neither we nor any third parties provide any warranty or guarantee as to the accuracy, timeliness, performance, completeness, or suitability of the information and materials found or offered on this website for any particular purpose. You acknowledge that such information and materials may contain inaccuracies or errors, and we expressly exclude liability for any such inaccuracies or errors to the fullest extent permitted by law.</li>\n      <li class=\"margin-btm-20\">Your use of any information or materials on this website is entirely at your own risk, for which we shall not be liable. It shall be your own responsibility to ensure that any products, services, or information available through this website meet your specific requirements.</li>\n      </ul>\n      <p class=\"page-subheading\">Intellectual Property:</p>\n      <ul class=\"margin-btm-30\">\n      <li class=\"margin-btm-20\">This website contains material which is owned by or licensed to us. This material includes, but is not limited to, the design, layout, look, appearance, and graphics. Reproduction is prohibited other than in accordance with the copyright notice, which forms part of these terms and conditions.</li>\n      <li class=\"margin-btm-20\">All trademarks reproduced in this website, which are not the property of, or licensed to the operator, are acknowledged on the website.</li>\n      </ul>\n      <p class=\"page-subheading\">Privacy Policy:</p>\n      <ul class=\"margin-btm-30\">\n      <li class=\"margin-btm-20\">Your privacy is important to us. Please review our Privacy Policy to understand how we collect, use, and disclose information about you.</li>\n      </ul>\n      <p class=\"page-subheading\">Limitation of Liability:</p>\n      <ul class=\"margin-btm-30\">\n      <li class=\"margin-btm-20\">Neither we nor any third parties provide any warranty or guarantee as to the accuracy, timeliness, performance, completeness, or suitability of the information and materials found or offered on this website for any particular purpose. You acknowledge that such information and materials may contain inaccuracies or errors, and we expressly exclude liability for any such inaccuracies or errors to the fullest extent permitted by law.</li>\n      <li class=\"margin-btm-20\">Your use of any information or materials on this website is entirely at your own risk, for which we shall not be liable. It shall be your own responsibility to ensure that any products, services, or information available through this website meet your specific requirements.</li>\n      </ul>\n    ','legal-notice'),(3,1,1,'Terms and Conditions','Our Terms and Conditions','conditions, terms, use, sell','\n      <h2 class=\"page-heading bottom-indent\">Terms and Conditions</h2>\n      <div>\n      <p style=\"border-left:2px solid #808080;padding-left:5px;\">This page contains demo content for illustrative purposes only. Any resemblance to actual products, services, or events is purely coincidental. Thank you for your understanding.</p>\n      <hr /></div>\n      <div>\n      <h3 class=\"page-subheading\"><strong>Cancellation Policy:</strong></h3>\n      <div>\n      <ul>\n      <li><span>Free Cancellation: Up to 48 hours before arrival for standard rates.</span></li>\n      <li><span>Bookings made with a non-refundable rate cannot be canceled or modified.</span></li>\n      <li><span>Cancellations within 24 hours of arrival will incur a fee of one night\'s stay.</span></li>\n      </ul>\n      </div>\n      <br />\n      <h3 class=\"page-subheading\"><strong>Changes to Bookings:</strong></h3>\n      <div>\n      <ul>\n      <li><span>A fee of $25 may apply to change your reservation dates after booking.</span></li>\n      <li><span>Changes to room type or number of guests are subject to availability at the hotel.</span></li>\n      </ul>\n      </div>\n      <br />\n      <h3 class=\"page-subheading\"><strong>Guest Responsibility:</strong></h3>\n      <div>\n      <ul>\n      <li><span>All guests must present a valid government-issued photo ID at check-in.</span></li>\n      <li><span>The maximum occupancy for the room type is 2 adults.</span></li>\n      <li><span>Smoking and alcohol are strictly prohibited in all guest rooms and public areas.</span></li>\n      </ul>\n      </div>\n      </div>\n    ','terms-and-conditions-of-use'),(3,2,1,'Terms and Conditions','Our Terms and Conditions','conditions, terms, use, sell','\n      <h2 class=\"page-heading bottom-indent\">Terms and Conditions</h2>\n      <div>\n      <p style=\"border-left:2px solid #808080;padding-left:5px;\">This page contains demo content for illustrative purposes only. Any resemblance to actual products, services, or events is purely coincidental. Thank you for your understanding.</p>\n      <hr /></div>\n      <div>\n      <h3 class=\"page-subheading\"><strong>Cancellation Policy:</strong></h3>\n      <div>\n      <ul>\n      <li><span>Free Cancellation: Up to 48 hours before arrival for standard rates.</span></li>\n      <li><span>Bookings made with a non-refundable rate cannot be canceled or modified.</span></li>\n      <li><span>Cancellations within 24 hours of arrival will incur a fee of one night\'s stay.</span></li>\n      </ul>\n      </div>\n      <br />\n      <h3 class=\"page-subheading\"><strong>Changes to Bookings:</strong></h3>\n      <div>\n      <ul>\n      <li><span>A fee of $25 may apply to change your reservation dates after booking.</span></li>\n      <li><span>Changes to room type or number of guests are subject to availability at the hotel.</span></li>\n      </ul>\n      </div>\n      <br />\n      <h3 class=\"page-subheading\"><strong>Guest Responsibility:</strong></h3>\n      <div>\n      <ul>\n      <li><span>All guests must present a valid government-issued photo ID at check-in.</span></li>\n      <li><span>The maximum occupancy for the room type is 2 adults.</span></li>\n      <li><span>Smoking and alcohol are strictly prohibited in all guest rooms and public areas.</span></li>\n      </ul>\n      </div>\n      </div>\n    ','terms-and-conditions-of-use'),(4,1,1,'About Us','Learn more about us','about us, informations','<h2 class=\"page-heading bottom-indent\">About Us</h2><div>\n      <p style=\"border-left:2px solid #808080;padding-left:5px;\">This page contains demo content for illustrative purposes only. Any resemblance to actual products, services, or events is purely coincidental. Thank you for your understanding.</p>\n      <hr /></div>\n      <div class=\"row\">\n      <div class=\"col-xs-12 col-sm-8\">\n      <div class=\"cms-block\">\n      <div class=\"margin-btm-30\">\n      <p class=\"dark\">Welcome to our sanctuary of luxury and tranquility, where every stay is crafted to provide an unparalleled experience. Whether you\'re seeking a relaxing getaway, a productive business trip, or a memorable event, we are dedicated to making your visit exceptional.</p>\n      </div>\n      <div class=\"margin-btm-30\">\n      <p class=\"page-subheading\">Our Story</p>\n      <p>Inspired by serene surroundings and rich local culture, our hotel combines modern comfort with timeless elegance. Our thoughtfully designed rooms, impeccable service, and attention to detail reflect our commitment to providing a haven for travelers.</p>\n      </div>\n      <div class=\"margin-btm-30\">\n      <p class=\"page-subheading\">Our Mission</p>\n      <p>Our mission is to create a home away from home, offering personalized service and luxurious amenities tailored to your needs. Your comfort and satisfaction are our top priorities, and we strive to exceed your expectations at every turn.</p>\n      </div>\n      <div class=\"margin-btm-30\">\n      <p class=\"page-subheading\">Our Amenities</p>\n      <p>Indulge in the finest amenities during your stay. Relax in elegantly appointed rooms and suites with breathtaking views. Savor gourmet dining at our on-site restaurant, unwind with a cocktail at our stylish bar, and rejuvenate at our state-of-the-art spa and fitness center. Enjoy our serene outdoor pool, lush gardens, and modern business facilities to cater to all your needs.</p>\n      </div>\n      <div class=\"margin-btm-30\">\n      <p class=\"page-subheading\">Our Team</p>\n      <p>Our dedicated team of hospitality professionals is here to serve you with a passion for excellence. From personalized concierge services to meticulous housekeeping, every member of our team is committed to making your stay extraordinary.</p>\n      </div>\n      <div class=\"margin-btm-30\">\n      <p class=\"page-subheading\">Join Us</p>\n      <p>Discover the charm and elegance of our hotel for yourself. Whether visiting for leisure or business, we invite you to experience our warm hospitality and luxurious accommodations. Book your stay with us today and let us make your visit unforgettable.</p>\n      </div>\n      </div>\n      </div>\n      <div class=\"col-xs-12 col-sm-4\">\n      <div class=\"cms-box\">\n      <p class=\"page-subheading\">Testimonials</p>\n      <div class=\"testimonials\">\n      <div class=\"inner\"><span class=\"before\">“</span>Hotel Prime surpassed my expectations in every way. The Executive Room was not only luxurious but also provided a peaceful retreat with its stunning lake views. The attention to detail and personalized service made my stay truly memorable. I highly recommend Hotel Prime for both business and leisure travelers looking for a blend of comfort and sophistication<span class=\"after\">”</span></div>\n      </div>\n      <p><strong class=\"dark\">Calrk Kent</strong></p>\n      <div class=\"testimonials\">\n      <div class=\"inner\"><span class=\"before\">“</span>As a frequent traveler, I can confidently say Hotel Prime stands out for its tranquil environment and exceptional hospitality. The View Room provided a perfect retreat with its stunning cityscape views and comfortable accommodations.<span class=\"after\">”</span></div>\n      </div>\n      <p><strong class=\"dark\">john Doe</strong></p>\n      </div>\n      </div>\n      </div>\n    ','about-us'),(4,2,1,'About Us','Learn more about us','about us, informations','<h2 class=\"page-heading bottom-indent\">About Us</h2><div>\n      <p style=\"border-left:2px solid #808080;padding-left:5px;\">This page contains demo content for illustrative purposes only. Any resemblance to actual products, services, or events is purely coincidental. Thank you for your understanding.</p>\n      <hr /></div>\n      <div class=\"row\">\n      <div class=\"col-xs-12 col-sm-8\">\n      <div class=\"cms-block\">\n      <div class=\"margin-btm-30\">\n      <p class=\"dark\">Welcome to our sanctuary of luxury and tranquility, where every stay is crafted to provide an unparalleled experience. Whether you\'re seeking a relaxing getaway, a productive business trip, or a memorable event, we are dedicated to making your visit exceptional.</p>\n      </div>\n      <div class=\"margin-btm-30\">\n      <p class=\"page-subheading\">Our Story</p>\n      <p>Inspired by serene surroundings and rich local culture, our hotel combines modern comfort with timeless elegance. Our thoughtfully designed rooms, impeccable service, and attention to detail reflect our commitment to providing a haven for travelers.</p>\n      </div>\n      <div class=\"margin-btm-30\">\n      <p class=\"page-subheading\">Our Mission</p>\n      <p>Our mission is to create a home away from home, offering personalized service and luxurious amenities tailored to your needs. Your comfort and satisfaction are our top priorities, and we strive to exceed your expectations at every turn.</p>\n      </div>\n      <div class=\"margin-btm-30\">\n      <p class=\"page-subheading\">Our Amenities</p>\n      <p>Indulge in the finest amenities during your stay. Relax in elegantly appointed rooms and suites with breathtaking views. Savor gourmet dining at our on-site restaurant, unwind with a cocktail at our stylish bar, and rejuvenate at our state-of-the-art spa and fitness center. Enjoy our serene outdoor pool, lush gardens, and modern business facilities to cater to all your needs.</p>\n      </div>\n      <div class=\"margin-btm-30\">\n      <p class=\"page-subheading\">Our Team</p>\n      <p>Our dedicated team of hospitality professionals is here to serve you with a passion for excellence. From personalized concierge services to meticulous housekeeping, every member of our team is committed to making your stay extraordinary.</p>\n      </div>\n      <div class=\"margin-btm-30\">\n      <p class=\"page-subheading\">Join Us</p>\n      <p>Discover the charm and elegance of our hotel for yourself. Whether visiting for leisure or business, we invite you to experience our warm hospitality and luxurious accommodations. Book your stay with us today and let us make your visit unforgettable.</p>\n      </div>\n      </div>\n      </div>\n      <div class=\"col-xs-12 col-sm-4\">\n      <div class=\"cms-box\">\n      <p class=\"page-subheading\">Testimonials</p>\n      <div class=\"testimonials\">\n      <div class=\"inner\"><span class=\"before\">“</span>Hotel Prime surpassed my expectations in every way. The Executive Room was not only luxurious but also provided a peaceful retreat with its stunning lake views. The attention to detail and personalized service made my stay truly memorable. I highly recommend Hotel Prime for both business and leisure travelers looking for a blend of comfort and sophistication<span class=\"after\">”</span></div>\n      </div>\n      <p><strong class=\"dark\">Calrk Kent</strong></p>\n      <div class=\"testimonials\">\n      <div class=\"inner\"><span class=\"before\">“</span>As a frequent traveler, I can confidently say Hotel Prime stands out for its tranquil environment and exceptional hospitality. The View Room provided a perfect retreat with its stunning cityscape views and comfortable accommodations.<span class=\"after\">”</span></div>\n      </div>\n      <p><strong class=\"dark\">john Doe</strong></p>\n      </div>\n      </div>\n      </div>\n    ','about-us'),(5,1,1,'Secure payment','Our secure payment method','secure payment, ssl, visa, mastercard, paypal','<h2 class=\"page-heading bottom-indent\">Secure payment</h2>\n      <div>\n      <p style=\"border-left:2px solid #808080;padding-left:5px;\">This page contains demo content for illustrative purposes only. Any resemblance to actual products, services, or events is purely coincidental. Thank you for your understanding.</p>\n      <hr /></div>\n      <div>We prioritize your security. All transactions made on our website are encrypted using Secure Socket Layer (SSL) technology to ensure your personal information and payment details are protected. We accept major credit cards and provide a secure environment for a seamless booking experience. For any inquiries regarding payment security, feel free to contact our customer support team.</div>\n    ','secure-payment'),(5,2,1,'Secure payment','Our secure payment method','secure payment, ssl, visa, mastercard, paypal','<h2 class=\"page-heading bottom-indent\">Secure payment</h2>\n      <div>\n      <p style=\"border-left:2px solid #808080;padding-left:5px;\">This page contains demo content for illustrative purposes only. Any resemblance to actual products, services, or events is purely coincidental. Thank you for your understanding.</p>\n      <hr /></div>\n      <div>We prioritize your security. All transactions made on our website are encrypted using Secure Socket Layer (SSL) technology to ensure your personal information and payment details are protected. We accept major credit cards and provide a secure environment for a seamless booking experience. For any inquiries regarding payment security, feel free to contact our customer support team.</div>\n    ','secure-payment');
/*!40000 ALTER TABLE `qlo_cms_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_cms_role`
--

DROP TABLE IF EXISTS `qlo_cms_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_cms_role` (
  `id_cms_role` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `id_cms` int unsigned NOT NULL,
  PRIMARY KEY (`id_cms_role`,`id_cms`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_cms_role`
--

LOCK TABLES `qlo_cms_role` WRITE;
/*!40000 ALTER TABLE `qlo_cms_role` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_cms_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_cms_role_lang`
--

DROP TABLE IF EXISTS `qlo_cms_role_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_cms_role_lang` (
  `id_cms_role` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_cms_role`,`id_lang`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_cms_role_lang`
--

LOCK TABLES `qlo_cms_role_lang` WRITE;
/*!40000 ALTER TABLE `qlo_cms_role_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_cms_role_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_cms_shop`
--

DROP TABLE IF EXISTS `qlo_cms_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_cms_shop` (
  `id_cms` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  PRIMARY KEY (`id_cms`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_cms_shop`
--

LOCK TABLES `qlo_cms_shop` WRITE;
/*!40000 ALTER TABLE `qlo_cms_shop` DISABLE KEYS */;
INSERT INTO `qlo_cms_shop` VALUES (1,1),(2,1),(3,1),(4,1),(5,1);
/*!40000 ALTER TABLE `qlo_cms_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_compare`
--

DROP TABLE IF EXISTS `qlo_compare`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_compare` (
  `id_compare` int unsigned NOT NULL AUTO_INCREMENT,
  `id_customer` int unsigned NOT NULL,
  PRIMARY KEY (`id_compare`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_compare`
--

LOCK TABLES `qlo_compare` WRITE;
/*!40000 ALTER TABLE `qlo_compare` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_compare` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_compare_product`
--

DROP TABLE IF EXISTS `qlo_compare_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_compare_product` (
  `id_compare` int unsigned NOT NULL,
  `id_product` int unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_compare`,`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_compare_product`
--

LOCK TABLES `qlo_compare_product` WRITE;
/*!40000 ALTER TABLE `qlo_compare_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_compare_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_configuration`
--

DROP TABLE IF EXISTS `qlo_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_configuration` (
  `id_configuration` int unsigned NOT NULL AUTO_INCREMENT,
  `id_shop_group` int unsigned DEFAULT NULL,
  `id_shop` int unsigned DEFAULT NULL,
  `name` varchar(254) NOT NULL,
  `value` text,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_configuration`),
  KEY `name` (`name`),
  KEY `id_shop` (`id_shop`),
  KEY `id_shop_group` (`id_shop_group`)
) ENGINE=InnoDB AUTO_INCREMENT=405 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_configuration`
--

LOCK TABLES `qlo_configuration` WRITE;
/*!40000 ALTER TABLE `qlo_configuration` DISABLE KEYS */;
INSERT INTO `qlo_configuration` VALUES (1,NULL,NULL,'PS_LANG_DEFAULT','1','2026-02-18 16:25:11','2026-02-18 16:25:11'),(2,NULL,NULL,'PS_VERSION_DB','1.6.1.23','2026-02-18 16:25:11','2026-02-18 16:25:11'),(3,NULL,NULL,'PS_INSTALL_VERSION','1.6.1.23','2026-02-18 16:25:11','2026-02-18 16:25:11'),(4,NULL,NULL,'QLO_VERSION_DB','1.7.0.0','2026-02-18 16:25:11','2026-02-18 16:25:11'),(5,NULL,NULL,'QLO_INSTALL_VERSION','1.7.0.0','2026-02-18 16:25:11','2026-02-18 16:25:11'),(6,NULL,NULL,'PS_GROUP_FEATURE_ACTIVE','1','2026-02-18 16:25:13','2026-02-18 16:25:13'),(7,NULL,NULL,'PS_SEARCH_INDEXATION','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,NULL,NULL,'PS_ONE_PHONE_AT_LEAST','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,NULL,NULL,'PS_CART_FOLLOWING','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,NULL,NULL,'PS_CARRIER_DEFAULT','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,NULL,NULL,'PS_CURRENCY_DEFAULT','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,NULL,NULL,'PS_COUNTRY_DEFAULT','21','0000-00-00 00:00:00','2026-02-18 16:32:29'),(13,NULL,NULL,'PS_REWRITING_SETTINGS','1','0000-00-00 00:00:00','2026-02-18 16:25:16'),(14,NULL,NULL,'PS_ORDER_OUT_OF_STOCK','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,NULL,NULL,'PS_LAST_QTIES','3','0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,NULL,NULL,'PS_CART_REDIRECT','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,NULL,NULL,'PS_CONDITIONS','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,NULL,NULL,'PS_RECYCLABLE_PACK','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,NULL,NULL,'PS_GIFT_WRAPPING','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,NULL,NULL,'PS_GIFT_WRAPPING_PRICE','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,NULL,NULL,'PS_STOCK_MANAGEMENT','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(22,NULL,NULL,'PS_NAVIGATION_PIPE','>','0000-00-00 00:00:00','0000-00-00 00:00:00'),(23,NULL,NULL,'PS_PRODUCTS_PER_PAGE','12','0000-00-00 00:00:00','0000-00-00 00:00:00'),(24,NULL,NULL,'PS_HOTEL_IMAGES_PER_PAGE','9','0000-00-00 00:00:00','0000-00-00 00:00:00'),(25,NULL,NULL,'PS_PURCHASE_MINIMUM','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(26,NULL,NULL,'PS_PRODUCTS_ORDER_WAY','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(27,NULL,NULL,'PS_PRODUCTS_ORDER_BY','4','0000-00-00 00:00:00','0000-00-00 00:00:00'),(28,NULL,NULL,'PS_DISPLAY_QTIES','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(29,NULL,NULL,'PS_SHIPPING_HANDLING','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(30,NULL,NULL,'PS_SHIPPING_FREE_PRICE','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(31,NULL,NULL,'PS_SHIPPING_FREE_WEIGHT','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(32,NULL,NULL,'PS_SHIPPING_METHOD','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(33,NULL,NULL,'PS_TAX','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(34,NULL,NULL,'PS_SHOP_ENABLE','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(35,NULL,NULL,'PS_ALLOW_EMP','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(36,NULL,NULL,'PS_ALLOW_EMP_MAX_ATTEMPTS','3','0000-00-00 00:00:00','0000-00-00 00:00:00'),(37,NULL,NULL,'PS_NB_DAYS_NEW_PRODUCT','20','0000-00-00 00:00:00','0000-00-00 00:00:00'),(38,NULL,NULL,'PS_KPI_BEST_SELLING_ROOM_TYPE_NB_DAYS','30','0000-00-00 00:00:00','0000-00-00 00:00:00'),(39,NULL,NULL,'PS_SSL_ENABLED','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(40,NULL,NULL,'PS_WEIGHT_UNIT','kg','0000-00-00 00:00:00','0000-00-00 00:00:00'),(41,NULL,NULL,'PS_BLOCK_CART_AJAX','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(42,NULL,NULL,'PS_ORDER_RETURN','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(43,NULL,NULL,'PS_ORDER_RETURN_NB_DAYS','14','0000-00-00 00:00:00','0000-00-00 00:00:00'),(44,NULL,NULL,'PS_MAIL_TYPE','3','0000-00-00 00:00:00','0000-00-00 00:00:00'),(45,NULL,NULL,'PS_PRODUCT_PICTURE_MAX_SIZE','8388608','0000-00-00 00:00:00','0000-00-00 00:00:00'),(46,NULL,NULL,'PS_PRODUCT_PICTURE_WIDTH','64','0000-00-00 00:00:00','0000-00-00 00:00:00'),(47,NULL,NULL,'PS_PRODUCT_PICTURE_HEIGHT','64','0000-00-00 00:00:00','0000-00-00 00:00:00'),(48,NULL,NULL,'PS_INVOICE_PREFIX','#IN','0000-00-00 00:00:00','0000-00-00 00:00:00'),(49,NULL,NULL,'PS_INVCE_INVOICE_ADDR_RULES','{\"avoid\":[]}','0000-00-00 00:00:00','0000-00-00 00:00:00'),(50,NULL,NULL,'PS_INVCE_DELIVERY_ADDR_RULES','{\"avoid\":[]}','0000-00-00 00:00:00','0000-00-00 00:00:00'),(51,NULL,NULL,'PS_DELIVERY_PREFIX','#DE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(52,NULL,NULL,'PS_DELIVERY_NUMBER','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(53,NULL,NULL,'PS_RETURN_PREFIX','#RE','0000-00-00 00:00:00','0000-00-00 00:00:00'),(54,NULL,NULL,'PS_INVOICE','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(55,NULL,NULL,'PS_PASSWD_TIME_BACK','360','0000-00-00 00:00:00','0000-00-00 00:00:00'),(56,NULL,NULL,'PS_PASSWD_TIME_FRONT','360','0000-00-00 00:00:00','0000-00-00 00:00:00'),(57,NULL,NULL,'PS_DISP_UNAVAILABLE_ATTR','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(58,NULL,NULL,'PS_SEARCH_MINWORDLEN','3','0000-00-00 00:00:00','0000-00-00 00:00:00'),(59,NULL,NULL,'PS_SEARCH_BLACKLIST','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(60,NULL,NULL,'PS_SEARCH_WEIGHT_PNAME','6','0000-00-00 00:00:00','0000-00-00 00:00:00'),(61,NULL,NULL,'PS_SEARCH_WEIGHT_REF','10','0000-00-00 00:00:00','0000-00-00 00:00:00'),(62,NULL,NULL,'PS_SEARCH_WEIGHT_SHORTDESC','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(63,NULL,NULL,'PS_SEARCH_WEIGHT_DESC','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(64,NULL,NULL,'PS_SEARCH_WEIGHT_CNAME','3','0000-00-00 00:00:00','0000-00-00 00:00:00'),(65,NULL,NULL,'PS_SEARCH_WEIGHT_MNAME','3','0000-00-00 00:00:00','0000-00-00 00:00:00'),(66,NULL,NULL,'PS_SEARCH_WEIGHT_TAG','4','0000-00-00 00:00:00','0000-00-00 00:00:00'),(67,NULL,NULL,'PS_SEARCH_WEIGHT_ATTRIBUTE','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(68,NULL,NULL,'PS_SEARCH_WEIGHT_FEATURE','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(69,NULL,NULL,'PS_SEARCH_AJAX','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(70,NULL,NULL,'PS_TIMEZONE','Europe/Warsaw','0000-00-00 00:00:00','2026-02-18 16:25:16'),(71,NULL,NULL,'PS_THEME_V11','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(72,NULL,NULL,'PRESTASTORE_LIVE','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(73,NULL,NULL,'PS_TIN_ACTIVE','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(74,NULL,NULL,'PS_SHOW_ALL_MODULES','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(75,NULL,NULL,'PS_BACKUP_ALL','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(76,NULL,NULL,'PS_1_3_UPDATE_DATE','2011-12-27 10:20:42','0000-00-00 00:00:00','0000-00-00 00:00:00'),(77,NULL,NULL,'PS_PRICE_ROUND_MODE','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(78,NULL,NULL,'PS_1_3_2_UPDATE_DATE','2011-12-27 10:20:42','0000-00-00 00:00:00','0000-00-00 00:00:00'),(79,NULL,NULL,'PS_CONDITIONS_CMS_ID','3','0000-00-00 00:00:00','0000-00-00 00:00:00'),(80,NULL,NULL,'PS_ORDER_LIST_PRICE_DISPLAY_CURRENCY','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(81,NULL,NULL,'PS_ALLOW_ADD_ALL_SERVICES_IN_BOOKING','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(82,NULL,NULL,'PS_ALLOW_CREATE_CUSTOM_SERVICES_IN_BOOKING','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(83,NULL,NULL,'TRACKING_DIRECT_TRAFFIC','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(84,NULL,NULL,'PS_META_KEYWORDS','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(85,NULL,NULL,'PS_DISPLAY_JQZOOM','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(86,NULL,NULL,'PS_VOLUME_UNIT','cl','0000-00-00 00:00:00','0000-00-00 00:00:00'),(87,NULL,NULL,'PS_CIPHER_ALGORITHM','0','0000-00-00 00:00:00','2026-02-18 16:25:16'),(88,NULL,NULL,'PS_ATTRIBUTE_CATEGORY_DISPLAY','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(89,NULL,NULL,'PS_CUSTOMER_SERVICE_FILE_UPLOAD','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(90,NULL,NULL,'PS_CUSTOMER_SERVICE_SIGNATURE','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(91,NULL,NULL,'PS_BLOCK_BESTSELLERS_DISPLAY','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(92,NULL,NULL,'PS_BLOCK_NEWPRODUCTS_DISPLAY','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(93,NULL,NULL,'PS_BLOCK_SPECIALS_DISPLAY','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(94,NULL,NULL,'PS_STOCK_MVT_REASON_DEFAULT','3','0000-00-00 00:00:00','0000-00-00 00:00:00'),(95,NULL,NULL,'PS_COMPARATOR_MAX_ITEM','3','0000-00-00 00:00:00','0000-00-00 00:00:00'),(96,NULL,NULL,'PS_ORDER_PROCESS_TYPE','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(97,NULL,NULL,'PS_SPECIFIC_PRICE_PRIORITIES','id_shop;id_currency;id_country;id_group','0000-00-00 00:00:00','0000-00-00 00:00:00'),(98,NULL,NULL,'PS_TAX_DISPLAY','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(99,NULL,NULL,'PS_SMARTY_FORCE_COMPILE','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(100,NULL,NULL,'PS_DISTANCE_UNIT','km','0000-00-00 00:00:00','0000-00-00 00:00:00'),(101,NULL,NULL,'PS_STORES_DISPLAY_CMS','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(102,NULL,NULL,'PS_STORES_DISPLAY_FOOTER','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(103,NULL,NULL,'PS_STORES_SIMPLIFIED','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(104,NULL,NULL,'SHOP_LOGO_WIDTH','243','0000-00-00 00:00:00','0000-00-00 00:00:00'),(105,NULL,NULL,'SHOP_LOGO_HEIGHT','120','0000-00-00 00:00:00','0000-00-00 00:00:00'),(106,NULL,NULL,'EDITORIAL_IMAGE_WIDTH','530','0000-00-00 00:00:00','0000-00-00 00:00:00'),(107,NULL,NULL,'EDITORIAL_IMAGE_HEIGHT','228','0000-00-00 00:00:00','0000-00-00 00:00:00'),(108,NULL,NULL,'PS_STATSDATA_CUSTOMER_PAGESVIEWS','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(109,NULL,NULL,'PS_STATSDATA_PAGESVIEWS','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(110,NULL,NULL,'PS_STATSDATA_PLUGINS','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(111,NULL,NULL,'PS_GEOLOCATION_ENABLED','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(112,NULL,NULL,'PS_ALLOWED_COUNTRIES','AF;ZA;AX;AL;DZ;DE;AD;AO;AI;AQ;AG;AN;SA;AR;AM;AW;AU;AT;AZ;BS;BH;BD;BB;BY;BE;BZ;BJ;BM;BT;BO;BA;BW;BV;BR;BN;BG;BF;MM;BI;KY;KH;CM;CA;CV;CF;CL;CN;CX;CY;CC;CO;KM;CG;CD;CK;KR;KP;CR;CI;HR;CU;DK;DJ;DM;EG;IE;SV;AE;EC;ER;ES;EE;ET;FK;FO;FJ;FI;FR;GA;GM;GE;GS;GH;GI;GR;GD;GL;GP;GU;GT;GG;GN;GQ;GW;GY;GF;HT;HM;HN;HK;HU;IM;MU;VG;VI;IN;ID;IR;IQ;IS;IL;IT;JM;JP;JE;JO;KZ;KE;KG;KI;KW;LA;LS;LV;LB;LR;LY;LI;LT;LU;MO;MK;MG;MY;MW;MV;ML;MT;MP;MA;MH;MQ;MR;YT;MX;FM;MD;MC;MN;ME;MS;MZ;NA;NR;NP;NI;NE;NG;NU;NF;NO;NC;NZ;IO;OM;UG;UZ;PK;PW;PS;PA;PG;PY;NL;PE;PH;PN;PL;PF;PR;PT;QA;DO;CZ;RE;RO;GB;RU;RW;EH;BL;KN;SM;MF;PM;VA;VC;LC;SB;WS;AS;ST;SN;RS;SC;SL;SG;SK;SI;SO;SD;LK;SE;CH;SR;SJ;SZ;SY;TJ;TW;TZ;TD;TF;TH;TL;TG;TK;TO;TT;TN;TM;TC;TR;TV;UA;UY;US;VU;VE;VN;WF;YE;ZM;ZW','0000-00-00 00:00:00','0000-00-00 00:00:00'),(113,NULL,NULL,'PS_GEOLOCATION_BEHAVIOR','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(114,NULL,NULL,'PS_LOCALE_LANGUAGE','en','0000-00-00 00:00:00','2026-02-18 16:25:16'),(115,NULL,NULL,'PS_LOCALE_COUNTRY','pl','0000-00-00 00:00:00','2026-02-18 16:25:16'),(116,NULL,NULL,'PS_ATTACHMENT_MAXIMUM_SIZE','8','0000-00-00 00:00:00','0000-00-00 00:00:00'),(117,NULL,NULL,'PS_SMARTY_CACHE','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(118,NULL,NULL,'PS_DIMENSION_UNIT','ft','0000-00-00 00:00:00','0000-00-00 00:00:00'),(119,NULL,NULL,'PS_GUEST_CHECKOUT_ENABLED','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(120,NULL,NULL,'PS_OVERBOOKING_ORDER_ACTION','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(121,NULL,NULL,'PS_MAX_OVERBOOKING_PER_HOTEL_PER_DAY','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(122,NULL,NULL,'PS_ORDER_CONF_MAIL_TO_CUSTOMER','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(123,NULL,NULL,'PS_ORDER_CONF_MAIL_TO_SUPERADMIN','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(124,NULL,NULL,'PS_ORDER_CONF_MAIL_TO_HOTEL_MANAGER','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(125,NULL,NULL,'PS_ORDER_CONF_MAIL_TO_EMPLOYEE','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(126,NULL,NULL,'PS_DISPLAY_SUPPLIERS','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(127,NULL,NULL,'PS_DISPLAY_BEST_SELLERS','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(128,NULL,NULL,'PS_CATALOG_MODE','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(129,NULL,NULL,'PS_GEOLOCATION_WHITELIST','127;209.185.108;209.185.253;209.85.238;209.85.238.11;209.85.238.4;216.239.33.96;216.239.33.97;216.239.33.98;216.239.33.99;216.239.37.98;216.239.37.99;216.239.39.98;216.239.39.99;216.239.41.96;216.239.41.97;216.239.41.98;216.239.41.99;216.239.45.4;216.239.46;216.239.51.96;216.239.51.97;216.239.51.98;216.239.51.99;216.239.53.98;216.239.53.99;216.239.57.96;91.240.109;216.239.57.97;216.239.57.98;216.239.57.99;216.239.59.98;216.239.59.99;216.33.229.163;64.233.173.193;64.233.173.194;64.233.173.195;64.233.173.196;64.233.173.197;64.233.173.198;64.233.173.199;64.233.173.200;64.233.173.201;64.233.173.202;64.233.173.203;64.233.173.204;64.233.173.205;64.233.173.206;64.233.173.207;64.233.173.208;64.233.173.209;64.233.173.210;64.233.173.211;64.233.173.212;64.233.173.213;64.233.173.214;64.233.173.215;64.233.173.216;64.233.173.217;64.233.173.218;64.233.173.219;64.233.173.220;64.233.173.221;64.233.173.222;64.233.173.223;64.233.173.224;64.233.173.225;64.233.173.226;64.233.173.227;64.233.173.228;64.233.173.229;64.233.173.230;64.233.173.231;64.233.173.232;64.233.173.233;64.233.173.234;64.233.173.235;64.233.173.236;64.233.173.237;64.233.173.238;64.233.173.239;64.233.173.240;64.233.173.241;64.233.173.242;64.233.173.243;64.233.173.244;64.233.173.245;64.233.173.246;64.233.173.247;64.233.173.248;64.233.173.249;64.233.173.250;64.233.173.251;64.233.173.252;64.233.173.253;64.233.173.254;64.233.173.255;64.68.80;64.68.81;64.68.82;64.68.83;64.68.84;64.68.85;64.68.86;64.68.87;64.68.88;64.68.89;64.68.90.1;64.68.90.10;64.68.90.11;64.68.90.12;64.68.90.129;64.68.90.13;64.68.90.130;64.68.90.131;64.68.90.132;64.68.90.133;64.68.90.134;64.68.90.135;64.68.90.136;64.68.90.137;64.68.90.138;64.68.90.139;64.68.90.14;64.68.90.140;64.68.90.141;64.68.90.142;64.68.90.143;64.68.90.144;64.68.90.145;64.68.90.146;64.68.90.147;64.68.90.148;64.68.90.149;64.68.90.15;64.68.90.150;64.68.90.151;64.68.90.152;64.68.90.153;64.68.90.154;64.68.90.155;64.68.90.156;64.68.90.157;64.68.90.158;64.68.90.159;64.68.90.16;64.68.90.160;64.68.90.161;64.68.90.162;64.68.90.163;64.68.90.164;64.68.90.165;64.68.90.166;64.68.90.167;64.68.90.168;64.68.90.169;64.68.90.17;64.68.90.170;64.68.90.171;64.68.90.172;64.68.90.173;64.68.90.174;64.68.90.175;64.68.90.176;64.68.90.177;64.68.90.178;64.68.90.179;64.68.90.18;64.68.90.180;64.68.90.181;64.68.90.182;64.68.90.183;64.68.90.184;64.68.90.185;64.68.90.186;64.68.90.187;64.68.90.188;64.68.90.189;64.68.90.19;64.68.90.190;64.68.90.191;64.68.90.192;64.68.90.193;64.68.90.194;64.68.90.195;64.68.90.196;64.68.90.197;64.68.90.198;64.68.90.199;64.68.90.2;64.68.90.20;64.68.90.200;64.68.90.201;64.68.90.202;64.68.90.203;64.68.90.204;64.68.90.205;64.68.90.206;64.68.90.207;64.68.90.208;64.68.90.21;64.68.90.22;64.68.90.23;64.68.90.24;64.68.90.25;64.68.90.26;64.68.90.27;64.68.90.28;64.68.90.29;64.68.90.3;64.68.90.30;64.68.90.31;64.68.90.32;64.68.90.33;64.68.90.34;64.68.90.35;64.68.90.36;64.68.90.37;64.68.90.38;64.68.90.39;64.68.90.4;64.68.90.40;64.68.90.41;64.68.90.42;64.68.90.43;64.68.90.44;64.68.90.45;64.68.90.46;64.68.90.47;64.68.90.48;64.68.90.49;64.68.90.5;64.68.90.50;64.68.90.51;64.68.90.52;64.68.90.53;64.68.90.54;64.68.90.55;64.68.90.56;64.68.90.57;64.68.90.58;64.68.90.59;64.68.90.6;64.68.90.60;64.68.90.61;64.68.90.62;64.68.90.63;64.68.90.64;64.68.90.65;64.68.90.66;64.68.90.67;64.68.90.68;64.68.90.69;64.68.90.7;64.68.90.70;64.68.90.71;64.68.90.72;64.68.90.73;64.68.90.74;64.68.90.75;64.68.90.76;64.68.90.77;64.68.90.78;64.68.90.79;64.68.90.8;64.68.90.80;64.68.90.9;64.68.91;64.68.92;66.249.64;66.249.65;66.249.66;66.249.67;66.249.68;66.249.69;66.249.70;66.249.71;66.249.72;66.249.73;66.249.78;66.249.79;72.14.199;8.6.48','0000-00-00 00:00:00','0000-00-00 00:00:00'),(130,NULL,NULL,'PS_LOGS_BY_EMAIL','5','0000-00-00 00:00:00','0000-00-00 00:00:00'),(131,NULL,NULL,'PS_COOKIE_CHECKIP','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(132,NULL,NULL,'PS_STORES_CENTER_LAT','25.948969','0000-00-00 00:00:00','0000-00-00 00:00:00'),(133,NULL,NULL,'PS_STORES_CENTER_LONG','-80.226439','0000-00-00 00:00:00','0000-00-00 00:00:00'),(134,NULL,NULL,'PS_USE_ECOTAX','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(135,NULL,NULL,'PS_CANONICAL_REDIRECT','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(136,NULL,NULL,'PS_IMG_UPDATE_TIME','1324977642','0000-00-00 00:00:00','0000-00-00 00:00:00'),(137,NULL,NULL,'PS_BACKUP_DROP_TABLE','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(138,NULL,NULL,'PS_OS_AWAITING_PAYMENT','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(139,NULL,NULL,'PS_OS_PAYMENT_ACCEPTED','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(140,NULL,NULL,'PS_OS_PROCESSING','3','0000-00-00 00:00:00','0000-00-00 00:00:00'),(141,NULL,NULL,'PS_OS_CANCELED','4','0000-00-00 00:00:00','0000-00-00 00:00:00'),(142,NULL,NULL,'PS_OS_REFUND','5','0000-00-00 00:00:00','0000-00-00 00:00:00'),(143,NULL,NULL,'PS_OS_ERROR','6','0000-00-00 00:00:00','0000-00-00 00:00:00'),(144,NULL,NULL,'PS_OS_OUTOFSTOCK','7','0000-00-00 00:00:00','0000-00-00 00:00:00'),(145,NULL,NULL,'PS_OS_OUTOFSTOCK_PAID','7','0000-00-00 00:00:00','0000-00-00 00:00:00'),(146,NULL,NULL,'PS_OS_OVERBOOKING_PAID','7','0000-00-00 00:00:00','0000-00-00 00:00:00'),(147,NULL,NULL,'PS_OS_PARTIAL_PAYMENT_ACCEPTED','8','0000-00-00 00:00:00','0000-00-00 00:00:00'),(148,NULL,NULL,'PS_OS_AWAITING_REMOTE_PAYMENT','9','0000-00-00 00:00:00','0000-00-00 00:00:00'),(149,NULL,NULL,'PS_OS_WS_PAYMENT','10','0000-00-00 00:00:00','0000-00-00 00:00:00'),(150,NULL,NULL,'PS_OS_REMOTE_PAYMENT_ACCEPTED','10','0000-00-00 00:00:00','0000-00-00 00:00:00'),(151,NULL,NULL,'PS_OS_OUTOFSTOCK_UNPAID','11','0000-00-00 00:00:00','0000-00-00 00:00:00'),(152,NULL,NULL,'PS_OS_OVERBOOKING_UNPAID','11','0000-00-00 00:00:00','0000-00-00 00:00:00'),(153,NULL,NULL,'PS_OS_OVERBOOKING_PARTIAL_PAID','12','0000-00-00 00:00:00','0000-00-00 00:00:00'),(154,NULL,NULL,'PS_ORS_PENDING','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(155,NULL,NULL,'PS_ORS_DENIED','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(156,NULL,NULL,'PS_ORS_REFUNDED','3','0000-00-00 00:00:00','0000-00-00 00:00:00'),(157,NULL,NULL,'PS_LEGACY_IMAGES','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(158,NULL,NULL,'PS_IMAGE_QUALITY','png','0000-00-00 00:00:00','0000-00-00 00:00:00'),(159,NULL,NULL,'PS_PNG_QUALITY','7','0000-00-00 00:00:00','0000-00-00 00:00:00'),(160,NULL,NULL,'PS_JPEG_QUALITY','90','0000-00-00 00:00:00','0000-00-00 00:00:00'),(161,NULL,NULL,'PS_COOKIE_LIFETIME_FO','480','0000-00-00 00:00:00','0000-00-00 00:00:00'),(162,NULL,NULL,'PS_COOKIE_LIFETIME_BO','480','0000-00-00 00:00:00','0000-00-00 00:00:00'),(163,NULL,NULL,'PS_COOKIE_SAMESITE','Lax','0000-00-00 00:00:00','0000-00-00 00:00:00'),(164,NULL,NULL,'PS_RESTRICT_DELIVERED_COUNTRIES','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(165,NULL,NULL,'PS_SHOW_NEW_ORDERS','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(166,NULL,NULL,'PS_SHOW_NEW_CUSTOMERS','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(167,NULL,NULL,'PS_SHOW_NEW_MESSAGES','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(168,NULL,NULL,'PS_FEATURE_FEATURE_ACTIVE','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(169,NULL,NULL,'PS_COMBINATION_FEATURE_ACTIVE','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(170,NULL,NULL,'PS_SPECIFIC_PRICE_FEATURE_ACTIVE','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(171,NULL,NULL,'PS_SCENE_FEATURE_ACTIVE','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(172,NULL,NULL,'PS_VIRTUAL_PROD_FEATURE_ACTIVE','1','0000-00-00 00:00:00','2026-02-18 16:25:22'),(173,NULL,NULL,'PS_CUSTOMIZATION_FEATURE_ACTIVE','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(174,NULL,NULL,'PS_CART_RULE_FEATURE_ACTIVE','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(175,NULL,NULL,'PS_PACK_FEATURE_ACTIVE','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(176,NULL,NULL,'PS_ALIAS_FEATURE_ACTIVE','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(177,NULL,NULL,'PS_TAX_ADDRESS_TYPE','id_address_invoice','0000-00-00 00:00:00','0000-00-00 00:00:00'),(178,NULL,NULL,'PS_SHOP_DEFAULT','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(179,NULL,NULL,'PS_CARRIER_DEFAULT_SORT','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(180,NULL,NULL,'PS_STOCK_MVT_INC_REASON_DEFAULT','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(181,NULL,NULL,'PS_STOCK_MVT_DEC_REASON_DEFAULT','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(182,NULL,NULL,'PS_ADVANCED_STOCK_MANAGEMENT','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(183,NULL,NULL,'PS_ADMINREFRESH_NOTIFICATION','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(184,NULL,NULL,'PS_STOCK_MVT_TRANSFER_TO','7','0000-00-00 00:00:00','0000-00-00 00:00:00'),(185,NULL,NULL,'PS_STOCK_MVT_TRANSFER_FROM','6','0000-00-00 00:00:00','0000-00-00 00:00:00'),(186,NULL,NULL,'PS_CARRIER_DEFAULT_ORDER','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(187,NULL,NULL,'PS_STOCK_MVT_SUPPLY_ORDER','8','0000-00-00 00:00:00','0000-00-00 00:00:00'),(188,NULL,NULL,'PS_STOCK_CUSTOMER_ORDER_REASON','3','0000-00-00 00:00:00','0000-00-00 00:00:00'),(189,NULL,NULL,'PS_UNIDENTIFIED_GROUP','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(190,NULL,NULL,'PS_GUEST_GROUP','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(191,NULL,NULL,'PS_CUSTOMER_GROUP','3','0000-00-00 00:00:00','0000-00-00 00:00:00'),(192,NULL,NULL,'PS_SMARTY_CONSOLE','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(193,NULL,NULL,'PS_INVOICE_MODEL','invoice','0000-00-00 00:00:00','0000-00-00 00:00:00'),(194,NULL,NULL,'PS_LIMIT_UPLOAD_IMAGE_VALUE','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(195,NULL,NULL,'PS_LIMIT_UPLOAD_FILE_VALUE','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(196,NULL,NULL,'MB_PAY_TO_EMAIL','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(197,NULL,NULL,'MB_SECRET_WORD','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(198,NULL,NULL,'MB_HIDE_LOGIN','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(199,NULL,NULL,'MB_ID_LOGO','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(200,NULL,NULL,'MB_ID_LOGO_WALLET','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(201,NULL,NULL,'MB_PARAMETERS','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(202,NULL,NULL,'MB_PARAMETERS_2','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(203,NULL,NULL,'MB_DISPLAY_MODE','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(204,NULL,NULL,'MB_CANCEL_URL','http://www.yoursite.com','0000-00-00 00:00:00','0000-00-00 00:00:00'),(205,NULL,NULL,'MB_LOCAL_METHODS','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(206,NULL,NULL,'MB_INTER_METHODS','5','0000-00-00 00:00:00','0000-00-00 00:00:00'),(207,NULL,NULL,'BANK_WIRE_CURRENCIES','2,1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(208,NULL,NULL,'CHEQUE_CURRENCIES','2,1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(209,NULL,NULL,'PRODUCTS_VIEWED_NBR','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(210,NULL,NULL,'BLOCK_CATEG_DHTML','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(211,NULL,NULL,'BLOCK_CATEG_MAX_DEPTH','4','0000-00-00 00:00:00','0000-00-00 00:00:00'),(212,NULL,NULL,'MANUFACTURER_DISPLAY_FORM','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(213,NULL,NULL,'MANUFACTURER_DISPLAY_TEXT','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(214,NULL,NULL,'MANUFACTURER_DISPLAY_TEXT_NB','5','0000-00-00 00:00:00','0000-00-00 00:00:00'),(215,NULL,NULL,'NEW_PRODUCTS_NBR','8','0000-00-00 00:00:00','0000-00-00 00:00:00'),(216,NULL,NULL,'PS_TOKEN_ENABLE','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(217,NULL,NULL,'PS_STATS_RENDER','graphnvd3','0000-00-00 00:00:00','0000-00-00 00:00:00'),(218,NULL,NULL,'PS_STATS_OLD_CONNECT_AUTO_CLEAN','never','0000-00-00 00:00:00','0000-00-00 00:00:00'),(219,NULL,NULL,'PS_STATS_GRID_RENDER','gridhtml','0000-00-00 00:00:00','0000-00-00 00:00:00'),(220,NULL,NULL,'BLOCKTAGS_NBR','10','0000-00-00 00:00:00','0000-00-00 00:00:00'),(221,NULL,NULL,'HOTEL_CHECKUP_DESCRIPTIONS_LT','100','0000-00-00 00:00:00','0000-00-00 00:00:00'),(222,NULL,NULL,'HOTEL_CHECKUP_DESCRIPTIONS_GT','400','0000-00-00 00:00:00','0000-00-00 00:00:00'),(223,NULL,NULL,'HOTEL_CHECKUP_IMAGES_LT','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(224,NULL,NULL,'HOTEL_CHECKUP_IMAGES_GT','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(225,NULL,NULL,'HOTEL_CHECKUP_ORDERS_LT','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(226,NULL,NULL,'HOTEL_CHECKUP_ORDERS_GT','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(227,NULL,NULL,'HOTEL_CHECKUP_TOTAL_ROOMS_LT','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(228,NULL,NULL,'HOTEL_CHECKUP_TOTAL_ROOMS_GT','3','0000-00-00 00:00:00','0000-00-00 00:00:00'),(229,NULL,NULL,'ROOM_TYPE_CHECKUP_DESCRIPTIONS_LT','100','0000-00-00 00:00:00','0000-00-00 00:00:00'),(230,NULL,NULL,'ROOM_TYPE_CHECKUP_DESCRIPTIONS_GT','400','0000-00-00 00:00:00','0000-00-00 00:00:00'),(231,NULL,NULL,'ROOM_TYPE_CHECKUP_IMAGES_LT','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(232,NULL,NULL,'ROOM_TYPE_CHECKUP_IMAGES_GT','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(233,NULL,NULL,'ROOM_TYPE_CHECKUP_ORDERS_LT','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(234,NULL,NULL,'ROOM_TYPE_CHECKUP_ORDERS_GT','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(235,NULL,NULL,'ROOM_TYPE_CHECKUP_TOTAL_ROOMS_LT','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(236,NULL,NULL,'ROOM_TYPE_CHECKUP_TOTAL_ROOMS_GT','3','0000-00-00 00:00:00','0000-00-00 00:00:00'),(237,NULL,NULL,'SERVICE_CHECKUP_DESCRIPTIONS_SHORT_LT','50','0000-00-00 00:00:00','0000-00-00 00:00:00'),(238,NULL,NULL,'SERVICE_CHECKUP_DESCRIPTIONS_GT','150','0000-00-00 00:00:00','0000-00-00 00:00:00'),(239,NULL,NULL,'SERVICE_CHECKUP_IMAGES_LT','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(240,NULL,NULL,'SERVICE_CHECKUP_IMAGES_GT','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(241,NULL,NULL,'SERVICE_CHECKUP_ORDERS_LT','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(242,NULL,NULL,'SERVICE_CHECKUP_ORDERS_GT','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(243,NULL,NULL,'FOOTER_CMS','0_3|0_4','0000-00-00 00:00:00','0000-00-00 00:00:00'),(244,NULL,NULL,'FOOTER_BLOCK_ACTIVATION','0_3|0_4','0000-00-00 00:00:00','0000-00-00 00:00:00'),(245,NULL,NULL,'FOOTER_POWEREDBY','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(246,NULL,NULL,'BLOCKADVERT_LINK','https://qloapps.com/','0000-00-00 00:00:00','0000-00-00 00:00:00'),(247,NULL,NULL,'BLOCKADVERT_IMG_EXT','jpg','0000-00-00 00:00:00','0000-00-00 00:00:00'),(248,NULL,NULL,'MOD_BLOCKTOPMENU_ITEMS','CAT3,CAT8,CAT5,LNK1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(249,NULL,NULL,'MOD_BLOCKTOPMENU_SEARCH','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(250,NULL,NULL,'BLOCKSOCIAL_FACEBOOK','https://www.facebook.com/qloapps','0000-00-00 00:00:00','2026-02-18 16:25:28'),(251,NULL,NULL,'BLOCKSOCIAL_TWITTER','https://twitter.com/qloapps','0000-00-00 00:00:00','2026-02-18 16:25:28'),(252,NULL,NULL,'SUPPLIER_DISPLAY_TEXT','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(253,NULL,NULL,'SUPPLIER_DISPLAY_TEXT_NB','5','0000-00-00 00:00:00','0000-00-00 00:00:00'),(254,NULL,NULL,'SUPPLIER_DISPLAY_FORM','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(255,NULL,NULL,'BLOCK_CATEG_NBR_COLUMN_FOOTER','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(256,NULL,NULL,'UPGRADER_BACKUPDB_FILENAME','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(257,NULL,NULL,'UPGRADER_BACKUPFILES_FILENAME','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(258,NULL,NULL,'BLOCKREINSURANCE_NBBLOCKS','5','0000-00-00 00:00:00','0000-00-00 00:00:00'),(259,NULL,NULL,'PS_BASE_DISTANCE_UNIT','m','0000-00-00 00:00:00','0000-00-00 00:00:00'),(260,NULL,NULL,'PS_SHOP_DOMAIN','localhost:8080','0000-00-00 00:00:00','2026-02-18 16:25:16'),(261,NULL,NULL,'PS_SHOP_DOMAIN_SSL','localhost:8080','0000-00-00 00:00:00','2026-02-18 16:25:16'),(262,NULL,NULL,'PS_SHOP_NAME','Demo SSD','0000-00-00 00:00:00','2026-02-18 16:25:16'),(263,NULL,NULL,'PS_SHOP_EMAIL','hotelprime@htl.com','0000-00-00 00:00:00','2026-02-18 16:25:21'),(264,NULL,NULL,'PS_MAIL_METHOD','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(265,NULL,NULL,'PS_MAIL_SUBJECT_PREFIX','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(266,NULL,NULL,'PS_SHOP_ACTIVITY',NULL,'0000-00-00 00:00:00','2026-02-18 16:25:16'),(267,NULL,NULL,'PS_LOGO','logo.jpg','0000-00-00 00:00:00','2026-02-18 16:25:21'),(268,NULL,NULL,'PS_FAVICON','favicon.ico','0000-00-00 00:00:00','0000-00-00 00:00:00'),(269,NULL,NULL,'PS_STORES_ICON','logo_stores.gif','0000-00-00 00:00:00','2026-02-18 16:25:21'),(270,NULL,NULL,'PS_ROOT_CATEGORY','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(271,NULL,NULL,'PS_HOME_CATEGORY','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(272,NULL,NULL,'PS_LOCATIONS_CATEGORY','3','0000-00-00 00:00:00','0000-00-00 00:00:00'),(273,NULL,NULL,'PS_SERVICE_CATEGORY','4','0000-00-00 00:00:00','0000-00-00 00:00:00'),(274,NULL,NULL,'PS_CONFIGURATION_AGREMENT','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(275,NULL,NULL,'PS_MAIL_SERVER','smtp.','0000-00-00 00:00:00','0000-00-00 00:00:00'),(276,NULL,NULL,'PS_MAIL_USER','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(277,NULL,NULL,'PS_MAIL_PASSWD','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(278,NULL,NULL,'PS_MAIL_SMTP_ENCRYPTION','off','0000-00-00 00:00:00','0000-00-00 00:00:00'),(279,NULL,NULL,'PS_MAIL_SMTP_PORT','25','0000-00-00 00:00:00','0000-00-00 00:00:00'),(280,NULL,NULL,'PS_MAIL_COLOR','#db3484','0000-00-00 00:00:00','0000-00-00 00:00:00'),(281,NULL,NULL,'NW_SALT','jZFX8xeDq7hPgUtJ','0000-00-00 00:00:00','2026-02-18 16:25:28'),(282,NULL,NULL,'PS_PAYMENT_LOGO_CMS_ID','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(283,NULL,NULL,'HOME_FEATURED_NBR','8','0000-00-00 00:00:00','0000-00-00 00:00:00'),(284,NULL,NULL,'SEK_MIN_OCCURENCES','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(285,NULL,NULL,'SEK_FILTER_KW','','0000-00-00 00:00:00','0000-00-00 00:00:00'),(286,NULL,NULL,'PS_ALLOW_MOBILE_DEVICE','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(287,NULL,NULL,'PS_CUSTOMER_CREATION_EMAIL','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(288,NULL,NULL,'PS_SMARTY_CONSOLE_KEY','SMARTY_DEBUG','0000-00-00 00:00:00','0000-00-00 00:00:00'),(289,NULL,NULL,'PS_DASHBOARD_USE_PUSH','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(290,NULL,NULL,'PS_ATTRIBUTE_ANCHOR_SEPARATOR','-','0000-00-00 00:00:00','0000-00-00 00:00:00'),(291,NULL,NULL,'CONF_AVERAGE_PRODUCT_MARGIN','40','0000-00-00 00:00:00','0000-00-00 00:00:00'),(292,NULL,NULL,'PS_DASHBOARD_SIMULATION','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(293,NULL,NULL,'PS_QUICK_VIEW','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(294,NULL,NULL,'PS_USE_HTMLPURIFIER','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(295,NULL,NULL,'PS_SMARTY_CACHING_TYPE','filesystem','0000-00-00 00:00:00','0000-00-00 00:00:00'),(296,NULL,NULL,'PS_SMARTY_CLEAR_CACHE','everytime','0000-00-00 00:00:00','0000-00-00 00:00:00'),(297,NULL,NULL,'PS_DETECT_LANG','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(298,NULL,NULL,'PS_DETECT_COUNTRY','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(299,NULL,NULL,'PS_ROUND_TYPE','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(300,NULL,NULL,'PS_PRICE_DISPLAY_PRECISION','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(301,NULL,NULL,'PS_LOG_EMAILS','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(302,NULL,NULL,'PS_CUSTOMER_BIRTHDATE','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(303,NULL,NULL,'PS_CUSTOMER_NWSL','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(304,NULL,NULL,'PS_CUSTOMER_OPTIN','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(305,NULL,NULL,'PS_KPI_FREQUENT_CUSTOMER_NB_ORDERS','5','0000-00-00 00:00:00','0000-00-00 00:00:00'),(306,NULL,NULL,'PS_KPI_REVPAC_NB_DAYS','30','0000-00-00 00:00:00','0000-00-00 00:00:00'),(307,NULL,NULL,'PS_KPI_CONVERSION_RATE_NB_DAYS','30','0000-00-00 00:00:00','0000-00-00 00:00:00'),(308,NULL,NULL,'PS_ORDER_KPI_AVG_ORDER_VALUE_NB_DAYS','30','0000-00-00 00:00:00','0000-00-00 00:00:00'),(309,NULL,NULL,'PS_ORDER_KPI_PER_VISITOR_PROFIT_NB_DAYS','30','0000-00-00 00:00:00','0000-00-00 00:00:00'),(310,NULL,NULL,'PS_KPI_NEW_CUSTOMERS_NB_DAYS','30','0000-00-00 00:00:00','0000-00-00 00:00:00'),(311,NULL,NULL,'PS_PACK_STOCK_TYPE','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(312,NULL,NULL,'PS_LOG_MODULE_PERFS_MODULO','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(313,NULL,NULL,'PS_DISALLOW_HISTORY_REORDERING','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(314,NULL,NULL,'PS_DISPLAY_PRODUCT_WEIGHT','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(315,NULL,NULL,'PS_PRODUCT_WEIGHT_PRECISION','2','0000-00-00 00:00:00','0000-00-00 00:00:00'),(316,NULL,NULL,'PS_ADVANCED_PAYMENT_API','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(317,NULL,NULL,'PS_SERVICE_PRODUCT_CATEGORY_FILTER','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(318,NULL,NULL,'PS_BACKDATE_ORDER_SUPERADMIN','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(319,NULL,NULL,'PS_BACKDATE_ORDER_EMPLOYEES','0','0000-00-00 00:00:00','0000-00-00 00:00:00'),(320,NULL,NULL,'PS_CUSTOMER_SERVICE_REQUIRED_NAME','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(321,NULL,NULL,'PS_CUSTOMER_SERVICE_DISPLAY_NAME','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(322,NULL,NULL,'PS_CUSTOMER_SERVICE_REQUIRED_PHONE','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(323,NULL,NULL,'PS_CUSTOMER_SERVICE_DISPLAY_PHONE','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(324,NULL,NULL,'PS_CUSTOMER_SERVICE_DISPLAY_CONTACT','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(325,NULL,NULL,'PS_STANDARD_PRODUCT_ORDER_ADDRESS_PREFRENCE','1','0000-00-00 00:00:00','0000-00-00 00:00:00'),(326,NULL,NULL,'PS_CUSTOMER_GUEST_MAX_LIMIT','5','0000-00-00 00:00:00','0000-00-00 00:00:00'),(327,NULL,NULL,'PS_SSL_ENABLED_EVERYWHERE','0','2026-02-18 16:25:16','2026-02-18 16:25:16'),(328,NULL,NULL,'WK_HOTEL_LOCATION_ENABLE','1','2026-02-18 16:25:21','2026-02-18 16:25:21'),(329,NULL,NULL,'WK_HOTEL_NAME_ENABLE','1','2026-02-18 16:25:21','2026-02-18 16:25:21'),(330,NULL,NULL,'WK_HOTEL_NAME_SEARCH_THRESHOLD','5','2026-02-18 16:25:21','2026-02-18 16:25:21'),(331,NULL,NULL,'WK_SEARCH_AUTO_FOCUS_NEXT_FIELD','1','2026-02-18 16:25:21','2026-02-18 16:25:21'),(332,NULL,NULL,'WK_ROOM_LEFT_WARNING_NUMBER','10','2026-02-18 16:25:21','2026-02-18 16:25:21'),(333,NULL,NULL,'WK_HTL_ESTABLISHMENT_YEAR','2010','2026-02-18 16:25:21','2026-02-18 16:25:21'),(334,NULL,NULL,'PS_SHOP_ADDR1','The Hotel Prime, Monticello Dr, Montgomery, 10010','2026-02-18 16:25:21','2026-02-18 16:25:21'),(335,NULL,NULL,'PS_SHOP_PHONE','0987654321','2026-02-18 16:25:21','2026-02-18 16:25:21'),(336,NULL,NULL,'WK_CUSTOMER_SUPPORT_PHONE_NUMBER','0987654321','2026-02-18 16:25:21','2026-02-18 16:25:21'),(337,NULL,NULL,'WK_CUSTOMER_SUPPORT_EMAIL','hotelprime@htl.com','2026-02-18 16:25:21','2026-02-18 16:25:21'),(338,NULL,NULL,'WK_DISPLAY_CONTACT_PAGE_HOTEL_LIST','0','2026-02-18 16:25:21','2026-02-18 16:25:21'),(339,NULL,NULL,'WK_TITLE_HEADER_BLOCK','Hotel Prime','2026-02-18 16:25:21','2026-02-18 16:25:21'),(340,NULL,NULL,'WK_CONTENT_HEADER_BLOCK','Our hotel is the perfect destination for both business and leisure travelers seeking a memorable stay.','2026-02-18 16:25:21','2026-02-18 16:25:21'),(341,NULL,NULL,'WK_HOTEL_HEADER_IMAGE','hotel_header_image.jpg','2026-02-18 16:25:21','2026-02-18 16:25:21'),(342,NULL,NULL,'WK_ALLOW_ADVANCED_PAYMENT','1','2026-02-18 16:25:21','2026-02-18 16:25:21'),(343,NULL,NULL,'WK_ADVANCED_PAYMENT_GLOBAL_MIN_AMOUNT','10','2026-02-18 16:25:21','2026-02-18 16:25:21'),(344,NULL,NULL,'WK_ADVANCED_PAYMENT_INC_TAX','1','2026-02-18 16:25:21','2026-02-18 16:25:21'),(345,NULL,NULL,'WK_GLOBAL_CHILD_MAX_AGE','15','2026-02-18 16:25:21','2026-02-18 16:25:21'),(346,NULL,NULL,'WK_GLOBAL_MAX_CHILD_IN_ROOM','0','2026-02-18 16:25:21','2026-02-18 16:25:21'),(347,NULL,NULL,'PS_MAX_CHECKOUT_OFFSET','365','2026-02-18 16:25:21','2026-02-18 16:25:21'),(348,NULL,NULL,'PS_MIN_BOOKING_OFFSET','0','2026-02-18 16:25:21','2026-02-18 16:25:21'),(349,NULL,NULL,'HTL_FEATURE_PRICING_PRIORITY','specific_date;special_day;date_range','2026-02-18 16:25:21','2026-02-18 16:25:21'),(350,NULL,NULL,'WK_GOOGLE_ACTIVE_MAP','0','2026-02-18 16:25:21','2026-02-18 16:25:21'),(351,NULL,NULL,'WK_MAP_HOTEL_ACTIVE_ONLY','1','2026-02-18 16:25:21','2026-02-18 16:25:21'),(352,NULL,NULL,'PS_LOGO_MAIL','logo_mail.jpg','2026-02-18 16:25:21','2026-02-18 16:25:21'),(353,NULL,NULL,'PS_LOGO_INVOICE','logo_invoice.jpg','2026-02-18 16:25:21','2026-02-18 16:25:21'),(354,NULL,NULL,'WK_HTL_CHAIN_NAME',NULL,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(355,NULL,NULL,'WK_HTL_TAG_LINE',NULL,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(356,NULL,NULL,'WK_HTL_SHORT_DESC',NULL,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(357,NULL,NULL,'WK_DIMENSION_UNIT',NULL,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(358,NULL,NULL,'PS_FRONT_SEARCH_TYPE','1','2026-02-18 16:25:21','2026-02-18 16:25:21'),(359,NULL,NULL,'PS_FRONT_OWS_SEARCH_ALGO_TYPE','1','2026-02-18 16:25:21','2026-02-18 16:25:21'),(360,NULL,NULL,'PS_FRONT_ROOM_UNIT_SELECTION_TYPE','1','2026-02-18 16:25:21','2026-02-18 16:25:21'),(361,NULL,NULL,'PS_BACKOFFICE_SEARCH_TYPE','1','2026-02-18 16:25:21','2026-02-18 16:25:21'),(362,NULL,NULL,'PS_BACKOFFICE_OWS_SEARCH_ALGO_TYPE','2','2026-02-18 16:25:21','2026-02-18 16:25:21'),(363,NULL,NULL,'PS_BACKOFFICE_ROOM_BOOKING_TYPE','1','2026-02-18 16:25:21','2026-02-18 16:25:21'),(364,NULL,NULL,'WK_PRIMARY_HOTEL','1','2026-02-18 16:25:22','2026-02-18 16:25:22'),(365,NULL,NULL,'BLOCKSOCIAL_RSS',NULL,'2026-02-18 16:25:28','2026-02-18 16:25:28'),(366,NULL,NULL,'BLOCKSOCIAL_YOUTUBE',NULL,'2026-02-18 16:25:28','2026-02-18 16:25:28'),(367,NULL,NULL,'BLOCKSOCIAL_PINTEREST',NULL,'2026-02-18 16:25:28','2026-02-18 16:25:28'),(368,NULL,NULL,'BLOCKSOCIAL_VIMEO',NULL,'2026-02-18 16:25:28','2026-02-18 16:25:28'),(369,NULL,NULL,'BLOCKSOCIAL_INSTAGRAM',NULL,'2026-02-18 16:25:28','2026-02-18 16:25:28'),(370,NULL,NULL,'SHOW_AMENITIES_FILTER','1','2026-02-18 16:25:28','2026-02-18 16:25:28'),(371,NULL,NULL,'SHOW_PRICE_FILTER','1','2026-02-18 16:25:28','2026-02-18 16:25:28'),(372,NULL,NULL,'HOTEL_INTERIOR_HEADING',NULL,'2026-02-18 16:25:28','2026-02-18 16:25:28'),(373,NULL,NULL,'HOTEL_INTERIOR_DESCRIPTION',NULL,'2026-02-18 16:25:28','2026-02-18 16:25:28'),(374,NULL,NULL,'HOTEL_AMENITIES_HEADING',NULL,'2026-02-18 16:25:28','2026-02-18 16:25:28'),(375,NULL,NULL,'HOTEL_AMENITIES_DESCRIPTION',NULL,'2026-02-18 16:25:28','2026-02-18 16:25:28'),(376,NULL,NULL,'HOTEL_ROOM_DISPLAY_HEADING',NULL,'2026-02-18 16:25:28','2026-02-18 16:25:28'),(377,NULL,NULL,'HOTEL_ROOM_DISPLAY_DESCRIPTION',NULL,'2026-02-18 16:25:28','2026-02-18 16:25:28'),(378,NULL,NULL,'HOTEL_TESIMONIAL_BLOCK_HEADING',NULL,'2026-02-18 16:25:28','2026-02-18 16:25:28'),(379,NULL,NULL,'HOTEL_TESIMONIAL_BLOCK_CONTENT',NULL,'2026-02-18 16:25:28','2026-02-18 16:25:28'),(380,NULL,NULL,'CONF_BANKWIRE_FIXED','0.2','2026-02-18 16:25:28','2026-02-18 16:25:28'),(381,NULL,NULL,'CONF_BANKWIRE_VAR','2','2026-02-18 16:25:28','2026-02-18 16:25:28'),(382,NULL,NULL,'CONF_BANKWIRE_FIXED_FOREIGN','0.2','2026-02-18 16:25:28','2026-02-18 16:25:28'),(383,NULL,NULL,'CONF_BANKWIRE_VAR_FOREIGN','2','2026-02-18 16:25:28','2026-02-18 16:25:28'),(384,NULL,NULL,'CONF_CHEQUE_FIXED','0.2','2026-02-18 16:25:28','2026-02-18 16:25:28'),(385,NULL,NULL,'CONF_CHEQUE_VAR','2','2026-02-18 16:25:28','2026-02-18 16:25:28'),(386,NULL,NULL,'CONF_CHEQUE_FIXED_FOREIGN','0.2','2026-02-18 16:25:28','2026-02-18 16:25:28'),(387,NULL,NULL,'CONF_CHEQUE_VAR_FOREIGN','2','2026-02-18 16:25:28','2026-02-18 16:25:28'),(388,NULL,NULL,'QHR_ADMIN_APPROVAL_ENABLED','1','2026-02-18 16:25:28','2026-02-18 16:25:28'),(389,NULL,NULL,'QHR_MAX_IMAGES_PER_REVIEW','5','2026-02-18 16:25:28','2026-02-18 16:25:28'),(390,NULL,NULL,'QHR_REVIEWS_AT_ONCE','5','2026-02-18 16:25:28','2026-02-18 16:25:28'),(391,NULL,NULL,'QHR_REVIEW_APPROVAL_EMAIL_ENABLED','0','2026-02-18 16:25:28','2026-02-18 16:25:28'),(392,NULL,NULL,'QHR_REVIEW_MGMT_REPLY_EMAIL_ENABLED','0','2026-02-18 16:25:28','2026-02-18 16:25:28'),(393,NULL,NULL,'WK_SHOW_FOOTER_NAVIGATION_BLOCK','1','2026-02-18 16:25:29','2026-02-18 16:25:29'),(394,NULL,NULL,'DASHACTIVITY_CART_ACTIVE','30','2026-02-18 16:25:29','2026-02-18 16:25:29'),(395,NULL,NULL,'DASHACTIVITY_CART_ABANDONED_MIN','24','2026-02-18 16:25:29','2026-02-18 16:25:29'),(396,NULL,NULL,'DASHACTIVITY_CART_ABANDONED_MAX','48','2026-02-18 16:25:29','2026-02-18 16:25:29'),(397,NULL,NULL,'DASHACTIVITY_VISITOR_ONLINE','30','2026-02-18 16:25:29','2026-02-18 16:25:29'),(398,NULL,NULL,'DASHPRODUCT_NBR_SHOW_LAST_ORDER','10','2026-02-18 16:25:29','2026-02-18 16:25:29'),(399,NULL,NULL,'DASHPRODUCT_NBR_SHOW_BEST_SELLER','10','2026-02-18 16:25:29','2026-02-18 16:25:29'),(400,NULL,NULL,'DASHPRODUCT_NBR_SHOW_MOST_VIEWED','10','2026-02-18 16:25:29','2026-02-18 16:25:29'),(401,NULL,NULL,'DASHPRODUCT_NBR_SHOW_TOP_SEARCH','10','2026-02-18 16:25:29','2026-02-18 16:25:29'),(402,NULL,NULL,'PS_DASHGOALS_CURRENT_YEAR','2026','2026-02-18 16:25:29','2026-02-18 16:25:29'),(403,NULL,NULL,'PS_BLOCK_CART_XSELL_LIMIT','12','2026-02-18 16:25:29','2026-02-18 16:25:29'),(404,NULL,NULL,'PS_BLOCK_CART_SHOW_CROSSSELLING','1','2026-02-18 16:25:29','2026-02-18 16:25:29');
/*!40000 ALTER TABLE `qlo_configuration` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_configuration_kpi`
--

DROP TABLE IF EXISTS `qlo_configuration_kpi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_configuration_kpi` (
  `id_configuration_kpi` int unsigned NOT NULL AUTO_INCREMENT,
  `id_shop_group` int unsigned DEFAULT NULL,
  `id_shop` int unsigned DEFAULT NULL,
  `name` varchar(64) NOT NULL,
  `value` text,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_configuration_kpi`),
  KEY `name` (`name`),
  KEY `id_shop` (`id_shop`),
  KEY `id_shop_group` (`id_shop_group`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_configuration_kpi`
--

LOCK TABLES `qlo_configuration_kpi` WRITE;
/*!40000 ALTER TABLE `qlo_configuration_kpi` DISABLE KEYS */;
INSERT INTO `qlo_configuration_kpi` VALUES (1,NULL,NULL,'DASHGOALS_TRAFFIC_01_2026','600','2026-02-18 16:25:29','2026-02-18 16:25:29'),(2,NULL,NULL,'DASHGOALS_CONVERSION_01_2026','2','2026-02-18 16:25:29','2026-02-18 16:25:29'),(3,NULL,NULL,'DASHGOALS_AVG_CART_VALUE_01_2026','80','2026-02-18 16:25:29','2026-02-18 16:25:29'),(4,NULL,NULL,'DASHGOALS_TRAFFIC_02_2026','600','2026-02-18 16:25:29','2026-02-18 16:25:29'),(5,NULL,NULL,'DASHGOALS_CONVERSION_02_2026','2','2026-02-18 16:25:29','2026-02-18 16:25:29'),(6,NULL,NULL,'DASHGOALS_AVG_CART_VALUE_02_2026','80','2026-02-18 16:25:29','2026-02-18 16:25:29'),(7,NULL,NULL,'DASHGOALS_TRAFFIC_03_2026','600','2026-02-18 16:25:29','2026-02-18 16:25:29'),(8,NULL,NULL,'DASHGOALS_CONVERSION_03_2026','2','2026-02-18 16:25:29','2026-02-18 16:25:29'),(9,NULL,NULL,'DASHGOALS_AVG_CART_VALUE_03_2026','80','2026-02-18 16:25:29','2026-02-18 16:25:29'),(10,NULL,NULL,'DASHGOALS_TRAFFIC_04_2026','600','2026-02-18 16:25:29','2026-02-18 16:25:29'),(11,NULL,NULL,'DASHGOALS_CONVERSION_04_2026','2','2026-02-18 16:25:29','2026-02-18 16:25:29'),(12,NULL,NULL,'DASHGOALS_AVG_CART_VALUE_04_2026','80','2026-02-18 16:25:29','2026-02-18 16:25:29'),(13,NULL,NULL,'DASHGOALS_TRAFFIC_05_2026','600','2026-02-18 16:25:29','2026-02-18 16:25:29'),(14,NULL,NULL,'DASHGOALS_CONVERSION_05_2026','2','2026-02-18 16:25:29','2026-02-18 16:25:29'),(15,NULL,NULL,'DASHGOALS_AVG_CART_VALUE_05_2026','80','2026-02-18 16:25:29','2026-02-18 16:25:29'),(16,NULL,NULL,'DASHGOALS_TRAFFIC_06_2026','600','2026-02-18 16:25:29','2026-02-18 16:25:29'),(17,NULL,NULL,'DASHGOALS_CONVERSION_06_2026','2','2026-02-18 16:25:29','2026-02-18 16:25:29'),(18,NULL,NULL,'DASHGOALS_AVG_CART_VALUE_06_2026','80','2026-02-18 16:25:29','2026-02-18 16:25:29'),(19,NULL,NULL,'DASHGOALS_TRAFFIC_07_2026','600','2026-02-18 16:25:29','2026-02-18 16:25:29'),(20,NULL,NULL,'DASHGOALS_CONVERSION_07_2026','2','2026-02-18 16:25:29','2026-02-18 16:25:29'),(21,NULL,NULL,'DASHGOALS_AVG_CART_VALUE_07_2026','80','2026-02-18 16:25:29','2026-02-18 16:25:29'),(22,NULL,NULL,'DASHGOALS_TRAFFIC_08_2026','600','2026-02-18 16:25:29','2026-02-18 16:25:29'),(23,NULL,NULL,'DASHGOALS_CONVERSION_08_2026','2','2026-02-18 16:25:29','2026-02-18 16:25:29'),(24,NULL,NULL,'DASHGOALS_AVG_CART_VALUE_08_2026','80','2026-02-18 16:25:29','2026-02-18 16:25:29'),(25,NULL,NULL,'DASHGOALS_TRAFFIC_09_2026','600','2026-02-18 16:25:29','2026-02-18 16:25:29'),(26,NULL,NULL,'DASHGOALS_CONVERSION_09_2026','2','2026-02-18 16:25:29','2026-02-18 16:25:29'),(27,NULL,NULL,'DASHGOALS_AVG_CART_VALUE_09_2026','80','2026-02-18 16:25:29','2026-02-18 16:25:29'),(28,NULL,NULL,'DASHGOALS_TRAFFIC_10_2026','600','2026-02-18 16:25:29','2026-02-18 16:25:29'),(29,NULL,NULL,'DASHGOALS_CONVERSION_10_2026','2','2026-02-18 16:25:29','2026-02-18 16:25:29'),(30,NULL,NULL,'DASHGOALS_AVG_CART_VALUE_10_2026','80','2026-02-18 16:25:29','2026-02-18 16:25:29'),(31,NULL,NULL,'DASHGOALS_TRAFFIC_11_2026','600','2026-02-18 16:25:29','2026-02-18 16:25:29'),(32,NULL,NULL,'DASHGOALS_CONVERSION_11_2026','2','2026-02-18 16:25:29','2026-02-18 16:25:29'),(33,NULL,NULL,'DASHGOALS_AVG_CART_VALUE_11_2026','80','2026-02-18 16:25:29','2026-02-18 16:25:29'),(34,NULL,NULL,'DASHGOALS_TRAFFIC_12_2026','600','2026-02-18 16:25:29','2026-02-18 16:25:29'),(35,NULL,NULL,'DASHGOALS_CONVERSION_12_2026','2','2026-02-18 16:25:29','2026-02-18 16:25:29'),(36,NULL,NULL,'DASHGOALS_AVG_CART_VALUE_12_2026','80','2026-02-18 16:25:29','2026-02-18 16:25:29'),(37,NULL,NULL,'DISABLED_ROOM_TYPES','0','2026-02-18 18:40:49','2026-02-18 18:40:49'),(38,NULL,NULL,'DISABLED_ROOM_TYPES_EXPIRE','1771443649','2026-02-18 18:40:49','2026-02-18 18:40:49');
/*!40000 ALTER TABLE `qlo_configuration_kpi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_configuration_kpi_lang`
--

DROP TABLE IF EXISTS `qlo_configuration_kpi_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_configuration_kpi_lang` (
  `id_configuration_kpi` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `value` text,
  `date_upd` datetime DEFAULT NULL,
  PRIMARY KEY (`id_configuration_kpi`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_configuration_kpi_lang`
--

LOCK TABLES `qlo_configuration_kpi_lang` WRITE;
/*!40000 ALTER TABLE `qlo_configuration_kpi_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_configuration_kpi_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_configuration_lang`
--

DROP TABLE IF EXISTS `qlo_configuration_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_configuration_lang` (
  `id_configuration` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `value` text,
  `date_upd` datetime DEFAULT NULL,
  PRIMARY KEY (`id_configuration`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_configuration_lang`
--

LOCK TABLES `qlo_configuration_lang` WRITE;
/*!40000 ALTER TABLE `qlo_configuration_lang` DISABLE KEYS */;
INSERT INTO `qlo_configuration_lang` VALUES (48,1,'#IN',NULL),(48,2,'#W',NULL),(51,1,'#DE',NULL),(51,2,'#DE',NULL),(53,1,'#RE',NULL),(53,2,'#RE',NULL),(59,1,'a|about|above|after|again|against|all|am|an|and|any|are|aren|as|at|be|because|been|before|being|below|between|both|but|by|can|cannot|could|couldn|did|didn|do|does|doesn|doing|don|down|during|each|few|for|from|further|had|hadn|has|hasn|have|haven|having|he|ll|her|here|hers|herself|him|himself|his|how|ve|if|in|into|is|isn|it|its|itself|let|me|more|most|mustn|my|myself|no|nor|not|of|off|on|once|only|or|other|ought|our|ours|ourselves|out|over|own|same|shan|she|should|shouldn|so|some|such|than|that|the|their|theirs|them|themselves|then|there|these|they|re|this|those|through|to|too|under|until|up|very|was|wasn|we|were|weren|what|when|where|which|while|who|whom|why|with|won|would|wouldn|you|your|yours|yourself|yourselves',NULL),(59,2,'ach|aj|albo|bardzo|bez|bo|byc|ci|cie|ciebie|co|czy|daleko|dla|dlaczego|dlatego|do|dobrze|dokad|dosc|duzo|dwa|dwaj|dwie|dwoje|dzis|dzisiaj|gdyby|gdzie|go|ich|ile|im|inny|ja|ja|jak|jakby|jaki|je|jeden|jedna|jedno|jego|jej|jemu|jesli|jest|jestem|jezeli|juz|kazdy|kiedy|kierunku|kto|ku|lub|ma|maja|mam|mi|mna|mnie|moi|mój|moja|moje|moze|mu|my|na|nam|nami|nas|nasi|nasz|nasza|nasze|natychmiast|nia|nic|nich|nie|niego|niej|niemu|nigdy|nim|nimi|niz|obok|od|okolo|on|ona|one|oni|ono|owszem|po|pod|poniewaz|przed|przedtem|sa|sam|sama|sie|skad|tak|taki|tam|ten|to|toba|tobie|tu|tutaj|twoi|twój|twoja|twoje|ty|wam|wami|was|wasi|wasz|wasza|wasze|we|wiec|wszystko|wtedy|wy|zaden|zawsze|ze',NULL),(84,1,'0',NULL),(84,2,'0',NULL),(90,1,'Dear Customer,\r\n\r\nRegards,\r\nCustomer service',NULL),(90,2,'Szanowny Kliencie,\r\n\r\nZ wyrazami szacunku,\r\nDzial obslugi klienta',NULL),(354,1,'Hotel Prime','2026-02-18 16:25:21'),(354,2,'Hotel Prime','2026-02-18 16:25:21'),(355,1,'A place where comfort and luxury are blended with nature!','2026-02-18 16:25:21'),(355,2,'A place where comfort and luxury are blended with nature!','2026-02-18 16:25:21'),(356,1,'We offer elegant rooms, gourmet dining, and attentive service for a memorable stay.','2026-02-18 16:25:21'),(356,2,'We offer elegant rooms, gourmet dining, and attentive service for a memorable stay.','2026-02-18 16:25:21'),(357,1,'ft','2026-02-18 16:25:21'),(357,2,'ft','2026-02-18 16:25:21'),(372,1,'Explore the Interiors!','2026-02-18 16:25:28'),(372,2,'Explore the Interiors!','2026-02-18 16:25:28'),(373,1,'Step into the sophisticated elegance of our hotel, where every detail is designed with your comfort in mind.','2026-02-18 16:25:28'),(373,2,'Step into the sophisticated elegance of our hotel, where every detail is designed with your comfort in mind.','2026-02-18 16:25:28'),(374,1,'Amenities','2026-02-18 16:25:28'),(374,2,'Amenities','2026-02-18 16:25:28'),(375,1,'Experience luxury at our hotel with top-notch amenities. Enjoy our fitness center, rejuvenating spa, serene outdoor pool, and exquisite dining.','2026-02-18 16:25:28'),(375,2,'Experience luxury at our hotel with top-notch amenities. Enjoy our fitness center, rejuvenating spa, serene outdoor pool, and exquisite dining.','2026-02-18 16:25:28'),(376,1,'Our Rooms','2026-02-18 16:25:28'),(376,2,'Our Rooms','2026-02-18 16:25:28'),(377,1,'Relax in the comfort of our rooms. With modern amenities, serene decor, and stunning lake or city views, each room offers a peaceful retreat for your stay.','2026-02-18 16:25:28'),(377,2,'Relax in the comfort of our rooms. With modern amenities, serene decor, and stunning lake or city views, each room offers a peaceful retreat for your stay.','2026-02-18 16:25:28'),(378,1,'What our guests say?','2026-02-18 16:25:28'),(378,2,'What our guests say?','2026-02-18 16:25:28'),(379,1,'Here are some valuable feedbacks from our guests.','2026-02-18 16:25:28'),(379,2,'Here are some valuable feedbacks from our guests.','2026-02-18 16:25:28');
/*!40000 ALTER TABLE `qlo_configuration_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_connections`
--

DROP TABLE IF EXISTS `qlo_connections`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_connections` (
  `id_connections` int unsigned NOT NULL AUTO_INCREMENT,
  `id_shop_group` int unsigned NOT NULL DEFAULT '1',
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `id_guest` int unsigned NOT NULL,
  `id_page` int unsigned NOT NULL,
  `ip_address` bigint DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `http_referer` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_connections`),
  KEY `id_guest` (`id_guest`),
  KEY `date_add` (`date_add`),
  KEY `id_page` (`id_page`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_connections`
--

LOCK TABLES `qlo_connections` WRITE;
/*!40000 ALTER TABLE `qlo_connections` DISABLE KEYS */;
INSERT INTO `qlo_connections` VALUES (1,1,1,1,1,2130706433,'2026-02-18 16:25:19','https://www.qloapps.com'),(2,1,1,2,1,3232252161,'2026-02-18 16:29:35','http://localhost:8080/install/index.php'),(3,1,1,2,1,3232252161,'2026-02-18 17:47:53',''),(5,1,1,2,3,3232252161,'2026-02-18 19:41:17',''),(6,1,1,2,5,3232252161,'2026-02-18 19:41:17',''),(7,1,1,2,6,3232252161,'2026-02-18 19:41:17',''),(8,1,1,2,4,3232252161,'2026-02-18 19:41:17',''),(9,1,1,2,7,3232252161,'2026-02-18 19:41:17',''),(10,1,1,2,8,3232252161,'2026-02-18 19:41:17',''),(12,1,1,6,2,3232252161,'2026-02-18 19:41:49','http://localhost:8080/en/my-account'),(13,1,1,7,1,3232252161,'2026-02-18 21:07:51',''),(14,1,1,8,1,3232252161,'2026-02-18 21:09:22',''),(15,1,1,9,1,3232252161,'2026-02-18 21:09:56',''),(16,1,1,10,1,3232252161,'2026-02-18 21:10:31',''),(17,1,1,11,1,3232252161,'2026-02-18 21:13:41',''),(18,1,1,12,1,3232252161,'2026-02-18 21:15:36',''),(19,1,1,2,1,3232252161,'2026-02-18 21:17:09',''),(20,1,1,13,1,3232252161,'2026-02-18 21:17:28','http://localhost:8080/en/'),(21,1,1,14,1,3232252161,'2026-02-18 21:21:11',''),(22,1,1,15,1,3232252161,'2026-02-18 21:22:38',''),(23,1,1,16,1,3232252161,'2026-02-18 21:24:41',''),(24,1,1,17,1,3232252161,'2026-02-18 21:25:36',''),(25,1,1,18,1,3232252161,'2026-02-18 21:28:48',''),(26,1,1,19,1,3232252161,'2026-02-18 21:33:03',''),(27,1,1,20,1,3232252161,'2026-02-18 21:34:52',''),(28,1,1,21,1,3232252161,'2026-02-18 21:36:13',''),(29,1,1,22,1,3232252161,'2026-02-18 21:38:51',''),(30,1,1,23,1,3232252161,'2026-02-18 21:41:23',''),(31,1,1,24,1,3232252161,'2026-02-18 22:28:29',''),(32,1,1,25,1,3232252161,'2026-02-18 22:42:31',''),(33,1,1,26,1,3232252161,'2026-02-18 22:53:55','');
/*!40000 ALTER TABLE `qlo_connections` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_connections_page`
--

DROP TABLE IF EXISTS `qlo_connections_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_connections_page` (
  `id_connections` int unsigned NOT NULL,
  `id_page` int unsigned NOT NULL,
  `time_start` datetime NOT NULL,
  `time_end` datetime DEFAULT NULL,
  PRIMARY KEY (`id_connections`,`id_page`,`time_start`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_connections_page`
--

LOCK TABLES `qlo_connections_page` WRITE;
/*!40000 ALTER TABLE `qlo_connections_page` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_connections_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_connections_source`
--

DROP TABLE IF EXISTS `qlo_connections_source`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_connections_source` (
  `id_connections_source` int unsigned NOT NULL AUTO_INCREMENT,
  `id_connections` int unsigned NOT NULL,
  `http_referer` varchar(255) DEFAULT NULL,
  `request_uri` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_connections_source`),
  KEY `connections` (`id_connections`),
  KEY `orderby` (`date_add`),
  KEY `http_referer` (`http_referer`),
  KEY `request_uri` (`request_uri`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_connections_source`
--

LOCK TABLES `qlo_connections_source` WRITE;
/*!40000 ALTER TABLE `qlo_connections_source` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_connections_source` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_contact`
--

DROP TABLE IF EXISTS `qlo_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_contact` (
  `id_contact` int unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(128) NOT NULL,
  `customer_service` tinyint(1) NOT NULL DEFAULT '0',
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_contact`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_contact`
--

LOCK TABLES `qlo_contact` WRITE;
/*!40000 ALTER TABLE `qlo_contact` DISABLE KEYS */;
INSERT INTO `qlo_contact` VALUES (1,'a.hotyanovich@a1qa.com',1,0),(2,'a.hotyanovich@a1qa.com',1,0);
/*!40000 ALTER TABLE `qlo_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_contact_lang`
--

DROP TABLE IF EXISTS `qlo_contact_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_contact_lang` (
  `id_contact` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text,
  PRIMARY KEY (`id_contact`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_contact_lang`
--

LOCK TABLES `qlo_contact_lang` WRITE;
/*!40000 ALTER TABLE `qlo_contact_lang` DISABLE KEYS */;
INSERT INTO `qlo_contact_lang` VALUES (1,1,'Webmaster','If a technical problem occurs on this website'),(1,2,'Webmaster','Jeśli pojawił się problem techniczny na tej stronie'),(2,1,'Customer service','For any query regarding a hotel or a booking'),(2,2,'Obsługa klienta','Wszelkie pytania dotyczące produktów i zamówień');
/*!40000 ALTER TABLE `qlo_contact_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_contact_shop`
--

DROP TABLE IF EXISTS `qlo_contact_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_contact_shop` (
  `id_contact` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  PRIMARY KEY (`id_contact`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_contact_shop`
--

LOCK TABLES `qlo_contact_shop` WRITE;
/*!40000 ALTER TABLE `qlo_contact_shop` DISABLE KEYS */;
INSERT INTO `qlo_contact_shop` VALUES (1,1),(2,1);
/*!40000 ALTER TABLE `qlo_contact_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_country`
--

DROP TABLE IF EXISTS `qlo_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_country` (
  `id_country` int unsigned NOT NULL AUTO_INCREMENT,
  `id_zone` int unsigned NOT NULL,
  `id_currency` int unsigned NOT NULL DEFAULT '0',
  `iso_code` varchar(3) NOT NULL,
  `call_prefix` int NOT NULL DEFAULT '0',
  `active` tinyint unsigned NOT NULL DEFAULT '0',
  `contains_states` tinyint(1) NOT NULL DEFAULT '0',
  `need_identification_number` tinyint(1) NOT NULL DEFAULT '0',
  `need_zip_code` tinyint(1) NOT NULL DEFAULT '1',
  `zip_code_format` varchar(12) NOT NULL DEFAULT '',
  `display_tax_label` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_country`),
  KEY `country_iso_code` (`iso_code`),
  KEY `country_` (`id_zone`)
) ENGINE=InnoDB AUTO_INCREMENT=245 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_country`
--

LOCK TABLES `qlo_country` WRITE;
/*!40000 ALTER TABLE `qlo_country` DISABLE KEYS */;
INSERT INTO `qlo_country` VALUES (1,1,0,'DE',49,0,0,0,1,'NNNNN',1),(2,1,0,'AT',43,0,0,0,1,'NNNN',1),(3,1,0,'BE',32,0,0,0,1,'NNNN',1),(4,2,0,'CA',1,0,1,0,1,'LNL NLN',0),(5,3,0,'CN',86,0,0,0,1,'NNNNNN',1),(6,1,0,'ES',34,0,0,1,1,'NNNNN',1),(7,1,0,'FI',358,0,0,0,1,'NNNNN',1),(8,1,0,'FR',33,0,0,0,1,'NNNNN',1),(9,1,0,'GR',30,0,0,0,1,'NNNNN',1),(10,1,0,'IT',39,0,1,0,1,'NNNNN',1),(11,3,0,'JP',81,0,1,0,1,'NNN-NNNN',1),(12,1,0,'LU',352,0,0,0,1,'NNNN',1),(13,1,0,'NL',31,0,0,0,1,'NNNN LL',1),(14,1,0,'PL',48,1,0,0,1,'NN-NNN',1),(15,1,0,'PT',351,0,0,0,1,'NNNN-NNN',1),(16,1,0,'CZ',420,0,0,0,1,'NNN NN',1),(17,1,0,'GB',44,0,0,0,1,'',1),(18,1,0,'SE',46,0,0,0,1,'NNN NN',1),(19,7,0,'CH',41,0,0,0,1,'NNNN',1),(20,1,0,'DK',45,0,0,0,1,'NNNN',1),(21,2,0,'US',1,0,1,0,1,'NNNNN',0),(22,3,0,'HK',852,0,0,0,0,'',1),(23,7,0,'NO',47,0,0,0,1,'NNNN',1),(24,5,0,'AU',61,0,0,0,1,'NNNN',1),(25,3,0,'SG',65,0,0,0,1,'NNNNNN',1),(26,1,0,'IE',353,0,0,0,0,'',1),(27,5,0,'NZ',64,0,0,0,1,'NNNN',1),(28,3,0,'KR',82,0,0,0,1,'NNNNN',1),(29,3,0,'IL',972,0,0,0,1,'NNNNNNN',1),(30,4,0,'ZA',27,0,0,0,1,'NNNN',1),(31,4,0,'NG',234,0,0,0,1,'',1),(32,4,0,'CI',225,0,0,0,1,'',1),(33,4,0,'TG',228,0,0,0,1,'',1),(34,6,0,'BO',591,0,0,0,1,'',1),(35,4,0,'MU',230,0,0,0,1,'',1),(36,1,0,'RO',40,0,0,0,1,'NNNNNN',1),(37,1,0,'SK',421,0,0,0,1,'NNN NN',1),(38,4,0,'DZ',213,0,0,0,1,'NNNNN',1),(39,2,0,'AS',0,0,0,0,1,'',1),(40,7,0,'AD',376,0,0,0,1,'CNNN',1),(41,4,0,'AO',244,0,0,0,0,'',1),(42,8,0,'AI',0,0,0,0,1,'',1),(43,2,0,'AG',0,0,0,0,1,'',1),(44,6,0,'AR',54,0,1,0,1,'LNNNNLLL',1),(45,3,0,'AM',374,0,0,0,1,'NNNN',1),(46,8,0,'AW',297,0,0,0,1,'',1),(47,3,0,'AZ',994,0,0,0,1,'CNNNN',1),(48,2,0,'BS',0,0,0,0,1,'',1),(49,3,0,'BH',973,0,0,0,1,'',1),(50,3,0,'BD',880,0,0,0,1,'NNNN',1),(51,2,0,'BB',0,0,0,0,1,'CNNNNN',1),(52,7,0,'BY',0,0,0,0,1,'NNNNNN',1),(53,8,0,'BZ',501,0,0,0,0,'',1),(54,4,0,'BJ',229,0,0,0,0,'',1),(55,2,0,'BM',0,0,0,0,1,'',1),(56,3,0,'BT',975,0,0,0,1,'',1),(57,4,0,'BW',267,0,0,0,1,'',1),(58,6,0,'BR',55,0,0,0,1,'NNNNN-NNN',1),(59,3,0,'BN',673,0,0,0,1,'LLNNNN',1),(60,4,0,'BF',226,0,0,0,1,'',1),(61,3,0,'MM',95,0,0,0,1,'',1),(62,4,0,'BI',257,0,0,0,1,'',1),(63,3,0,'KH',855,0,0,0,1,'NNNNN',1),(64,4,0,'CM',237,0,0,0,1,'',1),(65,4,0,'CV',238,0,0,0,1,'NNNN',1),(66,4,0,'CF',236,0,0,0,1,'',1),(67,4,0,'TD',235,0,0,0,1,'',1),(68,6,0,'CL',56,0,0,0,1,'NNN-NNNN',1),(69,6,0,'CO',57,0,0,0,1,'NNNNNN',1),(70,4,0,'KM',269,0,0,0,1,'',1),(71,4,0,'CD',242,0,0,0,1,'',1),(72,4,0,'CG',243,0,0,0,1,'',1),(73,8,0,'CR',506,0,0,0,1,'NNNNN',1),(74,7,0,'HR',385,0,0,0,1,'NNNNN',1),(75,8,0,'CU',53,0,0,0,1,'',1),(76,1,0,'CY',357,0,0,0,1,'NNNN',1),(77,4,0,'DJ',253,0,0,0,1,'',1),(78,8,0,'DM',0,0,0,0,1,'',1),(79,8,0,'DO',0,0,0,0,1,'',1),(80,3,0,'TL',670,0,0,0,1,'',1),(81,6,0,'EC',593,0,0,0,1,'CNNNNNN',1),(82,4,0,'EG',20,0,0,0,1,'NNNNN',1),(83,8,0,'SV',503,0,0,0,1,'',1),(84,4,0,'GQ',240,0,0,0,1,'',1),(85,4,0,'ER',291,0,0,0,1,'',1),(86,1,0,'EE',372,0,0,0,1,'NNNNN',1),(87,4,0,'ET',251,0,0,0,1,'',1),(88,8,0,'FK',0,0,0,0,1,'LLLL NLL',1),(89,7,0,'FO',298,0,0,0,1,'',1),(90,5,0,'FJ',679,0,0,0,1,'',1),(91,4,0,'GA',241,0,0,0,1,'',1),(92,4,0,'GM',220,0,0,0,1,'',1),(93,3,0,'GE',995,0,0,0,1,'NNNN',1),(94,4,0,'GH',233,0,0,0,1,'',1),(95,8,0,'GD',0,0,0,0,1,'',1),(96,7,0,'GL',299,0,0,0,1,'',1),(97,7,0,'GI',350,0,0,0,1,'',1),(98,8,0,'GP',590,0,0,0,1,'',1),(99,5,0,'GU',0,0,0,0,1,'',1),(100,8,0,'GT',502,0,0,0,1,'',1),(101,7,0,'GG',0,0,0,0,1,'LLN NLL',1),(102,4,0,'GN',224,0,0,0,1,'',1),(103,4,0,'GW',245,0,0,0,1,'',1),(104,6,0,'GY',592,0,0,0,1,'',1),(105,8,0,'HT',509,0,0,0,1,'',1),(106,5,0,'HM',0,0,0,0,1,'',1),(107,7,0,'VA',379,0,0,0,1,'NNNNN',1),(108,8,0,'HN',504,0,0,0,1,'',1),(109,7,0,'IS',354,0,0,0,1,'NNN',1),(110,3,0,'IN',91,0,0,0,1,'NNN NNN',1),(111,3,0,'ID',62,0,1,0,1,'NNNNN',1),(112,3,0,'IR',98,0,0,0,1,'NNNNN-NNNNN',1),(113,3,0,'IQ',964,0,0,0,1,'NNNNN',1),(114,7,0,'IM',0,0,0,0,1,'CN NLL',1),(115,8,0,'JM',0,0,0,0,1,'',1),(116,7,0,'JE',0,0,0,0,1,'CN NLL',1),(117,3,0,'JO',962,0,0,0,1,'',1),(118,3,0,'KZ',7,0,0,0,1,'NNNNNN',1),(119,4,0,'KE',254,0,0,0,1,'',1),(120,5,0,'KI',686,0,0,0,1,'',1),(121,3,0,'KP',850,0,0,0,1,'',1),(122,3,0,'KW',965,0,0,0,1,'',1),(123,3,0,'KG',996,0,0,0,1,'',1),(124,3,0,'LA',856,0,0,0,1,'',1),(125,1,0,'LV',371,0,0,0,1,'C-NNNN',1),(126,3,0,'LB',961,0,0,0,1,'',1),(127,4,0,'LS',266,0,0,0,1,'',1),(128,4,0,'LR',231,0,0,0,1,'',1),(129,4,0,'LY',218,0,0,0,1,'',1),(130,1,0,'LI',423,0,0,0,1,'NNNN',1),(131,1,0,'LT',370,0,0,0,1,'NNNNN',1),(132,3,0,'MO',853,0,0,0,0,'',1),(133,7,0,'MK',389,0,0,0,1,'',1),(134,4,0,'MG',261,0,0,0,1,'',1),(135,4,0,'MW',265,0,0,0,1,'',1),(136,3,0,'MY',60,0,0,0,1,'NNNNN',1),(137,3,0,'MV',960,0,0,0,1,'',1),(138,4,0,'ML',223,0,0,0,1,'',1),(139,1,0,'MT',356,0,0,0,1,'LLL NNNN',1),(140,5,0,'MH',692,0,0,0,1,'',1),(141,8,0,'MQ',596,0,0,0,1,'',1),(142,4,0,'MR',222,0,0,0,1,'',1),(143,1,0,'HU',36,0,0,0,1,'NNNN',1),(144,4,0,'YT',262,0,0,0,1,'',1),(145,2,0,'MX',52,0,1,1,1,'NNNNN',1),(146,5,0,'FM',691,0,0,0,1,'',1),(147,7,0,'MD',373,0,0,0,1,'C-NNNN',1),(148,7,0,'MC',377,0,0,0,1,'980NN',1),(149,3,0,'MN',976,0,0,0,1,'',1),(150,7,0,'ME',382,0,0,0,1,'NNNNN',1),(151,8,0,'MS',0,0,0,0,1,'',1),(152,4,0,'MA',212,0,0,0,1,'NNNNN',1),(153,4,0,'MZ',258,0,0,0,1,'',1),(154,4,0,'NA',264,0,0,0,1,'',1),(155,5,0,'NR',674,0,0,0,1,'',1),(156,3,0,'NP',977,0,0,0,1,'',1),(157,8,0,'AN',599,0,0,0,1,'',1),(158,5,0,'NC',687,0,0,0,1,'',1),(159,8,0,'NI',505,0,0,0,1,'NNNNNN',1),(160,4,0,'NE',227,0,0,0,1,'',1),(161,5,0,'NU',683,0,0,0,1,'',1),(162,5,0,'NF',0,0,0,0,1,'',1),(163,5,0,'MP',0,0,0,0,1,'',1),(164,3,0,'OM',968,0,0,0,1,'',1),(165,3,0,'PK',92,0,0,0,1,'',1),(166,5,0,'PW',680,0,0,0,1,'',1),(167,3,0,'PS',0,0,0,0,1,'',1),(168,8,0,'PA',507,0,0,0,1,'NNNNNN',1),(169,5,0,'PG',675,0,0,0,1,'',1),(170,6,0,'PY',595,0,0,0,1,'',1),(171,6,0,'PE',51,0,0,0,1,'',1),(172,3,0,'PH',63,0,0,0,1,'NNNN',1),(173,5,0,'PN',0,0,0,0,1,'LLLL NLL',1),(174,8,0,'PR',0,0,0,0,1,'NNNNN',1),(175,3,0,'QA',974,0,0,0,1,'',1),(176,4,0,'RE',262,0,0,0,1,'',1),(177,7,0,'RU',7,0,0,0,1,'NNNNNN',1),(178,4,0,'RW',250,0,0,0,1,'',1),(179,8,0,'BL',0,0,0,0,1,'',1),(180,8,0,'KN',0,0,0,0,1,'',1),(181,8,0,'LC',0,0,0,0,1,'',1),(182,8,0,'MF',0,0,0,0,1,'',1),(183,8,0,'PM',508,0,0,0,1,'',1),(184,8,0,'VC',0,0,0,0,1,'',1),(185,5,0,'WS',685,0,0,0,1,'',1),(186,7,0,'SM',378,0,0,0,1,'NNNNN',1),(187,4,0,'ST',239,0,0,0,1,'',1),(188,3,0,'SA',966,0,0,0,1,'',1),(189,4,0,'SN',221,0,0,0,1,'',1),(190,7,0,'RS',381,0,0,0,1,'NNNNN',1),(191,4,0,'SC',248,0,0,0,1,'',1),(192,4,0,'SL',232,0,0,0,1,'',1),(193,1,0,'SI',386,0,0,0,1,'C-NNNN',1),(194,5,0,'SB',677,0,0,0,1,'',1),(195,4,0,'SO',252,0,0,0,1,'',1),(196,8,0,'GS',0,0,0,0,1,'LLLL NLL',1),(197,3,0,'LK',94,0,0,0,1,'NNNNN',1),(198,4,0,'SD',249,0,0,0,1,'',1),(199,8,0,'SR',597,0,0,0,1,'',1),(200,7,0,'SJ',0,0,0,0,1,'',1),(201,4,0,'SZ',268,0,0,0,1,'',1),(202,3,0,'SY',963,0,0,0,1,'',1),(203,3,0,'TW',886,0,0,0,1,'NNNNN',1),(204,3,0,'TJ',992,0,0,0,1,'',1),(205,4,0,'TZ',255,0,0,0,1,'',1),(206,3,0,'TH',66,0,0,0,1,'NNNNN',1),(207,5,0,'TK',690,0,0,0,1,'',1),(208,5,0,'TO',676,0,0,0,1,'',1),(209,6,0,'TT',0,0,0,0,1,'',1),(210,4,0,'TN',216,0,0,0,1,'',1),(211,7,0,'TR',90,0,0,0,1,'NNNNN',1),(212,3,0,'TM',993,0,0,0,1,'',1),(213,8,0,'TC',0,0,0,0,1,'LLLL NLL',1),(214,5,0,'TV',688,0,0,0,1,'',1),(215,4,0,'UG',256,0,0,0,1,'',1),(216,1,0,'UA',380,0,0,0,1,'NNNNN',1),(217,3,0,'AE',971,0,0,0,1,'',1),(218,6,0,'UY',598,0,0,0,1,'',1),(219,3,0,'UZ',998,0,0,0,1,'',1),(220,5,0,'VU',678,0,0,0,1,'',1),(221,6,0,'VE',58,0,0,0,1,'',1),(222,3,0,'VN',84,0,0,0,1,'NNNNNN',1),(223,2,0,'VG',0,0,0,0,1,'CNNNN',1),(224,2,0,'VI',0,0,0,0,1,'',1),(225,5,0,'WF',681,0,0,0,1,'',1),(226,4,0,'EH',0,0,0,0,1,'',1),(227,3,0,'YE',967,0,0,0,1,'',1),(228,4,0,'ZM',260,0,0,0,1,'',1),(229,4,0,'ZW',263,0,0,0,1,'',1),(230,7,0,'AL',355,0,0,0,1,'NNNN',1),(231,3,0,'AF',93,0,0,0,1,'NNNN',1),(232,5,0,'AQ',0,0,0,0,1,'',1),(233,1,0,'BA',387,0,0,0,1,'',1),(234,5,0,'BV',0,0,0,0,1,'',1),(235,5,0,'IO',0,0,0,0,1,'LLLL NLL',1),(236,1,0,'BG',359,0,0,0,1,'NNNN',1),(237,8,0,'KY',0,0,0,0,1,'',1),(238,3,0,'CX',0,0,0,0,1,'',1),(239,3,0,'CC',0,0,0,0,1,'',1),(240,5,0,'CK',682,0,0,0,1,'',1),(241,6,0,'GF',594,0,0,0,1,'',1),(242,5,0,'PF',689,0,0,0,1,'',1),(243,5,0,'TF',0,0,0,0,1,'',1),(244,7,0,'AX',0,0,0,0,1,'NNNNN',1);
/*!40000 ALTER TABLE `qlo_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_country_lang`
--

DROP TABLE IF EXISTS `qlo_country_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_country_lang` (
  `id_country` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id_country`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_country_lang`
--

LOCK TABLES `qlo_country_lang` WRITE;
/*!40000 ALTER TABLE `qlo_country_lang` DISABLE KEYS */;
INSERT INTO `qlo_country_lang` VALUES (1,1,'Germany'),(1,2,'Niemcy'),(2,1,'Austria'),(2,2,'Austria'),(3,1,'Belgium'),(3,2,'Belgia'),(4,1,'Canada'),(4,2,'Kanada'),(5,1,'China'),(5,2,'Chiny'),(6,1,'Spain'),(6,2,'Hiszpania'),(7,1,'Finland'),(7,2,'Finlandia'),(8,1,'France'),(8,2,'Francja'),(9,1,'Greece'),(9,2,'Grecja'),(10,1,'Italy'),(10,2,'Włochy'),(11,1,'Japan'),(11,2,'Japonia'),(12,1,'Luxemburg'),(12,2,'Luksemburg'),(13,1,'Netherlands'),(13,2,'Holandia'),(14,1,'Poland'),(14,2,'Polska'),(15,1,'Portugal'),(15,2,'Portugalia'),(16,1,'Czech Republic'),(16,2,'Czechy'),(17,1,'United Kingdom'),(17,2,'Wielka Brytania'),(18,1,'Sweden'),(18,2,'Szwecja'),(19,1,'Switzerland'),(19,2,'Szwajcaria'),(20,1,'Denmark'),(20,2,'Dania'),(21,1,'United States'),(21,2,'Stany Zjednoczone'),(22,1,'HongKong'),(22,2,'Hongkong'),(23,1,'Norway'),(23,2,'Norwegia'),(24,1,'Australia'),(24,2,'Australia'),(25,1,'Singapore'),(25,2,'Singapur'),(26,1,'Ireland'),(26,2,'Irlandia'),(27,1,'New Zealand'),(27,2,'Nowa Zelandia'),(28,1,'South Korea'),(28,2,'Korea Południowa'),(29,1,'Israel'),(29,2,'Izrael'),(30,1,'South Africa'),(30,2,'Republika Południowej Afryki'),(31,1,'Nigeria'),(31,2,'Nigeria'),(32,1,'Ivory Coast'),(32,2,'Wybrzeże Kości Słoniowej'),(33,1,'Togo'),(33,2,'Togo'),(34,1,'Bolivia'),(34,2,'Boliwia'),(35,1,'Mauritius'),(35,2,'Mauritius'),(36,1,'Romania'),(36,2,'Rumunia'),(37,1,'Slovakia'),(37,2,'Słowacja'),(38,1,'Algeria'),(38,2,'Algieria'),(39,1,'American Samoa'),(39,2,'Samoa Amerykańskie'),(40,1,'Andorra'),(40,2,'Andora'),(41,1,'Angola'),(41,2,'Angola'),(42,1,'Anguilla'),(42,2,'Anguilla'),(43,1,'Antigua and Barbuda'),(43,2,'Antigua i Barbuda'),(44,1,'Argentina'),(44,2,'Argentyna'),(45,1,'Armenia'),(45,2,'Armenia'),(46,1,'Aruba'),(46,2,'Aruba'),(47,1,'Azerbaijan'),(47,2,'Azerbejdżan'),(48,1,'Bahamas'),(48,2,'Bahamy'),(49,1,'Bahrain'),(49,2,'Bahrajn'),(50,1,'Bangladesh'),(50,2,'Bangladesz'),(51,1,'Barbados'),(51,2,'Barbados'),(52,1,'Belarus'),(52,2,'Białoruś'),(53,1,'Belize'),(53,2,'Belize'),(54,1,'Benin'),(54,2,'Benin'),(55,1,'Bermuda'),(55,2,'Bermudy'),(56,1,'Bhutan'),(56,2,'Bhutan'),(57,1,'Botswana'),(57,2,'Botswana'),(58,1,'Brazil'),(58,2,'Brazylia'),(59,1,'Brunei'),(59,2,'Brunei'),(60,1,'Burkina Faso'),(60,2,'Burkina Faso'),(61,1,'Burma (Myanmar)'),(61,2,'Mjanma'),(62,1,'Burundi'),(62,2,'Burundi'),(63,1,'Cambodia'),(63,2,'Kambodża'),(64,1,'Cameroon'),(64,2,'Kamerun'),(65,1,'Cape Verde'),(65,2,'Republika Zielonego Przylądka'),(66,1,'Central African Republic'),(66,2,'Republika Środkowoafrykańska'),(67,1,'Chad'),(67,2,'Czad'),(68,1,'Chile'),(68,2,'Chile'),(69,1,'Colombia'),(69,2,'Kolumbia'),(70,1,'Comoros'),(70,2,'Komory'),(71,1,'Congo, Dem. Republic'),(71,2,'Demokratyczna Republika Konga'),(72,1,'Congo, Republic'),(72,2,'Kongo'),(73,1,'Costa Rica'),(73,2,'Kostaryka'),(74,1,'Croatia'),(74,2,'Chorwacja'),(75,1,'Cuba'),(75,2,'Kuba'),(76,1,'Cyprus'),(76,2,'Cypr'),(77,1,'Djibouti'),(77,2,'Dżibuti'),(78,1,'Dominica'),(78,2,'Dominika'),(79,1,'Dominican Republic'),(79,2,'Dominikana'),(80,1,'East Timor'),(80,2,'Timor Wschodni'),(81,1,'Ecuador'),(81,2,'Ekwador'),(82,1,'Egypt'),(82,2,'Egipt'),(83,1,'El Salvador'),(83,2,'Salwador'),(84,1,'Equatorial Guinea'),(84,2,'Gwinea Równikowa'),(85,1,'Eritrea'),(85,2,'Erytrea'),(86,1,'Estonia'),(86,2,'Estonia'),(87,1,'Ethiopia'),(87,2,'Etiopia'),(88,1,'Falkland Islands'),(88,2,'Falklandy'),(89,1,'Faroe Islands'),(89,2,'Wyspy Owcze'),(90,1,'Fiji'),(90,2,'Fidżi'),(91,1,'Gabon'),(91,2,'Gabon'),(92,1,'Gambia'),(92,2,'Gambia'),(93,1,'Georgia'),(93,2,'Gruzja'),(94,1,'Ghana'),(94,2,'Ghana'),(95,1,'Grenada'),(95,2,'Grenada'),(96,1,'Greenland'),(96,2,'Grenlandia'),(97,1,'Gibraltar'),(97,2,'Gibraltar'),(98,1,'Guadeloupe'),(98,2,'Gwadelupa'),(99,1,'Guam'),(99,2,'Guam'),(100,1,'Guatemala'),(100,2,'Gwatemala'),(101,1,'Guernsey'),(101,2,'Guernsey'),(102,1,'Guinea'),(102,2,'Gwinea'),(103,1,'Guinea-Bissau'),(103,2,'Gwinea Bissau'),(104,1,'Guyana'),(104,2,'Gujana'),(105,1,'Haiti'),(105,2,'Haiti'),(106,1,'Heard Island and McDonald Islands'),(106,2,'Wyspy Heard i McDonalda'),(107,1,'Vatican City State'),(107,2,'Watykan'),(108,1,'Honduras'),(108,2,'Honduras'),(109,1,'Iceland'),(109,2,'Islandia'),(110,1,'India'),(110,2,'Indie'),(111,1,'Indonesia'),(111,2,'Indonezja'),(112,1,'Iran'),(112,2,'Iran'),(113,1,'Iraq'),(113,2,'Irak'),(114,1,'Man Island'),(114,2,'Wyspa Man'),(115,1,'Jamaica'),(115,2,'Jamajka'),(116,1,'Jersey'),(116,2,'Jersey'),(117,1,'Jordan'),(117,2,'Jordania'),(118,1,'Kazakhstan'),(118,2,'Kazachstan'),(119,1,'Kenya'),(119,2,'Kenia'),(120,1,'Kiribati'),(120,2,'Kiribati'),(121,1,'Korea, Dem. Republic of'),(121,2,'Korea Północna'),(122,1,'Kuwait'),(122,2,'Kuwejt'),(123,1,'Kyrgyzstan'),(123,2,'Kirgistan'),(124,1,'Laos'),(124,2,'Laos'),(125,1,'Latvia'),(125,2,'Łotwa'),(126,1,'Lebanon'),(126,2,'Liban'),(127,1,'Lesotho'),(127,2,'Lesotho'),(128,1,'Liberia'),(128,2,'Liberia'),(129,1,'Libya'),(129,2,'Libia'),(130,1,'Liechtenstein'),(130,2,'Liechtenstein'),(131,1,'Lithuania'),(131,2,'Litwa'),(132,1,'Macau'),(132,2,'Makau'),(133,1,'Macedonia'),(133,2,'Macedonia'),(134,1,'Madagascar'),(134,2,'Madagaskar'),(135,1,'Malawi'),(135,2,'Malawi'),(136,1,'Malaysia'),(136,2,'Malezja'),(137,1,'Maldives'),(137,2,'Malediwy'),(138,1,'Mali'),(138,2,'Mali'),(139,1,'Malta'),(139,2,'Malta'),(140,1,'Marshall Islands'),(140,2,'Wyspy Marshalla'),(141,1,'Martinique'),(141,2,'Martynika'),(142,1,'Mauritania'),(142,2,'Mauretania'),(143,1,'Hungary'),(143,2,'Węgry'),(144,1,'Mayotte'),(144,2,'Majotta'),(145,1,'Mexico'),(145,2,'Meksyk'),(146,1,'Micronesia'),(146,2,'Mikronezja'),(147,1,'Moldova'),(147,2,'Mołdawia'),(148,1,'Monaco'),(148,2,'Monako'),(149,1,'Mongolia'),(149,2,'Mongolia'),(150,1,'Montenegro'),(150,2,'Czarnogóra'),(151,1,'Montserrat'),(151,2,'Montserrat'),(152,1,'Morocco'),(152,2,'Maroko'),(153,1,'Mozambique'),(153,2,'Mozambik'),(154,1,'Namibia'),(154,2,'Namibia'),(155,1,'Nauru'),(155,2,'Nauru'),(156,1,'Nepal'),(156,2,'Nepal'),(157,1,'Netherlands Antilles'),(157,2,'Netherlands Antilles'),(158,1,'New Caledonia'),(158,2,'Nowa Kaledonia'),(159,1,'Nicaragua'),(159,2,'Nikaragua'),(160,1,'Niger'),(160,2,'Niger'),(161,1,'Niue'),(161,2,'Niue'),(162,1,'Norfolk Island'),(162,2,'Norfolk'),(163,1,'Northern Mariana Islands'),(163,2,'Mariany Północne'),(164,1,'Oman'),(164,2,'Oman'),(165,1,'Pakistan'),(165,2,'Pakistan'),(166,1,'Palau'),(166,2,'Palau'),(167,1,'Palestinian Territories'),(167,2,'Palestyna'),(168,1,'Panama'),(168,2,'Panama'),(169,1,'Papua New Guinea'),(169,2,'Papua-Nowa Gwinea'),(170,1,'Paraguay'),(170,2,'Paragwaj'),(171,1,'Peru'),(171,2,'Peru'),(172,1,'Philippines'),(172,2,'Filipiny'),(173,1,'Pitcairn'),(173,2,'Pitcairn'),(174,1,'Puerto Rico'),(174,2,'Portoryko'),(175,1,'Qatar'),(175,2,'Katar'),(176,1,'Reunion Island'),(176,2,'Reunion'),(177,1,'Russian Federation'),(177,2,'Rosja'),(178,1,'Rwanda'),(178,2,'Rwanda'),(179,1,'Saint Barthelemy'),(179,2,'Saint-Barthélemy'),(180,1,'Saint Kitts and Nevis'),(180,2,'Saint Kitts i Nevis'),(181,1,'Saint Lucia'),(181,2,'Saint Lucia'),(182,1,'Saint Martin'),(182,2,'Saint-Martin'),(183,1,'Saint Pierre and Miquelon'),(183,2,'Saint-Pierre i Miquelon'),(184,1,'Saint Vincent and the Grenadines'),(184,2,'Saint Vincent i Grenadyny'),(185,1,'Samoa'),(185,2,'Samoa'),(186,1,'San Marino'),(186,2,'San Marino'),(187,1,'São Tomé and Príncipe'),(187,2,'Wyspy Świętego Tomasza i Książęca'),(188,1,'Saudi Arabia'),(188,2,'Arabia Saudyjska'),(189,1,'Senegal'),(189,2,'Senegal'),(190,1,'Serbia'),(190,2,'Serbia'),(191,1,'Seychelles'),(191,2,'Seszele'),(192,1,'Sierra Leone'),(192,2,'Sierra Leone'),(193,1,'Slovenia'),(193,2,'Słowenia'),(194,1,'Solomon Islands'),(194,2,'Wyspy Salomona'),(195,1,'Somalia'),(195,2,'Somalia'),(196,1,'South Georgia and the South Sandwich Islands'),(196,2,'Georgia Południowa i Sandwich Południowy'),(197,1,'Sri Lanka'),(197,2,'Sri Lanka'),(198,1,'Sudan'),(198,2,'Sudan'),(199,1,'Suriname'),(199,2,'Surinam'),(200,1,'Svalbard and Jan Mayen'),(200,2,'Svalbard i Jan Mayen'),(201,1,'Swaziland'),(201,2,'Suazi'),(202,1,'Syria'),(202,2,'Syria'),(203,1,'Taiwan'),(203,2,'Tajwan'),(204,1,'Tajikistan'),(204,2,'Tadżykistan'),(205,1,'Tanzania'),(205,2,'Tanzania'),(206,1,'Thailand'),(206,2,'Tajlandia'),(207,1,'Tokelau'),(207,2,'Tokelau'),(208,1,'Tonga'),(208,2,'Tonga'),(209,1,'Trinidad and Tobago'),(209,2,'Trynidad i Tobago'),(210,1,'Tunisia'),(210,2,'Tunezja'),(211,1,'Turkey'),(211,2,'Turcja'),(212,1,'Turkmenistan'),(212,2,'Turkmenistan'),(213,1,'Turks and Caicos Islands'),(213,2,'Turks i Caicos'),(214,1,'Tuvalu'),(214,2,'Tuvalu'),(215,1,'Uganda'),(215,2,'Uganda'),(216,1,'Ukraine'),(216,2,'Ukraina'),(217,1,'United Arab Emirates'),(217,2,'Zjednoczone Emiraty Arabskie'),(218,1,'Uruguay'),(218,2,'Urugwaj'),(219,1,'Uzbekistan'),(219,2,'Uzbekistan'),(220,1,'Vanuatu'),(220,2,'Vanuatu'),(221,1,'Venezuela'),(221,2,'Wenezuela'),(222,1,'Vietnam'),(222,2,'Wietnam'),(223,1,'Virgin Islands (British)'),(223,2,'Brytyjskie Wyspy Dziewicze'),(224,1,'Virgin Islands (U.S.)'),(224,2,'Wyspy Dziewicze Stanów Zjednoczonych'),(225,1,'Wallis and Futuna'),(225,2,'Wallis i Futuna'),(226,1,'Western Sahara'),(226,2,'Sahara Zachodnia'),(227,1,'Yemen'),(227,2,'Jemen'),(228,1,'Zambia'),(228,2,'Zambia'),(229,1,'Zimbabwe'),(229,2,'Zimbabwe'),(230,1,'Albania'),(230,2,'Albania'),(231,1,'Afghanistan'),(231,2,'Afganistan'),(232,1,'Antarctica'),(232,2,'Antarktyka'),(233,1,'Bosnia and Herzegovina'),(233,2,'Bośnia i Hercegowina'),(234,1,'Bouvet Island'),(234,2,'Wyspa Bouveta'),(235,1,'British Indian Ocean Territory'),(235,2,'Brytyjskie Terytorium Oceanu Indyjskiego'),(236,1,'Bulgaria'),(236,2,'Bułgaria'),(237,1,'Cayman Islands'),(237,2,'Kajmany'),(238,1,'Christmas Island'),(238,2,'Wyspa Bożego Narodzenia'),(239,1,'Cocos (Keeling) Islands'),(239,2,'Wyspy Kokosowe'),(240,1,'Cook Islands'),(240,2,'Wyspy Cooka'),(241,1,'French Guiana'),(241,2,'Gujana Francuska'),(242,1,'French Polynesia'),(242,2,'Polinezja Francuska'),(243,1,'French Southern Territories'),(243,2,'Francuskie Terytoria Południowe i Antarktyczne'),(244,1,'Åland Islands'),(244,2,'Wyspy Alandzkie');
/*!40000 ALTER TABLE `qlo_country_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_country_shop`
--

DROP TABLE IF EXISTS `qlo_country_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_country_shop` (
  `id_country` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  PRIMARY KEY (`id_country`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_country_shop`
--

LOCK TABLES `qlo_country_shop` WRITE;
/*!40000 ALTER TABLE `qlo_country_shop` DISABLE KEYS */;
INSERT INTO `qlo_country_shop` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(22,1),(23,1),(24,1),(25,1),(26,1),(27,1),(28,1),(29,1),(30,1),(31,1),(32,1),(33,1),(34,1),(35,1),(36,1),(37,1),(38,1),(39,1),(40,1),(41,1),(42,1),(43,1),(44,1),(45,1),(46,1),(47,1),(48,1),(49,1),(50,1),(51,1),(52,1),(53,1),(54,1),(55,1),(56,1),(57,1),(58,1),(59,1),(60,1),(61,1),(62,1),(63,1),(64,1),(65,1),(66,1),(67,1),(68,1),(69,1),(70,1),(71,1),(72,1),(73,1),(74,1),(75,1),(76,1),(77,1),(78,1),(79,1),(80,1),(81,1),(82,1),(83,1),(84,1),(85,1),(86,1),(87,1),(88,1),(89,1),(90,1),(91,1),(92,1),(93,1),(94,1),(95,1),(96,1),(97,1),(98,1),(99,1),(100,1),(101,1),(102,1),(103,1),(104,1),(105,1),(106,1),(107,1),(108,1),(109,1),(110,1),(111,1),(112,1),(113,1),(114,1),(115,1),(116,1),(117,1),(118,1),(119,1),(120,1),(121,1),(122,1),(123,1),(124,1),(125,1),(126,1),(127,1),(128,1),(129,1),(130,1),(131,1),(132,1),(133,1),(134,1),(135,1),(136,1),(137,1),(138,1),(139,1),(140,1),(141,1),(142,1),(143,1),(144,1),(145,1),(146,1),(147,1),(148,1),(149,1),(150,1),(151,1),(152,1),(153,1),(154,1),(155,1),(156,1),(157,1),(158,1),(159,1),(160,1),(161,1),(162,1),(163,1),(164,1),(165,1),(166,1),(167,1),(168,1),(169,1),(170,1),(171,1),(172,1),(173,1),(174,1),(175,1),(176,1),(177,1),(178,1),(179,1),(180,1),(181,1),(182,1),(183,1),(184,1),(185,1),(186,1),(187,1),(188,1),(189,1),(190,1),(191,1),(192,1),(193,1),(194,1),(195,1),(196,1),(197,1),(198,1),(199,1),(200,1),(201,1),(202,1),(203,1),(204,1),(205,1),(206,1),(207,1),(208,1),(209,1),(210,1),(211,1),(212,1),(213,1),(214,1),(215,1),(216,1),(217,1),(218,1),(219,1),(220,1),(221,1),(222,1),(223,1),(224,1),(225,1),(226,1),(227,1),(228,1),(229,1),(230,1),(231,1),(232,1),(233,1),(234,1),(235,1),(236,1),(237,1),(238,1),(239,1),(240,1),(241,1),(242,1),(243,1),(244,1);
/*!40000 ALTER TABLE `qlo_country_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_currency`
--

DROP TABLE IF EXISTS `qlo_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_currency` (
  `id_currency` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `iso_code` varchar(3) NOT NULL DEFAULT '0',
  `iso_code_num` varchar(3) NOT NULL DEFAULT '0',
  `sign` varchar(8) NOT NULL,
  `blank` tinyint unsigned NOT NULL DEFAULT '0',
  `format` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned NOT NULL DEFAULT '1',
  `conversion_rate` decimal(13,6) NOT NULL,
  `deleted` tinyint unsigned NOT NULL DEFAULT '0',
  `active` tinyint unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_currency`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_currency`
--

LOCK TABLES `qlo_currency` WRITE;
/*!40000 ALTER TABLE `qlo_currency` DISABLE KEYS */;
INSERT INTO `qlo_currency` VALUES (1,'Złoty','PLN','985','zł',1,2,1,1.000000,0,1);
/*!40000 ALTER TABLE `qlo_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_currency_shop`
--

DROP TABLE IF EXISTS `qlo_currency_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_currency_shop` (
  `id_currency` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  `conversion_rate` decimal(13,6) NOT NULL,
  PRIMARY KEY (`id_currency`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_currency_shop`
--

LOCK TABLES `qlo_currency_shop` WRITE;
/*!40000 ALTER TABLE `qlo_currency_shop` DISABLE KEYS */;
INSERT INTO `qlo_currency_shop` VALUES (1,1,1.000000);
/*!40000 ALTER TABLE `qlo_currency_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_customer`
--

DROP TABLE IF EXISTS `qlo_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_customer` (
  `id_customer` int unsigned NOT NULL AUTO_INCREMENT,
  `id_shop_group` int unsigned NOT NULL DEFAULT '1',
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `id_gender` int unsigned NOT NULL,
  `id_default_group` int unsigned NOT NULL DEFAULT '1',
  `id_lang` int unsigned DEFAULT NULL,
  `id_risk` int unsigned NOT NULL DEFAULT '1',
  `company` varchar(64) DEFAULT NULL,
  `siret` varchar(14) DEFAULT NULL,
  `ape` varchar(5) DEFAULT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(128) NOT NULL,
  `passwd` varchar(32) NOT NULL,
  `last_passwd_gen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `birthday` date DEFAULT NULL,
  `newsletter` tinyint unsigned NOT NULL DEFAULT '0',
  `ip_registration_newsletter` varchar(15) DEFAULT NULL,
  `newsletter_date_add` datetime DEFAULT NULL,
  `optin` tinyint unsigned NOT NULL DEFAULT '0',
  `website` varchar(128) DEFAULT NULL,
  `outstanding_allow_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `show_public_prices` tinyint unsigned NOT NULL DEFAULT '0',
  `max_payment_days` int unsigned NOT NULL DEFAULT '60',
  `secure_key` varchar(32) NOT NULL DEFAULT '-1',
  `note` text,
  `phone` varchar(32) DEFAULT NULL,
  `active` tinyint unsigned NOT NULL DEFAULT '0',
  `is_guest` tinyint(1) NOT NULL DEFAULT '0',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_customer`),
  KEY `customer_email` (`email`),
  KEY `customer_login` (`email`,`passwd`),
  KEY `id_customer_passwd` (`id_customer`,`passwd`),
  KEY `id_gender` (`id_gender`),
  KEY `id_shop_group` (`id_shop_group`),
  KEY `id_shop` (`id_shop`,`date_add`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_customer`
--

LOCK TABLES `qlo_customer` WRITE;
/*!40000 ALTER TABLE `qlo_customer` DISABLE KEYS */;
INSERT INTO `qlo_customer` VALUES (1,1,1,1,3,1,0,'','','','John','Doe','pub@qloapps.com','aebc67356b010175cf7f5ad243e9335d','2026-02-18 10:25:19','1996-02-18',1,'','2026-02-18 16:25:19',1,'',0.000000,0,0,'1443587e1404ebd4bc32a9efc08d67e3','','1234567890',1,0,0,'2026-02-18 16:25:19','2026-02-18 16:25:19'),(2,1,1,2,3,1,0,NULL,NULL,NULL,'User-One','Demo','gecoja8790@advarm.com','ec4ffd9355e7fff6796e4817d510e325','2026-02-18 10:35:40','0000-00-00',0,NULL,'0000-00-00 00:00:00',0,NULL,0.000000,0,0,'5663db309f268b6eb8500db5e32d04c7',NULL,'123',1,0,0,'2026-02-18 16:35:40','2026-02-18 16:35:40'),(3,1,1,2,3,1,0,NULL,NULL,NULL,'Api-One','user','test@asd.asd','ec4ffd9355e7fff6796e4817d510e325','2026-02-18 13:42:30','0000-00-00',0,NULL,'0000-00-00 00:00:00',0,NULL,0.000000,0,0,'840f1c65347b5ea18fa3a6b23b766a8d',NULL,'123',1,0,0,'2026-02-18 19:42:30','2026-02-18 19:42:30'),(4,1,1,1,3,1,0,NULL,NULL,NULL,'Roosevelt','Spencer','test-1771446281001@example.com','d8e034ad0baf698b7fb7243aeae1f705','2026-02-18 15:24:42','0000-00-00',0,NULL,'0000-00-00 00:00:00',0,NULL,0.000000,0,0,'5c60eeaa42b728d2948720b2d8031927',NULL,'(976) 718-9183',1,0,0,'2026-02-18 21:24:42','2026-02-18 21:24:42'),(5,1,1,1,3,1,0,NULL,NULL,NULL,'Earnest','Marquardt','test-1771446527978@example.com','d8e034ad0baf698b7fb7243aeae1f705','2026-02-18 15:28:49','0000-00-00',0,NULL,'0000-00-00 00:00:00',0,NULL,0.000000,0,0,'da49e4635a4405e0082471c71524fcb2',NULL,'8041162779',1,0,0,'2026-02-18 21:28:49','2026-02-18 21:28:49'),(6,1,1,1,3,1,0,NULL,NULL,NULL,'Mark','Tremblay','test-1771446783776@example.com','d8e034ad0baf698b7fb7243aeae1f705','2026-02-18 15:33:06','0000-00-00',0,NULL,'0000-00-00 00:00:00',0,NULL,0.000000,0,0,'d0e669475aac3543151648c8aebbf1f4',NULL,'0626971810',1,0,0,'2026-02-18 21:33:06','2026-02-18 21:33:06'),(7,1,1,1,3,1,0,NULL,NULL,NULL,'Eduardo','Nienow','test-1771446892467@example.com','d8e034ad0baf698b7fb7243aeae1f705','2026-02-18 15:34:54','0000-00-00',0,NULL,'0000-00-00 00:00:00',0,NULL,0.000000,0,0,'e8cd3469b9a6790ca966d40d86d4aca9',NULL,'0926058234',1,0,0,'2026-02-18 21:34:54','2026-02-18 21:34:54'),(8,1,1,1,3,1,0,NULL,NULL,NULL,'Dan','Parker','test-1771446972922@example.com','d8e034ad0baf698b7fb7243aeae1f705','2026-02-18 15:36:15','0000-00-00',0,NULL,'0000-00-00 00:00:00',0,NULL,0.000000,0,0,'627978b8ee5756141ff25a1e82cded04',NULL,'4790040688',1,0,0,'2026-02-18 21:36:15','2026-02-18 21:36:15'),(9,1,1,1,3,1,0,NULL,NULL,NULL,'Sylvester','Huel','test-1771447131687@example.com','d8e034ad0baf698b7fb7243aeae1f705','2026-02-18 15:38:53','0000-00-00',0,NULL,'0000-00-00 00:00:00',0,NULL,0.000000,0,0,'deffdefe9a09981dbebc195987936bc4',NULL,'7924150669',1,0,0,'2026-02-18 21:38:53','2026-02-18 21:38:53'),(10,1,1,2,3,1,0,NULL,NULL,NULL,'John','Doe','val_test_79890@example.com','97cf97109e55a2110b3f55e91e62dd9f','2026-02-18 15:40:50','0000-00-00',0,NULL,'0000-00-00 00:00:00',0,NULL,0.000000,0,0,'7ad36c8cc88d3da745af351a0015c4fc',NULL,'1234567890',1,0,0,'2026-02-18 21:40:50','2026-02-18 21:40:50'),(11,1,1,1,3,1,0,NULL,NULL,NULL,'Felix','Parker','test-1771447283161@example.com','d8e034ad0baf698b7fb7243aeae1f705','2026-02-18 15:41:24','0000-00-00',0,NULL,'0000-00-00 00:00:00',0,NULL,0.000000,0,0,'bfd3c72a16c432ed067e3aeaf09026da',NULL,'1389227782',1,0,0,'2026-02-18 21:41:24','2026-02-18 21:41:24'),(12,1,1,2,3,1,0,NULL,NULL,NULL,'Kristina','Lehner','Eulalia62@test-1771450109259.com','d8e034ad0baf698b7fb7243aeae1f705','2026-02-18 16:28:31','0000-00-00',0,NULL,'0000-00-00 00:00:00',0,NULL,0.000000,0,0,'68090df6efb38bc7787dcad1f6724b2e',NULL,'2061708284',1,0,0,'2026-02-18 22:28:31','2026-02-18 22:28:31'),(13,1,1,1,3,1,0,NULL,NULL,NULL,'Theron','Will','Aleen.Altenwerth@test-1771450950475.com','d8e034ad0baf698b7fb7243aeae1f705','2026-02-18 16:42:34','0000-00-00',0,NULL,'0000-00-00 00:00:00',0,NULL,0.000000,0,0,'1156f56bb0faec829697e77b067f106b',NULL,'4058742221',1,0,0,'2026-02-18 22:42:34','2026-02-18 22:42:34'),(14,1,1,2,3,1,0,NULL,NULL,NULL,'Norma','Lindgren','Tatum_Rosenbaum4@test-1771451635267.com','d8e034ad0baf698b7fb7243aeae1f705','2026-02-18 16:53:57','0000-00-00',0,NULL,'0000-00-00 00:00:00',0,NULL,0.000000,0,0,'220e470ba489dcde0484a92634a093b1',NULL,'3026320165',1,0,0,'2026-02-18 22:53:57','2026-02-18 22:53:57');
/*!40000 ALTER TABLE `qlo_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_customer_group`
--

DROP TABLE IF EXISTS `qlo_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_customer_group` (
  `id_customer` int unsigned NOT NULL,
  `id_group` int unsigned NOT NULL,
  PRIMARY KEY (`id_customer`,`id_group`),
  KEY `customer_login` (`id_group`),
  KEY `id_customer` (`id_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_customer_group`
--

LOCK TABLES `qlo_customer_group` WRITE;
/*!40000 ALTER TABLE `qlo_customer_group` DISABLE KEYS */;
INSERT INTO `qlo_customer_group` VALUES (1,3),(2,3),(3,3),(4,3),(5,3),(6,3),(7,3),(8,3),(9,3),(10,3),(11,3),(12,3),(13,3),(14,3);
/*!40000 ALTER TABLE `qlo_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_customer_guest_detail`
--

DROP TABLE IF EXISTS `qlo_customer_guest_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_customer_guest_detail` (
  `id_customer_guest_detail` int unsigned NOT NULL AUTO_INCREMENT,
  `id_customer` int unsigned NOT NULL,
  `id_gender` int unsigned NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(128) NOT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_customer_guest_detail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_customer_guest_detail`
--

LOCK TABLES `qlo_customer_guest_detail` WRITE;
/*!40000 ALTER TABLE `qlo_customer_guest_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_customer_guest_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_customer_message`
--

DROP TABLE IF EXISTS `qlo_customer_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_customer_message` (
  `id_customer_message` int unsigned NOT NULL AUTO_INCREMENT,
  `id_customer_thread` int DEFAULT NULL,
  `id_employee` int unsigned DEFAULT NULL,
  `message` mediumtext NOT NULL,
  `id_product` int unsigned DEFAULT NULL,
  `file_name` varchar(18) DEFAULT NULL,
  `ip_address` varchar(16) DEFAULT NULL,
  `user_agent` varchar(128) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `private` tinyint NOT NULL DEFAULT '0',
  `read` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_customer_message`),
  KEY `id_customer_thread` (`id_customer_thread`),
  KEY `id_employee` (`id_employee`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_customer_message`
--

LOCK TABLES `qlo_customer_message` WRITE;
/*!40000 ALTER TABLE `qlo_customer_message` DISABLE KEYS */;
INSERT INTO `qlo_customer_message` VALUES (1,1,0,'asd',1,'','3232252161','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36','2026-02-18 16:37:34','2026-02-18 16:37:34',0,0);
/*!40000 ALTER TABLE `qlo_customer_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_customer_message_sync_imap`
--

DROP TABLE IF EXISTS `qlo_customer_message_sync_imap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_customer_message_sync_imap` (
  `md5_header` varbinary(32) NOT NULL,
  KEY `md5_header_index` (`md5_header`(4))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_customer_message_sync_imap`
--

LOCK TABLES `qlo_customer_message_sync_imap` WRITE;
/*!40000 ALTER TABLE `qlo_customer_message_sync_imap` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_customer_message_sync_imap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_customer_thread`
--

DROP TABLE IF EXISTS `qlo_customer_thread`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_customer_thread` (
  `id_customer_thread` int unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `id_lang` int unsigned NOT NULL,
  `id_contact` int unsigned NOT NULL,
  `id_customer` int unsigned DEFAULT NULL,
  `id_employee` int unsigned DEFAULT NULL,
  `id_order` int unsigned DEFAULT NULL,
  `user_name` varchar(128) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `subject` text,
  `status` int NOT NULL DEFAULT '1',
  `email` varchar(128) NOT NULL,
  `token` varchar(12) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_customer_thread`),
  KEY `id_shop` (`id_shop`),
  KEY `id_lang` (`id_lang`),
  KEY `id_contact` (`id_contact`),
  KEY `id_customer` (`id_customer`),
  KEY `id_order` (`id_order`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_customer_thread`
--

LOCK TABLES `qlo_customer_thread` WRITE;
/*!40000 ALTER TABLE `qlo_customer_thread` DISABLE KEYS */;
INSERT INTO `qlo_customer_thread` VALUES (1,1,1,0,2,0,1,'User-One Demo','123','OBXYVYVLZ',1,'gecoja8790@advarm.com','WnBK1a0SWIAM','2026-02-18 16:37:34','2026-02-18 16:37:34');
/*!40000 ALTER TABLE `qlo_customer_thread` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_customization`
--

DROP TABLE IF EXISTS `qlo_customization`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_customization` (
  `id_customization` int unsigned NOT NULL AUTO_INCREMENT,
  `id_product_attribute` int unsigned NOT NULL DEFAULT '0',
  `id_address_delivery` int unsigned NOT NULL DEFAULT '0',
  `id_cart` int unsigned NOT NULL,
  `id_product` int NOT NULL,
  `quantity` int NOT NULL,
  `quantity_refunded` int NOT NULL DEFAULT '0',
  `quantity_returned` int NOT NULL DEFAULT '0',
  `in_cart` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_customization`,`id_cart`,`id_product`,`id_address_delivery`),
  KEY `id_product_attribute` (`id_product_attribute`),
  KEY `id_cart_product` (`id_cart`,`id_product`,`id_product_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_customization`
--

LOCK TABLES `qlo_customization` WRITE;
/*!40000 ALTER TABLE `qlo_customization` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_customization` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_customization_field`
--

DROP TABLE IF EXISTS `qlo_customization_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_customization_field` (
  `id_customization_field` int unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int unsigned NOT NULL,
  `type` tinyint(1) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_customization_field`),
  KEY `id_product` (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_customization_field`
--

LOCK TABLES `qlo_customization_field` WRITE;
/*!40000 ALTER TABLE `qlo_customization_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_customization_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_customization_field_lang`
--

DROP TABLE IF EXISTS `qlo_customization_field_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_customization_field_lang` (
  `id_customization_field` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_customization_field`,`id_lang`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_customization_field_lang`
--

LOCK TABLES `qlo_customization_field_lang` WRITE;
/*!40000 ALTER TABLE `qlo_customization_field_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_customization_field_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_customized_data`
--

DROP TABLE IF EXISTS `qlo_customized_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_customized_data` (
  `id_customization` int unsigned NOT NULL,
  `type` tinyint(1) NOT NULL,
  `index` int NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id_customization`,`type`,`index`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_customized_data`
--

LOCK TABLES `qlo_customized_data` WRITE;
/*!40000 ALTER TABLE `qlo_customized_data` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_customized_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_date_range`
--

DROP TABLE IF EXISTS `qlo_date_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_date_range` (
  `id_date_range` int unsigned NOT NULL AUTO_INCREMENT,
  `time_start` datetime NOT NULL,
  `time_end` datetime NOT NULL,
  PRIMARY KEY (`id_date_range`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_date_range`
--

LOCK TABLES `qlo_date_range` WRITE;
/*!40000 ALTER TABLE `qlo_date_range` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_date_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_delivery`
--

DROP TABLE IF EXISTS `qlo_delivery`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_delivery` (
  `id_delivery` int unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int unsigned DEFAULT NULL,
  `id_shop_group` int unsigned DEFAULT NULL,
  `id_carrier` int unsigned NOT NULL,
  `id_range_price` int unsigned DEFAULT NULL,
  `id_range_weight` int unsigned DEFAULT NULL,
  `id_zone` int unsigned NOT NULL,
  `price` decimal(20,6) NOT NULL,
  PRIMARY KEY (`id_delivery`),
  KEY `id_zone` (`id_zone`),
  KEY `id_carrier` (`id_carrier`,`id_zone`),
  KEY `id_range_price` (`id_range_price`),
  KEY `id_range_weight` (`id_range_weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_delivery`
--

LOCK TABLES `qlo_delivery` WRITE;
/*!40000 ALTER TABLE `qlo_delivery` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_delivery` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_employee`
--

DROP TABLE IF EXISTS `qlo_employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_employee` (
  `id_employee` int unsigned NOT NULL AUTO_INCREMENT,
  `id_profile` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL DEFAULT '0',
  `lastname` varchar(32) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `email` varchar(128) NOT NULL,
  `passwd` varchar(32) NOT NULL,
  `last_passwd_gen` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `stats_date_from` date DEFAULT NULL,
  `stats_date_to` date DEFAULT NULL,
  `stats_compare_from` date DEFAULT NULL,
  `stats_compare_to` date DEFAULT NULL,
  `stats_compare_option` int unsigned NOT NULL DEFAULT '1',
  `preselect_date_range` varchar(32) DEFAULT NULL,
  `bo_color` varchar(32) DEFAULT NULL,
  `bo_theme` varchar(32) DEFAULT NULL,
  `bo_css` varchar(64) DEFAULT NULL,
  `default_tab` int unsigned NOT NULL DEFAULT '0',
  `bo_width` int unsigned NOT NULL DEFAULT '0',
  `bo_menu` tinyint(1) NOT NULL DEFAULT '1',
  `active` tinyint unsigned NOT NULL DEFAULT '0',
  `optin` tinyint unsigned NOT NULL DEFAULT '1',
  `id_last_order` int unsigned NOT NULL DEFAULT '0',
  `id_last_customer_message` int unsigned NOT NULL DEFAULT '0',
  `id_last_customer` int unsigned NOT NULL DEFAULT '0',
  `last_connection_date` date DEFAULT '0000-00-00',
  PRIMARY KEY (`id_employee`),
  KEY `employee_login` (`email`,`passwd`),
  KEY `id_employee_passwd` (`id_employee`,`passwd`),
  KEY `id_profile` (`id_profile`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_employee`
--

LOCK TABLES `qlo_employee` WRITE;
/*!40000 ALTER TABLE `qlo_employee` DISABLE KEYS */;
INSERT INTO `qlo_employee` VALUES (1,1,1,'Hotyanovich','Aleksey','a.hotyanovich@a1qa.com','c0a153d0dbca5a5d0d71718aeb9b8c33','2026-02-18 10:25:16','2026-01-18','2026-02-18','0000-00-00','0000-00-00',1,NULL,NULL,'default','admin-theme.css',1,0,1,1,1,0,0,0,'2026-02-18');
/*!40000 ALTER TABLE `qlo_employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_employee_shop`
--

DROP TABLE IF EXISTS `qlo_employee_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_employee_shop` (
  `id_employee` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  PRIMARY KEY (`id_employee`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_employee_shop`
--

LOCK TABLES `qlo_employee_shop` WRITE;
/*!40000 ALTER TABLE `qlo_employee_shop` DISABLE KEYS */;
INSERT INTO `qlo_employee_shop` VALUES (1,1);
/*!40000 ALTER TABLE `qlo_employee_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_feature`
--

DROP TABLE IF EXISTS `qlo_feature`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_feature` (
  `id_feature` int unsigned NOT NULL AUTO_INCREMENT,
  `position` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_feature`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_feature`
--

LOCK TABLES `qlo_feature` WRITE;
/*!40000 ALTER TABLE `qlo_feature` DISABLE KEYS */;
INSERT INTO `qlo_feature` VALUES (1,0),(2,1),(3,2),(4,3),(5,4),(6,5),(7,6);
/*!40000 ALTER TABLE `qlo_feature` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_feature_lang`
--

DROP TABLE IF EXISTS `qlo_feature_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_feature_lang` (
  `id_feature` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_feature`,`id_lang`),
  KEY `id_lang` (`id_lang`,`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_feature_lang`
--

LOCK TABLES `qlo_feature_lang` WRITE;
/*!40000 ALTER TABLE `qlo_feature_lang` DISABLE KEYS */;
INSERT INTO `qlo_feature_lang` VALUES (7,1,'Gym'),(2,1,'News Paper'),(3,1,'Power BackUp'),(4,1,'Refrigerator'),(5,1,'Restaurant'),(6,1,'Room Service'),(1,1,'Wi-Fi'),(7,2,'Gym'),(2,2,'News Paper'),(3,2,'Power BackUp'),(4,2,'Refrigerator'),(5,2,'Restaurant'),(6,2,'Room Service'),(1,2,'Wi-Fi');
/*!40000 ALTER TABLE `qlo_feature_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_feature_product`
--

DROP TABLE IF EXISTS `qlo_feature_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_feature_product` (
  `id_feature` int unsigned NOT NULL,
  `id_product` int unsigned NOT NULL,
  `id_feature_value` int unsigned NOT NULL,
  PRIMARY KEY (`id_feature`,`id_product`),
  KEY `id_feature_value` (`id_feature_value`),
  KEY `id_product` (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_feature_product`
--

LOCK TABLES `qlo_feature_product` WRITE;
/*!40000 ALTER TABLE `qlo_feature_product` DISABLE KEYS */;
INSERT INTO `qlo_feature_product` VALUES (1,1,1),(1,2,1),(1,3,1),(1,4,1),(2,1,2),(2,2,2),(2,3,2),(2,4,2),(3,1,3),(3,2,3),(3,3,3),(3,4,3),(4,1,4),(4,2,4),(4,3,4),(4,4,4);
/*!40000 ALTER TABLE `qlo_feature_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_feature_shop`
--

DROP TABLE IF EXISTS `qlo_feature_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_feature_shop` (
  `id_feature` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  PRIMARY KEY (`id_feature`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_feature_shop`
--

LOCK TABLES `qlo_feature_shop` WRITE;
/*!40000 ALTER TABLE `qlo_feature_shop` DISABLE KEYS */;
INSERT INTO `qlo_feature_shop` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1);
/*!40000 ALTER TABLE `qlo_feature_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_feature_value`
--

DROP TABLE IF EXISTS `qlo_feature_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_feature_value` (
  `id_feature_value` int unsigned NOT NULL AUTO_INCREMENT,
  `id_feature` int unsigned NOT NULL,
  `custom` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`id_feature_value`),
  KEY `feature` (`id_feature`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_feature_value`
--

LOCK TABLES `qlo_feature_value` WRITE;
/*!40000 ALTER TABLE `qlo_feature_value` DISABLE KEYS */;
INSERT INTO `qlo_feature_value` VALUES (1,1,0),(2,2,0),(3,3,0),(4,4,0),(5,5,0),(6,6,0),(7,7,0);
/*!40000 ALTER TABLE `qlo_feature_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_feature_value_lang`
--

DROP TABLE IF EXISTS `qlo_feature_value_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_feature_value_lang` (
  `id_feature_value` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_feature_value`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_feature_value_lang`
--

LOCK TABLES `qlo_feature_value_lang` WRITE;
/*!40000 ALTER TABLE `qlo_feature_value_lang` DISABLE KEYS */;
INSERT INTO `qlo_feature_value_lang` VALUES (1,1,'1.jpg'),(1,2,'1.jpg'),(2,1,'2.jpg'),(2,2,'2.jpg'),(3,1,'3.jpg'),(3,2,'3.jpg'),(4,1,'4.jpg'),(4,2,'4.jpg'),(5,1,'5.jpg'),(5,2,'5.jpg'),(6,1,'6.jpg'),(6,2,'6.jpg'),(7,1,'7.jpg'),(7,2,'7.jpg');
/*!40000 ALTER TABLE `qlo_feature_value_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_gender`
--

DROP TABLE IF EXISTS `qlo_gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_gender` (
  `id_gender` int NOT NULL AUTO_INCREMENT,
  `type` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_gender`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_gender`
--

LOCK TABLES `qlo_gender` WRITE;
/*!40000 ALTER TABLE `qlo_gender` DISABLE KEYS */;
INSERT INTO `qlo_gender` VALUES (1,0),(2,1);
/*!40000 ALTER TABLE `qlo_gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_gender_lang`
--

DROP TABLE IF EXISTS `qlo_gender_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_gender_lang` (
  `id_gender` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id_gender`,`id_lang`),
  KEY `id_gender` (`id_gender`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_gender_lang`
--

LOCK TABLES `qlo_gender_lang` WRITE;
/*!40000 ALTER TABLE `qlo_gender_lang` DISABLE KEYS */;
INSERT INTO `qlo_gender_lang` VALUES (1,1,'Mr.'),(1,2,'Pan'),(2,1,'Mrs.'),(2,2,'Pani');
/*!40000 ALTER TABLE `qlo_gender_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_group`
--

DROP TABLE IF EXISTS `qlo_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_group` (
  `id_group` int unsigned NOT NULL AUTO_INCREMENT,
  `reduction` decimal(17,2) NOT NULL DEFAULT '0.00',
  `price_display_method` tinyint NOT NULL DEFAULT '0',
  `show_prices` tinyint unsigned NOT NULL DEFAULT '1',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_group`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_group`
--

LOCK TABLES `qlo_group` WRITE;
/*!40000 ALTER TABLE `qlo_group` DISABLE KEYS */;
INSERT INTO `qlo_group` VALUES (1,0.00,0,1,'2026-02-18 16:25:13','2026-02-18 16:25:13'),(2,0.00,0,1,'2026-02-18 16:25:13','2026-02-18 16:25:13'),(3,0.00,0,1,'2026-02-18 16:25:13','2026-02-18 16:25:13');
/*!40000 ALTER TABLE `qlo_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_group_lang`
--

DROP TABLE IF EXISTS `qlo_group_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_group_lang` (
  `id_group` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_group`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_group_lang`
--

LOCK TABLES `qlo_group_lang` WRITE;
/*!40000 ALTER TABLE `qlo_group_lang` DISABLE KEYS */;
INSERT INTO `qlo_group_lang` VALUES (1,1,'Visitor'),(1,2,'Odwiedzający'),(2,1,'Guest'),(2,2,'Gość'),(3,1,'Customer'),(3,2,'Klient');
/*!40000 ALTER TABLE `qlo_group_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_group_reduction`
--

DROP TABLE IF EXISTS `qlo_group_reduction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_group_reduction` (
  `id_group_reduction` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `id_group` int unsigned NOT NULL,
  `id_category` int unsigned NOT NULL,
  `reduction` decimal(4,3) NOT NULL,
  PRIMARY KEY (`id_group_reduction`),
  UNIQUE KEY `id_group` (`id_group`,`id_category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_group_reduction`
--

LOCK TABLES `qlo_group_reduction` WRITE;
/*!40000 ALTER TABLE `qlo_group_reduction` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_group_reduction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_group_shop`
--

DROP TABLE IF EXISTS `qlo_group_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_group_shop` (
  `id_group` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  PRIMARY KEY (`id_group`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_group_shop`
--

LOCK TABLES `qlo_group_shop` WRITE;
/*!40000 ALTER TABLE `qlo_group_shop` DISABLE KEYS */;
INSERT INTO `qlo_group_shop` VALUES (1,1),(2,1),(3,1);
/*!40000 ALTER TABLE `qlo_group_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_guest`
--

DROP TABLE IF EXISTS `qlo_guest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_guest` (
  `id_guest` int unsigned NOT NULL AUTO_INCREMENT,
  `id_operating_system` int unsigned DEFAULT NULL,
  `id_web_browser` int unsigned DEFAULT NULL,
  `id_customer` int unsigned DEFAULT NULL,
  `javascript` tinyint(1) DEFAULT '0',
  `screen_resolution_x` smallint unsigned DEFAULT NULL,
  `screen_resolution_y` smallint unsigned DEFAULT NULL,
  `screen_color` tinyint unsigned DEFAULT NULL,
  `sun_java` tinyint(1) DEFAULT NULL,
  `adobe_flash` tinyint(1) DEFAULT NULL,
  `adobe_director` tinyint(1) DEFAULT NULL,
  `apple_quicktime` tinyint(1) DEFAULT NULL,
  `real_player` tinyint(1) DEFAULT NULL,
  `windows_media` tinyint(1) DEFAULT NULL,
  `accept_language` varchar(8) DEFAULT NULL,
  `mobile_theme` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_guest`),
  KEY `id_customer` (`id_customer`),
  KEY `id_operating_system` (`id_operating_system`),
  KEY `id_web_browser` (`id_web_browser`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_guest`
--

LOCK TABLES `qlo_guest` WRITE;
/*!40000 ALTER TABLE `qlo_guest` DISABLE KEYS */;
INSERT INTO `qlo_guest` VALUES (1,0,0,1,0,0,0,0,0,0,0,0,0,0,'',0),(2,5,11,2,0,0,0,0,0,0,0,0,0,0,'en',0),(6,5,11,3,0,0,0,0,0,0,0,0,0,0,'en',0),(7,0,0,0,0,0,0,0,0,0,0,0,0,0,'',0),(8,0,11,0,0,0,0,0,0,0,0,0,0,0,'en',0),(9,0,3,0,0,0,0,0,0,0,0,0,0,0,'en',0),(10,5,1,0,0,0,0,0,0,0,0,0,0,0,'en',0),(11,0,11,0,0,0,0,0,0,0,0,0,0,0,'en',0),(12,0,11,0,0,0,0,0,0,0,0,0,0,0,'en',0),(13,5,11,10,0,0,0,0,0,0,0,0,0,0,'en',0),(14,0,11,0,0,0,0,0,0,0,0,0,0,0,'en',0),(15,0,11,0,0,0,0,0,0,0,0,0,0,0,'en',0),(16,0,11,4,0,0,0,0,0,0,0,0,0,0,'en',0),(17,0,11,0,0,0,0,0,0,0,0,0,0,0,'en',0),(18,0,11,5,0,0,0,0,0,0,0,0,0,0,'en',0),(19,0,11,6,0,0,0,0,0,0,0,0,0,0,'en',0),(20,0,11,7,0,0,0,0,0,0,0,0,0,0,'en',0),(21,0,11,8,0,0,0,0,0,0,0,0,0,0,'en',0),(22,0,11,9,0,0,0,0,0,0,0,0,0,0,'en',0),(23,0,11,11,0,0,0,0,0,0,0,0,0,0,'en',0),(24,0,11,12,0,0,0,0,0,0,0,0,0,0,'en',0),(25,0,11,13,0,0,0,0,0,0,0,0,0,0,'en',0),(26,0,11,14,0,0,0,0,0,0,0,0,0,0,'en',0);
/*!40000 ALTER TABLE `qlo_guest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_hook`
--

DROP TABLE IF EXISTS `qlo_hook`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_hook` (
  `id_hook` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text,
  `position` tinyint(1) NOT NULL DEFAULT '1',
  `live_edit` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_hook`),
  UNIQUE KEY `hook_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=162 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_hook`
--

LOCK TABLES `qlo_hook` WRITE;
/*!40000 ALTER TABLE `qlo_hook` DISABLE KEYS */;
INSERT INTO `qlo_hook` VALUES (1,'displayPayment','Payment','This hook displays new elements on the payment page',1,1),(2,'actionValidateOrder','New orders','',1,0),(3,'displayMaintenance','Maintenance Page','This hook displays new elements on the maintenance page',1,0),(4,'actionPaymentConfirmation','Payment confirmation','This hook displays new elements after the payment is validated',1,0),(5,'displayPaymentReturn','Payment return','',1,0),(6,'actionUpdateQuantity','Quantity update','Quantity is updated only when a customer effectively places their order',1,0),(7,'displayRightColumn','Right column blocks','This hook displays new elements in the right-hand column',1,1),(8,'displayLeftColumn','Left column blocks','This hook displays new elements in the left-hand column',1,1),(9,'displayHome','Homepage content','This hook displays new elements on the homepage',1,1),(10,'Header','Pages html head section','This hook adds additional elements in the head section of your pages (head section of html)',1,0),(11,'actionCartSave','Cart creation and update','This hook is displayed when a product is added to the cart or if the cart\'s content is modified',1,0),(12,'actionAuthentication','Successful customer authentication','This hook is displayed after a customer successfully signs in',1,0),(13,'actionProductAdd','Product creation','This hook is displayed after a product is created',1,0),(14,'actionProductUpdate','Product update','This hook is displayed after a product has been updated',1,0),(15,'displayTop','Top of pages','This hook displays additional elements at the top of your pages',1,0),(16,'displayRightColumnProduct','New elements on the product page (right column)','This hook displays new elements in the right-hand column of the product page',1,0),(17,'actionProductDelete','Product deletion','This hook is called when a product is deleted',1,0),(18,'displayFooterProduct','Product footer','This hook adds new blocks under the product\'s description',1,1),(19,'displayInvoice','Invoice','This hook displays new blocks on the invoice (order)',1,0),(20,'actionOrderStatusUpdate','Order status update - Event','This hook launches modules when the status of an order changes.',1,0),(21,'displayAdminOrder','Display new elements in the Back Office, tab AdminOrder','This hook launches modules when the AdminOrder tab is displayed in the Back Office',1,0),(22,'displayAdminOrderTabOrder','Display new elements in Back Office, AdminOrder, panel Order','This hook launches modules when the AdminOrder tab is displayed in the Back Office and extends / override Order panel tabs',1,0),(23,'displayAdminOrderTabShip','Display new elements in Back Office, AdminOrder, panel Shipping','This hook launches modules when the AdminOrder tab is displayed in the Back Office and extends / override Shipping panel tabs',1,0),(24,'displayAdminOrderContentOrder','Display new elements in Back Office, AdminOrder, panel Order','This hook launches modules when the AdminOrder tab is displayed in the Back Office and extends / override Order panel content',1,0),(25,'displayAdminOrderContentShip','Display new elements in Back Office, AdminOrder, panel Shipping','This hook launches modules when the AdminOrder tab is displayed in the Back Office and extends / override Shipping panel content',1,0),(26,'displayFooter','Footer','This hook displays new blocks in the footer',1,0),(27,'displayPDFInvoice','PDF Invoice','This hook allows you to display additional information on PDF invoices',1,0),(28,'displayInvoiceLegalFreeText','PDF Invoice - Legal Free Text','This hook allows you to modify the legal free text on PDF invoices',1,0),(29,'displayAdminCustomers','Display new elements in the Back Office, tab AdminCustomers','This hook launches modules when the AdminCustomers tab is displayed in the Back Office',1,0),(30,'displayOrderConfirmation','Order confirmation page','This hook is called within an order\'s confirmation page',1,0),(31,'actionCustomerAccountAdd','Successful customer account creation','This hook is called when a new customer creates an account successfully',1,0),(32,'displayCustomerAccount','Customer account displayed in Front Office','This hook displays new elements on the customer account page',1,0),(33,'displayCustomerIdentityForm','Customer identity form displayed in Front Office','This hook displays new elements on the form to update a customer identity',1,0),(34,'actionOrderSlipAdd','Order slip creation','This hook is called when a new credit slip is added regarding client order',1,0),(35,'displayProductTab','Tabs on product page','This hook is called on the product page\'s tab',1,0),(36,'displayProductTabContent','Tabs content on the product page','This hook is called on the product page\'s tab',1,0),(37,'displayShoppingCartFooter','Shopping cart footer','This hook displays some specific information on the shopping cart\'s page',1,0),(38,'displayCustomerAccountForm','Customer account creation form','This hook displays some information on the form to create a customer account',1,0),(39,'displayAdminStatsModules','Stats - Modules','',1,0),(40,'displayAdminStatsGraphEngine','Graph engines','',1,0),(41,'actionOrderReturn','Returned product','This hook is displayed when a customer returns a product ',1,0),(42,'displayProductButtons','Product page actions','This hook adds new action buttons on the product page',1,0),(43,'displayBackOfficeHome','Administration panel homepage','This hook is displayed on the admin panel\'s homepage',1,0),(44,'displayAdminStatsGridEngine','Grid engines','',1,0),(45,'actionWatermark','Watermark','',1,0),(46,'actionProductCancel','Product cancelled','This hook is called when you cancel a product in an order',1,0),(47,'displayLeftColumnProduct','New elements on the product page (left column)','This hook displays new elements in the left-hand column of the product page',1,0),(48,'actionProductOutOfStock','Out-of-stock product','This hook displays new action buttons if a product is out of stock',1,0),(49,'actionProductAttributeUpdate','Product attribute update','This hook is displayed when a product\'s attribute is updated',1,0),(50,'displayCarrierList','Extra carrier (module mode)','',1,0),(51,'displayShoppingCart','Shopping cart - Additional button','This hook displays new action buttons within the shopping cart',1,0),(52,'actionSearch','Search','',1,0),(53,'displayBeforePayment','Redirect during the order process','This hook redirects the user to the module instead of displaying payment modules',1,0),(54,'actionCarrierUpdate','Carrier Update','This hook is called when a carrier is updated',1,0),(55,'actionOrderStatusPostUpdate','Post update of order status','',1,0),(56,'displayCustomerAccountFormTop','Block above the form for create an account','This hook is displayed above the customer\'s account creation form',1,0),(57,'displayBackOfficeHeader','Administration panel header','This hook is displayed in the header of the admin panel',1,0),(58,'displayBackOfficeTop','Administration panel hover the tabs','This hook is displayed on the roll hover of the tabs within the admin panel',1,0),(59,'displayBackOfficeFooter','Administration panel footer','This hook is displayed within the admin panel\'s footer',1,0),(60,'actionProductAttributeDelete','Product attribute deletion','This hook is displayed when a product\'s attribute is deleted',1,0),(61,'actionCarrierProcess','Carrier process','',1,0),(62,'actionOrderDetail','Order detail','This hook is used to set the follow-up in Smarty when an order\'s detail is called',1,0),(63,'displayBeforeCarrier','Before carriers list','This hook is displayed before the carrier list in Front Office',1,0),(64,'displayOrderDetail','Order detail','This hook is displayed within the order\'s details in Front Office',1,0),(65,'actionPaymentCCAdd','Payment CC added','',1,0),(66,'displayProductComparison','Extra product comparison','',1,0),(67,'actionCategoryAdd','Category creation','This hook is displayed when a category is created',1,0),(68,'actionCategoryUpdate','Category modification','This hook is displayed when a category is modified',1,0),(69,'actionCategoryDelete','Category deletion','This hook is displayed when a category is deleted',1,0),(70,'actionBeforeAuthentication','Before authentication','This hook is displayed before the customer\'s authentication',1,0),(71,'actionSubmitIdentityBefore','Before identity modification','This hook is called before customer\'s identity modification',1,0),(72,'displayCartRoomImageAfter','After cart room image on checkout page','This hook is displayed after cart room image on checkout page',1,0),(73,'displayPaymentTop','Top of payment page','This hook is displayed at the top of the payment page',1,0),(74,'actionHtaccessCreate','After htaccess creation','This hook is displayed after the htaccess creation',1,0),(75,'actionAdminMetaSave','After saving the configuration in AdminMeta','This hook is displayed after saving the configuration in AdminMeta',1,0),(76,'displayAttributeGroupForm','Add fields to the form \'attribute group\'','This hook adds fields to the form \'attribute group\'',1,0),(77,'actionAttributeGroupSave','Saving an attribute group','This hook is called while saving an attributes group',1,0),(78,'actionAttributeGroupDelete','Deleting attribute group','This hook is called while deleting an attributes  group',1,0),(79,'displayFeatureForm','Add fields to the form \'feature\'','This hook adds fields to the form \'feature\'',1,0),(80,'actionFeatureSave','Saving attributes\' features','This hook is called while saving an attributes features',1,0),(81,'actionFeatureDelete','Deleting attributes\' features','This hook is called while deleting an attributes features',1,0),(82,'actionProductSave','Saving products','This hook is called while saving products',1,0),(83,'actionProductListOverride','Assign a products list to a category','This hook assigns a products list to a category',1,0),(84,'displayAttributeGroupPostProcess','On post-process in admin attribute group','This hook is called on post-process in admin attribute group',1,0),(85,'displayFeaturePostProcess','On post-process in admin feature','This hook is called on post-process in admin feature',1,0),(86,'displayFeatureValueForm','Add fields to the form \'feature value\'','This hook adds fields to the form \'feature value\'',1,0),(87,'displayFeatureValuePostProcess','On post-process in admin feature value','This hook is called on post-process in admin feature value',1,0),(88,'actionFeatureValueDelete','Deleting attributes\' features\' values','This hook is called while deleting an attributes features value',1,0),(89,'actionFeatureValueSave','Saving an attributes features value','This hook is called while saving an attributes features value',1,0),(90,'displayAttributeForm','Add fields to the form \'attribute value\'','This hook adds fields to the form \'attribute value\'',1,0),(91,'actionAttributePostProcess','On post-process in admin feature value','This hook is called on post-process in admin feature value',1,0),(92,'actionAttributeDelete','Deleting an attributes features value','This hook is called while deleting an attributes features value',1,0),(93,'actionAttributeSave','Saving an attributes features value','This hook is called while saving an attributes features value',1,0),(94,'actionTaxManager','Tax Manager Factory','',1,0),(95,'displayMyAccountBlock','My account block','This hook displays extra information within the \'my account\' block\"',1,0),(96,'actionModuleInstallBefore','actionModuleInstallBefore','',1,0),(97,'actionModuleInstallAfter','actionModuleInstallAfter','',1,0),(98,'displayHomeTab','Home Page Tabs','This hook displays new elements on the homepage tabs',1,1),(99,'displayHomeTabContent','Home Page Tabs Content','This hook displays new elements on the homepage tabs content',1,1),(100,'displayTopColumn','Top column blocks','This hook displays new elements in the top of columns',1,1),(101,'displayBackOfficeCategory','Display new elements in the Back Office, tab AdminCategories','This hook launches modules when the AdminCategories tab is displayed in the Back Office',1,0),(102,'displayProductListFunctionalButtons','Display new elements in the Front Office, products list','This hook launches modules when the products list is displayed in the Front Office',1,0),(103,'displayNav','Navigation','',1,1),(104,'displayOverrideTemplate','Change the default template of current controller','',1,0),(105,'actionAdminLoginControllerSetMedia','Set media on admin login page header','This hook is called after adding media to admin login page header',1,0),(106,'actionOrderEdited','Order edited','This hook is called when an order is edited.',1,0),(107,'actionEmailAddBeforeContent','Add extra content before mail content','This hook is called just before fetching mail template',1,0),(108,'actionEmailAddAfterContent','Add extra content after mail content','This hook is called just after fetching mail template',1,0),(109,'displayCartExtraProductActions','Extra buttons in shopping cart','This hook adds extra buttons to the product lines, in the shopping cart',1,0),(110,'displayAfterHookTop','displayAfterHookTop','',1,1),(111,'actionOrderHistoryAddAfter','actionOrderHistoryAddAfter','',0,0),(112,'actionObjectProductDeleteBefore','actionObjectProductDeleteBefore','',0,0),(113,'displayAfterDefautlFooterHook','displayAfterDefautlFooterHook','',1,1),(114,'addWebserviceResources','addWebserviceResources','',0,0),(115,'actionObjectLanguageAddAfter','actionObjectLanguageAddAfter','',0,0),(116,'actionObjectProfileAddAfter','actionObjectProfileAddAfter','',0,0),(117,'actionObjectProfileDeleteBefore','actionObjectProfileDeleteBefore','',0,0),(118,'actionObjectGroupDeleteBefore','actionObjectGroupDeleteBefore','',0,0),(119,'actionCartSummary','actionCartSummary','',0,0),(120,'actionFrontControllerSetMedia','actionFrontControllerSetMedia','',0,0),(121,'displayExternalNavigationHook','displayExternalNavigationHook','',1,1),(122,'displayAfterHeaderHotelDesc','displayAfterHeaderHotelDesc','',1,1),(123,'displayAddModuleSettingLink','displayAddModuleSettingLink','',1,1),(124,'displayFooterNotificationHook','displayFooterNotificationHook','',1,1),(125,'registerGDPRConsent','registerGDPRConsent','',0,0),(126,'actionExportGDPRData','actionExportGDPRData','',0,0),(127,'actionObjectCustomerUpdateBefore','actionObjectCustomerUpdateBefore','',0,0),(128,'actionDeleteGDPRCustomer','actionDeleteGDPRCustomer','',0,0),(129,'actionCustomerCartRulesModifier','actionCustomerCartRulesModifier','',0,0),(130,'actionValidateCartRule','actionValidateCartRule','',0,0),(131,'actionObjectCustomerDeleteAfter','actionObjectCustomerDeleteAfter','',0,0),(132,'displayFooterMostLeftBlock','displayFooterMostLeftBlock','',1,1),(133,'addOtherModuleSetting','addOtherModuleSetting','',0,0),(134,'displayFooterExploreSectionHook','displayFooterExploreSectionHook','',1,1),(135,'actionCleanData','actionCleanData','',0,0),(136,'displayPaymentEU','displayPaymentEU','',1,1),(138,'actionModuleRegisterHookAfter','actionModuleRegisterHookAfter','',0,0),(139,'actionModuleUnRegisterHookAfter','actionModuleUnRegisterHookAfter','',0,0),(140,'displayFooterBefore','displayFooterBefore','',1,1),(141,'displayRoomTypeDetailRoomTypeNameAfter','displayRoomTypeDetailRoomTypeNameAfter','',1,1),(142,'actionRoomBookingStatusUpdateAfter','actionRoomBookingStatusUpdateAfter','',0,0),(143,'displayBookingAction','displayBookingAction','',1,1),(144,'displayAdminAfterHeader','displayAdminAfterHeader','',1,1),(145,'displayFooterPaymentInfo','displayFooterPaymentInfo','',1,1),(146,'actionObjectCMSUpdateAfter','actionObjectCMSUpdateAfter','',0,0),(147,'actionObjectCMSDeleteAfter','actionObjectCMSDeleteAfter','',0,0),(148,'displayDefaultNavigationHook','displayDefaultNavigationHook','',1,1),(149,'displayNavigationHook','displayNavigationHook','',1,1),(150,'dashboardTop','dashboardTop','',0,0),(151,'dashboardZoneTwo','dashboardZoneTwo','',0,0),(152,'dashboardData','dashboardData','',0,0),(153,'actionAdminControllerSetMedia','actionAdminControllerSetMedia','',0,0),(154,'dashboardZoneOne','dashboardZoneOne','',0,0),(155,'actionObjectOrderAddAfter','actionObjectOrderAddAfter','',0,0),(156,'actionObjectCustomerAddAfter','actionObjectCustomerAddAfter','',0,0),(157,'actionObjectCustomerMessageAddAfter','actionObjectCustomerMessageAddAfter','',0,0),(158,'actionObjectCustomerThreadAddAfter','actionObjectCustomerThreadAddAfter','',0,0),(159,'actionObjectOrderReturnAddAfter','actionObjectOrderReturnAddAfter','',0,0),(160,'actionCartListOverride','actionCartListOverride','',0,0),(161,'displayAdminListBefore','displayAdminListBefore','',1,1);
/*!40000 ALTER TABLE `qlo_hook` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_hook_alias`
--

DROP TABLE IF EXISTS `qlo_hook_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_hook_alias` (
  `id_hook_alias` int unsigned NOT NULL AUTO_INCREMENT,
  `alias` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`id_hook_alias`),
  UNIQUE KEY `alias` (`alias`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_hook_alias`
--

LOCK TABLES `qlo_hook_alias` WRITE;
/*!40000 ALTER TABLE `qlo_hook_alias` DISABLE KEYS */;
INSERT INTO `qlo_hook_alias` VALUES (1,'payment','displayPayment'),(2,'newOrder','actionValidateOrder'),(3,'paymentConfirm','actionPaymentConfirmation'),(4,'paymentReturn','displayPaymentReturn'),(5,'updateQuantity','actionUpdateQuantity'),(6,'rightColumn','displayRightColumn'),(7,'leftColumn','displayLeftColumn'),(8,'home','displayHome'),(9,'displayHeader','Header'),(10,'cart','actionCartSave'),(11,'authentication','actionAuthentication'),(12,'addproduct','actionProductAdd'),(13,'updateproduct','actionProductUpdate'),(14,'top','displayTop'),(15,'extraRight','displayRightColumnProduct'),(16,'deleteproduct','actionProductDelete'),(17,'productfooter','displayFooterProduct'),(18,'invoice','displayInvoice'),(19,'updateOrderStatus','actionOrderStatusUpdate'),(20,'adminOrder','displayAdminOrder'),(21,'footer','displayFooter'),(22,'PDFInvoice','displayPDFInvoice'),(23,'adminCustomers','displayAdminCustomers'),(24,'orderConfirmation','displayOrderConfirmation'),(25,'createAccount','actionCustomerAccountAdd'),(26,'customerAccount','displayCustomerAccount'),(27,'orderSlip','actionOrderSlipAdd'),(28,'productTab','displayProductTab'),(29,'productTabContent','displayProductTabContent'),(30,'shoppingCart','displayShoppingCartFooter'),(31,'createAccountForm','displayCustomerAccountForm'),(32,'AdminStatsModules','displayAdminStatsModules'),(33,'GraphEngine','displayAdminStatsGraphEngine'),(34,'orderReturn','actionOrderReturn'),(35,'productActions','displayProductButtons'),(36,'backOfficeHome','displayBackOfficeHome'),(37,'GridEngine','displayAdminStatsGridEngine'),(38,'watermark','actionWatermark'),(39,'cancelProduct','actionProductCancel'),(40,'extraLeft','displayLeftColumnProduct'),(41,'productOutOfStock','actionProductOutOfStock'),(42,'updateProductAttribute','actionProductAttributeUpdate'),(43,'extraCarrier','displayCarrierList'),(44,'shoppingCartExtra','displayShoppingCart'),(45,'search','actionSearch'),(46,'backBeforePayment','displayBeforePayment'),(47,'updateCarrier','actionCarrierUpdate'),(48,'postUpdateOrderStatus','actionOrderStatusPostUpdate'),(49,'createAccountTop','displayCustomerAccountFormTop'),(50,'backOfficeHeader','displayBackOfficeHeader'),(51,'backOfficeTop','displayBackOfficeTop'),(52,'backOfficeFooter','displayBackOfficeFooter'),(53,'deleteProductAttribute','actionProductAttributeDelete'),(54,'processCarrier','actionCarrierProcess'),(55,'orderDetail','actionOrderDetail'),(56,'beforeCarrier','displayBeforeCarrier'),(57,'orderDetailDisplayed','displayOrderDetail'),(58,'paymentCCAdded','actionPaymentCCAdd'),(59,'extraProductComparison','displayProductComparison'),(60,'categoryAddition','actionCategoryAdd'),(61,'categoryUpdate','actionCategoryUpdate'),(62,'categoryDeletion','actionCategoryDelete'),(63,'beforeAuthentication','actionBeforeAuthentication'),(64,'paymentTop','displayPaymentTop'),(65,'afterCreateHtaccess','actionHtaccessCreate'),(66,'afterSaveAdminMeta','actionAdminMetaSave'),(67,'attributeGroupForm','displayAttributeGroupForm'),(68,'afterSaveAttributeGroup','actionAttributeGroupSave'),(69,'afterDeleteAttributeGroup','actionAttributeGroupDelete'),(70,'featureForm','displayFeatureForm'),(71,'afterSaveFeature','actionFeatureSave'),(72,'afterDeleteFeature','actionFeatureDelete'),(73,'afterSaveProduct','actionProductSave'),(74,'productListAssign','actionProductListOverride'),(75,'postProcessAttributeGroup','displayAttributeGroupPostProcess'),(76,'postProcessFeature','displayFeaturePostProcess'),(77,'featureValueForm','displayFeatureValueForm'),(78,'postProcessFeatureValue','displayFeatureValuePostProcess'),(79,'afterDeleteFeatureValue','actionFeatureValueDelete'),(80,'afterSaveFeatureValue','actionFeatureValueSave'),(81,'attributeForm','displayAttributeForm'),(82,'postProcessAttribute','actionAttributePostProcess'),(83,'afterDeleteAttribute','actionAttributeDelete'),(84,'afterSaveAttribute','actionAttributeSave'),(85,'taxManager','actionTaxManager'),(86,'myAccountBlock','displayMyAccountBlock');
/*!40000 ALTER TABLE `qlo_hook_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_hook_module`
--

DROP TABLE IF EXISTS `qlo_hook_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_hook_module` (
  `id_module` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `id_hook` int unsigned NOT NULL,
  `position` tinyint unsigned NOT NULL,
  PRIMARY KEY (`id_module`,`id_hook`,`id_shop`),
  KEY `id_hook` (`id_hook`),
  KEY `id_module` (`id_module`),
  KEY `position` (`id_shop`,`position`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_hook_module`
--

LOCK TABLES `qlo_hook_module` WRITE;
/*!40000 ALTER TABLE `qlo_hook_module` DISABLE KEYS */;
INSERT INTO `qlo_hook_module` VALUES (1,1,10,1),(1,1,15,1),(1,1,26,1),(1,1,55,1),(1,1,57,1),(1,1,82,1),(1,1,103,1),(1,1,110,1),(1,1,111,1),(1,1,112,1),(1,1,113,1),(1,1,114,1),(1,1,115,1),(1,1,116,1),(1,1,117,1),(1,1,118,1),(1,1,119,1),(1,1,120,1),(1,1,121,1),(2,1,8,1),(2,1,122,1),(2,1,123,1),(3,1,26,1),(3,1,31,1),(3,1,124,1),(3,1,125,1),(3,1,126,1),(3,1,127,1),(3,1,128,1),(3,1,129,1),(3,1,130,1),(3,1,131,1),(4,1,132,1),(5,1,133,1),(6,1,9,1),(6,1,134,1),(8,1,17,1),(8,1,135,1),(10,1,1,1),(10,1,5,1),(10,1,136,1),(12,1,138,1),(12,1,139,1),(15,1,35,1),(15,1,36,1),(15,1,140,1),(15,1,141,1),(15,1,142,1),(15,1,143,1),(15,1,144,1),(18,1,145,1),(20,1,146,1),(20,1,147,1),(20,1,148,1),(20,1,149,1),(21,1,150,1),(21,1,151,1),(21,1,152,1),(21,1,153,1),(22,1,154,1),(23,1,155,1),(23,1,156,1),(23,1,157,1),(23,1,158,1),(23,1,159,1),(27,1,52,1),(30,1,40,1),(32,1,39,1),(51,1,160,1),(53,1,2,1),(53,1,161,1),(2,1,10,2),(2,1,110,2),(2,1,120,2),(5,1,8,2),(6,1,115,2),(7,1,9,2),(7,1,134,2),(8,1,82,2),(11,1,1,2),(11,1,5,2),(11,1,136,2),(13,1,103,2),(13,1,121,2),(15,1,57,2),(15,1,135,2),(20,1,15,2),(22,1,152,2),(22,1,153,2),(24,1,55,2),(24,1,151,2),(27,1,155,2),(29,1,154,2),(33,1,39,2),(3,1,10,3),(7,1,115,3),(8,1,9,3),(8,1,134,3),(12,1,8,3),(13,1,120,3),(14,1,103,3),(14,1,121,3),(16,1,26,3),(23,1,152,3),(23,1,153,3),(23,1,154,3),(25,1,151,3),(34,1,39,3),(35,1,15,3),(53,1,57,3),(1,1,8,4),(5,1,10,4),(8,1,115,4),(9,1,9,4),(9,1,134,4),(14,1,120,4),(17,1,26,4),(24,1,152,4),(24,1,153,4),(26,1,151,4),(35,1,39,4),(44,1,15,4),(52,1,121,4),(9,1,115,5),(12,1,10,5),(15,1,120,5),(19,1,26,5),(25,1,152,5),(25,1,153,5),(27,1,151,5),(36,1,39,5),(51,1,15,5),(20,1,26,6),(20,1,115,6),(26,1,152,6),(26,1,153,6),(29,1,151,6),(37,1,39,6),(51,1,10,6),(52,1,15,6),(27,1,152,7),(27,1,153,7),(28,1,151,7),(31,1,26,7),(38,1,39,7),(52,1,10,7),(28,1,152,8),(28,1,153,8),(39,1,39,8),(29,1,152,9),(29,1,153,9),(40,1,39,9),(30,1,153,10),(41,1,39,10),(38,1,153,11),(42,1,39,11),(43,1,39,12),(53,1,153,12),(44,1,39,13),(45,1,39,14),(46,1,39,15),(47,1,39,16),(48,1,39,17),(49,1,39,18),(50,1,39,19);
/*!40000 ALTER TABLE `qlo_hook_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_hook_module_exceptions`
--

DROP TABLE IF EXISTS `qlo_hook_module_exceptions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_hook_module_exceptions` (
  `id_hook_module_exceptions` int unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `id_module` int unsigned NOT NULL,
  `id_hook` int unsigned NOT NULL,
  `file_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_hook_module_exceptions`),
  KEY `id_module` (`id_module`),
  KEY `id_hook` (`id_hook`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_hook_module_exceptions`
--

LOCK TABLES `qlo_hook_module_exceptions` WRITE;
/*!40000 ALTER TABLE `qlo_hook_module_exceptions` DISABLE KEYS */;
INSERT INTO `qlo_hook_module_exceptions` VALUES (1,1,12,8,'category');
/*!40000 ALTER TABLE `qlo_hook_module_exceptions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_access`
--

DROP TABLE IF EXISTS `qlo_htl_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_access` (
  `id_profile` int unsigned NOT NULL,
  `id_hotel` int unsigned NOT NULL,
  `access` int NOT NULL,
  PRIMARY KEY (`id_profile`,`id_hotel`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_access`
--

LOCK TABLES `qlo_htl_access` WRITE;
/*!40000 ALTER TABLE `qlo_htl_access` DISABLE KEYS */;
INSERT INTO `qlo_htl_access` VALUES (1,1,1);
/*!40000 ALTER TABLE `qlo_htl_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_advance_payment`
--

DROP TABLE IF EXISTS `qlo_htl_advance_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_advance_payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_product` int NOT NULL,
  `payment_type` tinyint NOT NULL,
  `value` decimal(20,6) NOT NULL,
  `id_currency` int NOT NULL,
  `tax_include` tinyint NOT NULL,
  `calculate_from` tinyint NOT NULL,
  `active` tinyint NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_advance_payment`
--

LOCK TABLES `qlo_htl_advance_payment` WRITE;
/*!40000 ALTER TABLE `qlo_htl_advance_payment` DISABLE KEYS */;
INSERT INTO `qlo_htl_advance_payment` VALUES (1,1,0,0.000000,0,0,0,0,'2026-02-18 16:25:22','2026-02-18 16:25:22'),(2,2,0,0.000000,0,0,0,0,'2026-02-18 16:25:23','2026-02-18 16:25:23'),(3,3,0,0.000000,0,0,0,0,'2026-02-18 16:25:24','2026-02-18 16:25:24'),(4,4,0,0.000000,0,0,0,0,'2026-02-18 16:25:25','2026-02-18 16:25:25');
/*!40000 ALTER TABLE `qlo_htl_advance_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_bed_type`
--

DROP TABLE IF EXISTS `qlo_htl_bed_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_bed_type` (
  `id_bed_type` int NOT NULL AUTO_INCREMENT,
  `length` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `width` decimal(20,6) NOT NULL DEFAULT '0.000000',
  PRIMARY KEY (`id_bed_type`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_bed_type`
--

LOCK TABLES `qlo_htl_bed_type` WRITE;
/*!40000 ALTER TABLE `qlo_htl_bed_type` DISABLE KEYS */;
INSERT INTO `qlo_htl_bed_type` VALUES (1,6.250000,3.160000),(2,6.660000,3.160000),(3,6.250000,4.500000),(4,6.660000,5.000000),(5,6.660000,6.330000),(6,7.000000,6.000000),(7,6.250000,3.160000),(8,6.250000,4.500000),(9,6.660000,5.000000);
/*!40000 ALTER TABLE `qlo_htl_bed_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_bed_type_lang`
--

DROP TABLE IF EXISTS `qlo_htl_bed_type_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_bed_type_lang` (
  `id_bed_type` int NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `id_lang` int NOT NULL,
  PRIMARY KEY (`id_bed_type`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_bed_type_lang`
--

LOCK TABLES `qlo_htl_bed_type_lang` WRITE;
/*!40000 ALTER TABLE `qlo_htl_bed_type_lang` DISABLE KEYS */;
INSERT INTO `qlo_htl_bed_type_lang` VALUES (1,'Twin Bed',1),(1,'Twin Bed',2),(2,'Twin XL Bed',1),(2,'Twin XL Bed',2),(3,'Full Bed',1),(3,'Full Bed',2),(4,'Queen Bed',1),(4,'Queen Bed',2),(5,'King Bed',1),(5,'King Bed',2),(6,'California King Bed',1),(6,'California King Bed',2),(7,'Bunk Bed',1),(7,'Bunk Bed',2),(8,'Sofa Bed',1),(8,'Sofa Bed',2),(9,'Murphy Bed',1),(9,'Murphy Bed',2);
/*!40000 ALTER TABLE `qlo_htl_bed_type_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_booking_demands`
--

DROP TABLE IF EXISTS `qlo_htl_booking_demands`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_booking_demands` (
  `id_booking_demand` int NOT NULL AUTO_INCREMENT,
  `id_htl_booking` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `unit_price_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unit_price_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_price_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_price_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `price_calc_method` int unsigned DEFAULT '0',
  `id_tax_rules_group` int unsigned DEFAULT '0',
  `tax_computation_method` tinyint unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_booking_demand`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_booking_demands`
--

LOCK TABLES `qlo_htl_booking_demands` WRITE;
/*!40000 ALTER TABLE `qlo_htl_booking_demands` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_htl_booking_demands` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_booking_demands_tax`
--

DROP TABLE IF EXISTS `qlo_htl_booking_demands_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_booking_demands_tax` (
  `id_booking_demand` int NOT NULL AUTO_INCREMENT,
  `id_tax` int NOT NULL,
  `unit_amount` decimal(16,6) NOT NULL DEFAULT '0.000000',
  `total_amount` decimal(16,6) NOT NULL DEFAULT '0.000000',
  PRIMARY KEY (`id_booking_demand`,`id_tax`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_booking_demands_tax`
--

LOCK TABLES `qlo_htl_booking_demands_tax` WRITE;
/*!40000 ALTER TABLE `qlo_htl_booking_demands_tax` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_htl_booking_demands_tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_booking_detail`
--

DROP TABLE IF EXISTS `qlo_htl_booking_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_booking_detail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_product` int NOT NULL,
  `id_order` int NOT NULL,
  `id_order_detail` int NOT NULL,
  `id_cart` int NOT NULL,
  `id_room` int NOT NULL,
  `id_hotel` int NOT NULL,
  `id_customer` int NOT NULL,
  `booking_type` tinyint NOT NULL,
  `id_status` int NOT NULL,
  `comment` text NOT NULL,
  `check_in` datetime NOT NULL,
  `check_out` datetime NOT NULL,
  `planned_check_out` datetime NOT NULL,
  `date_from` datetime NOT NULL,
  `date_to` datetime NOT NULL,
  `total_price_tax_excl` decimal(20,6) NOT NULL,
  `total_price_tax_incl` decimal(20,6) NOT NULL,
  `total_paid_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `is_back_order` tinyint NOT NULL,
  `hotel_name` varchar(255) DEFAULT NULL,
  `room_type_name` varchar(255) DEFAULT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `zipcode` varchar(12) DEFAULT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `check_in_time` varchar(32) DEFAULT NULL,
  `check_out_time` varchar(32) DEFAULT NULL,
  `room_num` varchar(225) DEFAULT NULL,
  `adults` smallint NOT NULL DEFAULT '0',
  `children` smallint NOT NULL DEFAULT '0',
  `child_ages` text NOT NULL,
  `is_refunded` tinyint(1) NOT NULL DEFAULT '0',
  `is_cancelled` tinyint(1) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_booking_detail`
--

LOCK TABLES `qlo_htl_booking_detail` WRITE;
/*!40000 ALTER TABLE `qlo_htl_booking_detail` DISABLE KEYS */;
INSERT INTO `qlo_htl_booking_detail` VALUES (1,1,1,1,1,1,1,2,1,1,'','0000-00-00 00:00:00','0000-00-00 00:00:00','2026-02-20 11:00:00','2026-02-18 00:00:00','2026-02-20 00:00:00',2000.000000,2460.000000,2460.000000,0,'The Hotel Prime','General Rooms','Demo City','','Poland','16-226','0987654321','hotelprime@htl.com','12:00','11:00','GR-101',2,0,'[]',0,0,'2026-02-18 16:37:03','2026-02-18 16:37:03'),(2,1,2,4,2,2,1,2,1,1,'','0000-00-00 00:00:00','0000-00-00 00:00:00','2026-02-27 11:00:00','2026-02-18 00:00:00','2026-02-27 00:00:00',9000.000000,11070.000000,11070.000000,0,'The Hotel Prime','General Rooms','Demo City','','Poland','16-226','0987654321','hotelprime@htl.com','12:00','11:00','GR-102',2,2,'[\"1\",\"2\"]',0,0,'2026-02-18 18:05:42','2026-02-18 18:05:42'),(3,2,3,7,3,6,1,2,1,1,'','0000-00-00 00:00:00','0000-00-00 00:00:00','2026-02-26 11:00:00','2026-02-24 00:00:00','2026-02-26 00:00:00',3000.000000,3690.000000,3690.000000,0,'The Hotel Prime','Delux Rooms','Demo City','','Poland','16-226','0987654321','hotelprime@htl.com','12:00','11:00','DR-101',1,0,'[]',0,0,'2026-02-18 18:18:18','2026-02-18 18:18:18');
/*!40000 ALTER TABLE `qlo_htl_booking_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_booking_document`
--

DROP TABLE IF EXISTS `qlo_htl_booking_document`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_booking_document` (
  `id_htl_booking_document` int NOT NULL AUTO_INCREMENT,
  `id_htl_booking` int NOT NULL,
  `title` varchar(32) NOT NULL DEFAULT '',
  `file_type` tinyint(1) NOT NULL DEFAULT '0',
  `file_name` varchar(8) NOT NULL DEFAULT '',
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_htl_booking_document`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_booking_document`
--

LOCK TABLES `qlo_htl_booking_document` WRITE;
/*!40000 ALTER TABLE `qlo_htl_booking_document` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_htl_booking_document` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_branch_features`
--

DROP TABLE IF EXISTS `qlo_htl_branch_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_branch_features` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_hotel` int unsigned NOT NULL,
  `feature_id` varchar(255) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_branch_features`
--

LOCK TABLES `qlo_htl_branch_features` WRITE;
/*!40000 ALTER TABLE `qlo_htl_branch_features` DISABLE KEYS */;
INSERT INTO `qlo_htl_branch_features` VALUES (1,1,'1','2026-02-18 16:25:22','2026-02-18 16:25:22'),(2,1,'2','2026-02-18 16:25:22','2026-02-18 16:25:22'),(3,1,'4','2026-02-18 16:25:22','2026-02-18 16:25:22'),(4,1,'7','2026-02-18 16:25:22','2026-02-18 16:25:22'),(5,1,'8','2026-02-18 16:25:22','2026-02-18 16:25:22'),(6,1,'9','2026-02-18 16:25:22','2026-02-18 16:25:22'),(7,1,'11','2026-02-18 16:25:22','2026-02-18 16:25:22'),(8,1,'12','2026-02-18 16:25:22','2026-02-18 16:25:22'),(9,1,'14','2026-02-18 16:25:22','2026-02-18 16:25:22'),(10,1,'16','2026-02-18 16:25:22','2026-02-18 16:25:22'),(11,1,'17','2026-02-18 16:25:22','2026-02-18 16:25:22'),(12,1,'18','2026-02-18 16:25:22','2026-02-18 16:25:22'),(13,1,'21','2026-02-18 16:25:22','2026-02-18 16:25:22');
/*!40000 ALTER TABLE `qlo_htl_branch_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_branch_info`
--

DROP TABLE IF EXISTS `qlo_htl_branch_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_branch_info` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_category` int unsigned NOT NULL,
  `email` varchar(128) NOT NULL,
  `check_in` varchar(255) DEFAULT NULL,
  `check_out` varchar(255) DEFAULT NULL,
  `rating` int unsigned NOT NULL,
  `active` tinyint unsigned NOT NULL DEFAULT '0',
  `latitude` decimal(10,8) NOT NULL,
  `longitude` decimal(11,8) NOT NULL,
  `map_formated_address` text NOT NULL,
  `map_input_text` text NOT NULL,
  `active_refund` tinyint unsigned NOT NULL DEFAULT '0',
  `fax` varchar(255) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_branch_info`
--

LOCK TABLES `qlo_htl_branch_info` WRITE;
/*!40000 ALTER TABLE `qlo_htl_branch_info` DISABLE KEYS */;
INSERT INTO `qlo_htl_branch_info` VALUES (1,7,'hotelprime@htl.com','12:00','11:00',3,1,0.00000000,0.00000000,'','',0,'','2026-02-18 16:25:22','2026-02-18 16:25:22');
/*!40000 ALTER TABLE `qlo_htl_branch_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_branch_info_lang`
--

DROP TABLE IF EXISTS `qlo_htl_branch_info_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_branch_info_lang` (
  `id` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `hotel_name` varchar(255) DEFAULT NULL,
  `short_description` text,
  `description` text,
  `policies` text,
  PRIMARY KEY (`id`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_branch_info_lang`
--

LOCK TABLES `qlo_htl_branch_info_lang` WRITE;
/*!40000 ALTER TABLE `qlo_htl_branch_info_lang` DISABLE KEYS */;
INSERT INTO `qlo_htl_branch_info_lang` VALUES (1,1,'The Hotel Prime','The Hotel Prime is the perfect destination for both business and leisure travelers seeking a memorable stay.','<div>\n                <h4><strong>Welcome to The Hotel Prime!</strong></h4>\n                <br />\n                <div>Our hotel is the perfect destination for both business and leisure travelers seeking a memorable stay.</div>\n                <br />\n                <div>Benefits of staying at The Hotel Prime!</div>\n                <br />\n                <div><strong>Accommodation:</strong></div>\n                <div>Indulge in our well-appointed rooms and suites, exquisitely designed to provide a tranquil haven after a long\n                    day of exploration or meetings. Each room is tastefully furnished with modern amenities, including a plush bed,\n                    a spacious work desk, high-speed Wi-Fi, a TV, and a private bathroom adorned with luxurious toiletries.</div>\n                <br />\n                <div><strong>Dining:</strong></div>\n                <div>Savor a delightful culinary experience at our onsite restaurant, where our world-class chefs craft delectable\n                    dishes using the finest ingredients. Whether you crave international flavors or local specialties, our diverse\n                    menu is sure to satisfy every palate. Enjoy a romantic dinner for two or gather with friends and family in our\n                    inviting dining ambiance.</div>\n                <br />\n                <div><strong>Facilities:</strong></div>\n                <div>We believe in providing our guests with a range of facilities to enhance their stay. Take a refreshing dip in\n                    our sparkling swimming pool, work up a sweat in our state-of-the-art fitness center, or unwind with a\n                    rejuvenating spa treatment. Our attentive staff is always on hand to ensure your needs are met with utmost care\n                    and professionalism.</div>\n                <br />\n                <div><strong>Events and Meetings:</strong></div>\n                <div>Host your next corporate event or special occasion in our versatile event spaces, equipped with the latest\n                    audiovisual technology and flexible seating arrangements. From intimate boardroom meetings to grand\n                    celebrations, our dedicated event planners will assist you in creating a seamless and successful gathering.\n                </div>\n                <br />\n                <div><strong>Location:</strong></div>\n                <div>Conveniently located close to major attractions and business districts, our hotel offers easy access to\n                    Alabamas vibrant shopping districts, cultural landmarks, and entertainment venues. Whether you\'re here for\n                    business or leisure, our prime location ensures that you\'re never far from the action.</div>\n                <br />\n                <div><strong>Exceptional Service:</strong></div>\n                <div>At The Hotel Prime, we take pride in delivering exceptional service to our guests. From the moment you step\n                    through our doors, our friendly and knowledgeable staff will cater to your every need, ensuring a memorable and\n                    personalized stay.</div>\n                <br />\n                <div><strong>Book Your Stay:</strong></div>\n                <div>Ready to experience the epitome of luxury and comfort? Book your stay at The Hotel Prime today and let us\n                    create an unforgettable experience for you. Whether you\'re traveling solo, with a loved one, or with a group,\n                    our hotel is dedicated to surpassing your expectations and making your stay truly exceptional.</div></div>','<div>\n                <div>- Accommodation will only be provided to guests whose details are registered with the hotel front desk.</div>\n                <div>- Guests are required to show a valid photo identification during check-in.</div>\n                <div>- GST / Taxes are charged extra and applicable as per government directives.</div>\n                <div>- 100 % advance Payment deposit at the time of Check-in.</div>\n                <div>- The check-in time is 12:00 PM &amp; check-out time is 11:00 AM. (Subject to availability, early check-in, and late check-out will be considered)</div>\n                <div>- The hotel may deny further accommodation to a guest who does not prove to be decent and comply with the hotel policy and rules.</div>\n                <div>- The guest has to bear any loss caused by them to the hotel property.</div></div>'),(1,2,'The Hotel Prime','The Hotel Prime is the perfect destination for both business and leisure travelers seeking a memorable stay.','<div>\n                <h4><strong>Welcome to The Hotel Prime!</strong></h4>\n                <br />\n                <div>Our hotel is the perfect destination for both business and leisure travelers seeking a memorable stay.</div>\n                <br />\n                <div>Benefits of staying at The Hotel Prime!</div>\n                <br />\n                <div><strong>Accommodation:</strong></div>\n                <div>Indulge in our well-appointed rooms and suites, exquisitely designed to provide a tranquil haven after a long\n                    day of exploration or meetings. Each room is tastefully furnished with modern amenities, including a plush bed,\n                    a spacious work desk, high-speed Wi-Fi, a TV, and a private bathroom adorned with luxurious toiletries.</div>\n                <br />\n                <div><strong>Dining:</strong></div>\n                <div>Savor a delightful culinary experience at our onsite restaurant, where our world-class chefs craft delectable\n                    dishes using the finest ingredients. Whether you crave international flavors or local specialties, our diverse\n                    menu is sure to satisfy every palate. Enjoy a romantic dinner for two or gather with friends and family in our\n                    inviting dining ambiance.</div>\n                <br />\n                <div><strong>Facilities:</strong></div>\n                <div>We believe in providing our guests with a range of facilities to enhance their stay. Take a refreshing dip in\n                    our sparkling swimming pool, work up a sweat in our state-of-the-art fitness center, or unwind with a\n                    rejuvenating spa treatment. Our attentive staff is always on hand to ensure your needs are met with utmost care\n                    and professionalism.</div>\n                <br />\n                <div><strong>Events and Meetings:</strong></div>\n                <div>Host your next corporate event or special occasion in our versatile event spaces, equipped with the latest\n                    audiovisual technology and flexible seating arrangements. From intimate boardroom meetings to grand\n                    celebrations, our dedicated event planners will assist you in creating a seamless and successful gathering.\n                </div>\n                <br />\n                <div><strong>Location:</strong></div>\n                <div>Conveniently located close to major attractions and business districts, our hotel offers easy access to\n                    Alabamas vibrant shopping districts, cultural landmarks, and entertainment venues. Whether you\'re here for\n                    business or leisure, our prime location ensures that you\'re never far from the action.</div>\n                <br />\n                <div><strong>Exceptional Service:</strong></div>\n                <div>At The Hotel Prime, we take pride in delivering exceptional service to our guests. From the moment you step\n                    through our doors, our friendly and knowledgeable staff will cater to your every need, ensuring a memorable and\n                    personalized stay.</div>\n                <br />\n                <div><strong>Book Your Stay:</strong></div>\n                <div>Ready to experience the epitome of luxury and comfort? Book your stay at The Hotel Prime today and let us\n                    create an unforgettable experience for you. Whether you\'re traveling solo, with a loved one, or with a group,\n                    our hotel is dedicated to surpassing your expectations and making your stay truly exceptional.</div></div>','<div>\n                <div>- Accommodation will only be provided to guests whose details are registered with the hotel front desk.</div>\n                <div>- Guests are required to show a valid photo identification during check-in.</div>\n                <div>- GST / Taxes are charged extra and applicable as per government directives.</div>\n                <div>- 100 % advance Payment deposit at the time of Check-in.</div>\n                <div>- The check-in time is 12:00 PM &amp; check-out time is 11:00 AM. (Subject to availability, early check-in, and late check-out will be considered)</div>\n                <div>- The hotel may deny further accommodation to a guest who does not prove to be decent and comply with the hotel policy and rules.</div>\n                <div>- The guest has to bear any loss caused by them to the hotel property.</div></div>');
/*!40000 ALTER TABLE `qlo_htl_branch_info_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_branch_refund_rules`
--

DROP TABLE IF EXISTS `qlo_htl_branch_refund_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_branch_refund_rules` (
  `id_hotel_refund_rule` int NOT NULL AUTO_INCREMENT,
  `id_refund_rule` int unsigned NOT NULL,
  `id_hotel` int unsigned NOT NULL,
  `position` int unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_hotel_refund_rule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_branch_refund_rules`
--

LOCK TABLES `qlo_htl_branch_refund_rules` WRITE;
/*!40000 ALTER TABLE `qlo_htl_branch_refund_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_htl_branch_refund_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_cart_booking_data`
--

DROP TABLE IF EXISTS `qlo_htl_cart_booking_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_cart_booking_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_cart` int NOT NULL,
  `id_guest` int NOT NULL,
  `id_order` int NOT NULL,
  `id_customer` int NOT NULL,
  `id_currency` int NOT NULL,
  `id_product` int NOT NULL,
  `id_room` int NOT NULL,
  `id_hotel` int NOT NULL,
  `quantity` int NOT NULL,
  `booking_type` tinyint NOT NULL,
  `comment` text NOT NULL,
  `is_back_order` tinyint NOT NULL,
  `extra_demands` text NOT NULL,
  `date_from` datetime NOT NULL,
  `date_to` datetime NOT NULL,
  `adults` smallint NOT NULL,
  `children` smallint NOT NULL,
  `child_ages` text NOT NULL,
  `is_refunded` tinyint(1) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_cart_booking_data`
--

LOCK TABLES `qlo_htl_cart_booking_data` WRITE;
/*!40000 ALTER TABLE `qlo_htl_cart_booking_data` DISABLE KEYS */;
INSERT INTO `qlo_htl_cart_booking_data` VALUES (1,1,2,1,2,1,1,1,1,2,1,'',0,'[]','2026-02-18 00:00:00','2026-02-20 00:00:00',2,0,'[]',0,'2026-02-18 16:36:35','2026-02-18 16:37:03'),(2,2,2,2,2,1,1,2,1,9,1,'',0,'[]','2026-02-18 00:00:00','2026-02-27 00:00:00',2,2,'[\"1\",\"2\"]',0,'2026-02-18 18:05:10','2026-02-18 18:05:42'),(3,3,2,3,2,1,2,6,1,2,1,'',0,'[]','2026-02-24 00:00:00','2026-02-26 00:00:00',1,0,'[]',0,'2026-02-18 18:17:02','2026-02-18 18:18:18');
/*!40000 ALTER TABLE `qlo_htl_cart_booking_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_custom_navigation_link`
--

DROP TABLE IF EXISTS `qlo_htl_custom_navigation_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_custom_navigation_link` (
  `id_navigation_link` int NOT NULL AUTO_INCREMENT,
  `link` text NOT NULL,
  `is_custom_link` tinyint(1) NOT NULL,
  `id_cms` int NOT NULL DEFAULT '0',
  `position` int unsigned NOT NULL DEFAULT '0',
  `show_at_navigation` tinyint(1) NOT NULL DEFAULT '0',
  `show_at_footer` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_navigation_link`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_custom_navigation_link`
--

LOCK TABLES `qlo_htl_custom_navigation_link` WRITE;
/*!40000 ALTER TABLE `qlo_htl_custom_navigation_link` DISABLE KEYS */;
INSERT INTO `qlo_htl_custom_navigation_link` VALUES (1,'index',0,0,0,1,0,1,'2026-02-18 16:25:29','2026-02-18 16:25:29'),(2,'our-properties',0,0,1,1,0,1,'2026-02-18 16:25:29','2026-02-18 16:25:29'),(3,'/#hotelInteriorBlock',1,0,2,1,0,1,'2026-02-18 16:25:29','2026-02-18 16:25:29'),(4,'/#hotelAmenitiesBlock',1,0,3,1,0,1,'2026-02-18 16:25:29','2026-02-18 16:25:29'),(5,'/#hotelRoomsBlock',1,0,4,1,0,1,'2026-02-18 16:25:29','2026-02-18 16:25:29'),(6,'/#hotelTestimonialBlock',1,0,5,1,0,1,'2026-02-18 16:25:29','2026-02-18 16:25:29'),(7,'',0,1,6,0,1,1,'2026-02-18 16:25:29','2026-02-18 16:25:29'),(8,'',0,2,7,1,1,1,'2026-02-18 16:25:29','2026-02-18 16:25:29'),(9,'',0,3,8,0,1,1,'2026-02-18 16:25:29','2026-02-18 16:25:29'),(10,'',0,4,9,1,1,1,'2026-02-18 16:25:29','2026-02-18 16:25:29'),(11,'',0,5,10,0,1,1,'2026-02-18 16:25:29','2026-02-18 16:25:29'),(12,'contact',0,0,11,1,0,1,'2026-02-18 16:25:29','2026-02-18 16:25:29');
/*!40000 ALTER TABLE `qlo_htl_custom_navigation_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_custom_navigation_link_lang`
--

DROP TABLE IF EXISTS `qlo_htl_custom_navigation_link_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_custom_navigation_link_lang` (
  `id_navigation_link` int NOT NULL,
  `id_lang` int NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_navigation_link`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_custom_navigation_link_lang`
--

LOCK TABLES `qlo_htl_custom_navigation_link_lang` WRITE;
/*!40000 ALTER TABLE `qlo_htl_custom_navigation_link_lang` DISABLE KEYS */;
INSERT INTO `qlo_htl_custom_navigation_link_lang` VALUES (1,1,'Home'),(1,2,'Home'),(2,1,'Our Properties'),(2,2,'Our Properties'),(3,1,'Interior'),(3,2,'Interior'),(4,1,'Amenities'),(4,2,'Amenities'),(5,1,'Rooms'),(5,2,'Rooms'),(6,1,'Testimonials'),(6,2,'Testimonials'),(7,1,''),(7,2,''),(8,1,''),(8,2,''),(9,1,''),(9,2,''),(10,1,''),(10,2,''),(11,1,''),(11,2,''),(12,1,'Contact Us'),(12,2,'Contact Us');
/*!40000 ALTER TABLE `qlo_htl_custom_navigation_link_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_features`
--

DROP TABLE IF EXISTS `qlo_htl_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_features` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `parent_feature_id` int unsigned NOT NULL,
  `position` int unsigned NOT NULL,
  `active` int NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_features`
--

LOCK TABLES `qlo_htl_features` WRITE;
/*!40000 ALTER TABLE `qlo_htl_features` DISABLE KEYS */;
INSERT INTO `qlo_htl_features` VALUES (1,0,1,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(2,1,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(3,1,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(4,1,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(5,1,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(6,1,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(7,1,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(8,1,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(9,0,2,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(10,9,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(11,9,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(12,9,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(13,9,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(14,9,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(15,0,3,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(16,15,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(17,15,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(18,15,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(19,15,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(20,15,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(21,15,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(22,15,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(23,0,4,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(24,23,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(25,23,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(26,23,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(27,23,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(28,23,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(29,23,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(30,23,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(31,23,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(32,23,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(33,23,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(34,23,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(35,23,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(36,23,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(37,0,5,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(38,37,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(39,37,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(40,37,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(41,37,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(42,37,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(43,37,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(44,37,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(45,37,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(46,37,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(47,0,6,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(48,47,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(49,47,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(50,47,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(51,0,7,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(52,51,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(53,51,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(54,0,8,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(55,54,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(56,54,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(57,54,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(58,54,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(59,54,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(60,54,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(61,54,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(62,54,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(63,54,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(64,0,9,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(65,64,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(66,64,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(67,64,0,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(68,0,10,1,'2026-02-18 16:25:21','2026-02-18 16:25:21'),(69,68,0,1,'2026-02-18 16:25:22','2026-02-18 16:25:22'),(70,68,0,1,'2026-02-18 16:25:22','2026-02-18 16:25:22'),(71,68,0,1,'2026-02-18 16:25:22','2026-02-18 16:25:22'),(72,68,0,1,'2026-02-18 16:25:22','2026-02-18 16:25:22'),(73,68,0,1,'2026-02-18 16:25:22','2026-02-18 16:25:22'),(74,68,0,1,'2026-02-18 16:25:22','2026-02-18 16:25:22'),(75,68,0,1,'2026-02-18 16:25:22','2026-02-18 16:25:22'),(76,68,0,1,'2026-02-18 16:25:22','2026-02-18 16:25:22'),(77,68,0,1,'2026-02-18 16:25:22','2026-02-18 16:25:22'),(78,68,0,1,'2026-02-18 16:25:22','2026-02-18 16:25:22'),(79,68,0,1,'2026-02-18 16:25:22','2026-02-18 16:25:22'),(80,68,0,1,'2026-02-18 16:25:22','2026-02-18 16:25:22'),(81,68,0,1,'2026-02-18 16:25:22','2026-02-18 16:25:22'),(82,68,0,1,'2026-02-18 16:25:22','2026-02-18 16:25:22'),(83,68,0,1,'2026-02-18 16:25:22','2026-02-18 16:25:22'),(84,68,0,1,'2026-02-18 16:25:22','2026-02-18 16:25:22'),(85,68,0,1,'2026-02-18 16:25:22','2026-02-18 16:25:22'),(86,68,0,1,'2026-02-18 16:25:22','2026-02-18 16:25:22'),(87,68,0,1,'2026-02-18 16:25:22','2026-02-18 16:25:22'),(88,68,0,1,'2026-02-18 16:25:22','2026-02-18 16:25:22'),(89,68,0,1,'2026-02-18 16:25:22','2026-02-18 16:25:22'),(90,68,0,1,'2026-02-18 16:25:22','2026-02-18 16:25:22'),(91,68,0,1,'2026-02-18 16:25:22','2026-02-18 16:25:22'),(92,0,11,1,'2026-02-18 16:25:22','2026-02-18 16:25:22'),(93,92,0,1,'2026-02-18 16:25:22','2026-02-18 16:25:22'),(94,92,0,1,'2026-02-18 16:25:22','2026-02-18 16:25:22'),(95,92,0,1,'2026-02-18 16:25:22','2026-02-18 16:25:22'),(96,92,0,1,'2026-02-18 16:25:22','2026-02-18 16:25:22'),(97,92,0,1,'2026-02-18 16:25:22','2026-02-18 16:25:22'),(98,0,12,1,'2026-02-18 16:25:22','2026-02-18 16:25:22'),(99,98,0,1,'2026-02-18 16:25:22','2026-02-18 16:25:22'),(100,98,0,1,'2026-02-18 16:25:22','2026-02-18 16:25:22'),(101,98,0,1,'2026-02-18 16:25:22','2026-02-18 16:25:22'),(102,98,0,1,'2026-02-18 16:25:22','2026-02-18 16:25:22'),(103,98,0,1,'2026-02-18 16:25:22','2026-02-18 16:25:22'),(104,98,0,1,'2026-02-18 16:25:22','2026-02-18 16:25:22'),(105,98,0,1,'2026-02-18 16:25:22','2026-02-18 16:25:22'),(106,98,0,1,'2026-02-18 16:25:22','2026-02-18 16:25:22'),(107,98,0,1,'2026-02-18 16:25:22','2026-02-18 16:25:22'),(108,98,0,1,'2026-02-18 16:25:22','2026-02-18 16:25:22'),(109,98,0,1,'2026-02-18 16:25:22','2026-02-18 16:25:22'),(110,98,0,1,'2026-02-18 16:25:22','2026-02-18 16:25:22');
/*!40000 ALTER TABLE `qlo_htl_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_features_block_data`
--

DROP TABLE IF EXISTS `qlo_htl_features_block_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_features_block_data` (
  `id_features_block` int NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL,
  `position` int NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_features_block`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_features_block_data`
--

LOCK TABLES `qlo_htl_features_block_data` WRITE;
/*!40000 ALTER TABLE `qlo_htl_features_block_data` DISABLE KEYS */;
INSERT INTO `qlo_htl_features_block_data` VALUES (1,1,0,'2026-02-18 16:25:28','2026-02-18 16:25:28'),(2,1,1,'2026-02-18 16:25:28','2026-02-18 16:25:28'),(3,1,2,'2026-02-18 16:25:28','2026-02-18 16:25:28'),(4,1,3,'2026-02-18 16:25:28','2026-02-18 16:25:28');
/*!40000 ALTER TABLE `qlo_htl_features_block_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_features_block_data_lang`
--

DROP TABLE IF EXISTS `qlo_htl_features_block_data_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_features_block_data_lang` (
  `id_features_block` int NOT NULL,
  `id_lang` int NOT NULL,
  `feature_title` text NOT NULL,
  `feature_description` text NOT NULL,
  PRIMARY KEY (`id_features_block`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_features_block_data_lang`
--

LOCK TABLES `qlo_htl_features_block_data_lang` WRITE;
/*!40000 ALTER TABLE `qlo_htl_features_block_data_lang` DISABLE KEYS */;
INSERT INTO `qlo_htl_features_block_data_lang` VALUES (1,1,'Luxurious Rooms','Experience unparalleled comfort in our luxurious rooms, featuring premium amenities and stunning views of the lake or cityscape.'),(1,2,'Luxurious Rooms','Experience unparalleled comfort in our luxurious rooms, featuring premium amenities and stunning views of the lake or cityscape.'),(2,1,'World class chefs','Experience culinary excellence with world-class chefs, where gourmet dishes are crafted from the finest local ingredients.'),(2,2,'World class chefs','Experience culinary excellence with world-class chefs, where gourmet dishes are crafted from the finest local ingredients.'),(3,1,'Restaurants','Savor exquisite dining at our restaurant, where a delightful menu is crafted from the finest local ingredients.'),(3,2,'Restaurants','Savor exquisite dining at our restaurant, where a delightful menu is crafted from the finest local ingredients.'),(4,1,'Gym & Spa','Rejuvenate with our state-of-the-art gym and spa, offering a sanctuary for relaxation and fitness.'),(4,2,'Gym & Spa','Rejuvenate with our state-of-the-art gym and spa, offering a sanctuary for relaxation and fitness.');
/*!40000 ALTER TABLE `qlo_htl_features_block_data_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_features_lang`
--

DROP TABLE IF EXISTS `qlo_htl_features_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_features_lang` (
  `id` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_features_lang`
--

LOCK TABLES `qlo_htl_features_lang` WRITE;
/*!40000 ALTER TABLE `qlo_htl_features_lang` DISABLE KEYS */;
INSERT INTO `qlo_htl_features_lang` VALUES (1,1,'Business Services'),(1,2,'Business Services'),(2,1,'Business Center'),(2,2,'Business Center'),(3,1,'Audio-Visual Equipment'),(3,2,'Audio-Visual Equipment'),(4,1,'Board room'),(4,2,'Board room'),(5,1,'Conference Facilities'),(5,2,'Conference Facilities'),(6,1,'Secretarial Services'),(6,2,'Secretarial Services'),(7,1,'Fax Machine'),(7,2,'Fax Machine'),(8,1,'Internet Access'),(8,2,'Internet Access'),(9,1,'Complementary'),(9,2,'Complementary'),(10,1,'Internet Access Free'),(10,2,'Internet Access Free'),(11,1,'Transfer Available'),(11,2,'Transfer Available'),(12,1,'NewsPaper In Lobby'),(12,2,'NewsPaper In Lobby'),(13,1,'Shopping Drop Facility'),(13,2,'Shopping Drop Facility'),(14,1,'Welcome Drinks'),(14,2,'Welcome Drinks'),(15,1,'Entertainment'),(15,2,'Entertainment'),(16,1,'DiscoTheatre'),(16,2,'DiscoTheatre'),(17,1,'Casino'),(17,2,'Casino'),(18,1,'Amphitheatre'),(18,2,'Amphitheatre'),(19,1,'Dance Performances(On Demand)'),(19,2,'Dance Performances(On Demand)'),(20,1,'Karoke'),(20,2,'Karoke'),(21,1,'Mini Theatre'),(21,2,'Mini Theatre'),(22,1,'Night Club'),(22,2,'Night Club'),(23,1,'Facilities'),(23,2,'Facilities'),(24,1,'Laundry Service'),(24,2,'Laundry Service'),(25,1,'Power Backup'),(25,2,'Power Backup'),(26,1,'ATM/Banking'),(26,2,'ATM/Banking'),(27,1,'Currency Exchange'),(27,2,'Currency Exchange'),(28,1,'Dry Cleaning'),(28,2,'Dry Cleaning'),(29,1,'Library'),(29,2,'Library'),(30,1,'Doctor On Call'),(30,2,'Doctor On Call'),(31,1,'Party Hall'),(31,2,'Party Hall'),(32,1,'Yoga Hall'),(32,2,'Yoga Hall'),(33,1,'Pets Allowed'),(33,2,'Pets Allowed'),(34,1,'Kids Play Zone'),(34,2,'Kids Play Zone'),(35,1,'Wedding Services Facilities'),(35,2,'Wedding Services Facilities'),(36,1,'Fire Place Available'),(36,2,'Fire Place Available'),(37,1,'General Services'),(37,2,'General Services'),(38,1,'Room Service'),(38,2,'Room Service'),(39,1,'Cook Service'),(39,2,'Cook Service'),(40,1,'Car Rental'),(40,2,'Car Rental'),(41,1,'Door Man'),(41,2,'Door Man'),(42,1,'Grocery'),(42,2,'Grocery'),(43,1,'Medical Assistance'),(43,2,'Medical Assistance'),(44,1,'Postal Services'),(44,2,'Postal Services'),(45,1,'Spa Services'),(45,2,'Spa Services'),(46,1,'Multilingual Staff'),(46,2,'Multilingual Staff'),(47,1,'Indoors'),(47,2,'Indoors'),(48,1,'Parking'),(48,2,'Parking'),(49,1,'Solarium'),(49,2,'Solarium'),(50,1,'Veranda'),(50,2,'Veranda'),(51,1,'Internet'),(51,2,'Internet'),(52,1,'Internet Access-Surcharge'),(52,2,'Internet Access-Surcharge'),(53,1,'Internet / Fax (Reception area only)'),(53,2,'Internet / Fax (Reception area only)'),(54,1,'Outdoors'),(54,2,'Outdoors'),(55,1,'Gardens'),(55,2,'Gardens'),(56,1,'Outdoor Parking - Secured'),(56,2,'Outdoor Parking - Secured'),(57,1,'Barbecue AreaCampfire / Bon Fire'),(57,2,'Barbecue AreaCampfire / Bon Fire'),(58,1,'Childrens Park'),(58,2,'Childrens Park'),(59,1,'Fishing'),(59,2,'Fishing'),(60,1,'Golf Course'),(60,2,'Golf Course'),(61,1,'Outdoor Parking - Non Secured'),(61,2,'Outdoor Parking - Non Secured'),(62,1,'Private Beach'),(62,2,'Private Beach'),(63,1,'Rooftop Garden'),(63,2,'Rooftop Garden'),(64,1,'Parking'),(64,2,'Parking'),(65,1,'Parking (Surcharge)'),(65,2,'Parking (Surcharge)'),(66,1,'Parking Facilities Available'),(66,2,'Parking Facilities Available'),(67,1,'Valet service'),(67,2,'Valet service'),(68,1,'Sports And Recreation'),(68,2,'Sports And Recreation'),(69,1,'Health Club / Gym Facility Available'),(69,2,'Health Club / Gym Facility Available'),(70,1,'Bike on Rent'),(70,2,'Bike on Rent'),(71,1,'Badminttion Court'),(71,2,'Badminttion Court'),(72,1,'Basketball Court'),(72,2,'Basketball Court'),(73,1,'Billiards'),(73,2,'Billiards'),(74,1,'Boating'),(74,2,'Boating'),(75,1,'Bowling'),(75,2,'Bowling'),(76,1,'Camel Ride'),(76,2,'Camel Ride'),(77,1,'Clubhouse'),(77,2,'Clubhouse'),(78,1,'Fitness Equipment'),(78,2,'Fitness Equipment'),(79,1,'Fun Floats'),(79,2,'Fun Floats'),(80,1,'Games Zone'),(80,2,'Games Zone'),(81,1,'Horse Ride ( Chargeable )'),(81,2,'Horse Ride ( Chargeable )'),(82,1,'Marina On Site'),(82,2,'Marina On Site'),(83,1,'Nature Walk'),(83,2,'Nature Walk'),(84,1,'Pool Table'),(84,2,'Pool Table'),(85,1,'Safari'),(85,2,'Safari'),(86,1,'Skiing Facility'),(86,2,'Skiing Facility'),(87,1,'Available Spa Services'),(87,2,'Available Spa Services'),(88,1,'Nearby Squash court'),(88,2,'Nearby Squash court'),(89,1,'Table Tennis'),(89,2,'Table Tennis'),(90,1,'Tennis Court'),(90,2,'Tennis Court'),(91,1,'Virtual Golf'),(91,2,'Virtual Golf'),(92,1,'Water Amenities'),(92,2,'Water Amenities'),(93,1,'Swimming Pool'),(93,2,'Swimming Pool'),(94,1,'Jacuzzi'),(94,2,'Jacuzzi'),(95,1,'Private / Plunge Pool'),(95,2,'Private / Plunge Pool'),(96,1,'Sauna'),(96,2,'Sauna'),(97,1,'Whirlpool Bath / Shower Cubicle'),(97,2,'Whirlpool Bath / Shower Cubicle'),(98,1,'Wine And Dine'),(98,2,'Wine And Dine'),(99,1,'Bar / Lounge'),(99,2,'Bar / Lounge'),(100,1,'Multi Cuisine Restaurant'),(100,2,'Multi Cuisine Restaurant'),(101,1,'Catering'),(101,2,'Catering'),(102,1,'Coffee Shop / Cafe'),(102,2,'Coffee Shop / Cafe'),(103,1,'Food Facility'),(103,2,'Food Facility'),(104,1,'Hookah Lounge'),(104,2,'Hookah Lounge'),(105,1,'Kitchen available (home cook food on request)'),(105,2,'Kitchen available (home cook food on request)'),(106,1,'Open Air Restaurant / Dining'),(106,2,'Open Air Restaurant / Dining'),(107,1,'Pool Cafe'),(107,2,'Pool Cafe'),(108,1,'Poolside Bar'),(108,2,'Poolside Bar'),(109,1,'Restaurant Veg / Non Veg Kitchens Separate'),(109,2,'Restaurant Veg / Non Veg Kitchens Separate'),(110,1,'Vegetarian Food / Jain Food Available'),(110,2,'Vegetarian Food / Jain Food Available');
/*!40000 ALTER TABLE `qlo_htl_features_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_footer_payment_block_info`
--

DROP TABLE IF EXISTS `qlo_htl_footer_payment_block_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_footer_payment_block_info` (
  `id_payment_block` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `active` tinyint(1) NOT NULL,
  `position` int unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_payment_block`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_footer_payment_block_info`
--

LOCK TABLES `qlo_htl_footer_payment_block_info` WRITE;
/*!40000 ALTER TABLE `qlo_htl_footer_payment_block_info` DISABLE KEYS */;
INSERT INTO `qlo_htl_footer_payment_block_info` VALUES (1,'Visa',1,0,'2026-02-18 16:25:29','2026-02-18 16:25:29'),(2,'American Express',1,1,'2026-02-18 16:25:29','2026-02-18 16:25:29'),(3,'MasterCard',1,2,'2026-02-18 16:25:29','2026-02-18 16:25:29'),(4,'Paypal',1,3,'2026-02-18 16:25:29','2026-02-18 16:25:29');
/*!40000 ALTER TABLE `qlo_htl_footer_payment_block_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_image`
--

DROP TABLE IF EXISTS `qlo_htl_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_image` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `id_hotel` int unsigned NOT NULL,
  `cover` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_image`
--

LOCK TABLES `qlo_htl_image` WRITE;
/*!40000 ALTER TABLE `qlo_htl_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_htl_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_interior_image`
--

DROP TABLE IF EXISTS `qlo_htl_interior_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_interior_image` (
  `id_interior_image` int NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `display_name` text NOT NULL,
  `active` tinyint(1) NOT NULL,
  `position` int NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_interior_image`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_interior_image`
--

LOCK TABLES `qlo_htl_interior_image` WRITE;
/*!40000 ALTER TABLE `qlo_htl_interior_image` DISABLE KEYS */;
INSERT INTO `qlo_htl_interior_image` VALUES (1,'1','Dummy Image 1',1,0,'2026-02-18 16:25:28','2026-02-18 16:25:28'),(2,'2','Dummy Image 2',1,1,'2026-02-18 16:25:28','2026-02-18 16:25:28'),(3,'3','Dummy Image 3',1,2,'2026-02-18 16:25:28','2026-02-18 16:25:28'),(4,'4','Dummy Image 4',1,3,'2026-02-18 16:25:28','2026-02-18 16:25:28'),(5,'5','Dummy Image 5',1,4,'2026-02-18 16:25:28','2026-02-18 16:25:28'),(6,'6','Dummy Image 6',1,5,'2026-02-18 16:25:28','2026-02-18 16:25:28'),(7,'7','Dummy Image 7',1,6,'2026-02-18 16:25:28','2026-02-18 16:25:28'),(8,'8','Dummy Image 8',1,7,'2026-02-18 16:25:28','2026-02-18 16:25:28'),(9,'9','Dummy Image 9',1,8,'2026-02-18 16:25:28','2026-02-18 16:25:28'),(10,'10','Dummy Image 10',1,9,'2026-02-18 16:25:28','2026-02-18 16:25:28'),(11,'11','Dummy Image 11',1,10,'2026-02-18 16:25:28','2026-02-18 16:25:28'),(12,'12','Dummy Image 12',1,11,'2026-02-18 16:25:28','2026-02-18 16:25:28');
/*!40000 ALTER TABLE `qlo_htl_interior_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_order_refund_rules`
--

DROP TABLE IF EXISTS `qlo_htl_order_refund_rules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_order_refund_rules` (
  `id_refund_rule` int NOT NULL AUTO_INCREMENT,
  `payment_type` int unsigned NOT NULL,
  `deduction_value_full_pay` decimal(20,6) NOT NULL,
  `deduction_value_adv_pay` decimal(20,6) NOT NULL,
  `days` decimal(35,0) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_refund_rule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_order_refund_rules`
--

LOCK TABLES `qlo_htl_order_refund_rules` WRITE;
/*!40000 ALTER TABLE `qlo_htl_order_refund_rules` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_htl_order_refund_rules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_order_refund_rules_lang`
--

DROP TABLE IF EXISTS `qlo_htl_order_refund_rules_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_order_refund_rules_lang` (
  `id_refund_rule` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id_refund_rule`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_order_refund_rules_lang`
--

LOCK TABLES `qlo_htl_order_refund_rules_lang` WRITE;
/*!40000 ALTER TABLE `qlo_htl_order_refund_rules_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_htl_order_refund_rules_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_order_restrict_date`
--

DROP TABLE IF EXISTS `qlo_htl_order_restrict_date`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_order_restrict_date` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_hotel` int NOT NULL,
  `use_global_max_checkout_offset` tinyint(1) NOT NULL,
  `max_checkout_offset` int NOT NULL,
  `use_global_min_booking_offset` tinyint(1) NOT NULL,
  `min_booking_offset` int NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_order_restrict_date`
--

LOCK TABLES `qlo_htl_order_restrict_date` WRITE;
/*!40000 ALTER TABLE `qlo_htl_order_restrict_date` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_htl_order_restrict_date` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_room_block_data`
--

DROP TABLE IF EXISTS `qlo_htl_room_block_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_room_block_data` (
  `id_room_block` int NOT NULL AUTO_INCREMENT,
  `id_product` int NOT NULL,
  `active` tinyint NOT NULL,
  `position` int NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_room_block`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_room_block_data`
--

LOCK TABLES `qlo_htl_room_block_data` WRITE;
/*!40000 ALTER TABLE `qlo_htl_room_block_data` DISABLE KEYS */;
INSERT INTO `qlo_htl_room_block_data` VALUES (1,2,1,0,'2026-02-18 16:25:28','2026-02-18 16:25:28'),(2,3,1,1,'2026-02-18 16:25:28','2026-02-18 16:25:28'),(3,1,1,2,'2026-02-18 16:25:28','2026-02-18 16:25:28'),(4,4,1,3,'2026-02-18 16:25:28','2026-02-18 16:25:28');
/*!40000 ALTER TABLE `qlo_htl_room_block_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_room_disable_dates`
--

DROP TABLE IF EXISTS `qlo_htl_room_disable_dates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_room_disable_dates` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_room_type` int NOT NULL,
  `id_room` int NOT NULL,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `reason` text,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_room_disable_dates`
--

LOCK TABLES `qlo_htl_room_disable_dates` WRITE;
/*!40000 ALTER TABLE `qlo_htl_room_disable_dates` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_htl_room_disable_dates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_room_information`
--

DROP TABLE IF EXISTS `qlo_htl_room_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_room_information` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_product` int NOT NULL,
  `id_hotel` int NOT NULL,
  `room_num` varchar(225) NOT NULL,
  `id_status` int NOT NULL,
  `floor` text NOT NULL,
  `comment` text NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_room_information`
--

LOCK TABLES `qlo_htl_room_information` WRITE;
/*!40000 ALTER TABLE `qlo_htl_room_information` DISABLE KEYS */;
INSERT INTO `qlo_htl_room_information` VALUES (1,1,1,'GR-101',1,'First','','2026-02-18 16:25:22','2026-02-18 16:25:22'),(2,1,1,'GR-102',1,'First','','2026-02-18 16:25:22','2026-02-18 16:25:22'),(3,1,1,'GR-103',1,'First','','2026-02-18 16:25:22','2026-02-18 16:25:22'),(4,1,1,'GR-104',1,'First','','2026-02-18 16:25:22','2026-02-18 16:25:22'),(5,1,1,'GR-105',1,'First','','2026-02-18 16:25:22','2026-02-18 16:25:22'),(6,2,1,'DR-101',1,'First','','2026-02-18 16:25:23','2026-02-18 16:25:23'),(7,2,1,'DR-102',1,'First','','2026-02-18 16:25:23','2026-02-18 16:25:23'),(8,2,1,'DR-103',1,'First','','2026-02-18 16:25:23','2026-02-18 16:25:23'),(9,2,1,'DR-104',1,'First','','2026-02-18 16:25:23','2026-02-18 16:25:23'),(10,2,1,'DR-105',1,'First','','2026-02-18 16:25:23','2026-02-18 16:25:23'),(11,3,1,'ER-101',1,'First','','2026-02-18 16:25:24','2026-02-18 16:25:24'),(12,3,1,'ER-102',1,'First','','2026-02-18 16:25:24','2026-02-18 16:25:24'),(13,3,1,'ER-103',1,'First','','2026-02-18 16:25:24','2026-02-18 16:25:24'),(14,3,1,'ER-104',1,'First','','2026-02-18 16:25:24','2026-02-18 16:25:24'),(15,3,1,'ER-105',1,'First','','2026-02-18 16:25:24','2026-02-18 16:25:24'),(16,4,1,'LR-101',1,'First','','2026-02-18 16:25:25','2026-02-18 16:25:25'),(17,4,1,'LR-102',1,'First','','2026-02-18 16:25:25','2026-02-18 16:25:25'),(18,4,1,'LR-103',1,'First','','2026-02-18 16:25:25','2026-02-18 16:25:25'),(19,4,1,'LR-104',1,'First','','2026-02-18 16:25:25','2026-02-18 16:25:25'),(20,4,1,'LR-105',1,'First','','2026-02-18 16:25:25','2026-02-18 16:25:25');
/*!40000 ALTER TABLE `qlo_htl_room_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_room_status`
--

DROP TABLE IF EXISTS `qlo_htl_room_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_room_status` (
  `id` int NOT NULL AUTO_INCREMENT,
  `status` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_room_status`
--

LOCK TABLES `qlo_htl_room_status` WRITE;
/*!40000 ALTER TABLE `qlo_htl_room_status` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_htl_room_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_room_type`
--

DROP TABLE IF EXISTS `qlo_htl_room_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_room_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_product` int NOT NULL,
  `id_hotel` int NOT NULL,
  `adults` smallint NOT NULL DEFAULT '2',
  `children` smallint NOT NULL DEFAULT '0',
  `max_adults` smallint NOT NULL DEFAULT '2',
  `max_children` smallint NOT NULL DEFAULT '0',
  `max_guests` smallint NOT NULL DEFAULT '2',
  `min_los` smallint NOT NULL DEFAULT '1',
  `max_los` smallint NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_room_type`
--

LOCK TABLES `qlo_htl_room_type` WRITE;
/*!40000 ALTER TABLE `qlo_htl_room_type` DISABLE KEYS */;
INSERT INTO `qlo_htl_room_type` VALUES (1,1,1,2,2,2,2,4,1,0,'2026-02-18 16:25:22','2026-02-18 16:25:22'),(2,2,1,2,2,2,2,4,1,0,'2026-02-18 16:25:23','2026-02-18 16:25:23'),(3,3,1,2,2,2,2,4,1,0,'2026-02-18 16:25:24','2026-02-18 16:25:24'),(4,4,1,2,2,2,2,4,1,0,'2026-02-18 16:25:25','2026-02-18 16:25:25');
/*!40000 ALTER TABLE `qlo_htl_room_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_room_type_bed_type`
--

DROP TABLE IF EXISTS `qlo_htl_room_type_bed_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_room_type_bed_type` (
  `id_room_type_bed_type` int NOT NULL AUTO_INCREMENT,
  `id_product` int NOT NULL,
  `id_bed_type` int NOT NULL,
  PRIMARY KEY (`id_room_type_bed_type`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_room_type_bed_type`
--

LOCK TABLES `qlo_htl_room_type_bed_type` WRITE;
/*!40000 ALTER TABLE `qlo_htl_room_type_bed_type` DISABLE KEYS */;
INSERT INTO `qlo_htl_room_type_bed_type` VALUES (1,1,4),(2,2,4),(3,2,5),(4,3,5),(5,3,6),(6,4,6),(7,4,8);
/*!40000 ALTER TABLE `qlo_htl_room_type_bed_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_room_type_demand`
--

DROP TABLE IF EXISTS `qlo_htl_room_type_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_room_type_demand` (
  `id_room_type_demand` int NOT NULL AUTO_INCREMENT,
  `id_product` int unsigned NOT NULL,
  `id_global_demand` int unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_room_type_demand`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_room_type_demand`
--

LOCK TABLES `qlo_htl_room_type_demand` WRITE;
/*!40000 ALTER TABLE `qlo_htl_room_type_demand` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_htl_room_type_demand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_room_type_demand_price`
--

DROP TABLE IF EXISTS `qlo_htl_room_type_demand_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_room_type_demand_price` (
  `id_room_type_demand_price` int NOT NULL AUTO_INCREMENT,
  `id_product` int unsigned NOT NULL,
  `id_global_demand` int unsigned NOT NULL,
  `id_option` int unsigned NOT NULL,
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_room_type_demand_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_room_type_demand_price`
--

LOCK TABLES `qlo_htl_room_type_demand_price` WRITE;
/*!40000 ALTER TABLE `qlo_htl_room_type_demand_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_htl_room_type_demand_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_room_type_feature_pricing`
--

DROP TABLE IF EXISTS `qlo_htl_room_type_feature_pricing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_room_type_feature_pricing` (
  `id_feature_price` int NOT NULL AUTO_INCREMENT,
  `id_product` int NOT NULL,
  `id_cart` int NOT NULL DEFAULT '0',
  `id_guest` int NOT NULL DEFAULT '0',
  `id_room` int NOT NULL DEFAULT '0',
  `impact_way` tinyint(1) NOT NULL,
  `impact_type` tinyint(1) NOT NULL,
  `impact_value` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `active` tinyint unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_feature_price`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_room_type_feature_pricing`
--

LOCK TABLES `qlo_htl_room_type_feature_pricing` WRITE;
/*!40000 ALTER TABLE `qlo_htl_room_type_feature_pricing` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_htl_room_type_feature_pricing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_room_type_feature_pricing_group`
--

DROP TABLE IF EXISTS `qlo_htl_room_type_feature_pricing_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_room_type_feature_pricing_group` (
  `id_feature_price` int unsigned NOT NULL,
  `id_group` int unsigned NOT NULL,
  PRIMARY KEY (`id_feature_price`,`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_room_type_feature_pricing_group`
--

LOCK TABLES `qlo_htl_room_type_feature_pricing_group` WRITE;
/*!40000 ALTER TABLE `qlo_htl_room_type_feature_pricing_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_htl_room_type_feature_pricing_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_room_type_feature_pricing_lang`
--

DROP TABLE IF EXISTS `qlo_htl_room_type_feature_pricing_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_room_type_feature_pricing_lang` (
  `id_feature_price` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `feature_price_name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id_feature_price`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_room_type_feature_pricing_lang`
--

LOCK TABLES `qlo_htl_room_type_feature_pricing_lang` WRITE;
/*!40000 ALTER TABLE `qlo_htl_room_type_feature_pricing_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_htl_room_type_feature_pricing_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_room_type_feature_pricing_restriction`
--

DROP TABLE IF EXISTS `qlo_htl_room_type_feature_pricing_restriction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_room_type_feature_pricing_restriction` (
  `id_feature_price_restriction` int NOT NULL AUTO_INCREMENT,
  `id_feature_price` int NOT NULL,
  `is_special_days_exists` tinyint(1) NOT NULL,
  `date_selection_type` tinyint(1) NOT NULL,
  `special_days` text,
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_feature_price_restriction`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_room_type_feature_pricing_restriction`
--

LOCK TABLES `qlo_htl_room_type_feature_pricing_restriction` WRITE;
/*!40000 ALTER TABLE `qlo_htl_room_type_feature_pricing_restriction` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_htl_room_type_feature_pricing_restriction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_room_type_global_demand`
--

DROP TABLE IF EXISTS `qlo_htl_room_type_global_demand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_room_type_global_demand` (
  `id_global_demand` int NOT NULL AUTO_INCREMENT,
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `id_tax_rules_group` int unsigned NOT NULL DEFAULT '0',
  `price_calc_method` tinyint(1) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_global_demand`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_room_type_global_demand`
--

LOCK TABLES `qlo_htl_room_type_global_demand` WRITE;
/*!40000 ALTER TABLE `qlo_htl_room_type_global_demand` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_htl_room_type_global_demand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_room_type_global_demand_advance_option`
--

DROP TABLE IF EXISTS `qlo_htl_room_type_global_demand_advance_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_room_type_global_demand_advance_option` (
  `id_option` int NOT NULL AUTO_INCREMENT,
  `id_global_demand` int NOT NULL,
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_option`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_room_type_global_demand_advance_option`
--

LOCK TABLES `qlo_htl_room_type_global_demand_advance_option` WRITE;
/*!40000 ALTER TABLE `qlo_htl_room_type_global_demand_advance_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_htl_room_type_global_demand_advance_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_room_type_global_demand_advance_option_lang`
--

DROP TABLE IF EXISTS `qlo_htl_room_type_global_demand_advance_option_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_room_type_global_demand_advance_option_lang` (
  `id_option` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id_option`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_room_type_global_demand_advance_option_lang`
--

LOCK TABLES `qlo_htl_room_type_global_demand_advance_option_lang` WRITE;
/*!40000 ALTER TABLE `qlo_htl_room_type_global_demand_advance_option_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_htl_room_type_global_demand_advance_option_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_room_type_global_demand_lang`
--

DROP TABLE IF EXISTS `qlo_htl_room_type_global_demand_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_room_type_global_demand_lang` (
  `id_global_demand` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id_global_demand`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_room_type_global_demand_lang`
--

LOCK TABLES `qlo_htl_room_type_global_demand_lang` WRITE;
/*!40000 ALTER TABLE `qlo_htl_room_type_global_demand_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_htl_room_type_global_demand_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_room_type_restriction_date_range`
--

DROP TABLE IF EXISTS `qlo_htl_room_type_restriction_date_range`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_room_type_restriction_date_range` (
  `id_rt_restriction` int NOT NULL AUTO_INCREMENT,
  `id_product` int NOT NULL,
  `min_los` smallint unsigned NOT NULL DEFAULT '1',
  `max_los` smallint unsigned NOT NULL DEFAULT '0',
  `date_from` date NOT NULL,
  `date_to` date NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_rt_restriction`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_room_type_restriction_date_range`
--

LOCK TABLES `qlo_htl_room_type_restriction_date_range` WRITE;
/*!40000 ALTER TABLE `qlo_htl_room_type_restriction_date_range` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_htl_room_type_restriction_date_range` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_room_type_service_product`
--

DROP TABLE IF EXISTS `qlo_htl_room_type_service_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_room_type_service_product` (
  `id_room_type_service_product` int unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int unsigned NOT NULL,
  `position` smallint unsigned NOT NULL DEFAULT '0',
  `id_element` int unsigned NOT NULL,
  `element_type` tinyint unsigned NOT NULL,
  PRIMARY KEY (`id_room_type_service_product`),
  KEY `id_product` (`id_product`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_room_type_service_product`
--

LOCK TABLES `qlo_htl_room_type_service_product` WRITE;
/*!40000 ALTER TABLE `qlo_htl_room_type_service_product` DISABLE KEYS */;
INSERT INTO `qlo_htl_room_type_service_product` VALUES (1,5,0,1,2),(2,5,0,2,2),(3,5,0,3,2),(4,5,0,4,2),(5,6,1,1,2),(6,6,1,2,2),(7,6,1,3,2),(8,6,1,4,2),(9,7,2,1,2),(10,7,2,2,2),(11,7,2,3,2),(12,7,2,4,2),(13,8,3,1,2),(14,8,3,2,2),(15,8,3,3,2),(16,8,3,4,2),(17,9,4,1,2),(18,9,4,2,2),(19,9,4,3,2),(20,9,4,4,2),(21,10,5,1,2),(22,10,5,2,2),(23,10,5,3,2),(24,10,5,4,2);
/*!40000 ALTER TABLE `qlo_htl_room_type_service_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_room_type_service_product_price`
--

DROP TABLE IF EXISTS `qlo_htl_room_type_service_product_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_room_type_service_product_price` (
  `id_room_type_service_product_price` int unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int unsigned NOT NULL,
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `id_tax_rules_group` int unsigned NOT NULL,
  `id_element` int unsigned NOT NULL,
  `element_type` tinyint unsigned NOT NULL,
  PRIMARY KEY (`id_room_type_service_product_price`),
  KEY `id_product` (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_room_type_service_product_price`
--

LOCK TABLES `qlo_htl_room_type_service_product_price` WRITE;
/*!40000 ALTER TABLE `qlo_htl_room_type_service_product_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_htl_room_type_service_product_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_settings_link`
--

DROP TABLE IF EXISTS `qlo_htl_settings_link`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_settings_link` (
  `id_settings_link` int NOT NULL AUTO_INCREMENT,
  `icon` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `link` text NOT NULL,
  `new_window` tinyint(1) NOT NULL DEFAULT '0',
  `position` int unsigned NOT NULL DEFAULT '0',
  `unremovable` tinyint(1) NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_settings_link`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_settings_link`
--

LOCK TABLES `qlo_htl_settings_link` WRITE;
/*!40000 ALTER TABLE `qlo_htl_settings_link` DISABLE KEYS */;
INSERT INTO `qlo_htl_settings_link` VALUES (1,'icon-cogs','index.php?controller=AdminHotelGeneralSettings',0,0,1,1,'2026-02-18 15:25:21','2026-02-18 15:25:21'),(2,'icon-dollar','index.php?controller=AdminHotelFeaturePricesSettings',0,2,1,1,'2026-02-18 15:25:21','2026-02-18 15:25:21'),(3,'icon-plus-square','index.php?controller=AdminRoomTypeGlobalDemand',0,3,1,1,'2026-02-18 15:25:21','2026-02-18 15:25:21'),(4,'icon-file-text','index.php?controller=AdminAboutHotelBlockSetting',0,4,0,1,'2026-02-18 15:25:21','2026-02-18 15:25:21'),(5,'icon-th-list','index.php?controller=AdminFeaturesModuleSetting',0,5,0,1,'2026-02-18 15:25:21','2026-02-18 15:25:21');
/*!40000 ALTER TABLE `qlo_htl_settings_link` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_settings_link_lang`
--

DROP TABLE IF EXISTS `qlo_htl_settings_link_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_settings_link_lang` (
  `id_settings_link` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `hint` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id_settings_link`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_settings_link_lang`
--

LOCK TABLES `qlo_htl_settings_link_lang` WRITE;
/*!40000 ALTER TABLE `qlo_htl_settings_link_lang` DISABLE KEYS */;
INSERT INTO `qlo_htl_settings_link_lang` VALUES (1,1,'General Settings','Configure Your hotel general settings using this option.'),(1,2,'General Settings','Configure Your hotel general settings using this option.'),(2,1,'Advanced Price Rules','Here set Advanced price rules for specific dates.'),(2,2,'Advanced Price Rules','Here set Advanced price rules for specific dates.'),(3,1,'Additional Facilities','Here create Additional facilities and their prices for room types.'),(3,2,'Additional Facilities','Here create Additional facilities and their prices for room types.'),(4,1,'Hotel Interior Block','Configure Hotel Interior block. You can display hotel interior images using this block. This block will be displayed on home page.'),(4,2,'Hotel Interior Block','Configure Hotel Interior block. You can display hotel interior images using this block. This block will be displayed on home page.'),(5,1,'Hotel Amenities Block','Configure Hotels Amenities settings. You can display hotel amenities images using this block. This block will be displayed on home page.'),(5,2,'Hotel Amenities Block','Configure Hotels Amenities settings. You can display hotel amenities images using this block. This block will be displayed on home page.');
/*!40000 ALTER TABLE `qlo_htl_settings_link_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_testimonials_block_data`
--

DROP TABLE IF EXISTS `qlo_htl_testimonials_block_data`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_testimonials_block_data` (
  `id_testimonial_block` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `designation` text NOT NULL,
  `active` tinyint(1) NOT NULL,
  `position` int unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_testimonial_block`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_testimonials_block_data`
--

LOCK TABLES `qlo_htl_testimonials_block_data` WRITE;
/*!40000 ALTER TABLE `qlo_htl_testimonials_block_data` DISABLE KEYS */;
INSERT INTO `qlo_htl_testimonials_block_data` VALUES (1,'Steve Rogers','Eon Comics CEO',1,0,'2026-02-18 16:25:28','2026-02-18 16:25:28'),(2,'Calrk Kent','Ken Comics Kal',1,1,'2026-02-18 16:25:28','2026-02-18 16:25:28'),(3,'John Doe','Jan Comics Joe',1,2,'2026-02-18 16:25:28','2026-02-18 16:25:28');
/*!40000 ALTER TABLE `qlo_htl_testimonials_block_data` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_htl_testimonials_block_data_lang`
--

DROP TABLE IF EXISTS `qlo_htl_testimonials_block_data_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_htl_testimonials_block_data_lang` (
  `id_testimonial_block` int NOT NULL,
  `id_lang` int NOT NULL,
  `testimonial_content` text NOT NULL,
  PRIMARY KEY (`id_testimonial_block`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_htl_testimonials_block_data_lang`
--

LOCK TABLES `qlo_htl_testimonials_block_data_lang` WRITE;
/*!40000 ALTER TABLE `qlo_htl_testimonials_block_data_lang` DISABLE KEYS */;
INSERT INTO `qlo_htl_testimonials_block_data_lang` VALUES (1,1,'As a frequent traveler, I can confidently say Hotel Prime stands out for its tranquil environment and exceptional hospitality. The View Room provided a perfect retreat with its stunning cityscape views and comfortable accommodations.'),(1,2,'As a frequent traveler, I can confidently say Hotel Prime stands out for its tranquil environment and exceptional hospitality. The View Room provided a perfect retreat with its stunning cityscape views and comfortable accommodations.'),(2,1,'Hotel Prime surpassed my expectations in every way. The Executive Room was not only luxurious but also provided a peaceful retreat with its stunning lake views. The attention to detail and personalized service made my stay truly memorable. I highly recommend Hotel Prime for both business and leisure travelers looking for a blend of comfort and sophistication.'),(2,2,'Hotel Prime surpassed my expectations in every way. The Executive Room was not only luxurious but also provided a peaceful retreat with its stunning lake views. The attention to detail and personalized service made my stay truly memorable. I highly recommend Hotel Prime for both business and leisure travelers looking for a blend of comfort and sophistication.'),(3,1,'My stay at Hotel Prime was absolutely rejuvenating. The Executive Room was spacious, elegant, and offered breathtaking lake views. The staff’s attention to detail and impeccable service made my business trip both productive and relaxing.'),(3,2,'My stay at Hotel Prime was absolutely rejuvenating. The Executive Room was spacious, elegant, and offered breathtaking lake views. The staff’s attention to detail and impeccable service made my business trip both productive and relaxing.');
/*!40000 ALTER TABLE `qlo_htl_testimonials_block_data_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_image`
--

DROP TABLE IF EXISTS `qlo_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_image` (
  `id_image` int unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int unsigned NOT NULL,
  `position` smallint unsigned NOT NULL DEFAULT '0',
  `cover` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`id_image`),
  UNIQUE KEY `id_product_cover` (`id_product`,`cover`),
  UNIQUE KEY `idx_product_image` (`id_image`,`id_product`,`cover`),
  KEY `image_product` (`id_product`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_image`
--

LOCK TABLES `qlo_image` WRITE;
/*!40000 ALTER TABLE `qlo_image` DISABLE KEYS */;
INSERT INTO `qlo_image` VALUES (1,1,1,1),(2,1,2,NULL),(3,1,3,NULL),(4,1,4,NULL),(5,2,1,1),(6,2,2,NULL),(7,2,3,NULL),(8,2,4,NULL),(9,3,1,1),(10,3,2,NULL),(11,3,3,NULL),(12,3,4,NULL),(13,4,1,1),(14,4,2,NULL),(15,4,3,NULL),(16,4,4,NULL),(17,4,5,NULL),(18,5,1,1),(19,6,1,1),(20,7,1,1),(21,8,1,1),(22,9,1,1),(23,10,1,1);
/*!40000 ALTER TABLE `qlo_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_image_lang`
--

DROP TABLE IF EXISTS `qlo_image_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_image_lang` (
  `id_image` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `legend` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_image`,`id_lang`),
  KEY `id_image` (`id_image`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_image_lang`
--

LOCK TABLES `qlo_image_lang` WRITE;
/*!40000 ALTER TABLE `qlo_image_lang` DISABLE KEYS */;
INSERT INTO `qlo_image_lang` VALUES (1,1,''),(1,2,''),(2,1,''),(2,2,''),(3,1,''),(3,2,''),(4,1,''),(4,2,''),(5,1,''),(5,2,''),(6,1,''),(6,2,''),(7,1,''),(7,2,''),(8,1,''),(8,2,''),(9,1,''),(9,2,''),(10,1,''),(10,2,''),(11,1,''),(11,2,''),(12,1,''),(12,2,''),(13,1,''),(13,2,''),(14,1,''),(14,2,''),(15,1,''),(15,2,''),(16,1,''),(16,2,''),(17,1,''),(17,2,''),(18,1,''),(18,2,''),(19,1,''),(19,2,''),(20,1,''),(20,2,''),(21,1,''),(21,2,''),(22,1,''),(22,2,''),(23,1,''),(23,2,'');
/*!40000 ALTER TABLE `qlo_image_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_image_shop`
--

DROP TABLE IF EXISTS `qlo_image_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_image_shop` (
  `id_product` int unsigned NOT NULL,
  `id_image` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  `cover` tinyint unsigned DEFAULT NULL,
  PRIMARY KEY (`id_image`,`id_shop`),
  UNIQUE KEY `id_product` (`id_product`,`id_shop`,`cover`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_image_shop`
--

LOCK TABLES `qlo_image_shop` WRITE;
/*!40000 ALTER TABLE `qlo_image_shop` DISABLE KEYS */;
INSERT INTO `qlo_image_shop` VALUES (1,2,1,NULL),(1,3,1,NULL),(1,4,1,NULL),(1,1,1,1),(2,6,1,NULL),(2,7,1,NULL),(2,8,1,NULL),(2,5,1,1),(3,10,1,NULL),(3,11,1,NULL),(3,12,1,NULL),(3,9,1,1),(4,14,1,NULL),(4,15,1,NULL),(4,16,1,NULL),(4,17,1,NULL),(4,13,1,1),(5,18,1,1),(6,19,1,1),(7,20,1,1),(8,21,1,1),(9,22,1,1),(10,23,1,1);
/*!40000 ALTER TABLE `qlo_image_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_image_type`
--

DROP TABLE IF EXISTS `qlo_image_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_image_type` (
  `id_image_type` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `width` int unsigned NOT NULL,
  `height` int unsigned NOT NULL,
  `products` tinyint(1) NOT NULL DEFAULT '1',
  `categories` tinyint(1) NOT NULL DEFAULT '1',
  `hotels` tinyint(1) NOT NULL DEFAULT '1',
  `manufacturers` tinyint(1) NOT NULL DEFAULT '1',
  `suppliers` tinyint(1) NOT NULL DEFAULT '1',
  `scenes` tinyint(1) NOT NULL DEFAULT '1',
  `stores` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_image_type`),
  KEY `image_type_name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_image_type`
--

LOCK TABLES `qlo_image_type` WRITE;
/*!40000 ALTER TABLE `qlo_image_type` DISABLE KEYS */;
INSERT INTO `qlo_image_type` VALUES (1,'cart_default',80,80,1,0,0,0,0,0,0),(2,'small_default',98,98,1,0,1,1,1,0,0),(3,'medium_default',125,125,1,1,1,1,1,0,1),(4,'home_default',250,250,1,0,0,0,0,0,0),(5,'large_default',720,720,1,0,1,1,1,0,0),(6,'thickbox_default',800,800,1,0,0,0,0,0,0),(7,'category_default',870,217,0,1,0,0,0,0,0);
/*!40000 ALTER TABLE `qlo_image_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_import_match`
--

DROP TABLE IF EXISTS `qlo_import_match`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_import_match` (
  `id_import_match` int NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `match` text NOT NULL,
  `skip` int NOT NULL,
  PRIMARY KEY (`id_import_match`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_import_match`
--

LOCK TABLES `qlo_import_match` WRITE;
/*!40000 ALTER TABLE `qlo_import_match` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_import_match` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_lang`
--

DROP TABLE IF EXISTS `qlo_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_lang` (
  `id_lang` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `active` tinyint unsigned NOT NULL DEFAULT '0',
  `iso_code` char(2) NOT NULL,
  `language_code` char(5) NOT NULL,
  `date_format_lite` char(32) NOT NULL DEFAULT 'Y-m-d',
  `date_format_full` char(32) NOT NULL DEFAULT 'Y-m-d H:i:s',
  `is_rtl` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_lang`),
  KEY `lang_iso_code` (`iso_code`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_lang`
--

LOCK TABLES `qlo_lang` WRITE;
/*!40000 ALTER TABLE `qlo_lang` DISABLE KEYS */;
INSERT INTO `qlo_lang` VALUES (1,'English (English)',1,'en','en-us','m/d/Y','m/d/Y H:i:s',0),(2,'Polski (Polish)',1,'pl','pl-pl','Y-m-d','Y-m-d H:i:s',0);
/*!40000 ALTER TABLE `qlo_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_lang_shop`
--

DROP TABLE IF EXISTS `qlo_lang_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_lang_shop` (
  `id_lang` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  PRIMARY KEY (`id_lang`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_lang_shop`
--

LOCK TABLES `qlo_lang_shop` WRITE;
/*!40000 ALTER TABLE `qlo_lang_shop` DISABLE KEYS */;
INSERT INTO `qlo_lang_shop` VALUES (1,1),(2,1);
/*!40000 ALTER TABLE `qlo_lang_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_log`
--

DROP TABLE IF EXISTS `qlo_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_log` (
  `id_log` int unsigned NOT NULL AUTO_INCREMENT,
  `severity` tinyint(1) NOT NULL,
  `error_code` int DEFAULT NULL,
  `message` text NOT NULL,
  `object_type` varchar(32) DEFAULT NULL,
  `object_id` int unsigned DEFAULT NULL,
  `id_employee` int unsigned DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_log`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_log`
--

LOCK TABLES `qlo_log` WRITE;
/*!40000 ALTER TABLE `qlo_log` DISABLE KEYS */;
INSERT INTO `qlo_log` VALUES (1,1,0,'Back Office connection from 192.168.65.1','',0,1,'2026-02-18 16:31:02','2026-02-18 16:31:02'),(2,1,0,'Back Office connection from 188.114.97.11','',0,1,'2026-02-18 16:31:40','2026-02-18 16:31:40'),(3,1,0,'Back Office connection from 188.114.96.11','',0,1,'2026-02-18 16:32:21','2026-02-18 16:32:21'),(4,1,0,'Back Office connection from 192.168.65.1','',0,1,'2026-02-18 16:33:57','2026-02-18 16:33:57'),(5,3,0,'Mailer Error: Connection to \\\"process /usr/sbin/sendmail -bs\\\" has been closed unexpectedly.','',0,0,'2026-02-18 16:35:41','2026-02-18 16:35:41'),(6,3,0,'Mailer Error: Connection to \\\"process /usr/sbin/sendmail -bs\\\" has been closed unexpectedly.','',0,0,'2026-02-18 16:37:03','2026-02-18 16:37:03'),(7,3,0,'Mailer Error: Connection to \\\"process /usr/sbin/sendmail -bs\\\" has been closed unexpectedly.','',0,0,'2026-02-18 16:37:03','2026-02-18 16:37:03'),(8,3,0,'Mailer Error: Connection to \\\"process /usr/sbin/sendmail -bs\\\" has been closed unexpectedly.','',0,0,'2026-02-18 16:37:03','2026-02-18 16:37:03'),(9,3,0,'Mailer Error: Connection to \\\"process /usr/sbin/sendmail -bs\\\" has been closed unexpectedly.','',0,0,'2026-02-18 16:37:03','2026-02-18 16:37:03'),(10,1,0,'Frontcontroller::init - Cart cannot be loaded or a booking has already been created using this cart','Cart',1,0,'2026-02-18 16:37:04','2026-02-18 16:37:04'),(11,3,0,'Mailer Error: Connection to \\\"process /usr/sbin/sendmail -bs\\\" has been closed unexpectedly.','',0,0,'2026-02-18 16:37:34','2026-02-18 16:37:34'),(12,3,0,'Mailer Error: Connection to \\\"process /usr/sbin/sendmail -bs\\\" has been closed unexpectedly.','',0,0,'2026-02-18 18:05:42','2026-02-18 18:05:42'),(13,3,0,'Mailer Error: Connection to \\\"process /usr/sbin/sendmail -bs\\\" has been closed unexpectedly.','',0,0,'2026-02-18 18:05:43','2026-02-18 18:05:43'),(14,3,0,'Mailer Error: Connection to \\\"process /usr/sbin/sendmail -bs\\\" has been closed unexpectedly.','',0,0,'2026-02-18 18:05:43','2026-02-18 18:05:43'),(15,3,0,'Mailer Error: Connection to \\\"process /usr/sbin/sendmail -bs\\\" has been closed unexpectedly.','',0,0,'2026-02-18 18:05:43','2026-02-18 18:05:43'),(16,1,0,'Frontcontroller::init - Cart cannot be loaded or a booking has already been created using this cart','Cart',2,0,'2026-02-18 18:05:43','2026-02-18 18:05:43'),(17,3,0,'Mailer Error: Connection to \\\"process /usr/sbin/sendmail -bs\\\" has been closed unexpectedly.','',0,0,'2026-02-18 18:18:18','2026-02-18 18:18:18'),(18,3,0,'Mailer Error: Connection to \\\"process /usr/sbin/sendmail -bs\\\" has been closed unexpectedly.','',0,0,'2026-02-18 18:18:18','2026-02-18 18:18:18'),(19,3,0,'Mailer Error: Connection to \\\"process /usr/sbin/sendmail -bs\\\" has been closed unexpectedly.','',0,0,'2026-02-18 18:18:18','2026-02-18 18:18:18'),(20,3,0,'Mailer Error: Connection to \\\"process /usr/sbin/sendmail -bs\\\" has been closed unexpectedly.','',0,0,'2026-02-18 18:18:18','2026-02-18 18:18:18'),(21,1,0,'Frontcontroller::init - Cart cannot be loaded or a booking has already been created using this cart','Cart',3,0,'2026-02-18 18:18:18','2026-02-18 18:18:18'),(22,1,0,'Back Office connection from 192.168.65.1','',0,1,'2026-02-18 18:38:44','2026-02-18 18:38:44'),(23,3,0,'Mailer Error: Connection to \\\"process /usr/sbin/sendmail -bs\\\" has been closed unexpectedly.','',0,0,'2026-02-18 19:42:30','2026-02-18 19:42:30'),(24,3,0,'Mailer Error: Connection to \\\"process /usr/sbin/sendmail -bs\\\" has been closed unexpectedly.','',0,0,'2026-02-18 21:24:42','2026-02-18 21:24:42'),(25,3,0,'Mailer Error: Connection to \\\"process /usr/sbin/sendmail -bs\\\" has been closed unexpectedly.','',0,0,'2026-02-18 21:28:49','2026-02-18 21:28:49'),(26,3,0,'Mailer Error: Connection to \\\"process /usr/sbin/sendmail -bs\\\" has been closed unexpectedly.','',0,0,'2026-02-18 21:33:06','2026-02-18 21:33:06'),(27,3,0,'Mailer Error: Connection to \\\"process /usr/sbin/sendmail -bs\\\" has been closed unexpectedly.','',0,0,'2026-02-18 21:34:54','2026-02-18 21:34:54'),(28,3,0,'Mailer Error: Connection to \\\"process /usr/sbin/sendmail -bs\\\" has been closed unexpectedly.','',0,0,'2026-02-18 21:36:15','2026-02-18 21:36:15'),(29,3,0,'Mailer Error: Connection to \\\"process /usr/sbin/sendmail -bs\\\" has been closed unexpectedly.','',0,0,'2026-02-18 21:38:53','2026-02-18 21:38:53'),(30,3,0,'Mailer Error: Connection to \\\"process /usr/sbin/sendmail -bs\\\" has been closed unexpectedly.','',0,0,'2026-02-18 21:40:51','2026-02-18 21:40:51'),(31,3,0,'Mailer Error: Connection to \\\"process /usr/sbin/sendmail -bs\\\" has been closed unexpectedly.','',0,0,'2026-02-18 21:41:24','2026-02-18 21:41:24'),(32,3,0,'Mailer Error: Connection to \\\"process /usr/sbin/sendmail -bs\\\" has been closed unexpectedly.','',0,0,'2026-02-18 22:28:31','2026-02-18 22:28:31'),(33,3,0,'Mailer Error: Connection to \\\"process /usr/sbin/sendmail -bs\\\" has been closed unexpectedly.','',0,0,'2026-02-18 22:42:34','2026-02-18 22:42:34'),(34,3,0,'Mailer Error: Connection to \\\"process /usr/sbin/sendmail -bs\\\" has been closed unexpectedly.','',0,0,'2026-02-18 22:53:58','2026-02-18 22:53:58');
/*!40000 ALTER TABLE `qlo_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_mail`
--

DROP TABLE IF EXISTS `qlo_mail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_mail` (
  `id_mail` int unsigned NOT NULL AUTO_INCREMENT,
  `recipient` varchar(126) NOT NULL,
  `template` varchar(62) NOT NULL,
  `subject` varchar(254) NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `date_add` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id_mail`),
  KEY `recipient` (`recipient`(10))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_mail`
--

LOCK TABLES `qlo_mail` WRITE;
/*!40000 ALTER TABLE `qlo_mail` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_mail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_maintenance_access`
--

DROP TABLE IF EXISTS `qlo_maintenance_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_maintenance_access` (
  `id_maintenance_access` int unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(50) NOT NULL,
  `email` varchar(128) NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_maintenance_access`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_maintenance_access`
--

LOCK TABLES `qlo_maintenance_access` WRITE;
/*!40000 ALTER TABLE `qlo_maintenance_access` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_maintenance_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_manufacturer`
--

DROP TABLE IF EXISTS `qlo_manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_manufacturer` (
  `id_manufacturer` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_manufacturer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_manufacturer`
--

LOCK TABLES `qlo_manufacturer` WRITE;
/*!40000 ALTER TABLE `qlo_manufacturer` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_manufacturer_lang`
--

DROP TABLE IF EXISTS `qlo_manufacturer_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_manufacturer_lang` (
  `id_manufacturer` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `description` text,
  `short_description` text,
  `meta_title` varchar(128) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_manufacturer`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_manufacturer_lang`
--

LOCK TABLES `qlo_manufacturer_lang` WRITE;
/*!40000 ALTER TABLE `qlo_manufacturer_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_manufacturer_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_manufacturer_shop`
--

DROP TABLE IF EXISTS `qlo_manufacturer_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_manufacturer_shop` (
  `id_manufacturer` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  PRIMARY KEY (`id_manufacturer`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_manufacturer_shop`
--

LOCK TABLES `qlo_manufacturer_shop` WRITE;
/*!40000 ALTER TABLE `qlo_manufacturer_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_manufacturer_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_memcached_servers`
--

DROP TABLE IF EXISTS `qlo_memcached_servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_memcached_servers` (
  `id_memcached_server` int unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(254) NOT NULL,
  `port` int unsigned NOT NULL,
  `weight` int unsigned NOT NULL,
  PRIMARY KEY (`id_memcached_server`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_memcached_servers`
--

LOCK TABLES `qlo_memcached_servers` WRITE;
/*!40000 ALTER TABLE `qlo_memcached_servers` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_memcached_servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_message`
--

DROP TABLE IF EXISTS `qlo_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_message` (
  `id_message` int unsigned NOT NULL AUTO_INCREMENT,
  `id_cart` int unsigned DEFAULT NULL,
  `id_customer` int unsigned NOT NULL,
  `id_employee` int unsigned DEFAULT NULL,
  `id_order` int unsigned NOT NULL,
  `message` text NOT NULL,
  `private` tinyint unsigned NOT NULL DEFAULT '1',
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_message`),
  KEY `message_order` (`id_order`),
  KEY `id_cart` (`id_cart`),
  KEY `id_customer` (`id_customer`),
  KEY `id_employee` (`id_employee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_message`
--

LOCK TABLES `qlo_message` WRITE;
/*!40000 ALTER TABLE `qlo_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_message_readed`
--

DROP TABLE IF EXISTS `qlo_message_readed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_message_readed` (
  `id_message` int unsigned NOT NULL,
  `id_employee` int unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_message`,`id_employee`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_message_readed`
--

LOCK TABLES `qlo_message_readed` WRITE;
/*!40000 ALTER TABLE `qlo_message_readed` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_message_readed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_meta`
--

DROP TABLE IF EXISTS `qlo_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_meta` (
  `id_meta` int unsigned NOT NULL AUTO_INCREMENT,
  `page` varchar(64) NOT NULL,
  `configurable` tinyint unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_meta`),
  UNIQUE KEY `page` (`page`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_meta`
--

LOCK TABLES `qlo_meta` WRITE;
/*!40000 ALTER TABLE `qlo_meta` DISABLE KEYS */;
INSERT INTO `qlo_meta` VALUES (1,'pagenotfound',1),(2,'best-sales',1),(3,'contact',1),(4,'index',1),(5,'manufacturer',1),(6,'new-products',1),(7,'password',1),(8,'prices-drop',1),(9,'sitemap',1),(10,'supplier',1),(11,'address',1),(12,'addresses',1),(13,'authentication',1),(14,'cart',1),(15,'discount',1),(16,'history',1),(17,'order-detail',1),(18,'identity',1),(19,'my-account',1),(20,'order-follow',1),(21,'order-slip',1),(22,'order',1),(23,'search',1),(24,'stores',1),(25,'order-opc',1),(26,'guest-tracking',1),(27,'order-confirmation',1),(28,'product',0),(29,'category',0),(30,'cms',0),(31,'module-cheque-payment',0),(32,'module-cheque-validation',0),(33,'module-bankwire-validation',0),(34,'module-bankwire-payment',0),(35,'module-cashondelivery-validation',0),(36,'products-comparison',1),(37,'our-properties',1),(38,'module-blocknewsletter-verification',1);
/*!40000 ALTER TABLE `qlo_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_meta_lang`
--

DROP TABLE IF EXISTS `qlo_meta_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_meta_lang` (
  `id_meta` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `id_lang` int unsigned NOT NULL,
  `title` varchar(128) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `keywords` varchar(255) DEFAULT NULL,
  `url_rewrite` varchar(254) NOT NULL,
  PRIMARY KEY (`id_meta`,`id_shop`,`id_lang`),
  KEY `id_shop` (`id_shop`),
  KEY `id_lang` (`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_meta_lang`
--

LOCK TABLES `qlo_meta_lang` WRITE;
/*!40000 ALTER TABLE `qlo_meta_lang` DISABLE KEYS */;
INSERT INTO `qlo_meta_lang` VALUES (1,1,1,'404 error','This page cannot be found','','page-not-found'),(1,1,2,'Błąd 404','Nie można odnaleźć strony','błąd, 404, nie znaleziono ','nie-znaleziono-strony'),(2,1,1,'Best sales','Our best sales','','best-sales'),(2,1,2,'Najczęściej kupowane','Nasze najlepsze sprzedaże','Najczęściej kupowane','najczesciej-kupowane'),(3,1,1,'Contact us','Use our form to contact us','','contact-us'),(3,1,2,'Skontaktuj się z nami','Skorzystaj z formularza kontaktowego','kontakt,e-mail','kontakt'),(4,1,1,'Hotel Prime','A place where comfort and luxury are blended with nature!','',''),(4,1,2,'Hotel Prime','Miejsce, gdzie komfort i luksus łączą się z naturą!','',''),(5,1,1,'Manufacturers','Manufacturers list','','manufacturers'),(5,1,2,'Producenci','Lista producentów','producent','producenci'),(6,1,1,'New products','Our new products','','new-products'),(6,1,2,'Nowe produkty','Nasze nowe produkty','nowe, produkty','nowe-produkty'),(7,1,1,'Forgot your password','Enter the e-mail address you use to sign in to receive an e-mail with a new password','','password-recovery'),(7,1,2,'Przypomnienie hasła','Wpisz swój adres e-mail w celu uzyskania nowego hasła','przypomnienie, hasło, e-mail, nowy','odzyskiwanie-hasla'),(8,1,1,'Prices drop','Our special products','','prices-drop'),(8,1,2,'Promocje','Produkty w promocji','promocje, specjalne, spadek ceny','promocje'),(9,1,1,'Sitemap','Lost ? Find what your are looking for','','sitemap'),(9,1,2,'Mapa strony','Zagubiłeś się? Znajdź to, czego szukasz!','mapa strony','mapa-strony'),(10,1,1,'Suppliers','Suppliers list','','supplier'),(10,1,2,'Dostawcy','Lista dostawców','dostawca','dostawcy'),(11,1,1,'Address','','','address'),(11,1,2,'Adres','','','adres'),(12,1,1,'Addresses','','','addresses'),(12,1,2,'Adresy','','','adresy'),(13,1,1,'Login','','','login'),(13,1,2,'Logowanie','','','logowanie'),(14,1,1,'Cart','','','cart'),(14,1,2,'Koszyk','','','koszyk'),(15,1,1,'Discount','','','discount'),(15,1,2,'Rabaty','','','rabaty'),(16,1,1,'Order history','','','order-history'),(16,1,2,'Historia zamówień','','','historia-zamowien'),(17,1,1,'Booking details','','','order-detail'),(17,1,2,'Szczegóły rezerwacji','','','szczegoly-rezerwacji'),(18,1,1,'Identity','','','identity'),(18,1,2,'Dane osobiste','','','dane-osobiste'),(19,1,1,'My account','','','my-account'),(19,1,2,'Moje konto','','','moje-konto'),(20,1,1,'Order follow','','','order-follow'),(20,1,2,'Śledzenie zamówienia','','','sledzenie-zamowienia'),(21,1,1,'Credit slip','','','credit-slip'),(21,1,2,'Pokwitowania','','','pokwitowania'),(22,1,1,'Order','','','order'),(22,1,2,'Zamówienie','','','zamowienie'),(23,1,1,'Search','','','search'),(23,1,2,'Szukaj','','','szukaj'),(24,1,1,'Stores','','','stores'),(24,1,2,'sklepy','','','sklepy'),(25,1,1,'Order','','','quick-order'),(25,1,2,'Zamówienie','','','szybkie-zakupy'),(26,1,1,'Guest tracking','','','guest-tracking'),(26,1,2,'Śledzenie zamówień gości','','','sledzenie-zamowienia-gosc'),(27,1,1,'Order confirmation','','','order-confirmation'),(27,1,2,'Potwierdzenie zamówienia','','','potwierdzenie-zamowienia'),(36,1,1,'Products Comparison','','','products-comparison'),(36,1,2,'Products Comparison','','','products-comparison'),(37,1,1,'Our Properties','','','our-properties'),(37,1,2,'Nasze nieruchomości','','','our-properties'),(38,1,1,'','','',''),(38,1,2,'','','','');
/*!40000 ALTER TABLE `qlo_meta_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_module`
--

DROP TABLE IF EXISTS `qlo_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_module` (
  `id_module` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `active` tinyint unsigned NOT NULL DEFAULT '0',
  `version` varchar(8) NOT NULL,
  PRIMARY KEY (`id_module`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_module`
--

LOCK TABLES `qlo_module` WRITE;
/*!40000 ALTER TABLE `qlo_module` DISABLE KEYS */;
INSERT INTO `qlo_module` VALUES (1,'hotelreservationsystem',1,'1.7.0'),(2,'wkroomsearchblock',1,'1.1.5'),(3,'blocknewsletter',1,'2.3.1'),(4,'blocksocial',1,'1.2.2'),(5,'wkhotelfilterblock',1,'1.0.7'),(6,'wkabouthotelblock',1,'1.2.0'),(7,'wkhotelfeaturesblock',1,'2.0.8'),(8,'wkhotelroom',1,'1.2.0'),(9,'wktestimonialblock',1,'1.1.8'),(10,'bankwire',1,'1.1.7'),(11,'cheque',1,'2.6.8'),(12,'blockmyaccount',1,'1.4.3'),(13,'blockcurrencies',1,'1.1.1'),(14,'blocklanguages',1,'1.6.1'),(15,'qlohotelreview',1,'1.0.2'),(16,'wkfooterlangcurrencyblock',1,'1.0.2'),(17,'wkfooterpaymentinfoblockcontainer',1,'1.0.2'),(18,'wkfooterpaymentblock',1,'1.1.6'),(19,'wkfooternotificationblock',1,'1.0.2'),(20,'blocknavigationmenu',1,'1.1.4'),(21,'dashguestcycle',1,'1.0.3'),(22,'dashoccupancy',1,'1.0.3'),(23,'dashactivity',1,'1.0.4'),(24,'dashtrends',1,'1.0.4'),(25,'dashavailability',1,'1.0.3'),(26,'dashperformance',1,'1.0.3'),(27,'dashproducts',1,'1.0.4'),(28,'dashgoals',1,'1.0.3'),(29,'dashinsights',1,'1.0.2'),(30,'graphnvd3',1,'1.5.4'),(31,'statsdata',1,'1.6.4'),(32,'statsvisits',1,'1.6.3'),(33,'statsorigin',1,'1.4.3'),(34,'statslive',1,'1.3.3'),(35,'sekeywords',1,'1.4.3'),(36,'statssales',1,'1.3.4'),(37,'statspersonalinfos',1,'1.4.3'),(38,'statsforecast',1,'1.4.5'),(39,'statsbestcategories',1,'1.5.5'),(40,'statsproduct',1,'1.5.4'),(41,'statscheckup',1,'1.5.4'),(42,'statscatalog',1,'1.4.3'),(43,'statsbestproducts',1,'1.5.5'),(44,'pagesnotfound',1,'1.5.2'),(45,'statsnewsletter',1,'1.4.4'),(46,'statsregistrations',1,'1.4.3'),(47,'statsbestvouchers',1,'1.5.3'),(48,'statsbestcustomers',1,'1.5.4'),(49,'statsequipment',1,'1.3.3'),(50,'qlostatsserviceproducts',1,'1.0.1'),(51,'blockcart',1,'1.6.7'),(52,'blockuserinfo',1,'1.0.1'),(53,'qlochannelmanagerconnector',1,'1.0.1');
/*!40000 ALTER TABLE `qlo_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_module_access`
--

DROP TABLE IF EXISTS `qlo_module_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_module_access` (
  `id_profile` int unsigned NOT NULL,
  `id_module` int unsigned NOT NULL,
  `view` tinyint(1) NOT NULL DEFAULT '0',
  `configure` tinyint(1) NOT NULL DEFAULT '0',
  `uninstall` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_profile`,`id_module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_module_access`
--

LOCK TABLES `qlo_module_access` WRITE;
/*!40000 ALTER TABLE `qlo_module_access` DISABLE KEYS */;
INSERT INTO `qlo_module_access` VALUES (1,1,1,0,0),(1,2,1,0,0),(1,3,1,0,0),(1,4,1,0,0),(1,5,1,0,0),(1,6,1,0,0),(1,7,1,0,0),(1,8,1,0,0),(1,9,1,0,0),(1,10,1,0,0),(1,11,1,0,0),(1,12,1,0,0),(1,13,1,0,0),(1,14,1,0,0),(1,15,1,0,0),(1,16,1,0,0),(1,17,1,0,0),(1,18,1,0,0),(1,19,1,0,0),(1,20,1,0,0),(1,21,1,0,0),(1,22,1,0,0),(1,23,1,0,0),(1,24,1,0,0),(1,25,1,0,0),(1,26,1,0,0),(1,27,1,0,0),(1,28,1,0,0),(1,29,1,0,0),(1,30,1,0,0),(1,31,1,0,0),(1,32,1,0,0),(1,33,1,0,0),(1,34,1,0,0),(1,35,1,0,0),(1,36,1,0,0),(1,37,1,0,0),(1,38,1,0,0),(1,39,1,0,0),(1,40,1,0,0),(1,41,1,0,0),(1,42,1,0,0),(1,43,1,0,0),(1,44,1,0,0),(1,45,1,0,0),(1,46,1,0,0),(1,47,1,0,0),(1,48,1,0,0),(1,49,1,0,0),(1,50,1,0,0),(1,51,1,0,0),(1,52,1,0,0),(1,53,1,0,0);
/*!40000 ALTER TABLE `qlo_module_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_module_country`
--

DROP TABLE IF EXISTS `qlo_module_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_module_country` (
  `id_module` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `id_country` int unsigned NOT NULL,
  PRIMARY KEY (`id_module`,`id_shop`,`id_country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_module_country`
--

LOCK TABLES `qlo_module_country` WRITE;
/*!40000 ALTER TABLE `qlo_module_country` DISABLE KEYS */;
INSERT INTO `qlo_module_country` VALUES (10,1,14),(11,1,14);
/*!40000 ALTER TABLE `qlo_module_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_module_currency`
--

DROP TABLE IF EXISTS `qlo_module_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_module_currency` (
  `id_module` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `id_currency` int NOT NULL,
  PRIMARY KEY (`id_module`,`id_shop`,`id_currency`),
  KEY `id_module` (`id_module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_module_currency`
--

LOCK TABLES `qlo_module_currency` WRITE;
/*!40000 ALTER TABLE `qlo_module_currency` DISABLE KEYS */;
INSERT INTO `qlo_module_currency` VALUES (10,1,1),(11,1,1);
/*!40000 ALTER TABLE `qlo_module_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_module_group`
--

DROP TABLE IF EXISTS `qlo_module_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_module_group` (
  `id_module` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `id_group` int unsigned NOT NULL,
  PRIMARY KEY (`id_module`,`id_shop`,`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_module_group`
--

LOCK TABLES `qlo_module_group` WRITE;
/*!40000 ALTER TABLE `qlo_module_group` DISABLE KEYS */;
INSERT INTO `qlo_module_group` VALUES (1,1,1),(1,1,2),(1,1,3),(2,1,1),(2,1,2),(2,1,3),(3,1,1),(3,1,2),(3,1,3),(4,1,1),(4,1,2),(4,1,3),(5,1,1),(5,1,2),(5,1,3),(6,1,1),(6,1,2),(6,1,3),(7,1,1),(7,1,2),(7,1,3),(8,1,1),(8,1,2),(8,1,3),(9,1,1),(9,1,2),(9,1,3),(10,1,1),(10,1,2),(10,1,3),(11,1,1),(11,1,2),(11,1,3),(12,1,1),(12,1,2),(12,1,3),(13,1,1),(13,1,2),(13,1,3),(14,1,1),(14,1,2),(14,1,3),(15,1,1),(15,1,2),(15,1,3),(16,1,1),(16,1,2),(16,1,3),(17,1,1),(17,1,2),(17,1,3),(18,1,1),(18,1,2),(18,1,3),(19,1,1),(19,1,2),(19,1,3),(20,1,1),(20,1,2),(20,1,3),(21,1,1),(21,1,2),(21,1,3),(22,1,1),(22,1,2),(22,1,3),(23,1,1),(23,1,2),(23,1,3),(24,1,1),(24,1,2),(24,1,3),(25,1,1),(25,1,2),(25,1,3),(26,1,1),(26,1,2),(26,1,3),(27,1,1),(27,1,2),(27,1,3),(28,1,1),(28,1,2),(28,1,3),(29,1,1),(29,1,2),(29,1,3),(30,1,1),(30,1,2),(30,1,3),(31,1,1),(31,1,2),(31,1,3),(32,1,1),(32,1,2),(32,1,3),(33,1,1),(33,1,2),(33,1,3),(34,1,1),(34,1,2),(34,1,3),(35,1,1),(35,1,2),(35,1,3),(36,1,1),(36,1,2),(36,1,3),(37,1,1),(37,1,2),(37,1,3),(38,1,1),(38,1,2),(38,1,3),(39,1,1),(39,1,2),(39,1,3),(40,1,1),(40,1,2),(40,1,3),(41,1,1),(41,1,2),(41,1,3),(42,1,1),(42,1,2),(42,1,3),(43,1,1),(43,1,2),(43,1,3),(44,1,1),(44,1,2),(44,1,3),(45,1,1),(45,1,2),(45,1,3),(46,1,1),(46,1,2),(46,1,3),(47,1,1),(47,1,2),(47,1,3),(48,1,1),(48,1,2),(48,1,3),(49,1,1),(49,1,2),(49,1,3),(50,1,1),(50,1,2),(50,1,3),(51,1,1),(51,1,2),(51,1,3),(52,1,1),(52,1,2),(52,1,3),(53,1,1),(53,1,2),(53,1,3);
/*!40000 ALTER TABLE `qlo_module_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_module_preference`
--

DROP TABLE IF EXISTS `qlo_module_preference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_module_preference` (
  `id_module_preference` int NOT NULL AUTO_INCREMENT,
  `id_employee` int NOT NULL,
  `module` varchar(255) NOT NULL,
  `interest` tinyint(1) DEFAULT NULL,
  `favorite` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`id_module_preference`),
  UNIQUE KEY `employee_module` (`id_employee`,`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_module_preference`
--

LOCK TABLES `qlo_module_preference` WRITE;
/*!40000 ALTER TABLE `qlo_module_preference` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_module_preference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_module_shop`
--

DROP TABLE IF EXISTS `qlo_module_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_module_shop` (
  `id_module` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  `enable_device` tinyint(1) NOT NULL DEFAULT '7',
  PRIMARY KEY (`id_module`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_module_shop`
--

LOCK TABLES `qlo_module_shop` WRITE;
/*!40000 ALTER TABLE `qlo_module_shop` DISABLE KEYS */;
INSERT INTO `qlo_module_shop` VALUES (1,1,7),(2,1,7),(3,1,7),(4,1,7),(5,1,7),(6,1,7),(7,1,7),(8,1,7),(9,1,7),(10,1,7),(11,1,7),(12,1,7),(13,1,7),(14,1,7),(15,1,7),(16,1,7),(17,1,7),(18,1,7),(19,1,7),(20,1,7),(21,1,7),(22,1,7),(23,1,7),(24,1,7),(25,1,7),(26,1,7),(27,1,7),(28,1,7),(29,1,7),(30,1,7),(31,1,7),(32,1,7),(33,1,7),(34,1,7),(35,1,7),(36,1,7),(37,1,7),(38,1,7),(39,1,7),(40,1,7),(41,1,7),(42,1,7),(43,1,7),(44,1,7),(45,1,7),(46,1,7),(47,1,7),(48,1,7),(49,1,7),(50,1,7),(51,1,7),(52,1,7),(53,1,7);
/*!40000 ALTER TABLE `qlo_module_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_modules_perfs`
--

DROP TABLE IF EXISTS `qlo_modules_perfs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_modules_perfs` (
  `id_modules_perfs` int unsigned NOT NULL AUTO_INCREMENT,
  `session` int unsigned NOT NULL,
  `module` varchar(62) NOT NULL,
  `method` varchar(126) NOT NULL,
  `time_start` double unsigned NOT NULL,
  `time_end` double unsigned NOT NULL,
  `memory_start` int unsigned NOT NULL,
  `memory_end` int unsigned NOT NULL,
  PRIMARY KEY (`id_modules_perfs`),
  KEY `session` (`session`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_modules_perfs`
--

LOCK TABLES `qlo_modules_perfs` WRITE;
/*!40000 ALTER TABLE `qlo_modules_perfs` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_modules_perfs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_newsletter`
--

DROP TABLE IF EXISTS `qlo_newsletter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_newsletter` (
  `id` int NOT NULL AUTO_INCREMENT,
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `id_shop_group` int unsigned NOT NULL DEFAULT '1',
  `email` varchar(255) NOT NULL,
  `newsletter_date_add` datetime DEFAULT NULL,
  `ip_registration_newsletter` varchar(15) NOT NULL,
  `http_referer` varchar(255) DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_newsletter`
--

LOCK TABLES `qlo_newsletter` WRITE;
/*!40000 ALTER TABLE `qlo_newsletter` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_newsletter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_operating_system`
--

DROP TABLE IF EXISTS `qlo_operating_system`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_operating_system` (
  `id_operating_system` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_operating_system`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_operating_system`
--

LOCK TABLES `qlo_operating_system` WRITE;
/*!40000 ALTER TABLE `qlo_operating_system` DISABLE KEYS */;
INSERT INTO `qlo_operating_system` VALUES (1,'Windows XP'),(2,'Windows Vista'),(3,'Windows 7'),(4,'Windows 8'),(5,'MacOsX'),(6,'Linux'),(7,'Android');
/*!40000 ALTER TABLE `qlo_operating_system` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_order_carrier`
--

DROP TABLE IF EXISTS `qlo_order_carrier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_order_carrier` (
  `id_order_carrier` int NOT NULL AUTO_INCREMENT,
  `id_order` int unsigned NOT NULL,
  `id_carrier` int unsigned NOT NULL,
  `id_order_invoice` int unsigned DEFAULT NULL,
  `weight` decimal(20,6) DEFAULT NULL,
  `shipping_cost_tax_excl` decimal(20,6) DEFAULT NULL,
  `shipping_cost_tax_incl` decimal(20,6) DEFAULT NULL,
  `tracking_number` varchar(64) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_order_carrier`),
  KEY `id_order` (`id_order`),
  KEY `id_carrier` (`id_carrier`),
  KEY `id_order_invoice` (`id_order_invoice`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_order_carrier`
--

LOCK TABLES `qlo_order_carrier` WRITE;
/*!40000 ALTER TABLE `qlo_order_carrier` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_order_carrier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_order_cart_rule`
--

DROP TABLE IF EXISTS `qlo_order_cart_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_order_cart_rule` (
  `id_order_cart_rule` int unsigned NOT NULL AUTO_INCREMENT,
  `id_order` int unsigned NOT NULL,
  `id_cart_rule` int unsigned NOT NULL,
  `id_order_invoice` int unsigned DEFAULT '0',
  `name` varchar(254) NOT NULL,
  `value` decimal(17,2) NOT NULL DEFAULT '0.00',
  `value_tax_excl` decimal(17,2) NOT NULL DEFAULT '0.00',
  `free_shipping` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_order_cart_rule`),
  KEY `id_order` (`id_order`),
  KEY `id_cart_rule` (`id_cart_rule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_order_cart_rule`
--

LOCK TABLES `qlo_order_cart_rule` WRITE;
/*!40000 ALTER TABLE `qlo_order_cart_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_order_cart_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_order_customer_guest_detail`
--

DROP TABLE IF EXISTS `qlo_order_customer_guest_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_order_customer_guest_detail` (
  `id_order_customer_guest_detail` int unsigned NOT NULL AUTO_INCREMENT,
  `id_order` int unsigned NOT NULL,
  `id_gender` int unsigned NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(128) NOT NULL,
  `phone` varchar(32) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_order_customer_guest_detail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_order_customer_guest_detail`
--

LOCK TABLES `qlo_order_customer_guest_detail` WRITE;
/*!40000 ALTER TABLE `qlo_order_customer_guest_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_order_customer_guest_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_order_detail`
--

DROP TABLE IF EXISTS `qlo_order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_order_detail` (
  `id_order_detail` int unsigned NOT NULL AUTO_INCREMENT,
  `id_order` int unsigned NOT NULL,
  `id_order_invoice` int DEFAULT NULL,
  `id_warehouse` int unsigned DEFAULT '0',
  `id_shop` int unsigned NOT NULL,
  `product_id` int unsigned NOT NULL,
  `product_attribute_id` int unsigned DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int unsigned NOT NULL DEFAULT '0',
  `product_quantity_in_stock` int NOT NULL DEFAULT '0',
  `product_quantity_refunded` int unsigned NOT NULL DEFAULT '0',
  `product_quantity_return` int unsigned NOT NULL DEFAULT '0',
  `product_quantity_reinjected` int unsigned NOT NULL DEFAULT '0',
  `product_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `reduction_percent` decimal(10,2) NOT NULL DEFAULT '0.00',
  `reduction_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `reduction_amount_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `reduction_amount_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `group_reduction` decimal(10,2) NOT NULL DEFAULT '0.00',
  `product_quantity_discount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `is_booking_product` tinyint(1) NOT NULL DEFAULT '0',
  `selling_preference_type` tinyint(1) NOT NULL DEFAULT '1',
  `product_auto_add` tinyint(1) NOT NULL DEFAULT '0',
  `product_price_addition_type` tinyint(1) NOT NULL DEFAULT '0',
  `product_allow_multiple_quantity` tinyint unsigned NOT NULL DEFAULT '1',
  `product_price_calculation_method` tinyint unsigned NOT NULL DEFAULT '1',
  `product_ean13` varchar(13) DEFAULT NULL,
  `product_upc` varchar(12) DEFAULT NULL,
  `product_reference` varchar(32) DEFAULT NULL,
  `product_supplier_reference` varchar(32) DEFAULT NULL,
  `product_weight` decimal(20,6) NOT NULL,
  `id_tax_rules_group` int unsigned DEFAULT '0',
  `tax_computation_method` tinyint unsigned NOT NULL DEFAULT '0',
  `tax_name` varchar(16) NOT NULL,
  `tax_rate` decimal(10,3) NOT NULL DEFAULT '0.000',
  `ecotax` decimal(21,6) NOT NULL DEFAULT '0.000000',
  `ecotax_tax_rate` decimal(5,3) NOT NULL DEFAULT '0.000',
  `discount_quantity_applied` tinyint(1) NOT NULL DEFAULT '0',
  `download_hash` varchar(255) DEFAULT NULL,
  `download_nb` int unsigned DEFAULT '0',
  `download_deadline` datetime DEFAULT NULL,
  `total_price_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_price_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unit_price_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unit_price_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_price_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_price_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `purchase_supplier_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `original_product_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `original_wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  PRIMARY KEY (`id_order_detail`),
  KEY `order_detail_order` (`id_order`),
  KEY `product_id` (`product_id`),
  KEY `product_attribute_id` (`product_attribute_id`),
  KEY `id_tax_rules_group` (`id_tax_rules_group`),
  KEY `id_order_id_order_detail` (`id_order`,`id_order_detail`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_order_detail`
--

LOCK TABLES `qlo_order_detail` WRITE;
/*!40000 ALTER TABLE `qlo_order_detail` DISABLE KEYS */;
INSERT INTO `qlo_order_detail` VALUES (1,1,0,0,1,1,0,'General Rooms',2,2,0,0,0,1000.000000,0.00,0.000000,0.000000,0.000000,0.00,0.000000,1,0,0,0,0,0,'','','','',0.000000,1,0,'',0.000,0.000000,0.000,0,'',0,'0000-00-00 00:00:00',2460.000000,2000.000000,1230.000000,1000.000000,0.000000,0.000000,0.000000,1000.000000,0.000000),(2,1,0,0,1,5,0,'Room Maintenance Fees',2,2,0,0,0,250.000000,0.00,0.000000,0.000000,0.000000,0.00,0.000000,0,1,1,1,0,2,'','','','',0.000000,0,0,'',0.000,0.000000,0.000,0,'',0,'0000-00-00 00:00:00',615.000000,500.000000,307.500000,250.000000,0.000000,0.000000,0.000000,250.000000,0.000000),(3,1,0,0,1,6,0,'Internet Handling Charges',1,1,0,0,0,250.000000,0.00,0.000000,0.000000,0.000000,0.00,0.000000,0,1,1,2,0,1,'','','','',0.000000,1,0,'',0.000,0.000000,0.000,0,'',0,'0000-00-00 00:00:00',307.500000,250.000000,307.500000,250.000000,0.000000,0.000000,0.000000,250.000000,0.000000),(4,2,0,0,1,1,0,'General Rooms',9,9,0,0,0,1000.000000,0.00,0.000000,0.000000,0.000000,0.00,0.000000,1,0,0,0,0,0,'','','','',0.000000,1,0,'',0.000,0.000000,0.000,0,'',0,'0000-00-00 00:00:00',11070.000000,9000.000000,1230.000000,1000.000000,0.000000,0.000000,0.000000,1000.000000,0.000000),(5,2,0,0,1,5,0,'Room Maintenance Fees',9,9,0,0,0,250.000000,0.00,0.000000,0.000000,0.000000,0.00,0.000000,0,1,1,1,0,2,'','','','',0.000000,0,0,'',0.000,0.000000,0.000,0,'',0,'0000-00-00 00:00:00',2767.500000,2250.000000,307.500000,250.000000,0.000000,0.000000,0.000000,250.000000,0.000000),(6,2,0,0,1,6,0,'Internet Handling Charges',1,1,0,0,0,250.000000,0.00,0.000000,0.000000,0.000000,0.00,0.000000,0,1,1,2,0,1,'','','','',0.000000,1,0,'',0.000,0.000000,0.000,0,'',0,'0000-00-00 00:00:00',307.500000,250.000000,307.500000,250.000000,0.000000,0.000000,0.000000,250.000000,0.000000),(7,3,0,0,1,2,0,'Delux Rooms',2,2,0,0,0,1500.000000,0.00,0.000000,0.000000,0.000000,0.00,0.000000,1,0,0,0,0,0,'','','','',0.000000,1,0,'',0.000,0.000000,0.000,0,'',0,'0000-00-00 00:00:00',3690.000000,3000.000000,1845.000000,1500.000000,0.000000,0.000000,0.000000,1500.000000,0.000000),(8,3,0,0,1,5,0,'Room Maintenance Fees',2,2,0,0,0,250.000000,0.00,0.000000,0.000000,0.000000,0.00,0.000000,0,1,1,1,0,2,'','','','',0.000000,0,0,'',0.000,0.000000,0.000,0,'',0,'0000-00-00 00:00:00',615.000000,500.000000,307.500000,250.000000,0.000000,0.000000,0.000000,250.000000,0.000000),(9,3,0,0,1,6,0,'Internet Handling Charges',1,1,0,0,0,250.000000,0.00,0.000000,0.000000,0.000000,0.00,0.000000,0,1,1,2,0,1,'','','','',0.000000,1,0,'',0.000,0.000000,0.000,0,'',0,'0000-00-00 00:00:00',307.500000,250.000000,307.500000,250.000000,0.000000,0.000000,0.000000,250.000000,0.000000);
/*!40000 ALTER TABLE `qlo_order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_order_detail_tax`
--

DROP TABLE IF EXISTS `qlo_order_detail_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_order_detail_tax` (
  `id_order_detail` int NOT NULL,
  `id_tax` int NOT NULL,
  `unit_amount` decimal(16,6) NOT NULL DEFAULT '0.000000',
  `total_amount` decimal(16,6) NOT NULL DEFAULT '0.000000',
  KEY `id_order_detail` (`id_order_detail`),
  KEY `id_tax` (`id_tax`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_order_detail_tax`
--

LOCK TABLES `qlo_order_detail_tax` WRITE;
/*!40000 ALTER TABLE `qlo_order_detail_tax` DISABLE KEYS */;
INSERT INTO `qlo_order_detail_tax` VALUES (1,1,230.000000,460.000000),(3,1,57.500000,57.500000),(4,1,230.000000,2070.000000),(6,1,57.500000,57.500000),(7,1,345.000000,690.000000),(9,1,57.500000,57.500000);
/*!40000 ALTER TABLE `qlo_order_detail_tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_order_history`
--

DROP TABLE IF EXISTS `qlo_order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_order_history` (
  `id_order_history` int unsigned NOT NULL AUTO_INCREMENT,
  `id_employee` int unsigned NOT NULL,
  `id_order` int unsigned NOT NULL,
  `id_order_state` int unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_order_history`),
  KEY `order_history_order` (`id_order`),
  KEY `id_employee` (`id_employee`),
  KEY `id_order_state` (`id_order_state`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_order_history`
--

LOCK TABLES `qlo_order_history` WRITE;
/*!40000 ALTER TABLE `qlo_order_history` DISABLE KEYS */;
INSERT INTO `qlo_order_history` VALUES (1,0,1,1,'2026-02-18 16:37:03'),(2,0,2,1,'2026-02-18 18:05:42'),(3,0,3,1,'2026-02-18 18:18:18');
/*!40000 ALTER TABLE `qlo_order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_order_invoice`
--

DROP TABLE IF EXISTS `qlo_order_invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_order_invoice` (
  `id_order_invoice` int unsigned NOT NULL AUTO_INCREMENT,
  `id_order` int NOT NULL,
  `number` int NOT NULL,
  `delivery_number` int NOT NULL,
  `delivery_date` datetime DEFAULT NULL,
  `total_discount_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_discount_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_paid_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_paid_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_products` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_products_wt` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `shipping_tax_computation_method` int unsigned NOT NULL,
  `total_wrapping_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_wrapping_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `shop_address` text,
  `invoice_address` text,
  `delivery_address` text,
  `note` text,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_order_invoice`),
  KEY `id_order` (`id_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_order_invoice`
--

LOCK TABLES `qlo_order_invoice` WRITE;
/*!40000 ALTER TABLE `qlo_order_invoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_order_invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_order_invoice_payment`
--

DROP TABLE IF EXISTS `qlo_order_invoice_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_order_invoice_payment` (
  `id_order_invoice` int unsigned NOT NULL,
  `id_order_payment` int unsigned NOT NULL,
  `id_order_payment_detail` int unsigned NOT NULL,
  `id_order` int unsigned NOT NULL,
  PRIMARY KEY (`id_order_invoice`,`id_order_payment`),
  KEY `order_payment` (`id_order_payment`),
  KEY `id_order` (`id_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_order_invoice_payment`
--

LOCK TABLES `qlo_order_invoice_payment` WRITE;
/*!40000 ALTER TABLE `qlo_order_invoice_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_order_invoice_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_order_invoice_tax`
--

DROP TABLE IF EXISTS `qlo_order_invoice_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_order_invoice_tax` (
  `id_order_invoice` int NOT NULL,
  `type` varchar(15) NOT NULL,
  `id_tax` int NOT NULL,
  `amount` decimal(10,6) NOT NULL DEFAULT '0.000000',
  KEY `id_tax` (`id_tax`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_order_invoice_tax`
--

LOCK TABLES `qlo_order_invoice_tax` WRITE;
/*!40000 ALTER TABLE `qlo_order_invoice_tax` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_order_invoice_tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_order_message`
--

DROP TABLE IF EXISTS `qlo_order_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_order_message` (
  `id_order_message` int unsigned NOT NULL AUTO_INCREMENT,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_order_message`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_order_message`
--

LOCK TABLES `qlo_order_message` WRITE;
/*!40000 ALTER TABLE `qlo_order_message` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_order_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_order_message_lang`
--

DROP TABLE IF EXISTS `qlo_order_message_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_order_message_lang` (
  `id_order_message` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  `message` text NOT NULL,
  PRIMARY KEY (`id_order_message`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_order_message_lang`
--

LOCK TABLES `qlo_order_message_lang` WRITE;
/*!40000 ALTER TABLE `qlo_order_message_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_order_message_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_order_payment`
--

DROP TABLE IF EXISTS `qlo_order_payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_order_payment` (
  `id_order_payment` int NOT NULL AUTO_INCREMENT,
  `order_reference` varchar(9) DEFAULT NULL,
  `id_currency` int unsigned NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `payment_method` varchar(255) NOT NULL,
  `payment_type` int unsigned NOT NULL,
  `conversion_rate` decimal(13,6) NOT NULL DEFAULT '1.000000',
  `transaction_id` varchar(254) DEFAULT NULL,
  `card_number` varchar(254) DEFAULT NULL,
  `card_brand` varchar(254) DEFAULT NULL,
  `card_expiration` char(7) DEFAULT NULL,
  `card_holder` varchar(254) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_order_payment`),
  KEY `order_reference` (`order_reference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_order_payment`
--

LOCK TABLES `qlo_order_payment` WRITE;
/*!40000 ALTER TABLE `qlo_order_payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_order_payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_order_payment_detail`
--

DROP TABLE IF EXISTS `qlo_order_payment_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_order_payment_detail` (
  `id_order_payment_detail` int unsigned NOT NULL AUTO_INCREMENT,
  `id_order_payment` int unsigned NOT NULL,
  `id_order` int unsigned NOT NULL,
  `amount` decimal(10,2) NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_order_payment_detail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_order_payment_detail`
--

LOCK TABLES `qlo_order_payment_detail` WRITE;
/*!40000 ALTER TABLE `qlo_order_payment_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_order_payment_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_order_return`
--

DROP TABLE IF EXISTS `qlo_order_return`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_order_return` (
  `id_order_return` int unsigned NOT NULL AUTO_INCREMENT,
  `id_customer` int unsigned NOT NULL,
  `id_order` int unsigned NOT NULL,
  `state` int unsigned NOT NULL DEFAULT '1',
  `id_transaction` varchar(100) NOT NULL DEFAULT '',
  `payment_mode` varchar(255) NOT NULL DEFAULT '',
  `refunded_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `question` text NOT NULL,
  `by_admin` tinyint unsigned NOT NULL DEFAULT '0',
  `id_return_type` tinyint unsigned NOT NULL DEFAULT '0',
  `return_type` tinyint unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_order_return`),
  KEY `order_return_customer` (`id_customer`),
  KEY `id_order` (`id_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_order_return`
--

LOCK TABLES `qlo_order_return` WRITE;
/*!40000 ALTER TABLE `qlo_order_return` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_order_return` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_order_return_detail`
--

DROP TABLE IF EXISTS `qlo_order_return_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_order_return_detail` (
  `id_order_return_detail` int unsigned NOT NULL AUTO_INCREMENT,
  `id_order_return` int unsigned NOT NULL,
  `id_htl_booking` int NOT NULL,
  `id_service_product_order_detail` int NOT NULL,
  `refunded_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `id_order_detail` int unsigned NOT NULL DEFAULT '0',
  `id_customization` int unsigned NOT NULL DEFAULT '0',
  `product_quantity` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_order_return_detail`),
  KEY `id_htl_booking` (`id_htl_booking`),
  KEY `id_service_product_order_detail` (`id_service_product_order_detail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_order_return_detail`
--

LOCK TABLES `qlo_order_return_detail` WRITE;
/*!40000 ALTER TABLE `qlo_order_return_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_order_return_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_order_return_state`
--

DROP TABLE IF EXISTS `qlo_order_return_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_order_return_state` (
  `id_order_return_state` int unsigned NOT NULL AUTO_INCREMENT,
  `color` varchar(32) DEFAULT NULL,
  `send_email_to_customer` tinyint unsigned NOT NULL DEFAULT '0',
  `send_email_to_superadmin` tinyint unsigned NOT NULL DEFAULT '0',
  `send_email_to_employee` tinyint unsigned NOT NULL DEFAULT '0',
  `send_email_to_hotelier` tinyint unsigned NOT NULL DEFAULT '0',
  `denied` tinyint unsigned NOT NULL DEFAULT '0',
  `refunded` tinyint unsigned NOT NULL DEFAULT '0',
  `module_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_order_return_state`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_order_return_state`
--

LOCK TABLES `qlo_order_return_state` WRITE;
/*!40000 ALTER TABLE `qlo_order_return_state` DISABLE KEYS */;
INSERT INTO `qlo_order_return_state` VALUES (1,'#4169E1',1,1,1,1,0,0,''),(2,'#DC143C',1,1,1,1,1,0,''),(3,'#108510',1,1,1,1,0,1,'');
/*!40000 ALTER TABLE `qlo_order_return_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_order_return_state_lang`
--

DROP TABLE IF EXISTS `qlo_order_return_state_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_order_return_state_lang` (
  `id_order_return_state` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `customer_template` varchar(64) NOT NULL,
  `admin_template` varchar(64) NOT NULL,
  PRIMARY KEY (`id_order_return_state`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_order_return_state_lang`
--

LOCK TABLES `qlo_order_return_state_lang` WRITE;
/*!40000 ALTER TABLE `qlo_order_return_state_lang` DISABLE KEYS */;
INSERT INTO `qlo_order_return_state_lang` VALUES (1,1,'Pending','order_refund_pending_customer','order_refund_pending_admin'),(1,2,'Aż do','order_refund_pending_customer','order_refund_pending_admin'),(2,1,'Denied','order_refund_denied_customer','order_refund_denied_admin'),(2,2,'Zaprzeczony','order_refund_denied_customer','order_refund_denied_admin'),(3,1,'Completed','order_refund_completed_customer','order_refund_completed_admin'),(3,2,'Zakończony','order_refund_completed_customer','order_refund_completed_admin');
/*!40000 ALTER TABLE `qlo_order_return_state_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_order_slip`
--

DROP TABLE IF EXISTS `qlo_order_slip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_order_slip` (
  `id_order_slip` int unsigned NOT NULL AUTO_INCREMENT,
  `conversion_rate` decimal(13,6) NOT NULL DEFAULT '1.000000',
  `id_customer` int unsigned NOT NULL,
  `id_order` int unsigned NOT NULL,
  `total_products_tax_excl` decimal(20,6) DEFAULT NULL,
  `total_products_tax_incl` decimal(20,6) DEFAULT NULL,
  `total_shipping_tax_excl` decimal(20,6) DEFAULT NULL,
  `total_shipping_tax_incl` decimal(20,6) DEFAULT NULL,
  `shipping_cost` tinyint unsigned NOT NULL DEFAULT '0',
  `amount` decimal(10,2) NOT NULL,
  `shipping_cost_amount` decimal(10,2) NOT NULL,
  `partial` tinyint(1) NOT NULL,
  `redeem_status` tinyint(1) NOT NULL DEFAULT '0',
  `id_cart_rule` int unsigned NOT NULL DEFAULT '0',
  `order_slip_type` tinyint unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_order_slip`),
  KEY `order_slip_customer` (`id_customer`),
  KEY `id_order` (`id_order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_order_slip`
--

LOCK TABLES `qlo_order_slip` WRITE;
/*!40000 ALTER TABLE `qlo_order_slip` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_order_slip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_order_slip_detail`
--

DROP TABLE IF EXISTS `qlo_order_slip_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_order_slip_detail` (
  `id_order_slip` int unsigned NOT NULL,
  `id_order_detail` int unsigned NOT NULL,
  `id_htl_booking` int unsigned NOT NULL,
  `id_service_product_order_detail` int unsigned NOT NULL,
  `product_quantity` int unsigned NOT NULL DEFAULT '0',
  `unit_price_tax_excl` decimal(20,6) DEFAULT NULL,
  `unit_price_tax_incl` decimal(20,6) DEFAULT NULL,
  `total_price_tax_excl` decimal(20,6) DEFAULT NULL,
  `total_price_tax_incl` decimal(20,6) DEFAULT NULL,
  `amount_tax_excl` decimal(20,6) DEFAULT NULL,
  `amount_tax_incl` decimal(20,6) DEFAULT NULL,
  PRIMARY KEY (`id_order_slip`,`id_htl_booking`,`id_service_product_order_detail`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_order_slip_detail`
--

LOCK TABLES `qlo_order_slip_detail` WRITE;
/*!40000 ALTER TABLE `qlo_order_slip_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_order_slip_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_order_slip_detail_tax`
--

DROP TABLE IF EXISTS `qlo_order_slip_detail_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_order_slip_detail_tax` (
  `id_order_slip_detail` int unsigned NOT NULL,
  `id_tax` int unsigned NOT NULL,
  `unit_amount` decimal(16,6) NOT NULL DEFAULT '0.000000',
  `total_amount` decimal(16,6) NOT NULL DEFAULT '0.000000',
  KEY `id_order_slip_detail` (`id_order_slip_detail`),
  KEY `id_tax` (`id_tax`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_order_slip_detail_tax`
--

LOCK TABLES `qlo_order_slip_detail_tax` WRITE;
/*!40000 ALTER TABLE `qlo_order_slip_detail_tax` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_order_slip_detail_tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_order_state`
--

DROP TABLE IF EXISTS `qlo_order_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_order_state` (
  `id_order_state` int unsigned NOT NULL AUTO_INCREMENT,
  `invoice` tinyint unsigned DEFAULT '0',
  `send_email` tinyint unsigned NOT NULL DEFAULT '0',
  `module_name` varchar(255) DEFAULT NULL,
  `color` varchar(32) DEFAULT NULL,
  `unremovable` tinyint unsigned NOT NULL,
  `hidden` tinyint unsigned NOT NULL DEFAULT '0',
  `logable` tinyint(1) NOT NULL DEFAULT '0',
  `delivery` tinyint unsigned NOT NULL DEFAULT '0',
  `shipped` tinyint unsigned NOT NULL DEFAULT '0',
  `paid` tinyint unsigned NOT NULL DEFAULT '0',
  `pdf_invoice` tinyint unsigned NOT NULL DEFAULT '0',
  `pdf_delivery` tinyint unsigned NOT NULL DEFAULT '0',
  `deleted` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_order_state`),
  KEY `module_name` (`module_name`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_order_state`
--

LOCK TABLES `qlo_order_state` WRITE;
/*!40000 ALTER TABLE `qlo_order_state` DISABLE KEYS */;
INSERT INTO `qlo_order_state` VALUES (1,0,1,'','#4169E1',1,0,0,0,0,0,0,0,0),(2,1,1,'','#32CD32',1,0,1,0,0,1,1,0,0),(3,1,1,'','#FF8C00',1,0,0,0,0,0,0,0,0),(4,0,1,'','#DC143C',1,0,0,0,0,0,0,0,0),(5,1,1,'','#ec2e15',1,0,0,0,0,0,0,0,0),(6,0,1,'','#8f0621',1,0,0,0,0,0,0,0,0),(7,1,0,'','#FF69B4',1,0,0,0,0,1,0,0,0),(8,1,1,'','#F0B656',1,0,1,0,0,0,0,0,0),(9,0,0,'','#4169E1',1,0,0,0,0,0,0,0,0),(10,1,0,'','#32CD32',1,0,1,0,0,0,0,0,0),(11,0,0,'','#FF69B4',1,0,0,0,0,0,0,0,0),(12,0,0,'','#FF69B4',1,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `qlo_order_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_order_state_lang`
--

DROP TABLE IF EXISTS `qlo_order_state_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_order_state_lang` (
  `id_order_state` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `template` varchar(64) NOT NULL,
  PRIMARY KEY (`id_order_state`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_order_state_lang`
--

LOCK TABLES `qlo_order_state_lang` WRITE;
/*!40000 ALTER TABLE `qlo_order_state_lang` DISABLE KEYS */;
INSERT INTO `qlo_order_state_lang` VALUES (1,1,'Awaiting payment','awaiting_payment'),(1,2,'czekać na wypłatę','awaiting_payment'),(2,1,'Complete payment received','payment_accepted'),(2,2,'Otrzymano pełną płatność','payment_accepted'),(3,1,'Processing in progress','processing'),(3,2,'Przygotowanie w toku','processing'),(4,1,'Canceled','order_canceled'),(4,2,'Anulowane','order_canceled'),(5,1,'Refunded','refund'),(5,2,'Zwrot','refund'),(6,1,'Payment error','payment_error'),(6,2,'Błąd płatonści','payment_error'),(7,1,'Overbooking (Paid)',''),(7,2,'Overbooking (Paid)',''),(8,1,'Partial payment received','partial_payment_accepted'),(8,2,'Otrzymano częściową płatność','partial_payment_accepted'),(9,1,'Awaiting remote payment',''),(9,2,'Awaiting remote payment',''),(10,1,'Remote payment accepted','payment_accepted'),(10,2,'Płatność przyjęta','payment_accepted'),(11,1,'Overbooking (Not paid)',''),(11,2,'Overbooking (Not paid)',''),(12,1,'Overbooking (Partial payment)',''),(12,2,'Overbooking (Partial payment)','');
/*!40000 ALTER TABLE `qlo_order_state_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_orders`
--

DROP TABLE IF EXISTS `qlo_orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_orders` (
  `id_order` int unsigned NOT NULL AUTO_INCREMENT,
  `reference` varchar(9) DEFAULT NULL,
  `id_shop_group` int unsigned NOT NULL DEFAULT '1',
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `id_carrier` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `id_customer` int unsigned NOT NULL,
  `id_cart` int unsigned NOT NULL,
  `id_currency` int unsigned NOT NULL,
  `id_address_delivery` int unsigned NOT NULL,
  `id_address_invoice` int unsigned NOT NULL,
  `id_address_tax` int unsigned NOT NULL,
  `current_state` int unsigned NOT NULL,
  `secure_key` varchar(32) NOT NULL DEFAULT '-1',
  `payment` varchar(255) NOT NULL,
  `payment_type` tinyint unsigned NOT NULL,
  `conversion_rate` decimal(13,6) NOT NULL DEFAULT '1.000000',
  `module` varchar(255) DEFAULT NULL,
  `recyclable` tinyint unsigned NOT NULL DEFAULT '0',
  `gift` tinyint unsigned NOT NULL DEFAULT '0',
  `gift_message` text,
  `mobile_theme` tinyint(1) NOT NULL DEFAULT '0',
  `shipping_number` varchar(64) DEFAULT NULL,
  `total_discounts` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_discounts_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_discounts_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_paid` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_paid_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_paid_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_paid_real` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_products` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_products_wt` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_shipping_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `carrier_tax_rate` decimal(10,3) NOT NULL DEFAULT '0.000',
  `total_wrapping` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_wrapping_tax_incl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `total_wrapping_tax_excl` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `round_mode` tinyint(1) NOT NULL DEFAULT '2',
  `round_type` tinyint(1) NOT NULL DEFAULT '1',
  `invoice_number` int unsigned NOT NULL DEFAULT '0',
  `delivery_number` int unsigned NOT NULL DEFAULT '0',
  `invoice_date` datetime NOT NULL,
  `delivery_date` datetime NOT NULL,
  `source` varchar(255) DEFAULT NULL,
  `valid` int unsigned NOT NULL DEFAULT '0',
  `is_advance_payment` tinyint(1) NOT NULL DEFAULT '0',
  `advance_paid_amount` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `with_occupancy` tinyint(1) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_order`),
  KEY `reference` (`reference`),
  KEY `id_customer` (`id_customer`),
  KEY `id_cart` (`id_cart`),
  KEY `invoice_number` (`invoice_number`),
  KEY `id_carrier` (`id_carrier`),
  KEY `id_lang` (`id_lang`),
  KEY `id_currency` (`id_currency`),
  KEY `id_address_delivery` (`id_address_delivery`),
  KEY `id_address_invoice` (`id_address_invoice`),
  KEY `id_shop_group` (`id_shop_group`),
  KEY `current_state` (`current_state`),
  KEY `id_shop` (`id_shop`),
  KEY `date_add` (`date_add`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_orders`
--

LOCK TABLES `qlo_orders` WRITE;
/*!40000 ALTER TABLE `qlo_orders` DISABLE KEYS */;
INSERT INTO `qlo_orders` VALUES (1,'OBXYVYVLZ',1,1,0,1,2,1,1,0,0,2,1,'5663db309f268b6eb8500db5e32d04c7','Bank wire',3,1.000000,'bankwire',0,0,'',0,'',0.000000,0.000000,0.000000,3382.500000,3382.500000,2750.000000,0.000000,2750.000000,3382.500000,0.000000,0.000000,0.000000,0.000,0.000000,0.000000,0.000000,2,1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','localhost:8080',0,0,3382.500000,1,'2026-02-18 16:37:03','2026-02-18 16:37:03'),(2,'DYHNTPZRW',1,1,0,1,2,2,1,0,0,2,1,'5663db309f268b6eb8500db5e32d04c7','Payment by check',3,1.000000,'cheque',0,0,'',0,'',0.000000,0.000000,0.000000,14145.000000,14145.000000,11500.000000,0.000000,11500.000000,14145.000000,0.000000,0.000000,0.000000,0.000,0.000000,0.000000,0.000000,2,1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','localhost:8080',0,0,14145.000000,1,'2026-02-18 18:05:42','2026-02-18 18:05:42'),(3,'UYLDUOUKZ',1,1,0,1,2,3,1,0,0,2,1,'5663db309f268b6eb8500db5e32d04c7','Bank wire',3,1.000000,'bankwire',0,0,'',0,'',0.000000,0.000000,0.000000,4612.500000,4612.500000,3750.000000,0.000000,3750.000000,4612.500000,0.000000,0.000000,0.000000,0.000,0.000000,0.000000,0.000000,2,1,0,0,'0000-00-00 00:00:00','0000-00-00 00:00:00','localhost:8080',0,0,4612.500000,1,'2026-02-18 18:18:18','2026-02-18 18:18:18');
/*!40000 ALTER TABLE `qlo_orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_pack`
--

DROP TABLE IF EXISTS `qlo_pack`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_pack` (
  `id_product_pack` int unsigned NOT NULL,
  `id_product_item` int unsigned NOT NULL,
  `id_product_attribute_item` int unsigned NOT NULL,
  `quantity` int unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_product_pack`,`id_product_item`,`id_product_attribute_item`),
  KEY `product_item` (`id_product_item`,`id_product_attribute_item`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_pack`
--

LOCK TABLES `qlo_pack` WRITE;
/*!40000 ALTER TABLE `qlo_pack` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_pack` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_page`
--

DROP TABLE IF EXISTS `qlo_page`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_page` (
  `id_page` int unsigned NOT NULL AUTO_INCREMENT,
  `id_page_type` int unsigned NOT NULL,
  `id_object` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id_page`),
  KEY `id_page_type` (`id_page_type`),
  KEY `id_object` (`id_object`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_page`
--

LOCK TABLES `qlo_page` WRITE;
/*!40000 ALTER TABLE `qlo_page` DISABLE KEYS */;
INSERT INTO `qlo_page` VALUES (1,1,NULL),(2,2,NULL),(3,4,NULL),(4,6,NULL),(5,5,NULL),(6,3,NULL),(7,8,NULL),(8,7,NULL);
/*!40000 ALTER TABLE `qlo_page` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_page_type`
--

DROP TABLE IF EXISTS `qlo_page_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_page_type` (
  `id_page_type` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_page_type`),
  KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_page_type`
--

LOCK TABLES `qlo_page_type` WRITE;
/*!40000 ALTER TABLE `qlo_page_type` DISABLE KEYS */;
INSERT INTO `qlo_page_type` VALUES (2,'authentication'),(1,'index'),(3,'pagenotfound'),(4,'pagenotfound'),(5,'pagenotfound'),(6,'pagenotfound'),(7,'pagenotfound'),(8,'pagenotfound');
/*!40000 ALTER TABLE `qlo_page_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_page_viewed`
--

DROP TABLE IF EXISTS `qlo_page_viewed`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_page_viewed` (
  `id_page` int unsigned NOT NULL,
  `id_shop_group` int unsigned NOT NULL DEFAULT '1',
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `id_date_range` int unsigned NOT NULL,
  `counter` int unsigned NOT NULL,
  PRIMARY KEY (`id_page`,`id_date_range`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_page_viewed`
--

LOCK TABLES `qlo_page_viewed` WRITE;
/*!40000 ALTER TABLE `qlo_page_viewed` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_page_viewed` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_pagenotfound`
--

DROP TABLE IF EXISTS `qlo_pagenotfound`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_pagenotfound` (
  `id_pagenotfound` int unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `id_shop_group` int unsigned NOT NULL DEFAULT '1',
  `request_uri` varchar(256) NOT NULL,
  `http_referer` varchar(256) NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_pagenotfound`),
  KEY `date_add` (`date_add`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_pagenotfound`
--

LOCK TABLES `qlo_pagenotfound` WRITE;
/*!40000 ALTER TABLE `qlo_pagenotfound` DISABLE KEYS */;
INSERT INTO `qlo_pagenotfound` VALUES (1,1,1,'/themes/hotel-reservation-theme/css/global.css.map','','2026-02-18 18:41:17'),(2,1,1,'/.well-known/appspecific/com.chrome.devtools.json','','2026-02-18 18:41:17'),(3,1,1,'/themes/hotel-reservation-theme/css/modules/blockcart/blockcart.css.map','','2026-02-18 18:41:17'),(4,1,1,'/js/daterangepicker/moment.min.js.map','','2026-02-18 18:41:17'),(5,1,1,'/themes/hotel-reservation-theme/css/modules/blocknewsletter/blocknewsletter.css.map','','2026-02-18 18:41:17'),(6,1,1,'/themes/hotel-reservation-theme/css/autoload/uniform.default.css.map','','2026-02-18 18:41:17'),(7,1,1,'/.well-known/appspecific/com.chrome.devtools.json','','2026-02-18 18:41:19'),(8,1,1,'/themes/hotel-reservation-theme/css/modules/blocknewsletter/blocknewsletter.css.map','','2026-02-18 18:41:20'),(9,1,1,'/themes/hotel-reservation-theme/css/autoload/uniform.default.css.map','','2026-02-18 18:41:20'),(10,1,1,'/themes/hotel-reservation-theme/css/modules/blockcart/blockcart.css.map','','2026-02-18 18:41:20'),(11,1,1,'/themes/hotel-reservation-theme/css/global.css.map','','2026-02-18 18:41:20'),(12,1,1,'/js/daterangepicker/moment.min.js.map','','2026-02-18 18:41:20'),(13,1,1,'/.well-known/appspecific/com.chrome.devtools.json','','2026-02-18 18:41:22'),(14,1,1,'/js/daterangepicker/moment.min.js.map','','2026-02-18 18:41:22'),(15,1,1,'/themes/hotel-reservation-theme/css/modules/blockcart/blockcart.css.map','','2026-02-18 18:41:22'),(16,1,1,'/themes/hotel-reservation-theme/css/modules/blocknewsletter/blocknewsletter.css.map','','2026-02-18 18:41:22'),(17,1,1,'/themes/hotel-reservation-theme/css/autoload/uniform.default.css.map','','2026-02-18 18:41:22'),(18,1,1,'/themes/hotel-reservation-theme/css/global.css.map','','2026-02-18 18:41:22'),(19,1,1,'/themes/hotel-reservation-theme/css/authentication.css.map','','2026-02-18 18:41:23'),(20,1,1,'/.well-known/appspecific/com.chrome.devtools.json','','2026-02-18 18:41:25'),(21,1,1,'/themes/hotel-reservation-theme/css/autoload/uniform.default.css.map','','2026-02-18 18:41:26'),(22,1,1,'/themes/hotel-reservation-theme/css/modules/blockcart/blockcart.css.map','','2026-02-18 18:41:26'),(23,1,1,'/themes/hotel-reservation-theme/css/global.css.map','','2026-02-18 18:41:26'),(24,1,1,'/themes/hotel-reservation-theme/css/my-account.css.map','','2026-02-18 18:41:26'),(25,1,1,'/themes/hotel-reservation-theme/css/modules/blocknewsletter/blocknewsletter.css.map','','2026-02-18 18:41:26'),(26,1,1,'/js/daterangepicker/moment.min.js.map','','2026-02-18 18:41:26'),(27,1,1,'/.well-known/appspecific/com.chrome.devtools.json','','2026-02-18 18:41:50'),(28,1,1,'/themes/hotel-reservation-theme/css/global.css.map','','2026-02-18 18:41:50'),(29,1,1,'/themes/hotel-reservation-theme/css/modules/blockcart/blockcart.css.map','','2026-02-18 18:41:50'),(30,1,1,'/themes/hotel-reservation-theme/css/modules/blocknewsletter/blocknewsletter.css.map','','2026-02-18 18:41:50'),(31,1,1,'/themes/hotel-reservation-theme/css/autoload/uniform.default.css.map','','2026-02-18 18:41:50'),(32,1,1,'/themes/hotel-reservation-theme/css/authentication.css.map','','2026-02-18 18:41:50'),(33,1,1,'/js/daterangepicker/moment.min.js.map','','2026-02-18 18:41:50'),(34,1,1,'/.well-known/appspecific/com.chrome.devtools.json','','2026-02-18 18:42:30'),(35,1,1,'/themes/hotel-reservation-theme/css/global.css.map','','2026-02-18 18:42:30'),(36,1,1,'/themes/hotel-reservation-theme/css/autoload/uniform.default.css.map','','2026-02-18 18:42:30'),(37,1,1,'/themes/hotel-reservation-theme/css/my-account.css.map','','2026-02-18 18:42:30'),(38,1,1,'/themes/hotel-reservation-theme/css/modules/blocknewsletter/blocknewsletter.css.map','','2026-02-18 18:42:30'),(39,1,1,'/themes/hotel-reservation-theme/css/modules/blockcart/blockcart.css.map','','2026-02-18 18:42:30'),(40,1,1,'/js/daterangepicker/moment.min.js.map','','2026-02-18 18:42:30');
/*!40000 ALTER TABLE `qlo_pagenotfound` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_product`
--

DROP TABLE IF EXISTS `qlo_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_product` (
  `id_product` int unsigned NOT NULL AUTO_INCREMENT,
  `id_supplier` int unsigned DEFAULT NULL,
  `id_manufacturer` int unsigned DEFAULT NULL,
  `id_category_default` int unsigned DEFAULT NULL,
  `id_shop_default` int unsigned NOT NULL DEFAULT '1',
  `id_tax_rules_group` int unsigned NOT NULL,
  `on_sale` tinyint unsigned NOT NULL DEFAULT '0',
  `online_only` tinyint unsigned NOT NULL DEFAULT '0',
  `ean13` varchar(13) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `quantity` int NOT NULL DEFAULT '0',
  `minimal_quantity` int unsigned NOT NULL DEFAULT '1',
  `allow_multiple_quantity` tinyint unsigned NOT NULL DEFAULT '1',
  `max_quantity` int unsigned NOT NULL DEFAULT '1',
  `price_calculation_method` tinyint unsigned NOT NULL DEFAULT '1',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unity` varchar(255) DEFAULT NULL,
  `unit_price_ratio` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `additional_shipping_cost` decimal(20,2) NOT NULL DEFAULT '0.00',
  `reference` varchar(32) DEFAULT NULL,
  `supplier_reference` varchar(32) DEFAULT NULL,
  `location` varchar(64) DEFAULT NULL,
  `width` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `height` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `depth` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `weight` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `out_of_stock` int unsigned NOT NULL DEFAULT '2',
  `quantity_discount` tinyint(1) DEFAULT '0',
  `customizable` tinyint NOT NULL DEFAULT '0',
  `uploadable_files` tinyint NOT NULL DEFAULT '0',
  `text_fields` tinyint NOT NULL DEFAULT '0',
  `active` tinyint unsigned NOT NULL DEFAULT '0',
  `redirect_type` enum('','404','301','302') NOT NULL DEFAULT '',
  `id_product_redirected` int unsigned NOT NULL DEFAULT '0',
  `available_for_order` tinyint(1) NOT NULL DEFAULT '1',
  `auto_add_to_cart` tinyint(1) NOT NULL DEFAULT '0',
  `price_addition_type` tinyint(1) NOT NULL DEFAULT '1',
  `show_at_front` tinyint(1) NOT NULL DEFAULT '1',
  `selling_preference_type` tinyint(1) NOT NULL DEFAULT '1',
  `price_display_method` tinyint(1) NOT NULL DEFAULT '1',
  `available_date` date NOT NULL DEFAULT '0000-00-00',
  `condition` enum('new','used','refurbished') NOT NULL DEFAULT 'new',
  `show_price` tinyint(1) NOT NULL DEFAULT '1',
  `indexed` tinyint(1) NOT NULL DEFAULT '0',
  `visibility` enum('both','catalog','search','none') NOT NULL DEFAULT 'both',
  `cache_is_pack` tinyint(1) NOT NULL DEFAULT '0',
  `cache_has_attachments` tinyint(1) NOT NULL DEFAULT '0',
  `is_virtual` tinyint(1) NOT NULL DEFAULT '0',
  `booking_product` tinyint(1) NOT NULL DEFAULT '1',
  `cache_default_attribute` int unsigned DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `advanced_stock_management` tinyint(1) NOT NULL DEFAULT '0',
  `pack_stock_type` int unsigned NOT NULL DEFAULT '3',
  PRIMARY KEY (`id_product`),
  KEY `product_supplier` (`id_supplier`),
  KEY `product_manufacturer` (`id_manufacturer`,`id_product`),
  KEY `id_category_default` (`id_category_default`),
  KEY `indexed` (`indexed`),
  KEY `date_add` (`date_add`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_product`
--

LOCK TABLES `qlo_product` WRITE;
/*!40000 ALTER TABLE `qlo_product` DISABLE KEYS */;
INSERT INTO `qlo_product` VALUES (1,0,0,7,1,1,0,0,'','',0.000000,0,1,0,0,0,1000.000000,0.000000,'',0.000000,0.00,'','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,0,0,1,0,1,'0000-00-00','new',1,1,'both',0,0,1,1,0,'2026-02-18 16:25:22','2026-02-18 16:25:22',0,3),(2,0,0,7,1,1,0,0,'','',0.000000,0,1,0,0,0,1500.000000,0.000000,'',0.000000,0.00,'','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,0,0,1,0,1,'0000-00-00','new',1,1,'both',0,0,1,1,0,'2026-02-18 16:25:22','2026-02-18 16:25:22',0,3),(3,0,0,7,1,1,0,0,'','',0.000000,0,1,0,0,0,2000.000000,0.000000,'',0.000000,0.00,'','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,0,0,1,0,1,'0000-00-00','new',1,1,'both',0,0,1,1,0,'2026-02-18 16:25:23','2026-02-18 16:25:23',0,3),(4,0,0,7,1,1,0,0,'','',0.000000,0,1,0,0,0,2500.000000,0.000000,'',0.000000,0.00,'','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,0,0,1,0,1,'0000-00-00','new',1,1,'both',0,0,1,1,0,'2026-02-18 16:25:24','2026-02-18 16:25:24',0,3),(5,0,0,11,1,0,0,0,'','',0.000000,0,1,0,0,2,250.000000,0.000000,'',0.000000,0.00,'','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,1,1,0,1,1,'0000-00-00','new',1,1,'both',0,0,1,0,0,'2026-02-18 16:25:25','2026-02-18 16:25:25',0,3),(6,0,0,11,1,1,0,0,'','',0.000000,0,1,0,0,1,250.000000,0.000000,'',0.000000,0.00,'','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,1,2,0,1,1,'0000-00-00','new',1,1,'both',0,0,1,0,0,'2026-02-18 16:25:25','2026-02-18 16:25:25',0,3),(7,0,0,9,1,1,0,0,'','',0.000000,0,1,0,0,1,50.000000,0.000000,'',0.000000,0.00,'','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,0,1,1,1,1,'0000-00-00','new',1,1,'both',0,0,1,0,0,'2026-02-18 16:25:26','2026-02-18 16:25:26',0,3),(8,0,0,9,1,1,0,0,'','',0.000000,0,1,0,0,1,200.000000,0.000000,'',0.000000,0.00,'','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,0,1,1,1,1,'0000-00-00','new',1,1,'both',0,0,1,0,0,'2026-02-18 16:25:26','2026-02-18 16:25:26',0,3),(9,0,0,8,1,1,0,0,'','',0.000000,0,1,0,0,2,350.000000,0.000000,'',0.000000,0.00,'','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,0,1,1,1,1,'0000-00-00','new',1,1,'both',0,0,1,0,0,'2026-02-18 16:25:27','2026-02-18 16:25:27',0,3),(10,0,0,8,1,1,0,0,'','',0.000000,0,1,0,0,2,450.000000,0.000000,'',0.000000,0.00,'','','',0.000000,0.000000,0.000000,0.000000,2,0,0,0,0,1,'',0,1,0,1,1,1,1,'0000-00-00','new',1,1,'both',0,0,1,0,0,'2026-02-18 16:25:27','2026-02-18 16:25:27',0,3);
/*!40000 ALTER TABLE `qlo_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_product_attachment`
--

DROP TABLE IF EXISTS `qlo_product_attachment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_product_attachment` (
  `id_product` int unsigned NOT NULL,
  `id_attachment` int unsigned NOT NULL,
  PRIMARY KEY (`id_product`,`id_attachment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_product_attachment`
--

LOCK TABLES `qlo_product_attachment` WRITE;
/*!40000 ALTER TABLE `qlo_product_attachment` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_product_attachment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_product_attribute`
--

DROP TABLE IF EXISTS `qlo_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_product_attribute` (
  `id_product_attribute` int unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int unsigned NOT NULL,
  `reference` varchar(32) DEFAULT NULL,
  `supplier_reference` varchar(32) DEFAULT NULL,
  `location` varchar(64) DEFAULT NULL,
  `ean13` varchar(13) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `quantity` int NOT NULL DEFAULT '0',
  `weight` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unit_price_impact` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `default_on` tinyint unsigned DEFAULT NULL,
  `minimal_quantity` int unsigned NOT NULL DEFAULT '1',
  `available_date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id_product_attribute`),
  UNIQUE KEY `product_default` (`id_product`,`default_on`),
  KEY `product_attribute_product` (`id_product`),
  KEY `reference` (`reference`),
  KEY `supplier_reference` (`supplier_reference`),
  KEY `id_product_id_product_attribute` (`id_product_attribute`,`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_product_attribute`
--

LOCK TABLES `qlo_product_attribute` WRITE;
/*!40000 ALTER TABLE `qlo_product_attribute` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_product_attribute_combination`
--

DROP TABLE IF EXISTS `qlo_product_attribute_combination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_product_attribute_combination` (
  `id_attribute` int unsigned NOT NULL,
  `id_product_attribute` int unsigned NOT NULL,
  PRIMARY KEY (`id_attribute`,`id_product_attribute`),
  KEY `id_product_attribute` (`id_product_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_product_attribute_combination`
--

LOCK TABLES `qlo_product_attribute_combination` WRITE;
/*!40000 ALTER TABLE `qlo_product_attribute_combination` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_product_attribute_combination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_product_attribute_image`
--

DROP TABLE IF EXISTS `qlo_product_attribute_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_product_attribute_image` (
  `id_product_attribute` int unsigned NOT NULL,
  `id_image` int unsigned NOT NULL,
  PRIMARY KEY (`id_product_attribute`,`id_image`),
  KEY `id_image` (`id_image`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_product_attribute_image`
--

LOCK TABLES `qlo_product_attribute_image` WRITE;
/*!40000 ALTER TABLE `qlo_product_attribute_image` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_product_attribute_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_product_attribute_shop`
--

DROP TABLE IF EXISTS `qlo_product_attribute_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_product_attribute_shop` (
  `id_product` int unsigned NOT NULL,
  `id_product_attribute` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `weight` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unit_price_impact` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `default_on` tinyint unsigned DEFAULT NULL,
  `minimal_quantity` int unsigned NOT NULL DEFAULT '1',
  `available_date` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`id_product_attribute`,`id_shop`),
  UNIQUE KEY `id_product` (`id_product`,`id_shop`,`default_on`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_product_attribute_shop`
--

LOCK TABLES `qlo_product_attribute_shop` WRITE;
/*!40000 ALTER TABLE `qlo_product_attribute_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_product_attribute_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_product_carrier`
--

DROP TABLE IF EXISTS `qlo_product_carrier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_product_carrier` (
  `id_product` int unsigned NOT NULL,
  `id_carrier_reference` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  PRIMARY KEY (`id_product`,`id_carrier_reference`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_product_carrier`
--

LOCK TABLES `qlo_product_carrier` WRITE;
/*!40000 ALTER TABLE `qlo_product_carrier` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_product_carrier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_product_country_tax`
--

DROP TABLE IF EXISTS `qlo_product_country_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_product_country_tax` (
  `id_product` int NOT NULL,
  `id_country` int NOT NULL,
  `id_tax` int NOT NULL,
  PRIMARY KEY (`id_product`,`id_country`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_product_country_tax`
--

LOCK TABLES `qlo_product_country_tax` WRITE;
/*!40000 ALTER TABLE `qlo_product_country_tax` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_product_country_tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_product_download`
--

DROP TABLE IF EXISTS `qlo_product_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_product_download` (
  `id_product_download` int unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int unsigned NOT NULL,
  `display_filename` varchar(255) DEFAULT NULL,
  `filename` varchar(255) DEFAULT NULL,
  `date_add` datetime NOT NULL,
  `date_expiration` datetime DEFAULT NULL,
  `nb_days_accessible` int unsigned DEFAULT NULL,
  `nb_downloadable` int unsigned DEFAULT '1',
  `active` tinyint unsigned NOT NULL DEFAULT '1',
  `is_shareable` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_product_download`),
  UNIQUE KEY `id_product` (`id_product`),
  KEY `product_active` (`id_product`,`active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_product_download`
--

LOCK TABLES `qlo_product_download` WRITE;
/*!40000 ALTER TABLE `qlo_product_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_product_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_product_group_reduction_cache`
--

DROP TABLE IF EXISTS `qlo_product_group_reduction_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_product_group_reduction_cache` (
  `id_product` int unsigned NOT NULL,
  `id_group` int unsigned NOT NULL,
  `reduction` decimal(4,3) NOT NULL,
  PRIMARY KEY (`id_product`,`id_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_product_group_reduction_cache`
--

LOCK TABLES `qlo_product_group_reduction_cache` WRITE;
/*!40000 ALTER TABLE `qlo_product_group_reduction_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_product_group_reduction_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_product_lang`
--

DROP TABLE IF EXISTS `qlo_product_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_product_lang` (
  `id_product` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `id_lang` int unsigned NOT NULL,
  `description` text,
  `description_short` text,
  `link_rewrite` varchar(128) NOT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_title` varchar(128) DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `available_now` varchar(255) DEFAULT NULL,
  `available_later` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_product`,`id_shop`,`id_lang`),
  KEY `id_lang` (`id_lang`),
  KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_product_lang`
--

LOCK TABLES `qlo_product_lang` WRITE;
/*!40000 ALTER TABLE `qlo_product_lang` DISABLE KEYS */;
INSERT INTO `qlo_product_lang` VALUES (1,1,1,'Make yourself at home in our spacious General Rooms, tailored for families or groups seeking comfort and convenience. This accommodation offers multiple bedrooms, ensuring everyone has their own space to relax and recharge. The cozy living area is perfect for bonding over games or movie nights, while the well-equipped kitchenette allows for effortless meal preparation. Each room is equipped with flat-screen TVs and complimentary Wi-Fi, ensuring everyone stays entertained and connected throughout their stay. Ideal for creating lasting memories together in a setting of warmth and hospitality.','Our General Rooms offer space and comfort with multiple bedrooms and a cozy living area. Enjoy flat-screen TVs, complimentary Wi-Fi, and a kitchenette for a perfect family getaway.','general-rooms','','','','General Rooms','',''),(1,1,2,'Make yourself at home in our spacious General Rooms, tailored for families or groups seeking comfort and convenience. This accommodation offers multiple bedrooms, ensuring everyone has their own space to relax and recharge. The cozy living area is perfect for bonding over games or movie nights, while the well-equipped kitchenette allows for effortless meal preparation. Each room is equipped with flat-screen TVs and complimentary Wi-Fi, ensuring everyone stays entertained and connected throughout their stay. Ideal for creating lasting memories together in a setting of warmth and hospitality.','Our General Rooms offer space and comfort with multiple bedrooms and a cozy living area. Enjoy flat-screen TVs, complimentary Wi-Fi, and a kitchenette for a perfect family getaway.','general-rooms','','','','General Rooms','',''),(2,1,1,'Experience the epitome of luxury in our Deluxe Room. Gaze out over serene waters from the comfort of your spacious accommodation, furnished with a plush king-sized bed and elegant decor. Whether unwinding in the sitting area or enjoying modern amenities like complimentary Wi-Fi and a flat-screen TV, every detail ensures your stay is both relaxing and indulgent. Perfect for guests seeking a peaceful retreat with breathtaking views and refined comfort.','Enjoy lake views from our Deluxe Rooms with a king-sized bed, elegant furnishings, and a spacious sitting area. Perfect for guests seeking comfort, luxury, and modern amenities.','delux-rooms','','','','Delux Rooms','',''),(2,1,2,'Experience the epitome of luxury in our Deluxe Room. Gaze out over serene waters from the comfort of your spacious accommodation, furnished with a plush king-sized bed and elegant decor. Whether unwinding in the sitting area or enjoying modern amenities like complimentary Wi-Fi and a flat-screen TV, every detail ensures your stay is both relaxing and indulgent. Perfect for guests seeking a peaceful retreat with breathtaking views and refined comfort.','Enjoy lake views from our Deluxe Rooms with a king-sized bed, elegant furnishings, and a spacious sitting area. Perfect for guests seeking comfort, luxury, and modern amenities.','delux-rooms','','','','Delux Rooms','',''),(3,1,1,'Elevate your stay with the expansive comfort of our Executive Room. Designed for discerning travelers, this room features separate living and sleeping areas adorned with sophisticated furnishings and luxurious touches. Pamper yourself in the deluxe bathroom, complete with a soaking tub and premium toiletries. Enjoy exclusive access to our executive lounge for unwinding with complimentary refreshments and tranquil surroundings. Ideal for business travelers or those seeking extra space and privacy in a setting of unparalleled sophistication.','Indulge in our Executive Rooms, featuring separate living and sleeping areas, a luxurious bathroom, and exclusive lounge access. Ideal for business travelers seeking privacy','executive-rooms','','','','Executive Rooms','',''),(3,1,2,'Elevate your stay with the expansive comfort of our Executive Room. Designed for discerning travelers, this room features separate living and sleeping areas adorned with sophisticated furnishings and luxurious touches. Pamper yourself in the deluxe bathroom, complete with a soaking tub and premium toiletries. Enjoy exclusive access to our executive lounge for unwinding with complimentary refreshments and tranquil surroundings. Ideal for business travelers or those seeking extra space and privacy in a setting of unparalleled sophistication.','Indulge in our Executive Rooms, featuring separate living and sleeping areas, a luxurious bathroom, and exclusive lounge access. Ideal for business travelers seeking privacy','executive-rooms','','','','Executive Rooms','',''),(4,1,1,'Indulge in ultimate tranquility in our Luxury Room, where expansive vistas and serene surroundings create a peaceful oasis. Wake up to panoramic views complemented by elegant decor and a comfortable queen-sized bed. Whether catching up on work at the well-appointed workspace or simply relaxing in serene ambiance, this room offers a luxurious retreat for both business and leisure travelers alike. Perfect for those seeking comfort, style, and breathtaking views in an unparalleled setting.','Retreat to tranquility in our Luxury Rooms with expansive views. Featuring a queen-sized bed, workspace, and serene decor, perfect for business and leisure travelers alike.','luxury-rooms','','','','Luxury Rooms','',''),(4,1,2,'Indulge in ultimate tranquility in our Luxury Room, where expansive vistas and serene surroundings create a peaceful oasis. Wake up to panoramic views complemented by elegant decor and a comfortable queen-sized bed. Whether catching up on work at the well-appointed workspace or simply relaxing in serene ambiance, this room offers a luxurious retreat for both business and leisure travelers alike. Perfect for those seeking comfort, style, and breathtaking views in an unparalleled setting.','Retreat to tranquility in our Luxury Rooms with expansive views. Featuring a queen-sized bed, workspace, and serene decor, perfect for business and leisure travelers alike.','luxury-rooms','','','','Luxury Rooms','',''),(5,1,1,'Ensure a comfortable stay with our room maintenance service, keeping your accommodation pristine and hassle-free throughout your visit.','Ensure a comfortable stay with our room maintenance service, keeping your accommodation pristine and hassle-free throughout your visit.','room-maintenance-fees','','','','Room Maintenance Fees','',''),(5,1,2,'Ensure a comfortable stay with our room maintenance service, keeping your accommodation pristine and hassle-free throughout your visit.','Ensure a comfortable stay with our room maintenance service, keeping your accommodation pristine and hassle-free throughout your visit.','room-maintenance-fees','','','','Room Maintenance Fees','',''),(6,1,1,'Navigate our website effortlessly with seamless handling, ensuring reliable, high-speed access for an enjoyable browsing experience throughout your online journey.','Navigate our website effortlessly with seamless handling, ensuring reliable, high-speed access for an enjoyable browsing experience throughout your online journey.','internet-handling-charges','','','','Internet Handling Charges','',''),(6,1,2,'Navigate our website effortlessly with seamless handling, ensuring reliable, high-speed access for an enjoyable browsing experience throughout your online journey.','Navigate our website effortlessly with seamless handling, ensuring reliable, high-speed access for an enjoyable browsing experience throughout your online journey.','internet-handling-charges','','','','Internet Handling Charges','',''),(7,1,1,'Experience convenience from touchdown to check-in with our efficient airport shuttle service, whisking you to your accommodation with ease and comfort.','Experience convenience from touchdown to check-in with our efficient airport shuttle service, whisking you to your accommodation with ease and comfort.','airport-shuttle','','','','Airport Shuttle','',''),(7,1,2,'Experience convenience from touchdown to check-in with our efficient airport shuttle service, whisking you to your accommodation with ease and comfort.','Experience convenience from touchdown to check-in with our efficient airport shuttle service, whisking you to your accommodation with ease and comfort.','airport-shuttle','','','','Airport Shuttle','',''),(8,1,1,'Explore the city conveniently with our cab-on-demand service, giving you the freedom to travel and discover local attractions at your own pace.','Explore the city conveniently with our cab-on-demand service, giving you the freedom to travel and discover local attractions at your own pace.','cab-on-demand','','','','Cab on Demand','',''),(8,1,2,'Explore the city conveniently with our cab-on-demand service, giving you the freedom to travel and discover local attractions at your own pace.','Explore the city conveniently with our cab-on-demand service, giving you the freedom to travel and discover local attractions at your own pace.','cab-on-demand','','','','Cab on Demand','',''),(9,1,1,'Start your day right with a delicious and hearty breakfast, thoughtfully prepared to fuel your adventures and make your mornings exceptional.','Start your day right with a delicious and hearty breakfast, thoughtfully prepared to fuel your adventures and make your mornings exceptional.','breakfast','','','','Breakfast','',''),(9,1,2,'Start your day right with a delicious and hearty breakfast, thoughtfully prepared to fuel your adventures and make your mornings exceptional.','Start your day right with a delicious and hearty breakfast, thoughtfully prepared to fuel your adventures and make your mornings exceptional.','breakfast','','','','Breakfast','',''),(10,1,1,'Wind down in the evening with a delectable dinner spread, offering a culinary journey that delights your taste buds and completes your day with satisfaction.','Wind down in the evening with a delectable dinner spread, offering a culinary journey that delights your taste buds and completes your day with satisfaction.','dinner','','','','Dinner','',''),(10,1,2,'Wind down in the evening with a delectable dinner spread, offering a culinary journey that delights your taste buds and completes your day with satisfaction.','Wind down in the evening with a delectable dinner spread, offering a culinary journey that delights your taste buds and completes your day with satisfaction.','dinner','','','','Dinner','','');
/*!40000 ALTER TABLE `qlo_product_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_product_option`
--

DROP TABLE IF EXISTS `qlo_product_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_product_option` (
  `id_product_option` int unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int unsigned NOT NULL,
  `price_impact` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_product_option`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_product_option`
--

LOCK TABLES `qlo_product_option` WRITE;
/*!40000 ALTER TABLE `qlo_product_option` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_product_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_product_option_lang`
--

DROP TABLE IF EXISTS `qlo_product_option_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_product_option_lang` (
  `id_product_option` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id_product_option`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_product_option_lang`
--

LOCK TABLES `qlo_product_option_lang` WRITE;
/*!40000 ALTER TABLE `qlo_product_option_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_product_option_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_product_sale`
--

DROP TABLE IF EXISTS `qlo_product_sale`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_product_sale` (
  `id_product` int unsigned NOT NULL,
  `quantity` int unsigned NOT NULL DEFAULT '0',
  `sale_nbr` int unsigned NOT NULL DEFAULT '0',
  `date_upd` date NOT NULL,
  PRIMARY KEY (`id_product`),
  KEY `quantity` (`quantity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_product_sale`
--

LOCK TABLES `qlo_product_sale` WRITE;
/*!40000 ALTER TABLE `qlo_product_sale` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_product_sale` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_product_shop`
--

DROP TABLE IF EXISTS `qlo_product_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_product_shop` (
  `id_product` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  `id_category_default` int unsigned DEFAULT NULL,
  `id_tax_rules_group` int unsigned NOT NULL,
  `on_sale` tinyint unsigned NOT NULL DEFAULT '0',
  `online_only` tinyint unsigned NOT NULL DEFAULT '0',
  `ecotax` decimal(17,6) NOT NULL DEFAULT '0.000000',
  `minimal_quantity` int unsigned NOT NULL DEFAULT '1',
  `allow_multiple_quantity` tinyint unsigned NOT NULL DEFAULT '1',
  `max_quantity` int unsigned NOT NULL DEFAULT '1',
  `price_calculation_method` tinyint unsigned NOT NULL DEFAULT '1',
  `price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `wholesale_price` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `unity` varchar(255) DEFAULT NULL,
  `unit_price_ratio` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `additional_shipping_cost` decimal(20,2) NOT NULL DEFAULT '0.00',
  `customizable` tinyint NOT NULL DEFAULT '0',
  `uploadable_files` tinyint NOT NULL DEFAULT '0',
  `text_fields` tinyint NOT NULL DEFAULT '0',
  `active` tinyint unsigned NOT NULL DEFAULT '0',
  `redirect_type` enum('','404','301','302') NOT NULL DEFAULT '',
  `id_product_redirected` int unsigned NOT NULL DEFAULT '0',
  `available_for_order` tinyint(1) NOT NULL DEFAULT '1',
  `auto_add_to_cart` tinyint(1) NOT NULL DEFAULT '0',
  `price_addition_type` tinyint(1) NOT NULL DEFAULT '1',
  `show_at_front` tinyint(1) NOT NULL DEFAULT '1',
  `price_display_method` tinyint(1) NOT NULL DEFAULT '1',
  `available_date` date NOT NULL DEFAULT '0000-00-00',
  `condition` enum('new','used','refurbished') NOT NULL DEFAULT 'new',
  `show_price` tinyint(1) NOT NULL DEFAULT '1',
  `indexed` tinyint(1) NOT NULL DEFAULT '0',
  `visibility` enum('both','catalog','search','none') NOT NULL DEFAULT 'both',
  `cache_default_attribute` int unsigned DEFAULT NULL,
  `advanced_stock_management` tinyint(1) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `pack_stock_type` int unsigned NOT NULL DEFAULT '3',
  PRIMARY KEY (`id_product`,`id_shop`),
  KEY `id_category_default` (`id_category_default`),
  KEY `date_add` (`date_add`,`active`,`visibility`),
  KEY `indexed` (`indexed`,`active`,`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_product_shop`
--

LOCK TABLES `qlo_product_shop` WRITE;
/*!40000 ALTER TABLE `qlo_product_shop` DISABLE KEYS */;
INSERT INTO `qlo_product_shop` VALUES (1,1,7,1,0,0,0.000000,1,0,0,0,1000.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,0,0,1,1,'0000-00-00','new',1,1,'both',0,0,'2026-02-18 16:25:22','2026-02-18 16:25:22',3),(2,1,7,1,0,0,0.000000,1,0,0,0,1500.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,0,0,1,1,'0000-00-00','new',1,1,'both',0,0,'2026-02-18 16:25:22','2026-02-18 16:25:22',3),(3,1,7,1,0,0,0.000000,1,0,0,0,2000.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,0,0,1,1,'0000-00-00','new',1,1,'both',0,0,'2026-02-18 16:25:23','2026-02-18 16:25:23',3),(4,1,7,1,0,0,0.000000,1,0,0,0,2500.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,0,0,1,1,'0000-00-00','new',1,1,'both',0,0,'2026-02-18 16:25:24','2026-02-18 16:25:24',3),(5,1,11,0,0,0,0.000000,1,0,0,2,250.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,1,1,0,1,'0000-00-00','new',1,1,'both',0,0,'2026-02-18 16:25:25','2026-02-18 16:25:25',3),(6,1,11,1,0,0,0.000000,1,0,0,1,250.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,1,2,0,1,'0000-00-00','new',1,1,'both',0,0,'2026-02-18 16:25:25','2026-02-18 16:25:25',3),(7,1,9,1,0,0,0.000000,1,0,0,1,50.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,0,1,1,1,'0000-00-00','new',1,1,'both',0,0,'2026-02-18 16:25:26','2026-02-18 16:25:26',3),(8,1,9,1,0,0,0.000000,1,0,0,1,200.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,0,1,1,1,'0000-00-00','new',1,1,'both',0,0,'2026-02-18 16:25:26','2026-02-18 16:25:26',3),(9,1,8,1,0,0,0.000000,1,0,0,2,350.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,0,1,1,1,'0000-00-00','new',1,1,'both',0,0,'2026-02-18 16:25:27','2026-02-18 16:25:27',3),(10,1,8,1,0,0,0.000000,1,0,0,2,450.000000,0.000000,'',0.000000,0.00,0,0,0,1,'',0,1,0,1,1,1,'0000-00-00','new',1,1,'both',0,0,'2026-02-18 16:25:27','2026-02-18 16:25:27',3);
/*!40000 ALTER TABLE `qlo_product_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_product_supplier`
--

DROP TABLE IF EXISTS `qlo_product_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_product_supplier` (
  `id_product_supplier` int unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int unsigned NOT NULL,
  `id_product_attribute` int unsigned NOT NULL DEFAULT '0',
  `id_supplier` int unsigned NOT NULL,
  `product_supplier_reference` varchar(32) DEFAULT NULL,
  `product_supplier_price_te` decimal(20,6) NOT NULL DEFAULT '0.000000',
  `id_currency` int unsigned NOT NULL,
  PRIMARY KEY (`id_product_supplier`),
  UNIQUE KEY `id_product` (`id_product`,`id_product_attribute`,`id_supplier`),
  KEY `id_supplier` (`id_supplier`,`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_product_supplier`
--

LOCK TABLES `qlo_product_supplier` WRITE;
/*!40000 ALTER TABLE `qlo_product_supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_product_supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_product_tag`
--

DROP TABLE IF EXISTS `qlo_product_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_product_tag` (
  `id_product` int unsigned NOT NULL,
  `id_tag` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  PRIMARY KEY (`id_product`,`id_tag`),
  KEY `id_tag` (`id_tag`),
  KEY `id_lang` (`id_lang`,`id_tag`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_product_tag`
--

LOCK TABLES `qlo_product_tag` WRITE;
/*!40000 ALTER TABLE `qlo_product_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_product_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_profile`
--

DROP TABLE IF EXISTS `qlo_profile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_profile` (
  `id_profile` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_profile`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_profile`
--

LOCK TABLES `qlo_profile` WRITE;
/*!40000 ALTER TABLE `qlo_profile` DISABLE KEYS */;
INSERT INTO `qlo_profile` VALUES (1);
/*!40000 ALTER TABLE `qlo_profile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_profile_lang`
--

DROP TABLE IF EXISTS `qlo_profile_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_profile_lang` (
  `id_lang` int unsigned NOT NULL,
  `id_profile` int unsigned NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id_profile`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_profile_lang`
--

LOCK TABLES `qlo_profile_lang` WRITE;
/*!40000 ALTER TABLE `qlo_profile_lang` DISABLE KEYS */;
INSERT INTO `qlo_profile_lang` VALUES (1,1,'SuperAdmin'),(2,1,'Super Admin');
/*!40000 ALTER TABLE `qlo_profile_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_qcmc_channel_manager_booking`
--

DROP TABLE IF EXISTS `qlo_qcmc_channel_manager_booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_qcmc_channel_manager_booking` (
  `id_channel_manager_booking` int unsigned NOT NULL AUTO_INCREMENT,
  `id_order` int unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_channel_manager_booking`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_qcmc_channel_manager_booking`
--

LOCK TABLES `qlo_qcmc_channel_manager_booking` WRITE;
/*!40000 ALTER TABLE `qlo_qcmc_channel_manager_booking` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_qcmc_channel_manager_booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_qhr_category`
--

DROP TABLE IF EXISTS `qlo_qhr_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_qhr_category` (
  `id_category` int NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) DEFAULT '1',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_category`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_qhr_category`
--

LOCK TABLES `qlo_qhr_category` WRITE;
/*!40000 ALTER TABLE `qlo_qhr_category` DISABLE KEYS */;
INSERT INTO `qlo_qhr_category` VALUES (1,1,'2026-02-18 16:25:28','2026-02-18 16:25:28'),(2,1,'2026-02-18 16:25:28','2026-02-18 16:25:28');
/*!40000 ALTER TABLE `qlo_qhr_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_qhr_category_lang`
--

DROP TABLE IF EXISTS `qlo_qhr_category_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_qhr_category_lang` (
  `id_category` int NOT NULL,
  `id_lang` int NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id_category`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_qhr_category_lang`
--

LOCK TABLES `qlo_qhr_category_lang` WRITE;
/*!40000 ALTER TABLE `qlo_qhr_category_lang` DISABLE KEYS */;
INSERT INTO `qlo_qhr_category_lang` VALUES (1,1,'Food'),(1,2,'Food'),(2,1,'Room Service'),(2,2,'Room Service');
/*!40000 ALTER TABLE `qlo_qhr_category_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_qhr_hotel_review`
--

DROP TABLE IF EXISTS `qlo_qhr_hotel_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_qhr_hotel_review` (
  `id_hotel_review` int NOT NULL AUTO_INCREMENT,
  `id_hotel` int NOT NULL,
  `id_order` int NOT NULL,
  `rating` float unsigned NOT NULL,
  `subject` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `status_abusive` tinyint(1) DEFAULT '0',
  `status` tinyint(1) DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_hotel_review`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_qhr_hotel_review`
--

LOCK TABLES `qlo_qhr_hotel_review` WRITE;
/*!40000 ALTER TABLE `qlo_qhr_hotel_review` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_qhr_hotel_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_qhr_review_category_rating`
--

DROP TABLE IF EXISTS `qlo_qhr_review_category_rating`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_qhr_review_category_rating` (
  `id_hotel_review` int NOT NULL,
  `id_category` int NOT NULL,
  `rating` float unsigned NOT NULL,
  PRIMARY KEY (`id_hotel_review`,`id_category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_qhr_review_category_rating`
--

LOCK TABLES `qlo_qhr_review_category_rating` WRITE;
/*!40000 ALTER TABLE `qlo_qhr_review_category_rating` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_qhr_review_category_rating` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_qhr_review_reply`
--

DROP TABLE IF EXISTS `qlo_qhr_review_reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_qhr_review_reply` (
  `id_review_reply` int NOT NULL AUTO_INCREMENT,
  `id_hotel_review` int NOT NULL,
  `id_employee` int NOT NULL DEFAULT '0',
  `message` text NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_review_reply`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_qhr_review_reply`
--

LOCK TABLES `qlo_qhr_review_reply` WRITE;
/*!40000 ALTER TABLE `qlo_qhr_review_reply` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_qhr_review_reply` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_qhr_review_report`
--

DROP TABLE IF EXISTS `qlo_qhr_review_report`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_qhr_review_report` (
  `id_hotel_review` int NOT NULL,
  `id_customer` int NOT NULL,
  PRIMARY KEY (`id_hotel_review`,`id_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_qhr_review_report`
--

LOCK TABLES `qlo_qhr_review_report` WRITE;
/*!40000 ALTER TABLE `qlo_qhr_review_report` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_qhr_review_report` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_qhr_review_usefulness`
--

DROP TABLE IF EXISTS `qlo_qhr_review_usefulness`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_qhr_review_usefulness` (
  `id_hotel_review` int NOT NULL,
  `id_customer` int NOT NULL,
  PRIMARY KEY (`id_hotel_review`,`id_customer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_qhr_review_usefulness`
--

LOCK TABLES `qlo_qhr_review_usefulness` WRITE;
/*!40000 ALTER TABLE `qlo_qhr_review_usefulness` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_qhr_review_usefulness` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_quick_access`
--

DROP TABLE IF EXISTS `qlo_quick_access`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_quick_access` (
  `id_quick_access` int unsigned NOT NULL AUTO_INCREMENT,
  `new_window` tinyint(1) NOT NULL DEFAULT '0',
  `link` varchar(255) NOT NULL,
  PRIMARY KEY (`id_quick_access`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_quick_access`
--

LOCK TABLES `qlo_quick_access` WRITE;
/*!40000 ALTER TABLE `qlo_quick_access` DISABLE KEYS */;
INSERT INTO `qlo_quick_access` VALUES (1,0,'index.php?controller=AdminProducts&addproduct'),(2,0,'index.php?controller=AdminCartRules&addcart_rule');
/*!40000 ALTER TABLE `qlo_quick_access` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_quick_access_lang`
--

DROP TABLE IF EXISTS `qlo_quick_access_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_quick_access_lang` (
  `id_quick_access` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_quick_access`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_quick_access_lang`
--

LOCK TABLES `qlo_quick_access_lang` WRITE;
/*!40000 ALTER TABLE `qlo_quick_access_lang` DISABLE KEYS */;
INSERT INTO `qlo_quick_access_lang` VALUES (1,1,'New room type'),(1,2,'Nowy produkt'),(2,1,'New voucher'),(2,2,'Nowy kupon');
/*!40000 ALTER TABLE `qlo_quick_access_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_range_price`
--

DROP TABLE IF EXISTS `qlo_range_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_range_price` (
  `id_range_price` int unsigned NOT NULL AUTO_INCREMENT,
  `id_carrier` int unsigned NOT NULL,
  `delimiter1` decimal(20,6) NOT NULL,
  `delimiter2` decimal(20,6) NOT NULL,
  PRIMARY KEY (`id_range_price`),
  UNIQUE KEY `id_carrier` (`id_carrier`,`delimiter1`,`delimiter2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_range_price`
--

LOCK TABLES `qlo_range_price` WRITE;
/*!40000 ALTER TABLE `qlo_range_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_range_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_range_weight`
--

DROP TABLE IF EXISTS `qlo_range_weight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_range_weight` (
  `id_range_weight` int unsigned NOT NULL AUTO_INCREMENT,
  `id_carrier` int unsigned NOT NULL,
  `delimiter1` decimal(20,6) NOT NULL,
  `delimiter2` decimal(20,6) NOT NULL,
  PRIMARY KEY (`id_range_weight`),
  UNIQUE KEY `id_carrier` (`id_carrier`,`delimiter1`,`delimiter2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_range_weight`
--

LOCK TABLES `qlo_range_weight` WRITE;
/*!40000 ALTER TABLE `qlo_range_weight` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_range_weight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_referrer`
--

DROP TABLE IF EXISTS `qlo_referrer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_referrer` (
  `id_referrer` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `passwd` varchar(32) DEFAULT NULL,
  `http_referer_regexp` varchar(64) DEFAULT NULL,
  `http_referer_like` varchar(64) DEFAULT NULL,
  `request_uri_regexp` varchar(64) DEFAULT NULL,
  `request_uri_like` varchar(64) DEFAULT NULL,
  `http_referer_regexp_not` varchar(64) DEFAULT NULL,
  `http_referer_like_not` varchar(64) DEFAULT NULL,
  `request_uri_regexp_not` varchar(64) DEFAULT NULL,
  `request_uri_like_not` varchar(64) DEFAULT NULL,
  `base_fee` decimal(5,2) NOT NULL DEFAULT '0.00',
  `percent_fee` decimal(5,2) NOT NULL DEFAULT '0.00',
  `click_fee` decimal(5,2) NOT NULL DEFAULT '0.00',
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_referrer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_referrer`
--

LOCK TABLES `qlo_referrer` WRITE;
/*!40000 ALTER TABLE `qlo_referrer` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_referrer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_referrer_cache`
--

DROP TABLE IF EXISTS `qlo_referrer_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_referrer_cache` (
  `id_connections_source` int unsigned NOT NULL,
  `id_referrer` int unsigned NOT NULL,
  PRIMARY KEY (`id_connections_source`,`id_referrer`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_referrer_cache`
--

LOCK TABLES `qlo_referrer_cache` WRITE;
/*!40000 ALTER TABLE `qlo_referrer_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_referrer_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_referrer_shop`
--

DROP TABLE IF EXISTS `qlo_referrer_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_referrer_shop` (
  `id_referrer` int unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `cache_visitors` int DEFAULT NULL,
  `cache_visits` int DEFAULT NULL,
  `cache_pages` int DEFAULT NULL,
  `cache_registrations` int DEFAULT NULL,
  `cache_orders` int DEFAULT NULL,
  `cache_sales` decimal(17,2) DEFAULT NULL,
  `cache_reg_rate` decimal(5,4) DEFAULT NULL,
  `cache_order_rate` decimal(5,4) DEFAULT NULL,
  PRIMARY KEY (`id_referrer`,`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_referrer_shop`
--

LOCK TABLES `qlo_referrer_shop` WRITE;
/*!40000 ALTER TABLE `qlo_referrer_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_referrer_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_request_sql`
--

DROP TABLE IF EXISTS `qlo_request_sql`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_request_sql` (
  `id_request_sql` int NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `sql` text NOT NULL,
  PRIMARY KEY (`id_request_sql`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_request_sql`
--

LOCK TABLES `qlo_request_sql` WRITE;
/*!40000 ALTER TABLE `qlo_request_sql` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_request_sql` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_required_field`
--

DROP TABLE IF EXISTS `qlo_required_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_required_field` (
  `id_required_field` int NOT NULL AUTO_INCREMENT,
  `object_name` varchar(32) NOT NULL,
  `field_name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_required_field`),
  KEY `object_name` (`object_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_required_field`
--

LOCK TABLES `qlo_required_field` WRITE;
/*!40000 ALTER TABLE `qlo_required_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_required_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_risk`
--

DROP TABLE IF EXISTS `qlo_risk`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_risk` (
  `id_risk` int unsigned NOT NULL AUTO_INCREMENT,
  `percent` tinyint NOT NULL,
  `color` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id_risk`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_risk`
--

LOCK TABLES `qlo_risk` WRITE;
/*!40000 ALTER TABLE `qlo_risk` DISABLE KEYS */;
INSERT INTO `qlo_risk` VALUES (1,0,'#32CD32'),(2,35,'#FF8C00'),(3,75,'#DC143C'),(4,100,'#ec2e15');
/*!40000 ALTER TABLE `qlo_risk` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_risk_lang`
--

DROP TABLE IF EXISTS `qlo_risk_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_risk_lang` (
  `id_risk` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(20) NOT NULL,
  PRIMARY KEY (`id_risk`,`id_lang`),
  KEY `id_risk` (`id_risk`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_risk_lang`
--

LOCK TABLES `qlo_risk_lang` WRITE;
/*!40000 ALTER TABLE `qlo_risk_lang` DISABLE KEYS */;
INSERT INTO `qlo_risk_lang` VALUES (1,1,'None'),(1,2,'Żaden'),(2,1,'Low'),(2,2,'Niski'),(3,1,'Medium'),(3,2,'Średni'),(4,1,'High'),(4,2,'Wysoki');
/*!40000 ALTER TABLE `qlo_risk_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_scene`
--

DROP TABLE IF EXISTS `qlo_scene`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_scene` (
  `id_scene` int unsigned NOT NULL AUTO_INCREMENT,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_scene`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_scene`
--

LOCK TABLES `qlo_scene` WRITE;
/*!40000 ALTER TABLE `qlo_scene` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_scene` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_scene_category`
--

DROP TABLE IF EXISTS `qlo_scene_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_scene_category` (
  `id_scene` int unsigned NOT NULL,
  `id_category` int unsigned NOT NULL,
  PRIMARY KEY (`id_scene`,`id_category`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_scene_category`
--

LOCK TABLES `qlo_scene_category` WRITE;
/*!40000 ALTER TABLE `qlo_scene_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_scene_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_scene_lang`
--

DROP TABLE IF EXISTS `qlo_scene_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_scene_lang` (
  `id_scene` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id_scene`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_scene_lang`
--

LOCK TABLES `qlo_scene_lang` WRITE;
/*!40000 ALTER TABLE `qlo_scene_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_scene_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_scene_products`
--

DROP TABLE IF EXISTS `qlo_scene_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_scene_products` (
  `id_scene` int unsigned NOT NULL,
  `id_product` int unsigned NOT NULL,
  `x_axis` int NOT NULL,
  `y_axis` int NOT NULL,
  `zone_width` int NOT NULL,
  `zone_height` int NOT NULL,
  PRIMARY KEY (`id_scene`,`id_product`,`x_axis`,`y_axis`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_scene_products`
--

LOCK TABLES `qlo_scene_products` WRITE;
/*!40000 ALTER TABLE `qlo_scene_products` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_scene_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_scene_shop`
--

DROP TABLE IF EXISTS `qlo_scene_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_scene_shop` (
  `id_scene` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  PRIMARY KEY (`id_scene`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_scene_shop`
--

LOCK TABLES `qlo_scene_shop` WRITE;
/*!40000 ALTER TABLE `qlo_scene_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_scene_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_search_engine`
--

DROP TABLE IF EXISTS `qlo_search_engine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_search_engine` (
  `id_search_engine` int unsigned NOT NULL AUTO_INCREMENT,
  `server` varchar(64) NOT NULL,
  `getvar` varchar(16) NOT NULL,
  PRIMARY KEY (`id_search_engine`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_search_engine`
--

LOCK TABLES `qlo_search_engine` WRITE;
/*!40000 ALTER TABLE `qlo_search_engine` DISABLE KEYS */;
INSERT INTO `qlo_search_engine` VALUES (1,'google','q'),(2,'aol','q'),(3,'yandex','text'),(4,'ask.com','q'),(5,'nhl.com','q'),(6,'yahoo','p'),(7,'baidu','wd'),(8,'lycos','query'),(9,'exalead','q'),(10,'search.live','q'),(11,'voila','rdata'),(12,'altavista','q'),(13,'bing','q'),(14,'daum','q'),(15,'eniro','search_word'),(16,'naver','query'),(17,'msn','q'),(18,'netscape','query'),(19,'cnn','query'),(20,'about','terms'),(21,'mamma','query'),(22,'alltheweb','q'),(23,'virgilio','qs'),(24,'alice','qs'),(25,'najdi','q'),(26,'mama','query'),(27,'seznam','q'),(28,'onet','qt'),(29,'szukacz','q'),(30,'yam','k'),(31,'pchome','q'),(32,'kvasir','q'),(33,'sesam','q'),(34,'ozu','q'),(35,'terra','query'),(36,'mynet','q'),(37,'ekolay','q'),(38,'rambler','words');
/*!40000 ALTER TABLE `qlo_search_engine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_search_index`
--

DROP TABLE IF EXISTS `qlo_search_index`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_search_index` (
  `id_product` int unsigned NOT NULL,
  `id_word` int unsigned NOT NULL,
  `weight` smallint unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_word`,`id_product`),
  KEY `id_product` (`id_product`,`weight`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_search_index`
--

LOCK TABLES `qlo_search_index` WRITE;
/*!40000 ALTER TABLE `qlo_search_index` DISABLE KEYS */;
INSERT INTO `qlo_search_index` VALUES (1,3,1),(1,11,1),(1,18,1),(1,19,1),(1,20,1),(1,22,1),(1,23,1),(1,24,1),(1,25,1),(1,26,1),(1,27,1),(1,28,1),(1,29,1),(1,32,1),(1,33,1),(1,34,1),(1,35,1),(1,36,1),(1,37,1),(1,38,1),(1,40,1),(1,41,1),(1,42,1),(1,43,1),(1,44,1),(1,45,1),(1,46,1),(1,47,1),(1,48,1),(1,49,1),(1,50,1),(1,51,1),(1,52,1),(1,53,1),(1,54,1),(1,55,1),(1,56,1),(1,57,1),(1,61,1),(1,71,1),(1,79,1),(1,80,1),(1,81,1),(1,82,1),(1,83,1),(1,84,1),(1,85,1),(1,86,1),(1,87,1),(1,88,1),(1,89,1),(1,90,1),(1,91,1),(1,92,1),(1,95,1),(1,97,1),(1,98,1),(1,99,1),(1,101,1),(1,102,1),(1,103,1),(1,104,1),(1,105,1),(1,106,1),(1,107,1),(1,109,1),(1,110,1),(1,111,1),(1,112,1),(1,113,1),(1,114,1),(1,115,1),(1,116,1),(1,117,1),(1,118,1),(1,119,1),(1,120,1),(1,121,1),(1,122,1),(1,123,1),(1,124,1),(1,125,1),(1,126,1),(1,127,1),(1,4,2),(1,5,2),(1,6,2),(1,7,2),(1,8,2),(1,9,2),(1,10,2),(1,12,2),(1,13,2),(1,14,2),(1,15,2),(1,16,2),(1,17,2),(1,30,2),(1,31,2),(1,39,2),(1,60,2),(1,62,2),(1,64,2),(1,65,2),(1,66,2),(1,67,2),(1,68,2),(1,69,2),(1,70,2),(1,72,2),(1,73,2),(1,74,2),(1,75,2),(1,76,2),(1,78,2),(1,93,2),(1,94,2),(1,96,2),(1,100,2),(1,108,2),(1,128,3),(1,21,4),(1,77,5),(1,1,8),(1,2,8),(1,58,8),(1,59,8),(1,63,8),(2,11,1),(2,12,1),(2,13,1),(2,15,1),(2,28,1),(2,44,1),(2,49,1),(2,71,1),(2,72,1),(2,73,1),(2,75,1),(2,91,1),(2,102,1),(2,114,1),(2,119,1),(2,130,1),(2,137,1),(2,143,1),(2,144,1),(2,145,1),(2,146,1),(2,147,1),(2,148,1),(2,149,1),(2,150,1),(2,151,1),(2,152,1),(2,153,1),(2,154,1),(2,155,1),(2,156,1),(2,157,1),(2,158,1),(2,159,1),(2,160,1),(2,161,1),(2,162,1),(2,163,1),(2,179,1),(2,187,1),(2,193,1),(2,194,1),(2,195,1),(2,196,1),(2,197,1),(2,198,1),(2,200,1),(2,201,1),(2,202,1),(2,203,1),(2,204,1),(2,205,1),(2,206,1),(2,207,1),(2,208,1),(2,209,1),(2,210,1),(2,211,1),(2,212,1),(2,213,1),(2,214,1),(2,215,1),(2,216,1),(2,10,2),(2,17,2),(2,22,2),(2,26,2),(2,60,2),(2,70,2),(2,77,2),(2,78,2),(2,84,2),(2,88,2),(2,131,2),(2,132,2),(2,133,2),(2,134,2),(2,135,2),(2,136,2),(2,138,2),(2,139,2),(2,140,2),(2,141,2),(2,142,2),(2,180,2),(2,181,2),(2,182,2),(2,183,2),(2,184,2),(2,185,2),(2,186,2),(2,188,2),(2,189,2),(2,190,2),(2,191,2),(2,192,2),(2,199,2),(2,5,3),(2,21,3),(2,64,3),(2,65,3),(2,100,3),(2,128,3),(2,63,6),(2,129,6),(2,178,6),(2,2,7),(2,59,7),(3,4,1),(3,5,1),(3,11,1),(3,15,1),(3,49,1),(3,55,1),(3,62,1),(3,64,1),(3,71,1),(3,75,1),(3,82,1),(3,90,1),(3,119,1),(3,125,1),(3,132,1),(3,137,1),(3,152,1),(3,182,1),(3,187,1),(3,199,1),(3,204,1),(3,238,1),(3,239,1),(3,251,1),(3,252,1),(3,253,1),(3,254,1),(3,255,1),(3,256,1),(3,257,1),(3,258,1),(3,259,1),(3,260,1),(3,261,1),(3,262,1),(3,263,1),(3,264,1),(3,265,1),(3,266,1),(3,267,1),(3,268,1),(3,269,1),(3,270,1),(3,287,1),(3,288,1),(3,300,1),(3,301,1),(3,302,1),(3,303,1),(3,304,1),(3,305,1),(3,306,1),(3,307,1),(3,308,1),(3,309,1),(3,310,1),(3,311,1),(3,312,1),(3,313,1),(3,314,1),(3,315,1),(3,316,1),(3,317,1),(3,318,1),(3,319,1),(3,320,1),(3,9,2),(3,26,2),(3,44,2),(3,50,2),(3,69,2),(3,88,2),(3,100,2),(3,114,2),(3,120,2),(3,240,2),(3,241,2),(3,242,2),(3,243,2),(3,244,2),(3,245,2),(3,246,2),(3,247,2),(3,248,2),(3,250,2),(3,289,2),(3,290,2),(3,291,2),(3,292,2),(3,293,2),(3,294,2),(3,295,2),(3,296,2),(3,297,2),(3,299,2),(3,21,3),(3,60,3),(3,128,3),(3,249,3),(3,298,3),(3,65,4),(3,77,4),(3,2,7),(3,59,7),(3,63,7),(3,237,9),(3,286,9),(4,5,1),(4,26,1),(4,29,1),(4,38,1),(4,55,1),(4,64,1),(4,65,1),(4,88,1),(4,90,1),(4,92,1),(4,100,1),(4,107,1),(4,125,1),(4,136,1),(4,151,1),(4,158,1),(4,160,1),(4,162,1),(4,186,1),(4,203,1),(4,210,1),(4,211,1),(4,213,1),(4,215,1),(4,238,1),(4,239,1),(4,243,1),(4,267,1),(4,269,1),(4,287,1),(4,288,1),(4,292,1),(4,316,1),(4,317,1),(4,319,1),(4,349,1),(4,350,1),(4,351,1),(4,352,1),(4,353,1),(4,354,1),(4,355,1),(4,356,1),(4,357,1),(4,358,1),(4,359,1),(4,360,1),(4,361,1),(4,362,1),(4,397,1),(4,398,1),(4,399,1),(4,400,1),(4,401,1),(4,402,1),(4,403,1),(4,404,1),(4,405,1),(4,406,1),(4,407,1),(4,408,1),(4,409,1),(4,410,1),(4,411,1),(4,17,2),(4,44,2),(4,60,2),(4,78,2),(4,114,2),(4,134,2),(4,135,2),(4,150,2),(4,161,2),(4,184,2),(4,185,2),(4,202,2),(4,214,2),(4,248,2),(4,249,2),(4,252,2),(4,297,2),(4,298,2),(4,301,2),(4,344,2),(4,345,2),(4,346,2),(4,347,2),(4,348,2),(4,392,2),(4,393,2),(4,394,2),(4,395,2),(4,396,2),(4,21,3),(4,77,3),(4,128,3),(4,131,3),(4,146,3),(4,180,3),(4,197,3),(4,63,6),(4,2,7),(4,59,7),(4,140,8),(4,190,8),(5,28,2),(5,48,2),(5,49,2),(5,60,2),(5,63,2),(5,65,2),(5,91,2),(5,118,2),(5,119,2),(5,356,2),(5,405,2),(5,451,2),(5,452,2),(5,453,2),(5,454,2),(5,455,2),(5,456,2),(5,457,2),(5,467,2),(5,468,2),(5,469,2),(5,470,2),(5,471,2),(5,472,2),(5,473,2),(5,458,3),(5,459,3),(5,474,3),(5,475,3),(5,199,4),(5,450,6),(5,466,6),(5,44,8),(5,114,8),(5,449,8),(5,465,8),(6,30,2),(6,48,2),(6,60,2),(6,65,2),(6,77,2),(6,93,2),(6,118,2),(6,143,2),(6,193,2),(6,199,2),(6,247,2),(6,296,2),(6,487,2),(6,488,2),(6,489,2),(6,490,2),(6,491,2),(6,492,2),(6,493,2),(6,494,2),(6,495,2),(6,496,2),(6,497,2),(6,506,2),(6,507,2),(6,508,2),(6,509,2),(6,510,2),(6,511,2),(6,512,2),(6,513,2),(6,514,2),(6,515,2),(6,516,2),(6,458,3),(6,474,3),(6,485,6),(6,504,6),(6,486,8),(6,505,8),(6,459,9),(6,475,9),(7,5,2),(7,27,2),(7,28,2),(7,60,2),(7,63,2),(7,64,2),(7,89,2),(7,91,2),(7,143,2),(7,181,2),(7,193,2),(7,199,2),(7,452,2),(7,468,2),(7,529,2),(7,530,2),(7,531,2),(7,532,2),(7,533,2),(7,542,2),(7,543,2),(7,544,2),(7,545,2),(7,546,2),(7,547,2),(7,534,3),(7,548,3),(7,65,4),(7,527,8),(7,528,8),(7,540,8),(7,541,8),(8,60,2),(8,63,2),(8,65,2),(8,97,2),(8,199,2),(8,452,2),(8,468,2),(8,546,2),(8,561,2),(8,562,2),(8,563,2),(8,564,2),(8,565,2),(8,566,2),(8,567,2),(8,568,2),(8,569,2),(8,570,2),(8,575,2),(8,576,2),(8,577,2),(8,578,2),(8,579,2),(8,580,2),(8,581,2),(8,582,2),(8,583,2),(8,584,2),(8,534,3),(8,548,3),(8,100,4),(8,559,8),(8,560,8),(8,573,8),(8,574,8),(9,20,2),(9,65,2),(9,81,2),(9,595,2),(9,596,2),(9,597,2),(9,598,2),(9,599,2),(9,600,2),(9,601,2),(9,602,2),(9,603,2),(9,604,2),(9,605,2),(9,609,2),(9,610,2),(9,611,2),(9,612,2),(9,613,2),(9,614,2),(9,615,2),(9,616,2),(9,617,2),(9,618,2),(9,619,2),(9,606,3),(9,620,3),(9,63,4),(9,199,6),(9,594,8),(9,608,8),(10,63,2),(10,100,2),(10,497,2),(10,516,2),(10,596,2),(10,610,2),(10,626,2),(10,627,2),(10,628,2),(10,629,2),(10,630,2),(10,631,2),(10,632,2),(10,633,2),(10,634,2),(10,635,2),(10,636,2),(10,641,2),(10,642,2),(10,643,2),(10,644,2),(10,645,2),(10,646,2),(10,647,2),(10,648,2),(10,649,2),(10,650,2),(10,651,2),(10,652,2),(10,653,2),(10,606,3),(10,620,3),(10,65,4),(10,199,4),(10,625,8),(10,640,8);
/*!40000 ALTER TABLE `qlo_search_index` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_search_word`
--

DROP TABLE IF EXISTS `qlo_search_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_search_word` (
  `id_word` int unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `id_lang` int unsigned NOT NULL,
  `word` varchar(15) NOT NULL,
  PRIMARY KEY (`id_word`),
  UNIQUE KEY `id_lang` (`id_lang`,`id_shop`,`word`)
) ENGINE=InnoDB AUTO_INCREMENT=661 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_search_word`
--

LOCK TABLES `qlo_search_word` WRITE;
/*!40000 ALTER TABLE `qlo_search_word` DISABLE KEYS */;
INSERT INTO `qlo_search_word` VALUES (247,1,1,'access'),(28,1,1,'accommodation'),(256,1,1,'adorned'),(603,1,1,'adventures'),(527,1,1,'airport'),(348,1,1,'alike'),(40,1,1,'allows'),(361,1,1,'ambiance'),(142,1,1,'amenities'),(359,1,1,'appointed'),(10,1,1,'area'),(242,1,1,'areas'),(569,1,1,'attractions'),(244,1,1,'bathroom'),(135,1,1,'bed'),(7,1,1,'bedrooms'),(34,1,1,'bonding'),(594,1,1,'breakfast'),(162,1,1,'breathtaking'),(495,1,1,'browsing'),(634,1,1,'buds'),(248,1,1,'business'),(559,1,1,'cab'),(357,1,1,'catching'),(459,1,1,'charges'),(530,1,1,'check'),(562,1,1,'city'),(5,1,1,'comfort'),(356,1,1,'comfortable'),(355,1,1,'complemented'),(260,1,1,'complete'),(635,1,1,'completes'),(15,1,1,'complimentary'),(47,1,1,'connected'),(27,1,1,'convenience'),(563,1,1,'conveniently'),(8,1,1,'cozy'),(351,1,1,'create'),(51,1,1,'creating'),(631,1,1,'culinary'),(596,1,1,'day'),(150,1,1,'decor'),(628,1,1,'delectable'),(598,1,1,'delicious'),(632,1,1,'delights'),(129,1,1,'delux'),(132,1,1,'deluxe'),(560,1,1,'demand'),(253,1,1,'designed'),(156,1,1,'detail'),(625,1,1,'dinner'),(254,1,1,'discerning'),(567,1,1,'discover'),(533,1,1,'ease'),(531,1,1,'efficient'),(41,1,1,'effortless'),(489,1,1,'effortlessly'),(136,1,1,'elegant'),(251,1,1,'elevate'),(11,1,1,'enjoy'),(494,1,1,'enjoyable'),(153,1,1,'enjoying'),(451,1,1,'ensure'),(157,1,1,'ensures'),(30,1,1,'ensuring'),(46,1,1,'entertained'),(144,1,1,'epitome'),(39,1,1,'equipped'),(627,1,1,'evening'),(155,1,1,'every'),(31,1,1,'everyone'),(605,1,1,'exceptional'),(245,1,1,'exclusive'),(237,1,1,'executive'),(252,1,1,'expansive'),(143,1,1,'experience'),(561,1,1,'explore'),(268,1,1,'extra'),(24,1,1,'families'),(18,1,1,'family'),(255,1,1,'features'),(239,1,1,'featuring'),(450,1,1,'fees'),(12,1,1,'flat'),(456,1,1,'free'),(565,1,1,'freedom'),(602,1,1,'fuel'),(148,1,1,'furnished'),(137,1,1,'furnishings'),(35,1,1,'games'),(145,1,1,'gaze'),(1,1,1,'general'),(19,1,1,'getaway'),(564,1,1,'giving'),(25,1,1,'groups'),(139,1,1,'guests'),(486,1,1,'handling'),(455,1,1,'hassle'),(599,1,1,'hearty'),(492,1,1,'high'),(21,1,1,'home'),(57,1,1,'hospitality'),(50,1,1,'ideal'),(238,1,1,'indulge'),(159,1,1,'indulgent'),(485,1,1,'internet'),(497,1,1,'journey'),(453,1,1,'keeping'),(133,1,1,'king'),(16,1,1,'kitchenette'),(130,1,1,'lake'),(52,1,1,'lasting'),(347,1,1,'leisure'),(154,1,1,'like'),(9,1,1,'living'),(568,1,1,'local'),(246,1,1,'lounge'),(243,1,1,'luxurious'),(140,1,1,'luxury'),(449,1,1,'maintenance'),(20,1,1,'make'),(42,1,1,'meal'),(53,1,1,'memories'),(141,1,1,'modern'),(604,1,1,'mornings'),(36,1,1,'movie'),(6,1,1,'multiple'),(487,1,1,'navigate'),(37,1,1,'nights'),(352,1,1,'oasis'),(3,1,1,'offer'),(630,1,1,'offering'),(29,1,1,'offers'),(496,1,1,'online'),(458,1,1,'operational'),(570,1,1,'pace'),(259,1,1,'pamper'),(354,1,1,'panoramic'),(160,1,1,'peaceful'),(17,1,1,'perfect'),(149,1,1,'plush'),(263,1,1,'premium'),(43,1,1,'preparation'),(601,1,1,'prepared'),(454,1,1,'pristine'),(250,1,1,'privacy'),(345,1,1,'queen'),(33,1,1,'recharge'),(163,1,1,'refined'),(265,1,1,'refreshments'),(32,1,1,'relax'),(158,1,1,'relaxing'),(491,1,1,'reliable'),(606,1,1,'restaurant'),(161,1,1,'retreat'),(597,1,1,'right'),(44,1,1,'room'),(2,1,1,'rooms'),(636,1,1,'satisfaction'),(13,1,1,'screen'),(490,1,1,'seamless'),(26,1,1,'seeking'),(240,1,1,'separate'),(146,1,1,'serene'),(452,1,1,'service'),(55,1,1,'setting'),(528,1,1,'shuttle'),(360,1,1,'simply'),(138,1,1,'sitting'),(134,1,1,'sized'),(241,1,1,'sleeping'),(261,1,1,'soaking'),(257,1,1,'sophisticated'),(270,1,1,'sophistication'),(4,1,1,'space'),(22,1,1,'spacious'),(493,1,1,'speed'),(629,1,1,'spread'),(595,1,1,'start'),(49,1,1,'stay'),(45,1,1,'stays'),(362,1,1,'style'),(267,1,1,'surroundings'),(23,1,1,'tailored'),(633,1,1,'taste'),(600,1,1,'thoughtfully'),(48,1,1,'throughout'),(54,1,1,'together'),(264,1,1,'toiletries'),(529,1,1,'touchdown'),(258,1,1,'touches'),(266,1,1,'tranquil'),(344,1,1,'tranquility'),(534,1,1,'transfers'),(566,1,1,'travel'),(249,1,1,'travelers'),(262,1,1,'tub'),(14,1,1,'tvs'),(349,1,1,'ultimate'),(269,1,1,'unparalleled'),(152,1,1,'unwinding'),(131,1,1,'views'),(457,1,1,'visit'),(350,1,1,'vistas'),(353,1,1,'wake'),(56,1,1,'warmth'),(147,1,1,'waters'),(488,1,1,'website'),(38,1,1,'well'),(151,1,1,'whether'),(532,1,1,'whisking'),(626,1,1,'wind'),(358,1,1,'work'),(346,1,1,'workspace'),(296,1,2,'access'),(91,1,2,'accommodation'),(305,1,2,'adorned'),(617,1,2,'adventures'),(540,1,2,'airport'),(396,1,2,'alike'),(109,1,2,'allows'),(410,1,2,'ambiance'),(192,1,2,'amenities'),(63,1,2,'and'),(408,1,2,'appointed'),(70,1,2,'area'),(291,1,2,'areas'),(583,1,2,'attractions'),(293,1,2,'bathroom'),(185,1,2,'bed'),(67,1,2,'bedrooms'),(101,1,2,'bonding'),(210,1,2,'both'),(608,1,2,'breakfast'),(215,1,2,'breathtaking'),(514,1,2,'browsing'),(651,1,2,'buds'),(297,1,2,'business'),(573,1,2,'cab'),(406,1,2,'catching'),(475,1,2,'charges'),(543,1,2,'check'),(576,1,2,'city'),(64,1,2,'comfort'),(405,1,2,'comfortable'),(404,1,2,'complemented'),(309,1,2,'complete'),(652,1,2,'completes'),(75,1,2,'complimentary'),(117,1,2,'connected'),(89,1,2,'convenience'),(577,1,2,'conveniently'),(68,1,2,'cozy'),(400,1,2,'create'),(121,1,2,'creating'),(647,1,2,'culinary'),(610,1,2,'day'),(202,1,2,'decor'),(644,1,2,'delectable'),(612,1,2,'delicious'),(649,1,2,'delights'),(178,1,2,'delux'),(182,1,2,'deluxe'),(574,1,2,'demand'),(302,1,2,'designed'),(208,1,2,'detail'),(640,1,2,'dinner'),(303,1,2,'discerning'),(581,1,2,'discover'),(642,1,2,'down'),(113,1,2,'each'),(547,1,2,'ease'),(544,1,2,'efficient'),(110,1,2,'effortless'),(508,1,2,'effortlessly'),(186,1,2,'elegant'),(300,1,2,'elevate'),(71,1,2,'enjoy'),(513,1,2,'enjoyable'),(205,1,2,'enjoying'),(467,1,2,'ensure'),(209,1,2,'ensures'),(93,1,2,'ensuring'),(116,1,2,'entertained'),(194,1,2,'epitome'),(108,1,2,'equipped'),(643,1,2,'evening'),(207,1,2,'every'),(94,1,2,'everyone'),(619,1,2,'exceptional'),(294,1,2,'exclusive'),(286,1,2,'executive'),(301,1,2,'expansive'),(193,1,2,'experience'),(575,1,2,'explore'),(318,1,2,'extra'),(86,1,2,'families'),(79,1,2,'family'),(304,1,2,'features'),(288,1,2,'featuring'),(466,1,2,'fees'),(72,1,2,'flat'),(77,1,2,'for'),(472,1,2,'free'),(579,1,2,'freedom'),(181,1,2,'from'),(616,1,2,'fuel'),(200,1,2,'furnished'),(187,1,2,'furnishings'),(103,1,2,'games'),(195,1,2,'gaze'),(58,1,2,'general'),(80,1,2,'getaway'),(578,1,2,'giving'),(128,1,2,'glowna'),(87,1,2,'groups'),(189,1,2,'guests'),(505,1,2,'handling'),(95,1,2,'has'),(471,1,2,'hassle'),(613,1,2,'hearty'),(511,1,2,'high'),(83,1,2,'home'),(127,1,2,'hospitality'),(120,1,2,'ideal'),(287,1,2,'indulge'),(212,1,2,'indulgent'),(504,1,2,'internet'),(516,1,2,'journey'),(469,1,2,'keeping'),(183,1,2,'king'),(76,1,2,'kitchenette'),(179,1,2,'lake'),(122,1,2,'lasting'),(395,1,2,'leisure'),(206,1,2,'like'),(69,1,2,'living'),(582,1,2,'local'),(295,1,2,'lounge'),(292,1,2,'luxurious'),(190,1,2,'luxury'),(465,1,2,'maintenance'),(81,1,2,'make'),(111,1,2,'meal'),(123,1,2,'memories'),(191,1,2,'modern'),(618,1,2,'mornings'),(104,1,2,'movie'),(66,1,2,'multiple'),(506,1,2,'navigate'),(105,1,2,'nights'),(401,1,2,'oasis'),(61,1,2,'offer'),(646,1,2,'offering'),(92,1,2,'offers'),(515,1,2,'online'),(474,1,2,'operational'),(60,1,2,'our'),(196,1,2,'out'),(102,1,2,'over'),(97,1,2,'own'),(584,1,2,'pace'),(308,1,2,'pamper'),(403,1,2,'panoramic'),(213,1,2,'peaceful'),(78,1,2,'perfect'),(201,1,2,'plush'),(312,1,2,'premium'),(112,1,2,'preparation'),(615,1,2,'prepared'),(470,1,2,'pristine'),(299,1,2,'privacy'),(393,1,2,'queen'),(99,1,2,'recharge'),(216,1,2,'refined'),(314,1,2,'refreshments'),(98,1,2,'relax'),(211,1,2,'relaxing'),(510,1,2,'reliable'),(620,1,2,'restaurant'),(214,1,2,'retreat'),(611,1,2,'right'),(114,1,2,'room'),(59,1,2,'rooms'),(653,1,2,'satisfaction'),(73,1,2,'screen'),(509,1,2,'seamless'),(88,1,2,'seeking'),(289,1,2,'separate'),(197,1,2,'serene'),(468,1,2,'service'),(125,1,2,'setting'),(541,1,2,'shuttle'),(409,1,2,'simply'),(188,1,2,'sitting'),(184,1,2,'sized'),(290,1,2,'sleeping'),(310,1,2,'soaking'),(306,1,2,'sophisticated'),(320,1,2,'sophistication'),(62,1,2,'space'),(84,1,2,'spacious'),(512,1,2,'speed'),(645,1,2,'spread'),(609,1,2,'start'),(119,1,2,'stay'),(115,1,2,'stays'),(411,1,2,'style'),(316,1,2,'surroundings'),(85,1,2,'tailored'),(650,1,2,'taste'),(648,1,2,'that'),(100,1,2,'the'),(96,1,2,'their'),(90,1,2,'this'),(317,1,2,'those'),(614,1,2,'thoughtfully'),(118,1,2,'throughout'),(124,1,2,'together'),(313,1,2,'toiletries'),(542,1,2,'touchdown'),(307,1,2,'touches'),(315,1,2,'tranquil'),(392,1,2,'tranquility'),(548,1,2,'transfers'),(580,1,2,'travel'),(298,1,2,'travelers'),(311,1,2,'tub'),(74,1,2,'tvs'),(397,1,2,'ultimate'),(319,1,2,'unparalleled'),(204,1,2,'unwinding'),(180,1,2,'views'),(473,1,2,'visit'),(399,1,2,'vistas'),(402,1,2,'wake'),(126,1,2,'warmth'),(198,1,2,'waters'),(507,1,2,'website'),(107,1,2,'well'),(398,1,2,'where'),(203,1,2,'whether'),(106,1,2,'while'),(545,1,2,'whisking'),(641,1,2,'wind'),(65,1,2,'with'),(407,1,2,'work'),(394,1,2,'workspace'),(546,1,2,'you'),(199,1,2,'your'),(82,1,2,'yourself');
/*!40000 ALTER TABLE `qlo_search_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_sekeyword`
--

DROP TABLE IF EXISTS `qlo_sekeyword`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_sekeyword` (
  `id_sekeyword` int unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `id_shop_group` int unsigned NOT NULL DEFAULT '1',
  `keyword` varchar(256) NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_sekeyword`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_sekeyword`
--

LOCK TABLES `qlo_sekeyword` WRITE;
/*!40000 ALTER TABLE `qlo_sekeyword` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_sekeyword` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_service_product_cart_detail`
--

DROP TABLE IF EXISTS `qlo_service_product_cart_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_service_product_cart_detail` (
  `id_service_product_cart_detail` int unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int unsigned NOT NULL,
  `quantity` int unsigned NOT NULL,
  `id_cart` int unsigned NOT NULL,
  `id_hotel` int unsigned NOT NULL,
  `htl_cart_booking_id` int unsigned NOT NULL,
  `id_product_option` int unsigned NOT NULL,
  PRIMARY KEY (`id_service_product_cart_detail`),
  KEY `id_product` (`id_product`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_service_product_cart_detail`
--

LOCK TABLES `qlo_service_product_cart_detail` WRITE;
/*!40000 ALTER TABLE `qlo_service_product_cart_detail` DISABLE KEYS */;
INSERT INTO `qlo_service_product_cart_detail` VALUES (1,5,1,1,0,1,0),(2,6,1,1,0,1,0),(3,5,1,2,0,2,0),(4,6,1,2,0,2,0),(5,5,1,3,0,3,0),(6,6,1,3,0,3,0);
/*!40000 ALTER TABLE `qlo_service_product_cart_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_service_product_order_detail`
--

DROP TABLE IF EXISTS `qlo_service_product_order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_service_product_order_detail` (
  `id_service_product_order_detail` int NOT NULL AUTO_INCREMENT,
  `id_product` int NOT NULL,
  `id_order` int NOT NULL,
  `id_order_detail` int NOT NULL,
  `id_cart` int NOT NULL,
  `id_hotel` int NOT NULL,
  `id_htl_booking_detail` int NOT NULL,
  `id_product_option` int NOT NULL,
  `tax_computation_method` tinyint unsigned NOT NULL DEFAULT '0',
  `id_tax_rules_group` int unsigned NOT NULL DEFAULT '0',
  `unit_price_tax_excl` decimal(20,6) NOT NULL,
  `unit_price_tax_incl` decimal(20,6) NOT NULL,
  `total_price_tax_excl` decimal(20,6) NOT NULL,
  `total_price_tax_incl` decimal(20,6) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `option_name` varchar(255) DEFAULT NULL,
  `hotel_name` varchar(255) DEFAULT NULL,
  `quantity` int unsigned NOT NULL,
  `auto_added` tinyint unsigned NOT NULL,
  `is_refunded` tinyint(1) NOT NULL DEFAULT '0',
  `is_cancelled` tinyint(1) NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_service_product_order_detail`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_service_product_order_detail`
--

LOCK TABLES `qlo_service_product_order_detail` WRITE;
/*!40000 ALTER TABLE `qlo_service_product_order_detail` DISABLE KEYS */;
INSERT INTO `qlo_service_product_order_detail` VALUES (1,5,1,2,1,0,1,0,0,1,250.000000,307.500000,500.000000,615.000000,'Room Maintenance Fees','','',1,1,0,0,'2026-02-18 16:37:03','2026-02-18 16:37:03'),(2,6,1,3,1,0,1,0,0,1,250.000000,307.500000,250.000000,307.500000,'Internet Handling Charges','','',1,1,0,0,'2026-02-18 16:37:03','2026-02-18 16:37:03'),(3,5,2,5,2,0,2,0,0,1,250.000000,307.500000,2250.000000,2767.500000,'Room Maintenance Fees','','',1,1,0,0,'2026-02-18 18:05:42','2026-02-18 18:05:42'),(4,6,2,6,2,0,2,0,0,1,250.000000,307.500000,250.000000,307.500000,'Internet Handling Charges','','',1,1,0,0,'2026-02-18 18:05:42','2026-02-18 18:05:42'),(5,5,3,8,3,0,3,0,0,1,250.000000,307.500000,500.000000,615.000000,'Room Maintenance Fees','','',1,1,0,0,'2026-02-18 18:18:18','2026-02-18 18:18:18'),(6,6,3,9,3,0,3,0,0,1,250.000000,307.500000,250.000000,307.500000,'Internet Handling Charges','','',1,1,0,0,'2026-02-18 18:18:18','2026-02-18 18:18:18');
/*!40000 ALTER TABLE `qlo_service_product_order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_shop`
--

DROP TABLE IF EXISTS `qlo_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_shop` (
  `id_shop` int unsigned NOT NULL AUTO_INCREMENT,
  `id_shop_group` int unsigned NOT NULL,
  `name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `id_category` int unsigned NOT NULL DEFAULT '1',
  `id_theme` int unsigned NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_shop`),
  KEY `id_shop_group` (`id_shop_group`,`deleted`),
  KEY `id_category` (`id_category`),
  KEY `id_theme` (`id_theme`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_shop`
--

LOCK TABLES `qlo_shop` WRITE;
/*!40000 ALTER TABLE `qlo_shop` DISABLE KEYS */;
INSERT INTO `qlo_shop` VALUES (1,1,'Demo SSD',2,1,1,0);
/*!40000 ALTER TABLE `qlo_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_shop_group`
--

DROP TABLE IF EXISTS `qlo_shop_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_shop_group` (
  `id_shop_group` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `share_customer` tinyint(1) NOT NULL,
  `share_order` tinyint(1) NOT NULL,
  `share_stock` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `deleted` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_shop_group`),
  KEY `deleted` (`deleted`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_shop_group`
--

LOCK TABLES `qlo_shop_group` WRITE;
/*!40000 ALTER TABLE `qlo_shop_group` DISABLE KEYS */;
INSERT INTO `qlo_shop_group` VALUES (1,'Default',0,0,0,1,0);
/*!40000 ALTER TABLE `qlo_shop_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_shop_url`
--

DROP TABLE IF EXISTS `qlo_shop_url`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_shop_url` (
  `id_shop_url` int unsigned NOT NULL AUTO_INCREMENT,
  `id_shop` int unsigned NOT NULL,
  `domain` varchar(150) NOT NULL,
  `domain_ssl` varchar(150) NOT NULL,
  `physical_uri` varchar(256) NOT NULL,
  `virtual_uri` varchar(256) NOT NULL,
  `main` tinyint(1) NOT NULL,
  `active` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_shop_url`),
  UNIQUE KEY `full_shop_url` (`domain`,`physical_uri`,`virtual_uri`),
  UNIQUE KEY `full_shop_url_ssl` (`domain_ssl`,`physical_uri`,`virtual_uri`),
  KEY `id_shop` (`id_shop`,`main`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_shop_url`
--

LOCK TABLES `qlo_shop_url` WRITE;
/*!40000 ALTER TABLE `qlo_shop_url` DISABLE KEYS */;
INSERT INTO `qlo_shop_url` VALUES (1,1,'localhost:8080','localhost:8080','/','',1,1);
/*!40000 ALTER TABLE `qlo_shop_url` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_smarty_cache`
--

DROP TABLE IF EXISTS `qlo_smarty_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_smarty_cache` (
  `id_smarty_cache` char(40) NOT NULL,
  `name` char(40) NOT NULL,
  `cache_id` varchar(254) DEFAULT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `content` longtext NOT NULL,
  PRIMARY KEY (`id_smarty_cache`),
  KEY `name` (`name`),
  KEY `cache_id` (`cache_id`),
  KEY `modified` (`modified`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_smarty_cache`
--

LOCK TABLES `qlo_smarty_cache` WRITE;
/*!40000 ALTER TABLE `qlo_smarty_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_smarty_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_smarty_last_flush`
--

DROP TABLE IF EXISTS `qlo_smarty_last_flush`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_smarty_last_flush` (
  `type` enum('compile','template') NOT NULL,
  `last_flush` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_smarty_last_flush`
--

LOCK TABLES `qlo_smarty_last_flush` WRITE;
/*!40000 ALTER TABLE `qlo_smarty_last_flush` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_smarty_last_flush` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_smarty_lazy_cache`
--

DROP TABLE IF EXISTS `qlo_smarty_lazy_cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_smarty_lazy_cache` (
  `template_hash` varchar(32) NOT NULL DEFAULT '',
  `cache_id` varchar(255) NOT NULL DEFAULT '',
  `compile_id` varchar(32) NOT NULL DEFAULT '',
  `filepath` varchar(255) NOT NULL DEFAULT '',
  `last_update` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`template_hash`,`cache_id`,`compile_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_smarty_lazy_cache`
--

LOCK TABLES `qlo_smarty_lazy_cache` WRITE;
/*!40000 ALTER TABLE `qlo_smarty_lazy_cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_smarty_lazy_cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_specific_price`
--

DROP TABLE IF EXISTS `qlo_specific_price`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_specific_price` (
  `id_specific_price` int unsigned NOT NULL AUTO_INCREMENT,
  `id_specific_price_rule` int unsigned NOT NULL,
  `id_cart` int unsigned NOT NULL,
  `id_product` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `id_shop_group` int unsigned NOT NULL,
  `id_currency` int unsigned NOT NULL,
  `id_country` int unsigned NOT NULL,
  `id_group` int unsigned NOT NULL,
  `id_customer` int unsigned NOT NULL,
  `id_htl_cart_booking` int unsigned NOT NULL,
  `id_product_attribute` int unsigned NOT NULL,
  `price` decimal(20,6) NOT NULL,
  `from_quantity` mediumint unsigned NOT NULL,
  `reduction` decimal(20,6) NOT NULL,
  `reduction_tax` tinyint(1) NOT NULL DEFAULT '1',
  `reduction_type` enum('amount','percentage') NOT NULL,
  `from` datetime NOT NULL,
  `to` datetime NOT NULL,
  PRIMARY KEY (`id_specific_price`),
  UNIQUE KEY `id_product_2` (`id_product`,`id_product_attribute`,`id_customer`,`id_cart`,`from`,`to`,`id_shop`,`id_shop_group`,`id_currency`,`id_country`,`id_group`,`from_quantity`,`id_specific_price_rule`,`id_htl_cart_booking`),
  KEY `id_product` (`id_product`,`id_shop`,`id_currency`,`id_country`,`id_group`,`id_customer`,`from_quantity`,`from`,`to`),
  KEY `from_quantity` (`from_quantity`),
  KEY `id_specific_price_rule` (`id_specific_price_rule`),
  KEY `id_cart` (`id_cart`),
  KEY `id_product_attribute` (`id_product_attribute`),
  KEY `id_shop` (`id_shop`),
  KEY `id_customer` (`id_customer`),
  KEY `from` (`from`),
  KEY `to` (`to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_specific_price`
--

LOCK TABLES `qlo_specific_price` WRITE;
/*!40000 ALTER TABLE `qlo_specific_price` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_specific_price` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_specific_price_priority`
--

DROP TABLE IF EXISTS `qlo_specific_price_priority`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_specific_price_priority` (
  `id_specific_price_priority` int NOT NULL AUTO_INCREMENT,
  `id_product` int NOT NULL,
  `priority` varchar(80) NOT NULL,
  PRIMARY KEY (`id_specific_price_priority`,`id_product`),
  UNIQUE KEY `id_product` (`id_product`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_specific_price_priority`
--

LOCK TABLES `qlo_specific_price_priority` WRITE;
/*!40000 ALTER TABLE `qlo_specific_price_priority` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_specific_price_priority` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_specific_price_rule`
--

DROP TABLE IF EXISTS `qlo_specific_price_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_specific_price_rule` (
  `id_specific_price_rule` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `id_shop` int unsigned NOT NULL DEFAULT '1',
  `id_currency` int unsigned NOT NULL,
  `id_country` int unsigned NOT NULL,
  `id_group` int unsigned NOT NULL,
  `from_quantity` mediumint unsigned NOT NULL,
  `price` decimal(20,6) DEFAULT NULL,
  `reduction` decimal(20,6) NOT NULL,
  `reduction_tax` tinyint(1) NOT NULL DEFAULT '1',
  `reduction_type` enum('amount','percentage') NOT NULL,
  `from` datetime NOT NULL,
  `to` datetime NOT NULL,
  PRIMARY KEY (`id_specific_price_rule`),
  KEY `id_product` (`id_shop`,`id_currency`,`id_country`,`id_group`,`from_quantity`,`from`,`to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_specific_price_rule`
--

LOCK TABLES `qlo_specific_price_rule` WRITE;
/*!40000 ALTER TABLE `qlo_specific_price_rule` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_specific_price_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_specific_price_rule_condition`
--

DROP TABLE IF EXISTS `qlo_specific_price_rule_condition`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_specific_price_rule_condition` (
  `id_specific_price_rule_condition` int unsigned NOT NULL AUTO_INCREMENT,
  `id_specific_price_rule_condition_group` int unsigned NOT NULL,
  `type` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL,
  PRIMARY KEY (`id_specific_price_rule_condition`),
  KEY `id_specific_price_rule_condition_group` (`id_specific_price_rule_condition_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_specific_price_rule_condition`
--

LOCK TABLES `qlo_specific_price_rule_condition` WRITE;
/*!40000 ALTER TABLE `qlo_specific_price_rule_condition` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_specific_price_rule_condition` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_specific_price_rule_condition_group`
--

DROP TABLE IF EXISTS `qlo_specific_price_rule_condition_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_specific_price_rule_condition_group` (
  `id_specific_price_rule_condition_group` int unsigned NOT NULL AUTO_INCREMENT,
  `id_specific_price_rule` int unsigned NOT NULL,
  PRIMARY KEY (`id_specific_price_rule_condition_group`,`id_specific_price_rule`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_specific_price_rule_condition_group`
--

LOCK TABLES `qlo_specific_price_rule_condition_group` WRITE;
/*!40000 ALTER TABLE `qlo_specific_price_rule_condition_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_specific_price_rule_condition_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_state`
--

DROP TABLE IF EXISTS `qlo_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_state` (
  `id_state` int unsigned NOT NULL AUTO_INCREMENT,
  `id_country` int unsigned NOT NULL,
  `id_zone` int unsigned NOT NULL,
  `name` varchar(64) NOT NULL,
  `iso_code` varchar(7) NOT NULL,
  `tax_behavior` smallint NOT NULL DEFAULT '0',
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_state`),
  KEY `id_country` (`id_country`),
  KEY `name` (`name`),
  KEY `id_zone` (`id_zone`)
) ENGINE=InnoDB AUTO_INCREMENT=313 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_state`
--

LOCK TABLES `qlo_state` WRITE;
/*!40000 ALTER TABLE `qlo_state` DISABLE KEYS */;
INSERT INTO `qlo_state` VALUES (1,21,2,'Alabama','AL',0,1),(2,21,2,'Alaska','AK',0,1),(3,21,2,'Arizona','AZ',0,1),(4,21,2,'Arkansas','AR',0,1),(5,21,2,'California','CA',0,1),(6,21,2,'Colorado','CO',0,1),(7,21,2,'Connecticut','CT',0,1),(8,21,2,'Delaware','DE',0,1),(9,21,2,'Florida','FL',0,1),(10,21,2,'Georgia','GA',0,1),(11,21,2,'Hawaii','HI',0,1),(12,21,2,'Idaho','ID',0,1),(13,21,2,'Illinois','IL',0,1),(14,21,2,'Indiana','IN',0,1),(15,21,2,'Iowa','IA',0,1),(16,21,2,'Kansas','KS',0,1),(17,21,2,'Kentucky','KY',0,1),(18,21,2,'Louisiana','LA',0,1),(19,21,2,'Maine','ME',0,1),(20,21,2,'Maryland','MD',0,1),(21,21,2,'Massachusetts','MA',0,1),(22,21,2,'Michigan','MI',0,1),(23,21,2,'Minnesota','MN',0,1),(24,21,2,'Mississippi','MS',0,1),(25,21,2,'Missouri','MO',0,1),(26,21,2,'Montana','MT',0,1),(27,21,2,'Nebraska','NE',0,1),(28,21,2,'Nevada','NV',0,1),(29,21,2,'New Hampshire','NH',0,1),(30,21,2,'New Jersey','NJ',0,1),(31,21,2,'New Mexico','NM',0,1),(32,21,2,'New York','NY',0,1),(33,21,2,'North Carolina','NC',0,1),(34,21,2,'North Dakota','ND',0,1),(35,21,2,'Ohio','OH',0,1),(36,21,2,'Oklahoma','OK',0,1),(37,21,2,'Oregon','OR',0,1),(38,21,2,'Pennsylvania','PA',0,1),(39,21,2,'Rhode Island','RI',0,1),(40,21,2,'South Carolina','SC',0,1),(41,21,2,'South Dakota','SD',0,1),(42,21,2,'Tennessee','TN',0,1),(43,21,2,'Texas','TX',0,1),(44,21,2,'Utah','UT',0,1),(45,21,2,'Vermont','VT',0,1),(46,21,2,'Virginia','VA',0,1),(47,21,2,'Washington','WA',0,1),(48,21,2,'West Virginia','WV',0,1),(49,21,2,'Wisconsin','WI',0,1),(50,21,2,'Wyoming','WY',0,1),(51,21,2,'Puerto Rico','PR',0,1),(52,21,2,'US Virgin Islands','VI',0,1),(53,21,2,'District of Columbia','DC',0,1),(54,145,2,'Aguascalientes','AGS',0,1),(55,145,2,'Baja California','BCN',0,1),(56,145,2,'Baja California Sur','BCS',0,1),(57,145,2,'Campeche','CAM',0,1),(58,145,2,'Chiapas','CHP',0,1),(59,145,2,'Chihuahua','CHH',0,1),(60,145,2,'Coahuila','COA',0,1),(61,145,2,'Colima','COL',0,1),(62,145,2,'Distrito Federal','DIF',0,1),(63,145,2,'Durango','DUR',0,1),(64,145,2,'Guanajuato','GUA',0,1),(65,145,2,'Guerrero','GRO',0,1),(66,145,2,'Hidalgo','HID',0,1),(67,145,2,'Jalisco','JAL',0,1),(68,145,2,'Estado de México','MEX',0,1),(69,145,2,'Michoacán','MIC',0,1),(70,145,2,'Morelos','MOR',0,1),(71,145,2,'Nayarit','NAY',0,1),(72,145,2,'Nuevo León','NLE',0,1),(73,145,2,'Oaxaca','OAX',0,1),(74,145,2,'Puebla','PUE',0,1),(75,145,2,'Querétaro','QUE',0,1),(76,145,2,'Quintana Roo','ROO',0,1),(77,145,2,'San Luis Potosí','SLP',0,1),(78,145,2,'Sinaloa','SIN',0,1),(79,145,2,'Sonora','SON',0,1),(80,145,2,'Tabasco','TAB',0,1),(81,145,2,'Tamaulipas','TAM',0,1),(82,145,2,'Tlaxcala','TLA',0,1),(83,145,2,'Veracruz','VER',0,1),(84,145,2,'Yucatán','YUC',0,1),(85,145,2,'Zacatecas','ZAC',0,1),(86,4,2,'Ontario','ON',0,1),(87,4,2,'Quebec','QC',0,1),(88,4,2,'British Columbia','BC',0,1),(89,4,2,'Alberta','AB',0,1),(90,4,2,'Manitoba','MB',0,1),(91,4,2,'Saskatchewan','SK',0,1),(92,4,2,'Nova Scotia','NS',0,1),(93,4,2,'New Brunswick','NB',0,1),(94,4,2,'Newfoundland and Labrador','NL',0,1),(95,4,2,'Prince Edward Island','PE',0,1),(96,4,2,'Northwest Territories','NT',0,1),(97,4,2,'Yukon','YT',0,1),(98,4,2,'Nunavut','NU',0,1),(99,44,6,'Buenos Aires','B',0,1),(100,44,6,'Catamarca','K',0,1),(101,44,6,'Chaco','H',0,1),(102,44,6,'Chubut','U',0,1),(103,44,6,'Ciudad de Buenos Aires','C',0,1),(104,44,6,'Córdoba','X',0,1),(105,44,6,'Corrientes','W',0,1),(106,44,6,'Entre Ríos','E',0,1),(107,44,6,'Formosa','P',0,1),(108,44,6,'Jujuy','Y',0,1),(109,44,6,'La Pampa','L',0,1),(110,44,6,'La Rioja','F',0,1),(111,44,6,'Mendoza','M',0,1),(112,44,6,'Misiones','N',0,1),(113,44,6,'Neuquén','Q',0,1),(114,44,6,'Río Negro','R',0,1),(115,44,6,'Salta','A',0,1),(116,44,6,'San Juan','J',0,1),(117,44,6,'San Luis','D',0,1),(118,44,6,'Santa Cruz','Z',0,1),(119,44,6,'Santa Fe','S',0,1),(120,44,6,'Santiago del Estero','G',0,1),(121,44,6,'Tierra del Fuego','V',0,1),(122,44,6,'Tucumán','T',0,1),(123,10,1,'Agrigento','AG',0,1),(124,10,1,'Alessandria','AL',0,1),(125,10,1,'Ancona','AN',0,1),(126,10,1,'Aosta','AO',0,1),(127,10,1,'Arezzo','AR',0,1),(128,10,1,'Ascoli Piceno','AP',0,1),(129,10,1,'Asti','AT',0,1),(130,10,1,'Avellino','AV',0,1),(131,10,1,'Bari','BA',0,1),(132,10,1,'Barletta-Andria-Trani','BT',0,1),(133,10,1,'Belluno','BL',0,1),(134,10,1,'Benevento','BN',0,1),(135,10,1,'Bergamo','BG',0,1),(136,10,1,'Biella','BI',0,1),(137,10,1,'Bologna','BO',0,1),(138,10,1,'Bolzano','BZ',0,1),(139,10,1,'Brescia','BS',0,1),(140,10,1,'Brindisi','BR',0,1),(141,10,1,'Cagliari','CA',0,1),(142,10,1,'Caltanissetta','CL',0,1),(143,10,1,'Campobasso','CB',0,1),(144,10,1,'Carbonia-Iglesias','CI',0,1),(145,10,1,'Caserta','CE',0,1),(146,10,1,'Catania','CT',0,1),(147,10,1,'Catanzaro','CZ',0,1),(148,10,1,'Chieti','CH',0,1),(149,10,1,'Como','CO',0,1),(150,10,1,'Cosenza','CS',0,1),(151,10,1,'Cremona','CR',0,1),(152,10,1,'Crotone','KR',0,1),(153,10,1,'Cuneo','CN',0,1),(154,10,1,'Enna','EN',0,1),(155,10,1,'Fermo','FM',0,1),(156,10,1,'Ferrara','FE',0,1),(157,10,1,'Firenze','FI',0,1),(158,10,1,'Foggia','FG',0,1),(159,10,1,'Forlì-Cesena','FC',0,1),(160,10,1,'Frosinone','FR',0,1),(161,10,1,'Genova','GE',0,1),(162,10,1,'Gorizia','GO',0,1),(163,10,1,'Grosseto','GR',0,1),(164,10,1,'Imperia','IM',0,1),(165,10,1,'Isernia','IS',0,1),(166,10,1,'L\'Aquila','AQ',0,1),(167,10,1,'La Spezia','SP',0,1),(168,10,1,'Latina','LT',0,1),(169,10,1,'Lecce','LE',0,1),(170,10,1,'Lecco','LC',0,1),(171,10,1,'Livorno','LI',0,1),(172,10,1,'Lodi','LO',0,1),(173,10,1,'Lucca','LU',0,1),(174,10,1,'Macerata','MC',0,1),(175,10,1,'Mantova','MN',0,1),(176,10,1,'Massa','MS',0,1),(177,10,1,'Matera','MT',0,1),(178,10,1,'Medio Campidano','VS',0,1),(179,10,1,'Messina','ME',0,1),(180,10,1,'Milano','MI',0,1),(181,10,1,'Modena','MO',0,1),(182,10,1,'Monza e della Brianza','MB',0,1),(183,10,1,'Napoli','NA',0,1),(184,10,1,'Novara','NO',0,1),(185,10,1,'Nuoro','NU',0,1),(186,10,1,'Ogliastra','OG',0,1),(187,10,1,'Olbia-Tempio','OT',0,1),(188,10,1,'Oristano','OR',0,1),(189,10,1,'Padova','PD',0,1),(190,10,1,'Palermo','PA',0,1),(191,10,1,'Parma','PR',0,1),(192,10,1,'Pavia','PV',0,1),(193,10,1,'Perugia','PG',0,1),(194,10,1,'Pesaro-Urbino','PU',0,1),(195,10,1,'Pescara','PE',0,1),(196,10,1,'Piacenza','PC',0,1),(197,10,1,'Pisa','PI',0,1),(198,10,1,'Pistoia','PT',0,1),(199,10,1,'Pordenone','PN',0,1),(200,10,1,'Potenza','PZ',0,1),(201,10,1,'Prato','PO',0,1),(202,10,1,'Ragusa','RG',0,1),(203,10,1,'Ravenna','RA',0,1),(204,10,1,'Reggio Calabria','RC',0,1),(205,10,1,'Reggio Emilia','RE',0,1),(206,10,1,'Rieti','RI',0,1),(207,10,1,'Rimini','RN',0,1),(208,10,1,'Roma','RM',0,1),(209,10,1,'Rovigo','RO',0,1),(210,10,1,'Salerno','SA',0,1),(211,10,1,'Sassari','SS',0,1),(212,10,1,'Savona','SV',0,1),(213,10,1,'Siena','SI',0,1),(214,10,1,'Siracusa','SR',0,1),(215,10,1,'Sondrio','SO',0,1),(216,10,1,'Taranto','TA',0,1),(217,10,1,'Teramo','TE',0,1),(218,10,1,'Terni','TR',0,1),(219,10,1,'Torino','TO',0,1),(220,10,1,'Trapani','TP',0,1),(221,10,1,'Trento','TN',0,1),(222,10,1,'Treviso','TV',0,1),(223,10,1,'Trieste','TS',0,1),(224,10,1,'Udine','UD',0,1),(225,10,1,'Varese','VA',0,1),(226,10,1,'Venezia','VE',0,1),(227,10,1,'Verbano-Cusio-Ossola','VB',0,1),(228,10,1,'Vercelli','VC',0,1),(229,10,1,'Verona','VR',0,1),(230,10,1,'Vibo Valentia','VV',0,1),(231,10,1,'Vicenza','VI',0,1),(232,10,1,'Viterbo','VT',0,1),(233,111,3,'Aceh','AC',0,1),(234,111,3,'Bali','BA',0,1),(235,111,3,'Bangka','BB',0,1),(236,111,3,'Banten','BT',0,1),(237,111,3,'Bengkulu','BE',0,1),(238,111,3,'Central Java','JT',0,1),(239,111,3,'Central Kalimantan','KT',0,1),(240,111,3,'Central Sulawesi','ST',0,1),(241,111,3,'Coat of arms of East Java','JI',0,1),(242,111,3,'East kalimantan','KI',0,1),(243,111,3,'East Nusa Tenggara','NT',0,1),(244,111,3,'Lambang propinsi','GO',0,1),(245,111,3,'Jakarta','JK',0,1),(246,111,3,'Jambi','JA',0,1),(247,111,3,'Lampung','LA',0,1),(248,111,3,'Maluku','MA',0,1),(249,111,3,'North Maluku','MU',0,1),(250,111,3,'North Sulawesi','SA',0,1),(251,111,3,'North Sumatra','SU',0,1),(252,111,3,'Papua','PA',0,1),(253,111,3,'Riau','RI',0,1),(254,111,3,'Lambang Riau','KR',0,1),(255,111,3,'Southeast Sulawesi','SG',0,1),(256,111,3,'South Kalimantan','KS',0,1),(257,111,3,'South Sulawesi','SN',0,1),(258,111,3,'South Sumatra','SS',0,1),(259,111,3,'West Java','JB',0,1),(260,111,3,'West Kalimantan','KB',0,1),(261,111,3,'West Nusa Tenggara','NB',0,1),(262,111,3,'Lambang Provinsi Papua Barat','PB',0,1),(263,111,3,'West Sulawesi','SR',0,1),(264,111,3,'West Sumatra','SB',0,1),(265,111,3,'Yogyakarta','YO',0,1),(266,11,3,'Aichi','23',0,1),(267,11,3,'Akita','05',0,1),(268,11,3,'Aomori','02',0,1),(269,11,3,'Chiba','12',0,1),(270,11,3,'Ehime','38',0,1),(271,11,3,'Fukui','18',0,1),(272,11,3,'Fukuoka','40',0,1),(273,11,3,'Fukushima','07',0,1),(274,11,3,'Gifu','21',0,1),(275,11,3,'Gunma','10',0,1),(276,11,3,'Hiroshima','34',0,1),(277,11,3,'Hokkaido','01',0,1),(278,11,3,'Hyogo','28',0,1),(279,11,3,'Ibaraki','08',0,1),(280,11,3,'Ishikawa','17',0,1),(281,11,3,'Iwate','03',0,1),(282,11,3,'Kagawa','37',0,1),(283,11,3,'Kagoshima','46',0,1),(284,11,3,'Kanagawa','14',0,1),(285,11,3,'Kochi','39',0,1),(286,11,3,'Kumamoto','43',0,1),(287,11,3,'Kyoto','26',0,1),(288,11,3,'Mie','24',0,1),(289,11,3,'Miyagi','04',0,1),(290,11,3,'Miyazaki','45',0,1),(291,11,3,'Nagano','20',0,1),(292,11,3,'Nagasaki','42',0,1),(293,11,3,'Nara','29',0,1),(294,11,3,'Niigata','15',0,1),(295,11,3,'Oita','44',0,1),(296,11,3,'Okayama','33',0,1),(297,11,3,'Okinawa','47',0,1),(298,11,3,'Osaka','27',0,1),(299,11,3,'Saga','41',0,1),(300,11,3,'Saitama','11',0,1),(301,11,3,'Shiga','25',0,1),(302,11,3,'Shimane','32',0,1),(303,11,3,'Shizuoka','22',0,1),(304,11,3,'Tochigi','09',0,1),(305,11,3,'Tokushima','36',0,1),(306,11,3,'Tokyo','13',0,1),(307,11,3,'Tottori','31',0,1),(308,11,3,'Toyama','16',0,1),(309,11,3,'Wakayama','30',0,1),(310,11,3,'Yamagata','06',0,1),(311,11,3,'Yamaguchi','35',0,1),(312,11,3,'Yamanashi','19',0,1);
/*!40000 ALTER TABLE `qlo_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_stock`
--

DROP TABLE IF EXISTS `qlo_stock`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_stock` (
  `id_stock` int unsigned NOT NULL AUTO_INCREMENT,
  `id_warehouse` int unsigned NOT NULL,
  `id_product` int unsigned NOT NULL,
  `id_product_attribute` int unsigned NOT NULL,
  `reference` varchar(32) NOT NULL,
  `ean13` varchar(13) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `physical_quantity` int unsigned NOT NULL,
  `usable_quantity` int unsigned NOT NULL,
  `price_te` decimal(20,6) DEFAULT '0.000000',
  PRIMARY KEY (`id_stock`),
  KEY `id_warehouse` (`id_warehouse`),
  KEY `id_product` (`id_product`),
  KEY `id_product_attribute` (`id_product_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_stock`
--

LOCK TABLES `qlo_stock` WRITE;
/*!40000 ALTER TABLE `qlo_stock` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_stock` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_stock_available`
--

DROP TABLE IF EXISTS `qlo_stock_available`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_stock_available` (
  `id_stock_available` int unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int unsigned NOT NULL,
  `id_product_attribute` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  `id_shop_group` int unsigned NOT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `depends_on_stock` tinyint unsigned NOT NULL DEFAULT '0',
  `out_of_stock` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_stock_available`),
  UNIQUE KEY `product_sqlstock` (`id_product`,`id_product_attribute`,`id_shop`,`id_shop_group`),
  KEY `id_shop` (`id_shop`),
  KEY `id_shop_group` (`id_shop_group`),
  KEY `id_product` (`id_product`),
  KEY `id_product_attribute` (`id_product_attribute`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_stock_available`
--

LOCK TABLES `qlo_stock_available` WRITE;
/*!40000 ALTER TABLE `qlo_stock_available` DISABLE KEYS */;
INSERT INTO `qlo_stock_available` VALUES (1,1,0,1,0,999999999,0,1),(2,2,0,1,0,999999999,0,1),(3,3,0,1,0,999999999,0,1),(4,4,0,1,0,999999999,0,1),(5,5,0,1,0,999999986,0,1),(6,6,0,1,0,999999996,0,1),(7,7,0,1,0,999999999,0,1),(8,8,0,1,0,999999999,0,1),(9,9,0,1,0,999999999,0,1),(10,10,0,1,0,999999999,0,1);
/*!40000 ALTER TABLE `qlo_stock_available` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_stock_mvt`
--

DROP TABLE IF EXISTS `qlo_stock_mvt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_stock_mvt` (
  `id_stock_mvt` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_stock` int unsigned NOT NULL,
  `id_order` int unsigned DEFAULT NULL,
  `id_supply_order` int unsigned DEFAULT NULL,
  `id_stock_mvt_reason` int unsigned NOT NULL,
  `id_employee` int unsigned NOT NULL,
  `employee_lastname` varchar(32) DEFAULT '',
  `employee_firstname` varchar(32) DEFAULT '',
  `physical_quantity` int unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  `sign` tinyint(1) NOT NULL DEFAULT '1',
  `price_te` decimal(20,6) DEFAULT '0.000000',
  `last_wa` decimal(20,6) DEFAULT '0.000000',
  `current_wa` decimal(20,6) DEFAULT '0.000000',
  `referer` bigint unsigned DEFAULT NULL,
  PRIMARY KEY (`id_stock_mvt`),
  KEY `id_stock` (`id_stock`),
  KEY `id_stock_mvt_reason` (`id_stock_mvt_reason`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_stock_mvt`
--

LOCK TABLES `qlo_stock_mvt` WRITE;
/*!40000 ALTER TABLE `qlo_stock_mvt` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_stock_mvt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_stock_mvt_reason`
--

DROP TABLE IF EXISTS `qlo_stock_mvt_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_stock_mvt_reason` (
  `id_stock_mvt_reason` int unsigned NOT NULL AUTO_INCREMENT,
  `sign` tinyint(1) NOT NULL DEFAULT '1',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `deleted` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_stock_mvt_reason`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_stock_mvt_reason`
--

LOCK TABLES `qlo_stock_mvt_reason` WRITE;
/*!40000 ALTER TABLE `qlo_stock_mvt_reason` DISABLE KEYS */;
INSERT INTO `qlo_stock_mvt_reason` VALUES (1,1,'2026-02-18 16:25:13','2026-02-18 16:25:13',0),(2,-1,'2026-02-18 16:25:13','2026-02-18 16:25:13',0),(3,-1,'2026-02-18 16:25:13','2026-02-18 16:25:13',0),(4,-1,'2026-02-18 16:25:13','2026-02-18 16:25:13',0),(5,1,'2026-02-18 16:25:13','2026-02-18 16:25:13',0),(6,-1,'2026-02-18 16:25:13','2026-02-18 16:25:13',0),(7,1,'2026-02-18 16:25:13','2026-02-18 16:25:13',0),(8,1,'2026-02-18 16:25:13','2026-02-18 16:25:13',0);
/*!40000 ALTER TABLE `qlo_stock_mvt_reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_stock_mvt_reason_lang`
--

DROP TABLE IF EXISTS `qlo_stock_mvt_reason_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_stock_mvt_reason_lang` (
  `id_stock_mvt_reason` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  PRIMARY KEY (`id_stock_mvt_reason`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_stock_mvt_reason_lang`
--

LOCK TABLES `qlo_stock_mvt_reason_lang` WRITE;
/*!40000 ALTER TABLE `qlo_stock_mvt_reason_lang` DISABLE KEYS */;
INSERT INTO `qlo_stock_mvt_reason_lang` VALUES (1,1,'Increase'),(1,2,'Wzrost'),(2,1,'Decrease'),(2,2,'Spadek'),(3,1,'Customer Order'),(3,2,'Zamówienie klienta'),(4,1,'Regulation following an inventory of stock'),(4,2,'Rozporządzenie dotyczące inwentaryzacji zapasów'),(5,1,'Regulation following an inventory of stock'),(5,2,'Rozporządzenie dotyczące inwentaryzacji zapasów'),(6,1,'Transfer to another warehouse'),(6,2,'Przeniesienie do innego magazynu'),(7,1,'Transfer from another warehouse'),(7,2,'Przeniesienie z innego magazynu'),(8,1,'Supply Order'),(8,2,'Zamówienie dostawcy');
/*!40000 ALTER TABLE `qlo_stock_mvt_reason_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_store`
--

DROP TABLE IF EXISTS `qlo_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_store` (
  `id_store` int unsigned NOT NULL AUTO_INCREMENT,
  `id_country` int unsigned NOT NULL,
  `id_state` int unsigned DEFAULT NULL,
  `name` varchar(128) NOT NULL,
  `address1` varchar(128) NOT NULL,
  `address2` varchar(128) DEFAULT NULL,
  `city` varchar(64) NOT NULL,
  `postcode` varchar(12) NOT NULL,
  `latitude` decimal(13,8) DEFAULT NULL,
  `longitude` decimal(13,8) DEFAULT NULL,
  `hours` varchar(254) DEFAULT NULL,
  `phone` varchar(16) DEFAULT NULL,
  `fax` varchar(16) DEFAULT NULL,
  `email` varchar(128) DEFAULT NULL,
  `note` text,
  `active` tinyint unsigned NOT NULL DEFAULT '0',
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_store`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_store`
--

LOCK TABLES `qlo_store` WRITE;
/*!40000 ALTER TABLE `qlo_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_store_shop`
--

DROP TABLE IF EXISTS `qlo_store_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_store_shop` (
  `id_store` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  PRIMARY KEY (`id_store`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_store_shop`
--

LOCK TABLES `qlo_store_shop` WRITE;
/*!40000 ALTER TABLE `qlo_store_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_store_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_supplier`
--

DROP TABLE IF EXISTS `qlo_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_supplier` (
  `id_supplier` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_supplier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_supplier`
--

LOCK TABLES `qlo_supplier` WRITE;
/*!40000 ALTER TABLE `qlo_supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_supplier_lang`
--

DROP TABLE IF EXISTS `qlo_supplier_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_supplier_lang` (
  `id_supplier` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `description` text,
  `meta_title` varchar(128) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_description` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_supplier`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_supplier_lang`
--

LOCK TABLES `qlo_supplier_lang` WRITE;
/*!40000 ALTER TABLE `qlo_supplier_lang` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_supplier_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_supplier_shop`
--

DROP TABLE IF EXISTS `qlo_supplier_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_supplier_shop` (
  `id_supplier` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  PRIMARY KEY (`id_supplier`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_supplier_shop`
--

LOCK TABLES `qlo_supplier_shop` WRITE;
/*!40000 ALTER TABLE `qlo_supplier_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_supplier_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_supply_order`
--

DROP TABLE IF EXISTS `qlo_supply_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_supply_order` (
  `id_supply_order` int unsigned NOT NULL AUTO_INCREMENT,
  `id_supplier` int unsigned NOT NULL,
  `supplier_name` varchar(64) NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `id_warehouse` int unsigned NOT NULL,
  `id_supply_order_state` int unsigned NOT NULL,
  `id_currency` int unsigned NOT NULL,
  `id_ref_currency` int unsigned NOT NULL,
  `reference` varchar(64) NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  `date_delivery_expected` datetime DEFAULT NULL,
  `total_te` decimal(20,6) DEFAULT '0.000000',
  `total_with_discount_te` decimal(20,6) DEFAULT '0.000000',
  `total_tax` decimal(20,6) DEFAULT '0.000000',
  `total_ti` decimal(20,6) DEFAULT '0.000000',
  `discount_rate` decimal(20,6) DEFAULT '0.000000',
  `discount_value_te` decimal(20,6) DEFAULT '0.000000',
  `is_template` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id_supply_order`),
  KEY `id_supplier` (`id_supplier`),
  KEY `id_warehouse` (`id_warehouse`),
  KEY `reference` (`reference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_supply_order`
--

LOCK TABLES `qlo_supply_order` WRITE;
/*!40000 ALTER TABLE `qlo_supply_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_supply_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_supply_order_detail`
--

DROP TABLE IF EXISTS `qlo_supply_order_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_supply_order_detail` (
  `id_supply_order_detail` int unsigned NOT NULL AUTO_INCREMENT,
  `id_supply_order` int unsigned NOT NULL,
  `id_currency` int unsigned NOT NULL,
  `id_product` int unsigned NOT NULL,
  `id_product_attribute` int unsigned NOT NULL,
  `reference` varchar(32) NOT NULL,
  `supplier_reference` varchar(32) NOT NULL,
  `name` varchar(128) NOT NULL,
  `ean13` varchar(13) DEFAULT NULL,
  `upc` varchar(12) DEFAULT NULL,
  `exchange_rate` decimal(20,6) DEFAULT '0.000000',
  `unit_price_te` decimal(20,6) DEFAULT '0.000000',
  `quantity_expected` int unsigned NOT NULL,
  `quantity_received` int unsigned NOT NULL,
  `price_te` decimal(20,6) DEFAULT '0.000000',
  `discount_rate` decimal(20,6) DEFAULT '0.000000',
  `discount_value_te` decimal(20,6) DEFAULT '0.000000',
  `price_with_discount_te` decimal(20,6) DEFAULT '0.000000',
  `tax_rate` decimal(20,6) DEFAULT '0.000000',
  `tax_value` decimal(20,6) DEFAULT '0.000000',
  `price_ti` decimal(20,6) DEFAULT '0.000000',
  `tax_value_with_order_discount` decimal(20,6) DEFAULT '0.000000',
  `price_with_order_discount_te` decimal(20,6) DEFAULT '0.000000',
  PRIMARY KEY (`id_supply_order_detail`),
  KEY `id_supply_order` (`id_supply_order`,`id_product`),
  KEY `id_product_attribute` (`id_product_attribute`),
  KEY `id_product_product_attribute` (`id_product`,`id_product_attribute`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_supply_order_detail`
--

LOCK TABLES `qlo_supply_order_detail` WRITE;
/*!40000 ALTER TABLE `qlo_supply_order_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_supply_order_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_supply_order_history`
--

DROP TABLE IF EXISTS `qlo_supply_order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_supply_order_history` (
  `id_supply_order_history` int unsigned NOT NULL AUTO_INCREMENT,
  `id_supply_order` int unsigned NOT NULL,
  `id_employee` int unsigned NOT NULL,
  `employee_lastname` varchar(32) DEFAULT '',
  `employee_firstname` varchar(32) DEFAULT '',
  `id_state` int unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_supply_order_history`),
  KEY `id_supply_order` (`id_supply_order`),
  KEY `id_employee` (`id_employee`),
  KEY `id_state` (`id_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_supply_order_history`
--

LOCK TABLES `qlo_supply_order_history` WRITE;
/*!40000 ALTER TABLE `qlo_supply_order_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_supply_order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_supply_order_receipt_history`
--

DROP TABLE IF EXISTS `qlo_supply_order_receipt_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_supply_order_receipt_history` (
  `id_supply_order_receipt_history` int unsigned NOT NULL AUTO_INCREMENT,
  `id_supply_order_detail` int unsigned NOT NULL,
  `id_employee` int unsigned NOT NULL,
  `employee_lastname` varchar(32) DEFAULT '',
  `employee_firstname` varchar(32) DEFAULT '',
  `id_supply_order_state` int unsigned NOT NULL,
  `quantity` int unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  PRIMARY KEY (`id_supply_order_receipt_history`),
  KEY `id_supply_order_detail` (`id_supply_order_detail`),
  KEY `id_supply_order_state` (`id_supply_order_state`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_supply_order_receipt_history`
--

LOCK TABLES `qlo_supply_order_receipt_history` WRITE;
/*!40000 ALTER TABLE `qlo_supply_order_receipt_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_supply_order_receipt_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_supply_order_state`
--

DROP TABLE IF EXISTS `qlo_supply_order_state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_supply_order_state` (
  `id_supply_order_state` int unsigned NOT NULL AUTO_INCREMENT,
  `delivery_note` tinyint(1) NOT NULL DEFAULT '0',
  `editable` tinyint(1) NOT NULL DEFAULT '0',
  `receipt_state` tinyint(1) NOT NULL DEFAULT '0',
  `pending_receipt` tinyint(1) NOT NULL DEFAULT '0',
  `enclosed` tinyint(1) NOT NULL DEFAULT '0',
  `color` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`id_supply_order_state`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_supply_order_state`
--

LOCK TABLES `qlo_supply_order_state` WRITE;
/*!40000 ALTER TABLE `qlo_supply_order_state` DISABLE KEYS */;
INSERT INTO `qlo_supply_order_state` VALUES (1,0,1,0,0,0,'#faab00'),(2,1,0,0,0,0,'#273cff'),(3,0,0,0,1,0,'#ff37f5'),(4,0,0,1,1,0,'#ff3e33'),(5,0,0,1,0,1,'#00d60c'),(6,0,0,0,0,1,'#666666');
/*!40000 ALTER TABLE `qlo_supply_order_state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_supply_order_state_lang`
--

DROP TABLE IF EXISTS `qlo_supply_order_state_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_supply_order_state_lang` (
  `id_supply_order_state` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id_supply_order_state`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_supply_order_state_lang`
--

LOCK TABLES `qlo_supply_order_state_lang` WRITE;
/*!40000 ALTER TABLE `qlo_supply_order_state_lang` DISABLE KEYS */;
INSERT INTO `qlo_supply_order_state_lang` VALUES (1,1,'1 - Creation in progress'),(1,2,'1 - Tworzenie w toku'),(2,1,'2 - Order validated'),(2,2,'2 - Zamówienie zostało zatwierdzone'),(3,1,'3 - Pending receipt'),(3,2,'3 - W oczekiwaniu '),(4,1,'4 - Order received in part'),(4,2,'4 - Zamówienie zostało otrzymane w częściach'),(5,1,'5 - Order received completely'),(5,2,'5 - Otrzymano zamówienie '),(6,1,'6 - Order canceled'),(6,2,'6 - Zamówienie zostało anulowane');
/*!40000 ALTER TABLE `qlo_supply_order_state_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_tab`
--

DROP TABLE IF EXISTS `qlo_tab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_tab` (
  `id_tab` int unsigned NOT NULL AUTO_INCREMENT,
  `id_parent` int NOT NULL,
  `class_name` varchar(64) NOT NULL,
  `module` varchar(64) DEFAULT NULL,
  `position` int unsigned NOT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `hide_host_mode` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_tab`),
  KEY `class_name` (`class_name`),
  KEY `id_parent` (`id_parent`)
) ENGINE=InnoDB AUTO_INCREMENT=107 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_tab`
--

LOCK TABLES `qlo_tab` WRITE;
/*!40000 ALTER TABLE `qlo_tab` DISABLE KEYS */;
INSERT INTO `qlo_tab` VALUES (1,0,'AdminDashboard',NULL,0,1,0),(2,-1,'AdminCms',NULL,0,1,0),(3,-1,'AdminCmsCategories',NULL,1,1,0),(4,-1,'AdminSearch',NULL,2,1,0),(5,-1,'AdminLogin',NULL,3,1,0),(6,-1,'AdminShop',NULL,4,1,0),(7,-1,'AdminShopUrl',NULL,5,1,0),(8,0,'AdminCatalog',NULL,1,1,0),(9,0,'AdminParentOrders',NULL,2,1,0),(10,0,'AdminParentCustomer',NULL,3,1,0),(11,0,'AdminPriceRule',NULL,4,1,0),(12,0,'AdminParentModules',NULL,7,1,0),(13,0,'AdminParentLocalization',NULL,8,1,0),(14,0,'AdminParentPreferences',NULL,9,1,0),(15,0,'AdminTools',NULL,10,1,0),(16,0,'AdminAdmin',NULL,11,1,0),(17,0,'AdminStock',NULL,12,1,0),(18,8,'AdminProducts',NULL,0,1,0),(19,8,'AdminNormalProducts',NULL,1,1,0),(20,8,'AdminCategories',NULL,2,1,0),(21,8,'AdminFeatures',NULL,3,1,0),(22,9,'AdminOrders',NULL,0,1,0),(23,9,'AdminInvoices',NULL,1,1,0),(24,9,'AdminSlip',NULL,2,1,0),(25,9,'AdminStatuses',NULL,3,1,0),(26,9,'AdminOrderMessage',NULL,4,1,0),(27,10,'AdminCustomers',NULL,0,1,0),(28,10,'AdminAddresses',NULL,1,1,0),(29,10,'AdminGroups',NULL,2,1,0),(30,10,'AdminCarts',NULL,3,1,0),(31,10,'AdminCustomerThreads',NULL,4,1,0),(32,10,'AdminContacts',NULL,5,1,0),(33,10,'AdminGenders',NULL,6,1,0),(34,10,'AdminOutstanding',NULL,7,0,0),(35,11,'AdminCartRules',NULL,0,1,0),(36,11,'AdminSpecificPriceRule',NULL,1,1,0),(37,13,'AdminLocalization',NULL,0,1,0),(38,13,'AdminLanguages',NULL,1,1,0),(39,13,'AdminZones',NULL,2,1,0),(40,13,'AdminCountries',NULL,3,1,0),(41,13,'AdminStates',NULL,4,1,0),(42,13,'AdminCurrencies',NULL,5,1,0),(43,13,'AdminTaxes',NULL,6,1,0),(44,13,'AdminTaxRulesGroup',NULL,7,1,0),(45,13,'AdminTranslations',NULL,8,1,0),(46,12,'AdminModules',NULL,0,1,0),(47,12,'AdminModulesCatalog',NULL,1,1,0),(48,12,'AdminModulesPositions',NULL,2,1,0),(49,12,'AdminPayment',NULL,3,1,0),(50,14,'AdminPreferences',NULL,0,1,0),(51,14,'AdminOrderPreferences',NULL,1,1,0),(52,14,'AdminPPreferences',NULL,2,1,0),(53,14,'AdminCustomerPreferences',NULL,3,1,0),(54,14,'AdminThemes',NULL,4,1,0),(55,14,'AdminMeta',NULL,5,1,0),(56,14,'AdminCmsContent',NULL,6,1,0),(57,14,'AdminImages',NULL,7,1,0),(58,14,'AdminMaintenance',NULL,8,1,0),(59,14,'AdminGeolocation',NULL,9,1,0),(60,15,'AdminInformation',NULL,0,1,0),(61,15,'AdminPerformance',NULL,1,1,0),(62,15,'AdminEmails',NULL,2,1,0),(63,15,'AdminShopGroup',NULL,3,0,0),(64,15,'AdminImport',NULL,4,1,0),(65,15,'AdminBackup',NULL,5,1,0),(66,15,'AdminRequestSql',NULL,6,1,0),(67,15,'AdminLogs',NULL,7,1,0),(68,15,'AdminWebservice',NULL,8,1,0),(69,16,'AdminAdminPreferences',NULL,0,1,0),(70,16,'AdminQuickAccesses',NULL,1,1,0),(71,16,'AdminEmployees',NULL,2,1,0),(72,16,'AdminProfiles',NULL,3,1,0),(73,16,'AdminAccess',NULL,4,1,0),(74,16,'AdminTabs',NULL,5,1,0),(75,0,'AdminStats',NULL,13,1,0),(76,17,'AdminWarehouses',NULL,0,1,0),(77,17,'AdminStockManagement',NULL,1,1,0),(78,17,'AdminStockMvt',NULL,2,1,0),(79,17,'AdminStockInstantState',NULL,3,1,0),(80,17,'AdminStockCover',NULL,4,1,0),(81,17,'AdminStockConfiguration',NULL,5,1,0),(82,0,'AdminHotelReservationSystemManagement','hotelreservationsystem',5,1,0),(83,82,'AdminAddHotel','hotelreservationsystem',1,1,0),(84,82,'AdminHotelRoomsBooking','hotelreservationsystem',2,1,0),(85,82,'AdminHotelFeatures','hotelreservationsystem',3,1,0),(86,82,'AdminOrderRefundRules','hotelreservationsystem',4,1,0),(87,82,'AdminOrderRefundRequests','hotelreservationsystem',5,1,0),(88,82,'AdminHotelConfigurationSetting','hotelreservationsystem',6,1,0),(89,8,'AdminHotelBedTypes','hotelreservationsystem',4,1,0),(90,88,'AdminHotelGeneralSettings','hotelreservationsystem',1,1,0),(91,88,'AdminHotelFeaturePricesSettings','hotelreservationsystem',2,1,0),(92,88,'AdminRoomTypeGlobalDemand','hotelreservationsystem',3,1,0),(93,-1,'AdminBookingDocument','hotelreservationsystem',6,1,0),(94,-1,'AdminParentNewsletter','blocknewsletter',7,1,0),(95,94,'AdminNewsletter','blocknewsletter',1,1,0),(96,-1,'AdminAboutHotelBlockSetting','wkabouthotelblock',8,1,0),(97,-1,'AdminFeaturesModuleSetting','wkhotelfeaturesblock',9,1,0),(98,-1,'AdminHotelRoomModuleSetting','wkhotelroom',10,1,0),(99,-1,'AdminTestimonialsModuleSetting','wktestimonialblock',11,1,0),(100,-1,'AdminParentHotelReview','qlohotelreview',12,1,0),(101,100,'AdminHotelReviewCategory','qlohotelreview',1,1,0),(102,100,'AdminHotelReviewHotelReview','qlohotelreview',2,1,0),(103,-1,'AdminFooterPaymentBlockSetting','wkfooterpaymentblock',13,1,0),(104,-1,'AdminCustomNavigationLinkSetting','blocknavigationmenu',14,1,0),(105,-1,'AdminDashgoals','dashgoals',15,1,0),(106,0,'AdminQloappsChannelManagerConnector','qlochannelmanagerconnector',6,1,0);
/*!40000 ALTER TABLE `qlo_tab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_tab_lang`
--

DROP TABLE IF EXISTS `qlo_tab_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_tab_lang` (
  `id_tab` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_tab`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_tab_lang`
--

LOCK TABLES `qlo_tab_lang` WRITE;
/*!40000 ALTER TABLE `qlo_tab_lang` DISABLE KEYS */;
INSERT INTO `qlo_tab_lang` VALUES (1,1,'Dashboard'),(1,2,'Dashboard'),(2,1,'CMS Pages'),(2,2,'Strony CMS\'a'),(3,1,'CMS Categories'),(3,2,'Kategorie CMS\'a'),(4,1,'Search'),(4,2,'Wyszukaj'),(5,1,'Login'),(5,2,'Nazwa użytkowika'),(6,1,'Shops'),(6,2,'Sklepy'),(7,1,'Shop URLs'),(7,2,'Adres URL sklepu'),(8,1,'Catalog'),(8,2,'Katalog'),(9,1,'Orders'),(9,2,'Zamówienia'),(10,1,'Customers'),(10,2,'Klienci'),(11,1,'Manage Discounts'),(11,2,'Reguły ustalania cen'),(12,1,'Modules and Services'),(12,2,'Moduły'),(13,1,'Localization'),(13,2,'Lokalizacja'),(14,1,'Preferences'),(14,2,'Preferencje'),(15,1,'Advanced Parameters'),(15,2,'Parametry zaawansowane'),(16,1,'Administration'),(16,2,'Administracja'),(17,1,'Stock'),(17,2,'Na magazynie'),(18,1,'Manage Room Types'),(18,2,'Zarządzaj typami pokoi'),(19,1,'Manage Service Products'),(19,2,'Zarządzaj produktami usługowymi'),(20,1,'Categories'),(20,2,'Kategorie'),(21,1,'Features'),(21,2,'Cechy'),(22,1,'Orders'),(22,2,'Zamówienia'),(23,1,'Invoices'),(23,2,'Faktury'),(24,1,'Credit Slips'),(24,2,'Credit Slips'),(25,1,'Statuses'),(25,2,'Statusy'),(26,1,'Order Messages'),(26,2,'Treść powiadomienia zamówień'),(27,1,'Customers'),(27,2,'Klienci'),(28,1,'Addresses'),(28,2,'Adresy'),(29,1,'Groups'),(29,2,'Grupy'),(30,1,'Booking Carts'),(30,2,'Koszyk zakupów'),(31,1,'Customer Service'),(31,2,'Biuro Obsługi Klienta'),(32,1,'Contacts'),(32,2,'Kontakty'),(33,1,'Titles'),(33,2,'Tytuły osobowe'),(34,1,'Outstanding'),(34,2,'Zaległy'),(35,1,'Cart Rules'),(35,2,'Ustawienia koszyka'),(36,1,'Catalog Price Rules'),(36,2,'Reguły cenowe katalogu'),(37,1,'Localization'),(37,2,'Lokalizacja'),(38,1,'Languages'),(38,2,'Języki'),(39,1,'Zones'),(39,2,'Strefy'),(40,1,'Countries'),(40,2,'Kraje'),(41,1,'States'),(41,2,'Województwa lub regiony'),(42,1,'Currencies'),(42,2,'Waluty'),(43,1,'Taxes'),(43,2,'Podatki'),(44,1,'Tax Rules'),(44,2,'Zasady ustalania podatków'),(45,1,'Translations'),(45,2,'Tłumaczenia'),(46,1,'Manage Modules'),(46,2,'Moduły i usługi'),(47,1,'Modules Catalog'),(47,2,'Modules Catalog'),(48,1,'Positions'),(48,2,'Pozycje'),(49,1,'Payment'),(49,2,'Płatność'),(50,1,'General'),(50,2,'Ustawienia główne'),(51,1,'Orders'),(51,2,'Zamówienia'),(52,1,'Room Types'),(52,2,'Produkty'),(53,1,'Customers'),(53,2,'Klienci'),(54,1,'Themes'),(54,2,'Tematy'),(55,1,'SEO & URLs'),(55,2,'Dane URL i SEO'),(56,1,'CMS'),(56,2,'CMS'),(57,1,'Images'),(57,2,'Obrazki'),(58,1,'Maintenance'),(58,2,'Obsługa'),(59,1,'Geolocation'),(59,2,'Lokalizacja geograficzna'),(60,1,'Configuration Information'),(60,2,'Informacje konfiguracyjne'),(61,1,'Performance'),(61,2,'Wydajność'),(62,1,'E-mail'),(62,2,'E-mail'),(63,1,'Multistore'),(63,2,'Zestawienie sklepów ?'),(64,1,'CSV Import'),(64,2,'Import z pliku CSV'),(65,1,'DB Backup'),(65,2,'Backup bady danych'),(66,1,'SQL Manager'),(66,2,'Menadźer SQL'),(67,1,'Logs'),(67,2,'Logi'),(68,1,'Webservice'),(68,2,'Usługi internetowe'),(69,1,'Preferences'),(69,2,'Preferencje'),(70,1,'Quick Access'),(70,2,'Szybki dostęp'),(71,1,'Employees'),(71,2,'Pracownicy'),(72,1,'Profiles'),(72,2,'Profile'),(73,1,'Permissions'),(73,2,'Uprawnienia'),(74,1,'Menus'),(74,2,'Zakładki'),(75,1,'Stats'),(75,2,'Staystyki'),(76,1,'Warehouses'),(76,2,'Hurtownie'),(77,1,'Stock Management'),(77,2,'Zarządzanie magazynem'),(78,1,'Stock Movement'),(78,2,'Wymiana zaopatrzenia'),(79,1,'Instant Stock Status'),(79,2,'Natychmiastowe stany magazynowe'),(80,1,'Stock Coverage'),(80,2,'Pokrycie stanu'),(81,1,'Configuration'),(81,2,'Konfiguracja'),(82,1,'Hotel Reservation System'),(82,2,'Hotel Reservation System'),(83,1,'Manage Hotel'),(83,2,'Manage Hotel'),(84,1,'Book Now'),(84,2,'Book Now'),(85,1,'Manage Hotel Features'),(85,2,'Manage Hotel Features'),(86,1,'Manage Order Refund Rules'),(86,2,'Manage Order Refund Rules'),(87,1,'Manage Order Refund Requests'),(87,2,'Manage Order Refund Requests'),(88,1,'General Settings'),(88,2,'General Settings'),(89,1,'Bed Types'),(89,2,'Bed Types'),(90,1,'Hotel General Configuration'),(90,2,'Hotel General Configuration'),(91,1,'Advanced Price Rules'),(91,2,'Advanced Price Rules'),(92,1,'Additional Demand Configuration'),(92,2,'Additional Demand Configuration'),(93,1,'Booking Documents'),(93,2,'Booking Documents'),(94,1,'Newsletter'),(94,2,'Newsletter'),(95,1,'Configuration'),(95,2,'Configuration'),(96,1,'Hotel Description Configuration'),(96,2,'Hotel Description Configuration'),(97,1,'Hotel Amenities Configurations'),(97,2,'Hotel Amenities Configurations'),(98,1,'Manage Hotel Rooms Display'),(98,2,'Manage Hotel Rooms Display'),(99,1,'Testimonial configuration'),(99,2,'Testimonial configuration'),(100,1,'Hotel Reviews'),(100,2,'Hotel Reviews'),(101,1,'Configuration'),(101,2,'Configuration'),(102,1,'Reviews'),(102,2,'Reviews'),(103,1,'Manage Footer Payment Block'),(103,2,'Manage Footer Payment Block'),(104,1,'Manage Custom Navigation Links'),(104,2,'Manage Custom Navigation Links'),(105,1,'Dashgoals'),(105,2,'Dashgoals'),(106,1,'Channel Manager'),(106,2,'Channel Manager');
/*!40000 ALTER TABLE `qlo_tab_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_tab_module_preference`
--

DROP TABLE IF EXISTS `qlo_tab_module_preference`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_tab_module_preference` (
  `id_tab_module_preference` int NOT NULL AUTO_INCREMENT,
  `id_employee` int NOT NULL,
  `id_tab` int NOT NULL,
  `module` varchar(255) NOT NULL,
  PRIMARY KEY (`id_tab_module_preference`),
  UNIQUE KEY `employee_module` (`id_employee`,`id_tab`,`module`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_tab_module_preference`
--

LOCK TABLES `qlo_tab_module_preference` WRITE;
/*!40000 ALTER TABLE `qlo_tab_module_preference` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_tab_module_preference` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_tag`
--

DROP TABLE IF EXISTS `qlo_tag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_tag` (
  `id_tag` int unsigned NOT NULL AUTO_INCREMENT,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_tag`),
  KEY `tag_name` (`name`),
  KEY `id_lang` (`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_tag`
--

LOCK TABLES `qlo_tag` WRITE;
/*!40000 ALTER TABLE `qlo_tag` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_tag` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_tag_count`
--

DROP TABLE IF EXISTS `qlo_tag_count`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_tag_count` (
  `id_group` int unsigned NOT NULL DEFAULT '0',
  `id_tag` int unsigned NOT NULL DEFAULT '0',
  `id_lang` int unsigned NOT NULL DEFAULT '0',
  `id_shop` int unsigned NOT NULL DEFAULT '0',
  `counter` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_group`,`id_tag`),
  KEY `id_group` (`id_group`,`id_lang`,`id_shop`,`counter`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_tag_count`
--

LOCK TABLES `qlo_tag_count` WRITE;
/*!40000 ALTER TABLE `qlo_tag_count` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_tag_count` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_tax`
--

DROP TABLE IF EXISTS `qlo_tax`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_tax` (
  `id_tax` int unsigned NOT NULL AUTO_INCREMENT,
  `rate` decimal(10,3) NOT NULL,
  `active` tinyint unsigned NOT NULL DEFAULT '1',
  `deleted` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_tax`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_tax`
--

LOCK TABLES `qlo_tax` WRITE;
/*!40000 ALTER TABLE `qlo_tax` DISABLE KEYS */;
INSERT INTO `qlo_tax` VALUES (1,23.000,1,0),(2,8.000,1,0),(3,5.000,1,0),(4,0.000,1,0),(5,20.000,1,0),(6,21.000,1,0),(7,20.000,1,0),(8,19.000,1,0),(9,21.000,1,0),(10,19.000,1,0),(11,25.000,1,0),(12,20.000,1,0),(13,21.000,1,0),(14,24.000,1,0),(15,20.000,1,0),(16,20.000,1,0),(17,23.000,1,0),(18,25.000,1,0),(19,27.000,1,0),(20,23.000,1,0),(21,22.000,1,0),(22,21.000,1,0),(23,17.000,1,0),(24,21.000,1,0),(25,18.000,1,0),(26,21.000,1,0),(27,23.000,1,0),(28,20.000,1,0),(29,25.000,1,0),(30,22.000,1,0),(31,20.000,1,0);
/*!40000 ALTER TABLE `qlo_tax` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_tax_lang`
--

DROP TABLE IF EXISTS `qlo_tax_lang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_tax_lang` (
  `id_tax` int unsigned NOT NULL,
  `id_lang` int unsigned NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_tax`,`id_lang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_tax_lang`
--

LOCK TABLES `qlo_tax_lang` WRITE;
/*!40000 ALTER TABLE `qlo_tax_lang` DISABLE KEYS */;
INSERT INTO `qlo_tax_lang` VALUES (1,1,'PTU PL 23%'),(1,2,'PTU PL 23%'),(2,1,'PTU PL 8%'),(2,2,'PTU PL 8%'),(3,1,'PTU PL 5%'),(3,2,'PTU PL 5%'),(4,1,'PTU PL 0'),(4,2,'PTU PL 0'),(5,1,'USt. AT 20%'),(5,2,'USt. AT 20%'),(6,1,'TVA BE 21%'),(6,2,'TVA BE 21%'),(7,1,'ДДС BG 20%'),(7,2,'ДДС BG 20%'),(8,1,'ΦΠΑ CY 19%'),(8,2,'ΦΠΑ CY 19%'),(9,1,'DPH CZ 21%'),(9,2,'DPH CZ 21%'),(10,1,'MwSt. DE 19%'),(10,2,'MwSt. DE 19%'),(11,1,'moms DK 25%'),(11,2,'moms DK 25%'),(12,1,'km EE 20%'),(12,2,'km EE 20%'),(13,1,'IVA ES 21%'),(13,2,'IVA ES 21%'),(14,1,'ALV FI 24%'),(14,2,'ALV FI 24%'),(15,1,'TVA FR 20%'),(15,2,'TVA FR 20%'),(16,1,'VAT UK 20%'),(16,2,'VAT UK 20%'),(17,1,'ΦΠΑ GR 23%'),(17,2,'ΦΠΑ GR 23%'),(18,1,'Croatia PDV 25%'),(18,2,'Croatia PDV 25%'),(19,1,'ÁFA HU 27%'),(19,2,'ÁFA HU 27%'),(20,1,'VAT IE 23%'),(20,2,'VAT IE 23%'),(21,1,'IVA IT 22%'),(21,2,'IVA IT 22%'),(22,1,'PVM LT 21%'),(22,2,'PVM LT 21%'),(23,1,'TVA LU 17%'),(23,2,'TVA LU 17%'),(24,1,'PVN LV 21%'),(24,2,'PVN LV 21%'),(25,1,'VAT MT 18%'),(25,2,'VAT MT 18%'),(26,1,'BTW NL 21%'),(26,2,'BTW NL 21%'),(27,1,'IVA PT 23%'),(27,2,'IVA PT 23%'),(28,1,'TVA RO 20%'),(28,2,'TVA RO 20%'),(29,1,'Moms SE 25%'),(29,2,'Moms SE 25%'),(30,1,'DDV SI 22%'),(30,2,'DDV SI 22%'),(31,1,'DPH SK 20%'),(31,2,'DPH SK 20%');
/*!40000 ALTER TABLE `qlo_tax_lang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_tax_rule`
--

DROP TABLE IF EXISTS `qlo_tax_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_tax_rule` (
  `id_tax_rule` int NOT NULL AUTO_INCREMENT,
  `id_tax_rules_group` int NOT NULL,
  `id_country` int NOT NULL,
  `id_state` int NOT NULL,
  `zipcode_from` varchar(12) NOT NULL,
  `zipcode_to` varchar(12) NOT NULL,
  `id_tax` int NOT NULL,
  `behavior` int NOT NULL,
  `description` varchar(100) NOT NULL,
  PRIMARY KEY (`id_tax_rule`),
  KEY `id_tax_rules_group` (`id_tax_rules_group`),
  KEY `id_tax` (`id_tax`),
  KEY `category_getproducts` (`id_tax_rules_group`,`id_country`,`id_state`,`zipcode_from`)
) ENGINE=InnoDB AUTO_INCREMENT=131 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_tax_rule`
--

LOCK TABLES `qlo_tax_rule` WRITE;
/*!40000 ALTER TABLE `qlo_tax_rule` DISABLE KEYS */;
INSERT INTO `qlo_tax_rule` VALUES (1,1,3,0,'0','0',1,0,''),(2,1,236,0,'0','0',1,0,''),(3,1,16,0,'0','0',1,0,''),(4,1,20,0,'0','0',1,0,''),(5,1,1,0,'0','0',1,0,''),(6,1,86,0,'0','0',1,0,''),(7,1,9,0,'0','0',1,0,''),(8,1,6,0,'0','0',1,0,''),(9,1,8,0,'0','0',1,0,''),(10,1,26,0,'0','0',1,0,''),(11,1,10,0,'0','0',1,0,''),(12,1,76,0,'0','0',1,0,''),(13,1,125,0,'0','0',1,0,''),(14,1,131,0,'0','0',1,0,''),(15,1,12,0,'0','0',1,0,''),(16,1,143,0,'0','0',1,0,''),(17,1,139,0,'0','0',1,0,''),(18,1,13,0,'0','0',1,0,''),(19,1,2,0,'0','0',1,0,''),(20,1,14,0,'0','0',1,0,''),(21,1,15,0,'0','0',1,0,''),(22,1,36,0,'0','0',1,0,''),(23,1,193,0,'0','0',1,0,''),(24,1,37,0,'0','0',1,0,''),(25,1,7,0,'0','0',1,0,''),(26,1,18,0,'0','0',1,0,''),(27,2,3,0,'0','0',2,0,''),(28,2,236,0,'0','0',2,0,''),(29,2,16,0,'0','0',2,0,''),(30,2,20,0,'0','0',2,0,''),(31,2,1,0,'0','0',2,0,''),(32,2,86,0,'0','0',2,0,''),(33,2,9,0,'0','0',2,0,''),(34,2,6,0,'0','0',2,0,''),(35,2,8,0,'0','0',2,0,''),(36,2,26,0,'0','0',2,0,''),(37,2,10,0,'0','0',2,0,''),(38,2,76,0,'0','0',2,0,''),(39,2,125,0,'0','0',2,0,''),(40,2,131,0,'0','0',2,0,''),(41,2,12,0,'0','0',2,0,''),(42,2,143,0,'0','0',2,0,''),(43,2,139,0,'0','0',2,0,''),(44,2,13,0,'0','0',2,0,''),(45,2,2,0,'0','0',2,0,''),(46,2,14,0,'0','0',2,0,''),(47,2,15,0,'0','0',2,0,''),(48,2,36,0,'0','0',2,0,''),(49,2,193,0,'0','0',2,0,''),(50,2,37,0,'0','0',2,0,''),(51,2,7,0,'0','0',2,0,''),(52,2,18,0,'0','0',2,0,''),(53,3,3,0,'0','0',3,0,''),(54,3,236,0,'0','0',3,0,''),(55,3,16,0,'0','0',3,0,''),(56,3,20,0,'0','0',3,0,''),(57,3,1,0,'0','0',3,0,''),(58,3,86,0,'0','0',3,0,''),(59,3,9,0,'0','0',3,0,''),(60,3,6,0,'0','0',3,0,''),(61,3,8,0,'0','0',3,0,''),(62,3,10,0,'0','0',3,0,''),(63,3,76,0,'0','0',3,0,''),(64,3,125,0,'0','0',3,0,''),(65,3,131,0,'0','0',3,0,''),(66,3,12,0,'0','0',3,0,''),(67,3,143,0,'0','0',3,0,''),(68,3,139,0,'0','0',3,0,''),(69,3,13,0,'0','0',3,0,''),(70,3,2,0,'0','0',3,0,''),(71,3,14,0,'0','0',3,0,''),(72,3,15,0,'0','0',3,0,''),(73,3,36,0,'0','0',3,0,''),(74,3,193,0,'0','0',3,0,''),(75,3,37,0,'0','0',3,0,''),(76,3,7,0,'0','0',3,0,''),(77,3,18,0,'0','0',3,0,''),(78,4,3,0,'0','0',4,0,''),(79,4,236,0,'0','0',4,0,''),(80,4,16,0,'0','0',4,0,''),(81,4,20,0,'0','0',4,0,''),(82,4,1,0,'0','0',4,0,''),(83,4,86,0,'0','0',4,0,''),(84,4,9,0,'0','0',4,0,''),(85,4,6,0,'0','0',4,0,''),(86,4,8,0,'0','0',4,0,''),(87,4,10,0,'0','0',4,0,''),(88,4,76,0,'0','0',4,0,''),(89,4,125,0,'0','0',4,0,''),(90,4,131,0,'0','0',4,0,''),(91,4,12,0,'0','0',4,0,''),(92,4,143,0,'0','0',4,0,''),(93,4,139,0,'0','0',4,0,''),(94,4,13,0,'0','0',4,0,''),(95,4,2,0,'0','0',4,0,''),(96,4,14,0,'0','0',4,0,''),(97,4,15,0,'0','0',4,0,''),(98,4,36,0,'0','0',4,0,''),(99,4,193,0,'0','0',4,0,''),(100,4,37,0,'0','0',4,0,''),(101,4,7,0,'0','0',4,0,''),(102,4,18,0,'0','0',4,0,''),(103,5,14,0,'0','0',1,0,''),(104,5,2,0,'0','0',5,0,''),(105,5,3,0,'0','0',6,0,''),(106,5,236,0,'0','0',7,0,''),(107,5,76,0,'0','0',8,0,''),(108,5,16,0,'0','0',9,0,''),(109,5,1,0,'0','0',10,0,''),(110,5,20,0,'0','0',11,0,''),(111,5,86,0,'0','0',12,0,''),(112,5,6,0,'0','0',13,0,''),(113,5,7,0,'0','0',14,0,''),(114,5,8,0,'0','0',15,0,''),(115,5,17,0,'0','0',16,0,''),(116,5,9,0,'0','0',17,0,''),(117,5,74,0,'0','0',18,0,''),(118,5,143,0,'0','0',19,0,''),(119,5,26,0,'0','0',20,0,''),(120,5,10,0,'0','0',21,0,''),(121,5,131,0,'0','0',22,0,''),(122,5,12,0,'0','0',23,0,''),(123,5,125,0,'0','0',24,0,''),(124,5,139,0,'0','0',25,0,''),(125,5,13,0,'0','0',26,0,''),(126,5,15,0,'0','0',27,0,''),(127,5,36,0,'0','0',28,0,''),(128,5,18,0,'0','0',29,0,''),(129,5,193,0,'0','0',30,0,''),(130,5,37,0,'0','0',31,0,'');
/*!40000 ALTER TABLE `qlo_tax_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_tax_rules_group`
--

DROP TABLE IF EXISTS `qlo_tax_rules_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_tax_rules_group` (
  `id_tax_rules_group` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `active` int NOT NULL,
  `deleted` tinyint unsigned NOT NULL,
  `date_add` datetime NOT NULL,
  `date_upd` datetime NOT NULL,
  PRIMARY KEY (`id_tax_rules_group`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_tax_rules_group`
--

LOCK TABLES `qlo_tax_rules_group` WRITE;
/*!40000 ALTER TABLE `qlo_tax_rules_group` DISABLE KEYS */;
INSERT INTO `qlo_tax_rules_group` VALUES (1,'PL Standard Rate (23%)',1,0,'2026-02-18 16:25:16','2026-02-18 16:25:16'),(2,'PL Reduced Rate (8%)',1,0,'2026-02-18 16:25:16','2026-02-18 16:25:16'),(3,'PL Reduced Rate (5%)',1,0,'2026-02-18 16:25:16','2026-02-18 16:25:16'),(4,'PL Exempted Rate (0%)',1,0,'2026-02-18 16:25:16','2026-02-18 16:25:16'),(5,'EU VAT For Virtual Products',1,0,'2026-02-18 16:25:16','2026-02-18 16:25:16');
/*!40000 ALTER TABLE `qlo_tax_rules_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_tax_rules_group_shop`
--

DROP TABLE IF EXISTS `qlo_tax_rules_group_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_tax_rules_group_shop` (
  `id_tax_rules_group` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  PRIMARY KEY (`id_tax_rules_group`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_tax_rules_group_shop`
--

LOCK TABLES `qlo_tax_rules_group_shop` WRITE;
/*!40000 ALTER TABLE `qlo_tax_rules_group_shop` DISABLE KEYS */;
INSERT INTO `qlo_tax_rules_group_shop` VALUES (1,1),(2,1),(3,1),(4,1),(5,1);
/*!40000 ALTER TABLE `qlo_tax_rules_group_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_theme`
--

DROP TABLE IF EXISTS `qlo_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_theme` (
  `id_theme` int NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `directory` varchar(64) NOT NULL,
  `responsive` tinyint(1) NOT NULL DEFAULT '0',
  `default_left_column` tinyint(1) NOT NULL DEFAULT '0',
  `default_right_column` tinyint(1) NOT NULL DEFAULT '0',
  `product_per_page` int unsigned NOT NULL,
  PRIMARY KEY (`id_theme`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_theme`
--

LOCK TABLES `qlo_theme` WRITE;
/*!40000 ALTER TABLE `qlo_theme` DISABLE KEYS */;
INSERT INTO `qlo_theme` VALUES (1,'hotel-reservation-theme','hotel-reservation-theme',1,1,0,12);
/*!40000 ALTER TABLE `qlo_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_theme_meta`
--

DROP TABLE IF EXISTS `qlo_theme_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_theme_meta` (
  `id_theme_meta` int NOT NULL AUTO_INCREMENT,
  `id_theme` int NOT NULL,
  `id_meta` int unsigned NOT NULL,
  `left_column` tinyint(1) NOT NULL DEFAULT '1',
  `right_column` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id_theme_meta`),
  UNIQUE KEY `id_theme_2` (`id_theme`,`id_meta`),
  KEY `id_theme` (`id_theme`),
  KEY `id_meta` (`id_meta`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_theme_meta`
--

LOCK TABLES `qlo_theme_meta` WRITE;
/*!40000 ALTER TABLE `qlo_theme_meta` DISABLE KEYS */;
INSERT INTO `qlo_theme_meta` VALUES (1,1,1,0,0),(2,1,2,1,0),(3,1,3,0,0),(4,1,4,0,0),(5,1,5,1,0),(6,1,6,1,0),(7,1,7,0,0),(8,1,8,1,0),(9,1,9,1,0),(10,1,10,0,0),(11,1,11,0,0),(12,1,12,0,0),(13,1,13,0,0),(14,1,14,0,0),(15,1,15,0,0),(16,1,16,0,0),(17,1,17,0,0),(18,1,18,0,0),(19,1,19,0,0),(20,1,20,0,0),(21,1,21,0,0),(22,1,22,0,0),(23,1,23,1,0),(24,1,24,0,0),(25,1,25,0,0),(26,1,26,0,0),(27,1,27,0,0),(28,1,28,0,0),(29,1,29,1,0),(30,1,30,0,0),(31,1,31,0,0),(32,1,32,0,0),(33,1,33,0,0),(34,1,34,0,0),(35,1,35,0,0),(36,1,37,0,0),(37,1,38,1,0);
/*!40000 ALTER TABLE `qlo_theme_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_theme_specific`
--

DROP TABLE IF EXISTS `qlo_theme_specific`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_theme_specific` (
  `id_theme` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  `entity` int unsigned NOT NULL,
  `id_object` int unsigned NOT NULL,
  PRIMARY KEY (`id_theme`,`id_shop`,`entity`,`id_object`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_theme_specific`
--

LOCK TABLES `qlo_theme_specific` WRITE;
/*!40000 ALTER TABLE `qlo_theme_specific` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_theme_specific` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_timezone`
--

DROP TABLE IF EXISTS `qlo_timezone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_timezone` (
  `id_timezone` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`id_timezone`)
) ENGINE=InnoDB AUTO_INCREMENT=561 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_timezone`
--

LOCK TABLES `qlo_timezone` WRITE;
/*!40000 ALTER TABLE `qlo_timezone` DISABLE KEYS */;
INSERT INTO `qlo_timezone` VALUES (1,'Africa/Abidjan'),(2,'Africa/Accra'),(3,'Africa/Addis_Ababa'),(4,'Africa/Algiers'),(5,'Africa/Asmara'),(6,'Africa/Asmera'),(7,'Africa/Bamako'),(8,'Africa/Bangui'),(9,'Africa/Banjul'),(10,'Africa/Bissau'),(11,'Africa/Blantyre'),(12,'Africa/Brazzaville'),(13,'Africa/Bujumbura'),(14,'Africa/Cairo'),(15,'Africa/Casablanca'),(16,'Africa/Ceuta'),(17,'Africa/Conakry'),(18,'Africa/Dakar'),(19,'Africa/Dar_es_Salaam'),(20,'Africa/Djibouti'),(21,'Africa/Douala'),(22,'Africa/El_Aaiun'),(23,'Africa/Freetown'),(24,'Africa/Gaborone'),(25,'Africa/Harare'),(26,'Africa/Johannesburg'),(27,'Africa/Kampala'),(28,'Africa/Khartoum'),(29,'Africa/Kigali'),(30,'Africa/Kinshasa'),(31,'Africa/Lagos'),(32,'Africa/Libreville'),(33,'Africa/Lome'),(34,'Africa/Luanda'),(35,'Africa/Lubumbashi'),(36,'Africa/Lusaka'),(37,'Africa/Malabo'),(38,'Africa/Maputo'),(39,'Africa/Maseru'),(40,'Africa/Mbabane'),(41,'Africa/Mogadishu'),(42,'Africa/Monrovia'),(43,'Africa/Nairobi'),(44,'Africa/Ndjamena'),(45,'Africa/Niamey'),(46,'Africa/Nouakchott'),(47,'Africa/Ouagadougou'),(48,'Africa/Porto-Novo'),(49,'Africa/Sao_Tome'),(50,'Africa/Timbuktu'),(51,'Africa/Tripoli'),(52,'Africa/Tunis'),(53,'Africa/Windhoek'),(54,'America/Adak'),(55,'America/Anchorage '),(56,'America/Anguilla'),(57,'America/Antigua'),(58,'America/Araguaina'),(59,'America/Argentina/Buenos_Aires'),(60,'America/Argentina/Catamarca'),(61,'America/Argentina/ComodRivadavia'),(62,'America/Argentina/Cordoba'),(63,'America/Argentina/Jujuy'),(64,'America/Argentina/La_Rioja'),(65,'America/Argentina/Mendoza'),(66,'America/Argentina/Rio_Gallegos'),(67,'America/Argentina/Salta'),(68,'America/Argentina/San_Juan'),(69,'America/Argentina/San_Luis'),(70,'America/Argentina/Tucuman'),(71,'America/Argentina/Ushuaia'),(72,'America/Aruba'),(73,'America/Asuncion'),(74,'America/Atikokan'),(75,'America/Atka'),(76,'America/Bahia'),(77,'America/Barbados'),(78,'America/Belem'),(79,'America/Belize'),(80,'America/Blanc-Sablon'),(81,'America/Boa_Vista'),(82,'America/Bogota'),(83,'America/Boise'),(84,'America/Buenos_Aires'),(85,'America/Cambridge_Bay'),(86,'America/Campo_Grande'),(87,'America/Cancun'),(88,'America/Caracas'),(89,'America/Catamarca'),(90,'America/Cayenne'),(91,'America/Cayman'),(92,'America/Chicago'),(93,'America/Chihuahua'),(94,'America/Coral_Harbour'),(95,'America/Cordoba'),(96,'America/Costa_Rica'),(97,'America/Cuiaba'),(98,'America/Curacao'),(99,'America/Danmarkshavn'),(100,'America/Dawson'),(101,'America/Dawson_Creek'),(102,'America/Denver'),(103,'America/Detroit'),(104,'America/Dominica'),(105,'America/Edmonton'),(106,'America/Eirunepe'),(107,'America/El_Salvador'),(108,'America/Ensenada'),(109,'America/Fort_Wayne'),(110,'America/Fortaleza'),(111,'America/Glace_Bay'),(112,'America/Godthab'),(113,'America/Goose_Bay'),(114,'America/Grand_Turk'),(115,'America/Grenada'),(116,'America/Guadeloupe'),(117,'America/Guatemala'),(118,'America/Guayaquil'),(119,'America/Guyana'),(120,'America/Halifax'),(121,'America/Havana'),(122,'America/Hermosillo'),(123,'America/Indiana/Indianapolis'),(124,'America/Indiana/Knox'),(125,'America/Indiana/Marengo'),(126,'America/Indiana/Petersburg'),(127,'America/Indiana/Tell_City'),(128,'America/Indiana/Vevay'),(129,'America/Indiana/Vincennes'),(130,'America/Indiana/Winamac'),(131,'America/Indianapolis'),(132,'America/Inuvik'),(133,'America/Iqaluit'),(134,'America/Jamaica'),(135,'America/Jujuy'),(136,'America/Juneau'),(137,'America/Kentucky/Louisville'),(138,'America/Kentucky/Monticello'),(139,'America/Knox_IN'),(140,'America/La_Paz'),(141,'America/Lima'),(142,'America/Los_Angeles'),(143,'America/Louisville'),(144,'America/Maceio'),(145,'America/Managua'),(146,'America/Manaus'),(147,'America/Marigot'),(148,'America/Martinique'),(149,'America/Mazatlan'),(150,'America/Mendoza'),(151,'America/Menominee'),(152,'America/Merida'),(153,'America/Mexico_City'),(154,'America/Miquelon'),(155,'America/Moncton'),(156,'America/Monterrey'),(157,'America/Montevideo'),(158,'America/Montreal'),(159,'America/Montserrat'),(160,'America/Nassau'),(161,'America/New_York'),(162,'America/Nipigon'),(163,'America/Nome'),(164,'America/Noronha'),(165,'America/North_Dakota/Center'),(166,'America/North_Dakota/New_Salem'),(167,'America/Panama'),(168,'America/Pangnirtung'),(169,'America/Paramaribo'),(170,'America/Phoenix'),(171,'America/Port-au-Prince'),(172,'America/Port_of_Spain'),(173,'America/Porto_Acre'),(174,'America/Porto_Velho'),(175,'America/Puerto_Rico'),(176,'America/Rainy_River'),(177,'America/Rankin_Inlet'),(178,'America/Recife'),(179,'America/Regina'),(180,'America/Resolute'),(181,'America/Rio_Branco'),(182,'America/Rosario'),(183,'America/Santarem'),(184,'America/Santiago'),(185,'America/Santo_Domingo'),(186,'America/Sao_Paulo'),(187,'America/Scoresbysund'),(188,'America/Shiprock'),(189,'America/St_Barthelemy'),(190,'America/St_Johns'),(191,'America/St_Kitts'),(192,'America/St_Lucia'),(193,'America/St_Thomas'),(194,'America/St_Vincent'),(195,'America/Swift_Current'),(196,'America/Tegucigalpa'),(197,'America/Thule'),(198,'America/Thunder_Bay'),(199,'America/Tijuana'),(200,'America/Toronto'),(201,'America/Tortola'),(202,'America/Vancouver'),(203,'America/Virgin'),(204,'America/Whitehorse'),(205,'America/Winnipeg'),(206,'America/Yakutat'),(207,'America/Yellowknife'),(208,'Antarctica/Casey'),(209,'Antarctica/Davis'),(210,'Antarctica/DumontDUrville'),(211,'Antarctica/Mawson'),(212,'Antarctica/McMurdo'),(213,'Antarctica/Palmer'),(214,'Antarctica/Rothera'),(215,'Antarctica/South_Pole'),(216,'Antarctica/Syowa'),(217,'Antarctica/Vostok'),(218,'Arctic/Longyearbyen'),(219,'Asia/Aden'),(220,'Asia/Almaty'),(221,'Asia/Amman'),(222,'Asia/Anadyr'),(223,'Asia/Aqtau'),(224,'Asia/Aqtobe'),(225,'Asia/Ashgabat'),(226,'Asia/Ashkhabad'),(227,'Asia/Baghdad'),(228,'Asia/Bahrain'),(229,'Asia/Baku'),(230,'Asia/Bangkok'),(231,'Asia/Beirut'),(232,'Asia/Bishkek'),(233,'Asia/Brunei'),(234,'Asia/Calcutta'),(235,'Asia/Choibalsan'),(236,'Asia/Chongqing'),(237,'Asia/Chungking'),(238,'Asia/Colombo'),(239,'Asia/Dacca'),(240,'Asia/Damascus'),(241,'Asia/Dhaka'),(242,'Asia/Dili'),(243,'Asia/Dubai'),(244,'Asia/Dushanbe'),(245,'Asia/Gaza'),(246,'Asia/Harbin'),(247,'Asia/Ho_Chi_Minh'),(248,'Asia/Hong_Kong'),(249,'Asia/Hovd'),(250,'Asia/Irkutsk'),(251,'Asia/Istanbul'),(252,'Asia/Jakarta'),(253,'Asia/Jayapura'),(254,'Asia/Jerusalem'),(255,'Asia/Kabul'),(256,'Asia/Kamchatka'),(257,'Asia/Karachi'),(258,'Asia/Kashgar'),(259,'Asia/Kathmandu'),(260,'Asia/Katmandu'),(261,'Asia/Kolkata'),(262,'Asia/Krasnoyarsk'),(263,'Asia/Kuala_Lumpur'),(264,'Asia/Kuching'),(265,'Asia/Kuwait'),(266,'Asia/Macao'),(267,'Asia/Macau'),(268,'Asia/Magadan'),(269,'Asia/Makassar'),(270,'Asia/Manila'),(271,'Asia/Muscat'),(272,'Asia/Nicosia'),(273,'Asia/Novosibirsk'),(274,'Asia/Omsk'),(275,'Asia/Oral'),(276,'Asia/Phnom_Penh'),(277,'Asia/Pontianak'),(278,'Asia/Pyongyang'),(279,'Asia/Qatar'),(280,'Asia/Qyzylorda'),(281,'Asia/Rangoon'),(282,'Asia/Riyadh'),(283,'Asia/Saigon'),(284,'Asia/Sakhalin'),(285,'Asia/Samarkand'),(286,'Asia/Seoul'),(287,'Asia/Shanghai'),(288,'Asia/Singapore'),(289,'Asia/Taipei'),(290,'Asia/Tashkent'),(291,'Asia/Tbilisi'),(292,'Asia/Tehran'),(293,'Asia/Tel_Aviv'),(294,'Asia/Thimbu'),(295,'Asia/Thimphu'),(296,'Asia/Tokyo'),(297,'Asia/Ujung_Pandang'),(298,'Asia/Ulaanbaatar'),(299,'Asia/Ulan_Bator'),(300,'Asia/Urumqi'),(301,'Asia/Vientiane'),(302,'Asia/Vladivostok'),(303,'Asia/Yakutsk'),(304,'Asia/Yekaterinburg'),(305,'Asia/Yerevan'),(306,'Atlantic/Azores'),(307,'Atlantic/Bermuda'),(308,'Atlantic/Canary'),(309,'Atlantic/Cape_Verde'),(310,'Atlantic/Faeroe'),(311,'Atlantic/Faroe'),(312,'Atlantic/Jan_Mayen'),(313,'Atlantic/Madeira'),(314,'Atlantic/Reykjavik'),(315,'Atlantic/South_Georgia'),(316,'Atlantic/St_Helena'),(317,'Atlantic/Stanley'),(318,'Australia/ACT'),(319,'Australia/Adelaide'),(320,'Australia/Brisbane'),(321,'Australia/Broken_Hill'),(322,'Australia/Canberra'),(323,'Australia/Currie'),(324,'Australia/Darwin'),(325,'Australia/Eucla'),(326,'Australia/Hobart'),(327,'Australia/LHI'),(328,'Australia/Lindeman'),(329,'Australia/Lord_Howe'),(330,'Australia/Melbourne'),(331,'Australia/North'),(332,'Australia/NSW'),(333,'Australia/Perth'),(334,'Australia/Queensland'),(335,'Australia/South'),(336,'Australia/Sydney'),(337,'Australia/Tasmania'),(338,'Australia/Victoria'),(339,'Australia/West'),(340,'Australia/Yancowinna'),(341,'Europe/Amsterdam'),(342,'Europe/Andorra'),(343,'Europe/Athens'),(344,'Europe/Belfast'),(345,'Europe/Belgrade'),(346,'Europe/Berlin'),(347,'Europe/Bratislava'),(348,'Europe/Brussels'),(349,'Europe/Bucharest'),(350,'Europe/Budapest'),(351,'Europe/Chisinau'),(352,'Europe/Copenhagen'),(353,'Europe/Dublin'),(354,'Europe/Gibraltar'),(355,'Europe/Guernsey'),(356,'Europe/Helsinki'),(357,'Europe/Isle_of_Man'),(358,'Europe/Istanbul'),(359,'Europe/Jersey'),(360,'Europe/Kaliningrad'),(361,'Europe/Kiev'),(362,'Europe/Lisbon'),(363,'Europe/Ljubljana'),(364,'Europe/London'),(365,'Europe/Luxembourg'),(366,'Europe/Madrid'),(367,'Europe/Malta'),(368,'Europe/Mariehamn'),(369,'Europe/Minsk'),(370,'Europe/Monaco'),(371,'Europe/Moscow'),(372,'Europe/Nicosia'),(373,'Europe/Oslo'),(374,'Europe/Paris'),(375,'Europe/Podgorica'),(376,'Europe/Prague'),(377,'Europe/Riga'),(378,'Europe/Rome'),(379,'Europe/Samara'),(380,'Europe/San_Marino'),(381,'Europe/Sarajevo'),(382,'Europe/Simferopol'),(383,'Europe/Skopje'),(384,'Europe/Sofia'),(385,'Europe/Stockholm'),(386,'Europe/Tallinn'),(387,'Europe/Tirane'),(388,'Europe/Tiraspol'),(389,'Europe/Uzhgorod'),(390,'Europe/Vaduz'),(391,'Europe/Vatican'),(392,'Europe/Vienna'),(393,'Europe/Vilnius'),(394,'Europe/Volgograd'),(395,'Europe/Warsaw'),(396,'Europe/Zagreb'),(397,'Europe/Zaporozhye'),(398,'Europe/Zurich'),(399,'Indian/Antananarivo'),(400,'Indian/Chagos'),(401,'Indian/Christmas'),(402,'Indian/Cocos'),(403,'Indian/Comoro'),(404,'Indian/Kerguelen'),(405,'Indian/Mahe'),(406,'Indian/Maldives'),(407,'Indian/Mauritius'),(408,'Indian/Mayotte'),(409,'Indian/Reunion'),(410,'Pacific/Apia'),(411,'Pacific/Auckland'),(412,'Pacific/Chatham'),(413,'Pacific/Easter'),(414,'Pacific/Efate'),(415,'Pacific/Enderbury'),(416,'Pacific/Fakaofo'),(417,'Pacific/Fiji'),(418,'Pacific/Funafuti'),(419,'Pacific/Galapagos'),(420,'Pacific/Gambier'),(421,'Pacific/Guadalcanal'),(422,'Pacific/Guam'),(423,'Pacific/Honolulu'),(424,'Pacific/Johnston'),(425,'Pacific/Kiritimati'),(426,'Pacific/Kosrae'),(427,'Pacific/Kwajalein'),(428,'Pacific/Majuro'),(429,'Pacific/Marquesas'),(430,'Pacific/Midway'),(431,'Pacific/Nauru'),(432,'Pacific/Niue'),(433,'Pacific/Norfolk'),(434,'Pacific/Noumea'),(435,'Pacific/Pago_Pago'),(436,'Pacific/Palau'),(437,'Pacific/Pitcairn'),(438,'Pacific/Ponape'),(439,'Pacific/Port_Moresby'),(440,'Pacific/Rarotonga'),(441,'Pacific/Saipan'),(442,'Pacific/Samoa'),(443,'Pacific/Tahiti'),(444,'Pacific/Tarawa'),(445,'Pacific/Tongatapu'),(446,'Pacific/Truk'),(447,'Pacific/Wake'),(448,'Pacific/Wallis'),(449,'Pacific/Yap'),(450,'Brazil/Acre'),(451,'Brazil/DeNoronha'),(452,'Brazil/East'),(453,'Brazil/West'),(454,'Canada/Atlantic'),(455,'Canada/Central'),(456,'Canada/East-Saskatchewan'),(457,'Canada/Eastern'),(458,'Canada/Mountain'),(459,'Canada/Newfoundland'),(460,'Canada/Pacific'),(461,'Canada/Saskatchewan'),(462,'Canada/Yukon'),(463,'CET'),(464,'Chile/Continental'),(465,'Chile/EasterIsland'),(466,'CST6CDT'),(467,'Cuba'),(468,'EET'),(469,'Egypt'),(470,'Eire'),(471,'EST'),(472,'EST5EDT'),(473,'Etc/GMT'),(474,'Etc/GMT+0'),(475,'Etc/GMT+1'),(476,'Etc/GMT+10'),(477,'Etc/GMT+11'),(478,'Etc/GMT+12'),(479,'Etc/GMT+2'),(480,'Etc/GMT+3'),(481,'Etc/GMT+4'),(482,'Etc/GMT+5'),(483,'Etc/GMT+6'),(484,'Etc/GMT+7'),(485,'Etc/GMT+8'),(486,'Etc/GMT+9'),(487,'Etc/GMT-0'),(488,'Etc/GMT-1'),(489,'Etc/GMT-10'),(490,'Etc/GMT-11'),(491,'Etc/GMT-12'),(492,'Etc/GMT-13'),(493,'Etc/GMT-14'),(494,'Etc/GMT-2'),(495,'Etc/GMT-3'),(496,'Etc/GMT-4'),(497,'Etc/GMT-5'),(498,'Etc/GMT-6'),(499,'Etc/GMT-7'),(500,'Etc/GMT-8'),(501,'Etc/GMT-9'),(502,'Etc/GMT0'),(503,'Etc/Greenwich'),(504,'Etc/UCT'),(505,'Etc/Universal'),(506,'Etc/UTC'),(507,'Etc/Zulu'),(508,'Factory'),(509,'GB'),(510,'GB-Eire'),(511,'GMT'),(512,'GMT+0'),(513,'GMT-0'),(514,'GMT0'),(515,'Greenwich'),(516,'Hongkong'),(517,'HST'),(518,'Iceland'),(519,'Iran'),(520,'Israel'),(521,'Jamaica'),(522,'Japan'),(523,'Kwajalein'),(524,'Libya'),(525,'MET'),(526,'Mexico/BajaNorte'),(527,'Mexico/BajaSur'),(528,'Mexico/General'),(529,'MST'),(530,'MST7MDT'),(531,'Navajo'),(532,'NZ'),(533,'NZ-CHAT'),(534,'Poland'),(535,'Portugal'),(536,'PRC'),(537,'PST8PDT'),(538,'ROC'),(539,'ROK'),(540,'Singapore'),(541,'Turkey'),(542,'UCT'),(543,'Universal'),(544,'US/Alaska'),(545,'US/Aleutian'),(546,'US/Arizona'),(547,'US/Central'),(548,'US/East-Indiana'),(549,'US/Eastern'),(550,'US/Hawaii'),(551,'US/Indiana-Starke'),(552,'US/Michigan'),(553,'US/Mountain'),(554,'US/Pacific'),(555,'US/Pacific-New'),(556,'US/Samoa'),(557,'UTC'),(558,'W-SU'),(559,'WET'),(560,'Zulu');
/*!40000 ALTER TABLE `qlo_timezone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_warehouse`
--

DROP TABLE IF EXISTS `qlo_warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_warehouse` (
  `id_warehouse` int unsigned NOT NULL AUTO_INCREMENT,
  `id_currency` int unsigned NOT NULL,
  `id_address` int unsigned NOT NULL,
  `id_employee` int unsigned NOT NULL,
  `reference` varchar(32) DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `management_type` enum('WA','FIFO','LIFO') NOT NULL DEFAULT 'WA',
  `deleted` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_warehouse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_warehouse`
--

LOCK TABLES `qlo_warehouse` WRITE;
/*!40000 ALTER TABLE `qlo_warehouse` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_warehouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_warehouse_carrier`
--

DROP TABLE IF EXISTS `qlo_warehouse_carrier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_warehouse_carrier` (
  `id_carrier` int unsigned NOT NULL,
  `id_warehouse` int unsigned NOT NULL,
  PRIMARY KEY (`id_warehouse`,`id_carrier`),
  KEY `id_warehouse` (`id_warehouse`),
  KEY `id_carrier` (`id_carrier`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_warehouse_carrier`
--

LOCK TABLES `qlo_warehouse_carrier` WRITE;
/*!40000 ALTER TABLE `qlo_warehouse_carrier` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_warehouse_carrier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_warehouse_product_location`
--

DROP TABLE IF EXISTS `qlo_warehouse_product_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_warehouse_product_location` (
  `id_warehouse_product_location` int unsigned NOT NULL AUTO_INCREMENT,
  `id_product` int unsigned NOT NULL,
  `id_product_attribute` int unsigned NOT NULL,
  `id_warehouse` int unsigned NOT NULL,
  `location` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_warehouse_product_location`),
  UNIQUE KEY `id_product` (`id_product`,`id_product_attribute`,`id_warehouse`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_warehouse_product_location`
--

LOCK TABLES `qlo_warehouse_product_location` WRITE;
/*!40000 ALTER TABLE `qlo_warehouse_product_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_warehouse_product_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_warehouse_shop`
--

DROP TABLE IF EXISTS `qlo_warehouse_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_warehouse_shop` (
  `id_shop` int unsigned NOT NULL,
  `id_warehouse` int unsigned NOT NULL,
  PRIMARY KEY (`id_warehouse`,`id_shop`),
  KEY `id_warehouse` (`id_warehouse`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_warehouse_shop`
--

LOCK TABLES `qlo_warehouse_shop` WRITE;
/*!40000 ALTER TABLE `qlo_warehouse_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_warehouse_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_web_browser`
--

DROP TABLE IF EXISTS `qlo_web_browser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_web_browser` (
  `id_web_browser` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id_web_browser`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_web_browser`
--

LOCK TABLES `qlo_web_browser` WRITE;
/*!40000 ALTER TABLE `qlo_web_browser` DISABLE KEYS */;
INSERT INTO `qlo_web_browser` VALUES (1,'Safari'),(2,'Safari iPad'),(3,'Firefox'),(4,'Opera'),(5,'IE 6'),(6,'IE 7'),(7,'IE 8'),(8,'IE 9'),(9,'IE 10'),(10,'IE 11'),(11,'Chrome');
/*!40000 ALTER TABLE `qlo_web_browser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_webservice_account`
--

DROP TABLE IF EXISTS `qlo_webservice_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_webservice_account` (
  `id_webservice_account` int NOT NULL AUTO_INCREMENT,
  `key` varchar(32) NOT NULL,
  `description` text,
  `class_name` varchar(50) NOT NULL DEFAULT 'WebserviceRequest',
  `is_module` tinyint NOT NULL DEFAULT '0',
  `module_name` varchar(50) DEFAULT NULL,
  `active` tinyint NOT NULL,
  PRIMARY KEY (`id_webservice_account`),
  KEY `key` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_webservice_account`
--

LOCK TABLES `qlo_webservice_account` WRITE;
/*!40000 ALTER TABLE `qlo_webservice_account` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_webservice_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_webservice_account_shop`
--

DROP TABLE IF EXISTS `qlo_webservice_account_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_webservice_account_shop` (
  `id_webservice_account` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  PRIMARY KEY (`id_webservice_account`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_webservice_account_shop`
--

LOCK TABLES `qlo_webservice_account_shop` WRITE;
/*!40000 ALTER TABLE `qlo_webservice_account_shop` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_webservice_account_shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_webservice_permission`
--

DROP TABLE IF EXISTS `qlo_webservice_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_webservice_permission` (
  `id_webservice_permission` int NOT NULL AUTO_INCREMENT,
  `resource` varchar(50) NOT NULL,
  `method` enum('GET','POST','PUT','DELETE','HEAD') NOT NULL,
  `id_webservice_account` int NOT NULL,
  PRIMARY KEY (`id_webservice_permission`),
  UNIQUE KEY `resource_2` (`resource`,`method`,`id_webservice_account`),
  KEY `resource` (`resource`),
  KEY `method` (`method`),
  KEY `id_webservice_account` (`id_webservice_account`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_webservice_permission`
--

LOCK TABLES `qlo_webservice_permission` WRITE;
/*!40000 ALTER TABLE `qlo_webservice_permission` DISABLE KEYS */;
/*!40000 ALTER TABLE `qlo_webservice_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_zone`
--

DROP TABLE IF EXISTS `qlo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_zone` (
  `id_zone` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `active` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_zone`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_zone`
--

LOCK TABLES `qlo_zone` WRITE;
/*!40000 ALTER TABLE `qlo_zone` DISABLE KEYS */;
INSERT INTO `qlo_zone` VALUES (1,'Europe',1),(2,'North America',1),(3,'Asia',1),(4,'Africa',1),(5,'Oceania',1),(6,'South America',1),(7,'Europe (non-EU)',1),(8,'Central America/Antilla',1);
/*!40000 ALTER TABLE `qlo_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qlo_zone_shop`
--

DROP TABLE IF EXISTS `qlo_zone_shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qlo_zone_shop` (
  `id_zone` int unsigned NOT NULL,
  `id_shop` int unsigned NOT NULL,
  PRIMARY KEY (`id_zone`,`id_shop`),
  KEY `id_shop` (`id_shop`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qlo_zone_shop`
--

LOCK TABLES `qlo_zone_shop` WRITE;
/*!40000 ALTER TABLE `qlo_zone_shop` DISABLE KEYS */;
INSERT INTO `qlo_zone_shop` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1);
/*!40000 ALTER TABLE `qlo_zone_shop` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-18 22:44:44
