-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2026 at 04:15 AM
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
-- Database: `sampledb`
--

-- --------------------------------------------------------

--
-- Table structure for table `piece`
--

CREATE TABLE `piece` (
  `PieceId` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `PieceTypeId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `piece`
--

INSERT INTO `piece` (`PieceId`, `Name`, `PieceTypeId`) VALUES
(1, 'Samsung Odyessy 43\" TV', 1),
(2, 'Home Made PC', 1),
(3, 'Planar Monitor 27\"', 1),
(4, 'Packers Helmet Signed', 4),
(5, 'Blue Office Chair', 3),
(6, 'Rubiks Cube', 2),
(7, 'Playstation 5', 1),
(8, 'Boxing Gloves', 4);

-- --------------------------------------------------------

--
-- Table structure for table `types`
--

CREATE TABLE `types` (
  `TypeId` int(11) NOT NULL,
  `TypeName` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `types`
--

INSERT INTO `types` (`TypeId`, `TypeName`) VALUES
(1, 'Electronic'),
(2, 'Toy'),
(3, 'Furniture'),
(4, 'Sport'),
(5, 'Decoration');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `piece`
--
ALTER TABLE `piece`
  ADD PRIMARY KEY (`PieceId`),
  ADD KEY `PieceTypeId` (`PieceTypeId`);

--
-- Indexes for table `types`
--
ALTER TABLE `types`
  ADD PRIMARY KEY (`TypeId`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `piece`
--
ALTER TABLE `piece`
  ADD CONSTRAINT `piece_ibfk_1` FOREIGN KEY (`PieceTypeId`) REFERENCES `types` (`TypeId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
