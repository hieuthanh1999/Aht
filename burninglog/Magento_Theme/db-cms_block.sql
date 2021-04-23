-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 16, 2021 at 09:31 PM
-- Server version: 10.4.18-MariaDB-1:10.4.18+maria~buster
-- PHP Version: 7.4.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `magento24`
--

-- --------------------------------------------------------

--
-- Table structure for table `cms_block`
--

CREATE TABLE `cms_block` (
  `block_id` smallint(6) NOT NULL COMMENT 'Entity ID',
  `title` varchar(255) NOT NULL COMMENT 'Block Title',
  `identifier` varchar(255) NOT NULL COMMENT 'Block String Identifier',
  `content` mediumtext DEFAULT NULL COMMENT 'Block Content',
  `creation_time` timestamp NOT NULL DEFAULT current_timestamp() COMMENT 'Block Creation Time',
  `update_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp() COMMENT 'Block Modification Time',
  `is_active` smallint(6) NOT NULL DEFAULT 1 COMMENT 'Is Block Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='CMS Block Table';

--
-- Dumping data for table `cms_block`
--

INSERT INTO `cms_block` (`block_id`, `title`, `identifier`, `content`, `creation_time`, `update_time`, `is_active`) VALUES
(19, 'Header Contact Desktop', 'header-top-left-contact', '<div class=\"header-top-desktop-left\"><a href=\"#\"><span class=\"title\">Contact us</span><span class=\"content\">1300 660 330</span></a></div>', '2021-04-02 04:33:53', '2021-04-13 04:32:43', 1),
(20, 'Header Top Center', 'header-top-center-links', '<ul class=\"header-top-desktop-center\">\r\n<li><a href=\"#\">Outdoor Furniture</a></li>\r\n<li><a href=\"#\">Fireplaces</a></li>\r\n<li><a href=\"#\">Weber BBQs</a></li>\r\n<li><a href=\"#\">Canberra Showroom Open 7 Days</a></li>\r\n</ul>', '2021-04-02 06:46:41', '2021-04-13 04:12:29', 1),
(22, 'Header Top Right', 'header-top-right-social', '<ul>\r\n<li><a class=\"facebook-awesome\" href=\"#\"></a></li>\r\n<li><a class=\"instagram-awesome\" href=\"#\"></a></li>\r\n<li><a href=\"#\">Blog</a></li>\r\n<li><a href=\"#\">Login</a></li>\r\n</ul>', '2021-04-03 01:39:59', '2021-04-03 01:46:13', 1),
(23, 'Footer Showroom Left', 'footer-showroom-left', '<a href=\"#\"><img src=\"{{media url=\"wysiwyg/outdoor_Elegance.png\"}}\" alt=\"\"></a>', '2021-04-08 10:22:51', '2021-04-09 06:33:24', 1),
(24, 'Footer Showroom Center', 'footer-showroom-center', '<p><button class=\"action primary \" type=\"button\">Canberra Showroom</button></p>\r\n<p>Maryborough St &amp; Wollongong Street, Fyshwick ACT 2609</p>\r\n<p>T: 1300 644 596</p>\r\n<p><a href=\"#\">View more info</a></p>', '2021-04-08 15:52:22', '2021-04-09 04:45:07', 1),
(25, 'Footer Showroom Right', 'footer-showroom-right', '<a href=\"#\"><img src=\"{{media url=\"wysiwyg/webstore_logo.png\"}}\" alt=\"\"></a>', '2021-04-08 15:53:49', '2021-04-09 06:32:49', 1),
(26, 'Footer Banner', 'footer-banner', '<div class=\"footer-banner__image\"><img src=\"{{media url=\"wysiwyg/Rectangle_15.png\"}}\" alt=\"\"></div>\r\n<div class=\"footer-banner__text\">\r\n<p>Exclusive outdoor furniture, online prices</p>\r\n<p><span>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</span>\r\n<a href=\"#\">Learn more</a></p>\r\n</div>', '2021-04-08 16:14:36', '2021-04-15 16:02:20', 1),
(27, 'Footer Top', 'footer-top', '<div class=\"item\"><a href=\"#\">\r\n<i class=\"fas fa-truck\"></i>\r\n<span>We ship australia wide!</a>\r\n</div>\r\n\r\n<div class=\"item\"><a href=\"#\">\r\n<i class=\"fas fa-map-marker-alt\"></i>\r\n<span>Find a store</span></a></div>\r\n\r\n<div class=\"item\"><a href=\"#\">\r\n<i class=\"fas fa-dollar-sign\"></i>\r\n<span>Money back guarantee<span></a></div>\r\n\r\n<div class=\"item\"><a href=\"#\">\r\n<i class=\"fas fa-envelope\"></i>\r\n<span>Contact us</span></a></div>', '2021-04-09 08:17:38', '2021-04-09 10:41:57', 1),
(28, 'Footer Middle Categories', 'footer-middle-categories', '<p data-role=\"collapsible\"><span class=\"title\" data-role=\"trigger\">Categories</span></p>\r\n<ul class=\"content\" data-role=\"content\">\r\n<li>{{widget type=\"Magento\\Catalog\\Block\\Category\\Widget\\Link\" template=\"category/widget/link/link_block.phtml\" id_path=\"category/43\"}}</li>\r\n<li>{{widget type=\"Magento\\Catalog\\Block\\Category\\Widget\\Link\" template=\"category/widget/link/link_block.phtml\" id_path=\"category/42\"}}</li>\r\n<li>{{widget type=\"Magento\\Catalog\\Block\\Category\\Widget\\Link\" template=\"category/widget/link/link_block.phtml\" id_path=\"category/44\"}}</li>\r\n<li>{{widget type=\"Magento\\Catalog\\Block\\Category\\Widget\\Link\" template=\"category/widget/link/link_block.phtml\" id_path=\"category/45\"}}</li>\r\n<li>{{widget type=\"Magento\\Catalog\\Block\\Category\\Widget\\Link\" template=\"category/widget/link/link_block.phtml\" id_path=\"category/46\"}}</li>\r\n<li>{{widget type=\"Magento\\Catalog\\Block\\Category\\Widget\\Link\" template=\"category/widget/link/link_block.phtml\" id_path=\"category/47\"}}</li>\r\n<li>{{widget type=\"Magento\\Catalog\\Block\\Category\\Widget\\Link\" template=\"category/widget/link/link_block.phtml\" id_path=\"category/48\"}}</li>\r\n<li>{{widget type=\"Magento\\Catalog\\Block\\Category\\Widget\\Link\" template=\"category/widget/link/link_block.phtml\" id_path=\"category/49\"}}</li>\r\n<li><a href=\"#\">Weber Premium Gas BBQs</a></li>\r\n<li>{{widget type=\"Magento\\Catalog\\Block\\Category\\Widget\\Link\" template=\"category/widget/link/link_block.phtml\" id_path=\"category/50\"}}</li>\r\n<li>{{widget type=\"Magento\\Catalog\\Block\\Category\\Widget\\Link\" template=\"category/widget/link/link_block.phtml\" id_path=\"category/51\"}}</li>\r\n<li>{{widget type=\"Magento\\Catalog\\Block\\Category\\Widget\\Link\" template=\"category/widget/link/link_block.phtml\" id_path=\"category/52\"}}</li>\r\n</ul>', '2021-04-12 02:07:46', '2021-04-16 05:55:12', 1),
(29, 'Footer Middle Infor', 'footer-middle-infor', '<p data-role=\"collapsible\"><span class=\"title\" data-role=\"trigger\">Why Burning Log?</span></p>\r\n<ul class=\"content\" data-role=\"content\">\r\n<li><a href=\"#\">About us</a></li>\r\n<li><a href=\"#\">All products</a></li>\r\n<li><a href=\"#\">Catalogues</a></li>\r\n<li><a href=\"#\">Contact us</a></li>\r\n</ul>', '2021-04-12 02:23:15', '2021-04-16 05:55:35', 1),
(30, 'Footer Middle Policies', 'footer-middle-policies', '<p data-role=\"collapsible\"><span class=\"title\" data-role=\"trigger\">Our Policies</span></p>\r\n<ul class=\"content\" data-role=\"content\">\r\n<li><a href=\"#\">Terms and conditions</a></li>\r\n<li><a href=\"#\">Return policy</a></li>\r\n<li><a href=\"#\">Delivery and pick up policy</a></li>\r\n<li><a href=\"#\">Privacy policy</a></li>\r\n</ul>', '2021-04-12 02:29:24', '2021-04-16 05:56:24', 1),
(31, 'Footer Middle Social', 'footer-middle-social', '<ul>\r\n<li><a href=\"#\"><i class=\"fab fa-facebook-f\"></i></a></li>\r\n<li><a href=\"#\"><i class=\"fab fa-instagram\"></i></a></li>\r\n<li><a href=\"#\"><i class=\"fab fa-twitter\"></i></a></li>\r\n<li><a href=\"#\"><i class=\"fab fa-youtube\"></i></a></li>\r\n<li><a href=\"#\"><i class=\"fab fa-pinterest\"></i></a></li>\r\n</ul>', '2021-04-12 07:44:23', '2021-04-13 03:11:13', 1),
(32, 'Footer Copyright Text', 'footer-copyright-text', '<div class=\"item\"><span>© 2018 Burning Log. All rights reserved</span></div>', '2021-04-13 02:21:59', '2021-04-13 02:59:16', 1),
(33, 'Footer Copyright Logo', 'footer-copyright-logo', '<ul class=\"item\">\r\n<li><a href=\"#\"><img src=\"{{media url=\"wysiwyg/eWay.png\"}}\" alt=\"\"></a></li>\r\n<li><a href=\"#\"><img src=\"{{media url=\"wysiwyg/PayPal.png\"}}\" alt=\"\"></a></li>\r\n<li><a href=\"#\"><img src=\"{{media url=\"wysiwyg/Visa.png\"}}\" alt=\"\"></a></li>\r\n<li><a href=\"#\"><img src=\"{{media url=\"wysiwyg/Mastercard.png\"}}\" alt=\"\"></a></li>\r\n<li><a href=\"#\"><img src=\"{{media url=\"wysiwyg/American-express.png\"}}\" alt=\"\"></a></li>\r\n</ul>', '2021-04-13 02:28:45', '2021-04-13 02:47:36', 1),
(34, 'Header Top Social', 'header-top-social', '<li><a href=\"#\"><i class=\"fab fa-facebook-f\"></i></a></li>\r\n<li><a href=\"#\"><i class=\"fab fa-instagram\"></i></a></li>\r\n<li><a href=\"#\">Blog</a></li>', '2021-04-13 04:03:44', '2021-04-13 04:03:44', 1),
(35, 'Header Address Mobile', 'header-top-address-mobile', '<a href=\"#\"><i class=\"fas fa-map-marker-alt\"></i>\r\n<span>Canberra Showroom Open 7 Days</span></a>', '2021-04-15 04:34:16', '2021-04-15 07:07:47', 1),
(36, 'Header Contact Mobile', 'header-top-contact-mobile', '<a href=\"#\">\r\n<i class=\"fas fa-phone\"></i>\r\n<span>1300 660 330</span>\r\n</a>', '2021-04-15 04:41:40', '2021-04-15 06:59:34', 1),
(37, 'Footer Middle Categories Mobile', 'footer-middle-categories-mobile', '<p data-role=\"collapsible\"><span class=\"title\" data-role=\"trigger\">Categories</span></p>\r\n<ul class=\"content\" data-role=\"content\">\r\n<li>{{widget type=\"Magento\\Catalog\\Block\\Category\\Widget\\Link\" template=\"category/widget/link/link_block.phtml\" id_path=\"category/42\"}}</li>\r\n<li>{{widget type=\"Magento\\Catalog\\Block\\Category\\Widget\\Link\" template=\"category/widget/link/link_block.phtml\" id_path=\"category/43\"}}</li>\r\n<li><a href=\"#\">Outdoor daybeds</a></li>\r\n<li><a href=\"#\">Outdoor chairs and tables</a></li>\r\n<li><a href=\"#\">Garden furniture</a></li>\r\n<li><a href=\"#\">Umbrellas</a></li>\r\n<li><a href=\"#\">Outdoor heaters</a></li>\r\n<li><a href=\"#\">Outdoor living</a></li>\r\n<li><a href=\"#\">Clearance</a></li>\r\n</ul> ', '2021-04-16 06:38:58', '2021-04-16 08:37:00', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cms_block`
--
ALTER TABLE `cms_block`
  ADD PRIMARY KEY (`block_id`);
ALTER TABLE `cms_block` ADD FULLTEXT KEY `CMS_BLOCK_TITLE_IDENTIFIER_CONTENT` (`title`,`identifier`,`content`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cms_block`
--
ALTER TABLE `cms_block`
  MODIFY `block_id` smallint(6) NOT NULL AUTO_INCREMENT COMMENT 'Entity ID', AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;