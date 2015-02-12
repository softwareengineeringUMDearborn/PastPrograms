-- phpMyAdmin SQL Dump
-- version 3.2.0.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 03, 2014 at 07:34 PM
-- Server version: 5.1.36
-- PHP Version: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Database: `project_db`
--
CREATE DATABASE `project_db` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `project_db`;

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE IF NOT EXISTS `course` (
  `ID` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `days` varchar(50) NOT NULL,
  `max_capacity` int(11) NOT NULL,
  `credit` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`ID`, `title`, `days`, `max_capacity`, `credit`) VALUES
(296, 'Java Programming', 'M', 30, 4),
(150, 'Computer Science I', 'MW', 40, 4);

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE IF NOT EXISTS `faculty` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `office` varchar(50) NOT NULL,
  `salary` int(11) NOT NULL,
  `hire` varchar(50) NOT NULL,
  `office_hours` varchar(50) NOT NULL,
  `rank` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`ID`, `name`, `address`, `phone_number`, `email_address`, `office`, `salary`, `hire`, `office_hours`, `rank`) VALUES
(2014101, 'Max Ruinn', '1011 windius st. Dearborn MI', '333 222 1111', 'max.ruin@umich.edu', 'CIS Dept. 246 SBSE lab, University of Michigan-Dea', 5000, '2012-11-02', 'Monday from 4 - 6', 1),
(2014102, 'Daniel Urzaiz', '5001 Darren rd. Dearborn MI', '666 555 4444', 'daniel.urzaiz@umich.edu', 'CIS Dept. 246 SBSE lab, University of Michigan-Dea', 5000, '2003-11-06', 'Thursday from 10 - 12', 1);

-- --------------------------------------------------------

--
-- Table structure for table `registration`
--

CREATE TABLE IF NOT EXISTS `registration` (
  `ID` int(11) NOT NULL,
  `term` varchar(50) NOT NULL,
  `registration_id` int(11) NOT NULL,
  `course_id` int(11) NOT NULL,
  `enrolled_as` varchar(50) NOT NULL,
  `grade` varchar(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `registration`
--

INSERT INTO `registration` (`ID`, `term`, `registration_id`, `course_id`, `enrolled_as`, `grade`) VALUES
(1, 'Fall2014', 2014001, 296, 'student', 'A'),
(2, 'Fall2014', 2014002, 296, 'student', ''),
(3, 'Fall2014', 2014101, 296, 'teacher', '');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `ID` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `title` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`ID`, `name`, `address`, `phone_number`, `email_address`, `title`) VALUES
(2014111, 'Krish Stars', '1111 windy st. Dearborn MI', '444 333 2222', 'krish.star@umich.edu', 'administrator'),
(2014112, 'Mike Alex', '2222 Wayne rd. Dearborn MI', '555 444 3333', 'mike.alex@umich.edu', 'administrator');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE IF NOT EXISTS `student` (
  `name` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `phone_number` varchar(50) NOT NULL,
  `email_address` varchar(50) NOT NULL,
  `class_status` varchar(50) NOT NULL,
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`name`, `address`, `phone_number`, `email_address`, `class_status`, `ID`) VALUES
('John William', '1001 wind st. Dearborn MI', '111 222 3333', 'john.wellis@umich.edu', 'registered', 2014001),
('Alan Smith', '1002 Snady rd. Dearborn MI', '121 212 2121', 'alan.smith@umich.edu', 'registered', 2014002);
