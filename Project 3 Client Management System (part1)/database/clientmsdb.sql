-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 11, 2024 at 01:57 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `clientmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 8979555562, 'admin@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2024-08-01 07:01:36');

-- --------------------------------------------------------

--
-- Table structure for table `tblclient`
--

CREATE TABLE `tblclient` (
  `ID` int(10) NOT NULL,
  `AccountID` int(10) DEFAULT NULL,
  `AccountType` varchar(50) DEFAULT NULL,
  `ContactName` varchar(120) DEFAULT NULL,
  `CompanyName` varchar(120) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `City` varchar(120) DEFAULT NULL,
  `State` varchar(120) DEFAULT NULL,
  `ZipCode` int(10) DEFAULT NULL,
  `Workphnumber` bigint(10) DEFAULT NULL,
  `Cellphnumber` bigint(10) DEFAULT NULL,
  `Otherphnumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `WebsiteAddress` varchar(200) DEFAULT NULL,
  `Notes` mediumtext DEFAULT NULL,
  `Password` varchar(200) NOT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblclient`
--

INSERT INTO `tblclient` (`ID`, `AccountID`, `AccountType`, `ContactName`, `CompanyName`, `Address`, `City`, `State`, `ZipCode`, `Workphnumber`, `Cellphnumber`, `Otherphnumber`, `Email`, `WebsiteAddress`, `Notes`, `Password`, `CreationDate`) VALUES
(1, 900370752, 'Active Account', 'DFG okjehgcw', 'ABC Private Limited', 'ABC Private Limited\r\nB-150,test', 'ath', 'ATH', 1100096, 8888888888, 4354354354, 4564645646, 'abc@gmail.com', 'www.abc.com', 'Good Client', 'f925916e2754e5e03f75dd58a5733251', '2024-08-01 04:40:11'),
(2, 884010538, 'Active Account', 'gdfg cvbn', 'Infosys Pvt Ltd', 'Infosys Pvt Ltd\r\nC-123, a', 'Noida', 'ATH', 1321121, 4454545454, 7787878787, 5454545454, 'infosys@gmail.com', 'www.infosys.com', 'hfghfhffgjgjghgbjhgbhjgjhgvh', '202cb962ac59075b964b07152d234b70', '2024-08-05 05:24:39'),
(3, 809338201, 'Contact/Lead', 'rtyu nm', 'ghj pvt ltd', 'ghj pvt ltd\r\ng-127 Delhi', 'ath', 'hi', 1100096, 4464654665, 4654654646, 7879877897, 'ghj@gmail.com', 'www.ghj.com', 'dty jhgyujiou bgyt htuyy c iu gb m oojf', '202cb962ac59075b964b07152d234b70', '2024-08-09 05:26:50'),
(4, 639974991, 'Contact/Lead', 'Dyjkl ryeui', 'KML PVT LTD', 'KML PVT LTD\r\nh-224 sector 62, hello', 'Noida', 'ATH', 5465456, 5523235656, 8985652332, 5451212451, 'kml@gmail.com', 'www.kml.com', 'hjkh khk h khkhkhiu uy uyt uytgyu', '202cb962ac59075b964b07152d234b70', '2024-08-10 05:29:59'),
(5, 602410634, 'Active Account', 'JDFG drtgwyu', 'JK Enterprises', 'JK Enterprises\r\nH-120,test ath', 'ATH', 'ATH', 221001, 1213465464, 1645489799, 3465465465, 'jk@gmail.com', 'www.jk.com', 'ghjgjguyjgbhjghjghgcfdfgdgf', '202cb962ac59075b964b07152d234b70', '2024-08-12 10:42:52');

-- --------------------------------------------------------

--
-- Table structure for table `tblinvoice`
--

CREATE TABLE `tblinvoice` (
  `ID` int(10) NOT NULL,
  `Userid` varchar(120) DEFAULT NULL,
  `ServiceId` varchar(120) DEFAULT NULL,
  `BillingId` varchar(120) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblinvoice`
--

INSERT INTO `tblinvoice` (`ID`, `Userid`, `ServiceId`, `BillingId`, `PostingDate`) VALUES
(1, '1', '3', '528605656', '2024-09-11 07:06:33'),
(2, '1', '4', '528605656', '2024-09-11 07:06:33'),
(3, '3', '1', '439235854', '2024-09-11 07:08:19'),
(4, '3', '2', '439235854', '2024-09-11 07:08:19'),
(5, '3', '4', '439235854', '2024-09-11 07:08:19'),
(6, '3', '6', '439235854', '2024-09-11 07:08:19'),
(7, '3', '7', '439235854', '2024-09-11 07:08:19');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(120) DEFAULT NULL,
  `PageTitle` varchar(200) DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`) VALUES
(1, 'aboutus', 'About Us', 'bghjgjhg', NULL, NULL, '2024-08-06 07:54:52'),
(2, 'contactus', 'Contact Us', 'D-204, test add,ATH-110096,ATH', 'info@gmail.com', 8529631237, '2024-08-10 07:56:56');

-- --------------------------------------------------------

--
-- Table structure for table `tblservices`
--

CREATE TABLE `tblservices` (
  `ID` int(10) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `ServicePrice` varchar(200) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblservices`
--

INSERT INTO `tblservices` (`ID`, `ServiceName`, `ServicePrice`, `CreationDate`) VALUES
(1, 'Website Developments', '121', '2024-08-02 13:42:29'),
(2, 'SEO Service', '30', '2024-08-02 13:42:29'),
(3, 'SMO Services', '150', '2024-08-02 13:42:29'),
(4, 'Web designing', '120', '2024-08-02 13:42:29'),
(5, 'Network Service', '180', '2024-08-02 13:42:29'),
(6, 'Broadband Services', '120', '2024-08-02 13:42:29'),
(7, 'Drupal Development Services', '90', '2024-08-02 13:42:29'),
(8, 'CakePHP Development Services', '56', '2024-08-02 13:42:29'),
(9, 'Magento Development Services.', '113', '2024-08-02 13:42:29'),
(10, 'Web Development', '356', '2024-08-02 13:42:29'),
(11, 'On Page SEO', '250', '2024-08-02 13:42:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblclient`
--
ALTER TABLE `tblclient`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblclient`
--
ALTER TABLE `tblclient`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
