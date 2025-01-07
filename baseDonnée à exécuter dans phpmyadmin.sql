-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Mar 07 Janvier 2025 à 20:18
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `agenceavion`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
CREATE DATABASE ageneceavion;
USE ageneceavion;

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  `telephone` varchar(15) DEFAULT NULL,
  `code_employe` varchar(20) DEFAULT NULL,
  `cin` varchar(20) DEFAULT NULL,
  `nom_utilisateur` varchar(50) DEFAULT NULL,
  `mot_de_passe` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nom_utilisateur` (`nom_utilisateur`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Contenu de la table `admin`
--

INSERT INTO `admin` (`id`, `nom`, `prenom`, `date_naissance`, `telephone`, `code_employe`, `cin`, `nom_utilisateur`, `mot_de_passe`) VALUES
(1, 'simpore', 'taobata', '2011-11-11', '222222', '1234', '1234', 'prosimpo', '1234'),
(2, 'moi', 'toi', '2021-12-12', '33', '221', '23', 'moi', '1234'),
(3, '1', '1', '2024-12-05', '11', '1', '1', '1', '1'),
(6, 'beta', 'omega', '2025-01-02', '123456', '123', '123', 'beta', '1234'),
(7, 'makri', 'youssra', '2024-06-18', '0762277537', '1234', 'dj898989', 'youssra', '2003');

-- --------------------------------------------------------

--
-- Structure de la table `paiements`
--

CREATE TABLE IF NOT EXISTS `paiements` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `detenteur_carte` varchar(255) NOT NULL,
  `numero_carte` varchar(16) NOT NULL,
  `date_expiration` date NOT NULL,
  `cvv` varchar(3) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Contenu de la table `paiements`
--

INSERT INTO `paiements` (`id`, `detenteur_carte`, `numero_carte`, `date_expiration`, `cvv`) VALUES
(1, 'Nom du détenteur1', '1234567890123456', '2024-12-31', '123'),
(2, 'Nom du détenteur2', '0234567890123456', '2024-12-31', '123'),
(3, 'Nom du détenteur1', '1234567890123456', '2024-12-31', '123'),
(4, 'Nom du détenteur1', '1234567890123456', '2024-12-31', '123'),
(5, 'Nom du détenteur1', '1234567890123456', '2024-12-31', '123'),
(6, 'Nom du détenteur1', '1234567890123456', '2024-12-31', '123'),
(7, 'Nom du détenteur1', '1234567890123456', '2024-12-31', '123'),
(8, 'Nom du détenteur1', '1234567890123456', '2024-12-31', '123'),
(9, 'Nom du détenteur1', '1234567890123456', '2024-12-31', '123'),
(10, 'Nom du détenteur1', '1234567890123456', '2024-12-31', '123'),
(11, 'Nom du détenteur1', '1234567890123456', '2024-12-31', '123'),
(12, 'Nom du détenteur1', '1234567890123456', '2024-12-31', '123'),
(13, 'Nom du détenteur1', '123456789012433', '2024-12-31', '123'),
(14, 'Nom du détente', '123456789', '2024-12-31', '123'),
(15, 'ff', '32', '2024-12-18', '090'),
(16, 'alpha', '123456789', '2025-01-11', '123'),
(17, 'sffdf', '454434', '2024-12-31', '333'),
(18, 'ali Kaboré', '12345678', '2026-01-17', '123'),
(19, 'alpha beta', '12345678', '2026-01-10', '123'),
(20, 'youssra', '1234567890', '2026-01-11', '890');

-- --------------------------------------------------------

--
-- Structure de la table `reservation_confirmation`
--

CREATE TABLE IF NOT EXISTS `reservation_confirmation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `nom` varchar(255) NOT NULL,
  `telephone` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=13 ;

--
-- Contenu de la table `reservation_confirmation`
--

INSERT INTO `reservation_confirmation` (`id`, `date`, `nom`, `telephone`) VALUES
(1, '2024-12-28 19:43:31', 'lili et lalé', '23256665'),
(4, '2024-12-28 19:56:38', 'woba et waka', '22222222222'),
(7, '2024-12-28 21:13:30', 'aahh', '0000000'),
(8, '2025-01-03 13:42:29', 'alpha beta', '12345678'),
(9, '2025-01-03 20:40:13', 'rhhrf', '555'),
(10, '2025-01-03 23:46:21', 'ali Kaboré', '123456'),
(11, '2025-01-04 14:22:45', 'alpha beta', '123456'),
(12, '2025-01-07 14:52:13', 'youssra makri', '09897867');

-- --------------------------------------------------------

--
-- Structure de la table `trajets`
--

CREATE TABLE IF NOT EXISTS `trajets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `numero_train` varchar(10) DEFAULT NULL,
  `gare_depart` varchar(50) DEFAULT NULL,
  `gare_arrivee` varchar(50) DEFAULT NULL,
  `date` date DEFAULT NULL,
  `heure_depart` time DEFAULT NULL,
  `heure_arrivee` time DEFAULT NULL,
  `prix_classe1` varchar(20) DEFAULT NULL,
  `prix_classe2` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=29 ;

--
-- Contenu de la table `trajets`
--

INSERT INTO `trajets` (`id`, `numero_train`, `gare_depart`, `gare_arrivee`, `date`, `heure_depart`, `heure_arrivee`, `prix_classe1`, `prix_classe2`) VALUES
(10, '113', 'Tanger', 'Tetouan', '2025-01-24', '12:34:00', '15:30:00', '300', '250.00'),
(11, '114', 'Casablanca', 'Rabat', '2025-01-29', '09:30:00', '11:00:00', '200', '150.00'),
(12, '115', 'Tanger', 'Casablanca', '2025-01-20', '00:00:00', '03:30:00', '300', '260.00'),
(16, '119', 'Tanger', 'Rabat', '2025-01-21', '12:34:00', '15:34:00', '300', '250.00'),
(17, '120', 'Tetouan', 'Casablanca', '2025-01-30', '09:30:00', '12:30:00', '280', '250.00'),
(18, '121', 'Tetouan', 'Rabat', '2025-01-23', '15:30:00', '17:30:00', '280', '250.00'),
(19, '117', 'Tetouan', 'Tanger', '2022-12-12', '12:34:00', '12:34:00', '300', '300.00'),
(20, '130', 'Casablanca', 'Tetouan', '2022-12-12', '15:30:00', '15:30:00', '200', '200.00'),
(21, '132', 'Casablanca', 'Tanger', '2022-12-12', '12:34:00', '12:34:00', '400', '300.00'),
(22, '140', 'Rabat', 'Tanger', '2022-12-12', '12:34:00', '12:34:00', '200', '200.00'),
(26, '500', 'Rabat', 'Tetouan', '2022-12-24', '12:34:00', '12:34:00', '370', '270.00'),
(27, '501', 'Rabat', 'Casablanca', '2022-12-24', '12:34:00', '12:34:00', '280', '250.00'),
(28, '1', 'Tetouan', 'Ouagagougou', '2022-12-24', '12:34:00', '12:34:00', '1580', '1480.00');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) DEFAULT NULL,
  `prenom` varchar(50) DEFAULT NULL,
  `date_naissance` date DEFAULT NULL,
  `telephone` varchar(15) DEFAULT NULL,
  `nom_utilisateur` varchar(50) DEFAULT NULL,
  `mot_de_passe` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nom_utilisateur` (`nom_utilisateur`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Contenu de la table `utilisateur`
--

INSERT INTO `utilisateur` (`id`, `nom`, `prenom`, `date_naissance`, `telephone`, `nom_utilisateur`, `mot_de_passe`) VALUES
(1, 'simpore', 'taobata', '2003-11-11', '33333', 'prosimpo', '1234'),
(6, 'moi', 'toi', '2020-12-12', '999', 'moi', '1234'),
(7, 'a', 'a', '2022-11-11', '22', 'a', 'a'),
(8, '1', '1', '1992-12-12', '1', '1', '1'),
(12, 'alpha', 'beta', '2025-01-01', '123456', 'alpha', '1234'),
(13, 'makri', 'youssra', '2024-06-18', '079898779', 'youssra', 'pour');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
