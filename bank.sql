-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 21, 2021 at 08:48 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bank`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `Name` varchar(15) NOT NULL,
  `E-mail` varchar(20) NOT NULL,
  `Current Balance` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `Name`, `E-mail`, `Current Balance`) VALUES
(1, 'Faisal', 'Faisal@gmail.com', 9990),
(2, 'Sahil', 'Sahil@gmail.com', 20010),
(3, 'Adnan', 'Adnan@gmail.com', 30000),
(4, 'Hazim', 'Hazim@gmail.com', 39980),
(5, 'Danish', 'Danish@gmail.com', 50020),
(6, 'Babar', 'Babar@gmail.com', 59970),
(7, 'Ashwin', 'Ashwin@gmail.com', 70030),
(8, 'Iqbal', 'Iqbal@gmail.com', 80000),
(9, 'Abrar', 'Abrar@gmail.com', 90000),
(10, 'Wasif', 'Wasif@gmail.com', 110000);

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

CREATE TABLE `transactions` (
  `S.no` int(11) NOT NULL,
  `Sender` varchar(15) NOT NULL,
  `Receiver` varchar(15) NOT NULL,
  `Amount` varchar(15) NOT NULL,
  `Date and Time` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`S.no`, `Sender`, `Receiver`, `Amount`, `Date and Time`) VALUES
(2, 'Faisal', 'Sahil', '10', '2021-11-21 12:19:03'),
(3, 'Hazim', 'Danish', '20', '2021-11-21 12:19:17'),
(4, 'Babar', 'Ashwin', '30', '2021-11-21 12:19:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`S.no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transactions`
--
ALTER TABLE `transactions`
  MODIFY `S.no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
