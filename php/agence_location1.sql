-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mar 09 Novembre 2021 à 17:06
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `agence_location1`
--

-- --------------------------------------------------------

--
-- Structure de la table `clients`
--

CREATE TABLE IF NOT EXISTS `clients` (
  `code_clients` varchar(20) NOT NULL,
  `nom_prenom` varchar(20) NOT NULL,
  `date_naissance` date NOT NULL,
  `profession` varchar(20) NOT NULL,
  `num_tel` int(11) NOT NULL,
  `adresse` varchar(20) NOT NULL,
  `code_postal` int(11) NOT NULL,
  `ville` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  PRIMARY KEY (`code_clients`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `clients`
--

INSERT INTO `clients` (`code_clients`, `nom_prenom`, `date_naissance`, `profession`, `num_tel`, `adresse`, `code_postal`, `ville`, `email`) VALUES
('t200', 'Remy B', '2000-11-24', 'pas d''info', 2147483647, '12 rue de paris', 94000, 'creteil', 'Remy@gmail.com'),
('t201', 'Yasmine', '1980-11-11', 'pas d''info', 2147483647, '25 allee claude mone', 75001, 'paris', 'yasmine@gmail.com');

-- --------------------------------------------------------

--
-- Structure de la table `location`
--

CREATE TABLE IF NOT EXISTS `location` (
  `id_locations` varchar(20) NOT NULL,
  `duree_location` varchar(20) NOT NULL,
  `date_locations` date NOT NULL,
  `prix_locations` int(11) NOT NULL,
  `code_clients` varchar(20) NOT NULL,
  `immatriculation` varchar(20) NOT NULL,
  PRIMARY KEY (`id_locations`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `location`
--

INSERT INTO `location` (`id_locations`, `duree_location`, `date_locations`, `prix_locations`, `code_clients`, `immatriculation`) VALUES
('LOC200', '5', '2021-11-20', 50, 't200', '22 TU 2000'),
('LOC201', '4', '2021-11-01', 60, 't201', '33 BR 3000'),
('LOC205', '10', '2021-11-03', 80, 't200', '22TU 2000'),
('LOC206', '50', '2021-11-02', 50, 't5000', '22 TU 2000'),
('LOC300', '20', '2021-11-02', 60, 't201', '33 BR 3000');

-- --------------------------------------------------------

--
-- Structure de la table `voitures`
--

CREATE TABLE IF NOT EXISTS `voitures` (
  `immatriculation` varchar(20) NOT NULL,
  `marque` varchar(20) NOT NULL,
  `modele` varchar(20) NOT NULL,
  `kilometrage` int(11) NOT NULL,
  `carburant` varchar(20) NOT NULL,
  `couleur` varchar(20) NOT NULL,
  `nbr_place` int(11) NOT NULL,
  `nbr_porte` int(11) NOT NULL,
  `etat` varchar(20) NOT NULL,
  PRIMARY KEY (`immatriculation`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `voitures`
--

INSERT INTO `voitures` (`immatriculation`, `marque`, `modele`, `kilometrage`, `carburant`, `couleur`, `nbr_place`, `nbr_porte`, `etat`) VALUES
('22 TU 2000', 'Mercedes', 'AMG', 20000, 'Essence', 'blanche', 5, 5, 'bon etat'),
('33 BR 3000', 'Audi', 'A5', 10000, 'Essence', 'Noire', 4, 3, 'bon etat'),
('44 CC 4000', 'Tesla', 'modele 3', 1000, 'electrique', 'blanche', 5, 5, 'tres bon etat'),
('55 TT 2000', 'Renault', 'clio', 60000, 'diesel', 'noire', 5, 5, 'mauvais etat'),
('66 TU 2000', 'Peugeot', 'DS7', 3000, 'Essence ', 'blanche', 5, 5, 'tres bon etat');
