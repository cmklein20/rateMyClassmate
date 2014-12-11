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
INSERT INTO `Ratings` VALUES (7,8,1,2,3,4,5),(7,9,3,2,3,2,5),(7,10,1,1,1,1,1),(7,10000,5,5,5,5,5),(7,487827195,5,5,5,5,5),(7,487829792,5,5,5,5,5),(7,487832348,5,5,5,5,5),(7,750790671,4,3,5,5,5),(7,750806672,2,2,2,3,1),(7,914693504,1,5,5,5,5),(7,917100586,5,5,5,5,1),(7,917108555,5,5,5,5,1),(8,7,4,4,4,4,4),(8,9,1,2,3,4,5),(8,10,3,3,2,5,5),(8,909979286,5,5,5,5,5),(9,7,1,2,3,4,5),(9,8,5,4,3,2,1),(9,10,1,2,3,4,5),(10,12,1,1,1,1,1),(10,906868878,3,4,5,5,5),(14,10,4,5,2,3,4),(18,910552022,5,5,5,5,5),(18,910761662,5,5,2,5,5),(18,912449680,1,5,5,5,5),(18,912453987,1,5,5,5,5),(18,912458655,1,5,5,5,5),(18,912462318,1,5,5,5,5),(18,912466441,1,5,5,5,5),(18,912471084,1,5,5,5,5),(18,912475138,1,5,5,5,5),(18,912479073,1,5,5,5,5),(18,912482617,1,5,5,5,5),(18,912486905,1,5,5,5,5),(21,912555577,1,2,3,4,5),(23,912838197,1,1,1,1,2),(23,912873354,5,5,5,5,5),(23,912877031,5,5,5,5,5),(23,912900119,1,1,1,1,1),(24,917149786,1,2,3,4,5),(27,927763386,5,5,5,5,5),(27,927773828,1,1,5,5,5);
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
INSERT INTO `Reviews` VALUES (7,8,'2014-10-10 16:34:28','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry','CS 160',1),(7,9,'2014-10-10 16:34:28','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.','CS 160',1),(7,10,'2014-10-10 16:34:28','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry','CS 160',1),(9,7,'2014-10-10 16:34:28','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry','CS 160',1),(9,8,'2014-10-10 16:34:28','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.','CS 160',1),(9,10,'2014-10-10 16:34:28','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry','CS 160',1),(11,12,'2014-10-10 16:34:28','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry','CS 160',1),(12,11,'2014-10-10 16:34:28','All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary','CS 160',1),(12,7,'2014-10-10 16:36:44','All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary','CS 146',1),(12,8,'2014-10-10 16:36:44','All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary','CS 146',1),(12,10,'2014-10-10 16:36:44','All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary','BUS 12',2),(12,7,'2014-10-10 16:36:54','All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary','CS 146',1),(12,8,'2014-10-10 16:36:54','All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary','CS 146',1),(12,10,'2014-10-10 16:36:54','All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary','BUS 12',2),(10,7,'2014-10-10 16:36:54','The Raiders are a better football team than Nabil is a group member. That is really saying something considering the Raiders just lost 52-0','CS 160',1),(10,5,'2014-12-01 11:39:01','If I wanted to kill myself, I would climb to the top of Nabil\'s ego and jump to his IQ. ','CS 160',1),(10,10000,'2014-12-05 15:49:54','ahuvwrahbuiawhbviruawjv','CS160',106397),(7,10000,'2014-12-05 16:01:33','Brandpejhgap','CS 160',106397),(7,10000,'2014-12-05 16:03:36','noqehgojpovjpqeqe','cs 157',106397),(10,10000,'2014-12-10 13:14:07','blah blah lbha','CS123',106397),(21,10000,'2014-12-10 14:51:09','He suxs!!!!11!!1!1','CS160',106397),(21,10000,'2014-12-10 14:52:05','terrible -infinity/10','no.',106397),(23,10000,'2014-12-10 14:54:35','Worst group member ever!!','CS123',105242),(24,10000,'2014-12-10 16:07:58','arash sucks','CS160',106397),(27,10000,'2014-12-10 19:03:25','Cool guy','CS160',106397),(8,10000,'2014-12-10 19:05:45','he sucks','CS123',106397);
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

LOCK TABLES `School` WRITE;
/*!40000 ALTER TABLE `School` DISABLE KEYS */;
INSERT INTO `School` VALUES (105242,'Mission College','CA'),(106397,'San Jose State University','CA'),(106388,'San Jose City College','CA'),(107099,'West Valley College','CA');
/*!40000 ALTER TABLE `School` ENABLE KEYS */;
UNLOCK TABLES;


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
  `schoolID` bigint(20) NOT NULL,
  PRIMARY KEY (`userID`,`userName`,`email`),
  UNIQUE KEY `userName_UNIQUE` (`userName`),
  UNIQUE KEY `userID_UNIQUE` (`userID`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `schoolID_idx` (`schoolID`),
  CONSTRAINT `schoolID` FOREIGN KEY (`schoolID`) REFERENCES `School` (`schoolID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (7,'ltBrandon','Brandon','R','hagiuhawriugh3','BR@sjsu.edu',106397),(8,'sjArash','Arash','Z','hu3hf79qyf','AZ@sjsu.edu',106397),(10,'sjNabil','Nabil','A','hh48q32gh','NA@sjsu.edu',106397),(14,'rMak','Ron','Mak','makdaddy','rmak@ratemyclassmate.com',106397),(15,'ewrgwqe','egfweqfg','gewga','ewgew','gewgwe',106397),(16,'veqiu','qgq3','fqengu','guierwhg','bueiwqhbg',106397),(17,'cmk123','Cody','K','12345','cmk@cmk.com',106397),(18,'cody','Cody','Klein','12345','cody@cody.com',106397),(19,'brossib','Brandon','Rossi','12345','b@me.co',106397),(20,'jfioej','Brandon','Rossi','9r8513908','eoijgwow',106388),(21,'32it092u','Brandon','Rossi','oiwejgoiwh1','92gi9024gu',106397),(22,'jess','Jessii','A','1234','jess@gmail.com',107099),(23,'sean','Sean','P','123','asdasd@sdfsad.com',105242),(24,'cococo@cococ.com','coco','cocococ','sdfsdf','coco@sdc.co',106397),(25,'Wed Dec 10 17:08:39 PST 2014','test1','test1','abc','Wed Dec 10 17:08:39 PST 2014',106397),(26,'Wed Dec 10 17:09:20 PST 2014','test4','test','abc','Wed Dec 10 17:09:20 PST 2014',106397),(27,'Wed Dec 10 19:00:59 PST 2014','Cody K Timestamp','1234','abc','Wed Dec 10 19:00:59 PST 2014',106397);
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

-- Dump completed on 2014-12-10 19:06:55
