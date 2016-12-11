/*
Navicat MySQL Data Transfer

Source Server         : Localhost
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : eoction

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2016-12-11 18:34:33
*/

SET FOREIGN_KEY_CHECKS=0;

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
INSERT INTO `migration` VALUES ('m000000_000000_base', '1481114746');
INSERT INTO `migration` VALUES ('m161128_141131_create_transaction_paypal', '1481410906');
INSERT INTO `migration` VALUES ('m161207_115906_create_tb_orders_table', '1481470057');
INSERT INTO `migration` VALUES ('m161207_122757_create_tb_shipping_orders_table', '1481468953');
INSERT INTO `migration` VALUES ('m161207_125747_create_tb_user_address_table', '1481410908');
INSERT INTO `migration` VALUES ('m161208_173038_create_shipping_service_table', '1481461651');

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
  `shipByDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `orderStatus` varchar(20) NOT NULL,
  `customerId` int(11) DEFAULT NULL,
  `customerUsername` varchar(100) NOT NULL,
  `customerEmail` varchar(100) NOT NULL,
  PRIMARY KEY (`orderId`)
) ENGINE=InnoDB AUTO_INCREMENT=16052103 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of orders
-- ----------------------------
INSERT INTO `orders` VALUES ('16051866', 'EOCT-10-584D70879D6DC', '1465a2e9300b98d2bc5ade4b331cb877', '2016-12-11 18:25:16', '2016-12-11 07:26:02', '2016-12-11 07:28:10', '2016-12-11 18:28:07', '2016-12-11 18:28:09', 'awaiting_shipment', '10229463', 'Sammy Barasa', 'barsamms@gmail.com');
INSERT INTO `orders` VALUES ('16052102', 'EOCT-11-584D70F6D8C98', '8166a26567f14b08afc5c59547a6ce4a', '2016-12-11 18:28:39', '2016-12-11 07:29:23', '2016-12-11 07:29:59', '2016-12-11 18:29:58', '2016-12-11 18:30:00', 'awaiting_shipment', '10229463', 'Sammy Barasa', 'barsamms@gmail.com');

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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of paypal_transactions
-- ----------------------------
INSERT INTO `paypal_transactions` VALUES ('4', '5', 'PAY-55533077AR317844ALBGU7LY', '7fd7245a01d8e447b9f6c8e30cdf6dfc', '1', '0', '2016-12-11 16:08:03', '2016-12-11 17:15:21');
INSERT INTO `paypal_transactions` VALUES ('5', '5', 'PAY-7XG83596DG8933800LBGWDRQ', '304e9b6b36d1c1497719e36f8f3b6702', '1', '0', '2016-12-11 17:25:14', '2016-12-11 17:25:56');
INSERT INTO `paypal_transactions` VALUES ('6', '5', 'PAY-1F353190P91583723LBGWKNA', '04dc6c1121385ef8e477fda9d6c7c71a', '1', '0', '2016-12-11 17:39:52', '2016-12-11 18:09:00');
INSERT INTO `paypal_transactions` VALUES ('7', '5', 'PAY-6R519986RW7207210LBGWYZY', '1da7c21dbe5f7829093fa0efb6a0193b', '1', '0', '2016-12-11 18:10:35', '2016-12-11 18:19:16');
INSERT INTO `paypal_transactions` VALUES ('8', '5', 'PAY-6BD196507C1904500LBGW5VI', 'e39a34a44b04977758edd0ac0b3c2e69', '1', '0', '2016-12-11 18:20:57', '2016-12-11 18:22:27');
INSERT INTO `paypal_transactions` VALUES ('9', '5', 'PAY-85K59185P6009923TLBGW6SY', 'ff47160b2468e570e072537218401e1f', '1', '0', '2016-12-11 18:22:55', '2016-12-11 18:23:55');
INSERT INTO `paypal_transactions` VALUES ('10', '5', 'PAY-0US78375UA738233NLBGW7WA', '1465a2e9300b98d2bc5ade4b331cb877', '1', '0', '2016-12-11 18:25:16', '2016-12-11 18:28:07');
INSERT INTO `paypal_transactions` VALUES ('11', '5', 'PAY-6GJ56495VB1328336LBGXBIY', '8166a26567f14b08afc5c59547a6ce4a', '1', '0', '2016-12-11 18:28:39', '2016-12-11 18:29:58');

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
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of shipping_service
-- ----------------------------
INSERT INTO `shipping_service` VALUES ('1', '4', 'USPS Priority Mail Express', 'usps_priority_mail_express|stamps_com|DOMESTIC|~USPS Priority Mail Express', 'stamps_com', 'usps_priority_mail_express', 'regional_rate_box_b', '1', 'updated notes here, order should be updated too on shipstation', '2016-12-11 17:22:28', '2016-12-11 17:22:28');
INSERT INTO `shipping_service` VALUES ('2', '5', 'USPS Priority Mail Express Intl', 'usps_priority_mail_express_international|stamps_com||INTERNATIONAL~USPS Priority Mail Express Intl', 'stamps_com', 'usps_priority_mail_express_international', 'thick_envelope', '1', 'Package carefully', '2016-12-11 17:25:56', '2016-12-11 17:25:56');
INSERT INTO `shipping_service` VALUES ('3', '6', 'USPS Parcel Select Ground', 'usps_parcel_select|stamps_com|DOMESTIC|~USPS Parcel Select Ground', 'stamps_com', 'usps_parcel_select', 'regional_rate_box_b', '1', 'testing saving to local database', '2016-12-11 17:40:27', '2016-12-11 17:40:27');
INSERT INTO `shipping_service` VALUES ('4', '7', 'USPS Media Mail', 'usps_media_mail|stamps_com|DOMESTIC|~USPS Media Mail', 'stamps_com', 'usps_media_mail', 'regional_rate_box_b', '1', 'notes here', '2016-12-11 18:11:20', '2016-12-11 18:11:20');
INSERT INTO `shipping_service` VALUES ('5', '8', 'USPS Priority Mail Intl', 'usps_priority_mail_international|stamps_com||INTERNATIONAL~USPS Priority Mail Intl', 'stamps_com', 'usps_priority_mail_international', 'package', '1', 'package stuff and manenos', '2016-12-11 18:21:44', '2016-12-11 18:21:44');
INSERT INTO `shipping_service` VALUES ('6', '9', 'USPS First Class Mail Intl', 'usps_first_class_mail_international|stamps_com||INTERNATIONAL~USPS First Class Mail Intl', 'stamps_com', 'usps_first_class_mail_international', 'flat_rate_envelope', '1', 'notes here', '2016-12-11 18:23:27', '2016-12-11 18:23:27');
INSERT INTO `shipping_service` VALUES ('7', '10', 'USPS Priority Mail Express Intl', 'usps_priority_mail_express_international|stamps_com||INTERNATIONAL~USPS Priority Mail Express Intl', 'stamps_com', 'usps_priority_mail_express_international', 'large_envelope_or_flat', '1', 'test customer id manenos\r\n', '2016-12-11 18:25:59', '2016-12-11 18:25:59');
INSERT INTO `shipping_service` VALUES ('8', '11', 'USPS Priority Mail Intl', 'usps_priority_mail_international|stamps_com||INTERNATIONAL~USPS Priority Mail Intl', 'stamps_com', 'usps_priority_mail_international', 'flat_rate_envelope', '1', 'testing', '2016-12-11 18:29:22', '2016-12-11 18:29:22');

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_bid_activity
-- ----------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_product_bids
-- ----------------------------

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
  `STATUS` int(1) DEFAULT '1' COMMENT 'Active or inactive',
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_users
-- ----------------------------
INSERT INTO `tb_users` VALUES ('5', 'Sammy Barasa', 'barsamms@gmail.com', 'A', '63aaa47cb0b76f0b157c40cdba9bf78653a7af37', null, 'g5BcDmUAkeXf0uQd31E8lHD0SXtZGScK', null, 'GMT +6', null, null, '1', '2016-11-22 14:29:53', '2016-12-11 16:10:56');
INSERT INTO `tb_users` VALUES ('6', 'Sammy Barasa', 'barsamms@gmail.coms', 'N', '63aaa47cb0b76f0b157c40cdba9bf78653a7af37', null, 'JeDUzV6IyfXktOHTBgq2OPgdNDFcattz', null, 'GMT +3', null, null, '1', '2016-11-22 14:30:36', '2016-11-25 19:41:28');
INSERT INTO `tb_users` VALUES ('7', 'Norven', 'me.norvenjohnpaul@gmail.com', 'A', '7288edd0fc3ffcbe93a0cf06e3568e28521687bc', null, 'ECTkS1Q-xH_m3-T4xOcrSexF8DodwxjI', null, 'GMT +3', null, null, '1', '2016-11-26 05:51:48', '2016-11-26 05:52:29');
INSERT INTO `tb_users` VALUES ('8', 'Lody Tacastacas', 'lody.tacastacas@pristone.net', 'N', 'aaab8a1f22229bf2bf267b1ea358ee51a3655f36', null, 't47XSGdxLId6kFdFH07JZy6PruSFkgdY', null, 'GMT +3', null, null, '1', '2016-11-28 08:09:14', '2016-11-28 08:09:14');

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
INSERT INTO `tb_user_address` VALUES ('1', '5', 'Sammy B', 'Tsobu Enterprise', 'PO Box 9', '', null, 'Thika', 'Thika', '00100', 'KE', '254713196504', '1', 'BILLING ADDRESS', '1', '2016-12-11 16:25:39', '2016-12-11 16:25:39');
INSERT INTO `tb_user_address` VALUES ('2', '5', 'Sammy Barasa  Munywele', 'weyland yutani coorp', 'PO Box 89000', '', null, 'Nairobi', '', '01000', 'KE', '254713196504', '0', 'SHIPPING ADDRESS', '0', '2016-12-11 16:25:39', '2016-12-11 16:25:39');

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
