-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 19, 2025 at 07:43 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zohoformdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `zohoformfeedback`
--

CREATE TABLE `zohoformfeedback` (
  `id` int(11) NOT NULL,
  `issue_name` varchar(255) NOT NULL,
  `issue_description` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `submitted_at` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zohoformfeedback`
--

INSERT INTO `zohoformfeedback` (`id`, `issue_name`, `issue_description`, `email`, `file_path`, `submitted_at`) VALUES
(1, 'test1', 'testing', 'shreya@gmail.com', 'uploads/1748002019_Screenshot 2025-05-23 172606.png', '2025-05-23 12:06:59.516359'),
(2, 'Sankalp issue', 'testing', 'admin1@gmail.com', 'uploads/Screenshot 2025-05-22 123215.png', '2025-05-23 12:14:34.969081'),
(4, 'Testing2', 'testing', 'admin@gmail.com', 'uploads/Screenshot 2025-05-23 172606.png', '2025-05-23 12:16:26.313870'),
(5, 'Testing2', 'testing', 'admin@gmail.com', 'uploads/Screenshot 2025-05-23 172606.png', '2025-05-23 12:16:55.689721'),
(6, 'mailcheck', 'mailcheck', 'admin@gmail.com', 'uploads/Screenshot 2025-05-23 172606.png', '2025-05-23 12:22:33.435647');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `zohoformfeedback`
--
ALTER TABLE `zohoformfeedback`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `zohoformfeedback`
--
ALTER TABLE `zohoformfeedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
