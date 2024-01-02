-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 19, 2023 at 02:19 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `final_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `address` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `phone`, `address`, `password`) VALUES
(1, 'sojib', 'sojib@gmail.com', '01780030624', 'khulna', '12345'),
(3, 'md sumon ', 'souvikrahmansumon@gmail.com', '019548458652479', 'Mirpur, Dhaka', '123'),
(6, 'sami', 'sojib@gmail.com', '0195484587887475', 'Dhaka', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `message` varchar(255) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `email`, `message`, `date`) VALUES
(1, 'souvikrahmansumon@gmail.com', 'I nedd login page with desgin html css', '2023-11-19 06:01:08pm'),
(3, 'sojib@gmail.com', 'i need home page with html css', '2023-11-19 06:10:05pm'),
(4, 'sksojib@gmail.com', 'I need login page with php', '2023-11-19 06:10:43pm');

-- --------------------------------------------------------

--
-- Table structure for table `service`
--

CREATE TABLE `service` (
  `id` int(11) NOT NULL,
  `title` varchar(300) NOT NULL,
  `photo` varchar(255) NOT NULL,
  `file` varchar(255) NOT NULL,
  `date` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `service`
--

INSERT INTO `service` (`id`, `title`, `photo`, `file`, `date`) VALUES
(5, '<p>html css create a wbsite home page</p>\r\n', 'upload/268655dd64.png', 'demo/268655dd64.html', '$100'),
(6, '<p>Create login page with html css</p>\r\n', 'upload/f4f957933b.png', 'demo/f4f957933b.html', '$10'),
(7, '<p>Html css create a login page&nbsp;</p>\r\n', 'upload/9c7ed4086f.png', 'demo/9c7ed4086f.html', '$8');

-- --------------------------------------------------------

--
-- Table structure for table `sub`
--

CREATE TABLE `sub` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sub`
--

INSERT INTO `sub` (`id`, `email`, `date`) VALUES
(1, 'sksojib@gmail.com', ''),
(2, 'sksojib@gmail.com', '2023-11-18 11:28:54pm'),
(3, '01780ssssojib@gmail.com', '2023-11-18 11:47:39pm'),
(4, 'souvikrahmansumon@gmail.com', '2023-11-18 11:47:48pm');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `video_id` int(11) NOT NULL,
  `video_title` varchar(250) NOT NULL,
  `video_code` varchar(255) NOT NULL,
  `date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`video_id`, `video_title`, `video_code`, `date`) VALUES
(1, 'Build a Complete Responsive Personal Portfolio Website using HTML CSS Javascript', 'Tkp3FDgOueM', '2023-17-11 10:51:02pm'),
(3, 'Build a Complete Responsive Personal Portfolio Website using HTML CSS JavaScript', 'XRSQHkzrQGQ', '2023-17-11 10:52:08pm'),
(4, 'Y4-xMb-eHOQ', 'Responsive Personal Portfolio Website Using HTML CSS & JavaScript', '2023-17-11 10:52:59pm'),
(5, 'What is Web Development ? Complete RoadMap from Basics to Advanced | 2023', 'z0n1aQ3IxWI', '2023-17-11 10:55:05pm'),
(6, 'What is Web Development ? Complete RoadMap from Basics to Advanced | 2023', 'z0n1aQ3IxWI', '2023-17-11 10:56:23pm'),
(7, 'Build a Complete Responsive Personal Portfolio Website using HTML CSS Javascript', 'Tkp3FDgOueM', '2023-17-11 10:56:54pm'),
(8, 'Build a Complete Responsive Personal Portfolio Website using HTML CSS Javascript', 'Tkp3FDgOueM', '2023-17-11 10:57:12pm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service`
--
ALTER TABLE `service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sub`
--
ALTER TABLE `sub`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`video_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `service`
--
ALTER TABLE `service`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sub`
--
ALTER TABLE `sub`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `video_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
