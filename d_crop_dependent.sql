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
-- Table structure for table `dependent`
--

DROP TABLE IF EXISTS dependent;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE dependent (
  emp_no bigint NOT NULL,
  sex varchar(10) DEFAULT NULL,
  relationship varchar(30) DEFAULT NULL,
  dependent_name varchar(255) NOT NULL,
  DOB date DEFAULT NULL,
  PRIMARY KEY (emp_no,dependent_name),
  CONSTRAINT fk_dependent_employee FOREIGN KEY (emp_no) REFERENCES employee (emp_no) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dependent`
--

LOCK TABLES dependent WRITE;
/*!40000 ALTER TABLE dependent DISABLE KEYS */;
INSERT INTO dependent VALUES (1001,'Female','Son','Saksham','1999-12-13'),(1014,'Female','Father','Aarush','1990-04-05'),(1018,'Female','Mother','Elakshi','1984-04-05'),(1031,'Female','Daughter','Suhana','1984-05-09'),(1035,'Male','Father','Yuvaan','2011-05-28'),(1042,'Male','Mother','Hridaan','2007-10-13'),(1048,'Female','Father','Renee','2010-07-02'),(1051,'Female','Father','Dhanuk','2002-11-08'),(1052,'Female','Mother','Stuvan','2006-10-10'),(1065,'Male','Daughter','Yuvraj ','2016-03-21'),(1069,'Male','Spouse','Nitara','1984-05-05'),(1072,'Female','Mother','Aradhya','2013-12-21'),(1073,'Male','Spouse','Riya','2018-05-29'),(1077,'Male','Father','Bhavin','1986-04-17'),(1078,'Female','Daughter','Onkar','2015-04-29'),(1082,'Female','Father','Vihaan','2006-03-13'),(1086,'Female','Son','Indranil','2012-11-13'),(1090,'Female','Spouse','Kimaya','2005-12-15'),(1091,'Male','Spouse','Vanya','1995-11-04'),(1094,'Male','Spouse','Tanya','2021-08-14'),(1097,'Female','Daughter','Farhan','2009-12-08'),(1098,'Male','Daughter','Suhana','2001-07-22'),(1101,'Female','Daughter','Kiaan','1997-12-25'),(1105,'Female','Father','Ira','1998-05-25'),(1107,'Male','Spouse','Akarsh','2005-11-13'),(1111,'Male','Spouse','Ojas','2020-01-05'),(1112,'Male','Spouse','Lakshay','2002-05-30'),(1121,'Female','Daughter','Zara','1998-05-02'),(1123,'Female','Daughter','Jivin','1991-12-06'),(1139,'Female','Daughter','Mahika','1985-08-04'),(1142,'Male','Mother','Neelofar','1997-09-29'),(1144,'Female','Spouse','Biju','2010-07-22'),(1153,'Male','Father','Shanaya','2000-04-01'),(1154,'Male','Son','Vanya','2011-01-31'),(1155,'Female','Spouse','Damini','2001-01-11'),(1170,'Female','Daughter','Mohanlal','1992-10-27'),(1175,'Male','Daughter','Miraan','1990-12-04'),(1180,'Female','Son','Aniruddh','2015-03-16'),(1183,'Female','Spouse','Vritika','1984-10-05'),(1187,'Male','Son','Jayesh','1998-07-26'),(1188,'Male','Son','Faiyaz','1984-09-25'),(1190,'Male','Spouse','Nishith','2019-01-05'),(1195,'Female','Son','Anay','2006-04-25'),(1197,'Male','Father','Trisha','2001-12-28'),(1212,'Male','Son','Mohanlal','1989-01-26'),(1217,'Male','Mother','Misha','2010-09-28'),(1220,'Male','Mother','Sara','1995-07-26'),(1225,'Female','Father','Zeeshan','2002-05-26'),(1243,'Female','Son','Lagan','2004-05-28'),(1246,'Female','Mother','Shayak','1986-05-29'),(1249,'Male','Son','Ranbir','2013-04-04'),(1250,'Male','Son','Rasha','1988-01-02'),(1251,'Male','Father','Umang','1994-06-21'),(1262,'Male','Son','Romil','1989-04-11'),(1264,'Female','Spouse','Chirag','1995-03-14'),(1266,'Male','Spouse','Shlok','2010-05-10'),(1276,'Male','Father','Hazel','1997-02-01'),(1281,'Female','Spouse','Gokul','2006-11-02'),(1284,'Female','Mother','Shamik','1991-11-21'),(1297,'Male','Father','Sureh','1970-03-10'),(1297,'Male','Father','Suresh','1970-03-10'),(1298,'Male','Son','Lakshay','2021-09-24'),(1300,'Female','Son','Anahita','2021-01-03'),(1303,'Male','Spouse','Renee','2017-10-15'),(1321,'Female','Father','Saksham','2021-10-03'),(1334,'Male','Spouse','Prisha','2005-10-15'),(1337,'Female','Mother','Rasha','2008-06-10'),(1340,'Male','Son','Miraya','2017-09-18'),(1341,'Male','Son','Shamik','1990-06-09'),(1343,'Female','Daughter','Lakshit','1991-01-29'),(1350,'Male','Son','Aarush','2016-10-09'),(1352,'Female','Daughter','Shalv','1996-02-14'),(1353,'Female','Spouse','Ivan','2022-09-20'),(1355,'Female','Son','Zara','2007-07-13'),(1372,'Male','Spouse','Nitya','2002-05-18'),(1376,'Male','Father','Anvi','2000-06-30'),(1380,'Female','Daughter','Anahita','2014-08-12'),(1381,'Female','Son','Sahil','2018-07-03'),(1387,'Female','Father','Bhamini','2012-01-11'),(1388,'Male','Spouse','Sana','2018-01-31'),(1391,'Male','Mother','Raunak','2008-10-06'),(1393,'Male','Son','Vivaan','2010-11-08'),(1398,'Female','Spouse','Ira','2002-02-08'),(1411,'Female','Daughter','Zaina','1994-05-26'),(1417,'Female','Daughter','Miraya','1985-05-29'),(1418,'Female','Son','Priyansh','2009-01-07'),(1420,'Male','Father','Faiyaz','2023-10-28'),(1428,'Female','Father','Anahi','2017-09-24'),(1431,'Female','Mother','Uthkarsh','2001-08-23'),(1432,'Female','Father','Emir','2008-08-18'),(1444,'Female','Son','Jayan','1994-02-25'),(1450,'Male','Daughter','Fateh','2004-05-13'),(1454,'Male','Son','Nirvaan','2018-02-10'),(1466,'Male','Mother','Pranay','2005-03-22'),(1471,'Male','Son','Urvi','2013-12-24'),(1476,'Male','Daughter','Siya','2007-12-22'),(1479,'Male','Mother','Eshani','1993-04-13'),(1480,'Female','Son','Tiya','2017-02-10'),(1490,'Female','Spouse','Ishita','1994-05-03'),(1493,'Male','Mother','Vivaan','2002-01-11'),(1494,'Male','Daughter','Anya','2005-11-06'),(1497,'Male','Son','Arjun','2000-06-22'),(1497,'Female','Daughter','Ishita','2005-09-15'),(1497,'Female','Son','Kartik','1996-06-22'),(1497,'Male','Father','Suresh','1970-03-10');
/*!40000 ALTER TABLE dependent ENABLE KEYS */;
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
