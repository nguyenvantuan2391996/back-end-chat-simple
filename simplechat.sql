-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 13, 2021 at 12:48 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `simplechat`
--

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `message_content` text COLLATE utf8_unicode_ci NOT NULL,
  `is_read` varchar(1) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `message_content`, `is_read`) VALUES
(1, 'Jarret Wuckert ! hello', '1'),
(2, 'You will soon receive message reply', '1'),
(3, 'How are you today ?', '1'),
(4, 'I\'m good.', '1'),
(5, 'And you ?', '1'),
(6, '.', '1'),
(7, 'Ok', '0'),
(8, '.....................', '0'),
(9, 'What ?', '0'),
(10, 'Hello you ?', '1'),
(11, 'You will soon receive message reply', '0'),
(12, 'How old are you ?', '1'),
(13, 'I\'m ok today :)', '0');

-- --------------------------------------------------------

--
-- Table structure for table `sender_receive`
--

CREATE TABLE `sender_receive` (
  `id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receive_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sender_receive`
--

INSERT INTO `sender_receive` (`id`, `message_id`, `sender_id`, `receive_id`) VALUES
(1, 1, 1, 2),
(2, 2, 2, 1),
(3, 3, 1, 2),
(4, 4, 2, 1),
(5, 5, 2, 1),
(6, 6, 2, 1),
(7, 7, 1, 2),
(8, 8, 1, 2),
(9, 9, 2, 1),
(10, 10, 1, 3),
(11, 11, 3, 1),
(12, 12, 1, 3),
(13, 13, 3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `user_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(30) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `user_name`, `password`, `name`) VALUES
(1, 'Marcel Armstrong', 'c4ca4238a0b923820dcc509a6f75849b', 'Marcel Armstrong'),
(2, 'Jarret Wuckert', 'c4ca4238a0b923820dcc509a6f75849b', 'Jarret Wuckert'),
(3, 'Breanne West', 'c4ca4238a0b923820dcc509a6f75849b', 'Breanne West');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sender_receive`
--
ALTER TABLE `sender_receive`
  ADD PRIMARY KEY (`id`),
  ADD KEY `message_id` (`message_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `sender_receive`
--
ALTER TABLE `sender_receive`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sender_receive`
--
ALTER TABLE `sender_receive`
  ADD CONSTRAINT `sender_receive_ibfk_1` FOREIGN KEY (`message_id`) REFERENCES `message` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
