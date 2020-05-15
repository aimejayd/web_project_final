-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 15, 2020 at 02:24 PM
-- Server version: 5.6.41-84.1
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `aimejayd_web`
--

-- --------------------------------------------------------

--
-- Table structure for table `acc_account_name`
--

CREATE TABLE `acc_account_name` (
  `account_id` int(11) UNSIGNED NOT NULL,
  `account_name` varchar(255) NOT NULL,
  `account_type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acc_account_name`
--

INSERT INTO `acc_account_name` (`account_id`, `account_name`, `account_type`) VALUES
(1, 'Other Incocme', 1),
(2, 'Office Rent', 0),
(3, 'Ticket Sales', 1),
(4, 'Staff Salary', 0),
(5, 'Maintenance', 0),
(7, 'Servicing', 0),
(8, 'Agent Income', 1),
(9, 'Agent Expense', 0),
(10, 'Ass', 1),
(11, 'HR', 0);

-- --------------------------------------------------------

--
-- Table structure for table `acn_account_transaction`
--

CREATE TABLE `acn_account_transaction` (
  `account_tran_id` int(11) UNSIGNED NOT NULL,
  `account_id` int(11) NOT NULL,
  `transaction_description` varchar(255) NOT NULL,
  `amount` varchar(25) DEFAULT NULL,
  `create_by_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acn_account_transaction`
--

INSERT INTO `acn_account_transaction` (`account_tran_id`, `account_id`, `transaction_description`, `amount`, `create_by_id`) VALUES
(1, 3, 'Trip Id-3 Ticket No-A1,', '34', 2),
(2, 3, 'Trip Id-6 Ticket No-A1,', '1000', 2),
(3, 3, 'Trip Id-6 Ticket No-A2,', '1000', 2),
(4, 3, 'Trip Id-6 Ticket No-A3,', '1000', 2),
(5, 3, 'Trip Id-5 Ticket No-A1,', '600', 2),
(6, 3, 'Trip Id-5 Ticket No-A2,', '600', 2),
(7, 3, 'Trip Id-5 Ticket No-A3,', '600', 2),
(8, 3, 'Trip Id-3 Ticket No-A1,', '34', 8),
(9, 3, 'Trip Id-4 Ticket No-A1,', '500', 9),
(10, 3, 'Trip Id-4 Ticket No-A2,', '500', 9),
(11, 3, 'Trip Id-4 Ticket No-A3,', '500', 9),
(12, 3, 'Trip Id-4 Ticket No-A4,', '500', 9),
(13, 3, 'Trip Id-4 Ticket No-A5,', '500', 9),
(14, 3, 'Trip Id-4 Ticket No-B1,', '400', 9),
(15, 3, 'Trip Id-4 Ticket No-B2,', '500', 2),
(16, 3, 'Trip Id-6 Ticket No-A1,D1,E4,', '2760', 2);

-- --------------------------------------------------------

--
-- Table structure for table `agent_info`
--

CREATE TABLE `agent_info` (
  `agent_id` int(11) NOT NULL,
  `agent_first_name` varchar(30) DEFAULT NULL,
  `agent_second_name` varchar(150) DEFAULT NULL,
  `agent_company_name` varchar(150) DEFAULT NULL,
  `agent_document_id` varchar(150) DEFAULT NULL,
  `agent_pic_document` varchar(255) DEFAULT NULL,
  `agent_picture` varchar(255) DEFAULT NULL,
  `agent_phone` varchar(150) DEFAULT NULL,
  `agent_mobile` varchar(150) DEFAULT NULL,
  `agent_email` varchar(150) DEFAULT NULL,
  `agent_address_line_1` varchar(150) DEFAULT NULL,
  `agent_address_line_2` varchar(150) DEFAULT NULL,
  `agent_address_city` varchar(150) DEFAULT NULL,
  `agent_address_zip_code` varchar(150) DEFAULT NULL,
  `agent_country` varchar(150) DEFAULT NULL,
  `agent_commission` float NOT NULL,
  `status` varchar(150) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `agent_info`
--

INSERT INTO `agent_info` (`agent_id`, `agent_first_name`, `agent_second_name`, `agent_company_name`, `agent_document_id`, `agent_pic_document`, `agent_picture`, `agent_phone`, `agent_mobile`, `agent_email`, `agent_address_line_1`, `agent_address_line_2`, `agent_address_city`, `agent_address_zip_code`, `agent_country`, `agent_commission`, `status`) VALUES
(1, 'Briand', 'james', 'Bdtask', '12049009', NULL, NULL, '123', '', 'testbriand@gmail.com', 'Douala', 'YaoundÃƒÂ©', 'YaoundÃƒÂ©', '', 'Cameroon', 10, NULL),
(2, 'Rabbani', 'khan', 'Bdtask', '98009', NULL, './application/modules/agent/assets/images/b46eddd81b1d95d48126d527c69a0b0a.png', '2423423', '98731298', 'rabbani@gmail.com', 'sdfsdf', 'sdfsd', 'rabbani@gmail.com', '324', 'Afganistan', 3, NULL),
(3, 'Arafat', 'Hossain', 'BDTASK', '', NULL, './application/modules/agent/assets/images/ae7149b2dfbaddd215a23e2237507446.jpg', '09870809', '0980', 'arafat@gmail.com', '', '', 'arafat@gmail.com', '', 'American Samoa', 4, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `agent_ledger`
--

CREATE TABLE `agent_ledger` (
  `id` int(11) NOT NULL,
  `agent_id` int(11) NOT NULL,
  `booking_id` varchar(30) NOT NULL,
  `debit` float NOT NULL DEFAULT '0',
  `credit` float NOT NULL DEFAULT '0',
  `date` date NOT NULL,
  `commission_rate` float NOT NULL DEFAULT '0',
  `total_price` float NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `agent_ledger`
--

INSERT INTO `agent_ledger` (`id`, `agent_id`, `booking_id`, `debit`, `credit`, `date`, `commission_rate`, `total_price`) VALUES
(1, 2, 'BJR7WV8G', 0, 1.02, '2018-11-15', 3, 34),
(2, 3, 'B06FMHNC', 0, 20, '2018-11-15', 4, 500),
(3, 3, 'BDE0QJD5', 0, 20, '2018-11-15', 4, 500),
(4, 3, 'BMYZF8UQ', 0, 20, '2018-11-15', 4, 500),
(5, 3, 'B4BZO1TI', 0, 20, '2018-11-15', 4, 500),
(6, 3, 'BL8LPGO8', 0, 20, '2018-11-15', 4, 500),
(7, 3, 'BKZYHQJM', 0, 16, '2018-11-15', 4, 400);

-- --------------------------------------------------------

--
-- Table structure for table `bank_info`
--

CREATE TABLE `bank_info` (
  `id` int(11) NOT NULL,
  `bank_name` varchar(200) NOT NULL,
  `account_name` varchar(100) NOT NULL,
  `account_number` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank_info`
--

INSERT INTO `bank_info` (`id`, `bank_name`, `account_name`, `account_number`) VALUES
(1, 'Bangladesh Bank', 'bdtask', '234235235');

-- --------------------------------------------------------

--
-- Table structure for table `bank_transaction`
--

CREATE TABLE `bank_transaction` (
  `id` int(11) NOT NULL,
  `bank_id` varchar(50) DEFAULT NULL,
  `transaction_id` varchar(50) DEFAULT NULL,
  `payer_name` varchar(200) DEFAULT NULL,
  `booking_id` varchar(50) DEFAULT NULL,
  `note` varchar(250) DEFAULT NULL,
  `refund` varchar(50) DEFAULT NULL,
  `amount` float DEFAULT NULL,
  `b_account_no` varchar(50) DEFAULT NULL,
  `transaction_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bank_transaction`
--

INSERT INTO `bank_transaction` (`id`, `bank_id`, `transaction_id`, `payer_name`, `booking_id`, `note`, `refund`, `amount`, `b_account_no`, `transaction_date`) VALUES
(1, '1', '123124142', NULL, 'B8DQ5AR2', 'bank booking', NULL, 2000, '0', '2019-01-03 10:48:42'),
(2, '1', '123124142', NULL, 'B8DQ5AR2', 'bank booking', NULL, 2000, '0', '2019-01-03 10:54:32'),
(3, '1', '123124142', NULL, 'B8DQ5AR2', 'bank booking', NULL, 2000, '0', '2019-01-03 11:01:22'),
(4, '1', '123124142', NULL, 'B8DQ5AR2', 'bank booking', NULL, 2000, '0', '2019-01-03 11:06:07'),
(5, '1', '123124142', NULL, 'B8DQ5AR2', 'bank booking', NULL, 2000, '0', '2019-01-03 11:06:57'),
(6, '1', '123124142', NULL, 'B8DQ5AR22', 'bank booking', NULL, NULL, '0', '2019-01-03 12:28:43'),
(7, '1', '123124142', NULL, 'B8DQ5AR22', 'bank booking', NULL, NULL, '0', '2019-01-03 12:35:12'),
(8, '1', '123456', NULL, 'BE08BK34', 'bank booking', NULL, 900, '0', '2019-01-05 05:17:29'),
(9, '1', '34567', NULL, 'BX75003H', 'bank booking', NULL, NULL, '0', '2019-01-05 08:18:49'),
(10, '1', '345676774689', NULL, 'BX75003H', 'bank booking', NULL, NULL, '0', '2019-01-05 08:19:02'),
(11, '1', '345676774689', NULL, 'BX75003H', 'bank booking', NULL, NULL, '0', '2019-01-05 08:19:17'),
(12, '1', '345676774689', NULL, 'BX75003H', 'bank booking', NULL, NULL, '0', '2019-01-05 08:19:18'),
(13, '1', '12345678990', NULL, 'BFI0JB98', 'bank booking', NULL, 1800, '0', '2019-01-05 08:22:35'),
(14, '1', '12345678990', NULL, 'BFI0JB98', 'bank booking', NULL, 1800, '0', '2019-01-05 08:22:40'),
(15, '1', '1234455667', NULL, 'BY9K6O55', 'bank booking', NULL, 1800, '0', '2019-01-05 08:24:51'),
(16, '1', '86683684', NULL, 'BMFAPVX1', 'bank booking', NULL, 1800, '0', '2019-01-05 08:26:47'),
(17, '1', 'fhugvb', NULL, 'BABQQ8UZ', 'bank booking', NULL, 2760, '0', '2019-01-05 08:38:00'),
(18, '1', '66544', NULL, 'BGWFWEPB', 'bank booking', NULL, 2760, '0', '2019-01-05 08:52:05'),
(19, '1', '66544', NULL, 'BGWFWEPB', 'bank booking', NULL, 2760, '0', '2019-01-05 08:52:09'),
(20, '1', '66544', NULL, 'BGWFWEPB', 'bank booking', NULL, 2760, '0', '2019-01-05 08:52:56'),
(21, '1', 'gsusubs', NULL, 'BLBN768U', 'bank booking', NULL, 2760, '0', '2019-01-05 08:56:33'),
(22, NULL, NULL, NULL, 'BLBN768U', 'bank booking', NULL, 2760, '0', '2019-01-05 08:59:53'),
(23, NULL, NULL, NULL, 'BLBN768U', 'bank booking', NULL, 2760, '0', '2019-01-05 09:02:57'),
(24, '1', '7654431', NULL, 'BJS5K2TX', 'bank booking', NULL, 1800, '0', '2019-01-05 09:10:28'),
(25, '1', '7654431', NULL, 'BJS5K2TX', 'bank booking', NULL, NULL, '0', '2019-01-05 09:11:18'),
(26, NULL, NULL, NULL, 'BLBN768U', 'bank booking', NULL, 2760, '0', '2019-01-05 09:13:20'),
(27, NULL, NULL, NULL, 'BLBN768U', 'bank booking', NULL, NULL, '0', '2019-01-05 09:15:14'),
(28, '1', '757545664', NULL, 'B8P539XB', 'bank booking', NULL, 900, '0', '2019-01-05 09:15:21'),
(29, NULL, NULL, NULL, 'BLBN768U', 'bank booking', NULL, NULL, '0', '2019-01-05 09:15:45'),
(30, NULL, NULL, NULL, 'B5OZPJKM', 'bank booking', NULL, 1000, '0', '2019-01-05 09:16:37'),
(31, NULL, NULL, NULL, 'BGWFWEPB', 'bank booking', NULL, 2760, '0', '2019-01-05 09:27:47'),
(32, NULL, NULL, NULL, 'BGWFWEPB', 'bank booking', NULL, 2760, '0', '2019-01-05 09:31:03'),
(33, NULL, NULL, NULL, 'BGWFWEPB', 'bank booking', NULL, 2842.8, '0', '2019-01-05 09:36:36'),
(34, NULL, NULL, NULL, 'BGWFWEPB', 'bank booking', NULL, 2842.8, '0', '2019-01-05 09:37:26'),
(35, NULL, NULL, NULL, 'BGWFWEPG', 'bank booking', NULL, 2760, '0', '2019-01-05 09:40:21'),
(36, NULL, NULL, NULL, 'BGWFWEPG', 'bank booking', NULL, 2760, '0', '2019-01-05 09:41:13'),
(37, NULL, NULL, NULL, 'BABQQ8UZss', 'bank booking', NULL, 2842.8, '0', '2019-01-05 09:42:36'),
(38, NULL, NULL, NULL, 'BMFAPVX1sdf', 'bank booking', NULL, 1854, '0', '2019-01-05 09:46:32'),
(39, NULL, NULL, NULL, 'BMFAPVX1sdf', 'bank booking', NULL, 1854, '0', '2019-01-05 09:47:43'),
(40, '1', '1234567', NULL, 'B5FTQEF3', 'bank booking', NULL, 927, '0', '2019-01-05 09:51:56'),
(41, '1', '45577', NULL, 'BN3YFUOF', 'bank booking', NULL, 3790.4, '0', '2019-01-05 11:15:25'),
(42, '1', 'tttgg', NULL, 'BV1WRID8', 'bank booking', NULL, 2739.8, '0', '2019-01-06 16:43:32'),
(43, '1', '635482747', NULL, 'BN5YS9WK', 'bank booking', NULL, 2060, '0', '2019-01-07 06:35:08'),
(44, '1', 'hjgh', NULL, 'BAUMBU3K', 'bank booking', NULL, 1030, '0', '2019-01-07 06:39:56'),
(45, '1', '678889999', NULL, 'BFMBSGVB', 'bank booking', NULL, 1030, '0', '2019-01-07 09:23:42'),
(46, '1', 'fgfhtteet3555', NULL, 'BZMCDOIC', 'bank booking', NULL, 2739.8, '0', '2019-01-07 09:40:00'),
(47, '1', 'cghg', NULL, 'BCS5JODT', 'bank booking', NULL, 6530.2, '0', '2019-01-07 09:57:31'),
(48, '1', 'uhiuhj', NULL, 'B0KUA8Y3', 'bank booking', NULL, 927, '0', '2019-01-08 06:18:52'),
(49, '1', '344455', NULL, 'B1A6WIA2', 'bank booking', NULL, 0, '0', '2019-01-08 06:31:07'),
(50, '1', 'rtyui', NULL, 'BJQ14WO0', 'bank booking', NULL, 1854, '0', '2019-01-08 06:33:50'),
(51, '1', '123456789', NULL, 'B00JE3IK', 'bank booking', NULL, 927, '0', '2019-01-08 06:37:38'),
(52, '1', 'vhuyyg', NULL, 'B391A11I', 'bank booking', NULL, 1854, '0', '2019-01-08 07:18:03'),
(53, '1', 'yuuuuyy', NULL, 'BTRDOV5V', 'bank booking', NULL, 1854, '0', '2019-01-08 09:45:50'),
(54, '1', '123455fgg', NULL, 'BXYCHRIL', 'bank booking', NULL, 1030, '0', '2019-01-09 08:10:43'),
(55, '1', '12333', NULL, 'BW9KBHY6', 'bank booking', NULL, 1030, '0', '2019-01-09 08:15:28'),
(56, '1', 'etyyu', NULL, 'B84S1S87', 'bank booking', NULL, 2842.8, '0', '2019-01-09 08:43:05'),
(57, '1', 'hhuhgghs', NULL, 'B8BFI3M3', 'bank booking', NULL, 1854, '0', '2019-01-09 09:52:57'),
(58, '1', '455', NULL, 'BB1COIMW', 'bank booking', NULL, 1030, '0', '2019-01-10 05:58:07'),
(59, '1', 'ffffff', NULL, 'B36WFLR7', 'bank booking', NULL, 1030, '0', '2019-01-10 09:15:00'),
(60, '1', '1234_', NULL, 'BS79D8DF', 'bank booking', NULL, 927, '0', '2019-01-10 11:59:57'),
(61, '1', '1234', NULL, 'BBMYN0NK', 'bank booking', NULL, 1957, '0', '2019-01-12 05:05:58'),
(62, '1', '2333333', NULL, 'B0POJPFG', 'bank booking', NULL, 515, '0', '2019-01-13 07:27:27'),
(63, '1', '1234', NULL, 'B86WPHVP', 'bank booking', NULL, 1030, '0', '2019-01-14 09:58:25'),
(64, '1', 'sgtyysgg', NULL, 'BG1307C8', 'bank booking', NULL, 1854, '0', '2019-01-14 11:17:02'),
(65, '1', '1233', NULL, 'BIR8U9P2', 'bank booking', NULL, 515, '0', '2019-01-15 10:18:45'),
(66, '1', 'reytfty', NULL, 'B5VJ3929', 'bank booking', NULL, 412, '0', '2019-01-15 10:47:54'),
(67, '1', 'reger', NULL, 'B1GTS2IH', 'bank booking', NULL, 515, '0', '2019-01-15 13:39:12'),
(68, '1', 'hdjjd', NULL, 'B5HQ5I8A', 'bank booking', NULL, 1606.8, '0', '2019-01-16 11:02:47'),
(69, '1', 'ddfggd2345553', NULL, 'BNDFB8YK', 'bank booking', NULL, 1030, '0', '2019-01-17 06:33:04');

-- --------------------------------------------------------

--
-- Table structure for table `booking_downtime`
--

CREATE TABLE `booking_downtime` (
  `id` int(11) NOT NULL,
  `reg_no` varchar(50) NOT NULL,
  `downtime` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `booking_downtime`
--

INSERT INTO `booking_downtime` (`id`, `reg_no`, `downtime`) VALUES
(1, '', '3');

-- --------------------------------------------------------

--
-- Table structure for table `email_config`
--

CREATE TABLE `email_config` (
  `id` int(11) NOT NULL,
  `protocol` text NOT NULL,
  `smtp_host` text NOT NULL,
  `smtp_port` text NOT NULL,
  `smtp_user` varchar(35) NOT NULL,
  `smtp_pass` varchar(35) NOT NULL,
  `mailtype` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email_config`
--

INSERT INTO `email_config` (`id`, `protocol`, `smtp_host`, `smtp_port`, `smtp_user`, `smtp_pass`, `mailtype`) VALUES
(1, 'smtp', 'smtp.gmail.com', '587', 'jayd@aimejayd.tk', 'smtp.gmail.com', 'html');

-- --------------------------------------------------------

--
-- Table structure for table `employee_history`
--

CREATE TABLE `employee_history` (
  `id` int(11) NOT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `second_name` varchar(30) DEFAULT NULL,
  `position` varchar(30) DEFAULT NULL,
  `phone_no` varchar(30) DEFAULT NULL,
  `email_no` varchar(30) DEFAULT NULL,
  `document_id` varchar(30) DEFAULT NULL,
  `document_pic` varchar(255) DEFAULT NULL,
  `address_line_1` varchar(150) DEFAULT NULL,
  `address_line_2` varchar(150) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `blood_group` varchar(6) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `zip` varchar(20) DEFAULT NULL,
  `status` varchar(6) DEFAULT NULL,
  `is_assign` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_history`
--

INSERT INTO `employee_history` (`id`, `first_name`, `second_name`, `position`, `phone_no`, `email_no`, `document_id`, `document_pic`, `address_line_1`, `address_line_2`, `picture`, `blood_group`, `country`, `city`, `zip`, `status`, `is_assign`) VALUES
(1, 'Nathalia', 'Oriona', 'Hostess', '237', 'testbriand@gmail.com', '22142232', '', 'Douala', 'YaoundÃƒÂ©', './application/modules/hr/assets/images/b1d6863969159043a7b9cba4e3b61a30.jpeg', '0-', 'Cameroon', 'YaoundÃƒÂ©', '237', NULL, 0),
(2, 'Yung', 'Ovien', 'Assistant', '235', '', '', '', '', '', './application/modules/hr/assets/images/aa14c85511e2f836de7184a25f8547ed.jpeg', '', 'Cameroon', 'Douala', '', NULL, 0),
(6, 'Nathan', 'More', 'Driver', '0121234754', 'nathan@gmail.com', '234234', NULL, 'Demo Street,Hose#498', 'Demo Street,Hose#498', './application/modules/hr/assets/images/0dc78ae3e757a070ad48320e76bf7ef0.png', 'O+', 'Australia', 'Sydney', '234234', NULL, 0),
(3, 'Robben', 'Hoden', 'Driver', '34343', '', '', '', '', '', './application/modules/hr/assets/images/28fda9067d61d2fa235ba652de9bb261.jpg', '', 'Cameroon', 'Douala', '2232', NULL, 0),
(4, 'Acena', 'Lotie', 'Assistant', '2323', '', '', '', '', '', './application/modules/hr/assets/images/bb632af821d4dacb557e5e3483db4234.png', '', 'Cameroon', 'Douala', '', NULL, 0),
(5, 'Tab', 'Basite', 'Assistant', '234234', '', '', '', '', '', './application/modules/hr/assets/images/d9bcb4fe571c3c31400a51bc7a1031f7.jpg', '', 'Cameroon', 'YaoundÃƒÂ©', '', NULL, 0),
(7, 'John', 'Briden', 'Driver', '235423', 'briden@gmail.com', '65743', NULL, '15465234', 'sdfs', './application/modules/hr/assets/images/3a1cc5f3bb62753054116f2bf45bf335.png', 'B+', 'Cameroon', 'Doula', '234234', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `employee_type`
--

CREATE TABLE `employee_type` (
  `type_id` int(11) NOT NULL,
  `type_name` varchar(30) DEFAULT NULL,
  `details` varchar(100) DEFAULT NULL,
  `status` varchar(5) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee_type`
--

INSERT INTO `employee_type` (`type_id`, `type_name`, `details`, `status`) VALUES
(1, 'Driver', 'Expert in Driving', NULL),
(8, 'Office Staff', 'regular staff', NULL),
(6, 'Assistant', '', NULL),
(9, 'Hostess', 'Bus Hostess for assistance', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `enquiry_id` int(11) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `enquiry` text,
  `checked` tinyint(1) DEFAULT NULL,
  `ip_address` varchar(20) DEFAULT NULL,
  `user_agent` varchar(255) DEFAULT NULL,
  `checked_by` int(11) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `fit_fitness`
--

CREATE TABLE `fit_fitness` (
  `fitness_id` int(11) NOT NULL,
  `fitness_name` varchar(50) DEFAULT NULL,
  `fitness_description` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fit_fitness`
--

INSERT INTO `fit_fitness` (`fitness_id`, `fitness_name`, `fitness_description`) VALUES
(1, 'GYM', 'Free');

-- --------------------------------------------------------

--
-- Table structure for table `fleet_facilities`
--

CREATE TABLE `fleet_facilities` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fleet_facilities`
--

INSERT INTO `fleet_facilities` (`id`, `name`, `description`, `status`) VALUES
(1, 'Breakfast', 'Free breakfast', 1),
(2, 'Free wifi ', '4G Connectivity onboard', 1),
(3, 'No facility', 'No facility regarding this bus', 1),
(4, 'Snacks', 'sdfsdf', 1),
(5, 'coffee', 'sdfsd', 1);

-- --------------------------------------------------------

--
-- Table structure for table `fleet_registration`
--

CREATE TABLE `fleet_registration` (
  `id` int(11) UNSIGNED NOT NULL,
  `reg_no` varchar(255) DEFAULT NULL,
  `fleet_type_id` int(11) DEFAULT NULL,
  `engine_no` varchar(255) DEFAULT NULL,
  `model_no` varchar(255) DEFAULT NULL,
  `chasis_no` varchar(255) DEFAULT NULL,
  `owner` varchar(255) DEFAULT NULL,
  `owner_phone` varchar(30) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL,
  `ac_available` tinyint(1) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_assign` tinyint(2) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fleet_registration`
--

INSERT INTO `fleet_registration` (`id`, `reg_no`, `fleet_type_id`, `engine_no`, `model_no`, `chasis_no`, `owner`, `owner_phone`, `company`, `ac_available`, `status`, `is_assign`) VALUES
(1, 'LT019EM', 1, 'ENG-ERO092', 'Toyota Camri', 'TY-9948', 'Manishimwe JEAN DE DIEU', '+250784187303', 'Toyota', 0, 1, 0),
(2, 'LT9873HG', 2, 'ENG-ERO0932', 'RZ34V', '434', 'Paulette', '+250784187303', 'Higher', 0, 1, 1),
(3, 'LTm35656T', 4, 'Eng-ERT003', 'RZ35V', 'TY-9947', 'Rukundo', '+25078888884', 'Toyota', 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `fleet_type`
--

CREATE TABLE `fleet_type` (
  `id` int(11) UNSIGNED NOT NULL,
  `type` varchar(255) NOT NULL,
  `layout` varchar(50) NOT NULL,
  `lastseat` varchar(30) NOT NULL,
  `total_seat` int(11) NOT NULL,
  `seat_numbers` varchar(255) NOT NULL,
  `fleet_facilities` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `fleet_type`
--

INSERT INTO `fleet_type` (`id`, `type`, `layout`, `lastseat`, `total_seat`, `seat_numbers`, `fleet_facilities`, `status`) VALUES
(1, 'VIP', '2-2', '0', 24, 'A1 , A2 , A3 , A4 , B1 , B2 , B3 , B4 , C1 , C2 , C3 , C4 , D1 , D2 , D3 , D4 , E1 , E2 , E3 , E4 , F1 , F2 , F3 , F4 , ', 'Breakfast,Free wifi ,Snacks,coffee', 1),
(2, 'Prestige', '2-2', '0', 18, 'A1 , A2 , A3 , A4 , B1 , B2 , B3 , B4 , C1 , C2 , C3 , C4 , D1 , D2 , D3 , D4 , E1 , E2 , ', 'No facility', 1),
(4, 'Coach', '3-2', '0', 30, 'A1 , A2 , A3 , A4 , A5 , B1 , B2 , B3 , B4 , B5 , C1 , C2 , C3 , C4 , C5 , D1 , D2 , D3 , D4 , D5 , E1 , E2 , E3 , E4 , E5 , F1 , F2 , F3 , F4 , F5 , ', 'Breakfast,Free wifi ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `ftn_fitness_period`
--

CREATE TABLE `ftn_fitness_period` (
  `id` int(11) NOT NULL,
  `fitness_id` int(11) DEFAULT NULL,
  `vehicle_id` int(11) DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` date DEFAULT NULL,
  `start_milage` float DEFAULT NULL,
  `end_milage` float DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `how_to_use`
--

CREATE TABLE `how_to_use` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `how_to_use`
--

INSERT INTO `how_to_use` (`id`, `description`) VALUES
(1, '<p>There is&nbsp; no information UUUU<img src=\"../../assets/tinymce/plugins/emoticons/img/smiley-cool.gif\" alt=\"cool\" /></p>');

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `phrase` varchar(100) NOT NULL,
  `english` varchar(255) NOT NULL,
  `french` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`id`, `phrase`, `english`, `french`) VALUES
(1, 'login', 'Login', 'Se connecter'),
(2, 'email', 'Email', 'Email '),
(3, 'password', 'Password', 'Mot de passe'),
(4, 'reset', 'Reset', 'Reinitialiser'),
(5, 'dashboard', 'Dashboard', 'Tableau de bord'),
(6, 'home', 'HOME', 'Acceuil '),
(7, 'profile', 'Profile', 'Profil'),
(8, 'profile_setting', 'Profile Setting', 'Reglage du profil'),
(9, 'firstname', 'First Name', 'Nom'),
(10, 'lastname', 'Last Name', 'PrÃƒÂ©nom'),
(11, 'about', 'About', 'A propos'),
(12, 'preview', 'Preview', 'Visualiser'),
(13, 'image', 'Image', 'Image'),
(14, 'save', 'Save', 'Sauvegarder'),
(15, 'upload_successfully', 'Upload Successfully!', 'Mise ÃƒÂ  jour reussi'),
(16, 'user_added_successfully', 'User Added Successfully!', 'Utilisateur ajoutÃƒÂ© avec succÃƒÂ¨s'),
(17, 'please_try_again', 'Please Try Again...', 'SVP Essayez encore'),
(18, 'inbox_message', 'Inbox Messages', 'Boite de reception message'),
(19, 'sent_message', 'Sent Message', 'Envoyer un message'),
(20, 'message_details', 'Message Details', 'DÃƒÂ©tails du message'),
(21, 'new_message', 'New Message', 'Nouveau message'),
(22, 'receiver_name', 'Receiver Name', 'Nom du recepteur'),
(23, 'sender_name', 'Sender Name', 'Nom de l\'expediteur'),
(24, 'subject', 'Subject', 'Sujet'),
(25, 'message', 'Message', 'Message'),
(26, 'message_sent', 'Message Sent!', 'Message envoyÃƒÂ©'),
(27, 'ip_address', 'IP Address', 'Adresse IP'),
(28, 'last_login', 'Last Login', 'DerniÃƒÂ¨re connexion'),
(29, 'last_logout', 'Last Logout', 'DerniÃƒÂ¨re dÃƒÂ©connexion'),
(30, 'status', 'Status', 'Status'),
(31, 'delete_successfully', 'Delete Successfully!', 'Suppression rÃƒÂ©ussi'),
(32, 'send', 'Send', 'Envoyer'),
(33, 'date', 'Date', 'Date'),
(34, 'action', 'Action', 'Action'),
(35, 'sl_no', 'SL No.', 'NÃ‚Â° SL'),
(36, 'are_you_sure', 'Are You Sure ? ', 'Etes-vous sure ?'),
(37, 'application_setting', 'Application Setting', 'Reglages d\'application'),
(38, 'application_title', 'Application Title', 'Titre d\'application'),
(39, 'address', 'Address', 'Adresse'),
(40, 'phone', 'Phone', 'Phone'),
(41, 'favicon', 'Favicon', 'Favicon'),
(42, 'logo', 'Logo', 'Logo'),
(43, 'language', 'Language', 'Langue'),
(44, 'left_to_right', 'Left To Right', 'Gauche vers droite'),
(45, 'right_to_left', 'Right To Left', 'Droite vers la gauche'),
(46, 'footer_text', 'Footer Text', 'Texte du footer'),
(47, 'site_align', 'Application Alignment', 'Aligner le site'),
(48, 'welcome_back', 'Welcome Back!', 'Bienvenue ÃƒÂ  nouveau'),
(49, 'please_contact_with_admin', 'Please Contact With Admin', 'Veuillez contacter l\'administrateur'),
(50, 'incorrect_email_or_password', 'Incorrect Email/Password', 'Mot de passe ou Email incorrect'),
(51, 'select_option', 'Select Option', 'Option de selection'),
(52, 'ftp_setting', 'Data Synchronize [FTP Setting]', 'Reglage FTP'),
(53, 'hostname', 'Host Name', 'Hostname'),
(54, 'username', 'User Name', 'Nom d\'utilisateur'),
(55, 'ftp_port', 'FTP Port', 'Port FTP'),
(56, 'ftp_debug', 'FTP Debug', 'Debogage FTP '),
(57, 'project_root', 'Project Root', 'Racine du projet'),
(58, 'update_successfully', 'Update Successfully', 'Mise ÃƒÂ  jour reussi'),
(59, 'save_successfully', 'Save Successfully!', 'Sauvegarde rÃƒÂ©ussie'),
(61, 'internet_connection', 'Internet Connection', 'Connexion internet'),
(62, 'ok', 'Ok', 'Ok'),
(63, 'not_available', 'Not Available', 'Indisponible'),
(64, 'available', 'Available', 'Disponible'),
(65, 'outgoing_file', 'Outgoing File', 'Fichier sortant'),
(66, 'incoming_file', 'Incoming File', 'Fichier entrant '),
(67, 'data_synchronize', 'Data Synchronize', 'Synchroniser les donnÃƒÂ©es'),
(68, 'unable_to_upload_file_please_check_configuration', 'Unable to upload file! please check configuration', 'Impossible de charger les donnÃƒÂ©es veuillez vÃƒÂ©rifier les configurations'),
(69, 'please_configure_synchronizer_settings', 'Please configure synchronizer settings', 'Veuillez configurer les paramÃƒÂ¨tres de synchronisation'),
(70, 'download_successfully', 'Download Successfully', 'TÃƒÂ©lÃƒÂ©chargement rÃƒÂ©ussi'),
(71, 'unable_to_download_file_please_check_configuration', 'Unable to download file! please check configuration', 'TÃƒÂ©lÃƒÂ©chargement impossible, veuillez vÃƒÂ©rifier votre connexion internet'),
(72, 'data_import_first', 'Data Import First', 'Importer d\'abord les donnÃƒÂ©es'),
(73, 'data_import_successfully', 'Data Import Successfully!', 'Import de donnÃƒÂ©es rÃƒÂ©ussi'),
(74, 'unable_to_import_data_please_check_config_or_sql_file', 'Unable to import data! please check configuration / SQL file.', 'Impossible d\'importer les donnÃƒÂ©es, veuillez vÃƒÂ©rifier les configurations'),
(75, 'download_data_from_server', 'Download Data from Server', 'TÃƒÂ©lÃƒÂ©charger les donnÃƒÂ©es du serveur'),
(76, 'data_import_to_database', 'Data Import To Database', 'Import de donnÃƒÂ©es dans la base de donnÃƒÂ©es'),
(77, 'data_upload_to_server', 'Data Upload to Server', 'Charger les donnÃƒÂ©es dans le seveur'),
(78, 'please_wait', 'Please Wait...', 'Veuillez patienter'),
(79, 'ooops_something_went_wrong', ' Ooops something went wrong...', 'Oops, quelque chose a mal fonctionnÃƒÂ©'),
(80, 'module_permission_list', 'Module Permission List', 'Liste de permission du module'),
(81, 'user_permission', 'User Permission', 'Permission utilisateur'),
(82, 'add_module_permission', 'Add Module Permission', 'Ajouter module de permission'),
(83, 'module_permission_added_successfully', 'Module Permission Added Successfully!', 'Permission du module ajoutÃƒÂ©e avec succÃƒÂ¨s'),
(84, 'update_module_permission', 'Update Module Permission', 'Mettre ÃƒÂ  jour le module de permission'),
(85, 'download', 'Download', 'TÃƒÂ©lÃƒÂ©charger'),
(86, 'module_name', 'Module Name', 'Nom du module'),
(87, 'create', 'Create', 'CrÃƒÂ©er'),
(88, 'read', 'Read', 'Lu'),
(89, 'update', 'Update', 'Mettre ÃƒÂ  jour'),
(90, 'delete', 'Delete', 'Supprimer '),
(91, 'module_list', 'Module List', 'Liste de module'),
(92, 'add_module', 'Add Module', 'Ajouter module'),
(93, 'directory', 'Module Direcotory', 'Repertoire'),
(94, 'description', 'Description', 'Description'),
(95, 'image_upload_successfully', 'Image Upload Successfully!', 'Image mis ÃƒÂ  jour avec succÃƒÂ¨s'),
(96, 'module_added_successfully', 'Module Added Successfully', 'Module ajoutÃƒÂ© avec succÃƒÂ¨s'),
(97, 'inactive', 'Inactive', 'Inactif'),
(98, 'active', 'Active', 'Actif'),
(99, 'user_list', 'User List', 'Liste d\'utilisateur'),
(100, 'see_all_message', 'See All Messages', 'Voir tous les messages'),
(101, 'setting', 'Setting', 'Reglages'),
(102, 'logout', 'LOGOUT', 'DÃƒÂ©connexion'),
(103, 'admin', 'Admin', 'Administrateur'),
(104, 'add_user', 'Add User', 'Ajouter un utilisateur'),
(105, 'user', 'User', 'Utilisateur'),
(106, 'module', 'Module', 'Module'),
(107, 'new', 'New', 'Nouveau'),
(108, 'inbox', 'Inbox', 'Boite de reception'),
(109, 'sent', 'Sent', 'EnvoyÃƒÂ©'),
(110, 'synchronize', 'Synchronize', 'Synchroniser'),
(111, 'data_synchronizer', 'Data Synchronizer', 'Synchronisation de donnÃƒÂ©es'),
(112, 'module_permission', 'Module Permission', 'Permission du module'),
(113, 'backup_now', 'Backup Now!', 'Sauvegarder maintenant'),
(114, 'restore_now', 'Restore Now!', 'Restaurer maintenant'),
(115, 'backup_and_restore', 'Data Backup', 'Suavegarde et restauration'),
(116, 'captcha', 'Captcha Word', 'Captcha'),
(117, 'database_backup', 'Database Backup', 'Sauvegarde base de donnÃƒÂ©e'),
(118, 'restore_successfully', 'Restore Successfully', 'Restauration rÃƒÂ©ussi'),
(119, 'backup_successfully', 'Backup Successfully', 'Sauvegarde rÃƒÂ©ussi'),
(120, 'filename', 'File Name', ' Nom du fichier'),
(121, 'file_information', 'File Information', 'Info du fichier'),
(122, 'size', 'Size', 'Taille'),
(123, 'backup_date', 'Backup Date', 'Date de sauvegarde'),
(124, 'overwrite', 'Overwrite', 'Ecraser'),
(125, 'invalid_file', 'Invalid File!', 'Fichier invalide'),
(126, 'invalid_module', 'Invalid Module', 'Module invalide'),
(127, 'remove_successfully', 'Remove Successfully!', 'RetirÃƒÂ© avec succÃƒÂ¨s'),
(128, 'install', 'Install', 'Installer'),
(129, 'uninstall', 'Uninstall', 'DÃƒÂ©sinstaller'),
(130, 'tables_are_not_available_in_database', 'Tables are not available in database.sql', 'Tables indisponibles dans les bases de donnÃƒÂ©es'),
(131, 'no_tables_are_registered_in_config', 'No tables are registerd in config.php', 'Pas de tickets enregistrÃƒÂ©s dans les configurations'),
(132, 'enquiry', 'Enquiry', 'Requetes'),
(133, 'read_unread', 'Read/Unread', 'Lu et non lu'),
(134, 'enquiry_information', 'Enquiry Information', 'info de requete'),
(135, 'user_agent', 'User Agent', 'Utilisateur agent'),
(136, 'checked_by', 'Checked By', 'VerifiÃƒÂ© par'),
(137, 'new_enquiry', 'New Enquiry', 'Nouvelle requÃƒÂªte'),
(138, 'fleet', 'Fleet Management', 'Flotte'),
(139, 'fleet_type', 'Fleet Type', 'Type de vehicule'),
(140, 'add', 'Add', 'Ajouter'),
(141, 'list', 'List', 'Liste'),
(142, 'fleet_facilities', 'Fleet Facilities', 'FacilitÃƒÂ©s du vÃƒÂ©hicule'),
(143, 'fleet_registration', 'Vehicles', 'Enregistrement du vÃƒÂ©hicule'),
(144, 'reg_no', 'Registration No.', 'NÃ‚Â° de reg'),
(145, 'model_no', 'Model No.', 'NÃ‚Â° du modÃƒÂ¨le '),
(146, 'engine_no', 'Engine No.', 'NÃ‚Â° du moteur'),
(147, 'chasis_no', 'Chasis No.', 'NÃ‚Â° de chassis'),
(148, 'total_seat', 'Total Seat', 'SiÃƒÂ¨ges total'),
(149, 'seat_numbers', 'Seat Number', 'NumÃƒÂ©ro des siÃƒÂ¨ges'),
(150, 'owner', 'Owner', 'Auteur'),
(151, 'company', 'Company Name', 'SocietÃƒÂ©'),
(152, 'trip', 'Trip Management', 'Voyage'),
(153, 'location', 'Destination', 'Localication'),
(154, 'route', 'Route', 'Ligne'),
(155, 'assign', 'Assign', 'Assigner'),
(156, 'close', 'Close Trip', 'Fermer'),
(157, 'location_name', 'Destination Name', 'Nom de la localisation'),
(158, 'google_map', 'Google Map', 'Google maps'),
(159, 'start_point', 'Start Point', 'Point de dÃƒÂ©part'),
(160, 'end_point', 'End Point', 'Point d\'arrivÃƒÂ©'),
(161, 'route_name', 'Route Name', 'Nom de la ligne'),
(162, 'distance', 'Distance', 'Distance'),
(163, 'approximate_time', 'Approximate Time', 'Temps approximatif'),
(164, 'stoppage_points', 'Stoppage Points', 'Points d\'arrets'),
(165, 'fleet_registration_no', 'Fleet Registration No.', 'NÃ‚Â° d\'enregistrement du vÃƒÂ©hicule'),
(166, 'start_date', 'Start Date', 'Date de dÃƒÂ©but'),
(167, 'end_date', 'End Date', 'Date de fin'),
(168, 'driver_name', 'Driver Name', 'Nom du chauffeur'),
(169, 'assistants_ids', 'Assistants', 'ID d\'assignations'),
(170, 'sold_ticket', 'Sold Ticket', 'Tickets vendus'),
(171, 'total_income', 'Total Income', 'Revenu total'),
(172, 'total_expense', 'Total Expense', 'Total dÃƒÂ©penses'),
(173, 'total_fuel', 'Total Fuel', 'Total Fuel'),
(174, 'trip_comment', 'Trip Comment', 'Commentaire du voyage'),
(175, 'closed_by', 'Closed by', 'FermÃƒÂ© par '),
(176, 'ticket', 'Ticket Management', 'Ticket'),
(177, 'passenger', 'Passenger', 'Passager'),
(178, 'middle_name', 'Middle Name', 'Autre nom'),
(179, 'date_of_birth', 'Date of Birth', 'Date de naissance'),
(180, 'passenger_id', 'Passenger ID.', 'ID du passager'),
(181, 'address_line_1', 'Address Line 1', 'Adresse 1'),
(182, 'address_line_2', 'Address Line 2', 'Adresse 1'),
(184, 'zip_code', 'Zip Code', 'Code zip'),
(186, 'name', 'Name', 'Nom'),
(187, 'ac_available', 'AC available', 'Clim disponible'),
(188, 'trip_id', 'Trip ID.', 'ID du voyage'),
(189, 'book', 'Book', 'Reserver'),
(190, 'booking_id', 'Booking ID.', 'ID de reservation'),
(191, 'available_seats', 'Available Seats', 'SiÃƒÂ¨ges disponibles'),
(192, 'select_seats', 'Select Seats', 'Selectionner les siÃƒÂ¨ges'),
(193, 'time', 'Time', 'Temps'),
(194, 'offer_code', 'Offer Code', 'Code de l\'offre'),
(195, 'price', 'Price', 'Prix'),
(196, 'discount', 'Discount', 'Remise'),
(197, 'request_facilities', 'Request Facilities', 'RequÃƒÂªtes de facilitÃƒÂ©s'),
(198, 'pickup_location', 'Pickup Location', 'Localisation de depart'),
(199, 'drop_location', 'Drop Location', 'Destination'),
(200, 'amount', 'Amount', 'Montant'),
(201, 'invalid_passenger_id', 'Invalid Passenger ID', 'ID du passager invalide'),
(202, 'invalid_input', 'Invalid Input', 'EntrÃƒÂ©e invalide'),
(203, 'booking_date', 'Booking Date', 'Date de reservation'),
(204, 'cancelation_fees', 'Cancelation Fees', 'Frais d\'annulation'),
(205, 'causes', 'Causes', 'Causes'),
(206, 'comment', 'Comment', 'Commentaires'),
(207, 'refund', 'Refund', 'Remboursement'),
(208, 'refund_by', 'Refund by', 'RemboursÃƒÂ© par'),
(209, 'feedback', 'Feedback', 'Feedback'),
(210, 'rating', 'Rating', 'Notes'),
(211, 'blood_group', 'Blood Group', 'Groupe sanguin'),
(212, 'religion', 'Religion', 'Religion'),
(219, 'details', 'Details', 'Details'),
(220, 'type_name', 'Type Name', 'Nom du type'),
(221, 'view_details', 'View Details', 'Visualiser les dÃƒÂ©tails'),
(222, 'document_pic', 'Document Picture', 'Image du document'),
(223, 'fitness_list', 'Fitness List', 'Liste fitness'),
(226, 'fitness_name', 'Fitness Name', 'Nom fitness'),
(227, 'fitness_description', 'Description', 'Description fitness'),
(228, 'successfully_updated', 'Your Data Successfully Updated', 'Mise ÃƒÂ  jour reussi'),
(229, 'fitness_period', 'Fitness Period List', 'PÃƒÂ©riode fitness'),
(230, 'fitness_id', 'Fitness Name', 'ID fitness'),
(231, 'vehicle_id', 'Vehicles No', 'ID vehicule'),
(234, 'start_milage', 'Start Milage', 'CommenÃƒÂ§er le kilometrage'),
(235, 'end_milage', 'End Milage', 'Fin du KM'),
(236, 'agent', 'Agent', 'Agent'),
(237, 'agent_first_name', 'First Name', 'Nom Agent'),
(238, 'agent_second_name', 'LastName', 'Autre Nom de l\'agent'),
(239, 'agent_company_name', 'Company Name', 'Non SociÃƒÂ©tÃƒÂ© d\'agent '),
(240, 'agent_document_id', 'Document ID', 'ID Document agent'),
(241, 'agent_pic_document', 'Document File', 'Doc photo agent'),
(242, 'agent_phone', 'Phone', 'TÃƒÂ©lÃƒÂ©phone agent'),
(243, 'agent_mobile', 'Mobile No', 'Mobile Agent'),
(244, 'agent_email', 'Email', 'Email Agent'),
(245, 'agent_address_line_1', 'Address Line 1', 'Adresse d\'agent 1'),
(246, 'agent_address_line_2', 'Address Line 2', 'Adresse d\'agent 2'),
(247, 'agent_address_city', 'City', 'Adresse ville d\'agent'),
(248, 'agent_address_zip_code', 'ZIP', 'Code zip agent'),
(249, 'agent_country', 'Country', 'Pays d\'agent'),
(252, 'sl', 'SL', 'sl'),
(253, 'route_id', 'Route Name', 'ID de ligne'),
(254, 'vehicle_type_id', 'Vehicle Type', 'ID type de vÃƒÂ©hicule'),
(255, 'group_price_per_person', 'Group Price Per Person', 'Groupe de prix par personne'),
(256, 'group_size', 'Group Members', 'Taille du groupe'),
(257, 'successfully_saved', 'Your Data Successfully Saved', 'SauvegardÃƒÂ© avec succÃƒÂ¨s'),
(258, 'account', 'Account', 'Compte'),
(259, 'account_name', 'Account Name', 'Nom du compte'),
(260, 'account_type', 'Account Type', 'Type de compte'),
(261, 'account_transaction', 'Account Transaction', 'Transaction du compte'),
(262, 'account_id', 'Account Name', 'ID du compte'),
(263, 'transaction_description', 'Transaction Details', 'Description de la transaction'),
(265, 'pass_book_id', 'Passenger ID', 'ID pass de reservation'),
(267, 'payment_id', 'Payment ID', 'ID de paiement '),
(268, 'create_by_id', 'Created By', 'CrÃƒÂ©er l\'ID par'),
(269, 'offer', 'Offer', 'Offres'),
(270, 'offer_name', 'Offer Name', 'Nom de l\'offre'),
(271, 'offer_start_date', 'Offer Start Date', 'Date de debut de l\'offre'),
(272, 'offer_end_date', 'Offer Last Date', 'Datae de fin de l\'offre'),
(274, 'offer_discount', 'Discount', 'Remise de l\'offre '),
(275, 'offer_terms', 'Offer Terms', 'Termes de l\'offre'),
(276, 'offer_route_id', 'Route Name', 'ID offre de voyage'),
(277, 'offer_number', 'Offer Number', 'NÃ‚Â° de l\'offre'),
(280, 'seat_number', 'Seat No', 'NÃ‚Â° du siÃƒÂ¨ge '),
(281, 'available_seat', 'Available Seat', 'SiÃƒÂ¨ge disponible'),
(282, 'owner_name', 'Owner Name', 'Nom de l\'auteur'),
(283, 'agent_picture', 'Picture', 'Photo Agent'),
(284, 'account_add', 'Add Account', 'Ajouter un compte'),
(285, 'add_agent', 'Add Agent', 'Ajouter agent'),
(286, 'hr', 'Human Resource', 'Ressource Humaine'),
(287, 'create_hr', 'Add Employee', 'CrÃƒÂ©er l\'heure'),
(288, 'serial', 'Sl', 'Serial'),
(289, 'position', 'Position', 'Position'),
(290, 'phone_no', 'Phone No', 'NÃ‚Â° de tÃƒÂ©lÃƒÂ©phone'),
(291, 'email_no', 'Email', 'NÃ‚Â° Email'),
(292, 'picture', 'Picture', 'Photo'),
(293, 'first_name', 'First Name', 'Nom'),
(294, 'second_name', 'Last Name', 'DeuxiÃƒÂ¨me nom'),
(295, 'document_id', 'Documet Id', 'ID document'),
(298, 'country', 'Country', 'Pays'),
(299, 'city', 'City', 'Ville '),
(300, 'zip', 'Zip ', 'Zip '),
(393, 'add_passenger', 'Add Passenger', 'Ajouter un passager'),
(394, 'search_tiket', 'Search Ticket', 'Rechercher le ticket'),
(395, 'slogan', 'Slogan', 'Slogan'),
(396, 'website', 'Website', 'Site web'),
(397, 'submit', 'Submit', 'Envoyer'),
(398, 'customer_service', 'Customer Service', 'Service client'),
(399, 'submit_successfully', 'Submit Successfully!', 'Envoi reussi'),
(400, 'add_to_website', 'Add to Website', 'Ajouter au site'),
(401, 'our_customers_say', 'Our Customers Say', 'Ce que disent nos clients'),
(402, 'website_status', 'Website Status', 'Status site web'),
(403, 'title', 'Title', 'Titre'),
(405, 'total_fleet', 'Total Fleet', 'Total flotte vÃƒÂ©hicules'),
(406, 'total_passenger', 'Total Passenger', 'Total passagers'),
(407, 'todays_trip', 'Today\'s Trip', 'Voyage d\'aujourd\'hui'),
(408, 'seats_available', 'Seats Available', 'SiÃƒÂ¨ges disponibles'),
(409, 'no_trip_avaiable', 'No trip avaiable', 'Aucun voyage disponible'),
(410, 'booking', 'Booking', 'Reservations'),
(411, 'something_went_worng', 'Something went worng!', 'Quelque chose a mal fonctionnÃƒÂ©'),
(412, 'paypal_email', 'Paypal Email', 'Email Paypal'),
(413, 'currency', 'Currency', 'DÃƒÂ©vise'),
(414, 'reports', 'Reports', 'Rapports'),
(415, 'search', 'Search', 'Rechercher'),
(417, 'go', 'Go', 'Lancer'),
(418, 'all', 'All', 'Tout'),
(419, 'filter', 'Filter', 'Filter'),
(420, 'last_year_progress', 'Last Year Progress', 'ProgrÃƒÂ¨s l\'an dernier'),
(421, 'download_document', 'Download Document', 'TÃƒÂ©lÃƒÂ©charger le document'),
(422, 'mobile', 'Mobile No.', 'Mobile '),
(424, 'account_list', 'Account List', 'Liste de comptes'),
(425, 'add_income', 'Add Income', 'Ajouter une entrÃƒÂ©e'),
(426, 'add_expense', 'Add Expense', 'Ajouter une dÃƒÂ©pense'),
(427, 'agent_list', 'Agent List', 'Liste d\'agent'),
(428, 'add_fitness', 'Add Fitness', 'Ajouter fitness'),
(429, 'fitness', 'Fitness', 'Fitness'),
(430, 'add_fitness_period', 'Add Fitness Period', 'Ajouter PÃƒÂ©riode fitness'),
(431, 'employee_type', 'Employee Type', 'Type d\'employÃƒÂ©'),
(432, 'employee_list', 'Employee List', 'Liste d\'employÃƒÂ©'),
(433, 'add_offer', 'Add Offer', 'Ajouter une offre'),
(434, 'offer_list', 'Offer List', 'Liste d\'offre'),
(435, 'add_price', 'Add Price', 'Ajouter un prix'),
(436, 'price_list', 'Price List', 'Liste de prix'),
(437, 'layout', 'Layout', 'AperÃƒÂ§u'),
(438, 'last_seat_availabe', 'Last Seat Available', 'Dernier siÃƒÂ¨ge disponible'),
(439, 'paypal_transaction', 'Paypal Transaction', 'Transaction paypal'),
(440, 'enable', 'Enable', 'Activer'),
(441, 'disable', 'Disable', 'Desactiver'),
(442, 'payment_gateway', 'Payment Gateway', 'Passerelle de paiement'),
(443, 'payment_type', 'Payment Type', 'Type de paiement'),
(444, 'payment_status', 'Payment Status', 'Status de paiement'),
(445, 'downtime', 'Down Time', 'Temps hors service'),
(446, 'select_bus', 'Select Bus', 'Selectionner le bus'),
(447, 'user_info', 'Passenger Information', 'Informations d\'utilisateur'),
(448, 'personal_info', 'Personal Information', 'Informations personnelles'),
(449, 'booking_info', 'Booking Information', 'Info de reservation'),
(450, 'update_your_profile', 'Edit your Profile', 'Mettre ÃƒÂ  jour votre profil'),
(451, 'email_configue', 'Email Configuration', 'Reglage Email'),
(452, 'protocol', 'Protocol', 'Protocol'),
(453, 'smtp_host', 'SMTP Host', 'host smtp'),
(454, 'smtp_port', 'SMTP Port', 'port smtp'),
(455, 'smtp_pass', 'SMTP Password', 'pass smtp'),
(456, 'mailtype', 'Mail Type', 'Type de mail'),
(457, 'smtp_user', 'SMTP User', 'utilisateur smtp'),
(458, 'html', 'Html', 'HTML'),
(459, 'text', 'Text', 'Texte '),
(460, 'email_send_to_passenger', ' Email Sent Sucessfully', 'Mail envoyÃƒÂ© au passager'),
(461, 'bank', 'Bank Information', 'Banque'),
(462, 'instruction', 'Instruction', 'Instruction'),
(463, 'account_details', 'Account Details', 'Details du compte'),
(464, 'bank_logo', 'Bank Logo', 'Logo banque'),
(465, 'bank_name', 'Bank Name', 'Nom de banque'),
(466, 'bank_trans', 'Bank', 'Transation banque'),
(467, 'transaction_successfully_send', 'Your Information successfully Send', 'Transaction envoyÃƒÂ© avec succÃƒÂ¨s'),
(468, 'confirmation', 'Confirmation', 'Confirmation'),
(469, 'account_no', 'Account No', 'NÃ‚Â° du compte'),
(470, 'transaction_no', 'Transaction No', 'NÃ‚Â° de la transaction'),
(471, 'paypal', 'Paypal', 'Paypal'),
(472, 'cash', 'Cash', 'Cash'),
(473, 'paypal_checkout', 'Paypal Checkout', 'Checkout Paypal'),
(474, 'confirm_banking', 'Confirm Banking', 'Confirmation bancaire'),
(475, 'payment_information', 'Payment Information', 'Informaition de paiement '),
(476, 'email_gritting', 'Congratulation Mr.', 'Email personalisÃƒÂ©'),
(477, 'email_ticket_idinfo', 'Your Purchase Ticket No-', 'ID info email'),
(478, 'ticket_confirmation', 'Unpaid Bank Booking List', 'Confirmation ticket'),
(479, 'deny', 'Deny', 'Rejeter'),
(480, 'confirm', 'CONFIRM', 'Confirmer'),
(481, 'note', 'Note', 'Note'),
(482, 'accournt_no', 'Account Number', 'NÃ‚Â° Compte'),
(483, 'payer_name', 'Payer Name', 'Nom du payeur'),
(484, 'accournt_non', 'Account Number', 'NÃ‚Â° Compte'),
(485, 'confirm_booking', 'Confirm Booking', 'Confirmer la rÃƒÂ©servation'),
(486, 'account_num', 'Account Number', 'NumÃƒÂ©ro du compte'),
(487, 'invalid_logo', 'Invalid Logo, Please upload gif|jpg|png|jpeg|ico type image', 'Logo invalide'),
(488, 'invalid_favicon', 'Invalid Favicon, Please upload gif|jpg|png|jpeg|ico type image', 'Favicon invalide'),
(489, 'print_ticket', 'Print Ticket', 'Imprimmer le ticket'),
(490, 'cancel_ticket', 'Cancel Ticket', 'Annuler le ticket'),
(491, 'email_not_send', 'Email Not Send', 'Email non envoyÃƒÂ©'),
(492, 'timezone', 'Time Zone', 'Fuseau horaire'),
(493, 'menu_permission_form', 'Menu Permission Form', 'Position du formulaire de menu'),
(494, 'permission_setup', 'Permission setup', 'Reglage de permission'),
(495, 'menu_permission_list', 'Menu Permission List', 'Liste de permission menu'),
(496, 'add_fleet_type', 'Add Fleet Type', 'Ajouter type de flotte'),
(497, 'fleet_type_list', 'Fleet Type List', 'LIste type de vÃƒÂ©hicule'),
(498, 'add_facilities', 'Add Facilities', 'Ajouter les facilitÃƒÂ©s'),
(499, 'facilities_list', 'Facilities List', 'Liste de facilitÃƒÂ©s'),
(500, 'add_registration', 'Add Vehicle', 'Ajouter une souscription'),
(501, 'registration_list', 'Vehicle List', 'Liste d\'enregistrement'),
(502, 'refund_list', 'Refund List', 'Liste de remboursement'),
(503, 'add_refund', 'Add Refund', 'Ajouter un remboursement'),
(504, 'booking_list', 'Booking List', 'Liste de reservation'),
(505, 'add_booking', 'Add Booking', 'Ajouter une rÃƒÂ©servation'),
(506, 'passenger_list', 'Passenger List', 'Liste des passagers'),
(507, 'assign_list', 'Assignment List', 'Liste d\'assignation'),
(508, 'close_list', 'Close List', 'Liste fermÃƒÂ©'),
(509, 'add_assign', 'Assign Vehicle To Trip', 'Ajouter une assignation'),
(510, 'route_list', 'Route List', 'Liste de ligne'),
(511, 'add_route', 'Add Route', 'Ajouter une ligne'),
(512, 'location_list', 'Destination List', 'Liste de localisation'),
(513, 'add_location', 'Add Destination', 'Ajouter localisation'),
(514, 'add_role', 'Add Role', 'Ajouter un role'),
(515, 'add_bank', 'Add Bank', 'Ajouter une banque'),
(516, 'bank_list', 'Bank List', 'Liste de banque'),
(517, 'role_name', 'Role Name', 'Nom du role'),
(518, 'role_description', 'Role Description', 'Description du role'),
(519, 'role_list', 'Role List', 'Liste de role'),
(520, 'user_access_role', 'User Access Role', 'Role d\'utilisateur'),
(521, 'role', 'Role', 'Role'),
(522, 'role_permission', 'Role Permission', 'Permission du role'),
(523, 'web_setting', 'Web Setting', 'Reglages web'),
(524, 'ticket_offer', 'Ticket Offer', 'Offre de tickets'),
(525, 'shedules', 'Shedules', 'Horaires'),
(526, 'add_shedule', 'Add Shedule', 'Ajouter un planning'),
(527, 'shedule_list', 'Shedule LIst', 'Liste d\'horaires'),
(528, 'shedule_time', 'Shedule Time', 'Temps de planning'),
(529, 'travel_slogan', 'On the placess you\'ll go', 'Slogan du voyage'),
(530, 'travel_sub_slogan', 'It is not down in any map; true place naver are.', 'Sous slogan du voyage'),
(531, 'search_tour', 'Search Tours', 'Rechercher un voyage'),
(532, 'find_dream', 'Find your dream tour today!', 'Rechercher reve'),
(533, 'find_now', 'Find now!', 'Rechercher maintenant'),
(534, 'start', 'Start', 'Demarrer '),
(535, 'end', 'End', 'Fin'),
(536, 'paypal_payment_paynow', 'PAYPAL PAY NOW', 'Paiement paypal Payer maintenant'),
(537, 'passenger_name', 'Passenger Name', 'Nom du passager'),
(538, 'facilities', 'Facilities', 'FacilitÃƒÂ©s'),
(539, 'seat_name', 'Seat Name', 'Nom du siÃƒÂ¨ge'),
(540, 'adult', 'Adult', 'Adulte'),
(541, 'child', 'Child', 'Enfant'),
(542, 'special', 'Special', 'Special'),
(543, 'grand_total', 'Grand Total', 'Grand Total'),
(544, 'book_for_one_hour', 'Book For One Hour', 'Reserver pour une heure'),
(545, 'unpaid_cash_booking_list', 'Unpaid Cash Booking List', 'Liste des rÃƒÂ©servations non payÃƒÂ©s'),
(546, 'bank_transaction', 'Bank Transaction', 'Transaction de banque'),
(547, 'payment_term_andcondition', 'Payment Terms & Conditions', 'Terms & conditions de paiement'),
(548, 'add_terms', 'Add Terms', 'Ajouter les termes'),
(549, 'terms_list', 'Terms & Condition', 'Liste de termes'),
(550, 'how_to_pay', 'How to Pay', 'Comment Payer'),
(551, 'terms_and_condition', 'Terms And Conditions', 'Termes et conditions'),
(552, 'nid', 'National ID', 'NÃ‚Â° ID'),
(553, 'add_trip', 'Create Trip', 'Ajouter un voyage'),
(554, 'trips', 'Trips', 'Voyages'),
(555, 'trip_list', 'Trip LIst', 'Liste de voyage'),
(556, 'trip_title', 'Trip Title', 'Titre du voyage'),
(557, 'types', 'Types', 'Types'),
(558, 'assigns', 'Assign', 'Assignation'),
(559, 'see_all', 'See All', 'Voir tout'),
(560, 'no_o_ticket', 'NO of Tickts', 'NÃ‚Â° du ticket'),
(561, 'seats', 'Seat(s)', 'SiÃƒÂ¨ges'),
(562, 'prices', 'Price(s)', 'Prix'),
(563, 'group_price', 'Group Price', 'Groupe de prix'),
(564, 'total', 'Total', 'Total'),
(565, 'passenger_details', 'Passenger Details', 'Details du passager'),
(566, 'journey_details', 'Journey Details', 'Details du voyage'),
(567, 'term_n_condition', 'Term & Condition', 'Termes & Conditions'),
(568, 'enter_login_info', 'Enter Your Login Info', 'Entrer les infos de connexion'),
(569, 'select_bank_name', 'Select Bank Name', 'Selectionner le nom de la banque'),
(570, 'enter_transaction_id', 'Enter Transaction Id', 'Entrer ID de la transaction'),
(571, 'booked_seat', 'Booked Seat', 'SiÃƒÂ¨ge reservÃƒÂ©'),
(572, 'selected_seat', 'Selected Seat', 'SiÃƒÂ¨ges selectionnÃƒÂ©s'),
(573, 'operator', 'Operator', 'Operateur'),
(574, 'fare', 'Fare', 'Flotte '),
(575, 'arrival', 'Arrival', 'ArrivÃƒÂ©e'),
(576, 'departure', 'Departure', 'DÃƒÂ©part'),
(577, 'duration', 'Duration', 'DurÃƒÂ©e'),
(578, 'no_of_ticket', 'No Of tickets', 'NÃ‚Â° du ticket'),
(579, 'special_fare', 'Special Price', 'Tarif special'),
(580, 'child_fare', 'Children Fare', 'Flotte pour enfant'),
(581, 'adult_fare', 'Adult Fare', 'Tarif Adulte'),
(582, 'ticket_information', 'Ticket Information', 'Information du ticket'),
(583, 'brand_name', 'Brand Name', 'Nom de la marque'),
(584, 'children_seat', 'Children Seat', 'SiÃƒÂ¨ges pour enfant'),
(585, 'special_seat', 'Special Seat', 'SiÃƒÂ¨ge spÃƒÂ©cial'),
(586, 'menu_item_list', 'Menu Item List', 'Liste d\'ÃƒÂ©lÃƒÂ©ment du menu'),
(587, 'parent_menu', 'Parent Menu', 'Menu parent'),
(588, 'page_url', 'Page Url', 'URL de la page'),
(589, 'menu_title', 'Menu title', 'Titre du menu'),
(590, 'ins_menu_for_application', 'Insert Menu for the application', 'Menu instruction pour application'),
(591, 'yearly_progressbar', 'Yearly Progress Bar', 'Bar annuelle de progesssion'),
(592, 'child_price', 'Child Price', 'Prix pour enfant'),
(593, 'adult_price', 'Adult Price', 'Prix adulte'),
(594, 'special_price', 'Special Price', 'Prix spÃƒÂ©cial'),
(595, 'how_to_use', 'HOW TO USE', 'Comment utiliser'),
(596, 'bank_commission', 'Bank Commission', 'Commission de la banque'),
(597, 'bank_charge', 'Bank Charge', 'Facturation de banque'),
(598, 'type', 'Type', 'Type'),
(599, 'amount_paid', 'Amount Paid', 'Montant payÃƒÂ©'),
(600, 'txn_id', 'TXN ID', 'ID tax'),
(601, 'item_number', 'Item Number', 'NumÃƒÂ©ro de l\'ÃƒÂ©lÃƒÂ©ment'),
(602, 'paument_success_message', 'Your Payment Successfully Paid', 'Message de paiement avec succÃƒÂ¨s'),
(603, 'unpaid', 'Unpaid', 'Non payÃƒÂ©'),
(604, 'paid', 'Paid', 'PayÃƒÂ©'),
(605, 'trip_name', 'Trip Name', 'Nom du voyage'),
(606, 'account_number', 'Account Number', 'NumÃƒÂ©ro de compte'),
(607, 'owner_phone', 'Owner Phone No', 'NumÃƒÂ©ro de l\'auteur'),
(608, 'passenger_email', 'Passenger Email', 'Email du passager'),
(609, 'child_no', 'Child', 'NÃ‚Â° de l\'enfant'),
(610, 'close_trip', 'Close Trip', 'Fermer le voyage'),
(611, 'agent_commission', 'Agent Commission', 'Commission agent'),
(612, 'credit', 'Credit', 'CrÃƒÂ©dit'),
(613, 'debit', 'Debit', 'DÃƒÂ©biter'),
(614, 'balance', 'Balance', 'Solde'),
(615, 'agent_log', 'Agent Log', 'Blog agent'),
(616, 'total_ticket', 'Total Ticket', 'Ticket total'),
(617, 'total_amount', 'Total Amount', 'Montant total'),
(618, 'total_commission', 'Total Commission', 'Commission total'),
(619, 'select_agent_name', 'Select Agent Name', 'Selectionner le nom de l\'agent'),
(620, 'commission_amount', 'Commission Amout', 'Montant commission'),
(621, 'total_price', 'Total Price', 'Prix total'),
(622, 'commission_rate', 'Commission Rate', 'Taux de commission'),
(623, 'ticket_sales', 'Ticket Sale', 'Ventes de tickets'),
(624, 'vehicle', 'Vehicle', 'Vehicule'),
(625, 'ticket_sales_report_for', 'Ticket Sales Report For', 'Rapport de vente de tickets pour'),
(626, 'agent_report', 'Agent Report', 'Rapport agent'),
(627, 'agent_ledger', 'Agent Ledger', 'Registre d\'agent'),
(628, 'booking_details', 'Journey Details', 'Details de reservation'),
(630, 'websites', 'Go to Frontend', 'Sites web'),
(631, 'backup_and_download', 'Backup && Download', 'Sauvegarde et tÃƒÂ©lÃƒÂ©chargement'),
(632, 'distance_kmmile', '1 Km/Mile', 'Distance kilometrique'),
(633, 'children', 'Children', 'Enfants'),
(634, 'login_info', 'Login Information', 'Login Information'),
(635, 'please_configure_your_mail', 'Please configure your mail.', 'Please configure your mail.'),
(636, 'error', 'Error', 'Erreur'),
(637, 'settings_not_found', 'No Setting Here', 'Aucun paramÃƒÂ¨tre ici'),
(638, 'location_not_found', 'Location Not Found', ' emplacement non trouvÃƒÂ©'),
(639, 'fleets_not_found', 'Fleets Not Found', 'flotte non trouvÃƒÂ©e'),
(640, 'image_not_found', 'Image Not Found', 'image non trouvÃƒÂ©e'),
(641, 'no_trip_available', 'No Trip Available', 'Aucun voyage disponible'),
(642, 'required_field', 'Fields Are Required ', 'Les champs sont obligatoires'),
(643, 'successfully_login', 'Successfully Loged In', 'connectÃƒÂ© avec succÃƒÂ¨s'),
(644, 'no_data_found', 'No Data Found', 'Aucune donnÃƒÂ©e disponible'),
(645, 'registrantion', 'Registration', 'enregistrement'),
(646, 'forgot_password', 'Forgot Password', 'mot de passe oubliÃƒÂ©'),
(647, 'register', 'Register', ' registre'),
(648, 'location_details', 'Location Details', 'DÃƒÂ©tails de l\'emplacement'),
(649, 'journey_date', 'Journey Date', ' Date de voyage'),
(650, 'select_start_point', 'Select Start Point', 'SÃƒÂ©lectionnez le point de dÃƒÂ©part'),
(651, 'select_end_point', 'Select End Point', ' SÃƒÂ©lectionnez le point final'),
(652, 'select_fleet_type', 'Select Fleet Type', ' SÃƒÂ©lectionnez le type de flotte'),
(653, 'total_seats', 'Total Seats', 'Nombre total de places'),
(654, 'pickup_and_drop', 'Pickup and Drop', 'Pickup and Drop'),
(655, 'select_pickup_location', 'Select Pickup Location', 'SÃƒÂ©lectionnez l\'emplacement de ramassage'),
(656, 'select_drop_location', 'Select Drop Location', 'SÃƒÂ©lectionnez un lieu de dÃƒÂ©pÃƒÂ´t'),
(657, 'tap_to_select_seat', 'Tap To Select Seat', ' Appuyez sur pour sÃƒÂ©lectionner un siÃƒÂ¨ge'),
(658, 'seat_layout', 'Seat Layout', 'Disposition du siÃƒÂ¨ge'),
(659, 'continue', 'Continue', 'continuer'),
(660, 'full_name', 'Full Name', 'Nom complet'),
(661, 'email_address', 'Email Address', ' Adresse ÃƒÂ©lectronique'),
(662, 'journery_details', 'Journey Details', 'DÃƒÂ©tails du voyage'),
(663, 'select_your_payment_method', 'Select Your Payment Method', 'SÃƒÂ©lectionnez le mode de paiement'),
(664, 'bank_transfer', 'Bank Transfer', 'Virement bancaire'),
(665, 'cash_payment', 'Cash Payment', 'Paiement en espÃƒÂ¨ces'),
(666, 'select_your_bank_first', 'Select Bank Name First', 'SÃƒÂ©lectionnez le nom de la banque en premier'),
(667, 'transaction_id', 'Transaction Id', 'Identifiant de transaction'),
(668, 'select_journey_date', 'Select Journey Date', 'SÃƒÂ©lectionnez la date du voyage'),
(669, 'seat_details', 'Seat Details ', 'DÃƒÂ©tails du siÃƒÂ¨ge'),
(670, 'seat_n', 'Seat Number', 'NumÃƒÂ©ro de siÃƒÂ¨ge'),
(671, 'last_name', 'Last Name', 'Nom de famille'),
(672, 'confirm_password', 'Confirm Password', 'Confirmez le mot de passe'),
(673, 'no_facilities_available', 'No facilities Available', 'Aucun ÃƒÂ©quipement disponible'),
(674, 'must_put_email_pass', 'Must Put Email and Password', ' Doit mettre l\'email et le mot de passe'),
(675, 'havn_nt_acc', 'Have n\'t Account', 'Je n\'ai pas de compte'),
(676, 'email_and_password_d_match', 'Email And Password doesn\'t Match', ' Email ou mot de passe ne correspond pas'),
(677, 'must_put_email', 'Must Put Your Email', 'Doit mettre un email'),
(678, 'select_pickup_and_drop_location', 'Select Pickup and Drop Location', ' SÃƒÂ©lectionnez le lieu de ramassage et de dÃƒÂ©pose'),
(679, 'select_your_seat_properly', 'Select Your', 'Choisissez votre siÃƒÂ¨ge correctement'),
(680, 'check_term_and_condition', 'Check Terms and Condition', 'VÃƒÂ©rifier les termes et conditions'),
(681, 'check_your_mail', 'Please Check Your Mail', 'VÃƒÂ©rifier votre courrier'),
(682, 'plz_check_your_seat', 'Please Check Your Seat', 'S\'il vous plaÃƒÂ®t vÃƒÂ©rifier votre siÃƒÂ¨ge'),
(683, 'no_rout_available', 'No rout Available', 'Pas de dÃƒÂ©route disponible'),
(684, 'your_booking_complete', 'Your Booking Successfully Completed', 'Votre rÃƒÂ©servation effectuÃƒÂ©e avec succÃƒÂ¨s'),
(685, 'bank_booking_message', 'Check Bank Name,Transaction ID', 'SÃƒÂ©lectionnez le nom de la banque, l\'identifiant de la transaction'),
(686, 'seat_properly', 'Seat Properly', 'Bien assis'),
(687, 'must_put_atlest_seat_num', 'You Must put Atleast 1 seat on adult/child/Special', 'Vous devez mettre au moins 1 siÃƒÂ¨ge sur adulte / enfant / spÃƒÂ©cial'),
(688, 'paypal_payment', 'Paypal Payment', 'Paiement PayPal'),
(689, 'bank_information', 'Bank Information', ' Information bancaire'),
(690, 'change_select_end_point', '& Change select end point', '& Modifier le point d\'arrivÃƒÂ©e sÃƒÂ©lectionnÃƒÂ©'),
(691, 'must_put_your_mail', 'You must put your email', 'Vous devez mettre votre email'),
(692, 'invalid_email_address', 'Invalid Email Address', 'Adresse e-mail invalide'),
(693, 'plz_check_your_mail_to_reset_passw', 'Please Check Your email to reset Password', 'Please Check Your email to reset Password'),
(694, 'edit_profile', 'EDIT PROFILE', 'EDITER LE PROFIL'),
(695, 'select_profile_image', 'Select Profile Image', 'Enregistrer l\'image de profil'),
(696, 'save_profile', 'Save Profile', 'Enregistrer le profil'),
(697, 'view_profile', 'View Profile', 'Voir le profil'),
(698, 'developed_by_bdtask', 'Developed By BDTASK', ' DÃƒÂ©veloppÃƒÂ© par BDTASK'),
(699, 'use_new_password_to_update_password', 'Use New Password to Update Password', 'Utiliser un nouveau mot de passe pour mettre ÃƒÂ  jour le mot de passe'),
(700, 'pass_username_cant_be_empty', 'Password, First Name, Last Name can\'t empty. Use New password to update password , otherwise type old password', 'Le mot de passe, le prÃƒÂ©nom et le nom de famille ne peuvent pas ÃƒÂªtre vides. Utilisez Nouveau mot de passe pour mettre ÃƒÂ  jour le mot de passe, sinon tapez ancien mot de passe'),
(701, 'no', 'NO', 'NON'),
(702, 'login_again', 'Data Save Successfully. Please Login Again', 'Sauvegarde des donnÃƒÂ©es avec succÃƒÂ¨s. Veuillez vous reconnecter');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` text NOT NULL,
  `datetime` datetime NOT NULL,
  `sender_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=unseen, 1=seen, 2=delete',
  `receiver_status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=unseen, 1=seen, 2=delete'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `sender_id`, `receiver_id`, `subject`, `message`, `datetime`, `sender_status`, `receiver_status`) VALUES
(1, 1, 2, 'test', '<p><img src=\"../../assets/tinymce/plugins/emoticons/img/smiley-embarassed.gif\" alt=\"embarassed\"><img src=\"../../assets/tinymce/plugins/emoticons/img/smiley-tongue-out.gif\" alt=\"tongue-out\"></p>', '2018-08-14 12:10:15', 1, 1),
(2, 1, 2, 'tt', '<p>sdfsdf</p>', '2018-08-14 12:11:23', 1, 1),
(3, 1, 2, 'ttt', '<p>sdfsadf</p>', '2018-08-14 12:11:33', 1, 1),
(4, 2, 1, 'ggg', '<p>sadfsdf</p>', '2018-08-16 07:41:25', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `module`
--

CREATE TABLE `module` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text,
  `image` varchar(255) NOT NULL,
  `directory` varchar(100) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `module`
--

INSERT INTO `module` (`id`, `name`, `description`, `image`, `directory`, `status`) VALUES
(1, 'Human Resource', 'Human Resource information module', 'application/modules/hr/assets/images/thumbnail.jpg', 'hr', 1);

-- --------------------------------------------------------

--
-- Table structure for table `module_permission`
--

CREATE TABLE `module_permission` (
  `id` int(11) NOT NULL,
  `fk_module_id` int(11) NOT NULL,
  `fk_user_id` int(11) NOT NULL,
  `create` tinyint(1) DEFAULT NULL,
  `read` tinyint(1) DEFAULT NULL,
  `update` tinyint(1) DEFAULT NULL,
  `delete` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ofr_offer`
--

CREATE TABLE `ofr_offer` (
  `offer_id` int(11) NOT NULL,
  `offer_name` varchar(100) DEFAULT NULL,
  `offer_start_date` date DEFAULT NULL,
  `offer_end_date` date DEFAULT NULL,
  `offer_code` varchar(50) DEFAULT NULL,
  `offer_discount` float DEFAULT NULL,
  `offer_terms` varchar(30) DEFAULT NULL,
  `offer_route_id` varchar(50) DEFAULT NULL,
  `offer_number` int(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ofr_offer`
--

INSERT INTO `ofr_offer` (`offer_id`, `offer_name`, `offer_start_date`, `offer_end_date`, `offer_code`, `offer_discount`, `offer_terms`, `offer_route_id`, `offer_number`) VALUES
(5, 'Test Offer', '2019-01-12', '2019-01-14', '1234xcv', 50, 'some text', '13', 1234);

-- --------------------------------------------------------

--
-- Table structure for table `payment_informations`
--

CREATE TABLE `payment_informations` (
  `id` int(11) NOT NULL,
  `how_to_pay` text NOT NULL,
  `terms_and_condition` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payment_informations`
--

INSERT INTO `payment_informations` (`id`, `how_to_pay`, `terms_and_condition`) VALUES
(1, 'The Applicant agrees that the debit/credit card details provided by him/ her for use of the\r\naforesaid Service(s) must be correct and accurate and that the Applicant shall not use a\r\nDebit/ credit card, that is not lawfully owned by him/ her or the use of which is not\r\nauthorized by the lawful owner thereof. The Applicant further agrees and undertakes to\r\nProvide correct and valid debit/credit card details.', 'The Applicant agrees that the debit/credit card details provided by him/ her for use of the\r\naforesaid Service(s) must be correct and accurate and that the Applicant shall not use a\r\nDebit/ credit card, that is not lawfully owned by him/ her or the use of which is not\r\nauthorized by the lawful owner thereof. The Applicant further agrees and undertakes to\r\nProvide correct and valid debit/credit card details.');

-- --------------------------------------------------------

--
-- Table structure for table `pri_price`
--

CREATE TABLE `pri_price` (
  `price_id` int(11) NOT NULL,
  `route_id` varchar(50) DEFAULT NULL,
  `vehicle_type_id` varchar(50) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `children_price` float NOT NULL,
  `special_price` float NOT NULL,
  `group_price_per_person` float DEFAULT '0',
  `group_size` int(15) DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pri_price`
--

INSERT INTO `pri_price` (`price_id`, `route_id`, `vehicle_type_id`, `price`, `children_price`, `special_price`, `group_price_per_person`, `group_size`) VALUES
(5, '10', '1', 1100, 850, 1000, 900, 4),
(8, '2', '3', 200, 180, 250, 1000, 5),
(9, '13', '1', 1000, 950, 970, 920, 4),
(10, '10', '3', 1100, 850, 1000, 900, 0),
(11, '12', '1', 25, 23, 30, 22, 0),
(12, '11', '1', 34, 24, 54, 31, 0),
(13, '13', '3', 600, 500, 550, 520, 4),
(14, '13', '4', 500, 400, 450, 420, 3),
(15, '13', '1', 1000, 900, 950, 920, 3);

-- --------------------------------------------------------

--
-- Table structure for table `sec_menu_item`
--

CREATE TABLE `sec_menu_item` (
  `menu_id` int(11) NOT NULL,
  `menu_title` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `page_url` varchar(250) COLLATE utf8_unicode_ci DEFAULT NULL,
  `module` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `parent_menu` int(11) DEFAULT NULL,
  `is_report` tinyint(1) DEFAULT NULL,
  `createby` int(11) NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sec_menu_item`
--

INSERT INTO `sec_menu_item` (`menu_id`, `menu_title`, `page_url`, `module`, `parent_menu`, `is_report`, `createby`, `createdate`) VALUES
(69, 'account_list', 'account_form', 'account', NULL, 0, 2, '2018-07-16 00:00:00'),
(70, 'Enquiry', 'enquiry/view', 'enquiry', 0, 0, 2, '2018-07-16 00:00:00'),
(71, 'setting', 'enquiry/setting', 'enquiry', NULL, 0, 2, '2018-07-16 00:00:00'),
(72, 'agent_list', 'agent/agent_form', 'agent', NULL, 0, 2, '2018-07-16 00:00:00'),
(73, 'fitness_list', 'fitness/fit_form', 'fitness', NULL, 0, 2, '2018-07-16 00:00:00'),
(74, 'fitness_period', 'fitness/fit_period_form', 'fitness', NULL, 0, 2, '2018-07-16 00:00:00'),
(75, 'fleet_type', '', 'fleet', NULL, 0, 2, '2018-07-16 00:00:00'),
(76, 'add_fleet_type', 'fleet/type/form', 'fleet', 75, 0, 2, '2018-07-16 00:00:00'),
(77, 'fleet_type_list', 'fleet/type/list', 'fleet', 75, 0, 2, '2018-07-16 00:00:00'),
(78, 'fleet_facilities', '', 'fleet', NULL, 0, 2, '2018-07-16 00:00:00'),
(79, 'add_facilities', 'fleet/facilities/form', 'fleet', 78, 0, 2, '2018-07-16 00:00:00'),
(80, 'facilities_list', 'fleet/facilities/list', 'fleet', 78, 0, 2, '2018-07-16 00:00:00'),
(81, 'account_transaction', 'transaction_form', 'account', 0, 0, 2, '2018-07-16 00:00:00'),
(82, 'bank', '', 'account', 0, 0, 2, '2018-07-16 00:00:00'),
(83, 'bank_list', 'account/bank/list', 'account', 82, 0, 2, '2018-07-16 00:00:00'),
(84, 'add_bank', 'account/bank/form', 'account', 82, 0, 2, '2018-07-16 00:00:00'),
(85, 'offer_list', 'offer/offer_form', 'offer', 0, 0, 2, '2018-07-17 00:00:00'),
(86, 'price_list', 'price/price_form', 'price', 0, 0, 2, '2018-07-17 00:00:00'),
(87, 'booking', 'reports/booking/list', 'reports', 130, 0, 2, '2018-07-17 00:00:00'),
(88, 'assign', 'reports/assign/list', 'reports', 130, 0, 2, '2018-07-17 00:00:00'),
(89, 'passenger', '', 'ticket', 0, 0, 2, '2018-07-17 00:00:00'),
(90, 'add_passenger', 'ticket/passenger/form', 'ticket', 89, 0, 2, '2018-07-17 00:00:00'),
(91, 'passenger_list', 'ticket/passenger/list', 'ticket', 89, 0, 2, '2018-07-17 00:00:00'),
(92, 'booking_info', '', 'ticket', 0, 0, 2, '2018-07-17 00:00:00'),
(93, 'add_booking', 'ticket/booking/form', 'ticket', 92, 0, 2, '2018-07-17 00:00:00'),
(94, 'booking_list', 'ticket/booking/list', 'ticket', 92, 0, 2, '2018-07-17 00:00:00'),
(95, 'location', '', 'trip', 0, 0, 2, '2018-07-17 00:00:00'),
(96, 'add_location', 'trip/location/form', 'trip', 95, 0, 2, '2018-07-17 00:00:00'),
(97, 'location_list', 'trip/location/list', 'trip', 95, 0, 2, '2018-07-17 00:00:00'),
(98, 'route', '', 'trip', 0, 0, 2, '2018-07-17 00:00:00'),
(99, 'add_route', 'trip/route/form', 'trip', 98, 0, 2, '2018-07-17 00:00:00'),
(100, 'route_list', 'trip/route/list', 'trip', 98, 0, 2, '2018-07-17 00:00:00'),
(101, 'websites', '', 'website', NULL, 0, 2, '2018-07-18 00:00:00'),
(102, 'web_setting', '', 'website', 0, 0, 2, '2018-07-18 00:00:00'),
(103, 'email_configue', '', 'website', 0, 0, 2, '2018-07-18 00:00:00'),
(104, 'ticket_offer', '', 'website', 0, 0, 2, '2018-07-18 00:00:00'),
(105, 'payment_term_andcondition', '', 'ticket', 0, 0, 2, '2018-07-30 00:00:00'),
(108, 'unpaid_cash_booking_list', 'booking/unpaid_cashbooking', 'ticket', 0, 0, 2, '2018-07-30 00:00:00'),
(109, 'employee_type', 'type_view', 'hr', 0, 0, 2, '2018-07-30 00:00:00'),
(110, 'employee_list', 'viewhr', 'hr', 0, 0, 2, '2018-07-30 00:00:00'),
(111, 'fleet_registration', 'registration/form', 'fleet', 0, 0, 2, '2018-08-14 00:00:00'),
(112, 'add_registration', 'registration/form', 'fleet', 111, 0, 2, '2018-08-14 00:00:00'),
(113, 'registration_list', 'registration/list', 'fleet', 111, 0, 2, '2018-08-14 00:00:00'),
(114, 'ticket_confirmation', '', 'ticket', 0, 0, 2, '2018-08-14 00:00:00'),
(115, 'refund', '', 'ticket', 0, 0, 2, '2018-08-14 00:00:00'),
(116, 'add_refund', 'refund/form', 'ticket', 115, 0, 2, '2018-08-14 00:00:00'),
(117, 'refund_list', 'refund/list', 'ticket', 115, 0, 2, '2018-08-14 00:00:00'),
(118, 'shedules', '', 'trip', 0, 0, 2, '2018-08-14 00:00:00'),
(119, 'add_shedule', 'shedule/shedule_form', 'trip', 118, 0, 2, '2018-08-14 00:00:00'),
(120, 'shedule_list', 'shedule/list', 'trip', 118, 0, 2, '2018-08-14 00:00:00'),
(121, 'trips', '', 'trip', 0, 0, 2, '2018-08-14 00:00:00'),
(122, 'add_trip', 'trip/form', 'trip', 121, 0, 2, '2018-08-14 00:00:00'),
(123, 'trip_list', 'trip/list', 'trip', 121, 0, 2, '2018-08-14 00:00:00'),
(124, 'assigns', '', 'trip', 0, 0, 2, '2018-08-14 00:00:00'),
(125, 'add_assign', 'assign/form', 'trip', 124, 0, 2, '2018-08-14 00:00:00'),
(126, 'assign_list', 'assign/list', 'trip', 124, 0, 2, '2018-08-14 00:00:00'),
(127, 'close', '', 'trip', 0, 0, 2, '2018-08-14 00:00:00'),
(128, 'close_list', 'close/list', 'trip', 127, 0, 2, '2018-08-14 00:00:00'),
(129, 'account', '', 'account', 0, 0, 2, '2018-08-14 00:00:00'),
(130, 'reports', '', 'reports', 0, 0, 2, '2018-09-11 00:00:00'),
(131, 'agent_log', 'agent/agent_details', 'reports', 130, 0, 2, '2018-09-11 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `sec_role_permission`
--

CREATE TABLE `sec_role_permission` (
  `id` bigint(20) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `can_access` tinyint(1) NOT NULL,
  `can_create` tinyint(1) NOT NULL,
  `can_edit` tinyint(1) NOT NULL,
  `can_delete` tinyint(1) NOT NULL,
  `createby` int(11) NOT NULL,
  `createdate` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sec_role_permission`
--

INSERT INTO `sec_role_permission` (`id`, `role_id`, `menu_id`, `can_access`, `can_create`, `can_edit`, `can_delete`, `createby`, `createdate`) VALUES
(624, 1, 69, 1, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(625, 1, 81, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(626, 1, 82, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(627, 1, 83, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(628, 1, 84, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(629, 1, 129, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(630, 1, 72, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(631, 1, 70, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(632, 1, 71, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(633, 1, 73, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(634, 1, 74, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(635, 1, 75, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(636, 1, 76, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(637, 1, 77, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(638, 1, 78, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(639, 1, 79, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(640, 1, 80, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(641, 1, 111, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(642, 1, 112, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(643, 1, 113, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(644, 1, 109, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(645, 1, 110, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(646, 1, 85, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(647, 1, 86, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(648, 1, 87, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(649, 1, 88, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(650, 1, 89, 1, 1, 1, 1, 2, '2018-09-06 11:03:51'),
(651, 1, 90, 1, 1, 1, 1, 2, '2018-09-06 11:03:51'),
(652, 1, 91, 1, 1, 1, 1, 2, '2018-09-06 11:03:51'),
(653, 1, 92, 1, 1, 1, 1, 2, '2018-09-06 11:03:51'),
(654, 1, 93, 1, 1, 0, 0, 2, '2018-09-06 11:03:51'),
(655, 1, 94, 1, 1, 1, 0, 2, '2018-09-06 11:03:51'),
(656, 1, 105, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(657, 1, 106, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(658, 1, 107, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(659, 1, 108, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(660, 1, 114, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(661, 1, 115, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(662, 1, 116, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(663, 1, 117, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(664, 1, 95, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(665, 1, 96, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(666, 1, 97, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(667, 1, 98, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(668, 1, 99, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(669, 1, 100, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(670, 1, 118, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(671, 1, 119, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(672, 1, 120, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(673, 1, 121, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(674, 1, 122, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(675, 1, 123, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(676, 1, 124, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(677, 1, 125, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(678, 1, 126, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(679, 1, 127, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(680, 1, 128, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(681, 1, 101, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(682, 1, 102, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(683, 1, 103, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(684, 1, 104, 0, 0, 0, 0, 2, '2018-09-06 11:03:51'),
(1104, 2, 69, 1, 0, 0, 0, 2, '2018-11-15 01:11:30'),
(1105, 2, 81, 1, 1, 1, 0, 2, '2018-11-15 01:11:30'),
(1106, 2, 82, 1, 1, 1, 0, 2, '2018-11-15 01:11:30'),
(1107, 2, 83, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1108, 2, 84, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1109, 2, 129, 1, 0, 0, 0, 2, '2018-11-15 01:11:30'),
(1110, 2, 72, 1, 0, 0, 0, 2, '2018-11-15 01:11:30'),
(1111, 2, 70, 1, 1, 1, 0, 2, '2018-11-15 01:11:30'),
(1112, 2, 71, 0, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1113, 2, 73, 1, 0, 0, 0, 2, '2018-11-15 01:11:30'),
(1114, 2, 74, 1, 0, 0, 0, 2, '2018-11-15 01:11:30'),
(1115, 2, 75, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1116, 2, 76, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1117, 2, 77, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1118, 2, 78, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1119, 2, 79, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1120, 2, 80, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1121, 2, 111, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1122, 2, 112, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1123, 2, 113, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1124, 2, 109, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1125, 2, 110, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1126, 2, 85, 1, 0, 0, 0, 2, '2018-11-15 01:11:30'),
(1127, 2, 86, 1, 1, 1, 0, 2, '2018-11-15 01:11:30'),
(1128, 2, 87, 1, 0, 0, 0, 2, '2018-11-15 01:11:30'),
(1129, 2, 88, 1, 0, 0, 0, 2, '2018-11-15 01:11:30'),
(1130, 2, 130, 1, 1, 1, 1, 2, '2018-11-15 01:11:30'),
(1131, 2, 131, 1, 0, 1, 0, 2, '2018-11-15 01:11:30'),
(1132, 2, 89, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1133, 2, 90, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1134, 2, 91, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1135, 2, 92, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1136, 2, 93, 1, 1, 1, 1, 2, '2018-11-15 01:11:30'),
(1137, 2, 94, 1, 1, 1, 1, 2, '2018-11-15 01:11:30'),
(1138, 2, 105, 1, 1, 1, 0, 2, '2018-11-15 01:11:30'),
(1139, 2, 108, 1, 1, 1, 0, 2, '2018-11-15 01:11:30'),
(1140, 2, 114, 1, 1, 1, 0, 2, '2018-11-15 01:11:30'),
(1141, 2, 115, 1, 1, 1, 0, 2, '2018-11-15 01:11:30'),
(1142, 2, 116, 1, 1, 1, 0, 2, '2018-11-15 01:11:30'),
(1143, 2, 117, 1, 1, 1, 0, 2, '2018-11-15 01:11:30'),
(1144, 2, 95, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1145, 2, 96, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1146, 2, 97, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1147, 2, 98, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1148, 2, 99, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1149, 2, 100, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1150, 2, 118, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1151, 2, 119, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1152, 2, 120, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1153, 2, 121, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1154, 2, 122, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1155, 2, 123, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1156, 2, 124, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1157, 2, 125, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1158, 2, 126, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1159, 2, 127, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1160, 2, 128, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1161, 2, 101, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1162, 2, 102, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1163, 2, 103, 1, 1, 0, 0, 2, '2018-11-15 01:11:30'),
(1164, 2, 104, 1, 1, 0, 0, 2, '2018-11-15 01:11:30');

-- --------------------------------------------------------

--
-- Table structure for table `sec_role_tbl`
--

CREATE TABLE `sec_role_tbl` (
  `role_id` int(11) NOT NULL,
  `role_name` text NOT NULL,
  `role_description` text NOT NULL,
  `create_by` int(11) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `role_status` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sec_role_tbl`
--

INSERT INTO `sec_role_tbl` (`role_id`, `role_name`, `role_description`, `create_by`, `date_time`, `role_status`) VALUES
(1, 'Test Role', 'This is test role', 2, '2018-07-16 02:49:29', 1),
(2, 'Agent Role', 'sjdf', 2, '2018-08-18 11:48:57', 1);

-- --------------------------------------------------------

--
-- Table structure for table `sec_user_access_tbl`
--

CREATE TABLE `sec_user_access_tbl` (
  `role_acc_id` int(11) NOT NULL,
  `fk_role_id` int(11) NOT NULL,
  `fk_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sec_user_access_tbl`
--

INSERT INTO `sec_user_access_tbl` (`role_acc_id`, `fk_role_id`, `fk_user_id`) VALUES
(1, 1, 3),
(2, 1, 1),
(3, 2, 4),
(4, 2, 5),
(5, 2, 8),
(6, 2, 9);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `address` text,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `language` varchar(100) DEFAULT NULL,
  `site_align` varchar(50) DEFAULT NULL,
  `footer_text` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id`, `title`, `address`, `email`, `phone`, `logo`, `favicon`, `language`, `site_align`, `footer_text`) VALUES
(1, 'Bus Ticket Management System', 'Kigali, Rwanda', 'aimejayd2012@gmail.com', '+250784187303', 'assets/img/icons/06c391f1942fa14992e87fe0d47b35d1.png', 'assets/img/icons/46fcfce8c3755e6fae33dc047d62dba4.gif', 'english', 'LTR', 'Â©2020 Jayd');

-- --------------------------------------------------------

--
-- Table structure for table `shedule`
--

CREATE TABLE `shedule` (
  `shedule_id` int(11) NOT NULL,
  `start` varchar(20) NOT NULL,
  `end` varchar(20) NOT NULL,
  `duration` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shedule`
--

INSERT INTO `shedule` (`shedule_id`, `start`, `end`, `duration`) VALUES
(1, '04:30:30', '07:40:15', 3),
(2, '08:30:00', '13:30:00', 5),
(3, '06:00:00', '10:00:00', 4);

-- --------------------------------------------------------

--
-- Table structure for table `synchronizer_setting`
--

CREATE TABLE `synchronizer_setting` (
  `id` int(11) NOT NULL,
  `hostname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `port` varchar(10) NOT NULL,
  `debug` varchar(10) NOT NULL,
  `project_root` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `ticket_notification`
--

CREATE TABLE `ticket_notification` (
  `id` int(11) NOT NULL,
  `b_idno` varchar(30) NOT NULL,
  `passenger_id` varchar(30) NOT NULL,
  `no_tkts` int(11) NOT NULL,
  `amount` float NOT NULL,
  `route_id` varchar(30) NOT NULL,
  `trip_id` varchar(20) NOT NULL,
  `booking_time` datetime NOT NULL,
  `is_seen` int(11) NOT NULL DEFAULT '0',
  `admin_seen` int(11) NOT NULL DEFAULT '0',
  `booked_by` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket_notification`
--

INSERT INTO `ticket_notification` (`id`, `b_idno`, `passenger_id`, `no_tkts`, `amount`, `route_id`, `trip_id`, `booking_time`, `is_seen`, `admin_seen`, `booked_by`) VALUES
(1, 'BZQS3D7G', 'POQ1WHGV', 1, 34, '11', '3', '2018-10-23 19:54:16', 0, 2, 0),
(2, 'BQ825HMI', 'POQ1WHGV', 1, 34, '11', '3', '2018-10-23 20:12:53', 0, 2, 0),
(3, 'BGJHK6AE', 'POQ1WHGV', 1, 34, '11', '3', '2018-10-23 20:28:06', 0, 2, 0),
(4, 'B3USGV9R', 'PXXZSRHJ', 1, 34, '11', '3', '2018-10-23 20:30:47', 2, 2, 0),
(5, 'BN2PYL5N', 'PA577BN2', 1, 34, '11', '3', '2018-11-03 04:07:53', 0, 0, 2),
(6, 'BOM0J2VJ', 'PXXZSRHJ', 2, 68, '11', '3', '2018-11-05 13:54:24', 0, 0, 0),
(7, 'BBZO9UOE', 'PA577BN2', 1, 1000, '13', '6', '2018-11-15 08:44:24', 0, 0, 2),
(8, 'BXBEW2E8', 'PXXZSRHJ', 1, 1000, '13', '6', '2018-11-15 08:48:55', 0, 0, 2),
(9, 'BBD7UPX8', 'POQ1WHGV', 1, 1000, '13', '6', '2018-11-15 08:52:18', 0, 0, 2),
(10, 'B17BHED9', 'PA577BN2', 1, 600, '13', '5', '2018-11-15 09:11:04', 0, 0, 2),
(11, 'BCR9ALHQ', 'PHLKKK0V', 1, 600, '13', '5', '2018-11-15 09:13:50', 0, 0, 2),
(12, 'BVLL7UP7', 'PHLKKK0V', 1, 600, '13', '5', '2018-11-15 09:16:12', 0, 0, 2),
(13, 'BJR7WV8G', 'PA577BN2', 1, 34, '11', '3', '2018-11-15 09:49:04', 0, 0, 8),
(14, 'B06FMHNC', 'PHLKKK0V', 1, 500, '13', '4', '2018-11-15 11:02:31', 0, 0, 9),
(15, 'BDE0QJD5', 'PHLKKK0V', 1, 500, '13', '4', '2018-11-15 11:07:55', 0, 0, 9),
(16, 'BMYZF8UQ', 'PHLKKK0V', 1, 500, '13', '4', '2018-11-15 11:39:48', 0, 0, 9),
(17, 'B4BZO1TI', 'PAD1L2BE', 1, 500, '13', '4', '2018-11-15 11:51:21', 0, 0, 9),
(18, 'BL8LPGO8', 'PAD1L2BE', 1, 500, '13', '4', '2018-11-15 11:57:44', 0, 0, 9),
(19, 'BKZYHQJM', 'PAD1L2BE', 1, 400, '13', '4', '2018-11-15 12:00:21', 0, 0, 9),
(20, 'BX6JVBBE', 'PAD1L2BE', 1, 500, '13', '4', '2018-11-15 12:20:09', 0, 0, 2),
(21, 'BUXWZ2CU', 'PQHRZG23', 1, 1000, '13', '6', '2018-12-15 06:06:56', 0, 0, 0),
(22, 'B20ZZFFF', 'P6ATG8TL', 1, 900, '13', '6', '2018-12-15 11:41:21', 0, 0, 0),
(23, 'BG4HZILZ', 'PR7XXIZ2', 3, 2760, '13', '6', '2018-12-24 12:41:53', 0, 0, 2),
(24, 'B8TDO21A', 'PBH968MS', 2, 2000, '13', '6', '2019-01-03 16:45:58', 0, 0, 0),
(25, 'B8DQ5AR2', 'PBH968MS', 2, 2000, '13', '6', '2019-01-03 17:07:27', 0, 0, 0),
(26, 'B9SQ18O4', 'PAGAX919', 1, 1000, '13', '7', '2019-01-03 11:58:46', 0, 0, 0),
(27, 'BM2070NE', 'PIIFH7BG', 1, 1000, '13', '7', '2019-01-03 12:07:17', 0, 0, 0),
(28, 'B91P0NVT', 'P2T0GZT3', 1, 1000, '13', '7', '2019-01-03 12:14:18', 0, 0, 0),
(29, 'BBSPG7KZ', 'PZCYICM2', 1, 900, '13', '6', '2019-01-07 06:08:22', 0, 0, 0),
(30, 'BYPD2CV6', 'PA7KHZRV', 1, 900, '13', '6', '2019-01-15 11:08:00', 0, 0, 0),
(31, 'BN5LCX6H', 'PCYOU950', 2, 1900, '13', '6', '2019-01-15 11:26:27', 0, 0, 0),
(32, 'B8PXIPN9', 'P52ZC05X', 1, 400, '13', '4', '2019-01-16 10:17:34', 0, 0, 0),
(33, 'BE66TIR6', 'P52ZC05X', 1, 900, '13', '6', '2019-01-16 10:48:43', 0, 0, 0),
(34, 'BLVA5CD5', 'P52ZC05X', 1, 400, '13', '4', '2019-01-16 10:57:37', 0, 0, 0),
(35, 'BA3JE0Y9', 'P52ZC05X', 4, 3680, '13', '6', '2019-01-17 06:45:50', 0, 0, 0),
(36, 'B0PTW35B', 'P1YE5NAI', 4, 3600, '10', '1', '2020-05-15 09:03:37', 0, 0, 0),
(37, 'BY3UECDP', 'P1YE5NAI', 4, 3600, '10', '1', '2020-05-15 11:16:54', 0, 0, 0),
(38, 'B1FASXYP', 'P1YE5NAI', 2, 2200, '10', '1', '2020-05-15 14:07:31', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tkt_booking`
--

CREATE TABLE `tkt_booking` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_no` varchar(20) DEFAULT NULL,
  `trip_id_no` varchar(20) DEFAULT NULL,
  `tkt_passenger_id_no` varchar(20) DEFAULT NULL,
  `trip_route_id` int(11) DEFAULT NULL,
  `pickup_trip_location` varchar(50) DEFAULT NULL,
  `drop_trip_location` varchar(50) DEFAULT NULL,
  `request_facilities` text,
  `price` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `adult` int(11) NOT NULL DEFAULT '0',
  `child` int(11) NOT NULL DEFAULT '0',
  `special` int(11) NOT NULL DEFAULT '0',
  `total_seat` int(11) DEFAULT NULL,
  `seat_numbers` varchar(255) DEFAULT NULL,
  `offer_code` varchar(255) DEFAULT NULL,
  `tkt_refund_id` int(11) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `booking_date` datetime DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `booking_type` varchar(20) DEFAULT NULL,
  `payment_status` varchar(20) DEFAULT NULL,
  `booked_by` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tkt_booking`
--

INSERT INTO `tkt_booking` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `booking_type`, `payment_status`, `booked_by`) VALUES
(2, 'BZQS3D7G', '3', 'POQ1WHGV', 11, 'Douala', 'Kribi', 'Breakfast, Free wifi, ', 34, 0, 1, 0, 0, 1, 'A1, ', NULL, NULL, NULL, '2018-10-24 01:53:58', '2018-10-24 01:53:58', 'Cash', '', 0),
(4, 'BQ825HMI', '3', 'POQ1WHGV', 11, 'Douala', 'Kribi', 'Breakfast, Free wifi, ', 34, 0, 1, 0, 0, 1, 'B3, ', NULL, NULL, NULL, '2018-10-23 02:12:21', '2018-10-24 02:12:21', 'Cash', '', 0),
(8, 'B3USGV9R', '3', 'PXXZSRHJ', 11, 'Douala', 'Douala', 'Breakfast, Free wifi, ', 34, 0, 1, 0, 0, 1, 'B1, ', NULL, NULL, NULL, '2018-10-23 02:29:42', '2018-10-24 02:29:42', 'Cash', '', 0),
(9, 'BN2PYL5N', '3', 'PA577BN2', 11, 'Edea', 'Douala', 'Breakfast, ', 34, 0, 1, 0, 0, 1, 'A1,', '', NULL, NULL, '2018-11-03 00:00:00', '2018-11-03 04:07:53', 'Cash(Administrator U', NULL, 2),
(10, 'BBZO9UOE', '6', 'PA577BN2', 13, 'Kribi', 'Edea', 'Breakfast, ', 1000, 0, 1, 0, 0, 1, 'A1,', '', NULL, NULL, '2018-11-15 00:00:00', '2018-11-15 08:44:24', 'Cash(Administrator U', NULL, 2),
(11, 'BXBEW2E8', '6', 'PXXZSRHJ', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast, ', 1000, 0, 1, 0, 0, 1, 'A2,', '', NULL, NULL, '2018-11-15 00:00:00', '2018-11-15 08:48:55', 'Cash(Administrator U', NULL, 2),
(12, 'BBD7UPX8', '6', 'POQ1WHGV', 13, 'LimbÃƒÂ©', 'Edea', 'Breakfast, ', 1000, 0, 1, 0, 0, 1, 'A3,', '', NULL, NULL, '2018-11-15 00:00:00', '2018-11-15 08:52:18', 'Cash(Administrator U', NULL, 2),
(13, 'B17BHED9', '5', 'PA577BN2', 13, 'Kribi', 'Bafoussam', NULL, 600, 0, 1, 0, 0, 1, 'A1,', '', NULL, NULL, '2018-11-15 00:00:00', '2018-11-15 09:11:04', 'Cash(Administrator U', NULL, 2),
(14, 'BCR9ALHQ', '5', 'PHLKKK0V', 13, 'Edea', 'Douala', NULL, 600, 0, 1, 0, 0, 1, 'A2,', '', NULL, NULL, '2018-11-15 00:00:00', '2018-11-15 09:13:50', 'Cash(Administrator U', NULL, 2),
(15, 'BVLL7UP7', '5', 'PHLKKK0V', 13, 'Kribi', 'Bafoussam', NULL, 600, 0, 1, 0, 0, 1, 'A3,', '', NULL, NULL, '2018-11-15 00:00:00', '2018-11-15 09:16:12', 'Cash(Administrator U', NULL, 2),
(16, 'BJR7WV8G', '3', 'PA577BN2', 11, 'Edea', 'Kribi', NULL, 34, 0, 1, 0, 0, 1, 'A1,', '', NULL, NULL, '2018-11-15 00:00:00', '2018-11-15 09:49:04', 'Cash(Rabbani khan)', NULL, 8),
(17, 'B06FMHNC', '4', 'PHLKKK0V', 13, 'Kribi', 'Douala', 'Breakfast, ', 500, 0, 1, 0, 0, 1, 'A1,', '', NULL, NULL, '2018-11-15 00:00:00', '2018-11-15 11:02:31', 'Cash(Arafat Hossain)', NULL, 9),
(18, 'BDE0QJD5', '4', 'PHLKKK0V', 13, 'Kribi', 'Bafoussam', 'Free wifi, ', 500, 0, 1, 0, 0, 1, 'A2,', '', NULL, NULL, '2018-11-15 00:00:00', '2018-11-15 11:07:55', 'Cash(Arafat Hossain)', NULL, 9),
(19, 'BMYZF8UQ', '4', 'PHLKKK0V', 13, 'Edea', 'Bafoussam', 'Breakfast, ', 500, 0, 1, 0, 0, 1, 'A3,', '', NULL, NULL, '2018-11-15 00:00:00', '2018-11-15 11:39:48', 'Cash(Arafat Hossain)', NULL, 9),
(20, 'B4BZO1TI', '4', 'PAD1L2BE', 13, 'Kribi', 'Douala', 'Breakfast, ', 500, 0, 1, 0, 0, 1, 'A4,', '', NULL, NULL, '2018-11-15 00:00:00', '2018-11-15 11:51:21', 'Cash(Arafat Hossain)', NULL, 9),
(21, 'BL8LPGO8', '4', 'PAD1L2BE', 13, 'Bafoussam', 'Douala', 'Breakfast, ', 500, 0, 1, 0, 0, 1, 'A5,', '', NULL, NULL, '2018-11-15 00:00:00', '2018-11-15 11:57:44', 'Cash(Arafat Hossain)', NULL, 9),
(22, 'BKZYHQJM', '4', 'PAD1L2BE', 13, 'Kribi', 'Bafoussam', 'Breakfast, Free wifi, ', 400, 0, 0, 1, 0, 1, 'B1,', '', NULL, NULL, '2018-11-15 00:00:00', '2018-11-15 12:00:21', 'Cash(Arafat Hossain)', NULL, 9),
(57, 'B8TDO21A', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 2000, NULL, 2, 0, 0, 2, 'A1,A2,', NULL, NULL, NULL, '2019-01-03 00:00:00', '2019-01-03 10:45:21', 'Cash', '', 0),
(63, 'B8DQ5AR2', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 2000, NULL, 2, 0, 0, 2, 'E3,E4,', NULL, NULL, NULL, '2019-01-03 00:00:00', '2019-01-03 10:33:31', 'Bank', '', 0),
(94, 'BGWFWEPB', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 2760, NULL, 1, 1, 1, 3, 'A1,A2,B1,', NULL, NULL, NULL, '2019-01-16 00:00:00', '2019-01-05 08:51:52', 'Bank', '', 0),
(156, 'BYPD2CV6', '6', 'PA7KHZRV', 13, 'LimbÃƒÂ©', 'Edea', NULL, 900, 0, 0, 1, 0, 1, 'A1, ', '', NULL, NULL, '2019-01-15 17:06:29', '2019-01-15 17:06:29', NULL, NULL, 0),
(157, 'BN5LCX6H', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Edea', '', 1900, NULL, 1, 1, 0, 2, 'A3,A4,', '', NULL, NULL, '2019-01-15 00:00:00', '2019-01-15 11:24:30', NULL, NULL, 0),
(160, 'B8PXIPN9', '4', 'P52ZC05X', 13, 'LimbÃƒÂ©', 'Kribi', 'Free wifi,Breakfast,', 400, NULL, 0, 1, 0, 1, 'A1,', '', NULL, NULL, '2019-01-16 00:00:00', '2019-01-16 10:11:24', NULL, NULL, 0),
(161, 'BE66TIR6', '6', 'P52ZC05X', 13, 'LimbÃƒÂ©', 'Edea', 'Free wifi,Breakfast,', 900, NULL, 0, 1, 0, 1, 'B2,', '', NULL, NULL, '2019-01-16 00:00:00', '2019-01-16 10:47:15', NULL, NULL, 0),
(162, 'BLVA5CD5', '4', 'P52ZC05X', 13, 'LimbÃƒÂ©', 'Kribi', 'Free wifi,Breakfast,', 400, NULL, 0, 1, 0, 1, 'A2,', '', NULL, NULL, '2019-01-16 00:00:00', '2019-01-16 10:55:50', NULL, NULL, 0),
(166, 'BA3JE0Y9', '6', 'P52ZC05X', 13, 'LimbÃƒÂ©', 'Kribi', 'Snacks,Free wifi,', 3680, NULL, 4, 0, 0, 4, 'C2,D2,D1,E1,', '', NULL, NULL, '2019-01-17 00:00:00', '2019-01-17 06:44:42', NULL, NULL, 0),
(171, 'B1FASXYP', '1', 'P1YE5NAI', 10, 'Ruhengeri', 'Ruhengeri', 'Free wifi, ', 2200, 0, 2, 0, 0, 2, 'A1, A2, ', NULL, NULL, NULL, '2020-05-15 21:03:45', '2020-05-15 21:03:45', 'Cash', '2', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tkt_feedback`
--

CREATE TABLE `tkt_feedback` (
  `id` int(11) NOT NULL,
  `tkt_booking_id_no` varchar(20) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `comment` text,
  `rating` tinyint(1) DEFAULT '1',
  `add_to_website` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tkt_feedback`
--

INSERT INTO `tkt_feedback` (`id`, `tkt_booking_id_no`, `name`, `comment`, `rating`, `add_to_website`) VALUES
(1, 'B3USGV9R', 'Mr been', 'Very nice', 5, 1),
(2, 'B3USGV9R', 'Labo Ludovic', 'very very nice', 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tkt_passenger`
--

CREATE TABLE `tkt_passenger` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_no` varchar(20) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `middle_name` varchar(50) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `nid` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(32) DEFAULT NULL,
  `password_reset_token` varchar(20) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `address_line_1` varchar(255) DEFAULT NULL,
  `address_line_2` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `zip_code` varchar(10) DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tkt_passenger`
--

INSERT INTO `tkt_passenger` (`id`, `id_no`, `firstname`, `lastname`, `middle_name`, `phone`, `nid`, `email`, `password`, `password_reset_token`, `remember_token`, `image`, `address_line_1`, `address_line_2`, `city`, `zip_code`, `country`, `status`) VALUES
(1, 'POQ1WHGV', 'Briand', 'Howdie', 'James', '237', '12908434', 'testbriand@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', NULL, '', 'Douala', 'Ange raphael', 'Douala', '00237', 'CM', 1),
(2, 'PXXZSRHJ', 'Labo', 'Ludovic', NULL, '2323', '132324242424', 'jamesbrijohn@yahoo.fr', 'e10adc3949ba59abbe56e057f20f883e', '', NULL, NULL, '2313 Douala', NULL, NULL, NULL, NULL, 1),
(3, 'PA577BN2', 'Tarej ', 'Aloa', NULL, '123456098', '11111111', 'tarek@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', NULL, NULL, '12 bd', NULL, NULL, NULL, NULL, 1),
(4, 'PBRWZ0MI', 'siddique', 'Misa', NULL, '234234', '234234234', 'siddiqe@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '', NULL, NULL, '12312', NULL, NULL, NULL, NULL, 1),
(5, 'PHLKKK0V', 'isahaq', 'sdfsad', '', '234234', '2344234', 'hmisahaq01@yahoo.com', 'e10adc3949ba59abbe56e057f20f883e', '181224092525', NULL, '', '', '', 'dhaka', '234234', 'BD', 1),
(6, 'PAD1L2BE', 'isahaq', 'mia', NULL, '234234', '', 'hmisahaq01@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '181224110804', NULL, NULL, 'sdfasd', 'fsdfsda', 'dhaka', '234', 'BD', 1),
(7, 'PGW52WIF', 'zxczxc', 'zxczxc', NULL, 'qe21312', '234', 'zxczxc@gail.com', '289dff07669d7a23de0ef88d2f7129e7', '', NULL, NULL, 'xcvxcv', NULL, NULL, NULL, NULL, 1),
(8, 'PP25IMXV', 'test', 'sdf', NULL, '234234', '234234', 'testt@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '', NULL, NULL, 'sdfsdf', NULL, NULL, NULL, NULL, 1),
(9, 'P0H0NQ9N', 'dsfsdf', 'dsfsdf', NULL, '234234', '234', 'sdfsrer@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', NULL, NULL, '', NULL, NULL, NULL, NULL, 1),
(10, 'PTBS6MS9', 'Tarek', 'local', NULL, '423234234', '324', 'tarek@local.com', '0c0b3da4ac402bd86191d959be081114', '', NULL, NULL, '', NULL, NULL, NULL, NULL, 1),
(11, 'PXYBK6C6', 'sdfsd', 'fsdfsd', NULL, '234234', '234234', 'test@gmail.com', '0e9212587d373ca58e9bada0c15e6fe4', '181224062540', NULL, NULL, '', NULL, NULL, NULL, NULL, 1),
(12, 'PG7AYCCA', 'Yungong', 'Briand', NULL, '+971588675961', '1109389830', 'luciebriluce@gmail.com', 'b0edf4c233ab6d025f36f46249a61e72', '', NULL, NULL, 'Douala', NULL, NULL, NULL, NULL, 1),
(13, 'PQHRZG23', 'hasan', 'rased', NULL, '01515211297', '1471835256767', 'rasedr007@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '190115083746', NULL, NULL, '', NULL, NULL, NULL, NULL, 1),
(14, 'PMXSD1CN', 'Mr', 'Ainalhaque', NULL, '03216546', '12345642', 'ainal@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(15, 'PDSAQZS8', 'Mr', 'kamal', NULL, '234234234', '1235646', 'kamal@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(16, 'P6ATG8TL', 'Md', 'Aynal', NULL, '4234234', '234234', 'aynal@gmail.com', '202cb962ac59075b964b07152d234b70', '', NULL, NULL, 'fsd2343', NULL, NULL, NULL, NULL, 1),
(17, 'P8DXZC2Z', 'Mr', 'Mota', NULL, '01215454', '243234', 'mota@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '190113083623', NULL, NULL, 'fsdf', NULL, NULL, NULL, NULL, 1),
(18, 'PLO2U377', 'OK', 'test', NULL, NULL, '234234', 'tefdsdfsdfst@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(19, 'PSONTYSP', 'hhhhh', 'rrrrrr', NULL, NULL, '77458542155847', 'rasedr@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(20, 'PFF59LM9', 'bus', '365', NULL, NULL, '198489428878', 'bus365@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(21, 'PJ8S3TP7', 'yyytytty', 'rryy', NULL, NULL, '2194984562298', 'bdusfgvbdfu@gmail.com', '8c19dbc6770e17cf285dc6ce92fb2708', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(22, 'PR7XXIZ2', 'Md', 'ovi', NULL, NULL, '2412885', 'ovi@gmail.com', '10493aa88605cad5ab4752b04a63d172', '190113083834', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(23, 'PMXJG0D9', 'Kobir', 'Hasan', NULL, NULL, '14654654', 'kobirdotnet@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(24, 'PD7MUT6W', 'hrrrhhhh', 'kdfjkfdf', NULL, NULL, '77458542155847', 'hnndg@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(25, 'PI38MSYW', 'sdfsdaf', 'sdfsad', NULL, '234234', '234', 'sdfsad@gail.co', '289dff07669d7a23de0ef88d2f7129e7', '', NULL, NULL, 'cfsdsdf', NULL, NULL, NULL, NULL, 1),
(27, 'PAGAX919', 'Hm', 'Isahaq', NULL, '1645645646', '234234', 'hmisahaq123@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '', NULL, NULL, '234234', NULL, NULL, NULL, NULL, 1),
(28, 'PIIFH7BG', 'sd', 'dsdf', NULL, '234234', '23423', 'hmisahaq@yahoo.com', '54fb870586efb7f6aa6f92f047efcacd', '', NULL, NULL, 'fsdfsdf', NULL, NULL, NULL, NULL, 1),
(29, 'P2T0GZT3', 'Jr', 'M', NULL, '234234', '234234', 'hmisahaq12@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', NULL, NULL, 'sfsf2234', NULL, NULL, NULL, NULL, 1),
(30, 'PUZZBJV3', 'jahir', 'Khan', NULL, '23424234', '423432', 'jahir@gmail.com', 'f8a8d7997e870968f92748f3cc41cf90', '', NULL, NULL, 'dsfsdf', NULL, NULL, NULL, NULL, 1),
(32, 'PZCYICM2', 'dfasd', 'fsdf', NULL, '234234', '23423', 'fsdf@gmail.com', '289dff07669d7a23de0ef88d2f7129e7', '', NULL, NULL, 'fsdfsdf', NULL, NULL, NULL, NULL, 1),
(33, 'PFASEEU7', 'Hasan', 'Rased', NULL, NULL, '123456', 'k@gmail.com', '202cb962ac59075b964b07152d234b70', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(34, 'P3XPQB52', 'luis', 'has', NULL, NULL, '12345', 'l@gmail.com', '202cb962ac59075b964b07152d234b70', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(35, 'PJ2LG0I2', 'Mehedi Hasan', 'Rashed', NULL, NULL, '', 'rashed.wd@gmail.com', '202cb962ac59075b964b07152d234b70', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(36, 'P3VIW5DD', 'Mehedi Hasan', 'Rashed', NULL, '0152', '', 'a@gmail.com', '202cb962ac59075b964b07152d234b70', '', NULL, NULL, 'uttara', NULL, NULL, NULL, NULL, 1),
(37, 'PKBCENEH', 'Mehedi Hasan', 'Rashed', NULL, '0152', '', 'b@gmail.com', '202cb962ac59075b964b07152d234b70', '', NULL, NULL, '', NULL, NULL, NULL, NULL, 1),
(38, 'PS0FZQL9', 'Md.', 'Kobir', NULL, '015', '123', 'mdk@gmail.com', '202cb962ac59075b964b07152d234b70', '', NULL, NULL, '', NULL, NULL, NULL, NULL, 1),
(39, 'P52ZC05X', 'Meredith', 'Has an', NULL, '01515211288', '123', 'kdk@gmail.com', '202cb962ac59075b964b07152d234b70', '', NULL, NULL, '', NULL, NULL, NULL, NULL, 1),
(40, 'PEA58KMM', 'Ainal ', 'Hoque', NULL, '12312', '23423', 'ainalcse@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', NULL, NULL, 's234234', NULL, NULL, NULL, NULL, 1),
(41, 'PX07G7SN', 'Aynal', 'HOque', NULL, '234234', '2342', 'ainalcse1@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', NULL, NULL, 'sdfs', NULL, NULL, NULL, NULL, 1),
(42, 'PA7KHZRV', 'Aynal', 'hoque', NULL, '123', '23423', 'ainalcse2@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', NULL, NULL, 'dfsdf', NULL, NULL, NULL, NULL, 1),
(48, 'PXFXZMKO', 'Tohidul', 'Islam', NULL, '', '123654789', 'tohi196@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', NULL, NULL, '', NULL, NULL, NULL, NULL, 1),
(49, 'PHJAZWYZ', 'Tanzil', 'Ahnad', NULL, '01922296392', '', 'tanzil4091@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', NULL, NULL, 'Bdtask=', NULL, NULL, NULL, NULL, 1),
(50, 'P4LJT73C', 'md', 'rasel', NULL, '015', '', 'rasel@gmail.com', 'c20ad4d76fe97759aa27a0c99bff6710', '', NULL, NULL, 'uttara', NULL, NULL, NULL, NULL, 1),
(51, 'P5QAUKS5', 'Mehedi', 'Hasan', NULL, ' 973662882838', '123', 'rasedr07@gmail.com', 'ea6ad59dc4d656f82e230a05785e3db0', '', NULL, NULL, 'Uttara=', NULL, NULL, NULL, NULL, 1),
(52, 'PR5SQCL1', 'JEAN DE DIEU', 'MANISHIWME', NULL, '+250784187303', '1234567890', 'aimejayd@gmail.com', 'c5c8f797834a9703858a23fa5adccc05', '', NULL, NULL, 'Kigali', NULL, NULL, NULL, NULL, 1),
(53, 'P1YE5NAI', 'JEAN DE DIEU', 'MANISHIMWE', NULL, '+25078448843', '1234567890', 'j.manishimw@alustudent.com', 'c5c8f797834a9703858a23fa5adccc05', '', NULL, NULL, 'Kigali, Nyarugenge', NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tkt_referal`
--

CREATE TABLE `tkt_referal` (
  `id` int(11) NOT NULL,
  `tkt_passenger_id_no` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tkt_refund`
--

CREATE TABLE `tkt_refund` (
  `id` int(11) UNSIGNED NOT NULL,
  `tkt_booking_id_no` varchar(20) DEFAULT NULL,
  `tkt_passenger_id_no` varchar(20) DEFAULT NULL,
  `cancelation_fees` float DEFAULT NULL,
  `causes` text,
  `comment` text,
  `refund_by_id` int(11) DEFAULT NULL,
  `date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `trip`
--

CREATE TABLE `trip` (
  `trip_id` int(11) NOT NULL,
  `trip_title` varchar(200) NOT NULL,
  `type` int(11) NOT NULL,
  `route` int(11) NOT NULL,
  `shedule_id` int(11) NOT NULL,
  `weekend` varchar(50) DEFAULT '0',
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `trip`
--

INSERT INTO `trip` (`trip_id`, `trip_title`, `type`, `route`, `shedule_id`, `weekend`, `status`) VALUES
(1, 'VIP-Nyabugogo - Byumba-04:30:30 - 07:40:15', 1, 10, 1, '2,3,4,5', 1),
(2, 'Prestige-Rubavu-08:30:00 - 13:30:00', 2, 12, 2, '1,2,3,4,5,6', 1),
(3, 'VIP-KARONGI-08:30:00 - 13:30:00', 1, 11, 2, '2,3,4,5,6', 1),
(4, 'Coach-KIGALI-08:30:00 - 13:30:00', 4, 13, 2, '1,2,3,4,5,6', 1),
(5, 'Classic-Bafoussam-Douala-08:30:00 - 13:30:00', 3, 13, 2, '0', 1),
(6, 'VIP-Bafoussam-Douala-04:30:30 - 07:40:15', 1, 13, 1, '0', 1),
(7, 'VIP-Bafoussam-Douala-08:30:00 - 13:30:00', 1, 13, 2, '0', 1),
(8, 'Coach-Rubavu-08:30:00 - 13:30:00', 4, 12, 2, '1,6', 1),
(9, 'Prestige-Nyabugogo - Byumba-04:30:30 - 07:40:15', 2, 10, 1, '2,3,4,5', 1);

-- --------------------------------------------------------

--
-- Table structure for table `trip_assign`
--

CREATE TABLE `trip_assign` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_no` varchar(20) DEFAULT NULL,
  `fleet_registration_id` int(11) DEFAULT NULL,
  `trip` varchar(30) NOT NULL,
  `assign_time` datetime NOT NULL,
  `driver_id` int(11) DEFAULT NULL,
  `assistant_1` varchar(30) DEFAULT NULL,
  `assistant_2` varchar(30) DEFAULT NULL,
  `assistant_3` varchar(30) DEFAULT NULL,
  `sold_ticket` float NOT NULL DEFAULT '0',
  `total_income` float DEFAULT '0',
  `total_expense` float DEFAULT '0',
  `total_fuel` float DEFAULT '0',
  `trip_comment` text,
  `closed_by_id` int(11) DEFAULT '0',
  `date` datetime DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trip_assign`
--

INSERT INTO `trip_assign` (`id`, `id_no`, `fleet_registration_id`, `trip`, `assign_time`, `driver_id`, `assistant_1`, `assistant_2`, `assistant_3`, `sold_ticket`, `total_income`, `total_expense`, `total_fuel`, `trip_comment`, `closed_by_id`, `date`, `status`) VALUES
(1, '181023070549', 1, '1', '2018-10-23 21:05:00', 2, '2', '', '', 0, 0, 0, 0, '', 2, '2018-11-04 06:42:00', 1),
(2, '181023072651', 2, '3', '2018-10-23 18:30:00', 3, '4', '5', '', 0, 0, 0, 0, '', 2, '2018-11-04 06:42:00', 1),
(3, '200515080758', 2, '1', '2020-05-15 18:00:00', 7, '', '', '', 0, 0, 0, 0, NULL, 0, '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `trip_location`
--

CREATE TABLE `trip_location` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `google_map` text,
  `image` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trip_location`
--

INSERT INTO `trip_location` (`id`, `name`, `description`, `google_map`, `image`, `status`) VALUES
(1, 'BYUMBA', 'BYUMBA Town', '', './application/modules/trip/assets/images/location/ab6d98427fce87f0e54603091a049b08.gif', 1),
(2, 'RUHENGERI', 'RUHENGERI TO GISENYI', '', './application/modules/trip/assets/images/location/95b6a402dff73d6f45884aec58aef36b.gif', 1),
(3, 'KIGALI - GISENYI', 'KIGALI TO GISENYI', '', './application/modules/trip/assets/images/location/6674a70a57f452f786a2f888e522b2b5.gif', 1),
(4, 'KARONGI', '', '', './application/modules/trip/assets/images/location/976b0b328834322e5c26487a6c1ef67d.gif', 1),
(5, 'KICUKIRO', 'KICUKIRO', '', './application/modules/trip/assets/images/location/441f9c4fdf1242734728e4c67b413b00.gif', 1),
(6, 'BUTARE', 'BUTARE CITY', '', './application/modules/trip/assets/images/location/57247c3ecb78135539c056926c544e5f.gif', 1),
(7, 'BUGESERA', 'Bugesera', '', './application/modules/trip/assets/images/location/0711b759164596eb510ea2617c79439d.gif', 1);

-- --------------------------------------------------------

--
-- Table structure for table `trip_route`
--

CREATE TABLE `trip_route` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `start_point` varchar(255) DEFAULT NULL,
  `end_point` varchar(255) DEFAULT NULL,
  `stoppage_points` varchar(355) DEFAULT NULL COMMENT 'Location ids',
  `distance` varchar(30) DEFAULT NULL,
  `approximate_time` varchar(100) DEFAULT NULL,
  `children_seat` int(11) NOT NULL DEFAULT '0',
  `special_seat` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `trip_route`
--

INSERT INTO `trip_route` (`id`, `name`, `start_point`, `end_point`, `stoppage_points`, `distance`, `approximate_time`, `children_seat`, `special_seat`, `status`) VALUES
(9, 'BUTARE', '5', '6', 'Ruhengeri, Gako, Nyirangarama,KICUKIRO,BUTARE', '297', '3H45 ', 0, 0, 1),
(10, 'Nyabugogo - Byumba', '5', '1', 'Kariko, Ruhengeri, Muko,KICUKIRO,BYUMBA', '579 km', '5 hours', 4, 3, 1),
(11, 'KARONGI', '4', '5', 'karongi_city,Nyabugogo,KARONGI,KICUKIRO', '340 Km', '5 hours', 0, 0, 1),
(12, 'Rubavu', '5', '3', 'Nyabugogo, Ruhengeri, Nyirangarama, Rubavu,KICUKIRO,KIGALI - GISENYI', '297', '4 hours', 4, 3, 1),
(13, 'KIGALI', '3', '1', 'Nyabugogo,Nyirangarama,Tarama,KIGALI - GISENYI,BYUMBA', '200 Km', '3 Hours', 2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `about` text,
  `email` varchar(100) NOT NULL,
  `password` varchar(32) NOT NULL,
  `password_reset_token` varchar(20) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `last_logout` datetime DEFAULT NULL,
  `ip_address` varchar(14) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `is_admin` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `lastname`, `about`, `email`, `password`, `password_reset_token`, `image`, `last_login`, `last_logout`, `ip_address`, `status`, `is_admin`) VALUES
(1, 'JEAN DE DIEU', 'MANISHIMWE', 'Manishimwe Jean De Dieu (Jayd) is a highly motivated, very passionate and dedicated to my work professional with diverse skills and experience in the IT field focused on Mobile Application (Android & iOS) development, networking & search engine optimization (seo)\r\nhe has acquired the skills and knowledge necessary to make your project a success. He enjoys every step of the development process, from discussion and collaboration to concept and execution, but he finds the most satisfaction in seeing the finished product do everything for you that it was created to do.', 'aimejayd2012@gmail.com', 'c5c8f797834a9703858a23fa5adccc05', '', './assets/img/user/cxET66sG1.jpg', '2020-05-15 09:08:41', '2019-01-02 08:51:50', '41.138.87.75', 1, 0),
(2, 'Administrator', 'User', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', 'admin@example.com', '827ccb0eea8a706c4c34a16891f84e7b', '', './assets/img/user/m2.png', '2020-05-15 10:07:30', '2019-01-14 08:54:27', '141.101.107.83', 1, 1),
(3, 'Test ', 'User', 'sdfasdf', 'test@gmail.com', '202cb962ac59075b964b07152d234b70', '', './assets/img/user/416e536733d6c3c66d32382bcc85fdd4.jpg', '2018-07-17 07:22:33', '2018-07-17 07:22:50', '::1', 1, 0),
(4, 'shm', 'arafat', 'sdfsdf', 'arafat@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', '', '', NULL, NULL, NULL, 1, 0),
(6, 'HM', 'Isahaq', NULL, 'hmisahaq01@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '181129052617', './application/modules/agent/assets/images/854f2cec3721cc324ed5805610f86a04.png', '2018-09-11 11:00:57', '2018-09-11 11:01:19', '::1', 1, 0),
(7, 'Briand', 'james', NULL, 'testbriand@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', NULL, NULL, NULL, NULL, 1, 0),
(8, 'Rabbani', 'khan', NULL, 'rabbani@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759', '', './application/modules/agent/assets/images/b46eddd81b1d95d48126d527c69a0b0a.png', '2018-11-15 09:31:55', '2018-11-15 10:55:32', '175.29.195.114', 1, 0),
(9, 'Arafat', 'Hossain', NULL, 'arafat@gmail.com', '827ccb0eea8a706c4c34a16891f84e7b', '', './application/modules/agent/assets/images/ae7149b2dfbaddd215a23e2237507446.jpg', '2018-11-15 13:11:57', '2018-11-15 13:31:26', '175.29.195.114', 1, 0),
(15, 'Kobir', 'Hossain', NULL, 'k@gmail.com', 'b3ddbc502e307665f346cbd6e52cc10d', '', NULL, NULL, NULL, NULL, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ws_booking_history`
--

CREATE TABLE `ws_booking_history` (
  `id` int(11) UNSIGNED NOT NULL,
  `id_no` varchar(20) DEFAULT NULL,
  `trip_id_no` varchar(20) DEFAULT NULL,
  `tkt_passenger_id_no` varchar(20) DEFAULT NULL,
  `trip_route_id` int(11) DEFAULT NULL,
  `pickup_trip_location` varchar(50) DEFAULT NULL,
  `drop_trip_location` varchar(50) DEFAULT NULL,
  `request_facilities` text,
  `price` float DEFAULT NULL,
  `discount` float DEFAULT NULL,
  `adult` int(11) NOT NULL,
  `child` int(11) NOT NULL,
  `special` int(11) NOT NULL,
  `total_seat` int(11) DEFAULT NULL,
  `seat_numbers` varchar(255) DEFAULT NULL,
  `offer_code` varchar(255) DEFAULT NULL,
  `tkt_refund_id` int(11) DEFAULT NULL,
  `agent_id` int(11) DEFAULT NULL,
  `booking_date` datetime DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `status` tinyint(4) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ws_booking_history`
--

INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES
(1, 'B3WTKFBR', '3', 'POQ1WHGV', 11, 'Douala', 'Kribi', 'Breakfast, Free wifi, ', 68, 0, 2, 0, 0, 2, 'B1, B2, ', '', NULL, NULL, '2018-10-23 01:48:32', '2018-10-24 01:48:32', 0),
(2, 'BZI3VC6G', '3', 'POQ1WHGV', 11, 'Douala', 'Kribi', 'Breakfast, Free wifi, ', 34, 0, 1, 0, 0, 1, 'B4, ', '', NULL, NULL, '2018-10-23 01:49:23', '2018-10-24 01:49:23', 0),
(3, 'BT9ES5D5', '3', 'P7DC32CR', 11, 'Douala', 'Kribi', 'Breakfast, Free wifi, ', 34, 0, 1, 0, 0, 1, 'B3, ', '', NULL, NULL, '2018-10-24 01:53:15', '2018-10-24 01:53:15', 0),
(8, 'BDFHIDQN', '3', 'PA577BN2', 11, 'Douala', 'Kribi', 'Free wifi, ', 34, 0, 1, 0, 0, 1, 'C1, ', '', NULL, NULL, '2018-10-23 02:43:59', '2018-10-24 02:43:59', 0),
(9, 'BKAJERYY', '3', 'PHF9GOBE', 11, 'Douala', 'Kribi', 'Breakfast, Free wifi, ', 58, 0, 1, 1, 0, 2, 'A1, A2, ', '', NULL, NULL, '2018-11-08 19:47:22', '2018-11-05 19:47:22', 0),
(10, 'BPN3F0OD', '3', 'PX314B0J', 11, 'Douala', 'Kribi', NULL, 116, 0, 2, 2, 0, 4, 'A3, B2, B3, C3, ', '', NULL, NULL, '2018-11-08 19:49:54', '2018-11-05 19:49:54', 0),
(11, 'BYWV5RIJ', '4', 'PP7LLFBB', 13, 'LimbÃƒÂ©', 'Edea', NULL, 500, 0, 1, 0, 0, 1, 'B2, ', '', NULL, NULL, '2018-11-15 18:08:47', '2018-11-15 18:08:47', 0),
(12, 'BUHG1Q28', '4', 'PUQXHXSG', 13, 'Kribi', 'Kribi', NULL, 400, 0, 0, 1, 0, 1, 'B2, ', '', NULL, NULL, '2018-11-15 18:09:12', '2018-11-15 18:09:12', 0),
(13, 'B6UTSLNN', '4', 'PX6WNB55', 13, 'Kribi', 'Bafoussam', NULL, 1680, 0, 2, 2, 0, 4, 'B2, B3, B4, B5, ', '', NULL, NULL, '2018-11-15 18:11:32', '2018-11-15 18:11:32', 0),
(14, 'BMV62CEX', '6', 'PGW52WIF', 13, 'LimbÃƒÂ©', 'Edea', NULL, 1000, 0, 1, 0, 0, 1, 'A1, ', '', NULL, NULL, '2018-11-19 16:17:06', '2018-11-19 16:17:06', 0),
(15, 'BT7TS1XC', '6', 'PP25IMXV', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast, Free wifi, ', 1000, 0, 1, 0, 0, 1, 'A1, ', '', NULL, NULL, '2018-11-24 18:00:35', '2018-11-24 18:00:35', 0),
(16, 'BB09TD5F', '6', 'P0H0NQ9N', 13, 'LimbÃƒÂ©', 'Kribi', NULL, 1000, 0, 1, 0, 0, 1, 'A1, ', '', NULL, NULL, '2018-11-25 11:52:11', '2018-11-25 11:52:11', 0),
(17, 'B6XJYYXS', '6', 'PTBS6MS9', 13, 'LimbÃƒÂ©', 'Edea', 'Breakfast, ', 1000, 0, 1, 0, 0, 1, 'A1, ', '', NULL, NULL, '2018-11-25 12:10:12', '2018-11-25 12:10:12', 0),
(18, 'BGBZ1US0', '6', 'PXYBK6C6', 13, 'LimbÃƒÂ©', 'Kribi', NULL, 1000, 0, 1, 0, 0, 1, 'A2, ', '', NULL, NULL, '2018-11-25 12:15:15', '2018-11-25 12:15:15', 0),
(19, 'B29WHG82', '3', 'PG7AYCCA', 11, 'Douala', 'Kribi', 'Breakfast, Free wifi, ', 68, 0, 2, 0, 0, 2, 'A3, A4, ', '', NULL, NULL, '2018-11-27 23:14:54', '2018-11-28 23:14:54', 0),
(20, 'BR13PMJW', '3', 'PGQBSC6N', 11, 'Douala', 'Kribi', 'Breakfast, Free wifi, ', 34, 0, 1, 0, 0, 1, 'B3, ', '', NULL, NULL, '2018-11-28 20:12:09', '2018-12-03 20:12:09', 0),
(21, 'BQHRI37V', '3', 'P22FCHW8', 11, 'Douala', 'Kribi', 'Breakfast, Free wifi, ', 34, 0, 1, 0, 0, 1, 'D3, ', '', NULL, NULL, '2018-11-28 20:44:23', '2018-12-03 20:44:23', 0),
(22, 'BZHLA4AW', '3', 'P1AY1OY1', 11, 'Douala', 'Douala', 'Breakfast, Free wifi, ', 34, 0, 1, 0, 0, 1, 'B3, ', '', NULL, NULL, '2018-11-28 22:10:16', '2018-12-03 22:10:16', 0),
(23, 'BXXG3NFW', '3', 'PG7AYCCA', 11, 'Douala', 'Kribi', 'Breakfast, Free wifi, ', 68, 0, 2, 0, 0, 2, 'C3, C4, ', '', NULL, NULL, '2018-11-28 22:11:45', '2018-12-03 22:11:45', 0),
(24, 'BW5OMTK6', '6', 'PQHRZG23', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast, ', 1000, 0, 1, 0, 0, 1, 'D3, ', '', NULL, NULL, '2018-12-13 12:04:12', '2018-12-15 12:04:12', 0),
(25, 'B1979YXY', '6', 'PEDIIE4A', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast, ', 1000, 0, 1, 0, 0, 1, 'C3, ', '', NULL, NULL, '2018-12-13 12:05:31', '2018-12-15 12:05:31', 0),
(26, 'BTQEIXA9', '6', 'P67TAO15', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast, ', 1000, 0, 1, 0, 0, 1, 'C3, ', '', NULL, NULL, '2018-12-13 12:05:34', '2018-12-15 12:05:34', 0),
(28, 'B60O0K37', '6', 'PQHRZG23', 13, 'Bafoussam', 'Douala', NULL, 2000, 0, 2, 0, 0, 2, 'A2, D3, ', '', NULL, NULL, '2018-12-15 12:37:39', '2018-12-15 12:37:39', 0),
(29, 'BEPS9APT', '6', 'PQHRZG23', 13, 'Bafoussam', 'Douala', NULL, 2000, 0, 2, 0, 0, 2, 'A2, D3, ', '', NULL, NULL, '2018-12-15 12:37:41', '2018-12-15 12:37:41', 0),
(31, 'B7YEM7HM', '3', 'PXFOB93S', 11, 'Douala', 'Kribi', 'Breakfast, Free wifi, ', 68, 0, 2, 0, 0, 2, 'A3, A4, ', '', NULL, NULL, '2018-12-16 00:38:38', '2018-12-17 00:38:38', 0),
(32, 'BBUG3VCR', '3', 'PG7AYCCA', 11, 'Douala', 'Kribi', 'Breakfast, Free wifi, ', 68, 0, 2, 0, 0, 2, 'A3, A4, ', '', NULL, NULL, '2018-12-16 00:39:34', '2018-12-17 00:39:34', 0),
(33, 'BKNW86BX', '3', 'P9LT35CK', 11, 'Douala', 'Kribi', 'Breakfast, Free wifi, ', 68, 0, 2, 0, 0, 2, 'A3, A4, ', '', NULL, NULL, '2018-12-16 00:45:20', '2018-12-17 00:45:20', 0),
(34, 'B87N6C61', '6', 'PEFTLU8N', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast, Free wifi, ', 1000, 0, 1, 0, 0, 1, 'C3, ', '', NULL, NULL, '2018-12-18 15:51:08', '2018-12-18 15:51:08', 0),
(35, 'B1RB4YHR', '6', 'PZDZFJC0', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast, Free wifi, ', 2000, 0, 2, 0, 0, 2, 'C3, D3, ', '', NULL, NULL, '2018-12-18 11:07:02', '2018-12-20 11:07:02', 0),
(36, 'B380I2FG', '6', 'PK5ZCDX1', 13, 'LimbÃƒÂ©', 'Kribi', NULL, 1000, 0, 1, 0, 0, 1, 'B3, ', '', NULL, NULL, '2018-12-18 15:00:32', '2018-12-23 15:00:32', 0),
(37, 'BIBEVUA0', '6', 'P8DXZC2Z', 13, 'LimbÃƒÂ©', 'Kribi', NULL, 1000, 0, 1, 0, 0, 1, 'B3, ', '', NULL, NULL, '2018-12-18 15:01:29', '2018-12-23 15:01:29', 0),
(38, 'BLVUQIWE', '6', 'P8DXZC2Z', 13, 'LimbÃƒÂ©', 'Kribi', NULL, 1000, 0, 1, 0, 0, 1, 'C4, ', '', NULL, NULL, '2018-12-13 15:02:59', '2018-12-23 15:02:59', 0),
(39, 'BDZKQM8L', '6', 'P8DXZC2Z', 13, 'LimbÃƒÂ©', 'Kribi', NULL, 900, 0, 0, 1, 0, 1, 'C4, ', '', NULL, NULL, '2018-12-13 15:05:01', '2018-12-23 15:05:01', 0),
(40, 'BC4J3SGI', '6', 'P8DXZC2Z', 13, 'LimbÃƒÂ©', 'Kribi', NULL, 1000, 0, 1, 0, 0, 1, 'C3, ', '', NULL, NULL, '2018-12-13 15:45:18', '2018-12-23 15:45:18', 0),
(41, 'BUOJM2HZ', '6', 'P8DXZC2Z', 13, 'LimbÃƒÂ©', 'Kribi', NULL, 900, 0, 0, 1, 0, 1, 'D4, ', '', NULL, NULL, '2018-12-13 16:29:50', '2018-12-23 16:29:50', 0),
(42, 'BLJ922XL', '6', 'PEN2UYK1', 13, 'LimbÃƒÂ©', 'Kribi', NULL, 900, 0, 0, 1, 0, 1, 'C3, ', '', NULL, NULL, '2018-12-25 12:57:10', '2018-12-24 12:57:10', 0),
(43, 'BQKUNHKE', '6', 'P8DXZC2Z', 13, 'LimbÃƒÂ©', 'Kribi', NULL, 900, 0, 0, 1, 0, 1, 'C3, ', '', NULL, NULL, '2018-12-25 12:57:46', '2018-12-24 12:57:46', 0),
(44, 'BWWQS7HS', '6', 'PPQBPHJV', 13, 'Kribi', 'Edea', NULL, 1000, 0, 1, 0, 0, 1, 'E3, ', '', NULL, NULL, '2018-12-13 17:52:59', '2018-12-25 17:52:59', 0),
(45, 'BRW1LRIN', '6', 'P8DXZC2Z', 13, 'Kribi', 'Edea', NULL, 900, 0, 0, 1, 0, 1, 'B3, ', '', NULL, NULL, '2018-12-13 18:10:04', '2018-12-25 18:10:04', 0),
(46, 'B2TLEMJC', '6', 'P8DXZC2Z', 13, '3', '1', 'breakfast', 1000, NULL, 1, 0, 0, 1, 'A3', 'abuyga', NULL, NULL, '2018-12-18 00:00:00', '2018-12-27 05:56:51', 0),
(47, 'B4APGFMC', '6', 'P8DXZC2Z', 13, '3', '1', 'breakfast', 1000, NULL, 1, 0, 0, 1, 'A4', '', NULL, NULL, '2018-12-18 00:00:00', '2018-12-27 05:57:31', 0),
(48, 'B1QW7V3Q', '6', 'PW7HUH1N', 13, 'LimbÃƒÂ©', 'Kribi', NULL, 1000, 0, 1, 0, 0, 1, 'E4, ', '', NULL, NULL, '2018-12-27 16:29:53', '2018-12-27 16:29:53', 0),
(49, 'BWZ0GWUM', '6', 'PI38MSYW', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast, Free wifi, ', 1000, 0, 1, 0, 0, 1, 'A1, ', '', NULL, NULL, '2018-12-27 18:13:42', '2018-12-27 18:13:42', 0),
(50, 'BYTUKRKF', '6', 'P8DXZC2Z', 13, '3', '1', 'breakfast', 1000, NULL, 1, 0, 0, 1, '\'A3\',\'A4\'', 'abuyga', NULL, NULL, '2018-12-18 00:00:00', '2019-01-01 06:41:54', 0),
(51, 'BZPVYQP8', '6', 'P8DXZC2Z', 13, '3', '1', 'breakfast', 1000, NULL, 1, 0, 0, 1, '\'A3\',\'A4\',\'A7\'', 'abuyga', NULL, NULL, '2018-12-18 00:00:00', '2019-01-01 06:45:13', 0),
(52, 'BT1ARU87', '6', 'P8DXZC2Z', 13, '3', '1', '', 1000, NULL, 1, 0, 0, 1, '\'A3\',\'A4\',\'A7\'', '', NULL, NULL, '2018-12-18 00:00:00', '2019-01-01 07:04:06', 0),
(53, 'BDQJLPCZ', 'P8DXZC2Z        ', 'P8DXZC2Z', 13, '3', '1        ', '', 2000, NULL, 2, 0, 0, 0, '\'A3\',\'A4\',\'A7\'', '        ', NULL, NULL, '2019-01-01 00:00:00', '2019-01-01 08:14:38', 0),
(54, 'BTC5T7U8', '6        ', 'P8DXZC2Z', 13, '3', '1        ', '', 2000, NULL, 2, 0, 0, 0, '\'A3\',\'A4\',\'A7\'', '        ', NULL, NULL, '2019-01-01 00:00:00', '2019-01-01 08:16:58', 0),
(55, 'BHGFA0AB', '6', 'P8DXZC2Z', 13, '3', '1', '', 2000, NULL, 2, 0, 0, 0, '\'A3\',\'A4\',\'A7\'', '', NULL, NULL, '2019-01-01 00:00:00', '2019-01-01 08:19:30', 0),
(56, 'BYYH796V', '6', 'P8DXZC2Z', 13, '3', '1', '', 2000, NULL, 2, 0, 0, 3, '\'A3\',\'A4\',\'A7\'', '', NULL, NULL, '2019-01-01 00:00:00', '2019-01-01 08:22:30', 0),
(57, 'B6YJ517X', '6', 'P8DXZC2Z', 13, '3', '1', '', 1000, NULL, 1, 0, 0, 1, '\'A3\',\'A4\',\'A7\'', '', NULL, NULL, '2018-12-18 00:00:00', '2019-01-01 08:25:07', 0),
(58, 'BQW9LSGG', '6', 'P8DXZC2Z', 13, '3', '1', '\'\'', 2000, NULL, 2, 0, 0, 3, '\'A3\',\'A4\',\'A7\'', '\'\'', NULL, NULL, '2019-01-01 00:00:00', '2019-01-01 08:26:23', 0),
(59, 'BQ87EL2D', '6', 'P8DXZC2Z', 13, '3', '1', '\'\'', 2000, NULL, 2, 0, 0, 3, '\'A3,A4,A7\'', '\'\'', NULL, NULL, '2019-01-01 00:00:00', '2019-01-01 08:30:21', 0),
(60, 'BXULIE5P', '6', 'P8DXZC2Z', 13, '3', '1', '', 1000, NULL, 1, 0, 0, 1, '\'A3\',\'A4\',\'A7\'', '', NULL, NULL, '2018-12-18 00:00:00', '2019-01-01 08:32:27', 0),
(61, 'BS3TV2JZ', '6', 'P8DXZC2Z', 13, '3', '1', '\'\'', 2760, NULL, 3, 0, 0, 0, '\'A3,A4,A7\'', '\'\'', NULL, NULL, '2019-01-01 00:00:00', '2019-01-01 08:35:00', 0),
(62, 'BZHEF1DT', '6', 'P8DXZC2Z', 13, '3', '1', '\'\'', 2000, NULL, 2, 0, 0, 3, '\'A3,A4,A7\'', '\'\'', NULL, NULL, '2019-01-01 00:00:00', '2019-01-01 08:37:47', 0),
(63, 'BMDZIGG9', '6', 'PBH968MS', 13, '3', '1', '\'\'', 2760, NULL, 3, 0, 0, 0, '\'A3,A4,A7\'', '\'\'', NULL, NULL, '2019-01-01 00:00:00', '2019-01-01 08:40:00', 0),
(64, 'BQE66TA0', '6', 'PBH968MS', 13, '3', '1', '\'\'', 2000, NULL, 2, 0, 0, 4, '\'A3,A4,A7\'', '\'\'', NULL, NULL, '2019-01-01 00:00:00', '2019-01-01 08:45:09', 0),
(65, 'BWRP0N38', '6', 'P8DXZC2Z', 13, '3', '1', '\'\'', 2760, NULL, 3, 0, 0, 3, '\'A3,A4,A7\'', '\'\'', NULL, NULL, '2019-01-01 00:00:00', '2019-01-01 08:47:24', 0),
(66, 'BYRJC8BC', '6', 'PBH968MS', 13, '3', '1', '\'\'', 2760, NULL, 3, 0, 0, 3, '\'A3,A4,A7\'', '\'\'', NULL, NULL, '2019-01-01 00:00:00', '2019-01-01 08:50:05', 0),
(67, 'B82N6QH3', '6', 'PBH968MS', 13, '3', '1', '\'\'', 2760, NULL, 3, 0, 0, 3, '\'A3,A4,A7\'', '\'\'', NULL, NULL, '2019-01-01 00:00:00', '2019-01-01 08:52:01', 0),
(68, 'BJ2IDCHD', '6', 'PBH968MS', 13, '3', '1', '\'\'', 2760, NULL, 3, 0, 0, 3, '\'A3,A4,A7\'', '\'\'', NULL, NULL, '2019-01-01 00:00:00', '2019-01-01 08:54:52', 0),
(69, 'BTDHY7WO', '6', 'PBH968MS', 13, '3', '1', '\'\'', 2000, NULL, 2, 0, 0, 3, '\'A3,A4,A7\'', '\'\'', NULL, NULL, '2019-01-01 00:00:00', '2019-01-01 08:56:22', 0),
(70, 'BT26SR8H', '6', 'P8DXZC2Z', 13, '3', '1', 'breakfast', 1000, NULL, 1, 0, 0, 1, '\'A3\',\'A4\'', 'abuyga', NULL, NULL, '2018-12-18 00:00:00', '2019-01-02 04:18:17', 0),
(71, 'BCI53PZD', '6', 'P8DXZC2Z', 13, 'LimbÃƒÂ©', 'Edea', '', 1000, NULL, 1, 0, 0, 1, '\'A3\',\'A4\',\'A7\'', '', NULL, NULL, '2018-12-18 00:00:00', '2019-01-02 04:18:55', 0),
(72, 'BXYRD8VY', '6', 'P8DXZC2Z', 13, 'LimbÃƒÂ©', 'Edea', '', 1000, NULL, 1, 0, 0, 1, '\'A3\',\'A4\',\'A7\'', '', NULL, NULL, '2018-12-18 00:00:00', '2019-01-02 04:19:01', 0),
(73, 'BVJES7OG', '6', 'P8DXZC2Z', 13, 'LimbÃƒÂ©', 'Edea', '', 1000, NULL, 1, 0, 0, 1, '\'A3\',\'A4\',\'A7\'', '', NULL, NULL, '2018-12-18 00:00:00', '2019-01-02 04:19:08', 0),
(74, 'BPPBJ1JG', '6', 'PBH968MS', 13, 'Edea', 'LimbÃƒÂ©', '\'\'', 2000, NULL, 2, 0, 0, 0, '\'A3,A4,A7\'', '\'\'', NULL, NULL, '2019-01-02 00:00:00', '2019-01-02 04:35:44', 0),
(75, 'BICB9RT1', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', '\'\'', 2000, NULL, 2, 0, 0, 3, '\'A3,A4,A7\'', '\'\'', NULL, NULL, '2019-01-02 00:00:00', '2019-01-02 04:40:19', 0),
(76, 'BKBNFJIQ', '6', 'P8DXZC2Z', 13, 'LimbÃƒÂ©', 'Edea', '', 1000, NULL, 1, 0, 0, 1, '\'A3\',\'A4\',\'A7\'', '', NULL, NULL, '2018-12-18 00:00:00', '2019-01-02 04:42:33', 0),
(77, 'B4N3PPOP', '6', 'P8DXZC2Z', 13, 'LimbÃƒÂ©', 'Kribi', '\'\'', 2760, NULL, 3, 0, 0, 3, '\'A3,A4,A7\'', '\'\'', NULL, NULL, '2019-01-02 00:00:00', '2019-01-02 04:45:45', 0),
(78, 'B30NOZA5', '6', 'P8DXZC2Z', 13, 'LimbÃƒÂ©', 'Kribi', '\'\'', 2760, NULL, 3, 0, 0, 3, '\'A3,A4,A7\'', '\'\'', NULL, NULL, '2019-01-02 00:00:00', '2019-01-02 04:48:15', 0),
(79, 'B6H9JKWS', '6', 'P8DXZC2Z', 13, 'LimbÃƒÂ©', 'Kribi', '\'\'', 2760, NULL, 3, 0, 0, 3, '\'A3,A4,A7\'', '\'\'', NULL, NULL, '2019-01-02 00:00:00', '2019-01-02 04:48:52', 0),
(80, 'BPGWJOTJ', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', '\'\'', 2000, NULL, 2, 0, 0, 2, '[object Map]', '\'\'', NULL, NULL, '2019-01-02 00:00:00', '2019-01-02 05:38:56', 0),
(81, 'BIXAV3EU', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', '\'\'', 2000, NULL, 2, 0, 0, 0, '[object Map]', '\'\'', NULL, NULL, '2019-01-02 00:00:00', '2019-01-02 05:46:13', 0),
(82, 'B52DB9ZC', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', '\'\'', 2000, NULL, 2, 0, 0, 2, '[object Set]', '\'\'', NULL, NULL, '2019-01-01 00:00:00', '2019-01-02 08:49:29', 0),
(83, 'B9U877ER', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', '\'\'', 1000, NULL, 1, 0, 0, 1, '[[\"A1\",true]]', '\'\'', NULL, NULL, '2019-01-02 00:00:00', '2019-01-02 09:35:00', 0),
(84, 'BPLHKF1M', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', '\'\'', 1000, NULL, 1, 0, 0, 3, '[[\"C1\",true],[\"C2\",true],[\"D1\",true]]', '\'\'', NULL, NULL, '2019-01-02 00:00:00', '2019-01-02 09:36:34', 0),
(85, 'BT4I2OOP', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', '\'\'', 1000, NULL, 1, 0, 0, 3, '[[\"C1\",true],[\"C2\",false],[\"D1\",true]]', '\'\'', NULL, NULL, '2019-01-02 00:00:00', '2019-01-02 09:40:13', 0),
(86, 'B8P5VHH9', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', '\'\'', 1000, NULL, 1, 0, 0, 3, '[[\"C1\",true],[\"C2\",false],[\"D1\",true]]', '\'\'', NULL, NULL, '2019-01-02 00:00:00', '2019-01-02 09:50:42', 0),
(87, 'BHVSB25I', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', '\'\'', 2000, NULL, 2, 0, 0, 0, '[]', '\'\'', NULL, NULL, '2019-01-02 00:00:00', '2019-01-02 09:52:59', 0),
(88, 'B29EUGVK', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', '\'\'', 2000, NULL, 2, 0, 0, 4, '[[\"A1\",true],[\"A2\",true],[\"B2\",false],[\"B1\",true]]', '\'\'', NULL, NULL, '2019-01-02 00:00:00', '2019-01-02 09:58:52', 0),
(89, 'BVUT05NK', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', '\'\'', 2000, NULL, 2, 0, 0, 2, '[[\"A1\",true],[\"A2\",true]]', '\'\'', NULL, NULL, '2019-01-02 00:00:00', '2019-01-02 10:03:19', 0),
(90, 'BHTBUVSM', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', '\'\'', 1000, NULL, 1, 0, 0, 1, '[[\"A1\",true]]', '\'\'', NULL, NULL, '2019-01-02 00:00:00', '2019-01-02 10:08:36', 0),
(91, 'B11LNSK2', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', '\'\'', 2000, NULL, 2, 0, 0, 2, '[[\"A1\",true],[\"A2\",true]]', '\'\'', NULL, NULL, '2019-01-02 00:00:00', '2019-01-02 10:11:42', 0),
(92, 'BEA5ADPT', '6', 'P8DXZC2Z', 13, 'LimbÃƒÂ©', 'Kribi', '\'\'', 2000, NULL, 2, 0, 0, 2, '[[\"E1\",true],[\"E2\",true]]', '\'\'', NULL, NULL, '2019-01-02 00:00:00', '2019-01-02 11:00:51', 0),
(93, 'BCBXONR5', '6', 'P8DXZC2Z', 13, 'LimbÃƒÂ©', 'Kribi', '\'\'', 2000, NULL, 2, 0, 0, 2, '[[\"E1\",true],[\"E2\",true]]', '\'\'', NULL, NULL, '2019-01-02 00:00:00', '2019-01-02 11:02:34', 0),
(94, 'BFOVRAN5', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', '\'\'', 2000, NULL, 2, 0, 0, 2, '[[\"A1\",true],[\"A2\",true]]', '\'\'', NULL, NULL, '2019-01-02 00:00:00', '2019-01-02 11:14:21', 0),
(95, 'B16YDOR6', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', '\'\'', 2000, NULL, 2, 0, 0, 2, '[[\"A1\",true],[\"A2\",true]]', '\'\'', NULL, NULL, '2019-01-02 00:00:00', '2019-01-02 11:15:55', 0),
(96, 'B1AW1HTQ', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', '\'\'', 1800, NULL, 0, 2, 0, 2, '[[\"A1\",true],[\"A2\",true]]', '\'\'', NULL, NULL, '2019-01-02 00:00:00', '2019-01-02 11:18:54', 0),
(97, 'BZJDJL9L', '6', 'PBH968MS', 13, '', '', '\'\'', 0, NULL, 0, 0, 0, 2, '[[\"D1\",true],[\"D2\",true]]', '\'\'', NULL, NULL, '2019-01-02 00:00:00', '2019-01-02 11:26:49', 0),
(98, 'BJT275VX', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', '\'\'', 2000, NULL, 2, 0, 0, 2, '[[\"A1\",true],[\"A2\",true]]', '\'\'', NULL, NULL, '2019-01-02 00:00:00', '2019-01-02 11:30:57', 0),
(99, 'B20BM1ET', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', '\'\'', 1800, NULL, 0, 2, 0, 2, '[[\"A1\",true],[\"A2\",true]]', '\'\'', NULL, NULL, '2019-01-02 00:00:00', '2019-01-02 11:33:26', 0),
(100, 'BDIL7MUA', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', '\'\'', 1900, NULL, 1, 1, 0, 2, '[[\"A1\",true],[\"A2\",true]]', '\'\'', NULL, NULL, '2019-01-02 00:00:00', '2019-01-02 11:55:06', 0),
(101, 'BFCU0LBZ', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', '\'\'', 1900, NULL, 1, 1, 0, 0, '[]', '\'\'', NULL, NULL, '2019-01-02 00:00:00', '2019-01-02 11:55:40', 0),
(102, 'B6EB20LG', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', '\'\'', 1900, NULL, 1, 1, 0, 4, '[[\"A1\",true],[\"A2\",false],[\"B1\",false],[\"B2\",true]]', '\'\'', NULL, NULL, '2019-01-02 00:00:00', '2019-01-02 11:57:58', 0),
(103, 'B9Y6OW07', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', '\'\'', 1900, NULL, 1, 1, 0, 2, '[[\"E1\",true],[\"E2\",true]]', '', NULL, NULL, '2019-01-03 00:00:00', '2019-01-03 07:05:48', 0),
(104, 'BBCYEZ83', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', '\'\'', 1900, NULL, 1, 1, 0, 0, '[]', '', NULL, NULL, '2019-01-03 00:00:00', '2019-01-03 07:18:02', 0),
(105, 'B0QQ81AL', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 1000, NULL, 1, 0, 0, 1, '[[\"A1\",true]]', '', NULL, NULL, '2019-01-03 00:00:00', '2019-01-03 07:27:51', 0),
(106, 'B76ZHQ8A', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 1000, NULL, 1, 0, 0, 0, '[]', '', NULL, NULL, '2019-01-03 00:00:00', '2019-01-03 07:30:55', 0),
(107, 'BLDHPID6', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 1900, NULL, 1, 1, 0, 0, '[]', '', NULL, NULL, '2019-01-03 00:00:00', '2019-01-03 08:30:38', 0),
(108, 'BMSZHC95', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 2760, NULL, 2, 1, 0, 3, '[[\"A1\",true],[\"A2\",true]]', '', NULL, NULL, '2019-01-03 00:00:00', '2019-01-03 08:37:07', 0),
(109, 'BNIYEIND', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 2760, NULL, 1, 2, 0, 3, '[[\"A1\",true],[\"A2\",true],[\"B1\",false],[\"A3\",true]]', '', NULL, NULL, '2019-01-03 00:00:00', '2019-01-03 08:48:57', 0),
(110, 'BGFHL3SZ', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 2000, NULL, 2, 0, 0, 2, '[[\"A1\",true],[\"A2\",true]]', '', NULL, NULL, '2019-01-03 00:00:00', '2019-01-03 08:54:03', 0),
(111, 'BJMO6K5K', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 2000, NULL, 2, 0, 0, 2, '[[\"A2\",true],[\"A1\",true]]', '', NULL, NULL, '2019-01-03 00:00:00', '2019-01-03 08:57:14', 0),
(112, 'BU3GOLOL', '6', 'PBH968MS', 13, '', '', '', 0, NULL, 0, 0, 0, 0, '[[\"A1\",true],[\"A2\",true]]', '', NULL, NULL, '2019-01-03 00:00:00', '2019-01-03 09:00:56', 0),
(113, 'BU3BLWL3', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 2000, NULL, 2, 0, 0, 2, '[[\"A1\",true],[\"A2\",true]]', '', NULL, NULL, '2019-01-03 00:00:00', '2019-01-03 09:10:10', 0),
(114, 'BDJCW2FV', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 2760, NULL, 3, 0, 0, 3, '[[\"A1\",true],[\"A2\",true],[\"B1\",true]]', '', NULL, NULL, '2019-01-03 00:00:00', '2019-01-03 09:14:39', 0),
(115, 'BDBWU6O7', '6', 'P8DXZC2Z', 13, 'LimbÃƒÂ©', 'Edea', '', 1000, NULL, 1, 0, 0, 1, '\'A3\',\'A4\',\'A7\'', '', NULL, NULL, '2018-12-18 00:00:00', '2019-01-03 09:23:10', 0),
(116, 'BZHXZM7A', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 2000, NULL, 2, 0, 0, 2, 'A1,A2,', '', NULL, NULL, '2019-01-03 00:00:00', '2019-01-03 09:40:59', 0),
(117, 'B8NQXG9E', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 2000, NULL, 2, 0, 0, 2, 'A1,A2,', '', NULL, NULL, '2019-01-03 00:00:00', '2019-01-03 09:41:40', 0),
(118, 'BOIO00M8', '6', 'P8DXZC2Z', 13, 'Kribi', 'Edea', 'Breakfast,Free wifi', 2000, NULL, 2, 0, 0, 2, 'C1,D2,', '', NULL, NULL, '2019-01-03 00:00:00', '2019-01-03 09:43:50', 0),
(119, 'B5MDVKQM', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 2000, NULL, 2, 0, 0, 2, 'B2,B1,', '', NULL, NULL, '2019-01-03 00:00:00', '2019-01-03 10:00:04', 0),
(120, 'BQGTJV5G', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', 'Free wifi', 1000, NULL, 1, 0, 0, 1, 'B2,', '', NULL, NULL, '2019-01-03 00:00:00', '2019-01-03 10:02:17', 0),
(121, 'BV2S8Y4I', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 2000, NULL, 2, 0, 0, 2, 'D3,D4,', '', NULL, NULL, '2019-01-03 00:00:00', '2019-01-03 10:06:02', 0),
(124, 'BYLQ8VSH', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 2000, NULL, 2, 0, 0, 2, 'B1,B2,', '', NULL, NULL, '2019-01-03 00:00:00', '2019-01-03 11:28:39', 0),
(125, 'B47A0V44', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 2000, NULL, 2, 0, 0, 2, 'E2,E1,', '', NULL, NULL, '2019-01-03 00:00:00', '2019-01-03 11:32:07', 0),
(126, 'BAPNOYQO', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 2000, NULL, 2, 0, 0, 2, 'C2,C1,', '', NULL, NULL, '2019-01-03 00:00:00', '2019-01-03 11:35:05', 0),
(127, 'BMS37NI9', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 1800, NULL, 0, 2, 0, 2, 'E1,E2,', '', NULL, NULL, '2019-01-03 00:00:00', '2019-01-03 11:48:44', 0),
(129, 'B1QG29YF', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 1000, NULL, 1, 0, 0, 1, 'E2,', '', NULL, NULL, '2019-01-03 00:00:00', '2019-01-03 12:00:24', 0),
(130, 'BYJ0Z3OA', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 2000, NULL, 2, 0, 0, 2, 'B1,B2,', '', NULL, NULL, '2019-01-03 00:00:00', '2019-01-03 12:03:55', 0),
(131, 'BNO1UTCO', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 2000, NULL, 2, 0, 0, 2, 'B2,B1,', '', NULL, NULL, '2019-01-03 00:00:00', '2019-01-03 12:06:01', 0),
(133, 'B91MLZZV', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 1000, NULL, 1, 0, 0, 1, 'A3,', '', NULL, NULL, '2019-01-03 00:00:00', '2019-01-03 12:12:19', 0),
(135, 'BSH57O33', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 1000, NULL, 1, 0, 0, 1, 'A3,', '', NULL, NULL, '2019-01-03 00:00:00', '2019-01-03 12:15:16', 0),
(136, 'BTFNOUKY', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 1000, NULL, 1, 0, 0, 1, 'F1,', '', NULL, NULL, '2019-01-03 00:00:00', '2019-01-03 12:34:37', 0),
(137, 'B35WA5SN', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 1000, NULL, 1, 0, 0, 1, 'B1,', '', NULL, NULL, '2019-01-03 00:00:00', '2019-01-03 12:45:58', 0),
(138, 'BI0VS6ZF', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 1000, NULL, 1, 0, 0, 1, 'A1,', '', NULL, NULL, '2019-01-05 00:00:00', '2019-01-05 04:17:25', 0),
(140, 'BYL0PVVH', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 1000, NULL, 1, 0, 0, 1, 'A2,', '', NULL, NULL, '2019-01-05 00:00:00', '2019-01-05 04:49:14', 0),
(141, 'BBHLHCEC', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 1000, NULL, 1, 0, 0, 1, 'A2,', '', NULL, NULL, '2019-01-05 00:00:00', '2019-01-05 04:54:20', 0),
(142, 'BINYN94L', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 1000, NULL, 1, 0, 0, 1, 'A2,', '', NULL, NULL, '2019-01-05 00:00:00', '2019-01-05 04:57:56', 0),
(143, 'B9P0R6HA', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', 'Free wifi', 2000, NULL, 2, 0, 0, 2, 'B1,B2,', '', NULL, NULL, '2019-01-05 00:00:00', '2019-01-05 05:00:19', 0),
(144, 'BLXPUDNK', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 1000, NULL, 1, 0, 0, 1, 'B1,B2,', '', NULL, NULL, '2019-01-05 00:00:00', '2019-01-05 05:04:42', 0),
(145, 'BRA7D3SX', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 1000, NULL, 1, 0, 0, 1, 'A2,', '', NULL, NULL, '2019-01-05 00:00:00', '2019-01-05 05:07:21', 0),
(146, 'BDYYIBD6', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 900, NULL, 0, 1, 0, 1, 'A2,', '', NULL, NULL, '2019-01-05 00:00:00', '2019-01-05 05:11:45', 0),
(147, 'BK39XEJL', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 900, NULL, 0, 1, 0, 1, 'A1,', '', NULL, NULL, '2019-01-05 00:00:00', '2019-01-05 05:14:08', 0),
(148, 'BE08BK34', '6', 'PBH968MS', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 900, NULL, 0, 1, 0, 1, 'A1,', '', NULL, NULL, '2019-01-05 00:00:00', '2019-01-05 05:16:35', 0),
(149, 'BRR3ESG8', '6', 'P8DXZC2Z', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 900, NULL, 0, 1, 0, 1, 'A2,', '', NULL, NULL, '2019-01-05 00:00:00', '2019-01-05 05:26:25', 0),
(150, 'BQ1F3R5R', '6', 'P8DXZC2Z', 13, 'LimbÃƒÂ©', 'Edea', 'Breakfast', 1000, NULL, 1, 0, 0, 1, 'A2,', '', NULL, NULL, '2019-01-05 00:00:00', '2019-01-05 05:30:43', 0),
(151, 'B23HTL0W', '6', 'PUZZBJV3', 13, 'LimbÃƒÂ©', 'Edea', NULL, 900, 0, 0, 1, 0, 1, 'A1, ', '', NULL, NULL, '2019-01-05 11:38:58', '2019-01-05 11:38:58', 0),
(152, 'B95NLOW1', '6', 'P8DXZC2Z', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 900, NULL, 0, 1, 0, 1, 'E1,', '', NULL, NULL, '2019-01-05 00:00:00', '2019-01-05 07:18:00', 0),
(153, 'BQE4W4FG', '6', 'P8DXZC2Z', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 2000, NULL, 2, 0, 0, 2, 'A2,A1,', '', NULL, NULL, '2019-01-05 00:00:00', '2019-01-05 08:00:44', 0),
(154, 'BX75003H', '6', 'undefined', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 1800, NULL, 0, 2, 0, 2, 'A3,A4,', '', NULL, NULL, '2019-01-05 00:00:00', '2019-01-05 08:18:33', 0),
(155, 'BHT3RS5X', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 1000, NULL, 1, 0, 0, 1, 'A3,', '', NULL, NULL, '2019-01-05 00:00:00', '2019-01-05 08:21:32', 0),
(156, 'BFI0JB98', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 1800, NULL, 0, 2, 0, 2, 'B3,B4,', '', NULL, NULL, '2019-01-05 00:00:00', '2019-01-05 08:22:21', 0),
(157, 'BY9K6O55', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 1800, NULL, 0, 2, 0, 2, 'B3,B4,', '', NULL, NULL, '2019-01-05 00:00:00', '2019-01-05 08:24:36', 0),
(158, 'BMFAPVX1sdf', '6', 'P8DXZC2Z', 13, 'Bafoussam', 'LimbÃƒÂ©', 'Breakfast', 1800, NULL, 0, 2, 0, 2, 'B3,B4,', '', NULL, NULL, '2019-01-05 00:00:00', '2019-01-05 08:26:28', 0),
(159, 'BABQQ8UZss', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Bafoussam', '', 2760, NULL, 1, 1, 1, 3, 'A3,A2,', '', NULL, NULL, '2019-01-06 00:00:00', '2019-01-05 08:37:31', 0),
(160, 'BGWFWEPG', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 2760, NULL, 1, 1, 1, 3, 'A1,A2,B1,', '', NULL, NULL, '2019-01-16 00:00:00', '2019-01-05 08:51:52', 0),
(165, 'B5FTQEF3ert', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 900, NULL, 0, 1, 0, 1, 'B2,', '', NULL, NULL, '2019-01-20 00:00:00', '2019-01-20 09:51:35', 0),
(166, 'BYCKBGMA', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 900, NULL, 0, 1, 0, 1, 'B2,', '', NULL, NULL, '2019-01-05 00:00:00', '2019-01-05 10:10:38', 0),
(167, 'B08O0Z7X', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 900, NULL, 0, 1, 0, 1, 'A1,', '', NULL, NULL, '2019-01-17 00:00:00', '2019-01-05 10:12:20', 0),
(169, 'BMX1SWFO', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 3680, NULL, 1, 1, 2, 4, 'C3,D3,E3,E4,', 'Ggff', NULL, NULL, '2019-01-05 00:00:00', '2019-01-05 11:12:58', 0),
(170, 'BGS8L8I5', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 3680, NULL, 1, 1, 2, 4, 'C3,D3,E3,E4,', 'Ggff', NULL, NULL, '2019-01-05 00:00:00', '2019-01-05 11:13:17', 0),
(171, 'BEZ6209K', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 3680, NULL, 1, 1, 2, 4, 'C3,D3,E3,E4,', 'Ggff', NULL, NULL, '2019-01-05 00:00:00', '2019-01-05 11:13:34', 0),
(172, 'BY5EIY66', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 3680, NULL, 1, 1, 2, 4, 'C3,D3,E3,E4,', 'Ggff', NULL, NULL, '2019-01-05 00:00:00', '2019-01-05 11:13:50', 0),
(173, 'B94LI2FS', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 3680, NULL, 1, 1, 2, 4, 'C3,D3,E3,E4,', 'Ggff', NULL, NULL, '2019-01-05 00:00:00', '2019-01-05 11:14:17', 0),
(175, 'BDDHFKHH', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 1000, NULL, 1, 0, 0, 1, 'A4,', '', NULL, NULL, '2019-01-05 00:00:00', '2019-01-05 11:31:02', 0),
(176, 'B3F8DWJV', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 1000, NULL, 1, 0, 0, 1, 'C1,', '', NULL, NULL, '2019-01-05 00:00:00', '2019-01-05 11:32:36', 0),
(177, 'B8O5GVF4', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 1000, NULL, 1, 0, 0, 1, 'C1,', '', NULL, NULL, '2019-01-05 00:00:00', '2019-01-05 11:34:35', 0),
(178, 'B25HOYSO', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 1000, NULL, 1, 0, 0, 1, 'C1,', '', NULL, NULL, '2019-01-05 00:00:00', '2019-01-05 12:27:26', 0),
(179, 'BYLIGPIG', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 1900, NULL, 1, 1, 0, 2, 'A1,B2,', '', NULL, NULL, '2019-01-06 00:00:00', '2019-01-06 05:13:14', 0),
(180, 'BKE15WTX', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 1900, NULL, 1, 1, 0, 2, 'A1,B1,', '', NULL, NULL, '2019-01-06 00:00:00', '2019-01-06 05:14:39', 0),
(181, 'BS8P1CJF', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 900, NULL, 0, 1, 0, 1, 'A1,', '', NULL, NULL, '2019-01-06 00:00:00', '2019-01-06 05:43:07', 0),
(182, 'BIL3PDCT', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 900, NULL, 0, 1, 0, 1, 'A1,', '', NULL, NULL, '2019-01-06 00:00:00', '2019-01-06 05:49:56', 0),
(183, 'BBD8WDMH', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 900, NULL, 0, 1, 0, 1, 'A1,', '', NULL, NULL, '2019-01-06 00:00:00', '2019-01-06 05:51:07', 0),
(184, 'BVM1GZ6E', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 900, NULL, 0, 1, 0, 1, 'A1,', '', NULL, NULL, '2019-01-06 00:00:00', '2019-01-06 05:51:13', 0),
(185, 'BTUKZCTF', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 900, NULL, 0, 1, 0, 1, 'A1,', '', NULL, NULL, '2019-01-06 00:00:00', '2019-01-06 06:05:05', 0),
(186, 'B9G2IB41', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 950, NULL, 0, 0, 1, 1, 'A1,', '', NULL, NULL, '2019-01-06 00:00:00', '2019-01-06 06:07:03', 0),
(187, 'BJO8EUHD', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 1000, NULL, 1, 0, 0, 1, 'A1,', '', NULL, NULL, '2019-01-06 00:00:00', '2019-01-06 06:22:04', 0),
(188, 'BSG0XMQM', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 900, NULL, 0, 1, 0, 1, 'A1,', '', NULL, NULL, '2019-01-06 00:00:00', '2019-01-06 06:27:30', 0),
(189, 'BQ63BJVY213123', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 1000, NULL, 1, 0, 0, 1, 'A1,', '', NULL, NULL, '2019-01-06 00:00:00', '2019-01-06 06:46:57', 0),
(190, 'BZHOF89U', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 1800, NULL, 0, 2, 0, 2, 'A1,B1,', '', NULL, NULL, '2019-01-06 00:00:00', '2019-01-06 08:45:23', 0),
(191, 'BVCZF5KM', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 1800, NULL, 0, 2, 0, 2, 'B1,A1,', '', NULL, NULL, '2019-01-06 00:00:00', '2019-01-06 08:46:57', 0),
(192, 'B4KZ55TZ', '6', 'PCYOU950', 13, '', '', '', 0, NULL, 0, 0, 0, 0, '', '', NULL, NULL, '2019-01-06 00:00:00', '2019-01-06 09:49:13', 0),
(193, 'BRD5VB4E', '6', 'PCYOU950', 13, '', '', '', 0, NULL, 0, 0, 0, 0, '', '', NULL, NULL, '2019-01-06 00:00:00', '2019-01-06 09:49:33', 0),
(194, 'BKXNMSYN', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 0, NULL, 0, 0, 0, 0, '', '', NULL, NULL, '2019-01-06 00:00:00', '2019-01-06 09:57:52', 0),
(195, 'BKG9JFYJ', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 900, NULL, 0, 1, 0, 1, 'A1,', '', NULL, NULL, '2019-01-06 00:00:00', '2019-01-06 10:08:43', 0),
(196, 'BCA6UWBY', '6', 'PCYOU950', 13, 'Bafoussam', 'LimbÃƒÂ©', 'Breakfast', 2660, NULL, 3, 0, 0, 3, 'A1,A2,B1,', '54321', NULL, NULL, '2019-01-06 00:00:00', '2019-01-06 10:28:03', 0),
(197, 'B0TIBDO8', '6', 'PCYOU950', 13, 'Bafoussam', 'LimbÃƒÂ©', 'Breakfast', 2660, NULL, 3, 0, 0, 3, 'D1,D2,E1,', '54321', NULL, NULL, '2019-01-06 00:00:00', '2019-01-06 10:30:10', 0),
(198, 'BYQ3ZJGW', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 1800, NULL, 0, 2, 0, 2, 'A1,A2,', '', NULL, NULL, '2019-01-06 00:00:00', '2019-01-06 11:16:37', 0),
(199, 'BZSV3HQH', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 1900, NULL, 1, 1, 0, 2, 'C1,C2,', '', NULL, NULL, '2019-01-06 00:00:00', '2019-01-06 11:34:02', 0),
(200, 'BJ0NLAAU', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 1900, NULL, 1, 1, 0, 2, 'C1,C2,', '', NULL, NULL, '2019-01-06 00:00:00', '2019-01-06 11:35:11', 0),
(202, 'BVMMHJ1T', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 2660, NULL, 1, 2, 0, 3, 'A1,B2,B3,', 'Vvgf', NULL, NULL, '2019-01-07 00:00:00', '2019-01-06 18:10:35', 0),
(204, 'B0W9WAIT', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 2660, NULL, 1, 2, 0, 3, 'A1,B2,B3,', 'Vvgf', NULL, NULL, '2019-01-07 00:00:00', '2019-01-06 18:10:35', 0),
(205, 'BCZBCOLE', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 2660, NULL, 1, 2, 0, 3, 'A1,B2,B3,', 'Vvgf', NULL, NULL, '2019-01-07 00:00:00', '2019-01-06 18:10:35', 0),
(206, 'BJNAE27Y', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 2660, NULL, 1, 2, 0, 3, 'A1,B2,B3,', 'Vvgf', NULL, NULL, '2019-01-07 00:00:00', '2019-01-06 18:10:35', 0),
(207, 'B2H8JC8Y', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 2660, NULL, 1, 2, 0, 3, 'A1,B2,B3,', 'Vvgf', NULL, NULL, '2019-01-07 00:00:00', '2019-01-06 18:10:43', 0),
(208, 'BJ2XVH70', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 2660, NULL, 1, 2, 0, 3, 'A1,B2,B3,', 'Vvgf', NULL, NULL, '2019-01-07 00:00:00', '2019-01-06 18:10:43', 0),
(209, 'BA0CNDQB', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 2660, NULL, 1, 2, 0, 3, 'A1,B2,B3,', 'Vvgf', NULL, NULL, '2019-01-07 00:00:00', '2019-01-06 18:10:43', 0),
(210, 'BNLT16YL', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 2660, NULL, 1, 2, 0, 3, 'A1,B2,B3,', 'Vvgf', NULL, NULL, '2019-01-07 00:00:00', '2019-01-06 18:10:43', 0),
(211, 'BRJHCP3Q', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 2660, NULL, 1, 2, 0, 3, 'A1,B2,B3,', 'Vvgf', NULL, NULL, '2019-01-07 00:00:00', '2019-01-06 18:10:43', 0),
(212, 'BQANRPZ2', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 2660, NULL, 1, 2, 0, 3, 'A1,B2,B3,', 'Vvgf', NULL, NULL, '2019-01-07 00:00:00', '2019-01-06 18:10:45', 0),
(213, 'BVDPGZ29', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 2660, NULL, 1, 2, 0, 3, 'A1,B2,B3,', 'Vvgf', NULL, NULL, '2019-01-07 00:00:00', '2019-01-06 18:10:45', 0),
(214, 'BHW7MW9E', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 2660, NULL, 1, 2, 0, 3, 'A1,B2,B3,', 'Vvgf', NULL, NULL, '2019-01-07 00:00:00', '2019-01-06 18:10:49', 0),
(215, 'BTUPP0JG', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 2660, NULL, 1, 2, 0, 3, 'A1,B2,B3,', 'Vvgf', NULL, NULL, '2019-01-07 00:00:00', '2019-01-06 18:10:49', 0),
(216, 'BDUY1420', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 2660, NULL, 1, 2, 0, 3, 'A1,B2,B3,', 'Vvgf', NULL, NULL, '2019-01-07 00:00:00', '2019-01-06 18:10:49', 0),
(217, 'B5KV961W', '6', 'P8DXZC2Z', 13, 'LimbÃƒÂ©', 'Edea', '', 1000, NULL, 1, 0, 0, 1, '', '', NULL, NULL, '2018-12-18 00:00:00', '2019-01-07 05:22:55', 0),
(218, 'BHJR0PGQ', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 1900, NULL, 1, 1, 0, 2, 'C2,C1,', '', NULL, NULL, '2019-01-07 00:00:00', '2019-01-07 05:24:50', 0),
(219, 'BCQ9XW6Z', '6', 'P8DXZC2Z', 13, 'LimbÃƒÂ©', 'Edea', '', 1000, NULL, 1, 0, 0, 1, '', '', NULL, NULL, '2018-12-18 00:00:00', '2019-01-07 05:32:29', 0),
(220, 'BXK97ZRE', '6', 'P8DXZC2Z', 13, 'LimbÃƒÂ©', 'Edea', '', 1000, NULL, 1, 0, 0, 1, '', '', NULL, NULL, '2018-12-18 00:00:00', '2019-01-07 05:32:45', 0),
(221, 'BAK9PG28', '6', 'P8DXZC2Z', 13, 'LimbÃƒÂ©', 'Edea', '', 1000, NULL, 1, 0, 0, 3, '', '', NULL, NULL, '2018-12-18 00:00:00', '2019-01-07 05:33:03', 0),
(222, 'BDYV6SML', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 1000, NULL, 1, 0, 0, 1, 'C1,', '', NULL, NULL, '2019-01-07 00:00:00', '2019-01-07 05:35:34', 0),
(223, 'BF6Z0BIJ', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 1000, NULL, 1, 0, 0, 1, 'C1,E2,D2,', '', NULL, NULL, '2019-01-07 00:00:00', '2019-01-07 05:36:02', 0),
(224, 'B2QDUWYP', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 1000, NULL, 1, 0, 0, 1, 'C1,C2,', '', NULL, NULL, '2019-01-07 00:00:00', '2019-01-07 05:37:34', 0),
(225, 'BOQB69OU', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 2660, NULL, 1, 2, 0, 3, 'D1,D2,C2,C1,', '', NULL, NULL, '2019-01-07 00:00:00', '2019-01-07 05:39:27', 0),
(226, 'BWH8N9P7', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 6340, NULL, 1, 6, 0, 7, 'C1,C2,D1,D2,E1,E2,F1,A2,A3,A4,D4,E4,', '', NULL, NULL, '2019-01-07 00:00:00', '2019-01-07 05:54:43', 0),
(227, 'BFMT8T5G', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 2000, NULL, 2, 0, 0, 2, 'A2,A3,', '', NULL, NULL, '2019-01-07 00:00:00', '2019-01-07 05:57:32', 0),
(229, 'BGI3111H', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 1800, NULL, 0, 2, 0, 2, 'E1,E2,', '', NULL, NULL, '2019-01-07 00:00:00', '2019-01-07 06:23:20', 0),
(230, 'B59AHOFZ', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 1800, NULL, 0, 2, 0, 2, 'E1,E2,', '', NULL, NULL, '2019-01-07 00:00:00', '2019-01-07 06:23:25', 0),
(231, 'B95YYDD2', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 1800, NULL, 0, 2, 0, 2, 'E1,E2,', '', NULL, NULL, '2019-01-07 00:00:00', '2019-01-07 06:23:30', 0),
(232, 'B2RPXQF0', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 1800, NULL, 0, 2, 0, 2, 'E1,E2,', '', NULL, NULL, '2019-01-07 00:00:00', '2019-01-07 06:23:35', 0),
(233, 'BKITY80C', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 1800, NULL, 0, 2, 0, 2, 'E1,E2,', '', NULL, NULL, '2019-01-07 00:00:00', '2019-01-07 06:23:40', 0),
(234, 'BB7N8WSF', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 1800, NULL, 0, 2, 0, 2, 'E1,E2,', '', NULL, NULL, '2019-01-07 00:00:00', '2019-01-07 06:23:45', 0),
(235, 'B0U11HNH', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 1800, NULL, 0, 2, 0, 2, 'E1,E2,', '', NULL, NULL, '2019-01-07 00:00:00', '2019-01-07 06:23:50', 0),
(236, 'BB0LFXKI', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 1800, NULL, 0, 2, 0, 2, 'E1,E2,', '', NULL, NULL, '2019-01-07 00:00:00', '2019-01-07 06:23:55', 0),
(237, 'B2593ROM', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 1800, NULL, 0, 2, 0, 2, 'E1,E2,', '', NULL, NULL, '2019-01-07 00:00:00', '2019-01-07 06:24:00', 0),
(238, 'BH0PYEJJ', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 1800, NULL, 0, 2, 0, 2, 'E1,E2,', '', NULL, NULL, '2019-01-07 00:00:00', '2019-01-07 06:24:05', 0),
(239, 'BUNJ7C5C', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 1800, NULL, 0, 2, 0, 2, 'E1,E2,', '', NULL, NULL, '2019-01-07 00:00:00', '2019-01-07 06:24:10', 0),
(240, 'BQJLSSHQ', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 900, NULL, 0, 1, 0, 1, '', '', NULL, NULL, '2019-01-07 00:00:00', '2019-01-07 06:25:18', 0),
(241, 'BRF0BFOV', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 1800, NULL, 0, 2, 0, 2, 'B2,C1,', '', NULL, NULL, '2019-01-07 00:00:00', '2019-01-07 06:28:33', 0),
(246, 'B2F3R1ZL', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 1800, NULL, 0, 2, 0, 2, 'C1,C2,', '', NULL, NULL, '2019-01-07 00:00:00', '2019-01-07 06:59:05', 0),
(247, 'B74AMQ60', '6', 'PCYOU950', 13, 'Kribi', 'Douala', 'Breakfast', 2660, NULL, 0, 3, 0, 3, 'B3,A4,A3,', '', NULL, NULL, '2019-01-07 00:00:00', '2019-01-07 07:03:32', 0),
(248, 'BGIPOD14', '6', 'PCYOU950', 13, 'Kribi', 'Douala', 'Breakfast', 2660, NULL, 0, 3, 0, 3, 'B3,A4,A3,D3,', '', NULL, NULL, '2019-01-07 00:00:00', '2019-01-07 07:03:46', 0),
(249, 'B9LQ2VSC', '6', 'PCYOU950', 13, 'Kribi', 'Douala', 'Breakfast', 2660, NULL, 0, 3, 0, 3, 'A4,A3,D3,', '', NULL, NULL, '2019-01-07 00:00:00', '2019-01-07 07:04:17', 0),
(250, 'BXUEY10E', '6', 'PCYOU950', 13, 'Kribi', 'Douala', 'Breakfast', 2660, NULL, 0, 3, 0, 3, 'A4,A3,D3,', '', NULL, NULL, '2019-01-07 00:00:00', '2019-01-07 07:04:32', 0),
(251, 'B8TUWBX7', '6', 'PCYOU950', 13, 'Kribi', 'Douala', 'Breakfast', 2660, NULL, 0, 3, 0, 3, 'A4,A3,', '', NULL, NULL, '2019-01-07 00:00:00', '2019-01-07 07:05:14', 0),
(252, 'BD4WZ5IZ', '6', 'PCYOU950', 13, 'Kribi', 'Douala', 'Breakfast', 2660, NULL, 0, 3, 0, 3, 'E1,E2,', '', NULL, NULL, '2019-01-07 00:00:00', '2019-01-07 07:05:56', 0),
(253, 'BEDNS6H9', '6', 'PCYOU950', 13, 'Kribi', 'Douala', 'Breakfast', 2660, NULL, 0, 3, 0, 3, 'E1,E2,F1,', '', NULL, NULL, '2019-01-07 00:00:00', '2019-01-07 07:06:10', 0),
(254, 'BMN2OH81', '6', 'PCYOU950', 13, 'Kribi', 'Douala', 'Breakfast', 2660, NULL, 0, 3, 0, 3, 'E2,F1,', '', NULL, NULL, '2019-01-07 00:00:00', '2019-01-07 07:06:35', 0),
(255, 'BRP2N60G', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Edea', 'Breakfast,Free wifi', 1800, NULL, 0, 2, 0, 2, 'C1,C2,', '', NULL, NULL, '2019-01-07 00:00:00', '2019-01-07 07:24:07', 0),
(256, 'BZRAHAZY', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Edea', 'Breakfast,Free wifi', 1800, NULL, 0, 2, 0, 2, 'D2,C2,C1,', '', NULL, NULL, '2019-01-07 00:00:00', '2019-01-07 08:48:41', 0),
(257, 'BALUNJK7', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Edea', 'Breakfast,Free wifi', 1800, NULL, 0, 2, 0, 2, 'E3,E4,D4,', '', NULL, NULL, '2019-01-07 00:00:00', '2019-01-07 08:48:56', 0),
(258, 'BTPFFPBI', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Edea', 'Breakfast,Free wifi', 1800, NULL, 0, 2, 0, 2, 'D3,D4,', '', NULL, NULL, '2019-01-07 00:00:00', '2019-01-07 08:49:05', 0),
(259, 'BSXJSCTD', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 2660, NULL, 0, 3, 0, 3, 'C1,C2,D2,', '', NULL, NULL, '2019-01-07 00:00:00', '2019-01-07 08:56:14', 0),
(260, 'B07V9QP5', '6', 'P8DXZC2Z', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 1800, NULL, 0, 2, 0, 2, 'C1,C2,', '', NULL, NULL, '2019-01-07 00:00:00', '2019-01-07 08:58:32', 0),
(261, 'B4LP3X8H', '6', 'P8DXZC2Z', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 1900, NULL, 1, 1, 0, 2, 'C2,C1,', '', NULL, NULL, '2019-01-07 00:00:00', '2019-01-07 09:00:41', 0),
(262, 'BTOG3JPJ', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Edea', 'Breakfast,Free wifi', 3580, NULL, 0, 4, 0, 4, 'C2,C1,', '', NULL, NULL, '2019-01-07 00:00:00', '2019-01-07 09:03:44', 0),
(263, 'B29EH2D5', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Edea', 'Breakfast,Free wifi', 3580, NULL, 0, 4, 0, 4, 'A3,A4,B3,B4,', '', NULL, NULL, '2019-01-07 00:00:00', '2019-01-07 09:04:03', 0),
(264, 'BX5R8G2T', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 900, NULL, 0, 1, 0, 1, 'C1,', '', NULL, NULL, '2019-01-07 00:00:00', '2019-01-07 09:07:26', 0),
(265, 'B6JOXP6I', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 1800, NULL, 0, 2, 0, 2, 'C2,C1,', '', NULL, NULL, '2019-01-07 00:00:00', '2019-01-07 09:09:19', 0),
(272, 'B6M72QK0', '7', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 1000, NULL, 1, 0, 0, 1, '', '', NULL, NULL, '2019-01-07 00:00:00', '2019-01-07 11:28:17', 0),
(273, 'BHN3NZ5I', '7', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 1000, NULL, 1, 0, 0, 1, 'E1,E2,', '', NULL, NULL, '2019-01-07 00:00:00', '2019-01-07 11:28:25', 0),
(274, 'BCNGGCF3', '7', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 1000, NULL, 1, 0, 0, 1, 'F1,', '', NULL, NULL, '2019-01-07 00:00:00', '2019-01-07 11:28:42', 0),
(275, 'BS97GVOW', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Edea', 'Breakfast', 900, NULL, 0, 1, 0, 1, 'A1,', '', NULL, NULL, '2019-01-07 00:00:00', '2019-01-07 12:16:01', 0),
(276, 'BNBDG25K', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 1000, NULL, 1, 0, 0, 1, '', '', NULL, NULL, '2019-01-08 00:00:00', '2019-01-08 06:03:02', 0),
(277, 'BAF6AF2O', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 1000, NULL, 1, 0, 0, 1, '', '', NULL, NULL, '2019-01-08 00:00:00', '2019-01-08 06:03:29', 0),
(278, 'B9DZD7X5', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 1000, NULL, 1, 0, 0, 1, 'A1,A2,', '', NULL, NULL, '2019-01-08 00:00:00', '2019-01-08 06:03:44', 0),
(279, 'BVAML8X8', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 1000, NULL, 1, 0, 0, 1, 'A1,', '', NULL, NULL, '2019-01-08 00:00:00', '2019-01-08 06:03:59', 0),
(280, 'B4DX3RJC', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 1800, NULL, 0, 2, 0, 2, 'A2,', '', NULL, NULL, '2019-01-08 00:00:00', '2019-01-08 06:10:17', 0),
(281, 'B9JSPGPT', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 1800, NULL, 0, 2, 0, 2, 'A1,A2,', '', NULL, NULL, '2019-01-08 00:00:00', '2019-01-08 06:10:31', 0),
(282, 'B7LHA01B', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 1800, NULL, 0, 2, 0, 2, 'A1,A2,', '', NULL, NULL, '2019-01-08 00:00:00', '2019-01-08 06:10:56', 0),
(284, 'BCZ8EM2R', '6', 'undefined', 13, 'Kribi', 'Douala', 'Breakfast', 1800, NULL, 0, 2, 0, 2, 'B1,B2,', '', NULL, NULL, '2019-01-08 00:00:00', '2019-01-08 06:29:43', 0),
(285, 'B1A6WIA2', '6', 'undefined', 13, 'Kribi', 'Edea', 'Breakfast,Free wifi', 1800, NULL, 0, 2, 0, 2, 'E1,E2,', '', NULL, NULL, '2019-01-07 00:00:00', '2019-01-08 06:30:48', 0),
(288, 'BIUTWEYH', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 1800, NULL, 0, 2, 0, 2, 'A2,', '', NULL, NULL, '2019-01-08 00:00:00', '2019-01-08 07:17:47', 0),
(291, 'BHUYLRET', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 2760, NULL, 2, 0, 1, 3, 'B3,C3,D3,', '', NULL, NULL, '2019-01-08 00:00:00', '2019-01-08 09:48:05', 0),
(293, 'BSZOLUKF', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 1000, NULL, 1, 0, 0, 1, 'B1,', '', NULL, NULL, '2019-01-08 00:00:00', '2019-01-08 10:45:15', 0),
(294, 'BF79ENZ8', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Edea', '', 1000, NULL, 1, 0, 0, 1, 'F1,', '', NULL, NULL, '2019-01-08 00:00:00', '2019-01-08 10:47:03', 0),
(295, 'BN3XOADK', '6', 'PCYOU950', 13, 'Bafoussam', 'Douala', '', 1000, NULL, 1, 0, 0, 1, 'F1,', '', NULL, NULL, '2019-01-08 00:00:00', '2019-01-08 10:50:37', 0),
(296, 'BU7A2814', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 900, NULL, 0, 1, 0, 1, 'B1,', '', NULL, NULL, '2019-01-08 00:00:00', '2019-01-08 10:53:03', 0),
(297, 'BONOERLR', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 900, NULL, 0, 1, 0, 1, 'F1,', '', NULL, NULL, '2019-01-08 00:00:00', '2019-01-08 10:53:11', 0),
(298, 'BFUWDMY3', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 1800, NULL, 0, 2, 0, 2, 'F1,E1,', '', NULL, NULL, '2019-01-08 00:00:00', '2019-01-08 10:55:19', 0),
(299, 'BWR1COF6', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 900, NULL, 0, 1, 0, 1, 'B1,', '', NULL, NULL, '2019-01-08 00:00:00', '2019-01-08 11:02:08', 0),
(300, 'BOX1CLV5', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Bafoussam', '', 900, NULL, 0, 1, 0, 1, 'F1,', '', NULL, NULL, '2019-01-08 00:00:00', '2019-01-08 11:07:32', 0),
(301, 'B0XT5STX', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Bafoussam', '', 1000, NULL, 1, 0, 0, 1, 'F1,', '', NULL, NULL, '2019-01-08 00:00:00', '2019-01-08 11:09:16', 0),
(302, 'BU1GO8SR', '6', 'PCYOU950', 13, 'Kribi', 'Douala', '', 1900, NULL, 0, 0, 2, 2, 'E2,E1,', '', NULL, NULL, '2019-01-08 00:00:00', '2019-01-08 11:14:33', 0),
(303, 'BPQE10I7', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Edea', '', 900, NULL, 0, 1, 0, 1, 'F1,', '', NULL, NULL, '2019-01-08 00:00:00', '2019-01-08 11:17:44', 0),
(304, 'B13HQ4N6', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 1800, NULL, 0, 2, 0, 2, 'C1,', '', NULL, NULL, '2019-01-09 00:00:00', '2019-01-09 06:41:32', 0),
(305, 'BY0JUZRW', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 1800, NULL, 0, 2, 0, 2, 'C1,C2,D2,', '', NULL, NULL, '2019-01-09 00:00:00', '2019-01-09 06:41:48', 0),
(306, 'BLNQH86B', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 1800, NULL, 0, 2, 0, 2, 'C3,C4,D3,D4,E3,E4,', '', NULL, NULL, '2019-01-09 00:00:00', '2019-01-09 06:41:56', 0),
(307, 'B1NTFQI3', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 1800, NULL, 0, 2, 0, 2, 'A3,A4,', '', NULL, NULL, '2019-01-09 00:00:00', '2019-01-09 06:42:02', 0),
(308, 'B6T07IV9', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 1800, NULL, 0, 2, 0, 2, 'B1,', '', NULL, NULL, '2019-01-09 00:00:00', '2019-01-09 08:01:41', 0),
(309, 'BTOAH0X1', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 1800, NULL, 0, 2, 0, 2, 'B1,B2,', '', NULL, NULL, '2019-01-09 00:00:00', '2019-01-09 08:01:51', 0),
(310, 'BOG82BPD', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 900, NULL, 0, 1, 0, 1, 'A2,', '', NULL, NULL, '2019-01-09 00:00:00', '2019-01-09 08:07:55', 0),
(317, 'BK0YXJRF', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 9200, NULL, 5, 5, 0, 10, 'C2,E3,D4,', '', NULL, NULL, '2019-01-09 00:00:00', '2019-01-09 12:08:14', 0),
(318, 'BB0RLNFQ', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 9200, NULL, 5, 5, 0, 10, 'F1,E1,D1,C1,E2,D2,C2,B2,E3,E4,', '', NULL, NULL, '2019-01-09 00:00:00', '2019-01-09 12:08:31', 0),
(321, 'BS7UNTYA', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Edea', '', 900, NULL, 0, 1, 0, 1, 'B4,', '', NULL, NULL, '2019-01-09 00:00:00', '2019-01-09 12:13:43', 0),
(322, 'BHD9KBQY', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 1800, NULL, 0, 2, 0, 2, 'A1,A2,', '', NULL, NULL, '2019-01-10 00:00:00', '2019-01-09 18:31:00', 0),
(324, 'B4DIQIQQ', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Bafoussam', '', 1000, NULL, 1, 0, 0, 1, '', '', NULL, NULL, '2019-01-10 00:00:00', '2019-01-10 07:26:24', 0),
(325, 'B3BBOOE9', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Bafoussam', '', 1000, NULL, 1, 0, 0, 1, 'F1,', '', NULL, NULL, '2019-01-10 00:00:00', '2019-01-10 07:26:31', 0),
(326, 'BW5JFINS', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'LimbÃƒÂ©', '', 950, NULL, 0, 0, 1, 1, 'A2,', '', NULL, NULL, '2019-01-10 00:00:00', '2019-01-10 08:40:27', 0),
(327, 'B6J8MW0K', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Bafoussam', '', 1000, NULL, 1, 0, 0, 1, 'A2,', '', NULL, NULL, '2019-01-10 00:00:00', '2019-01-10 08:50:46', 0),
(328, 'B9HWLP6Q', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Douala', '', 1000, NULL, 1, 0, 0, 1, 'A2,', '', NULL, NULL, '2019-01-10 00:00:00', '2019-01-10 08:53:27', 0),
(329, 'BXF51P2N', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Bafoussam', '', 1000, NULL, 1, 0, 0, 1, 'A2,', '', NULL, NULL, '2019-01-10 00:00:00', '2019-01-10 08:57:03', 0),
(330, 'BUSW5JDC', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Bafoussam', '', 1000, NULL, 1, 0, 0, 1, 'F1,', '', NULL, NULL, '2019-01-10 00:00:00', '2019-01-10 08:58:32', 0),
(331, 'BTSF2D8V', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Bafoussam', '', 1000, NULL, 1, 0, 0, 1, 'A2,', '', NULL, NULL, '2019-01-10 00:00:00', '2019-01-10 09:03:32', 0),
(335, 'B2GVLWMO', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi', 1000, NULL, 1, 0, 0, 1, '', '', NULL, NULL, '2019-01-10 00:00:00', '2019-01-10 12:01:28', 0),
(339, 'BDA91XTE', '4', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Douala', '', 2760, NULL, 3, 0, 0, 3, 'B1,B2,B3,', '', NULL, NULL, '2019-01-10 00:00:00', '2019-01-10 12:04:06', 0),
(340, 'BJWNZZGP', '5', 'P8DXZC2Z', 13, 'LimbÃƒÂ©', 'Kribi', 'Free wifi', 1000, NULL, 1, 0, 0, 1, 'E2,D3,', '', NULL, NULL, '2019-01-10 00:00:00', '2019-01-10 12:08:56', 0);
INSERT INTO `ws_booking_history` (`id`, `id_no`, `trip_id_no`, `tkt_passenger_id_no`, `trip_route_id`, `pickup_trip_location`, `drop_trip_location`, `request_facilities`, `price`, `discount`, `adult`, `child`, `special`, `total_seat`, `seat_numbers`, `offer_code`, `tkt_refund_id`, `agent_id`, `booking_date`, `date`, `status`) VALUES
(341, 'B5BEVHWY', '5', 'P8DXZC2Z', 13, 'LimbÃƒÂ©', 'Kribi', 'Free wifi', 1000, NULL, 1, 0, 0, 1, 'D3,E2,', '', NULL, NULL, '2019-01-10 00:00:00', '2019-01-10 12:09:07', 0),
(342, 'BYD37GSY', '5', 'P8DXZC2Z', 13, 'LimbÃƒÂ©', 'Kribi', 'Free wifi', 1000, NULL, 1, 0, 0, 1, 'D2,', '', NULL, NULL, '2019-01-10 00:00:00', '2019-01-10 12:09:30', 0),
(343, 'B71N96HJ', '5', 'P8DXZC2Z', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 2000, NULL, 2, 0, 0, 2, 'B3,B4,', '', NULL, NULL, '2019-01-10 00:00:00', '2019-01-10 12:12:09', 0),
(344, 'BFI4S516', '5', 'P8DXZC2Z', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast', 2000, NULL, 2, 0, 0, 2, 'B3,', '', NULL, NULL, '2019-01-10 00:00:00', '2019-01-10 12:12:15', 0),
(345, 'BHZFRICN', '4', 'P8DXZC2Z', 13, 'Edea', 'Douala', 'Free wifi', 2000, NULL, 2, 0, 0, 2, 'B2,B3,', '', NULL, NULL, '2019-01-10 00:00:00', '2019-01-10 12:12:57', 0),
(348, 'B7MACNO6', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Edea', '', 900, NULL, 0, 1, 0, 1, 'A1,', '', NULL, NULL, '2019-01-12 00:00:00', '2019-01-12 06:03:10', 0),
(352, 'B5ZCU89D', '6', 'P8DXZC2Z', 13, 'LimbÃƒÂ©', 'Kribi', 'Free wifi,Breakfast,', 1800, NULL, 0, 2, 0, 2, '', '', NULL, NULL, '2019-01-12 00:00:00', '2019-01-12 08:54:27', 0),
(356, 'BMC6L14E', '4', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Edea', 'Breakfast,', 400, NULL, 0, 1, 0, 1, 'F3,', '', NULL, NULL, '2019-01-11 00:00:00', '2019-01-12 10:01:20', 0),
(358, 'BEOSOETG', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Edea', '', 900, NULL, 0, 1, 0, 1, 'A1,', '', NULL, NULL, '2019-01-12 00:00:00', '2019-01-12 11:59:10', 0),
(359, 'B0PIDMDP', '4', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi,', 500, NULL, 1, 0, 0, 1, 'A1,', '', NULL, NULL, '2019-01-12 00:00:00', '2019-01-12 12:12:11', 0),
(360, 'BBF58JF0', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'LimbÃƒÂ©', '', 4600, NULL, 5, 0, 0, 5, 'C3,B4,', '', NULL, NULL, '2019-01-12 00:00:00', '2019-01-12 12:29:38', 0),
(362, 'BFCA6ST2', '4', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Bafoussam', '', 1000, NULL, 2, 0, 0, 2, 'A1,A2,', '', NULL, NULL, '2019-02-01 00:00:00', '2019-01-12 19:50:24', 0),
(364, 'BIU4TRKO', '7', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Edea', 'Breakfast,coffee,', 1000, NULL, 1, 0, 0, 1, 'F2,', '', NULL, NULL, '2019-01-13 00:00:00', '2019-01-13 06:54:47', 0),
(366, 'BZUATFLP', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Douala', 'Snacks,', 1000, NULL, 1, 0, 0, 1, 'A2,', '', NULL, NULL, '2019-01-13 00:00:00', '2019-01-13 07:10:38', 0),
(367, 'BWUU8KPV', '5', 'P8DXZC2Z', 13, 'LimbÃƒÂ©', 'Edea', '', 1000, NULL, 0, 2, 0, 2, '', '', NULL, NULL, '2019-01-13 00:00:00', '2019-01-13 07:22:44', 0),
(369, 'BG1C9E6T', '4', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,', 500, NULL, 1, 0, 0, 1, '', '', NULL, NULL, '2019-01-13 00:00:00', '2019-01-13 07:27:04', 0),
(371, 'B2QT1SBI', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Edea', '', 1000, NULL, 1, 0, 0, 1, 'A2,', '', NULL, NULL, '2019-01-13 00:00:00', '2019-01-13 08:26:40', 0),
(372, 'B3F1GPTX', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Edea', '', 1000, NULL, 1, 0, 0, 1, '', '', NULL, NULL, '2019-01-13 00:00:00', '2019-01-13 08:26:51', 0),
(373, 'BP3DYCCJ', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Edea', '', 1000, NULL, 1, 0, 0, 1, 'F2,', '', NULL, NULL, '2019-01-13 00:00:00', '2019-01-13 08:27:00', 0),
(374, 'B1YBPDSC', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Edea', '', 1000, NULL, 1, 0, 0, 1, 'F1,', '', NULL, NULL, '2019-01-13 00:00:00', '2019-01-13 08:27:40', 0),
(375, 'B3DMMP19', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 900, NULL, 0, 1, 0, 1, 'A1,', '', NULL, NULL, '1970-01-01 00:00:00', '2019-01-13 08:33:04', 0),
(376, 'B4KDXC9K', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 1000, NULL, 1, 0, 0, 1, 'A1,', '', NULL, NULL, '2019-01-13 00:00:00', '2019-01-13 08:39:46', 0),
(377, 'B6YOVUC2', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 1000, NULL, 1, 0, 0, 1, 'A1,', '', NULL, NULL, '2019-01-13 00:00:00', '2019-01-13 09:18:05', 0),
(378, 'B9T873WJ', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 1000, NULL, 1, 0, 0, 1, '', '', NULL, NULL, '2019-01-13 00:00:00', '2019-01-13 09:23:21', 0),
(379, 'B5GH31KI', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 1000, NULL, 1, 0, 0, 1, 'A1,', '', NULL, NULL, '2019-01-13 00:00:00', '2019-01-13 09:23:35', 0),
(380, 'BWSLWXMY', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Edea', '', 900, NULL, 0, 1, 0, 1, 'F2,', '', NULL, NULL, '2019-01-13 00:00:00', '2019-01-13 09:25:32', 0),
(381, 'BPYMFBB5', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Bafoussam', 'Breakfast,Snacks,coffee,', 900, NULL, 0, 1, 0, 1, 'A1,', '', NULL, NULL, '2019-01-13 00:00:00', '2019-01-13 09:46:40', 0),
(382, 'BKXBRH9P', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,', 900, NULL, 0, 1, 0, 1, 'F2,', '', NULL, NULL, '2019-01-13 00:00:00', '2019-01-13 09:48:26', 0),
(383, 'BEYNCGCR', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 1000, NULL, 1, 0, 0, 1, 'A1,', '', NULL, NULL, '2019-01-13 00:00:00', '2019-01-13 09:56:04', 0),
(384, 'B5JY10WS', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 1000, NULL, 1, 0, 0, 1, 'A1,', '', NULL, NULL, '2019-01-13 00:00:00', '2019-01-13 10:36:18', 0),
(385, 'BK9AMLUO', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 1000, NULL, 1, 0, 0, 1, 'F2,', '', NULL, NULL, '2019-01-13 00:00:00', '2019-01-13 10:41:38', 0),
(386, 'BYA1LZRI', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi,', 900, NULL, 0, 1, 0, 1, 'A1,', '', NULL, NULL, '2019-01-13 00:00:00', '2019-01-13 10:57:19', 0),
(387, 'B2ZPK9Y8', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,', 1000, NULL, 1, 0, 0, 1, '', '', NULL, NULL, '2019-01-13 00:00:00', '2019-01-13 11:09:35', 0),
(388, 'BKIH7ZX6', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,', 1000, NULL, 1, 0, 0, 1, 'F4,', '', NULL, NULL, '2019-01-13 00:00:00', '2019-01-13 11:09:42', 0),
(389, 'BOCY4IF2', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Douala', '', 1000, NULL, 1, 0, 0, 1, '', '', NULL, NULL, '2019-01-13 00:00:00', '2019-01-13 11:12:33', 0),
(390, 'BA5OJ7IA', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Douala', '', 1000, NULL, 1, 0, 0, 1, 'F2,', '', NULL, NULL, '2019-01-13 00:00:00', '2019-01-13 11:12:39', 0),
(391, 'BMQJQ9O6', '6', 'P8DXZC2Z', 13, 'LimbÃƒÂ©', 'Kribi', 'Free wifi,Breakfast,', 1000, NULL, 1, 0, 0, 1, 'F1,', '', NULL, NULL, '2019-01-13 00:00:00', '2019-01-13 11:15:02', 0),
(392, 'B5UW7ZJ2', '4', 'P8DXZC2Z', 13, 'LimbÃƒÂ©', 'Douala', '', 400, NULL, 0, 1, 0, 1, 'F3,', '', NULL, NULL, '2019-01-13 00:00:00', '2019-01-13 11:17:38', 0),
(393, 'B85RC2WY', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Edea', 'Breakfast,coffee,', 1000, NULL, 1, 0, 0, 1, 'C2,', '', NULL, NULL, '2019-01-13 00:00:00', '2019-01-13 12:58:00', 0),
(394, 'BVNMACPW', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 1000, NULL, 1, 0, 0, 1, 'A1,', '', NULL, NULL, '2019-01-13 00:00:00', '2019-01-13 13:30:51', 0),
(395, 'BZKGH7Y3', '4', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,', 500, NULL, 1, 0, 0, 1, '', '', NULL, NULL, '2019-01-14 00:00:00', '2019-01-14 05:30:28', 0),
(396, 'BSAWZXBS', '4', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,', 500, NULL, 1, 0, 0, 1, 'F3,', '', NULL, NULL, '2019-01-14 00:00:00', '2019-01-14 05:30:35', 0),
(397, 'BOZETY3V', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Douala', 'Breakfast,Free wifi,Snacks,coffee,', 1000, NULL, 1, 0, 0, 1, '', '', NULL, NULL, '2019-01-14 00:00:00', '2019-01-14 07:30:12', 0),
(398, 'BS2MVG7B', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Douala', 'Breakfast,Free wifi,Snacks,coffee,', 1000, NULL, 1, 0, 0, 1, 'F1,', '', NULL, NULL, '2019-01-14 00:00:00', '2019-01-14 07:30:20', 0),
(399, 'B00TAN1U', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 900, NULL, 0, 1, 0, 1, 'F2,', '', NULL, NULL, '2019-01-14 00:00:00', '2019-01-14 08:15:05', 0),
(400, 'BU2SCLYO', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 900, NULL, 0, 1, 0, 1, 'F2,', '', NULL, NULL, '2019-01-14 00:00:00', '2019-01-14 08:16:06', 0),
(401, 'BV1DLHZY', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Edea', '', 1000, NULL, 1, 0, 0, 1, '', '', NULL, NULL, '2019-01-13 00:00:00', '2019-01-14 08:30:26', 0),
(402, 'BZ74DFVC', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Edea', '', 1000, NULL, 1, 0, 0, 1, '', '', NULL, NULL, '2019-01-13 00:00:00', '2019-01-14 08:31:11', 0),
(403, 'BN5NHTT3', '6', 'PL3CM7L2', 13, 'LimbÃƒÂ©', 'Kribi', NULL, 1000, 0, 1, 0, 0, 1, 'F3, ', '', NULL, NULL, '2018-12-13 14:55:31', '2019-01-14 14:55:31', 0),
(406, 'BQ7EG7TX', '6', 'PS0FZQL9', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi,Snacks,coffee,', 1000, NULL, 1, 0, 0, 1, '', '', NULL, NULL, '2019-01-14 00:00:00', '2019-01-14 11:06:40', 0),
(407, 'BN2JO7XX', '6', 'PS0FZQL9', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi,Snacks,coffee,', 1000, NULL, 1, 0, 0, 1, 'A1,', '', NULL, NULL, '2019-01-14 00:00:00', '2019-01-14 11:06:45', 0),
(408, 'BOEO2NN0', '7', 'PS0FZQL9', 13, 'LimbÃƒÂ©', 'Douala', 'Breakfast,coffee,', 1800, NULL, 0, 2, 0, 2, '', '', NULL, NULL, '2019-01-14 00:00:00', '2019-01-14 11:16:25', 0),
(410, 'B5QGLRLJ', '4', 'P8DXZC2Z', 13, 'LimbÃƒÂ©', 'Douala', 'Breakfast,', 800, NULL, 0, 2, 0, 2, 'A1,A2,', '', NULL, NULL, '2019-01-14 00:00:00', '2019-01-14 11:19:30', 0),
(411, 'BB3GDFTD', '4', 'P8DXZC2Z', 13, 'LimbÃƒÂ©', 'Douala', 'Breakfast,', 800, NULL, 0, 2, 0, 2, 'A1,A2,F4,', '', NULL, NULL, '2019-01-14 00:00:00', '2019-01-14 11:19:57', 0),
(412, 'BH272PTG', '4', 'P8DXZC2Z', 13, 'LimbÃƒÂ©', 'Douala', 'Breakfast,', 800, NULL, 0, 2, 0, 2, '', '', NULL, NULL, '2019-01-14 00:00:00', '2019-01-14 11:20:03', 0),
(414, 'BKP74Y2M', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Bafoussam', '', 900, NULL, 0, 1, 0, 1, 'A2,', '', NULL, NULL, '2019-01-14 00:00:00', '2019-01-14 12:31:35', 0),
(415, 'BP7KNR6S', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Bafoussam', '', 900, NULL, 0, 1, 0, 1, 'A2,B2,', '', NULL, NULL, '2019-01-14 00:00:00', '2019-01-14 12:33:49', 0),
(416, 'BEDYXHXV', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Bafoussam', '', 900, NULL, 0, 1, 0, 1, 'A2,B2,', '', NULL, NULL, '2019-01-14 00:00:00', '2019-01-14 12:33:55', 0),
(417, 'BZE9RMH0', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 1000, NULL, 1, 0, 0, 1, '', '', NULL, NULL, '2019-01-18 00:00:00', '2019-01-15 04:56:35', 0),
(418, 'B7BVQHMU', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 1000, NULL, 1, 0, 0, 1, 'A1,', '', NULL, NULL, '2019-01-18 00:00:00', '2019-01-15 04:56:41', 0),
(420, 'BU58BIMX', '6', 'PS0FZQL9', 13, 'LimbÃƒÂ©', 'Douala', 'Free wifi,Breakfast,Snacks,coffee,', 1000, NULL, 1, 0, 0, 1, 'B3,B4,', '', NULL, NULL, '2019-02-01 00:00:00', '2019-01-15 05:35:25', 0),
(423, 'BHXIRDQ3', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Edea', 'Breakfast,Free wifi,Snacks,coffee,', 900, NULL, 0, 1, 0, 1, 'A1,', '', NULL, NULL, '2019-01-22 00:00:00', '2019-01-15 05:42:07', 0),
(424, 'BEFWMNPM', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 1000, NULL, 1, 0, 0, 1, 'A1,', '', NULL, NULL, '2019-01-15 00:00:00', '2019-01-15 06:07:58', 0),
(425, 'BYJDB61Q', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Douala', 'Breakfast,Free wifi,', 1800, NULL, 0, 2, 0, 2, 'A1,A2,', '', NULL, NULL, '2019-01-15 00:00:00', '2019-01-15 07:02:57', 0),
(426, 'BIR2EEP7', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 1800, NULL, 0, 2, 0, 2, 'A1,A2,', '', NULL, NULL, '2019-01-15 00:00:00', '2019-01-15 08:25:12', 0),
(427, 'BD8H9Z07', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Edea', 'Breakfast,Free wifi,Snacks,', 1800, NULL, 0, 2, 0, 2, 'A3,A4,', '', NULL, NULL, '2019-01-15 00:00:00', '2019-01-15 08:32:30', 0),
(428, 'BMSD671N', '6', 'P52ZC05X', 13, 'LimbÃƒÂ©', 'Edea', 'Breakfast,Free wifi,Snacks,', 900, NULL, 0, 1, 0, 1, 'B3,', '', NULL, NULL, '2019-01-16 00:00:00', '2019-01-15 08:36:20', 0),
(429, 'BMLCSX3I', '6', 'P52ZC05X', 13, 'LimbÃƒÂ©', 'Edea', 'Breakfast,Free wifi,Snacks,', 900, NULL, 0, 1, 0, 1, '', '', NULL, NULL, '2019-01-16 00:00:00', '2019-01-15 08:36:26', 0),
(430, 'BY5TMGQ1', '6', 'P52ZC05X', 13, 'LimbÃƒÂ©', 'Edea', 'Breakfast,Free wifi,Snacks,', 900, NULL, 0, 1, 0, 1, 'A3,', '', NULL, NULL, '2019-01-16 00:00:00', '2019-01-15 08:36:32', 0),
(431, 'BGSR630X', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Douala', 'Breakfast,', 900, NULL, 0, 1, 0, 1, 'B2,', '', NULL, NULL, '2019-01-16 00:00:00', '2019-01-15 09:12:14', 0),
(432, 'B746WF3Q', '6', 'PCYOU950', 13, 'Douala', 'LimbÃƒÂ©', '', 900, NULL, 0, 1, 0, 1, 'A1,', '', NULL, NULL, '2019-01-17 00:00:00', '2019-01-15 09:14:51', 0),
(433, 'B9M5AHRC', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Kribi', '', 900, NULL, 0, 1, 0, 1, 'A1,', '', NULL, NULL, '2019-02-16 00:00:00', '2019-01-15 09:22:44', 0),
(434, 'BM9Y2X8N', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Douala', 'Breakfast,Free wifi,', 900, NULL, 0, 1, 0, 1, 'B2,', '', NULL, NULL, '2019-01-16 00:00:00', '2019-01-15 09:24:14', 0),
(435, 'BEQYNNP7', '4', 'PCYOU950', 13, 'Bafoussam', 'LimbÃƒÂ©', '', 400, NULL, 0, 1, 0, 1, 'A1,', '', NULL, NULL, '2019-01-16 00:00:00', '2019-01-15 09:25:50', 0),
(436, 'BMEH26CI', '4', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Edea', 'Free wifi,Breakfast,', 500, NULL, 1, 0, 0, 1, 'A1,', '', NULL, NULL, '2019-01-16 00:00:00', '2019-01-15 09:27:16', 0),
(441, 'BP3V3LF6', '4', 'P52ZC05X', 13, 'LimbÃƒÂ©', 'Bafoussam', 'Breakfast,Free wifi,', 500, NULL, 1, 0, 0, 1, '', '', NULL, NULL, '2019-01-17 00:00:00', '2019-01-15 10:56:22', 0),
(442, 'BGQ37LEU', '4', 'P52ZC05X', 13, 'LimbÃƒÂ©', 'Bafoussam', 'Breakfast,Free wifi,', 500, NULL, 1, 0, 0, 1, 'A1,', '', NULL, NULL, '2019-01-17 00:00:00', '2019-01-15 10:56:30', 0),
(444, 'BPEA86X3', '6', 'PEA58KMM', 13, 'Kribi', 'Edea', 'Breakfast, Free wifi, Snacks, ', 1000, 0, 1, 0, 0, 1, 'A1, ', '', NULL, NULL, '2019-01-15 17:02:34', '2019-01-15 17:02:34', 0),
(445, 'BIAPHTT8', '6', 'PX07G7SN', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast, Free wifi, Snacks, ', 1000, 0, 1, 0, 0, 1, 'A1, ', '', NULL, NULL, '2019-01-15 17:04:22', '2019-01-15 17:04:22', 0),
(447, 'BEWJY57B', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Edea', 'Breakfast,Free wifi,Snacks,', 1000, NULL, 1, 0, 0, 1, 'B2,', '', NULL, NULL, '2019-01-16 00:00:00', '2019-01-15 11:10:12', 0),
(448, 'BA0JFEV8', '6', 'P8DXZC2Z', 13, 'LimbÃƒÂ©', 'Douala', 'Free wifi,Breakfast,', 1000, NULL, 1, 0, 0, 1, 'B2,', '', NULL, NULL, '2019-01-16 00:00:00', '2019-01-15 11:11:56', 0),
(449, 'BQ2KMZS1', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Edea', 'Breakfast,Free wifi,Snacks,coffee,', 1000, NULL, 1, 0, 0, 1, 'A2,', '', NULL, NULL, '2019-01-15 00:00:00', '2019-01-15 11:13:45', 0),
(450, 'BWRKNAOE', '6', 'PCYOU950', 13, 'LimbÃƒÂ©', 'Edea', 'Breakfast,Free wifi,Snacks,coffee,', 1000, NULL, 1, 0, 0, 1, 'A2,', '', NULL, NULL, '2019-01-15 00:00:00', '2019-01-15 11:13:47', 0),
(453, 'BYTGG7FZ', '6', 'P52ZC05X', 13, 'LimbÃƒÂ©', 'Kribi', 'Free wifi,Breakfast,Snacks,coffee,', 1000, NULL, 1, 0, 0, 1, 'A2,', '', NULL, NULL, '2019-01-15 00:00:00', '2019-01-15 13:36:50', 0),
(455, 'B5D2GCDZ', '6', 'P52ZC05X', 13, 'LimbÃƒÂ©', 'Douala', 'Breakfast,Free wifi,Snacks,coffee,', 1000, NULL, 1, 0, 0, 1, 'A1,', '', NULL, NULL, '2019-01-18 00:00:00', '2019-01-16 05:03:36', 0),
(456, 'BV3M05XZ', '4', 'P3FJL7FL', 13, 'Bafoussam', 'LimbÃƒÂ©', 'Breakfast,', 500, NULL, 1, 0, 0, 1, 'A3,', '', NULL, NULL, '2019-01-17 00:00:00', '2019-01-16 05:06:36', 0),
(457, 'BZRF9HXM', '4', 'P52ZC05X', 13, 'LimbÃƒÂ©', 'Bafoussam', 'Breakfast,Free wifi,', 400, NULL, 0, 1, 0, 1, 'A1,A2,', '', NULL, NULL, '2019-01-16 00:00:00', '2019-01-16 09:44:30', 0),
(458, 'BVUUS0HY', '4', 'P52ZC05X', 13, 'LimbÃƒÂ©', 'Bafoussam', 'Breakfast,Free wifi,', 400, NULL, 0, 1, 0, 1, 'A1,', '', NULL, NULL, '2019-01-16 00:00:00', '2019-01-16 09:44:41', 0),
(464, 'BSPKFZW6', '6', 'P52ZC05X', 13, 'LimbÃƒÂ©', 'Kribi', 'Breakfast,Free wifi,Snacks,coffee,', 900, NULL, 0, 1, 0, 1, 'A1,', '', NULL, NULL, '2019-01-17 00:00:00', '2019-01-17 04:51:33', 0),
(466, 'B7SNS65B', '4', 'P8D9YRUI', 13, 'Kribi', 'Edea', 'Breakfast, Free wifi, ', 500, 0, 1, 0, 0, 1, 'E4, ', '', NULL, NULL, '2018-12-13 12:32:50', '2019-01-17 12:32:50', 0),
(467, 'BVIG234D', '6', 'P52ZC05X', 13, 'LimbÃƒÂ©', 'Bafoussam', 'Breakfast,Free wifi,Snacks,', 1000, NULL, 1, 0, 0, 1, 'A1,', '', NULL, NULL, '2019-01-17 00:00:00', '2019-01-17 06:33:58', 0),
(468, 'BRG637RQ', '4', 'P52ZC05X', 13, 'Kribi', 'Bafoussam', NULL, 500, 0, 1, 0, 0, 1, 'F4, ', '', NULL, NULL, '2018-12-13 12:34:27', '2019-01-17 12:34:27', 0),
(469, 'B8DVHJ56', '4', 'P52ZC05X', 13, 'LimbÃƒÂ©', 'Kribi', '', 400, NULL, 0, 1, 0, 1, 'A1,', '', NULL, NULL, '2019-01-17 00:00:00', '2019-01-17 06:38:51', 0),
(471, 'BYD7UNQG', '6', 'P52ZC05X', 13, 'LimbÃƒÂ©', 'Edea', '', 2000, NULL, 2, 0, 0, 2, 'B1,B2,', '', NULL, NULL, '2019-02-18 00:00:00', '2019-01-17 13:33:13', 0),
(472, 'BB6TZPLJ', '1', 'PLDVCR8A', 10, 'KICUKIRO', 'BYUMBA', 'Free wifi, coffee, ', 2200, 0, 2, 0, 0, 2, 'A1, A2, ', '', NULL, NULL, '2020-05-15 15:16:37', '2020-05-15 15:16:37', 0),
(473, 'BXEF1RWC', '1', 'PR5SQCL1', 10, 'KICUKIRO', 'BYUMBA', 'Free wifi, coffee, ', 3050, 0, 2, 1, 0, 3, 'A1, A2, B1, ', '', NULL, NULL, '2020-05-15 15:32:36', '2020-05-15 15:32:36', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ws_offer`
--

CREATE TABLE `ws_offer` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `position` tinyint(4) DEFAULT '0',
  `image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ws_offer`
--

INSERT INTO `ws_offer` (`id`, `title`, `position`, `image`) VALUES
(1, 'Hurry Up!!', 1, 'application/modules/website/assets/images/offer/c2ff3acdf7a4ede238532af1a85e13e7.jpg'),
(2, 'Second Offer', 2, 'application/modules/website/assets/images/offer/9abdf3c800b1a2f782cc5c1ae8bd3421.jpg'),
(3, 'Third offer', 3, 'application/modules/website/assets/images/offer/804d03909157ed6b4ad6e479328fbc7e.jpg'),
(4, 'Forth Offer', 4, 'application/modules/website/assets/images/offer/0f8b154da2128d6da7fe024c83cbbf12.jpg'),
(5, 'Fifth Offer', 5, 'application/modules/website/assets/images/offer/be9b8ff243b9b4178b37011051b17d39.png'),
(6, 'Sixth Offer', 6, 'application/modules/website/assets/images/offer/1f6e0f2b592dd42fb0141f7e0b8aea19.png');

-- --------------------------------------------------------

--
-- Table structure for table `ws_payments`
--

CREATE TABLE `ws_payments` (
  `payment_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `txn_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_gross` float(10,2) NOT NULL,
  `currency_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `payer_email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payment_status` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ws_setting`
--

CREATE TABLE `ws_setting` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `slogan` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `timezone` varchar(200) DEFAULT NULL,
  `about` varchar(255) DEFAULT NULL,
  `description` text,
  `payment_type` varchar(30) DEFAULT NULL,
  `paypal_email` varchar(100) DEFAULT NULL,
  `bank_commission` float NOT NULL DEFAULT '0',
  `currency` varchar(50) DEFAULT NULL,
  `google_map` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ws_setting`
--

INSERT INTO `ws_setting` (`id`, `title`, `slogan`, `address`, `email`, `phone`, `favicon`, `logo`, `status`, `timezone`, `about`, `description`, `payment_type`, `paypal_email`, `bank_commission`, `currency`, `google_map`) VALUES
(1, 'Bus Ticket Management System', 'Bus Ticket Management System ', 'Kigali, Rwanda KN 20 Ave', 'aimejayd2012@gmail.com', '0784187303', 'application/modules/website/assets/images/icons/73c07d5ec5568d1f923a62b2df3e903c.gif', 'application/modules/website/assets/images/icons/2fc0f6907be48e5cb8291b9dc47084ca.png', 1, 'Africa/Cairo', '', '', 'enable', 'aimejayd2016@gmail.com', 0, 'USD', '<iframe src=\"https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d15950.00874801664!2d30.0928399!3d-1.9523778!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x5c61dab9a01d450f!2sAfrican%20Leadership%20University!5e0!3m2!1sen!2srw!4v1583834636057!5m2!1sen!2srw\" width=\"600\" height=\"450\" frameborder=\"0\" style=\"border:0;\" allowfullscreen=\"\" aria-hidden=\"false\" tabindex=\"0\"></iframe>');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acc_account_name`
--
ALTER TABLE `acc_account_name`
  ADD PRIMARY KEY (`account_id`);

--
-- Indexes for table `acn_account_transaction`
--
ALTER TABLE `acn_account_transaction`
  ADD PRIMARY KEY (`account_tran_id`);

--
-- Indexes for table `agent_info`
--
ALTER TABLE `agent_info`
  ADD PRIMARY KEY (`agent_id`);

--
-- Indexes for table `agent_ledger`
--
ALTER TABLE `agent_ledger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_info`
--
ALTER TABLE `bank_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bank_transaction`
--
ALTER TABLE `bank_transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `booking_downtime`
--
ALTER TABLE `booking_downtime`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_config`
--
ALTER TABLE `email_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_history`
--
ALTER TABLE `employee_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee_type`
--
ALTER TABLE `employee_type`
  ADD PRIMARY KEY (`type_id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`enquiry_id`);

--
-- Indexes for table `fit_fitness`
--
ALTER TABLE `fit_fitness`
  ADD PRIMARY KEY (`fitness_id`);

--
-- Indexes for table `fleet_facilities`
--
ALTER TABLE `fleet_facilities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fleet_registration`
--
ALTER TABLE `fleet_registration`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fleet_type`
--
ALTER TABLE `fleet_type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ftn_fitness_period`
--
ALTER TABLE `ftn_fitness_period`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `how_to_use`
--
ALTER TABLE `how_to_use`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module`
--
ALTER TABLE `module`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `module_permission`
--
ALTER TABLE `module_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ofr_offer`
--
ALTER TABLE `ofr_offer`
  ADD PRIMARY KEY (`offer_id`);

--
-- Indexes for table `payment_informations`
--
ALTER TABLE `payment_informations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pri_price`
--
ALTER TABLE `pri_price`
  ADD PRIMARY KEY (`price_id`);

--
-- Indexes for table `sec_menu_item`
--
ALTER TABLE `sec_menu_item`
  ADD PRIMARY KEY (`menu_id`);

--
-- Indexes for table `sec_role_permission`
--
ALTER TABLE `sec_role_permission`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sec_role_tbl`
--
ALTER TABLE `sec_role_tbl`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `sec_user_access_tbl`
--
ALTER TABLE `sec_user_access_tbl`
  ADD PRIMARY KEY (`role_acc_id`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shedule`
--
ALTER TABLE `shedule`
  ADD PRIMARY KEY (`shedule_id`);

--
-- Indexes for table `synchronizer_setting`
--
ALTER TABLE `synchronizer_setting`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ticket_notification`
--
ALTER TABLE `ticket_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tkt_booking`
--
ALTER TABLE `tkt_booking`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_no` (`id_no`);

--
-- Indexes for table `tkt_feedback`
--
ALTER TABLE `tkt_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tkt_passenger`
--
ALTER TABLE `tkt_passenger`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tkt_referal`
--
ALTER TABLE `tkt_referal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tkt_refund`
--
ALTER TABLE `tkt_refund`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_tkt_refund_tkt_booking` (`tkt_booking_id_no`);

--
-- Indexes for table `trip`
--
ALTER TABLE `trip`
  ADD PRIMARY KEY (`trip_id`);

--
-- Indexes for table `trip_assign`
--
ALTER TABLE `trip_assign`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trip_location`
--
ALTER TABLE `trip_location`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `trip_route`
--
ALTER TABLE `trip_route`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ws_booking_history`
--
ALTER TABLE `ws_booking_history`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_no` (`id_no`);

--
-- Indexes for table `ws_offer`
--
ALTER TABLE `ws_offer`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ws_payments`
--
ALTER TABLE `ws_payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `ws_setting`
--
ALTER TABLE `ws_setting`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acc_account_name`
--
ALTER TABLE `acc_account_name`
  MODIFY `account_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `acn_account_transaction`
--
ALTER TABLE `acn_account_transaction`
  MODIFY `account_tran_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `agent_info`
--
ALTER TABLE `agent_info`
  MODIFY `agent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `agent_ledger`
--
ALTER TABLE `agent_ledger`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bank_info`
--
ALTER TABLE `bank_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bank_transaction`
--
ALTER TABLE `bank_transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `booking_downtime`
--
ALTER TABLE `booking_downtime`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `email_config`
--
ALTER TABLE `email_config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `employee_history`
--
ALTER TABLE `employee_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `employee_type`
--
ALTER TABLE `employee_type`
  MODIFY `type_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `enquiry_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fit_fitness`
--
ALTER TABLE `fit_fitness`
  MODIFY `fitness_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `fleet_facilities`
--
ALTER TABLE `fleet_facilities`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `fleet_registration`
--
ALTER TABLE `fleet_registration`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `fleet_type`
--
ALTER TABLE `fleet_type`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ftn_fitness_period`
--
ALTER TABLE `ftn_fitness_period`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `how_to_use`
--
ALTER TABLE `how_to_use`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=703;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `module`
--
ALTER TABLE `module`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `module_permission`
--
ALTER TABLE `module_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ofr_offer`
--
ALTER TABLE `ofr_offer`
  MODIFY `offer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `payment_informations`
--
ALTER TABLE `payment_informations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pri_price`
--
ALTER TABLE `pri_price`
  MODIFY `price_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `sec_menu_item`
--
ALTER TABLE `sec_menu_item`
  MODIFY `menu_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT for table `sec_role_permission`
--
ALTER TABLE `sec_role_permission`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1165;

--
-- AUTO_INCREMENT for table `sec_role_tbl`
--
ALTER TABLE `sec_role_tbl`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sec_user_access_tbl`
--
ALTER TABLE `sec_user_access_tbl`
  MODIFY `role_acc_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `shedule`
--
ALTER TABLE `shedule`
  MODIFY `shedule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `synchronizer_setting`
--
ALTER TABLE `synchronizer_setting`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ticket_notification`
--
ALTER TABLE `ticket_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tkt_booking`
--
ALTER TABLE `tkt_booking`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=173;

--
-- AUTO_INCREMENT for table `tkt_feedback`
--
ALTER TABLE `tkt_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tkt_passenger`
--
ALTER TABLE `tkt_passenger`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT for table `tkt_referal`
--
ALTER TABLE `tkt_referal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tkt_refund`
--
ALTER TABLE `tkt_refund`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trip`
--
ALTER TABLE `trip`
  MODIFY `trip_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `trip_assign`
--
ALTER TABLE `trip_assign`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `trip_location`
--
ALTER TABLE `trip_location`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `trip_route`
--
ALTER TABLE `trip_route`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `ws_booking_history`
--
ALTER TABLE `ws_booking_history`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=477;

--
-- AUTO_INCREMENT for table `ws_offer`
--
ALTER TABLE `ws_offer`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ws_payments`
--
ALTER TABLE `ws_payments`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ws_setting`
--
ALTER TABLE `ws_setting`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
