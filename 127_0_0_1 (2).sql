-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : ven. 29 jan. 2021 à 08:57
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `boutiqueessai`
--
CREATE DATABASE IF NOT EXISTS `boutiqueessai` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `boutiqueessai`;

-- --------------------------------------------------------

--
-- Structure de la table `article`
--

DROP TABLE IF EXISTS `article`;
CREATE TABLE IF NOT EXISTS `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_id` int(11) DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `categorie_id` int(11) DEFAULT NULL,
  `genre_id` int(11) DEFAULT NULL,
  `prix` double NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_23A0E663DA5256D` (`image_id`),
  KEY `IDX_23A0E66BCF5E72D` (`categorie_id`),
  KEY `IDX_23A0E664296D31F` (`genre_id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `article`
--

INSERT INTO `article` (`id`, `image_id`, `titre`, `description`, `categorie_id`, `genre_id`, `prix`) VALUES
(5, 20, 'Lunette', 'Jolie lunette', 7, 2, 50),
(6, 21, 'Lunette', 'Jolie paire de lunette', 7, 2, 60),
(8, 16, 'Lunette', 'Jolie paire de lunette', 9, 1, 50),
(9, 18, 'Lunette', 'Jolie paire de lunette', 9, 1, 60),
(10, 19, 'Lunette', 'Jolie paire de lunette', 9, 1, 75),
(11, 22, 'Lunette', 'Jolii pomme', 7, 2, 75),
(12, 7, 'chapeau', 'Chapeau blanc', 3, 2, 50),
(13, 8, 'chapeau marron', 'Chapeau Indiana-Jones', 3, 1, 60),
(14, 9, 'bijoux', 'Jolie bijoux', 3, 1, 75),
(15, 10, 'Lunette de soleil', 'Jolie lunette de soleil', 6, 2, 50),
(16, 11, 'Lunette', 'Jolie lunette de soleil', 6, 2, 75),
(17, 13, 'Lunette', 'Jolie lunette de soleil', 6, 2, 100),
(18, 12, 'Ceinture', 'Jolie ceinture', 2, 1, 50),
(19, 14, 'Ceinture', 'Jolie ceinture', 2, 1, 75),
(20, 15, 'Ceinture', 'Jolie ceinture', 2, 1, 100),
(23, 24, 'Sac', 'Sac reine des neiges', 3, 7, 40);

-- --------------------------------------------------------

--
-- Structure de la table `caracteristique`
--

DROP TABLE IF EXISTS `caracteristique`;
CREATE TABLE IF NOT EXISTS `caracteristique` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_id` int(11) DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_D14FBE8B3DA5256D` (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `caracteristique`
--

INSERT INTO `caracteristique` (`id`, `image_id`, `titre`) VALUES
(1, 23, 'créateur de malade'),
(2, 26, 'créateur de folie'),
(3, 24, 'C\'est la classe chez nous');

-- --------------------------------------------------------

--
-- Structure de la table `categorie`
--

DROP TABLE IF EXISTS `categorie`;
CREATE TABLE IF NOT EXISTS `categorie` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `categorie` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `categorie`
--

INSERT INTO `categorie` (`id`, `categorie`) VALUES
(2, 'Ceinture'),
(3, 'Accessoire'),
(6, 'Lunette de soleil'),
(7, 'Lunette femme'),
(9, 'Lunette homme');

-- --------------------------------------------------------

--
-- Structure de la table `cgvcgu`
--

DROP TABLE IF EXISTS `cgvcgu`;
CREATE TABLE IF NOT EXISTS `cgvcgu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `conditiong` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `cgvcgu`
--

INSERT INTO `cgvcgu` (`id`, `conditiong`) VALUES
(3, '<h5>CONDITIONS G&Eacute;N&Eacute;RALES DE VENTES</h5>\r\n\r\n<p>Version au 6&nbsp;aout&nbsp;2020<br />\r\n<br />\r\nToute commande pass&eacute;e sur le site internet http://www.breal.net et/ou via l&rsquo;application mobile Br&eacute;al correspondante (ci-apr&egrave;s d&eacute;nomm&eacute; le &laquo; Site &raquo;) vaut acceptation expresse de l&#39;internaute aux pr&eacute;sentes conditions g&eacute;n&eacute;rales de vente (ci-apr&egrave;s, d&eacute;nomm&eacute;es les &laquo; CGV &raquo;).<br />\r\n<br />\r\nAfin de conserver un exemplaire des CGV, le lien suivant permet de les imprimer et/ou de les t&eacute;l&eacute;charger :&nbsp;<a href=\"https://www.breal.net/on/demandware.static/-/Library-Sites-SharedLibraryBreal/default/dw964674e6/PDF/BR_CGV_06082020.pdf\" target=\"_blank\">cliquez ici</a>.<br />\r\n&nbsp;</p>\r\n\r\n<h5>1. OBJET</h5>\r\n\r\n<p>Les pr&eacute;sentes CGV r&eacute;gissent l&#39;ensemble des modalit&eacute;s et conditions de vente &agrave; distance &agrave; des internautes via le Site, des produits d&eacute;finis en article 2 des pr&eacute;sentes, distribu&eacute;s par la soci&eacute;t&eacute; :<br />\r\n<br />\r\nPAULINE<br />\r\nRCS SAINT MALO 410 146 468<br />\r\nZAC de la Moinerie<br />\r\n10, impasse du Grand Jardin<br />\r\n35400 SAINT MALO<br />\r\n<br />\r\nT&eacute;l&eacute;phone : + 33 (0)1.84.17.25.30 (co&ucirc;t d&#39;un appel local en France m&eacute;tropolitaine, tarif indicatif depuis un poste fixe, susceptible d&#39;&ecirc;tre modul&eacute; en fonction des op&eacute;rateurs ; pour les internautes localis&eacute;s hors de France m&eacute;tropolitaine, co&ucirc;t selon les tarifs pratiqu&eacute;s par les op&eacute;rateurs locaux). Tout contact se fera en langue fran&ccedil;aise.<br />\r\nFormulaire de contact :&nbsp;<a href=\"https://www.breal.net/aide\" rel=\"nofollow\">cliquez-ici</a><br />\r\n(ci-apr&egrave;s d&eacute;nomm&eacute;e &laquo; le Vendeur &raquo;).<br />\r\n<br />\r\nL&#39;&laquo; Internaute &raquo; s&#39;entend de toute personne majeure, ou mineure avec l&#39;accord de son repr&eacute;sentant l&eacute;gal, et visitant ou effectuant un achat sur le Site.<br />\r\n<br />\r\nL&#39;Internaute et le Vendeur conviennent que leurs relations seront r&eacute;gies exclusivement par les pr&eacute;sentes CGV, qui s&#39;appliquent &agrave; l&#39;exclusion de toutes autres conditions ou contrat, et notamment celles applicables pour toutes autres ventes, notamment en points de vente.<br />\r\n<br />\r\nLe Vendeur se r&eacute;serve la possibilit&eacute; d&#39;adapter ou de modifier, &agrave; tout moment, les pr&eacute;sentes CGV. En cas de modification, les CGV applicables seront celles en ligne au jour de la commande.<br />\r\n&nbsp;</p>\r\n\r\n<h5>2. PRODUITS</h5>\r\n\r\n<p>Les &laquo; Produits &raquo; s&#39;entendent (i) des articles de pr&ecirc;t-&agrave;-porter, (ii) des accessoires et (iii) des cartes cadeaux pr&eacute;sent&eacute;s sur le Site en vue de leur commercialisation aupr&egrave;s des Internautes.<br />\r\n<br />\r\n2.1. Articles de pr&ecirc;t-&agrave;-porter et accessoires<br />\r\n<br />\r\nLes Produits sont pr&eacute;sent&eacute;s sur le Site sous r&eacute;serve de leur disponibilit&eacute;.<br />\r\n<br />\r\nLe Vendeur fera ses meilleurs efforts pour actualiser ses stocks. En cas d&#39;indisponibilit&eacute; d&#39;un article, le Vendeur fera le n&eacute;cessaire pour le retirer du Site. Lorsqu&#39;une taille d&#39;un article n&#39;est pas disponible, elle ne pourra pas &ecirc;tre s&eacute;lectionn&eacute;e par l&rsquo;Internaute.<br />\r\n<br />\r\nLe Vendeur se r&eacute;serve en tout &eacute;tat de cause le droit de retirer, &agrave; tout moment, tout Produit du Site et/ou de le remplacer et/ou d&#39;adapter ou modifier tout contenu ou information relative figurant sur le Site.<br />\r\n<br />\r\nLes Produits propos&eacute;s sur le Site sont d&eacute;crits et pr&eacute;sent&eacute;s avec la plus grande exactitude possible. Pour chaque Produit, une fiche est disponible sur le Site (ci-apr&egrave;s la &laquo; Fiche &raquo;).<br />\r\n<br />\r\nLa Fiche contient notamment les caract&eacute;ristiques du Produit s&eacute;lectionn&eacute;, et notamment, s&rsquo;agissant des articles de pr&ecirc;t-&agrave;-porter : les tailles, les diff&eacute;rents coloris, la disponibilit&eacute; du Produit, la composition, les conditions d&rsquo;entretien, le prix (prix unitaire TTC, total remise si le Produit est concern&eacute; par une offre commerciale, et le cas &eacute;ch&eacute;ant le prix total TTC apr&egrave;s remise).<br />\r\n<br />\r\nLe Vendeur pourra, toutefois, notamment du fait de ses fournisseurs, &ecirc;tre amen&eacute; &agrave; proposer &agrave; l&#39;Internaute des Produits de composition l&eacute;g&egrave;rement diff&eacute;rente de celle d&eacute;crite sur le Site, mais en tout &eacute;tat de cause de qualit&eacute; &eacute;gale ou sup&eacute;rieure au Produit command&eacute;.<br />\r\n<br />\r\nLe Vendeur utilise la RFID (technologie d&#39;identification par radio fr&eacute;quence) &agrave; des fins de gestion et contr&ocirc;le de stocks. Une &eacute;tiquette &eacute;lectronique contenant un num&eacute;ro de s&eacute;rie est int&eacute;gr&eacute;e aux articles de pr&ecirc;t-&agrave;-porter et accessoires commercialis&eacute;s sur le Site.<br />\r\n<br />\r\nLes composants &eacute;lectroniques seront d&eacute;truits &agrave; l&#39;usage (3 &agrave; 5 lavages). L&#39;Internaute peut &eacute;galement d&eacute;couper cette &eacute;tiquette apr&egrave;s achat. Une &eacute;tude d&#39;impact sur la vie priv&eacute;e a &eacute;t&eacute; r&eacute;alis&eacute;e et d&eacute;pos&eacute;e &agrave; la Commission Nationale Informatique et Libert&eacute;s. L&rsquo;Internaute peut avoir acc&egrave;s &agrave; son r&eacute;sum&eacute; en&nbsp;<a href=\"https://www.breal.net/on/demandware.static/-/Library-Sites-SharedLibraryBreal/default/dwe52896ce/PDF/resume-EIVP-PIA%20EL20150421.pdf\" rel=\"nofollow\" target=\"_blank\">cliquant ici</a><br />\r\n<br />\r\n<br />\r\n2.2 Cartes Cadeaux<br />\r\n<br />\r\nSi l&rsquo;achat de cartes cadeaux physiques et/ou virtuelles sont disponibles sur le Site, la Fiche pr&eacute;cisera les conditions d&rsquo;utilisation de ladite carte, &eacute;tant pr&eacute;cis&eacute; ce qui suit :<br />\r\n<br />\r\n- L&rsquo;Internaute devra choisir le montant dont il souhaite cr&eacute;diter la carte, &eacute;tant pr&eacute;cis&eacute; que ce montant devra correspondre &agrave; un nombre entier (il n&rsquo;est pas possible de choisir un montant comprenant des centimes d&rsquo;euros) et ne pourra &ecirc;tre inf&eacute;rieur &agrave; 5 (cinq) euros, ni exc&eacute;der 150 (cent cinquante) euros ;<br />\r\n- Pour l&rsquo;achat d&rsquo;une carte cadeau physique, il sera possible d&rsquo;y saisir un message et une signature et de choisir un visuel parmi plusieurs possibilit&eacute;s ;<br />\r\n- Il n&rsquo;est possible d&rsquo;acqu&eacute;rir qu&rsquo;une seule carte cadeau par panier ;<br />\r\n- Les cartes cadeaux sont utilisables uniquement sur le Site et au sein des magasins situ&eacute;s en France M&eacute;tropolitaine dont la liste figure sur le Site. Il ne sera toutefois pas possible d&rsquo;acheter une carte cadeau avec une carte cadeau ou un ch&egrave;que fid&eacute;lit&eacute;.<br />\r\n- Le Vendeur attire l&rsquo;attention de l&rsquo;Internaute sur le fait qu&rsquo;aucune r&eacute;duction ne sera applicable pour l&rsquo;achat d&rsquo;une carte cadeau.<br />\r\n<br />\r\nPour tout achat d&rsquo;une carte cadeau virtuelle, l&rsquo;Internaute recevra ladite carte cadeau virtuelle par email, sur l&rsquo;adresse mail qu&rsquo;il aura communiqu&eacute;e au Vendeur, associ&eacute;e &agrave; un code &agrave; treize (13) chiffres.<br />\r\n&nbsp;</p>\r\n\r\n<h5>3. CONSULTATION DE STOCK DISPONIBLE EN MAGASIN</h5>\r\n\r\n<p>Si la fonctionnalit&eacute; &laquo; Alerte stock &raquo; est disponible, en cas d&rsquo;indisponibilit&eacute; d&rsquo;un produit sur le Site, l&rsquo;Internaute peut utiliser cette fonctionnalit&eacute;. L&rsquo;alerte stock est disponible sur la fiche de chaque produit. Elle permet &agrave; l&rsquo;Internaute, si un produit choisi est indisponible, de pr&eacute;ciser son adresse email afin de recevoir un email lorsque que le produit sera de nouveau disponible &agrave; la vente sur le Site (ci-apr&egrave;s &laquo; Alerte stock &raquo;).<br />\r\n&nbsp;</p>\r\n\r\n<h5>4. PRIX</h5>\r\n\r\n<p>Le prix &agrave; payer par l&#39;Internaute pour le Produit est celui communiqu&eacute; sur le Site au moment de la validation de la commande par l&#39;Internaute et communiqu&eacute; dans le cadre de la Confirmation de la commande.<br />\r\n<br />\r\nLe prix des Produits est exprim&eacute; en euros toute taxe comprise (TTC), comprenant la taxe sur la valeur ajout&eacute;e au taux l&eacute;gal en vigueur, et ne comprenant pas les frais de livraison/transport qui sont factur&eacute;s en suppl&eacute;ment dans les conditions pr&eacute;cis&eacute;es &agrave; l&#39;article 7.1 ci-apr&egrave;s.<br />\r\n<br />\r\nDans le cas de l&rsquo;e-r&eacute;servation au sein d&rsquo;un Magasin, le prix &agrave; payer par l&rsquo;Internaute pour le Produit sera le prix pratiqu&eacute; lors de l&rsquo;achat effectif du Produit en Magasin.<br />\r\n&nbsp;</p>\r\n\r\n<h5>5. PASSATION DE COMMANDE</h5>\r\n\r\n<p>Le Vendeur rappelle &agrave; l&rsquo;Internaute que toute commande sur le Site doit &ecirc;tre effectu&eacute;e &agrave; des fins personnelles. L&rsquo;Internaute s&#39;engage &agrave; ne pas revendre les Produits et/ou &agrave; les utiliser &agrave; des fins autres que personnelles et notamment commerciales. L&rsquo;Internaute reconna&icirc;t que le Vendeur sera libre d&rsquo;annuler toute commande qui lui semblerait &ecirc;tre effectu&eacute;e &agrave; des fins autres que personnelles et/ou s&rsquo;il y a suspicion de fraude.<br />\r\n<br />\r\n<br />\r\n5.1. Passation de commande sur le Site<br />\r\n<br />\r\n(i) Constitution du panier<br />\r\n<br />\r\nL&rsquo;Internaute s&eacute;lectionnera le(s) Produit(s) qu&rsquo;il souhaite commander via la Fiche correspondante en s&eacute;lectionnant notamment la taille, le coloris, et en cliquant sur &laquo; Ajouter &agrave; mon panier &raquo; (ou mention &eacute;quivalente). Lors de l&rsquo;ajout au panier, et dans l&rsquo;hypoth&egrave;se o&ugrave; l&rsquo;Internaute disposerait d&rsquo;un code remise, il sera invit&eacute; &agrave; le saisir dans le champ pr&eacute;vu &agrave; cet effet.<br />\r\n<br />\r\nL&#39;Internaute pourra &agrave; tout moment acc&eacute;der au contenu de son panier en cliquant sur les Produits (redirection vers les Fiches des Produits pr&eacute;c&eacute;demment s&eacute;lectionn&eacute;s), permettant &agrave; l&#39;Internaute de v&eacute;rifier les sp&eacute;cificit&eacute;s de chacun des Produits choisis (taille, couleur, composition), ainsi que leur prix (prix unitaire TTC, total remise si le produit est concern&eacute; par une offre commerciale, prix total TTC).<br />\r\n<br />\r\nPour valider son panier et confirmer sa commande, l&rsquo;Internaute devra (a) cocher la case relative &agrave; l&#39;acceptation des CGV, (b) reconna&icirc;tre que la validation de son panier l&rsquo;engage au paiement de sa commande, et (c) cliquer sur &laquo; Je commande et passe &agrave; l&rsquo;&eacute;tape suivante &raquo; (ou mention &eacute;quivalente). Faute de valider ces diff&eacute;rents points, l&rsquo;Internaute ne pourra valider sa commande et passer &agrave; l&rsquo;&eacute;tape suivante : &laquo; Identification &raquo;.<br />\r\n<br />\r\n(ii) Choix du mode d&rsquo;identification<br />\r\n<br />\r\nL&#39;Internaute doit s&#39;identifier, soit en indiquant le nom d&#39;utilisateur et le mot de passe de son compte- client, soit, s&#39;il n&#39;a pas cr&eacute;&eacute; de compte pr&eacute;c&eacute;demment, en choisissant l&rsquo;une des options figurant &agrave; l&rsquo;article 6 des pr&eacute;sentes CGV.<br />\r\n<br />\r\n<br />\r\n(iii) Choix du mode et du lieu de livraison<br />\r\n<br />\r\nUne fois son identification effectu&eacute;e, l&rsquo;Internaute choisira le lieu et le mode de livraison de sa commande conform&eacute;ment aux dispositions de l&rsquo;article 7 ci-apr&egrave;s.<br />\r\n<br />\r\n(iv) Choix du mode de paiement<br />\r\n<br />\r\nUne fois le mode et le lieu de livraison d&eacute;finis par l&rsquo;Internaute, celui-ci validera le mode de r&egrave;glement parmi ceux propos&eacute;s sur le Site, conform&eacute;ment aux dispositions de l&rsquo;article 8 ci-apr&egrave;s.<br />\r\n<br />\r\n(v) Confirmation de la commande<br />\r\n<br />\r\nApr&egrave;s validation du paiement, l&#39;Internaute recevra automatiquement un premier courriel confirmant la r&eacute;ception et le d&eacute;tail de sa commande, puis un second courriel contenant la facture de la commande (ci-apr&egrave;s d&eacute;nomm&eacute;e la &laquo; Confirmation de commande &raquo;). La Confirmation de commande constituera le contrat de vente entre l&#39;Internaute et le Vendeur. Le montant de la facture sera d&eacute;bit&eacute; lors de ladite Confirmation.<br />\r\n<br />\r\nL&rsquo;Internaute, pourra, en tout &eacute;tat de cause, &agrave; tout moment, en se connectant &agrave; son compte-client, avoir acc&egrave;s aux diff&eacute;rents &eacute;l&eacute;ments relatifs &agrave; sa (es) commande(s) et notamment ses factures.<br />\r\n<br />\r\nLe Vendeur attire, toutefois, l&rsquo;attention de l&rsquo;Internaute sur le fait que l&#39;envoi de ces courriels ne garantit en aucun cas de la disponibilit&eacute; du Produit conform&eacute;ment aux dispositions de l&#39;article 3 ci- dessus.<br />\r\n<br />\r\nEn cas d&#39;indisponibilit&eacute; du Produit, le Vendeur en informera l&#39;Internaute par courriel dans un d&eacute;lai de 2 (deux) jours ouvr&eacute;s (soit du lundi au vendredi) &agrave; compter de la Confirmation de commande.<br />\r\n<br />\r\nLe Vendeur s&rsquo;engage alors &agrave; proc&eacute;der, dans un d&eacute;lai maximum de 3 (trois) jours ouvr&eacute;s &agrave; compter de l&#39;envoi du courriel d&#39;information de l&#39;indisponibilit&eacute; du Produit, au remboursement du prix vers&eacute; par l&#39;Internaute pour le Produit indisponible, ainsi que les frais de livraison &eacute;ventuellement pay&eacute;s par l&rsquo;Internaute, dans l&#39;hypoth&egrave;se o&ugrave; l&rsquo;indisponibilit&eacute; concernerait l&#39;ensemble de la commande consid&eacute;r&eacute;e. Dans le cas contraire, si l&rsquo;indisponibilit&eacute; ne porte pas sur l&rsquo;int&eacute;gralit&eacute; de la commande consid&eacute;r&eacute;e, le Vendeur s&rsquo;engage &agrave; ne rembourser que le prix pay&eacute; pour le Produit indisponible, &agrave; l&rsquo;exclusion des frais de livraison de la commande &eacute;ventuellement pay&eacute;s par l&rsquo;Internaute.<br />\r\n<br />\r\nLe Vendeur rappelle qu&rsquo;il se r&eacute;serve le droit de refuser ou d&#39;annuler toute commande en cas de circonstances particuli&egrave;res :<br />\r\n&nbsp;</p>\r\n\r\n<ul>\r\n	<li>(i) Quand la commande a &eacute;t&eacute; pass&eacute;e dans des conditions laissant l&eacute;gitimement penser que la commande a &eacute;t&eacute; r&eacute;alis&eacute;e pour des besoins professionnels et non personnels ;</li>\r\n	<br />\r\n	<li>(ii) lorsque les coordonn&eacute;es communiqu&eacute;es sont inexactes ou incompl&egrave;tes ;</li>\r\n	<br />\r\n	<li>(iii) en cas de non-respect des pr&eacute;sentes conditions g&eacute;n&eacute;rales de vente par l&#39;Internaute.</li>\r\n	<br />\r\n	<li>(iv) en cas de suspicion de fraude.</li>\r\n</ul>\r\n\r\n<p><br />\r\n5.2. Passation de commande via l&rsquo;e-r&eacute;servation<br />\r\n<br />\r\n(i) Constitution du panier d&rsquo;e-r&eacute;servation<br />\r\n<br />\r\nL&rsquo;Internaute s&eacute;lectionnera le Produit qu&rsquo;il souhaite e-r&eacute;server via la fiche correspondante en s&eacute;lectionnant notamment la taille, le coloris et en cliquant sur &laquo; Disponible en boutique &raquo; (ou mention &eacute;quivalente) ; &eacute;tant rappel&eacute; que cette facult&eacute; n&rsquo;est offerte que pour des magasins localis&eacute;s en France M&eacute;tropolitaine.<br />\r\n<br />\r\nL&rsquo;Internaute ne pourra en aucun cas e-r&eacute;server plus de 10&nbsp;(dix) Produits par jour.<br />\r\n<br />\r\nL&rsquo;Internaute localis&eacute; hors de France m&eacute;tropolitaine pourra e-r&eacute;server un Produit uniquement dans les magasins situ&eacute;s en France M&eacute;tropolitaine.<br />\r\n<br />\r\n(ii) Choix de Magasin<br />\r\n<br />\r\nSi l&rsquo;Internaute a accept&eacute; la g&eacute;olocalisation, le Magasin le plus proche lui sera propos&eacute;. L&rsquo;Internaute pourra valider cette pr&eacute;-s&eacute;lection ou saisir manuellement toute autre ville de son choix pour s&eacute;lectionner ensuite le Magasin de son choix.<br />\r\n<br />\r\nSi l&rsquo;Internaute n&rsquo;a pas accept&eacute; la g&eacute;olocalisation, il saisira manuellement la ville de son choix pour s&eacute;lectionner ensuite le Magasin de son choix.<br />\r\n<br />\r\nLe Magasin le plus proche propos&eacute; &agrave; l&rsquo;Internaute situ&eacute; hors de France m&eacute;tropolitaine ou choisi par ce dernier ne pourra &ecirc;tre qu&rsquo;un magasin situ&eacute; en France M&eacute;tropolitaine.<br />\r\n<br />\r\n(iii) Identification<br />\r\n<br />\r\nUne fois le Magasin valid&eacute;, l&rsquo;Internaute devra remplir le formulaire de contact afin de pouvoir &ecirc;tre pr&eacute;venu de la r&eacute;servation ou non du Produit souhait&eacute;.<br />\r\n<br />\r\nLors de son identification, il pourra &ecirc;tre demand&eacute; un code de validation de l&rsquo;e-r&eacute;servation &agrave; l&rsquo;Internaute. Dans ce cas, l&rsquo;Internaute recevra par sms ou courriel ledit code qu&rsquo;il devra reporter dans le formulaire de contact afin de valider sa e-r&eacute;servation.<br />\r\n<br />\r\nL&rsquo;Internaute devra enfin accepter les CGU de l&rsquo;e-r&eacute;servation sur le Site afin de valider sa e- r&eacute;servation.<br />\r\n<br />\r\n(iv) Suivi de l&rsquo;e-r&eacute;servation et retrait en Magasin<br />\r\n<br />\r\nUne fois la demande d&rsquo;e-r&eacute;servation du Produit valid&eacute;e, l&rsquo;Internaute recevra dans un d&eacute;lai de 1 (une) heure un courriel de confirmation de la disponibilit&eacute; ou non du Produit s&eacute;lectionn&eacute;. Sous r&eacute;serve de la disponibilit&eacute; du Produit dans le Magasin s&eacute;lectionn&eacute;, le Produit sera r&eacute;serv&eacute; au nom de l&rsquo;Internaute dans le Magasin s&eacute;lectionn&eacute;.<br />\r\n<br />\r\nL&rsquo;Internaute pourra annuler sa e-r&eacute;servation en cliquant sur &laquo; Annuler l&rsquo;e-r&eacute;servation &raquo; (ou toute mention &eacute;quivalente) sur le lien pr&eacute;vu &agrave; cet effet dans le courriel de confirmation de l&rsquo;e-r&eacute;servation.<br />\r\nA r&eacute;ception du courriel de confirmation de l&rsquo;e-r&eacute;servation, l&rsquo;Internaute disposera de 48 (quarante-huit) heures pour effectuer le retrait en Magasin du Produit concern&eacute;.<br />\r\n<br />\r\nFaute pour l&rsquo;Internaute de retirer le Produit en Magasin dans ledit d&eacute;lai de 48 (quarante-huit) heures, le produit concern&eacute; sera remis en surface de vente.<br />\r\n<br />\r\nLe paiement du Produit s&rsquo;effectuera en magasin lors de son retrait.<br />\r\n&nbsp;</p>\r\n\r\n<h5>6. IDENTIFICATION LORS D&rsquo;UNE PASSATION DE COMMANDE SUR LE SITE</h5>\r\n\r\n<p>6.1 Pour toute passation de commande sur le Site, l&rsquo;Internaute aura le choix entre l&rsquo;une des options d&eacute;crite ci-apr&egrave;s, soit :<br />\r\n&nbsp;</p>\r\n\r\n<p>Cr&eacute;ation d&rsquo;un compte-client directement sur le Site<br />\r\n&nbsp;</p>\r\n\r\n<p>L&rsquo;Internaute devra, renseigner, sur la page d&eacute;di&eacute;e, tous les champs signal&eacute;s par un ast&eacute;risque et notamment : sa civilit&eacute;, ses nom et pr&eacute;nom, son adresse e-mail. L&rsquo;Internaute s&rsquo;engage &agrave; renseigner son profil avec des informations exactes et &agrave; jour et d&eacute;gage le Vendeur de toute responsabilit&eacute; du fait de l&rsquo;inexactitude des informations communiqu&eacute;es &agrave; l&rsquo;occasion de la cr&eacute;ation de son compte-client.<br />\r\n<br />\r\nL&rsquo;Internaute validera la cr&eacute;ation de son compte-client par l&rsquo;enregistrement et la confirmation d&rsquo;un mot de passe ; qu&rsquo;il s&rsquo;engage &agrave; conserver secret.<br />\r\nL&rsquo;Internaute reconna&icirc;t que l&rsquo;usage du compte-client est fait sous son enti&egrave;re responsabilit&eacute;.<br />\r\nIl s&rsquo;engage &agrave; informer le Vendeur de toute usurpation de son mot de passe et/ou de son compte-client.<br />\r\n&nbsp;</p>\r\n\r\n<p>Cr&eacute;ation d&rsquo;un compte-client sur le Site via Amazon Pay (uniquement si ce service est disponible sur le Site)<br />\r\n&nbsp;</p>\r\n\r\n<p>Amazon Pay est un service propos&eacute; par la soci&eacute;t&eacute; tierce Amazon Payments Europe, S.C.A, (&laquo; Amazon Payments &raquo;) permettant &agrave; l&rsquo;Internaute de passer une commande sur le Site au moyen de son compte Amazon Pay. Ce service est soumis aux conditions d&rsquo;utilisation d&eacute;finies par Amazon Payments, consultables par l&rsquo;Internaute sur le site Amazon Pay accessible &agrave; l&rsquo;adresse suivante : https://pay.amazon.com/fr.<br />\r\n<br />\r\nL&rsquo;Internaute peut s&rsquo;identifier au moyen de son compte Amazon Pay en cliquant sur le bouton Amazon Pay depuis son panier d&rsquo;achat. L&rsquo;Internaute est alors redirig&eacute; vers un espace d&rsquo;authentification Amazon Pay g&eacute;r&eacute; par Amazon Payments. Une fois authentifi&eacute; via son compte Amazon Pay, l&rsquo;Internaute est inform&eacute; que des informations de son compte Amazon Pay seront transmises avec son consentement pr&eacute;alable au Vendeur, notamment aux fins de gestion de sa commande sur le Site. Le traitement de ces informations par le Vendeur est plus amplement d&eacute;crit &agrave; l&rsquo;article 14 des pr&eacute;sentes CGV.<br />\r\n<br />\r\nLorsque l&rsquo;Internaute passe pour la premi&egrave;re fois une commande en utilisant Amazon Pay, un compte-client est cr&eacute;&eacute; sur le Site &agrave; partir des informations du compte Amazon Pay de l&rsquo;Internaute. L&rsquo;Internaute peut ensuite se connecter directement &agrave; son compte-client sur le Site en utilisant les identifiants de son compte Amazon Pay.<br />\r\n<br />\r\nUne fois authentifi&eacute; sur Amazon Pay, l&rsquo;Internaute est redirig&eacute; vers le Site pour poursuivre sa commande.<br />\r\n&nbsp;</p>\r\n\r\n<p>Cr&eacute;ation d&rsquo;un compte-client sur le Site via Facebook (uniquement si ce service est disponible sur le Site)<br />\r\n&nbsp;</p>\r\n\r\n<p>La connexion par Facebook est un service propos&eacute; par la soci&eacute;t&eacute; tierce Facebook Ireland Ltd., (&laquo; Facebook &raquo;) permettant &agrave; l&rsquo;Internaute de cr&eacute;er son compte client sur le Site au moyen de son compte Facebook. Ce service est soumis aux conditions d&rsquo;utilisation d&eacute;finies par Facebook, consultables par l&rsquo;Internaute sur le site Facebook accessible &agrave; l&rsquo;adresse suivante : https://fr-fr.facebook.com/terms.<br />\r\n&nbsp;</p>\r\n\r\n<p>Commande sans cr&eacute;ation de compte<br />\r\n&nbsp;</p>\r\n\r\n<p>Il est pr&eacute;cis&eacute; que l&rsquo;Internaute n&rsquo;aura pas l&rsquo;obligation de cr&eacute;er un compte client pour passer commande.<br />\r\n<br />\r\nS&rsquo;il d&eacute;cide de ne pas cr&eacute;er de compte, l&rsquo;Internaute devra uniquement renseigner, sur la page d&eacute;di&eacute;e, tous les champs signal&eacute;s par un ast&eacute;risque et notamment : sa civilit&eacute;, ses nom et pr&eacute;nom, son adresse e-mail et son adresse de livraison/facturation. L&rsquo;Internaute s&rsquo;engage &agrave; renseigner son profil avec des informations exactes et &agrave; jour et d&eacute;gage le Vendeur de toute responsabilit&eacute; du fait de l&rsquo;inexactitude des informations communiqu&eacute;es.</p>\r\n\r\n<p><br />\r\n6.2 Cookies facilitant l&rsquo;identification de l&rsquo;Internaute via son compte-client<br />\r\n&nbsp;</p>\r\n\r\n<p>Afin de faciliter l&#39;identification de l&#39;Internaute par la fourniture simultan&eacute;e de l&#39;adresse e-mail et du mot de passe, celui-ci autorise express&eacute;ment le Vendeur &agrave; disposer sur son disque dur d&#39;un fichier dit &laquo; Cookie &raquo; dans le but de faciliter son identification pour les besoins du traitement des commandes et de recevoir des informations anonymes sur les activit&eacute;s de recherches de l&#39;Internaute sur le Site. La dur&eacute;e de conservation de ces informations n&#39;exc&egrave;dera pas 1 (un) an.<br />\r\n<br />\r\nL&#39;Internaute conserve la possibilit&eacute; de refuser les Cookies sur le Site sans que cela ne limite l&#39;Internaute au regard de la passation de sa commande.<br />\r\n<br />\r\nCes donn&eacute;es seront trait&eacute;es conform&eacute;ment &agrave; l&#39;article 13 &laquo; Charte de confidentialit&eacute; des donn&eacute;es &agrave; caract&egrave;re personnel et politique relative aux cookies&nbsp;&raquo;&nbsp;des pr&eacute;sentes CGV.<br />\r\n<br />\r\nL&#39;Internaute pourra retrouver ces informations dans la rubrique &laquo; Mon Compte &raquo; ou &eacute;quivalent du Site. Dans cette rubrique, l&#39;Internaute peut &eacute;galement obtenir des renseignements sur le suivi de sa commande.<br />\r\n&nbsp;</p>\r\n\r\n<h5>7. LIVRAISON</h5>\r\n\r\n<p>7.1 Lieu de livraison<br />\r\n<br />\r\nLes Produits propos&eacute;s &agrave; la vente sur le Site sont disponibles pour une livraison en France M&eacute;tropolitaine (hors codes postaux des arm&eacute;es sauf livraison Colissimo).<br />\r\n<br />\r\nL&#39;Internaute a le choix entre diff&eacute;rents modes de livraison, &agrave; savoir :</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><u>Livraison &agrave; domicile (Colissimo)</u>&nbsp;:&nbsp;</p>\r\n\r\n<p>5,90&euro; TTC pour un montant total de commande inf&eacute;rieur ou &eacute;gal &agrave; 59&euro; TTC&nbsp;</p>\r\n\r\n<p>Gratuit pour un montant total de commande sup&eacute;rieur &agrave; 59&euro; TTC (ou 19&euro; TTC pour les adh&eacute;rents au programme de fid&eacute;lit&eacute; My Vibs).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><u>Livraison en Point Mondial Relay</u>&nbsp;:&nbsp;</p>\r\n\r\n<p>3&euro; TTC pour un ontant total de commande inf&eacute;rieur ou &eacute;gal &agrave; 59&euro;TTC.&nbsp;</p>\r\n\r\n<p>Gratuit pour un montant total de commande sup&eacute;rieur &agrave; 59&euro; TTC (ou 19&euro; TTC pour les adh&eacute;rents au programme de fid&eacute;lit&eacute; My Vibs).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><u>Livraison en boutique Br&eacute;al situ&eacute;e en France</u>&nbsp;:</p>\r\n\r\n<p>Gratuit</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><u>Livraison &agrave; domicile (Colissimo)</u>&nbsp;:</p>\r\n\r\n<p>5,90&euro; TTC pour un montant total de commande inf&eacute;rieur ou &eacute;gal &agrave; 59&euro; TTC.</p>\r\n\r\n<p>Gratuit pour un montant total de commande sup&eacute;rieur &agrave; 59&euro; TTC (ou 19&euro; TTC pour les adh&eacute;rents au programme de fid&eacute;lit&eacute; My Vibs).</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>ATTENTION, EN CAS D&rsquo;ACHAT DE CARTE CADEAU PHYSIQUE SEULE, LES FRAIS DE LIVRAISON SERONT LES SUIVANTS :</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>FRANCE M&Eacute;TROPOLITAINE</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Livraison en lettre suivie :</p>\r\n\r\n<p><br />\r\n2,90&euro; TTC</p>\r\n\r\n<p>En cas de livraison par Colissimo et d&#39;absence de l&#39;Internaute &agrave; l&#39;adresse indiqu&eacute;e, un avis de passage sera laiss&eacute; dans la bo&icirc;te aux lettres &agrave; ladite adresse.<br />\r\n<br />\r\nSi le(s) Produit(s) est(sont) retourn&eacute;(s) au Vendeur au motif &laquo; n&#39;habite pas &agrave; l&#39;adresse indiqu&eacute;e &raquo;, le Vendeur en informera l&#39;Internaute par courriel. Ce courriel indiquera la proc&eacute;dure &agrave; suivre et, le cas &eacute;ch&eacute;ant, les frais de r&eacute;exp&eacute;dition &agrave; prendre en charge par l&#39;Internaute.<br />\r\n<br />\r\nEn cas de refus de l&#39;Internaute pour la r&eacute;exp&eacute;dition du(es) Produit(s) ou en l&#39;absence de r&eacute;ponse de sa part dans le d&eacute;lai de 7 (sept) jours &agrave; compter du courriel du Vendeur vis&eacute; ci-dessus, ce dernier remboursera &agrave; l&#39;Internaute le seul montant du Produit command&eacute;, &agrave; l&#39;exclusion des frais de livraison initiaux.<br />\r\n<br />\r\n7.2. D&eacute;lais et modes de livraison</p>\r\n\r\n<p>Le vendeur s&#39;engage &agrave; livrer les produits command&eacute;s par l&#39;internaute dans un d&eacute;lai maximum de 3 (trois) &agrave; 5 (cinq) jours ouvr&eacute;s &agrave; compter de la confirmation de commande, selon le mode de livraison choisi par l&#39;internaute ; &eacute;tant pr&eacute;cis&eacute; que ces d&eacute;lais peuvent &ecirc;tre rallong&eacute;s si la commande est pass&eacute;e apres le vendredi 12h00, le samedi ou le dimanche. Dans ce cas; la commande sera trait&eacute;e par le vendeur le lundi suivant. La commande pass&eacute;e par l&#39;internauteun jour f&eacute;ri&eacute; sera trait&eacute;e le jour ouvr&eacute; suivant. Les d&eacute;lais de livraison pourront &eacute;galement petre prolong&eacute;s de 2 (deux) jours en p&eacute;riode de soldes ou de toute autre op&eacute;ration promotionnelle.&nbsp;<br />\r\n<br />\r\nLa date de livraison sera consid&eacute;r&eacute;e comme la date de r&eacute;ception par l&#39;Internaute, ou un tiers d&eacute;sign&eacute; par lui autre que le transporteur, du(es) Produit(s), ou, en cas d&#39;absence de l&#39;Internaute, de l&#39;avis de passage mentionn&eacute; ci-dessus, ou encore, en cas de retour du(es) Produit(s) au motif &laquo; n&#39;habite pas &agrave; l&#39;adresse indiqu&eacute;e &raquo;, &agrave; la date de retour du pli au Vendeur.<br />\r\n<br />\r\nSi un retard est susceptible d&#39;intervenir dans la livraison, le Vendeur s&#39;engage &agrave; en avertir l&#39;Internaute au plus vite.<br />\r\n<br />\r\nEn cas de retard prolong&eacute; de la livraison, l&#39;Internaute est invit&eacute; &agrave; le signaler au plus vite au Service Clients du Vendeur gr&acirc;ce au num&eacute;ro de t&eacute;l&eacute;phone indiqu&eacute; dans le cadre du courriel de Confirmation de commande.<br />\r\n<br />\r\n<br />\r\n7.3. R&eacute;ception des produits<br />\r\n<br />\r\nA r&eacute;ception du(es) Produit(s), l&#39;Internaute est tenu de v&eacute;rifier l&#39;&eacute;tat du(es) Produit(s) livr&eacute;(s). Il dispose d&#39;un d&eacute;lai de 3 (trois) jours ouvr&eacute;s &agrave; compter de la livraison pour formuler toutes r&eacute;serves au transporteur et au Service Clients du Vendeur avec tous les justificatifs correspondants, par lettre recommand&eacute;e avec accus&eacute; de r&eacute;ception, sans pr&eacute;judice de l&#39;application de la garantie l&eacute;gale de conformit&eacute; des Produits ainsi que de la garantie l&eacute;gale des vices cach&eacute;s, qui pourraient s&#39;appliquer en dehors de toute d&eacute;fectuosit&eacute; r&eacute;sultant des conditions de transport.<br />\r\n<br />\r\nL&rsquo;Internaute pourra &agrave; tout moment retrouver les &eacute;l&eacute;ments relatifs &agrave; sa(es) commande(s) en se connectant &agrave; son compte client et notamment son(es) bon(s) de commande, sa(es) facture(s), etc.<br />\r\nCes diff&eacute;rents documents sont conserv&eacute;s sur le compte-client de l&rsquo;Internaute pendant une dur&eacute;e de 3 (trois) ans.<br />\r\n<br />\r\nAu cas o&ugrave; l&rsquo;Internaute a pass&eacute; sa commande sans cr&eacute;ation de compte, celui-ci pourra &agrave; tout moment retrouver les &eacute;l&eacute;ments relatifs &agrave; sa(es) commande(s) et notamment son(es) bon(s) de commande, sa(es) facture(s) etc.., en cliquant sur le lien pr&eacute;vu &agrave; cet effet disponible dans le courriel de confirmation de commande qu&rsquo;il aura pr&eacute;c&eacute;demment re&ccedil;u.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h5>8. MODALIT&Eacute;S DE PAIEMENT</h5>\r\n\r\n<p>L&#39;Internaute a la facult&eacute; de payer par (i) carte bancaire, (ii) carte(s) cadeau(x) Br&eacute;al, (iii) ch&egrave;que fid&eacute;lit&eacute; Breal,(iv) Paypal et (v) Amazon pay (si disponible), suivant les indications figurant sur le Site, &eacute;tant pr&eacute;cis&eacute; qu&rsquo;une commande peut &ecirc;tre r&eacute;gl&eacute;e &agrave; l&rsquo;aide de plusieurs moyens de paiement. Toutefois, aucun paiement partiel ne peut &ecirc;tre effectu&eacute; en cas de paiement par Amazon pay.<br />\r\n<br />\r\nIl est notamment possible de r&eacute;gler la commande en utilisant plusieurs cartes cadeaux Br&eacute;al. Le num&eacute;ro de la carte cadeau figurant sur la carte (13 chiffres) est &agrave; indiquer dans le champ r&eacute;serv&eacute; &agrave; cet effet.<br />\r\n<br />\r\nPour tout paiement par carte bancaire, l&#39;Internaute doit indiquer son num&eacute;ro de carte figurant au recto de celle-ci (16 chiffres), la date de validit&eacute; ainsi que les trois derniers chiffres figurant au dos de celle-ci. Au moment de la saisie, le Site est en mode crypt&eacute; et toutes les informations v&eacute;hicul&eacute;es sont cod&eacute;es. Aucune de ces donn&eacute;es ne transitent en clair sur Internet. Il est pr&eacute;cis&eacute; que l&rsquo;Internaute aura la possibilit&eacute;, s&rsquo;il le souhaite, d&rsquo;enregistrer les coordonn&eacute;es de sa carte bancaire au sein de son compte-client au moment de la premi&egrave;re utilisation de sa carte bancaire. Les donn&eacute;es li&eacute;es &agrave; la carte bancaire de l&rsquo;Internaute seront trait&eacute;es conform&eacute;ment &agrave; l&rsquo;article 13 &laquo; Charte de confidentialit&eacute; des donn&eacute;es &agrave; caract&egrave;re personnel et politique relative aux cookies &raquo;.<br />\r\n&nbsp;</p>\r\n\r\n<p>Afin d&#39;assurer la s&eacute;curit&eacute; des paiements, le Site utilise un service de paiement s&eacute;curis&eacute;. Ce service int&egrave;gre la norme de s&eacute;curit&eacute; SSL. Lorsque la commande est valid&eacute;e, la demande de paiement est rout&eacute;e en temps r&eacute;el sur le gestionnaire de t&eacute;l&eacute;paiement s&eacute;curis&eacute;. Celui-ci adresse une demande d&#39;autorisation au r&eacute;seau carte bancaire. Le gestionnaire de t&eacute;l&eacute;paiement d&eacute;livre un certificat &eacute;lectronique.<br />\r\n<br />\r\nLa survenance d&#39;un impay&eacute; au motif d&#39;une utilisation frauduleuse d&#39;une carte bancaire entra&icirc;nera l&#39;inscription des coordonn&eacute;es du bon de commande associ&eacute; &agrave; cet impay&eacute; au sein d&#39;un fichier incident de paiement. Une d&eacute;claration irr&eacute;guli&egrave;re ou une anomalie pourra &eacute;galement faire l&#39;objet d&#39;un traitement sp&eacute;cifique.<br />\r\n<br />\r\nPour tout paiement par PayPal, l&#39;Internaute saisit son identifiant et son mot de passe sur l&#39;interface de PayPal, puis valide par simple clic. Il v&eacute;rifie le montant pour lequel il souhaite r&eacute;gler la commande et confirme en cliquant sur le paiement par PayPal.<br />\r\n<br />\r\nSi le service Amazon Pay est disponible sur le Site : Pour tout paiement par Amazon Pay, l&rsquo;Internaute doit s&rsquo;identifier via son compte Amazon Pay dans les conditions pr&eacute;vues &agrave; l&rsquo;article 6 des pr&eacute;sentes CGV. Apr&egrave;s avoir v&eacute;rifi&eacute; puis valid&eacute; sa commande sur le Site, il confirme son ordre de paiement au profit d&rsquo;Amazon Payments pour le r&egrave;glement de sa commande. L&rsquo;Internaute est inform&eacute; qu&rsquo;il ne paye ainsi pas le Vendeur pour la passation de sa commande sur le Site. Pour toute question ou probl&egrave;me relatif au paiement de sa commande, l&rsquo;Internaute peut ainsi contacter Amazon Payments.<br />\r\n<br />\r\nLe Vendeur ne livrera pas la commande si le paiement n&#39;est pas effectif. Le Vendeur pourra &eacute;galement suspendre la livraison ou annuler la commande, en cas de difficult&eacute;s dans le processus de paiement (anomalie dans le paiement), en cas de non-conformit&eacute; aux modalit&eacute;s de paiement mentionn&eacute;es ci- dessus, en cas de non-paiement, total ou partiel, d&#39;une commande pr&eacute;c&eacute;dente ou en cours.<br />\r\n<br />\r\nAfin d&rsquo;optimiser la s&eacute;curit&eacute; des paiements, le Vendeur utilise la proc&eacute;dure 3Dsecure, par laquelle l&rsquo;Internaute re&ccedil;oit sur son t&eacute;l&eacute;phone portable un code &agrave; reporter sur la page de paiement apr&egrave;s avoir communiqu&eacute; toutes les r&eacute;f&eacute;rences de sa carte bancaire. Le Vendeur pourra &eacute;galement, dans cette perspective, proc&eacute;der &agrave; des demandes de justificatifs compl&eacute;mentaires (copie carte nationale d&rsquo;identit&eacute;, justificatif de domicile) dont les seuls destinataires sont les membres de son service client habilit&eacute;s &agrave; traiter la lutte contre la fraude. En cas de d&eacute;faut de r&eacute;ponse, le Vendeur se r&eacute;serve la possibilit&eacute; d&rsquo;annuler la commande. L&rsquo;Internaute dispose d&rsquo;un droit d&rsquo;acc&egrave;s, de rectification et de suppression de ses donn&eacute;es personnelles aupr&egrave;s du service client du Vendeur et dans les conditions pr&eacute;cis&eacute;es &agrave; l&rsquo;article 13 &laquo; Charte de confidentialit&eacute; des donn&eacute;es &agrave; caract&egrave;re personnel et politique relative aux cookies &raquo; des pr&eacute;sentes conditions g&eacute;n&eacute;rales de vente.<br />\r\n<br />\r\nLe service clients est joignable via le formulaire de contact :&nbsp;<a href=\"https://www.breal.net/fr/contact.cfm\">https://www.breal.net/fr/contact.cfm.</a><br />\r\n&nbsp;</p>\r\n\r\n<h5>9. CLAUSE DE R&Eacute;SERVE DE PROPRI&Eacute;T&Eacute; ET TRANSFERT DE RISQUES</h5>\r\n\r\n<p>Les Produits demeurent la propri&eacute;t&eacute; du Vendeur jusqu&#39;au complet paiement du prix de la commande. Toutefois, les risques des marchandises livr&eacute;es sont transf&eacute;r&eacute;s &agrave; l&#39;Internaute &agrave; compter de la prise de possession physique du(es) Produit(s) par lui-m&ecirc;me ou par un tiers autre que le transporteur mandat&eacute; par le Vendeur.<br />\r\n&nbsp;</p>\r\n\r\n<h5>10. R&Eacute;TRACTATION ET RETOUR DES PRODUITS</h5>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>L&#39;Internaute dispose&nbsp;d&#39;un d&eacute;lai de 30 (trente) jours (ci-apr&egrave;s d&eacute;nomm&eacute; &laquo; D&eacute;lai de r&eacute;tractation &raquo;) &agrave; compter de la r&eacute;ception de la commande telle que d&eacute;finie &agrave; l&#39;article 7.2 ci-avant, pour (i) exercer son droit de r&eacute;tractation sans avoir &agrave; justifier d&rsquo;un motif, et (ii) retourner au Vendeur le(s) Produit(s) concern&eacute;(s) (ci-apr&egrave;s d&eacute;nomm&eacute; &laquo; Droit de r&eacute;tractation &raquo;).<br />\r\n<br />\r\nPour mettre en &oelig;uvre son Droit de r&eacute;tractation, l&#39;Internaute devra retourner au Vendeur le(s) Produit(s) concern&eacute;(s), accompagn&eacute;(s) du formulaire de r&eacute;tractation d&ucirc;ment rempli (figurant sur le Site via le lien&nbsp;<a href=\"https://www.breal.net/on/demandware.static/-/Library-Sites-SharedLibraryBreal/default/dwf7d488d5/PDF/BRL_procedure_retour_complet.pdf\" rel=\"nofollow\" target=\"_blank\">cliquez ici</a>), avant l&rsquo;expiration du D&eacute;lai de r&eacute;tractation, dans les conditions ci-apr&egrave;s pr&eacute;cis&eacute;es: A d&eacute;faut d&rsquo;imprimer ledit formulaire, l&rsquo;Internaute pourra exercer son Droit &agrave; r&eacute;tractation sur &laquo; papier libre &raquo; dans le D&eacute;lai de r&eacute;tractation en respectant les dispositions ci-apr&egrave;s.</p>\r\n\r\n<p><br />\r\nL&rsquo;Internaute devra retourner le(s) Produit(s)<br />\r\n<br />\r\n<u>Soit gratuitement en d&eacute;posant son colis</u>&nbsp;:&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<ul>\r\n	<li>- Dans la boutique de son choix ou :</li>\r\n	<li>&nbsp;</li>\r\n	<li>- En bureau de Poste* ou</li>\r\n	<li>&nbsp;</li>\r\n	<li>- Dans l&#39;un des points Colissimo* dont la liste figure sur&nbsp;&nbsp;<a href=\"https://www.laposte.fr/particulier/outils/trouver-un-point-de-retrait-ou-de-depot-colissimo\" rel=\"nofollow\" target=\"_blank\">www.colissimo.fr/retour</a></li>\r\n	<li>Si le service est disponible dans le lieu du domicile de l&#39;Internaute, dans sa boite aux lettres avant 8h du matin et en faisant une demande sur www.colissimo.fr/retour.bal*&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>*En utilisant l&#39;&eacute;tiquette de retour Colissimo (&agrave; imprimer et apposer sur le colis), disponible via le compte client de l&#39;internaute ou, en l&#39;absence de compte client, via le lien disponible dans l&#39;email de confrmation de commande qu&#39;il aura re&ccedil;u.</li>\r\n	<li>&nbsp;</li>\r\n</ul>\r\n\r\n<p><u>Soit par voie postale &agrave; l&#39;adresse suivante</u>&nbsp;- &eacute;tant pr&eacute;cis&eacute; que les frais de retours sont &agrave; la charge de l&#39;Internaute :&nbsp;</p>\r\n\r\n<ul>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>&nbsp;</li>\r\n	<li>C-Log Saint-Malo</li>\r\n	<li>Retour E-commerce - Br&eacute;al</li>\r\n	<li>Rue Claude Chapel</li>\r\n	<li>35400 SAINT-MALO\r\n	<ul>\r\n		<li>&nbsp;</li>\r\n	</ul>\r\n	</li>\r\n</ul>\r\n\r\n<p><br />\r\nQuel que soit le mode de retour choisi, l&rsquo;Internaute doit imp&eacute;rativement accompagner son produit retourn&eacute; du bon de retour dument compl&eacute;t&eacute; et t&eacute;l&eacute;charg&eacute; &agrave; partir de son compte client ou de la d&eacute;claration libre de r&eacute;tractation reprenant les r&eacute;f&eacute;rences de la commande et de l&rsquo;exp&eacute;dition.<br />\r\n<br />\r\nEn cas d&#39;exercice de son Droit de r&eacute;tractation par l&#39;Internaute, le Vendeur remboursera l&rsquo;Internaute de tous les paiements re&ccedil;us relatifs &agrave; l&rsquo;achat du/des Produit(s) pour lequel (lesquels) le Droit de r&eacute;tractation est exerc&eacute;, y compris les frais de livraison initiaux &eacute;ventuellement pay&eacute;s par l&rsquo;Internaute, sous r&eacute;serve que la r&eacute;tractation porte sur l&rsquo;int&eacute;gralit&eacute; de la commande. A d&eacute;faut de porter sur l&rsquo;int&eacute;gralit&eacute; de la commande, l&rsquo;exercice du Droit de r&eacute;tractation ne donnera pas lieu au remboursement des frais de livraison initiaux &eacute;ventuellement pay&eacute;s par l&rsquo;Internaute.<br />\r\n<br />\r\nLe remboursement du(es) Produit(s) retourn&eacute;(s) et, le cas &eacute;ch&eacute;ant les &eacute;ventuels frais de livraison initiaux pay&eacute;s par l&rsquo;Internaute lors de la commande, se fera au plus tard dans un d&eacute;lai de 14 (quatorze) jours &agrave; compter de la date &agrave; laquelle le Vendeur aura r&eacute;cup&eacute;r&eacute; le/les Produit/s retourn&eacute;/s.<br />\r\nLe remboursement de l&rsquo;Internaute se fera selon le m&ecirc;me moyen de paiement utilis&eacute; par l&rsquo;Internaute pour le paiement de sa commande.<br />\r\n<br />\r\nLe remboursement de l&rsquo;Internaute se fera selon le m&ecirc;me moyen de paiement utilis&eacute; par l&rsquo;Internaute pour le paiement de sa commande.<br />\r\n<br />\r\nDans l&rsquo;hypoth&egrave;se d&rsquo;un paiement de commande par l&rsquo;Internaute par carte bancaire et par carte cadeau, et/ou ch&egrave;que fid&eacute;lit&eacute;, le remboursement se fera prioritairement par carte bancaire dans la limite du montant pay&eacute; par carte bancaire par l&rsquo;Internaute et le solde &eacute;ventuel donnera lieu &agrave; l&rsquo;&eacute;mission d&rsquo;une&nbsp;carte cadeau virtuelle.<br />\r\n<br />\r\nLe Vendeur se r&eacute;serve le droit de refuser tout Produit retourn&eacute; qui serait d&eacute;pr&eacute;ci&eacute; en raison de manipulations de l&#39;Internaute autres que celles n&eacute;cessaires pour &eacute;tablir la nature et les caract&eacute;ristiques du (des) Produit(s) concern&eacute;(s) par le retour. Il en sera ainsi si le Produit est endommag&eacute;, sali, incomplet ou ayant &eacute;t&eacute; port&eacute;, exception faite de l&rsquo;essayage du Produit. Par ailleurs, le Vendeur n&#39;est pas tenu d&#39;accepter les retours de Produit(s) et de proc&eacute;der au remboursement du(es) Produit(s), dans le cas o&ugrave; l&#39;Internaute ne se conformerait pas aux dispositions du pr&eacute;sent article relatives aux conditions d&#39;exercice du droit de r&eacute;tractation.<br />\r\n&nbsp;</p>\r\n\r\n<h5>11. GARANTIES</h5>\r\n\r\n<p>11.1 Les Produits fournis par le Vendeur b&eacute;n&eacute;ficient des garanties suivantes :<br />\r\n<br />\r\nLe Vendeur est tenu des d&eacute;fauts de conformit&eacute; du (des) Produit(s) &agrave; la commande de l&rsquo;Internaute dans les conditions des articles L 217-4 et suivants du Code de la consommation et des d&eacute;fauts cach&eacute;s de la chose vendue dans les conditions pr&eacute;vues aux articles 1641 et suivants du Code civil.</p>\r\n\r\n<p>- LA GARANTIE L&Eacute;GALE DE CONFORMIT&Eacute; (ARTICLES L 217-4 ET SUIVANTS DU CODE DE LA CONSOMMATION) :</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p>Cette garantie peut &ecirc;tre actionn&eacute;e par l&#39;Internaute dans le cas o&ugrave; le Produit ne correspondrait pas aux caract&eacute;ristiques pr&eacute;cis&eacute;es dans sa commande.<br />\r\n<br />\r\nL&rsquo;Internaute dispose d&rsquo;un d&eacute;lai de 2 (deux) ans &agrave; compter de la d&eacute;livrance du Produit pour actionner la garantie en renvoyant le Produit concern&eacute; avec tous les justificatifs correspondants dans les conditions de l&rsquo;article 11.2 ci-apr&egrave;s, sans avoir &agrave; rapporter la preuve de l&rsquo;existence d&rsquo;un d&eacute;faut de conformit&eacute; du Produit au moment de la d&eacute;livrance de ce dernier.<br />\r\n<br />\r\nEn cas d&rsquo;application de la garantie de non-conformit&eacute;, l&rsquo;Internaute pourra choisir entre la r&eacute;paration ou le remplacement du Produit, sous r&eacute;serve des conditions de co&ucirc;ts pr&eacute;vues par l&rsquo;article L 217-9 du Code de la consommation.</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>- LA GARANTIE CONTRE LES VICES CACH&Eacute;S (ARTICLES 1641 ET SUIVANTS DU CODE CIVIL) :</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p>Cette garantie peut &ecirc;tre actionn&eacute;e dans le cas o&ugrave; le Produit est endommag&eacute; ou affect&eacute; par un d&eacute;faut de mati&egrave;re, de conception ou de fabrication rendant le Produit impropre &agrave; l&#39;utilisation.<br />\r\n<br />\r\nL&#39;Internaute dispose d&#39;un d&eacute;lai de 2 (deux) ans &agrave; compter de la d&eacute;couverte du vice pour agir, en renvoyant le Produit concern&eacute; avec tous les justificatifs correspondants dans les conditions de l&#39;article 11.2 ci-apr&egrave;s.<br />\r\n<br />\r\nEn cas d&rsquo;application de la garantie contre les vices cach&eacute;s, l&rsquo;Internaute pourra choisir entre la r&eacute;solution de la vente ou une r&eacute;duction du prix de vente conform&eacute;ment &agrave; l&rsquo;article 1644 du Code civil.</p>\r\n\r\n<p>11.2. Dans le cas o&ugrave; l&#39;Internaute voudrait mettre en &oelig;uvre l&#39;une de ces garanties, il devra dans un premier temps informer le Vendeur par l&#39;envoi d&#39;un courriel via le formulaire de contact disponible sur le Site.<br />\r\n<br />\r\nApr&egrave;s avoir inform&eacute; le Vendeur, l&#39;Internaute devra renvoyer le Produit en pr&eacute;cisant le motif de son retour &agrave; l&#39;adresse suivante :<br />\r\n<br />\r\nC-Log Saint Malo<br />\r\nRetours E-commerce - Br&eacute;al<br />\r\nRue Claude Chapel<br />\r\n35400 SAINT MALO<br />\r\n<br />\r\nToute garantie est exclue en cas de mauvaise utilisation, n&eacute;gligence ou d&eacute;faut d&#39;entretien de la part de l&#39;Internaute, comme en cas d&#39;usure normale du bien, d&#39;accident ou de force majeure.</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p>11.3. Dans le cas o&ugrave; l&rsquo;Internaute est localis&eacute; hors de France m&eacute;tropolitaine et si les dispositions du droit local relatives aux garanties pr&eacute;cit&eacute;es lui sont plus favorables, les dispositions du droit local seront applicables.<br />\r\n&nbsp;</p>\r\n\r\n<h5>12. RESPONSABILIT&Eacute;</h5>\r\n\r\n<p>Le Vendeur ne sera pas consid&eacute;r&eacute; comme responsable ni d&eacute;faillant pour tout retard ou inex&eacute;cution cons&eacute;cutif &agrave; la survenance d&#39;un cas de force majeure habituellement reconnu par la jurisprudence.<br />\r\n<br />\r\nDe la m&ecirc;me fa&ccedil;on, la responsabilit&eacute; du Vendeur ne saurait &ecirc;tre engag&eacute;e pour tous les inconv&eacute;nients ou dommages inh&eacute;rents &agrave; l&#39;utilisation du r&eacute;seau Internet et totalement ext&eacute;rieurs aux diligences et pr&eacute;cautions prises par le Vendeur.<br />\r\n<br />\r\nEn particulier, toute perturbation dans la fourniture du service ou toute intrusion ext&eacute;rieure ou pr&eacute;sence de virus informatiques, ne saurait engager la responsabilit&eacute; du Vendeur.<br />\r\n<br />\r\nEn cas de manquement de la part de l&#39;Internaute aux pr&eacute;sentes CGV, le Vendeur enverra &agrave; l&#39;Internaute &agrave; son adresse de facturation, une mise en demeure d&#39;y rem&eacute;dier. Si cette mise en demeure reste sans effet apr&egrave;s un d&eacute;lai de 8 (huit) jours, le Vendeur pourra de plein droit, supprimer son compte personnel et/ou refuser ses futures commandes. En cas de manquement grave de l&#39;Internaute aux CGV, notamment en cas de fraude, le Vendeur pourra de plein droit, supprimer son compte personnel et/ou refuser ses futures commandes.<br />\r\n&nbsp;</p>\r\n\r\n<h5>13. CHARTE DE CONFIDENTIALIT&Eacute; DES DONN&Eacute;ES &Agrave; CARACT&Egrave;RE PERSONNEL ET POLITIQUE RELATIVE AUX COOKIES</h5>\r\n\r\n<p>La Charte de confidentialit&eacute; des donn&eacute;es &agrave; carct&egrave;re personnel et la politique relative aux cookies est disponnible&nbsp;<a href=\"https://www.breal.net/charte-confidentialite\">ici</a></p>\r\n\r\n<h5>14. PROPRI&Eacute;T&Eacute; INTELLECTUELLE</h5>\r\n\r\n<p>Le Vendeur est propri&eacute;taire de l&#39;ensemble des &eacute;l&eacute;ments constituant le Site et notamment des droits sur les textes, l&#39;architecture g&eacute;n&eacute;rale, les images anim&eacute;es ou non, les graphismes et les sons.<br />\r\n<br />\r\nConform&eacute;ment au Code de la Propri&eacute;t&eacute; Intellectuelle, toute repr&eacute;sentation ou reproduction int&eacute;grale ou partielle faite sans le consentement du Vendeur est illicite. Il en est de m&ecirc;me pour la traduction, l&#39;adaptation ou la transformation, l&#39;arrangement ou la reproduction par un art ou un proc&eacute;d&eacute; quelconque.<br />\r\n<br />\r\nLa violation de cette clause constitue une contrefa&ccedil;on susceptible d&rsquo;entrainer des sanctions p&eacute;nales. En France, au sens du Code de propri&eacute;t&eacute; intellectuelle, la contrefa&ccedil;on constitue un d&eacute;lit pouvant &ecirc;tre puni de 3 ans d&#39;emprisonnement et de 300.000 euros d&#39;amende.<br />\r\n<br />\r\nLes marques distribu&eacute;es par le Vendeur sont des marques d&eacute;pos&eacute;es. La reproduction, l&#39;imitation, l&#39;utilisation, la position, la suppression ou la modification d&#39;une marque d&eacute;pos&eacute;e constitue une contrefa&ccedil;on susceptible d&rsquo;entrainer des sanctions p&eacute;nales. En France, la contrefa&ccedil;on constitue un d&eacute;lit pouvant &ecirc;tre puni de 3 ans d&#39;emprisonnement et de 300.000 euros d&#39;amende.<br />\r\n<br />\r\nL&#39;utilisation du Site par l&#39;Internaute ne lui conf&egrave;re aucun droit de propri&eacute;t&eacute; intellectuelle sur le Site et/ou son contenu.<br />\r\n<br />\r\nAucune disposition des pr&eacute;sentes CGV ne pourra &ecirc;tre interpr&eacute;t&eacute;e comme conc&eacute;dant &agrave; l&#39;Internaute un droit de quelque nature que ce soit sur les &eacute;l&eacute;ments prot&eacute;g&eacute;s par la propri&eacute;t&eacute; intellectuelle, dont le Vendeur pourrait avoir la propri&eacute;t&eacute; ou le droit exclusif d&#39;exploitation.<br />\r\n<br />\r\nL&#39;Internaute qui dispose d&#39;un site Internet &agrave; titre personnel et qui d&eacute;sire placer, pour un usage personnel, sur son site un lien renvoyant directement au Site, doit obligatoirement solliciter pr&eacute;alablement l&#39;autorisation &eacute;crite du Vendeur.<br />\r\n<br />\r\nEn tout &eacute;tat de cause, tout lien, non express&eacute;ment autoris&eacute;, devra &ecirc;tre retir&eacute; sur simple demande du Vendeur.<br />\r\n&nbsp;</p>\r\n\r\n<h5>15. INT&Eacute;GRALIT&Eacute; DU CONTRAT</h5>\r\n\r\n<p>Les pr&eacute;sentes CGV conclues entre le Vendeur et l&#39;Internaute expriment l&#39;int&eacute;gralit&eacute; des droits et des obligations des Parties.<br />\r\n<br />\r\nSi une disposition particuli&egrave;re des pr&eacute;sentes CGV est tenue pour non valide ou d&eacute;clar&eacute;e comme telle par une d&eacute;cision ayant autorit&eacute; de la chose jug&eacute;e d&#39;une juridiction comp&eacute;tente ou si l&#39;une des clauses des pr&eacute;sentes CGV &eacute;tait consid&eacute;r&eacute;e comme nulle et non-avenue par un changement de l&eacute;gislation, de r&eacute;glementation, les autres stipulations garderont toute leur force et leur port&eacute;e. Cela ne saurait en aucun cas affecter la validit&eacute; et le respect des autres dispositions des pr&eacute;sentes CGV.<br />\r\n&nbsp;</p>\r\n\r\n<h5>16. DROIT APPLICABLE</h5>\r\n\r\n<p>Les pr&eacute;sentes CGV sont soumises &agrave; la loi fran&ccedil;aise. L&rsquo;Internaute b&eacute;n&eacute;ficie, en outre, de la protection du droit imp&eacute;ratif du pays de son lieu de r&eacute;sidence habituelle.<br />\r\n&nbsp;</p>\r\n\r\n<h5>17. LITIGES</h5>\r\n\r\n<p>En cas de diff&eacute;rend relatif &agrave; la conclusion, l&#39;ex&eacute;cution, ou la fin d&#39;une commande, l&#39;Internaute peut porter toute r&eacute;clamation aupr&egrave;s du Vendeur par t&eacute;l&eacute;phone (+ 33 (0)1.84.17.25.30) ou par mail en remplissant le formulaire de contact&nbsp;(&nbsp;<a href=\"http://www.breal.net/fr/contact.cfm\">: cliquez-ici</a>)<br />\r\n<br />\r\nFaute de parvenir &agrave; un accord amiable avec le Vendeur, et conform&eacute;ment aux dispositions de l&rsquo;article L 152-2 du Code de la Consommation, l&rsquo;Internaute pourra initier gratuitement une proc&eacute;dure de m&eacute;diation aupr&egrave;s :</p>\r\n\r\n<ul>\r\n	<li>Du M&eacute;diateur de la F&eacute;d&eacute;ration du e-commerce et de la vente &agrave; distance (FEVAD) &ndash; 60 rue la Bo&eacute;tie 75008 Paris &ndash;<a href=\"https://www.breal.net/cdn-cgi/l/email-protection#b2c0d7ded3c6dbdddcd1dddcc1ddf2d4d7c4d3d69cd1dddf\" target=\"_blank\">relationconso@fevad.com</a>,&nbsp;<a href=\"http://www.fevad.com/\" target=\"_blank\">www.fevad.com</a>). Pour conna&icirc;tre les modalit&eacute;s de saisine du M&eacute;diateur de la FEVAD,&nbsp;<a href=\"http://www.mediateurfevad.fr/index.php/espace-consommateur/\" target=\"_blank\">cliquez ici</a>.</li>\r\n	<li>Ou sur la plateforme de r&eacute;solution des litiges mise en ligne par la Commission Europ&eacute;enne&nbsp;<br />\r\n	<a href=\"https://webgate.ec.europa.eu/odr/main/index.cfm?event=main.home.chooseLanguage\" target=\"_blank\">https://webgate.ec.europa.eu/odr/main/index.cfm?event=main.home.chooseLanguage</a>.</li>\r\n</ul>\r\n\r\n<p>Faute de parvenir &agrave; un accord &agrave; l&rsquo;issue de la proc&eacute;dure de m&eacute;diation, l&rsquo;Internaute et/ou le Vendeur pourront saisir les tribunaux comp&eacute;tents.<br />\r\n<br />\r\nDans le cas o&ugrave; l&rsquo;Internaute est localis&eacute; hors de France m&eacute;tropolitaine, l&rsquo;Internaute pourra initier, &agrave; son choix, toute proc&eacute;dure de m&eacute;diation conventionnelle et faire appel au m&eacute;diateur de son choix, initier tout autre mode alternatif des diff&eacute;rends, ou bien saisir les tribunaux comp&eacute;tents.</p>');

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

DROP TABLE IF EXISTS `client`;
CREATE TABLE IF NOT EXISTS `client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UNIQ_C7440455E7927C74` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `email`, `roles`, `password`) VALUES
(2, 'vinyparadize@gmail.com', '[]', '$argon2id$v=19$m=65536,t=4,p=1$clQuNXNkdnRqQk96bHdMRQ$kfxLlh8pz3MWbti/6a5MnsAFdnSC2d1Wm4EySkEnSBg'),
(3, 'vincent-lachatte@bbox.fr', '[]', '$argon2id$v=19$m=65536,t=4,p=1$Wk9wSEZXT0NYREZFNWJ5Nw$KCDDHAHL2qNPjDTfnY2Z9K2X0QooPbpNBVbpqB7Qd00'),
(4, 'Maylee@bbox.fr', '[\"ROLE_ADMIN\"]', '$argon2id$v=19$m=65536,t=4,p=1$TDlNNWVCaXZqeEhHanFkZw$G8bZKIZWXD4yoR0OoRIOZjqXnaiwzdLCT8tvHGP7rOc'),
(5, 'vincent-lechat@bbox.fr', '[]', '$argon2id$v=19$m=65536,t=4,p=1$RWFjYlFUVXh3TklxY2FqQQ$JAPCRdlLIqkPX9igb/ChleGql/ft2HGc61sF66o2470'),
(6, 'romuald@bbox.fr', '[]', '$argon2id$v=19$m=65536,t=4,p=1$bUtYSEdQVC9TOHY4TWR1NQ$bRtAF8ib/iIQUF7Q+zNUi9smKcLotDOMhYbc9xesZ94'),
(7, 'Cathydenis@bbox.fr', '[]', '$argon2id$v=19$m=65536,t=4,p=1$Ljd4S2RMNHpZVzZybS54Lw$LcUCNLsRNxnG3I62JZCFcAv7S27IcUJwC26b4gqsjws'),
(8, 'Rudylessur@bbox.fr', '[]', '$argon2id$v=19$m=65536,t=4,p=1$Nk83cnNCdW9TbUUubk1vSA$4+zhY8qWXyZoq6Wo7ahAkZcH2EFwkp4+m1g+SsqUSvk'),
(9, 'karine@bbox.fr', '[]', '$argon2id$v=19$m=65536,t=4,p=1$TjJCTDhuU3h3aDRybTRmMQ$L5i9nV7/FsaOz/6IRU+jTatp98s7LpIFeu/cQY+gAW8'),
(10, 'jun@bbox.fr', '[]', '$argon2id$v=19$m=65536,t=4,p=1$Z2s2RUdLbjZuSHNZVGZkOA$YCO2CbBCwcT6s6KWkKU7UALZlOC6PNZvyVIghV0+AZo');

-- --------------------------------------------------------

--
-- Structure de la table `commandes`
--

DROP TABLE IF EXISTS `commandes`;
CREATE TABLE IF NOT EXISTS `commandes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `utilisateur_id` int(11) DEFAULT NULL,
  `date` datetime NOT NULL,
  `produits` longtext COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '(DC2Type:array)',
  PRIMARY KEY (`id`),
  KEY `IDX_35D4282CFB88E14F` (`utilisateur_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20210117182702', '2021-01-17 18:27:19', 227),
('DoctrineMigrations\\Version20210117203642', '2021-01-17 20:37:02', 221),
('DoctrineMigrations\\Version20210117211226', '2021-01-17 21:12:34', 251),
('DoctrineMigrations\\Version20210118133044', '2021-01-18 13:30:52', 142),
('DoctrineMigrations\\Version20210120082745', '2021-01-20 08:29:23', 192),
('DoctrineMigrations\\Version20210122100221', '2021-01-22 10:02:35', 188),
('DoctrineMigrations\\Version20210125090712', '2021-01-25 09:07:30', 266),
('DoctrineMigrations\\Version20210127081916', '2021-01-27 08:21:22', 137),
('DoctrineMigrations\\Version20210127082653', '2021-01-27 08:31:15', 120),
('DoctrineMigrations\\Version20210127191513', '2021-01-27 19:15:29', 127),
('DoctrineMigrations\\Version20210127202309', '2021-01-27 20:24:01', 65),
('DoctrineMigrations\\Version20210127204537', '2021-01-27 20:45:45', 74),
('DoctrineMigrations\\Version20210127213223', '2021-01-27 21:32:40', 89),
('DoctrineMigrations\\Version20210128002420', '2021-01-28 00:24:29', 115),
('DoctrineMigrations\\Version20210128015651', '2021-01-28 01:56:59', 129);

-- --------------------------------------------------------

--
-- Structure de la table `entete`
--

DROP TABLE IF EXISTS `entete`;
CREATE TABLE IF NOT EXISTS `entete` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_id` int(11) DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_1333E1433DA5256D` (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `entete`
--

INSERT INTO `entete` (`id`, `image_id`, `titre`, `description`) VALUES
(2, 27, 'Boutique de lunette', 'Toutes les lunettes dont vous avez rêvé');

-- --------------------------------------------------------

--
-- Structure de la table `genre`
--

DROP TABLE IF EXISTS `genre`;
CREATE TABLE IF NOT EXISTS `genre` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `genre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `genre`
--

INSERT INTO `genre` (`id`, `genre`) VALUES
(1, 'Homme'),
(2, 'Femme'),
(7, 'Enfant');

-- --------------------------------------------------------

--
-- Structure de la table `images`
--

DROP TABLE IF EXISTS `images`;
CREATE TABLE IF NOT EXISTS `images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `images`
--

INSERT INTO `images` (`id`, `image`, `updated_at`) VALUES
(7, 'accessoire1-6006a1b640e3a140222297.jpg', '2021-01-19 09:09:10'),
(8, 'accessoire2-60058a1e550e5421018368.jpg', '2021-01-18 13:16:14'),
(9, 'accessoire3-60058a325a69f050642714.jpg', '2021-01-18 13:16:34'),
(10, 'lunette1-60058a4c2d65b994136326.jpg', '2021-01-18 13:16:59'),
(11, 'lunette2-60058a5fc7fbe680205288.jpg', '2021-01-18 13:17:19'),
(12, 'ceinture1-60058a83d1347153567415.jpg', '2021-01-18 13:17:55'),
(13, 'lunette3-60058a9cc7bb3084971081.jpg', '2021-01-18 13:18:20'),
(14, 'ceinture2-60058aabba2cd307597391.jpg', '2021-01-18 13:18:35'),
(15, 'ceinture3-60058ab7a61b7714364137.jpg', '2021-01-18 13:18:47'),
(16, 'lunettehomme1-60058aea00226986919243.jpg', '2021-01-18 13:19:37'),
(18, 'lunettehomme2-60058b0c5e42b666426335.jpg', '2021-01-18 13:20:12'),
(19, 'lunettehomme3-60058b1b8a257388961854.jpg', '2021-01-18 13:20:27'),
(20, 'lunettefemme1-60058c871a672576257230.jpg', '2021-01-18 13:26:30'),
(21, 'lunettefemme2-60058c9b5d0ee998566681.jpg', '2021-01-18 13:26:51'),
(22, 'lunettefemme3-60058cb28b3b0122344033.jpg', '2021-01-18 13:27:14'),
(23, 'background1-6006a21001329803171528.jpg', '2021-01-19 09:10:39'),
(24, 'sph4919-16cm-6007238cbb4b0432927108.jpg', '2021-01-19 18:23:08'),
(25, 'lot-600d50df9a271424695550.jpg', '2021-01-24 10:50:07'),
(26, 'entete-6011bfd92bbda525233320.jpg', '2021-01-27 19:32:40'),
(27, 'homme2-6012688cbb638734919348.jpg', '2021-01-28 07:32:28');

-- --------------------------------------------------------

--
-- Structure de la table `logo`
--

DROP TABLE IF EXISTS `logo`;
CREATE TABLE IF NOT EXISTS `logo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `updated_at` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `logo`
--

INSERT INTO `logo` (`id`, `image`, `updated_at`) VALUES
(1, '1-6007edf9cba71835701082.png', '2021-01-20 08:46:49'),
(2, '2-6007f48535f35045338377.png', '2021-01-20 09:14:44'),
(3, '3-6007f4990f000749123495.png', '2021-01-20 09:15:04');

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

DROP TABLE IF EXISTS `message`;
CREATE TABLE IF NOT EXISTS `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sujet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `commentaire` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `reponse` longtext COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `message`
--

INSERT INTO `message` (`id`, `email`, `sujet`, `commentaire`, `reponse`) VALUES
(1, 'Vincent-duval@bbox.fr', 'Un autre commentaire', 'lalalalalalalalalalalalalalalalalal', 'lalalaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa'),
(2, 'Vincent-duval@bbox.fr', 'Mon sujet', 'lalalalalalalalalalalalala', 'lallalalallalalal'),
(3, 'vinyparadize@gmail.com', 'pas content', 'hhhhhhhhhhhhhhhhhhhhhhhhhhhhhh', 'Ben je t\'emmerde'),
(4, 'Vincent-duval@bbox.fr', 'encore moi', 'mon commentaire', 'Il pue ton commentaire'),
(6, 'Vincent-duval@bbox.fr', 'pas content', 'livraison merdeuse', 'Ben je t\'emmerde'),
(8, 'Maylee-duval@bbox.fr', 'pas content', '<p>Bonjour monsieur mon colis n&#39;est jamais arriv&eacute;</p>', NULL),
(9, 'Vincent-duval@bbox.fr', 'pas content', '<p>Bonjour je m&#39;appelle Vincent</p>', NULL),
(10, 'Vincent-duval@bbox.fr', 'pas content', '<p>coucou tu vas bien&nbsp;je ne suis pas content du tout !!!!!&#39;&#39;&#39;&#39;</p>', NULL),
(11, 'Vincent-duval@bbox.fr', 'pas content', 'Salut à toi mon cher ami', NULL),
(14, 'Vincent-duval@bbox.fr', 'Je suis pas content', 'fhfhfhfhf kfkkfkfkf fkfkfkkf flflfllf fkfkkf', NULL),
(17, 'Vincent-duval@bbox.fr', 'commandes', '<p>Je voudrais commander un lot pour le 20/02/2021</p>', 'Je peux vous livrer a tel date'),
(18, '<strong>', 'pas content', '<p>Je suis pas content</p>', 'Ben je t\'emmerde'),
(19, 'Vincent-duval@bbox.fr', 'mmmmmmmmmmmmmmmmmmmmmmmmmmmmm', '<p>hhhhhhhhhhhhhhhhhhhh</p>', 'Je m\'en bat les couilles');

-- --------------------------------------------------------

--
-- Structure de la table `section`
--

DROP TABLE IF EXISTS `section`;
CREATE TABLE IF NOT EXISTS `section` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `site_internet` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `section`
--

INSERT INTO `section` (`id`, `titre`, `description`, `site_internet`) VALUES
(1, 'En savoir plus sur notre marque', 'Vous voulez en savoir plus sur notre marque rendez vous sur notre site internet lunette@com', '@mobirise.com');

-- --------------------------------------------------------

--
-- Structure de la table `section_deux`
--

DROP TABLE IF EXISTS `section_deux`;
CREATE TABLE IF NOT EXISTS `section_deux` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_id` int(11) DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_52342E353DA5256D` (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `section_deux`
--

INSERT INTO `section_deux` (`id`, `image_id`, `titre`) VALUES
(1, 9, 'Femme'),
(2, 27, 'Homme');

-- --------------------------------------------------------

--
-- Structure de la table `section_entretien`
--

DROP TABLE IF EXISTS `section_entretien`;
CREATE TABLE IF NOT EXISTS `section_entretien` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image_id` int(11) DEFAULT NULL,
  `titre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description1` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description2` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_4915A65F3DA5256D` (`image_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `section_entretien`
--

INSERT INTO `section_entretien` (`id`, `image_id`, `titre`, `description1`, `description2`) VALUES
(1, 19, 'Entretien du produit et conseils', 'blablablablablablablablablablablablablabla', 'blablablablablablablablablablabl blablablablablablablablablablablablablablablabla blablablablablablablablablabla blablablablablablablablablablabla blablablablablablablablablablablablabla blablablablablablabla blablablablablablablablablablabla blablablablablablablablablablablabla blablablablablablablablablablablablablablabla blablablablablablablablablablabla bla');

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur_adresses`
--

DROP TABLE IF EXISTS `utilisateur_adresses`;
CREATE TABLE IF NOT EXISTS `utilisateur_adresses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `utilisateur_id` int(11) DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prenom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cp` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pays` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ville` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `complement` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F162DCCDFB88E14F` (`utilisateur_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `utilisateur_adresses`
--

INSERT INTO `utilisateur_adresses` (`id`, `utilisateur_id`, `nom`, `prenom`, `telephone`, `adresse`, `cp`, `pays`, `ville`, `complement`) VALUES
(2, 2, 'Ranson', 'Prescillia', '0698713739', '32 RUE NUNGESSER', '62160', 'France', 'GRENAY', NULL),
(3, 7, 'Duval', 'Vincent', '+33662507340', '32 RUE NUNGESSER', '62160', 'France', 'GRENAY', NULL);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `FK_23A0E663DA5256D` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`),
  ADD CONSTRAINT `FK_23A0E664296D31F` FOREIGN KEY (`genre_id`) REFERENCES `genre` (`id`),
  ADD CONSTRAINT `FK_23A0E66BCF5E72D` FOREIGN KEY (`categorie_id`) REFERENCES `categorie` (`id`);

--
-- Contraintes pour la table `caracteristique`
--
ALTER TABLE `caracteristique`
  ADD CONSTRAINT `FK_D14FBE8B3DA5256D` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`);

--
-- Contraintes pour la table `commandes`
--
ALTER TABLE `commandes`
  ADD CONSTRAINT `FK_35D4282CFB88E14F` FOREIGN KEY (`utilisateur_id`) REFERENCES `client` (`id`);

--
-- Contraintes pour la table `entete`
--
ALTER TABLE `entete`
  ADD CONSTRAINT `FK_1333E1433DA5256D` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`);

--
-- Contraintes pour la table `section_deux`
--
ALTER TABLE `section_deux`
  ADD CONSTRAINT `FK_52342E353DA5256D` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`);

--
-- Contraintes pour la table `section_entretien`
--
ALTER TABLE `section_entretien`
  ADD CONSTRAINT `FK_4915A65F3DA5256D` FOREIGN KEY (`image_id`) REFERENCES `images` (`id`);

--
-- Contraintes pour la table `utilisateur_adresses`
--
ALTER TABLE `utilisateur_adresses`
  ADD CONSTRAINT `FK_F162DCCDFB88E14F` FOREIGN KEY (`utilisateur_id`) REFERENCES `client` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
