DROP DATABASE IF EXISTS DELESCAUT_MAUDELIN_INFO1C_UMBRELLA_164_2023;

-- Création d'un nouvelle base de donnée

CREATE DATABASE IF NOT EXISTS DELESCAUT_MAUDELIN_INFO1C_UMBRELLA_164_2023;

-- Utilisation de cette base de donnée

USE DELESCAUT_MAUDELIN_INFO1C_UMBRELLA_164_2023;

-- MySQL dump 10.13  Distrib 8.0.33, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: DELESCAUT_MAUDELIN_INFO1C_UMBRELLA_164_2023
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT = @@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS = @@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION = @@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE = @@TIME_ZONE */;
/*!40103 SET TIME_ZONE = '+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS = @@UNIQUE_CHECKS, UNIQUE_CHECKS = 0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS = @@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS = 0 */;
/*!40101 SET @OLD_SQL_MODE = @@SQL_MODE, SQL_MODE = 'NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES = @@SQL_NOTES, SQL_NOTES = 0 */;

--
-- Table structure for table `t_activity`
--

DROP TABLE IF EXISTS `t_activity`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_activity`
(
    `activity_id`   int NOT NULL AUTO_INCREMENT,
    `activity_name` varchar(255) DEFAULT NULL,
    PRIMARY KEY (`activity_id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 127
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;


DROP TABLE IF EXISTS `t_weather`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `t_weather`
(
    `weather_id`   int NOT NULL AUTO_INCREMENT,
    `weather_name` varchar(255) DEFAULT NULL,
    PRIMARY KEY (`weather_id`)
) ENGINE = InnoDB
  AUTO_INCREMENT = 127
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
--
-- Dumping data for table `t_activity`
--
DROP TABLE IF EXISTS `t_activity_weather`;
/*!40101 SET @saved_cs_client = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE t_activity_weather
(
    activity_weather_id INT PRIMARY KEY NOT NULL auto_increment,

    fk_weather          INT             NOT NULL,
    fk_activity         INT             NOT NULL,
    score               int             NOT NULL,
    FOREIGN KEY (fk_weather) REFERENCES t_weather (weather_id),
    FOREIGN KEY (fk_activity) REFERENCES t_activity (activity_id)
);


LOCK TABLES `t_activity` WRITE;
/*!40000 ALTER TABLE `t_activity`
    DISABLE KEYS */;
INSERT INTO `t_activity`
VALUES (1, 'Badminton'),
       (2, 'Basketball'),
       (3, 'Bowling'),
       (4, 'Cinéma'),
       (5, 'Course à pied'),
       (6, 'Cyclisme'),
       (7, 'Equitation'),
       (8, 'Escalade'),
       (9, 'Escape Game'),
       (10, 'Football'),
       (11, 'Hockey sur glace'),
       (12, 'Laser Game'),
       (13, 'Mini-Golf'),
       (14, 'Musée'),
       (15, 'Natation'),
       (16, 'Paint-Ball'),
       (17, 'Parcours'),
       (18, 'Patinage'),
       (19, 'Peau de Phoque'),
       (20, 'Pedalo'),
       (21, 'Planche à voile'),
       (22, 'Pétanque'),
       (23, 'Rafting'),
       (24, 'Randonnée'),
       (25, 'Rugby'),
       (26, 'Saut à l’ élastique'),
       (27, 'Ski'),
       (28, 'Ski de fond'),
       (29, 'Ski nautique'),
       (30, 'Snow'),
       (31, 'Squash'),
       (32, 'Stande de tir'),
       (33, 'Surf'),
       (34, 'Tennis'),
       (35, 'Tennis de table'),
       (36, 'Tir à l’arc'),
       (37, 'Tour Hélicoptère'),
       (38, 'Trampoline'),
       (39, 'Uni-Hockey'),
       (40, 'Volley'),
       (41, 'VTT'),
       (42, 'Piscine-ext'),
       (43, 'Badminton'),
       (44, 'Basketball'),
       (45, 'Bowling'),
       (46, 'Cinéma'),
       (47, 'Course à pied'),
       (48, 'Cyclisme'),
       (49, 'Equitation'),
       (50, 'Escalade'),
       (51, 'Escape Game'),
       (52, 'Football'),
       (53, 'Hockey sur glace'),
       (54, 'Laser Game'),
       (55, 'Mini-Golf'),
       (56, 'Musée'),
       (57, 'Natation'),
       (58, 'Paint-Ball'),
       (59, 'Parcours'),
       (60, 'Patinage'),
       (61, 'Peau de Phoque'),
       (62, 'Pedalo'),
       (63, 'Planche à voile'),
       (64, 'Pétanque'),
       (65, 'Rafting'),
       (66, 'Randonnée'),
       (67, 'Rugby'),
       (68, 'Saut à l’ élastique'),
       (69, 'Ski'),
       (70, 'Ski de fond'),
       (71, 'Ski nautique'),
       (72, 'Snow'),
       (73, 'Squash'),
       (74, 'Stande de tir'),
       (75, 'Surf'),
       (76, 'Tennis'),
       (77, 'Tennis de table'),
       (78, 'Tir à l’arc'),
       (79, 'Tour Hélicoptère'),
       (80, 'Trampoline'),
       (81, 'Uni-Hockey'),
       (82, 'Volley'),
       (83, 'VTT'),
       (84, 'Piscine-ext'),
       (85, 'Badminton'),
       (86, 'Basketball'),
       (87, 'Bowling'),
       (88, 'Cinéma'),
       (89, 'Course à pied'),
       (90, 'Cyclisme'),
       (91, 'Equitation'),
       (92, 'Escalade'),
       (93, 'Escape Game'),
       (94, 'Football'),
       (95, 'Hockey sur glace'),
       (96, 'Laser Game'),
       (97, 'Mini-Golf'),
       (98, 'Musée'),
       (99, 'Natation'),
       (100, 'Paint-Ball'),
       (101, 'Parcours'),
       (102, 'Patinage'),
       (103, 'Peau de Phoque'),
       (104, 'Pedalo'),
       (105, 'Planche à voile'),
       (106, 'Pétanque'),
       (107, 'Rafting'),
       (108, 'Randonnée'),
       (109, 'Rugby'),
       (110, 'Saut à l’ élastique'),
       (111, 'Ski'),
       (112, 'Ski de fond'),
       (113, 'Ski nautique'),
       (114, 'Snow'),
       (115, 'Squash'),
       (116, 'Stande de tir'),
       (117, 'Surf'),
       (118, 'Tennis'),
       (119, 'Tennis de table'),
       (120, 'Tir à l’arc'),
       (121, 'Tour Hélicoptère'),
       (122, 'Trampoline'),
       (123, 'Uni-Hockey'),
       (124, 'Volley'),
       (125, 'VTT'),
       (126, 'Piscine-ext');
/*!40000 ALTER TABLE `t_activity`
    ENABLE KEYS */;


LOCK TABLES `t_weather` WRITE;
/*!40000 ALTER TABLE `t_weather`
    DISABLE KEYS */;
INSERT INTO t_weather (weather_id, weather_name)
VALUES (0, 'Orageux');
INSERT INTO t_weather (weather_id, weather_name)
VALUES (1, 'Enneigé');
INSERT INTO t_weather (weather_id, weather_name)
VALUES (2, 'Nuageux');
INSERT INTO t_weather (weather_id, weather_name)
VALUES (3, 'Pluvieux');
INSERT INTO t_weather (weather_id, weather_name)
VALUES (4, 'Ensoleillée');
/*!40000 ALTER TABLE `t_weather`
    ENABLE KEYS */;


LOCK TABLES `t_activity_weather` WRITE;
/*!40000 ALTER TABLE `t_activity_weather`
    DISABLE KEYS */;
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (1, 1, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (2, 1, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (3, 1, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (4, 1, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (5, 1, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (1, 2, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (2, 2, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (3, 2, 2);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (4, 2, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (5, 2, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (1, 3, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (2, 3, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (3, 3, 4);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (4, 3, 4);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (5, 3, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (1, 4, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (2, 4, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (3, 4, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (4, 4, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (5, 4, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (1, 5, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (2, 5, 2);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (3, 5, 3);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (4, 5, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (5, 5, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (1, 6, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (2, 6, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (3, 6, 3);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (4, 6, 2);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (5, 6, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (1, 7, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (2, 7, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (3, 7, 2);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (4, 7, 2);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (5, 7, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (1, 8, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (2, 8, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (3, 8, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (4, 8, 4);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (5, 8, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (1, 9, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (2, 9, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (3, 9, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (4, 9, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (5, 9, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (1, 10, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (2, 10, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (3, 10, 3);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (4, 10, 2);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (5, 10, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (1, 11, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (2, 11, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (3, 11, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (4, 11, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (5, 11, 3);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (1, 12, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (2, 12, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (3, 12, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (4, 12, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (5, 12, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (1, 13, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (2, 13, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (3, 13, 2);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (4, 13, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (5, 13, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (1, 14, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (2, 14, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (3, 14, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (4, 14, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (5, 14, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (1, 15, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (2, 15, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (3, 15, 5);

INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (5, 15, 2);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (1, 16, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (2, 16, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (3, 16, 2);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (4, 16, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (5, 16, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (1, 17, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (2, 17, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (3, 17, 3);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (4, 17, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (5, 17, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (1, 18, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (2, 18, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (3, 18, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (4, 18, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (5, 18, 2);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (1, 19, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (2, 19, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (3, 19, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (4, 19, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (5, 19, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (1, 20, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (2, 20, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (3, 20, 2);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (4, 20, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (5, 20, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (1, 21, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (2, 21, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (3, 21, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (4, 21, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (5, 21, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (1, 23, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (2, 23, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (3, 23, 2);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (4, 23, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (5, 23, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (1, 24, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (2, 24, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (3, 24, 2);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (4, 24, 2);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (5, 24, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (1, 25, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (2, 25, 3);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (3, 25, 3);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (4, 25, 3);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (5, 25, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (1, 26, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (2, 26, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (3, 26, 2);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (4, 26, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (5, 26, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (1, 27, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (2, 27, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (3, 27, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (4, 27, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (5, 27, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (1, 28, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (2, 28, 2);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (3, 28, 3);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (4, 28, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (5, 28, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (1, 29, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (2, 29, 2);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (3, 29, 3);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (4, 29, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (5, 29, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (1, 30, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (2, 30, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (3, 30, 2);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (4, 30, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (5, 30, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (1, 31, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (2, 31, 2);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (3, 31, 3);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (4, 31, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (5, 31, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (1, 32, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (2, 32, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (3, 32, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (4, 32, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (5, 32, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (1, 33, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (2, 33, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (3, 33, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (4, 33, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (5, 33, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (1, 34, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (2, 34, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (3, 34, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (4, 34, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (5, 34, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (1, 35, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (2, 35, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (3, 35, 2);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (4, 35, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (5, 35, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (1, 36, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (2, 36, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (3, 36, 3);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (4, 36, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (5, 36, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (1, 37, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (2, 37, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (3, 37, 2);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (4, 37, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (5, 37, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (1, 38, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (2, 38, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (3, 38, 3);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (4, 38, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (5, 38, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (1, 39, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (2, 39, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (3, 39, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (4, 39, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (5, 39, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (1, 41, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (2, 41, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (3, 41, 2);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (4, 41, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (5, 41, 5);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (1, 42, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (2, 42, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (3, 42, 3);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (4, 42, 1);
INSERT INTO t_activity_weather (fk_weather, fk_activity, score)
VALUES (5, 42, 5);
/*!40000 ALTER TABLE `t_activity_weather`
    ENABLE KEYS */;


UNLOCK TABLES;
/*!40103 SET TIME_ZONE = @OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE = @OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS = @OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS = @OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT = @OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS = @OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION = @OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES = @OLD_SQL_NOTES */;

-- Dump completed on 2023-05-11 18:03:32
