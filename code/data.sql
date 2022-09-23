-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB-0+deb9u1

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
-- Table structure for table `generic`
--

DROP TABLE IF EXISTS `generic`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `generic` (
  `id` varchar(27) DEFAULT NULL,
  `name` varchar(51) DEFAULT NULL,
  `address` varchar(26) DEFAULT NULL,
  `types/0` varchar(17) DEFAULT NULL,
  `types/1` varchar(17) DEFAULT NULL,
  `types/2` varchar(17) DEFAULT NULL,
  `types/3` varchar(13) DEFAULT NULL,
  `coordinates/lat` decimal(16,14) DEFAULT NULL,
  `coordinates/lng` decimal(16,14) DEFAULT NULL,
  `rating` decimal(2,1) DEFAULT NULL,
  `rating_n` smallint(6) DEFAULT NULL,
  `current_popularity` varchar(2) DEFAULT NULL,
  `populartimes/0/name` varchar(6) DEFAULT NULL,
  `populartimes/0/data/0` tinyint(4) DEFAULT NULL,
  `populartimes/0/data/1` tinyint(4) DEFAULT NULL,
  `populartimes/0/data/2` tinyint(4) DEFAULT NULL,
  `populartimes/0/data/3` tinyint(4) DEFAULT NULL,
  `populartimes/0/data/4` tinyint(4) DEFAULT NULL,
  `populartimes/0/data/5` tinyint(4) DEFAULT NULL,
  `populartimes/0/data/6` tinyint(4) DEFAULT NULL,
  `populartimes/0/data/7` tinyint(4) DEFAULT NULL,
  `populartimes/0/data/8` tinyint(4) DEFAULT NULL,
  `populartimes/0/data/9` tinyint(4) DEFAULT NULL,
  `populartimes/0/data/10` tinyint(4) DEFAULT NULL,
  `populartimes/0/data/11` smallint(6) DEFAULT NULL,
  `populartimes/0/data/12` tinyint(4) DEFAULT NULL,
  `populartimes/0/data/13` tinyint(4) DEFAULT NULL,
  `populartimes/0/data/14` tinyint(4) DEFAULT NULL,
  `populartimes/0/data/15` tinyint(4) DEFAULT NULL,
  `populartimes/0/data/16` tinyint(4) DEFAULT NULL,
  `populartimes/0/data/17` tinyint(4) DEFAULT NULL,
  `populartimes/0/data/18` tinyint(4) DEFAULT NULL,
  `populartimes/0/data/19` tinyint(4) DEFAULT NULL,
  `populartimes/0/data/20` tinyint(4) DEFAULT NULL,
  `populartimes/0/data/21` tinyint(4) DEFAULT NULL,
  `populartimes/0/data/22` tinyint(4) DEFAULT NULL,
  `populartimes/0/data/23` tinyint(4) DEFAULT NULL,
  `populartimes/1/name` varchar(7) DEFAULT NULL,
  `populartimes/1/data/0` tinyint(4) DEFAULT NULL,
  `populartimes/1/data/1` tinyint(4) DEFAULT NULL,
  `populartimes/1/data/2` tinyint(4) DEFAULT NULL,
  `populartimes/1/data/3` tinyint(4) DEFAULT NULL,
  `populartimes/1/data/4` tinyint(4) DEFAULT NULL,
  `populartimes/1/data/5` tinyint(4) DEFAULT NULL,
  `populartimes/1/data/6` tinyint(4) DEFAULT NULL,
  `populartimes/1/data/7` tinyint(4) DEFAULT NULL,
  `populartimes/1/data/8` tinyint(4) DEFAULT NULL,
  `populartimes/1/data/9` tinyint(4) DEFAULT NULL,
  `populartimes/1/data/10` tinyint(4) DEFAULT NULL,
  `populartimes/1/data/11` smallint(6) DEFAULT NULL,
  `populartimes/1/data/12` tinyint(4) DEFAULT NULL,
  `populartimes/1/data/13` tinyint(4) DEFAULT NULL,
  `populartimes/1/data/14` tinyint(4) DEFAULT NULL,
  `populartimes/1/data/15` tinyint(4) DEFAULT NULL,
  `populartimes/1/data/16` tinyint(4) DEFAULT NULL,
  `populartimes/1/data/17` tinyint(4) DEFAULT NULL,
  `populartimes/1/data/18` tinyint(4) DEFAULT NULL,
  `populartimes/1/data/19` smallint(6) DEFAULT NULL,
  `populartimes/1/data/20` tinyint(4) DEFAULT NULL,
  `populartimes/1/data/21` tinyint(4) DEFAULT NULL,
  `populartimes/1/data/22` tinyint(4) DEFAULT NULL,
  `populartimes/1/data/23` tinyint(4) DEFAULT NULL,
  `populartimes/2/name` varchar(9) DEFAULT NULL,
  `populartimes/2/data/0` tinyint(4) DEFAULT NULL,
  `populartimes/2/data/1` tinyint(4) DEFAULT NULL,
  `populartimes/2/data/2` tinyint(4) DEFAULT NULL,
  `populartimes/2/data/3` tinyint(4) DEFAULT NULL,
  `populartimes/2/data/4` tinyint(4) DEFAULT NULL,
  `populartimes/2/data/5` tinyint(4) DEFAULT NULL,
  `populartimes/2/data/6` tinyint(4) DEFAULT NULL,
  `populartimes/2/data/7` tinyint(4) DEFAULT NULL,
  `populartimes/2/data/8` tinyint(4) DEFAULT NULL,
  `populartimes/2/data/9` tinyint(4) DEFAULT NULL,
  `populartimes/2/data/10` tinyint(4) DEFAULT NULL,
  `populartimes/2/data/11` tinyint(4) DEFAULT NULL,
  `populartimes/2/data/12` smallint(6) DEFAULT NULL,
  `populartimes/2/data/13` tinyint(4) DEFAULT NULL,
  `populartimes/2/data/14` tinyint(4) DEFAULT NULL,
  `populartimes/2/data/15` tinyint(4) DEFAULT NULL,
  `populartimes/2/data/16` tinyint(4) DEFAULT NULL,
  `populartimes/2/data/17` tinyint(4) DEFAULT NULL,
  `populartimes/2/data/18` tinyint(4) DEFAULT NULL,
  `populartimes/2/data/19` tinyint(4) DEFAULT NULL,
  `populartimes/2/data/20` tinyint(4) DEFAULT NULL,
  `populartimes/2/data/21` tinyint(4) DEFAULT NULL,
  `populartimes/2/data/22` tinyint(4) DEFAULT NULL,
  `populartimes/2/data/23` tinyint(4) DEFAULT NULL,
  `populartimes/3/name` varchar(8) DEFAULT NULL,
  `populartimes/3/data/0` tinyint(4) DEFAULT NULL,
  `populartimes/3/data/1` tinyint(4) DEFAULT NULL,
  `populartimes/3/data/2` tinyint(4) DEFAULT NULL,
  `populartimes/3/data/3` tinyint(4) DEFAULT NULL,
  `populartimes/3/data/4` tinyint(4) DEFAULT NULL,
  `populartimes/3/data/5` tinyint(4) DEFAULT NULL,
  `populartimes/3/data/6` tinyint(4) DEFAULT NULL,
  `populartimes/3/data/7` tinyint(4) DEFAULT NULL,
  `populartimes/3/data/8` tinyint(4) DEFAULT NULL,
  `populartimes/3/data/9` tinyint(4) DEFAULT NULL,
  `populartimes/3/data/10` tinyint(4) DEFAULT NULL,
  `populartimes/3/data/11` tinyint(4) DEFAULT NULL,
  `populartimes/3/data/12` tinyint(4) DEFAULT NULL,
  `populartimes/3/data/13` tinyint(4) DEFAULT NULL,
  `populartimes/3/data/14` smallint(6) DEFAULT NULL,
  `populartimes/3/data/15` tinyint(4) DEFAULT NULL,
  `populartimes/3/data/16` tinyint(4) DEFAULT NULL,
  `populartimes/3/data/17` tinyint(4) DEFAULT NULL,
  `populartimes/3/data/18` tinyint(4) DEFAULT NULL,
  `populartimes/3/data/19` tinyint(4) DEFAULT NULL,
  `populartimes/3/data/20` tinyint(4) DEFAULT NULL,
  `populartimes/3/data/21` tinyint(4) DEFAULT NULL,
  `populartimes/3/data/22` tinyint(4) DEFAULT NULL,
  `populartimes/3/data/23` tinyint(4) DEFAULT NULL,
  `populartimes/4/name` varchar(6) DEFAULT NULL,
  `populartimes/4/data/0` tinyint(4) DEFAULT NULL,
  `populartimes/4/data/1` tinyint(4) DEFAULT NULL,
  `populartimes/4/data/2` tinyint(4) DEFAULT NULL,
  `populartimes/4/data/3` tinyint(4) DEFAULT NULL,
  `populartimes/4/data/4` tinyint(4) DEFAULT NULL,
  `populartimes/4/data/5` tinyint(4) DEFAULT NULL,
  `populartimes/4/data/6` tinyint(4) DEFAULT NULL,
  `populartimes/4/data/7` tinyint(4) DEFAULT NULL,
  `populartimes/4/data/8` tinyint(4) DEFAULT NULL,
  `populartimes/4/data/9` tinyint(4) DEFAULT NULL,
  `populartimes/4/data/10` smallint(6) DEFAULT NULL,
  `populartimes/4/data/11` tinyint(4) DEFAULT NULL,
  `populartimes/4/data/12` smallint(6) DEFAULT NULL,
  `populartimes/4/data/13` tinyint(4) DEFAULT NULL,
  `populartimes/4/data/14` smallint(6) DEFAULT NULL,
  `populartimes/4/data/15` tinyint(4) DEFAULT NULL,
  `populartimes/4/data/16` tinyint(4) DEFAULT NULL,
  `populartimes/4/data/17` tinyint(4) DEFAULT NULL,
  `populartimes/4/data/18` tinyint(4) DEFAULT NULL,
  `populartimes/4/data/19` tinyint(4) DEFAULT NULL,
  `populartimes/4/data/20` tinyint(4) DEFAULT NULL,
  `populartimes/4/data/21` tinyint(4) DEFAULT NULL,
  `populartimes/4/data/22` tinyint(4) DEFAULT NULL,
  `populartimes/4/data/23` tinyint(4) DEFAULT NULL,
  `populartimes/5/name` varchar(8) DEFAULT NULL,
  `populartimes/5/data/0` tinyint(4) DEFAULT NULL,
  `populartimes/5/data/1` tinyint(4) DEFAULT NULL,
  `populartimes/5/data/2` tinyint(4) DEFAULT NULL,
  `populartimes/5/data/3` tinyint(4) DEFAULT NULL,
  `populartimes/5/data/4` tinyint(4) DEFAULT NULL,
  `populartimes/5/data/5` tinyint(4) DEFAULT NULL,
  `populartimes/5/data/6` tinyint(4) DEFAULT NULL,
  `populartimes/5/data/7` tinyint(4) DEFAULT NULL,
  `populartimes/5/data/8` tinyint(4) DEFAULT NULL,
  `populartimes/5/data/9` tinyint(4) DEFAULT NULL,
  `populartimes/5/data/10` tinyint(4) DEFAULT NULL,
  `populartimes/5/data/11` tinyint(4) DEFAULT NULL,
  `populartimes/5/data/12` tinyint(4) DEFAULT NULL,
  `populartimes/5/data/13` tinyint(4) DEFAULT NULL,
  `populartimes/5/data/14` tinyint(4) DEFAULT NULL,
  `populartimes/5/data/15` tinyint(4) DEFAULT NULL,
  `populartimes/5/data/16` tinyint(4) DEFAULT NULL,
  `populartimes/5/data/17` tinyint(4) DEFAULT NULL,
  `populartimes/5/data/18` tinyint(4) DEFAULT NULL,
  `populartimes/5/data/19` tinyint(4) DEFAULT NULL,
  `populartimes/5/data/20` tinyint(4) DEFAULT NULL,
  `populartimes/5/data/21` tinyint(4) DEFAULT NULL,
  `populartimes/5/data/22` tinyint(4) DEFAULT NULL,
  `populartimes/5/data/23` smallint(6) DEFAULT NULL,
  `populartimes/6/name` varchar(6) DEFAULT NULL,
  `populartimes/6/data/0` tinyint(4) DEFAULT NULL,
  `populartimes/6/data/1` tinyint(4) DEFAULT NULL,
  `populartimes/6/data/2` tinyint(4) DEFAULT NULL,
  `populartimes/6/data/3` tinyint(4) DEFAULT NULL,
  `populartimes/6/data/4` tinyint(4) DEFAULT NULL,
  `populartimes/6/data/5` tinyint(4) DEFAULT NULL,
  `populartimes/6/data/6` tinyint(4) DEFAULT NULL,
  `populartimes/6/data/7` tinyint(4) DEFAULT NULL,
  `populartimes/6/data/8` tinyint(4) DEFAULT NULL,
  `populartimes/6/data/9` tinyint(4) DEFAULT NULL,
  `populartimes/6/data/10` tinyint(4) DEFAULT NULL,
  `populartimes/6/data/11` tinyint(4) DEFAULT NULL,
  `populartimes/6/data/12` tinyint(4) DEFAULT NULL,
  `populartimes/6/data/13` tinyint(4) DEFAULT NULL,
  `populartimes/6/data/14` tinyint(4) DEFAULT NULL,
  `populartimes/6/data/15` tinyint(4) DEFAULT NULL,
  `populartimes/6/data/16` tinyint(4) DEFAULT NULL,
  `populartimes/6/data/17` tinyint(4) DEFAULT NULL,
  `populartimes/6/data/18` tinyint(4) DEFAULT NULL,
  `populartimes/6/data/19` tinyint(4) DEFAULT NULL,
  `populartimes/6/data/20` tinyint(4) DEFAULT NULL,
  `populartimes/6/data/21` tinyint(4) DEFAULT NULL,
  `populartimes/6/data/22` tinyint(4) DEFAULT NULL,
  `populartimes/6/data/23` tinyint(4) DEFAULT NULL,
  `time_spent/0` varchar(2) DEFAULT NULL,
  `time_spent/1` varchar(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `generic`
--

LOCK TABLES `generic` WRITE;
/*!40000 ALTER TABLE `generic` DISABLE KEYS */;
INSERT INTO `generic` VALUES ('ChIJYW7ZL-hJXhMR9ve2dpMf5Io','Ελληνικά Ταχυδρομεία (ΕΛΤΑ)','Maizonos 32, Patra','post_office','finance','point_of_interest','establishment',38.24980440000000,21.73893910000000,1.5,161,'60','Monday',0,0,0,0,0,0,0,22,47,71,83,89,90,80,58,0,0,0,0,0,0,0,0,0,'Tuesday',0,0,0,0,0,0,0,30,63,88,92,90,90,81,56,0,0,0,0,0,0,0,0,0,'Wednesday',0,0,0,0,0,0,0,25,59,84,91,94,100,90,64,0,0,0,0,0,0,0,0,0,'Thursday',0,0,0,0,0,0,0,10,40,80,97,86,87,85,50,0,0,0,0,0,0,0,0,0,'Friday',0,0,0,0,0,0,0,19,44,51,49,66,92,90,60,0,0,0,0,0,0,0,0,0,'Saturday',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'Sunday',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'15','15'),('ChIJaczbf8JJXhMR9QcBFbdskRA','B.M.G. RENTACAR','Andrea Papandreou 1, Patra','car_rental','point_of_interest','establishment','',38.25064699999999,21.73728400000000,1.0,1,'','Monday',0,0,0,0,0,0,0,0,0,44,55,51,41,24,0,0,0,0,0,0,0,0,0,0,'Tuesday',0,0,0,0,0,0,0,0,0,48,62,51,27,10,0,0,0,3,10,0,0,0,0,0,'Wednesday',0,0,0,0,0,0,0,0,0,58,72,55,24,0,0,0,0,0,3,10,0,0,0,0,'Thursday',0,0,0,0,0,0,0,0,0,55,72,55,27,6,0,0,0,6,13,13,0,0,0,0,'Friday',0,0,0,0,0,0,0,0,0,72,100,75,44,17,0,0,0,0,3,3,0,0,0,0,'Saturday',0,0,0,0,0,0,0,0,0,41,65,51,17,0,0,0,0,0,0,0,0,0,0,0,'Sunday',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',''),('ChIJFxIYOehJXhMRTnfIBMK7Cjw','eCig Hellas Ηλεκτρονικο Τσιγαρο - Πάτρα','Maizonos 47, Patra','electronics_store','point_of_interest','store','establishment',38.24966320000001,21.73905090000000,4.9,208,'','Monday',0,0,0,0,0,0,0,0,0,49,80,100,92,63,33,0,0,0,0,0,0,0,0,0,'Tuesday',0,0,0,0,0,0,0,0,0,31,49,59,56,40,22,12,14,31,52,56,36,0,0,0,'Wednesday',0,0,0,0,0,0,0,0,0,12,31,50,49,28,10,0,0,0,0,0,0,0,0,0,'Thursday',0,0,0,0,0,0,0,0,0,35,54,66,64,49,29,14,8,21,56,64,31,0,0,0,'Friday',0,0,0,0,0,0,0,0,0,42,68,78,66,42,19,8,14,42,71,64,33,0,0,0,'Saturday',0,0,0,0,0,0,0,0,0,7,22,49,68,61,36,0,0,0,0,0,0,0,0,0,'Sunday',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',''),('ChIJSap7relJXhMRUkopSQsXwuI','spelectronics.gr - ΗΛΕΚΤΡΟΝΙΚΑ ΗΛΕΚΤΡΟΛΟΓΙΚΑ ΠΑΤΡΑΣ','Satovriandou 43-47, Patra','electronics_store','point_of_interest','store','establishment',38.25016700000000,21.73982400000000,4.8,59,'','Monday',0,0,0,0,0,0,0,0,0,14,59,54,59,64,28,0,0,0,0,0,0,0,0,0,'Tuesday',0,0,0,0,0,0,0,0,0,9,52,80,95,95,0,0,0,28,64,59,21,0,0,0,'Wednesday',0,0,0,0,0,0,0,0,0,19,52,88,100,78,40,0,0,0,0,0,0,0,0,0,'Thursday',0,0,0,0,0,0,0,0,0,7,21,57,92,88,0,0,0,54,64,40,14,0,0,0,'Friday',0,0,0,0,0,0,0,0,0,30,57,73,71,50,0,0,0,21,26,26,23,0,0,0,'Saturday',0,0,0,0,0,0,0,0,0,40,73,97,97,73,40,0,0,0,0,0,0,0,0,0,'Sunday',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'15','15'),('ChIJhT1xJuhJXhMRB_dOMAB9G8A','Κατσαρόλα της Τούλας','Riga Fereou 49, Patra','restaurant','food','point_of_interest','establishment',38.24998220000000,21.73796140000000,4.6,554,'6','Monday',0,0,0,0,0,0,0,0,0,0,0,12,25,39,43,33,20,12,9,7,0,0,0,0,'Tuesday',0,0,0,0,0,0,0,0,0,0,0,10,21,45,66,62,37,17,14,19,0,0,0,0,'Wednesday',0,0,0,0,0,0,0,0,0,0,0,17,37,60,68,53,32,19,12,9,0,0,0,0,'Thursday',0,0,0,0,0,0,0,0,0,0,0,22,53,91,100,72,41,27,22,15,0,0,0,0,'Friday',0,0,0,0,0,0,0,0,0,0,0,14,39,80,100,72,31,11,10,13,0,0,0,0,'Saturday',0,0,0,0,0,0,0,0,0,0,0,12,21,43,64,56,30,12,6,3,0,0,0,0,'Sunday',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'20','60'),('ChIJHf2oKOhJXhMRU48jxmo1y6s','Zolotas S.A.','Riga Fereou 32, Patra','point_of_interest','store','establishment','',38.25010920000000,21.73789170000000,4.3,75,'','Monday',0,0,0,0,0,0,0,0,0,60,76,72,74,84,42,0,0,0,0,0,0,0,0,0,'Tuesday',0,0,0,0,0,0,0,0,0,70,76,68,80,86,0,0,0,52,88,100,72,0,0,0,'Wednesday',0,0,0,0,0,0,0,0,0,60,78,76,72,56,32,0,0,0,0,0,0,0,0,0,'Thursday',0,0,0,0,0,0,0,0,0,46,62,64,74,62,0,0,0,34,68,76,46,0,0,0,'Friday',0,0,0,0,0,0,0,0,0,52,82,90,100,44,0,0,0,36,88,98,50,0,0,0,'Saturday',0,0,0,0,0,0,0,0,0,36,68,88,84,56,0,0,0,0,0,0,0,0,0,0,'Sunday',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'15','15'),('ChIJOeK7WuhJXhMRp1dmjE1OOmo','ΑΝΑΣΤΑΣΟΠΟΥΛΟΣ ΙΩΑΝΝΗΣ','Korinthou 156, Patra','electronics_store','point_of_interest','store','establishment',38.24964899999999,21.73991939999999,4.5,43,'','Monday',0,0,0,0,0,0,0,0,35,81,84,50,52,66,37,0,0,0,0,0,0,0,0,0,'Tuesday',0,0,0,0,0,0,0,0,20,50,84,100,83,49,22,0,0,22,32,32,20,0,0,0,'Wednesday',0,0,0,0,0,0,0,0,45,66,67,84,100,83,45,0,0,0,0,0,0,0,0,0,'Thursday',0,0,0,0,0,0,0,0,32,60,75,67,45,30,24,0,0,32,30,28,22,0,0,0,'Friday',0,0,0,0,0,0,0,0,16,50,75,69,64,54,30,0,0,24,32,32,24,0,0,0,'Saturday',0,0,0,0,0,0,0,0,16,30,37,43,45,37,20,0,0,0,0,0,0,0,0,0,'Sunday',0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'',''),('ChIJLWNTMuhJXhMRc0uCYczaWys','Bocas','Riga Fereou 39, Patra','bar','point_of_interest','establishment','',38.25042600000000,21.73854060000000,4.6,403,'14','Monday',20,10,0,0,0,0,0,0,0,9,12,15,17,16,13,9,6,5,6,7,7,7,7,6,'Tuesday',6,6,0,0,0,0,0,0,0,10,11,12,12,11,10,9,8,8,10,14,21,27,31,30,'Wednesday',25,18,0,0,0,0,0,0,0,11,12,13,12,11,9,7,5,4,3,6,13,27,42,50,'Thursday',43,29,0,0,0,0,0,0,0,9,12,15,16,14,10,6,4,5,10,19,30,39,42,37,'Friday',26,15,0,0,0,0,0,0,4,6,8,9,9,9,8,7,6,6,9,17,32,51,71,83,'Saturday',78,57,0,0,0,0,0,0,10,12,14,14,14,13,11,9,7,6,7,12,27,52,82,100,'Sunday',95,70,0,0,0,0,0,0,0,8,8,9,9,8,8,7,7,7,7,9,17,28,35,31,'45','150');
/*!40000 ALTER TABLE `generic` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-08-22 15:20:24
