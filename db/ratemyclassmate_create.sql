CREATE DATABASE  IF NOT EXISTS `RateMyClassmate` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `RateMyClassmate`;
-- MySQL dump 10.13  Distrib 5.6.19, for debian-linux-gnu (x86_64)
--
-- Host: 127.0.0.1    Database: RateMyClassmate
-- ------------------------------------------------------
-- Server version	5.6.19-0ubuntu0.14.04.1

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
-- Table structure for table `Ratings`
--

DROP TABLE IF EXISTS `Ratings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Ratings` (
  `ratingFor` bigint(20) NOT NULL,
  `ratingBy` bigint(20) NOT NULL,
  `knowledge` int(11) NOT NULL,
  `availability` int(11) NOT NULL,
  `motivation` int(11) NOT NULL,
  `dependability` int(11) NOT NULL,
  `friendliness` int(11) NOT NULL,
  PRIMARY KEY (`ratingFor`,`ratingBy`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Ratings`
--

LOCK TABLES `Ratings` WRITE;
/*!40000 ALTER TABLE `Ratings` DISABLE KEYS */;
INSERT INTO `Ratings` VALUES (7,8,1,2,3,4,5),(7,9,3,2,3,2,5),(7,10,1,1,1,1,1),(8,7,4,4,4,4,4),(8,9,1,2,3,4,5),(8,10,3,3,2,5,5),(9,7,1,2,3,4,5),(9,8,5,4,3,2,1),(9,10,1,2,3,4,5);
/*!40000 ALTER TABLE `Ratings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Reviews`
--

DROP TABLE IF EXISTS `Reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Reviews` (
  `reviewFor` bigint(20) NOT NULL,
  `reviewBy` bigint(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `text` varchar(50000) NOT NULL,
  `class` varchar(45) DEFAULT NULL,
  `school` int(11) DEFAULT NULL,
  KEY `userID_idx` (`reviewFor`,`reviewBy`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Reviews`
--

LOCK TABLES `Reviews` WRITE;
/*!40000 ALTER TABLE `Reviews` DISABLE KEYS */;
INSERT INTO `Reviews` VALUES (7,8,'2014-10-10 16:34:28','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry','CS 160',1),(7,9,'2014-10-10 16:34:28','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.','CS 160',1),(7,10,'2014-10-10 16:34:28','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry','CS 160',1),(8,7,'2014-10-10 16:34:28','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.','CS 160',1),(8,9,'2014-10-10 16:34:28','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry','CS 160',1),(8,10,'2014-10-10 16:34:28','All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary','CS 160',1),(9,7,'2014-10-10 16:34:28','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry','CS 160',1),(9,8,'2014-10-10 16:34:28','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.','CS 160',1),(9,10,'2014-10-10 16:34:28','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry','CS 160',1),(10,7,'2014-10-10 16:34:28','All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary','CS 160',1),(10,8,'2014-10-10 16:34:28','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry','CS 160',1),(10,9,'2014-10-10 16:34:28','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.','CS 160',1),(11,12,'2014-10-10 16:34:28','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry','CS 160',1),(12,11,'2014-10-10 16:34:28','All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary','CS 160',1),(12,7,'2014-10-10 16:36:44','All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary','CS 146',1),(12,8,'2014-10-10 16:36:44','All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary','CS 146',1),(10,12,'2014-10-10 16:36:44','All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary','BUS 12',2),(12,10,'2014-10-10 16:36:44','All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary','BUS 12',2),(12,7,'2014-10-10 16:36:54','All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary','CS 146',1),(12,8,'2014-10-10 16:36:54','All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary','CS 146',1),(10,12,'2014-10-10 16:36:54','All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary','BUS 12',2),(12,10,'2014-10-10 16:36:54','All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary','BUS 12',2);
/*!40000 ALTER TABLE `Reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `School`
--

DROP TABLE IF EXISTS `School`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `School` (
  `schoolID` bigint(20) NOT NULL,
  `name` varchar(45) NOT NULL,
  `state` varchar(45) NOT NULL,
  PRIMARY KEY (`schoolID`),
  UNIQUE KEY `schoolIndex` (`schoolID`,`name`,`state`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `School`
--

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `userID` bigint(20) NOT NULL AUTO_INCREMENT,
  `userName` varchar(45) NOT NULL,
  `firstName` varchar(45) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  PRIMARY KEY (`userID`,`userName`,`email`),
  UNIQUE KEY `userName_UNIQUE` (`userName`),
  UNIQUE KEY `userID_UNIQUE` (`userID`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (7,'ltBrandon','Brandon','R','hagiuhawriugh3','BR@sjsu.edu'),(13,'cmk','Joe','L','123456','test@edu.com'),(8,'sjArash','Arash','Z','hu3hf79qyf','AZ@sjsu.edu'),(9,'sjCody','Cody','K','f9832hg9qhgcd','CK@sjsu.edu'),(10,'sjNabil','Nabil','A','hh48q32gh','NA@sjsu.edu'),(11,'ltAnna','Anna','G','hiuehiugweh9q83','AG@sjsu.edu'),(12,'sjMatt','Matt','P','qhfg8239hg9823hg','MP@sjsu.edu');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-11-12 13:31:37
