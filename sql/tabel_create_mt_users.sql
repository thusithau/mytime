-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 24, 2017 at 09:52 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mytimedb`
--

-- --------------------------------------------------------

--
-- Table structure for table `mt_users`
--
DROP TABLE IF EXISTS `mt_users`;
CREATE TABLE `mt_users` (
  `birth_date` date DEFAULT NULL,
  `birth_time` text,
  `location` int(10) DEFAULT NULL,
  `tel` text,
  `is_activated` int(2) DEFAULT '1',
  `lagna` text,
  `star` text,
  `birth_rashi` text,
  `col_index` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='user info';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mt_users`
--
ALTER TABLE `mt_users`
  ADD PRIMARY KEY (`col_index`),
  ADD UNIQUE KEY `col_index` (`col_index`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mt_users`
--
ALTER TABLE `mt_users`
  MODIFY `col_index` int(10) NOT NULL AUTO_INCREMENT;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
