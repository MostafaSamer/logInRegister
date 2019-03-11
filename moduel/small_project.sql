-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 11, 2019 at 10:19 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `small_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `pass` varchar(50) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `email`, `pass`, `phone`, `address`) VALUES
('Mostafa', 'mostafasamer2@hotmail.com', '202cb962ac59075b964b07152d234b70', '012', '24AinShams'),
('Mostafa', 'mostafasamer3@hotmail.com', '202cb962ac59075b964b07152d234b70', '012', '24AinShams'),
('Mostafa', 'mostafasamer4@hotmail.com', '202cb962ac59075b964b07152d234b70', '012', '24AinShams'),
('Mostafa', 'mostafasamer@hotmail.com', '202cb962ac59075b964b07152d234b70', '012', '24AinShams'),
('Samer', 'samer@hotmail.com', '202cb962ac59075b964b07152d234b70', '012', '24AinShams');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`email`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
