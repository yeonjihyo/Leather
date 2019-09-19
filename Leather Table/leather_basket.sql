CREATE DATABASE  IF NOT EXISTS `leather` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `leather`;
-- MySQL dump 10.13  Distrib 8.0.15, for Win64 (x86_64)
--
-- Host: localhost    Database: leather
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
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
 SET character_set_client = utf8mb4 ;
CREATE TABLE `basket` (
  `basket_no` int(11) NOT NULL AUTO_INCREMENT,
  `basket_product_code` varchar(45) NOT NULL,
  `basket_member_id` varchar(16) DEFAULT NULL,
  `deliverycost` int(11) DEFAULT '0',
  `basket_total` int(11) DEFAULT NULL,
  `cnt` int(11) NOT NULL DEFAULT '1',
  `basket_state` varchar(2) NOT NULL DEFAULT 'I',
  PRIMARY KEY (`basket_no`),
  KEY `basket_product_code_idx` (`basket_product_code`),
  KEY `basket_member_id_idx` (`basket_member_id`),
  CONSTRAINT `basket_member_id` FOREIGN KEY (`basket_member_id`) REFERENCES `member` (`member_id`),
  CONSTRAINT `basket_product_code` FOREIGN KEY (`basket_product_code`) REFERENCES `product` (`product_code`)
) ENGINE=InnoDB AUTO_INCREMENT=108 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `basket`
--

LOCK TABLES `basket` WRITE;
/*!40000 ALTER TABLE `basket` DISABLE KEYS */;
INSERT INTO `basket` VALUES (91,'thread007','bbb123123',0,99000,3,'I'),(92,'thread006','bbb123123',0,33000,1,'I'),(93,'thread007','bbb123123',0,33000,1,'I'),(94,'thread004','bbb123123',0,66000,2,'I'),(95,'thread007','bbb123123',0,66000,2,'I'),(96,'thread006','bbb123123',0,33000,1,'I'),(97,'thread007','aaa123123',0,33000,1,'D'),(98,'tool004','aaa123123',0,18000,1,'D'),(99,'tool003','bbb123123',0,6500,1,'I'),(100,'thread007','aaa123123',0,66000,2,'D'),(101,'thread007','aaa123123',0,33000,1,'I'),(102,'tool003','aaa123123',0,6500,1,'I'),(103,'tool004','aaa123123',0,18000,1,'I'),(104,'thread006','aaa123123',0,66000,2,'D'),(105,'thread007','aaa123123',0,66000,2,'I'),(106,'thread005','aaa123123',0,99000,3,'I'),(107,'thread005','aaa123123',0,66000,2,'I');
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

-- Dump completed on 2019-09-19 17:15:08
