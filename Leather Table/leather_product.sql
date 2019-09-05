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
  `product_image` varchar(45) DEFAULT NULL,
  `product_views` int(11) NOT NULL DEFAULT '0',
  `file` varchar(255) DEFAULT NULL COMMENT '대표첨부파일',
  `product_registered` datetime DEFAULT CURRENT_TIMESTAMP,
  `contentsfile` varchar(255) DEFAULT NULL COMMENT '상품첨부파일',
  PRIMARY KEY (`product_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('a2','2','','001','002',NULL,'s',10000,'s',100,1,'I',NULL,NULL,0,'/2019/09/05/c2d788af-d88e-4a7b-8e27-7db3bcf1f8eb_532 PIVOINE 125.jpg','2019-09-05 11:48:18','/2019/09/05/7deb5ee5-f582-4bc9-8322-068b5915ac8b_532 ROUGE 128.jpg'),('aaa1','1','','001','001',NULL,'s',10000,'s',100,1,'I',NULL,NULL,3,'/2019/09/05/c21ce215-dce6-4eea-a87e-ffd81af4106c_532 GAZON 436.jpg','2019-09-05 11:46:15','/2019/09/05/ce7cf6ad-b0eb-4540-b5e7-80db63761702_532 JAUNE 508.jpg'),('dd123','3','','002','001',NULL,'s',10000,'s',100,1,'I',NULL,NULL,0,'/2019/09/05/ddfef580-941d-4ca1-9162-9fa55238ef35_532 GAZON 436.jpg','2019-09-05 12:25:36','/2019/09/05/d4b7ee2e-f2e1-48ca-b9a7-c330499bca16_contentImg.png');
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

-- Dump completed on 2019-09-05 14:52:04
