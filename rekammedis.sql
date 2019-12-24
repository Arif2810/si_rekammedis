-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2019 at 06:58 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.1.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rekammedis`
--

-- --------------------------------------------------------

--
-- Table structure for table `agamas`
--

CREATE TABLE `agamas` (
  `id_agama` int(10) UNSIGNED NOT NULL,
  `nama_agama` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
-- Table structure for table `diagnoses`
--

CREATE TABLE `diagnoses` (
  `id_diagnosa` int(10) UNSIGNED NOT NULL,
  `nama_diagnosa` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `diagnoses`
--

INSERT INTO `diagnoses` (`id_diagnosa`, `nama_diagnosa`, `created_at`, `updated_at`) VALUES
(1, 'Penyakit A', '2019-12-11 04:58:49', '2019-12-11 04:58:49'),
(2, 'Penyakit B', '2019-12-11 04:58:58', '2019-12-11 04:58:58'),
(3, 'Penyakit C', '2019-12-11 04:59:05', '2019-12-11 04:59:05'),
(4, 'Penyakit D', '2019-12-11 04:59:11', '2019-12-11 04:59:11'),
(5, 'Penyakit E', '2019-12-11 04:59:17', '2019-12-11 04:59:17');

-- --------------------------------------------------------

--
-- Table structure for table `genders`
--

CREATE TABLE `genders` (
  `id_gender` int(10) UNSIGNED NOT NULL,
  `nama_gender` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `medical_records` (
  `id_mr` int(10) UNSIGNED NOT NULL,
  `resep` varchar(300) NOT NULL,
  `id_user` int(10) DEFAULT NULL,
  `id_pasien` int(10) UNSIGNED NOT NULL,
  `riwayat` varchar(300) DEFAULT NULL,
  `check` varchar(300) DEFAULT NULL,
  `id_diagnosa` int(10) UNSIGNED DEFAULT NULL,
  `keluhan` varchar(300) NOT NULL,
  `tgl_periksa` date DEFAULT NULL,
  `ket` varchar(300) NOT NULL,
  `image` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medical_records`
--

INSERT INTO `medical_records` (`id_mr`, `resep`, `id_user`, `id_pasien`, `riwayat`, `check`, `id_diagnosa`, `keluhan`, `tgl_periksa`, `ket`, `image`, `created_at`, `updated_at`) VALUES
(12, '3 kali sehari', NULL, 6, 'penyakit A', 'periksa tensi,', 1, 'Keluhan 1, keluhan 2', '2019-12-11', 'banyak istirahat', '', '2019-12-11 06:41:48', '2019-12-11 06:41:48'),
(14, '3 kali sehari', NULL, 8, 'penyakit C', 'cek gula darah', 3, 'keluhan 1, keluhan 2', '2019-12-11', 'banyak minum air putih', '', '2019-12-11 14:08:14', '2019-12-11 14:08:14'),
(15, '3 kali sehari', NULL, 9, 'penyakit D', 'periksaan 1', 4, 'keluhan 1', '2019-12-12', 'keterangan', '1576132905.jpg', '2019-12-12 06:41:45', '2019-12-12 06:41:45'),
(16, '3 kali sehari', NULL, 9, 'penyakit D', 'pemeriksaan 1', 4, 'keluhan 1', '2019-12-12', 'banyak istirahat', '1576144552.jpg', '2019-12-12 09:55:00', '2019-12-12 09:55:52');

-- --------------------------------------------------------

--
-- Table structure for table `medical_record_medicine`
--

CREATE TABLE `medical_record_medicine` (
  `id_mr` int(10) UNSIGNED NOT NULL,
  `id_obat` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medical_record_medicine`
--

INSERT INTO `medical_record_medicine` (`id_mr`, `id_obat`) VALUES
(12, 1),
(12, 2),
(14, 2),
(14, 5),
(15, 1),
(15, 5),
(16, 2),
(16, 5);

-- --------------------------------------------------------

--
-- Table structure for table `medical_record_treatment`
--

CREATE TABLE `medical_record_treatment` (
  `id_mr` int(10) UNSIGNED NOT NULL,
  `id_tindakan` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medical_record_treatment`
--

INSERT INTO `medical_record_treatment` (`id_mr`, `id_tindakan`) VALUES
(14, 8),
(14, 9),
(14, 10),
(15, 8),
(15, 9),
(16, 8),
(16, 10);

-- --------------------------------------------------------

--
-- Table structure for table `medicines`
--

CREATE TABLE `medicines` (
  `id_obat` int(10) UNSIGNED NOT NULL,
  `nama_obat` varchar(50) DEFAULT NULL,
  `deskripsi` varchar(255) DEFAULT NULL,
  `stok` int(6) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

CREATE TABLE `password_resets` (
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

CREATE TABLE `patients` (
  `id_pasien` int(10) UNSIGNED NOT NULL,
  `nip` varchar(20) NOT NULL,
  `nama_pasien` varchar(50) NOT NULL,
  `id_gender` int(10) UNSIGNED NOT NULL,
  `tgl_lahir` date NOT NULL,
  `tgl_daftar` date NOT NULL,
  `id_agama` int(10) UNSIGNED DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `telp` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id_pasien`, `nip`, `nama_pasien`, `id_gender`, `tgl_lahir`, `tgl_daftar`, `id_agama`, `alamat`, `telp`, `created_at`, `updated_at`) VALUES
(6, '191201001', 'Pasien A', 2, '1980-02-12', '2019-12-01', 1, 'Jl. Satu', '088200110011', '2019-12-11 06:00:33', '2019-12-11 06:25:01'),
(7, '191201002', 'Pasien B', 2, '1979-09-08', '2019-12-01', 1, 'Jl. Dua', '088200110012', '2019-12-11 06:02:17', '2019-12-11 06:25:11'),
(8, '191201003', 'Pasien C', 2, '1980-11-11', '2019-12-01', 1, 'Jl. Tiga', '088200110013', '2019-12-11 06:03:17', '2019-12-11 06:25:33'),
(9, '191201004', 'Pasien D', 2, '1980-12-23', '2019-12-01', 1, 'Jl. Empat', '088200110014', '2019-12-11 06:12:25', '2019-12-11 06:25:26'),
(10, '191201005', 'Pasien E', 2, '1980-12-24', '2019-12-01', 1, 'Jl. Lima', '088200110015', '2019-12-11 06:15:00', '2019-12-11 06:25:19'),
(11, '191202001', 'Pasien F', 1, '1978-11-01', '2019-12-02', 2, 'Jl. Enam', '088200110016', '2019-12-11 06:16:17', '2019-12-11 06:16:17'),
(12, '191202002', 'Pasien G', 1, '1977-11-02', '2019-12-02', 2, 'Jl. Tujuh', '088200110017', '2019-12-11 06:19:24', '2019-12-11 06:19:24'),
(13, '191202003', 'Pasien H', 1, '1977-11-04', '2019-12-02', 2, 'Jl. Delapan', '088200110018', '2019-12-11 06:20:58', '2019-12-11 06:20:58'),
(14, '191202004', 'Pasien I', 1, '1977-11-05', '2019-12-02', 2, 'Jl. Sembilan', '088200110019', '2019-12-11 06:22:25', '2019-12-11 06:24:33'),
(15, '191202005', 'Pasien J', 1, '1977-11-05', '2019-12-02', 2, 'Jl. Sepuluh', '088200110110', '2019-12-11 06:24:19', '2019-12-11 06:24:19');

-- --------------------------------------------------------

--
-- Table structure for table `treatments`
--

CREATE TABLE `treatments` (
  `id_tindakan` int(10) UNSIGNED NOT NULL,
  `nama_tindakan` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `treatments`
--

INSERT INTO `treatments` (`id_tindakan`, `nama_tindakan`, `created_at`, `updated_at`) VALUES
(8, 'Tindakan 1', '2019-12-11 06:28:09', '2019-12-11 06:28:09'),
(9, 'Tindakan 2', '2019-12-11 06:28:14', '2019-12-11 06:28:14'),
(10, 'Tindakan 3', '2019-12-11 06:28:20', '2019-12-11 06:28:20'),
(11, 'Tindakan 4', '2019-12-11 06:28:25', '2019-12-11 06:28:25'),
(12, 'Tindakan 5', '2019-12-11 06:28:58', '2019-12-11 06:28:58');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `akses` enum('admin','operator') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'operator',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `username`, `email`, `akses`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(4, 'Administrator', 'admin', 'admin@contoh.com', 'admin', '$2y$10$9iZ3kDbNbZUR.4BbxD14kezBlHh.j37xbMrFsCaFE2IJcqgyuKBSu', 'U3W04hMhrwy4og9eBTtRKatqVMJdhwH5XZn5UwB2AgHwPbCYY8VMAy5pGDQw', '2019-03-27 09:18:02', '2019-08-26 14:21:28'),
(5, 'Suparti', 'umi', 'umi@contoh.com', 'operator', '$2y$10$DRnxJqAT4iYFSYg12fH4fO4tv6xYGddEV4iL2dM4uPoF.PHL/rS1O', 'io3bZvF8CaW233QVMv3SFWNpkSUeHZbWGM6iOCkNVJsdcbrAEpnl72jGFMcE', '2019-08-26 00:00:16', '2019-08-26 15:44:42'),
(6, 'Arif Rusman', 'arif', 'arif@contoh.com', 'operator', '$2y$10$Ocijq6DGVBlbdawCnM.XFu7yIhr99MPeuDn.DICkqQbQpSITihkmG', 'd2XZU3dQlHKQ5qHkseWWMaZmna8vgmzjSvUWsVE2tQoaFfEwrSthPpTcHYmi', '2019-08-26 15:54:31', '2019-08-26 15:54:31');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agamas`
--
ALTER TABLE `agamas`
  ADD PRIMARY KEY (`id_agama`),
  ADD KEY `id_agama` (`id_agama`),
  ADD KEY `id_agama_2` (`id_agama`),
  ADD KEY `id_agama_3` (`id_agama`);

--
-- Indexes for table `diagnoses`
--
ALTER TABLE `diagnoses`
  ADD PRIMARY KEY (`id_diagnosa`),
  ADD KEY `id_diagnosa` (`id_diagnosa`);

--
-- Indexes for table `genders`
--
ALTER TABLE `genders`
  ADD PRIMARY KEY (`id_gender`);

--
-- Indexes for table `medical_records`
--
ALTER TABLE `medical_records`
  ADD PRIMARY KEY (`id_mr`),
  ADD KEY `id_pasien` (`id_pasien`),
  ADD KEY `id_mr` (`id_mr`),
  ADD KEY `id_diagnosa` (`id_diagnosa`);

--
-- Indexes for table `medical_record_medicine`
--
ALTER TABLE `medical_record_medicine`
  ADD KEY `id_obat` (`id_obat`),
  ADD KEY `id_mr` (`id_mr`),
  ADD KEY `id_obat_2` (`id_obat`),
  ADD KEY `id_mr_2` (`id_mr`),
  ADD KEY `id_obat_3` (`id_obat`),
  ADD KEY `id_mr_3` (`id_mr`);

--
-- Indexes for table `medical_record_treatment`
--
ALTER TABLE `medical_record_treatment`
  ADD KEY `id_mr` (`id_mr`),
  ADD KEY `id_tindakan` (`id_tindakan`);

--
-- Indexes for table `medicines`
--
ALTER TABLE `medicines`
  ADD PRIMARY KEY (`id_obat`),
  ADD KEY `id_obat` (`id_obat`);

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
  ADD PRIMARY KEY (`id_pasien`),
  ADD KEY `id_pasien` (`id_pasien`),
  ADD KEY `id_pasien_2` (`id_pasien`),
  ADD KEY `id_agama` (`id_agama`),
  ADD KEY `id_agama_2` (`id_agama`),
  ADD KEY `id_gender` (`id_gender`);

--
-- Indexes for table `treatments`
--
ALTER TABLE `treatments`
  ADD PRIMARY KEY (`id_tindakan`),
  ADD KEY `id_tindakan` (`id_tindakan`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agamas`
--
ALTER TABLE `agamas`
  MODIFY `id_agama` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `diagnoses`
--
ALTER TABLE `diagnoses`
  MODIFY `id_diagnosa` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id_gender` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `medical_records`
--
ALTER TABLE `medical_records`
  MODIFY `id_mr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `id_obat` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id_pasien` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `treatments`
--
ALTER TABLE `treatments`
  MODIFY `id_tindakan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `medical_records`
--
ALTER TABLE `medical_records`
  ADD CONSTRAINT `medical_records_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `patients` (`id_pasien`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `medical_records_ibfk_3` FOREIGN KEY (`id_diagnosa`) REFERENCES `diagnoses` (`id_diagnosa`);

--
-- Constraints for table `medical_record_medicine`
--
ALTER TABLE `medical_record_medicine`
  ADD CONSTRAINT `medical_record_medicine_ibfk_1` FOREIGN KEY (`id_mr`) REFERENCES `medical_records` (`id_mr`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `medical_record_medicine_ibfk_2` FOREIGN KEY (`id_obat`) REFERENCES `medicines` (`id_obat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `medical_record_treatment`
--
ALTER TABLE `medical_record_treatment`
  ADD CONSTRAINT `medical_record_treatment_ibfk_1` FOREIGN KEY (`id_tindakan`) REFERENCES `treatments` (`id_tindakan`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `medical_record_treatment_ibfk_2` FOREIGN KEY (`id_mr`) REFERENCES `medical_records` (`id_mr`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `patients`
--
ALTER TABLE `patients`
  ADD CONSTRAINT `patients_ibfk_1` FOREIGN KEY (`id_agama`) REFERENCES `agamas` (`id_agama`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `patients_ibfk_2` FOREIGN KEY (`id_gender`) REFERENCES `genders` (`id_gender`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `treatments`
--
ALTER TABLE `treatments`
  ADD CONSTRAINT `treatments_ibfk_1` FOREIGN KEY (`id_tindakan`) REFERENCES `treatments` (`id_tindakan`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
