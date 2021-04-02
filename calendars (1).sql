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
-- Table structure for table `calendars`
--

CREATE TABLE `calendars` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date` date NOT NULL,
  `consultation_scheduler_id` bigint(20) NOT NULL,
  `doctor_id` bigint(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `year` int(11) NOT NULL,
  `month` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'forDoctor',
  `hospital_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `calendars`
--

INSERT INTO `calendars` (`id`, `title`, `date`, `consultation_scheduler_id`, `doctor_id`, `created_at`, `updated_at`, `year`, `month`, `type`, `hospital_id`) VALUES
(24, 'Doriane Sabushimike, Online Consult', '2021-11-01', 0, 2, '2020-11-14 19:19:25', '2020-11-14 19:19:25', 2021, 'November', 'Online', 0),
(29, 'Dr Rubagumya Fidel, In-Person Consult', '2020-11-02', 0, 2, '2020-11-15 09:43:34', '2020-11-15 09:43:34', 2020, 'November', 'In-Person', 8),
(30, 'Dr Rubagumya Fidel, Online Consult', '2020-11-03', 0, 2, '2020-11-15 09:43:46', '2020-11-15 09:43:46', 2020, 'November', 'Online', 0),
(31, 'Dr Rubagumya Fidel, In-Person Consult', '2020-11-17', 0, 2, '2020-11-15 13:40:55', '2020-11-15 13:40:55', 2020, 'November', 'In-Person', 8),
(32, 'Dr Rubagumya Fidel, In-Person Consult', '2021-04-30', 0, 2, '2020-11-15 13:41:47', '2020-11-15 13:41:47', 2021, 'November', 'In-Person', 7),
(33, 'Dr  Maniragaba Theoneste, In-Person Consult ', '2020-11-18', 0, 7, '2020-11-15 13:43:19', '2020-11-15 13:43:19', 2020, 'November', 'In-Person', 7),
(34, 'Pa, Online Consult', '2020-12-04', 0, 35, '2020-12-03 10:37:56', '2020-12-03 10:37:56', 2020, 'December', 'Online', 0),
(35, 'Dr Ladislas HATEGEKA, Online Consult', '2020-12-07', 0, 43, '2020-12-07 23:02:45', '2020-12-07 23:02:45', 2020, 'December', 'Online', 0),
(36, 'Dr Rubagumya Fidel, Online Consult', '2021-04-30', 0, 2, '2020-12-10 14:19:37', '2020-12-10 14:19:37', 2020, 'December', 'Online', 0),
(37, 'Dr Rubagumya Fidel, Online Consult', '2020-12-15', 0, 2, '2020-12-10 14:19:56', '2020-12-10 14:19:56', 2020, 'December', 'Online', 0),
(38, 'Dr. BABANE Jean Felix, Online Consult', '2021-01-20', 0, 51, '2021-01-27 14:38:31', '2021-01-27 14:38:31', 2021, 'January', 'Online', 0),
(39, 'Dr. BABANE Jean Felix, Online Consult', '2021-05-20', 0, 51, '2021-01-27 14:38:54', '2021-01-27 14:38:54', 2021, 'January', 'Online', 0),
(40, 'Dr Rubagumya Fidel, Online Consult', '2021-03-31', 0, 2, '2021-03-31 04:56:24', '2021-03-31 04:56:24', 2021, 'March', 'Online', 0),
(41, 'Dr Rubagumya Fidel, Online Consult', '2021-03-31', 0, 2, '2021-03-31 09:51:59', '2021-03-31 09:51:59', 2021, 'March', 'Online', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calendars`
--
ALTER TABLE `calendars`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calendars`
--
ALTER TABLE `calendars`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
