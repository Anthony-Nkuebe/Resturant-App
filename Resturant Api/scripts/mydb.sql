-- MariaDB dump 10.19  Distrib 10.11.6-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: EASYKOSO
-- ------------------------------------------------------
-- Server version	10.11.6-MariaDB-0+deb12u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `BOOKING`
--

DROP TABLE IF EXISTS `BOOKING`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `BOOKING` (
  `id` int(11) NOT NULL,
  `booking_id` varchar(20) NOT NULL,
  `booked_under` varchar(50) NOT NULL,
  `tableid` int(11) NOT NULL,
  `app_date` date NOT NULL,
  `app_time` time NOT NULL,
  `capacity` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  UNIQUE KEY `booking_id` (`booking_id`),
  KEY `fK_bookingstable` (`tableid`),
  CONSTRAINT `fK_bookingstable` FOREIGN KEY (`tableid`) REFERENCES `RTABLE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `BOOKING`
--

LOCK TABLES `BOOKING` WRITE;
/*!40000 ALTER TABLE `BOOKING` DISABLE KEYS */;
/*!40000 ALTER TABLE `BOOKING` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CART`
--

DROP TABLE IF EXISTS `CART`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CART` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `date` date DEFAULT current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CART`
--

LOCK TABLES `CART` WRITE;
/*!40000 ALTER TABLE `CART` DISABLE KEYS */;
/*!40000 ALTER TABLE `CART` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `CARTITEM`
--

DROP TABLE IF EXISTS `CARTITEM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `CARTITEM` (
  `id` int(11) NOT NULL,
  `cart_id` int(11) NOT NULL,
  `prod_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price` float NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `Fkcarttocartitem` (`cart_id`),
  CONSTRAINT `Fkcarttocartitem` FOREIGN KEY (`cart_id`) REFERENCES `CART` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `CARTITEM`
--

LOCK TABLES `CARTITEM` WRITE;
/*!40000 ALTER TABLE `CARTITEM` DISABLE KEYS */;
/*!40000 ALTER TABLE `CARTITEM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `NAME`
--



LOCK TABLES `NAME` WRITE;
/*!40000 ALTER TABLE `NAME` DISABLE KEYS */;
/*!40000 ALTER TABLE `NAME` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ORDERITEM`
--

DROP TABLE IF EXISTS `ORDERITEM`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ORDERITEM` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `prod_name` varchar(50) NOT NULL,
  `prod_price` float NOT NULL DEFAULT 0,
  `prod_quantity` int(11) NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  CONSTRAINT `ORDERITEM_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `RORDER` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ORDERITEM`
--

LOCK TABLES `ORDERITEM` WRITE;
/*!40000 ALTER TABLE `ORDERITEM` DISABLE KEYS */;
/*!40000 ALTER TABLE `ORDERITEM` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PRODUCT`
--

DROP TABLE IF EXISTS `PRODUCT`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PRODUCT` (
  `id` int(11) NOT NULL,
  `productname` varchar(60) NOT NULL,
  `productidno` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL CHECK (`quantity` >= 0),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PRODUCT`
--

LOCK TABLES `PRODUCT` WRITE;
/*!40000 ALTER TABLE `PRODUCT` DISABLE KEYS */;
/*!40000 ALTER TABLE `PRODUCT` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ROLE`
--

DROP TABLE IF EXISTS `ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ROLE` (
  `id` int(11) NOT NULL,
  `accesslevel` int(11) NOT NULL,
  `title` varchar(60) NOT NULL DEFAULT 'CUSTOMER',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ROLE`
--

LOCK TABLES `ROLE` WRITE;
/*!40000 ALTER TABLE `ROLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RORDER`
--

DROP TABLE IF EXISTS `RORDER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RORDER` (
  `id` int(11) NOT NULL,
  `order_id` varchar(20) NOT NULL,
  `datentime` date NOT NULL DEFAULT current_timestamp(),
  `status` varchar(30) NOT NULL,
  `paymentmethod` varchar(60) NOT NULL DEFAULT 'mpesa',
  `totalprice` float NOT NULL DEFAULT 0,
  `orderer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Fk_ordertouser` (`orderer_id`),
  CONSTRAINT `Fk_ordertouser` FOREIGN KEY (`orderer_id`) REFERENCES `USER` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RORDER`
--

LOCK TABLES `RORDER` WRITE;
/*!40000 ALTER TABLE `RORDER` DISABLE KEYS */;
/*!40000 ALTER TABLE `RORDER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `RTABLE`
--

DROP TABLE IF EXISTS `RTABLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `RTABLE` (
  `id` int(11) NOT NULL,
  `capacity` int(11) NOT NULL DEFAULT 2,
  `isbooked` tinyint(1) NOT NULL DEFAULT 0,
  `unitprice` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `RTABLE`
--

LOCK TABLES `RTABLE` WRITE;
/*!40000 ALTER TABLE `RTABLE` DISABLE KEYS */;
/*!40000 ALTER TABLE `RTABLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SALES`
--

DROP TABLE IF EXISTS `SALES`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SALES` (
  `id` int(11) NOT NULL,
  `productname` varchar(30) NOT NULL,
  `price` int(11) NOT NULL,
  `customername` varchar(40) NOT NULL,
  `datentime` datetime NOT NULL DEFAULT current_timestamp(),
  `customer_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `SALES_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `USER` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SALES`
--

LOCK TABLES `SALES` WRITE;
/*!40000 ALTER TABLE `SALES` DISABLE KEYS */;
/*!40000 ALTER TABLE `SALES` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER`
--

DROP TABLE IF EXISTS `USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER` (
  `id` int(11) NOT NULL,
  `username` varchar(60) NOT NULL,
  `lastname` varchar(60) NOT NULL,
  `email` varchar(120) NOT NULL,
  `profile_image` varchar(120) NOT NULL DEFAULT 'USER_PROF.JPEG',
  `roleid` int(11) NOT NULL,
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `Fk_roletouser` (`roleid`),
  CONSTRAINT `Fk_roletouser` FOREIGN KEY (`roleid`) REFERENCES `ROLE` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER`
--

LOCK TABLES `USER` WRITE;
/*!40000 ALTER TABLE `USER` DISABLE KEYS */;
/*!40000 ALTER TABLE `USER` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-22 13:56:06
