-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 07, 2020 at 10:41 AM
-- Server version: 10.3.23-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u5480206_kasir`
--

-- --------------------------------------------------------

--
-- Table structure for table `detailtransaksi`
--

CREATE TABLE `detailtransaksi` (
  `transaksiId` int(11) NOT NULL,
  `produkId` int(11) DEFAULT NULL,
  `namaProduk` varchar(255) DEFAULT NULL,
  `kategoriProduk` varchar(255) DEFAULT NULL,
  `kodeProduk` varchar(255) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `pesan` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `detailtransaksi`
--

INSERT INTO `detailtransaksi` (`transaksiId`, `produkId`, `namaProduk`, `kategoriProduk`, `kodeProduk`, `harga`, `jumlah`, `pesan`) VALUES
(1, 2, 'AIR MINERAL', '5', 'MINUMAN-0001', 2000, 1, ''),
(2, 2, 'AIR MINERAL', '5', 'MINUMAN-0001', 2000, 1, ''),
(3, 1, 'Kentang Goreng', '8', 'SNCK-00001', 9000, 1, ''),
(4, 1, 'Kentang Goreng', '8', 'SNCK-00001', 9000, 1, ''),
(4, 3, 'Ketan - Bubuk - Kelapa (BBK)', '8', 'SNCK-001', 6000, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `idKategori` int(11) NOT NULL,
  `kategori` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`idKategori`, `kategori`) VALUES
(5, 'Minuman dingin'),
(8, 'Snack'),
(9, 'Buah Buahan');

-- --------------------------------------------------------

--
-- Table structure for table `perangkat`
--

CREATE TABLE `perangkat` (
  `idPerangkat` int(11) NOT NULL,
  `nomorMeja` varchar(20) DEFAULT NULL,
  `namaPerangkat` varchar(255) DEFAULT NULL,
  `uniqueId` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `perangkat`
--

INSERT INTO `perangkat` (`idPerangkat`, `nomorMeja`, `namaPerangkat`, `uniqueId`) VALUES
(1, 'meja 01', 'Nokia TA-1021', 'a691b4ce-5a2a-4fbf-843c-e49ab5be3746'),
(2, 'meja 02', 'google AOSP on IA Emulator', '48a99320-62eb-4f6a-a603-d24467dbf077'),
(3, 'meja 03', 'google AOSP on IA Emulator', 'e8dd4b64-3d6a-4ed5-9f56-5d715aeee4e8'),
(4, '1', 'samsung SM-A505F', '5bace282-9c36-45c3-823f-d904f2e8b8c8'),
(5, 'meja 05', 'google AOSP on IA Emulator', '0e6f3668-83d5-4823-89cf-a18881c1d6d6'),
(6, '8', 'xiaomi Redmi Note 8', '4de26c73-7066-4893-87f6-724f6b9b8022');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `idProduk` int(11) NOT NULL,
  `namaProduk` varchar(255) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `status` enum('tersedia','kosong') DEFAULT 'kosong',
  `kodeProduk` varchar(255) DEFAULT NULL,
  `gambarProduk` text DEFAULT NULL,
  `kategoriId` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`idProduk`, `namaProduk`, `harga`, `status`, `kodeProduk`, `gambarProduk`, `kategoriId`) VALUES
(1, 'Kentang Goreng', 9000, 'tersedia', 'SNCK-00001', 'default.jpg', '8'),
(2, 'AIR MINERAL', 2000, 'kosong', 'MINUMAN-0001', 'default.jpg', '5'),
(3, 'Ketan - Bubuk - Kelapa (BBK)', 6000, 'tersedia', 'SNCK-001', 'default.jpg', '8'),
(4, 'Ketan - Kelapa - Gula Merah (KCR)', 6000, 'tersedia', 'SNCK-002', 'default.jpg', '8'),
(5, 'Ketan - Bubuk - Kelapa - Gula Merah (CMP)', 8000, 'tersedia', 'SNCK-003', 'default.jpg', '8'),
(6, 'Ketan Ayam Pedas + Kelapa (KAP)', 8000, 'tersedia', 'SNCK-004', 'default.jpg', '8'),
(7, 'Ketan - Susu - Keju (KSK)', 8000, 'tersedia', 'SNCK-005', 'default.jpg', '8'),
(8, 'Ketan - Susu - Misis (KSM)', 8000, 'tersedia', 'SNCK-006', 'default.jpg', '8'),
(9, 'Ketan - Susu - Keju - Misis (KSKM)', 10000, 'tersedia', 'SNCK-007', 'default.jpg', '8'),
(10, 'Ketan + Susu + Vla + Tape Ketan Hitam (BW)', 8000, 'tersedia', 'SNCK-008', 'default.jpg', '8'),
(11, 'Ketan - Susu - Kacang (KSKC)', 8000, 'tersedia', 'SNCK-009', 'default.jpg', '8'),
(12, 'Ketan Susu - Kacang - Misis (KCM)', 10000, 'tersedia', 'SNCK-010', 'default.jpg', '8'),
(13, 'Ketan Susu - Kacang - Keju (SKK)', 10000, 'tersedia', 'SNCK-011', 'default.jpg', '8'),
(14, 'Ketan Susu - Kacang - Keju - Misis (SKKM)', 12000, 'tersedia', 'SNCK-012', 'default.jpg', '8'),
(15, 'Ketan Durian Susu + Vla (KSD)', 15000, 'tersedia', 'SNCK-013', 'default.jpg', '8'),
(16, 'Ketan Durian Keju Susu + Vla (KSDK)', 16000, 'tersedia', 'SNCK-014', 'default.jpg', '8'),
(17, 'Ketan Durian Misis Susu + Vla (KSDM)', 16000, 'tersedia', 'SNCK-015', 'default.jpg', '8'),
(18, 'Ketan Durian Keju Misis Susu + Vla (KDKM)', 17000, 'tersedia', 'SNCK-016', 'default.jpg', '8'),
(19, 'Ketan Pancake Durian + Susu + Vla (KPD)', 15000, 'tersedia', 'SNCK-017', 'default.jpg', '8'),
(20, 'Ketan Pancake Durian Keju + Susu +Vla (KPDK)', 16000, 'tersedia', 'SNCK-018', 'default.jpg', '8'),
(21, 'Ketan Pancake Durian Misis + Susu + Vla (KPDM)', 16000, 'tersedia', 'SNCK-019', 'default.jpg', '8'),
(22, 'Ketan Pancake Durian Keju Misis + Susu + Vla (PDKM)', 17000, 'tersedia', 'SNCK-020', 'default.jpg', '8');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `idTransaksi` int(11) NOT NULL,
  `perangkatId` int(11) DEFAULT NULL,
  `namaPemesan` varchar(255) DEFAULT NULL,
  `waktuPesan` datetime DEFAULT NULL,
  `status` enum('belum-bayar','proses','selesai','batal') DEFAULT NULL,
  `totalPembelian` int(11) DEFAULT NULL,
  `waktuBayar` datetime DEFAULT NULL,
  `waktuSelesai` datetime DEFAULT NULL,
  `namaPerangkat` varchar(255) DEFAULT NULL,
  `nomorMeja` varchar(20) DEFAULT NULL,
  `totalBayar` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`idTransaksi`, `perangkatId`, `namaPemesan`, `waktuPesan`, `status`, `totalPembelian`, `waktuBayar`, `waktuSelesai`, `namaPerangkat`, `nomorMeja`, `totalBayar`) VALUES
(1, 5, 'donny', '2020-09-01 02:54:46', 'proses', 2000, '2020-09-01 02:57:32', NULL, 'google AOSP on IA Emulator', 'meja 05', 4000),
(2, 1, 'dony', '2020-09-02 05:00:41', 'batal', 2000, NULL, '2020-09-02 05:06:07', 'Nokia TA-1021', 'meja 01', 0),
(3, 1, 'coba', '2020-09-02 05:10:21', 'batal', 9000, NULL, '2020-09-02 05:11:08', 'Nokia TA-1021', 'meja 01', 0),
(4, 6, 'lidiya', '2020-09-07 02:53:10', 'selesai', 15000, '2020-09-07 03:25:47', '2020-09-07 03:30:49', 'xiaomi Redmi Note 8', '8', 20000);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `idUser` int(11) NOT NULL,
  `nama` varchar(150) DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `password` text DEFAULT NULL,
  `level` enum('admin') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`idUser`, `nama`, `username`, `email`, `password`, `level`) VALUES
(2, 'Administrator 2', 'admin', 'admin@admin.com', '$2y$12$cmRIy7/Fij4OVFna33DPpOtT5sDSn/yBpWrHU4kW/HwcbnEMTIFdm', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`idKategori`) USING BTREE;

--
-- Indexes for table `perangkat`
--
ALTER TABLE `perangkat`
  ADD PRIMARY KEY (`idPerangkat`) USING BTREE;

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`idProduk`) USING BTREE;

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`idTransaksi`) USING BTREE;

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`) USING BTREE;

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `idKategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `perangkat`
--
ALTER TABLE `perangkat`
  MODIFY `idPerangkat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `idProduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `idTransaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
