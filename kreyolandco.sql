-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : lun. 15 mars 2021 à 18:24
-- Version du serveur :  8.0.21-0ubuntu0.20.04.4
-- Version de PHP : 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `kreyolandco`
--

-- --------------------------------------------------------

--
-- Structure de la table `Article`
--

CREATE TABLE `Article` (
  `art_id` int NOT NULL,
  `art_date` date NOT NULL,
  `art_journal` varchar(50) NOT NULL,
  `art_contenu` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Cheffe`
--

CREATE TABLE `Cheffe` (
  `che_id` int NOT NULL,
  `che_description` text NOT NULL,
  `che_photo_cheffe` varchar(255) NOT NULL,
  `che_photo_plat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Cheffe`
--

INSERT INTO `Cheffe` (`che_id`, `che_description`, `che_photo_cheffe`, `che_photo_plat`) VALUES
(1, 'Laissez vous tenter par une escale exotique gourmande, dans votre cuisine, avec la cheffe à domicile Katia DESPREZ , finaliste des Trophées des Chefs Ultramarins Coordinatrice du Cercle Gastronomique des jeunes Chefs Créole et  Toque Française !', 'assets\\images\\profil\\profil1.jpg', 'assets\\images\\accueil\\photo2.png');

-- --------------------------------------------------------

--
-- Structure de la table `Client`
--

CREATE TABLE `Client` (
  `cli_id` int NOT NULL,
  `cli_nom` varchar(50) NOT NULL,
  `cli_prenom` varchar(50) NOT NULL,
  `cli_telephone` varchar(50) NOT NULL,
  `cli_mail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Client`
--

INSERT INTO `Client` (`cli_id`, `cli_nom`, `cli_prenom`, `cli_telephone`, `cli_mail`) VALUES
(1, 'Gibson', 'Kim', '(272) 938-0071', 'faucibus.ut.nulla@cursus.net'),
(2, 'Patel', 'Cassandra', '(618) 389-9087', 'et.magna@utipsum.net'),
(3, 'Kelley', 'Berk', '(535) 114-1060', 'turpis.Aliquam.adipiscing@dapibusrutrumjusto.org'),
(4, 'Gallegos', 'Yasir', '(217) 864-6924', 'in@eros.net'),
(5, 'Chan', 'Hu', '(847) 296-4627', 'sapien.Cras.dolor@eutellus.org'),
(6, 'Vasquez', 'James', '(687) 871-7826', 'iaculis@lacusvarius.co.uk'),
(7, 'Lamb', 'Vance', '(824) 267-6899', 'a.malesuada@natoque.org'),
(8, 'Todd', 'Imani', '(835) 670-1793', 'lacinia@sitametornare.org'),
(9, 'Pitts', 'Rana', '(772) 471-4635', 'lorem.ipsum.sodales@eu.com'),
(10, 'Ware', 'Tamara', '(296) 604-9225', 'nascetur.ridiculus.mus@bibendumullamcorper.ca'),
(11, 'Bradshaw', 'Hedley', '(120) 741-6108', 'ante.ipsum.primis@non.edu'),
(12, 'Brooks', 'Alexis', '(847) 500-3307', 'In.ornare@liberoduinec.net'),
(13, 'Graham', 'Reese', '(764) 979-7767', 'Mauris@velitjustonec.net'),
(14, 'Poole', 'Ahmed', '(204) 583-4165', 'varius.orci@ipsumdolor.ca'),
(15, 'Franklin', 'Yen', '(593) 354-6299', 'enim.consequat@ligulaAenean.ca'),
(16, 'Albert', 'Ulla', '(902) 525-4889', 'risus.Duis.a@erat.co.uk'),
(17, 'Vincent', 'Ivy', '(837) 389-6413', 'pharetra.Quisque@consequatdolorvitae.org'),
(18, 'Briggs', 'Harriet', '(476) 879-7290', 'placerat.Cras@posuere.org'),
(19, 'Whitley', 'Rahim', '(615) 779-0160', 'Fusce.diam@nec.edu'),
(20, 'Duffy', 'Sean', '(893) 555-9832', 'et.magna@dapibusligula.edu'),
(21, 'Barnett', 'Megan', '(344) 102-0844', 'tellus.Nunc.lectus@velitegetlaoreet.org'),
(22, 'Haley', 'Tanner', '(374) 173-2375', 'et.euismod@Quisqueliberolacus.org'),
(23, 'English', 'Armand', '(210) 503-6153', 'elit.Curabitur.sed@duinec.com'),
(24, 'Lindsay', 'Graham', '(323) 678-4158', 'congue.In@gravidamolestiearcu.net'),
(25, 'Downs', 'Wendy', '(401) 689-7006', 'tempor@etmagnaPraesent.com'),
(26, 'Dunn', 'India', '(513) 151-2801', 'Nullam.velit@velit.com'),
(27, 'Golden', 'Shafira', '(589) 782-5088', 'lacinia.vitae@Suspendissenonleo.org'),
(28, 'Fitzpatrick', 'Hedda', '(739) 753-1837', 'Sed@sedduiFusce.co.uk'),
(29, 'Francis', 'Armando', '(122) 408-2309', 'et.arcu@dolor.co.uk'),
(30, 'Morgan', 'Whilemina', '(590) 348-3765', 'malesuada.augue@auctornuncnulla.com'),
(31, 'Oconnor', 'Demetria', '(853) 165-6000', 'sit.amet.diam@velit.com'),
(32, 'Baldwin', 'Cadman', '(768) 975-9862', 'lectus.convallis@mi.org'),
(33, 'Chan', 'Stuart', '(124) 448-6100', 'cursus.diam@mi.co.uk'),
(34, 'Riggs', 'Lee', '(313) 976-8524', 'vitae@nibh.ca'),
(35, 'Mathis', 'Andrew', '(770) 143-0414', 'hendrerit.consectetuer.cursus@aliquameuaccumsan.org'),
(36, 'Owens', 'Zahir', '(825) 845-8330', 'molestie@accumsan.co.uk'),
(37, 'Hampton', 'Audra', '(485) 806-9419', 'tellus.id.nunc@libero.edu'),
(38, 'Sullivan', 'Judah', '(879) 284-7462', 'facilisis@euismod.co.uk'),
(39, 'Lara', 'Clio', '(214) 112-4348', 'ipsum.Donec.sollicitudin@Donecfelis.net'),
(40, 'Dalton', 'Davis', '(381) 974-8052', 'commodo.auctor@penatibusetmagnis.co.uk'),
(41, 'Rojas', 'Anika', '(848) 774-4805', 'urna@urnaconvalliserat.ca'),
(42, 'Huff', 'Kaden', '(342) 656-2930', 'consequat@Aenean.ca'),
(43, 'Jones', 'Brody', '(387) 191-9085', 'libero.dui.nec@laciniamattis.edu'),
(44, 'Vasquez', 'Indigo', '(683) 372-6192', 'Suspendisse@nuncac.ca'),
(45, 'Clay', 'Cameron', '(234) 157-7396', 'dui.nec@euaccumsan.org'),
(46, 'Rocha', 'Rosalyn', '(465) 191-8766', 'laoreet.lectus.quis@lobortisnisi.edu'),
(47, 'Singleton', 'Willa', '(471) 630-9640', 'auctor.ullamcorper@dolornonummyac.net'),
(48, 'Foley', 'Slade', '(692) 912-5776', 'magnis.dis.parturient@egestasnuncsed.edu'),
(49, 'Padilla', 'Steven', '(463) 321-6767', 'ipsum.porta@faucibus.edu'),
(50, 'Alvarez', 'Craig', '(545) 539-3758', 'dapibus.quam.quis@tellusimperdiet.org'),
(51, 'Morrow', 'Malik', '(782) 249-0786', 'cursus.diam@nisiAeneaneget.org'),
(52, 'Ramsey', 'Carlos', '(395) 249-6192', 'cubilia.Curae.Donec@ametdapibusid.ca'),
(53, 'Mclaughlin', 'Hayden', '(702) 411-0087', 'et.malesuada.fames@Cras.net'),
(54, 'Cunningham', 'Frances', '(336) 744-5204', 'sollicitudin@nuncacmattis.edu'),
(55, 'Compton', 'Germane', '(498) 385-9152', 'ac.mattis.velit@idrisusquis.com'),
(56, 'Morin', 'Kasimir', '(822) 682-5247', 'Sed.pharetra.felis@auctor.co.uk'),
(57, 'Rivers', 'Fay', '(467) 259-3495', 'ac.mi.eleifend@Nullaaliquet.co.uk'),
(58, 'Kirby', 'Malcolm', '(676) 476-9914', 'elit.Curabitur.sed@lectus.org'),
(59, 'Chang', 'Aidan', '(552) 398-4314', 'magna.Cras.convallis@ornaresagittis.net'),
(60, 'Bernard', 'Pamela', '(595) 252-3390', 'sit@tempor.org'),
(61, 'Hyde', 'Belle', '(716) 669-6752', 'lectus.a.sollicitudin@velnisl.com'),
(62, 'Mclean', 'Chantale', '(530) 806-4774', 'dapibus.quam@libero.org'),
(63, 'Graves', 'Zephania', '(823) 928-6522', 'velit.Cras@tacitisociosqu.co.uk'),
(64, 'Everett', 'Dane', '(191) 663-1258', 'Donec@accumsanconvallisante.co.uk'),
(65, 'Tyson', 'Magee', '(670) 333-5680', 'libero.Proin@maurissitamet.ca'),
(66, 'Huff', 'Leandra', '(927) 211-4691', 'Nullam.suscipit.est@diam.com'),
(67, 'Riley', 'Minerva', '(258) 125-4375', 'neque@tortordictumeu.edu'),
(68, 'Carpenter', 'Kai', '(159) 920-8777', 'morbi.tristique@congueaaliquet.ca'),
(69, 'Steele', 'Lee', '(724) 206-0083', 'habitant@fringillami.net'),
(70, 'Grimes', 'Sonia', '(713) 266-0584', 'neque.tellus.imperdiet@velit.ca'),
(71, 'Sykes', 'Cecilia', '(880) 415-5977', 'non.luctus@enim.org'),
(72, 'Sears', 'Winter', '(602) 699-3540', 'imperdiet@interdumfeugiat.com'),
(73, 'Castaneda', 'James', '(495) 582-4286', 'metus@orciin.ca'),
(74, 'Klein', 'Lyle', '(289) 898-3783', 'augue.scelerisque.mollis@Aenean.co.uk'),
(75, 'Stuart', 'Reagan', '(859) 834-6841', 'eget.ipsum@sit.ca'),
(76, 'Mckay', 'Hadassah', '(553) 904-6751', 'eget.mollis.lectus@diameu.edu'),
(77, 'Bush', 'Igor', '(163) 335-8866', 'sem.magna@acmattisvelit.co.uk'),
(78, 'Justice', 'Maggy', '(764) 599-0999', 'Nunc.ac.sem@orciluctus.edu'),
(79, 'Carpenter', 'Thane', '(675) 103-5842', 'mauris.Suspendisse@nequetellus.co.uk'),
(80, 'Robinson', 'Yasir', '(309) 948-0387', 'et.ipsum.cursus@Namnullamagna.ca'),
(81, 'Warren', 'Isaac', '(195) 175-5202', 'fames.ac@odioa.edu'),
(82, 'Powell', 'Benjamin', '(453) 365-9778', 'Nam.porttitor@Vestibulum.net'),
(83, 'Donaldson', 'Kasimir', '(345) 664-2437', 'risus.odio.auctor@et.com'),
(84, 'Gould', 'Ralph', '(826) 765-4020', 'iaculis.odio@fringilla.co.uk'),
(85, 'Pickett', 'Macy', '(635) 365-7114', 'Praesent.interdum@nibh.com'),
(86, 'Mcfadden', 'Jamalia', '(866) 662-8894', 'sit@amet.com'),
(87, 'Greer', 'Brody', '(380) 372-8236', 'ullamcorper.magna.Sed@Nunc.edu'),
(88, 'Miranda', 'Norman', '(871) 714-9470', 'Quisque.varius@accumsansedfacilisis.edu'),
(89, 'Barber', 'Wynne', '(424) 687-0327', 'adipiscing@utpellentesqueeget.ca'),
(90, 'Chase', 'Nita', '(332) 950-1380', 'Nullam.vitae@ipsumleo.org'),
(91, 'Mcmillan', 'Kameko', '(636) 626-7571', 'mauris@convallis.ca'),
(92, 'Puckett', 'Rhona', '(230) 289-8116', 'Sed.congue.elit@magna.co.uk'),
(93, 'Vance', 'Alma', '(266) 352-3178', 'non@Phasellusliberomauris.edu'),
(94, 'Raymond', 'Emery', '(801) 673-1089', 'quis.diam.Pellentesque@cursus.ca'),
(95, 'Jefferson', 'Ciaran', '(103) 731-5307', 'at@enimEtiamgravida.ca'),
(96, 'Johnson', 'Summer', '(283) 225-4739', 'molestie.orci@nondapibus.com'),
(97, 'Holmes', 'Kareem', '(148) 868-8913', 'amet.metus.Aliquam@miAliquam.org'),
(98, 'Griffin', 'Colton', '(750) 519-5766', 'Maecenas.mi.felis@adipiscing.org'),
(99, 'Hutchinson', 'Garrett', '(193) 154-5510', 'Nulla.tincidunt@enimnectempus.co.uk'),
(100, 'Leach', 'MacKensie', '(903) 251-5471', 'Morbi@justoProin.ca'),
(111, 'Quintin', 'Kevin', '0666666666', 'tes@gmail.com'),
(113, 'Smith', 'John', '0601020305', 'johnsmith@hotmail.fr');

-- --------------------------------------------------------

--
-- Structure de la table `Composer`
--

CREATE TABLE `Composer` (
  `com_rol_id` int NOT NULL,
  `com_pri_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Diaporama`
--

CREATE TABLE `Diaporama` (
  `gal_id` int NOT NULL,
  `gal_date` date NOT NULL,
  `gal_titre` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Evenement`
--

CREATE TABLE `Evenement` (
  `eve_id` int NOT NULL,
  `eve_titre` varchar(255) NOT NULL,
  `eve_description_courte` varchar(255) NOT NULL,
  `eve_description_longue` text NOT NULL,
  `eve_che_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Media`
--

CREATE TABLE `Media` (
  `med_id` int NOT NULL,
  `med_nom` varchar(50) NOT NULL,
  `med_type` varchar(50) NOT NULL,
  `med_date` date NOT NULL,
  `med_diffuseur` varchar(255) DEFAULT NULL,
  `med_url` varchar(255) DEFAULT NULL,
  `med_eve_id` int DEFAULT NULL,
  `med_ser_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Media`
--

INSERT INTO `Media` (`med_id`, `med_nom`, `med_type`, `med_date`, `med_diffuseur`, `med_url`, `med_eve_id`, `med_ser_id`) VALUES
(35, 'background_kreyol.png', 'image/png', '2020-10-31', NULL, NULL, NULL, NULL),
(36, 'background_kreyol.png', 'image/png', '2020-10-31', NULL, NULL, NULL, NULL),
(37, 'photo_atelier.jpg', 'image/jpeg', '2020-10-31', NULL, NULL, NULL, NULL),
(38, 'photo_atelier.jpg', 'image/jpeg', '2020-10-31', NULL, NULL, NULL, NULL),
(39, 'photo_atelier.jpg', 'image/jpeg', '2020-10-31', NULL, NULL, NULL, NULL),
(40, 'photo_domicile.jpg', 'image/jpeg', '2020-10-31', NULL, NULL, NULL, NULL),
(41, 'photo_domicile.jpg', 'image/jpeg', '2020-10-31', NULL, NULL, NULL, NULL),
(42, 'photo_domicile.jpg', 'image/jpeg', '2020-10-31', NULL, NULL, NULL, NULL),
(43, 'photo_domicile.jpg', 'image/jpeg', '2020-10-31', NULL, NULL, NULL, NULL),
(44, 'photo2.jpg', 'image/jpeg', '2020-10-31', NULL, NULL, NULL, NULL),
(45, 'photo2.jpg', 'image/jpeg', '2020-10-31', NULL, NULL, NULL, NULL),
(46, 'photo3.jpg', 'image/jpeg', '2020-10-31', NULL, NULL, NULL, NULL),
(47, 'photo3.jpg', 'image/jpeg', '2020-10-31', NULL, NULL, NULL, NULL),
(48, 'photo1.jpg', 'image/jpeg', '2020-10-31', NULL, NULL, NULL, NULL),
(49, 'photo1.jpg', 'image/jpeg', '2020-10-31', NULL, NULL, NULL, NULL),
(50, '', '', '2020-10-31', NULL, NULL, NULL, NULL),
(51, '', '', '2020-10-31', NULL, NULL, NULL, NULL),
(52, '', '', '2020-10-30', NULL, NULL, NULL, NULL),
(53, '', '', '2020-10-31', NULL, NULL, NULL, NULL),
(54, 'photo1.jpg', 'image/jpeg', '2020-11-15', NULL, NULL, NULL, NULL),
(55, 'photo3.jpg', 'image/jpeg', '2020-11-16', NULL, NULL, NULL, NULL),
(56, 'profil1.jpg', 'image/jpeg', '2020-11-30', NULL, NULL, NULL, NULL),
(57, 'profil1.jpg', 'image/jpeg', '2020-11-30', NULL, NULL, NULL, NULL),
(58, 'profil1.jpg', 'image/jpeg', '2020-11-20', NULL, NULL, NULL, NULL),
(59, 'profil1.jpg', 'image/jpeg', '2020-11-27', NULL, NULL, NULL, NULL),
(60, 'profil1.jpg', 'image/jpeg', '2020-11-19', NULL, NULL, NULL, NULL),
(61, 'profil1.jpg', 'image/jpeg', '2020-11-19', NULL, NULL, NULL, NULL),
(62, 'profil1.jpg', 'image/jpeg', '2020-11-19', NULL, NULL, NULL, NULL),
(63, 'profil1.jpg', 'image/jpeg', '2020-11-20', NULL, NULL, NULL, NULL),
(64, 'profil1.jpg', 'image/jpeg', '2020-11-19', NULL, NULL, NULL, NULL),
(65, 'profil1.jpg', 'image/jpeg', '2020-11-20', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `Palmares`
--

CREATE TABLE `Palmares` (
  `pal_id` int NOT NULL,
  `pal_intitule` varchar(255) NOT NULL,
  `pal_date_obtention` date NOT NULL,
  `pal_description` text NOT NULL,
  `pal_che_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Parcours`
--

CREATE TABLE `Parcours` (
  `exp_id` int NOT NULL,
  `exp_poste_occupe` varchar(255) NOT NULL,
  `exp_entreprise` varchar(255) NOT NULL,
  `exp_che_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Presenter`
--

CREATE TABLE `Presenter` (
  `pres_ser_id` int NOT NULL,
  `pres_gal_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Presenter2`
--

CREATE TABLE `Presenter2` (
  `pres_art_id` int NOT NULL,
  `pres_gal_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Presenter3`
--

CREATE TABLE `Presenter3` (
  `pres_med_id` int NOT NULL,
  `pres_gal_id` int NOT NULL,
  `pres_ordre` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Presenter4`
--

CREATE TABLE `Presenter4` (
  `pres_eve_id` int NOT NULL,
  `pres_gal_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Privilege`
--

CREATE TABLE `Privilege` (
  `pri_id` int NOT NULL,
  `pri_libelle` varchar(50) NOT NULL,
  `pri_cible` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Professionnel`
--

CREATE TABLE `Professionnel` (
  `pro_id` int NOT NULL,
  `pro_nom` varchar(255) NOT NULL,
  `pro_mail` varchar(50) NOT NULL,
  `pro_telephone` varchar(50) NOT NULL,
  `pro_observation` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Professionnel`
--

INSERT INTO `Professionnel` (`pro_id`, `pro_nom`, `pro_mail`, `pro_telephone`, `pro_observation`) VALUES
(1, 'Smith', 'johnsmith@hotmail.fr', '0601020304', 'Le plus grand des professionnels de tous les temps');

-- --------------------------------------------------------

--
-- Structure de la table `Reseau_sociaux`
--

CREATE TABLE `Reseau_sociaux` (
  `res_id` int NOT NULL,
  `res_nom` varchar(50) NOT NULL,
  `res_login` varchar(50) NOT NULL,
  `res_mdp` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Reservation`
--

CREATE TABLE `Reservation` (
  `res_id` int NOT NULL,
  `res_ser_id` int DEFAULT NULL,
  `res_cli_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Role`
--

CREATE TABLE `Role` (
  `rol_id` int NOT NULL,
  `rol_libelle` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Role`
--

INSERT INTO `Role` (`rol_id`, `rol_libelle`) VALUES
(1, 'dev1'),
(2, 'adm1'),
(3, 'vis1');

-- --------------------------------------------------------

--
-- Structure de la table `Service`
--

CREATE TABLE `Service` (
  `ser_id` int NOT NULL,
  `ser_date` date NOT NULL,
  `ser_cp` int NOT NULL,
  `ser_lieu` varchar(255) NOT NULL,
  `ser_capacite` int NOT NULL,
  `ser_description_courte` varchar(255) NOT NULL,
  `ser_description_longue` text NOT NULL,
  `ser_type` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Service`
--

INSERT INTO `Service` (`ser_id`, `ser_date`, `ser_cp`, `ser_lieu`, `ser_capacite`, `ser_description_courte`, `ser_description_longue`, `ser_type`) VALUES
(1, '2020-05-16', 0, 'Governador Valadares', 92, 'pellentesque massa lobortis ultrices. Vivamus', 'erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer', 'cheffe à domicile'),
(2, '2021-06-14', 0, 'Pinkafeld', 84, 'neque. Morbi', 'dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem vitae odio sagittis semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est mauris, rhoncus id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut cursus luctus,', 'cheffe à domicile'),
(3, '2021-06-25', 0, 'Fréjus', 87, 'at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel,', 'lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed', 'atelier cuisine'),
(4, '2021-01-12', 0, 'Marseille', 100, 'Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus ligula. Aliquam', 'et libero. Proin mi. Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in,', 'atelier cuisine'),
(5, '2021-05-20', 0, 'Stupino', 135, 'elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae diam. Proin', 'Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada', 'cheffe à domicile'),
(6, '2020-08-20', 0, 'Champdani', 106, 'pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur', 'erat volutpat. Nulla facilisis. Suspendisse commodo tincidunt nibh. Phasellus nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget mollis lectus pede et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit', 'cheffe à domicile'),
(7, '2020-01-27', 0, 'San Giovanni Lipioni', 39, 'id, mollis nec, cursus a, enim. Suspendisse aliquet, sem ut', 'augue porttitor interdum. Sed auctor odio a purus. Duis elementum, dui quis accumsan convallis, ante lectus convallis est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in', 'cheffe à domicile'),
(8, '2021-03-30', 0, 'Aydın', 23, 'non, hendrerit id, ante.', 'Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum', 'cheffe à domicile'),
(9, '2019-11-10', 0, 'Ciudad Apodaca', 119, 'Maecenas mi felis,', 'taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas.', 'cheffe à domicile'),
(10, '2020-06-05', 0, 'FlŽnu', 20, 'convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat.', 'eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem', 'atelier cuisine'),
(11, '2019-10-07', 0, 'Belmont', 108, 'leo elementum', 'a, enim. Suspendisse aliquet, sem ut cursus luctus, ipsum leo elementum sem, vitae aliquam eros turpis non enim. Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent', 'cheffe à domicile'),
(12, '2020-08-11', 0, 'Middlesbrough', 60, 'mattis velit justo nec ante. Maecenas mi', 'sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies', 'cheffe à domicile'),
(13, '2020-04-13', 0, 'South Dum Dum', 114, 'a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim', 'Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur', 'atelier cuisine'),
(14, '2020-12-05', 0, 'Campbellton', 74, 'Proin nisl sem, consequat nec, mollis vitae, posuere at, velit. Cras lorem lorem, luctus ut, pellentesque', 'id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra,', 'atelier cuisine'),
(15, '2020-12-07', 0, 'Casanova Elvo', 37, 'nec,', 'risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit', 'atelier cuisine'),
(16, '2021-05-29', 0, 'Liedekerke', 111, 'sem eget massa. Suspendisse eleifend. Cras sed leo. Cras', 'Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet', 'cheffe à domicile'),
(17, '2021-08-25', 0, 'Medicine Hat', 42, 'nulla. Cras eu', 'Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci', 'cheffe à domicile'),
(18, '2021-09-26', 0, 'Hofors', 83, 'arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere', 'Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non', 'cheffe à domicile'),
(19, '2019-11-12', 0, 'Annapolis Royal', 87, 'justo. Praesent luctus.', 'et risus. Quisque libero lacus, varius et, euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus', 'cheffe à domicile'),
(20, '2021-07-10', 0, 'Boncelles', 137, 'ligula. Aliquam erat volutpat. Nulla dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius.', 'elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu et pede. Nunc sed orci lobortis augue scelerisque', 'cheffe à domicile'),
(21, '2020-12-31', 0, 'Sambreville', 18, 'tempor erat neque non quam. Pellentesque', 'orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum', 'atelier cuisine'),
(22, '2021-05-17', 0, 'Colbún', 66, 'dolor. Fusce feugiat.', 'Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam', 'atelier cuisine'),
(23, '2020-08-17', 0, 'Coimbatore', 25, 'non quam. Pellentesque habitant morbi tristique senectus et netus et', 'vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris sit amet lorem semper auctor. Mauris vel turpis.', 'atelier cuisine'),
(24, '2020-03-01', 0, 'Belgrade', 113, 'gravida non, sollicitudin a, malesuada id, erat. Etiam vestibulum', 'enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec', 'cheffe à domicile'),
(25, '2021-01-02', 0, 'Geel', 83, 'bibendum fermentum metus. Aenean sed pede', 'felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh', 'cheffe à domicile'),
(26, '2020-03-05', 0, 'Westmount', 140, 'suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia', 'Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui, nec tempus mauris erat eget ipsum. Suspendisse sagittis. Nullam vitae', 'atelier cuisine'),
(27, '2020-03-26', 0, 'Offenburg', 38, 'mi. Aliquam gravida mauris ut mi. Duis risus odio, auctor vitae, aliquet nec,', 'diam. Proin dolor. Nulla semper tellus id nunc interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula.', 'cheffe à domicile'),
(28, '2021-03-19', 0, 'Tucson', 79, 'sodales nisi magna', 'Phasellus libero mauris, aliquam eu, accumsan sed, facilisis vitae, orci. Phasellus dapibus', 'atelier cuisine'),
(29, '2020-06-10', 0, 'Wanneroo', 21, 'fermentum arcu. Vestibulum ante ipsum primis in', 'vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel,', 'cheffe à domicile'),
(30, '2021-09-14', 0, 'St. Austell', 64, 'consectetuer euismod est arcu ac orci. Ut', 'tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at', 'cheffe à domicile'),
(31, '2021-09-26', 0, 'Płock', 60, 'Nam ac', 'non dui nec urna suscipit nonummy. Fusce fermentum fermentum arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl sem, consequat', 'atelier cuisine'),
(32, '2020-06-02', 0, 'Santa Cruz de Tenerife', 135, 'ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt', 'Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit. Nam nulla magna, malesuada vel, convallis in, cursus et, eros. Proin ultrices. Duis volutpat nunc sit amet metus. Aliquam erat volutpat. Nulla facilisis. Suspendisse commodo', 'cheffe à domicile'),
(33, '2021-04-25', 0, 'Warburg', 66, 'enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis', 'ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante', 'atelier cuisine'),
(34, '2021-03-17', 0, 'Leut', 55, 'netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit.', 'convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit.', 'atelier cuisine'),
(35, '2019-11-29', 0, 'Narbonne', 131, 'sed pede nec ante blandit viverra. Donec tempus, lorem fringilla', 'Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas, urna justo faucibus lectus, a sollicitudin orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa.', 'cheffe à domicile'),
(36, '2021-07-20', 0, 'Zapopan', 106, 'Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac', 'habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aliquam fringilla cursus purus. Nullam scelerisque neque sed sem egestas blandit.', 'cheffe à domicile'),
(37, '2021-02-25', 0, 'Priolo Gargallo', 63, 'Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum', 'Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget,', 'atelier cuisine'),
(38, '2021-02-12', 0, 'Monticelli d\'Ongina', 37, 'egestas. Aliquam nec enim. Nunc ut erat. Sed nunc est, mollis non, cursus non, egestas a, dui. Cras', 'in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices', 'cheffe à domicile'),
(39, '2020-08-04', 0, 'Kapfenberg', 17, 'In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis ac arcu. Nunc mauris. Morbi non sapien molestie orci', 'orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus', 'cheffe à domicile'),
(40, '2019-10-27', 0, 'Nuevo Laredo', 84, 'enim, sit amet ornare lectus justo eu', 'vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed', 'atelier cuisine'),
(41, '2019-11-23', 0, 'Cauquenes', 57, 'libero et tristique pellentesque, tellus sem mollis dui, in', 'Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris', 'atelier cuisine'),
(42, '2020-03-30', 0, 'Tournefeuille', 93, 'arcu vel quam dignissim pharetra. Nam ac nulla.', 'ante. Nunc mauris sapien, cursus in, hendrerit consectetuer, cursus et, magna. Praesent interdum ligula eu enim. Etiam imperdiet dictum magna. Ut tincidunt orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo sit amet nulla. Donec non justo. Proin non massa non ante', 'cheffe à domicile'),
(43, '2020-06-20', 0, 'Nizip', 53, 'nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend', 'eu arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus', 'atelier cuisine'),
(44, '2021-06-22', 0, 'Thirimont', 142, 'Etiam', 'vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae', 'atelier cuisine'),
(45, '2021-05-21', 0, 'Macklin', 108, 'eu arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus', 'Cras convallis convallis dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien.', 'cheffe à domicile'),
(46, '2020-03-11', 0, 'D�gelis', 85, 'mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim.', 'sit amet nulla. Donec non justo. Proin non massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus. Phasellus elit pede, malesuada vel, venenatis vel, faucibus id, libero. Donec', 'cheffe à domicile'),
(47, '2020-02-19', 0, 'Kortrijk', 129, 'quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac', 'Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque', 'atelier cuisine'),
(48, '2020-12-25', 0, 'Mogi das Cruzes', 89, 'ligula tortor, dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero', 'mollis non, cursus non, egestas a, dui. Cras pellentesque. Sed dictum. Proin eget odio. Aliquam vulputate ullamcorper magna. Sed eu eros. Nam consequat dolor vitae dolor. Donec fringilla. Donec feugiat metus sit amet ante. Vivamus non lorem', 'cheffe à domicile'),
(49, '2020-03-15', 0, 'Charleville-Mézières', 125, 'sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non,', 'pharetra, felis eget varius ultrices, mauris ipsum porta elit, a feugiat tellus lorem eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue, eu tempor erat neque non quam. Pellentesque habitant morbi', 'cheffe à domicile'),
(50, '2019-10-06', 0, 'Bridlington', 109, 'magna a tortor. Nunc commodo', 'dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum', 'atelier cuisine'),
(51, '2021-02-16', 0, 'Casper', 107, 'nec urna et arcu imperdiet ullamcorper. Duis at lacus. Quisque purus', 'Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh lacinia orci, consectetuer euismod est arcu ac orci. Ut semper pretium neque. Morbi quis urna. Nunc quis arcu vel quam', 'atelier cuisine'),
(52, '2020-12-27', 0, 'Bathurst', 77, 'ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate,', 'lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus', 'cheffe à domicile'),
(53, '2020-10-07', 0, 'Hartford', 20, 'faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue.', 'In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac', 'atelier cuisine'),
(54, '2020-02-07', 0, 'MŽlin', 46, 'Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis. Nulla aliquet. Proin velit. Sed malesuada augue', 'dignissim lacus. Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus', 'cheffe à domicile'),
(55, '2020-03-24', 0, 'Klabbeek', 38, 'dis parturient montes, nascetur ridiculus mus. Donec dignissim magna a tortor. Nunc commodo auctor velit. Aliquam nisl. Nulla', 'dignissim. Maecenas ornare egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor scelerisque neque. Nullam nisl. Maecenas malesuada fringilla est. Mauris eu turpis.', 'atelier cuisine'),
(56, '2020-02-17', 0, 'St. Neots', 102, 'lobortis augue scelerisque mollis. Phasellus libero mauris, aliquam eu, accumsan sed,', 'nisl arcu iaculis enim, sit amet ornare lectus justo eu arcu. Morbi sit amet massa. Quisque porttitor eros nec tellus. Nunc lectus pede, ultrices', 'atelier cuisine'),
(57, '2020-12-28', 0, 'Paine', 139, 'dapibus', 'dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio.', 'atelier cuisine'),
(58, '2021-03-28', 0, 'Concepción', 63, 'sodales elit erat vitae', 'fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla purus mauris a nunc. In at pede. Cras vulputate velit eu sem. Pellentesque ut ipsum ac mi eleifend egestas. Sed pharetra, felis eget varius ultrices, mauris ipsum porta elit,', 'atelier cuisine'),
(59, '2020-02-24', 0, 'Monticelli d\'Ongina', 123, 'id, blandit at, nisi. Cum sociis natoque penatibus et magnis', 'est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec', 'cheffe à domicile'),
(60, '2019-12-18', 0, 'Negrete', 27, 'felis orci, adipiscing non, luctus sit', 'turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue. In scelerisque scelerisque dui. Suspendisse ac metus vitae velit egestas lacinia. Sed congue, elit sed consequat auctor, nunc nulla vulputate dui,', 'atelier cuisine'),
(61, '2020-09-03', 0, 'Millet', 22, 'ipsum cursus vestibulum. Mauris', 'est, vitae sodales nisi magna sed dui. Fusce aliquam, enim nec tempus scelerisque, lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis lobortis mauris. Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque.', 'atelier cuisine'),
(62, '2020-04-10', 0, 'Weston-super-Mare', 10, 'hendrerit id, ante. Nunc mauris', 'eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare. In faucibus. Morbi vehicula. Pellentesque tincidunt tempus risus. Donec egestas. Duis', 'atelier cuisine'),
(63, '2019-10-18', 0, 'Stamford', 61, 'tempor erat neque non quam. Pellentesque habitant morbi tristique senectus et netus et malesuada', 'blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae', 'cheffe à domicile'),
(64, '2021-01-21', 0, 'Elbistan', 63, 'mauris sagittis placerat. Cras dictum ultricies ligula. Nullam enim. Sed nulla ante,', 'sed pede. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel arcu eu odio tristique pharetra. Quisque ac', 'cheffe à domicile'),
(65, '2020-11-18', 0, 'Calamar', 114, 'metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit', 'est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem. Nulla interdum. Curabitur dictum. Phasellus in felis. Nulla tempor augue ac ipsum. Phasellus vitae mauris', 'cheffe à domicile'),
(66, '2020-03-03', 0, 'Sala Baganza', 25, 'euismod et, commodo at, libero. Morbi accumsan laoreet ipsum. Curabitur', 'dolor dolor, tempus non, lacinia at, iaculis quis, pede. Praesent eu dui. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique', 'atelier cuisine'),
(67, '2020-04-08', 0, 'Lutsel K\'e', 16, 'ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget tincidunt dui augue eu tellus.', 'ante, iaculis nec, eleifend non, dapibus rutrum, justo. Praesent luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue', 'atelier cuisine'),
(68, '2021-06-28', 0, 'Olathe', 29, 'eu metus. In lorem. Donec elementum, lorem ut aliquam iaculis, lacus pede sagittis augue,', 'felis purus ac tellus. Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh enim, gravida sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl.', 'cheffe à domicile'),
(69, '2019-12-23', 0, 'Olsztyn', 138, 'tortor. Integer aliquam adipiscing lacus. Ut nec urna et', 'dictum eu, placerat eget, venenatis a, magna. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Etiam laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer', 'cheffe à domicile'),
(70, '2020-10-05', 0, 'Massello', 50, 'lorem, eget mollis lectus', 'dapibus quam quis diam. Pellentesque habitant morbi tristique senectus et netus et', 'cheffe à domicile'),
(71, '2021-01-10', 0, 'Velaine-sur-Sambre', 11, 'lorem lorem, luctus ut, pellentesque eget, dictum placerat, augue. Sed molestie. Sed id risus quis diam luctus', 'ornare, lectus ante dictum mi, ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo.', 'cheffe à domicile'),
(72, '2020-01-22', 0, 'Gentinnes', 15, 'aliquet. Proin velit. Sed malesuada augue ut lacus. Nulla tincidunt, neque vitae semper egestas,', 'facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula. Donec luctus aliquet odio. Etiam ligula tortor, dictum eu, placerat eget,', 'cheffe à domicile'),
(73, '2019-12-05', 0, 'Harrisburg', 103, 'vitae erat vel pede blandit', 'imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam auctor, velit eget laoreet posuere, enim nisl', 'atelier cuisine'),
(74, '2020-07-05', 0, 'Juneau', 10, 'arcu. Vivamus sit amet', 'orci sem eget massa. Suspendisse eleifend. Cras sed leo. Cras vehicula aliquet libero. Integer in magna. Phasellus dolor elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu.', 'atelier cuisine'),
(75, '2020-04-17', 0, 'Plast', 105, 'vulputate, nisi sem semper erat, in consectetuer ipsum nunc id enim.', 'auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit', 'atelier cuisine'),
(76, '2019-12-20', 0, 'Florencia', 39, 'nibh. Donec', 'egestas ligula. Nullam feugiat placerat velit. Quisque varius. Nam porttitor', 'cheffe à domicile'),
(77, '2021-08-17', 0, 'Bhiwandi', 109, 'nulla. Integer vulputate, risus a ultricies adipiscing, enim mi tempor lorem, eget', 'ac libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque ultricies dignissim lacus. Aliquam rutrum lorem ac', 'cheffe à domicile'),
(78, '2021-07-17', 0, 'Chanco', 23, 'quam, elementum', 'sit amet, dapibus id, blandit at, nisi. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Proin vel nisl. Quisque fringilla euismod enim. Etiam gravida molestie arcu. Sed eu nibh vulputate mauris sagittis placerat.', 'cheffe à domicile'),
(79, '2019-11-25', 0, 'Pereira', 33, 'dis', 'vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem elit, pharetra ut, pharetra sed, hendrerit a, arcu. Sed et libero. Proin', 'atelier cuisine'),
(80, '2020-12-10', 0, 'Columbus', 100, 'eleifend vitae, erat. Vivamus nisi. Mauris nulla. Integer urna. Vivamus molestie dapibus', 'sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Aenean eget magna. Suspendisse tristique neque venenatis lacus. Etiam bibendum fermentum metus. Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies sem magna nec quam.', 'cheffe à domicile'),
(81, '2019-12-25', 0, 'Grand Rapids', 44, 'nec, euismod in, dolor. Fusce feugiat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aliquam auctor, velit eget laoreet posuere,', 'Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet lobortis, nisi nibh', 'cheffe à domicile'),
(82, '2020-12-18', 0, 'Falerone', 30, 'eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu,', 'semper cursus. Integer mollis. Integer tincidunt aliquam arcu. Aliquam ultrices iaculis odio. Nam interdum enim non nisi. Aenean eget metus. In nec orci. Donec nibh. Quisque nonummy ipsum non arcu. Vivamus sit amet risus. Donec egestas. Aliquam nec enim. Nunc ut erat. Sed nunc', 'atelier cuisine'),
(83, '2021-01-01', 0, 'Whyalla', 145, 'libero nec ligula consectetuer rhoncus. Nullam velit dui, semper et, lacinia vitae, sodales at, velit. Pellentesque', 'orci luctus et ultrices posuere cubilia Curae; Phasellus ornare. Fusce mollis. Duis sit amet diam eu dolor egestas rhoncus. Proin nisl', 'cheffe à domicile'),
(84, '2020-04-16', 0, 'Cuddapah', 133, 'massa non ante bibendum ullamcorper. Duis cursus, diam at pretium aliquet, metus urna convallis erat, eget', 'enim consequat purus. Maecenas libero est, congue a, aliquet vel,', 'atelier cuisine'),
(85, '2020-08-15', 0, 'Herfelingen', 37, 'Nunc commodo auctor velit. Aliquam nisl. Nulla eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec', 'sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec, malesuada ut, sem.', 'atelier cuisine'),
(86, '2019-12-09', 0, 'Sonnino', 121, 'Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in consectetuer', 'libero. Donec consectetuer mauris id sapien. Cras dolor dolor, tempus non, lacinia at,', 'cheffe à domicile'),
(87, '2019-12-09', 0, 'La Seyne-sur-Mer', 82, 'semper. Nam tempor diam dictum sapien. Aenean massa. Integer vitae nibh. Donec est', 'luctus. Curabitur egestas nunc sed libero. Proin sed turpis nec mauris blandit mattis. Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum', 'cheffe à domicile'),
(88, '2021-09-17', 0, 'Mandya', 15, 'enim diam vel arcu. Curabitur ut odio vel est', 'neque. Morbi quis urna. Nunc quis arcu vel quam dignissim pharetra. Nam ac nulla. In tincidunt congue turpis. In condimentum. Donec at arcu. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Donec tincidunt. Donec vitae erat vel pede blandit congue.', 'atelier cuisine'),
(89, '2020-10-13', 0, 'South Burlington', 138, 'placerat, augue. Sed molestie. Sed id', 'quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at sem molestie sodales. Mauris blandit enim consequat purus. Maecenas libero est, congue a, aliquet vel, vulputate eu, odio. Phasellus at augue id ante dictum cursus. Nunc mauris elit, dictum eu, eleifend nec,', 'cheffe à domicile'),
(90, '2019-12-13', 0, 'Elbląg', 72, 'lorem ipsum sodales purus, in molestie tortor nibh sit amet orci. Ut sagittis', 'Sed id risus quis diam luctus lobortis. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos hymenaeos. Mauris ut quam vel sapien imperdiet ornare.', 'cheffe à domicile'),
(91, '2021-05-01', 0, 'Huancayo', 19, 'eu neque pellentesque massa lobortis ultrices. Vivamus rhoncus. Donec est. Nunc ullamcorper, velit in aliquet', 'ac mattis velit justo nec ante. Maecenas mi felis, adipiscing fringilla, porttitor vulputate, posuere vulputate, lacus. Cras interdum. Nunc sollicitudin commodo ipsum. Suspendisse non leo. Vivamus nibh dolor, nonummy ac, feugiat non, lobortis quis, pede. Suspendisse dui. Fusce diam nunc, ullamcorper eu, euismod ac, fermentum vel, mauris. Integer sem', 'cheffe à domicile'),
(92, '2021-03-14', 0, 'Borghetto di Vara', 112, 'amet, consectetuer adipiscing elit. Aliquam auctor, velit eget laoreet posuere, enim nisl elementum', 'dolor. Quisque tincidunt pede ac urna. Ut tincidunt vehicula risus. Nulla eget metus eu erat semper rutrum. Fusce dolor quam, elementum at, egestas a, scelerisque sed, sapien. Nunc pulvinar arcu', 'atelier cuisine'),
(93, '2020-02-01', 0, 'Yopal', 139, 'Mauris quis turpis vitae purus gravida sagittis. Duis gravida. Praesent eu nulla at', 'Suspendisse aliquet molestie tellus. Aenean egestas hendrerit neque. In ornare sagittis felis. Donec tempor, est ac mattis semper, dui lectus rutrum urna, nec luctus felis purus ac tellus. Suspendisse sed dolor.', 'atelier cuisine'),
(94, '2020-06-21', 0, 'Kędzierzyn-Koźle', 94, 'vitae, aliquet nec, imperdiet nec, leo. Morbi neque tellus, imperdiet non, vestibulum nec, euismod in, dolor. Fusce feugiat.', 'laoreet ipsum. Curabitur consequat, lectus sit amet luctus vulputate, nisi sem semper erat, in', 'cheffe à domicile'),
(95, '2020-03-21', 0, 'Kapolei', 141, 'orci quis lectus. Nullam suscipit, est ac facilisis facilisis, magna tellus faucibus leo, in lobortis tellus justo', 'elit, pellentesque a, facilisis non, bibendum sed, est. Nunc laoreet lectus quis massa. Mauris vestibulum, neque sed dictum eleifend, nunc risus varius orci, in consequat enim diam vel arcu. Curabitur ut odio vel est tempor bibendum. Donec felis orci, adipiscing non, luctus sit amet,', 'cheffe à domicile'),
(96, '2020-01-20', 0, 'Donstiennes', 140, 'Suspendisse sed dolor. Fusce mi lorem, vehicula et, rutrum eu, ultrices sit amet, risus. Donec nibh', 'interdum feugiat. Sed nec metus facilisis lorem tristique aliquet. Phasellus fermentum convallis ligula.', 'atelier cuisine'),
(97, '2021-01-09', 0, 'Kotlas', 11, 'ac turpis egestas. Fusce aliquet magna a neque. Nullam ut nisi a odio', 'Aenean sed pede nec ante blandit viverra. Donec tempus, lorem fringilla ornare placerat, orci lacus vestibulum lorem, sit amet ultricies', 'cheffe à domicile'),
(98, '2021-06-24', 0, 'Pukekohe', 59, 'odio. Phasellus at augue id ante', 'Cras eget nisi dictum augue malesuada malesuada. Integer id magna et ipsum cursus vestibulum. Mauris magna. Duis dignissim tempor arcu. Vestibulum ut eros non enim commodo hendrerit. Donec porttitor tellus non magna. Nam ligula elit, pretium', 'atelier cuisine'),
(99, '2021-02-18', 0, 'South Portland', 47, 'primis in faucibus orci luctus et ultrices', 'Aliquam rutrum lorem ac risus. Morbi metus. Vivamus euismod urna. Nullam lobortis quam a felis ullamcorper viverra. Maecenas iaculis aliquet diam. Sed diam lorem, auctor quis, tristique ac, eleifend vitae, erat. Vivamus', 'cheffe à domicile'),
(100, '2020-08-23', 0, 'Knokke-Heist', 136, 'at, libero. Morbi accumsan laoreet ipsum. Curabitur consequat, lectus sit amet luctus', 'laoreet, libero et tristique pellentesque, tellus sem mollis dui, in sodales elit erat vitae risus. Duis a mi fringilla mi lacinia mattis. Integer eu lacus. Quisque imperdiet, erat nonummy ultricies ornare, elit elit fermentum risus, at fringilla', 'atelier cuisine'),
(218, '2020-11-14', 80, 'Amiens', 2, 'test', 'Test', 'Cheffe à domicile'),
(219, '2020-11-14', 80, 'Amiens', 2, 'test', 'Test sans certaines valeur', 'Atelier culinaire'),
(220, '2020-11-14', 80, 'Amiens', 2, 'test', 'Test ajout photo dans mon dossier perso', 'Atelier culinaire'),
(221, '2020-11-14', 80, 'Amiens', 2, 'test', 'Test ajout photo dans mon dossier perso', 'Atelier culinaire'),
(222, '2020-11-16', 80, 'Amiens', 2, 'Test avec photo', 'Test du unset', 'Cheffe à domicile'),
(223, '2020-11-16', 80, 'Amiens', 2, 'Test avec photo', 'Test du unset', 'Atelier culinaire'),
(224, '2020-11-16', 80, 'Amiens', 2, 'Test avec photo', 'Test de l\'upload de la photo', 'Cheffe à domicile'),
(225, '2020-11-16', 80, 'Amiens', 2, 'Test avec photo', 'Test de l\'upload de la photo', 'Cheffe à domicile'),
(226, '2020-11-16', 80, 'Amiens', 2, 'Test avec photo', 'Test de l\'upload de la photo', 'Cheffe à domicile'),
(227, '2020-11-16', 80, 'Amiens', 2, 'Test avec photo', 'var_dump du unset', 'Atelier culinaire'),
(228, '2020-11-16', 80, 'Amiens', 2, 'Test avec photo', 'Test de l\'upload de la photo', 'Cheffe à domicile'),
(229, '2020-11-16', 80, 'Amiens', 2, 'Test avec photo', 'Test en corrigeant certains aspects du code', 'Atelier culinaire');

-- --------------------------------------------------------

--
-- Structure de la table `Site`
--

CREATE TABLE `Site` (
  `site_id` int NOT NULL,
  `site_nom` varchar(255) NOT NULL,
  `site_url` varchar(50) NOT NULL,
  `site_description` text NOT NULL,
  `site_logo` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `site_status` varchar(50) DEFAULT NULL,
  `site_siege_social` text,
  `site_siret` varchar(50) DEFAULT NULL,
  `site_mentions_legales` text NOT NULL,
  `site_rgpd` text NOT NULL,
  `site_mode_diapo` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Site`
--

INSERT INTO `Site` (`site_id`, `site_nom`, `site_url`, `site_description`, `site_logo`, `site_status`, `site_siege_social`, `site_siret`, `site_mentions_legales`, `site_rgpd`, `site_mode_diapo`) VALUES
(1, 'kreyol\'n\'co', 'www.kreyol-and-co.fr', 'Laissez vous tenter par une escale exotique gourmande, dans votre cuisine, avec la cheffe à domicile Katia DESPREZ , finaliste des Trophées des Chefs Ultramarins Coordinatrice du Cercle Gastronomique des jeunes Chefs Créole et  Toque Française !\r\n\r\nKréyol & Co, nouveau concept original de cuisine des Outremers et des Caraibes à domicile, vous fera découvrir de nouvelles saveurs, épicées, exotiques et ô combien originales.\r\n\r\nL\'objectif, vous faire plaisir !\r\n\r\nAlors laissez vous tenter, et découvrez tout ce que peut vous proposer Kréyol & Co !\r\n\r\nN\'hésitez pas à me contacter au (+33) 7.88.06.29.23 ou m\'envoyer un mail  à katiadesprez@gmail.com', 'assets\\images\\toques\\toque.png', 'micro-entreprise', '6 RUE ARNAUD BISSON 02100 SAINT-QUENTIN', '78876122900038', 'Conditions Générales de vente Chef à domicile\r\n\r\n1 - Tarifs\r\nLes prix figurant sur le site s’entendent toutes taxes comprises. Les prix sont libellés en euros (€) et sont applicables exclusivement aux particuliers résidant en France.\r\n\r\nKréyol & Co accepte les chèques et les espèces et les virements bancaires uniquement :\r\nLes chèques en euros libellés à l’ordre de Katia DESPREZ\r\nEt les espèces en euros uniquement.\r\n\r\n2- Prise de commande\r\nIl est nécessaire de réserver au moins 1 ou 2 semaines  à l\'avance. De façon à toujours mieux vous satisfaire, nous vous suggérons d’effectuer votre réservation le plus tôt possible.  Afin de garantir la qualité et la fraîcheur des produits proposés, Katia DESPREZ reste tributaire du marché et peut donc être amené à modifier ses menus ou sa carte.\r\n\r\n3 - Modalités de paiement\r\nLes conditions de facturation sont les suivantes:\r\nLes tarifs confirmés sur le devis sont fermes à la date du devis. .\r\nLe nombre exact de participants doit nous être confirmé au minimum 5 jours avant la date de la réception. Ce nombre sera retenu comme base de facturation.\r\nLe versement d’un acompte à hauteur de 40 % du montant prévu de la facture sera demandé à la confirmation de la réservation.\r\nLe règlement du solde de la facture s’effectuera le jour de la prestation.\r\n\r\n4 - Prestation\r\n\r\nKatia DESPREZ s’engage à prendre en charge la préparation d’un repas pour (nombre de convives) au domicile ou la salle (du client/particulier,comité d\'entreprise).\r\nLe prix comprend les courses, toutes les préparations culinaires, et bien sûr le rangement de votre cuisine.\r\n\r\nLa prestation ne comprend pas la location de vaisselle, le mobilier ainsi que les boissons.\r\n\r\nNéanmoins en fonction des demandes, le nappage et la décoration de table, ainsi que la dégustation de boissons tel que rhums, liqueurs, cocktails, pourront être proposés en supplément.\r\n\r\nLes locaux (cuisine) doivent être mis à disposition avant le début du repas selon un temps défini avec le client lors de la réalisation du devis de confirmation de réservation.\r\nLa cuisine doit être propre, en ordre. Un espace devra être libéré dans le réfrigérateur et le congélateur en fonction de la prestation, de façon à stocker la marchandise .\r\n\r\n5-Annulation\r\nEn cas d’annulation de la prestation, une indemnité calculée sur le montant de la prestation sera retenue : avant quatre semaines de la date de réception le montant des acomptes sera remboursé ; entre quatre et une semaine, 50% de l\'acompte sera remboursé ; 1 semaine et moins avant la date de réception, les montant de l\'acompte sera conservé. A moins de 24 heures : il sera réclamé la totalité du devis, à titre d’indemnité (selon réservation préalablement enregistrée).\r\n\r\n6 - Réclamations\r\nToute réclamation ou contestation concernant la facturation ne pourra être prise en compte au-delà d’un délai de 7 jours après la date de facturation. Katia DESPREZ engage sa responsabilité civile sur les prestations qu’elle facture. Tout événement extérieur de force majeure, accident, grève générale ou particulière dégage la responsabilité de la société Kréyol & Co du contrat de vente.\r\n\r\n7    Droits d\'auteurs et propriété intellectuelle\r\nCe site constitue une œuvre protégée au titre de la propriété intellectuelle, au même titre que la structure générale du site, le graphisme ainsi que les éléments accessibles sur le site (formulaires, textes, photographies, images...).\r\nSauf autorisation écrite préalable de la société de Katia DESPREZ Kréyol & Co, le site et les informations qui y figurent ne peuvent être copiés, reproduits, modifiés, transmis, publiés sur quelques supports que ce soit, ni exploités en tout ou partie à des fins commerciales ou non commerciales, ni servir à la réalisation d\'œuvres dérivées.\r\n\r\nLe non respect de ces règles peut engager la responsabilité de l\'Internaute au sens des articles L. 713-2 et L.713-3 du Code de la Propriété Intellectuelle.\r\n\r\n8- Forfait kilométrique\r\n\r\nLa société Kréyol & Co dessert toutes les communes de guyane\r\nUn forfait kilométrique au delà de 70km sera appliqué en fonction du barême en vigueur. (impotgouv.fr)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla eu lacinia odio. Integer dictum vulputate leo, vitae sollicitudin justo finibus nec. Fusce erat felis, varius et aliquam id, sodales non dui. Duis eget nisi id sem porta luctus. Fusce scelerisque sollicitudin porta. Aliquam placerat, enim et consectetur pellentesque, massa erat ultrices ante, sed euismod urna ex eu justo. Curabitur ornare justo urna, eu tincidunt lacus pretium id. Etiam vehicula enim eget ipsum dapibus, ut tincidunt metus placerat. Donec ac congue nunc, quis hendrerit risus. Phasellus vulputate non dolor mollis aliquam.', NULL);

-- --------------------------------------------------------

--
-- Structure de la table `Tache`
--

CREATE TABLE `Tache` (
  `tac_id` int NOT NULL,
  `tac_description` text NOT NULL,
  `tac_exp_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `Utilisateur`
--

CREATE TABLE `Utilisateur` (
  `util_id` int NOT NULL,
  `util_nom` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `util_prenom` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `util_telephone` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `util_mail` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `util_login` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `util_mdp` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `util_rol_id` int NOT NULL,
  `util_site_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `Utilisateur`
--

INSERT INTO `Utilisateur` (`util_id`, `util_nom`, `util_prenom`, `util_telephone`, `util_mail`, `util_login`, `util_mdp`, `util_rol_id`, `util_site_id`) VALUES
(4, 'Dave', 'loper', '0100011001', 'daveloper@hotmail.fr', 'DL', 'ab4f63f9ac65152575886860dde480a1', 1, 1),
(5, 'Admin', 'astier', '1110001001', 'adminastier@hotmail.fr', 'AS', 'ab4f63f9ac65152575886860dde480a1', 2, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `Article`
--
ALTER TABLE `Article`
  ADD PRIMARY KEY (`art_id`);

--
-- Index pour la table `Cheffe`
--
ALTER TABLE `Cheffe`
  ADD PRIMARY KEY (`che_id`);

--
-- Index pour la table `Client`
--
ALTER TABLE `Client`
  ADD PRIMARY KEY (`cli_id`);

--
-- Index pour la table `Composer`
--
ALTER TABLE `Composer`
  ADD PRIMARY KEY (`com_rol_id`,`com_pri_id`),
  ADD KEY `com_pri_id` (`com_pri_id`);

--
-- Index pour la table `Diaporama`
--
ALTER TABLE `Diaporama`
  ADD PRIMARY KEY (`gal_id`);

--
-- Index pour la table `Evenement`
--
ALTER TABLE `Evenement`
  ADD PRIMARY KEY (`eve_id`),
  ADD KEY `eve_che_id` (`eve_che_id`);

--
-- Index pour la table `Media`
--
ALTER TABLE `Media`
  ADD PRIMARY KEY (`med_id`),
  ADD KEY `med_eve_id` (`med_eve_id`),
  ADD KEY `med_ser_id` (`med_ser_id`);

--
-- Index pour la table `Palmares`
--
ALTER TABLE `Palmares`
  ADD PRIMARY KEY (`pal_id`),
  ADD KEY `pal_che_id` (`pal_che_id`);

--
-- Index pour la table `Parcours`
--
ALTER TABLE `Parcours`
  ADD PRIMARY KEY (`exp_id`),
  ADD KEY `exp_che_id` (`exp_che_id`);

--
-- Index pour la table `Presenter`
--
ALTER TABLE `Presenter`
  ADD PRIMARY KEY (`pres_ser_id`,`pres_gal_id`),
  ADD KEY `pres_gal_id` (`pres_gal_id`);

--
-- Index pour la table `Presenter2`
--
ALTER TABLE `Presenter2`
  ADD PRIMARY KEY (`pres_art_id`,`pres_gal_id`),
  ADD KEY `pres_gal_id` (`pres_gal_id`);

--
-- Index pour la table `Presenter3`
--
ALTER TABLE `Presenter3`
  ADD PRIMARY KEY (`pres_med_id`,`pres_gal_id`),
  ADD KEY `pres_gal_id` (`pres_gal_id`);

--
-- Index pour la table `Presenter4`
--
ALTER TABLE `Presenter4`
  ADD PRIMARY KEY (`pres_eve_id`,`pres_gal_id`),
  ADD KEY `pres_gal_id` (`pres_gal_id`);

--
-- Index pour la table `Privilege`
--
ALTER TABLE `Privilege`
  ADD PRIMARY KEY (`pri_id`);

--
-- Index pour la table `Professionnel`
--
ALTER TABLE `Professionnel`
  ADD PRIMARY KEY (`pro_id`);

--
-- Index pour la table `Reseau_sociaux`
--
ALTER TABLE `Reseau_sociaux`
  ADD PRIMARY KEY (`res_id`);

--
-- Index pour la table `Reservation`
--
ALTER TABLE `Reservation`
  ADD PRIMARY KEY (`res_id`),
  ADD KEY `res_ser_id` (`res_ser_id`),
  ADD KEY `res_cli_id` (`res_cli_id`);

--
-- Index pour la table `Role`
--
ALTER TABLE `Role`
  ADD PRIMARY KEY (`rol_id`);

--
-- Index pour la table `Service`
--
ALTER TABLE `Service`
  ADD PRIMARY KEY (`ser_id`);

--
-- Index pour la table `Site`
--
ALTER TABLE `Site`
  ADD PRIMARY KEY (`site_id`);

--
-- Index pour la table `Tache`
--
ALTER TABLE `Tache`
  ADD PRIMARY KEY (`tac_id`),
  ADD KEY `tac_exp_id` (`tac_exp_id`);

--
-- Index pour la table `Utilisateur`
--
ALTER TABLE `Utilisateur`
  ADD PRIMARY KEY (`util_id`),
  ADD KEY `adm_rol_id` (`util_rol_id`),
  ADD KEY `adm_site_id` (`util_site_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `Article`
--
ALTER TABLE `Article`
  MODIFY `art_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Cheffe`
--
ALTER TABLE `Cheffe`
  MODIFY `che_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `Client`
--
ALTER TABLE `Client`
  MODIFY `cli_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=114;

--
-- AUTO_INCREMENT pour la table `Diaporama`
--
ALTER TABLE `Diaporama`
  MODIFY `gal_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Evenement`
--
ALTER TABLE `Evenement`
  MODIFY `eve_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Media`
--
ALTER TABLE `Media`
  MODIFY `med_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT pour la table `Palmares`
--
ALTER TABLE `Palmares`
  MODIFY `pal_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Parcours`
--
ALTER TABLE `Parcours`
  MODIFY `exp_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Privilege`
--
ALTER TABLE `Privilege`
  MODIFY `pri_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Professionnel`
--
ALTER TABLE `Professionnel`
  MODIFY `pro_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `Reseau_sociaux`
--
ALTER TABLE `Reseau_sociaux`
  MODIFY `res_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Reservation`
--
ALTER TABLE `Reservation`
  MODIFY `res_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Role`
--
ALTER TABLE `Role`
  MODIFY `rol_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `Service`
--
ALTER TABLE `Service`
  MODIFY `ser_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=230;

--
-- AUTO_INCREMENT pour la table `Site`
--
ALTER TABLE `Site`
  MODIFY `site_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `Tache`
--
ALTER TABLE `Tache`
  MODIFY `tac_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `Utilisateur`
--
ALTER TABLE `Utilisateur`
  MODIFY `util_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `Composer`
--
ALTER TABLE `Composer`
  ADD CONSTRAINT `Composer_ibfk_1` FOREIGN KEY (`com_rol_id`) REFERENCES `Role` (`rol_id`),
  ADD CONSTRAINT `Composer_ibfk_2` FOREIGN KEY (`com_pri_id`) REFERENCES `Privilege` (`pri_id`);

--
-- Contraintes pour la table `Evenement`
--
ALTER TABLE `Evenement`
  ADD CONSTRAINT `Evenement_ibfk_1` FOREIGN KEY (`eve_che_id`) REFERENCES `Cheffe` (`che_id`);

--
-- Contraintes pour la table `Media`
--
ALTER TABLE `Media`
  ADD CONSTRAINT `Media_ibfk_1` FOREIGN KEY (`med_eve_id`) REFERENCES `Evenement` (`eve_id`),
  ADD CONSTRAINT `Media_ibfk_2` FOREIGN KEY (`med_ser_id`) REFERENCES `Service` (`ser_id`);

--
-- Contraintes pour la table `Palmares`
--
ALTER TABLE `Palmares`
  ADD CONSTRAINT `Palmares_ibfk_1` FOREIGN KEY (`pal_che_id`) REFERENCES `Cheffe` (`che_id`);

--
-- Contraintes pour la table `Parcours`
--
ALTER TABLE `Parcours`
  ADD CONSTRAINT `Parcours_ibfk_1` FOREIGN KEY (`exp_che_id`) REFERENCES `Cheffe` (`che_id`);

--
-- Contraintes pour la table `Presenter`
--
ALTER TABLE `Presenter`
  ADD CONSTRAINT `Presenter_ibfk_1` FOREIGN KEY (`pres_ser_id`) REFERENCES `Service` (`ser_id`),
  ADD CONSTRAINT `Presenter_ibfk_2` FOREIGN KEY (`pres_gal_id`) REFERENCES `Diaporama` (`gal_id`);

--
-- Contraintes pour la table `Presenter2`
--
ALTER TABLE `Presenter2`
  ADD CONSTRAINT `Presenter2_ibfk_1` FOREIGN KEY (`pres_art_id`) REFERENCES `Article` (`art_id`),
  ADD CONSTRAINT `Presenter2_ibfk_2` FOREIGN KEY (`pres_gal_id`) REFERENCES `Diaporama` (`gal_id`);

--
-- Contraintes pour la table `Presenter3`
--
ALTER TABLE `Presenter3`
  ADD CONSTRAINT `Presenter3_ibfk_1` FOREIGN KEY (`pres_med_id`) REFERENCES `Media` (`med_id`),
  ADD CONSTRAINT `Presenter3_ibfk_2` FOREIGN KEY (`pres_gal_id`) REFERENCES `Diaporama` (`gal_id`);

--
-- Contraintes pour la table `Presenter4`
--
ALTER TABLE `Presenter4`
  ADD CONSTRAINT `Presenter4_ibfk_1` FOREIGN KEY (`pres_eve_id`) REFERENCES `Evenement` (`eve_id`),
  ADD CONSTRAINT `Presenter4_ibfk_2` FOREIGN KEY (`pres_gal_id`) REFERENCES `Diaporama` (`gal_id`);

--
-- Contraintes pour la table `Reservation`
--
ALTER TABLE `Reservation`
  ADD CONSTRAINT `Reservation_ibfk_1` FOREIGN KEY (`res_ser_id`) REFERENCES `Service` (`ser_id`),
  ADD CONSTRAINT `Reservation_ibfk_2` FOREIGN KEY (`res_cli_id`) REFERENCES `Client` (`cli_id`);

--
-- Contraintes pour la table `Tache`
--
ALTER TABLE `Tache`
  ADD CONSTRAINT `Tache_ibfk_1` FOREIGN KEY (`tac_exp_id`) REFERENCES `Parcours` (`exp_id`);

--
-- Contraintes pour la table `Utilisateur`
--
ALTER TABLE `Utilisateur`
  ADD CONSTRAINT `Utilisateur_ibfk_1` FOREIGN KEY (`util_rol_id`) REFERENCES `Role` (`rol_id`),
  ADD CONSTRAINT `Utilisateur_ibfk_2` FOREIGN KEY (`util_site_id`) REFERENCES `Site` (`site_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
