-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 01, 2019 at 07:15 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wp38`
--

-- --------------------------------------------------------

--
-- Table structure for table `assignment`
--

CREATE TABLE `assignment` (
  `ProjectID` int(11) NOT NULL,
  `EmployeeNumber` int(11) NOT NULL,
  `HoursWorked` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `assignment`
--

INSERT INTO `assignment` (`ProjectID`, `EmployeeNumber`, `HoursWorked`) VALUES
(100, 1, '30.00'),
(100, 3, '75.00'),
(100, 16, '75.00'),
(100, 17, '50.00'),
(100, 18, '50.00'),
(100, 19, '30.00'),
(110, 2, '75.00'),
(110, 10, '55.00'),
(110, 11, '55.00'),
(110, 14, '30.00'),
(120, 3, '20.00'),
(120, 6, '40.00'),
(120, 7, '45.00'),
(120, 8, '45.00'),
(130, 3, '25.00'),
(130, 6, '40.00'),
(130, 8, '50.00'),
(130, 9, '50.00'),
(140, 1, '30.00'),
(140, 6, '50.00'),
(140, 10, '50.00'),
(140, 16, '75.00'),
(140, 17, '75.00'),
(150, 1, '30.00'),
(150, 6, '75.00'),
(150, 10, '55.00'),
(150, 11, '55.00'),
(160, 3, '20.00'),
(160, 6, '40.00'),
(160, 7, '45.00'),
(160, 8, '45.00');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DepartmentName` char(35) NOT NULL,
  `BudgetCode` char(30) NOT NULL,
  `OfficeNumber` char(15) NOT NULL,
  `DepartmentPhone` char(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DepartmentName`, `BudgetCode`, `OfficeNumber`, `DepartmentPhone`) VALUES
('Accounting', 'BC-500-10', 'BLDG01-120', '360-285-8405'),
('Administration', 'BC-100-10', 'BLDG01-210', '360-285-8100'),
('Finance', 'BC-400-10', 'BLDG01-110', '360-285-8400'),
('Human Resources', 'BC-300-10', 'BLDG01-230', '360-285-8300'),
('InfoSystems', 'BC-700-10', 'BLDG02-210', '360-287-8600'),
('Legal', 'BC-200-10', 'BLDG01-220', '360-285-8200'),
('Production', 'BC-900-10', 'BLDG02-110', '360-287-8800'),
('Research and Development', 'BC-800-10', 'BLDG02-250', '360-287-8700'),
('Sales and Marketing', 'BC-600-10', 'BLDG01-250', '360-287-8500');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `EmployeeNumber` int(11) NOT NULL,
  `FirstName` char(25) NOT NULL,
  `LastName` char(25) NOT NULL,
  `Department` char(35) NOT NULL DEFAULT 'Human Resources',
  `Position` char(35) DEFAULT NULL,
  `Supervisor` int(11) DEFAULT NULL,
  `OfficePhone` char(12) DEFAULT NULL,
  `EmailAddress` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`EmployeeNumber`, `FirstName`, `LastName`, `Department`, `Position`, `Supervisor`, `OfficePhone`, `EmailAddress`) VALUES
(1, 'Mary', 'Jacobs', 'Administration', 'CEO', NULL, '360-285-8110', 'Mary.Jacobs@WP.com'),
(2, 'Rosalie', 'Jackson', 'Administration', 'Admin Assistant', NULL, '360-285-8120', 'Rosalie.Jackson@WP.com'),
(3, 'Richard', 'Bandalone', 'Legal', 'Attorney', NULL, '360-285-8210', 'Richard.Bandalone@WP.com'),
(4, 'George', 'Smith', 'Human Resources', 'HR3', NULL, '360-285-8310', 'George.Smith@WP.com'),
(5, 'Alan', 'Adams', 'Human Resources', 'HR1', NULL, '360-285-8320', 'Alan.Adams@WP.com'),
(6, 'Ken', 'Evans', 'Finance', 'CFO', NULL, '360-285-8410', 'Ken.Evans@WP.com'),
(7, 'Mary', 'Abernathy', 'Finance', 'FA3', NULL, '360-285-8420', 'Mary.Abernathy@WP.com'),
(8, 'Tom', 'Caruthers', 'Accounting', 'FA2', NULL, '360-285-8430', 'Tom.Caruthers@WP.com'),
(9, 'Heather', 'Jones', 'Accounting', 'FA2', NULL, '360-285-8440', 'Heather.Jones@WP.com'),
(10, 'Ken', 'Numoto', 'Sales and Marketing', 'SM3', NULL, '360-287-8510', 'Ken.Numoto@WP.com'),
(11, 'Linda', 'Granger', 'Sales and Marketing', 'SM2', NULL, '360-287-8520', 'Linda.Granger@WP.com'),
(12, 'James', 'Nestor', 'InfoSystems', 'CIO', NULL, '360-287-8610', 'James.Nestor@WP.com'),
(13, 'Rick', 'Brown', 'InfoSystems', 'IS2', NULL, '748-235-2345', 'Rick.Brown@WP.com'),
(14, 'Mike', 'Nguyen', 'Research and Development', 'CTO', NULL, '360-287-8710', 'Mike.Nguyen@WP.com'),
(15, 'Jason', 'Sleeman', 'Research and Development', 'RD3', NULL, '360-287-8720', 'Jason.Sleeman@WP.com'),
(16, 'Mary', 'Smith', 'Production', 'OPS3', NULL, '360-287-8810', 'Mary.Smith@WP.com'),
(17, 'Tom', 'Jackson', 'Production', 'OPS2', NULL, '360-287-8820', 'Tom.Jackson@WP.com'),
(18, 'George', 'Jones', 'Production', 'OPS2', NULL, '360-287-8830', 'George.Jones@WP.com'),
(19, 'Julia', 'Hayakawa', 'Production', 'OPS1', NULL, '847-630-815', 'Julia.Hayakawa@WP.com'),
(20, 'Sam', 'Stewart', 'Production', 'OPS1', NULL, '630-289-5643', 'Sam.Stewart@WP.com');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `ProjectID` int(11) NOT NULL,
  `ProjectName` char(50) NOT NULL,
  `Department` char(35) NOT NULL,
  `MaxHours` decimal(8,2) NOT NULL DEFAULT 100.00,
  `StartDate` date DEFAULT NULL,
  `EndDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`ProjectID`, `ProjectName`, `Department`, `MaxHours`, `StartDate`, `EndDate`) VALUES
(100, '2017 Q3 Production Plan', 'Production', '100.00', '2017-05-10', '2017-06-15'),
(110, '2017 Q3 Marketing Plan', 'Sales and Marketing', '135.00', '2017-05-10', '2017-06-15'),
(120, '2017 Q3 Portfolio Analysis', 'Finance', '120.00', '2017-06-05', '2017-06-25'),
(130, '2017 Q3 Tax Preparation', 'Accounting', '145.00', '2017-08-10', '2017-10-15'),
(140, '2017 Q4 Production Plan', 'Production', '100.00', '2017-08-10', '2017-09-15'),
(150, '2017 Q4 Marketing Plan', 'Sales and Marketing', '135.00', '2017-08-10', '2017-09-15'),
(160, '2017 Q4 Portfolio Analysis', 'Finance', '140.00', '2017-10-05', '2019-09-26');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assignment`
--
ALTER TABLE `assignment`
  ADD PRIMARY KEY (`ProjectID`,`EmployeeNumber`),
  ADD KEY `ASSIGN_EMP_FK` (`EmployeeNumber`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`DepartmentName`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`EmployeeNumber`),
  ADD UNIQUE KEY `EmailAddress` (`EmailAddress`),
  ADD KEY `EMP_DEPART_FK` (`Department`),
  ADD KEY `EMP_SUPER_FK` (`Supervisor`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`ProjectID`),
  ADD KEY `PROJ_DEPART_FK` (`Department`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `assignment`
--
ALTER TABLE `assignment`
  ADD CONSTRAINT `ASSIGN_EMP_FK` FOREIGN KEY (`EmployeeNumber`) REFERENCES `employee` (`EmployeeNumber`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `ASSIGN_PROJ_FK` FOREIGN KEY (`ProjectID`) REFERENCES `project` (`ProjectID`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `employee`
--
ALTER TABLE `employee`
  ADD CONSTRAINT `EMP_DEPART_FK` FOREIGN KEY (`Department`) REFERENCES `department` (`DepartmentName`) ON UPDATE CASCADE,
  ADD CONSTRAINT `EMP_SUPER_FK` FOREIGN KEY (`Supervisor`) REFERENCES `employee` (`EmployeeNumber`);

--
-- Constraints for table `project`
--
ALTER TABLE `project`
  ADD CONSTRAINT `PROJ_DEPART_FK` FOREIGN KEY (`Department`) REFERENCES `department` (`DepartmentName`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
