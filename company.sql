-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 18, 2016 at 12:52 PM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `company`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_courses`
--

CREATE TABLE `tbl_courses` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `duration` int(11) NOT NULL,
  `duration_type` enum('Days','Weeks','Months','Years') NOT NULL,
  `fees` decimal(12,2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NULL DEFAULT NULL,
  `delete_flag` tinyint(4) NOT NULL DEFAULT '0',
  `delete_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_courses`
--

INSERT INTO `tbl_courses` (`id`, `name`, `description`, `duration`, `duration_type`, `fees`, `status`, `added_date`, `modified_date`, `delete_flag`, `delete_date`) VALUES
(1, 'Advanced Java (JEE)', 'Advanced Java (JEE)', 2, 'Weeks', '200000.00', 0, '2016-07-03 10:20:20', NULL, 0, NULL),
(2, 'Core Java & Web Fundamantals', 'Core Java & Web Fundamantals', 2, 'Weeks', '200000.00', 1, '2016-07-03 10:21:33', NULL, 0, NULL),
(7, 'Python web Development with Dijango', 'Python web Development with Dijango', 8, 'Weeks', '30000.00', 1, '2016-07-05 04:27:03', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_enquiries`
--

CREATE TABLE `tbl_enquiries` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact_no` varchar(100) NOT NULL,
  `is_read` tinyint(4) NOT NULL DEFAULT '0',
  `enquiry_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `course_id` int(11) NOT NULL DEFAULT '0',
  `message` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_enquiries`
--

INSERT INTO `tbl_enquiries` (`id`, `first_name`, `last_name`, `email`, `contact_no`, `is_read`, `enquiry_date`, `course_id`, `message`) VALUES
(1, 'Sanjeev', 'Khadka', 'sanjev@gmail.com', '2190371983271', 0, '2016-07-07 05:47:01', 1, 'Advanced Java seems like a fun'),
(2, 'Sanjeev', 'Khadka', 'sanjev@gmail.com', '2190371983271', 0, '2016-07-07 05:56:33', 1, 'Advanced Java seems like a fun'),
(3, 'Sanjeev', 'Khadka', 'sanjeev_kdk32@yahoo.com', '923712983', 0, '2016-07-07 07:14:31', 1, 'Email check'),
(4, 'Firstname', 'Lastname', 'Firstname@gmial.com', '37238912', 0, '2016-07-07 07:21:10', 2, 'Check'),
(5, 'lionel', 'messi', 'lionel@hotmail.com', '31623123', 0, '2016-07-07 07:27:49', 7, 'hi i am lionel messi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_students`
--

CREATE TABLE `tbl_students` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `contact_no` varchar(100) NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `dob` date DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `added_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_date` timestamp NULL DEFAULT NULL,
  `delete_flag` tinyint(4) NOT NULL DEFAULT '0',
  `delete_ip` varchar(50) DEFAULT NULL,
  `delete_date` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_students`
--

INSERT INTO `tbl_students` (`id`, `first_name`, `last_name`, `email`, `contact_no`, `gender`, `dob`, `status`, `added_date`, `modified_date`, `delete_flag`, `delete_ip`, `delete_date`) VALUES
(3, 'Asish', 'Maharjan', 'asish21@gmail.com', '549818949', 'Male', '1990-01-21', 0, '2016-08-06 13:47:47', NULL, 0, NULL, NULL),
(4, 'Sanjeev', 'Khadka', 'sanjeevkdk32@gmail.com', '9849422101', 'Male', '1994-01-10', 1, '2016-08-18 09:30:26', NULL, 0, NULL, NULL),
(5, 'Priyanka', 'Karki', 'priyanka@gmail.com', '98123812', 'Female', '1987-01-04', 0, '2016-08-18 09:51:58', NULL, 0, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_courses`
--
ALTER TABLE `tbl_courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_enquiries`
--
ALTER TABLE `tbl_enquiries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_students`
--
ALTER TABLE `tbl_students`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_courses`
--
ALTER TABLE `tbl_courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_enquiries`
--
ALTER TABLE `tbl_enquiries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_students`
--
ALTER TABLE `tbl_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
