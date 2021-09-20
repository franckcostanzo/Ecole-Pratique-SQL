CREATE DATABASE  IF NOT EXISTS `cinema` /*!40100 DEFAULT CHARACTER SET utf8mb4*/ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cinema`;
-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: cinema
-- ------------------------------------------------------
-- Server version	8.0.21

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `acteur`
--

DROP TABLE IF EXISTS `acteur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `acteur` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `acteur`
--

LOCK TABLES `acteur` WRITE;
/*!40000 ALTER TABLE `acteur` DISABLE KEYS */;
INSERT INTO `acteur` VALUES (1,'DICAPRIO','Leonardo'),(2,'WINSLET','Kate'),(3,'COTILLARD','Marion'),(4,'PAGE','Ellen'),(5,'BALE','Christian'),(6,'HATHAWAY','Anne'),(7,'FREEMAN','Morgan'),(8,'DAMON','Matt'),(9,'BALFE','Caitriona');
/*!40000 ALTER TABLE `acteur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `film`
--

DROP TABLE IF EXISTS `film`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `film` (
  `id` int NOT NULL AUTO_INCREMENT,
  `realisateur_id` int NOT NULL,
  `titre` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `duree` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_film_realisateur` (`realisateur_id`),
  CONSTRAINT `FK_film_realisateur` FOREIGN KEY (`realisateur_id`) REFERENCES `realisateur` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `film`
--

LOCK TABLES `film` WRITE;
/*!40000 ALTER TABLE `film` DISABLE KEYS */;
INSERT INTO `film` VALUES (1,1,'TITANIC',194),(2,2,'INCEPTION',148),(3,2,'THE DARK KNIGHT RISES',164),(4,3,'LE MANS 66',153);
/*!40000 ALTER TABLE `film` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `joue`
--

DROP TABLE IF EXISTS `joue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `joue` (
  `film_id` int NOT NULL,
  `acteur_id` int NOT NULL,
  `role` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`film_id`,`acteur_id`),
  KEY `FK_acteur_joue` (`acteur_id`),
  CONSTRAINT `FK_acteur_joue` FOREIGN KEY (`acteur_id`) REFERENCES `acteur` (`id`),
  CONSTRAINT `FK_film_joue` FOREIGN KEY (`film_id`) REFERENCES `film` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `joue`
--

LOCK TABLES `joue` WRITE;
/*!40000 ALTER TABLE `joue` DISABLE KEYS */;
INSERT INTO `joue` VALUES (1,1,'Jack Dawson'),(1,2,'Rose DeWitt Bukater'),(2,1,'Dom Cobb'),(2,3,'Mall'),(2,4,'Ariane'),(3,3,'Miranda'),(3,5,'Bruce Wayne'),(3,6,'Selina'),(3,7,'Fox'),(4,5,'Ken Miles'),(4,6,'Carroll Shelby'),(4,7,' Mollie Miles');
/*!40000 ALTER TABLE `joue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `realisateur`
--

DROP TABLE IF EXISTS `realisateur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `realisateur` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `realisateur`
--

LOCK TABLES `realisateur` WRITE;
/*!40000 ALTER TABLE `realisateur` DISABLE KEYS */;
INSERT INTO `realisateur` VALUES (1,'CAMERON','James'),(2,'NOLAN','Christopher'),(3,'MANGOLD','James');
/*!40000 ALTER TABLE `realisateur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salle`
--

DROP TABLE IF EXISTS `salle`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `salle` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salle`
--

LOCK TABLES `salle` WRITE;
/*!40000 ALTER TABLE `salle` DISABLE KEYS */;
INSERT INTO `salle` VALUES (1,'Salle fantastique'),(2,'Salle space opera'),(3,'Salle médiévale'),(4,'Salle obscure');
/*!40000 ALTER TABLE `salle` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `seance`
--

DROP TABLE IF EXISTS `seance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `seance` (
  `film_id` int NOT NULL,
  `salle_id` int NOT NULL,
  `date_seance` datetime NOT NULL,
  PRIMARY KEY (`film_id`,`salle_id`,`date_seance`),
  KEY `FK_salle_seance` (`salle_id`),
  CONSTRAINT `FK_film_seance` FOREIGN KEY (`film_id`) REFERENCES `film` (`id`),
  CONSTRAINT `FK_salle_seance` FOREIGN KEY (`salle_id`) REFERENCES `salle` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `seance`
--

LOCK TABLES `seance` WRITE;
/*!40000 ALTER TABLE `seance` DISABLE KEYS */;
INSERT INTO `seance` VALUES (1,1,'2020-08-10 09:00:00'),(1,1,'2020-08-10 12:30:00'),(1,1,'2020-08-10 15:45:00'),(1,1,'2020-08-10 20:00:00'),(1,1,'2020-08-10 21:00:00'),(2,2,'2020-08-10 09:00:00'),(2,2,'2020-08-10 11:45:00'),(2,2,'2020-08-10 14:30:00'),(2,2,'2020-08-10 17:15:00'),(2,2,'2020-08-10 20:00:00'),(4,3,'2020-08-10 09:00:00'),(4,3,'2020-08-10 11:45:00'),(4,3,'2020-08-10 14:30:00'),(4,3,'2020-08-10 17:15:00'),(4,3,'2020-08-10 20:00:00'),(3,4,'2020-08-10 09:00:00'),(3,4,'2020-08-10 12:00:00'),(3,4,'2020-08-10 15:00:00'),(3,4,'2020-08-10 18:00:00'),(3,4,'2020-08-10 21:00:00');
/*!40000 ALTER TABLE `seance` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-08 15:12:43
