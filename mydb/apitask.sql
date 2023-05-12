-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2023 at 02:31 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `apitask`
--

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(4, '2014_10_12_000000_create_users_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_05_09_060842_create_movies_table', 1),
(7, '2023_05_09_072649_create_movies_table', 2),
(8, '2023_05_09_073937_create_ratings_table', 3),
(9, '2023_05_10_113409_create_ratings_table', 4);

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tconst` varchar(100) NOT NULL,
  `titleType` varchar(100) NOT NULL,
  `primaryTitle` varchar(100) NOT NULL,
  `runtimeMinutes` varchar(100) NOT NULL,
  `genres` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `movies`
--

INSERT INTO `movies` (`id`, `tconst`, `titleType`, `primaryTitle`, `runtimeMinutes`, `genres`) VALUES
(1, 'tt0000001', 'short', 'Carmencita', '1', 'Documentary'),
(2, 'tt0000002', 'movie', 'Le clown et ses chiens', '5', 'Animation'),
(3, 'tt0000003', 'short', 'Pauvre Pierrot', '4', 'Animation'),
(4, 'tt0000004', 'short', 'Un bon bock', '12', 'Animation'),
(5, 'tt0000005', 'movie', 'Blacksmith Scene', '1', 'Comedy'),
(6, 'tt0000006', 'short', 'Chinese Opium Den', '1', 'Short\r'),
(7, 'tt0000007', 'short', 'Corbett and Courtney Before the Kinetograph', '1', 'Sport\r'),
(8, 'tt0000008', 'movie', 'Edison Kinetoscopic Record of a Sneeze', '1', 'Documentary'),
(9, 'tt0000009', 'movie', 'Miss Jerry', '45', 'Romance\r'),
(10, 'tt0000010', 'short', 'Leaving the Factory', '1', 'Action\r'),
(11, 'tt0000011', 'movie', 'Akrobatisches Potpourri', '1', 'Documentary'),
(12, 'tt0000012', 'movie', 'The Arrival of a Train', '1', 'Action\r'),
(13, 'tt0000013', 'movie', 'The Photographical Congress Arrives in Lyon', '1', 'Documentary'),
(14, 'tt0000014', 'short', 'The Waterer Watered', '1', 'Comedy'),
(15, 'tt0000015', 'movie', 'Autour dune cabine', '2', 'Animation'),
(16, 'tt0000016', 'short', 'Boat Leaving the Port', '1', 'Action\r'),
(17, 'tt0000017', 'movie', 'Italienischer Bauerntanz', '1', 'Action\r'),
(18, 'tt0000018', 'short', 'Das boxende Känguruh', '1', 'Short\r'),
(19, 'tt0000019', 'short', 'The Clown Barber', '12', 'Comedy'),
(20, 'tt0000020', 'short', 'The Derby 1895', '1', 'Documentary'),
(21, 'tt0000022', 'short', 'Blacksmith Scene', '1', 'Documentary'),
(22, 'tt0000023', 'movie', 'The Sea', '1', 'Documentary'),
(23, 'tt0000024', 'short', 'Opening of the Kiel Canal', '34', 'News\r'),
(24, 'tt0000025', 'short', 'The Oxford and Cambridge University Boat Race', '415', 'News\r'),
(25, 'tt0000026', 'short', 'The Messers. Lumière at Cards', '1', 'Documentary'),
(26, 'tt0000027', 'short', 'Cordeliers Square in Lyon', '1', 'Action\r'),
(27, 'tt0000028', 'short', 'Fishing for Goldfish', '1', 'Action\r'),
(28, 'tt0000029', 'movie', 'Babys Meal', '1', 'Documentary'),
(29, 'tt0000030', 'short', 'Rough Sea at Dover', '1', 'Documentary'),
(30, 'tt0000031', 'short', 'Jumping the Blanket', '1', 'Documentary'),
(31, 'tt0000032', 'movie', 'Die Serpentintänzerin', '1', 'Short\r'),
(32, 'tt0000033', 'short', 'Horse Trick Riders', '1', 'Documentary'),
(33, 'tt0000034', 'short', 'Arrivée dun train gare de Vincennes', '1', 'Documentary'),
(34, 'tt0000035', 'short', 'Watering the Flowers', '1', 'Comedy'),
(35, 'tt0000036', 'movie', 'Awakening of Rip', '0', 'Drama\r'),
(36, 'tt0000037', 'short', 'Sea Bathing', '1', 'Short\r'),
(37, 'tt0000038', 'movie', 'The Ball Game', '66', 'Documentary'),
(38, 'tt0000039', 'movie', 'Barnet Horse Fair', '415', 'Short\r'),
(39, 'tt0000040', 'short', 'Barque sortant du port de Trouville', '78', 'Documentary'),
(40, 'tt0000041', 'movie', 'Bataille de neige', '66', 'Comedy'),
(41, 'tt0000042', 'short', 'Bateau-mouche sur la Seine', '102', 'Documentary'),
(42, 'tt0000043', 'short', 'Batteuse à vapeur', '85', 'Documentary'),
(43, 'tt0000044', 'short', 'Le bivouac', '1', 'Short\r'),
(44, 'tt0000045', 'movie', 'Les blanchisseuses', '458', 'Short\r'),
(45, 'tt0000046', 'short', 'Bois de Boulogne', '120', 'Comedy'),
(46, 'tt0000047', 'movie', 'Boulevard des Italiens', '444', 'Documentary'),
(47, 'tt0000048', 'short', 'The Boxing Kangaroo', '555', 'Short\r'),
(48, 'tt0000049', 'movie', 'Glove Contest', '695', 'Short\r'),
(49, 'tt0000050', 'short', 'Bébé et fillettes', '120', 'Comedy'),
(50, 'tt0000051', 'movie', 'The Bohemian Encampment', '654', 'Documentary'),
(51, 'tt0000052', 'short', 'Carga de rurales', '222', 'Comedy'),
(52, 'tt0000053', 'movie', 'A Chegada do Comboio Inaugural à Estação Central do Porto', '42', 'Documentary'),
(53, 'tt0000054', 'movie', 'A Merry-Go-Round', '65', 'Short\r'),
(54, 'tt0000055', 'movie', 'Le chiffonnier', '325', 'Short\r'),
(55, 'tt0000056', 'short', 'Uma Corrida de Touros no Campo Pequeno', '415', 'Short\r'),
(56, 'tt0000057', 'movie', 'Cortège de tzar allant à Versailles', '9621', 'Comedy'),
(57, 'tt0000058', 'short', 'Cortège de tzar au Bois de Boulogne', '4745', 'Comedy'),
(58, 'tt0000059', 'movie', 'Coronation of a Village Maiden', '456', 'Short\r'),
(59, 'tt0000060', 'movie', 'Dancing Darkies', '78', 'Horror\r'),
(60, 'tt0000061', 'movie', 'Dancing Girls', '445', 'Short\r'),
(61, 'tt0000062', 'movie', 'Danse serpentine', '23', 'Short\r'),
(62, 'tt0000063', 'short', 'Dessinateur express', '456', 'Short\r'),
(63, 'tt0000064', 'short', 'Dessinateur: Chamberlain', '455', 'Horror\r'),
(64, 'tt0000065', 'short', 'Dessinateur: Reine Victoria', '23', 'Short\r'),
(65, 'tt0000066', 'movie', 'Dessinateur: Von Bismark', '12', 'Short\r'),
(66, 'tt0000067', 'movie', 'Conjurer Making Ten Hats in Sixty Seconds', '12', 'Fantasy\r'),
(67, 'tt0000068', 'movie', 'Unloading the Boat', '45', 'Horror\r'),
(68, 'tt0000069', 'short', 'Post No Bills', '1', 'Short\r'),
(69, 'tt0000070', 'movie', 'Demolition of a Wall', '1', 'Documentary'),
(70, 'tt0000071', 'short', 'Automobiles Starting a Race', '52', 'Sport\r'),
(71, 'tt0000072', 'movie', 'Officers of French Army Leaving Service', '41', 'Short\r'),
(72, 'tt0000073', 'movie', 'Effets de mer sur les rochers', '85', 'Documentary'),
(73, 'tt0000074', 'short', 'Enfants jouant sur la plage', '475', 'Horror\r'),
(74, 'tt0000075', 'movie', 'The Conjuring of a Woman at the House of Robert Houdin', '122', 'Horror\r'),
(75, 'tt0000076', 'short', 'Exit of Rip and the Dwarf', '1', 'Drama\r'),
(76, 'tt0000077', 'movie', 'indien', '457', 'Short\r'),
(77, 'tt0000078', 'short', 'Feira de Gado na Corujeira', '1', 'Documentary'),
(78, 'tt0000079', 'movie', 'La gare Saint-Lazare', '123', 'Documentary'),
(79, 'tt0000080', 'short', 'Grandes manoeuvres', '65', 'Family\r'),
(80, 'tt0000081', 'movie', 'Towing a Boat on the River', '100', 'Family\r'),
(81, 'tt0000082', 'short', 'A Hard Wash', '45', 'Comedy'),
(82, 'tt0000083', 'short', 'Les indiscrets', '121', 'Short\r'),
(83, 'tt0000084', 'short', 'Les ivrognes', '3', 'Short\r'),
(84, 'tt0000085', 'movie', 'Gardener Burning Weeds', '125', 'Short\r'),
(85, 'tt0000086', 'movie', 'Family', '100', 'Family\r'),
(86, 'tt0000087', 'short', 'Life ', '475', 'Documentary'),
(87, 'tt0000088', 'short', 'Market Day', '111', 'Family\r'),
(88, 'tt0000089', 'movie', 'Leaving Jerusalem by Railway', '1', 'Documentary'),
(89, 'tt0000090', 'short', 'Libération des territoriaux', '859', 'Documentary'),
(90, 'tt0000091', 'short', 'The House of the Devil', '3', 'Horror\r'),
(91, 'tt0000092', 'short', 'Marée montante sur Brise-Larmes', '652', 'Documentary'),
(92, 'tt0000093', 'movie', 'Melbourne', '653', 'Documentary'),
(93, 'tt0000094', 'short', 'Miss de Vere', '22', 'Short\r'),
(94, 'tt0000095', 'movie', 'The Mysterious Paper', '88', 'Short\r'),
(95, 'tt0000096', 'short', 'Place Saint-Augustin', '487', 'Documentary'),
(96, 'tt0000097', 'movie', 'Picasso', '965', 'Documentary'),
(97, 'tt0000098', 'short', 'alice In Wonderland', '222', 'Fantasy\r'),
(98, 'tt0000099', 'short', 'Pele', '555', 'Documentary'),
(99, 'tt0000100', 'movie', 'Ronaldo', '145', 'Fantasy\r');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tconst` varchar(100) NOT NULL,
  `averageRating` double(6,2) NOT NULL,
  `numVotes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `tconst`, `averageRating`, `numVotes`) VALUES
(1, 'tt0000001', 5.70, 1911),
(2, 'tt0000002', 5.80, 257),
(3, 'tt0000003', 6.50, 1716),
(4, 'tt0000004', 5.60, 169),
(5, 'tt0000005', 6.20, 2532),
(6, 'tt0000006', 5.10, 173),
(7, 'tt0000007', 5.40, 790),
(8, 'tt0000008', 5.40, 2054),
(9, 'tt0000009', 5.20, 199),
(10, 'tt0000010', 6.90, 6929),
(11, 'tt0000011', 5.30, 355),
(12, 'tt0000012', 7.40, 11869),
(13, 'tt0000013', 5.70, 1829),
(14, 'tt0000014', 7.10, 5322),
(15, 'tt0000015', 6.20, 1020),
(16, 'tt0000016', 5.90, 1440),
(17, 'tt0000017', 4.60, 314),
(18, 'tt0000018', 5.30, 577),
(19, 'tt0000019', 5.00, 31),
(20, 'tt0000020', 4.80, 345),
(21, 'tt0000022', 5.10, 1061),
(22, 'tt0000023', 5.70, 1387),
(23, 'tt0000024', 4.20, 99),
(24, 'tt0000025', 4.00, 45),
(25, 'tt0000026', 5.60, 1496),
(26, 'tt0000027', 5.60, 1118),
(27, 'tt0000028', 5.10, 1036),
(28, 'tt0000029', 5.90, 3266),
(29, 'tt0000030', 5.20, 820),
(30, 'tt0000031', 5.50, 975),
(31, 'tt0000032', 5.00, 408),
(32, 'tt0000033', 5.50, 992),
(33, 'tt0000034', 5.00, 190),
(34, 'tt0000035', 5.30, 78),
(35, 'tt0000036', 4.40, 594),
(36, 'tt0000037', 4.20, 66),
(37, 'tt0000038', 4.10, 197),
(38, 'tt0000039', 3.10, 30),
(39, 'tt0000040', 4.20, 64),
(40, 'tt0000041', 6.80, 1772),
(41, 'tt0000042', 3.80, 37),
(42, 'tt0000043', 3.60, 32),
(43, 'tt0000044', 3.70, 45),
(44, 'tt0000045', 4.10, 33),
(45, 'tt0000046', 3.60, 34),
(46, 'tt0000047', 3.10, 34),
(47, 'tt0000048', 4.80, 191),
(48, 'tt0000049', 4.80, 49),
(49, 'tt0000050', 3.70, 34),
(50, 'tt0000051', 3.20, 35),
(51, 'tt0000052', 4.20, 97),
(52, 'tt0000053', 2.70, 18),
(53, 'tt0000054', 4.50, 34),
(54, 'tt0000055', 3.20, 30),
(55, 'tt0000056', 2.50, 22),
(56, 'tt0000057', 4.50, 34),
(57, 'tt0000058', 4.30, 33),
(58, 'tt0000059', 3.00, 27),
(59, 'tt0000060', 7.40, 87),
(60, 'tt0000061', 4.10, 24),
(61, 'tt0000062', 6.30, 193),
(62, 'tt0000063', 2.90, 28),
(63, 'tt0000064', 2.70, 29),
(64, 'tt0000065', 2.90, 29),
(65, 'tt0000066', 2.80, 29),
(66, 'tt0000067', 5.60, 62),
(67, 'tt0000068', 3.30, 31),
(68, 'tt0000069', 4.90, 441),
(69, 'tt0000070', 6.40, 2574),
(70, 'tt0000071', 3.50, 29),
(71, 'tt0000072', 3.20, 27),
(72, 'tt0000073', 2.90, 30),
(73, 'tt0000074', 4.10, 31),
(74, 'tt0000075', 6.30, 1866),
(75, 'tt0000076', 4.40, 523),
(76, 'tt0000077', 4.10, 35),
(77, 'tt0000078', 3.60, 76),
(78, 'tt0000079', 4.40, 35),
(79, 'tt0000080', 3.50, 31),
(80, 'tt0000081', 3.60, 32),
(81, 'tt0000082', 4.50, 49),
(82, 'tt0000083', 4.20, 32),
(83, 'tt0000084', 4.00, 30),
(84, 'tt0000085', 4.20, 33),
(85, 'tt0000086', 3.70, 33),
(86, 'tt0000087', 4.30, 37),
(87, 'tt0000088', 3.70, 32),
(88, 'tt0000089', 6.20, 977),
(89, 'tt0000090', 3.50, 31),
(90, 'tt0000091', 6.70, 3479),
(91, 'tt0000092', 4.00, 29),
(92, 'tt0000093', 4.70, 93),
(93, 'tt0000094', 4.50, 32),
(94, 'tt0000095', 4.30, 34),
(95, 'tt0000096', 3.80, 29),
(96, 'tt0000097', 4.50, 33),
(97, 'tt0000098', 4.60, 36),
(98, 'tt0000099', 4.10, 32),
(99, 'tt0000100', 4.60, 53);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
