-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 21, 2022 at 04:51 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_akademik`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblabsen`
--

CREATE TABLE `tblabsen` (
  `idabsen` int(5) NOT NULL,
  `tglabsen` date DEFAULT NULL,
  `masuk` time DEFAULT NULL,
  `keluar` time DEFAULT NULL,
  `kodedosen` varchar(5) DEFAULT NULL,
  `sesi` char(1) DEFAULT NULL,
  `kelassesi` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblabsen`
--

INSERT INTO `tblabsen` (`idabsen`, `tglabsen`, `masuk`, `keluar`, `kodedosen`, `sesi`, `kelassesi`) VALUES
(5, '2021-05-27', '11:28:00', '13:28:00', 'P-Ima', 'E', 'Lima'),
(6, '2021-05-27', '12:29:00', '14:29:00', 'S-Ani', 'F', 'Enam');

-- --------------------------------------------------------

--
-- Table structure for table `tbldosen`
--

CREATE TABLE `tbldosen` (
  `kodedosen` varchar(5) NOT NULL,
  `nidn` varchar(12) DEFAULT NULL,
  `nip` varchar(12) DEFAULT NULL,
  `namadosen` varchar(80) DEFAULT NULL,
  `kodeprodi` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbldosen`
--

INSERT INTO `tbldosen` (`kodedosen`, `nidn`, `nip`, `namadosen`, `kodeprodi`) VALUES
('D-Sar', '37289', '84724', 'Sari', 'A'),
('P-Ima', '93821', '75843', 'Imanuel', 'B'),
('S-Ani', '12345', '67891', 'Anita', 'C');

-- --------------------------------------------------------

--
-- Table structure for table `tbljadwal`
--

CREATE TABLE `tbljadwal` (
  `id` int(11) NOT NULL,
  `jadwalid` int(4) DEFAULT NULL,
  `kodedosen` varchar(5) DEFAULT NULL,
  `hari` varchar(8) DEFAULT NULL,
  `thnakademik` varchar(10) DEFAULT NULL,
  `semester` varchar(6) DEFAULT NULL,
  `kodemk` varchar(12) DEFAULT NULL,
  `sesi` char(1) DEFAULT NULL,
  `jammasuk` time DEFAULT NULL,
  `jamkeluar` time DEFAULT NULL,
  `kelas` varchar(5) DEFAULT NULL,
  `ruang` varchar(10) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  `kelassesi` varchar(8) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbljadwal`
--

INSERT INTO `tbljadwal` (`id`, `jadwalid`, `kodedosen`, `hari`, `thnakademik`, `semester`, `kodemk`, `sesi`, `jammasuk`, `jamkeluar`, `kelas`, `ruang`, `status`, `kelassesi`) VALUES
(5, 1, 'P-Ima', 'Kamis', '2021', '4', 'BD', 'E', '11:28:00', '13:28:00', 'Lima', '106', 1, 'Lima'),
(6, 1, 'S-Ani', 'Kamis', '2021', '4', 'PI2', 'F', '12:29:00', '14:29:00', 'Enam', '107', 1, 'Enam');

-- --------------------------------------------------------

--
-- Table structure for table `tblmkuliah`
--

CREATE TABLE `tblmkuliah` (
  `kodemk` varchar(15) NOT NULL,
  `namamk` varchar(60) DEFAULT NULL,
  `sks` int(2) DEFAULT NULL,
  `smt` int(1) DEFAULT NULL,
  `kodeprodi` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblmkuliah`
--

INSERT INTO `tblmkuliah` (`kodemk`, `namamk`, `sks`, `smt`, `kodeprodi`) VALUES
('BD', 'Basis Data', 4, 4, 'D'),
('PI2', 'Pemrograman WEB 2', 4, 4, 'C');

-- --------------------------------------------------------

--
-- Table structure for table `tblprodi`
--

CREATE TABLE `tblprodi` (
  `kodeprodi` varchar(1) NOT NULL,
  `namaprodi` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblprodi`
--

INSERT INTO `tblprodi` (`kodeprodi`, `namaprodi`) VALUES
('A', 'Desain Komunikasi Visual (S1)'),
('B', 'Manajemen Informatika (D3)'),
('C', 'Sistem Informasi (S1)'),
('D', 'Teknik Informatika (S1)');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_login` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_pengguna` varchar(255) NOT NULL,
  `telepon` varchar(15) NOT NULL,
  `email` varchar(255) NOT NULL,
  `alamat` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_login`, `username`, `password`, `nama_pengguna`, `telepon`, `email`, `alamat`) VALUES
(1, 'Syariah', 'admin', 'Syariah', '089787687878', 'syariah@gmail.com', 'Kuningan Jawa Barat');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tblabsen`
--
ALTER TABLE `tblabsen`
  ADD PRIMARY KEY (`idabsen`),
  ADD UNIQUE KEY `masuk` (`masuk`),
  ADD UNIQUE KEY `keluar` (`keluar`),
  ADD UNIQUE KEY `sesi` (`sesi`),
  ADD UNIQUE KEY `kelassesi` (`kelassesi`),
  ADD KEY `kodedosen` (`kodedosen`);

--
-- Indexes for table `tbldosen`
--
ALTER TABLE `tbldosen`
  ADD PRIMARY KEY (`kodedosen`),
  ADD KEY `kodeprodi` (`kodeprodi`);

--
-- Indexes for table `tbljadwal`
--
ALTER TABLE `tbljadwal`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `sesi` (`sesi`),
  ADD UNIQUE KEY `kelassesi` (`kelassesi`),
  ADD KEY `kodedosen` (`kodedosen`),
  ADD KEY `kodemk` (`kodemk`),
  ADD KEY `id` (`id`),
  ADD KEY `jammasuk` (`jammasuk`),
  ADD KEY `jamkeluar` (`jamkeluar`);

--
-- Indexes for table `tblmkuliah`
--
ALTER TABLE `tblmkuliah`
  ADD PRIMARY KEY (`kodemk`),
  ADD KEY `kodeprodi` (`kodeprodi`);

--
-- Indexes for table `tblprodi`
--
ALTER TABLE `tblprodi`
  ADD PRIMARY KEY (`kodeprodi`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_login`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblabsen`
--
ALTER TABLE `tblabsen`
  MODIFY `idabsen` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2019114005;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblabsen`
--
ALTER TABLE `tblabsen`
  ADD CONSTRAINT `tblabsen_ibfk_1` FOREIGN KEY (`kodedosen`) REFERENCES `tbldosen` (`kodedosen`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbldosen`
--
ALTER TABLE `tbldosen`
  ADD CONSTRAINT `tbldosen_ibfk_1` FOREIGN KEY (`kodeprodi`) REFERENCES `tblprodi` (`kodeprodi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbljadwal`
--
ALTER TABLE `tbljadwal`
  ADD CONSTRAINT `tbljadwal_ibfk_1` FOREIGN KEY (`kodedosen`) REFERENCES `tbldosen` (`kodedosen`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbljadwal_ibfk_2` FOREIGN KEY (`kodemk`) REFERENCES `tblmkuliah` (`kodemk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbljadwal_ibfk_3` FOREIGN KEY (`id`) REFERENCES `tblabsen` (`idabsen`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbljadwal_ibfk_4` FOREIGN KEY (`jammasuk`) REFERENCES `tblabsen` (`masuk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbljadwal_ibfk_5` FOREIGN KEY (`jamkeluar`) REFERENCES `tblabsen` (`keluar`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbljadwal_ibfk_6` FOREIGN KEY (`sesi`) REFERENCES `tblabsen` (`sesi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbljadwal_ibfk_7` FOREIGN KEY (`kelassesi`) REFERENCES `tblabsen` (`kelassesi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tblmkuliah`
--
ALTER TABLE `tblmkuliah`
  ADD CONSTRAINT `tblmkuliah_ibfk_1` FOREIGN KEY (`kodeprodi`) REFERENCES `tblprodi` (`kodeprodi`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
