-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2021 at 01:16 AM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kina`
--

-- --------------------------------------------------------

--
-- Table structure for table `filmy`
--

CREATE TABLE `filmy` (
  `idfilmy` int(11) NOT NULL,
  `nazev_cz` varchar(45) DEFAULT NULL,
  `delka` int(11) DEFAULT NULL,
  `typ_idtyp` int(11) NOT NULL,
  `zanr_filmu_idzanr_filmu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `filmy`
--

INSERT INTO `filmy` (`idfilmy`, `nazev_cz`, `delka`, `typ_idtyp`, `zanr_filmu_idzanr_filmu`) VALUES
(1, 'Iron Sky', 93, 1, 9),
(2, 'Tenet', 150, 1, 7),
(3, 'Mission: Impossible - Fallout', 148, 1, 1),
(4, '22 Jump Street', 112, 1, 2),
(5, 'Tomb Raider', 119, 1, 3),
(6, 'Pelíšky', 116, 1, 4),
(7, 'Mlčení jehňátek', 119, 1, 10),
(8, 'Zastav a nepřežiješ 2 - Vysoké napětí', 96, 1, 5),
(9, 'Den poté', 119, 1, 6),
(10, 'Zootropolis: Město zvířat', 108, 2, 8);

-- --------------------------------------------------------

--
-- Table structure for table `filmy_has_herci`
--

CREATE TABLE `filmy_has_herci` (
  `filmy_idfilmy` int(11) NOT NULL,
  `herci_idherci` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `filmy_has_herci`
--

INSERT INTO `filmy_has_herci` (`filmy_idfilmy`, `herci_idherci`) VALUES
(1, 1),
(1, 2),
(1, 3),
(2, 4),
(2, 5),
(2, 6),
(3, 7),
(3, 8),
(3, 9),
(4, 10),
(4, 11),
(4, 12),
(5, 13),
(5, 14),
(5, 15),
(6, 16),
(6, 17),
(6, 18),
(7, 19),
(7, 20),
(7, 21),
(8, 22),
(8, 23),
(8, 24),
(9, 25),
(9, 26),
(9, 27),
(10, 28),
(10, 29),
(10, 30);

-- --------------------------------------------------------

--
-- Table structure for table `herci`
--

CREATE TABLE `herci` (
  `idherci` int(11) NOT NULL,
  `jmeno` varchar(45) DEFAULT NULL,
  `prijmeni` varchar(45) DEFAULT NULL,
  `datum_narozeni` date DEFAULT NULL,
  `jmeno_postavy` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `herci`
--

INSERT INTO `herci` (`idherci`, `jmeno`, `prijmeni`, `datum_narozeni`, `jmeno_postavy`) VALUES
(1, 'Julia', 'Dietze', '1981-03-07', 'Renate Richterová'),
(2, 'Götz', 'Otto', '1967-10-15', 'Klaus Adler'),
(3, 'Tilo', 'Prücker', '1940-10-20', 'doktor Richter'),
(4, 'Robert', 'Pattison', '1986-05-13', 'Neil'),
(5, 'Elizabeth', 'Debicki', '1990-08-14', 'Kat'),
(6, 'Aaron', 'Johnson', '1990-06-13', 'Ives'),
(7, 'Tom', 'Cruise', '1962-07-03', 'Ethan Hunt'),
(8, 'Rebecca', 'Ferguson', '1983-10-19', 'Ilsa Faustová'),
(9, 'Michelle', 'Monaghan', '1976-03-23', 'Julia'),
(10, 'Johan', 'Hill', '1983-12-20', 'Schmidt'),
(11, 'Channing', 'Tatum', '1980-04-26', 'Jenko'),
(12, 'Peter', 'Stormare', '1953-08-27', 'Duch'),
(13, 'Alicia', 'Vikander', '1988-10-03', 'Lara Croft'),
(14, 'Walton', 'Foffins', '1971-11-10', 'Mathias Vogel'),
(15, 'Dominic', 'West', '1969-10-15', 'Lord Richard Croft'),
(16, 'Miroslav', 'Donutil', '1951-02-07', 'Šebek'),
(17, 'Jiří', 'Kodet', '1937-12-06', 'Kraus'),
(18, 'Simona', 'Stašová', '1955-03-19', 'Šebková'),
(19, 'Jodie', 'Foster', '1962-11-19', 'Clarice Starlingová'),
(20, 'Anthony', 'Hopkins', '1937-12-31', 'dr. Hannibal Lecter'),
(21, 'Scott', 'Glenn', '1941-01-26', 'Crawford'),
(22, 'Jason', 'Statham', '1967-07-26', 'Chev Chelios'),
(23, 'Amy', 'Smart', '1976-03-26', 'Eve'),
(24, 'Dwight', 'Yoakam', '1956-10-23', 'dr. Miles'),
(25, 'Dennis', 'Quaid', '1954-04-09', 'Jack Hall'),
(26, 'Jake', 'Gyllenhaal', '1980-12-19', 'Sam Hall'),
(27, 'Ian', 'Holm', '1931-09-12', 'Terry Rapson'),
(28, 'Ginnifer', 'Goodwin', '1978-05-22', 'Judy Hoppsová'),
(29, 'Jason', 'Bateman', '1969-01-14', 'Judy Hopps'),
(30, 'Idris', 'Elba', '1972-09-06', 'Bogo');

-- --------------------------------------------------------

--
-- Table structure for table `jazyky`
--

CREATE TABLE `jazyky` (
  `idjazyky` int(11) NOT NULL,
  `jazyk` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jazyky`
--

INSERT INTO `jazyky` (`idjazyky`, `jazyk`) VALUES
(1, 'Angličtina');

-- --------------------------------------------------------

--
-- Table structure for table `nazev_filmu`
--

CREATE TABLE `nazev_filmu` (
  `idnazev` int(11) NOT NULL,
  `nazev_filmu` varchar(45) DEFAULT NULL,
  `jazyky_idjazyky` int(11) NOT NULL,
  `filmy_idfilmy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nazev_filmu`
--

INSERT INTO `nazev_filmu` (`idnazev`, `nazev_filmu`, `jazyky_idjazyky`, `filmy_idfilmy`) VALUES
(1, 'Iron Sky', 1, 1),
(2, 'Tenet', 1, 2),
(3, 'Mission: Impossible - Fallout', 1, 3),
(4, '22 Jump Street', 1, 4),
(5, 'Tomb Raider', 1, 5),
(6, 'Cosy Dens', 1, 6),
(7, 'The Silence of the Lambs', 1, 7),
(8, 'Crank: High Voltage', 1, 8),
(9, 'Crank 2: High Voltage', 1, 8),
(10, 'The Day After Tomorrow', 1, 9),
(11, 'Zootopia', 1, 10);

-- --------------------------------------------------------

--
-- Table structure for table `nazev_zeme`
--

CREATE TABLE `nazev_zeme` (
  `idzeme` int(11) NOT NULL,
  `nazev_zeme` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nazev_zeme`
--

INSERT INTO `nazev_zeme` (`idzeme`, `nazev_zeme`) VALUES
(1, 'Finsko'),
(2, 'Německo'),
(3, 'Austrálie'),
(4, 'USA'),
(5, 'Velká Británie'),
(6, 'Česká Republika');

-- --------------------------------------------------------

--
-- Table structure for table `nazev_zeme_has_filmy`
--

CREATE TABLE `nazev_zeme_has_filmy` (
  `nazev_zeme_idzeme` int(11) NOT NULL,
  `filmy_idfilmy` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `nazev_zeme_has_filmy`
--

INSERT INTO `nazev_zeme_has_filmy` (`nazev_zeme_idzeme`, `filmy_idfilmy`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(4, 7),
(4, 8),
(4, 9),
(4, 10),
(5, 2),
(5, 5),
(6, 6);

-- --------------------------------------------------------

--
-- Table structure for table `promitani`
--

CREATE TABLE `promitani` (
  `idpromitani` int(11) NOT NULL,
  `datum` date DEFAULT NULL,
  `cas` time DEFAULT NULL,
  `filmy_idfilmy` int(11) NOT NULL,
  `saly_idsaly` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `promitani`
--

INSERT INTO `promitani` (`idpromitani`, `datum`, `cas`, `filmy_idfilmy`, `saly_idsaly`) VALUES
(1, '2021-07-12', '13:00:00', 1, 2),
(2, '2021-05-17', '15:00:00', 2, 1),
(3, '2021-03-28', '12:00:00', 3, 2),
(4, '2021-04-11', '10:00:00', 4, 3),
(5, '2021-02-22', '15:00:00', 5, 1),
(6, '2021-03-02', '14:00:00', 6, 3),
(7, '2021-03-05', '20:00:00', 7, 1),
(8, '2021-04-05', '20:00:00', 8, 1),
(9, '2021-04-12', '20:00:00', 9, 2),
(10, '2021-03-07', '14:00:00', 10, 3);

-- --------------------------------------------------------

--
-- Table structure for table `saly`
--

CREATE TABLE `saly` (
  `idsaly` int(11) NOT NULL,
  `cislo_salu` int(11) DEFAULT NULL,
  `kapacita` int(11) DEFAULT NULL,
  `3D` tinyint(1) DEFAULT NULL,
  `prostorovy_zvuk` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `saly`
--

INSERT INTO `saly` (`idsaly`, `cislo_salu`, `kapacita`, `3D`, `prostorovy_zvuk`) VALUES
(1, 1, 300, 1, 1),
(2, 2, 200, 0, 1),
(3, 3, 120, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `typ`
--

CREATE TABLE `typ` (
  `idtyp` int(11) NOT NULL,
  `typ_filmu` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `typ`
--

INSERT INTO `typ` (`idtyp`, `typ_filmu`) VALUES
(1, 'hraný'),
(2, 'animovaný');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullname` varchar(125) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullname`, `email`, `password`) VALUES
(1, 'admin', 'admin@admin.com', '$2a$10$DS0DTPYqiQ4LCzkXkgLhluapOCYeL/VcZjgK3vqTRtDeh.Rejka6u'),
(2, 'Dominik', 'dominikborek@seznam.cz', '$2a$10$yoia1vFMVw5VfBn1rUIWFuyxOPzK9QM.190bn3a/FEUN81/3i8exG');

-- --------------------------------------------------------

--
-- Table structure for table `vstupne`
--

CREATE TABLE `vstupne` (
  `idvstupne` int(11) NOT NULL,
  `promitani_idpromitani` int(11) NOT NULL,
  `cas_prodeje` time DEFAULT NULL,
  `cena` int(11) DEFAULT NULL,
  `misto` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `vstupne`
--

INSERT INTO `vstupne` (`idvstupne`, `promitani_idpromitani`, `cas_prodeje`, `cena`, `misto`) VALUES
(1, 1, '11:00:00', 120, 128),
(2, 2, '12:00:00', 220, 110),
(3, 3, '10:00:00', 180, 60),
(4, 4, '08:00:00', 100, 90),
(5, 5, '11:00:00', 120, 112),
(6, 6, '11:00:00', 90, 100),
(7, 7, '18:00:00', 180, 150),
(8, 8, '18:00:00', 150, 130),
(9, 9, '18:00:00', 180, 33),
(10, 10, '12:00:00', 110, 150);

-- --------------------------------------------------------

--
-- Table structure for table `zanr_filmu`
--

CREATE TABLE `zanr_filmu` (
  `idzanr_filmu` int(11) NOT NULL,
  `zanr_filmu` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `zanr_filmu`
--

INSERT INTO `zanr_filmu` (`idzanr_filmu`, `zanr_filmu`) VALUES
(1, 'Akční'),
(2, 'Komedie'),
(3, 'Dobrodružný'),
(4, 'Drama'),
(5, 'Krimi'),
(6, 'Katastrofický'),
(7, 'Sci-fi'),
(8, 'Rodinný'),
(9, 'Parodie'),
(10, 'Horror');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `filmy`
--
ALTER TABLE `filmy`
  ADD PRIMARY KEY (`idfilmy`),
  ADD KEY `fk_filmy_typ_idx` (`typ_idtyp`),
  ADD KEY `fk_filmy_zanr_filmu1_idx` (`zanr_filmu_idzanr_filmu`);

--
-- Indexes for table `filmy_has_herci`
--
ALTER TABLE `filmy_has_herci`
  ADD PRIMARY KEY (`filmy_idfilmy`,`herci_idherci`),
  ADD KEY `fk_filmy_has_herci_herci1_idx` (`herci_idherci`),
  ADD KEY `fk_filmy_has_herci_filmy1_idx` (`filmy_idfilmy`);

--
-- Indexes for table `herci`
--
ALTER TABLE `herci`
  ADD PRIMARY KEY (`idherci`);

--
-- Indexes for table `jazyky`
--
ALTER TABLE `jazyky`
  ADD PRIMARY KEY (`idjazyky`);

--
-- Indexes for table `nazev_filmu`
--
ALTER TABLE `nazev_filmu`
  ADD PRIMARY KEY (`idnazev`),
  ADD KEY `fk_nazev_filmu_jazyky1_idx` (`jazyky_idjazyky`),
  ADD KEY `fk_nazev_filmu_filmy1_idx` (`filmy_idfilmy`);

--
-- Indexes for table `nazev_zeme`
--
ALTER TABLE `nazev_zeme`
  ADD PRIMARY KEY (`idzeme`);

--
-- Indexes for table `nazev_zeme_has_filmy`
--
ALTER TABLE `nazev_zeme_has_filmy`
  ADD PRIMARY KEY (`nazev_zeme_idzeme`,`filmy_idfilmy`),
  ADD KEY `fk_nazev_zeme_has_filmy_filmy1_idx` (`filmy_idfilmy`),
  ADD KEY `fk_nazev_zeme_has_filmy_nazev_zeme1_idx` (`nazev_zeme_idzeme`);

--
-- Indexes for table `promitani`
--
ALTER TABLE `promitani`
  ADD PRIMARY KEY (`idpromitani`,`saly_idsaly`),
  ADD KEY `fk_promitani_filmy1_idx` (`filmy_idfilmy`),
  ADD KEY `fk_promitani_saly1_idx` (`saly_idsaly`);

--
-- Indexes for table `saly`
--
ALTER TABLE `saly`
  ADD PRIMARY KEY (`idsaly`);

--
-- Indexes for table `typ`
--
ALTER TABLE `typ`
  ADD PRIMARY KEY (`idtyp`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vstupne`
--
ALTER TABLE `vstupne`
  ADD PRIMARY KEY (`idvstupne`),
  ADD KEY `fk_vstupne_promitani1_idx` (`promitani_idpromitani`);

--
-- Indexes for table `zanr_filmu`
--
ALTER TABLE `zanr_filmu`
  ADD PRIMARY KEY (`idzanr_filmu`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `filmy`
--
ALTER TABLE `filmy`
  MODIFY `idfilmy` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `herci`
--
ALTER TABLE `herci`
  MODIFY `idherci` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `jazyky`
--
ALTER TABLE `jazyky`
  MODIFY `idjazyky` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nazev_filmu`
--
ALTER TABLE `nazev_filmu`
  MODIFY `idnazev` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `nazev_zeme`
--
ALTER TABLE `nazev_zeme`
  MODIFY `idzeme` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `promitani`
--
ALTER TABLE `promitani`
  MODIFY `idpromitani` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `saly`
--
ALTER TABLE `saly`
  MODIFY `idsaly` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `typ`
--
ALTER TABLE `typ`
  MODIFY `idtyp` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `vstupne`
--
ALTER TABLE `vstupne`
  MODIFY `idvstupne` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `zanr_filmu`
--
ALTER TABLE `zanr_filmu`
  MODIFY `idzanr_filmu` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
