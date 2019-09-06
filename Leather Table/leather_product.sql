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
  `product_contents` longtext,
  `product_maincategory` varchar(45) DEFAULT NULL,
  `product_subcategory` varchar(45) DEFAULT NULL,
  `product_subsubcategory` varchar(45) DEFAULT NULL,
  `product_origin` varchar(45) DEFAULT NULL,
  `product_price` int(11) NOT NULL,
  `product_made` varchar(45) DEFAULT NULL,
  `product_stock` int(11) NOT NULL,
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
INSERT INTO `product` VALUES ('a123','희엽이','','001','001',NULL,'s',10000,'s',100,'I','aaa123123',NULL,55,'/2019/09/06/aff6929d-0b19-4a17-b2a8-3eaf6cabaeff_532 ORANGER419.jpg','2019-09-06 13:56:48','/2019/09/06/ad108877-e59c-426a-b6cb-d7b74acf07fa_contentImg.png'),('ddd2211','123456','','002','001',NULL,'s',10000,'s',100,'I','aaa123123',NULL,5,'/2019/09/06/39f0886b-1e75-4c04-8d66-b5630cad777f_532 ROUGE 128.jpg','2019-09-06 16:58:14','/2019/09/06/39eda5c6-2fb7-4a77-a944-6512c9d24f4d_contentImg.png');
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

-- Dump completed on 2019-09-06 17:15:37
