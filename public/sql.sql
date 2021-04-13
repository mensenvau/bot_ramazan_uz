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
INSERT INTO `qanswer` VALUES (1,'Hadis nima? .','Ҳадис нима? .','Hadisni o‘rganishdan oldin «hadis» o‘zi nima ekanini bilib olish kerak. Avvalo, shuni aytib o‘tish joizki, «hadis» va «sunnat» so‘zlari doimo bir-birining o‘rnida ishlatilib kelgan. Ammo diqqat bilan qaralsa, hadis xosroq, sunnat umumiyroq ma’no kasb etishini ko‘rish mumkin.\r\n\r\n«Hadis» so‘zining asl kelib chiqishi «yangi hodisa», «yangilik» degan ma’nodan olingan. Har bir aytilgan gap-so‘z yangi hodisa bo‘lgani uchun arablarda so‘zni «hadis» deyishgan.','Ҳадисни ўрганишдан олдин «ҳадис» ўзи нима эканини билиб олиш керак. Аввало, шуни айтиб ўтиш жоизки, «ҳадис» ва «суннат» сўзлари доимо бир-бирининг ўрнида ишлатилиб келган. Аммо диққат билан қаралса, ҳадис хосроқ, суннат умумийроқ маъно касб этишини кўриш мумкин.\r\n\r\n«Ҳадис» сўзининг асл келиб чиқиши «янги ҳодиса», «янгилик» деган маънодан олинган. Ҳар бир айтилган гап-сўз янги ҳодиса бўлгани учун арабларда сўзни «ҳадис» дейишган.','hadis ');
/*!40000 ALTER TABLE `qanswer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `qtilovat`
--

DROP TABLE IF EXISTS `qtilovat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qtilovat` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` text,
  `mtext` text,
  `link` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qtilovat`
--

LOCK TABLES `qtilovat` WRITE;
/*!40000 ALTER TABLE `qtilovat` DISABLE KEYS */;
INSERT INTO `qtilovat` VALUES (1,'Fotiha va Baqara (1-141 - oyatlar) suralari | 1 - pora','Fotiha va Baqara (1-141 - oyatlar) suralari | 1 - pora \r\n\r\n? Youtube orqali ko\'rish: https://www.youtube.com/watch?v=7pb9vi3Uxuk&list=PLGO8Hj8T_fRlQicAcotRlyV107MMvxwt2&index=1 ? @Ramazanuz_bot',NULL),(2,'Baqara surasi (142 - 252 - oyatlar) | 2 - pora ','Baqara surasi (142 - 252 - oyatlar) | 2 - pora \r\n\r\n? Youtube orqali ko\'rish : https://www.youtube.com/watch?v=YUBGrvHV02M&list=PLGO8Hj8T_fRlQicAcotRlyV107MMvxwt2&index=2 \r\n\r\n http://youtube.com/watch?v=7pb9vi3Uxuk  ? @Ramazanuz_bot',NULL),(3,'Baqara (253-286) va Oli Imron (1-91) suralari | 3 - pora ','Baqara (253-286) va Oli Imron (1-91) suralari | 3 - pora \r\n\r\n? Youtube orqali ko\'rish:\r\nhttps://www.youtube.com/watch?v=JT27nQHPR44&list=PLGO8Hj8T_fRlQicAcotRlyV107MMvxwt2&index=3? @Ramazanuz_bot',NULL),(4,'Oli Imron (92 - 200) va Niso (1 - 23) suralari | 4 - pora','Oli Imron (92 - 200) va Niso (1 - 23) suralari | 4 - pora\r\n\r\n? Youtube orqali ko\'rish:\r\nhttps://www.youtube.com/watch?v=W69TgiINs-8&list=PLGO8Hj8T_fRlQicAcotRlyV107MMvxwt2&index=4 ? @Ramazanuz_bot',NULL),(5,'Niso surasi (24 - 147 - oyatlar) | 5 - pora ','Niso surasi (24 - 147 - oyatlar) | 5 - pora \r\n\r\n? Youtube orqali ko\'rish: https://www.youtube.com/watch?v=KIySLWh3u5Y&list=PLGO8Hj8T_fRlQicAcotRlyV107MMvxwt2&index=5 ? @Ramazanuz_bot',NULL),(6,'Niso (148 - 176) va Moida (1 - 83) suralari | 6 - pora ','Niso (148 - 176) va Moida (1 - 83) suralari | 6 - pora \r\n\r\n? Youtube orqali ko\'rish: https://www.youtube.com/watch?v=2hRqXmHrvXE&list=PLGO8Hj8T_fRlQicAcotRlyV107MMvxwt2&index=6 \r\n\r\n http://youtube.com/watch?v=7pb9vi3Uxuk ? @Ramazanuz_bot',NULL),(7,'Moida (84 - 120) va An\'om (1 - 110) suralari | 7 - pora','Moida (84 - 120) va An\'om (1 - 110) suralari | 7 - pora\r\n\r\n? Youtube orqali ko\'rish:\r\nhttps://www.youtube.com/watch?v=-fFDNk7Xqbc&list=PLGO8Hj8T_fRlQicAcotRlyV107MMvxwt2&index=7 ? @Ramazanuz_bot',NULL),(8,'An\'om (111 - 165) va A\'rof (1 - 87) suralari | 8 - pora','An\'om (111 - 165) va A\'rof (1 - 87) suralari | 8 - pora \r\n\r\n? Youtube orqali ko\'rish:\r\n\r\n https://www.youtube.com/watch?v=coZFBkZSNo8&list=PLGO8Hj8T_fRlQicAcotRlyV107MMvxwt2&index=8 ? @Ramazanuz_bot',NULL),(9,'A\'rof (88 - 206) va Anfol (1 - 40) suralari | 9 - pora','A\'rof (88 - 206) va Anfol (1 - 40) suralari | 9 - pora\r\n\r\n? Youtube orqali ko\'rish \r\n\r\n (https://www.youtube.com/watch?v=BySpFihNeUY&list=PLGO8Hj8T_fRlQicAcotRlyV107MMvxwt2&index=9)? @Ramazanuz_bot',NULL),(10,'Anfol (41 - 75) va Tavba (1 - 93) suralari | 10 - pora ','Anfol (41 - 75) va Tavba (1 - 93) suralari | 10 - pora \r\n\r\n? Youtube orqali ko\'rish \r\n\r\n (https://www.youtube.com/watch?v=k8mM2hXB5cA&list=PLGO8Hj8T_fRlQicAcotRlyV107MMvxwt2&index=10)? @Ramazanuz_bot',NULL),(11,'Tavba (94 - 129), Yunus va Hud (1 - 5) suralari |11 - pora','Tavba (94 - 129), Yunus va Hud (1 - 5) suralari |11 - pora\r\n\r\n? Youtube orqali ko\'rish \r\n\r\n (https://www.youtube.com/watch?v=BISg3vsFJCY&list=PLGO8Hj8T_fRlQicAcotRlyV107MMvxwt2&index=11)? @Ramazanuz_bot',NULL),(12,'Hud (6 - 123) va Yusuf (1 - 52)  suralari | 12 - pora ','Hud (6 - 123) va Yusuf (1 - 52)  suralari | 12 - pora \r\n\r\n? Youtube orqali ko\'rish \r\n\r\n (https://www.youtube.com/watch?v=OfbEd9s2y8c&list=PLGO8Hj8T_fRlQicAcotRlyV107MMvxwt2&index=12)? @Ramazanuz_bot',NULL),(13,'Yusuf (53 - 111) Ra\'d va Ibrohim suralari | 13 - pora','Yusuf (53 - 111) Ra\'d va Ibrohim suralari | 13 - pora \r\n\r\n? Youtube orqali ko\'rish (https://www.youtube.com/watch?v=RbX6nTWB8kU&list=PLGO8Hj8T_fRlQicAcotRlyV107MMvxwt2&index=13) \r\n\r\n (http://youtube.com/watch?v=7pb9vi3Uxuk)? @Ramazanuz_bot',NULL),(14,'Hijr va Nahl suralari | 14 - pora ','Hijr va Nahl suralari | 14 - pora \r\n\r\n\r\n? Youtube orqali ko\'rish \r\n\r\n (https://www.youtube.com/watch?v=byRef1t9Gxc&list=PLGO8Hj8T_fRlQicAcotRlyV107MMvxwt2&index=14)? @Ramazanuz_bot',NULL),(15,'Isro va Kahf (1 - 74) suralari | 15 - pora ','Isro va Kahf (1 - 74) suralari | 15 - pora \r\n\r\n? Youtube orqali ko\'rish (https://www.youtube.com/watch?v=sQnOH3O1YK8&list=PLGO8Hj8T_fRlQicAcotRlyV107MMvxwt2&index=15) \r\n\r\n (http://youtube.com/watch?v=7pb9vi3Uxuk)? @Ramazanuz_bot',NULL),(16,'Kahf (75 - 110), Maryam va Toha suralari | 16 - pora','Kahf (75 - 110), Maryam va Toha suralari | 16 - pora\r\n\r\n? Youtube orqali ko\'rish \r\n\r\n (https://www.youtube.com/watch?v=AaliDcj79hY&list=PLGO8Hj8T_fRlQicAcotRlyV107MMvxwt2&index=16)? @Ramazanuz_bot',NULL),(17,'Anbiyo va Haj suralari | 17 - pora','Anbiyo va Haj suralari | 17 - pora\r\n\r\n? Youtube orqali ko\'rish \r\n\r\n (https://www.youtube.com/watch?v=TBa9uDDtFxo&list=PLGO8Hj8T_fRlQicAcotRlyV107MMvxwt2&index=17)? @Ramazanuz_bot',NULL),(18,'Mu\'minun, Nur va Furqon (1 - 20) suralari |18 - pora','Mu\'minun, Nur va Furqon (1 - 20) suralari |18 - pora\r\n\r\n? Youtube orqali ko\'rish \r\n\r\n (https://www.youtube.com/watch?v=EXHmr5LEJEc&list=PLGO8Hj8T_fRlQicAcotRlyV107MMvxwt2&index=18)? @Ramazanuz_bot',NULL),(19,'Furqon (21 - 77), Shuaro, Naml (1 - 55) suralari | 19 - pora','Furqon (21 - 77), Shuaro, Naml (1 - 55) suralari | 19 - pora\r\n\r\n? Youtube orqali ko\'rish \r\n\r\n (https://www.youtube.com/watch?v=bIfcUXlaPeE&list=PLGO8Hj8T_fRlQicAcotRlyV107MMvxwt2&index=19)? @Ramazanuz_bot',NULL),(20,'Naml (56 - 93), Qasos, Ankabut (1 - 45) suralari | 20 - pora','Naml (56 - 93), Qasos, Ankabut (1 - 45) suralari | 20 - pora\r\n\r\n? Youtube orqali ko\'rish \r\n\r\n (https://www.youtube.com/watch?v=8Coa86f-Xi0&list=PLGO8Hj8T_fRlQicAcotRlyV107MMvxwt2&index=20)? @Ramazanuz_bot',NULL),(21,'Ankabut (46 - 69), Rum, Luqmon, Sajda va Ahzob (1 - 30) suralari | 21 - pora','Ankabut (46 - 69), Rum, Luqmon, Sajda va Ahzob (1 - 30) suralari | 21 - pora\r\n\r\n? Youtube orqali ko\'rish \r\n\r\n (https://www.youtube.com/watch?v=AtbaINzgJMY&list=PLGO8Hj8T_fRlQicAcotRlyV107MMvxwt2&index=21)? @Ramazanuz_bot',NULL),(22,'Ahzob (31 - 73), Saba\', Fotir va Yasin (1 - 27) suralari | 22 - pora ','Ahzob (31 - 73), Saba\', Fotir va Yasin (1 - 27) suralari | 22 - pora \r\n\r\n? Youtube orqali ko\'rish \r\n\r\n (https://www.youtube.com/watch?v=Mg__rp3i70w&list=PLGO8Hj8T_fRlQicAcotRlyV107MMvxwt2&index=22)? @Ramazanuz_bot',NULL),(23,'Yasin (28 - 83), Soffat, Sod, Zumar (1 - 31) suralari | 23 - pora','Yasin (28 - 83), Soffat, Sod, Zumar (1 - 31) suralari | 23 - pora\r\n\r\n? Youtube orqali ko\'rish \r\n\r\n (https://www.youtube.com/watch?v=igOu-vRgPc0&list=PLGO8Hj8T_fRlQicAcotRlyV107MMvxwt2&index=23)? @Ramazanuz_bot',NULL),(24,'Zumar (32 - 75), G\'ofir, Fussilat (1 - 46) surasi | 24 - pora','Zumar (32 - 75), G\'ofir, Fussilat (1 - 46) surasi | 24 - pora\r\n\r\n? Youtube orqali ko\'rish (https://www.youtube.com/watch?v=YaaQV8v0dYE&list=PLGO8Hj8T_fRlQicAcotRlyV107MMvxwt2&index=24) \r\n\r\n (http://youtube.com/watch?v=7pb9vi3Uxuk)? @Ramazanuz_bot',NULL),(25,'Fussilat (47 - 54), Shuuro, Zuxruf, Duxon va Josiya (1 - 32) suralari | 25 - pora','Fussilat (47 - 54), Shuuro, Zuxruf, Duxon va Josiya (1 - 32) suralari | 25 - pora\r\n\r\n? Youtube orqali ko\'rish \r\n\r\n (https://www.youtube.com/watch?v=XADMu1wYT1Q&list=PLGO8Hj8T_fRlQicAcotRlyV107MMvxwt2&index=25)? @Ramazanuz_bot',NULL),(26,'Josiya (33 - 37), Ahqof, Muhammad, Fath, Hujurot, Qof va Zaariyaat (1 - 30) suralari | 26 - pora','Josiya (33 - 37), Ahqof, Muhammad, Fath, Hujurot, Qof va Zaariyaat (1 - 30) suralari | 26 - pora\r\n\r\n? Youtube orqali ko\'rish \r\n\r\n (https://www.youtube.com/watch?v=ldAjPG6Qego&list=PLGO8Hj8T_fRlQicAcotRlyV107MMvxwt2&index=26)? @Ramazanuz_bot',NULL),(27,'Zaariyaat (31 - 60), Tur, Najm, Qamar, Ar-Rohman, Voqi\'a va Hadid suralari | 27 - pora','Zaariyaat (31 - 60), Tur, Najm, Qamar, Ar-Rohman, Voqi\'a va Hadid suralari | 27 - pora\r\n\r\n? Youtube orqali ko\'rish \r\n\r\n (https://www.youtube.com/watch?v=dsF8GZQFuQs&list=PLGO8Hj8T_fRlQicAcotRlyV107MMvxwt2&index=27)? @Ramazanuz_bot',NULL),(28,'Mujodala, Hashr, Mumtahana, Sooff, Juma, Munofiqun, Tag\'obun, Taloq va Tahrim suralari | 28 - pora','Mujodala, Hashr, Mumtahana, Sooff, Juma, Munofiqun, Tag\'obun, Taloq va Tahrim suralari | 28 - pora\r\n\r\n? Youtube orqali ko\'rish \r\n\r\n (https://www.youtube.com/watch?v=OzzsJW-gWQY&list=PLGO8Hj8T_fRlQicAcotRlyV107MMvxwt2&index=28)? @Ramazanuz_bot',NULL),(29,'29 - 30 poralar ( Fajr surasigacha)','29 - 30 poralar ( Fajr surasigacha)\r\n\r\n? Youtube orqali ko\'rish \r\n\r\n (https://www.youtube.com/watch?v=RRx_zjtdOsY&list=PLGO8Hj8T_fRlQicAcotRlyV107MMvxwt2&index=30)? @Ramazanuz_bot',NULL),(30,'Balad - Nas suralari va Xatmona | 30 - pora','Balad - Nas suralari va Xatmona | 30 - pora\r\n\r\n? Youtube orqali ko\'rish \r\n\r\n (https://www.youtube.com/watch?v=sRbWsD_WUxg&list=PLGO8Hj8T_fRlQicAcotRlyV107MMvxwt2&index=32)? @Ramazanuz_bot',NULL);
/*!40000 ALTER TABLE `qtilovat` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (8,'1626550887','O\'tkir','12','lotin',NULL,1,1),(9,'1118474443','Лазиз',NULL,'lotin',NULL,1,1),(10,'1364609823','Muhammadziyo',NULL,NULL,NULL,1,0),(12,'826850043','Negmurodov Jonibek',NULL,NULL,NULL,1,0),(13,'1122494448','Akram',NULL,NULL,NULL,1,0),(14,'462199401','Jonibek','2','kiril',NULL,1,1),(15,'1391217714','SMM menejer','10','lotin',NULL,1,1);
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

-- Dump completed on 2021-04-13 11:27:28
