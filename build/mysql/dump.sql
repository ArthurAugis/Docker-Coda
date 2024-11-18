-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : jeu. 12 sep. 2024 à 15:45
-- Version du serveur : 10.6.19-MariaDB
-- Version de PHP : 8.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `auar3589_pokedexsio`
--
CREATE DATABASE IF NOT EXISTS `auar3589_pokedexsio` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `auar3589_pokedexsio`;

-- --------------------------------------------------------

--
-- Structure de la table `tab_avoir`
--

CREATE TABLE `tab_avoir` (
  `CLE_talent` tinyint(4) DEFAULT NULL COMMENT 'Clé étrangère du talent',
  `CLE_pokedex` smallint(6) DEFAULT NULL COMMENT 'Clé étrangère du pokémon',
  `TAV_date_creation` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Date de creation de l''enregistrement du talent',
  `TAV_derniere_modification` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Date de modification de l''enregistrement du talent',
  `TAV_auteur_derniere_modification` varchar(32) NOT NULL COMMENT 'Auteur de la derniere modification de l''enregistrement du talent'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Table associative des talents';

--
-- Déchargement des données de la table `tab_avoir`
--

INSERT INTO `tab_avoir` (`CLE_talent`, `CLE_pokedex`, `TAV_date_creation`, `TAV_derniere_modification`, `TAV_auteur_derniere_modification`) VALUES
(7, 154, '2023-06-26 22:17:51', '2023-06-26 22:17:51', 'Arthur AUGIS'),
(7, 155, '2023-06-26 22:38:24', '2023-06-26 22:38:24', 'Arthur AUGIS'),
(7, 156, '2023-06-26 22:42:49', '2023-06-26 22:42:49', 'Arthur AUGIS');

-- --------------------------------------------------------

--
-- Structure de la table `tab_categorie`
--

CREATE TABLE `tab_categorie` (
  `CLP_categorie` tinyint(4) NOT NULL COMMENT 'Cle primaire de la table categorie',
  `TCA_libelle` varchar(64) NOT NULL COMMENT 'Libelle de la categorie',
  `TCA_description` text NOT NULL COMMENT 'Description de la categorie',
  `TCA_date_creation` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Date et heure de la creation de la categorie',
  `TCA_date_derniere_modification` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Date de la derniere modification de la categorie',
  `TCA_auteur_derniere_modification` varchar(50) NOT NULL COMMENT 'Auteur de la derniere modification de la categorie'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Tables des categories de Pokemon';

--
-- Déchargement des données de la table `tab_categorie`
--

INSERT INTO `tab_categorie` (`CLP_categorie`, `TCA_libelle`, `TCA_description`, `TCA_date_creation`, `TCA_date_derniere_modification`, `TCA_auteur_derniere_modification`) VALUES
(4, 'Graine', 'Pokemon possÃ©dant la catÃ©gorie Graine', '2023-06-26 22:12:14', '2023-06-26 22:12:14', 'Arthur AUGIS');

-- --------------------------------------------------------

--
-- Structure de la table `tab_decrire`
--

CREATE TABLE `tab_decrire` (
  `CLE_version` tinyint(4) NOT NULL COMMENT 'Clé étrangère de la version',
  `CLE_pokedex` smallint(6) DEFAULT NULL COMMENT 'Clé étrangère du pokémon',
  `TDE_description` text NOT NULL COMMENT 'description du pokémon',
  `TDE_date_creation` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Date de creation de l''enregistrement de la description',
  `TDE_derniere_modification` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Date de modification de l''enregistrement de la description',
  `TDE_auteur_derniere_modification` varchar(32) NOT NULL COMMENT 'Auteur de la derniere modification de l''enregistrement de la description'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Table associative de la description';

--
-- Déchargement des données de la table `tab_decrire`
--

INSERT INTO `tab_decrire` (`CLE_version`, `CLE_pokedex`, `TDE_description`, `TDE_date_creation`, `TDE_derniere_modification`, `TDE_auteur_derniere_modification`) VALUES
(7, 154, '', '2023-06-26 22:17:51', '2023-06-26 22:17:51', 'Arthur AUGIS'),
(8, 154, '', '2023-06-26 22:17:51', '2023-06-26 22:17:51', 'Arthur AUGIS'),
(7, 155, '', '2023-06-26 22:38:24', '2023-06-26 22:38:24', 'Arthur AUGIS'),
(8, 155, '', '2023-06-26 22:38:24', '2023-06-26 22:38:24', 'Arthur AUGIS'),
(7, 156, '', '2023-06-26 22:42:49', '2023-06-26 22:42:49', 'Arthur AUGIS'),
(8, 156, '', '2023-06-26 22:42:49', '2023-06-26 22:42:49', 'Arthur AUGIS');

-- --------------------------------------------------------

--
-- Structure de la table `tab_disposer`
--

CREATE TABLE `tab_disposer` (
  `CLE_type` tinyint(4) DEFAULT NULL COMMENT 'Clé étrangère du type du pokémon',
  `CLE_pokedex` smallint(6) DEFAULT NULL COMMENT 'Clé étrangère du pokémon',
  `TDI_date_creation` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Date de creation de l''enregistrement de l''association',
  `TDI_derniere_modification` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Date de modification de l''enregistrement de l''association',
  `TDI_auteur_derniere_modification` varchar(32) NOT NULL COMMENT 'Auteur de la derniere modification de l''enregistrement de l''association'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='table associative des types des pokémons';

--
-- Déchargement des données de la table `tab_disposer`
--

INSERT INTO `tab_disposer` (`CLE_type`, `CLE_pokedex`, `TDI_date_creation`, `TDI_derniere_modification`, `TDI_auteur_derniere_modification`) VALUES
(12, 154, '2023-06-26 22:17:51', '2023-06-26 22:17:51', 'Arthur AUGIS'),
(13, 154, '2023-06-26 22:17:51', '2023-06-26 22:17:51', 'Arthur AUGIS'),
(12, 155, '2023-06-26 22:38:24', '2023-06-26 22:38:24', 'Arthur AUGIS'),
(13, 155, '2023-06-26 22:38:24', '2023-06-26 22:38:24', 'Arthur AUGIS'),
(12, 156, '2023-06-26 22:42:49', '2023-06-26 22:42:49', 'Arthur AUGIS'),
(13, 156, '2023-06-26 22:42:49', '2023-06-26 22:42:49', 'Arthur AUGIS');

-- --------------------------------------------------------

--
-- Structure de la table `tab_evoluer`
--

CREATE TABLE `tab_evoluer` (
  `CLE_pokedex` smallint(6) DEFAULT NULL COMMENT 'Clé étrangère du pokémon',
  `CLE_evolution` smallint(6) DEFAULT NULL COMMENT 'Clé étrangère de l''évolution',
  `TEV_date_creation` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Date de creation de l''enregistrement de l''évolution',
  `TEV_derniere_modification` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Date de modification de l''enregistrement de l''évolution',
  `TEV_auteur_derniere_modification` varchar(32) NOT NULL COMMENT 'Auteur de la derniere modification de l''enregistrement de l''évolution'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Table sur les évolutions';

--
-- Déchargement des données de la table `tab_evoluer`
--

INSERT INTO `tab_evoluer` (`CLE_pokedex`, `CLE_evolution`, `TEV_date_creation`, `TEV_derniere_modification`, `TEV_auteur_derniere_modification`) VALUES
(154, 155, '2023-06-26 22:38:57', '2023-06-26 22:38:57', 'Arthur AUGIS'),
(155, 156, '2023-06-26 22:43:06', '2023-06-26 22:43:06', 'Arthur AUGIS');

-- --------------------------------------------------------

--
-- Structure de la table `tab_genres`
--

CREATE TABLE `tab_genres` (
  `CLP_genre` tinyint(4) NOT NULL COMMENT 'Table des sexes de Pokemon',
  `TGE_libelle` varchar(64) NOT NULL COMMENT 'Libelle du genre',
  `TGE_description` text NOT NULL COMMENT 'Description du genre',
  `TGE_date_creation` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Date et heure de la creation du genre',
  `TGE_date_derniere_modification` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Date de la derniere modification du genre',
  `TGE_auteur_derniere_modification` varchar(32) NOT NULL COMMENT 'Auteur de la derniere modification du genre'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Tables des sexes de Pokemon';

--
-- Déchargement des données de la table `tab_genres`
--

INSERT INTO `tab_genres` (`CLP_genre`, `TGE_libelle`, `TGE_description`, `TGE_date_creation`, `TGE_date_derniere_modification`, `TGE_auteur_derniere_modification`) VALUES
(7, 'Les deux', 'Sexe du pokemon: Les deux', '2023-06-26 22:12:15', '2023-06-26 22:12:15', 'Arthur AUGIS'),
(8, 'Male', 'Sexe du pokemon: Male', '2023-06-26 22:38:57', '2023-06-26 22:38:57', 'Arthur AUGIS');

-- --------------------------------------------------------

--
-- Structure de la table `tab_login`
--

CREATE TABLE `tab_login` (
  `LOG_identifiant` varchar(25) NOT NULL,
  `LOG_mdp` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tab_login`
--

INSERT INTO `tab_login` (`LOG_identifiant`, `LOG_mdp`) VALUES
('RainbowYoshi', '5cb55e22b1e926752b2b4963a39bcd1a391f6fd882a32eb1b320f549eaeaa6e3');

-- --------------------------------------------------------

--
-- Structure de la table `tab_pokedex`
--

CREATE TABLE `tab_pokedex` (
  `CLP_pokedex` smallint(6) NOT NULL COMMENT 'Cle primaire de la table Pokedex',
  `POK_nom` varchar(128) NOT NULL COMMENT 'Nom du pokemon',
  `POK_numero` smallint(6) NOT NULL COMMENT 'Numero du Pokemon',
  `POK_taille` decimal(7,2) DEFAULT NULL COMMENT 'Taille du Pokemon',
  `POK_poids` decimal(7,2) DEFAULT NULL COMMENT 'Poids du pokemon',
  `CLE_genre` tinyint(4) DEFAULT NULL COMMENT 'Clé étrangère du genre du pokémon',
  `POK_point_vie` smallint(6) DEFAULT NULL COMMENT 'Point de vie du Pokemon',
  `POK_attaque` smallint(6) DEFAULT NULL COMMENT 'Point d''attaque du Pokemon',
  `POK_defense` smallint(6) DEFAULT NULL COMMENT 'Point de defense du Pokemon',
  `POK_attaque_speciale` smallint(6) DEFAULT NULL COMMENT 'Point d''attaque speciale du Pokemon',
  `POK_defense_speciale` smallint(6) DEFAULT NULL COMMENT 'Point de defense speciale du Pokemon',
  `POK_vitesse` smallint(6) DEFAULT NULL COMMENT 'points de vitesse du pokémon',
  `CLE_categorie` tinyint(4) DEFAULT NULL COMMENT 'categorie du Pokemon',
  `CLE_region` tinyint(4) DEFAULT NULL COMMENT 'Clé étrangère de la région',
  `POK_photo` varchar(256) DEFAULT NULL COMMENT 'Photo du Pokemon',
  `POK_date_creation` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Date de creation de l''enregistrement du Pokemon',
  `POK_derniere_modification` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Date de modification de l''enregistrement du Pokemon',
  `POK_auteur_derniere_modification` varchar(32) NOT NULL COMMENT 'Auteur de la derniere modification de l''enregistrement du Pokemon'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Table regroupant l''ensemble des Pokemon';

--
-- Déchargement des données de la table `tab_pokedex`
--

INSERT INTO `tab_pokedex` (`CLP_pokedex`, `POK_nom`, `POK_numero`, `POK_taille`, `POK_poids`, `CLE_genre`, `POK_point_vie`, `POK_attaque`, `POK_defense`, `POK_attaque_speciale`, `POK_defense_speciale`, `POK_vitesse`, `CLE_categorie`, `CLE_region`, `POK_photo`, `POK_date_creation`, `POK_derniere_modification`, `POK_auteur_derniere_modification`) VALUES
(154, 'Bulbizarre', 1, 0.70, 6.90, 7, 45, 49, 49, 65, 65, 45, 4, 4, 'https://img.pokemondb.net/sprites/home/normal/bulbasaur.png', '2023-06-26 22:17:51', '2023-06-26 22:17:51', 'Arthur AUGIS'),
(155, 'Herbizarre', 2, 1.00, 13.00, 7, 60, 62, 63, 80, 80, 60, 4, 4, 'https://img.pokemondb.net/sprites/home/normal/ivysaur.png', '2023-06-26 22:38:24', '2023-06-26 22:38:24', 'Arthur AUGIS'),
(156, 'Florizarre', 3, 2.00, 100.00, 7, 80, 82, 83, 100, 100, 80, 4, 4, 'https://img.pokemondb.net/sprites/home/normal/venusaur.png', '2023-06-26 22:42:49', '2023-06-26 22:42:49', 'Arthur AUGIS');

-- --------------------------------------------------------

--
-- Structure de la table `tab_region`
--

CREATE TABLE `tab_region` (
  `CLP_region` tinyint(4) NOT NULL COMMENT 'Cle primaire de la région',
  `TRE_libelle` varchar(32) NOT NULL COMMENT 'nom de la région',
  `TRE_description` text NOT NULL COMMENT 'description de la région',
  `TRE_date_creation` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Date de creation de l''enregistrement de la région',
  `TRE_derniere_modification` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Date de modification de l''enregistrement de la région',
  `TRE_auteur_derniere_modification` varchar(32) NOT NULL COMMENT 'Auteur de la derniere modification de l''enregistrement de la région'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Table sur les régions des pokémons';

--
-- Déchargement des données de la table `tab_region`
--

INSERT INTO `tab_region` (`CLP_region`, `TRE_libelle`, `TRE_description`, `TRE_date_creation`, `TRE_derniere_modification`, `TRE_auteur_derniere_modification`) VALUES
(4, 'Kanto', 'Pokemon venant de Kanto', '2023-06-26 22:12:14', '2023-06-26 22:12:14', 'Arthur AUGIS');

-- --------------------------------------------------------

--
-- Structure de la table `tab_subir`
--

CREATE TABLE `tab_subir` (
  `CLE_faiblesse` tinyint(4) DEFAULT NULL COMMENT 'Cle étrangère des faiblesses',
  `CLE_pokedex` smallint(6) DEFAULT NULL COMMENT 'Clé étrangère du pokémon',
  `TSU_taux_degats` tinyint(4) DEFAULT NULL COMMENT 'Taux de dégats reçus',
  `TSU_date_creation` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Date de creation de l''enregistrement de l''association',
  `TSU_derniere_modification` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Date de modification de l''enregistrement de l''association',
  `TSU_auteur_derniere_modification` varchar(32) NOT NULL COMMENT 'Auteur de la derniere modification de l''enregistrement de l''association'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='table associatif des faiblesses';

--
-- Déchargement des données de la table `tab_subir`
--

INSERT INTO `tab_subir` (`CLE_faiblesse`, `CLE_pokedex`, `TSU_taux_degats`, `TSU_date_creation`, `TSU_derniere_modification`, `TSU_auteur_derniere_modification`) VALUES
(14, 154, 2, '2023-06-26 22:17:51', '2023-06-26 22:17:51', 'Arthur AUGIS'),
(15, 154, 2, '2023-06-26 22:17:51', '2023-06-26 22:17:51', 'Arthur AUGIS'),
(16, 154, 2, '2023-06-26 22:17:51', '2023-06-26 22:17:51', 'Arthur AUGIS'),
(17, 154, 2, '2023-06-26 22:17:51', '2023-06-26 22:17:51', 'Arthur AUGIS'),
(14, 155, 2, '2023-06-26 22:38:24', '2023-06-26 22:38:24', 'Arthur AUGIS'),
(15, 155, 2, '2023-06-26 22:38:24', '2023-06-26 22:38:24', 'Arthur AUGIS'),
(16, 155, 2, '2023-06-26 22:38:24', '2023-06-26 22:38:24', 'Arthur AUGIS'),
(17, 155, 2, '2023-06-26 22:38:24', '2023-06-26 22:38:24', 'Arthur AUGIS'),
(14, 156, 2, '2023-06-26 22:42:49', '2023-06-26 22:42:49', 'Arthur AUGIS'),
(15, 156, 2, '2023-06-26 22:42:49', '2023-06-26 22:42:49', 'Arthur AUGIS'),
(16, 156, 2, '2023-06-26 22:42:49', '2023-06-26 22:42:49', 'Arthur AUGIS'),
(17, 156, 2, '2023-06-26 22:42:49', '2023-06-26 22:42:49', 'Arthur AUGIS');

-- --------------------------------------------------------

--
-- Structure de la table `tab_talents`
--

CREATE TABLE `tab_talents` (
  `CLP_talent` tinyint(4) NOT NULL COMMENT 'Cle primaire de la table talent',
  `TTA_libelle` varchar(64) NOT NULL COMMENT 'Libelle du talent',
  `TTA_description` text DEFAULT NULL COMMENT 'Description',
  `TTA_date_creation` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Date et heure de la creation du talent',
  `TTA_date_derniere_modification` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Date de la derniere modification du talent',
  `TTA_auteur_derniere_modification` varchar(50) NOT NULL COMMENT 'Auteur de la derniere modification du talent'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Tables des talents de Pokemon';

--
-- Déchargement des données de la table `tab_talents`
--

INSERT INTO `tab_talents` (`CLP_talent`, `TTA_libelle`, `TTA_description`, `TTA_date_creation`, `TTA_date_derniere_modification`, `TTA_auteur_derniere_modification`) VALUES
(7, 'Engrais', 'Pokemon possÃ©dant le talent Engrais', '2023-06-26 22:12:15', '2023-06-26 22:12:15', 'Arthur AUGIS');

-- --------------------------------------------------------

--
-- Structure de la table `tab_types`
--

CREATE TABLE `tab_types` (
  `CLP_types` tinyint(4) NOT NULL COMMENT 'Cle primaire de la table type',
  `TTY_libelle` varchar(64) NOT NULL COMMENT 'Libelle du type',
  `TTY_description` text NOT NULL COMMENT 'Description du type',
  `TTY_date_creation` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Date et heure de la creation du type',
  `TTY_date_derniere_modification` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Date de la derniere modification du type',
  `TTY_auteur_derniere_modification` varchar(50) NOT NULL COMMENT 'Auteur de la derniere modification du type'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Tables des types possibles dans Pokémon';

--
-- Déchargement des données de la table `tab_types`
--

INSERT INTO `tab_types` (`CLP_types`, `TTY_libelle`, `TTY_description`, `TTY_date_creation`, `TTY_date_derniere_modification`, `TTY_auteur_derniere_modification`) VALUES
(12, 'Plante', 'Pokemon possÃ©dant le type ou la faiblesse Plante', '2023-06-26 22:12:15', '2023-06-26 22:12:15', 'Arthur AUGIS'),
(13, 'Poison', 'Pokemon possÃ©dant le type ou la faiblesse Poison', '2023-06-26 22:12:15', '2023-06-26 22:12:15', 'Arthur AUGIS'),
(14, 'Feu', 'Pokemon possÃ©dant le type ou la faiblesse Feu', '2023-06-26 22:12:15', '2023-06-26 22:12:15', 'Arthur AUGIS'),
(15, 'Psy', 'Pokemon possÃ©dant le type ou la faiblesse Psy', '2023-06-26 22:12:15', '2023-06-26 22:12:15', 'Arthur AUGIS'),
(16, 'Vol', 'Pokemon possÃ©dant le type ou la faiblesse Vol', '2023-06-26 22:12:15', '2023-06-26 22:12:15', 'Arthur AUGIS'),
(17, 'Glace', 'Pokemon possÃ©dant le type ou la faiblesse Glace', '2023-06-26 22:12:15', '2023-06-26 22:12:15', 'Arthur AUGIS');

-- --------------------------------------------------------

--
-- Structure de la table `tab_versions`
--

CREATE TABLE `tab_versions` (
  `CLP_version` tinyint(4) NOT NULL COMMENT 'Cle primaire de la table version',
  `TVE_libelle` varchar(64) NOT NULL COMMENT 'Libelle de la version',
  `TVE_description` text NOT NULL COMMENT 'Description de la version',
  `TVE_date_creation` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Date et heure de la creation de la version',
  `TVE_date_derniere_modification` datetime NOT NULL DEFAULT current_timestamp() COMMENT 'Date de la derniere modification de la faiblesse',
  `TVE_auteur_derniere_modification` varchar(32) NOT NULL COMMENT 'Auteur de la derniere modification de la version'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci COMMENT='Tables des versions de Pokemon';

--
-- Déchargement des données de la table `tab_versions`
--

INSERT INTO `tab_versions` (`CLP_version`, `TVE_libelle`, `TVE_description`, `TVE_date_creation`, `TVE_date_derniere_modification`, `TVE_auteur_derniere_modification`) VALUES
(7, 'Rouge', 'Pokemon possÃ©dant la version Rouge', '2023-06-26 22:12:15', '2023-06-26 22:12:15', 'Arthur AUGIS'),
(8, 'Bleu', 'Pokemon possÃ©dant la version Bleu', '2023-06-26 22:12:15', '2023-06-26 22:12:15', 'Arthur AUGIS');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `tab_avoir`
--
ALTER TABLE `tab_avoir`
  ADD KEY `TAB_avoir_FK_tal` (`CLE_talent`),
  ADD KEY `TAB_avoir_FK_pok` (`CLE_pokedex`);

--
-- Index pour la table `tab_categorie`
--
ALTER TABLE `tab_categorie`
  ADD PRIMARY KEY (`CLP_categorie`),
  ADD UNIQUE KEY `TAT_libelle` (`TCA_libelle`);

--
-- Index pour la table `tab_decrire`
--
ALTER TABLE `tab_decrire`
  ADD KEY `TAB_decrire_FK_pok` (`CLE_pokedex`),
  ADD KEY `TAB_decrire_FK_ver` (`CLE_version`);

--
-- Index pour la table `tab_disposer`
--
ALTER TABLE `tab_disposer`
  ADD KEY `TAB_disposer_FK_pok` (`CLE_pokedex`),
  ADD KEY `TAB_disposer_FK_typ` (`CLE_type`);

--
-- Index pour la table `tab_evoluer`
--
ALTER TABLE `tab_evoluer`
  ADD KEY `TAB_evoluer_FK_pok` (`CLE_pokedex`),
  ADD KEY `TAB_evoluer_FK_evo` (`CLE_evolution`);

--
-- Index pour la table `tab_genres`
--
ALTER TABLE `tab_genres`
  ADD PRIMARY KEY (`CLP_genre`),
  ADD UNIQUE KEY `TGE_libelle` (`TGE_libelle`);

--
-- Index pour la table `tab_pokedex`
--
ALTER TABLE `tab_pokedex`
  ADD PRIMARY KEY (`CLP_pokedex`),
  ADD UNIQUE KEY `POK_nom` (`POK_nom`),
  ADD KEY `TAB_pokedex_FK_cat` (`CLE_categorie`),
  ADD KEY `TAB_pokedex_FK_reg` (`CLE_region`),
  ADD KEY `TAB_pokedex_FK_gen` (`CLE_genre`);

--
-- Index pour la table `tab_region`
--
ALTER TABLE `tab_region`
  ADD PRIMARY KEY (`CLP_region`),
  ADD UNIQUE KEY `TAB_region_UN` (`TRE_libelle`);

--
-- Index pour la table `tab_subir`
--
ALTER TABLE `tab_subir`
  ADD KEY `TAB_subir_FK_pok` (`CLE_pokedex`),
  ADD KEY `TAB_subir_FK_fai` (`CLE_faiblesse`);

--
-- Index pour la table `tab_talents`
--
ALTER TABLE `tab_talents`
  ADD PRIMARY KEY (`CLP_talent`),
  ADD UNIQUE KEY `TTA_libelle` (`TTA_libelle`);

--
-- Index pour la table `tab_types`
--
ALTER TABLE `tab_types`
  ADD PRIMARY KEY (`CLP_types`),
  ADD UNIQUE KEY `TTY_libelle` (`TTY_libelle`);

--
-- Index pour la table `tab_versions`
--
ALTER TABLE `tab_versions`
  ADD PRIMARY KEY (`CLP_version`),
  ADD UNIQUE KEY `TVE_libelle` (`TVE_libelle`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `tab_categorie`
--
ALTER TABLE `tab_categorie`
  MODIFY `CLP_categorie` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'Cle primaire de la table categorie', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `tab_genres`
--
ALTER TABLE `tab_genres`
  MODIFY `CLP_genre` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'Table des sexes de Pokemon', AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `tab_pokedex`
--
ALTER TABLE `tab_pokedex`
  MODIFY `CLP_pokedex` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Cle primaire de la table Pokedex', AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT pour la table `tab_region`
--
ALTER TABLE `tab_region`
  MODIFY `CLP_region` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'Cle primaire de la région', AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `tab_talents`
--
ALTER TABLE `tab_talents`
  MODIFY `CLP_talent` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'Cle primaire de la table talent', AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `tab_types`
--
ALTER TABLE `tab_types`
  MODIFY `CLP_types` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'Cle primaire de la table type', AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `tab_versions`
--
ALTER TABLE `tab_versions`
  MODIFY `CLP_version` tinyint(4) NOT NULL AUTO_INCREMENT COMMENT 'Cle primaire de la table version', AUTO_INCREMENT=9;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `tab_avoir`
--
ALTER TABLE `tab_avoir`
  ADD CONSTRAINT `TAB_avoir_FK_pok` FOREIGN KEY (`CLE_pokedex`) REFERENCES `tab_pokedex` (`CLP_pokedex`),
  ADD CONSTRAINT `TAB_avoir_FK_tal` FOREIGN KEY (`CLE_talent`) REFERENCES `tab_talents` (`CLP_talent`);

--
-- Contraintes pour la table `tab_decrire`
--
ALTER TABLE `tab_decrire`
  ADD CONSTRAINT `TAB_decrire_FK_pok` FOREIGN KEY (`CLE_pokedex`) REFERENCES `tab_pokedex` (`CLP_pokedex`),
  ADD CONSTRAINT `TAB_decrire_FK_ver` FOREIGN KEY (`CLE_version`) REFERENCES `tab_versions` (`CLP_version`);

--
-- Contraintes pour la table `tab_disposer`
--
ALTER TABLE `tab_disposer`
  ADD CONSTRAINT `TAB_disposer_FK_pok` FOREIGN KEY (`CLE_pokedex`) REFERENCES `tab_pokedex` (`CLP_pokedex`),
  ADD CONSTRAINT `TAB_disposer_FK_typ` FOREIGN KEY (`CLE_type`) REFERENCES `tab_types` (`CLP_types`);

--
-- Contraintes pour la table `tab_evoluer`
--
ALTER TABLE `tab_evoluer`
  ADD CONSTRAINT `TAB_evoluer_FK_evo` FOREIGN KEY (`CLE_evolution`) REFERENCES `tab_pokedex` (`CLP_pokedex`),
  ADD CONSTRAINT `TAB_evoluer_FK_pok` FOREIGN KEY (`CLE_pokedex`) REFERENCES `tab_pokedex` (`CLP_pokedex`);

--
-- Contraintes pour la table `tab_pokedex`
--
ALTER TABLE `tab_pokedex`
  ADD CONSTRAINT `TAB_pokedex_FK_cat` FOREIGN KEY (`CLE_categorie`) REFERENCES `tab_categorie` (`CLP_categorie`),
  ADD CONSTRAINT `TAB_pokedex_FK_gen` FOREIGN KEY (`CLE_genre`) REFERENCES `tab_genres` (`CLP_genre`),
  ADD CONSTRAINT `TAB_pokedex_FK_reg` FOREIGN KEY (`CLE_region`) REFERENCES `tab_region` (`CLP_region`);

--
-- Contraintes pour la table `tab_subir`
--
ALTER TABLE `tab_subir`
  ADD CONSTRAINT `TAB_subir_FK_fai` FOREIGN KEY (`CLE_faiblesse`) REFERENCES `tab_types` (`CLP_types`),
  ADD CONSTRAINT `TAB_subir_FK_pok` FOREIGN KEY (`CLE_pokedex`) REFERENCES `tab_pokedex` (`CLP_pokedex`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
