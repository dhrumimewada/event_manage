-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Mar 08, 2021 at 08:42 AM
-- Server version: 8.0.18
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `event_manage`
--

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
CREATE TABLE IF NOT EXISTS `event` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `repeat_type` tinyint(4) NOT NULL COMMENT 'ex: 1 - Every Month/Year, 2 - Third Day of month',
  `every` text NOT NULL,
  `every_type` text NOT NULL,
  `every_on` text NOT NULL,
  `day_name` varchar(255) NOT NULL,
  `month_year` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`id`, `title`, `start_date`, `end_date`, `repeat_type`, `every`, `every_type`, `every_on`, `day_name`, `month_year`, `created_at`, `updated_at`, `deleted_at`) VALUES
(4, 'Yearly show', '2022-01-01', '2022-01-01', 2, 'Every', 'Day', 'First', 'Monday', 'Year', '2021-03-08 08:41:44', NULL, NULL),
(3, 'My event', '2021-04-01', '2021-09-30', 1, 'Every Third', 'Day', 'First', 'Sunday', 'Year', '2021-03-08 08:34:23', '2021-03-08 08:41:13', NULL),
(5, 'Testing Show Daily', '2021-03-08', '2021-05-31', 1, 'Every', 'Day', 'First', 'Sunday', 'Month', '2021-03-08 08:42:07', '2021-03-08 08:42:15', NULL),
(6, 'Qua Show', '2021-03-10', '2021-06-30', 1, 'Every', 'Week', 'First', 'Sunday', 'Month', '2021-03-08 08:42:36', NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
