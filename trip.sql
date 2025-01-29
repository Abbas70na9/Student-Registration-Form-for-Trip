-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2025 at 12:29 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `trip`
--

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Age` int(10) NOT NULL,
  `Gender` varchar(20) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Phone` int(11) NOT NULL,
  `Other` varchar(1000) NOT NULL,
  `dt` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Id`, `Name`, `Age`, `Gender`, `Email`, `Phone`, `Other`, `dt`) VALUES
(1, 'Abbas', 20, 'male', 'abbas@gmail.com', 1234567890, 'hi i am abbas', '2025-01-02'),
(2, 'Iftikhar Hussain ', 10, 'male', 'abbas458468@gmail.com', 2147483647, 'hello', '2025-01-02'),
(3, 'Iftikhar Hussain ', 10, 'male', 'abbas458468@gmail.com', 2147483647, 'hello', '2025-01-02'),
(4, 'Nasir', 10, 'male', 'nasir@gmail.com', 2147483647, 'Hi i am interested', '2025-01-02'),
(5, 'Nasir', 10, 'male', 'nasir@gmail.com', 2147483647, 'Hi i am interested', '2025-01-02'),
(6, 'Nasir', 10, 'male', 'nasir@gmail.com', 2147483647, 'Hi i am interested', '2025-01-02'),
(7, 'Nelofar ', 10, 'female', 'ahmed@gmail.com', 2147483647, 'hi', '2025-01-02'),
(8, 'Nelofar ', 10, 'female', 'ahmed@gmail.com', 2147483647, 'hi', '2025-01-02'),
(9, 'Tehmina batool ', 10, 'female', 'aas458468@gmail.com', 2147483647, 'hi', '2025-01-02'),
(10, 'Tehmina batool ', 10, 'female', 'aas458468@gmail.com', 2147483647, 'hi', '2025-01-02'),
(11, 'Tehmina batool ', 10, 'female', 'aas458468@gmail.com', 2147483647, 'hi', '2025-01-02'),
(12, 'Tehmina batool ', 10, 'female', 'aas458468@gmail.com', 2147483647, 'hi', '2025-01-02'),
(13, 'Muhammad Abbas', 10, 'male', 'aas458468@gmail.com', 2147483647, 'hello', '2025-01-29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
