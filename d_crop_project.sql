CREATE DATABASE  IF NOT EXISTS `d_crop` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `d_crop`;
-- MySQL dump 10.13  Distrib 8.0.41, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: d_crop
-- ------------------------------------------------------
-- Server version	8.0.41

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
-- Table structure for table `project`
--

DROP TABLE IF EXISTS project;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE project (
  p_name varchar(100) NOT NULL,
  p_number int NOT NULL AUTO_INCREMENT,
  p_location varchar(100) DEFAULT NULL,
  dept_number int DEFAULT NULL,
  PRIMARY KEY (p_number),
  KEY dept_number (dept_number),
  CONSTRAINT project_ibfk_1 FOREIGN KEY (dept_number) REFERENCES department (dept_number) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project`
--

LOCK TABLES project WRITE;
/*!40000 ALTER TABLE project DISABLE KEYS */;
INSERT INTO project VALUES ('AI Research',1,'Chandigarh',2),('Smart City Initiative',2,'Nagpur',8),('E-Governance',3,'Ahmedabad',7),('Cybersecurity Upgrade',4,'Hyderabad',1),('5G Expansion',5,'Meerut',2),('Healthcare Digitalization',6,'Lucknow',7),('Renewable Energy Grid',7,'Varanasi',3),('Smart Traffic Management',8,'Hyderabad',3),('Blockchain Finance',9,'Srinagar',6),('E-Learning Platform',10,'Bangalore',5),('Digital Agriculture',11,'Meerut',4),('IoT in Manufacturing',12,'Bhopal',3),('Smart Water Management',13,'Rajkot',2),('Green Building Infrastructure',14,'Nagpur',8),('AI in Healthcare',15,'Srinagar',8),('Automated Customer Service',16,'Chandigarh',6),('Cloud Computing Expansion',17,'Ahmedabad',4),('Big Data Analytics',18,'Delhi',8),('Digital Payment System',19,'Vadodara',8),('Robotic Process Automation',20,'Vadodara',1),('E-Commerce Optimization',21,'Pune',7),('Cyber Threat Intelligence',22,'Lucknow',2),('Facial Recognition Security',23,'Lucknow',1),('AI-powered CRM',24,'Patna',3),('Remote Work Infrastructure',25,'Patna',4),('EdTech Revolution',26,'Ahmedabad',3),('Blockchain in Voting System',27,'Delhi',5),('Food Supply Chain Management',28,'Ludhiana',2),('Autonomous Vehicles',29,'Kolkata',3),('Space Research Program',30,'Kolkata',4),('AI Chatbot Development',31,'Patna',3),('Satellite Communication Network',32,'Hyderabad',7),('Medical AI Assistant',33,'Mumbai',6),('AI-based Fraud Detection',34,'Chennai',1),('Digital Banking Transformation',35,'Delhi',6),('Online Identity Verification',36,'Lucknow',8),('Virtual Reality Training',37,'Chandigarh',4),('Metaverse Development',38,'Jaipur',4),('Digital Twin Technology',39,'Bhopal',4),('FinTech Innovation',40,'Ludhiana',2),('Microfinance Digitalization',41,'Nashik',3),('Renewable Energy Storage',42,'Kolkata',7),('Smart Grid Implementation',43,'Rajkot',3),('IoT Security Enhancement',44,'Chandigarh',5),('Climate Change Data Analysis',45,'Ludhiana',2),('Personalized Marketing AI',46,'Varanasi',2),('Voice Recognition AI',47,'Rajkot',3),('Cyber Law Enforcement AI',48,'Lucknow',1),('Hospital Management System',49,'Jaipur',4),('AI-driven Content Creation',50,'Ludhiana',5),('Public Transport Automation',51,'Bangalore',5);
/*!40000 ALTER TABLE project ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-03-28 19:47:42
