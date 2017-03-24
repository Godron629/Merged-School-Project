-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2017 at 02:25 PM
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
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

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
  `clock_hours_worked` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `emergency_contact`
--

CREATE TABLE `emergency_contact` (
  `emergency_contact_id` int(11) NOT NULL,
  `emergency_contact_fname` varchar(32) NOT NULL,
  `emergency_contact_lname` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` char(40) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`) VALUES
(1, 'Admin', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8');

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
  `password` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calendar_entry`
--
ALTER TABLE `calendar_entry`
  ADD PRIMARY KEY (`calendar_entry_id`);

--
-- Indexes for table `clock_entry`
--
ALTER TABLE `clock_entry`
  ADD PRIMARY KEY (`clock_entry_id`);

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
  MODIFY `calendar_entry_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `clock_entry`
--
ALTER TABLE `clock_entry`
  MODIFY `clock_entry_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `emergency_contact`
--
ALTER TABLE `emergency_contact`
  MODIFY `emergency_contact_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jnct_volunteer_emergency_contact`
--
ALTER TABLE `jnct_volunteer_emergency_contact`
  MODIFY `volunteer_emergency_contact_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pref_avail`
--
ALTER TABLE `pref_avail`
  MODIFY `pref_avail_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pref_dept`
--
ALTER TABLE `pref_dept`
  MODIFY `pref_dept_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `volunteer`
--
ALTER TABLE `volunteer`
  MODIFY `volunteer_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

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
