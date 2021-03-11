-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 11, 2021 at 10:24 AM
-- Server version: 5.7.17
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lrr`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses_table`
--

CREATE TABLE `courses_table` (
  `Course_ID` int(11) NOT NULL,
  `Course_Name` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL,
  `Academic_Year` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `Faculty` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `Lecturer_User_ID` int(11) DEFAULT NULL,
  `TA_User_ID` int(11) DEFAULT NULL,
  `Course_Code` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `URL` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `Verify_New_Members` varchar(10) COLLATE utf8mb4_bin NOT NULL DEFAULT 'No'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `course_groups_table`
--

CREATE TABLE `course_groups_table` (
  `Course_Group_id` int(11) NOT NULL,
  `Group_Name` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `Group_Leader` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `Course_id` int(11) NOT NULL,
  `Group_Member` varchar(50) COLLATE utf8mb4_bin DEFAULT '0',
  `Group_Member2` varchar(50) COLLATE utf8mb4_bin DEFAULT '0',
  `Group_Member3` varchar(50) COLLATE utf8mb4_bin DEFAULT '0',
  `Group_Member4` varchar(50) COLLATE utf8mb4_bin DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `course_groups_table_backup`
--

CREATE TABLE `course_groups_table_backup` (
  `Course_Group_id` int(11) NOT NULL,
  `Group_Name` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `Group_Leader` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `Course_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `course_group_members_table`
--

CREATE TABLE `course_group_members_table` (
  `ID` int(11) NOT NULL,
  `Course_Group_id` int(11) DEFAULT NULL,
  `Student_ID` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `Status` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `course_students_table`
--

CREATE TABLE `course_students_table` (
  `Course_ID` int(11) NOT NULL,
  `Student_ID` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `ID` int(11) NOT NULL,
  `Status` varchar(100) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `course_ta`
--

CREATE TABLE `course_ta` (
  `Course_ID` int(11) NOT NULL,
  `TA` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `extended_deadlines_table`
--

CREATE TABLE `extended_deadlines_table` (
  `ID` int(11) NOT NULL,
  `Student_ID` varchar(100) COLLATE utf8mb4_bin DEFAULT NULL,
  `Lab_Report_ID` int(11) DEFAULT NULL,
  `Extended_Deadline_Date` date DEFAULT NULL,
  `ReasonsForExtension` longtext COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `lab_reports_table`
--

CREATE TABLE `lab_reports_table` (
  `Lab_Report_ID` int(11) NOT NULL,
  `Course_ID` int(11) DEFAULT NULL,
  `Posted_Date` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL,
  `Deadline` varchar(1000) COLLATE utf8mb4_bin DEFAULT NULL,
  `Instructions` longtext COLLATE utf8mb4_bin,
  `Title` longtext COLLATE utf8mb4_bin,
  `Attachment_link_1` longtext COLLATE utf8mb4_bin,
  `Attachment_link_2` longtext COLLATE utf8mb4_bin,
  `Attachment_link_3` longtext COLLATE utf8mb4_bin,
  `Attachment_link_4` longtext COLLATE utf8mb4_bin,
  `Marks` varchar(10) COLLATE utf8mb4_bin DEFAULT NULL,
  `Type` varchar(30) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `lab_report_submissions`
--

CREATE TABLE `lab_report_submissions` (
  `Submission_ID` int(11) NOT NULL,
  `Submission_Date` datetime DEFAULT NULL,
  `Lab_Report_ID` int(11) DEFAULT NULL,
  `Student_id` varchar(200) COLLATE utf8mb4_bin DEFAULT NULL,
  `Course_Group_id` int(11) DEFAULT NULL,
  `Attachment1` longtext COLLATE utf8mb4_bin,
  `Notes` longtext COLLATE utf8mb4_bin,
  `Attachment2` varchar(1000) COLLATE utf8mb4_bin NOT NULL,
  `Attachment3` varchar(1000) COLLATE utf8mb4_bin NOT NULL,
  `Attachment4` varchar(1000) COLLATE utf8mb4_bin NOT NULL,
  `Marks` double DEFAULT NULL,
  `Status` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `Title` varchar(500) COLLATE utf8mb4_bin NOT NULL,
  `Visibility` varchar(30) COLLATE utf8mb4_bin NOT NULL DEFAULT 'Private',
  `Remarking_Reason` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

-- --------------------------------------------------------

--
-- Table structure for table `students_data`
--

CREATE TABLE `students_data` (
  `ID` int(11) NOT NULL,
  `Student_ID` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `Passport_Number` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `students_data`
--

INSERT INTO `students_data` (`ID`, `Student_ID`, `Passport_Number`) VALUES
(473, '202032070221', NULL),
(474, '202032070222', NULL),
(475, '202032020725', NULL),
(476, '202032020726', NULL),
(477, '202032020727', NULL),
(478, '202032020728', NULL),
(479, '202032020729', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users_table`
--

CREATE TABLE `users_table` (
  `User_ID` int(11) NOT NULL,
  `Email` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `Password` longtext COLLATE utf8mb4_bin,
  `Full_Name` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `UserType` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `Student_ID` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL,
  `Passport_Number` varchar(50) COLLATE utf8mb4_bin DEFAULT NULL,
  `Status` varchar(30) COLLATE utf8mb4_bin NOT NULL DEFAULT 'Active',
  `HashPassword` varchar(500) COLLATE utf8mb4_bin DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `users_table`
--

INSERT INTO `users_table` (`User_ID`, `Email`, `Password`, `Full_Name`, `UserType`, `Student_ID`, `Passport_Number`, `Status`, `HashPassword`) VALUES
(537, 'test.instructor@testing.com', '$2y$10$FeQRYJ.SDLjDH27j2tawOeGPwqNFsiyAa4CRc60W8OVHnzW.uavOa', 'Test Instructor', 'Lecturer', '202032070221', '', 'Active', NULL),
(538, 'test.student@testing.com', '$2y$10$QD2rlMQNiZnyUjkF9dsqKO42REgwNZ/JggaVXQgVJEoPEqA5dgEhS', 'Test student', 'Student', '202032070222', '', 'Active', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses_table`
--
ALTER TABLE `courses_table`
  ADD PRIMARY KEY (`Course_ID`);

--
-- Indexes for table `course_groups_table`
--
ALTER TABLE `course_groups_table`
  ADD PRIMARY KEY (`Course_Group_id`),
  ADD UNIQUE KEY `Group_Name` (`Group_Name`);

--
-- Indexes for table `course_groups_table_backup`
--
ALTER TABLE `course_groups_table_backup`
  ADD PRIMARY KEY (`Course_Group_id`),
  ADD UNIQUE KEY `Group_Name` (`Group_Name`);

--
-- Indexes for table `course_group_members_table`
--
ALTER TABLE `course_group_members_table`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `course_students_table`
--
ALTER TABLE `course_students_table`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `extended_deadlines_table`
--
ALTER TABLE `extended_deadlines_table`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `lab_reports_table`
--
ALTER TABLE `lab_reports_table`
  ADD PRIMARY KEY (`Lab_Report_ID`);

--
-- Indexes for table `lab_report_submissions`
--
ALTER TABLE `lab_report_submissions`
  ADD PRIMARY KEY (`Submission_ID`);

--
-- Indexes for table `students_data`
--
ALTER TABLE `students_data`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users_table`
--
ALTER TABLE `users_table`
  ADD PRIMARY KEY (`User_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses_table`
--
ALTER TABLE `courses_table`
  MODIFY `Course_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `course_groups_table`
--
ALTER TABLE `course_groups_table`
  MODIFY `Course_Group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;
--
-- AUTO_INCREMENT for table `course_groups_table_backup`
--
ALTER TABLE `course_groups_table_backup`
  MODIFY `Course_Group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;
--
-- AUTO_INCREMENT for table `course_group_members_table`
--
ALTER TABLE `course_group_members_table`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=301;
--
-- AUTO_INCREMENT for table `course_students_table`
--
ALTER TABLE `course_students_table`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=493;
--
-- AUTO_INCREMENT for table `extended_deadlines_table`
--
ALTER TABLE `extended_deadlines_table`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `lab_reports_table`
--
ALTER TABLE `lab_reports_table`
  MODIFY `Lab_Report_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;
--
-- AUTO_INCREMENT for table `lab_report_submissions`
--
ALTER TABLE `lab_report_submissions`
  MODIFY `Submission_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2076;
--
-- AUTO_INCREMENT for table `students_data`
--
ALTER TABLE `students_data`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=480;
--
-- AUTO_INCREMENT for table `users_table`
--
ALTER TABLE `users_table`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=539;COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
