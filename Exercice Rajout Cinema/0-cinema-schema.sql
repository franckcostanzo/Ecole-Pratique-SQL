-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : Dim 02 août 2020 à 19:31
-- Version du serveur :  10.4.13-MariaDB
-- Version de PHP : 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


-- -----------------------------------------------------
-- Schema cinema
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `cinema` DEFAULT CHARACTER SET utf8mb4 ;

USE `cinema` ;
--
-- Base de données : `cinema`
--

-- --------------------------------------------------------

--
-- Structure de la table `acteur`
--

CREATE TABLE `acteur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `realisateur`
--

CREATE TABLE `realisateur` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------
--
-- Structure de la table `film`
--

CREATE TABLE `film` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `realisateur_id` int(11) NOT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `duree` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `FK_film_realisateur` FOREIGN KEY (`realisateur_id`) REFERENCES `realisateur` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `joue`
--

CREATE TABLE `joue` (
  `film_id` int(11) NOT NULL,
  `acteur_id` int(11) NOT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`film_id`,`acteur_id`),
  CONSTRAINT `FK_film_joue` FOREIGN KEY (`film_id`) REFERENCES `film` (`id`),
  CONSTRAINT `FK_acteur_joue` FOREIGN KEY (`acteur_id`) REFERENCES `acteur` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `salle`
--

CREATE TABLE `salle` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `seance`
--

CREATE TABLE `seance` (
  `film_id` int(11) NOT NULL,
  `salle_id` int(11) NOT NULL,
  `date_seance` datetime NOT NULL,
  PRIMARY KEY (`film_id`, salle_id, date_seance),
  CONSTRAINT `FK_film_seance` FOREIGN KEY (`film_id`) REFERENCES `film` (`id`),
  CONSTRAINT `FK_salle_seance` FOREIGN KEY (`salle_id`) REFERENCES `salle` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- set AUTO_INCREMENT start value
--
ALTER TABLE acteur AUTO_INCREMENT = 1;
ALTER TABLE realisateur AUTO_INCREMENT = 1;
ALTER TABLE film AUTO_INCREMENT = 1;
ALTER TABLE salle AUTO_INCREMENT = 1;

--
-- fin transaction
--
COMMIT;
