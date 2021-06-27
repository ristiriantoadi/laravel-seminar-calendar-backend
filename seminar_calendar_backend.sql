-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 27, 2021 at 12:59 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `seminar_calendar_backend`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`username`, `password`, `remember_token`, `created_at`, `updated_at`, `id`) VALUES
('admin', '$2y$10$tsMl8BEGRoEYLeYgiyhRl.VD02ju45ReXaA5AM6NuaqX0OeyZpeYe', NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2021_01_01_025229_add_admins_table', 2),
(6, '2021_01_01_075046_add_id_to_admins', 3),
(7, '2021_01_01_114144_add_nim_column_on_users_table', 4),
(10, '2021_01_03_002228_create_seminars_table', 5),
(11, '2021_01_03_010517_add_foreign_key_user_id_on_seminars', 5),
(12, '2021_01_03_013415_add_tanggal_dan_waktu_column_on_seminars_table', 6),
(13, '2021_01_03_060203_create_proposal_seminars_table', 7),
(15, '2021_01_06_021820_drop_all_files_column_in_proposal_seminars', 8),
(18, '2021_01_06_105645_drop_column_pembimbing_tiga_on_table_seminars', 9),
(19, '2021_01_08_005436_change_tanggal_dan_waktu_column_data_type_to_datetime_on_seminars_table', 9);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `proposal_seminars`
--

CREATE TABLE `proposal_seminars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pembimbing_satu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pembimbing_dua` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_proposal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `proposal_seminars`
--

INSERT INTO `proposal_seminars` (`id`, `judul`, `pembimbing_satu`, `pembimbing_dua`, `no_hp`, `status_proposal`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'kkjkj', 'Ramaditia Dwiyansaputra,S.T.,M.Eng', 'Dr.Eng. I Gede Putu Wirarama WW., S.T.,M.T.', '09090', 'diterima', 2, '2021-01-05 20:31:28', '2021-01-07 18:09:47'),
(2, 'lklklk', 'Dr. Eng. Budi Irmawati, S.Kom.,M.T.', 'Ariyan Zubaidi,S.Kom.,M.T.', '12901921', 'diterima', 1, '2021-01-06 02:03:49', '2021-01-07 18:43:17'),
(3, 'aklKAKA', 'Ahmad Zafrullah M.,S.T.,M.Eng', 'Dr.Eng. I Gede Putu Wirarama WW., S.T.,M.T.', 'asas', 'diterima', 3, '2021-01-07 18:57:42', '2021-01-07 18:59:00'),
(4, 'kjkj', 'Ir.Sri Endang Anjarwani, M.Kom', 'Royana Afwani, S.T.,M.T.', '09909', 'menunggu', 6, '2021-01-11 21:09:52', '2021-01-11 21:09:52');

-- --------------------------------------------------------

--
-- Table structure for table `seminars`
--

CREATE TABLE `seminars` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pembimbing_satu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pembimbing_dua` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penguji_satu` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penguji_dua` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penguji_tiga` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `tanggal_dan_waktu` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `seminars`
--

INSERT INTO `seminars` (`id`, `judul`, `pembimbing_satu`, `pembimbing_dua`, `penguji_satu`, `penguji_dua`, `penguji_tiga`, `user_id`, `created_at`, `updated_at`, `tanggal_dan_waktu`) VALUES
(1, 'kkjkj', 'Ramaditia Dwiyansaputra,S.T.,M.Eng', 'Dr.Eng. I Gede Putu Wirarama WW., S.T.,M.T.', 'Ario Yudo Husoda.,S.T.,M.Kom', 'Prof. I Gede Pasek Suta Wijaya S.T.,M.T.,D.Eng', 'Moh. Ali Akbar, S.T.,M.Eng', 2, '2021-01-07 18:09:47', '2021-01-07 18:09:47', '2021-01-19 12:00:00'),
(2, 'lklklk', 'Dr. Eng. Budi Irmawati, S.Kom.,M.T.', 'Ariyan Zubaidi,S.Kom.,M.T.', 'Ir.Sri Endang Anjarwani, M.Kom', 'Andy Hidayat Jatmika,S.T.,M.Kom', 'Ario Yudo Husoda.,S.T.,M.Kom', 1, '2021-01-07 18:43:18', '2021-01-07 18:43:18', '2021-01-20 10:00:00'),
(3, 'aklKAKA', 'Ahmad Zafrullah M.,S.T.,M.Eng', 'Dr.Eng. I Gede Putu Wirarama WW., S.T.,M.T.', 'Ir.Sri Endang Anjarwani, M.Kom', 'Ramaditia Dwiyansaputra,S.T.,M.Eng', 'Dr.Eng. I Gede Putu Wirarama WW., S.T.,M.T.', 3, '2021-01-07 18:59:00', '2021-01-07 18:59:00', '2021-01-11 08:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nim` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `nim`) VALUES
(1, 'Ristirianto Adi', NULL, '$2y$10$tsMl8BEGRoEYLeYgiyhRl.VD02ju45ReXaA5AM6NuaqX0OeyZpeYe', NULL, NULL, NULL, 'F1D016002'),
(2, 'MUH. ABDUL SYAHID ', NULL, '$2y$10$tsMl8BEGRoEYLeYgiyhRl.VD02ju45ReXaA5AM6NuaqX0OeyZpeYe', NULL, NULL, NULL, 'F1D016001'),
(3, 'HABIBURRAHMAN', NULL, '$2y$10$tsMl8BEGRoEYLeYgiyhRl.VD02ju45ReXaA5AM6NuaqX0OeyZpeYe', NULL, NULL, NULL, 'F1D016003'),
(6, 'I GEDE YUDA PRADANA ', NULL, '$2y$10$tsMl8BEGRoEYLeYgiyhRl.VD02ju45ReXaA5AM6NuaqX0OeyZpeYe', NULL, NULL, NULL, 'F1D016004'),
(7, ' RICKY SATRIA ', NULL, '$2y$10$tsMl8BEGRoEYLeYgiyhRl.VD02ju45ReXaA5AM6NuaqX0OeyZpeYe', NULL, NULL, NULL, 'F1D016005');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `admins_username_unique` (`username`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

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
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `proposal_seminars`
--
ALTER TABLE `proposal_seminars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `proposal_seminars_user_id_foreign` (`user_id`);

--
-- Indexes for table `seminars`
--
ALTER TABLE `seminars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `seminars_user_id_foreign` (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `proposal_seminars`
--
ALTER TABLE `proposal_seminars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `seminars`
--
ALTER TABLE `seminars`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `proposal_seminars`
--
ALTER TABLE `proposal_seminars`
  ADD CONSTRAINT `proposal_seminars_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `seminars`
--
ALTER TABLE `seminars`
  ADD CONSTRAINT `seminars_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
