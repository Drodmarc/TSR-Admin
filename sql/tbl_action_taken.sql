-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 27, 2023 at 09:28 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

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
-- Table structure for table `tbl_action_taken`
--

CREATE TABLE `tbl_action_taken` (
  `action_id` int(11) NOT NULL,
  `action_taken_name` varchar(100) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_action_taken`
--

INSERT INTO `tbl_action_taken` (`action_id`, `action_taken_name`, `date_created`) VALUES
(1, 'Replaced sim card', '2023-01-23 07:55:04'),
(2, 'Do nothing (Subject to sim card replacement)', '2023-01-23 07:55:04'),
(3, 'Properly inserted the sim card', '2023-01-23 07:55:04'),
(4, 'Replaced GPS device', '2023-01-23 07:55:04'),
(5, 'Clear GPS device internal memory c/o APSYS', '2023-01-23 07:55:04'),
(6, 'Reconfigured GPS device firmware c/o APSYS\r\n', '2023-01-23 07:55:04'),
(7, 'Reconnect/Fix the GPS antenna', '2023-01-23 07:55:04'),
(8, 'Replaced GPS antenna', '2023-01-23 07:55:04'),
(9, 'Do nothing (Subject to GPS device antenna replacement)', '2023-01-23 07:55:04'),
(10, 'Reconnect GPS device power source wiring', '2023-01-23 07:55:04'),
(11, 'Do nothing', '2023-01-23 07:55:04'),
(12, 'Pulled out the GPS device', '2023-01-23 07:55:04'),
(13, 'Do nothing (Subject to GPS device pull-out)', '2023-01-23 07:55:04'),
(14, 'Turned on the GPS device', '2023-01-23 07:55:04'),
(15, 'Replaced new sim card', '2023-01-23 07:55:04'),
(16, 'Re-inserted the sim card', '2023-01-23 07:55:04'),
(17, 'Do nothing (Subject to GPS Device)', '2023-01-23 07:55:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_action_taken`
--
ALTER TABLE `tbl_action_taken`
  ADD PRIMARY KEY (`action_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_action_taken`
--
ALTER TABLE `tbl_action_taken`
  MODIFY `action_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
