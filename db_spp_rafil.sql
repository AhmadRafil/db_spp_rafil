-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 20, 2026 at 03:00 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_spp_rafil`
--
CREATE DATABASE IF NOT EXISTS `db_spp_rafil` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_spp_rafil`;

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` varchar(5) NOT NULL,
  `nama_kelas` varchar(10) NOT NULL,
  `kompetensi_keahlian` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`, `kompetensi_keahlian`) VALUES
('CO1', 'Xll TKKR', 'Teknik Kecantikan Kulit Dan Ra'),
('KO2', 'Xl RPL 1', 'Rekayasa Prangkat Lunak');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(10) NOT NULL,
  `id_petugas` varchar(5) DEFAULT NULL,
  `nisn` varchar(10) DEFAULT NULL,
  `tgl_pembayaran` date DEFAULT NULL,
  `bulan_tagihan` varchar(12) DEFAULT NULL,
  `tahun_tagihan` int(4) DEFAULT NULL,
  `id_spp` varchar(5) DEFAULT NULL,
  `no_bayar` varchar(11) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL,
  `keterangan` varchar(10) CHARACTER SET latin1 COLLATE latin1_swedish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_petugas`, `nisn`, `tgl_pembayaran`, `bulan_tagihan`, `tahun_tagihan`, `id_spp`, `no_bayar`, `keterangan`) VALUES
(1, 'A01', '12345', '2026-09-05', 'Juli', 2026, 'SPP03', '2609050001', 'LUNAS'),
(2, 'A01', '12345', '2026-09-05', 'Agustus', 2026, 'SPP03', '2609050002', 'LUNAS'),
(3, NULL, '12345', NULL, 'September', 2026, 'SPP03', NULL, NULL),
(4, NULL, '12345', NULL, 'Oktober', 2026, 'SPP03', NULL, NULL),
(5, NULL, '12345', NULL, 'Nopember', 2026, 'SPP03', NULL, NULL),
(6, NULL, '12345', NULL, 'Desember', 2026, 'SPP03', NULL, NULL),
(7, NULL, '12345', NULL, 'Januari', 2027, 'SPP03', NULL, NULL),
(8, NULL, '12345', NULL, 'Februari', 2027, 'SPP03', NULL, NULL),
(9, NULL, '12345', NULL, 'Maret', 2027, 'SPP03', NULL, NULL),
(10, NULL, '12345', NULL, 'April', 2027, 'SPP03', NULL, NULL),
(11, NULL, '12345', NULL, 'Mei', 2027, 'SPP03', NULL, NULL),
(12, NULL, '12345', NULL, 'Juni', 2027, 'SPP03', NULL, NULL),
(13, 'A01', '000000', '2026-09-05', 'Juli', 2026, 'SPP1', '2609050003', 'LUNAS'),
(14, 'A01', '000000', '2026-09-05', 'Agustus', 2026, 'SPP1', '2609050004', 'LUNAS'),
(15, 'A01', '000000', '2026-09-05', 'September', 2026, 'SPP1', '2609050005', 'LUNAS'),
(16, 'A01', '000000', '2026-09-05', 'Oktober', 2026, 'SPP1', '2609050006', 'LUNAS'),
(17, 'A01', '000000', '2026-09-05', 'Nopember', 2026, 'SPP1', '2609050007', 'LUNAS'),
(18, 'A01', '000000', '2026-09-05', 'Desember', 2026, 'SPP1', '2609050008', 'LUNAS'),
(19, 'A01', '000000', '2026-09-05', 'Januari', 2027, 'SPP1', '2609050009', 'LUNAS'),
(20, 'A01', '000000', '2026-09-05', 'Februari', 2027, 'SPP1', '2609050010', 'LUNAS'),
(21, 'A01', '000000', '2026-09-05', 'Maret', 2027, 'SPP1', '2609050011', 'LUNAS'),
(22, 'A01', '000000', '2026-09-05', 'April', 2027, 'SPP1', '2609050012', 'LUNAS'),
(23, 'A01', '000000', '2026-09-05', 'Mei', 2027, 'SPP1', '2609050013', 'LUNAS'),
(24, 'A01', '000000', '2026-09-05', 'Juni', 2027, 'SPP1', '2609050014', 'LUNAS');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `id_petugas` varchar(5) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama_petugas` varchar(35) NOT NULL,
  `level` enum('admin','petugas',',') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `petugas`
--

INSERT INTO `petugas` (`id_petugas`, `username`, `password`, `nama_petugas`, `level`) VALUES
('A01', 'adit', '21232f297a57a5a743894a0e4a801fc3', 'adit', ''),
('A05', 'esa', 'admin', 'esa', 'admin'),
('A06', 'arya', 'petugas', 'arya', 'petugas'),
('A35', 'galih', '21232f297a57a5a743894a0e4a801fc3', 'galih', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `nisn` varchar(10) NOT NULL,
  `nis` varchar(8) NOT NULL,
  `nama` varchar(35) NOT NULL,
  `id_kelas` varchar(11) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `id_spp` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa`
--

INSERT INTO `siswa` (`nisn`, `nis`, `nama`, `id_kelas`, `alamat`, `no_telp`, `id_spp`) VALUES
('000000', '000001', 'imuppp', 'CO1', 'serumah', '0858...', 'SPP1'),
('12345', '123', 'bagong', 'KO2', 'cempaka', '089565', 'SPP03'),
('35353', '3132', 'muhammad', 'KO2', 'cempaka', '0812345', 'SPP03'),
('9565', '2424', 'rafil', 'KO2', 'banjarbaru', '08385867', 'SPP03');

-- --------------------------------------------------------

--
-- Table structure for table `spp`
--

CREATE TABLE `spp` (
  `id_spp` varchar(5) NOT NULL,
  `tahun` int(4) NOT NULL,
  `nominal` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `spp`
--

INSERT INTO `spp` (`id_spp`, `tahun`, `nominal`) VALUES
('SPP03', 2009, 24),
('SPP1', 2000, 25);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `id_petugas` (`id_petugas`),
  ADD KEY `nisn` (`nisn`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`id_petugas`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`nisn`),
  ADD KEY `id_kelas` (`id_kelas`),
  ADD KEY `id_spp` (`id_spp`);

--
-- Indexes for table `spp`
--
ALTER TABLE `spp`
  ADD PRIMARY KEY (`id_spp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`id_petugas`) REFERENCES `petugas` (`id_petugas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pembayaran_ibfk_2` FOREIGN KEY (`nisn`) REFERENCES `siswa` (`nisn`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `siswa`
--
ALTER TABLE `siswa`
  ADD CONSTRAINT `siswa_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `siswa_ibfk_2` FOREIGN KEY (`id_spp`) REFERENCES `spp` (`id_spp`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
