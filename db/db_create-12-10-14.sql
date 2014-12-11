CREATE DATABASE  IF NOT EXISTS `RateMyClassmate` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `RateMyClassmate`;
-- MySQL dump 10.13  Distrib 5.6.17, for osx10.6 (i386)
--
-- Host: localhost    Database: RateMyClassmate
-- ------------------------------------------------------
-- Server version	5.6.20

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
INSERT INTO `Ratings` VALUES (7,8,1,2,3,4,5),(7,9,3,2,3,2,5),(7,10,1,1,1,1,1),(7,10000,5,5,5,5,5),(7,487827195,5,5,5,5,5),(7,487829792,5,5,5,5,5),(7,487832348,5,5,5,5,5),(7,750790671,4,3,5,5,5),(7,750806672,2,2,2,3,1),(8,7,4,4,4,4,4),(8,9,1,2,3,4,5),(8,10,3,3,2,5,5),(9,7,1,2,3,4,5),(9,8,5,4,3,2,1),(9,10,1,2,3,4,5),(10,12,1,1,1,1,1),(14,10,4,5,2,3,4);
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
INSERT INTO `Reviews` VALUES (7,8,'2014-10-10 16:34:28','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry','CS 160',1),(7,9,'2014-10-10 16:34:28','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.','CS 160',1),(7,10,'2014-10-10 16:34:28','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry','CS 160',1),(8,7,'2014-10-10 16:34:28','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.','CS 160',1),(8,9,'2014-10-10 16:34:28','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry','CS 160',1),(8,10,'2014-10-10 16:34:28','All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary','CS 160',1),(9,7,'2014-10-10 16:34:28','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry','CS 160',1),(9,8,'2014-10-10 16:34:28','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.','CS 160',1),(9,10,'2014-10-10 16:34:28','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry','CS 160',1),(11,12,'2014-10-10 16:34:28','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry','CS 160',1),(12,11,'2014-10-10 16:34:28','All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary','CS 160',1),(12,7,'2014-10-10 16:36:44','All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary','CS 146',1),(12,8,'2014-10-10 16:36:44','All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary','CS 146',1),(12,10,'2014-10-10 16:36:44','All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary','BUS 12',2),(12,7,'2014-10-10 16:36:54','All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary','CS 146',1),(12,8,'2014-10-10 16:36:54','All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary','CS 146',1),(12,10,'2014-10-10 16:36:54','All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary','BUS 12',2),(10,7,'2014-10-10 16:36:54','The Raiders are a better football team than Nabil is a group member. That is really saying something considering the Raiders just lost 52-0','CS 160',1),(10,5,'2014-12-01 11:39:01','If I wanted to kill myself, I would climb to the top of Nabil\'s ego and jump to his IQ. ','CS 160',1),(8,10,'0000-00-00 00:00:00','Sometimes Arash comes to class dressed like Enrique Inglesias, but thats okay... He\'s special and we accept him for who he is...','CS 160',3),(10,10000,'2014-12-05 15:49:54','ahuvwrahbuiawhbviruawjv','CS160',106397),(7,10000,'2014-12-05 16:01:33','Brandpejhgap','CS 160',106397),(7,10000,'2014-12-05 16:03:36','noqehgojpovjpqeqe','cs 157',106397);
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
  `schoolID` bigint(20) NOT NULL,
  PRIMARY KEY (`userID`,`userName`,`email`),
  UNIQUE KEY `userName_UNIQUE` (`userName`),
  UNIQUE KEY `userID_UNIQUE` (`userID`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `schoolID_idx` (`schoolID`),
  CONSTRAINT `schoolID` FOREIGN KEY (`schoolID`) REFERENCES `School` (`schoolID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (7,'ltBrandon','Brandon','R','hagiuhawriugh3','BR@sjsu.edu',106397),(8,'sjArash','Arash','Z','hu3hf79qyf','AZ@sjsu.edu',106397),(9,'sjCody','Cody','K','f9832hg9qhgcd','CK@sjsu.edu',0),(10,'sjNabil','Nabil','A','hh48q32gh','NA@sjsu.edu',106397),(11,'ltAnna','Anna','G','hiuehiugweh9q83','AG@sjsu.edu',0),(12,'sjMatt','Matt','P','qhfg8239hg9823hg','MP@sjsu.edu',0),(13,'cmk','Joe','L','123456','test@edu.com',0),(14,'rMak','Ron','Mak','makdaddy','rmak@ratemyclassmate.com',106397),(15,'ewrgwqe','egfweqfg','gewga','ewgew','gewgwe',106397),(16,'veqiu','qgq3','fqengu','guierwhg','bueiwqhbg',106397),(17,'cmk123','Cody','K','12345','cmk@cmk.com',106397),(18,'cody','Cody','Klein','12345','cody@cody.com',106397),(19,'brossib','Brandon','Rossi','12345','b@me.co',106397),(20,'jfioej','Brandon','Rossi','9r8513908','eoijgwow',106388),(21,'32it092u','Brandon','Rossi','oiwejgoiwh1','92gi9024gu',106397);
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'RateMyClassmate'
--

--
-- Dumping routines for database 'RateMyClassmate'
--
/*!50003 DROP PROCEDURE IF EXISTS `avgAgeUsersWithLoanOverXDollars` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `avgAgeUsersWithLoanOverXDollars`(IN `inAmount` DOUBLE(15,2))
SELECT avg(age)
FROM loan, userinfo, customer_account_link
WHERE userinfo.uID = customer_account_link.uID 
	AND customer_account_link.accountID = loan.accountID 
	AND loan.amount > inAmount ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `changePassword` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `changePassword`(IN `customerID` VARCHAR(15) CHARSET utf8)
BEGIN
		UPDATE customerinfo
		SET password = new.password
		WHERE uID = customerID;
	END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `createNewCustomer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `createNewCustomer`(IN `name` VARCHAR(30), IN `username` VARCHAR(30), IN `email` VARCHAR(30), IN `phoneNumber` VARCHAR(30), IN `password` VARCHAR(30), IN `age` INT, IN `ssn` VARCHAR(30))
BEGIN

	INSERT INTO userinfo (uID, password, name, age, email, ssn, phoneNumber) VALUES(userName, password, name, age, email, ssn, phoneNumber);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getAccountActivity` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getAccountActivity`(IN `inAccountID` INT(11), IN `accountType` ENUM('Checking','Savings','Loan') CHARSET utf8)
SELECT transactiondate, actionDone, amount, newBalance
FROM accountactivity
WHERE accountID=inAccountID AND type=accountType
ORDER BY transactiondate DESC ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCheckingBalance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getCheckingBalance`(IN `userID` VARCHAR(30) CHARSET utf8, OUT `accountBalance` DOUBLE)
BEGIN

	SELECT balance INTO accountBalance
	FROM checkingAccount, customer_account_link
	WHERE customer_account_link.uID = userID
		AND customer_account_link.accountID = checkingAccount.accountID;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getCustomerInfo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getCustomerInfo`(IN `userID` VARCHAR(30) CHARSET utf8, OUT `outID` VARCHAR(30) CHARSET utf8, OUT `outName` VARCHAR(30) CHARSET utf8, OUT `outAge` INT, OUT `outEmail` VARCHAR(30) CHARSET utf8, OUT `outPhone` VARCHAR(30) CHARSET utf8)
BEGIN
	SELECT uID, name, age, email, phoneNumber
	INTO outID, outName, outAge, outEmail, outPhone
	FROM userinfo
	WHERE uID = userID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getLinkInfo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getLinkInfo`(IN `customerID` VARCHAR(15) CHARSET utf8, OUT `account_ID` INT(30), OUT `u_ID` VARCHAR(15) CHARSET utf8, OUT `has_Checking` TINYINT(1), OUT `has_Savings` TINYINT(1), OUT `has_Loan` TINYINT(1))
SELECT accountID, uID, hasChecking, hasSavings, hasLoan
INTO account_ID, u_ID, has_Checking, has_Savings, has_Loan
FROM customer_account_link
WHERE uID = customerID ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getLoanAmount` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getLoanAmount`(IN `userID` VARCHAR(30) CHARSET utf8, OUT `accountBalance` DOUBLE)
BEGIN

	SELECT amount INTO accountBalance
	FROM loan, customer_account_link
	WHERE customer_account_link.uID = userID
		AND customer_account_link.accountID = loan.accountID;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getProblemCustomers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getProblemCustomers`(IN `messageLimit` INT)
select userinfo.uID, userinfo.name, userinfo.email, userinfo.phoneNumber, count(customercomplaints.uID) as totalNumberOfComplaints
from userinfo, customercomplaints
where userinfo.uID = customercomplaints.uID
group by customercomplaints.uID
having count(customercomplaints.uID) > messageLimit ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getSavingsBalance` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getSavingsBalance`(IN `userID` VARCHAR(30) CHARSET utf8, OUT `accountBalance` DOUBLE)
BEGIN

	SELECT balance INTO accountBalance
	FROM savingsAccount, customer_account_link
	WHERE customer_account_link.uID = userID
		AND customer_account_link.accountID = savingsAccount.accountID;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `hasAccounts` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `hasAccounts`(IN `userID` VARCHAR(30) CHARSET utf8, OUT `checking` BOOLEAN, OUT `savings` BOOLEAN, OUT `loan` BOOLEAN)
BEGIN

	SELECT
    	hasChecking INTO checking
    FROM customer_account_link
    WHERE uID = userID;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `loginCustomer` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `loginCustomer`(IN `customerID` VARCHAR(15) CHARSET utf8, IN `customerPassword` VARCHAR(50) CHARSET utf8)
BEGIN
		SELECT userinfo.uID, userinfo.password, userinfo.type, accountID
		FROM userinfo, customer_account_link
		WHERE userinfo.uID = customerID and password = customerPassword
and customerID  =  customer_account_link.uID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-10 13:09:58
