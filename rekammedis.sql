-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 16, 2020 at 04:24 PM
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
(1, 'Tidak ada', '2019-12-11 04:58:49', '2019-12-11 04:58:49'),
(2, 'CM Mamae', '2019-12-11 04:58:58', '2020-02-13 15:54:53'),
(3, 'Tungkak Usus', '2019-12-11 04:59:05', '2020-02-13 15:54:34'),
(4, 'Tungkak Lambung', '2019-12-11 04:59:11', '2020-02-13 15:54:17'),
(5, 'TB Paru', '2019-12-11 04:59:17', '2020-02-13 15:53:56'),
(6, 'Gastritis', '2020-01-31 06:36:44', '2020-02-13 15:53:44'),
(7, 'Kanker Usus', '2020-02-13 15:55:24', '2020-02-13 15:55:24'),
(8, 'Kista Usus', '2020-02-13 15:55:32', '2020-02-13 15:55:32'),
(9, 'Kista Rahim', '2020-02-13 15:55:39', '2020-02-13 15:55:39'),
(10, 'Kista luar Rahim', '2020-02-13 15:55:49', '2020-02-13 15:55:49'),
(11, 'Hepatitis Tipe A', '2020-02-13 15:55:59', '2020-02-13 15:56:11'),
(12, 'Hepatitis Tipe B', '2020-02-13 15:56:20', '2020-02-13 15:56:20'),
(13, 'Hepatitis Tipe C', '2020-02-13 15:56:30', '2020-02-13 15:56:30'),
(14, 'Kanker Tulang', '2020-02-13 15:56:37', '2020-02-13 15:56:37'),
(15, 'Kanker Getah Bening', '2020-02-13 15:56:47', '2020-02-13 15:56:47'),
(16, 'Stroke Hemorrogic', '2020-02-13 15:57:43', '2020-02-13 15:57:43'),
(17, 'Stroke Iskemik', '2020-02-13 15:58:09', '2020-02-13 15:58:09'),
(18, 'Katarak', '2020-02-13 15:58:34', '2020-02-13 15:58:34'),
(19, 'Presbiopi', '2020-02-13 15:58:43', '2020-02-13 15:58:43'),
(20, 'Miopi', '2020-02-13 15:58:52', '2020-02-13 15:58:52'),
(21, 'Hernia', '2020-02-13 16:00:26', '2020-02-13 16:00:26'),
(22, 'Prostat', '2020-02-13 16:00:34', '2020-02-13 16:00:34'),
(23, 'CA Uterus', '2020-02-13 16:01:08', '2020-02-13 16:01:08'),
(24, 'Hernia nukleus pulposus', '2020-02-13 16:01:54', '2020-02-13 16:01:54'),
(25, 'CA Mioma', '2020-02-13 16:02:17', '2020-02-13 16:02:17'),
(26, 'CA Servick', '2020-02-13 16:03:24', '2020-02-13 16:03:24'),
(27, 'Jantung Koroner', '2020-02-13 16:03:36', '2020-02-13 16:03:36'),
(28, 'Gagal Ginjal', '2020-02-13 16:03:59', '2020-02-13 16:03:59'),
(29, 'Appendix', '2020-02-13 16:04:26', '2020-02-13 16:04:26'),
(30, 'Pengapuran Tulang', '2020-02-13 16:04:47', '2020-02-13 16:04:47'),
(31, 'Amandel', '2020-02-13 16:05:26', '2020-02-13 16:05:26'),
(32, 'Tiroid', '2020-02-13 16:06:44', '2020-02-13 16:06:44'),
(33, 'Choleliphiasis / batu empedu', '2020-02-15 04:24:28', '2020-02-15 04:24:28'),
(34, 'Hiper plasia indometrium / penebalan dinding rahim', '2020-02-15 04:36:27', '2020-02-15 04:36:27'),
(35, 'nephrolithiasis / batu ginjal', '2020-02-15 06:16:14', '2020-02-15 06:17:18'),
(36, 'Gonore', '2020-02-15 09:24:35', '2020-02-15 09:24:35'),
(37, 'mioma', '2020-02-15 16:37:00', '2020-02-15 16:37:00'),
(38, 'Diabetes', '2020-02-15 16:41:53', '2020-02-15 16:41:53'),
(39, 'CA Usus', '2020-02-15 16:56:23', '2020-02-15 16:56:23');

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
  `resep` varchar(300) DEFAULT NULL,
  `id_user` int(10) DEFAULT NULL,
  `id_pasien` int(10) UNSIGNED NOT NULL,
  `riwayat` varchar(300) DEFAULT NULL,
  `check` varchar(300) DEFAULT NULL,
  `id_diagnosa` int(10) UNSIGNED DEFAULT NULL,
  `keluhan` varchar(300) NOT NULL,
  `tgl_periksa` date DEFAULT NULL,
  `ket` varchar(300) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `image2` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `medical_records`
--

INSERT INTO `medical_records` (`id_mr`, `resep`, `id_user`, `id_pasien`, `riwayat`, `check`, `id_diagnosa`, `keluhan`, `tgl_periksa`, `ket`, `image`, `image2`, `created_at`, `updated_at`) VALUES
(34, 'binahonh : 3 kali sehari setelah makan (2 bgks)  \r\n3 kali sehari setelah makan (2 bgks)', NULL, 22, 'asam lambung, gastritis', 'tensi: rendah, HB: rendah(9)\r\nperikasaan fisik: pasien tarik nafas perut pasien bagian atas ditekan terasa sakit.\r\nulu hati ditekan terasa sakit\r\nmata kuning', 33, 'mual, muntah, pusing', '2019-10-01', 'kurangi aktifitas', NULL, NULL, '2020-02-15 04:32:00', '2020-02-15 04:32:00'),
(35, '3 kali sehari', NULL, 23, 'nyeri haid', 'tarik nafas ditekan perut bawah pusar keras dan nyeri', 34, 'pendarahan yang berlngsung selama sebulan mirip mentruasi, namun berkepanjangan', '2019-10-01', 'cukupkan istirahat, hindari angkat berat', NULL, NULL, '2020-02-15 04:41:39', '2020-02-15 04:41:39'),
(36, '3 kali sehari', NULL, 24, 'Batu ginjal', 'tensi: normal, asam urat : tinggi\r\ntarik nafas, tekan bagian perut sebelah kiri kanan terasa sakit dan keras\r\ntarik nafas, tekan perut bagian bawah terasa sakit dan keras', 35, 'buang air kecil sakit, tidak lancar, bercampur darah', '2019-10-01', 'banyak minum air putih', NULL, NULL, '2020-02-15 06:15:39', '2020-02-15 06:17:31'),
(37, '-', NULL, 48, '-', '-', 1, '-', '2020-01-01', '-', NULL, NULL, '2020-02-15 16:25:30', '2020-02-15 16:25:30'),
(38, '-', NULL, 49, '-', '-', 1, '-', '2020-01-01', '-', NULL, NULL, '2020-02-15 16:26:31', '2020-02-15 16:26:31'),
(39, '-', NULL, 50, '-', '-', 1, '-', '2020-01-02', '-', NULL, NULL, '2020-02-15 16:28:25', '2020-02-15 16:28:25'),
(40, '-', NULL, 51, '-', '-', 1, '-', '2020-01-02', '-', NULL, NULL, '2020-02-15 16:29:02', '2020-02-15 16:29:02'),
(41, '-', NULL, 52, '-', '-', 1, '-', '2020-01-02', '-', NULL, NULL, '2020-02-15 16:30:50', '2020-02-15 16:30:50'),
(42, '-', NULL, 53, '-', '-', 1, '-', '2020-01-03', '-', NULL, NULL, '2020-02-15 16:32:13', '2020-02-15 16:32:13'),
(43, '-', NULL, 54, '-', '-', 1, '-', '2020-01-04', '-', NULL, NULL, '2020-02-15 16:33:57', '2020-02-15 16:33:57'),
(44, '-', NULL, 56, 'mioma', '-', 25, 'nyeri perut', '2020-02-06', '-', NULL, NULL, '2020-02-15 16:36:38', '2020-02-15 16:44:21'),
(45, '-', NULL, 57, '-', '-', 35, '-', '2020-01-07', '-', NULL, NULL, '2020-02-15 16:38:25', '2020-02-15 16:38:25'),
(46, '-', NULL, 58, '-', '-', 1, '-', '2020-01-07', '-', NULL, NULL, '2020-02-15 16:39:10', '2020-02-15 16:39:10'),
(47, '-', NULL, 54, 'TB Paru', '-', 5, 'nyeri dada', '2020-01-08', '-', NULL, NULL, '2020-02-15 16:40:26', '2020-02-15 16:40:26'),
(48, '-', NULL, 52, 'Diabetes', '-', 38, '-', '2020-01-08', '-', NULL, NULL, '2020-02-15 16:42:52', '2020-02-15 16:42:52'),
(49, '-', NULL, 56, 'mioma', '-', 25, 'nyeri perut', '2020-01-09', '-', NULL, NULL, '2020-02-15 16:44:09', '2020-02-15 16:44:09'),
(50, '-', NULL, 53, 'TB Paru', '-', 5, 'nyeri dada', '2020-01-10', '-', NULL, NULL, '2020-02-15 16:47:12', '2020-02-15 16:47:12'),
(51, '-', NULL, 58, 'batu ginjal', '-', 35, '-', '2020-01-12', '-', NULL, NULL, '2020-02-15 16:48:44', '2020-02-15 16:48:44'),
(52, '-', NULL, 57, '-', '-', 9, '-', '2020-01-12', '-', NULL, NULL, '2020-02-15 16:50:06', '2020-02-16 07:33:04'),
(53, '3 kali sehari setelah makan (2 bgks)', NULL, 53, 'TB Paru', 'nadi: normal, suhu: tinggi, pemeriksaan paru paru terdengar whezing', 5, 'nyeri dada, sesak nafas berbunyi', '2020-01-14', 'nebulizer 1 kali sehari', NULL, NULL, '2020-02-15 16:55:06', '2020-02-16 07:32:21'),
(54, '3 kali sehari setelah makan', NULL, 59, 'ca usus, empedu, hipertensi', 'tensi: normal, suhu: normal, nadi: normal', 39, 'mual, muntah, sakit perut kuadran kanan bawah, kiri bawah', '2020-01-16', 'cukup istirahat', NULL, NULL, '2020-02-15 16:56:17', '2020-02-16 07:30:00'),
(55, '3 kali sehari setelah makan (2 bgks)', NULL, 60, 'batu empedu', 'TTV: normal', 33, 'nyeri perut kuadran kiri atas', '2020-02-15', 'cukup istirahat', NULL, NULL, '2020-02-15 16:58:14', '2020-02-16 07:27:53'),
(56, '3 kali sehari setelah makan (2 bgks)', NULL, 53, 'TB Paru', 'nadi: normal, suhu: tinggi, pemeriksaan paru paru terdengar whezing', 5, 'nyeri dada, sesak nafas berbunyi', '2020-01-17', 'nebulizer 1 kali sehari', NULL, NULL, '2020-02-15 16:59:10', '2020-02-16 07:25:20'),
(57, '3 kali sehari setelah makan', NULL, 57, 'kista', 'TTV : normal', 9, 'nyeri perut, haid tidak teratur', '2020-01-18', 'banyak istirahat, cukup  minum air putih', NULL, NULL, '2020-02-15 17:01:34', '2020-02-16 07:21:05'),
(58, '3 kali sehari setelah makan', NULL, 58, 'batu ginjal', 'TTV: normal', 35, 'sakit saat kencing', '2020-01-18', '-', NULL, NULL, '2020-02-15 17:02:45', '2020-02-16 07:17:57'),
(59, '3 kali sehari', NULL, 60, 'batu empedu', 'TTV: normal', 33, 'nyeri perut kuadran kiri atas', '2020-01-18', 'cukupkan istirahat', NULL, NULL, '2020-02-15 17:06:33', '2020-02-16 07:15:41'),
(60, '3 kali sehari setelah makan', NULL, 56, 'mioma', 'TTV: normal\r\ntekan perut terasa keras dan sakit,\r\npemeriksaan dengan cara palvasi teraba keras', 25, 'nyeri perut (bawah pusar), haid tidak teratur', '2020-01-18', 'saat nyeri perut datang jangan ditekan purut bawah pusar', NULL, NULL, '2020-02-15 17:08:16', '2020-02-16 07:12:46'),
(61, '3 kali sehari setelah makan (2 bgks)', NULL, 53, 'TB Paru', 'nadi: normal, suhu: tinggi, \r\npemeriksaan paru paru terdengar whezing', 5, 'nyeri dada, sesak nafas berbunyi', '2020-01-20', 'nebulizer 1 kali sehari', NULL, NULL, '2020-02-15 17:09:08', '2020-02-16 07:05:28'),
(62, '3 kali sehari setelah makan', NULL, 59, 'ca usus, empedu, hipertensi', 'tensi: normal, suhu: normal, nadi: normal', 39, 'mual, muntah, sakit perut kuadran kanan bawah, kiri bawah', '2020-01-21', 'istirahat cukup', NULL, NULL, '2020-02-15 17:10:10', '2020-02-16 07:00:53');

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
(34, 9),
(34, 22),
(34, 26),
(34, 34),
(35, 15),
(35, 17),
(35, 35),
(36, 26),
(36, 27),
(36, 28),
(37, 5),
(38, 5),
(39, 5),
(40, 5),
(41, 2),
(42, 2),
(43, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 5),
(49, 5),
(50, 2),
(51, 2),
(52, 2),
(56, 5),
(58, 2),
(62, 13),
(62, 15),
(62, 17),
(62, 29),
(62, 30),
(61, 5),
(61, 14),
(61, 25),
(61, 36),
(61, 37),
(60, 17),
(60, 18),
(60, 29),
(60, 31),
(59, 11),
(59, 22),
(59, 27),
(59, 39),
(58, 14),
(58, 26),
(58, 27),
(58, 28),
(58, 34),
(57, 39),
(57, 29),
(57, 41),
(57, 42),
(57, 44),
(56, 14),
(56, 25),
(56, 36),
(56, 37),
(55, 11),
(55, 22),
(55, 27),
(55, 39),
(54, 13),
(54, 15),
(54, 17),
(54, 29),
(54, 30),
(53, 5),
(53, 14),
(53, 25),
(53, 36),
(53, 37);

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
(34, 8),
(35, 17),
(36, 8),
(36, 15),
(36, 16),
(36, 17),
(37, 8),
(38, 8),
(39, 8),
(40, 8),
(41, 8),
(42, 8),
(43, 8),
(44, 8),
(45, 8),
(46, 8),
(47, 8),
(48, 8),
(49, 8),
(50, 8),
(51, 8),
(52, 8),
(53, 8),
(54, 8),
(55, 8),
(56, 8),
(57, 8),
(58, 8),
(59, 8),
(60, 8),
(61, 8),
(62, 8),
(61, 11),
(59, 13),
(56, 11),
(53, 11);

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
(2, 'Remujung', 'Obat untuk gagal ginjal', NULL, '2018-12-27 03:54:26', '2020-02-13 15:23:26'),
(5, 'Akar Legundi', 'Obat TB Paru', NULL, '2018-12-26 23:26:42', '2020-02-13 15:24:00'),
(8, 'Buah Mengkudu', 'meredakan batuk, meredakan radang tenggorokan', NULL, '2018-12-31 11:45:13', '2020-02-13 15:25:44'),
(9, 'Daun Binahong Merah', 'Meredakan sakit mag dan infeksi lambung, gastritis, tungkak lambung', NULL, '2019-02-20 23:35:26', '2020-02-13 15:27:33'),
(10, 'Daun Mengkudu', 'Meredakan Batuk, mengobati infeksi getah bening', NULL, '2019-03-21 23:42:17', '2020-02-13 15:25:06'),
(11, 'Daun Binahong Hijau', 'Meredakan sakit mag dan infeksi lambung, gastritis, tungkak lambung', NULL, '2019-03-22 18:28:21', '2020-02-13 15:27:58'),
(13, 'Daun Cempaka Merah', 'Mengobati kanker, tumor', NULL, '2019-09-16 08:48:38', '2020-02-13 15:28:51'),
(14, 'Alang alang', NULL, NULL, '2020-02-13 04:28:14', '2020-02-13 04:28:14'),
(15, 'Temu Mangga', NULL, NULL, '2020-02-13 04:30:01', '2020-02-13 04:30:01'),
(16, 'Daun Cempaka Putih', 'Mengobati kanker, tumor', NULL, '2020-02-13 15:29:15', '2020-02-13 15:29:15'),
(17, 'Daun Dewa', 'Mengobati Kanker, tumor, meredakan batuk', NULL, '2020-02-13 15:29:46', '2020-02-13 15:29:46'),
(18, 'Keladi Tikus', 'Mengobati tumor, kanker payudara, pengobatan pasca kemoterapi', NULL, '2020-02-13 15:31:39', '2020-02-13 15:31:39'),
(19, 'Keladi Air', 'Mengobati tumor, kanker payudara, pengobatan pasca kemoterapi', NULL, '2020-02-13 15:31:53', '2020-02-13 15:31:53'),
(20, 'Daun Mahkota Dewa', 'Mengobati tumor, kanker, vitamin tulang, penambah kalsium', NULL, '2020-02-13 15:33:14', '2020-02-13 15:33:14'),
(21, 'Buah Mahkota Dewa', 'Mengobati tumor, kanker, vitamin tulang, penambah kalsium', NULL, '2020-02-13 15:33:32', '2020-02-13 15:33:32'),
(22, 'Rumput Mutiara', 'Mengobati batu empedu, hepatitis A, B, C', NULL, '2020-02-13 15:34:19', '2020-02-13 15:34:51'),
(23, 'Akar Rumput Mutiara', 'Mengobati batu empedu, hepatitis A, B, C', NULL, '2020-02-13 15:35:13', '2020-02-13 15:35:13'),
(24, 'Sambung Nyawa', 'Menurunkan kolesterol, melancarkan peredaran darah', NULL, '2020-02-13 15:36:31', '2020-02-13 15:36:31'),
(25, 'Cakar Ayam', 'Meredakan batuk darah, infeksi paru paru, TB Paru', NULL, '2020-02-13 15:37:47', '2020-02-13 15:37:47'),
(26, 'Kumis Kucing', 'Melancarkan Buang air kecil, menghancurkan batu ginjal', NULL, '2020-02-13 15:39:41', '2020-02-13 15:39:41'),
(27, 'Tempuyung', 'Mengobati gagal ginjal, menurunkan kadar urium, karatinin', NULL, '2020-02-13 15:40:13', '2020-02-16 07:17:38'),
(28, 'Biji Beling', 'Pengobati gangguan prostat, melancarkan buang air kecil', NULL, '2020-02-13 15:41:57', '2020-02-13 15:41:57'),
(29, 'Benalu Teh', 'Mengobati Kanker, tumor, anti oksidan', NULL, '2020-02-13 15:43:16', '2020-02-13 15:43:16'),
(30, 'Gamat', 'Mempercepat masa penyembuhan, mempercepat proses regenerasi sel sel tubuh', NULL, '2020-02-13 15:44:33', '2020-02-13 15:44:33'),
(31, 'Spiruna', 'Menambah asam amino, mengobati sakit mata, tumor, kanker', NULL, '2020-02-13 15:45:28', '2020-02-13 15:45:28'),
(32, 'extrat ubur ubur', 'Mengobati kanker', NULL, '2020-02-13 15:46:31', '2020-02-13 16:11:53'),
(33, 'Daun Kelor', 'Mengobati mata, tinggi kalsium, mencegah pengapuran tulang', NULL, '2020-02-13 15:47:10', '2020-02-13 15:47:10'),
(34, 'Ilir ilir', 'Mengobati panas dalam, radang tenggorokan, mengobati insomnia', NULL, '2020-02-13 15:48:04', '2020-02-13 15:48:04'),
(35, 'Temu Putih', 'Mengobati kanker, tumor', NULL, '2020-02-13 15:49:20', '2020-02-13 15:49:20'),
(36, 'Temu Hitam', 'Menambah nafsu makan, megobati Hepatitis', NULL, '2020-02-13 15:50:27', '2020-02-13 15:50:27'),
(37, 'Temu Lawak', 'Menambah nafsu makan', NULL, '2020-02-13 15:50:46', '2020-02-13 15:50:46'),
(38, 'jahe', '-', NULL, '2020-02-16 07:05:42', '2020-02-16 07:05:42'),
(39, 'kunyit putih', NULL, NULL, '2020-02-16 07:11:56', '2020-02-16 07:11:56'),
(40, 'daun meniran', NULL, NULL, '2020-02-16 07:14:17', '2020-02-16 07:14:17'),
(41, 'Daun Sirih Merah', NULL, NULL, '2020-02-16 07:19:28', '2020-02-16 07:19:28'),
(42, 'Jati Belanda', NULL, NULL, '2020-02-16 07:19:54', '2020-02-16 07:19:54'),
(43, 'Pegagan', NULL, NULL, '2020-02-16 07:20:09', '2020-02-16 07:20:09'),
(44, 'Tapak Liman Merah', NULL, NULL, '2020-02-16 07:20:21', '2020-02-16 07:20:21');

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
  `nip` char(8) NOT NULL,
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
(22, '19100101', 'Ummu Aisyah', 2, '1980-01-01', '2019-10-01', 1, 'jl. Koperasi km.6 Perawang', '0812000000', '2020-02-15 04:19:54', '2020-02-15 04:19:54'),
(23, '19100102', 'Yuli', 2, '1980-02-02', '2019-10-01', 1, 'Jl. km.8', '088200110011', '2020-02-15 04:35:20', '2020-02-15 14:19:25'),
(24, '19100103', 'Yusmiati', 2, '1981-03-03', '2019-10-01', 1, 'Depan Hotel Istana 7 km.7 Perawng', '088200110011', '2020-02-15 04:43:52', '2020-02-15 14:19:42'),
(25, '19100201', 'Mulyono', 1, '1978-10-03', '2019-10-02', 1, 'Bunut', '088200110014', '2020-02-15 07:50:25', '2020-02-15 08:36:57'),
(26, '19100202', 'Yulidar', 2, '1981-12-09', '2019-10-02', 1, 'km. 9 Perawang', '081275121552', '2020-02-15 09:14:49', '2020-02-15 09:15:26'),
(27, '19100301', 'Ahmad', 1, '1978-03-03', '2019-10-03', 1, 'km. 15 Perawang', '088200110014', '2020-02-15 09:17:55', '2020-02-15 09:17:55'),
(28, '19100302', 'Maimunah', 2, '1980-07-27', '2019-10-03', 1, 'Maredan', '088200110013', '2020-02-15 09:23:51', '2020-02-15 14:21:14'),
(29, '19100401', 'by. Arpan', 1, '2016-04-04', '2019-10-04', 1, 'BUnut', '088200110013', '2020-02-15 09:26:38', '2020-02-15 09:26:38'),
(30, '19100402', 'Puji', 2, '1977-03-23', '2019-10-04', 1, 'Bunut', '088200110013', '2020-02-15 09:28:33', '2020-02-15 09:28:33'),
(31, '19100501', 'Intan', 2, '2005-04-13', '2019-10-05', 1, 'Maredan', '088200110013', '2020-02-15 14:23:31', '2020-02-15 14:23:31'),
(32, '19100502', 'Ahmad', 1, '1988-04-23', '2019-10-05', 1, 'Bunut', '081275121552', '2020-02-15 14:24:45', '2020-02-15 14:24:45'),
(33, '19100601', 'Yunia', 2, '1989-04-06', '2019-10-06', 1, 'Rumbai', '088200110016', '2020-02-15 14:25:58', '2020-02-15 14:25:58'),
(34, '19100602', 'Intan', 2, '1978-04-04', '2019-10-06', 1, 'Rumbai', '088200110017', '2020-02-15 14:28:39', '2020-02-15 14:28:39'),
(35, '19100701', 'Ibu Santi', 2, '1977-05-14', '2019-10-07', 1, 'km.15', '088200110011', '2020-02-15 14:29:27', '2020-02-15 14:29:27'),
(36, '19100702', 'Bapak', 1, '1976-11-05', '2019-10-07', 1, 'KPR 1', '088200110017', '2020-02-15 14:30:37', '2020-02-15 14:30:37'),
(37, '19100801', 'Ica', 2, '2010-10-10', '2019-10-08', 1, 'km. 6', '088200110016', '2020-02-15 14:32:21', '2020-02-15 14:32:21'),
(38, '19100802', 'Ibu Betnowati', 2, '1980-08-18', '2019-10-08', 2, 'km. 6', '088200110014', '2020-02-15 14:33:49', '2020-02-15 14:33:49'),
(39, '19100901', 'Bpk. Yono', 1, '1987-04-14', '2019-10-09', 1, 'Bunut', '088200110016', '2020-02-15 14:34:47', '2020-02-15 14:34:47'),
(40, '19100902', 'Ibu Yono', 2, '1987-06-17', '2019-10-09', 1, 'Bunut', '088200110016', '2020-02-15 14:35:24', '2020-02-15 14:35:24'),
(41, '19101001', 'Bpk. Izul', 1, '1977-05-17', '2019-10-10', 1, NULL, '082388843545', '2020-02-15 14:39:08', '2020-02-15 14:39:08'),
(42, '19101002', 'Bpk. Junaidi', 1, '1973-09-09', '2019-10-10', 1, 'gg. Hidayah no. 9 Perawang', '088200110011', '2020-02-15 14:40:31', '2020-02-15 14:40:31'),
(43, '19101301', 'Nenek', 2, '1967-09-19', '2019-10-13', 2, 'Padang', '081275121552', '2020-02-15 14:43:25', '2020-02-15 14:47:36'),
(44, '19101302', 'Ibu Nuraya', 2, '1979-05-13', '2019-10-13', 1, 'Pariaman', '088200110014', '2020-02-15 14:44:35', '2020-02-15 14:47:52'),
(45, '19101401', 'Rahmat', 1, '1978-09-27', '2019-10-14', 1, 'km. 7 Perawang', '088200110011', '2020-02-15 14:46:16', '2020-02-15 14:46:16'),
(46, '19101402', 'Yuda', 1, '1999-07-17', '2019-10-14', 1, 'km. 15', '088200110014', '2020-02-15 14:47:10', '2020-02-15 14:47:10'),
(47, '19101403', 'Faqih', 1, '2007-09-16', '2019-10-14', 1, 'km. 6 Perawang', '088200110011', '2020-02-15 14:49:33', '2020-02-15 14:49:33'),
(48, '20010101', 'Maryam', 2, '1988-07-19', '2020-01-01', 6, 'km. 6 Perawang', '088200110013', '2020-02-15 14:54:07', '2020-02-15 14:54:07'),
(49, '20010102', 'Ulfa', 2, '2016-09-09', '2020-02-15', 2, 'km. 6', '088200110011', '2020-02-15 14:55:41', '2020-02-15 14:55:53'),
(50, '20010201', 'Yanti', 2, '1985-05-04', '2020-01-02', 1, 'km. 7 Perawang', '088200110011', '2020-02-15 14:57:03', '2020-02-15 16:27:39'),
(51, '20010202', 'Yanto', 1, '1988-06-19', '2020-01-02', 1, 'km. 7 Perawang', '088200110014', '2020-02-15 15:00:04', '2020-02-15 15:00:04'),
(52, '20010203', 'bpk. Anwar', 1, '1970-10-10', '2020-01-02', 1, 'km. 5 Perawang', '088200110013', '2020-02-15 15:01:02', '2020-02-15 15:01:02'),
(53, '20010301', 'Melati', 2, '2007-11-06', '2020-01-03', 1, 'km. 6 Perawang', '081275121552', '2020-02-15 15:09:22', '2020-02-15 15:09:22'),
(54, '20010401', 'Ibu Anwar', 2, '1982-07-15', '2020-01-04', 1, 'km. 4 Perawang', '088200110016', '2020-02-15 15:10:43', '2020-02-15 15:10:43'),
(56, '20010403', 'Ibu Yanti', 2, '1985-06-03', '2020-01-04', 1, 'km. 6 Perawang', '088200110011', '2020-02-15 15:13:29', '2020-02-15 15:13:29'),
(57, '20010701', 'Nisa', 2, '2002-09-18', '2020-01-07', 1, 'BTN Cenderawasih, Perawang', '088200110016', '2020-02-15 16:14:15', '2020-02-15 16:14:15'),
(58, '20010702', 'Kak Sri', 2, '1980-07-24', '2020-01-07', 1, 'BTN. Cenderawasih', '088200110014', '2020-02-15 16:16:32', '2020-02-15 16:16:32'),
(59, '20011601', 'ibu Rut', 2, '1978-06-26', '2020-01-16', 1, 'Pekanbaru', '088200110011', '2020-02-15 16:21:31', '2020-02-15 16:21:31'),
(60, '20011701', 'kak Wati', 2, '1980-04-17', '2020-01-17', 1, 'BTN. Cenderawasih', '088200110013', '2020-02-15 16:22:31', '2020-02-15 16:22:31');

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
(8, 'Terapi tulang belakang', '2019-12-11 06:28:09', '2020-02-13 04:22:02'),
(9, 'Terapi listrik', '2019-12-11 06:28:14', '2020-02-13 15:51:25'),
(10, 'Terapi Sinar', '2019-12-11 06:28:20', '2020-02-13 15:52:09'),
(11, 'Terapi Nebulizer', '2019-12-11 06:28:25', '2020-02-13 15:52:38'),
(12, 'Terapi accupressure', '2019-12-11 06:28:58', '2020-02-13 15:53:14'),
(13, 'Terapi Dzikir', '2020-02-13 16:07:26', '2020-02-13 16:07:26'),
(14, 'Terapi Ruqiyah', '2020-02-13 16:07:36', '2020-02-13 16:07:36'),
(15, 'Cek Darah', '2020-02-13 16:07:56', '2020-02-13 16:07:56'),
(16, 'Cek Tensi', '2020-02-13 16:08:17', '2020-02-13 16:08:17'),
(17, 'QMR Analisi', '2020-02-13 16:08:52', '2020-02-13 16:08:52');

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
(4, 'Administrator', 'admin', 'admin@contoh.com', 'admin', '$2y$10$9iZ3kDbNbZUR.4BbxD14kezBlHh.j37xbMrFsCaFE2IJcqgyuKBSu', 'TkkIRxj7mfn8iki3GuoPjuR9JlbuxNbItYzR13U1QlqWGqLwWRShPtozWwJg', '2019-03-27 09:18:02', '2019-08-26 14:21:28'),
(5, 'Suparti', 'umi', 'umi@contoh.com', 'operator', '$2y$10$DRnxJqAT4iYFSYg12fH4fO4tv6xYGddEV4iL2dM4uPoF.PHL/rS1O', 'io3bZvF8CaW233QVMv3SFWNpkSUeHZbWGM6iOCkNVJsdcbrAEpnl72jGFMcE', '2019-08-26 00:00:16', '2019-08-26 15:44:42'),
(6, 'Arif Rusman', 'arif', 'arif@contoh.com', 'operator', '$2y$10$Ocijq6DGVBlbdawCnM.XFu7yIhr99MPeuDn.DICkqQbQpSITihkmG', 'Qp4nUaaPNNByplD5EPIMnvWrL26Nv4Zn4yEaqmCv4Gy7ApOPcqoA1DdnlUuD', '2019-08-26 15:54:31', '2019-08-26 15:54:31');

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
  MODIFY `id_diagnosa` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `genders`
--
ALTER TABLE `genders`
  MODIFY `id_gender` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `medical_records`
--
ALTER TABLE `medical_records`
  MODIFY `id_mr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `medicines`
--
ALTER TABLE `medicines`
  MODIFY `id_obat` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id_pasien` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `treatments`
--
ALTER TABLE `treatments`
  MODIFY `id_tindakan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

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
  ADD CONSTRAINT `medical_records_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `patients` (`id_pasien`) ON UPDATE CASCADE,
  ADD CONSTRAINT `medical_records_ibfk_3` FOREIGN KEY (`id_diagnosa`) REFERENCES `diagnoses` (`id_diagnosa`) ON UPDATE CASCADE;

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
