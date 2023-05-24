-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 09 mai 2020 à 21:48
-- Version du serveur :  10.4.11-MariaDB
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
-- Base de données : `e-commerce`
--

-- --------------------------------------------------------

--
-- Structure de la table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_email` varchar(255) NOT NULL,
  `admin_pass` varchar(255) NOT NULL,
  `admin_image` text NOT NULL,
  `admin_country` text NOT NULL,
  `admin_about` text NOT NULL,
  `admin_contact` varchar(255) NOT NULL,
  `admin_job` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_pass`, `admin_image`, `admin_country`, `admin_about`, `admin_contact`, `admin_job`) VALUES
(1, 'Sozi', 'Sozi.beauty@gmail.com', '12345', '1.jpg', 'Maroc', 'anything about beauty', '0661616161', 'beauty');

-- --------------------------------------------------------

--
-- Structure de la table `cart`
--

CREATE TABLE `cart` (
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(255) NOT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `cart`
--

INSERT INTO `cart` (`p_id`, `ip_add`, `qty`) VALUES
(24, '::1', 1);

-- --------------------------------------------------------

--
-- Structure de la table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(10) NOT NULL,
  `cat_title` text NOT NULL,
  `cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`, `cat_desc`) VALUES
(5, 'yeux', ' Meilleurs conseils de maquillage des sourcils et réponse à des sourcils parfaits'),
(6, 'visage', 'Chaque produit dispose d\'un outil spécial adapté à son application. TYPES DE PRODUITS DE MAQUILLAGE POUR LE VISAGE'),
(7, 'Bouche', 'Voir plus d\'idées sur le thème Maquillage bouche, Maquillage et Rouge à lèvres'),
(8, 'main', 'Produits Iconiques. Découvrez nos produits emblématiques, utilisés par les meilleurs professionnels dans les spas du monde entier pour redonner à la peau ...'),
(10, 'cheveu', 'Le cheveu est un élément de la pilosité humaine, plus ou moins étendue sur le sommet, les côtés et l\'arrière de la tête. Comme les autres phanères, il est composé de kératine.');

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

CREATE TABLE `customers` (
  `customer_id` int(10) NOT NULL,
  `customer_name` varchar(255) NOT NULL,
  `customer_email` varchar(255) NOT NULL,
  `customer_pass` varchar(255) NOT NULL,
  `customer_country` text NOT NULL,
  `customer_city` text NOT NULL,
  `customer_contact` varchar(255) NOT NULL,
  `customer_address` varchar(255) NOT NULL,
  `customer_image` text NOT NULL,
  `customer_ip` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `customers`
--

INSERT INTO `customers` (`customer_id`, `customer_name`, `customer_email`, `customer_pass`, `customer_country`, `customer_city`, `customer_contact`, `customer_address`, `customer_image`, `customer_ip`) VALUES
(1, 'something', 'saida.benchikh.99@gmail.com', 'azert', 'maroc', 'casa', '06..........', 'something', '713XRAH+9wL._AC_SL1134_.jpg', '::1'),
(2, 'sophi', 'sophi@gmail.com', '123', 'maroc', 'casa', '0700......', 'projet', 'photo.jpg', '::1');

-- --------------------------------------------------------

--
-- Structure de la table `customer_orders`
--

CREATE TABLE `customer_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `due_amount` int(100) NOT NULL,
  `invoice_no` int(100) NOT NULL,
  `qty` int(100) NOT NULL,
  `order_date` date NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `customer_orders`
--

INSERT INTO `customer_orders` (`order_id`, `customer_id`, `due_amount`, `invoice_no`, `qty`, `order_date`, `order_status`) VALUES
(1, 1, 100, 463466760, 1, '2020-05-01', 'pending'),
(2, 1, 250, 518608344, 1, '2020-05-01', 'pending'),
(3, 1, 2000, 1016851124, 8, '2020-05-01', 'pending'),
(4, 1, 1500, 1016851124, 6, '2020-05-01', 'pending'),
(5, 1, 250, 1501693870, 1, '2020-05-04', 'pending'),
(6, 2, 100, 233932558, 1, '2020-05-09', 'pending'),
(7, 2, 39, 1431594752, 1, '2020-05-09', 'pending'),
(8, 2, 100, 1431594752, 1, '2020-05-09', 'pending');

-- --------------------------------------------------------

--
-- Structure de la table `payments`
--

CREATE TABLE `payments` (
  `payment_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `amount` int(10) NOT NULL,
  `payment_mode` text NOT NULL,
  `ref_no` int(10) NOT NULL,
  `code` int(10) NOT NULL,
  `payment_date` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `payments`
--

INSERT INTO `payments` (`payment_id`, `invoice_no`, `amount`, `payment_mode`, `ref_no`, `code`, `payment_date`) VALUES
(1, 2332423, 4563, 'Paypall', 1213, 9089, '12/06/2020'),
(2, 2332423, 4534, 'Paypall', 1213, 0, '12/06/2020'),
(3, 2332423, 4534, 'Paypall', 1213, 0, '12/06/2020'),
(4, 2332423, 4534, 'Back Code', 1213, 9089, '12/05/2020'),
(5, 2332423, 4534, 'Back Code', 3234, 2215, '12/06/2020'),
(6, 2332423, 100, 'Back Code', 9089, 2215, '12/04/2020'),
(7, 2332423, 4534, 'Back Code', 3234, 2215, '12/02/2020');

-- --------------------------------------------------------

--
-- Structure de la table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `order_id` int(10) NOT NULL,
  `customer_id` int(10) NOT NULL,
  `invoice_no` int(10) NOT NULL,
  `product_id` int(100) NOT NULL,
  `qty` int(10) NOT NULL,
  `order_status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `pending_orders`
--

INSERT INTO `pending_orders` (`order_id`, `customer_id`, `invoice_no`, `product_id`, `qty`, `order_status`) VALUES
(1, 1, 518608344, 13, 1, 'paid'),
(2, 1, 1016851124, 13, 8, 'pending'),
(3, 1, 1016851124, 15, 6, 'pending'),
(4, 1, 1501693870, 13, 1, 'pending'),
(5, 2, 233932558, 26, 1, 'pending'),
(6, 2, 1431594752, 24, 1, 'pending'),
(7, 2, 1431594752, 25, 1, 'pending');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
  `product_id` int(10) NOT NULL,
  `p_cat_id` int(10) NOT NULL,
  `cat_id` int(10) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `product_title` text NOT NULL,
  `product_img1` text NOT NULL,
  `product_img2` text NOT NULL,
  `product_img3` text NOT NULL,
  `product_price` int(10) NOT NULL,
  `product_keywords` text NOT NULL,
  `product_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`product_id`, `p_cat_id`, `cat_id`, `date`, `product_title`, `product_img1`, `product_img2`, `product_img3`, `product_price`, `product_keywords`, `product_desc`) VALUES
(1, 4, 8, '2020-05-01 15:09:38', 'Ongles', '4 piéces lime à ongles .jpg', '4 piéces lime à ongles .jpg', '4 piéces lime à ongles .jpg', 100, 'BH', '<p>4 pi&eacute;ces lime &agrave; ongles&nbsp;</p>'),
(2, 5, 6, '2020-05-01 15:15:37', 'Masque', '60 piéces Set de masque de compression .jpg', '60 piéces Set de masque de compression .jpg', '60 piéces Set de masque de compression .jpg', 200, 'BH', '<p>60 pi&eacute;ces Set de masque de compression&nbsp;</p>'),
(3, 4, 6, '2020-05-01 15:16:51', 'brosse de visage', 'Brosse de maquillage en forme de brosse à dents .jpg', 'Brosse de maquillage en forme de brosse à dents .jpg', 'Brosse de maquillage en forme de brosse à dents .jpg', 300, 'BH', '<p>Brosse de maquillage en forme de brosse &agrave; dents&nbsp;</p>'),
(4, 2, 7, '2020-05-01 15:17:34', 'rouge a lévre', 'Brillant à lévres.jpg', 'Brillant à lévres.jpg', 'Brillant à lévres.jpg', 100, 'BH', '<p><strong>Brillant &agrave; l&eacute;vres</strong></p>'),
(5, 4, 6, '2020-05-01 15:18:32', 'brosse de visage', 'Brosse de nettoyage à double téte.jpg', 'Brosse de nettoyage à double téte.jpg', 'Brosse de nettoyage à double téte.jpg', 100, 'BH', '<p><strong>Brosse de nettoyage &agrave; double t&eacute;te</strong></p>'),
(6, 2, 7, '2020-05-01 15:19:21', 'rouge a lévre', 'pro1.jpg', 'pro1.jpg', 'pro1.jpg', 100, 'BH', '<p>rouge a l&eacute;vre</p>'),
(7, 4, 8, '2020-05-01 15:20:40', 'Ongles', 'Ensemble de coupe-ongles.jpg', 'Ensemble de coupe-ongles.jpg', 'Ensemble de coupe-ongles.jpg', 300, 'BH', '<p>Ensemble de coupe-ongles</p>'),
(8, 2, 5, '2020-05-01 15:22:24', 'stylo à sourcils ', 'stylo à sourcils .jpg', 'stylo à sourcils .jpg', 'stylo à sourcils .jpg', 250, 'BH', '<p>stylo &agrave; sourcils&nbsp;</p>'),
(9, 2, 5, '2020-05-01 15:24:35', 'set de recoube-cils', 'set de recoube-cilspros3.jpg', 'set de recoube-cilspros3.jpg', 'set de recoube-cilspros3.jpg', 300, 'BH', '<p>set de recoube-cils</p>'),
(10, 4, 8, '2020-05-01 15:25:33', 'Ongles', 'Stylo venis à ongles 5 piéces .jpg', 'Stylo venis à ongles 5 piéces .jpg', 'Stylo venis à ongles 5 piéces .jpg', 250, 'BH', '<p>Stylo venis &agrave; ongles 5 pi&eacute;ces&nbsp;</p>'),
(11, 4, 6, '2020-05-01 15:26:42', 'pinceaux de maquillage', 'pinceaux de maquillagepros3.jpg', 'pinceaux de maquillagepros3.jpg', 'pinceaux de maquillagepros3.jpg', 250, 'pinceaux de maquillage', '<p>pinceaux de maquillage</p>'),
(12, 4, 8, '2020-05-01 15:28:43', 'ongles naturels', 'ongles naturelspros3.jpg', 'ongles naturelspros3.jpg', 'ongles naturelspros3.jpg', 200, 'BH', '<p>ongles naturels</p>'),
(13, 4, 6, '2020-05-01 15:29:44', 'Houppette', 'Houppettepros3.jpg', 'Houppettepros3.jpg', 'Houppettepros3.jpg', 250, 'BH', '<p>Houppette</p>'),
(14, 2, 5, '2020-05-01 15:31:25', 'set de recoube-cils', 'pro5.jpg', 'pro5.jpg', 'pro5.jpg', 200, 'BH', '<p>set de recoube-cils</p>'),
(15, 2, 7, '2020-05-01 15:32:20', 'rouge a lévre', 'Ensemble de rouge à lévres .jpg', 'Ensemble de rouge à lévres .jpg', 'Ensemble de rouge à lévres .jpg', 250, 'BH', '<p>Ensemble de rouge &agrave; l&eacute;vres&nbsp;</p>'),
(16, 4, 8, '2020-05-01 15:46:57', 'Ongles', 'Stylo venis à ongles 5 piéces .jpg', 'Stylo venis à ongles 5 piéces .jpg', 'Stylo venis à ongles 5 piéces .jpg', 100, 'BH', '<p>Stylo venis &agrave; ongles 5 pi&eacute;ces&nbsp;</p>'),
(17, 4, 6, '2020-05-01 15:52:53', 'set de houppettes', 'set de houppettespros3.jpg', 'set de houppettespros3.jpg', 'set de houppettespros3.jpg', 200, 'BH', '<p>set de houppettes</p>'),
(19, 5, 7, '2020-05-01 15:54:57', 'bouma léver', 'pro0.jpg', 'pro0.jpg', 'pro0.jpg', 100, 'BH', '<p>bouma l&eacute;ver</p>'),
(20, 2, 6, '2020-05-01 15:56:26', 'poudre', 'pro9.jpg', 'pro9.jpg', 'pro9.jpg', 50, 'BH', '<p>poudre</p>'),
(21, 4, 6, '2020-05-01 15:58:05', 'Brosse de maquillage', 'pros2.webp', 'pros2.webp', 'pros2.webp', 100, 'BH', '<p>Brosse de maquillage</p>'),
(23, 4, 8, '2020-05-09 19:09:30', 'Ongles', 'ongles naturelspros3.jpg', 'ongles naturelspros3.jpg', 'ongles naturelspros3.jpg', 300, 'BH', '<p>ongles naturels</p>'),
(24, 5, 6, '2020-05-09 19:13:48', 'Miroir', 'Miroir plié avec blocs de couleurs.jpg', 'Miroir plié avec blocs de couleurs.jpg', 'Miroir plié avec blocs de couleurs.jpg', 39, 'BH', '<p>Miroir pli&eacute; avec blocs de couleurs</p>'),
(25, 5, 10, '2020-05-09 19:25:51', 'Fer à friser ', 'Fer à friser en céramique.jpg', 'Fer à friser en céramique.jpg', 'Fer à friser en céramique.jpg', 100, 'BH', '<p>Fer &agrave; friser en c&eacute;ramique</p>'),
(26, 5, 10, '2020-05-09 19:27:48', 'brosse de cheveu', 'peigne de massage .jpg', 'peigne de massage .jpg', 'peigne de massage .jpg', 100, 'BH', '<p>peigne de massage</p>'),
(27, 2, 6, '2020-05-09 19:33:20', 'rouge a lévre', 'Brillant à lévres.jpg', 'Brillant à lévres.jpg', 'Brillant à lévres.jpg', 100, 'BH', '<p>rouge a levre</p>');

-- --------------------------------------------------------

--
-- Structure de la table `product_categories`
--

CREATE TABLE `product_categories` (
  `p_cat_id` int(10) NOT NULL,
  `p_cat_title` text NOT NULL,
  `p_cat_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `product_categories`
--

INSERT INTO `product_categories` (`p_cat_id`, `p_cat_title`, `p_cat_desc`) VALUES
(2, 'Maquillage', ' Le maquillage comme son nom l\'indique a pour but de masquer des imperfections de la peau'),
(4, 'Accessoires beauté', 'le top des nouveautés ! Les accessoires sont indispensables pour réussir son beauty look. Pinceaux, brosses, éponges... Découvrez notre ...'),
(5, 'Soins de Santé', 'Avec team Store retrouvez tout ce qu\'il faut savoir autour de la beauté et des soins : actualité, conseils, dossiers. Toute l\'information...');

-- --------------------------------------------------------

--
-- Structure de la table `slider`
--

CREATE TABLE `slider` (
  `slide_id` int(10) NOT NULL,
  `slide_name` varchar(255) NOT NULL,
  `slide_image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `slider`
--

INSERT INTO `slider` (`slide_id`, `slide_name`, `slide_image`) VALUES
(1, 'image2', 'slide-2.jpg'),
(2, 'image3', 'slide-3.jpg'),
(3, 'image4', 'slide-4.jpg'),
(4, 'image5', 'slide-1.jpg');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Index pour la table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`p_id`);

--
-- Index pour la table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Index pour la table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`customer_id`);

--
-- Index pour la table `customer_orders`
--
ALTER TABLE `customer_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Index pour la table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_id`);

--
-- Index pour la table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Index pour la table `product_categories`
--
ALTER TABLE `product_categories`
  ADD PRIMARY KEY (`p_cat_id`);

--
-- Index pour la table `slider`
--
ALTER TABLE `slider`
  ADD PRIMARY KEY (`slide_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `cart`
--
ALTER TABLE `cart`
  MODIFY `p_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT pour la table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT pour la table `customers`
--
ALTER TABLE `customers`
  MODIFY `customer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `customer_orders`
--
ALTER TABLE `customer_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT pour la table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `pending_orders`
--
ALTER TABLE `pending_orders`
  MODIFY `order_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT pour la table `product_categories`
--
ALTER TABLE `product_categories`
  MODIFY `p_cat_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `slider`
--
ALTER TABLE `slider`
  MODIFY `slide_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
