-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Client :  localhost
-- Généré le :  Dim 05 Février 2017 à 14:00
-- Version du serveur :  5.7.17-0ubuntu0.16.04.1
-- Version de PHP :  7.0.8-0ubuntu0.16.04.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `rendu`
--

-- --------------------------------------------------------

--
-- Structure de la table `BEZIERS_annonce_LPC`
--

CREATE TABLE `BEZIERS_annonce_LPC` (
  `id` int(11) NOT NULL,
  `prix` int(255) NOT NULL,
  `intitule` varchar(255) CHARACTER SET utf8 NOT NULL,
  `description` varchar(255) CHARACTER SET utf8 NOT NULL,
  `type` tinyint(1) UNSIGNED NOT NULL,
  `typean` tinyint(1) UNSIGNED NOT NULL,
  `date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `auteur` varchar(255) CHARACTER SET utf8 NOT NULL,
  `theme` varchar(255) CHARACTER SET utf8 NOT NULL,
  `catego` varchar(255) CHARACTER SET utf8 NOT NULL,
  `img1` varchar(255) NOT NULL,
  `img2` varchar(255) NOT NULL,
  `img3` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Contenu de la table `BEZIERS_annonce_LPC`
--

INSERT INTO `BEZIERS_annonce_LPC` (`id`, `prix`, `intitule`, `description`, `type`, `typean`, `date`, `auteur`, `theme`, `catego`, `img1`, `img2`, `img3`) VALUES
(75, 123, 'test123', 'test123', 1, 0, '2017-02-05 13:51:49', 'cece', 'Automobile', 'occasion', '2ed71e1b41e93234630d44f6a7907e41_keh.jpg', 'b845f4e450155667107aa7b67205e271_', '164a317e33543d6d032db2a401b8afbf_'),
(76, 321, 'test321', 'test321', 1, 1, '2017-02-05 13:52:41', 'jj', 'Meuble', 'neuf', '776ff5f3507e404c55b9e1535801cfa6_poce blu.jpg', 'a823d85f095642a2d0f1022ca671ad6b_', 'c8a69c257e3a8c2b3d550caaefe0080b_');

-- --------------------------------------------------------

--
-- Structure de la table `BEZIERS_users_LPC`
--

CREATE TABLE `BEZIERS_users_LPC` (
  `id` int(5) NOT NULL,
  `name` varchar(25) CHARACTER SET utf8 NOT NULL,
  `email` varchar(25) CHARACTER SET utf8 NOT NULL,
  `pass` varchar(25) CHARACTER SET utf8 NOT NULL,
  `Ville` varchar(255) CHARACTER SET utf8 NOT NULL,
  `cpostal` int(5) NOT NULL,
  `tel` varchar(15) NOT NULL,
  `mob` varchar(10) NOT NULL,
  `addr` varchar(255) CHARACTER SET utf8 NOT NULL,
  `date` varchar(255) CHARACTER SET utf8 NOT NULL,
  `month` varchar(255) CHARACTER SET utf8 NOT NULL,
  `year` varchar(255) CHARACTER SET utf8 NOT NULL,
  `timee` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `BEZIERS_users_LPC`
--

INSERT INTO `BEZIERS_users_LPC` (`id`, `name`, `email`, `pass`, `Ville`, `cpostal`, `tel`, `mob`, `addr`, `date`, `month`, `year`, `timee`) VALUES
(9, 'admin', 'admin@localhost.fr', 'admin', 'beziers', 34500, '0', '0', '', '', '', '', '2017-01-30 11:17:17'),
(38, 'jj', 'jj@g.com', 'jj', 'servian', 34290, '0616366097', '0', '', '', '', '', '2017-01-30 11:17:17'),
(50, 'gg', 'gg@g.com', 'gg', 'ggville', 78945, '3215874690', '0985741263', 'adresse de gg', '02', 'MAR', '2014', '2017-01-30 11:18:00'),
(52, 'kk', 'kk@g.com', 'kk', 'kkville', 34500, '0616366097', '0467393869', 'kkaddre', '10', 'JUIL', '2008', '2017-02-03 06:05:53'),
(54, 'cece', 'cece@g.com', 'cece', 'ceceville', 34500, '0467393869', '0679739069', 'ceceaddr', '10', 'OCT', '2008', '2017-02-05 13:50:45');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `BEZIERS_annonce_LPC`
--
ALTER TABLE `BEZIERS_annonce_LPC`
  ADD PRIMARY KEY (`id`),
  ADD KEY `auteur` (`auteur`);

--
-- Index pour la table `BEZIERS_users_LPC`
--
ALTER TABLE `BEZIERS_users_LPC`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `BEZIERS_annonce_LPC`
--
ALTER TABLE `BEZIERS_annonce_LPC`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT pour la table `BEZIERS_users_LPC`
--
ALTER TABLE `BEZIERS_users_LPC`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
