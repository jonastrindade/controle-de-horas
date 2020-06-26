-- MySQL dump 10.13  Distrib 8.0.20, for Linux (x86_64)
--
-- Host: localhost    Database: controle_de_horas_development
-- ------------------------------------------------------
-- Server version	8.0.20-0ubuntu0.19.10.1

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
-- Table structure for table `ar_internal_metadata`
--

DROP TABLE IF EXISTS `ar_internal_metadata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ar_internal_metadata` (
  `key` varchar(255) NOT NULL,
  `value` varchar(255) DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ar_internal_metadata`
--

LOCK TABLES `ar_internal_metadata` WRITE;
/*!40000 ALTER TABLE `ar_internal_metadata` DISABLE KEYS */;
INSERT INTO `ar_internal_metadata` VALUES ('environment','development','2020-06-23 00:59:14.477108','2020-06-23 00:59:14.477108');
/*!40000 ALTER TABLE `ar_internal_metadata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `horarios`
--

DROP TABLE IF EXISTS `horarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `horarios` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `inicio` time DEFAULT NULL,
  `inicio_almoco` time DEFAULT NULL,
  `fim_almoco` time DEFAULT NULL,
  `fim` time DEFAULT NULL,
  `data` datetime DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `index_horarios_on_user_id` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `horarios`
--

LOCK TABLES `horarios` WRITE;
/*!40000 ALTER TABLE `horarios` DISABLE KEYS */;
INSERT INTO `horarios` VALUES (20,1,'09:00:00','12:00:00','13:00:00','16:00:00','2020-06-01 00:00:00','2020-06-26 22:32:49.263454','2020-06-26 22:32:49.263454'),(21,1,'09:00:00','12:00:00','13:00:00','17:00:00','2020-06-02 00:00:00','2020-06-26 22:48:50.592836','2020-06-26 22:48:50.592836'),(22,1,'09:30:00','12:00:00','13:00:00','17:00:00','2020-05-31 00:00:00','2020-06-26 22:50:10.623816','2020-06-26 22:50:10.623816'),(23,1,'09:00:00','12:00:00','13:00:00','17:00:00','2020-06-03 00:00:00','2020-06-26 22:54:16.333598','2020-06-26 22:54:16.333598'),(24,1,'09:00:00','12:00:00','13:00:00','17:00:00','2020-06-04 00:00:00','2020-06-26 22:54:27.234199','2020-06-26 22:54:27.234199'),(25,1,'09:00:00','12:00:00','13:00:00','17:00:00','2020-06-05 00:00:00','2020-06-26 22:54:31.436810','2020-06-26 22:54:31.436810'),(26,1,'09:00:00','12:00:00','13:00:00','17:00:00','2020-06-06 00:00:00','2020-06-26 22:54:38.537530','2020-06-26 22:54:38.537530'),(27,1,'09:00:00','12:00:00','13:00:00','17:00:00','2020-06-07 00:00:00','2020-06-26 22:54:41.996105','2020-06-26 22:54:41.996105'),(28,1,'09:00:00','12:00:00','13:00:00','17:00:00','2020-06-08 00:00:00','2020-06-26 22:54:46.291765','2020-06-26 22:54:46.291765'),(29,1,'09:00:00','12:00:00','13:00:00','17:00:00','2020-06-09 00:00:00','2020-06-26 22:54:50.708017','2020-06-26 22:54:50.708017'),(30,1,'09:00:00','12:00:00','13:00:00','17:00:00','2020-06-10 00:00:00','2020-06-26 22:54:54.018268','2020-06-26 22:54:54.018268'),(31,1,'09:00:00','12:00:00','13:00:00','17:00:00','2020-06-11 00:00:00','2020-06-26 22:54:56.787845','2020-06-26 22:54:56.787845'),(32,1,'09:00:00','12:00:00','13:00:00','17:00:00','2020-06-12 00:00:00','2020-06-26 22:55:00.555554','2020-06-26 22:55:00.555554'),(33,1,'09:00:00','12:00:00','13:00:00','17:00:00','2020-06-13 00:00:00','2020-06-26 22:55:03.976543','2020-06-26 22:55:03.976543'),(34,1,'09:00:00','12:00:00','13:00:00','17:00:00','2020-06-14 00:00:00','2020-06-26 22:55:06.875317','2020-06-26 22:55:06.875317'),(35,1,'09:00:00','12:00:00','13:00:00','17:00:00','2020-06-15 00:00:00','2020-06-26 22:55:17.586552','2020-06-26 22:55:17.586552'),(36,1,'09:00:00','12:00:00','13:00:00','17:00:00','2020-06-16 00:00:00','2020-06-26 22:55:21.503744','2020-06-26 22:55:21.503744'),(37,1,'09:00:00','12:00:00','13:00:00','17:00:00','2020-06-17 00:00:00','2020-06-26 22:55:24.663827','2020-06-26 22:55:24.663827'),(38,1,'09:00:00','12:00:00','13:00:00','17:00:00','2020-06-18 00:00:00','2020-06-26 22:55:28.359511','2020-06-26 22:55:28.359511'),(39,1,'09:00:00','12:00:00','13:00:00','17:00:00','2020-06-19 00:00:00','2020-06-26 22:55:38.071092','2020-06-26 22:55:38.071092'),(40,1,'09:00:00','12:00:00','13:00:00','17:00:00','2020-06-20 00:00:00','2020-06-26 22:55:41.481883','2020-06-26 22:55:41.481883'),(41,1,'09:00:00','12:00:00','13:00:00','17:00:00','2020-06-21 00:00:00','2020-06-26 22:55:44.958947','2020-06-26 22:55:44.958947'),(42,1,'09:00:00','12:00:00','13:00:00','17:00:00','2020-06-22 00:00:00','2020-06-26 22:55:49.016750','2020-06-26 22:55:49.016750'),(43,1,'09:00:00','12:00:00','13:00:00','17:00:00','2020-06-23 00:00:00','2020-06-26 22:55:53.697367','2020-06-26 22:55:53.697367'),(44,1,'09:00:00','12:00:00','13:00:00','17:00:00','2020-06-24 00:00:00','2020-06-26 22:55:57.198371','2020-06-26 22:55:57.198371'),(45,1,'09:00:00','12:00:00','13:00:00','17:00:00','2020-06-25 00:00:00','2020-06-26 22:56:01.119594','2020-06-26 22:56:01.119594');
/*!40000 ALTER TABLE `horarios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schema_migrations`
--

DROP TABLE IF EXISTS `schema_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schema_migrations` (
  `version` varchar(255) NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schema_migrations`
--

LOCK TABLES `schema_migrations` WRITE;
/*!40000 ALTER TABLE `schema_migrations` DISABLE KEYS */;
INSERT INTO `schema_migrations` VALUES ('20200623005821'),('20200624001408');
/*!40000 ALTER TABLE `schema_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL DEFAULT '',
  `encrypted_password` varchar(255) NOT NULL DEFAULT '',
  `reset_password_token` varchar(255) DEFAULT NULL,
  `reset_password_sent_at` datetime DEFAULT NULL,
  `remember_created_at` datetime DEFAULT NULL,
  `created_at` datetime(6) NOT NULL,
  `updated_at` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `index_users_on_email` (`email`),
  UNIQUE KEY `index_users_on_reset_password_token` (`reset_password_token`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'jonastrinda@gmail.com','$2a$12$VcN88Gi7znFBYWjykA87qumoIm6LnHDgi364eeBAu4bYw9OPSxLNy','c871e39cb9da2175ecacc3b93da98f99f29d878d353dc0e29dfb742a2ecc5fd3','2020-06-23 01:47:01',NULL,'2020-06-23 01:15:17.598432','2020-06-23 01:47:01.715041'),(2,'outrouser@gmail.com','$2a$12$mAGrEG0u4/neB/uNPAGmRepOOCs618Ywf9tRx7IEkU7g5IS5YiHuS',NULL,NULL,NULL,'2020-06-25 03:00:54.420047','2020-06-25 03:00:54.420047');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-26 20:29:51
