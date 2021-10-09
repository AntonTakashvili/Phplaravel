-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 09, 2021 at 07:09 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `users`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `birthday` int(11) NOT NULL,
  `registered_at` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `surname`, `birthday`, `registered_at`) VALUES
(5, 'Ana', 'Qavtaradze', 25, 'facebook,instagram'),
(6, 'Ana', 'Qavtaradze', 25, 'facebook,instagram'),
(7, 'Nika', 'Apshinashvili', 1, 'facebook'),
(8, 'Giorgi', 'Giorgadze', 10, 'facebook'),
(9, 'Ana', 'Qavtaradze', 25, 'facebook,instagram'),
(10, 'Nika', 'Apshinashvili', 1, 'facebook'),
(11, 'Giorgi', 'Giorgadze', 10, 'facebook'),
(12, 'Ana', 'Qavtaradze', 25, 'facebook,instagram'),
(13, 'Nika', 'Apshinashvili', 1, 'facebook'),
(14, 'Giorgi', 'Giorgadze', 10, 'facebook'),
(15, 'Ana', 'Qavtaradze', 25, 'facebook,instagram'),
(16, 'Nika', 'Apshinashvili', 1, 'facebook'),
(17, 'Giorgi', 'Giorgadze', 10, 'facebook'),
(18, 'Ana', 'Qavtaradze', 25, 'facebook,instagram'),
(19, 'Nika', 'Apshinashvili', 1, 'facebook'),
(20, 'Giorgi', 'Giorgadze', 10, 'facebook'),
(21, 'Ana', 'Qavtaradze', 25, 'facebook,instagram'),
(22, 'Nika', 'Apshinashvili', 1, 'facebook'),
(23, 'Giorgi', 'Giorgadze', 10, 'facebook');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
