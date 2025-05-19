-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 02, 2025 at 02:02 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rems`
--

-- --------------------------------------------------------

--
-- Table structure for table `logs_table`
--

CREATE TABLE `logs_table` (
  `logs_id` int(11) NOT NULL,
  `i_id` int(11) NOT NULL,
  `logs_action` text NOT NULL,
  `logs_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `logs_table`
--

INSERT INTO `logs_table` (`logs_id`, `i_id`, `logs_action`, `logs_date`) VALUES
(1, 8, 'Admin Logged in', '2025-05-02 08:38:30'),
(2, 8, 'Admin Logged in', '2025-05-02 08:53:41'),
(3, 8, 'Admin Logged in', '2025-05-02 08:55:02'),
(4, 8, 'Updated account image for user: test1', '2025-05-02 08:55:16'),
(5, 8, 'Admin Logged in', '2025-05-02 08:59:15'),
(6, 8, 'Admin Logged in', '2025-05-02 09:00:35'),
(7, 8, 'Admin Logged in', '2025-05-02 09:01:39'),
(8, 8, 'Admin Logged in', '2025-05-02 09:02:32'),
(9, 8, 'Admin Logged in', '2025-05-02 09:05:11'),
(10, 8, 'Admin Logged in', '2025-05-02 09:05:56'),
(11, 8, 'Logged out', '2025-05-02 09:05:58'),
(12, 8, 'Admin Logged in', '2025-05-02 09:11:46'),
(13, 8, 'Admin Logged in', '2025-05-02 09:13:27'),
(14, 9, 'Registered new user: test2', '2025-05-02 09:14:12'),
(15, 8, 'Admin Logged out', '2025-05-02 09:15:27'),
(16, 8, 'Admin Logged in', '2025-05-02 09:17:28'),
(17, 8, 'Admin Logged in', '2025-05-02 09:19:25'),
(18, 10, 'Admin Logged in', '2025-05-02 09:24:06'),
(19, 11, 'Admin Logged in', '2025-05-02 09:27:05'),
(20, 11, 'Admin Logged in', '2025-05-02 09:28:17'),
(21, 11, 'Admin Logged in', '2025-05-02 09:29:41'),
(22, 11, 'Updated account details for user: sample1', '2025-05-02 09:30:13'),
(23, 11, 'Admin Logged out', '2025-05-02 09:30:33'),
(24, 11, 'Admin Logged in', '2025-05-02 11:07:24'),
(25, 11, 'Updated account image for user: sample1', '2025-05-02 11:07:38'),
(26, 11, 'Opened USER record for update:  12', '2025-05-02 11:11:12'),
(27, 11, 'Updated account details for user: sample1', '2025-05-02 11:11:27'),
(28, 11, 'Admin Logged out', '2025-05-02 11:17:02'),
(29, 12, 'User Logged in', '2025-05-02 11:17:15'),
(30, 12, 'Updated account image for user: test', '2025-05-02 11:18:02'),
(31, 12, 'User Logged in', '2025-05-02 11:24:53'),
(32, 12, 'Admin Logged out', '2025-05-02 11:25:08');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `i_id` int(55) NOT NULL,
  `i_fname` varchar(55) NOT NULL,
  `i_lname` varchar(55) NOT NULL,
  `i_username` varchar(55) NOT NULL,
  `i_password` varchar(55) NOT NULL,
  `i_email` varchar(55) NOT NULL,
  `i_phonenumber` varchar(55) NOT NULL,
  `i_type` varchar(55) NOT NULL,
  `status` varchar(55) NOT NULL,
  `i_image` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`i_id`, `i_fname`, `i_lname`, `i_username`, `i_password`, `i_email`, `i_phonenumber`, `i_type`, `status`, `i_image`) VALUES
(11, 'sample1', 'sample1', 'sample1', '73l8gRjwLftklgfdXT+MdiMEjJwGPVMsyVxe16iYpk8=', 'sample1@gmail.com', '12345678888', 'Admin', 'Active', 'src/usersImages/sample1.jpg'),
(12, 'test', 'test', 'test', '73l8gRjwLftklgfdXT+MdiMEjJwGPVMsyVxe16iYpk8=', 'test@gmail.com', '10101010101', 'User', 'Active', 'src/usersImages/test.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `logs_table`
--
ALTER TABLE `logs_table`
  ADD PRIMARY KEY (`logs_id`),
  ADD KEY `i_id` (`i_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`i_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `logs_table`
--
ALTER TABLE `logs_table`
  MODIFY `logs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `i_id` int(55) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `logs_table`
--
ALTER TABLE `logs_table`
  ADD CONSTRAINT `user_logs` FOREIGN KEY (`i_id`) REFERENCES `user` (`i_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
