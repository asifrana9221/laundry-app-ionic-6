-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 09, 2023 at 08:20 PM
-- Server version: 8.0.33-cll-lve
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `washzamb_laundry-staging`
--

-- --------------------------------------------------------

--
-- Table structure for table `address`
--

CREATE TABLE `address` (
  `id` bigint UNSIGNED NOT NULL,
  `uid` int NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `house` text COLLATE utf8mb4_unicode_ci,
  `landmark` text COLLATE utf8mb4_unicode_ci,
  `pincode` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lng` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_field` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `address`
--

INSERT INTO `address` (`id`, `uid`, `title`, `address`, `house`, `landmark`, `pincode`, `lat`, `lng`, `extra_field`, `status`, `created_at`, `updated_at`) VALUES
(1, 9, 'work', 'Plot 5 Lubambe Road, Northmead Lusaka ZM, 10101, Zambia', 'Plot 5 Lubambe Road, Northmead Lusaka ZM, 10101, Zambia', 'Plot 5 Lubambe Road, Northmead Lusaka ZM, 10101, Zambia', '54000', '-15.4005759', '28.2911941', NULL, 1, '2023-07-06 07:10:43', '2023-07-06 07:10:43'),
(2, 11, 'work', 'Plot 5 Lubambe Road, Northmead Lusaka ZM, 10101, Zambia', '434', '343', '3423', '-15.4005759', '28.2911941', NULL, 1, '2023-07-06 15:12:07', '2023-07-06 15:12:07'),
(3, 6, 'home', 'Woodlands', 'House Number 12', 'Lusaka', '10101', '-15.3875259', '28.3228165', NULL, 1, '2023-07-06 20:39:17', '2023-07-06 20:39:17');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `extra_field` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `descriptions` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '0',
  `extra_field` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `cover`, `descriptions`, `status`, `extra_field`, `created_at`, `updated_at`) VALUES
(2, 'Dry Cleaning', 'siXdtYJMs7Umgnro59rJcsHRjNd5Nwl3FFmaktbU.png', 'We need 24hrs to dry clean your clothes.', 1, NULL, '2023-06-21 21:42:36', '2023-07-08 08:43:03'),
(3, 'Press/Dry Only/Wash/Steam & Fold', 'bCeffXGjpGjN2Tds3fPxckP0HkkcbfB3lzPfNmco.png', 'We Press/Dry Only/Wash/Steam & Fold your clothes in a minimum of 24hrs.', 1, NULL, '2023-06-21 21:45:56', '2023-07-08 12:24:25'),
(4, 'Express', '9pt6lbSmmEhRWQOKt3vW5usAkCeBL7o2QhhAigNC.jpg', 'We wash & steam your clothes in a minimum of 4hrs.', 1, NULL, '2023-06-21 21:47:12', '2023-07-09 14:29:37'),
(5, 'General Tailoring Alteration', 'pegS6E4K9TJO144CTTdpJFn48zjMWPsecIV76g7j.jpg', 'We offer general tailoring alteration in a minimum of 24hrs.', 1, NULL, '2023-06-21 21:48:49', '2023-07-08 11:03:16'),
(10, 'General Laundry', 'TSe32mlVXPRM9gtqIpSqSBvZvBNbjAgLq6XBPexl.png', 'General Laundry', 1, NULL, '2023-07-07 15:48:32', '2023-07-07 16:26:28');

-- --------------------------------------------------------

--
-- Table structure for table `chat_rooms`
--

CREATE TABLE `chat_rooms` (
  `id` bigint UNSIGNED NOT NULL,
  `sender_id` int NOT NULL,
  `receiver_id` int NOT NULL,
  `last_message` text COLLATE utf8mb4_unicode_ci,
  `last_message_type` tinyint DEFAULT NULL,
  `extra_fields` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `chat_rooms`
--

INSERT INTO `chat_rooms` (`id`, `sender_id`, `receiver_id`, `last_message`, `last_message_type`, `extra_fields`, `status`, `created_at`, `updated_at`) VALUES
(1, 8, 6, NULL, NULL, NULL, 1, '2023-06-23 16:17:38', '2023-06-23 16:17:38'),
(2, 6, 7, NULL, NULL, NULL, 1, '2023-06-27 06:07:34', '2023-06-27 06:07:34'),
(3, 8, 9, NULL, NULL, NULL, 1, '2023-06-28 11:38:19', '2023-06-28 11:38:19'),
(4, 8, 7, NULL, NULL, NULL, 1, '2023-06-28 12:49:23', '2023-06-28 12:49:23');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `extra_field` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `name`, `cover`, `lat`, `lng`, `status`, `extra_field`, `created_at`, `updated_at`) VALUES
(2, 'Lusaka Province', '56zbDnW5qKjCOTgvwevLTXnPynyd0o6fONMaFpY7.jpg', '-15.403534746683455', '28.291911752485287', 1, NULL, '2023-06-23 12:17:37', '2023-07-06 17:25:31');

-- --------------------------------------------------------

--
-- Table structure for table `commission`
--

CREATE TABLE `commission` (
  `id` bigint UNSIGNED NOT NULL,
  `uid` int NOT NULL,
  `rate` double NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `extra_field` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `commission`
--

INSERT INTO `commission` (`id`, `uid`, `rate`, `status`, `extra_field`, `created_at`, `updated_at`) VALUES
(1, 3, 1, 1, NULL, '2023-06-20 20:22:36', '2023-06-21 22:18:18'),
(2, 8, 0, 1, NULL, '2023-06-23 08:03:08', '2023-07-08 21:20:12'),
(3, 12, 1, 1, NULL, '2023-06-28 04:28:33', '2023-06-28 04:28:33');

-- --------------------------------------------------------

--
-- Table structure for table `complaints`
--

CREATE TABLE `complaints` (
  `id` bigint UNSIGNED NOT NULL,
  `uid` int NOT NULL,
  `order_id` int NOT NULL,
  `issue_with` tinyint NOT NULL,
  `driver_id` int DEFAULT NULL,
  `store_id` int DEFAULT NULL,
  `service_id` int DEFAULT NULL,
  `reason_id` int DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `short_message` text COLLATE utf8mb4_unicode_ci,
  `images` text COLLATE utf8mb4_unicode_ci,
  `extra_field` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `complaints`
--

INSERT INTO `complaints` (`id`, `uid`, `order_id`, `issue_with`, `driver_id`, `store_id`, `service_id`, `reason_id`, `title`, `short_message`, `images`, `extra_field`, `status`, `created_at`, `updated_at`) VALUES
(1, 6, 1, 1, NULL, 8, NULL, 7, 'Stains', 'Found stains on\njeans', '[\"mjafwpBKRFke1hy8cx8H7UDakm8wxgJwWkyVObaH.jpg\"]', NULL, 0, '2023-06-27 06:05:54', '2023-06-27 06:05:54'),
(2, 6, 1, 1, NULL, 8, NULL, 1, 'Order delayed', 'Order had stains on it', '[\"gMJT1lwK8nDcrvh3QwrcLaca0FIgpiyxj6tF6IfK.jpg\"]', NULL, 0, '2023-06-28 12:42:24', '2023-06-28 12:42:24');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `extra_field` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `message`, `status`, `extra_field`, `created_at`, `updated_at`) VALUES
(1, 'Mukubwe', 'muksgo@gmail.com', 'Test', 1, NULL, '2023-06-27 06:12:58', '2023-06-27 06:13:33'),
(2, 'Testing', 'mukubwenjongo@gmail.com', 'Testing everything', 1, NULL, '2023-07-06 17:51:12', '2023-07-06 17:51:53');

-- --------------------------------------------------------

--
-- Table structure for table `conversions`
--

CREATE TABLE `conversions` (
  `id` bigint UNSIGNED NOT NULL,
  `sender_id` int NOT NULL,
  `room_id` int NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message_type` tinyint NOT NULL,
  `reported` tinyint DEFAULT NULL,
  `extra_fields` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `conversions`
--

INSERT INTO `conversions` (`id`, `sender_id`, `room_id`, `message`, `message_type`, `reported`, `extra_fields`, `status`, `created_at`, `updated_at`) VALUES
(1, 8, 1, 'Hello is my order completed?', 0, 0, NULL, 1, '2023-06-23 16:18:10', '2023-06-23 16:18:10'),
(2, 6, 1, 'Ok', 0, 0, NULL, 1, '2023-06-23 16:21:44', '2023-06-23 16:21:44'),
(3, 6, 1, 'Hello', 0, 0, NULL, 1, '2023-06-27 05:26:59', '2023-06-27 05:26:59'),
(4, 6, 2, 'Stains on order', 0, 0, NULL, 1, '2023-06-27 06:07:46', '2023-06-27 06:07:46'),
(5, 6, 1, 'Order', 0, 0, NULL, 1, '2023-06-28 11:17:29', '2023-06-28 11:17:29'),
(6, 8, 3, 'Order delayed', 0, 0, NULL, 1, '2023-06-28 11:38:37', '2023-06-28 11:38:37'),
(7, 8, 1, 'Order delayed', 0, 0, NULL, 1, '2023-06-28 11:39:07', '2023-06-28 11:39:07'),
(8, 8, 3, 'Almost done', 0, 0, NULL, 1, '2023-06-28 12:16:07', '2023-06-28 12:16:07'),
(9, 8, 4, 'Order not in', 0, 0, NULL, 1, '2023-06-28 12:49:42', '2023-06-28 12:49:42'),
(10, 8, 1, 'Your coat has stains', 0, 0, NULL, 1, '2023-06-28 12:52:08', '2023-06-28 12:52:08');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `favourites`
--

CREATE TABLE `favourites` (
  `id` bigint UNSIGNED NOT NULL,
  `uid` int NOT NULL,
  `store_uid` int NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `extra_field` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2018_11_06_222923_create_transactions_table', 1),
(4, '2018_11_07_192923_create_transfers_table', 1),
(5, '2018_11_15_124230_create_wallets_table', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(8, '2021_11_02_202021_update_wallets_uuid_table', 1),
(9, '2023_04_07_042444_create_address_table', 1),
(10, '2023_04_07_042509_create_blogs_table', 1),
(11, '2023_04_07_042535_create_categories_table', 1),
(12, '2023_04_07_042559_create_chat_rooms_table', 1),
(13, '2023_04_07_042623_create_cities_table', 1),
(14, '2023_04_07_042712_create_commission_table', 1),
(15, '2023_04_07_042735_create_complaints_table', 1),
(16, '2023_04_07_042757_create_contacts_table', 1),
(17, '2023_04_07_042820_create_conversions_table', 1),
(18, '2023_04_07_042913_create_favourites_table', 1),
(19, '2023_04_07_043005_create_offers_table', 1),
(20, '2023_04_07_043055_create_orders_table', 1),
(21, '2023_04_07_043117_create_otp_table', 1),
(22, '2023_04_07_043136_create_pages_table', 1),
(23, '2023_04_07_043159_create_payments_table', 1),
(24, '2023_04_07_043234_create_rating_table', 1),
(25, '2023_04_07_043254_create_redeem_table', 1),
(26, '2023_04_07_043523_create_referral_table', 1),
(27, '2023_04_07_043550_create_referralcodes_table', 1),
(28, '2023_04_07_043612_create_register_request_table', 1),
(29, '2023_04_07_043637_create_services_table', 1),
(30, '2023_04_07_043701_create_settings_table', 1),
(31, '2023_04_07_043724_create_stores_table', 1),
(32, '2023_04_07_043746_create_sub_categories_table', 1),
(33, '2023_04_07_043808_create_timeslots_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `offers`
--

CREATE TABLE `offers` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_descriptions` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` tinyint NOT NULL,
  `discount` double(10,2) NOT NULL,
  `upto` double(10,2) NOT NULL,
  `expire` date NOT NULL,
  `freelancer_ids` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `max_usage` int NOT NULL,
  `min_cart_value` double(10,2) NOT NULL,
  `validations` tinyint NOT NULL,
  `user_limit_validation` int DEFAULT NULL,
  `extra_field` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint UNSIGNED NOT NULL,
  `uid` int NOT NULL,
  `store_id` int NOT NULL,
  `driver_id` int NOT NULL DEFAULT '0',
  `self_pickup` tinyint NOT NULL DEFAULT '0',
  `order_to` int NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `items` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_id` int DEFAULT NULL,
  `coupon` text COLLATE utf8mb4_unicode_ci,
  `discount` double(10,2) NOT NULL,
  `distance_cost` double(10,2) NOT NULL,
  `total` double(10,2) NOT NULL,
  `serviceTax` double(10,2) NOT NULL,
  `grand_total` double(10,2) NOT NULL,
  `pay_method` int NOT NULL,
  `paid` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pickup_date` date NOT NULL,
  `pickup_slot` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `delivery_date` date NOT NULL,
  `delivery_slot` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `wallet_used` tinyint NOT NULL DEFAULT '0',
  `wallet_price` double(10,2) DEFAULT NULL,
  `notes` text COLLATE utf8mb4_unicode_ci,
  `extra_field` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `uid`, `store_id`, `driver_id`, `self_pickup`, `order_to`, `address`, `items`, `coupon_id`, `coupon`, `discount`, `distance_cost`, `total`, `serviceTax`, `grand_total`, `pay_method`, `paid`, `pickup_date`, `pickup_slot`, `delivery_date`, `delivery_slot`, `wallet_used`, `wallet_price`, `notes`, `extra_field`, `status`, `created_at`, `updated_at`) VALUES
(1, 6, 8, 0, 1, 0, 'NA', '[{\"id\":\"22\",\"store_id\":\"8\",\"cate_id\":\"2\",\"sub_cate\":\"15\",\"name\":\"Ladies Tops\",\"cover\":\"JBmOHZSKyp8UyXqC9AQbZEI32dpaaBUwD24jOm9o.jpg\",\"original_price\":\"25.00\",\"sell_price\":\"0.00\",\"discount\":\"0.00\",\"variations\":\"NA\",\"status\":\"1\",\"extra_field\":null,\"created_at\":\"2023-06-23 11:29:03\",\"updated_at\":\"2023-06-23 11:29:03\",\"cate_name\":\"Dry Cleaning\",\"sub_cate_name\":\"Womens\",\"quantity\":1},{\"id\":\"24\",\"store_id\":\"8\",\"cate_id\":\"2\",\"sub_cate\":\"15\",\"name\":\"Dress\",\"cover\":\"CKlh3u1U0S76YDDV7mNwzlurPwGqSRMvk7Gob1Ug.jpg\",\"original_price\":\"30.00\",\"sell_price\":\"0.00\",\"discount\":\"0.00\",\"variations\":\"NA\",\"status\":\"1\",\"extra_field\":null,\"created_at\":\"2023-06-23 11:30:46\",\"updated_at\":\"2023-06-23 11:30:46\",\"cate_name\":\"Dry Cleaning\",\"sub_cate_name\":\"Womens\",\"quantity\":1},{\"id\":\"26\",\"store_id\":\"8\",\"cate_id\":\"2\",\"sub_cate\":\"15\",\"name\":\"Ladies Pants\",\"cover\":\"aUj0n4AzAPnz0JMVYLcdYzTUqtbxYZZePdAPEtMF.jpg\",\"original_price\":\"25.00\",\"sell_price\":\"0.00\",\"discount\":\"0.00\",\"variations\":\"NA\",\"status\":\"1\",\"extra_field\":null,\"created_at\":\"2023-06-23 11:38:42\",\"updated_at\":\"2023-06-23 11:38:42\",\"cate_name\":\"Dry Cleaning\",\"sub_cate_name\":\"Womens\",\"quantity\":1}]', 0, 'NA', 0.00, 0.00, 80.00, 5.00, 85.00, 1, 'cod', '2023-06-24', '09:00 AM - 10:00 AM', '2023-06-24', '12:00 PM - 01:00 PM', 0, 0.00, NULL, NULL, 7, '2023-06-23 14:45:30', '2023-07-08 00:08:08'),
(2, 9, 8, 0, 1, 0, 'NA', '[{\"id\":\"21\",\"store_id\":\"8\",\"cate_id\":\"2\",\"sub_cate\":\"14\",\"name\":\"Punjabi\",\"cover\":\"qgZJUuHrpE6x0JkqupLYlcx24UH51hBYLyCvf8n5.jpg\",\"original_price\":\"35.00\",\"sell_price\":\"0.00\",\"discount\":\"0.00\",\"variations\":\"NA\",\"status\":\"1\",\"extra_field\":null,\"created_at\":\"2023-06-23 11:27:46\",\"updated_at\":\"2023-06-23 11:27:46\",\"cate_name\":\"Dry Cleaning\",\"sub_cate_name\":\"Mens\",\"quantity\":1},{\"id\":\"27\",\"store_id\":\"8\",\"cate_id\":\"2\",\"sub_cate\":\"14\",\"name\":\"Jeans\",\"cover\":\"xhr96s1vXBBXbjTjvs5gVgmp1VC6Tks5CiBRA6ln.jpg\",\"original_price\":\"35.00\",\"sell_price\":\"0.00\",\"discount\":\"0.00\",\"variations\":\"NA\",\"status\":\"1\",\"extra_field\":null,\"created_at\":\"2023-06-23 11:39:43\",\"updated_at\":\"2023-06-23 11:39:43\",\"cate_name\":\"Dry Cleaning\",\"sub_cate_name\":\"Mens\",\"quantity\":1}]', 0, 'NA', 0.00, 0.00, 70.00, 5.00, 75.00, 1, 'cod', '2023-06-27', '09:00 AM - 10:00 AM', '2023-06-28', '11:00 AM - 12:00 PM', 0, 0.00, NULL, NULL, 4, '2023-06-27 03:58:31', '2023-06-28 11:56:17'),
(3, 9, 8, 0, 0, 1, '{\"id\":1,\"uid\":\"9\",\"title\":\"work\",\"address\":\"Plot 5 Lubambe Road, Northmead Lusaka ZM, 10101, Zambia\",\"house\":\"Plot 5 Lubambe Road, Northmead Lusaka ZM, 10101, Zambia\",\"landmark\":\"Plot 5 Lubambe Road, Northmead Lusaka ZM, 10101, Zambia\",\"pincode\":\"54000\",\"lat\":\"-15.4005759\",\"lng\":\"28.2911941\",\"extra_field\":null,\"status\":\"1\"}', '[{\"id\":\"21\",\"store_id\":\"8\",\"cate_id\":\"2\",\"sub_cate\":\"14\",\"name\":\"Punjabi\",\"cover\":\"qgZJUuHrpE6x0JkqupLYlcx24UH51hBYLyCvf8n5.jpg\",\"original_price\":\"40.00\",\"sell_price\":\"40.00\",\"discount\":\"0.00\",\"variations\":\"NA\",\"status\":\"1\",\"extra_field\":null,\"created_at\":\"2023-06-23 11:27:46\",\"updated_at\":\"2023-06-28 13:05:40\",\"cate_name\":\"Dry Cleaning\",\"sub_cate_name\":\"Mens\",\"quantity\":1}]', 0, 'NA', 0.00, 2.00, 40.00, 5.00, 47.00, 9, '{\"key\":null}', '2023-07-07', '09:00 AM - 10:00 AM', '2023-07-07', '12:00 PM - 01:00 PM', 0, 0.00, NULL, NULL, 0, '2023-07-06 19:34:32', '2023-07-06 19:34:32'),
(4, 6, 8, 0, 0, 1, '{\"id\":3,\"uid\":\"6\",\"title\":\"home\",\"address\":\"Woodlands\",\"house\":\"House Number 12\",\"landmark\":\"Lusaka\",\"pincode\":\"10101\",\"lat\":\"-15.3875259\",\"lng\":\"28.3228165\",\"extra_field\":null,\"status\":\"1\"}', '[{\"id\":\"21\",\"store_id\":\"8\",\"cate_id\":\"2\",\"sub_cate\":\"14\",\"name\":\"Punjabi\",\"cover\":\"qgZJUuHrpE6x0JkqupLYlcx24UH51hBYLyCvf8n5.jpg\",\"original_price\":\"40.00\",\"sell_price\":\"40.00\",\"discount\":\"0.00\",\"variations\":\"NA\",\"status\":\"1\",\"extra_field\":null,\"created_at\":\"2023-06-23 11:27:46\",\"updated_at\":\"2023-06-28 13:05:40\",\"cate_name\":\"Dry Cleaning\",\"sub_cate_name\":\"Mens\",\"quantity\":1},{\"id\":\"27\",\"store_id\":\"8\",\"cate_id\":\"2\",\"sub_cate\":\"14\",\"name\":\"Jeans\",\"cover\":\"xhr96s1vXBBXbjTjvs5gVgmp1VC6Tks5CiBRA6ln.jpg\",\"original_price\":\"35.00\",\"sell_price\":\"0.00\",\"discount\":\"0.00\",\"variations\":\"NA\",\"status\":\"1\",\"extra_field\":null,\"created_at\":\"2023-06-23 11:39:43\",\"updated_at\":\"2023-06-23 11:39:43\",\"cate_name\":\"Dry Cleaning\",\"sub_cate_name\":\"Mens\",\"quantity\":1},{\"id\":\"30\",\"store_id\":\"8\",\"cate_id\":\"2\",\"sub_cate\":\"14\",\"name\":\"Shorts\",\"cover\":\"vo4Z5R4YHCUXqLrqvPuGy0hF88ESnPRhzBUeHCoJ.jpg\",\"original_price\":\"15.00\",\"sell_price\":\"0.00\",\"discount\":\"0.00\",\"variations\":\"NA\",\"status\":\"1\",\"extra_field\":null,\"created_at\":\"2023-06-23 11:48:35\",\"updated_at\":\"2023-06-23 11:48:35\",\"cate_name\":\"Dry Cleaning\",\"sub_cate_name\":\"Mens\",\"quantity\":1}]', 0, 'NA', 0.00, 19.00, 90.00, 5.00, 114.00, 9, '{\"key\":null}', '2023-07-06', '09:00 AM - 10:00 AM', '2023-07-08', '04:00 PM - 05:00 PM', 0, 0.00, NULL, NULL, 0, '2023-07-06 20:43:10', '2023-07-06 20:43:10'),
(5, 6, 8, 14, 0, 1, '{\"id\":3,\"uid\":\"6\",\"title\":\"home\",\"address\":\"Woodlands\",\"house\":\"House Number 12\",\"landmark\":\"Lusaka\",\"pincode\":\"10101\",\"lat\":\"-15.3875259\",\"lng\":\"28.3228165\",\"extra_field\":null,\"status\":\"1\"}', '[{\"id\":\"8\",\"store_id\":\"8\",\"cate_id\":\"5\",\"sub_cate\":\"2\",\"name\":\"Jeans\",\"cover\":\"UQ9iG5cNDH3AOwBEqOoIES3VlpVsQUKuLG6ueQ01.jpg\",\"original_price\":\"25.00\",\"sell_price\":\"0.00\",\"discount\":\"0.00\",\"variations\":\"NA\",\"status\":\"1\",\"extra_field\":null,\"created_at\":\"2023-06-23 10:02:15\",\"updated_at\":\"2023-06-23 10:02:15\",\"cate_name\":\"Wash\",\"sub_cate_name\":\"Mens\",\"quantity\":1},{\"id\":\"7\",\"store_id\":\"8\",\"cate_id\":\"5\",\"sub_cate\":\"2\",\"name\":\"Punjabi\",\"cover\":\"USMyqz6M49AUJivs1WE9THWILRVVVzfVduMqyUiI.jpg\",\"original_price\":\"35.00\",\"sell_price\":\"0.00\",\"discount\":\"0.00\",\"variations\":\"NA\",\"status\":\"1\",\"extra_field\":null,\"created_at\":\"2023-06-23 10:00:59\",\"updated_at\":\"2023-06-23 10:00:59\",\"cate_name\":\"Wash\",\"sub_cate_name\":\"Mens\",\"quantity\":1},{\"id\":\"5\",\"store_id\":\"8\",\"cate_id\":\"5\",\"sub_cate\":\"2\",\"name\":\"T-Shirt\",\"cover\":\"FBx3MJmwFW1XjMYdZN6uJMgx73HVt9H5kUn63V0f.jpg\",\"original_price\":\"25.00\",\"sell_price\":\"0.00\",\"discount\":\"0.00\",\"variations\":\"NA\",\"status\":\"1\",\"extra_field\":null,\"created_at\":\"2023-06-23 09:56:09\",\"updated_at\":\"2023-06-23 09:56:09\",\"cate_name\":\"Wash\",\"sub_cate_name\":\"Mens\",\"quantity\":1},{\"id\":\"2\",\"store_id\":\"8\",\"cate_id\":\"5\",\"sub_cate\":\"2\",\"name\":\"Shirts\",\"cover\":\"9TKsPCfYrryKZnpJpnEiJGcyEwOwIo6TyKk401SF.jpg\",\"original_price\":\"30.00\",\"sell_price\":\"0.00\",\"discount\":\"0.00\",\"variations\":\"NA\",\"status\":\"1\",\"extra_field\":null,\"created_at\":\"2023-06-23 08:39:46\",\"updated_at\":\"2023-06-23 12:38:59\",\"cate_name\":\"Wash\",\"sub_cate_name\":\"Mens\",\"quantity\":1}]', 0, 'NA', 0.00, 19.00, 115.00, 5.00, 139.00, 9, '{\"key\":null}', '2023-07-06', '11:00 AM - 12:00 PM', '2023-07-08', '12:00 PM - 01:00 PM', 0, 0.00, NULL, NULL, 1, '2023-07-06 21:13:39', '2023-07-08 11:29:02'),
(6, 6, 8, 0, 0, 0, 'NA', '[{\"id\":\"42\",\"store_id\":\"8\",\"cate_id\":\"4\",\"sub_cate\":\"6\",\"name\":\"Socks\",\"cover\":\"8TCvVB4h9ODI3FqpMg51qOnkrSBi0J0U4AsXVXBF.jpg\",\"original_price\":\"5.00\",\"sell_price\":\"0.00\",\"discount\":\"0.00\",\"variations\":\"NA\",\"status\":\"1\",\"extra_field\":null,\"created_at\":\"2023-07-07 17:24:00\",\"updated_at\":\"2023-07-07 17:24:00\",\"cate_name\":\"Iron\",\"sub_cate_name\":\"Mens\",\"quantity\":0},{\"id\":\"42\",\"store_id\":\"8\",\"cate_id\":\"4\",\"sub_cate\":\"6\",\"name\":\"Socks\",\"cover\":\"8TCvVB4h9ODI3FqpMg51qOnkrSBi0J0U4AsXVXBF.jpg\",\"original_price\":\"5.00\",\"sell_price\":\"0.00\",\"discount\":\"0.00\",\"variations\":\"NA\",\"status\":\"1\",\"extra_field\":null,\"created_at\":\"2023-07-07 17:24:00\",\"updated_at\":\"2023-07-07 17:24:00\",\"cate_name\":\"Iron\",\"sub_cate_name\":\"Mens\",\"quantity\":1}]', 0, 'NA', 0.00, 0.00, 5.00, 5.00, 10.00, 9, '{\"key\":null}', '2023-07-08', '09:00 AM - 10:00 AM', '2023-07-10', '10:00 AM - 11:00 AM', 0, 0.00, NULL, NULL, 0, '2023-07-07 17:38:03', '2023-07-07 17:38:03');

-- --------------------------------------------------------

--
-- Table structure for table `otp`
--

CREATE TABLE `otp` (
  `id` bigint UNSIGNED NOT NULL,
  `otp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `extra_field` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `otp`
--

INSERT INTO `otp` (`id`, `otp`, `email`, `status`, `extra_field`, `created_at`, `updated_at`) VALUES
(1, '366174', 'asifrana.ibs@gmail.com', 0, NULL, '2023-06-19 13:11:53', '2023-06-19 13:11:53'),
(2, '571394', 'asifrana.ibs@gmail.com', 0, NULL, '2023-06-19 13:13:36', '2023-06-19 13:13:36'),
(3, '745662', 'asif.supe@gmail.com', 0, NULL, '2023-06-20 08:26:09', '2023-06-20 08:26:09'),
(4, '397117', 'asif.supe@gmail.com', 0, NULL, '2023-06-20 09:10:13', '2023-06-20 09:10:13'),
(5, '650851', 'asif.supe@gmail.com', 0, NULL, '2023-06-20 09:10:53', '2023-06-20 09:10:53'),
(6, '358729', 'asif.supe@gmail.com', 0, NULL, '2023-06-20 09:13:05', '2023-06-20 09:13:05'),
(7, '408121', 'asif.supe@gmail.com', 0, NULL, '2023-06-20 09:15:34', '2023-06-20 09:15:34'),
(8, '452179', 'asif.supe@gmail.com', 0, NULL, '2023-06-20 09:40:13', '2023-06-20 09:40:13'),
(9, '152259', 'edev.ibs@gmail.com', 0, NULL, '2023-06-20 09:45:25', '2023-06-20 09:45:25'),
(10, '966268', 'edev.ibs@gmail.com', 0, NULL, '2023-06-20 09:54:07', '2023-06-20 09:54:07'),
(11, '755957', 'edev.ibs@gmail.com', 0, NULL, '2023-06-20 09:55:12', '2023-06-20 09:55:12'),
(12, '120524', 'edev.ibs@gmail.com', 0, NULL, '2023-06-20 09:59:16', '2023-06-20 09:59:16'),
(13, '215312', 'edev.ibs@gmail.com', 0, NULL, '2023-06-20 10:19:28', '2023-06-20 10:19:28'),
(14, '704380', 'edev.ibs@gmail.com', 0, NULL, '2023-06-20 10:22:25', '2023-06-20 10:22:25'),
(15, '221980', 'edev.ibs@gmail.com', 0, NULL, '2023-06-20 10:23:39', '2023-06-20 10:23:39'),
(16, '359536', 'edev.ibs@gmail.com', 1, NULL, '2023-06-20 10:30:08', '2023-06-20 10:30:25'),
(17, '120164', 'muks@rankersbox.com', 1, NULL, '2023-06-20 20:13:02', '2023-06-20 20:14:10'),
(18, '929930', 'edev.ibs@gmail.com', 1, NULL, '2023-06-20 20:27:17', '2023-06-20 20:28:19'),
(19, '263074', 'asif.supe@gmail.com', 1, NULL, '2023-06-21 04:56:56', '2023-06-21 04:57:50'),
(20, '296200', 'asif.supe@gmail.com', 1, NULL, '2023-06-21 05:15:14', '2023-06-21 05:17:10'),
(21, '965839', 'muksgo@gmail.com', 1, NULL, '2023-06-22 05:54:02', '2023-06-22 05:54:44'),
(22, '234623', 'edev.ibs@gmail.com', 1, NULL, '2023-06-22 06:00:46', '2023-06-22 06:01:31'),
(23, '973851', 'muks@rankersbox.com', 1, NULL, '2023-06-22 06:10:39', '2023-06-22 06:11:17'),
(24, '764702', 'muksgo@gmail.com', 1, NULL, '2023-06-22 06:49:50', '2023-06-22 06:51:08'),
(25, '231905', 'johndaniel839@gmail.com', 0, NULL, '2023-06-22 08:15:35', '2023-06-22 08:15:35'),
(26, '710856', 'johndaniel839@gmail.com', 0, NULL, '2023-06-22 12:29:25', '2023-06-22 12:29:25'),
(27, '342542', 'muks@rankersbox.com', 1, NULL, '2023-06-23 06:52:58', '2023-06-23 06:53:58'),
(28, '309260', 'muksgo@gmail.com', 1, NULL, '2023-06-23 07:21:18', '2023-06-23 07:22:10'),
(29, '477082', 'muks@rankersbox.com', 1, NULL, '2023-06-23 07:38:44', '2023-06-23 07:40:12'),
(30, '639032', 'order@washzambia.com', 1, NULL, '2023-06-23 07:53:51', '2023-06-23 07:54:22'),
(31, '328170', 'order@washzambia.com', 1, NULL, '2023-06-23 07:59:48', '2023-06-23 08:00:14'),
(32, '312634', 'order@washzambia.com', 1, NULL, '2023-06-23 08:02:02', '2023-06-23 08:02:23'),
(33, '579412', 'asif.supe@gmail.com', 1, NULL, '2023-06-23 10:15:30', '2023-06-23 10:16:55');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_field` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `name`, `content`, `extra_field`, `status`, `created_at`, `updated_at`) VALUES
(1, 'About us', '<p>Welcome to Wash&nbsp;Laundry, your one-stop solution for all your laundry and dry cleaning needs! With our convenient and reliable services, you can say goodbye to the hassle of doing laundry yourself. Whether you&#39;re a busy professional, a parent with a hectic schedule, or simply looking for a convenient way to keep your clothes fresh and clean, we&#39;ve got you covered.</p>\n\n<p>Our app provides an easy-to-use interface that allows you to schedule laundry and dry cleaning services at your fingertips. Simply download the app, create an account, and choose from our range of services. From regular laundry and delicate garments to specialty items like suits, dresses, and bedding, we handle it all with utmost care.</p>\n\n<p>Here&#39;s what makes us the preferred choice for thousands of satisfied customers:</p>\n\n<ol>\n	<li>\n	<p>Convenient Pickup and Delivery: Say goodbye to tedious trips to the laundromat. Our reliable team will collect your dirty laundry and deliver it back to you fresh and clean at your chosen location and time.</p>\n	</li>\n	<li>\n	<p>Professional Cleaning: We understand the importance of quality and attention to detail. Our experienced staff uses state-of-the-art equipment and premium detergents to ensure your clothes receive the best treatment, leaving them looking and feeling like new.</p>\n	</li>\n	<li>\n	<p>Customizable Options: We believe in catering to your individual needs. Whether you have specific washing instructions, need a particular fabric treatment, or prefer eco-friendly products, just let us know, and we&#39;ll accommodate your preferences.</p>\n	</li>\n	<li>\n	<p>Fast Turnaround Time: We know you have a busy life, and that&#39;s why we strive to provide quick and efficient services. Our turnaround times are designed to fit your schedule, ensuring you have your clean laundry when you need it.</p>\n	</li>\n	<li>\n	<p>Transparent Pricing: No hidden costs or surprises! Our pricing is fair and transparent, based on the type and quantity of items you submit. You&#39;ll always know what to expect, with no unexpected charges.</p>\n	</li>\n	<li>\n	<p>24/7 Customer Support: We value your satisfaction, and our dedicated customer support team is available round the clock to address any queries or concerns you may have. We&#39;re here to make your experience seamless and enjoyable.</p>\n	</li>\n</ol>\n\n<p>Enjoy the Wash&nbsp;Laundry app today and discover the convenience and peace of mind that comes with professional laundry and dry cleaning services. Experience a new level of freshness and cleanliness for your wardrobe, without the stress. Sit back, relax, and let us take care of your laundry need</p>', 'NA', 1, '2023-06-19 10:39:29', '2023-07-08 13:34:28'),
(2, 'Privacy', '<p>Welcome to Wash Zambia Laundry!</p>\n\n<p>These terms and conditions outline the rules and regulations for the use of Wash Zambia Limited&rsquo;s Website, located at https://washzambia.com/.</p>\n\n<p>By accessing this website we assume you accept these terms and conditions. Do not continue to use Wash Zambia if you do not agree to take all of the terms and conditions stated on this page.</p>\n\n<p>The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: &ldquo;Client&rdquo;, &ldquo;You&rdquo; and &ldquo;Your&rdquo; refers to you, the person log on this website and compliant to the Company&rsquo;s terms and conditions. &ldquo;The Company&rdquo;, &ldquo;Ourselves&rdquo;, &ldquo;We&rdquo;, &ldquo;Our&rdquo; and &ldquo;Us&rdquo;, refers to our Company. &ldquo;Party&rdquo;, &ldquo;Parties&rdquo;, or &ldquo;Us&rdquo;, refers to both the Client and ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client&rsquo;s needs in respect of provision of the Company&rsquo;s stated services, in accordance with and subject to, prevailing law of zm. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same.</p>\n\n<h3><strong>Cookies</strong></h3>\n\n<p>We employ the use of cookies. By accessing Wash Zambia, you agreed to use cookies in agreement with the Wash Zambia Limited&rsquo;s Privacy Policy.</p>\n\n<p>Most interactive websites use cookies to let us retrieve the user&rsquo;s details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies.</p>\n\n<h3><strong>License</strong></h3>\n\n<p>Unless otherwise stated, Wash Zambia Limited and/or its licensors own the intellectual property rights for all material on Wash Zambia. All intellectual property rights are reserved. You may access this from Wash Zambia for your own personal use subjected to restrictions set in these terms and conditions.</p>\n\n<p>You must not:</p>\n\n<ul>\n	<li>Republish material from Wash Zambia</li>\n	<li>Sell, rent or sub-license material from Wash Zambia</li>\n	<li>Reproduce, duplicate or copy material from Wash Zambia</li>\n	<li>Redistribute content from Wash Zambia</li>\n</ul>\n\n<p>This Agreement shall begin on the date hereof. Our Terms and Conditions were created with the help of the&nbsp;<a href=\"https://www.termsfeed.com/terms-conditions-generator/\">Terms and Conditions Generator</a>.</p>\n\n<p>Parts of this website offer an opportunity for users to post and exchange opinions and information in certain areas of the website. Wash Zambia Limited does not filter, edit, publish or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of Wash Zambia Limited,its agents and/or affiliates. Comments reflect the views and opinions of the person who post their views and opinions. To the extent permitted by applicable laws, Wash Zambia Limited shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.</p>\n\n<p>Wash Zambia Limited reserves the right to monitor all Comments and to remove any Comments which can be considered inappropriate, offensive or causes breach of these Terms and Conditions.</p>\n\n<p>You warrant and represent that:</p>\n\n<ul>\n	<li>You are entitled to post the Comments on our website and have all necessary licenses and consents to do so;</li>\n	<li>The Comments do not invade any intellectual property right, including without limitation copyright, patent or trademark of any third party;</li>\n	<li>The Comments do not contain any defamatory, libelous, offensive, indecent or otherwise unlawful material which is an invasion of privacy</li>\n	<li>The Comments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity.</li>\n</ul>\n\n<p>You hereby grant Wash Zambia Limited a non-exclusive license to use, reproduce, edit and authorize others to use, reproduce and edit any of your Comments in any and all forms, formats or media.</p>\n\n<h3><strong>Hyperlinking to our Content</strong></h3>\n\n<p>The following organizations may link to our Website without prior written approval:</p>\n\n<ul>\n	<li>Government agencies;</li>\n	<li>Search engines;</li>\n	<li>News organizations;</li>\n	<li>Online directory distributors may link to our Website in the same manner as they hyperlink to the Websites of other listed businesses; and</li>\n	<li>System wide Accredited Businesses except soliciting non-profit organizations, charity shopping malls, and charity fundraising groups which may not hyperlink to our Web site.</li>\n</ul>\n\n<p>These organizations may link to our home page, to publications or to other Website information so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products and/or services; and (c) fits within the context of the linking party&rsquo;s site.</p>\n\n<p>We may consider and approve other link requests from the following types of organizations:</p>\n\n<ul>\n	<li>commonly-known consumer and/or business information sources;</li>\n	<li>dot.com community sites;</li>\n	<li>associations or other groups representing charities;</li>\n	<li>online directory distributors;</li>\n	<li>internet portals;</li>\n	<li>accounting, law and consulting firms; and</li>\n	<li>educational institutions and trade associations.</li>\n</ul>\n\n<p>We will approve link requests from these organizations if we decide that: (a) the link would not make us look unfavorably to ourselves or to our accredited businesses; (b) the organization does not have any negative records with us; (c) the benefit to us from the visibility of the hyperlink compensates the absence of Wash Zambia Limited; and (d) the link is in the context of general resource information.</p>\n\n<p>These organizations may link to our home page so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products or services; and (c) fits within the context of the linking party&rsquo;s site.</p>\n\n<p>If you are one of the organizations listed in paragraph 2 above and are interested in linking to our website, you must inform us by sending an e-mail to Wash Zambia Limited. Please include your name, your organization name, contact information as well as the URL of your site, a list of any URLs from which you intend to link to our Website, and a list of the URLs on our site to which you would like to link. Wait 2-3 weeks for a response.</p>\n\n<p>Approved organizations may hyperlink to our Website as follows:</p>\n\n<ul>\n	<li>By use of our corporate name; or</li>\n	<li>By use of the uniform resource locator being linked to; or</li>\n	<li>By use of any other description of our Website being linked to that makes sense within the context and format of content on the linking party&rsquo;s site.</li>\n</ul>\n\n<p>No use of Wash Zambia Limited&rsquo;s logo or other artwork will be allowed for linking absent a trademark license agreement.</p>\n\n<h3><strong>iFrames</strong></h3>\n\n<p>Without prior approval and written permission, you may not create frames around our Webpages that alter in any way the visual presentation or appearance of our Website.</p>\n\n<h3><strong>Content Liability</strong></h3>\n\n<p>We shall not be hold responsible for any content that appears on your Website. You agree to protect and defend us against all claims that is rising on your Website. No link(s) should appear on any Website that may be interpreted as libelous, obscene or criminal, or which infringes, otherwise violates, or advocates the infringement or other violation of, any third party rights.</p>\n\n<h3><strong>Reservation of Rights</strong></h3>\n\n<p>We reserve the right to request that you remove all links or any particular link to our Website. You approve to immediately remove all links to our Website upon request. We also reserve the right to amen these terms and conditions and it&rsquo;s linking policy at any time. By continuously linking to our Website, you agree to be bound to and follow these linking terms and conditions.</p>\n\n<h3><strong>Removal of links from our website</strong></h3>\n\n<p>If you find any link on our Website that is offensive for any reason, you are free to contact and inform us any moment. We will consider requests to remove links but we are not obligated to or so or to respond to you directly.</p>\n\n<p>We do not ensure that the information on this website is correct, we do not warrant its completeness or accuracy; nor do we promise to ensure that the website remains available or that the material on the website is kept up to date.</p>\n\n<h3><strong>Disclaimer</strong></h3>\n\n<p>To the maximum extent permitted by applicable law, we exclude all representations, warranties and conditions relating to our website and the use of this website. Nothing in this disclaimer will:</p>\n\n<ul>\n	<li>limit or exclude our or your liability for death or personal injury;</li>\n	<li>limit or exclude our or your liability for fraud or fraudulent misrepresentation;</li>\n	<li>limit any of our or your liabilities in any way that is not permitted under applicable law; or</li>\n	<li>exclude any of our or your liabilities that may not be excluded under applicable law.</li>\n</ul>\n\n<p>The limitations and prohibitions of liability set in this Section and elsewhere in this disclaimer: (a) are subject to the preceding paragraph; and (b) govern all liabilities arising under the disclaimer, including liabilities arising in contract, in tort and for breach of statutory duty.</p>\n\n<p>As long as the website and the information and services on the website are provided free of charge, we will not be liable for any loss or damage of any nature.</p>', 'NA', 1, '2023-06-19 10:39:29', '2023-07-08 13:20:54'),
(3, 'Terms & Conditions', '<main id=\"tt-pageContent\">\n<article id=\"post-4579\">\n<p>Welcome to Wash Zambia!</p>\n\n<p>These terms and conditions outline the rules and regulations for the use of Wash Zambia Limited&rsquo;s Website, located at https://washzambia.com/.</p>\n\n<p>By accessing this website we assume you accept these terms and conditions. Do not continue to use Wash Zambia if you do not agree to take all of the terms and conditions stated on this page.</p>\n\n<p>The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: &ldquo;Client&rdquo;, &ldquo;You&rdquo; and &ldquo;Your&rdquo; refers to you, the person log on this website and compliant to the Company&rsquo;s terms and conditions. &ldquo;The Company&rdquo;, &ldquo;Ourselves&rdquo;, &ldquo;We&rdquo;, &ldquo;Our&rdquo; and &ldquo;Us&rdquo;, refers to our Company. &ldquo;Party&rdquo;, &ldquo;Parties&rdquo;, or &ldquo;Us&rdquo;, refers to both the Client and ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client&rsquo;s needs in respect of provision of the Company&rsquo;s stated services, in accordance with and subject to, prevailing law of zm. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same.</p>\n\n<h3><strong>Cookies</strong></h3>\n\n<p>We employ the use of cookies. By accessing Wash Zambia, you agreed to use cookies in agreement with the Wash Zambia Limited&rsquo;s Privacy Policy.</p>\n\n<p>Most interactive websites use cookies to let us retrieve the user&rsquo;s details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies.</p>\n\n<h3><strong>License</strong></h3>\n\n<p>Unless otherwise stated, Wash Zambia Limited and/or its licensors own the intellectual property rights for all material on Wash Zambia. All intellectual property rights are reserved. You may access this from Wash Zambia for your own personal use subjected to restrictions set in these terms and conditions.</p>\n\n<p>You must not:</p>\n\n<ul>\n	<li>Republish material from Wash Zambia</li>\n	<li>Sell, rent or sub-license material from Wash Zambia</li>\n	<li>Reproduce, duplicate or copy material from Wash Zambia</li>\n	<li>Redistribute content from Wash Zambia</li>\n</ul>\n\n<p>This Agreement shall begin on the date hereof. Our Terms and Conditions were created with the help of the&nbsp;<a href=\"https://www.termsfeed.com/terms-conditions-generator/\">Terms and Conditions Generator</a>.</p>\n\n<p>Parts of this website offer an opportunity for users to post and exchange opinions and information in certain areas of the website. Wash Zambia Limited does not filter, edit, publish or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of Wash Zambia Limited,its agents and/or affiliates. Comments reflect the views and opinions of the person who post their views and opinions. To the extent permitted by applicable laws, Wash Zambia Limited shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.</p>\n\n<p>Wash Zambia Limited reserves the right to monitor all Comments and to remove any Comments which can be considered inappropriate, offensive or causes breach of these Terms and Conditions.</p>\n\n<p>You warrant and represent that:</p>\n\n<ul>\n	<li>You are entitled to post the Comments on our website and have all necessary licenses and consents to do so;</li>\n	<li>The Comments do not invade any intellectual property right, including without limitation copyright, patent or trademark of any third party;</li>\n	<li>The Comments do not contain any defamatory, libelous, offensive, indecent or otherwise unlawful material which is an invasion of privacy</li>\n	<li>The Comments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity.</li>\n</ul>\n\n<p>You hereby grant Wash Zambia Limited a non-exclusive license to use, reproduce, edit and authorize others to use, reproduce and edit any of your Comments in any and all forms, formats or media.</p>\n\n<h3><strong>Hyperlinking to our Content</strong></h3>\n\n<p>The following organizations may link to our Website without prior written approval:</p>\n\n<ul>\n	<li>Government agencies;</li>\n	<li>Search engines;</li>\n	<li>News organizations;</li>\n	<li>Online directory distributors may link to our Website in the same manner as they hyperlink to the Websites of other listed businesses; and</li>\n	<li>System wide Accredited Businesses except soliciting non-profit organizations, charity shopping malls, and charity fundraising groups which may not hyperlink to our Web site.</li>\n</ul>\n\n<p>These organizations may link to our home page, to publications or to other Website information so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products and/or services; and (c) fits within the context of the linking party&rsquo;s site.</p>\n\n<p>We may consider and approve other link requests from the following types of organizations:</p>\n\n<ul>\n	<li>commonly-known consumer and/or business information sources;</li>\n	<li>dot.com community sites;</li>\n	<li>associations or other groups representing charities;</li>\n	<li>online directory distributors;</li>\n	<li>internet portals;</li>\n	<li>accounting, law and consulting firms; and</li>\n	<li>educational institutions and trade associations.</li>\n</ul>\n\n<p>We will approve link requests from these organizations if we decide that: (a) the link would not make us look unfavorably to ourselves or to our accredited businesses; (b) the organization does not have any negative records with us; (c) the benefit to us from the visibility of the hyperlink compensates the absence of Wash Zambia Limited; and (d) the link is in the context of general resource information.</p>\n\n<p>These organizations may link to our home page so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products or services; and (c) fits within the context of the linking party&rsquo;s site.</p>\n\n<p>If you are one of the organizations listed in paragraph 2 above and are interested in linking to our website, you must inform us by sending an e-mail to Wash Zambia Limited. Please include your name, your organization name, contact information as well as the URL of your site, a list of any URLs from which you intend to link to our Website, and a list of the URLs on our site to which you would like to link. Wait 2-3 weeks for a response.</p>\n\n<p>Approved organizations may hyperlink to our Website as follows:</p>\n\n<ul>\n	<li>By use of our corporate name; or</li>\n	<li>By use of the uniform resource locator being linked to; or</li>\n	<li>By use of any other description of our Website being linked to that makes sense within the context and format of content on the linking party&rsquo;s site.</li>\n</ul>\n\n<p>No use of Wash Zambia Limited&rsquo;s logo or other artwork will be allowed for linking absent a trademark license agreement.</p>\n\n<h3><strong>iFrames</strong></h3>\n\n<p>Without prior approval and written permission, you may not create frames around our Webpages that alter in any way the visual presentation or appearance of our Website.</p>\n\n<h3><strong>Content Liability</strong></h3>\n\n<p>We shall not be hold responsible for any content that appears on your Website. You agree to protect and defend us against all claims that is rising on your Website. No link(s) should appear on any Website that may be interpreted as libelous, obscene or criminal, or which infringes, otherwise violates, or advocates the infringement or other violation of, any third party rights.</p>\n\n<h3><strong>Reservation of Rights</strong></h3>\n\n<p>We reserve the right to request that you remove all links or any particular link to our Website. You approve to immediately remove all links to our Website upon request. We also reserve the right to amen these terms and conditions and it&rsquo;s linking policy at any time. By continuously linking to our Website, you agree to be bound to and follow these linking terms and conditions.</p>\n\n<h3><strong>Removal of links from our website</strong></h3>\n\n<p>If you find any link on our Website that is offensive for any reason, you are free to contact and inform us any moment. We will consider requests to remove links but we are not obligated to or so or to respond to you directly.</p>\n\n<p>We do not ensure that the information on this website is correct, we do not warrant its completeness or accuracy; nor do we promise to ensure that the website remains available or that the material on the website is kept up to date.</p>\n\n<h3><strong>Disclaimer</strong></h3>\n\n<p>To the maximum extent permitted by applicable law, we exclude all representations, warranties and conditions relating to our website and the use of this website. Nothing in this disclaimer will:</p>\n\n<ul>\n	<li>limit or exclude our or your liability for death or personal injury;</li>\n	<li>limit or exclude our or your liability for fraud or fraudulent misrepresentation;</li>\n	<li>limit any of our or your liabilities in any way that is not permitted under applicable law; or</li>\n	<li>exclude any of our or your liabilities that may not be excluded under applicable law.</li>\n</ul>\n\n<p>The limitations and prohibitions of liability set in this Section and elsewhere in this disclaimer: (a) are subject to the preceding paragraph; and (b) govern all liabilities arising under the disclaimer, including liabilities arising in contract, in tort and for breach of statutory duty.</p>\n\n<p>As long as the website and the information and services on the website are provided free of charge, we will not be liable for any loss or damage of any nature.</p>\n</article>\n</main>\n\n<footer>&nbsp;</footer>\n\n<p>&nbsp;</p>', 'NA', 1, '2023-06-19 10:39:29', '2023-07-08 13:21:52'),
(4, 'Refund Policy', '<p>Wash Laundry follows standards and policies set by the Fabricare Industry. These policies are standard to all dry cleaners including classical retail dry cleaning stores.</p>\n\n<p>Dry Clean and Laundry Policy: We exercise utmost care in cleaning and processing garments entrusted to us and use such processes which, in our opinion, are best suited to the nature and conditions of each individual garment. Nevertheless, we cannot assume responsibility for inherent weaknesses or defects in materials that may result in tears or the development of small holes in fabric that are not readily apparent prior to processing. In dry cleaning and laundering, we cannot guarantee against color loss, color bleeding, and shrinkage; or against damage to weak and tender fabrics. Responsibility is also disclaimed for trimmings, buckles, beads, buttons, bells, and sequins. Wash Zambia Limited&rsquo;s liability regarding any damaged items shall not exceed ten (10) times our charge for cleaning that garment regardless of brand or condition.</p>\n\n<p>Household Items and Leather/Suede Policy: All household items, leather, and suede garments are cleaned 100% at the customer&rsquo;s own risk.</p>\n\n<p>Wash Zambia Limited does not accept any responsibility or liability for any damage or fading as a result of the laundry/dry cleaning process.</p>\n\n<p>Re-Cleaning Policy within two (2) days after delivery, you may return any dry cleaned or laundered items if you are not completely satisfied with the quality of our cleaning, and we will re-clean them free of charge.</p>\n\n<p>Loss Policy: We exercise the utmost care in processing clothing items received to avoid misplacement or loss of items. However, there will be instances where items may get misplaced or lost. As such, differences in count must be reported within 24 hours of delivery. Unless a list accompanies the bundle, our count must be accepted. Wash Zambia Limited&rsquo;s liability regarding any lost item shall not exceed ten (10) times our charge for cleaning that garment regardless of brand or condition excluding leather, suede, and household items that are at the customer&rsquo;s own risk at all times.</p>\n\n<p>Refund Policy: We issue a full refund to our customers in the case of loss under the premises of: The total replacement cost does not exceed a dollar amount of ten times the charge for cleaning.</p>\n\n<p>The lost item entity does not fall under the umbrella of household, leather, or suede item as outlined by the &ldquo;Household Items and Leather/Suede Policy&rdquo;</p>\n\n<p>&nbsp;</p>', 'NA', 1, '2023-06-19 10:39:29', '2023-07-08 13:16:24'),
(5, 'Frequently Asked Questions', '<h2 data-v-a6d85442=\"\" style=\"text-align: center;\"><strong>Have Any Question?</strong></h2>\n\n<p data-v-a6d85442=\"\" style=\"text-align: center;\">Some frequently asked questions and answers below</p>\n\n<h3 data-v-5d9392b3=\"\"><strong>How do I place an order with Laundry?</strong></h3>\n\n<p>To place an order with Laundry, simply visit our website and choose the service you require. You can then schedule a pickup time and date that suits you, and we will take care of the rest. Alternatively, you can call us to place your order over the phone.</p>\n\n<h3><strong>What is your turnaround time for laundry services?</strong></h3>\n\n<p>A same day service is available on orders collected before 11 am, otherwise our standard turn around for most orders is 24 hours</p>\n\n<h3><strong>Do you offer seo-friendly laundry options?</strong></h3>\n\n<p>Yes, absolutely! You can drop off and collect your clothes at any one of our stores.</p>\n\n<h3><strong>Do I need to separate my clothes?</strong></h3>\n\n<p>You will only need to separate the clothing if different services are being requested for example laundry &amp; dry cleaning or alterations.</p>', 'NA', 1, '2023-06-19 10:39:29', '2023-07-08 13:28:41'),
(6, 'Help', '<p>If you need any help you can reach us via email or hot line below. Thanks</p>\n\n<p><strong>Address</strong>:&nbsp;Plot 5 Lubambe Road, Northmead Lusaka ZM, 10101, Zambia</p>\n\n<p><strong>Email</strong>:&nbsp;<a href=\"mailto:support@washzambia.com\">support@washzambia.com</a></p>\n\n<p><strong>Cell</strong>:&nbsp;+260 96 9666699</p>', 'NA', 1, '2023-06-19 10:39:29', '2023-07-08 13:33:44'),
(7, 'Legal Mentions', 'Legal Mentions', 'NA', 1, '2023-06-19 10:39:29', '2023-06-19 10:39:29'),
(8, 'Cookies', 'Cookies', 'NA', 1, '2023-06-19 10:39:29', '2023-06-19 10:39:29');

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
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `env` tinyint NOT NULL,
  `status` tinyint NOT NULL,
  `currency_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creds` text COLLATE utf8mb4_unicode_ci,
  `extra_field` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `name`, `env`, `status`, `currency_code`, `cover`, `creds`, `extra_field`, `created_at`, `updated_at`) VALUES
(1, 'COD', 1, 1, 'USD', 'NA', NULL, NULL, '2023-06-19 10:39:29', '2023-06-19 10:39:29'),
(2, 'Stripe', 1, 0, 'USD', 'NA', NULL, NULL, '2023-06-19 10:39:29', '2023-07-06 08:25:37'),
(3, 'PayPal', 1, 0, 'USD', 'NA', '{\"client_id\":\"34432242342\",\"client_secret\":\"32432423423\"}', '{\"translation\":[]}', '2023-06-19 10:39:29', '2023-07-06 19:46:52'),
(4, 'PayTM', 1, 0, 'INR', 'NA', NULL, NULL, '2023-06-19 10:39:29', '2023-06-27 03:57:40'),
(5, 'RazorPay', 1, 0, 'INR', 'NA', NULL, NULL, '2023-06-19 10:39:29', '2023-06-27 03:57:43'),
(6, 'InstaMOJO', 1, 0, 'INR', 'NA', NULL, NULL, '2023-06-19 10:39:29', '2023-06-27 03:57:47'),
(7, 'PayStack', 1, 0, 'NGN', 'NA', NULL, NULL, '2023-06-19 10:39:29', '2023-06-27 03:57:50'),
(8, 'Flutterwave', 1, 0, 'NGN', 'NA', NULL, NULL, '2023-06-19 10:39:29', '2023-06-27 03:57:53'),
(9, 'DPO', 1, 1, 'ZMW', 'NA', 'NA', '{\"translation\":[]}', '2023-06-19 10:39:29', '2023-07-06 18:09:02');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rating`
--

CREATE TABLE `rating` (
  `id` bigint UNSIGNED NOT NULL,
  `uid` int NOT NULL,
  `service_id` int DEFAULT NULL,
  `store_id` int DEFAULT NULL,
  `driver_id` int DEFAULT NULL,
  `rate` double(10,2) NOT NULL,
  `msg` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `from` tinyint NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `extra_field` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rating`
--

INSERT INTO `rating` (`id`, `uid`, `service_id`, `store_id`, `driver_id`, `rate`, `msg`, `from`, `status`, `extra_field`, `created_at`, `updated_at`) VALUES
(1, 9, 0, 8, 0, 2.00, 'Fantastic service', 1, 0, NULL, '2023-07-06 19:49:11', '2023-07-06 19:49:11'),
(2, 9, 0, 8, 0, 2.00, 'Great work', 1, 0, NULL, '2023-07-06 19:49:26', '2023-07-06 19:49:26');

-- --------------------------------------------------------

--
-- Table structure for table `redeem`
--

CREATE TABLE `redeem` (
  `id` bigint UNSIGNED NOT NULL,
  `owner` int NOT NULL,
  `redeemer` int NOT NULL,
  `code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `extra_field` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referral`
--

CREATE TABLE `referral` (
  `id` bigint UNSIGNED NOT NULL,
  `amount` double(10,2) NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `limit` int NOT NULL,
  `who_received` tinyint NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `extra_field` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `referralcodes`
--

CREATE TABLE `referralcodes` (
  `id` bigint UNSIGNED NOT NULL,
  `uid` int NOT NULL,
  `code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `extra_field` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `referralcodes`
--

INSERT INTO `referralcodes` (`id`, `uid`, `code`, `status`, `extra_field`, `created_at`, `updated_at`) VALUES
(1, 4, '8G0LWNLTTUZSM', 0, NULL, '2023-06-20 20:28:20', '2023-06-20 20:28:20'),
(2, 6, 'TGRJ5AVRRV6WM', 0, NULL, '2023-06-23 07:40:12', '2023-06-23 07:40:12'),
(3, 9, 'LQ3FR6WOBJMCA', 0, NULL, '2023-06-23 10:16:56', '2023-06-23 10:16:56');

-- --------------------------------------------------------

--
-- Table structure for table `register_request`
--

CREATE TABLE `register_request` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories` text COLLATE utf8mb4_unicode_ci,
  `address` text COLLATE utf8mb4_unicode_ci,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci,
  `zipcode` text COLLATE utf8mb4_unicode_ci,
  `extra_field` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint UNSIGNED NOT NULL,
  `store_id` int NOT NULL,
  `cate_id` int NOT NULL,
  `sub_cate` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_price` double(10,2) DEFAULT NULL,
  `sell_price` double(10,2) DEFAULT NULL,
  `discount` double(10,2) DEFAULT NULL,
  `variations` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '0',
  `extra_field` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `store_id`, `cate_id`, `sub_cate`, `name`, `cover`, `original_price`, `sell_price`, `discount`, `variations`, `status`, `extra_field`, `created_at`, `updated_at`) VALUES
(1, 3, 1, '1', 'Wash your pents', 'VYhHkpdZ1YUfyaddOX6OIaEc3EXhGBNMETI4b8QE.jpg', 120.00, 108.00, 10.00, 'NA', 1, NULL, '2023-06-20 20:31:39', '2023-06-20 20:31:39'),
(2, 8, 5, '2', 'Shirts', '9TKsPCfYrryKZnpJpnEiJGcyEwOwIo6TyKk401SF.jpg', 30.00, 0.00, 0.00, 'NA', 1, NULL, '2023-06-23 08:39:46', '2023-06-23 12:38:59'),
(3, 8, 5, '5', 'Home Towel', 'ahYAF3noEXFoEItyag9Xyz25KUKNzQY90YkdJN78.jpg', 20.00, 0.00, 0.00, 'NA', 1, NULL, '2023-06-23 09:50:19', '2023-06-23 09:50:19'),
(4, 8, 5, '3', 'Dress', 'niSXDHkFPJ70AVGQETMb7Oa5miyBHBl7eUC8TAtI.jpg', 35.00, 0.00, 0.00, 'NA', 1, NULL, '2023-06-23 09:52:51', '2023-06-23 09:52:51'),
(5, 8, 5, '2', 'T-Shirt', 'FBx3MJmwFW1XjMYdZN6uJMgx73HVt9H5kUn63V0f.jpg', 25.00, 0.00, 0.00, 'NA', 1, NULL, '2023-06-23 09:56:09', '2023-06-23 09:56:09'),
(6, 8, 5, '3', 'Ladies Tops', 'RQpjMmzkh5cZJraZ21FkSEq1tCWHUKULqpXwdANE.jpg', 15.00, 0.00, 0.00, 'NA', 1, NULL, '2023-06-23 09:57:45', '2023-06-23 09:57:45'),
(7, 8, 5, '2', 'Punjabi', 'USMyqz6M49AUJivs1WE9THWILRVVVzfVduMqyUiI.jpg', 35.00, 0.00, 0.00, 'NA', 1, NULL, '2023-06-23 10:00:59', '2023-06-23 10:00:59'),
(8, 8, 5, '2', 'Jeans', 'UQ9iG5cNDH3AOwBEqOoIES3VlpVsQUKuLG6ueQ01.jpg', 25.00, 0.00, 0.00, 'NA', 1, NULL, '2023-06-23 10:02:15', '2023-06-23 10:02:15'),
(9, 8, 5, '2', 'Half Pants/ Shorts', 'o5jUIMcsFWCNsrz4WBt4wILyOm79BjZ0a4BLS1Rf.jpg', 12.00, 0.00, 0.00, 'NA', 1, NULL, '2023-06-23 10:03:28', '2023-06-23 10:03:28'),
(10, 8, 5, '3', 'Skirts', 'A0xhW7TXKvJFk9jCmjsswHBIZZedjnuva3meXZ2E.jpg', 14.00, 0.00, 0.00, 'NA', 1, NULL, '2023-06-23 10:06:07', '2023-06-23 10:06:07'),
(11, 8, 5, '2', 'Sweater', '3yamYOv8clV3gZMKj43Do4uLBBRDjOcNJd6pQ4IH.jpg', 25.00, 0.00, 0.00, 'NA', 1, NULL, '2023-06-23 10:31:45', '2023-06-23 10:31:45'),
(12, 8, 5, '5', 'Blankets', 'LjipaKlWPfnVS5RrGgJ8WX5t2Wp5MMAa5kC2tAwm.jpg', 65.00, 0.00, 0.00, 'NA', 1, NULL, '2023-06-23 10:38:15', '2023-06-23 10:38:15'),
(13, 8, 5, '2', 'Boxer Shorts', 'DXyRYRKpmqYsTgQql61XlVX5RARwQN3YNEDY5pGr.jpg', 10.00, 0.00, 0.00, 'NA', 1, NULL, '2023-06-23 10:44:17', '2023-06-23 10:44:17'),
(14, 8, 5, '5', 'Apron', 'h3fnTXVnLQhT6UbY6hbvUZlBArmJvAUweSw85Y76.jpg', 15.00, 0.00, 0.00, 'NA', 1, NULL, '2023-06-23 10:57:32', '2023-06-23 10:57:32'),
(15, 8, 5, '5', 'Bid (Vest)', 'L8XN86YrDYis4dGf3tUGEU2xXcqcNx2FrtxgvnGJ.jpg', 15.00, 0.00, 0.00, 'NA', 1, NULL, '2023-06-23 11:01:08', '2023-06-23 11:01:08'),
(16, 8, 5, '2', 'Bubu 3 Pcs', 'KO3HnjMpgikmbt6uJxWsx6LASELJxKRnmXLCipdJ.jpg', 120.00, 120.00, 0.00, 'NA', 1, NULL, '2023-06-23 11:05:59', '2023-06-23 11:08:07'),
(17, 8, 5, '5', 'Chef Jacket', 'duGXyj2hqbTkTMxust6Il0xsDKec8zPIQipiP6gf.jpg', 30.00, 0.00, 0.00, 'NA', 1, NULL, '2023-06-23 11:10:34', '2023-06-23 11:10:34'),
(18, 8, 5, '2', 'Chitenge Shirt', '7cmk1yEig9bpj44Td2Oz6yUPUpN2AGkHgyCZmkgJ.jpg', 30.00, 0.00, 0.00, 'NA', 1, NULL, '2023-06-23 11:13:50', '2023-06-23 11:13:50'),
(19, 8, 5, '2', 'Chitenge Shorts', 'BWFoRU3YRKwsW3apAv2LaqVQ1FU8nF2jYqP6TLrF.jpg', 25.00, 0.00, 0.00, 'NA', 1, NULL, '2023-06-23 11:18:05', '2023-06-23 11:18:05'),
(20, 8, 5, '5', 'Chitenge Trouser', 'DOhpsgZPjEoqTaRKHI3Idbh7w0S7mbYEhJCgXpsb.jpg', 25.00, 24.25, 3.00, 'NA', 1, NULL, '2023-06-23 11:22:29', '2023-06-23 11:26:28'),
(21, 8, 2, '14', 'Punjabi', 'qgZJUuHrpE6x0JkqupLYlcx24UH51hBYLyCvf8n5.jpg', 40.00, 40.00, 0.00, 'NA', 1, NULL, '2023-06-23 11:27:46', '2023-06-28 13:05:40'),
(22, 8, 2, '15', 'Ladies Tops', 'JBmOHZSKyp8UyXqC9AQbZEI32dpaaBUwD24jOm9o.jpg', 25.00, 0.00, 0.00, 'NA', 1, NULL, '2023-06-23 11:29:03', '2023-06-23 11:29:03'),
(23, 8, 2, '17', 'Home Towels', 'yZnJBWBm2Hk7fEY5bRJhLQCTPMkxm66DrtHhGMGc.jpg', 15.00, 0.00, 0.00, 'NA', 1, NULL, '2023-06-23 11:30:00', '2023-06-23 11:30:00'),
(24, 8, 2, '15', 'Dress', 'CKlh3u1U0S76YDDV7mNwzlurPwGqSRMvk7Gob1Ug.jpg', 30.00, 0.00, 0.00, 'NA', 1, NULL, '2023-06-23 11:30:46', '2023-06-23 11:30:46'),
(25, 8, 2, '15', 'Ladies Skirts', 'KVyh5GipmMOhRXZNYKMXiEmmVkLEvdkpeHrXICOR.jpg', 15.00, 0.00, 0.00, 'NA', 1, NULL, '2023-06-23 11:37:24', '2023-06-23 11:37:24'),
(26, 8, 2, '15', 'Ladies Pants', 'aUj0n4AzAPnz0JMVYLcdYzTUqtbxYZZePdAPEtMF.jpg', 25.00, 0.00, 0.00, 'NA', 1, NULL, '2023-06-23 11:38:42', '2023-06-23 11:38:42'),
(27, 8, 2, '14', 'Jeans', 'xhr96s1vXBBXbjTjvs5gVgmp1VC6Tks5CiBRA6ln.jpg', 35.00, 0.00, 0.00, 'NA', 1, NULL, '2023-06-23 11:39:43', '2023-06-23 11:39:43'),
(28, 8, 2, '15', 'Wedding Dress', '0ue3eoKIdGmoQfWOG2g8dDGmw1ilU6SjVtyiUghd.jpg', 120.00, 0.00, 0.00, 'NA', 1, NULL, '2023-06-23 11:43:47', '2023-06-23 11:46:27'),
(29, 8, 2, '14', 'T-Shirts', 'OVwZFKpRFflv67MdGmA1UYVsKlLiIbu6HOpHo8rI.jpg', 15.00, 0.00, 0.00, 'NA', 1, NULL, '2023-06-23 11:47:19', '2023-06-23 11:47:19'),
(30, 8, 2, '14', 'Shorts', 'vo4Z5R4YHCUXqLrqvPuGy0hF88ESnPRhzBUeHCoJ.jpg', 15.00, 0.00, 0.00, 'NA', 1, NULL, '2023-06-23 11:48:35', '2023-06-23 11:48:35'),
(31, 8, 2, '16', 'Kids Dresses', '7XUBRZMoARsigJZtMjFIpXVL1FBYQTg9rho1t29Y.jpg', 40.00, 0.00, 0.00, 'NA', 1, NULL, '2023-06-23 11:49:29', '2023-06-23 11:49:29'),
(32, 8, 2, '15', 'Sweaters', '7Fv4az13tYCunS4UA1pcJJfrnkx8fzmVaUb1mTkI.jpg', 25.00, 0.00, 0.00, 'NA', 1, NULL, '2023-06-23 11:50:50', '2023-06-23 11:50:50'),
(33, 8, 2, '15', 'Wedding Dress', 'EW1Ucgcka49nPpY3ITcseWEHJeJl2iIu82UOiIif.jpg', 135.00, 0.00, 0.00, 'NA', 1, NULL, '2023-06-23 12:30:08', '2023-06-23 12:30:08'),
(34, 8, 2, '14', 'Chitenge Shirt', 'awwtUF697EOxwLgypq8TtaM8NbnqgcpcHPkOZCdy.jpg', 30.00, 0.00, 0.00, 'NA', 1, NULL, '2023-06-23 12:33:15', '2023-06-23 12:33:15'),
(35, 8, 2, '14', 'Bubu 3ps', 'S15r5GV2nBBmsQZFVq1e0uQvzHGMkZ8fzKguYvel.jpg', 60.00, 0.00, 0.00, 'NA', 1, NULL, '2023-06-23 12:34:47', '2023-06-23 12:34:47'),
(36, 8, 3, '13', 'Snow White Sheets', 'fslJyDJCtgOhGF5p4xJdz1i7to35gecJupXHYIT6.jpg', 55.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-06 17:49:09', '2023-07-06 17:49:09'),
(37, 8, 10, '20', 'Baby Stroller', '6IQhxvdz476tDHT7lk7PsRUetbPUYDdhYS3GKjPc.jpg', 50.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-07 16:30:59', '2023-07-07 16:30:59'),
(38, 8, 10, '20', 'Blanket (Queen/King)', 'tfZ4E4AAtYmlSAJwe0QhystUBm1w9Qn9jCoCoJcD.jpg', 120.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-07 16:38:11', '2023-07-07 16:38:11'),
(39, 8, 10, '20', 'Blankets (Singles)', 'rPdzx9ncTjPdhG2pcLjBKxPVazLbo6YcBK4XPk8e.jpg', 80.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-07 16:41:25', '2023-07-07 16:41:25'),
(40, 8, 10, '20', 'Bags', 'lgcahcd4mNcTcIXx8ubJPMyGl5kNpeHusu7bDhW7.jpg', 40.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-07 16:46:07', '2023-07-07 16:46:07'),
(41, 8, 10, '20', 'Bathing Towels Ordinary', 'utRj61GBM9KHYLEnpOtOwXIq7Q897BryyCZEal6c.jpg', 40.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-07 16:49:14', '2023-07-07 16:49:14'),
(42, 8, 4, '6', 'Socks', '8TCvVB4h9ODI3FqpMg51qOnkrSBi0J0U4AsXVXBF.jpg', 5.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-07 17:24:00', '2023-07-07 17:24:00'),
(43, 8, 10, '20', 'Admin Uniform Set', 'SEbgsa50pi7grn4jhbuVgas6VnroIRhKy2r1IqBo.jpg', 55.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-07 23:10:58', '2023-07-07 23:10:58'),
(44, 8, 10, '20', 'Baby Coat Set', '0oqiHaVPY1ZmkhgEzzkUtMGW1csAx6gUR9fyzx8v.jpg', 400.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-07 23:14:29', '2023-07-07 23:14:29'),
(45, 8, 10, '20', 'Baby Receiver', 'ke1DWs17qLfJk2L534ZcDU2ZUUCg5Rtggdtsh3Ub.jpg', 15.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-07 23:17:25', '2023-07-07 23:17:25'),
(46, 8, 10, '20', 'Baby Romper', 'GjojrR7aOPqYExxaRNldHVSG1ZbLMO3UJio3d7lk.jpg', 15.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-07 23:19:35', '2023-07-07 23:19:35'),
(47, 8, 10, '20', 'Baby Vest', '5KfeNVE5VGAmiNKI37upLQ2FilFVGOhoKIPZIdF3.jpg', 10.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-07 23:22:40', '2023-07-07 23:23:41'),
(48, 8, 10, '20', 'Baby Walker', '8Ca9CHBjvxWmFOd6dCsXC3zQqHHhnA7Fx1rgRwLu.jpg', 50.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-07 23:27:16', '2023-07-07 23:27:16'),
(49, 8, 10, '20', 'Bags Leather', 'OBE6yDhObTktAWh1PpTDCy9jFsCe0rr9ceNZdmFf.jpg', 50.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-07 23:29:48', '2023-07-07 23:29:48'),
(50, 8, 10, '20', 'Bathing Mat', 'l7wNBO8Pb49RClyRhtSuDsNA5JCBWLGzQ4RHSD5Q.jpg', 30.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-07 23:32:58', '2023-07-07 23:32:58'),
(51, 8, 10, '20', 'Bed Frill', 'B9j8SA9D9hO2RzqtaOfPwrkMnWdERHAaP1Jt1w3q.jpg', 30.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-07 23:36:38', '2023-07-07 23:38:30'),
(52, 8, 10, '20', 'Bedsheets (Double)', 'TmSKyyKDSY4tIIBTmZwXJ65Yvc40bA8xi29VHW3g.jpg', 50.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-07 23:41:23', '2023-07-07 23:41:23'),
(53, 8, 10, '20', 'Bedsheets (Medium)', 'QLlFaRBBjuC7iLTOHl32Pvs2mZrLwe7QtCXDR7cR.jpg', 45.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-07 23:43:29', '2023-07-07 23:43:29'),
(54, 8, 10, '20', 'Bedsheets (Queen/King)', 'YJKCwfHNK2sByxKQLCX2TyBVzOQfdBq7FP83lOqD.jpg', 60.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-07 23:44:53', '2023-07-07 23:44:53'),
(55, 8, 10, '20', 'Bedsheet (Single)', 'S2sYDk1vNQxjPKnsC8EfutzAw6zUQcltZ0qByXN0.jpg', 40.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-07 23:46:44', '2023-07-07 23:47:25'),
(56, 8, 10, '20', 'Bedspread (Light)', 'xi97S4l5TI1OddGUIMxSV2qrNpDIgNpLTLktlLkO.jpg', 60.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-07 23:50:59', '2023-07-07 23:50:59'),
(57, 8, 10, '20', 'Bedspread Double/Blanket', 'Eq2AMV8ETvdzNZRFiPRho8dX94rK0sb6GnicDzZU.jpg', 90.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-07 23:53:10', '2023-07-07 23:53:10'),
(58, 8, 10, '20', 'Bedspread Medium Blanket', 'QXV4BV3RFpP9oO9P6oVyKWTyUFw2mbtB3Z0wg6UP.jpg', 80.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-07 23:54:37', '2023-07-07 23:54:37'),
(59, 8, 10, '20', 'Bedspread Queen/King', 'mlUsINQ349mKARG61DuixpiZG76CvQYBwsnwjUxd.jpg', 100.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-07 23:57:40', '2023-07-07 23:57:40'),
(60, 8, 10, '20', 'Belt', 'mf8FWVTVDbEnj5YFLMbq6dBClnkrAvOcFfPphjXV.jpg', 15.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-08 00:00:02', '2023-07-08 00:00:02'),
(61, 8, 10, '20', 'Leather Belt', 'I1ZJhaMCyi8ksU1kZylq8hmxTw06TPj6s1mbbQln.jpg', 40.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-08 00:01:28', '2023-07-08 00:03:40'),
(62, 8, 3, '13', 'Blanket (Double)', 'xD1vhyt2hfGdJ7O2WBfYtdGF1x6jxSk7b1tqMy5M.jpg', 65.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-08 23:08:08', '2023-07-08 23:08:08'),
(63, 8, 3, '13', 'Bathroom Mats', 'HPcYywvsveU6R4xPhbDAkuy39HSCLPICjuX7Ih5e.jpg', 30.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-08 23:09:54', '2023-07-08 23:09:54'),
(64, 8, 3, '10', 'Jackets', '6hOy9IJyFPSrQSptXtQVB2ETcwoBPvwu1tvuWzqB.jpg', 50.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-08 23:24:58', '2023-07-08 23:24:58'),
(65, 8, 3, '11', 'Dress', 'vQxfj39GYLfJMBmJToeMw0PwtljXSzG9FBIWzkm6.jpg', 45.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-08 23:25:46', '2023-07-08 23:25:46'),
(66, 8, 3, '11', 'Ladies Pants', 'AvsRBsEkGfyWPWvCoZWAKMBVQs2dhR0PxhPZJSfp.jpg', 35.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-08 23:26:56', '2023-07-08 23:26:56'),
(67, 8, 3, '10', 'Punjabi', 'WPBoWpuW0bVcs9YW5BZTcXrSlCIdPM0ZAsuMt9Cn.jpg', 55.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-08 23:27:38', '2023-07-08 23:27:38'),
(68, 8, 3, '10', 'Mens Jeans', 'jf0xHQhikq2MOWt3J8ef69FRxT29Zo3MTPCGHAS7.jpg', 35.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-08 23:28:22', '2023-07-08 23:28:22'),
(69, 8, 3, '10', 'T-shirts', 'ZgY2zhigAiDqJimr7szgplQ5wqUPfGYFzqTNp8Z2.jpg', 25.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-08 23:29:16', '2023-07-08 23:29:16'),
(70, 8, 3, '10', 'Men\'s Shorts', 'Om6vlbHdEvfwghHxKZZFMIfj98zmNZFRfjM3NsVL.jpg', 15.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-08 23:30:09', '2023-07-08 23:30:09'),
(71, 8, 3, '10', 'Sweaters', 'kllJ2Zfsu1CViuJFZ0ZDx6t6adFS7g9NThNwvr0E.jpg', 20.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-08 23:31:31', '2023-07-08 23:31:31'),
(72, 8, 3, '11', 'Ladies Tops', 'bb62JDq6y7UrXfLGOmIsYGtz6LO4U1gPl2NWUlzc.jpg', 25.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-08 23:32:18', '2023-07-08 23:32:18'),
(73, 8, 3, '10', 'Ball Tie', 'w19gCWNXJw8UoTxxxm6kmVmcrSxmKDDg6CAE1CQV.jpg', 15.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-08 23:32:59', '2023-07-08 23:32:59'),
(74, 8, 4, '6', 'T-shirts', 'WjSKIZHoz96I33GIuxTkKd1O9K7uMlctoyjM4cY6.jpg', 15.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-08 23:34:09', '2023-07-08 23:34:09'),
(75, 8, 4, '6', 'Jacket', 'qRSEOutWvCdMiAZVNIRjByIBahNix4HGwVRBXdX4.jpg', 55.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-08 23:35:33', '2023-07-08 23:35:33'),
(76, 8, 4, '6', 'Sweaters', 'l9lEjxMD5t6JuFsvunnDWrnlN9rkoNNaHR3nVhJe.jpg', 25.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-08 23:36:10', '2023-07-08 23:36:10'),
(77, 8, 4, '6', 'Men\'s Jeans', 'zSHrjwzVqoP7xt1vItNqHGHo725wurMOdmwmit8M.jpg', 20.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-08 23:41:07', '2023-07-08 23:41:07'),
(78, 8, 4, '6', 'Punjabi', '2CqejKY7PdcKfILv2feWilZ2qicI58ZKLWi5UNAT.jpg', 35.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-08 23:41:59', '2023-07-08 23:41:59'),
(79, 8, 4, '9', 'Bathroom Towels', 'XOsmAJdA1zqf8IjR89iSZt9mk7u9k1EshVnc2jVo.jpg', 25.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-08 23:44:10', '2023-07-08 23:44:10'),
(80, 8, 4, '8', 'Kid\'s Dress', 'ocK0clf03cQ0qzH8XIcmNOmwOop66K6og8u4Mqn3.jpg', 30.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-08 23:45:40', '2023-07-08 23:45:40'),
(81, 8, 4, '6', 'Ball Tie', 'ztYdS3rEOLRkn7cqTjbKv3MlnFT1tyvInJmvmWtB.jpg', 15.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-08 23:46:24', '2023-07-08 23:46:24'),
(82, 8, 4, '6', 'Belt', 'AiNssBwjQEXZuPDBdqIkbckKqj05zGpe14GL8zOB.jpg', 15.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-08 23:47:12', '2023-07-08 23:47:12'),
(83, 8, 4, '6', 'Belt Leather', 'gtJVst2UeWv4TBNxY3vcQjLW4YlqVD0EN9Q2L2KU.jpg', 20.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-08 23:47:58', '2023-07-08 23:47:58'),
(84, 8, 4, '9', 'Bedsheets Double', 'ArnEHBKSoxlls0tIymKGgcEspwhdz3Jk9npjPi56.jpg', 45.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-08 23:48:58', '2023-07-08 23:48:58'),
(85, 8, 4, '9', 'Bedsheets Queen/King', 'bW0o7MEPcZVVBEnnn1ApZOT1NBlgfiXNLK8ayR4C.jpg', 65.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-08 23:50:06', '2023-07-08 23:50:06'),
(86, 8, 4, '8', 'Baby Vest', 'YS3G6KVD4n4WCUaiLt1xLVLKXJCwDOzTtsxlPg78.jpg', 15.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-08 23:53:18', '2023-07-08 23:53:18'),
(87, 8, 4, '7', 'Hand Bags', 'pZ919XKX6KiIWFsmCX6Z82MZi925NVnkXbgIfdWb.jpg', 30.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-08 23:54:22', '2023-07-08 23:54:22'),
(88, 8, 4, '8', 'Baby Stroller', 'C76N201QDkpld0krXqZkAA5Yt08ZsKo6vnAxruDv.jpg', 55.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-08 23:55:26', '2023-07-08 23:55:26'),
(89, 8, 4, '9', 'Bedspread King', 'x39ABPzdnnjRBRkHB79Bj8Cxjr3l3gzH7hLy6M1i.jpg', 80.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-08 23:56:36', '2023-07-08 23:56:36'),
(90, 8, 4, '9', 'Bedspread Queen', '3N8i6bSczU3hmA1bH2YNC71ZCeMOTNvxVleTBl4M.jpg', 70.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-08 23:58:03', '2023-07-08 23:58:03'),
(91, 8, 4, '9', 'Bedspread Double', '7DYCUBZxkrcnhwVXnpyS65bHRcVWtnlupWsvLa7q.jpg', 65.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-08 23:59:16', '2023-07-08 23:59:31'),
(92, 8, 3, '12', 'Baby Walker', 'Qx9wUHmRTtcNqzN3dUEVKYGQXAMLkiJaD8yokk3I.jpg', 55.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 08:02:16', '2023-07-09 08:02:16'),
(93, 8, 10, '21', 'Cap/Head Sock', 'xtYi7D7xXN7Fbtv2jSIZH8Yzj5pcWu6MEvosUyaS.jpg', 15.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 08:11:28', '2023-07-09 08:11:28'),
(94, 8, 2, '17', 'Caps/Head Sock', '6tmZM9zLZE4E4WsVIMNcYLImDvDSsBDd1nzOux4C.jpg', 15.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 08:12:26', '2023-07-09 08:12:26'),
(95, 8, 4, '6', 'Cap/Head Sock', 'PBJXneTZgelqEanJrN7z5D1vh568PgkFjNO53DHC.jpg', 15.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 08:13:15', '2023-07-09 08:13:15'),
(97, 8, 10, '23', 'Baby Walker', 'fqzhzlvY3KIOp997038MpxOAG55McS2zPIAHLIaY.jpg', 55.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 08:17:42', '2023-07-09 08:17:42'),
(98, 8, 4, '8', 'Baby Receiver', 'oS0EPSvlxhYQQyVYCPCSmAzuW0hKxwXEVOnwsJLN.jpg', 15.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 08:19:15', '2023-07-09 08:19:15'),
(99, 8, 2, '16', 'Baby Receiver', 'hGGhZojxyJHUTRib1NDWYwbfVI9UvsIM9j4kqE2D.jpg', 15.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 08:21:25', '2023-07-09 08:21:25'),
(100, 8, 2, '16', 'Baby Vests', 'QPY2nyq03MCk8v2dAM2oGpY1S5lS6VAqjxOCic2u.jpg', 20.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 08:23:14', '2023-07-09 08:23:14'),
(101, 8, 10, '22', 'Dress', 'yc7bOcdsKLo1jqk6r0E4hH6MhK11L9ys7zvmM6MC.jpg', 45.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 08:25:27', '2023-07-09 08:25:27'),
(102, 8, 10, '22', 'Ladies Pants', 'Jr5bELqrkaUMAyEtDUrwJDZHBJLo8xj6DMbiRVpY.jpg', 30.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 08:26:04', '2023-07-09 08:26:04'),
(103, 8, 10, '22', 'Ladies Tops', '0e4BM2S2NfCfvIKkfMpqWmWT7XN3yTUrkT31QTnu.jpg', 30.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 08:26:43', '2023-07-09 08:26:43'),
(104, 8, 10, '21', 'T-shirt', 'wWSNwqpxVk96pgikqN35oFIOwdGLSPkfvQnPnSZc.jpg', 20.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 08:27:26', '2023-07-09 08:27:26'),
(105, 8, 10, '21', 'Jacket', 'NRwjbQqp2rfx446aA7yxPKkcseqXertFE6GI1YIK.jpg', 45.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 08:28:19', '2023-07-09 08:28:19'),
(106, 8, 10, '23', 'Baby Receiver', 'IptAjg1DvmWfNDbMq41dIjPcGtP51rnNONUEohLM.jpg', 20.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 08:32:09', '2023-07-09 08:32:09'),
(107, 8, 10, '23', 'Baby Romper', 'IpPenvdl8Mi2zlTpa04fsDMT5vidWikFfc3D4tvN.jpg', 15.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 08:33:02', '2023-07-09 08:33:02'),
(108, 8, 10, '23', 'Baby Vest', 'Oaj8RawqJqcxc3WF7y3ep3p8twJwhTUStxm1FOLR.jpg', 15.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 08:34:08', '2023-07-09 08:34:08'),
(109, 8, 10, '21', 'Football Vest', 'xEGDgWXaBRN8EE6Nj7Kr81WGt5WC6lm3IwdOe2Ib.jpg', 15.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 08:41:18', '2023-07-09 08:41:18'),
(110, 8, 10, '21', 'Dust Coats', 'Oti0o0A61IE0mcmykSgMQuqR4LfPTfQCig8ltlNe.jpg', 30.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 08:43:22', '2023-07-09 08:43:22'),
(111, 8, 10, '22', 'Graduation Gown', '5ZQHZZAESwdio0g7W7BiLTKvSK1LlsMWwYyxf2T0.jpg', 50.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 08:55:02', '2023-07-09 08:55:02'),
(112, 8, 4, '7', 'Graduation Gown', 'JJinmxD1zcWOS73iMZcOaKrVAKlop7B0gout7pi7.jpg', 50.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 08:55:38', '2023-07-09 08:55:38'),
(113, 8, 3, '11', 'Graduation Gown', 'IoPutKe6bwhQDtXHPqAY46AD49IvMJdRlFcfB91l.jpg', 50.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 08:56:17', '2023-07-09 08:56:17'),
(114, 8, 5, '5', 'Graduation Gown', 'bHAZbQnqachAYRZrvgSZmQr0JbU9DYT4QEwXuDMQ.jpg', 45.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 08:56:52', '2023-07-09 08:56:52'),
(115, 8, 10, '22', 'Hat', 'pOpXMBsw2Gg8uKDgJkmlM4CKA9mwQYFfKZVdOHaF.jpg', 15.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 09:08:38', '2023-07-09 09:08:38'),
(116, 8, 3, '11', 'Hat', 'OYSxPN6yQbnaNkQHceWgQuMvYS7Wd4z84YVT7If1.jpg', 15.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 09:09:10', '2023-07-09 09:09:10'),
(117, 8, 4, '7', 'Hat', 'ykkhEBBBCZhUSFMWrVr9gddriLfEvpcPCbtVTj3q.jpg', 15.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 09:11:08', '2023-07-09 09:11:08'),
(118, 8, 2, '15', 'Hat', 'h4VEZ7NSkUS9xYuTazdhQgaIykJww5734DEOfECd.jpg', 15.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 09:12:36', '2023-07-09 09:12:36'),
(119, 8, 10, '21', 'Jacket Suede', 'tkfXnI4aBf8HMt8GHM5N6rdjIqQL8r51CfDtmx7Q.jpg', 70.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 09:16:42', '2023-07-09 09:24:35'),
(120, 8, 2, '14', 'Jacket Suede', 'pF5OX5VneSgn2fCWrEdVAiIgSA5V0kmymANhQer3.jpg', 70.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 09:17:41', '2023-07-09 09:25:21'),
(121, 8, 2, '14', 'Leather Jacket', 'TV6uENrAWh3d6oLasWBYG24cyxECNHVxHYGimONu.jpg', 65.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 09:19:34', '2023-07-09 09:24:52'),
(122, 8, 10, '21', 'Jean Jacket (long)', 'DP5F4DLdZWxC5LbiHKFzqmiO5obXlX0DxtjQcu8S.jpg', 40.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 09:23:03', '2023-07-09 09:23:03'),
(123, 8, 3, '10', 'Jacket Suede', 'bYe4CUBWl4sjXe0hkLc5AumyEkIv25Onmof4Aiao.jpg', 70.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 09:26:26', '2023-07-09 09:26:26'),
(124, 8, 4, '6', 'Jacket Suede', 'WnAu0c2c3f2dnYdsj5yBGxwLrKBym9aGPVTO5Jlz.jpg', 70.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 09:28:00', '2023-07-09 09:28:00'),
(125, 8, 5, '2', 'Jacket Suede', 'HJFJxHe3V2aCiYpjzaT6x6IaaaG3gRyromEg1d4d.jpg', 50.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 09:28:59', '2023-07-09 09:28:59'),
(126, 8, 10, '20', 'Jacket Suede', 'xMlZg5u7eUBfEH1eVZIJg7fJkQu9WCnxYCWT8Fyq.jpg', 70.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 09:29:38', '2023-07-09 09:29:38'),
(127, 8, 2, '14', 'Jeans Suit', 'cjh30XU9dNV0Z2Z7TX92SBe9hlYAmVwReFpS5Grg.jpg', 45.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 09:33:58', '2023-07-09 09:36:24'),
(128, 8, 3, '10', 'Jesns Suit', 'RxDLSlsq4ihdEjNgKt9ALHlEvod2SDeLZqCPSs68.jpg', 45.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 09:39:32', '2023-07-09 09:39:32'),
(129, 8, 4, '6', 'Jeans Suit', 'Fi0IHoXuQF78Z9aoCrROZqcOiTDvrTtb7Gdhilrp.jpg', 45.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 09:40:21', '2023-07-09 09:40:21'),
(130, 8, 10, '21', 'Jeans Suit', 'dvyKj1B7kuLBpDQYcibpkJ6V1fGX7a2d46Bm7yeU.jpg', 70.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 09:41:18', '2023-07-09 09:41:18'),
(131, 8, 2, '14', 'Combat Uniform', 'ttsTU1Wx0jE5Lm3ZheSCyx5FUepHohRQEJdZQycU.jpg', 45.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 09:48:13', '2023-07-09 09:48:13'),
(132, 8, 3, '10', 'Combat Uniform', 'ZTNUCkl57te1bJnjz2ClMS2bun145qXV7WGCpEqR.jpg', 45.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 09:48:42', '2023-07-09 09:48:42'),
(133, 8, 4, '6', 'Combat Uniform', '3TJq4eQfxmiqMrISym31fPwWnxjNlYS869WGcR6f.jpg', 45.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 09:49:12', '2023-07-09 09:49:12'),
(134, 8, 10, '20', 'Combat Uniform', 'pXEYUKCk3HRAPEp8zyIDJIUKOxQWMQw7BNr9hXsJ.jpg', 45.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 09:49:55', '2023-07-09 09:49:55'),
(135, 8, 2, '15', 'Combat Uniform', 'ghzhNPsbfrnliQBo3uB1PdEv8jwbEDwDFcaQLzBC.jpg', 45.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 09:50:33', '2023-07-09 09:50:33'),
(136, 8, 3, '11', 'Combat Uniform', 'sZ3v79GEpkAZwib45W4SaITEZngZEYp4wLfP2hgN.jpg', 45.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 09:51:57', '2023-07-09 09:51:57'),
(137, 8, 4, '7', 'Combat Uniform', 'l1tNvflsCxopnrjOs8fJsnVHEX5S6W3uvbg1zDhx.jpg', 50.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 09:52:30', '2023-07-09 09:52:30'),
(138, 8, 10, '22', 'Combat Uniform', 'd5l5SwCzYgxdPkmRsa7ihF8ba7PJW5BAuXz6rEaB.jpg', 50.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 09:53:05', '2023-07-09 09:53:05'),
(139, 8, 2, '15', 'Dinner Dress', 'f40biYOnRYmNjOOOHJJQtjpBYJZagd5HfdlEzK8d.jpg', 55.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 09:56:50', '2023-07-09 09:56:50'),
(140, 8, 3, '11', 'Dinner Dress', '46Jp3RRr6tLXDkGzqse1L60jgodvhSSHl8AWPtsS.jpg', 55.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 09:57:26', '2023-07-09 09:57:26'),
(141, 8, 4, '7', 'Dinner Dress', '520mJZWeOmS3ZqVTdZJYyaVjJoQJtWw5fKX6jGwp.jpg', 70.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 09:58:10', '2023-07-09 09:58:10'),
(142, 8, 10, '22', 'Dinner', 'OPDd42aAb09szg6HPd8wL1LRftgDPSAc8nR2zx5i.jpg', 55.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 09:59:13', '2023-07-09 09:59:13'),
(143, 8, 2, '14', 'Hoodie', 'fqZcMGpxcydgh0TNhI4VuGxpB6XstCJic2frnmC1.jpg', 30.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 10:01:02', '2023-07-09 10:01:02'),
(144, 8, 3, '10', 'Hoodie', 'sSqKejAZ0rB0WTTQQP1euFSlRiISpTuUavL4EGbU.jpg', 30.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 10:01:40', '2023-07-09 10:01:40'),
(145, 8, 4, '6', 'Hoodie', 'nAnq6xhm23vNMPIWqsvcEzDOCYOLfa7lY5mbe3mJ.jpg', 30.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 10:02:18', '2023-07-09 10:02:18'),
(146, 8, 10, '21', 'Hoodie', 'ZH93aZ87luILN0ECPUleCQX81w9eCqerWfv2dd1x.jpg', 30.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 10:02:55', '2023-07-09 10:02:55'),
(147, 8, 5, '3', 'Hoodie', 'OsRzCjA2Z5g9LrOAduKztkAojw0VWeHw8cSUJgmK.jpg', 20.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 10:03:41', '2023-07-09 10:03:41'),
(148, 8, 5, '2', 'Hoodie', 'zHr1ymCW97hqUCgMYKVxM7FWYujwF52nBe0y7vqq.jpg', 20.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 10:04:05', '2023-07-09 10:04:05'),
(149, 8, 2, '14', 'Jacket Cordral', 'jU017WKflj0cXsalH3AD84xPQ3gE6i4FPlN2yZUc.jpg', 35.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 10:06:35', '2023-07-09 10:07:13'),
(150, 8, 3, '10', 'Jacket Cordral', 'UqBHp9lIOPRzdx0NcDglbhwUOWeMJX2Tp6CEAWTL.jpg', 35.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 10:10:44', '2023-07-09 10:10:44'),
(152, 8, 4, '6', 'Jacket Cordrol', 'st9AHKXvtgwIZVrBHpzkHI75Rv2fv73BGvPVSkAO.jpg', 35.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 10:13:39', '2023-07-09 10:13:39'),
(153, 8, 5, '2', 'Jacket Cordrale', 'IYcOFUBX32pdC8MKdUTyHwuMBay3Gy0eoi01KVlz.jpg', 20.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 10:14:42', '2023-07-09 10:14:42'),
(154, 8, 10, '21', 'Jacket Cordral', 'u3xQrFpAdlxBTS8zeQIslkj4yihGcCtNca2FuxVg.jpg', 35.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 10:15:17', '2023-07-09 10:15:17'),
(155, 8, 2, '16', 'Baby Jean Dress', 'HWMrhdS7dtxtD4W98ij4ErtLNlb3SBrAIbaUS0DO.jpg', 25.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 10:18:34', '2023-07-09 10:18:34'),
(156, 8, 3, '12', 'Baby Jean Dress', 'R6C5c4ipLqhpDLNnmNZUGbppKJDk03IyYToEr5Cf.jpg', 25.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 10:19:20', '2023-07-09 10:19:20'),
(157, 8, 4, '8', 'Baby Jean Dress', '6OMu1EALkDxnEsB3IBQEo1yBOmv19bgt6iVgP9iY.jpg', 35.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 10:20:01', '2023-07-09 10:20:01'),
(158, 8, 10, '23', 'Baby Jean Dress', 'EPe9Wry9lvldjLXWaiFKv1tvJ8cJOnuIhirDxTNR.jpg', 25.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 10:20:38', '2023-07-09 10:20:38'),
(159, 8, 2, '14', 'Track Bottom', 'OJWXUCyNyqfPxliWVCpsVaOLRqNwCZkmSwBaOBoH.jpg', 30.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 14:42:21', '2023-07-09 14:42:21'),
(160, 8, 3, '10', 'Track Bottom', 'Kw5ty0k95sb0uc0M36AGSSo2TEhqzpsghu3ylZ4p.jpg', 30.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 14:42:53', '2023-07-09 14:42:53'),
(161, 8, 4, '6', 'Track Bottom', 'aOjBUpMDsp75pYcIhEj6Kg6VhiQGqVbpcWKuiFjk.jpg', 30.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 14:43:59', '2023-07-09 14:43:59'),
(162, 8, 5, '2', 'Track Bottom', 'PmvU3OnU3gFGYxeUlKSw2cdlkQOXEtA9gA87Btjv.jpg', 30.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 14:44:34', '2023-07-09 14:44:34'),
(163, 8, 10, '21', 'Track Bottom', '7ejREuDio2A363oLASTPCfz8FaUX7jPBPIILnht8.jpg', 30.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 14:45:20', '2023-07-09 14:45:20'),
(164, 8, 2, '15', 'Track Bottom', '8rgI2qD0b0QgMvRwztCYtXoIo5mRbpKA0HyMW1l2.jpg', 30.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 14:46:01', '2023-07-09 14:46:01'),
(166, 8, 2, '15', 'Track Suit', '3Wq9NFfhrBuwQNEpuwcqPYr78ieMmcFmQPT1sCDe.jpg', 45.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 14:52:32', '2023-07-09 14:52:32'),
(167, 8, 3, '11', 'Track Suit', 'ABczC1XIsW3R9TVCGl1x8euPvAPqN7ZyVhdeDsO0.jpg', 45.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 14:53:36', '2023-07-09 14:53:36'),
(168, 8, 4, '7', 'Track Suit', 'kirRaLsd76Xv6WaP6TB1gzv0lapp26VxH2ZmBfNJ.jpg', 60.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 14:54:34', '2023-07-09 14:54:34'),
(169, 8, 10, '22', 'Track Suit', 'smMh0rwDnOwRppOrrCOzJNJZy0dubT9Rf0iOvhoo.jpg', 45.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 14:55:08', '2023-07-09 14:55:08'),
(170, 8, 2, '14', 'Trouser Ordinary', '1HUCcIiSmjeJX8FAp94Lkg88sy8CIHDdj6gQzYFv.jpg', 30.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 14:58:36', '2023-07-09 14:58:36'),
(171, 8, 3, '10', 'Trouser Ordinary', 'RCo4b8LEzILz8df1LQy9PpH9h8CPoxZzS3119ipK.jpg', 30.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 14:59:50', '2023-07-09 14:59:50'),
(172, 8, 4, '6', 'Trousers Ordinary', 'zkxiZXWKgnRWEsySlzrP274IZGM8iQaRvgPoEdjv.jpg', 50.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 15:00:53', '2023-07-09 15:00:53'),
(173, 8, 10, '21', 'Trousers Ordinary', 'iJUa3whFb4n1XpXPwYUanzayHwpE3whzbs2tNBA3.jpg', 30.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 15:01:53', '2023-07-09 15:01:53'),
(174, 8, 2, '14', 'Trousers Jean', 'zu4nvw5V7yQXYAnb8iFhCqqelWC7jJSkTp1eiWvX.jpg', 35.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 15:04:16', '2023-07-09 15:06:44'),
(175, 8, 3, '10', 'Trousers Jean', 'gQKnrSMS4OeqsUQNV6z9RU1OEhsd79pf3fs4LoMg.jpg', 35.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 15:05:03', '2023-07-09 15:07:17'),
(176, 8, 4, '7', 'Trousers Jean', '54x98SDQRZs6013G6xHUF02KdsZSdrWiga8ufmcR.jpg', 50.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 15:08:11', '2023-07-09 15:08:11'),
(177, 8, 10, '22', 'Trousers Jean', 'TORGTkjPfmqnBlwIAN8XItIwrsLE2MEUfbBkvZ6p.jpg', 35.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 15:09:22', '2023-07-09 15:09:22'),
(178, 8, 2, '14', 'Waist Coat Ordinary', 'OwbOHZKzYlwxw2FolDgSe6KDZh61zMrAoTOT27na.jpg', 20.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 15:11:56', '2023-07-09 15:11:56'),
(179, 8, 3, '10', 'Waist Coat Ordinary', 't85tL6a432gXYnqGaTcmNICh3UvGarxqQN2Ay43W.jpg', 20.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 15:12:31', '2023-07-09 15:12:31'),
(180, 8, 4, '6', 'Waist Coat Ordinary', '7opZslHi58eIRCXXIt4u5mjcJubMZM3fy5BxgEb8.jpg', 45.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 15:13:14', '2023-07-09 15:13:14'),
(181, 8, 10, '21', 'Waist Coat Ordinary', 'rwsIxrLvCw3elcoZs5y4AKhmGAQdlq6gzfEKRccQ.jpg', 20.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 15:14:11', '2023-07-09 15:14:11'),
(182, 8, 2, '15', 'Waist Coat Jeans', 'U44yIF8n8MrhhS6cZJmA8ePG6wqjLX7RR6AiYaRl.jpg', 20.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 15:16:26', '2023-07-09 15:16:26'),
(183, 8, 3, '11', 'Waist Coat Jeans', 'BEbrSyTONZ66i6XSFipQ0KEI5WNZPjCVFm5u2k2C.jpg', 20.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 15:17:11', '2023-07-09 15:17:11'),
(184, 8, 4, '7', 'Waist Coat Jeans', 'bvByPNwMnCVY7Xb5uPS3DuliKuwHfiUbNk6YYz2k.jpg', 35.00, 35.00, 0.00, 'NA', 1, NULL, '2023-07-09 15:18:26', '2023-07-09 15:18:45'),
(185, 8, 10, '22', 'Waist Coat Jeans', 'n63s2ThVWukoN7gedSZlLoxOuWrWRA8HBDgFRFLe.jpg', 20.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 15:21:00', '2023-07-09 15:21:00'),
(186, 8, 5, '3', 'Waist Coat Jean', 'R1rNcY3Hfm5C2WGpOZnvEnB0ab4C2yJoagHyMecZ.jpg', 15.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 15:21:45', '2023-07-09 15:21:45'),
(187, 8, 2, '14', 'Waist Coat Leather', 'T7mJdSPX4Zhmiq957bx5NchGfBAKKQGOoieoLw6V.jpg', 25.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 15:24:33', '2023-07-09 15:24:33'),
(189, 8, 3, '10', 'Waist Coat Leather', 'DKA3qdwLxlFeStUvxe6TXf09MTzrJFU4340hNYt5.jpg', 25.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 15:27:06', '2023-07-09 15:27:06'),
(190, 8, 4, '6', 'Waist Coat Leather', 'jBfK9sJXmrDHw9551dmZyI7YjN4HVSJ5HANzrpBx.jpg', 35.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 15:28:26', '2023-07-09 15:28:26'),
(191, 8, 5, '2', 'Waist Coat Leather', 'P14z5ckKEwbCxSvWLyAg9W6ade52bDTGgDjKSHie.jpg', 20.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 15:29:20', '2023-07-09 15:29:20'),
(192, 8, 10, '21', 'Waist Coat Leather', 'gN0py6ZbVQP3mjtPiz2fCkwlhX8V2V5MAlxudrmj.jpg', 25.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 15:30:18', '2023-07-09 15:30:18'),
(193, 8, 2, '15', 'Wedding Dress 2 Pc', 'BESxCIAzLDe86XCEY9oSZb38LPSUF44ZjRaGX7lb.jpg', 400.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 15:39:29', '2023-07-09 15:41:51'),
(194, 8, 3, '11', 'Wedding Dress 2 Pc', 'FgA06Fegj0xYde42kiJDG8mjppxH46ExE6xXzRQ7.jpg', 400.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 15:43:59', '2023-07-09 15:43:59'),
(195, 8, 4, '7', 'Wedding Dress 2pc', 'aBOhzMUHdd0rwFS5m0lXLCQ8tL9I1D2mhKTw6Gbr.jpg', 500.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 15:46:14', '2023-07-09 15:46:14'),
(196, 8, 5, '3', 'Wedding Dress 2pc', 'DMLG0N6FwIEizZJ9nky36YVaQAKZKlBp31WvcPMF.jpg', 200.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 15:48:04', '2023-07-09 15:48:04'),
(197, 8, 10, '22', 'Wedding Dress 2pc', 'obADejLLNt3PpThbOzTGY4LWNU0gbVGuUN5KsRS3.jpg', 400.00, 0.00, 0.00, 'NA', 1, NULL, '2023-07-09 15:49:23', '2023-07-09 15:49:23');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax` double(10,2) DEFAULT NULL,
  `delivery_charge` double(10,2) DEFAULT NULL,
  `currencySymbol` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currencySide` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currencyCode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `appDirection` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sms_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sms_creds` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `have_shop` tinyint NOT NULL,
  `findType` tinyint NOT NULL DEFAULT '0',
  `reset_pwd` tinyint NOT NULL DEFAULT '0',
  `user_login` tinyint NOT NULL DEFAULT '0',
  `freelancer_login` tinyint NOT NULL DEFAULT '0',
  `user_verify_with` tinyint NOT NULL DEFAULT '0',
  `search_radius` double(10,2) NOT NULL DEFAULT '10.00',
  `country_modal` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_country_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_city_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default_delivery_zip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `social` text COLLATE utf8mb4_unicode_ci,
  `app_color` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `app_status` tinyint NOT NULL DEFAULT '1',
  `fcm_token` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '0',
  `allowDistance` double NOT NULL,
  `searchResultKind` tinyint NOT NULL DEFAULT '0',
  `extra_field` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `name`, `mobile`, `email`, `address`, `city`, `state`, `zip`, `country`, `tax`, `delivery_charge`, `currencySymbol`, `currencySide`, `currencyCode`, `appDirection`, `logo`, `sms_name`, `sms_creds`, `have_shop`, `findType`, `reset_pwd`, `user_login`, `freelancer_login`, `user_verify_with`, `search_radius`, `country_modal`, `default_country_code`, `default_city_id`, `default_delivery_zip`, `social`, `app_color`, `app_status`, `fcm_token`, `status`, `allowDistance`, `searchResultKind`, `extra_field`, `created_at`, `updated_at`) VALUES
(1, 'Wash Zambia Limited', '260969666699', 'support@washzambia.com', 'Plot 5 Lubambe Road, Northmead Lusaka ZM, 10101, Zambia', 'Lusaka', 'Lusaka', '10101', 'Zambia', 5.00, 5.00, 'ZMW', 'left', 'ZMW', 'lrt', 'bLwhfFDG5bDdZUH7hoPmyPW3xPgqbghAbZE7rZzX.jpg', '2', '{\"twilloCreds\":{\"sid\":\"\",\"token\":\"\",\"from\":\"\"},\"msg\":{\"key\":\"\",\"sender\":\"\"}}', 1, 0, 0, 0, 1, 0, 50.00, '[{\"isChecked\":true,\"country_code\":\"PK\",\"country_name\":\"Pakistan\",\"dialling_code\":\"92\"},{\"isChecked\":true,\"country_code\":\"ZM\",\"country_name\":\"Zambia\",\"dialling_code\":\"260\"}]', '260', '1', '10101', '{\"website\":\"https://washzambia.com/\",\"playstore\":\"#\",\"appstore\":\"#\",\"facebook\":\"https://www.facebook.com/washonyourphone/\",\"twitter\":\"https://twitter.com/WashZambia?ref_src=twsrc%5Egoogle%7Ctwcamp%5Eserp%7Ctwgr%5Eauthor\",\"instagram\":\"https://www.instagram.com/wash_zambia/?hl=en\"}', '#16742d', 1, '#', 1, 50, 0, NULL, '2023-06-20 09:12:48', '2023-07-08 11:54:27');

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` bigint UNSIGNED NOT NULL,
  `uid` int NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories` text COLLATE utf8mb4_unicode_ci,
  `address` text COLLATE utf8mb4_unicode_ci,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `about` text COLLATE utf8mb4_unicode_ci,
  `rating` double(10,2) NOT NULL DEFAULT '0.00',
  `total_rating` int NOT NULL,
  `timing` text COLLATE utf8mb4_unicode_ci,
  `images` text COLLATE utf8mb4_unicode_ci,
  `zipcode` text COLLATE utf8mb4_unicode_ci,
  `in_home` tinyint NOT NULL DEFAULT '1',
  `popular` tinyint NOT NULL DEFAULT '1',
  `extra_field` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `uid`, `name`, `cover`, `categories`, `address`, `lat`, `lng`, `cid`, `about`, `rating`, `total_rating`, `timing`, `images`, `zipcode`, `in_home`, `popular`, `extra_field`, `status`, `created_at`, `updated_at`) VALUES
(2, 8, 'Wash Zambia Limited', 'iRgwXMyfnrZaezV0ochYVFmHemArgBwLD0bamSOK.jpg', '2,3,4,5,10', 'Plot 5 Lubambe Road, Northmead Lusaka ZM,\n10101, Zambia', '-15.40453939', '28.29181731', '2', 'We are an App based Laundry and Dry Cleaning company aimed at providing you convenience of lifestyle right at your finger tips!', 2.00, 2, 'NA', 'NA', '10101', 1, 1, NULL, 1, '2023-06-28 04:28:33', '2023-07-08 23:38:47');

-- --------------------------------------------------------

--
-- Table structure for table `sub_categories`
--

CREATE TABLE `sub_categories` (
  `id` bigint UNSIGNED NOT NULL,
  `cate_id` int NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `extra_field` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sub_categories`
--

INSERT INTO `sub_categories` (`id`, `cate_id`, `name`, `cover`, `status`, `extra_field`, `created_at`, `updated_at`) VALUES
(1, 1, 'Pents only', 'YMATmGtnCmcd83eMYV5mr2y6u0znBKQniMIJnnA0.jpg', 1, NULL, '2023-06-20 20:31:31', '2023-06-20 20:31:31'),
(2, 5, 'Mens', 'v1F7nAVymgyEZk69FP31CL2Tvy7R8Lji6vTqxRH2.png', 1, NULL, '2023-06-21 21:51:56', '2023-06-21 21:51:56'),
(3, 5, 'Womens', 'KSoVRtGSLjySGBdlFVoGu9o42eUlERQdq042Gczu.png', 1, NULL, '2023-06-21 21:55:48', '2023-06-21 21:55:48'),
(4, 5, 'Childrens', 'FcMIyelnTfn5XxpgEyLjWQgP8WIFM0dMuV1Yfy2h.png', 1, NULL, '2023-06-21 21:56:46', '2023-06-21 21:56:46'),
(5, 5, 'Others', 'IR4S2qSiE6Uezux2aasEl1tJ62K6HHmEWXCN9e6v.png', 1, NULL, '2023-06-21 21:57:53', '2023-06-21 21:57:53'),
(6, 4, 'Mens', 'vDitWcuKjn7AGDU2OEYFveAgtvDaGO8JgZdNBPei.png', 1, NULL, '2023-06-21 22:00:06', '2023-06-21 22:00:06'),
(7, 4, 'Womens', 'mFMuXAJ8ZS9BO3twLlNw1CMjfUJHLWFyipeL9msV.png', 1, NULL, '2023-06-21 22:01:31', '2023-06-21 22:01:31'),
(8, 4, 'Childrens', 'vRX51ZtPquVGwNpsh012Tuak2VwW75E65wZKIa3w.png', 1, NULL, '2023-06-21 22:02:28', '2023-06-21 22:02:28'),
(9, 4, 'Others', 'Ew2t5Nw6MZHUI9VLRCGJPakrWov5Ji1g0FP51QQL.png', 1, NULL, '2023-06-21 22:03:04', '2023-06-21 22:03:04'),
(10, 3, 'Mens', '84IqR9PNXdzjRmWoHW9sMyCaKeuqrZW15FSXnYB4.png', 1, NULL, '2023-06-21 22:04:28', '2023-06-21 22:04:28'),
(11, 3, 'Women', 'MRZ6u4Rwl0EcbmcpDOITEJc0NwyrDtBKuaWv0iXY.png', 1, NULL, '2023-06-21 22:05:28', '2023-06-21 22:05:28'),
(12, 3, 'Childrens', 'mCnaWR6MATjfVIs0zrm3UcB6JLFunRb82QVRCKTR.png', 1, NULL, '2023-06-21 22:07:25', '2023-06-21 22:07:25'),
(13, 3, 'Others', 'fdlEczEbN68quuYvLIXsBNdYr3shoP9Qgos15H04.png', 1, NULL, '2023-06-21 22:08:57', '2023-06-21 22:08:57'),
(14, 2, 'Mens', 'VIWvUXc6VqauM6DYPiIeUKGieLbwc0x04Hg5lWau.png', 1, NULL, '2023-06-21 22:10:48', '2023-06-21 22:10:48'),
(15, 2, 'Womens', 'EyCSt9GMkSU5Q6bFFxLOeV2hdMES57kOhV1YKwYz.png', 1, NULL, '2023-06-21 22:12:27', '2023-06-21 22:12:27'),
(16, 2, 'Childrens', 'UzW06o3rpxe7uyIQ1oQDLTO2420W5UbCOz2NObzd.png', 1, NULL, '2023-06-21 22:13:17', '2023-06-21 22:13:17'),
(17, 2, 'Others', 'T1ijN6oRmpMRv7oJeoekYDzs5HfAp5A3iv1JScHN.png', 1, NULL, '2023-06-21 22:15:42', '2023-06-21 22:15:42'),
(18, 6, 'Dry Cleaning', '31HN2CNoZRPq9FSXTd6pFzblYfJw9aDPHEqrtLT0.png', 1, NULL, '2023-07-07 15:21:34', '2023-07-07 15:21:34'),
(20, 10, 'Others', 'Ldg9vo5Rukjvmfs39JeMgtqltNUnzrWXrVmGUdrf.jpg', 1, NULL, '2023-07-07 16:28:02', '2023-07-07 16:28:02'),
(21, 10, 'Men', 'OOJfJUhWDr1ZzHVGPlIPeRHlzkB1pAtKOsC32J8R.png', 1, NULL, '2023-07-08 22:44:26', '2023-07-08 22:44:26'),
(22, 10, 'Women', 'Q6zjMvrUS3UMQBnlXM92oaNCIVvFOIdbNJHZHCHD.png', 1, NULL, '2023-07-08 22:45:49', '2023-07-08 22:45:49'),
(23, 10, 'Children', 'EXdQZ7eb1v6ct0pei5lkvZ2oXknXyJeyYNTKYfPx.png', 1, NULL, '2023-07-08 22:54:51', '2023-07-08 22:54:51');

-- --------------------------------------------------------

--
-- Table structure for table `timeslots`
--

CREATE TABLE `timeslots` (
  `id` bigint UNSIGNED NOT NULL,
  `uid` int NOT NULL,
  `week_id` int NOT NULL,
  `slots` text COLLATE utf8mb4_unicode_ci,
  `extra_field` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `timeslots`
--

INSERT INTO `timeslots` (`id`, `uid`, `week_id`, `slots`, `extra_field`, `status`, `created_at`, `updated_at`) VALUES
(1, 8, 1, '[{\"start_time\":\"09:00 AM\",\"end_time\":\"10:00 AM\"},{\"start_time\":\"10:00 AM\",\"end_time\":\"11:00 AM\"},{\"start_time\":\"11:00 AM\",\"end_time\":\"12:00 PM\"},{\"start_time\":\"12:00 PM\",\"end_time\":\"01:00 PM\"},{\"start_time\":\"01:00 PM\",\"end_time\":\"02:00 PM\"},{\"start_time\":\"02:00 PM\",\"end_time\":\"03:00 PM\"},{\"start_time\":\"03:00 PM\",\"end_time\":\"04:00 PM\"},{\"start_time\":\"04:00 PM\",\"end_time\":\"05:00 PM\"}]', NULL, 1, '2023-06-23 11:34:46', '2023-06-23 13:17:15'),
(2, 8, 2, '[{\"start_time\":\"09:00 AM\",\"end_time\":\"10:00 AM\"},{\"start_time\":\"10:00 AM\",\"end_time\":\"11:00 AM\"},{\"start_time\":\"11:00 AM\",\"end_time\":\"12:00 PM\"},{\"start_time\":\"12:00 PM\",\"end_time\":\"01:00 PM\"},{\"start_time\":\"01:00 PM\",\"end_time\":\"02:00 PM\"},{\"start_time\":\"02:00 PM\",\"end_time\":\"03:00 PM\"},{\"start_time\":\"03:00 PM\",\"end_time\":\"04:00 PM\"},{\"start_time\":\"04:00 PM\",\"end_time\":\"05:00 PM\"}]', NULL, 1, '2023-06-23 13:20:02', '2023-06-23 13:20:02'),
(3, 8, 3, '[{\"start_time\":\"09:00 AM\",\"end_time\":\"10:00 AM\"},{\"start_time\":\"10:00 AM\",\"end_time\":\"11:00 AM\"},{\"start_time\":\"11:00 AM\",\"end_time\":\"12:00 PM\"},{\"start_time\":\"12:00 PM\",\"end_time\":\"01:00 PM\"},{\"start_time\":\"01:00 PM\",\"end_time\":\"02:00 PM\"},{\"start_time\":\"02:00 PM\",\"end_time\":\"03:00 PM\"},{\"start_time\":\"03:00 PM\",\"end_time\":\"04:00 PM\"},{\"start_time\":\"04:00 PM\",\"end_time\":\"05:00 PM\"}]', NULL, 1, '2023-06-23 13:30:35', '2023-06-23 13:30:35'),
(4, 8, 4, '[{\"start_time\":\"09:00 AM\",\"end_time\":\"10:00 AM\"},{\"start_time\":\"10:00 AM\",\"end_time\":\"11:00 AM\"},{\"start_time\":\"11:00 AM\",\"end_time\":\"12:00 PM\"},{\"start_time\":\"12:00 PM\",\"end_time\":\"01:00 PM\"},{\"start_time\":\"01:00 PM\",\"end_time\":\"02:00 PM\"},{\"start_time\":\"02:00 PM\",\"end_time\":\"03:00 PM\"},{\"start_time\":\"03:00 PM\",\"end_time\":\"04:00 PM\"},{\"start_time\":\"04:00 PM\",\"end_time\":\"05:00 PM\"}]', NULL, 1, '2023-06-23 13:33:52', '2023-06-23 13:33:52'),
(5, 8, 5, '[{\"start_time\":\"09:00 AM\",\"end_time\":\"10:00 AM\"},{\"start_time\":\"10:00 AM\",\"end_time\":\"11:00 AM\"},{\"start_time\":\"11:00 AM\",\"end_time\":\"12:00 PM\"},{\"start_time\":\"12:00 PM\",\"end_time\":\"01:00 PM\"},{\"start_time\":\"01:00 PM\",\"end_time\":\"02:00 PM\"},{\"start_time\":\"02:00 PM\",\"end_time\":\"03:00 PM\"},{\"start_time\":\"03:00 PM\",\"end_time\":\"04:00 PM\"},{\"start_time\":\"04:00 PM\",\"end_time\":\"05:00 PM\"}]', NULL, 1, '2023-06-23 13:45:17', '2023-06-23 13:45:17'),
(6, 8, 6, '[{\"start_time\":\"09:00 AM\",\"end_time\":\"10:00 AM\"},{\"start_time\":\"10:00 AM\",\"end_time\":\"11:00 AM\"},{\"start_time\":\"11:00 AM\",\"end_time\":\"12:00 PM\"},{\"start_time\":\"12:00 PM\",\"end_time\":\"01:00 PM\"},{\"start_time\":\"01:00 PM\",\"end_time\":\"02:00 PM\"},{\"start_time\":\"02:00 PM\",\"end_time\":\"03:00 PM\"},{\"start_time\":\"03:00 PM\",\"end_time\":\"04:00 PM\"},{\"start_time\":\"04:00 PM\",\"end_time\":\"05:00 PM\"}]', NULL, 1, '2023-06-23 14:43:37', '2023-06-23 14:43:37');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `id` bigint UNSIGNED NOT NULL,
  `payable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payable_id` bigint UNSIGNED NOT NULL,
  `wallet_id` bigint UNSIGNED NOT NULL,
  `type` enum('deposit','withdraw') COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` decimal(64,0) NOT NULL,
  `confirmed` tinyint(1) NOT NULL,
  `meta` json DEFAULT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transfers`
--

CREATE TABLE `transfers` (
  `id` bigint UNSIGNED NOT NULL,
  `from_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `from_id` bigint UNSIGNED NOT NULL,
  `to_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `to_id` bigint UNSIGNED NOT NULL,
  `status` enum('exchange','transfer','paid','refund','gift') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'transfer',
  `status_last` enum('exchange','transfer','paid','refund','gift') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deposit_id` bigint UNSIGNED NOT NULL,
  `withdraw_id` bigint UNSIGNED NOT NULL,
  `discount` decimal(64,0) NOT NULL DEFAULT '0',
  `fee` decimal(64,0) NOT NULL DEFAULT '0',
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lng` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` tinyint DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fcm_token` text COLLATE utf8mb4_unicode_ci,
  `stripe_key` text COLLATE utf8mb4_unicode_ci,
  `extra_field` text COLLATE utf8mb4_unicode_ci,
  `others` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`, `country_code`, `mobile`, `cover`, `lat`, `lng`, `gender`, `type`, `fcm_token`, `stripe_key`, `extra_field`, `others`, `status`, `created_at`, `updated_at`) VALUES
(6, 'Mukubwe', 'Njongo', 'muks@rankersbox.com', '$2y$10$ZsYqhUFxxayOstyS8aTuLuDCscF23t2/M8qHZkQD/bUXPAx.zu/Am', '+260', '962565858', 'TZtCMNKhhzK4eTXKji4UUubt3aIUwmkHH8OP9khu.jpg', NULL, NULL, 1, 'user', 'ctN0nHnSTAGHRo-HnqJhK0:APA91bHuHeOjw1AKTO06qcWNjrQ73qdMrAORBliEG0rg_8kbHxSrnoM3C3vKlPQJjic-CNKE8VGMmTWuZRxdj-9MDNQnmEM7WwTfbB_P87YOS7ZQ2sKZ2Y4r-nB0esMXdTNyrX7OPJT2', NULL, NULL, NULL, 1, '2023-06-23 07:40:12', '2023-07-09 16:24:08'),
(7, 'Wash', 'Zambia', 'admin@washzambia.com', '$2y$10$i3oNKNCRG//poNTVtlb0medUG9lFbvRsahtWVIdf.I/9.FThUOOSW', '+260', '9731370012', 'NA', '0', '0', 1, 'admin', NULL, NULL, NULL, NULL, 1, '2023-06-23 07:49:42', '2023-06-23 07:49:42'),
(8, 'Wash', 'Zambia', 'order@washzambia.com', '$2y$10$Ak7RyWSCPTPGE1XEtV2UfeCUpcNO1RJsQGd62IF4/046XPhQDRZlG', '+260', '973137001', 'iRgwXMyfnrZaezV0ochYVFmHemArgBwLD0bamSOK.jpg', NULL, NULL, 1, 'freelancer', 'f3_8mjZrTRKhlmCrRkIGIJ:APA91bEq5dntcay0O27KzR4JJXKzie73Sll5ttHRMR5juEAGUs4ipdKgm4iRXZ9HcXiv7OsNoxqItj_J7aa9_2t6vjX0KUs5ZSDZPP4dZPBkdQ0TdOIXrMQBmR6KfwQTlL6C8Va5FSA2', NULL, NULL, NULL, 1, '2023-06-28 04:28:33', '2023-07-08 23:38:47'),
(9, 'Rana', 'Asif', 'asif.supe@gmail.com', '$2y$10$qJvKGAksQmv/3DKf8ZcHWuSpVlb4lzBCuyCD1TzwfK29oJtdCASjC', '+92', '3056982090', 'NA', NULL, NULL, 1, 'user', 'e6cEdBPOSlO1wuNNT470ga:APA91bEeXmar-03AZey8wMmoTR8UBrKNxDgWBtGEm7XD41Ug3HG3UyNcj8g4Zjo1-VaIDFl-hCZ9nvnGhz6x-E8Q1A-EoC5eW9ruNuVLFhq1WJev1rYRWAoXgGi2i9gor142JRPdHwET', NULL, NULL, NULL, 1, '2023-06-23 10:16:56', '2023-07-06 18:19:36'),
(11, 'Muks', 'Njongo', 'muksgo@gmail.com', '$2y$10$tQl3gVqqm4WH6OlzH5.2xexQQGi7MAJCL9BZYDwj72Kydb4PUFOBe', '+260', '979982864', 'mLVGT2QcAhUhWuPoDMPKgsUAd9Z1XCsdjr1mXsTK.jpg', '-15.403534746683455', '28.291911752485287', 1, 'driver', 'db_RUb4ORc-ija4bz7ZZrG:APA91bEvhgT0qsiqFogJ2aEmeGq7bRXIS09YJEJWZDJgk7Vg3wjjMhU_TvKOd2Tikhc9knEtu7QBeCFaaWEftNRtSrjJ8pNInlklxZxhtXF5bdN2rgNXo5PiSknAbx11b5IwcU7dtolF', NULL, NULL, NULL, 1, '2023-06-27 05:43:19', '2023-07-08 14:31:17'),
(14, 'Nickson', 'Bwalya', 'mukubwenjongo@gmail.com', '$2y$10$KXF4SkD9Nvsik2/eDhw65ekl/p8RhGIo2PXK17kzk85Zzitn6eGr6', '+260', '979970689', '6rpeUkg2nhMIak225Ph05hIXEoGaZwQVAPZByDOY.png', '-15.403534746683455', '28.291911752485287', 1, 'driver', 'db_RUb4ORc-ija4bz7ZZrG:APA91bF3wvPZ78yn_2Hpczz6P7VkG_GmV1ICHEk0iFKdMtP9wrj-dgpzUI15OlVToHpSUkHiom-CZA7Zf3K2RnsJCNp4KEg41gLaVN2njf9JDzAoBtKXdJIC9sdX1W3zfpruRXQIkgrl', NULL, NULL, NULL, 1, '2023-07-08 11:27:57', '2023-07-08 11:30:27');

-- --------------------------------------------------------

--
-- Table structure for table `wallets`
--

CREATE TABLE `wallets` (
  `id` bigint UNSIGNED NOT NULL,
  `holder_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `holder_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta` json DEFAULT NULL,
  `balance` decimal(64,0) NOT NULL DEFAULT '0',
  `decimal_places` smallint UNSIGNED NOT NULL DEFAULT '2',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wallets`
--

INSERT INTO `wallets` (`id`, `holder_type`, `holder_id`, `name`, `slug`, `uuid`, `description`, `meta`, `balance`, `decimal_places`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 6, 'Default Wallet', 'default', '0d817892-cbbc-4a9e-a7f6-27a04791a862', NULL, '[]', 0, 2, '2023-06-23 08:15:04', '2023-06-23 08:15:04'),
(2, 'App\\Models\\User', 9, 'Default Wallet', 'default', '1a2a4ef1-5211-45c3-8a8f-eae2eb35ccb8', NULL, '[]', 0, 2, '2023-06-27 03:56:50', '2023-06-27 03:56:50'),
(3, 'App\\Models\\User', 11, 'Default Wallet', 'default', 'c518f40a-377b-4a1b-8235-97901ebb7180', NULL, '[]', 0, 2, '2023-07-06 15:12:10', '2023-07-06 15:12:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `address`
--
ALTER TABLE `address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `chat_rooms`
--
ALTER TABLE `chat_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `commission`
--
ALTER TABLE `commission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaints`
--
ALTER TABLE `complaints`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversions`
--
ALTER TABLE `conversions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `favourites`
--
ALTER TABLE `favourites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `offers`
--
ALTER TABLE `offers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `otp`
--
ALTER TABLE `otp`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `rating`
--
ALTER TABLE `rating`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `redeem`
--
ALTER TABLE `redeem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referral`
--
ALTER TABLE `referral`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `referralcodes`
--
ALTER TABLE `referralcodes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register_request`
--
ALTER TABLE `register_request`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `register_request_email_unique` (`email`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub_categories`
--
ALTER TABLE `sub_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `timeslots`
--
ALTER TABLE `timeslots`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transactions_uuid_unique` (`uuid`),
  ADD KEY `transactions_payable_type_payable_id_index` (`payable_type`,`payable_id`),
  ADD KEY `payable_type_payable_id_ind` (`payable_type`,`payable_id`),
  ADD KEY `payable_type_ind` (`payable_type`,`payable_id`,`type`),
  ADD KEY `payable_confirmed_ind` (`payable_type`,`payable_id`,`confirmed`),
  ADD KEY `payable_type_confirmed_ind` (`payable_type`,`payable_id`,`type`,`confirmed`),
  ADD KEY `transactions_type_index` (`type`),
  ADD KEY `transactions_wallet_id_foreign` (`wallet_id`);

--
-- Indexes for table `transfers`
--
ALTER TABLE `transfers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `transfers_uuid_unique` (`uuid`),
  ADD KEY `transfers_from_type_from_id_index` (`from_type`,`from_id`),
  ADD KEY `transfers_to_type_to_id_index` (`to_type`,`to_id`),
  ADD KEY `transfers_deposit_id_foreign` (`deposit_id`),
  ADD KEY `transfers_withdraw_id_foreign` (`withdraw_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wallets`
--
ALTER TABLE `wallets`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `wallets_holder_type_holder_id_slug_unique` (`holder_type`,`holder_id`,`slug`),
  ADD UNIQUE KEY `wallets_uuid_unique` (`uuid`),
  ADD KEY `wallets_holder_type_holder_id_index` (`holder_type`,`holder_id`),
  ADD KEY `wallets_slug_index` (`slug`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `address`
--
ALTER TABLE `address`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `chat_rooms`
--
ALTER TABLE `chat_rooms`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `commission`
--
ALTER TABLE `commission`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `complaints`
--
ALTER TABLE `complaints`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `conversions`
--
ALTER TABLE `conversions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `favourites`
--
ALTER TABLE `favourites`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `offers`
--
ALTER TABLE `offers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `otp`
--
ALTER TABLE `otp`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rating`
--
ALTER TABLE `rating`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `redeem`
--
ALTER TABLE `redeem`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referral`
--
ALTER TABLE `referral`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `referralcodes`
--
ALTER TABLE `referralcodes`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `register_request`
--
ALTER TABLE `register_request`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=198;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sub_categories`
--
ALTER TABLE `sub_categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `timeslots`
--
ALTER TABLE `timeslots`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transfers`
--
ALTER TABLE `transfers`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `wallets`
--
ALTER TABLE `wallets`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `transactions`
--
ALTER TABLE `transactions`
  ADD CONSTRAINT `transactions_wallet_id_foreign` FOREIGN KEY (`wallet_id`) REFERENCES `wallets` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `transfers`
--
ALTER TABLE `transfers`
  ADD CONSTRAINT `transfers_deposit_id_foreign` FOREIGN KEY (`deposit_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `transfers_withdraw_id_foreign` FOREIGN KEY (`withdraw_id`) REFERENCES `transactions` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
