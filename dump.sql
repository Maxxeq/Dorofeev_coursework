-- MySQL dump 10.13  Distrib 8.0.26, for Win64 (x86_64)
--
-- Host: localhost    Database: hschool
-- ------------------------------------------------------
-- Server version	8.0.26

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
-- Table structure for table `дисциплины`
--

DROP TABLE IF EXISTS `дисциплины`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `дисциплины` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `Название` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `дисциплины`
--

LOCK TABLES `дисциплины` WRITE;
/*!40000 ALTER TABLE `дисциплины` DISABLE KEYS */;
INSERT INTO `дисциплины` VALUES (1,'Математический анализ'),(2,'Метрология'),(3,'Введение в специальность'),(4,'Управление данными'),(5,'Основы информатики'),(6,'Методы оптимизации'),(7,'Программирование'),(8,'Английский'),(9,'Алгебраические структуры');
/*!40000 ALTER TABLE `дисциплины` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `журнал успеваемости`
--

DROP TABLE IF EXISTS `журнал успеваемости`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `журнал успеваемости` (
  `Id` int unsigned NOT NULL AUTO_INCREMENT,
  `Студент` int unsigned NOT NULL,
  `Дисциплина` int unsigned NOT NULL,
  `Оценка` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`Id`),
  KEY `журнал_успеваемости_FK` (`Студент`) USING BTREE,
  KEY `журнал_успеваемости_FK_1` (`Дисциплина`) USING BTREE,
  CONSTRAINT `журнал_успеваемости_FK` FOREIGN KEY (`Студент`) REFERENCES `студенты` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `журнал_успеваемости_FK_1` FOREIGN KEY (`Дисциплина`) REFERENCES `дисциплины` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=244 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `журнал успеваемости`
--

LOCK TABLES `журнал успеваемости` WRITE;
/*!40000 ALTER TABLE `журнал успеваемости` DISABLE KEYS */;
INSERT INTO `журнал успеваемости` VALUES (163,1,1,'5'),(164,1,2,'5'),(165,1,3,'4'),(166,1,4,'4'),(167,1,5,'5'),(168,1,6,'4'),(169,1,7,'0'),(170,1,8,'0'),(171,1,9,'4'),(172,2,1,'2'),(173,2,2,'5'),(174,2,3,'5'),(175,2,4,'1'),(176,2,5,'3'),(177,2,6,'1'),(178,2,7,'5'),(179,2,8,'1'),(180,2,9,'2'),(181,3,1,'3'),(182,3,2,'0'),(183,3,3,'3'),(184,3,4,'0'),(185,3,5,'2'),(186,3,6,'3'),(187,3,7,'4'),(188,3,8,'4'),(189,3,9,'3'),(190,4,1,'2'),(191,4,2,'2'),(192,4,3,'5'),(193,4,4,'5'),(194,4,5,'0'),(195,4,6,'5'),(196,4,7,'0'),(197,4,8,'3'),(198,4,9,'4'),(199,5,1,'5'),(200,5,2,'1'),(201,5,3,'1'),(202,5,4,'0'),(203,5,5,'5'),(204,5,6,'3'),(205,5,7,'2'),(206,5,8,'3'),(207,5,9,'3'),(208,6,1,'2'),(209,6,2,'3'),(210,6,3,'1'),(211,6,4,'5'),(212,6,5,'4'),(213,6,6,'5'),(214,6,7,'2'),(215,6,8,'4'),(216,6,9,'3'),(217,7,1,'3'),(218,7,2,'1'),(219,7,3,'5'),(220,7,4,'3'),(221,7,5,'1'),(222,7,6,'4'),(223,7,7,'4'),(224,7,8,'5'),(225,7,9,'2'),(226,8,1,'0'),(227,8,2,'0'),(228,8,3,'4'),(229,8,4,'4'),(230,8,5,'2'),(231,8,6,'4'),(232,8,7,'4'),(233,8,8,'2'),(234,8,9,'3'),(235,9,1,'2'),(236,9,2,'3'),(237,9,3,'4'),(238,9,4,'2'),(239,9,5,'0'),(240,9,6,'3'),(241,9,7,'3'),(242,9,8,'2'),(243,9,9,'3');
/*!40000 ALTER TABLE `журнал успеваемости` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `специальности`
--

DROP TABLE IF EXISTS `специальности`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `специальности` (
  `ID` int unsigned NOT NULL AUTO_INCREMENT,
  `Название` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `специальности`
--

LOCK TABLES `специальности` WRITE;
/*!40000 ALTER TABLE `специальности` DISABLE KEYS */;
INSERT INTO `специальности` VALUES (1,'Компьютерная безопасность');
/*!40000 ALTER TABLE `специальности` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `студенты`
--

DROP TABLE IF EXISTS `студенты`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `студенты` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ФИО` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Год поступления` year NOT NULL,
  `Форма обучения` int unsigned DEFAULT NULL,
  `Номер группы` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Специальность` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `студенты_FK` (`Форма обучения`) USING BTREE,
  KEY `студенты_FK_1` (`Специальность`),
  CONSTRAINT `студенты_FK` FOREIGN KEY (`Форма обучения`) REFERENCES `форма обучения` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `студенты_FK_1` FOREIGN KEY (`Специальность`) REFERENCES `специальности` (`ID`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `студенты`
--

LOCK TABLES `студенты` WRITE;
/*!40000 ALTER TABLE `студенты` DISABLE KEYS */;
INSERT INTO `студенты` VALUES (1,'Иванов Иван Иванович',2019,1,'9363',1),(2,'Сергеев Сергей Сергеевич',2019,1,'9362',1),(3,'Александров Александр Александрович',2019,1,'9363',1),(4,'Овчинникова Маргарита Артёмовна',2019,1,'9362',1),(5,'Романов Артём Давидович',2019,2,'9361',1),(6,'Никитина Вероника Степановна',2019,2,'9362',1),(7,'Орлов Александр Владиславович',2019,1,'9363',1),(8,'Щербакова Мадина Матвеевна',2019,3,'9362',1),(9,'Сергеева Полина Кирилловна',2019,3,'9361',1);
/*!40000 ALTER TABLE `студенты` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `учебный план`
--

DROP TABLE IF EXISTS `учебный план`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `учебный план` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `Специальность` int unsigned NOT NULL,
  `Дисциплина` int unsigned NOT NULL,
  `Семестр` int unsigned NOT NULL,
  `Количество отводимых часов` int unsigned NOT NULL,
  `Форма отчётности` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `учебный_план_FK` (`Дисциплина`) USING BTREE,
  KEY `учебный_план_FK_1` (`Специальность`),
  CONSTRAINT `учебный_план_FK` FOREIGN KEY (`Дисциплина`) REFERENCES `дисциплины` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `учебный_план_FK_1` FOREIGN KEY (`Специальность`) REFERENCES `специальности` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `учебный план`
--

LOCK TABLES `учебный план` WRITE;
/*!40000 ALTER TABLE `учебный план` DISABLE KEYS */;
INSERT INTO `учебный план` VALUES (1,1,1,1,120,'Экзамен'),(2,1,2,1,120,'Экзамен'),(3,1,3,1,120,'Экзамен'),(4,1,4,1,120,'Экзамен'),(5,1,5,1,120,'Экзамен'),(6,1,6,2,120,'Экзамен'),(7,1,7,2,120,'Экзамен'),(8,1,8,2,120,'Экзамен'),(9,1,9,2,120,'Экзамен');
/*!40000 ALTER TABLE `учебный план` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `форма обучения`
--

DROP TABLE IF EXISTS `форма обучения`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `форма обучения` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `Форма обучения` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `форма обучения`
--

LOCK TABLES `форма обучения` WRITE;
/*!40000 ALTER TABLE `форма обучения` DISABLE KEYS */;
INSERT INTO `форма обучения` VALUES (1,'Очная'),(2,'Заочная'),(3,'Вечерняя');
/*!40000 ALTER TABLE `форма обучения` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'hschool'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-12-20 23:20:28
