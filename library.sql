-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: mysql
-- Generation Time: Apr 12, 2022 at 06:58 AM
-- Server version: 8.0.28
-- PHP Version: 8.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `Answer`
--

CREATE TABLE `Answer` (
  `ID` int NOT NULL,
  `QuestionID` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Text` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `IsCorrectAnswer` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Answer`
--

INSERT INTO `Answer` (`ID`, `QuestionID`, `Text`, `IsCorrectAnswer`) VALUES
(1, '1', '195', '1'),
(2, '1', '190', '0'),
(3, '1', '198', '0'),
(4, '1', '197', '0'),
(5, '2', 'Vatican City', '1'),
(6, '2', 'San Marino', '0'),
(7, '2', 'Tonga', '0'),
(8, '2', 'Tuvalu', '0'),
(13, '3', 'Mongolia', '1'),
(14, '3', 'Liechtenstein', '0'),
(15, '3', 'Palau', '0'),
(16, '3', 'Malta', '0'),
(17, '4', 'Canberra', '1'),
(18, '4', 'Sydney', '0'),
(19, '4', 'Melbourne', '0'),
(20, '4', 'Adelaide', '0'),
(21, '5', 'Monaco', '1'),
(22, '5', 'Germany', '0'),
(23, '5', 'China ', '0'),
(24, '5', 'Japan', '0'),
(25, '6', 'Istanbul', '1'),
(26, '6', 'Jakarta', '0'),
(27, '6', 'Manila', '0'),
(28, '6', 'Lagos', '0'),
(29, '7', 'Morocco', '1'),
(30, '7', 'Spain', '0'),
(31, '7', 'Costa Rica', '0'),
(32, '7', 'Venezuela\r\n\r\n\r\n\r\n\r\n', '0'),
(33, '8', 'Niger', '1'),
(34, '8', 'Uganda', '0'),
(35, '8', 'Somalia', '0'),
(36, '8', 'Burundi\r\n', '0');

-- --------------------------------------------------------

--
-- Table structure for table `Books`
--

CREATE TABLE `Books` (
  `ID` int NOT NULL,
  `Title` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `Author` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Year` int NOT NULL,
  `Category` enum('HTML','CSS','JAVASCRIPT','MYSQL','TEEN','PHILOSOPHY','RELATIONSHIPS','NOVEL','BIOGRAPHY','SELFHELP') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Books`
--

INSERT INTO `Books` (`ID`, `Title`, `Author`, `Year`, `Category`) VALUES
(1, 'Paper Towns', 'John Green', 2008, 'TEEN'),
(2, 'Existentialism Is a Humanism', 'John-Paul Sartre', 1946, 'TEEN'),
(3, 'Act like a lady, think like a man\r\n', 'Steve Harvey', 2009, 'PHILOSOPHY'),
(4, 'Diary of an Oxygen Thief\r\n', 'Anonymous', 2006, 'NOVEL'),
(5, 'Desert Flower', 'Waris Dirie, Cathleen Miller', 1998, 'BIOGRAPHY'),
(6, 'Good Vibes, Good Life', 'Vex King', 2018, 'SELFHELP');

-- --------------------------------------------------------

--
-- Table structure for table `Questions`
--

CREATE TABLE `Questions` (
  `ID` int NOT NULL,
  `Question` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `Type` enum('SINGLE','MULTIPLE') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `Questions`
--

INSERT INTO `Questions` (`ID`, `Question`, `Type`) VALUES
(1, 'How many countries do we have in the World today?', 'SINGLE'),
(2, 'What is the smallest Country in the World in terms of landsmass', 'SINGLE'),
(3, 'Which country has the fewest people compared to its land size?', 'SINGLE'),
(4, 'What is the capital city of Australia?', 'SINGLE'),
(5, 'Which country has the highest population density?', 'SINGLE'),
(6, 'Name the only city that spans two continents?', 'SINGLE'),
(7, 'Which country we find a city called Casablanca?', 'SINGLE'),
(8, 'What is the youngest (people-age) country in the world today?', 'SINGLE');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Answer`
--
ALTER TABLE `Answer`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Books`
--
ALTER TABLE `Books`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Questions`
--
ALTER TABLE `Questions`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Answer`
--
ALTER TABLE `Answer`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `Books`
--
ALTER TABLE `Books`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `Questions`
--
ALTER TABLE `Questions`
  MODIFY `ID` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
