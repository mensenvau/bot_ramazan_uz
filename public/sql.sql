-- MySQL dump 10.13  Distrib 8.0.23, for Win64 (x86_64)
--
-- Host: localhost    Database: botc
-- ------------------------------------------------------
-- Server version	8.0.23

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `namel` char(200) DEFAULT NULL,
  `namek` char(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'Toshkent Shahar','Тошкент Шаҳар'),(2,'Buxoro viloyati','Бухоро вилояти'),(3,'Samarqand viloyati','Самарқанд вилояти'),(4,'Andijon viloyati','Андижон вилояти'),(5,'Farg\'ona viloyati','Фарғона вилояти'),(6,'Jizzax viloyati','Жиззах вилояти'),(7,'Xorazm viloyati','Хоразм вилояти'),(8,'Namangan viloyati','Наманган вилояти'),(9,'Navoiy viloyati','Навоий вилояти'),(10,'Qashqadaryo viloyati','Қашқадарё вилояти'),(11,'Sirdaryo viloyati','Сирдарё вилояти'),(12,'Surxondaryo viloyati','Сурхондарё вилояти'),(13,'Qoraqalpog\'iston Respublikasi	','Қорақалпоғистон Республикаси'),(14,'Toshkent viloyati','Тошкент вилояти');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qanswer`
--

DROP TABLE IF EXISTS `qanswer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qanswer` (
  `id` int NOT NULL AUTO_INCREMENT,
  `questionl` char(200) DEFAULT NULL,
  `questionk` char(200) DEFAULT NULL,
  `answerl` text,
  `answerk` text,
  `keylist` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qanswer`
--

LOCK TABLES `qanswer` WRITE;
/*!40000 ALTER TABLE `qanswer` DISABLE KEYS */;
INSERT INTO `qanswer` VALUES (1,'Hadis nima? .','Ҳадис нима? .','Hadisni o‘rganishdan oldin «hadis» o‘zi nima ekanini bilib olish kerak. Avvalo, shuni aytib o‘tish joizki, «hadis» va «sunnat» so‘zlari doimo bir-birining o‘rnida ishlatilib kelgan. Ammo diqqat bilan qaralsa, hadis xosroq, sunnat umumiyroq ma’no kasb etishini ko‘rish mumkin.\r\n\r\n«Hadis» so‘zining asl kelib chiqishi «yangi hodisa», «yangilik» degan ma’nodan olingan. Har bir aytilgan gap-so‘z yangi hodisa bo‘lgani uchun arablarda so‘zni «hadis» deyishgan.','Ҳадисни ўрганишдан олдин «ҳадис» ўзи нима эканини билиб олиш керак. Аввало, шуни айтиб ўтиш жоизки, «ҳадис» ва «суннат» сўзлари доимо бир-бирининг ўрнида ишлатилиб келган. Аммо диққат билан қаралса, ҳадис хосроқ, суннат умумийроқ маъно касб этишини кўриш мумкин.\r\n\r\n«Ҳадис» сўзининг асл келиб чиқиши «янги ҳодиса», «янгилик» деган маънодан олинган. Ҳар бир айтилган гап-сўз янги ҳодиса бўлгани учун арабларда сўзни «ҳадис» дейишган.','hadis , hadis nima , hadis haqidaҳадис , ҳадис нима , ҳадис ҳақида  ');
/*!40000 ALTER TABLE `qanswer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `chat_id` char(100) DEFAULT NULL,
  `full_name` char(100) DEFAULT NULL,
  `address` char(100) DEFAULT NULL,
  `lang` char(20) DEFAULT NULL,
  `isnot` int DEFAULT NULL,
  `isadmin` int DEFAULT '1',
  `steep` int DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `chat_id` (`chat_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (8,'1626550887','O\'tkir','Sirdaryo viloyati','lotin',NULL,1,1),(9,'1118474443','Лазиз',NULL,'lotin',NULL,1,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'botc'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-12 21:31:49
