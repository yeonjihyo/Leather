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
  `product_total` int(11) DEFAULT NULL,
  PRIMARY KEY (`product_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('thread001','제품1','','001','001',NULL,'프랑스',33000,'프랑스',100,'I','aaa123123',NULL,51,'/2019/09/10/d80d019a-62b4-4f89-a6a1-b6fc9dde1eda_532 ROY 665.jpg','2019-09-10 16:38:44','/2019/09/10/b8086fbf-9fbf-442d-92e2-2c18534a4484_contentImg.png',NULL),('thread002','제품2','','001','001',NULL,'프랑스',33000,'프랑스',100,'I','aaa123123',NULL,0,'/2019/09/17/89600a51-bf63-446e-ab3e-f04593a91495_532 VERT767.jpg','2019-09-17 15:49:02','/2019/09/17/aace42e5-86a7-449a-a257-e3a728373999_contentImg.png',NULL),('thread003','제품3','','001','001',NULL,'프랑스',33000,'프랑스',100,'I','aaa123123',NULL,0,'/2019/09/17/b72835a7-eea4-4da3-8012-f632f9a7d477_532 ROUGE 128.jpg','2019-09-17 15:49:31',NULL,NULL),('thread004','제품4','','001','001',NULL,'프랑스',33000,'프랑스',100,'I','aaa123123',NULL,0,'/2019/09/17/e82a2308-e38b-45c5-aaa5-022fd0ceb4e4_532 PIVOINE 125.jpg','2019-09-17 15:49:59','/2019/09/17/d9408de8-36c8-4c0f-80b2-33ee41e4feab_contentImg.png',NULL),('thread005','제품5','','001','001',NULL,'프랑스',33000,'프랑스',100,'I','aaa123123',NULL,0,'/2019/09/17/32898fa4-c159-41a6-9649-de25b9f16d8a_532 ORANGER419.jpg','2019-09-17 15:50:25','/2019/09/17/f42082fa-6c1a-48ad-bf8c-5aff83939f6a_contentImg.png',NULL),('thread006','제품6','','001','001',NULL,'프랑스',33000,'프랑스',100,'I','aaa123123',NULL,1,'/2019/09/17/49d58376-e0a3-4562-a970-a0df5dffc256_532 JAUNE 508.jpg','2019-09-17 15:50:55','/2019/09/17/bdfe4866-2196-45f1-a239-0586c75e7b4f_contentImg.png',NULL),('thread007','제품7','','001','001',NULL,'프랑스',33000,'프랑스',100,'I','aaa123123',NULL,1,'/2019/09/17/98697134-94af-4f50-97e4-e726a9a222a2_532 GAZON 436.jpg','2019-09-17 15:51:17','/2019/09/17/b342926d-7b3a-474b-b4b7-f995aaca6615_contentImg.png',NULL);
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

-- Dump completed on 2019-09-17 17:13:52
