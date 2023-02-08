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
-- Table structure for table `tbl_reason_for_offline`
--

CREATE TABLE `tbl_reason_for_offline` (
  `reason_id` int(50) NOT NULL,
  `reason_for_offline_name` varchar(100) NOT NULL,
  `date_created` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_reason_for_offline`
--

INSERT INTO `tbl_reason_for_offline` (`reason_id`, `reason_for_offline_name`, `date_created`) VALUES
(1, 'Sim card Problem', '2023-01-26 06:06:52.643810'),
(2, 'GPS Device Problem', '2023-01-23 06:50:02.599016'),
(3, 'GPS Antenna Problem', '2023-01-23 06:50:02.599016'),
(4, 'GPS Device Power Source Disconnected', '2023-01-23 06:50:02.599016'),
(5, 'Tampered GPS Device', '2023-01-23 06:50:02.599016');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_reason_for_offline`
--
ALTER TABLE `tbl_reason_for_offline`
  ADD PRIMARY KEY (`reason_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_reason_for_offline`
--
ALTER TABLE `tbl_reason_for_offline`
  MODIFY `reason_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
