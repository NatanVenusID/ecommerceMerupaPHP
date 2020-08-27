-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2020 at 03:16 PM
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
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(125) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sex` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_daftar` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `username`, `email`, `full_name`, `sex`, `password`, `alamat`, `tgl_daftar`) VALUES
(3, 'asa', 'as', 'asa', 'as', 'f970e2767d0cfe75876ea857f92e319b', 'as', '2020-08-17 19:10:02'),
(4, 'eirene98', 'eirene98@venus.com', 'eirene charalita', 'perempuan', 'e10adc3949ba59abbe56e057f20f883e', 'kudus', '2020-08-17 19:27:32'),
(5, 'd', 'd', 'd', 'd', '8277e0910d750195b448797616e091ad', 'd', '2020-08-17 20:19:09'),
(6, '', '', '', '', 'd41d8cd98f00b204e9800998ecf8427e', '', '2020-08-17 20:55:26'),
(7, 'c', 'd', 'd', 'Perempuan', '8277e0910d750195b448797616e091ad', 'd', '2020-08-18 18:05:48'),
(8, 'asaasasa', 'asasasasa', 'asa', 'as', 'f970e2767d0cfe75876ea857f92e319b', 'as', '2020-08-18 19:53:48'),
(9, 'www', 'ee', 'ee', 'Laki-laki', 'd2f2297d6e829cd3493aa7de4416a18f', 'eeee', '2020-08-18 19:58:15'),
(10, 'admin', 'aaa', 'admin', 'Laki-laki', '4297f44b13955235245b2497399d7a93', 'ssdd', '2020-08-18 20:04:08');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
