-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 12, 2026 at 03:07 PM
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
-- Database: `wallartdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `art`
--

CREATE TABLE `art` (
  `id` varchar(255) NOT NULL,
  `art_title` varchar(255) DEFAULT NULL,
  `artist_name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `art`
--

INSERT INTO `art` (`id`, `art_title`, `artist_name`, `price`, `image_url`, `size`) VALUES
('A001', 'Sunset Landscape', 'John Silva', 4500, 'http://localhost:8080/images/A001.png', '24x36 in'),
('A002', 'Ocean Waves', 'Nimal Perera', 5200, 'http://localhost:8080/images/A002.png', '18x24 in'),
('A003', 'Mountain View', 'Kasun Fernando', 3900, 'http://localhost:8080/images/A003.png', '12x12 in'),
('A004', 'City Lights', 'Amal Perera', 6000, 'http://localhost:8080/images/A004.png', '30x40 in'),
('A005', 'Forest Path', 'Sanduni Jayaweera', 4200, 'http://localhost:8080/images/A005.png', '18x24 in'),
('A006', 'Desert Mirage', 'Ruwan Gunawardena', 5500, 'http://localhost:8080/images/A006.png', '24x36 in'),
('A007', 'Midnight Bloom', 'Ishara Wickramasinghe', 4800, 'http://localhost:8080/images/A007.png', '16x20 in'),
('A008', 'Rainy Day', 'Chathura Peiris', 3100, 'http://localhost:8080/images/A008.png', '8x10 in'),
('A009', 'Golden Fields', 'Dilhani Siriwardena', 4700, 'http://localhost:8080/images/A009.png', '20x20 in'),
('A010', 'Abstract Blues', 'Menaka Rajakaruna', 6300, 'http://localhost:8080/images/A010.png', '36x48 in');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `art`
--
ALTER TABLE `art`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
