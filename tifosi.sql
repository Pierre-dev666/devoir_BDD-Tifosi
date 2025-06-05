-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jun 05, 2025 at 15:15 PM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tifosi`
--
CREATE DATABASE IF NOT EXISTS `tifosi` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci;
USE `tifosi`;

-- --------------------------------------------------------

--
-- Table structure for table `achete`
--

DROP TABLE IF EXISTS `achete`;
CREATE TABLE IF NOT EXISTS `achete` (
  `id_Client` int NOT NULL,
  `id_foccacia` int NOT NULL,
  `jour` date NOT NULL,
  PRIMARY KEY (`id_Client`,`id_foccacia`,`jour`),
  KEY `id_foccacia` (`id_foccacia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `boisson`
--

DROP TABLE IF EXISTS `boisson`;
CREATE TABLE IF NOT EXISTS `boisson` (
  `id_boisson` int NOT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `id_marque` int DEFAULT NULL,
  PRIMARY KEY (`id_boisson`),
  KEY `id_marque` (`id_marque`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `boisson`
--

INSERT INTO `boisson` (`id_boisson`, `nom`, `id_marque`) VALUES
(1, 'Coca-cola zéro', 1),
(2, 'Coca-cola original', 1),
(3, 'Fanta citron', 1),
(4, 'Fanta orange', 1),
(5, 'Capri-sun', 1),
(6, 'Pepsi', 4),
(7, 'Pepsi Max Zéro', 4),
(8, 'Lipton zéro citron', 4),
(9, 'Lipton Peach', 4),
(10, 'Monster energy ultra gold', 3),
(11, 'Monster energy ultra blue', 3),
(12, 'Eau de source', 2);

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id_Client` int NOT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `email` varchar(150) DEFAULT NULL,
  `code_postal` int DEFAULT NULL,
  PRIMARY KEY (`id_Client`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id_Client`, `nom`, `email`, `code_postal`) VALUES
(1, 'Alain Dasilva', 'Alain.Dasilva@client.fr', 31000),
(2, 'Carlos Martinez', 'Carlos.Martinez@client.fr', 47000),
(3, 'Claire Lepoint', 'Claire.Lepoint@client.fr', 33000),
(4, 'David Beckham', 'David.Beckham@client.fr', 75000),
(5, 'Élodie Davinci', 'Élodie.Davinci@client.fr', 66000),
(6, 'Frances Desmond', 'Frances.Desmond@client.fr', 31000),
(7, 'Gaby Leroy', 'Gaby.Leroy@client.fr', 33200),
(8, 'Hugo Decrypte', 'Hugo.Decrypte@client.fr', 47300),
(9, 'Karol Simon', 'Karol.Simon@client.fr', 47150);

-- --------------------------------------------------------

--
-- Table structure for table `comprend`
--

DROP TABLE IF EXISTS `comprend`;
CREATE TABLE IF NOT EXISTS `comprend` (
  `id_foccacia` int NOT NULL,
  `id_ingredient` int NOT NULL,
  PRIMARY KEY (`id_foccacia`,`id_ingredient`),
  KEY `id_ingredient` (`id_ingredient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `comprend`
--

INSERT INTO `comprend` (`id_foccacia`, `id_ingredient`) VALUES
(1, 1),
(2, 1),
(3, 1),
(5, 1),
(6, 1),
(7, 1),
(1, 2),
(5, 2),
(6, 2),
(7, 2),
(1, 3),
(2, 3),
(3, 3),
(4, 3),
(5, 3),
(6, 3),
(7, 3),
(8, 3),
(1, 4),
(8, 4),
(1, 5),
(2, 5),
(3, 5),
(8, 5),
(1, 6),
(8, 6),
(1, 7),
(2, 7),
(3, 7),
(4, 7),
(5, 7),
(8, 7),
(1, 8),
(2, 8),
(3, 8),
(4, 8),
(5, 8),
(6, 8),
(7, 8),
(8, 8),
(1, 9),
(2, 9),
(3, 9),
(4, 9),
(5, 9),
(6, 9),
(7, 9),
(8, 9),
(1, 10),
(2, 10),
(5, 10),
(6, 10),
(7, 10),
(8, 10),
(2, 11),
(3, 12),
(4, 13),
(8, 13),
(4, 14),
(4, 15),
(5, 16),
(5, 17),
(6, 18),
(7, 18),
(6, 19),
(6, 20),
(7, 21),
(8, 21),
(8, 22),
(8, 23);

-- --------------------------------------------------------

--
-- Table structure for table `contient`
--

DROP TABLE IF EXISTS `contient`;
CREATE TABLE IF NOT EXISTS `contient` (
  `id_menu` int NOT NULL,
  `id_boisson` int NOT NULL,
  PRIMARY KEY (`id_menu`,`id_boisson`),
  KEY `id_boisson` (`id_boisson`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `foccacia`
--

DROP TABLE IF EXISTS `foccacia`;
CREATE TABLE IF NOT EXISTS `foccacia` (
  `id_foccacia` int NOT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `prix` float DEFAULT NULL,
  PRIMARY KEY (`id_foccacia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `foccacia`
--

INSERT INTO `foccacia` (`id_foccacia`, `nom`, `prix`) VALUES
(1, 'Mozaccia', 9.8),
(2, 'Gorgonzollaccia', 10.8),
(3, 'Raclaccia', 8.9),
(4, 'Emmentalaccia', 9.8),
(5, 'Tradizione', 8.9),
(6, 'Hawaienne', 11.2),
(7, 'Américaine', 10.8),
(8, 'Paysanne', 12.8);

-- --------------------------------------------------------

--
-- Table structure for table `ingredient`
--

DROP TABLE IF EXISTS `ingredient`;
CREATE TABLE IF NOT EXISTS `ingredient` (
  `id_ingredient` int NOT NULL,
  `nom` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_ingredient`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `ingredient`
--

INSERT INTO `ingredient` (`id_ingredient`, `nom`) VALUES
(1, 'Base tomate'),
(2, 'Mozarella'),
(3, 'Cresson'),
(4, 'Jambon fumé'),
(5, 'Ail'),
(6, 'Artichaut'),
(7, 'Champignon'),
(8, 'Parmesan'),
(9, 'Poivre'),
(10, 'Olive noire'),
(11, 'Gorgonzola'),
(12, 'Raclette'),
(13, 'Base crème'),
(14, 'Emmental'),
(15, 'Oignon'),
(16, 'Jambon cuit'),
(17, 'Olive verte'),
(18, 'Bacon'),
(19, 'Ananas'),
(20, 'Piment'),
(21, 'Pomme de terre'),
(22, 'Chèvre'),
(23, 'Œuf');

-- --------------------------------------------------------

--
-- Table structure for table `marque`
--

DROP TABLE IF EXISTS `marque`;
CREATE TABLE IF NOT EXISTS `marque` (
  `id_marque` int NOT NULL,
  `nom` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_marque`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `marque`
--

INSERT INTO `marque` (`id_marque`, `nom`) VALUES
(1, 'Coca-cola'),
(2, 'Cristalline'),
(3, 'Monster'),
(4, 'Pepsico');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
CREATE TABLE IF NOT EXISTS `menu` (
  `id_menu` int NOT NULL,
  `nom` varchar(45) DEFAULT NULL,
  `prix` float DEFAULT NULL,
  `id_foccacia` int DEFAULT NULL,
  PRIMARY KEY (`id_menu`),
  KEY `id_foccacia` (`id_foccacia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `paye`
--

DROP TABLE IF EXISTS `paye`;
CREATE TABLE IF NOT EXISTS `paye` (
  `id_Client` int NOT NULL,
  `id_menu` int NOT NULL,
  `jour` date NOT NULL,
  PRIMARY KEY (`id_Client`,`id_menu`,`jour`),
  KEY `id_menu` (`id_menu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `achete`
--
ALTER TABLE `achete`
  ADD CONSTRAINT `achete_ibfk_1` FOREIGN KEY (`id_Client`) REFERENCES `client` (`id_Client`),
  ADD CONSTRAINT `achete_ibfk_2` FOREIGN KEY (`id_foccacia`) REFERENCES `foccacia` (`id_foccacia`);

--
-- Constraints for table `boisson`
--
ALTER TABLE `boisson`
  ADD CONSTRAINT `boisson_ibfk_1` FOREIGN KEY (`id_marque`) REFERENCES `marque` (`id_marque`);

--
-- Constraints for table `comprend`
--
ALTER TABLE `comprend`
  ADD CONSTRAINT `comprend_ibfk_1` FOREIGN KEY (`id_foccacia`) REFERENCES `foccacia` (`id_foccacia`),
  ADD CONSTRAINT `comprend_ibfk_2` FOREIGN KEY (`id_ingredient`) REFERENCES `ingredient` (`id_ingredient`);

--
-- Constraints for table `contient`
--
ALTER TABLE `contient`
  ADD CONSTRAINT `contient_ibfk_1` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`),
  ADD CONSTRAINT `contient_ibfk_2` FOREIGN KEY (`id_boisson`) REFERENCES `boisson` (`id_boisson`);

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
  ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`id_foccacia`) REFERENCES `foccacia` (`id_foccacia`);

--
-- Constraints for table `paye`
--
ALTER TABLE `paye`
  ADD CONSTRAINT `paye_ibfk_1` FOREIGN KEY (`id_Client`) REFERENCES `client` (`id_Client`),
  ADD CONSTRAINT `paye_ibfk_2` FOREIGN KEY (`id_menu`) REFERENCES `menu` (`id_menu`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
