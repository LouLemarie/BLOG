-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  jeu. 18 jan. 2018 à 10:23
-- Version du serveur :  10.1.26-MariaDB
-- Version de PHP :  7.1.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `nfactoryblog`
--

-- --------------------------------------------------------

--
-- Structure de la table `t_articles`
--

CREATE TABLE `t_articles` (
  `ID_ARTICLE` int(11) NOT NULL,
  `titre` varchar(200) NOT NULL,
  `soustitre` varchar(200) DEFAULT NULL,
  `contenu` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_articles`
--

INSERT INTO `t_articles` (`ID_ARTICLE`, `titre`, `soustitre`, `contenu`) VALUES
(26, 'La reproduction des ornithorynque', 'ornithorynque entre mythe et rÃ©alitÃ©s', '<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\">L\'<strong>Ornithorynque</strong>&nbsp;(<em><strong>Ornithorhynchus anatinus</strong></em>) est un animal semi-aquatique&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"End&eacute;misme\" href=\"https://fr.wikipedia.org/wiki/End%C3%A9misme\">end&eacute;mique</a>&nbsp;de l\'est de l\'<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Australie\" href=\"https://fr.wikipedia.org/wiki/Australie\">Australie</a>, y compris la&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Tasmanie\" href=\"https://fr.wikipedia.org/wiki/Tasmanie\">Tasmanie</a>. C\'est l\'une des cinq esp&egrave;ces de l\'ordre des&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Monotremata\" href=\"https://fr.wikipedia.org/wiki/Monotremata\">monotr&egrave;mes</a>, seul ordre de mammif&egrave;res qui&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Oviparit&eacute;\" href=\"https://fr.wikipedia.org/wiki/Oviparit%C3%A9\">pond des &oelig;ufs</a>&nbsp;au lieu de&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Viviparit&eacute;\" href=\"https://fr.wikipedia.org/wiki/Viviparit%C3%A9\">donner naissance &agrave; des petits compl&egrave;tement form&eacute;s</a>&nbsp;(les quatre autres esp&egrave;ces sont des&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"&Eacute;chidn&eacute;\" href=\"https://fr.wikipedia.org/wiki/%C3%89chidn%C3%A9\">&eacute;chidn&eacute;s</a>). C\'est la seule&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Taxon actuel\" href=\"https://fr.wikipedia.org/wiki/Taxon_actuel\">esp&egrave;ce actuelle</a>&nbsp;de la famille des&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Ornithorhynchidae\" href=\"https://fr.wikipedia.org/wiki/Ornithorhynchidae\">Ornithorhynchidae</a>&nbsp;et du genre&nbsp;<em><strong>Ornithorhynchus</strong></em>&nbsp;bien qu\'un grand nombre de fragments d\'esp&egrave;ces fossiles de cette famille et de ce genre aient &eacute;t&eacute; d&eacute;couverts<span id=\"cite_ref-atlas_1-0\" class=\"reference\" style=\"line-height: 1; vertical-align: text-top; position: relative; font-size: 0.8em; top: -5px; padding-left: 1px; unicode-bidi: isolate; white-space: nowrap;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://fr.wikipedia.org/wiki/Ornithorynque#cite_note-atlas-1\">1</a></span>.</p>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\">L\'apparence fantasmagorique de ce&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Mammif&egrave;re\" href=\"https://fr.wikipedia.org/wiki/Mammif%C3%A8re\">mammif&egrave;re</a>&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Oviparit&eacute;\" href=\"https://fr.wikipedia.org/wiki/Oviparit%C3%A9\">pondant des &oelig;ufs</a>, &agrave; la m&acirc;choire corn&eacute;e ressemblant au bec d\'un&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Canard\" href=\"https://fr.wikipedia.org/wiki/Canard\">canard</a>, &agrave; queue &eacute;voquant un&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Castor (genre)\" href=\"https://fr.wikipedia.org/wiki/Castor_(genre)\">castor</a>, qui lui sert &agrave; la fois de gouvernail dans l\'eau et de&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Tissu adipeux\" href=\"https://fr.wikipedia.org/wiki/Tissu_adipeux\">r&eacute;serve de graisse</a>, et &agrave; pattes de&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Loutre\" href=\"https://fr.wikipedia.org/wiki/Loutre\">loutre</a>&nbsp;a fortement surpris les premiers explorateurs qui l\'ont d&eacute;couvert&nbsp;; bon nombre de naturalistes europ&eacute;ens ont cru &agrave; une plaisanterie. C\'est l\'un des rares&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Mammif&egrave;re venimeux\" href=\"https://fr.wikipedia.org/wiki/Mammif%C3%A8re_venimeux\">mammif&egrave;res venimeux</a><span id=\"cite_ref-2\" class=\"reference\" style=\"line-height: 1; vertical-align: text-top; position: relative; font-size: 0.8em; top: -5px; padding-left: 1px; unicode-bidi: isolate; white-space: nowrap;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://fr.wikipedia.org/wiki/Ornithorynque#cite_note-2\">2</a></span>&nbsp;: le m&acirc;le porte sur les pattes post&eacute;rieures un aiguillon qui peut lib&eacute;rer du venin capable de paralyser une jambe humaine ou m&ecirc;me de tuer un chien. Les traits originaux de l\'ornithorynque en font un sujet d\'&eacute;tudes important pour mieux comprendre l\'&eacute;volution des esp&egrave;ces animales et en ont fait un des symboles de l\'Australie&nbsp;: il a &eacute;t&eacute; utilis&eacute; comme mascotte pour de nombreux &eacute;v&eacute;nements nationaux et il figure au verso de la pi&egrave;ce de monnaie de&nbsp;<span class=\"nowrap\" style=\"white-space: nowrap;\">20 cents</span>australiens.</p>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\">Jusqu\'au d&eacute;but du&nbsp;<abbr class=\"abbr\" style=\"border-bottom: 0px; cursor: help; text-decoration-line: none; text-decoration-style: initial;\" title=\"20áµ‰ si&egrave;cle\"><span class=\"romain\" style=\"text-transform: lowercase; font-variant-numeric: normal; font-variant-east-asian: normal; font-variant-caps: small-caps;\">xx</span><sup style=\"line-height: 1; font-size: 10.08px;\">e</sup></abbr>&nbsp;si&egrave;cle, il a &eacute;t&eacute; chass&eacute; pour sa fourrure mais il est prot&eacute;g&eacute; &agrave; l\'heure actuelle. Bien que les programmes de reproduction en captivit&eacute; aient eu un succ&egrave;s tr&egrave;s limit&eacute; et qu\'il soit sensible aux effets de la pollution, l\'esp&egrave;ce n\'est pas consid&eacute;r&eacute;e comme en danger.</p>'),
(27, 'Le bitcoin', 'bitcoin', '<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\"><strong>Bitcoin</strong>&nbsp;(de l\'anglais&nbsp;<em><span class=\"lang-en\" lang=\"en\">bit</span></em>&nbsp;: unit&eacute; d\'information binaire et&nbsp;<em><span class=\"lang-en\" lang=\"en\">coin</span></em>&nbsp;&laquo;&nbsp;pi&egrave;ce de monnaie&nbsp;&raquo;), est d\'une part une&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Monnaie virtuelle\" href=\"https://fr.wikipedia.org/wiki/Monnaie_virtuelle\">monnaie virtuelle</a>&nbsp;de type&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Crypto-monnaie\" href=\"https://fr.wikipedia.org/wiki/Crypto-monnaie\">monnaie cryptographique</a><span id=\"cite_ref-2\" class=\"reference\" style=\"line-height: 1; vertical-align: text-top; position: relative; font-size: 0.8em; top: -5px; padding-left: 1px; unicode-bidi: isolate; white-space: nowrap;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://fr.wikipedia.org/wiki/Bitcoin#cite_note-2\">note 1</a></span>&nbsp;et d\'autre part un&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Syst&egrave;me de paiement\" href=\"https://fr.wikipedia.org/wiki/Syst%C3%A8me_de_paiement\">syst&egrave;me de paiement</a>&nbsp;<a class=\"mw-redirect\" style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Pair-&agrave;-pair\" href=\"https://fr.wikipedia.org/wiki/Pair-%C3%A0-pair\">pair-&agrave;-pair</a><span id=\"cite_ref-3\" class=\"reference\" style=\"line-height: 1; vertical-align: text-top; position: relative; font-size: 0.8em; top: -5px; padding-left: 1px; unicode-bidi: isolate; white-space: nowrap;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://fr.wikipedia.org/wiki/Bitcoin#cite_note-3\">note 2</a></span>, pr&eacute;sent&eacute; par une personne sous le pseudonyme de&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Satoshi Nakamoto\" href=\"https://fr.wikipedia.org/wiki/Satoshi_Nakamoto\">Satoshi Nakamoto</a>, qui annonce son syst&egrave;me en 2008 et publie le&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Code source\" href=\"https://fr.wikipedia.org/wiki/Code_source\">code source</a>&nbsp;en 2009.</p>\r\n<p style=\"margin: 0.5em 0px; line-height: inherit; color: #222222; font-family: sans-serif;\">En 2012, d\'apr&egrave;s la&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Banque centrale europ&eacute;enne\" href=\"https://fr.wikipedia.org/wiki/Banque_centrale_europ%C3%A9enne\">Banque centrale europ&eacute;enne</a>, il s\'agit du sch&eacute;ma de monnaie virtuelle le plus abouti et le mieux r&eacute;pandu, cependant c\'est aussi le plus controvers&eacute;<span id=\"cite_ref-vcs1_4-0\" class=\"reference\" style=\"line-height: 1; vertical-align: text-top; position: relative; font-size: 0.8em; top: -5px; padding-left: 1px; unicode-bidi: isolate; white-space: nowrap;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://fr.wikipedia.org/wiki/Bitcoin#cite_note-vcs1-4\">2</a></span>. D\'ailleurs, la&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Banque centrale europ&eacute;enne\" href=\"https://fr.wikipedia.org/wiki/Banque_centrale_europ%C3%A9enne\">Banque centrale europ&eacute;enne</a>consid&egrave;re le bitcoin comme une&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Commodit&eacute;\" href=\"https://fr.wikipedia.org/wiki/Commodit%C3%A9\">commodit&eacute;</a>&nbsp;et non comme une&nbsp;<a style=\"text-decoration-line: none; color: #0b0080; background: none;\" title=\"Monnaie\" href=\"https://fr.wikipedia.org/wiki/Monnaie\">monnaie</a><span id=\"cite_ref-5\" class=\"reference\" style=\"line-height: 1; vertical-align: text-top; position: relative; font-size: 0.8em; top: -5px; padding-left: 1px; unicode-bidi: isolate; white-space: nowrap;\"><a style=\"text-decoration-line: none; color: #0b0080; background: none;\" href=\"https://fr.wikipedia.org/wiki/Bitcoin#cite_note-5\">3</a></span>.</p>'),
(28, 'test 1', NULL, 'ceci est un test pour voir si l\'article s\'affiche correctement ');

-- --------------------------------------------------------

--
-- Structure de la table `t_articles_has_t_users`
--

CREATE TABLE `t_articles_has_t_users` (
  `T_ARTICLES_ID_ARTICLE` int(11) NOT NULL,
  `T_USERS_ID_USER` int(11) NOT NULL,
  `T_USERS_T_ROLES_ID_ROLE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_categories`
--

CREATE TABLE `t_categories` (
  `ID_CATEGORIE` int(11) NOT NULL,
  `CATLIBELLE` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_categories_has_t_articles`
--

CREATE TABLE `t_categories_has_t_articles` (
  `T_CATEGORIES_ID_CATEGORIE` int(11) NOT NULL,
  `T_ARTICLES_ID_ARTICLE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Structure de la table `t_roles`
--

CREATE TABLE `t_roles` (
  `ID_ROLE` int(11) NOT NULL,
  `ROLEDESI` varchar(45) NOT NULL,
  `ROLEDEF` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_roles`
--

INSERT INTO `t_roles` (`ID_ROLE`, `ROLEDESI`, `ROLEDEF`) VALUES
(1, 'ADMIN', 'ecrit'),
(2, 'USER', 'lit');

-- --------------------------------------------------------

--
-- Structure de la table `t_users`
--

CREATE TABLE `t_users` (
  `ID_USER` int(11) NOT NULL,
  `pseudo` varchar(45) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mdp` char(40) DEFAULT NULL,
  `T_ROLES_ID_ROLE` int(11) NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `t_users`
--

INSERT INTO `t_users` (`ID_USER`, `pseudo`, `email`, `mdp`, `T_ROLES_ID_ROLE`) VALUES
(5, 'dff', 'hedi', '	YIl1CcomlgUg', 2),
(6, 'MOKRANI', 'hedi@gmail.com', 'lyon', 2),
(7, 'LemariÃ©', 'lou@lemarie.com', 'lou', 2),
(8, 'Follin', 'emilie@follin.com', 'emilie', 2),
(9, 'Ballu', 'jerome@ballu.com', 'jerome', 2),
(10, 'Bacon', 'terry@bacon.com', 'terry', 2),
(11, 'Main', 'david@main.com', 'david', 2),
(12, 'Debaze', 'debaze@etienne.com', 'etienne', 2),
(13, 'Hedi', 'h.y.mokrani@gmail.com', 'sdf', 2),
(14, '', '', '', 2),
(15, 'MOKRANI', 'hedi@gmail.com', 'lyon', 2),
(16, 'dsdfqsdf', 'qsdfqsdfqsdfqsdfdqsf', 'qsdfqsdfqsdf', 2),
(17, 's', 's', 's', 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `t_articles`
--
ALTER TABLE `t_articles`
  ADD PRIMARY KEY (`ID_ARTICLE`);

--
-- Index pour la table `t_articles_has_t_users`
--
ALTER TABLE `t_articles_has_t_users`
  ADD PRIMARY KEY (`T_ARTICLES_ID_ARTICLE`,`T_USERS_ID_USER`,`T_USERS_T_ROLES_ID_ROLE`),
  ADD KEY `fk_T_ARTICLES_has_T_USERS_T_USERS1_idx` (`T_USERS_ID_USER`,`T_USERS_T_ROLES_ID_ROLE`),
  ADD KEY `fk_T_ARTICLES_has_T_USERS_T_ARTICLES1_idx` (`T_ARTICLES_ID_ARTICLE`);

--
-- Index pour la table `t_categories`
--
ALTER TABLE `t_categories`
  ADD PRIMARY KEY (`ID_CATEGORIE`);

--
-- Index pour la table `t_categories_has_t_articles`
--
ALTER TABLE `t_categories_has_t_articles`
  ADD PRIMARY KEY (`T_CATEGORIES_ID_CATEGORIE`,`T_ARTICLES_ID_ARTICLE`),
  ADD KEY `fk_T_CATEGORIES_has_T_ARTICLES_T_ARTICLES1_idx` (`T_ARTICLES_ID_ARTICLE`),
  ADD KEY `fk_T_CATEGORIES_has_T_ARTICLES_T_CATEGORIES1_idx` (`T_CATEGORIES_ID_CATEGORIE`);

--
-- Index pour la table `t_roles`
--
ALTER TABLE `t_roles`
  ADD PRIMARY KEY (`ID_ROLE`);

--
-- Index pour la table `t_users`
--
ALTER TABLE `t_users`
  ADD PRIMARY KEY (`ID_USER`,`T_ROLES_ID_ROLE`),
  ADD KEY `fk_T_USERS_T_ROLES_idx` (`T_ROLES_ID_ROLE`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `t_articles`
--
ALTER TABLE `t_articles`
  MODIFY `ID_ARTICLE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT pour la table `t_categories`
--
ALTER TABLE `t_categories`
  MODIFY `ID_CATEGORIE` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `t_roles`
--
ALTER TABLE `t_roles`
  MODIFY `ID_ROLE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `t_users`
--
ALTER TABLE `t_users`
  MODIFY `ID_USER` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `t_articles_has_t_users`
--
ALTER TABLE `t_articles_has_t_users`
  ADD CONSTRAINT `fk_T_ARTICLES_has_T_USERS_T_ARTICLES1` FOREIGN KEY (`T_ARTICLES_ID_ARTICLE`) REFERENCES `t_articles` (`ID_ARTICLE`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_T_ARTICLES_has_T_USERS_T_USERS1` FOREIGN KEY (`T_USERS_ID_USER`,`T_USERS_T_ROLES_ID_ROLE`) REFERENCES `t_users` (`ID_USER`, `T_ROLES_ID_ROLE`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `t_categories_has_t_articles`
--
ALTER TABLE `t_categories_has_t_articles`
  ADD CONSTRAINT `fk_T_CATEGORIES_has_T_ARTICLES_T_ARTICLES1` FOREIGN KEY (`T_ARTICLES_ID_ARTICLE`) REFERENCES `t_articles` (`ID_ARTICLE`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_T_CATEGORIES_has_T_ARTICLES_T_CATEGORIES1` FOREIGN KEY (`T_CATEGORIES_ID_CATEGORIE`) REFERENCES `t_categories` (`ID_CATEGORIE`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Contraintes pour la table `t_users`
--
ALTER TABLE `t_users`
  ADD CONSTRAINT `fk_T_USERS_T_ROLES` FOREIGN KEY (`T_ROLES_ID_ROLE`) REFERENCES `t_roles` (`ID_ROLE`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
