-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: zoomers
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `CustomersID` int NOT NULL AUTO_INCREMENT,
  `CustomersSurname` varchar(100) NOT NULL,
  `CustomersName` varchar(100) NOT NULL,
  `CustomersPatronymic` varchar(100) DEFAULT NULL,
  `CustomersNumberPhone` varchar(250) NOT NULL,
  `CustomersLogin` int NOT NULL,
  `CustomersPassword` int NOT NULL,
  `CustomersStatus` varchar(100) NOT NULL,
  `CustomersDate_of_dismissal` datetime NOT NULL,
  PRIMARY KEY (`CustomersID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `performers`
--

DROP TABLE IF EXISTS `performers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `performers` (
  `PerformersID` int NOT NULL AUTO_INCREMENT,
  `PerformersSurname` varchar(100) NOT NULL,
  `PerformersName` varchar(100) NOT NULL,
  `PerformersPatronymic` varchar(100) NOT NULL,
  `PerformersLogin` int NOT NULL,
  `PerformersPassword` int NOT NULL,
  PRIMARY KEY (`PerformersID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performers`
--

LOCK TABLES `performers` WRITE;
/*!40000 ALTER TABLE `performers` DISABLE KEYS */;
/*!40000 ALTER TABLE `performers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `price_list_work`
--

DROP TABLE IF EXISTS `price_list_work`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `price_list_work` (
  `Price_List_WordID` int NOT NULL AUTO_INCREMENT,
  `Price_List_Word_Title` varchar(100) NOT NULL,
  `Price_List_Word_Description` varchar(100) NOT NULL,
  `Price_List_Word_Cost` int NOT NULL,
  PRIMARY KEY (`Price_List_WordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `price_list_work`
--

LOCK TABLES `price_list_work` WRITE;
/*!40000 ALTER TABLE `price_list_work` DISABLE KEYS */;
/*!40000 ALTER TABLE `price_list_work` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receipt_journal`
--

DROP TABLE IF EXISTS `receipt_journal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receipt_journal` (
  `Receipt_JournalID` int NOT NULL AUTO_INCREMENT,
  `CustomersID` int NOT NULL,
  `PerformersID` int NOT NULL,
  `Price_List_WordID` int NOT NULL,
  `Total_amount` int NOT NULL,
  PRIMARY KEY (`Receipt_JournalID`),
  KEY `CustomersID` (`CustomersID`),
  KEY `PerformersID` (`PerformersID`),
  KEY `Price_List_WordID` (`Price_List_WordID`),
  CONSTRAINT `receipt_journal_ibfk_1` FOREIGN KEY (`CustomersID`) REFERENCES `customers` (`CustomersID`),
  CONSTRAINT `receipt_journal_ibfk_2` FOREIGN KEY (`PerformersID`) REFERENCES `performers` (`PerformersID`),
  CONSTRAINT `receipt_journal_ibfk_3` FOREIGN KEY (`Price_List_WordID`) REFERENCES `price_list_work` (`Price_List_WordID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipt_journal`
--

LOCK TABLES `receipt_journal` WRITE;
/*!40000 ALTER TABLE `receipt_journal` DISABLE KEYS */;
/*!40000 ALTER TABLE `receipt_journal` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-23 21:40:25
