-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2024 at 08:57 AM
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
-- Database: `aptmt_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `activity_name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `activity_date` date NOT NULL,
  `charge_per_participant` decimal(8,2) NOT NULL,
  `max_participants` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `activity_name`, `description`, `activity_date`, `charge_per_participant`, `max_participants`, `created_at`, `updated_at`) VALUES
(2, 'tennis court', 'gvxuywchiixjwdbhch', '2024-09-20', 500.00, 10, '2024-09-20 00:10:22', '2024-09-20 00:10:22');

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
(1, 2, 'alekhya', '9553897696', 'allushyamk@gmail.com', 'hyd', 'telangana', 'india', '500078', 'Thirumala Residancy', 'Apartment', '1-32/a', '2024-09-16 01:28:27', '2024-09-16 01:28:27'),
(2, 4, 'shyamkumar', '9553897696', 'allushyamk@gmail.com', 'knr', 'ap', 'india', '500010', 'shubham', 'Apartment', '306/b', '2024-09-16 01:32:37', '2024-09-16 01:32:37'),
(3, 5, 'alekhya', '9553897696', 'allushyamk@gmail.com', 'hyd', 'telangana', 'india', '500078', 'my homes', 'Apartment', '23-123/a', '2024-09-16 01:57:43', '2024-09-16 01:57:43');

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
(1, 2, '431313', 0, NULL, NULL),
(2, 4, '414548', 0, NULL, NULL),
(3, 5, '159321', 1, NULL, NULL);

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
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
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
-- Table structure for table `flats`
--

CREATE TABLE `flats` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `block` varchar(255) NOT NULL,
  `floor` int(11) NOT NULL,
  `flat_number` varchar(255) NOT NULL,
  `flat_type` varchar(255) NOT NULL,
  `area` double NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `flats`
--

INSERT INTO `flats` (`id`, `block`, `floor`, `flat_number`, `flat_type`, `area`, `status`, `created_at`, `updated_at`) VALUES
(1, 'A', 1, '101', '2BHK', 1200, 'Avaialable', '2024-09-23 00:13:36', '2024-09-23 00:13:36'),
(2, 'A', 1, '102', '3BHK', 1500, 'Not Available', '2024-09-23 00:13:36', '2024-09-23 00:13:36'),
(3, 'B', 2, '201', '1BHK', 800, 'Avaialable', '2024-09-23 00:13:36', '2024-09-23 00:13:36'),
(4, 'B', 3, '301', '2BHK', 1100, 'Not Available', '2024-09-23 00:13:36', '2024-09-23 00:13:36'),
(5, 'C', 4, '401', '3BHK', 1600, 'Avaialable', '2024-09-23 00:13:36', '2024-09-23 00:13:36');

-- --------------------------------------------------------

--
-- Table structure for table `help_desk_requests`
--

CREATE TABLE `help_desk_requests` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `request_title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `office` varchar(255) DEFAULT NULL,
  `category` varchar(255) NOT NULL,
  `preferred_date` date DEFAULT NULL,
  `urgent` tinyint(1) NOT NULL DEFAULT 0,
  `attachments` varchar(255) DEFAULT NULL,
  `status` enum('OPEN','RESOLVED') NOT NULL DEFAULT 'OPEN',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `help_desk_requests`
--

INSERT INTO `help_desk_requests` (`id`, `request_title`, `description`, `office`, `category`, `preferred_date`, `urgent`, `attachments`, `status`, `created_at`, `updated_at`) VALUES
(5, 'COMMON FACILITY USAGE', 'jfvnoifvui', '098', 'dmcn ehfbc', '2024-09-22', 0, '1726920024-Screenshot 2024-08-30 111838.png', 'OPEN', '2024-09-21 06:30:24', '2024-09-23 00:56:50');

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
-- Table structure for table `maintenance_charges`
--

CREATE TABLE `maintenance_charges` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `amount_per_sqt` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(16, '2024_09_18_092146_create_activities_table', 2),
(17, '2024_09_19_061345_create_activities_table', 3),
(18, '2024_09_19_084557_create_activities_table', 4),
(19, '2024_09_17_081325_create_resident_accounts_table', 5),
(20, '2024_09_18_081239_create_vendors_table', 6),
(21, '2024_09_18_110244_create_staff_table', 6),
(23, '2024_09_20_105418_create_helpdesk_requests_table', 7),
(24, '2024_09_20_105714_create_help_desk_requests_table', 8),
(25, '2024_09_21_052749_create_helpdesk_requests_table', 9),
(26, '2024_09_21_053745_create_help_desk_requests_table', 10),
(27, '2024_09_18_172119_create_expenses_table', 11),
(28, '2024_09_21_070925_create_facilities_table', 11),
(29, '2024_09_22_071604_create_flats_table', 11),
(30, '2024_09_22_080741_create_maintenance_charges_table', 11);

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
  `resident_id` bigint(20) UNSIGNED NOT NULL,
  `block_name` varchar(255) NOT NULL,
  `floor` int(11) NOT NULL,
  `flat_number` varchar(255) NOT NULL,
  `flat_type` varchar(255) NOT NULL,
  `amount_per_sft` decimal(8,2) NOT NULL,
  `square_feet` int(11) NOT NULL,
  `maintenance_fee` decimal(8,2) NOT NULL,
  `amount_type` varchar(255) NOT NULL,
  `date` date NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(1, 7, 5, '308', '3', 'c', 'shyamkumar netha', 'shyamkumar netha', '421456987455', '9874563778', 'shyamkumar@gmail.com', 6, 4, 1300, '2024-09-16 05:24:02', '2024-09-17 02:31:44');

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
('pwrjGyhfMuaq8ot91zpVm3NPhU0W7XbzAs3LV3xf', 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/128.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiUVBQekZ6OEI1ZnM2YVNtS0ZmN0VXU0N4RHlEdzhPOGtVazRuM3dTQiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9wcm9qZWN0cyI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjU7fQ==', 1727074207);

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `position` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'Dhanshu', 'Danshuk@gmail.com', '9874563214', NULL, '$2y$12$QwtRcXgWrKNFfDE1CyF7Fux3JJE47RuuVj89xVIVQ12gCncVBJyGC', NULL, '2024-09-16 01:24:35', '2024-09-16 01:24:35', 0),
(2, 'alekhya', 'alekhya@gmail.com', '9553856985', NULL, NULL, NULL, '2024-09-16 01:28:27', '2024-09-16 01:28:27', 1),
(4, 'shyamkumar', 'shyamk@gmail.com', '8663897696', NULL, NULL, NULL, '2024-09-16 01:32:37', '2024-09-16 01:32:37', 1),
(5, 'alekhya', 'allushyamk@gmail.com', '9553897696', NULL, '$2y$12$pf8LwE6pZwcwqcW2QhF4M.BiSZvj5ycPzPTJBaOgdd/f8APrb/kpG', NULL, '2024-09-16 01:57:43', '2024-09-16 01:58:35', 1),
(7, 'shyamkumar', 'ashyamk@gmail.com', '9874563777', NULL, '$2y$12$X2C2bRBs/VGsdrvncch53.IQwslOd8cfbYPUPK0yonN1RPaUSCvpi', NULL, '2024-09-16 05:24:02', '2024-09-16 05:24:02', 3);

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
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `flats`
--
ALTER TABLE `flats`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `help_desk_requests`
--
ALTER TABLE `help_desk_requests`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `maintenance_charges`
--
ALTER TABLE `maintenance_charges`
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
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `staff_email_unique` (`email`);

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
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `admin_details`
--
ALTER TABLE `admin_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_otps`
--
ALTER TABLE `admin_otps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
-- AUTO_INCREMENT for table `flats`
--
ALTER TABLE `flats`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `help_desk_requests`
--
ALTER TABLE `help_desk_requests`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `maintenance_charges`
--
ALTER TABLE `maintenance_charges`
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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `resident_accounts`
--
ALTER TABLE `resident_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `resident_details`
--
ALTER TABLE `resident_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `visitors`
--
ALTER TABLE `visitors`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `watchman_details`
--
ALTER TABLE `watchman_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

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
