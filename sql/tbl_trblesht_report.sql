-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2023 at 01:22 AM
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
-- Table structure for table `tbl_trblesht_report`
--

CREATE TABLE `tbl_trblesht_report` (
  `id` int(11) NOT NULL,
  `vid` varchar(100) NOT NULL,
  `date_performed` varchar(100) NOT NULL,
  `date_work_end` varchar(50) NOT NULL,
  `departure_time` time(6) NOT NULL,
  `timeof_arrival` time(6) NOT NULL,
  `traveling_time` varchar(100) NOT NULL,
  `complete_address` varchar(100) NOT NULL,
  `reason_offline` varchar(100) NOT NULL,
  `cause_offline` varchar(100) NOT NULL,
  `action_taken` varchar(100) NOT NULL,
  `work_time_start` time(6) NOT NULL,
  `work_time_end` time(6) NOT NULL,
  `vehicle_status` varchar(100) NOT NULL,
  `checked_by` varchar(100) NOT NULL,
  `contact_num` varchar(100) NOT NULL,
  `technician` varchar(100) NOT NULL,
  `technician_id` int(11) NOT NULL,
  `coordinated_by` varchar(100) NOT NULL,
  `date_submitted` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6),
  `image_url` varchar(100) NOT NULL,
  `troubleshooting_status` varchar(100) NOT NULL,
  `task_status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_trblesht_report`
--

INSERT INTO `tbl_trblesht_report` (`id`, `vid`, `date_performed`, `date_work_end`, `departure_time`, `timeof_arrival`, `traveling_time`, `complete_address`, `reason_offline`, `cause_offline`, `action_taken`, `work_time_start`, `work_time_end`, `vehicle_status`, `checked_by`, `contact_num`, `technician`, `technician_id`, `coordinated_by`, `date_submitted`, `image_url`, `troubleshooting_status`, `task_status`) VALUES
(1, '200', '2023-01-30', '2023-01-30', '09:41:00.000000', '09:41:00.000000', 'HH:0 MM:0', 'wdawasd', 'Sim Card Problem', 'High peak and unstable vehicle voltage (Old truck)', 'Do nothing (Subject to sim card replacement)', '09:41:00.000000', '09:41:00.000000', '0', 'Sir Dahril', '23123', 'jerome', 1, 'Sir Dahril', '2023-01-30 01:44:38.880964', 'IMG-63d7204c471ae5.60932836.jpg', 'Not Fixed', 'Finished'),
(2, '200', '2023-01-30', '2023-01-30', '09:43:00.000000', '09:43:00.000000', 'HH:0 MM:0', 'wdawasd', 'Sim Card Problem', 'High peak and unstable vehicle voltage (Old truck)', 'Replaced sim card', '09:43:00.000000', '09:43:00.000000', '0', 'Sir Dahril', '23123', 'jerome', 1, 'Sir Dahril', '2023-01-30 01:44:39.161721', 'IMG-63d72107131953.23405484.png', 'Fixed', 'Finished'),
(3, '201', '2023-01-30', '2023-01-30', '09:45:00.000000', '09:45:00.000000', 'HH:0 MM:0', 'wddasda', 'Sim Card Problem', 'High peak and unstable vehicle voltage (Old truck)', 'Do nothing (Subject to sim card replacement)', '09:45:00.000000', '09:46:00.000000', '0', 'Sir Dahril', '213123', 'jerome', 1, 'Sir Dahril', '2023-01-30 01:49:07.739932', 'IMG-63d7218d9e6cb8.88713292.jpg', 'Not Fixed', 'Finished'),
(4, '201', '2023-01-30', '2023-01-30', '09:48:00.000000', '09:48:00.000000', 'HH:0 MM:0', 'wddasda', 'Sim Card Problem', 'High peak and unstable vehicle voltage (Old truck)', 'Replaced sim card', '09:48:00.000000', '09:48:00.000000', '0', 'Sir Dahril', '213123', 'jerome', 1, 'Sir Dahril', '2023-01-30 01:49:07.919774', 'IMG-63d72213e05c32.42982032.png', 'Fixed', 'Finished'),
(5, '202', '2023-01-30', '2023-01-30', '09:51:00.000000', '09:51:00.000000', 'HH:0 MM:0', 'wdasd', 'Sim Card Problem', 'High peak and unstable vehicle voltage (Old truck)', 'Do nothing (Subject to sim card replacement)', '09:51:00.000000', '09:51:00.000000', '0', 'Sir Dahril', '23124', 'jerome', 1, 'Sir Dahril', '2023-01-30 01:52:58.879222', 'IMG-63d722dda778f5.09135066.png', 'Not Fixed', 'Finished'),
(6, '202', '2023-01-30', '2023-01-30', '09:52:00.000000', '09:52:00.000000', 'HH:0 MM:0', 'wdasd', 'Sim Card Problem', 'High peak and unstable vehicle voltage (Old truck)', 'Replaced sim card', '09:52:00.000000', '09:52:00.000000', '0', 'Sir Dahril', '23124', 'jerome', 1, 'Sir Dahril', '2023-01-30 01:52:59.205139', 'IMG-63d722fb216555.94828568.png', 'Fixed', 'Finished'),
(7, '203', '2023-01-30', '2023-01-30', '09:53:00.000000', '09:53:00.000000', 'HH:0 MM:0', 'dwdasd', 'Sim Card Problem', 'High peak and unstable vehicle voltage (Old truck)', 'Do nothing (Subject to sim card replacement)', '09:53:00.000000', '09:54:00.000000', '0', 'Sir Dahril', '23123', 'jerome', 1, 'Sir Dahril', '2023-01-30 01:54:44.572786', 'IMG-63d7234eaced05.79944617.png', 'Not Fixed', 'Finished'),
(8, '203', '2023-01-30', '2023-01-30', '09:54:00.000000', '09:54:00.000000', 'HH:0 MM:0', 'dwdasd', 'Sim Card Problem', 'High peak and unstable vehicle voltage (Old truck)', 'Replaced sim card', '09:54:00.000000', '09:54:00.000000', '0', 'Sir Dahril', '23123', 'jerome', 1, 'Sir Dahril', '2023-01-30 01:54:44.793839', 'IMG-63d72364bcbff9.83807352.png', 'Fixed', 'Finished'),
(9, '204', '2023-01-30', '2023-01-30', '09:56:00.000000', '09:56:00.000000', 'HH:0 MM:0', 'dwawdasd', 'Sim Card Problem', 'High peak and unstable vehicle voltage (Old truck)', 'Do nothing (Subject to sim card replacement)', '09:56:00.000000', '09:57:00.000000', '0', 'Sir Dahril', '23123', 'jerome', 1, 'Sir Dahril', '2023-01-30 01:57:45.709229', 'IMG-63d72401c68c04.69671760.png', 'Not Fixed', 'Finished'),
(10, '204', '2023-01-30', '2023-01-30', '09:57:00.000000', '09:57:00.000000', 'HH:0 MM:0', 'dwawdasd', 'Sim Card Problem', 'High peak and unstable vehicle voltage (Old truck)', 'Replaced sim card', '09:57:00.000000', '09:57:00.000000', '0', 'Sir Dahril', '23123', 'jerome', 1, 'Sir Dahril', '2023-01-30 01:57:45.942877', 'IMG-63d72419e5ee10.72523725.png', 'Fixed', 'Finished'),
(11, '205', '2023-01-30', '2023-01-30', '09:58:00.000000', '09:58:00.000000', 'HH:0 MM:0', 'wdwdasd', 'Sim Card Problem', 'High peak and unstable vehicle voltage (Old truck)', 'Replaced sim card', '09:58:00.000000', '09:58:00.000000', '0', 'Sir Dahril', '23123', 'jerome', 1, 'Sir Dahril', '2023-01-30 01:59:51.949334', 'IMG-63d72497e33ea1.22794140.png', 'Fixed', 'Finished'),
(12, '200', '2023-01-30', '2023-01-30', '10:01:00.000000', '10:01:00.000000', 'HH:0 MM:0', 'wddadasd', 'Sim Card Problem', 'High peak and unstable vehicle voltage (Old truck)', 'Do nothing (Subject to sim card replacement)', '10:01:00.000000', '10:02:00.000000', '0', 'Sir Dahril', '123123', 'jerome', 1, 'Sir Dahril', '2023-01-30 02:57:15.228191', 'IMG-63d7252b5ae512.35194104.png', 'Not Fixed', 'Finished'),
(13, '202', '2023-01-30', '2023-01-30', '10:02:00.000000', '10:02:00.000000', 'HH:0 MM:0', 'wdawdasd', 'Sim Card Problem', 'High peak and unstable vehicle voltage (Old truck)', 'Do nothing (Subject to sim card replacement)', '10:02:00.000000', '10:02:00.000000', '0', 'Sir Dahril', '23123', 'jerome', 1, 'Sir Dahril', '2023-01-30 03:51:11.135350', 'IMG-63d7255017e234.41305486.jpg', 'Not Fixed', 'Finished'),
(14, '204', '2023-01-30', '2023-01-30', '10:03:00.000000', '10:03:00.000000', 'HH:0 MM:0', 'wdwdasd', 'Sim Card Problem', 'High peak and unstable vehicle voltage (Old truck)', 'Do nothing (Subject to sim card replacement)', '10:03:00.000000', '10:03:00.000000', '0', 'Sir Dahril', '23123', 'jerome', 1, 'Sir Dahril', '2023-01-30 03:51:38.217018', 'IMG-63d72578e91a54.79976078.png', 'Not Fixed', 'Finished'),
(15, '206', '2023-01-30', '2023-01-30', '10:03:00.000000', '10:03:00.000000', 'HH:0 MM:0', 'wdwdasd', 'Sim Card Problem', 'High peak and unstable vehicle voltage (Old truck)', 'Do nothing (Subject to sim card replacement)', '10:03:00.000000', '10:04:00.000000', '0', 'Sir Dahril', '1231321', 'jerome', 1, 'Sir Dahril', '2023-01-30 03:52:13.428714', 'IMG-63d7259f226a98.62048109.png', 'Not Fixed', 'Finished'),
(16, '201', '2023-01-30', '2023-01-30', '10:04:00.000000', '10:04:00.000000', 'HH:0 MM:0', 'wdwadwadad', 'Sim Card Problem', 'High peak and unstable vehicle voltage (Old truck)', 'Do nothing (Subject to sim card replacement)', '10:04:00.000000', '10:05:00.000000', '0', 'Sir Dahril', '23123', 'jerome', 1, 'Sir Dahril', '2023-01-30 03:52:47.612562', 'IMG-63d725e28322a3.24655517.png', 'Not Fixed', 'Finished'),
(17, '203', '2023-01-30', '2023-01-30', '10:05:00.000000', '10:05:00.000000', 'HH:0 MM:0', 'wddadsd', 'Sim Card Problem', 'High peak and unstable vehicle voltage (Old truck)', 'Do nothing (Subject to sim card replacement)', '10:05:00.000000', '10:05:00.000000', '0', 'Sir Dahril', '34234', 'jerome', 1, 'Sir Dahril', '2023-01-30 03:53:08.612682', 'IMG-63d7261412ee44.75282201.png', 'Not Fixed', 'Finished'),
(18, '200', '2023-01-30', '2023-01-30', '10:56:00.000000', '10:56:00.000000', 'HH:0 MM:0', 'wddadasd', 'Sim Card Problem', 'High peak and unstable vehicle voltage (Old truck)', 'Replaced sim card', '10:56:00.000000', '10:56:00.000000', '0', 'Sir Dahril', '123123', 'jerome', 1, 'Sir Dahril', '2023-01-30 02:57:15.411094', 'IMG-63d7320b62d720.97937006.jpg', 'Fixed', 'Finished'),
(19, '202', '2023-01-30', '2023-01-30', '11:50:00.000000', '11:50:00.000000', 'HH:0 MM:0', 'wdawdasd', 'Sim Card Problem', 'High peak and unstable vehicle voltage (Old truck)', 'Replaced sim card', '11:50:00.000000', '11:51:00.000000', '0', 'Sir Dahril', '23123', 'jerome', 1, 'Sir Dahril', '2023-01-30 03:51:11.349671', 'IMG-63d73eaf505d57.42274042.png', 'Fixed', 'Finished'),
(20, '204', '2023-01-30', '2023-01-30', '11:51:00.000000', '11:51:00.000000', 'HH:0 MM:0', 'wdwdasd', 'Sim Card Problem', 'High peak and unstable vehicle voltage (Old truck)', 'Replaced sim card', '11:51:00.000000', '11:51:00.000000', '0', 'Sir Dahril', '23123', 'jerome', 1, 'Sir Dahril', '2023-01-30 03:51:38.404724', 'IMG-63d73eca5ca847.79855930.png', 'Fixed', 'Finished'),
(21, '206', '2023-01-30', '2023-01-30', '11:52:00.000000', '11:52:00.000000', 'HH:0 MM:0', 'wdwdasd', 'Sim Card Problem', 'High peak and unstable vehicle voltage (Old truck)', 'Replaced sim card', '11:52:00.000000', '11:52:00.000000', '0', 'Sir Dahril', '1231321', 'jerome', 1, 'Sir Dahril', '2023-01-30 03:52:13.641419', 'IMG-63d73eed9c5089.31672991.png', 'Fixed', 'Finished'),
(22, '201', '2023-01-30', '2023-01-30', '11:52:00.000000', '11:52:00.000000', 'HH:0 MM:0', 'wdwadwadad', 'Sim Card Problem', 'High peak and unstable vehicle voltage (Old truck)', 'Replaced sim card', '11:52:00.000000', '11:52:00.000000', '0', 'Sir Dahril', '23123', 'jerome', 1, 'Sir Dahril', '2023-01-30 03:52:47.818338', 'IMG-63d73f0fbd5df7.02838173.png', 'Fixed', 'Finished'),
(23, '203', '2023-01-30', '2023-01-30', '11:52:00.000000', '11:52:00.000000', 'HH:0 MM:0', 'wddadsd', 'Sim Card Problem', 'High peak and unstable vehicle voltage (Old truck)', 'Replaced sim card', '11:52:00.000000', '11:52:00.000000', '0', 'Sir Dahril', '34234', 'jerome', 1, 'Sir Dahril', '2023-01-30 03:53:08.827781', 'IMG-63d73f24c51a66.79809856.png', 'Fixed', 'Finished'),
(24, '200', '2023-01-30', '2023-01-30', '11:53:00.000000', '11:53:00.000000', 'HH:0 MM:0', 'wdwadadwdasd', 'GPS Device Power Source Disconnected', 'Standby/No trip (Intentionally disconnect/remove of vehicle battery)', 'Do nothing (Continue observation)', '11:53:00.000000', '11:56:00.000000', '1', 'Sir Dahril', '23213', 'jerome', 1, 'Sir Dahril', '2023-01-30 06:22:42.869603', 'IMG-63d74001166524.02577568.png', 'Not Fixed', 'Finished'),
(25, '201', '2023-01-30', '2023-01-30', '13:37:00.000000', '13:52:00.000000', 'HH:0 MM:15', 'wdasdwda', 'Sim Card Problem', 'High peak and unstable vehicle voltage (Old truck)', 'Do nothing (Subject to sim card replacement)', '13:52:00.000000', '13:52:00.000000', '0', 'Sir Dahril', '2312', 'jerome', 1, 'Sir Dahril', '2023-01-30 06:51:07.974011', 'IMG-63d75b3d0d5945.09037074.png', 'Not Fixed', 'Finished'),
(26, '200', '2023-01-30', '2023-01-30', '14:22:00.000000', '14:22:00.000000', 'HH:0 MM:0', 'wdwadadwdasd', 'GPS Device Power Source Disconnected', '', 'connect GPS device power source wiring', '14:22:00.000000', '14:22:00.000000', '0', 'Sir Dahril', '23213', 'jerome', 1, 'Sir Dahril', '2023-01-30 06:22:43.143377', 'IMG-63d762331dfe64.02260784.png', 'For GPS transfer', 'Finished'),
(27, '200', '2023-01-30', '2023-01-30', '14:24:00.000000', '14:24:00.000000', 'HH:0 MM:0', 'wdadasd', 'GPS Device Power Source Disconnected', 'Breakdown/Repair (Intentionally disconnect/remove of vehicle battery)', 'Do nothing (Continue observation)', '14:24:00.000000', '14:25:00.000000', '2', 'Sir Dahril', '213123', 'jerome', 1, 'Sir Dahril', '2023-01-30 06:46:50.197351', 'IMG-63d762d2919b58.93638371.png', 'Not Fixed', 'Finished'),
(28, '202', '2023-01-30', '2023-01-30', '14:33:00.000000', '14:33:00.000000', 'HH:0 MM:0', 'dwasd', 'GPS Device Power Source Disconnected', 'Standby/No trip (Intentionally disconnect/remove of vehicle battery)', 'Do nothing (Continue observation)', '14:33:00.000000', '14:36:00.000000', '1', 'Sir Dahril', '23123', 'jerome', 1, 'Sir Dahril', '2023-01-30 06:53:05.712879', 'IMG-63d7658f116729.23753865.png', 'Not Fixed', 'Finished'),
(29, '200', '2023-01-30', '2023-01-30', '14:46:00.000000', '14:46:00.000000', 'HH:0 MM:0', 'wdadasd', 'GPS Device Power Source Disconnected', '', 'Reconnect GPS device power source wiring', '14:46:00.000000', '14:46:00.000000', '0', 'Sir Dahril', '213123', 'jerome', 1, 'Sir Dahril', '2023-01-30 06:46:50.500030', 'IMG-63d767da78b385.57399119.jpg', 'Fixed', 'Finished'),
(30, '200', '2023-01-30', '2023-01-30', '14:48:00.000000', '14:48:00.000000', 'HH:0 MM:0', 'wddwdasdsd', 'GPS Device Power Source Disconnected', 'Breakdown/Repair (Intentionally disconnect/remove of vehicle battery)', 'Do nothing (Continue observation)', '14:48:00.000000', '14:48:00.000000', '2', 'Sir Dahril', '123123', 'jerome', 1, 'Sir Dahril', '2023-01-30 06:49:50.238986', 'IMG-63d7685423e3a9.66633497.png', 'Not Fixed', 'Finished'),
(31, '200', '2023-01-30', '2023-01-30', '14:49:00.000000', '14:49:00.000000', 'HH:0 MM:0', 'wddwdasdsd', 'GPS Device Power Source Disconnected', 'Accidentally disconnect the GPS device power source wiring', 'Reconnect GPS device power source wiring', '14:49:00.000000', '14:49:00.000000', '0', 'Sir Dahril', '123123', 'jerome', 1, 'Sir Dahril', '2023-01-30 06:49:50.442573', 'IMG-63d7688e6bc1c7.23449651.png', 'Fixed', 'Finished'),
(33, '202', '2023-01-30', '2023-01-30', '14:52:00.000000', '14:52:00.000000', 'HH:0 MM:0', 'dwasd', 'GPS Device Power Source Disconnected', 'Accidentally disconnect the GPS device power source wiring', 'Reconnect GPS device power source wiring', '14:52:00.000000', '14:52:00.000000', '0', 'Sir Dahril', '23123', 'jerome', 1, 'Sir Dahril', '2023-01-30 06:53:06.067997', 'IMG-63d769520091a5.36435647.jpg', 'Fixed', 'Finished'),
(34, '200', '2023-01-30', '2023-01-30', '14:55:00.000000', '14:55:00.000000', 'HH:0 MM:0', 'wddadad', 'GPS Device Power Source Disconnected', 'Breakdown/Repair (Intentionally disconnect/remove of vehicle battery)', 'Do nothing (Continue observation)', '14:55:00.000000', '14:55:00.000000', '2', 'Sir Dahril', '213123', 'jerome', 1, 'Sir Dahril', '2023-01-30 06:56:49.564174', 'IMG-63d76a08718ea2.36292981.jpg', 'Not Fixed', 'Finished'),
(35, '200', '2023-01-30', '2023-01-30', '14:56:00.000000', '14:56:00.000000', 'HH:0 MM:0', 'wddadad', 'GPS Device Power Source Disconnected', '', 'Reconnect GPS device power source wiring', '14:56:00.000000', '14:56:00.000000', '0', 'Sir Dahril', '213123', 'jerome', 1, 'Sir Dahril', '2023-01-30 06:56:49.772274', 'IMG-63d76a31bc58d9.42477988.png', 'Fixed', 'Finished'),
(36, '200', '2023-01-30', '2023-01-30', '14:58:00.000000', '14:58:00.000000', 'HH:0 MM:0', 'wadasd', 'GPS Device Power Source Disconnected', 'Standby/No trip (Intentionally disconnect/remove of vehicle battery)', 'Do nothing (Continue observation)', '14:58:00.000000', '14:58:00.000000', '1', 'Sir Dahril', '123123', 'jerome', 1, 'Sir Dahril', '2023-01-30 06:59:28.474990', 'IMG-63d76aa58dc359.89994653.png', 'Not Fixed', 'Finished'),
(37, '200', '2023-01-30', '2023-01-30', '14:58:00.000000', '14:58:00.000000', 'HH:0 MM:0', 'wadasd', 'GPS Device Power Source Disconnected', 'Accidentally disconnect the GPS device power source wiring', 'Reconnect GPS device power source wiring', '14:58:00.000000', '14:58:00.000000', '0', 'Sir Dahril', '123123', 'jerome', 1, 'Sir Dahril', '2023-01-30 06:59:28.686029', 'IMG-63d76ad09d81a6.11565343.png', 'Fixed', 'Finished'),
(38, '200', '2023-01-30', '2023-01-30', '15:01:00.000000', '15:01:00.000000', 'HH:0 MM:0', 'wdasdad', 'GPS Device Power Source Disconnected', 'Breakdown/Repair (Intentionally disconnect/remove of vehicle battery)', 'Do nothing (Continue observation)', '15:01:00.000000', '15:01:00.000000', '2', 'Sir Dahril', '23123', 'jerome', 1, 'Sir Dahril', '2023-01-30 07:39:41.149312', 'IMG-63d76b4c0ffcc1.57502256.png', 'Not Fixed', 'Finished'),
(39, '200', '2023-01-30', '2023-01-30', '15:01:00.000000', '15:01:00.000000', 'HH:0 MM:0', 'wdasdad', 'GPS Device Power Source Disconnected', 'Standby/No trip (Intentionally disconnect/remove of vehicle battery)', 'Do nothing (Continue observation)', '15:01:00.000000', '15:01:00.000000', '1', 'Sir Dahril', '23123', 'jerome', 1, 'Sir Dahril', '2023-01-30 07:08:03.615101', 'IMG-63d76bb440e888.43688482.png', 'Not Fixed', 'Finished'),
(40, '200', '2023-01-30', '2023-01-30', '15:04:00.000000', '15:04:00.000000', 'HH:0 MM:0', 'wdasdad', 'GPS Device Power Source Disconnected', 'Accidentally disconnect the GPS device power source wiring', 'Reconnect GPS device power source wiring', '15:04:00.000000', '15:04:00.000000', '0', 'Sir Dahril', '23123', 'jerome', 1, 'Sir Dahril', '2023-01-30 07:08:03.867527', 'IMG-63d76cd3cede49.18688922.png', 'Fixed', 'Finished'),
(41, '200', '2023-01-30', '2023-01-30', '15:09:00.000000', '15:09:00.000000', 'HH:0 MM:0', 'wdasdad', 'GPS Device Power Source Disconnected', 'Breakdown/Repair (Intentionally disconnect/remove of vehicle battery)', 'Do nothing (Continue observation)', '15:09:00.000000', '15:09:00.000000', '2', 'Sir Dahril', '23123', 'jerome', 1, 'Sir Dahril', '2023-01-30 07:28:06.805914', 'IMG-63d76d2b3c4b73.95735346.png', 'Not Fixed', 'Finished'),
(42, '200', '2023-01-30', '2023-01-30', '15:11:00.000000', '15:11:00.000000', 'HH:0 MM:0', 'wdasdad', 'GPS Device Power Source Disconnected', 'Standby/No trip (Intentionally disconnect/remove of vehicle battery)', 'Do nothing (Continue observation)', '15:11:00.000000', '15:11:00.000000', '1', 'Sir Dahril', '23123', 'jerome', 1, 'Sir Dahril', '2023-01-30 07:18:28.861717', 'IMG-63d76dec423274.85298209.png', 'Not Fixed', 'Finished'),
(43, '201', '2023-01-30', '2023-01-30', '15:14:00.000000', '15:14:00.000000', 'HH:0 MM:0', 'wdasd', 'Sim Card Problem', 'High peak and unstable vehicle voltage (Old truck)', 'Replaced sim card', '15:14:00.000000', '15:14:00.000000', '0', 'wdasd', '23123', 'jerome', 1, 'wdasd', '2023-01-30 07:15:22.683438', 'IMG-63d76e8a9c0228.36252997.png', 'Fixed', 'Finished'),
(44, '201', '2023-01-30', '2023-01-30', '15:15:00.000000', '15:15:00.000000', 'HH:0 MM:0', 'wdwdasd', 'GPS Device Power Source Disconnected', 'Breakdown/Repair (Intentionally disconnect/remove of vehicle battery)', 'Reconnect GPS device', '15:15:00.000000', '15:16:00.000000', '2', 'Sir Dahril', '123123', 'jerome', 1, 'Sir Dahril', '2023-01-30 07:16:17.083991', 'IMG-63d76ec10f9841.18190976.png', 'Fixed', 'Finished'),
(45, '200', '2023-01-30', '2023-01-30', '15:17:00.000000', '15:17:00.000000', 'HH:0 MM:0', 'wdasdad', 'GPS Device Power Source Disconnected', 'Accidentally disconnect the GPS device power source wiring', 'Reconnect GPS device power source wiring', '15:17:00.000000', '15:17:00.000000', '0', 'Sir Dahril', '23123', 'jerome', 1, 'Sir Dahril', '2023-01-30 07:18:29.059650', 'IMG-63d76f45099168.48048020.png', 'Fixed', 'Finished'),
(46, '200', '2023-01-30', '2023-01-30', '15:26:00.000000', '15:26:00.000000', 'HH:0 MM:0', 'wdasdad', 'GPS Device Power Source Disconnected', 'Accidentally disconnect the GPS device power source wiring', 'Reconnect GPS device power source wiring', '15:26:00.000000', '15:26:00.000000', '0', 'Sir Dahril', '23123', 'jerome', 1, 'Sir Dahril', '2023-01-30 07:28:06.978127', 'IMG-63d77186ee6945.28824704.png', 'Fixed', 'Finished'),
(47, '201', '2023-01-30', '2023-01-30', '15:30:00.000000', '15:30:00.000000', 'HH:0 MM:0', 'wdawdad', 'Sim Card Problem', 'High peak and unstable vehicle voltage (Old truck)', 'Replaced sim card', '15:30:00.000000', '15:31:00.000000', '0', 'Sir Dahril', '23123', 'jerome', 1, 'Sir Dahril', '2023-01-30 07:31:46.967534', 'IMG-63d77262e67da7.28346660.png', 'Fixed', 'Finished'),
(48, '201', '2023-01-30', '2023-01-30', '15:32:00.000000', '15:32:00.000000', 'HH:0 MM:0', 'wdawdasd', 'Sim Card Problem', 'High peak and unstable vehicle voltage (Old truck)', 'Replaced sim card', '15:32:00.000000', '15:32:00.000000', '0', 'Sir Dahril', '23123', 'jerome', 1, 'Sir Dahril', '2023-01-30 07:32:58.011650', 'IMG-63d772a9ec0284.11072536.png', 'Fixed', 'Finished'),
(49, '201', '2023-01-30', '2023-01-30', '15:33:00.000000', '15:33:00.000000', 'HH:0 MM:0', 'wdadad', 'Sim Card Problem', 'High peak and unstable vehicle voltage (Old truck)', 'Replaced sim card', '15:33:00.000000', '15:34:00.000000', '0', 'Sir Dahril', '23123', 'jerome', 1, 'Sir Dahril', '2023-01-30 07:34:43.202734', 'IMG-63d77313266171.14355760.png', 'Fixed', 'Finished'),
(50, '201', '2023-01-30', '2023-01-30', '15:34:00.000000', '15:35:00.000000', 'HH:0 MM:1', 'wdadwdasd', 'Sim Card Problem', 'High peak and unstable vehicle voltage (Old truck)', 'Replaced sim card', '15:35:00.000000', '15:38:00.000000', '0', 'Sir Dahril', '123123', 'jerome', 1, 'Sir Dahril', '2023-01-30 07:38:54.970518', 'IMG-63d7740eec2b70.36537774.png', 'Fixed', 'Finished'),
(51, '200', '2023-01-30', '2023-01-30', '15:39:00.000000', '15:39:00.000000', 'HH:0 MM:0', 'wdasdad', 'GPS Device Power Source Disconnected', 'Accidentally disconnect the GPS device power source wiring', 'Reconnect GPS device power source wiring', '15:39:00.000000', '15:39:00.000000', '0', 'Sir Dahril', '23123', 'jerome', 1, 'Sir Dahril', '2023-01-30 07:39:41.323607', 'IMG-63d7743d46d298.98999970.png', 'Fixed', 'Finished'),
(52, '200', '2023-01-30', '2023-01-30', '15:41:00.000000', '15:41:00.000000', 'HH:0 MM:0', 'wdwdadwasd', 'GPS Device Power Source Disconnected', 'Breakdown/Repair (Intentionally disconnect/remove of vehicle battery)', 'Do nothing (Continue observation)', '15:41:00.000000', '15:41:00.000000', '2', 'Sir Dahril', '123123', 'jerome', 1, 'Sir Dahril', '2023-01-30 07:46:13.196535', 'IMG-63d774c3717d43.73369348.png', 'Not Fixed', 'Finished'),
(53, '200', '2023-01-30', '2023-01-30', '15:42:00.000000', '15:42:00.000000', 'HH:0 MM:0', 'wdwdadwasd', 'GPS Device Power Source Disconnected', 'Standby/No trip (Intentionally disconnect/remove of vehicle battery)', 'Do nothing (Continue observation)', '15:42:00.000000', '15:42:00.000000', '1', 'Sir Dahril', '123123', 'jerome', 1, 'Sir Dahril', '2023-01-30 07:45:26.331107', 'IMG-63d77504d1f050.59768873.png', 'Not Fixed', 'Finished'),
(54, '200', '2023-01-30', '2023-01-30', '15:45:00.000000', '15:45:00.000000', 'HH:0 MM:0', 'wdwdadwasd', 'GPS Device Power Source Disconnected', 'Accidentally disconnect the GPS device power source wiring', 'Reconnect GPS device power source wiring', '15:45:00.000000', '15:45:00.000000', '0', 'Sir Dahril', '123123', 'jerome', 1, 'Sir Dahril', '2023-01-30 07:45:26.584448', 'IMG-63d7759683a697.66749810.png', 'Fixed', 'Finished'),
(55, '200', '2023-01-30', '2023-01-30', '15:45:00.000000', '15:45:00.000000', 'HH:0 MM:0', 'wdwdadwasd', 'GPS Device Power Source Disconnected', 'Accidentally disconnect the GPS device power source wiring', 'Reconnect GPS device power source wiring', '15:46:00.000000', '15:46:00.000000', '0', 'Sir Dahril', '123123', 'jerome', 1, 'Sir Dahril', '2023-01-30 07:46:13.346618', 'IMG-63d775c55468e3.24012521.png', 'Fixed', 'Finished'),
(56, '200', '2023-01-30', '2023-01-30', '15:52:00.000000', '15:52:00.000000', 'HH:0 MM:0', 'wdawdad', 'Sim Card Problem', 'High peak and unstable vehicle voltage (Old truck)', 'Do nothing (Subject to sim card replacement)', '15:52:00.000000', '15:52:00.000000', '0', 'Sir Dahril', '23123', 'jerome', 1, 'Sir Dahril', '2023-01-30 07:58:31.734439', 'IMG-63d77751066060.50253976.png', 'Not Fixed', 'Finished'),
(57, '200', '2023-01-30', '2023-01-30', '15:53:00.000000', '15:53:00.000000', 'HH:0 MM:0', 'wdawdad', 'Sim Card Problem', 'High peak and unstable vehicle voltage (Old truck)', 'Do nothing (Subject to sim card replacement)', '15:53:00.000000', '15:53:00.000000', '0', 'Sir Dahril', '23123', 'jerome', 1, 'Sir Dahril', '2023-01-30 07:59:50.661400', 'IMG-63d7778a4bd540.92345502.png', 'Not Fixed', 'Finished'),
(58, '200', '2023-01-30', '2023-01-30', '15:58:00.000000', '15:58:00.000000', 'HH:0 MM:0', 'wdawdad', 'Sim Card Problem', 'High peak and unstable vehicle voltage (Old truck)', 'Replaced sim card', '15:58:00.000000', '15:58:00.000000', '0', 'Sir Dahril', '23123', 'jerome', 1, 'Sir Dahril', '2023-01-30 07:58:31.890464', 'IMG-63d778a7d71da3.93672969.png', 'Fixed', 'Finished'),
(59, '200', '2023-01-30', '2023-01-30', '15:59:00.000000', '15:59:00.000000', 'HH:0 MM:0', 'wdawdad', 'Sim Card Problem', 'High peak and unstable vehicle voltage (Old truck)', 'Replaced sim card', '15:59:00.000000', '15:59:00.000000', '0', 'Sir Dahril', '23123', 'jerome', 1, 'Sir Dahril', '2023-01-30 07:59:50.836204', 'IMG-63d778f6c4e5d0.72960682.png', 'Fixed', 'Finished'),
(60, '200', '2023-01-30', '2023-01-30', '16:08:00.000000', '16:08:00.000000', 'HH:0 MM:0', 'wdawdasd', 'Sim Card Problem', 'High peak and unstable vehicle voltage (Old truck)', 'Do nothing (Subject to sim card replacement)', '16:08:00.000000', '16:08:00.000000', '0', 'Sir Dahril', '13213', 'jerome', 1, 'Sir Dahril', '2023-01-30 08:08:32.214544', 'IMG-63d77b002efa62.29098197.jpg', 'Not Fixed', 'Unfinished'),
(61, '200', '2023-01-30', '2023-01-30', '16:08:00.000000', '16:08:00.000000', 'HH:0 MM:0', 'wdawdasd', 'Sim Card Problem', 'High peak and unstable vehicle voltage (Old truck)', 'Do nothing (Subject to sim card replacement)', '16:08:00.000000', '16:08:00.000000', '0', 'Sir Dahril', '13213', 'jerome', 1, 'Sir Dahril', '2023-01-30 08:12:46.378898', 'IMG-63d77b1c0c8fe1.67136677.png', 'Not Fixed', 'Finished'),
(62, '200', '2023-01-30', '2023-01-30', '16:12:00.000000', '16:12:00.000000', 'HH:0 MM:0', 'wdawdasd', 'Sim Card Problem', 'High peak and unstable vehicle voltage (Old truck)', 'Replaced sim card', '16:12:00.000000', '16:12:00.000000', '0', 'Sir Dahril', '13213', 'jerome', 1, 'Sir Dahril', '2023-01-30 08:12:46.587679', 'IMG-63d77bfe898894.84979565.png', 'Fixed', 'Finished'),
(63, '200', '2023-01-30', '2023-01-30', '16:30:00.000000', '16:30:00.000000', 'HH:0 MM:0', 'wdawdasd', 'Sim Card Problem', 'High peak and unstable vehicle voltage (Old truck)', 'Do nothing (Subject to sim card replacement)', '16:30:00.000000', '16:30:00.000000', '0', 'Sir Dahril', '13213', 'jerome', 1, 'Sir Dahril', '2023-01-30 08:31:13.789199', 'IMG-63d78051c07ce6.39126986.png', 'Not Fixed', 'Unfinished');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_trblesht_report`
--
ALTER TABLE `tbl_trblesht_report`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_trblesht_report`
--
ALTER TABLE `tbl_trblesht_report`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
