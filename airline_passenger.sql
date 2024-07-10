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
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-28 19:21:12
