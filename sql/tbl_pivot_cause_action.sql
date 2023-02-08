-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2023 at 09:02 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ezpht`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pivot_cause_action`
--

CREATE TABLE `tbl_pivot_cause_action` (
  `cause_of_offline_id` int(50) NOT NULL,
  `action_taken_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_pivot_cause_action`
--

INSERT INTO `tbl_pivot_cause_action` (`cause_of_offline_id`, `action_taken_id`) VALUES
(1, 1),
(1, 2),
(2, 3),
(3, 4),
(4, 2),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(8, 9),
(9, 10),
(10, 10),
(11, 11),
(12, 11),
(13, 12),
(13, 13),
(14, 13),
(15, 14),
(16, 15),
(16, 16),
(16, 17);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
