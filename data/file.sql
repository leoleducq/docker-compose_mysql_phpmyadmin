-- phpMyAdmin SQL Dump
-- version 5.0.4deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 24 mars 2022 à 18:14
-- Version du serveur :  10.5.15-MariaDB-1:10.5.15+maria~bullseye
-- Version de PHP : 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `completeBDD`
--

-- --------------------------------------------------------

--
-- Structure de la table `aircrafts`
--

CREATE TABLE `aircrafts` (
  `icao` varchar(10) NOT NULL,
  `type` varchar(8) NOT NULL,
  `countryicao` varchar(50) DEFAULT NULL,
  `regcode` varchar(10) NOT NULL,
  `categorie` varchar(25) NOT NULL,
  `icaotypecode` varchar(10) DEFAULT NULL,
  `manufacturer` varchar(100) DEFAULT NULL,
  `typemodel` varchar(50) DEFAULT NULL,
  `model` varchar(50) DEFAULT NULL,
  `serialnu` varchar(10) DEFAULT NULL,
  `registeredowener` varchar(100) DEFAULT NULL,
  `icaoowener` varchar(10) DEFAULT NULL,
  `nbmoteur` int(11) NOT NULL,
  `typemoteur` varchar(50) NOT NULL,
  `iconname` varchar(50) NOT NULL,
  `totalhours` int(11) DEFAULT NULL,
  `yearbuilt` int(4) DEFAULT NULL,
  `infourl` text DEFAULT NULL,
  `pictureurl` text DEFAULT NULL,
  `videourl` text DEFAULT NULL,
  `operateurcodeflag` varchar(20) DEFAULT NULL,
  `ownershipstatus` int(25) DEFAULT NULL,
  `firstregdate` int(15) DEFAULT NULL,
  `currentregdate` int(15) DEFAULT NULL,
  `deregdate` int(15) DEFAULT NULL,
  `status` varchar(25) NOT NULL,
  `updated` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `icaoexploitant` varchar(10) NOT NULL,
  `icaoportattache` varchar(4) NOT NULL,
  `waketurbulence` int(5) NOT NULL,
  `species` varchar(50) NOT NULL,
  `majuser` varchar(50) DEFAULT NULL,
  `affpublic` varchar(1) NOT NULL DEFAULT 'O',
  `owneremail` varchar(254) NOT NULL,
  `codepays` varchar(10) NOT NULL,
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `aircrafts`
--

INSERT INTO `aircrafts` (`icao`, `type`, `countryicao`, `regcode`, `categorie`, `icaotypecode`, `manufacturer`, `typemodel`, `model`, `serialnu`, `registeredowener`, `icaoowener`, `nbmoteur`, `typemoteur`, `iconname`, `totalhours`, `yearbuilt`, `infourl`, `pictureurl`, `videourl`, `operateurcodeflag`, `ownershipstatus`, `firstregdate`, `currentregdate`, `deregdate`, `status`, `updated`, `icaoexploitant`, `icaoportattache`, `waketurbulence`, `species`, `majuser`, `affpublic`, `owneremail`, `codepays`) VALUES
('AE04D4', 'Avion', '', '00-0001', 'Military', 'B744', 'Boeing', 'B744', 'B747-4G4F (YAL-1A)', '', '', '', 0, 'Turbofans', 'ALTBF4', 0, 0, '', '', '', '', 0, 0, 0, 0, 'libhome', '2018-07-02 09:30:56', '', '', 0, '', 'F6GKD', 'O', '', ''),
('AE093A', 'Avion', 'Us', '00-01051', 'Military', 'C560', 'Cessna', 'C560', 'UC-35C Citation', '560-0565', '', '', 2, 'Jet', 'LBIZ', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-06-22 09:51:12', '', '', 0, 'Landplane', 'F6GKD', 'O', '', ''),
('AE093B', 'Avion', 'Us', '00-01052', 'Military', 'C560', 'Cessna', 'C560', 'UC-35C Citation', '560-0574', '', '', 2, 'Jet', 'LBIZ', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-06-22 09:50:51', '', '', 0, 'Landplane', 'F6GKD', 'O', '', ''),
('AE093C', 'Avion', 'Us', '00-01053', 'Military', 'C560', 'Cessna', 'C560', 'UC-35C Citation', '560-0577', '', '', 2, 'Jet', 'LBIZ', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-06-22 09:50:14', '', '', 0, 'Landplane', 'F6GKD', 'O', '', ''),
('AE0676', 'Avion', 'Us', '00-0171', 'Military', 'C17', 'Boeing', 'C17', 'C-17A Globemaster III', 'P71', '', 'RCH', 4, 'Jet', 'CGALTBF4', 0, 0, '', '', '', 'RCH', 0, 0, 0, 0, '', '2020-06-05 09:49:26', '', '', 0, 'Landplane', 'F6GKD', 'O', '', ''),
('AE0677', 'Avion', 'Us', '00-0172', 'Military', 'C17', 'Boeing', 'C17', 'C-17A Globemaster III', 'P72', '', '', 4, 'Jet', 'CGALTBF4', 0, 0, '', '', '', 'RCH', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, 'Landplane', '', 'O', '', ''),
('AE0678', 'Avion', 'United States Mil', '00-0173', 'Military', 'C17', 'Boeing', 'C17', 'Boeing C17A Globemaster III', 'P-73', '', '', 4, 'Turboprop', 'CGALTBF4', 0, 0, '', '', '', '517AS', 0, 0, 0, 0, '', '2020-06-05 09:51:43', '', '', 0, '', 'F6GKD', 'O', '', ''),
('AE0679', 'Avion', 'Us', '00-0174', 'Military', 'C17', 'Boeing', 'C17', 'C-17A Globemaster III', 'P74', '', '', 4, 'Jet', 'CGALTBF4', 0, 0, '', '', '', 'RCH', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, 'Landplane', '', 'O', '', ''),
('AE0811', 'Avion', 'Us', '00-0175', 'Military', 'C17', 'Boeing', 'C17', 'C-17A Globemaster III', 'P75', '', '', 4, 'Jet', 'CGALTBF4', 0, 0, '', '', '', 'RCH', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, 'Landplane', '', 'O', '', ''),
('AE0812', 'Avion', 'Us', '00-0176', 'Military', 'C17', 'Boeing', 'C17', 'C-17A Globemaster III', 'P76', '', '', 4, 'Jet', 'CGALTBF4', 0, 0, '', '', '', 'RCH', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, 'Landplane', '', 'O', '', ''),
('AE0813', 'Avion', 'Us', '00-0177', 'Military', 'C17', 'Boeing', 'C17', 'C-17A Globemaster III', 'P77', '', '', 4, 'Jet', 'CGALTBF4', 0, 0, '', '', '', 'RCH', 0, 0, 0, 0, '', '2021-12-06 13:48:07', '', '', 0, 'Landplane', 'F6GKD', 'O', '', ''),
('AE0814', 'Avion', 'Us', '00-0178', 'Military', 'C17', 'Boeing', 'C17', 'C-17A Globemaster III', 'P78', '', 'RCH', 4, 'Jet', 'CGALTBF4', 0, 0, '', '', '', 'RCH', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, 'Landplane', '', 'O', '', ''),
('AE0815', 'Avion', 'Us', '00-0179', 'Military', 'C17', 'Boeing', 'C17', 'C-17A Globemaster III', 'P79', '', '', 4, 'Jet', 'CGALTBF4', 0, 0, '', '', '', 'RCH', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, 'Landplane', '', 'O', '', ''),
('AE0816', 'Avion', 'Us', '00-0180', 'Military', 'C17', 'Boeing', 'C17', 'C-17A Globemaster III', 'P80', '', '', 4, 'Jet', 'CGALTBF4', 0, 0, '', '', '', 'RCH', 0, 0, 0, 0, '', '2021-12-06 13:48:42', '', '', 0, 'Landplane', 'F6GKD', 'O', '', ''),
('AE0817', 'Avion', 'Us', '00-0181', 'Military', 'C17', 'Boeing', 'C17', 'C-17A Globemaster III', 'P81', '', '', 4, 'Jet', 'CGALTBF4', 0, 0, '', '', '', 'RCH', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, 'Landplane', '', 'O', '', ''),
('AE0818', 'Avion', 'Us', '00-0182', 'Military', 'C17', 'Boeing', 'C17', 'C-17A Globemaster III', 'P82', '', '', 4, 'Jet', 'CGALTBF4', 0, 0, '', '', '', 'RCH', 0, 0, 0, 0, '', '2021-12-06 13:47:27', '', '', 0, 'Landplane', 'F6GKD', 'O', '', ''),
('AE08E3', 'Avion', 'Us', '00-0183', 'Military', 'C17', 'Boeing', 'C17', 'C-17A Globemaster III', 'P83', '', '', 4, 'Jet', 'CGALTBF4', 0, 0, '', '', '', 'RCH', 0, 0, 0, 0, '', '2019-11-27 23:16:56', '', '', 0, 'Landplane', 'F6GKD', 'O', '', ''),
('AE08BE', 'Avion', 'Us', '00-0184', 'Military', 'C17', 'Boeing', 'C17', 'C-17A Globemaster III', 'P84', '', '', 4, 'Jet', 'CGALTBF4', 0, 0, '', '', '', 'RCH', 0, 0, 0, 0, '', '2018-06-22 09:51:46', '', '', 0, 'Landplane', 'F6GKD', 'O', '', ''),
('AE08CF', 'Avion', 'Us', '00-0185', 'Military', 'C17', 'Boeing', 'C17', 'C-17A Globemaster III', 'P85', '', '', 4, 'Jet', 'CGALTBF4', 0, 0, '', '', '', 'RCH', 0, 0, 0, 0, '', '2018-07-02 09:30:18', '', '', 0, 'Landplane', 'F6GKD', 'O', '', ''),
('AE093A', 'Avion', 'United States Mil', '00-1051', 'Military', 'C560', 'Cessna', 'C560', 'Cessna UC35 Citation II', '560-0565', '', 'USAF', 2, 'Turbofans', 'LBIZ', 0, 0, '', '', '', 'USARMYUC-35', 0, 0, 0, 0, '', '2020-06-07 19:29:15', '', '', 0, '', 'F6GKD', 'O', '', ''),
('AE093B', 'Avion', 'United States Mil', '00-1052', 'Military', 'C560', '', 'C560', 'Cessna UC35 Citation II', '560-0574', '', '', 2, 'Turbofans', 'LBIZ', 0, 0, '', '', '', 'USARMYUC-35', 0, 0, 0, 0, '', '2020-05-27 16:06:22', '', '', 0, '', 'F6GKD', 'O', '', ''),
('AE093C', 'Avion', 'United States Mil', '00-1053', 'Military', 'C560', '', 'C560', 'Cessna UC35 Citation II', '560-0577', '', '', 2, 'Turbofans', 'LBIZ', 0, 0, '', '', '', 'USARMYUC-35', 0, 0, 0, 0, '', '2020-05-27 16:06:45', '', '', 0, '', 'F6GKD', 'O', '', ''),
('AE067A', 'Avion', 'Us', '00-1934', 'Military', 'C30J', 'Lockheed', 'C30J', 'EC-130J Hercules', '5522', '', '', 2, '', 'CGMTP2', 0, 0, '', '', '', 'RCH', 0, 0, 0, 0, '', '2020-05-12 09:26:20', '', '', 0, '', 'F6GKD', 'O', '', ''),
('AE1498', 'Avion', 'Us', '00-2000', 'Military', 'B703', 'Boeing', 'B703', 'E-8C Joint STARS', '20043', '', '', 4, 'Jet', 'ALTBF4', 0, 0, '', '', '', 'RCH', 0, 0, 0, 0, '', '2020-10-03 12:19:11', '', '', 0, 'Landplane', 'F6GKD', 'O', '', ''),
('AE071C', 'Avion', '', '00-2001', 'Military', 'F15', 'Boeing', 'F15', 'F-15E Strike Eagle', '0', '', 'USAF', 1, 'Turbofans', 'FIGHT-F22', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2020-10-27 11:12:05', '', '', 0, '', 'F6GKD', 'O', '', ''),
('AE0D80', 'Helico', 'Us', '00-26864', 'Military', 'H60', 'Sikorsky', 'H60', 'UH-60L Blackhawk', '', '', '', 2, 'Turboprop', 'HLCPT', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2019-05-11 07:22:45', '', '', 0, 'Helicopter', 'F6GKD', 'O', '', ''),
('AE1828', 'Helico', 'Us', '00-26869', 'Military', 'H60', 'Sikorsky', 'H60', 'UH-60L Blackhawk', '702663', '', '', 2, 'Turboprop', 'HLCPT', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2019-05-11 07:23:23', '', '', 0, 'Helicopter', 'F6GKD', 'O', '', ''),
('AE0B2C', 'Helico', 'Us', '00-26870', 'Military', 'H60', 'Sikorsky', 'H60', 'UH-60L Blackhawk', '', '', '', 2, 'Turboprop', 'HLCPT', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2019-05-11 07:23:50', '', '', 0, 'Helicopter', 'F6GKD', 'O', '', ''),
('AE2C70', 'Avion', '', '00-3000', 'Military', 'F15', 'Mcdonnell Douglas', 'F15', 'F-15E-63-MC Strike Eagle', '1366/E227', '', '', 1, '', 'FIGHT', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE1795', 'Avion', 'United States Mil', '00-3002', '', 'F15', '', 'F15', 'McDonnell-Douglas F15E Eagle', '1368/E229', '', '', 1, '', 'FIGHT', 0, 0, '', '', '', '494FS', 0, 0, 0, 0, 'libhome', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE1792', 'Avion', 'United States Mil', '00-3003', '', 'F15', '', 'F15', 'McDonnell-Douglas F15E Eagle', '1369/E230', '', '', 0, '', 'FIGHT', 0, 0, '', '', '', '494FS', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE17B6', 'Avion', NULL, '00-3004', 'Military', 'F15', 'Mcdonnell Douglas', 'F15', 'McDonnell Douglas F-15E Strike Eagle', NULL, '', 'BOL', 0, '', 'FIGHT', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', '2019-06-28 10:15:33', '', '', 0, '', 'F6GKD', 'O', '', ''),
('AE0896', '', 'Us', '00-3569', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-073', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE0897', '', 'Us', '00-3570', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-074', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE0898', '', 'Us', '00-3571', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-075', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE0899', '', 'Us', '00-3572', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-076', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE089A', '', 'Us', '00-3573', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-077', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE089B', '', 'Us', '00-3574', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-078', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE089C', '', 'Us', '00-3575', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-079', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE089D', '', 'Us', '00-3576', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-080', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE089E', '', 'Us', '00-3577', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-081', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE089F', '', 'Us', '00-3578', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-082', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE08A1', '', 'Us', '00-3580', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-084', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE08A2', '', 'Us', '00-3581', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-087', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE08A2', 'Avion', 'Us', '00-3582', 'Military', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-088', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE08A4', '', 'Us', '00-3583', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-089', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE08A4', 'Avion', 'Us', '00-3584', 'Military', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-090', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE08A6', '', 'Us', '00-3585', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-091', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE08A7', '', 'Us', '00-3586', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-092', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE08A8', '', 'Us', '00-3587', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-093', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE08A9', '', 'Us', '00-3588', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-094', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE08AA', '', 'Us', '00-3589', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-095', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE08A9', 'Avion', 'Us', '00-3590', 'Military', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-096', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE08AC', '', 'Us', '00-3591', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-097', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE08AD', '', 'Us', '00-3592', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-098', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE08AF', 'Avion', 'Us', '00-3594', 'Military', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-100', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-12-02 00:06:31', '', '', 0, '', 'F6GKD', 'O', '', ''),
('AE08B0', '', 'Us', '00-3595', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-101', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE08B1', '', 'Us', '00-3596', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-102', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE08B2', '', 'Us', '00-3597', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-103', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE0443', 'Avion', 'Us', '00-9001', '', 'B752', 'Boeing', 'B752', 'C-32B', '25494', '', '', 2, 'Jet', 'ALTBF2', 0, 0, '', '', '', 'RCH', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, 'Landplane', '', 'O', '', ''),
('48D960', 'Avion', NULL, '0001', 'Army', 'GLF5', NULL, 'GLF5', 'null', NULL, '', 'PLF', 0, '', 'LBIZ', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', '2019-06-28 10:15:33', '', '', 0, '', 'F6GKD', 'O', '', ''),
('48D961', 'Avion', NULL, '0002', 'Military', 'GLF5', 'Gulfstream Aerospace', 'GLF5', 'G550', '5554', '', 'PLF', 0, '', 'LBIZ', NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, '', '2019-06-28 10:15:33', '', '', 0, '', 'F6GKD', 'O', '', ''),
('3B7772', '', '', '0007', '', 'L4T', 'Airbus Military', 'A400', 'A400M', '007', '', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2021-12-08 17:01:46', 'FRENCH AIR', '', 0, '', NULL, 'O', '', ''),
('3B7771', '', '', '0008', '', 'L4T', 'Airbus Military', 'A400', 'A400M', '008', '', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2021-12-08 17:01:23', 'FRENCH AIR', '', 0, '', NULL, 'O', '', ''),
('3B9BDF', 'Avion', 'Fr', '0010', 'Military', 'ATLA', 'Breguet', 'ATLANTIQUE 2 NG', '', '10', '', 'FNY', 2, '', 'ALTPL', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2021-04-08 22:04:18', '', '', 0, '', 'F6GKD', 'O', '', ''),
('3B9BDE', 'Avion', 'Fr', '0011', 'Military', 'ATLA', 'Breguet', 'BREGUET ATLANTIQUE', 'ATL2', '11', '', 'FNY', 2, '', 'ALTPL', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2021-04-27 07:12:57', '', '', 0, '', 'F6GKD', 'O', '', ''),
('001110', 'Ball', 'Fr', '001110', 'Private', 'BALL', NULL, NULL, NULL, NULL, '', NULL, 0, '', 'BALL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2020-06-18 08:55:43', '', '', 0, '', NULL, 'O', '', ''),
('3B9BDC', 'Avion', 'Fr', '0012', 'Military', 'ATLA', 'Breguet', 'ATLANTIQUE 2', 'ATLANTIQUE NG', '12', '', 'FNY', 2, '', 'ALTPL', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2021-04-08 22:06:01', '', '', 0, '', 'F6GKD', 'O', '', ''),
('3B9BDB', 'Avion', 'Fr', '0013', 'Military', 'ATLA', 'Dassault', 'ATLANTIQUE 2', 'Atlantique NG', '13', '', 'FNY', 2, '', 'ALTPL', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2021-04-08 22:05:09', '', '', 0, '', 'F6GKD', 'O', '', ''),
('3B9BDA', 'Avion', 'Fr', '0014', 'Military', 'ATLA', 'Breguet', 'ATLANTIQUE 2', 'Atlantique NG', '14', '', 'FNY', 2, '', 'ALTPL', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2021-04-08 22:07:44', '', '', 0, '', 'F6GKD', 'O', '', ''),
('3B9BD9', 'Avion', 'Fr', '0015', 'Military', 'ATLA', 'Breguet', 'ATLANTIQUE 2', 'Atlantique 2 NG', '15', '', 'FNY', 2, '', 'ALTPL', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2021-04-08 22:08:34', '', '', 0, '', 'F6GKD', 'O', '', ''),
('3B776C', '', '', '0019', '', 'L4T', 'Airbus Military', 'A400', 'A400M', '019', '', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2021-12-08 17:02:20', 'FRENCH AIR', '', 0, '', NULL, 'O', '', ''),
('3B776B', '', '', '0031', '', 'L4T', 'Airbus Military', 'A400', 'A400M', '031', '', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2021-12-08 17:01:52', 'FRENCH AIR', '', 0, '', NULL, 'O', '', ''),
('3B776A', '', '', '0033', '', 'L4T', 'Airbus Military', 'A400', 'A400M', '033', '', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2021-12-08 17:00:09', 'FRENCH AIR', '', 0, '', NULL, 'O', '', ''),
('3B7769', '', '', '0037', '', 'L4T', 'Airbus Military', 'A400', 'A400M', '037', '', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2021-12-08 17:00:26', 'FRENCH AIR', '', 0, '', NULL, 'O', '', ''),
('4B8209', 'Avion', 'Turkey Mil', '004', '', 'C650', '', 'C650', 'Cessna 650 Citation VII', '650-7024', '', '', 2, 'Turbofans', 'LBIZ', 0, 0, '', '', '', 'TURKAF212FILO', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('4B820A', 'Avion', 'Turkey Mil', '005', '', 'C650', '', 'C650', 'Cessna 650 Citation VII', '650-7026', '', 'HVK', 2, 'Turbofans', 'LBIZ', 0, 0, '', '', '', 'TURKAF212FILO', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('3B7768', '', '', '0053', '', 'L4T', 'Airbus Military', 'A400', 'A400M', '053', '', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2021-12-08 17:01:18', 'FRENCH AIR', '', 0, '', NULL, 'O', '', ''),
('468007', '', 'Gr', '007', '', 'F16', 'General Dynamics', 'F16', 'F-16C Fighting Falcon', 'WJ-7', '', '', 1, 'Jet', 'FIGHT', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, 'Landplane', '', 'O', '', ''),
('3B9BB7', 'Avion', 'Fr', '0072', 'Military', 'FA20', 'Dassault', 'FALCON 20G', 'Guardian', NULL, '', 'FNY', 2, '', 'MBIZ', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2021-03-14 10:00:32', '', '', 0, '', NULL, 'O', '', ''),
('468009', '', 'Gr', '009', '', 'F16', 'General Dynamics', 'F16', 'F-16C Fighting Falcon', 'WJ-9', '', '', 1, 'Jet', 'FIGHT', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, 'Landplane', '', 'O', '', ''),
('00FEF6', 'Beacon', NULL, '00FEF6', 'Beacon', NULL, NULL, NULL, NULL, NULL, '', NULL, 0, '', 'BEACON', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2021-01-29 22:50:59', '', '', 0, '', NULL, 'O', '', ''),
('AE10C1', 'Avion', 'Us', '01', '', 'GLF5', 'Gulfstream Aerospace', 'GLF5', 'GV', '653', '', '', 2, 'Jet', 'LBIZ', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, 'Landplane', '', 'O', '', ''),
('503FD0', '', '', '01 BLUE', '', 'L2T', 'Let', 'L410', 'L-410 UVP', '820738', '', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2021-12-08 17:00:19', 'LITHUANIAN', '', 0, '', NULL, 'O', '', ''),
('6831F1', '', '', '01 RED', '', 'L2T', 'Casa', 'C295', 'C-295 M', '093', '', NULL, 0, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '2021-12-08 17:00:41', '', '', 0, '', NULL, 'O', '', ''),
('AE115D', 'Avion', 'Us', '01-0015', '', 'B737', 'Boeing', 'B737', 'C-40B', '32916', '', '', 2, 'Jet', 'ALMTBF2', 0, 0, '', '', '', 'RCH', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, 'Landplane', '', 'O', '', ''),
('AE087E', 'Avion', 'Us', '01-0028', '', 'GLF5', 'Gulfstream Aerospace', 'GLF5', 'C-37A', '620', '', '', 2, 'Jet', 'LBIZ', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, 'Landplane', '', 'O', '', ''),
('AE087F', 'Avion', 'Us', '01-0029', 'Military', 'GLF5', 'Gulfstream Aerospace', 'GLF5', 'C-37A', '624', '', 'USAF', 2, 'Jet', 'LBIZ', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2019-06-06 12:08:41', '', '', 0, 'Landplane', 'F6GKD', 'O', '', ''),
('AE115E', 'Avion', 'Us', '01-0030', '', 'GLF5', 'Gulfstream Aerospace', 'GLF5', 'C-37A', '663', '', '', 2, 'Jet', 'LBIZ', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, 'Landplane', '', 'O', '', ''),
('AE093D', '', 'Us', '01-00301', '', 'C560', 'Cessna', 'C560', 'UC-35C Citation', '560-0589', '', '', 2, 'Jet', 'LBIZ', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, 'Landplane', '', 'O', '', ''),
('AE0945', 'Avion', 'Us', '01-0040', '', 'B737', 'Boeing', 'B737', 'C-40B', '29971', '', '', 2, 'Jet', 'ALMTBF2', 0, 0, '', '', '', 'RCH', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, 'Landplane', '', 'O', '', ''),
('AE11F6', 'Avion', 'Us', '01-0041', '', 'B737', 'Boeing', 'B737', 'C-40B', '33080', '', '', 2, 'Jet', 'ALMTBF2', 0, 0, '', '', '', 'RCH', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, 'Landplane', '', 'O', '', ''),
('AE10B3', 'Avion', 'Us', '01-0065', '', 'GLF5', 'Gulfstream Aerospace', 'GLF5', 'C-37A', '652', '', '', 2, 'Jet', 'LBIZ', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, 'Landplane', '', 'O', '', ''),
('AE0978', 'Avion', 'Us', '01-0076', '', 'GLF5', 'Gulfstream Aerospace', 'GLF5', 'C-37A', '645', '', '', 2, 'Jet', 'LBIZ', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, 'Landplane', '', 'O', '', ''),
('AE10B5', 'Avion', 'Us', '01-0186', 'Military', 'C17', 'Boeing', 'C17', 'C-17A Globemaster III', 'P86', '', 'RCH', 4, 'Jet', 'CGALTBF4', 0, 0, '', '', '', 'RCH', 0, 0, 0, 0, '', '2021-03-08 23:01:55', '', '', 0, 'Landplane', '', 'O', '', ''),
('AE10B6', 'Avion', 'Us', '01-0187', 'Military', 'C17', 'Boeing', 'C17', 'C-17A Globemaster III', 'P87', '', 'RCH', 4, 'Jet', 'CGALTBF4', 0, 0, '', '', '', 'RCH', 0, 0, 0, 0, '', '2021-03-08 23:02:07', '', '', 0, 'Landplane', '', 'O', '', ''),
('AE10B7', 'Avion', 'Us', '01-0188', 'Military', 'C17', 'Boeing', 'C17', 'C-17A Globemaster III', 'P88', '', 'RCH', 4, 'Jet', 'CGALTBF4', 0, 0, '', '', '', 'RCH', 0, 0, 0, 0, '', '2021-03-08 23:02:31', '', '', 0, 'Landplane', '', 'O', '', ''),
('AE10B8', 'Avion', 'Us', '01-0189', '', 'C17', 'Boeing', 'C17', 'C-17A Globemaster III', 'P89', '', '', 4, 'Jet', 'CGALTBF4', 0, 0, '', '', '', 'RCH', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, 'Landplane', '', 'O', '', ''),
('AE10B9', 'Avion', 'Us', '01-0190', '', 'C17', 'Boeing', 'C17', 'C-17A Globemaster III', 'P90', '', '', 4, 'Jet', 'CGALTBF4', 0, 0, '', '', '', 'RCH', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, 'Landplane', '', 'O', '', ''),
('AE10BA', 'Avion', 'Us', '01-0191', '', 'C17', 'Boeing', 'C17', 'C-17A Globemaster III', 'P91', '', '', 4, 'Jet', 'CGALTBF4', 0, 0, '', '', '', 'RCH', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, 'Landplane', '', 'O', '', ''),
('AE10BB', 'Avion', 'Us', '01-0192', '', 'C17', 'Boeing', 'C17', 'C-17A Globemaster III', 'P92', '', '', 4, 'Jet', 'CGALTBF4', 0, 0, '', '', '', 'RCH', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, 'Landplane', '', 'O', '', ''),
('AE10BC', 'Avion', 'Us', '01-0193', '', 'C17', 'Boeing', 'C17', 'C-17A Globemaster III', 'P93', '', '', 4, 'Jet', 'CGALTBF4', 0, 0, '', '', '', 'RCH', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, 'Landplane', '', 'O', '', ''),
('AE10BD', 'Avion', 'Us', '01-0194', '', 'C17', 'Boeing', 'C17', 'C-17A Globemaster III', 'P94', '', '', 4, 'Jet', 'CGALTBF4', 0, 0, '', '', '', 'RCH', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, 'Landplane', '', 'O', '', ''),
('AE10BE', 'Avion', 'Us', '01-0195', '', 'C17', 'Boeing', 'C17', 'C-17A Globemaster III', 'P95', '', '', 4, 'Jet', 'CGALTBF4', 0, 0, '', '', '', 'RCH', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, 'Landplane', '', 'O', '', ''),
('AE10BF', 'Avion', 'Us', '01-0196', '', 'C17', 'Boeing', 'C17', 'C-17A Globemaster III', 'P96', '', '', 4, 'Jet', 'CGALTBF4', 0, 0, '', '', '', 'RCH', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, 'Landplane', '', 'O', '', ''),
('AE10C0', 'Avion', 'Us', '01-0197', '', 'C17', 'Boeing', 'C17', 'C-17A Globemaster III', 'P97', '', '', 4, 'Jet', 'CGALTBF4', 0, 0, '', '', '', 'RCH', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, 'Landplane', '', 'O', '', ''),
('AE093D', 'Avion', '', '01-0301', 'Bizjet', 'C560', 'Cessna', 'C560', '560 Citation UC-35C', '560-0589', '', '', 2, 'Turbofans', 'LBIZ', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE08E1', 'Avion', 'Us', '01-1461', '', 'C30J', 'Lockheed', 'C30J', 'C-130J Hercules', '5525', '', '', 0, '', 'CGMTP2', 0, 0, '', '', '', 'RCH', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE08E2', 'Avion', 'Us', '01-1462', '', 'C30J', 'Lockheed', 'C30J', 'C-130J Hercules', '5526', '', '', 0, '', 'CGMTP2', 0, 0, '', '', '', 'RCH', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE08E0', 'Avion', 'Us', '01-1935', '', 'C30J', 'Lockheed', 'C30J', 'EC-130J Hercules', '5532', '', '', 0, '', 'CGMTP2', 0, 0, '', '', '', 'RCH', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE1799', 'Avion', '', '01-2000', 'Military', 'F15', 'Boeing', 'F15', 'F-15E-63-MC Strike Eagle', '1371/E232', '', '', 1, 'Turbofans', 'FIGHT', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE178F', 'Avion', 'Us', '01-2001', '', 'F15', 'Mcdonnell Douglas', 'F15', 'F-15E Eagle', '1372', '', '', 2, 'Jet', 'FIGHT', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, 'Landplane', '', 'O', '', ''),
('AE17A3', 'Avion', 'United States Mil', '01-2004', '', 'F15', '', 'F15', 'McDonnell-Douglas F15E Eagle', '1375/E236', '', '', 1, '', 'FIGHT', 0, 0, '', '', '', '494FS', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE1499', 'Avion', 'Us', '01-2005', 'Military', 'B703', 'Boeing', 'B703', 'E-8C Joint STARS', '19382', '', '', 4, 'Jet', 'ALTBF4', 0, 0, '', '', '', 'RCH', 0, 0, 0, 0, '', '2021-10-28 10:15:19', '', '', 0, 'Landplane', 'F6GKD', 'O', '', ''),
('AE2144', 'Helico', 'Us', '01-26879', 'Military', 'H60', 'Sikorsky', 'H60', 'UH-60L Blackhawk', '', '', '', 2, 'Turboprop', 'HLCPT', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2019-05-11 07:26:09', '', '', 0, 'Helicopter', 'F6GKD', 'O', '', ''),
('AE2145', 'Helico', 'Us', '01-26880', 'Military', 'H60', 'Sikorsky', 'H60', 'UH-60L Blackhawk', '702697', '', '', 2, 'Turboprop', 'HLCPT', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2019-05-11 07:25:47', '', '', 0, 'Helicopter', 'F6GKD', 'O', '', ''),
('AE182A', 'Helico', 'Us', '01-26882', 'Military', 'H60', 'Sikorsky', 'H60', 'UH-60L Blackhawk', '702701', '', '', 2, 'Turboprop', 'HLCPT', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2019-05-11 07:25:27', '', '', 0, 'Helicopter', 'F6GKD', 'O', '', ''),
('AE212D', 'Helico', 'Us', '01-26890', 'Military', 'H60', 'Sikorsky', 'H60', 'UH-60L Blackhawk', '702688', '', '', 2, 'Turboprop', 'HLCPT', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2019-05-11 07:25:09', '', '', 0, 'Helicopter', 'F6GKD', 'O', '', ''),
('AE182C', 'Helico', 'Us', '01-26891', 'Military', 'H60', 'Sikorsky', 'H60', 'UH-60L Blackhawk', '702705', '', '', 2, 'Turboprop', 'HLCPT', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2019-05-11 07:24:50', '', '', 0, 'Helicopter', 'F6GKD', 'O', '', ''),
('AE10F3', '', 'Us', '01-3599', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-114', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE10F4', '', 'Us', '01-3600', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-115', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE10F5', '', 'Us', '01-3601', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-118', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE10F6', '', 'Us', '01-3602', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-119', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE10F7', '', 'Us', '01-3603', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-120', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE10F8', '', 'Us', '01-3604', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-123', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE10F9', '', 'Us', '01-3605', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-124', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE10FA', '', 'Us', '01-3606', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-125', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE10FB', '', 'Us', '01-3607', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-128', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE10FC', '', 'Us', '01-3608', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-129', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE10FD', '', 'Us', '01-3609', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-130', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE10FE', '', 'Us', '01-3610', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-133', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE10FF', '', 'Us', '01-3611', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-134', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE1100', '', 'Us', '01-3612', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-135', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE1102', '', 'Us', '01-3614', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-139', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE1104', 'Avion', 'Us', '01-3616', 'Military', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-143', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE1105', '', 'Us', '01-3617', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-144', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE1106', 'Avion', 'Us', '01-3618', 'Military', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-145', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE1107', '', 'Us', '01-3619', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-148', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE1108', 'Avion', 'Us', '01-3620', 'Military', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-149', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE1109', '', 'Us', '01-3621', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-150', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE110A', '', 'Us', '01-3622', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-153', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE110B', '', 'Us', '01-3623', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-154', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE110C', '', 'Us', '01-3624', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-155', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE110D', '', 'Us', '01-3625', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-158', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),
('AE110E', '', 'Us', '01-3626', '', 'TEX2', 'Raytheon Aircraft Company', 'TEX2', 'T-6A Texan II', 'PT-159', '', '', 0, '', '', 0, 0, '', '', '', '', 0, 0, 0, 0, '', '2018-04-09 09:12:15', '', '', 0, '', '', 'O', '', ''),

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `aircrafts`
--
ALTER TABLE `aircrafts`
  ADD PRIMARY KEY (`regcode`),
  ADD KEY `icao` (`icao`),
  ADD KEY `icaoowener` (`icaoowener`);
