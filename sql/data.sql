-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: localhost    Database: test
-- ------------------------------------------------------
-- Server version	5.7.30

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
-- Table structure for table `class_room`
--

DROP TABLE IF EXISTS `class_room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_room` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_klrqiya99x53tv44rcpek6ff0` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_room`
--

LOCK TABLES `class_room` WRITE;
/*!40000 ALTER TABLE `class_room` DISABLE KEYS */;
INSERT INTO `class_room` VALUES (1,'CS 1');
INSERT INTO `class_room` VALUES (2,'CS 2');
INSERT INTO `class_room` VALUES (3,'CS 3');
INSERT INTO `class_room` VALUES (4,'CS 4');
INSERT INTO `class_room` VALUES (5,'CS 5');
INSERT INTO `class_room` VALUES (6,'IoT 1');
INSERT INTO `class_room` VALUES (7,'IoT 2');
INSERT INTO `class_room` VALUES (8,'Software 1');
INSERT INTO `class_room` VALUES (9,'Software 2');
INSERT INTO `class_room` VALUES (10,'Software 3');
/*!40000 ALTER TABLE `class_room` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_p1jgir6qcpmqnxt4a8105wsot` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES (1,'C Language Programming');
INSERT INTO `subject` VALUES (2,'Data Structure');
INSERT INTO `subject` VALUES (3,'Compilers');
INSERT INTO `subject` VALUES (4,'Software Engineering');
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teacher`
--

DROP TABLE IF EXISTS `teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teacher` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `age` int(11) NOT NULL,
  `gender` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_5syf9tb34xn2g3cmjekoybhet` (`name`),
  KEY `FKnmpwvbgxwxhy9ifnnsjcj1ir9` (`subject_id`),
  CONSTRAINT `FKnmpwvbgxwxhy9ifnnsjcj1ir9` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teacher`
--

LOCK TABLES `teacher` WRITE;
/*!40000 ALTER TABLE `teacher` DISABLE KEYS */;
INSERT INTO `teacher` VALUES (1,43,1,'Teacher 1',1);
INSERT INTO `teacher` VALUES (2,60,2,'Teacher 2',2);
INSERT INTO `teacher` VALUES (3,37,1,'Teacher 3',3);
INSERT INTO `teacher` VALUES (4,38,2,'Teacher 4',1);
INSERT INTO `teacher` VALUES (5,40,1,'Teacher 5',4);
INSERT INTO `teacher` VALUES (6,43,2,'Teacher 6',2);
INSERT INTO `teacher` VALUES (7,45,1,'Teacher 7',3);
INSERT INTO `teacher` VALUES (8,39,2,'Teacher 8',3);
INSERT INTO `teacher` VALUES (9,42,1,'Teacher 9',2);
INSERT INTO `teacher` VALUES (10,46,2,'Teacher 10',1);
INSERT INTO `teacher` VALUES (11,43,1,'Teacher 11',4);
/*!40000 ALTER TABLE `teacher` ENABLE KEYS */;
UNLOCK TABLES;


--
-- Table structure for table `class_teacher`
--

DROP TABLE IF EXISTS `class_teacher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `class_teacher` (
  `teacher_id` bigint(20) NOT NULL,
  `class_id` bigint(20) NOT NULL,
  PRIMARY KEY (`teacher_id`,`class_id`),
  KEY `FKri69jg18e792vk5l47iu5hyrl` (`class_id`),
  CONSTRAINT `FK13frilh8v3j7yncsskyklnscv` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`),
  CONSTRAINT `FKri69jg18e792vk5l47iu5hyrl` FOREIGN KEY (`class_id`) REFERENCES `class_room` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `class_teacher`
--

LOCK TABLES `class_teacher` WRITE;
/*!40000 ALTER TABLE `class_teacher` DISABLE KEYS */;
INSERT INTO `class_teacher` VALUES (1,1);
INSERT INTO `class_teacher` VALUES (1,2);
INSERT INTO `class_teacher` VALUES (1,3);
INSERT INTO `class_teacher` VALUES (1,4);
INSERT INTO `class_teacher` VALUES (4,5);
INSERT INTO `class_teacher` VALUES (4,6);
INSERT INTO `class_teacher` VALUES (4,7);
INSERT INTO `class_teacher` VALUES (10,8);
INSERT INTO `class_teacher` VALUES (10,9);
INSERT INTO `class_teacher` VALUES (10,10);

INSERT INTO `class_teacher` VALUES (2,1);
INSERT INTO `class_teacher` VALUES (2,2);
INSERT INTO `class_teacher` VALUES (2,3);
INSERT INTO `class_teacher` VALUES (2,4);
INSERT INTO `class_teacher` VALUES (6,5);
INSERT INTO `class_teacher` VALUES (6,6);
INSERT INTO `class_teacher` VALUES (6,7);
INSERT INTO `class_teacher` VALUES (9,8);
INSERT INTO `class_teacher` VALUES (9,9);
INSERT INTO `class_teacher` VALUES (9,10);

INSERT INTO `class_teacher` VALUES (3,1);
INSERT INTO `class_teacher` VALUES (3,2);
INSERT INTO `class_teacher` VALUES (3,3);
INSERT INTO `class_teacher` VALUES (7,4);
INSERT INTO `class_teacher` VALUES (7,5);
INSERT INTO `class_teacher` VALUES (7,6);
INSERT INTO `class_teacher` VALUES (7,7);
INSERT INTO `class_teacher` VALUES (8,8);
INSERT INTO `class_teacher` VALUES (8,9);
INSERT INTO `class_teacher` VALUES (8,10);

INSERT INTO `class_teacher` VALUES (5,6);
INSERT INTO `class_teacher` VALUES (5,7);
INSERT INTO `class_teacher` VALUES (5,8);
INSERT INTO `class_teacher` VALUES (1,9);
INSERT INTO `class_teacher` VALUES (1,10);
/*!40000 ALTER TABLE `class_teacher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `age` int(11) NOT NULL,
  `gender` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `class_id` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_7pb8owoegbhhcrpopw4o1ykcr` (`name`),
  KEY `FKt3mj3ri10grhbs2k0vn1ek1yn` (`class_id`),
  CONSTRAINT `FKt3mj3ri10grhbs2k0vn1ek1yn` FOREIGN KEY (`class_id`) REFERENCES `class_room` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,20,0,'Student 1',1);
INSERT INTO `student` VALUES (2,20,0,'Student 2',1);
INSERT INTO `student` VALUES (3,17,0,'Student 3',1);
INSERT INTO `student` VALUES (4,18,0,'Student 4',1);
INSERT INTO `student` VALUES (5,20,0,'Student 5',1);
INSERT INTO `student` VALUES (6,18,1,'Student 6',1);
INSERT INTO `student` VALUES (7,19,0,'Student 7',1);
INSERT INTO `student` VALUES (8,20,0,'Student 8',1);
INSERT INTO `student` VALUES (9,19,0,'Student 9',1);
INSERT INTO `student` VALUES (10,19,0,'Student 10',1);
INSERT INTO `student` VALUES (11,20,1,'Student 11',2);
INSERT INTO `student` VALUES (12,18,0,'Student 12',2);
INSERT INTO `student` VALUES (13,17,0,'Student 13',2);
INSERT INTO `student` VALUES (14,17,0,'Student 14',2);
INSERT INTO `student` VALUES (15,18,1,'Student 15',2);
INSERT INTO `student` VALUES (16,18,1,'Student 16',2);
INSERT INTO `student` VALUES (17,17,1,'Student 17',2);
INSERT INTO `student` VALUES (18,19,0,'Student 18',2);
INSERT INTO `student` VALUES (19,17,1,'Student 19',2);
INSERT INTO `student` VALUES (20,19,0,'Student 20',2);
INSERT INTO `student` VALUES (21,17,1,'Student 21',3);
INSERT INTO `student` VALUES (22,17,1,'Student 22',3);
INSERT INTO `student` VALUES (23,20,1,'Student 23',3);
INSERT INTO `student` VALUES (24,20,1,'Student 24',3);
INSERT INTO `student` VALUES (25,19,0,'Student 25',3);
INSERT INTO `student` VALUES (26,17,1,'Student 26',3);
INSERT INTO `student` VALUES (27,19,1,'Student 27',3);
INSERT INTO `student` VALUES (28,18,1,'Student 28',3);
INSERT INTO `student` VALUES (29,17,1,'Student 29',3);
INSERT INTO `student` VALUES (30,18,1,'Student 30',3);
INSERT INTO `student` VALUES (31,18,1,'Student 31',4);
INSERT INTO `student` VALUES (32,18,1,'Student 32',4);
INSERT INTO `student` VALUES (33,19,1,'Student 33',4);
INSERT INTO `student` VALUES (34,17,1,'Student 34',4);
INSERT INTO `student` VALUES (35,19,0,'Student 35',4);
INSERT INTO `student` VALUES (36,20,0,'Student 36',4);
INSERT INTO `student` VALUES (37,20,0,'Student 37',4);
INSERT INTO `student` VALUES (38,20,1,'Student 38',4);
INSERT INTO `student` VALUES (39,19,0,'Student 39',4);
INSERT INTO `student` VALUES (40,20,0,'Student 40',4);
INSERT INTO `student` VALUES (41,17,1,'Student 41',5);
INSERT INTO `student` VALUES (42,19,1,'Student 42',5);
INSERT INTO `student` VALUES (43,20,0,'Student 43',5);
INSERT INTO `student` VALUES (44,20,0,'Student 44',5);
INSERT INTO `student` VALUES (45,20,1,'Student 45',5);
INSERT INTO `student` VALUES (46,17,1,'Student 46',5);
INSERT INTO `student` VALUES (47,18,1,'Student 47',5);
INSERT INTO `student` VALUES (48,19,1,'Student 48',5);
INSERT INTO `student` VALUES (49,19,0,'Student 49',5);
INSERT INTO `student` VALUES (50,18,1,'Student 50',5);
INSERT INTO `student` VALUES (51,18,1,'Student 51',6);
INSERT INTO `student` VALUES (52,18,1,'Student 52',6);
INSERT INTO `student` VALUES (53,17,0,'Student 53',6);
INSERT INTO `student` VALUES (54,20,0,'Student 54',6);
INSERT INTO `student` VALUES (55,18,0,'Student 55',6);
INSERT INTO `student` VALUES (56,17,0,'Student 56',6);
INSERT INTO `student` VALUES (57,19,1,'Student 57',6);
INSERT INTO `student` VALUES (58,19,1,'Student 58',6);
INSERT INTO `student` VALUES (59,19,1,'Student 59',6);
INSERT INTO `student` VALUES (60,20,0,'Student 60',6);
INSERT INTO `student` VALUES (61,20,1,'Student 61',7);
INSERT INTO `student` VALUES (62,20,1,'Student 62',7);
INSERT INTO `student` VALUES (63,17,0,'Student 63',7);
INSERT INTO `student` VALUES (64,20,1,'Student 64',7);
INSERT INTO `student` VALUES (65,20,0,'Student 65',7);
INSERT INTO `student` VALUES (66,20,0,'Student 66',7);
INSERT INTO `student` VALUES (67,18,1,'Student 67',7);
INSERT INTO `student` VALUES (68,17,1,'Student 68',7);
INSERT INTO `student` VALUES (69,18,0,'Student 69',7);
INSERT INTO `student` VALUES (70,20,0,'Student 70',7);
INSERT INTO `student` VALUES (71,20,0,'Student 71',8);
INSERT INTO `student` VALUES (72,18,1,'Student 72',8);
INSERT INTO `student` VALUES (73,17,1,'Student 73',8);
INSERT INTO `student` VALUES (74,17,1,'Student 74',8);
INSERT INTO `student` VALUES (75,20,1,'Student 75',8);
INSERT INTO `student` VALUES (76,17,0,'Student 76',8);
INSERT INTO `student` VALUES (77,19,1,'Student 77',8);
INSERT INTO `student` VALUES (78,19,0,'Student 78',8);
INSERT INTO `student` VALUES (79,17,1,'Student 79',8);
INSERT INTO `student` VALUES (80,20,1,'Student 80',8);
INSERT INTO `student` VALUES (81,18,1,'Student 81',9);
INSERT INTO `student` VALUES (82,19,1,'Student 82',9);
INSERT INTO `student` VALUES (83,19,1,'Student 83',9);
INSERT INTO `student` VALUES (84,17,1,'Student 84',9);
INSERT INTO `student` VALUES (85,17,0,'Student 85',9);
INSERT INTO `student` VALUES (86,20,0,'Student 86',9);
INSERT INTO `student` VALUES (87,18,1,'Student 87',9);
INSERT INTO `student` VALUES (88,20,0,'Student 88',9);
INSERT INTO `student` VALUES (89,17,1,'Student 89',9);
INSERT INTO `student` VALUES (90,18,0,'Student 90',9);
INSERT INTO `student` VALUES (91,17,1,'Student 91',10);
INSERT INTO `student` VALUES (92,18,0,'Student 92',10);
INSERT INTO `student` VALUES (93,18,0,'Student 93',10);
INSERT INTO `student` VALUES (94,19,0,'Student 94',10);
INSERT INTO `student` VALUES (95,18,0,'Student 95',10);
INSERT INTO `student` VALUES (96,17,0,'Student 96',10);
INSERT INTO `student` VALUES (97,17,0,'Student 97',10);
INSERT INTO `student` VALUES (98,19,0,'Student 98',10);
INSERT INTO `student` VALUES (99,19,1,'Student 99',10);
INSERT INTO `student` VALUES (100,19,0,'Student 100',10);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-18 14:33:17
