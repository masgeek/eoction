-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Jan 11, 2017 at 12:30 PM
-- Server version: 5.7.11
-- PHP Version: 5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eoction`
--

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `COUNTRY_ID` int(11) NOT NULL,
  `COUNTRY_CODE` varchar(5) DEFAULT NULL,
  `COUNTRY_NAME` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`COUNTRY_ID`, `COUNTRY_CODE`, `COUNTRY_NAME`) VALUES
(1, 'AD', 'Andorra'),
(2, 'AE', 'United Arab Emirates'),
(3, 'AF', 'Afghanistan'),
(4, 'AG', 'Antigua and Barbuda'),
(5, 'AI', 'Anguilla'),
(6, 'AL', 'Albania'),
(7, 'AM', 'Armenia'),
(8, 'AO', 'Angola'),
(9, 'AQ', 'Antarctica'),
(10, 'AR', 'Argentina'),
(11, 'AS', 'American Samoa'),
(12, 'AT', 'Austria'),
(13, 'AU', 'Australia'),
(14, 'AW', 'Aruba'),
(15, 'AX', 'Åland Islands'),
(16, 'AZ', 'Azerbaijan'),
(17, 'BA', 'Bosnia and Herzegovina'),
(18, 'BB', 'Barbados'),
(19, 'BD', 'Bangladesh'),
(20, 'BE', 'Belgium'),
(21, 'BF', 'Burkina Faso'),
(22, 'BG', 'Bulgaria'),
(23, 'BH', 'Bahrain'),
(24, 'BI', 'Burundi'),
(25, 'BJ', 'Benin'),
(26, 'BL', 'Saint Barthélemy'),
(27, 'BM', 'Bermuda'),
(28, 'BN', 'Brunei Darussalam'),
(29, 'BO', 'Bolivia'),
(30, 'BQ', 'Caribbean Netherlands '),
(31, 'BR', 'Brazil'),
(32, 'BS', 'Bahamas'),
(33, 'BT', 'Bhutan'),
(34, 'BV', 'Bouvet Island'),
(35, 'BW', 'Botswana'),
(36, 'BY', 'Belarus'),
(37, 'BZ', 'Belize'),
(38, 'CA', 'Canada'),
(39, 'CC', 'Cocos (Keeling) Islands'),
(40, 'CD', 'Congo, Democratic Republic of'),
(41, 'CF', 'Central African Republic'),
(42, 'CG', 'Congo'),
(43, 'CH', 'Switzerland'),
(44, 'CI', 'Côte d\'Ivoire'),
(45, 'CK', 'Cook Islands'),
(46, 'CL', 'Chile'),
(47, 'CM', 'Cameroon'),
(48, 'CN', 'China'),
(49, 'CO', 'Colombia'),
(50, 'CR', 'Costa Rica'),
(51, 'CU', 'Cuba'),
(52, 'CV', 'Cape Verde'),
(53, 'CW', 'Curaçao'),
(54, 'CX', 'Christmas Island'),
(55, 'CY', 'Cyprus'),
(56, 'CZ', 'Czech Republic'),
(57, 'DE', 'Germany'),
(58, 'DJ', 'Djibouti'),
(59, 'DK', 'Denmark'),
(60, 'DM', 'Dominica'),
(61, 'DO', 'Dominican Republic'),
(62, 'DZ', 'Algeria'),
(63, 'EC', 'Ecuador'),
(64, 'EE', 'Estonia'),
(65, 'EG', 'Egypt'),
(66, 'EH', 'Western Sahara'),
(67, 'ER', 'Eritrea'),
(68, 'ES', 'Spain'),
(69, 'ET', 'Ethiopia'),
(70, 'FI', 'Finland'),
(71, 'FJ', 'Fiji'),
(72, 'FK', 'Falkland Islands'),
(73, 'FM', 'Micronesia, Federated States of'),
(74, 'FO', 'Faroe Islands'),
(75, 'FR', 'France'),
(76, 'GA', 'Gabon'),
(77, 'GB', 'United Kingdom'),
(78, 'GD', 'Grenada'),
(79, 'GE', 'Georgia'),
(80, 'GF', 'French Guiana'),
(81, 'GG', 'Guernsey'),
(82, 'GH', 'Ghana'),
(83, 'GI', 'Gibraltar'),
(84, 'GL', 'Greenland'),
(85, 'GM', 'Gambia'),
(86, 'GN', 'Guinea'),
(87, 'GP', 'Guadeloupe'),
(88, 'GQ', 'Equatorial Guinea'),
(89, 'GR', 'Greece'),
(90, 'GS', 'South Georgia and the South Sandwich Islands'),
(91, 'GT', 'Guatemala'),
(92, 'GU', 'Guam'),
(93, 'GW', 'Guinea-Bissau'),
(94, 'GY', 'Guyana'),
(95, 'HK', 'Hong Kong'),
(96, 'HM', 'Heard and McDonald Islands'),
(97, 'HN', 'Honduras'),
(98, 'HR', 'Croatia'),
(99, 'HT', 'Haiti'),
(100, 'HU', 'Hungary'),
(101, 'ID', 'Indonesia'),
(102, 'IE', 'Ireland'),
(103, 'IL', 'Israel'),
(104, 'IM', 'Isle of Man'),
(105, 'IN', 'India'),
(106, 'IO', 'British Indian Ocean Territory'),
(107, 'IQ', 'Iraq'),
(108, 'IR', 'Iran'),
(109, 'IS', 'Iceland'),
(110, 'IT', 'Italy'),
(111, 'JE', 'Jersey'),
(112, 'JM', 'Jamaica'),
(113, 'JO', 'Jordan'),
(114, 'JP', 'Japan'),
(115, 'KE', 'Kenya'),
(116, 'KG', 'Kyrgyzstan'),
(117, 'KH', 'Cambodia'),
(118, 'KI', 'Kiribati'),
(119, 'KM', 'Comoros'),
(120, 'KN', 'Saint Kitts and Nevis'),
(121, 'KP', 'North Korea'),
(122, 'KR', 'South Korea'),
(123, 'KW', 'Kuwait'),
(124, 'KY', 'Cayman Islands'),
(125, 'KZ', 'Kazakhstan'),
(126, 'LA', 'Lao People\'s Democratic Republic'),
(127, 'LB', 'Lebanon'),
(128, 'LC', 'Saint Lucia'),
(129, 'LI', 'Liechtenstein'),
(130, 'LK', 'Sri Lanka'),
(131, 'LR', 'Liberia'),
(132, 'LS', 'Lesotho'),
(133, 'LT', 'Lithuania'),
(134, 'LU', 'Luxembourg'),
(135, 'LV', 'Latvia'),
(136, 'LY', 'Libya'),
(137, 'MA', 'Morocco'),
(138, 'MC', 'Monaco'),
(139, 'MD', 'Moldova'),
(140, 'ME', 'Montenegro'),
(141, 'MF', 'Saint-Martin (France)'),
(142, 'MG', 'Madagascar'),
(143, 'MH', 'Marshall Islands'),
(144, 'MK', 'Macedonia'),
(145, 'ML', 'Mali'),
(146, 'MM', 'Myanmar'),
(147, 'MN', 'Mongolia'),
(148, 'MO', 'Macau'),
(149, 'MP', 'Northern Mariana Islands'),
(150, 'MQ', 'Martinique'),
(151, 'MR', 'Mauritania'),
(152, 'MS', 'Montserrat'),
(153, 'MT', 'Malta'),
(154, 'MU', 'Mauritius'),
(155, 'MV', 'Maldives'),
(156, 'MW', 'Malawi'),
(157, 'MX', 'Mexico'),
(158, 'MY', 'Malaysia'),
(159, 'MZ', 'Mozambique'),
(160, 'NA', 'Namibia'),
(161, 'NC', 'New Caledonia'),
(162, 'NE', 'Niger'),
(163, 'NF', 'Norfolk Island'),
(164, 'NG', 'Nigeria'),
(165, 'NI', 'Nicaragua'),
(166, 'NL', 'The Netherlands'),
(167, 'NO', 'Norway'),
(168, 'NP', 'Nepal'),
(169, 'NR', 'Nauru'),
(170, 'NU', 'Niue'),
(171, 'NZ', 'New Zealand'),
(172, 'OM', 'Oman'),
(173, 'PA', 'Panama'),
(174, 'PE', 'Peru'),
(175, 'PF', 'French Polynesia'),
(176, 'PG', 'Papua New Guinea'),
(177, 'PH', 'Philippines'),
(178, 'PK', 'Pakistan'),
(179, 'PL', 'Poland'),
(180, 'PM', 'St. Pierre and Miquelon'),
(181, 'PN', 'Pitcairn'),
(182, 'PR', 'Puerto Rico'),
(183, 'PS', 'Palestine, State of'),
(184, 'PT', 'Portugal'),
(185, 'PW', 'Palau'),
(186, 'PY', 'Paraguay'),
(187, 'QA', 'Qatar'),
(188, 'RE', 'Réunion'),
(189, 'RO', 'Romania'),
(190, 'RS', 'Serbia'),
(191, 'RU', 'Russian Federation'),
(192, 'RW', 'Rwanda'),
(193, 'SA', 'Saudi Arabia'),
(194, 'SB', 'Solomon Islands'),
(195, 'SC', 'Seychelles'),
(196, 'SD', 'Sudan'),
(197, 'SE', 'Sweden'),
(198, 'SG', 'Singapore'),
(199, 'SH', 'Saint Helena'),
(200, 'SI', 'Slovenia'),
(201, 'SJ', 'Svalbard and Jan Mayen Islands'),
(202, 'SK', 'Slovakia'),
(203, 'SL', 'Sierra Leone'),
(204, 'SM', 'San Marino'),
(205, 'SN', 'Senegal'),
(206, 'SO', 'Somalia'),
(207, 'SR', 'Suriname'),
(208, 'SS', 'South Sudan'),
(209, 'ST', 'Sao Tome and Principe'),
(210, 'SV', 'El Salvador'),
(211, 'SX', 'Sint Maarten (Dutch part)'),
(212, 'SY', 'Syria'),
(213, 'SZ', 'Swaziland'),
(214, 'TC', 'Turks and Caicos Islands'),
(215, 'TD', 'Chad'),
(216, 'TF', 'French Southern Territories'),
(217, 'TG', 'Togo'),
(218, 'TH', 'Thailand'),
(219, 'TJ', 'Tajikistan'),
(220, 'TK', 'Tokelau'),
(221, 'TL', 'Timor-Leste'),
(222, 'TM', 'Turkmenistan'),
(223, 'TN', 'Tunisia'),
(224, 'TO', 'Tonga'),
(225, 'TR', 'Turkey'),
(226, 'TT', 'Trinidad and Tobago'),
(227, 'TV', 'Tuvalu'),
(228, 'TW', 'Taiwan'),
(229, 'TZ', 'Tanzania'),
(230, 'UA', 'Ukraine'),
(231, 'UG', 'Uganda'),
(232, 'UM', 'United States Minor Outlying Islands'),
(233, 'US', 'United States'),
(234, 'UY', 'Uruguay'),
(235, 'UZ', 'Uzbekistan'),
(236, 'VA', 'Vatican'),
(237, 'VC', 'Saint Vincent and the Grenadines'),
(238, 'VE', 'Venezuela'),
(239, 'VG', 'Virgin Islands (British)'),
(240, 'VI', 'Virgin Islands (U.S.)'),
(241, 'VN', 'Vietnam'),
(242, 'VU', 'Vanuatu'),
(243, 'WF', 'Wallis and Futuna Islands'),
(244, 'WS', 'Samoa'),
(245, 'YE', 'Yemen'),
(246, 'YT', 'Mayotte'),
(247, 'ZA', 'South Africa'),
(248, 'ZM', 'Zambia'),
(249, 'ZW', 'Zimbabwe');

-- --------------------------------------------------------

--
-- Table structure for table `fry_products`
--

CREATE TABLE `fry_products` (
  `productid` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `brand` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `desc` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL COMMENT 'initial bidding price',
  `buyitnow` varchar(255) DEFAULT NULL,
  `cost_price` varchar(255) DEFAULT NULL,
  `sale_price` varchar(255) DEFAULT NULL,
  `retail_price` varchar(255) DEFAULT NULL,
  `allow_purchase` int(1) DEFAULT NULL,
  `available` int(1) DEFAULT NULL,
  `visible` int(1) DEFAULT NULL,
  `track_inventory` int(1) DEFAULT NULL,
  `stock_level` int(255) DEFAULT NULL,
  `min_stock` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `page_title` varchar(255) DEFAULT NULL,
  `search_keywords` varchar(255) DEFAULT NULL,
  `meta_keywords` varchar(255) DEFAULT NULL,
  `meta_desc` varchar(255) DEFAULT NULL,
  `condition` varchar(255) DEFAULT NULL,
  `show_condition` varchar(50) DEFAULT NULL,
  `upc` varchar(255) DEFAULT NULL,
  `Attribute1` varchar(255) DEFAULT NULL,
  `Attribute2` varchar(255) DEFAULT NULL,
  `Attribute3` varchar(255) DEFAULT NULL,
  `Attribute4` varchar(255) DEFAULT NULL,
  `Attribute5` varchar(255) DEFAULT NULL,
  `Attribute6` varchar(255) DEFAULT NULL,
  `Attribute7` varchar(255) DEFAULT NULL,
  `Attribute8` varchar(255) DEFAULT NULL,
  `Attribute9` varchar(255) DEFAULT NULL,
  `Attribute10` varchar(255) DEFAULT NULL,
  `Attribute11` varchar(255) DEFAULT NULL,
  `Attribute12` varchar(255) DEFAULT NULL,
  `Attribute13` varchar(255) DEFAULT NULL,
  `Attribute14` varchar(255) DEFAULT NULL,
  `Attribute15` varchar(255) DEFAULT NULL,
  `Attribute16` varchar(255) DEFAULT NULL,
  `Attribute17` varchar(255) DEFAULT NULL,
  `Attribute18` varchar(255) DEFAULT NULL,
  `Attribute19` varchar(255) DEFAULT NULL,
  `Attribute20` varchar(255) DEFAULT NULL,
  `Attribute21` varchar(255) DEFAULT NULL,
  `Attribute22` varchar(255) DEFAULT NULL,
  `Attribute23` varchar(255) DEFAULT NULL,
  `Attribute24` varchar(255) DEFAULT NULL,
  `Attribute25` varchar(255) DEFAULT NULL,
  `Attribute26` varchar(255) DEFAULT NULL,
  `Attribute27` varchar(255) DEFAULT NULL,
  `Attribute28` varchar(255) DEFAULT NULL,
  `Attribute29` varchar(255) DEFAULT NULL,
  `Attribute30` varchar(255) DEFAULT NULL,
  `Attribute31` varchar(255) DEFAULT NULL,
  `Attribute32` varchar(255) DEFAULT NULL,
  `ebay_cat_id1` varchar(255) DEFAULT NULL,
  `ebay_cat_id2` varchar(255) DEFAULT NULL,
  `notes` varchar(255) DEFAULT NULL,
  `stock_type` varchar(255) DEFAULT NULL,
  `stock_location` varchar(255) DEFAULT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `image3` varchar(255) DEFAULT NULL,
  `image4` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `fry_products`
--

INSERT INTO `fry_products` (`productid`, `name`, `category`, `brand`, `sku`, `desc`, `price`, `buyitnow`, `cost_price`, `sale_price`, `retail_price`, `allow_purchase`, `available`, `visible`, `track_inventory`, `stock_level`, `min_stock`, `weight`, `page_title`, `search_keywords`, `meta_keywords`, `meta_desc`, `condition`, `show_condition`, `upc`, `Attribute1`, `Attribute2`, `Attribute3`, `Attribute4`, `Attribute5`, `Attribute6`, `Attribute7`, `Attribute8`, `Attribute9`, `Attribute10`, `Attribute11`, `Attribute12`, `Attribute13`, `Attribute14`, `Attribute15`, `Attribute16`, `Attribute17`, `Attribute18`, `Attribute19`, `Attribute20`, `Attribute21`, `Attribute22`, `Attribute23`, `Attribute24`, `Attribute25`, `Attribute26`, `Attribute27`, `Attribute28`, `Attribute29`, `Attribute30`, `Attribute31`, `Attribute32`, `ebay_cat_id1`, `ebay_cat_id2`, `notes`, `stock_type`, `stock_location`, `image1`, `image2`, `image3`, `image4`) VALUES
(1, '18k Gold Over Sterling Silver Italian Crafted Cable Chain 1.26 Grams -18"', 'Top Selling/Jewelry/Necklace', '', 'C-BLL030D-18', '', '1', '39.99', '', '', '75', 1, 1, 1, 1, 10, '1', '1.26', '', 'Wedding, Party , Gift', '', '', 'New', NULL, 'Does not apply', 'Affinity Engagement Jewels', 'Necklace', 'Cable Chain', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', 'Gold Over', '', '', '', 'Italy', '', '', '', '18 Inches', 'Cable', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164330', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/BLL030N-18S3-W-2.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/BLL030N-18S3-1-Y.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/BLL030N-18S3-Y.jpg', ''),
(2, '18k Gold Over Sterling Silver Italian Crafted Cable Chain 1.42 Grams -18"', 'Top Selling/Jewelry/Necklace', '', 'C-BLL030N-18S3', '', '1', '39.99', '', '', '75', 1, 1, 1, 1, 10, '1', '1.42', '', 'Wedding, Party , Gift', '', '', 'New', NULL, 'Does not apply', 'Affinity Fashion Jewelry', 'Necklace', 'Cable Chain', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', 'Gold Over', '', '', '', 'Italy', '', '', '', '18 Inches', 'Cable', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164330', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/BLL030N-18S3-C-WH.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/BLL030N-18S3-1-Y.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/BLL030N-18S3-R.jpg', ''),
(3, 'Sterling Silver 18" Length Italian Crafted Curb Chain Necklace - 1.04mm', 'Top Selling/Jewelry/Necklace', '', 'C-J-CU2DC030-18R', '', '1', '44.99', '', '', '75', 1, 1, 1, 1, 10, '1', '1.49', '', 'Wedding, Party , Gift', '', '', 'New', NULL, 'Does Not Apply', 'Affinity Fine Jewelry', 'curb', 'Chain', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', '', '', '', '', 'Italy', '', '1.04mm', '', '18 Inches', 'Curb', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164330', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CU2DC030-18R-RG.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CU2DC030-18R-WG.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CU2DC030-18R-YG.jpg', ''),
(4, '18K Gold over Italian Crafted Curb Chain-18"', 'Top Selling/Jewelry/Necklace', '', 'C-CU030JBL-18', '', '1', '44.99', '', '', '75', 1, 1, 1, 1, 10, '1', '1.51', '', 'Wedding, Party , Gift', '', '', 'New', NULL, 'Does not apply', 'Affinity Gold', 'Necklace', 'Curb Chain', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', '', 'Womens', '', '', '', '', 'Italy', '', '', '', '18 Inches', 'Curb', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164330', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-CU030JBL-18-W.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-CU030JBL-18-Y.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-CU030JBL-18-R.jpg', ''),
(5, 'Sterling Silver Forzatina Rollo Chain 16" Solid 925 Italian Crafted Chain-1.08mm', 'Top Selling/Jewelry/Necklace', '', 'C-CA4DC030CJB-16', '', '1', '44.99', '', '', '75', 1, 1, 1, 1, 10, '1', '1.52', '', 'Wedding, Party , Gift', '', '', 'New', NULL, 'Does Not apply', 'Affinity Home Shopping', 'rolo', 'Chain', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', '', '', '', '', 'Italy', '', '1.08m', '', '16 Inches', 'rolo', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164330', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-CA4DC030CJB-16-WG.jpg', '', '', ''),
(6, '18K Gold over Italian Crafted Box Chain', 'Top Selling/Jewelry/Necklace', '', 'C-VD4DC080-16Y', '', '1', '49.99', '', '', '75', 1, 1, 1, 1, 10, '1', '1.56', '', 'Wedding, Party , Gift', '', '', 'New', NULL, 'Does not apply', 'Affinity Jewelry', 'Necklace', 'Box Chain', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', '', 'Womens', '', '', '', '', 'Italy', '', '', '', '', 'Box', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164330', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-VD4DC080-16Y-W.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-VD4DC080-16Y-Y.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-VD4DC080-16Y-R.jpg', ''),
(7, 'Sterling Silver 16" Length Italian Crafted Cable Chain Neckalce - 1.5mm', 'Top Selling/Jewelry/Necklace', '', 'C-CAHC-01045-16R', '', '1', '49.99', '', '', '75', 1, 1, 1, 1, 10, '1', '1.56', '', 'Wedding, Party , Gift', '', '', 'New', NULL, 'Does Not Apply', 'Affy Pawn Shop', 'cable', 'Chain', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', '', '', '', '', 'Italy', '', '1.5mm', '', '16 Inches', 'Cable', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164330', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-CAHC-01045-16R-W.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-CAHC-01045-16R-Y.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-CAHC-01045-16R-R.jpg', ''),
(8, 'Sterling Silver .8mm Italian Crafted 18" Length Box Chain Necklace', 'Top Selling/Jewelry/Necklace', '', 'C-VD4DC080-16Y', '', '1', '49.99', '', '', '75', 1, 1, 1, 1, 10, '1', '1.56', '', 'Wedding, Party , Gift', '', '', 'New', NULL, 'Does Not apply', 'Diamant Jewels', 'box', 'Chain', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', '', '', '', '', 'Italy', '', '0.8mm', '', '18 Inches', 'Box', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164330', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-CHN-VD4DC080-18Y-YG.jpg', '', '', ''),
(9, 'Sterling Silver .8mm Italian Crafted 16" Length Box Chain Necklace', 'Top Selling/Jewelry/Necklace', '', 'C-VD4DC080-16Y', '', '1', '49.99', '', '', '75', 1, 1, 1, 1, 10, '1', '1.56', '', 'Wedding, Party , Gift', '', '', 'New', NULL, 'Does Not Apply', 'Findings N Jewelry', 'box', 'Chain', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', '', '', '', '', 'Italy', '', '0.8mm', '', '16 Inches', 'Box', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164330', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/VD4DC080-16Y-RG.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/VD4DC080-16Y-WG.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/VD4DC080-16Y-YG.jpg', ''),
(10, '18k Gold Over Sterling Silver Italian  Bead Chain Necklace 2.19 Grams -18" 1.0MM', 'Top Selling/Jewelry/Necklace', '', 'C-BA8DC100-18', '', '1', '53.99', '', '', '75', 1, 1, 1, 1, 10, '1', '1.57', '', 'Wedding, Party , Gift', '', '', 'New', NULL, 'Does Not Apply', 'Gem Depot', 'Chain', 'Bead', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', '', '', '', '', 'Italy', '', '1MM', '', '18 Inches', 'Bead', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164330', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/BA8DC100(3+1)-18Y-W.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/BA8DC100(3+1)-18Y-Y.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/BA8DC100(3+1)-18Y-R.jpg', ''),
(11, 'Sterling Silver 16" Length Italian Multi Tone Chain Neckalce - 1.5mm', 'Top Selling/Jewelry/Necklace', '', 'C-CADODC1.5-16S3', '', '1', '53.99', '', '', '75', 1, 1, 1, 1, 10, '1', '1.63', '', 'Wedding, Party , Gift', '', '', 'New', NULL, 'Does Not Apply', 'Gemstone Place', 'cable', 'Chain', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', '', '', '', '', 'Italy', '', '1.5mm', '', '16 Inches', '', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164330', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CADODC15-16S3.jpg', '', '', ''),
(12, 'Sterling Silver Forzatina Rollo Chain 16" Italian Chain Necklace-1.08mm', 'Top Selling/Jewelry/Necklace', '', 'C-CA4DC030CJB-18', '', '1', '53.99', '', '', '75', 1, 1, 1, 1, 10, '1', '1.66', '', 'Wedding, Party , Gift', '', '', 'New', NULL, 'Does Not Apply', 'Jewelry Auction House', 'cable', 'Chain', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', '', '', '', '', 'Italy', '', '1.08mm', '', '16 Inches', 'Rollo', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164330', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CA4DC030CJB-18-RG.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CA4DC030CJB-18-WG.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CA4DC030CJB-18-YG.jpg', ''),
(13, 'Sterling Silver 16" Italian Flat Cable Chain Necklace-2.05MM', 'Top Selling/Jewelry/Necklace', '', 'C-CAHC-01040-18Y', '', '1', '55.99', '', '', '75', 1, 1, 1, 1, 10, '1', '1.72', '', 'Wedding, Party , Gift', '', '', 'New', NULL, 'Does Not Apply', 'JP Jewels8', 'curb', 'Chain', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', '', '', '', '', 'Italy', '', '2.05mm', '', '16 Inches', 'Cable', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164330', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CAHC-0140-18Y-RG.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CAHC-0140-18Y-WG.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CAHC-0140-16Y-RG.jpg', ''),
(14, 'Sterling Silver 16" Italian Crafted Cable Chain Necklace,1.5mm', 'Top Selling/Jewelry/Necklace', '', 'C-J-CADODC1.5-18R', '', '1', '55.99', '', '', '75', 1, 1, 1, 1, 10, '1', '1.72', '', 'Wedding, Party , Gift', '', '', 'New', NULL, 'Does Not Apply', 'Preloved Jewelry', 'Sparkle', 'Chain', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', '', '', '', '', 'Italy', '', '1.5mm', '', '16 Inches', 'Cable', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164330', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/V-C-J-CADODC1.5-18Y-RG.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CADODC-16R-WG.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/J-CADODC1.5-16R-YG.jpg', ''),
(15, 'Sterling Silver 18" Italian Crafted Cable Chain Necklace,1.5mm', 'Top Selling/Jewelry/Necklace', '', 'C-J-CADODC1.5-18Y', '', '1', '55.99', '', '', '75', 1, 1, 1, 1, 10, '1', '1.72', '', 'Wedding, Party , Gift', '', '', 'New', NULL, 'Does Not Apply', 'Affinity Diamond Jewelry', 'snake', 'Chain', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', '', '', '', '', 'Italy', '', '1.5mm', '', '18 Inches', 'Cable', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164330', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/J-CADODC1.5-18Y-WG.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/J-CADODC1.5-18Y-YG.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/V-C-J-CADODC1.5-18Y-RG.jpg', ''),
(16, '18k Gold Over Sterling Silver Italian Crafted Micro Box Chain 1.74 Grams -16"', 'Top Selling/Jewelry/Necklace', '', 'C-J-VD4DC080-16R', '', '1', '55.99', '', '', '75', 1, 1, 1, 1, 10, '1', '1.74', '', 'Wedding, Party , Gift', '', '', 'New', NULL, 'Does not apply', 'Affinity Engagement Jewels', 'Necklace', 'Micro Box Chain', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', 'Gold Over', '', '', '', 'Italy', '', '', '', '16 Inches', 'Box', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164330', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/VD4DC080BP-18-2.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/VD4DC080BP-18-Y.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/VD4DC080BP-18-R.jpg', ''),
(17, 'Sterling Silver 16" Italian Crafted Ball Bead Chain Necklace,1.2mm', 'Top Selling/Jewelry/Necklace', '', 'C-BA8DC120-16', '', '1', '55.99', '', '', '75', 1, 1, 1, 1, 10, '1', '1.85', '', 'Wedding, Party , Gift', '', '', 'New', NULL, 'Does Not Apply', 'Affinity Fashion Jewelry', 'curb', 'Chain', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', '', '', '', '', 'Italy', '', '1.2mm', '', '16 Inches', 'Bead', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164330', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/BA8DC120-16-RG.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/BA8DC150-16-W.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/BA8DC120-16-YG.jpg', ''),
(18, 'Sterling Silver Italian 16" Sparkle Chain Necklace-1.26mm', 'Top Selling/Jewelry/Necklace', '', 'C-SET2DC040-16', '', '1', '59.99', '', '', '75', 1, 1, 1, 1, 10, '1', '1.91', '', 'Wedding, Party , Gift', '', '', 'New', NULL, 'Does Not Apply', 'Affinity Fine Jewelry', 'Sparkle', 'Chain', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', '', '', '', '', 'Italy', '', '1.26mm', '', '16 Inches', 'Sparkle', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164330', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CHN-SET2DC040-16-W.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CHN-SET2DC040-16-Y.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CHN-SET2DC040-16-R.jpg', ''),
(19, 'Sterling Silver Italian 16" Curb Chain Necklace, 1.5mm', 'Top Selling/Jewelry/Necklace', '', 'C-BLL030BP(1)-18', '', '1', '59.99', '', '', '75', 1, 1, 1, 1, 10, '1', '1.94', '', 'Wedding, Party , Gift', '', '', 'New', NULL, 'Does Not Apply', 'Affinity Gold', 'curb', 'Chain', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', '', '', '', '', 'Italy', '', '1.5mm', '', '16 Inches', 'Curb', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164330', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CHN-BLL030BP-10-18-W.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CHN-BLL030BP-10-18-Y.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CHN-BLL030BP-10-18-R.jpg', ''),
(20, 'Sterling Silver Italian 16" Multi Tone Bar and Curb Chain necklace,1.5mm', 'Top Selling/Jewelry/Necklace', '', 'C-CA030BP-18S3', '', '1', '59.99', '', '', '75', 1, 1, 1, 1, 10, '1', '1.94', '', 'Wedding, Party , Gift', '', '', 'New', NULL, 'Does Not Apply', 'Affinity Home Shopping', 'curb', 'Chain', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', '', '', '', '', 'Italy', '', '1.5mm', '', '16 Inches', 'Bar and Curb', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164330', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CHN-CA030BP-18S3-16.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CHN-CA030BP-18S3-18.jpg', '', ''),
(21, 'Sterling Silver Italian Crafted 16" Dogtag Beads Chain Necklace - 1.0mm', 'Top Selling/Jewelry/Necklace', '', 'C-BA8DC100(3+1)-16', '', '1', '59.99', '', '', '75', 1, 1, 1, 1, 10, '1', '1.96', '', 'Wedding, Party , Gift', '', '', 'New', NULL, 'Does Not apply', 'Affinity Jewelry', 'Dogtag Beads Chain Necklaces', 'Chain', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', '', '', '', '', 'Italy', '', '1.0mm', '', '16 Inches', 'Bead', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164330', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CHN-BA8DC100(3+1)-16-W.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CHN-BA8DC100(3+1)-16-Y.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CHN-BA8DC100(3+1)-16-R.jpg', ''),
(22, '18k Gold Over Sterling Silver Italian Crafted Cable Link Chain 1.99 Grams -18"', 'Top Selling/Jewelry/Necklace', '', 'C-CA035-18R', '', '1', '59.99', '', '', '75', 1, 1, 1, 1, 10, '1', '1.99', '', 'Wedding, Party , Gift', '', '', 'New', NULL, 'Does not apply', 'Affy Pawnshop', 'Necklace', 'Link Chain', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', 'Gold Over', '', '', '', 'Italy', '', '', '', '18 Inches', 'Cable', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164330', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CA035-18R-W-WH.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CA035-18R-Y.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CA035-18R-R.jpg', ''),
(23, '18K Rose Gold Over 925 3mm Round Diamond April Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-ROSE-APR', '', '1', '24.995', '', '', '49.99', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Diamond', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-April-RG.jpg', '', '', ''),
(24, '18K Rose Gold Over 925 3mm Round Peridot August Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-ROSE-AUG', '', '1', '24.995', '', '', '49.99', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Peridot', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Aug-RG.jpg', '', '', ''),
(25, '18K Rose Gold Over 925 3mm Round Blue Topaz December Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-ROSE-DEC', '', '1', '24.995', '', '', '49.99', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Topaz', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Dec-RG.jpg', '', '', ''),
(26, '18K Rose Gold Over 925 3mm Round Amethyst February Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-ROSE-FEB', '', '1', '24.995', '', '', '49.99', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Amethyst', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Feb-RG.jpg', '', '', ''),
(27, '18K Rose Gold Over 925 3mm Round Garnet January Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-ROSE-JAN', '', '1', '24.995', '', '', '49.99', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Garnet', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Jan-RG.jpg', '', '', ''),
(28, '18K Rose Gold Over 925 3mm Round Ruby July Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-ROSE-JUL', '', '1', '24.995', '', '', '49.99', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Ruby', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-July-RG.jpg', '', '', ''),
(29, '18K Rose Gold Over 925 3mm Round Alexandrite June Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-ROSE-JUN', '', '1', '24.995', '', '', '49.99', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Alexandrite', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-June-RG.jpg', '', '', ''),
(30, '18K Rose Gold Over 925 3mm Round Aquamarine March Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-ROSE-MAR', '', '1', '24.995', '', '', '49.99', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Aquamarine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-March-RG.jpg', '', '', ''),
(31, '18K Rose Gold Over 925 3mm Round Emerald May Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-ROSE-MAY', '', '1', '24.995', '', '', '49.99', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Emerald', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-May-RG.jpg', '', '', ''),
(32, '18K Rose Gold Over 925 3mm Round Citrine November Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-ROSE-NOV', '', '1', '24.995', '', '', '49.99', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Citrine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Nov-RG.jpg', '', '', ''),
(33, '18K Rose Gold Over 925 3mm Round Tourmaline October Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-ROSE-OCT', '', '1', '24.995', '', '', '49.99', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Tourmaline', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Oct-RG.jpg', '', '', ''),
(34, '18K Rose Gold Over 925 3mm Blue Sapphire September Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-ROSE-SEP', '', '1', '24.995', '', '', '49.99', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Sapphire', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Sep-RG.jpg', '', '', ''),
(35, '18K White Gold Over 925 3mm Round Diamond April Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-WHITE-APR', '', '1', '24.995', '', '', '49.99', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Diamond', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-April-WG.jpg', '', '', ''),
(36, '18K White Gold Over 925 3mm Round Peridot August Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-WHITE-AUG', '', '1', '24.995', '', '', '49.99', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Peridot', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Aug-WG.jpg', '', '', ''),
(37, '18K White Gold Over 925 3mm Round Blue Topaz December Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-WHITE-DEC', '', '1', '24.995', '', '', '49.99', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Topaz', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Dec-RG.jpg', '', '', ''),
(38, '18K White Gold Over 925 3mm Round Amethyst February Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-WHITE-FEB', '', '1', '24.995', '', '', '49.99', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Amethyst', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Feb-WG.jpg', '', '', ''),
(39, '18K White Gold Over 925 3mm Round Garnet January Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-WHITE-JAN', '', '1', '24.995', '', '', '49.99', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Garnet', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Jan-WG.jpg', '', '', ''),
(40, '18K White Gold Over 925 3mm Round Ruby July Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-WHITE-JUL', '', '1', '24.995', '', '', '49.99', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Ruby', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-July-WG.jpg', '', '', ''),
(41, '18K White Gold Over 925 3mm Round Alexandrite June Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-WHITE-JUN', '', '1', '24.995', '', '', '49.99', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Alexandrite', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-June-WG.jpg', '', '', ''),
(42, '18K White Gold Over 925 3mm Round Aquamarine March Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-WHITE-MAR', '', '1', '24.995', '', '', '49.99', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Aquamarine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-March-WG.jpg', '', '', ''),
(43, '18K White Gold Over 925 3mm Round Emerald May Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-WHITE-MAY', '', '1', '24.995', '', '', '49.99', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Emerald', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-May-WG.jpg', '', '', ''),
(44, '18K White Gold Over 925 3mm Round Citrine November Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-WHITE-NOV', '', '1', '24.995', '', '', '49.99', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Citrine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Nov-WG.jpg', '', '', ''),
(45, '18K White Gold Over 925 3mm Round Tourmaline October Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-WHITE-OCT', '', '1', '24.995', '', '', '49.99', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Tourmaline', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Oct-WG.jpg', '', '', ''),
(46, '18K White Gold Over 925 3mm Blue Sapphire September Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-WHITE-SEP', '', '1', '24.995', '', '', '49.99', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Sapphire', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Sep-WG.jpg', '', '', ''),
(47, '18K Yellow Gold Over 925 3mm Round Diamond April Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-YELLOW-APR', '', '1', '24.995', '', '', '49.99', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Diamond', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-April-YG.jpg', '', '', ''),
(48, '18K Yellow Gold Over 925 3mm Round Peridot August Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-YELLOW-AUG', '', '1', '24.995', '', '', '49.99', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Peridot', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Aug-YG.jpg', '', '', ''),
(49, '18K Yellow Gold Over 925 3mm Round Blue Topaz December Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-YELLOW-DEC', '', '1', '24.995', '', '', '49.99', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Topaz', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Dec-YG.jpg', '', '', ''),
(50, '18K Yellow Gold Over 925 3mm Round Amethyst February Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-YELLOW-FEB', '', '1', '24.995', '', '', '49.99', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Amethyst', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Feb-YG.jpg', '', '', ''),
(51, '18K Yellow Gold Over 925 3mm Round Garnet January Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-YELLOW-JAN', '', '1', '24.995', '', '', '49.99', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Garnet', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Jan-YG.jpg', '', '', ''),
(52, '18K Yellow Gold Over 925 3mm Round Ruby July Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-YELLOW-JUL', '', '1', '24.995', '', '', '49.99', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Ruby', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-July-YG.jpg', '', '', ''),
(53, '18K Yellow Gold Over 925 3mm Round Alexandrite June Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-YELLOW-JUN', '', '1', '24.995', '', '', '49.99', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Alexandrite', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-June-YG.jpg', '', '', ''),
(54, '18K Yellow Gold Over 925 3mm Round Aquamarine March Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-YELLOW-MAR', '', '1', '24.995', '', '', '49.99', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Aquamarine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-March-YG.jpg', '', '', ''),
(55, '18K Yellow Gold Over 925 3mm Round Emerald May Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-YELLOW-MAY', '', '1', '24.995', '', '', '49.99', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Emerald', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-May-YG.jpg', '', '', ''),
(56, '18K Yellow Gold Over 925 3mm Round Citrine November Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-YELLOW-NOV', '', '1', '24.995', '', '', '49.99', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Citrine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Nov-YG.jpg', '', '', ''),
(57, '18K Yellow Gold Over 925 3mm Round Tourmaline October Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-YELLOW-OCT', '', '1', '24.995', '', '', '49.99', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Tourmaline', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Oct-YG.jpg', '', '', ''),
(58, '18K Yellow Gold Over 925 3mm Blue Sapphire September Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-YELLOW-SEP', '', '1', '25', '', '', '50', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Sapphire', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Sep-YG.jpg', '', '', ''),
(59, '18K Rose Gold Over 925 4mm Round Diamond April Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-ROSE-APR', '', '1', '37.5', '', '', '75', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Diamond', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-April-RG.jpg', '', '', ''),
(60, '18K Rose Gold Over 925 4mm Round Peridot August Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-ROSE-AUG', '', '1', '37.5', '', '', '75', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Peridot', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Aug-RG.jpg', '', '', ''),
(61, '18K Rose Gold Over 925 4mm Round Blue Topaz December Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-ROSE-DEC', '', '1', '37.5', '', '', '75', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Topaz', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Dec-RG.jpg', '', '', ''),
(62, '18K Rose Gold Over 925 4mm Round Amethyst February Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-ROSE-FEB', '', '1', '37.5', '', '', '75', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Amethyst', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Feb-RG.jpg', '', '', ''),
(63, '18K Rose Gold Over 925 4mm Round Garnet January Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-ROSE-JAN', '', '1', '37.5', '', '', '75', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Garnet', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Jan-RG.jpg', '', '', ''),
(64, '18K Rose Gold Over 925 4mm Round Ruby July Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-ROSE-JUL', '', '1', '37.5', '', '', '75', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Ruby', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-July-RG.jpg', '', '', ''),
(65, '18K Rose Gold Over 925 4mm Round Alexandrite June Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-ROSE-JUN', '', '1', '37.5', '', '', '75', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Alexandrite', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-June-RG.jpg', '', '', ''),
(66, '18K Rose Gold Over 925 4mm Round Aquamarine March Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-ROSE-MAR', '', '1', '37.5', '', '', '75', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Aquamarine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-March-RG.jpg', '', '', ''),
(67, '18K Rose Gold Over 925 4mm Round Emerald May Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-ROSE-MAY', '', '1', '37.5', '', '', '75', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Emerald', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-May-RG.jpg', '', '', ''),
(68, '18K Rose Gold Over 925 4mm Round Citrine November Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-ROSE-NOV', '', '1', '37.5', '', '', '75', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Citrine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Nov-RG.jpg', '', '', '');
INSERT INTO `fry_products` (`productid`, `name`, `category`, `brand`, `sku`, `desc`, `price`, `buyitnow`, `cost_price`, `sale_price`, `retail_price`, `allow_purchase`, `available`, `visible`, `track_inventory`, `stock_level`, `min_stock`, `weight`, `page_title`, `search_keywords`, `meta_keywords`, `meta_desc`, `condition`, `show_condition`, `upc`, `Attribute1`, `Attribute2`, `Attribute3`, `Attribute4`, `Attribute5`, `Attribute6`, `Attribute7`, `Attribute8`, `Attribute9`, `Attribute10`, `Attribute11`, `Attribute12`, `Attribute13`, `Attribute14`, `Attribute15`, `Attribute16`, `Attribute17`, `Attribute18`, `Attribute19`, `Attribute20`, `Attribute21`, `Attribute22`, `Attribute23`, `Attribute24`, `Attribute25`, `Attribute26`, `Attribute27`, `Attribute28`, `Attribute29`, `Attribute30`, `Attribute31`, `Attribute32`, `ebay_cat_id1`, `ebay_cat_id2`, `notes`, `stock_type`, `stock_location`, `image1`, `image2`, `image3`, `image4`) VALUES
(69, '18K Rose Gold Over 925 4mm Round Tourmaline October Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-ROSE-OCT', '', '1', '37.5', '', '', '75', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Tourmaline', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Oct-RG.jpg', '', '', ''),
(70, '18K Rose Gold Over 925 4mm Blue Sapphire September Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-ROSE-SEP', '', '1', '37.5', '', '', '75', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Sapphire', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Sep-RG.jpg', '', '', ''),
(71, '18K White Gold Over 925 4mm Round Diamond April Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-WHITE-APR', '', '1', '37.5', '', '', '75', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Diamond', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-April-WG.jpg', '', '', ''),
(72, '18K White Gold Over 925 4mm Round Peridot August Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-WHITE-AUG', '', '1', '37.5', '', '', '75', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Peridot', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Aug-WG.jpg', '', '', ''),
(73, '18K White Gold Over 925 4mm Round Blue Topaz December Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-WHITE-DEC', '', '1', '37.5', '', '', '75', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Topaz', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Dec-WG.jpg', '', '', ''),
(74, '18K White Gold Over 925 4mm Round Amethyst February Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-WHITE-FEB', '', '1', '37.5', '', '', '75', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Amethyst', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Feb-WG.jpg', '', '', ''),
(75, '18K White Gold Over 925 4mm Round Garnet January Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-WHITE-JAN', '', '1', '37.5', '', '', '75', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Garnet', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Jan-WG.jpg', '', '', ''),
(76, '18K White Gold Over 925 4mm Round Ruby July Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-WHITE-JUL', '', '1', '37.5', '', '', '75', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Ruby', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-July-WG.jpg', '', '', ''),
(77, '18K White Gold Over 925 4mm Round Alexandrite June Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-WHITE-JUN', '', '1', '37.5', '', '', '75', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Alexandrite', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-June-WG.jpg', '', '', ''),
(78, '18K White Gold Over 925 4mm Round Aquamarine March Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-WHITE-MAR', '', '1', '37.5', '', '', '75', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Aquamarine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-March-WG.jpg', '', '', ''),
(79, '18K White Gold Over 925 4mm Round Emerald May Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-WHITE-MAY', '', '1', '37.5', '', '', '75', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Emerald', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-May-WG.jpg', '', '', ''),
(80, '18K White Gold Over 925 4mm Round Citrine November Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-WHITE-NOV', '', '1', '37.5', '', '', '75', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Citrine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Nov-WG.jpg', '', '', ''),
(81, '18K White Gold Over 925 4mm Round Tourmaline October Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-WHITE-OCT', '', '1', '37.5', '', '', '75', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Tourmaline', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Oct-WG.jpg', '', '', ''),
(82, '18K White Gold Over 925 4mm Blue Sapphire September Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-WHITE-SEP', '', '1', '37.5', '', '', '75', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Sapphire', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Sep-WG.jpg', '', '', ''),
(83, '18K Yellow Gold Over 925 4mm Round Diamond April Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-YELLOW-APR', '', '1', '37.5', '', '', '75', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Diamond', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-April-YG.jpg', '', '', ''),
(84, '18K Yellow Gold Over 925 4mm Round Peridot August Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-YELLOW-AUG', '', '1', '37.5', '', '', '75', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Peridot', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Aug-YG.jpg', '', '', ''),
(85, '18K Yellow Gold Over 925 4mm Round Blue Topaz December Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-YELLOW-DEC', '', '1', '37.5', '', '', '75', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Topaz', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Dec-YG.jpg', '', '', ''),
(86, '18K Yellow Gold Over 925 4mm Round Amethyst February Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-YELLOW-FEB', '', '1', '37.5', '', '', '75', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Amethyst', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Feb-YG.jpg', '', '', ''),
(87, '18K Yellow Gold Over 925 4mm Round Garnet January Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-YELLOW-JAN', '', '1', '37.5', '', '', '75', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Garnet', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Jan-YG.jpg', '', '', ''),
(88, '18K Yellow Gold Over 925 4mm Round Ruby July Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-YELLOW-JUL', '', '1', '37.5', '', '', '75', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Ruby', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-July-YG.jpg', '', '', ''),
(89, '18K Yellow Gold Over 925 4mm Round Alexandrite June Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-YELLOW-JUN', '', '1', '37.5', '', '', '75', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Alexandrite', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-June-YG.jpg', '', '', ''),
(90, '18K Yellow Gold Over 925 4mm Round Aquamarine March Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-YELLOW-MAR', '', '1', '37.5', '', '', '75', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Aquamarine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-March-YG.jpg', '', '', ''),
(91, '18K Yellow Gold Over 925 4mm Round Emerald May Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-YELLOW-MAY', '', '1', '37.5', '', '', '75', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Emerald', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-May-YG.jpg', '', '', ''),
(92, '18K Yellow Gold Over 925 4mm Round Citrine November Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-YELLOW-NOV', '', '1', '37.5', '', '', '75', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Citrine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Nov-YG.jpg', '', '', ''),
(93, '18K Yellow Gold Over 925 4mm Round Tourmaline October Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-YELLOW-OCT', '', '1', '37.5', '', '', '75', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Tourmaline', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Oct-YG.jpg', '', '', ''),
(94, '18K Yellow Gold Over 925 4mm Blue Sapphire September Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-YELLOW-SEP', '', '1', '37.5', '', '', '75', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Sapphire', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Sep-YG.jpg', '', '', ''),
(95, '18K Rose Gold Over 925 5mm Round Diamond April Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-ROSE-APR', '', '1', '50', '', '', '100', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Diamond', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-April-RG.jpg', '', '', ''),
(96, '18K Rose Gold Over 925 5mm Round Peridot August Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-ROSE-AUG', '', '1', '50', '', '', '100', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Peridot', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Aug-RG.jpg', '', '', ''),
(97, '18K Rose Gold Over 925 5mm Round Blue Topaz December Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-ROSE-DEC', '', '1', '50', '', '', '100', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Topaz', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Dec-RG.jpg', '', '', ''),
(98, '18K Rose Gold Over 925 5mm Round Amethyst February Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-ROSE-FEB', '', '1', '50', '', '', '100', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Amethyst', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Feb-RG.jpg', '', '', ''),
(99, '18K Rose Gold Over 925 5mm Round Garnet January Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-ROSE-JAN', '', '1', '50', '', '', '100', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Garnet', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Jan-RG.jpg', '', '', ''),
(100, '18K Rose Gold Over 925 5mm Round Ruby July Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-ROSE-JUL', '', '1', '50', '', '', '100', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Ruby', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-July-RG.jpg', '', '', ''),
(101, '18K Rose Gold Over 925 5mm Round Alexandrite June Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-ROSE-JUN', '', '1', '50', '', '', '100', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Alexandrite', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-June-RG.jpg', '', '', ''),
(102, '18K Rose Gold Over 925 5mm Round Aquamarine March Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-ROSE-MAR', '', '1', '50', '', '', '100', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Aquamarine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-March-RG.jpg', '', '', ''),
(103, '18K Rose Gold Over 925 5mm Round Emerald May Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-ROSE-MAY', '', '1', '50', '', '', '100', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Emerald', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-May-RG.jpg', '', '', ''),
(104, '18K Rose Gold Over 925 5mm Round Citrine November Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-ROSE-NOV', '', '1', '50', '', '', '100', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Citrine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Nov-RG.jpg', '', '', ''),
(105, '18K Rose Gold Over 925 5mm Round Tourmaline October Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-ROSE-OCT', '', '1', '50', '', '', '100', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Tourmaline', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Oct-RG.jpg', '', '', ''),
(106, '18K Rose Gold Over 925 5mm Blue Sapphire September Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-ROSE-SEP', '', '1', '50', '', '', '100', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Sapphire', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Sep-RG.jpg', '', '', ''),
(107, '18K White Gold Over 925 5mm Round Diamond April Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-WHITE-APR', '', '1', '50', '', '', '100', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Diamond', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-April-WG.jpg', '', '', ''),
(108, '18K White Gold Over 925 5mm Round Peridot August Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-WHITE-AUG', '', '1', '50', '', '', '100', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Peridot', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Aug-WG.jpg', '', '', ''),
(109, '18K White Gold Over 925 5mm Round Blue Topaz December Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-WHITE-DEC', '', '1', '50', '', '', '100', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Topaz', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Dec-WG.jpg', '', '', ''),
(110, '18K White Gold Over 925 5mm Round Amethyst February Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-WHITE-FEB', '', '1', '50', '', '', '100', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Amethyst', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Feb-WG.jpg', '', '', ''),
(111, '18K White Gold Over 925 5mm Round Garnet January Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-WHITE-JAN', '', '1', '50', '', '', '100', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Garnet', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Jan-WG.jpg', '', '', ''),
(112, '18K White Gold Over 925 5mm Round Ruby July Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-WHITE-JUL', '', '1', '50', '', '', '100', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Ruby', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-July-WG.jpg', '', '', ''),
(113, '18K White Gold Over 925 5mm Round Alexandrite June Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-WHITE-JUN', '', '1', '50', '', '', '100', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Alexandrite', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-June-WG.jpg', '', '', ''),
(114, '18K White Gold Over 925 5mm Round Aquamarine March Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-WHITE-MAR', '', '1', '50', '', '', '100', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Aquamarine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-March-WG.jpg', '', '', ''),
(115, '18K White Gold Over 925 5mm Round Emerald May Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-WHITE-MAY', '', '1', '50', '', '', '100', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Emerald', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-May-WG.jpg', '', '', ''),
(116, '18K White Gold Over 925 5mm Round Citrine November Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-WHITE-NOV', '', '1', '50', '', '', '100', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Citrine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Nov-WG.jpg', '', '', ''),
(117, '18K White Gold Over 925 5mm Round Tourmaline October Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-WHITE-OCT', '', '1', '50', '', '', '100', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Tourmaline', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Oct-WG.jpg', '', '', ''),
(118, '18K White Gold Over 925 5mm Blue Sapphire September Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-WHITE-SEP', '', '1', '50', '', '', '100', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Sapphire', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Sep-WG.jpg', '', '', ''),
(119, '18K Yellow Gold Over 925 5mm Round Diamond April Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-YELLOW-APR', '', '1', '50', '', '', '100', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Diamond', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-April-YG.jpg', '', '', ''),
(120, '18K Yellow Gold Over 925 5mm Round Peridot August Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-YELLOW-AUG', '', '1', '50', '', '', '100', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Peridot', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Aug-YG.jpg', '', '', ''),
(121, '18K Yellow Gold Over 925 5mm Round Blue Topaz December Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-YELLOW-DEC', '', '1', '50', '', '', '100', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Topaz', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Dec-YG.jpg', '', '', ''),
(122, '18K Yellow Gold Over 925 5mm Round Amethyst February Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-YELLOW-FEB', '', '1', '50', '', '', '100', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Amethyst', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Feb-YG.jpg', '', '', ''),
(123, '18K Yellow Gold Over 925 5mm Round Garnet January Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-YELLOW-JAN', '', '1', '50', '', '', '100', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Garnet', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Jan-YG.jpg', '', '', ''),
(124, '18K Yellow Gold Over 925 5mm Round Ruby July Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-YELLOW-JUL', '', '1', '50', '', '', '100', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Ruby', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-July-YG.jpg', '', '', ''),
(125, '18K Yellow Gold Over 925 5mm Round Alexandrite June Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-YELLOW-JUN', '', '1', '50', '', '', '100', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Alexandrite', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-June-YG.jpg', '', '', ''),
(126, '18K Yellow Gold Over 925 5mm Round Aquamarine March Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-YELLOW-MAR', '', '1', '50', '', '', '100', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Aquamarine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-March-YG.jpg', '', '', ''),
(127, '18K Yellow Gold Over 925 5mm Round Emerald May Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-YELLOW-MAY', '', '1', '50', '', '', '100', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Emerald', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-May-YG.jpg', '', '', ''),
(128, '18K Yellow Gold Over 925 5mm Round Citrine November Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-YELLOW-NOV', '', '1', '50', '', '', '100', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Citrine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Nov-YG.jpg', '', '', ''),
(129, '18K Yellow Gold Over 925 5mm Round Tourmaline October Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-YELLOW-OCT', '', '1', '50', '', '', '100', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Tourmaline', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Oct-YG.jpg', '', '', ''),
(130, '18K Yellow Gold Over 925 5mm Blue Sapphire September Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-YELLOW-SEP', '', '1', '50', '', '', '100', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Sapphire', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Sep-YG.jpg', '', '', ''),
(131, '18K Rose Gold Over 925 6mm Round Diamond April Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-ROSE-APR', '', '1', '62.5', '', '', '125', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Diamond', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-April-RG.jpg', '', '', ''),
(132, '18K Rose Gold Over 925 6mm Round Peridot August Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-ROSE-AUG', '', '1', '62.5', '', '', '125', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Peridot', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Aug-RG.jpg', '', '', ''),
(133, '18K Rose Gold Over 925 6mm Round Blue Topaz December Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-ROSE-DEC', '', '1', '62.5', '', '', '125', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Topaz', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Dec-RG.jpg', '', '', ''),
(134, '18K Rose Gold Over 925 6mm Round Amethyst February Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-ROSE-FEB', '', '1', '62.5', '', '', '125', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Amethyst', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Feb-RG.jpg', '', '', ''),
(135, '18K Rose Gold Over 925 6mm Round Garnet January Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-ROSE-JAN', '', '1', '62.5', '', '', '125', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Garnet', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Jan-RG.jpg', '', '', ''),
(136, '18K Rose Gold Over 925 6mm Round Ruby July Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-ROSE-JUL', '', '1', '62.5', '', '', '125', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Ruby', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-July-RG.jpg', '', '', ''),
(137, '18K Rose Gold Over 925 6mm Round Alexandrite June Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-ROSE-JUN', '', '1', '62.5', '', '', '125', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Alexandrite', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-June-RG.jpg', '', '', ''),
(138, '18K Rose Gold Over 925 6mm Round Aquamarine March Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-ROSE-MAR', '', '1', '62.5', '', '', '125', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Aquamarine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-March-RG.jpg', '', '', '');
INSERT INTO `fry_products` (`productid`, `name`, `category`, `brand`, `sku`, `desc`, `price`, `buyitnow`, `cost_price`, `sale_price`, `retail_price`, `allow_purchase`, `available`, `visible`, `track_inventory`, `stock_level`, `min_stock`, `weight`, `page_title`, `search_keywords`, `meta_keywords`, `meta_desc`, `condition`, `show_condition`, `upc`, `Attribute1`, `Attribute2`, `Attribute3`, `Attribute4`, `Attribute5`, `Attribute6`, `Attribute7`, `Attribute8`, `Attribute9`, `Attribute10`, `Attribute11`, `Attribute12`, `Attribute13`, `Attribute14`, `Attribute15`, `Attribute16`, `Attribute17`, `Attribute18`, `Attribute19`, `Attribute20`, `Attribute21`, `Attribute22`, `Attribute23`, `Attribute24`, `Attribute25`, `Attribute26`, `Attribute27`, `Attribute28`, `Attribute29`, `Attribute30`, `Attribute31`, `Attribute32`, `ebay_cat_id1`, `ebay_cat_id2`, `notes`, `stock_type`, `stock_location`, `image1`, `image2`, `image3`, `image4`) VALUES
(139, '18K Rose Gold Over 925 6mm Round Emerald May Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-ROSE-MAY', '', '1', '62.5', '', '', '125', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Emerald', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-May-RG.jpg', '', '', ''),
(140, '18K Rose Gold Over 925 6mm Round Citrine November Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-ROSE-NOV', '', '1', '62.5', '', '', '125', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Citrine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Nov-RG.jpg', '', '', ''),
(141, '18K Rose Gold Over 925 6mm Round Tourmaline October Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-ROSE-OCT', '', '1', '62.5', '', '', '125', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Tourmaline', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Oct-RG.jpg', '', '', ''),
(142, '18K Rose Gold Over 925 6mm Blue Sapphire September Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-ROSE-SEP', '', '1', '62.5', '', '', '125', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Sapphire', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Sep-RG.jpg', '', '', ''),
(143, '18K White Gold Over 925 6mm Round Diamond April Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-WHITE-APR', '', '1', '62.5', '', '', '125', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Diamond', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-April-WG.jpg', '', '', ''),
(144, '18K White Gold Over 925 6mm Round Peridot August Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-WHITE-AUG', '', '1', '62.5', '', '', '125', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Peridot', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Aug-WG.jpg', '', '', ''),
(145, '18K White Gold Over 925 6mm Round Blue Topaz December Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-WHITE-DEC', '', '1', '62.5', '', '', '125', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Topaz', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Dec-WG.jpg', '', '', ''),
(146, '18K White Gold Over 925 6mm Round Amethyst February Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-WHITE-FEB', '', '1', '62.5', '', '', '125', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Amethyst', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Feb-WG.jpg', '', '', ''),
(147, '18K White Gold Over 925 6mm Round Garnet January Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-WHITE-JAN', '', '1', '62.5', '', '', '125', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Garnet', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Jan-WG.jpg', '', '', ''),
(148, '18K White Gold Over 925 6mm Round Ruby July Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-WHITE-JUL', '', '1', '62.5', '', '', '125', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Ruby', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-July-WG.jpg', '', '', ''),
(149, '18K White Gold Over 925 6mm Round Alexandrite June Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-WHITE-JUN', '', '1', '62.5', '', '', '125', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Alexandrite', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-June-WG.jpg', '', '', ''),
(150, '18K White Gold Over 925 6mm Round Aquamarine March Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-WHITE-MAR', '', '1', '62.5', '', '', '125', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Aquamarine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-March-WG.jpg', '', '', ''),
(151, '18K White Gold Over 925 6mm Round Emerald May Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-WHITE-MAY', '', '1', '62.5', '', '', '125', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Emerald', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-May-WG.jpg', '', '', ''),
(152, '18K White Gold Over 925 6mm Round Citrine November Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-WHITE-NOV', '', '1', '62.5', '', '', '125', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Citrine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Nov-WG.jpg', '', '', ''),
(153, '18K White Gold Over 925 6mm Round Tourmaline October Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-WHITE-OCT', '', '1', '62.5', '', '', '125', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Tourmaline', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Oct-WG.jpg', '', '', ''),
(154, '18K White Gold Over 925 6mm Blue Sapphire September Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-WHITE-SEP', '', '1', '62.5', '', '', '125', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Sapphire', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Sep-WG.jpg', '', '', ''),
(155, '18K Yellow Gold Over 925 6mm Round Diamond April Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-YELLOW-APR', '', '1', '62.5', '', '', '125', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Diamond', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-April-YG.jpg', '', '', ''),
(156, '18K Yellow Gold Over 925 6mm Round Peridot August Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-YELLOW-AUG', '', '1', '62.5', '', '', '125', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Peridot', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Aug-YG.jpg', '', '', ''),
(157, '18K Yellow Gold Over 925 6mm Round Blue Topaz December Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-YELLOW-DEC', '', '1', '62.5', '', '', '125', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Topaz', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Dec-YG.jpg', '', '', ''),
(158, '18K Yellow Gold Over 925 6mm Round Amethyst February Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-YELLOW-FEB', '', '1', '62.5', '', '', '125', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Amethyst', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Feb-YG.jpg', '', '', ''),
(159, '18K Yellow Gold Over 925 6mm Round Garnet January Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-YELLOW-JAN', '', '1', '62.5', '', '', '125', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Garnet', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Jan-YG.jpg', '', '', ''),
(160, '18K Yellow Gold Over 925 6mm Round Ruby July Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-YELLOW-JUL', '', '1', '62.5', '', '', '125', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Ruby', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-July-YG.jpg', '', '', ''),
(161, '18K Yellow Gold Over 925 6mm Round Alexandrite June Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-YELLOW-JUN', '', '1', '62.5', '', '', '125', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Alexandrite', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-June-YG.jpg', '', '', ''),
(162, '18K Yellow Gold Over 925 6mm Round Aquamarine March Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-YELLOW-MAR', '', '1', '62.5', '', '', '125', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Aquamarine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-March-YG.jpg', '', '', ''),
(163, '18K Yellow Gold Over 925 6mm Round Emerald May Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-YELLOW-MAY', '', '1', '62.5', '', '', '125', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Emerald', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-May-YG.jpg', '', '', ''),
(164, '18K Yellow Gold Over 925 6mm Round Citrine November Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-YELLOW-NOV', '', '1', '62.5', '', '', '125', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Citrine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Nov-YG.jpg', '', '', ''),
(165, '18K Yellow Gold Over 925 6mm Round Tourmaline October Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-YELLOW-OCT', '', '1', '62.5', '', '', '125', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Tourmaline', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Oct-YG.jpg', '', '', ''),
(166, '18K Yellow Gold Over 925 6mm Blue Sapphire September Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-YELLOW-SEP', '', '1', '62.5', '', '', '125', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Sapphire', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Sep-YG.jpg', '', '', ''),
(167, '18K Rose Gold Over 925 7mm Round Diamond April Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-ROSE-APR', '', '1', '75', '', '', '150', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Diamond', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-April-RG.jpg', '', '', ''),
(168, '18K Rose Gold Over 925 7mm Round Peridot August Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-ROSE-AUG', '', '1', '75', '', '', '150', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Peridot', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Aug-RG.jpg', '', '', ''),
(169, '18K Rose Gold Over 925 7mm Round Blue Topaz December Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-ROSE-DEC', '', '1', '75', '', '', '150', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Topaz', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Dec-RG.jpg', '', '', ''),
(170, '18K Rose Gold Over 925 7mm Round Amethyst February Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-ROSE-FEB', '', '1', '75', '', '', '150', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Amethyst', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Feb-RG.jpg', '', '', ''),
(171, '18K Rose Gold Over 925 7mm Round Garnet January Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-ROSE-JAN', '', '1', '75', '', '', '150', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Garnet', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Jan-RG.jpg', '', '', ''),
(172, '18K Rose Gold Over 925 7mm Round Ruby July Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-ROSE-JUL', '', '1', '75', '', '', '150', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Ruby', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-July-RG.jpg', '', '', ''),
(173, '18K Rose Gold Over 925 7mm Round Alexandrite June Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-ROSE-JUN', '', '1', '75', '', '', '150', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Alexandrite', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-June-RG.jpg', '', '', ''),
(174, '18K Rose Gold Over 925 7mm Round Aquamarine March Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-ROSE-MAR', '', '1', '75', '', '', '150', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Aquamarine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-March-RG.jpg', '', '', ''),
(175, '18K Rose Gold Over 925 7mm Round Emerald May Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-ROSE-MAY', '', '1', '75', '', '', '150', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Emerald', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-May-RG.jpg', '', '', ''),
(176, '18K Rose Gold Over 925 7mm Round Citrine November Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-ROSE-NOV', '', '1', '75', '', '', '150', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Citrine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Nov-RG.jpg', '', '', ''),
(177, '18K Rose Gold Over 925 7mm Round Tourmaline October Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-ROSE-OCT', '', '1', '75', '', '', '150', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Tourmaline', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Oct-RG.jpg', '', '', ''),
(178, '18K Rose Gold Over 925 7mm Blue Sapphire September Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-ROSE-SEP', '', '1', '75', '', '', '150', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Sapphire', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Sep-RG.jpg', '', '', ''),
(179, '18K White Gold Over 925 7mm Round Diamond April Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-WHITE-APR', '', '1', '75', '', '', '150', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Diamond', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-April-WG.jpg', '', '', ''),
(180, '18K White Gold Over 925 7mm Round Peridot August Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-WHITE-AUG', '', '1', '75', '', '', '150', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Peridot', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Aug-WG.jpg', '', '', ''),
(181, '18K White Gold Over 925 7mm Round Blue Topaz December Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-WHITE-DEC', '', '1', '75', '', '', '150', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Topaz', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Dec-WG.jpg', '', '', ''),
(182, '18K White Gold Over 925 7mm Round Amethyst February Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-WHITE-FEB', '', '1', '75', '', '', '150', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Amethyst', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Feb-WG.jpg', '', '', ''),
(183, '18K White Gold Over 925 7mm Round Garnet January Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-WHITE-JAN', '', '1', '75', '', '', '150', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Garnet', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Jan-WG.jpg', '', '', ''),
(184, '18K White Gold Over 925 7mm Round Ruby July Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-WHITE-JUL', '', '1', '75', '', '', '150', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Ruby', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-July-WG.jpg', '', '', ''),
(185, '18K White Gold Over 925 7mm Round Alexandrite June Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-WHITE-JUN', '', '1', '75', '', '', '150', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Alexandrite', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-June-WG.jpg', '', '', ''),
(186, '18K White Gold Over 925 7mm Round Aquamarine March Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-WHITE-MAR', '', '1', '75', '', '', '150', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Aquamarine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-March-WG.jpg', '', '', ''),
(187, '18K White Gold Over 925 7mm Round Emerald May Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-WHITE-MAY', '', '1', '75', '', '', '150', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Emerald', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-May-WG.jpg', '', '', ''),
(188, '18K White Gold Over 925 7mm Round Citrine November Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-WHITE-NOV', '', '1', '75', '', '', '150', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Citrine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Nov-WG.jpg', '', '', ''),
(189, '18K White Gold Over 925 7mm Round Tourmaline October Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-WHITE-OCT', '', '1', '75', '', '', '150', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Tourmaline', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Oct-WG.jpg', '', '', ''),
(190, '18K White Gold Over 925 7mm Blue Sapphire September Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-WHITE-SEP', '', '1', '75', '', '', '150', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Sapphire', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Sep-WG.jpg', '', '', ''),
(191, '18K Yellow Gold Over 925 7mm Round Diamond April Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-YELLOW-APR', '', '1', '75', '', '', '150', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Diamond', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-April-YG.jpg', '', '', ''),
(192, '18K Yellow Gold Over 925 7mm Round Peridot August Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-YELLOW-AUG', '', '1', '75', '', '', '150', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Peridot', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Aug-YG.jpg', '', '', ''),
(193, '18K Yellow Gold Over 925 7mm Round Blue Topaz December Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-YELLOW-DEC', '', '1', '75', '', '', '150', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Topaz', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Dec-YG.jpg', '', '', ''),
(194, '18K Yellow Gold Over 925 7mm Round Amethyst February Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-YELLOW-FEB', '', '1', '75', '', '', '150', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Amethyst', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Feb-YG.jpg', '', '', ''),
(195, '18K Yellow Gold Over 925 7mm Round Garnet January Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-YELLOW-JAN', '', '1', '75', '', '', '150', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Garnet', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Jan-YG.jpg', '', '', ''),
(196, '18K Yellow Gold Over 925 7mm Round Ruby July Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-YELLOW-JUL', '', '1', '75', '', '', '150', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Ruby', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-July-YG.jpg', '', '', ''),
(197, '18K Yellow Gold Over 925 7mm Round Alexandrite June Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-YELLOW-JUN', '', '1', '75', '', '', '150', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Alexandrite', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-June-YG.jpg', '', '', ''),
(198, '18K Yellow Gold Over 925 7mm Round Aquamarine March Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-YELLOW-MAR', '', '1', '75', '', '', '150', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Aquamarine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-March-YG.jpg', '', '', ''),
(199, '18K Yellow Gold Over 925 7mm Round Emerald May Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-YELLOW-MAY', '', '1', '75', '', '', '150', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Emerald', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-May-YG.jpg', '', '', ''),
(200, '18K Yellow Gold Over 925 7mm Round Citrine November Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-YELLOW-NOV', '', '1', '75', '', '', '150', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Citrine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Nov-YG.jpg', '', '', ''),
(201, '18K Yellow Gold Over 925 7mm Round Tourmaline October Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-YELLOW-OCT', '', '1', '75', '', '', '150', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Tourmaline', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Oct-YG.jpg', '', '', ''),
(202, '18K Yellow Gold Over 925 7mm Blue Sapphire September Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-YELLOW-SEP', '', '1', '75', '', '', '150', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Sapphire', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Sep-YG.jpg', '', '', ''),
(203, '18K Rose Gold Over 925 8mm Round Diamond April Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-ROSE-APR', '', '1', '87.5', '', '', '175', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Diamond', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-April-RG.jpg', '', '', ''),
(204, '18K Rose Gold Over 925 8mm Round Peridot August Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-ROSE-AUG', '', '1', '87.5', '', '', '175', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Peridot', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Aug-RG.jpg', '', '', ''),
(205, '18K Rose Gold Over 925 8mm Round Blue Topaz December Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-ROSE-DEC', '', '1', '87.5', '', '', '175', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Topaz', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Dec-RG.jpg', '', '', ''),
(206, '18K Rose Gold Over 925 8mm Round Amethyst February Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-ROSE-FEB', '', '1', '87.5', '', '', '175', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Amethyst', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Feb-RG.jpg', '', '', ''),
(207, '18K Rose Gold Over 925 8mm Round Garnet January Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-ROSE-JAN', '', '1', '87.5', '', '', '175', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Garnet', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Jan-RG.jpg', '', '', ''),
(208, '18K Rose Gold Over 925 8mm Round Ruby July Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-ROSE-JUL', '', '1', '87.5', '', '', '175', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Ruby', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-July-RG.jpg', '', '', '');
INSERT INTO `fry_products` (`productid`, `name`, `category`, `brand`, `sku`, `desc`, `price`, `buyitnow`, `cost_price`, `sale_price`, `retail_price`, `allow_purchase`, `available`, `visible`, `track_inventory`, `stock_level`, `min_stock`, `weight`, `page_title`, `search_keywords`, `meta_keywords`, `meta_desc`, `condition`, `show_condition`, `upc`, `Attribute1`, `Attribute2`, `Attribute3`, `Attribute4`, `Attribute5`, `Attribute6`, `Attribute7`, `Attribute8`, `Attribute9`, `Attribute10`, `Attribute11`, `Attribute12`, `Attribute13`, `Attribute14`, `Attribute15`, `Attribute16`, `Attribute17`, `Attribute18`, `Attribute19`, `Attribute20`, `Attribute21`, `Attribute22`, `Attribute23`, `Attribute24`, `Attribute25`, `Attribute26`, `Attribute27`, `Attribute28`, `Attribute29`, `Attribute30`, `Attribute31`, `Attribute32`, `ebay_cat_id1`, `ebay_cat_id2`, `notes`, `stock_type`, `stock_location`, `image1`, `image2`, `image3`, `image4`) VALUES
(209, '18K Rose Gold Over 925 8mm Round Alexandrite June Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-ROSE-JUN', '', '1', '87.5', '', '', '175', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Alexandrite', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-June-RG.jpg', '', '', ''),
(210, '18K Rose Gold Over 925 8mm Round Aquamarine March Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-ROSE-MAR', '', '1', '87.5', '', '', '175', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Aquamarine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-March-RG.jpg', '', '', ''),
(211, '18K Rose Gold Over 925 8mm Round Emerald May Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-ROSE-MAY', '', '1', '87.5', '', '', '175', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Emerald', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-May-RG.jpg', '', '', ''),
(212, '18K Rose Gold Over 925 8mm Round Citrine November Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-ROSE-NOV', '', '1', '87.5', '', '', '175', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Citrine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Nov-RG.jpg', '', '', ''),
(213, '18K Rose Gold Over 925 8mm Round Tourmaline October Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-ROSE-OCT', '', '1', '87.5', '', '', '175', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Tourmaline', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Oct-RG.jpg', '', '', ''),
(214, '18K Rose Gold Over 925 8mm Blue Sapphire September Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-ROSE-SEP', '', '1', '87.5', '', '', '175', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Sapphire', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Sep-RG.jpg', '', '', ''),
(215, '18K White Gold Over 925 8mm Round Diamond April Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-WHITE-APR', '', '1', '87.5', '', '', '175', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Diamond', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-April-WG.jpg', '', '', ''),
(216, '18K White Gold Over 925 8mm Round Peridot August Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-WHITE-AUG', '', '1', '87.5', '', '', '175', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Peridot', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Aug-WG.jpg', '', '', ''),
(217, '18K White Gold Over 925 8mm Round Blue Topaz December Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-WHITE-DEC', '', '1', '87.5', '', '', '175', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Topaz', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Dec-WG.jpg', '', '', ''),
(218, '18K White Gold Over 925 8mm Round Amethyst February Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-WHITE-FEB', '', '1', '87.5', '', '', '175', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Amethyst', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Feb-WG.jpg', '', '', ''),
(219, '18K White Gold Over 925 8mm Round Garnet January Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-WHITE-JAN', '', '1', '87.5', '', '', '175', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Garnet', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Jan-WG.jpg', '', '', ''),
(220, '18K White Gold Over 925 8mm Round Ruby July Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-WHITE-JUL', '', '1', '87.5', '', '', '175', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Ruby', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-July-WG.jpg', '', '', ''),
(221, '18K White Gold Over 925 8mm Round Alexandrite June Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-WHITE-JUN', '', '1', '87.5', '', '', '175', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Alexandrite', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-June-WG.jpg', '', '', ''),
(222, '18K White Gold Over 925 8mm Round Aquamarine March Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-WHITE-MAR', '', '1', '87.5', '', '', '175', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Aquamarine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-March-WG.jpg', '', '', ''),
(223, '18K White Gold Over 925 8mm Round Emerald May Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-WHITE-MAY', '', '1', '87.5', '', '', '175', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Emerald', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-May-WG.jpg', '', '', ''),
(224, '18K White Gold Over 925 8mm Round Citrine November Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-WHITE-NOV', '', '1', '87.5', '', '', '175', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Citrine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Nov-WG.jpg', '', '', ''),
(225, '18K White Gold Over 925 8mm Round Tourmaline October Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-WHITE-OCT', '', '1', '87.5', '', '', '175', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Tourmaline', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Oct-WG.jpg', '', '', ''),
(226, '18K White Gold Over 925 8mm Blue Sapphire September Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-WHITE-SEP', '', '1', '87.5', '', '', '175', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Sapphire', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Sep-WG.jpg', '', '', ''),
(227, '18K Yellow Gold Over 925 8mm Round Diamond April Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-YELLOW-APR', '', '1', '87.5', '', '', '175', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Diamond', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-April-YG.jpg', '', '', ''),
(228, '18K Yellow Gold Over 925 8mm Round Peridot August Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-YELLOW-AUG', '', '1', '87.5', '', '', '175', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Peridot', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Aug-YG.jpg', '', '', ''),
(229, '18K Yellow Gold Over 925 8mm Round Blue Topaz December Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-YELLOW-DEC', '', '1', '87.5', '', '', '175', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Topaz', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Dec-YG.jpg', '', '', ''),
(230, '18K Yellow Gold Over 925 8mm Round Amethyst February Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-YELLOW-FEB', '', '1', '87.5', '', '', '175', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Amethyst', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Feb-YG.jpg', '', '', ''),
(231, '18K Yellow Gold Over 925 8mm Round Garnet January Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-YELLOW-JAN', '', '1', '87.5', '', '', '175', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Garnet', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Jan-YG.jpg', '', '', ''),
(232, '18K Yellow Gold Over 925 8mm Round Ruby July Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-YELLOW-JUL', '', '1', '87.5', '', '', '175', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Ruby', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-July-YG.jpg', '', '', ''),
(233, '18K Yellow Gold Over 925 8mm Round Alexandrite June Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-YELLOW-JUN', '', '1', '87.5', '', '', '175', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Alexandrite', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-June-YG.jpg', '', '', ''),
(234, '18K Yellow Gold Over 925 8mm Round Aquamarine March Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-YELLOW-MAR', '', '1', '87.5', '', '', '175', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Aquamarine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-March-YG.jpg', '', '', ''),
(235, '18K Yellow Gold Over 925 8mm Round Emerald May Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-YELLOW-MAY', '', '1', '87.5', '', '', '175', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Emerald', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-May-YG.jpg', '', '', ''),
(236, '18K Yellow Gold Over 925 8mm Round Citrine November Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-YELLOW-NOV', '', '1', '87.5', '', '', '175', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Citrine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Nov-YG.jpg', '', '', ''),
(237, '18K Yellow Gold Over 925 8mm Round Tourmaline October Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-YELLOW-OCT', '', '1', '87.5', '', '', '175', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Tourmaline', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Oct-YG.jpg', '', '', ''),
(238, '18K Yellow Gold Over 925 8mm Blue Sapphire September Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-YELLOW-SEP', '', '1', '87.5', '', '', '175', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Sapphire', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Sep-YG.jpg', '', '', ''),
(239, '925 Silver Bead Yellow White Spot Brown Murano Glass Charms Bracelet #2036', 'Top Selling/Jewelry/Bracelet', '', 'C-CN-Pandoracharm-2036', '', '1', '45', '', '', '69', 1, 1, 1, 1, 4, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Affinity Diamond Jewelry', 'Bracelet', 'Bead', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Womens', '', '', '', '', '', '', '', 'Glass', '', '', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164315', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-China-Pandoracharm-2036-10.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-China-Pandoracharm-2036-11.jpg', '', ''),
(240, '925 Sterling Silver Bead Multi Color Murano Glass Charms Bracelet #2040', 'Top Selling/Jewelry/Bracelet', '', 'C-CN-Pandoracharm-2040', '', '1', '45', '', '', '69', 1, 1, 1, 1, 6, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Affinity Gold', 'Bracelet', 'Bead', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Womens', '', '', '', '', '', '', '', 'Glass', '', '', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164315', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-China-Pandoracharm-2040-100.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-China-Pandoracharm-2040-101.jpg', '', ''),
(241, '925 Sterling Silver Bead Multi Color Murano Glass Charms Bracelet #2043', 'Top Selling/Jewelry/Bracelet', '', 'C-CN-Pandoracharm-2043', '', '1', '45', '', '', '69', 1, 1, 1, 1, 7, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Affy Pawn Shop', 'Bracelet', 'Bead', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Womens', '', '', '', '', '', '', '', 'Glass', '', '', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164315', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-China-Pandoracharm-2043-100.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-China-Pandoracharm-2043-101.jpg', '', ''),
(242, '925 Sterling Silver Bead White Swirl Pink Murano Glass Charms Bracelet #2044', 'Top Selling/Jewelry/Bracelet', '', 'C-CN-Pandoracharm-2044', '', '1', '45', '', '', '69', 1, 1, 1, 1, 7, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Diamant Jewels', 'Bracelet', 'Bead', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Womens', '', '', '', '', '', '', '', 'Glass', '', '', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164315', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-China-Pandoracharm-2044-100.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-China-Pandoracharm-2044-101.jpg', '', ''),
(243, '925 Sterling Silver Bead Blue Flower Pink Murano Glass Charms Bracelet #2048', 'Top Selling/Jewelry/Bracelet', '', 'C-CN-Pandoracharm-2048', '', '1', '45', '', '', '69', 1, 1, 1, 1, 7, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Jewelry Auction House', 'Bracelet', 'Bead', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Womens', '', '', '', '', '', '', '', 'Glass', '', '', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164315', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-China-Pandoracharm-2048-100.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-China-Pandoracharm-2048-101.jpg', '', ''),
(244, '925 Silver Bead Green, White Flower Brown Murano Glass Charms Bracelet #2051', 'Top Selling/Jewelry/Bracelet', '', 'C-CN-Pandoracharm-2051', '', '1', '45', '', '', '69', 1, 1, 1, 1, 6, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Affinity Diamond Jewelry', 'Bracelet', 'Bead', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Womens', '', '', '', '', '', '', '', 'Glass', '', '', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164315', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-China-Pandoracharm-2051-100.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-China-Pandoracharm-2051-101.jpg', '', ''),
(245, '925 Sterling Bead Silver Spot Pink Ice Murano Glass Charms Bracelet #2052', 'Top Selling/Jewelry/Bracelet', '', 'C-CN-Pandoracharm-2052', '', '1', '45', '', '', '69', 1, 1, 1, 1, 6, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Affinity Engagement Jewels', 'Bracelet', 'Bead', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Womens', '', '', '', '', '', '', '', 'Glass', '', '', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164315', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-China-Pandoracharm-2052-100.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-China-Pandoracharm-2052-101.jpg', '', ''),
(246, 'Sterling Silver Bead Brwon Strips Pink Ice Murano Glass Charms Bracelet #2054', 'Top Selling/Jewelry/Bracelet', '', 'C-CN-Pandoracharm-2054', '', '1', '45', '', '', '69', 1, 1, 1, 1, 7, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Affinity Fine Jewelry', 'Bracelet', 'Bead', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Womens', '', '', '', '', '', '', '', 'Glass', '', '', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164315', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-China-Pandoracharm-2054-100.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-China-Pandoracharm-2054-101.jpg', '', ''),
(247, '925 Silver Bead Yellow Pink Flower Green Murano Glass Charms Bracelet #2060', 'Top Selling/Jewelry/Bracelet', '', 'C-CN-Pandoracharm-2060', '', '1', '45', '', '', '69', 1, 1, 1, 1, 8, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Findings N Jewelry', 'Bracelet', 'Bead', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Womens', '', '', '', '', '', '', '', 'Glass', '', '', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164315', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-China-Pandoracharm-2060-100.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-China-Pandoracharm-2060-101.jpg', '', ''),
(248, '925 Silver Bead White Yellow Flower White Murano Glass Charms Bracelet #2062', 'Top Selling/Jewelry/Bracelet', '', 'C-CN-Pandoracharm-2062', '', '1', '45', '', '', '69', 1, 1, 1, 1, 7, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Gemstone Place', 'Bracelet', 'Bead', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Womens', '', '', '', '', '', '', '', 'Glass', '', '', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164315', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-China-Pandoracharm-2062-100.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-China-Pandoracharm-2062-101.jpg', '', ''),
(249, 'QVC Steel by Design Stainless Double Row Navy Leather Average Bracelet', 'Top Selling/Jewelry/Bracelet', '', '22016-J284817-NEVY-AVE', '<p style="line-height: 19px; margin: 0px 0px 12px; color: rgb(87, 68, 79); font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; ', '1', '29.99', '', '', '89.97', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Steel by Design', 'Bracelet', 'Double Row', 'Stainless Steel', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Womens', '', '', '', '', '', '', '', '', '7.75', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50637', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j284817-navy-large-1.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j284817-navy-large-2.jpg', '', ''),
(250, 'Stainless Polished Bead Multi-Strand Braided Orange Leather Aver Bracelet', 'Top Selling/Jewelry/Bracelet', '', '22016-J289759-ORANGE-AVERAGE', '<p style="line-height: 19px; margin: 0px 0px 12px; color: rgb(87, 68, 79); font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; ', '1', '32.99', '', '', '98.97', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Steel by Design', 'Bracelet', 'Multi-Strand', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Womens', '', '', '', '', '', '', '', '', '7.25', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50637', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j289759-orange-small-aj-1.jpg', '', '', ''),
(251, 'QVC Stainless Bead Multi-Strand Braided Turquoise Leather Average Bracelet', 'Top Selling/Jewelry/Bracelet', '', '22016-A-J289759-TUE-AVERAGE', '<p style="line-height: 19px; margin: 0px 0px 12px; color: rgb(87, 68, 79); font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; ', '1', '32.99', '', '', '98.97', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Steel by Design', 'Bracelet', 'Multi-Strand', 'Stainless steel', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Womens', '', '', '', '', '', '', '', '', '7.25', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50637', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j289759-turquaise-large-aj-1.jpg', '', '', ''),
(252, 'QVC Steel by Design Stainless Steel Double Row Red Leather Average Bracelet', 'Top Selling/Jewelry/Bracelet', '', '22016-A-J284817-RED-AVE', '<p style="line-height: 19px; margin: 0px 0px 12px; color: rgb(87, 68, 79); font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; ', '1', '29.99', '', '', '89.97', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Steel by Design', 'Bracelet', 'Double Row', 'Stainless Steel', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Womens', '', '', '', '', '', '', '', '', '7.75', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50637', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/j284817_172.201.jpg', '', '', ''),
(253, 'QVC Steel by Design Stainless Double Row Camel Leather Average Bracelet', 'Top Selling/Jewelry/Bracelet', '', '22016-A-J284817-CAMEL-AVERAGE', '<p style="line-height: 19px; margin: 0px 0px 12px; color: rgb(87, 68, 79); font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; ', '1', '29.99', '', '', '89.97', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Steel by Design', 'Bracelet', 'Double Row', 'Stainless Steel', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Womens', '', '', '', '', '', '', '', '', '7.75', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50637', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j284817-camel-average-1.jpg', '', '', ''),
(254, 'Steel by Design Stainless Steel Double Row Dark Brown Leather Average Bracelet', 'Top Selling/Jewelry/Bracelet', '', '22016-A-J284817-BROWN-AVERAGE', '<p style="line-height: 19px; margin: 0px 0px 12px; color: rgb(87, 68, 79); font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; ', '1', '29.99', '', '', '89.97', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Steel by Design', 'Bracelet', 'Double Row', 'Stainless Steel', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Womens', '', '', '', '', '', '', '', '', '7.75', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50637', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j284817-ss-db-aj-1.jpg', '', '', ''),
(255, 'QVC Steel By Design Magnesite & Stainless Steel Bead Stretch Bracelet', 'Top Selling/Jewelry/Bracelet', '', '22016-A-J148565-blue', '<p> 	Around and around they go--to create one stunning piece of jewelry. This stretch bracelet alternates round stainless steel beads with magnesite beads for a circular style that&#39;s oh-so chic. From Steel by Design Jewelry.</p> <ul> 	<li> 		Stainless', '1', '49.99', '', '', '149.97', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Steel By Design', 'Bracelet', 'Stretch', 'Stainless Steel', '', '', '', 'Beads ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Italy', '', '', '', '', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50637', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/qh-j148565-blue-1.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/qh-j148565-blue-2.jpg', '', ''),
(256, 'QVC Steel by Design Domed Black Crystal Hinged Average Bangle Bracelet', 'Top Selling/Jewelry/Bracelet', '', '22016-A-J280115', '<p> 	&nbsp;</p> <p> 	&nbsp;</p> <p> 	&nbsp;</p> <p> 	<meta content="en-us" http-equiv="Content-Language" /> </p> <p> 	&nbsp;</p> <p> 	&nbsp;</p> <p> 	&nbsp;</p> <p> 	<meta content="Microsoft FrontPage 5.0" name="GENERATOR" /> </p> <p> 	&nbsp;</p> <p> 	&nb', '1', '39.99', '', '', '119.97', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Steel by Design', 'Bracelet', 'Hinged', 'Stainless Steel', '', '', '', 'Crystal', '', '', 'Black', 'Round', '', '', '', '', '', 'Women', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50637', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j280115-black-ss-1.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j280115-black-ss-2.jpg', '', ''),
(257, 'QVC Steel by Design Domed Clear Crystal Hinged Average Bangle Bracelet', 'Top Selling/Jewelry/Bracelet', '', '22016-J280115-SA', '<html> <head> <meta name="GENERATOR" content="Microsoft FrontPage 5.0"> <meta name="ProgId" content="FrontPage.Editor.Document"> <meta http-equiv="Content-Type" content="text/html; charset=windows-1252"> <title>New Page 1</title> </head> <body> <p style="', '1', '29.99', '', '', '89.97', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Steel by Design', 'Bracelet', 'Bangle', 'Stainless Steel', '', '', '', 'Crystal', '', '', 'Clear', 'Round', '', '', '', '', '', 'Womens', 'White', '', '', '', 'China', '', '', '', '', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50637', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j280115-ss-cry-clear-aj-1.jpg', '', '', ''),
(258, 'QVC Steel by Design Stainless Steel 7.25" Rolo Link Bracelet', 'Top Selling/Jewelry/Bracelet', '', '22016-J148930-STEEL', '<p> 	From Steel by Design Jewelry.</p> <ul> 	<li> 		<b>Rolo bracelet</b></li> 	<li> 		Stainless steel</li> 	<li> 		Lobster claw clasp</li> 	<li> 		Measures approximately 7-1/2&quot;L x 1/4&quot;W</li> 	<li> 		Made in China</li> </ul> ', '1', '39.99', '', '', '119.97', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Steel by Design', 'Bracelet', 'Rolo Link', 'Stainless Steel', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', '', '', '', '', '', '', '', '', '7.25', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50637', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j148930-rolo-ss-1.jpg', '', '', ''),
(259, 'QVC Steel by Design Double Woven Oval Link Bracelet', 'Top Selling/Jewelry/Bracelet', '', '22016-J283996-W', '<p> 	&nbsp;</p> <p> 	&nbsp;</p> <p> 	&nbsp;</p> <p> 	&nbsp;</p> <p> 	<meta content="en-us" http-equiv="Content-Language" /> </p> <p> 	&nbsp;</p> <p> 	&nbsp;</p> <p> 	&nbsp;</p> <p> 	&nbsp;</p> <p> 	<meta content="Microsoft FrontPage 5.0" name="GENERATOR" ', '1', '69.99', '', '', '209.97', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does Not Apply', 'Steel by Design', 'Bracelet', 'Link', 'Stainless steel', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Womens', 'White', '', '', '', '', '', '', '', '', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50637', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/j283996_027.201.jpg', '', '', ''),
(260, 'QVC Stainless Steel Polished Bead Strand Braided Black Leather Bracelet Average', 'Top Selling/Jewelry/Bracelet', '', '22016-J289759-Leather-Average', '', '1', '32.99', '', '', '98.97', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does Not Apply', 'Steel by Design', 'Bracelet', 'Multi-Strand', 'Stainless Steel', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', '', '', '', '', '', '', '', '', '7.25', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50637', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j289759-black-aver-1.jpg', '', '', ''),
(261, 'OVC Sold Out Stainless Steel Double Row White Leather Bracelet Average', 'Top Selling/Jewelry/Bracelet', '', '22016-A-J284817-ss-Whi', '', '1', '29.99', '', '', '89.97', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does Not Apply', 'Steel by Design', 'Bracelet', 'Double Row', 'Stainless Steel', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', '', '', '', '', '', '', '', '', '7.25', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50637', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/22016-A-J284817-ss-Whi-1.jpg', '', '', ''),
(262, 'QVC Steel By Design Stainless Steel Round Hoop Silver Earrings', 'Top Selling/Jewelry/Earrings', '', '22016-J148930-ST-HOOP', '<p> 	From Steel by Design Jewelry.</p> <ul> 	<li> 		Round hoop earrings: snap-bar closure; measures approximately 1-3/4&quot;L x 1/16&quot;W</li> 	<li> 		Stainless steel</li> 	<li> 		Earrings for pierced ears only</li> 	<li> 		Made in China</li> </ul> ', '1', '30', '', '', '90', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Steel by Design', 'Earrings', 'Hoop', 'Stainless Steel', '', '', '', 'No Stone', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'China', '', '', '', 'Snap-bar closure', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50647', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/jah-j148930-1.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/jah-j148930-2.jpg', '', ''),
(263, 'QVC Steel By Design Stainless Steel Open Heart Dangle Earrings', 'Top Selling/Jewelry/Earrings', '', 'AU-QH-J148930-OPENHEART', '<p> 	&nbsp;</p> <p> 	<meta content="Microsoft FrontPage 5.0" name="GENERATOR" /> </p> <p> 	&nbsp;</p> <p> 	<meta content="FrontPage.Editor.Document" name="ProgId" /> </p> <p> 	&nbsp;</p> <p> 	<meta content="text/html; charset=windows-1252" http-equiv="Con', '1', '40', '', '', '120', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Steel by Design', 'Earrings', 'Drop/Dangle', 'Stainless Steel', '', '', '', 'No Stone', '', '', '', '', '', '', '', '', '', '', 'Silver', '', '', '', 'China', '', '', '', 'Shepherd\'s hook', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50647', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j148930-openheart-1.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j148930-openheart-2.jpg', '', ''),
(264, 'QVC Steel By Design Stainless Steel Oval Dangle Earrings', 'Top Selling/Jewelry/Earrings', '', 'AU-QH-J148930-OVAL-SS', '<p> 	<br /> 	So budget friendly--just do the math. The price per gift is so incredibly low, it makes sense--and cents--to stock up on the affordable gifts for the holidays and beyond. Gift-giving without the hassle? It&#39;s like a gift for yourself.<br /', '1', '9.99', '', '', '29.97', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Steel By Design', 'Earrings', 'Drop/Dangle', 'Stainless Steel', '', '', '', 'No Stone', '', '', '', '', '', '', '', '', '', '', 'Silver', '', '', '', 'China', '', '', '', 'Pierced ears only', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50647', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j148930-oval-ss-1.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j148930-oval-ss-2.jpg', '', ''),
(265, 'QVC Sold Out Steel by Design Stainless Steel Round bead Earrings', 'Top Selling/Jewelry/Earrings', '', '22016-J148930-SS-Round', '<p> 	From Steel by Design Jewelry.</p> <ul> 	<li> 		Round bead earrings: shepherd&#39;s hooks; measures approximately 7/8&quot;L x 3/8&quot;W</li> 	<li> 		Stainless steel</li> 	<li> 		Pierced ears only</li> 	<li> 		Made in China</li> </ul> ', '1', '25', '', '', '75', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Steel by Design', 'Earrings', 'Drop/Dangle', 'Stainless Steel', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Silver', '', '', '', 'China', '', '', '', 'shepherd\'s hooks', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50647', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j148930-ss-round-1.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j148930-ss-round-2.jpg', '', ''),
(266, 'QVC Goldtone Stainless Steel High Polished Twisted Hoop Earrings', 'Top Selling/Jewelry/Earrings', '', '22016-J291562-SS-YELLOW', '<p> 	Stay looped in. Sleek and twisty, these earrings are a chic way to keep things casual. From Steel by Design Jewelry.<br /> 	<br /> 	<b>Goldtone</b></p> <ul> 	<li> 		Stainless steel</li> 	<li> 		Highly polished; twisted hoop design</li> 	<li> 		Snap b', '1', '26.99', '', '', '80.97', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Steel by Design', 'Earrings', 'Hoop', 'Stainless steel', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Womens', 'Yellow', '', '', '', '', '', '', '', 'Snap Closure', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50647', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/j291562.201.jpg', '', '', ''),
(267, 'QVC Stainless Steel High Polished Twisted Hoop Earrings', 'Top Selling/Jewelry/Earrings', '', 'QH-J291562-SS-SILVER', '<p> 	Stay looped in. Sleek and twisty, these earrings are a chic way to keep things casual. From Steel by Design Jewelry.<br /> 	<br /> 	<b>Stainless Steel</b></p> <ul> 	<li> 		Stainless steel</li> 	<li> 		Highly polished; twisted hoop design</li> 	<li> 	', '1', '29.99', '', '', '89.97', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Steel by Design', 'Earrings', 'Hoop', 'Stainless steel', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Womens', 'Silver', '', '', '', '', '', '', '', 'Snap Closure', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50647', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/qh-j291562-ss-silver-1.jpg', '', '', ''),
(268, 'QVC Steel by Design Rosetone High Polished Twisted Hoop Earring', 'Top Selling/Jewelry/Earrings', '', '22016-J291562-RT', '<p> 	Stay looped in. Sleek and twisty, these earrings are a chic way to keep things casual. From Steel by Design Jewelry.</p> <ul> 	<li> 		<b>Rosetone</b></li> 	<li> 		Highly polished; twisted hoop design</li> 	<li> 		Snap bar closures, for pierced ears o', '1', '26.99', '', '', '80.97', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Steel by Design', 'Earrings', 'Hoop', 'Goldtone', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Womens', '', '', '', '', '', '', '', '', 'Snap Closure', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50647', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/qh-j291562-ss-rose-1.jpg', '', '', ''),
(269, 'QVC Steel by Design Stainless Steel Round Stud Earrings', 'Top Selling/Jewelry/Earrings', '', '22016-J148930-SS-STUD-ROUND-AG', '<p> 	The most stylish stocking stuffers, ever--just add a bow! Each cool, contemporary piece is crafted from durable stainless steel for an icy gleam and an upscale look. The exciting variety ensures there&#39;s a style to suit everyone--bffs, baby sitter', '1', '19', '', '', '57', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does Not Apply', 'Steel by Design', 'Earrings', 'Stud', 'Stainless Steel', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Womens', 'Silver', '', '', '', '', '', '', '', '', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50647', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j148930-ss-stud-round-1.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j148930-ss-stud-round-2.jpg', '', ''),
(270, 'QVC Steel by Design Stainless Steel Hoop Earrings', 'Top Selling/Jewelry/Earrings', '', '22016-J148930', '<div role="main"> 	<div itemscope="" itemtype="http://schema.org/Product"> 		&nbsp;</div> </div> <div role="main"> 	&nbsp;</div> <table border="0" cellpadding="0" cellspacing="0" style="border-collapse:  collapse;width:350pt" width="467"> 	<colgroup> 		<c', '1', '30', '', '', '90', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Steel by Design', 'Earrings', 'Hoop', 'Stainless Steel', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', 'Silver', '', '', '', '', '', '', '', '', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50647', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j148930-st-hoop-1.jpg', '', '', ''),
(271, 'QVC Steel by Design Stainless Steel Emerald Cut Crystal Hoop Earrings', 'Top Selling/Jewelry/Earrings', '', '22016-J284418', '<p> 	<b>Steel by Design Stainless Steel Simulated Emerald Cut Butter Fly Stud Earrings</b></p> <ul> 	<li> 		Metal : Stainless Steel</li> 	<li> 		Color : White</li> 	<li> 		Stone : Simulated Diamond</li> 	<li> 		Stone Shape : Emerald</li> </ul> ', '1', '99.99', '', '', '299.97', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'affinityfinejewelry', 'Earrings', 'Stud', 'Stainless Steel', '', '', '', 'Simulated Diamond', '', '', 'White', 'Emarald', '', '', '', '', '', 'Women', 'White', '', '', '', 'China', '', '', '', '', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50647', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/j284418.001-1.jpg', '', '', '');
INSERT INTO `fry_products` (`productid`, `name`, `category`, `brand`, `sku`, `desc`, `price`, `buyitnow`, `cost_price`, `sale_price`, `retail_price`, `allow_purchase`, `available`, `visible`, `track_inventory`, `stock_level`, `min_stock`, `weight`, `page_title`, `search_keywords`, `meta_keywords`, `meta_desc`, `condition`, `show_condition`, `upc`, `Attribute1`, `Attribute2`, `Attribute3`, `Attribute4`, `Attribute5`, `Attribute6`, `Attribute7`, `Attribute8`, `Attribute9`, `Attribute10`, `Attribute11`, `Attribute12`, `Attribute13`, `Attribute14`, `Attribute15`, `Attribute16`, `Attribute17`, `Attribute18`, `Attribute19`, `Attribute20`, `Attribute21`, `Attribute22`, `Attribute23`, `Attribute24`, `Attribute25`, `Attribute26`, `Attribute27`, `Attribute28`, `Attribute29`, `Attribute30`, `Attribute31`, `Attribute32`, `ebay_cat_id1`, `ebay_cat_id2`, `notes`, `stock_type`, `stock_location`, `image1`, `image2`, `image3`, `image4`) VALUES
(272, 'Qvc Steel By Design Stainless Steel 20" Adjustable Multi Heart Necklace', 'Top Selling/Jewelry/Necklace', '', '22016-J12069-ST', '<p> 	Tell her she touches your heart with this multi-heart necklace. The stainless steel construction provides a high-end look without the high price tag, and the fashion-forward design is ideal for everyday wear. Solid and cutout hearts dangle from an ov', '1', '29.99', '', '', '89.97', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Affinity Fashion Jewelry', 'Necklace', 'Strand/String', 'Stainless Steel', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'China', '', '', '', '20', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '155101', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/j12069.001.jpg', '', '', ''),
(273, 'Steel by Design 20" Adjustable Multi-Heart Necklace Stainless Steel', 'Top Selling/Jewelry/Necklace', '', '22016-J12069', '<p> 	<meta content="en-us" http-equiv="Content-Language" /> </p> <p> 	<meta content="Microsoft FrontPage 5.0" name="GENERATOR" /> </p> <p> 	<meta content="FrontPage.Editor.Document" name="ProgId" /> </p> <p> 	<meta content="text/html; charset=windows-1252', '1', '34.99', '', '', '104.97', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Steel by Design', 'Necklace', 'Heart', 'Stainless Steel', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '155101', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/J12069-1.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/j12069-2.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/j12069-3.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/j12069-4.jpg'),
(274, 'QVC Steel By Design Stainless Steel Open Heart Pendant With 18" Fine Chain', 'Top Selling/Jewelry/Necklace', '', '22016-A-J148930-hea', '<p> 	QVC Steel By Design Stainless Steel Open Heart Pendant With 18&quot; Fine Chain $140<br /> 	<br /> 	Open heart pendant with chain<br /> 	Stainless steel<br /> 	Measures approximately 1&quot;L including bail x 3/4&quot;W; includes approximately 18&quo', '1', '40', '', '', '120', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Steel by Design', 'Necklace', 'Heart', 'Stainless Steel', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'White', '', '', '', 'China', '', '', '', '18', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '155101', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j148930-open-heart-1.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j148930-open-heart-2.jpg', '', ''),
(275, 'QVC Steel By Design Stainless Steel Flower Pendant With 18" Fine Chain', 'Top Selling/Jewelry/Necklace', '', '22016-J148930-S', '<p> 	Steel by Design Stainless steel Flower Pendant 18&quot; Necklace<br /> 	&nbsp;</p> <ul> 	<li> 		Stainless steel</li> 	<li> 		Flower pendant: measures approximately 1-1/2&quot;L including bail x 1&quot;W; includes approximately 18&quot;L fine chain wi', '1', '40', '', '', '120', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Steel by Design', 'Necklace', 'Flower Pendant', 'Stainless Steel', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'White', '', '', '', 'China', '', '', '', '18', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '155101', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j148930-flower-ss-1.jpg', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1481657365),
('m161128_141131_create_transaction_paypal', 1481657410),
('m161207_115906_create_tb_orders_table', 1481657423),
('m161207_125747_create_tb_user_address_table', 1481657427),
('m161208_173038_create_shipping_service_table', 1481657428);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `orderId` int(11) NOT NULL,
  `orderNumber` varchar(100) NOT NULL,
  `orderKey` varchar(100) NOT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modifyDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `paymentDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipByDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `orderStatus` varchar(20) NOT NULL,
  `customerId` int(11) DEFAULT NULL,
  `customerUsername` varchar(100) NOT NULL,
  `customerEmail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderId`, `orderNumber`, `orderKey`, `orderDate`, `createDate`, `modifyDate`, `paymentDate`, `shipByDate`, `orderStatus`, `customerId`, `customerUsername`, `customerEmail`) VALUES
(17052829, 'EOCT-1-5852722AAA72B', 'b4d3ac5c19b5ab6674210a0dbba14227', '2016-12-15 10:34:08', '2016-12-14 23:36:22', '2016-12-14 23:36:22', '2016-12-15 10:36:26', '2016-12-15 10:36:28', 'awaiting_shipment', NULL, 'Sammy Barasa', 'barsamms@gmail.com'),
(18315602, 'EOCT-2-585A7062EAB00', '9e8edcd1e8d8722fe88ed15bebf3be9e', '2016-12-21 12:03:01', '2016-12-21 01:06:52', '2016-12-21 01:06:52', '2016-12-21 12:06:58', '2016-12-21 12:07:00', 'awaiting_shipment', NULL, 'Sammy Barasa', 'barsamms@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `paypal_transactions`
--

CREATE TABLE `paypal_transactions` (
  `ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `PAYMENT_ID` varchar(100) NOT NULL,
  `HASH` varchar(100) NOT NULL,
  `COMPLETE` tinyint(1) NOT NULL DEFAULT '0',
  `ORDER_CREATED` tinyint(1) NOT NULL DEFAULT '0',
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paypal_transactions`
--

INSERT INTO `paypal_transactions` (`ID`, `USER_ID`, `PAYMENT_ID`, `HASH`, `COMPLETE`, `ORDER_CREATED`, `CREATE_TIME`, `UPDATE_TIME`) VALUES
(1, 5, 'PAY-6FV7343910787794ULBJHDGQ', 'b4d3ac5c19b5ab6674210a0dbba14227', 1, 0, '2016-12-15 13:34:08', '2016-12-15 13:36:26'),
(2, 5, 'PAY-3RJ23826LN589740DLBNG63Q', '9e8edcd1e8d8722fe88ed15bebf3be9e', 1, 0, '2016-12-21 15:03:01', '2016-12-21 15:06:58');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_service`
--

CREATE TABLE `shipping_service` (
  `SERVICE_ID` int(11) NOT NULL,
  `PAYPAL_TRANS_ID` int(11) NOT NULL,
  `REQUESTED_SERVICE` varchar(100) NOT NULL,
  `SERVICE_DESC` varchar(200) NOT NULL,
  `CARRIER_CODE` varchar(150) DEFAULT NULL,
  `SERVICE_CODE` varchar(200) NOT NULL,
  `PACKAGE_CODE` varchar(200) DEFAULT NULL,
  `ORDER_FINALIZED` tinyint(1) DEFAULT '0',
  `CUSTOMER_NOTES` varchar(300) DEFAULT NULL,
  `CREATED` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `shipping_service`
--

INSERT INTO `shipping_service` (`SERVICE_ID`, `PAYPAL_TRANS_ID`, `REQUESTED_SERVICE`, `SERVICE_DESC`, `CARRIER_CODE`, `SERVICE_CODE`, `PACKAGE_CODE`, `ORDER_FINALIZED`, `CUSTOMER_NOTES`, `CREATED`, `UPDATED`) VALUES
(1, 1, 'USPS First Class Mail Intl', 'usps_first_class_mail_international|stamps_com||INTERNATIONAL~USPS First Class Mail Intl', 'stamps_com', 'usps_first_class_mail_international', 'package', 1, 'testing multiple items order', '2016-12-15 10:36:26', '2016-12-15 10:36:26'),
(2, 2, 'USPS Media Mail', 'usps_media_mail|stamps_com|DOMESTIC|~USPS Media Mail', 'stamps_com', 'usps_media_mail', 'regional_rate_box_b', 1, '', '2016-12-21 12:04:57', '2016-12-21 12:04:57');

-- --------------------------------------------------------

--
-- Table structure for table `tb_bid_activity`
--

CREATE TABLE `tb_bid_activity` (
  `ACTIVITY_ID` int(11) NOT NULL,
  `PRODUCT_ID` int(11) NOT NULL,
  `LAST_BIDDING_USER_ID` int(11) NOT NULL COMMENT 'Last bidding user',
  `PRODUCT_SKU` varchar(255) NOT NULL COMMENT 'Product SKU',
  `ACTIVITY_COUNT` int(5) NOT NULL DEFAULT '0' COMMENT 'Bid Activity Count',
  `BID_DATE` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_bid_settings`
--

CREATE TABLE `tb_bid_settings` (
  `SETTING_ID` int(11) NOT NULL,
  `PARAM_NAME` varchar(10) NOT NULL,
  `PARAM_VALUE` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_categories`
--

CREATE TABLE `tb_categories` (
  `CATEGORY_ID` int(11) NOT NULL,
  `CATEGORY_NAME` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_hash_table`
--

CREATE TABLE `tb_hash_table` (
  `SALT_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `SALT` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_items_cart`
--

CREATE TABLE `tb_items_cart` (
  `CART_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `PRODUCT_ID` int(11) NOT NULL,
  `PRODUCT_PRICE` decimal(10,2) NOT NULL,
  `BIDDED_ITEM` int(1) DEFAULT '0',
  `IS_SOLD` int(1) NOT NULL DEFAULT '0',
  `PAYPAL_HASH` varchar(100) DEFAULT NULL COMMENT 'Use to track which items were paid for',
  `DATE_ADDED` datetime NOT NULL,
  `EXPIRY_DATE` datetime NOT NULL,
  `DATE_BOUGHT` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_items_cart`
--

INSERT INTO `tb_items_cart` (`CART_ID`, `USER_ID`, `PRODUCT_ID`, `PRODUCT_PRICE`, `BIDDED_ITEM`, `IS_SOLD`, `PAYPAL_HASH`, `DATE_ADDED`, `EXPIRY_DATE`, `DATE_BOUGHT`) VALUES
(49, 5, 1, '6.00', 1, 0, NULL, '2016-12-21 21:06:19', '2016-12-21 21:06:19', '2016-12-21 21:06:19'),
(50, 5, 1, '1.00', 1, 0, NULL, '2016-12-21 22:03:54', '2016-12-21 22:03:54', '2016-12-21 22:03:54'),
(51, 5, 1, '6.00', 1, 0, NULL, '2016-12-21 22:05:15', '2016-12-21 22:05:15', '2016-12-21 22:05:15'),
(52, 5, 2, '16.00', 1, 0, NULL, '2016-12-21 22:05:59', '2016-12-21 22:05:59', '2016-12-21 22:05:59'),
(53, 5, 1, '1.00', 1, 0, NULL, '2016-12-21 22:06:58', '2016-12-21 22:06:58', '2016-12-21 22:06:58'),
(54, 5, 217, '1.00', 1, 0, NULL, '2016-12-21 22:08:22', '2016-12-21 22:08:22', '2016-12-21 22:08:22'),
(55, 5, 1, '1.00', 1, 0, NULL, '2016-12-21 22:09:11', '2016-12-21 22:09:11', '2016-12-21 22:09:11'),
(56, 5, 1, '61.00', 1, 0, NULL, '2017-01-06 20:54:13', '2017-01-06 20:54:13', '2017-01-06 20:54:13');

-- --------------------------------------------------------

--
-- Table structure for table `tb_items_wishlist`
--

CREATE TABLE `tb_items_wishlist` (
  `WISHLIST_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `PRODUCT_ID` int(11) NOT NULL,
  `DATE_ADDED` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_products`
--

CREATE TABLE `tb_products` (
  `PRODUCT_ID` int(11) NOT NULL COMMENT 'Product Id',
  `UID` varchar(100) DEFAULT NULL COMMENT 'Universal ID',
  `SKU` varchar(255) NOT NULL COMMENT 'Stock Keeping Unit',
  `PRODUCT_NAME` varchar(255) NOT NULL COMMENT 'Product Name',
  `PRODUCT_DESCRIPTION` text,
  `CATEGORIES` varchar(255) DEFAULT NULL COMMENT 'Categories',
  `BRAND_NAME` varchar(255) NOT NULL,
  `PRICE` decimal(10,2) NOT NULL,
  `RETAIL_PRICE` float(10,2) NOT NULL,
  `ALLOW_PURCHASES` int(1) NOT NULL DEFAULT '1' COMMENT 'Purchase Allowed',
  `VISIBLE` int(1) NOT NULL DEFAULT '1' COMMENT 'Visible',
  `AVAILABLE` int(1) DEFAULT '1',
  `ALLOW_AUCTION` int(11) NOT NULL DEFAULT '1' COMMENT 'Allow Auction',
  `TRACK_INVENTORY` varchar(255) DEFAULT NULL,
  `CURRENT_STOCK_LEVEL` int(10) NOT NULL,
  `MIN_STOCK_LEVEL` int(5) NOT NULL DEFAULT '1' COMMENT 'Minimum Stock Level',
  `STOCK_LOCATION` varchar(255) DEFAULT NULL,
  `STOCK_TYPE` varchar(255) DEFAULT NULL,
  `DATE_ADDED` datetime DEFAULT NULL COMMENT 'Date Added',
  `DATE_UPDATED` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Updated'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_products`
--

INSERT INTO `tb_products` (`PRODUCT_ID`, `UID`, `SKU`, `PRODUCT_NAME`, `PRODUCT_DESCRIPTION`, `CATEGORIES`, `BRAND_NAME`, `PRICE`, `RETAIL_PRICE`, `ALLOW_PURCHASES`, `VISIBLE`, `AVAILABLE`, `ALLOW_AUCTION`, `TRACK_INVENTORY`, `CURRENT_STOCK_LEVEL`, `MIN_STOCK_LEVEL`, `STOCK_LOCATION`, `STOCK_TYPE`, `DATE_ADDED`, `DATE_UPDATED`) VALUES
(1, 'M795N6ZONQW', 'NHQ-J272582011000', 'Hidalgo Blue Diamonique Stainless Steel Watch Bezel', 'Hidalgo Blue Diamonique Stainless Steel Watch Bezel', 'Watches/Fixed/Wristwatches', 'hidalgo', '96.00', 98.00, 1, 1, 1, 1, 'by product', 1, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:34'),
(2, 'M0LEKOEVD4W', 'NQH-J272582150000', 'Hidalgo Pink Diamonique Stainless Steel Watch Bezel', 'Hidalgo Pink Diamonique Stainless Steel Watch Bezel', 'Watches/Fixed/Wristwatches', 'hidalgo', '800.00', 899.45, 1, 1, 1, 1, 'by product', 1, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:34'),
(3, 'M1W4N47ON5P', 'NQH-J273636202543', 'Ecclissi Sterling Silver Round Dial Acetate Strap White Large Watch', 'Ecclissi Sterling Silver Round Dial Acetate Strap White Large Watch', 'Watches/Fixed/Wristwatches', 'hidalgo', '150.00', 450.00, 1, 1, 1, 1, 'by product', 1, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:34'),
(4, 'M71YN5GYNVQ', 'NQH-J261702000000', 'Dweck Diamonds Sterling S/2 Bracelets W/Figure 8 Charm', 'Dweck Diamonds Sterling S/2 Bracelets W/Figure 8 Charm', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '122.00', 366.00, 1, 1, 1, 1, 'by product', 20, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-25 20:37:06'),
(5, 'MLVQD8PRD4E', 'NQH-J267523273074', 'Novica Sterling Silver Polished Gemstone Nugget Average Bracelet', 'Novica Sterling Silver Polished Gemstone Nugget Average Bracelet', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '29.95', 30.00, 1, 1, 1, 1, 'by product', 26, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:34'),
(6, 'M128N0JPK57', 'NQH-J268946V75000', 'Ippocampo Sterling 8" Smoky Quartz Gemstone Link Toggle Bracelet', 'Ippocampo Sterling 8" Smoky Quartz Gemstone Link Toggle Bracelet', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '139.00', 417.00, 1, 1, 1, 1, 'by product', 15, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:34'),
(7, 'MYOMK185NP0', 'NQH-J271679273543', 'Erica Courtney Amethyst Gemstone & Diamonique Hinged Kim Large Cuff Sterling', 'Erica Courtney Amethyst Gemstone & Diamonique Hinged Kim Large Cuff Sterling', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '174.00', 522.00, 1, 1, 1, 1, 'by product', 0, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:34'),
(8, 'M879D297K12', 'NQH-J268381202000', 'Vicenzagold Large Textured Twist Design Round Bangle 14K Yellow Gold', 'Vicenzagold Large Textured Twist Design Round Bangle 14K Yellow Gold', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '216.00', 648.00, 1, 1, 1, 1, 'by product', 0, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:34'),
(9, 'MG3PDX60NLX', 'NQH-J142308000000', 'Francesca Visconti\'S Amore Cuff Bracelet Goldtone', 'Francesca Visconti\'S Amore Cuff Bracelet Goldtone', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '59.50', 179.00, 1, 1, 1, 1, 'by product', 81, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:34'),
(10, 'M0YGNJWVDJ7', 'NQH-J146242061668', 'Spin By Mitchell Gross Jeweled Cobweb Cuff Bracelet Silvertone Green Agate', 'Spin By Mitchell Gross Jeweled Cobweb Cuff Bracelet Silvertone Green Agate', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '26.00', 78.00, 1, 1, 1, 1, 'by product', 11, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:34'),
(11, 'MZ34K961K2Q', 'NQH-J146242Z32668', 'Spin By Mitchell Gross Jeweled Cobweb Cuff Bracelet Silvertone Brown Tigers Eye', 'Spin By Mitchell Gross Jeweled Cobweb Cuff Bracelet Silvertone Brown Tigers Eye', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '26.00', 78.00, 1, 1, 1, 1, 'by product', 11, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:34'),
(12, 'M2JRKY3JNEY', 'NQH-J149533012000', 'Fashionable Foil Colorful Hinged Bangle Bracelet Black Silvertone', 'Fashionable Foil Colorful Hinged Bangle Bracelet Black Silvertone', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '19.75', 100.00, 1, 1, 1, 1, 'by product', 1, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:34'),
(13, 'MRWGNMZ0DE0', 'NQH-J149810G84000', 'Logo By Lori Goldstein Faceted Stone Stretch Bracelet Gunmetal Golden Brown', 'Logo By Lori Goldstein Faceted Stone Stretch Bracelet Gunmetal Golden Brown', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '38.00', 114.00, 1, 1, 1, 1, 'by product', 11, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:35'),
(14, 'MG3PK313NQM', 'NQH-J149874848000', 'Susan Graver Polished & Textured Design Stretch Bracelet Two-Tone', 'Susan Graver Polished & Textured Design Stretch Bracelet Two-Tone', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '29.75', 89.00, 1, 1, 1, 1, 'by product', 1, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:35'),
(15, 'M4OJNWZ2NQ1', 'NQH-J152527154000', 'Isaac Mizrahi Live! Multi-Charm Bracelet Purple Goldtone', 'Isaac Mizrahi Live! Multi-Charm Bracelet Purple Goldtone', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '43.50', 131.00, 1, 1, 1, 1, 'by product', 11, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:35'),
(16, 'MR9ZK737D63', 'NQH-J152745848000', 'Joan Rivers Jeweled Stretch Bracelet Gunmetal Jeweltone', 'Joan Rivers Jeweled Stretch Bracelet Gunmetal Jeweltone', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '44.00', 132.00, 1, 1, 1, 1, 'by product', 1, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:35'),
(17, 'M56EDGJED3J', 'NQH-J155009848000', 'Joan Rivers Multiple Hearts Charm Stretch Bracelet Burnished Goldtone', 'Joan Rivers Multiple Hearts Charm Stretch Bracelet Burnished Goldtone', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '34.50', 104.00, 1, 1, 1, 1, 'by product', 1, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:35'),
(18, 'MPVXNZRRDOM', 'NQH-J155099680593', 'Isaac Mizrahi Live! Polished Leaf & Oval Stone Link Bracelet 7" Silvertone/Clear', 'Isaac Mizrahi Live! Polished Leaf & Oval Stone Link Bracelet 7" Silvertone/Clear', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '59.50', 179.00, 1, 1, 1, 1, 'by product', 23, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:35'),
(19, 'MRM5DEVPNX4', 'NQH-J155863680074', 'Melania Hammered & Crystal Hinged Bangle Bracelet Silvertone Average', 'Melania Hammered & Crystal Hinged Bangle Bracelet Silvertone Average', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '79.00', 237.00, 1, 1, 1, 1, 'by product', 11, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:35'),
(20, 'ME42DPR0N7W', 'NQH-J157199000074', 'Kenneth Jay Lane\'S Black & White Snake Bangle Bracelet Average', 'Kenneth Jay Lane\'S Black & White Snake Bangle Bracelet Average', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '135.00', 405.00, 1, 1, 1, 1, 'by product', 1, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:35'),
(21, 'M3GLDRZMNW4', 'NQH-J158331000000', 'Tri-Color Bold Elongated Link Stretch Bracelet', 'Tri-Color Bold Elongated Link Stretch Bracelet', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '24.50', 74.00, 1, 1, 1, 1, 'by product', 0, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:35'),
(22, 'M8GMDQG8NO1', 'NQH-J261619000074', 'Andy Warhol By Rlm Studio Celestial Brass Bangle Average', 'Andy Warhol By Rlm Studio Celestial Brass Bangle Average', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '99.00', 297.00, 1, 1, 1, 1, 'by product', 4, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:35'),
(23, 'MVY6DVGODXO', 'NQH-J261947848074', 'Joan Rivers Beaded Brilliance Stretch Bracelet Black/Clear Average', 'Joan Rivers Beaded Brilliance Stretch Bracelet Black/Clear Average', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '49.50', 149.00, 1, 1, 1, 1, 'by product', 21, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:35'),
(24, 'M795N6JOKQW', 'NQH-J266309150000', 'Joan Rivers Vintage Floral Stretch Bracelet Pink', 'Joan Rivers Vintage Floral Stretch Bracelet Pink', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '59.50', 179.00, 1, 1, 1, 1, 'by product', 8, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:35'),
(25, 'M0LEKOPVN4W', 'NQH-J267422012000', 'Reversible Goldtone Black Enamel Stretch Bracelet', 'Reversible Goldtone Black Enamel Stretch Bracelet', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '49.50', 149.00, 1, 1, 1, 1, 'by product', 29, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:35'),
(26, 'M1W4N40OK5P', 'NQH-J267422202000', 'Reversible Antiqued Rosetone White Enamel Stretch Bracelet', 'Reversible Antiqued Rosetone White Enamel Stretch Bracelet', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '49.50', 149.00, 1, 1, 1, 1, 'by product', 11, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:35'),
(27, 'M194DLGQK85', 'NQH-J268730000625', 'Susan Graver Two-Tone Rope Design Hinged Bangle', 'Susan Graver Two-Tone Rope Design Hinged Bangle', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '24.75', 74.00, 1, 1, 1, 1, 'by product', 26, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:35'),
(28, 'M71YN5JYNVQ', 'NQH-J270038000000', 'Lee Sands Laminated Crackle Shell Stretch Bracelet', 'Lee Sands Laminated Crackle Shell Stretch Bracelet', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '23.00', 69.00, 1, 1, 1, 1, 'by product', 25, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:35'),
(29, 'MLVQD89RK4E', 'NQH-J270196848000', 'Joan Rivers Status Link Hammered Stretch Bracelet', 'Joan Rivers Status Link Hammered Stretch Bracelet', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '59.50', 179.00, 1, 1, 1, 1, 'by product', 21, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:35'),
(30, 'M128N04PD57', 'NQH-J270200061000', 'Joan Rivers Hammered Bezel & Green Stone Stretch Bracelet', 'Joan Rivers Hammered Bezel & Green Stone Stretch Bracelet', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '39.50', 119.00, 1, 1, 1, 1, 'by product', 16, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:35'),
(31, 'MYOMK145KP0', 'NQH-J271446680000', 'Joan Rivers Silvertone Set Of 3 Classic Textured Bead Bracelets', 'Joan Rivers Silvertone Set Of 3 Classic Textured Bead Bracelets', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '36.50', 110.00, 1, 1, 1, 1, 'by product', 1, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:35'),
(32, 'M879D247N12', 'NQH-J271847180074', 'Susan Graver Silvertone Set Of 3 Acrylic Average Bangles With Crystal Accent', 'Susan Graver Silvertone Set Of 3 Acrylic Average Bangles With Crystal Accent', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '32.50', 98.00, 1, 1, 1, 1, 'by product', 3, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:35'),
(33, 'MG3PDXE0NLX', 'NQH-J272318061000', 'Rare Joan Rivers Gunmetal Green Fantasy Fashion Stretch Bracelet', 'Rare Joan Rivers Gunmetal Green Fantasy Fashion Stretch Bracelet', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '45.00', 135.00, 1, 1, 1, 1, 'by product', 1, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:35'),
(34, 'M0YGNJOVKJ7', 'NQH-J272543000000', 'Bronzo Italia Large Bold Polished Wrap Design Cuff Bracelet', 'Bronzo Italia Large Bold Polished Wrap Design Cuff Bracelet', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '146.00', 438.00, 1, 1, 1, 1, 'by product', 0, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:35'),
(35, 'MZ34K991K2Q', 'NQH-J272583000074', 'Multi- Row Gunmetal & Crystal Concave Disc Average Bracelet', 'Multi- Row Gunmetal & Crystal Concave Disc Average Bracelet', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '29.75', 89.00, 1, 1, 1, 1, 'by product', 1, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:35'),
(36, 'M2JRKYPJKEY', 'NQH-J272583000543', 'Multi- Row Gunmetal & Crystal Concave Disc Large Bracelet', 'Multi- Row Gunmetal & Crystal Concave Disc Large Bracelet', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '29.75', 89.00, 1, 1, 1, 1, 'by product', 2, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:35'),
(37, 'MRWGNMJ0NE0', 'NQH-J273993012000', 'Kenneth Jay Lane Pave Link Stretch Black Bead Bracelet', 'Kenneth Jay Lane Pave Link Stretch Black Bead Bracelet', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '39.00', 117.00, 1, 1, 1, 1, 'by product', 1, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:35'),
(38, 'MG3PK373NQM', 'NQH-J274599000000', 'Tri-Color Bold Elongated Link Stretch Bracelet', 'Tri-Color Bold Elongated Link Stretch Bracelet', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '24.50', 74.00, 1, 1, 1, 1, 'by product', 1, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:35'),
(39, 'M4OJNWX2DQ1', 'NQH-J274611848000', 'Huetopia Honeycomb Gemstone Bead Bracelet Crystal Quartz', 'Huetopia Honeycomb Gemstone Bead Bracelet Crystal Quartz', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '45.50', 137.00, 1, 1, 1, 1, 'by product', 1, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:35'),
(40, 'MR9ZK7Z7D63', 'NQH-J275927013000', 'Kjl Woven Chain Simulated Pearl Bracelet Brown', 'Kjl Woven Chain Simulated Pearl Bracelet Brown', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '39.50', 119.00, 1, 1, 1, 1, 'by product', 1, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:35'),
(41, 'M56EDGQEK3J', '22016-J277989000000', 'Bronzo Italia Large Triple Row Curb Link Round Bangle', 'Bronzo Italia Large Triple Row Curb Link Round Bangle', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '172.00', 516.00, 1, 1, 1, 1, 'by product', 82, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:35'),
(42, 'MPVXNZJRKOM', 'NQH-J278075848000', 'Lee Sands Shell Print Stretch Bracelet White/Brown', 'Lee Sands Shell Print Stretch Bracelet White/Brown', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '28.50', 86.00, 1, 1, 1, 1, 'by product', 1, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:35'),
(43, 'MRM5DEPPNX4', 'NQH-J281709000074', 'Bronzo Italia 1.50 Ct Tw Black Spinel Foldover Clasp Hinged Bangle Average', 'Bronzo Italia 1.50 Ct Tw Black Spinel Foldover Clasp Hinged Bangle Average', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '129.00', 387.00, 1, 1, 1, 1, 'by product', 2, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:35'),
(44, 'ME42DP10N7W', 'NQH-J287256182074', 'Steel By Design Crystal Horizontal Cross Cable Bracelet Stainless Average', 'Steel By Design Crystal Horizontal Cross Cable Bracelet Stainless Average', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '29.75', 89.00, 1, 1, 1, 1, 'by product', 1, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:35'),
(45, 'M3GLDR9MNW4', 'NQH-J287256987074', 'Steel By Design Crystal Horizontal Cross Cable Bracelet Chocolate Average', 'Steel By Design Crystal Horizontal Cross Cable Bracelet Chocolate Average', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '29.75', 89.00, 1, 1, 1, 1, 'by product', 1, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:35'),
(46, 'M8GMDQ98DO1', 'NQH-J289729000543', 'Steel By Design Set Of Three Polished And Crystal Cable Bracelets Large', 'Steel By Design Set Of Three Polished And Crystal Cable Bracelets Large', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '43.75', 131.00, 1, 1, 1, 1, 'by product', 1, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:35'),
(47, 'MVY6DVXONXO', 'NQH-J289729000625', 'Steel By Design Set Of Three Polished And Crystal Cable Bracelets Small', 'Steel By Design Set Of Three Polished And Crystal Cable Bracelets Small', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '43.75', 131.45, 1, 1, 1, 1, 'by product', 0, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:35'),
(48, 'M795N6GOKQW', 'NQH-J293410S69625', 'Stainless Steel Braided Hinged Bangle With Pavecrystal Bead Goldtone Small', 'Stainless Steel Braided Hinged Bangle With Pavecrystal Bead Goldtone Small', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '37.50', 113.00, 1, 1, 1, 1, 'by product', 1, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:35'),
(49, 'M0LEKO2VN4W', 'NQH-J157215000074', 'Large Stainless Steel Simulated Diamond Link Average Magnetic Clasp Bracelet', 'Large Stainless Steel Simulated Diamond Link Average Magnetic Clasp Bracelet', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '29.75', 89.00, 1, 1, 1, 1, 'by product', 0, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:35'),
(50, 'M1W4N42OD5P', 'NQH-J282421180351', '0.70 ct Tw Black Spinel Pavestatus Sterling Band Ring Silver Size 5', '0.70 ct Tw Black Spinel Pavestatus Sterling Band Ring Silver Size 5', 'Top Selling/Jewelry/Ring', 'hidalgo', '79.50', 239.00, 1, 1, 1, 1, 'by product', 1, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:35'),
(51, 'M194DLYQK85', 'NQH-J282421180352', '0.70 ct Tw Black Spinel Pavestatus Sterling Band Ring Silver Size 6', '0.70 ct Tw Black Spinel Pavestatus Sterling Band Ring Silver Size 6', 'Top Selling/Jewelry/Ring', 'hidalgo', '79.50', 239.00, 1, 1, 1, 1, 'by product', 1, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:36'),
(52, 'M71YN57YKVQ', 'I-CMR15830AM', '1.00 ct Oval Brazilian Amethyst And Diamond Accent Ring 14K Yellow Gold', '1.00 ct Oval Brazilian Amethyst And Diamond Accent Ring 14K Yellow Gold', 'Top Selling/Jewelry/Ring', 'hidalgo', '254.00', 762.00, 1, 1, 1, 1, 'by product', 101, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:36'),
(53, 'MLVQD8ERK4E', 'NQH-J279193000352', '3.10 ct Tw Black Spinel Pavewave Sterling Ring Size 6', '3.10 ct Tw Black Spinel Pavewave Sterling Ring Size 6', 'Top Selling/Jewelry/Ring', 'hidalgo', '112.00', 336.00, 1, 1, 1, 1, 'by product', 0, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:36'),
(54, 'M128N09PN57', 'NQH-J282026000362', '3.25 ct Tw Black Spinel Paveround Wrapped Sterling Ring Size 11', '3.25 ct Tw Black Spinel Paveround Wrapped Sterling Ring Size 11', 'Top Selling/Jewelry/Ring', 'hidalgo', '199.50', 599.00, 1, 1, 1, 1, 'by product', 0, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:36'),
(55, 'MYOMK1L5KP0', 'NQH-J282026000352', '3.25 ct Tw Black Spinel Paveround Wrapped Sterling Ring Size 6', '3.25 ct Tw Black Spinel Paveround Wrapped Sterling Ring Size 6', 'Top Selling/Jewelry/Ring', 'hidalgo', '199.50', 599.00, 1, 1, 1, 1, 'by product', 0, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:36'),
(56, 'M879D2L7N12', 'NQH-J282026000358', '3.25 ct Tw Black Spinel Paveround Wrapped Sterling Ring Size 9', '3.25 ct Tw Black Spinel Paveround Wrapped Sterling Ring Size 9', 'Top Selling/Jewelry/Ring', 'hidalgo', '199.50', 599.00, 1, 1, 1, 1, 'by product', 0, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:36'),
(57, 'MG3PDXX0DLX', 'NQH-J283124000351', 'American West Sterling/Brass White Magnesite Framed Scroll Ring Size 5', 'American West Sterling/Brass White Magnesite Framed Scroll Ring Size 5', 'Top Selling/Jewelry/Ring', 'hidalgo', '69.00', 207.00, 1, 1, 1, 1, 'by product', 4, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:36'),
(58, 'M0YGNJ2VNJ7', 'NQH-J152042000351', 'Connemara Marble Marquise Sterling Silver Cocktail Ring W/ White Topaz Size 5', 'Connemara Marble Marquise Sterling Silver Cocktail Ring W/ White Topaz Size 5', 'Top Selling/Jewelry/Ring', 'hidalgo', '93.50', 281.00, 1, 1, 1, 1, 'by product', 21, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:36'),
(59, 'MZ34K9P1D2Q', 'NQH-J158934849351', 'Dweck Diamonds Sterling Gemstone Florette Stack Ring Size 5 Rhodolite', 'Dweck Diamonds Sterling Gemstone Florette Stack Ring Size 5 Rhodolite', 'Top Selling/Jewelry/Ring', 'hidalgo', '93.50', 281.00, 1, 1, 1, 1, 'by product', 6, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:36'),
(60, 'M2JRKYXJDEY', 'NQH-J158934273352', 'Dweck Diamonds Sterling Gemstone Florette Stack Ring Size 6 Amethyst', 'Dweck Diamonds Sterling Gemstone Florette Stack Ring Size 6 Amethyst', 'Top Selling/Jewelry/Ring', 'hidalgo', '93.50', 281.00, 1, 1, 1, 1, 'by product', 12, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:36'),
(61, 'MRWGNM10KE0', 'NQH-J158934849352', 'Dweck Diamonds Sterling Gemstone Florette Stack Ring Size 6 Rhodolite', 'Dweck Diamonds Sterling Gemstone Florette Stack Ring Size 6 Rhodolite', 'Top Selling/Jewelry/Ring', 'hidalgo', '93.50', 281.00, 1, 1, 1, 1, 'by product', 21, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:36'),
(62, 'MG3PK3Z3KQM', 'NQH-J277268000351', 'John Atencio Sterling White Topaz Ring Size 5', 'John Atencio Sterling White Topaz Ring Size 5', 'Top Selling/Jewelry/Ring', 'hidalgo', '118.00', 354.00, 1, 1, 1, 1, 'by product', 0, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:36'),
(63, 'M4OJNWM2KQ1', 'NQH-J265828000351', 'Rlm Studio Sterling & Brass Purple Agate Bezel Set Heart Ring Size 5', 'Rlm Studio Sterling & Brass Purple Agate Bezel Set Heart Ring Size 5', 'Top Selling/Jewelry/Ring', 'hidalgo', '147.00', 441.00, 1, 1, 1, 1, 'by product', 0, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:36'),
(64, 'MR9ZK7Q7D63', 'NQH-J263161000352', 'Sandra Singh Artisan Crafted Sterling Rainbow Moonstone Ring Size 6', 'Sandra Singh Artisan Crafted Sterling Rainbow Moonstone Ring Size 6', 'Top Selling/Jewelry/Ring', 'hidalgo', '84.00', 252.00, 1, 1, 1, 1, 'by product', 9, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:36'),
(65, 'M56EDG9EK3J', 'NQH-J278888171351', 'Vicenzasilver Sterling 1.00 ct Tw Black Spinel Hammered Ring Rose Size 5', 'Vicenzasilver Sterling 1.00 ct Tw Black Spinel Hammered Ring Rose Size 5', 'Top Selling/Jewelry/Ring', 'hidalgo', '132.50', 398.00, 1, 1, 1, 1, 'by product', 0, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:36'),
(66, 'MPVXNZ8RKOM', 'NQH-J278888240351', 'Vicenzasilver Sterling 1.00 ct Tw Black Spinel Hammered Ring Yellow Size 5', 'Vicenzasilver Sterling 1.00 ct Tw Black Spinel Hammered Ring Yellow Size 5', 'Top Selling/Jewelry/Ring', 'hidalgo', '132.50', 398.00, 1, 1, 1, 1, 'by product', 0, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:36'),
(67, 'MRM5DE4PKX4', 'NQH-J269025011000', 'Bold Oval Blue Drusy Quartz Sterling Omega Back Stud Earrings', 'Bold Oval Blue Drusy Quartz Sterling Omega Back Stud Earrings', 'Fixed/Jewelry/Fashion Jewelry/Earrings', 'hidalgo', '119.00', 357.00, 1, 1, 1, 1, 'by product', 20, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:36'),
(68, 'ME42DP00K7W', 'NQH-J269025150000', 'Bold Oval Pink Drusy Quartz Sterling Omega Back Stud Earrings', 'Bold Oval Pink Drusy Quartz Sterling Omega Back Stud Earrings', 'Fixed/Jewelry/Fashion Jewelry/Earrings', 'hidalgo', '119.00', 357.00, 1, 1, 1, 1, 'by product', 0, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:36'),
(69, 'M3GLDR2MKW4', 'NQH-J274573240000', 'Sterling Diamond Cut Triple Hoop Earrings Yellow', 'Sterling Diamond Cut Triple Hoop Earrings Yellow', 'Fixed/Jewelry/Fashion Jewelry/Earrings', 'hidalgo', '50.00', 150.00, 1, 1, 1, 1, 'by product', 0, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:36'),
(70, 'M8GMDQ18KO1', 'NQH-J144021052000', 'Joan Rivers Python Pattern Crystal Border Button Earrings Goldtone Fuchsia', 'Joan Rivers Python Pattern Crystal Border Button Earrings Goldtone Fuchsia', 'Fixed/Jewelry/Fashion Jewelry/Earrings', 'hidalgo', '32.00', 96.00, 1, 1, 1, 1, 'by product', 5, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:36'),
(71, 'MVY6DVWOKXO', 'NQH-J148169112453', 'Luxe Rachel Zoe Pave Crystals & Cabochon Drop Earrings Clip On Silvertone Blue', 'Luxe Rachel Zoe Pave Crystals & Cabochon Drop Earrings Clip On Silvertone Blue', 'Fixed/Jewelry/Fashion Jewelry/Earrings', 'hidalgo', '64.50', 194.00, 1, 1, 1, 1, 'by product', 2, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:36'),
(72, 'M795N6RODQW', 'NQH-J148169112581', 'Luxe Rachel Zoe Pave Crystals & Cabochon Drop Earrings Pierced Silvertone Blue', 'Luxe Rachel Zoe Pave Crystals & Cabochon Drop Earrings Pierced Silvertone Blue', 'Fixed/Jewelry/Fashion Jewelry/Earrings', 'hidalgo', '64.50', 194.00, 1, 1, 1, 1, 'by product', 1, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:36'),
(73, 'M0LEKOLVK4W', 'NQH-J149134011000', 'Kenneth Jay Lane\'S Fashion Guru Hoop Earrings Goldtone Blue', 'Kenneth Jay Lane\'S Fashion Guru Hoop Earrings Goldtone Blue', 'Fixed/Jewelry/Fashion Jewelry/Earrings', 'hidalgo', '35.00', 105.00, 1, 1, 1, 1, 'by product', 1, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:36'),
(74, 'M1W4N4EOK5P', 'NQH-J149134AB1000', 'Kenneth Jay Lane\'S Fashion Guru Hoop Earrings Goldtone Simulated Tortoise', 'Kenneth Jay Lane\'S Fashion Guru Hoop Earrings Goldtone Simulated Tortoise', 'Fixed/Jewelry/Fashion Jewelry/Earrings', 'hidalgo', '35.00', 105.00, 1, 1, 1, 1, 'by product', 1, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:36'),
(75, 'M194DLJQK85', 'NQH-J152965000000', 'Luxe Rachel Zoe Tiered Teardrop Chandelier Earrings Silvertone', 'Luxe Rachel Zoe Tiered Teardrop Chandelier Earrings Silvertone', 'Fixed/Jewelry/Fashion Jewelry/Earrings', 'hidalgo', '74.70', 224.00, 1, 1, 1, 1, 'by product', 11, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:36'),
(76, 'M71YN5PYNVQ', 'NQH-J155041000', 'Lee Sands Acacia Flower Inlay Lever Back Earrings Goldtone', 'Lee Sands Acacia Flower Inlay Lever Back Earrings Goldtone', 'Fixed/Jewelry/Fashion Jewelry/Earrings', 'hidalgo', '19.50', 100.00, 1, 1, 1, 1, 'by product', 0, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:36'),
(77, 'MLVQD8VRD4E', 'NQH-J155100680000', 'Isaac Mizrahi Live! Polished Leaf And Stone Drop Earrings Silvertone', 'Isaac Mizrahi Live! Polished Leaf And Stone Drop Earrings Silvertone', 'Fixed/Jewelry/Fashion Jewelry/Earrings', 'hidalgo', '23.00', 69.00, 1, 1, 1, 1, 'by product', 11, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:36'),
(78, 'M128N0OPD57', 'NQH-J155100S69000', 'Isaac Mizrahi Live! Polished Leaf And Stone Drop Earrings Goldtone', 'Isaac Mizrahi Live! Polished Leaf And Stone Drop Earrings Goldtone', 'Fixed/Jewelry/Fashion Jewelry/Earrings', 'hidalgo', '23.00', 69.00, 1, 1, 1, 1, 'by product', 1, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:36'),
(79, 'MYOMK1O5KP0', 'NQH-J155101680000', 'Isaac Mizrahi Live! Sparkling Pave & Simulated Pearl Earrings Silvertone', 'Isaac Mizrahi Live! Sparkling Pave & Simulated Pearl Earrings Silvertone', 'Fixed/Jewelry/Fashion Jewelry/Earrings', 'hidalgo', '46.50', 140.00, 1, 1, 1, 1, 'by product', 11, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:36'),
(80, 'M879D2G7D12', 'NQH-J155101S69000', 'Isaac Mizrahi Live! Sparkling Pave & Simulated Pearl Earrings Goldtone', 'Isaac Mizrahi Live! Sparkling Pave & Simulated Pearl Earrings Goldtone', 'Fixed/Jewelry/Fashion Jewelry/Earrings', 'hidalgo', '46.50', 140.00, 1, 1, 1, 1, 'by product', 1, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:36'),
(81, 'MG3PDX80KLX', 'NQH-J155315012000', 'Kenneth Jay Lane\'S Enamel Statement Hoop Earrings Goldtone Black', 'Kenneth Jay Lane\'S Enamel Statement Hoop Earrings Goldtone Black', 'Fixed/Jewelry/Fashion Jewelry/Earrings', 'hidalgo', '29.50', 89.00, 1, 1, 1, 1, 'by product', 1, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:36'),
(82, 'M0YGNJ1VKJ7', 'NQH-J155315202000', 'Kenneth Jay Lane\'S Enamel Statement Hoop Earrings Goldtone White', 'Kenneth Jay Lane\'S Enamel Statement Hoop Earrings Goldtone White', 'Fixed/Jewelry/Fashion Jewelry/Earrings', 'hidalgo', '29.50', 89.00, 1, 1, 1, 1, 'by product', 1, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:36'),
(83, 'MZ34K951D2Q', 'NQH-J156724M86000', 'Shoshanna Freeform Shape Hoop Earrings With Crystal Accents Gunmetal', 'Shoshanna Freeform Shape Hoop Earrings With Crystal Accents Gunmetal', 'Fixed/Jewelry/Fashion Jewelry/Earrings', 'hidalgo', '24.76', 74.00, 1, 1, 1, 1, 'by product', 1, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:36'),
(84, 'M2JRKY8JKEY', 'NQH-J157957S69000', 'Isaac Mizrahi Live! Stone Hoop Earrings Goldtone Purple', 'Isaac Mizrahi Live! Stone Hoop Earrings Goldtone Purple', 'Fixed/Jewelry/Fashion Jewelry/Earrings', 'hidalgo', '31.50', 95.00, 1, 1, 1, 1, 'by product', 0, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:36'),
(85, 'MRWGNMM0NE0', 'NQH-J260835M86581', 'Joan Rivers Shimmering Pave Ball Earrings Gunmetal Pierced', 'Joan Rivers Shimmering Pave Ball Earrings Gunmetal Pierced', 'Fixed/Jewelry/Fashion Jewelry/Earrings', 'hidalgo', '32.50', 98.00, 1, 1, 1, 1, 'by product', 16, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:36'),
(86, 'MG3PK3G3DQM', 'NQH-J260948012581', 'Joan Rivers Crystal Medallion Drop Earrings Black Pierced', 'Joan Rivers Crystal Medallion Drop Earrings Black Pierced', 'Fixed/Jewelry/Fashion Jewelry/Earrings', 'hidalgo', '39.50', 119.00, 1, 1, 1, 1, 'by product', 18, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:36'),
(87, 'M4OJNW92NQ1', '22016-J261322062000', 'Honora Potato Cultured Pearl & Diamond Beads 18K Gold Over Frontal Hoop Earrings', 'Honora Potato Cultured Pearl & Diamond Beads 18K Gold Over Frontal Hoop Earrings', 'Fixed/Jewelry/Fashion Jewelry/Earrings', 'hidalgo', '35.50', 299.00, 1, 1, 1, 1, 'by product', 31, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:36'),
(88, 'MR9ZK7R7K63', 'NQH-J263131680000', 'Wildlife By Heidi Klum Animal Instinct Hoop Earrings Silvertone', 'Wildlife By Heidi Klum Animal Instinct Hoop Earrings Silvertone', 'Fixed/Jewelry/Fashion Jewelry/Earrings', 'hidalgo', '44.50', 134.00, 1, 1, 1, 1, 'by product', 1, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:36'),
(89, 'M56EDG7EN3J', 'NQH-J263318154581', 'Joan Rivers Simple Chic Pave Ball Drop Earrings Pierced Purple Silvertone', 'Joan Rivers Simple Chic Pave Ball Drop Earrings Pierced Purple Silvertone', 'Fixed/Jewelry/Fashion Jewelry/Earrings', 'hidalgo', '39.50', 119.00, 1, 1, 1, 1, 'by product', 26, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:37'),
(90, 'MPVXNZ0RNOM', 'NQH-J264354680000', 'Open Work Floral Design Drop Earrings By Vt Luxe Silvertone', 'Open Work Floral Design Drop Earrings By Vt Luxe Silvertone', 'Fixed/Jewelry/Fashion Jewelry/Earrings', 'hidalgo', '55.00', 165.00, 1, 1, 1, 1, 'by product', 26, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:37'),
(91, 'MRM5DEEPDX4', '22016-J267073848000', 'Wendy Williams Textured Hoop Earrings Rosetone', 'Wendy Williams Textured Hoop Earrings Rosetone', 'Fixed/Jewelry/Fashion Jewelry/Earrings', 'hidalgo', '29.50', 89.00, 1, 1, 1, 1, 'by product', 4, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:37'),
(92, 'ME42DPM0D7W', 'NQH-J267073S69000', 'Rope Style Textured Goldtone Hoop Earrings', 'Rope Style Textured Goldtone Hoop Earrings', 'Fixed/Jewelry/Fashion Jewelry/Earrings', 'hidalgo', '29.50', 89.00, 1, 1, 1, 1, 'by product', 51, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:37'),
(93, 'M56EDG77N3J', 'NQH-J268371027581', 'Rare Joan Rivers Goldtone Round Black Crystal On Stage Glamour Hoop Earrings', 'Rare Joan Rivers Goldtone Round Black Crystal On Stage Glamour Hoop Earrings', 'Fixed/Jewelry/Fashion Jewelry/Earrings', 'hidalgo', '88.00', 264.00, 1, 1, 1, 1, 'by product', 26, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:37'),
(94, 'MPVXNZ0ONOM', 'NQH-J269557013581', 'Joan Rivers Brown Faceted Marquise Lever Back Drop Earrings', 'Joan Rivers Brown Faceted Marquise Lever Back Drop Earrings', 'Fixed/Jewelry/Fashion Jewelry/Earrings', 'hidalgo', '19.75', 100.00, 1, 1, 1, 1, 'by product', 1, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:37'),
(95, 'MRM5DEE5DX4', 'NQH-J269557027581', 'Joan Rivers Clear Faceted Marquise Lever Back Drop Earrings', 'Joan Rivers Clear Faceted Marquise Lever Back Drop Earrings', 'Fixed/Jewelry/Fashion Jewelry/Earrings', 'hidalgo', '19.75', 100.00, 1, 1, 1, 1, 'by product', 69, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:37'),
(96, 'ME42DPMJD7W', '22016-J271636000581', 'Kenneth Jay Lane Goldtone Regal Cabochon Pierced Drop Earrings', 'Kenneth Jay Lane Goldtone Regal Cabochon Pierced Drop Earrings', 'Fixed/Jewelry/Fashion Jewelry/Earrings', 'hidalgo', '49.50', 149.00, 1, 1, 1, 1, 'by product', 40, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:37'),
(97, 'M3GLDRM4KW4', '22016-J273263000453', 'Lee Sands Labradorite & Cultured Pearl Clip On Dangle Earrings', 'Lee Sands Labradorite & Cultured Pearl Clip On Dangle Earrings', 'Fixed/Jewelry/Fashion Jewelry/Earrings', 'hidalgo', '23.00', 69.00, 1, 1, 1, 1, 'by product', 28, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:37'),
(98, 'M8GMDQM5NO1', 'NQH-J274405S69000', 'Joan Rivers Instant Style Filigree Drop Earrings', 'Joan Rivers Instant Style Filigree Drop Earrings', 'Fixed/Jewelry/Fashion Jewelry/Earrings', 'hidalgo', '36.50', 110.00, 1, 1, 1, 1, 'by product', 1, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:37'),
(99, 'MVY6DV0ZKXO', '22016-J279224130000', 'Isaac Mizrahi Live! Colorful Open Curb Link Hoop Earrings Navy', 'Isaac Mizrahi Live! Colorful Open Curb Link Hoop Earrings Navy', 'Fixed/Jewelry/Fashion Jewelry/Earrings', 'hidalgo', '16.00', 100.00, 1, 1, 1, 1, 'by product', 16, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:37'),
(100, 'M795N6PMKQW', 'NQH-J279224CA9000', 'Isaac Mizrahi Live! Colorful Open Curb Link Hoop Earrings Candy Pink', 'Isaac Mizrahi Live! Colorful Open Curb Link Hoop Earrings Candy Pink', 'Fixed/Jewelry/Fashion Jewelry/Earrings', 'hidalgo', '16.00', 100.00, 1, 1, 1, 1, 'by product', 1, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:37'),
(101, 'M0LEKO73K4W', '22016-J280761000000', 'Nolan Miller\'S Exotic Chandelier Earrings', 'Nolan Miller\'S Exotic Chandelier Earrings', 'Fixed/Jewelry/Fashion Jewelry/Earrings', 'hidalgo', '58.50', 176.00, 1, 1, 1, 1, 'by product', 40, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:37'),
(102, 'M1W4N4Z6K5P', 'NQH-J280763AB1000', 'Kjl Fashion Guru Hoop Earrings Tortoise', 'Kjl Fashion Guru Hoop Earrings Tortoise', 'Fixed/Jewelry/Fashion Jewelry/Earrings', 'hidalgo', '35.00', 105.00, 1, 1, 1, 1, 'by product', 3, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:37'),
(103, 'M194DLMEK85', '22016-J32074848000', 'Joan Rivers Square Silhouette Resin Hoop Earrings Clear W/Gold', 'Joan Rivers Square Silhouette Resin Hoop Earrings Clear W/Gold', 'Fixed/Jewelry/Fashion Jewelry/Earrings', 'hidalgo', '27.75', 83.00, 1, 1, 1, 1, 'by product', 96, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:37'),
(104, 'M71YN5E5DVQ', 'NQH-J148918I28000', 'Joan Rivers Animal Print Silk Flower Pin Silvertone', 'Joan Rivers Animal Print Silk Flower Pin Silvertone', 'Fixed/Jewelry/Fashion Jewelry/Pins & Brooches', 'hidalgo', '29.75', 89.00, 1, 1, 1, 1, 'by product', 2, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:37'),
(105, 'MLVQD8QZK4E', 'NQH-J152913011000', 'Joan Rivers All That Glitters Flower Pin Blue Silvertone', 'Joan Rivers All That Glitters Flower Pin Blue Silvertone', 'Fixed/Jewelry/Fashion Jewelry/Pins & Brooches', 'hidalgo', '39.50', 119.00, 1, 1, 1, 1, 'by product', 1, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:37'),
(106, 'M128N01ZD57', 'NQH-J155010030000', 'Joan Rivers Trend Setting Flower Pin Denim Silvertone', 'Joan Rivers Trend Setting Flower Pin Denim Silvertone', 'Fixed/Jewelry/Fashion Jewelry/Pins & Brooches', 'hidalgo', '29.75', 89.00, 1, 1, 1, 1, 'by product', 1, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:37'),
(107, 'MYOMK1M7NP0', 'NQH-J157984011000', 'Joan Rivers Floral Mum Flower Pin Blue', 'Joan Rivers Floral Mum Flower Pin Blue', 'Fixed/Jewelry/Fashion Jewelry/Pins & Brooches', 'hidalgo', '39.00', 117.00, 1, 1, 1, 1, 'by product', 1, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:37'),
(108, 'M879D2XON12', 'NQH-J157984013000', 'Joan Rivers Floral Mum Flower Pin Brown', 'Joan Rivers Floral Mum Flower Pin Brown', 'Fixed/Jewelry/Fashion Jewelry/Pins & Brooches', 'hidalgo', '39.00', 117.00, 1, 1, 1, 1, 'by product', 1, 1, 'USA', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:37'),
(109, 'M1W4N4R6N5P', 'I-CSWB830', 'Ladies White Gold Finish 1 Row Genuine Diamond Tennis Bracelet 1.0Ct', 'Ladies White Gold Finish 1 Row Genuine Diamond Tennis Bracelet 1.0Ct', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '248.99', 747.00, 1, 1, 1, 1, 'by product', 98, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:37'),
(110, 'M194DLWEN85', 'F-39-716-13-YG14K', 'Estate 5.00Ct Round Diamond 14K Yellow Gold Tennis Bracelet G-H & Si-I Certified', 'Estate 5.00Ct Round Diamond 14K Yellow Gold Tennis Bracelet G-H & Si-I Certified', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '4009.00', 12027.00, 1, 1, 1, 1, 'by product', 0, 1, '', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:37'),
(111, 'M71YN5Q5DVQ', 'F-37-565-25-YG14K', 'Estate 1.25 Ct Round Natural Diamond 14K Yellow Gold Tennis Bracelet Certified', 'Estate 1.25 Ct Round Natural Diamond 14K Yellow Gold Tennis Bracelet Certified', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '1220.00', 3660.00, 1, 1, 1, 1, 'by product', 0, 1, '', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:37'),
(112, 'MLVQD8OZN4E', '22016-J262934-GT-E', 'QVC Joan Rivers Chic Classic Gold Tone Brown 18" Necklace & Pierced Earrings Set', 'QVC Joan Rivers Chic Classic Gold Tone Brown 18" Necklace & Pierced Earrings Set', 'Fixed/Jewelry/Fashion Jewelry/Sets', 'hidalgo', '64.99', 150.00, 1, 1, 1, 1, 'by product', 2, 1, '', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:37'),
(113, 'M128N0GZK57', 'QH-J146059-silvertone-32-green-set', 'QVC Garold Miller Silver Tone Green Graduated Faceted Bead 32" Necklace Earrings', 'QVC Garold Miller Silver Tone Green Graduated Faceted Bead 32" Necklace Earrings', 'Fixed/Jewelry/Fashion Jewelry/Sets', 'hidalgo', '29.99', 90.00, 1, 1, 1, 1, 'by product', 0, 1, '', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:37'),
(114, 'MYOMK1Z7DP0', '22016-J25877-silvertone-14.5-clear', 'QVC Silver Tone 3 Str& Mini Pave Heart Necklace & Earring Wardrobe', 'QVC Silver Tone 3 Str& Mini Pave Heart Necklace & Earring Wardrobe', 'Fixed/Jewelry/Fashion Jewelry/Sets', 'hidalgo', '29.99', 90.00, 1, 1, 1, 1, 'by product', 1, 1, '', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:37'),
(115, 'M879D2EOK12', 'I-CMWB2099-YSL', '6.10 CTW Blue Sapphire & Genuine Diamond Bracelet 10K Yellow Gold Finish', '6.10 CTW Blue Sapphire & Genuine Diamond Bracelet 10K Yellow Gold Finish', 'Top Selling/Jewelry/Bracelet', 'hidalgo', '384.99', 750.00, 1, 1, 1, 1, 'by product', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:37'),
(116, 'MG3PDXJ5KLX', 'M-12549-WG10K', 'D Vvs1 1 Ct Solitaire & 0.33Ct Micropave Halo Stud Earrings Bridal Jewelry New', 'D Vvs1 1 Ct Solitaire & 0.33Ct Micropave Halo Stud Earrings Bridal Jewelry New', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', 'hidalgo', '149.99', 1800.00, 1, 1, 1, 1, 'by product', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:37'),
(117, 'M0YGNJXQKJ7', 'M-160892265630-WG14K', '1/4 Ct Round Cut 14K White Gold Diamond Stud Earrings', '1/4 Ct Round Cut 14K White Gold Diamond Stud Earrings', 'Fixed/Jewelry/Fashion Jewelry/Earrings', 'hidalgo', '244.00', 732.00, 1, 1, 1, 1, 'by product', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:37'),
(118, 'MZ34K90RK2Q', 'I-V-6-STUD-WSL', 'Men\'S/Women\'S Black & White Natural Diamond White Gold Finish Stud Earrings', 'Men\'S/Women\'S Black & White Natural Diamond White Gold Finish Stud Earrings', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', 'hidalgo', '24.99', 75.00, 1, 1, 1, 1, 'by variation', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:37'),
(119, 'M2JRKY7YDEY', 'C-JSGE311-YSL', '18K Yellow Gold Over Sterling Silver 0.05Ct Natural Diomond Squre Earrings', '18K Yellow Gold Over Sterling Silver 0.05Ct Natural Diomond Squre Earrings', 'Auction/Jewelry/Fine Jewelry/Earrings/Diamond', 'hidalgo', '29.99', 90.00, 1, 1, 1, 1, 'by product', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:37'),
(120, 'MRWGNMYGNE0', 'I-CSRGE1865BL-RSL', '0.05Ct Sterling 18K Rose Gold Over Sterling Black Diamond Stud Earrings $199', '0.05Ct Sterling 18K Rose Gold Over Sterling Black Diamond Stud Earrings $199', 'Auction/Jewelry/Fine Jewelry/Earrings/Diamond', 'hidalgo', '39.99', 120.00, 1, 1, 1, 1, 'by product', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:37'),
(121, 'M4OJNWJXKQ1', 'I-JSRGE1041-RSL-AFSJ', 'Sterling Silver 14K Rose Gold Plated White Diamond Stud Earrings', 'Sterling Silver 14K Rose Gold Plated White Diamond Stud Earrings', 'Auction/Jewelry/Fine Jewelry/Earrings/Diamond', 'hidalgo', '29.99', 90.00, 1, 1, 1, 1, 'by product', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:37'),
(122, 'MR9ZK74QK63', 'C-MSE27-WSL', '10K White Gold Over 3Ct Round Cut D/Vvs1 Stud Earrings', '10K White Gold Over 3Ct Round Cut D/Vvs1 Stud Earrings', 'Auction/Jewelry/Fine Jewelry/Earrings/Diamond', 'hidalgo', '39.99', 120.00, 1, 1, 1, 1, 'by product', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:37'),
(123, 'M56EDGM7D3J', 'C-MSGE200-WSL', '18Kt Gold Plated Sterling Silver 0.02Ct Natural Diomond Stud Earrings Nr', '18Kt Gold Plated Sterling Silver 0.02Ct Natural Diomond Stud Earrings Nr', 'Auction/Jewelry/Fine Jewelry/Earrings/Diamond', 'hidalgo', '29.99', 90.00, 1, 1, 1, 1, 'by product', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:37'),
(124, 'MRM5DEX5KX4', 'C-AR0172-7-YSL', 'Yellow Gold Over Sterling Silver Natural Diamond Round Stud Earrings 483U', 'Yellow Gold Over Sterling Silver Natural Diamond Round Stud Earrings 483U', 'Auction/Jewelry/Fine Jewelry/Earrings/Diamond', 'hidalgo', '29.99', 90.00, 1, 1, 1, 1, 'by product', 1, 1, '', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:37'),
(125, 'ME42DPJJD7W', 'I-CSRGE1866BL-BLACK-RSL', '0.05Ct Sterling Silver 14K Rose Gold Plated Black Diamond Drop Earrings 236Q', '0.05Ct Sterling Silver 14K Rose Gold Plated Black Diamond Drop Earrings 236Q', 'Auction/Jewelry/Fine Jewelry/Earrings/Diamond', 'hidalgo', '39.99', 150.00, 1, 1, 1, 1, 'by product', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:37'),
(126, 'M3GLDRW4NW4', 'M-201336082649-YG14K', '0.8 Ct Rd Solitaire Stud Earrings Martini Style Solid 14K Yellow Gold Screw Back', '0.8 Ct Rd Solitaire Stud Earrings Martini Style Solid 14K Yellow Gold Screw Back', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', 'hidalgo', '77.72', 233.00, 1, 1, 1, 1, 'by product', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:37'),
(127, 'M8GMDQJ5NO1', 'I-CZ-CSE3263-H966516-WG10K', 'New Vvs1 Blue Pretty Earrings 1/4 Carat Tw Round-Cut 10K White Gold Gorgeous', 'New Vvs1 Blue Pretty Earrings 1/4 Carat Tw Round-Cut 10K White Gold Gorgeous', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', 'hidalgo', '174.99', 525.00, 1, 1, 1, 1, 'by product', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:38'),
(128, 'MVY6DVJZDXO', 'I-CME1865BL-RG9K', 'Womens Girls 1/20Ct 9K Rose Gold Real Black Diamond Heart Stud Earrings', 'Womens Girls 1/20Ct 9K Rose Gold Real Black Diamond Heart Stud Earrings', 'Top Selling/Jewelry/Earrings', 'hidalgo', '109.99', 270.00, 1, 1, 1, 1, 'by product', 98, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:38'),
(129, 'M795N6OMDQW', 'I-CZ-CME3091-WG10K', 'D/Vvs1 10K Solid White Gold 1.95Ct Flower Stud Earrings ', 'D/Vvs1 10K Solid White Gold 1.95Ct Flower Stud Earrings ', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', 'hidalgo', '189.99', 570.00, 1, 1, 1, 1, 'by product', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:38'),
(130, 'M0LEKOJ3N4W', 'QH-J09283', 'D/Vvs1 Round Cut In & Out Side Hoop Earrings 1.10Cttw 14K White Gold Finish', 'D/Vvs1 Round Cut In & Out Side Hoop Earrings 1.10Cttw 14K White Gold Finish', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', 'hidalgo', '85.81', 257.00, 1, 1, 1, 1, 'by product', 0, 1, '', '1', '2016-10-10 15:14:41', '2016-11-24 23:19:38'),
(131, 'M1W4N4V6D5P', 'C-JSRGE1039BL-RSL', '14K Rose Gold Finish Silver Black Diamond Stud Earrings', '14K Rose Gold Finish Silver Black Diamond Stud Earrings', 'Auction/Jewelry/Fine Jewelry/Earrings/Diamond', 'hidalgo', '29.99', 90.00, 1, 1, 1, 1, 'by product', 98, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:38'),
(132, 'M71YN565DVQ', 'I-JSE413-WSL', '.925 Sterling Silver 0.14Ct White Diamond Stud Earrings Lowest On Ebay', '.925 Sterling Silver 0.14Ct White Diamond Stud Earrings Lowest On Ebay', 'Auction/Jewelry/Fine Jewelry/Earrings/Diamond', 'hidalgo', '39.99', 120.00, 1, 1, 1, 1, 'by product', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:38'),
(133, 'MLVQD8LZN4E', 'I-CMEI3421-CZ-WG10K', 'Solid 10K White Gold 3.12 ct Princess Cut D/Vvs1 Lever Back Dangle Earrings', 'Solid 10K White Gold 3.12 ct Princess Cut D/Vvs1 Lever Back Dangle Earrings', 'Top Selling/Jewelry/Earrings', 'hidalgo', '199.99', 300.00, 1, 1, 1, 1, 'by product', 97, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:38'),
(134, 'MYOMK1P7NP0', 'I-CSRGE1865BL-RSL-AFSJ', 'Female Girls 1/20Ct 14K Rose Gold Finish Real Black Diamond Heart Stud Earrings', 'Female Girls 1/20Ct 14K Rose Gold Finish Real Black Diamond Heart Stud Earrings', 'Top Selling/Jewelry/Earrings', 'hidalgo', '24.99', 75.00, 1, 1, 1, 1, 'by product', 97, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:38'),
(135, 'M879D2RON12', 'C-CME3293-WG14K', '1.60Ct Hoop Earrings I1/G In & Out Side Diamond White Gold Appraisal 360Â° Video', '1.60Ct Hoop Earrings I1/G In & Out Side Diamond White Gold Appraisal 360Â° Video', 'Top Selling/Jewelry/Earrings', 'hidalgo', '631.99', 1927.00, 1, 1, 1, 1, 'by product', 94, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:38'),
(136, 'MG3PDX95NLX', 'I-CSE1982BL-WSL', '0.68 Ct Black Diamond Round Stud Earrings In Sterling Silver', '0.68 Ct Black Diamond Round Stud Earrings In Sterling Silver', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', 'hidalgo', '161.49', 484.00, 1, 1, 1, 1, 'by product', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:38'),
(137, 'M0YGNJZQDJ7', 'I-JME312-YG10K', 'Mens Ladies 10K Yellow Gold Designer Square Diamond Earrings Studs 0.15 Ct', 'Mens Ladies 10K Yellow Gold Designer Square Diamond Earrings Studs 0.15 Ct', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', 'hidalgo', '139.99', 420.00, 1, 1, 1, 1, 'by product', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:38'),
(138, 'MZ34K9ORN2Q', 'M-201211010007-WG14K', 'White D/VVS1 Halo Solitaire Stud Bridal Earrings Jackets 14K White Gold', 'White D/VVS1 Halo Solitaire Stud Bridal Earrings Jackets 14K White Gold', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', 'hidalgo', '336.29', 958.00, 1, 1, 1, 1, 'by product', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:38'),
(139, 'MRWGNMRGKE0', 'M-171726019512-WG14K', '4 Ct Round Cut Solitaire Stud Earrings In 14K Real White Gold Screw Back', '4 Ct Round Cut Solitaire Stud Earrings In 14K Real White Gold Screw Back', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', 'hidalgo', '93.76', 281.00, 1, 1, 1, 1, 'by product', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:38'),
(140, 'MG3PK3E1KQM', 'I-CSE1986BW-WSL', '0.65 Ct Black & White Diamond Square Stud Earrings In Sterling', '0.65 Ct Black & White Diamond Square Stud Earrings In Sterling', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', 'hidalgo', '199.99', 712.00, 1, 1, 1, 1, 'by product', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:38'),
(141, 'M4OJNW1XDQ1', 'M-251860783457-WG14K', '2.00 Ct Brilliant Round Cut Basket Screwback Earrings Real 14K White Gold', '2.00 Ct Brilliant Round Cut Basket Screwback Earrings Real 14K White Gold', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', 'hidalgo', '132.71', 398.00, 1, 1, 1, 1, 'by product', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:38'),
(142, 'MR9ZK7VQN63', 'I-CSE1964BW-WSL', '1/8 Ct Black & White Diamond Round Stud Earrings In Sterling', '1/8 Ct Black & White Diamond Round Stud Earrings In Sterling', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', 'hidalgo', '94.99', 285.00, 1, 1, 1, 1, 'by product', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:38'),
(143, 'M56EDGY7D3J', 'I-CSE2232BL-WSL', 'White Gold Over Black Diamond Accent Drop/Dangle Earrings', 'White Gold Over Black Diamond Accent Drop/Dangle Earrings', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', 'hidalgo', '28.49', 85.00, 1, 1, 1, 1, 'by product', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:38'),
(144, 'MPVXNZ1ODOM', 'I-CME1979BW-WG10K', '0.30Ct Black & White Diamond Stud Earrings 10K Solid White Gold', '0.30Ct Black & White Diamond Stud Earrings 10K Solid White Gold', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', 'hidalgo', '189.99', 570.00, 1, 1, 1, 1, 'by product', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:38'),
(145, 'MRM5DEY5NX4', 'I-JSE323-CZ-WSL', 'Mens Ladies Diamond White Gold Finish Stud Earrings Designer Square', 'Mens Ladies Diamond White Gold Finish Stud Earrings Designer Square', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', 'hidalgo', '47.49', 142.00, 1, 1, 1, 1, 'by product', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:38'),
(146, 'ME42DP6JK7W', 'I-CSEI3595-WSL-ADJ', 'Solitaire Stud Earrings 2Ct Princess Cut Diamond-Unique Solid Silver', 'Solitaire Stud Earrings 2Ct Princess Cut Diamond-Unique Solid Silver', 'Top Selling/Jewelry/Earrings', 'hidalgo', '36.99', 111.00, 1, 1, 1, 1, 'by product', 95, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:38'),
(147, 'M56EDGYYD3J', 'M-181395207-WGYG-10K', 'Yellow Diamond Earrings 1/4 Ct Round Cut 10K Two Tone Gold', 'Yellow Diamond Earrings 1/4 Ct Round Cut 10K Two Tone Gold', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', 'hidalgo', '248.89', 747.00, 1, 1, 1, 1, 'by product', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:38'),
(148, 'MPVXNZ16DOM', 'M-400653235075-YG10K', 'Mens Ladies 10K Yellow Gold Canary Diamond Kite Pave Shape Stud Earrings 9Mm', 'Mens Ladies 10K Yellow Gold Canary Diamond Kite Pave Shape Stud Earrings 9Mm', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', 'hidalgo', '246.04', 738.00, 1, 1, 1, 1, 'by product', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:38'),
(149, 'MRM5DEY2NX4', 'M-271122570286-WG14K', '0.24 Carat Blue Diamond Stud Earrings 14K White Gold Diamond Earrings', '0.24 Carat Blue Diamond Stud Earrings 14K White Gold Diamond Earrings', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', 'hidalgo', '165.79', 497.00, 1, 1, 1, 1, 'by product', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:38');
INSERT INTO `tb_products` (`PRODUCT_ID`, `UID`, `SKU`, `PRODUCT_NAME`, `PRODUCT_DESCRIPTION`, `CATEGORIES`, `BRAND_NAME`, `PRICE`, `RETAIL_PRICE`, `ALLOW_PURCHASES`, `VISIBLE`, `AVAILABLE`, `ALLOW_AUCTION`, `TRACK_INVENTORY`, `CURRENT_STOCK_LEVEL`, `MIN_STOCK_LEVEL`, `STOCK_LOCATION`, `STOCK_TYPE`, `DATE_ADDED`, `DATE_UPDATED`) VALUES
(150, 'ME42DP6OK7W', 'I-CME3281BU-WG14K', '1 Carat Blue Round Diamond Lever Back Dangling Pair Earrings 14K White Gold', '1 Carat Blue Round Diamond Lever Back Dangling Pair Earrings 14K White Gold', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', 'hidalgo', '378.76', 1136.00, 1, 1, 1, 1, 'by product', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:38'),
(151, 'M3GLDR43DW4', 'M-271675421296-YG14K', '1 Carat Blue Round Diamond Lever Back Dangling Pair Earrings 14K Yellow Gold', '1 Carat Blue Round Diamond Lever Back Dangling Pair Earrings 14K Yellow Gold', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', 'hidalgo', '377.14', 1131.00, 1, 1, 1, 1, 'by product', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:38'),
(152, 'M8GMDQOEKO1', 'M-270955296680-WG14K', '0.40 Carat Total Weight Blue Color Diamond Stud Earrings 14K White Gold Wg Ct', '0.40 Carat Total Weight Blue Color Diamond Stud Earrings 14K White Gold Wg Ct', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', 'hidalgo', '153.61', 461.00, 1, 1, 1, 1, 'by product', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:38'),
(153, 'MVY6DV28DXO', 'M-350897512094-WSL', 'Sterling Silver 1/2Ct Diamond Hoop Earrings', 'Sterling Silver 1/2Ct Diamond Hoop Earrings', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', 'hidalgo', '73.81', 221.00, 1, 1, 1, 1, 'by product', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:38'),
(154, 'M795N6Q8NQW', 'I-MME22-CZ-WG14K', 'New 14Kt White Gold Round Man Made Diamond Stud Earrings 4.00 Ct D/Vvs1', 'New 14Kt White Gold Round Man Made Diamond Stud Earrings 4.00 Ct D/Vvs1', 'Top Selling/Jewelry/Earrings', 'hidalgo', '171.99', 490.00, 1, 1, 1, 1, 'by product', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:38'),
(155, 'M0LEKOVRN4W', 'M-CSE3340BW-WSL', '0.50 Carat Round Cut Black & White Diamond Stud Earrings 14K White Gold Over', '0.50 Carat Round Cut Black & White Diamond Stud Earrings 14K White Gold Over', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', 'hidalgo', '34.50', 104.00, 1, 1, 1, 1, 'by product', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:38'),
(156, 'M1W4N4PQD5P', 'I-CME3341-WG14K', '1/3 Ct Round Cut 14K White Gold Diamond Stud Earrings', '1/3 Ct Round Cut 14K White Gold Diamond Stud Earrings', 'Top Selling/Jewelry/Earrings', 'hidalgo', '124.79', 357.00, 1, 1, 1, 1, 'by product', 99, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:38'),
(157, 'M194DLP5K85', 'I-MME17-WG14K', '1/5 Carat Round Cut Diamond Stud Earrings 14K White Gold Over (I-J,I2-I3)', '1/5 Carat Round Cut Diamond Stud Earrings 14K White Gold Over (I-J,I2-I3)', 'Top Selling/Jewelry/Earrings', 'hidalgo', '399.99', 119.00, 1, 1, 1, 1, 'by product', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:38'),
(158, 'M71YN5R1KVQ', 'I-CME3346-WG10K', '1/4 Carat Round Cut Diamond Dangle Earrings Solid 10K White Gold', '1/4 Carat Round Cut Diamond Dangle Earrings Solid 10K White Gold', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', 'hidalgo', '128.99', 387.00, 1, 1, 1, 1, 'by product', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:38'),
(159, 'MLVQD882D4E', 'I-CME3374-CZ-WG14K', '1.00Carat Round Brilliant Cut Pushback Basket Stud Earrings Solid 14K White Gold', '1.00Carat Round Brilliant Cut Pushback Basket Stud Earrings Solid 14K White Gold', 'Top Selling/Jewelry/Earrings', 'hidalgo', '39.99', 120.00, 1, 1, 1, 1, 'by product', 96, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:38'),
(160, 'M128N072D57', 'I-CME2096-BLMO-1.00-WG14K', '1.00 Carat Round Cut Moissanite Stud Earrings Solid 14K White Gold', '1.00 Carat Round Cut Moissanite Stud Earrings Solid 14K White Gold', 'Fixed/Jewelry/Fine Jewelry/Earrings/Gemstone', 'hidalgo', '149.99', 450.00, 1, 1, 1, 1, 'by product', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:38'),
(161, 'MYOMK1QJDP0', 'M-CSE3345-BW-WSL', '0.25 Carat Round Cut Black & White Diamond Stud Earrings 14K White Gold Over', '0.25 Carat Round Cut Black & White Diamond Stud Earrings 14K White Gold Over', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', 'hidalgo', '29.50', 89.00, 1, 1, 1, 1, 'by product', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:38'),
(162, 'M879D2VMD12', 'I-MME24BU-WG14K', '0.50 Ct Round Cut VVS1 Blue Solitaire Stud Earrings 14K White Gold', '0.50 Ct Round Cut VVS1 Blue Solitaire Stud Earrings 14K White Gold', 'Top Selling/Jewelry/Earrings', 'hidalgo', '119.99', 360.00, 1, 1, 1, 1, 'by product', 98, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:38'),
(163, 'MG3PDXQ6NLX', 'I-CSGE2870BS-YG14K', '1.00Ct Heart Shape Blue Sapphire Studs Earrings 14K Yellow Gold', '1.00Ct Heart Shape Blue Sapphire Studs Earrings 14K Yellow Gold', 'Top Selling/Jewelry/Earrings', 'hidalgo', '97.99', 294.00, 1, 1, 1, 1, 'by product', 99, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:38'),
(164, 'M0YGNJROKJ7', 'M-221535834520-WSL', '2.00 Carat Black & White Diamond Stud Earrings In Sterling Silver', '2.00 Carat Black & White Diamond Stud Earrings In Sterling Silver', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', 'hidalgo', '142.21', 427.00, 1, 1, 1, 1, 'by product', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:39'),
(165, 'M2JRKYV8KEY', 'I-MME22-CZ-YG14K', 'Diamond Stud Earrings 4 Carat Round Man Made D/Vvs1 14K Yellow Gold', 'Diamond Stud Earrings 4 Carat Round Man Made D/Vvs1 14K Yellow Gold', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', 'hidalgo', '451.81', 1355.00, 1, 1, 1, 1, 'by product', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:39'),
(166, 'MRWGNM6MDE0', 'I-CSE1971BW-WG10K', '0.25Ct Black & White Diamond Square Stud Earrings 10K White Gold', '0.25Ct Black & White Diamond Square Stud Earrings 10K White Gold', 'Top Selling/Jewelry/Earrings', 'hidalgo', '173.84', 522.00, 1, 1, 1, 1, 'by product', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:39'),
(167, 'MG3PK365KQM', 'I-CME2870BS-CZ-WG14K', '1.00Ct Heart Shape Created Blue Sapphire Studs Earrings 14K White Gold', '1.00Ct Heart Shape Created Blue Sapphire Studs Earrings 14K White Gold', 'Top Selling/Jewelry/Earrings', 'hidalgo', '93.09', 279.00, 1, 1, 1, 1, 'by product', 97, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:39'),
(168, 'M4OJNWR4DQ1', 'I-JSE245-CZ-WSL', 'Men Ladies Diamond Stud Earring Square Sterling Silver Screw On Back', 'Men Ladies Diamond Stud Earring Square Sterling Silver Screw On Back', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', 'hidalgo', '37.71', 113.00, 1, 1, 1, 1, 'by product', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:39'),
(169, 'MR9ZK754N63', 'I-MME299-WG14k', 'Diamond Stud Earrings 4 Ct Round Man Made D/Vvs1 14K White Gold', 'Diamond Stud Earrings 4 Ct Round Man Made D/Vvs1 14K White Gold', 'Top Selling/Jewelry/Earrings', 'hidalgo', '256.49', 769.00, 1, 1, 1, 1, 'by product', 98, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:39'),
(170, 'M56EDGZYK3J', 'M-181592990932-WSL', '2 Ct Princess Cut Earrings Studs Brilliant Screwback Basket 10K White Gold Over', '2 Ct Princess Cut Earrings Studs Brilliant Screwback Basket 10K White Gold Over', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', 'hidalgo', '56.04', 168.00, 1, 1, 1, 1, 'by product', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:39'),
(171, 'MPVXNZ66NOM', 'I-CSRGE1853-CZ-WSL', 'Pear Stud Earrings Blue Diamond Accent In Sterling Silver', 'Pear Stud Earrings Blue Diamond Accent In Sterling Silver', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', 'hidalgo', '28.49', 85.00, 1, 1, 1, 1, 'by product', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:39'),
(172, 'MRM5DEM2NX4', 'I-JSE299-CZ-WSL', 'Pure Sterling Silver (925) Square Mens Earrings With Screw Backs 8Mm', 'Pure Sterling Silver (925) Square Mens Earrings With Screw Backs 8Mm', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', 'hidalgo', '47.49', 142.00, 1, 1, 1, 1, 'by product', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:39'),
(173, 'ME42DPLON7W', 'I-CSE2234BL-WSL', 'Black Diamond Accent Drop/Dangle Earrings 10K White Gold Over', 'Black Diamond Accent Drop/Dangle Earrings 10K White Gold Over', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', 'hidalgo', '28.49', 85.00, 1, 1, 1, 1, 'by product', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:39'),
(174, 'M3GLDR83KW4', 'M-201211010007-WSL', '925 Silver 2.1Ct Blue Topaz & 1/8Ct Diamond Stud Earrings', '925 Silver 2.1Ct Blue Topaz & 1/8Ct Diamond Stud Earrings', 'Fixed/Jewelry/Fine Jewelry/Earrings/Gemstone', 'hidalgo', '80.46', 241.00, 1, 1, 1, 1, 'by product', 1, 1, '', '0', '2016-10-10 15:14:41', '2016-11-24 23:19:39');

-- --------------------------------------------------------

--
-- Table structure for table `tb_product_attributes`
--

CREATE TABLE `tb_product_attributes` (
  `ATTRIBUTE_ID` int(11) NOT NULL,
  `PRODUCT_ID` int(11) NOT NULL,
  `ATTRIBUTE_NAME` varchar(50) NOT NULL,
  `ATTRIBUTE` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_product_bids`
--

CREATE TABLE `tb_product_bids` (
  `BID_ID` int(11) NOT NULL,
  `PRODUCT_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `BID_AMOUNT` decimal(10,2) NOT NULL,
  `BID_TIME` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `BID_WON` int(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_product_bids`
--

INSERT INTO `tb_product_bids` (`BID_ID`, `PRODUCT_ID`, `USER_ID`, `BID_AMOUNT`, `BID_TIME`, `BID_WON`) VALUES
(17, 1, 5, '61.00', '2017-01-06 20:54:13', 1),
(18, 2, 5, '16.00', '2016-12-21 22:05:59', 1),
(19, 217, 5, '1.00', '2016-12-21 22:08:22', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_product_images`
--

CREATE TABLE `tb_product_images` (
  `IMAGE_ID` int(11) NOT NULL,
  `PRODUCT_ID` int(11) DEFAULT NULL,
  `IMAGE_URL` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_product_video`
--

CREATE TABLE `tb_product_video` (
  `VIDEO_ID` int(11) NOT NULL,
  `PRODUCT_ID` int(11) DEFAULT NULL,
  `VIDEO_URL` varchar(255) DEFAULT NULL,
  `AUTOPLAY` int(1) DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- --------------------------------------------------------

--
-- Table structure for table `tb_users`
--

CREATE TABLE `tb_users` (
  `USER_ID` int(11) NOT NULL,
  `FULL_NAMES` varchar(255) NOT NULL,
  `EMAIL_ADDRESS` varchar(255) NOT NULL,
  `ACCOUNT_TYPE` char(1) DEFAULT 'N' COMMENT 'N Normal User A Admin User',
  `PASSWORD_HASH` varchar(255) NOT NULL,
  `ACCOUNT_ACCESS_TOKEN` varchar(255) DEFAULT NULL,
  `ACCOUNT_AUTH_KEY` varchar(255) DEFAULT '1',
  `PHONE_NO` varchar(30) DEFAULT NULL,
  `TIMEZONE` varchar(10) DEFAULT 'GMT +3',
  `COUNTRY` varchar(15) DEFAULT NULL,
  `SOCIAL_ID` int(11) DEFAULT NULL,
  `STATUS` int(1) DEFAULT '1' COMMENT 'Active or inactive',
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`USER_ID`, `FULL_NAMES`, `EMAIL_ADDRESS`, `ACCOUNT_TYPE`, `PASSWORD_HASH`, `ACCOUNT_ACCESS_TOKEN`, `ACCOUNT_AUTH_KEY`, `PHONE_NO`, `TIMEZONE`, `COUNTRY`, `SOCIAL_ID`, `STATUS`, `DATE_CREATED`, `DATE_UPDATED`) VALUES
(5, 'Sammy Barasa', 'barsamms@gmail.com', 'A', '63aaa47cb0b76f0b157c40cdba9bf78653a7af37', NULL, 'g5BcDmUAkeXf0uQd31E8lHD0SXtZGScK', '254713196504', '43', 'KE', NULL, 1, '2016-11-22 14:29:53', '2016-12-15 13:43:33'),
(6, 'Sammy Barasa', 'barsamms@gmail.coms', 'N', '63aaa47cb0b76f0b157c40cdba9bf78653a7af37', NULL, 'JeDUzV6IyfXktOHTBgq2OPgdNDFcattz', NULL, 'GMT +3', NULL, NULL, 1, '2016-11-22 14:30:36', '2016-11-25 19:41:28'),
(7, 'Norven', 'me.norvenjohnpaul@gmail.com', 'A', '7288edd0fc3ffcbe93a0cf06e3568e28521687bc', NULL, 'ECTkS1Q-xH_m3-T4xOcrSexF8DodwxjI', NULL, 'GMT +3', NULL, NULL, 1, '2016-11-26 05:51:48', '2016-11-26 05:52:29'),
(8, 'Lody Tacastacas', 'lody.tacastacas@pristone.net', 'N', 'aaab8a1f22229bf2bf267b1ea358ee51a3655f36', NULL, 't47XSGdxLId6kFdFH07JZy6PruSFkgdY', NULL, 'GMT +3', NULL, NULL, 1, '2016-11-28 08:09:14', '2016-11-28 08:09:14');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user_address`
--

CREATE TABLE `tb_user_address` (
  `ADDRESS_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `COMPANY` varchar(150) DEFAULT NULL,
  `STREET1` varchar(200) NOT NULL,
  `STREET2` varchar(200) DEFAULT NULL,
  `STREET3` varchar(200) DEFAULT NULL,
  `CITY` varchar(50) NOT NULL,
  `STATE` varchar(50) DEFAULT NULL,
  `POSTALCODE` varchar(50) NOT NULL,
  `COUNTRY` varchar(20) NOT NULL,
  `PHONE` varchar(50) DEFAULT NULL,
  `RESIDENTIAL` int(1) NOT NULL DEFAULT '0',
  `ADDRESS_TYPE` varchar(20) NOT NULL DEFAULT 'BILLING ADDRESS',
  `PRIMARY_ADDRESS` int(1) NOT NULL DEFAULT '0',
  `CREATED` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user_address`
--

INSERT INTO `tb_user_address` (`ADDRESS_ID`, `USER_ID`, `NAME`, `COMPANY`, `STREET1`, `STREET2`, `STREET3`, `CITY`, `STATE`, `POSTALCODE`, `COUNTRY`, `PHONE`, `RESIDENTIAL`, `ADDRESS_TYPE`, `PRIMARY_ADDRESS`, `CREATED`, `UPDATED`) VALUES
(1, 5, 'Sammy B', 'Tsobu Enterprise', 'PO Box 9', '', NULL, 'Thika', 'Thika', '00100', 'KE', '254713196504', 1, 'BILLING ADDRESS', 1, '2016-12-15 10:40:53', '2016-12-15 10:40:53');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user_history`
--

CREATE TABLE `tb_user_history` (
  `HISTORY_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `PRODUCT_ID` int(11) NOT NULL,
  `PRICE_BOUGHT` decimal(2,0) NOT NULL DEFAULT '0',
  `DATE_ADDED` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `ACTION_TYPE` varchar(20) DEFAULT NULL COMMENT 'Bid or direct purchase'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `timezones`
--

CREATE TABLE `timezones` (
  `TIMEZONE_ID` int(11) NOT NULL,
  `COUNTRY_CODE` varchar(255) DEFAULT NULL,
  `TIMEZONE` varchar(30) DEFAULT NULL,
  `GMT_OFFSET` int(5) DEFAULT NULL,
  `DST_OFFSET` int(5) DEFAULT NULL,
  `RAW_OFFSET` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `timezones`
--

INSERT INTO `timezones` (`TIMEZONE_ID`, `COUNTRY_CODE`, `TIMEZONE`, `GMT_OFFSET`, `DST_OFFSET`, `RAW_OFFSET`) VALUES
(1, 'CI', 'Africa/Abidjan', 0, 0, 0),
(2, 'GH', 'Africa/Accra', 0, 0, 0),
(3, 'ET', 'Africa/Addis_Ababa', 3, 3, 3),
(4, 'DZ', 'Africa/Algiers', 1, 1, 1),
(5, 'ER', 'Africa/Asmara', 3, 3, 3),
(6, 'ML', 'Africa/Bamako', 0, 0, 0),
(7, 'CF', 'Africa/Bangui', 1, 1, 1),
(8, 'GM', 'Africa/Banjul', 0, 0, 0),
(9, 'GW', 'Africa/Bissau', 0, 0, 0),
(10, 'MW', 'Africa/Blantyre', 2, 2, 2),
(11, 'CG', 'Africa/Brazzaville', 1, 1, 1),
(12, 'BI', 'Africa/Bujumbura', 2, 2, 2),
(13, 'EG', 'Africa/Cairo', 2, 2, 2),
(14, 'MA', 'Africa/Casablanca', 0, 0, 0),
(15, 'ES', 'Africa/Ceuta', 1, 2, 1),
(16, 'GN', 'Africa/Conakry', 0, 0, 0),
(17, 'SN', 'Africa/Dakar', 0, 0, 0),
(18, 'TZ', 'Africa/Dar_es_Salaam', 3, 3, 3),
(19, 'DJ', 'Africa/Djibouti', 3, 3, 3),
(20, 'CM', 'Africa/Douala', 1, 1, 1),
(21, 'EH', 'Africa/El_Aaiun', 0, 0, 0),
(22, 'SL', 'Africa/Freetown', 0, 0, 0),
(23, 'BW', 'Africa/Gaborone', 2, 2, 2),
(24, 'ZW', 'Africa/Harare', 2, 2, 2),
(25, 'ZA', 'Africa/Johannesburg', 2, 2, 2),
(26, 'SS', 'Africa/Juba', 3, 3, 3),
(27, 'UG', 'Africa/Kampala', 3, 3, 3),
(28, 'SD', 'Africa/Khartoum', 3, 3, 3),
(29, 'RW', 'Africa/Kigali', 2, 2, 2),
(30, 'CD', 'Africa/Kinshasa', 1, 1, 1),
(31, 'NG', 'Africa/Lagos', 1, 1, 1),
(32, 'GA', 'Africa/Libreville', 1, 1, 1),
(33, 'TG', 'Africa/Lome', 0, 0, 0),
(34, 'AO', 'Africa/Luanda', 1, 1, 1),
(35, 'CD', 'Africa/Lubumbashi', 2, 2, 2),
(36, 'ZM', 'Africa/Lusaka', 2, 2, 2),
(37, 'GQ', 'Africa/Malabo', 1, 1, 1),
(38, 'MZ', 'Africa/Maputo', 2, 2, 2),
(39, 'LS', 'Africa/Maseru', 2, 2, 2),
(40, 'SZ', 'Africa/Mbabane', 2, 2, 2),
(41, 'SO', 'Africa/Mogadishu', 3, 3, 3),
(42, 'LR', 'Africa/Monrovia', 0, 0, 0),
(43, 'KE', 'Africa/Nairobi', 3, 3, 3),
(44, 'TD', 'Africa/Ndjamena', 1, 1, 1),
(45, 'NE', 'Africa/Niamey', 1, 1, 1),
(46, 'MR', 'Africa/Nouakchott', 0, 0, 0),
(47, 'BF', 'Africa/Ouagadougou', 0, 0, 0),
(48, 'BJ', 'Africa/Porto-Novo', 1, 1, 1),
(49, 'ST', 'Africa/Sao_Tome', 0, 0, 0),
(50, 'LY', 'Africa/Tripoli', 2, 2, 2),
(51, 'TN', 'Africa/Tunis', 1, 1, 1),
(52, 'NA', 'Africa/Windhoek', 2, 1, 1),
(53, 'US', 'America/Adak', -10, -9, -10),
(54, 'US', 'America/Anchorage', -9, -8, -9),
(55, 'AI', 'America/Anguilla', -4, -4, -4),
(56, 'AG', 'America/Antigua', -4, -4, -4),
(57, 'BR', 'America/Araguaina', -3, -3, -3),
(58, 'AR', 'America/Argentina/Buenos_Aires', -3, -3, -3),
(59, 'AR', 'America/Argentina/Catamarca', -3, -3, -3),
(60, 'AR', 'America/Argentina/Cordoba', -3, -3, -3),
(61, 'AR', 'America/Argentina/Jujuy', -3, -3, -3),
(62, 'AR', 'America/Argentina/La_Rioja', -3, -3, -3),
(63, 'AR', 'America/Argentina/Mendoza', -3, -3, -3),
(64, 'AR', 'America/Argentina/Rio_Gallegos', -3, -3, -3),
(65, 'AR', 'America/Argentina/Salta', -3, -3, -3),
(66, 'AR', 'America/Argentina/San_Juan', -3, -3, -3),
(67, 'AR', 'America/Argentina/San_Luis', -3, -3, -3),
(68, 'AR', 'America/Argentina/Tucuman', -3, -3, -3),
(69, 'AR', 'America/Argentina/Ushuaia', -3, -3, -3),
(70, 'AW', 'America/Aruba', -4, -4, -4),
(71, 'PY', 'America/Asuncion', -3, -4, -4),
(72, 'CA', 'America/Atikokan', -5, -5, -5),
(73, 'BR', 'America/Bahia', -3, -3, -3),
(74, 'MX', 'America/Bahia_Banderas', -6, -5, -6),
(75, 'BB', 'America/Barbados', -4, -4, -4),
(76, 'BR', 'America/Belem', -3, -3, -3),
(77, 'BZ', 'America/Belize', -6, -6, -6),
(78, 'CA', 'America/Blanc-Sablon', -4, -4, -4),
(79, 'BR', 'America/Boa_Vista', -4, -4, -4),
(80, 'CO', 'America/Bogota', -5, -5, -5),
(81, 'US', 'America/Boise', -7, -6, -7),
(82, 'CA', 'America/Cambridge_Bay', -7, -6, -7),
(83, 'BR', 'America/Campo_Grande', -3, -4, -4),
(84, 'MX', 'America/Cancun', -5, -5, -5),
(85, 'VE', 'America/Caracas', -5, -4, -4),
(86, 'GF', 'America/Cayenne', -3, -3, -3),
(87, 'KY', 'America/Cayman', -5, -5, -5),
(88, 'US', 'America/Chicago', -6, -5, -6),
(89, 'MX', 'America/Chihuahua', -7, -6, -7),
(90, 'CR', 'America/Costa_Rica', -6, -6, -6),
(91, 'CA', 'America/Creston', -7, -7, -7),
(92, 'BR', 'America/Cuiaba', -3, -4, -4),
(93, 'CW', 'America/Curacao', -4, -4, -4),
(94, 'GL', 'America/Danmarkshavn', 0, 0, 0),
(95, 'CA', 'America/Dawson', -8, -7, -8),
(96, 'CA', 'America/Dawson_Creek', -7, -7, -7),
(97, 'US', 'America/Denver', -7, -6, -7),
(98, 'US', 'America/Detroit', -5, -4, -5),
(99, 'DM', 'America/Dominica', -4, -4, -4),
(100, 'CA', 'America/Edmonton', -7, -6, -7),
(101, 'BR', 'America/Eirunepe', -5, -5, -5),
(102, 'SV', 'America/El_Salvador', -6, -6, -6),
(103, 'CA', 'America/Fort_Nelson', -7, -7, -7),
(104, 'BR', 'America/Fortaleza', -3, -3, -3),
(105, 'CA', 'America/Glace_Bay', -4, -3, -4),
(106, 'GL', 'America/Godthab', -3, -2, -3),
(107, 'CA', 'America/Goose_Bay', -4, -3, -4),
(108, 'TC', 'America/Grand_Turk', -4, -4, -4),
(109, 'GD', 'America/Grenada', -4, -4, -4),
(110, 'GP', 'America/Guadeloupe', -4, -4, -4),
(111, 'GT', 'America/Guatemala', -6, -6, -6),
(112, 'EC', 'America/Guayaquil', -5, -5, -5),
(113, 'GY', 'America/Guyana', -4, -4, -4),
(114, 'CA', 'America/Halifax', -4, -3, -4),
(115, 'CU', 'America/Havana', -5, -4, -5),
(116, 'MX', 'America/Hermosillo', -7, -7, -7),
(117, 'US', 'America/Indiana/Indianapolis', -5, -4, -5),
(118, 'US', 'America/Indiana/Knox', -6, -5, -6),
(119, 'US', 'America/Indiana/Marengo', -5, -4, -5),
(120, 'US', 'America/Indiana/Petersburg', -5, -4, -5),
(121, 'US', 'America/Indiana/Tell_City', -6, -5, -6),
(122, 'US', 'America/Indiana/Vevay', -5, -4, -5),
(123, 'US', 'America/Indiana/Vincennes', -5, -4, -5),
(124, 'US', 'America/Indiana/Winamac', -5, -4, -5),
(125, 'CA', 'America/Inuvik', -7, -6, -7),
(126, 'CA', 'America/Iqaluit', -5, -4, -5),
(127, 'JM', 'America/Jamaica', -5, -5, -5),
(128, 'US', 'America/Juneau', -9, -8, -9),
(129, 'US', 'America/Kentucky/Louisville', -5, -4, -5),
(130, 'US', 'America/Kentucky/Monticello', -5, -4, -5),
(131, 'BQ', 'America/Kralendijk', -4, -4, -4),
(132, 'BO', 'America/La_Paz', -4, -4, -4),
(133, 'PE', 'America/Lima', -5, -5, -5),
(134, 'US', 'America/Los_Angeles', -8, -7, -8),
(135, 'SX', 'America/Lower_Princes', -4, -4, -4),
(136, 'BR', 'America/Maceio', -3, -3, -3),
(137, 'NI', 'America/Managua', -6, -6, -6),
(138, 'BR', 'America/Manaus', -4, -4, -4),
(139, 'MF', 'America/Marigot', -4, -4, -4),
(140, 'MQ', 'America/Martinique', -4, -4, -4),
(141, 'MX', 'America/Matamoros', -6, -5, -6),
(142, 'MX', 'America/Mazatlan', -7, -6, -7),
(143, 'US', 'America/Menominee', -6, -5, -6),
(144, 'MX', 'America/Merida', -6, -5, -6),
(145, 'US', 'America/Metlakatla', -9, -8, -9),
(146, 'MX', 'America/Mexico_City', -6, -5, -6),
(147, 'PM', 'America/Miquelon', -3, -2, -3),
(148, 'CA', 'America/Moncton', -4, -3, -4),
(149, 'MX', 'America/Monterrey', -6, -5, -6),
(150, 'UY', 'America/Montevideo', -3, -3, -3),
(151, 'MS', 'America/Montserrat', -4, -4, -4),
(152, 'BS', 'America/Nassau', -5, -4, -5),
(153, 'US', 'America/New_York', -5, -4, -5),
(154, 'CA', 'America/Nipigon', -5, -4, -5),
(155, 'US', 'America/Nome', -9, -8, -9),
(156, 'BR', 'America/Noronha', -2, -2, -2),
(157, 'US', 'America/North_Dakota/Beulah', -6, -5, -6),
(158, 'US', 'America/North_Dakota/Center', -6, -5, -6),
(159, 'US', 'America/North_Dakota/New_Salem', -6, -5, -6),
(160, 'MX', 'America/Ojinaga', -7, -6, -7),
(161, 'PA', 'America/Panama', -5, -5, -5),
(162, 'CA', 'America/Pangnirtung', -5, -4, -5),
(163, 'SR', 'America/Paramaribo', -3, -3, -3),
(164, 'US', 'America/Phoenix', -7, -7, -7),
(165, 'HT', 'America/Port-au-Prince', -5, -5, -5),
(166, 'TT', 'America/Port_of_Spain', -4, -4, -4),
(167, 'BR', 'America/Porto_Velho', -4, -4, -4),
(168, 'PR', 'America/Puerto_Rico', -4, -4, -4),
(169, 'CA', 'America/Rainy_River', -6, -5, -6),
(170, 'CA', 'America/Rankin_Inlet', -6, -5, -6),
(171, 'BR', 'America/Recife', -3, -3, -3),
(172, 'CA', 'America/Regina', -6, -6, -6),
(173, 'CA', 'America/Resolute', -6, -5, -6),
(174, 'BR', 'America/Rio_Branco', -5, -5, -5),
(175, 'BR', 'America/Santarem', -3, -3, -3),
(176, 'CL', 'America/Santiago', -3, -4, -4),
(177, 'DO', 'America/Santo_Domingo', -4, -4, -4),
(178, 'BR', 'America/Sao_Paulo', -2, -3, -3),
(179, 'GL', 'America/Scoresbysund', -1, 0, -1),
(180, 'US', 'America/Sitka', -9, -8, -9),
(181, 'BL', 'America/St_Barthelemy', -4, -4, -4),
(182, 'CA', 'America/St_Johns', -4, -3, -4),
(183, 'KN', 'America/St_Kitts', -4, -4, -4),
(184, 'LC', 'America/St_Lucia', -4, -4, -4),
(185, 'VI', 'America/St_Thomas', -4, -4, -4),
(186, 'VC', 'America/St_Vincent', -4, -4, -4),
(187, 'CA', 'America/Swift_Current', -6, -6, -6),
(188, 'HN', 'America/Tegucigalpa', -6, -6, -6),
(189, 'GL', 'America/Thule', -4, -3, -4),
(190, 'CA', 'America/Thunder_Bay', -5, -4, -5),
(191, 'MX', 'America/Tijuana', -8, -7, -8),
(192, 'CA', 'America/Toronto', -5, -4, -5),
(193, 'VG', 'America/Tortola', -4, -4, -4),
(194, 'CA', 'America/Vancouver', -8, -7, -8),
(195, 'CA', 'America/Whitehorse', -8, -7, -8),
(196, 'CA', 'America/Winnipeg', -6, -5, -6),
(197, 'US', 'America/Yakutat', -9, -8, -9),
(198, 'CA', 'America/Yellowknife', -7, -6, -7),
(199, 'AQ', 'Antarctica/Casey', 8, 8, 8),
(200, 'AQ', 'Antarctica/Davis', 7, 7, 7),
(201, 'AQ', 'Antarctica/DumontDUrville', 10, 10, 10),
(202, 'AU', 'Antarctica/Macquarie', 11, 11, 11),
(203, 'AQ', 'Antarctica/Mawson', 5, 5, 5),
(204, 'AQ', 'Antarctica/McMurdo', 13, 12, 12),
(205, 'AQ', 'Antarctica/Palmer', -3, -4, -4),
(206, 'AQ', 'Antarctica/Rothera', -3, -3, -3),
(207, 'AQ', 'Antarctica/Syowa', 3, 3, 3),
(208, 'AQ', 'Antarctica/Troll', 0, 2, 0),
(209, 'AQ', 'Antarctica/Vostok', 6, 6, 6),
(210, 'SJ', 'Arctic/Longyearbyen', 1, 2, 1),
(211, 'YE', 'Asia/Aden', 3, 3, 3),
(212, 'KZ', 'Asia/Almaty', 6, 6, 6),
(213, 'JO', 'Asia/Amman', 2, 3, 2),
(214, 'RU', 'Asia/Anadyr', 12, 12, 12),
(215, 'KZ', 'Asia/Aqtau', 5, 5, 5),
(216, 'KZ', 'Asia/Aqtobe', 5, 5, 5),
(217, 'TM', 'Asia/Ashgabat', 5, 5, 5),
(218, 'IQ', 'Asia/Baghdad', 3, 3, 3),
(219, 'BH', 'Asia/Bahrain', 3, 3, 3),
(220, 'AZ', 'Asia/Baku', 4, 4, 4),
(221, 'TH', 'Asia/Bangkok', 7, 7, 7),
(222, 'RU', 'Asia/Barnaul', 6, 7, 7),
(223, 'LB', 'Asia/Beirut', 2, 3, 2),
(224, 'KG', 'Asia/Bishkek', 6, 6, 6),
(225, 'BN', 'Asia/Brunei', 8, 8, 8),
(226, 'RU', 'Asia/Chita', 8, 9, 9),
(227, 'MN', 'Asia/Choibalsan', 8, 9, 8),
(228, 'LK', 'Asia/Colombo', 6, 6, 6),
(229, 'SY', 'Asia/Damascus', 2, 3, 2),
(230, 'BD', 'Asia/Dhaka', 6, 6, 6),
(231, 'TL', 'Asia/Dili', 9, 9, 9),
(232, 'AE', 'Asia/Dubai', 4, 4, 4),
(233, 'TJ', 'Asia/Dushanbe', 5, 5, 5),
(234, 'PS', 'Asia/Gaza', 2, 3, 2),
(235, 'PS', 'Asia/Hebron', 2, 3, 2),
(236, 'VN', 'Asia/Ho_Chi_Minh', 7, 7, 7),
(237, 'HK', 'Asia/Hong_Kong', 8, 8, 8),
(238, 'MN', 'Asia/Hovd', 7, 8, 7),
(239, 'RU', 'Asia/Irkutsk', 8, 8, 8),
(240, 'ID', 'Asia/Jakarta', 7, 7, 7),
(241, 'ID', 'Asia/Jayapura', 9, 9, 9),
(242, 'IL', 'Asia/Jerusalem', 2, 3, 2),
(243, 'AF', 'Asia/Kabul', 5, 5, 5),
(244, 'RU', 'Asia/Kamchatka', 12, 12, 12),
(245, 'PK', 'Asia/Karachi', 5, 5, 5),
(246, 'NP', 'Asia/Kathmandu', 6, 6, 6),
(247, 'RU', 'Asia/Khandyga', 9, 9, 9),
(248, 'IN', 'Asia/Kolkata', 6, 6, 6),
(249, 'RU', 'Asia/Krasnoyarsk', 7, 7, 7),
(250, 'MY', 'Asia/Kuala_Lumpur', 8, 8, 8),
(251, 'MY', 'Asia/Kuching', 8, 8, 8),
(252, 'KW', 'Asia/Kuwait', 3, 3, 3),
(253, 'MO', 'Asia/Macau', 8, 8, 8),
(254, 'RU', 'Asia/Magadan', 10, 11, 11),
(255, 'ID', 'Asia/Makassar', 8, 8, 8),
(256, 'PH', 'Asia/Manila', 8, 8, 8),
(257, 'OM', 'Asia/Muscat', 4, 4, 4),
(258, 'CY', 'Asia/Nicosia', 2, 3, 2),
(259, 'RU', 'Asia/Novokuznetsk', 7, 7, 7),
(260, 'RU', 'Asia/Novosibirsk', 6, 6, 7),
(261, 'RU', 'Asia/Omsk', 6, 6, 6),
(262, 'KZ', 'Asia/Oral', 5, 5, 5),
(263, 'KH', 'Asia/Phnom_Penh', 7, 7, 7),
(264, 'ID', 'Asia/Pontianak', 7, 7, 7),
(265, 'KP', 'Asia/Pyongyang', 9, 9, 9),
(266, 'QA', 'Asia/Qatar', 3, 3, 3),
(267, 'KZ', 'Asia/Qyzylorda', 6, 6, 6),
(268, 'MM', 'Asia/Rangoon', 7, 7, 7),
(269, 'SA', 'Asia/Riyadh', 3, 3, 3),
(270, 'RU', 'Asia/Sakhalin', 10, 11, 11),
(271, 'UZ', 'Asia/Samarkand', 5, 5, 5),
(272, 'KR', 'Asia/Seoul', 9, 9, 9),
(273, 'CN', 'Asia/Shanghai', 8, 8, 8),
(274, 'SG', 'Asia/Singapore', 8, 8, 8),
(275, 'RU', 'Asia/Srednekolymsk', 11, 11, 11),
(276, 'TW', 'Asia/Taipei', 8, 8, 8),
(277, 'UZ', 'Asia/Tashkent', 5, 5, 5),
(278, 'GE', 'Asia/Tbilisi', 4, 4, 4),
(279, 'IR', 'Asia/Tehran', 4, 5, 4),
(280, 'BT', 'Asia/Thimphu', 6, 6, 6),
(281, 'JP', 'Asia/Tokyo', 9, 9, 9),
(282, 'RU', 'Asia/Tomsk', 6, 7, 7),
(283, 'MN', 'Asia/Ulaanbaatar', 8, 9, 8),
(284, 'CN', 'Asia/Urumqi', 6, 6, 6),
(285, 'RU', 'Asia/Ust-Nera', 10, 10, 10),
(286, 'LA', 'Asia/Vientiane', 7, 7, 7),
(287, 'RU', 'Asia/Vladivostok', 10, 10, 10),
(288, 'RU', 'Asia/Yakutsk', 9, 9, 9),
(289, 'RU', 'Asia/Yekaterinburg', 5, 5, 5),
(290, 'AM', 'Asia/Yerevan', 4, 4, 4),
(291, 'PT', 'Atlantic/Azores', -1, 0, -1),
(292, 'BM', 'Atlantic/Bermuda', -4, -3, -4),
(293, 'ES', 'Atlantic/Canary', 0, 1, 0),
(294, 'CV', 'Atlantic/Cape_Verde', -1, -1, -1),
(295, 'FO', 'Atlantic/Faroe', 0, 1, 0),
(296, 'PT', 'Atlantic/Madeira', 0, 1, 0),
(297, 'IS', 'Atlantic/Reykjavik', 0, 0, 0),
(298, 'GS', 'Atlantic/South_Georgia', -2, -2, -2),
(299, 'SH', 'Atlantic/St_Helena', 0, 0, 0),
(300, 'FK', 'Atlantic/Stanley', -3, -3, -3),
(301, 'AU', 'Australia/Adelaide', 11, 10, 10),
(302, 'AU', 'Australia/Brisbane', 10, 10, 10),
(303, 'AU', 'Australia/Broken_Hill', 11, 10, 10),
(304, 'AU', 'Australia/Currie', 11, 10, 10),
(305, 'AU', 'Australia/Darwin', 10, 10, 10),
(306, 'AU', 'Australia/Eucla', 9, 9, 9),
(307, 'AU', 'Australia/Hobart', 11, 10, 10),
(308, 'AU', 'Australia/Lindeman', 10, 10, 10),
(309, 'AU', 'Australia/Lord_Howe', 11, 11, 11),
(310, 'AU', 'Australia/Melbourne', 11, 10, 10),
(311, 'AU', 'Australia/Perth', 8, 8, 8),
(312, 'AU', 'Australia/Sydney', 11, 10, 10),
(313, 'NL', 'Europe/Amsterdam', 1, 2, 1),
(314, 'AD', 'Europe/Andorra', 1, 2, 1),
(315, 'RU', 'Europe/Astrakhan', 3, 4, 4),
(316, 'GR', 'Europe/Athens', 2, 3, 2),
(317, 'RS', 'Europe/Belgrade', 1, 2, 1),
(318, 'DE', 'Europe/Berlin', 1, 2, 1),
(319, 'SK', 'Europe/Bratislava', 1, 2, 1),
(320, 'BE', 'Europe/Brussels', 1, 2, 1),
(321, 'RO', 'Europe/Bucharest', 2, 3, 2),
(322, 'HU', 'Europe/Budapest', 1, 2, 1),
(323, 'DE', 'Europe/Busingen', 1, 2, 1),
(324, 'MD', 'Europe/Chisinau', 2, 3, 2),
(325, 'DK', 'Europe/Copenhagen', 1, 2, 1),
(326, 'IE', 'Europe/Dublin', 0, 1, 0),
(327, 'GI', 'Europe/Gibraltar', 1, 2, 1),
(328, 'GG', 'Europe/Guernsey', 0, 1, 0),
(329, 'FI', 'Europe/Helsinki', 2, 3, 2),
(330, 'IM', 'Europe/Isle_of_Man', 0, 1, 0),
(331, 'TR', 'Europe/Istanbul', 2, 3, 3),
(332, 'JE', 'Europe/Jersey', 0, 1, 0),
(333, 'RU', 'Europe/Kaliningrad', 2, 2, 2),
(334, 'UA', 'Europe/Kiev', 2, 3, 2),
(335, 'RU', 'Europe/Kirov', 3, 3, 3),
(336, 'PT', 'Europe/Lisbon', 0, 1, 0),
(337, 'SI', 'Europe/Ljubljana', 1, 2, 1),
(338, 'GB', 'Europe/London', 0, 1, 0),
(339, 'LU', 'Europe/Luxembourg', 1, 2, 1),
(340, 'ES', 'Europe/Madrid', 1, 2, 1),
(341, 'MT', 'Europe/Malta', 1, 2, 1),
(342, 'AX', 'Europe/Mariehamn', 2, 3, 2),
(343, 'BY', 'Europe/Minsk', 3, 3, 3),
(344, 'MC', 'Europe/Monaco', 1, 2, 1),
(345, 'RU', 'Europe/Moscow', 3, 3, 3),
(346, 'NO', 'Europe/Oslo', 1, 2, 1),
(347, 'FR', 'Europe/Paris', 1, 2, 1),
(348, 'ME', 'Europe/Podgorica', 1, 2, 1),
(349, 'CZ', 'Europe/Prague', 1, 2, 1),
(350, 'LV', 'Europe/Riga', 2, 3, 2),
(351, 'IT', 'Europe/Rome', 1, 2, 1),
(352, 'RU', 'Europe/Samara', 4, 4, 4),
(353, 'SM', 'Europe/San_Marino', 1, 2, 1),
(354, 'BA', 'Europe/Sarajevo', 1, 2, 1),
(355, 'RU', 'Europe/Simferopol', 3, 3, 3),
(356, 'MK', 'Europe/Skopje', 1, 2, 1),
(357, 'BG', 'Europe/Sofia', 2, 3, 2),
(358, 'SE', 'Europe/Stockholm', 1, 2, 1),
(359, 'EE', 'Europe/Tallinn', 2, 3, 2),
(360, 'AL', 'Europe/Tirane', 1, 2, 1),
(361, 'RU', 'Europe/Ulyanovsk', 3, 4, 4),
(362, 'UA', 'Europe/Uzhgorod', 2, 3, 2),
(363, 'LI', 'Europe/Vaduz', 1, 2, 1),
(364, 'VA', 'Europe/Vatican', 1, 2, 1),
(365, 'AT', 'Europe/Vienna', 1, 2, 1),
(366, 'LT', 'Europe/Vilnius', 2, 3, 2),
(367, 'RU', 'Europe/Volgograd', 3, 3, 3),
(368, 'PL', 'Europe/Warsaw', 1, 2, 1),
(369, 'HR', 'Europe/Zagreb', 1, 2, 1),
(370, 'UA', 'Europe/Zaporozhye', 2, 3, 2),
(371, 'CH', 'Europe/Zurich', 1, 2, 1),
(372, 'MG', 'Indian/Antananarivo', 3, 3, 3),
(373, 'IO', 'Indian/Chagos', 6, 6, 6),
(374, 'CX', 'Indian/Christmas', 7, 7, 7),
(375, 'CC', 'Indian/Cocos', 7, 7, 7),
(376, 'KM', 'Indian/Comoro', 3, 3, 3),
(377, 'TF', 'Indian/Kerguelen', 5, 5, 5),
(378, 'SC', 'Indian/Mahe', 4, 4, 4),
(379, 'MV', 'Indian/Maldives', 5, 5, 5),
(380, 'MU', 'Indian/Mauritius', 4, 4, 4),
(381, 'YT', 'Indian/Mayotte', 3, 3, 3),
(382, 'RE', 'Indian/Reunion', 4, 4, 4),
(383, 'WS', 'Pacific/Apia', 14, 13, 13),
(384, 'NZ', 'Pacific/Auckland', 13, 12, 12),
(385, 'PG', 'Pacific/Bougainville', 11, 11, 11),
(386, 'NZ', 'Pacific/Chatham', 14, 13, 13),
(387, 'FM', 'Pacific/Chuuk', 10, 10, 10),
(388, 'CL', 'Pacific/Easter', -5, -6, -6),
(389, 'VU', 'Pacific/Efate', 11, 11, 11),
(390, 'KI', 'Pacific/Enderbury', 13, 13, 13),
(391, 'TK', 'Pacific/Fakaofo', 13, 13, 13),
(392, 'FJ', 'Pacific/Fiji', 13, 12, 12),
(393, 'TV', 'Pacific/Funafuti', 12, 12, 12),
(394, 'EC', 'Pacific/Galapagos', -6, -6, -6),
(395, 'PF', 'Pacific/Gambier', -9, -9, -9),
(396, 'SB', 'Pacific/Guadalcanal', 11, 11, 11),
(397, 'GU', 'Pacific/Guam', 10, 10, 10),
(398, 'US', 'Pacific/Honolulu', -10, -10, -10),
(399, 'UM', 'Pacific/Johnston', -10, -10, -10),
(400, 'KI', 'Pacific/Kiritimati', 14, 14, 14),
(401, 'FM', 'Pacific/Kosrae', 11, 11, 11),
(402, 'MH', 'Pacific/Kwajalein', 12, 12, 12),
(403, 'MH', 'Pacific/Majuro', 12, 12, 12),
(404, 'PF', 'Pacific/Marquesas', -10, -10, -10),
(405, 'UM', 'Pacific/Midway', -11, -11, -11),
(406, 'NR', 'Pacific/Nauru', 12, 12, 12),
(407, 'NU', 'Pacific/Niue', -11, -11, -11),
(408, 'NF', 'Pacific/Norfolk', 11, 11, 11),
(409, 'NC', 'Pacific/Noumea', 11, 11, 11),
(410, 'AS', 'Pacific/Pago_Pago', -11, -11, -11),
(411, 'PW', 'Pacific/Palau', 9, 9, 9),
(412, 'PN', 'Pacific/Pitcairn', -8, -8, -8),
(413, 'FM', 'Pacific/Pohnpei', 11, 11, 11),
(414, 'PG', 'Pacific/Port_Moresby', 10, 10, 10),
(415, 'CK', 'Pacific/Rarotonga', -10, -10, -10),
(416, 'MP', 'Pacific/Saipan', 10, 10, 10),
(417, 'PF', 'Pacific/Tahiti', -10, -10, -10),
(418, 'KI', 'Pacific/Tarawa', 12, 12, 12),
(419, 'TO', 'Pacific/Tongatapu', 13, 13, 13),
(420, 'UM', 'Pacific/Wake', 12, 12, 12),
(421, 'WF', 'Pacific/Wallis', 12, 12, 12);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`COUNTRY_ID`),
  ADD KEY `Code` (`COUNTRY_CODE`);

--
-- Indexes for table `fry_products`
--
ALTER TABLE `fry_products`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`orderId`);

--
-- Indexes for table `paypal_transactions`
--
ALTER TABLE `paypal_transactions`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `FK_USER_ID` (`USER_ID`);

--
-- Indexes for table `shipping_service`
--
ALTER TABLE `shipping_service`
  ADD PRIMARY KEY (`SERVICE_ID`),
  ADD KEY `FK_PAYMENT_HASH` (`PAYPAL_TRANS_ID`);

--
-- Indexes for table `tb_bid_activity`
--
ALTER TABLE `tb_bid_activity`
  ADD PRIMARY KEY (`ACTIVITY_ID`),
  ADD UNIQUE KEY `PRODUCT_SKU` (`PRODUCT_SKU`),
  ADD KEY `PRODUCT_ID` (`PRODUCT_ID`),
  ADD KEY `LAST_BIDDING_USER` (`LAST_BIDDING_USER_ID`);

--
-- Indexes for table `tb_bid_settings`
--
ALTER TABLE `tb_bid_settings`
  ADD PRIMARY KEY (`SETTING_ID`);

--
-- Indexes for table `tb_categories`
--
ALTER TABLE `tb_categories`
  ADD PRIMARY KEY (`CATEGORY_ID`),
  ADD KEY `tb_categories_CATEGORY_ID_index` (`CATEGORY_ID`);

--
-- Indexes for table `tb_hash_table`
--
ALTER TABLE `tb_hash_table`
  ADD PRIMARY KEY (`SALT_ID`),
  ADD KEY `USER_ID` (`USER_ID`) USING BTREE;

--
-- Indexes for table `tb_items_cart`
--
ALTER TABLE `tb_items_cart`
  ADD PRIMARY KEY (`CART_ID`),
  ADD KEY `USER_ID` (`USER_ID`),
  ADD KEY `PRODUCT_ID` (`PRODUCT_ID`);

--
-- Indexes for table `tb_items_wishlist`
--
ALTER TABLE `tb_items_wishlist`
  ADD PRIMARY KEY (`WISHLIST_ID`),
  ADD KEY `USER_ID` (`USER_ID`),
  ADD KEY `PRODUCT_ID` (`PRODUCT_ID`);

--
-- Indexes for table `tb_products`
--
ALTER TABLE `tb_products`
  ADD PRIMARY KEY (`PRODUCT_ID`),
  ADD UNIQUE KEY `tb_products_PRODUCT_ID_uindex` (`PRODUCT_ID`),
  ADD KEY `SKU` (`SKU`);

--
-- Indexes for table `tb_product_attributes`
--
ALTER TABLE `tb_product_attributes`
  ADD PRIMARY KEY (`ATTRIBUTE_ID`),
  ADD KEY `PRODUCT_ID` (`PRODUCT_ID`);

--
-- Indexes for table `tb_product_bids`
--
ALTER TABLE `tb_product_bids`
  ADD PRIMARY KEY (`BID_ID`),
  ADD KEY `PRODUCT_ID` (`PRODUCT_ID`),
  ADD KEY `USER_ID` (`USER_ID`);

--
-- Indexes for table `tb_product_images`
--
ALTER TABLE `tb_product_images`
  ADD PRIMARY KEY (`IMAGE_ID`),
  ADD KEY `PRODUCT_ID` (`PRODUCT_ID`);

--
-- Indexes for table `tb_product_video`
--
ALTER TABLE `tb_product_video`
  ADD PRIMARY KEY (`VIDEO_ID`),
  ADD KEY `PRODUCT_ID` (`PRODUCT_ID`);

--
-- Indexes for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`USER_ID`);

--
-- Indexes for table `tb_user_address`
--
ALTER TABLE `tb_user_address`
  ADD PRIMARY KEY (`ADDRESS_ID`),
  ADD KEY `FK_USER_ADDRESS_ID` (`USER_ID`);

--
-- Indexes for table `tb_user_history`
--
ALTER TABLE `tb_user_history`
  ADD PRIMARY KEY (`HISTORY_ID`),
  ADD KEY `tb_user_history_ibfk_1` (`USER_ID`),
  ADD KEY `tb_user_history_ibfk_2` (`PRODUCT_ID`);

--
-- Indexes for table `timezones`
--
ALTER TABLE `timezones`
  ADD PRIMARY KEY (`TIMEZONE_ID`),
  ADD KEY `GMT_OFFSET` (`GMT_OFFSET`,`DST_OFFSET`,`RAW_OFFSET`),
  ADD KEY `COUNTRY_CODE` (`COUNTRY_CODE`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `COUNTRY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;
--
-- AUTO_INCREMENT for table `fry_products`
--
ALTER TABLE `fry_products`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=276;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18315603;
--
-- AUTO_INCREMENT for table `paypal_transactions`
--
ALTER TABLE `paypal_transactions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `shipping_service`
--
ALTER TABLE `shipping_service`
  MODIFY `SERVICE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tb_bid_activity`
--
ALTER TABLE `tb_bid_activity`
  MODIFY `ACTIVITY_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_bid_settings`
--
ALTER TABLE `tb_bid_settings`
  MODIFY `SETTING_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_categories`
--
ALTER TABLE `tb_categories`
  MODIFY `CATEGORY_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_hash_table`
--
ALTER TABLE `tb_hash_table`
  MODIFY `SALT_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_items_cart`
--
ALTER TABLE `tb_items_cart`
  MODIFY `CART_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;
--
-- AUTO_INCREMENT for table `tb_items_wishlist`
--
ALTER TABLE `tb_items_wishlist`
  MODIFY `WISHLIST_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_products`
--
ALTER TABLE `tb_products`
  MODIFY `PRODUCT_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Product Id', AUTO_INCREMENT=175;
--
-- AUTO_INCREMENT for table `tb_product_attributes`
--
ALTER TABLE `tb_product_attributes`
  MODIFY `ATTRIBUTE_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_product_bids`
--
ALTER TABLE `tb_product_bids`
  MODIFY `BID_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `tb_product_images`
--
ALTER TABLE `tb_product_images`
  MODIFY `IMAGE_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_product_video`
--
ALTER TABLE `tb_product_video`
  MODIFY `VIDEO_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `USER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tb_user_address`
--
ALTER TABLE `tb_user_address`
  MODIFY `ADDRESS_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tb_user_history`
--
ALTER TABLE `tb_user_history`
  MODIFY `HISTORY_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `timezones`
--
ALTER TABLE `timezones`
  MODIFY `TIMEZONE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=422;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `paypal_transactions`
--
ALTER TABLE `paypal_transactions`
  ADD CONSTRAINT `FK_USER_ID` FOREIGN KEY (`USER_ID`) REFERENCES `tb_users` (`USER_ID`) ON UPDATE CASCADE;

--
-- Constraints for table `shipping_service`
--
ALTER TABLE `shipping_service`
  ADD CONSTRAINT `FK_PAYMENT_HASH` FOREIGN KEY (`PAYPAL_TRANS_ID`) REFERENCES `paypal_transactions` (`ID`) ON UPDATE CASCADE;

--
-- Constraints for table `tb_bid_activity`
--
ALTER TABLE `tb_bid_activity`
  ADD CONSTRAINT `tb_bid_activity_ibfk_3` FOREIGN KEY (`LAST_BIDDING_USER_ID`) REFERENCES `tb_users` (`USER_ID`) ON UPDATE CASCADE;

--
-- Constraints for table `tb_hash_table`
--
ALTER TABLE `tb_hash_table`
  ADD CONSTRAINT `tb_hash_table_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `tb_users` (`USER_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_items_cart`
--
ALTER TABLE `tb_items_cart`
  ADD CONSTRAINT `tb_items_cart_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `tb_users` (`USER_ID`) ON UPDATE CASCADE;

--
-- Constraints for table `tb_items_wishlist`
--
ALTER TABLE `tb_items_wishlist`
  ADD CONSTRAINT `tb_items_wishlist_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `tb_users` (`USER_ID`) ON UPDATE CASCADE;

--
-- Constraints for table `tb_product_bids`
--
ALTER TABLE `tb_product_bids`
  ADD CONSTRAINT `tb_product_bids_ibfk_2` FOREIGN KEY (`USER_ID`) REFERENCES `tb_users` (`USER_ID`) ON UPDATE CASCADE;

--
-- Constraints for table `tb_product_images`
--
ALTER TABLE `tb_product_images`
  ADD CONSTRAINT `tb_product_images_ibfk_1` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `tb_products` (`PRODUCT_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_user_address`
--
ALTER TABLE `tb_user_address`
  ADD CONSTRAINT `FK_USER_ADDRESS_ID` FOREIGN KEY (`USER_ID`) REFERENCES `tb_users` (`USER_ID`) ON UPDATE CASCADE;

--
-- Constraints for table `tb_user_history`
--
ALTER TABLE `tb_user_history`
  ADD CONSTRAINT `tb_user_history_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `tb_users` (`USER_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
