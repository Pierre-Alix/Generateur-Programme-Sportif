-- phpMyAdmin SQL Dump
-- version 4.1.4
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Dim 22 Mai 2022 à 23:40
-- Version du serveur :  5.6.15-log
-- Version de PHP :  5.5.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `programme`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `prenom` varchar(255) NOT NULL,
  `ville` varchar(255) NOT NULL,
  `materiel` int(11) NOT NULL,
  `frequence` int(11) NOT NULL,
  `muscle` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=113 ;

-- --------------------------------------------------------

--
-- Structure de la table `exercice`
--

CREATE TABLE IF NOT EXISTS `exercice` (
  `exercice` varchar(255) NOT NULL,
  `muscle` int(11) NOT NULL,
  `materiel` int(11) NOT NULL,
  `repos` time NOT NULL,
  `seriexrep` varchar(255) NOT NULL,
  `temps` time NOT NULL,
  PRIMARY KEY (`exercice`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Contenu de la table `exercice`
--

INSERT INTO `exercice` (`exercice`, `muscle`, `materiel`, `repos`, `seriexrep`, `temps`) VALUES
('Développé couché à la barre', 1, 3, '00:01:00', '4x12', '00:08:00'),
('Développé couché aux haltères', 1, 3, '00:01:00', '4x12', '00:08:00'),
('Ecarté couché', 1, 3, '00:01:00', '4x12', '00:08:00'),
('Pompes inclinés/déclinés', 1, 1, '00:01:00', '4x12', '00:08:00'),
('Pompes prise large', 1, 1, '00:01:00', '4x12', '00:08:00'),
('Pompes diamant', 1, 1, '00:01:00', '4x12', '00:08:00'),
('Dips penché', 1, 2, '00:01:00', '4x12', '00:08:00'),
('Pompes inversés', 1, 2, '00:01:00', '4x12', '00:08:00'),
('Butterfly', 1, 5, '00:01:00', '4x12', '00:08:00'),
('écarté à la poulie (haute/basse)', 1, 5, '00:01:00', '3x12 poulie haute / 3x12 poulie basse', '00:10:00'),
('Rowing barre', 2, 3, '00:01:00', '4x12', '00:08:00'),
('Rowing bucheron', 2, 3, '00:01:00', '4x12', '00:08:00'),
('Shrug', 2, 3, '00:01:00', '4x12', '00:08:00'),
('Traction pise pronation large', 2, 4, '00:01:00', '4x12', '00:08:00'),
('Tirage vertical prise médium', 2, 5, '00:01:00', '4x12', '00:08:00'),
('Tirage vertical prise supination', 2, 5, '00:01:00', '4x12', '00:08:00'),
('Tirage horizontale', 2, 5, '00:01:00', '4x12', '00:08:00'),
('Tirage barre T', 2, 5, '00:01:00', '4x12', '00:08:00'),
('Curl biceps barre', 3, 3, '00:01:00', '4x12', '00:08:00'),
('Curl biceps haltères', 3, 3, '00:01:00', '4x12', '00:08:00'),
('Curl marteau', 3, 3, '00:01:00', '4x12', '00:08:00'),
('Curl inversé', 3, 3, '00:01:00', '4x12', '00:08:00'),
('Traction prise supination', 3, 4, '00:01:00', '4x12', '00:08:00'),
('Curl incliné', 3, 5, '00:01:00', '4x12', '00:08:00'),
('Kick back', 4, 3, '00:01:00', '4x12', '00:08:00'),
('Barre au front', 4, 3, '00:01:00', '4x12', '00:08:00'),
('Extension arrière à 1 haltères', 4, 3, '00:01:00', '4x12', '00:08:00'),
('Dips', 4, 2, '00:01:00', '4x12', '00:08:00'),
('Extension vertical poulie haute', 4, 5, '00:01:00', '4x12', '00:08:00'),
('Extension horizontal poulie haute', 4, 5, '00:01:00', '4x12', '00:08:00'),
('Développé militaire', 5, 3, '00:01:00', '4x12', '00:08:00'),
('élévations latérales', 5, 3, '00:01:00', '4x12', '00:08:00'),
('Oiseaux', 5, 3, '00:01:00', '4x12', '00:08:00'),
('butterfly inversé', 5, 5, '00:01:00', '4x12', '00:08:00'),
('Développé couché à la barre (salle)', 1, 5, '00:01:00', '4x12', '00:08:00'),
('Développé couché aux haltères (salle)', 1, 5, '00:01:00', '4x12', '00:00:00'),
('Curl biceps barre (salle)', 3, 5, '00:01:00', '4x12', '00:08:00'),
('Curl biceps haltères (salle)', 3, 5, '00:01:00', '4x12', '00:08:00'),
('Curl marteau (salle)', 3, 5, '00:01:00', '4x12', '00:08:00'),
('Barre au front (salle)', 4, 5, '00:01:00', '4x12', '00:08:00'),
('Développé militaire (salle)', 5, 5, '00:01:00', '4x12', '00:08:00'),
('Elévations latérales (salle)', 5, 5, '00:01:00', '4x12', '00:08:00'),
('Fentes', 6, 3, '00:01:00', '4x12', '00:08:00'),
('Soulevé de terre', 6, 3, '00:01:00', '4x12', '00:08:00'),
('Hip thrust', 6, 3, '00:01:00', '4x12', '00:08:00'),
('Squat', 6, 3, '00:01:00', '4x12', '00:08:00'),
('Extension mollet avec haltères', 6, 3, '00:01:00', '4x12', '00:08:00'),
('Fentes (salle)', 6, 5, '00:01:00', '4x12', '00:08:00'),
('soulevé de terre (salle)', 6, 5, '00:01:00', '4x12', '00:08:00'),
('Hip thrust (salle)', 6, 5, '00:01:00', '4x12', '00:08:00'),
('squat (salle)', 6, 5, '00:01:00', '4x12', '00:08:00'),
('Extension mollet (salle)', 6, 5, '00:01:00', '4x12', '00:08:00'),
('Planche', 7, 1, '00:00:30', '4x1min', '00:06:00'),
('Crunch V', 7, 1, '00:00:30', '4x20', '00:06:00'),
('Toucher talon', 7, 1, '00:00:30', '4x1min', '00:06:00'),
('Planche dynamique', 7, 1, '00:00:30', '4x1min', '00:06:00'),
('Mountain climbers', 7, 1, '00:00:30', '4x30sec à fond', '00:05:00');

-- --------------------------------------------------------

--
-- Structure de la table `matériel`
--

CREATE TABLE IF NOT EXISTS `matériel` (
  `id` int(11) NOT NULL,
  `1` tinyint(1) NOT NULL,
  `2` tinyint(1) NOT NULL,
  `3` tinyint(1) NOT NULL,
  `4` tinyint(1) NOT NULL,
  `5` tinyint(1) NOT NULL,
  `6` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `muscle`
--

CREATE TABLE IF NOT EXISTS `muscle` (
  `id` int(11) NOT NULL,
  `1` tinyint(1) NOT NULL,
  `2` tinyint(1) NOT NULL,
  `3` tinyint(1) NOT NULL,
  `4` tinyint(1) NOT NULL,
  `5` tinyint(1) NOT NULL,
  `6` tinyint(1) NOT NULL,
  `7` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
