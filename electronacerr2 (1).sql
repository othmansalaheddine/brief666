-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2023 at 09:29 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electronacerr2`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id_c` int(11) NOT NULL,
  `name_c` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id_c`, `name_c`) VALUES
(1, 'laptop'),
(2, 'phone'),
(3, 'speaker');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `titre` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `prix` float DEFAULT NULL,
  `image` varchar(255) NOT NULL,
  `id_c` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `titre`, `description`, `prix`, `image`, `id_c`) VALUES
(38, 'LapTop', 'Pc Hp  256g  SSD i8 6eme génération ', 300, 'IMG-65649484c6f0b8.26752975.jpg', 1),
(41, 'iphon 13 pro max ', 'iphon 13 pro max 256 12 ram 2.5Ghz', 200, 'IMG-6564ac4e33db66.08116654.jpg', 2),
(44, 'iphon 14 pro max ', 'iphon 14 pro max  256g 12ram ', 248, 'IMG-6564ace2d95b53.67009754.jpg', 2),
(49, 'LapTop gamer', 'LapTop gamer ledder(red , bleu , green)', 500, 'IMG-6564add7b94975.85661827.jpg', 1),
(50, 'nokia ', '3310 nokia pile', 120, 'IMG-6565b7ba529b60.63222625.jpg', 2),
(57, 'speaker ', 'speaker voix Pokémon ', 110, 'IMG-6565b9a2330c78.62437249.jpg', 3),
(58, 'speaker ', 'haut voix speaker', 220, 'IMG-6565b9ed280f00.91751105.jpg', 3),
(61, 'speaker ', 'speaker sony a haut vois ledder', 500, 'IMG-6565ba7f61aae2.69251716.jpg', 3),
(67, 'LapTop', 'lapTop + setup(souri + clavier + les leddes)', 675, 'IMG-6565bd6c4d9b57.89305293.jpg', 1),
(76, 'box gamer', 'box gamers ', 2500, 'IMG-65675e9b6e38f7.25804107.jpg', 1),
(79, 'speaker', 'speaker 🔊 ', 620, 'IMG-65675ed1645c91.57183067.jpg', 3),
(80, 'LapTop', 'Pc Hp  256g  SSD i8 6eme génération ', 745, 'IMG-65675eee1151a4.85279147.jpg', 1),
(83, 'iphon 13 pro max ', 'iphon 13 pro max 256 12 ram 2.5Ghz bleu ciel', 350, 'IMG-65675f5459ca64.34026293.jpg', 2),
(86, 'iphon 11 pro max ', 'iphon 13 pro max 256 12 ram 2.5Ghz blanch', 330, 'IMG-65675f922e2543.44422873.jpg', 2),
(89, '1910 tele', '1910 telefon 9dim bzaf', 456, 'IMG-65675fd5968861.89762217.jpg', 2),
(92, 'big speaker', 'big speaker 20hz', 1000, 'IMG-6567600a1c5862.01727076.jpg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `Username` varchar(255) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Password` varchar(255) DEFAULT NULL,
  `Role` enum('admin','user') DEFAULT 'user',
  `Verified` tinyint(1) DEFAULT 0,
  `Hidden` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `Username`, `Email`, `Password`, `Role`, `Verified`, `Hidden`) VALUES
(15, NULL, 'admin@test.com', 'ad123', '', 0, 0),
(16, NULL, 'user@test.com', 'user123', '', 0, 0),
(27, NULL, 'admin2@test.com', 'ad1234', 'admin', 0, 0),
(28, NULL, 'kata2ib@9assam.com', '2014', 'user', 0, 0),
(29, NULL, '', '', 'user', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_c`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_c_fr` (`id_c`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD UNIQUE KEY `Email` (`Email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id_c` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `id_c_fr` FOREIGN KEY (`id_c`) REFERENCES `categories` (`id_c`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
