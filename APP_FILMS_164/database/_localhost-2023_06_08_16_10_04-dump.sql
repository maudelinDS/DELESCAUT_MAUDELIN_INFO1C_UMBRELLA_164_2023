-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: DELESCAUT_MAUDELIN_INFO1C_UMBRELLA_164_2023
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `t_activity`
--

DROP TABLE IF EXISTS `t_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_activity` (
  `activity_id` int NOT NULL AUTO_INCREMENT,
  `activity_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_activity`
--

LOCK TABLES `t_activity` WRITE;
/*!40000 ALTER TABLE `t_activity` DISABLE KEYS */;
INSERT INTO `t_activity` VALUES (1,'Badminton'),(2,'Basketball'),(3,'Bowling'),(4,'Cinéma'),(5,'Course à pied'),(6,'Cyclisme'),(7,'Equitation'),(8,'Escalade'),(9,'Escape Game'),(10,'Football'),(11,'Hockey sur glace'),(12,'Laser Game'),(13,'Mini-Golf'),(14,'Musée'),(15,'Natation'),(16,'Paint-Ball'),(17,'Parcours'),(18,'Patinage'),(19,'Peau de Phoque'),(20,'Pedalo'),(21,'Planche à voile'),(22,'Pétanque'),(23,'Rafting'),(24,'Randonnée'),(25,'Rugby'),(26,'Saut à l’ élastique'),(27,'Ski'),(28,'Ski de fond'),(29,'Ski nautique'),(30,'Snow'),(31,'Squash'),(32,'Stande de tir'),(33,'Surf'),(34,'Tennis'),(35,'Tennis de table'),(36,'Tir à l’arc'),(37,'Tour Hélicoptère'),(38,'Trampoline'),(39,'Uni-Hockey'),(40,'Volley'),(41,'VTT'),(42,'Piscine-ext'),(43,'Badminton'),(44,'Basketball'),(45,'Bowling'),(46,'Cinéma'),(47,'Course à pied'),(48,'Cyclisme'),(49,'Equitation'),(50,'Escalade'),(51,'Escape Game'),(52,'Football'),(53,'Hockey sur glace'),(54,'Laser Game'),(55,'Mini-Golf'),(56,'Musée'),(57,'Natation'),(58,'Paint-Ball'),(59,'Parcours'),(60,'Patinage'),(61,'Peau de Phoque'),(62,'Pedalo'),(63,'Planche à voile'),(64,'Pétanque'),(65,'Rafting'),(66,'Randonnée'),(67,'Rugby'),(68,'Saut à l’ élastique'),(69,'Ski'),(70,'Ski de fond'),(71,'Ski nautique'),(72,'Snow'),(73,'Squash'),(74,'Stande de tir'),(75,'Surf'),(76,'Tennis'),(77,'Tennis de table'),(78,'Tir à l’arc'),(79,'Tour Hélicoptère'),(80,'Trampoline'),(81,'Uni-Hockey'),(82,'Volley'),(83,'VTT'),(84,'Piscine-ext'),(85,'Badminton'),(86,'Basketball'),(87,'Bowling'),(88,'Cinéma'),(89,'Course à pied'),(90,'Cyclisme'),(91,'Equitation'),(92,'Escalade'),(93,'Escape Game'),(94,'Football'),(95,'Hockey sur glace'),(96,'Laser Game'),(97,'Mini-Golf'),(98,'Musée'),(99,'Natation'),(100,'Paint-Ball'),(101,'Parcours'),(102,'Patinage'),(103,'Peau de Phoque'),(104,'Pedalo'),(105,'Planche à voile'),(106,'Pétanque'),(107,'Rafting'),(108,'Randonnée'),(109,'Rugby'),(110,'Saut à l’ élastique'),(111,'Ski'),(112,'Ski de fond'),(113,'Ski nautique'),(114,'Snow'),(115,'Squash'),(116,'Stande de tir'),(117,'Surf'),(118,'Tennis'),(119,'Tennis de table'),(120,'Tir à l’arc'),(121,'Tour Hélicoptère'),(122,'Trampoline'),(123,'Uni-Hockey'),(124,'Volley'),(125,'VTT'),(126,'Piscine-ext');
/*!40000 ALTER TABLE `t_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_activity_environ`
--

DROP TABLE IF EXISTS `t_activity_environ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_activity_environ` (
  `activity_environ_id` int NOT NULL AUTO_INCREMENT,
  `fk_environ` int NOT NULL,
  `fk_activity` int NOT NULL,
  PRIMARY KEY (`activity_environ_id`),
  KEY `fk_activity` (`fk_activity`),
  KEY `fk_environ` (`fk_environ`),
  CONSTRAINT `t_activity_environ_ibfk_1` FOREIGN KEY (`fk_environ`) REFERENCES `t_environ` (`environ_id`),
  CONSTRAINT `t_activity_environ_ibfk_2` FOREIGN KEY (`fk_activity`) REFERENCES `t_activity` (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_activity_environ`
--

LOCK TABLES `t_activity_environ` WRITE;
/*!40000 ALTER TABLE `t_activity_environ` DISABLE KEYS */;
INSERT INTO `t_activity_environ` VALUES (1,1,1),(2,2,1),(3,2,2),(4,1,3),(5,1,4),(6,2,5),(7,2,6),(8,2,7),(9,1,8),(10,2,8),(11,1,9),(12,2,10),(13,1,11),(14,1,12),(15,2,13),(16,1,14),(17,1,15),(18,1,16),(19,2,17),(20,1,18),(21,2,19),(22,2,20),(23,2,21),(24,2,23),(25,2,24),(26,2,25),(27,2,26),(28,2,27),(29,2,28),(30,2,29),(31,2,30),(32,2,31),(33,1,32),(34,1,33),(35,2,34),(36,2,35),(37,2,36),(38,2,37),(39,2,38),(40,1,39),(41,2,41),(42,2,42);
/*!40000 ALTER TABLE `t_activity_environ` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_activity_weather`
--

DROP TABLE IF EXISTS `t_activity_weather`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_activity_weather` (
  `activity_weather_id` int NOT NULL AUTO_INCREMENT,
  `fk_weather` int NOT NULL,
  `fk_activity` int NOT NULL,
  `score` int NOT NULL,
  PRIMARY KEY (`activity_weather_id`),
  KEY `fk_weather` (`fk_weather`),
  KEY `fk_activity` (`fk_activity`),
  CONSTRAINT `t_activity_weather_ibfk_1` FOREIGN KEY (`fk_weather`) REFERENCES `t_weather` (`weather_id`),
  CONSTRAINT `t_activity_weather_ibfk_2` FOREIGN KEY (`fk_activity`) REFERENCES `t_activity` (`activity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_activity_weather`
--

LOCK TABLES `t_activity_weather` WRITE;
/*!40000 ALTER TABLE `t_activity_weather` DISABLE KEYS */;
INSERT INTO `t_activity_weather` VALUES (1,1,1,5),(2,2,1,5),(3,3,1,5),(4,4,1,5),(5,5,1,1),(6,1,2,1),(7,2,2,1),(8,3,2,2),(9,4,2,1),(10,5,2,5),(11,1,3,5),(12,2,3,5),(13,3,3,4),(14,4,3,4),(15,5,3,1),(16,1,4,5),(17,2,4,5),(18,3,4,5),(19,4,4,5),(20,5,4,1),(21,1,5,1),(22,2,5,2),(23,3,5,3),(24,4,5,1),(25,5,5,5),(26,1,6,1),(27,2,6,1),(28,3,6,3),(29,4,6,2),(30,5,6,5),(31,1,7,1),(32,2,7,1),(33,3,7,2),(34,4,7,2),(35,5,7,5),(36,1,8,1),(37,2,8,1),(38,3,8,1),(39,4,8,4),(40,5,8,5),(41,1,9,5),(42,2,9,5),(43,3,9,5),(44,4,9,5),(45,5,9,1),(46,1,10,5),(47,2,10,1),(48,3,10,3),(49,4,10,2),(50,5,10,5),(51,1,11,5),(52,2,11,5),(53,3,11,5),(54,4,11,5),(55,5,11,3),(56,1,12,5),(57,2,12,5),(58,3,12,5),(59,4,12,5),(60,5,12,1),(61,1,13,1),(62,2,13,1),(63,3,13,2),(64,4,13,1),(65,5,13,5),(66,1,14,5),(67,2,14,5),(68,3,14,5),(69,4,14,5),(70,5,14,1),(71,1,15,5),(72,2,15,5),(73,3,15,5),(74,5,15,2),(75,1,16,1),(76,2,16,1),(77,3,16,2),(78,4,16,1),(79,5,16,5),(80,1,17,1),(81,2,17,1),(82,3,17,3),(83,4,17,1),(84,5,17,5),(85,1,18,5),(86,2,18,5),(87,3,18,5),(88,4,18,5),(89,5,18,2),(90,1,19,1),(91,2,19,5),(92,3,19,1),(93,4,19,1),(94,5,19,5),(95,1,20,1),(96,2,20,1),(97,3,20,2),(98,4,20,1),(99,5,20,5),(100,1,21,1),(101,2,21,1),(102,3,21,1),(103,4,21,1),(104,5,21,5),(105,1,23,1),(106,2,23,1),(107,3,23,2),(108,4,23,1),(109,5,23,5),(110,1,24,1),(111,2,24,1),(112,3,24,2),(113,4,24,2),(114,5,24,5),(115,1,25,1),(116,2,25,3),(117,3,25,3),(118,4,25,3),(119,5,25,5),(120,1,26,1),(121,2,26,1),(122,3,26,2),(123,4,26,1),(124,5,26,5),(125,1,27,1),(126,2,27,1),(127,3,27,1),(128,4,27,1),(129,5,27,5),(130,1,28,1),(131,2,28,2),(132,3,28,3),(133,4,28,1),(134,5,28,5),(135,1,29,1),(136,2,29,2),(137,3,29,3),(138,4,29,1),(139,5,29,5),(140,1,30,1),(141,2,30,1),(142,3,30,2),(143,4,30,1),(144,5,30,5),(145,1,31,1),(146,2,31,2),(147,3,31,3),(148,4,31,1),(149,5,31,5),(150,1,32,5),(151,2,32,5),(152,3,32,5),(153,4,32,5),(154,5,32,1),(155,1,33,5),(156,2,33,5),(157,3,33,5),(158,4,33,5),(159,5,33,1),(160,1,34,1),(161,2,34,1),(162,3,34,1),(163,4,34,1),(164,5,34,5),(165,1,35,1),(166,2,35,1),(167,3,35,2),(168,4,35,1),(169,5,35,5),(170,1,36,1),(171,2,36,1),(172,3,36,3),(173,4,36,1),(174,5,36,5),(175,1,37,1),(176,2,37,1),(177,3,37,2),(178,4,37,1),(179,5,37,5),(180,1,38,1),(181,2,38,1),(182,3,38,3),(183,4,38,1),(184,5,38,5),(185,1,39,5),(186,2,39,5),(187,3,39,5),(188,4,39,5),(189,5,39,1),(190,1,41,1),(191,2,41,1),(192,3,41,2),(193,4,41,1),(194,5,41,5),(195,1,42,1),(196,2,42,1),(197,3,42,3),(198,4,42,1),(199,5,42,5);
/*!40000 ALTER TABLE `t_activity_weather` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_environ`
--

DROP TABLE IF EXISTS `t_environ`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_environ` (
  `environ_id` int NOT NULL AUTO_INCREMENT,
  `environ_name` varchar(30) NOT NULL,
  PRIMARY KEY (`environ_id`),
  UNIQUE KEY `environ_name` (`environ_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_environ`
--

LOCK TABLES `t_environ` WRITE;
/*!40000 ALTER TABLE `t_environ` DISABLE KEYS */;
INSERT INTO `t_environ` VALUES (1,'inside'),(2,'outside');
/*!40000 ALTER TABLE `t_environ` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `t_weather`
--

DROP TABLE IF EXISTS `t_weather`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_weather` (
  `weather_id` int NOT NULL AUTO_INCREMENT,
  `weather_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`weather_id`)
) ENGINE=InnoDB AUTO_INCREMENT=127 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `t_weather`
--

LOCK TABLES `t_weather` WRITE;
/*!40000 ALTER TABLE `t_weather` DISABLE KEYS */;
INSERT INTO `t_weather` VALUES (0,'Orageux'),(1,'Enneigé'),(2,'Nuageux'),(3,'Pluvieux'),(4,'Ensoleillée');
/*!40000 ALTER TABLE `t_weather` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-08 16:10:04
