/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : eoction

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2017-02-17 14:57:17
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for bid_exclusion
-- ----------------------------
DROP TABLE IF EXISTS `bid_exclusion`;
CREATE TABLE `bid_exclusion` (
  `EXCLUSION_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRODUCT_ID` int(11) NOT NULL,
  `BIDDING_PERIOD` int(11) NOT NULL COMMENT 'How long to include the item from bid (hours)',
  `EXCLUSION_PERIOD` int(11) NOT NULL COMMENT 'How long to exclude the item from bid (hours)',
  `HIGH_DEMAND` int(1) DEFAULT '0' COMMENT 'If item is high demand do not exclude it',
  `AUCTION_COUNT` int(1) DEFAULT '0' COMMENT 'Number of times listed for auction',
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL,
  PRIMARY KEY (`EXCLUSION_ID`),
  UNIQUE KEY `PRODUCT_ID` (`PRODUCT_ID`),
  CONSTRAINT `FK_PRODUCT_ID_ECL` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `fry_products` (`productid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bid_exclusion
-- ----------------------------

-- ----------------------------
-- Table structure for bid_requesters
-- ----------------------------
DROP TABLE IF EXISTS `bid_requesters`;
CREATE TABLE `bid_requesters` (
  `REQUESTER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `REQUESTED_ID` int(11) NOT NULL COMMENT 'Request ID',
  `REQUESTING_USER_ID` int(11) NOT NULL COMMENT 'Requested By',
  `CUSTOMER_NOTES` text COMMENT 'Comments',
  `CUSTOMER_NOTIFIED` tinyint(1) DEFAULT '0' COMMENT 'Notified',
  `REQUEST_ACCEPTED` tinyint(1) DEFAULT '0' COMMENT 'Request Accepted',
  `CREATED` datetime DEFAULT NULL COMMENT 'Date Created',
  `UPDATED` datetime DEFAULT NULL COMMENT 'Date Updated',
  PRIMARY KEY (`REQUESTER_ID`),
  KEY `idx-requester_id` (`REQUESTED_ID`),
  KEY `idx-user_id` (`REQUESTING_USER_ID`),
  CONSTRAINT `FK_REQUESTED_ID_REQ` FOREIGN KEY (`REQUESTED_ID`) REFERENCES `bid_requests` (`REQUESTED_PRODUCT_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `FK_USER_ID_REQ` FOREIGN KEY (`REQUESTING_USER_ID`) REFERENCES `tb_users` (`USER_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bid_requesters
-- ----------------------------

-- ----------------------------
-- Table structure for bid_requests
-- ----------------------------
DROP TABLE IF EXISTS `bid_requests`;
CREATE TABLE `bid_requests` (
  `REQUESTED_PRODUCT_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Request Product ID',
  `CREATED` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date Created',
  `UPDATED` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date Updated',
  PRIMARY KEY (`REQUESTED_PRODUCT_ID`),
  KEY `IDX-PRODUCT_ID` (`REQUESTED_PRODUCT_ID`),
  CONSTRAINT `FK_PRODUCT_ID` FOREIGN KEY (`REQUESTED_PRODUCT_ID`) REFERENCES `fry_products` (`productid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of bid_requests
-- ----------------------------

-- ----------------------------
-- Table structure for countries
-- ----------------------------
DROP TABLE IF EXISTS `countries`;
CREATE TABLE `countries` (
  `COUNTRY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `COUNTRY_CODE` varchar(5) DEFAULT NULL,
  `COUNTRY_NAME` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`COUNTRY_ID`),
  KEY `Code` (`COUNTRY_CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=250 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of countries
-- ----------------------------
INSERT INTO `countries` VALUES ('1', 'AD', 'Andorra');
INSERT INTO `countries` VALUES ('2', 'AE', 'United Arab Emirates');
INSERT INTO `countries` VALUES ('3', 'AF', 'Afghanistan');
INSERT INTO `countries` VALUES ('4', 'AG', 'Antigua and Barbuda');
INSERT INTO `countries` VALUES ('5', 'AI', 'Anguilla');
INSERT INTO `countries` VALUES ('6', 'AL', 'Albania');
INSERT INTO `countries` VALUES ('7', 'AM', 'Armenia');
INSERT INTO `countries` VALUES ('8', 'AO', 'Angola');
INSERT INTO `countries` VALUES ('9', 'AQ', 'Antarctica');
INSERT INTO `countries` VALUES ('10', 'AR', 'Argentina');
INSERT INTO `countries` VALUES ('11', 'AS', 'American Samoa');
INSERT INTO `countries` VALUES ('12', 'AT', 'Austria');
INSERT INTO `countries` VALUES ('13', 'AU', 'Australia');
INSERT INTO `countries` VALUES ('14', 'AW', 'Aruba');
INSERT INTO `countries` VALUES ('15', 'AX', 'Åland Islands');
INSERT INTO `countries` VALUES ('16', 'AZ', 'Azerbaijan');
INSERT INTO `countries` VALUES ('17', 'BA', 'Bosnia and Herzegovina');
INSERT INTO `countries` VALUES ('18', 'BB', 'Barbados');
INSERT INTO `countries` VALUES ('19', 'BD', 'Bangladesh');
INSERT INTO `countries` VALUES ('20', 'BE', 'Belgium');
INSERT INTO `countries` VALUES ('21', 'BF', 'Burkina Faso');
INSERT INTO `countries` VALUES ('22', 'BG', 'Bulgaria');
INSERT INTO `countries` VALUES ('23', 'BH', 'Bahrain');
INSERT INTO `countries` VALUES ('24', 'BI', 'Burundi');
INSERT INTO `countries` VALUES ('25', 'BJ', 'Benin');
INSERT INTO `countries` VALUES ('26', 'BL', 'Saint Barthélemy');
INSERT INTO `countries` VALUES ('27', 'BM', 'Bermuda');
INSERT INTO `countries` VALUES ('28', 'BN', 'Brunei Darussalam');
INSERT INTO `countries` VALUES ('29', 'BO', 'Bolivia');
INSERT INTO `countries` VALUES ('30', 'BQ', 'Caribbean Netherlands ');
INSERT INTO `countries` VALUES ('31', 'BR', 'Brazil');
INSERT INTO `countries` VALUES ('32', 'BS', 'Bahamas');
INSERT INTO `countries` VALUES ('33', 'BT', 'Bhutan');
INSERT INTO `countries` VALUES ('34', 'BV', 'Bouvet Island');
INSERT INTO `countries` VALUES ('35', 'BW', 'Botswana');
INSERT INTO `countries` VALUES ('36', 'BY', 'Belarus');
INSERT INTO `countries` VALUES ('37', 'BZ', 'Belize');
INSERT INTO `countries` VALUES ('38', 'CA', 'Canada');
INSERT INTO `countries` VALUES ('39', 'CC', 'Cocos (Keeling) Islands');
INSERT INTO `countries` VALUES ('40', 'CD', 'Congo, Democratic Republic of');
INSERT INTO `countries` VALUES ('41', 'CF', 'Central African Republic');
INSERT INTO `countries` VALUES ('42', 'CG', 'Congo');
INSERT INTO `countries` VALUES ('43', 'CH', 'Switzerland');
INSERT INTO `countries` VALUES ('44', 'CI', 'Côte d\'Ivoire');
INSERT INTO `countries` VALUES ('45', 'CK', 'Cook Islands');
INSERT INTO `countries` VALUES ('46', 'CL', 'Chile');
INSERT INTO `countries` VALUES ('47', 'CM', 'Cameroon');
INSERT INTO `countries` VALUES ('48', 'CN', 'China');
INSERT INTO `countries` VALUES ('49', 'CO', 'Colombia');
INSERT INTO `countries` VALUES ('50', 'CR', 'Costa Rica');
INSERT INTO `countries` VALUES ('51', 'CU', 'Cuba');
INSERT INTO `countries` VALUES ('52', 'CV', 'Cape Verde');
INSERT INTO `countries` VALUES ('53', 'CW', 'Curaçao');
INSERT INTO `countries` VALUES ('54', 'CX', 'Christmas Island');
INSERT INTO `countries` VALUES ('55', 'CY', 'Cyprus');
INSERT INTO `countries` VALUES ('56', 'CZ', 'Czech Republic');
INSERT INTO `countries` VALUES ('57', 'DE', 'Germany');
INSERT INTO `countries` VALUES ('58', 'DJ', 'Djibouti');
INSERT INTO `countries` VALUES ('59', 'DK', 'Denmark');
INSERT INTO `countries` VALUES ('60', 'DM', 'Dominica');
INSERT INTO `countries` VALUES ('61', 'DO', 'Dominican Republic');
INSERT INTO `countries` VALUES ('62', 'DZ', 'Algeria');
INSERT INTO `countries` VALUES ('63', 'EC', 'Ecuador');
INSERT INTO `countries` VALUES ('64', 'EE', 'Estonia');
INSERT INTO `countries` VALUES ('65', 'EG', 'Egypt');
INSERT INTO `countries` VALUES ('66', 'EH', 'Western Sahara');
INSERT INTO `countries` VALUES ('67', 'ER', 'Eritrea');
INSERT INTO `countries` VALUES ('68', 'ES', 'Spain');
INSERT INTO `countries` VALUES ('69', 'ET', 'Ethiopia');
INSERT INTO `countries` VALUES ('70', 'FI', 'Finland');
INSERT INTO `countries` VALUES ('71', 'FJ', 'Fiji');
INSERT INTO `countries` VALUES ('72', 'FK', 'Falkland Islands');
INSERT INTO `countries` VALUES ('73', 'FM', 'Micronesia, Federated States of');
INSERT INTO `countries` VALUES ('74', 'FO', 'Faroe Islands');
INSERT INTO `countries` VALUES ('75', 'FR', 'France');
INSERT INTO `countries` VALUES ('76', 'GA', 'Gabon');
INSERT INTO `countries` VALUES ('77', 'GB', 'United Kingdom');
INSERT INTO `countries` VALUES ('78', 'GD', 'Grenada');
INSERT INTO `countries` VALUES ('79', 'GE', 'Georgia');
INSERT INTO `countries` VALUES ('80', 'GF', 'French Guiana');
INSERT INTO `countries` VALUES ('81', 'GG', 'Guernsey');
INSERT INTO `countries` VALUES ('82', 'GH', 'Ghana');
INSERT INTO `countries` VALUES ('83', 'GI', 'Gibraltar');
INSERT INTO `countries` VALUES ('84', 'GL', 'Greenland');
INSERT INTO `countries` VALUES ('85', 'GM', 'Gambia');
INSERT INTO `countries` VALUES ('86', 'GN', 'Guinea');
INSERT INTO `countries` VALUES ('87', 'GP', 'Guadeloupe');
INSERT INTO `countries` VALUES ('88', 'GQ', 'Equatorial Guinea');
INSERT INTO `countries` VALUES ('89', 'GR', 'Greece');
INSERT INTO `countries` VALUES ('90', 'GS', 'South Georgia and the South Sandwich Islands');
INSERT INTO `countries` VALUES ('91', 'GT', 'Guatemala');
INSERT INTO `countries` VALUES ('92', 'GU', 'Guam');
INSERT INTO `countries` VALUES ('93', 'GW', 'Guinea-Bissau');
INSERT INTO `countries` VALUES ('94', 'GY', 'Guyana');
INSERT INTO `countries` VALUES ('95', 'HK', 'Hong Kong');
INSERT INTO `countries` VALUES ('96', 'HM', 'Heard and McDonald Islands');
INSERT INTO `countries` VALUES ('97', 'HN', 'Honduras');
INSERT INTO `countries` VALUES ('98', 'HR', 'Croatia');
INSERT INTO `countries` VALUES ('99', 'HT', 'Haiti');
INSERT INTO `countries` VALUES ('100', 'HU', 'Hungary');
INSERT INTO `countries` VALUES ('101', 'ID', 'Indonesia');
INSERT INTO `countries` VALUES ('102', 'IE', 'Ireland');
INSERT INTO `countries` VALUES ('103', 'IL', 'Israel');
INSERT INTO `countries` VALUES ('104', 'IM', 'Isle of Man');
INSERT INTO `countries` VALUES ('105', 'IN', 'India');
INSERT INTO `countries` VALUES ('106', 'IO', 'British Indian Ocean Territory');
INSERT INTO `countries` VALUES ('107', 'IQ', 'Iraq');
INSERT INTO `countries` VALUES ('108', 'IR', 'Iran');
INSERT INTO `countries` VALUES ('109', 'IS', 'Iceland');
INSERT INTO `countries` VALUES ('110', 'IT', 'Italy');
INSERT INTO `countries` VALUES ('111', 'JE', 'Jersey');
INSERT INTO `countries` VALUES ('112', 'JM', 'Jamaica');
INSERT INTO `countries` VALUES ('113', 'JO', 'Jordan');
INSERT INTO `countries` VALUES ('114', 'JP', 'Japan');
INSERT INTO `countries` VALUES ('115', 'KE', 'Kenya');
INSERT INTO `countries` VALUES ('116', 'KG', 'Kyrgyzstan');
INSERT INTO `countries` VALUES ('117', 'KH', 'Cambodia');
INSERT INTO `countries` VALUES ('118', 'KI', 'Kiribati');
INSERT INTO `countries` VALUES ('119', 'KM', 'Comoros');
INSERT INTO `countries` VALUES ('120', 'KN', 'Saint Kitts and Nevis');
INSERT INTO `countries` VALUES ('121', 'KP', 'North Korea');
INSERT INTO `countries` VALUES ('122', 'KR', 'South Korea');
INSERT INTO `countries` VALUES ('123', 'KW', 'Kuwait');
INSERT INTO `countries` VALUES ('124', 'KY', 'Cayman Islands');
INSERT INTO `countries` VALUES ('125', 'KZ', 'Kazakhstan');
INSERT INTO `countries` VALUES ('126', 'LA', 'Lao People\'s Democratic Republic');
INSERT INTO `countries` VALUES ('127', 'LB', 'Lebanon');
INSERT INTO `countries` VALUES ('128', 'LC', 'Saint Lucia');
INSERT INTO `countries` VALUES ('129', 'LI', 'Liechtenstein');
INSERT INTO `countries` VALUES ('130', 'LK', 'Sri Lanka');
INSERT INTO `countries` VALUES ('131', 'LR', 'Liberia');
INSERT INTO `countries` VALUES ('132', 'LS', 'Lesotho');
INSERT INTO `countries` VALUES ('133', 'LT', 'Lithuania');
INSERT INTO `countries` VALUES ('134', 'LU', 'Luxembourg');
INSERT INTO `countries` VALUES ('135', 'LV', 'Latvia');
INSERT INTO `countries` VALUES ('136', 'LY', 'Libya');
INSERT INTO `countries` VALUES ('137', 'MA', 'Morocco');
INSERT INTO `countries` VALUES ('138', 'MC', 'Monaco');
INSERT INTO `countries` VALUES ('139', 'MD', 'Moldova');
INSERT INTO `countries` VALUES ('140', 'ME', 'Montenegro');
INSERT INTO `countries` VALUES ('141', 'MF', 'Saint-Martin (France)');
INSERT INTO `countries` VALUES ('142', 'MG', 'Madagascar');
INSERT INTO `countries` VALUES ('143', 'MH', 'Marshall Islands');
INSERT INTO `countries` VALUES ('144', 'MK', 'Macedonia');
INSERT INTO `countries` VALUES ('145', 'ML', 'Mali');
INSERT INTO `countries` VALUES ('146', 'MM', 'Myanmar');
INSERT INTO `countries` VALUES ('147', 'MN', 'Mongolia');
INSERT INTO `countries` VALUES ('148', 'MO', 'Macau');
INSERT INTO `countries` VALUES ('149', 'MP', 'Northern Mariana Islands');
INSERT INTO `countries` VALUES ('150', 'MQ', 'Martinique');
INSERT INTO `countries` VALUES ('151', 'MR', 'Mauritania');
INSERT INTO `countries` VALUES ('152', 'MS', 'Montserrat');
INSERT INTO `countries` VALUES ('153', 'MT', 'Malta');
INSERT INTO `countries` VALUES ('154', 'MU', 'Mauritius');
INSERT INTO `countries` VALUES ('155', 'MV', 'Maldives');
INSERT INTO `countries` VALUES ('156', 'MW', 'Malawi');
INSERT INTO `countries` VALUES ('157', 'MX', 'Mexico');
INSERT INTO `countries` VALUES ('158', 'MY', 'Malaysia');
INSERT INTO `countries` VALUES ('159', 'MZ', 'Mozambique');
INSERT INTO `countries` VALUES ('160', 'NA', 'Namibia');
INSERT INTO `countries` VALUES ('161', 'NC', 'New Caledonia');
INSERT INTO `countries` VALUES ('162', 'NE', 'Niger');
INSERT INTO `countries` VALUES ('163', 'NF', 'Norfolk Island');
INSERT INTO `countries` VALUES ('164', 'NG', 'Nigeria');
INSERT INTO `countries` VALUES ('165', 'NI', 'Nicaragua');
INSERT INTO `countries` VALUES ('166', 'NL', 'The Netherlands');
INSERT INTO `countries` VALUES ('167', 'NO', 'Norway');
INSERT INTO `countries` VALUES ('168', 'NP', 'Nepal');
INSERT INTO `countries` VALUES ('169', 'NR', 'Nauru');
INSERT INTO `countries` VALUES ('170', 'NU', 'Niue');
INSERT INTO `countries` VALUES ('171', 'NZ', 'New Zealand');
INSERT INTO `countries` VALUES ('172', 'OM', 'Oman');
INSERT INTO `countries` VALUES ('173', 'PA', 'Panama');
INSERT INTO `countries` VALUES ('174', 'PE', 'Peru');
INSERT INTO `countries` VALUES ('175', 'PF', 'French Polynesia');
INSERT INTO `countries` VALUES ('176', 'PG', 'Papua New Guinea');
INSERT INTO `countries` VALUES ('177', 'PH', 'Philippines');
INSERT INTO `countries` VALUES ('178', 'PK', 'Pakistan');
INSERT INTO `countries` VALUES ('179', 'PL', 'Poland');
INSERT INTO `countries` VALUES ('180', 'PM', 'St. Pierre and Miquelon');
INSERT INTO `countries` VALUES ('181', 'PN', 'Pitcairn');
INSERT INTO `countries` VALUES ('182', 'PR', 'Puerto Rico');
INSERT INTO `countries` VALUES ('183', 'PS', 'Palestine, State of');
INSERT INTO `countries` VALUES ('184', 'PT', 'Portugal');
INSERT INTO `countries` VALUES ('185', 'PW', 'Palau');
INSERT INTO `countries` VALUES ('186', 'PY', 'Paraguay');
INSERT INTO `countries` VALUES ('187', 'QA', 'Qatar');
INSERT INTO `countries` VALUES ('188', 'RE', 'Réunion');
INSERT INTO `countries` VALUES ('189', 'RO', 'Romania');
INSERT INTO `countries` VALUES ('190', 'RS', 'Serbia');
INSERT INTO `countries` VALUES ('191', 'RU', 'Russian Federation');
INSERT INTO `countries` VALUES ('192', 'RW', 'Rwanda');
INSERT INTO `countries` VALUES ('193', 'SA', 'Saudi Arabia');
INSERT INTO `countries` VALUES ('194', 'SB', 'Solomon Islands');
INSERT INTO `countries` VALUES ('195', 'SC', 'Seychelles');
INSERT INTO `countries` VALUES ('196', 'SD', 'Sudan');
INSERT INTO `countries` VALUES ('197', 'SE', 'Sweden');
INSERT INTO `countries` VALUES ('198', 'SG', 'Singapore');
INSERT INTO `countries` VALUES ('199', 'SH', 'Saint Helena');
INSERT INTO `countries` VALUES ('200', 'SI', 'Slovenia');
INSERT INTO `countries` VALUES ('201', 'SJ', 'Svalbard and Jan Mayen Islands');
INSERT INTO `countries` VALUES ('202', 'SK', 'Slovakia');
INSERT INTO `countries` VALUES ('203', 'SL', 'Sierra Leone');
INSERT INTO `countries` VALUES ('204', 'SM', 'San Marino');
INSERT INTO `countries` VALUES ('205', 'SN', 'Senegal');
INSERT INTO `countries` VALUES ('206', 'SO', 'Somalia');
INSERT INTO `countries` VALUES ('207', 'SR', 'Suriname');
INSERT INTO `countries` VALUES ('208', 'SS', 'South Sudan');
INSERT INTO `countries` VALUES ('209', 'ST', 'Sao Tome and Principe');
INSERT INTO `countries` VALUES ('210', 'SV', 'El Salvador');
INSERT INTO `countries` VALUES ('211', 'SX', 'Sint Maarten (Dutch part)');
INSERT INTO `countries` VALUES ('212', 'SY', 'Syria');
INSERT INTO `countries` VALUES ('213', 'SZ', 'Swaziland');
INSERT INTO `countries` VALUES ('214', 'TC', 'Turks and Caicos Islands');
INSERT INTO `countries` VALUES ('215', 'TD', 'Chad');
INSERT INTO `countries` VALUES ('216', 'TF', 'French Southern Territories');
INSERT INTO `countries` VALUES ('217', 'TG', 'Togo');
INSERT INTO `countries` VALUES ('218', 'TH', 'Thailand');
INSERT INTO `countries` VALUES ('219', 'TJ', 'Tajikistan');
INSERT INTO `countries` VALUES ('220', 'TK', 'Tokelau');
INSERT INTO `countries` VALUES ('221', 'TL', 'Timor-Leste');
INSERT INTO `countries` VALUES ('222', 'TM', 'Turkmenistan');
INSERT INTO `countries` VALUES ('223', 'TN', 'Tunisia');
INSERT INTO `countries` VALUES ('224', 'TO', 'Tonga');
INSERT INTO `countries` VALUES ('225', 'TR', 'Turkey');
INSERT INTO `countries` VALUES ('226', 'TT', 'Trinidad and Tobago');
INSERT INTO `countries` VALUES ('227', 'TV', 'Tuvalu');
INSERT INTO `countries` VALUES ('228', 'TW', 'Taiwan');
INSERT INTO `countries` VALUES ('229', 'TZ', 'Tanzania');
INSERT INTO `countries` VALUES ('230', 'UA', 'Ukraine');
INSERT INTO `countries` VALUES ('231', 'UG', 'Uganda');
INSERT INTO `countries` VALUES ('232', 'UM', 'United States Minor Outlying Islands');
INSERT INTO `countries` VALUES ('233', 'US', 'United States');
INSERT INTO `countries` VALUES ('234', 'UY', 'Uruguay');
INSERT INTO `countries` VALUES ('235', 'UZ', 'Uzbekistan');
INSERT INTO `countries` VALUES ('236', 'VA', 'Vatican');
INSERT INTO `countries` VALUES ('237', 'VC', 'Saint Vincent and the Grenadines');
INSERT INTO `countries` VALUES ('238', 'VE', 'Venezuela');
INSERT INTO `countries` VALUES ('239', 'VG', 'Virgin Islands (British)');
INSERT INTO `countries` VALUES ('240', 'VI', 'Virgin Islands (U.S.)');
INSERT INTO `countries` VALUES ('241', 'VN', 'Vietnam');
INSERT INTO `countries` VALUES ('242', 'VU', 'Vanuatu');
INSERT INTO `countries` VALUES ('243', 'WF', 'Wallis and Futuna Islands');
INSERT INTO `countries` VALUES ('244', 'WS', 'Samoa');
INSERT INTO `countries` VALUES ('245', 'YE', 'Yemen');
INSERT INTO `countries` VALUES ('246', 'YT', 'Mayotte');
INSERT INTO `countries` VALUES ('247', 'ZA', 'South Africa');
INSERT INTO `countries` VALUES ('248', 'ZM', 'Zambia');
INSERT INTO `countries` VALUES ('249', 'ZW', 'Zimbabwe');

-- ----------------------------
-- Table structure for fry_products
-- ----------------------------
DROP TABLE IF EXISTS `fry_products`;
CREATE TABLE `fry_products` (
  `productid` int(11) NOT NULL AUTO_INCREMENT,
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
  `image4` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`productid`)
) ENGINE=InnoDB AUTO_INCREMENT=277 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of fry_products
-- ----------------------------
INSERT INTO `fry_products` VALUES ('1', '18k Gold Over Sterling Silver Italian Crafted Cable Chain 1.26 Grams -18\"', 'Top Selling/Jewelry/Necklace', '', 'C-BLL030D-18', '', '1', '39.99', '', '', '75', '1', '1', '1', '1', '10', '1', '1.26', '', 'Wedding, Party , Gift', '', '', 'New', null, 'Does not apply', 'Affinity Engagement Jewels', 'Necklace', 'Cable Chain', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', 'Gold Over', '', '', '', 'Italy', '', '', '', '18 Inches', 'Cable', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164330', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/BLL030N-18S3-W-2.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/BLL030N-18S3-1-Y.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/BLL030N-18S3-Y.jpg', '');
INSERT INTO `fry_products` VALUES ('2', '18k Gold Over Sterling Silver Italian Crafted Cable Chain 1.42 Grams -18\"', 'Top Selling/Jewelry/Necklace', '', 'C-BLL030N-18S3', '', '1', '39.99', '', '', '75', '1', '1', '1', '1', '10', '1', '1.42', '', 'Wedding, Party , Gift', '', '', 'New', null, 'Does not apply', 'Affinity Fashion Jewelry', 'Necklace', 'Cable Chain', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', 'Gold Over', '', '', '', 'Italy', '', '', '', '18 Inches', 'Cable', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164330', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/BLL030N-18S3-C-WH.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/BLL030N-18S3-1-Y.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/BLL030N-18S3-R.jpg', '');
INSERT INTO `fry_products` VALUES ('3', 'Sterling Silver 18\" Length Italian Crafted Curb Chain Necklace - 1.04mm', 'Top Selling/Jewelry/Necklace', '', 'C-J-CU2DC030-18R', '', '1', '44.99', '', '', '75', '1', '1', '1', '1', '10', '1', '1.49', '', 'Wedding, Party , Gift', '', '', 'New', null, 'Does Not Apply', 'Affinity Fine Jewelry', 'curb', 'Chain', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', '', '', '', '', 'Italy', '', '1.04mm', '', '18 Inches', 'Curb', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164330', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CU2DC030-18R-RG.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CU2DC030-18R-WG.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CU2DC030-18R-YG.jpg', '');
INSERT INTO `fry_products` VALUES ('4', '18K Gold over Italian Crafted Curb Chain-18\"', 'Top Selling/Jewelry/Necklace', '', 'C-CU030JBL-18', '', '1', '44.99', '', '', '75', '1', '1', '1', '1', '10', '1', '1.51', '', 'Wedding, Party , Gift', '', '', 'New', null, 'Does not apply', 'Affinity Gold', 'Necklace', 'Curb Chain', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', '', 'Womens', '', '', '', '', 'Italy', '', '', '', '18 Inches', 'Curb', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164330', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-CU030JBL-18-W.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-CU030JBL-18-Y.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-CU030JBL-18-R.jpg', '');
INSERT INTO `fry_products` VALUES ('5', 'Sterling Silver Forzatina Rollo Chain 16\" Solid 925 Italian Crafted Chain-1.08mm', 'Top Selling/Jewelry/Necklace', '', 'C-CA4DC030CJB-16', '', '1', '44.99', '', '', '75', '1', '1', '1', '1', '10', '1', '1.52', '', 'Wedding, Party , Gift', '', '', 'New', null, 'Does Not apply', 'Affinity Home Shopping', 'rolo', 'Chain', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', '', '', '', '', 'Italy', '', '1.08m', '', '16 Inches', 'rolo', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164330', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-CA4DC030CJB-16-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('6', '18K Gold over Italian Crafted Box Chain', 'Top Selling/Jewelry/Necklace', '', 'C-VD4DC080-16Y', '', '1', '49.99', '', '', '75', '1', '1', '1', '1', '10', '1', '1.56', '', 'Wedding, Party , Gift', '', '', 'New', null, 'Does not apply', 'Affinity Jewelry', 'Necklace', 'Box Chain', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', '', 'Womens', '', '', '', '', 'Italy', '', '', '', '', 'Box', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164330', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-VD4DC080-16Y-W.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-VD4DC080-16Y-Y.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-VD4DC080-16Y-R.jpg', '');
INSERT INTO `fry_products` VALUES ('7', 'Sterling Silver 16\" Length Italian Crafted Cable Chain Neckalce - 1.5mm', 'Top Selling/Jewelry/Necklace', '', 'C-CAHC-01045-16R', '', '1', '49.99', '', '', '75', '1', '1', '1', '1', '10', '1', '1.56', '', 'Wedding, Party , Gift', '', '', 'New', null, 'Does Not Apply', 'Affy Pawn Shop', 'cable', 'Chain', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', '', '', '', '', 'Italy', '', '1.5mm', '', '16 Inches', 'Cable', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164330', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-CAHC-01045-16R-W.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-CAHC-01045-16R-Y.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-CAHC-01045-16R-R.jpg', '');
INSERT INTO `fry_products` VALUES ('8', 'Sterling Silver .8mm Italian Crafted 18\" Length Box Chain Necklace', 'Top Selling/Jewelry/Necklace', '', 'C-VD4DC080-16Y', '', '1', '49.99', '', '', '75', '1', '1', '1', '1', '10', '1', '1.56', '', 'Wedding, Party , Gift', '', '', 'New', null, 'Does Not apply', 'Diamant Jewels', 'box', 'Chain', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', '', '', '', '', 'Italy', '', '0.8mm', '', '18 Inches', 'Box', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164330', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-CHN-VD4DC080-18Y-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('9', 'Sterling Silver .8mm Italian Crafted 16\" Length Box Chain Necklace', 'Top Selling/Jewelry/Necklace', '', 'C-VD4DC080-16Y', '', '1', '49.99', '', '', '75', '1', '1', '1', '1', '10', '1', '1.56', '', 'Wedding, Party , Gift', '', '', 'New', null, 'Does Not Apply', 'Findings N Jewelry', 'box', 'Chain', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', '', '', '', '', 'Italy', '', '0.8mm', '', '16 Inches', 'Box', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164330', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/VD4DC080-16Y-RG.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/VD4DC080-16Y-WG.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/VD4DC080-16Y-YG.jpg', '');
INSERT INTO `fry_products` VALUES ('10', '18k Gold Over Sterling Silver Italian  Bead Chain Necklace 2.19 Grams -18\" 1.0MM', 'Top Selling/Jewelry/Necklace', '', 'C-BA8DC100-18', '', '1', '53.99', '', '', '75', '1', '1', '1', '1', '10', '1', '1.57', '', 'Wedding, Party , Gift', '', '', 'New', null, 'Does Not Apply', 'Gem Depot', 'Chain', 'Bead', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', '', '', '', '', 'Italy', '', '1MM', '', '18 Inches', 'Bead', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164330', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/BA8DC100(3+1)-18Y-W.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/BA8DC100(3+1)-18Y-Y.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/BA8DC100(3+1)-18Y-R.jpg', '');
INSERT INTO `fry_products` VALUES ('11', 'Sterling Silver 16\" Length Italian Multi Tone Chain Neckalce - 1.5mm', 'Top Selling/Jewelry/Necklace', '', 'C-CADODC1.5-16S3', '', '1', '53.99', '', '', '75', '1', '1', '1', '1', '10', '1', '1.63', '', 'Wedding, Party , Gift', '', '', 'New', null, 'Does Not Apply', 'Gemstone Place', 'cable', 'Chain', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', '', '', '', '', 'Italy', '', '1.5mm', '', '16 Inches', '', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164330', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CADODC15-16S3.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('12', 'Sterling Silver Forzatina Rollo Chain 16\" Italian Chain Necklace-1.08mm', 'Top Selling/Jewelry/Necklace', '', 'C-CA4DC030CJB-18', '', '1', '53.99', '', '', '75', '1', '1', '1', '1', '10', '1', '1.66', '', 'Wedding, Party , Gift', '', '', 'New', null, 'Does Not Apply', 'Jewelry Auction House', 'cable', 'Chain', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', '', '', '', '', 'Italy', '', '1.08mm', '', '16 Inches', 'Rollo', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164330', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CA4DC030CJB-18-RG.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CA4DC030CJB-18-WG.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CA4DC030CJB-18-YG.jpg', '');
INSERT INTO `fry_products` VALUES ('13', 'Sterling Silver 16\" Italian Flat Cable Chain Necklace-2.05MM', 'Top Selling/Jewelry/Necklace', '', 'C-CAHC-01040-18Y', '', '1', '55.99', '', '', '75', '1', '1', '1', '1', '10', '1', '1.72', '', 'Wedding, Party , Gift', '', '', 'New', null, 'Does Not Apply', 'JP Jewels8', 'curb', 'Chain', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', '', '', '', '', 'Italy', '', '2.05mm', '', '16 Inches', 'Cable', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164330', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CAHC-0140-18Y-RG.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CAHC-0140-18Y-WG.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CAHC-0140-16Y-RG.jpg', '');
INSERT INTO `fry_products` VALUES ('14', 'Sterling Silver 16\" Italian Crafted Cable Chain Necklace,1.5mm', 'Top Selling/Jewelry/Necklace', '', 'C-J-CADODC1.5-18R', '', '1', '55.99', '', '', '75', '1', '1', '1', '1', '10', '1', '1.72', '', 'Wedding, Party , Gift', '', '', 'New', null, 'Does Not Apply', 'Preloved Jewelry', 'Sparkle', 'Chain', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', '', '', '', '', 'Italy', '', '1.5mm', '', '16 Inches', 'Cable', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164330', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/V-C-J-CADODC1.5-18Y-RG.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CADODC-16R-WG.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/J-CADODC1.5-16R-YG.jpg', '');
INSERT INTO `fry_products` VALUES ('15', 'Sterling Silver 18\" Italian Crafted Cable Chain Necklace,1.5mm', 'Top Selling/Jewelry/Necklace', '', 'C-J-CADODC1.5-18Y', '', '1', '55.99', '', '', '75', '1', '1', '1', '1', '10', '1', '1.72', '', 'Wedding, Party , Gift', '', '', 'New', null, 'Does Not Apply', 'Affinity Diamond Jewelry', 'snake', 'Chain', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', '', '', '', '', 'Italy', '', '1.5mm', '', '18 Inches', 'Cable', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164330', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/J-CADODC1.5-18Y-WG.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/J-CADODC1.5-18Y-YG.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/V-C-J-CADODC1.5-18Y-RG.jpg', '');
INSERT INTO `fry_products` VALUES ('16', '18k Gold Over Sterling Silver Italian Crafted Micro Box Chain 1.74 Grams -16\"', 'Top Selling/Jewelry/Necklace', '', 'C-J-VD4DC080-16R', '', '1', '55.99', '', '', '75', '1', '1', '1', '1', '10', '1', '1.74', '', 'Wedding, Party , Gift', '', '', 'New', null, 'Does not apply', 'Affinity Engagement Jewels', 'Necklace', 'Micro Box Chain', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', 'Gold Over', '', '', '', 'Italy', '', '', '', '16 Inches', 'Box', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164330', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/VD4DC080BP-18-2.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/VD4DC080BP-18-Y.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/VD4DC080BP-18-R.jpg', '');
INSERT INTO `fry_products` VALUES ('17', 'Sterling Silver 16\" Italian Crafted Ball Bead Chain Necklace,1.2mm', 'Top Selling/Jewelry/Necklace', '', 'C-BA8DC120-16', '', '1', '55.99', '', '', '75', '1', '1', '1', '1', '10', '1', '1.85', '', 'Wedding, Party , Gift', '', '', 'New', null, 'Does Not Apply', 'Affinity Fashion Jewelry', 'curb', 'Chain', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', '', '', '', '', 'Italy', '', '1.2mm', '', '16 Inches', 'Bead', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164330', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/BA8DC120-16-RG.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/BA8DC150-16-W.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/BA8DC120-16-YG.jpg', '');
INSERT INTO `fry_products` VALUES ('18', 'Sterling Silver Italian 16\" Sparkle Chain Necklace-1.26mm', 'Top Selling/Jewelry/Necklace', '', 'C-SET2DC040-16', '', '1', '59.99', '', '', '75', '1', '1', '1', '1', '10', '1', '1.91', '', 'Wedding, Party , Gift', '', '', 'New', null, 'Does Not Apply', 'Affinity Fine Jewelry', 'Sparkle', 'Chain', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', '', '', '', '', 'Italy', '', '1.26mm', '', '16 Inches', 'Sparkle', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164330', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CHN-SET2DC040-16-W.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CHN-SET2DC040-16-Y.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CHN-SET2DC040-16-R.jpg', '');
INSERT INTO `fry_products` VALUES ('19', 'Sterling Silver Italian 16\" Curb Chain Necklace, 1.5mm', 'Top Selling/Jewelry/Necklace', '', 'C-BLL030BP(1)-18', '', '1', '59.99', '', '', '75', '1', '1', '1', '1', '10', '1', '1.94', '', 'Wedding, Party , Gift', '', '', 'New', null, 'Does Not Apply', 'Affinity Gold', 'curb', 'Chain', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', '', '', '', '', 'Italy', '', '1.5mm', '', '16 Inches', 'Curb', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164330', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CHN-BLL030BP-10-18-W.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CHN-BLL030BP-10-18-Y.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CHN-BLL030BP-10-18-R.jpg', '');
INSERT INTO `fry_products` VALUES ('20', 'Sterling Silver Italian 16\" Multi Tone Bar and Curb Chain necklace,1.5mm', 'Top Selling/Jewelry/Necklace', '', 'C-CA030BP-18S3', '', '1', '59.99', '', '', '75', '1', '1', '1', '1', '10', '1', '1.94', '', 'Wedding, Party , Gift', '', '', 'New', null, 'Does Not Apply', 'Affinity Home Shopping', 'curb', 'Chain', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', '', '', '', '', 'Italy', '', '1.5mm', '', '16 Inches', 'Bar and Curb', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164330', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CHN-CA030BP-18S3-16.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CHN-CA030BP-18S3-18.jpg', '', '');
INSERT INTO `fry_products` VALUES ('21', 'Sterling Silver Italian Crafted 16\" Dogtag Beads Chain Necklace - 1.0mm', 'Top Selling/Jewelry/Necklace', '', 'C-BA8DC100(3+1)-16', '', '1', '59.99', '', '', '75', '1', '1', '1', '1', '10', '1', '1.96', '', 'Wedding, Party , Gift', '', '', 'New', null, 'Does Not apply', 'Affinity Jewelry', 'Dogtag Beads Chain Necklaces', 'Chain', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', '', '', '', '', 'Italy', '', '1.0mm', '', '16 Inches', 'Bead', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164330', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CHN-BA8DC100(3+1)-16-W.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CHN-BA8DC100(3+1)-16-Y.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CHN-BA8DC100(3+1)-16-R.jpg', '');
INSERT INTO `fry_products` VALUES ('22', '18k Gold Over Sterling Silver Italian Crafted Cable Link Chain 1.99 Grams -18\"', 'Top Selling/Jewelry/Necklace', '', 'C-CA035-18R', '', '1', '59.99', '', '', '75', '1', '1', '1', '1', '10', '1', '1.99', '', 'Wedding, Party , Gift', '', '', 'New', null, 'Does not apply', 'Affy Pawnshop', 'Necklace', 'Link Chain', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', 'Gold Over', '', '', '', 'Italy', '', '', '', '18 Inches', 'Cable', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164330', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CA035-18R-W-WH.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CA035-18R-Y.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/CA035-18R-R.jpg', '');
INSERT INTO `fry_products` VALUES ('23', '18K Rose Gold Over 925 3mm Round Diamond April Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-ROSE-APR', '', '1', '24.995', '', '', '49.99', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Diamond', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-April-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('24', '18K Rose Gold Over 925 3mm Round Peridot August Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-ROSE-AUG', '', '1', '24.995', '', '', '49.99', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Peridot', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Aug-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('25', '18K Rose Gold Over 925 3mm Round Blue Topaz December Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-ROSE-DEC', '', '1', '24.995', '', '', '49.99', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Topaz', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Dec-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('26', '18K Rose Gold Over 925 3mm Round Amethyst February Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-ROSE-FEB', '', '1', '24.995', '', '', '49.99', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Amethyst', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Feb-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('27', '18K Rose Gold Over 925 3mm Round Garnet January Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-ROSE-JAN', '', '1', '24.995', '', '', '49.99', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Garnet', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Jan-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('28', '18K Rose Gold Over 925 3mm Round Ruby July Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-ROSE-JUL', '', '1', '24.995', '', '', '49.99', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Ruby', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-July-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('29', '18K Rose Gold Over 925 3mm Round Alexandrite June Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-ROSE-JUN', '', '1', '24.995', '', '', '49.99', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Alexandrite', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-June-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('30', '18K Rose Gold Over 925 3mm Round Aquamarine March Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-ROSE-MAR', '', '1', '24.995', '', '', '49.99', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Aquamarine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-March-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('31', '18K Rose Gold Over 925 3mm Round Emerald May Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-ROSE-MAY', '', '1', '24.995', '', '', '49.99', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Emerald', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-May-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('32', '18K Rose Gold Over 925 3mm Round Citrine November Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-ROSE-NOV', '', '1', '24.995', '', '', '49.99', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Citrine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Nov-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('33', '18K Rose Gold Over 925 3mm Round Tourmaline October Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-ROSE-OCT', '', '1', '24.995', '', '', '49.99', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Tourmaline', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Oct-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('34', '18K Rose Gold Over 925 3mm Blue Sapphire September Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-ROSE-SEP', '', '1', '24.995', '', '', '49.99', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Sapphire', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Sep-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('35', '18K White Gold Over 925 3mm Round Diamond April Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-WHITE-APR', '', '1', '24.995', '', '', '49.99', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Diamond', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-April-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('36', '18K White Gold Over 925 3mm Round Peridot August Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-WHITE-AUG', '', '1', '24.995', '', '', '49.99', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Peridot', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Aug-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('37', '18K White Gold Over 925 3mm Round Blue Topaz December Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-WHITE-DEC', '', '1', '24.995', '', '', '49.99', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Topaz', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Dec-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('38', '18K White Gold Over 925 3mm Round Amethyst February Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-WHITE-FEB', '', '1', '24.995', '', '', '49.99', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Amethyst', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Feb-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('39', '18K White Gold Over 925 3mm Round Garnet January Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-WHITE-JAN', '', '1', '24.995', '', '', '49.99', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Garnet', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Jan-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('40', '18K White Gold Over 925 3mm Round Ruby July Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-WHITE-JUL', '', '1', '24.995', '', '', '49.99', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Ruby', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-July-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('41', '18K White Gold Over 925 3mm Round Alexandrite June Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-WHITE-JUN', '', '1', '24.995', '', '', '49.99', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Alexandrite', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-June-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('42', '18K White Gold Over 925 3mm Round Aquamarine March Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-WHITE-MAR', '', '1', '24.995', '', '', '49.99', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Aquamarine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-March-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('43', '18K White Gold Over 925 3mm Round Emerald May Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-WHITE-MAY', '', '1', '24.995', '', '', '49.99', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Emerald', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-May-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('44', '18K White Gold Over 925 3mm Round Citrine November Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-WHITE-NOV', '', '1', '24.995', '', '', '49.99', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Citrine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Nov-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('45', '18K White Gold Over 925 3mm Round Tourmaline October Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-WHITE-OCT', '', '1', '24.995', '', '', '49.99', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Tourmaline', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Oct-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('46', '18K White Gold Over 925 3mm Blue Sapphire September Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-WHITE-SEP', '', '1', '24.995', '', '', '49.99', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Sapphire', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Sep-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('47', '18K Yellow Gold Over 925 3mm Round Diamond April Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-YELLOW-APR', '', '1', '24.995', '', '', '49.99', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Diamond', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-April-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('48', '18K Yellow Gold Over 925 3mm Round Peridot August Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-YELLOW-AUG', '', '1', '24.995', '', '', '49.99', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Peridot', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Aug-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('49', '18K Yellow Gold Over 925 3mm Round Blue Topaz December Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-YELLOW-DEC', '', '1', '24.995', '', '', '49.99', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Topaz', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Dec-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('50', '18K Yellow Gold Over 925 3mm Round Amethyst February Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-YELLOW-FEB', '', '1', '24.995', '', '', '49.99', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Amethyst', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Feb-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('51', '18K Yellow Gold Over 925 3mm Round Garnet January Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-YELLOW-JAN', '', '1', '24.995', '', '', '49.99', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Garnet', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Jan-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('52', '18K Yellow Gold Over 925 3mm Round Ruby July Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-YELLOW-JUL', '', '1', '24.995', '', '', '49.99', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Ruby', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-July-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('53', '18K Yellow Gold Over 925 3mm Round Alexandrite June Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-YELLOW-JUN', '', '1', '24.995', '', '', '49.99', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Alexandrite', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-June-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('54', '18K Yellow Gold Over 925 3mm Round Aquamarine March Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-YELLOW-MAR', '', '1', '24.995', '', '', '49.99', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Aquamarine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-March-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('55', '18K Yellow Gold Over 925 3mm Round Emerald May Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-YELLOW-MAY', '', '1', '24.995', '', '', '49.99', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Emerald', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-May-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('56', '18K Yellow Gold Over 925 3mm Round Citrine November Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-YELLOW-NOV', '', '1', '24.995', '', '', '49.99', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Citrine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Nov-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('57', '18K Yellow Gold Over 925 3mm Round Tourmaline October Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-YELLOW-OCT', '', '1', '24.995', '', '', '49.99', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Tourmaline', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Oct-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('58', '18K Yellow Gold Over 925 3mm Blue Sapphire September Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-3MM-YELLOW-SEP', '', '1', '25', '', '', '50', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Sapphire', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '3mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Sep-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('59', '18K Rose Gold Over 925 4mm Round Diamond April Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-ROSE-APR', '', '1', '37.5', '', '', '75', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Diamond', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-April-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('60', '18K Rose Gold Over 925 4mm Round Peridot August Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-ROSE-AUG', '', '1', '37.5', '', '', '75', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Peridot', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Aug-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('61', '18K Rose Gold Over 925 4mm Round Blue Topaz December Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-ROSE-DEC', '', '1', '37.5', '', '', '75', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Topaz', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Dec-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('62', '18K Rose Gold Over 925 4mm Round Amethyst February Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-ROSE-FEB', '', '1', '37.5', '', '', '75', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Amethyst', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Feb-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('63', '18K Rose Gold Over 925 4mm Round Garnet January Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-ROSE-JAN', '', '1', '37.5', '', '', '75', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Garnet', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Jan-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('64', '18K Rose Gold Over 925 4mm Round Ruby July Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-ROSE-JUL', '', '1', '37.5', '', '', '75', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Ruby', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-July-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('65', '18K Rose Gold Over 925 4mm Round Alexandrite June Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-ROSE-JUN', '', '1', '37.5', '', '', '75', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Alexandrite', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-June-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('66', '18K Rose Gold Over 925 4mm Round Aquamarine March Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-ROSE-MAR', '', '1', '37.5', '', '', '75', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Aquamarine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-March-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('67', '18K Rose Gold Over 925 4mm Round Emerald May Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-ROSE-MAY', '', '1', '37.5', '', '', '75', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Emerald', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-May-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('68', '18K Rose Gold Over 925 4mm Round Citrine November Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-ROSE-NOV', '', '1', '37.5', '', '', '75', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Citrine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Nov-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('69', '18K Rose Gold Over 925 4mm Round Tourmaline October Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-ROSE-OCT', '', '1', '37.5', '', '', '75', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Tourmaline', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Oct-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('70', '18K Rose Gold Over 925 4mm Blue Sapphire September Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-ROSE-SEP', '', '1', '37.5', '', '', '75', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Sapphire', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Sep-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('71', '18K White Gold Over 925 4mm Round Diamond April Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-WHITE-APR', '', '1', '37.5', '', '', '75', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Diamond', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-April-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('72', '18K White Gold Over 925 4mm Round Peridot August Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-WHITE-AUG', '', '1', '37.5', '', '', '75', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Peridot', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Aug-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('73', '18K White Gold Over 925 4mm Round Blue Topaz December Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-WHITE-DEC', '', '1', '37.5', '', '', '75', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Topaz', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Dec-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('74', '18K White Gold Over 925 4mm Round Amethyst February Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-WHITE-FEB', '', '1', '37.5', '', '', '75', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Amethyst', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Feb-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('75', '18K White Gold Over 925 4mm Round Garnet January Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-WHITE-JAN', '', '1', '37.5', '', '', '75', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Garnet', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Jan-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('76', '18K White Gold Over 925 4mm Round Ruby July Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-WHITE-JUL', '', '1', '37.5', '', '', '75', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Ruby', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-July-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('77', '18K White Gold Over 925 4mm Round Alexandrite June Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-WHITE-JUN', '', '1', '37.5', '', '', '75', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Alexandrite', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-June-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('78', '18K White Gold Over 925 4mm Round Aquamarine March Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-WHITE-MAR', '', '1', '37.5', '', '', '75', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Aquamarine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-March-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('79', '18K White Gold Over 925 4mm Round Emerald May Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-WHITE-MAY', '', '1', '37.5', '', '', '75', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Emerald', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-May-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('80', '18K White Gold Over 925 4mm Round Citrine November Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-WHITE-NOV', '', '1', '37.5', '', '', '75', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Citrine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Nov-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('81', '18K White Gold Over 925 4mm Round Tourmaline October Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-WHITE-OCT', '', '1', '37.5', '', '', '75', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Tourmaline', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Oct-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('82', '18K White Gold Over 925 4mm Blue Sapphire September Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-WHITE-SEP', '', '1', '37.5', '', '', '75', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Sapphire', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Sep-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('83', '18K Yellow Gold Over 925 4mm Round Diamond April Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-YELLOW-APR', '', '1', '37.5', '', '', '75', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Diamond', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-April-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('84', '18K Yellow Gold Over 925 4mm Round Peridot August Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-YELLOW-AUG', '', '1', '37.5', '', '', '75', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Peridot', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Aug-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('85', '18K Yellow Gold Over 925 4mm Round Blue Topaz December Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-YELLOW-DEC', '', '1', '37.5', '', '', '75', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Topaz', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Dec-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('86', '18K Yellow Gold Over 925 4mm Round Amethyst February Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-YELLOW-FEB', '', '1', '37.5', '', '', '75', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Amethyst', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Feb-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('87', '18K Yellow Gold Over 925 4mm Round Garnet January Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-YELLOW-JAN', '', '1', '37.5', '', '', '75', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Garnet', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Jan-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('88', '18K Yellow Gold Over 925 4mm Round Ruby July Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-YELLOW-JUL', '', '1', '37.5', '', '', '75', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Ruby', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-July-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('89', '18K Yellow Gold Over 925 4mm Round Alexandrite June Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-YELLOW-JUN', '', '1', '37.5', '', '', '75', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Alexandrite', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-June-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('90', '18K Yellow Gold Over 925 4mm Round Aquamarine March Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-YELLOW-MAR', '', '1', '37.5', '', '', '75', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Aquamarine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-March-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('91', '18K Yellow Gold Over 925 4mm Round Emerald May Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-YELLOW-MAY', '', '1', '37.5', '', '', '75', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Emerald', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-May-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('92', '18K Yellow Gold Over 925 4mm Round Citrine November Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-YELLOW-NOV', '', '1', '37.5', '', '', '75', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Citrine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Nov-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('93', '18K Yellow Gold Over 925 4mm Round Tourmaline October Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-YELLOW-OCT', '', '1', '37.5', '', '', '75', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Tourmaline', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Oct-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('94', '18K Yellow Gold Over 925 4mm Blue Sapphire September Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-4MM-YELLOW-SEP', '', '1', '37.5', '', '', '75', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Sapphire', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '4mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Sep-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('95', '18K Rose Gold Over 925 5mm Round Diamond April Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-ROSE-APR', '', '1', '50', '', '', '100', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Diamond', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-April-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('96', '18K Rose Gold Over 925 5mm Round Peridot August Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-ROSE-AUG', '', '1', '50', '', '', '100', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Peridot', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Aug-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('97', '18K Rose Gold Over 925 5mm Round Blue Topaz December Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-ROSE-DEC', '', '1', '50', '', '', '100', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Topaz', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Dec-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('98', '18K Rose Gold Over 925 5mm Round Amethyst February Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-ROSE-FEB', '', '1', '50', '', '', '100', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Amethyst', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Feb-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('99', '18K Rose Gold Over 925 5mm Round Garnet January Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-ROSE-JAN', '', '1', '50', '', '', '100', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Garnet', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Jan-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('100', '18K Rose Gold Over 925 5mm Round Ruby July Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-ROSE-JUL', '', '1', '50', '', '', '100', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Ruby', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-July-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('101', '18K Rose Gold Over 925 5mm Round Alexandrite June Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-ROSE-JUN', '', '1', '50', '', '', '100', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Alexandrite', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-June-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('102', '18K Rose Gold Over 925 5mm Round Aquamarine March Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-ROSE-MAR', '', '1', '50', '', '', '100', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Aquamarine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-March-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('103', '18K Rose Gold Over 925 5mm Round Emerald May Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-ROSE-MAY', '', '1', '50', '', '', '100', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Emerald', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-May-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('104', '18K Rose Gold Over 925 5mm Round Citrine November Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-ROSE-NOV', '', '1', '50', '', '', '100', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Citrine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Nov-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('105', '18K Rose Gold Over 925 5mm Round Tourmaline October Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-ROSE-OCT', '', '1', '50', '', '', '100', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Tourmaline', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Oct-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('106', '18K Rose Gold Over 925 5mm Blue Sapphire September Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-ROSE-SEP', '', '1', '50', '', '', '100', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Sapphire', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Sep-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('107', '18K White Gold Over 925 5mm Round Diamond April Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-WHITE-APR', '', '1', '50', '', '', '100', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Diamond', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-April-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('108', '18K White Gold Over 925 5mm Round Peridot August Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-WHITE-AUG', '', '1', '50', '', '', '100', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Peridot', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Aug-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('109', '18K White Gold Over 925 5mm Round Blue Topaz December Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-WHITE-DEC', '', '1', '50', '', '', '100', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Topaz', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Dec-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('110', '18K White Gold Over 925 5mm Round Amethyst February Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-WHITE-FEB', '', '1', '50', '', '', '100', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Amethyst', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Feb-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('111', '18K White Gold Over 925 5mm Round Garnet January Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-WHITE-JAN', '', '1', '50', '', '', '100', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Garnet', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Jan-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('112', '18K White Gold Over 925 5mm Round Ruby July Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-WHITE-JUL', '', '1', '50', '', '', '100', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Ruby', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-July-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('113', '18K White Gold Over 925 5mm Round Alexandrite June Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-WHITE-JUN', '', '1', '50', '', '', '100', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Alexandrite', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-June-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('114', '18K White Gold Over 925 5mm Round Aquamarine March Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-WHITE-MAR', '', '1', '50', '', '', '100', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Aquamarine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-March-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('115', '18K White Gold Over 925 5mm Round Emerald May Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-WHITE-MAY', '', '1', '50', '', '', '100', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Emerald', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-May-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('116', '18K White Gold Over 925 5mm Round Citrine November Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-WHITE-NOV', '', '1', '50', '', '', '100', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Citrine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Nov-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('117', '18K White Gold Over 925 5mm Round Tourmaline October Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-WHITE-OCT', '', '1', '50', '', '', '100', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Tourmaline', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Oct-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('118', '18K White Gold Over 925 5mm Blue Sapphire September Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-WHITE-SEP', '', '1', '50', '', '', '100', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Sapphire', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Sep-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('119', '18K Yellow Gold Over 925 5mm Round Diamond April Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-YELLOW-APR', '', '1', '50', '', '', '100', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Diamond', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-April-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('120', '18K Yellow Gold Over 925 5mm Round Peridot August Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-YELLOW-AUG', '', '1', '50', '', '', '100', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Peridot', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Aug-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('121', '18K Yellow Gold Over 925 5mm Round Blue Topaz December Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-YELLOW-DEC', '', '1', '50', '', '', '100', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Topaz', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Dec-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('122', '18K Yellow Gold Over 925 5mm Round Amethyst February Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-YELLOW-FEB', '', '1', '50', '', '', '100', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Amethyst', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Feb-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('123', '18K Yellow Gold Over 925 5mm Round Garnet January Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-YELLOW-JAN', '', '1', '50', '', '', '100', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Garnet', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Jan-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('124', '18K Yellow Gold Over 925 5mm Round Ruby July Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-YELLOW-JUL', '', '1', '50', '', '', '100', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Ruby', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-July-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('125', '18K Yellow Gold Over 925 5mm Round Alexandrite June Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-YELLOW-JUN', '', '1', '50', '', '', '100', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Alexandrite', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-June-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('126', '18K Yellow Gold Over 925 5mm Round Aquamarine March Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-YELLOW-MAR', '', '1', '50', '', '', '100', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Aquamarine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-March-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('127', '18K Yellow Gold Over 925 5mm Round Emerald May Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-YELLOW-MAY', '', '1', '50', '', '', '100', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Emerald', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-May-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('128', '18K Yellow Gold Over 925 5mm Round Citrine November Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-YELLOW-NOV', '', '1', '50', '', '', '100', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Citrine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Nov-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('129', '18K Yellow Gold Over 925 5mm Round Tourmaline October Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-YELLOW-OCT', '', '1', '50', '', '', '100', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Tourmaline', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Oct-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('130', '18K Yellow Gold Over 925 5mm Blue Sapphire September Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-5MM-YELLOW-SEP', '', '1', '50', '', '', '100', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Sapphire', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '5mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Sep-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('131', '18K Rose Gold Over 925 6mm Round Diamond April Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-ROSE-APR', '', '1', '62.5', '', '', '125', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Diamond', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-April-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('132', '18K Rose Gold Over 925 6mm Round Peridot August Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-ROSE-AUG', '', '1', '62.5', '', '', '125', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Peridot', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Aug-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('133', '18K Rose Gold Over 925 6mm Round Blue Topaz December Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-ROSE-DEC', '', '1', '62.5', '', '', '125', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Topaz', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Dec-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('134', '18K Rose Gold Over 925 6mm Round Amethyst February Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-ROSE-FEB', '', '1', '62.5', '', '', '125', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Amethyst', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Feb-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('135', '18K Rose Gold Over 925 6mm Round Garnet January Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-ROSE-JAN', '', '1', '62.5', '', '', '125', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Garnet', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Jan-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('136', '18K Rose Gold Over 925 6mm Round Ruby July Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-ROSE-JUL', '', '1', '62.5', '', '', '125', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Ruby', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-July-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('137', '18K Rose Gold Over 925 6mm Round Alexandrite June Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-ROSE-JUN', '', '1', '62.5', '', '', '125', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Alexandrite', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-June-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('138', '18K Rose Gold Over 925 6mm Round Aquamarine March Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-ROSE-MAR', '', '1', '62.5', '', '', '125', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Aquamarine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-March-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('139', '18K Rose Gold Over 925 6mm Round Emerald May Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-ROSE-MAY', '', '1', '62.5', '', '', '125', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Emerald', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-May-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('140', '18K Rose Gold Over 925 6mm Round Citrine November Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-ROSE-NOV', '', '1', '62.5', '', '', '125', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Citrine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Nov-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('141', '18K Rose Gold Over 925 6mm Round Tourmaline October Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-ROSE-OCT', '', '1', '62.5', '', '', '125', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Tourmaline', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Oct-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('142', '18K Rose Gold Over 925 6mm Blue Sapphire September Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-ROSE-SEP', '', '1', '62.5', '', '', '125', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Sapphire', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Sep-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('143', '18K White Gold Over 925 6mm Round Diamond April Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-WHITE-APR', '', '1', '62.5', '', '', '125', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Diamond', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-April-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('144', '18K White Gold Over 925 6mm Round Peridot August Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-WHITE-AUG', '', '1', '62.5', '', '', '125', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Peridot', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Aug-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('145', '18K White Gold Over 925 6mm Round Blue Topaz December Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-WHITE-DEC', '', '1', '62.5', '', '', '125', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Topaz', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Dec-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('146', '18K White Gold Over 925 6mm Round Amethyst February Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-WHITE-FEB', '', '1', '62.5', '', '', '125', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Amethyst', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Feb-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('147', '18K White Gold Over 925 6mm Round Garnet January Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-WHITE-JAN', '', '1', '62.5', '', '', '125', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Garnet', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Jan-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('148', '18K White Gold Over 925 6mm Round Ruby July Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-WHITE-JUL', '', '1', '62.5', '', '', '125', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Ruby', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-July-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('149', '18K White Gold Over 925 6mm Round Alexandrite June Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-WHITE-JUN', '', '1', '62.5', '', '', '125', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Alexandrite', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-June-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('150', '18K White Gold Over 925 6mm Round Aquamarine March Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-WHITE-MAR', '', '1', '62.5', '', '', '125', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Aquamarine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-March-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('151', '18K White Gold Over 925 6mm Round Emerald May Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-WHITE-MAY', '', '1', '62.5', '', '', '125', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Emerald', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-May-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('152', '18K White Gold Over 925 6mm Round Citrine November Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-WHITE-NOV', '', '1', '62.5', '', '', '125', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Citrine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Nov-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('153', '18K White Gold Over 925 6mm Round Tourmaline October Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-WHITE-OCT', '', '1', '62.5', '', '', '125', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Tourmaline', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Oct-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('154', '18K White Gold Over 925 6mm Blue Sapphire September Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-WHITE-SEP', '', '1', '62.5', '', '', '125', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Sapphire', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Sep-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('155', '18K Yellow Gold Over 925 6mm Round Diamond April Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-YELLOW-APR', '', '1', '62.5', '', '', '125', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Diamond', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-April-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('156', '18K Yellow Gold Over 925 6mm Round Peridot August Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-YELLOW-AUG', '', '1', '62.5', '', '', '125', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Peridot', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Aug-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('157', '18K Yellow Gold Over 925 6mm Round Blue Topaz December Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-YELLOW-DEC', '', '1', '62.5', '', '', '125', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Topaz', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Dec-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('158', '18K Yellow Gold Over 925 6mm Round Amethyst February Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-YELLOW-FEB', '', '1', '62.5', '', '', '125', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Amethyst', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Feb-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('159', '18K Yellow Gold Over 925 6mm Round Garnet January Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-YELLOW-JAN', '', '1', '62.5', '', '', '125', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Garnet', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Jan-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('160', '18K Yellow Gold Over 925 6mm Round Ruby July Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-YELLOW-JUL', '', '1', '62.5', '', '', '125', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Ruby', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-July-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('161', '18K Yellow Gold Over 925 6mm Round Alexandrite June Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-YELLOW-JUN', '', '1', '62.5', '', '', '125', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Alexandrite', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-June-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('162', '18K Yellow Gold Over 925 6mm Round Aquamarine March Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-YELLOW-MAR', '', '1', '62.5', '', '', '125', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Aquamarine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-March-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('163', '18K Yellow Gold Over 925 6mm Round Emerald May Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-YELLOW-MAY', '', '1', '62.5', '', '', '125', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Emerald', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-May-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('164', '18K Yellow Gold Over 925 6mm Round Citrine November Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-YELLOW-NOV', '', '1', '62.5', '', '', '125', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Citrine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Nov-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('165', '18K Yellow Gold Over 925 6mm Round Tourmaline October Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-YELLOW-OCT', '', '1', '62.5', '', '', '125', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Tourmaline', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Oct-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('166', '18K Yellow Gold Over 925 6mm Blue Sapphire September Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-6MM-YELLOW-SEP', '', '1', '62.5', '', '', '125', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Sapphire', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '6mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Sep-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('167', '18K Rose Gold Over 925 7mm Round Diamond April Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-ROSE-APR', '', '1', '75', '', '', '150', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Diamond', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-April-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('168', '18K Rose Gold Over 925 7mm Round Peridot August Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-ROSE-AUG', '', '1', '75', '', '', '150', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Peridot', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Aug-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('169', '18K Rose Gold Over 925 7mm Round Blue Topaz December Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-ROSE-DEC', '', '1', '75', '', '', '150', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Topaz', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Dec-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('170', '18K Rose Gold Over 925 7mm Round Amethyst February Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-ROSE-FEB', '', '1', '75', '', '', '150', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Amethyst', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Feb-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('171', '18K Rose Gold Over 925 7mm Round Garnet January Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-ROSE-JAN', '', '1', '75', '', '', '150', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Garnet', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Jan-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('172', '18K Rose Gold Over 925 7mm Round Ruby July Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-ROSE-JUL', '', '1', '75', '', '', '150', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Ruby', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-July-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('173', '18K Rose Gold Over 925 7mm Round Alexandrite June Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-ROSE-JUN', '', '1', '75', '', '', '150', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Alexandrite', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-June-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('174', '18K Rose Gold Over 925 7mm Round Aquamarine March Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-ROSE-MAR', '', '1', '75', '', '', '150', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Aquamarine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-March-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('175', '18K Rose Gold Over 925 7mm Round Emerald May Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-ROSE-MAY', '', '1', '75', '', '', '150', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Emerald', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-May-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('176', '18K Rose Gold Over 925 7mm Round Citrine November Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-ROSE-NOV', '', '1', '75', '', '', '150', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Citrine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Nov-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('177', '18K Rose Gold Over 925 7mm Round Tourmaline October Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-ROSE-OCT', '', '1', '75', '', '', '150', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Tourmaline', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Oct-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('178', '18K Rose Gold Over 925 7mm Blue Sapphire September Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-ROSE-SEP', '', '1', '75', '', '', '150', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Sapphire', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Sep-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('179', '18K White Gold Over 925 7mm Round Diamond April Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-WHITE-APR', '', '1', '75', '', '', '150', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Diamond', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-April-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('180', '18K White Gold Over 925 7mm Round Peridot August Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-WHITE-AUG', '', '1', '75', '', '', '150', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Peridot', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Aug-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('181', '18K White Gold Over 925 7mm Round Blue Topaz December Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-WHITE-DEC', '', '1', '75', '', '', '150', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Topaz', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Dec-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('182', '18K White Gold Over 925 7mm Round Amethyst February Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-WHITE-FEB', '', '1', '75', '', '', '150', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Amethyst', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Feb-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('183', '18K White Gold Over 925 7mm Round Garnet January Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-WHITE-JAN', '', '1', '75', '', '', '150', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Garnet', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Jan-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('184', '18K White Gold Over 925 7mm Round Ruby July Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-WHITE-JUL', '', '1', '75', '', '', '150', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Ruby', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-July-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('185', '18K White Gold Over 925 7mm Round Alexandrite June Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-WHITE-JUN', '', '1', '75', '', '', '150', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Alexandrite', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-June-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('186', '18K White Gold Over 925 7mm Round Aquamarine March Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-WHITE-MAR', '', '1', '75', '', '', '150', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Aquamarine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-March-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('187', '18K White Gold Over 925 7mm Round Emerald May Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-WHITE-MAY', '', '1', '75', '', '', '150', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Emerald', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-May-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('188', '18K White Gold Over 925 7mm Round Citrine November Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-WHITE-NOV', '', '1', '75', '', '', '150', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Citrine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Nov-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('189', '18K White Gold Over 925 7mm Round Tourmaline October Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-WHITE-OCT', '', '1', '75', '', '', '150', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Tourmaline', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Oct-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('190', '18K White Gold Over 925 7mm Blue Sapphire September Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-WHITE-SEP', '', '1', '75', '', '', '150', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Sapphire', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Sep-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('191', '18K Yellow Gold Over 925 7mm Round Diamond April Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-YELLOW-APR', '', '1', '75', '', '', '150', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Diamond', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-April-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('192', '18K Yellow Gold Over 925 7mm Round Peridot August Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-YELLOW-AUG', '', '1', '75', '', '', '150', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Peridot', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Aug-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('193', '18K Yellow Gold Over 925 7mm Round Blue Topaz December Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-YELLOW-DEC', '', '1', '75', '', '', '150', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Topaz', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Dec-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('194', '18K Yellow Gold Over 925 7mm Round Amethyst February Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-YELLOW-FEB', '', '1', '75', '', '', '150', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Amethyst', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Feb-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('195', '18K Yellow Gold Over 925 7mm Round Garnet January Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-YELLOW-JAN', '', '1', '75', '', '', '150', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Garnet', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Jan-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('196', '18K Yellow Gold Over 925 7mm Round Ruby July Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-YELLOW-JUL', '', '1', '75', '', '', '150', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Ruby', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-July-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('197', '18K Yellow Gold Over 925 7mm Round Alexandrite June Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-YELLOW-JUN', '', '1', '75', '', '', '150', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Alexandrite', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-June-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('198', '18K Yellow Gold Over 925 7mm Round Aquamarine March Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-YELLOW-MAR', '', '1', '75', '', '', '150', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Aquamarine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-March-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('199', '18K Yellow Gold Over 925 7mm Round Emerald May Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-YELLOW-MAY', '', '1', '75', '', '', '150', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Emerald', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-May-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('200', '18K Yellow Gold Over 925 7mm Round Citrine November Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-YELLOW-NOV', '', '1', '75', '', '', '150', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Citrine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Nov-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('201', '18K Yellow Gold Over 925 7mm Round Tourmaline October Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-YELLOW-OCT', '', '1', '75', '', '', '150', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Tourmaline', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Oct-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('202', '18K Yellow Gold Over 925 7mm Blue Sapphire September Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-7MM-YELLOW-SEP', '', '1', '75', '', '', '150', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Sapphire', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '7mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Sep-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('203', '18K Rose Gold Over 925 8mm Round Diamond April Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-ROSE-APR', '', '1', '87.5', '', '', '175', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Diamond', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-April-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('204', '18K Rose Gold Over 925 8mm Round Peridot August Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-ROSE-AUG', '', '1', '87.5', '', '', '175', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Peridot', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Aug-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('205', '18K Rose Gold Over 925 8mm Round Blue Topaz December Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-ROSE-DEC', '', '1', '87.5', '', '', '175', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Topaz', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Dec-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('206', '18K Rose Gold Over 925 8mm Round Amethyst February Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-ROSE-FEB', '', '1', '87.5', '', '', '175', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Amethyst', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Feb-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('207', '18K Rose Gold Over 925 8mm Round Garnet January Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-ROSE-JAN', '', '1', '87.5', '', '', '175', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Garnet', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Jan-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('208', '18K Rose Gold Over 925 8mm Round Ruby July Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-ROSE-JUL', '', '1', '87.5', '', '', '175', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Ruby', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-July-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('209', '18K Rose Gold Over 925 8mm Round Alexandrite June Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-ROSE-JUN', '', '1', '87.5', '', '', '175', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Alexandrite', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-June-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('210', '18K Rose Gold Over 925 8mm Round Aquamarine March Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-ROSE-MAR', '', '1', '87.5', '', '', '175', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Aquamarine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-March-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('211', '18K Rose Gold Over 925 8mm Round Emerald May Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-ROSE-MAY', '', '1', '87.5', '', '', '175', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Emerald', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-May-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('212', '18K Rose Gold Over 925 8mm Round Citrine November Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-ROSE-NOV', '', '1', '87.5', '', '', '175', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Citrine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Nov-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('213', '18K Rose Gold Over 925 8mm Round Tourmaline October Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-ROSE-OCT', '', '1', '87.5', '', '', '175', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Tourmaline', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Oct-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('214', '18K Rose Gold Over 925 8mm Blue Sapphire September Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-ROSE-SEP', '', '1', '87.5', '', '', '175', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Rose Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Sapphire', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Sep-RG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('215', '18K White Gold Over 925 8mm Round Diamond April Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-WHITE-APR', '', '1', '87.5', '', '', '175', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Diamond', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-April-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('216', '18K White Gold Over 925 8mm Round Peridot August Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-WHITE-AUG', '', '1', '87.5', '', '', '175', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Peridot', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Aug-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('217', '18K White Gold Over 925 8mm Round Blue Topaz December Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-WHITE-DEC', '', '1', '87.5', '', '', '175', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Topaz', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Dec-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('218', '18K White Gold Over 925 8mm Round Amethyst February Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-WHITE-FEB', '', '1', '87.5', '', '', '175', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Amethyst', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Feb-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('219', '18K White Gold Over 925 8mm Round Garnet January Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-WHITE-JAN', '', '1', '87.5', '', '', '175', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Garnet', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Jan-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('220', '18K White Gold Over 925 8mm Round Ruby July Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-WHITE-JUL', '', '1', '87.5', '', '', '175', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Ruby', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-July-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('221', '18K White Gold Over 925 8mm Round Alexandrite June Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-WHITE-JUN', '', '1', '87.5', '', '', '175', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Alexandrite', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-June-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('222', '18K White Gold Over 925 8mm Round Aquamarine March Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-WHITE-MAR', '', '1', '87.5', '', '', '175', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Aquamarine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-March-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('223', '18K White Gold Over 925 8mm Round Emerald May Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-WHITE-MAY', '', '1', '87.5', '', '', '175', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Emerald', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-May-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('224', '18K White Gold Over 925 8mm Round Citrine November Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-WHITE-NOV', '', '1', '87.5', '', '', '175', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Citrine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Nov-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('225', '18K White Gold Over 925 8mm Round Tourmaline October Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-WHITE-OCT', '', '1', '87.5', '', '', '175', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Tourmaline', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Oct-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('226', '18K White Gold Over 925 8mm Blue Sapphire September Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-WHITE-SEP', '', '1', '87.5', '', '', '175', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'White Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Sapphire', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Sep-WG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('227', '18K Yellow Gold Over 925 8mm Round Diamond April Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-YELLOW-APR', '', '1', '87.5', '', '', '175', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Diamond', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-April-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('228', '18K Yellow Gold Over 925 8mm Round Peridot August Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-YELLOW-AUG', '', '1', '87.5', '', '', '175', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Peridot', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Aug-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('229', '18K Yellow Gold Over 925 8mm Round Blue Topaz December Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-YELLOW-DEC', '', '1', '87.5', '', '', '175', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Topaz', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Dec-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('230', '18K Yellow Gold Over 925 8mm Round Amethyst February Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-YELLOW-FEB', '', '1', '87.5', '', '', '175', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Amethyst', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Feb-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('231', '18K Yellow Gold Over 925 8mm Round Garnet January Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-YELLOW-JAN', '', '1', '87.5', '', '', '175', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Garnet', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Jan-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('232', '18K Yellow Gold Over 925 8mm Round Ruby July Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-YELLOW-JUL', '', '1', '87.5', '', '', '175', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Ruby', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-July-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('233', '18K Yellow Gold Over 925 8mm Round Alexandrite June Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-YELLOW-JUN', '', '1', '87.5', '', '', '175', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Alexandrite', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-June-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('234', '18K Yellow Gold Over 925 8mm Round Aquamarine March Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-YELLOW-MAR', '', '1', '87.5', '', '', '175', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Aquamarine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-March-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('235', '18K Yellow Gold Over 925 8mm Round Emerald May Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-YELLOW-MAY', '', '1', '87.5', '', '', '175', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Emerald', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-May-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('236', '18K Yellow Gold Over 925 8mm Round Citrine November Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-YELLOW-NOV', '', '1', '87.5', '', '', '175', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Citrine', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Nov-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('237', '18K Yellow Gold Over 925 8mm Round Tourmaline October Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-YELLOW-OCT', '', '1', '87.5', '', '', '175', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Tourmaline', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Oct-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('238', '18K Yellow Gold Over 925 8mm Blue Sapphire September Birthstone Stud Earrings', 'Top Selling/Jewelry/Earrings', '', 'I-CNC-STUD-925-8MM-YELLOW-SEP', '', '1', '87.5', '', '', '175', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', '', 'Earrings', 'Stud', 'Yellow Gold Plated', 'Sterling Silver, 925 parts per 1000', '', '', 'Blue Sapphire', '', 'Lab-Created', '', 'Round', 'AAA', '', 'Very Good', '4-Prongs', '2', 'Women\'s', '', '', '', '', '', '', '8mm', '', 'Butterfly', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164321', '', '', '0', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/MM5DEMZR2NX-Sep-YG.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('239', '925 Silver Bead Yellow White Spot Brown Murano Glass Charms Bracelet #2036', 'Top Selling/Jewelry/Bracelet', '', 'C-CN-Pandoracharm-2036', '', '1', '45', '', '', '69', '1', '1', '1', '1', '4', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Affinity Diamond Jewelry', 'Bracelet', 'Bead', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Womens', '', '', '', '', '', '', '', 'Glass', '', '', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164315', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-China-Pandoracharm-2036-10.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-China-Pandoracharm-2036-11.jpg', '', '');
INSERT INTO `fry_products` VALUES ('240', '925 Sterling Silver Bead Multi Color Murano Glass Charms Bracelet #2040', 'Top Selling/Jewelry/Bracelet', '', 'C-CN-Pandoracharm-2040', '', '1', '45', '', '', '69', '1', '1', '1', '1', '6', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Affinity Gold', 'Bracelet', 'Bead', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Womens', '', '', '', '', '', '', '', 'Glass', '', '', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164315', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-China-Pandoracharm-2040-100.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-China-Pandoracharm-2040-101.jpg', '', '');
INSERT INTO `fry_products` VALUES ('241', '925 Sterling Silver Bead Multi Color Murano Glass Charms Bracelet #2043', 'Top Selling/Jewelry/Bracelet', '', 'C-CN-Pandoracharm-2043', '', '1', '45', '', '', '69', '1', '1', '1', '1', '7', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Affy Pawn Shop', 'Bracelet', 'Bead', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Womens', '', '', '', '', '', '', '', 'Glass', '', '', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164315', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-China-Pandoracharm-2043-100.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-China-Pandoracharm-2043-101.jpg', '', '');
INSERT INTO `fry_products` VALUES ('242', '925 Sterling Silver Bead White Swirl Pink Murano Glass Charms Bracelet #2044', 'Top Selling/Jewelry/Bracelet', '', 'C-CN-Pandoracharm-2044', '', '1', '45', '', '', '69', '1', '1', '1', '1', '7', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Diamant Jewels', 'Bracelet', 'Bead', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Womens', '', '', '', '', '', '', '', 'Glass', '', '', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164315', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-China-Pandoracharm-2044-100.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-China-Pandoracharm-2044-101.jpg', '', '');
INSERT INTO `fry_products` VALUES ('243', '925 Sterling Silver Bead Blue Flower Pink Murano Glass Charms Bracelet #2048', 'Top Selling/Jewelry/Bracelet', '', 'C-CN-Pandoracharm-2048', '', '1', '45', '', '', '69', '1', '1', '1', '1', '7', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Jewelry Auction House', 'Bracelet', 'Bead', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Womens', '', '', '', '', '', '', '', 'Glass', '', '', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164315', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-China-Pandoracharm-2048-100.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-China-Pandoracharm-2048-101.jpg', '', '');
INSERT INTO `fry_products` VALUES ('244', '925 Silver Bead Green, White Flower Brown Murano Glass Charms Bracelet #2051', 'Top Selling/Jewelry/Bracelet', '', 'C-CN-Pandoracharm-2051', '', '1', '45', '', '', '69', '1', '1', '1', '1', '6', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Affinity Diamond Jewelry', 'Bracelet', 'Bead', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Womens', '', '', '', '', '', '', '', 'Glass', '', '', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164315', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-China-Pandoracharm-2051-100.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-China-Pandoracharm-2051-101.jpg', '', '');
INSERT INTO `fry_products` VALUES ('245', '925 Sterling Bead Silver Spot Pink Ice Murano Glass Charms Bracelet #2052', 'Top Selling/Jewelry/Bracelet', '', 'C-CN-Pandoracharm-2052', '', '1', '45', '', '', '69', '1', '1', '1', '1', '6', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Affinity Engagement Jewels', 'Bracelet', 'Bead', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Womens', '', '', '', '', '', '', '', 'Glass', '', '', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164315', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-China-Pandoracharm-2052-100.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-China-Pandoracharm-2052-101.jpg', '', '');
INSERT INTO `fry_products` VALUES ('246', 'Sterling Silver Bead Brwon Strips Pink Ice Murano Glass Charms Bracelet #2054', 'Top Selling/Jewelry/Bracelet', '', 'C-CN-Pandoracharm-2054', '', '1', '45', '', '', '69', '1', '1', '1', '1', '7', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Affinity Fine Jewelry', 'Bracelet', 'Bead', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Womens', '', '', '', '', '', '', '', 'Glass', '', '', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164315', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-China-Pandoracharm-2054-100.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-China-Pandoracharm-2054-101.jpg', '', '');
INSERT INTO `fry_products` VALUES ('247', '925 Silver Bead Yellow Pink Flower Green Murano Glass Charms Bracelet #2060', 'Top Selling/Jewelry/Bracelet', '', 'C-CN-Pandoracharm-2060', '', '1', '45', '', '', '69', '1', '1', '1', '1', '8', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Findings N Jewelry', 'Bracelet', 'Bead', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Womens', '', '', '', '', '', '', '', 'Glass', '', '', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164315', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-China-Pandoracharm-2060-100.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-China-Pandoracharm-2060-101.jpg', '', '');
INSERT INTO `fry_products` VALUES ('248', '925 Silver Bead White Yellow Flower White Murano Glass Charms Bracelet #2062', 'Top Selling/Jewelry/Bracelet', '', 'C-CN-Pandoracharm-2062', '', '1', '45', '', '', '69', '1', '1', '1', '1', '7', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Gemstone Place', 'Bracelet', 'Bead', 'Sterling Silver', '', '925 parts per 1000', '', '', '', '', '', '', '', '', '', '', '', 'Womens', '', '', '', '', '', '', '', 'Glass', '', '', 'Special Occasion', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '164315', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-China-Pandoracharm-2062-100.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/C-China-Pandoracharm-2062-101.jpg', '', '');
INSERT INTO `fry_products` VALUES ('249', 'QVC Steel by Design Stainless Double Row Navy Leather Average Bracelet', 'Top Selling/Jewelry/Bracelet', '', '22016-J284817-NEVY-AVE', '<p style=\"line-height: 19px; margin: 0px 0px 12px; color: rgb(87, 68, 79); font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; ', '1', '29.99', '', '', '89.97', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Steel by Design', 'Bracelet', 'Double Row', 'Stainless Steel', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Womens', '', '', '', '', '', '', '', '', '7.75', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50637', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j284817-navy-large-1.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j284817-navy-large-2.jpg', '', '');
INSERT INTO `fry_products` VALUES ('250', 'Stainless Polished Bead Multi-Strand Braided Orange Leather Aver Bracelet', 'Top Selling/Jewelry/Bracelet', '', '22016-J289759-ORANGE-AVERAGE', '<p style=\"line-height: 19px; margin: 0px 0px 12px; color: rgb(87, 68, 79); font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; ', '1', '32.99', '', '', '98.97', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Steel by Design', 'Bracelet', 'Multi-Strand', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Womens', '', '', '', '', '', '', '', '', '7.25', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50637', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j289759-orange-small-aj-1.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('251', 'QVC Stainless Bead Multi-Strand Braided Turquoise Leather Average Bracelet', 'Top Selling/Jewelry/Bracelet', '', '22016-A-J289759-TUE-AVERAGE', '<p style=\"line-height: 19px; margin: 0px 0px 12px; color: rgb(87, 68, 79); font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; ', '1', '32.99', '', '', '98.97', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Steel by Design', 'Bracelet', 'Multi-Strand', 'Stainless steel', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Womens', '', '', '', '', '', '', '', '', '7.25', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50637', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j289759-turquaise-large-aj-1.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('252', 'QVC Steel by Design Stainless Steel Double Row Red Leather Average Bracelet', 'Top Selling/Jewelry/Bracelet', '', '22016-A-J284817-RED-AVE', '<p style=\"line-height: 19px; margin: 0px 0px 12px; color: rgb(87, 68, 79); font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; ', '1', '29.99', '', '', '89.97', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Steel by Design', 'Bracelet', 'Double Row', 'Stainless Steel', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Womens', '', '', '', '', '', '', '', '', '7.75', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50637', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/j284817_172.201.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('253', 'QVC Steel by Design Stainless Double Row Camel Leather Average Bracelet', 'Top Selling/Jewelry/Bracelet', '', '22016-A-J284817-CAMEL-AVERAGE', '<p style=\"line-height: 19px; margin: 0px 0px 12px; color: rgb(87, 68, 79); font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; ', '1', '29.99', '', '', '89.97', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Steel by Design', 'Bracelet', 'Double Row', 'Stainless Steel', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Womens', '', '', '', '', '', '', '', '', '7.75', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50637', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j284817-camel-average-1.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('254', 'Steel by Design Stainless Steel Double Row Dark Brown Leather Average Bracelet', 'Top Selling/Jewelry/Bracelet', '', '22016-A-J284817-BROWN-AVERAGE', '<p style=\"line-height: 19px; margin: 0px 0px 12px; color: rgb(87, 68, 79); font-family: Arial, Helvetica, sans-serif; font-size: 14px; font-style: normal; font-variant: normal; font-weight: normal; letter-spacing: normal; orphans: auto; text-align: left; ', '1', '29.99', '', '', '89.97', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Steel by Design', 'Bracelet', 'Double Row', 'Stainless Steel', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Womens', '', '', '', '', '', '', '', '', '7.75', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50637', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j284817-ss-db-aj-1.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('255', 'QVC Steel By Design Magnesite & Stainless Steel Bead Stretch Bracelet', 'Top Selling/Jewelry/Bracelet', '', '22016-A-J148565-blue', '<p> 	Around and around they go--to create one stunning piece of jewelry. This stretch bracelet alternates round stainless steel beads with magnesite beads for a circular style that&#39;s oh-so chic. From Steel by Design Jewelry.</p> <ul> 	<li> 		Stainless', '1', '49.99', '', '', '149.97', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Steel By Design', 'Bracelet', 'Stretch', 'Stainless Steel', '', '', '', 'Beads ', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Italy', '', '', '', '', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50637', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/qh-j148565-blue-1.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/qh-j148565-blue-2.jpg', '', '');
INSERT INTO `fry_products` VALUES ('256', 'QVC Steel by Design Domed Black Crystal Hinged Average Bangle Bracelet', 'Top Selling/Jewelry/Bracelet', '', '22016-A-J280115', '<p> 	&nbsp;</p> <p> 	&nbsp;</p> <p> 	&nbsp;</p> <p> 	<meta content=\"en-us\" http-equiv=\"Content-Language\" /> </p> <p> 	&nbsp;</p> <p> 	&nbsp;</p> <p> 	&nbsp;</p> <p> 	<meta content=\"Microsoft FrontPage 5.0\" name=\"GENERATOR\" /> </p> <p> 	&nbsp;</p> <p> 	&nb', '1', '39.99', '', '', '119.97', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Steel by Design', 'Bracelet', 'Hinged', 'Stainless Steel', '', '', '', 'Crystal', '', '', 'Black', 'Round', '', '', '', '', '', 'Women', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50637', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j280115-black-ss-1.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j280115-black-ss-2.jpg', '', '');
INSERT INTO `fry_products` VALUES ('257', 'QVC Steel by Design Domed Clear Crystal Hinged Average Bangle Bracelet', 'Top Selling/Jewelry/Bracelet', '', '22016-J280115-SA', '<html> <head> <meta name=\"GENERATOR\" content=\"Microsoft FrontPage 5.0\"> <meta name=\"ProgId\" content=\"FrontPage.Editor.Document\"> <meta http-equiv=\"Content-Type\" content=\"text/html; charset=windows-1252\"> <title>New Page 1</title> </head> <body> <p style=\"', '1', '29.99', '', '', '89.97', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Steel by Design', 'Bracelet', 'Bangle', 'Stainless Steel', '', '', '', 'Crystal', '', '', 'Clear', 'Round', '', '', '', '', '', 'Womens', 'White', '', '', '', 'China', '', '', '', '', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50637', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j280115-ss-cry-clear-aj-1.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('258', 'QVC Steel by Design Stainless Steel 7.25\" Rolo Link Bracelet', 'Top Selling/Jewelry/Bracelet', '', '22016-J148930-STEEL', '<p> 	From Steel by Design Jewelry.</p> <ul> 	<li> 		<b>Rolo bracelet</b></li> 	<li> 		Stainless steel</li> 	<li> 		Lobster claw clasp</li> 	<li> 		Measures approximately 7-1/2&quot;L x 1/4&quot;W</li> 	<li> 		Made in China</li> </ul> ', '1', '39.99', '', '', '119.97', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Steel by Design', 'Bracelet', 'Rolo Link', 'Stainless Steel', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', '', '', '', '', '', '', '', '', '7.25', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50637', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j148930-rolo-ss-1.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('259', 'QVC Steel by Design Double Woven Oval Link Bracelet', 'Top Selling/Jewelry/Bracelet', '', '22016-J283996-W', '<p> 	&nbsp;</p> <p> 	&nbsp;</p> <p> 	&nbsp;</p> <p> 	&nbsp;</p> <p> 	<meta content=\"en-us\" http-equiv=\"Content-Language\" /> </p> <p> 	&nbsp;</p> <p> 	&nbsp;</p> <p> 	&nbsp;</p> <p> 	&nbsp;</p> <p> 	<meta content=\"Microsoft FrontPage 5.0\" name=\"GENERATOR\" ', '1', '69.99', '', '', '209.97', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does Not Apply', 'Steel by Design', 'Bracelet', 'Link', 'Stainless steel', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Womens', 'White', '', '', '', '', '', '', '', '', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50637', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/j283996_027.201.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('260', 'QVC Stainless Steel Polished Bead Strand Braided Black Leather Bracelet Average', 'Top Selling/Jewelry/Bracelet', '', '22016-J289759-Leather-Average', '', '1', '32.99', '', '', '98.97', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does Not Apply', 'Steel by Design', 'Bracelet', 'Multi-Strand', 'Stainless Steel', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', '', '', '', '', '', '', '', '', '7.25', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50637', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j289759-black-aver-1.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('261', 'OVC Sold Out Stainless Steel Double Row White Leather Bracelet Average', 'Top Selling/Jewelry/Bracelet', '', '22016-A-J284817-ss-Whi', '', '1', '29.99', '', '', '89.97', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does Not Apply', 'Steel by Design', 'Bracelet', 'Double Row', 'Stainless Steel', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', '', '', '', '', '', '', '', '', '7.25', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50637', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/22016-A-J284817-ss-Whi-1.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('262', 'QVC Steel By Design Stainless Steel Round Hoop Silver Earrings', 'Top Selling/Jewelry/Earrings', '', '22016-J148930-ST-HOOP', '<p> 	From Steel by Design Jewelry.</p> <ul> 	<li> 		Round hoop earrings: snap-bar closure; measures approximately 1-3/4&quot;L x 1/16&quot;W</li> 	<li> 		Stainless steel</li> 	<li> 		Earrings for pierced ears only</li> 	<li> 		Made in China</li> </ul> ', '1', '30', '', '', '90', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Steel by Design', 'Earrings', 'Hoop', 'Stainless Steel', '', '', '', 'No Stone', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'China', '', '', '', 'Snap-bar closure', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50647', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/jah-j148930-1.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/jah-j148930-2.jpg', '', '');
INSERT INTO `fry_products` VALUES ('263', 'QVC Steel By Design Stainless Steel Open Heart Dangle Earrings', 'Top Selling/Jewelry/Earrings', '', 'AU-QH-J148930-OPENHEART', '<p> 	&nbsp;</p> <p> 	<meta content=\"Microsoft FrontPage 5.0\" name=\"GENERATOR\" /> </p> <p> 	&nbsp;</p> <p> 	<meta content=\"FrontPage.Editor.Document\" name=\"ProgId\" /> </p> <p> 	&nbsp;</p> <p> 	<meta content=\"text/html; charset=windows-1252\" http-equiv=\"Con', '1', '40', '', '', '120', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Steel by Design', 'Earrings', 'Drop/Dangle', 'Stainless Steel', '', '', '', 'No Stone', '', '', '', '', '', '', '', '', '', '', 'Silver', '', '', '', 'China', '', '', '', 'Shepherd\'s hook', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50647', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j148930-openheart-1.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j148930-openheart-2.jpg', '', '');
INSERT INTO `fry_products` VALUES ('264', 'QVC Steel By Design Stainless Steel Oval Dangle Earrings', 'Top Selling/Jewelry/Earrings', '', 'AU-QH-J148930-OVAL-SS', '<p> 	<br /> 	So budget friendly--just do the math. The price per gift is so incredibly low, it makes sense--and cents--to stock up on the affordable gifts for the holidays and beyond. Gift-giving without the hassle? It&#39;s like a gift for yourself.<br /', '1', '9.99', '', '', '29.97', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Steel By Design', 'Earrings', 'Drop/Dangle', 'Stainless Steel', '', '', '', 'No Stone', '', '', '', '', '', '', '', '', '', '', 'Silver', '', '', '', 'China', '', '', '', 'Pierced ears only', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50647', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j148930-oval-ss-1.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j148930-oval-ss-2.jpg', '', '');
INSERT INTO `fry_products` VALUES ('265', 'QVC Sold Out Steel by Design Stainless Steel Round bead Earrings', 'Top Selling/Jewelry/Earrings', '', '22016-J148930-SS-Round', '<p> 	From Steel by Design Jewelry.</p> <ul> 	<li> 		Round bead earrings: shepherd&#39;s hooks; measures approximately 7/8&quot;L x 3/8&quot;W</li> 	<li> 		Stainless steel</li> 	<li> 		Pierced ears only</li> 	<li> 		Made in China</li> </ul> ', '1', '25', '', '', '75', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Steel by Design', 'Earrings', 'Drop/Dangle', 'Stainless Steel', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Silver', '', '', '', 'China', '', '', '', 'shepherd\'s hooks', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50647', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j148930-ss-round-1.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j148930-ss-round-2.jpg', '', '');
INSERT INTO `fry_products` VALUES ('266', 'QVC Goldtone Stainless Steel High Polished Twisted Hoop Earrings', 'Top Selling/Jewelry/Earrings', '', '22016-J291562-SS-YELLOW', '<p> 	Stay looped in. Sleek and twisty, these earrings are a chic way to keep things casual. From Steel by Design Jewelry.<br /> 	<br /> 	<b>Goldtone</b></p> <ul> 	<li> 		Stainless steel</li> 	<li> 		Highly polished; twisted hoop design</li> 	<li> 		Snap b', '1', '26.99', '', '', '80.97', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Steel by Design', 'Earrings', 'Hoop', 'Stainless steel', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Womens', 'Yellow', '', '', '', '', '', '', '', 'Snap Closure', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50647', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/j291562.201.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('267', 'QVC Stainless Steel High Polished Twisted Hoop Earrings', 'Top Selling/Jewelry/Earrings', '', 'QH-J291562-SS-SILVER', '<p> 	Stay looped in. Sleek and twisty, these earrings are a chic way to keep things casual. From Steel by Design Jewelry.<br /> 	<br /> 	<b>Stainless Steel</b></p> <ul> 	<li> 		Stainless steel</li> 	<li> 		Highly polished; twisted hoop design</li> 	<li> 	', '1', '29.99', '', '', '89.97', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Steel by Design', 'Earrings', 'Hoop', 'Stainless steel', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Womens', 'Silver', '', '', '', '', '', '', '', 'Snap Closure', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50647', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/qh-j291562-ss-silver-1.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('268', 'QVC Steel by Design Rosetone High Polished Twisted Hoop Earring', 'Top Selling/Jewelry/Earrings', '', '22016-J291562-RT', '<p> 	Stay looped in. Sleek and twisty, these earrings are a chic way to keep things casual. From Steel by Design Jewelry.</p> <ul> 	<li> 		<b>Rosetone</b></li> 	<li> 		Highly polished; twisted hoop design</li> 	<li> 		Snap bar closures, for pierced ears o', '1', '26.99', '', '', '80.97', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Steel by Design', 'Earrings', 'Hoop', 'Goldtone', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Womens', '', '', '', '', '', '', '', '', 'Snap Closure', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50647', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/qh-j291562-ss-rose-1.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('269', 'QVC Steel by Design Stainless Steel Round Stud Earrings', 'Top Selling/Jewelry/Earrings', '', '22016-J148930-SS-STUD-ROUND-AG', '<p> 	The most stylish stocking stuffers, ever--just add a bow! Each cool, contemporary piece is crafted from durable stainless steel for an icy gleam and an upscale look. The exciting variety ensures there&#39;s a style to suit everyone--bffs, baby sitter', '1', '19', '', '', '57', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does Not Apply', 'Steel by Design', 'Earrings', 'Stud', 'Stainless Steel', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Womens', 'Silver', '', '', '', '', '', '', '', '', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50647', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j148930-ss-stud-round-1.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j148930-ss-stud-round-2.jpg', '', '');
INSERT INTO `fry_products` VALUES ('270', 'QVC Steel by Design Stainless Steel Hoop Earrings', 'Top Selling/Jewelry/Earrings', '', '22016-J148930', '<div role=\"main\"> 	<div itemscope=\"\" itemtype=\"http://schema.org/Product\"> 		&nbsp;</div> </div> <div role=\"main\"> 	&nbsp;</div> <table border=\"0\" cellpadding=\"0\" cellspacing=\"0\" style=\"border-collapse:  collapse;width:350pt\" width=\"467\"> 	<colgroup> 		<c', '1', '30', '', '', '90', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Steel by Design', 'Earrings', 'Hoop', 'Stainless Steel', '', '', '', '', '', '', '', '', '', '', '', '', '', 'Women\'s', 'Silver', '', '', '', '', '', '', '', '', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50647', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j148930-st-hoop-1.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('271', 'QVC Steel by Design Stainless Steel Emerald Cut Crystal Hoop Earrings', 'Top Selling/Jewelry/Earrings', '', '22016-J284418', '<p> 	<b>Steel by Design Stainless Steel Simulated Emerald Cut Butter Fly Stud Earrings</b></p> <ul> 	<li> 		Metal : Stainless Steel</li> 	<li> 		Color : White</li> 	<li> 		Stone : Simulated Diamond</li> 	<li> 		Stone Shape : Emerald</li> </ul> ', '1', '99.99', '', '', '299.97', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'affinityfinejewelry', 'Earrings', 'Stud', 'Stainless Steel', '', '', '', 'Simulated Diamond', '', '', 'White', 'Emarald', '', '', '', '', '', 'Women', 'White', '', '', '', 'China', '', '', '', '', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '50647', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/j284418.001-1.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('272', 'Qvc Steel By Design Stainless Steel 20\" Adjustable Multi Heart Necklace', 'Top Selling/Jewelry/Necklace', '', '22016-J12069-ST', '<p> 	Tell her she touches your heart with this multi-heart necklace. The stainless steel construction provides a high-end look without the high price tag, and the fashion-forward design is ideal for everyday wear. Solid and cutout hearts dangle from an ov', '1', '29.99', '', '', '89.97', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Affinity Fashion Jewelry', 'Necklace', 'Strand/String', 'Stainless Steel', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'China', '', '', '', '20', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '155101', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/j12069.001.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('273', 'Steel by Design 20\" Adjustable Multi-Heart Necklace Stainless Steel', 'Top Selling/Jewelry/Necklace', '', '22016-J12069', '<p> 	<meta content=\"en-us\" http-equiv=\"Content-Language\" /> </p> <p> 	<meta content=\"Microsoft FrontPage 5.0\" name=\"GENERATOR\" /> </p> <p> 	<meta content=\"FrontPage.Editor.Document\" name=\"ProgId\" /> </p> <p> 	<meta content=\"text/html; charset=windows-1252', '1', '34.99', '', '', '104.97', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Steel by Design', 'Necklace', 'Heart', 'Stainless Steel', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '20', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '155101', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/J12069-1.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/j12069-2.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/j12069-3.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/j12069-4.jpg');
INSERT INTO `fry_products` VALUES ('274', 'QVC Steel By Design Stainless Steel Open Heart Pendant With 18\" Fine Chain', 'Top Selling/Jewelry/Necklace', '', '22016-A-J148930-hea', '<p> 	QVC Steel By Design Stainless Steel Open Heart Pendant With 18&quot; Fine Chain $140<br /> 	<br /> 	Open heart pendant with chain<br /> 	Stainless steel<br /> 	Measures approximately 1&quot;L including bail x 3/4&quot;W; includes approximately 18&quo', '1', '40', '', '', '120', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Steel by Design', 'Necklace', 'Heart', 'Stainless Steel', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'White', '', '', '', 'China', '', '', '', '18', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '155101', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j148930-open-heart-1.jpg', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j148930-open-heart-2.jpg', '', '');
INSERT INTO `fry_products` VALUES ('275', 'QVC Steel By Design Stainless Steel Flower Pendant With 18\" Fine Chain', 'Top Selling/Jewelry/Necklace', '', '22016-J148930-S', '<p> 	Steel by Design Stainless steel Flower Pendant 18&quot; Necklace<br /> 	&nbsp;</p> <ul> 	<li> 		Stainless steel</li> 	<li> 		Flower pendant: measures approximately 1-1/2&quot;L including bail x 1&quot;W; includes approximately 18&quot;L fine chain wi', '1', '40', '', '', '120', '1', '1', '1', '1', '10', '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Steel by Design', 'Necklace', 'Flower Pendant', 'Stainless Steel', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'White', '', '', '', 'China', '', '', '', '18', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '155101', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j148930-flower-ss-1.jpg', '', '', '');
INSERT INTO `fry_products` VALUES ('276', 'Disney\'s Frozen \"Let It Go\" musical Elsa and Anna Watch', 'Jewellery', 'Disney\'s Frozen \"Let It Go\" musical Elsa and Anna Watch QVC J317380', 'QVC-J317380', ' ', '1', '999', null, null, '999', '1', '1', '1', '1', '10', '1', null, null, 'musical,elsa,disney', null, null, 'New', '1', null, 'other', null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, null, 'https://d38eepresuu519.cloudfront.net/5daadeda0d03e497ab00eef5e91df8a1/large.jpg', 'https://d38eepresuu519.cloudfront.net/c4912de92a2f56185d587bc43e724400/large.jpg', 'https://d38eepresuu519.cloudfront.net/12784770f16ac8f104c511179b9286e0/large.jpg', null);

-- ----------------------------
-- Table structure for messages
-- ----------------------------
DROP TABLE IF EXISTS `messages`;
CREATE TABLE `messages` (
  `MESSAGE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `RECIPIENT` varchar(40) NOT NULL COMMENT 'Recipient could be phone or email',
  `MESSAGE` text COMMENT 'Message body',
  `CHANNEL` varchar(5) DEFAULT '0' COMMENT 'Could be SMS, EMAIL or PUSH',
  `MESSAGE_SENT` tinyint(1) DEFAULT '0' COMMENT 'Request Accepted',
  `CREATED` datetime DEFAULT NULL COMMENT 'Date Added',
  `UPDATED` datetime DEFAULT NULL COMMENT 'Date Sent',
  PRIMARY KEY (`MESSAGE_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of messages
-- ----------------------------

-- ----------------------------
-- Table structure for migration
-- ----------------------------
DROP TABLE IF EXISTS `migration`;
CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of migration
-- ----------------------------
INSERT INTO `migration` VALUES ('m000000_000000_base', '1481657365');
INSERT INTO `migration` VALUES ('m150927_060316_cronjob_init', '1487233611');
INSERT INTO `migration` VALUES ('m161128_141131_create_transaction_paypal', '1487233614');
INSERT INTO `migration` VALUES ('m161207_115906_create_tb_orders_table', '1487233622');
INSERT INTO `migration` VALUES ('m161207_125747_create_tb_user_address_table', '1487233626');
INSERT INTO `migration` VALUES ('m161208_173038_create_shipping_service_table', '1487233629');
INSERT INTO `migration` VALUES ('m170202_082711_create_messages_table', '1487332592');
INSERT INTO `migration` VALUES ('m170207_080724_create_tb_active_bids_table', '1487332593');
INSERT INTO `migration` VALUES ('m170207_093804_create_bid_exclusion_table', '1487332595');
INSERT INTO `migration` VALUES ('m170216_082404_created_bid_requests_table', '1487332596');
INSERT INTO `migration` VALUES ('m170216_082913_bid_requesters', '1487332599');
INSERT INTO `migration` VALUES ('m170216_121025_messages_init', '1487332619');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `orderId` int(11) NOT NULL AUTO_INCREMENT,
  `orderNumber` varchar(100) NOT NULL,
  `orderKey` varchar(100) NOT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modifyDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `paymentDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipByDate` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `orderStatus` varchar(20) NOT NULL,
  `customerId` int(11) DEFAULT NULL,
  `customerUsername` varchar(100) NOT NULL,
  `customerEmail` varchar(100) NOT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=235853384 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('16796017', 'EOCT-2-5851171829ECA', '45f26f672e9a71c58011f7c75b85226f', '2016-12-14 04:31:42', '2016-12-14 12:51:09', '2016-12-14 12:55:35', '2016-12-14 04:55:35', null, 'awaiting_shipment', '10229463', 'Sammy Barasa', 'barsamms@gmail.com');
INSERT INTO `orders` VALUES ('17050228', 'EOCT-4-58526C4895B14', '2856fad711b0141b12e88fd7d4e8a9c7', '2016-12-15 05:05:49', '2016-12-15 13:11:16', '2016-12-15 13:11:16', '2016-12-15 05:11:19', null, 'awaiting_shipment', null, 'Sammy Barasa', 'barsamms@gmail.com');
INSERT INTO `orders` VALUES ('18317948', 'EOCT-10-585A7B3DC8FC6', 'ecb604112862d146a37b3881aa5ad013', '2016-12-21 07:51:44', '2016-12-21 15:53:18', '2016-12-21 15:53:18', '2016-12-21 07:53:17', null, 'awaiting_shipment', null, 'Lody Tacastacas', 'lody.tacastacas@pristone.net');
INSERT INTO `orders` VALUES ('235554036', 'EOCT-20-587C8A2620347', '9d7bfec24ad1ad94fd503a55e4b282ce', '2017-01-16 03:52:48', '2017-01-16 11:53:57', '2017-01-16 11:53:57', '2017-01-16 03:53:56', null, 'awaiting_shipment', null, 'Lody Tacastacas', 'lody.tacastacas@pristone.net');
INSERT INTO `orders` VALUES ('235853383', 'EOCT-21-587E18F822272', '1348a617c6abce3bf4af8f17bcb002f8', '2017-01-17 08:13:23', '2017-01-17 16:15:36', '2017-01-17 16:15:36', '2017-01-17 08:15:35', null, 'awaiting_shipment', null, 'Lody Tacastacas', 'lody.tacastacas@pristone.net');

-- ----------------------------
-- Table structure for paypal_transactions
-- ----------------------------
DROP TABLE IF EXISTS `paypal_transactions`;
CREATE TABLE `paypal_transactions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `PAYMENT_ID` varchar(100) NOT NULL,
  `HASH` varchar(100) NOT NULL,
  `COMPLETE` tinyint(1) NOT NULL DEFAULT '0',
  `ORDER_CREATED` tinyint(1) NOT NULL DEFAULT '0',
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `FK_USER_ID` (`USER_ID`),
  CONSTRAINT `FK_USER_ID` FOREIGN KEY (`USER_ID`) REFERENCES `tb_users` (`USER_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of paypal_transactions
-- ----------------------------
INSERT INTO `paypal_transactions` VALUES ('1', '5', 'PAY-40G10299Y4656272VLBIP5CY', '693c4ef7199d27b0f335a300167b992a', '1', '0', '2016-12-14 00:10:59', '2016-12-14 01:21:38');
INSERT INTO `paypal_transactions` VALUES ('2', '5', 'PAY-7WX477232A248810BLBIRC5I', '45f26f672e9a71c58011f7c75b85226f', '1', '0', '2016-12-14 01:31:42', '2016-12-14 01:55:35');
INSERT INTO `paypal_transactions` VALUES ('3', '8', 'PAY-8KH5106233519150NLBJGKSI', 'beb2afbf409a0c5fd4333c9876fc0a1d', '0', '0', '2016-12-15 01:41:29', '2016-12-15 01:41:29');
INSERT INTO `paypal_transactions` VALUES ('4', '5', 'PAY-73N99703HD1577240LBJGV6Q', '2856fad711b0141b12e88fd7d4e8a9c7', '1', '0', '2016-12-15 02:05:49', '2016-12-15 02:11:19');
INSERT INTO `paypal_transactions` VALUES ('5', '8', 'PAY-46W51903BB451170NLBKAISY', '2466d48967ac221b286c2eb8052a2c0a', '1', '0', '2016-12-16 07:12:11', '2016-12-16 07:13:53');
INSERT INTO `paypal_transactions` VALUES ('6', '5', 'PAY-339819648L903613ALBNHBGI', '8544f3b7e459dbcfe06c43c097fa2ec2', '0', '0', '2016-12-21 04:07:53', '2016-12-21 04:07:53');
INSERT INTO `paypal_transactions` VALUES ('7', '8', 'PAY-7V253060C1220810KLBNHBXY', 'b7a2bf926376b567e953a730b6d3c0f9', '1', '0', '2016-12-21 04:09:03', '2016-12-21 04:10:23');
INSERT INTO `paypal_transactions` VALUES ('8', '8', 'PAY-2FL45595CY847213SLBNHFEI', '133aca272d18450cf0cf78b0ef7c559e', '1', '0', '2016-12-21 04:16:17', '2016-12-21 04:16:48');
INSERT INTO `paypal_transactions` VALUES ('9', '8', 'PAY-9ST88519KV725511MLBNHHLQ', '2149e937e7878ad93c18c77612b20dbc', '1', '0', '2016-12-21 04:21:02', '2016-12-21 04:22:50');
INSERT INTO `paypal_transactions` VALUES ('10', '8', 'PAY-3V131556JG3569723LBNHVYA', 'ecb604112862d146a37b3881aa5ad013', '1', '0', '2016-12-21 04:51:44', '2016-12-21 04:53:17');
INSERT INTO `paypal_transactions` VALUES ('11', '10', 'PAY-64857417WJ439441DLBNJZ4Q', '13fca5c2baf4baabef56a1c3b92eec9a', '0', '0', '2016-12-21 07:17:06', '2016-12-21 07:17:06');
INSERT INTO `paypal_transactions` VALUES ('12', '12', 'PAY-4YB94234HP194712DLBPBIEQ', '35d97a38b18dda967063e34d4ee83677', '0', '0', '2016-12-23 22:22:10', '2016-12-23 22:22:10');
INSERT INTO `paypal_transactions` VALUES ('13', '13', 'PAY-6WN437187M140425KLB2OHYI', '56c563649a3d88a0448553480fb0ba83', '0', '0', '2017-01-10 05:38:41', '2017-01-10 05:38:41');
INSERT INTO `paypal_transactions` VALUES ('14', '10', 'PAY-7HN27067RU077723JLB3NP5A', '42f97eda4741437191c6b8bdaefa12ef', '1', '0', '2017-01-11 17:12:20', '2017-01-11 17:23:14');
INSERT INTO `paypal_transactions` VALUES ('15', '10', 'PAY-2TJ32600L78763213LB3NWAI', '1db187140ab48d194e2bd6b9b8ff0b97', '1', '0', '2017-01-11 17:25:21', '2017-01-11 17:25:58');
INSERT INTO `paypal_transactions` VALUES ('16', '8', 'PAY-4MV92142TN3302732LB3UK2I', '63ad97c03cb985c09d9323b327448e1b', '0', '0', '2017-01-12 00:59:21', '2017-01-12 00:59:21');
INSERT INTO `paypal_transactions` VALUES ('17', '5', 'PAY-8L120458HY085352ALB3WRQA', 'f785c322f743a5b821a318664c3fa8ed', '0', '0', '2017-01-12 03:30:08', '2017-01-12 03:30:08');
INSERT INTO `paypal_transactions` VALUES ('18', '5', 'PAY-5E2410551H8032900LB3WSCQ', 'f1eaccf831738e5626eea705f6102c05', '0', '0', '2017-01-12 03:31:22', '2017-01-12 03:31:22');
INSERT INTO `paypal_transactions` VALUES ('19', '8', 'PAY-86T15512PY2320602LB32TAA', 'ca5b5206963d4430422871fe1253a276', '1', '0', '2017-01-12 08:06:30', '2017-01-12 08:08:19');
INSERT INTO `paypal_transactions` VALUES ('20', '8', 'PAY-19486478480736634LB6ITYA', '9d7bfec24ad1ad94fd503a55e4b282ce', '1', '0', '2017-01-16 00:52:48', '2017-01-16 00:53:56');
INSERT INTO `paypal_transactions` VALUES ('21', '8', 'PAY-5UM94217TJ268700RLB7BQ4Y', '1348a617c6abce3bf4af8f17bcb002f8', '1', '0', '2017-01-17 05:13:23', '2017-01-17 05:15:35');
INSERT INTO `paypal_transactions` VALUES ('22', '5', 'PAY-21L833297W2069335LCAN7LA', 'cc5b7c94f6c6e63e5fdc0017bc25bf94', '0', '0', '2017-01-19 07:47:56', '2017-01-19 07:47:56');
INSERT INTO `paypal_transactions` VALUES ('23', '19', 'PAY-39A89695GK8841237LCHH2IA', '105885967c5ef9719f3a8ad825517442', '0', '0', '2017-01-29 15:39:12', '2017-01-29 15:39:12');
INSERT INTO `paypal_transactions` VALUES ('24', '20', 'PAY-2YB54558MW7023917LCLPLHI', '97d431637d4bf4cc5b4876b8ce6a08da', '0', '0', '2017-02-05 01:51:25', '2017-02-05 01:51:25');
INSERT INTO `paypal_transactions` VALUES ('25', '20', 'PAY-4B856205GX835994WLCLPODI', '79fa5261c48dc3082aa74036e5a5d3a1', '0', '0', '2017-02-05 01:57:33', '2017-02-05 01:57:33');

-- ----------------------------
-- Table structure for shipping_service
-- ----------------------------
DROP TABLE IF EXISTS `shipping_service`;
CREATE TABLE `shipping_service` (
  `SERVICE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PAYPAL_TRANS_ID` int(11) NOT NULL,
  `REQUESTED_SERVICE` varchar(100) NOT NULL,
  `SERVICE_DESC` varchar(200) NOT NULL,
  `CARRIER_CODE` varchar(150) DEFAULT NULL,
  `SERVICE_CODE` varchar(200) NOT NULL,
  `PACKAGE_CODE` varchar(200) DEFAULT NULL,
  `ORDER_FINALIZED` tinyint(1) DEFAULT '0',
  `CUSTOMER_NOTES` varchar(300) DEFAULT NULL,
  `CREATED` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`SERVICE_ID`),
  KEY `FK_PAYMENT_HASH` (`PAYPAL_TRANS_ID`),
  CONSTRAINT `FK_PAYMENT_HASH` FOREIGN KEY (`PAYPAL_TRANS_ID`) REFERENCES `paypal_transactions` (`ID`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of shipping_service
-- ----------------------------
INSERT INTO `shipping_service` VALUES ('1', '1', 'USPS Priority Mail Express Intl', 'usps_priority_mail_express_international|stamps_com||INTERNATIONAL~USPS Priority Mail Express Intl', 'stamps_com', 'usps_priority_mail_express_international', 'flat_rate_envelope', '1', '', '2016-12-14 11:13:01', '2016-12-14 11:13:01');
INSERT INTO `shipping_service` VALUES ('2', '2', 'USPS First Class Mail', 'usps_first_class_mail|stamps_com|DOMESTIC|~USPS First Class Mail', 'stamps_com', 'usps_first_class_mail', 'regional_rate_box_b', '1', 'test shipping station', '2016-12-14 12:38:20', '2016-12-14 12:38:20');
INSERT INTO `shipping_service` VALUES ('3', '4', 'USPS First Class Mail Intl', 'usps_first_class_mail_international|stamps_com||INTERNATIONAL~USPS First Class Mail Intl', 'stamps_com', 'usps_first_class_mail_international', 'flat_rate_legal_envelope', '1', 'test for order creation', '2016-12-15 13:11:19', '2016-12-15 13:11:19');
INSERT INTO `shipping_service` VALUES ('4', '5', 'USPS First Class Mail Intl', 'usps_first_class_mail_international|stamps_com||INTERNATIONAL~USPS First Class Mail Intl', 'stamps_com', 'usps_first_class_mail_international', 'package', '1', '', '2016-12-16 18:13:53', '2016-12-16 18:13:53');
INSERT INTO `shipping_service` VALUES ('5', '7', 'USPS First Class Mail', 'usps_first_class_mail|stamps_com|DOMESTIC|~USPS First Class Mail', 'stamps_com', 'usps_first_class_mail', 'regional_rate_box_a', '1', '', '2016-12-21 15:10:23', '2016-12-21 15:10:23');
INSERT INTO `shipping_service` VALUES ('6', '8', 'USPS First Class Mail', 'usps_first_class_mail|stamps_com|DOMESTIC|~USPS First Class Mail', 'stamps_com', 'usps_first_class_mail', 'regional_rate_box_a', '1', '', '2016-12-21 15:16:48', '2016-12-21 15:16:48');
INSERT INTO `shipping_service` VALUES ('7', '9', 'USPS First Class Mail Intl', 'usps_first_class_mail_international|stamps_com||INTERNATIONAL~USPS First Class Mail Intl', 'stamps_com', 'usps_first_class_mail_international', 'flat_rate_padded_envelope', '1', '', '2016-12-21 15:22:49', '2016-12-21 15:22:49');
INSERT INTO `shipping_service` VALUES ('8', '10', 'USPS First Class Mail', 'usps_first_class_mail|stamps_com|DOMESTIC|~USPS First Class Mail', 'stamps_com', 'usps_first_class_mail', 'regional_rate_box_b', '1', '', '2016-12-21 15:53:17', '2016-12-21 15:53:17');
INSERT INTO `shipping_service` VALUES ('9', '14', 'USPS Parcel Select Ground', 'usps_parcel_select|stamps_com|DOMESTIC|~USPS Parcel Select Ground', 'stamps_com', 'usps_parcel_select', 'regional_rate_box_a', '1', '', '2017-01-12 04:23:14', '2017-01-12 04:23:14');
INSERT INTO `shipping_service` VALUES ('10', '15', 'USPS Parcel Select Ground', 'usps_parcel_select|stamps_com|DOMESTIC|~USPS Parcel Select Ground', 'stamps_com', 'usps_parcel_select', 'regional_rate_box_a', '1', '', '2017-01-12 04:25:58', '2017-01-12 04:25:58');
INSERT INTO `shipping_service` VALUES ('11', '19', 'USPS First Class Mail', 'usps_first_class_mail|stamps_com|DOMESTIC|~USPS First Class Mail', 'stamps_com', 'usps_first_class_mail', 'regional_rate_box_a', '1', '', '2017-01-12 19:08:19', '2017-01-12 19:08:19');
INSERT INTO `shipping_service` VALUES ('12', '20', 'USPS First Class Mail', 'usps_first_class_mail|stamps_com|DOMESTIC|~USPS First Class Mail', 'stamps_com', 'usps_first_class_mail', 'regional_rate_box_a', '1', '', '2017-01-16 11:53:56', '2017-01-16 11:53:56');
INSERT INTO `shipping_service` VALUES ('13', '21', 'USPS First Class Mail', 'usps_first_class_mail|stamps_com|DOMESTIC|~USPS First Class Mail', 'stamps_com', 'usps_first_class_mail', 'regional_rate_box_a', '1', '', '2017-01-17 16:15:34', '2017-01-17 16:15:34');

-- ----------------------------
-- Table structure for tb_active_bids
-- ----------------------------
DROP TABLE IF EXISTS `tb_active_bids`;
CREATE TABLE `tb_active_bids` (
  `ACTIVE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRODUCT_ID` int(11) NOT NULL,
  `BIDDING_DURATION` int(11) NOT NULL COMMENT 'How long the item will be on bid if is not won',
  `ITEM_WON` int(11) NOT NULL DEFAULT '0' COMMENT 'Indicate if item is won or not',
  `DATE_UPDATED` datetime DEFAULT NULL,
  PRIMARY KEY (`ACTIVE_ID`),
  UNIQUE KEY `PRODUCT_ID` (`PRODUCT_ID`),
  CONSTRAINT `FK_PRODUCT_ID_ACT` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `fry_products` (`productid`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_active_bids
-- ----------------------------

-- ----------------------------
-- Table structure for tb_bid_activity
-- ----------------------------
DROP TABLE IF EXISTS `tb_bid_activity`;
CREATE TABLE `tb_bid_activity` (
  `ACTIVITY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRODUCT_ID` int(11) NOT NULL,
  `LAST_BIDDING_USER_ID` int(11) NOT NULL COMMENT 'Last bidding user',
  `PRODUCT_SKU` varchar(255) NOT NULL COMMENT 'Product SKU',
  `ACTIVITY_COUNT` int(5) NOT NULL DEFAULT '0' COMMENT 'Bid Activity Count',
  `BID_DATE` datetime NOT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ACTIVITY_ID`),
  UNIQUE KEY `PRODUCT_SKU` (`PRODUCT_SKU`),
  KEY `PRODUCT_ID` (`PRODUCT_ID`),
  KEY `LAST_BIDDING_USER` (`LAST_BIDDING_USER_ID`),
  CONSTRAINT `tb_bid_activity_ibfk_3` FOREIGN KEY (`LAST_BIDDING_USER_ID`) REFERENCES `tb_users` (`USER_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=116 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_bid_activity
-- ----------------------------
INSERT INTO `tb_bid_activity` VALUES ('1', '208791', '5', '22016-600-Loose Gems', '5', '2016-12-14 01:06:27');
INSERT INTO `tb_bid_activity` VALUES ('2', '93143', '5', 'UK-M-221601497605-YG14K', '4', '2016-12-14 01:06:48');
INSERT INTO `tb_bid_activity` VALUES ('3', '67454', '5', 'M-ST891-RG10K-I1-2ct-H-I', '6', '2016-12-14 02:41:09');
INSERT INTO `tb_bid_activity` VALUES ('83', '165', '8', 'I-CNC-STUD-925-6MM-YELLOW-OCT', '4', '2017-01-18 04:20:45');

-- ----------------------------
-- Table structure for tb_bid_settings
-- ----------------------------
DROP TABLE IF EXISTS `tb_bid_settings`;
CREATE TABLE `tb_bid_settings` (
  `SETTING_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PARAM_NAME` varchar(10) NOT NULL,
  `PARAM_VALUE` varchar(10) NOT NULL,
  PRIMARY KEY (`SETTING_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_bid_settings
-- ----------------------------

-- ----------------------------
-- Table structure for tb_categories
-- ----------------------------
DROP TABLE IF EXISTS `tb_categories`;
CREATE TABLE `tb_categories` (
  `CATEGORY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `CATEGORY_NAME` varchar(10) NOT NULL,
  PRIMARY KEY (`CATEGORY_ID`),
  KEY `tb_categories_CATEGORY_ID_index` (`CATEGORY_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_categories
-- ----------------------------

-- ----------------------------
-- Table structure for tb_hash_table
-- ----------------------------
DROP TABLE IF EXISTS `tb_hash_table`;
CREATE TABLE `tb_hash_table` (
  `SALT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `SALT` varchar(255) NOT NULL,
  PRIMARY KEY (`SALT_ID`),
  KEY `USER_ID` (`USER_ID`) USING BTREE,
  CONSTRAINT `tb_hash_table_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `tb_users` (`USER_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_hash_table
-- ----------------------------

-- ----------------------------
-- Table structure for tb_items_cart
-- ----------------------------
DROP TABLE IF EXISTS `tb_items_cart`;
CREATE TABLE `tb_items_cart` (
  `CART_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `PRODUCT_ID` int(11) NOT NULL,
  `PRODUCT_PRICE` decimal(10,2) NOT NULL,
  `BIDDED_ITEM` int(1) DEFAULT '0',
  `IS_SOLD` int(1) NOT NULL DEFAULT '0',
  `PAYPAL_HASH` varchar(100) DEFAULT NULL COMMENT 'Use to track which items were paid for',
  `DATE_ADDED` datetime NOT NULL,
  `EXPIRY_DATE` datetime NOT NULL,
  `DATE_BOUGHT` datetime NOT NULL,
  PRIMARY KEY (`CART_ID`),
  KEY `USER_ID` (`USER_ID`),
  KEY `PRODUCT_ID` (`PRODUCT_ID`),
  CONSTRAINT `tb_items_cart_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `tb_users` (`USER_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_items_cart
-- ----------------------------
INSERT INTO `tb_items_cart` VALUES ('2', '5', '105988', '10.00', '1', '1', '7fd7245a01d8e447b9f6c8e30cdf6dfc', '2016-12-08 18:48:12', '2016-12-08 18:48:12', '2016-12-11 16:08:03');
INSERT INTO `tb_items_cart` VALUES ('3', '5', '32249', '10.00', '1', '1', '7fd7245a01d8e447b9f6c8e30cdf6dfc', '2016-12-08 18:48:24', '2016-12-08 18:48:24', '2016-12-11 16:08:03');
INSERT INTO `tb_items_cart` VALUES ('4', '5', '105330', '115.00', '0', '1', '3e47db48c8ef42677621805f9e20fca1', '2016-12-08 21:40:38', '2016-12-08 21:40:38', '2016-12-11 01:56:07');
INSERT INTO `tb_items_cart` VALUES ('5', '5', '203', '149.00', '0', '1', '3e47db48c8ef42677621805f9e20fca1', '2016-12-08 21:40:48', '2016-12-08 21:40:48', '2016-12-11 01:56:07');
INSERT INTO `tb_items_cart` VALUES ('6', '5', '73562', '45.99', '0', '1', '304e9b6b36d1c1497719e36f8f3b6702', '2016-12-11 17:25:01', '2016-12-11 17:25:01', '2016-12-11 17:25:14');
INSERT INTO `tb_items_cart` VALUES ('7', '5', '401', '150.00', '0', '1', '304e9b6b36d1c1497719e36f8f3b6702', '2016-12-11 17:25:10', '2016-12-11 17:25:10', '2016-12-11 17:25:14');
INSERT INTO `tb_items_cart` VALUES ('8', '5', '48087', '15.00', '0', '1', '04dc6c1121385ef8e477fda9d6c7c71a', '2016-12-11 17:39:31', '2016-12-11 17:39:31', '2016-12-11 17:39:52');
INSERT INTO `tb_items_cart` VALUES ('9', '5', '29825', '15.00', '0', '1', '04dc6c1121385ef8e477fda9d6c7c71a', '2016-12-11 17:39:42', '2016-12-11 17:39:42', '2016-12-11 17:39:52');
INSERT INTO `tb_items_cart` VALUES ('10', '5', '95530', '15.00', '0', '1', '1da7c21dbe5f7829093fa0efb6a0193b', '2016-12-11 18:10:25', '2016-12-11 18:10:25', '2016-12-11 18:10:35');
INSERT INTO `tb_items_cart` VALUES ('11', '5', '125028', '15.00', '0', '1', 'e39a34a44b04977758edd0ac0b3c2e69', '2016-12-11 18:20:53', '2016-12-11 18:20:53', '2016-12-11 18:20:57');
INSERT INTO `tb_items_cart` VALUES ('12', '5', '83566', '15.00', '0', '1', 'ff47160b2468e570e072537218401e1f', '2016-12-11 18:22:52', '2016-12-11 18:22:52', '2016-12-11 18:22:55');
INSERT INTO `tb_items_cart` VALUES ('14', '5', '63271', '15.00', '0', '1', '1465a2e9300b98d2bc5ade4b331cb877', '2016-12-11 18:25:10', '2016-12-11 18:25:10', '2016-12-11 18:25:16');
INSERT INTO `tb_items_cart` VALUES ('15', '5', '105175', '15.00', '0', '1', '8166a26567f14b08afc5c59547a6ce4a', '2016-12-11 18:28:35', '2016-12-11 18:28:35', '2016-12-11 18:28:39');
INSERT INTO `tb_items_cart` VALUES ('16', '5', '39455', '148.00', '0', '1', '693c4ef7199d27b0f335a300167b992a', '2016-12-14 00:10:43', '2016-12-14 00:10:43', '2016-12-14 00:10:59');
INSERT INTO `tb_items_cart` VALUES ('17', '5', '212659', '99.00', '0', '1', '45f26f672e9a71c58011f7c75b85226f', '2016-12-14 01:31:25', '2016-12-14 01:31:25', '2016-12-14 01:31:42');
INSERT INTO `tb_items_cart` VALUES ('19', '5', '119', '99.00', '0', '1', '2856fad711b0141b12e88fd7d4e8a9c7', '2016-12-15 02:05:19', '2016-12-15 02:05:19', '2016-12-15 02:05:49');
INSERT INTO `tb_items_cart` VALUES ('21', '8', '108', '298.00', '0', '1', '2466d48967ac221b286c2eb8052a2c0a', '2016-12-16 07:10:35', '2016-12-16 07:10:35', '2016-12-16 07:12:11');
INSERT INTO `tb_items_cart` VALUES ('31', '9', '1', '6.00', '1', '0', null, '2016-12-20 09:26:23', '2016-12-20 09:26:23', '2016-12-20 09:26:23');
INSERT INTO `tb_items_cart` VALUES ('32', '9', '2', '6.00', '1', '0', null, '2016-12-20 09:27:01', '2016-12-20 09:27:01', '2016-12-20 09:27:01');
INSERT INTO `tb_items_cart` VALUES ('33', '9', '106', '6.00', '1', '0', null, '2016-12-20 09:28:39', '2016-12-20 09:28:39', '2016-12-20 09:28:39');
INSERT INTO `tb_items_cart` VALUES ('34', '9', '96', '6.00', '1', '0', null, '2016-12-20 09:35:24', '2016-12-20 09:35:24', '2016-12-20 09:35:24');
INSERT INTO `tb_items_cart` VALUES ('35', '8', '113', '6.00', '1', '1', 'b7a2bf926376b567e953a730b6d3c0f9', '2016-12-21 00:08:38', '2016-12-21 00:08:38', '2016-12-21 04:09:03');
INSERT INTO `tb_items_cart` VALUES ('36', '8', '3', '44.99', '0', '1', 'b7a2bf926376b567e953a730b6d3c0f9', '2016-12-21 00:09:42', '2016-12-21 00:09:42', '2016-12-21 04:09:03');
INSERT INTO `tb_items_cart` VALUES ('37', '8', '1', '6.00', '1', '1', 'b7a2bf926376b567e953a730b6d3c0f9', '2016-12-21 00:12:37', '2016-12-21 00:12:37', '2016-12-21 04:09:03');
INSERT INTO `tb_items_cart` VALUES ('40', '8', '20', '59.99', '0', '1', '133aca272d18450cf0cf78b0ef7c559e', '2016-12-21 04:16:06', '2016-12-21 04:16:06', '2016-12-21 04:16:17');
INSERT INTO `tb_items_cart` VALUES ('41', '8', '3', '44.99', '0', '1', '2149e937e7878ad93c18c77612b20dbc', '2016-12-21 04:20:57', '2016-12-21 04:20:57', '2016-12-21 04:21:02');
INSERT INTO `tb_items_cart` VALUES ('42', '8', '181', '75.00', '0', '1', 'ecb604112862d146a37b3881aa5ad013', '2016-12-21 04:51:37', '2016-12-21 04:51:37', '2016-12-21 04:51:44');
INSERT INTO `tb_items_cart` VALUES ('58', '8', '10', '1.00', '1', '1', 'ca5b5206963d4430422871fe1253a276', '2016-12-21 10:11:44', '2016-12-21 10:11:44', '2017-01-12 08:06:29');
INSERT INTO `tb_items_cart` VALUES ('64', '12', '3', '11.00', '1', '0', '35d97a38b18dda967063e34d4ee83677', '2016-12-23 22:21:02', '2016-12-23 22:21:02', '2016-12-23 22:22:10');
INSERT INTO `tb_items_cart` VALUES ('65', '12', '3', '44.99', '0', '0', '35d97a38b18dda967063e34d4ee83677', '2016-12-23 22:22:01', '2016-12-23 22:22:01', '2016-12-23 22:22:10');
INSERT INTO `tb_items_cart` VALUES ('71', '10', '1', '1.00', '1', '1', '42f97eda4741437191c6b8bdaefa12ef', '2017-01-11 17:02:12', '2017-01-11 17:02:12', '2017-01-11 17:12:20');
INSERT INTO `tb_items_cart` VALUES ('72', '10', '1', '1.00', '1', '1', '1db187140ab48d194e2bd6b9b8ff0b97', '2017-01-11 17:25:12', '2017-01-11 17:25:12', '2017-01-11 17:25:21');
INSERT INTO `tb_items_cart` VALUES ('75', '8', '247', '1.00', '1', '1', '9d7bfec24ad1ad94fd503a55e4b282ce', '2017-01-12 08:46:42', '2017-01-12 08:46:42', '2017-01-16 00:52:48');
INSERT INTO `tb_items_cart` VALUES ('108', '8', '263', '1.00', '1', '1', '1348a617c6abce3bf4af8f17bcb002f8', '2017-01-17 04:50:40', '2017-01-17 04:50:40', '2017-01-17 05:13:23');
INSERT INTO `tb_items_cart` VALUES ('115', '15', '12', '91.00', '1', '0', null, '2017-01-17 12:56:55', '2017-01-17 12:56:55', '2017-01-17 12:56:55');
INSERT INTO `tb_items_cart` VALUES ('116', '15', '157', '19.00', '1', '0', null, '2017-01-17 13:12:53', '2017-01-17 13:12:53', '2017-01-17 13:12:53');
INSERT INTO `tb_items_cart` VALUES ('117', '15', '74', '5.00', '1', '0', null, '2017-01-17 13:18:30', '2017-01-17 13:18:30', '2017-01-17 13:18:30');
INSERT INTO `tb_items_cart` VALUES ('118', '15', '217', '23.00', '1', '0', null, '2017-01-17 13:19:42', '2017-01-17 13:19:42', '2017-01-17 13:19:42');
INSERT INTO `tb_items_cart` VALUES ('119', '15', '206', '1.00', '1', '0', null, '2017-01-17 13:26:42', '2017-01-17 13:26:42', '2017-01-17 13:26:42');
INSERT INTO `tb_items_cart` VALUES ('121', '16', '165', '3.00', '1', '0', null, '2017-01-18 04:21:22', '2017-01-18 04:21:22', '2017-01-18 04:21:22');
INSERT INTO `tb_items_cart` VALUES ('122', '10', '189', '6.00', '1', '0', null, '2017-01-18 15:52:29', '2017-01-18 15:52:29', '2017-01-18 15:52:29');
INSERT INTO `tb_items_cart` VALUES ('123', '10', '164', '3.00', '1', '0', null, '2017-01-18 15:52:54', '2017-01-18 15:52:54', '2017-01-18 15:52:54');
INSERT INTO `tb_items_cart` VALUES ('124', '10', '260', '2.00', '1', '0', null, '2017-01-18 15:52:58', '2017-01-18 15:52:58', '2017-01-18 15:52:58');
INSERT INTO `tb_items_cart` VALUES ('133', '5', '1', '1.00', '1', '0', null, '2017-01-19 10:01:55', '2017-01-19 10:01:55', '2017-01-19 10:01:55');
INSERT INTO `tb_items_cart` VALUES ('134', '10', '1', '2.00', '1', '0', null, '2017-01-22 11:25:28', '2017-01-22 11:25:28', '2017-01-22 11:25:28');
INSERT INTO `tb_items_cart` VALUES ('141', '5', '103', '17.00', '1', '0', null, '2017-01-25 08:28:19', '2017-01-25 08:28:19', '2017-01-25 08:28:19');
INSERT INTO `tb_items_cart` VALUES ('142', '5', '107', '1.00', '1', '0', null, '2017-01-25 08:28:24', '2017-01-25 08:28:24', '2017-01-25 08:28:24');
INSERT INTO `tb_items_cart` VALUES ('143', '5', '248', '3.00', '1', '0', null, '2017-01-25 08:30:20', '2017-01-25 08:30:20', '2017-01-25 08:30:20');
INSERT INTO `tb_items_cart` VALUES ('144', '5', '193', '1.00', '1', '0', null, '2017-01-25 08:30:25', '2017-01-25 08:30:25', '2017-01-25 08:30:25');
INSERT INTO `tb_items_cart` VALUES ('145', '5', '75', '1.00', '1', '0', null, '2017-01-25 08:30:29', '2017-01-25 08:30:29', '2017-01-25 08:30:29');
INSERT INTO `tb_items_cart` VALUES ('146', '19', '2', '39.99', '0', '0', '105885967c5ef9719f3a8ad825517442', '2017-01-29 15:38:55', '2017-01-29 15:38:55', '2017-01-29 15:39:12');
INSERT INTO `tb_items_cart` VALUES ('147', '8', '7', '1.00', '1', '0', null, '2017-02-02 05:36:06', '2017-02-02 05:36:06', '2017-02-02 05:36:06');
INSERT INTO `tb_items_cart` VALUES ('148', '20', '100', '4.00', '1', '0', '79fa5261c48dc3082aa74036e5a5d3a1', '2017-02-03 06:42:34', '2017-02-03 06:42:34', '2017-02-05 01:57:33');
INSERT INTO `tb_items_cart` VALUES ('150', '20', '3', '44.99', '0', '0', '79fa5261c48dc3082aa74036e5a5d3a1', '2017-02-03 06:49:52', '2017-02-03 06:49:52', '2017-02-05 01:57:33');
INSERT INTO `tb_items_cart` VALUES ('151', '20', '141', '2.00', '1', '0', '79fa5261c48dc3082aa74036e5a5d3a1', '2017-02-04 20:14:51', '2017-02-04 20:14:51', '2017-02-05 01:57:33');
INSERT INTO `tb_items_cart` VALUES ('152', '20', '2', '39.99', '0', '0', '79fa5261c48dc3082aa74036e5a5d3a1', '2017-02-04 20:27:37', '2017-02-04 20:27:37', '2017-02-05 01:57:33');
INSERT INTO `tb_items_cart` VALUES ('153', '20', '7', '49.99', '0', '0', '79fa5261c48dc3082aa74036e5a5d3a1', '2017-02-04 20:28:04', '2017-02-04 20:28:04', '2017-02-05 01:57:33');
INSERT INTO `tb_items_cart` VALUES ('158', '20', '49', '3.00', '1', '0', null, '2017-02-05 04:06:48', '2017-02-05 04:06:48', '2017-02-05 04:06:48');
INSERT INTO `tb_items_cart` VALUES ('159', '21', '1', '39.99', '0', '0', null, '2017-02-08 16:10:11', '2017-02-08 16:10:11', '2017-02-08 16:10:11');

-- ----------------------------
-- Table structure for tb_items_wishlist
-- ----------------------------
DROP TABLE IF EXISTS `tb_items_wishlist`;
CREATE TABLE `tb_items_wishlist` (
  `WISHLIST_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `PRODUCT_ID` int(11) NOT NULL,
  `DATE_ADDED` datetime NOT NULL,
  PRIMARY KEY (`WISHLIST_ID`),
  KEY `USER_ID` (`USER_ID`),
  KEY `PRODUCT_ID` (`PRODUCT_ID`),
  CONSTRAINT `tb_items_wishlist_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `tb_users` (`USER_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_items_wishlist
-- ----------------------------

-- ----------------------------
-- Table structure for tb_product_attributes
-- ----------------------------
DROP TABLE IF EXISTS `tb_product_attributes`;
CREATE TABLE `tb_product_attributes` (
  `ATTRIBUTE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRODUCT_ID` int(11) NOT NULL,
  `ATTRIBUTE_NAME` varchar(50) NOT NULL,
  `ATTRIBUTE` varchar(100) NOT NULL,
  PRIMARY KEY (`ATTRIBUTE_ID`),
  KEY `PRODUCT_ID` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_product_attributes
-- ----------------------------

-- ----------------------------
-- Table structure for tb_product_bids
-- ----------------------------
DROP TABLE IF EXISTS `tb_product_bids`;
CREATE TABLE `tb_product_bids` (
  `BID_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRODUCT_ID` int(11) NOT NULL,
  `USER_ID` int(11) NOT NULL,
  `BID_AMOUNT` decimal(10,2) NOT NULL,
  `BID_TIME` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `BID_WON` int(1) DEFAULT '0',
  PRIMARY KEY (`BID_ID`),
  KEY `PRODUCT_ID` (`PRODUCT_ID`),
  KEY `USER_ID` (`USER_ID`),
  CONSTRAINT `tb_product_bids_ibfk_2` FOREIGN KEY (`USER_ID`) REFERENCES `tb_users` (`USER_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_product_bids
-- ----------------------------
INSERT INTO `tb_product_bids` VALUES ('1', '208791', '5', '34.00', '2016-12-14 01:06:27', '0');
INSERT INTO `tb_product_bids` VALUES ('2', '93143', '5', '118.00', '2016-12-14 01:06:48', '0');
INSERT INTO `tb_product_bids` VALUES ('3', '67454', '5', '1769.00', '2016-12-14 02:41:09', '0');
INSERT INTO `tb_product_bids` VALUES ('4', '112', '5', '64.00', '2017-01-17 05:56:40', '1');
INSERT INTO `tb_product_bids` VALUES ('5', '2', '8', '1.00', '2017-01-17 00:06:00', '1');
INSERT INTO `tb_product_bids` VALUES ('6', '1', '8', '6.00', '2016-12-21 09:53:48', '1');
INSERT INTO `tb_product_bids` VALUES ('7', '1', '9', '6.00', '2016-12-20 09:26:23', '1');
INSERT INTO `tb_product_bids` VALUES ('8', '2', '9', '6.00', '2016-12-20 09:27:01', '1');
INSERT INTO `tb_product_bids` VALUES ('9', '106', '9', '6.00', '2016-12-20 09:28:39', '1');
INSERT INTO `tb_product_bids` VALUES ('10', '96', '9', '6.00', '2016-12-20 09:35:24', '1');
INSERT INTO `tb_product_bids` VALUES ('11', '113', '8', '6.00', '2016-12-21 00:08:38', '1');
INSERT INTO `tb_product_bids` VALUES ('12', '17', '8', '6.00', '2016-12-21 04:11:08', '1');
INSERT INTO `tb_product_bids` VALUES ('13', '1', '5', '1.00', '2017-01-19 10:01:55', '1');
INSERT INTO `tb_product_bids` VALUES ('14', '215', '8', '6.00', '2016-12-21 05:54:12', '1');
INSERT INTO `tb_product_bids` VALUES ('15', '49', '8', '6.00', '2016-12-21 05:54:10', '1');
INSERT INTO `tb_product_bids` VALUES ('16', '180', '8', '6.00', '2016-12-21 09:45:06', '1');
INSERT INTO `tb_product_bids` VALUES ('17', '265', '8', '6.00', '2016-12-21 06:07:47', '1');
INSERT INTO `tb_product_bids` VALUES ('18', '83', '8', '6.00', '2016-12-21 06:17:02', '1');
INSERT INTO `tb_product_bids` VALUES ('19', '21', '8', '6.00', '2016-12-21 06:49:07', '1');
INSERT INTO `tb_product_bids` VALUES ('20', '1', '10', '2.00', '2017-01-22 11:25:28', '1');
INSERT INTO `tb_product_bids` VALUES ('21', '3', '8', '1.00', '2017-01-25 08:23:10', '1');
INSERT INTO `tb_product_bids` VALUES ('22', '219', '8', '1.00', '2017-01-12 08:12:29', '1');
INSERT INTO `tb_product_bids` VALUES ('23', '10', '8', '1.00', '2016-12-21 10:11:44', '1');
INSERT INTO `tb_product_bids` VALUES ('24', '3', '5', '16.00', '2016-12-21 11:01:34', '1');
INSERT INTO `tb_product_bids` VALUES ('25', '3', '12', '11.00', '2016-12-23 22:21:02', '1');
INSERT INTO `tb_product_bids` VALUES ('27', '1', '13', '1.00', '2017-01-10 07:15:23', '1');
INSERT INTO `tb_product_bids` VALUES ('28', '3', '13', '1.00', '2017-01-10 07:13:49', '1');
INSERT INTO `tb_product_bids` VALUES ('29', '254', '13', '1.00', '2017-01-10 07:18:56', '1');
INSERT INTO `tb_product_bids` VALUES ('30', '14', '8', '1.00', '2017-01-12 08:10:21', '1');
INSERT INTO `tb_product_bids` VALUES ('31', '247', '8', '1.00', '2017-01-12 08:46:42', '1');
INSERT INTO `tb_product_bids` VALUES ('32', '164', '5', '1.00', '2017-01-14 14:35:40', '1');
INSERT INTO `tb_product_bids` VALUES ('33', '196', '5', '1.00', '2017-01-14 14:15:22', '1');
INSERT INTO `tb_product_bids` VALUES ('34', '131', '5', '1.00', '2017-01-14 15:57:06', '1');
INSERT INTO `tb_product_bids` VALUES ('35', '181', '5', '1.00', '2017-01-14 14:20:02', '1');
INSERT INTO `tb_product_bids` VALUES ('36', '263', '5', '1.00', '2017-01-14 14:20:07', '1');
INSERT INTO `tb_product_bids` VALUES ('37', '79', '5', '1.00', '2017-01-14 15:41:04', '1');
INSERT INTO `tb_product_bids` VALUES ('38', '231', '5', '1.00', '2017-01-14 15:45:31', '1');
INSERT INTO `tb_product_bids` VALUES ('39', '166', '8', '1.00', '2017-01-16 00:57:45', '1');
INSERT INTO `tb_product_bids` VALUES ('40', '188', '8', '1.00', '2017-01-16 06:24:47', '1');
INSERT INTO `tb_product_bids` VALUES ('41', '190', '8', '1.00', '2017-01-16 06:48:12', '1');
INSERT INTO `tb_product_bids` VALUES ('42', '116', '5', '2.00', '2017-01-16 09:13:57', '1');
INSERT INTO `tb_product_bids` VALUES ('43', '138', '5', '1.00', '2017-01-16 10:39:01', '1');
INSERT INTO `tb_product_bids` VALUES ('44', '273', '8', '1.00', '2017-01-16 08:21:54', '1');
INSERT INTO `tb_product_bids` VALUES ('45', '45', '8', '1.00', '2017-01-16 23:52:48', '1');
INSERT INTO `tb_product_bids` VALUES ('46', '47', '8', '1.00', '2017-01-16 23:54:56', '1');
INSERT INTO `tb_product_bids` VALUES ('47', '177', '8', '1.00', '2017-01-16 23:58:05', '1');
INSERT INTO `tb_product_bids` VALUES ('48', '77', '5', '7.00', '2017-01-16 10:21:55', '1');
INSERT INTO `tb_product_bids` VALUES ('49', '6', '5', '1.00', '2017-01-16 10:30:36', '1');
INSERT INTO `tb_product_bids` VALUES ('50', '274', '5', '1.00', '2017-01-16 10:54:01', '1');
INSERT INTO `tb_product_bids` VALUES ('51', '236', '5', '1.00', '2017-01-16 23:52:50', '1');
INSERT INTO `tb_product_bids` VALUES ('52', '269', '8', '1.00', '2017-01-16 23:52:37', '1');
INSERT INTO `tb_product_bids` VALUES ('53', '59', '8', '1.00', '2017-01-17 00:00:42', '1');
INSERT INTO `tb_product_bids` VALUES ('54', '158', '8', '1.00', '2017-01-17 00:01:12', '1');
INSERT INTO `tb_product_bids` VALUES ('55', '254', '5', '1.00', '2017-01-17 02:51:04', '1');
INSERT INTO `tb_product_bids` VALUES ('56', '76', '5', '1.00', '2017-01-17 03:34:09', '1');
INSERT INTO `tb_product_bids` VALUES ('57', '52', '5', '1.00', '2017-01-17 02:59:21', '1');
INSERT INTO `tb_product_bids` VALUES ('58', '111', '5', '1.00', '2017-01-17 04:17:02', '1');
INSERT INTO `tb_product_bids` VALUES ('59', '89', '8', '1.00', '2017-01-17 04:47:20', '1');
INSERT INTO `tb_product_bids` VALUES ('60', '202', '8', '1.00', '2017-01-17 04:48:32', '1');
INSERT INTO `tb_product_bids` VALUES ('61', '263', '8', '1.00', '2017-01-17 04:50:40', '1');
INSERT INTO `tb_product_bids` VALUES ('62', '83', '5', '2.00', '2017-01-17 05:53:29', '1');
INSERT INTO `tb_product_bids` VALUES ('63', '8', '5', '1.00', '2017-01-17 05:57:18', '1');
INSERT INTO `tb_product_bids` VALUES ('64', '114', '5', '1.00', '2017-01-17 07:27:37', '1');
INSERT INTO `tb_product_bids` VALUES ('65', '222', '5', '1.00', '2017-01-17 07:28:43', '1');
INSERT INTO `tb_product_bids` VALUES ('66', '101', '8', '1.00', '2017-01-25 08:27:30', '1');
INSERT INTO `tb_product_bids` VALUES ('67', '12', '15', '91.00', '2017-01-17 12:56:55', '1');
INSERT INTO `tb_product_bids` VALUES ('68', '157', '15', '19.00', '2017-01-17 13:12:53', '1');
INSERT INTO `tb_product_bids` VALUES ('69', '206', '15', '1.00', '2017-01-17 13:26:42', '1');
INSERT INTO `tb_product_bids` VALUES ('70', '74', '15', '5.00', '2017-01-17 13:18:30', '1');
INSERT INTO `tb_product_bids` VALUES ('71', '217', '15', '23.00', '2017-01-17 13:19:42', '1');
INSERT INTO `tb_product_bids` VALUES ('72', '229', '8', '1.00', '2017-01-18 03:24:21', '1');
INSERT INTO `tb_product_bids` VALUES ('73', '165', '16', '3.00', '2017-01-18 04:21:22', '1');
INSERT INTO `tb_product_bids` VALUES ('75', '189', '10', '6.00', '2017-01-18 15:52:29', '1');
INSERT INTO `tb_product_bids` VALUES ('76', '164', '10', '3.00', '2017-01-18 15:52:54', '1');
INSERT INTO `tb_product_bids` VALUES ('77', '260', '10', '2.00', '2017-01-18 15:52:58', '1');
INSERT INTO `tb_product_bids` VALUES ('78', '151', '5', '1.00', '2017-01-19 06:47:54', '1');
INSERT INTO `tb_product_bids` VALUES ('79', '4', '5', '2.00', '2017-01-19 06:23:31', '1');
INSERT INTO `tb_product_bids` VALUES ('80', '72', '5', '1.00', '2017-01-19 06:25:14', '1');
INSERT INTO `tb_product_bids` VALUES ('81', '32', '5', '3.00', '2017-01-19 06:24:41', '1');
INSERT INTO `tb_product_bids` VALUES ('82', '5', '8', '1.00', '2017-01-19 07:20:19', '1');
INSERT INTO `tb_product_bids` VALUES ('83', '7', '8', '1.00', '2017-02-02 05:36:06', '1');
INSERT INTO `tb_product_bids` VALUES ('84', '250', '8', '1.00', '2017-01-25 08:22:09', '1');
INSERT INTO `tb_product_bids` VALUES ('85', '254', '8', '1.00', '2017-01-25 08:26:02', '1');
INSERT INTO `tb_product_bids` VALUES ('86', '103', '5', '17.00', '2017-01-25 08:28:19', '1');
INSERT INTO `tb_product_bids` VALUES ('87', '107', '5', '1.00', '2017-01-25 08:28:24', '1');
INSERT INTO `tb_product_bids` VALUES ('88', '248', '5', '3.00', '2017-01-25 08:30:20', '1');
INSERT INTO `tb_product_bids` VALUES ('89', '193', '5', '1.00', '2017-01-25 08:30:25', '1');
INSERT INTO `tb_product_bids` VALUES ('90', '75', '5', '1.00', '2017-01-25 08:30:29', '1');
INSERT INTO `tb_product_bids` VALUES ('91', '100', '20', '4.00', '2017-02-03 06:42:34', '1');
INSERT INTO `tb_product_bids` VALUES ('92', '141', '20', '2.00', '2017-02-04 20:14:51', '1');
INSERT INTO `tb_product_bids` VALUES ('93', '1', '20', '6.00', '2017-02-04 23:20:48', '1');
INSERT INTO `tb_product_bids` VALUES ('94', '2', '20', '1.00', '2017-02-04 23:19:59', '1');
INSERT INTO `tb_product_bids` VALUES ('95', '56', '20', '3.00', '2017-02-05 01:26:38', '1');
INSERT INTO `tb_product_bids` VALUES ('96', '49', '20', '3.00', '2017-02-05 04:06:48', '1');

-- ----------------------------
-- Table structure for tb_product_video
-- ----------------------------
DROP TABLE IF EXISTS `tb_product_video`;
CREATE TABLE `tb_product_video` (
  `VIDEO_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRODUCT_ID` int(11) DEFAULT NULL,
  `VIDEO_URL` varchar(255) DEFAULT NULL,
  `AUTOPLAY` int(1) DEFAULT '1',
  PRIMARY KEY (`VIDEO_ID`),
  KEY `PRODUCT_ID` (`PRODUCT_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_product_video
-- ----------------------------

-- ----------------------------
-- Table structure for tb_users
-- ----------------------------
DROP TABLE IF EXISTS `tb_users`;
CREATE TABLE `tb_users` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT,
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
  `RECEIVE_SMS` int(1) DEFAULT '1',
  `RECIEVE_EMAIL` int(1) DEFAULT '1',
  `RECIEVE_PUSH` int(1) DEFAULT NULL,
  `STATUS` int(1) DEFAULT '1' COMMENT 'Active or inactive',
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`USER_ID`),
  UNIQUE KEY `EMAIL_ADDRESS` (`EMAIL_ADDRESS`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_users
-- ----------------------------
INSERT INTO `tb_users` VALUES ('5', 'Sammy Barasa', 'barsamms@gmail.com', 'A', '63aaa47cb0b76f0b157c40cdba9bf78653a7af37', null, 'g5BcDmUAkeXf0uQd31E8lHD0SXtZGScK', '254713196504', '43', 'KE', null, '1', '1', null, '1', '2016-11-22 14:29:53', '2017-02-17 03:50:17');
INSERT INTO `tb_users` VALUES ('7', 'Norven', 'me.norvenjohnpaul@gmail.com', 'A', '7288edd0fc3ffcbe93a0cf06e3568e28521687bc', null, 'ECTkS1Q-xH_m3-T4xOcrSexF8DodwxjI', null, 'GMT +3', null, null, '1', '1', null, '1', '2016-11-26 05:51:48', '2017-02-17 03:50:17');
INSERT INTO `tb_users` VALUES ('8', 'Lody Tacastacas', 'lody.tacastacas@pristone.net', 'N', 'aaab8a1f22229bf2bf267b1ea358ee51a3655f36', null, 't47XSGdxLId6kFdFH07JZy6PruSFkgdY', null, 'GMT +3', null, null, '1', '1', null, '1', '2016-11-28 08:09:14', '2017-02-17 03:50:17');
INSERT INTO `tb_users` VALUES ('9', 'Lody Tacastacas', 'lodyjoy@yahoo.com', 'N', 'aaab8a1f22229bf2bf267b1ea358ee51a3655f36', null, 'p7aPDoF9zBRnuhnhIX6hk9ZL4zaoB19j', '639192855619', '237', 'PH', null, '1', '1', null, '1', '2016-12-20 09:20:57', '2017-02-17 03:50:17');
INSERT INTO `tb_users` VALUES ('10', 'Edward', 'mabonga@pristone.net', 'N', '3236ea58549a30b37fed881208c8f770d0532586', null, '_MQYskz-_lZUuyd4GUBSypWmjn3l9Xun', null, 'GMT +3', null, null, '1', '1', null, '1', '2016-12-21 07:08:42', '2017-02-17 03:50:17');
INSERT INTO `tb_users` VALUES ('12', 'dfsdfsdfsfd', '123123123@123.com', 'N', '7288edd0fc3ffcbe93a0cf06e3568e28521687bc', null, 'yGF40Yda1QLluQsRQgHtLshEjkzM3he2', null, 'GMT +3', null, null, '1', '1', null, '1', '2016-12-23 22:19:59', '2017-02-17 03:50:17');
INSERT INTO `tb_users` VALUES ('13', 'App Tech', 'apptechrecruitment@gmail.com', 'N', 'c442ed9a4ea6bccef4e217edede11413e3aa20c3', null, 'jIzbu9YvJOFlgJ1yLtuouVw-ouMLDNHT', null, 'GMT +3', null, null, '1', '1', null, '1', '2017-01-10 05:16:23', '2017-02-17 03:50:17');
INSERT INTO `tb_users` VALUES ('14', 'Marco Barfield', 'marcobarfield@earthlink.net', 'N', 'b105490758ca396a99d0d6908d517efe3e02126d', null, 'l0qUnDaGFeVqsmBsSD-eBdJ-04HIf9M-', null, 'GMT +3', null, null, '1', '1', null, '1', '2017-01-11 16:59:36', '2017-02-17 03:50:17');
INSERT INTO `tb_users` VALUES ('15', 'shrikant parikh', 'cmjewelshouston@aol.com', 'N', '02334b3a008b92d6d04fa2f799423e7132bb234d', null, 'v8Y4M-GqBBOQEFdCm49NwTUIOniV1PIT', null, 'GMT +3', null, null, '1', '1', null, '1', '2017-01-17 12:55:22', '2017-02-17 03:50:17');
INSERT INTO `tb_users` VALUES ('16', 'Lodyjoy', 'lodyjoy@hotmail.com', 'N', 'aaab8a1f22229bf2bf267b1ea358ee51a3655f36', null, '57dVcEZ0XekWeCrtysayE-z7OsC2iFxZ', null, 'GMT +3', null, null, '1', '1', null, '1', '2017-01-18 04:19:24', '2017-02-17 03:50:17');
INSERT INTO `tb_users` VALUES ('17', 'Vannarin', 'Khimbros764@yahoo.com', 'N', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', null, 'Uc5vQwPrURH2M1OObCsWWPlJRZXMZ695', null, 'GMT +3', null, null, '1', '1', null, '1', '2017-01-26 15:58:37', '2017-02-17 03:50:17');
INSERT INTO `tb_users` VALUES ('18', 'Jean-Luc Dalmas', 'jeeanlucdalmas@protonmail.com', 'N', 'bf1f66ea152e2ec27d2133445f92335370ce376a', null, 'TlgjvVWhh7a6JB5L7XxyaHcuYN_QFa5U', null, 'GMT +3', null, null, '1', '1', null, '1', '2017-01-29 15:32:19', '2017-02-17 03:50:17');
INSERT INTO `tb_users` VALUES ('19', 'Jean-Luc Dalmas', 'jeanlucdalmas@protonmail.com', 'N', 'bf1f66ea152e2ec27d2133445f92335370ce376a', null, 'Z6Z8x2rgdAvDHq_LyvJDi5GYunDCo3dP', null, 'GMT +3', null, null, '1', '1', null, '1', '2017-01-29 15:36:44', '2017-02-17 03:50:17');
INSERT INTO `tb_users` VALUES ('20', 'olivier linossier', 'olivier@olicorp.ch', 'N', 'e1a815f36ea62f2572a8c5c468e3f880f682df94', null, 'wVF8hXloXHQmyvfFjo69SxwTXiKOIy0f', null, 'GMT +3', null, null, '1', '1', null, '1', '2017-02-03 06:41:28', '2017-02-17 03:50:17');
INSERT INTO `tb_users` VALUES ('21', 'Edward Mabonga', 'mabonga@gmail.com', 'N', '2843f4cec51c3232ebaeddc94f825db9005cb8f9', null, '3dxSN475dqzaXJp7YMcjUl6OSHYQ5E9D', null, 'GMT +3', null, null, '1', '1', null, '1', '2017-02-08 15:39:54', '2017-02-17 03:50:17');

-- ----------------------------
-- Table structure for tb_user_address
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_address`;
CREATE TABLE `tb_user_address` (
  `ADDRESS_ID` int(11) NOT NULL AUTO_INCREMENT,
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
  `UPDATED` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ADDRESS_ID`),
  KEY `FK_USER_ADDRESS_ID` (`USER_ID`),
  CONSTRAINT `FK_USER_ADDRESS_ID` FOREIGN KEY (`USER_ID`) REFERENCES `tb_users` (`USER_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_user_address
-- ----------------------------
INSERT INTO `tb_user_address` VALUES ('1', '8', 'Lody Tacastacas', '', 'Testing Address', '', null, 'Davao City', '', '8000', 'PH', '639192855619', '1', 'SHIPPING ADDRESS', '1', '2016-12-16 18:11:56', '0000-00-00 00:00:00');
INSERT INTO `tb_user_address` VALUES ('2', '5', 'Sammy Barasa', 'Tsobu Enterprise', 'PO Box 9 Thika', '', null, 'Thika', 'Thika', '00100', 'KE', '254713196504', '1', 'BILLING ADDRESS', '1', '2017-01-31 15:04:13', '0000-00-00 00:00:00');

-- ----------------------------
-- Table structure for tb_user_history
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_history`;
CREATE TABLE `tb_user_history` (
  `HISTORY_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `PRODUCT_ID` int(11) NOT NULL,
  `PRICE_BOUGHT` decimal(2,0) NOT NULL DEFAULT '0',
  `DATE_ADDED` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `ACTION_TYPE` varchar(20) DEFAULT NULL COMMENT 'Bid or direct purchase',
  PRIMARY KEY (`HISTORY_ID`),
  KEY `tb_user_history_ibfk_1` (`USER_ID`),
  KEY `tb_user_history_ibfk_2` (`PRODUCT_ID`),
  CONSTRAINT `tb_user_history_ibfk_1` FOREIGN KEY (`USER_ID`) REFERENCES `tb_users` (`USER_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_user_history
-- ----------------------------

-- ----------------------------
-- Table structure for timezones
-- ----------------------------
DROP TABLE IF EXISTS `timezones`;
CREATE TABLE `timezones` (
  `TIMEZONE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `COUNTRY_CODE` varchar(255) DEFAULT NULL,
  `TIMEZONE` varchar(30) DEFAULT NULL,
  `GMT_OFFSET` int(5) DEFAULT NULL,
  `DST_OFFSET` int(5) DEFAULT NULL,
  `RAW_OFFSET` int(5) DEFAULT NULL,
  PRIMARY KEY (`TIMEZONE_ID`),
  KEY `GMT_OFFSET` (`GMT_OFFSET`,`DST_OFFSET`,`RAW_OFFSET`),
  KEY `COUNTRY_CODE` (`COUNTRY_CODE`)
) ENGINE=InnoDB AUTO_INCREMENT=422 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of timezones
-- ----------------------------
INSERT INTO `timezones` VALUES ('1', 'CI', 'Africa/Abidjan', '0', '0', '0');
INSERT INTO `timezones` VALUES ('2', 'GH', 'Africa/Accra', '0', '0', '0');
INSERT INTO `timezones` VALUES ('3', 'ET', 'Africa/Addis_Ababa', '3', '3', '3');
INSERT INTO `timezones` VALUES ('4', 'DZ', 'Africa/Algiers', '1', '1', '1');
INSERT INTO `timezones` VALUES ('5', 'ER', 'Africa/Asmara', '3', '3', '3');
INSERT INTO `timezones` VALUES ('6', 'ML', 'Africa/Bamako', '0', '0', '0');
INSERT INTO `timezones` VALUES ('7', 'CF', 'Africa/Bangui', '1', '1', '1');
INSERT INTO `timezones` VALUES ('8', 'GM', 'Africa/Banjul', '0', '0', '0');
INSERT INTO `timezones` VALUES ('9', 'GW', 'Africa/Bissau', '0', '0', '0');
INSERT INTO `timezones` VALUES ('10', 'MW', 'Africa/Blantyre', '2', '2', '2');
INSERT INTO `timezones` VALUES ('11', 'CG', 'Africa/Brazzaville', '1', '1', '1');
INSERT INTO `timezones` VALUES ('12', 'BI', 'Africa/Bujumbura', '2', '2', '2');
INSERT INTO `timezones` VALUES ('13', 'EG', 'Africa/Cairo', '2', '2', '2');
INSERT INTO `timezones` VALUES ('14', 'MA', 'Africa/Casablanca', '0', '0', '0');
INSERT INTO `timezones` VALUES ('15', 'ES', 'Africa/Ceuta', '1', '2', '1');
INSERT INTO `timezones` VALUES ('16', 'GN', 'Africa/Conakry', '0', '0', '0');
INSERT INTO `timezones` VALUES ('17', 'SN', 'Africa/Dakar', '0', '0', '0');
INSERT INTO `timezones` VALUES ('18', 'TZ', 'Africa/Dar_es_Salaam', '3', '3', '3');
INSERT INTO `timezones` VALUES ('19', 'DJ', 'Africa/Djibouti', '3', '3', '3');
INSERT INTO `timezones` VALUES ('20', 'CM', 'Africa/Douala', '1', '1', '1');
INSERT INTO `timezones` VALUES ('21', 'EH', 'Africa/El_Aaiun', '0', '0', '0');
INSERT INTO `timezones` VALUES ('22', 'SL', 'Africa/Freetown', '0', '0', '0');
INSERT INTO `timezones` VALUES ('23', 'BW', 'Africa/Gaborone', '2', '2', '2');
INSERT INTO `timezones` VALUES ('24', 'ZW', 'Africa/Harare', '2', '2', '2');
INSERT INTO `timezones` VALUES ('25', 'ZA', 'Africa/Johannesburg', '2', '2', '2');
INSERT INTO `timezones` VALUES ('26', 'SS', 'Africa/Juba', '3', '3', '3');
INSERT INTO `timezones` VALUES ('27', 'UG', 'Africa/Kampala', '3', '3', '3');
INSERT INTO `timezones` VALUES ('28', 'SD', 'Africa/Khartoum', '3', '3', '3');
INSERT INTO `timezones` VALUES ('29', 'RW', 'Africa/Kigali', '2', '2', '2');
INSERT INTO `timezones` VALUES ('30', 'CD', 'Africa/Kinshasa', '1', '1', '1');
INSERT INTO `timezones` VALUES ('31', 'NG', 'Africa/Lagos', '1', '1', '1');
INSERT INTO `timezones` VALUES ('32', 'GA', 'Africa/Libreville', '1', '1', '1');
INSERT INTO `timezones` VALUES ('33', 'TG', 'Africa/Lome', '0', '0', '0');
INSERT INTO `timezones` VALUES ('34', 'AO', 'Africa/Luanda', '1', '1', '1');
INSERT INTO `timezones` VALUES ('35', 'CD', 'Africa/Lubumbashi', '2', '2', '2');
INSERT INTO `timezones` VALUES ('36', 'ZM', 'Africa/Lusaka', '2', '2', '2');
INSERT INTO `timezones` VALUES ('37', 'GQ', 'Africa/Malabo', '1', '1', '1');
INSERT INTO `timezones` VALUES ('38', 'MZ', 'Africa/Maputo', '2', '2', '2');
INSERT INTO `timezones` VALUES ('39', 'LS', 'Africa/Maseru', '2', '2', '2');
INSERT INTO `timezones` VALUES ('40', 'SZ', 'Africa/Mbabane', '2', '2', '2');
INSERT INTO `timezones` VALUES ('41', 'SO', 'Africa/Mogadishu', '3', '3', '3');
INSERT INTO `timezones` VALUES ('42', 'LR', 'Africa/Monrovia', '0', '0', '0');
INSERT INTO `timezones` VALUES ('43', 'KE', 'Africa/Nairobi', '3', '3', '3');
INSERT INTO `timezones` VALUES ('44', 'TD', 'Africa/Ndjamena', '1', '1', '1');
INSERT INTO `timezones` VALUES ('45', 'NE', 'Africa/Niamey', '1', '1', '1');
INSERT INTO `timezones` VALUES ('46', 'MR', 'Africa/Nouakchott', '0', '0', '0');
INSERT INTO `timezones` VALUES ('47', 'BF', 'Africa/Ouagadougou', '0', '0', '0');
INSERT INTO `timezones` VALUES ('48', 'BJ', 'Africa/Porto-Novo', '1', '1', '1');
INSERT INTO `timezones` VALUES ('49', 'ST', 'Africa/Sao_Tome', '0', '0', '0');
INSERT INTO `timezones` VALUES ('50', 'LY', 'Africa/Tripoli', '2', '2', '2');
INSERT INTO `timezones` VALUES ('51', 'TN', 'Africa/Tunis', '1', '1', '1');
INSERT INTO `timezones` VALUES ('52', 'NA', 'Africa/Windhoek', '2', '1', '1');
INSERT INTO `timezones` VALUES ('53', 'US', 'America/Adak', '-10', '-9', '-10');
INSERT INTO `timezones` VALUES ('54', 'US', 'America/Anchorage', '-9', '-8', '-9');
INSERT INTO `timezones` VALUES ('55', 'AI', 'America/Anguilla', '-4', '-4', '-4');
INSERT INTO `timezones` VALUES ('56', 'AG', 'America/Antigua', '-4', '-4', '-4');
INSERT INTO `timezones` VALUES ('57', 'BR', 'America/Araguaina', '-3', '-3', '-3');
INSERT INTO `timezones` VALUES ('58', 'AR', 'America/Argentina/Buenos_Aires', '-3', '-3', '-3');
INSERT INTO `timezones` VALUES ('59', 'AR', 'America/Argentina/Catamarca', '-3', '-3', '-3');
INSERT INTO `timezones` VALUES ('60', 'AR', 'America/Argentina/Cordoba', '-3', '-3', '-3');
INSERT INTO `timezones` VALUES ('61', 'AR', 'America/Argentina/Jujuy', '-3', '-3', '-3');
INSERT INTO `timezones` VALUES ('62', 'AR', 'America/Argentina/La_Rioja', '-3', '-3', '-3');
INSERT INTO `timezones` VALUES ('63', 'AR', 'America/Argentina/Mendoza', '-3', '-3', '-3');
INSERT INTO `timezones` VALUES ('64', 'AR', 'America/Argentina/Rio_Gallegos', '-3', '-3', '-3');
INSERT INTO `timezones` VALUES ('65', 'AR', 'America/Argentina/Salta', '-3', '-3', '-3');
INSERT INTO `timezones` VALUES ('66', 'AR', 'America/Argentina/San_Juan', '-3', '-3', '-3');
INSERT INTO `timezones` VALUES ('67', 'AR', 'America/Argentina/San_Luis', '-3', '-3', '-3');
INSERT INTO `timezones` VALUES ('68', 'AR', 'America/Argentina/Tucuman', '-3', '-3', '-3');
INSERT INTO `timezones` VALUES ('69', 'AR', 'America/Argentina/Ushuaia', '-3', '-3', '-3');
INSERT INTO `timezones` VALUES ('70', 'AW', 'America/Aruba', '-4', '-4', '-4');
INSERT INTO `timezones` VALUES ('71', 'PY', 'America/Asuncion', '-3', '-4', '-4');
INSERT INTO `timezones` VALUES ('72', 'CA', 'America/Atikokan', '-5', '-5', '-5');
INSERT INTO `timezones` VALUES ('73', 'BR', 'America/Bahia', '-3', '-3', '-3');
INSERT INTO `timezones` VALUES ('74', 'MX', 'America/Bahia_Banderas', '-6', '-5', '-6');
INSERT INTO `timezones` VALUES ('75', 'BB', 'America/Barbados', '-4', '-4', '-4');
INSERT INTO `timezones` VALUES ('76', 'BR', 'America/Belem', '-3', '-3', '-3');
INSERT INTO `timezones` VALUES ('77', 'BZ', 'America/Belize', '-6', '-6', '-6');
INSERT INTO `timezones` VALUES ('78', 'CA', 'America/Blanc-Sablon', '-4', '-4', '-4');
INSERT INTO `timezones` VALUES ('79', 'BR', 'America/Boa_Vista', '-4', '-4', '-4');
INSERT INTO `timezones` VALUES ('80', 'CO', 'America/Bogota', '-5', '-5', '-5');
INSERT INTO `timezones` VALUES ('81', 'US', 'America/Boise', '-7', '-6', '-7');
INSERT INTO `timezones` VALUES ('82', 'CA', 'America/Cambridge_Bay', '-7', '-6', '-7');
INSERT INTO `timezones` VALUES ('83', 'BR', 'America/Campo_Grande', '-3', '-4', '-4');
INSERT INTO `timezones` VALUES ('84', 'MX', 'America/Cancun', '-5', '-5', '-5');
INSERT INTO `timezones` VALUES ('85', 'VE', 'America/Caracas', '-5', '-4', '-4');
INSERT INTO `timezones` VALUES ('86', 'GF', 'America/Cayenne', '-3', '-3', '-3');
INSERT INTO `timezones` VALUES ('87', 'KY', 'America/Cayman', '-5', '-5', '-5');
INSERT INTO `timezones` VALUES ('88', 'US', 'America/Chicago', '-6', '-5', '-6');
INSERT INTO `timezones` VALUES ('89', 'MX', 'America/Chihuahua', '-7', '-6', '-7');
INSERT INTO `timezones` VALUES ('90', 'CR', 'America/Costa_Rica', '-6', '-6', '-6');
INSERT INTO `timezones` VALUES ('91', 'CA', 'America/Creston', '-7', '-7', '-7');
INSERT INTO `timezones` VALUES ('92', 'BR', 'America/Cuiaba', '-3', '-4', '-4');
INSERT INTO `timezones` VALUES ('93', 'CW', 'America/Curacao', '-4', '-4', '-4');
INSERT INTO `timezones` VALUES ('94', 'GL', 'America/Danmarkshavn', '0', '0', '0');
INSERT INTO `timezones` VALUES ('95', 'CA', 'America/Dawson', '-8', '-7', '-8');
INSERT INTO `timezones` VALUES ('96', 'CA', 'America/Dawson_Creek', '-7', '-7', '-7');
INSERT INTO `timezones` VALUES ('97', 'US', 'America/Denver', '-7', '-6', '-7');
INSERT INTO `timezones` VALUES ('98', 'US', 'America/Detroit', '-5', '-4', '-5');
INSERT INTO `timezones` VALUES ('99', 'DM', 'America/Dominica', '-4', '-4', '-4');
INSERT INTO `timezones` VALUES ('100', 'CA', 'America/Edmonton', '-7', '-6', '-7');
INSERT INTO `timezones` VALUES ('101', 'BR', 'America/Eirunepe', '-5', '-5', '-5');
INSERT INTO `timezones` VALUES ('102', 'SV', 'America/El_Salvador', '-6', '-6', '-6');
INSERT INTO `timezones` VALUES ('103', 'CA', 'America/Fort_Nelson', '-7', '-7', '-7');
INSERT INTO `timezones` VALUES ('104', 'BR', 'America/Fortaleza', '-3', '-3', '-3');
INSERT INTO `timezones` VALUES ('105', 'CA', 'America/Glace_Bay', '-4', '-3', '-4');
INSERT INTO `timezones` VALUES ('106', 'GL', 'America/Godthab', '-3', '-2', '-3');
INSERT INTO `timezones` VALUES ('107', 'CA', 'America/Goose_Bay', '-4', '-3', '-4');
INSERT INTO `timezones` VALUES ('108', 'TC', 'America/Grand_Turk', '-4', '-4', '-4');
INSERT INTO `timezones` VALUES ('109', 'GD', 'America/Grenada', '-4', '-4', '-4');
INSERT INTO `timezones` VALUES ('110', 'GP', 'America/Guadeloupe', '-4', '-4', '-4');
INSERT INTO `timezones` VALUES ('111', 'GT', 'America/Guatemala', '-6', '-6', '-6');
INSERT INTO `timezones` VALUES ('112', 'EC', 'America/Guayaquil', '-5', '-5', '-5');
INSERT INTO `timezones` VALUES ('113', 'GY', 'America/Guyana', '-4', '-4', '-4');
INSERT INTO `timezones` VALUES ('114', 'CA', 'America/Halifax', '-4', '-3', '-4');
INSERT INTO `timezones` VALUES ('115', 'CU', 'America/Havana', '-5', '-4', '-5');
INSERT INTO `timezones` VALUES ('116', 'MX', 'America/Hermosillo', '-7', '-7', '-7');
INSERT INTO `timezones` VALUES ('117', 'US', 'America/Indiana/Indianapolis', '-5', '-4', '-5');
INSERT INTO `timezones` VALUES ('118', 'US', 'America/Indiana/Knox', '-6', '-5', '-6');
INSERT INTO `timezones` VALUES ('119', 'US', 'America/Indiana/Marengo', '-5', '-4', '-5');
INSERT INTO `timezones` VALUES ('120', 'US', 'America/Indiana/Petersburg', '-5', '-4', '-5');
INSERT INTO `timezones` VALUES ('121', 'US', 'America/Indiana/Tell_City', '-6', '-5', '-6');
INSERT INTO `timezones` VALUES ('122', 'US', 'America/Indiana/Vevay', '-5', '-4', '-5');
INSERT INTO `timezones` VALUES ('123', 'US', 'America/Indiana/Vincennes', '-5', '-4', '-5');
INSERT INTO `timezones` VALUES ('124', 'US', 'America/Indiana/Winamac', '-5', '-4', '-5');
INSERT INTO `timezones` VALUES ('125', 'CA', 'America/Inuvik', '-7', '-6', '-7');
INSERT INTO `timezones` VALUES ('126', 'CA', 'America/Iqaluit', '-5', '-4', '-5');
INSERT INTO `timezones` VALUES ('127', 'JM', 'America/Jamaica', '-5', '-5', '-5');
INSERT INTO `timezones` VALUES ('128', 'US', 'America/Juneau', '-9', '-8', '-9');
INSERT INTO `timezones` VALUES ('129', 'US', 'America/Kentucky/Louisville', '-5', '-4', '-5');
INSERT INTO `timezones` VALUES ('130', 'US', 'America/Kentucky/Monticello', '-5', '-4', '-5');
INSERT INTO `timezones` VALUES ('131', 'BQ', 'America/Kralendijk', '-4', '-4', '-4');
INSERT INTO `timezones` VALUES ('132', 'BO', 'America/La_Paz', '-4', '-4', '-4');
INSERT INTO `timezones` VALUES ('133', 'PE', 'America/Lima', '-5', '-5', '-5');
INSERT INTO `timezones` VALUES ('134', 'US', 'America/Los_Angeles', '-8', '-7', '-8');
INSERT INTO `timezones` VALUES ('135', 'SX', 'America/Lower_Princes', '-4', '-4', '-4');
INSERT INTO `timezones` VALUES ('136', 'BR', 'America/Maceio', '-3', '-3', '-3');
INSERT INTO `timezones` VALUES ('137', 'NI', 'America/Managua', '-6', '-6', '-6');
INSERT INTO `timezones` VALUES ('138', 'BR', 'America/Manaus', '-4', '-4', '-4');
INSERT INTO `timezones` VALUES ('139', 'MF', 'America/Marigot', '-4', '-4', '-4');
INSERT INTO `timezones` VALUES ('140', 'MQ', 'America/Martinique', '-4', '-4', '-4');
INSERT INTO `timezones` VALUES ('141', 'MX', 'America/Matamoros', '-6', '-5', '-6');
INSERT INTO `timezones` VALUES ('142', 'MX', 'America/Mazatlan', '-7', '-6', '-7');
INSERT INTO `timezones` VALUES ('143', 'US', 'America/Menominee', '-6', '-5', '-6');
INSERT INTO `timezones` VALUES ('144', 'MX', 'America/Merida', '-6', '-5', '-6');
INSERT INTO `timezones` VALUES ('145', 'US', 'America/Metlakatla', '-9', '-8', '-9');
INSERT INTO `timezones` VALUES ('146', 'MX', 'America/Mexico_City', '-6', '-5', '-6');
INSERT INTO `timezones` VALUES ('147', 'PM', 'America/Miquelon', '-3', '-2', '-3');
INSERT INTO `timezones` VALUES ('148', 'CA', 'America/Moncton', '-4', '-3', '-4');
INSERT INTO `timezones` VALUES ('149', 'MX', 'America/Monterrey', '-6', '-5', '-6');
INSERT INTO `timezones` VALUES ('150', 'UY', 'America/Montevideo', '-3', '-3', '-3');
INSERT INTO `timezones` VALUES ('151', 'MS', 'America/Montserrat', '-4', '-4', '-4');
INSERT INTO `timezones` VALUES ('152', 'BS', 'America/Nassau', '-5', '-4', '-5');
INSERT INTO `timezones` VALUES ('153', 'US', 'America/New_York', '-5', '-4', '-5');
INSERT INTO `timezones` VALUES ('154', 'CA', 'America/Nipigon', '-5', '-4', '-5');
INSERT INTO `timezones` VALUES ('155', 'US', 'America/Nome', '-9', '-8', '-9');
INSERT INTO `timezones` VALUES ('156', 'BR', 'America/Noronha', '-2', '-2', '-2');
INSERT INTO `timezones` VALUES ('157', 'US', 'America/North_Dakota/Beulah', '-6', '-5', '-6');
INSERT INTO `timezones` VALUES ('158', 'US', 'America/North_Dakota/Center', '-6', '-5', '-6');
INSERT INTO `timezones` VALUES ('159', 'US', 'America/North_Dakota/New_Salem', '-6', '-5', '-6');
INSERT INTO `timezones` VALUES ('160', 'MX', 'America/Ojinaga', '-7', '-6', '-7');
INSERT INTO `timezones` VALUES ('161', 'PA', 'America/Panama', '-5', '-5', '-5');
INSERT INTO `timezones` VALUES ('162', 'CA', 'America/Pangnirtung', '-5', '-4', '-5');
INSERT INTO `timezones` VALUES ('163', 'SR', 'America/Paramaribo', '-3', '-3', '-3');
INSERT INTO `timezones` VALUES ('164', 'US', 'America/Phoenix', '-7', '-7', '-7');
INSERT INTO `timezones` VALUES ('165', 'HT', 'America/Port-au-Prince', '-5', '-5', '-5');
INSERT INTO `timezones` VALUES ('166', 'TT', 'America/Port_of_Spain', '-4', '-4', '-4');
INSERT INTO `timezones` VALUES ('167', 'BR', 'America/Porto_Velho', '-4', '-4', '-4');
INSERT INTO `timezones` VALUES ('168', 'PR', 'America/Puerto_Rico', '-4', '-4', '-4');
INSERT INTO `timezones` VALUES ('169', 'CA', 'America/Rainy_River', '-6', '-5', '-6');
INSERT INTO `timezones` VALUES ('170', 'CA', 'America/Rankin_Inlet', '-6', '-5', '-6');
INSERT INTO `timezones` VALUES ('171', 'BR', 'America/Recife', '-3', '-3', '-3');
INSERT INTO `timezones` VALUES ('172', 'CA', 'America/Regina', '-6', '-6', '-6');
INSERT INTO `timezones` VALUES ('173', 'CA', 'America/Resolute', '-6', '-5', '-6');
INSERT INTO `timezones` VALUES ('174', 'BR', 'America/Rio_Branco', '-5', '-5', '-5');
INSERT INTO `timezones` VALUES ('175', 'BR', 'America/Santarem', '-3', '-3', '-3');
INSERT INTO `timezones` VALUES ('176', 'CL', 'America/Santiago', '-3', '-4', '-4');
INSERT INTO `timezones` VALUES ('177', 'DO', 'America/Santo_Domingo', '-4', '-4', '-4');
INSERT INTO `timezones` VALUES ('178', 'BR', 'America/Sao_Paulo', '-2', '-3', '-3');
INSERT INTO `timezones` VALUES ('179', 'GL', 'America/Scoresbysund', '-1', '0', '-1');
INSERT INTO `timezones` VALUES ('180', 'US', 'America/Sitka', '-9', '-8', '-9');
INSERT INTO `timezones` VALUES ('181', 'BL', 'America/St_Barthelemy', '-4', '-4', '-4');
INSERT INTO `timezones` VALUES ('182', 'CA', 'America/St_Johns', '-4', '-3', '-4');
INSERT INTO `timezones` VALUES ('183', 'KN', 'America/St_Kitts', '-4', '-4', '-4');
INSERT INTO `timezones` VALUES ('184', 'LC', 'America/St_Lucia', '-4', '-4', '-4');
INSERT INTO `timezones` VALUES ('185', 'VI', 'America/St_Thomas', '-4', '-4', '-4');
INSERT INTO `timezones` VALUES ('186', 'VC', 'America/St_Vincent', '-4', '-4', '-4');
INSERT INTO `timezones` VALUES ('187', 'CA', 'America/Swift_Current', '-6', '-6', '-6');
INSERT INTO `timezones` VALUES ('188', 'HN', 'America/Tegucigalpa', '-6', '-6', '-6');
INSERT INTO `timezones` VALUES ('189', 'GL', 'America/Thule', '-4', '-3', '-4');
INSERT INTO `timezones` VALUES ('190', 'CA', 'America/Thunder_Bay', '-5', '-4', '-5');
INSERT INTO `timezones` VALUES ('191', 'MX', 'America/Tijuana', '-8', '-7', '-8');
INSERT INTO `timezones` VALUES ('192', 'CA', 'America/Toronto', '-5', '-4', '-5');
INSERT INTO `timezones` VALUES ('193', 'VG', 'America/Tortola', '-4', '-4', '-4');
INSERT INTO `timezones` VALUES ('194', 'CA', 'America/Vancouver', '-8', '-7', '-8');
INSERT INTO `timezones` VALUES ('195', 'CA', 'America/Whitehorse', '-8', '-7', '-8');
INSERT INTO `timezones` VALUES ('196', 'CA', 'America/Winnipeg', '-6', '-5', '-6');
INSERT INTO `timezones` VALUES ('197', 'US', 'America/Yakutat', '-9', '-8', '-9');
INSERT INTO `timezones` VALUES ('198', 'CA', 'America/Yellowknife', '-7', '-6', '-7');
INSERT INTO `timezones` VALUES ('199', 'AQ', 'Antarctica/Casey', '8', '8', '8');
INSERT INTO `timezones` VALUES ('200', 'AQ', 'Antarctica/Davis', '7', '7', '7');
INSERT INTO `timezones` VALUES ('201', 'AQ', 'Antarctica/DumontDUrville', '10', '10', '10');
INSERT INTO `timezones` VALUES ('202', 'AU', 'Antarctica/Macquarie', '11', '11', '11');
INSERT INTO `timezones` VALUES ('203', 'AQ', 'Antarctica/Mawson', '5', '5', '5');
INSERT INTO `timezones` VALUES ('204', 'AQ', 'Antarctica/McMurdo', '13', '12', '12');
INSERT INTO `timezones` VALUES ('205', 'AQ', 'Antarctica/Palmer', '-3', '-4', '-4');
INSERT INTO `timezones` VALUES ('206', 'AQ', 'Antarctica/Rothera', '-3', '-3', '-3');
INSERT INTO `timezones` VALUES ('207', 'AQ', 'Antarctica/Syowa', '3', '3', '3');
INSERT INTO `timezones` VALUES ('208', 'AQ', 'Antarctica/Troll', '0', '2', '0');
INSERT INTO `timezones` VALUES ('209', 'AQ', 'Antarctica/Vostok', '6', '6', '6');
INSERT INTO `timezones` VALUES ('210', 'SJ', 'Arctic/Longyearbyen', '1', '2', '1');
INSERT INTO `timezones` VALUES ('211', 'YE', 'Asia/Aden', '3', '3', '3');
INSERT INTO `timezones` VALUES ('212', 'KZ', 'Asia/Almaty', '6', '6', '6');
INSERT INTO `timezones` VALUES ('213', 'JO', 'Asia/Amman', '2', '3', '2');
INSERT INTO `timezones` VALUES ('214', 'RU', 'Asia/Anadyr', '12', '12', '12');
INSERT INTO `timezones` VALUES ('215', 'KZ', 'Asia/Aqtau', '5', '5', '5');
INSERT INTO `timezones` VALUES ('216', 'KZ', 'Asia/Aqtobe', '5', '5', '5');
INSERT INTO `timezones` VALUES ('217', 'TM', 'Asia/Ashgabat', '5', '5', '5');
INSERT INTO `timezones` VALUES ('218', 'IQ', 'Asia/Baghdad', '3', '3', '3');
INSERT INTO `timezones` VALUES ('219', 'BH', 'Asia/Bahrain', '3', '3', '3');
INSERT INTO `timezones` VALUES ('220', 'AZ', 'Asia/Baku', '4', '4', '4');
INSERT INTO `timezones` VALUES ('221', 'TH', 'Asia/Bangkok', '7', '7', '7');
INSERT INTO `timezones` VALUES ('222', 'RU', 'Asia/Barnaul', '6', '7', '7');
INSERT INTO `timezones` VALUES ('223', 'LB', 'Asia/Beirut', '2', '3', '2');
INSERT INTO `timezones` VALUES ('224', 'KG', 'Asia/Bishkek', '6', '6', '6');
INSERT INTO `timezones` VALUES ('225', 'BN', 'Asia/Brunei', '8', '8', '8');
INSERT INTO `timezones` VALUES ('226', 'RU', 'Asia/Chita', '8', '9', '9');
INSERT INTO `timezones` VALUES ('227', 'MN', 'Asia/Choibalsan', '8', '9', '8');
INSERT INTO `timezones` VALUES ('228', 'LK', 'Asia/Colombo', '6', '6', '6');
INSERT INTO `timezones` VALUES ('229', 'SY', 'Asia/Damascus', '2', '3', '2');
INSERT INTO `timezones` VALUES ('230', 'BD', 'Asia/Dhaka', '6', '6', '6');
INSERT INTO `timezones` VALUES ('231', 'TL', 'Asia/Dili', '9', '9', '9');
INSERT INTO `timezones` VALUES ('232', 'AE', 'Asia/Dubai', '4', '4', '4');
INSERT INTO `timezones` VALUES ('233', 'TJ', 'Asia/Dushanbe', '5', '5', '5');
INSERT INTO `timezones` VALUES ('234', 'PS', 'Asia/Gaza', '2', '3', '2');
INSERT INTO `timezones` VALUES ('235', 'PS', 'Asia/Hebron', '2', '3', '2');
INSERT INTO `timezones` VALUES ('236', 'VN', 'Asia/Ho_Chi_Minh', '7', '7', '7');
INSERT INTO `timezones` VALUES ('237', 'HK', 'Asia/Hong_Kong', '8', '8', '8');
INSERT INTO `timezones` VALUES ('238', 'MN', 'Asia/Hovd', '7', '8', '7');
INSERT INTO `timezones` VALUES ('239', 'RU', 'Asia/Irkutsk', '8', '8', '8');
INSERT INTO `timezones` VALUES ('240', 'ID', 'Asia/Jakarta', '7', '7', '7');
INSERT INTO `timezones` VALUES ('241', 'ID', 'Asia/Jayapura', '9', '9', '9');
INSERT INTO `timezones` VALUES ('242', 'IL', 'Asia/Jerusalem', '2', '3', '2');
INSERT INTO `timezones` VALUES ('243', 'AF', 'Asia/Kabul', '5', '5', '5');
INSERT INTO `timezones` VALUES ('244', 'RU', 'Asia/Kamchatka', '12', '12', '12');
INSERT INTO `timezones` VALUES ('245', 'PK', 'Asia/Karachi', '5', '5', '5');
INSERT INTO `timezones` VALUES ('246', 'NP', 'Asia/Kathmandu', '6', '6', '6');
INSERT INTO `timezones` VALUES ('247', 'RU', 'Asia/Khandyga', '9', '9', '9');
INSERT INTO `timezones` VALUES ('248', 'IN', 'Asia/Kolkata', '6', '6', '6');
INSERT INTO `timezones` VALUES ('249', 'RU', 'Asia/Krasnoyarsk', '7', '7', '7');
INSERT INTO `timezones` VALUES ('250', 'MY', 'Asia/Kuala_Lumpur', '8', '8', '8');
INSERT INTO `timezones` VALUES ('251', 'MY', 'Asia/Kuching', '8', '8', '8');
INSERT INTO `timezones` VALUES ('252', 'KW', 'Asia/Kuwait', '3', '3', '3');
INSERT INTO `timezones` VALUES ('253', 'MO', 'Asia/Macau', '8', '8', '8');
INSERT INTO `timezones` VALUES ('254', 'RU', 'Asia/Magadan', '10', '11', '11');
INSERT INTO `timezones` VALUES ('255', 'ID', 'Asia/Makassar', '8', '8', '8');
INSERT INTO `timezones` VALUES ('256', 'PH', 'Asia/Manila', '8', '8', '8');
INSERT INTO `timezones` VALUES ('257', 'OM', 'Asia/Muscat', '4', '4', '4');
INSERT INTO `timezones` VALUES ('258', 'CY', 'Asia/Nicosia', '2', '3', '2');
INSERT INTO `timezones` VALUES ('259', 'RU', 'Asia/Novokuznetsk', '7', '7', '7');
INSERT INTO `timezones` VALUES ('260', 'RU', 'Asia/Novosibirsk', '6', '6', '7');
INSERT INTO `timezones` VALUES ('261', 'RU', 'Asia/Omsk', '6', '6', '6');
INSERT INTO `timezones` VALUES ('262', 'KZ', 'Asia/Oral', '5', '5', '5');
INSERT INTO `timezones` VALUES ('263', 'KH', 'Asia/Phnom_Penh', '7', '7', '7');
INSERT INTO `timezones` VALUES ('264', 'ID', 'Asia/Pontianak', '7', '7', '7');
INSERT INTO `timezones` VALUES ('265', 'KP', 'Asia/Pyongyang', '9', '9', '9');
INSERT INTO `timezones` VALUES ('266', 'QA', 'Asia/Qatar', '3', '3', '3');
INSERT INTO `timezones` VALUES ('267', 'KZ', 'Asia/Qyzylorda', '6', '6', '6');
INSERT INTO `timezones` VALUES ('268', 'MM', 'Asia/Rangoon', '7', '7', '7');
INSERT INTO `timezones` VALUES ('269', 'SA', 'Asia/Riyadh', '3', '3', '3');
INSERT INTO `timezones` VALUES ('270', 'RU', 'Asia/Sakhalin', '10', '11', '11');
INSERT INTO `timezones` VALUES ('271', 'UZ', 'Asia/Samarkand', '5', '5', '5');
INSERT INTO `timezones` VALUES ('272', 'KR', 'Asia/Seoul', '9', '9', '9');
INSERT INTO `timezones` VALUES ('273', 'CN', 'Asia/Shanghai', '8', '8', '8');
INSERT INTO `timezones` VALUES ('274', 'SG', 'Asia/Singapore', '8', '8', '8');
INSERT INTO `timezones` VALUES ('275', 'RU', 'Asia/Srednekolymsk', '11', '11', '11');
INSERT INTO `timezones` VALUES ('276', 'TW', 'Asia/Taipei', '8', '8', '8');
INSERT INTO `timezones` VALUES ('277', 'UZ', 'Asia/Tashkent', '5', '5', '5');
INSERT INTO `timezones` VALUES ('278', 'GE', 'Asia/Tbilisi', '4', '4', '4');
INSERT INTO `timezones` VALUES ('279', 'IR', 'Asia/Tehran', '4', '5', '4');
INSERT INTO `timezones` VALUES ('280', 'BT', 'Asia/Thimphu', '6', '6', '6');
INSERT INTO `timezones` VALUES ('281', 'JP', 'Asia/Tokyo', '9', '9', '9');
INSERT INTO `timezones` VALUES ('282', 'RU', 'Asia/Tomsk', '6', '7', '7');
INSERT INTO `timezones` VALUES ('283', 'MN', 'Asia/Ulaanbaatar', '8', '9', '8');
INSERT INTO `timezones` VALUES ('284', 'CN', 'Asia/Urumqi', '6', '6', '6');
INSERT INTO `timezones` VALUES ('285', 'RU', 'Asia/Ust-Nera', '10', '10', '10');
INSERT INTO `timezones` VALUES ('286', 'LA', 'Asia/Vientiane', '7', '7', '7');
INSERT INTO `timezones` VALUES ('287', 'RU', 'Asia/Vladivostok', '10', '10', '10');
INSERT INTO `timezones` VALUES ('288', 'RU', 'Asia/Yakutsk', '9', '9', '9');
INSERT INTO `timezones` VALUES ('289', 'RU', 'Asia/Yekaterinburg', '5', '5', '5');
INSERT INTO `timezones` VALUES ('290', 'AM', 'Asia/Yerevan', '4', '4', '4');
INSERT INTO `timezones` VALUES ('291', 'PT', 'Atlantic/Azores', '-1', '0', '-1');
INSERT INTO `timezones` VALUES ('292', 'BM', 'Atlantic/Bermuda', '-4', '-3', '-4');
INSERT INTO `timezones` VALUES ('293', 'ES', 'Atlantic/Canary', '0', '1', '0');
INSERT INTO `timezones` VALUES ('294', 'CV', 'Atlantic/Cape_Verde', '-1', '-1', '-1');
INSERT INTO `timezones` VALUES ('295', 'FO', 'Atlantic/Faroe', '0', '1', '0');
INSERT INTO `timezones` VALUES ('296', 'PT', 'Atlantic/Madeira', '0', '1', '0');
INSERT INTO `timezones` VALUES ('297', 'IS', 'Atlantic/Reykjavik', '0', '0', '0');
INSERT INTO `timezones` VALUES ('298', 'GS', 'Atlantic/South_Georgia', '-2', '-2', '-2');
INSERT INTO `timezones` VALUES ('299', 'SH', 'Atlantic/St_Helena', '0', '0', '0');
INSERT INTO `timezones` VALUES ('300', 'FK', 'Atlantic/Stanley', '-3', '-3', '-3');
INSERT INTO `timezones` VALUES ('301', 'AU', 'Australia/Adelaide', '11', '10', '10');
INSERT INTO `timezones` VALUES ('302', 'AU', 'Australia/Brisbane', '10', '10', '10');
INSERT INTO `timezones` VALUES ('303', 'AU', 'Australia/Broken_Hill', '11', '10', '10');
INSERT INTO `timezones` VALUES ('304', 'AU', 'Australia/Currie', '11', '10', '10');
INSERT INTO `timezones` VALUES ('305', 'AU', 'Australia/Darwin', '10', '10', '10');
INSERT INTO `timezones` VALUES ('306', 'AU', 'Australia/Eucla', '9', '9', '9');
INSERT INTO `timezones` VALUES ('307', 'AU', 'Australia/Hobart', '11', '10', '10');
INSERT INTO `timezones` VALUES ('308', 'AU', 'Australia/Lindeman', '10', '10', '10');
INSERT INTO `timezones` VALUES ('309', 'AU', 'Australia/Lord_Howe', '11', '11', '11');
INSERT INTO `timezones` VALUES ('310', 'AU', 'Australia/Melbourne', '11', '10', '10');
INSERT INTO `timezones` VALUES ('311', 'AU', 'Australia/Perth', '8', '8', '8');
INSERT INTO `timezones` VALUES ('312', 'AU', 'Australia/Sydney', '11', '10', '10');
INSERT INTO `timezones` VALUES ('313', 'NL', 'Europe/Amsterdam', '1', '2', '1');
INSERT INTO `timezones` VALUES ('314', 'AD', 'Europe/Andorra', '1', '2', '1');
INSERT INTO `timezones` VALUES ('315', 'RU', 'Europe/Astrakhan', '3', '4', '4');
INSERT INTO `timezones` VALUES ('316', 'GR', 'Europe/Athens', '2', '3', '2');
INSERT INTO `timezones` VALUES ('317', 'RS', 'Europe/Belgrade', '1', '2', '1');
INSERT INTO `timezones` VALUES ('318', 'DE', 'Europe/Berlin', '1', '2', '1');
INSERT INTO `timezones` VALUES ('319', 'SK', 'Europe/Bratislava', '1', '2', '1');
INSERT INTO `timezones` VALUES ('320', 'BE', 'Europe/Brussels', '1', '2', '1');
INSERT INTO `timezones` VALUES ('321', 'RO', 'Europe/Bucharest', '2', '3', '2');
INSERT INTO `timezones` VALUES ('322', 'HU', 'Europe/Budapest', '1', '2', '1');
INSERT INTO `timezones` VALUES ('323', 'DE', 'Europe/Busingen', '1', '2', '1');
INSERT INTO `timezones` VALUES ('324', 'MD', 'Europe/Chisinau', '2', '3', '2');
INSERT INTO `timezones` VALUES ('325', 'DK', 'Europe/Copenhagen', '1', '2', '1');
INSERT INTO `timezones` VALUES ('326', 'IE', 'Europe/Dublin', '0', '1', '0');
INSERT INTO `timezones` VALUES ('327', 'GI', 'Europe/Gibraltar', '1', '2', '1');
INSERT INTO `timezones` VALUES ('328', 'GG', 'Europe/Guernsey', '0', '1', '0');
INSERT INTO `timezones` VALUES ('329', 'FI', 'Europe/Helsinki', '2', '3', '2');
INSERT INTO `timezones` VALUES ('330', 'IM', 'Europe/Isle_of_Man', '0', '1', '0');
INSERT INTO `timezones` VALUES ('331', 'TR', 'Europe/Istanbul', '2', '3', '3');
INSERT INTO `timezones` VALUES ('332', 'JE', 'Europe/Jersey', '0', '1', '0');
INSERT INTO `timezones` VALUES ('333', 'RU', 'Europe/Kaliningrad', '2', '2', '2');
INSERT INTO `timezones` VALUES ('334', 'UA', 'Europe/Kiev', '2', '3', '2');
INSERT INTO `timezones` VALUES ('335', 'RU', 'Europe/Kirov', '3', '3', '3');
INSERT INTO `timezones` VALUES ('336', 'PT', 'Europe/Lisbon', '0', '1', '0');
INSERT INTO `timezones` VALUES ('337', 'SI', 'Europe/Ljubljana', '1', '2', '1');
INSERT INTO `timezones` VALUES ('338', 'GB', 'Europe/London', '0', '1', '0');
INSERT INTO `timezones` VALUES ('339', 'LU', 'Europe/Luxembourg', '1', '2', '1');
INSERT INTO `timezones` VALUES ('340', 'ES', 'Europe/Madrid', '1', '2', '1');
INSERT INTO `timezones` VALUES ('341', 'MT', 'Europe/Malta', '1', '2', '1');
INSERT INTO `timezones` VALUES ('342', 'AX', 'Europe/Mariehamn', '2', '3', '2');
INSERT INTO `timezones` VALUES ('343', 'BY', 'Europe/Minsk', '3', '3', '3');
INSERT INTO `timezones` VALUES ('344', 'MC', 'Europe/Monaco', '1', '2', '1');
INSERT INTO `timezones` VALUES ('345', 'RU', 'Europe/Moscow', '3', '3', '3');
INSERT INTO `timezones` VALUES ('346', 'NO', 'Europe/Oslo', '1', '2', '1');
INSERT INTO `timezones` VALUES ('347', 'FR', 'Europe/Paris', '1', '2', '1');
INSERT INTO `timezones` VALUES ('348', 'ME', 'Europe/Podgorica', '1', '2', '1');
INSERT INTO `timezones` VALUES ('349', 'CZ', 'Europe/Prague', '1', '2', '1');
INSERT INTO `timezones` VALUES ('350', 'LV', 'Europe/Riga', '2', '3', '2');
INSERT INTO `timezones` VALUES ('351', 'IT', 'Europe/Rome', '1', '2', '1');
INSERT INTO `timezones` VALUES ('352', 'RU', 'Europe/Samara', '4', '4', '4');
INSERT INTO `timezones` VALUES ('353', 'SM', 'Europe/San_Marino', '1', '2', '1');
INSERT INTO `timezones` VALUES ('354', 'BA', 'Europe/Sarajevo', '1', '2', '1');
INSERT INTO `timezones` VALUES ('355', 'RU', 'Europe/Simferopol', '3', '3', '3');
INSERT INTO `timezones` VALUES ('356', 'MK', 'Europe/Skopje', '1', '2', '1');
INSERT INTO `timezones` VALUES ('357', 'BG', 'Europe/Sofia', '2', '3', '2');
INSERT INTO `timezones` VALUES ('358', 'SE', 'Europe/Stockholm', '1', '2', '1');
INSERT INTO `timezones` VALUES ('359', 'EE', 'Europe/Tallinn', '2', '3', '2');
INSERT INTO `timezones` VALUES ('360', 'AL', 'Europe/Tirane', '1', '2', '1');
INSERT INTO `timezones` VALUES ('361', 'RU', 'Europe/Ulyanovsk', '3', '4', '4');
INSERT INTO `timezones` VALUES ('362', 'UA', 'Europe/Uzhgorod', '2', '3', '2');
INSERT INTO `timezones` VALUES ('363', 'LI', 'Europe/Vaduz', '1', '2', '1');
INSERT INTO `timezones` VALUES ('364', 'VA', 'Europe/Vatican', '1', '2', '1');
INSERT INTO `timezones` VALUES ('365', 'AT', 'Europe/Vienna', '1', '2', '1');
INSERT INTO `timezones` VALUES ('366', 'LT', 'Europe/Vilnius', '2', '3', '2');
INSERT INTO `timezones` VALUES ('367', 'RU', 'Europe/Volgograd', '3', '3', '3');
INSERT INTO `timezones` VALUES ('368', 'PL', 'Europe/Warsaw', '1', '2', '1');
INSERT INTO `timezones` VALUES ('369', 'HR', 'Europe/Zagreb', '1', '2', '1');
INSERT INTO `timezones` VALUES ('370', 'UA', 'Europe/Zaporozhye', '2', '3', '2');
INSERT INTO `timezones` VALUES ('371', 'CH', 'Europe/Zurich', '1', '2', '1');
INSERT INTO `timezones` VALUES ('372', 'MG', 'Indian/Antananarivo', '3', '3', '3');
INSERT INTO `timezones` VALUES ('373', 'IO', 'Indian/Chagos', '6', '6', '6');
INSERT INTO `timezones` VALUES ('374', 'CX', 'Indian/Christmas', '7', '7', '7');
INSERT INTO `timezones` VALUES ('375', 'CC', 'Indian/Cocos', '7', '7', '7');
INSERT INTO `timezones` VALUES ('376', 'KM', 'Indian/Comoro', '3', '3', '3');
INSERT INTO `timezones` VALUES ('377', 'TF', 'Indian/Kerguelen', '5', '5', '5');
INSERT INTO `timezones` VALUES ('378', 'SC', 'Indian/Mahe', '4', '4', '4');
INSERT INTO `timezones` VALUES ('379', 'MV', 'Indian/Maldives', '5', '5', '5');
INSERT INTO `timezones` VALUES ('380', 'MU', 'Indian/Mauritius', '4', '4', '4');
INSERT INTO `timezones` VALUES ('381', 'YT', 'Indian/Mayotte', '3', '3', '3');
INSERT INTO `timezones` VALUES ('382', 'RE', 'Indian/Reunion', '4', '4', '4');
INSERT INTO `timezones` VALUES ('383', 'WS', 'Pacific/Apia', '14', '13', '13');
INSERT INTO `timezones` VALUES ('384', 'NZ', 'Pacific/Auckland', '13', '12', '12');
INSERT INTO `timezones` VALUES ('385', 'PG', 'Pacific/Bougainville', '11', '11', '11');
INSERT INTO `timezones` VALUES ('386', 'NZ', 'Pacific/Chatham', '14', '13', '13');
INSERT INTO `timezones` VALUES ('387', 'FM', 'Pacific/Chuuk', '10', '10', '10');
INSERT INTO `timezones` VALUES ('388', 'CL', 'Pacific/Easter', '-5', '-6', '-6');
INSERT INTO `timezones` VALUES ('389', 'VU', 'Pacific/Efate', '11', '11', '11');
INSERT INTO `timezones` VALUES ('390', 'KI', 'Pacific/Enderbury', '13', '13', '13');
INSERT INTO `timezones` VALUES ('391', 'TK', 'Pacific/Fakaofo', '13', '13', '13');
INSERT INTO `timezones` VALUES ('392', 'FJ', 'Pacific/Fiji', '13', '12', '12');
INSERT INTO `timezones` VALUES ('393', 'TV', 'Pacific/Funafuti', '12', '12', '12');
INSERT INTO `timezones` VALUES ('394', 'EC', 'Pacific/Galapagos', '-6', '-6', '-6');
INSERT INTO `timezones` VALUES ('395', 'PF', 'Pacific/Gambier', '-9', '-9', '-9');
INSERT INTO `timezones` VALUES ('396', 'SB', 'Pacific/Guadalcanal', '11', '11', '11');
INSERT INTO `timezones` VALUES ('397', 'GU', 'Pacific/Guam', '10', '10', '10');
INSERT INTO `timezones` VALUES ('398', 'US', 'Pacific/Honolulu', '-10', '-10', '-10');
INSERT INTO `timezones` VALUES ('399', 'UM', 'Pacific/Johnston', '-10', '-10', '-10');
INSERT INTO `timezones` VALUES ('400', 'KI', 'Pacific/Kiritimati', '14', '14', '14');
INSERT INTO `timezones` VALUES ('401', 'FM', 'Pacific/Kosrae', '11', '11', '11');
INSERT INTO `timezones` VALUES ('402', 'MH', 'Pacific/Kwajalein', '12', '12', '12');
INSERT INTO `timezones` VALUES ('403', 'MH', 'Pacific/Majuro', '12', '12', '12');
INSERT INTO `timezones` VALUES ('404', 'PF', 'Pacific/Marquesas', '-10', '-10', '-10');
INSERT INTO `timezones` VALUES ('405', 'UM', 'Pacific/Midway', '-11', '-11', '-11');
INSERT INTO `timezones` VALUES ('406', 'NR', 'Pacific/Nauru', '12', '12', '12');
INSERT INTO `timezones` VALUES ('407', 'NU', 'Pacific/Niue', '-11', '-11', '-11');
INSERT INTO `timezones` VALUES ('408', 'NF', 'Pacific/Norfolk', '11', '11', '11');
INSERT INTO `timezones` VALUES ('409', 'NC', 'Pacific/Noumea', '11', '11', '11');
INSERT INTO `timezones` VALUES ('410', 'AS', 'Pacific/Pago_Pago', '-11', '-11', '-11');
INSERT INTO `timezones` VALUES ('411', 'PW', 'Pacific/Palau', '9', '9', '9');
INSERT INTO `timezones` VALUES ('412', 'PN', 'Pacific/Pitcairn', '-8', '-8', '-8');
INSERT INTO `timezones` VALUES ('413', 'FM', 'Pacific/Pohnpei', '11', '11', '11');
INSERT INTO `timezones` VALUES ('414', 'PG', 'Pacific/Port_Moresby', '10', '10', '10');
INSERT INTO `timezones` VALUES ('415', 'CK', 'Pacific/Rarotonga', '-10', '-10', '-10');
INSERT INTO `timezones` VALUES ('416', 'MP', 'Pacific/Saipan', '10', '10', '10');
INSERT INTO `timezones` VALUES ('417', 'PF', 'Pacific/Tahiti', '-10', '-10', '-10');
INSERT INTO `timezones` VALUES ('418', 'KI', 'Pacific/Tarawa', '12', '12', '12');
INSERT INTO `timezones` VALUES ('419', 'TO', 'Pacific/Tongatapu', '13', '13', '13');
INSERT INTO `timezones` VALUES ('420', 'UM', 'Pacific/Wake', '12', '12', '12');
INSERT INTO `timezones` VALUES ('421', 'WF', 'Pacific/Wallis', '12', '12', '12');
SET FOREIGN_KEY_CHECKS=1;
