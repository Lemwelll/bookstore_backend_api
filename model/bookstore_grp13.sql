-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 10, 2024 at 08:43 AM
-- Server version: 8.0.36-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore_grp13`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `mngstore` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `adminID` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`mngstore`, `adminID`, `username`, `password`) VALUES
('', '1', 'admin', 'admin'),
('qweq', 'eqwwq', 'ewq', 'eqweqw'),
('test1', '1111', 'admin1', '1111'),
('test2', '2222', 'admin2', '2222'),
('test3', '3333', 'admin3', '3333'),
('test4', '4444', 'admin4', '4444'),
('test5', '5555', 'admin5', '5555'),
('test9', '12', 'dasdssasad', 'dasdsa');

-- --------------------------------------------------------

--
-- Table structure for table `book`
--

CREATE TABLE `book` (
  `mngstore` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `bookID` int NOT NULL,
  `mngbkstore` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `bookTitle` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `bookquantityAvailability` int NOT NULL,
  `bookpriceDetails` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book`
--

INSERT INTO `book` (`mngstore`, `bookID`, `mngbkstore`, `bookTitle`, `bookquantityAvailability`, `bookpriceDetails`) VALUES
('test1', 2, 'test1', 'testdev', 20, 111),
('test3', 3, '33', 'testdev3', 3, 333),
('test1', 10, 'test1', 'afafsdfasf', 200, 2534),
('test10', 11, 'test11', 'webbook', 200, 500),
('test10', 12, 'test11', 'webbook', 200, 500),
('test10', 13, 'test11', 'webbook', 200, 500),
('test10', 14, 'test11', 'webbook', 200, 500),
('test10', 17, 'test11', 'webbook', 200, 500),
('test10', 18, 'test11', 'webbook', 200, 500),
('test10', 19, 'test11', 'webbook', 200, 500),
('test10', 20, 'test11', 'webbook', 200, 500);

-- --------------------------------------------------------

--
-- Table structure for table `bookdetails`
--

CREATE TABLE `bookdetails` (
  `bookreservationID` int NOT NULL,
  `reservationdetailsID` int NOT NULL,
  `bookID` int NOT NULL,
  `bookQuantity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookdetails`
--

INSERT INTO `bookdetails` (`bookreservationID`, `reservationdetailsID`, `bookID`, `bookQuantity`) VALUES
(1, 3, 2, 11),
(3, 3, 3, 21);

-- --------------------------------------------------------

--
-- Table structure for table `reservationdetails`
--

CREATE TABLE `reservationdetails` (
  `createDate` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `reservationdetailsID` int NOT NULL,
  `expiryDate` date NOT NULL,
  `numofItems` int NOT NULL,
  `totalAmount` int NOT NULL,
  `studentID` int NOT NULL,
  `items` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `status` varchar(50) COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `reservationdetails`
--

INSERT INTO `reservationdetails` (`createDate`, `reservationdetailsID`, `expiryDate`, `numofItems`, `totalAmount`, `studentID`, `items`, `status`) VALUES
('Mon Apr 29 2024 11:01:50 GMT+0800 (China Standard Time)', 36, '0000-00-00', 7, 4342, 3, '\"[{\\\"id\\\":5,\\\"category\\\":\\\"uniform\\\",\\\"name\\\":\\\"School Uniform (Polo)\\\",\\\"price\\\":444,\\\"stock\\\":1,\\\"size\\\":\\\"XL\\\",\\\"image\\\":\\\"\\\"},{\\\"id\\\":6,\\\"category\\\":\\\"uniform\\\",\\\"name\\\":\\\"School Uniform (PE)\\\",\\\"price\\\":555,\\\"stock\\\":1,\\\"size\\\":\\\"XXL\\\",\\\"image\\\":\\\"\\\"},{\\\"id\\\":1,\\\"category\\\":\\\"book\\\",\\\"name\\\":\\\"pharm\\\",\\\"price\\\":121,\\\"stock\\\":1,\\\"image\\\":\\\"\\\"},{\\\"id\\\":2,\\\"category\\\":\\\"book\\\",\\\"name\\\":\\\"testdev\\\",\\\"price\\\":111,\\\"stock\\\":1,\\\"image\\\":\\\"\\\"},{\\\"id\\\":7,\\\"category\\\":\\\"book\\\",\\\"name\\\":\\\"dsadsad\\\",\\\"price\\\":2112,\\\"stock\\\":1,\\\"image\\\":\\\"\\\"},{\\\"id\\\":5,\\\"category\\\":\\\"book\\\",\\\"name\\\":\\\"testdev5\\\",\\\"price\\\":555,\\\"stock\\\":1,\\\"image\\\":\\\"\\\"},{\\\"id\\\":4,\\\"category\\\":\\\"book\\\",\\\"name\\\":\\\"testdev4\\\",\\\"price\\\":444,\\\"stock\\\":1,\\\"image\\\":\\\"\\\"}]\"', '36'),
('Mon Apr 29 2024 11:04:47 GMT+0800 (China Standard Time)', 37, '0000-00-00', 7, 1897, 2, '\"[{\\\"id\\\":5,\\\"category\\\":\\\"uniform\\\",\\\"name\\\":\\\"School Uniform (Polo)\\\",\\\"price\\\":444,\\\"stock\\\":1,\\\"size\\\":\\\"XL\\\",\\\"image\\\":\\\"\\\"},{\\\"id\\\":6,\\\"category\\\":\\\"uniform\\\",\\\"name\\\":\\\"School Uniform (PE)\\\",\\\"price\\\":555,\\\"stock\\\":1,\\\"size\\\":\\\"XXL\\\",\\\"image\\\":\\\"\\\"},{\\\"id\\\":1,\\\"category\\\":\\\"book\\\",\\\"name\\\":\\\"pharm\\\",\\\"price\\\":121,\\\"stock\\\":1,\\\"image\\\":\\\"\\\"},{\\\"id\\\":2,\\\"category\\\":\\\"book\\\",\\\"name\\\":\\\"testdev\\\",\\\"price\\\":111,\\\"stock\\\":1,\\\"image\\\":\\\"\\\"},{\\\"id\\\":4,\\\"category\\\":\\\"uniform\\\",\\\"name\\\":\\\"School Uniform (PE)\\\",\\\"price\\\":333,\\\"stock\\\":1,\\\"size\\\":\\\"L\\\",\\\"image\\\":\\\"\\\"},{\\\"id\\\":3,\\\"category\\\":\\\"uniform\\\",\\\"name\\\":\\\"School Uniform (uniform)\\\",\\\"price\\\":222,\\\"stock\\\":1,\\\"size\\\":\\\"S\\\",\\\"image\\\":\\\"\\\"},{\\\"id\\\":2,\\\"category\\\":\\\"uniform\\\",\\\"name\\\":\\\"School Uniform (uniform)\\\",\\\"price\\\":111,\\\"stock\\\":1,\\\"size\\\":\\\"M\\\",\\\"image\\\":\\\"\\\"}]\"', 'completed'),
('Mon Apr 29 2024 11:16:43 GMT+0800 (China Standard Time)', 38, '0000-00-00', 3, 666, 2, '\"[{\\\"id\\\":2,\\\"category\\\":\\\"uniform\\\",\\\"name\\\":\\\"School Uniform (uniform)\\\",\\\"price\\\":111,\\\"stock\\\":1,\\\"size\\\":\\\"M\\\",\\\"image\\\":\\\"\\\"},{\\\"id\\\":3,\\\"category\\\":\\\"uniform\\\",\\\"name\\\":\\\"School Uniform (uniform)\\\",\\\"price\\\":222,\\\"stock\\\":1,\\\"size\\\":\\\"S\\\",\\\"image\\\":\\\"\\\"},{\\\"id\\\":4,\\\"category\\\":\\\"uniform\\\",\\\"name\\\":\\\"School Uniform (PE)\\\",\\\"price\\\":333,\\\"stock\\\":1,\\\"size\\\":\\\"L\\\",\\\"image\\\":\\\"\\\"}]\"', 'completed'),
('Mon Apr 29 2024 11:17:38 GMT+0800 (China Standard Time)', 39, '0000-00-00', 1, 222, 2, '\"[{\\\"id\\\":3,\\\"category\\\":\\\"uniform\\\",\\\"name\\\":\\\"School Uniform (uniform)\\\",\\\"price\\\":222,\\\"stock\\\":1,\\\"size\\\":\\\"S\\\",\\\"image\\\":\\\"\\\"}]\"', 'completed'),
('Mon Apr 29 2024 11:17:45 GMT+0800 (China Standard Time)', 40, '0000-00-00', 3, 1110, 2, '\"[{\\\"id\\\":5,\\\"category\\\":\\\"uniform\\\",\\\"name\\\":\\\"School Uniform (Polo)\\\",\\\"price\\\":444,\\\"stock\\\":1,\\\"size\\\":\\\"XL\\\",\\\"image\\\":\\\"\\\"},{\\\"id\\\":6,\\\"category\\\":\\\"uniform\\\",\\\"name\\\":\\\"School Uniform (PE)\\\",\\\"price\\\":555,\\\"stock\\\":1,\\\"size\\\":\\\"XXL\\\",\\\"image\\\":\\\"\\\"},{\\\"id\\\":2,\\\"category\\\":\\\"uniform\\\",\\\"name\\\":\\\"School Uniform (uniform)\\\",\\\"price\\\":111,\\\"stock\\\":1,\\\"size\\\":\\\"M\\\",\\\"image\\\":\\\"\\\"}]\"', 'completed'),
('Mon Apr 29 2024 11:19:24 GMT+0800 (China Standard Time)', 41, '0000-00-00', 3, 12654, 2, '\"[{\\\"id\\\":1,\\\"category\\\":\\\"uniform\\\",\\\"name\\\":\\\"School Uniform (PE)\\\",\\\"price\\\":12321,\\\"stock\\\":1,\\\"size\\\":\\\"M\\\",\\\"image\\\":\\\"\\\"},{\\\"id\\\":2,\\\"category\\\":\\\"uniform\\\",\\\"name\\\":\\\"School Uniform (uniform)\\\",\\\"price\\\":111,\\\"stock\\\":1,\\\"size\\\":\\\"M\\\",\\\"image\\\":\\\"\\\"},{\\\"id\\\":3,\\\"category\\\":\\\"uniform\\\",\\\"name\\\":\\\"School Uniform (uniform)\\\",\\\"price\\\":222,\\\"stock\\\":1,\\\"size\\\":\\\"S\\\",\\\"image\\\":\\\"\\\"}]\"', 'declined'),
('Mon Apr 29 2024 11:19:57 GMT+0800 (China Standard Time)', 42, '0000-00-00', 2, 24642, 2, '\"[{\\\"id\\\":1,\\\"category\\\":\\\"uniform\\\",\\\"name\\\":\\\"School Uniform (PE)\\\",\\\"price\\\":12321,\\\"stock\\\":1,\\\"size\\\":\\\"M\\\",\\\"image\\\":\\\"\\\"},{\\\"id\\\":1,\\\"category\\\":\\\"uniform\\\",\\\"name\\\":\\\"School Uniform (PE)\\\",\\\"price\\\":12321,\\\"stock\\\":1,\\\"size\\\":\\\"XXXL\\\",\\\"image\\\":\\\"\\\"}]\"', 'declined'),
('Mon Apr 29 2024 11:39:51 GMT+0800 (China Standard Time)', 43, '0000-00-00', 4, 1554, 1, '\"[{\\\"id\\\":3,\\\"category\\\":\\\"uniform\\\",\\\"name\\\":\\\"School Uniform (uniform)\\\",\\\"price\\\":222,\\\"stock\\\":1,\\\"size\\\":\\\"S\\\",\\\"image\\\":\\\"\\\"},{\\\"id\\\":5,\\\"category\\\":\\\"book\\\",\\\"name\\\":\\\"testdev5\\\",\\\"price\\\":555,\\\"stock\\\":1,\\\"image\\\":\\\"\\\"},{\\\"id\\\":4,\\\"category\\\":\\\"book\\\",\\\"name\\\":\\\"testdev4\\\",\\\"price\\\":444,\\\"stock\\\":1,\\\"image\\\":\\\"\\\"},{\\\"id\\\":3,\\\"category\\\":\\\"book\\\",\\\"name\\\":\\\"testdev3\\\",\\\"price\\\":333,\\\"stock\\\":1,\\\"image\\\":\\\"\\\"}]\"', 'declined'),
('Mon Apr 29 2024 11:46:58 GMT+0800 (China Standard Time)', 44, '0000-00-00', 4, 999, 1, '\"[{\\\"id\\\":2,\\\"category\\\":\\\"uniform\\\",\\\"name\\\":\\\"School Uniform (uniform)\\\",\\\"price\\\":111,\\\"stock\\\":1,\\\"size\\\":\\\"M\\\",\\\"image\\\":\\\"\\\"},{\\\"id\\\":3,\\\"category\\\":\\\"uniform\\\",\\\"name\\\":\\\"School Uniform (uniform)\\\",\\\"price\\\":222,\\\"stock\\\":1,\\\"size\\\":\\\"S\\\",\\\"image\\\":\\\"\\\"},{\\\"id\\\":4,\\\"category\\\":\\\"uniform\\\",\\\"name\\\":\\\"School Uniform (PE)\\\",\\\"price\\\":333,\\\"stock\\\":1,\\\"size\\\":\\\"L\\\",\\\"image\\\":\\\"\\\"},{\\\"id\\\":4,\\\"category\\\":\\\"uniform\\\",\\\"name\\\":\\\"School Uniform (PE)\\\",\\\"price\\\":333,\\\"stock\\\":1,\\\"size\\\":\\\"XXXL\\\",\\\"image\\\":\\\"\\\"}]\"', 'completed'),
('Mon Apr 29 2024 11:47:55 GMT+0800 (China Standard Time)', 45, '0000-00-00', 3, 3111, 1, '\"[{\\\"id\\\":4,\\\"category\\\":\\\"book\\\",\\\"name\\\":\\\"testdev4\\\",\\\"price\\\":444,\\\"stock\\\":1,\\\"image\\\":\\\"\\\"},{\\\"id\\\":5,\\\"category\\\":\\\"book\\\",\\\"name\\\":\\\"testdev5\\\",\\\"price\\\":555,\\\"stock\\\":1,\\\"image\\\":\\\"\\\"},{\\\"id\\\":7,\\\"category\\\":\\\"book\\\",\\\"name\\\":\\\"dsadsad\\\",\\\"price\\\":2112,\\\"stock\\\":1,\\\"image\\\":\\\"\\\"}]\"', 'completed'),
('Wed May 01 2024 20:39:29 GMT+0800 (Philippine Standard Time)', 46, '0000-00-00', 1, 333, 2, '\"[{\\\"id\\\":3,\\\"category\\\":\\\"book\\\",\\\"name\\\":\\\"testdev3\\\",\\\"price\\\":333,\\\"stock\\\":1,\\\"image\\\":\\\"\\\",\\\"mngstore\\\":\\\"test3\\\"}]\"', 'completed'),
('Wed May 01 2024 20:42:27 GMT+0800 (Philippine Standard Time)', 47, '0000-00-00', 3, 999, 2, '\"[{\\\"id\\\":2,\\\"category\\\":\\\"book\\\",\\\"name\\\":\\\"testdev\\\",\\\"price\\\":111,\\\"stock\\\":1,\\\"image\\\":\\\"\\\",\\\"mngstore\\\":\\\"test1\\\"},{\\\"id\\\":3,\\\"category\\\":\\\"book\\\",\\\"name\\\":\\\"testdev3\\\",\\\"price\\\":333,\\\"stock\\\":1,\\\"image\\\":\\\"\\\",\\\"mngstore\\\":\\\"test3\\\"},{\\\"id\\\":5,\\\"category\\\":\\\"book\\\",\\\"name\\\":\\\"testdev5\\\",\\\"price\\\":555,\\\"stock\\\":1,\\\"image\\\":\\\"\\\",\\\"mngstore\\\":\\\"test5\\\"}]\"', 'completed'),
('Wed May 01 2024 21:05:17 GMT+0800 (Philippine Standard Time)', 48, '0000-00-00', 2, 333, 2, '\"[{\\\"id\\\":2,\\\"category\\\":\\\"uniform\\\",\\\"name\\\":\\\"uniform\\\",\\\"price\\\":111,\\\"stock\\\":1,\\\"size\\\":\\\"M\\\",\\\"image\\\":\\\"\\\",\\\"mngstore\\\":\\\"test1\\\"},{\\\"id\\\":3,\\\"category\\\":\\\"uniform\\\",\\\"name\\\":\\\"uniform\\\",\\\"price\\\":222,\\\"stock\\\":1,\\\"size\\\":\\\"S\\\",\\\"image\\\":\\\"\\\",\\\"mngstore\\\":\\\"test2\\\"}]\"', 'completed'),
('Wed May 01 2024 21:22:34 GMT+0800 (Philippine Standard Time)', 49, '0000-00-00', 2, 555, 2, '\"[{\\\"id\\\":3,\\\"category\\\":\\\"uniform\\\",\\\"name\\\":\\\"uniform\\\",\\\"price\\\":222,\\\"stock\\\":1,\\\"size\\\":\\\"S\\\",\\\"image\\\":\\\"\\\",\\\"mngstore\\\":\\\"test2\\\"},{\\\"id\\\":4,\\\"category\\\":\\\"uniform\\\",\\\"name\\\":\\\"PE Senior High\\\",\\\"price\\\":333,\\\"stock\\\":1,\\\"size\\\":\\\"L\\\",\\\"image\\\":\\\"\\\",\\\"mngstore\\\":\\\"test3\\\"}]\"', 'completed'),
('Wed May 01 2024 23:09:12 GMT+0800 (Philippine Standard Time)', 50, '0000-00-00', 3, 611, 4, '\"[{\\\"id\\\":2,\\\"category\\\":\\\"book\\\",\\\"name\\\":\\\"testdev\\\",\\\"price\\\":111,\\\"stock\\\":1,\\\"image\\\":\\\"\\\",\\\"mngstore\\\":\\\"test1\\\"},{\\\"id\\\":2,\\\"category\\\":\\\"uniform\\\",\\\"name\\\":\\\"College Uniform\\\",\\\"price\\\":250,\\\"stock\\\":1,\\\"size\\\":\\\"M\\\",\\\"image\\\":\\\"\\\",\\\"mngstore\\\":\\\"test1\\\"},{\\\"id\\\":2,\\\"category\\\":\\\"uniform\\\",\\\"name\\\":\\\"College Uniform\\\",\\\"price\\\":250,\\\"stock\\\":1,\\\"size\\\":\\\"XXXL\\\",\\\"image\\\":\\\"\\\",\\\"mngstore\\\":\\\"test1\\\"}]\"', 'completed');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `studentID` int NOT NULL,
  `firstName` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `lastName` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `uicEmail` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`studentID`, `firstName`, `lastName`, `uicEmail`, `password`) VALUES
(1, 'Raldin', 'Casidar', 'raldin.disomimba13@gmail.com', 'dindin23'),
(2, 'Juan', 'Luna', 'marasigan@gmail.com', 'dindin23'),
(3, 'Sheen', 'Lee', 'sheenlee@gmail.com', 'dindin23'),
(4, 'Lemwel', 'Bayson', 'Lem@uic.edu.ph', '123213212'),
(5, 'Lemuel', 'Bayson', 'Lbayson@uic.edu.ph', '123456789'),
(6, 'Zach', 'Labor', 'zachlabor@uic.edu.ph', 'hatdog123'),
(7, 'ledaas', 'dasdsaad', '1@uic.edu.ph', '12345678'),
(8, 'sadasdsaas', 'sadsaasdsad', '1@uic.edu.ph', '123456789'),
(9, 'test', 'sample', 'test@uic.edu.ph', '123456789'),
(11, 'Test', 'Test', 'test123@test123.com', '12345678'),
(12, 'cathy', 'Vlathco', 'cat@uic.edu.ph', '12345678'),
(13, 'reuben', 'batoy', 'batoy@uic.edu.ph', '12345678'),
(14, 'Lemwel', 'Bayson', 'lbayson@uic.edu.ph', '123456789'),
(15, 'lemwel', 'bayson', 'lbayson@uic.edu.ph', '123456789');

-- --------------------------------------------------------

--
-- Table structure for table `uniform`
--

CREATE TABLE `uniform` (
  `mngstore` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `uniformID` int NOT NULL,
  `type` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `size` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `uniformQuantityAvailability` int NOT NULL,
  `uniformPriceDetails` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uniform`
--

INSERT INTO `uniform` (`mngstore`, `uniformID`, `type`, `size`, `uniformQuantityAvailability`, `uniformPriceDetails`) VALUES
('test1', 2, 'College Uniform', 'M', 1000, 12313133),
('test2', 3, 'uniform', 'S', 22, 222),
('test3', 4, 'PE Senior High', 'L', 3, 333),
('test4', 5, 'Polo', 'XL', 4, 444),
('test5', 6, 'PE', 'XXL', 5, 555),
('test', 13, 'PE22', 'XL', 100, 50),
('test', 17, 'wdsaasd', 'M', 1, 50),
('Tset312', 18, 'adadsaddasdsdas', 'S', 1, 50),
('test10', 19, 'JDNLKJNKJASKANK', 'S', 1, 50),
('test1', 21, 'fdfdasdfd', 'S', 1, 50),
('hghhfg', 22, 'adfsaf', 'S', 1, 50),
('gggs', 23, 'gsafsa', 'XXXL', 4353, 50),
('test10', 24, 'Polo', 'XL', 200, 500),
('testing', 26, 'jeans', 'XXXL', 100, 500),
('test10', 28, 'Polo', 'XL', 200, 500),
('test10', 30, 'Polo', 'XL', 200, 500),
('test10', 31, 'Polo', 'XL', 200, 500),
('test10', 32, 'Polo', 'XL', 200, 500),
('test10', 33, 'Polo', 'XL', 200, 500);

-- --------------------------------------------------------

--
-- Table structure for table `uniformdetails`
--

CREATE TABLE `uniformdetails` (
  `uniformreservationID` int NOT NULL,
  `reservationdetailsID` int NOT NULL,
  `uniformID` int NOT NULL,
  `uniformQuantity` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `uniformdetails`
--

INSERT INTO `uniformdetails` (`uniformreservationID`, `reservationdetailsID`, `uniformID`, `uniformQuantity`) VALUES
(1, 3, 1, 11),
(2, 4, 1, 22),
(4, 1, 5, 44),
(5, 2, 1, 55),
(11, 11, 11, 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`mngstore`);

--
-- Indexes for table `book`
--
ALTER TABLE `book`
  ADD PRIMARY KEY (`bookID`),
  ADD KEY `mngstore` (`mngstore`);

--
-- Indexes for table `bookdetails`
--
ALTER TABLE `bookdetails`
  ADD PRIMARY KEY (`bookreservationID`),
  ADD KEY `bookID` (`bookID`);

--
-- Indexes for table `reservationdetails`
--
ALTER TABLE `reservationdetails`
  ADD PRIMARY KEY (`reservationdetailsID`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`studentID`);

--
-- Indexes for table `uniform`
--
ALTER TABLE `uniform`
  ADD PRIMARY KEY (`uniformID`),
  ADD KEY `mngstore` (`mngstore`);

--
-- Indexes for table `uniformdetails`
--
ALTER TABLE `uniformdetails`
  ADD PRIMARY KEY (`uniformreservationID`),
  ADD KEY `uniformID` (`uniformID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `book`
--
ALTER TABLE `book`
  MODIFY `bookID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `reservationdetails`
--
ALTER TABLE `reservationdetails`
  MODIFY `reservationdetailsID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `studentID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `uniform`
--
ALTER TABLE `uniform`
  MODIFY `uniformID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `uniformdetails`
--
ALTER TABLE `uniformdetails`
  MODIFY `uniformreservationID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111112;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookdetails`
--
ALTER TABLE `bookdetails`
  ADD CONSTRAINT `bookdetails_ibfk_1` FOREIGN KEY (`bookID`) REFERENCES `book` (`bookID`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
