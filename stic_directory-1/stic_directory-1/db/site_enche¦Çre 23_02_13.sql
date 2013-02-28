{\rtf1\ansi\ansicpg1252\cocoartf1038\cocoasubrtf360
{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
\paperw11900\paperh16840\margl1440\margr1440\vieww9000\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\ql\qnatural\pardirnatural

\f0\fs24 \cf0 -- phpMyAdmin SQL Dump\
-- version 3.5.1\
-- http://www.phpmyadmin.net\
--\
-- Client: localhost\
-- G\'e9n\'e9r\'e9 le: Sam 23 F\'e9vrier 2013 \'e0 07:25\
-- Version du serveur: 5.5.25\
-- Version de PHP: 5.4.4\
\
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";\
SET time_zone = "+00:00";\
\
--\
-- Base de donn\'e9es: `site_enchere`\
--\
\
-- --------------------------------------------------------\
\
--\
-- Structure de la table `actualites`\
--\
\
DROP TABLE IF EXISTS `actualites`;\
CREATE TABLE IF NOT EXISTS `actualites` (\
  `idActualites` int(11) NOT NULL AUTO_INCREMENT,\
  `texteActualites` text,\
  `photoActualites` varchar(45) DEFAULT NULL,\
  PRIMARY KEY (`idActualites`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;\
\
-- --------------------------------------------------------\
\
--\
-- Structure de la table `historique`\
--\
\
DROP TABLE IF EXISTS `historique`;\
CREATE TABLE IF NOT EXISTS `historique` (\
  `idHistorique` int(11) NOT NULL,\
  `texteHistorique` text,\
  PRIMARY KEY (`idHistorique`)\
) ENGINE=InnoDB DEFAULT CHARSET=utf8;\
\
-- --------------------------------------------------------\
\
--\
-- Structure de la table `produit`\
--\
\
DROP TABLE IF EXISTS `produit`;\
CREATE TABLE IF NOT EXISTS `produit` (\
  `idProduit` int(11) NOT NULL AUTO_INCREMENT,\
  `nomProduit` varchar(45) DEFAULT NULL,\
  `descriptionProduit` text,\
  `photoProduit` varchar(45) DEFAULT NULL,\
  `prixDDProduit` int(10) unsigned DEFAULT NULL,\
  `prixDVProduit` int(10) unsigned DEFAULT NULL,\
  `dateDMELProduit` datetime DEFAULT NULL,\
  `dateDVProduit` datetime DEFAULT NULL,\
  `idUser` int(10) unsigned NOT NULL,\
  PRIMARY KEY (`idProduit`),\
  UNIQUE KEY `idUser_2` (`idUser`),\
  KEY `idUser` (`idUser`),\
  KEY `idUser_3` (`idUser`)\
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=2 ;\
\
--\
-- Contenu de la table `produit`\
--\
\
INSERT INTO `produit` (`idProduit`, `nomProduit`, `descriptionProduit`, `photoProduit`, `prixDDProduit`, `prixDVProduit`, `dateDMELProduit`, `dateDVProduit`, `idUser`) VALUES\
(1, 'chaise de jardin', 'c''est une chaise', 'chaise.jpg', 10, 10, '2013-02-27 00:00:00', '2013-02-28 00:00:00', 0);\
\
-- --------------------------------------------------------\
\
--\
-- Structure de la table `user`\
--\
\
DROP TABLE IF EXISTS `user`;\
CREATE TABLE IF NOT EXISTS `user` (\
  `idUser` int(10) unsigned NOT NULL AUTO_INCREMENT,\
  `nomUser` varchar(60) DEFAULT NULL,\
  `prenomUser` varchar(60) DEFAULT NULL,\
  `mailUser` varchar(60) DEFAULT NULL,\
  `mdpUser` varchar(45) DEFAULT NULL,\
  `password_salt` varchar(13) DEFAULT NULL,\
  `createdUser` datetime NOT NULL,\
  `updatedUser` datetime NOT NULL,\
  `pseudoUser` varchar(20) NOT NULL,\
  `societyUser` varchar(20) NOT NULL,\
  `adressUser` varchar(50) NOT NULL,\
  PRIMARY KEY (`idUser`),\
  KEY `idUser` (`idUser`)\
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;\
\
--\
-- Contenu de la table `user`\
--\
\
INSERT INTO `user` (`idUser`, `nomUser`, `prenomUser`, `mailUser`, `mdpUser`, `password_salt`, `createdUser`, `updatedUser`, `pseudoUser`, `societyUser`, `adressUser`) VALUES\
(1, 'toto', 'titi', 'toto.titi@gmail.fr', '9cf95dacd226dcf43da376cdb6cbba7035218921', '123aze123azer', '0000-00-00 00:00:00', '0000-00-00 00:00:00', '', '', ''),\
(3, 'psycho', 'leon', 'psycho.leon@hotmail.fr', '7ee134229a017de8b3a0cec99f869a6de0574dee', '512661bc3a9e3', '2013-02-21 19:04:44', '2013-02-23 06:53:30', 'leonis', 'lalal\'e8re', 'au fond a droite'),\
(4, 'truc', 'mach', 'truc.mach@a.fr', '38c70f2499feec2eb3ddb0074d955ad740fc8d7b', '5126ac2b6ad92', '2013-02-22 00:22:19', '2013-02-22 00:22:19', '', '', ''),\
(5, 'a', 'b', 'a.b@mail.fr', 'f3108696212810a2beef428bcfe1bdaba29368df', '51284f8ebe912', '2013-02-23 06:11:42', '2013-02-23 06:11:42', '', '', '');\
}