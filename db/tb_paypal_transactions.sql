/*
Navicat MySQL Data Transfer

Source Server         : Localhost
Source Server Version : 50711
Source Host           : localhost:3306
Source Database       : eoction

Target Server Type    : MYSQL
Target Server Version : 50711
File Encoding         : 65001

Date: 2016-11-28 18:42:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for tb_paypal_transactions
-- ----------------------------
DROP TABLE IF EXISTS `tb_paypal_transactions`;
CREATE TABLE `tb_paypal_transactions` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USER_ID` int(11) NOT NULL,
  `PAYMENT_ID` varchar(100) NOT NULL,
  `HASH` varchar(100) NOT NULL,
  `COMPLETE` tinyint(1) NOT NULL DEFAULT '0',
  `CREATE_TIME` datetime DEFAULT NULL,
  `UPDATE_TIME` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`ID`),
  KEY `FK_USER_ID` (`USER_ID`),
  CONSTRAINT `FK_USER_ID` FOREIGN KEY (`USER_ID`) REFERENCES `tb_users` (`USER_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
SET FOREIGN_KEY_CHECKS=1;
