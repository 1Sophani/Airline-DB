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

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `BookingID` varchar(6) NOT NULL,
  `FlightID` int DEFAULT NULL,
  `PassengerID` int DEFAULT NULL,
  `SeatNo` varchar(3) DEFAULT NULL,
  `BookingDate` date DEFAULT NULL,
  PRIMARY KEY (`BookingID`),
  KEY `FlightID` (`FlightID`),
  KEY `PassengerID` (`PassengerID`),
  CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`FlightID`) REFERENCES `flight` (`FlightID`),
  CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`PassengerID`) REFERENCES `passenger` (`PassengerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES ('A5G9JP',23062,1398724,'25F','2022-02-08'),('A7S5DF',45216,7189324,' 5F','2022-03-27'),('C7V2H3',58797,9173824,'13A','2022-01-31'),('J6K8RY',88254,3729164,' 8E','2022-01-15'),('K8I5PO',81302,9281346,'11C','2022-01-08'),('M3Z9FA',17994,4837269,' 3E','2022-02-27'),('N3P5QZ',58797,4692183,'14E','2022-02-04'),('NBVCXZ',12872,3718926,'29D','2022-02-28'),('Q2S7WX',12153,8372619,'27C','2022-03-24'),('Q3R7LH',63828,9123658,'16C','2022-03-14'),('Q6D8XN',88254,6123987,'30D','2022-02-20'),('R3T6YW',45216,2739861,'22C','2022-03-11'),('XY7K8L',15019,6938417,' 1A','2022-01-20'),('YUIOPQ',52284,8391274,'10F','2022-02-22'),('ZXCVBN',26210,8173269,'9A','2022-01-30');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight`
--

DROP TABLE IF EXISTS `flight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight` (
  `FlightID` int NOT NULL,
  `FlightNo` varchar(20) DEFAULT NULL,
  `DepartureDate` datetime DEFAULT NULL,
  `OAirCode` varchar(3) DEFAULT NULL,
  `DAirCode` varchar(3) DEFAULT NULL,
  `AvailableSeats` int DEFAULT NULL,
  PRIMARY KEY (`FlightID`),
  UNIQUE KEY `FlightNumber` (`FlightNo`),
  KEY `OAirCode` (`OAirCode`),
  KEY `DAirCode` (`DAirCode`),
  CONSTRAINT `flight_ibfk_1` FOREIGN KEY (`OAirCode`) REFERENCES `airport` (`AirportCode`),
  CONSTRAINT `flight_ibfk_2` FOREIGN KEY (`DAirCode`) REFERENCES `airport` (`AirportCode`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight`
--

LOCK TABLES `flight` WRITE;
/*!40000 ALTER TABLE `flight` DISABLE KEYS */;
INSERT INTO `flight` VALUES (467,'AA2736','2022-04-17 00:00:00','DTW','EWR',3),(1312,'SW1470','2022-04-17 00:00:00','LAX','DFW',7),(2191,'SW1171','2022-04-18 00:00:00','ATL','PHL',9),(2558,'AA1576','2022-04-18 00:00:00','IAD','MIA',9),(3612,'NK9644','2022-04-11 00:00:00','MIA','DEN',1),(6885,'NK1081','2022-04-18 00:00:00','ATL','CLT',1),(7614,'AA4385','2022-04-15 00:00:00','CLT','DEN',1),(7993,'SW6046','2022-04-18 00:00:00','ATL','DFW',8),(10228,'NK7550','2022-04-11 00:00:00','ATL','DEN',1),(10988,'JET4699','2022-04-18 00:00:00','ATL','CLT',1),(12153,'DL994','2022-04-17 00:00:00','ATL','BOS',1),(12769,'DL4831','2022-04-17 00:00:00','MIA','BOS',1),(12872,'NK7893','2022-04-13 00:00:00','CLT','PHL',2),(14371,'NK2087','2022-04-17 00:00:00','DTW','BOS',7),(15019,'NK4312','2022-04-17 00:00:00','ATL','DEN',7),(15086,'DL030','2022-04-17 00:00:00','ATL','DEN',7),(16238,'DL456','2022-04-18 00:00:00','ATL','JFK',1),(17095,'SW2013','2022-04-13 00:00:00','ATL','DEN',3),(17660,'AA7912','2022-04-18 00:00:00','IAD','JFK',9),(17890,'AA676','2022-04-18 00:00:00','IAD','CLT',9),(17994,'AA731','2022-04-18 00:00:00','LAX','MIA',6),(18312,'AA1377','2022-04-17 00:00:00','CLT','DEN',3),(18400,'NK4370','2022-04-18 00:00:00','MIA','CLT',1),(19360,'NK3719','2022-04-17 00:00:00','FLL','BOS',1),(22110,'AA2376','2022-04-18 00:00:00','ATL','FLL',1),(22126,'SW2466','2022-04-19 00:00:00','MIA','DFW',9),(23062,'JET7511','2022-04-14 00:00:00','LGA','DEN',4),(26210,'DL8167','2022-04-17 00:00:00','ATL','BOS',1),(26323,'DL6620','2022-04-17 00:00:00','ATL','DEN',7),(26408,'DL6422','2022-04-16 00:00:00','ATL','DEN',6),(27038,'NK9815','2022-04-17 00:00:00','ATL','BOS',1),(30164,'DL4784','2022-04-18 00:00:00','LAX','JFK',4),(30517,'AA2783','2022-04-17 00:00:00','ATL','LGA',8),(31620,'AA210','2022-04-15 00:00:00','MIA','DEN',5),(34200,'DL467','2022-04-17 00:00:00','ATL','IAD',9),(34380,'','2022-04-17 00:00:00','ATL','DFW',1),(35001,'JET360','2022-04-10 00:00:00','LGA','DFW',0),(35572,'AA5744','2022-04-19 00:00:00','ATL','DEN',9),(36148,'AA1279','2022-04-17 00:00:00','DTW','DEN',7),(38230,'DL2155','2022-04-17 00:00:00','ATL','LAX',9),(39119,'AA2318','2022-04-18 00:00:00','ATL','MIA',2),(39129,'DL546','2022-04-17 00:00:00','CLT','EWR',7),(39951,'NK951','2022-04-18 00:00:00','ATL','CLT',1),(40033,'SW1657','2022-04-14 00:00:00','LAX','DFW',4),(43379,'JET102','2022-04-16 00:00:00','PHL','CLT',7),(45216,'AA4833','2022-04-18 00:00:00','MIA','JFK',4),(45220,'AA5818','2022-04-18 00:00:00','CLT','EWR',3),(46422,'DL5211','2022-04-18 00:00:00','CLT','PHL',1),(49445,'DL4153','2022-04-11 00:00:00','MIA','DFW',1),(49633,'DL285','2022-04-18 00:00:00','ATL','BOS',0),(50044,'SW2910','2022-04-16 00:00:00','ATL','DEN',4),(52284,'AA6329','2022-04-17 00:00:00','ATL','BOS',9),(52653,'AA2477','2022-04-19 00:00:00','ATL','DEN',2),(52664,'SW2572','2022-04-16 00:00:00','ATL','DEN',9),(58797,'AA1018','2022-04-17 00:00:00','ATL','BOS',4),(63828,'DL4590','2022-04-18 00:00:00','IAD','JFK',3),(65896,'AA3427','2022-04-17 00:00:00','DTW','DEN',7),(68604,'DL118','2022-04-18 00:00:00','ATL','LGA',7),(69053,'JET1002','2022-04-10 00:00:00','JFK','FLL',0),(69391,'DL941','2022-04-17 00:00:00','PHL','LAX',7),(70763,'JET1346','2022-04-16 00:00:00','ATL','CLT',1),(71176,'AA6261','2022-04-17 00:00:00','ATL','EWR',7),(71429,'JET3041','2022-04-10 00:00:00','LAX','DFW',0),(71775,'DL1033','2022-04-17 00:00:00','ATL','IAD',2),(72054,'SW644','2022-04-16 00:00:00','PHL','MIA',0),(72561,'DL518','2022-04-17 00:00:00','ATL','MIA',1),(73880,'AA5942','2022-04-17 00:00:00','ATL','BOS',9),(74225,'NK4393','2022-04-14 00:00:00','ATL','BOS',9),(76147,'AA5964','2022-04-18 00:00:00','LAX','MIA',6),(79367,'AA0594','2022-04-17 00:00:00','DTW','IAD',3),(80325,'DL9852','2022-04-17 00:00:00','PHL','MIA',7),(81302,'AA4797','2022-04-17 00:00:00','ATL','LGA',9),(82141,'NK3122','2022-04-15 00:00:00','PHL','MIA',5),(83179,'SW7421','2022-04-17 00:00:00','ATL','DEN',7),(83195,'NK5593','2022-04-14 00:00:00','ATL','FLL',9),(84697,'DL1344','2022-04-14 00:00:00','ATL','LAX',4),(87260,'NK4313','2022-04-13 00:00:00','DTW','BOS',1),(87623,'NK5899','2022-04-19 00:00:00','CLT','BOS',0),(88146,'JET3164','2022-04-13 00:00:00','BOS','DFW',3),(88254,'DL1440','2022-04-19 00:00:00','LAX','PHL',9),(89077,'JET785','2022-04-18 00:00:00','CLT','LGA',1),(89329,'JET9468','2022-04-11 00:00:00','JFK','DEN',1),(91479,'NK2946','2022-04-16 00:00:00','ATL','BOS',9),(93089,'DL7344','2022-04-18 00:00:00','ATL','CLT',4),(93352,'SW411','2022-04-17 00:00:00','ATL','DEN',7),(96125,'AA9631','2022-04-19 00:00:00','ATL','DEN',9);
/*!40000 ALTER TABLE `flight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passenger`
--

DROP TABLE IF EXISTS `passenger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passenger` (
  `PassengerID` int NOT NULL,
  `Fname` varchar(50) DEFAULT NULL,
  `Lname` varchar(50) DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Phone` varchar(20) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  PRIMARY KEY (`PassengerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passenger`
--

LOCK TABLES `passenger` WRITE;
/*!40000 ALTER TABLE `passenger` DISABLE KEYS */;
INSERT INTO `passenger` VALUES (1398724,' Natalie ','Turner','1993-09-12','natalie.turner@aol.com','555-789-0123',30),(1825379,'Amanda ','Martinez','1983-12-30','amanda.martinez@aol.com','555-789-0123',40),(2147853,'Ryan ','Scott','1977-11-01','ryan.scott@aol.com','555-456-7890',46),(2718945,'Heather ','Perez','1993-02-20','heather.perez@icloud.com','555-789-0123',31),(2739861,'Samantha ','Cooper','1982-03-18',' sam.cooper@gmail.com','555-345-6789',42),(2849163,'Joshua ','Phillips','1995-03-08',' joshua.phillips@comcast.net','555-678-9012',29),(2918473,'Olivia ','Rodriguez','1982-01-28','olivia.rodriguez@aol.com','555-345-6789',42),(2978163,' Jennifer ','Hall','1981-03-12',' jennifer.hall@msn.com','555-567-8901',43),(3158942,' Jessica ','Jones','1976-09-03',' jessica.jones@icloud.com','555-567-8901',47),(3579246,'Lauren ','Rodriguez','1995-06-27',' lauren.rodriguez@msn.com','555-901-2345',28),(3629187,'Michael ','Carter','1979-09-29','michael.carter@cox.net','555-890-1234',44),(3698245,'Kimberly ','Nelson','1982-04-03',' kimberly.nelson@msn.com','555-123-4567',42),(3718926,'Jacob ','Turner','1987-06-23','jacob.turner@yahoo.com','555-012-3456',36),(3729164,'Samuel ','Garcia','1978-12-25',' samuel.garcia@aol.com','555-890-1234',45),(3792164,'Justin ','Lee','1980-09-06',' justin.lee@gmail.com','555-678-9012',43),(4281936,' Jessica ','Hill','1989-08-07','essica.hill@cox.net','555-567-8901',34),(4371896,'Christopher ','Campbell','1988-06-12','christopher.campbell@yahoo.com','555-456-7890',35),(4692183,' Mariah ','Turner','1993-07-11','mariah.turner@icloud.com','(555) 789-0123',30),(4729831,'Madison ','Turner','1981-04-22',' madison.turner@aol.com','555-345-6789',43),(4837269,'Daniel ','Lewis','1990-08-19','daniel.lewis@aol.com','555-456-7890',33),(4851739,'Ashley ','Wilson','1981-08-22','ashley.wilson@yahoo.com','555-123-4567',42),(4918237,'Sophia ','Rodriguez','1985-02-28','sophia.rodriguez@icloud.com','555-901-2345',39),(4938271,'Jennifer ','Murphy','1992-05-27',' jennifer.murphy@msn.com','555-901-2345',31),(4967281,' Sophia ','Clark','1984-09-12','sophia.clark@yahoo.com','555-123-456',39),(5248163,'Emily ','Wu','1984-10-03','emily.wu@cox.net','555-123-4567',39),(5281469,'Michael ','Smith','1978-03-25','michael.smith@icloud.com','555-234-5678',46),(5381972,'Kevin ','Turner','1978-06-14','kevin.turner@yahoo.com','555-890-1234',45),(5492817,'Sarah ','Adams','1986-09-08','sarah.adams@gmail.com','555-789-0123',37),(5721983,' Nicholas ','Turner','1992-12-08','nicholas.turner@msn.com','555- 234-5678',31),(5748921,'Gregory ','Adams','1990-08-17','gregory.adams@comcast.net','555-234-5678',33),(5783219,'Matthew ','Cooper','1993-07-11','matthew.cooper@comcast.net','555-678-9012',30),(5829163,'Alexander ','Turner','1993-04-25','alexander.turner@msn.com','555-234-5678',31),(5932187,'David ','Nelson','1987-06-02','david.nelson@cox.net','555-012-3456',36),(5963817,' Elizabeth ','Hill','1981-10-25','elizabeth.hill@gmail.com','555-567-8901',42),(6123987,'Amanda ','Clark','1985-11-04','amanda.clark@yahoo.com','555-345-6789',38),(6172849,'Brian ','Thompson','1987-09-03','brian.thompson@aol.com','555- 678-9012',36),(6192837,' Ethan ','Baker','1977-08-14',' ethan.baker@cox.net','555-456-7890',46),(6219843,' Jessica ','Turner','1991-01-25','jessica.turner@aol.com','555-567-8901',33),(6294813,'Ava ','Adams','1990-12-18','ava.adams@gmail.com','555-567-8901',33),(6391872,'Matthew ','Rivera','1980-01-23','matthew.rivera@msn.com','555-678-9012',44),(6453781,'Daniel ','Garcia','1979-04-14','daniel.garcia@gmail.com','555-890-1234',45),(6475892,'Sarah ','Williams','1990-11-08','sarah.williams@comcast.net','555-345-6789',33),(6481972,'Emily ','Mitchell','1976-01-30','emily.mitchell@icloud.com','555-345-6789',48),(6521784,'Matthew ','Foster','1979-11-14','matthew.foster@gmail.com','555-890-1234',44),(6718293,' Daniel ','Cook','1976-11-18','daniel.cook@yahoo.com','555- 456-7890',47),(6748291,'Jessica ','Rivera','1993-04-22','jessica.rivera@icloud.com','555-901-2345',31),(6912837,' Daniel ','Martinez','1976-07-05',' daniel.martinez@comcast.net','555-456-7890',47),(6938172,'Rachel ','Clark','1988-10-15','rachel.clark@gmail.com','555-123-4567',35),(6938417,'Megan ','Young','1984-07-28','megan.young@comcast.net','555-345-6789',39),(6947538,' Samantha ','Hall','1986-10-27','samantha.hall@aol.com','555-901-2345',37),(7158293,'Brandon ','Baker','1975-12-10','brandon.baker@gmail.com','555-012-3456',48),(7189324,'David ','Carter','1977-12-17','david.carter@comcast.net','555-890-1234',46),(7189362,'Amanda ','Baker','1983-07-21','amanda.baker@gmail.com','555-789-0123',40),(7263941,'Jacob ','Turner','1980-07-03',' jacob.turner@gmail.com','555-012-3456',43),(7264819,'Penelope ','Brown','1990-06-14','penelope.brown@icloud.com','555-567-8901',33),(7298163,'Christopher ','Davis','1988-02-19','christopher.davis@msn.com','555-678-9012',36),(7329164,' Ethan ','Lewis','1979-11-17','ethan.lewis@yahoo.com','555-890-1234',44),(7382916,'Lauren ','Anderson','1994-02-15','lauren.anderson@icloud.com','555-123-4567',30),(7819426,' Olivia ','Martinez','1983-05-21','olivia.martinez@aol.com','555-345-6789',40),(8173269,'Joshua','Turner','1982-03-18','josh.turner@icloud.com','555-234-5678',42),(8192643,'Mia ','Martinez','1983-02-10','mia.martinez@yahoo.com','555-901-2345',41),(8297146,' Matthew ','Hernandez','1987-10-09','matthew.hernandez@icloud.com','555-012-3456',36),(8371964,'William ','Thompson','1994-01-19','william.thompson@cox.net','555-234-5678',30),(8372619,'Joshua ','Hill','1982-05-21','joshua.hill@icloud.com','555-678-9012',41),(8372916,'Michael ','Mitchell','1978-07-31','michael.mitchell@gmail.com','555-012-3456',45),(8391274,'Joseline ','Perez','1982-04-27','joseline.perez@gmail.com','555-345-6789',42),(8394761,'Emily','Johnson','1985-07-12','emily.johnson@yahoo.com',' 555-123-4567',38),(8472931,'Benjamin ','Adams','1984-06-30','benjamin.adams@yahoo.com','555-678-9012',39),(8561927,'Stephanie ','King','1989-05-24','stephanie.king@msn.com','555-567-8901',34),(8612374,'Matthew ','Martinez','1988-05-26','matthew.martinez@gmail.com','555-678-9012',35),(9123658,'David ','Brown','1982-05-17','david.brown@gmail.com','555-456-7890',41),(9173824,'Sophia ','Johnson','1988-09-12','sophia.johnson@icloud.com','555-123-4567',35),(9173826,' Jennifer ','Lewis','1994-05-16',' jennifer.lewis@cox.net','555-789-0123',29),(9258173,'Christopher ','White','1983-06-28','christopher.white@icloud.com','555-234-5678',40),(9271463,' Joshua ','Lopez','1992-03-15','joshua.lopez@icloud.com','555-234-5678',32),(9281346,' Lily ','Scott','1989-03-27',' lily.scott@icloud.com','555-567-8901',35),(9283714,' Isabella ','Turner','1995-08-14','isabella.turner@icloud.com','555-789-0123',28),(9283741,'Chloe ','Mitchell','1986-10-16','chloe.mitchell@yahoo.com','555-123-4567',37),(9378216,'Daniel ','King','1977-06-21',' daniel.king@cox.net','555-456-7890',46),(9721836,'Christian ','Young','1991-01-14','christian.young@icloud.com','555-234-5678',33);
/*!40000 ALTER TABLE `passenger` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2024-04-28 19:19:05
