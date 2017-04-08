-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2017 at 09:49 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `foodbank`
--

-- --------------------------------------------------------

--
-- Table structure for table `calendar_entry`
--

CREATE TABLE `calendar_entry` (
  `calendar_entry_id` int(11) NOT NULL,
  `volunteer_id` int(11) NOT NULL,
  `calendar_date` date NOT NULL,
  `calendar_dept` varchar(32) NOT NULL,
  `calendar_shift` varchar(20) NOT NULL,
  `crossed_out` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `calendar_entry`
--

INSERT INTO `calendar_entry` (`calendar_entry_id`, `volunteer_id`, `calendar_date`, `calendar_dept`, `calendar_shift`, `crossed_out`) VALUES
(1, 1, '2017-02-22', 'Kitchen', 'Morning', 0),
(2, 1, '2017-02-23', 'Kitchen', 'Morning', 0),
(3, 2, '2017-02-22', 'Kitchen', 'Morning', 0),
(4, 1, '2017-02-01', 'Kitchen', 'Morning', 0),
(5, 2, '2017-02-01', 'Kitchen', 'Morning', 0),
(6, 1, '2017-02-02', 'Kitchen', 'Morning', 0),
(7, 2, '2017-02-02', 'Kitchen', 'Morning', 0),
(8, 1, '2017-02-03', 'Kitchen', 'Morning', 0),
(9, 2, '2017-02-03', 'Kitchen', 'Morning', 0),
(10, 1, '2017-02-04', 'Kitchen', 'Morning', 0),
(11, 2, '2017-02-04', 'Kitchen', 'Morning', 0),
(14, 4, '2017-03-20', 'Front', 'Morning', 0),
(15, 1, '2017-03-14', 'Front', 'Morning', 0),
(16, 2, '2017-03-14', 'Front', 'Morning', 0),
(18, 1, '2017-03-15', 'Front', 'Morning', 0),
(19, 2, '2017-03-15', 'Front', 'Morning', 0),
(20, 4, '2017-03-15', 'Front', 'Morning', 0),
(21, 1, '2017-03-17', 'Front', 'Morning', 0),
(22, 2, '2017-03-17', 'Front', 'Morning', 0),
(24, 7, '2017-03-14', 'Warehouse', 'Afternoon', 0),
(26, 3, '2017-03-06', 'Front', 'Morning', 0),
(27, 3, '2017-03-14', 'Front', 'Morning', 0),
(28, 3, '2017-03-15', 'Front', 'Morning', 0),
(29, 3, '2017-03-16', 'Front', 'Morning', 0),
(30, 4, '2017-03-16', 'Front', 'Morning', 0),
(31, 3, '2017-03-17', 'Front', 'Morning', 0),
(32, 1, '2017-03-20', 'Front', 'Morning', 0),
(33, 2, '2017-03-20', 'Front', 'Morning', 0),
(34, 3, '2017-03-20', 'Front', 'Morning', 0),
(35, 1, '2017-03-21', 'Front', 'Morning', 0),
(36, 2, '2017-03-21', 'Front', 'Morning', 0),
(37, 3, '2017-03-21', 'Front', 'Morning', 0),
(38, 1, '2017-03-22', 'Front', 'Morning', 0),
(39, 2, '2017-03-22', 'Front', 'Morning', 0),
(40, 3, '2017-03-22', 'Front', 'Morning', 0),
(41, 1, '2017-03-23', 'Front', 'Morning', 0),
(42, 2, '2017-03-23', 'Front', 'Morning', 0),
(43, 3, '2017-03-23', 'Front', 'Morning', 0),
(44, 4, '2017-03-23', 'Front', 'Morning', 0),
(45, 1, '2017-03-24', 'Front', 'Morning', 0),
(46, 2, '2017-03-24', 'Front', 'Morning', 0),
(47, 3, '2017-03-24', 'Front', 'Morning', 0),
(48, 4, '2017-03-24', 'Front', 'Morning', 0),
(49, 1, '2017-03-07', 'Warehouse', 'Afternoon', 0),
(50, 2, '2017-03-07', 'Warehouse', 'Afternoon', 0),
(51, 3, '2017-03-07', 'Warehouse', 'Afternoon', 0),
(52, 9, '2017-03-07', 'Warehouse', 'Afternoon', 0),
(53, 1, '2017-03-08', 'Warehouse', 'Afternoon', 0),
(54, 2, '2017-03-08', 'Warehouse', 'Afternoon', 0),
(55, 3, '2017-03-08', 'Warehouse', 'Afternoon', 0),
(56, 9, '2017-03-08', 'Warehouse', 'Afternoon', 0),
(57, 1, '2017-03-09', 'Warehouse', 'Afternoon', 0),
(58, 2, '2017-03-09', 'Warehouse', 'Afternoon', 0),
(59, 3, '2017-03-09', 'Warehouse', 'Afternoon', 0),
(60, 9, '2017-03-09', 'Warehouse', 'Afternoon', 0),
(61, 2, '2017-03-13', 'Warehouse', 'Afternoon', 0),
(62, 3, '2017-03-13', 'Warehouse', 'Afternoon', 0),
(63, 9, '2017-03-13', 'Warehouse', 'Afternoon', 0),
(64, 1, '2017-03-14', 'Warehouse', 'Afternoon', 0),
(65, 2, '2017-03-14', 'Warehouse', 'Afternoon', 0),
(66, 3, '2017-03-14', 'Warehouse', 'Afternoon', 0),
(67, 9, '2017-03-14', 'Warehouse', 'Afternoon', 0),
(68, 2, '2017-03-01', 'Front', 'Morning', 0),
(69, 4, '2017-03-21', 'Kitchen', 'Morning', 0),
(70, 5, '2017-03-21', 'Kitchen', 'Morning', 0),
(71, 6, '2017-03-21', 'Kitchen', 'Morning', 0),
(72, 7, '2017-03-21', 'Kitchen', 'Morning', 0),
(73, 9, '2017-03-21', 'Kitchen', 'Morning', 0),
(75, 11, '2017-03-22', 'Front', 'Morning', 0),
(76, 11, '2017-03-23', 'Front', 'Morning', 0),
(77, 10, '2017-03-22', 'Kitchen', 'Afternoon', 0),
(79, 10, '2017-03-28', 'Front', 'Morning', 0),
(80, 12, '2017-03-28', 'Front', 'Morning', 1),
(81, 10, '2017-03-29', 'Front', 'Morning', 0),
(82, 12, '2017-03-29', 'Front', 'Morning', 0),
(83, 10, '2017-03-30', 'Front', 'Morning', 0),
(84, 12, '2017-03-30', 'Front', 'Morning', 0),
(85, 17, '2017-03-24', 'Front', 'Morning', 0),
(86, 18, '2017-03-24', 'Front', 'Morning', 0);

-- --------------------------------------------------------

--
-- Table structure for table `clock_entry`
--

CREATE TABLE `clock_entry` (
  `clock_entry_id` int(11) NOT NULL,
  `volunteer_id` int(11) NOT NULL,
  `clock_day_worked` date NOT NULL,
  `clock_in_time` varchar(20) NOT NULL,
  `clock_out_time` varchar(20) NOT NULL,
  `clock_hours_worked` varchar(20) NOT NULL,
  `Notes` varchar(255) NOT NULL DEFAULT '""'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `clock_entry`
--

INSERT INTO `clock_entry` (`clock_entry_id`, `volunteer_id`, `clock_day_worked`, `clock_in_time`, `clock_out_time`, `clock_hours_worked`, `Notes`) VALUES
(13, 1, '2017-03-21', '18:43:11', '18:43:16', '00:00:05', '""'),
(14, 3, '2017-03-21', '18:43:13', '18:47:21', '00:04:09', 'test2'),
(15, 1, '2017-03-21', '18:46:01', '18:47:29', '00:01:28', '""'),
(16, 7, '2017-03-08', '08:00:00', '12:00:00', '04:00:00', '""'),
(17, 7, '2017-03-21', '19:33:48', '19:33:54', '00:00:06', '""'),
(18, 6, '2017-03-21', '19:33:51', '19:33:57', '00:00:06', '""'),
(19, 9, '2017-03-21', '19:33:46', '19:34:07', '00:00:21', '""'),
(20, 3, '2017-03-21', '18:47:26', '19:34:12', '00:46:46', '""'),
(21, 5, '2017-03-21', '21:03:40', '21:05:07', '00:01:27', '""'),
(22, 7, '2017-03-21', '21:21:56', '21:37:08', '00:15:12', '""'),
(23, 4, '2017-03-21', '21:04:58', '21:37:20', '00:32:22', '""'),
(24, 5, '2017-03-21', '21:39:01', '21:39:05', '00:00:04', '""'),
(25, 5, '2017-03-21', '21:45:27', '21:50:16', '00:04:49', '""'),
(26, 5, '2017-03-21', '21:50:29', '21:50:36', '00:00:07', '""'),
(27, 9, '2017-03-21', '21:52:16', '21:52:29', '00:00:13', '""'),
(28, 1, '2017-03-22', '03:33:50', '03:33:56', '00:00:06', '""'),
(29, 2, '2017-03-22', '21:50:32', '03:34:26', '05:43:54', '""'),
(30, 1, '2017-03-22', '03:34:17', '07:06:40', '03:32:23', '""'),
(31, 1, '2017-03-22', '07:06:52', '07:07:17', '00:00:25', '""'),
(32, 3, '2017-03-22', '03:34:22', '07:07:26', '03:33:04', '""'),
(33, 2, '2017-03-22', '07:07:05', '08:53:17', '01:46:12', '""'),
(34, 2, '2017-03-22', '08:53:37', '08:54:09', '00:00:32', '""'),
(35, 2, '2017-03-22', '09:33:22', '09:33:51', '00:00:29', '""'),
(36, 1, '2017-03-22', '09:33:33', '13:52:07', '04:18:34', '""'),
(41, 18, '2017-03-24', '02:52:45', '02:52:52', '00:00:07', '""'),
(42, 18, '2017-03-24', '02:53:02', '02:53:09', '00:00:07', '""'),
(43, 17, '2017-03-24', '02:52:45', '02:53:28', '00:00:43', '""'),
(44, 17, '2017-03-24', '02:52:57', '02:53:28', '00:00:31', '""'),
(45, 17, '2017-03-24', '02:53:02', '02:53:28', '00:00:26', '""'),
(46, 17, '2017-03-24', '02:58:41', '02:59:27', '00:00:46', '""'),
(47, 18, '2017-03-24', '03:14:56', '03:15:25', '00:00:29', '""'),
(48, 17, '2017-03-24', '03:04:26', '03:15:46', '00:11:20', '""'),
(49, 18, '2017-03-24', '03:15:58', '03:16:19', '00:00:21', '""'),
(50, 17, '2017-03-24', '03:14:56', '03:16:30', '00:01:34', '""'),
(51, 17, '2017-03-24', '03:14:56', '03:16:51', '00:01:55', '""'),
(52, 17, '2017-03-24', '03:14:56', '03:17:06', '00:02:10', '""'),
(53, 17, '2017-03-24', '03:14:56', '03:18:58', '00:04:02', '""'),
(54, 17, '2017-03-24', '03:14:56', '03:19:50', '00:04:54', '""'),
(55, 17, '2017-03-24', '03:14:56', '03:21:43', '00:06:47', '""'),
(56, 17, '2017-03-24', '03:16:10', '03:37:11', '00:21:01', '""'),
(57, 17, '2017-03-24', '03:38:16', '03:39:18', '00:01:02', '""'),
(58, 18, '2017-03-24', '03:38:30', '03:39:54', '00:02:00', 'Forgot to clock out. 1:24 changed to 2:00.'),
(59, 17, '2017-03-24', '03:40:04', '03:40:22', '00:00:18', '""'),
(60, 18, '2017-03-24', '03:40:11', '03:40:33', '00:00:22', '""'),
(61, 17, '2017-03-24', '03:40:43', '03:40:55', '00:00:12', '""'),
(62, 18, '2017-03-24', '03:40:49', '03:41:09', '00:00:20', '""'),
(63, 17, '2017-03-24', '03:44:20', '03:44:26', '00:00:06', '""'),
(64, 18, '2017-03-24', '03:44:14', '03:44:54', '00:00:40', '""'),
(65, 18, '2017-03-24', '03:45:56', '03:45:58', '00:00:05', 'test note'),
(66, 1, '2017-03-24', '03:52:07', '03:52:13', '00:00:06', '""'),
(67, 1, '2017-03-24', '03:52:48', '03:52:56', '00:00:08', '""');

-- --------------------------------------------------------

--
-- Table structure for table `emergency_contact`
--

CREATE TABLE `emergency_contact` (
  `emergency_contact_id` int(11) NOT NULL,
  `emergency_contact_fname` varchar(32) NOT NULL,
  `emergency_contact_lname` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emergency_contact`
--

INSERT INTO `emergency_contact` (`emergency_contact_id`, `emergency_contact_fname`, `emergency_contact_lname`) VALUES
(1, 'Darlene', 'Richter'),
(2, 'Chocolate', 'Nancy'),
(3, 'Tim', 'Frantz'),
(4, 'Barry ', 'Robinson'),
(5, 'Simone', 'Poland'),
(6, 'Jeffery', 'Stone'),
(7, 'Norm', 'Nelson'),
(13, 'Ryan', 'BadIdea'),
(14, 'Travis', 'Mom'),
(15, 'Bevvie', 'Levvy'),
(16, '1234', '412'),
(17, 'e', 'e'),
(18, 'Traviss', 'Sipko'),
(19, 'Travis', 'Sipko'),
(20, 'dasda', 'dasdasdasd'),
(21, 'Jeff', 'Emshey');

-- --------------------------------------------------------

--
-- Table structure for table `jnct_volunteer_emergency_contact`
--

CREATE TABLE `jnct_volunteer_emergency_contact` (
  `volunteer_emergency_contact_id` int(11) NOT NULL,
  `volunteer_fk` int(11) NOT NULL,
  `emergency_contact_fk` int(11) NOT NULL,
  `relationship` varchar(30) DEFAULT NULL,
  `phone` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jnct_volunteer_emergency_contact`
--

INSERT INTO `jnct_volunteer_emergency_contact` (`volunteer_emergency_contact_id`, `volunteer_fk`, `emergency_contact_fk`, `relationship`, `phone`) VALUES
(1, 1, 1, 'Mother', '4034789810'),
(2, 2, 1, 'Mother', '4034789810'),
(3, 3, 2, 'Significant Other', '4039620982'),
(4, 4, 3, 'Teacher', '4035738596'),
(5, 5, 4, 'Teacher', '4037588947'),
(6, 6, 5, 'Friend', '1239329810'),
(7, 7, 1, 'Wife', '4034789810'),
(9, 9, 19, 'Sister', '4039991010'),
(10, 10, 20, 'Emergency Services', '4039991010'),
(11, 11, 3, 'Parole Officer', '4039991010'),
(12, 12, 21, 'Parole Officer', '4039991010'),
(17, 17, 19, 'Significant Other', '4039991010'),
(18, 18, 19, 'Significant Other', '4039991010');

-- --------------------------------------------------------

--
-- Table structure for table `pref_avail`
--

CREATE TABLE `pref_avail` (
  `pref_avail_id` int(11) NOT NULL,
  `volunteer_fk` int(11) NOT NULL,
  `weekday` varchar(20) DEFAULT NULL,
  `am` varchar(10) DEFAULT NULL,
  `pm` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pref_avail`
--

INSERT INTO `pref_avail` (`pref_avail_id`, `volunteer_fk`, `weekday`, `am`, `pm`) VALUES
(1, 1, 'monday', 'yes', 'no'),
(2, 1, 'tuesday', 'yes', 'no'),
(3, 1, 'wednesday', 'no', 'no'),
(4, 1, 'thursday', 'no', 'yes'),
(5, 1, 'friday', 'no', 'yes'),
(6, 2, 'monday', 'no', 'no'),
(7, 2, 'tuesday', 'no', 'yes'),
(8, 2, 'wednesday', 'no', 'yes'),
(9, 2, 'thursday', 'no', 'yes'),
(10, 2, 'friday', 'yes', 'no'),
(11, 3, 'monday', 'no', 'no'),
(12, 3, 'tuesday', 'yes', 'no'),
(13, 3, 'wednesday', 'yes', 'no'),
(14, 3, 'thursday', 'no', 'no'),
(15, 3, 'friday', 'no', 'yes'),
(16, 4, 'monday', 'yes', 'yes'),
(17, 4, 'tuesday', 'yes', 'yes'),
(18, 4, 'wednesday', 'yes', 'yes'),
(19, 4, 'thursday', 'yes', 'yes'),
(20, 4, 'friday', 'yes', 'yes'),
(21, 5, 'monday', 'no', 'no'),
(22, 5, 'tuesday', 'no', 'no'),
(23, 5, 'wednesday', 'yes', 'no'),
(24, 5, 'thursday', 'yes', 'yes'),
(25, 5, 'friday', 'yes', 'yes'),
(26, 6, 'monday', 'no', 'no'),
(27, 6, 'tuesday', 'no', 'no'),
(28, 6, 'wednesday', 'yes', 'no'),
(29, 6, 'thursday', 'no', 'no'),
(30, 6, 'friday', 'no', 'no'),
(31, 7, 'monday', 'yes', 'yes'),
(32, 7, 'tuesday', 'yes', 'yes'),
(33, 7, 'wednesday', 'yes', 'yes'),
(34, 7, 'thursday', 'yes', 'yes'),
(35, 7, 'friday', 'yes', 'yes'),
(41, 9, 'monday', 'no', 'yes'),
(42, 9, 'tuesday', 'no', 'yes'),
(43, 9, 'wednesday', 'no', 'yes'),
(44, 9, 'thursday', 'yes', 'yes'),
(45, 9, 'friday', 'no', 'yes'),
(46, 10, 'monday', 'yes', 'no'),
(47, 10, 'tuesday', 'yes', 'no'),
(48, 10, 'wednesday', 'no', 'no'),
(49, 10, 'thursday', 'no', 'no'),
(50, 10, 'friday', 'no', 'no'),
(51, 11, 'monday', 'yes', 'yes'),
(52, 11, 'tuesday', 'yes', 'yes'),
(53, 11, 'wednesday', 'yes', 'yes'),
(54, 11, 'thursday', 'yes', 'yes'),
(55, 11, 'friday', 'yes', 'yes'),
(56, 12, 'monday', 'no', 'no'),
(57, 12, 'tuesday', 'no', 'no'),
(58, 12, 'wednesday', 'no', 'no'),
(59, 12, 'thursday', 'no', 'yes'),
(60, 12, 'friday', 'no', 'yes'),
(81, 17, 'monday', 'yes', 'no'),
(82, 17, 'tuesday', 'no', 'no'),
(83, 17, 'wednesday', 'no', 'no'),
(84, 17, 'thursday', 'no', 'no'),
(85, 17, 'friday', 'no', 'no'),
(86, 18, 'monday', 'yes', 'no'),
(87, 18, 'tuesday', 'no', 'no'),
(88, 18, 'wednesday', 'no', 'no'),
(89, 18, 'thursday', 'no', 'no'),
(90, 18, 'friday', 'no', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `pref_dept`
--

CREATE TABLE `pref_dept` (
  `pref_dept_id` int(11) NOT NULL,
  `volunteer_fk` int(11) NOT NULL,
  `department` varchar(30) NOT NULL,
  `allow` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pref_dept`
--

INSERT INTO `pref_dept` (`pref_dept_id`, `volunteer_fk`, `department`, `allow`) VALUES
(1, 1, 'front', 'yes'),
(2, 1, 'vio', 'no'),
(3, 1, 'kitchen', 'no'),
(4, 1, 'warehouse', 'yes'),
(5, 2, 'front', 'no'),
(6, 2, 'vio', 'no'),
(7, 2, 'kitchen', 'yes'),
(8, 2, 'warehouse', 'no'),
(9, 3, 'front', 'no'),
(10, 3, 'vio', 'yes'),
(11, 3, 'kitchen', 'no'),
(12, 3, 'warehouse', 'no'),
(13, 4, 'front', 'yes'),
(14, 4, 'vio', 'no'),
(15, 4, 'kitchen', 'no'),
(16, 4, 'warehouse', 'no'),
(17, 5, 'front', 'yes'),
(18, 5, 'vio', 'yes'),
(19, 5, 'kitchen', 'yes'),
(20, 5, 'warehouse', 'yes'),
(21, 6, 'front', 'no'),
(22, 6, 'vio', 'yes'),
(23, 6, 'kitchen', 'yes'),
(24, 6, 'warehouse', 'no'),
(25, 7, 'front', 'no'),
(26, 7, 'vio', 'yes'),
(27, 7, 'kitchen', 'yes'),
(28, 7, 'warehouse', 'yes'),
(33, 9, 'front', 'no'),
(34, 9, 'vio', 'no'),
(35, 9, 'kitchen', 'yes'),
(36, 9, 'warehouse', 'yes'),
(37, 10, 'front', 'yes'),
(38, 10, 'vio', 'no'),
(39, 10, 'kitchen', 'no'),
(40, 10, 'warehouse', 'no'),
(41, 11, 'front', 'yes'),
(42, 11, 'vio', 'yes'),
(43, 11, 'kitchen', 'yes'),
(44, 11, 'warehouse', 'no'),
(45, 12, 'front', 'no'),
(46, 12, 'vio', 'no'),
(47, 12, 'kitchen', 'no'),
(48, 12, 'warehouse', 'yes'),
(65, 17, 'front', 'yes'),
(66, 17, 'vio', 'no'),
(67, 17, 'kitchen', 'no'),
(68, 17, 'warehouse', 'no'),
(69, 18, 'front', 'no'),
(70, 18, 'vio', 'no'),
(71, 18, 'kitchen', 'yes'),
(72, 18, 'warehouse', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` char(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`) VALUES
(2, 'Admin', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8'),
(11, 'Test', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8'),
(12, 'Test1', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8'),
(13, 'Test4', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8'),
(14, 'Test5', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8'),
(15, 'Jeff', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8'),
(16, 'testAdmin', 'pass'),
(17, 'user15', '9d4e1e23bd5b727046a9e3b4b7db57bd8d6ee684'),
(18, 'Brady', '9d4e1e23bd5b727046a9e3b4b7db57bd8d6ee684');

-- --------------------------------------------------------

--
-- Table structure for table `volunteer`
--

CREATE TABLE `volunteer` (
  `volunteer_id` int(11) NOT NULL,
  `volunteer_fname` varchar(32) NOT NULL,
  `volunteer_lname` varchar(32) NOT NULL,
  `volunteer_email` varchar(64) NOT NULL,
  `volunteer_birthdate` date NOT NULL,
  `volunteer_gender` varchar(32) NOT NULL,
  `volunteer_street` varchar(32) NOT NULL,
  `volunteer_city` varchar(32) NOT NULL,
  `volunteer_province` varchar(32) NOT NULL,
  `volunteer_postcode` varchar(10) NOT NULL,
  `volunteer_primaryphone` varchar(20) NOT NULL,
  `volunteer_secondaryphone` varchar(20) DEFAULT 'None',
  `volunteer_status` tinyint(1) NOT NULL,
  `password` varchar(255) NOT NULL DEFAULT '""'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `volunteer`
--

INSERT INTO `volunteer` (`volunteer_id`, `volunteer_fname`, `volunteer_lname`, `volunteer_email`, `volunteer_birthdate`, `volunteer_gender`, `volunteer_street`, `volunteer_city`, `volunteer_province`, `volunteer_postcode`, `volunteer_primaryphone`, `volunteer_secondaryphone`, `volunteer_status`, `password`) VALUES
(1, 'Gideon', 'Richter', 'gideonrich@hotmail.ca', '1996-02-13', 'male', '33 Chilcotin Rd W', 'Lethbridge', 'AB', 'T1K7G9', '4034839810', 'None', 1, '55stayalive\n'),
(2, 'Erin ', 'Richter', 'erin@hotmail.ca', '1994-03-17', 'female', 'Beaver St.', 'Red Lake', 'ON', 'T8K4I9', '4034919810', 'None', 1, '""'),
(3, 'Jeff ', 'Emshey', 'jeff@hotmail.ca', '1992-08-14', 'male', 'Poverty Rd.', 'Lethbridge', 'AB', 'T2K8J0', '4033594343', 'None', 1, '""'),
(4, 'Brayden', 'Sipko', 'brayden@hotmail.ca', '1990-10-04', 'male', 'Egg Rd ', 'Lethbridge', 'AB', 'T3F9G4', '4034769180', 'None', 1, '""'),
(5, 'Ryan ', 'Lockett', 'ryan@hotmail.ca', '1996-03-01', 'male', 'Ryans House', 'Lethbridge', 'AB', 'T2G9G0', '4039998594', 'None', 1, '""'),
(6, 'Edith', 'Denton', 'edith@hotmail.ca', '1997-04-15', 'female', 'Humber College', 'Toronto', 'ON', 'T8F9K0', '4038597584', 'None', 0, '""'),
(7, 'Mike', 'Richter', 'mike@telus.net', '1960-03-08', 'male', '8 Glenhill Crescent', 'Cochrane', 'AB', 'T4C1G7', '4039329810', 'None', 1, '""'),
(9, 'Travis', 'Sipko', 'example@email.com', '2017-03-01', 'female', 'Egg Rd', 'Lethy', 'AB', 'A0A 0A0', '4039991010', '4039991010', 0, '""'),
(10, 'TestFName', 'testLname', 'example@email.com', '2017-03-01', 'female', 'Egg Rd', 'Lethy', 'ON', 'A0A 0A0', '4039991010', 'None', 1, '""'),
(11, 'TestFNameOne', 'Sipko', 'example@email.com', '2017-03-30', 'female', 'Egg Rd', 'Lethbridge', 'AB', 'A0A 0A0', '4039991010', 'None', 0, '""'),
(12, 'Tim', 'Frantz', 'tim@lc.ca', '1961-12-05', 'male', 'here', 'leth', 'AB', 't1j 0n1', '4033333333', 'None', 1, '""'),
(17, 'Alexa', 'Sipko', 'example@email.com', '2017-03-14', 'female', 'Egg Rd', 'Lethy', 'AB', 'A0A 0A0', '4039991010', '4039991010', 1, 'a2f777b057350f7ff34d64b511bb66ff9d2c3e14'),
(18, 'NewVol', 'NewVol', 'NewVol@NewVol', '2017-03-06', 'male', 'NewVol', 'NewVol', 'AB', 'A0A 0A0', '4039991010', '4039991010', 1, '51dd0eb85ac93d2feb4cbc3a541fd34f3170c382');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calendar_entry`
--
ALTER TABLE `calendar_entry`
  ADD PRIMARY KEY (`calendar_entry_id`),
  ADD KEY `volunteer_id` (`volunteer_id`);

--
-- Indexes for table `clock_entry`
--
ALTER TABLE `clock_entry`
  ADD PRIMARY KEY (`clock_entry_id`),
  ADD KEY `volunteer_id` (`volunteer_id`);

--
-- Indexes for table `emergency_contact`
--
ALTER TABLE `emergency_contact`
  ADD UNIQUE KEY `emergency_contact_id` (`emergency_contact_id`);

--
-- Indexes for table `jnct_volunteer_emergency_contact`
--
ALTER TABLE `jnct_volunteer_emergency_contact`
  ADD PRIMARY KEY (`volunteer_emergency_contact_id`),
  ADD KEY `volunteer_fk` (`volunteer_fk`),
  ADD KEY `emergency_contact_fk` (`emergency_contact_fk`);

--
-- Indexes for table `pref_avail`
--
ALTER TABLE `pref_avail`
  ADD PRIMARY KEY (`pref_avail_id`),
  ADD KEY `volunteer_fk` (`volunteer_fk`);

--
-- Indexes for table `pref_dept`
--
ALTER TABLE `pref_dept`
  ADD PRIMARY KEY (`pref_dept_id`),
  ADD KEY `volunteer_fk` (`volunteer_fk`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `volunteer`
--
ALTER TABLE `volunteer`
  ADD PRIMARY KEY (`volunteer_id`),
  ADD KEY `volunteer_id` (`volunteer_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calendar_entry`
--
ALTER TABLE `calendar_entry`
  MODIFY `calendar_entry_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;
--
-- AUTO_INCREMENT for table `clock_entry`
--
ALTER TABLE `clock_entry`
  MODIFY `clock_entry_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;
--
-- AUTO_INCREMENT for table `emergency_contact`
--
ALTER TABLE `emergency_contact`
  MODIFY `emergency_contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `jnct_volunteer_emergency_contact`
--
ALTER TABLE `jnct_volunteer_emergency_contact`
  MODIFY `volunteer_emergency_contact_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `pref_avail`
--
ALTER TABLE `pref_avail`
  MODIFY `pref_avail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `pref_dept`
--
ALTER TABLE `pref_dept`
  MODIFY `pref_dept_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=73;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `volunteer`
--
ALTER TABLE `volunteer`
  MODIFY `volunteer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `calendar_entry`
--
ALTER TABLE `calendar_entry`
  ADD CONSTRAINT `calendar_entry_ibfk_1` FOREIGN KEY (`volunteer_id`) REFERENCES `volunteer` (`volunteer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `clock_entry`
--
ALTER TABLE `clock_entry`
  ADD CONSTRAINT `clock_entry_ibfk_1` FOREIGN KEY (`volunteer_id`) REFERENCES `volunteer` (`volunteer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `jnct_volunteer_emergency_contact`
--
ALTER TABLE `jnct_volunteer_emergency_contact`
  ADD CONSTRAINT `jnct_volunteer_emergency_contact_ibfk_1` FOREIGN KEY (`volunteer_fk`) REFERENCES `volunteer` (`volunteer_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `jnct_volunteer_emergency_contact_ibfk_2` FOREIGN KEY (`emergency_contact_fk`) REFERENCES `emergency_contact` (`emergency_contact_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pref_avail`
--
ALTER TABLE `pref_avail`
  ADD CONSTRAINT `pref_avail_ibfk_1` FOREIGN KEY (`volunteer_fk`) REFERENCES `volunteer` (`volunteer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pref_dept`
--
ALTER TABLE `pref_dept`
  ADD CONSTRAINT `pref_dept_ibfk_1` FOREIGN KEY (`volunteer_fk`) REFERENCES `volunteer` (`volunteer_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
