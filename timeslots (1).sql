-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 31, 2021 at 03:52 PM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `twivuze`
--

-- --------------------------------------------------------

--
-- Table structure for table `timeslots`
--

CREATE TABLE `timeslots` (
  `id` int(10) UNSIGNED NOT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `calender_id` bigint(20) NOT NULL,
  `slot` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `taken` tinyint(1) NOT NULL DEFAULT 0,
  `taken_user_id` bigint(20) DEFAULT NULL,
  `taken_by_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Consult-Online'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `timeslots`
--

INSERT INTO `timeslots` (`id`, `time`, `calender_id`, `slot`, `created_at`, `updated_at`, `taken`, `taken_user_id`, `taken_by_type`) VALUES
(143, '05:15 AM', 24, 'Morning', '2020-11-14 19:19:25', '2021-03-04 20:40:58', 1, 2, 'Consult-Online'),
(144, '13:15 PM', 24, 'Afternoon', '2020-11-14 19:19:25', '2020-11-14 19:19:25', 0, NULL, 'Consult-Online'),
(164, '05:15 AM', 29, 'Morning', '2020-11-15 09:43:34', '2020-11-15 09:43:34', 0, NULL, 'Consult-Online'),
(165, '13:35 PM', 29, 'Afternoon', '2020-11-15 09:43:34', '2020-11-15 09:43:34', 0, NULL, 'Consult-Online'),
(166, '05:35 AM', 30, 'Morning', '2020-11-15 09:43:46', '2020-11-15 09:43:46', 0, NULL, 'Consult-Online'),
(167, '13:15 PM', 30, 'Afternoon', '2020-11-15 09:43:46', '2020-11-15 09:43:46', 0, NULL, 'Consult-Online'),
(168, '06:35 AM', 31, 'Morning', '2020-11-15 13:40:55', '2020-11-15 13:40:55', 0, NULL, 'Consult-Online'),
(169, '16:55 PM', 31, 'Afternoon', '2020-11-15 13:40:55', '2020-11-15 13:40:55', 0, NULL, 'Consult-Online'),
(170, '17:15 PM', 31, 'Afternoon', '2020-11-15 13:40:55', '2020-11-15 13:40:55', 0, NULL, 'Consult-Online'),
(171, '17:35 PM', 31, 'Afternoon', '2020-11-15 13:40:55', '2020-11-15 13:40:55', 0, NULL, 'Consult-Online'),
(172, '17:55 PM', 31, 'Afternoon', '2020-11-15 13:40:55', '2020-11-15 13:40:55', 0, NULL, 'Consult-Online'),
(173, '18:15 PM', 31, 'Afternoon', '2020-11-15 13:40:55', '2020-11-15 13:40:55', 0, NULL, 'Consult-Online'),
(174, '18:35 PM', 31, 'Afternoon', '2020-11-15 13:40:55', '2020-11-15 13:40:55', 0, NULL, 'Consult-Online'),
(175, '18:55 PM', 31, 'Afternoon', '2020-11-15 13:40:55', '2020-11-15 13:40:55', 0, NULL, 'Consult-Online'),
(176, '08:15 AM', 32, 'Morning', '2020-11-15 13:41:47', '2021-03-04 18:59:45', 1, 2, 'Consult-Online'),
(177, '08:35 AM', 32, 'Morning', '2020-11-15 13:41:47', '2020-11-15 13:47:54', 1, 49, 'Consult-In-Person'),
(178, '08:55 AM', 32, 'Morning', '2020-11-15 13:41:47', '2021-03-04 19:07:17', 1, 2, 'Consult-In-Person'),
(179, '09:15 AM', 32, 'Morning', '2020-11-15 13:41:47', '2020-11-15 13:41:47', 0, NULL, 'Consult-Online'),
(180, '09:35 AM', 32, 'Morning', '2020-11-15 13:41:47', '2020-11-15 13:41:47', 0, NULL, 'Consult-Online'),
(181, '09:55 AM', 32, 'Morning', '2020-11-15 13:41:47', '2020-11-15 13:41:47', 0, NULL, 'Consult-Online'),
(182, '10:15 AM', 32, 'Morning', '2020-11-15 13:41:47', '2020-11-15 13:41:47', 0, NULL, 'Consult-Online'),
(183, '10:35 AM', 32, 'Morning', '2020-11-15 13:41:47', '2020-11-15 13:41:47', 0, NULL, 'Consult-Online'),
(184, '10:55 AM', 32, 'Morning', '2020-11-15 13:41:47', '2020-11-15 13:41:47', 0, NULL, 'Consult-Online'),
(185, '11:15 AM', 32, 'Morning', '2020-11-15 13:41:47', '2020-11-15 13:41:47', 0, NULL, 'Consult-Online'),
(186, '11:35 AM', 32, 'Morning', '2020-11-15 13:41:47', '2020-11-15 13:41:47', 0, NULL, 'Consult-Online'),
(187, '11:55 AM', 32, 'Morning', '2020-11-15 13:41:47', '2020-11-15 13:41:47', 0, NULL, 'Consult-Online'),
(188, '12:15 AM', 32, 'Morning', '2020-11-15 13:41:47', '2020-11-15 13:41:47', 0, NULL, 'Consult-Online'),
(189, '12:35 AM', 32, 'Morning', '2020-11-15 13:41:47', '2020-11-15 13:41:47', 0, NULL, 'Consult-Online'),
(190, '12:55 AM', 32, 'Morning', '2020-11-15 13:41:47', '2020-11-15 13:41:47', 0, NULL, 'Consult-Online'),
(191, '13:15 PM', 32, 'Afternoon', '2020-11-15 13:41:47', '2020-11-15 13:41:47', 0, NULL, 'Consult-Online'),
(192, '08:15 AM', 33, 'Morning', '2020-11-15 13:43:19', '2020-11-15 13:43:19', 0, NULL, 'Consult-Online'),
(193, '08:35 AM', 33, 'Morning', '2020-11-15 13:43:19', '2020-11-15 13:43:19', 0, NULL, 'Consult-Online'),
(194, '08:55 AM', 33, 'Morning', '2020-11-15 13:43:19', '2020-11-15 13:43:19', 0, NULL, 'Consult-Online'),
(195, '09:15 AM', 33, 'Morning', '2020-11-15 13:43:19', '2020-11-15 13:43:19', 0, NULL, 'Consult-Online'),
(196, '09:35 AM', 33, 'Morning', '2020-11-15 13:43:19', '2020-11-15 13:43:19', 0, NULL, 'Consult-Online'),
(197, '09:55 AM', 33, 'Morning', '2020-11-15 13:43:19', '2020-11-15 13:43:19', 0, NULL, 'Consult-Online'),
(198, '10:15 AM', 33, 'Morning', '2020-11-15 13:43:19', '2020-11-15 13:43:19', 0, NULL, 'Consult-Online'),
(199, '10:35 AM', 33, 'Morning', '2020-11-15 13:43:19', '2020-11-15 13:43:19', 0, NULL, 'Consult-Online'),
(200, '10:55 AM', 33, 'Morning', '2020-11-15 13:43:19', '2020-11-15 13:43:19', 0, NULL, 'Consult-Online'),
(201, '13:15 PM', 33, 'Afternoon', '2020-11-15 13:43:19', '2020-11-15 13:43:19', 0, NULL, 'Consult-Online'),
(202, '07:15 AM', 34, 'Morning', '2020-12-03 10:37:56', '2020-12-03 10:37:56', 0, NULL, 'Consult-Online'),
(203, '13:15 PM', 34, 'Afternoon', '2020-12-03 10:37:56', '2020-12-03 10:37:56', 0, NULL, 'Consult-Online'),
(204, '08:15 AM', 35, 'Morning', '2020-12-07 23:02:45', '2020-12-07 23:02:45', 0, NULL, 'Consult-Online'),
(205, '08:35 AM', 35, 'Morning', '2020-12-07 23:02:45', '2020-12-07 23:02:45', 0, NULL, 'Consult-Online'),
(206, '08:55 AM', 35, 'Morning', '2020-12-07 23:02:45', '2020-12-07 23:02:45', 0, NULL, 'Consult-Online'),
(207, '09:15 AM', 35, 'Morning', '2020-12-07 23:02:45', '2020-12-07 23:02:45', 0, NULL, 'Consult-Online'),
(208, '09:35 AM', 35, 'Morning', '2020-12-07 23:02:45', '2020-12-07 23:02:45', 0, NULL, 'Consult-Online'),
(209, '09:55 AM', 35, 'Morning', '2020-12-07 23:02:45', '2020-12-07 23:02:45', 0, NULL, 'Consult-Online'),
(210, '10:15 AM', 35, 'Morning', '2020-12-07 23:02:45', '2020-12-07 23:02:45', 0, NULL, 'Consult-Online'),
(211, '10:35 AM', 35, 'Morning', '2020-12-07 23:02:45', '2020-12-07 23:02:45', 0, NULL, 'Consult-Online'),
(212, '10:55 AM', 35, 'Morning', '2020-12-07 23:02:45', '2020-12-07 23:02:45', 0, NULL, 'Consult-Online'),
(213, '11:15 AM', 35, 'Morning', '2020-12-07 23:02:45', '2020-12-07 23:02:45', 0, NULL, 'Consult-Online'),
(214, '11:35 AM', 35, 'Morning', '2020-12-07 23:02:45', '2020-12-07 23:02:45', 0, NULL, 'Consult-Online'),
(215, '11:55 AM', 35, 'Morning', '2020-12-07 23:02:45', '2020-12-07 23:02:45', 0, NULL, 'Consult-Online'),
(216, '12:15 AM', 35, 'Morning', '2020-12-07 23:02:45', '2020-12-07 23:02:45', 0, NULL, 'Consult-Online'),
(217, '12:35 AM', 35, 'Morning', '2020-12-07 23:02:45', '2020-12-07 23:02:45', 0, NULL, 'Consult-Online'),
(218, '12:55 AM', 35, 'Morning', '2020-12-07 23:02:45', '2020-12-07 23:02:45', 0, NULL, 'Consult-Online'),
(219, '13:15 PM', 35, 'Afternoon', '2020-12-07 23:02:45', '2020-12-07 23:02:45', 0, NULL, 'Consult-Online'),
(220, '13:35 PM', 35, 'Afternoon', '2020-12-07 23:02:45', '2020-12-07 23:02:45', 0, NULL, 'Consult-Online'),
(221, '13:55 PM', 35, 'Afternoon', '2020-12-07 23:02:45', '2020-12-07 23:02:45', 0, NULL, 'Consult-Online'),
(222, '14:15 PM', 35, 'Afternoon', '2020-12-07 23:02:45', '2020-12-07 23:02:45', 0, NULL, 'Consult-Online'),
(223, '14:35 PM', 35, 'Afternoon', '2020-12-07 23:02:45', '2020-12-07 23:02:45', 0, NULL, 'Consult-Online'),
(224, '14:55 PM', 35, 'Afternoon', '2020-12-07 23:02:45', '2020-12-07 23:02:45', 0, NULL, 'Consult-Online'),
(225, '15:15 PM', 35, 'Afternoon', '2020-12-07 23:02:45', '2020-12-07 23:02:45', 0, NULL, 'Consult-Online'),
(226, '15:35 PM', 35, 'Afternoon', '2020-12-07 23:02:45', '2020-12-07 23:02:45', 0, NULL, 'Consult-Online'),
(227, '15:55 PM', 35, 'Afternoon', '2020-12-07 23:02:45', '2020-12-07 23:02:45', 0, NULL, 'Consult-Online'),
(228, '16:15 PM', 35, 'Afternoon', '2020-12-07 23:02:45', '2020-12-07 23:02:45', 0, NULL, 'Consult-Online'),
(229, '16:35 PM', 35, 'Afternoon', '2020-12-07 23:02:45', '2020-12-07 23:02:45', 0, NULL, 'Consult-Online'),
(230, '17:15 PM', 35, 'Afternoon', '2020-12-07 23:02:45', '2020-12-07 23:02:45', 0, NULL, 'Consult-Online'),
(231, '17:35 PM', 35, 'Afternoon', '2020-12-07 23:02:45', '2020-12-07 23:02:45', 0, NULL, 'Consult-Online'),
(232, '17:55 PM', 35, 'Afternoon', '2020-12-07 23:02:45', '2020-12-07 23:02:45', 0, NULL, 'Consult-Online'),
(233, '07:15 AM', 36, 'Morning', '2020-12-10 14:19:37', '2020-12-10 14:19:37', 0, NULL, 'Consult-Online'),
(234, '07:35 AM', 36, 'Morning', '2020-12-10 14:19:37', '2020-12-10 14:19:37', 0, NULL, 'Consult-Online'),
(235, '07:55 AM', 36, 'Morning', '2020-12-10 14:19:37', '2020-12-10 14:19:37', 0, NULL, 'Consult-Online'),
(236, '12:15 AM', 36, 'Morning', '2020-12-10 14:19:37', '2020-12-10 14:19:37', 0, NULL, 'Consult-Online'),
(237, '17:15 PM', 36, 'Afternoon', '2020-12-10 14:19:37', '2020-12-10 14:19:37', 0, NULL, 'Consult-Online'),
(238, '17:35 PM', 36, 'Afternoon', '2020-12-10 14:19:37', '2020-12-10 14:19:37', 0, NULL, 'Consult-Online'),
(239, '18:35 PM', 36, 'Afternoon', '2020-12-10 14:19:37', '2020-12-10 14:19:37', 0, NULL, 'Consult-Online'),
(240, '18:55 PM', 36, 'Afternoon', '2020-12-10 14:19:37', '2020-12-10 14:19:37', 0, NULL, 'Consult-Online'),
(241, '11:15 AM', 37, 'Morning', '2020-12-10 14:19:56', '2020-12-10 14:19:56', 0, NULL, 'Consult-Online'),
(242, '11:35 AM', 37, 'Morning', '2020-12-10 14:19:56', '2020-12-10 14:19:56', 0, NULL, 'Consult-Online'),
(243, '12:15 AM', 37, 'Morning', '2020-12-10 14:19:56', '2020-12-10 14:19:56', 0, NULL, 'Consult-Online'),
(244, '12:35 AM', 37, 'Morning', '2020-12-10 14:19:56', '2020-12-10 14:19:56', 0, NULL, 'Consult-Online'),
(245, '12:55 AM', 37, 'Morning', '2020-12-10 14:19:56', '2020-12-10 14:19:56', 0, NULL, 'Consult-Online'),
(246, '13:55 PM', 37, 'Afternoon', '2020-12-10 14:19:56', '2020-12-10 14:19:56', 0, NULL, 'Consult-Online'),
(247, '14:35 PM', 37, 'Afternoon', '2020-12-10 14:19:56', '2020-12-10 14:19:56', 0, NULL, 'Consult-Online'),
(248, '15:15 PM', 37, 'Afternoon', '2020-12-10 14:19:56', '2020-12-10 14:19:56', 0, NULL, 'Consult-Online'),
(249, '05:15 AM', 38, 'Morning', '2021-01-27 14:38:31', '2021-01-27 14:38:31', 0, NULL, 'Consult-Online'),
(250, '13:35 PM', 39, 'Afternoon', '2021-01-27 14:38:54', '2021-01-27 14:38:54', 0, NULL, 'Consult-Online'),
(251, '05:15 AM', 40, 'Morning', '2021-03-31 04:56:24', '2021-03-31 04:59:32', 1, 3, 'Consult-Online'),
(252, '05:55 AM', 40, 'Morning', '2021-03-31 04:56:24', '2021-03-31 05:08:39', 1, 3, 'Consult-Online'),
(253, '06:15 AM', 40, 'Morning', '2021-03-31 04:56:24', '2021-03-31 09:39:43', 1, 2, 'Consult-Online'),
(254, '06:55 AM', 40, 'Morning', '2021-03-31 04:56:25', '2021-03-31 09:37:08', 1, 2, 'Consult-Online'),
(255, '07:15 AM', 40, 'Morning', '2021-03-31 04:56:25', '2021-03-31 09:31:51', 1, 2, 'Consult-Online'),
(256, '07:35 AM', 40, 'Morning', '2021-03-31 04:56:25', '2021-03-31 05:13:07', 1, 3, 'Consult-Online'),
(257, '07:55 AM', 40, 'Morning', '2021-03-31 04:56:25', '2021-03-31 09:23:48', 1, 2, 'Consult-Online'),
(258, '13:15 PM', 40, 'Afternoon', '2021-03-31 04:56:25', '2021-03-31 09:17:29', 1, 2, 'Consult-Online'),
(259, '07:15 AM', 41, 'Morning', '2021-03-31 09:51:59', '2021-03-31 09:51:59', 0, NULL, 'Consult-Online'),
(260, '07:35 AM', 41, 'Morning', '2021-03-31 09:52:00', '2021-03-31 09:52:00', 0, NULL, 'Consult-Online'),
(261, '16:15 PM', 41, 'Afternoon', '2021-03-31 09:52:00', '2021-03-31 10:05:37', 1, 2, 'Consult-Online'),
(262, '16:35 PM', 41, 'Afternoon', '2021-03-31 09:52:00', '2021-03-31 10:10:59', 1, 2, 'Consult-Online'),
(263, '16:55 PM', 41, 'Afternoon', '2021-03-31 09:52:00', '2021-03-31 10:15:52', 1, 2, 'Consult-Online'),
(264, '17:15 PM', 41, 'Afternoon', '2021-03-31 09:52:00', '2021-03-31 12:42:49', 1, 2, 'Consult-Online'),
(265, '17:35 PM', 41, 'Afternoon', '2021-03-31 09:52:00', '2021-03-31 13:06:39', 1, 2, 'Consult-Online'),
(266, '17:55 PM', 41, 'Afternoon', '2021-03-31 09:52:00', '2021-03-31 13:15:35', 1, 2, 'Consult-Online'),
(267, '18:15 PM', 41, 'Afternoon', '2021-03-31 09:52:00', '2021-03-31 09:52:00', 0, NULL, 'Consult-Online'),
(268, '18:35 PM', 41, 'Afternoon', '2021-03-31 09:52:00', '2021-03-31 09:52:00', 0, NULL, 'Consult-Online'),
(269, '18:55 PM', 41, 'Afternoon', '2021-03-31 09:52:00', '2021-03-31 09:52:00', 0, NULL, 'Consult-Online');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `timeslots`
--
ALTER TABLE `timeslots`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `timeslots`
--
ALTER TABLE `timeslots`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=270;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
