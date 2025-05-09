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
-- Table structure for table `works_on`
--

DROP TABLE IF EXISTS works_on;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE works_on (
  emp_no bigint NOT NULL,
  p_number int NOT NULL,
  hours_per_day int DEFAULT NULL,
  PRIMARY KEY (emp_no,p_number),
  KEY new_fk_proj (p_number),
  CONSTRAINT new_fk_emp FOREIGN KEY (emp_no) REFERENCES employee (emp_no),
  CONSTRAINT new_fk_proj FOREIGN KEY (p_number) REFERENCES project (p_number)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `works_on`
--

LOCK TABLES works_on WRITE;
/*!40000 ALTER TABLE works_on DISABLE KEYS */;
INSERT INTO works_on VALUES (1002,1,6),(1003,2,8),(1004,3,5),(1005,4,7),(1006,5,6),(1007,6,4),(1008,7,9),(1009,8,8),(1010,9,5),(1011,10,6),(1012,11,7),(1013,12,5),(1014,13,8),(1015,14,6),(1016,15,4),(1017,16,7),(1018,17,9),(1019,18,5),(1020,19,6),(1021,20,8),(1022,21,4),(1023,22,7),(1024,23,5),(1025,24,6),(1026,25,8),(1027,26,4),(1028,27,7),(1029,28,6),(1030,29,5),(1031,30,9),(1032,31,7),(1033,32,6),(1034,33,5),(1035,34,8),(1036,35,4),(1037,36,7),(1038,37,6),(1039,38,5),(1040,39,9),(1041,40,7),(1042,41,6),(1043,42,5),(1044,43,8),(1045,44,4),(1046,45,7),(1047,46,6),(1048,47,5),(1049,48,9),(1050,49,7),(1051,50,6),(1052,51,5),(1053,1,6),(1054,2,8),(1055,3,5),(1056,4,7),(1057,5,6),(1058,6,4),(1059,7,9),(1060,8,8),(1061,9,5),(1062,10,6),(1063,11,7),(1064,12,5),(1065,13,8),(1066,14,6),(1067,15,4),(1068,16,7),(1069,17,9),(1070,18,5),(1071,19,6),(1072,20,8),(1073,21,4),(1074,22,7),(1075,23,5),(1076,24,6),(1077,25,8),(1078,26,4),(1079,27,7),(1080,28,6),(1081,29,5),(1082,30,9),(1083,31,7),(1084,32,6),(1085,33,5),(1086,34,8),(1087,35,4),(1088,36,7),(1089,37,6),(1090,38,5),(1091,39,9),(1092,40,7),(1093,41,6),(1094,42,5),(1095,43,8),(1096,44,4),(1097,45,7),(1098,46,6),(1099,47,5),(1100,48,9),(1101,49,7),(1102,50,6),(1103,51,5),(1104,1,6),(1105,2,8),(1106,3,5),(1107,4,7),(1108,5,6),(1109,6,4),(1110,7,9),(1111,8,8),(1112,9,5),(1113,10,6),(1114,11,7),(1115,12,5),(1116,13,8),(1117,14,6),(1118,15,4),(1119,16,7),(1120,17,9),(1121,18,5),(1122,19,6),(1123,20,8),(1124,21,4),(1125,22,7),(1126,23,5),(1127,24,6),(1128,25,8),(1129,26,4),(1130,27,7),(1131,28,6),(1132,29,5),(1133,30,9),(1134,31,7),(1135,32,6),(1136,33,5),(1137,34,8),(1138,35,4),(1139,36,7),(1140,37,6),(1141,38,5),(1142,39,9),(1143,40,7),(1144,41,6),(1145,42,5),(1146,43,8),(1147,44,4),(1148,45,7),(1149,46,6),(1150,47,5),(1151,48,9),(1152,49,7),(1153,50,6),(1154,51,5),(1155,1,6),(1156,2,8),(1157,3,5),(1158,4,7),(1159,5,6),(1160,6,4),(1161,7,9),(1162,8,8),(1163,9,5),(1164,10,6),(1165,11,7),(1166,12,5),(1167,13,8),(1168,14,6),(1169,15,4),(1170,16,7),(1171,17,9),(1172,18,5),(1173,19,6),(1174,20,8),(1175,21,4),(1176,22,7),(1177,23,5),(1178,24,6),(1179,25,8),(1180,26,4),(1181,27,7),(1182,28,6),(1183,29,5),(1184,30,9),(1185,31,7),(1186,32,6),(1187,33,5),(1188,34,8),(1189,35,4),(1190,36,7),(1191,37,6),(1192,38,5),(1193,39,9),(1194,40,7),(1195,41,6),(1196,42,5),(1197,43,8),(1198,44,4),(1199,45,7),(1200,46,6),(1201,47,5),(1202,48,9),(1203,49,7),(1204,50,6),(1205,51,5),(1206,1,6),(1207,2,8),(1208,3,5),(1209,4,7),(1210,5,6),(1211,6,4),(1212,7,9),(1213,8,8),(1214,9,5),(1215,10,6),(1216,11,7),(1217,12,5),(1218,13,8),(1219,14,6),(1220,15,4),(1221,16,7),(1222,17,9),(1223,18,5),(1224,19,6),(1225,20,8),(1226,21,4),(1227,22,7),(1228,23,5),(1229,24,6),(1230,25,8),(1231,26,4),(1232,27,7),(1233,28,6),(1234,29,5),(1235,30,9),(1236,31,7),(1237,32,6),(1238,33,5),(1239,34,8),(1240,35,4),(1241,36,7),(1242,37,6),(1243,38,5),(1244,39,9),(1245,40,7),(1246,41,6),(1247,42,5),(1248,43,8),(1249,44,4),(1250,45,7),(1251,46,6),(1252,47,5),(1253,48,9),(1254,49,7),(1255,50,6),(1256,51,5),(1257,1,6),(1258,2,8),(1259,3,5),(1260,4,7),(1261,5,6),(1262,6,4),(1263,7,9),(1264,8,8),(1265,9,5),(1266,10,6),(1267,11,7),(1268,12,5),(1269,13,8),(1270,14,6),(1271,15,4),(1272,16,7),(1273,17,9),(1274,18,5),(1275,19,6),(1276,20,8),(1277,21,4),(1278,22,7),(1279,23,5),(1280,24,6),(1281,25,8),(1282,26,4),(1283,27,7),(1284,28,6),(1285,29,5),(1286,30,9),(1287,31,7),(1288,32,6),(1289,33,5),(1290,34,8),(1291,35,4),(1292,36,7),(1293,37,6),(1294,38,5),(1295,39,9),(1296,40,7),(1297,41,6),(1298,42,5),(1299,43,8),(1300,44,4),(1301,45,7),(1302,46,6),(1303,47,5),(1304,48,9),(1305,49,7),(1306,50,6),(1307,51,5),(1308,1,6),(1309,2,8),(1310,3,5),(1311,4,7),(1312,5,6),(1313,6,4),(1314,7,9),(1315,8,8),(1316,9,5),(1317,10,6),(1318,11,7),(1319,12,5),(1320,13,8),(1321,14,6),(1322,15,4),(1323,16,7),(1324,17,9),(1325,18,5),(1326,19,6),(1327,20,8),(1328,21,4),(1329,22,7),(1330,23,5),(1331,24,6),(1332,25,8),(1333,26,4),(1334,27,7),(1335,28,6),(1336,29,5),(1337,30,9),(1338,31,7),(1339,32,6),(1340,33,5),(1341,34,8),(1342,35,4),(1343,36,7),(1344,37,6),(1345,38,5),(1346,39,9),(1347,40,7),(1348,41,6),(1349,42,5),(1350,43,8),(1351,44,4),(1352,45,7),(1353,46,6),(1354,47,5),(1355,48,9),(1356,49,7),(1357,50,6),(1358,51,5),(1359,1,6),(1360,2,8),(1361,3,5),(1362,4,7),(1363,5,6),(1364,6,4),(1365,7,9),(1366,8,8),(1367,9,5),(1368,10,6),(1369,11,7),(1370,12,5),(1371,13,8),(1372,14,6),(1373,15,4),(1374,16,7),(1375,17,9),(1376,18,5),(1377,19,6),(1378,20,8),(1379,21,4),(1380,22,7),(1381,23,5),(1382,24,6),(1383,25,8),(1384,26,4),(1385,27,7),(1386,28,6),(1387,29,5),(1388,30,9),(1389,31,7),(1390,32,6),(1391,33,5),(1392,34,8),(1393,35,4),(1394,36,7),(1395,37,6),(1396,38,5),(1397,39,9),(1398,40,7),(1399,41,6),(1400,42,5),(1401,43,8),(1402,44,4),(1403,45,7),(1404,46,6),(1405,47,5),(1406,48,9),(1407,49,7),(1408,50,6),(1409,51,5),(1410,1,6),(1470,10,6),(1471,11,7),(1472,12,5),(1473,13,8),(1474,14,6),(1475,15,4),(1476,16,7),(1498,38,5),(1499,39,9);
/*!40000 ALTER TABLE works_on ENABLE KEYS */;
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
