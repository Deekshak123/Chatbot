-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.2:3307
-- Generation Time: Jul 27, 2023 at 04:27 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `chat`
--

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`) VALUES
(16, 1437819129, 1437819129, 'hii'),
(17, 571676336, 1437819129, 'hello'),
(18, 147442345, 1437819129, 'hey'),
(19, 147442345, 1437819129, 'hlo'),
(20, 1437819129, 147442345, 'hello'),
(21, 147442345, 1437819129, 'hii i\'m Deeksha'),
(22, 1437819129, 147442345, 'Hlo i\'m DK'),
(23, 1437819129, 147442345, 'how are you'),
(24, 147442345, 1437819129, 'i\'m fine'),
(25, 1437819129, 147442345, 'ok'),
(26, 147442345, 1437819129, 'hmm'),
(27, 1437819129, 147442345, '!!'),
(28, 1437819129, 147442345, 'This is last msg'),
(29, 147442345, 1437819129, 'asdsfdgfhadsfdgfhjgsfdgfhgfggdhfjghgfhgjkhfhg'),
(30, 1437819129, 147442345, 'hello'),
(31, 147442345, 1437819129, 'hii'),
(32, 1437819129, 147442345, 'hlo'),
(33, 1437819129, 147442345, 'hey'),
(34, 147442345, 1437819129, 'hlo'),
(37, 147442345, 571676336, 'hii'),
(38, 571676336, 147442345, 'hello'),
(39, 147442345, 571676336, 'hlo');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `unique_id` int(200) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `img` varchar(400) NOT NULL,
  `status` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `unique_id`, `fname`, `lname`, `email`, `password`, `img`, `status`) VALUES
(1, 147442345, 'Deeksha', 'Kesharwani', 'deekshak1234@gmail.com', 'deeksha@123', '1659441180pic1.jpeg', 'Offline now'),
(2, 571676336, 'pragya', 'Kesharwani', 'pragya@gmail.com', 'asdf', '1659441681IMG-20180822-WA0024.jpg', 'Offline now');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
