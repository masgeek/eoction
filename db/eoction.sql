/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : eoction

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2016-10-12 17:41:32
*/

SET FOREIGN_KEY_CHECKS=0;

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
-- Table structure for tb_products
-- ----------------------------
DROP TABLE IF EXISTS `tb_products`;
CREATE TABLE `tb_products` (
  `PRODUCT_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Product Id',
  `UID` varchar(100) DEFAULT NULL COMMENT 'Universal ID',
  `SKU` varchar(255) NOT NULL COMMENT 'Stock Keeping Unit',
  `PRODUCT_NAME` varchar(255) NOT NULL COMMENT 'Product Name',
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
  `DATE_UPDATED` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT 'Last Updated',
  PRIMARY KEY (`PRODUCT_ID`),
  UNIQUE KEY `tb_products_PRODUCT_ID_uindex` (`PRODUCT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=175 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_products
-- ----------------------------
INSERT INTO `tb_products` VALUES ('1', 'M795N6ZONQW', 'NQH-J272582011000', 'Hidalgo Blue Diamonique Stainless Steel Watch Bezel', 'Watches/Fixed/Wristwatches', '', '96.00', '98.00', '1', '1', '1', '1', 'by product', '1', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-12 15:58:37');
INSERT INTO `tb_products` VALUES ('2', 'M0LEKOEVD4W', 'NQH-J272582150000', 'Hidalgo Pink Diamonique Stainless Steel Watch Bezel', 'Watches/Fixed/Wristwatches', '', '59.50', '179.00', '1', '1', '1', '1', 'by product', '1', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:51');
INSERT INTO `tb_products` VALUES ('3', 'M1W4N47ON5P', 'NQH-J273636202543', 'Ecclissi Sterling Silver Round Dial Acetate Strap White Large Watch', 'Watches/Fixed/Wristwatches', '', '150.00', '450.00', '1', '1', '1', '1', 'by product', '1', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:51');
INSERT INTO `tb_products` VALUES ('4', 'M71YN5GYNVQ', 'NQH-J261702000000', 'Dweck Diamonds Sterling S/2 Bracelets W/Figure 8 Charm', 'Top Selling/Jewelry/Bracelet', '', '122.00', '366.00', '1', '1', '1', '1', 'by product', '0', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:51');
INSERT INTO `tb_products` VALUES ('5', 'MLVQD8PRD4E', 'NQH-J267523273074', 'Novica Sterling Silver Polished Gemstone Nugget Average Bracelet', 'Top Selling/Jewelry/Bracelet', '', '29.00', '87.00', '1', '1', '1', '1', 'by product', '26', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:51');
INSERT INTO `tb_products` VALUES ('6', 'M128N0JPK57', 'NQH-J268946V75000', 'Ippocampo Sterling 8\" Smoky Quartz Gemstone Link Toggle Bracelet', 'Top Selling/Jewelry/Bracelet', '', '139.00', '417.00', '1', '1', '1', '1', 'by product', '15', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:51');
INSERT INTO `tb_products` VALUES ('7', 'MYOMK185NP0', 'NQH-J271679273543', 'Erica Courtney Amethyst Gemstone & Diamonique Hinged Kim Large Cuff Sterling', 'Top Selling/Jewelry/Bracelet', '', '174.00', '522.00', '1', '1', '1', '1', 'by product', '0', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:51');
INSERT INTO `tb_products` VALUES ('8', 'M879D297K12', 'NQH-J268381202000', 'Vicenzagold Large Textured Twist Design Round Bangle 14K Yellow Gold', 'Top Selling/Jewelry/Bracelet', '', '216.00', '648.00', '1', '1', '1', '1', 'by product', '0', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:51');
INSERT INTO `tb_products` VALUES ('9', 'MG3PDX60NLX', 'NQH-J142308000000', 'Francesca Visconti\'S Amore Cuff Bracelet Goldtone', 'Top Selling/Jewelry/Bracelet', '', '59.50', '179.00', '1', '1', '1', '1', 'by product', '81', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:51');
INSERT INTO `tb_products` VALUES ('10', 'M0YGNJWVDJ7', 'NQH-J146242061668', 'Spin By Mitchell Gross Jeweled Cobweb Cuff Bracelet Silvertone Green Agate', 'Top Selling/Jewelry/Bracelet', '', '26.00', '78.00', '1', '1', '1', '1', 'by product', '11', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:51');
INSERT INTO `tb_products` VALUES ('11', 'MZ34K961K2Q', 'NQH-J146242Z32668', 'Spin By Mitchell Gross Jeweled Cobweb Cuff Bracelet Silvertone Brown Tigers Eye', 'Top Selling/Jewelry/Bracelet', '', '26.00', '78.00', '1', '1', '1', '1', 'by product', '11', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:51');
INSERT INTO `tb_products` VALUES ('12', 'M2JRKY3JNEY', 'NQH-J149533012000', 'Fashionable Foil Colorful Hinged Bangle Bracelet Black Silvertone', 'Top Selling/Jewelry/Bracelet', '', '19.75', '100.00', '1', '1', '1', '1', 'by product', '1', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:51');
INSERT INTO `tb_products` VALUES ('13', 'MRWGNMZ0DE0', 'NQH-J149810G84000', 'Logo By Lori Goldstein Faceted Stone Stretch Bracelet Gunmetal Golden Brown', 'Top Selling/Jewelry/Bracelet', '', '38.00', '114.00', '1', '1', '1', '1', 'by product', '11', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('14', 'MG3PK313NQM', 'NQH-J149874848000', 'Susan Graver Polished & Textured Design Stretch Bracelet Two-Tone', 'Top Selling/Jewelry/Bracelet', '', '29.75', '89.00', '1', '1', '1', '1', 'by product', '1', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('15', 'M4OJNWZ2NQ1', 'NQH-J152527154000', 'Isaac Mizrahi Live! Multi-Charm Bracelet Purple Goldtone', 'Top Selling/Jewelry/Bracelet', '', '43.50', '131.00', '1', '1', '1', '1', 'by product', '11', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('16', 'MR9ZK737D63', 'NQH-J152745848000', 'Joan Rivers Jeweled Stretch Bracelet Gunmetal Jeweltone', 'Top Selling/Jewelry/Bracelet', '', '44.00', '132.00', '1', '1', '1', '1', 'by product', '1', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('17', 'M56EDGJED3J', 'NQH-J155009848000', 'Joan Rivers Multiple Hearts Charm Stretch Bracelet Burnished Goldtone', 'Top Selling/Jewelry/Bracelet', '', '34.50', '104.00', '1', '1', '1', '1', 'by product', '1', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('18', 'MPVXNZRRDOM', 'NQH-J155099680593', 'Isaac Mizrahi Live! Polished Leaf & Oval Stone Link Bracelet 7\" Silvertone/Clear', 'Top Selling/Jewelry/Bracelet', '', '59.50', '179.00', '1', '1', '1', '1', 'by product', '23', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('19', 'MRM5DEVPNX4', 'NQH-J155863680074', 'Melania Hammered & Crystal Hinged Bangle Bracelet Silvertone Average', 'Top Selling/Jewelry/Bracelet', '', '79.00', '237.00', '1', '1', '1', '1', 'by product', '11', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('20', 'ME42DPR0N7W', 'NQH-J157199000074', 'Kenneth Jay Lane\'S Black & White Snake Bangle Bracelet Average', 'Top Selling/Jewelry/Bracelet', '', '135.00', '405.00', '1', '1', '1', '1', 'by product', '1', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('21', 'M3GLDRZMNW4', 'NQH-J158331000000', 'Tri-Color Bold Elongated Link Stretch Bracelet', 'Top Selling/Jewelry/Bracelet', '', '24.50', '74.00', '1', '1', '1', '1', 'by product', '0', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('22', 'M8GMDQG8NO1', 'NQH-J261619000074', 'Andy Warhol By Rlm Studio Celestial Brass Bangle Average', 'Top Selling/Jewelry/Bracelet', '', '99.00', '297.00', '1', '1', '1', '1', 'by product', '4', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('23', 'MVY6DVGODXO', 'NQH-J261947848074', 'Joan Rivers Beaded Brilliance Stretch Bracelet Black/Clear Average', 'Top Selling/Jewelry/Bracelet', '', '49.50', '149.00', '1', '1', '1', '1', 'by product', '21', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('24', 'M795N6JOKQW', 'NQH-J266309150000', 'Joan Rivers Vintage Floral Stretch Bracelet Pink', 'Top Selling/Jewelry/Bracelet', '', '59.50', '179.00', '1', '1', '1', '1', 'by product', '8', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('25', 'M0LEKOPVN4W', 'NQH-J267422012000', 'Reversible Goldtone Black Enamel Stretch Bracelet', 'Top Selling/Jewelry/Bracelet', '', '49.50', '149.00', '1', '1', '1', '1', 'by product', '29', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('26', 'M1W4N40OK5P', 'NQH-J267422202000', 'Reversible Antiqued Rosetone White Enamel Stretch Bracelet', 'Top Selling/Jewelry/Bracelet', '', '49.50', '149.00', '1', '1', '1', '1', 'by product', '11', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('27', 'M194DLGQK85', 'NQH-J268730000625', 'Susan Graver Two-Tone Rope Design Hinged Bangle', 'Top Selling/Jewelry/Bracelet', '', '24.75', '74.00', '1', '1', '1', '1', 'by product', '26', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('28', 'M71YN5JYNVQ', 'NQH-J270038000000', 'Lee Sands Laminated Crackle Shell Stretch Bracelet', 'Top Selling/Jewelry/Bracelet', '', '23.00', '69.00', '1', '1', '1', '1', 'by product', '25', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('29', 'MLVQD89RK4E', 'NQH-J270196848000', 'Joan Rivers Status Link Hammered Stretch Bracelet', 'Top Selling/Jewelry/Bracelet', '', '59.50', '179.00', '1', '1', '1', '1', 'by product', '21', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('30', 'M128N04PD57', 'NQH-J270200061000', 'Joan Rivers Hammered Bezel & Green Stone Stretch Bracelet', 'Top Selling/Jewelry/Bracelet', '', '39.50', '119.00', '1', '1', '1', '1', 'by product', '16', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('31', 'MYOMK145KP0', 'NQH-J271446680000', 'Joan Rivers Silvertone Set Of 3 Classic Textured Bead Bracelets', 'Top Selling/Jewelry/Bracelet', '', '36.50', '110.00', '1', '1', '1', '1', 'by product', '1', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('32', 'M879D247N12', 'NQH-J271847180074', 'Susan Graver Silvertone Set Of 3 Acrylic Average Bangles With Crystal Accent', 'Top Selling/Jewelry/Bracelet', '', '32.50', '98.00', '1', '1', '1', '1', 'by product', '3', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('33', 'MG3PDXE0NLX', 'NQH-J272318061000', 'Rare Joan Rivers Gunmetal Green Fantasy Fashion Stretch Bracelet', 'Top Selling/Jewelry/Bracelet', '', '45.00', '135.00', '1', '1', '1', '1', 'by product', '1', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('34', 'M0YGNJOVKJ7', 'NQH-J272543000000', 'Bronzo Italia Large Bold Polished Wrap Design Cuff Bracelet', 'Top Selling/Jewelry/Bracelet', '', '146.00', '438.00', '1', '1', '1', '1', 'by product', '0', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('35', 'MZ34K991K2Q', 'NQH-J272583000074', 'Multi- Row Gunmetal & Crystal Concave Disc Average Bracelet', 'Top Selling/Jewelry/Bracelet', '', '29.75', '89.00', '1', '1', '1', '1', 'by product', '1', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('36', 'M2JRKYPJKEY', 'NQH-J272583000543', 'Multi- Row Gunmetal & Crystal Concave Disc Large Bracelet', 'Top Selling/Jewelry/Bracelet', '', '29.75', '89.00', '1', '1', '1', '1', 'by product', '2', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('37', 'MRWGNMJ0NE0', 'NQH-J273993012000', 'Kenneth Jay Lane Pave Link Stretch Black Bead Bracelet', 'Top Selling/Jewelry/Bracelet', '', '39.00', '117.00', '1', '1', '1', '1', 'by product', '1', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('38', 'MG3PK373NQM', 'NQH-J274599000000', 'Tri-Color Bold Elongated Link Stretch Bracelet', 'Top Selling/Jewelry/Bracelet', '', '24.50', '74.00', '1', '1', '1', '1', 'by product', '1', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('39', 'M4OJNWX2DQ1', 'NQH-J274611848000', 'Huetopia Honeycomb Gemstone Bead Bracelet Crystal Quartz', 'Top Selling/Jewelry/Bracelet', '', '45.50', '137.00', '1', '1', '1', '1', 'by product', '1', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('40', 'MR9ZK7Z7D63', 'NQH-J275927013000', 'Kjl Woven Chain Simulated Pearl Bracelet Brown', 'Top Selling/Jewelry/Bracelet', '', '39.50', '119.00', '1', '1', '1', '1', 'by product', '1', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('41', 'M56EDGQEK3J', '22016-J277989000000', 'Bronzo Italia Large Triple Row Curb Link Round Bangle', 'Top Selling/Jewelry/Bracelet', '', '172.00', '516.00', '1', '1', '1', '1', 'by product', '82', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('42', 'MPVXNZJRKOM', 'NQH-J278075848000', 'Lee Sands Shell Print Stretch Bracelet White/Brown', 'Top Selling/Jewelry/Bracelet', '', '28.50', '86.00', '1', '1', '1', '1', 'by product', '1', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('43', 'MRM5DEPPNX4', 'NQH-J281709000074', 'Bronzo Italia 1.50 Ct Tw Black Spinel Foldover Clasp Hinged Bangle Average', 'Top Selling/Jewelry/Bracelet', '', '129.00', '387.00', '1', '1', '1', '1', 'by product', '2', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('44', 'ME42DP10N7W', 'NQH-J287256182074', 'Steel By Design Crystal Horizontal Cross Cable Bracelet Stainless Average', 'Top Selling/Jewelry/Bracelet', '', '29.75', '89.00', '1', '1', '1', '1', 'by product', '1', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('45', 'M3GLDR9MNW4', 'NQH-J287256987074', 'Steel By Design Crystal Horizontal Cross Cable Bracelet Chocolate Average', 'Top Selling/Jewelry/Bracelet', '', '29.75', '89.00', '1', '1', '1', '1', 'by product', '1', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('46', 'M8GMDQ98DO1', 'NQH-J289729000543', 'Steel By Design Set Of Three Polished And Crystal Cable Bracelets Large', 'Top Selling/Jewelry/Bracelet', '', '43.75', '131.00', '1', '1', '1', '1', 'by product', '1', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('47', 'MVY6DVXONXO', 'NQH-J289729000625', 'Steel By Design Set Of Three Polished And Crystal Cable Bracelets Small', 'Top Selling/Jewelry/Bracelet', '', '43.75', '131.45', '1', '1', '1', '1', 'by product', '0', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 16:20:09');
INSERT INTO `tb_products` VALUES ('48', 'M795N6GOKQW', 'NQH-J293410S69625', 'Stainless Steel Braided Hinged Bangle With Pavecrystal Bead Goldtone Small', 'Top Selling/Jewelry/Bracelet', '', '37.50', '113.00', '1', '1', '1', '1', 'by product', '1', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('49', 'M0LEKO2VN4W', 'NQH-J157215000074', 'Large Stainless Steel Simulated Diamond Link Average Magnetic Clasp Bracelet', 'Top Selling/Jewelry/Bracelet', '', '29.75', '89.00', '1', '1', '1', '1', 'by product', '0', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('50', 'M1W4N42OD5P', 'NQH-J282421180351', '0.70 ct Tw Black Spinel Pavestatus Sterling Band Ring Silver Size 5', 'Top Selling/Jewelry/Ring', '', '79.50', '239.00', '1', '1', '1', '1', 'by product', '1', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('51', 'M194DLYQK85', 'NQH-J282421180352', '0.70 ct Tw Black Spinel Pavestatus Sterling Band Ring Silver Size 6', 'Top Selling/Jewelry/Ring', '', '79.50', '239.00', '1', '1', '1', '1', 'by product', '1', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('52', 'M71YN57YKVQ', 'I-CMR15830AM', '1.00 ct Oval Brazilian Amethyst And Diamond Accent Ring 14K Yellow Gold', 'Top Selling/Jewelry/Ring', '', '254.00', '762.00', '1', '1', '1', '1', 'by product', '101', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('53', 'MLVQD8ERK4E', 'NQH-J279193000352', '3.10 ct Tw Black Spinel Pavewave Sterling Ring Size 6', 'Top Selling/Jewelry/Ring', '', '112.00', '336.00', '1', '1', '1', '1', 'by product', '0', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('54', 'M128N09PN57', 'NQH-J282026000362', '3.25 ct Tw Black Spinel Paveround Wrapped Sterling Ring Size 11', 'Top Selling/Jewelry/Ring', '', '199.50', '599.00', '1', '1', '1', '1', 'by product', '0', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('55', 'MYOMK1L5KP0', 'NQH-J282026000352', '3.25 ct Tw Black Spinel Paveround Wrapped Sterling Ring Size 6', 'Top Selling/Jewelry/Ring', '', '199.50', '599.00', '1', '1', '1', '1', 'by product', '0', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('56', 'M879D2L7N12', 'NQH-J282026000358', '3.25 ct Tw Black Spinel Paveround Wrapped Sterling Ring Size 9', 'Top Selling/Jewelry/Ring', '', '199.50', '599.00', '1', '1', '1', '1', 'by product', '0', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('57', 'MG3PDXX0DLX', 'NQH-J283124000351', 'American West Sterling/Brass White Magnesite Framed Scroll Ring Size 5', 'Top Selling/Jewelry/Ring', '', '69.00', '207.00', '1', '1', '1', '1', 'by product', '4', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('58', 'M0YGNJ2VNJ7', 'NQH-J152042000351', 'Connemara Marble Marquise Sterling Silver Cocktail Ring W/ White Topaz Size 5', 'Top Selling/Jewelry/Ring', '', '93.50', '281.00', '1', '1', '1', '1', 'by product', '21', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('59', 'MZ34K9P1D2Q', 'NQH-J158934849351', 'Dweck Diamonds Sterling Gemstone Florette Stack Ring Size 5 Rhodolite', 'Top Selling/Jewelry/Ring', '', '93.50', '281.00', '1', '1', '1', '1', 'by product', '6', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('60', 'M2JRKYXJDEY', 'NQH-J158934273352', 'Dweck Diamonds Sterling Gemstone Florette Stack Ring Size 6 Amethyst', 'Top Selling/Jewelry/Ring', '', '93.50', '281.00', '1', '1', '1', '1', 'by product', '12', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('61', 'MRWGNM10KE0', 'NQH-J158934849352', 'Dweck Diamonds Sterling Gemstone Florette Stack Ring Size 6 Rhodolite', 'Top Selling/Jewelry/Ring', '', '93.50', '281.00', '1', '1', '1', '1', 'by product', '21', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('62', 'MG3PK3Z3KQM', 'NQH-J277268000351', 'John Atencio Sterling White Topaz Ring Size 5', 'Top Selling/Jewelry/Ring', '', '118.00', '354.00', '1', '1', '1', '1', 'by product', '0', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('63', 'M4OJNWM2KQ1', 'NQH-J265828000351', 'Rlm Studio Sterling & Brass Purple Agate Bezel Set Heart Ring Size 5', 'Top Selling/Jewelry/Ring', '', '147.00', '441.00', '1', '1', '1', '1', 'by product', '0', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('64', 'MR9ZK7Q7D63', 'NQH-J263161000352', 'Sandra Singh Artisan Crafted Sterling Rainbow Moonstone Ring Size 6', 'Top Selling/Jewelry/Ring', '', '84.00', '252.00', '1', '1', '1', '1', 'by product', '9', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:52');
INSERT INTO `tb_products` VALUES ('65', 'M56EDG9EK3J', 'NQH-J278888171351', 'Vicenzasilver Sterling 1.00 ct Tw Black Spinel Hammered Ring Rose Size 5', 'Top Selling/Jewelry/Ring', '', '132.50', '398.00', '1', '1', '1', '1', 'by product', '0', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('66', 'MPVXNZ8RKOM', 'NQH-J278888240351', 'Vicenzasilver Sterling 1.00 ct Tw Black Spinel Hammered Ring Yellow Size 5', 'Top Selling/Jewelry/Ring', '', '132.50', '398.00', '1', '1', '1', '1', 'by product', '0', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('67', 'MRM5DE4PKX4', 'NQH-J269025011000', 'Bold Oval Blue Drusy Quartz Sterling Omega Back Stud Earrings', 'Fixed/Jewelry/Fashion Jewelry/Earrings', '', '119.00', '357.00', '1', '1', '1', '1', 'by product', '20', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('68', 'ME42DP00K7W', 'NQH-J269025150000', 'Bold Oval Pink Drusy Quartz Sterling Omega Back Stud Earrings', 'Fixed/Jewelry/Fashion Jewelry/Earrings', '', '119.00', '357.00', '1', '1', '1', '1', 'by product', '0', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('69', 'M3GLDR2MKW4', 'NQH-J274573240000', 'Sterling Diamond Cut Triple Hoop Earrings Yellow', 'Fixed/Jewelry/Fashion Jewelry/Earrings', '', '50.00', '150.00', '1', '1', '1', '1', 'by product', '0', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('70', 'M8GMDQ18KO1', 'NQH-J144021052000', 'Joan Rivers Python Pattern Crystal Border Button Earrings Goldtone Fuchsia', 'Fixed/Jewelry/Fashion Jewelry/Earrings', '', '32.00', '96.00', '1', '1', '1', '1', 'by product', '5', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('71', 'MVY6DVWOKXO', 'NQH-J148169112453', 'Luxe Rachel Zoe Pave Crystals & Cabochon Drop Earrings Clip On Silvertone Blue', 'Fixed/Jewelry/Fashion Jewelry/Earrings', '', '64.50', '194.00', '1', '1', '1', '1', 'by product', '2', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('72', 'M795N6RODQW', 'NQH-J148169112581', 'Luxe Rachel Zoe Pave Crystals & Cabochon Drop Earrings Pierced Silvertone Blue', 'Fixed/Jewelry/Fashion Jewelry/Earrings', '', '64.50', '194.00', '1', '1', '1', '1', 'by product', '1', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('73', 'M0LEKOLVK4W', 'NQH-J149134011000', 'Kenneth Jay Lane\'S Fashion Guru Hoop Earrings Goldtone Blue', 'Fixed/Jewelry/Fashion Jewelry/Earrings', '', '35.00', '105.00', '1', '1', '1', '1', 'by product', '1', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('74', 'M1W4N4EOK5P', 'NQH-J149134AB1000', 'Kenneth Jay Lane\'S Fashion Guru Hoop Earrings Goldtone Simulated Tortoise', 'Fixed/Jewelry/Fashion Jewelry/Earrings', '', '35.00', '105.00', '1', '1', '1', '1', 'by product', '1', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('75', 'M194DLJQK85', 'NQH-J152965000000', 'Luxe Rachel Zoe Tiered Teardrop Chandelier Earrings Silvertone', 'Fixed/Jewelry/Fashion Jewelry/Earrings', '', '74.70', '224.00', '1', '1', '1', '1', 'by product', '11', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('76', 'M71YN5PYNVQ', 'NQH-J155041000', 'Lee Sands Acacia Flower Inlay Lever Back Earrings Goldtone', 'Fixed/Jewelry/Fashion Jewelry/Earrings', '', '19.50', '100.00', '1', '1', '1', '1', 'by product', '0', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('77', 'MLVQD8VRD4E', 'NQH-J155100680000', 'Isaac Mizrahi Live! Polished Leaf And Stone Drop Earrings Silvertone', 'Fixed/Jewelry/Fashion Jewelry/Earrings', '', '23.00', '69.00', '1', '1', '1', '1', 'by product', '11', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('78', 'M128N0OPD57', 'NQH-J155100S69000', 'Isaac Mizrahi Live! Polished Leaf And Stone Drop Earrings Goldtone', 'Fixed/Jewelry/Fashion Jewelry/Earrings', '', '23.00', '69.00', '1', '1', '1', '1', 'by product', '1', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('79', 'MYOMK1O5KP0', 'NQH-J155101680000', 'Isaac Mizrahi Live! Sparkling Pave & Simulated Pearl Earrings Silvertone', 'Fixed/Jewelry/Fashion Jewelry/Earrings', '', '46.50', '140.00', '1', '1', '1', '1', 'by product', '11', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('80', 'M879D2G7D12', 'NQH-J155101S69000', 'Isaac Mizrahi Live! Sparkling Pave & Simulated Pearl Earrings Goldtone', 'Fixed/Jewelry/Fashion Jewelry/Earrings', '', '46.50', '140.00', '1', '1', '1', '1', 'by product', '1', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('81', 'MG3PDX80KLX', 'NQH-J155315012000', 'Kenneth Jay Lane\'S Enamel Statement Hoop Earrings Goldtone Black', 'Fixed/Jewelry/Fashion Jewelry/Earrings', '', '29.50', '89.00', '1', '1', '1', '1', 'by product', '1', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('82', 'M0YGNJ1VKJ7', 'NQH-J155315202000', 'Kenneth Jay Lane\'S Enamel Statement Hoop Earrings Goldtone White', 'Fixed/Jewelry/Fashion Jewelry/Earrings', '', '29.50', '89.00', '1', '1', '1', '1', 'by product', '1', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('83', 'MZ34K951D2Q', 'NQH-J156724M86000', 'Shoshanna Freeform Shape Hoop Earrings With Crystal Accents Gunmetal', 'Fixed/Jewelry/Fashion Jewelry/Earrings', '', '24.76', '74.00', '1', '1', '1', '1', 'by product', '1', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('84', 'M2JRKY8JKEY', 'NQH-J157957S69000', 'Isaac Mizrahi Live! Stone Hoop Earrings Goldtone Purple', 'Fixed/Jewelry/Fashion Jewelry/Earrings', '', '31.50', '95.00', '1', '1', '1', '1', 'by product', '0', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('85', 'MRWGNMM0NE0', 'NQH-J260835M86581', 'Joan Rivers Shimmering Pave Ball Earrings Gunmetal Pierced', 'Fixed/Jewelry/Fashion Jewelry/Earrings', '', '32.50', '98.00', '1', '1', '1', '1', 'by product', '16', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('86', 'MG3PK3G3DQM', 'NQH-J260948012581', 'Joan Rivers Crystal Medallion Drop Earrings Black Pierced', 'Fixed/Jewelry/Fashion Jewelry/Earrings', '', '39.50', '119.00', '1', '1', '1', '1', 'by product', '18', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('87', 'M4OJNW92NQ1', '22016-J261322062000', 'Honora Potato Cultured Pearl & Diamond Beads 18K Gold Over Frontal Hoop Earrings', 'Fixed/Jewelry/Fashion Jewelry/Earrings', '', '35.50', '299.00', '1', '1', '1', '1', 'by product', '31', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('88', 'MR9ZK7R7K63', 'NQH-J263131680000', 'Wildlife By Heidi Klum Animal Instinct Hoop Earrings Silvertone', 'Fixed/Jewelry/Fashion Jewelry/Earrings', '', '44.50', '134.00', '1', '1', '1', '1', 'by product', '1', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('89', 'M56EDG7EN3J', 'NQH-J263318154581', 'Joan Rivers Simple Chic Pave Ball Drop Earrings Pierced Purple Silvertone', 'Fixed/Jewelry/Fashion Jewelry/Earrings', '', '39.50', '119.00', '1', '1', '1', '1', 'by product', '26', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('90', 'MPVXNZ0RNOM', 'NQH-J264354680000', 'Open Work Floral Design Drop Earrings By Vt Luxe Silvertone', 'Fixed/Jewelry/Fashion Jewelry/Earrings', '', '55.00', '165.00', '1', '1', '1', '1', 'by product', '26', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('91', 'MRM5DEEPDX4', '22016-J267073848000', 'Wendy Williams Textured Hoop Earrings Rosetone', 'Fixed/Jewelry/Fashion Jewelry/Earrings', '', '29.50', '89.00', '1', '1', '1', '1', 'by product', '4', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('92', 'ME42DPM0D7W', 'NQH-J267073S69000', 'Rope Style Textured Goldtone Hoop Earrings', 'Fixed/Jewelry/Fashion Jewelry/Earrings', '', '29.50', '89.00', '1', '1', '1', '1', 'by product', '51', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('93', 'M56EDG77N3J', 'NQH-J268371027581', 'Rare Joan Rivers Goldtone Round Black Crystal On Stage Glamour Hoop Earrings', 'Fixed/Jewelry/Fashion Jewelry/Earrings', '', '88.00', '264.00', '1', '1', '1', '1', 'by product', '26', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('94', 'MPVXNZ0ONOM', 'NQH-J269557013581', 'Joan Rivers Brown Faceted Marquise Lever Back Drop Earrings', 'Fixed/Jewelry/Fashion Jewelry/Earrings', '', '19.75', '100.00', '1', '1', '1', '1', 'by product', '1', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('95', 'MRM5DEE5DX4', 'NQH-J269557027581', 'Joan Rivers Clear Faceted Marquise Lever Back Drop Earrings', 'Fixed/Jewelry/Fashion Jewelry/Earrings', '', '19.75', '100.00', '1', '1', '1', '1', 'by product', '69', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('96', 'ME42DPMJD7W', '22016-J271636000581', 'Kenneth Jay Lane Goldtone Regal Cabochon Pierced Drop Earrings', 'Fixed/Jewelry/Fashion Jewelry/Earrings', '', '49.50', '149.00', '1', '1', '1', '1', 'by product', '40', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('97', 'M3GLDRM4KW4', '22016-J273263000453', 'Lee Sands Labradorite & Cultured Pearl Clip On Dangle Earrings', 'Fixed/Jewelry/Fashion Jewelry/Earrings', '', '23.00', '69.00', '1', '1', '1', '1', 'by product', '28', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('98', 'M8GMDQM5NO1', 'NQH-J274405S69000', 'Joan Rivers Instant Style Filigree Drop Earrings', 'Fixed/Jewelry/Fashion Jewelry/Earrings', '', '36.50', '110.00', '1', '1', '1', '1', 'by product', '1', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('99', 'MVY6DV0ZKXO', '22016-J279224130000', 'Isaac Mizrahi Live! Colorful Open Curb Link Hoop Earrings Navy', 'Fixed/Jewelry/Fashion Jewelry/Earrings', '', '16.00', '100.00', '1', '1', '1', '1', 'by product', '16', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('100', 'M795N6PMKQW', 'NQH-J279224CA9000', 'Isaac Mizrahi Live! Colorful Open Curb Link Hoop Earrings Candy Pink', 'Fixed/Jewelry/Fashion Jewelry/Earrings', '', '16.00', '100.00', '1', '1', '1', '1', 'by product', '1', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('101', 'M0LEKO73K4W', '22016-J280761000000', 'Nolan Miller\'S Exotic Chandelier Earrings', 'Fixed/Jewelry/Fashion Jewelry/Earrings', '', '58.50', '176.00', '1', '1', '1', '1', 'by product', '40', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('102', 'M1W4N4Z6K5P', 'NQH-J280763AB1000', 'Kjl Fashion Guru Hoop Earrings Tortoise', 'Fixed/Jewelry/Fashion Jewelry/Earrings', '', '35.00', '105.00', '1', '1', '1', '1', 'by product', '3', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('103', 'M194DLMEK85', '22016-J32074848000', 'Joan Rivers Square Silhouette Resin Hoop Earrings Clear W/Gold', 'Fixed/Jewelry/Fashion Jewelry/Earrings', '', '27.75', '83.00', '1', '1', '1', '1', 'by product', '96', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('104', 'M71YN5E5DVQ', 'NQH-J148918I28000', 'Joan Rivers Animal Print Silk Flower Pin Silvertone', 'Fixed/Jewelry/Fashion Jewelry/Pins & Brooches', '', '29.75', '89.00', '1', '1', '1', '1', 'by product', '2', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('105', 'MLVQD8QZK4E', 'NQH-J152913011000', 'Joan Rivers All That Glitters Flower Pin Blue Silvertone', 'Fixed/Jewelry/Fashion Jewelry/Pins & Brooches', '', '39.50', '119.00', '1', '1', '1', '1', 'by product', '1', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('106', 'M128N01ZD57', 'NQH-J155010030000', 'Joan Rivers Trend Setting Flower Pin Denim Silvertone', 'Fixed/Jewelry/Fashion Jewelry/Pins & Brooches', '', '29.75', '89.00', '1', '1', '1', '1', 'by product', '1', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('107', 'MYOMK1M7NP0', 'NQH-J157984011000', 'Joan Rivers Floral Mum Flower Pin Blue', 'Fixed/Jewelry/Fashion Jewelry/Pins & Brooches', '', '39.00', '117.00', '1', '1', '1', '1', 'by product', '1', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('108', 'M879D2XON12', 'NQH-J157984013000', 'Joan Rivers Floral Mum Flower Pin Brown', 'Fixed/Jewelry/Fashion Jewelry/Pins & Brooches', '', '39.00', '117.00', '1', '1', '1', '1', 'by product', '1', '1', 'USA', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('109', 'M1W4N4R6N5P', 'I-CSWB830', 'Ladies White Gold Finish 1 Row Genuine Diamond Tennis Bracelet 1.0Ct', 'Top Selling/Jewelry/Bracelet', '', '248.99', '747.00', '1', '1', '1', '1', 'by product', '98', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('110', 'M194DLWEN85', 'F-39-716-13-YG14K', 'Estate 5.00Ct Round Diamond 14K Yellow Gold Tennis Bracelet G-H & Si-I Certified', 'Top Selling/Jewelry/Bracelet', '', '4009.00', '12027.00', '1', '1', '1', '1', 'by product', '0', '1', '', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('111', 'M71YN5Q5DVQ', 'F-37-565-25-YG14K', 'Estate 1.25 Ct Round Natural Diamond 14K Yellow Gold Tennis Bracelet Certified', 'Top Selling/Jewelry/Bracelet', '', '1220.00', '3660.00', '1', '1', '1', '1', 'by product', '0', '1', '', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('112', 'MLVQD8OZN4E', '22016-J262934-GT-E', 'QVC Joan Rivers Chic Classic Gold Tone Brown 18\" Necklace & Pierced Earrings Set', 'Fixed/Jewelry/Fashion Jewelry/Sets', '', '64.99', '150.00', '1', '1', '1', '1', 'by product', '2', '1', '', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('113', 'M128N0GZK57', 'QH-J146059-silvertone-32-green-set', 'QVC Garold Miller Silver Tone Green Graduated Faceted Bead 32\" Necklace Earrings', 'Fixed/Jewelry/Fashion Jewelry/Sets', '', '29.99', '90.00', '1', '1', '1', '1', 'by product', '0', '1', '', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('114', 'MYOMK1Z7DP0', '22016-J25877-silvertone-14.5-clear', 'QVC Silver Tone 3 Str& Mini Pave Heart Necklace & Earring Wardrobe', 'Fixed/Jewelry/Fashion Jewelry/Sets', '', '29.99', '90.00', '1', '1', '1', '1', 'by product', '1', '1', '', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('115', 'M879D2EOK12', 'I-CMWB2099-YSL', '6.10 CTW Blue Sapphire & Genuine Diamond Bracelet 10K Yellow Gold Finish', 'Top Selling/Jewelry/Bracelet', '', '384.99', '750.00', '1', '1', '1', '1', 'by product', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:53');
INSERT INTO `tb_products` VALUES ('116', 'MG3PDXJ5KLX', 'M-12549-WG10K', 'D Vvs1 1 Ct Solitaire & 0.33Ct Micropave Halo Stud Earrings Bridal Jewelry New', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', '', '149.99', '1800.00', '1', '1', '1', '1', 'by product', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('117', 'M0YGNJXQKJ7', 'M-160892265630-WG14K', '1/4 Ct Round Cut 14K White Gold Diamond Stud Earrings', 'Fixed/Jewelry/Fashion Jewelry/Earrings', '', '244.00', '732.00', '1', '1', '1', '1', 'by product', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('118', 'MZ34K90RK2Q', 'I-V-6-STUD-WSL', 'Men\'S/Women\'S Black & White Natural Diamond White Gold Finish Stud Earrings', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', '', '24.99', '75.00', '1', '1', '1', '1', 'by variation', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('119', 'M2JRKY7YDEY', 'C-JSGE311-YSL', '18K Yellow Gold Over Sterling Silver 0.05Ct Natural Diomond Squre Earrings', 'Auction/Jewelry/Fine Jewelry/Earrings/Diamond', '', '29.99', '90.00', '1', '1', '1', '1', 'by product', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('120', 'MRWGNMYGNE0', 'I-CSRGE1865BL-RSL', '0.05Ct Sterling 18K Rose Gold Over Sterling Black Diamond Stud Earrings $199', 'Auction/Jewelry/Fine Jewelry/Earrings/Diamond', '', '39.99', '120.00', '1', '1', '1', '1', 'by product', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('121', 'M4OJNWJXKQ1', 'I-JSRGE1041-RSL-AFSJ', 'Sterling Silver 14K Rose Gold Plated White Diamond Stud Earrings', 'Auction/Jewelry/Fine Jewelry/Earrings/Diamond', '', '29.99', '90.00', '1', '1', '1', '1', 'by product', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('122', 'MR9ZK74QK63', 'C-MSE27-WSL', '10K White Gold Over 3Ct Round Cut D/Vvs1 Stud Earrings', 'Auction/Jewelry/Fine Jewelry/Earrings/Diamond', '', '39.99', '120.00', '1', '1', '1', '1', 'by product', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('123', 'M56EDGM7D3J', 'C-MSGE200-WSL', '18Kt Gold Plated Sterling Silver 0.02Ct Natural Diomond Stud Earrings Nr', 'Auction/Jewelry/Fine Jewelry/Earrings/Diamond', '', '29.99', '90.00', '1', '1', '1', '1', 'by product', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('124', 'MRM5DEX5KX4', 'C-AR0172-7-YSL', 'Yellow Gold Over Sterling Silver Natural Diamond Round Stud Earrings 483U', 'Auction/Jewelry/Fine Jewelry/Earrings/Diamond', '', '29.99', '90.00', '1', '1', '1', '1', 'by product', '1', '1', '', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('125', 'ME42DPJJD7W', 'I-CSRGE1866BL-BLACK-RSL', '0.05Ct Sterling Silver 14K Rose Gold Plated Black Diamond Drop Earrings 236Q', 'Auction/Jewelry/Fine Jewelry/Earrings/Diamond', '', '39.99', '150.00', '1', '1', '1', '1', 'by product', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('126', 'M3GLDRW4NW4', 'M-201336082649-YG14K', '0.8 Ct Rd Solitaire Stud Earrings Martini Style Solid 14K Yellow Gold Screw Back', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', '', '77.72', '233.00', '1', '1', '1', '1', 'by product', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('127', 'M8GMDQJ5NO1', 'I-CZ-CSE3263-H966516-WG10K', 'New Vvs1 Blue Pretty Earrings 1/4 Carat Tw Round-Cut 10K White Gold Gorgeous', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', '', '174.99', '525.00', '1', '1', '1', '1', 'by product', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('128', 'MVY6DVJZDXO', 'I-CME1865BL-RG9K', 'Womens Girls 1/20Ct 9K Rose Gold Real Black Diamond Heart Stud Earrings', 'Top Selling/Jewelry/Earrings', '', '109.99', '270.00', '1', '1', '1', '1', 'by product', '98', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('129', 'M795N6OMDQW', 'I-CZ-CME3091-WG10K', 'D/Vvs1 10K Solid White Gold 1.95Ct Flower Stud Earrings ', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', '', '189.99', '570.00', '1', '1', '1', '1', 'by product', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('130', 'M0LEKOJ3N4W', 'QH-J09283', 'D/Vvs1 Round Cut In & Out Side Hoop Earrings 1.10Cttw 14K White Gold Finish', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', '', '85.81', '257.00', '1', '1', '1', '1', 'by product', '0', '1', '', '1', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('131', 'M1W4N4V6D5P', 'C-JSRGE1039BL-RSL', '14K Rose Gold Finish Silver Black Diamond Stud Earrings', 'Auction/Jewelry/Fine Jewelry/Earrings/Diamond', '', '29.99', '90.00', '1', '1', '1', '1', 'by product', '98', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('132', 'M71YN565DVQ', 'I-JSE413-WSL', '.925 Sterling Silver 0.14Ct White Diamond Stud Earrings Lowest On Ebay', 'Auction/Jewelry/Fine Jewelry/Earrings/Diamond', '', '39.99', '120.00', '1', '1', '1', '1', 'by product', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('133', 'MLVQD8LZN4E', 'I-CMEI3421-CZ-WG10K', 'Solid 10K White Gold 3.12 ct Princess Cut D/Vvs1 Lever Back Dangle Earrings', 'Top Selling/Jewelry/Earrings', '', '199.99', '300.00', '1', '1', '1', '1', 'by product', '97', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('134', 'MYOMK1P7NP0', 'I-CSRGE1865BL-RSL-AFSJ', 'Female Girls 1/20Ct 14K Rose Gold Finish Real Black Diamond Heart Stud Earrings', 'Top Selling/Jewelry/Earrings', '', '24.99', '75.00', '1', '1', '1', '1', 'by product', '97', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('135', 'M879D2RON12', 'C-CME3293-WG14K', '1.60Ct Hoop Earrings I1/G In & Out Side Diamond White Gold Appraisal 360Â° Video', 'Top Selling/Jewelry/Earrings', '', '631.99', '1927.00', '1', '1', '1', '1', 'by product', '94', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('136', 'MG3PDX95NLX', 'I-CSE1982BL-WSL', '0.68 Ct Black Diamond Round Stud Earrings In Sterling Silver', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', '', '161.49', '484.00', '1', '1', '1', '1', 'by product', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('137', 'M0YGNJZQDJ7', 'I-JME312-YG10K', 'Mens Ladies 10K Yellow Gold Designer Square Diamond Earrings Studs 0.15 Ct', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', '', '139.99', '420.00', '1', '1', '1', '1', 'by product', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('138', 'MZ34K9ORN2Q', 'M-201211010007-WG14K', 'White D/VVS1 Halo Solitaire Stud Bridal Earrings Jackets 14K White Gold', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', '', '336.29', '958.00', '1', '1', '1', '1', 'by product', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('139', 'MRWGNMRGKE0', 'M-171726019512-WG14K', '4 Ct Round Cut Solitaire Stud Earrings In 14K Real White Gold Screw Back', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', '', '93.76', '281.00', '1', '1', '1', '1', 'by product', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('140', 'MG3PK3E1KQM', 'I-CSE1986BW-WSL', '0.65 Ct Black & White Diamond Square Stud Earrings In Sterling', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', '', '199.99', '712.00', '1', '1', '1', '1', 'by product', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('141', 'M4OJNW1XDQ1', 'M-251860783457-WG14K', '2.00 Ct Brilliant Round Cut Basket Screwback Earrings Real 14K White Gold', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', '', '132.71', '398.00', '1', '1', '1', '1', 'by product', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('142', 'MR9ZK7VQN63', 'I-CSE1964BW-WSL', '1/8 Ct Black & White Diamond Round Stud Earrings In Sterling', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', '', '94.99', '285.00', '1', '1', '1', '1', 'by product', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('143', 'M56EDGY7D3J', 'I-CSE2232BL-WSL', 'White Gold Over Black Diamond Accent Drop/Dangle Earrings', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', '', '28.49', '85.00', '1', '1', '1', '1', 'by product', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('144', 'MPVXNZ1ODOM', 'I-CME1979BW-WG10K', '0.30Ct Black & White Diamond Stud Earrings 10K Solid White Gold', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', '', '189.99', '570.00', '1', '1', '1', '1', 'by product', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('145', 'MRM5DEY5NX4', 'I-JSE323-CZ-WSL', 'Mens Ladies Diamond White Gold Finish Stud Earrings Designer Square', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', '', '47.49', '142.00', '1', '1', '1', '1', 'by product', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('146', 'ME42DP6JK7W', 'I-CSEI3595-WSL-ADJ', 'Solitaire Stud Earrings 2Ct Princess Cut Diamond-Unique Solid Silver', 'Top Selling/Jewelry/Earrings', '', '36.99', '111.00', '1', '1', '1', '1', 'by product', '95', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('147', 'M56EDGYYD3J', 'M-181395207-WGYG-10K', 'Yellow Diamond Earrings 1/4 Ct Round Cut 10K Two Tone Gold', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', '', '248.89', '747.00', '1', '1', '1', '1', 'by product', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('148', 'MPVXNZ16DOM', 'M-400653235075-YG10K', 'Mens Ladies 10K Yellow Gold Canary Diamond Kite Pave Shape Stud Earrings 9Mm', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', '', '246.04', '738.00', '1', '1', '1', '1', 'by product', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('149', 'MRM5DEY2NX4', 'M-271122570286-WG14K', '0.24 Carat Blue Diamond Stud Earrings 14K White Gold Diamond Earrings', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', '', '165.79', '497.00', '1', '1', '1', '1', 'by product', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('150', 'ME42DP6OK7W', 'I-CME3281BU-WG14K', '1 Carat Blue Round Diamond Lever Back Dangling Pair Earrings 14K White Gold', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', '', '378.76', '1136.00', '1', '1', '1', '1', 'by product', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('151', 'M3GLDR43DW4', 'M-271675421296-YG14K', '1 Carat Blue Round Diamond Lever Back Dangling Pair Earrings 14K Yellow Gold', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', '', '377.14', '1131.00', '1', '1', '1', '1', 'by product', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('152', 'M8GMDQOEKO1', 'M-270955296680-WG14K', '0.40 Carat Total Weight Blue Color Diamond Stud Earrings 14K White Gold Wg Ct', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', '', '153.61', '461.00', '1', '1', '1', '1', 'by product', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('153', 'MVY6DV28DXO', 'M-350897512094-WSL', 'Sterling Silver 1/2Ct Diamond Hoop Earrings', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', '', '73.81', '221.00', '1', '1', '1', '1', 'by product', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('154', 'M795N6Q8NQW', 'I-MME22-CZ-WG14K', 'New 14Kt White Gold Round Man Made Diamond Stud Earrings 4.00 Ct D/Vvs1', 'Top Selling/Jewelry/Earrings', '', '171.99', '490.00', '1', '1', '1', '1', 'by product', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('155', 'M0LEKOVRN4W', 'M-CSE3340BW-WSL', '0.50 Carat Round Cut Black & White Diamond Stud Earrings 14K White Gold Over', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', '', '34.50', '104.00', '1', '1', '1', '1', 'by product', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('156', 'M1W4N4PQD5P', 'I-CME3341-WG14K', '1/3 Ct Round Cut 14K White Gold Diamond Stud Earrings', 'Top Selling/Jewelry/Earrings', '', '124.79', '357.00', '1', '1', '1', '1', 'by product', '99', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('157', 'M194DLP5K85', 'I-MME17-WG14K', '1/5 Carat Round Cut Diamond Stud Earrings 14K White Gold Over (I-J,I2-I3)', 'Top Selling/Jewelry/Earrings', '', '399.99', '119.00', '1', '1', '1', '1', 'by product', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('158', 'M71YN5R1KVQ', 'I-CME3346-WG10K', '1/4 Carat Round Cut Diamond Dangle Earrings Solid 10K White Gold', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', '', '128.99', '387.00', '1', '1', '1', '1', 'by product', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('159', 'MLVQD882D4E', 'I-CME3374-CZ-WG14K', '1.00Carat Round Brilliant Cut Pushback Basket Stud Earrings Solid 14K White Gold', 'Top Selling/Jewelry/Earrings', '', '39.99', '120.00', '1', '1', '1', '1', 'by product', '96', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('160', 'M128N072D57', 'I-CME2096-BLMO-1.00-WG14K', '1.00 Carat Round Cut Moissanite Stud Earrings Solid 14K White Gold', 'Fixed/Jewelry/Fine Jewelry/Earrings/Gemstone', '', '149.99', '450.00', '1', '1', '1', '1', 'by product', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('161', 'MYOMK1QJDP0', 'M-CSE3345-BW-WSL', '0.25 Carat Round Cut Black & White Diamond Stud Earrings 14K White Gold Over', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', '', '29.50', '89.00', '1', '1', '1', '1', 'by product', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('162', 'M879D2VMD12', 'I-MME24BU-WG14K', '0.50 Ct Round Cut VVS1 Blue Solitaire Stud Earrings 14K White Gold', 'Top Selling/Jewelry/Earrings', '', '119.99', '360.00', '1', '1', '1', '1', 'by product', '98', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('163', 'MG3PDXQ6NLX', 'I-CSGE2870BS-YG14K', '1.00Ct Heart Shape Blue Sapphire Studs Earrings 14K Yellow Gold', 'Top Selling/Jewelry/Earrings', '', '97.99', '294.00', '1', '1', '1', '1', 'by product', '99', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('164', 'M0YGNJROKJ7', 'M-221535834520-WSL', '2.00 Carat Black & White Diamond Stud Earrings In Sterling Silver', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', '', '142.21', '427.00', '1', '1', '1', '1', 'by product', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('165', 'M2JRKYV8KEY', 'I-MME22-CZ-YG14K', 'Diamond Stud Earrings 4 Carat Round Man Made D/Vvs1 14K Yellow Gold', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', '', '451.81', '1355.00', '1', '1', '1', '1', 'by product', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('166', 'MRWGNM6MDE0', 'I-CSE1971BW-WG10K', '0.25Ct Black & White Diamond Square Stud Earrings 10K White Gold', 'Top Selling/Jewelry/Earrings', '', '173.84', '522.00', '1', '1', '1', '1', 'by product', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('167', 'MG3PK365KQM', 'I-CME2870BS-CZ-WG14K', '1.00Ct Heart Shape Created Blue Sapphire Studs Earrings 14K White Gold', 'Top Selling/Jewelry/Earrings', '', '93.09', '279.00', '1', '1', '1', '1', 'by product', '97', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('168', 'M4OJNWR4DQ1', 'I-JSE245-CZ-WSL', 'Men Ladies Diamond Stud Earring Square Sterling Silver Screw On Back', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', '', '37.71', '113.00', '1', '1', '1', '1', 'by product', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('169', 'MR9ZK754N63', 'I-MME299-WG14k', 'Diamond Stud Earrings 4 Ct Round Man Made D/Vvs1 14K White Gold', 'Top Selling/Jewelry/Earrings', '', '256.49', '769.00', '1', '1', '1', '1', 'by product', '98', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:54');
INSERT INTO `tb_products` VALUES ('170', 'M56EDGZYK3J', 'M-181592990932-WSL', '2 Ct Princess Cut Earrings Studs Brilliant Screwback Basket 10K White Gold Over', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', '', '56.04', '168.00', '1', '1', '1', '1', 'by product', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:55');
INSERT INTO `tb_products` VALUES ('171', 'MPVXNZ66NOM', 'I-CSRGE1853-CZ-WSL', 'Pear Stud Earrings Blue Diamond Accent In Sterling Silver', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', '', '28.49', '85.00', '1', '1', '1', '1', 'by product', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:55');
INSERT INTO `tb_products` VALUES ('172', 'MRM5DEM2NX4', 'I-JSE299-CZ-WSL', 'Pure Sterling Silver (925) Square Mens Earrings With Screw Backs 8Mm', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', '', '47.49', '142.00', '1', '1', '1', '1', 'by product', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:55');
INSERT INTO `tb_products` VALUES ('173', 'ME42DPLON7W', 'I-CSE2234BL-WSL', 'Black Diamond Accent Drop/Dangle Earrings 10K White Gold Over', 'Fixed/Jewelry/Fine Jewelry/Earrings/Diamond', '', '28.49', '85.00', '1', '1', '1', '1', 'by product', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:55');
INSERT INTO `tb_products` VALUES ('174', 'M3GLDR83KW4', 'M-201211010007-WSL', '925 Silver 2.1Ct Blue Topaz & 1/8Ct Diamond Stud Earrings', 'Fixed/Jewelry/Fine Jewelry/Earrings/Gemstone', '', '80.46', '241.00', '1', '1', '1', '1', 'by product', '1', '1', '', '0', '2016-10-10 15:14:41', '2016-10-10 15:14:55');

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
  KEY `PRODUCT_ID` (`PRODUCT_ID`),
  CONSTRAINT `tb_product_attributes_ibfk_1` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `tb_products` (`PRODUCT_ID`) ON DELETE CASCADE ON UPDATE NO ACTION
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
  CONSTRAINT `tb_product_bids_ibfk_1` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `tb_products` (`PRODUCT_ID`) ON UPDATE CASCADE,
  CONSTRAINT `tb_product_bids_ibfk_2` FOREIGN KEY (`USER_ID`) REFERENCES `tb_users` (`USER_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- ----------------------------
-- Records of tb_product_bids
-- ----------------------------

-- ----------------------------
-- Table structure for tb_product_images
-- ----------------------------
DROP TABLE IF EXISTS `tb_product_images`;
CREATE TABLE `tb_product_images` (
  `IMAGE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PRODUCT_ID` int(11) DEFAULT NULL,
  `IMAGE_URL` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`IMAGE_ID`),
  KEY `PRODUCT_ID` (`PRODUCT_ID`),
  CONSTRAINT `tb_product_images_ibfk_1` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `tb_products` (`PRODUCT_ID`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_product_images
-- ----------------------------
INSERT INTO `tb_product_images` VALUES ('1', '1', 'http://www.eoction.com/wp-content/uploads/2016/08/M-JTV-IDA205-1.jpg');
INSERT INTO `tb_product_images` VALUES ('2', '2', 'http://www.eoction.com/wp-content/uploads/2016/08/281169019228.jpg');

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
  KEY `PRODUCT_ID` (`PRODUCT_ID`),
  CONSTRAINT `tb_product_video_ibfk_1` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `tb_products` (`PRODUCT_ID`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_product_video
-- ----------------------------
INSERT INTO `tb_product_video` VALUES ('1', '1', '3123', '1');

-- ----------------------------
-- Table structure for tb_users
-- ----------------------------
DROP TABLE IF EXISTS `tb_users`;
CREATE TABLE `tb_users` (
  `USER_ID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(20) NOT NULL,
  `FULL_NAMES` varchar(255) NOT NULL,
  `EMAIL_ADDRESS` varchar(255) DEFAULT NULL,
  `LOGIN_ID` varchar(300) DEFAULT NULL,
  `PHONE_NO` varchar(30) DEFAULT NULL,
  `TIMEZONE` varchar(10) DEFAULT NULL,
  `COUNTRY` varchar(10) DEFAULT NULL,
  `SOCIAL_ID` int(11) DEFAULT NULL,
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`USER_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

-- ----------------------------
-- Records of tb_users
-- ----------------------------
