-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: maintenancedb
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `servicerequests`
--

DROP TABLE IF EXISTS `servicerequests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicerequests` (
  `idServiceRequests` int NOT NULL,
  `CustomerID` varchar(15) DEFAULT NULL COMMENT 'CustomerID: รหัสหรือหมายเลขอ้างอิงของลูกค้าที่เกี่ยวข้องกับคำขอบริการ',
  `ServiceType` varchar(15) DEFAULT NULL COMMENT 'ซ่อมบำรุง: เกี่ยวกับงานซ่อมแซมหรือบำรุงรักษาอาคารหรือสิ่งก่อสร้าง\nRepair and Maintenance\n\nบริการซ่อมแซม: เกี่ยวกับงานซ่อมแซมทั่วไป ไม่ว่าจะเป็นเฟอร์นิเจอร์, อุปกรณ์ไฟฟ้า, หรืออื่น ๆ\nRepair Services\n\nติดตั้ง: เกี่ยวกับการติดตั้งอุปกรณ์หรืออุปกรณ์เพิ่มเติมในอาคาร\nInstallation Services\n',
  `Description` text,
  `RequestDate` varchar(15) DEFAULT NULL,
  `Status` varchar(15) DEFAULT NULL COMMENT ' "รอดำเนินการ", "กำลังดำเนินการ", "เสร็จสิ้น" ',
  `AssignedTechnicianID` varchar(15) DEFAULT NULL,
  `DueDate` varchar(15) DEFAULT NULL COMMENT 'วันที่หรือเวลาที่กำหนดให้ทำงานหรือกิจกรรมใด ๆ',
  `CompletionDate` varchar(15) DEFAULT NULL,
  `RepairReport` text,
  PRIMARY KEY (`idServiceRequests`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicerequests`
--

LOCK TABLES `servicerequests` WRITE;
/*!40000 ALTER TABLE `servicerequests` DISABLE KEYS */;
/*!40000 ALTER TABLE `servicerequests` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-04 17:56:29
