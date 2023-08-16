-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2022 at 06:37 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

DROP TABLE IF EXISTS message;
DROP TABLE IF EXISTS students;
DROP TABLE IF EXISTS users;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `HOD_assignment`
--

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `from_user` int(11) NOT NULL,
  `to_user` int(11) NOT NULL,
  `text` varchar(1000) NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `seen` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `from_user`, `to_user`, `text`, `timestamp`, `seen`) VALUES
(2, 4, 3, 'test for message function', '2022-05-27 16:05:08', 1),
(3, 4, 3, '<script>alert(origin)</script>', '2022-05-27 16:05:08', 1),
(5, 3, 4, 'hi teacher, are you try to xss this site ?', '2022-05-27 16:03:25', 1),
(6, 3, 4, 'dont even think about it. LOL', '2022-05-27 16:03:54', 1),
(7, 3, 4, 'how about test another funciton first ?', '2022-05-27 16:08:10', 1),
(9, 3, 4, 'what shoud we test now ?', '2022-05-27 16:09:03', 1),
(10, 4, 3, 'LOL. my miss take, i text with myself', '2022-05-27 16:09:16', 1),
(11, 3, 4, 'LOL', '2022-05-27 17:25:51', 1),
(12, 4, 3, 'LOL', '2022-05-27 17:25:51', 0),
(13, 1, 4, 'Hello teacher', '2022-05-28 13:31:33', 0),
(14, 1, 4, 'how are you ?', '2022-05-28 13:31:41', 0),
-- FOR the Lab here:
(15, 5, 1, 'Hey, have you seen the new Iron Man movie?', '2022-05-27 16:09:16', 1),
(16, 1, 5, 'No, I have not! I have been hearing great things about it, though.', '2022-05-27 16:10:16', 1),
(17, 5, 1, 'It is amazing! Robert Downey Jr. is perfect as Tony Stark. He is so charming and funny, but he also has a lot of depth. And the action scenes are incredible.', '2022-05-27 16:11:16', 1),
(18, 1, 5, 'I am so jealous! I cant wait to see it.', '2022-05-27 16:12:16', 1),
(19, 5, 1, 'You are in for a treat. I heard there is a secret webpage where you can download it for free.', '2022-05-27 16:13:16', 1),
(20, 1, 5, 'Really? That is awesome! I will definitely check it out.', '2022-05-27 16:14:16', 1),
(21, 5, 1, 'Just be careful. It is a pretty shady website.', '2022-05-27 16:15:16', 1),
(22, 1, 5, 'I will be careful. I am just so excited to see the movie!', '2022-05-27 16:16:16', 1),
(23, 5, 1, 'Okay, have fun !', '2022-05-27 16:17:16', 0);
-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `username` varchar(225) NOT NULL,
  `dob` varchar(10) NOT NULL,
  `ID_card` varchar(12) NOT NULL,
  `address` varchar(225) NOT NULL,
  `rollnumber` varchar(11) NOT NULL,
  `class` varchar(11) NOT NULL,
  `teacher_username` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`username`, `dob`, `ID_card`, `address`, `rollnumber`, `class`, `teacher_username`) VALUES
('chloe', '2000-12-11', '099999999', 'HN', 'HOD110100', 'HOD401', 'johnathan'),
('dao10', '1999-06-17', '881928365762', 'HN', 'HOD401999', 'HOD401', 'linh9'),
('user2', '2001-01-26', '88192836278', 'HN', 'HOD401999', 'HOD401', 'johnathan'),
('hieu', '2013-03-19', '88192836278', 'Hoa Lac', 'HOD110111', 'HOD401', 'johnathan'),
('hoa123', '2001-02-11', '88192836278', 'KTX FPT', 'HOD110112', 'HOD401', 'johnathan'),
('user', '2022-04-28', '88192836278', '4353 Point Street', 'HOD110113', 'HOD401', 'johnathan');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(225) NOT NULL,
  `fullname` varchar(225) NOT NULL,
  `role` varchar(7) NOT NULL,
  `password` varchar(225) NOT NULL,
  `email` varchar(225) NOT NULL,
  `phone` varchar(225) NOT NULL,
  `gender` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `fullname`, `role`, `password`, `email`, `phone`, `gender`) VALUES
-- user password: Not_an_easy_password_to_guess
(1, 'user', 'David', 'student', 'cc963849817caf512f85744eb451029252cb0567b9fb80b5bd7b234b79427eb1', 'user@fptu.com.vn', '0123456789', 'Male'),
(2, 'chloe', 'Chloe Sevigny', 'student', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', 'chloe@fptu.com.vn', '0877461523', 'Female'),
-- user2 password: HTTP_is_not_safe
(3, 'user2', 'Johny English', 'student', 'dfb204948282d185cd718d7bd9292fc9974ba67a6d9522ef03e3fb2a08dbd822', 'user2@gmail.com', '0123456789', 'Male'),
(4, 'johnathan', 'Johnathan Anh Tuan', 'teacher', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', 'johnathan@fptu.com.vn', '0998877888', 'Male'),
(5, 'hoa123', 'Nguyen Thi Hoa', 'student', '66227f651988c27784868f7db8121c55d1f340df0354ab702774937ffd179ab8', 'flower123@gmail.com', '0123456789', 'Female'),
(6, 'hieu', 'Dang Cong Hieu', 'student', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', 'hieu@gmail.com', '0897787676', 'Male'),
(7, 'linh9', 'Doan Dinh Linh', 'teacher', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', 'linh9@fptu.com.vn', '099889989', 'Male'),
(8, 'dao10', 'Nguyen Van Dao', 'student', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8', 'dao10@fptu.com.vn', '0123456789', 'Male');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `from_user` (`from_user`),
  ADD KEY `to_user` (`to_user`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=110;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `from_user` FOREIGN KEY (`from_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `to_user` FOREIGN KEY (`to_user`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `students`
--
ALTER TABLE `students`
  ADD CONSTRAINT `username` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
