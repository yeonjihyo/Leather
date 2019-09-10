CREATE DATABASE  IF NOT EXISTS `leather` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `leather`;
-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: leather
-- ------------------------------------------------------
-- Server version	8.0.15

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
-- Table structure for table `basket`
--

DROP TABLE IF EXISTS `basket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `basket` (
  `basket_no` int(11) NOT NULL AUTO_INCREMENT,
  `basket_product_code` varchar(45) NOT NULL,
  `basket_member_id` varchar(16) DEFAULT NULL,
  `basket_deliverycost` int(11) DEFAULT NULL,
  `basket_total` int(11) DEFAULT NULL,
  `cnt` int(11) NOT NULL DEFAULT '1',
  `basket_state` varchar(2) DEFAULT 'I',
  PRIMARY KEY (`basket_no`),
  KEY `basket_product_code_idx` (`basket_product_code`),
  KEY `basket_member_id_idx` (`basket_member_id`),
  CONSTRAINT `basket_member_id` FOREIGN KEY (`basket_member_id`) REFERENCES `member` (`member_id`),
  CONSTRAINT `basket_product_code` FOREIGN KEY (`basket_product_code`) REFERENCES `product` (`product_code`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basket`
--

LOCK TABLES `basket` WRITE;
/*!40000 ALTER TABLE `basket` DISABLE KEYS */;
INSERT INTO `basket` VALUES (3,'a123','bbb123123',NULL,NULL,1,'I'),(4,'a123','bbb123123',NULL,NULL,1,'I'),(21,'dw111','ccc123123',0,30000,3,NULL),(22,'a123','ccc123123',0,70000,7,NULL),(23,'ddd2211','ccc123123',0,20000,2,NULL),(24,'dw111','ddd123123',0,10000,1,NULL),(25,'dw111','ddd123123',0,10000,1,NULL),(27,'a123','ddd123123',0,10000,1,NULL),(29,'thread001','ddd123123',0,20000,2,NULL);
/*!40000 ALTER TABLE `basket` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-10 17:00:05
