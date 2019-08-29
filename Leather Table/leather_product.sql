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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `product` (
  `product_code` varchar(45) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_contents` longtext NOT NULL,
  `product_maincategory` varchar(45) DEFAULT NULL,
  `product_subcategory` varchar(45) DEFAULT NULL,
  `product_subsubcategory` varchar(45) DEFAULT NULL,
  `product_origin` varchar(45) DEFAULT NULL,
  `product_price` int(11) NOT NULL,
  `product_made` varchar(45) DEFAULT NULL,
  `product_stock` int(11) NOT NULL,
  `product_cnt` int(11) NOT NULL DEFAULT '1',
  `product_state` varchar(5) DEFAULT 'I',
  `product_writer` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`product_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('thread001','린카블레532 ROUGE 1','린카블레532 ROUGE 128 (가죽공예실)',NULL,NULL,NULL,'프랑스',33000,'린카블레',100,1,'I',NULL),('thread0011','린카블레532 ROUGE 1','린카블레532 ROUGE 128 (가죽공예실)',NULL,NULL,NULL,'프랑스',33000,'린카블레',100,1,'I',NULL),('thread002','린카블레532 PIVOINE 2','린카블레532 PIVOINE 125',NULL,NULL,NULL,'프랑스',33000,'린카블레',100,1,'I',NULL),('thread0021','린카블레532 PIVOINE 2','린카블레532 PIVOINE 125',NULL,NULL,NULL,'프랑스',33000,'린카블레',100,1,'I',NULL),('thread003','린카블레532 GAZON 3','린카블레532 GAZON 436',NULL,NULL,NULL,'프랑스',33000,'린카블레',100,1,'I',NULL),('thread0031','린카블레532 GAZON 3','린카블레532 GAZON 436',NULL,NULL,NULL,'프랑스',33000,'린카블레',100,1,'I',NULL),('thread004','린카블레532 JAUNE 4','린카블레532 JAUNE 508',NULL,NULL,NULL,'프랑스',33000,'린카블레',100,1,'I',NULL),('thread0041','린카블레532 JAUNE 4','린카블레532 JAUNE 508',NULL,NULL,NULL,'프랑스',33000,'린카블레',100,1,'I',NULL),('thread005','린카블레532 ORANGER5211','린카블레532 ORANGER419',NULL,NULL,NULL,'프랑스',33000,'린카블레',100,1,'I',NULL),('thread0051','린카블레532 ORANGER5211','린카블레532 ORANGER419',NULL,NULL,NULL,'프랑스',33000,'린카블레',100,1,'I',NULL),('thread006','린카블레532 ROY 6','린카블레532 ROY 665',NULL,NULL,NULL,'프랑스',33000,'린카블레',100,1,'I',NULL),('thread0061','린카블레532 ROY 6','린카블레532 ROY 665',NULL,NULL,NULL,'프랑스',33000,'린카블레',100,1,'I',NULL),('thread007','린카블레532 VERT7','린카블레532 VERT767',NULL,NULL,NULL,'프랑스',33000,'린카블레',100,1,'I',NULL),('thread0071','린카블레532 VERT7','린카블레532 VERT767',NULL,NULL,NULL,'프랑스',33000,'린카블레',100,1,'I',NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-29 17:37:10
