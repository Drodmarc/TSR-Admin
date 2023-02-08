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
-- Table structure for table `tbl_cause_of_offline`
--

CREATE TABLE `tbl_cause_of_offline` (
  `cause_id` int(50) NOT NULL,
  `cause_of_offline_name` varchar(100) NOT NULL,
  `reason_for_offline_id` int(50) NOT NULL,
  `date_created` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_cause_of_offline`
--

INSERT INTO `tbl_cause_of_offline` (`cause_id`, `cause_of_offline_name`, `reason_for_offline_id`, `date_created`) VALUES
(1, 'High peak and unstable vehicle voltage (Old truck)', 1, '2023-01-23 07:27:51.765220'),
(2, 'Not properly inserted the sim card', 1, '2023-01-23 07:27:51.765220'),
(3, 'GPS device battery bloated', 2, '2023-01-23 07:27:51.765220'),
(4, 'Defective GPS device component', 2, '2023-01-23 07:27:51.765220'),
(5, 'Clogged GPS device internal memory', 2, '2023-01-23 07:27:51.765220'),
(6, 'GPS device firmware problem', 2, '2023-01-23 07:27:51.765220'),
(7, 'Accidentally hidden the GPS antenna', 3, '2023-01-23 07:27:51.765220'),
(8, 'Defective GPS antenna', 3, '2023-01-23 07:27:51.765220'),
(9, 'Accidentally disconnect the GPS device power source wiring', 4, '2023-01-23 07:27:51.765220'),
(10, 'Intentionally disconnect the GPS device power source wiring', 4, '2023-01-23 07:27:51.765220'),
(11, 'Breakdown/Repair (Intentionally disconnect/remove of vehicle battery)', 4, '2023-01-23 07:27:51.765220'),
(12, 'Standby/No trip (Intentionally disconnect/remove of vehicle battery)', 4, '2023-01-23 07:27:51.765220'),
(13, 'Vehicle was sold (Intentionally disconnect the GPS device power source)', 4, '2023-01-23 07:27:51.765220'),
(14, 'Decommissioned vehicle (Intentionally disconnect the GPS device power source)', 4, '2023-01-23 07:27:51.765220'),
(15, 'Intentionally switched off the GPS device', 5, '2023-01-23 07:27:51.765220'),
(16, 'Intentionally removed the GPS device sim card', 6, '2023-01-23 07:27:51.765220');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_cause_of_offline`
--
ALTER TABLE `tbl_cause_of_offline`
  ADD PRIMARY KEY (`cause_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_cause_of_offline`
--
ALTER TABLE `tbl_cause_of_offline`
  MODIFY `cause_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
