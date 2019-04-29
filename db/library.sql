-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 27, 2019 at 04:20 PM
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
-- Database: `library`
--
CREATE DATABASE `library` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `library`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'John David Solomon', 'jlsolomon@student.apc.edu.ph', 'admin', '5f4dcc3b5aa765d61d8327deb882cf99', '2019-04-26 04:53:30');

-- --------------------------------------------------------

--
-- Table structure for table `tblauthors`
--

CREATE TABLE `tblauthors` (
  `id` int(11) NOT NULL,
  `AuthorName` varchar(159) DEFAULT NULL,
  `creationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblauthors`
--

INSERT INTO `tblauthors` (`id`, `AuthorName`, `creationDate`, `UpdationDate`) VALUES
(1, 'Stephen C. Pinson', '2017-07-08 12:49:09', '2019-04-27 13:19:42'),
(2, 'Teil Duncan', '2017-07-08 14:30:23', '2019-04-27 13:26:28'),
(3, 'Brené Brown', '2017-07-08 14:35:08', '2019-04-27 13:38:35'),
(4, 'Benjamin Graham', '2017-07-08 14:35:21', '2019-04-27 13:38:45'),
(5, 'Allan Dib', '2017-07-08 14:35:36', '2019-04-27 13:38:54'),
(9, 'ESV Bibles by Crossway', '2017-07-08 15:22:03', '2019-04-27 13:39:06'),
(10, 'Stan Lee', '2019-04-27 13:39:17', NULL),
(11, 'Matthew K. Manning & Alex Irvine', '2019-04-27 13:39:29', NULL),
(12, 'Mary Lynn Bracht', '2019-04-27 13:39:43', NULL),
(13, 'Joshua Bloch', '2019-04-27 13:56:00', NULL),
(14, 'Joseph Albahari', '2019-04-27 13:56:22', NULL),
(15, 'Niall Richard Murphy', '2019-04-27 13:56:38', NULL),
(16, 'Doug Lowe', '2019-04-27 13:56:50', NULL),
(17, 'Robin Nixon', '2019-04-27 13:57:00', NULL),
(18, 'Jaime Levy', '2019-04-27 13:57:11', NULL),
(19, 'Brian Ward', '2019-04-27 13:57:20', NULL),
(20, 'Martin Kleppmann', '2019-04-27 13:57:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbooks`
--

CREATE TABLE `tblbooks` (
  `id` int(11) NOT NULL,
  `BookName` varchar(255) DEFAULT NULL,
  `CatId` int(11) DEFAULT NULL,
  `AuthorId` int(11) DEFAULT NULL,
  `ISBNNumber` int(11) DEFAULT NULL,
  `BookPrice` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbooks`
--

INSERT INTO `tblbooks` (`id`, `BookName`, `CatId`, `AuthorId`, `ISBNNumber`, `BookPrice`, `RegDate`, `UpdationDate`) VALUES
(1, 'Monumental Journey: The Daguerreotypes of Girault de Prangey', 1, 1, 1588396630, 41, '2017-07-08 20:04:55', '2019-04-27 13:21:10'),
(3, 'physics', 6, 4, 1111, 15, '2017-07-08 20:17:31', '2017-07-15 06:13:17'),
(4, 'Dare to Lead: Brave Work. Tough Conversations. Whole Hearts.', 2, 3, 123456789, 12, '2019-04-27 13:38:09', NULL),
(5, 'The Intelligent Investor: The Definitive Book on Value Investing. A Book of Practical Counsel (Revised Edition) (Collins Business Essentials)', 2, 4, 123456788, 12, '2019-04-27 13:40:21', NULL),
(6, 'The 1-Page Marketing Plan: Get New Customers, Make More Money, And Stand out From The Crowd', 2, 5, 123456777, 10, '2019-04-27 13:41:02', NULL),
(7, 'Marvel Encyclopedia, New Edition', 4, 10, 123456666, 25, '2019-04-27 13:42:11', NULL),
(8, 'DC Comics Encyclopedia All-New Edition: The Definitive Guide to the Characters of the DC Universe', 4, 11, 123455555, 23, '2019-04-27 13:42:44', NULL),
(9, 'White Chrysanthemum', 4, 12, 123444444, 15, '2019-04-27 13:43:48', NULL),
(10, 'Effective Java 3rd Edition', 5, 13, 1234444444, 44, '2019-04-27 13:58:10', NULL),
(11, 'C# 7.0 Pocket Reference: Instant Help for C# 7.0 Programmers 1st Edition', 5, 14, 123333333, 14, '2019-04-27 13:59:07', NULL),
(12, 'Site Reliability Engineering: How Google Runs Production Systems', 5, 15, 122222222, 28, '2019-04-27 13:59:52', NULL),
(13, 'Networking All-in-One For Dummies 7th Edition', 5, 16, 111111111, 18, '2019-04-27 14:00:27', NULL),
(14, 'Learning PHP, MySQL & JavaScript: With jQuery, CSS & HTML5 (Learning PHP, MYSQL, Javascript, CSS & HTML5) 5th Edition', 5, 17, 999999999, 41, '2019-04-27 14:01:05', NULL),
(15, 'UX Strategy: How to Devise Innovative Digital Products that People Want 1st Edition', 5, 18, 999999991, 21, '2019-04-27 14:01:49', NULL),
(16, 'How Linux Works, 2nd Edition: What Every Superuser Should Know Second Edition', 5, 19, 999999911, 28, '2019-04-27 14:02:35', NULL),
(17, 'Designing Data-Intensive Applications: The Big Ideas Behind Reliable, Scalable, and Maintainable Systems 1st Edition', 5, 20, 999999111, 32, '2019-04-27 14:03:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcategory`
--

CREATE TABLE `tblcategory` (
  `id` int(11) NOT NULL,
  `CategoryName` varchar(150) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcategory`
--

INSERT INTO `tblcategory` (`id`, `CategoryName`, `Status`, `CreationDate`, `UpdationDate`) VALUES
(1, 'Arts & Photography', 1, '2017-07-04 18:35:25', '2019-04-27 13:05:49'),
(2, 'Business & Money', 1, '2017-07-04 18:35:39', '2019-04-27 13:07:15'),
(3, 'Christian Books & Bibles', 0, '2017-07-04 18:35:55', '2019-04-27 13:08:03'),
(4, 'Comics & Graphic Novels', 1, '2017-07-04 18:36:16', '2019-04-27 13:09:44'),
(5, 'Computers & Technology', 1, '2019-04-27 13:11:23', '0000-00-00 00:00:00'),
(6, 'Education & Teaching', 1, '2019-04-27 13:11:23', '0000-00-00 00:00:00'),
(7, 'Engineering & Transportation', 1, '2019-04-27 13:11:23', '0000-00-00 00:00:00'),
(8, 'History', 1, '2019-04-27 13:11:23', '0000-00-00 00:00:00'),
(9, 'Law', 1, '2019-04-27 13:15:13', '0000-00-00 00:00:00'),
(10, 'Literature & Fiction', 1, '2019-04-27 13:15:13', '0000-00-00 00:00:00'),
(11, 'Politics & Social Sciences', 1, '2019-04-27 13:15:13', '0000-00-00 00:00:00'),
(12, 'Science & Math', 1, '2019-04-27 13:15:13', '0000-00-00 00:00:00'),
(13, 'Science Fiction & Fantasy', 1, '2019-04-27 13:15:13', '0000-00-00 00:00:00'),
(14, 'Self-Help', 1, '2019-04-27 13:15:13', '0000-00-00 00:00:00'),
(15, 'Sports & Outdoors', 1, '2019-04-27 13:15:13', '2019-04-27 13:15:35'),
(16, 'Test Preparation', 1, '2019-04-27 13:15:13', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedbookdetails`
--

CREATE TABLE `tblissuedbookdetails` (
  `id` int(11) NOT NULL,
  `BookId` int(11) DEFAULT NULL,
  `StudentID` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `RetrunStatus` int(1) DEFAULT NULL,
  `fine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissuedbookdetails`
--

INSERT INTO `tblissuedbookdetails` (`id`, `BookId`, `StudentID`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`) VALUES
(1, 1, 'SID002', '2017-07-15 06:09:47', '2017-07-15 11:15:20', 1, 0),
(2, 1, 'SID002', '2017-07-15 06:12:27', '2017-07-15 11:15:23', 1, 5),
(3, 3, 'SID002', '2017-07-15 06:13:40', NULL, 0, NULL),
(4, 3, 'SID002', '2017-07-15 06:23:23', '2017-07-15 11:22:29', 1, 2),
(5, 1, 'SID009', '2017-07-15 10:59:26', NULL, 0, NULL),
(6, 3, 'SID011', '2017-07-15 18:02:55', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `StudentId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `StudentId`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(1, 'SID001', 'John David Solomon', 'jlsolomon@student.apc.edu.ph', '9123456789', '5f4dcc3b5aa765d61d8327deb882cf99', 1, '2017-07-15 18:00:59', '2019-04-27 14:05:14'),
(2, 'SID002', 'Albern Santos', 'apsantos2@apc.edu.ph', '9123456789', '5f4dcc3b5aa765d61d8327deb882cf99', 1, '2017-07-11 15:37:05', '2019-04-27 14:05:33'),
(3, 'SID003', 'Rain Potoza', 'rypotoza@student.apc.edu.ph', '9123456789', '5f4dcc3b5aa765d61d8327deb882cf99', 1, '2017-07-11 15:41:27', '2019-04-27 14:05:44'),
(4, 'SID004', 'Beatrice Mellisa Ramos', 'mgramos@student.apc.edu.ph', '9123456789', '5f4dcc3b5aa765d61d8327deb882cf99', 1, '2017-07-11 15:58:28', '2019-04-27 14:05:58'),
(5, 'SID005', 'test', 'test@email.com', '9123456789', '5f4dcc3b5aa765d61d8327deb882cf99', 0, '2017-07-15 13:40:30', '2019-04-27 14:06:10'),
(6, 'SID006', 'Ariana Grande', 'arig@student.apc.edu.ph', '9123456789', '5f4dcc3b5aa765d61d8327deb882cf99', 1, '2019-04-26 07:49:09', '2019-04-27 14:13:00'),
(12, 'SID013', 'Ivan Jasper U Evangelista', 'iuevangelista@student.apc.edu.ph', '9123456789', '5f4dcc3b5aa765d61d8327deb882cf99', 1, '2019-04-27 14:07:51', NULL),
(13, 'SID014', 'Darwin Grant Opulencia', 'dgopulencia@student.apc.edu.ph', '9123456789', '5f4dcc3b5aa765d61d8327deb882cf99', 1, '2019-04-27 14:09:25', NULL),
(14, 'SID015', 'Ernest J. Tapia', 'ejtapia@student.apc.edu.ph', '9123456789', '5f4dcc3b5aa765d61d8327deb882cf99', 1, '2019-04-27 14:10:18', NULL),
(15, 'SID016', 'Nicolai Louise Caasi', 'nlcaasi@student.apc.edu.ph', '9123456789', '5f4dcc3b5aa765d61d8327deb882cf99', 1, '2019-04-27 14:11:21', NULL),
(16, 'SID017', 'Emrys Jan R. Sanque', 'ersanque@student.apc.edu.ph', '9123456789', '5f4dcc3b5aa765d61d8327deb882cf99', 1, '2019-04-27 14:12:01', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblauthors`
--
ALTER TABLE `tblauthors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooks`
--
ALTER TABLE `tblbooks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcategory`
--
ALTER TABLE `tblcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`StudentId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblauthors`
--
ALTER TABLE `tblauthors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblbooks`
--
ALTER TABLE `tblbooks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblcategory`
--
ALTER TABLE `tblcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tblissuedbookdetails`
--
ALTER TABLE `tblissuedbookdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;


CREATE USER 'david'@'%' IDENTIFIED BY '';

GRANT ALL PRIVILEGES ON `library`.* TO 'david'@'%';

