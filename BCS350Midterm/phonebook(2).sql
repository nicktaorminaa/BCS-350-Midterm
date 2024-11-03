-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Mar 22, 2022 at 10:27 PM
-- Server version: 5.7.31
-- PHP Version: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bcs350`
--

-- --------------------------------------------------------

--
-- Table structure for table `phonebook`
--

DROP TABLE IF EXISTS `phonebook`;
CREATE TABLE IF NOT EXISTS `phonebook` (
  `rowid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `firstname` varchar(25) NOT NULL,
  `lastname` varchar(25) NOT NULL,
  `category` varchar(12) NOT NULL,
  `email` varchar(80) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `city` varchar(25) NOT NULL,
  PRIMARY KEY (`rowid`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `phonebook`
--

INSERT INTO `phonebook` (`rowid`, `firstname`, `lastname`, `category`, `email`, `phone`, `city`) VALUES
(1, 'John', 'Smith', 'Family', 'john.smith@yahoo.com', '516-123-4567', 'Woodmere'),
(2, 'Mary', 'Smith', 'Family', 'mary.smith@optonline.net', '516-123-4567', 'Syosset'),
(3, 'Frank', 'Smith', 'Family', 'frank.smith@msn.com', '631-987-6543', 'Smithtown'),
(4, 'Alice', 'Smith', 'Family', 'alice.smith@gmail.com', '631-987-6544', 'Smithtown'),
(5, 'Robert', 'Jones', 'Friend', 'robert.jones@jones.com', '718-897-2244', 'Queens'),
(6, 'Sara', 'Watson', 'Friend', 'sara.watson@watson.com', '212-555-1212', 'Manhattan'),
(7, 'Emma', 'Fields', 'Friend', 'emma.fields@msn.com', '201-456-7890', 'Bayonne'),
(8, 'Harry', 'Burns', 'Business', 'harry@burns.com', '516-333-1130', 'Garden City'),
(9, 'Lisa', 'Freeman', 'Other', 'lisa@freeman.com', '516-333-9898', 'Garden City'),
(10, 'Steve', 'Green', 'Business', 'steve.green@plumbers.com', '516-654-4332', 'Lynbrook'),
(11, 'Jane', 'Doe', 'Business', 'jane.doe@gmail.com', '123-456-7890', 'NYC'),
(12, 'John', 'Doe', 'Business', 'john.dow@optimum.net', '914-555-5555', 'Westchester'),
(13, 'Barry', 'Bailey', 'Friend', 'bbailey@yahoo.com', '718-555-1234', 'Brooklyn'),
(14, 'Carol', 'Potter', 'Other', 'carol.potter@mlb.com', '718-678-3434', 'Staten Island'),
(15, 'Doug', 'Davies', 'Family', 'dougd@aol.com', '631-443-5656', 'Bethpage'),
(17, 'Charles', 'Kaplan', 'Friend', 'kaplancr@farmingdale.edu', '516-555-1212', 'Rockville Centre');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
