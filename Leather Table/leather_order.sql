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
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `order` (
  `order_num` int(11) NOT NULL AUTO_INCREMENT,
  `order_member_id` varchar(16) DEFAULT NULL,
  `order_product_code` varchar(45) NOT NULL,
  `order_progress` varchar(10) DEFAULT '결제완료',
  `order_date` datetime DEFAULT CURRENT_TIMESTAMP,
  `deliverycost` int(11) DEFAULT NULL,
  `order_total` int(11) NOT NULL,
  `cnt` int(11) NOT NULL DEFAULT '1',
  `order_state` varchar(1) DEFAULT 'I',
  PRIMARY KEY (`order_num`),
  KEY `order_member_id_idx` (`order_member_id`),
  KEY `order_product_code_idx` (`order_product_code`),
  CONSTRAINT `order_member_id` FOREIGN KEY (`order_member_id`) REFERENCES `member` (`member_id`),
  CONSTRAINT `order_product_code` FOREIGN KEY (`order_product_code`) REFERENCES `product` (`product_code`)
) ENGINE=InnoDB AUTO_INCREMENT=178 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (172,'aaa123123','thread007','결제완료','2019-09-25 11:44:26',NULL,66000,1,'I'),(173,'aaa123123','thread007','결제완료','2019-09-25 11:44:26',NULL,66000,1,'I'),(174,'aaa123123','thread005','결제완료','2019-09-25 12:03:17',NULL,36000,1,'I'),(175,'aaa123123','tool003','결제완료','2019-09-25 12:03:48',NULL,9500,1,'I'),(176,'bbb123123','tool003','결제완료','2019-09-25 13:35:16',NULL,52500,3,'I'),(177,'bbb123123','thread006','결제완료','2019-09-25 13:35:16',NULL,52500,1,'I');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-09-25 14:12:00
