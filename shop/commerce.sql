-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  mar. 23 juin 2020 à 20:20
-- Version du serveur :  10.4.8-MariaDB
-- Version de PHP :  7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `commerce`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

CREATE TABLE `admin` (
  `adresseEmail` varchar(100) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `telephone` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`adresseEmail`, `nom`, `prenom`, `telephone`, `password`) VALUES
('ecommerce@gmail.com', 'mohsine', 'mohsine', '0678453212', '123');

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

CREATE TABLE `article` (
  `reference` varchar(90) CHARACTER SET utf8 NOT NULL,
  `designation` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `descriptions` varchar(2000) CHARACTER SET utf8 DEFAULT NULL,
  `prix1` double NOT NULL,
  `prix2` double NOT NULL,
  `prix3` double NOT NULL,
  `imageArt` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `image2` varchar(200) NOT NULL,
  `image3` varchar(200) NOT NULL,
  `image4` varchar(200) NOT NULL,
  `seul` int(11) DEFAULT NULL,
  `idcategorie` int(11) NOT NULL,
  `datePublication` date NOT NULL,
  `promo` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`reference`, `designation`, `descriptions`, `prix1`, `prix2`, `prix3`, `imageArt`, `image2`, `image3`, `image4`, `seul`, `idcategorie`, `datePublication`, `promo`) VALUES
('beat1', 'beats audio headphones', '    Apple H1 chip for Class 1 Wireless Bluetooth® connectivity & battery efficiency.\r\n    Active Noise Cancelling (ANC) blocks external noise.\r\n    With Fast Fuel, a 10-minute charge gives 3 hours of play when battery is low.\r\n    Real-time audio calibration preserves a premium listening experience.', 249, 250, 228, 'beat1beat-by-dre-mixr_8.jpg', 'beat171z0svCA5lL._SL1500_.jpg', 'beat15921101_rd.jpg', 'beat1beats_studio3_wireless_decade_collection_negro_rojo_01_l.jpg', 14, 4, '2020-06-02', 1),
('book1', 'css books for developers', 'cascading style sheet books for developers , wanting to develop their skills to the new level', 199, 199, 299, 'book141XZD5tz5nL.jpg', 'book1High-Scoring-CSS-Solved-Papers-2016-19-600x689.jpg', 'book151AddmjxyEL._SX258_BO1,204,203,200_.jpg', 'book151--DDVM77L._SX376_BO1,204,203,200_.jpg', 10, 15, '2020-06-02', 0),
('boot1', 'high heel boots ', 'boots for women , all sizes , all colors , all kind of tissues , with the best price tho ,make sure to purchase your item ', 199, 199, 200, 'boot1b1.jpg', 'boot1b2.jpg', 'boot1b3.jpg', 'boot1b4.jpg', 19, 1, '2020-06-02', 0),
('c1', 'camera canon', 'Canon EOS (Electro-Optical System) is an autofocus single-lens reflex camera (SLR) and mirrorless camera series produced by Canon Inc. Introduced in 1987 with the Canon EOS 650, all EOS cameras used 35 mm film until October 1996 when the EOS IX was released using the new and short-lived APS film.', 3000, 3099, 3168, 'c14.jpg', 'c15.jpg', 'c19.jpg', 'c111.jpg', 4, 1, '2020-06-01', 1),
('c2', 'sony digital camera', 'Cyber-shot is Sony\'s line of point-and-shoot digital cameras introduced in 1996. Cyber-shot ... \"Explore Cyber-shot™ high definition cameras\". Sony. Archived from the original on January 6, 2013. Retrieved May 8, 2013. ^ \"Sony Adds 3D', 999, 1000, 1099, 'c21.jpg', 'c22.jpg', 'c23.jpg', 'c213.jpg', 5, 1, '2020-06-01', 1),
('c33', 'samsung note 10', 'samsung note 10 , 7.6 inch screen lcd , with notch and camera 24mp , and more other aspects to see , battery 5000mhz , sensor , 200g ', 10099, 9999, 9999, 'c33galaxy-note-10-and-10-plus-aura-glow-1.jpg', 'c33pe1-400x350.jpg', 'c33Samsung-Galaxy-Note-10-500x500.jpg', 'c33galaxy-note-10-and-10-plus-aura-glow-1 - Copy.jpg', 6, 1, '2020-06-01', 0),
('c4', 'iphone 7', 'Apple iPhone 7 smartphone. Announced Sep 2016. Features 4.7″ Retina IPS LCD display, Apple A10 Fusion chipset, 12 MP primary camera, 7 MP front', 5999, 6000, 6099, 'c4apple-iphone-7-plus-128gb-red-renewed.jpg', 'c4resize.webp', 'c4iphone7-rsgld-pureangles-fr-fr-screen-1.jpg', 'c4iphone7-plus-pureangles-matblk-fr-fr-screen.png', 4, 1, '2020-06-01', 0),
('c5', 'fujifilm camera', 'Fujifilm is one of the best regarded camera brands worldwide. With our award-winning range of cameras suited to Pros and enthusiasts alike', 4000, 4099, 4199, 'c53.jpg', 'c5f1.jpg', 'c5f2.jpg', 'c5f3.jpg', 6, 1, '2020-06-01', 0),
('c9', 'xiaomi redmi note8', 'Redmi Note 8 is a highly sought after smartphone. It has a big-display which measures 6.53-inches and a water drop notch that houses the selfie camera. The display also has support for HDR.  It has a glass back that is made out of Corning Gorilla Glass 5. The Redmi Note 8 also has an IR Blaster at the top whihc cna be used to control other IR-based appliances.', 1899, 1900, 1999, 'c9Xiaomi_Redmi_Note_8_Pro_L_1.jpg', 'c9Dux-Ducis-Skin-Lite-Cover-for-Xiaomi-Redmi-Note-8-Black-05112019-01-p.jpg', 'c920191009163133_58647.jpg', 'c9f23d6fce-3ad3-4329-a5c9-f2bc7f952d43.jpg', 7, 1, '2020-06-01', 0),
('car1', 'memory card sandisk', 'sandisk memory card , all size\'s , from 8 gb and above , with the best price in the market ', 39, 40, 70, 'car16.jpg', 'car18.jpg', 'car110.jpg', 'car112.jpg', 50, 16, '2020-06-02', 0),
('iphox1', 'iphone xs max pro', 'iPhone XS Max features a 6.5-inch Super Retina display with custom-built OLED panels for an HDR display that provides the industry’s best color ..', 10299, 10299, 10276, 'iphox171HhgSXeUuL._SL1500_.jpg', 'iphox1iphone-xs-max-2018.png', 'iphox1H638346078ba046688009bf4bc800a10cO.jpg', 'iphox1Apple-iPhone-11-Pro-Max-256GB.jpg.webp', 4, 1, '2020-06-02', 0),
('lap1', 'dell latitude e7450 i7', 'he Dell Latitude E7450 doesn\'t mess around with a 360-degree hinge or ... touch screen, Intel Core i7 CPU, 16GB of RAM and a 500GB SSD.', 4999, 5000, 5000, 'lap161LGkZmxHTL._AC_SX466_.jpg', 'lap1dell-latitude-e7450-laptop-500x500.jpg', 'lap1s-l300.jpg', 'lap1416CjrZq-5L._AC_SX355_.jpg', 10, 3, '2020-06-02', 0),
('p1', 'hp envy17 10th laptop', 'Windows 10 Home 64; 10th Generation Intel® Core™ i7 processor; NVIDIA® GeForce® MX330 (2 GB GDDR5 dedicated); 12 GB memory; 512 GB SSD storage', 10000, 10999, 10999, 'p1c05975400.png', 'p1nbhp17tce1006ux02-1.jpg', 'p161-g6B6IMjL._SY355_.jpg', 'p161-g6B6IMjL._AC_SX466_.jpg', 7, 3, '2020-06-01', 0),
('sou1', 'nia audio headphones', 'Original NIA Q1 Bluetooth Headphone Wireless Sport Headsets , quality , endurance , battery life , health and ear friendly', 199, 200, 200, 'sou1imagesd.jfif', 'sou151ZFWD3OrfL._AC_SX425_.jpg', 'sou1B1165210345.jpg', 'sou1nia_q6_bluetooth_wireless_headphone.jpg', 20, 4, '2020-06-02', 0),
('xio1', 'xiaomi redmi note 7', 'Flagship-level camera: 48MP+5MP AI dual rear camera - 1.6μm 4-in-1 Super Pixel. 4 times the pixels for extra clarity: The more pixels, the clearer the view is', 1700, 1700, 1700, 'xio1s-l300j.jpg', 'xio151WO5lzaL7L._AC_SY355_.jpg', 'xio1xiaomi_redmi_note_7_premium_protection_iridiscent_blue_funda_01_l.jpg', 'xio151Q73J3PM4L._AC_SX425_.jpg', 10, 1, '2020-06-02', 1);

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

CREATE TABLE `categorie` (
  `idcategorie` int(11) NOT NULL,
  `theme` varchar(40) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`idcategorie`, `theme`) VALUES
(1, 'phones & camera\'s'),
(3, 'Computers'),
(4, 'sound'),
(5, 'women\'s clothes'),
(6, 'women\'s shoes'),
(7, 'women\'s bag'),
(8, 'men\'s clothes'),
(9, 'men\'s shoes'),
(10, 'kids clothes'),
(11, 'kids shoes'),
(12, 'food'),
(13, 'health and beauty'),
(14, 'sports'),
(15, 'books'),
(16, 'other');

-- --------------------------------------------------------

--
-- Structure de la table `chat`
--

CREATE TABLE `chat` (
  `emailAdmin` varchar(50) NOT NULL,
  `idClien` varchar(20) NOT NULL,
  `message` text NOT NULL,
  `fromm` varchar(50) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `chat`
--

INSERT INTO `chat` (`emailAdmin`, `idClien`, `message`, `fromm`, `date`) VALUES
('ecommerce@gmail.com', '8', 'hello', '8', '2020-06-02 01:24:43'),
('ecommerce@gmail.com', '8', 'salam', 'ecommerce@gmail.com', '2020-06-02 01:26:43'),
('ecommerce@gmail.com', '8', 'how r u', 'ecommerce@gmail.com', '2020-06-02 01:51:43'),
('ecommerce@gmail.com', '8', 'good', '8', '2020-06-02 01:52:08'),
('ecommerce@gmail.com', '8', '	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa laboriosam iste, veniam nisi ratione a recusandae voluptatum assumenda quo, inventore veritatis eligendi rem. Dolores veniam tempora rerum adipisci blanditiis dolorum.', '8', '2020-06-05 13:39:40'),
('ecommerce@gmail.com', '8', '	Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ipsa laboriosam iste, veniam nisi ratione a recusandae voluptatum assumenda quo, inventore veritatis eligendi rem. Dolores veniam tempora rerum adipisci blanditiis dolorum.', '8', '2020-06-05 13:39:56'),
('ecommerce@gmail.com', '8', '	Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus, dolores veritatis. Vitae tempore repellat cupiditate voluptates illo officia dolorum, corporis eveniet debitis non possimus. Facilis cum, adipisci quia amet eius dolor omnis, cumque nemo nostrum atque corporis tempore sit qui recusandae molestiae ducimus numquam quam autem! Reprehenderit harum reiciendis perferendis temporibus illum amet, odit at nulla nesciunt enim alias, nobis distinctio nam tempora delectus! Ab quisquam, sequi ratione voluptate eveniet inventore officia natus nostrum tempora tenetur a facere magnam corporis provident ad asperiores fugiat eos saepe impedit eius officiis reprehenderit excepturi explicabo? Nemo quos provident praesentium et vero libero repellendus.', '8', '2020-06-05 13:40:13'),
('ecommerce@gmail.com', '8', '	Lorem ipsum dolor sit amet consectetur adipisicing elit. Necessitatibus, dolores veritatis. Vitae tempore repellat cupiditate voluptates illo officia dolorum, corporis eveniet debitis non possimus. Facilis cum, adipisci quia amet eius dolor omnis, cumque nemo nostrum atque corporis tempore sit qui recusandae molestiae ducimus numquam quam autem! Reprehenderit harum reiciendis perferendis temporibus illum amet, odit at nulla nesciunt enim alias, nobis distinctio nam tempora delectus! Ab quisquam, sequi ratione voluptate eveniet inventore officia natus nostrum tempora tenetur a facere magnam corporis provident ad asperiores fugiat eos saepe impedit eius officiis reprehenderit excepturi explicabo? Nemo quos provident praesentium et vero libero repellendus.', '8', '2020-06-05 13:40:34'),
('ecommerce@gmail.com', '8', 'hi', '8', '2020-06-19 16:21:26'),
('ecommerce@gmail.com', '8', 'how r u ?', 'ecommerce@gmail.com', '2020-06-19 16:21:33'),
('ecommerce@gmail.com', '8', 'i need a discount on a product can u help me ', '8', '2020-06-19 16:22:24'),
('ecommerce@gmail.com', '8', 'of course we are here at your service', 'ecommerce@gmail.com', '2020-06-19 16:22:37');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `idClient` varchar(20) NOT NULL,
  `nomClient` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `prenomClient` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `adresseClient` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  `passwordclient` varchar(256) CHARACTER SET utf8 DEFAULT NULL,
  `emailClient` varchar(40) CHARACTER SET utf8 DEFAULT NULL,
  `telephone` text NOT NULL,
  `country` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `statut` varchar(30) CHARACTER SET utf8 DEFAULT NULL,
  `vkey` text NOT NULL,
  `verified` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `number` int(11) NOT NULL,
  `points` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`idClient`, `nomClient`, `prenomClient`, `adresseClient`, `passwordclient`, `emailClient`, `telephone`, `country`, `city`, `statut`, `vkey`, `verified`, `time`, `number`, `points`) VALUES
('10', 'vf', 'd', 'cds', '$2y$10$s5wxk.sD0j65DRCK4LXzpeO1.YqMfnIChuaoy5jONUvxu6e.YsTii', 'kebir@gmail.com', '123', 'Aruba', 'Noord', 'nouveau', '$2y$10$u33vCrl2sBETx0/N4aek8.tqLoOdwzZ0pOS3TQ2221IeESPpki5X.', 0, '2020-06-07 11:46:54', 0, 0),
('11', 'cdjsk', 'cfjdk', 'cvdf', '$2y$10$wLmuNTYuZMQ2wf5Og.ArnuKJkSmoi60T4YOQFDYjtMcBHsepYo/M.', 'cdsj@gmail.com', '21893', 'Aruba', 'Noord', 'nouveau', '$2y$10$KuZtMnbenYYCKRz6ftKyl.QJCRkM91OgZ1fyKmmrPBzQwzIrE9ywu', 0, '2020-06-07 11:47:49', 0, 0),
('12', 'nabil', 'cambiaso', 'fjekel', '$2y$10$yG4wPS5lkJzkA4M0YOjIY.m38rxHRsdSXLM2IyumleQ1yISQe3jxe', 'nabilcambiaso@gmail.com', '1234', 'Aruba', 'Noord', 'nouveau', '$2y$10$1lqsf2LtUCIdiZvD7QLFHe14MUv6d3ZNwfFhJ5ulrJdN0rGS/ns5u', 0, '2020-06-07 14:23:43', 1, 0),
('13', 'amin', 'ast', 'hay l9ods', '$2y$10$EdsvPYaM8EkIBlFc6cFaFeuvy7X2mEL52cu1nsplUDhjK1D5dcS3G', 'amin@gmail.com', '309284923', 'Morocco', 'Ouarzazate', 'nouveau', '$2y$10$7k0u008NMBmdVMc5ZtZDeOSd2CPJoL4c4eQsfYOQ9gRvA4RhiUZla', 0, '2020-06-08 11:56:28', 2, 0),
('14', 'kebira', 'kebira', 'fherjk', '$2y$10$vl.vkSRvHGr3eaQWNLdOj.7mg7hir6LBXrsuUt3rOzhXSZFNfQ2Cm', 'kebira1@gmail.com', '348290', 'Aruba', 'Noord', 'nouveau', '$2y$10$x9Pjdk0NW/7toJIXuB0jHuCj.ku0.jy/6qI1tHMmzpQXQ.cvKUwgu', 0, '2020-06-08 12:02:55', 3, 0),
('8', 'smail', 'elallioui', 'hay tasomat ouarzazate', '$2y$10$UGtyao32kIyJpd5KlOY29eI4t.wcWH26x17sQJMDIblaBHTx99mEa', 'elalioui@gmail.com', '0609492343', 'Morocco', 'Ouarzazate', 'nouveau', '', 1, '2020-06-20 12:20:00', 0, 2500),
('9', 'kebira', 'kebi', 'fwerjklf', '$2y$10$1P9q9jhbuseF6saHWwdJAOaQeeYiwjbFdUSU3I1evu/HvmsX4/u.C', 'kebira@gmail.com', '93138208', 'Argentina', '28 de Noviembre', 'nouveau', '$2y$10$jF9co4TLBlTG53gx3XGdxuucg5jCo9iACKyQ0/t15Pe4NHsR3VvRa', 0, '2020-06-07 11:41:05', 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `commande`
--

CREATE TABLE `commande` (
  `idcommande` int(11) NOT NULL,
  `datecommande` date DEFAULT NULL,
  `prixtotal` double DEFAULT NULL,
  `idlistecom` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `dds`
--

CREATE TABLE `dds` (
  `ids` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `listecommande`
--

CREATE TABLE `listecommande` (
  `idlistecom` int(11) NOT NULL,
  `quantite` int(11) DEFAULT NULL,
  `idClient` varchar(20) CHARACTER SET utf8 NOT NULL,
  `reference` varchar(90) CHARACTER SET utf8 NOT NULL,
  `statut` int(11) NOT NULL,
  `livraison` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `listecommande`
--

INSERT INTO `listecommande` (`idlistecom`, `quantite`, `idClient`, `reference`, `statut`, `livraison`) VALUES
(1, 3, '1', 'c1', 0, ''),
(2, 1, '8', 'c9', 0, ''),
(3, 2, '9', 'c4', 0, ''),
(3, 1, '9', 'c5', 0, ''),
(4, 1, '7', 'c1', 0, ''),
(5, 1, '8', 'c1', 0, ''),
(6, 2, '8', 'c33', 0, 'Amana'),
(6, 1, '8', 'c5', 0, 'Amana'),
(6, 1, '8', 'c9', 0, 'Amana');

--
-- Déclencheurs `listecommande`
--
DELIMITER $$
CREATE TRIGGER `trListeCommandeMinusQuantite` AFTER INSERT ON `listecommande` FOR EACH ROW UPDATE article 
SET article.seul=article.seul-new.quantite
WHERE new.reference = article.reference
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `mycomments`
--

CREATE TABLE `mycomments` (
  `idComments` int(11) NOT NULL,
  `ArticleReference` varchar(90) NOT NULL,
  `comments` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `mycomments`
--

INSERT INTO `mycomments` (`idComments`, `ArticleReference`, `comments`) VALUES
(1, 'c1', 'good product i recommend it'),
(2, 'c1', 'this camera is just awesome , no joke guys really recommend it'),
(3, 'c1', 'like it so much thank you'),
(4, 'c1', 'that\'s the best '),
(5, '', ''),
(6, 'c1', 'let\'s try to comment'),
(7, 'c1', 'trial'),
(8, 'c1', 'good'),
(9, 'c1', 'it worked'),
(10, 'c1', 'maybe now it  will work'),
(11, 'xio1', 'i have this phone for something like a year now , i may say that this is the best phone i used so far');

-- --------------------------------------------------------

--
-- Structure de la table `payement`
--

CREATE TABLE `payement` (
  `idpayement` int(11) NOT NULL,
  `numcompte` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `bordereau` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `datepayement` date DEFAULT NULL,
  `teladmine` int(11) DEFAULT NULL,
  `teleclient` int(11) DEFAULT NULL,
  `idcommande` int(11) DEFAULT NULL,
  `idClient` varchar(20) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `points`
--

CREATE TABLE `points` (
  `idPoints` int(11) NOT NULL,
  `referencePoints` varchar(90) NOT NULL,
  `nombrePoints` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `points`
--

INSERT INTO `points` (`idPoints`, `referencePoints`, `nombrePoints`) VALUES
(1, 'c1', 2000),
(2, 'c2', 3000);

-- --------------------------------------------------------

--
-- Structure de la table `promotion`
--

CREATE TABLE `promotion` (
  `idpromotion` int(11) NOT NULL,
  `ancienprix` double DEFAULT NULL,
  `Nouveauxprix` double DEFAULT NULL,
  `datepromo` date DEFAULT NULL,
  `dure` int(11) DEFAULT NULL,
  `reference` varchar(90) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `promotion`
--

INSERT INTO `promotion` (`idpromotion`, `ancienprix`, `Nouveauxprix`, `datepromo`, `dure`, `reference`) VALUES
(0, 2000, 2300, '2020-06-22', 12, 'c2'),
(1, 2000, 3000, '2020-06-02', 13, 'c1'),
(2, 10299, 9999, '2020-06-01', 15, 'xio1'),
(3, 200, 150, '2020-06-03', 10, 'beat1'),
(4, 2000, 2300, '2020-06-22', 12, 'c2');

--
-- Déclencheurs `promotion`
--
DELIMITER $$
CREATE TRIGGER `trDeletePromo` BEFORE DELETE ON `promotion` FOR EACH ROW UPDATE article
SET article.promo=0
WHERE old.reference=article.reference
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `trPromoArticle` AFTER INSERT ON `promotion` FOR EACH ROW UPDATE article
SET article.promo=1
WHERE new.reference=article.reference
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Structure de la table `sms`
--

CREATE TABLE `sms` (
  `idsms` int(11) NOT NULL,
  `bordereauSms` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `sommeverser` double DEFAULT NULL,
  `dateversement` date DEFAULT NULL,
  `idClient` varchar(20) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Structure de la table `souscategorie`
--

CREATE TABLE `souscategorie` (
  `idSousCategorie` int(11) NOT NULL,
  `idcategorie` int(11) NOT NULL,
  `theme` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `souscategorie`
--

INSERT INTO `souscategorie` (`idSousCategorie`, `idcategorie`, `theme`) VALUES
(1, 3, 'laptop');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adresseEmail`);

--
-- Index pour la table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`reference`),
  ADD KEY `idcategorie` (`idcategorie`);

--
-- Index pour la table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`idcategorie`);

--
-- Index pour la table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`emailAdmin`,`idClien`,`date`),
  ADD KEY `dddd` (`idClien`);

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`idClient`);

--
-- Index pour la table `commande`
--
ALTER TABLE `commande`
  ADD PRIMARY KEY (`idcommande`),
  ADD KEY `fkCommadeListeCommande` (`idlistecom`);

--
-- Index pour la table `dds`
--
ALTER TABLE `dds`
  ADD PRIMARY KEY (`ids`);

--
-- Index pour la table `listecommande`
--
ALTER TABLE `listecommande`
  ADD PRIMARY KEY (`idlistecom`,`idClient`,`reference`),
  ADD KEY `fk-liste-client` (`idClient`),
  ADD KEY `fk-liste-article` (`reference`);

--
-- Index pour la table `mycomments`
--
ALTER TABLE `mycomments`
  ADD PRIMARY KEY (`idComments`);

--
-- Index pour la table `payement`
--
ALTER TABLE `payement`
  ADD PRIMARY KEY (`idpayement`),
  ADD KEY `fk-payement-commande` (`idcommande`),
  ADD KEY `fk-payement-client` (`idClient`);

--
-- Index pour la table `points`
--
ALTER TABLE `points`
  ADD PRIMARY KEY (`idPoints`);

--
-- Index pour la table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`idpromotion`),
  ADD KEY `fk-promo-article` (`reference`);

--
-- Index pour la table `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`idsms`),
  ADD KEY `fk-sms-client` (`idClient`);

--
-- Index pour la table `souscategorie`
--
ALTER TABLE `souscategorie`
  ADD PRIMARY KEY (`idSousCategorie`),
  ADD KEY `fk-categorie` (`idcategorie`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `dds`
--
ALTER TABLE `dds`
  MODIFY `ids` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `mycomments`
--
ALTER TABLE `mycomments`
  MODIFY `idComments` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT pour la table `points`
--
ALTER TABLE `points`
  MODIFY `idPoints` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `souscategorie`
--
ALTER TABLE `souscategorie`
  MODIFY `idSousCategorie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `idcategorie` FOREIGN KEY (`idcategorie`) REFERENCES `categorie` (`idcategorie`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `souscategorie`
--
ALTER TABLE `souscategorie`
  ADD CONSTRAINT `fk-categorie` FOREIGN KEY (`idcategorie`) REFERENCES `categorie` (`idcategorie`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
