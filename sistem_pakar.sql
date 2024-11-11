-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 11, 2024 at 03:11 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem_pakar`
--

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

CREATE TABLE `akun` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` enum('Pengguna','Admin') NOT NULL,
  `remember_token` varchar(45) DEFAULT NULL,
  `DataDiri_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`id`, `email`, `password`, `role`, `remember_token`, `DataDiri_id`) VALUES
(1, 'agungricky07@gmail.com', '$2y$12$EHIHehmrtAk.lZy.gE3BieL0U3Zdt6LGTOqnzRHBC83xAEo.L.r12', 'Pengguna', NULL, 1),
(2, 'salinasaniatulmabruroh@gmail.com', '$2y$12$UWydl4fJp/c2d245a3vwku1ZHPvHv2sG7rNFiRZMC/NFPm63FaEWK', 'Admin', NULL, 2),
(4, 'selylenovo@gmail.com', '$2y$12$KxdiVO8w9joeIug0xT7CLuPl/Xd1P8uHulG3.2iR52uhkMKjZkXTa', 'Pengguna', NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `datadiri`
--

CREATE TABLE `datadiri` (
  `id` int(11) NOT NULL,
  `Nama` varchar(45) NOT NULL,
  `Umur` int(11) NOT NULL,
  `NoTelp` varchar(13) NOT NULL,
  `Alamat` varchar(100) NOT NULL,
  `JenisKelamin` enum('Laki-laki','Perempuan') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `datadiri`
--

INSERT INTO `datadiri` (`id`, `Nama`, `Umur`, `NoTelp`, `Alamat`, `JenisKelamin`) VALUES
(1, 'Ricky Agung Sumiranto', 24, '081276435512', 'Nganjuk', 'Laki-laki'),
(2, 'Tsalina Tsaniatul Mabruroh', 22, '0856078849724', 'Sumberjo Kandat Kediri', 'Perempuan'),
(4, 'Tsalina', 21, '0856078849724', 'Sumberjo Kandat Kediri', 'Perempuan');

-- --------------------------------------------------------

--
-- Table structure for table `datamakanan`
--

CREATE TABLE `datamakanan` (
  `idmakanan` int(11) NOT NULL,
  `KodeMakanan` char(10) NOT NULL,
  `NamaMakanan` varchar(50) NOT NULL,
  `Kandungan` varchar(50) NOT NULL,
  `Nilai_CF` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `datamakanan`
--

INSERT INTO `datamakanan` (`idmakanan`, `KodeMakanan`, `NamaMakanan`, `Kandungan`, `Nilai_CF`) VALUES
(1, 'M01', 'Jeroan', 'Lemak Jenuh', '0.7'),
(2, 'M02', 'Kacang-kacangan', 'Tinggi Purin', '0.8'),
(3, 'M03', 'Keju', 'Lemak Jenuh', '0.6'),
(4, 'M04', 'Nasi Merah', 'Tinggi Karbohidrat', '0.7'),
(5, 'M05', 'Kopi', 'Kafein', '1.0'),
(6, 'M06', 'Kulit Ayam', 'Lemak Jenuh', '0.8'),
(7, 'M07', 'Gorengan', 'Lemak Jenuh', '0.8'),
(8, 'M08', 'Mie Instan', 'Tinggi Garam', '0.5'),
(9, 'M09', 'Telur Tahu Asam Manis', 'Asam', '0.6'),
(10, 'M10', 'Sosis', 'Lemak Tras tinggi', '0.6'),
(11, 'M11', 'Telur Asin', 'Tinggi Garam', '0.7'),
(12, 'M12', 'Sate Daging', 'Lemak Jenuh', '0.9'),
(13, 'M13', 'Tempe ', 'Tinggi Purin', '0.5'),
(14, 'M14', 'Sayur Bayam', 'Tinggi Purin', '0.7'),
(15, 'M15', 'Acar Mentimun', 'Tinggi Garam', '0.6'),
(16, 'M16', 'Cokelat', 'Kafein', '0.5'),
(17, 'M17', 'Seafod', 'Tinggi Purin', '0.7'),
(18, 'M18', 'Sup Ayam Sayuran', 'Garam', '0.5'),
(19, 'M19', 'Sup Bayam Jagung Manis', 'Gula', '0.7'),
(20, 'M20', 'Sup Bakso Ayam', 'Lemak', '0.4'),
(21, 'M21', 'Sup Kacang Merah', 'Tinggi Purin', '0.8'),
(22, 'M22', 'Tumis Tahu Jagung Muda', 'Gula', '0.5'),
(23, 'M23', 'Ayam Rica-rica', 'Cabai', '0.8'),
(24, 'M24', 'Ayam Ungkep Cabai Hijau', 'Cabai', '0.8'),
(25, 'M25', 'Sate Ayam Lilit', 'Lemak', '0.9'),
(26, 'M26', 'Tumis Daging Paprika', 'Lemak', '0.7'),
(27, 'M27', 'Rolade Ayam', 'Lemak', '0.8'),
(28, 'M28', 'Pelas Ayam Bumbu Kuning', 'Lemak', '0.6'),
(29, 'M29', 'Tahu Kuah Kuning', 'Asam', '0.4'),
(30, 'M30', 'Udang Asam Manis', 'Asam', '0.5'),
(31, 'M31', 'Udang Bakar', 'Kolesterol', '0.6'),
(32, 'M32', 'Nasi Putih', 'Karbohidrat', '0.7'),
(33, 'M33', 'Seblak', 'Cabai', '0.8'),
(34, 'M34', 'Mie Gacoan', 'Cabai', '0.7'),
(35, 'M35', 'Baso Aci', 'Garam', '0.7'),
(36, 'M36', 'Pizza', 'Lemak', '0.7'),
(37, 'M37', 'Sarden', 'Tinggi Purin', '0.6');

-- --------------------------------------------------------

--
-- Table structure for table `datapenyakit`
--

CREATE TABLE `datapenyakit` (
  `idPenyakit` int(11) NOT NULL,
  `KodePenyakit` char(10) NOT NULL,
  `NamaPenyakit` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `datapenyakit`
--

INSERT INTO `datapenyakit` (`idPenyakit`, `KodePenyakit`, `NamaPenyakit`) VALUES
(1, 'P01', 'Asam Lambung'),
(2, 'P02', 'Asam Urat'),
(3, 'P03', 'Diabetes'),
(4, 'P04', 'Hipertensi'),
(5, 'P05', 'Kolesterol');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(13, '0001_01_01_000000_create_users_table', 1),
(14, '0001_01_01_000001_create_cache_table', 1),
(15, '0001_01_01_000002_create_jobs_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nilai_user`
--

CREATE TABLE `nilai_user` (
  `idBobot` int(11) NOT NULL,
  `Keterangan` varchar(45) DEFAULT NULL,
  `Bobot` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `nilai_user`
--

INSERT INTO `nilai_user` (`idBobot`, `Keterangan`, `Bobot`) VALUES
(1, 'Sangat Sering', '1.0'),
(2, 'Sering', '0.8'),
(3, 'Cukup Sering', '0.6'),
(4, 'Kurang Sering', '0.4'),
(5, 'Tidak Sering', '0.2');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `riwayatinput`
--

CREATE TABLE `riwayatinput` (
  `idRiwayat` int(11) NOT NULL,
  `WaktuInput` timestamp NULL DEFAULT current_timestamp(),
  `Diagnosa` varchar(30) DEFAULT NULL,
  `Presentase` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `riwayatinput`
--

INSERT INTO `riwayatinput` (`idRiwayat`, `WaktuInput`, `Diagnosa`, `Presentase`) VALUES
(16, '2024-07-09 11:46:08', 'Kolesterol', '60.73'),
(17, '2024-07-09 14:35:03', 'Kolesterol', '42.18'),
(18, '2024-07-09 14:35:53', 'Asam Urat', '49.07'),
(19, '2024-07-09 14:36:33', 'Diabetes', '50.86'),
(20, '2024-07-09 14:37:34', 'Hipertensi', '40.29'),
(21, '2024-07-09 14:38:00', 'Asam Lambung', '54.62'),
(22, '2024-07-09 14:51:18', 'Asam Lambung', '62.40'),
(23, '2024-07-09 14:58:35', 'Asam Lambung', '51.84'),
(24, '2024-07-09 18:54:39', 'Asam Urat', '61.48'),
(25, '2024-07-10 01:03:57', 'Diabetes', '46.22'),
(26, '2024-07-10 01:06:27', 'Asam Lambung', '62.13'),
(27, '2024-07-10 01:33:13', 'Asam Urat', '45.76'),
(28, '2024-07-10 01:33:36', 'Asam Urat', '56.00'),
(29, '2024-07-14 14:42:07', 'Asam Lambung', '40.00'),
(30, '2024-07-14 15:33:15', 'Asam Urat', '45.60'),
(31, '2024-07-15 22:52:45', 'Hipertensi', '43.12'),
(32, '2024-07-15 22:54:14', 'Hipertensi', '43.12'),
(33, '2024-07-15 23:09:48', 'Hipertensi', '43.12'),
(34, '2024-07-15 23:09:58', 'Hipertensi', '43.12'),
(35, '2024-07-15 23:10:49', 'Hipertensi', '43.12'),
(36, '2024-07-15 23:10:59', 'Hipertensi', '43.12'),
(37, '2024-07-15 23:11:39', 'Hipertensi', '43.12'),
(38, '2024-07-15 23:12:17', 'Hipertensi', '43.12'),
(39, '2024-07-15 23:14:22', 'Hipertensi', '43.12'),
(40, '2024-07-15 23:18:12', 'Hipertensi', '43.12'),
(41, '2024-07-15 23:25:40', 'Hipertensi', '43.12'),
(42, '2024-07-15 23:26:21', 'Hipertensi', '43.12'),
(43, '2024-07-16 06:41:03', 'Asam Urat', '60.73'),
(44, '2024-07-16 06:44:05', 'Asam Urat', '60.73'),
(45, '2024-07-16 06:46:10', 'Asam Urat', '41.04'),
(46, '2024-07-16 06:48:16', 'Asam Urat', '60.73'),
(47, '2024-07-16 06:51:55', 'Diabetes', '70.00'),
(48, '2024-07-16 06:52:20', 'Asam Urat', '60.73'),
(49, '2024-07-16 06:52:39', 'Asam Lambung', '58.24'),
(50, '2024-07-16 06:52:55', 'Asam Lambung', '64.00'),
(51, '2024-07-16 06:53:30', 'Asam Urat', '70.00'),
(52, '2024-07-16 06:53:42', 'Diabetes', '70.00'),
(53, '2024-07-16 06:53:58', 'Hipertensi', '42.00'),
(54, '2024-07-16 06:54:51', 'Kolesterol', '40.00'),
(55, '2024-07-16 06:55:08', 'Asam Urat', '50.86'),
(56, '2024-07-16 06:55:33', 'Asam Urat', '48.00'),
(57, '2024-07-16 07:02:29', 'Kolesterol', '48.00'),
(58, '2024-07-16 07:03:04', 'Asam Urat', '53.76'),
(59, '2024-07-16 07:50:48', 'Asam Urat', '60.73'),
(60, '2024-07-16 08:16:48', 'Asam Lambung', '59.54'),
(61, '2024-07-16 12:53:55', 'Kolesterol', '60.73'),
(62, '2024-07-17 02:33:38', 'Kolesterol', '29.34'),
(63, '2024-07-17 02:35:03', 'Asam Lambung', '38.80'),
(64, '2024-07-17 02:38:46', 'Kolesterol', '53.78'),
(65, '2024-07-17 02:42:24', 'Diabetes', '65.28'),
(66, '2024-07-20 05:50:32', 'Asam Urat', '61.48'),
(67, '2024-07-20 06:34:17', 'Asam Urat', '61.48'),
(68, '2024-07-20 11:24:47', 'Asam Urat', '53.24'),
(69, '2024-07-20 11:26:25', 'Asam Urat', '53.24'),
(70, '2024-07-20 11:45:32', 'Asam Lambung', '20.88'),
(71, '2024-07-20 11:49:23', 'Asam Lambung', '20.88'),
(72, '2024-07-20 11:50:22', 'Asam Lambung', '20.88'),
(73, '2024-07-20 11:53:50', 'Asam Lambung', '20.88'),
(74, '2024-07-20 11:54:01', 'Asam Lambung', '54.39'),
(75, '2024-07-20 11:54:15', 'Asam Lambung', '42.63'),
(76, '2024-07-20 12:50:23', 'Asam Lambung', '42.63'),
(77, '2024-07-20 12:53:18', 'Asam Urat', '33.25'),
(78, '2024-07-20 13:00:14', 'Asam Urat', '66.21'),
(79, '2024-07-20 13:05:02', 'Asam Urat', '66.21'),
(80, '2024-07-20 13:07:23', 'Asam Urat', '66.21'),
(81, '2024-07-21 12:53:50', 'Kolesterol', '28.81'),
(82, '2024-07-21 12:56:39', 'Kolesterol', '28.81'),
(83, '2024-07-21 13:02:01', 'Asam Urat', '51.27'),
(84, '2024-09-17 01:48:54', 'Kolesterol', '37.46'),
(85, '2024-11-11 02:07:26', 'Asam Urat', '57.38');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('T1pYq9DASnfbcSPLsHkgnYrhDHW8kq15IPTGnvKz', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:132.0) Gecko/20100101 Firefox/132.0', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiQW5qVXRTRExwN3E0YTFCV2xLbm1jNnVtTTc3cWVRZU1YQjl1RkhIRyI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDA6Imh0dHA6Ly9sb2NhbGhvc3QvU2lzdGVtLVBha2FyL2tvbnN1bHRhc2kiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX1zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTI6Im5hbWFfbWFrYW5hbiI7YTo0OntpOjA7czo2OiJKZXJvYW4iO2k6MTtzOjEwOiJOYXNpIE1lcmFoIjtpOjI7czoxMDoiVGVsdXIgQXNpbiI7aTozO3M6MTY6IlN1cCBLYWNhbmcgTWVyYWgiO319', 1731290846);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`),
  ADD UNIQUE KEY `email_UNIQUE` (`email`),
  ADD KEY `fk_Akun_DataDiri_idx` (`DataDiri_id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `datadiri`
--
ALTER TABLE `datadiri`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_UNIQUE` (`id`);

--
-- Indexes for table `datamakanan`
--
ALTER TABLE `datamakanan`
  ADD PRIMARY KEY (`idmakanan`),
  ADD UNIQUE KEY `idmakanan_UNIQUE` (`idmakanan`);

--
-- Indexes for table `datapenyakit`
--
ALTER TABLE `datapenyakit`
  ADD PRIMARY KEY (`idPenyakit`),
  ADD UNIQUE KEY `idPenyakit_UNIQUE` (`idPenyakit`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nilai_user`
--
ALTER TABLE `nilai_user`
  ADD PRIMARY KEY (`idBobot`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `riwayatinput`
--
ALTER TABLE `riwayatinput`
  ADD PRIMARY KEY (`idRiwayat`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `akun`
--
ALTER TABLE `akun`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `datadiri`
--
ALTER TABLE `datadiri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `datamakanan`
--
ALTER TABLE `datamakanan`
  MODIFY `idmakanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `datapenyakit`
--
ALTER TABLE `datapenyakit`
  MODIFY `idPenyakit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `riwayatinput`
--
ALTER TABLE `riwayatinput`
  MODIFY `idRiwayat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `akun`
--
ALTER TABLE `akun`
  ADD CONSTRAINT `fk_Akun_DataDiri` FOREIGN KEY (`DataDiri_id`) REFERENCES `datadiri` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
