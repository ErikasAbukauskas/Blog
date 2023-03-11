-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Oct 10, 2022 at 05:06 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `commentsystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Keliones', '2022-10-10 11:18:32', '2022-10-10 11:18:32'),
(2, 'Sportas', '2022-10-10 11:19:54', '2022-10-10 11:19:54'),
(3, 'Technologijos', '2022-10-10 11:20:32', '2022-10-10 11:20:32'),
(4, 'Naujienos', '2022-10-10 12:44:38', '2022-10-10 12:44:38');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

DROP TABLE IF EXISTS `comments`;
CREATE TABLE IF NOT EXISTS `comments` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_post_id_foreign` (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `email`, `text`, `created_at`, `updated_at`) VALUES
(1, 9, 'user@gmail.com', 'Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment', '2022-10-10 11:28:14', '2022-10-10 11:28:14'),
(2, 9, 'user@gmail.com', 'Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment Comment', '2022-10-10 11:28:28', '2022-10-10 11:28:28'),
(3, 9, 'user@gmail.com', 'Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1 Comment 1', '2022-10-10 11:44:43', '2022-10-10 11:44:43'),
(4, 3, 'user@gmail.com', 'Comment Comment Comment Comment Comment Comment Comment Comment Comment', '2022-10-10 12:24:16', '2022-10-10 12:24:16'),
(5, 3, 'user@gmail.com', 'Comment Comment Comment Comment Comment Comment Comment Comment Comment', '2022-10-10 12:24:23', '2022-10-10 12:24:23');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_13_144759_create_categories_table', 1),
(6, '2022_09_13_151921_create_posts_table', 1),
(7, '2022_09_13_195435_create_comments_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
CREATE TABLE IF NOT EXISTS `posts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_category_id_foreign` (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `category_id`, `title`, `text`, `created_at`, `updated_at`) VALUES
(1, 1, 'Keliones', 'Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones Keliones', '2022-10-10 11:19:06', '2022-10-10 11:19:18'),
(2, 2, 'Sportas', 'Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas Sportas', '2022-10-10 11:20:14', '2022-10-10 11:20:14'),
(3, 3, 'Technologijos', 'Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos Technologijos', '2022-10-10 11:20:48', '2022-10-10 12:24:00'),
(4, 1, 'Keliones 1', 'Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1 Keliones 1', '2022-10-10 11:21:38', '2022-10-10 11:21:38'),
(5, 1, 'Keliones 2', 'Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2 Keliones 2', '2022-10-10 11:22:07', '2022-10-10 11:22:07'),
(6, 2, 'Sportas 1', 'Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1 Sportas 1', '2022-10-10 11:22:33', '2022-10-10 11:22:33'),
(7, 2, 'Sportas 2', 'Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2 Sportas 2', '2022-10-10 11:22:50', '2022-10-10 11:22:50'),
(8, 3, 'Technologijos 1', 'Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1 Technologijos 1', '2022-10-10 11:23:07', '2022-10-10 11:23:07'),
(9, 3, 'Technologijos 2', 'Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2 Technologijos 2', '2022-10-10 11:23:25', '2022-10-10 11:43:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comments`
--
ALTER TABLE `comments`
  ADD CONSTRAINT `comments_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
