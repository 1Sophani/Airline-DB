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
-- Table structure for table `airport`
--

DROP TABLE IF EXISTS `airport`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `airport` (
  `AirportCode` varchar(3) NOT NULL,
  `AirportName` varchar(100) DEFAULT NULL,
  `City` varchar(255) DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`AirportCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `airport`
--

LOCK TABLES `airport` WRITE;
/*!40000 ALTER TABLE `airport` DISABLE KEYS */;
INSERT INTO `airport` VALUES ('ANC','Ted Stevens Anchorage International airport','Anchorage','Arkansas'),('ATL','Hartsfield-Jackson  Atlanta International airport','Atlanta','Georgia'),('AUS','Austin-Bergstrom International airport','Austin','Texas'),('BNA','Nashville International airport','Nashville','Tennessee'),('BOS','Logan International airport','Boston','Massachusetts'),('BUR','Hollywood Burbank Airport','Burbank','California'),('BWI','Baltimore/Washington International airport','Baltimore','Maryland'),('CHS','Charleston International airport','Charleston','South Carolina'),('CLE','Cleveland Hopkins International airport','Cleveland','Ohio'),('CLT','Charlotte Douglas International airport','Charlotte','North Carolina'),('CVG','Cincinnati/Northern Kentucky International airport','Hebron','Kentucky'),('DAL','Dallas Love Field','Dallas ','Texas'),('DCA','Ronald Reagan Washington National airport','Washington','District of Columbia'),('DEN','Denver International airport','Denver','Colorado'),('DFW','Dallas Fort Worth International airport','Dallas','Texas'),('DTW','Detroit Metropolitan Wayne Country airport','Romulus','Michigan'),('EWR','Newark Liberty International airport','Newark ','New Jersey'),('FLL','Fort Lauderdal-Hollywood International airport','Fort Lauderdale','Florida'),('HNL','Daniel K. Inouye International airport','Honolulu','Hawaii'),('IAD','Washington Dulles International airport','Dulles','Virginia'),('IAH','George Bush Intercontinental airport','Houston','Texas'),('IND','Indianapolis International airport','Indianapolis','Indiana'),('JAX','Jacksonville International Airport','Jacksonville ','Florida'),('JFK','John F. Kennedy International airport','Queens','New York'),('LAS','Harry Reid International airport','Las Vegas','Nevada'),('LAX','Los Angeles International airport','Los Angeles','California'),('LGA','LaGuardia airport','Queens','New York'),('MCI','Kansas City International airport','Kansas City','Missouri'),('MCO','Orlando International airport','Orlando','Florida'),('MDW','Midway International airport','Chicago','Illinois'),('MEM','Meemphis International airport','Memphis','Tennessee'),('MIA','Miami International airport','Miami','Florida'),('MSP','Minneapolis-Saint Paul International airport','St. Paul','Minnesota'),('OAK','Oakland International airport','Oakland','California'),('OGG','Kahului airport','Kahului','Hawaii'),('ORD','Chicago O\'Hare International airport','Chicago','Illinois'),('PBI','Palm Beach International airport','West Palm Beach','Florida'),('PDX','Portland International airport','Portland','Oregon'),('PHL','Philadelphia International airport','Philadelphia','Pennslyvania'),('PHX','Phoenix Sky Harbor International airport','Phoenix','Arizona'),('PIT','Pittsburgh International airport','Pittsburgh','Pennslyvania'),('RDU','Raleigh-Durham International airport','Raleigh','North Carolina'),('RSW','Southwest Florida International airport','Fort Myers','Florida'),('SAN','San Diego International airport','San Diego','California'),('SAT','San Antonio International airport','San Antonio','Texas'),('SEA','Seattle-Tacoma International airport','Seattle','Washington'),('SFO','San Francisco International airport','San Francisco ','California'),('SLC','Salt Lake City International airport','Salt Lake City','Utah'),('SMF','Sacramento International airport','Sacramento','California'),('TPA','Tampa International airport','Tampa','Florida');
/*!40000 ALTER TABLE `airport` ENABLE KEYS */;
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
