-- phpMyAdmin SQL Dump
-- version 3.3.9.2
-- http://www.phpmyadmin.net
--
-- Serveur: 127.0.0.1
-- Généré le : Mar 16 Novembre 2021 à 16:49
-- Version du serveur: 5.5.10
-- Version de PHP: 5.3.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données: `cinema_bd`
--

-- --------------------------------------------------------

--
-- Structure de la table `artiste`
--

CREATE TABLE IF NOT EXISTS `artiste` (
  `id_artiste` varchar(20) NOT NULL,
  `Nom` varchar(20) NOT NULL,
  `Prenom` varchar(20) NOT NULL,
  `anneeNaiss` varchar(20) NOT NULL,
  PRIMARY KEY (`id_artiste`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `artiste`
--


-- --------------------------------------------------------

--
-- Structure de la table `film`
--

CREATE TABLE IF NOT EXISTS `film` (
  `id_film` varchar(20) NOT NULL,
  `titre` varchar(20) NOT NULL,
  `annee` date NOT NULL,
  `genre` varchar(20) NOT NULL,
  `resume` varchar(20) NOT NULL,
  `id_realisateur` varchar(20) NOT NULL,
  `codePays` varchar(20) NOT NULL,
  PRIMARY KEY (`id_film`),
  KEY `codePays` (`codePays`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `film`
--


-- --------------------------------------------------------

--
-- Structure de la table `internaute`
--

CREATE TABLE IF NOT EXISTS `internaute` (
  `email` varchar(20) NOT NULL,
  `Nom` varchar(20) NOT NULL,
  `Prenom` varchar(20) NOT NULL,
  `region` varchar(20) NOT NULL,
  PRIMARY KEY (`email`),
  KEY `region` (`region`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `internaute`
--


-- --------------------------------------------------------

--
-- Structure de la table `notation`
--

CREATE TABLE IF NOT EXISTS `notation` (
  `id_notation` varchar(20) NOT NULL,
  `email` varchar(20) NOT NULL,
  `id_film` varchar(20) NOT NULL,
  `note` varchar(20) NOT NULL,
  PRIMARY KEY (`id_notation`),
  KEY `id_film` (`id_film`),
  KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `notation`
--


-- --------------------------------------------------------

--
-- Structure de la table `pays`
--

CREATE TABLE IF NOT EXISTS `pays` (
  `codePays` varchar(20) NOT NULL,
  `Nom` varchar(20) NOT NULL,
  `Langue` varchar(20) NOT NULL,
  PRIMARY KEY (`codePays`),
  KEY `Nom` (`Nom`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `pays`
--

INSERT INTO `pays` (`codePays`, `Nom`, `Langue`) VALUES
('AU', 'Australia', ''),
('BE', 'Belgium', ''),
('BS', 'Bahamas', ''),
('CA', 'Canada', ''),
('CN', 'China', ''),
('CZ', 'Czech Republic', ''),
('DE', 'Allemagne', 'allemand'),
('DK', 'Denmark', ''),
('ES', 'Espagne', 'espagnol'),
('FR', 'France', 'franÃ§ais'),
('GB', 'Royaume-Uni', 'anglais'),
('HK', 'Hong Kong', ''),
('IE', 'Irlande', 'anglais'),
('IT', 'Italie', 'italien'),
('JO', 'Jordan', ''),
('JP', 'Japan', 'japonais'),
('KR', 'South Korea', ''),
('NL', 'Netherlands', ''),
('NO', 'Norway', ''),
('RU', 'Russie', 'russe'),
('SE', 'SuÃ¨de', 'suÃ©dois'),
('SU', 'Soviet Union', ''),
('US', 'Etats-Unis', 'anglais');

-- --------------------------------------------------------

--
-- Structure de la table `role`
--

CREATE TABLE IF NOT EXISTS `role` (
  `id_film` varchar(20) NOT NULL,
  `id_artiste` varchar(20) NOT NULL,
  `nomRole` int(11) NOT NULL,
  PRIMARY KEY (`id_film`,`id_artiste`),
  KEY `id_artiste` (`id_artiste`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `role`
--


--
-- Contraintes pour les tables exportées
--

--
-- Contraintes pour la table `film`
--
ALTER TABLE `film`
  ADD CONSTRAINT `film_ibfk_1` FOREIGN KEY (`codePays`) REFERENCES `pays` (`codePays`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `notation`
--
ALTER TABLE `notation`
  ADD CONSTRAINT `notation_ibfk_2` FOREIGN KEY (`email`) REFERENCES `internaute` (`email`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `notation_ibfk_1` FOREIGN KEY (`id_film`) REFERENCES `role` (`id_film`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `role`
--
ALTER TABLE `role`
  ADD CONSTRAINT `role_ibfk_2` FOREIGN KEY (`id_artiste`) REFERENCES `artiste` (`id_artiste`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `role_ibfk_1` FOREIGN KEY (`id_film`) REFERENCES `film` (`id_film`) ON DELETE CASCADE ON UPDATE CASCADE;
