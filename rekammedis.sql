-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 29, 2019 at 08:29 AM
-- Server version: 5.6.24
-- PHP Version: 5.6.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nurul_nabawi`
--

-- --------------------------------------------------------

--
-- Table structure for table `agamas`
--

CREATE TABLE IF NOT EXISTS `agamas` (
  `id_agama` int(10) unsigned NOT NULL,
  `nama_agama` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agamas`
--

INSERT INTO `agamas` (`id_agama`, `nama_agama`, `created_at`, `updated_at`) VALUES
(1, 'Islam', '2019-03-22 08:42:30', '2019-03-22 08:42:30'),
(2, 'Kristen', '2019-03-22 08:42:49', '2019-03-22 08:42:49'),
(3, 'Katolik', '2019-03-22 08:42:57', '2019-03-22 08:42:57'),
(4, 'Hindu', '2019-03-22 08:43:06', '2019-03-22 08:43:06'),
(5, 'Budha', '2019-03-22 08:43:12', '2019-03-22 08:43:12'),
(6, 'Lain-lain', '2019-03-22 08:43:18', '2019-03-22 08:43:18');

-- --------------------------------------------------------

--
-- Table structure for table `genders`
--

CREATE TABLE IF NOT EXISTS `genders` (
  `id_gender` int(10) unsigned NOT NULL,
  `nama_gender` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `genders`
--

INSERT INTO `genders` (`id_gender`, `nama_gender`, `created_at`, `updated_at`) VALUES
(1, 'Laki-laki', '2019-03-22 09:38:24', '2019-03-22 09:38:24'),
(2, 'Perempuan', '2019-03-22 10:03:42', '2019-03-22 10:03:42');

-- --------------------------------------------------------

--
-- Table structure for table `medical_records`
--

CREATE TABLE IF NOT EXISTS `medical_records` (
  `id_mr` int(10) unsigned NOT NULL,
  `id_tindakan` int(10) unsigned NOT NULL,
  `resep` varchar(300) NOT NULL,
  `id_user` int(10) DEFAULT NULL,
  `id_pasien` int(10) unsigned NOT NULL,
  `riwayat` varchar(300) DEFAULT NULL,
  `check` varchar(300) DEFAULT NULL,
  `diagnosa` varchar(300) NOT NULL,
  `keluhan` varchar(300) NOT NULL,
  `tgl_periksa` date DEFAULT NULL,
  `ket` varchar(300) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medical_records`
--

INSERT INTO `medical_records` (`id_mr`, `id_tindakan`, `resep`, `id_user`, `id_pasien`, `riwayat`, `check`, `diagnosa`, `keluhan`, `tgl_periksa`, `ket`, `created_at`, `updated_at`) VALUES
(8, 6, 'obat a 3kali sehariobat b 3 kali sehari', NULL, 1, NULL, NULL, 'migrain', 'sakit kepala', '2019-03-23', 'banyak istirahat', '2019-03-22 18:26:33', '2019-03-22 18:27:05'),
(9, 6, '3 kali sehari', NULL, 2, 'sakit gula,\r\ngetah bening', 'tensi : normal,', 'migrain', 'pusing', '2019-03-23', 'banyak minum', '2019-03-22 19:06:18', '2019-03-22 19:06:18'),
(10, 6, '3 kali sehari', NULL, 3, 'diabetes', 'kolesterol tinggi, gula tinggi', 'diabetes', 'nyeri dada', '2019-03-24', 'banyak istirahat', '2019-03-23 17:43:29', '2019-03-23 17:53:23');

-- --------------------------------------------------------

--
-- Table structure for table `medical_record_medicine`
--

CREATE TABLE IF NOT EXISTS `medical_record_medicine` (
  `id_mr` int(10) unsigned NOT NULL,
  `id_obat` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medical_record_medicine`
--

INSERT INTO `medical_record_medicine` (`id_mr`, `id_obat`) VALUES
(8, 1),
(8, 2),
(9, 1),
(9, 5),
(9, 8),
(10, 1),
(10, 10),
(10, 11);

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE IF NOT EXISTS `medicines` (
  `id_obat` int(10) unsigned NOT NULL,
  `nama_obat` varchar(50) DEFAULT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `stok` int(6) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medicines`
--

INSERT INTO `medicines` (`id_obat`, `nama_obat`, `deskripsi`, `stok`, `created_at`, `updated_at`) VALUES
(1, 'obat a', 'obat sakit perut', 20, '2018-12-27 03:54:26', '0000-00-00 00:00:00'),
(2, 'obat b', 'obat untuk sakit kepala', 30, '2018-12-27 03:54:26', '0000-00-00 00:00:00'),
(5, 'obat c', 'obat jantung', 25, '2018-12-26 23:26:42', '2018-12-26 23:26:42'),
(8, 'obat e', 'obat sakit mata', NULL, '2018-12-31 11:45:13', '2018-12-31 11:45:13'),
(9, 'obat f', 'obat sakit kepala, tinggi asam', 15, '2019-02-20 23:35:26', '2019-02-20 23:35:26'),
(10, 'obat d', NULL, NULL, '2019-03-21 23:42:17', '2019-03-21 23:42:17'),
(11, 'obat g', 'obat sakit kepala', NULL, '2019-03-22 18:28:21', '2019-03-22 18:28:43'),
(13, 'obat i', NULL, NULL, '2019-09-16 08:48:38', '2019-09-16 08:48:38');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('arif@contoh.com', '$2y$10$teDGfASs9BQExEzZkCf/OOoMBeOMYIlbwfHUzyVKNEg2NECzNIxyC', '2019-08-26 00:41:24');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE IF NOT EXISTS `patients` (
  `id_pasien` int(10) unsigned NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nama_pasien` varchar(50) NOT NULL,
  `id_gender` int(10) unsigned NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tgl_daftar` date NOT NULL,
  `id_agama` int(10) unsigned DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id_pasien`, `nip`, `nama_pasien`, `id_gender`, `tgl_lahir`, `tgl_daftar`, `id_agama`, `alamat`, `telp`, `created_at`, `updated_at`) VALUES
(1, '20190301', 'pasien A', 2, '1986-02-12', '2019-03-22', 3, 'Perawang Barat \r\nRT 03\r\nRW 02', '123456', '2019-03-22 10:21:57', '2019-08-13 20:34:47'),
(2, '20190301', 'pasien B', 2, '1985-02-12', '2019-03-23', 2, 'Perawang rt05', '0766754654', '2019-03-22 18:24:34', '2019-03-22 18:24:34'),
(3, '20190303', 'pasien C', 2, '1988-10-12', '2019-03-24', 1, 'Perawang', '065566577', '2019-03-23 17:41:48', '2019-03-23 17:41:48'),
(5, '002', 'Pasien E', 2, '1974-07-17', '2019-09-16', 1, '-', '-', '2019-09-16 08:53:19', '2019-09-16 08:53:19');

-- --------------------------------------------------------

--
-- Table structure for table `polyclinics`
--

CREATE TABLE IF NOT EXISTS `polyclinics` (
  `id_poli` int(10) NOT NULL,
  `nama_poli` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `polyclinics`
--

INSERT INTO `polyclinics` (`id_poli`, `nama_poli`, `created_at`, `updated_at`) VALUES
(6, 'Poli Umum', '2019-02-20 09:01:50', '2019-02-20 09:01:50');

-- --------------------------------------------------------

--
-- Table structure for table `positions`
--

CREATE TABLE IF NOT EXISTS `positions` (
  `id_jabatan` int(10) NOT NULL,
  `nama_jabatan` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `positions`
--

INSERT INTO `positions` (`id_jabatan`, `nama_jabatan`, `created_at`, `updated_at`) VALUES
(1, 'Teraphis', '2018-12-27 15:57:44', '0000-00-00 00:00:00'),
(7, 'adm', '2019-01-01 03:38:53', '2019-02-20 23:44:12');

-- --------------------------------------------------------

--
-- Table structure for table `terapises`
--

CREATE TABLE IF NOT EXISTS `terapises` (
  `id_terapis` int(10) NOT NULL,
  `no_id` varchar(50) NOT NULL,
  `nama_terapis` varchar(50) NOT NULL,
  `alamat` text NOT NULL,
  `telp` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `terapises`
--

INSERT INTO `terapises` (`id_terapis`, `no_id`, `nama_terapis`, `alamat`, `telp`, `created_at`, `updated_at`) VALUES
(6, '002', 'Suparti S.kep', 'Perawang', '085365856848', '2019-02-20 09:15:09', '2019-02-20 09:15:09');

-- --------------------------------------------------------

--
-- Table structure for table `treatments`
--

CREATE TABLE IF NOT EXISTS `treatments` (
  `id_tindakan` int(10) unsigned NOT NULL,
  `nama_tindakan` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treatments`
--

INSERT INTO `treatments` (`id_tindakan`, `nama_tindakan`, `created_at`, `updated_at`) VALUES
(6, 'Rawat jalan', '2019-02-20 23:19:44', '2019-02-20 23:20:20'),
(7, 'Rawat inap', '2019-02-20 23:20:29', '2019-02-20 23:20:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akses` enum('admin','operator') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'operator',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `akses`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'Administrator', 'admin', 'admin@contoh.com', 'admin', '$2y$10$9iZ3kDbNbZUR.4BbxD14kezBlHh.j37xbMrFsCaFE2IJcqgyuKBSu', 'BUepj1azpkM71ttEIQhJApSUcYMV41y1RpPzMpF7w62m1oVge8ifUF5SXGk0', '2019-03-27 09:18:02', '2019-08-26 14:21:28'),
(5, 'Suparti', 'umi', 'umi@contoh.com', 'operator', '$2y$10$DRnxJqAT4iYFSYg12fH4fO4tv6xYGddEV4iL2dM4uPoF.PHL/rS1O', 'io3bZvF8CaW233QVMv3SFWNpkSUeHZbWGM6iOCkNVJsdcbrAEpnl72jGFMcE', '2019-08-26 00:00:16', '2019-08-26 15:44:42'),
(6, 'Arif Rusman', 'arif', 'arif@contoh.com', 'operator', '$2y$10$Ocijq6DGVBlbdawCnM.XFu7yIhr99MPeuDn.DICkqQbQpSITihkmG', NULL, '2019-08-26 15:54:31', '2019-08-26 15:54:31');

-- --------------------------------------------------------

--
-- Table structure for table `visites`
--

CREATE TABLE IF NOT EXISTS `visites` (
  `id_kunjungan` int(10) NOT NULL,
  `id_pasien` int(10) unsigned NOT NULL,
  `tgl_kunjungan` date NOT NULL,
  `gol_pasien` int(11) NOT NULL,
  `keluhan` enum('umum','khusus') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agamas`
--
ALTER TABLE `agamas`
  ADD PRIMARY KEY (`id_agama`), ADD KEY `id_agama` (`id_agama`), ADD KEY `id_agama_2` (`id_agama`), ADD KEY `id_agama_3` (`id_agama`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id_gender`);

--
-- Indexes for table `medical_records`
--
ALTER TABLE `medical_records`
  ADD PRIMARY KEY (`id_mr`), ADD KEY `id_tindakan` (`id_tindakan`), ADD KEY `id_pasien` (`id_pasien`), ADD KEY `id_tindakan_2` (`id_tindakan`), ADD KEY `id_mr` (`id_mr`);

--
-- Indexes for table `medical_record_medicine`
--
ALTER TABLE `medical_record_medicine`
  ADD KEY `id_obat` (`id_obat`), ADD KEY `id_mr` (`id_mr`), ADD KEY `id_obat_2` (`id_obat`), ADD KEY `id_mr_2` (`id_mr`), ADD KEY `id_obat_3` (`id_obat`), ADD KEY `id_mr_3` (`id_mr`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`id_obat`), ADD KEY `id_obat` (`id_obat`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id_pasien`), ADD KEY `id_pasien` (`id_pasien`), ADD KEY `id_pasien_2` (`id_pasien`), ADD KEY `id_agama` (`id_agama`), ADD KEY `id_agama_2` (`id_agama`), ADD KEY `id_gender` (`id_gender`);

--
-- Indexes for table `polyclinics`
--
ALTER TABLE `polyclinics`
  ADD PRIMARY KEY (`id_poli`);

--
-- Indexes for table `positions`
--
ALTER TABLE `positions`
  ADD PRIMARY KEY (`id_jabatan`);

--
-- Indexes for table `terapises`
--
ALTER TABLE `terapises`
  ADD PRIMARY KEY (`id_terapis`);

--
-- Indexes for table `treatments`
--
ALTER TABLE `treatments`
  ADD PRIMARY KEY (`id_tindakan`), ADD KEY `id_tindakan` (`id_tindakan`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `visites`
--
ALTER TABLE `visites`
  ADD PRIMARY KEY (`id_kunjungan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agamas`
--
ALTER TABLE `agamas`
  MODIFY `id_agama` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id_gender` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `medical_records`
--
ALTER TABLE `medical_records`
  MODIFY `id_mr` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `id_obat` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id_pasien` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `polyclinics`
--
ALTER TABLE `polyclinics`
  MODIFY `id_poli` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `positions`
--
ALTER TABLE `positions`
  MODIFY `id_jabatan` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `terapises`
--
ALTER TABLE `terapises`
  MODIFY `id_terapis` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `treatments`
--
ALTER TABLE `treatments`
  MODIFY `id_tindakan` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `visites`
--
ALTER TABLE `visites`
  MODIFY `id_kunjungan` int(10) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `medical_records`
--
ALTER TABLE `medical_records`
ADD CONSTRAINT `medical_records_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `patients` (`id_pasien`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `medical_records_ibfk_2` FOREIGN KEY (`id_tindakan`) REFERENCES `treatments` (`id_tindakan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `medical_record_medicine`
--
ALTER TABLE `medical_record_medicine`
ADD CONSTRAINT `medical_record_medicine_ibfk_1` FOREIGN KEY (`id_mr`) REFERENCES `medical_records` (`id_mr`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `medical_record_medicine_ibfk_2` FOREIGN KEY (`id_obat`) REFERENCES `medicines` (`id_obat`);

--
-- Constraints for table `patients`
--
ALTER TABLE `patients`
ADD CONSTRAINT `patients_ibfk_1` FOREIGN KEY (`id_agama`) REFERENCES `agamas` (`id_agama`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `patients_ibfk_2` FOREIGN KEY (`id_gender`) REFERENCES `genders` (`id_gender`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
