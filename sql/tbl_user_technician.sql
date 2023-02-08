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
-- Table structure for table `tbl_user_technician`
--

CREATE TABLE `tbl_user_technician` (
  `id` int(255) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `contact_no` varchar(100) NOT NULL,
  `address` varchar(255) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `role` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_user_technician`
--

INSERT INTO `tbl_user_technician` (`id`, `last_name`, `first_name`, `gender`, `contact_no`, `address`, `username`, `password`, `role`) VALUES
(1, 'Ablaza', 'Norman', 'Male', '09163163923', 'Bulacan', 'art12', '$2y$04$P0p0ia2DPxFZ9Gfcn6ZLgeXVSf7LboZQPP1HoY8SRNnOhtYY0.YnG', 'Technician'),
(2, 'Monteclar', 'Jerome', 'Male', '09463215471', 'Paranaque City', 'Jeroim23', '$2y$04$2ZYspApjflRGbn8phinfdOUfBKAUEvoXQn3gtcOKCJUhkot84DIw.', 'Admin'),
(3, 'Dullano', 'Marc', 'Male', '09163163254', 'Taytay Rizal', 'art1232', '$2y$04$dzjx34zREQ0p2/YZGFW.y.DU7UUdBwOOJATF1L7EDEbLIqFMs.ZVq', 'Technician'),
(4, 'Escabuza', 'Marlon', 'Male', '09463215478', 'Angono Rizal', 'qqqq', '$2y$04$hwprIeDeZUMd7Oe5.sp5B.uxnjun8rlkN32eavlJW8pFGgrC580ey', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_user_technician`
--
ALTER TABLE `tbl_user_technician`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_user_technician`
--
ALTER TABLE `tbl_user_technician`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
