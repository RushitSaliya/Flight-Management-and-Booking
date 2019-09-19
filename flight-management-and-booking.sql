-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 19, 2019 at 12:47 PM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `flight-management-and-booking`
--

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `flight_id` int(11) NOT NULL,
  `flight_name` varchar(30) NOT NULL,
  `flight_price` float NOT NULL,
  `flight_source` varchar(20) NOT NULL,
  `flight_destination` varchar(20) NOT NULL,
  `flight_date` varchar(10) NOT NULL,
  `flight_time` varchar(20) NOT NULL,
  `flight_duration` varchar(10) NOT NULL,
  `flight_total_seats` int(11) NOT NULL,
  `flight_available_seats` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`flight_id`, `flight_name`, `flight_price`, `flight_source`, `flight_destination`, `flight_date`, `flight_time`, `flight_duration`, `flight_total_seats`, `flight_available_seats`) VALUES
(1, 'Indigo Air Boing 112', 234.3, 'Rajkot', 'Surat', '2019-09-07', '18:30', '2 hours', 300, 25),
(2, 'AirIndia Boing 29', 100, 'Rajkot', 'Surat', '2019-09-07', '19:15', '1.5 hours', 200, 15),
(3, 'Jet Airways', 130, 'Rajkot', 'Surat', '2019-09-07', '13:00', '1.7 hours', 220, 10);

-- --------------------------------------------------------

--
-- Table structure for table `passenger`
--

CREATE TABLE `passenger` (
  `passenger_id` int(11) NOT NULL,
  `flight_id` int(11) NOT NULL,
  `passenger_name` varchar(30) NOT NULL,
  `passenger_age` int(11) NOT NULL,
  `passenger_gender` varchar(1) NOT NULL,
  `passenger_mobile` varchar(13) NOT NULL,
  `passenger_email` varchar(50) NOT NULL,
  `passenger_seat` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `passenger`
--

INSERT INTO `passenger` (`passenger_id`, `flight_id`, `passenger_name`, `passenger_age`, `passenger_gender`, `passenger_mobile`, `passenger_email`, `passenger_seat`) VALUES
(1, 2, 'Rushit Saliya', 19, 'm', '9327650673', 'rushit@gmail.com', 'M3'),
(2, 2, 'Priyank Vekariya', 19, 'm', '8156008166', 'priyank@gmail.com', 'C9'),
(3, 1, 'Hardik Khunt', 19, 'm', '1234567890', 'hardik@gmail.com', 'Q10'),
(4, 2, 'Jenil Popat', 19, 'f', '1234567890', 'jenil@gmail.com', 'A1'),
(5, 2, 'Rushit Saliya', 19, 'm', '9327650673', 'rushitsaliya99@gmail.com', 'A3'),
(6, 3, 'Priyank Vekariya', 19, 'm', '8156008166', 'rushit.saliya9@gmail.com', 'F6'),
(7, 3, 'Dhaval Sanghani', 19, 'o', '1234567890', 'rushitsaliya99@gmail.com', 'D1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(30) NOT NULL,
  `user_bdate` varchar(10) NOT NULL,
  `user_gender` varchar(1) NOT NULL,
  `user_mobile` varchar(13) NOT NULL,
  `user_email` varchar(50) NOT NULL,
  `user_location` varchar(100) NOT NULL,
  `user_password` varchar(30) NOT NULL,
  `user_category` varchar(5) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `user_name`, `user_bdate`, `user_gender`, `user_mobile`, `user_email`, `user_location`, `user_password`, `user_category`) VALUES
(1, 'Rushit Saliya', '1999-12-05', 'm', '9327650673', 'rushit@gmail.com', 'Surat, Gujarat', 'pass', 'user'),
(2, 'Priyank Vekariya', '1999-10-09', 'm', '8156008166', 'priyank@gmail.com', 'Rajkot, Gujarat', 'test', 'user'),
(3, 'Divu', '2000-05-01', 'm', '8845568076', 'divyesh@gmail.com', 'Surendranagar, Gujarat', 'test123', 'user'),
(4, 'Hardik Khunt', '2019-09-07', 'm', '1234567890', 'hardik@gmail.com', 'Surat, Gujarat', 'hardik', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `flight`
--
ALTER TABLE `flight`
  ADD PRIMARY KEY (`flight_id`);

--
-- Indexes for table `passenger`
--
ALTER TABLE `passenger`
  ADD PRIMARY KEY (`passenger_id`),
  ADD KEY `flight_id` (`flight_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `flight`
--
ALTER TABLE `flight`
  MODIFY `flight_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `passenger`
--
ALTER TABLE `passenger`
  MODIFY `passenger_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `passenger`
--
ALTER TABLE `passenger`
  ADD CONSTRAINT `flight_id` FOREIGN KEY (`flight_id`) REFERENCES `flight` (`flight_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
