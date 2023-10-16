-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2023 at 09:19 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `telkom`
--

-- --------------------------------------------------------

--
-- Table structure for table `areas`
--

CREATE TABLE `areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `areas`
--

INSERT INTO `areas` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'area 1', '2023-10-15 23:05:13', '2023-10-15 23:05:13'),
(2, 'area 2', '2023-10-15 23:05:13', '2023-10-15 23:05:13'),
(3, 'area 3', '2023-10-15 23:05:13', '2023-10-15 23:05:13'),
(4, 'area 4', '2023-10-15 23:05:13', '2023-10-15 23:05:13');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2023_10_15_150110_create_vendors_table', 1),
(4, '2023_10_15_150116_create_areas_table', 1),
(5, '2023_10_15_150141_create_tasks_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tasks`
--

CREATE TABLE `tasks` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `area_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tasks`
--

INSERT INTO `tasks` (`id`, `area_id`, `vendor_id`, `jumlah`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, '2023-10-15 23:05:13', '2023-10-15 23:05:13'),
(2, 2, 1, 2, '2023-10-15 23:05:13', '2023-10-15 23:05:13'),
(3, 3, 1, 2, '2023-10-15 23:05:13', '2023-10-15 23:05:13'),
(4, 4, 1, 2, '2023-10-15 23:05:13', '2023-10-15 23:05:13'),
(5, 5, 1, 2, '2023-10-15 23:05:13', '2023-10-15 23:05:13'),
(6, 1, 2, 4, '2023-10-15 23:05:13', '2023-10-15 23:05:13'),
(7, 2, 2, 4, '2023-10-15 23:05:13', '2023-10-15 23:05:13'),
(8, 3, 2, 4, '2023-10-15 23:05:13', '2023-10-15 23:05:13'),
(9, 4, 2, 4, '2023-10-15 23:05:13', '2023-10-15 23:05:13'),
(10, 5, 2, 4, '2023-10-15 23:05:13', '2023-10-15 23:05:13'),
(11, 1, 3, 6, '2023-10-15 23:05:13', '2023-10-15 23:05:13'),
(12, 2, 3, 6, '2023-10-15 23:05:13', '2023-10-15 23:05:13'),
(13, 3, 3, 6, '2023-10-15 23:05:13', '2023-10-15 23:05:13'),
(14, 4, 3, 6, '2023-10-15 23:05:13', '2023-10-15 23:05:13'),
(15, 5, 3, 6, '2023-10-15 23:05:13', '2023-10-15 23:05:13'),
(16, 1, 4, 8, '2023-10-15 23:05:13', '2023-10-15 23:05:13'),
(17, 2, 4, 8, '2023-10-15 23:05:13', '2023-10-15 23:05:13'),
(18, 3, 4, 8, '2023-10-15 23:05:13', '2023-10-15 23:05:13'),
(19, 4, 4, 8, '2023-10-15 23:05:13', '2023-10-15 23:05:13'),
(20, 5, 4, 8, '2023-10-15 23:05:13', '2023-10-15 23:05:13'),
(21, 1, 5, 10, '2023-10-15 23:05:13', '2023-10-15 23:05:13'),
(22, 2, 5, 10, '2023-10-15 23:05:13', '2023-10-15 23:05:13'),
(23, 3, 5, 10, '2023-10-15 23:05:13', '2023-10-15 23:05:13'),
(24, 4, 5, 10, '2023-10-15 23:05:13', '2023-10-15 23:05:13'),
(25, 5, 5, 10, '2023-10-15 23:05:13', '2023-10-15 23:05:13');

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Raleigh Botsford', 'bruen.mayra@example.com', '2023-10-15 23:05:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'Rtv4JNCYNA', '2023-10-15 23:05:13', '2023-10-15 23:05:13'),
(2, 'Steve Romaguera', 'vgrady@example.net', '2023-10-15 23:05:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'YiLR68MPc9', '2023-10-15 23:05:13', '2023-10-15 23:05:13'),
(3, 'Hilbert Larkin MD', 'wehner.alda@example.net', '2023-10-15 23:05:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'KxbNzXrbSo', '2023-10-15 23:05:13', '2023-10-15 23:05:13'),
(4, 'Americo Torp', 'keanu.wunsch@example.com', '2023-10-15 23:05:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'EHfTwYqRRi', '2023-10-15 23:05:13', '2023-10-15 23:05:13'),
(5, 'Emery Lesch', 'guillermo12@example.org', '2023-10-15 23:05:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'HHudSJrWar', '2023-10-15 23:05:13', '2023-10-15 23:05:13'),
(6, 'Torrance Stoltenberg', 'daniela13@example.org', '2023-10-15 23:05:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'GEhbkx3iAZ', '2023-10-15 23:05:13', '2023-10-15 23:05:13'),
(7, 'Prof. Daniela Glover', 'dwilliamson@example.org', '2023-10-15 23:05:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'cx7jzLCMor', '2023-10-15 23:05:13', '2023-10-15 23:05:13'),
(8, 'Lauren Fisher', 'weissnat.jeromy@example.org', '2023-10-15 23:05:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FaWorXCKl3', '2023-10-15 23:05:13', '2023-10-15 23:05:13'),
(9, 'Keara McLaughlin Jr.', 'eliezer89@example.org', '2023-10-15 23:05:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'FZjcgCzAfk', '2023-10-15 23:05:13', '2023-10-15 23:05:13'),
(10, 'Prof. Marcelo Bogisich Sr.', 'grant97@example.org', '2023-10-15 23:05:13', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'AIO8rbs0L2', '2023-10-15 23:05:13', '2023-10-15 23:05:13');

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'O2', '2023-10-15 23:05:13', '2023-10-15 23:05:13'),
(2, 'NE', '2023-10-15 23:05:13', '2023-10-15 23:05:13'),
(3, 'BO', '2023-10-15 23:05:13', '2023-10-15 23:05:13'),
(4, 'BA', '2023-10-15 23:05:13', '2023-10-15 23:05:13'),
(5, 'AI', '2023-10-15 23:05:13', '2023-10-15 23:05:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `areas`
--
ALTER TABLE `areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `tasks`
--
ALTER TABLE `tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `areas`
--
ALTER TABLE `areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tasks`
--
ALTER TABLE `tasks`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
