create database if not exists  `dth_2210900028_project3`;
use `dth_2210900028_project3`

-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: localhost    Database: dth_2210900028_project3
-- ------------------------------------------------------
-- Server version	8.0.13

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
-- Table structure for table `dthbrand`
--

DROP TABLE IF EXISTS `dthbrand`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dthbrand` (
  `idbrand` int(11) NOT NULL AUTO_INCREMENT,
  `namebrand` varchar(255) COLLATE utf8_bin NOT NULL,
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `createddate` timestamp NULL DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `modifiedby` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `isDelete` bit(1) DEFAULT NULL,
  PRIMARY KEY (`idbrand`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dthbrand`
--

LOCK TABLES `dthbrand` WRITE;
/*!40000 ALTER TABLE `dthbrand` DISABLE KEYS */;
INSERT INTO `dthbrand` VALUES (6,'OrganicFood',NULL,_binary '','2025-03-07 13:41:23','2025-03-07 13:41:23','admin','admin',NULL),(7,'Organica',NULL,_binary '','2025-03-07 13:41:23','2025-03-07 13:41:23','admin','admin',NULL),(8,'VietGreenFood',NULL,_binary '','2025-03-07 13:41:23','2025-03-07 13:41:23','admin','admin',NULL),(9,'CP Giá tốt',NULL,_binary '','2025-03-07 13:41:23','2025-03-07 13:41:23','admin','admin',NULL),(10,'MEAT Deli',NULL,_binary '','2025-03-07 13:41:23','2025-03-07 13:41:23','admin','admin',NULL);
/*!40000 ALTER TABLE `dthbrand` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dthcategory`
--

DROP TABLE IF EXISTS `dthcategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dthcategory` (
  `idcategory` int(11) NOT NULL AUTO_INCREMENT,
  `namecategory` varchar(255) COLLATE utf8_bin NOT NULL,
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `status` bit(1) DEFAULT NULL,
  `createddate` timestamp NULL DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `modifiedby` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `isDelete` bit(1) DEFAULT NULL,
  PRIMARY KEY (`idcategory`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dthcategory`
--

LOCK TABLES `dthcategory` WRITE;
/*!40000 ALTER TABLE `dthcategory` DISABLE KEYS */;
INSERT INTO `dthcategory` VALUES (1,'Rau củ sạch',NULL,_binary '',NULL,NULL,NULL,NULL,NULL),(2,'Thịt - trứng',NULL,_binary '',NULL,NULL,NULL,NULL,NULL),(3,'Thủy hải sản',NULL,_binary '',NULL,NULL,NULL,NULL,NULL),(4,'Trái cây tươi',NULL,_binary '',NULL,NULL,NULL,NULL,NULL),(5,'Bơ sữa các loại',NULL,_binary '',NULL,NULL,NULL,NULL,NULL),(6,'Gạo bột đồ khô',NULL,_binary '',NULL,NULL,NULL,NULL,NULL),(7,'Chế biến sẵn',NULL,_binary '',NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `dthcategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dthcomment`
--

DROP TABLE IF EXISTS `dthcomment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dthcomment` (
  `idcomment` bigint(20) NOT NULL AUTO_INCREMENT,
  `idproduct` bigint(20) NOT NULL,
  `iduser` bigint(20) NOT NULL,
  `comment_text` text COLLATE utf8_bin NOT NULL,
  `status` bit(1) DEFAULT NULL,
  `isDelete` bit(1) DEFAULT NULL,
  `createddate` timestamp NULL DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `modifiedby` varchar(255) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`idcomment`),
  KEY `idproduct` (`idproduct`),
  KEY `iduser` (`iduser`),
  CONSTRAINT `dthcomment_ibfk_1` FOREIGN KEY (`idproduct`) REFERENCES `dthproduct` (`idproduct`),
  CONSTRAINT `dthcomment_ibfk_2` FOREIGN KEY (`iduser`) REFERENCES `dthuser` (`iduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dthcomment`
--

LOCK TABLES `dthcomment` WRITE;
/*!40000 ALTER TABLE `dthcomment` DISABLE KEYS */;
/*!40000 ALTER TABLE `dthcomment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dthorderdetails`
--

DROP TABLE IF EXISTS `dthorderdetails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dthorderdetails` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `idOrder` bigint(20) NOT NULL,
  `idProduct` bigint(20) NOT NULL,
  `quantitySold` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order` (`idOrder`),
  KEY `fk_product` (`idProduct`),
  CONSTRAINT `fk_order` FOREIGN KEY (`idOrder`) REFERENCES `dthorders` (`idorder`),
  CONSTRAINT `fk_product` FOREIGN KEY (`idProduct`) REFERENCES `dthproduct` (`idproduct`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dthorderdetails`
--

LOCK TABLES `dthorderdetails` WRITE;
/*!40000 ALTER TABLE `dthorderdetails` DISABLE KEYS */;
/*!40000 ALTER TABLE `dthorderdetails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dthorders`
--

DROP TABLE IF EXISTS `dthorders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dthorders` (
  `idorder` bigint(20) NOT NULL AUTO_INCREMENT,
  `iduser` bigint(20) DEFAULT NULL,
  `shippingaddress` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `paymenmethod` int(11) DEFAULT NULL,
  `shipping` decimal(10,2) NOT NULL,
  `tax` decimal(10,2) NOT NULL,
  `totalprice` decimal(10,2) NOT NULL,
  `note` text COLLATE utf8_bin NOT NULL,
  `status` int(11) NOT NULL,
  `createddate` timestamp NULL DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `modifiedby` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`idorder`),
  KEY `fk_user` (`iduser`),
  CONSTRAINT `fk_user` FOREIGN KEY (`iduser`) REFERENCES `dthuser` (`iduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dthorders`
--

LOCK TABLES `dthorders` WRITE;
/*!40000 ALTER TABLE `dthorders` DISABLE KEYS */;
/*!40000 ALTER TABLE `dthorders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dthproduct`
--

DROP TABLE IF EXISTS `dthproduct`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dthproduct` (
  `idproduct` bigint(20) NOT NULL AUTO_INCREMENT,
  `nameproduct` varchar(255) COLLATE utf8_bin NOT NULL,
  `idcategory` int(11) NOT NULL,
  `idbrand` int(11) NOT NULL,
  `importprice` decimal(10,2) NOT NULL,
  `sellingprice` decimal(10,2) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit` varchar(50) COLLATE utf8_bin DEFAULT NULL,
  `shortdescription` text COLLATE utf8_bin,
  `detaileddescription` text COLLATE utf8_bin,
  `image` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `status` int(11) NOT NULL,
  `isdelete` bit(1) DEFAULT NULL,
  `createddate` timestamp NULL DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `modifiedby` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`idproduct`),
  KEY `fk_category` (`idcategory`),
  KEY `fk_brand` (`idbrand`),
  CONSTRAINT `fk_brand` FOREIGN KEY (`idbrand`) REFERENCES `dthbrand` (`idbrand`),
  CONSTRAINT `fk_category` FOREIGN KEY (`idcategory`) REFERENCES `dthcategory` (`idcategory`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dthproduct`
--

LOCK TABLES `dthproduct` WRITE;
/*!40000 ALTER TABLE `dthproduct` DISABLE KEYS */;
INSERT INTO `dthproduct` VALUES (15,'Cà rốt hữu cơ',1,7,20.00,25.00,100,'kg','Cà rốt tươi, hữu cơ','Cà rốt chất lượng cao được thu hoạch từ các trang trại địa phương.','uploads/gao.jpg',1,_binary '\0','2025-03-07 13:55:08','2025-03-12 14:46:36','admin','admin'),(16,'Gà hữu cơ',2,6,50.00,70.00,50,'kg','Gà thả vườn hữu cơ','Gà tươi ngon, được nuôi bằng thức ăn hữu cơ.','uploads/ga.jpg',1,_binary '\0','2025-03-07 13:55:08','2025-03-12 15:04:42','admin','admin'),(17,'Cá hồi tươi',3,7,100.00,120.00,30,'kg','Cá hồi tự nhiên','Fillet cá hồi thơm ngon, rất thích hợp cho nướng.','uploads/cahoi.jpg',1,_binary '\0','2025-03-07 13:55:08','2025-03-12 15:07:08','admin','admin'),(18,'Táo xanh',4,8,30.00,40.00,200,'kg','Táo xanh giòn','Táo xanh tươi ngon, thích hợp để ăn vặt.',NULL,1,NULL,'2025-03-07 13:55:08','2025-03-07 13:55:08','admin','admin'),(19,'Gạo hữu cơ',5,9,15.00,20.00,150,'kg','Gạo hữu cơ chất lượng cao','Nguồn gốc từ các trang trại bền vững.','uploads/gao.jpg',1,_binary '\0','2025-03-07 13:55:08','2025-03-12 15:07:21','admin','admin'),(20,'Sữa tươi hữu cơ',6,6,25.00,30.00,200,'l','Sữa tươi nguyên chất','Sữa tươi hữu cơ, không chứa chất bảo quản.','uploads/suatuoi.jpg',1,_binary '\0','2025-03-07 13:55:08','2025-03-12 15:09:17','admin','admin'),(21,'Bánh mì nguyên cám',7,7,10.00,15.00,150,'chiếc','Bánh mì nguyên cám','Bánh mì làm từ bột nguyên cám, tốt cho sức khỏe.','uploads/banhmi.jpg',1,_binary '\0','2025-03-07 13:55:08','2025-03-12 15:09:36','admin','admin'),(23,'Sườn heo',2,9,50000.00,85000.00,10,'Khay 400gr','','','uploads/suonheo.jpg',1,_binary '',NULL,'2025-03-12 15:09:54',NULL,'admin'),(24,'Nạc vai heo',2,9,35000.00,52000.00,10,'Khay 300gr','','','uploads/lacvaiheo.jpg',1,_binary '\0',NULL,'2025-03-12 15:10:37',NULL,'admin'),(28,'Sản phẩm test 1',2,9,99.99,129.99,50,'pcs','This is an example product.','This product is designed for demonstration purposes.','',1,_binary '',NULL,NULL,NULL,NULL),(29,'Sản phẩm test 2',2,9,99.99,129.99,50,'pcs','This is an example product.','This product is designed for demonstration purposes.','',1,_binary '','2025-03-08 19:21:06','2025-03-08 19:21:06',NULL,NULL),(30,'test',4,6,10.00,50.00,20,'kg','mota','','',0,NULL,'2025-03-12 09:42:57','2025-03-12 10:21:50','admin','admin'),(31,'test2',1,6,12.00,20.00,12,'kq','','','',1,_binary '','2025-03-12 11:11:51','2025-03-12 11:11:51','admin',NULL),(32,'avc admin',1,6,102.00,200.00,20,'kq','','','uploads/gao.jpg',0,_binary '','2025-03-12 14:24:22','2025-03-12 14:24:22','admin',NULL);
/*!40000 ALTER TABLE `dthproduct` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dthrole`
--

DROP TABLE IF EXISTS `dthrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dthrole` (
  `idrole` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `createddate` timestamp NULL DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `modifiedby` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `isDelete` bit(1) DEFAULT NULL,
  PRIMARY KEY (`idrole`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dthrole`
--

LOCK TABLES `dthrole` WRITE;
/*!40000 ALTER TABLE `dthrole` DISABLE KEYS */;
INSERT INTO `dthrole` VALUES (1,'Admin','2025-03-07 13:44:13','2025-03-07 13:44:13','admin','admin',NULL),(2,'Nhân viên bán hàng','2025-03-07 13:44:13','2025-03-07 13:44:13','admin','admin',NULL),(3,'Quản lý kho','2025-03-07 13:44:13','2025-03-07 13:44:13','admin','admin',NULL),(4,'User','2025-03-07 13:44:13','2025-03-07 13:44:13','admin','admin',NULL);
/*!40000 ALTER TABLE `dthrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dthuser`
--

DROP TABLE IF EXISTS `dthuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `dthuser` (
  `iduser` bigint(20) NOT NULL AUTO_INCREMENT,
  `username` varchar(150) COLLATE utf8_bin NOT NULL,
  `password` varchar(150) COLLATE utf8_bin NOT NULL,
  `fullname` varchar(150) COLLATE utf8_bin DEFAULT NULL,
  `address` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `avatar` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(12) COLLATE utf8_bin DEFAULT NULL,
  `status` int(11) NOT NULL,
  `roleid` int(11) NOT NULL,
  `isdelete` bit(1) DEFAULT NULL,
  `createddate` timestamp NULL DEFAULT NULL,
  `modifieddate` timestamp NULL DEFAULT NULL,
  `createdby` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `modifiedby` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`iduser`),
  KEY `fk_role` (`roleid`),
  CONSTRAINT `fk_role` FOREIGN KEY (`roleid`) REFERENCES `dthrole` (`idrole`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dthuser`
--

LOCK TABLES `dthuser` WRITE;
/*!40000 ALTER TABLE `dthuser` DISABLE KEYS */;
INSERT INTO `dthuser` VALUES (1,'admin','abc123','Quản trị viên','Hà Nội',NULL,'0123456789',1,1,NULL,'2025-03-07 13:46:58','2025-03-07 13:46:58','admin','admin'),(2,'thuyhuong','abc123','Thúy Hường','Hà Nội',NULL,'0987654321',1,2,NULL,'2025-03-07 13:46:58','2025-03-07 13:46:58','admin','admin'),(3,'dth','123456','Thúy Hường','Hà Nội',NULL,'0962169464',1,4,NULL,NULL,NULL,NULL,NULL),(4,'ngocanh','123456','Ngá»c Anh','HÃ  Ná»i',NULL,'096222222222',1,4,NULL,'2025-03-13 18:05:42','2025-03-13 18:05:42','user','user');
/*!40000 ALTER TABLE `dthuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'dth_2210900028_project3'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-14 18:21:02
