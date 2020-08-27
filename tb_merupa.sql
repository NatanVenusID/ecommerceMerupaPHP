-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2020 at 03:26 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.2.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_venusuniversity`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_merupa`
--

CREATE TABLE `tb_merupa` (
  `id_user` int(20) NOT NULL,
  `username` varchar(125) NOT NULL,
  `email` varchar(125) NOT NULL,
  `fullname` text NOT NULL,
  `password` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `tgl_daftar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_merupa`
--

INSERT INTO `tb_merupa` (`id_user`, `username`, `email`, `fullname`, `password`, `alamat`, `tgl_daftar`) VALUES
(1, 'a', 'a', 'a', '0cc175b9c0f1b6a831c399e269772661', 'a', '2020-08-23 14:23:42'),
(2, 'natan92', 'natan92@venus.com', 'natanael krisetya', 'e10adc3949ba59abbe56e057f20f883e', 'kudus', '2020-08-23 15:43:51'),
(3, 'eirene93', 'eirene93@venus.com', 'eirene', 'e10adc3949ba59abbe56e057f20f883e', 'semarang', '2020-08-25 20:08:02'),
(4, 'novita97', 'novita@venus.com', 'novita', 'e10adc3949ba59abbe56e057f20f883e', 'kudus', '2020-08-25 20:10:05'),
(5, 'zzz', 'zzz', 'zzz', 'f3abb86bd34cf4d52698f14c0da1dc60', 'zzz\n\n', '2020-08-27 19:54:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_merupa`
--
ALTER TABLE `tb_merupa`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_merupa`
--
ALTER TABLE `tb_merupa`
  MODIFY `id_user` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
