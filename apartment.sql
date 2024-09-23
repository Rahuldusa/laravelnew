-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2024 at 11:53 AM
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
-- Database: `apartment`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_details`
--

CREATE TABLE `admin_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `country` varchar(255) NOT NULL,
  `pincode` varchar(255) NOT NULL,
  `apartment_name` varchar(255) NOT NULL,
  `apartment_purpose` varchar(255) NOT NULL,
  `apartment_address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_details`
--

INSERT INTO `admin_details` (`id`, `user_id`, `name`, `mobile`, `email`, `city`, `state`, `country`, `pincode`, `apartment_name`, `apartment_purpose`, `apartment_address`, `created_at`, `updated_at`) VALUES
(1, 2, 'Soujanya', '9492003252', 'pandralasoujanya@gmail.com', 'Karimnagar', 'Telangana', 'India', '505001', 'Skyline Beverly Park', 'Apartment', '8-7-270/1', '2024-09-14 04:43:39', '2024-09-14 04:43:39'),
(2, 3, 'Hemanth', '9492003542', 'uppalabharadwaj31@gmail.com', 'Karimnagar', 'Telangana', 'India', '505001', 'Thirumala Residency', 'Apartment', '2-4-243', '2024-09-14 04:47:43', '2024-09-14 04:47:43'),
(3, 4, 'Soujanya', '9492003352', 'pandralasoujanya@gmail.com', 'Karimnagar', 'Telangana', 'India', '505001', 'Mahalaxmi Residency', 'Apartment', '5-4-243', '2024-09-14 04:55:17', '2024-09-14 04:55:17'),
(4, 5, 'Soujanya', '9492003259', 'pandralasoujanya@gmail.com', 'Karimnagar', 'Telangana', 'India', '505001', 'abc', 'Apartment', '4-4-243', '2024-09-14 04:57:29', '2024-09-14 04:57:29'),
(5, 7, 'Soujanya', '9492003472', 'pandralasoujanya@gmail.com', 'Karimnagar', 'Telangana', 'India', '505001', 'abc', 'Apartment', '4-4-243', '2024-09-14 04:59:58', '2024-09-14 04:59:58'),
(6, 8, 'Soujanya', '94920031245', 'pandralasoujanya@gmail.com', 'Karimnagar', 'Telangana', 'India', '505001', 'abc', 'Apartment', '4-4-243', '2024-09-14 05:02:54', '2024-09-14 05:02:54'),
(7, 9, 'Hemanth', '253356362325', 'uppalabharadwaj31@gmail.com', 'Karimnagar', 'Telangana', 'India', '505001', 'abc', 'Apartment', '4-4-243', '2024-09-14 05:04:28', '2024-09-14 05:04:28'),
(8, 10, 'Soujanya', '9492003258', 'pandralasoujanya11@gmail.com', 'Karimnagar', 'Telangana', 'India', '505001', 'mnh', 'Apartment', '2-4-246', '2024-09-14 05:05:32', '2024-09-14 05:05:32'),
(9, 13, 'Soujanya', '98256686623', 'pandralasoujanya@gmail.com', 'Karimnagar', 'Telangana', 'India', '505001', 'Skyline Beverly park', 'Apartment', '8-7-270/1', '2024-09-16 01:43:51', '2024-09-16 01:43:51');

-- --------------------------------------------------------

--
-- Table structure for table `admin_otps`
--

CREATE TABLE `admin_otps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `otp` varchar(255) NOT NULL,
  `is_used` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_otps`
--

INSERT INTO `admin_otps` (`id`, `user_id`, `otp`, `is_used`, `created_at`, `updated_at`) VALUES
(1, 2, '496413', 0, NULL, NULL),
(2, 3, '324996', 0, NULL, NULL),
(3, 4, '551848', 0, NULL, NULL),
(4, 5, '667713', 0, NULL, NULL),
(5, 7, '425159', 0, NULL, NULL),
(6, 8, '859260', 0, NULL, NULL),
(7, 9, '581612', 0, NULL, NULL),
(8, 10, '506333', 1, NULL, NULL),
(9, 13, '717424', 1, NULL, NULL);

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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`) VALUES
(2, 'Gardener', '2024-09-19 05:46:58', '2024-09-19 05:46:58');

-- --------------------------------------------------------

--
-- Table structure for table `entry_passes`
--

CREATE TABLE `entry_passes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) NOT NULL,
  `visitor_name` varchar(255) NOT NULL,
  `phone_number` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `from_date` date NOT NULL,
  `to_date` date NOT NULL,
  `pass_description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `expenses`
--

CREATE TABLE `expenses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `paid_date` date NOT NULL,
  `month` varchar(255) NOT NULL,
  `file_path` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `facilities`
--

CREATE TABLE `facilities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `facility_name` varchar(255) NOT NULL,
  `time_slot` time NOT NULL,
  `charge_per_day` decimal(8,2) NOT NULL,
  `cancel_days` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `manager_deatils`
--

CREATE TABLE `manager_deatils` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `qualifiacation` varchar(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `aadhar_no` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_04_05_143013_add_type_to_users_table', 1),
(5, '2024_08_17_095434_create_entry_passes_table', 1),
(6, '2024_08_26_065016_create_visitors_table', 1),
(7, '2024_08_27_063455_create_categories_table', 1),
(8, '2024_08_28_082856_create_admin_details_table', 1),
(9, '2024_08_28_100820_create_resident_details_table', 1),
(10, '2024_08_28_111750_create_watchman_details_table', 1),
(11, '2024_08_28_111804_create_manager_details_table', 1),
(12, '2024_08_30_104458_add_qr_code_filename_to_visitors_table', 1),
(13, '2024_08_30_114106_add_visitor_email_to_visitors_table', 1),
(14, '2024_08_31_105641_add_area_sft_to_resident_details_table', 1),
(15, '2024_09_14_091636_create_admin_otps_table', 1),
(16, '2024_09_17_081325_create_resident_accounts_table', 2),
(17, '2024_09_17_102927_add_resident_id_to_resident_accounts_table', 3),
(19, '2024_09_18_081239_create_vendors_table', 4),
(20, '2024_09_18_110244_create_staff_table', 5),
(21, '2024_09_18_044650_facilities', 6),
(22, '2024_09_18_172119_create_expenses_table', 6),
(24, '2024_09_19_093524_create_expenses_table', 7),
(25, '2024_09_20_121913_create_facilities_table', 8);

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
-- Table structure for table `resident_accounts`
--

CREATE TABLE `resident_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `resident_name` varchar(255) NOT NULL,
  `block_name` varchar(255) NOT NULL,
  `floor` int(11) NOT NULL,
  `flat_number` varchar(255) NOT NULL,
  `flat_type` varchar(255) NOT NULL,
  `amount_per_sft` decimal(8,2) NOT NULL,
  `square_feet` int(11) NOT NULL,
  `maintenance_fee` decimal(8,2) NOT NULL,
  `amount_type` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `status` enum('Paid','Due') NOT NULL DEFAULT 'Due',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `resident_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `resident_details`
--

CREATE TABLE `resident_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `flat_no` varchar(255) NOT NULL,
  `floor_no` varchar(255) NOT NULL,
  `block_no` varchar(255) DEFAULT NULL,
  `flat_holder_name` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `aadhar_no` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `family_members` int(11) DEFAULT NULL,
  `vehicles` int(11) DEFAULT NULL,
  `area_sft` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `resident_details`
--

INSERT INTO `resident_details` (`id`, `user_id`, `admin_id`, `flat_no`, `floor_no`, `block_no`, `flat_holder_name`, `name`, `aadhar_no`, `mobile`, `email`, `family_members`, `vehicles`, `area_sft`, `created_at`, `updated_at`) VALUES
(1, 12, 10, '401', '2', 'B', 'Shubham', 'Shubham', '935767756357', '95864563212', 'shubham@gmail.com', 3, 2, NULL, '2024-09-15 09:04:12', '2024-09-15 09:04:12'),
(2, 14, 13, '205', '2', 'B', 'Sai', 'Sai', '935767756357', '8374470046', 'pandralasaikumar@gmail.com', 6, 2, NULL, '2024-09-17 05:06:31', '2024-09-17 05:06:31');

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
('8xtHgOBm6fXdFB95ARcm5rDrcxKBTWVEsccJwORD', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiSU9FYmN4bnN3WDk5YUx5bnpPRElseVJ4Rjl1S3haODMzNzlSNHBaYiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fX0=', 1727069779),
('Izu3ve0JnSOMndKCi5KS4A3nUgxPW1NNXLa0JnqJ', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiVE9XblIzS3JobHNJS0xmWldxSnVvMlJoMWNUZkNwNWx3MjhPNjZabiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9ob21lIjt9czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MTt9', 1727069734),
('q12P07T522yi0LglTn87mMwFmoVMT7TA9wtVYr8R', 13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidUdzWkFWVW14Skk3QUhGTTBxdjlOdVhzZFl1djRQbktOY2FTczd0bCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi93YXRjaG1lbiI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjEzO30=', 1727072946);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `contact` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `languages` varchar(255) NOT NULL,
  `doj` date NOT NULL,
  `aadhar` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `name`, `category`, `gender`, `contact`, `email`, `languages`, `doj`, `aadhar`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Soujanya', 'Staff', 'Female', '9492003253', 'soujanya@gmail.com', 'telugu', '2024-09-18', '935767756357', 'Active', '2024-09-18 06:06:22', '2024-09-18 06:10:39');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `type`) VALUES
(1, 'Soujanya', 'sspandrala261126@gmail.com', '9492003253', NULL, '$2y$12$J4CgG83E6iunUlHUcy7yOOvFLC7QaR3JdIk0nhzD.2VuylnyGAVeG', NULL, '2024-09-14 04:40:59', '2024-09-14 04:40:59', 0),
(2, 'Soujanya', 'pandralasoujanya123@gmail.com', '9492003252', NULL, NULL, NULL, '2024-09-14 04:43:39', '2024-09-14 04:43:39', 1),
(3, 'Hemanth', 'uppalabharadwaj@gmail.com', '9492003542', NULL, NULL, NULL, '2024-09-14 04:47:43', '2024-09-14 04:47:43', 1),
(4, 'Soujanya', 'soujanya@gmail.com', '9492003352', NULL, NULL, NULL, '2024-09-14 04:55:17', '2024-09-14 04:55:17', 1),
(5, 'Soujanya', 'sspsandrala@gmail.com', '9492003259', NULL, NULL, NULL, '2024-09-14 04:57:29', '2024-09-14 04:57:29', 1),
(7, 'Soujanya', 'pp@gmail.com', '9492003472', NULL, NULL, NULL, '2024-09-14 04:59:58', '2024-09-14 04:59:58', 1),
(8, 'Soujanya', 'ss@gmail.com', '94920031245', NULL, NULL, NULL, '2024-09-14 05:02:54', '2024-09-14 05:02:54', 1),
(9, 'Hemanth', 'uppalabharadwaj31@gmail.com', '253356362325', NULL, NULL, NULL, '2024-09-14 05:04:28', '2024-09-14 05:04:28', 1),
(10, 'Soujanya', 'pandralasoujanya11@gmail.com', '9492003258', NULL, '$2y$12$TTxlBPkGh0.oLhGP/KdN5.tqSdlnaEmG//oRdjWjt0Fhdt5gdy0tC', NULL, '2024-09-14 05:05:32', '2024-09-14 05:06:58', 1),
(12, 'Shubham', 'shubham@gmail.com', '95864563212', NULL, '$2y$12$YRGDKBZPgr0dX9JwiXwRJeZBK1gachaKB1GCkBi2PGB4dnfLWVJGm', NULL, '2024-09-15 09:04:12', '2024-09-15 09:04:12', 3),
(13, 'Soujanya', 'pandralasoujanya@gmail.com', '98256686623', NULL, '$2y$12$ApSqSO8c2vueYjClBs2tTeBauy5xO9o0RCBCIztI2IE7FIWDw5CHa', NULL, '2024-09-16 01:43:51', '2024-09-16 01:47:26', 1),
(14, 'Sai', 'pandralasaikumar@gmail.com', '8374470046', NULL, '$2y$12$WKzRzozbbAXMkcDfIMDxduPZGXhDYNzfugvl9tSGio5nvoc/nsbpW', NULL, '2024-09-17 05:06:31', '2024-09-17 05:06:31', 3),
(15, 'Anand', 'anand@gmail.com', '8585626253', NULL, '$2y$12$dJthqAQ70VBU0tWSAA2CWudNZx4wAeZGZAZGGRmuEn4rSg.PftccW', NULL, '2024-09-20 04:40:09', '2024-09-20 04:40:09', 4);

-- --------------------------------------------------------

--
-- Table structure for table `vendors`
--

CREATE TABLE `vendors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `vendor_id` varchar(255) NOT NULL,
  `vendor_name` varchar(255) NOT NULL,
  `vendor_contact_name` varchar(255) DEFAULT NULL,
  `vendor_phone` varchar(255) DEFAULT NULL,
  `vendor_email` varchar(255) DEFAULT NULL,
  `account_head` varchar(255) DEFAULT NULL,
  `notes` text DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT 1,
  `tds_rate` decimal(5,2) DEFAULT NULL,
  `gstin` varchar(255) DEFAULT NULL,
  `igst` decimal(5,2) DEFAULT NULL,
  `cgst` decimal(5,2) DEFAULT NULL,
  `sgst` decimal(5,2) DEFAULT NULL,
  `pan_no` varchar(255) DEFAULT NULL,
  `tds_section_code` varchar(255) DEFAULT NULL,
  `vendor_legal_type` varchar(255) DEFAULT NULL,
  `payee_name` varchar(255) DEFAULT NULL,
  `billing_address` text DEFAULT NULL,
  `bank_account_no` varchar(255) DEFAULT NULL,
  `bank_name_branch` varchar(255) DEFAULT NULL,
  `bank_ifsc_code` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendors`
--

INSERT INTO `vendors` (`id`, `vendor_id`, `vendor_name`, `vendor_contact_name`, `vendor_phone`, `vendor_email`, `account_head`, `notes`, `is_active`, `tds_rate`, `gstin`, `igst`, `cgst`, `sgst`, `pan_no`, `tds_section_code`, `vendor_legal_type`, `payee_name`, `billing_address`, `bank_account_no`, `bank_name_branch`, `bank_ifsc_code`, `created_at`, `updated_at`) VALUES
(2, '142525', 'Alekhya', 'Alekhya', '9255336623', 'alekhya@gmail.com', NULL, 'hahuah', 1, 25.00, '2', 23.00, 5.00, 6.00, 'jauaja253', '194C', 'Professional', 'njkams', '8-7-270/1, Hanuman nagar, Ganesh Nagar', NULL, 'jajaj', 'ajaau252', '2024-09-18 05:09:45', '2024-09-18 05:09:45');

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `visitor_name` varchar(255) NOT NULL,
  `visitor_number` varchar(255) NOT NULL,
  `visiting_reason` varchar(255) NOT NULL,
  `visiting_date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `flat_number` varchar(255) NOT NULL,
  `resident_name` varchar(255) NOT NULL,
  `qr_code_filename` varchar(255) DEFAULT NULL,
  `checkin_time` varchar(255) DEFAULT NULL,
  `checkout_time` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `visitor_email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `watchman_details`
--

CREATE TABLE `watchman_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `admin_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `qualifiacation` varchar(255) NOT NULL,
  `experience` varchar(255) NOT NULL,
  `aadhar_no` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `watchman_details`
--

INSERT INTO `watchman_details` (`id`, `user_id`, `admin_id`, `name`, `mobile`, `email`, `qualifiacation`, `experience`, `aadhar_no`, `address`, `created_at`, `updated_at`) VALUES
(1, 15, 13, 'Anand', '8585626253', 'anand@gmail.com', 'SSC', '3', '935767756357', '8-7-270/1, Hanuman nagar, Ganesh Nagar', '2024-09-20 04:40:09', '2024-09-20 04:40:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_details`
--
ALTER TABLE `admin_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_details_user_id_foreign` (`user_id`);

--
-- Indexes for table `admin_otps`
--
ALTER TABLE `admin_otps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `admin_otps_user_id_foreign` (`user_id`);

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entry_passes`
--
ALTER TABLE `entry_passes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `entry_passes_user_id_foreign` (`user_id`);

--
-- Indexes for table `expenses`
--
ALTER TABLE `expenses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `facilities`
--
ALTER TABLE `facilities`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `manager_deatils`
--
ALTER TABLE `manager_deatils`
  ADD PRIMARY KEY (`id`),
  ADD KEY `manager_deatils_user_id_foreign` (`user_id`),
  ADD KEY `manager_deatils_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `resident_accounts`
--
ALTER TABLE `resident_accounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resident_accounts_resident_id_foreign` (`resident_id`);

--
-- Indexes for table `resident_details`
--
ALTER TABLE `resident_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resident_details_user_id_foreign` (`user_id`),
  ADD KEY `resident_details_admin_id_foreign` (`admin_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_mobile_unique` (`mobile`);

--
-- Indexes for table `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vendors_vendor_id_unique` (`vendor_id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`),
  ADD KEY `visitors_user_id_foreign` (`user_id`);

--
-- Indexes for table `watchman_details`
--
ALTER TABLE `watchman_details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `watchman_details_user_id_foreign` (`user_id`),
  ADD KEY `watchman_details_admin_id_foreign` (`admin_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_details`
--
ALTER TABLE `admin_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `admin_otps`
--
ALTER TABLE `admin_otps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `entry_passes`
--
ALTER TABLE `entry_passes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `expenses`
--
ALTER TABLE `expenses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `facilities`
--
ALTER TABLE `facilities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `manager_deatils`
--
ALTER TABLE `manager_deatils`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `resident_accounts`
--
ALTER TABLE `resident_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resident_details`
--
ALTER TABLE `resident_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `watchman_details`
--
ALTER TABLE `watchman_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `admin_details`
--
ALTER TABLE `admin_details`
  ADD CONSTRAINT `admin_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `admin_otps`
--
ALTER TABLE `admin_otps`
  ADD CONSTRAINT `admin_otps_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `entry_passes`
--
ALTER TABLE `entry_passes`
  ADD CONSTRAINT `entry_passes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `manager_deatils`
--
ALTER TABLE `manager_deatils`
  ADD CONSTRAINT `manager_deatils_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `manager_deatils_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `resident_accounts`
--
ALTER TABLE `resident_accounts`
  ADD CONSTRAINT `resident_accounts_resident_id_foreign` FOREIGN KEY (`resident_id`) REFERENCES `resident_details` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `resident_details`
--
ALTER TABLE `resident_details`
  ADD CONSTRAINT `resident_details_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `resident_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `visitors`
--
ALTER TABLE `visitors`
  ADD CONSTRAINT `visitors_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `watchman_details`
--
ALTER TABLE `watchman_details`
  ADD CONSTRAINT `watchman_details_admin_id_foreign` FOREIGN KEY (`admin_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `watchman_details_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
