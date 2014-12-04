CREATE DATABASE  IF NOT EXISTS `Ebx` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `Ebx`;
-- MySQL dump 10.13  Distrib 5.6.17, for osx10.6 (i386)
--
-- Host: 10.0.52.174    Database: Ebx
-- ------------------------------------------------------
-- Server version	5.5.38-0ubuntu0.12.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Accessory`
--

DROP TABLE IF EXISTS `Accessory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Accessory` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `price` decimal(19,2) DEFAULT NULL,
  `car_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK83EA4FC71874DF19` (`car_id`),
  CONSTRAINT `FK83EA4FC71874DF19` FOREIGN KEY (`car_id`) REFERENCES `Car` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Accessory`
--

LOCK TABLES `Accessory` WRITE;
/*!40000 ALTER TABLE `Accessory` DISABLE KEYS */;
INSERT INTO `Accessory` VALUES (1,'Body Side Molding',209.00,1),(2,'Door Edge Guards',79.00,1),(3,'Paint Protection Film',395.00,1),(4,'Rear Bumper Applique',69.00,1),(5,'Rear Spoiler',329.00,1),(6,'Body Side Molding',209.00,2),(7,'Door Edge Guards',125.00,2),(8,'Mudguards',129.00,2),(9,'Paint Protection Film',395.00,2),(10,'Rear Bumper Applique',79.00,2),(11,'Alloy Wheel Locks',81.00,3),(12,'Door Edge Guards',125.00,3),(13,'Paint Protection Film',395.00,3),(14,'Rear Bumper Applique',69.00,3),(15,'Ashtray Cup',26.00,3),(16,'Cargo Net - Envelope',49.00,3),(17,'Cargo Tote',49.00,3),(18,'Emergency Assistance Kit',59.00,3),(19,'First Aid Kit',29.00,3),(20,'Glass Brakage Senson (GBS)',299.00,3),(21,'Illuminated Door Sills',379.00,3),(22,'Remote Engine Starter',499.00,3);
/*!40000 ALTER TABLE `Accessory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Car`
--

DROP TABLE IF EXISTS `Car`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Car` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `modelName` varchar(255) DEFAULT NULL,
  `price` decimal(19,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Car`
--

LOCK TABLES `Car` WRITE;
/*!40000 ALTER TABLE `Car` DISABLE KEYS */;
INSERT INTO `Car` VALUES (1,'Ebx Yaris 2015',14845.00),(2,'Ebx Corolla 2015',16900.00),(3,'Ebx Avalon',32560.00);
/*!40000 ALTER TABLE `Car` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CarColor`
--

DROP TABLE IF EXISTS `CarColor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CarColor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `colorHexCode` varchar(255) DEFAULT NULL,
  `colorName` varchar(255) DEFAULT NULL,
  `price` decimal(19,2) DEFAULT NULL,
  `car_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK197E80F1874DF19` (`car_id`),
  CONSTRAINT `FK197E80F1874DF19` FOREIGN KEY (`car_id`) REFERENCES `Car` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CarColor`
--

LOCK TABLES `CarColor` WRITE;
/*!40000 ALTER TABLE `CarColor` DISABLE KEYS */;
INSERT INTO `CarColor` VALUES (1,'808080','Classic Silver Metallic',500.00,1),(2,'b52024','Absolutely Red',1500.00,1),(3,'ffffff','Super White',0.00,1),(4,'045aa7','Blue Streak Metallic',1200.00,1),(5,'ffffff','Super White',0.00,2),(6,'393e44','Slate Metallic',900.00,2),(7,'808080','Silver Metallic',500.00,2),(8,'f3f1f2','Blizzard Pearl',395.00,3),(9,'808080','Classic Silver Metallic',0.00,3),(10,'4a4849','Magnetic Grey Metallic',100.00,3),(11,'01021e','Attitude Black Metallic',200.00,3),(12,'4c1b31','Sizzling Crimson Mica',300.00,3),(13,'470012','Ooh La La Rouge Mica',400.00,3),(14,'c8b7a3','Creme Brulee Mica',500.00,3),(15,'787d69','Cypress Pearl',600.00,3),(16,'122742','Parisian Night Pearl',700.00,3);
/*!40000 ALTER TABLE `CarColor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RimsColor`
--

DROP TABLE IF EXISTS `RimsColor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RimsColor` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `colorHexCode` varchar(255) DEFAULT NULL,
  `colorName` varchar(255) DEFAULT NULL,
  `price` decimal(19,2) DEFAULT NULL,
  `car_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK676FBF261874DF19` (`car_id`),
  CONSTRAINT `FK676FBF261874DF19` FOREIGN KEY (`car_id`) REFERENCES `Car` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RimsColor`
--

LOCK TABLES `RimsColor` WRITE;
/*!40000 ALTER TABLE `RimsColor` DISABLE KEYS */;
INSERT INTO `RimsColor` VALUES (1,'b7a688','Almond',0.00,3),(2,'808080','Light Gray',200.00,3),(3,'212121','Black',300.00,3),(4,'808080','Light Gray',100.00,2),(5,'e1e1e3','Super Light Gray',0.00,2),(6,'e1e1e3','Super Light Gray',0.00,1),(7,'b7a688','Almond',100.00,1);
/*!40000 ALTER TABLE `RimsColor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-09-16  1:41:34
