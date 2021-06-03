-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2021 at 03:19 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tourism`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookfood`
--

CREATE TABLE `bookfood` (
  `type` varchar(45) NOT NULL,
  `foodName` varchar(45) NOT NULL,
  `foodCost` varchar(45) NOT NULL,
  `quantity` varchar(45) NOT NULL,
  `totalCost` int(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `packagename` varchar(45) NOT NULL,
  `place` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookfood`
--

INSERT INTO `bookfood` (`type`, `foodName`, `foodCost`, `quantity`, `totalCost`, `email`, `packagename`, `place`) VALUES
('Non-Veg', 'Butter Chicken', '15', '3', 45, 'luffy', 'green building', 'missori'),
('Non-Veg', 'Chicken Biryani', '10', '1', 10, 'luffy', 'green building', 'missori'),
('Veg', 'Gobi', '5', '4', 20, 'sai@gmail.com', 'green building', 'missori'),
('Veg', 'Gobi', '5', '1', 5, 'ketul@outlook.com', 'Snow Time', 'NC');

-- --------------------------------------------------------

--
-- Table structure for table `bookpackage`
--

CREATE TABLE `bookpackage` (
  `id` int(3) NOT NULL,
  `packagename` varchar(45) NOT NULL,
  `place` varchar(45) NOT NULL,
  `packageCost` varchar(45) NOT NULL,
  `days` varchar(45) NOT NULL,
  `noofPersons` varchar(45) NOT NULL,
  `totalcost` int(45) NOT NULL,
  `email` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookpackage`
--

INSERT INTO `bookpackage` (`id`, `packagename`, `place`, `packageCost`, `days`, `noofPersons`, `totalcost`, `email`) VALUES
(1, 'green building', 'missori', '30', '2', '4', 120, 'sai@gmail.com'),
(1, 'Snow Time', 'NC', '20', '2', '1', 20, 'nikesh@gmail.com'),
(1, 'waterfall', 'nc', '20', '1', '1', 20, 'ketul@outlook.com'),
(2, 'Snow Time', 'NC', '20', '2', '1', 20, 'ketul@outlook.com'),
(1, 'Snow Time', 'NC', '20', '2', '10', 200, 'nikesh2804@gmail.com'),
(1, 'green building', 'missori', '30', '2', '2', 60, 'luffy'),
(3, 'abcd', 'manali', '120', '3', '1', 120, 'ketul@outlook.com'),
(31, 'snow time', 'manali', '120', '3', '1', 120, 'devansh@gmail.com'),
(32, 'waterfall', 'nc', '20', '1', '1', 20, 'devansh@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `bookroom`
--

CREATE TABLE `bookroom` (
  `hotelName` varchar(45) NOT NULL,
  `roomType` varchar(45) NOT NULL,
  `roomSize` varchar(45) NOT NULL,
  `roomCost` int(45) NOT NULL,
  `roomDate` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `packagename` varchar(45) NOT NULL,
  `place` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bookroom`
--

INSERT INTO `bookroom` (`hotelName`, `roomType`, `roomSize`, `roomCost`, `roomDate`, `email`, `packagename`, `place`) VALUES
('swagath', 'AC', 'Single', 100, '2017-02-23', 'luffy', 'green building', 'missori'),
('Taj', 'AC', 'Double', 300, '2017-02-15', 'nikesh2804@gmail.com', 'Snow Time', 'NC'),
('Taj', 'AC', 'Double', 300, '2017-02-16', 'nikesh2804@gmail.com', 'Snow Time', 'NC'),
('swagath', 'AC', 'Single', 100, '2021-04-30', 'ketul@outlook.com', 'Snow Time', 'NC'),
('swagath', 'AC', 'Single', 100, '2021-04-14', 'nikesh@gmail.com', 'Snow Time', 'NC');

-- --------------------------------------------------------

--
-- Table structure for table `booktransport`
--

CREATE TABLE `booktransport` (
  `transportType` varchar(45) NOT NULL,
  `vehicleType` varchar(45) NOT NULL,
  `vehicleName` varchar(45) NOT NULL,
  `vehicleCost` int(45) NOT NULL,
  `vehicleDate` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `packagename` varchar(45) NOT NULL,
  `place` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booktransport`
--

INSERT INTO `booktransport` (`transportType`, `vehicleType`, `vehicleName`, `vehicleCost`, `vehicleDate`, `email`, `packagename`, `place`) VALUES
('Car', 'AC', 'sonata sport', 300, '2017-02-17', 'nikesh2804@gmail.com', 'Snow Time', 'NC'),
('Car', 'AC', 'sonata sport', 300, '2017-02-22', 'luffy', 'green building', 'missori');

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

CREATE TABLE `discount` (
  `packagename` varchar(45) NOT NULL,
  `discount` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`packagename`, `discount`) VALUES
('green building', '20'),
('waterfall', '15');

-- --------------------------------------------------------

--
-- Table structure for table `food`
--

CREATE TABLE `food` (
  `foodtype` varchar(45) NOT NULL,
  `foodname` varchar(45) NOT NULL,
  `foodcost` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `food`
--

INSERT INTO `food` (`foodtype`, `foodname`, `foodcost`) VALUES
('Non-Veg', 'Chicken Biryani', '10'),
('Non-Veg', 'Butter Chicken', '15'),
('Veg', 'Gobi', '5');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `hotelName` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`hotelName`) VALUES
('swagath'),
('taj krishna'),
('surya palace');

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `id` int(4) NOT NULL,
  `packagename` varchar(45) NOT NULL,
  `place` varchar(45) NOT NULL,
  `cost` varchar(45) NOT NULL,
  `days` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `package`
--

INSERT INTO `package` (`id`, `packagename`, `place`, `cost`, `days`) VALUES
(4, 'Snow Time', 'NC', '20', '2'),
(5, 'waterfall', 'nc', '20', '1'),
(7, 'green building', 'washington', '30', '1'),
(8, 'green building', 'missori', '30', '2'),
(12, 'snow time', 'manali', '120', '3'),
(13, 'abcd', 'manali', '120', '3');

-- --------------------------------------------------------

--
-- Table structure for table `payment`
--

CREATE TABLE `payment` (
  `packagename` varchar(45) NOT NULL,
  `place` varchar(45) NOT NULL,
  `cost` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `cardName` varchar(45) NOT NULL,
  `cardNumber` varchar(45) NOT NULL,
  `cvv` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment`
--

INSERT INTO `payment` (`packagename`, `place`, `cost`, `email`, `cardName`, `cardNumber`, `cvv`) VALUES
('green building', 'washington', '27', 'nikesh@gmail.com', 'nikesh', '1234567891523654', '456'),
('green building', 'missori', '98', 'sai@gmail.com', 'devansh', '123456', '234'),
('waterfall', 'nc', '15', 'ketul@outlook.com', 'ketul patel', '7988786899097980', '273');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `mobile` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`name`, `email`, `password`, `mobile`) VALUES
('ketul patel', 'ketul@outlook.com', '4567', '7777888899'),
('devansh', 'devansh@gmail.com', '1234', '9999888877');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `hotelName` varchar(45) NOT NULL,
  `roomType` varchar(45) NOT NULL,
  `roomSize` varchar(45) NOT NULL,
  `roomCost` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`hotelName`, `roomType`, `roomSize`, `roomCost`) VALUES
('swagath', 'AC', 'Single', '100'),
('swagath', 'AC', 'Double', '1000'),
('taj krishna', 'Non-AC', 'Single', '15'),
('taj krishna', 'AC', 'Double', '500'),
('surya palace', 'AC', 'Double', '100');

-- --------------------------------------------------------

--
-- Table structure for table `transport`
--

CREATE TABLE `transport` (
  `transportType` varchar(45) NOT NULL,
  `vehicleType` varchar(45) NOT NULL,
  `vehicleName` varchar(45) NOT NULL,
  `vehicleCost` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transport`
--

INSERT INTO `transport` (`transportType`, `vehicleType`, `vehicleName`, `vehicleCost`) VALUES
('Car', 'AC', 'sonata sport', '300'),
('Bus', 'AC', 'Bus', '50'),
('Mini-Bus', 'Non-AC', 'Mini-Bus', '50'),
('Bus', 'Non-AC', 'Bus', '30'),
('Mini-Bus', 'AC', 'Mini-Bus', '53'),
('Car', 'Non-AC', 'toyota', '70'),
('Car', 'AC', 'GJ06 7623', '160');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookpackage`
--
ALTER TABLE `bookpackage`
  ADD KEY `id` (`id`) USING BTREE;

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD KEY `id` (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookpackage`
--
ALTER TABLE `bookpackage`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
