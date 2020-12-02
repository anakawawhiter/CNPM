-- MySQL dump 10.13  Distrib 8.0.17, for Win64 (x86_64)
--
-- Host: localhost    Database: qlygara
-- ------------------------------------------------------
-- Server version	8.0.17

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
-- Dumping data for table `chitiethoadon`
--

LOCK TABLES `chitiethoadon` WRITE;
/*!40000 ALTER TABLE `chitiethoadon` DISABLE KEYS */;
/*!40000 ALTER TABLE `chitiethoadon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `gara`
--

LOCK TABLES `gara` WRITE;
/*!40000 ALTER TABLE `gara` DISABLE KEYS */;
INSERT INTO `gara` VALUES (1,'GARA','Hà Đông, Hà Nội',4);
/*!40000 ALTER TABLE `gara` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `hoadon`
--

LOCK TABLES `hoadon` WRITE;
/*!40000 ALTER TABLE `hoadon` DISABLE KEYS */;
INSERT INTO `hoadon` VALUES (1,'2020-07-01',1,2,1,24000000),(2,'2020-06-05',1,2,2,8000000),(3,'2020-06-28',2,2,3,16000000),(4,'2020-06-15',3,2,4,4000000),(5,'2020-06-15',1,2,1,4000000);
/*!40000 ALTER TABLE `hoadon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `khachhang`
--

LOCK TABLES `khachhang` WRITE;
/*!40000 ALTER TABLE `khachhang` DISABLE KEYS */;
INSERT INTO `khachhang` VALUES (1,'Khách Hàng 1','Hà nội','113',1),(2,'Khách hàng 2','Hà Nội','114',1),(3,'Khách hàng 3','Hà nội','115',1);
/*!40000 ALTER TABLE `khachhang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `linhkien`
--

LOCK TABLES `linhkien` WRITE;
/*!40000 ALTER TABLE `linhkien` DISABLE KEYS */;
INSERT INTO `linhkien` VALUES (1,'Lốp',2000000,1),(2,'Gương',5000000,1),(3,'Kính',4000000,2),(4,'Mâm',8000000,3),(5,'Da ',12000000,1),(6,'Động cơ',10000000,2);
/*!40000 ALTER TABLE `linhkien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `linhkiennhap`
--

LOCK TABLES `linhkiennhap` WRITE;
/*!40000 ALTER TABLE `linhkiennhap` DISABLE KEYS */;
/*!40000 ALTER TABLE `linhkiennhap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `linhkiensudung`
--

LOCK TABLES `linhkiensudung` WRITE;
/*!40000 ALTER TABLE `linhkiensudung` DISABLE KEYS */;
INSERT INTO `linhkiensudung` VALUES (1,1,1,2),(2,2,1,4),(3,3,2,2),(4,4,3,2),(5,1,4,2),(6,1,5,2);
/*!40000 ALTER TABLE `linhkiensudung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `nhacungcap`
--

LOCK TABLES `nhacungcap` WRITE;
/*!40000 ALTER TABLE `nhacungcap` DISABLE KEYS */;
INSERT INTO `nhacungcap` VALUES (1,'A','Hà nội','123','1@gmail.com',1),(2,'B','Hà nội','456','2@gmail.com',1),(3,'C','Hà nội','789','3@gmail.com',1);
/*!40000 ALTER TABLE `nhacungcap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `nhanvien`
--

LOCK TABLES `nhanvien` WRITE;
/*!40000 ALTER TABLE `nhanvien` DISABLE KEYS */;
INSERT INTO `nhanvien` VALUES (1,'Đinh Sơn Hà','admin','admin','Quản lý','0398092226',1),(2,'Thu Thị Ngân','thungan','thungan','Thu ngân','0667715028',1),(3,'Kỹ Văn Thuật','kythuat','kythuat','Kỹ thuật viên','03950128',1);
/*!40000 ALTER TABLE `nhanvien` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `phieuphutrach`
--

LOCK TABLES `phieuphutrach` WRITE;
/*!40000 ALTER TABLE `phieuphutrach` DISABLE KEYS */;
/*!40000 ALTER TABLE `phieuphutrach` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `xe`
--

LOCK TABLES `xe` WRITE;
/*!40000 ALTER TABLE `xe` DISABLE KEYS */;
INSERT INTO `xe` VALUES (1,'17-b639501','2 chỗ','lamborghini','Đỏ',1),(2,'29-y156789','2 chỗ','Ferrari','Tím',1),(3,'29-n512345','4 chỗ','mazda','Trắng',2),(4,'29-c698765','4 chỗ','Maybach','Đen',3);
/*!40000 ALTER TABLE `xe` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-12 17:54:42
