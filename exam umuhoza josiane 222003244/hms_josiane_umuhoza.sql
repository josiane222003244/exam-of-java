-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 19, 2024 at 11:34 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `hms josiane_umuhoza`
--

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE IF NOT EXISTS `customer` (
  `Name` varchar(40) NOT NULL,
  `Address` varchar(40) NOT NULL,
  `Phone` bigint(10) NOT NULL,
  `Type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('josiane', 'josiane');

-- --------------------------------------------------------

--
-- Table structure for table `restaurant`
--

CREATE TABLE IF NOT EXISTS `restaurant` (
  `itemNo` int(3) NOT NULL AUTO_INCREMENT,
  `itemName` varchar(20) NOT NULL,
  `Price` int(4) NOT NULL,
  `Type` varchar(10) NOT NULL,
  PRIMARY KEY (`itemNo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=13 ;

--
-- Dumping data for table `restaurant`
--

INSERT INTO `restaurant` (`itemNo`, `itemName`, `Price`, `Type`) VALUES
(1, 'SHAHI PANEER', 500, 'MEAL'),
(2, 'CHOCOLATE FONDUE', 200, 'MEAL'),
(3, 'MANCHOW SOUP', 400, 'MEAL'),
(4, 'PANEER MANCHURIAN', 350, 'MEAL'),
(5, 'PIRI-PIRI CHICKEN', 600, 'MEAL'),
(6, 'PINA-COLADA', 250, 'DRINK'),
(7, 'ARIZONA TEA', 150, 'DRINK'),
(8, 'CAPPUCCINO', 180, 'DRINK'),
(9, 'ESPRESSO', 250, 'DRINK'),
(10, 'MELON JUICE', 100, 'DRINK'),
(11, 'didier murerwa', 350, 'drink'),
(12, 'source pane', 400, 'meal');

-- --------------------------------------------------------

--
-- Table structure for table `restaurantcustomer`
--

CREATE TABLE IF NOT EXISTS `restaurantcustomer` (
  `custName` varchar(20) NOT NULL,
  `custAddr` varchar(20) NOT NULL,
  `Phone` bigint(10) NOT NULL,
  `Meal` varchar(20) NOT NULL,
  `Drink` varchar(20) NOT NULL,
  `Price` int(7) NOT NULL,
  `status` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE IF NOT EXISTS `room` (
  `roomNo` int(3) NOT NULL AUTO_INCREMENT,
  `roomType` varchar(20) NOT NULL,
  `bedType` varchar(20) NOT NULL,
  `Price` int(5) NOT NULL,
  PRIMARY KEY (`roomNo`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`roomNo`, `roomType`, `bedType`, `Price`) VALUES
(1, 'SUITE', 'QUEEN', 9500),
(2, 'DELUXE', 'KING', 7500),
(3, 'AC', 'KING', 8000),
(4, 'NON-AC', 'DOUBLE', 3500),
(5, 'SUITE', 'SINGLE', 5500),
(6, 'DELUXE', 'DOUBLE', 7000),
(7, 'AC', 'QUEEN', 6500),
(8, 'NON-AC', 'SINGLE', 5500),
(9, 'VIP', 'KING', 6000);

-- --------------------------------------------------------

--
-- Table structure for table `roomcutomer`
--

CREATE TABLE IF NOT EXISTS `roomcutomer` (
  `name` varchar(20) NOT NULL,
  `address` varchar(20) NOT NULL,
  `phone` bigint(10) NOT NULL,
  `roomtype` varchar(10) NOT NULL,
  `bedtype` varchar(20) NOT NULL,
  `price` int(7) NOT NULL,
  `status` int(11) NOT NULL,
  `roomno` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`roomno`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `roomcutomer`
--

INSERT INTO `roomcutomer` (`name`, `address`, `phone`, `roomtype`, `bedtype`, `price`, `status`, `roomno`) VALUES
('didier', 'murerwa', 234, 'suite', 'queen', 9500, 1, 1),
('UMUHOZA', 'JOSIANE', 781687019, 'SUITE', 'KING', 4000, 1, 2),
('UMUHOZA', 'JOSIANE', 781687019, 'SUITE', 'KING', 4000, 0, 3);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
