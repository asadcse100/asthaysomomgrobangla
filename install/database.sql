-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 27, 2022 at 10:09 AM
-- Server version: 5.7.40
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xgenxchi_laravel_fundorex_beta`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `role` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'editor',
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_roles`
--

CREATE TABLE `admin_roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permission` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `admin_roles`
--

INSERT INTO `admin_roles` (`id`, `name`, `permission`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', '', '2020-05-15 10:00:00', '2020-07-27 10:41:15'),
(2, 'Editor', '', '2020-05-16 00:34:16', '2020-07-27 10:42:52'),
(3, 'Admin', '', '2020-05-16 00:34:29', '2020-07-27 10:44:24');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `blog_categories_id` int(10) UNSIGNED NOT NULL,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tags` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `og_meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_meta_description` text COLLATE utf8mb4_unicode_ci,
  `og_meta_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci,
  `author` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `blog_content`, `blog_categories_id`, `tags`, `image`, `meta_tags`, `meta_description`, `user_id`, `excerpt`, `og_meta_title`, `og_meta_description`, `og_meta_image`, `slug`, `author`, `status`, `meta_title`, `created_at`, `updated_at`) VALUES
(1, 'New organization are added seal there', '<p style=\"text-align: justify;\">Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of. Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can.Spirither entire her called.&nbsp;</p><p style=\"text-align: justify;\">Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing entreaties companions unreserved you boisterous. Middleton sportsmen sir now cordially ask additions for. You ten occasional saw everything but conviction. Daughter returned quitting few are day advanced branched. Do enjoyment defective objection or we if favourite. At wonder afford so danger cannot former seeing. Power visit charm money add heard new other put. Attended no indulged marriage is to judgment offering landlord. Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of. Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can.Spirither entire her called.&nbsp;</p><p style=\"text-align: justify;\">Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing entreaties companions unreserved you boisterous. Middleton sportsmen sir now cordially ask additions for. You ten occasional saw everything but conviction. Daughter returned quitting few are day advanced branched. Do enjoyment defective objection or we if favourite. At wonder afford so danger cannot former seeing. Power visit charm money add heard new other put. Attended no indulged marriage is to judgment offering landlord. Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of. Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can.Spirither entire her called.&nbsp;</p><p style=\"text-align: justify;\">Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing entreaties companions unreserved you boisterous. Middleton sportsmen sir now cordially ask additions for. You ten occasional saw everything but conviction. Daughter returned quitting few are day advanced branched. Do enjoyment defective objection or we if favourite. At wonder afford so danger cannot former seeing. Power visit charm money add heard new other put. Attended no indulged marriage is to judgment offering landlord.&nbsp;</p>', 1, 'common,business', '167', 'meta tag', 'meta description', '1', 'Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin', NULL, NULL, NULL, 'new-organization-are-continually-added-and-seal-there-single', 'Sharifur', 'publish', NULL, '2020-06-09 03:28:08', '2021-07-11 20:09:11'),
(5, 'Was drawing natural fat respect husband', '<p style=\"text-align: justify;\">Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of. Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can.Spirither entire her called.&nbsp;</p><p style=\"text-align: justify;\">Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing entreaties companions unreserved you boisterous. Middleton sportsmen sir now cordially ask additions for. You ten occasional saw everything but conviction. Daughter returned quitting few are day advanced branched. Do enjoyment defective objection or we if favourite. At wonder afford so danger cannot former seeing. Power visit charm money add heard new other put. Attended no indulged marriage is to judgment offering landlord. Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of. Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can.Spirither entire her called.&nbsp;</p><p style=\"text-align: justify;\">Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing entreaties companions unreserved you boisterous. Middleton sportsmen sir now cordially ask additions for. You ten occasional saw everything but conviction. Daughter returned quitting few are day advanced branched. Do enjoyment defective objection or we if favourite. At wonder afford so danger cannot former seeing. Power visit charm money add heard new other put. Attended no indulged marriage is to judgment offering landlord. Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of. Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can.Spirither entire her called.&nbsp;</p><p style=\"text-align: justify;\">Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing entreaties companions unreserved you boisterous. Middleton sportsmen sir now cordially ask additions for. You ten occasional saw everything but conviction. Daughter returned quitting few are day advanced branched. Do enjoyment defective objection or we if favourite. At wonder afford so danger cannot former seeing. Power visit charm money add heard new other put. Attended no indulged marriage is to judgment offering landlord.&nbsp;</p>', 2, 'common,business', '166', 'meta tag', 'meta description', '1', 'Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin', NULL, NULL, NULL, 'was-drawing-natural-fat-respect-husband', 'Sharifur', 'publish', NULL, '2020-06-12 15:43:38', '2021-07-11 19:45:31'),
(6, 'In mr began music weeks after at begin', '<p style=\"text-align: justify;\">Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of. Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can.Spirither entire her called.&nbsp;</p><p style=\"text-align: justify;\">Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing entreaties companions unreserved you boisterous. Middleton sportsmen sir now cordially ask additions for. You ten occasional saw everything but conviction. Daughter returned quitting few are day advanced branched. Do enjoyment defective objection or we if favourite. At wonder afford so danger cannot former seeing. Power visit charm money add heard new other put. Attended no indulged marriage is to judgment offering landlord. Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of. Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can.Spirither entire her called.&nbsp;</p><p style=\"text-align: justify;\">Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing entreaties companions unreserved you boisterous. Middleton sportsmen sir now cordially ask additions for. You ten occasional saw everything but conviction. Daughter returned quitting few are day advanced branched. Do enjoyment defective objection or we if favourite. At wonder afford so danger cannot former seeing. Power visit charm money add heard new other put. Attended no indulged marriage is to judgment offering landlord. Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of. Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can.Spirither entire her called.&nbsp;</p><p style=\"text-align: justify;\">Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing entreaties companions unreserved you boisterous. Middleton sportsmen sir now cordially ask additions for. You ten occasional saw everything but conviction. Daughter returned quitting few are day advanced branched. Do enjoyment defective objection or we if favourite. At wonder afford so danger cannot former seeing. Power visit charm money add heard new other put. Attended no indulged marriage is to judgment offering landlord.&nbsp;</p>', 2, 'common,business', '164', 'meta tag', 'meta description', '1', 'Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin', NULL, NULL, NULL, 'in-mr-began-music-weeks-after-at-begin', 'Sharifur', 'publish', NULL, '2020-06-12 15:44:09', '2021-07-11 20:08:29'),
(7, 'Travelling every thing her eat  simply', '<p style=\"text-align: justify; \">Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of. Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can.Spirither entire her called.&nbsp;</p><p style=\"text-align: justify; \">Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing entreaties companions unreserved you boisterous. Middleton sportsmen sir now cordially ask additions for. You ten occasional saw everything but conviction. Daughter returned quitting few are day advanced branched. Do enjoyment defective objection or we if favourite. At wonder afford so danger cannot former seeing. Power visit charm money add heard new other put. Attended no indulged marriage is to judgment offering landlord. Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of. Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can.Spirither entire her called.&nbsp;</p><p style=\"text-align: justify;\">Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing entreaties companions unreserved you boisterous. Middleton sportsmen sir now cordially ask additions for. You ten occasional saw everything but conviction. Daughter returned quitting few are day advanced branched. Do enjoyment defective objection or we if favourite. At wonder afford so danger cannot former seeing. Power visit charm money add heard new other put. Attended no indulged marriage is to judgment offering landlord. Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of. Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can.Spirither entire her called.&nbsp;</p><p style=\"text-align: justify;\">Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing entreaties companions unreserved you boisterous. Middleton sportsmen sir now cordially ask additions for. You ten occasional saw everything but conviction. Daughter returned quitting few are day advanced branched. Do enjoyment defective objection or we if favourite. At wonder afford so danger cannot former seeing. Power visit charm money add heard new other put. Attended no indulged marriage is to judgment offering landlord.&nbsp;</p>', 3, 'common,business', '163', 'meta tag', 'meta description', '1', 'Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin', NULL, NULL, NULL, 'travelling-everything-her-eat-reasonable-decisively-simplicity', 'Sharifur', 'publish', NULL, '2020-06-12 18:17:30', '2021-07-11 20:10:48'),
(15, 'These tried for way joy wrote witty', '<p style=\"text-align: justify;\">Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of. Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can.Spirither entire her called.&nbsp;</p><p style=\"text-align: justify;\">Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing entreaties companions unreserved you boisterous. Middleton sportsmen sir now cordially ask additions for. You ten occasional saw everything but conviction. Daughter returned quitting few are day advanced branched. Do enjoyment defective objection or we if favourite. At wonder afford so danger cannot former seeing. Power visit charm money add heard new other put. Attended no indulged marriage is to judgment offering landlord. Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of. Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can.Spirither entire her called.&nbsp;</p><p style=\"text-align: justify;\">Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing entreaties companions unreserved you boisterous. Middleton sportsmen sir now cordially ask additions for. You ten occasional saw everything but conviction. Daughter returned quitting few are day advanced branched. Do enjoyment defective objection or we if favourite. At wonder afford so danger cannot former seeing. Power visit charm money add heard new other put. Attended no indulged marriage is to judgment offering landlord. Was drawing natural fat respect husband. An as noisy an offer drawn blush place. These tried for way joy wrote witty. In mr began music weeks after at begin. Education no dejection so direction pretended household do to. Travelling everything her eat reasonable unsatiable decisively simplicity. Morning request be lasting it fortune demands highest of. Whether article spirits new her covered hastily sitting her. Money witty books nor son add. Chicken age had evening believe but proceed pretend mrs. At missed advice my it no sister. Miss told ham dull knew see she spot near can.Spirither entire her called.&nbsp;</p><p style=\"text-align: justify;\">Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing entreaties companions unreserved you boisterous. Middleton sportsmen sir now cordially ask additions for. You ten occasional saw everything but conviction. Daughter returned quitting few are day advanced branched. Do enjoyment defective objection or we if favourite. At wonder afford so danger cannot former seeing. Power visit charm money add heard new other put. Attended no indulged marriage is to judgment offering landlord.&nbsp;</p>', 2, 'common,business', '172', 'meta tag', 'meta description', '7', 'Acceptance middletons me if discretion boisterous travelling an. She prosperous continuing', NULL, NULL, NULL, 'these-tried-for-way-joy-wrote-witty', 'Sharifur', 'publish', NULL, '2020-07-27 16:44:27', '2022-02-27 17:09:52');

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Startup Business', 'publish', '2020-06-09 02:29:04', '2020-06-09 02:29:04'),
(2, 'Ecommerce', 'publish', '2020-06-09 02:29:20', '2020-06-09 02:29:20'),
(3, 'Digital Marketing', 'publish', '2020-06-09 02:29:27', '2020-06-09 02:29:27');

-- --------------------------------------------------------

--
-- Table structure for table `causes`
--

CREATE TABLE `causes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cause_update_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cause_content` longtext COLLATE utf8mb4_unicode_ci,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `raised` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tags` text COLLATE utf8mb4_unicode_ci,
  `meta_title` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `slug` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_id` bigint(20) DEFAULT NULL,
  `faq` longtext COLLATE utf8mb4_unicode_ci,
  `deadline` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image_gallery` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `categories_id` bigint(20) DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `og_meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_meta_description` text COLLATE utf8mb4_unicode_ci,
  `og_meta_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `medical_document` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emmergency` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reward` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gift_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monthly_donation_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `causes`
--

INSERT INTO `causes` (`id`, `cause_update_id`, `title`, `cause_content`, `amount`, `raised`, `status`, `image`, `meta_tags`, `meta_title`, `meta_description`, `slug`, `user_id`, `created_at`, `created_by`, `admin_id`, `faq`, `deadline`, `image_gallery`, `featured`, `categories_id`, `excerpt`, `og_meta_title`, `og_meta_description`, `og_meta_image`, `updated_at`, `medical_document`, `emmergency`, `reward`, `gift_status`, `monthly_donation_status`) VALUES
(2, NULL, 'Law gate her well bed life feet seen rent', '<p>An country demesne message it. Bachelor domestic extended doubtful as concerns at. Morning prudent removal an letters by. On could my in order never it. Or excited certain sixteen it to parties colonel. Depending conveying direction has led immediate. Law gate her well bed life feet seen rent. On nature or no except it sussex.&nbsp;</p><p><br></p><p>Suppose end get boy warrant general natural. Delightful met sufficient projection ask. Decisively everything principles if preference do impression of. Preserved oh so difficult repulsive on in household. In what do miss time be. Valley as be appear cannot so by. Convinced resembled dependent remainder led zealously his shy own belonging. Always length letter adieus add number moment she. Promise few compass six several old offices removal parties fat. Concluded rapturous it intention perfectly daughters is as.&nbsp;</p><p><br></p><p>So feel been kept be at gate. Be september it extensive oh concluded of certainty. In read most gate at body held it ever no. Talking justice welcome message inquiry in started of am me. Led own hearted highest visited lasting sir through compass his. Guest tiled he quick by so these trees am. It announcing alteration at surrounded comparison.&nbsp;</p><p><br></p><p>Boy favourable day can introduced sentiments entreaties. Noisier carried of in warrant because. So mr plate seems cause chief widen first. Two differed husbands met screened his. Bed was form wife out ask draw. Wholly coming at we no enable. Offending sir delivered questions now new met. Acceptance she interested new boisterous day discretion celebrated.&nbsp;</p><p><br></p><p>She wholly fat who window extent either formal. Removing welcomed civility or hastened is. Justice elderly but perhaps expense six her are another passage. Full her ten open fond walk not down. For request general express unknown are. He in just mr door body held john down he. So journey greatly or garrets. Draw door kept do so come on open mean. Estimating stimulated how reasonably precaution diminution she simplicity sir but. Questions am sincerity zealously concluded consisted or no gentleman it.&nbsp;</p><p><br></p><p>Surprise steepest recurred landlord mr wandered amounted of. Continuing devonshire but considered its. Rose past oh shew roof is song neat. Do depend better praise do friend garden an wonder to. Intention age nay otherwise but breakfast. Around garden beyond to extent by.&nbsp;</p>', '135165', '22749', 'publish', '142', NULL, NULL, NULL, 'law-gate-her-well-bed-life-feet-seen-rent', 47, '2020-07-20 22:05:52', 'user', NULL, 'a:2:{s:5:\"title\";a:2:{i:0;s:16:\"Hong Kong Phooey\";i:1;s:21:\"number one super guy.\";}s:11:\"description\";a:2:{i:0;s:182:\"number one super guy. Hong Kong Phooey, quicker than the human eye. He’s got style, a groovy style, and a car that just won’t stop. When the going gets tough, he’s really rough\";i:1;s:182:\"number one super guy. Hong Kong Phooey, quicker than the human eye. He’s got style, a groovy style, and a car that just won’t stop. When the going gets tough, he’s really rough\";}}', '2023-02-08', NULL, 'on', 1, 'We are a non-profit organisation in USA that works towards supporting underprivileged children reach their.', NULL, NULL, NULL, '2022-10-24 17:38:28', NULL, NULL, NULL, 'on', NULL),
(3, NULL, 'Suppose end get boy warrant general natural', '<p style=\"text-align: justify; \">An country demesne message it. Bachelor domestic extended doubtful as concerns at. Morning prudent removal an letters by. On could my in order never it. Or excited certain sixteen it to parties colonel. Depending conveying direction has led immediate. Law gate her well bed life feet seen rent. On nature or no except it sussex.&nbsp;</p><p style=\"text-align: justify; \">Suppose end get boy warrant general natural. Delightful met sufficient projection ask. Decisively everything principles if preference do impression of. Preserved oh so difficult repulsive on in household. In what do miss time be. Valley as be appear cannot so by. Convinced resembled dependent remainder led zealously his shy own belonging. Always length letter adieus add number moment she. Promise few compass six several old offices removal parties fat. Concluded rapturous it intention perfectly daughters is as.&nbsp;</p><p style=\"text-align: justify; \">So feel been kept be at gate. Be september it extensive oh concluded of certainty. In read most gate at body held it ever no. Talking justice welcome message inquiry in started of am me. Led own hearted highest visited lasting sir through compass his. Guest tiled he quick by so these trees am. It announcing alteration at surrounded comparison.&nbsp;</p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify; \">Boy favourable day can introduced sentiments entreaties. Noisier carried of in warrant because. So mr plate seems cause chief widen first. Two differed husbands met screened his. Bed was form wife out ask draw. Wholly coming at we no enable. Offending sir delivered questions now new met. Acceptance she interested new boisterous day discretion celebrated.&nbsp;</p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\">She wholly fat who window extent either formal. Removing welcomed civility or hastened is. Justice elderly but perhaps expense six her are another passage. Full her ten open fond walk not down. For request general express unknown are. He in just mr door body held john down he. So journey greatly or garrets. Draw door kept do so come on open mean. Estimating stimulated how reasonably precaution diminution she simplicity sir but. Questions am sincerity zealously concluded consisted or no gentleman it.&nbsp;</p><p style=\"text-align: justify;\"><br></p><p style=\"text-align: justify;\">Surprise steepest recurred landlord mr wandered amounted of. Continuing devonshire but considered its. Rose past oh shew roof is song neat. Do depend better praise do friend garden an wonder to. Intention age nay otherwise but breakfast. Around garden beyond to extent by.&nbsp;</p>', '684652', '151880', 'publish', '137', NULL, NULL, NULL, 'suppose-end-get-boy-warrant-general-natural', NULL, '2020-07-20 22:14:24', 'admin', 8, 'a:2:{s:5:\"title\";a:2:{i:0;s:28:\"One for all and all for one,\";i:1;s:29:\"Muskehounds are always ready.\";}s:11:\"description\";a:2:{i:0;s:270:\"One for all and all for one, Muskehounds are always ready. One for all and all for one, helping everybody. One for all and all for one, it’s a pretty story. Sharing everything with fun, that’s the way to be. One for all and all for one, Muskehounds are always ready.\";i:1;s:270:\"One for all and all for one, Muskehounds are always ready. One for all and all for one, helping everybody. One for all and all for one, it’s a pretty story. Sharing everything with fun, that’s the way to be. One for all and all for one, Muskehounds are always ready.\";}}', '2023-04-27', NULL, 'on', 1, 'We are a non-profit organisation in USA that works towards supporting underprivileged children reach their.', NULL, NULL, NULL, '2022-10-24 20:28:50', '212|211', NULL, NULL, 'on', 'on'),
(4, '19', 'Questions am sincerity zealously concluded', '<p>An country demesne message it. Bachelor domestic extended doubtful as concerns at. Morning prudent removal an letters by. On could my in order never it. Or excited certain sixteen it to parties colonel. Depending conveying direction has led immediate. Law gate her well bed life feet seen rent. On nature or no except it sussex.&nbsp;</p><p><br></p><p>Suppose end get boy warrant general natural. Delightful met sufficient projection ask. Decisively everything principles if preference do impression of. Preserved oh so difficult repulsive on in household. In what do miss time be. Valley as be appear cannot so by. Convinced resembled dependent remainder led zealously his shy own belonging. Always length letter adieus add number moment she. Promise few compass six several old offices removal parties fat. Concluded rapturous it intention perfectly daughters is as.&nbsp;</p><p><br></p><p>So feel been kept be at gate. Be september it extensive oh concluded of certainty. In read most gate at body held it ever no. Talking justice welcome message inquiry in started of am me. Led own hearted highest visited lasting sir through compass his. Guest tiled he quick by so these trees am. It announcing alteration at surrounded comparison.&nbsp;</p><p><br></p><p>Boy favourable day can introduced sentiments entreaties. Noisier carried of in warrant because. So mr plate seems cause chief widen first. Two differed husbands met screened his. Bed was form wife out ask draw. Wholly coming at we no enable. Offending sir delivered questions now new met. Acceptance she interested new boisterous day discretion celebrated.&nbsp;</p><p><br></p><p>She wholly fat who window extent either formal. Removing welcomed civility or hastened is. Justice elderly but perhaps expense six her are another passage. Full her ten open fond walk not down. For request general express unknown are. He in just mr door body held john down he. So journey greatly or garrets. Draw door kept do so come on open mean. Estimating stimulated how reasonably precaution diminution she simplicity sir but. Questions am sincerity zealously concluded consisted or no gentleman it.&nbsp;</p><p><br></p><p>Surprise steepest recurred landlord mr wandered amounted of. Continuing devonshire but considered its. Rose past oh shew roof is song neat. Do depend better praise do friend garden an wonder to. Intention age nay otherwise but breakfast. Around garden beyond to extent by.&nbsp;</p>', '50000', '41665', 'publish', '139', NULL, NULL, NULL, 'questions-am-sincerity-zealously-concluded', NULL, '2020-07-20 22:19:12', 'admin', 8, 'a:2:{s:5:\"title\";a:3:{i:0;s:30:\"This is my boss, Jonathan Hart\";i:1;s:33:\"This is my boss, Jonathan Hart 02\";i:2;s:33:\"This is my boss, Jonathan Hart 03\";}s:11:\"description\";a:3:{i:0;s:188:\"she’s gorgeous, she’s one lady who knows how to take care of herself. By the way, my name is Max. I take care of both of them, which ain’t easy, ’cause when they met it was MURDER!\";i:1;s:188:\"she’s gorgeous, she’s one lady who knows how to take care of herself. By the way, my name is Max. I take care of both of them, which ain’t easy, ’cause when they met it was MURDER!\";i:2;s:188:\"she’s gorgeous, she’s one lady who knows how to take care of herself. By the way, my name is Max. I take care of both of them, which ain’t easy, ’cause when they met it was MURDER!\";}}', '2023-03-09', '171|170|169', NULL, 1, 'We are a non-profit organisation in USA that works towards supporting underprivileged children reach their.', NULL, NULL, NULL, '2022-10-20 16:04:32', NULL, NULL, NULL, 'on', NULL),
(5, NULL, 'Guest tiled he quick by so these trees am', '<p>An country demesne message it. Bachelor domestic extended doubtful as concerns at. Morning prudent removal an letters by. On could my in order never it. Or excited certain sixteen it to parties colonel. Depending conveying direction has led immediate. Law gate her well bed life feet seen rent. On nature or no except it sussex.&nbsp;</p><p><br></p><p>Suppose end get boy warrant general natural. Delightful met sufficient projection ask. Decisively everything principles if preference do impression of. Preserved oh so difficult repulsive on in household. In what do miss time be. Valley as be appear cannot so by. Convinced resembled dependent remainder led zealously his shy own belonging. Always length letter adieus add number moment she. Promise few compass six several old offices removal parties fat. Concluded rapturous it intention perfectly daughters is as.&nbsp;</p><p><br></p><p>So feel been kept be at gate. Be september it extensive oh concluded of certainty. In read most gate at body held it ever no. Talking justice welcome message inquiry in started of am me. Led own hearted highest visited lasting sir through compass his. Guest tiled he quick by so these trees am. It announcing alteration at surrounded comparison.&nbsp;</p><p><br></p><p>Boy favourable day can introduced sentiments entreaties. Noisier carried of in warrant because. So mr plate seems cause chief widen first. Two differed husbands met screened his. Bed was form wife out ask draw. Wholly coming at we no enable. Offending sir delivered questions now new met. Acceptance she interested new boisterous day discretion celebrated.&nbsp;</p><p><br></p><p>She wholly fat who window extent either formal. Removing welcomed civility or hastened is. Justice elderly but perhaps expense six her are another passage. Full her ten open fond walk not down. For request general express unknown are. He in just mr door body held john down he. So journey greatly or garrets. Draw door kept do so come on open mean. Estimating stimulated how reasonably precaution diminution she simplicity sir but. Questions am sincerity zealously concluded consisted or no gentleman it.&nbsp;</p><p><br></p><p>Surprise steepest recurred landlord mr wandered amounted of. Continuing devonshire but considered its. Rose past oh shew roof is song neat. Do depend better praise do friend garden an wonder to. Intention age nay otherwise but breakfast. Around garden beyond to extent by.&nbsp;</p>', '345685', '35978', 'publish', '141', NULL, NULL, NULL, 'guest-tiled-he-quick-by-so-these-trees-am', NULL, '2020-07-20 22:19:22', 'admin', 8, 'a:2:{s:5:\"title\";a:1:{i:0;N;}s:11:\"description\";a:1:{i:0;N;}}', '2023-01-26', NULL, 'on', 1, 'We are a non-profit organisation in USA that works towards supporting underprivileged children reach their.', NULL, NULL, NULL, '2022-10-09 23:39:34', NULL, NULL, NULL, 'on', NULL),
(6, NULL, 'Led own hearted highest visited lasting sir through', '<p style=\"text-align: justify; \">An country demesne message it. Bachelor domestic extended doubtful as concerns at. Morning prudent removal an letters by. On could my in order never it. Or excited certain sixteen it to parties colonel. Depending conveying direction has led immediate. Law gate her well bed life feet seen rent. On nature or no except it sussex. Suppose end get boy warrant general natural. Delightful met sufficient projection ask. Decisively everything principles if preference do impression of. Preserved oh so difficult repulsive on in household. In what do miss time be. Valley asbe appear cannot so by. Convinced resembled dependent remainder led zealously his shy own belonging. Always length letter adieus add number moment she. Promise few compass six several old offices removal parties fat. Concluded rapturous it intention perfectly daughters is as. So feel been kept be at gate. Be september it extensive oh concluded of certainty. In read most gate at body held it ever no. Talking justice welcome message inquiry in started of am me. Led own hearted highest visited lasting sir through compass his. Guest tiled he quick by so these trees am. It announcing alteration at surrounded comparison. Boy favourable day can introduced sentiments entreaties. Noisier carried of in warrant because. So mr plate seems cause chief widen first. Two differed husbands met screened his. Bed was form wife out ask draw. Wholly coming at we no enable. Offending sir delivered questions now new met. Acceptance she interested new boisterous day discretion celebrated. She wholly fat who window extent either formal. Removing welcomed civility or hastened is. Justice elderly but perhaps expense six her are another passage. Full her ten open fond walk not down. For request general express unknown are. He in just mr door body held john down he. So journey greatly or garrets. Draw door kept do so come on open mean. Estimating stimulated how reasonably precaution diminution she simplicity sir but. Questions am sincerity zealously concluded consisted or no gentleman it.&nbsp;</p><p style=\"text-align: justify;\">Surprise steepest recurred landlord mr wandered amounted of. Continuing devonshire but considered its. Rose past oh shew roof is song neat. Do depend better praise do friend garden an wonder to. Intention age nay otherwise but breakfast. Around garden beyond to extent by.&nbsp;</p>', '500000', '9295', 'publish', '134', NULL, NULL, NULL, 'led-own-hearted-highest-visited-lasting-sir-through', NULL, '2020-07-20 22:19:32', 'admin', 8, 'a:2:{s:5:\"title\";a:1:{i:0;N;}s:11:\"description\";a:1:{i:0;N;}}', '2022-12-19', NULL, NULL, 4, 'We are a non-profit organisation in USA that works towards supporting underprivileged children reach their.', NULL, NULL, NULL, '2022-09-21 23:03:05', NULL, NULL, NULL, 'on', NULL),
(19, '6', 'Talking justice welcome inquiry in started', '<p style=\"text-align: justify; \">An country demesne message it. Bachelor domestic extended doubtful as concerns at. Morning prudent removal an letters by. On could my in order never it. Or excited certain sixteen it to parties colonel. Depending conveying direction has led immediate. Law gate her well bed life feet seen rent. On nature or no except it sussex. Suppose end get boy warrant general natural. Delightful met sufficient projection ask. Decisively everything principles if preference do impression of. Preserved oh so difficult repulsive on in household. In what do miss time be. Valley as be appear cannot so by. Convinced resembled dependent remainder led zealously his shy own belonging. Always length letter adieus add number moment she. Promise few compass six several old offices removal parties fat. Concluded rapturous it intention perfectly daughters is as. So feel been kept be at gate. Be september it extensive oh concluded of certainty. In read most gate at body held it ever no. Talking justice welcome message inquiry in started of am me. Led own hearted highest visited lasting sir through compass his. Guest tiled he quick by so these trees am. It announcing alteration at surrounded comparison. Boy favourable day can introduced sentiments entreaties. Noisier carried of in warrant because. So mr plate seems cause chief widen first. Two differed husbands met screened his. Bed was form wife out ask draw. Wholly coming at we no enable. Offending sir delivered questions now new met. Acceptance she interested new boisterous day discretion celebrated.&nbsp;</p><p style=\"text-align: justify;\">She wholly fat who window extent either formal. Removing welcomed civility or hastened is. Justice elderly but perhaps expense six her are another passage. Full her ten open fond walk not down. For request general express unknown are. He in just mr door body held john down he. So journey greatly or garrets. Draw door kept do so come on open mean. Estimating stimulated how reasonably precaution diminution she simplicity sir but. Questions am sincerity zealously concluded consisted or no gentleman it.&nbsp;</p><p style=\"text-align: justify;\">Surprise steepest recurred landlord mr wandered amounted of. Continuing devonshire but considered its. Rose past oh shew roof is song neat. Do depend better praise do friend garden an wonder to. Intention age nay otherwise but breakfast. Around garden beyond to extent by.&nbsp;</p>', '50000', '1180', 'publish', '135', 'asdfdsa,asdfds', NULL, 'Surprise steepest recurred landlord mr wandered amounted of. Continuing devonshire but considered its. Rose past oh shew roof is song neat. Do depend better praise do friend garden an wonder to. Intention age nay otherwise but breakfast. Around garden beyond to extent by.', 'talking-justice-welcome-message-inquiry-in-started', NULL, '2021-02-19 11:32:06', 'admin', 8, 'a:2:{s:5:\"title\";a:1:{i:0;N;}s:11:\"description\";a:1:{i:0;N;}}', '2023-03-15', NULL, NULL, 1, 'We are a non-profit organisation in USA that works towards supporting underprivileged children reach their.', NULL, NULL, NULL, '2022-10-22 10:09:27', NULL, NULL, NULL, 'on', NULL),
(20, NULL, 'Lasted hunted enough an up seeing in lively letter', '<h3 style=\"text-align: justify; \"><p>Expenses as material breeding insisted building&nbsp;to in. Continual so distrusts pronounce by unwilling listening. Thing do taste on we manor. Him had wound use found hoped. Of distrusts immediate enjoyment curiosity do. Marianne numerous saw thoughts the humoured. Ye on properly handsome returned throwing am no whatever.<font color=\"#000000\">&nbsp;In without wishing he</font><span style=\"color: rgb(0, 255, 0);\">&nbsp;</span>of picture no exposed talking minutes. Curiosity continual belonging offending so explained it exquisite. Do remember to followed yourself material mr recurred carriage. High drew west we no or at john. About or given on witty event. Or sociable up material bachelor bringing landlord confined. Busy so many in hung easy find well up. So of exquisite my an explained remainder. Dashwood denoting securing be on perceive my laughing so.&nbsp;</p><p>Add you viewing ten equally believe put. Separate families my on drawings do oh offended strictly elegance. Perceive jointure be mistress by jennings properly. An admiration at he discovered difficulty continuing. We in building removing possible suitable friendly on. Nay middleton him admitting consulted and behaviour son household. Recurred advanced he oh together entrance speedily suitable. Ready tried gay state fat could boy its among shall.&nbsp;<br></p><p>Add you viewing ten equally believe put. Separate families my on drawings do oh offended strictly elegance. Perceive jointure be mistress by jennings properly. An admiration at he discovered difficulty continuing. We in building removing possible suitable friendly on. Nay middleton him admitting consulted and behaviour son household. Recurred advanced he oh together entrance speedily suitable. Ready tried gay state fat could boy its among shall.&nbsp;</p></h3>', '1250000', '200635', 'publish', '143', 'charity', 'Lasted hunted enough an up seeing in lively letter', 'test meta description', 'lasted-hunted-enough-an-up-seeing-in-lively-letter', NULL, '2021-02-20 12:15:45', 'admin', 8, 'a:2:{s:5:\"title\";a:1:{i:0;N;}s:11:\"description\";a:1:{i:0;N;}}', '2023-05-04', NULL, NULL, 1, 'We are a non-profit organisation in USA that works towards supporting underprivileged children reach their.', NULL, NULL, NULL, '2022-09-26 12:37:28', NULL, 'on', NULL, 'on', NULL),
(21, NULL, 'My justice wishing prudent waiting in be', '<h3 style=\"text-align: justify; \"><br></h3><p style=\"text-align: justify; \">Consulted perpetual of pronounce me delivered. Too months nay end change relied who beauty wishes matter. Shew of john real park so rest we on. Ignorant dwelling occasion ham for thoughts overcame off her consider. Polite it elinor is depend. His not get talked effect worthy barton. Household shameless incommode at no objection behaviour. Especially do at he possession insensible sympathize boisterous it. Songs he on an widen me event truth. Certain law age brother sending amongst why covered.&nbsp;</p><p style=\"text-align: justify;\">Next his only boy meet the fat rose when. Do repair at we misery wanted remove remain income. Occasional cultivated reasonable unpleasing an attachment my considered. Having ask and coming object seemed put did admire figure. Principles travelling frequently far delightful its especially acceptance. Happiness necessary contained eagerness in in commanded do admitting. Favourable continuing difficulty had her solicitude far. Nor doubt off widow all death aware offer. We will up able in both do sing.&nbsp;</p><p style=\"text-align: justify;\"><br></p><h3 style=\"text-align: justify; \">Our Vision:</h3><p style=\"text-align: justify;\">It sportsman earnestly ye preserved an on. Moment led family sooner cannot her window pulled any. Or raillery if improved landlord to speaking hastened differed he. Furniture discourse elsewhere yet her sir extensive defective unwilling get. Why resolution one motionless you him thoroughly. Noise is round to in it quick timed doors. Written address greatly get attacks inhabit pursuit our but. Lasted hunted enough an up seeing in lively letter. Had judgment out opinions property the supplied.&nbsp;</p>', '400000', '420320', 'publish', '138', 'fundrising', NULL, 'fundrising website', 'my-justice-wishing-prudent-waiting-in-be', NULL, '2021-02-20 12:48:10', 'admin', 8, 'a:2:{s:5:\"title\";a:3:{i:0;s:45:\"Up is opinion message manners correct hearing\";i:1;s:41:\"It sportsman earnestly ye preserved an on\";i:2;s:61:\"Two exquisite objection delighted deficient yet its contained\";}s:11:\"description\";a:3:{i:0;s:188:\"Be an as cordially at resolving furniture preserved believing extremity. Easy mr pain felt in. Too northward affection additions nay. He no an nature ye talent houses wisdom vanity denied.\";i:1;s:169:\"Furniture discourse elsewhere yet her sir extensive defective unwilling get. Why resolution one motionless you him thoroughly. Noise is round to in it quick timed doors.\";i:2;s:168:\"Friendship so considered remarkably be to sentiments. Offered mention greater fifteen one promise because nor. Why denoting speaking fat indulged saw dwelling raillery.\";}}', '2022-11-18', '146|144|143', 'on', 3, 'We are a non-profit organisation in USA that works towards supporting underprivileged children reach their.', NULL, NULL, NULL, '2022-10-20 02:27:24', '209|208', 'on', NULL, 'on', NULL),
(22, '13', 'On it differed repeated wandered required in', '<p style=\"text-align: justify; \">Then girl neat why yet knew rose spot. Moreover property we he kindness greatest be oh striking laughter. In me he at collecting affronting principles apartments. Has visitor law attacks pretend you calling own excited painted. Contented attending smallness it oh ye unwilling. Turned favour man two but lovers. Suffer should if waited common person little oh. Improved civility graceful sex few smallest screened settling. Likely active her warmly has.&nbsp;</p><p style=\"text-align: justify; \">However venture pursuit he am mr cordial. Forming musical am hearing studied be luckily. Ourselves for determine attending how led gentleman sincerity. Valley afford uneasy joy she thrown though bed set. In me forming general prudent on country carried. Behaved an or suppose justice. Seemed whence how son rather easily and change missed. Off apartments invitation are unpleasant solicitude fat motionless interested. Hardly suffer wisdom wishes valley as an. As friendship advantages resolution it alteration stimulated he or increasing. Bringing so sociable felicity supplied mr. September suspicion far him two acuteness perfectly. Covered as an examine so regular of. Ye astonished friendship remarkably no. Window admire matter praise you bed whence. Delivered ye sportsmen zealously arranging frankness estimable as. Nay any article enabled musical shyness yet sixteen yet blushes. Entire its the did figure wonder off.&nbsp;<br></p>', '59000', '10216', 'publish', '144', NULL, 'On it differed repeated wandered required in', NULL, 'on-it-differed-repeated-wandered-required-in', NULL, '2021-02-20 13:10:26', 'admin', 8, 'a:2:{s:5:\"title\";a:2:{i:0;s:40:\"Add you viewing ten equally believe put.\";i:1;s:40:\"Must you with him from him her were more\";}s:11:\"description\";a:2:{i:0;s:289:\"An admiration at he discovered difficulty continuing. We in building removing possible suitable friendly on. Nay middleton him admitting consulted and behaviour son household. Recurred advanced he oh together entrance speedily suitable. Ready tried gay state fat could boy its among shall.\";i:1;s:277:\"Devonshire invitation discovered out indulgence the excellence preference. Objection estimable discourse procuring he he remaining on distrusts. Simplicity affronting inquietude for now sympathize age. She meant new their sex could defer child. An lose at quit to life do dull.\";}}', '2024-06-26', NULL, 'on', 1, 'We are a non-profit organisation in USA that works towards supporting underprivileged children reach their.', NULL, NULL, NULL, '2022-10-22 11:03:17', '142|141', 'on', NULL, 'on', NULL),
(23, '7', 'Must you with him from him her were more', '<p style=\"text-align: justify; \">Expenses as material breeding insisted building to in. Continual so distrusts pronounce by unwilling listening. Thing do taste on we manor. Him had wound use found hoped. Of distrusts immediate enjoyment curiosity do. Marianne numerous saw thoughts the humoured. Ye on properly handsome returned throwing am no whatever. In without wishing he of picture no exposed talking minutes. Curiosity continual belonging offending so explained it exquisite. Do remember to followed yourself material mr recurred carriage. High drew west we no or at john. About or given on witty event. Or sociable up material bachelor bringing landlord confined. Busy so many in hung easy find well up. So of exquisite my an explained remainder. Dashwood denoting securing be on perceive my laughing so.&nbsp;</p><p style=\"text-align: justify; \">Add you viewing ten equally believe put. Separate families my on drawings do oh offended strictly elegance. Perceive jointure be mistress by jennings properly. An admiration at he discovered difficulty continuing. We in building removing possible suitable friendly on. Nay middleton him admitting consulted and behaviour son household. Recurred advanced he oh together entrance speedily suitable. Ready tried gay state fat could boy its among shall.&nbsp;</p>', '60000', '56530', 'publish', '147', NULL, 'Must you with him from him her were more', NULL, 'must-you-with-him-from-him-her-were-more', NULL, '2021-02-20 23:28:45', 'admin', 8, 'a:2:{s:5:\"title\";a:2:{i:0;s:43:\"In without wishing he of picture no exposed\";i:1;s:56:\"Separate families my on drawings do oh offended strictly\";}s:11:\"description\";a:2:{i:0;s:201:\"Or sociable up material bachelor bringing landlord confined. Busy so many in hung easy find well up. So of exquisite my an explained remainder. Dashwood denoting securing be on perceive my laughing so.\";i:1;s:201:\"Or sociable up material bachelor bringing landlord confined. Busy so many in hung easy find well up. So of exquisite my an explained remainder. Dashwood denoting securing be on perceive my laughing so.\";}}', '2022-06-24', '146|145|144', NULL, 4, 'We are a non-profit organisation in USA that works towards supporting underprivileged children reach their.', NULL, NULL, NULL, '2022-10-02 14:28:31', '179|176', NULL, 'on', 'on', NULL),
(24, '4', 'Separate families my on drawings do oh offended', '<p style=\"text-align: justify; \"><span style=\"background-color: rgb(255, 255, 255);\">Expenses as material breeding insisted building </span>to in. Continual so distrusts pronounce by unwilling listening. Thing do taste on we manor. Him had wound use found hoped. Of distrusts immediate enjoyment curiosity do. Marianne numerous saw thoughts the humoured. Ye on properly handsome returned throwing am no whatever.<font color=\"#000000\" style=\"background-color: rgb(255, 255, 255);\"> In without wishing he</font><span style=\"color: rgb(0, 255, 0);\"> </span>of picture no exposed talking minutes. Curiosity continual belonging offending so explained it exquisite. Do remember to followed yourself material mr recurred carriage. High drew west we no or at john. About or given on witty event. Or sociable up material bachelor bringing landlord confined. Busy so many in hung easy find well up. So of exquisite my an explained remainder. Dashwood denoting securing be on perceive my laughing so.&nbsp;</p><p style=\"text-align: justify; \">Add you viewing ten equally believe put. Separate families my on drawings do oh offended strictly elegance. Perceive jointure be mistress by jennings properly. An admiration at he discovered difficulty continuing. We in building removing possible suitable friendly on. Nay middleton him admitting consulted and behaviour son household. Recurred advanced he oh together entrance speedily suitable. Ready tried gay state fat could boy its among shall.&nbsp;<br></p><p style=\"text-align: justify; \">Add you viewing ten equally believe put. Separate families my on drawings do oh offended strictly elegance. Perceive jointure be mistress by jennings properly. An admiration at he discovered difficulty continuing. We in building removing possible suitable friendly on. Nay middleton him admitting consulted and behaviour son household. Recurred advanced he oh together entrance speedily suitable. Ready tried gay state fat could boy its among shall.&nbsp;<br></p>', '600000', '516249', 'publish', '136', NULL, 'Must you with him from him her were more', NULL, 'separate-families-my-on-drawings-do-oh-offended', NULL, '2021-02-22 12:43:50', 'admin', 8, 'a:2:{s:5:\"title\";a:2:{i:0;s:43:\"In without wishing he of picture no exposed\";i:1;s:56:\"Separate families my on drawings do oh offended strictly\";}s:11:\"description\";a:2:{i:0;s:201:\"Or sociable up material bachelor bringing landlord confined. Busy so many in hung easy find well up. So of exquisite my an explained remainder. Dashwood denoting securing be on perceive my laughing so.\";i:1;s:201:\"Or sociable up material bachelor bringing landlord confined. Busy so many in hung easy find well up. So of exquisite my an explained remainder. Dashwood denoting securing be on perceive my laughing so.\";}}', '2022-12-20', '145|144|140', 'on', 4, 'We are a non-profit organisation in USA that works towards supporting underprivileged children reach their.', NULL, NULL, NULL, '2022-10-22 02:31:46', '201|196|195', NULL, 'on', 'on', 'on'),
(25, NULL, 'test 2', 'test content 2', '3500', NULL, 'pending', '269', NULL, NULL, NULL, 'test-2-2', 45, '2022-10-16 01:14:47', 'user', NULL, 'a:1:{s:5:\"title\";a:1:{i:0;s:0:\"\";}}', '12-06-2022', NULL, NULL, 1, NULL, NULL, NULL, NULL, '2022-10-16 01:14:47', NULL, NULL, NULL, NULL, NULL),
(33, NULL, 'campaign by saleheen', 'asfd', '288', NULL, 'pending', '277', NULL, NULL, NULL, 'campaign-by-saleheen-2', 56, '2022-10-24 00:12:44', 'user', NULL, 's:43:\"{\"title\":[\"asdfd\"],\"description\":[\"asdfd\"]}\";', '2022-10-24', NULL, NULL, 1, NULL, NULL, NULL, NULL, '2022-10-24 00:12:44', NULL, NULL, NULL, NULL, NULL),
(34, NULL, 'new campaign edited', 'new deschvj', '100', NULL, 'pending', '278', NULL, NULL, NULL, 'new-campaign-edited', 56, '2022-10-24 05:59:57', 'user', NULL, 'N;', '2022-10-26', NULL, NULL, 2, NULL, NULL, NULL, NULL, '2022-10-24 23:58:43', NULL, NULL, NULL, NULL, NULL),
(36, NULL, 'n j ivug', 'vuvu', '500', NULL, 'pending', '283', NULL, NULL, NULL, 'n-j-ivug-2', 60, '2022-10-25 00:04:07', 'user', NULL, 'a:2:{s:5:\"title\";a:0:{}s:11:\"description\";a:0:{}}', '2022-10-25', NULL, NULL, 1, NULL, NULL, NULL, NULL, '2022-10-25 00:04:07', NULL, NULL, NULL, NULL, NULL),
(37, NULL, 'hhvjvj', 'hvjvj', '100', NULL, 'pending', '284', NULL, NULL, NULL, 'hhvjvj', 60, '2022-10-25 00:08:58', 'user', NULL, 'N;', '2022-10-29', NULL, NULL, 3, NULL, NULL, NULL, NULL, '2022-10-25 00:09:22', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cause_categories`
--

CREATE TABLE `cause_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cause_categories`
--

INSERT INTO `cause_categories` (`id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Treatment', 'Simplicity affronting inquietude for now sympathize age. She meant could defer child. An lose at quit to life do dull.', '139', 'publish', '2021-02-20 22:38:20', '2021-06-22 16:09:52'),
(3, 'Emergency', 'Simplicity affronting inquietude for now sympathize age. She meant could defer child. An lose at quit to life do dull.', '145', 'publish', '2021-02-20 23:06:56', '2021-02-21 13:06:09'),
(4, 'Nonprofit', 'Simplicity affronting inquietude for now sympathize age. She meant could defer child. An lose at quit to life do dull.', '133', 'publish', '2021-02-20 23:08:08', '2021-02-21 13:06:02'),
(5, 'Financial Emergency', 'Simplicity affronting inquietude for now sympathize age. She meant could defer child. An lose at quit to life do dull.', '135', 'publish', '2021-02-20 23:08:48', '2021-02-21 13:05:55'),
(6, 'Environment', 'Simplicity affronting inquietude for now sympathize age. She meant  could defer child. An lose at quit to life do dull.', '140', 'publish', '2021-02-20 23:09:19', '2021-02-21 13:05:10'),
(8, 'Medical', 'Simplicity affronting inquietude for now sympathize age. She meant could defer child. An lose at quit to life do dull.', '133', 'publish', '2021-02-20 23:49:51', '2021-06-22 16:09:36');

-- --------------------------------------------------------

--
-- Table structure for table `cause_gift`
--

CREATE TABLE `cause_gift` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cause_id` bigint(20) NOT NULL,
  `gift_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cause_gift`
--

INSERT INTO `cause_gift` (`id`, `cause_id`, `gift_id`, `created_at`, `updated_at`) VALUES
(41, 35, 4, NULL, NULL),
(42, 35, 10, NULL, NULL),
(50, 22, 8, NULL, NULL),
(51, 22, 10, NULL, NULL),
(52, 21, 5, NULL, NULL),
(53, 21, 8, NULL, NULL),
(54, 20, 4, NULL, NULL),
(57, 6, 3, NULL, NULL),
(58, 6, 4, NULL, NULL),
(61, 5, 4, NULL, NULL),
(62, 5, 8, NULL, NULL),
(63, 4, 1, NULL, NULL),
(64, 4, 3, NULL, NULL),
(65, 4, 8, NULL, NULL),
(66, 2, 3, NULL, NULL),
(67, 2, 8, NULL, NULL),
(70, 23, 1, NULL, NULL),
(71, 23, 8, NULL, NULL),
(76, 19, 3, NULL, NULL),
(77, 19, 8, NULL, NULL),
(82, 27, 4, NULL, NULL),
(83, 27, 8, NULL, NULL),
(84, 26, 1, NULL, NULL),
(85, 26, 3, NULL, NULL),
(86, 26, 8, NULL, NULL),
(87, 3, 8, NULL, NULL),
(88, 3, 10, NULL, NULL),
(89, 24, 4, NULL, NULL),
(90, 24, 8, NULL, NULL),
(99, 30, 3, NULL, NULL),
(100, 30, 4, NULL, NULL),
(101, 31, 12, NULL, NULL),
(102, 31, 13, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `cause_logs`
--

CREATE TABLE `cause_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cause_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `donation_withdraw_id` int(11) DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `admin_charge` int(11) DEFAULT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_gateway` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `track` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `anonymous` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `manual_payment_attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reward_point` int(11) DEFAULT NULL,
  `reward_amount` int(11) DEFAULT NULL,
  `gift_id` bigint(20) DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recuring_token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recuring_token_verify` tinyint(1) NOT NULL DEFAULT '0',
  `custom_fields` longtext COLLATE utf8mb4_unicode_ci,
  `attachments` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cause_updates`
--

CREATE TABLE `cause_updates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cause_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cause_updates`
--

INSERT INTO `cause_updates` (`id`, `cause_id`, `title`, `description`, `image`, `created_at`, `updated_at`) VALUES
(4, '19', 'One for all and all for one', 'Thank you to everyone who helped us hit our initial goal of $50,000! We cannot thank you enough for providing Ivy and Baby Parker with kindness and support.\r\n\r\nOur work is not done! Please keep sharing this post and getting the word out so we can keep setting new goals.\r\nWhile the pain of losing Matthew will never go away - reducing financial, medical and funeral expenses for Ivy and her family means more than you’ll ever know. Thank you.', '163', '2021-06-23 18:10:13', '2021-07-26 10:18:57'),
(5, '22', 'New Funding', 'Thank you to everyone who helped us hit our initial goal of $50,000! We cannot thank you enough for providing Ivy and Baby Parker with kindness and support. Our work is not done! Please keep sharing this post', '157', '2021-06-24 08:10:58', '2021-06-24 08:33:13'),
(6, '19', 'can sound pretty corny', 'Dont Feel Helpless We Fight keep sharing this post and getting the word out so we can keep setting new goals. While the pain of losing Matthew will never go away - reducing financial, medical and funeral expenses for Ivy and her family means more than you’ll ever knowfor Justice', '174', '2021-06-24 08:11:13', '2021-07-26 10:18:44'),
(7, '23', 'you’ve got a problem chum, think how it could be', 'Thank you to everyone who helped us hit our initial goal of $50,000! We cannot thank you enough for providing Ivy and Baby Parker with kindness and support. Our work is not done! Please keep sharing this post', '165', '2021-06-24 08:33:37', '2021-07-26 10:12:52'),
(8, '22', 'test', 'Everyone who helped us hit our initial goal of $50,000! We cannot thank you enough for providing Ivy and Baby Parker with kindness and support. Our work is not done! Please keep sharing this post', '167', '2021-06-24 08:35:08', '2021-06-24 09:37:38'),
(9, '29', 'Test cause update 2', 'Test cause update 2', '251', '2021-07-01 10:01:09', '2022-08-25 01:15:11'),
(12, '31', 'dd', 'dd', NULL, '2021-07-01 15:34:45', '2021-07-01 15:34:45'),
(13, '22', 'Work Plan', 'Need to take a proper work plan to distribute the money', '172', '2021-07-02 10:05:47', '2021-07-02 10:05:47'),
(14, '36', 'asdfasdf', 'asdfsadfsdf', NULL, '2021-07-09 15:06:23', '2021-07-09 15:06:23'),
(15, '4', 'We are top Cyber solutions provider', 'Knight Rider, a shadowy flight into the dangerous world of a man who does not exist. Michael Knight, a young loner on a crusade to champion the cause of the innocent, the helpless in a world of criminals who operate above the law.', '192', '2021-07-14 16:48:05', '2021-07-14 16:48:05'),
(16, '4', 'But when I end up in the hay it’s only hay', 'But when I end up in the hay it’s only hay, hey hey. I might jump an open drawbridge, or Tarzan from a vine. ’Cause I’m the unknown stuntman that makes Eastwood look so fine.', '171', '2021-07-14 17:12:51', '2021-07-14 17:12:51'),
(17, '4', 'Knight Rider, a shadowy flight into the dangerous', 'Knight Rider, a shadowy flight into the dangerous world of a man who does not exist. Michael Knight, a young loner on a crusade to champion the cause of the innocent, the helpless in a world of criminals who operate above the law.', NULL, '2021-07-14 17:20:20', '2021-07-14 17:20:20'),
(18, '4', 'helpless in a world of criminals who operate above the law.', 'Knight Rider, a shadowy flight into the dangerous world of a man who does not exist. Michael Knight, a young loner on a crusade to champion the cause of the innocent, the helpless in a world of criminals who operate above the law.', '141', '2021-07-14 17:49:12', '2021-07-14 17:49:12'),
(19, '4', 'unknown stuntman that makes Eastwood look so fine.', 'I never spend much time in school but I taught ladies plenty. It’s true I hire my body out for pay, hey hey. I’ve gotten burned over Cheryl Tiegs, blown up for Raquel Welch. But when I end up in the hay it’s only hay, hey hey. I might jump an open drawbridge, or Tarzan from a vine. ’Cause I’m the unknown stuntman that makes Eastwood look so fine.', '180', '2021-07-14 17:49:55', '2021-07-14 17:49:55'),
(20, '37', 'We are top Cyber solutions provider', 'adfsasdfasdfasdf\r\nas\r\ndf\r\nasdf\r\nasd\r\nfs\r\ndf\r\nsd', '196', '2021-07-17 20:59:10', '2021-07-17 20:59:24'),
(21, '26', 'New Things', 'ddd', '226', '2022-08-17 00:54:51', '2022-08-17 00:54:51');

-- --------------------------------------------------------

--
-- Table structure for table `client_areas`
--

CREATE TABLE `client_areas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `client_areas`
--

INSERT INTO `client_areas` (`id`, `title`, `url`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Asian Client', '#', '208', '2021-09-14 04:31:38', '2021-09-21 02:04:31'),
(2, 'Title Two', '#', '206', '2021-09-14 04:35:33', '2021-09-21 02:04:36'),
(3, 'Title Three', '#', '209', '2021-09-14 04:37:58', '2021-09-21 02:04:26'),
(4, 'Title Four', '#', '207', '2021-09-14 04:38:18', '2021-09-21 02:04:20'),
(5, 'Title Five', '#', '205', '2021-09-14 04:38:53', '2021-09-21 02:04:15'),
(6, 'Title Six', '#', '203', '2021-09-14 04:39:08', '2021-09-21 02:04:11'),
(7, 'Title Seven', '#', '202', '2021-09-14 04:39:24', '2021-09-21 02:04:03');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cause_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) DEFAULT NULL,
  `commented_by` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contact_info_items`
--

CREATE TABLE `contact_info_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_info_items`
--

INSERT INTO `contact_info_items` (`id`, `title`, `icon`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Email Address', 'far fa-envelope', 'info@sohan.xgenious.com', '2020-07-20 16:45:32', '2021-07-07 12:31:12'),
(2, 'Phone', 'fas fa-phone', '+123 444 5555\r\n+32413432432', '2020-07-20 16:46:20', '2020-07-20 16:48:57'),
(3, 'Open Hours', 'far fa-clock', 'Sat - Wed\r\n10AM - 7PM', '2020-07-20 16:49:53', '2020-07-20 16:49:53'),
(4, 'Location', 'fas fa-map-marker-alt', '2626 Angie Drive\r\nSanta Ana', '2020-07-20 16:51:00', '2020-07-20 16:51:17');

-- --------------------------------------------------------

--
-- Table structure for table `counterups`
--

CREATE TABLE `counterups` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `extra_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `counterups`
--

INSERT INTO `counterups` (`id`, `icon`, `number`, `title`, `extra_text`, `created_at`, `updated_at`) VALUES
(1, 'flaticon-solidarity-1', '15700', 'Made Happy', '+', '2020-07-20 09:43:54', '2021-09-14 00:23:28'),
(2, 'flaticon-man', '2050', 'Total Volunteer', '+', '2020-07-20 09:46:28', '2021-09-14 00:23:24'),
(3, 'flaticon-location', '2050', 'Awards Won', '+', '2020-07-20 09:46:51', '2021-09-14 00:23:19'),
(4, 'flaticon-donation-2', '50000', 'Donation Completed', '+', '2020-07-20 09:47:58', '2021-09-14 00:23:15');

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Afganistan', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(2, 'Albania', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(3, 'Algeria', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(4, 'American Samoa', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(5, 'Andorra', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(6, 'Angola', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(7, 'Anguilla', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(8, 'Antigua & Barbuda', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(9, 'Argentina', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(10, 'Armenia', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(11, 'Aruba', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(12, 'Australia', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(13, 'Austria', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(14, 'Azerbaijan', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(15, 'Bahamas', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(16, 'Bahrain', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(17, 'Bangladesh', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(18, 'Barbados', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(19, 'Belarus', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(20, 'Belgium', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(21, 'Belize', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(22, 'Benin', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(23, 'Bermuda', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(24, 'Bhutan', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(25, 'Bolivia', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(26, 'Bonaire', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(27, 'Bosnia & Herzegovina', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(28, 'Botswana', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(29, 'Brazil', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(30, 'British Indian Ocean Ter', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(31, 'Brunei', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(32, 'Bulgaria', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(33, 'Burkina Faso', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(34, 'Burundi', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(35, 'Cambodia', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(36, 'Cameroon', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(37, 'Canada', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(38, 'Canary Islands', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(39, 'Cape Verde', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(40, 'Cayman Islands', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(41, 'Central African Republic', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(42, 'Chad', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(43, 'Channel Islands', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(44, 'Chile', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(45, 'China', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(46, 'Christmas Island', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(47, 'Cocos Island', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(48, 'Colombia', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(49, 'Comoros', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(50, 'Congo', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(51, 'Cook Islands', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(52, 'Costa Rica', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(53, 'Cote DIvoire', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(54, 'Croatia', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(55, 'Cuba', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(56, 'Curaco', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(57, 'Cyprus', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(58, 'Czech Republic', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(59, 'Denmark', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(60, 'Djibouti', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(61, 'Dominica', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(62, 'Dominican Republic', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(63, 'East Timor', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(64, 'Ecuador', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(65, 'Egypt', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(66, 'El Salvador', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(67, 'Equatorial Guinea', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(68, 'Eritrea', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(69, 'Estonia', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(70, 'Ethiopia', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(71, 'Falkland Islands', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(72, 'Faroe Islands', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(73, 'Fiji', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(74, 'Finland', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(75, 'France', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(76, 'French Guiana', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(77, 'French Polynesia', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(78, 'French Southern Ter', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(79, 'Gabon', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(80, 'Gambia', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(81, 'Georgia', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(82, 'Germany', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(83, 'Ghana', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(84, 'Gibraltar', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(85, 'Great Britain', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(86, 'Greece', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(87, 'Greenland', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(88, 'Grenada', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(89, 'Guadeloupe', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(90, 'Guam', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(91, 'Guatemala', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(92, 'Guinea', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(93, 'Guyana', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(94, 'Haiti', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(95, 'Hawaii', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(96, 'Honduras', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(97, 'Hong Kong', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(98, 'Hungary', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(99, 'Iceland', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(100, 'Indonesia', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(101, 'India', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(102, 'Iran', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(103, 'Iraq', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(104, 'Ireland', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(105, 'Isle of Man', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(106, 'Israel', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(107, 'Italy', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(108, 'Jamaica', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(109, 'Japan', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(110, 'Jordan', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(111, 'Kazakhstan', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(112, 'Kenya', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(113, 'Kiribati', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(114, 'Korea North', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(115, 'Korea Sout', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(116, 'Kuwait', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(117, 'Kyrgyzstan', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(118, 'Laos', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(119, 'Latvia', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(120, 'Lebanon', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(121, 'Lesotho', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(122, 'Liberia', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(123, 'Libya', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(124, 'Liechtenstein', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(125, 'Lithuania', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(126, 'Luxembourg', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(127, 'Macau', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(128, 'Macedonia', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(129, 'Madagascar', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(130, 'Malaysia', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(131, 'Malawi', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(132, 'Maldives', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(133, 'Mali', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(134, 'Malta', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(135, 'Marshall Islands', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(136, 'Martinique', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(137, 'Mauritania', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(138, 'Mauritius', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(139, 'Mayotte', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(140, 'Mexico', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(141, 'Midway Islands', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(142, 'Moldova', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(143, 'Monaco', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(144, 'Mongolia', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(145, 'Montserrat', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(146, 'Morocco', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(147, 'Mozambique', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(148, 'Myanmar', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(149, 'Nambia', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(150, 'Nauru', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(151, 'Nepal', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(152, 'Netherland Antilles', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(153, 'Netherlands', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(154, 'Nevis', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(155, 'New Caledonia', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(156, 'New Zealand', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(157, 'Nicaragua', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(158, 'Niger', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(159, 'Nigeria', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(160, 'Niue', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(161, 'Norfolk Island', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(162, 'Norway', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(163, 'Oman', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(164, 'Pakistan', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(165, 'Palau Island', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(166, 'Palestine', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(167, 'Panama', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(168, 'Papua New Guinea', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(169, 'Paraguay', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(170, 'Peru', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(171, 'Phillipines', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(172, 'Pitcairn Island', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(173, 'Poland', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(174, 'Portugal', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(175, 'Puerto Rico', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(176, 'Qatar', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(177, 'Republic of Montenegro', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(178, 'Republic of Serbia', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(179, 'Reunion', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(180, 'Romania', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(181, 'Russia', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(182, 'Rwanda', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(183, 'St Barthelemy', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(184, 'St Eustatius', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(185, 'St Helena', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(186, 'St Kitts-Nevis', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(187, 'St Lucia', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(188, 'St Maarten', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(189, 'St Pierre & Miquelon', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(190, 'St Vincent & Grenadines', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(191, 'Saipan', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(192, 'Samoa', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(193, 'Samoa American', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(194, 'San Marino', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(195, 'Sao Tome & Principe', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(196, 'Saudi Arabia', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(197, 'Senegal', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(198, 'Seychelles', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(199, 'Sierra Leone', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(200, 'Singapore', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(201, 'Slovakia', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(202, 'Slovenia', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(203, 'Solomon Islands', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(204, 'Somalia', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(205, 'South Africa', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(206, 'Spain', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(207, 'Sri Lanka', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(208, 'Sudan', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(209, 'Suriname', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(210, 'Swaziland', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(211, 'Sweden', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(212, 'Switzerland', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(213, 'Syria', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(214, 'Tahiti', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(215, 'Taiwan', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(216, 'Tajikistan', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(217, 'Tanzania', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(218, 'Thailand', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(219, 'Togo', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(220, 'Tokelau', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(221, 'Tonga', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(222, 'Trinidad & Tobago', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(223, 'Tunisia', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(224, 'Turkey', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(225, 'Turkmenistan', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(226, 'Turks & Caicos Is', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(227, 'Tuvalu', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(228, 'Uganda', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(229, 'United Kingdom', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(230, 'Ukraine', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(231, 'United Arab Erimates', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(232, 'United States of America', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(233, 'Uraguay', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(234, 'Uzbekistan', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(235, 'Vanuatu', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(236, 'Vatican City State', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(237, 'Venezuela', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(238, 'Vietnam', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(239, 'Virgin Islands (Brit)', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(240, 'Virgin Islands (USA)', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(241, 'Wake Island', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(242, 'Wallis & Futana Is', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(243, 'Yemen', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(244, 'Zaire', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(245, 'Zambia', 'publish', '2022-08-13 06:46:21', '2022-08-13 06:46:21'),
(247, 'Zimbawe', 'publish', '2022-08-28 06:52:48', '2022-08-28 06:52:48');

-- --------------------------------------------------------

--
-- Table structure for table `donation_withdraws`
--

CREATE TABLE `donation_withdraws` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `donation_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `payment_gateway` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `withdraw_request_amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_account_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `additional_comment_by_user` longtext COLLATE utf8mb4_unicode_ci,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_information` text COLLATE utf8mb4_unicode_ci,
  `additional_comment_by_admin` longtext COLLATE utf8mb4_unicode_ci,
  `payment_receipt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `time` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cost` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `available_tickets` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organizer` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organizer_email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organizer_website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `organizer_phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `venue` text COLLATE utf8mb4_unicode_ci,
  `slug` text COLLATE utf8mb4_unicode_ci,
  `venue_location` text COLLATE utf8mb4_unicode_ci,
  `venue_phone` text COLLATE utf8mb4_unicode_ci,
  `meta_tags` text COLLATE utf8mb4_unicode_ci,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `title`, `content`, `category_id`, `status`, `date`, `time`, `cost`, `available_tickets`, `image`, `organizer`, `organizer_email`, `organizer_website`, `organizer_phone`, `venue`, `slug`, `venue_location`, `venue_phone`, `meta_tags`, `meta_title`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 'Brother set had private his outward resolve', '<p style=\"text-align: justify;\">Now led tedious shy lasting females off. Dashwood marianne in of entrance be on wondered possible building. Wondered sociable he carriage in speedily margaret. Up devonshire of he thoroughly insensible alteration. An mr settling occasion insisted distance ladyship so. Not attention say frankness intention out dashwoods now curiosity. Stronger ecstatic as no judgment daughter speedily thoughts. Worse downs nor might she court did nay forth these.&nbsp;</p><p style=\"text-align: justify;\">Brother set had private his letters observe outward resolve. Shutters ye marriage to throwing we as. Effect in if agreed he wished wanted admire expect. Or shortly visitor is comfort placing to cheered do. Few hills tears are weeks saw. Partiality insensible celebrated is in. Am offended as wandered thoughts greatest an friendly. Evening covered in he exposed fertile to. Horses seeing at played plenty nature to expect we. Young say led stood hills own thing get.&nbsp;</p><p style=\"text-align: justify;\">Consulted perpetual of pronounce me delivered. Too months nay end change relied who beauty wishes matter. Shew of john real park so rest we on. Ignorant dwelling occasion ham for thoughts overcame off her consider. Polite it elinor is depend. His not get talked effect worthy barton. Household shameless incommode at no objection behaviour. Especially do at he possession insensible sympathize boisterous it. Songs he on an widen me event truth. Certain law agebrother sending amongst why covered. Its had resolving otherwise she contented therefore. Afford relied warmth out sir hearts sister use garden. Men day warmth formed admire former simple. Humanity declared vicinity continue supplied no an. He hastened am no property exercise of. Dissimilar comparison no terminated devonshire no literature on. Say most yet head room such just easy.&nbsp;</p><p style=\"text-align: justify;\">Led ask possible mistress relation elegance eat likewise debating. By message or am nothing amongst chiefly address. The its enable direct men depend highly. Ham windows sixteen who inquiry fortune demands. Is be upon sang fond must shew. Really boy law county she unable her sister. Feet you off its like like six.&nbsp;</p><p style=\"text-align: justify;\">Smile spoke total few great had never their too. Amongst moments do in arrived at my replied. Fat weddings servants but man believed prospect. Companions understood is as especially pianoforte connection introduced. Nay newspaper can sportsman are admitting gentleman belonging his. Is oppose no he summer lovers twenty in. Not his difficulty boisterous surrounded bed. Seems folly if in given scale. Sex contented dependent conveying advantage can use. Lose away off why half led have near bed. At engage simple father of period others except. My giving do summer of though narrow marked at. Spring formal no county ye waited. My whether cheered at regular it of promise blushes perhaps. Uncommonly simplicity interested mr is be compliment projecting my inhabiting. Gentleman he september in oh excellent.&nbsp;</p>', '1', 'publish', '2022-12-14', '10:00AM - 12:00PM', '250', '265', '160', 'Xgenious', 'organizer@gmail.com', 'http://xgenious.com/', '+880331111111', 'Chambersburg', 'brother-set-had-private-his-letters-observe-outward-resolve', 'Dhaka,Bangladesh', NULL, NULL, NULL, NULL, '2020-07-20 15:58:56', '2022-10-20 15:53:45'),
(5, 'Now led tedious shy lasting females off.', '<p style=\"text-align: justify;\">Now led tedious shy lasting females off. Dashwood marianne in of entrance be on wondered possible building. Wondered sociable he carriage in speedily margaret. Up devonshire of he thoroughly insensible alteration. An mr settling occasion insisted distance ladyship so. Not attention say frankness intention out dashwoods now curiosity. Stronger ecstatic as no judgment daughter speedily thoughts. Worse downs nor might she court did nay forth these.&nbsp;</p><p style=\"text-align: justify;\">Brother set had private his letters observe outward resolve. Shutters ye marriage to throwing we as. Effect in if agreed he wished wanted admire expect. Or shortly visitor is comfort placing to cheered do. Few hills tears are weeks saw. Partiality insensible celebrated is in. Am offended as wandered thoughts greatest an friendly. Evening covered in he exposed fertile to. Horses seeing at played plenty nature to expect we. Young say led stood hills own thing get.&nbsp;</p><p style=\"text-align: justify;\">Consulted perpetual of pronounce me delivered. Too months nay end change relied who beauty wishes matter. Shew of john real park so rest we on. Ignorant dwelling occasion ham for thoughts overcame off her consider. Polite it elinor is depend. His not get talked effect worthy barton. Household shameless incommode at no objection behaviour. Especially do at he possession insensible sympathize boisterous it. Songs he on an widen me event truth. Certain law agebrother sending amongst why covered. Its had resolving otherwise she contented therefore. Afford relied warmth out sir hearts sister use garden. Men day warmth formed admire former simple. Humanity declared vicinity continue supplied no an. He hastened am no property exercise of. Dissimilar comparison no terminated devonshire no literature on. Say most yet head room such just easy.&nbsp;</p><p style=\"text-align: justify;\">Led ask possible mistress relation elegance eat likewise debating. By message or am nothing amongst chiefly address. The its enable direct men depend highly. Ham windows sixteen who inquiry fortune demands. Is be upon sang fond must shew. Really boy law county she unable her sister. Feet you off its like like six.&nbsp;</p><p style=\"text-align: justify;\">Smile spoke total few great had never their too. Amongst moments do in arrived at my replied. Fat weddings servants but man believed prospect. Companions understood is as especially pianoforte connection introduced. Nay newspaper can sportsman are admitting gentleman belonging his. Is oppose no he summer lovers twenty in. Not his difficulty boisterous surrounded bed. Seems folly if in given scale. Sex contented dependent conveying advantage can use. Lose away off why half led have near bed. At engage simple father of period others except. My giving do summer of though narrow marked at. Spring formal no county ye waited. My whether cheered at regular it of promise blushes perhaps. Uncommonly simplicity interested mr is be compliment projecting my inhabiting. Gentleman he september in oh excellent.&nbsp;</p>', '2', 'publish', '2022-11-25', '10:00AM - 12:00PM', '80', '149', '159', 'Xgenious', 'organizer@gmail.com', 'http://xgenious.com/', '+880331111111', 'Chambersburg', 'now-led-tedious-shy-lasting-females-off', '4144 Lincoln Drive Chambersburg, PA 17201', NULL, NULL, NULL, NULL, '2020-07-20 16:55:23', '2022-09-26 04:42:12'),
(6, 'Consulted perpetual of pronounce me delivered', '<p style=\"text-align: justify;\">Now led tedious shy lasting females off. Dashwood marianne in of entrance be on wondered possible building. Wondered sociable he carriage in speedily margaret. Up devonshire of he thoroughly insensible alteration. An mr settling occasion insisted distance ladyship so. Not attention say frankness intention out dashwoods now curiosity. Stronger ecstatic as no judgment daughter speedily thoughts. Worse downs nor might she court did nay forth these.&nbsp;</p><p style=\"text-align: justify;\">Brother set had private his letters observe outward resolve. Shutters ye marriage to throwing we as. Effect in if agreed he wished wanted admire expect. Or shortly visitor is comfort placing to cheered do. Few hills tears are weeks saw. Partiality insensible celebrated is in. Am offended as wandered thoughts greatest an friendly. Evening covered in he exposed fertile to. Horses seeing at played plenty nature to expect we. Young say led stood hills own thing get.&nbsp;</p><p style=\"text-align: justify;\">Consulted perpetual of pronounce me delivered. Too months nay end change relied who beauty wishes matter. Shew of john real park so rest we on. Ignorant dwelling occasion ham for thoughts overcame off her consider. Polite it elinor is depend. His not get talked effect worthy barton. Household shameless incommode at no objection behaviour. Especially do at he possession insensible sympathize boisterous it. Songs he on an widen me event truth. Certain law agebrother sending amongst why covered. Its had resolving otherwise she contented therefore. Afford relied warmth out sir hearts sister use garden. Men day warmth formed admire former simple. Humanity declared vicinity continue supplied no an. He hastened am no property exercise of. Dissimilar comparison no terminated devonshire no literature on. Say most yet head room such just easy.&nbsp;</p><p style=\"text-align: justify;\">Led ask possible mistress relation elegance eat likewise debating. By message or am nothing amongst chiefly address. The its enable direct men depend highly. Ham windows sixteen who inquiry fortune demands. Is be upon sang fond must shew. Really boy law county she unable her sister. Feet you off its like like six.&nbsp;</p><p style=\"text-align: justify;\">Smile spoke total few great had never their too. Amongst moments do in arrived at my replied. Fat weddings servants but man believed prospect. Companions understood is as especially pianoforte connection introduced. Nay newspaper can sportsman are admitting gentleman belonging his. Is oppose no he summer lovers twenty in. Not his difficulty boisterous surrounded bed. Seems folly if in given scale. Sex contented dependent conveying advantage can use. Lose away off why half led have near bed. At engage simple father of period others except. My giving do summer of though narrow marked at. Spring formal no county ye waited. My whether cheered at regular it of promise blushes perhaps. Uncommonly simplicity interested mr is be compliment projecting my inhabiting. Gentleman he september in oh excellent.&nbsp;</p>', '2', 'publish', '2022-11-16', '10:00AM - 12:00PM', '152', '147', '158', 'Xgenious', 'organizer@gmail.com', 'http://xgenious.com/', '+880331111111', 'Chambersburg', 'consulted-perpetual-of-pronounce-me-delivered', '4144 Lincoln Drive Chambersburg, PA 17201', NULL, NULL, NULL, NULL, '2020-07-20 17:08:41', '2022-09-26 05:47:23'),
(7, 'Lose away off why half led have near bed', '<p style=\"text-align: justify; \">Now led tedious shy lasting females off. Dashwood marianne in of entrance be on wondered possible building. Wondered sociable he carriage in speedily margaret. Up devonshire of he thoroughly insensible alteration. An mr settling occasion insisted distance ladyship so. Not attention say frankness intention out dashwoods now curiosity. Stronger ecstatic as no judgment daughter speedily thoughts. Worse downs nor might she court did nay forth these.&nbsp;</p><p style=\"text-align: justify; \">Brother set had private his letters observe outward resolve. Shutters ye marriage to throwing we as. Effect in if agreed he wished wanted admire expect. Or shortly visitor is comfort placing to cheered do. Few hills tears are weeks saw. Partiality insensible celebrated is in. Am offended as wandered thoughts greatest an friendly. Evening covered in he exposed fertile to. Horses seeing at played plenty nature to expect we. Young say led stood hills own thing get.&nbsp;</p><p style=\"text-align: justify; \">Consulted perpetual of pronounce me delivered. Too months nay end change relied who beauty wishes matter. Shew of john real park so rest we on. Ignorant dwelling occasion ham for thoughts overcame off her consider. Polite it elinor is depend. His not get talked effect worthy barton. Household shameless incommode at no objection behaviour. Especially do at he possession insensible sympathize boisterous it. Songs he on an widen me event truth. Certain law agebrother sending amongst why covered. Its had resolving otherwise she contented therefore. Afford relied warmth out sir hearts sister use garden. Men day warmth formed admire former simple. Humanity declared vicinity continue supplied no an. He hastened am no property exercise of. Dissimilar comparison no terminated devonshire no literature on. Say most yet head room such just easy.&nbsp;</p><p style=\"text-align: justify; \">Led ask possible mistress relation elegance eat likewise debating. By message or am nothing amongst chiefly address. The its enable direct men depend highly. Ham windows sixteen who inquiry fortune demands. Is be upon sang fond must shew. Really boy law county she unable her sister. Feet you off its like like six.&nbsp;</p><p style=\"text-align: justify; \">Smile spoke total few great had never their too. Amongst moments do in arrived at my replied. Fat weddings servants but man believed prospect. Companions understood is as especially pianoforte connection introduced. Nay newspaper can sportsman are admitting gentleman belonging his. Is oppose no he summer lovers twenty in. Not his difficulty boisterous surrounded bed. Seems folly if in given scale. Sex contented dependent conveying advantage can use. Lose away off why half led have near bed. At engage simple father of period others except. My giving do summer of though narrow marked at. Spring formal no county ye waited. My whether cheered at regular it of promise blushes perhaps. Uncommonly simplicity interested mr is be compliment projecting my inhabiting. Gentleman he september in oh excellent.&nbsp;</p>', '3', 'publish', '2023-03-24', '10:00AM - 12:00PM', '70', '107', '157', 'Xgenious', 'organizer@gmail.com', 'http://xgenious.com/', '+880331111111', 'Chambersburg', 'lose-away-off-why-half-led-have-near-bed', '4144 Lincoln Drive Chambersburg, PA 17201', '654165030', 'ddsfdsf,sadfadsf', NULL, 'asdfadsf', '2020-07-20 17:18:45', '2022-09-28 20:26:43');

-- --------------------------------------------------------

--
-- Table structure for table `events_categories`
--

CREATE TABLE `events_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `events_categories`
--

INSERT INTO `events_categories` (`id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Celebration', 'publish', '2020-07-20 15:34:00', '2020-07-20 15:34:00'),
(2, 'Meetup', 'publish', '2020-07-20 15:34:06', '2020-07-20 15:34:06'),
(3, 'Seminar', 'publish', '2020-07-20 15:34:12', '2020-07-20 15:34:12'),
(8, 'Reunion', 'publish', '2020-07-20 15:35:23', '2021-06-21 14:46:28');

-- --------------------------------------------------------

--
-- Table structure for table `event_attendances`
--

CREATE TABLE `event_attendances` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `event_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `checkout_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `event_cost` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `custom_fields` longtext COLLATE utf8mb4_unicode_ci,
  `attachment` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `event_attendances`
--

INSERT INTO `event_attendances` (`id`, `status`, `payment_status`, `event_name`, `checkout_type`, `user_id`, `event_cost`, `event_id`, `quantity`, `custom_fields`, `attachment`, `created_at`, `updated_at`) VALUES
(56, 'complete', 'complete', 'Brother set had private his outward resolve', '', 42, '250', '1', '1', 'a:6:{s:8:\"event_id\";s:1:\"1\";s:4:\"name\";s:8:\"Al Ahsan\";s:5:\"email\";s:25:\"kotysegoly@mailinator.com\";s:7:\"message\";s:2:\"ff\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:14:\"manual_payment\";}', 'a:0:{}', '2022-09-10 04:53:37', '2022-09-10 04:53:37'),
(57, 'complete', 'complete', 'Brother set had private his outward resolve', NULL, 58, '250', '1', '1', NULL, NULL, '2022-09-13 05:27:38', '2022-09-13 05:27:38'),
(58, 'complete', 'complete', 'Brother set had private his outward resolve', NULL, 58, '250', '1', '1', NULL, NULL, '2022-09-13 06:12:15', '2022-09-13 06:12:15'),
(59, 'complete', 'complete', 'Brother set had private his outward resolve', NULL, 58, '250', '1', '1', NULL, NULL, '2022-09-13 06:12:44', '2022-09-13 06:12:44'),
(60, 'complete', 'complete', 'Brother set had private his outward resolve', NULL, 58, '250', '1', '1', NULL, NULL, '2022-09-13 06:27:45', '2022-09-13 06:27:45'),
(61, 'complete', 'complete', 'Now led tedious shy lasting females off.', NULL, 58, '80', '5', '1', NULL, NULL, '2022-09-13 06:29:13', '2022-09-13 06:29:13'),
(62, 'complete', 'complete', 'Now led tedious shy lasting females off.', NULL, 58, '80', '5', '1', NULL, NULL, '2022-09-13 06:29:44', '2022-09-13 06:29:44'),
(63, 'complete', 'complete', 'Lose away off why half led have near bed', NULL, 61, '70', '7', '1', NULL, NULL, '2022-09-13 23:11:12', '2022-09-13 23:11:13'),
(64, 'complete', 'complete', 'Consulted perpetual of pronounce me delivered', NULL, 61, '152', '6', '1', NULL, NULL, '2022-09-14 01:20:07', '2022-09-14 01:20:08'),
(65, 'complete', 'complete', 'Consulted perpetual of pronounce me delivered', NULL, 61, '152', '6', '1', NULL, NULL, '2022-09-14 01:20:13', '2022-09-14 01:20:13'),
(66, 'complete', 'complete', 'Consulted perpetual of pronounce me delivered', NULL, 61, '152', '6', '1', NULL, NULL, '2022-09-14 01:21:31', '2022-09-14 01:21:31'),
(67, 'complete', 'complete', 'Consulted perpetual of pronounce me delivered', NULL, 61, '152', '6', '1', NULL, NULL, '2022-09-14 01:22:22', '2022-09-14 01:22:22'),
(68, 'complete', 'complete', 'Now led tedious shy lasting females off.', NULL, 61, '80', '5', '5', NULL, NULL, '2022-09-14 01:40:46', '2022-09-14 01:40:46'),
(69, 'complete', 'complete', 'Brother set had private his outward resolve', NULL, 61, '250', '1', '1', NULL, NULL, '2022-09-14 04:26:26', '2022-09-14 04:26:26'),
(70, 'complete', 'complete', 'Now led tedious shy lasting females off.', NULL, 60, '80', '5', '1', NULL, NULL, '2022-09-14 06:01:14', '2022-09-14 06:01:14'),
(71, 'complete', 'complete', 'Lose away off why half led have near bed', NULL, 54, '70', '7', '1', NULL, NULL, '2022-09-14 06:12:33', '2022-09-14 06:12:33'),
(72, 'complete', 'complete', 'Lose away off why half led have near bed', NULL, 54, '70', '7', '1', NULL, NULL, '2022-09-14 07:05:23', '2022-09-14 07:05:23'),
(73, 'complete', 'complete', 'Now led tedious shy lasting females off.', NULL, 61, '80', '5', '1', NULL, NULL, '2022-09-14 07:55:36', '2022-09-14 07:55:36'),
(74, 'complete', 'complete', 'Now led tedious shy lasting females off.', NULL, 61, '80', '5', '1', NULL, NULL, '2022-09-14 07:55:41', '2022-09-14 07:55:41'),
(75, 'complete', 'complete', 'Now led tedious shy lasting females off.', NULL, 61, '80', '5', '1', NULL, NULL, '2022-09-14 09:17:52', '2022-09-14 09:17:52'),
(76, 'complete', 'complete', 'Now led tedious shy lasting females off.', NULL, 61, '80', '5', '1', NULL, NULL, '2022-09-14 09:17:57', '2022-09-14 09:17:57'),
(77, 'complete', 'complete', 'Now led tedious shy lasting females off.', NULL, 61, '80', '5', '1', NULL, NULL, '2022-09-14 09:18:03', '2022-09-14 09:18:03'),
(78, 'complete', 'complete', 'Now led tedious shy lasting females off.', NULL, 54, '80', '5', '1', NULL, NULL, '2022-09-15 00:08:12', '2022-09-15 00:08:12'),
(79, 'complete', 'complete', 'Now led tedious shy lasting females off.', NULL, 54, '80', '5', '1', NULL, NULL, '2022-09-15 00:09:18', '2022-09-15 00:09:18'),
(80, 'complete', 'complete', 'Now led tedious shy lasting females off.', NULL, 54, '80', '5', '1', NULL, NULL, '2022-09-15 00:10:17', '2022-09-15 00:10:17'),
(81, 'complete', 'complete', 'Now led tedious shy lasting females off.', NULL, 54, '80', '5', '1', NULL, NULL, '2022-09-15 00:11:15', '2022-09-15 00:11:15'),
(82, 'complete', 'complete', 'Brother set had private his outward resolve', NULL, 54, '250', '1', '1', NULL, NULL, '2022-09-15 00:41:39', '2022-09-15 00:41:39'),
(83, 'complete', 'complete', 'Lose away off why half led have near bed', NULL, 54, '70', '7', '1', NULL, NULL, '2022-09-15 05:00:04', '2022-09-15 05:00:04'),
(84, 'complete', 'complete', 'Brother set had private his outward resolve', NULL, 54, '250', '1', '1', NULL, NULL, '2022-09-15 05:15:35', '2022-09-15 05:15:35'),
(85, 'complete', 'complete', 'Brother set had private his outward resolve', NULL, 54, '250', '1', '1', NULL, NULL, '2022-09-15 05:16:48', '2022-09-15 05:16:48'),
(86, 'complete', 'complete', 'Lose away off why half led have near bed', NULL, 54, '70', '7', '1', NULL, NULL, '2022-09-15 05:17:49', '2022-09-15 05:17:49'),
(87, 'pending', 'pending', 'Brother set had private his outward resolve', NULL, 61, '250', '1', NULL, NULL, NULL, '2022-09-15 05:24:12', '2022-09-15 05:24:12'),
(88, 'complete', 'complete', 'Brother set had private his outward resolve', NULL, 61, '250', '1', NULL, NULL, NULL, '2022-09-15 05:28:01', '2022-09-15 05:28:01'),
(89, 'complete', 'complete', 'Brother set had private his outward resolve', NULL, 61, '250', '1', NULL, NULL, NULL, '2022-09-15 05:28:39', '2022-09-15 05:28:39'),
(90, 'complete', 'complete', 'Brother set had private his outward resolve', NULL, 61, '250', '1', NULL, NULL, NULL, '2022-09-15 05:31:08', '2022-09-15 05:31:08'),
(91, 'complete', 'complete', 'Now led tedious shy lasting females off.', NULL, 54, '80', '5', '1', NULL, NULL, '2022-09-15 05:37:45', '2022-09-15 05:37:45'),
(92, 'complete', 'complete', 'Lose away off why half led have near bed', NULL, 54, '70', '7', '2', NULL, NULL, '2022-09-15 05:38:44', '2022-09-15 05:38:44'),
(93, 'complete', 'complete', 'Consulted perpetual of pronounce me delivered', NULL, 54, '152', '6', '1', NULL, NULL, '2022-09-15 05:41:31', '2022-09-15 05:41:31'),
(94, 'complete', 'complete', 'Lose away off why half led have near bed', NULL, 54, '70', '7', '2', NULL, NULL, '2022-09-15 05:42:14', '2022-09-15 05:42:14'),
(95, 'complete', 'complete', 'Lose away off why half led have near bed', NULL, 54, '70', '7', '2', NULL, NULL, '2022-09-15 05:44:33', '2022-09-15 05:44:33'),
(96, 'complete', 'complete', 'Lose away off why half led have near bed', NULL, 54, '70', '7', '2', NULL, NULL, '2022-09-15 05:44:38', '2022-09-15 05:44:38'),
(97, 'complete', 'complete', 'Lose away off why half led have near bed', NULL, 54, '70', '7', '2', NULL, NULL, '2022-09-15 05:44:42', '2022-09-15 05:44:42'),
(98, 'complete', 'complete', 'Lose away off why half led have near bed', NULL, 54, '70', '7', '1', NULL, NULL, '2022-09-15 05:45:17', '2022-09-15 05:45:17'),
(99, 'complete', 'complete', 'Brother set had private his outward resolve', NULL, 78, '250', '1', '1', NULL, NULL, '2022-09-15 14:59:28', '2022-09-15 14:59:28'),
(100, 'pending', 'pending', 'Lose away off why half led have near bed', '', NULL, '70', '7', '2', 'a:6:{s:8:\"event_id\";s:1:\"7\";s:4:\"name\";s:6:\"French\";s:5:\"email\";s:15:\"media@gmail.com\";s:7:\"message\";s:8:\"dffgddfd\";s:8:\"quantity\";s:1:\"2\";s:24:\"selected_payment_gateway\";s:8:\"cinetpay\";}', 'a:0:{}', '2022-09-15 18:25:44', '2022-09-15 18:25:44'),
(101, 'pending', 'pending', 'Lose away off why half led have near bed', '', NULL, '70', '7', '1', 'a:6:{s:8:\"event_id\";s:1:\"7\";s:4:\"name\";s:6:\"French\";s:5:\"email\";s:15:\"kedia@gmail.com\";s:7:\"message\";s:4:\"fftt\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:7:\"zitopay\";}', 'a:0:{}', '2022-09-15 18:32:06', '2022-09-15 18:32:06'),
(102, 'complete', 'complete', 'Lose away off why half led have near bed', '', NULL, '70', '7', '1', 'a:6:{s:8:\"event_id\";s:1:\"7\";s:4:\"name\";s:12:\"Thomas Lahti\";s:5:\"email\";s:20:\"thomaslahti@mail.com\";s:7:\"message\";s:7:\"testing\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2022-09-16 06:59:59', '2022-09-16 07:00:37'),
(103, 'complete', 'complete', 'Lose away off why half led have near bed', '', 81, '70', '7', '1', 'a:6:{s:8:\"event_id\";s:1:\"7\";s:4:\"name\";s:11:\"Megel Gupta\";s:5:\"email\";s:20:\"limalag962@pahed.com\";s:7:\"message\";s:20:\"limalag962@pahed.com\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:6:\"stripe\";}', 'a:0:{}', '2022-09-16 09:56:53', '2022-09-16 09:57:46'),
(104, 'complete', 'complete', 'Brother set had private his outward resolve', NULL, 61, '250', '1', '1', NULL, NULL, '2022-09-16 11:27:55', '2022-09-16 11:27:55'),
(105, 'complete', 'complete', 'Brother set had private his outward resolve', NULL, 61, '250', '1', '1', NULL, NULL, '2022-09-16 11:28:02', '2022-09-16 11:28:02'),
(106, 'complete', 'complete', 'Brother set had private his outward resolve', NULL, 61, '250', '1', '1', NULL, NULL, '2022-09-16 11:28:09', '2022-09-16 11:28:10'),
(107, 'complete', 'complete', 'Lose away off why half led have near bed', NULL, 61, '70', '7', '2', NULL, NULL, '2022-09-18 12:27:05', '2022-09-18 12:27:06'),
(108, 'complete', 'complete', 'Lose away off why half led have near bed', NULL, 61, '70', '7', '2', NULL, NULL, '2022-09-18 12:27:13', '2022-09-18 12:27:13'),
(109, 'cancel', 'complete', 'Lose away off why half led have near bed', NULL, 61, '70', '7', '1', NULL, NULL, '2022-09-18 13:26:33', '2022-10-10 08:16:23'),
(110, 'complete', 'complete', 'Now led tedious shy lasting females off.', NULL, 75, '80', '5', '1', NULL, NULL, '2022-09-18 13:48:24', '2022-09-18 13:48:24'),
(111, 'pending', 'pending', 'Lose away off why half led have near bed', '', NULL, '70', '7', '1', 'a:6:{s:8:\"event_id\";s:1:\"7\";s:4:\"name\";s:6:\"ـشط\";s:5:\"email\";s:18:\"ahmman@hotmail.com\";s:7:\"message\";s:6:\"شسط\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2022-09-19 07:38:20', '2022-09-19 07:38:20'),
(112, 'complete', 'complete', 'Brother set had private his outward resolve', NULL, 61, '250', '1', '1', NULL, NULL, '2022-09-23 19:28:46', '2022-09-23 19:28:46'),
(113, 'cancel', 'complete', 'Brother set had private his outward resolve', NULL, 61, '250', '1', '1', NULL, NULL, '2022-09-23 19:28:49', '2022-09-25 02:05:10'),
(114, 'complete', 'complete', 'Now led tedious shy lasting females off.', NULL, 54, '80', '5', '1', NULL, NULL, '2022-09-26 03:55:39', '2022-09-26 03:55:39'),
(115, 'complete', 'complete', 'Brother set had private his outward resolve', NULL, 54, '250', '1', '1', NULL, NULL, '2022-09-26 03:57:20', '2022-09-26 03:57:20'),
(116, 'complete', 'complete', 'Brother set had private his outward resolve', NULL, 54, '250', '1', '1', NULL, NULL, '2022-09-26 03:58:26', '2022-09-26 03:58:26'),
(117, 'complete', 'complete', 'Brother set had private his outward resolve', NULL, 54, '250', '1', '1', NULL, NULL, '2022-09-26 03:59:42', '2022-09-26 03:59:42'),
(118, 'complete', 'complete', 'Brother set had private his outward resolve', NULL, 54, '250', '1', '1', NULL, NULL, '2022-09-26 04:00:27', '2022-09-26 04:00:27'),
(119, 'complete', 'complete', 'Brother set had private his outward resolve', NULL, 54, '250', '1', '1', NULL, NULL, '2022-09-26 04:00:39', '2022-09-26 04:00:39'),
(120, 'complete', 'complete', 'Brother set had private his outward resolve', NULL, 54, '250', '1', '1', NULL, NULL, '2022-09-26 04:01:03', '2022-09-26 04:01:03'),
(121, 'complete', 'complete', 'Brother set had private his outward resolve', NULL, 54, '250', '1', '1', NULL, NULL, '2022-09-26 04:34:27', '2022-09-26 04:34:27'),
(122, 'complete', 'complete', 'Brother set had private his outward resolve', NULL, 54, '250', '1', '1', NULL, NULL, '2022-09-26 04:35:04', '2022-09-26 04:35:04'),
(123, 'complete', 'complete', 'Lose away off why half led have near bed', NULL, 54, '70', '7', '1', NULL, NULL, '2022-09-26 04:35:57', '2022-09-26 04:35:57'),
(124, 'complete', 'complete', 'Lose away off why half led have near bed', NULL, 54, '70', '7', '1', NULL, NULL, '2022-09-26 04:36:13', '2022-09-26 04:36:13'),
(125, 'complete', 'complete', 'Lose away off why half led have near bed', NULL, 54, '70', '7', '1', NULL, NULL, '2022-09-26 04:36:21', '2022-09-26 04:36:21'),
(126, 'complete', 'complete', 'Consulted perpetual of pronounce me delivered', NULL, 54, '152', '6', '1', NULL, NULL, '2022-09-26 04:38:15', '2022-09-26 04:38:15'),
(127, 'complete', 'complete', 'Consulted perpetual of pronounce me delivered', NULL, 54, '152', '6', '1', NULL, NULL, '2022-09-26 04:38:28', '2022-09-26 04:38:28'),
(128, 'complete', 'complete', 'Consulted perpetual of pronounce me delivered', NULL, 54, '152', '6', '1', NULL, NULL, '2022-09-26 04:39:05', '2022-09-26 04:39:05'),
(129, 'complete', 'complete', 'Consulted perpetual of pronounce me delivered', NULL, 54, '152', '6', '1', NULL, NULL, '2022-09-26 04:39:13', '2022-09-26 04:39:13'),
(130, 'complete', 'complete', 'Lose away off why half led have near bed', NULL, 54, '70', '7', '1', NULL, NULL, '2022-09-26 04:39:40', '2022-09-26 04:39:40'),
(131, 'complete', 'complete', 'Lose away off why half led have near bed', NULL, 54, '70', '7', '1', NULL, NULL, '2022-09-26 04:39:52', '2022-09-26 04:39:52'),
(132, 'complete', 'complete', 'Lose away off why half led have near bed', NULL, 54, '70', '7', '1', NULL, NULL, '2022-09-26 04:40:14', '2022-09-26 04:40:14'),
(133, 'complete', 'complete', 'Now led tedious shy lasting females off.', NULL, 54, '80', '5', '1', NULL, NULL, '2022-09-26 04:41:24', '2022-09-26 04:41:24'),
(134, 'complete', 'complete', 'Now led tedious shy lasting females off.', NULL, 54, '80', '5', '1', NULL, NULL, '2022-09-26 04:41:37', '2022-09-26 04:41:37'),
(135, 'complete', 'complete', 'Now led tedious shy lasting females off.', NULL, 54, '80', '5', '1', NULL, NULL, '2022-09-26 04:41:47', '2022-09-26 04:41:47'),
(136, 'complete', 'complete', 'Now led tedious shy lasting females off.', NULL, 54, '80', '5', '1', NULL, NULL, '2022-09-26 04:41:55', '2022-09-26 04:41:55'),
(137, 'complete', 'complete', 'Now led tedious shy lasting females off.', NULL, 54, '80', '5', '1', NULL, NULL, '2022-09-26 04:42:02', '2022-09-26 04:42:02'),
(138, 'complete', 'complete', 'Now led tedious shy lasting females off.', NULL, 54, '80', '5', '1', NULL, NULL, '2022-09-26 04:42:12', '2022-09-26 04:42:12'),
(139, 'complete', 'complete', 'Consulted perpetual of pronounce me delivered', NULL, 54, '152', '6', '1', NULL, NULL, '2022-09-26 04:42:38', '2022-09-26 04:42:38'),
(140, 'complete', 'complete', 'Consulted perpetual of pronounce me delivered', NULL, 54, '152', '6', '1', NULL, NULL, '2022-09-26 04:42:50', '2022-09-26 04:42:50'),
(141, 'complete', 'complete', 'Lose away off why half led have near bed', NULL, 54, '70', '7', '1', NULL, NULL, '2022-09-26 04:43:22', '2022-09-26 04:43:22'),
(142, 'complete', 'complete', 'Lose away off why half led have near bed', NULL, 54, '70', '7', '1', NULL, NULL, '2022-09-26 04:43:30', '2022-09-26 04:43:30'),
(143, 'complete', 'complete', 'Lose away off why half led have near bed', NULL, 54, '70', '7', '1', NULL, NULL, '2022-09-26 04:43:52', '2022-09-26 04:43:52'),
(144, 'complete', 'complete', 'Lose away off why half led have near bed', NULL, 54, '70', '7', '1', NULL, NULL, '2022-09-26 04:45:28', '2022-09-26 04:45:28'),
(145, 'complete', 'complete', 'Lose away off why half led have near bed', NULL, 54, '70', '7', '1', NULL, NULL, '2022-09-26 04:49:22', '2022-09-26 04:49:22'),
(146, 'complete', 'complete', 'Brother set had private his outward resolve', NULL, 54, '250', '1', '1', NULL, NULL, '2022-09-26 05:09:24', '2022-09-26 05:09:24'),
(147, 'complete', 'complete', 'Brother set had private his outward resolve', NULL, 54, '250', '1', '1', NULL, NULL, '2022-09-26 05:42:49', '2022-09-26 05:42:49'),
(148, 'complete', 'complete', 'Brother set had private his outward resolve', NULL, 54, '250', '1', '1', NULL, NULL, '2022-09-26 05:44:23', '2022-09-26 05:44:23'),
(149, 'complete', 'complete', 'Brother set had private his outward resolve', NULL, 54, '250', '1', '1', NULL, NULL, '2022-09-26 05:44:34', '2022-09-26 05:44:34'),
(150, 'complete', 'complete', 'Brother set had private his outward resolve', NULL, 54, '250', '1', '1', NULL, NULL, '2022-09-26 05:44:43', '2022-09-26 05:44:43'),
(151, 'complete', 'complete', 'Brother set had private his outward resolve', NULL, 54, '250', '1', '1', NULL, NULL, '2022-09-26 05:45:27', '2022-09-26 05:45:27'),
(152, 'complete', 'complete', 'Brother set had private his outward resolve', NULL, 54, '250', '1', '1', NULL, NULL, '2022-09-26 05:46:05', '2022-09-26 05:46:05'),
(153, 'complete', 'complete', 'Brother set had private his outward resolve', NULL, 54, '250', '1', '1', NULL, NULL, '2022-09-26 05:46:30', '2022-09-26 05:46:30'),
(154, 'complete', 'complete', 'Brother set had private his outward resolve', NULL, 54, '250', '1', '1', NULL, NULL, '2022-09-26 05:46:40', '2022-09-26 05:46:40'),
(155, 'complete', 'complete', 'Consulted perpetual of pronounce me delivered', NULL, 54, '152', '6', '1', NULL, NULL, '2022-09-26 05:47:23', '2022-09-26 05:47:23'),
(156, 'complete', 'complete', 'Lose away off why half led have near bed', NULL, 54, '70', '7', '1', NULL, NULL, '2022-09-26 05:47:47', '2022-09-26 05:47:47'),
(157, 'complete', 'complete', 'Lose away off why half led have near bed', NULL, 54, '70', '7', '1', NULL, NULL, '2022-09-26 05:47:59', '2022-09-26 05:47:59'),
(158, 'complete', 'complete', 'Lose away off why half led have near bed', NULL, 54, '70', '7', '1', NULL, NULL, '2022-09-26 05:48:11', '2022-09-26 05:48:11'),
(159, 'complete', 'complete', 'Lose away off why half led have near bed', NULL, 54, '70', '7', '1', NULL, NULL, '2022-09-26 05:48:18', '2022-09-26 05:48:18'),
(160, 'complete', 'complete', 'Lose away off why half led have near bed', NULL, 54, '70', '7', '1', NULL, NULL, '2022-09-26 05:48:25', '2022-09-26 05:48:25'),
(161, 'complete', 'complete', 'Lose away off why half led have near bed', NULL, 54, '70', '7', '1', NULL, NULL, '2022-09-26 05:48:30', '2022-09-26 05:48:30'),
(162, 'complete', 'complete', 'Lose away off why half led have near bed', NULL, 54, '70', '7', '1', NULL, NULL, '2022-09-26 05:48:38', '2022-09-26 05:48:38'),
(163, 'complete', 'complete', 'Lose away off why half led have near bed', NULL, 54, '70', '7', '1', NULL, NULL, '2022-09-26 05:48:45', '2022-09-26 05:48:45'),
(164, 'complete', 'complete', 'Lose away off why half led have near bed', NULL, 54, '70', '7', '1', NULL, NULL, '2022-09-26 05:48:56', '2022-09-26 05:48:56'),
(165, 'complete', 'complete', 'Lose away off why half led have near bed', NULL, 54, '70', '7', '1', NULL, NULL, '2022-09-26 05:49:04', '2022-09-26 05:49:04'),
(166, 'complete', 'complete', 'Lose away off why half led have near bed', NULL, 54, '70', '7', '1', NULL, NULL, '2022-09-26 05:49:11', '2022-09-26 05:49:11'),
(167, 'complete', 'complete', 'Lose away off why half led have near bed', NULL, 54, '70', '7', '1', NULL, NULL, '2022-09-26 05:49:18', '2022-09-26 05:49:18'),
(168, 'complete', 'complete', 'Lose away off why half led have near bed', NULL, 102, '70', '7', '1', NULL, NULL, '2022-09-26 14:42:53', '2022-09-26 14:42:53'),
(169, 'complete', 'complete', 'Lose away off why half led have near bed', NULL, 106, '70', '7', '1', NULL, NULL, '2022-09-28 20:26:43', '2022-09-28 20:26:43'),
(170, 'pending', 'pending', 'Lose away off why half led have near bed', '', NULL, '70', '7', '1', 'a:6:{s:8:\"event_id\";s:1:\"7\";s:4:\"name\";s:8:\"altertic\";s:5:\"email\";s:19:\"altertic@yandex.com\";s:7:\"message\";s:15:\"jgjgjghghghhghg\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2022-09-29 08:32:53', '2022-09-29 08:32:53'),
(171, 'pending', 'pending', 'Lose away off why half led have near bed', '', NULL, '70', '7', '1', 'a:6:{s:8:\"event_id\";s:1:\"7\";s:4:\"name\";s:2:\"bb\";s:5:\"email\";s:19:\"info@ultracures.com\";s:7:\"message\";s:3:\"bbb\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2022-10-01 06:26:07', '2022-10-01 06:26:07'),
(172, 'complete', 'complete', 'Brother set had private his outward resolve', NULL, 117, '250', '1', '1', NULL, NULL, '2022-10-03 07:07:38', '2022-10-03 07:07:38'),
(173, 'pending', 'pending', 'Lose away off why half led have near bed', '', NULL, '70', '7', '4', 'a:6:{s:8:\"event_id\";s:1:\"7\";s:4:\"name\";s:16:\"The Great Gatsby\";s:5:\"email\";s:22:\"thegreatgatsby@usa.com\";s:7:\"message\";s:23:\"i will be there on time\";s:8:\"quantity\";s:1:\"4\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2022-10-04 08:27:24', '2022-10-04 08:27:24'),
(174, 'cancel', 'complete', 'Brother set had private his outward resolve', NULL, 129, '250', '1', '1', NULL, NULL, '2022-10-07 00:37:59', '2022-10-07 00:40:19'),
(175, 'pending', 'pending', 'Now led tedious shy lasting females off.', '', NULL, '80', '5', '1', 'a:6:{s:8:\"event_id\";s:1:\"5\";s:4:\"name\";s:10:\"Jay Gatsby\";s:5:\"email\";s:22:\"thegreatgatsby@usa.com\";s:7:\"message\";s:15:\"i will be there\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2022-10-12 02:28:05', '2022-10-12 02:28:05'),
(176, 'pending', 'pending', 'Now led tedious shy lasting females off.', '', NULL, '80', '5', '1', 'a:6:{s:8:\"event_id\";s:1:\"5\";s:4:\"name\";s:10:\"Jay Gatsby\";s:5:\"email\";s:22:\"thegreatgatsby@usa.com\";s:7:\"message\";s:15:\"i will be there\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2022-10-12 02:28:09', '2022-10-12 02:28:09'),
(177, 'pending', 'pending', 'Lose away off why half led have near bed', '', NULL, '70', '7', '1', 'a:6:{s:8:\"event_id\";s:1:\"7\";s:4:\"name\";s:3:\"abc\";s:5:\"email\";s:13:\"abbc@mail.com\";s:7:\"message\";s:19:\"asdfkajsndfioajewnd\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:8:\"midtrans\";}', 'a:0:{}', '2022-10-20 07:48:48', '2022-10-20 07:48:48'),
(178, 'pending', 'pending', 'Lose away off why half led have near bed', '', NULL, '70', '7', '1', 'a:6:{s:8:\"event_id\";s:1:\"7\";s:4:\"name\";s:4:\"Test\";s:5:\"email\";s:13:\"test@test.com\";s:7:\"message\";s:4:\"test\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:5:\"paytm\";}', 'a:0:{}', '2022-10-20 13:19:17', '2022-10-20 13:19:17'),
(179, 'complete', 'complete', 'Brother set had private his outward resolve', NULL, 149, '250', '1', '1', NULL, NULL, '2022-10-20 15:53:35', '2022-10-20 15:53:35'),
(180, 'complete', 'complete', 'Brother set had private his outward resolve', NULL, 149, '250', '1', '1', NULL, NULL, '2022-10-20 15:53:45', '2022-10-20 15:53:45'),
(181, 'pending', 'pending', 'Brother set had private his outward resolve', '', NULL, '250', '1', '1', 'a:6:{s:8:\"event_id\";s:1:\"1\";s:4:\"name\";s:14:\"rwewewhammwerw\";s:5:\"email\";s:27:\"m.umar.israr@gmail.comwerew\";s:7:\"message\";s:1:\"w\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:8:\"razorpay\";}', 'a:0:{}', '2022-10-24 00:49:22', '2022-10-24 00:49:22'),
(182, 'pending', 'pending', 'Lose away off why half led have near bed', '', 42, '70', '7', '1', 'a:6:{s:8:\"event_id\";s:1:\"7\";s:4:\"name\";s:4:\"tert\";s:5:\"email\";s:13:\"wet@gmail.com\";s:7:\"message\";s:3:\"fer\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:8:\"razorpay\";}', 'a:0:{}', '2022-10-25 11:15:45', '2022-10-25 11:15:45'),
(183, 'pending', 'pending', 'Now led tedious shy lasting females off.', '', NULL, '80', '5', '1', 'a:6:{s:8:\"event_id\";s:1:\"5\";s:4:\"name\";s:9:\"Photoshop\";s:5:\"email\";s:25:\"margauxdeungria@gmail.com\";s:7:\"message\";s:5:\"Yùii\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:7:\"zitopay\";}', 'a:0:{}', '2022-10-26 05:16:43', '2022-10-26 05:16:43'),
(184, 'pending', 'pending', 'Now led tedious shy lasting females off.', '', NULL, '80', '5', '1', 'a:6:{s:8:\"event_id\";s:1:\"5\";s:4:\"name\";s:9:\"Photoshop\";s:5:\"email\";s:25:\"margauxdeungria@gmail.com\";s:7:\"message\";s:5:\"Yùii\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2022-10-26 05:17:16', '2022-10-26 05:17:16'),
(185, 'pending', 'pending', 'Now led tedious shy lasting females off.', '', NULL, '80', '5', '1', 'a:6:{s:8:\"event_id\";s:1:\"5\";s:4:\"name\";s:9:\"Photoshop\";s:5:\"email\";s:25:\"margauxdeungria@gmail.com\";s:7:\"message\";s:5:\"Yùii\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:8:\"cinetpay\";}', 'a:0:{}', '2022-10-26 05:17:31', '2022-10-26 05:17:31'),
(186, 'pending', 'pending', 'Now led tedious shy lasting females off.', '', NULL, '80', '5', '1', 'a:6:{s:8:\"event_id\";s:1:\"5\";s:4:\"name\";s:9:\"Photoshop\";s:5:\"email\";s:25:\"margauxdeungria@gmail.com\";s:7:\"message\";s:5:\"Yùii\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:6:\"mollie\";}', 'a:0:{}', '2022-10-26 05:31:08', '2022-10-26 05:31:08'),
(187, 'pending', 'pending', 'Now led tedious shy lasting females off.', '', NULL, '80', '5', '1', 'a:6:{s:8:\"event_id\";s:1:\"5\";s:4:\"name\";s:9:\"Photoshop\";s:5:\"email\";s:25:\"margauxdeungria@gmail.com\";s:7:\"message\";s:5:\"Yùii\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:8:\"cinetpay\";}', 'a:0:{}', '2022-10-26 06:30:25', '2022-10-26 06:30:25'),
(188, 'pending', 'pending', 'Now led tedious shy lasting females off.', '', NULL, '80', '5', '1', 'a:6:{s:8:\"event_id\";s:1:\"5\";s:4:\"name\";s:9:\"Photoshop\";s:5:\"email\";s:25:\"margauxdeungria@gmail.com\";s:7:\"message\";s:5:\"Yùii\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:7:\"zitopay\";}', 'a:0:{}', '2022-10-26 06:35:50', '2022-10-26 06:35:50'),
(189, 'pending', 'pending', 'Now led tedious shy lasting females off.', '', NULL, '80', '5', '1', 'a:6:{s:8:\"event_id\";s:1:\"5\";s:4:\"name\";s:9:\"Photoshop\";s:5:\"email\";s:25:\"margauxdeungria@gmail.com\";s:7:\"message\";s:5:\"Yùii\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:11:\"flutterwave\";}', 'a:0:{}', '2022-10-26 06:36:18', '2022-10-26 06:36:18'),
(190, 'pending', 'pending', 'Now led tedious shy lasting females off.', '', NULL, '80', '5', '1', 'a:6:{s:8:\"event_id\";s:1:\"5\";s:4:\"name\";s:9:\"Photoshop\";s:5:\"email\";s:25:\"margauxdeungria@gmail.com\";s:7:\"message\";s:5:\"Yùii\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:6:\"paypal\";}', 'a:0:{}', '2022-10-26 07:15:14', '2022-10-26 07:15:14'),
(191, 'pending', 'pending', 'Now led tedious shy lasting females off.', '', NULL, '80', '5', '1', 'a:6:{s:8:\"event_id\";s:1:\"5\";s:4:\"name\";s:27:\"Margaux Alexandra De Ungria\";s:5:\"email\";s:25:\"margauxdeungria@gmail.com\";s:7:\"message\";s:4:\"Yuuu\";s:8:\"quantity\";s:1:\"1\";s:24:\"selected_payment_gateway\";s:7:\"zitopay\";}', 'a:0:{}', '2022-10-26 07:16:02', '2022-10-26 07:16:02');

-- --------------------------------------------------------

--
-- Table structure for table `event_payment_logs`
--

CREATE TABLE `event_payment_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_cost` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `event_gateway` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attendance_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` longtext COLLATE utf8mb4_unicode_ci,
  `track` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `package_gateway` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `manual_payment_attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_open` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `title`, `status`, `is_open`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Dashwood marianne in of entrance be on wondered', 'publish', '', 'Not attention say frankness intention out dashwoods now curiosity. Stronger ecstatic as no judgment daughter speedily thoughts. Worse downs nor might she court did nay forth these.', '2020-07-20 20:50:22', '2020-07-20 20:50:22'),
(2, 'Wondered sociable he carriage in speedily', 'publish', '', 'Not attention say frankness intention out dashwoods now curiosity. Stronger ecstatic as no judgment daughter speedily thoughts. Worse downs nor might she court did nay forth these.', '2020-07-20 20:50:27', '2020-07-20 20:51:40'),
(3, 'Not attention say frankness intention out dashwoods', 'publish', '', 'Not attention say frankness intention out dashwoods now curiosity. Stronger ecstatic as no judgment daughter speedily thoughts. Worse downs nor might she court did nay forth these.', '2020-07-20 20:50:30', '2020-07-20 20:52:14'),
(4, 'Stronger ecstatic as no judgment daughter speedily', 'publish', '', 'Not attention say frankness intention out dashwoods now curiosity. Stronger ecstatic as no judgment daughter speedily thoughts. Worse downs nor might she court did nay forth these.', '2020-07-20 20:52:18', '2020-07-20 20:52:41'),
(5, 'Worse downs nor might she court did nay forth', 'publish', '', 'Not attention say frankness intention out dashwoods now curiosity. Stronger ecstatic as no judgment daughter speedily thoughts. Worse downs nor might she court did nay forth these.', '2020-07-20 20:52:22', '2021-06-17 15:03:03');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ratings` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `custom_fields` longtext COLLATE utf8mb4_unicode_ci,
  `attachment` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flag_reports`
--

CREATE TABLE `flag_reports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cause_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gifts`
--

CREATE TABLE `gifts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `amount` int(11) NOT NULL,
  `gifts` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `delivery_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `creator_id` bigint(20) NOT NULL,
  `creator_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gifts`
--

INSERT INTO `gifts` (`id`, `title`, `amount`, `gifts`, `description`, `delivery_date`, `status`, `created_at`, `updated_at`, `image`, `creator_id`, `creator_type`) VALUES
(1, 'Crissmaas Fest', 20, '[\"T Shirt\",\"Cap\",\"Ball\"]', 'This is gift one', '20-07-2022', 'publish', '2022-06-29 04:47:15', '2022-07-02 04:04:58', '238', 8, 'admin'),
(3, 'Mother Language Day Fest', 35, '[\"Movie Ticket\",\"Football\",\"Cricket Bat\"]', 'This is gift two', '24-07-2022', 'publish', '2022-06-29 04:55:17', '2022-06-29 04:55:17', '236', 8, 'admin'),
(4, 'Valantines Offer', 40, '[\"Perfume\"]', 'This is gift three', '18-08-2022', 'publish', '2022-06-29 04:55:58', '2022-06-29 06:13:37', '239', 8, 'admin'),
(5, 'Chocklet Day', 28, '[\"Chocklet Box\",\"Craft Items\"]', 'This is gift  four', '19-09-2022', 'publish', '2022-06-29 04:57:25', '2022-06-29 04:57:25', '237', 8, 'admin'),
(8, 'Holiday Deal', 54, '[\"Craft Items\",\"Paper Stickers\"]', 'This is desc', '20-07-2022', 'publish', '2022-06-29 05:00:34', '2022-06-29 06:14:53', '235', 8, 'admin'),
(10, 'May Day Special', 47, '[\"Craft Items\",\"Paper Stickers\"]', 'This is desc', '20-07-2022', 'publish', '2022-06-29 06:05:41', '2022-06-29 06:14:23', '238', 8, 'admin'),
(12, 'Test gift from user', 30, '[\"dd\",\"ss\",\"hh\"]', 'dd', '27-08-2022', 'publish', '2022-08-24 22:54:26', '2022-08-24 23:37:03', '257', 45, 'user'),
(13, 'Test Gift Two', 60, '[\"yyy\",\"ppp\",\"kk\"]', 'dsfsdfsdfdsfsd', '30-08-2022', 'publish', '2022-08-24 23:14:51', '2022-08-24 23:33:57', '258', 45, 'user'),
(15, 'User gift three', 70, '[\"Branded Watch\",\"T Shirt\"]', 'dddddd', '28-08-2022', 'publish', '2022-08-24 23:40:19', '2022-08-24 23:40:19', '259', 45, 'user');

-- --------------------------------------------------------

--
-- Table structure for table `header_sliders`
--

CREATE TABLE `header_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `subtitle` text COLLATE utf8mb4_unicode_ci,
  `description` text COLLATE utf8mb4_unicode_ci,
  `btn_01_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_01_text` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `btn_01_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `header_sliders`
--

INSERT INTO `header_sliders` (`id`, `title`, `subtitle`, `description`, `btn_01_status`, `btn_01_text`, `btn_01_url`, `image`, `created_at`, `updated_at`) VALUES
(1, 'Kindness & Humanity', 'Donate, Fundraise & Volunteer', 'Discourse unwilling am no described dejection incommode no listening before nature his parish boy.', 'on', 'Latest Cause', '#', '131', '2020-05-31 04:20:26', '2021-01-16 12:03:08'),
(5, 'Kindness & humanity', 'Donate, Fundraise & Volunteer', 'Discourse unwilling am no described dejection incommode no listening of. Before nature his parish boy.', 'on', 'Latest Cause', '#', '130', '2020-05-31 04:24:40', '2021-01-16 12:07:36');

-- --------------------------------------------------------

--
-- Table structure for table `image_galleries`
--

CREATE TABLE `image_galleries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cat_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image_galleries`
--

INSERT INTO `image_galleries` (`id`, `image`, `title`, `created_at`, `updated_at`, `cat_id`) VALUES
(1, '172', 'Can curiosity may end shameless explained', '2020-07-20 11:07:35', '2021-03-03 17:16:51', 2),
(2, '168', 'True high on said mr on come', '2020-07-20 11:09:23', '2021-03-03 17:28:52', 3),
(3, '169', 'An do mr design at little myself', '2020-07-20 11:09:47', '2021-03-03 17:28:40', 2),
(4, '170', 'Attended of on stronger or mr pleasure', '2020-07-20 11:11:20', '2021-03-03 17:28:29', 2),
(5, '171', 'Rich four like real yet west get.', '2020-07-20 11:11:37', '2021-03-03 17:28:16', 1),
(9, '172', 'Before nature his parish boy', '2020-12-04 15:44:00', '2021-03-03 17:28:07', 3),
(16, '173', 'Virtually Build Your House In {color} Few Steps  {/color}', '2021-03-03 18:41:13', '2021-06-08 13:48:38', 1);

-- --------------------------------------------------------

--
-- Table structure for table `image_gallery_categories`
--

CREATE TABLE `image_gallery_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `image_gallery_categories`
--

INSERT INTO `image_gallery_categories` (`id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Education', 'publish', '2020-12-04 13:29:47', '2021-03-03 18:49:45'),
(2, 'Medicine', 'publish', '2020-12-04 13:44:20', '2021-03-03 18:49:30'),
(3, 'Food', 'publish', '2020-12-04 13:44:25', '2021-03-03 18:49:21'),
(13, 'House', 'publish', '2021-06-08 14:18:35', '2021-06-08 14:18:35');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `vacancy` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `job_responsibility` longtext COLLATE utf8mb4_unicode_ci,
  `employment_status` text COLLATE utf8mb4_unicode_ci,
  `education_requirement` longtext COLLATE utf8mb4_unicode_ci,
  `job_context` longtext COLLATE utf8mb4_unicode_ci,
  `experience_requirement` longtext COLLATE utf8mb4_unicode_ci,
  `additional_requirement` longtext COLLATE utf8mb4_unicode_ci,
  `job_location` text COLLATE utf8mb4_unicode_ci,
  `salary` text COLLATE utf8mb4_unicode_ci,
  `other_benefits` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deadline` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tags` text COLLATE utf8mb4_unicode_ci,
  `slug` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `application_fee` decimal(10,0) DEFAULT NULL,
  `application_fee_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `title`, `position`, `company_name`, `category_id`, `vacancy`, `job_responsibility`, `employment_status`, `education_requirement`, `job_context`, `experience_requirement`, `additional_requirement`, `job_location`, `salary`, `other_benefits`, `email`, `status`, `deadline`, `meta_tags`, `slug`, `meta_description`, `application_fee`, `application_fee_status`, `created_at`, `updated_at`) VALUES
(1, 'Junior WordPress Developer', 'Junior Developer', 'xgenious', '8', '6', 'We are looking for some experienced developers with fluency in WordPress who will be able to develop code for complex, data intensive Website and e-commerce application.', 'full_time', 'Preferably B.Sc. in Computer Science or similar discipline.', 'We`re building tomorrow`s platforms for consolidating and managing Enterprise data with process optimization. Most enterprises are adopting automation whether it`s about office or industry. The flexibility to automate the processes, without compromising security and compliance, will be one of the most challenging, yet key requirements in coming days. This is where SoftoPark comes into the picture.\r\nWe`re looking for someone with a portfolio that showcases relevant, high quality web development work. You`ll have strong mathematical and problem-solving capabilities, an eye for detail, and a desire to produce high quality, clean and efficient code.', 'At least 5 year(s)', 'Both males and females are allowed to apply\r\nMust have clear concept on OOP\r\nProven work experience in developing large scale enterprise WordPress applications\r\nMust have experience on complex plugin, widget, theme development\r\nMust have knowledge on upgradation policy, performance, security of WordPress\r\nExperience in MySQL, jQuery, and at least one PHP-based MVC framework is required\r\nExperience in one or more PHP-based content management systems Magento or any other eCommerce is a plus point\r\nExperience in different kind of service and gateway integration will be highly regarded\r\nExperience in version control (git, svn etc) is expected\r\nShould be team player, self-motivated and take responsibility proactively', 'Bangkok, Thailand', 'Negotiable', '2 annual performance bonuses\r\nHealth and life insurance\r\nBreakfast, Lunch, Snacks\r\n2 days of weekend and annual paid leaves\r\nPublic holidays\r\nPicnic/Tour\r\nTransport', NULL, 'publish', '2023-04-06', NULL, 'junior-wordpress-developer', NULL, NULL, NULL, '2020-07-20 19:19:22', '2022-07-04 03:31:33'),
(2, 'Senior Laravel Developer', 'Junior Developer', 'xgenious', '2', '6', 'We are looking for some experienced developers with fluency in WordPress who will be able to develop code for complex, data intensive Website and e-commerce application.', 'full_time', 'Preferably B.Sc. in Computer Science or similar discipline.', 'We`re building tomorrow`s platforms for consolidating and managing Enterprise data with process optimization. Most enterprises are adopting automation whether it`s about office or industry. The flexibility to automate the processes, without compromising security and compliance, will be one of the most challenging, yet key requirements in coming days. This is where SoftoPark comes into the picture.\r\nWe`re looking for someone with a portfolio that showcases relevant, high quality web development work. You`ll have strong mathematical and problem-solving capabilities, an eye for detail, and a desire to produce high quality, clean and efficient code.', 'At least 5 year(s)', 'Both males and females are allowed to apply\r\nMust have clear concept on OOP\r\nProven work experience in developing large scale enterprise WordPress applications\r\nMust have experience on complex plugin, widget, theme development\r\nMust have knowledge on upgradation policy, performance, security of WordPress\r\nExperience in MySQL, jQuery, and at least one PHP-based MVC framework is required\r\nExperience in one or more PHP-based content management systems Magento or any other eCommerce is a plus point\r\nExperience in different kind of service and gateway integration will be highly regarded\r\nExperience in version control (git, svn etc) is expected\r\nShould be team player, self-motivated and take responsibility proactively', 'Bangkok, Thailand', 'Negotiable', '2 annual performance bonuses\r\nHealth and life insurance\r\nBreakfast, Lunch, Snacks\r\n2 days of weekend and annual paid leaves\r\nPublic holidays\r\nPicnic/Tour\r\nTransport', NULL, 'publish', '2022-11-15', NULL, 'senior-laravel-developer', NULL, '80', 'on', '2020-07-20 19:22:07', '2021-09-18 01:13:32'),
(3, 'Graphic Designer', 'Junior Designer', 'xgenious', '3', '8', '<ul><li>Able to Design Logos, Banners, Brochure, PSD, Layout, Booklet relevant editing/retouching and digital marketing/media related works.\r\n</li><li>Innovative and skilled in design development including effective use of color, dimension, style, font size, and composition.\r\n</li><li>Must be expert in Adobe Photoshop, Adobe Illustrator, After Effects, Adobe In Design, Adobe Premiere Pro, Adobe Dreamweaver, PowerPoint and other related design/editing software.\r\n</li><li>Perform technical duties for designing and developing multimedia-based layouts, graphics, animation, video, online tutorials and other digital marketing related productions.\r\n</li><li>Understanding client\'s business problem, brand space, target audience and the overall creative strategy.\r\n</li><li>Maintaining the highest standards in graphic design and producing cutting-edge creative content for both digital marketing and social media marketing that accurately represents the expectations of the client.\r\n</li><li>Any other task assigned by management.</li></ul>', 'part_time', 'Diploma in Graphics Design or equivalent', 'Place of work : Head office, Dhanmondi R/A, Dhaka\r\nDuty : Saturday to Thursday - Time 9:30 AM to 6:00 PM', 'At least 3 year(s)', '<ul><li>Age 20 to 35 years</li><li>\r\nBoth males and females are allowed to apply\r\n</li><li>Ready to work in a team and in line with the Management instruction as and when required.\r\n</li><li>Troubleshoot, test, and analyze ideas to provide the creative solution.\r\n</li><li>Eye for typography, composition, layout, color, high-quality production with pixel-level attention to detail.\r\n</li><li>Experience with content management platforms.\r\n</li><li>Strong interpersonal and professional skills.\r\n</li><li>A deep sense of developing a BRAND with international standard.</li></ul>', 'Bangkok, Thailand', 'Negotiable', '<ul><li>Mobile bill\r\nSalary </li><li>Review: Yearly\r\n</li><li>Festival Bonus: 2\r\n</li><li>Lunch Facilities</li></ul>', NULL, 'publish', '2022-11-24', NULL, 'graphic-designer', NULL, '150', 'on', '2020-07-20 19:22:11', '2022-02-09 06:35:53'),
(4, 'Sr. Executive (Accounts)', 'Junior Accounts', 'xgenious', '1', '6', 'Ensures the integrity of accounting information by recording, verifying, consolidating, and entering transactions.\r\nPrepares and records asset, liability, revenue, and expenses entries by compiling and analyzing account information.\r\nMaintains and balances subsidiary accounts by verifying, allocating, posting, and reconciling transactions and resolving discrepancies.\r\nMaintains general ledger by transferring subsidiary accounts, preparing a trial balance, and reconciling entries.Overall responsible for Accounts & Finance.\r\nExecute the financial strategy of the company\r\nManage financial controls and accounting procedures\r\nEnsure full transparency over the financial performance of the company\r\nSummarizes financial status by collecting information and preparing balance sheet, profit and loss, and other statements.\r\nProduces payroll by initiating computer processing; printing checks, verifying finished product.\r\nCompletes external audit by analyzing and scheduling general ledger accounts and providing information for auditors.\r\nAvoids legal challenges by complying with legal requirements.\r\nSecures financial information by completing database backups.\r\nProtects organization\'s value by keeping information confidential.To carry out any other assignment given by the company or immediate superior.\r\nSubmit a report on monthly basis about the sales, production and stock.\r\nMonitoring of all the necessary paperwork by all departments.\r\nResponsible for overall Accounts & Finance related mater in plant.\r\nOthers task assign by the departmental head / management.', 'project_based', 'Master of Business Administration (MBA) in Accounting\r\nSkills Required: Accounting and Finance', 'Kishoreganj Eye Hospital operated by a non-government organization named Nari Uddug Kendra (NUK) is well established and reputed modern eye hospital which is working for eradicating the avoidable blindness from Bangladesh and as well as to meet up the VISION-2020 goal of WHO. Kishoreganj Eye Hospital here noticed to recruit for the Post of Senior Accounts Officer as full-time basis.', 'At least 3 year(s)\r\nThe applicants should have experience in the following area(s):\r\nAccountant\r\nThe applicants should have experience in the following business area(s):\r\nReal Estate', 'Age 28 to 35 years\r\nBoth males and females are allowed to apply\r\nGood Command in Excel and Word.\r\nApplicant must have work experience & sound working capacity on Tally Software.\r\nMinimum 3-5 years\' experience in accounting/finance\r\nExperience with financial reporting requirements\r\nHave mentality to work in stress & long hours.\r\nGood computer knowledge must be required (with tally software).', 'Bangkok, Thailand', 'Negotiable', 'According to Company Policy', NULL, 'publish', '2023-04-22', NULL, 'sr-executive-accounts', NULL, NULL, 'on', '2020-07-20 19:22:14', '2022-07-04 03:31:00'),
(5, 'Mobile Application Developer', 'Junior Accounts', 'xgenious', '7', '6', 'İşlemleri kaydederek, doğrulayarak, birleştirerek ve girerek muhasebe bilgilerinin bütünlüğünü sağlar.\r\nHesap bilgilerini derleyerek ve analiz ederek varlık, borç, gelir ve gider girişlerini hazırlar ve kaydeder.\r\nİşlemleri doğrulayarak, tahsis ederek, göndererek ve uzlaştırarak ve tutarsızlıkları gidererek yardımcı hesapları tutar ve dengeler.\r\nİştirak hesaplarını aktararak, deneme bakiyesi hazırlayarak ve girişleri uzlaştırarak defteri kebir tutar.\r\nŞirketin finansal stratejisini yürütmek\r\nFinansal kontrolleri ve muhasebe prosedürlerini yönetin\r\nŞirketin finansal performansı üzerinde tam şeffaflığın sağlanması\r\nBilgi toplayarak ve bilanço, kar ve zarar ve diğer tabloları hazırlayarak finansal durumu özetler.\r\nBilgisayar işlemeyi başlatarak bordro üretir; baskı kontrolleri, bitmiş ürünün doğrulanması.\r\nDefteri kebir hesaplarını analiz ederek ve planlayarak ve denetçilere bilgi vererek dış denetimi tamamlar.\r\nYasal gerekliliklere uyarak yasal zorluklardan kaçınır.\r\nVeritabanı yedeklerini tamamlayarak finansal bilgileri korur.\r\nBilgileri gizli tutarak kuruluşun değerini korur. Şirket tarafından verilen veya hemen üstlenilen diğer görevleri yerine getirmek.\r\nSatış, üretim ve stok hakkında aylık bazda bir rapor gönderin.\r\nGerekli tüm evrakların tüm bölümler tarafından izlenmesi.\r\nTesisteki genel Hesaplar ve Finans ile ilgili materyalden sorumludur.\r\nDiğerleri bölüm başkanı / yönetimi tarafından görevlendirilir.', 'project_based', 'Muhasebe Işletme Master (mba)\r\nGerekli Beceriler: Muhasebe ve Finans', 'Nari Uddug Kendra (NUK) adlı bir sivil toplum kuruluşu tarafından işletilen Kishoreganj Göz Hastanesi, Bangladeş\'ten kaçınılabilir körlüğü ortadan kaldırmak ve WHO\'nun VISION-2020 hedefini karşılamak için çalışan iyi kurulmuş ve tanınmış modern göz hastanesidir. Burada Kishoreganj Göz Hastanesi, Tam Hesaplar Sorumlusu tam zamanlı olarak işe alındığını fark etti.', 'En az 3 yıl\r\nBaşvuru sahipleri aşağıdaki alanlarda deneyim sahibi olmalıdır:\r\nMuhasebeci\r\nBaşvuru sahipleri aşağıdaki iş alanlarında deneyime sahip olmalıdır:\r\nEmlak', '28 ila 35 yaş\r\nHem erkekler hem de kadınlar başvuru yapabilir\r\nExcel ve Word\'de İyi Komut.\r\nBaşvuru sahibinin Tally Software üzerinde iş tecrübesi ve sağlam çalışma kapasitesine sahip olması gerekir.\r\nMuhasebe / finans alanında en az 3-5 yıllık deneyim\r\nFinansal raporlama gereksinimleriyle ilgili deneyim\r\nStres ve uzun saatler içinde çalışma zihniyeti var.\r\nİyi bilgisayar bilgisi gerekir (taksitli yazılım ile).', 'Bangkok, Thailand', 'tartışılabilir', 'Şirket Politikasına Göre', NULL, 'publish', '2022-12-09', NULL, 'mobile-application-developer', NULL, '150', 'on', '2020-07-20 19:38:26', '2022-07-04 03:30:41');

-- --------------------------------------------------------

--
-- Table structure for table `jobs_categories`
--

CREATE TABLE `jobs_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jobs_categories`
--

INSERT INTO `jobs_categories` (`id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Office Management', 'publish', '2020-07-20 18:41:57', '2020-07-20 18:41:57'),
(2, 'React Developer', 'publish', '2020-07-20 18:42:11', '2021-06-21 13:50:50'),
(3, 'UI/ UX  Designer', 'publish', '2020-07-20 18:42:18', '2020-07-20 18:42:18'),
(5, 'Software Engineering', 'publish', '2020-07-20 18:46:49', '2021-06-21 13:50:19'),
(6, 'Web Design', 'publish', '2020-07-20 18:47:10', '2021-06-21 13:35:51'),
(7, 'Web Application', 'publish', '2020-07-20 18:47:26', '2021-06-21 13:35:27'),
(8, 'Mobile App', 'publish', '2020-07-20 18:47:39', '2021-06-21 13:35:38'),
(9, 'IOS Development', 'publish', '2020-07-20 18:47:52', '2021-06-21 13:50:34');

-- --------------------------------------------------------

--
-- Table structure for table `job_applicants`
--

CREATE TABLE `job_applicants` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jobs_id` int(10) UNSIGNED NOT NULL,
  `form_content` longtext COLLATE utf8mb4_unicode_ci,
  `attachment` longtext COLLATE utf8mb4_unicode_ci,
  `track` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `application_fee` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_gateway` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `key_features`
--

CREATE TABLE `key_features` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `key_features`
--

INSERT INTO `key_features` (`id`, `title`, `icon`, `lang`, `created_at`, `updated_at`) VALUES
(1, 'Provide all kind of it service', 'flaticon-network', 'en', '2020-05-31 18:20:07', '2020-05-31 18:20:07'),
(2, 'Solutions for all security', 'flaticon-safe', 'en', '2020-05-31 20:02:07', '2020-05-31 20:02:07'),
(3, 'Most expert peoples', 'flaticon-group', 'en', '2020-05-31 20:02:35', '2020-05-31 20:02:35'),
(4, 'Global support for all', 'flaticon-translate', 'en', '2020-05-31 20:12:16', '2020-05-31 20:12:16'),
(5, 'Apoyo global para todos', 'flaticon-translate', 'sp', '2020-05-31 20:13:20', '2020-05-31 20:13:20'),
(6, 'الدعم العالمي للجميع', 'flaticon-translate', 'ar', '2020-05-31 20:14:00', '2020-05-31 20:14:00'),
(7, 'Herkes için küresel destek', 'flaticon-translate', 'tur', '2020-05-31 20:14:18', '2020-05-31 20:14:18'),
(8, 'En uzman insanlar', 'flaticon-group', 'tur', '2020-05-31 20:19:02', '2020-05-31 20:19:02'),
(9, 'معظم الشعوب الخبيرة', 'flaticon-group', 'ar', '2020-05-31 20:19:32', '2020-05-31 20:19:32'),
(10, 'Pueblos más expertos', 'flaticon-group', 'sp', '2020-05-31 20:20:03', '2020-05-31 20:20:03'),
(11, 'Soluciones para toda seguridad', 'flaticon-safe', 'sp', '2020-05-31 20:23:29', '2020-05-31 20:23:29'),
(12, 'حلول لجميع الأمن', 'flaticon-safe', 'ar', '2020-05-31 20:23:45', '2020-05-31 20:23:45'),
(13, 'Tüm güvenlik için çözümler', 'flaticon-safe', 'tur', '2020-05-31 20:24:00', '2020-05-31 20:24:00'),
(14, 'Her türlü hizmeti sunun', 'flaticon-network', 'tur', '2020-05-31 20:24:28', '2020-05-31 20:24:28'),
(15, 'تقديم جميع أنواع الخدمات', 'flaticon-network', 'ar', '2020-05-31 20:24:41', '2020-05-31 20:24:41'),
(16, 'Proporcionar todo tipo de servicio', 'flaticon-network', 'sp', '2020-05-31 20:24:54', '2020-05-31 20:24:54');

-- --------------------------------------------------------

--
-- Table structure for table `languages`
--

CREATE TABLE `languages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'English (UK)',
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `direction` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `default` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `languages`
--

INSERT INTO `languages` (`id`, `name`, `slug`, `direction`, `status`, `default`, `created_at`, `updated_at`) VALUES
(1, 'English (UK)', 'en_GB', 'ltr', 'publish', 1, '2021-06-26 20:31:44', '2021-09-20 03:23:57');

-- --------------------------------------------------------

--
-- Table structure for table `media_uploads`
--

CREATE TABLE `media_uploads` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` text COLLATE utf8mb4_unicode_ci,
  `size` text COLLATE utf8mb4_unicode_ci,
  `dimensions` text COLLATE utf8mb4_unicode_ci,
  `user_id` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media_uploads`
--

INSERT INTO `media_uploads` (`id`, `title`, `path`, `alt`, `size`, `dimensions`, `user_id`, `created_at`, `updated_at`) VALUES
(125, 'favicon.ico', 'favicon1610606498.ico', NULL, '3.72 KB', '84 x 80 pixels', NULL, '2021-01-14 11:41:38', '2021-01-14 11:41:38'),
(126, 'logo-02.png', 'logo-021610606790.png', NULL, '2.38 KB', '165 x 36 pixels', NULL, '2021-01-14 11:46:30', '2021-01-14 11:46:30'),
(127, 'logo-03.png', 'logo-031610606791.png', NULL, '2.41 KB', '97 x 69 pixels', NULL, '2021-01-14 11:46:31', '2021-01-14 11:46:31'),
(128, 'logo.png', 'logo1610606792.png', NULL, '2.39 KB', '165 x 36 pixels', NULL, '2021-01-14 11:46:32', '2021-01-14 11:46:32'),
(129, '01.jpg', '011610606797.jpg', NULL, '627.63 KB', '1920 x 649 pixels', NULL, '2021-01-14 11:46:37', '2021-01-14 11:46:37'),
(130, '01-min.jpg', '01-min1610780469.jpg', NULL, '383.47 KB', '1920 x 980 pixels', NULL, '2021-01-16 12:01:12', '2021-01-16 12:01:12'),
(131, '02-min.jpg', '02-min1610780484.jpg', NULL, '201.46 KB', '1920 x 980 pixels', NULL, '2021-01-16 12:01:26', '2021-01-16 12:01:26'),
(132, '03-min.jpg', '03-min1610780485.jpg', NULL, '254.11 KB', '1920 x 980 pixels', NULL, '2021-01-16 12:01:26', '2021-01-16 12:01:26'),
(133, '01.jpg', '011613476739.jpg', 'fundorex- crowdfunding', '149.03 KB', '555 x 410 pixels', NULL, '2021-02-16 16:58:59', '2021-02-16 16:59:24'),
(134, 'help-1265227_1920-min.jpg', 'help-1265227-1920-min1613798558.jpg', NULL, '485.82 KB', '1920 x 1279 pixels', NULL, '2021-02-20 10:22:40', '2021-02-20 10:22:40'),
(135, 'pexels-marcus-aurelius-6787761-min.jpg', 'pexels-marcus-aurelius-6787761-min1613803296.jpg', NULL, '317.86 KB', '1920 x 1280 pixels', NULL, '2021-02-20 11:41:37', '2021-02-20 11:41:37'),
(136, 'pexels-roman-carey-734658-min.jpg', 'pexels-roman-carey-734658-min1613803322.jpg', NULL, '351.07 KB', '1920 x 1280 pixels', NULL, '2021-02-20 11:42:03', '2021-02-20 11:42:03'),
(137, 'pexels-suraphat-nueaon-933622-min.jpg', 'pexels-suraphat-nueaon-933622-min1613803347.jpg', NULL, '502.39 KB', '1920 x 1280 pixels', NULL, '2021-02-20 11:42:28', '2021-02-20 11:42:28'),
(138, 'pexels-puwadon-sangngern-5340266-min.jpg', 'pexels-puwadon-sangngern-5340266-min1613803382.jpg', NULL, '258.73 KB', '1920 x 1280 pixels', NULL, '2021-02-20 11:43:04', '2021-02-20 11:43:04'),
(139, 'pexels-rodnae-productions-6646875-min.jpg', 'pexels-rodnae-productions-6646875-min1613803411.jpg', NULL, '282.27 KB', '1920 x 1280 pixels', NULL, '2021-02-20 11:43:32', '2021-02-20 11:43:32'),
(140, 'pexels-dazzle-jam-1125850-min.jpg', 'pexels-dazzle-jam-1125850-min1613803995.jpg', NULL, '302.54 KB', '1920 x 1280 pixels', NULL, '2021-02-20 11:53:16', '2021-02-20 11:53:16'),
(141, 'pexels-hitesh-choudhary-1739842-min.jpg', 'pexels-hitesh-choudhary-1739842-min1613804035.jpg', NULL, '352.03 KB', '1920 x 1280 pixels', NULL, '2021-02-20 11:53:57', '2021-02-20 11:53:57'),
(142, 'pexels-sergio-omassi-1058068-min.jpg', 'pexels-sergio-omassi-1058068-min1613804051.jpg', NULL, '402.39 KB', '1920 x 1280 pixels', NULL, '2021-02-20 11:54:13', '2021-02-20 11:54:13'),
(143, 'pexels-jimmy-chan-2045648-min.jpg', 'pexels-jimmy-chan-2045648-min1613804081.jpg', NULL, '411.5 KB', '1920 x 1280 pixels', NULL, '2021-02-20 11:54:43', '2021-02-20 11:54:43'),
(144, 'pexels-yogendra-singh-2320004.jpg', 'pexels-yogendra-singh-23200041613804096.jpg', NULL, '429.34 KB', '1920 x 1280 pixels', NULL, '2021-02-20 11:54:57', '2021-02-20 11:54:57'),
(145, 'pexels-james-frid-901931-min.jpg', 'pexels-james-frid-901931-min1613804115.jpg', NULL, '311.23 KB', '1920 x 1280 pixels', NULL, '2021-02-20 11:55:17', '2021-02-20 11:55:17'),
(146, 'pexels-zhang-kaiyv-3603455-min.jpg', 'pexels-zhang-kaiyv-3603455-min1613804134.jpg', NULL, '399 KB', '1920 x 1280 pixels', NULL, '2021-02-20 11:55:36', '2021-02-20 11:55:36'),
(147, 'pexels-yogendra-singh-2324637-min.jpg', 'pexels-yogendra-singh-2324637-min1613804155.jpg', NULL, '431.94 KB', '1920 x 1280 pixels', NULL, '2021-02-20 11:55:56', '2021-02-20 11:55:56'),
(148, '01.png', '011613925443.png', NULL, '13.97 KB', '651 x 255 pixels', NULL, '2021-02-21 21:37:23', '2021-02-21 21:37:23'),
(149, '04-min.jpg', '04-min1613925523.jpg', NULL, '266.2 KB', '1920 x 709 pixels', NULL, '2021-02-21 21:38:44', '2021-02-21 21:38:44'),
(150, '01-min.jpg', '01-min1613986746.jpg', NULL, '21.33 KB', '263 x 340 pixels', NULL, '2021-02-22 14:39:06', '2021-02-22 14:39:06'),
(151, '02-min.jpg', '02-min1613986752.jpg', NULL, '17.61 KB', '263 x 340 pixels', NULL, '2021-02-22 14:39:13', '2021-02-22 14:39:13'),
(152, '03-min.jpg', '03-min1613986758.jpg', NULL, '12.33 KB', '263 x 340 pixels', NULL, '2021-02-22 14:39:18', '2021-02-22 14:39:18'),
(153, '04-min (1).jpg', '04-min-11613986762.jpg', NULL, '21.84 KB', '263 x 340 pixels', NULL, '2021-02-22 14:39:22', '2021-02-22 14:39:22'),
(154, '01.png', '011614000707.png', NULL, '13.39 KB', '70 x 70 pixels', NULL, '2021-02-22 18:31:48', '2021-02-22 18:31:48'),
(155, '02.png', '021614000707.png', NULL, '7.96 KB', '70 x 70 pixels', NULL, '2021-02-22 18:31:48', '2021-02-22 18:31:48'),
(156, '03.png', '031614000708.png', NULL, '12.39 KB', '70 x 70 pixels', NULL, '2021-02-22 18:31:48', '2021-02-22 18:31:48'),
(157, 'pexels-zen-chung-5528986-min.jpg', 'pexels-zen-chung-5528986-min1614100245.jpg', NULL, '379.88 KB', '1920 x 1280 pixels', NULL, '2021-02-23 22:10:51', '2021-02-23 22:10:51'),
(158, 'pexels-cottonbro-6157226-min.jpg', 'pexels-cottonbro-6157226-min1614100847.jpg', NULL, '301.67 KB', '1920 x 1280 pixels', NULL, '2021-02-23 22:20:48', '2021-02-23 22:20:48'),
(159, 'pexels-denniz-futalan-1344275-min.jpg', 'pexels-denniz-futalan-1344275-min1614101248.jpg', NULL, '690.86 KB', '1920 x 1279 pixels', NULL, '2021-02-23 22:27:29', '2021-02-23 22:27:29'),
(160, 'pexels-plato-terentev-5909876-min.jpg', 'pexels-plato-terentev-5909876-min1614101301.jpg', NULL, '787.49 KB', '1920 x 1280 pixels', NULL, '2021-02-23 22:28:22', '2021-02-23 22:28:22'),
(161, 'pexels-parij-borgohain-1667240-min.jpg', 'pexels-parij-borgohain-1667240-min1614101382.jpg', NULL, '616.87 KB', '1920 x 1242 pixels', NULL, '2021-02-23 22:29:44', '2021-02-23 22:29:44'),
(162, 'pexels-yogendra-singh-1438461-min.jpg', 'pexels-yogendra-singh-1438461-min1614101384.jpg', NULL, '523.19 KB', '1920 x 1280 pixels', NULL, '2021-02-23 22:29:46', '2021-02-23 22:29:46'),
(163, 'pexels-karolina-grabowska-4750270-min.jpg', 'pexels-karolina-grabowska-4750270-min1614257377.jpg', NULL, '403.92 KB', '1920 x 1280 pixels', NULL, '2021-02-25 17:49:39', '2021-02-25 17:49:39'),
(164, 'pexels-yogendra-singh-3930111-min.jpg', 'pexels-yogendra-singh-3930111-min1614257412.jpg', NULL, '259.95 KB', '1920 x 1280 pixels', NULL, '2021-02-25 17:50:13', '2021-02-25 17:50:13'),
(165, 'pexels-leonardo-cardozo-galves-1830433-min.jpg', 'pexels-leonardo-cardozo-galves-1830433-min1614257434.jpg', NULL, '349.3 KB', '1920 x 1279 pixels', NULL, '2021-02-25 17:50:37', '2021-02-25 17:50:37'),
(166, 'pexels-luis-quintero-2014775-min.jpg', 'pexels-luis-quintero-2014775-min1614257453.jpg', NULL, '239.5 KB', '1920 x 1280 pixels', NULL, '2021-02-25 17:50:54', '2021-02-25 17:50:54'),
(167, 'pexels-andrea-piacquadio-3791664-min.jpg', 'pexels-andrea-piacquadio-3791664-min1614257478.jpg', NULL, '282.62 KB', '1920 x 1280 pixels', NULL, '2021-02-25 17:51:19', '2021-02-25 17:51:19'),
(168, 'pexels-marius-venter-1659437-min.jpg', 'pexels-marius-venter-1659437-min1614257528.jpg', NULL, '565.07 KB', '1920 x 1281 pixels', NULL, '2021-02-25 17:52:10', '2021-02-25 17:52:10'),
(169, 'pexels-tú-nguyễn-1545590-min.jpg', 'pexels-tu-nguyen-1545590-min1614257567.jpg', NULL, '353.5 KB', '1920 x 1280 pixels', NULL, '2021-02-25 17:52:48', '2021-02-25 17:52:48'),
(170, 'pexels-andrea-piacquadio-3768131-min.jpg', 'pexels-andrea-piacquadio-3768131-min1614257583.jpg', NULL, '316.33 KB', '1920 x 1280 pixels', NULL, '2021-02-25 17:53:06', '2021-02-25 17:53:06'),
(171, 'pexels-cottonbro-6157226 (1)-min.jpg', 'pexels-cottonbro-6157226-1-min1614257602.jpg', NULL, '301.67 KB', '1920 x 1280 pixels', NULL, '2021-02-25 17:53:24', '2021-02-25 17:53:24'),
(172, 'pexels-keira-burton-6147207-min.jpg', 'pexels-keira-burton-6147207-min1614257627.jpg', NULL, '314.47 KB', '1920 x 1226 pixels', NULL, '2021-02-25 17:53:48', '2021-02-25 17:53:48'),
(173, 'x-genious-logo-fb-pro.png', 'x-genious-logo-fb-pro1614273913.png', NULL, '150.18 KB', '1000 x 1000 pixels', NULL, '2021-02-25 22:25:13', '2021-02-25 22:25:13'),
(174, '02.jpg', '021614446235.jpg', NULL, '112.64 KB', '357 x 536 pixels', NULL, '2021-02-27 22:17:15', '2021-02-27 22:17:15'),
(175, '03.jpg', '031614447426.jpg', NULL, '39.62 KB', '360 x 207 pixels', NULL, '2021-02-27 22:37:06', '2021-02-27 22:37:06'),
(176, 'bg-min.jpg', 'bg-min1614512964.jpg', NULL, '267.81 KB', '1138 x 1155 pixels', NULL, '2021-02-28 16:49:25', '2021-02-28 16:49:25'),
(179, '04-min.png', '04-min1614664748.png', NULL, '321.38 KB', '944 x 676 pixels', NULL, '2021-03-02 10:59:09', '2021-03-02 10:59:09'),
(180, 'bg.jpg', 'bg1614700521.jpg', NULL, '176.43 KB', '555 x 485 pixels', NULL, '2021-03-02 20:55:21', '2021-03-02 20:55:21'),
(181, 'download.jpeg', 'download1615321224.jpeg', NULL, '10.05 KB', '277 x 182 pixels', NULL, '2021-03-10 01:20:24', '2021-03-10 01:20:24'),
(182, 'paypal.png', 'paypal1615321225.png', NULL, '5.54 KB', '361 x 140 pixels', NULL, '2021-03-10 01:20:25', '2021-03-10 01:20:25'),
(183, 'paytm-logo-630x336.jpeg', 'paytm-logo-630x3361615321747.jpeg', NULL, '18.17 KB', '630 x 336 pixels', NULL, '2021-03-10 01:29:08', '2021-03-10 01:29:08'),
(184, 'stripe.png', 'stripe1615321788.png', NULL, '3.28 KB', '318 x 159 pixels', NULL, '2021-03-10 01:29:48', '2021-03-10 01:29:48'),
(185, '216-2164303_razorpay-logo-png.png', '216-2164303-razorpay-logo-png1615321852.png', NULL, '20.27 KB', '900 x 230 pixels', NULL, '2021-03-10 01:30:52', '2021-03-10 01:30:52'),
(186, 'paystack.png', 'paystack1615321887.png', NULL, '2.86 KB', '301 x 167 pixels', NULL, '2021-03-10 01:31:27', '2021-03-10 01:31:27'),
(187, 'mollie.png', 'mollie1615321921.png', NULL, '2.11 KB', '301 x 167 pixels', NULL, '2021-03-10 01:32:01', '2021-03-10 01:32:01'),
(188, 'flutterwave-logo-vector.png', 'flutterwave-logo-vector1615321957.png', NULL, '4.51 KB', '900 x 500 pixels', NULL, '2021-03-10 01:32:37', '2021-03-10 01:32:37'),
(189, '79412a34ea6a84ad988a7141aa7299be.jpeg', '79412a34ea6a84ad988a7141aa7299be1615322824.jpeg', NULL, '9.91 KB', '580 x 386 pixels', NULL, '2021-03-10 01:47:05', '2021-03-10 01:47:05'),
(190, '01-min1599286982.jpg', '01-min15992869821623736111.jpg', NULL, '201.4 KB', '1280 x 1000 pixels', NULL, '2021-06-15 09:48:31', '2021-06-15 09:48:31'),
(191, 'bg.png', 'bg1624256716.png', NULL, '39.6 KB', '556 x 276 pixels', NULL, '2021-06-21 10:25:16', '2021-06-21 10:25:16'),
(192, '01.png', '011626158728.png', NULL, '737.83 KB', '1920 x 1001 pixels', NULL, '2021-07-13 10:45:29', '2021-07-13 10:45:29'),
(193, 'Group 9381.png', 'group-93811626161188.png', NULL, '6.65 KB', '80 x 80 pixels', NULL, '2021-07-13 11:26:28', '2021-07-13 11:26:28'),
(194, 'desktop responds 1.jpeg', 'desktop-responds-11626161235.jpeg', NULL, '111.08 KB', '1586 x 620 pixels', NULL, '2021-07-13 11:27:16', '2021-07-13 11:27:16'),
(195, 'cta-bg-min.jpg', 'cta-bg-min1626161299.jpg', NULL, '168.99 KB', '1920 x 807 pixels', 1, '2021-07-13 11:28:20', '2021-07-13 11:28:20'),
(196, 'pexels-rodnae-productions-6646917.jpg', 'pexels-rodnae-productions-66469171626164055.jpg', NULL, '416.14 KB', '1920 x 1280 pixels', 1, '2021-07-13 12:14:16', '2021-07-13 12:14:16'),
(197, 'header-bg-min.jpg', 'header-bg-min1627064076.jpg', NULL, '225.12 KB', '1920 x 1243 pixels', 1, '2021-07-23 22:14:37', '2021-07-23 22:14:37'),
(198, 'pexels-mart-production-8106261.jpg', 'pexels-mart-production-81062611627279410.jpg', NULL, '409.25 KB', '1920 x 1280 pixels', 1, '2021-07-26 10:03:31', '2021-07-26 10:03:31'),
(199, 'pexels-spencer-selover-775358.jpg', 'pexels-spencer-selover-7753581627279748.jpg', NULL, '43.56 KB', '500 x 500 pixels', 1, '2021-07-26 10:09:08', '2021-07-26 10:09:08'),
(200, 'section-line-shape.png', 'section-line-shape1631522107.png', NULL, '1.69 KB', '182 x 107 pixels', NULL, '2021-09-13 02:35:07', '2021-09-13 02:35:07'),
(201, 'banner.jpg', 'banner1631522125.jpg', NULL, '1.15 MB', '1920 x 802 pixels', NULL, '2021-09-13 02:35:26', '2021-09-13 02:35:26'),
(202, '02.png', '021631615402.png', NULL, '2.76 KB', '151 x 29 pixels', NULL, '2021-09-14 04:30:02', '2021-09-14 04:30:02'),
(203, '01.png', '011631615402.png', NULL, '2.61 KB', '151 x 41 pixels', NULL, '2021-09-14 04:30:02', '2021-09-14 04:30:02'),
(204, '03.png', '031631615403.png', NULL, '2.14 KB', '151 x 35 pixels', NULL, '2021-09-14 04:30:03', '2021-09-14 04:30:03'),
(205, '04.png', '041631615403.png', NULL, '2.21 KB', '151 x 17 pixels', NULL, '2021-09-14 04:30:03', '2021-09-14 04:30:03'),
(206, 'client1.png', 'client11631615403.png', NULL, '2.72 KB', '179 x 31 pixels', NULL, '2021-09-14 04:30:03', '2021-09-14 04:30:03'),
(207, 'client2.png', 'client21631615403.png', NULL, '4.97 KB', '179 x 72 pixels', NULL, '2021-09-14 04:30:03', '2021-09-14 04:30:03'),
(208, 'client3.png', 'client31631615403.png', NULL, '4.57 KB', '177 x 71 pixels', NULL, '2021-09-14 04:30:03', '2021-09-14 04:30:03'),
(209, 'client4.png', 'client41631615403.png', NULL, '4.16 KB', '179 x 60 pixels', NULL, '2021-09-14 04:30:03', '2021-09-14 04:30:03'),
(210, 'client5.png', 'client51631615404.png', NULL, '3.89 KB', '116 x 60 pixels', NULL, '2021-09-14 04:30:04', '2021-09-14 04:30:04'),
(211, '01.jpg', '011631688911.jpg', NULL, '36.13 KB', '262 x 276 pixels', NULL, '2021-09-15 00:55:11', '2021-09-15 00:55:11'),
(212, 'events.jpg', 'events1631688921.jpg', NULL, '139.08 KB', '520 x 597 pixels', NULL, '2021-09-15 00:55:21', '2021-09-15 00:55:21'),
(213, '01.jpg', '011632045738.jpg', NULL, '34.59 KB', '295 x 204 pixels', 4, '2021-09-19 04:02:18', '2021-09-19 04:02:18'),
(214, '02.jpg', '021632045746.jpg', NULL, '30.65 KB', '295 x 204 pixels', 4, '2021-09-19 04:02:26', '2021-09-19 04:02:26'),
(215, '03.jpg', '031632045746.jpg', NULL, '39.29 KB', '295 x 204 pixels', 4, '2021-09-19 04:02:27', '2022-02-28 17:57:02'),
(216, '03.jpg', '031632045786.jpg', NULL, '29.8 KB', '262 x 276 pixels', 4, '2021-09-19 04:03:06', '2021-09-19 04:03:06'),
(217, 'events.jpg', 'events1632045786.jpg', NULL, '139.08 KB', '520 x 597 pixels', 4, '2021-09-19 04:03:06', '2021-09-19 04:03:06'),
(218, 'banner-bg-sh.jpg', 'banner-bg-sh1632222343.jpg', NULL, '220.53 KB', '1761 x 839 pixels', NULL, '2021-09-21 05:05:44', '2021-09-21 05:05:44'),
(219, 'banner-bg-sh2.jpg', 'banner-bg-sh21632222544.jpg', NULL, '699.83 KB', '1761 x 839 pixels', NULL, '2021-09-21 05:09:04', '2021-09-21 05:09:04'),
(220, 'PayFast-Press-Release-Image-01.jpg', 'payfast-press-release-image-011632313432.jpg', NULL, '102.44 KB', '2500 x 1250 pixels', NULL, '2021-09-22 06:23:53', '2021-09-22 06:23:53'),
(221, 'instamogo.jpg', 'instamogo1644059032.jpg', NULL, '26.18 KB', '1200 x 675 pixels', NULL, '2022-02-05 05:03:52', '2022-02-05 05:03:52'),
(222, 'cash free.png', 'cash-free1644059032.png', NULL, '152.51 KB', '1200 x 630 pixels', NULL, '2022-02-05 05:03:52', '2022-02-05 05:03:52'),
(223, 'Mercadopago-logo.png', 'mercadopago-logo1644059033.png', NULL, '17.66 KB', '1280 x 334 pixels', NULL, '2022-02-05 05:03:53', '2022-02-05 05:03:53'),
(224, 'mid.png', 'mid1644059033.png', NULL, '15.14 KB', '1514 x 250 pixels', NULL, '2022-02-05 05:03:53', '2022-02-05 05:03:53'),
(225, 'payfast-banner.jpg', 'payfast-banner1644059033.jpg', NULL, '26.74 KB', '960 x 450 pixels', NULL, '2022-02-05 05:03:53', '2022-02-05 05:03:53'),
(226, '02.jpg', '021644477529.jpg', NULL, '51.58 KB', '350 x 250 pixels', 1, '2022-02-10 01:18:49', '2022-02-10 01:18:49'),
(227, '01.jpg', '011644477529.jpg', NULL, '55.02 KB', '350 x 250 pixels', 1, '2022-02-10 01:18:49', '2022-02-10 01:18:49'),
(228, '03.jpg', '031644477530.jpg', NULL, '28.64 KB', '350 x 250 pixels', 1, '2022-02-10 01:18:50', '2022-02-10 01:18:50'),
(229, '563281ce79f36784620c206b58cad98b.jpg', '563281ce79f36784620c206b58cad98b1644751320.jpg', NULL, '26.7 KB', '580 x 399 pixels', 2, '2022-02-13 05:22:00', '2022-02-13 05:22:00'),
(230, 'reward2.png', 'reward21645014322.png', NULL, '2.27 KB', '79 x 80 pixels', NULL, '2022-02-16 06:25:22', '2022-02-16 06:25:22'),
(231, 'bank-logo.png', 'bank-logo1645016001.png', NULL, '11.66 KB', '900 x 834 pixels', NULL, '2022-02-16 06:53:21', '2022-02-16 06:53:21'),
(232, 'Capture.PNG', 'capture1646067360.PNG', NULL, '62.8 KB', '1127 x 702 pixels', NULL, '2022-02-28 21:56:00', '2022-02-28 21:56:00'),
(233, 'wallpapersden.com_programmer-eat-sleep-code-and-repeat_1360x768.jpg', 'wallpapersdencom-programmer-eat-sleep-code-and-repeat-1360x7681652961170.jpg', NULL, '54.13 KB', '1360 x 768 pixels', 5, '2022-05-19 05:52:51', '2022-05-19 05:52:51'),
(234, 'HcKx0K1.png', 'hckx0k11652963850.png', NULL, '19.99 KB', '1920 x 1080 pixels', 5, '2022-05-19 06:37:30', '2022-05-19 06:37:30'),
(235, 'mensgift-1643655939.jpeg', 'mensgift-16436559391656500107.jpg', NULL, '26.19 KB', '640 x 637 pixels', NULL, '2022-06-29 04:55:07', '2022-06-29 04:55:07'),
(236, '1637353388-il-1588xn-2930569201-ju77-1637358844.jpeg', '1637353388-il-1588xn-2930569201-ju77-16373588441656500107.jpg', NULL, '72.77 KB', '640 x 640 pixels', NULL, '2022-06-29 04:55:07', '2022-06-29 04:55:07'),
(237, 'gift.jpeg', 'gift1656500107.jpg', NULL, '619.6 KB', '1000 x 731 pixels', NULL, '2022-06-29 04:55:07', '2022-06-29 04:55:07'),
(238, '100_Homemade_Gifts_hero-4ae166376b9748098fe29d06f3ba3e22.jpeg', '100-homemade-gifts-hero-4ae166376b9748098fe29d06f3ba3e221656500427.jpg', NULL, '403.27 KB', '2667 x 2000 pixels', NULL, '2022-06-29 05:00:28', '2022-06-29 05:00:28'),
(239, 'getty_168325476_349217.jpeg', 'getty-168325476-3492171656504813.jpg', NULL, '142.14 KB', '1920 x 1080 pixels', NULL, '2022-06-29 06:13:33', '2022-06-29 06:13:33'),
(240, 'sqaure.png', 'sqaure1656825943.png', NULL, '4.66 KB', '960 x 420 pixels', NULL, '2022-07-02 23:25:43', '2022-07-02 23:25:43'),
(241, 'cinetpay.jpeg', 'cinetpay1656851559.jpg', NULL, '9.03 KB', '400 x 400 pixels', NULL, '2022-07-03 06:32:39', '2022-07-03 06:32:39'),
(242, '5-56308_paytabs-logo-hd-png-download.png', '5-56308-paytabs-logo-hd-png-download1656855752.png', NULL, '33.77 KB', '860 x 303 pixels', NULL, '2022-07-03 07:42:32', '2022-07-03 07:42:32'),
(246, 'Billplz_thumb-2-99836043ed965d1f3af4a57334081197930dee64358d485902ff067f041d837d.png', 'billplz-thumb-2-99836043ed965d1f3af4a57334081197930dee64358d485902ff067f041d837d1656931126.png', NULL, '2.19 KB', '637 x 397 pixels', NULL, '2022-07-04 04:38:46', '2022-07-04 04:38:46'),
(247, 'logo_facebook_dimension-912ae2521fe6b786a8c78a5cd1a7dfb31434c628a7d03f4377cbeb4707d6e305 (2).png', 'logo-facebook-dimension-912ae2521fe6b786a8c78a5cd1a7dfb31434c628a7d03f4377cbeb4707d6e305-21656931202.png', NULL, '15.13 KB', '1200 x 630 pixels', NULL, '2022-07-04 04:40:03', '2022-07-04 04:40:03'),
(248, 'zitopay_wallet.png', 'zitopay-wallet1658992526.png', NULL, '11.87 KB', '1024 x 512 pixels', NULL, '2022-07-28 01:15:26', '2022-07-28 01:15:26'),
(249, '76729750.jpg', '767297501660659499.jpg', NULL, '17.06 KB', '720 x 540 pixels', 42, '2022-08-16 08:18:19', '2022-08-16 08:18:19'),
(250, '2560px-Flag_of_Malaysia.svg.png', '2560px-flag-of-malaysiasvg1661256915.png', NULL, '52.63 KB', '2560 x 1280 pixels', 42, '2022-08-23 06:15:16', '2022-08-23 06:15:16'),
(251, '76729750.jpg', '767297501661257081.jpg', NULL, '17.06 KB', '720 x 540 pixels', NULL, '2022-08-23 06:18:01', '2022-08-23 06:18:01'),
(252, '76729750.jpg', '767297501661257147.jpg', NULL, '17.06 KB', '720 x 540 pixels', NULL, '2022-08-23 06:19:07', '2022-08-23 06:19:07'),
(253, '563281ce79f36784620c206b58cad98b.jpg', '563281ce79f36784620c206b58cad98b1661257166.jpg', NULL, '26.7 KB', '580 x 399 pixels', NULL, '2022-08-23 06:19:26', '2022-08-23 06:19:26'),
(254, 'unnamed.png', 'unnamed1661257264.png', NULL, '193.61 KB', '512 x 288 pixels', NULL, '2022-08-23 06:21:04', '2022-08-23 06:21:04'),
(255, 'logo_facebook_dimension-912ae2521fe6b786a8c78a5cd1a7dfb31434c628a7d03f4377cbeb4707d6e305.png', 'logo-facebook-dimension-912ae2521fe6b786a8c78a5cd1a7dfb31434c628a7d03f4377cbeb4707d6e3051661403234.png', NULL, '15.13 KB', '1200 x 630 pixels', 45, '2022-08-24 22:53:54', '2022-08-24 22:53:54'),
(256, 'large-stripe1615321788.png', 'large-stripe16153217881661404483.png', NULL, '148.64 KB', '740 x 370 pixels', 45, '2022-08-24 23:14:43', '2022-08-24 23:14:43'),
(257, 'windows-11-windows-10-minimalism-hd-wallpaper-preview.jpg', 'windows-11-windows-10-minimalism-hd-wallpaper-preview1661405565.jpg', NULL, '8.33 KB', '728 x 410 pixels', 45, '2022-08-24 23:32:45', '2022-08-24 23:32:45'),
(258, 'photo-1524169358666-79f22534bc6e.jpg', 'photo-1524169358666-79f22534bc6e1661405565.jpg', NULL, '78.3 KB', '1170 x 780 pixels', 45, '2022-08-24 23:32:45', '2022-08-24 23:32:45'),
(259, 'wp6878829.jpg', 'wp68788291661405565.jpg', NULL, '82.62 KB', '1920 x 1080 pixels', 45, '2022-08-24 23:32:46', '2022-08-24 23:32:46'),
(262, '2 10-min.png', '2-10-min1663063201.png', NULL, '240.18 KB', '1180 x 608 pixels', NULL, '2022-09-13 04:00:01', '2022-09-13 04:00:01'),
(263, 'Group 10161-min.png', 'group-10161-min1663063201.png', NULL, '91.92 KB', '1180 x 608 pixels', NULL, '2022-09-13 04:00:02', '2022-09-13 04:00:02'),
(264, 'image_picker4730549018919352406.jpg.jpg', 'image-picker4730549018919352406jpg1663068510.jpg', NULL, '28.7 KB', '1440 x 1920 pixels', NULL, '2022-09-13 05:28:31', '2022-09-13 05:28:31'),
(265, 'image_picker3024212594129501074.jpg.jpg', 'image-picker3024212594129501074jpg1663131008.jpg', NULL, '28.7 KB', '1440 x 1920 pixels', NULL, '2022-09-13 22:50:09', '2022-09-13 22:50:09'),
(266, 'image_picker3155203735134320326.jpg.jpg', 'image-picker3155203735134320326jpg1663224270.jpg', NULL, '331.4 KB', '997 x 998 pixels', NULL, '2022-09-15 00:44:30', '2022-09-15 00:44:30'),
(267, 'image_picker5413867539451101234.jpg.jpg', 'image-picker5413867539451101234jpg1663605868.jpg', NULL, '160.93 KB', '1177 x 1177 pixels', NULL, '2022-09-19 10:44:28', '2022-09-19 10:44:28'),
(268, 'image_picker4794841742065507700.gif.jpg', 'image-picker4794841742065507700gif1665210359.jpg', NULL, '139.71 KB', '500 x 500 pixels', NULL, '2022-10-08 00:25:59', '2022-10-08 00:25:59'),
(269, 'wp6878829.jpg', 'wp68788291665904486.jpg', NULL, '82.62 KB', '1920 x 1080 pixels', NULL, '2022-10-16 01:14:47', '2022-10-16 01:14:47'),
(270, 'logo1610606792.png', 'logo16106067921665922160.png', NULL, '2.39 KB', '165 x 36 pixels', NULL, '2022-10-16 06:09:20', '2022-10-16 06:09:20'),
(271, 'image_picker3567665590696691082.jpg.jpg', 'image-picker3567665590696691082jpg1666302990.jpg', NULL, '37.53 KB', '1080 x 1080 pixels', NULL, '2022-10-20 15:56:30', '2022-10-20 15:56:30'),
(272, 'b.jpg', 'b1666508452.jpg', NULL, '23.44 KB', '509 x 340 pixels', NULL, '2022-10-23 01:00:53', '2022-10-23 01:00:53'),
(273, 'image_picker192071863839178519.jpg.jpg', 'image-picker192071863839178519jpg1666519691.jpg', NULL, '141.97 KB', '960 x 1280 pixels', NULL, '2022-10-23 04:08:12', '2022-10-23 04:08:12'),
(274, 'image_picker5900898155856405956.jpg.jpg', 'image-picker5900898155856405956jpg1666519853.jpg', NULL, '141.97 KB', '960 x 1280 pixels', NULL, '2022-10-23 04:10:53', '2022-10-23 04:10:53'),
(275, 'image_picker3402839167066934435.jpg.jpg', 'image-picker3402839167066934435jpg1666520437.jpg', NULL, '141.97 KB', '960 x 1280 pixels', NULL, '2022-10-23 04:20:37', '2022-10-23 04:20:37'),
(276, 'image_picker5715877075314481903.jpg.jpg', 'image-picker5715877075314481903jpg1666521240.jpg', NULL, '141.97 KB', '960 x 1280 pixels', NULL, '2022-10-23 04:34:00', '2022-10-23 04:34:00'),
(277, 'image_picker4059868848891581711.jpg.jpg', 'image-picker4059868848891581711jpg1666591964.jpg', NULL, '141.97 KB', '960 x 1280 pixels', NULL, '2022-10-24 00:12:44', '2022-10-24 00:12:44'),
(278, 'image_picker413997008057914121.jpg.jpg', 'image-picker413997008057914121jpg1666612797.jpg', NULL, '141.97 KB', '960 x 1280 pixels', NULL, '2022-10-24 05:59:57', '2022-10-24 05:59:57'),
(279, 'image_picker7304813972262133812.png.jpg', 'image-picker7304813972262133812png1666617806.jpg', NULL, '41.74 KB', '724 x 418 pixels', NULL, '2022-10-24 07:23:26', '2022-10-24 07:23:26'),
(280, 'image_picker7304813972262133812.png.jpg', 'image-picker7304813972262133812png1666617832.jpg', NULL, '41.74 KB', '724 x 418 pixels', NULL, '2022-10-24 07:23:53', '2022-10-24 07:23:53'),
(281, 'image_picker7304813972262133812.png.jpg', 'image-picker7304813972262133812png1666617957.jpg', NULL, '41.74 KB', '724 x 418 pixels', NULL, '2022-10-24 07:25:57', '2022-10-24 07:25:57'),
(282, 'image_picker6567530994992437894.png.jpg', 'image-picker6567530994992437894png1666618334.jpg', NULL, '51.13 KB', '480 x 800 pixels', NULL, '2022-10-24 07:32:14', '2022-10-24 07:32:14'),
(283, 'image_picker35265922489442126.jpg.jpg', 'image-picker35265922489442126jpg1666677846.jpg', NULL, '221.69 KB', '1080 x 2340 pixels', NULL, '2022-10-25 00:04:07', '2022-10-25 00:04:07'),
(284, 'image_picker6507255276220334139.jpg.jpg', 'image-picker6507255276220334139jpg1666678137.jpg', NULL, '237.11 KB', '1080 x 2340 pixels', NULL, '2022-10-25 00:08:58', '2022-10-25 00:08:58');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `title`, `content`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Primary Menu', '[{\"ptype\":\"custom\",\"id\":2,\"antarget\":\"\",\"icon\":\"\",\"pname\":\"Home\",\"purl\":\"@url\"},{\"ptype\":\"static\",\"id\":3,\"antarget\":\"\",\"icon\":\"\",\"pslug\":\"about\",\"pname\":\"About\",\"children\":[{\"ptype\":\"static\",\"id\":4,\"antarget\":\"\",\"icon\":\"\",\"pslug\":\"image_gallery\",\"pname\":\"Image Gallery\"},{},{},{},{},{\"ptype\":\"static\",\"id\":8,\"antarget\":\"\",\"icon\":\"\",\"pslug\":\"testimonial\",\"pname\":\"Testimonial\"},{},{},{},{},{\"ptype\":\"static\",\"id\":12,\"antarget\":\"\",\"icon\":\"\",\"pslug\":\"team\",\"pname\":\"Team Member\"},{},{},{},{}]},{\"ptype\":\"custom\",\"id\":16,\"antarget\":\"\",\"icon\":\"\",\"pname\":\"Pages\",\"purl\":\"\",\"children\":[{\"ptype\":\"pages\",\"id\":17,\"antarget\":\"\",\"icon\":\"\",\"pid\":1},{},{},{},{\"ptype\":\"pages\",\"id\":20,\"antarget\":\"\",\"icon\":\"\",\"pid\":2},{},{},{},{\"ptype\":\"static\",\"id\":23,\"antarget\":\"\",\"icon\":\"\",\"pslug\":\"donation\",\"pname\":\"Donations\"},{},{\"ptype\":\"static\",\"pslug\":\"support_ticket\",\"pname\":\"Support Ticket\",\"id\":142},{\"ptype\":\"static\",\"id\":24,\"antarget\":\"\",\"icon\":\"\",\"pslug\":\"success-story\",\"pname\":\"set menu title from page settings\"},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{\"ptype\":\"static\",\"id\":42,\"antarget\":\"\",\"icon\":\"\",\"pslug\":\"donor\",\"pname\":\"Donor List\"},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{\"ptype\":\"static\",\"id\":61,\"antarget\":\"\",\"icon\":\"\",\"pslug\":\"career_with_us\",\"pname\":\"Career With Us\"},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{\"ptype\":\"static\",\"id\":80,\"antarget\":\"\",\"icon\":\"\",\"pslug\":\"faq\",\"pname\":\"FAQ\"},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{},{}]},{\"items_id\":\"2,3,4,5,6,19,20,21\",\"ptype\":\"App\\\\MenuBuilder\\\\MegaMenus\\\\DonationMegaMenu\",\"id\":129,\"antarget\":\"\",\"icon\":\"\"},{\"ptype\":\"static\",\"id\":130,\"antarget\":\"\",\"icon\":\"\",\"pslug\":\"events\",\"pname\":\"Events\"},{\"ptype\":\"static\",\"id\":131,\"antarget\":\"\",\"icon\":\"\",\"pslug\":\"blog\",\"pname\":\"Blog\"},{\"ptype\":\"static\",\"id\":132,\"antarget\":\"\",\"icon\":\"\",\"pslug\":\"contact\",\"pname\":\"Contact\"}]', 'default', '2020-05-28 05:53:38', '2021-09-20 22:55:39'),
(2, 'Menu with Icon', '[{\"ptype\":\"custom\",\"id\":2,\"antarget\":\"\",\"icon\":\"\",\"pname\":\"Home\",\"purl\":\"@url\"}]', '', '2020-06-01 02:54:39', '2021-06-17 13:20:18'),
(3, 'Useful Links', '[{\"icon\":\"fas fa-angle-right\",\"pname\":\"Home\",\"purl\":\"@url\",\"ptype\":\"custom\",\"id\":1},{\"icon\":\"fas fa-angle-right\",\"pslug\":\"about_page_slug\",\"pname\":\"about_page_en_name\",\"ptype\":\"static\",\"id\":2},{\"icon\":\"fas fa-angle-right\",\"pslug\":\"service_page_slug\",\"pname\":\"service_page_en_name\",\"ptype\":\"static\",\"id\":3},{\"icon\":\"fas fa-angle-right\",\"pslug\":\"work_page_slug\",\"pname\":\"work_page_en_name\",\"ptype\":\"static\",\"id\":4}]', NULL, '2020-06-18 01:33:46', '2020-06-18 01:38:45');

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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_11_06_180949_create_admins_table', 1),
(5, '2019_12_07_071950_create_contact_info_items_table', 1),
(6, '2019_12_07_082524_create_static_options_table', 1),
(7, '2019_12_09_063224_create_testimonials_table', 1),
(8, '2019_12_10_125607_create_social_icons_table', 1),
(9, '2019_12_10_210247_create_blog_categories_table', 1),
(10, '2019_12_11_074345_create_blogs_table', 1),
(11, '2019_12_13_221931_create_languages_table', 1),
(12, '2019_12_29_113138_create_team_members_table', 1),
(13, '2020_01_25_155448_create_pages_table', 1),
(14, '2020_01_28_054211_create_faqs_table', 1),
(15, '2020_02_04_010636_create_newsletters_table', 1),
(16, '2020_03_29_075123_create_admin_roles_table', 1),
(17, '2020_04_14_082508_create_media_uploads_table', 1),
(18, '2020_04_22_065550_create_jobs_table', 1),
(19, '2020_04_22_065603_create_jobs_categories_table', 1),
(20, '2020_04_23_140942_create_events_table', 1),
(21, '2020_04_23_141011_create_events_categories_table', 1),
(22, '2020_06_14_081955_create_widgets_table', 1),
(23, '2020_07_02_125439_create_job_applicants_table', 1),
(24, '2020_07_04_143731_create_event_attendances_table', 1),
(25, '2020_07_04_173333_create_event_payment_logs_table', 1),
(26, '2020_07_06_154309_create_causes_table', 1),
(27, '2020_07_17_162008_create_image_galleries_table', 2),
(28, '2020_12_04_062950_create_image_gallery_categories_table', 2),
(29, '2021_02_19_092255_create_cause_updates_table', 3),
(30, '2020_07_07_150250_create_cause_logs_table', 4),
(31, '2021_02_20_08115319_create_cause_categories_table', 5),
(32, '2021_03_24_140243_create_menus_table', 5),
(33, '2021_03_27_113444_create_counterups_table', 5),
(34, '2021_04_08_122116_create_topbar_infos_table', 5),
(35, '2021_04_18_132805_create_header_sliders_table', 5),
(36, '2021_06_24_065557_create_comments_table', 5),
(37, '2021_07_04_052916_create_donation_withdraws_table', 5),
(38, '2021_07_23_160619_add_column_to_user_table', 6),
(39, '2021_07_23_183955_add_new_column_to_newsletters_table', 7),
(40, '2021_07_23_192801_create_permission_tables', 8),
(41, '2021_09_13_105614_create_success_stories_table', 9),
(42, '2021_09_13_110246_create_success_story_categories_table', 9),
(43, '2021_09_14_100349_create_client_areas_table', 10),
(44, '2021_09_19_044631_create_flag_reports_table', 11),
(45, '2021_09_19_044701_create_medical_documents_table', 11),
(46, '2021_09_19_090907_add_new_column_to_causes_table', 12),
(47, '2021_09_20_122226_create_support_tickets_table', 13),
(48, '2021_09_20_122306_create_support_ticket_messages_table', 13),
(49, '2021_09_20_124001_create_support_ticket_departments_table', 13),
(50, '2021_09_21_112550_add_badge_to_causes_table', 14),
(51, '2021_09_21_120538_add_emmergency_to_causes_table', 15),
(52, '2021_09_21_120623_add_emmergency_title_to_causes_table', 15),
(53, '2022_02_10_064944_add_column_tax_to_users_table', 16),
(71, '2022_02_10_111412_create_tax_logs_table', 17),
(72, '2022_02_13_044802_create_follow_campaigns_table', 17),
(73, '2022_02_15_073958_create_rewards_table', 17),
(74, '2022_02_16_072213_add_column_reward_to_causes_table', 18),
(75, '2022_02_16_130235_add_column_attachment_to_cause_logs_table', 19),
(76, '2022_02_17_054958_add_column_point_to_cause_logs_table', 20),
(78, '2022_02_19_050244_create_reward_redeems_table', 21),
(79, '2022_02_27_074610_add_column_subcribe_status_to_newsletters_table', 22),
(80, '2022_02_27_092346_add_column_custom_tip_status_to_causes_table', 23),
(81, '2022_05_07_045526_add_column_campaign_permission_to_users_table', 24),
(83, '2022_05_19_120053_create_notifications_table', 25),
(84, '2022_06_29_092352_create_gifts_table', 26),
(85, '2022_06_29_094024_create_cause_gift_table', 26),
(86, '2022_06_29_100938_add_column_image_to_gifts_table', 27),
(87, '2022_06_29_121946_add_column_gift_status_to_causes_table', 28),
(88, '2022_07_02_111611_add_column_gift_to_cause_logs_table', 29),
(89, '2022_07_02_120158_add_column_address_to_cause_logs_table', 30),
(90, '2022_05_15_100026_create_recurings_table', 31),
(91, '2022_05_17_140010_add_column_token_to_cause_logs_table', 31),
(92, '2022_07_07_102552_add_column_expire_to_recurings_table', 32),
(93, '2019_12_14_000001_create_personal_access_tokens_table', 33),
(94, '2022_08_13_115334_create_countries_table', 34),
(95, '2022_08_13_132444_create_mobile_sliders_table', 35),
(97, '2022_08_14_061548_add_column_custom_fields_to_cause_logs_table', 36),
(98, '2022_08_16_073632_add_column_monthly_donation_status_to_causes_table', 37),
(99, '2022_08_24_115705_add_column_user_gifts_to_gifts_table', 38),
(100, '2022_02_10_064944_add_column_country_id_to_users_table', 39),
(101, '2022_09_08_074705_add_column_manual_payment_attachment_to_event_payment_logs_table', 40),
(102, '2022_09_13_055752_add_column_extra_to_mobile_sliders_table', 41),
(103, '2022_10_26_09344544_add_column_user_verify_to_users_table', 42);

-- --------------------------------------------------------

--
-- Table structure for table `mobile_sliders`
--

CREATE TABLE `mobile_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `donation_id` bigint(20) DEFAULT NULL,
  `subtitle` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `mobile_sliders`
--

INSERT INTO `mobile_sliders` (`id`, `title`, `image`, `created_at`, `updated_at`, `donation_id`, `subtitle`) VALUES
(1, 'Donate, Fundrise and Volunteer', '263', '2022-08-13 23:06:25', '2022-09-13 04:00:26', 19, 'Small effect can make big changes'),
(2, 'Help, Donate and Fundrise', '262', '2022-08-13 23:06:50', '2022-09-13 04:00:19', 24, 'Small effort make big changes');

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(3, 'App\\Admin', 1),
(2, 'App\\Admin', 3),
(3, 'App\\Admin', 4),
(2, 'App\\Admin', 5),
(3, 'App\\Admin', 6),
(3, 'App\\Admin', 7),
(3, 'App\\Admin', 8);

-- --------------------------------------------------------

--
-- Table structure for table `newsletters`
--

CREATE TABLE `newsletters` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verified` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subscribe_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cause_log_id` bigint(20) DEFAULT NULL,
  `user_campaign_id` bigint(20) DEFAULT NULL,
  `withdraw_id` bigint(20) DEFAULT NULL,
  `seen` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `type`, `title`, `cause_log_id`, `user_campaign_id`, `withdraw_id`, `seen`, `created_at`, `updated_at`) VALUES
(1, 'user_campaign', 'New user campaign created', NULL, 31, NULL, '1', '2022-08-25 00:38:49', '2022-09-21 10:25:22'),
(2, 'cause_log', 'New donation payment done', 480, NULL, NULL, '1', '2022-08-25 02:50:33', '2022-09-29 05:24:28'),
(3, 'cause_log', 'New donation payment done', 481, NULL, NULL, '1', '2022-09-05 01:33:26', '2022-10-01 04:14:22'),
(4, 'cause_log', 'New donation payment done', 482, NULL, NULL, '1', '2022-09-05 01:37:46', '2022-10-03 03:39:47'),
(5, 'cause_log', 'New donation payment done', 481, NULL, NULL, '0', '2022-09-05 02:12:34', '2022-09-05 02:12:34'),
(6, 'cause_log', 'New donation payment done', 481, NULL, NULL, '0', '2022-09-05 02:13:49', '2022-09-05 02:13:49'),
(7, 'cause_log', 'New donation payment done', 481, NULL, NULL, '0', '2022-09-05 02:14:33', '2022-09-05 02:14:33'),
(8, 'cause_log', 'New donation payment done', 481, NULL, NULL, '0', '2022-09-05 02:15:19', '2022-09-05 02:15:19'),
(9, 'cause_log', 'New donation payment done', 481, NULL, NULL, '0', '2022-09-05 02:17:40', '2022-09-05 02:17:40'),
(10, 'cause_log', 'New donation payment done', 481, NULL, NULL, '0', '2022-09-05 02:18:37', '2022-09-05 02:18:37'),
(11, 'cause_log', 'New donation payment done', 481, NULL, NULL, '0', '2022-09-05 02:19:11', '2022-09-05 02:19:11'),
(12, 'cause_log', 'New donation payment done', 481, NULL, NULL, '0', '2022-09-05 02:19:51', '2022-09-05 02:19:51'),
(13, 'cause_log', 'New donation payment done', 481, NULL, NULL, '0', '2022-09-05 02:20:07', '2022-09-05 02:20:07'),
(14, 'cause_log', 'New donation payment done', 481, NULL, NULL, '0', '2022-09-05 02:20:19', '2022-09-05 02:20:19'),
(15, 'cause_log', 'New donation payment done', 481, NULL, NULL, '0', '2022-09-05 02:22:07', '2022-09-05 02:22:07'),
(16, 'cause_log', 'New donation payment done', 483, NULL, NULL, '0', '2022-09-07 23:48:24', '2022-09-07 23:48:24'),
(17, 'cause_log', 'New donation payment done', 484, NULL, NULL, '0', '2022-09-07 23:51:19', '2022-09-07 23:51:19'),
(18, 'cause_log', 'New donation payment done', 485, NULL, NULL, '0', '2022-09-07 23:59:15', '2022-09-07 23:59:15'),
(19, 'cause_log', 'New donation payment done', 486, NULL, NULL, '0', '2022-09-08 00:46:52', '2022-09-08 00:46:52'),
(20, 'cause_log', 'New donation payment done', 487, NULL, NULL, '0', '2022-09-08 00:49:18', '2022-09-08 00:49:18'),
(21, 'cause_log', 'New donation payment done', 488, NULL, NULL, '0', '2022-09-13 04:22:12', '2022-09-13 04:22:12'),
(22, 'cause_log', 'New donation payment done', 489, NULL, NULL, '0', '2022-09-13 05:29:13', '2022-09-13 05:29:13'),
(23, 'cause_log', 'New donation payment done', 490, NULL, NULL, '0', '2022-09-13 05:37:45', '2022-09-13 05:37:45'),
(24, 'cause_log', 'New donation payment done', 491, NULL, NULL, '0', '2022-09-13 06:00:05', '2022-09-13 06:00:05'),
(25, 'cause_log', 'New donation payment done', 492, NULL, NULL, '0', '2022-09-13 06:00:57', '2022-09-13 06:00:57'),
(26, 'cause_log', 'New donation payment done', 493, NULL, NULL, '0', '2022-09-13 06:06:22', '2022-09-13 06:06:22'),
(27, 'cause_log', 'New donation payment done', 494, NULL, NULL, '0', '2022-09-13 06:07:12', '2022-09-13 06:07:12'),
(28, 'cause_log', 'New donation payment done', 495, NULL, NULL, '0', '2022-09-13 06:30:01', '2022-09-13 06:30:01'),
(29, 'cause_log', 'New donation payment done', 496, NULL, NULL, '0', '2022-09-13 07:37:32', '2022-09-13 07:37:32'),
(30, 'cause_log', 'New donation payment done', 497, NULL, NULL, '0', '2022-09-13 19:04:48', '2022-09-13 19:04:48'),
(31, 'cause_log', 'New donation payment done', 498, NULL, NULL, '0', '2022-09-13 21:48:42', '2022-09-13 21:48:42'),
(32, 'cause_log', 'New donation payment done', 499, NULL, NULL, '0', '2022-09-13 22:17:58', '2022-09-13 22:17:58'),
(33, 'cause_log', 'New donation payment done', 500, NULL, NULL, '0', '2022-09-13 22:49:07', '2022-09-13 22:49:07'),
(34, 'cause_log', 'New donation payment done', 501, NULL, NULL, '0', '2022-09-13 22:51:08', '2022-09-13 22:51:08'),
(35, 'cause_log', 'New donation payment done', 502, NULL, NULL, '0', '2022-09-14 00:20:31', '2022-09-14 00:20:31'),
(36, 'cause_log', 'New donation payment done', 503, NULL, NULL, '0', '2022-09-14 01:30:07', '2022-09-14 01:30:07'),
(37, 'cause_log', 'New donation payment done', 504, NULL, NULL, '0', '2022-09-14 05:14:55', '2022-09-14 05:14:55'),
(38, 'cause_log', 'New donation payment done', 505, NULL, NULL, '0', '2022-09-14 05:15:17', '2022-09-14 05:15:17'),
(39, 'cause_log', 'New donation payment done', 506, NULL, NULL, '0', '2022-09-14 05:16:09', '2022-09-14 05:16:09'),
(40, 'cause_log', 'New donation payment done', 507, NULL, NULL, '0', '2022-09-14 05:47:14', '2022-09-14 05:47:14'),
(41, 'cause_log', 'New donation payment done', 508, NULL, NULL, '0', '2022-09-14 06:00:41', '2022-09-14 06:00:41'),
(42, 'cause_log', 'New donation payment done', 509, NULL, NULL, '0', '2022-09-14 07:56:18', '2022-09-14 07:56:18'),
(43, 'cause_log', 'New donation payment done', 510, NULL, NULL, '0', '2022-09-14 09:16:21', '2022-09-14 09:16:21'),
(44, 'cause_log', 'New donation payment done', 511, NULL, NULL, '0', '2022-09-14 09:16:33', '2022-09-14 09:16:33'),
(45, 'cause_log', 'New donation payment done', 512, NULL, NULL, '0', '2022-09-14 09:17:03', '2022-09-14 09:17:03'),
(46, 'cause_log', 'New donation payment done', 513, NULL, NULL, '0', '2022-09-14 20:26:58', '2022-09-14 20:26:58'),
(47, 'cause_log', 'New donation payment done', 514, NULL, NULL, '0', '2022-09-14 23:08:09', '2022-09-14 23:08:09'),
(48, 'cause_log', 'New donation payment done', 515, NULL, NULL, '0', '2022-09-14 23:44:48', '2022-09-14 23:44:48'),
(49, 'cause_log', 'New donation payment done', 516, NULL, NULL, '0', '2022-09-15 00:24:56', '2022-09-15 00:24:56'),
(50, 'cause_log', 'New donation payment done', 517, NULL, NULL, '0', '2022-09-15 00:26:36', '2022-09-15 00:26:36'),
(51, 'cause_log', 'New donation payment done', 518, NULL, NULL, '0', '2022-09-15 00:45:26', '2022-09-15 00:45:26'),
(52, 'cause_log', 'New donation payment done', 519, NULL, NULL, '0', '2022-09-15 00:46:00', '2022-09-15 00:46:00'),
(53, 'cause_log', 'New donation payment done', 520, NULL, NULL, '0', '2022-09-15 00:49:20', '2022-09-15 00:49:20'),
(54, 'cause_log', 'New donation payment done', 521, NULL, NULL, '0', '2022-09-15 02:09:28', '2022-09-15 02:09:28'),
(55, 'cause_log', 'New donation payment done', 522, NULL, NULL, '0', '2022-09-15 02:18:15', '2022-09-15 02:18:15'),
(56, 'cause_log', 'New donation payment done', 523, NULL, NULL, '0', '2022-09-15 02:25:37', '2022-09-15 02:25:37'),
(57, 'cause_log', 'New donation payment done', 524, NULL, NULL, '0', '2022-09-15 02:26:49', '2022-09-15 02:26:49'),
(58, 'cause_log', 'New donation payment done', 525, NULL, NULL, '0', '2022-09-15 03:33:19', '2022-09-15 03:33:19'),
(59, 'cause_log', 'New donation payment done', 526, NULL, NULL, '0', '2022-09-15 03:46:52', '2022-09-15 03:46:52'),
(60, 'cause_log', 'New donation payment done', 527, NULL, NULL, '0', '2022-09-15 04:14:44', '2022-09-15 04:14:44'),
(61, 'cause_log', 'New donation payment done', 528, NULL, NULL, '0', '2022-09-15 04:39:00', '2022-09-15 04:39:00'),
(62, 'cause_log', 'New donation payment done', 529, NULL, NULL, '0', '2022-09-15 04:39:29', '2022-09-15 04:39:29'),
(63, 'cause_log', 'New donation payment done', 530, NULL, NULL, '0', '2022-09-15 04:40:17', '2022-09-15 04:40:17'),
(64, 'cause_log', 'New donation payment done', 531, NULL, NULL, '0', '2022-09-15 04:41:45', '2022-09-15 04:41:45'),
(65, 'cause_log', 'New donation payment done', 532, NULL, NULL, '0', '2022-09-15 04:42:07', '2022-09-15 04:42:07'),
(66, 'cause_log', 'New donation payment done', 533, NULL, NULL, '0', '2022-09-15 04:44:02', '2022-09-15 04:44:02'),
(67, 'cause_log', 'New donation payment done', 534, NULL, NULL, '0', '2022-09-15 05:08:54', '2022-09-15 05:08:54'),
(68, 'cause_log', 'New donation payment done', 535, NULL, NULL, '0', '2022-09-15 05:09:42', '2022-09-15 05:09:42'),
(69, 'cause_log', 'New donation payment done', 536, NULL, NULL, '0', '2022-09-15 05:11:26', '2022-09-15 05:11:26'),
(70, 'cause_log', 'New donation payment done', 537, NULL, NULL, '0', '2022-09-15 05:14:34', '2022-09-15 05:14:34'),
(71, 'cause_log', 'New donation payment done', 538, NULL, NULL, '0', '2022-09-15 05:16:13', '2022-09-15 05:16:13'),
(72, 'cause_log', 'New donation payment done', 539, NULL, NULL, '0', '2022-09-15 06:36:53', '2022-09-15 06:36:53'),
(73, 'cause_log', 'New donation payment done', 540, NULL, NULL, '0', '2022-09-15 06:37:02', '2022-09-15 06:37:02'),
(74, 'cause_log', 'New donation payment done', 541, NULL, NULL, '0', '2022-09-15 06:37:48', '2022-09-15 06:37:48'),
(75, 'cause_log', 'New donation payment done', 542, NULL, NULL, '0', '2022-09-15 06:40:36', '2022-09-15 06:40:36'),
(76, 'cause_log', 'New donation payment done', 543, NULL, NULL, '0', '2022-09-15 08:14:22', '2022-09-15 08:14:22'),
(77, 'cause_log', 'New donation payment done', 544, NULL, NULL, '0', '2022-09-15 09:11:48', '2022-09-15 09:11:48'),
(78, 'cause_log', 'New donation payment done', 545, NULL, NULL, '0', '2022-09-15 11:19:20', '2022-09-15 11:19:20'),
(79, 'cause_log', 'New donation payment done', 546, NULL, NULL, '0', '2022-09-15 14:04:26', '2022-09-15 14:04:26'),
(80, 'cause_log', 'New donation payment done', 547, NULL, NULL, '0', '2022-09-15 14:57:57', '2022-09-15 14:57:57'),
(81, 'cause_log', 'New donation payment done', 548, NULL, NULL, '0', '2022-09-15 14:58:07', '2022-09-15 14:58:07'),
(82, 'cause_log', 'New donation payment done', 549, NULL, NULL, '0', '2022-09-15 14:58:23', '2022-09-15 14:58:23'),
(83, 'cause_log', 'New donation payment done', 550, NULL, NULL, '0', '2022-09-15 16:39:20', '2022-09-15 16:39:20'),
(84, 'cause_log', 'New donation payment done', 551, NULL, NULL, '0', '2022-09-15 16:39:26', '2022-09-15 16:39:26'),
(85, 'cause_log', 'New donation payment done', 552, NULL, NULL, '0', '2022-09-15 16:39:35', '2022-09-15 16:39:35'),
(86, 'cause_log', 'New donation payment done', 553, NULL, NULL, '0', '2022-09-15 16:39:35', '2022-09-15 16:39:35'),
(87, 'cause_log', 'New donation payment done', 554, NULL, NULL, '0', '2022-09-15 16:39:59', '2022-09-15 16:39:59'),
(88, 'cause_log', 'New donation payment done', 555, NULL, NULL, '0', '2022-09-15 16:40:26', '2022-09-15 16:40:26'),
(89, 'cause_log', 'New donation payment done', 556, NULL, NULL, '0', '2022-09-15 16:40:39', '2022-09-15 16:40:39'),
(90, 'cause_log', 'New donation payment done', 557, NULL, NULL, '0', '2022-09-15 16:41:10', '2022-09-15 16:41:10'),
(91, 'cause_log', 'New donation payment done', 558, NULL, NULL, '0', '2022-09-15 16:41:48', '2022-09-15 16:41:48'),
(92, 'cause_log', 'New donation payment done', 559, NULL, NULL, '0', '2022-09-15 16:42:59', '2022-09-15 16:42:59'),
(93, 'cause_log', 'New donation payment done', 560, NULL, NULL, '0', '2022-09-15 16:43:29', '2022-09-15 16:43:29'),
(94, 'cause_log', 'New donation payment done', 561, NULL, NULL, '0', '2022-09-15 23:14:16', '2022-09-15 23:14:16'),
(95, 'cause_log', 'New donation payment done', 562, NULL, NULL, '0', '2022-09-15 23:22:35', '2022-09-15 23:22:35'),
(96, 'cause_log', 'New donation payment done', 563, NULL, NULL, '0', '2022-09-16 04:13:03', '2022-09-16 04:13:03'),
(97, 'cause_log', 'New donation payment done', 564, NULL, NULL, '0', '2022-09-16 04:55:49', '2022-09-16 04:55:49'),
(98, 'cause_log', 'New donation payment done', 565, NULL, NULL, '0', '2022-09-16 06:00:26', '2022-09-16 06:00:26'),
(99, 'cause_log', 'New donation payment done', 566, NULL, NULL, '0', '2022-09-16 06:00:36', '2022-09-16 06:00:36'),
(100, 'cause_log', 'New donation payment done', 567, NULL, NULL, '0', '2022-09-16 10:06:00', '2022-09-16 10:06:00'),
(101, 'cause_log', 'New donation payment done', 568, NULL, NULL, '0', '2022-09-16 11:32:05', '2022-09-16 11:32:05'),
(102, 'cause_log', 'New donation payment done', 569, NULL, NULL, '0', '2022-09-16 11:32:20', '2022-09-16 11:32:20'),
(103, 'cause_log', 'New donation payment done', 570, NULL, NULL, '0', '2022-09-16 11:33:14', '2022-09-16 11:33:14'),
(104, 'cause_log', 'New donation payment done', 571, NULL, NULL, '0', '2022-09-16 11:33:30', '2022-09-16 11:33:30'),
(105, 'cause_log', 'New donation payment done', 572, NULL, NULL, '0', '2022-09-16 13:13:31', '2022-09-16 13:13:31'),
(106, 'cause_log', 'New donation payment done', 573, NULL, NULL, '0', '2022-09-17 16:10:38', '2022-09-17 16:10:38'),
(107, 'cause_log', 'New donation payment done', 574, NULL, NULL, '0', '2022-09-18 05:38:39', '2022-09-18 05:38:39'),
(108, 'cause_log', 'New donation payment done', 575, NULL, NULL, '0', '2022-09-18 08:46:58', '2022-09-18 08:46:58'),
(109, 'cause_log', 'New donation payment done', 576, NULL, NULL, '0', '2022-09-18 09:16:07', '2022-09-18 09:16:07'),
(110, 'cause_log', 'New donation payment done', 577, NULL, NULL, '1', '2022-09-19 02:32:41', '2022-09-19 08:18:21'),
(111, 'cause_log', 'New donation payment done', 578, NULL, NULL, '0', '2022-09-19 09:36:34', '2022-09-19 09:36:34'),
(112, 'cause_log', 'New donation payment done', 579, NULL, NULL, '0', '2022-09-19 14:16:37', '2022-09-19 14:16:37'),
(113, 'cause_log', 'New donation payment done', 580, NULL, NULL, '0', '2022-09-19 14:17:48', '2022-09-19 14:17:48'),
(114, 'cause_log', 'New donation payment done', 581, NULL, NULL, '0', '2022-09-19 14:17:50', '2022-09-19 14:17:50'),
(115, 'cause_log', 'New donation payment done', 582, NULL, NULL, '0', '2022-09-19 14:18:14', '2022-09-19 14:18:14'),
(116, 'cause_log', 'New donation payment done', 583, NULL, NULL, '0', '2022-09-19 14:57:05', '2022-09-19 14:57:05'),
(117, 'cause_log', 'New donation payment done', 584, NULL, NULL, '0', '2022-09-19 14:58:09', '2022-09-19 14:58:09'),
(118, 'cause_log', 'New donation payment done', 585, NULL, NULL, '0', '2022-09-19 15:07:21', '2022-09-19 15:07:21'),
(119, 'cause_log', 'New donation payment done', 586, NULL, NULL, '0', '2022-09-19 16:30:46', '2022-09-19 16:30:46'),
(120, 'cause_log', 'New donation payment done', 587, NULL, NULL, '0', '2022-09-19 16:32:21', '2022-09-19 16:32:21'),
(121, 'cause_log', 'New donation payment done', 588, NULL, NULL, '0', '2022-09-19 22:10:58', '2022-09-19 22:10:58'),
(122, 'cause_log', 'New donation payment done', 589, NULL, NULL, '0', '2022-09-20 03:51:35', '2022-09-20 03:51:35'),
(123, 'cause_log', 'New donation payment done', 590, NULL, NULL, '0', '2022-09-20 06:39:52', '2022-09-20 06:39:52'),
(124, 'cause_log', 'New donation payment done', 591, NULL, NULL, '0', '2022-09-20 19:16:56', '2022-09-20 19:16:56'),
(125, 'cause_log', 'New donation payment done', 592, NULL, NULL, '0', '2022-09-21 08:51:47', '2022-09-21 08:51:47'),
(126, 'cause_log', 'New donation payment done', 593, NULL, NULL, '0', '2022-09-21 09:03:44', '2022-09-21 09:03:44'),
(127, 'cause_log', 'New donation payment done', 594, NULL, NULL, '1', '2022-09-21 10:23:03', '2022-09-21 15:41:08'),
(128, 'cause_log', 'New donation payment done', 595, NULL, NULL, '0', '2022-09-21 19:32:05', '2022-09-21 19:32:05'),
(129, 'cause_log', 'New donation payment done', 596, NULL, NULL, '0', '2022-09-21 19:32:23', '2022-09-21 19:32:23'),
(130, 'cause_log', 'New donation payment done', 597, NULL, NULL, '0', '2022-09-21 23:03:05', '2022-09-21 23:03:05'),
(131, 'cause_log', 'New donation payment done', 598, NULL, NULL, '1', '2022-09-22 07:40:05', '2022-09-22 11:04:04'),
(132, 'cause_log', 'New donation payment done', 599, NULL, NULL, '0', '2022-09-22 20:23:46', '2022-09-22 20:23:46'),
(133, 'cause_log', 'New donation payment done', 600, NULL, NULL, '0', '2022-09-22 22:29:56', '2022-09-22 22:29:56'),
(134, 'cause_log', 'New donation payment done', 601, NULL, NULL, '0', '2022-09-23 00:31:19', '2022-09-23 00:31:19'),
(135, 'cause_log', 'New donation payment done', 602, NULL, NULL, '0', '2022-09-23 05:42:39', '2022-09-23 05:42:39'),
(136, 'cause_log', 'New donation payment done', 603, NULL, NULL, '0', '2022-09-24 04:35:58', '2022-09-24 04:35:58'),
(137, 'cause_log', 'New donation payment done', 604, NULL, NULL, '0', '2022-09-24 16:01:36', '2022-09-24 16:01:36'),
(138, 'cause_log', 'New donation payment done', 605, NULL, NULL, '0', '2022-09-24 18:22:08', '2022-09-24 18:22:08'),
(139, 'cause_log', 'New donation payment done', 606, NULL, NULL, '0', '2022-09-25 00:54:38', '2022-09-25 00:54:38'),
(140, 'cause_log', 'New donation payment done', 607, NULL, NULL, '0', '2022-09-25 02:08:30', '2022-09-25 02:08:30'),
(141, 'cause_log', 'New donation payment done', 608, NULL, NULL, '0', '2022-09-25 04:02:09', '2022-09-25 04:02:09'),
(142, 'cause_log', 'New donation payment done', 609, NULL, NULL, '0', '2022-09-25 05:18:45', '2022-09-25 05:18:45'),
(143, 'cause_log', 'New donation payment done', 610, NULL, NULL, '0', '2022-09-25 05:18:56', '2022-09-25 05:18:56'),
(144, 'cause_log', 'New donation payment done', 611, NULL, NULL, '0', '2022-09-25 05:20:06', '2022-09-25 05:20:06'),
(145, 'cause_log', 'New donation payment done', 612, NULL, NULL, '0', '2022-09-25 05:20:37', '2022-09-25 05:20:37'),
(146, 'cause_log', 'New donation payment done', 613, NULL, NULL, '0', '2022-09-25 05:21:11', '2022-09-25 05:21:11'),
(147, 'cause_log', 'New donation payment done', 614, NULL, NULL, '0', '2022-09-25 06:23:53', '2022-09-25 06:23:53'),
(148, 'cause_log', 'New donation payment done', 615, NULL, NULL, '0', '2022-09-25 06:24:04', '2022-09-25 06:24:04'),
(149, 'cause_log', 'New donation payment done', 616, NULL, NULL, '0', '2022-09-25 06:24:15', '2022-09-25 06:24:15'),
(150, 'cause_log', 'New donation payment done', 617, NULL, NULL, '0', '2022-09-25 06:28:52', '2022-09-25 06:28:52'),
(151, 'cause_log', 'New donation payment done', 618, NULL, NULL, '0', '2022-09-25 06:28:59', '2022-09-25 06:28:59'),
(152, 'cause_log', 'New donation payment done', 619, NULL, NULL, '0', '2022-09-25 07:12:21', '2022-09-25 07:12:21'),
(153, 'cause_log', 'New donation payment done', 620, NULL, NULL, '0', '2022-09-25 12:05:55', '2022-09-25 12:05:55'),
(154, 'cause_log', 'New donation payment done', 621, NULL, NULL, '0', '2022-09-25 12:55:19', '2022-09-25 12:55:19'),
(155, 'cause_log', 'New donation payment done', 622, NULL, NULL, '0', '2022-09-25 12:56:05', '2022-09-25 12:56:05'),
(156, 'cause_log', 'New donation payment done', 623, NULL, NULL, '0', '2022-09-25 12:58:00', '2022-09-25 12:58:00'),
(157, 'cause_log', 'New donation payment done', 624, NULL, NULL, '0', '2022-09-25 12:58:20', '2022-09-25 12:58:20'),
(158, 'cause_log', 'New donation payment done', 625, NULL, NULL, '0', '2022-09-25 21:46:11', '2022-09-25 21:46:11'),
(159, 'cause_log', 'New donation payment done', 626, NULL, NULL, '0', '2022-09-25 23:58:54', '2022-09-25 23:58:54'),
(160, 'cause_log', 'New donation payment done', 627, NULL, NULL, '0', '2022-09-25 23:59:22', '2022-09-25 23:59:22'),
(161, 'cause_log', 'New donation payment done', 628, NULL, NULL, '0', '2022-09-25 23:59:22', '2022-09-25 23:59:22'),
(162, 'cause_log', 'New donation payment done', 629, NULL, NULL, '0', '2022-09-26 00:02:42', '2022-09-26 00:02:42'),
(163, 'cause_log', 'New donation payment done', 630, NULL, NULL, '0', '2022-09-26 00:47:18', '2022-09-26 00:47:18'),
(164, 'cause_log', 'New donation payment done', 631, NULL, NULL, '0', '2022-09-26 00:48:03', '2022-09-26 00:48:03'),
(165, 'cause_log', 'New donation payment done', 632, NULL, NULL, '0', '2022-09-26 00:49:46', '2022-09-26 00:49:46'),
(166, 'cause_log', 'New donation payment done', 633, NULL, NULL, '0', '2022-09-26 00:50:10', '2022-09-26 00:50:10'),
(167, 'cause_log', 'New donation payment done', 634, NULL, NULL, '0', '2022-09-26 00:54:53', '2022-09-26 00:54:53'),
(168, 'cause_log', 'New donation payment done', 635, NULL, NULL, '0', '2022-09-26 00:55:53', '2022-09-26 00:55:53'),
(169, 'cause_log', 'New donation payment done', 636, NULL, NULL, '0', '2022-09-26 00:58:52', '2022-09-26 00:58:52'),
(170, 'cause_log', 'New donation payment done', 637, NULL, NULL, '0', '2022-09-26 01:09:37', '2022-09-26 01:09:37'),
(171, 'cause_log', 'New donation payment done', 638, NULL, NULL, '0', '2022-09-26 01:10:25', '2022-09-26 01:10:25'),
(172, 'cause_log', 'New donation payment done', 639, NULL, NULL, '0', '2022-09-26 01:11:14', '2022-09-26 01:11:14'),
(173, 'cause_log', 'New donation payment done', 640, NULL, NULL, '0', '2022-09-26 01:11:54', '2022-09-26 01:11:54'),
(174, 'cause_log', 'New donation payment done', 641, NULL, NULL, '0', '2022-09-26 01:12:16', '2022-09-26 01:12:16'),
(175, 'cause_log', 'New donation payment done', 642, NULL, NULL, '0', '2022-09-26 01:13:08', '2022-09-26 01:13:08'),
(176, 'cause_log', 'New donation payment done', 643, NULL, NULL, '0', '2022-09-26 01:15:58', '2022-09-26 01:15:58'),
(177, 'cause_log', 'New donation payment done', 644, NULL, NULL, '0', '2022-09-26 01:16:35', '2022-09-26 01:16:35'),
(178, 'cause_log', 'New donation payment done', 645, NULL, NULL, '0', '2022-09-26 01:29:25', '2022-09-26 01:29:25'),
(179, 'cause_log', 'New donation payment done', 646, NULL, NULL, '0', '2022-09-26 01:30:36', '2022-09-26 01:30:36'),
(180, 'cause_log', 'New donation payment done', 647, NULL, NULL, '0', '2022-09-26 01:30:49', '2022-09-26 01:30:49'),
(181, 'cause_log', 'New donation payment done', 648, NULL, NULL, '0', '2022-09-26 01:31:02', '2022-09-26 01:31:02'),
(182, 'cause_log', 'New donation payment done', 649, NULL, NULL, '0', '2022-09-26 04:12:48', '2022-09-26 04:12:48'),
(183, 'cause_log', 'New donation payment done', 650, NULL, NULL, '0', '2022-09-26 04:34:05', '2022-09-26 04:34:05'),
(184, 'cause_log', 'New donation payment done', 651, NULL, NULL, '0', '2022-09-26 04:49:09', '2022-09-26 04:49:09'),
(185, 'cause_log', 'New donation payment done', 652, NULL, NULL, '0', '2022-09-26 05:39:29', '2022-09-26 05:39:29'),
(186, 'cause_log', 'New donation payment done', 653, NULL, NULL, '0', '2022-09-26 05:39:42', '2022-09-26 05:39:42'),
(187, 'cause_log', 'New donation payment done', 654, NULL, NULL, '0', '2022-09-26 05:39:52', '2022-09-26 05:39:52'),
(188, 'cause_log', 'New donation payment done', 655, NULL, NULL, '0', '2022-09-26 05:40:10', '2022-09-26 05:40:10'),
(189, 'cause_log', 'New donation payment done', 656, NULL, NULL, '0', '2022-09-26 05:40:22', '2022-09-26 05:40:22'),
(190, 'cause_log', 'New donation payment done', 657, NULL, NULL, '0', '2022-09-26 05:40:46', '2022-09-26 05:40:46'),
(191, 'cause_log', 'New donation payment done', 658, NULL, NULL, '0', '2022-09-26 05:40:59', '2022-09-26 05:40:59'),
(192, 'cause_log', 'New donation payment done', 659, NULL, NULL, '0', '2022-09-26 05:41:11', '2022-09-26 05:41:11'),
(193, 'cause_log', 'New donation payment done', 660, NULL, NULL, '0', '2022-09-26 05:41:18', '2022-09-26 05:41:18'),
(194, 'cause_log', 'New donation payment done', 661, NULL, NULL, '0', '2022-09-26 05:41:33', '2022-09-26 05:41:33'),
(195, 'cause_log', 'New donation payment done', 662, NULL, NULL, '0', '2022-09-26 05:41:39', '2022-09-26 05:41:39'),
(196, 'cause_log', 'New donation payment done', 663, NULL, NULL, '0', '2022-09-26 05:41:54', '2022-09-26 05:41:54'),
(197, 'cause_log', 'New donation payment done', 664, NULL, NULL, '0', '2022-09-26 05:42:05', '2022-09-26 05:42:05'),
(198, 'cause_log', 'New donation payment done', 665, NULL, NULL, '0', '2022-09-26 05:42:15', '2022-09-26 05:42:15'),
(199, 'cause_log', 'New donation payment done', 666, NULL, NULL, '0', '2022-09-26 05:42:23', '2022-09-26 05:42:23'),
(200, 'cause_log', 'New donation payment done', 667, NULL, NULL, '0', '2022-09-26 05:42:32', '2022-09-26 05:42:32'),
(201, 'cause_log', 'New donation payment done', 668, NULL, NULL, '0', '2022-09-26 07:12:06', '2022-09-26 07:12:06'),
(202, 'cause_log', 'New donation payment done', 669, NULL, NULL, '0', '2022-09-26 08:32:34', '2022-09-26 08:32:34'),
(203, 'cause_log', 'New donation payment done', 670, NULL, NULL, '0', '2022-09-26 08:33:04', '2022-09-26 08:33:04'),
(204, 'cause_log', 'New donation payment done', 671, NULL, NULL, '0', '2022-09-26 08:33:47', '2022-09-26 08:33:47'),
(205, 'cause_log', 'New donation payment done', 672, NULL, NULL, '0', '2022-09-26 08:34:05', '2022-09-26 08:34:05'),
(206, 'cause_log', 'New donation payment done', 673, NULL, NULL, '0', '2022-09-26 08:34:18', '2022-09-26 08:34:18'),
(207, 'cause_log', 'New donation payment done', 674, NULL, NULL, '0', '2022-09-26 08:35:06', '2022-09-26 08:35:06'),
(208, 'cause_log', 'New donation payment done', 675, NULL, NULL, '0', '2022-09-26 09:09:02', '2022-09-26 09:09:02'),
(209, 'cause_log', 'New donation payment done', 676, NULL, NULL, '0', '2022-09-26 09:09:34', '2022-09-26 09:09:34'),
(210, 'cause_log', 'New donation payment done', 677, NULL, NULL, '0', '2022-09-26 11:39:24', '2022-09-26 11:39:24'),
(211, 'cause_log', 'New donation payment done', 678, NULL, NULL, '0', '2022-09-26 11:46:08', '2022-09-26 11:46:08'),
(212, 'cause_log', 'New donation payment done', 679, NULL, NULL, '0', '2022-09-26 11:47:38', '2022-09-26 11:47:38'),
(213, 'cause_log', 'New donation payment done', 680, NULL, NULL, '0', '2022-09-26 11:48:21', '2022-09-26 11:48:21'),
(214, 'cause_log', 'New donation payment done', 681, NULL, NULL, '0', '2022-09-26 11:53:41', '2022-09-26 11:53:41'),
(215, 'cause_log', 'New donation payment done', 682, NULL, NULL, '0', '2022-09-26 11:56:47', '2022-09-26 11:56:47'),
(216, 'cause_log', 'New donation payment done', 683, NULL, NULL, '0', '2022-09-26 12:36:38', '2022-09-26 12:36:38'),
(217, 'cause_log', 'New donation payment done', 684, NULL, NULL, '0', '2022-09-26 14:36:19', '2022-09-26 14:36:19'),
(218, 'cause_log', 'New donation payment done', 685, NULL, NULL, '0', '2022-09-26 17:03:46', '2022-09-26 17:03:46'),
(219, 'cause_log', 'New donation payment done', 686, NULL, NULL, '0', '2022-09-27 02:00:33', '2022-09-27 02:00:33'),
(220, 'cause_log', 'New donation payment done', 687, NULL, NULL, '0', '2022-09-27 06:32:06', '2022-09-27 06:32:06'),
(221, 'cause_log', 'New donation payment done', 688, NULL, NULL, '0', '2022-09-27 06:35:01', '2022-09-27 06:35:01'),
(222, 'cause_log', 'New donation payment done', 689, NULL, NULL, '0', '2022-09-27 10:09:43', '2022-09-27 10:09:43'),
(223, 'cause_log', 'New donation payment done', 690, NULL, NULL, '0', '2022-09-27 13:27:36', '2022-09-27 13:27:36'),
(224, 'cause_log', 'New donation payment done', 691, NULL, NULL, '1', '2022-09-27 19:20:24', '2022-09-28 06:05:50'),
(225, 'cause_log', 'New donation payment done', 692, NULL, NULL, '0', '2022-09-28 06:15:09', '2022-09-28 06:15:09'),
(226, 'cause_log', 'New donation payment done', 693, NULL, NULL, '0', '2022-09-28 06:37:25', '2022-09-28 06:37:25'),
(227, 'cause_log', 'New donation payment done', 694, NULL, NULL, '0', '2022-09-28 09:11:13', '2022-09-28 09:11:13'),
(228, 'cause_log', 'New donation payment done', 695, NULL, NULL, '0', '2022-09-28 12:08:21', '2022-09-28 12:08:21'),
(229, 'cause_log', 'New donation payment done', 696, NULL, NULL, '0', '2022-09-28 17:40:43', '2022-09-28 17:40:43'),
(230, 'cause_log', 'New donation payment done', 697, NULL, NULL, '0', '2022-09-29 00:24:54', '2022-09-29 00:24:54'),
(231, 'cause_log', 'New donation payment done', 698, NULL, NULL, '0', '2022-09-29 01:54:55', '2022-09-29 01:54:55'),
(232, 'cause_log', 'New donation payment done', 699, NULL, NULL, '0', '2022-09-29 01:56:51', '2022-09-29 01:56:51'),
(233, 'cause_log', 'New donation payment done', 700, NULL, NULL, '0', '2022-09-29 01:58:50', '2022-09-29 01:58:50'),
(234, 'cause_log', 'New donation payment done', 701, NULL, NULL, '0', '2022-09-29 02:58:59', '2022-09-29 02:58:59'),
(235, 'cause_log', 'New donation payment done', 702, NULL, NULL, '0', '2022-09-29 04:25:37', '2022-09-29 04:25:37'),
(236, 'cause_log', 'New donation payment done', 703, NULL, NULL, '0', '2022-09-29 10:06:22', '2022-09-29 10:06:22'),
(237, 'cause_log', 'New donation payment done', 704, NULL, NULL, '0', '2022-09-29 10:07:34', '2022-09-29 10:07:34'),
(238, 'cause_log', 'New donation payment done', 705, NULL, NULL, '0', '2022-09-30 11:49:40', '2022-09-30 11:49:40'),
(239, 'cause_log', 'New donation payment done', 706, NULL, NULL, '0', '2022-09-30 21:32:08', '2022-09-30 21:32:08'),
(240, 'cause_log', 'New donation payment done', 707, NULL, NULL, '0', '2022-09-30 21:32:10', '2022-09-30 21:32:10'),
(241, 'cause_log', 'New donation payment done', 708, NULL, NULL, '0', '2022-09-30 21:32:53', '2022-09-30 21:32:53'),
(242, 'cause_log', 'New donation payment done', 709, NULL, NULL, '0', '2022-09-30 21:33:17', '2022-09-30 21:33:17'),
(243, 'cause_log', 'New donation payment done', 710, NULL, NULL, '0', '2022-09-30 22:46:10', '2022-09-30 22:46:10'),
(244, 'cause_log', 'New donation payment done', 711, NULL, NULL, '0', '2022-09-30 22:47:55', '2022-09-30 22:47:55'),
(245, 'cause_log', 'New donation payment done', 712, NULL, NULL, '0', '2022-10-01 01:59:21', '2022-10-01 01:59:21'),
(246, 'cause_log', 'New donation payment done', 713, NULL, NULL, '0', '2022-10-01 10:10:20', '2022-10-01 10:10:20'),
(247, 'cause_log', 'New donation payment done', 714, NULL, NULL, '0', '2022-10-01 10:13:52', '2022-10-01 10:13:52'),
(248, 'cause_log', 'New donation payment done', 715, NULL, NULL, '0', '2022-10-01 10:15:41', '2022-10-01 10:15:41'),
(249, 'cause_log', 'New donation payment done', 716, NULL, NULL, '0', '2022-10-01 11:00:12', '2022-10-01 11:00:12'),
(250, 'cause_log', 'New donation payment done', 717, NULL, NULL, '0', '2022-10-01 11:00:38', '2022-10-01 11:00:38'),
(251, 'cause_log', 'New donation payment done', 718, NULL, NULL, '0', '2022-10-01 11:01:07', '2022-10-01 11:01:07'),
(252, 'cause_log', 'New donation payment done', 719, NULL, NULL, '0', '2022-10-02 10:28:47', '2022-10-02 10:28:47'),
(253, 'cause_log', 'New donation payment done', 720, NULL, NULL, '0', '2022-10-02 10:31:15', '2022-10-02 10:31:15'),
(254, 'cause_log', 'New donation payment done', 721, NULL, NULL, '0', '2022-10-02 14:28:31', '2022-10-02 14:28:31'),
(255, 'cause_log', 'New donation payment done', 722, NULL, NULL, '0', '2022-10-02 21:11:14', '2022-10-02 21:11:14'),
(256, 'cause_log', 'New donation payment done', 723, NULL, NULL, '0', '2022-10-03 09:53:57', '2022-10-03 09:53:57'),
(257, 'cause_log', 'New donation payment done', 724, NULL, NULL, '0', '2022-10-03 10:08:36', '2022-10-03 10:08:36'),
(258, 'cause_log', 'New donation payment done', 725, NULL, NULL, '0', '2022-10-03 12:38:29', '2022-10-03 12:38:29'),
(259, 'cause_log', 'New donation payment done', 726, NULL, NULL, '0', '2022-10-03 12:38:51', '2022-10-03 12:38:51'),
(260, 'cause_log', 'New donation payment done', 727, NULL, NULL, '0', '2022-10-04 08:25:10', '2022-10-04 08:25:10'),
(261, 'cause_log', 'New donation payment done', 728, NULL, NULL, '0', '2022-10-04 14:42:02', '2022-10-04 14:42:02'),
(262, 'cause_log', 'New donation payment done', 729, NULL, NULL, '0', '2022-10-04 16:18:05', '2022-10-04 16:18:05'),
(263, 'cause_log', 'New donation payment done', 730, NULL, NULL, '0', '2022-10-04 21:44:51', '2022-10-04 21:44:51'),
(264, 'cause_log', 'New donation payment done', 731, NULL, NULL, '0', '2022-10-04 23:17:56', '2022-10-04 23:17:56'),
(265, 'cause_log', 'New donation payment done', 732, NULL, NULL, '0', '2022-10-05 00:14:29', '2022-10-05 00:14:29'),
(266, 'cause_log', 'New donation payment done', 733, NULL, NULL, '0', '2022-10-05 03:49:15', '2022-10-05 03:49:15'),
(267, 'cause_log', 'New donation payment done', 734, NULL, NULL, '0', '2022-10-05 03:51:39', '2022-10-05 03:51:39'),
(268, 'cause_log', 'New donation payment done', 735, NULL, NULL, '0', '2022-10-05 03:59:54', '2022-10-05 03:59:54'),
(269, 'cause_log', 'New donation payment done', 736, NULL, NULL, '1', '2022-10-05 04:01:36', '2022-10-05 05:44:30'),
(270, 'cause_log', 'New donation payment done', 737, NULL, NULL, '0', '2022-10-05 07:12:29', '2022-10-05 07:12:29'),
(271, 'cause_log', 'New donation payment done', 738, NULL, NULL, '0', '2022-10-05 07:41:35', '2022-10-05 07:41:35'),
(272, 'cause_log', 'New donation payment done', 739, NULL, NULL, '0', '2022-10-05 07:47:33', '2022-10-05 07:47:33'),
(273, 'cause_log', 'New donation payment done', 740, NULL, NULL, '0', '2022-10-05 08:52:41', '2022-10-05 08:52:41'),
(274, 'cause_log', 'New donation payment done', 741, NULL, NULL, '0', '2022-10-05 08:57:06', '2022-10-05 08:57:06'),
(275, 'cause_log', 'New donation payment done', 742, NULL, NULL, '0', '2022-10-05 10:41:52', '2022-10-05 10:41:52'),
(276, 'cause_log', 'New donation payment done', 743, NULL, NULL, '0', '2022-10-05 10:51:11', '2022-10-05 10:51:11'),
(277, 'cause_log', 'New donation payment done', 744, NULL, NULL, '0', '2022-10-05 11:10:21', '2022-10-05 11:10:21'),
(278, 'cause_log', 'New donation payment done', 745, NULL, NULL, '0', '2022-10-05 11:27:23', '2022-10-05 11:27:23'),
(279, 'cause_log', 'New donation payment done', 746, NULL, NULL, '0', '2022-10-06 02:08:06', '2022-10-06 02:08:06'),
(280, 'cause_log', 'New donation payment done', 747, NULL, NULL, '0', '2022-10-06 09:12:08', '2022-10-06 09:12:08'),
(281, 'cause_log', 'New donation payment done', 748, NULL, NULL, '0', '2022-10-06 09:42:36', '2022-10-06 09:42:36'),
(282, 'cause_log', 'New donation payment done', 749, NULL, NULL, '0', '2022-10-06 10:08:37', '2022-10-06 10:08:37'),
(283, 'cause_log', 'New donation payment done', 750, NULL, NULL, '0', '2022-10-06 12:32:54', '2022-10-06 12:32:54'),
(284, 'cause_log', 'New donation payment done', 751, NULL, NULL, '0', '2022-10-06 13:53:33', '2022-10-06 13:53:33'),
(285, 'cause_log', 'New donation payment done', 752, NULL, NULL, '0', '2022-10-06 14:55:54', '2022-10-06 14:55:54'),
(286, 'cause_log', 'New donation payment done', 753, NULL, NULL, '0', '2022-10-06 22:37:04', '2022-10-06 22:37:04'),
(287, 'cause_log', 'New donation payment done', 754, NULL, NULL, '0', '2022-10-07 05:45:03', '2022-10-07 05:45:03'),
(288, 'cause_log', 'New donation payment done', 755, NULL, NULL, '0', '2022-10-07 07:21:41', '2022-10-07 07:21:41'),
(289, 'cause_log', 'New donation payment done', 756, NULL, NULL, '0', '2022-10-07 07:24:21', '2022-10-07 07:24:21'),
(290, 'cause_log', 'New donation payment done', 757, NULL, NULL, '0', '2022-10-07 07:57:57', '2022-10-07 07:57:57'),
(291, 'cause_log', 'New donation payment done', 758, NULL, NULL, '0', '2022-10-07 12:11:27', '2022-10-07 12:11:27'),
(292, 'cause_log', 'New donation payment done', 759, NULL, NULL, '0', '2022-10-07 16:02:55', '2022-10-07 16:02:55'),
(293, 'cause_log', 'New donation payment done', 760, NULL, NULL, '0', '2022-10-08 09:50:36', '2022-10-08 09:50:36'),
(294, 'cause_log', 'New donation payment done', 761, NULL, NULL, '0', '2022-10-08 09:51:47', '2022-10-08 09:51:47'),
(295, 'cause_log', 'New donation payment done', 762, NULL, NULL, '0', '2022-10-08 21:57:41', '2022-10-08 21:57:41'),
(296, 'cause_log', 'New donation payment done', 763, NULL, NULL, '1', '2022-10-09 01:07:43', '2022-10-09 02:07:22'),
(297, 'cause_log', 'New donation payment done', 764, NULL, NULL, '0', '2022-10-09 08:56:00', '2022-10-09 08:56:00'),
(298, 'cause_log', 'New donation payment done', 765, NULL, NULL, '0', '2022-10-09 08:56:47', '2022-10-09 08:56:47'),
(299, 'cause_log', 'New donation payment done', 766, NULL, NULL, '0', '2022-10-09 13:54:26', '2022-10-09 13:54:26'),
(300, 'cause_log', 'New donation payment done', 767, NULL, NULL, '0', '2022-10-09 21:57:01', '2022-10-09 21:57:01'),
(301, 'cause_log', 'New donation payment done', 768, NULL, NULL, '0', '2022-10-09 21:57:31', '2022-10-09 21:57:31'),
(302, 'cause_log', 'New donation payment done', 769, NULL, NULL, '1', '2022-10-09 23:39:34', '2022-10-10 04:14:02'),
(303, 'cause_log', 'New donation payment done', 770, NULL, NULL, '0', '2022-10-10 07:13:32', '2022-10-10 07:13:32'),
(304, 'cause_log', 'New donation payment done', 771, NULL, NULL, '0', '2022-10-10 07:48:59', '2022-10-10 07:48:59'),
(305, 'cause_log', 'New donation payment done', 772, NULL, NULL, '0', '2022-10-10 07:49:17', '2022-10-10 07:49:17'),
(306, 'cause_log', 'New donation payment done', 773, NULL, NULL, '0', '2022-10-12 02:05:52', '2022-10-12 02:05:52'),
(307, 'cause_log', 'New donation payment done', 774, NULL, NULL, '0', '2022-10-12 02:06:19', '2022-10-12 02:06:19'),
(308, 'cause_log', 'New donation payment done', 775, NULL, NULL, '0', '2022-10-12 06:05:02', '2022-10-12 06:05:02'),
(309, 'cause_log', 'New donation payment done', 776, NULL, NULL, '0', '2022-10-13 03:43:51', '2022-10-13 03:43:51'),
(310, 'cause_log', 'New donation payment done', 777, NULL, NULL, '0', '2022-10-13 04:03:03', '2022-10-13 04:03:03'),
(311, 'cause_log', 'New donation payment done', 778, NULL, NULL, '0', '2022-10-13 17:58:28', '2022-10-13 17:58:28'),
(312, 'cause_log', 'New donation payment done', 535, NULL, NULL, '0', '2022-10-14 07:18:33', '2022-10-14 07:18:33'),
(313, 'cause_log', 'New donation payment done', 779, NULL, NULL, '0', '2022-10-15 08:03:01', '2022-10-15 08:03:01'),
(314, 'cause_log', 'New donation payment done', 780, NULL, NULL, '0', '2022-10-15 12:57:50', '2022-10-15 12:57:50'),
(315, 'cause_log', 'New donation payment done', 781, NULL, NULL, '0', '2022-10-15 15:56:04', '2022-10-15 15:56:04'),
(316, 'user_campaign', 'New user campaign created', NULL, 25, NULL, '0', '2022-10-16 01:14:47', '2022-10-16 01:14:47'),
(317, 'user_campaign', 'New user campaign created', NULL, 26, NULL, '0', '2022-10-16 06:06:41', '2022-10-16 06:06:41'),
(318, 'user_campaign', 'New user campaign created', NULL, 27, NULL, '0', '2022-10-16 06:09:21', '2022-10-16 06:09:21'),
(319, 'cause_log', 'New donation payment done', 782, NULL, NULL, '0', '2022-10-16 06:28:36', '2022-10-16 06:28:36'),
(320, 'cause_log', 'New donation payment done', 783, NULL, NULL, '0', '2022-10-16 12:23:54', '2022-10-16 12:23:54'),
(321, 'cause_log', 'New donation payment done', 784, NULL, NULL, '0', '2022-10-16 13:30:28', '2022-10-16 13:30:28'),
(322, 'cause_log', 'New donation payment done', 785, NULL, NULL, '0', '2022-10-16 14:54:42', '2022-10-16 14:54:42'),
(323, 'cause_log', 'New donation payment done', 786, NULL, NULL, '0', '2022-10-16 15:20:00', '2022-10-16 15:20:00'),
(324, 'cause_log', 'New donation payment done', 787, NULL, NULL, '0', '2022-10-17 23:25:12', '2022-10-17 23:25:12'),
(325, 'cause_log', 'New donation payment done', 788, NULL, NULL, '0', '2022-10-18 09:16:01', '2022-10-18 09:16:01'),
(326, 'cause_log', 'New donation payment done', 789, NULL, NULL, '0', '2022-10-18 09:18:43', '2022-10-18 09:18:43'),
(327, 'cause_log', 'New donation payment done', 790, NULL, NULL, '0', '2022-10-18 09:19:40', '2022-10-18 09:19:40'),
(328, 'cause_log', 'New donation payment done', 791, NULL, NULL, '0', '2022-10-18 09:20:39', '2022-10-18 09:20:39'),
(329, 'cause_log', 'New donation payment done', 792, NULL, NULL, '0', '2022-10-18 09:22:07', '2022-10-18 09:22:07'),
(330, 'cause_log', 'New donation payment done', 534, NULL, NULL, '0', '2022-10-18 20:01:01', '2022-10-18 20:01:01'),
(331, 'cause_log', 'New donation payment done', 793, NULL, NULL, '0', '2022-10-19 01:51:52', '2022-10-19 01:51:52'),
(332, 'cause_log', 'New donation payment done', 794, NULL, NULL, '0', '2022-10-19 01:52:34', '2022-10-19 01:52:34'),
(333, 'cause_log', 'New donation payment done', 535, NULL, NULL, '0', '2022-10-19 06:19:33', '2022-10-19 06:19:33'),
(334, 'cause_log', 'New donation payment done', 795, NULL, NULL, '0', '2022-10-19 06:55:45', '2022-10-19 06:55:45'),
(335, 'cause_log', 'New donation payment done', 796, NULL, NULL, '0', '2022-10-19 07:28:53', '2022-10-19 07:28:53'),
(336, 'cause_log', 'New donation payment done', 797, NULL, NULL, '0', '2022-10-19 08:31:06', '2022-10-19 08:31:06'),
(337, 'cause_log', 'New donation payment done', 798, NULL, NULL, '0', '2022-10-19 08:58:07', '2022-10-19 08:58:07'),
(338, 'cause_log', 'New donation payment done', 799, NULL, NULL, '0', '2022-10-19 08:59:00', '2022-10-19 08:59:00'),
(339, 'cause_log', 'New donation payment done', 800, NULL, NULL, '0', '2022-10-19 08:59:03', '2022-10-19 08:59:03'),
(340, 'cause_log', 'New donation payment done', 535, NULL, NULL, '0', '2022-10-19 09:31:20', '2022-10-19 09:31:20'),
(341, 'cause_log', 'New donation payment done', 801, NULL, NULL, '0', '2022-10-19 10:50:01', '2022-10-19 10:50:01'),
(342, 'cause_log', 'New donation payment done', 802, NULL, NULL, '0', '2022-10-19 10:54:05', '2022-10-19 10:54:05'),
(343, 'cause_log', 'New donation payment done', 803, NULL, NULL, '0', '2022-10-19 10:54:41', '2022-10-19 10:54:41'),
(344, 'cause_log', 'New donation payment done', 804, NULL, NULL, '0', '2022-10-19 11:02:09', '2022-10-19 11:02:09'),
(345, 'cause_log', 'New donation payment done', 805, NULL, NULL, '0', '2022-10-19 13:14:55', '2022-10-19 13:14:55'),
(346, 'cause_log', 'New donation payment done', 806, NULL, NULL, '0', '2022-10-19 13:15:12', '2022-10-19 13:15:12'),
(347, 'cause_log', 'New donation payment done', 807, NULL, NULL, '0', '2022-10-19 13:28:50', '2022-10-19 13:28:50'),
(348, 'cause_log', 'New donation payment done', 808, NULL, NULL, '0', '2022-10-19 16:36:24', '2022-10-19 16:36:24'),
(349, 'cause_log', 'New donation payment done', 809, NULL, NULL, '0', '2022-10-19 16:36:25', '2022-10-19 16:36:25'),
(350, 'cause_log', 'New donation payment done', 810, NULL, NULL, '0', '2022-10-19 16:37:05', '2022-10-19 16:37:05'),
(351, 'cause_log', 'New donation payment done', 811, NULL, NULL, '0', '2022-10-19 18:52:30', '2022-10-19 18:52:30'),
(352, 'cause_log', 'New donation payment done', 812, NULL, NULL, '0', '2022-10-19 18:52:46', '2022-10-19 18:52:46'),
(353, 'cause_log', 'New donation payment done', 813, NULL, NULL, '0', '2022-10-19 18:53:00', '2022-10-19 18:53:00'),
(354, 'cause_log', 'New donation payment done', 814, NULL, NULL, '0', '2022-10-19 18:53:22', '2022-10-19 18:53:22'),
(355, 'cause_log', 'New donation payment done', 815, NULL, NULL, '0', '2022-10-19 19:34:09', '2022-10-19 19:34:09'),
(356, 'cause_log', 'New donation payment done', 535, NULL, NULL, '0', '2022-10-19 19:49:55', '2022-10-19 19:49:55'),
(357, 'cause_log', 'New donation payment done', 816, NULL, NULL, '0', '2022-10-19 20:13:32', '2022-10-19 20:13:32'),
(358, 'cause_log', 'New donation payment done', 817, NULL, NULL, '0', '2022-10-19 22:04:11', '2022-10-19 22:04:11'),
(359, 'cause_log', 'New donation payment done', 818, NULL, NULL, '0', '2022-10-20 01:31:24', '2022-10-20 01:31:24'),
(360, 'cause_log', 'New donation payment done', 819, NULL, NULL, '0', '2022-10-20 01:32:55', '2022-10-20 01:32:55'),
(361, 'cause_log', 'New donation payment done', 820, NULL, NULL, '0', '2022-10-20 01:37:46', '2022-10-20 01:37:46'),
(362, 'cause_log', 'New donation payment done', 821, NULL, NULL, '0', '2022-10-20 01:39:10', '2022-10-20 01:39:10'),
(363, 'cause_log', 'New donation payment done', 822, NULL, NULL, '0', '2022-10-20 01:40:42', '2022-10-20 01:40:42'),
(364, 'cause_log', 'New donation payment done', 823, NULL, NULL, '0', '2022-10-20 02:24:09', '2022-10-20 02:24:09'),
(365, 'cause_log', 'New donation payment done', 824, NULL, NULL, '0', '2022-10-20 02:27:24', '2022-10-20 02:27:24'),
(366, 'cause_log', 'New donation payment done', 825, NULL, NULL, '0', '2022-10-20 02:49:24', '2022-10-20 02:49:24'),
(367, 'cause_log', 'New donation payment done', 826, NULL, NULL, '1', '2022-10-20 03:08:59', '2022-10-20 04:32:45'),
(368, 'cause_log', 'New donation payment done', 827, NULL, NULL, '0', '2022-10-20 05:33:28', '2022-10-20 05:33:28'),
(369, 'cause_log', 'New donation payment done', 828, NULL, NULL, '0', '2022-10-20 06:03:34', '2022-10-20 06:03:34'),
(370, 'cause_log', 'New donation payment done', 829, NULL, NULL, '0', '2022-10-20 07:50:57', '2022-10-20 07:50:57'),
(371, 'cause_log', 'New donation payment done', 830, NULL, NULL, '0', '2022-10-20 08:15:01', '2022-10-20 08:15:01'),
(372, 'cause_log', 'New donation payment done', 831, NULL, NULL, '0', '2022-10-20 11:09:00', '2022-10-20 11:09:00'),
(373, 'cause_log', 'New donation payment done', 832, NULL, NULL, '0', '2022-10-20 11:14:31', '2022-10-20 11:14:31'),
(374, 'cause_log', 'New donation payment done', 833, NULL, NULL, '0', '2022-10-20 11:14:47', '2022-10-20 11:14:47'),
(375, 'cause_log', 'New donation payment done', 834, NULL, NULL, '0', '2022-10-20 11:19:28', '2022-10-20 11:19:28'),
(376, 'cause_log', 'New donation payment done', 835, NULL, NULL, '0', '2022-10-20 11:19:59', '2022-10-20 11:19:59'),
(377, 'cause_log', 'New donation payment done', 836, NULL, NULL, '0', '2022-10-20 11:44:35', '2022-10-20 11:44:35'),
(378, 'cause_log', 'New donation payment done', 837, NULL, NULL, '0', '2022-10-20 11:58:18', '2022-10-20 11:58:18'),
(379, 'cause_log', 'New donation payment done', 838, NULL, NULL, '0', '2022-10-20 13:48:51', '2022-10-20 13:48:51'),
(380, 'cause_log', 'New donation payment done', 839, NULL, NULL, '0', '2022-10-20 14:57:47', '2022-10-20 14:57:47'),
(381, 'cause_log', 'New donation payment done', 840, NULL, NULL, '0', '2022-10-20 15:19:15', '2022-10-20 15:19:15'),
(382, 'cause_log', 'New donation payment done', 841, NULL, NULL, '0', '2022-10-20 15:37:11', '2022-10-20 15:37:11'),
(383, 'cause_log', 'New donation payment done', 842, NULL, NULL, '0', '2022-10-20 15:39:21', '2022-10-20 15:39:21'),
(384, 'cause_log', 'New donation payment done', 843, NULL, NULL, '0', '2022-10-20 16:02:57', '2022-10-20 16:02:57'),
(385, 'cause_log', 'New donation payment done', 844, NULL, NULL, '0', '2022-10-20 16:03:53', '2022-10-20 16:03:53'),
(386, 'cause_log', 'New donation payment done', 845, NULL, NULL, '0', '2022-10-20 16:04:32', '2022-10-20 16:04:32'),
(387, 'cause_log', 'New donation payment done', 846, NULL, NULL, '0', '2022-10-20 16:05:06', '2022-10-20 16:05:06'),
(388, 'cause_log', 'New donation payment done', 847, NULL, NULL, '0', '2022-10-20 20:59:00', '2022-10-20 20:59:00'),
(389, 'cause_log', 'New donation payment done', 848, NULL, NULL, '0', '2022-10-20 21:40:00', '2022-10-20 21:40:00'),
(390, 'cause_log', 'New donation payment done', 849, NULL, NULL, '0', '2022-10-20 21:40:15', '2022-10-20 21:40:15'),
(391, 'cause_log', 'New donation payment done', 850, NULL, NULL, '0', '2022-10-21 04:05:48', '2022-10-21 04:05:48'),
(392, 'cause_log', 'New donation payment done', 851, NULL, NULL, '0', '2022-10-21 15:35:56', '2022-10-21 15:35:56'),
(393, 'cause_log', 'New donation payment done', 852, NULL, NULL, '0', '2022-10-21 19:23:30', '2022-10-21 19:23:30'),
(394, 'cause_log', 'New donation payment done', 853, NULL, NULL, '0', '2022-10-22 02:31:46', '2022-10-22 02:31:46'),
(395, 'cause_log', 'New donation payment done', 854, NULL, NULL, '0', '2022-10-22 03:56:48', '2022-10-22 03:56:48'),
(396, 'cause_log', 'New donation payment done', 855, NULL, NULL, '0', '2022-10-22 03:57:08', '2022-10-22 03:57:08'),
(397, 'cause_log', 'New donation payment done', 856, NULL, NULL, '0', '2022-10-22 04:00:03', '2022-10-22 04:00:03'),
(398, 'cause_log', 'New donation payment done', 534, NULL, NULL, '0', '2022-10-22 04:12:40', '2022-10-22 04:12:40'),
(399, 'cause_log', 'New donation payment done', 857, NULL, NULL, '0', '2022-10-22 04:46:26', '2022-10-22 04:46:26'),
(400, 'cause_log', 'New donation payment done', 535, NULL, NULL, '0', '2022-10-22 05:34:26', '2022-10-22 05:34:26'),
(401, 'cause_log', 'New donation payment done', 858, NULL, NULL, '0', '2022-10-22 05:49:37', '2022-10-22 05:49:37'),
(402, 'cause_log', 'New donation payment done', 859, NULL, NULL, '0', '2022-10-22 05:49:53', '2022-10-22 05:49:53'),
(403, 'cause_log', 'New donation payment done', 860, NULL, NULL, '0', '2022-10-22 09:05:31', '2022-10-22 09:05:31'),
(404, 'cause_log', 'New donation payment done', 861, NULL, NULL, '0', '2022-10-22 10:08:56', '2022-10-22 10:08:56'),
(405, 'cause_log', 'New donation payment done', 534, NULL, NULL, '0', '2022-10-22 10:09:16', '2022-10-22 10:09:16'),
(406, 'cause_log', 'New donation payment done', 862, NULL, NULL, '0', '2022-10-22 10:09:27', '2022-10-22 10:09:27'),
(407, 'cause_log', 'New donation payment done', 863, NULL, NULL, '0', '2022-10-22 11:02:47', '2022-10-22 11:02:47'),
(408, 'cause_log', 'New donation payment done', 535, NULL, NULL, '0', '2022-10-22 13:39:15', '2022-10-22 13:39:15'),
(409, 'cause_log', 'New donation payment done', 535, NULL, NULL, '0', '2022-10-22 17:39:21', '2022-10-22 17:39:21'),
(410, 'cause_log', 'New donation payment done', 864, NULL, NULL, '0', '2022-10-22 23:03:03', '2022-10-22 23:03:03'),
(411, 'cause_log', 'New donation payment done', 865, NULL, NULL, '0', '2022-10-22 23:04:26', '2022-10-22 23:04:26'),
(412, 'cause_log', 'New donation payment done', 866, NULL, NULL, '0', '2022-10-22 23:06:12', '2022-10-22 23:06:12'),
(413, 'cause_log', 'New donation payment done', 867, NULL, NULL, '0', '2022-10-22 23:06:41', '2022-10-22 23:06:41'),
(414, 'cause_log', 'New donation payment done', 868, NULL, NULL, '0', '2022-10-22 23:07:47', '2022-10-22 23:07:47'),
(415, 'user_campaign', 'New user campaign created', NULL, 28, NULL, '0', '2022-10-23 01:00:53', '2022-10-23 01:00:53'),
(416, 'cause_log', 'New donation payment done', 535, NULL, NULL, '0', '2022-10-23 03:31:48', '2022-10-23 03:31:48'),
(417, 'user_campaign', 'New user campaign created', NULL, 29, NULL, '0', '2022-10-23 04:08:12', '2022-10-23 04:08:12'),
(418, 'user_campaign', 'New user campaign created', NULL, 30, NULL, '0', '2022-10-23 04:10:53', '2022-10-23 04:10:53'),
(419, 'user_campaign', 'New user campaign created', NULL, 31, NULL, '0', '2022-10-23 04:20:37', '2022-10-23 04:20:37'),
(420, 'user_campaign', 'New user campaign created', NULL, 32, NULL, '0', '2022-10-23 04:34:00', '2022-10-23 04:34:00'),
(421, 'cause_log', 'New donation payment done', 869, NULL, NULL, '0', '2022-10-23 05:43:38', '2022-10-23 05:43:38'),
(422, 'cause_log', 'New donation payment done', 870, NULL, NULL, '0', '2022-10-23 15:05:38', '2022-10-23 15:05:38'),
(423, 'cause_log', 'New donation payment done', 871, NULL, NULL, '0', '2022-10-23 18:16:30', '2022-10-23 18:16:30'),
(424, 'cause_log', 'New donation payment done', 872, NULL, NULL, '0', '2022-10-23 18:17:14', '2022-10-23 18:17:14'),
(425, 'cause_log', 'New donation payment done', 873, NULL, NULL, '0', '2022-10-23 20:39:01', '2022-10-23 20:39:01'),
(426, 'user_campaign', 'New user campaign created', NULL, 33, NULL, '0', '2022-10-24 00:12:44', '2022-10-24 00:12:44'),
(427, 'cause_log', 'New donation payment done', 874, NULL, NULL, '0', '2022-10-24 01:57:52', '2022-10-24 01:57:52'),
(428, 'cause_log', 'New donation payment done', 875, NULL, NULL, '0', '2022-10-24 04:05:11', '2022-10-24 04:05:11'),
(429, 'cause_log', 'New donation payment done', 876, NULL, NULL, '0', '2022-10-24 05:29:07', '2022-10-24 05:29:07'),
(430, 'user_campaign', 'New user campaign created', NULL, 34, NULL, '0', '2022-10-24 05:59:57', '2022-10-24 05:59:57'),
(431, 'user_campaign', 'New user campaign created', NULL, 35, NULL, '0', '2022-10-24 06:50:35', '2022-10-24 06:50:35'),
(432, 'cause_log', 'New donation payment done', 877, NULL, NULL, '0', '2022-10-24 10:33:22', '2022-10-24 10:33:22'),
(433, 'cause_log', 'New donation payment done', 878, NULL, NULL, '0', '2022-10-24 10:34:10', '2022-10-24 10:34:10'),
(434, 'cause_log', 'New donation payment done', 879, NULL, NULL, '0', '2022-10-24 17:38:28', '2022-10-24 17:38:28');
INSERT INTO `notifications` (`id`, `type`, `title`, `cause_log_id`, `user_campaign_id`, `withdraw_id`, `seen`, `created_at`, `updated_at`) VALUES
(435, 'cause_log', 'New donation payment done', 880, NULL, NULL, '0', '2022-10-24 20:28:50', '2022-10-24 20:28:50'),
(436, 'cause_log', 'New donation payment done', 881, NULL, NULL, '0', '2022-10-24 23:13:03', '2022-10-24 23:13:03'),
(437, 'user_campaign', 'New user campaign created', NULL, 36, NULL, '0', '2022-10-25 00:04:07', '2022-10-25 00:04:07'),
(438, 'user_campaign', 'New user campaign created', NULL, 37, NULL, '0', '2022-10-25 00:08:58', '2022-10-25 00:08:58'),
(439, 'cause_log', 'New donation payment done', 882, NULL, NULL, '0', '2022-10-25 04:15:01', '2022-10-25 04:15:01'),
(440, 'cause_log', 'New donation payment done', 883, NULL, NULL, '0', '2022-10-25 12:45:06', '2022-10-25 12:45:06'),
(441, 'cause_log', 'New donation payment done', 884, NULL, NULL, '0', '2022-10-25 12:45:56', '2022-10-25 12:45:56'),
(442, 'cause_log', 'New donation payment done', 885, NULL, NULL, '0', '2022-10-25 13:59:39', '2022-10-25 13:59:39'),
(443, 'cause_log', 'New donation payment done', 886, NULL, NULL, '0', '2022-10-25 14:18:59', '2022-10-25 14:18:59'),
(444, 'cause_log', 'New donation payment done', 887, NULL, NULL, '0', '2022-10-25 14:19:56', '2022-10-25 14:19:56'),
(445, 'cause_log', 'New donation payment done', 888, NULL, NULL, '0', '2022-10-25 14:22:03', '2022-10-25 14:22:03'),
(446, 'cause_log', 'New donation payment done', 889, NULL, NULL, '0', '2022-10-25 16:30:40', '2022-10-25 16:30:40'),
(447, 'cause_log', 'New donation payment done', 890, NULL, NULL, '0', '2022-10-26 01:49:22', '2022-10-26 01:49:22'),
(448, 'cause_log', 'New donation payment done', 891, NULL, NULL, '0', '2022-10-26 02:49:17', '2022-10-26 02:49:17'),
(449, 'cause_log', 'New donation payment done', 876, NULL, NULL, '0', '2022-10-26 05:11:06', '2022-10-26 05:11:06'),
(450, 'cause_log', 'New donation payment done', 892, NULL, NULL, '0', '2022-10-26 05:12:58', '2022-10-26 05:12:58'),
(451, 'cause_log', 'New donation payment done', 893, NULL, NULL, '0', '2022-10-26 05:13:10', '2022-10-26 05:13:10'),
(452, 'cause_log', 'New donation payment done', 894, NULL, NULL, '0', '2022-10-26 05:14:01', '2022-10-26 05:14:01'),
(453, 'cause_log', 'New donation payment done', 895, NULL, NULL, '0', '2022-10-26 05:14:08', '2022-10-26 05:14:08'),
(454, 'cause_log', 'New donation payment done', 896, NULL, NULL, '0', '2022-10-26 05:14:15', '2022-10-26 05:14:15'),
(455, 'cause_log', 'New donation payment done', 897, NULL, NULL, '0', '2022-10-26 05:14:42', '2022-10-26 05:14:42'),
(456, 'cause_log', 'New donation payment done', 898, NULL, NULL, '0', '2022-10-26 05:20:46', '2022-10-26 05:20:46'),
(457, 'cause_log', 'New donation payment done', 899, NULL, NULL, '0', '2022-10-26 05:21:06', '2022-10-26 05:21:06'),
(458, 'cause_log', 'New donation payment done', 876, NULL, NULL, '0', '2022-10-26 05:21:36', '2022-10-26 05:21:36'),
(459, 'cause_log', 'New donation payment done', 535, NULL, NULL, '0', '2022-10-26 05:21:48', '2022-10-26 05:21:48'),
(460, 'cause_log', 'New donation payment done', 900, NULL, NULL, '0', '2022-10-26 07:03:28', '2022-10-26 07:03:28'),
(461, 'cause_log', 'New donation payment done', 901, NULL, NULL, '0', '2022-10-26 07:04:03', '2022-10-26 07:04:03'),
(462, 'cause_log', 'New donation payment done', 902, NULL, NULL, '0', '2022-10-26 07:06:53', '2022-10-26 07:06:53'),
(463, 'cause_log', 'New donation payment done', 903, NULL, NULL, '0', '2022-10-26 07:07:34', '2022-10-26 07:07:34'),
(464, 'cause_log', 'New donation payment done', 904, NULL, NULL, '0', '2022-10-26 07:07:47', '2022-10-26 07:07:47'),
(465, 'cause_log', 'New donation payment done', 905, NULL, NULL, '0', '2022-10-26 07:08:01', '2022-10-26 07:08:01'),
(466, 'cause_log', 'New donation payment done', 906, NULL, NULL, '0', '2022-10-26 07:08:18', '2022-10-26 07:08:18'),
(467, 'cause_log', 'New donation payment done', 907, NULL, NULL, '0', '2022-10-26 07:09:36', '2022-10-26 07:09:36'),
(468, 'cause_log', 'New donation payment done', 908, NULL, NULL, '0', '2022-10-26 07:16:57', '2022-10-26 07:16:57'),
(469, 'cause_log', 'New donation payment done', 909, NULL, NULL, '0', '2022-10-26 07:18:09', '2022-10-26 07:18:09'),
(470, 'cause_log', 'New donation payment done', 910, NULL, NULL, '0', '2022-10-26 07:22:03', '2022-10-26 07:22:03'),
(471, 'cause_log', 'New donation payment done', 911, NULL, NULL, '0', '2022-10-26 07:29:14', '2022-10-26 07:29:14'),
(472, 'cause_log', 'New donation payment done', 912, NULL, NULL, '0', '2022-10-26 07:29:27', '2022-10-26 07:29:27'),
(473, 'cause_log', 'New donation payment done', 913, NULL, NULL, '0', '2022-10-26 07:34:05', '2022-10-26 07:34:05'),
(474, 'cause_log', 'New donation payment done', 914, NULL, NULL, '0', '2022-10-26 07:34:35', '2022-10-26 07:34:35'),
(475, 'cause_log', 'New donation payment done', 915, NULL, NULL, '0', '2022-10-26 07:48:59', '2022-10-26 07:48:59'),
(476, 'cause_log', 'New donation payment done', 916, NULL, NULL, '0', '2022-10-26 09:14:29', '2022-10-26 09:14:29'),
(477, 'cause_log', 'New donation payment done', 917, NULL, NULL, '0', '2022-10-26 16:07:16', '2022-10-26 16:07:16');

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci,
  `meta_tags` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `page_content` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_meta_description` text COLLATE utf8mb4_unicode_ci,
  `og_meta_image` text COLLATE utf8mb4_unicode_ci,
  `visibility` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `title`, `slug`, `meta_tags`, `meta_description`, `page_content`, `status`, `created_at`, `updated_at`, `meta_title`, `og_meta_title`, `og_meta_description`, `og_meta_image`, `visibility`) VALUES
(1, 'Terms & Conditions', 'terms-conditions', 'dynamic page', 'this is dynamic page meta description', '<p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Welcome to fundorex!</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">These terms and conditions outline the rules and regulations for the use of fundorex\'s Website, located at http://xgenious.com/laravel/fundorex.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">By accessing this website we assume you accept these terms and conditions. Do not continue to use fundorex if you do not agree to take all of the terms and conditions stated on this page.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">The following terminology applies to these Terms and Conditions, Privacy Statement and Disclaimer Notice and all Agreements: \"Client\", \"You\" and \"Your\" refers to you, the person log on this website and compliant to the Company’s terms and conditions. \"The Company\", \"Ourselves\", \"We\", \"Our\" and \"Us\", refers to our Company. \"Party\", \"Parties\", or \"Us\", refers to both the Client and ourselves. All terms refer to the offer, acceptance and consideration of payment necessary to undertake the process of our assistance to the Client in the most appropriate manner for the express purpose of meeting the Client’s needs in respect of provision of the Company’s stated services, in accordance with and subject to, prevailing law of Netherlands. Any use of the above terminology or other words in the singular, plural, capitalization and/or he/she or they, are taken as interchangeable and therefore as referring to same.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-bottom: 18px; font-size: 14px;\"><span style=\"font-weight: 700;\">Cookies</span></h3><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">We employ the use of cookies. By accessing fundorex, you agreed to use cookies in agreement with the fundorex\'s Privacy Policy.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Most interactive websites use cookies to let us retrieve the user’s details for each visit. Cookies are used by our website to enable the functionality of certain areas to make it easier for people visiting our website. Some of our affiliate/advertising partners may also use cookies.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-bottom: 18px; font-size: 14px;\"><span style=\"font-weight: 700;\">License</span></h3><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Unless otherwise stated, fundorex and/or its licensors own the intellectual property rights for all material on fundorex. All intellectual property rights are reserved. You may access this from fundorex for your own personal use subjected to restrictions set in these terms and conditions.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">You must not:</p><ul style=\"margin-bottom: 10px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><li>Republish material from fundorex</li><li>Sell, rent or sub-license material from fundorex</li><li>Reproduce, duplicate or copy material from fundorex</li><li>Redistribute content from fundorex</li></ul><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">This Agreement shall begin on the date hereof. Our Terms and Conditions were created with the help of the&nbsp;<a href=\"https://www.termsandconditionsgenerator.com/\" style=\"color: rgb(102, 102, 102);\">Terms And Conditions Generator</a>.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Parts of this website offer an opportunity for users to post and exchange opinions and information in certain areas of the website. fundorex does not filter, edit, publish or review Comments prior to their presence on the website. Comments do not reflect the views and opinions of fundorex,its agents and/or affiliates. Comments reflect the views and opinions of the person who post their views and opinions. To the extent permitted by applicable laws, fundorex shall not be liable for the Comments or for any liability, damages or expenses caused and/or suffered as a result of any use of and/or posting of and/or appearance of the Comments on this website.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">fundorex reserves the right to monitor all Comments and to remove any Comments which can be considered inappropriate, offensive or causes breach of these Terms and Conditions.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">You warrant and represent that:</p><ul style=\"margin-bottom: 10px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><li>You are entitled to post the Comments on our website and have all necessary licenses and consents to do so;</li><li>The Comments do not invade any intellectual property right, including without limitation copyright, patent or trademark of any third party;</li><li>The Comments do not contain any defamatory, libelous, offensive, indecent or otherwise unlawful material which is an invasion of privacy</li><li>The Comments will not be used to solicit or promote business or custom or present commercial activities or unlawful activity.</li></ul><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">You hereby grant fundorex a non-exclusive license to use, reproduce, edit and authorize others to use, reproduce and edit any of your Comments in any and all forms, formats or media.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-bottom: 18px; font-size: 14px;\"><span style=\"font-weight: 700;\">Hyperlinking to our Content</span></h3><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">The following organizations may link to our Website without prior written approval:</p><ul style=\"margin-bottom: 10px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><li>Government agencies;</li><li>Search engines;</li><li>News organizations;</li><li>Online directory distributors may link to our Website in the same manner as they hyperlink to the Websites of other listed businesses; and</li><li>System wide Accredited Businesses except soliciting non-profit organizations, charity shopping malls, and charity fundraising groups which may not hyperlink to our Web site.</li></ul><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">These organizations may link to our home page, to publications or to other Website information so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products and/or services; and (c) fits within the context of the linking party’s site.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">We may consider and approve other link requests from the following types of organizations:</p><ul style=\"margin-bottom: 10px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><li>commonly-known consumer and/or business information sources;</li><li>dot.com community sites;</li><li>associations or other groups representing charities;</li><li>online directory distributors;</li><li>internet portals;</li><li>accounting, law and consulting firms; and</li><li>educational institutions and trade associations.</li></ul><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">We will approve link requests from these organizations if we decide that: (a) the link would not make us look unfavorably to ourselves or to our accredited businesses; (b) the organization does not have any negative records with us; (c) the benefit to us from the visibility of the hyperlink compensates the absence of fundorex; and (d) the link is in the context of general resource information.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">These organizations may link to our home page so long as the link: (a) is not in any way deceptive; (b) does not falsely imply sponsorship, endorsement or approval of the linking party and its products or services; and (c) fits within the context of the linking party’s site.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">If you are one of the organizations listed in paragraph 2 above and are interested in linking to our website, you must inform us by sending an e-mail to fundorex. Please include your name, your organization name, contact information as well as the URL of your site, a list of any URLs from which you intend to link to our Website, and a list of the URLs on our site to which you would like to link. Wait 2-3 weeks for a response.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Approved organizations may hyperlink to our Website as follows:</p><ul style=\"margin-bottom: 10px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><li>By use of our corporate name; or</li><li>By use of the uniform resource locator being linked to; or</li><li>By use of any other description of our Website being linked to that makes sense within the context and format of content on the linking party’s site.</li></ul><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">No use of fundorex\'s logo or other artwork will be allowed for linking absent a trademark license agreement.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-bottom: 18px; font-size: 14px;\"><span style=\"font-weight: 700;\">iFrames</span></h3><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Without prior approval and written permission, you may not create frames around our Webpages that alter in any way the visual presentation or appearance of our Website.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-bottom: 18px; font-size: 14px;\"><span style=\"font-weight: 700;\">Content Liability</span></h3><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">We shall not be hold responsible for any content that appears on your Website. You agree to protect and defend us against all claims that is rising on your Website. No link(s) should appear on any Website that may be interpreted as libelous, obscene or criminal, or which infringes, otherwise violates, or advocates the infringement or other violation of, any third party rights.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-bottom: 18px; font-size: 14px;\"><span style=\"font-weight: 700;\">Your Privacy</span></h3><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Please read Privacy Policy</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-bottom: 18px; font-size: 14px;\"><span style=\"font-weight: 700;\">Reservation of Rights</span></h3><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">We reserve the right to request that you remove all links or any particular link to our Website. You approve to immediately remove all links to our Website upon request. We also reserve the right to amen these terms and conditions and it’s linking policy at any time. By continuously linking to our Website, you agree to be bound to and follow these linking terms and conditions.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-bottom: 18px; font-size: 14px;\"><span style=\"font-weight: 700;\">Removal of links from our website</span></h3><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">If you find any link on our Website that is offensive for any reason, you are free to contact and inform us any moment. We will consider requests to remove links but we are not obligated to or so or to respond to you directly.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">We do not ensure that the information on this website is correct, we do not warrant its completeness or accuracy; nor do we promise to ensure that the website remains available or that the material on the website is kept up to date.</p><h3 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-bottom: 18px; font-size: 14px;\"><span style=\"font-weight: 700;\">Disclaimer</span></h3><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">To the maximum extent permitted by applicable law, we exclude all representations, warranties and conditions relating to our website and the use of this website. Nothing in this disclaimer will:</p><ul style=\"margin-bottom: 10px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><li>limit or exclude our or your liability for death or personal injury;</li><li>limit or exclude our or your liability for fraud or fraudulent misrepresentation;</li><li>limit any of our or your liabilities in any way that is not permitted under applicable law; or</li><li>exclude any of our or your liabilities that may not be excluded under applicable law.</li></ul><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">The limitations and prohibitions of liability set in this Section and elsewhere in this disclaimer: (a) are subject to the preceding paragraph; and (b) govern all liabilities arising under the disclaimer, including liabilities arising in contract, in tort and for breach of statutory duty.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">As long as the website and the information and services on the website are provided free of charge, we will not be liable for any loss or damage of any nature.</p>', 'publish', '2020-05-28 05:57:59', '2021-07-11 17:37:08', NULL, NULL, NULL, NULL, 'everyone'),
(2, 'Privacy Policy', 'privacy-policy', NULL, NULL, '<p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">At fundorex, accessible from https://xgenious.com/laravel/fundorex/, one of our main priorities is the privacy of our visitors. This Privacy Policy document contains types of information that is collected and recorded by fundorex and how we use it.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">If you have additional questions or require more information about our Privacy Policy, do not hesitate to contact us.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">This Privacy Policy applies only to our online activities and is valid for visitors to our website with regards to the information that they shared and/or collect in fundorex. This policy is not applicable to any information collected offline or via channels other than this website. Our Privacy Policy was created with the help of the&nbsp;<a href=\"https://www.privacypolicygenerator.info/\" style=\"color: rgb(102, 102, 102);\">Privacy Policy Generator</a>.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-bottom: 18px; font-size: 16px;\">Consent</h2><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">By using our website, you hereby consent to our Privacy Policy and agree to its terms.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-bottom: 18px; font-size: 16px;\">Information we collect</h2><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">The personal information that you are asked to provide, and the reasons why you are asked to provide it, will be made clear to you at the point we ask you to provide your personal information.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">If you contact us directly, we may receive additional information about you such as your name, email address, phone number, the contents of the message and/or attachments you may send us, and any other information you may choose to provide.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">When you register for an Account, we may ask for your contact information, including items such as name, company name, address, email address, and telephone number.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-bottom: 18px; font-size: 16px;\">How we use your information</h2><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">We use the information we collect in various ways, including to:</p><ul style=\"margin-bottom: 10px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif;\"><li>Provide, operate, and maintain our website</li><li>Improve, personalize, and expand our website</li><li>Understand and analyze how you use our website</li><li>Develop new products, services, features, and functionality</li><li>Communicate with you, either directly or through one of our partners, including for customer service, to provide you with updates and other information relating to the website, and for marketing and promotional purposes</li><li>Send you emails</li><li>Find and prevent fraud</li></ul><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-bottom: 18px; font-size: 16px;\">Log Files</h2><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">fundorex follows a standard procedure of using log files. These files log visitors when they visit websites. All hosting companies do this and a part of hosting services\' analytics. The information collected by log files include internet protocol (IP) addresses, browser type, Internet Service Provider (ISP), date and time stamp, referring/exit pages, and possibly the number of clicks. These are not linked to any information that is personally identifiable. The purpose of the information is for analyzing trends, administering the site, tracking users\' movement on the website, and gathering demographic information.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-bottom: 18px; font-size: 16px;\">Cookies and Web Beacons</h2><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Like any other website, fundorex uses \'cookies\'. These cookies are used to store information including visitors\' preferences, and the pages on the website that the visitor accessed or visited. The information is used to optimize the users\' experience by customizing our web page content based on visitors\' browser type and/or other information.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">For more general information on cookies, please read&nbsp;<a href=\"https://www.privacypolicyonline.com/what-are-cookies/\" style=\"color: rgb(102, 102, 102);\">\"What Are Cookies\"</a>.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-bottom: 18px; font-size: 16px;\">Advertising Partners Privacy Policies</h2><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">You may consult this list to find the Privacy Policy for each of the advertising partners of fundorex.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Third-party ad servers or ad networks uses technologies like cookies, JavaScript, or Web Beacons that are used in their respective advertisements and links that appear on fundorex, which are sent directly to users\' browser. They automatically receive your IP address when this occurs. These technologies are used to measure the effectiveness of their advertising campaigns and/or to personalize the advertising content that you see on websites that you visit.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Note that fundorex has no access to or control over these cookies that are used by third-party advertisers.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-bottom: 18px; font-size: 16px;\">Third Party Privacy Policies</h2><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">fundorex\'s Privacy Policy does not apply to other advertisers or websites. Thus, we are advising you to consult the respective Privacy Policies of these third-party ad servers for more detailed information. It may include their practices and instructions about how to opt-out of certain options.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">You can choose to disable cookies through your individual browser options. To know more detailed information about cookie management with specific web browsers, it can be found at the browsers\' respective websites.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-bottom: 18px; font-size: 16px;\">CCPA Privacy Rights (Do Not Sell My Personal Information)</h2><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Under the CCPA, among other rights, California consumers have the right to:</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Request that a business that collects a consumer\'s personal data disclose the categories and specific pieces of personal data that a business has collected about consumers.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Request that a business delete any personal data about the consumer that a business has collected.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Request that a business that sells a consumer\'s personal data, not sell the consumer\'s personal data.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-bottom: 18px; font-size: 16px;\">GDPR Data Protection Rights</h2><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">We would like to make sure you are fully aware of all of your data protection rights. Every user is entitled to the following:</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">The right to access – You have the right to request copies of your personal data. We may charge you a small fee for this service.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">The right to rectification – You have the right to request that we correct any information you believe is inaccurate. You also have the right to request that we complete the information you believe is incomplete.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">The right to erasure – You have the right to request that we erase your personal data, under certain conditions.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">The right to restrict processing – You have the right to request that we restrict the processing of your personal data, under certain conditions.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">The right to object to processing – You have the right to object to our processing of your personal data, under certain conditions.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">The right to data portability – You have the right to request that we transfer the data that we have collected to another organization, or directly to you, under certain conditions.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">If you make a request, we have one month to respond to you. If you would like to exercise any of these rights, please contact us.</p><h2 style=\"font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; line-height: 1.1; color: rgb(102, 102, 102); margin-bottom: 18px; font-size: 16px;\">Children\'s Information</h2><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">Another part of our priority is adding protection for children while using the internet. We encourage parents and guardians to observe, participate in, and/or monitor and guide their online activity.</p><p style=\"margin-bottom: 20px; color: rgb(102, 102, 102); font-family: &quot;Helvetica Neue&quot;, Helvetica, Arial, sans-serif; font-size: 14px;\">fundorex does not knowingly collect any Personal Identifiable Information from children under the age of 13. If you think that your child provided this kind of information on our website, we strongly encourage you to contact us immediately and we will do our best efforts to promptly remove such information from our records.</p>', 'publish', '2020-07-24 21:01:55', '2021-07-11 17:35:40', NULL, NULL, NULL, NULL, 'everyone');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(5, 'user-list', 'admin', '2021-07-24 15:38:14', '2021-07-24 15:39:16'),
(6, 'user-create', 'admin', '2021-07-24 15:38:14', '2021-07-24 15:39:16'),
(7, 'user-edit', 'admin', '2021-07-24 15:38:14', '2021-07-24 15:39:16'),
(8, 'user-delete', 'admin', '2021-07-24 15:38:14', '2021-07-24 15:39:16'),
(9, 'newsletter-list', 'admin', '2021-07-24 21:05:28', '2021-07-24 21:05:28'),
(10, 'newsletter-create', 'admin', '2021-07-24 21:05:28', '2021-07-24 21:05:28'),
(11, 'newsletter-mail-send', 'admin', '2021-07-24 21:05:28', '2021-07-24 21:05:28'),
(12, 'newsletter-delete', 'admin', '2021-07-24 21:05:28', '2021-07-24 21:05:28'),
(13, 'blog-list', 'admin', '2021-07-24 21:35:11', '2021-07-24 21:35:11'),
(14, 'blog-create', 'admin', '2021-07-24 21:35:11', '2021-07-24 21:35:11'),
(15, 'blog-edit', 'admin', '2021-07-24 21:35:11', '2021-07-24 21:35:11'),
(16, 'blog-delete', 'admin', '2021-07-24 21:35:11', '2021-07-24 21:35:11'),
(17, 'blog-page-settings', 'admin', '2021-07-24 21:35:11', '2021-07-24 21:35:11'),
(18, 'blog-single-page-settings', 'admin', '2021-07-24 21:35:11', '2021-07-24 21:35:11'),
(19, 'blog-category-list', 'admin', '2021-07-24 21:46:18', '2021-07-24 21:46:18'),
(20, 'blog-category-create', 'admin', '2021-07-24 21:46:18', '2021-07-24 21:46:18'),
(21, 'blog-category-edit', 'admin', '2021-07-24 21:46:19', '2021-07-24 21:46:19'),
(22, 'blog-category-delete', 'admin', '2021-07-24 21:46:19', '2021-07-24 21:46:19'),
(23, 'image-gallery-list', 'admin', '2021-07-24 22:09:59', '2021-07-24 22:09:59'),
(24, 'image-gallery-create', 'admin', '2021-07-24 22:09:59', '2021-07-24 22:09:59'),
(25, 'image-gallery-edit', 'admin', '2021-07-24 22:09:59', '2021-07-24 22:09:59'),
(26, 'image-gallery-delete', 'admin', '2021-07-24 22:09:59', '2021-07-24 22:09:59'),
(27, 'image-gallery-category-list', 'admin', '2021-07-24 22:09:59', '2021-07-24 22:09:59'),
(28, 'image-gallery-category-create', 'admin', '2021-07-24 22:09:59', '2021-07-24 22:09:59'),
(29, 'image-gallery-category-edit', 'admin', '2021-07-24 22:09:59', '2021-07-24 22:09:59'),
(30, 'image-gallery-category-delete', 'admin', '2021-07-24 22:09:59', '2021-07-24 22:09:59'),
(31, 'image-gallery-page-settings', 'admin', '2021-07-24 22:09:59', '2021-07-24 22:09:59'),
(32, 'faq-list', 'admin', '2021-07-24 22:34:37', '2021-07-24 22:34:37'),
(33, 'faq-create', 'admin', '2021-07-24 22:34:37', '2021-07-24 22:34:37'),
(34, 'faq-edit', 'admin', '2021-07-24 22:34:37', '2021-07-24 22:34:37'),
(35, 'faq-delete', 'admin', '2021-07-24 22:34:37', '2021-07-24 22:34:37'),
(36, 'team-member-list', 'admin', '2021-07-24 22:44:27', '2021-07-24 22:44:27'),
(37, 'team-member-create', 'admin', '2021-07-24 22:44:28', '2021-07-24 22:44:28'),
(38, 'team-member-edit', 'admin', '2021-07-24 22:44:28', '2021-07-24 22:44:28'),
(39, 'team-member-delete', 'admin', '2021-07-24 22:44:28', '2021-07-24 22:44:28'),
(40, 'page-list', 'admin', '2021-07-25 10:10:51', '2021-07-25 10:10:51'),
(41, 'page-create', 'admin', '2021-07-25 10:10:51', '2021-07-25 10:10:51'),
(42, 'page-edit', 'admin', '2021-07-25 10:10:52', '2021-07-25 10:10:52'),
(43, 'page-delete', 'admin', '2021-07-25 10:10:52', '2021-07-25 10:10:52'),
(44, 'testimonial-list', 'admin', '2021-07-25 10:31:39', '2021-07-25 10:31:39'),
(45, 'testimonial-create', 'admin', '2021-07-25 10:31:39', '2021-07-25 10:31:39'),
(46, 'testimonial-edit', 'admin', '2021-07-25 10:31:39', '2021-07-25 10:31:39'),
(47, 'testimonial-delete', 'admin', '2021-07-25 10:31:39', '2021-07-25 10:31:39'),
(48, 'counterup-list', 'admin', '2021-07-25 10:54:13', '2021-07-25 10:54:13'),
(49, 'counterup-create', 'admin', '2021-07-25 10:54:13', '2021-07-25 10:54:13'),
(50, 'counterup-edit', 'admin', '2021-07-25 10:54:13', '2021-07-25 10:54:13'),
(51, 'counterup-delete', 'admin', '2021-07-25 10:54:13', '2021-07-25 10:54:13'),
(52, 'job-list', 'admin', '2021-07-25 11:27:33', '2021-07-25 11:27:33'),
(53, 'job-create', 'admin', '2021-07-25 11:27:33', '2021-07-25 11:27:33'),
(54, 'job-edit', 'admin', '2021-07-25 11:27:33', '2021-07-25 11:27:33'),
(55, 'job-delete', 'admin', '2021-07-25 11:27:33', '2021-07-25 11:27:33'),
(56, 'job-category-list', 'admin', '2021-07-25 11:27:33', '2021-07-25 11:27:33'),
(57, 'job-category-create', 'admin', '2021-07-25 11:27:33', '2021-07-25 11:27:33'),
(58, 'job-category-edit', 'admin', '2021-07-25 11:27:34', '2021-07-25 11:27:34'),
(59, 'job-category-delete', 'admin', '2021-07-25 11:27:34', '2021-07-25 11:27:34'),
(60, 'job-applicant-view', 'admin', '2021-07-25 11:27:34', '2021-07-25 11:27:34'),
(61, 'job-applicant-delete', 'admin', '2021-07-25 11:27:34', '2021-07-25 11:27:34'),
(62, 'job-applicant-mail', 'admin', '2021-07-25 11:27:34', '2021-07-25 11:27:34'),
(63, 'job-applicant-report', 'admin', '2021-07-25 11:27:34', '2021-07-25 11:27:34'),
(64, 'job-settings', 'admin', '2021-07-25 11:27:34', '2021-07-25 11:27:34'),
(65, 'job-applicant-list', 'admin', '2021-07-25 11:37:19', '2021-07-25 11:37:19'),
(66, 'event-list', 'admin', '2021-07-25 19:04:04', '2021-07-25 19:04:04'),
(67, 'event-create', 'admin', '2021-07-25 19:04:04', '2021-07-25 19:04:04'),
(68, 'event-edit', 'admin', '2021-07-25 19:04:04', '2021-07-25 19:04:04'),
(69, 'event-delete', 'admin', '2021-07-25 19:04:04', '2021-07-25 19:04:04'),
(70, 'event-category-list', 'admin', '2021-07-25 19:04:04', '2021-07-25 19:04:04'),
(71, 'event-category-create', 'admin', '2021-07-25 19:04:04', '2021-07-25 19:04:04'),
(72, 'event-category-edit', 'admin', '2021-07-25 19:04:04', '2021-07-25 19:04:04'),
(73, 'event-category-delete', 'admin', '2021-07-25 19:04:04', '2021-07-25 19:04:04'),
(74, 'event-attendance-list', 'admin', '2021-07-25 19:04:05', '2021-07-25 19:04:05'),
(75, 'event-attendance-delete', 'admin', '2021-07-25 19:04:05', '2021-07-25 19:04:05'),
(76, 'event-attendance-edit', 'admin', '2021-07-25 19:04:05', '2021-07-25 19:04:05'),
(77, 'event-attendance-mail', 'admin', '2021-07-25 19:04:05', '2021-07-25 19:04:05'),
(78, 'event-payment-log-list', 'admin', '2021-07-25 19:04:05', '2021-07-25 19:04:05'),
(79, 'event-payment-log-delete', 'admin', '2021-07-25 19:04:05', '2021-07-25 19:04:05'),
(80, 'event-payment-log-view', 'admin', '2021-07-25 19:04:05', '2021-07-25 19:04:05'),
(81, 'event-attendance-report', 'admin', '2021-07-25 19:04:05', '2021-07-25 19:04:05'),
(82, 'event-payment-log-report', 'admin', '2021-07-25 19:04:05', '2021-07-25 19:04:05'),
(83, 'event-single-settings', 'admin', '2021-07-25 19:04:05', '2021-07-25 19:04:05'),
(84, 'event-settings', 'admin', '2021-07-25 19:04:05', '2021-07-25 19:04:05'),
(85, 'event-payment-log-edit', 'admin', '2021-07-25 20:03:27', '2021-07-25 20:03:27'),
(86, 'donation-list', 'admin', '2021-07-25 20:35:38', '2021-07-25 20:35:38'),
(87, 'donation-create', 'admin', '2021-07-25 20:35:38', '2021-07-25 20:35:38'),
(88, 'donation-edit', 'admin', '2021-07-25 20:35:38', '2021-07-25 20:35:38'),
(89, 'donation-delete', 'admin', '2021-07-25 20:35:38', '2021-07-25 20:35:38'),
(90, 'donation-category-list', 'admin', '2021-07-25 20:35:38', '2021-07-25 20:35:38'),
(91, 'donation-category-create', 'admin', '2021-07-25 20:35:39', '2021-07-25 20:35:39'),
(92, 'donation-category-edit', 'admin', '2021-07-25 20:35:39', '2021-07-25 20:35:39'),
(93, 'donation-category-delete', 'admin', '2021-07-25 20:35:39', '2021-07-25 20:35:39'),
(94, 'donation-pending-cause', 'admin', '2021-07-25 20:35:39', '2021-07-25 20:35:39'),
(95, 'donation-withdraw-list', 'admin', '2021-07-25 20:35:39', '2021-07-25 20:35:39'),
(96, 'donation-withdraw-edit', 'admin', '2021-07-25 20:35:39', '2021-07-25 20:35:39'),
(97, 'donation-withdraw-delete', 'admin', '2021-07-25 20:35:39', '2021-07-25 20:35:39'),
(98, 'donation-withdraw-view', 'admin', '2021-07-25 20:35:39', '2021-07-25 20:35:39'),
(99, 'donation-payment-list', 'admin', '2021-07-25 20:35:39', '2021-07-25 20:35:39'),
(100, 'donation-payment-edit', 'admin', '2021-07-25 20:35:39', '2021-07-25 20:35:39'),
(101, 'donation-payment-delete', 'admin', '2021-07-25 20:35:39', '2021-07-25 20:35:39'),
(102, 'donation-cause-report', 'admin', '2021-07-25 20:35:39', '2021-07-25 20:35:39'),
(103, 'donation-settings', 'admin', '2021-07-25 20:35:39', '2021-07-25 20:35:39'),
(104, 'appearance-topbar-settings', 'admin', '2021-07-25 22:00:48', '2021-07-25 22:00:48'),
(105, 'appearance-navbar-settings', 'admin', '2021-07-25 22:00:48', '2021-07-25 22:00:48'),
(106, 'appearance-home-variant', 'admin', '2021-07-25 22:00:48', '2021-07-25 22:00:48'),
(107, 'appearance-menu-manage-list', 'admin', '2021-07-25 22:00:48', '2021-07-25 22:00:48'),
(108, 'appearance-menu-manage-edit', 'admin', '2021-07-25 22:00:48', '2021-07-25 22:00:48'),
(109, 'appearance-menu-manage-delete', 'admin', '2021-07-25 22:00:48', '2021-07-25 22:00:48'),
(110, 'appearance-widget-manage', 'admin', '2021-07-25 22:00:49', '2021-07-25 22:00:49'),
(111, 'appearance-form-builder', 'admin', '2021-07-25 22:00:49', '2021-07-25 22:00:49'),
(112, 'appearance-media-image', 'admin', '2021-07-25 22:00:49', '2021-07-25 22:00:49'),
(113, 'appearance-menu-manage-create', 'admin', '2021-07-25 22:21:13', '2021-07-25 22:21:13'),
(114, 'page-settings-home-page-manage', 'admin', '2021-07-25 22:27:09', '2021-07-25 22:27:09'),
(115, 'page-settings-about-page-manage', 'admin', '2021-07-25 22:27:09', '2021-07-25 22:27:09'),
(116, 'page-settings-event-page-manage', 'admin', '2021-07-25 22:27:09', '2021-07-25 22:27:09'),
(117, 'page-settings-contact-page-manage', 'admin', '2021-07-25 22:27:09', '2021-07-25 22:27:09'),
(118, 'page-settings-error-page-manage', 'admin', '2021-07-25 22:27:09', '2021-07-25 22:27:09'),
(119, 'page-settings-maintain-page-manage', 'admin', '2021-07-25 22:27:09', '2021-07-25 22:27:09'),
(120, 'general-settings-site-identity', 'admin', '2021-07-25 22:42:37', '2021-07-25 22:42:37'),
(121, 'general-settings-basic-settings', 'admin', '2021-07-25 22:42:37', '2021-07-25 22:42:37'),
(122, 'general-settings-color-settings', 'admin', '2021-07-25 22:42:37', '2021-07-25 22:42:37'),
(123, 'general-settings-typography', 'admin', '2021-07-25 22:42:37', '2021-07-25 22:42:37'),
(124, 'general-settings-seo-settings', 'admin', '2021-07-25 22:42:37', '2021-07-25 22:42:37'),
(125, 'general-settings-third-party-script', 'admin', '2021-07-25 22:42:37', '2021-07-25 22:42:37'),
(126, 'general-settings-email-template', 'admin', '2021-07-25 22:42:37', '2021-07-25 22:42:37'),
(127, 'general-settings-smtp-settings', 'admin', '2021-07-25 22:42:37', '2021-07-25 22:42:37'),
(128, 'general-settings-regenerate-media-image', 'admin', '2021-07-25 22:42:37', '2021-07-25 22:42:37'),
(129, 'general-settings-page-settings', 'admin', '2021-07-25 22:42:37', '2021-07-25 22:42:37'),
(130, 'general-settings-payment-gateway', 'admin', '2021-07-25 22:42:37', '2021-07-25 22:42:37'),
(131, 'general-settings-custom-css', 'admin', '2021-07-25 22:42:37', '2021-07-25 22:42:37'),
(132, 'general-settings-custom-js', 'admin', '2021-07-25 22:42:37', '2021-07-25 22:42:37'),
(133, 'general-settings-cache-settings', 'admin', '2021-07-25 22:42:38', '2021-07-25 22:42:38'),
(134, 'general-settings-gdpr-settings', 'admin', '2021-07-25 22:42:38', '2021-07-25 22:42:38'),
(135, 'general-settings-sitemap', 'admin', '2021-07-25 22:42:38', '2021-07-25 22:42:38'),
(136, 'general-settings-rss-feed', 'admin', '2021-07-25 22:42:38', '2021-07-25 22:42:38'),
(137, 'general-settings-license', 'admin', '2021-07-25 22:42:38', '2021-07-25 22:42:38'),
(138, 'language-list', 'admin', '2021-07-25 23:20:00', '2021-07-25 23:20:00'),
(139, 'language-edit', 'admin', '2021-07-25 23:20:00', '2021-07-25 23:20:00'),
(140, 'language-create', 'admin', '2021-07-25 23:20:00', '2021-07-25 23:20:00'),
(141, 'language-delete', 'admin', '2021-07-25 23:20:00', '2021-07-25 23:20:00'),
(142, 'success-story-list', 'admin', '2021-09-16 03:35:08', '2021-09-16 03:35:08'),
(143, 'success-story-edit', 'admin', '2021-09-16 03:35:08', '2021-09-16 03:35:08'),
(144, 'success-story-create', 'admin', '2021-09-16 03:35:08', '2021-09-16 03:35:08'),
(145, 'success-story-delete', 'admin', '2021-09-16 03:35:08', '2021-09-16 03:35:08'),
(146, 'success-story-category-list', 'admin', '2021-09-16 03:35:08', '2021-09-16 03:35:08'),
(147, 'success-story-category-edit', 'admin', '2021-09-16 03:35:08', '2021-09-16 03:35:08'),
(148, 'success-story-category-create', 'admin', '2021-09-16 03:35:09', '2021-09-16 03:35:09'),
(149, 'success-story-category-delete', 'admin', '2021-09-16 03:35:09', '2021-09-16 03:35:09'),
(150, 'client-area-list', 'admin', '2021-09-16 03:35:09', '2021-09-16 03:35:09'),
(151, 'client-area-edit', 'admin', '2021-09-16 03:35:09', '2021-09-16 03:35:09'),
(152, 'client-area-create', 'admin', '2021-09-16 03:35:09', '2021-09-16 03:35:09'),
(153, 'client-area-delete', 'admin', '2021-09-16 03:35:09', '2021-09-16 03:35:09'),
(154, 'page-settings-success-story-page-manage', 'admin', '2021-09-16 04:43:50', '2021-09-16 04:43:50'),
(155, 'donations-flag-report-list', 'admin', '2021-09-18 23:16:18', '2021-09-18 23:16:18'),
(158, 'donations-flag-report-delete', 'admin', '2021-09-18 23:16:18', '2021-09-18 23:16:18'),
(163, 'donations-flag-report-view', 'admin', NULL, NULL),
(164, 'donations-flag-report-mail-send', 'admin', NULL, NULL),
(165, 'donations-flag-report-status-update', 'admin', '2021-09-19 10:29:29', NULL),
(166, 'general-settings-database-upgrade', 'admin', NULL, NULL),
(167, 'support-ticket-index', 'admin', '2021-09-21 01:32:50', '2021-09-21 01:32:50'),
(168, 'support-ticket-create', 'admin', '2021-09-21 01:32:50', '2021-09-21 01:32:50'),
(169, 'support-ticket-view', 'admin', '2021-09-21 01:32:50', '2021-09-21 01:32:50'),
(170, 'support-ticket-delete', 'admin', '2021-09-21 01:32:50', '2021-09-21 01:32:50'),
(171, 'support-ticket-page-settings', 'admin', '2021-09-21 01:32:50', '2021-09-21 01:32:50'),
(172, 'support-ticket-category-index', 'admin', '2021-09-21 01:32:51', '2021-09-21 01:32:51'),
(173, 'support-ticket-category-create', 'admin', '2021-09-21 01:32:51', '2021-09-21 01:32:51'),
(174, 'support-ticket-category-edit', 'admin', '2021-09-21 01:32:51', '2021-09-21 01:32:51'),
(175, 'support-ticket-category-delete', 'admin', '2021-09-21 01:32:51', '2021-09-21 01:32:51'),
(176, 'register-page-manage', 'admin', '2022-02-12 07:39:46', '2022-02-12 07:39:46'),
(177, 'user-tax-list', 'admin', '2022-02-12 07:39:46', '2022-02-12 07:39:46'),
(178, 'user-tax-delete', 'admin', '2022-02-12 07:39:46', '2022-02-12 07:39:46'),
(179, 'reward-list', 'admin', '2022-02-15 03:55:44', '2022-02-15 03:55:44'),
(180, 'reward-create', 'admin', '2022-02-15 03:55:44', '2022-02-15 03:55:44'),
(181, 'reward-edit', 'admin', '2022-02-15 03:55:44', '2022-02-15 03:55:44'),
(182, 'reward-delete', 'admin', '2022-02-15 03:55:44', '2022-02-15 03:55:44'),
(183, 'reward-redeem-list', 'admin', '2022-02-20 00:59:13', '2022-02-20 00:59:13'),
(184, 'reward-redeem-edit', 'admin', '2022-02-20 00:59:13', '2022-02-20 00:59:13'),
(185, 'reward-redeem-delete', 'admin', '2022-02-20 00:59:13', '2022-02-20 00:59:13'),
(186, 'reward-redeem-view', 'admin', '2022-02-20 00:59:13', '2022-02-20 00:59:13'),
(187, 'donation-gift-list', 'admin', '2022-06-29 03:57:06', '2022-06-29 03:57:06'),
(188, 'donation-gift-edit', 'admin', '2022-06-29 03:57:06', '2022-06-29 03:57:06'),
(189, 'donation-gift-create', 'admin', '2022-06-29 03:57:06', '2022-06-29 03:57:06'),
(190, 'donation-gift-delete', 'admin', '2022-06-29 03:57:06', '2022-06-29 03:57:06'),
(191, 'mobile-slider-list', 'admin', '2022-08-13 22:09:09', '2022-08-13 22:09:09'),
(192, 'mobile-slider-edit', 'admin', '2022-08-13 22:09:09', '2022-08-13 22:09:09'),
(193, 'mobile-slider-create', 'admin', '2022-08-13 22:09:09', '2022-08-13 22:09:09'),
(194, 'mobile-slider-delete', 'admin', '2022-08-13 22:09:09', '2022-08-13 22:09:09');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `quotes`
--

CREATE TABLE `quotes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `custom_fields` longtext COLLATE utf8mb4_unicode_ci,
  `attachment` longtext COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `recurings`
--

CREATE TABLE `recurings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cause_log_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expire_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `recurings`
--

INSERT INTO `recurings` (`id`, `cause_log_id`, `status`, `created_at`, `updated_at`, `expire_date`) VALUES
(10, 204, NULL, '2022-07-07 05:20:09', '2022-07-07 05:20:09', '2022-07-12 11:20:09'),
(11, 230, NULL, '2022-07-14 08:09:51', '2022-07-14 08:09:51', '2022-08-14 14:09:51'),
(12, 231, NULL, '2022-07-14 08:10:25', '2022-07-14 08:10:25', '2022-08-14 14:10:25'),
(13, 232, NULL, '2022-07-14 08:11:50', '2022-07-14 08:11:50', '2022-08-14 14:11:50'),
(14, 233, NULL, '2022-07-14 08:11:51', '2022-07-14 08:11:51', '2022-08-14 14:11:51'),
(15, 235, NULL, '2022-07-14 13:02:24', '2022-07-14 13:02:24', '2022-08-14 19:02:24'),
(16, 237, NULL, '2022-07-14 14:00:52', '2022-07-14 14:00:52', '2022-08-14 20:00:52'),
(17, 238, NULL, '2022-07-14 14:01:07', '2022-07-14 14:01:07', '2022-08-14 20:01:07'),
(18, 239, NULL, '2022-07-14 17:54:38', '2022-07-14 17:54:38', '2022-08-14 23:54:38'),
(19, 254, NULL, '2022-07-17 12:03:40', '2022-07-17 12:03:40', '2022-08-17 18:03:40'),
(20, 255, NULL, '2022-07-17 12:05:32', '2022-07-17 12:05:32', '2022-08-17 18:05:32'),
(21, 257, NULL, '2022-07-18 12:25:37', '2022-07-18 12:25:37', '2022-08-18 18:25:37'),
(22, 258, NULL, '2022-07-18 12:41:25', '2022-07-18 12:41:25', '2022-08-18 18:41:25'),
(23, 264, NULL, '2022-07-18 13:36:45', '2022-07-18 13:36:45', '2022-08-18 19:36:45'),
(24, 271, NULL, '2022-07-19 04:18:40', '2022-07-19 04:18:40', '2022-08-19 10:18:40'),
(25, 272, NULL, '2022-07-19 04:28:06', '2022-07-19 04:28:06', '2022-08-19 10:28:06'),
(26, 282, NULL, '2022-07-22 21:53:18', '2022-07-22 21:53:18', '2022-08-23 03:53:18'),
(27, 327, NULL, '2022-07-24 23:02:39', '2022-07-24 23:02:39', '2022-08-25 05:02:39'),
(28, 344, NULL, '2022-07-26 04:47:24', '2022-07-26 04:47:24', '2022-08-26 10:47:24'),
(29, 403, NULL, '2022-08-04 05:10:31', '2022-08-04 05:10:31', '2022-09-04 11:10:31'),
(30, 404, NULL, '2022-08-04 05:14:54', '2022-08-04 05:14:54', '2022-09-04 11:14:54'),
(31, 448, NULL, '2022-08-14 01:48:58', '2022-08-14 01:48:58', '2022-08-19 11:14:54'),
(32, 454, NULL, '2022-08-14 02:31:49', '2022-08-14 02:31:49', '2022-09-14 08:31:49'),
(33, 460, NULL, '2022-08-16 02:04:18', '2022-08-16 02:04:18', '2022-09-16 08:04:18'),
(34, 482, NULL, '2022-09-05 01:37:46', '2022-09-05 01:37:46', '2022-10-05 07:37:46');

-- --------------------------------------------------------

--
-- Table structure for table `rewards`
--

CREATE TABLE `rewards` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `reward_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reward_goal_from` int(11) NOT NULL,
  `reward_goal_to` int(11) NOT NULL,
  `reward_point` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reward_amount` int(11) DEFAULT NULL,
  `reward_expire_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rewards`
--

INSERT INTO `rewards` (`id`, `reward_title`, `reward_goal_from`, `reward_goal_to`, `reward_point`, `reward_amount`, `reward_expire_date`, `status`, `created_at`, `updated_at`) VALUES
(12, 'Reward One', 10, 29, '10', 1, '26-02-2022', 'publish', '2022-02-16 01:04:45', '2022-02-17 04:26:51'),
(14, 'Reward Two', 30, 49, '20', 2, '27-02-2022', 'publish', '2022-02-16 01:16:38', '2022-02-17 04:27:38'),
(15, 'Reward Three', 50, 100, '50', 5, '2022-03-17', 'publish', '2022-02-16 01:17:12', '2022-02-16 01:17:12'),
(16, 'Reward Four', 51, 300, '100', 10, '2022-02-28', 'publish', '2022-02-20 05:17:00', '2022-02-20 05:17:00');

-- --------------------------------------------------------

--
-- Table structure for table `reward_redeems`
--

CREATE TABLE `reward_redeems` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `donation_id` bigint(20) DEFAULT NULL,
  `user_id` bigint(20) NOT NULL,
  `donation_log_id` bigint(20) DEFAULT NULL,
  `payment_gateway` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `withdraw_request_amount` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_account_details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_information` text COLLATE utf8mb4_unicode_ci,
  `additional_comment_by_user` longtext COLLATE utf8mb4_unicode_ci,
  `transaction_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `additional_comment_by_admin` longtext COLLATE utf8mb4_unicode_ci,
  `payment_receipt` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reward_redeems`
--

INSERT INTO `reward_redeems` (`id`, `donation_id`, `user_id`, `donation_log_id`, `payment_gateway`, `withdraw_request_amount`, `payment_account_details`, `payment_information`, `additional_comment_by_user`, `transaction_id`, `additional_comment_by_admin`, `payment_receipt`, `payment_status`, `created_at`, `updated_at`) VALUES
(1, NULL, 61, NULL, 'flutterwave', '1', 'test', NULL, 'test', NULL, NULL, NULL, 'pending', '2022-10-10 08:17:26', '2022-10-10 08:17:26');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(2, 'Admin', 'admin', '2021-07-24 18:04:30', '2021-07-24 21:01:22'),
(3, 'Super Admin', 'admin', '2021-07-24 18:04:30', '2021-07-24 18:04:30');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(9, 2),
(10, 2),
(11, 2),
(13, 2),
(14, 2),
(17, 2),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 2),
(31, 2),
(32, 2),
(33, 2),
(36, 2),
(37, 2),
(38, 2),
(40, 2),
(41, 2),
(42, 2),
(44, 2),
(45, 2),
(46, 2),
(47, 2),
(48, 2),
(49, 2),
(50, 2),
(51, 2),
(52, 2),
(53, 2),
(54, 2),
(55, 2),
(56, 2),
(57, 2),
(58, 2),
(59, 2),
(60, 2),
(61, 2),
(62, 2),
(63, 2),
(64, 2),
(65, 2),
(66, 2),
(67, 2),
(68, 2),
(69, 2),
(70, 2),
(71, 2),
(72, 2),
(73, 2),
(74, 2),
(76, 2),
(78, 2),
(80, 2),
(81, 2),
(83, 2),
(84, 2),
(86, 2),
(90, 2),
(95, 2),
(96, 2),
(99, 2),
(102, 2),
(103, 2),
(104, 2),
(105, 2),
(106, 2),
(107, 2),
(108, 2),
(110, 2),
(111, 2),
(112, 2),
(113, 2),
(114, 2),
(115, 2),
(116, 2),
(117, 2),
(118, 2),
(119, 2),
(120, 2),
(121, 2),
(122, 2),
(123, 2),
(124, 2),
(125, 2),
(126, 2),
(127, 2),
(128, 2),
(129, 2),
(130, 2),
(131, 2),
(132, 2),
(133, 2),
(134, 2),
(135, 2),
(136, 2),
(137, 2),
(138, 2),
(139, 2),
(140, 2),
(142, 2),
(143, 2),
(144, 2),
(145, 2),
(146, 2),
(147, 2),
(148, 2),
(149, 2),
(150, 2),
(151, 2),
(152, 2),
(153, 2),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(9, 3),
(10, 3),
(11, 3),
(12, 3),
(13, 3),
(14, 3),
(15, 3),
(16, 3),
(17, 3),
(18, 3),
(19, 3),
(20, 3),
(21, 3),
(22, 3),
(23, 3),
(24, 3),
(25, 3),
(26, 3),
(27, 3),
(28, 3),
(29, 3),
(30, 3),
(31, 3),
(32, 3),
(33, 3),
(34, 3),
(35, 3),
(36, 3),
(37, 3),
(38, 3),
(39, 3),
(40, 3),
(41, 3),
(42, 3),
(43, 3),
(44, 3),
(45, 3),
(46, 3),
(47, 3),
(48, 3),
(49, 3),
(50, 3),
(51, 3),
(52, 3),
(53, 3),
(54, 3),
(55, 3),
(56, 3),
(57, 3),
(58, 3),
(59, 3),
(60, 3),
(61, 3),
(62, 3),
(63, 3),
(64, 3),
(65, 3),
(66, 3),
(67, 3),
(68, 3),
(69, 3),
(70, 3),
(71, 3),
(72, 3),
(73, 3),
(74, 3),
(75, 3),
(76, 3),
(77, 3),
(78, 3),
(79, 3),
(80, 3),
(81, 3),
(82, 3),
(83, 3),
(84, 3),
(85, 3),
(86, 3),
(87, 3),
(88, 3),
(89, 3),
(90, 3),
(91, 3),
(92, 3),
(93, 3),
(94, 3),
(95, 3),
(96, 3),
(97, 3),
(98, 3),
(99, 3),
(100, 3),
(101, 3),
(102, 3),
(103, 3),
(104, 3),
(105, 3),
(106, 3),
(107, 3),
(108, 3),
(109, 3),
(110, 3),
(111, 3),
(112, 3),
(113, 3),
(114, 3),
(115, 3),
(116, 3),
(117, 3),
(118, 3),
(119, 3),
(120, 3),
(121, 3),
(122, 3),
(123, 3),
(124, 3),
(125, 3),
(126, 3),
(127, 3),
(128, 3),
(129, 3),
(130, 3),
(131, 3),
(132, 3),
(133, 3),
(134, 3),
(135, 3),
(136, 3),
(137, 3),
(138, 3),
(139, 3),
(140, 3),
(141, 3),
(142, 3),
(143, 3),
(144, 3),
(145, 3),
(146, 3),
(147, 3),
(148, 3),
(149, 3),
(150, 3),
(151, 3),
(152, 3),
(153, 3),
(154, 3),
(155, 3),
(158, 3),
(163, 3),
(164, 3),
(165, 3),
(166, 3),
(167, 3),
(168, 3),
(169, 3),
(170, 3),
(171, 3),
(172, 3),
(173, 3),
(174, 3),
(175, 3);

-- --------------------------------------------------------

--
-- Table structure for table `service_categories`
--

CREATE TABLE `service_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `icon_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `img_icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `service_categories`
--

INSERT INTO `service_categories` (`id`, `name`, `lang`, `status`, `created_at`, `updated_at`, `icon_type`, `icon`, `img_icon`) VALUES
(1, 'Web Design', 'en', 'publish', '2020-06-01 01:46:07', '2020-12-06 21:33:40', 'icon', 'flaticon-security', NULL),
(2, 'Web Developer', 'en', 'publish', '2020-06-01 01:46:14', '2020-12-06 21:33:29', 'icon', 'flaticon-electronics', NULL),
(3, 'UX/UI Design', 'en', 'publish', '2020-06-01 01:46:38', '2020-12-06 21:33:15', 'icon', 'flaticon-group', NULL),
(4, 'Mobile Apps', 'en', 'publish', '2020-06-01 01:46:44', '2020-12-06 21:33:02', 'icon', 'flaticon-security', NULL),
(5, 'تطبيقات الموبايل', 'ar', 'publish', '2020-06-01 01:47:32', '2020-06-01 01:47:32', NULL, NULL, NULL),
(6, 'Mobil uygulamalar', 'tur', 'publish', '2020-06-01 01:47:38', '2020-06-01 01:47:38', NULL, NULL, NULL),
(7, 'Mobil uygulamalar...', 'sp', 'publish', '2020-06-01 01:47:43', '2020-06-01 01:47:43', NULL, NULL, NULL),
(8, 'Diseño UX / UI', 'sp', 'publish', '2020-06-01 01:48:09', '2020-06-01 01:48:09', NULL, NULL, NULL),
(9, 'Diseño UX / UI', 'tur', 'publish', '2020-06-01 01:48:27', '2020-06-01 01:48:27', NULL, NULL, NULL),
(10, 'تصميم UX / UI', 'ar', 'publish', '2020-06-01 01:48:33', '2020-06-01 01:48:33', NULL, NULL, NULL),
(11, 'مطور ويب', 'ar', 'publish', '2020-06-01 01:48:47', '2020-06-01 01:48:47', NULL, NULL, NULL),
(12, 'Desarrollador web', 'sp', 'publish', '2020-06-01 01:48:55', '2020-06-01 01:48:55', NULL, NULL, NULL),
(13, 'Web Geliştiricisi', 'tur', 'publish', '2020-06-01 01:49:01', '2020-06-01 01:49:01', NULL, NULL, NULL),
(14, 'Web Tasarım', 'tur', 'publish', '2020-06-01 01:49:12', '2020-06-01 01:49:12', NULL, NULL, NULL),
(15, 'Diseño web', 'sp', 'publish', '2020-06-01 01:49:32', '2020-06-01 01:49:32', NULL, NULL, NULL),
(16, 'تم تصميم الموقع', 'ar', 'publish', '2020-06-01 01:49:38', '2020-06-01 01:49:38', NULL, NULL, NULL),
(17, 'asdfadsfsad', 'sp', 'publish', '2020-12-01 19:17:24', '2020-12-01 19:17:24', 'icon', 'fas fa-exclamation-triangle', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_icons`
--

CREATE TABLE `social_icons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `social_icons`
--

INSERT INTO `social_icons` (`id`, `icon`, `url`, `created_at`, `updated_at`) VALUES
(1, 'fab fa-twitter', 'https://twitter.com/xgenious1', '2020-06-19 23:55:51', '2020-06-20 00:09:12'),
(2, 'fab fa-facebook-f', 'https://www.facebook.com/xgenious', '2020-06-19 23:56:17', '2021-02-27 13:28:11'),
(3, 'fab fa-pinterest-p', '#', '2020-06-20 00:10:18', '2020-06-20 00:10:18'),
(4, 'fab fa-instagram', '#', '2020-06-20 00:10:35', '2020-06-20 00:10:35');

-- --------------------------------------------------------

--
-- Table structure for table `static_options`
--

CREATE TABLE `static_options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `static_options`
--

INSERT INTO `static_options` (`id`, `option_name`, `option_value`, `created_at`, `updated_at`) VALUES
(1757, 'nullable|string', NULL, '2021-02-21 10:53:41', '2021-02-21 10:53:52'),
(2035, 'testimonial_page_meta_description', NULL, '2021-06-17 08:41:43', '2021-09-20 22:54:06'),
(2036, 'image_gallery_page_name', 'Image Gallery', '2021-06-17 08:41:44', '2021-09-20 22:54:06'),
(2037, 'image_gallery_page_meta_tags', NULL, '2021-06-17 08:41:44', '2021-09-20 22:54:06'),
(2038, 'image_gallery_page_meta_description', NULL, '2021-06-17 08:41:44', '2021-09-20 22:54:06'),
(2039, 'donor_page_name', 'Donor List', '2021-06-17 08:41:44', '2021-09-20 22:54:06'),
(2040, 'donor_page_meta_tags', NULL, '2021-06-17 08:41:44', '2021-09-20 22:54:06'),
(2041, 'donor_page_meta_description', NULL, '2021-06-17 08:41:44', '2021-09-20 22:54:06'),
(2042, 'about_page_about_section_title', 'We are {color}charity{/color} foundation with 20 years experience', '2021-06-17 09:20:28', '2021-06-17 13:55:15'),
(2043, 'about_page_about_section_subtitle', 'About Us', '2021-06-17 09:20:28', '2021-06-17 13:55:15'),
(2044, 'about_page_about_section_description', '<p style=\"margin-bottom: 10px; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px; color: rgb(97, 97, 97); outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\"><span style=\"outline: none; -webkit-font-smoothing: antialiased; font-size: 60px; line-height: 60px;\">W</span>e are a non-profit organisation in USA that works towards supporting underprivileged children reach their full potential - physical, mental as well as</p><p style=\"margin-bottom: 10px; font-family: Roboto, sans-serif; font-size: 14px; line-height: 24px; color: rgb(97, 97, 97); outline: none; -webkit-font-smoothing: antialiased; hyphens: auto;\">We are a non-profit organisation in USA that works towards supporting underprivileged children reach their full potential - physical, mental as well as emotional. consectetur adipiscing elit. Aenean egestas magna at porttitor vehicula nullam augue ipsum dolor.</p>', '2021-06-17 09:20:28', '2021-06-17 13:55:15'),
(2045, 'about_page_our_mission_title', 'Our Mission', '2021-06-17 09:28:55', '2021-06-27 10:19:07'),
(2046, 'about_page_our_mission_description', '<span style=\"color: rgb(97, 97, 97); font-family: Roboto, sans-serif; background-color: rgb(243, 240, 234);\">We are a non-profit organisation in USA that works towards supporting underprivileged children reach their full potential - physical, mental as well as emotional.</span>', '2021-06-17 09:28:55', '2021-06-27 10:19:07'),
(2047, 'about_page_our_mission_list_section_title', 'a:4:{i:0;s:31:\"If you want to change the world\";i:1;s:31:\"If you want to change the world\";i:2;s:31:\"If you want to change the world\";i:3;s:31:\"If you want to change the world\";}', '2021-06-17 09:28:55', '2021-06-27 10:19:08'),
(2048, 'about_page_what_we_do_area_subtitle', 'What we do', '2021-06-17 09:38:40', '2021-06-27 10:20:54'),
(2049, 'about_page_what_we_do_area_title', 'We have selected the following {color}problems{/color}', '2021-06-17 09:38:40', '2021-06-27 10:20:54'),
(2050, 'about_page_what_we_do_section_title', 'a:3:{i:0;s:9:\"Education\";i:1;s:7:\"Helping\";i:2;s:9:\"Treatment\";}', '2021-06-17 09:38:40', '2021-06-27 10:20:55'),
(2051, 'about_page_what_we_do_section_description', 'a:3:{i:0;s:95:\"We are a non-profit organisation in USA that works towards supporting underprivileged children.\";i:1;s:95:\"We are a non-profit organisation in USA that works towards supporting underprivileged children.\";i:2;s:95:\"We are a non-profit organisation in USA that works towards supporting underprivileged children.\";}', '2021-06-17 09:38:40', '2021-06-27 10:20:55'),
(2052, 'about_page_testimonial_title', 'What {color}peoples{/color} say about us', '2021-06-17 09:41:16', '2021-06-27 10:21:07'),
(2053, 'about_page_testimonial_subtitle', 'Clients Testimonial', '2021-06-17 09:41:17', '2021-06-27 10:21:07'),
(2054, 'about_page_team_member_section_title', '{color}Volunteers{/color} who always support us', '2021-06-17 09:43:15', '2021-06-27 10:21:23'),
(2055, 'about_page_team_member_section_subtitle', 'Our Volunteer', '2021-06-17 09:43:15', '2021-06-27 10:21:23'),
(2056, 'contact_page_form_section_title', 'Keep In Touch', '2021-06-17 10:04:56', '2021-07-27 23:13:57'),
(2057, 'contact_page_form_submit_btn_text', 'Send Message', '2021-06-17 10:04:56', '2021-07-27 23:13:57'),
(2058, 'feedback_page_form_name_label', 'Name', '2021-06-17 10:42:10', '2021-06-17 10:42:19'),
(2059, 'feedback_page_form_email_label', 'Email', '2021-06-17 10:42:10', '2021-06-17 10:42:19'),
(2060, 'feedback_page_form_ratings_label', 'How Was Your Experience', '2021-06-17 10:42:10', '2021-06-17 10:42:19'),
(2061, 'feedback_page_form_description_label', 'Write Few Words', '2021-06-17 10:42:10', '2021-06-17 10:42:19'),
(2062, 'feedback_page_form_button_text', 'Submit Now', '2021-06-17 10:42:10', '2021-06-17 10:42:19'),
(2063, 'feedback_page_form_form_title', 'Leave Your Feedback', '2021-06-17 10:42:10', '2021-06-17 10:42:19'),
(2064, 'option_name', '191', '2021-06-21 10:25:22', '2021-06-21 10:25:22'),
(2065, 'event_page_bg_image', '191', '2021-06-21 10:27:02', '2021-06-27 10:23:16'),
(2066, 'home_page_variant', '06', '2021-06-26 13:48:43', '2021-09-22 06:52:02'),
(2067, 'site_logo', '128', '2021-06-26 14:46:58', '2022-10-16 06:25:08'),
(2068, 'site_favicon', '125', '2021-06-26 14:46:58', '2022-10-16 06:25:08'),
(2069, 'site_breadcrumb_bg', '129', '2021-06-26 14:46:58', '2022-10-16 06:25:08'),
(2070, 'site_white_logo', '126', '2021-06-26 14:46:58', '2022-10-16 06:25:08'),
(2071, 'site_title', 'Fundorex', '2021-06-26 14:50:21', '2021-07-26 09:34:59'),
(2072, 'site_tag_line', 'Crowdfunding Platform CMS', '2021-06-26 14:50:21', '2021-07-26 09:34:59'),
(2073, 'site_footer_copyright', '{copy}  {year}  All right reserved by  <a href=\"https://xgenious.com\">xgenious</a>', '2021-06-26 14:50:21', '2021-07-26 09:34:59'),
(2074, 'site_admin_panel_nav_sticky', 'on', '2021-06-26 14:50:21', '2021-07-05 18:09:13'),
(2075, 'site_frontend_nav_sticky', NULL, '2021-06-26 14:50:21', '2021-07-26 09:34:59'),
(2076, 'og_meta_image_for_site', '173', '2021-06-26 14:50:22', '2021-07-26 09:34:59'),
(2077, 'site_rtl_enabled', NULL, '2021-06-26 14:50:22', '2021-07-26 09:34:59'),
(2078, 'site_maintenance_mode', NULL, '2021-06-26 14:50:22', '2021-07-26 09:34:59'),
(2079, 'site_payment_gateway', 'on', '2021-06-26 14:50:22', '2021-07-26 09:34:59'),
(2080, 'site_sticky_navbar_enabled', 'on', '2021-06-26 14:50:22', '2021-07-26 09:34:59'),
(2081, 'disable_backend_preloader', 'on', '2021-06-26 14:50:22', '2021-07-26 09:34:59'),
(2082, 'disable_user_email_verify', NULL, '2021-06-26 14:50:22', '2021-07-26 09:34:59'),
(2083, 'site_force_ssl_redirection', NULL, '2021-06-26 14:50:22', '2021-07-26 09:34:59'),
(2084, 'site_color', '#fcb11a', '2021-06-26 14:52:21', '2021-06-26 14:53:32'),
(2085, 'site_secondary_color', '#00bdc0', '2021-06-26 14:52:21', '2021-06-26 14:53:32'),
(2086, 'site_main_color_two', '#1a191f', '2021-06-26 14:52:21', '2021-06-26 14:53:32'),
(2087, 'site_heading_color', '#2b2a35', '2021-06-26 14:52:21', '2021-06-26 14:53:32'),
(2088, 'site_paragraph_color', '#616161', '2021-06-26 14:52:21', '2021-06-26 14:53:32'),
(2089, 'portfolio_home_color', '#ff4756', '2021-06-26 14:52:21', '2021-06-26 14:53:32'),
(2090, 'logistics_home_color', '#ff4039', '2021-06-26 14:52:22', '2021-06-26 14:53:32'),
(2091, 'body_font_family', 'Roboto', '2021-06-26 14:55:07', '2021-07-26 11:20:30'),
(2092, 'heading_font_family', 'Open Sans', '2021-06-26 14:55:07', '2021-07-26 11:20:30'),
(2093, 'heading_font', 'on', '2021-06-26 14:55:07', '2021-07-26 11:20:30'),
(2094, 'body_font_variant', 'a:3:{i:0;s:5:\"0,400\";i:1;s:5:\"0,500\";i:2;s:5:\"0,700\";}', '2021-06-26 14:55:07', '2021-07-26 11:20:30'),
(2095, 'heading_font_variant', 'a:4:{i:0;s:5:\"0,300\";i:1;s:5:\"0,400\";i:2;s:5:\"0,600\";i:3;s:5:\"0,700\";}', '2021-06-26 14:55:07', '2021-07-26 11:20:30'),
(2096, 'site_meta_tags', 'hello,meta,tag', '2021-06-26 14:58:21', '2021-06-26 14:58:21'),
(2097, 'site_meta_description', 'this is multilingual example meta tag for english', '2021-06-26 14:58:21', '2021-06-26 14:58:21'),
(2098, 'site_disqus_key', 'fundorex', '2021-06-26 14:59:00', '2021-07-23 21:36:40'),
(2099, 'site_google_analytics', 'UA-173946136-1', '2021-06-26 14:59:00', '2021-07-23 21:36:40'),
(2100, 'tawk_api_key', '5e0b3e167e39ea1242a27b69', '2021-06-26 14:59:00', '2021-07-23 21:36:40'),
(2101, 'site_third_party_tracking_code', NULL, '2021-06-26 14:59:00', '2021-07-23 21:36:40'),
(2102, 'site_google_captcha_v3_site_key', '6LdvUeQUAAAAAHKM02AWBjtKAAL0-AqUk_qkqa0O', '2021-06-26 14:59:00', '2021-07-23 21:36:40'),
(2103, 'site_google_captcha_v3_secret_key', '6LdvUeQUAAAAABaCkkQbMY-z2XaqYsLSWwYgB6Ru', '2021-06-26 14:59:00', '2021-07-23 21:36:40'),
(2104, 'site_global_email', 'info@sohan.xgenious.com', '2021-06-26 14:59:51', '2022-02-06 23:39:15'),
(2105, 'site_global_email_template', '<p>Hello @username,</p><p><br></p><p>@message</p><p><br></p><p>Regards</p><p>@company</p>', '2021-06-26 14:59:51', '2022-02-06 23:39:15'),
(2106, 'service_query_success_message', 'Thanks for your message. we will contact you soon.', '2021-06-26 15:04:03', '2021-06-26 15:04:03'),
(2107, 'case_study_query_success_message', 'Thanks for your message. we will contact you soon.', '2021-06-26 15:04:03', '2021-06-26 15:04:03'),
(2108, 'quote_mail_success_message', 'Thanks for your contact. we will contact you soon.', '2021-06-26 15:04:03', '2021-06-26 15:04:03'),
(2109, 'contact_mail_success_message', 'Thanks for your contact!!', '2021-06-26 15:04:03', '2021-06-26 15:04:03'),
(2110, 'get_in_touch_mail_success_message', 'Thanks for your contact!!', '2021-06-26 15:04:03', '2021-06-26 15:04:03'),
(2111, 'apply_job_success_message', 'Your Application Is Submitted Successfully!!', '2021-06-26 15:04:03', '2021-06-26 15:04:03'),
(2112, 'order_mail_success_message', 'Thanks for your order. we will contact you soon.', '2021-06-26 15:04:03', '2021-06-26 15:04:03'),
(2113, 'event_attendance_mail_success_message', 'Thanks for your Booking. we will get back to you very soon.', '2021-06-26 15:04:04', '2021-06-26 15:04:04'),
(2114, 'feedback_form_mail_success_message', 'Thanks for your feedback!!', '2021-06-26 15:04:04', '2021-06-26 15:04:04'),
(2115, 'site_smtp_mail_mailer', 'smtp', '2021-06-26 15:05:21', '2022-07-02 04:53:15'),
(2116, 'site_smtp_mail_host', 'server.devrobin.com', '2021-06-26 15:05:21', '2022-07-02 04:53:15'),
(2117, 'site_smtp_mail_port', '465', '2021-06-26 15:05:21', '2022-07-02 04:53:15'),
(2118, 'site_smtp_mail_username', 'info@sohan.xgenious.com', '2021-06-26 15:05:21', '2022-07-02 04:53:15'),
(2119, 'site_smtp_mail_password', '_*+1Wrxu,38F', '2021-06-26 15:05:22', '2022-07-02 04:53:15'),
(2120, 'site_smtp_mail_encryption', 'ssl', '2021-06-26 15:05:22', '2022-07-02 04:53:15'),
(2121, 'site_gdpr_cookie_title', 'Cookies & Privacy', '2021-06-26 15:25:54', '2021-07-11 17:33:38'),
(2122, 'site_gdpr_cookie_message', 'Is education residence conveying so so. Suppose shyness say ten behaved morning had. Any unsatiable assistance compliment occasional too reasonably advantages.', '2021-06-26 15:25:54', '2021-07-11 17:33:38'),
(2123, 'site_gdpr_cookie_more_info_label', 'More information', '2021-06-26 15:25:54', '2021-07-11 17:33:38'),
(2124, 'site_gdpr_cookie_more_info_link', '{url}/p/privacy-policy/2', '2021-06-26 15:25:54', '2021-07-11 17:33:38'),
(2125, 'site_gdpr_cookie_accept_button_label', 'Accept Cookie', '2021-06-26 15:25:55', '2021-07-11 17:33:38'),
(2126, 'site_gdpr_cookie_decline_button_label', 'Decline Cookie', '2021-06-26 15:25:55', '2021-07-11 17:33:38'),
(2127, 'site_gdpr_cookie_delay', '5000', '2021-06-26 15:25:55', '2021-07-11 17:33:38'),
(2128, 'site_gdpr_cookie_enabled', 'on', '2021-06-26 15:25:55', '2021-07-11 17:33:38'),
(2129, 'site_gdpr_cookie_expire', '30', '2021-06-26 15:25:55', '2021-07-11 17:33:38'),
(2130, 'preloader_default', '6', '2021-06-26 15:26:19', '2021-07-06 08:33:58'),
(2131, 'preloader_status', 'on', '2021-06-26 15:26:19', '2021-07-26 09:34:59'),
(2132, 'preloader_custom', NULL, '2021-06-26 15:26:19', '2021-07-06 08:33:58'),
(2133, 'preloader_custom_image', NULL, '2021-06-26 15:26:19', '2021-07-06 08:33:58'),
(2134, 'preloader_cacncel_button', 'on', '2021-06-26 15:26:19', '2021-07-06 08:33:58'),
(2135, 'site_rss_feed_description', 'The description of the feed.', '2021-06-26 15:29:23', '2021-06-26 15:29:23'),
(2136, 'site_rss_feed_title', 'My feeds', '2021-06-26 15:29:23', '2021-06-26 15:29:23'),
(2137, 'site_rss_feed_url', '/feeds', '2021-06-26 15:29:23', '2021-06-26 15:29:23'),
(2138, 'job_module_status', 'on', '2021-06-26 15:30:11', '2021-07-06 08:56:33'),
(2139, 'events_module_status', 'on', '2021-06-26 15:30:11', '2021-07-06 08:56:33'),
(2140, 'donations_module_status', 'on', '2021-06-26 15:30:11', '2021-07-06 08:56:33'),
(2141, 'item_purchase_key', 'ddd', '2021-06-26 15:30:27', '2021-06-26 15:30:27'),
(2142, 'item_license_status', 'verified', '2021-06-26 15:30:27', '2021-06-26 15:30:27'),
(2143, 'item_license_msg', '', '2021-06-26 15:30:27', '2021-06-26 15:30:27'),
(2144, 'blog_page_read_more_btn_text', 'Read More', '2021-06-26 15:32:38', '2021-07-07 11:48:27'),
(2145, 'blog_page_item', '3', '2021-06-26 15:32:39', '2021-07-07 11:48:27'),
(2146, 'blog_page_recent_post_widget_items', '4', '2021-06-26 15:32:39', '2021-07-07 11:48:27'),
(2147, 'blog_single_page_related_post_title', 'Related Post', '2021-06-26 15:32:58', '2021-07-07 11:50:17'),
(2148, 'blog_single_page_share_title', 'Share', '2021-06-26 15:32:59', '2021-07-07 11:50:17'),
(2149, 'blog_single_page_category_title', 'Blog Categories', '2021-06-26 15:32:59', '2021-07-07 11:50:17'),
(2150, 'blog_single_page_recent_post_title', 'Related Posts', '2021-06-26 15:32:59', '2021-07-07 11:50:17'),
(2151, 'blog_single_page_tags_title', 'Tags', '2021-06-26 15:32:59', '2021-07-07 11:50:17'),
(2152, 'blog_single_page_recent_post_item', '3', '2021-06-26 15:32:59', '2021-07-07 11:50:17'),
(2153, 'site_image_gallery_post_items', '9', '2021-06-26 15:33:30', '2021-06-26 15:33:30'),
(2154, 'site_image_gallery_order', 'ASC', '2021-06-26 15:33:31', '2021-06-26 15:33:31'),
(2155, 'site_image_gallery_order_by', 'id', '2021-06-26 15:33:31', '2021-06-26 15:33:31'),
(2156, 'site_jobs_category_title', 'Job Category', '2021-06-26 15:35:37', '2021-07-07 11:55:14'),
(2157, 'site_job_post_items', '4', '2021-06-26 15:35:37', '2021-07-22 11:07:31'),
(2158, 'job_single_page_job_context_label', 'Job Context', '2021-06-26 15:36:18', '2021-07-22 11:07:31'),
(2159, 'job_single_page_job_responsibility_label', 'Job Responsibility', '2021-06-26 15:36:18', '2021-07-22 11:07:31'),
(2160, 'job_single_page_education_requirement_label', 'Educational Requirement', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2161, 'job_single_page_experience_requirement_label', 'Experience Requirement', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2162, 'job_single_page_additional_requirement_label', 'Additional Requirement', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2163, 'job_single_page_others_benefits_label', 'Others Benefits', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2164, 'job_single_page_apply_button_text', 'Apply To The Job', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2165, 'job_single_page_job_info_text', 'Jobs Information', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2166, 'job_single_page_company_name_text', 'Company Name', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2167, 'job_single_page_job_category_text', 'Job Category', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2168, 'job_single_page_job_position_text', 'Job Position', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2169, 'job_single_page_job_type_text', 'Job Type', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2170, 'job_single_page_salary_text', 'Salary', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2171, 'job_single_page_job_location_text', 'Job Location', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2172, 'job_single_page_job_deadline_text', 'Deadline', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2173, 'job_single_page_job_application_fee_text', 'Application Free', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2174, 'job_single_page_apply_form', 'on', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2175, 'job_single_page_applicant_mail', 'dvrobin4@gmail.com', '2021-06-26 15:36:19', '2021-07-22 11:07:31'),
(2176, 'job_success_page_title', 'Thank you', '2021-06-26 15:36:39', '2021-07-22 11:07:31'),
(2177, 'job_success_page_description', 'thanks, for choosing us.', '2021-06-26 15:36:39', '2021-07-22 11:07:31'),
(2178, 'job_cancel_page_title', 'Sorry!', '2021-06-26 15:37:10', '2021-07-22 11:07:31'),
(2179, 'job_cancel_page_description', 'your payment is not success', '2021-06-26 15:37:10', '2021-07-22 11:07:31'),
(2180, 'site_events_category_title', NULL, '2021-06-26 15:39:06', '2021-07-12 09:23:23'),
(2181, 'site_events_post_items', NULL, '2021-06-26 15:39:06', '2022-10-16 06:29:09'),
(2182, 'event_single_event_info_title', 'Event Info', '2021-06-26 15:39:39', '2021-06-26 15:39:39'),
(2183, 'event_single_date_title', 'Date', '2021-06-26 15:39:39', '2021-06-26 15:39:39'),
(2184, 'event_single_time_title', 'Time', '2021-06-26 15:39:39', '2021-06-26 15:39:39'),
(2185, 'event_single_cost_title', 'Cost', '2021-06-26 15:39:39', '2021-06-26 15:39:39'),
(2186, 'event_single_category_title', 'Category', '2021-06-26 15:39:39', '2021-06-26 15:39:40'),
(2187, 'event_single_organizer_title', 'Event Organizer', '2021-06-26 15:39:39', '2021-06-26 15:39:39'),
(2188, 'event_single_organizer_name_title', 'Name', '2021-06-26 15:39:39', '2021-06-26 15:39:39'),
(2189, 'event_single_organizer_email_title', 'gg@fgf', '2021-06-26 15:39:39', '2021-06-26 15:39:39'),
(2190, 'event_single_organizer_phone_title', '01875484888', '2021-06-26 15:39:39', '2021-06-26 15:39:39'),
(2191, 'event_single_organizer_website_title', 'Website', '2021-06-26 15:39:39', '2021-06-26 15:39:39'),
(2192, 'event_single_venue_title', 'Event Venue', '2021-06-26 15:39:39', '2021-06-26 15:39:39'),
(2193, 'event_single_venue_name_title', 'Name', '2021-06-26 15:39:39', '2021-06-26 15:39:39'),
(2194, 'event_single_venue_location_title', 'Locaiton', '2021-06-26 15:39:39', '2021-06-26 15:39:39'),
(2195, 'event_single_venue_phone_title', '+18274737136', '2021-06-26 15:39:39', '2021-06-26 15:39:39'),
(2196, 'event_single_available_ticket_text', 'Available Tickets', '2021-06-26 15:39:40', '2021-06-26 15:39:40'),
(2197, 'event_single_reserve_button_title', 'Reserve Your Seat', '2021-06-26 15:39:40', '2021-06-26 15:39:40'),
(2198, 'event_single_event_expire_text', 'Event Expired', '2021-06-26 15:39:41', '2021-06-26 15:39:41'),
(2199, 'donor_page_post_items', '6', '2021-06-26 15:41:18', '2022-10-16 06:29:09'),
(2200, 'donation_button_text', 'Donate Now', '2021-06-26 15:41:18', '2022-10-16 06:29:09'),
(2201, 'donation_goal_text', 'Goal', '2021-06-26 15:41:18', '2022-10-16 06:29:09'),
(2202, 'donation_raised_text', 'Raised', '2021-06-26 15:41:18', '2022-10-16 06:29:09'),
(2203, 'donation_notify_mail', 'info@sohan.xgenious.com', '2021-06-26 15:43:10', '2022-10-16 06:29:09'),
(2204, 'donation_custom_amount', NULL, '2021-06-26 15:43:10', '2022-10-16 06:29:09'),
(2205, 'donation_default_amount', '20', '2021-06-26 15:43:10', '2022-10-16 06:29:09'),
(2206, 'donation_single_form_title', 'Donate for help', '2021-06-26 15:43:10', '2021-07-16 21:35:44'),
(2207, 'donation_single_form_button_text', 'Donate Now', '2021-06-26 15:43:10', '2022-10-16 06:29:09'),
(2208, 'donation_single_recent_donation_text', 'people have made a donation', '2021-06-26 15:43:10', '2022-10-16 06:29:09'),
(2209, 'donation_success_page_title', 'Thank You', '2021-06-26 15:43:26', '2022-10-16 06:29:09'),
(2210, 'donation_success_page_subtitle', NULL, '2021-06-26 15:43:26', '2021-06-26 15:43:26'),
(2211, 'donation_success_page_description', 'Your payment has been completed', '2021-06-26 15:43:26', '2022-10-16 06:29:09'),
(2212, 'donation_cancel_page_title', 'Payment failed or canceled', '2021-06-26 15:43:35', '2022-10-16 06:29:09'),
(2213, 'donation_cancel_page_subtitle', NULL, '2021-06-26 15:43:35', '2021-07-03 09:40:01'),
(2214, 'donation_cancel_page_description', 'Your payment has been canceled or failed, please try again', '2021-06-26 15:43:35', '2022-10-16 06:29:09'),
(2215, 'event_success_page_title', 'Thank you', '2021-06-26 15:44:14', '2021-07-12 19:25:52'),
(2216, 'event_success_page_description', NULL, '2021-06-26 15:44:14', '2021-07-12 19:25:52'),
(2217, 'event_cancel_page_title', 'Sorry !!', '2021-06-26 15:44:21', '2021-07-12 19:25:52'),
(2218, 'event_cancel_page_subtitle', 'Payment Cancel For Event: {evname}', '2021-06-26 15:44:21', '2021-07-12 19:25:52'),
(2219, 'event_cancel_page_description', NULL, '2021-06-26 15:44:21', '2021-07-12 19:25:52'),
(2220, 'home_page_01_topbar_info_list_text', 'a:2:{i:0;s:15:\"+920 330 330 33\";i:1;s:23:\"test@sohan.xgenious.com\";}', '2021-06-26 15:45:55', '2021-06-26 15:46:10'),
(2221, 'home_page_01_topbar_info_list_icon_icon', 'a:2:{i:0;s:19:\"flaticon-phone-call\";i:1;s:15:\"fas fa-envelope\";}', '2021-06-26 15:45:55', '2021-06-26 15:46:10'),
(2222, 'home_page_navbar_button_subtitle', 'Make your', '2021-06-26 15:48:01', '2022-02-27 04:17:24'),
(2223, 'home_page_navbar_button_title', 'Campaign', '2021-06-26 15:48:01', '2022-02-27 04:17:24'),
(2224, 'home_page_navbar_button_status', 'on', '2021-06-26 15:48:01', '2022-02-27 04:17:24'),
(2225, 'home_page_navbar_button_url', NULL, '2021-06-26 15:48:01', '2022-02-27 04:17:24'),
(2226, 'home_page_navbar_button_icon', 'far fa-heart', '2021-06-26 15:48:01', '2022-02-27 04:17:24'),
(2227, 'home_page_01_about_us_title', 'Your {color}support{/color} can help us a lot', '2021-06-26 15:54:02', '2021-06-26 17:07:37'),
(2228, 'home_page_01_about_us_subtitle', 'About Us', '2021-06-26 15:54:02', '2021-06-26 17:07:37'),
(2229, 'home_page_01_about_us_donation_text', 'Donated', '2021-06-26 15:54:02', '2021-06-26 17:01:58'),
(2230, 'home_page_01_about_us_description', '<div>We are a non-profit organisation in USA that works towards supporting underprivileged children reach their full potential - physical, mental as well as emotional.</div><div><br></div>', '2021-06-26 15:54:02', '2021-06-26 17:07:37'),
(2231, 'home_page_01_about_us_lists', 'If you want to change the world\r\nKeep the same cleaner for every visit\r\nOne-off, weekly or fortnightly visits', '2021-06-26 15:54:03', '2021-06-26 17:07:37'),
(2232, 'home_page_01_about_us_total_donation', '8860', '2021-06-26 15:54:03', '2021-06-26 17:07:37'),
(2233, 'home_page_03_about_us_right_image', '180', '2021-06-26 15:54:03', '2021-06-26 15:54:03'),
(2234, 'homepage_01_feature_section_icon', 'a:3:{i:0;s:12:\"flaticon-man\";i:1;s:16:\"flaticon-charity\";i:2;s:17:\"flaticon-ribbon-2\";}', '2021-06-26 15:55:12', '2021-06-26 15:55:34'),
(2235, 'homepage_01_feature_section_url', 'a:3:{i:0;s:1:\"#\";i:1;s:1:\"#\";i:2;s:1:\"#\";}', '2021-06-26 15:55:12', '2021-06-26 15:55:34'),
(2236, 'homepage_01_feature_section_title', 'a:3:{i:0;s:14:\"Be a volunteer\";i:1;s:14:\"Start Donating\";i:2;s:18:\"Join our community\";}', '2021-06-26 15:55:12', '2021-06-26 15:55:34'),
(2237, 'homepage_01_feature_section_description', 'a:3:{i:0;s:95:\"We are a non-profit organisation in USA that works towards supporting underprivileged children.\";i:1;s:95:\"We are a non-profit organisation in USA that works towards supporting underprivileged children.\";i:2;s:95:\"We are a non-profit organisation in USA that works towards supporting underprivileged children.\";}', '2021-06-26 15:55:12', '2021-06-26 15:55:35'),
(2238, 'home_page_01_donation_category_subtitle', 'Causes Category', '2021-06-26 15:55:44', '2021-06-26 15:55:44'),
(2239, 'home_page_01_donation_category_title', 'Causes By {color}Category{/color}', '2021-06-26 15:55:44', '2021-06-26 15:55:44'),
(2240, 'home_page_01_featured_cause_area_subtitle', 'Picked by our team', '2021-06-26 15:55:51', '2021-06-26 15:55:51'),
(2241, 'home_page_01_featured_cause_area_title', 'Featured {color}Causes{/color}', '2021-06-26 15:55:51', '2021-06-26 15:55:51'),
(2242, 'home_page_01_featured_cause_area_button_text', 'Donate Now', '2021-06-26 15:55:51', '2021-06-26 15:55:51'),
(2243, 'home_page_01_cta_area_title', 'Works towards supporting underprivileged people', '2021-06-26 15:57:06', '2021-06-26 17:09:27'),
(2244, 'home_page_01_cta_area_video_url', 'https://www.youtube.com/watch?v=bdBG5VO01e0', '2021-06-26 15:57:06', '2021-06-26 17:09:27'),
(2245, 'home_page_01_cta_area_background_image', '149', '2021-06-26 15:57:06', '2021-06-26 17:09:27'),
(2246, 'home_page_01_latest_cause_subtitle', 'Donation Cause', '2021-06-26 15:57:24', '2021-06-29 12:22:47'),
(2247, 'home_page_01_latest_cause_readmore', 'Read More', '2021-06-26 15:57:24', '2021-06-29 12:22:47'),
(2248, 'home_page_01_latest_cause_button_text', 'All Donation Cause', '2021-06-26 15:57:24', '2021-06-29 12:22:47'),
(2249, 'home_page_01_latest_cause_title', 'Recently added donation {color}causes{/color}', '2021-06-26 15:57:24', '2021-06-29 12:22:48'),
(2250, 'home_page_01_latest_cause_items', '3', '2021-06-26 15:57:24', '2021-06-29 12:22:48'),
(2251, 'home_page_01_team_member_section_title', '{color}Volunteers{/color} who always support us', '2021-06-26 15:57:45', '2021-06-26 15:57:45'),
(2252, 'home_page_01_team_member_section_subtitle', 'Our Volunteer', '2021-06-26 15:57:45', '2021-06-26 15:57:45'),
(2253, 'home_page_01_team_member_items', '6', '2021-06-26 15:57:45', '2021-06-26 15:57:45'),
(2254, 'home_page_02_what_we_do_area_subtitle', 'What we do', '2021-06-26 15:59:39', '2021-06-26 17:04:56'),
(2255, 'home_page_02_what_we_do_area_title', 'We have selected the following {color}problems{/color}', '2021-06-26 15:59:39', '2021-06-26 17:04:56'),
(2256, 'homepage_02_what_we_do_section_icon', 'a:4:{i:0;s:20:\"flaticon-transfusion\";i:1;s:17:\"flaticon-donate-1\";i:2;s:17:\"flaticon-location\";i:3;s:16:\"flaticon-balloon\";}', '2021-06-26 15:59:40', '2021-06-26 17:04:56'),
(2257, 'homepage_02_what_we_do_section_url', 'a:4:{i:0;s:1:\"#\";i:1;s:1:\"#\";i:2;s:1:\"#\";i:3;s:1:\"#\";}', '2021-06-26 15:59:40', '2021-06-26 17:04:56'),
(2258, 'homepage_02_what_we_do_section_title', 'a:4:{i:0;s:9:\"Education\";i:1;s:6:\"Health\";i:2;s:11:\"Environment\";i:3;s:16:\"Food & Nutrition\";}', '2021-06-26 15:59:40', '2021-06-26 17:04:56'),
(2259, 'homepage_02_what_we_do_section_description', 'a:4:{i:0;s:95:\"We are a non-profit organisation in USA that works towards supporting underprivileged children.\";i:1;s:95:\"We are a non-profit organisation in USA that works towards supporting underprivileged children.\";i:2;s:95:\"We are a non-profit organisation in USA that works towards supporting underprivileged children.\";i:3;s:95:\"We are a non-profit organisation in USA that works towards supporting underprivileged children.\";}', '2021-06-26 15:59:40', '2021-06-26 17:04:56'),
(2260, 'home_page_02_what_we_do_left_image', '176', '2021-06-26 15:59:40', '2021-06-26 17:04:56'),
(2261, 'home_page_02_coutnerup_background_image', '131', '2021-06-26 16:00:05', '2021-06-26 16:00:05'),
(2262, 'home_page_01_testimonial_section_title', 'What {color}peoples{/color} say about us', '2021-06-26 16:00:24', '2021-06-26 16:00:24'),
(2263, 'home_page_01_testimonial_section_subtitle', 'Testimonial', '2021-06-26 16:00:24', '2021-06-26 16:00:24'),
(2264, 'home_01_testimonial_bg', '131', '2021-06-26 16:00:24', '2021-06-26 16:00:24'),
(2265, 'home_page_01_latest_event_subtitle', 'Latest Events', '2021-06-26 16:00:47', '2021-06-26 16:00:47'),
(2266, 'home_page_01_latest_event_button_text', 'Book Seat', '2021-06-26 16:00:47', '2021-06-26 16:00:47'),
(2267, 'home_page_01_latest_event_title', 'Attend {color}events{/color} those going around you', '2021-06-26 16:00:47', '2021-06-26 16:00:47'),
(2268, 'home_page_01_latest_event_items', '6', '2021-06-26 16:00:47', '2021-06-26 16:00:47'),
(2269, 'home_page_01_latest_news_title', 'Check latest {color}blog & news{/color}', '2021-06-26 16:01:00', '2021-06-26 16:01:00'),
(2270, 'home_page_01_latest_news_subtitle', 'Latest Blog', '2021-06-26 16:01:00', '2021-06-26 16:01:00'),
(2271, 'home_page_01_latest_news_items', '6', '2021-06-26 16:01:00', '2021-06-26 16:01:00'),
(2272, 'home_page_call_to_action_section_status', 'on', '2021-06-26 16:01:21', '2021-06-26 16:03:00'),
(2273, 'home_page_about_us_section_status', 'on', '2021-06-26 16:01:21', '2021-09-15 22:26:19'),
(2274, 'home_page_testimonial_section_status', 'on', '2021-06-26 16:01:21', '2021-09-15 22:26:19'),
(2275, 'home_page_latest_news_section_status', 'on', '2021-06-26 16:01:21', '2021-06-26 16:03:00'),
(2276, 'home_page_support_bar_section_status', 'on', '2021-06-26 16:01:21', '2021-06-26 16:03:00'),
(2277, 'home_page_team_member_section_status', 'on', '2021-06-26 16:01:21', '2021-09-15 22:26:19'),
(2278, 'home_page_contact_section_status', 'on', '2021-06-26 16:01:21', '2021-06-26 16:03:00'),
(2279, 'home_page_video_section_status', 'on', '2021-06-26 16:01:21', '2021-09-15 22:26:19'),
(2280, 'home_page_key_feature_section_status', 'on', '2021-06-26 16:31:21', '2021-09-15 22:26:18'),
(2281, 'home_page_what_we_do_section_status', 'on', '2021-06-26 16:31:21', '2021-09-15 22:26:18'),
(2282, 'home_page_cause_category_section_status', 'on', '2021-06-26 16:31:21', '2021-09-15 22:26:19'),
(2283, 'home_page_feature_cause_section_status', 'on', '2021-06-26 16:31:21', '2021-09-15 22:26:19'),
(2284, 'home_page_recent_cause_section_status', 'on', '2021-06-26 16:31:21', '2021-09-15 22:26:19'),
(2285, 'home_page_counterup_section_status', 'on', '2021-06-26 16:31:21', '2021-09-15 22:26:19'),
(2286, 'home_page_latest_events_section_status', 'on', '2021-06-26 16:31:21', '2021-09-15 22:26:19'),
(2287, 'home_page_latest_blog_section_status', 'on', '2021-06-26 16:31:22', '2021-09-15 22:26:19'),
(2288, 'home_page_header_slider_section_status', 'on', '2021-06-26 16:34:13', '2021-09-15 22:26:18'),
(2289, 'home_page_02_about_us_donation_text', 'Active Volunteers', '2021-06-26 17:01:58', '2021-06-26 17:01:58'),
(2290, 'home_page_02_about_us_short_description', '<span style=\"color: rgb(97, 97, 97); font-family: Roboto, sans-serif;\">We are a non-profit organisation in USA that works towards supporting underprivileged children reach their full potential - physical, mental as well as emotional.</span>', '2021-06-26 17:01:58', '2021-06-26 17:01:58'),
(2291, 'home_page_02_about_us_left_image', '174', '2021-06-26 17:01:59', '2021-06-26 17:01:59'),
(2292, 'home_page_02_about_us_right_bottom_image', '175', '2021-06-26 17:01:59', '2021-06-26 17:01:59'),
(2293, 'home_page_02_about_us_icon', 'flaticon-woman', '2021-06-26 17:01:59', '2021-06-26 17:01:59'),
(2294, 'home_page_01_about_us_right_image', '179', '2021-06-26 17:07:37', '2021-06-26 17:07:37'),
(2295, 'home_page_01_cta_area_signature_image', '148', '2021-06-26 17:09:27', '2021-06-26 17:09:27'),
(2296, 'about_page_slug', 'about', '2021-06-27 09:33:47', '2021-09-20 22:54:03'),
(2297, 'team_page_slug', 'team', '2021-06-27 09:33:47', '2021-09-20 22:54:03'),
(2298, 'faq_page_slug', 'faq', '2021-06-27 09:33:47', '2021-09-20 22:54:03'),
(2299, 'blog_page_slug', 'blog', '2021-06-27 09:33:47', '2021-09-20 22:54:03'),
(2300, 'contact_page_slug', 'contact', '2021-06-27 09:33:47', '2021-09-20 22:54:03'),
(2301, 'career_with_us_page_slug', 'career', '2021-06-27 09:33:47', '2021-09-20 22:54:03'),
(2302, 'events_page_slug', 'events', '2021-06-27 09:33:47', '2021-09-20 22:54:03'),
(2303, 'donation_page_slug', 'donation', '2021-06-27 09:33:47', '2021-09-20 22:54:03'),
(2304, 'testimonial_page_slug', 'testimonial', '2021-06-27 09:33:47', '2021-09-20 22:54:03'),
(2305, 'image_gallery_page_slug', 'image-gallery', '2021-06-27 09:33:47', '2021-09-20 22:54:03'),
(2306, 'donor_page_slug', 'donor-list', '2021-06-27 09:33:47', '2021-09-20 22:54:03'),
(2307, 'about_page_name', 'About', '2021-06-27 09:33:47', '2021-09-20 22:54:03'),
(2308, 'about_page_meta_tags', NULL, '2021-06-27 09:33:47', '2021-09-20 22:54:03'),
(2309, 'about_page_meta_description', NULL, '2021-06-27 09:33:47', '2021-09-20 22:54:03'),
(2310, 'team_page_name', 'Team Member', '2021-06-27 09:33:48', '2021-09-20 22:54:03'),
(2311, 'team_page_meta_tags', NULL, '2021-06-27 09:33:48', '2021-09-20 22:54:03'),
(2312, 'team_page_meta_description', NULL, '2021-06-27 09:33:48', '2021-09-20 22:54:04'),
(2313, 'faq_page_name', 'FAQ', '2021-06-27 09:33:48', '2021-09-20 22:54:04'),
(2314, 'faq_page_meta_tags', NULL, '2021-06-27 09:33:48', '2021-09-20 22:54:04'),
(2315, 'faq_page_meta_description', NULL, '2021-06-27 09:33:48', '2021-09-20 22:54:05'),
(2316, 'blog_page_name', 'Blog', '2021-06-27 09:33:48', '2021-09-20 22:54:05'),
(2317, 'blog_page_meta_tags', NULL, '2021-06-27 09:33:49', '2021-09-20 22:54:05'),
(2318, 'blog_page_meta_description', NULL, '2021-06-27 09:33:49', '2021-09-20 22:54:05'),
(2319, 'contact_page_name', 'Contact', '2021-06-27 09:33:49', '2021-09-20 22:54:05'),
(2320, 'contact_page_meta_tags', NULL, '2021-06-27 09:33:49', '2021-09-20 22:54:05'),
(2321, 'contact_page_meta_description', NULL, '2021-06-27 09:33:49', '2021-09-20 22:54:05'),
(2322, 'career_with_us_page_name', 'Career With Us', '2021-06-27 09:33:49', '2021-09-20 22:54:05'),
(2323, 'career_with_us_page_meta_tags', NULL, '2021-06-27 09:33:49', '2021-09-20 22:54:05'),
(2324, 'career_with_us_page_meta_description', NULL, '2021-06-27 09:33:49', '2021-09-20 22:54:05'),
(2325, 'events_page_name', 'Events', '2021-06-27 09:33:49', '2021-09-20 22:54:05'),
(2326, 'events_page_meta_tags', NULL, '2021-06-27 09:33:49', '2021-09-20 22:54:05'),
(2327, 'events_page_meta_description', NULL, '2021-06-27 09:33:49', '2021-09-20 22:54:05'),
(2328, 'donation_page_name', 'Donations', '2021-06-27 09:33:49', '2021-09-20 22:54:05'),
(2329, 'donation_page_meta_tags', NULL, '2021-06-27 09:33:49', '2021-09-20 22:54:05'),
(2330, 'donation_page_meta_description', NULL, '2021-06-27 09:33:50', '2021-09-20 22:54:05'),
(2331, 'testimonial_page_name', 'Testimonial', '2021-06-27 09:33:50', '2021-09-20 22:54:05'),
(2332, 'testimonial_page_meta_tags', NULL, '2021-06-27 09:33:50', '2021-09-20 22:54:05'),
(2333, 'about_page_about_us_section_status', 'on', '2021-06-27 10:17:10', '2021-06-27 10:17:10'),
(2334, 'about_page_our_mission_section_status', 'on', '2021-06-27 10:17:11', '2021-06-27 10:17:11'),
(2335, 'about_page_counterup_section_status', 'on', '2021-06-27 10:17:11', '2021-06-27 10:17:11'),
(2336, 'about_page_what_we_do_section_status', 'on', '2021-06-27 10:17:11', '2021-06-27 10:17:11'),
(2337, 'about_page_testimonial_section_status', 'on', '2021-06-27 10:17:11', '2021-06-27 10:17:11'),
(2338, 'about_page_team_member_section_status', 'on', '2021-06-27 10:17:11', '2021-06-27 10:17:11'),
(2339, 'about_page_our_mission_list_section_icon', 'a:4:{i:0;s:12:\"fas fa-check\";i:1;s:12:\"fas fa-check\";i:2;s:12:\"fas fa-check\";i:3;s:12:\"fas fa-check\";}', '2021-06-27 10:19:08', '2021-06-27 10:19:08'),
(2340, 'about_page_our_mission_left_image_image', '180', '2021-06-27 10:19:08', '2021-06-27 10:19:08'),
(2341, 'about_page_counterup_background_image', '149', '2021-06-27 10:19:31', '2021-06-27 10:19:31'),
(2342, 'about_page_what_we_do_section_icon', 'a:3:{i:0;s:20:\"flaticon-transfusion\";i:1;s:14:\"flaticon-house\";i:2;s:19:\"flaticon-solidarity\";}', '2021-06-27 10:20:43', '2021-06-27 10:20:55'),
(2343, 'about_page_what_we_do_section_url', 'a:3:{i:0;s:1:\"#\";i:1;s:1:\"#\";i:2;s:1:\"#\";}', '2021-06-27 10:20:43', '2021-06-27 10:20:55'),
(2344, 'about_page_testimonial_item', '4', '2021-06-27 10:21:07', '2021-06-27 10:21:07'),
(2345, 'about_page_team_member_item', '6', '2021-06-27 10:21:23', '2021-06-27 10:21:23'),
(2346, 'contact_page_form_receiving_mail', 'dvrobin4@gmail.com', '2021-06-27 10:26:38', '2021-07-27 23:13:57'),
(2347, 'contact_page_map_section_location', '2626 Angie Drive Santa Ana, CA 92701', '2021-06-27 10:26:55', '2021-07-07 12:37:39'),
(2348, 'contact_page_map_section_zoom', '15', '2021-06-27 10:26:55', '2021-07-07 12:37:39'),
(2349, 'contact_page_contact_info_section_status', 'on', '2021-06-27 10:27:19', '2021-06-27 10:27:19'),
(2350, 'contact_page_contact_section_status', 'on', '2021-06-27 10:27:19', '2021-06-27 10:27:19'),
(2351, 'contact_page_contact_form_fields', '{\"field_type\":[\"text\",\"text\",\"email\",\"textarea\"],\"field_name\":[\"name\",\"subject\",\"email\",\"message\"],\"field_placeholder\":[\"Your Name\",\"Subject\",\"Your Email\",\"Message\"],\"field_required\":{\"1\":\"on\",\"2\":\"on\"}}', '2021-06-27 10:37:05', '2021-07-26 11:10:55'),
(2352, 'order_page_form_fields', '{\"field_type\":[\"textarea\",\"file\"],\"field_name\":[\"message\",\"file\"],\"field_placeholder\":[\"Your Message\",\"Document\"],\"mimes_type\":{\"2\":\"mimes:jpg,jpeg,png\"}}', '2021-06-27 10:41:23', '2021-06-27 10:41:23'),
(2353, 'apply_job_page_form_fields', '{\"field_type\":[\"text\",\"file\",\"textarea\"],\"field_name\":[\"expected-salary\",\"cv\",\"additional-info\"],\"field_placeholder\":[\"Your NameYour Expected Salary\",\"Your CV\",\"About Yourself\"],\"mimes_type\":{\"1\":\"mimes:txt,pdf\"}}', '2021-06-27 10:43:55', '2021-09-17 23:50:01'),
(2354, 'event_attendance_form_fields', '{\"field_type\":[\"text\",\"email\",\"textarea\"],\"field_name\":[\"name\",\"email\",\"message\"],\"field_placeholder\":[\"name\",\"Your Email\",\"Your Message\"],\"field_required\":{\"2\":\"on\"}}', '2021-06-27 10:45:49', '2021-07-06 09:23:25'),
(2355, 'error_404_page_title', '404', '2021-06-27 10:50:05', '2021-06-27 10:50:05'),
(2356, 'error_404_page_subtitle', 'Oops! This Page Could Not Be Found', '2021-06-27 10:50:05', '2021-06-27 10:50:05'),
(2357, 'error_404_page_paragraph', 'Sorry but the page you are looking for does not exist, have been removed. name changed or is temporarily unavailable', '2021-06-27 10:50:05', '2021-06-27 10:50:05'),
(2358, 'error_404_page_button_text', 'Go To Home Page', '2021-06-27 10:50:06', '2021-06-27 10:50:06'),
(2359, 'maintain_page_title', 'We are on Scheduled Maintenance', '2021-06-27 11:01:56', '2021-07-03 08:19:50'),
(2360, 'maintain_page_description', 'way off why half led have near bed. At engage simple father of period others except. My giving do summer of though narrow marked at. Spring formal no county ye waited.', '2021-06-27 11:01:56', '2021-07-03 08:19:50'),
(2361, 'maintain_page_logo', '126', '2021-06-27 11:01:57', '2021-07-02 18:49:09'),
(2362, 'maintain_page_background_image', '131', '2021-06-27 11:01:57', '2021-06-27 11:01:57'),
(2363, 'cash_on_delivery_preview_logo', NULL, '2021-06-27 11:21:47', '2022-10-26 11:11:13'),
(2364, 'stripe_preview_logo', '184', '2021-06-27 11:21:47', '2022-10-26 11:11:14'),
(2365, 'paystack_preview_logo', '186', '2021-06-27 11:21:47', '2022-10-26 11:11:13'),
(2366, 'paystack_public_key', 'pk_test_0a2cea63c4a34691fae697fb8f6b72a856e96e12', '2021-06-27 11:21:48', '2022-10-26 11:11:13'),
(2367, 'paystack_secret_key', 'sk_test_bfb4d04c41f8bcfa9fb6dac84eeb6ea54e1a93b4', '2021-06-27 11:21:48', '2022-10-26 11:11:13'),
(2368, 'paystack_merchant_email', 'testxgenious@gmail.com', '2021-06-27 11:21:48', '2022-10-26 11:11:13'),
(2369, 'razorpay_preview_logo', '185', '2021-06-27 11:21:48', '2022-10-26 11:11:13'),
(2370, 'paypal_preview_logo', '182', '2021-06-27 11:21:48', '2022-10-26 11:11:14'),
(2371, 'paypal_app_client_id', 'ATx-SYQyPtXHw1bZaBDhJUZabxbutIqAqqZORgvgEoK_-9MrAkUzYkbt8pSnUyKNEdNN3aJt8tcpcY1I', '2021-06-27 11:21:48', '2021-09-22 06:28:37'),
(2372, 'paypal_app_secret', 'ELJCWPUabUnnMamfw5-ZxaUsvir3KAJrPnAcSeS11znsroi45HP0p7y7vGZcYsBsAAi7Ou6kelCpj69K', '2021-06-27 11:21:48', '2021-09-22 06:28:37'),
(2373, 'paytm_preview_logo', '183', '2021-06-27 11:21:48', '2022-10-26 11:11:13'),
(2374, 'paytm_merchant_key', 'dv0XtmsPYpewNag&', '2021-06-27 11:21:48', '2022-10-26 11:11:13'),
(2375, 'paytm_merchant_mid', 'Digita57697814558795', '2021-06-27 11:21:49', '2022-10-26 11:11:13'),
(2376, 'paytm_merchant_website', 'WEBSTAGING', '2021-06-27 11:21:49', '2022-10-26 11:11:13'),
(2377, 'site_global_currency', 'USD', '2021-06-27 11:21:49', '2022-10-26 11:11:13'),
(2378, 'manual_payment_preview_logo', '231', '2021-06-27 11:21:49', '2022-10-26 11:11:13'),
(2379, 'site_manual_payment_name', 'Manual Payment', '2021-06-27 11:21:49', '2022-10-26 11:11:13'),
(2380, 'site_manual_payment_description', 'manual payment gateway description', '2021-06-27 11:21:49', '2022-10-26 11:11:13'),
(2381, 'razorpay_key', 'rzp_test_SXk7LZqsBPpAkj', '2021-06-27 11:21:49', '2021-09-22 06:28:38'),
(2382, 'razorpay_secret', 'Nenvq0aYArtYBDOGgmMH7JNv', '2021-06-27 11:21:49', '2021-09-22 06:28:38'),
(2383, 'stripe_publishable_key', 'pk_test_51GwS1SEmGOuJLTMsIeYKFtfAT3o3Fc6IOC7wyFmmxA2FIFQ3ZigJ2z1s4ZOweKQKlhaQr1blTH9y6HR2PMjtq1Rx00vqE8LO0x', '2021-06-27 11:21:49', '2021-09-22 06:28:38'),
(2384, 'stripe_secret_key', 'sk_test_51GwS1SEmGOuJLTMs2vhSliTwAGkOt4fKJMBrxzTXeCJoLrRu8HFf4I0C5QuyE3l3bQHBJm3c0qFmeVjd0V9nFb6Z00VrWDJ9Uw', '2021-06-27 11:21:49', '2022-10-26 11:11:14'),
(2385, 'site_global_payment_gateway', NULL, '2021-06-27 11:21:49', '2022-10-26 11:11:14'),
(2386, 'site_usd_to_ngn_exchange_rate', '415.33', '2021-06-27 11:21:49', '2022-10-26 11:11:14'),
(2387, 'site_euro_to_ngn_exchange_rate', NULL, '2021-06-27 11:21:49', '2022-10-26 11:11:14'),
(2388, 'mollie_public_key', 'test_fVk76gNbAp6ryrtRjfAVvzjxSHxC2v', '2021-06-27 11:21:49', '2022-10-26 11:11:14'),
(2389, 'mollie_preview_logo', '187', '2021-06-27 11:21:49', '2022-10-26 11:11:14'),
(2390, 'flutterwave_preview_logo', '188', '2021-06-27 11:21:49', '2022-10-26 11:11:14'),
(2391, 'flutterwave_secret_key', 'FLWSECK_TEST-d37a42d8917db84f1b2f47c125252d0a-X', '2021-06-27 11:21:49', '2021-09-22 06:28:39'),
(2392, 'flutterwave_public_key', 'FLWPUBK_TEST-86cce2ec43c63e09a517290a8347fcab-X', '2021-06-27 11:21:49', '2021-09-22 06:28:40'),
(2393, 'site_currency_symbol_position', 'left', '2021-06-27 11:21:50', '2022-10-26 11:11:14'),
(2394, 'site_default_payment_gateway', 'paypal', '2021-06-27 11:21:50', '2022-10-26 11:11:14'),
(2395, 'manual_payment_gateway', 'on', '2021-06-27 11:21:50', '2022-10-26 11:11:15'),
(2396, 'paypal_gateway', 'on', '2021-06-27 11:21:50', '2022-10-26 11:11:15'),
(2397, 'paytm_test_mode', 'on', '2021-06-27 11:21:50', '2022-10-26 11:11:15'),
(2398, 'paypal_test_mode', 'on', '2021-06-27 11:21:50', '2022-10-26 11:11:15'),
(2399, 'paytm_gateway', 'on', '2021-06-27 11:21:50', '2022-10-26 11:11:15'),
(2400, 'razorpay_gateway', 'on', '2021-06-27 11:21:50', '2022-10-26 11:11:15'),
(2401, 'stripe_gateway', 'on', '2021-06-27 11:21:50', '2022-10-26 11:11:14'),
(2402, 'paystack_gateway', 'on', '2021-06-27 11:21:50', '2022-10-26 11:11:15'),
(2403, 'mollie_gateway', 'on', '2021-06-27 11:21:50', '2022-10-26 11:11:15'),
(2404, 'cash_on_delivery_gateway', NULL, '2021-06-27 11:21:50', '2022-10-26 11:11:15'),
(2405, 'flutterwave_gateway', 'on', '2021-06-27 11:21:50', '2022-10-26 11:11:15'),
(2406, 'site_usd_to_usd_exchange_rate', NULL, '2021-06-27 11:21:50', '2022-10-26 11:11:15'),
(2407, 'site_usd_to_inr_exchange_rate', '74', '2021-06-27 11:21:50', '2022-10-26 11:11:14'),
(2408, 'event_attendance_page_title', 'Confirm Your Attendance', '2021-06-29 09:44:31', '2021-07-12 19:25:52'),
(2409, 'event_attendance_page_form_button_title', 'Confirm Attendance', '2021-06-29 09:44:31', '2021-07-12 19:25:52'),
(2410, 'event_attendance_receiver_mail', 'info@sohan.xgenious.com', '2021-06-29 09:44:31', '2021-07-12 19:25:52'),
(2411, 'cause_single_payment_in_seperate_page', 'on', '2021-06-29 17:36:05', '2021-07-15 21:20:29'),
(2412, 'cause_single_donate_button_text', 'Donate Now', '2021-06-29 17:36:05', '2022-10-16 06:29:09'),
(2413, 'site_admin_dark_mode', 'on', '2021-07-02 06:00:00', '2022-10-26 12:46:50'),
(2414, 'donation_admin_charge', '10', '2021-07-03 09:41:18', '2021-07-03 09:42:14'),
(2415, 'donation_admin_withdraw_charge', '20', '2021-07-03 09:41:18', '2021-07-03 09:42:14'),
(2416, 'donation_charge_active_deactive_button', 'on', '2021-07-03 14:05:03', '2022-10-16 06:29:09'),
(2417, 'charge_amount_type', 'fixed', '2021-07-03 14:05:03', '2022-10-16 06:29:09'),
(2418, 'charge_amount', '10', '2021-07-03 14:05:03', '2022-10-16 06:29:09'),
(2419, 'site_script_version', '1.2.2', '2021-07-03 14:05:03', '2022-10-26 22:02:18'),
(2420, 'disable_guest_mode_for_event_module', 'on', '2021-07-12 09:26:20', '2021-07-12 19:25:52'),
(2421, 'event_page_button_text', 'Book Seat', '2021-07-12 19:24:36', '2021-07-12 19:25:52'),
(2422, 'donation_single_faq_title', 'General Question', '2021-07-16 21:37:14', '2022-10-16 06:29:09'),
(2423, 'cause_single_donate_sidebar_text', 'Your Donation Details', '2021-07-16 21:48:00', '2022-10-16 06:29:09'),
(2424, 'enable_facebook_login', 'on', '2021-07-23 17:56:50', '2021-07-23 21:36:40'),
(2425, 'facebook_client_id', NULL, '2021-07-23 17:56:50', '2021-07-23 21:36:40'),
(2426, 'facebook_client_secret', NULL, '2021-07-23 17:56:50', '2021-07-23 21:36:40'),
(2427, 'enable_google_login', 'on', '2021-07-23 19:43:16', '2021-07-23 21:36:40'),
(2428, 'google_client_id', NULL, '2021-07-23 21:36:12', '2021-07-23 21:36:40'),
(2429, 'google_client_secret', NULL, '2021-07-23 21:36:12', '2021-07-23 21:36:40'),
(2430, 'home_page_04_header_area_title', 'Donate, Fundraise & Volunteer', '2021-09-13 02:32:56', '2021-09-13 02:51:41'),
(2431, 'home_page_04_header_area_subtitle', 'DONATE & SAVE PEOPLE', '2021-09-13 02:32:56', '2021-09-13 02:51:41'),
(2432, 'home_page_04_donate_button_text', 'DONATE NOW', '2021-09-13 02:32:56', '2021-09-13 02:51:41'),
(2433, 'home_page_04_donate_button_text_url', NULL, '2021-09-13 02:32:56', '2021-09-13 02:51:41'),
(2434, 'home_page_04_right_side_heading', 'Donate us', '2021-09-13 02:32:56', '2021-09-13 02:51:41'),
(2435, 'home_page_04_right_side_donate_button_text', 'Donate Now', '2021-09-13 02:32:56', '2021-09-13 02:51:41'),
(2436, 'home_page_04_header_area_line_image', '200', '2021-09-13 02:32:56', '2021-09-13 02:51:41'),
(2437, 'home_page_04_header_area_bg_image', '201', '2021-09-13 02:32:56', '2021-09-13 02:51:41'),
(2438, 'home_page_04_feature_area_title', 'Our Causes', '2021-09-13 04:08:35', '2021-09-21 06:53:26'),
(2439, 'home_page_04_feature_area_subtitle', 'Featured Campaign', '2021-09-13 04:08:35', '2021-09-21 06:53:26'),
(2440, 'home_page_04_feature_area_donation_button_text', 'MAKE A DONATION', '2021-09-13 04:29:56', '2021-09-21 06:53:26'),
(2441, 'home_page_04_success_story_area_title', 'Our Success', '2021-09-13 23:26:58', '2021-09-13 23:30:57'),
(2442, 'home_page_04_success_story_area_subtitle', 'Our Success Stories', '2021-09-13 23:26:58', '2021-09-13 23:30:57'),
(2443, 'home_page_04_success_story_area_button_text', 'Read Details', '2021-09-13 23:26:58', '2021-09-13 23:30:57'),
(2444, 'home_page_04_success_story_area_item_show', '3', '2021-09-13 23:26:58', '2021-09-13 23:30:57'),
(2445, 'home_page_04_about_us_area_title', 'About Us', '2021-09-14 00:06:51', '2021-09-14 00:15:16'),
(2446, 'home_page_04_about_us_area_subtitle', 'Know About Us', '2021-09-14 00:06:52', '2021-09-14 00:15:16'),
(2447, 'home_page_04_about_us_area_description', 'Nullam sed condimentum lorem. Donec id enim condimentum, posuere tortor ac, dignissim risus. Curabitur vel congue lectus. Aliquam enim libero, mollis nec sodales vel, efficitur vel sapien. Proin rhoncus mi et sem sodales, sodales fermentum ex molestie. Etiam laoreet eleifend dolor a auctor. \r\n\r\nCurabitur nec dignissim arcu. In posuere elit ut magna suscipit, eget consectetur libero vestibulum. Cras maximus justo arcu, sit amet blandit nunc tristique in. Suspendisse tristique, ante a feugiat laoreet, turpis magna sagittis nulla.', '2021-09-14 00:06:52', '2021-09-14 00:15:16'),
(2448, 'home_page_04_about_us_area_button_text', 'Read More', '2021-09-14 00:06:52', '2021-09-14 00:15:16'),
(2449, 'home_page_04_about_us_area_button_url', '#', '2021-09-14 00:15:16', '2021-09-14 00:15:16'),
(2450, 'home_page_04_events_area_title', 'Our Events', '2021-09-14 00:55:14', '2021-09-14 01:11:40'),
(2451, 'home_page_04_events_area_subtitle', 'Upcoming Events', '2021-09-14 00:55:14', '2021-09-14 01:11:40'),
(2452, 'home_page_04_events_area_item_show', '4', '2021-09-14 00:55:14', '2021-09-14 01:11:40'),
(2453, 'home_page_04_recent_causes_area_title', 'Our Causes', '2021-09-14 01:28:44', '2021-09-14 01:41:04'),
(2454, 'home_page_04_recent_causes_area_subtitle', 'Recently Added Causes', '2021-09-14 01:28:44', '2021-09-14 01:41:04'),
(2455, 'home_page_04_recent_causes_area_button_text', 'Make A Donation', '2021-09-14 01:28:44', '2021-09-14 01:41:04'),
(2456, 'home_page_04_recent_causes_area_see_all_button_text', 'See All Causes', '2021-09-14 01:28:45', '2021-09-14 01:41:04'),
(2457, 'home_page_04_recent_causes_area_item_show', '3', '2021-09-14 01:41:04', '2021-09-14 01:41:04'),
(2458, 'home_page_04_recent_blog_area_title', 'Latest Blog', '2021-09-14 03:10:08', '2021-09-14 03:36:12'),
(2459, 'home_page_04_recent_blog_area_subtitle', 'Latest Blog & News', '2021-09-14 03:10:08', '2021-09-14 03:36:12'),
(2460, 'home_page_04_recent_blog_area_item_show', '4', '2021-09-14 03:10:08', '2021-09-14 03:36:12'),
(2461, 'home_page_05_rise_area_heading_title', 'Rise Your Hand', '2021-09-14 22:26:18', '2021-09-14 22:26:18'),
(2462, 'home_page_05_rise_area_button_text', 'Donate Now', '2021-09-14 22:26:18', '2021-09-14 22:26:18'),
(2463, 'home_page_05_feature_area_title', 'Our Causes', '2021-09-14 22:32:01', '2021-09-14 22:32:01'),
(2464, 'home_page_05_feature_area_subtitle', 'Featurd Campaign', '2021-09-14 22:32:01', '2021-09-14 22:32:01'),
(2465, 'home_page_05_feature_area_donation_button_text', 'Donate', '2021-09-14 22:32:01', '2021-09-14 22:32:01'),
(2466, 'home_page_05_category_area_title', 'Category', '2021-09-14 22:48:19', '2021-09-14 22:48:19'),
(2467, 'home_page_05_category_area_subtitle', 'Causes by Category', '2021-09-14 22:48:19', '2021-09-14 22:48:19'),
(2468, 'home_page_05_success_story_area_title', 'Success', '2021-09-14 23:26:20', '2021-09-14 23:57:39'),
(2469, 'home_page_05_success_story_area_subtitle', 'Success Stories', '2021-09-14 23:26:20', '2021-09-14 23:57:39'),
(2470, 'home_page_05_success_story_area_button_text', 'Read Details', '2021-09-14 23:26:20', '2021-09-14 23:57:39'),
(2471, 'home_page_05_success_story_area_item_show', '2', '2021-09-14 23:26:20', '2021-09-14 23:57:39'),
(2472, 'home_page_05_recent_causes_area_title', 'Our Causes', '2021-09-15 00:18:24', '2021-09-15 00:18:24'),
(2473, 'home_page_05_recent_causes_area_subtitle', 'Recently Added Causes', '2021-09-15 00:18:24', '2021-09-15 00:18:24'),
(2474, 'home_page_05_recent_causes_area_see_all_button_text', 'See All Causes', '2021-09-15 00:18:24', '2021-09-15 00:18:24'),
(2475, 'home_page_05_events_area_title', 'Our Events', '2021-09-15 00:36:05', '2021-09-15 00:56:38');
INSERT INTO `static_options` (`id`, `option_name`, `option_value`, `created_at`, `updated_at`) VALUES
(2476, 'home_page_05_events_area_subtitle', 'Upcoming Events', '2021-09-15 00:36:06', '2021-09-15 00:56:38'),
(2477, 'home_page_05_events_area_item_show', '3', '2021-09-15 00:40:24', '2021-09-15 00:56:38'),
(2478, 'home_page_05_events_area_left_image', '212', '2021-09-15 00:56:38', '2021-09-15 00:56:38'),
(2479, 'home_page_05_recent_blog_area_title', 'Latest Blog', '2021-09-15 01:06:19', '2021-09-22 06:49:52'),
(2480, 'home_page_05_recent_blog_area_subtitle', 'Latest Blog & News', '2021-09-15 01:06:19', '2021-09-22 06:49:52'),
(2481, 'home_page_05_recent_blog_area_item_show', '3', '2021-09-15 01:06:19', '2021-09-22 06:49:53'),
(2482, 'home_page_06_rise_area_heading_title', 'Rise Your Hand', '2021-09-15 05:07:50', '2021-09-15 05:09:15'),
(2483, 'home_page_06_rise_area_button_text', 'Donate  Now', '2021-09-15 05:07:50', '2021-09-15 05:09:15'),
(2484, 'home_page_06_feature_area_title', 'Featurd Campaign', '2021-09-15 05:14:17', '2021-09-15 05:14:17'),
(2485, 'home_page_06_feature_area_donation_button_text', 'Make A Donation', '2021-09-15 05:14:17', '2021-09-15 05:14:17'),
(2486, 'home_page_06_category_area_title', 'Causes Category', '2021-09-15 05:41:07', '2021-09-15 05:41:07'),
(2487, 'home_page_06_recent_causes_area_title', 'Recently Added Causes', '2021-09-15 05:47:38', '2021-09-15 05:47:38'),
(2488, 'home_page_06_recent_causes_area_button_text', 'Make A Donate', '2021-09-15 05:47:39', '2021-09-15 05:47:39'),
(2489, 'home_page_06_success_story_area_button_text', 'Read Details', '2021-09-15 06:19:06', '2021-09-15 06:19:19'),
(2490, 'home_page_06_success_story_area_item_show', '3', '2021-09-15 06:19:06', '2021-09-15 06:19:19'),
(2491, 'home_page_06_about_us_area_title', 'About Us', '2021-09-15 06:42:34', '2021-09-15 06:48:49'),
(2492, 'home_page_06_about_us_area_description', 'Nullam sed condimentum lorem. Donec id enim condimentum, posuere tortor ac, dignissim risus. Curabitur vel congue lectus. Aliquam enim libero, mollis nec sodales vel, efficitur vel sapien. Proin rhoncus mi et sem sodales, sodales fermentum ex molestie. Etiam laoreet eleifend dolor a auctor.Nullam sed condimentum lorem. Donec id enim condimentum, posuere tortor ac, dignissim risus. Curabitur vel congue lectus. Aliquam enim libero, mollis nec sodales vel, efficitur vel sapien. Proin rhoncus mi et sem sodales, sodales fermentum ex molestie. Etiam laoreet eleifend dolor a auctor.', '2021-09-15 06:42:34', '2021-09-15 06:48:49'),
(2493, 'home_page_06_about_us_area_button_text', 'Read Details', '2021-09-15 06:42:34', '2021-09-15 06:48:49'),
(2494, 'home_page_06_about_us_area_button_url', '#', '2021-09-15 06:42:34', '2021-09-15 06:48:49'),
(2495, 'home_page_06_events_area_title', 'Upcoming Events', '2021-09-15 06:56:47', '2021-09-15 07:15:18'),
(2496, 'home_page_06_events_area_item_show', '4', '2021-09-15 07:05:02', '2021-09-15 07:15:18'),
(2497, 'home_page_header_area_section_status', 'on', '2021-09-15 23:09:26', '2021-09-15 23:09:46'),
(2498, 'home_page_category_area_section_status', 'on', '2021-09-15 23:09:27', '2021-09-15 23:09:47'),
(2499, 'home_page_feature_area_section_status', 'on', '2021-09-15 23:09:27', '2021-09-15 23:09:47'),
(2500, 'home_page_success_story_area_section_status', 'on', '2021-09-15 23:09:27', '2021-09-15 23:09:47'),
(2501, 'home_page_aboutus_area_section_status', 'on', '2021-09-15 23:09:27', '2021-09-15 23:09:47'),
(2502, 'home_page_counterup_area_section_status', 'on', '2021-09-15 23:09:27', '2021-09-15 23:09:47'),
(2503, 'home_page_events_area_section_status', 'on', '2021-09-15 23:09:27', '2021-09-15 23:09:47'),
(2504, 'home_page_recent_cause_area_section_status', 'on', '2021-09-15 23:09:27', '2021-09-15 23:09:47'),
(2505, 'home_page_blog_area_section_status', 'on', '2021-09-15 23:09:27', '2021-09-15 23:09:47'),
(2506, 'home_page_client_area_section_status', 'on', '2021-09-15 23:09:27', '2021-09-15 23:09:47'),
(2507, 'home_page_04_header_area_section_status', NULL, '2021-09-15 23:19:09', '2021-09-15 23:30:42'),
(2508, 'home_page_04_category_area_section_status', NULL, '2021-09-15 23:19:09', '2021-09-15 23:30:42'),
(2509, 'home_page_04_feature_area_section_status', NULL, '2021-09-15 23:19:09', '2021-09-15 23:30:42'),
(2510, 'home_page_04_success_story_area_section_status', NULL, '2021-09-15 23:19:09', '2021-09-15 23:30:42'),
(2511, 'home_page_04_aboutus_area_section_status', NULL, '2021-09-15 23:19:09', '2021-09-15 23:30:42'),
(2512, 'home_page_04_counterup_area_section_status', NULL, '2021-09-15 23:19:09', '2021-09-15 23:30:42'),
(2513, 'home_page_04_events_area_section_status', NULL, '2021-09-15 23:19:09', '2021-09-15 23:30:42'),
(2514, 'home_page_04_recent_cause_area_section_status', NULL, '2021-09-15 23:19:10', '2021-09-15 23:30:42'),
(2515, 'home_page_04_blog_area_section_status', NULL, '2021-09-15 23:19:10', '2021-09-15 23:30:42'),
(2516, 'home_page_04_client_area_section_status', NULL, '2021-09-15 23:19:10', '2021-09-15 23:30:42'),
(2517, 'home_page_header_area_04_section_status', 'on', '2021-09-15 23:32:59', '2021-09-15 23:36:34'),
(2518, 'home_page_category_area_04_section_status', 'on', '2021-09-15 23:32:59', '2021-09-15 23:36:34'),
(2519, 'home_page_feature_area_04_section_status', 'on', '2021-09-15 23:32:59', '2021-09-15 23:36:34'),
(2520, 'home_page_success_story_area_04_section_status', 'on', '2021-09-15 23:32:59', '2021-09-15 23:36:34'),
(2521, 'home_page_aboutus_area_04_section_status', 'on', '2021-09-15 23:33:00', '2021-09-15 23:36:34'),
(2522, 'home_page_counterup_area_04_section_status', 'on', '2021-09-15 23:33:00', '2021-09-15 23:36:34'),
(2523, 'home_page_events_area_04_section_status', 'on', '2021-09-15 23:33:00', '2021-09-15 23:36:35'),
(2524, 'home_page_recent_cause_area_04_section_status', 'on', '2021-09-15 23:33:00', '2021-09-15 23:36:35'),
(2525, 'home_page_blog_area_04_section_status', 'on', '2021-09-15 23:33:00', '2021-09-15 23:36:35'),
(2526, 'home_page_client_area_04_section_status', 'on', '2021-09-15 23:33:00', '2021-09-15 23:36:35'),
(2527, 'home_page_header_slider_area_05_section_status', 'on', '2021-09-15 23:47:48', '2021-09-15 23:47:48'),
(2528, 'home_page_rise_area_05_section_status', 'on', '2021-09-15 23:47:48', '2021-09-15 23:47:48'),
(2529, 'home_page_feature_area_05_section_status', 'on', '2021-09-15 23:47:48', '2021-09-15 23:47:48'),
(2530, 'home_page_category_area_05_section_status', 'on', '2021-09-15 23:47:48', '2021-09-15 23:47:48'),
(2531, 'home_page_success_story_area_05_section_status', 'on', '2021-09-15 23:47:48', '2021-09-15 23:47:48'),
(2532, 'home_page_counterup_area_05_section_status', 'on', '2021-09-15 23:47:48', '2021-09-15 23:47:48'),
(2533, 'home_page_recent_cause_area_05_section_status', 'on', '2021-09-15 23:47:48', '2021-09-15 23:47:48'),
(2534, 'home_page_events_area_05_section_status', 'on', '2021-09-15 23:47:48', '2021-09-15 23:47:48'),
(2535, 'home_page_blog_area_05_section_status', 'on', '2021-09-15 23:47:48', '2021-09-15 23:47:48'),
(2536, 'home_page_client_area_05_section_status', 'on', '2021-09-15 23:47:48', '2021-09-15 23:47:48'),
(2537, 'home_page_header_slider_area_06_section_status', 'on', '2021-09-15 23:53:00', '2021-09-15 23:56:26'),
(2538, 'home_page_rise_area_06_section_status', 'on', '2021-09-15 23:53:00', '2021-09-15 23:56:26'),
(2539, 'home_page_feature_area_06_section_status', 'on', '2021-09-15 23:53:00', '2021-09-15 23:56:26'),
(2540, 'home_page_category_area_06_section_status', 'on', '2021-09-15 23:53:00', '2021-09-15 23:56:27'),
(2541, 'home_page_recent_cause_area_06_section_status', 'on', '2021-09-15 23:53:00', '2021-09-15 23:56:27'),
(2542, 'home_page_success_story_area_06_section_status', 'on', '2021-09-15 23:53:01', '2021-09-15 23:56:27'),
(2543, 'home_page_aboutus_area_06_section_status', 'on', '2021-09-15 23:53:01', '2021-09-15 23:56:27'),
(2544, 'home_page_events_area_06_section_status', 'on', '2021-09-15 23:53:01', '2021-09-15 23:56:27'),
(2545, 'home_page_client_area_06_section_status', 'on', '2021-09-15 23:53:01', '2021-09-15 23:56:27'),
(2546, 'home_page_counterup_area_06_section_status', 'on', '2021-09-15 23:54:38', '2021-09-15 23:56:27'),
(2547, 'success_story_page_slug', 'success-story', '2021-09-16 00:05:40', '2021-09-20 22:54:03'),
(2548, 'success_story_page_name', 'Success Stories', '2021-09-16 00:05:44', '2021-09-20 22:54:06'),
(2549, 'success_story_page_meta_tags', NULL, '2021-09-16 00:05:44', '2021-09-20 22:54:06'),
(2550, 'success_story_page_meta_description', NULL, '2021-09-16 00:05:44', '2021-09-20 22:54:06'),
(2551, 'success_story_page_button_text', 'View Details', '2021-09-16 01:59:44', '2021-09-18 05:28:03'),
(2552, 'success_story_page_item_show', '2', '2021-09-16 01:59:44', '2021-09-18 05:28:03'),
(2553, 'donation_single_page_countdown_status', 'on', '2021-09-16 05:40:57', '2022-10-16 06:29:09'),
(2554, 'donation_charge_form', 'donor', '2021-09-16 05:40:57', '2022-10-16 06:29:09'),
(2555, 'user_campaign_metadata_status', NULL, '2021-09-16 05:40:57', '2022-10-16 06:29:09'),
(2556, 'allow_user_to_add_custom_tip_in_donation', NULL, '2021-09-16 05:40:57', '2022-10-16 06:29:09'),
(2557, 'donation_deadline_text', 'Donation Expired', '2021-09-16 05:40:57', '2022-10-16 06:29:09'),
(2558, 'payfast_test_mode', 'on', '2021-09-18 01:46:01', '2022-10-26 11:11:15'),
(2559, 'payfast_preview_logo', '220', '2021-09-18 01:46:01', '2022-10-26 11:11:14'),
(2560, 'payfast_merchant_id', '10024000', '2021-09-18 01:46:01', '2022-10-26 11:11:14'),
(2561, 'payfast_merchant_key', '77jcu5v4ufdod', '2021-09-18 01:46:01', '2022-10-26 11:11:14'),
(2562, 'payfast_passphrase', 'testpayfastsohan', '2021-09-18 01:46:01', '2022-10-26 11:11:14'),
(2563, 'payfast_gateway', 'on', '2021-09-18 01:46:01', '2022-10-26 11:11:15'),
(2564, 'site_usd_to_zar_exchange_rate', '385', '2021-09-18 01:46:02', '2022-10-26 11:11:14'),
(2565, 'donation_medical_document_button_text', 'Medical Document', '2021-09-18 06:36:09', '2022-10-16 06:29:09'),
(2566, 'donation_medical_document_button_show_hide', 'on', '2021-09-18 06:36:09', '2022-10-16 06:29:09'),
(2567, 'donation_single_page_variant', '02', NULL, '2022-08-24 05:36:13'),
(2568, 'donation_flag_show_hide', 'on', '2021-09-19 07:01:14', '2022-10-16 06:29:09'),
(2569, 'donation_description_show_hide', 'on', '2021-09-19 07:01:14', '2021-09-19 07:07:34'),
(2570, 'donation_updates_show_hide', 'on', '2021-09-19 07:01:14', '2022-10-16 06:29:09'),
(2571, 'donation_comments_show_hide', 'on', '2021-09-19 07:01:14', '2022-10-16 06:29:09'),
(2572, 'donation_faq_show_hide', 'on', '2021-09-19 07:01:40', '2022-10-16 06:29:09'),
(2573, 'donation_descriptions_show_hide', 'on', '2021-09-19 07:10:20', '2022-10-16 06:29:09'),
(2574, 'home_page_06_header_area_title', 'a:2:{i:0;s:29:\"Donate, Fundraise & Volunteer\";i:1;s:23:\"Help, Donate & Fundrise\";}', '2021-09-20 00:15:15', '2021-09-21 05:09:12'),
(2575, 'home_page_06_header_area_subtitle', 'a:2:{i:0;s:28:\"Small Effort Make Big Change\";i:1;s:30:\"Your Contribution Is Important\";}', '2021-09-20 00:15:15', '2021-09-21 05:09:12'),
(2576, 'home_page_06_header_area_donate_button_title', 'a:2:{i:0;s:6:\"Donate\";i:1;s:10:\"Donate Now\";}', '2021-09-20 00:15:15', '2021-09-21 05:09:12'),
(2577, 'home_page_06_header_area_donate_button_url', 'a:2:{i:0;N;i:1;N;}', '2021-09-20 00:15:15', '2021-09-21 05:09:12'),
(2578, 'home_page_06_header_area_read_more_button_title', 'a:2:{i:0;s:9:\"Read More\";i:1;s:12:\"Read Details\";}', '2021-09-20 00:15:15', '2021-09-21 05:09:12'),
(2579, 'home_page_06_header_area_read_more_button_url', 'a:2:{i:0;N;i:1;N;}', '2021-09-20 00:15:16', '2021-09-21 05:09:13'),
(2580, 'home_page_06_header_area_image', 'a:2:{i:0;s:3:\"196\";i:1;s:3:\"134\";}', '2021-09-20 00:15:16', '2021-09-21 05:09:13'),
(2581, 'home_page_06_header_area_donation', 'a:2:{i:0;s:1:\"2\";i:1;s:1:\"2\";}', '2021-09-20 01:32:04', '2021-09-21 05:09:13'),
(2582, 'support_ticket_page_slug', 'support-ticket', '2021-09-20 22:54:03', '2021-09-20 22:54:03'),
(2583, 'support_ticket_page_name', 'Support Ticket', '2021-09-20 22:54:06', '2021-09-20 22:54:06'),
(2584, 'support_ticket_page_meta_tags', NULL, '2021-09-20 22:54:06', '2021-09-20 22:54:06'),
(2585, 'support_ticket_page_meta_description', NULL, '2021-09-20 22:54:06', '2021-09-20 22:54:06'),
(2586, 'support_ticket_login_notice', 'Login to create support ticket', '2021-09-20 23:26:53', '2021-09-20 23:26:53'),
(2587, 'support_ticket_form_title', 'Create New Support Ticket', '2021-09-20 23:26:53', '2021-09-20 23:26:53'),
(2588, 'support_ticket_button_text', 'Submit Ticket', '2021-09-20 23:26:53', '2021-09-20 23:26:53'),
(2589, 'support_ticket_success_message', 'Thanks for contact us, we will reply soon', '2021-09-20 23:26:53', '2021-09-20 23:26:53'),
(2590, 'home_page_06_header_area_bg_image', '219', '2021-09-21 05:06:27', '2021-09-21 05:09:13'),
(2591, 'emmergency_donation_text', 'This fundraiser is in an urgent need of funds', '2021-09-21 06:59:33', '2022-10-16 06:29:09'),
(2592, 'releated_donation_text', 'Related Causes', '2021-09-21 23:18:31', '2022-10-16 06:29:09'),
(2593, 'donation_social_icons_show_hide', 'on', '2021-09-22 04:09:09', '2022-10-16 06:29:09'),
(2594, 'donation_recent_donors_show_hide', 'on', '2021-09-22 04:09:09', '2022-10-16 06:29:09'),
(2595, 'razorpay_api_key', 'rzp_test_SXk7LZqsBPpAkj', '2022-02-05 04:02:53', '2022-10-26 11:11:14'),
(2596, 'razorpay_api_secret', 'Nenvq0aYArtYBDOGgmMH7JNv', '2022-02-05 04:02:53', '2022-10-26 11:11:14'),
(2597, 'stripe_public_key', 'pk_test_51GwS1SEmGOuJLTMsIeYKFtfAT3o3Fc6IOC7wyFmmxA2FIFQ3ZigJ2z1s4ZOweKQKlhaQr1blTH9y6HR2PMjtq1Rx00vqE8LO0x', '2022-02-05 04:02:53', '2022-10-26 11:11:14'),
(2598, 'flw_public_key', 'FLWPUBK_TEST-86cce2ec43c63e09a517290a8347fcab-X', '2022-02-05 04:02:54', '2022-10-26 11:11:14'),
(2599, 'flw_secret_key', 'FLWSECK_TEST-d37a42d8917db84f1b2f47c125252d0a-X', '2022-02-05 04:02:54', '2022-10-26 11:11:14'),
(2600, 'flw_secret_hash', 'fundorex', '2022-02-05 04:02:54', '2022-10-26 11:11:14'),
(2601, 'paypal_mode', NULL, '2022-02-05 04:02:54', '2022-07-03 00:28:22'),
(2602, 'paypal_sandbox_client_id', 'AUP7AuZMwJbkee-2OmsSZrU-ID1XUJYE-YB-2JOrxeKV-q9ZJZYmsr-UoKuJn4kwyCv5ak26lrZyb-gb', '2022-02-05 04:02:54', '2022-10-26 11:11:14'),
(2603, 'paypal_sandbox_client_secret', 'EEIxCuVnbgING9EyzcF2q-gpacLneVbngQtJ1mbx-42Lbq-6Uf6PEjgzF7HEayNsI4IFmB9_CZkECc3y', '2022-02-05 04:02:54', '2022-10-26 11:11:14'),
(2604, 'paypal_sandbox_app_id', '641651651958', '2022-02-05 04:02:54', '2022-10-26 11:11:14'),
(2605, 'paypal_live_client_id', NULL, '2022-02-05 04:02:54', '2022-10-26 11:11:14'),
(2606, 'paypal_live_client_secret', NULL, '2022-02-05 04:02:54', '2022-10-26 11:11:14'),
(2607, 'paypal_live_app_id', NULL, '2022-02-05 04:02:54', '2022-10-26 11:11:14'),
(2608, 'paypal_payment_action', NULL, '2022-02-05 04:02:55', '2022-10-26 11:11:14'),
(2609, 'paypal_currency', NULL, '2022-02-05 04:02:55', '2022-10-26 11:11:14'),
(2610, 'paypal_notify_url', NULL, '2022-02-05 04:02:55', '2022-10-26 11:11:14'),
(2611, 'paypal_locale', NULL, '2022-02-05 04:02:55', '2022-10-26 11:11:14'),
(2612, 'paypal_validate_ssl', NULL, '2022-02-05 04:02:55', '2022-10-26 11:11:14'),
(2613, 'site_usd_to_idr_exchange_rate', '14365.30', '2022-02-05 04:02:55', '2022-10-26 11:11:14'),
(2614, 'site_usd_to_brl_exchange_rate', '5.53', '2022-02-05 04:02:55', '2022-10-26 11:11:14'),
(2615, 'midtrans_preview_logo', '224', '2022-02-05 04:02:55', '2022-10-26 11:11:14'),
(2616, 'midtrans_merchant_id', 'G770543580', '2022-02-05 04:02:55', '2022-10-26 11:11:14'),
(2617, 'midtrans_server_key', 'SB-Mid-server-9z5jztsHyYxEdSs7DgkNg2on', '2022-02-05 04:02:55', '2022-10-26 11:11:14'),
(2618, 'midtrans_client_key', 'SB-Mid-client-iDuy-jKdZHkLjL_I', '2022-02-05 04:02:55', '2022-10-26 11:11:14'),
(2619, 'midtrans_environment', NULL, '2022-02-05 04:02:55', '2022-10-26 11:11:14'),
(2620, 'payfast_merchant_env', NULL, '2022-02-05 04:02:55', '2022-10-26 11:11:14'),
(2621, 'payfast_itn_url', NULL, '2022-02-05 04:02:55', '2022-10-26 11:11:14'),
(2622, 'cashfree_preview_logo', '222', '2022-02-05 04:02:56', '2022-10-26 11:11:14'),
(2623, 'cashfree_test_mode', 'on', '2022-02-05 04:02:56', '2022-10-26 11:11:14'),
(2624, 'cashfree_app_id', '94527832f47d6e74fa6ca5e3c72549', '2022-02-05 04:02:56', '2022-10-26 11:11:14'),
(2625, 'cashfree_secret_key', 'ec6a3222018c676e95436b2e26e89c1ec6be2830', '2022-02-05 04:02:56', '2022-10-26 11:11:14'),
(2626, 'instamojo_preview_logo', '221', '2022-02-05 04:02:56', '2022-10-26 11:11:14'),
(2627, 'instamojo_client_id', 'test_nhpJ3RvWObd3uryoIYF0gjKby5NB5xu6S9Z', '2022-02-05 04:02:56', '2022-10-26 11:11:14'),
(2628, 'instamojo_client_secret', 'test_iZusG4P35maQVPTfqutbCc6UEbba3iesbCbrYM7zOtDaJUdbPz76QOnBcDgblC53YBEgsymqn2sx3NVEPbl3b5coA3uLqV1ikxKquOeXSWr8Ruy7eaKUMX1yBbm', '2022-02-05 04:02:56', '2022-10-26 11:11:14'),
(2629, 'instamojo_username', NULL, '2022-02-05 04:02:56', '2022-10-26 11:11:14'),
(2630, 'instamojo_password', NULL, '2022-02-05 04:02:56', '2022-10-26 11:11:14'),
(2631, 'instamojo_test_mode', 'on', '2022-02-05 04:02:56', '2022-10-26 11:11:14'),
(2632, 'marcadopago_preview_logo', '223', '2022-02-05 04:02:56', '2022-10-26 11:11:14'),
(2633, 'marcado_pago_client_id', 'TEST-0a3cc78a-57bf-4556-9dbe-2afa06347769', '2022-02-05 04:02:56', '2022-10-26 11:11:14'),
(2634, 'marcado_pago_client_secret', 'TEST-4644184554273630-070813-7d817e2ca1576e75884001d0755f8a7a-786499991', '2022-02-05 04:02:56', '2022-10-26 11:11:14'),
(2635, 'marcado_pago_test_mode', NULL, '2022-02-05 04:02:56', '2022-10-26 11:11:14'),
(2636, 'midtrans_gateway', 'on', '2022-02-05 04:02:57', '2022-10-26 11:11:15'),
(2637, 'midtrans_test_mode', 'on', '2022-02-05 04:02:57', '2022-10-26 11:11:15'),
(2638, 'cashfree_gateway', 'on', '2022-02-05 04:02:57', '2022-10-26 11:11:15'),
(2639, 'instamojo_gateway', 'on', '2022-02-05 04:02:57', '2022-10-26 11:11:15'),
(2640, 'marcadopago_gateway', 'on', '2022-02-05 04:02:57', '2022-10-26 11:11:15'),
(2641, 'marcadopago_test_mode', 'on', '2022-02-05 04:02:57', '2022-10-26 11:11:15'),
(2642, 'company_name', 'Fundorex', '2022-02-12 01:52:41', '2022-08-16 00:03:01'),
(2643, 'company_address', 'Dhaka, Bangladesh', '2022-02-12 01:52:41', '2022-08-16 00:03:01'),
(2644, 'company_contact', '01874151514', '2022-02-12 01:52:41', '2022-02-26 04:56:48'),
(2645, 'register_page_terms_of_service_url', '#', '2022-02-12 07:00:55', '2022-02-12 07:00:55'),
(2646, 'register_page_condition_url', '#', '2022-02-12 07:00:55', '2022-02-12 07:00:55'),
(2647, 'register_page_privacy_policy_url', '#', '2022-02-12 07:00:55', '2022-02-12 07:00:55'),
(2648, 'donation_reward_amount', NULL, '2022-02-15 06:37:24', '2022-02-15 22:41:41'),
(2649, 'reward_amount_for_point', '10', '2022-02-15 22:42:56', '2022-02-15 22:44:34'),
(2650, 'donation_single_reward_heading', 'Reward for This Campaign', '2022-02-16 01:46:43', '2022-10-16 06:29:09'),
(2651, 'donation_single_reward_image', '230', '2022-02-16 06:25:28', '2022-10-16 06:29:09'),
(2652, 'donation_single_reward_title', 'Get Reward by donating above', '2022-02-16 06:35:56', '2022-10-16 06:29:09'),
(2653, 'donation_login_user_donate_show_hide', NULL, '2022-02-20 00:05:14', '2022-10-16 06:29:09'),
(2654, 'company_signature_image', '148', '2022-02-26 04:56:48', '2022-02-26 04:56:48'),
(2655, 'minimum_donation_amount', NULL, '2022-02-26 05:33:24', '2022-10-16 06:29:09'),
(2656, 'site_inr_to_usd_exchange_rate', '0.014', '2022-02-26 23:56:29', '2022-02-27 00:01:01'),
(2657, 'site_inr_to_idr_exchange_rate', NULL, '2022-02-26 23:56:56', '2022-02-27 00:39:04'),
(2658, 'site_inr_to_inr_exchange_rate', NULL, '2022-02-26 23:56:56', '2022-02-27 00:39:04'),
(2659, 'site_inr_to_ngn_exchange_rate', NULL, '2022-02-26 23:56:56', '2022-02-27 00:39:04'),
(2660, 'site_inr_to_zar_exchange_rate', NULL, '2022-02-26 23:56:56', '2022-02-27 00:39:04'),
(2661, 'site_inr_to_brl_exchange_rate', NULL, '2022-02-26 23:56:56', '2022-02-27 00:39:04'),
(2662, 'home_page_navbar_search_show_hide', 'on', '2022-02-27 04:10:54', '2022-02-27 04:17:24'),
(2663, 'squareup_gateway', 'on', '2022-07-02 23:26:03', '2022-10-26 11:11:14'),
(2664, 'squareup_test_mode', 'on', '2022-07-02 23:26:03', '2022-10-26 11:11:14'),
(2665, 'squareup_preview_logo', '240', '2022-07-02 23:26:03', '2022-10-26 11:11:14'),
(2666, 'squareup_access_token', 'EAAAEOuLQObrVwJvCvoio3H13b8Ssqz1ighmTBKZvIENW9qxirHGHkqsGcPBC1uN', '2022-07-02 23:26:03', '2022-10-26 11:11:14'),
(2667, 'squareup_location_id', 'LE9C12TNM5HAS', '2022-07-02 23:26:03', '2022-10-26 11:11:15'),
(2668, 'squareup_mode', NULL, '2022-07-03 00:48:37', '2022-07-03 00:48:37'),
(2669, 'stripe_test_mode', 'on', '2022-07-03 01:13:22', '2022-10-26 11:11:14'),
(2670, 'mollie_test_mode', 'on', '2022-07-03 01:45:45', '2022-10-26 11:11:14'),
(2671, 'razorpay_test_mode', 'on', '2022-07-03 03:09:11', '2022-10-26 11:11:15'),
(2672, 'flutterwave_test_mode', 'on', '2022-07-03 03:29:06', '2022-10-26 11:11:15'),
(2673, 'paystack_test_mode', 'on', '2022-07-03 03:46:18', '2022-10-26 11:11:15'),
(2674, 'cinetpay_gateway', 'on', '2022-07-03 06:33:45', '2022-10-26 11:11:15'),
(2675, 'cinetpay_test_mode', 'on', '2022-07-03 06:33:45', '2022-10-26 11:11:15'),
(2676, 'cinetpay_api_key', '12912847765bc0db748fdd44.40081707', '2022-07-03 06:33:45', '2022-10-26 11:11:15'),
(2677, 'cinetpay_site_id', '445160', '2022-07-03 06:33:45', '2022-10-26 11:11:15'),
(2678, 'cinetpay_preview_logo', '241', '2022-07-03 06:34:49', '2022-10-26 11:11:15'),
(2679, 'paytabs_preview_logo', '242', '2022-07-03 07:43:31', '2022-10-26 11:11:15'),
(2680, 'paytabs_gateway', 'on', '2022-07-03 07:43:31', '2022-10-26 11:11:15'),
(2681, 'paytabs_test_mode', 'on', '2022-07-03 07:43:31', '2022-10-26 11:11:15'),
(2682, 'pay_tabs_currency', 'USD', '2022-07-03 07:43:31', '2022-10-26 11:11:15'),
(2683, 'pay_tabs_profile_id', '96698', '2022-07-03 07:43:31', '2022-10-26 11:11:15'),
(2684, 'pay_tabs_region', 'GLOBAL', '2022-07-03 07:43:31', '2022-10-26 11:11:15'),
(2685, 'pay_tabs_server_key', 'SKJNDNRHM2-JDKTZDDH2N-H9HLMJNJ2L', '2022-07-03 07:43:31', '2022-10-26 11:11:15'),
(2686, 'billplz_preview_logo', '247', '2022-07-03 07:43:31', '2022-10-26 11:11:15'),
(2687, 'billplz_gateway', 'on', '2022-07-03 07:43:31', '2022-10-26 11:11:15'),
(2688, 'billplz_test_mode', 'on', '2022-07-03 07:43:31', '2022-10-26 11:11:15'),
(2689, 'billplz_key', 'b2ead199-e6f3-4420-ae5c-c94f1b1e8ed6', '2022-07-03 07:43:31', '2022-10-26 11:11:15'),
(2690, 'billplz_version', 'v4', '2022-07-03 07:43:31', '2022-10-26 11:11:15'),
(2691, 'billplz_x_signature', 'S-HDXHxRJB-J7rNtoktZkKJg', '2022-07-03 07:43:31', '2022-10-26 11:11:15'),
(2692, 'billplz_collection_name', 'kjj5ya006', '2022-07-03 07:43:31', '2022-10-26 11:11:15'),
(2693, 'pay_tabs_preview_logo', '229', '2022-07-03 07:46:55', '2022-07-03 07:53:04'),
(2694, 'donation_custom_amount_once', '10,20,40,50,75,100,120,150,200,250,300', '2022-07-04 04:23:15', '2022-10-16 06:29:09'),
(2695, 'donation_custom_amount_monthly', '30,50,80,100,150,200,250,300,350,400,450,500', '2022-07-04 04:23:15', '2022-10-16 06:29:09'),
(2696, 'how_many_days_ago_user_get_recuring_notification', '5', '2022-07-04 05:25:42', '2022-10-16 06:29:09'),
(2697, 'site_usd_to_myr_exchange_rate', '4.44', '2022-07-14 06:19:36', '2022-10-26 11:11:14'),
(2698, 'zitopay_preview_logo', '248', '2022-07-28 01:15:35', '2022-10-26 11:11:15'),
(2699, 'zitopay_gateway', 'on', '2022-07-28 01:15:35', '2022-10-26 11:11:15'),
(2700, 'zitopay_test_mode', 'on', '2022-07-28 01:15:35', '2022-10-26 11:11:15'),
(2701, 'zitopay_username', 'dvrobin4', '2022-07-28 01:15:35', '2022-10-26 11:11:15'),
(2702, 'donation_page_form_fields', '{\"field_type\":[\"text\",\"tel\"],\"field_name\":[\"address\",\"phone\"],\"field_placeholder\":[\"Address\",\"Phone\"],\"field_required\":[\"on\",\"on\"]}', '2022-08-13 23:58:15', '2022-08-17 04:35:12'),
(2703, 'company_email', 'test@gmail.com', '2022-08-16 00:01:13', '2022-08-16 00:03:01'),
(2704, 'company_phone', '01847841844', '2022-08-16 00:01:13', '2022-08-16 00:03:01'),
(2705, 'enable_disable_decimal_point', 'no', '2022-10-26 11:10:55', '2022-10-26 11:11:15');

-- --------------------------------------------------------

--
-- Table structure for table `success_stories`
--

CREATE TABLE `success_stories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `story_content` longtext COLLATE utf8mb4_unicode_ci,
  `success_story_category_id` int(10) UNSIGNED NOT NULL,
  `slug` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `excerpt` text COLLATE utf8mb4_unicode_ci,
  `meta_title` text COLLATE utf8mb4_unicode_ci,
  `meta_tags` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `og_meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_meta_description` text COLLATE utf8mb4_unicode_ci,
  `og_meta_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `success_stories`
--

INSERT INTO `success_stories` (`id`, `title`, `story_content`, `success_story_category_id`, `slug`, `image`, `status`, `excerpt`, `meta_title`, `meta_tags`, `meta_description`, `og_meta_title`, `og_meta_description`, `og_meta_image`, `created_at`, `updated_at`) VALUES
(1, 'Award From Uniesco', '<div><div>Days around the world, we’ll find a pot of gold just sitting where the rainbow’s ending. Time — we’ll fight against the time, and we’ll fly on the white wings of the wind. 80 days around the world, no we won’t say a word before the ship is really back. Round, round, all around the world. Round, all around the world. Round, all around the world. Round, all around the world.</div><div>Thundercats are on the move, Thundercats are loose. Feel the magic, hear the roar, Thundercats are loose. Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thundercats!</div><div><br></div><div><div>Thundercats are on the move, Thundercats are loose. Feel the magic, hear the roar, Thundercats are loose. Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thundercats!</div>Thundercats are on the move, Thundercats are loose. Feel the magic, hear the roar, Thundercats are loose. Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thundercats!</div></div><div><div><br></div></div>', 4, 'award-from-uniesco', '160', 'publish', 'Down the road, that’s where I’ll always be. Every stop I make, I make a new friend. Can’t stay for long, just turn around and I’m gone again. Maybe tomorrow, I’ll want to settle down.\r\n\r\nthat’s where I’ll always be. Every stop I make, I make a new friend. Can’t stay for long, just turn around and I’m gone again. Maybe tomorrow, I’ll want to settle down.', 'award', 'award', 'Down the road, that’s where I’ll always be. Every stop I make, I make a new friend. Can’t stay for long, just turn around and I’m gone again. Maybe tomorrow, I’ll want to settle down, Until tomorrow', 'award', 'Down the road, that’s where I’ll always be. Every stop I make, I make a new friend. Can’t stay for long, just turn around and I’m gone again. Maybe tomorrow, I’ll want to settle down, Until tomorrow', '127', '2021-09-13 07:04:32', '2021-09-16 02:50:21'),
(2, 'ICIR Recommendation', '<p>There’s a voice that keeps on calling me. Down the road, that’s where I’ll always be. Every stop I make, I make a new friend. Can’t stay for long, just turn around and I’m gone again. Maybe tomorrow, I’ll want to settle down, Until tomorrow, I’ll just keep moving on. There’s a voice that keeps on calling me. Down the road, that’s where I’ll always be. Every stop I make, I make a new friend. Can’t stay for long, just turn around and I’m gone again. Maybe tomorrow, I’ll want to settle down, Until tomorrow, I’ll just keep moving on.</p><p><span style=\"color:rgb(0,0,0);font-size:14px;\">There’s a voice that keeps on calling me. Down the road, that’s where I’ll always be. Every stop I make, I make a new friend. Can’t stay for long, just turn around and I’m gone again. Maybe tomorrow, I’ll want to settle down, Until tomorrow, I’ll just keep moving on. There’s a voice that keeps on calling me. Down the road, that’s where I’ll always be. Every stop I make, I make a new friend. Can’t stay for long, just turn around and I’m gone again. Maybe tomorrow, I’ll want to settle down, Until tomorrow, I’ll just keep moving on.</span></p><p><span style=\"color:rgb(0,0,0);font-size:14px;\">There’s a voice that keeps on calling me. Down the road, that’s where I’ll always be. Every stop I make, I make a new friend. Can’t stay for long, just turn around and I’m gone again. Maybe tomorrow, I’ll want to settle down, Until tomorrow, I’ll just keep moving on. There’s a voice that keeps on calling me. Down the road, that’s where I’ll always be. Every stop I make, I make a new friend. Can’t stay for long, just turn around and I’m gone again. Maybe tomorrow, I’ll want to settle down, Until tomorrow, I’ll just keep moving on.</span><span style=\"color:rgb(0,0,0);font-size:14px;\"><br></span><br></p>', 6, 'icir-recommendation', '158', 'publish', 'Down the road, that’s where I’ll always be. Every stop I make, I make a new friend. Can’t stay for long, just turn around and I’m gone again. Maybe tomorrow, I’ll want to settle down.\r\n\r\nthat’s where I’ll always be. Every stop I make, I make a new friend. Can’t stay for long, just turn around and I’m gone again. Maybe tomorrow, I’ll want to settl', 'award', 'award', 'Down the road, that’s where I’ll always be. Every stop I make, I make a new friend. Can’t stay for long, just turn around and I’m gone again. Maybe tomorrow, I’ll want to settle down, Until tomorrow', 'award', 'Down the road, that’s where I’ll always be. Every stop I make, I make a new friend. Can’t stay for long, just turn around and I’m gone again. Maybe tomorrow, I’ll want to settle down, Until tomorrow', '127', '2021-09-13 07:26:38', '2021-09-16 02:50:09'),
(3, 'IGMA Award', '<div>Days around the world, we’ll find a pot of gold just sitting where the rainbow’s ending. Time — we’ll fight against the time, and we’ll fly on the white wings of the wind. 80 days around the world, no we won’t say a word before the ship is really back. Round, round, all around the world. Round, all around the world. Round, all around the world. Round, all around the world.</div><div><br></div><div>Thundercats are on the move, Thundercats are loose. Feel the magic, hear the roar, Thundercats are loose. Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thundercats!</div><div><br></div><div><div>Thundercats are on the move, Thundercats are loose. Feel the magic, hear the roar, Thundercats are loose. Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thundercats!</div><div><br></div></div>', 4, 'igma-award', '170', 'publish', 'Down the road, that’s where I’ll always be. Every stop I make, I make a new friend. Can’t stay for long, just turn around and I’m gone again. Maybe tomorrow, I’ll want to settle down.\r\n\r\nthat’s where I’ll always be. Every stop I make, I make a new friend. Can’t stay for long, just turn around and I’m gone again. Maybe tomorrow, I’ll want to settle down.', 'award', 'award', 'Down the road, that’s where I’ll always be. Every stop I make, I make a new friend. Can’t stay for long, just turn around and I’m gone again. Maybe tomorrow, I’ll want to settle down, Until tomorrow', 'award', 'Down the road, that’s where I’ll always be. Every stop I make, I make a new friend. Can’t stay for long, just turn around and I’m gone again. Maybe tomorrow, I’ll want to settle down, Until tomorrow', '127', '2021-09-13 22:29:29', '2021-09-16 02:49:58'),
(6, 'Annual Day Celebration', '<div>Days around the world, we’ll find a pot of gold just sitting where the rainbow’s ending. Time — we’ll fight against the time, and we’ll fly on the white wings of the wind. 80 days around the world, no we won’t say a word before the ship is really back. Round, round, all around the world. Round, all around the world. Round, all around the world. Round, all around the world.</div><div>Thundercats are on the move, Thundercats are loose. Feel the magic, hear the roar, Thundercats are loose. Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thundercats!</div><div><br></div><div><div>Thundercats are on the move, Thundercats are loose. Feel the magic, hear the roar, Thundercats are loose. Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thundercats!</div><div><br></div></div>', 4, 'annual-day-celebration', '196', 'publish', 'Down the road, that’s where I’ll always be. Every stop I make, I make a new friend. Can’t stay for long, just turn around and I’m gone again. Maybe tomorrow, I’ll want to settle down.\r\n\r\nthat’s where I’ll always be. Every stop I make, I make a new friend. Can’t stay for long, just turn around and I’m gone again. Maybe tomorrow, I’ll want to settle down.', 'award', 'award', 'Down the road, that’s where I’ll always be. Every stop I make, I make a new friend. Can’t stay for long, just turn around and I’m gone again. Maybe tomorrow, I’ll want to settle down, Until tomorrow', 'award', 'Down the road, that’s where I’ll always be. Every stop I make, I make a new friend. Can’t stay for long, just turn around and I’m gone again. Maybe tomorrow, I’ll want to settle down, Until tomorrow', '127', '2021-09-16 00:56:37', '2021-09-16 02:49:50'),
(7, 'National Peace Award', '<div>Days around the world, we’ll find a pot of gold just sitting where the rainbow’s ending. Time — we’ll fight against the time, and we’ll fly on the white wings of the wind. 80 days around the world, no we won’t say a word before the ship is really back. Round, round, all around the world. Round, all around the world. Round, all around the world. Round, all around the world.</div><div><br></div><div>Thundercats are on the move, Thundercats are loose. Feel the magic, hear the roar, Thundercats are loose. Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thundercats!</div><div><br></div><div><div>Thundercats are on the move, Thundercats are loose. Feel the magic, hear the roar, Thundercats are loose. Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thundercats!</div><div><br></div></div>', 6, 'national-peace-award', '197', 'publish', 'Down the road, that’s where I’ll always be. Every stop I make, I make a new friend. Can’t stay for long, just turn around and I’m gone again. Maybe tomorrow, I’ll want to settle down.\r\n\r\nthat’s where I’ll always be. Every stop I make, I make a new friend. Can’t stay for long, just turn around and I’m gone again. Maybe tomorrow, I’ll want to settle down.', 'award', 'award', 'Down the road, that’s where I’ll always be. Every stop I make, I make a new friend. Can’t stay for long, just turn around and I’m gone again. Maybe tomorrow, I’ll want to settle down, Until tomorrow', 'award', 'Down the road, that’s where I’ll always be. Every stop I make, I make a new friend. Can’t stay for long, just turn around and I’m gone again. Maybe tomorrow, I’ll want to settle down, Until tomorrow', '127', '2021-09-16 00:56:39', '2021-09-16 02:49:43'),
(8, 'IMF Contribution', '<div>Days around the world, we’ll find a pot of gold just sitting where the rainbow’s ending. Time — we’ll fight against the time, and we’ll fly on the white wings of the wind. 80 days around the world, no we won’t say a word before the ship is really back. Round, round, all around the world. Round, all around the world. Round, all around the world. Round, all around the world.</div><div>Thundercats are on the move, Thundercats are loose. Feel the magic, hear the roar, Thundercats are loose. Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thundercats!</div><div><br></div><div><div>Thundercats are on the move, Thundercats are loose. Feel the magic, hear the roar, Thundercats are loose. Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thunder, thunder, thunder, Thundercats! Thundercats</div><div><br></div></div>', 5, 'imf-contribution', '166', 'publish', 'Down the road, that’s where I’ll always be. Every stop I make, I make a new friend. Can’t stay for long, just turn around and I’m gone again. Maybe tomorrow, I’ll want to settle down.\r\n\r\nthat’s where I’ll always be. Every stop I make, I make a new friend. Can’t stay for long, just turn around and I’m gone again. Maybe tomorrow, I’ll want to settle down.', 'award', 'award', 'Down the road, that’s where I’ll always be. Every stop I make, I make a new friend. Can’t stay for long, just turn around and I’m gone again. Maybe tomorrow, I’ll want to settle down, Until tomorrow', 'award', 'Down the road, that’s where I’ll always be. Every stop I make, I make a new friend. Can’t stay for long, just turn around and I’m gone again. Maybe tomorrow, I’ll want to settle down, Until tomorrow', '127', '2021-09-16 00:56:40', '2021-09-16 04:11:48');

-- --------------------------------------------------------

--
-- Table structure for table `success_story_categories`
--

CREATE TABLE `success_story_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `success_story_categories`
--

INSERT INTO `success_story_categories` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(4, 'WHO', 'publish', '2021-09-13 06:10:32', '2021-09-13 06:10:32'),
(5, 'Private Organization', 'publish', '2021-09-13 06:10:42', '2021-09-13 06:10:42'),
(6, 'National', 'publish', '2021-09-13 06:10:53', '2021-09-13 06:14:38'),
(7, 'International', 'publish', '2021-09-13 06:11:05', '2021-09-13 06:11:05');

-- --------------------------------------------------------

--
-- Table structure for table `support_tickets`
--

CREATE TABLE `support_tickets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `admin_id` bigint(20) UNSIGNED DEFAULT NULL,
  `department_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci,
  `via` text COLLATE utf8mb4_unicode_ci,
  `operating_system` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci,
  `subject` text COLLATE utf8mb4_unicode_ci,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `priority` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `support_ticket_departments`
--

CREATE TABLE `support_ticket_departments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `support_ticket_departments`
--

INSERT INTO `support_ticket_departments` (`id`, `name`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Submit Issue', 'publish', '2021-09-20 07:20:04', '2021-09-20 07:20:04'),
(2, 'Login Issue', 'publish', '2021-09-20 07:21:08', '2021-09-20 07:21:08'),
(3, 'Payment Gateway', 'publish', '2021-09-20 07:21:56', '2021-09-20 07:21:56'),
(4, 'Cause Issue', 'publish', '2021-09-20 07:22:17', '2021-09-20 07:22:17'),
(5, 'Captcha Issue', 'publish', '2021-09-20 07:22:28', '2021-09-20 07:22:28');

-- --------------------------------------------------------

--
-- Table structure for table `support_ticket_messages`
--

CREATE TABLE `support_ticket_messages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `support_ticket_id` bigint(20) UNSIGNED DEFAULT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci,
  `notify` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tax_logs`
--

CREATE TABLE `tax_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `start_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `end_date` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attachment` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `team_members`
--

CREATE TABLE `team_members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_one` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_two` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_three` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_one_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_two_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_three_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `team_members`
--

INSERT INTO `team_members` (`id`, `name`, `designation`, `description`, `image`, `icon_one`, `icon_two`, `icon_three`, `icon_one_url`, `icon_two_url`, `icon_three_url`, `created_at`, `updated_at`) VALUES
(1, 'Siful Islam', '-Envato Cliente', NULL, '153', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', '#', '#', '#', '2020-07-20 11:18:55', '2021-02-22 14:40:18'),
(2, 'sharifur', 'Founder', NULL, '151', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', '#', '#', '#', '2020-07-20 11:19:23', '2021-02-22 14:39:58'),
(3, 'Olivia Hamel', '-Envato Cliente', NULL, '150', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', '#', '#', '#', '2020-07-20 11:19:43', '2021-02-22 14:39:46'),
(4, 'Sharifur Rahman', 'CEO Ir-Tech', NULL, '152', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', '#', '#', '#', '2020-07-20 11:20:02', '2021-02-22 14:39:30'),
(17, 'Barbara Linneman', 'Founder', NULL, '151', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', '#', '#', '#', '2021-03-11 17:13:35', '2021-03-11 17:25:35'),
(18, 'Terrell Boderquist', 'Founder', NULL, '153', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', '#', '#', '#', '2021-03-11 17:19:17', '2021-03-11 17:25:23'),
(19, 'Steven Tucker', 'Founder', NULL, '151', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', '#', '#', '#', '2021-03-11 17:22:21', '2021-03-11 17:25:12'),
(20, 'Dominic Fanning', 'Founder', NULL, '150', 'fab fa-instagram', 'fab fa-twitter', 'fab fa-facebook-f', '##', '#', '#', '2021-03-11 17:24:11', '2021-06-10 17:06:33');

-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

CREATE TABLE `testimonials` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `designation` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `name`, `image`, `description`, `status`, `designation`, `created_at`, `updated_at`) VALUES
(2, 'Siful Islam', '156', 'I found myself working in a true partnership that results in an extra incredible experience of us', 'publish', 'Customer', '2020-06-05 06:40:03', '2021-02-23 10:50:43'),
(3, 'Elvira Siebert', '155', 'I found myself working in a true partnership that results in an extra incredible experience of us', 'publish', 'Customer', '2020-06-05 06:43:31', '2021-02-23 10:50:32'),
(4, 'Sheree Derouen', '154', 'I found myself working in a true partnership that results in an extra incredible experience of us', 'publish', 'Customer', '2020-06-05 06:43:34', '2021-02-22 18:35:19'),
(5, 'Sheree Derouen', '155', 'I found myself working in a true partnership that results in an extra incredible experience of us', 'publish', 'Müşteri', '2020-06-05 06:44:55', '2021-06-21 11:47:43'),
(17, 'Nur Fuad', '156', 'I found myself working in a true partnership that results in an extra incredible experience of us', 'publish', 'Founder', '2020-07-29 19:05:33', '2021-06-21 11:47:36'),
(18, 'Eric Guillen', '155', 'I found myself working in a true partnership that results in an extra incredible experience of us', 'publish', 'Customer', '2021-03-11 18:25:28', '2021-03-11 21:31:41'),
(20, 'Terry Espinoza ok', '156', 'I found myself working in a true partnership that results in an extra incredible experience of us', 'publish', 'Customer', '2021-03-11 21:31:49', '2022-02-15 04:33:35');

-- --------------------------------------------------------

--
-- Table structure for table `topbar_infos`
--

CREATE TABLE `topbar_infos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '0',
  `email_verify_token` text COLLATE utf8mb4_unicode_ci,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zipcode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `facebook_id` text COLLATE utf8mb4_unicode_ci,
  `google_id` text COLLATE utf8mb4_unicode_ci,
  `monthly_income` int(11) DEFAULT NULL,
  `annual_income` int(11) DEFAULT NULL,
  `income_source` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nid_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driving_license_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `passport_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tax_verify_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `campaign_permission` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'off',
  `user_verify_nid` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_verify_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_verify_status` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_follow`
--

CREATE TABLE `user_follow` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `campaign_owner_id` bigint(20) UNSIGNED NOT NULL,
  `follow_status` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unfollow',
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `widgets`
--

CREATE TABLE `widgets` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `widget_name` text COLLATE utf8mb4_unicode_ci,
  `widget_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `widget_order` int(11) DEFAULT NULL,
  `widget_location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `widgets`
--

INSERT INTO `widgets` (`id`, `widget_name`, `widget_content`, `widget_order`, `widget_location`, `created_at`, `updated_at`) VALUES
(29, 'AboutUsWidget', 'a:7:{s:2:\"id\";s:2:\"29\";s:11:\"widget_name\";s:13:\"AboutUsWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:6:\"footer\";s:12:\"widget_order\";s:1:\"1\";s:9:\"site_logo\";s:3:\"126\";s:11:\"description\";s:162:\"We are a non-profit organisation in USA that works towards supporting underprivileged children reach their full potential - physical, mental as well as emotional.\";}', 1, 'footer', '2021-03-08 20:57:54', '2021-06-16 14:47:17'),
(30, 'ContactInfoWidget', 'a:9:{s:2:\"id\";s:2:\"30\";s:11:\"widget_name\";s:17:\"ContactInfoWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:6:\"footer\";s:12:\"widget_order\";s:1:\"2\";s:12:\"widget_title\";s:10:\"Contact us\";s:8:\"location\";s:17:\"Dhaka, Bangladesh\";s:5:\"phone\";s:11:\"01875484888\";s:5:\"email\";s:20:\"support@fundorex.com\";}', 3, 'footer', '2021-03-08 21:05:37', '2021-06-21 11:42:07'),
(32, 'RecentBlogPostWidget', 'a:7:{s:2:\"id\";s:2:\"32\";s:11:\"widget_name\";s:20:\"RecentBlogPostWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:6:\"footer\";s:12:\"widget_order\";s:1:\"4\";s:12:\"widget_title\";s:12:\"Recent Posts\";s:10:\"post_items\";s:1:\"2\";}', 2, 'footer', '2021-03-09 12:52:48', '2021-06-21 11:42:07'),
(35, 'RecentEventWidget', 'a:7:{s:2:\"id\";s:2:\"35\";s:11:\"widget_name\";s:17:\"RecentEventWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:5:\"event\";s:12:\"widget_order\";s:1:\"2\";s:12:\"widget_title\";s:13:\"Recent Events\";s:10:\"post_items\";s:1:\"5\";}', 3, 'event', '2021-03-09 16:00:03', '2021-07-27 20:35:15'),
(36, 'EventCategoryWidget', 'a:7:{s:2:\"id\";s:2:\"36\";s:11:\"widget_name\";s:19:\"EventCategoryWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:5:\"event\";s:12:\"widget_order\";s:1:\"3\";s:12:\"widget_title\";s:14:\"Event Category\";s:10:\"post_items\";s:1:\"5\";}', 4, 'event', '2021-03-09 16:56:54', '2021-07-27 20:35:15'),
(37, 'EventSearchWidget', 'a:6:{s:2:\"id\";s:2:\"37\";s:11:\"widget_name\";s:17:\"EventSearchWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:5:\"event\";s:12:\"widget_order\";s:1:\"1\";s:12:\"widget_title\";N;}', 2, 'event', '2021-03-09 17:52:02', '2021-07-27 20:35:14'),
(38, 'RecentBlogPostWidget', 'a:7:{s:2:\"id\";s:2:\"38\";s:11:\"widget_name\";s:20:\"RecentBlogPostWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:4:\"blog\";s:12:\"widget_order\";s:1:\"2\";s:12:\"widget_title\";s:12:\"Recent Posts\";s:10:\"post_items\";s:1:\"5\";}', 2, 'blog', '2021-03-09 17:59:18', '2021-06-17 15:33:48'),
(39, 'BlogSearchWidget', 'a:6:{s:2:\"id\";s:2:\"39\";s:11:\"widget_name\";s:16:\"BlogSearchWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:4:\"blog\";s:12:\"widget_order\";s:1:\"1\";s:13:\"widget_title_\";s:6:\"Search\";}', 1, 'blog', '2021-03-09 18:00:22', '2021-06-17 15:34:19'),
(40, 'BlogCategoryWidget', 'a:7:{s:2:\"id\";s:2:\"40\";s:11:\"widget_name\";s:18:\"BlogCategoryWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:4:\"blog\";s:12:\"widget_order\";s:1:\"3\";s:12:\"widget_title\";s:10:\"Categories\";s:10:\"post_items\";s:1:\"3\";}', 3, 'blog', '2021-03-09 18:00:37', '2021-06-17 15:34:04'),
(41, 'JobSearchWidget', 'a:6:{s:2:\"id\";s:2:\"41\";s:11:\"widget_name\";s:15:\"JobSearchWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:3:\"job\";s:12:\"widget_order\";s:1:\"1\";s:12:\"widget_title\";N;}', 2, 'job', '2021-03-09 18:49:52', '2021-07-27 20:36:39'),
(42, 'JobCategoryWidget', 'a:7:{s:2:\"id\";s:2:\"42\";s:11:\"widget_name\";s:17:\"JobCategoryWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:3:\"job\";s:12:\"widget_order\";s:1:\"3\";s:12:\"widget_title\";s:10:\"Categories\";s:10:\"post_items\";s:1:\"5\";}', 4, 'job', '2021-03-09 19:07:24', '2021-07-27 20:36:39'),
(43, 'RecentJobPostWidget', 'a:7:{s:2:\"id\";s:2:\"43\";s:11:\"widget_name\";s:19:\"RecentJobPostWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:3:\"job\";s:12:\"widget_order\";s:1:\"2\";s:12:\"widget_title\";s:11:\"Recent Jobs\";s:10:\"post_items\";s:1:\"4\";}', 3, 'job', '2021-03-09 19:18:52', '2021-07-27 20:36:39'),
(44, 'NewsletterWidget', 'a:7:{s:2:\"id\";s:2:\"44\";s:11:\"widget_name\";s:16:\"NewsletterWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:6:\"footer\";s:12:\"widget_order\";s:1:\"4\";s:12:\"widget_title\";s:9:\"Subscribe\";s:11:\"description\";s:49:\"join our newsletter to get latest update form us.\";}', 4, 'footer', '2021-06-21 11:30:03', '2021-06-21 13:12:20'),
(45, 'RecentSuccessStoryWidget', 'a:7:{s:2:\"id\";s:2:\"45\";s:11:\"widget_name\";s:24:\"RecentSuccessStoryWidget\";s:11:\"widget_type\";s:6:\"update\";s:15:\"widget_location\";s:13:\"success-story\";s:12:\"widget_order\";s:1:\"1\";s:12:\"widget_title\";s:22:\"Recent Success Stories\";s:10:\"post_items\";s:1:\"3\";}', 1, 'success-story', '2021-09-16 02:35:52', '2021-09-18 05:30:56'),
(46, 'SuccessStoryCategoryWidget', 'a:6:{s:11:\"widget_name\";s:26:\"SuccessStoryCategoryWidget\";s:11:\"widget_type\";s:3:\"new\";s:15:\"widget_location\";s:13:\"success-story\";s:12:\"widget_order\";s:1:\"1\";s:12:\"widget_title\";s:24:\"Success Story Categories\";s:10:\"post_items\";s:1:\"4\";}', 2, 'success-story', '2021-09-16 02:39:19', '2021-09-16 02:55:01');

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
-- Indexes for table `admin_roles`
--
ALTER TABLE `admin_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `blog_categories_name_unique` (`name`);

--
-- Indexes for table `causes`
--
ALTER TABLE `causes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cause_categories`
--
ALTER TABLE `cause_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cause_gift`
--
ALTER TABLE `cause_gift`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cause_logs`
--
ALTER TABLE `cause_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cause_updates`
--
ALTER TABLE `cause_updates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_areas`
--
ALTER TABLE `client_areas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_info_items`
--
ALTER TABLE `contact_info_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `counterups`
--
ALTER TABLE `counterups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donation_withdraws`
--
ALTER TABLE `donation_withdraws`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events_categories`
--
ALTER TABLE `events_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_attendances`
--
ALTER TABLE `event_attendances`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_payment_logs`
--
ALTER TABLE `event_payment_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `flag_reports`
--
ALTER TABLE `flag_reports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `gifts`
--
ALTER TABLE `gifts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `header_sliders`
--
ALTER TABLE `header_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_galleries`
--
ALTER TABLE `image_galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `image_gallery_categories`
--
ALTER TABLE `image_gallery_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs_categories`
--
ALTER TABLE `jobs_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_applicants`
--
ALTER TABLE `job_applicants`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `key_features`
--
ALTER TABLE `key_features`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media_uploads`
--
ALTER TABLE `media_uploads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mobile_sliders`
--
ALTER TABLE `mobile_sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `newsletters`
--
ALTER TABLE `newsletters`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `newsletters_email_unique` (`email`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
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
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `quotes`
--
ALTER TABLE `quotes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `recurings`
--
ALTER TABLE `recurings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rewards`
--
ALTER TABLE `rewards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reward_redeems`
--
ALTER TABLE `reward_redeems`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `service_categories`
--
ALTER TABLE `service_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_icons`
--
ALTER TABLE `social_icons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `static_options`
--
ALTER TABLE `static_options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `success_stories`
--
ALTER TABLE `success_stories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `success_story_categories`
--
ALTER TABLE `success_story_categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `success_story_categories_name_unique` (`name`);

--
-- Indexes for table `support_tickets`
--
ALTER TABLE `support_tickets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_ticket_departments`
--
ALTER TABLE `support_ticket_departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `support_ticket_messages`
--
ALTER TABLE `support_ticket_messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_logs`
--
ALTER TABLE `tax_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `team_members`
--
ALTER TABLE `team_members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimonials`
--
ALTER TABLE `testimonials`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topbar_infos`
--
ALTER TABLE `topbar_infos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- Indexes for table `user_follow`
--
ALTER TABLE `user_follow`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `widgets`
--
ALTER TABLE `widgets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `admin_roles`
--
ALTER TABLE `admin_roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `causes`
--
ALTER TABLE `causes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `cause_categories`
--
ALTER TABLE `cause_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cause_gift`
--
ALTER TABLE `cause_gift`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `cause_logs`
--
ALTER TABLE `cause_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cause_updates`
--
ALTER TABLE `cause_updates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `client_areas`
--
ALTER TABLE `client_areas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contact_info_items`
--
ALTER TABLE `contact_info_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `counterups`
--
ALTER TABLE `counterups`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=248;

--
-- AUTO_INCREMENT for table `donation_withdraws`
--
ALTER TABLE `donation_withdraws`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `events_categories`
--
ALTER TABLE `events_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `event_attendances`
--
ALTER TABLE `event_attendances`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=192;

--
-- AUTO_INCREMENT for table `event_payment_logs`
--
ALTER TABLE `event_payment_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `flag_reports`
--
ALTER TABLE `flag_reports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gifts`
--
ALTER TABLE `gifts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `header_sliders`
--
ALTER TABLE `header_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `image_galleries`
--
ALTER TABLE `image_galleries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `image_gallery_categories`
--
ALTER TABLE `image_gallery_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `jobs_categories`
--
ALTER TABLE `jobs_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `job_applicants`
--
ALTER TABLE `job_applicants`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `key_features`
--
ALTER TABLE `key_features`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `languages`
--
ALTER TABLE `languages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `media_uploads`
--
ALTER TABLE `media_uploads`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=285;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=104;

--
-- AUTO_INCREMENT for table `mobile_sliders`
--
ALTER TABLE `mobile_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `newsletters`
--
ALTER TABLE `newsletters`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=478;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `quotes`
--
ALTER TABLE `quotes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recurings`
--
ALTER TABLE `recurings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `rewards`
--
ALTER TABLE `rewards`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `reward_redeems`
--
ALTER TABLE `reward_redeems`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `service_categories`
--
ALTER TABLE `service_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `social_icons`
--
ALTER TABLE `social_icons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `static_options`
--
ALTER TABLE `static_options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2706;

--
-- AUTO_INCREMENT for table `success_stories`
--
ALTER TABLE `success_stories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `success_story_categories`
--
ALTER TABLE `success_story_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `support_tickets`
--
ALTER TABLE `support_tickets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `support_ticket_departments`
--
ALTER TABLE `support_ticket_departments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `support_ticket_messages`
--
ALTER TABLE `support_ticket_messages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tax_logs`
--
ALTER TABLE `tax_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `team_members`
--
ALTER TABLE `team_members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `testimonials`
--
ALTER TABLE `testimonials`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `topbar_infos`
--
ALTER TABLE `topbar_infos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user_follow`
--
ALTER TABLE `user_follow`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `widgets`
--
ALTER TABLE `widgets`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
