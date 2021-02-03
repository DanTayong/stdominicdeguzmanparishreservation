-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 03, 2021 at 03:26 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `reservation`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `user_id` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `passkey` varchar(100) NOT NULL,
  `u_fname` varchar(50) NOT NULL,
  `u_mname` varchar(50) DEFAULT NULL,
  `u_lname` varchar(50) NOT NULL,
  `u_bdate` varchar(10) NOT NULL,
  `u_sex` varchar(6) NOT NULL,
  `u_cnumber` varchar(12) NOT NULL,
  `u_email` varchar(50) DEFAULT NULL,
  `u_astreet` varchar(50) DEFAULT NULL,
  `u_abrgy` varchar(50) NOT NULL,
  `u_acitymun` varchar(50) NOT NULL,
  `u_aprovince` varchar(50) NOT NULL,
  `u_type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `baptismal`
--

CREATE TABLE `baptismal` (
  `event_id` varchar(10) NOT NULL,
  `contact_number` varchar(12) NOT NULL,
  `fname` varchar(20) NOT NULL,
  `mname` varchar(20) DEFAULT NULL,
  `lname` varchar(20) NOT NULL,
  `nsuffix` varchar(20) DEFAULT NULL,
  `bdate` date NOT NULL,
  `bplace` varchar(50) NOT NULL,
  `f_fname` varchar(20) NOT NULL,
  `f_mname` varchar(20) DEFAULT NULL,
  `f_lname` varchar(20) NOT NULL,
  `f_nsuffix` varchar(10) DEFAULT NULL,
  `f_astreet` varchar(50) DEFAULT NULL,
  `f_abrgy` varchar(20) NOT NULL,
  `f_acitymun` varchar(20) NOT NULL,
  `f_aprovince` varchar(20) NOT NULL,
  `m_fname` varchar(20) NOT NULL,
  `m_mname` varchar(20) DEFAULT NULL,
  `m_lname` varchar(20) NOT NULL,
  `m_astreet` varchar(50) DEFAULT NULL,
  `m_abrgy` varchar(20) NOT NULL,
  `m_acitymun` varchar(20) NOT NULL,
  `m_aprovince` varchar(20) NOT NULL,
  `wwedd` varchar(50) NOT NULL,
  `c_astreet` varchar(50) DEFAULT NULL,
  `c_abrgy` varchar(20) NOT NULL,
  `c_acitymun` varchar(20) NOT NULL,
  `c_aprovince` varchar(20) NOT NULL,
  `priest` varchar(50) NOT NULL,
  `bap_date` date NOT NULL,
  `bap_time` time(6) NOT NULL,
  `processedby` varchar(15) NOT NULL,
  `pdatetime` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `communion`
--

CREATE TABLE `communion` (
  `event_id` varchar(10) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `mname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `nsuffix` varchar(10) DEFAULT NULL,
  `bdate` date NOT NULL,
  `age` int(100) NOT NULL,
  `sex` varchar(6) NOT NULL,
  `bap_date` date NOT NULL,
  `bap_place` varchar(100) NOT NULL,
  `a_street` varchar(100) NOT NULL,
  `a_brgy` varchar(50) NOT NULL,
  `a_citymun` varchar(50) NOT NULL,
  `a_province` varchar(50) NOT NULL,
  `f_fname` varchar(50) NOT NULL,
  `f_mname` varchar(50) DEFAULT NULL,
  `f_lname` varchar(50) NOT NULL,
  `f_nsuffix` varchar(5) NOT NULL,
  `m_fname` varchar(50) NOT NULL,
  `m_mname` varchar(50) DEFAULT NULL,
  `m_lname` varchar(50) NOT NULL,
  `cathecist` varchar(100) NOT NULL,
  `e_status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notif_id` varchar(20) NOT NULL,
  `n_type` varchar(20) NOT NULL,
  `n_reciever` varchar(20) NOT NULL,
  `n_datesent` date NOT NULL,
  `n_timesent` time(6) NOT NULL,
  `n_contenttype` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `request_id` varchar(20) NOT NULL,
  `user_id` int(10) NOT NULL,
  `r_type` varchar(10) NOT NULL,
  `r_note` text DEFAULT NULL,
  `r_processedby` varchar(10) NOT NULL,
  `r_status` varchar(10) NOT NULL,
  `r_recdate` date NOT NULL,
  `r_rectime` timestamp(6) NOT NULL DEFAULT current_timestamp(6) ON UPDATE current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `smscode`
--

CREATE TABLE `smscode` (
  `sms_id` varchar(5) NOT NULL,
  `dategenerated` date NOT NULL,
  `timegenerated` datetime(6) NOT NULL,
  `reference_id` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `wedding`
--

CREATE TABLE `wedding` (
  `event_id` varchar(15) NOT NULL,
  `g_fname` varchar(50) NOT NULL,
  `g_mname` varchar(20) DEFAULT NULL,
  `g_lname` varchar(20) NOT NULL,
  `g_nsuffix` varchar(10) DEFAULT NULL,
  `g_astreet` varchar(50) DEFAULT NULL,
  `g_abrgy` varchar(20) NOT NULL,
  `g_acitynum` varchar(20) NOT NULL,
  `g_aprovince` varchar(20) NOT NULL,
  `b_fname` varchar(20) NOT NULL,
  `b_mname` varchar(20) DEFAULT NULL,
  `b_lname` varchar(20) NOT NULL,
  `b_astreet` varchar(50) DEFAULT NULL,
  `b_abrgy` varchar(20) NOT NULL,
  `b_acitymun` varchar(20) NOT NULL,
  `b_aprovince` varchar(20) NOT NULL,
  `wdate` date NOT NULL,
  `wtime` time(6) NOT NULL,
  `contact_number` varchar(12) NOT NULL,
  `g_baptismalcert` varchar(10) DEFAULT NULL,
  `g_birthcert` varchar(10) DEFAULT NULL,
  `g_confirmationcert` varchar(10) DEFAULT NULL,
  `g_cenomar` varchar(10) DEFAULT NULL,
  `g_lcr` varchar(10) DEFAULT NULL,
  `b_baptismalcert` varchar(10) DEFAULT NULL,
  `b_birthcert` varchar(10) DEFAULT NULL,
  `b_confirmationcert` varchar(10) DEFAULT NULL,
  `b_cenomar` varchar(10) DEFAULT NULL,
  `b_lcr` varchar(10) DEFAULT NULL,
  `interviewdate` date DEFAULT NULL,
  `interviewtime` time(6) DEFAULT NULL,
  `marriagebanpermit` varchar(10) DEFAULT NULL,
  `mass_fee` double DEFAULT NULL,
  `blessing_fee` double DEFAULT NULL,
  `flower_fee` double DEFAULT NULL,
  `utilities_fee` double DEFAULT NULL,
  `choir_fee` double DEFAULT NULL,
  `appdate` date NOT NULL,
  `apptime` time(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `baptismal`
--
ALTER TABLE `baptismal`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `communion`
--
ALTER TABLE `communion`
  ADD PRIMARY KEY (`event_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notif_id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`request_id`);

--
-- Indexes for table `smscode`
--
ALTER TABLE `smscode`
  ADD PRIMARY KEY (`sms_id`);

--
-- Indexes for table `wedding`
--
ALTER TABLE `wedding`
  ADD PRIMARY KEY (`event_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
