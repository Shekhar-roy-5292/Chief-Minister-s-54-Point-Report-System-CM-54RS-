-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 11, 2022 at 09:19 AM
-- Server version: 5.7.33
-- PHP Version: 8.1.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nic1`
--

-- --------------------------------------------------------

--
-- Table structure for table `anandadhara`
--

CREATE TABLE `anandadhara` (
  `districtcd` char(2) NOT NULL,
  `subdivisioncd` char(4) NOT NULL,
  `blockminicd` char(6) NOT NULL,
  `reporting_month` int(2) NOT NULL,
  `reporting_year` int(4) NOT NULL,
  `tot_SHGs_formed` int(10) NOT NULL,
  `tot_SHGs_credit_linkage` int(10) NOT NULL,
  `user_code` int(4) NOT NULL,
  `posted_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anandadhara`
--

INSERT INTO `anandadhara` (`districtcd`, `subdivisioncd`, `blockminicd`, `reporting_month`, `reporting_year`, `tot_SHGs_formed`, `tot_SHGs_credit_linkage`, `user_code`, `posted_date`) VALUES
('02', '0201', '020104', 6, 2022, 9000, 900, 16, '2022-07-22 15:51:55');

-- --------------------------------------------------------

--
-- Table structure for table `block_muni`
--

CREATE TABLE `block_muni` (
  `blockminicd` char(6) COLLATE utf8_unicode_ci NOT NULL,
  `subdivisioncd` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `blockmuni` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `block_or_muni` char(1) COLLATE utf8_unicode_ci DEFAULT NULL,
  `districtcd` char(2) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usercode` int(5) NOT NULL,
  `posted_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `block_muni`
--

INSERT INTO `block_muni` (`blockminicd`, `subdivisioncd`, `blockmuni`, `block_or_muni`, `districtcd`, `usercode`, `posted_date`) VALUES
('020101', '0201', 'SADAR', 'B', '02', 1, '2018-11-13 10:22:19'),
('020102', '0201', 'RAJGANJ', 'B', '02', 1, '2018-11-13 10:22:19'),
('020103', '0201', 'MAYNAGURI', 'B', '02', 1, '2018-11-13 10:22:19'),
('020104', '0201', 'DHUPGURI', 'B', '02', 1, '2018-11-13 10:22:19'),
('020108', '0201', 'JALPAIGURI MUNICIPALITY', 'M', '02', 1, '2018-11-13 10:22:19'),
('020109', '0201', 'DHUPGURI MUNICIPALITY', 'M', '02', 1, '2018-11-13 10:22:19'),
('020305', '0203', 'MAL', 'B', '02', 1, '2018-11-13 10:22:19'),
('020306', '0203', 'MATIALI', 'B', '02', 1, '2018-11-13 10:22:19'),
('020307', '0203', 'NAGRAKATA', 'B', '02', 1, '2018-11-13 10:22:19'),
('020310', '0203', 'MAL MUNICIPALITY', 'M', '02', 1, '2018-11-13 10:22:19');

-- --------------------------------------------------------

--
-- Table structure for table `district`
--

CREATE TABLE `district` (
  `districtcd` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `district` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `usercode` int(5) NOT NULL,
  `posted_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `district`
--

INSERT INTO `district` (`districtcd`, `district`, `usercode`, `posted_date`) VALUES
('01', 'COOCHBEHAR', 1, '2018-08-29 01:02:57'),
('02', 'JALPAIGURI', 1, '2018-08-29 01:02:57'),
('03', 'DARJEELING', 1, '2018-08-29 01:02:57'),
('04', 'UTTAR DINAJPUR', 1, '2018-08-29 01:02:57'),
('05', 'DAKSHIN DINAJPUR', 1, '2018-08-29 01:02:57'),
('06', 'MALDAHA', 1, '2018-08-29 01:02:57'),
('07', 'MURSHIDABAD', 1, '2018-08-29 01:02:57'),
('08', 'NADIA', 1, '2018-08-29 01:02:57'),
('09', 'NORTH 24 PARGANAS', 1, '2018-08-29 01:02:57'),
('10', 'SOUTH 24 PARGANAS', 1, '2018-08-29 01:02:57'),
('11', 'KOLKATA NORTH', 1, '2018-08-29 01:02:57'),
('12', 'HOWRAH', 1, '2018-08-29 01:02:57'),
('13', 'HOOGHLY', 1, '2018-08-29 01:02:57'),
('14', 'PURBA MEDINIPUR', 1, '2018-08-29 01:02:57'),
('15', 'PASCHIM MEDINIPUR', 1, '2018-08-29 01:02:57'),
('16', 'PURULIA', 1, '2018-08-29 01:02:57'),
('17', 'BANKURA', 1, '2018-08-29 01:02:57'),
('18', 'PURBA BARDHAMAN', 1, '2018-08-29 01:02:57'),
('19', 'BIRBHUM', 1, '2018-08-29 01:02:57'),
('20', 'PASCHIM BARDHAMAN', 1, '2018-08-29 01:02:57'),
('21', 'ALIPURDUAR', 1, '2018-08-29 01:02:57'),
('22', 'JHARGRAM', 1, '2018-08-29 01:02:57'),
('23', 'KALIMPONG', 1, '2018-08-29 01:02:57'),
('24', 'KOLKATA SOUTH', 1, '2018-08-29 01:02:57'),
('99', 'OTHER', 1, '2018-08-30 20:02:36');

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
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kishan_credit_card`
--

CREATE TABLE `kishan_credit_card` (
  `districtcd` char(2) NOT NULL,
  `subdivisioncd` char(4) NOT NULL,
  `blockminicd` char(6) NOT NULL,
  `reporting_month` int(2) NOT NULL,
  `reporting_year` int(4) NOT NULL,
  `KCC_target` int(10) NOT NULL,
  `KCC_sponsored` int(10) NOT NULL,
  `KCC_sanctioned` int(10) NOT NULL,
  `Percentage_sponsored` decimal(19,4) NOT NULL,
  `user_code` int(4) NOT NULL,
  `posted_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kishan_credit_card`
--

INSERT INTO `kishan_credit_card` (`districtcd`, `subdivisioncd`, `blockminicd`, `reporting_month`, `reporting_year`, `KCC_target`, `KCC_sponsored`, `KCC_sanctioned`, `Percentage_sponsored`, `user_code`, `posted_date`) VALUES
('02', '0201', '020104', 6, 2022, 7000, 700, 700, '10.0000', 13, '2022-07-22 15:50:40'),
('02', '0201', '020104', 4, 2022, 6050, 650, 6326, '10.7438', 13, '2022-11-11 21:50:57'),
('02', '0201', '020104', 1, 2022, 100, 100, 100, '100.0000', 18, '2022-11-11 21:58:01');

-- --------------------------------------------------------

--
-- Table structure for table `kishan_mandi`
--

CREATE TABLE `kishan_mandi` (
  `districtcd` char(2) NOT NULL,
  `subdivisioncd` char(4) NOT NULL,
  `blockminicd` char(6) NOT NULL,
  `reporting_month` int(2) NOT NULL,
  `reporting_year` int(4) NOT NULL,
  `KM_operational` char(2) NOT NULL DEFAULT 'PO',
  `KM_sanctioned` int(10) NOT NULL,
  `user_code` int(4) NOT NULL,
  `posted_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kishan_mandi`
--

INSERT INTO `kishan_mandi` (`districtcd`, `subdivisioncd`, `blockminicd`, `reporting_month`, `reporting_year`, `KM_operational`, `KM_sanctioned`, `user_code`, `posted_date`) VALUES
('02', '0201', '020104', 6, 2022, 'FO', 8000, 15, '2022-07-22 15:51:20'),
('02', '0201', '020101', 7, 2022, 'FO', 1, 15, '2022-07-22 21:48:06'),
('02', '0201', '020104', 1, 2022, 'PO', 200, 15, '2022-11-11 22:28:55');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `menu_cd` int(10) NOT NULL,
  `menu` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(30) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usercode` int(5) NOT NULL,
  `posted_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`menu_cd`, `menu`, `link`, `usercode`, `posted_date`) VALUES
(3, 'Kishan Credit Card', NULL, 1, '2018-09-02 00:37:59'),
(4, 'Kishan Mandi ', NULL, 1, '2018-09-06 20:37:45'),
(5, 'MGNREGS', NULL, 1, '2018-09-09 21:21:08'),
(6, 'Anandadhara', NULL, 1, '2018-09-17 18:54:29');

-- --------------------------------------------------------

--
-- Table structure for table `mgnregs`
--

CREATE TABLE `mgnregs` (
  `districtcd` char(2) NOT NULL,
  `subdivisioncd` char(4) NOT NULL,
  `blockminicd` char(6) NOT NULL,
  `reporting_month` int(2) NOT NULL,
  `reporting_year` int(4) NOT NULL,
  `tot_person_days_generate` int(10) NOT NULL,
  `KCC_sponsored` int(10) NOT NULL,
  `avg_persondays_per_household` decimal(19,4) NOT NULL,
  `percentage_of_labour_budget_achieved` decimal(19,4) NOT NULL,
  `user_code` int(4) NOT NULL,
  `posted_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `expenditure_made_under_mgnrega` decimal(8,2) NOT NULL DEFAULT '5444.44'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mgnregs`
--

INSERT INTO `mgnregs` (`districtcd`, `subdivisioncd`, `blockminicd`, `reporting_month`, `reporting_year`, `tot_person_days_generate`, `KCC_sponsored`, `avg_persondays_per_household`, `percentage_of_labour_budget_achieved`, `user_code`, `posted_date`, `expenditure_made_under_mgnrega`) VALUES
('02', '0201', '020104', 6, 2022, 5000, 500, '4505.0000', '504.0000', 14, '2022-07-22 15:52:42', '4000.00');

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
(5, '2022_04_27_165100_add__expenditure_made_under__m_g_n_r_e_g_a_column_to_table_mgnregs', 2);

-- --------------------------------------------------------

--
-- Table structure for table `month_tbl`
--

CREATE TABLE `month_tbl` (
  `month` int(2) NOT NULL,
  `month_name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `month_tbl`
--

INSERT INTO `month_tbl` (`month`, `month_name`) VALUES
(1, 'January'),
(2, 'February'),
(3, 'March'),
(4, 'April'),
(5, 'May'),
(6, 'June'),
(7, 'July'),
(8, 'August'),
(9, 'September'),
(10, 'October'),
(11, 'November'),
(12, 'December');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('imrankhan96799@gmail.com', 'kR6hxtIr9RMoZzkCoK9Z07MEPzIB8o0MLyjwzdNcaLxNbBpYPYeUG8nMhowHqyrM', '2022-06-17 13:11:19'),
('imrankhan96799@gmail.com', 'chv6kLMCoWV59Ij2VhGcLW9pEzpd2PnkTNj7ak14GkIvrtUlE2AUHck0N9LpVyJd', '2022-06-17 13:15:59'),
('imrankhan96799@gmail.com', 'qTjb7RXzAwYd9aPgQ02D3hFro0MzcdUBc4iigQYPC9cZQE85ysDZMbGDqaypRgnE', '2022-06-17 13:17:37'),
('imrankhan96799@gmail.com', 'NrdXK7oA4NbGjVQK9UNyXejsaSNTrssxa9GxN4lXdA8WdG7vMsNAK4MPnuFdOV2Z', '2022-06-17 13:19:14'),
('imrankhan96799@gmail.com', 'bVe8XOaqKunXo30JUa3rxXAPKv5yav8SnLpXahE9pHV6oF0DIG4VgFuDjPHFRX7G', '2022-06-18 07:05:54'),
('imran.khan96799@gmail.com', 'zsZQjgxiaR74N2AKP9OUwPAPbTfwmJAalIXEmGN4r2wiuEGLHt6L3zvm6RQbxgzZ', '2022-06-24 14:40:02'),
('imran.khan96799@gmail.com', 'BU3rGWiEaTTfosLXwlVbzqwoxRPh6qcx3jTlipmAdYpTmKjswmq5uT8ZRBm2lTDe', '2022-06-24 14:41:12'),
('imran.khan96799@gmail.com', 'jSLlwwgRc6LMGvKjAl6DUq3mjtH3Lh3LldmPcRhBieIGFQb3HINohRrMW9O8QI9P', '2022-06-24 14:43:07'),
('imran.khan96799@gmail.com', 'jIhqHGI3HPxblrMksijJcVbyTGe5toWuuydFcyyVAdVpgCHejj42ApmNLXgLhnBQ', '2022-06-24 14:43:38'),
('imran.khan96799@gmail.com', 'QKnifaTRE3oz7qjCZl6h4SuNp5nDMhBpn3Dcr4HAHROismF9N84ahIkdmETQdBtr', '2022-06-24 14:44:25'),
('imran.khan96799@gmail.com', 'Prn2v1gxGw88reJC3fjVlbYw9JXfumJ3jwSB7ajKtu8JDCKny5A1fX6KeifiWvIp', '2022-06-24 14:49:38'),
('imran.khan96799@gmail.com', 'qOZVQO5pS9pZSHPOE5RWYQFbnmPMbLcdycJ6db8jcYBUmGUGeVN0h4FYIoFc08Ui', '2022-06-24 14:53:54'),
('imran.khan96799@gmail.com', 'SmQeBQrqgr2YsbpYqNGIL1ydpTFNFXWlCevLBAIQMwskWqEGAk10SPg6utSKwmCb', '2022-06-24 14:55:34'),
('imran.khan96799@gmail.com', '6eRpl1K7drtXAaBCDBi11R8sGe9uuWn2OGJJu09IEQTTcwzgWx7WRHCdqG3DWNqf', '2022-06-24 15:04:23'),
('imran.khan96799@gmail.com', 'oIPoT5A4Ao2Q1FFuL6JQaDEyhPix5wTluE1zLvxYpbLoyxTtOk90JNMscOQi7gbs', '2022-06-24 15:06:56'),
('imran.khan96799@gmail.com', 'FkmuCMv1PRms0xptXky9eVF24BmQBYhkE7hPc5B21M6zw4suwgsLkOr2gYKGYgms', '2022-06-24 15:09:12'),
('suvojit.sengupta.ssg@gmail.com', 'OP6NE8dfUcMEuIqEgIc7GMFAAXwltNNhbkuxeY9h50VtI5nesiyKQ1sEQ7ZqnLVK', '2022-07-12 15:21:51');

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
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subdivision`
--

CREATE TABLE `subdivision` (
  `subdivisioncd` char(4) COLLATE utf8_unicode_ci NOT NULL,
  `districtcd` char(2) COLLATE utf8_unicode_ci NOT NULL,
  `subdivision` varchar(25) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usercode` int(5) NOT NULL,
  `posted_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subdivision`
--

INSERT INTO `subdivision` (`subdivisioncd`, `districtcd`, `subdivision`, `usercode`, `posted_date`) VALUES
('0201', '02', 'Jalpaiguri', 1, '2018-11-13 10:21:58'),
('0203', '02', 'Mal', 1, '2018-11-13 10:21:58');

-- --------------------------------------------------------

--
-- Table structure for table `submenu`
--

CREATE TABLE `submenu` (
  `submenu_cd` int(4) NOT NULL,
  `menu_cd` int(2) NOT NULL,
  `submenu` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `link` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `usercode` int(5) NOT NULL,
  `posted_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `submenu`
--

INSERT INTO `submenu` (`submenu_cd`, `menu_cd`, `submenu`, `link`, `usercode`, `posted_date`) VALUES
(1, 3, 'KCC Entry Update', 'KCC_entry_update', 1, '2022-03-22 08:49:52'),
(2, 3, 'Month year wise KCC Report', 'KCC_Report', 1, '2022-03-22 08:49:52'),
(3, 4, 'KM entry update', 'KM_entry_update', 1, '2022-04-08 15:23:54'),
(4, 4, 'Month Year wise KM Report', 'KM_report', 1, '2022-04-08 15:23:54'),
(5, 5, 'MGNREGS Entry update', 'MGNREGS_Entry_update', 1, '2022-04-08 15:23:54'),
(6, 5, 'Month Year wise MGNREGS Report', 'MGNREGS_report', 1, '2022-04-08 15:23:54'),
(7, 6, 'Anandadhara Entry Update', 'Anandadhara_Entry_Update', 1, '2022-04-08 15:23:54'),
(8, 6, 'Month Year wise Anandadhara report', 'Anandadhara_report', 1, '2022-04-08 15:23:54');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobileno` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `usertype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'normal',
  `designation` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `districtcd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subdivisioncd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parliamentcd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `assemblycd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `blockmunicd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zonecd` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_approved` tinyint(1) NOT NULL DEFAULT '0',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `mobileno`, `email`, `usertype`, `designation`, `category`, `districtcd`, `subdivisioncd`, `parliamentcd`, `assemblycd`, `blockmunicd`, `zonecd`, `is_approved`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(3, 'Admin', NULL, 'nic.jalpaiguri.admin@gmail.com', 'admin', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '$2y$10$qMJI6u1kGvGcDL.mmagEoO.dQFW8ZAtVAX/XFxQu/B7bnnfNShuJ2', NULL, '2022-04-18 06:38:43', '2022-04-18 06:38:43'),
(13, 'KCC User', NULL, 'nic.jalpaiguri@gmail.com', 'normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '$2y$10$qzGjqrdzJhlyFZ.gmO7wXuc9mToS/NxHuofyTjREGkqQqu9RrGI0a', NULL, '2022-07-12 16:06:03', '2022-07-12 16:10:00'),
(14, 'MGNRGS User', NULL, 'nic.jalpaiguri.mgnregs@gmail.com', 'normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '$2y$10$2J78OyVRvoVnbyjK3aFpq.gfHs0Mve7gRma/B4k41z5q/Aqi5O/Ya', NULL, '2022-07-12 16:08:28', '2022-07-12 16:10:03'),
(15, 'KM User', NULL, 'nic.jalpaiguri.km@gmail.com', 'normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '$2y$10$ztnFCRHCkW5Z4kpB3Mzxpe5kWVr7BYnZZCw90eWSBkCubbAf/4zFS', NULL, '2022-07-12 16:09:00', '2022-07-12 16:10:01'),
(16, 'ANANDADHARA', NULL, 'nic.jalpaiguri.anandadhara@gmail.com', 'normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '$2y$10$E02MQPysRcxOpNWdoU0P..qCI5S.ykwycfREX7CjyZi0tPjW0NLLS', NULL, '2022-07-12 16:09:46', '2022-07-12 16:10:05'),
(17, 'KCC User 2', NULL, 'nic.jalpaiguri.ahbtrhrjh5trjh@gmail.com', 'normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '$2y$10$9c8y/Fh3OowCUgeNcmI13eSIzAdq.g010YMdR7y5US7j6rRPJFx9C', NULL, '2022-07-22 15:34:50', '2022-07-22 15:35:09'),
(18, 'KCCUSER1', NULL, 'mm@nic.in', 'normal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, '$2y$10$hpFYUIcWM59qx98LLezBEu84hNTj23/eWuaSXO/AMFQX4NggzLjiq', NULL, '2022-11-11 21:55:47', '2022-11-11 21:55:57');

-- --------------------------------------------------------

--
-- Table structure for table `user_permission`
--

CREATE TABLE `user_permission` (
  `code` int(11) NOT NULL,
  `user_cd` int(11) NOT NULL,
  `menu_cd` int(11) NOT NULL,
  `submenu_cd` int(11) DEFAULT NULL,
  `sub_submenu_cd` int(11) DEFAULT NULL,
  `show_status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_permission`
--

INSERT INTO `user_permission` (`code`, `user_cd`, `menu_cd`, `submenu_cd`, `sub_submenu_cd`, `show_status`) VALUES
(1, 1, 3, 1, NULL, 0),
(2, 1, 3, 2, NULL, 1),
(3, 2, 3, 1, NULL, 1),
(4, 2, 3, 2, NULL, 1),
(5, 1, 4, 3, NULL, 0),
(6, 1, 4, 4, NULL, 0),
(7, 1, 5, 5, NULL, 0),
(8, 1, 5, 6, NULL, 0),
(9, 1, 6, 7, NULL, 0),
(10, 1, 6, 8, NULL, 0),
(11, 2, 4, 3, NULL, 0),
(12, 2, 4, 4, NULL, 0),
(15, 4, 3, 1, NULL, 0),
(16, 4, 3, 2, NULL, 0),
(17, 5, 3, 1, NULL, 0),
(18, 5, 3, 2, NULL, 0),
(29, 6, 4, 3, NULL, 0),
(30, 6, 4, 4, NULL, 0),
(31, 6, 3, 1, NULL, 0),
(32, 6, 3, 2, NULL, 0),
(33, 6, 6, 7, NULL, 0),
(34, 6, 6, 8, NULL, 0),
(35, 5, 4, 3, NULL, 0),
(36, 5, 4, 4, NULL, 0),
(37, 6, 5, 5, NULL, 0),
(38, 6, 5, 6, NULL, 0),
(39, 7, 3, 1, NULL, 0),
(40, 7, 3, 2, NULL, 0),
(41, 10, 3, 1, NULL, 0),
(42, 10, 3, 2, NULL, 0),
(43, 10, 6, 7, NULL, 0),
(44, 10, 6, 8, NULL, 0),
(45, 12, 3, 1, NULL, 0),
(46, 12, 3, 2, NULL, 0),
(47, 12, 5, 5, NULL, 0),
(48, 12, 5, 6, NULL, 0),
(49, 12, 4, 3, NULL, 0),
(50, 12, 4, 4, NULL, 0),
(51, 10, 5, 5, NULL, 0),
(52, 10, 5, 6, NULL, 0),
(53, 13, 3, 1, NULL, 0),
(54, 13, 3, 2, NULL, 0),
(55, 14, 5, 5, NULL, 0),
(56, 14, 5, 6, NULL, 0),
(57, 15, 4, 3, NULL, 0),
(58, 15, 4, 4, NULL, 0),
(59, 16, 6, 7, NULL, 0),
(60, 16, 6, 8, NULL, 0),
(61, 17, 3, 1, NULL, 0),
(62, 17, 3, 2, NULL, 0),
(63, 18, 3, 1, NULL, 0),
(64, 18, 3, 2, NULL, 0),
(65, 18, 6, 7, NULL, 0),
(66, 18, 6, 8, NULL, 0);

-- --------------------------------------------------------

--
-- Table structure for table `years`
--

CREATE TABLE `years` (
  `year` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `years`
--

INSERT INTO `years` (`year`) VALUES
(2020),
(2021),
(2022),
(2023),
(2024),
(2025),
(2026),
(2027),
(2028),
(2029),
(2030),
(2031),
(2032),
(2033),
(2034),
(2035),
(2036),
(2037),
(2038),
(2039),
(2040),
(2041),
(2042),
(2043),
(2044),
(2045),
(2046),
(2047),
(2048),
(2049),
(2050),
(2051),
(2052),
(2053),
(2054),
(2055),
(2056),
(2057),
(2058),
(2059),
(2060),
(2061),
(2062),
(2063),
(2064),
(2065),
(2066),
(2067),
(2068),
(2069),
(2070);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `block_muni`
--
ALTER TABLE `block_muni`
  ADD PRIMARY KEY (`blockminicd`),
  ADD KEY `subdivisioncd` (`subdivisioncd`),
  ADD KEY `districtcd` (`districtcd`);

--
-- Indexes for table `district`
--
ALTER TABLE `district`
  ADD PRIMARY KEY (`districtcd`),
  ADD KEY `districtcd` (`districtcd`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`menu_cd`);

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
-- Indexes for table `submenu`
--
ALTER TABLE `submenu`
  ADD PRIMARY KEY (`submenu_cd`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_permission`
--
ALTER TABLE `user_permission`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `years`
--
ALTER TABLE `years`
  ADD PRIMARY KEY (`year`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `menu_cd` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
-- AUTO_INCREMENT for table `submenu`
--
ALTER TABLE `submenu`
  MODIFY `submenu_cd` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user_permission`
--
ALTER TABLE `user_permission`
  MODIFY `code` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
