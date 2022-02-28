-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.25 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Dumping database structure for db_silakarang
CREATE DATABASE IF NOT EXISTS `db_silakarang` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `db_silakarang`;

-- Dumping structure for table db_silakarang.t_admin
CREATE TABLE IF NOT EXISTS `t_admin` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL,
  `password` varchar(12) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `no_telepon` varchar(13) NOT NULL,
  `status_` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- Dumping data for table db_silakarang.t_admin: ~1 rows (approximately)
DELETE FROM `t_admin`;
/*!40000 ALTER TABLE `t_admin` DISABLE KEYS */;
INSERT INTO `t_admin` (`ID`, `username`, `password`, `nama`, `email`, `no_telepon`, `status_`) VALUES
	(1, 'user1', 'secret', 'User Satu', 'user1@user.com', '081213', 'active');
/*!40000 ALTER TABLE `t_admin` ENABLE KEYS */;

-- Dumping structure for table db_silakarang.t_aktivitas
CREATE TABLE IF NOT EXISTS `t_aktivitas` (
  `ID_Aktivitas` int(11) NOT NULL AUTO_INCREMENT,
  `nm_Aktivitas` varchar(30) DEFAULT NULL,
  `harga` varchar(15) DEFAULT NULL,
  `deskripsi` varchar(250) DEFAULT NULL,
  `foto_aktivitas` varchar(100) DEFAULT NULL,
  `rate_bintang` float DEFAULT NULL,
  `tgl_update` date DEFAULT NULL,
  `status_` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_Aktivitas`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

-- Dumping data for table db_silakarang.t_aktivitas: ~5 rows (approximately)
DELETE FROM `t_aktivitas`;
/*!40000 ALTER TABLE `t_aktivitas` DISABLE KEYS */;
INSERT INTO `t_aktivitas` (`ID_Aktivitas`, `nm_Aktivitas`, `harga`, `deskripsi`, `foto_aktivitas`, `rate_bintang`, `tgl_update`, `status_`) VALUES
	(1, 'Diving', '300000', 'Sensasi Plong', 'blep', 5, '2022-01-15', '1'),
	(2, 'Hiking', '120000', 'lorem ipsum dolor sit amet', 'foto1.jpg', 123, '2021-12-10', '1'),
	(3, 'Hiking', '120000', 'lorem ipsum dolor sit amet', 'foto1.jpg', 123, '2021-12-10', '1'),
	(4, 'Hiking', '120000', 'lorem ipsum dolor sit amet', 'foto1.jpg', 123, '2021-12-10', '1'),
	(5, 'Hiking', '120000', 'lorem ipsum dolor sit amet', 'foto1.jpg', 123, '2021-12-10', '1');
/*!40000 ALTER TABLE `t_aktivitas` ENABLE KEYS */;

-- Dumping structure for table db_silakarang.t_review
CREATE TABLE IF NOT EXISTS `t_review` (
  `ID_Review` int(11) NOT NULL AUTO_INCREMENT,
  `nm_pengunjung` varchar(50) DEFAULT NULL,
  `ulasan` varchar(250) DEFAULT NULL,
  `tgl_update` date DEFAULT NULL,
  `status_` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`ID_Review`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table db_silakarang.t_review: ~3 rows (approximately)
DELETE FROM `t_review`;
/*!40000 ALTER TABLE `t_review` DISABLE KEYS */;
INSERT INTO `t_review` (`ID_Review`, `nm_pengunjung`, `ulasan`, `tgl_update`, `status_`) VALUES
	(1, 'Pengunjung 1', 'Mantap jiwa mempesona', '2022-01-15', '1'),
	(5, 'dsd', 'dasd', '2021-12-20', '1'),
	(6, 'dsd', 'dasd', '2021-12-20', '1');
/*!40000 ALTER TABLE `t_review` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
