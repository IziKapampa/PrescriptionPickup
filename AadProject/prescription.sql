-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 31, 2021 at 09:04 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prescription`
--

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `patient_id`, `first_name`, `last_name`, `email`, `password`, `age`, `gender`) VALUES
(9, 15, 'John', 'White', 'johnwhite@hotmail.com', '$2y$10$uBUYkEgwCB5.IoNZwZ6CzejlNTtcBNLa4QEIiKzd9qWVXdwcPFWR6', 25, 'Male'),
(10, 140, 'Peter', 'Shore', 'petershore@hotmail.com', '$2y$10$.s/plryoS0GMCCYsl2TJb.xSMl500jWZ.zCPriP9GVh8XI7zaUiZC', 40, 'Male'),
(11, 54, 'Scott', 'Izi', 'scottizi@hotmail.com', '$2y$10$fA2l/vUNxndYqPq9eI2m3OmY0yjlZLXt/KZCdYbvnefu3yNJIVzV6', 55, 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `pharmacist`
--

CREATE TABLE `pharmacist` (
  `id` int(16) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `first_name` varchar(25) NOT NULL,
  `last_name` varchar(25) NOT NULL,
  `email` varchar(75) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pharmacist`
--

INSERT INTO `pharmacist` (`id`, `staff_id`, `first_name`, `last_name`, `email`, `password`) VALUES
(1, 150, 'James', 'Plaza', 'jamesplaza@hotmail.com', '$2y$10$yEU86/GuYZAe8xa7jb80h.S4QMPtgnG0IQThfQ0PWyVyiaN0PRnvu'),
(2, 5, 'Mohamed', 'Aboelsoud', 'mohamedaboelsoud@hotmail.com', '$2y$10$TRvR6syxB1z/QZrypVD/LuyaTJSGZ8vEgOKT3rHTgECk.4eHgBk8m'),
(3, 42, 'Pedro', 'Machado', 'pedromachado@hotmail.com', '$2y$10$HTO4UazNgSR3voiulE63mepdMw/ZDCnK16OWYH49JTTNRivJjhO1G');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pharmacist`
--
ALTER TABLE `pharmacist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `pharmacist`
--
ALTER TABLE `pharmacist`
  MODIFY `id` int(16) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
