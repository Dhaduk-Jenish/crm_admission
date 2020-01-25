-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2020 at 06:59 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.1.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `crm_for_admission`
--

-- --------------------------------------------------------

--
-- Table structure for table `allocation`
--

CREATE TABLE `allocation` (
  `Tab_Specification` tinyint(1) NOT NULL,
  `Emp_Id` int(12) NOT NULL,
  `Start_Index` int(5) NOT NULL,
  `End_Index` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `allocation`
--

INSERT INTO `allocation` (`Tab_Specification`, `Emp_Id`, `Start_Index`, `End_Index`) VALUES
(1, 12, 1, 8),
(0, 11, 3, 7),
(1, 4, 10, 16),
(1, 15, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `Dept_Id` int(2) NOT NULL,
  `Dept_Name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`Dept_Id`, `Dept_Name`) VALUES
(1, 'Degree Computer'),
(2, 'Degree Mechanical'),
(3, 'Degree Civil'),
(4, 'Degree Electrical'),
(11, 'Diploma Mechanical'),
(12, 'Diploma Civil'),
(13, 'Diploma Electrical'),
(21, 'Humidity and R. Department');

-- --------------------------------------------------------

--
-- Table structure for table `designation`
--

CREATE TABLE `designation` (
  `Design_Id` int(1) NOT NULL,
  `Designation` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `designation`
--

INSERT INTO `designation` (`Design_Id`, `Designation`) VALUES
(1, 'Principal'),
(2, 'Admission Coordinator'),
(3, 'Head of the department'),
(4, 'Faculty');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `Emp_Id` varchar(20) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Contact` decimal(20,0) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Dept_Id` int(20) NOT NULL,
  `City` varchar(20) NOT NULL,
  `Address` varchar(1000) NOT NULL,
  `Design_Id` int(5) NOT NULL,
  `Password` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`Emp_Id`, `First_Name`, `Last_Name`, `Contact`, `Email`, `Dept_Id`, `City`, `Address`, `Design_Id`, `Password`) VALUES
('E102', 'ABC', 'XYZ', '9601362794', 'jaync1537@gamil.com', 1, 'Rajkot', 'Random', 1, 'd6bb3afd214c6c7bb03156594f1356e2'),
('E103', 'nnn', 'bbb', '9601362794', 'jaync1537@gamil.com', 1, 'Rajkot', 'random', 3, 'd6bb3afd214c6c7bb03156594f1356e2'),
('E104', 'nnn', 'bbb', '9601362794', 'jaync1537@gamil.com', 1, 'Rajkot', 'random', 4, 'd6bb3afd214c6c7bb03156594f1356e2'),
('E105', 'nnn', 'bbb', '7874562620', 'palaliyaraviraj007@gamil.com', 1, 'Rajkot', 'random', 1, 'bb84d91cc6b0eafdbff085f3d7ec9277'),
('E106', 'nnn', 'bbb', '7874562620', 'palaliyaraviraj007@gamil.com', 1, 'Rajkot', 'random', 3, 'bb84d91cc6b0eafdbff085f3d7ec9277'),
('E107', 'nnn', 'bbb', '7874562620', 'palaliyaraviraj007@gamil.com', 1, 'Rajkot', 'random', 4, 'bb84d91cc6b0eafdbff085f3d7ec9277'),
('E108', 'nnn', 'bbb', '9664944719', 'jenishdhaduk99@gamil.com', 1, 'Rajkot', 'random', 1, '17c1eb805f782ec09e6ba5af68e29312'),
('E109', 'nnn', 'bbb', '9664944719', 'jenishdhaduk99@gamil.com', 1, 'Rajkot', 'random', 3, '17c1eb805f782ec09e6ba5af68e29312'),
('E110', 'nnn', 'bbb', '9664944719', 'jenishdhaduk99@gamil.com', 1, 'Rajkot', 'random', 4, '17c1eb805f782ec09e6ba5af68e29312'),
('E111', 'nnn', 'bbb', '9998386333', 'healhingrajia96@gamil.com', 1, 'Rajkot', 'random', 1, 'fa4f93a492f1a65f586ee60e9baa1ec2'),
('E112', 'nnn', 'bbb', '9998386333', 'healhingrajia96@gamil.com', 1, 'Rajkot', 'random', 3, 'fa4f93a492f1a65f586ee60e9baa1ec2'),
('E113', 'nnn', 'bbb', '9998386333', 'healhingrajia96@gamil.com', 1, 'Rajkot', 'random', 4, 'fa4f93a492f1a65f586ee60e9baa1ec2');

-- --------------------------------------------------------

--
-- Table structure for table `expense`
--

CREATE TABLE `expense` (
  `Expense_Id` int(10) NOT NULL,
  `Team_Id` int(22) NOT NULL,
  `Gift_Id` int(10) NOT NULL,
  `Date` date NOT NULL,
  `Details` text NOT NULL,
  `Amount` float NOT NULL,
  `Picture` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `expense`
--

INSERT INTO `expense` (`Expense_Id`, `Team_Id`, `Gift_Id`, `Date`, `Details`, `Amount`, `Picture`) VALUES
(12, 7, 11, '0000-00-00', 'Petrol charges', 700, ''),
(8, 12, 2, '0000-00-00', 'petrol charge\r\nrestaurant bill\r\n ', 900, '');

-- --------------------------------------------------------

--
-- Table structure for table `gift`
--

CREATE TABLE `gift` (
  `Gift_Id` int(10) NOT NULL,
  `Emp_id` int(12) NOT NULL,
  `Date` date NOT NULL,
  `Broacher` int(4) NOT NULL,
  `Beg` int(4) NOT NULL,
  `Other` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gift`
--

INSERT INTO `gift` (`Gift_Id`, `Emp_id`, `Date`, `Broacher`, `Beg`, `Other`) VALUES
(2, 11, '0000-00-00', 40, 0, 0),
(5, 14, '2019-09-11', 20, 0, 20),
(1, 4, '2019-11-05', 10, 10, 0);

-- --------------------------------------------------------

--
-- Table structure for table `lead`
--

CREATE TABLE `lead` (
  `Lead_Id` int(10) NOT NULL,
  `Emp_Id` int(12) NOT NULL,
  `Responce_Id` int(10) NOT NULL,
  `Date` date NOT NULL,
  `Forwarded_By_Emp_id` int(12) NOT NULL,
  `Forwarded_To_Emp_id` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `lead`
--

INSERT INTO `lead` (`Lead_Id`, `Emp_Id`, `Responce_Id`, `Date`, `Forwarded_By_Emp_id`, `Forwarded_To_Emp_id`) VALUES
(1, 13, 2, '2019-11-05', 1, 15),
(2, 13, 4, '2019-12-10', 13, 5),
(4, 6, 2, '2019-09-29', 1, 5),
(6, 4, 12, '2019-10-16', 12, 15);

-- --------------------------------------------------------

--
-- Table structure for table `responce`
--

CREATE TABLE `responce` (
  `Responce_Id` int(5) NOT NULL,
  `Emp_Id` int(12) NOT NULL,
  `Student_Id` int(10) NOT NULL,
  `Date` date NOT NULL,
  `Status` int(1) NOT NULL,
  `Responce` tinyint(1) NOT NULL,
  `Next_Date` date NOT NULL,
  `Remark` text NOT NULL,
  `Lead_Id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `responce`
--

INSERT INTO `responce` (`Responce_Id`, `Emp_Id`, `Student_Id`, `Date`, `Status`, `Responce`, `Next_Date`, `Remark`, `Lead_Id`) VALUES
(12, 13, 54, '2019-08-04', 1, 1, '0000-00-00', 'Interested.', 0),
(3, 4, 56, '2019-08-04', 1, 1, '0000-00-00', 'Medium Interest. ', 0),
(2, 4, 57, '2019-08-04', 1, 0, '0000-00-00', 'Not Interested', 0),
(3, 13, 58, '2019-08-04', 1, 1, '2019-09-11', 'Interested, but late admission', 0);

-- --------------------------------------------------------

--
-- Table structure for table `school/collage`
--

CREATE TABLE `school/collage` (
  `School_Id` int(3) NOT NULL,
  `School_Name` text NOT NULL,
  `Address` varchar(50) NOT NULL,
  `City` text NOT NULL,
  `Contact_Person_Name` text NOT NULL,
  `Contact` decimal(12,0) NOT NULL,
  `Emp_id` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `school/collage`
--

INSERT INTO `school/collage` (`School_Id`, `School_Name`, `Address`, `City`, `Contact_Person_Name`, `Contact`, `Emp_id`) VALUES
(45, 'Suryadip High School,Jamnagar ', '7 rasta chowk,Jamnagar', 'Jamnagar', 'Rahulbhai', '9865432165', 4),
(46, 'Government Polytechnic', 'nr Hemugadhvi Hall, Rajkot', 'Rajkot', 'Namanbhai', '8000683574', 3),
(43, 'SLTIET', 'kankot,Rajkot', 'Rajkot', 'Nayanbhai', '7664876321', 4),
(34, 'Sarswati High School,Morbi', 'nr main bazar , Morbi', 'Morbi', 'Udaybhai', '8980436570', 5);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Type` tinyint(1) DEFAULT NULL,
  `Student_Id` int(20) NOT NULL,
  `First_Name` varchar(50) NOT NULL,
  `Last_Name` varchar(50) NOT NULL,
  `Gender` varchar(10) NOT NULL,
  `Contact` decimal(20,0) DEFAULT NULL,
  `Cast` varchar(20) DEFAULT NULL,
  `Income` float DEFAULT NULL,
  `Date` date NOT NULL,
  `City` varchar(20) DEFAULT NULL,
  `Year` int(10) NOT NULL,
  `Result` float NOT NULL,
  `Group` int(5) NOT NULL,
  `Emp_Id` int(20) NOT NULL,
  `School/College` varchar(50) DEFAULT NULL,
  `Admission_Type` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Type`, `Student_Id`, `First_Name`, `Last_Name`, `Gender`, `Contact`, `Cast`, `Income`, `Date`, `City`, `Year`, `Result`, `Group`, `Emp_Id`, `School/College`, `Admission_Type`) VALUES
(1, 141, 'Naman', 'Patel', 'Male', '7898798909', 'Open', 60, '2019-07-18', 'Upleta', 2018, 78, 1, 6, 'Delta science school', 'Degree'),
(0, 142, 'Jay', 'Bhalodiya', 'Male', '9876543211', 'Open', 1, '2019-08-23', 'Rajkot', 2019, 7.89, 0, 10, 'vvp engineering collage', 'D2D'),
(1, 145, 'Krupa', 'Pala', 'Female', '8976543728', 'OBC', 2, '2019-08-13', 'Dhoraji', 2019, 87, 1, 16, 'Rajkot', 'Degree'),
(1, 147, 'Mehul', 'Prajapati', 'Male', '9966554477', 'OBC', 89, '2019-09-10', 'Morbi', 2016, 54, 1, 18, 'Royal Science School,Dhoraji', 'Degree');

-- --------------------------------------------------------

--
-- Table structure for table `team`
--

CREATE TABLE `team` (
  `Team_Id` int(12) NOT NULL,
  `Emp_Id` int(12) NOT NULL,
  `School_Id` int(3) NOT NULL,
  `Gift_Id` int(10) NOT NULL,
  `Expence_Id` int(10) NOT NULL,
  `NOTM` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `team`
--

INSERT INTO `team` (`Team_Id`, `Emp_Id`, `School_Id`, `Gift_Id`, `Expence_Id`, `NOTM`) VALUES
(7, 14, 67, 2, 54, 21),
(4, 14, 67, 1, 56, 0),
(3, 7, 56, 34, 21, 1),
(2, 4, 32, 3, 13, 1),
(4, 8, 22, 4, 54, 0);

-- --------------------------------------------------------

--
-- Table structure for table `team-member`
--

CREATE TABLE `team-member` (
  `Team_Id` int(12) NOT NULL,
  `Emp_Id` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `team-member`
--

INSERT INTO `team-member` (`Team_Id`, `Emp_Id`) VALUES
(7, 12),
(8, 14),
(9, 3),
(1, 5),
(2, 14),
(5, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`Dept_Id`) USING BTREE;

--
-- Indexes for table `designation`
--
ALTER TABLE `designation`
  ADD PRIMARY KEY (`Design_Id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`Emp_Id`),
  ADD KEY `Dept_Id` (`Dept_Id`),
  ADD KEY `Design_Id` (`Design_Id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Student_Id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`Dept_Id`) REFERENCES `department` (`Dept_Id`),
  ADD CONSTRAINT `employee_ibfk_2` FOREIGN KEY (`Design_Id`) REFERENCES `designation` (`Design_Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
