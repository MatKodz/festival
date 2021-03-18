-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Mar 18, 2021 at 06:18 PM
-- Server version: 5.6.35
-- PHP Version: 7.0.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exercice1`
--

-- --------------------------------------------------------

--
-- Table structure for table `f_cinemas`
--

CREATE TABLE `f_cinemas` (
  `cinema_id` int(11) NOT NULL,
  `cinema_nom` varchar(50) DEFAULT NULL,
  `cinema_adresse` varchar(100) DEFAULT NULL,
  `cinema_telephone` int(10) UNSIGNED ZEROFILL DEFAULT NULL,
  `cinema_nb_salles` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `f_cinemas`
--

INSERT INTO `f_cinemas` (`cinema_id`, `cinema_nom`, `cinema_adresse`, `cinema_telephone`, `cinema_nb_salles`) VALUES
(1, 'Diagonal Cinémas', '5 Rue de Verdun, Montpellier', 0467585810, 7),
(2, 'Gaumont Comédie', '10 Place de la Comédie, Montpellier', 0467000000, 12);

-- --------------------------------------------------------

--
-- Table structure for table `f_films`
--

CREATE TABLE `f_films` (
  `film_id` int(11) NOT NULL,
  `film_nom` varchar(50) DEFAULT NULL,
  `film_duree` time DEFAULT NULL,
  `film_date_sortie` year(4) DEFAULT NULL,
  `film_producteur` varchar(50) DEFAULT NULL,
  `film_realisateur` varchar(50) DEFAULT NULL,
  `film_pays` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `f_films`
--

INSERT INTO `f_films` (`film_id`, `film_nom`, `film_duree`, `film_date_sortie`, `film_producteur`, `film_realisateur`, `film_pays`) VALUES
(1, 'La inocencia', '01:31:00', 2019, 'CORE PROGRAM', 'Lucía Alemany', 'Espana'),
(2, 'La última primavera', '01:17:00', 2020, 'SPANISH CINEMA WITHOUT FEAR', 'Isabel Lamberti', 'Espana'),
(3, 'Intemperie', '01:43:00', 2019, 'CORE PROGRAM', 'Benito Zambrano', 'Espana'),
(4, 'La hija de un ladrón', '01:42:00', 2019, 'CORE PROGRAM', 'Belén Funes', 'Espana'),
(5, 'Énorme', '01:41:00', 2020, 'Memento Films Distribution', 'Sophie Letourneur', 'France'),
(6, 'Camille', '01:30:00', 2019, 'Pyramide Distribution', 'Boris Lojkine', 'France'),
(7, 'Les Héros ne meurent jamais', '01:25:00', 2019, 'Les Films du Worso Adolescentes', 'Aude Léa Rapin', 'France'),
(8, 'Adolescentes', '02:15:00', 2019, 'Agat Films & Cie / Ex Nihilo', 'Sébastien Lifshitz', 'France');

-- --------------------------------------------------------

--
-- Table structure for table `f_seances`
--

CREATE TABLE `f_seances` (
  `seance_id` int(11) NOT NULL,
  `seance_heure_date` datetime DEFAULT NULL,
  `seance_rencontre` tinyint(1) DEFAULT NULL,
  `fk_film_id` int(11) DEFAULT NULL,
  `fk_cinema_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT;

--
-- Dumping data for table `f_seances`
--

INSERT INTO `f_seances` (`seance_id`, `seance_heure_date`, `seance_rencontre`, `fk_film_id`, `fk_cinema_id`) VALUES
(1, '2021-03-23 20:00:00', 0, 1, 1),
(2, '2021-03-27 18:00:00', 0, 2, 1),
(3, '2021-03-23 20:00:00', 0, 1, 1),
(4, '2021-03-30 17:00:00', 0, 3, 1),
(5, '2021-03-25 17:00:00', 0, 4, 2),
(6, '2021-03-22 16:00:00', 1, 2, 1),
(7, '2021-03-31 14:00:00', 0, 6, 2),
(8, '2021-03-26 16:00:00', 1, 7, 1),
(9, '2021-03-23 16:00:00', 0, 8, 1),
(10, '2021-03-24 20:00:00', 1, 5, 2),
(11, '2021-03-27 20:00:00', 0, 4, 2),
(12, '2021-03-30 15:00:00', 0, 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `f_cinemas`
--
ALTER TABLE `f_cinemas`
  ADD PRIMARY KEY (`cinema_id`);

--
-- Indexes for table `f_films`
--
ALTER TABLE `f_films`
  ADD PRIMARY KEY (`film_id`);

--
-- Indexes for table `f_seances`
--
ALTER TABLE `f_seances`
  ADD PRIMARY KEY (`seance_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `f_cinemas`
--
ALTER TABLE `f_cinemas`
  MODIFY `cinema_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `f_films`
--
ALTER TABLE `f_films`
  MODIFY `film_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `f_seances`
--
ALTER TABLE `f_seances`
  MODIFY `seance_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
