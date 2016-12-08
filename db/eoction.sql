/*
Navicat MySQL Data Transfer

Source Server         : Localhost
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : eoction

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2016-12-08 12:34:41
*/

SET FOREIGN_KEY_CHECKS=0;

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
INSERT INTO `migration` VALUES ('m161128_141131_create_transaction_paypal', '1481114953');
INSERT INTO `migration` VALUES ('m161207_115906_create_tb_orders_table', '1481114953');
INSERT INTO `migration` VALUES ('m161207_122757_create_tb_shipping_orders_table', '1481115946');
INSERT INTO `migration` VALUES ('m161207_125747_create_tb_user_address_table', '1481134073');


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
INSERT INTO `tb_users` VALUES ('5', 'Sammy Barasa', 'barsamms@gmail.com', 'A', '63aaa47cb0b76f0b157c40cdba9bf78653a7af37', null, 'g5BcDmUAkeXf0uQd31E8lHD0SXtZGScK', null, 'GMT +3', null, null, '1', '2016-11-22 14:29:53', '2016-11-25 19:41:26');
INSERT INTO `tb_users` VALUES ('6', 'Sammy Barasa', 'barsamms@gmail.coms', 'N', '63aaa47cb0b76f0b157c40cdba9bf78653a7af37', null, 'JeDUzV6IyfXktOHTBgq2OPgdNDFcattz', null, 'GMT +3', null, null, '1', '2016-11-22 14:30:36', '2016-11-25 19:41:28');
INSERT INTO `tb_users` VALUES ('7', 'Norven', 'me.norvenjohnpaul@gmail.com', 'A', '7288edd0fc3ffcbe93a0cf06e3568e28521687bc', null, 'ECTkS1Q-xH_m3-T4xOcrSexF8DodwxjI', null, 'GMT +3', null, null, '1', '2016-11-26 05:51:48', '2016-11-26 05:52:29');
INSERT INTO `tb_users` VALUES ('8', 'Lody Tacastacas', 'lody.tacastacas@pristone.net', 'N', 'aaab8a1f22229bf2bf267b1ea358ee51a3655f36', null, 't47XSGdxLId6kFdFH07JZy6PruSFkgdY', null, 'GMT +3', null, null, '1', '2016-11-28 08:09:14', '2016-11-28 08:09:14');


-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NOT NULL,
  `orderNumber` varchar(100) NOT NULL,
  `orderKey` varchar(100) NOT NULL,
  `orderDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `createDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `modifyDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `paymentDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipByDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `orderStatus` varchar(10) NOT NULL,
  `customerId` int(11) NOT NULL,
  `customerUsername` varchar(100) NOT NULL,
  `customerEmail` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of orders
-- ----------------------------

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
  CONSTRAINT `FK_USER_ID` FOREIGN KEY (`USER_ID`) REFERENCES `tb_users` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of paypal_transactions
-- ----------------------------

-- ----------------------------
-- Table structure for shipping_orders
-- ----------------------------
DROP TABLE IF EXISTS `shipping_orders`;
CREATE TABLE `shipping_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `orderId` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `company` text NOT NULL,
  `street1` varchar(200) DEFAULT NULL,
  `street2` varchar(200) DEFAULT NULL,
  `street3` varchar(200) DEFAULT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(50) DEFAULT NULL,
  `postalCode` varchar(50) NOT NULL,
  `country` varchar(20) NOT NULL,
  `phone` varchar(50) NOT NULL,
  `residential` varchar(10) DEFAULT NULL,
  `addressVerified` varchar(20) DEFAULT NULL,
  `addressType` varchar(20) NOT NULL DEFAULT 'billing',
  PRIMARY KEY (`id`),
  KEY `fk_order` (`orderId`),
  CONSTRAINT `fk_order` FOREIGN KEY (`orderId`) REFERENCES `orders` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of shipping_orders
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
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_items_cart
-- ----------------------------

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
-- Table structure for tb_user_address
-- ----------------------------
DROP TABLE IF EXISTS `tb_user_address`;
CREATE TABLE `tb_user_address` (
  `ADDRESS_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `NAME` varchar(100) NOT NULL,
  `COMPANY` varchar(150) NOT NULL,
  `STREET1` varchar(200) NOT NULL,
  `STREET2` varchar(200) DEFAULT NULL,
  `STREET3` varchar(200) DEFAULT NULL,
  `CITY` varchar(50) NOT NULL,
  `STATE` varchar(50) DEFAULT NULL,
  `POSTALCODE` varchar(50) NOT NULL,
  `COUNTRY` varchar(20) NOT NULL,
  `PHONE` varchar(50) NOT NULL,
  `RESIDENTIAL` varchar(10) DEFAULT 'YES',
  `ADDRESS_TYPE` varchar(20) NOT NULL DEFAULT 'BILLING ADDRESS',
  `PRIMARY_ADDRESS` int(1) NOT NULL DEFAULT '0',
  `CREATED` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `UPDATED` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ADDRESS_ID`),
  KEY `FK_USER_ADDRESS_ID` (`USER_ID`),
  CONSTRAINT `FK_USER_ADDRESS_ID` FOREIGN KEY (`USER_ID`) REFERENCES `tb_users` (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_user_address
-- ----------------------------

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
SET FOREIGN_KEY_CHECKS=1;
