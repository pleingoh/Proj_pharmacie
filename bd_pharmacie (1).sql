-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Lun 29 Janvier 2018 à 15:41
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `bd_pharmacie`
--

-- --------------------------------------------------------

--
-- Structure de la table `commune`
--

CREATE TABLE IF NOT EXISTS `commune` (
  `id` int(2) DEFAULT NULL,
  `nom_commune` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `commune`
--

INSERT INTO `commune` (`id`, `nom_commune`) VALUES
(1, 'Abobo'),
(2, 'Adjamé'),
(3, 'Anyama'),
(4, 'Attécoubé'),
(5, 'Bingerville'),
(6, 'Cocody'),
(7, 'Koumassi'),
(8, 'Marcory'),
(9, 'Plateau'),
(10, 'Port-Bouët'),
(11, 'Songon'),
(12, 'Treichville'),
(13, 'Yopougon');

-- --------------------------------------------------------

--
-- Structure de la table `pharmacie`
--

CREATE TABLE IF NOT EXISTS `pharmacie` (
  `id` int(3) DEFAULT NULL,
  `nom_pharma` varchar(55) DEFAULT NULL,
  `contact` varchar(11) DEFAULT NULL,
  `localisation` varchar(57) DEFAULT NULL,
  `id_commune` int(2) DEFAULT NULL,
  `id_ville` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `pharmacie`
--

INSERT INTO `pharmacie` (`id`, `nom_pharma`, `contact`, `localisation`, `id_commune`, `id_ville`) VALUES
(1, 'PHARMACIE DE LA CITE', '24 39 03 33', 'Dans le marché entre les 2 cités universitaire', 1, 1),
(2, 'PHARMACIE AMINA', '24 39 95 65', 'Près de la maternité Amina', 1, 1),
(3, 'PHARMACIE SAINTE CROIX', '24 39 36 73', 'Abobo route BC, face camp commando', 1, 1),
(4, 'PHARMACIE AVOCATIER', '24 49 70 27', 'MARCHE Avocatier marché', 1, 1),
(5, 'PHARMACIE ABOBO-TE', '24 39 69 87', 'Route du zoo carref. Aboboté', 1, 1),
(6, 'PHARMACIE DE LA ME', '24 39 01 18', 'Sur la grande voie, après carrefour mairie', 1, 1),
(7, 'PHARMACIE KANN''SY', '24 39 12 51', 'Quartier Kenedy face mosqué', 1, 1),
(8, 'PHARMACIE REBOUL', '20 37 99 98', 'Av Reboul Montée des pompiers', 2, 1),
(9, 'PHARMACIE GBEDE', '20 37 71 58', 'BVD Nangui Abrogoua face foire de chine', 2, 1),
(10, 'PHARMACIE AGBAN', '20 37 23 30', 'CARREFOUR AGBAN VILLAGE', 2, 1),
(11, 'PHARMACIE SAINT EMMANUEL', '20 37 98 27', 'Face Mirador', 2, 1),
(12, 'PHARMACIE SARAH', '20 39 03 57', 'Centre ccial. Carine''N couture', 2, 1),
(13, 'PHARMACIE DU FORUM', '20 38 13 64', 'A l''interieur du forum des marchés', 2, 1),
(14, 'PHARMACIE ROEDDENDT', '20 37 98 33', 'Face au centre Anti Tuberculeux', 2, 1),
(15, 'PHARMACIE DES II PLATEAUX', '22 41 36 04', 'II Plateaux Bd des Martyrs', 6, 1),
(16, 'PHARMACIE DES HALLES', '22 41 92 94', 'Cocody II PLATEAUX', 6, 1),
(17, 'PHARMACIE SAINT ATHANASE', '22 43 55 87', 'Riviera', 6, 1),
(18, 'PHARMACIE DU BIEN ETRE', '22 50 80 80', 'ANGRE 8ème tranche', 6, 1),
(19, 'PHARMACIE LYCEE TECHNIQUE', '22 44 60 77', 'Sur la montée du Lycée Technique', 6, 1),
(20, 'PHARMACIE LES 7 COLONNES', '22 44 02 96', 'Carrefour RTI', 6, 1),
(21, 'PHARMACIE DE COCODY', '22 44 24 95', 'Cocody non loin de l''alocodrome', 6, 1),
(22, 'PHARMACIE ARC EN CIEL', '22 41 33 90', 'II Plateaux Rue des Jardins', 6, 1),
(23, 'PHARMACIE DES ARTS', '22 44 95 67', 'Centre commercial cité des arts', 6, 1),
(24, 'PHARMACIE SAINT DOMINIQUE', '22 48 79 89', 'Face Lycée Mermoz', 6, 1),
(25, 'PHARMACIE ANGRE', '22 42 43 19', 'ANGRE près du 22ème arrondissement', 6, 1),
(26, 'PHARMACIE DU VALLON', '22 41 54 44', 'centre commercial du vallon', 6, 1),
(27, 'PHARMACIE DE BLOCKHAUSS', '22 48 68 91', 'Quartier blockhauss', 6, 1),
(28, 'PHARMACIE ESPACE SANTE', '22 41 21 03', 'Bd latrille carrefour Duncan', 6, 1),
(29, 'PHARMACIE LATRILLE', '22 41 03 68', 'Boulevard latrille, face à l''ENA', 6, 1),
(30, 'PHARMACIE DU MARAIS', '21 36 06 99', 'Près de la cité SIR qtier DIVO', 7, 1),
(31, 'PHARMACIE SAINT GEORGES', '21 36 03 75', 'Près du camp commando de Koumassi', 7, 1),
(32, 'PHARMACIE DU CAMPEMENT', '21 36 18 91', 'Carrefour Campement', 7, 1),
(33, 'PHARMACIE SAINT LOUIS Koumassi,', '21 36 04 15', 'bd du cameroun', 7, 1),
(34, 'PHARMACIE KAHIRA', '21 36 39 84', 'Bd du cameroun à coté texaco', 7, 1),
(35, 'PHARMACIE LES REMBLAIS', '21 26 25 40', 'Marcory Alliodan, face au commissariat du 26è', 8, 1),
(36, 'PHARMACIE DU BOULEVARD DE MARSEILLE', '21 25 76 25', 'Station shell face lonaci', 8, 1),
(37, 'PHARMACIE DE LA GALERIE', '21 24 28 41', 'Galerie CAP SUD', 8, 1),
(38, 'PHARMACIE ELITE', '21 35 11 19', 'Bvd Giscard d''Estaing', 8, 1),
(39, 'PHARMACIE T.S.F', '21 26 78 12', 'Face commissariat Marcory', 8, 1),
(40, 'PHARMACIE DE LA ZONE 3', '21 35 13 15', 'Carrefour patisserie Abidjanaise', 8, 1),
(41, 'NOUVELLE PHARMACIE PERGOLA', '21 24 48 27', 'Zone 4 Hotel pergola', 8, 1),
(42, 'PHARMACIE MALON', '21 27 96 14', 'port bouet 1er carrefour', 10, 1),
(43, 'PHARMACIE BALNEAIRE', '21 58 07 09', 'Face au 43ème Bima', 10, 1),
(44, 'PHARMACIE ATLANTIQUE', '21 27 95 00', 'Port bouet marché de nuit', 10, 1),
(45, 'PHARMACIE BALTIQUE', '21 27 66 71', 'En face de l''abattoir', 10, 1),
(46, 'PHARMACIE ROUTE BASSAM', '21 58 63 54', 'Adjoufou ,marché avant barrage de police route adjouffou', 10, 1),
(47, 'PHARMACIE ELOMA GONZAGUEVILLE', '21 58 60 28', NULL, 10, 1),
(48, 'PHARMACIE DE L''OCEAN', '21 27 78 48', 'Quartier sogefhia siporex', 10, 1),
(49, 'PHARMACIE LE JOURDAIN', '23 46 07 10', 'NIANGON', 13, 1),
(50, 'GRANDE PHARMACIE DU PROGRES', '23 46 59 02', NULL, 13, 1),
(51, 'Yopougon Maroc', NULL, 'à 50 m de la station petroci T', 13, 1),
(52, 'PHARMACIE SAINT ETIENNE', '23 52 44 44', 'ABOBO DOUME', 13, 1),
(53, 'PHARMACIE DU MARCHE', '23 45 24 70', 'YOPOUGON MARCHE SICOGI', 13, 1),
(54, 'PHARMACIE CHIGATA', '23 52 93 58', 'Face CAMP MILITAIRE', 13, 1),
(55, 'PHARMACIE ROXANNE', '23 45 70 75', 'Carrefour CIE route de NIANGON', 13, 1),
(56, 'PHARMACIE ARTEMIA', '23 52 38 54', 'Face palais de justice', 13, 1),
(57, 'PHARMACIE DU LAVAGE', '23 50 25 40', 'Près du lavage vers Saint André', 13, 1),
(58, 'PHARMACIE TEREZA', '23 50 88 56', 'Yopougon sogephia magasin', 13, 1),
(59, 'PHARMACIE SAINT MARTIN', '23 51 96 46', 'Sideci route terminus 42', 13, 1),
(60, 'PHARMACIE ESTHER', '23 46 39 36', 'Yopougon Niangon à droite', 13, 1),
(61, 'PHARMACIE JEAN PIERRE', '23 46 38 03', 'Yopougon Niangon sud à droite - carrefour JATAK', 13, 1),
(62, 'PHARMACIE CELIA', '23 45 62 34', 'Route de Dabou', 13, 1),
(63, 'PHARMACIE KENEYA', '23 45 44 65', 'Carrefour Keneya', 13, 1),
(64, 'NOUVELLE PHARMACIE', '23 45 16 93', 'TOIT ROUGE Toit rouge non loin de la poste', 13, 1),
(65, 'PHARMACIE ANANERAIE', '23 50 87 32', 'yop ananeraie', 13, 1),
(66, 'PHARMACIE BAÏTY', '23 51 77 98', 'Entre BAE et Escadron de gendarmerie', 13, 1),
(67, 'PHARMACIE BEYNIOUAH', '23 46 0102', 'Niangon sud ,à gauche', 13, 1),
(68, 'PHARMACIE CHE N''TALE', '23 52 62 03', 'Yop ananeraie, carrefour Guichanrolain', 13, 1),
(69, 'PHARMACIE DE L''ANTENNE YOP', '23 50 15 27', 'face CITELCOM', 13, 1),
(70, 'PHARMACIE LES PHALENES', '23 46 01 71', 'Niangon sud, pres de la paroisse SaintPierre', 13, 1),
(71, 'PHARMACIE CHENAIN', '23 50 13 91', 'Route Abobo Doumé', 13, 1),
(72, 'PHARMACIE AVENUE 21', '21 24 83 46', 'Avenue 21', 12, 1),
(73, 'PHARMACIE BELLEVILLE', '21 25 09 32', 'Quartier Belleville, face maquis notre dame', 12, 1),
(74, 'PHARMACIE DES BRASSEURS', '21 35 31 51', 'Carrefour du CHU de Treichville', 12, 1),
(75, 'PHARMACIE DES QUAIS', '21 24 04 94', 'Face aux grds moulins d''Abidjan', 12, 1),
(76, 'PHARMACIE DU ROND POINT Carrefour du CHU de Treichville', '21 35 73 03', 'Carrefour du CHU de Treichville', 12, 1),
(77, 'PHARMACIE ALPHA 16', '21 25 88 80', 'Avenue 16 près de TREICHOTEL', 12, 1),
(78, 'PHARMACIE DU LONGCHAMP', '20 22 75 98', 'Immeuble LONGCHAMP', 9, 1),
(79, 'PHARMACIE DES FINANCES', '20 30 39 50', 'Face cité financière', 9, 1),
(80, 'NOUVELLE PHARMACIE DES BANQUES', '20 32 94 12', 'Rue des banques contigue ex air afrique', 9, 1),
(81, 'GRANDE PHARMACIE BEL-FAM', '20 33 03 30', 'Face MTN', 9, 1),
(82, 'PHARMACIE ANIAMAN', '20 32 12 29', 'Face de la chambre de l''agriculture', 9, 1),
(83, 'PHARMACIE MAZUET', '20 32 96 64', 'Rue du commerce coté gare sud', 9, 1),
(84, 'PHARMACIE BOULEVARD CARDE', '20 21 01 08', 'Bd carde face cercle du rail', 9, 1),
(85, 'PHARMACIE DE LA GRACE', NULL, NULL, NULL, 26),
(86, 'PHARMACIE DE DIMBOKRO', '30 62 50 10', NULL, NULL, 26),
(87, 'PHARMACIE SAINT SYLVESTRE', '22 40 27 88', NULL, NULL, 20),
(88, 'PHARMACIE PRINCIPALE', '22 40 32 29', NULL, NULL, 20),
(89, 'PHARMACIE MADOU', '34 71 05 23', NULL, NULL, 5),
(90, 'PHARMACIE DU GRAND MARCHE', '34 71 55 55', NULL, NULL, 5),
(91, 'PHARMACIE DU LAC', '34 71 15 69', NULL, NULL, 5),
(92, 'PHARMACIE BARDOT 2000', '34 71 33 91', NULL, NULL, 5),
(93, 'PHARMACIE DE LA CITE', NULL, NULL, NULL, 5),
(94, 'PHARMACIE DE L''OREE TOUT', NULL, NULL, NULL, 41),
(95, 'PHARMACIE DE BONOUA TOUT', NULL, NULL, NULL, 41),
(96, 'PHARMACIE NOTRE DAME FATIMA', '30 64 57 10', NULL, NULL, 4),
(97, 'PHARMACIE DE LA MOSQUEE', '30 64 04 12', NULL, NULL, 4),
(98, 'PHARMACIE BELIER', '30 64 11 07', NULL, NULL, 4),
(99, 'PHARMACIE DES 220 LOGEMENTS', '30 64 22 05', NULL, NULL, 4),
(100, 'PHARMACIE DE YAMOUSSOUKRO', NULL, NULL, NULL, 4),
(101, 'EX PHCIE AGBASSI', '30 64 04 12', NULL, NULL, 4),
(102, 'PHARMACIE SINI KENEYA', '23 54 74 00', NULL, NULL, 13),
(103, 'PHARMACIE DU CHATEAU', '23 54 87 21', NULL, NULL, 13),
(104, 'PHARMACIE DES VILLAGES', NULL, NULL, NULL, 14),
(105, 'PHARMACIE FEZAN', '23 57 45 03', NULL, NULL, 14),
(106, 'NOUVELLE PHARMACIE MOGNAN', '30 62 90 45', NULL, NULL, 38),
(107, 'PHARMACIE FLOREL', '32 78 49 92', NULL, NULL, 3),
(108, 'PHARMACIE DU PARVIS', '32 78 70 57', NULL, NULL, 3),
(109, 'NOUVELLE PHARMACIE CENTRALE', '32 78 22 43', NULL, NULL, 3),
(110, 'NOUVELLE PHARMACIE APPAUL', '32 78 35 78', NULL, NULL, 3),
(111, 'PHARMACIE CARREFOUR LABIA', '32 78 49 92', NULL, NULL, 3),
(112, 'PHARMACIE AMIRA TOUT', NULL, NULL, NULL, 21),
(113, 'PHARMACIE ST LAURANT TOUT', NULL, NULL, NULL, 21),
(114, 'PHARMACIE MASSAN TOUT', '23 54 00 54', NULL, NULL, 21),
(115, 'NOUVELLE PHARMACIE MARLODIE', '32 76 61 11', NULL, NULL, 40),
(116, 'PHARMACIE DE LAKOTA', '32 76 61 59', NULL, NULL, 40),
(117, 'PHARMACIE LAFIA', '32 77 25 20', NULL, NULL, 11),
(118, 'PHARMACIE SAINTE PAULINE', NULL, NULL, NULL, 11),
(119, 'PHARMACIE DU CHÂTEAU', NULL, NULL, NULL, 11),
(120, 'PHARMACIE NOUR', NULL, NULL, NULL, 7),
(121, 'PHARMACIE DU NORD', '36 86 02 74', NULL, NULL, 7),
(122, 'PHARMACIE DE LA GRANDE MOSQUEE', '36 86 06 40', NULL, NULL, 7),
(123, 'PHARMACIE COLOMBE', '21 30 38 52', NULL, NULL, 15),
(124, 'PHARMACIE DE DAOUKRO', '31 97 80 60', NULL, NULL, 34),
(125, 'PHARMACIE SAINTE MARIE N''GATTAKRO', '31 63 16 17', NULL, NULL, 2),
(126, 'PHARMACIE MODERNE KENEDY', '31 63 86 52', NULL, NULL, 2),
(127, 'NOUVELLE PHARMACIE', NULL, NULL, NULL, 2),
(128, 'BELLEVILLE Quartier Belleville', '31 63 13 33', NULL, NULL, 2),
(129, 'PHARMACIE DU COMMERCE Face PTT', '31 63 35 73', NULL, NULL, 2),
(130, 'PHARMACIE PROVIDENCE', '35 90 09 00', NULL, NULL, 9),
(131, 'PHARMACIE DU MARCHE', '35 91 30 09', NULL, NULL, 9),
(132, 'PHARMACIE DE KATIO', '31 65 44 55', NULL, NULL, 19),
(133, 'PHARMACIE DE GUIGLO', '33 70 51 61', NULL, NULL, 31),
(134, 'PHARMACIE DE BONGOUNOU', '30 61 00 32', NULL, NULL, 23),
(135, 'PHARMACIE DE SINFRA', '30 68 03 38', NULL, NULL, 18),
(136, 'PHARMACIE BOKOSSO NOUVELLE', '30 68 00 09', NULL, NULL, 18),
(137, 'PHARMACIE DU CHÂTEAU', NULL, NULL, NULL, 8),
(138, 'PHAMACIE DU CENTRE MEDICAL ST LOUIS ORIONE', NULL, NULL, NULL, 8),
(139, 'PHARMACIE DU N''ZI', '31 97 01 77', NULL, NULL, NULL),
(140, 'NOUVELLE PHARMACIE ESPOIR BIANKOUMA', '33 24 82 83', NULL, NULL, 43),
(141, 'PHARMACIE PRINCIPALE SIKENSI', '23 57 00 30', NULL, NULL, 44),
(142, 'NOUVELLE PHARMACIE DU NIENE KOUTO', '23 57 00 30', NULL, NULL, 45),
(143, 'PHARMACIE DU COMMERCE', '32 77 00 45', NULL, NULL, 17),
(144, 'PHARMACIE DE ZUENOULA', '30 68 22 50', NULL, NULL, 36),
(145, 'PHARMACIE FATIMA DIVO QUARTIER LIBANAIS', '32 76 33 99', NULL, NULL, 6),
(146, 'PHARMACIE DE N''DOUCI', '23 51 59 23', NULL, NULL, 46),
(147, 'PHARMACIE D''ALEPE', '23 54 53 47', NULL, NULL, 47),
(148, 'PHARMACIE NOUVELLE', '35 91 52 61', NULL, NULL, 23),
(149, 'PHARMACIE K. BOILOT', '35 90 25 74', NULL, NULL, 33),
(150, 'PHARMACIE MAI', '35 91 00 30', NULL, NULL, 33),
(151, 'PHARMACIE DE LA GARE S.A.R.L Quartier Nabouhi', '34 72 28 77', NULL, NULL, 12),
(152, 'PHARMACIE DE HIRE', '30 68 50 09', NULL, NULL, 48),
(153, 'PHARMACIE DES FRONTIERES', '33 70 84 81', NULL, NULL, 27),
(154, 'PHARMACIE D''ATTINGUIE', '66 58 56 15', NULL, NULL, 49),
(155, 'PHARMACIE MODERNE DE MAN', '33 79 03 39', NULL, NULL, 10),
(156, 'PHARMACIE CENTRALE D''OUME', '30 68 41 78', NULL, NULL, 24),
(157, 'PHARMACIE WAHON', '33 70 32 93', NULL, NULL, 28);

-- --------------------------------------------------------

--
-- Structure de la table `ville`
--

CREATE TABLE IF NOT EXISTS `ville` (
  `id` int(11) NOT NULL,
  `nom_ville` varchar(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `ville`
--

INSERT INTO `ville` (`id`, `nom_ville`) VALUES
(1, 'Abidjan'),
(2, 'Bouaké'),
(3, 'Daloa'),
(4, 'Yamoussoukro'),
(5, 'San-Pédro'),
(6, 'Divo'),
(7, 'Korhogo'),
(8, 'Anyama'),
(9, 'Abengourou'),
(10, 'Man'),
(11, 'Gagnoa'),
(12, 'Soubré'),
(13, 'Agboville'),
(14, 'Dabou'),
(15, 'Grand-Bassam'),
(16, 'Bouaflé'),
(17, 'Issia'),
(18, 'Sinfra'),
(19, 'Katiola'),
(20, 'Bingerville'),
(21, 'Adzopé'),
(22, 'Séguéla'),
(23, 'Bondoukou'),
(24, 'Oumé'),
(25, 'Ferkessedougou'),
(26, 'Dimbokro'),
(27, 'Odienné'),
(28, 'Duékoué'),
(29, 'Danané'),
(30, 'Tingréla'),
(31, 'Guiglo'),
(32, 'Boundiali'),
(33, 'Agnibilékrou'),
(34, 'Daoukro'),
(35, 'Vavoua'),
(36, 'Zuénoula'),
(37, 'Tiassalé'),
(38, 'Toumodi'),
(39, 'Akoupé'),
(40, 'Lakota'),
(41, 'Bonoua'),
(42, 'M''bahiakro'),
(43, 'Biankouma'),
(44, 'Sikensi'),
(45, 'Sikensi'),
(46, 'N''douci'),
(47, 'Alépé'),
(48, 'Hire'),
(49, 'Attinguie');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
