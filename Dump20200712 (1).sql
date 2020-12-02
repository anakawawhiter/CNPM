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
-- Table structure for table `chitiethoadon`
--

DROP TABLE IF EXISTS `chitiethoadon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `chitiethoadon` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `soluong` int(11) DEFAULT NULL,
  `mota` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `ngayxuat` date DEFAULT NULL,
  `idhoadon` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idhoadon` (`idhoadon`),
  CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`idhoadon`) REFERENCES `hoadon` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `gara`
--

DROP TABLE IF EXISTS `gara`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gara` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `diachi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `danhgia` float DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `hoadon`
--

DROP TABLE IF EXISTS `hoadon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `hoadon` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `ngayxuat` date DEFAULT NULL,
  `idkhachhang` int(11) NOT NULL,
  `idnhanvien` int(11) NOT NULL,
  `idxe` int(11) NOT NULL,
  `tongtien` float DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idxe` (`idxe`),
  KEY `idkhachhang` (`idkhachhang`),
  KEY `idnhanvien` (`idnhanvien`),
  CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`idxe`) REFERENCES `xe` (`id`),
  CONSTRAINT `hoadon_ibfk_2` FOREIGN KEY (`idkhachhang`) REFERENCES `khachhang` (`id`),
  CONSTRAINT `hoadon_ibfk_3` FOREIGN KEY (`idnhanvien`) REFERENCES `nhanvien` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `khachhang`
--

DROP TABLE IF EXISTS `khachhang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `khachhang` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `tenkhach` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `diachi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sdt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `idgara` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idgara` (`idgara`),
  CONSTRAINT `khachhang_ibfk_1` FOREIGN KEY (`idgara`) REFERENCES `gara` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `linhkien`
--

DROP TABLE IF EXISTS `linhkien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `linhkien` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `gia` float DEFAULT NULL,
  `idnhacunngcap` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idnhacunngcap` (`idnhacunngcap`),
  CONSTRAINT `linhkien_ibfk_1` FOREIGN KEY (`idnhacunngcap`) REFERENCES `nhacungcap` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `linhkiennhap`
--

DROP TABLE IF EXISTS `linhkiennhap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `linhkiennhap` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `idncc` int(11) NOT NULL,
  `idlinhkien` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idncc` (`idncc`),
  KEY `linhkiencungcap_ibfk_2_idx` (`idlinhkien`),
  CONSTRAINT `linhkiennhap_ibfk_1` FOREIGN KEY (`idncc`) REFERENCES `nhacungcap` (`id`),
  CONSTRAINT `linhkiennhap_ibfk_2` FOREIGN KEY (`idlinhkien`) REFERENCES `linhkien` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `linhkiensudung`
--

DROP TABLE IF EXISTS `linhkiensudung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `linhkiensudung` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `idlinnkien` int(11) NOT NULL,
  `idhoadon` int(11) NOT NULL,
  `soluong` int(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idlinnkien` (`idlinnkien`),
  KEY `idhoadon` (`idhoadon`),
  CONSTRAINT `linhkiensudung_ibfk_1` FOREIGN KEY (`idlinnkien`) REFERENCES `linhkien` (`id`),
  CONSTRAINT `linhkiensudung_ibfk_2` FOREIGN KEY (`idhoadon`) REFERENCES `hoadon` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nhacungcap`
--

DROP TABLE IF EXISTS `nhacungcap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhacungcap` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `diachi` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `sdt` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `idgara` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idgara` (`idgara`),
  CONSTRAINT `nhacungcap_ibfk_1` FOREIGN KEY (`idgara`) REFERENCES `gara` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `nhanvien`
--

DROP TABLE IF EXISTS `nhanvien`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `nhanvien` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `ten` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `taikhoan` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `matkhau` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `chucvu` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sodienthoai` varchar(13) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idgara` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idgara` (`idgara`),
  CONSTRAINT `nhanvien_ibfk_1` FOREIGN KEY (`idgara`) REFERENCES `gara` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `phieuphutrach`
--

DROP TABLE IF EXISTS `phieuphutrach`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `phieuphutrach` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `idxe` int(11) NOT NULL,
  `idnhanvien` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idxe` (`idxe`),
  KEY `idnhanvien` (`idnhanvien`),
  CONSTRAINT `phieuphutrach_ibfk_1` FOREIGN KEY (`idxe`) REFERENCES `xe` (`id`),
  CONSTRAINT `phieuphutrach_ibfk_2` FOREIGN KEY (`idnhanvien`) REFERENCES `nhanvien` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `xe`
--

DROP TABLE IF EXISTS `xe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `xe` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `bienso` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `loai` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `hang` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `mau` varchar(225) COLLATE utf8_unicode_ci DEFAULT NULL,
  `idkhachhang` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `idkhachhang` (`idkhachhang`),
  CONSTRAINT `xe_ibfk_1` FOREIGN KEY (`idkhachhang`) REFERENCES `khachhang` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-12 17:27:47
