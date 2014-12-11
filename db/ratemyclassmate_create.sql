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
INSERT INTO `Ratings` VALUES (28,940698284,1,2,4,5,3),(28,940998254,4,4,3,1,5),(29,941091221,2,3,1,4,4),(30,941156413,5,5,2,3,5),(30,941167851,2,2,4,5,3),(30,941180362,1,2,3,2,2),(30,941183969,5,5,5,5,5),(31,941246338,5,5,5,5,5),(32,941326375,3,3,4,2,2),(33,941361007,1,2,5,3,2),(34,941408478,2,3,5,4,2),(35,941465530,5,4,2,1,3),(36,942200115,5,5,5,5,5),(37,942238856,1,1,1,1,1),(38,942263028,2,4,2,1,2),(43,942361345,5,5,5,5,5),(44,942372475,5,5,5,5,3),(45,942403498,1,1,1,1,1),(46,942434701,1,5,5,5,5),(47,942473856,5,5,5,5,5),(48,942519321,3,5,2,1,3),(49,941564939,2,5,5,4,3),(50,941616896,5,2,3,4,5),(52,941681083,5,5,5,5,5);
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
INSERT INTO `Reviews` VALUES (28,10000,'2014-12-10 22:36:56','is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s.','CS 160',106397),(28,10000,'2014-12-10 22:37:12','when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.','CS 160',106397),(28,10000,'2014-12-10 22:37:30','It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages.','BUS 160',106397),(28,10000,'2014-12-10 22:37:44','more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.','BUS 160',106397),(28,10000,'2014-12-10 22:38:08','It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English.','CS 157A',106397),(28,10000,'2014-12-10 22:42:13','Hardly available during finals and midterms. Major sweet tooth!','HomeEd',106397),(29,10000,'2014-12-10 22:45:13','Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lorem ipsum\' will uncover many web sites still in their infancy. Various versions have evolved over the ','CS 160',106397),(29,10000,'2014-12-10 22:45:25','There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don\'t look even slightly believable. If you are going to use a passage of','CS 146',106397),(29,10000,'2014-12-10 22:45:45','Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet t','ART 101',106397),(30,10000,'2014-12-10 22:46:47',' tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictionary of over 200 Latin words, combined with a handful of model sentence structures, to generate Lorem Ips','HIST 15A',106397),(30,10000,'2014-12-10 22:47:00',' years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonoru','HIST 15A',106397),(30,10000,'2014-12-10 22:47:18','But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because ','HIST 15B',106397),(31,10000,'2014-12-10 22:48:09','Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, ','CS 160',106397),(31,10000,'2014-12-10 22:48:21','teger tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feug','CS 152',106397),(31,10000,'2014-12-10 22:48:34','Etiam rhoncus. Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt.','CS 174',106397),(32,10000,'2014-12-10 22:49:09','Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo.','ANT 101',106397),(33,10000,'2014-12-10 22:49:40','id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere','ART 15',106397),(33,10000,'2014-12-10 22:49:53',' At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non','ART 12',106397),(34,10000,'2014-12-10 22:50:31','But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system, and expound the actual teachings of the great explorer','BUS 101',106397),(34,10000,'2014-12-10 22:50:44','of the truth, the master-builder of human happiness. No one rejects, dislikes, or avoids pleasure itself, because it is pleasure, but because those who do not know how to pursue pleasure rationally encounter','BUS 149',106397),(34,10000,'2014-12-10 22:50:55','consequences that are extremely painful. Nor again is there anyone who loves or pursues or desires to obtain pain of itself, because it is pain, but because occasionally circumstances occur in which toil and pain can procure him some great pleasure. To take a trivial ','ANT 112',106397),(35,10000,'2014-12-10 22:51:49',' enjoy a pleasure that has no annoying consequences, or one who avoids a pain that produces no resultant pleasure? On the other hand, we denounce with righteous indignation and dislike men who are so beguiled and demoralized by the charms of pleasure of the moment, so blinded by desire, that they cannot foresee','GEOL 12',106397),(35,10000,'2014-12-10 22:52:11',' Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue.','MET 10',106397),(35,10000,'2014-12-10 22:52:28','Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper ','SE 16',106397),(49,10000,'2014-12-10 22:53:04','equat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Q','ART 12',105242),(49,10000,'2014-12-10 22:53:14',' Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper ','ANT 112',105242),(49,10000,'2014-12-10 22:53:29',' massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, a','PE 1009',105242),(50,10000,'2014-12-10 22:53:56','Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales, augue velit cursus nunc,','SE 107',105242),(50,10000,'2014-12-10 22:54:10','eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae','EE 001',105242),(51,10000,'2014-12-10 22:54:39','ugue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce id purus. Ut varius tincidunt libero. Phasellus dolor. Maecenas vestibulum mollis','ENG 101',105242),(52,10000,'2014-12-10 22:55:01','Donec posuere vulputate arcu. Phasellus accumsan cursus velit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. Phasellus consectetuer vestibulum elit. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc. Vestibulum fringilla pede sit amet augue. In turpis. Pellentesque posuere. Praesent turpis. Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis lacus. Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Nullam sagittis. Suspendisse pulvinar,','CS 46A',105242),(53,10000,'2014-12-10 22:55:35','en. Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus. Fusce vel dui. Sed','KIN 101',105242),(36,10000,'2014-12-10 23:03:37','pis egestas. Ut non enim eleifend felis pretium feugiat. Vivamus quis mi. Phasellus a est. Phasellus magna. In hac habitasse platea dictumst. Curabitur at lacus ac velit ornare lobortis. Curabitur a felis in nunc fringilla tristique. Morbi mattis ullamcorper velit. Phasellus gravida semper nisi. Nullam vel sem. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam. Sed hendrerit. Morbi ac felis. Nunc egestas, augue at pellentesque laoreet, felis eros vehicula leo, at malesuada velit leo quis pede. Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi. Nunc nulla. Fusce risus nisl, viverra et, tempor et, pretium in, sapien. Donec v','ART 101',106388),(36,10000,'2014-12-10 23:03:48',', volutpat a, suscipit non, turpis. Nullam sagittis. Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce id purus. Ut ','ENGL 156',106388),(38,10000,'2014-12-10 23:04:43','rbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat. Vivamus quis mi. Phasellus a est. P','ENGL 111',106388),(38,10000,'2014-12-10 23:04:55','malesuada velit leo quis pede. Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi. Nunc nulla. Fusce risus nisl, viverra et, tempor et, pretium in, sapien. Donec venenat','ENGL 111',106388),(38,10000,'2014-12-10 23:05:02','mis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce id purus. Ut varius tincidunt libero. Phasellus dolor. Maecenas vestibulum mollis diam. Pellentesque ut neque. Pellentesque habitant m','ART 15',106388),(38,10000,'2014-12-10 23:05:12','e varius nisi, condimentum viverra felis nunc et lorem. Sed magna purus, fermentum eu, tincidunt eu, varius ut, felis. In auctor lobortis lacus. Quisque libero metus, condimentum nec, tempor a, commod','CS 151',106388),(39,10000,'2014-12-10 23:05:46',' commodo mollis, magna. Vestibulum ullamcorper mauris at ligula. Fusce fer','',106388),(44,10000,'2014-12-10 23:06:28','gestas. Ut non enim eleifend felis pretium feugiat. Vivamus quis mi. Phasellus a est. Phasellus magna. In hac habitasse platea dictumst. Curabitur at lacus ac velit ornare lobortis. Curabitur a felis in nunc fringilla tristique. M','BUS 160',107099),(45,10000,'2014-12-10 23:07:00',', eu sollicitudin urna dolor sagittis lacus. Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Nullam sagittis. Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque velit pede quis nunc. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Fusce id purus. Ut ','BUS 160',107099),(46,10000,'2014-12-10 23:07:35','fermentum libero. Praesent nonummy mi in odio. Nunc interdum lacus sit amet orci. Vestibulum rutrum, mi nec elementum vehicula, eros quam gravida nisl, id fringilla neque ante vel mi. Morbi mollis tellus ac sapien. Phasellus volutpat, metus eget egestas mollis, lacus lacus blandit dui, id egestas quam mauris ut lacus. Fusce vel dui. Sed','SPE 116',107099),(46,10000,'2014-12-10 23:07:51','mi. Nunc nulla. Fusce risus nisl, viverra et, tempor et, pretium in, sapien. Donec venenatis vulputate lorem. Morbi nec metus. Phasellus blandit leo ut odio. Maecenas ullamcorper, dui et placerat feugiat, eros pede varius nisi, condimentum viverra felis nunc et lorem. Sed magna purus, fermentum eu, tincidunt eu, varius ut, felis. In auctor lobortis lacus. Quisque libero metus, condimentum nec, tempor a, commodo mollis, magna. Vestibulum ullamcorper mauris at ligula. Fusce fermentum. Nullam cursus lacinia erat. Praesent blandit laoreet n','SPD 1110',107099),(47,10000,'2014-12-10 23:08:10','ue auctor neque nec urna. Proin sapien ipsum, porta a, auctor quis, euismod ut, mi. Aenean viverra rhoncus pede. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat. Vivamus quis mi. Phasellus a est. Phasellus magna. In hac habitasse platea dictumst. Curabitur a','CS 151',107099),(47,10000,'2014-12-10 23:08:18','olor, tempus non, auctor et, hendrerit quis, nisi. Curabitur ligula sapien, tincidunt non, euismod vitae, posuere imperdiet, leo. Maecenas malesuada. Praesent congue erat at massa. Sed cursus turpis vitae tortor. Donec posuere vulputate arcu. Phasellus accumsan cursus velit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. Phasellus consectetuer vestibulum elit. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc. Vestibulum fringilla pede sit amet augue. In tu','',107099),(47,10000,'2014-12-10 23:08:30','habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Ut non enim eleifend felis pretium feugiat. Vivamus quis mi. Phasellus a est. Phasellus magna. In hac habitasse platea dictumst. Curabitur at lacus ac velit ornare lobortis. Curabitur a felis in nunc fringilla tristique. Morbi mattis ullamcorper velit. Phasellus gravida semper nisi. Nullam vel sem. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam. Sed hendrerit. Morbi ac felis. Nunc egestas, augue at pellentesque laoreet, felis eros vehicula leo, at malesuada velit leo quis','ART 117',107099),(48,10000,'2014-12-10 23:08:55','ursus velit. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Sed aliquam, nisi quis porttitor congue, elit erat euismod orci, ac placerat dolor lectus quis orci. Phasellus consectetuer vestibulum elit. Aenean tellus metus, bibendum sed, posuere ac, mattis non, nunc. Vestibulum fringilla pede sit amet augue. In turpis. Pellentesque posuere. Praesent turpis. Aenean posuere, tortor sed cursus feugiat, nunc augue blandit nunc, eu sollicitudin urna dolor sagittis lacus. Donec elit libero, sodales nec, volutpat a, suscipit non, turpis. Nullam sagittis. Suspendisse pulvinar, augue a','KIN 118',107099),(48,10000,'2014-12-10 23:09:03','umst. Curabitur at lacus ac velit ornare lobortis. Curabitur a felis in nunc fringilla tristique. Morbi mattis ullamcorper velit. Phasellus gravida semper nisi. Nullam vel sem. Pellentesque libero tortor, tincidunt et, tincidunt eget, semper nec, quam. Sed hendrerit. Morbi ac felis. Nunc egestas, augue at pellentesque laoreet, felis eros vehicula leo, at malesuada velit leo quis pede. Donec interdum, metus et hendrerit aliquet,','KIN 12',107099),(48,10000,'2014-12-10 23:09:11','c, volutpat a, suscipit non, turpis. Nullam sagittis. Suspendisse pulvinar, augue ac venenatis condimentum, sem libero volutpat nibh, nec pellentesque v','KIN 12',107099),(48,10000,'2014-12-10 23:09:21','suada velit leo quis pede. Donec interdum, metus et hendrerit aliquet, dolor diam sagittis ligula, eget egestas libero turpis vel mi. Nunc nulla. Fusce risus nisl, viverra et, tempor et, pretium in, sapien. Donec venenatis vulputate lorem. Morbi nec metus. Phasellus blandit leo ut odio. Maece','KIN 119',107099);
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
INSERT INTO `School` VALUES (105242,'Mission College','CA'),(106388,'San Jose City College','CA'),(106397,'San Jose State University','CA'),(107099,'West Valley College','CA');
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
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (28,'Wed Dec 10 22:21:05 PST 2014','Brandon','Rossi','abc','Wed Dec 10 22:21:05 PST 2014',106397),(29,'Wed Dec 10 22:21:37 PST 2014','Nabil','Amiri','abc','Wed Dec 10 22:21:37 PST 2014',106397),(30,'Wed Dec 10 22:21:49 PST 2014','Arash','Zahoory','abc','Wed Dec 10 22:21:49 PST 2014',106397),(31,'Wed Dec 10 22:22:22 PST 2014','Ron','Mak','abc','Wed Dec 10 22:22:22 PST 2014',106397),(32,'Wed Dec 10 22:22:49 PST 2014','Anna','Gonzales','abc','Wed Dec 10 22:22:49 PST 2014',106397),(33,'Wed Dec 10 22:23:13 PST 2014','Ana','Roman-Gonzales','abc','Wed Dec 10 22:23:13 PST 2014',106397),(34,'Wed Dec 10 22:23:26 PST 2014','Jeff','Smith','abc','Wed Dec 10 22:23:26 PST 2014',106397),(35,'Wed Dec 10 22:23:47 PST 2014','Erin ','Bertrand','abc','Wed Dec 10 22:23:47 PST 2014',106397),(36,'Wed Dec 10 22:26:38 PST 2014','Bob','Joseph','abc','Wed Dec 10 22:26:38 PST 2014',106388),(37,'Wed Dec 10 22:26:58 PST 2014','Austin','Merritt','abc','Wed Dec 10 22:26:58 PST 2014',106388),(38,'Wed Dec 10 22:27:34 PST 2014','Amber','Stephen','abc','Wed Dec 10 22:27:34 PST 2014',106388),(39,'Wed Dec 10 22:27:56 PST 2014','Amy','Merritt','abc','Wed Dec 10 22:27:56 PST 2014',106388),(40,'Wed Dec 10 22:28:51 PST 2014','Haden ','Stephen','abc','Wed Dec 10 22:28:51 PST 2014',106388),(41,'Wed Dec 10 22:29:21 PST 2014','Jan','Roman','abc','Wed Dec 10 22:29:21 PST 2014',106388),(42,'Wed Dec 10 22:29:38 PST 2014','Addison','Lynne','abc','Wed Dec 10 22:29:38 PST 2014',106388),(43,'Wed Dec 10 22:32:05 PST 2014','Paola','Ausejo','abc','Wed Dec 10 22:32:05 PST 2014',107099),(44,'Wed Dec 10 22:32:34 PST 2014','Huan','Do','abc','Wed Dec 10 22:32:34 PST 2014',107099),(45,'Wed Dec 10 22:32:42 PST 2014','Michael','Garcia','abc','Wed Dec 10 22:32:42 PST 2014',107099),(46,'Wed Dec 10 22:33:02 PST 2014','Mitsu','Solanki','abc','Wed Dec 10 22:33:02 PST 2014',107099),(47,'Wed Dec 10 22:33:30 PST 2014','Rocio','Avila','abc','Wed Dec 10 22:33:30 PST 2014',107099),(48,'Wed Dec 10 22:33:44 PST 2014','Jasleen','Kaur','abc','Wed Dec 10 22:33:44 PST 2014',107099),(49,'Wed Dec 10 22:34:12 PST 2014','Patrick','Lucey','abc','Wed Dec 10 22:34:12 PST 2014',105242),(50,'Wed Dec 10 22:34:24 PST 2014','Bernard','Mesa','abc','Wed Dec 10 22:34:24 PST 2014',105242),(51,'Wed Dec 10 22:34:36 PST 2014','Dirk','Milotz','abc','Wed Dec 10 22:34:36 PST 2014',105242),(52,'Wed Dec 10 22:34:52 PST 2014','Phuc','Nguyen','abc','Wed Dec 10 22:34:52 PST 2014',105242),(53,'Wed Dec 10 22:35:22 PST 2014','Mickael','Pham','abc','Wed Dec 10 22:35:22 PST 2014',105242),(54,'Wed Dec 10 22:35:48 PST 2014','Kevin','Bui','abc','Wed Dec 10 22:35:48 PST 2014',105242);
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'RateMyClassmate'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-12-10 23:11:42
