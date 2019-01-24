-- phpMyAdmin SQL Dump
-- version 4.4.15.7
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2019 at 07:41 AM
-- Server version: 5.6.37
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `donor`
--

-- --------------------------------------------------------

--
-- Table structure for table `donors`
--

CREATE TABLE IF NOT EXISTS `donors` (
  `id` int(11) NOT NULL,
  `fname` varchar(45) NOT NULL,
  `mname` varchar(45) DEFAULT NULL,
  `lname` varchar(45) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `b_type` varchar(2) NOT NULL,
  `bday` date NOT NULL,
  `h_address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `don_date` date NOT NULL,
  `stats` text NOT NULL,
  `temp` varchar(20) NOT NULL,
  `pulse` varchar(20) NOT NULL,
  `bp` varchar(20) NOT NULL,
  `hemoglobin` varchar(20) NOT NULL,
  `weight` varchar(20) NOT NULL,
  `hbsag` varchar(20) NOT NULL,
  `malaria_smear` varchar(20) NOT NULL,
  `aids` varchar(20) NOT NULL,
  `hematocrit` varchar(20) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `mobile` varchar(15) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donors`
--

INSERT INTO `donors` (`id`, `fname`, `mname`, `lname`, `sex`, `b_type`, `bday`, `h_address`, `city`, `don_date`, `stats`, `temp`, `pulse`, `bp`, `hemoglobin`, `weight`, `hbsag`, `malaria_smear`, `aids`, `hematocrit`, `phone`, `mobile`) VALUES
(1, 'Limo', 'Kiplagat', 'Vincent', 'Male', 'O+', '1994-09-13', '37 Kapasabet', 'Kapsabet', '2019-01-02', 'Normal', '37', '80', '90 | 120', '16 - 18 gm/dl', '65', 'Negative', 'Negative', 'Negative', '45 - 62%', '+254732995633', '+254703849766');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE IF NOT EXISTS `employees` (
  `id` int(10) NOT NULL,
  `f_name` varchar(20) NOT NULL,
  `m_name` varchar(20) NOT NULL,
  `l_name` varchar(20) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `bday` date NOT NULL,
  `prc_nr` int(20) NOT NULL,
  `designation` varchar(20) NOT NULL,
  `landline` varchar(20) NOT NULL,
  `phone` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `f_name`, `m_name`, `l_name`, `username`, `password`, `bday`, `prc_nr`, `designation`, `landline`, `phone`) VALUES
(101, 'Felicity', 'Feli', 'Jireh', 'felij', 'feli1234', '1996-10-17', 101101, 'Support', '02123456789', '+254718919882');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE IF NOT EXISTS `manager` (
  `id` int(15) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `idnumber` int(15) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role` varchar(20) NOT NULL,
  `status` varchar(20) NOT NULL,
  `tokencode` varchar(200) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`id`, `name`, `email`, `phone`, `idnumber`, `password`, `role`, `status`, `tokencode`) VALUES
(1, 'Felicity', 'felicity@gmail.com', '0718919882', 32382292, 'feli1234', '1', 'Y', 'cc99fcd05b753beda3d123d255ac59d4');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `b_type` varchar(2) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `address` varchar(20) NOT NULL,
  `city` varchar(50) NOT NULL,
  `mobile` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `dob`, `b_type`, `gender`, `address`, `city`, `mobile`, `created_at`) VALUES
(1, 'Brian', 'Keya', 'keya@gmail.com', '1994-09-16', 'A+', 'Male', '420 Kisii', 'Kisii', '+254702846542', '2019-01-20 17:49:16'),
(2, 'Kate', 'Spence', 'kate@gmail.com', '1997-01-01', 'B+', 'Female', '3442', 'Kiambu', '098938579', '2019-01-20 17:51:11');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `donors`
--
ALTER TABLE `donors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `prc_nr` (`prc_nr`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `donors`
--
ALTER TABLE `donors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=102;
--
-- AUTO_INCREMENT for table `manager`
--
ALTER TABLE `manager`
  MODIFY `id` int(15) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
