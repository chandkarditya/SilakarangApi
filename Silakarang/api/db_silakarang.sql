-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2022 at 12:50 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_silakarang`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_admin`
--

CREATE TABLE `t_admin` (
  `ID` int(11) NOT NULL,
  `username` varchar(10) NOT NULL,
  `password` varchar(12) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(30) NOT NULL,
  `no_telepon` varchar(13) NOT NULL,
  `status_` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_aktivitas`
--

CREATE TABLE `t_aktivitas` (
  `ID_Aktivitas` int(11) NOT NULL,
  `nm_Aktivitas` varchar(30) DEFAULT NULL,
  `harga` varchar(15) DEFAULT NULL,
  `deskripsi` varchar(250) DEFAULT NULL,
  `foto_aktivitas` varchar(100) DEFAULT NULL,
  `rate_bintang` float DEFAULT NULL,
  `tgl_update` date DEFAULT NULL,
  `status_` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_review`
--

CREATE TABLE `t_review` (
  `ID_Review` int(11) NOT NULL,
  `nm_pengunjung` varchar(50) DEFAULT NULL,
  `ulasan` varchar(250) DEFAULT NULL,
  `tgl_update` date DEFAULT NULL,
  `status_` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_admin`
--
ALTER TABLE `t_admin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `t_aktivitas`
--
ALTER TABLE `t_aktivitas`
  ADD PRIMARY KEY (`ID_Aktivitas`);

--
-- Indexes for table `t_review`
--
ALTER TABLE `t_review`
  ADD PRIMARY KEY (`ID_Review`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_admin`
--
ALTER TABLE `t_admin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t_aktivitas`
--
ALTER TABLE `t_aktivitas`
  MODIFY `ID_Aktivitas` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t_review`
--
ALTER TABLE `t_review`
  MODIFY `ID_Review` int(11) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
