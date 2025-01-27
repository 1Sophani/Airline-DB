CREATE DATABASE  IF NOT EXISTS `airline` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `airline`;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: airline
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `PaymentID` int NOT NULL,
  `BookingID` varchar(6) DEFAULT NULL,
  `PaymentMethod` varchar(50) DEFAULT NULL,
  `Amount` decimal(10,2) DEFAULT NULL,
  `TransactionDate` date DEFAULT NULL,
  PRIMARY KEY (`PaymentID`),
  KEY `BookingID` (`BookingID`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`BookingID`) REFERENCES `booking` (`BookingID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (210301001,'ZXCVBN','Visa Debit',248.60,'2022-01-30'),(210302002,'C7V2H3','Mastercard Credit',202.40,'2022-01-31'),(210303003,'N3P5QZ','Amex',134.80,'2022-02-04'),(210304004,'A5G9JP','Paypal',149.50,'2022-02-08'),(210305005,'Q6D8XN','Amex',232.70,'2022-02-20'),(210306006,'YUIOPQ','Discover',150.80,'2022-02-22'),(210307007,'M3Z9FA','Amex',251.10,'2022-02-27'),(210308008,'NBVCXZ','Discover',79.90,'2022-02-28'),(210309009,'R3T6YW','Mastercard Debit',198.90,'2022-03-11'),(210310010,'Q3R7LH','Visa Credit',251.10,'2022-03-14'),(210311011,'Q2S7WX','Amex',252.60,'2022-03-24'),(210312012,'A7S5DF','Mastercard Debit',189.70,'2022-03-27'),(210313013,'XY7K8L','Visa Credit',278.20,'2022-01-20'),(210314014,'K8I5PO','Paypal',178.60,'2022-01-08'),(210315015,'J6K8RY','Visa Debit',110.70,'2022-01-15');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-28 19:21:12
