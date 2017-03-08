-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: mysql.eoction.com
-- Generation Time: Feb 28, 2017 at 12:20 AM
-- Server version: 5.6.25-log
-- PHP Version: 7.1.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `neoct`
--

-- --------------------------------------------------------

--
-- Table structure for table `bid_exclusion`
--

CREATE TABLE `bid_exclusion` (
  `EXCLUSION_ID` int(11) NOT NULL,
  `PRODUCT_ID` int(11) NOT NULL,
  `BIDDING_PERIOD` int(11) NOT NULL COMMENT 'How long to include the item from bid (hours)',
  `EXCLUSION_PERIOD` int(11) NOT NULL COMMENT 'How long to exclude the item from bid (hours)',
  `HIGH_DEMAND` int(1) DEFAULT '0' COMMENT 'If item is high demand do not exclude it',
  `AUCTION_COUNT` int(1) DEFAULT '0' COMMENT 'Number of times listed for auction',
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bid_exclusion`
--

INSERT INTO `bid_exclusion` (`EXCLUSION_ID`, `PRODUCT_ID`, `BIDDING_PERIOD`, `EXCLUSION_PERIOD`, `HIGH_DEMAND`, `AUCTION_COUNT`, `DATE_CREATED`, `DATE_UPDATED`) VALUES
(1, 1, 1488265061, 1488266261, 0, 41, NULL, '2017-02-27 22:47:41'),
(2, 2, 1488265061, 1488266261, 0, 41, NULL, '2017-02-27 22:47:41'),
(3, 3, 1488265061, 1488266261, 0, 41, NULL, '2017-02-27 22:47:41'),
(4, 4, 1488265061, 1488266261, 0, 41, NULL, '2017-02-27 22:47:41'),
(5, 5, 1488265061, 1488266261, 0, 41, NULL, '2017-02-27 22:47:41'),
(6, 6, 1488265061, 1488266261, 0, 41, NULL, '2017-02-27 22:47:41'),
(7, 7, 1488265061, 1488266261, 0, 41, NULL, '2017-02-27 22:47:41'),
(8, 8, 1488265061, 1488266261, 0, 41, NULL, '2017-02-27 22:47:41'),
(9, 9, 1488265061, 1488266261, 0, 41, NULL, '2017-02-27 22:47:41'),
(10, 10, 1488265062, 1488266262, 0, 41, NULL, '2017-02-27 22:47:42'),
(11, 11, 1488265062, 1488266262, 0, 42, NULL, '2017-02-27 22:47:42'),
(12, 12, 1488265062, 1488266262, 0, 41, NULL, '2017-02-27 22:47:42'),
(13, 13, 1488265062, 1488266262, 0, 41, NULL, '2017-02-27 22:47:42'),
(14, 14, 1488265062, 1488266262, 0, 41, NULL, '2017-02-27 22:47:42'),
(15, 15, 1488265062, 1488266262, 0, 42, NULL, '2017-02-27 22:47:42'),
(16, 16, 1488265062, 1488266262, 0, 41, NULL, '2017-02-27 22:47:42'),
(17, 17, 1488265062, 1488266262, 0, 41, NULL, '2017-02-27 22:47:42'),
(18, 18, 1488265063, 1488266263, 0, 41, NULL, '2017-02-27 22:47:43'),
(19, 19, 1488265063, 1488266263, 0, 41, NULL, '2017-02-27 22:47:43'),
(20, 20, 1488265063, 1488266263, 0, 41, NULL, '2017-02-27 22:47:43'),
(21, 21, 1488179186, 1488180086, 0, 0, NULL, NULL),
(22, 22, 1488179186, 1488180086, 0, 0, NULL, NULL),
(23, 23, 1488179186, 1488180086, 0, 0, NULL, NULL),
(24, 24, 1488179186, 1488180086, 0, 0, NULL, NULL),
(25, 25, 1488179186, 1488180086, 0, 0, NULL, NULL),
(26, 26, 1488179186, 1488180086, 0, 0, NULL, NULL),
(27, 27, 1488179186, 1488180086, 0, 0, NULL, NULL),
(28, 28, 1488179187, 1488180087, 0, 0, NULL, NULL),
(29, 29, 1488179187, 1488180087, 0, 0, NULL, NULL),
(30, 30, 1488179187, 1488180087, 0, 0, NULL, NULL),
(31, 31, 1488179187, 1488180087, 0, 0, NULL, NULL),
(32, 32, 1488179187, 1488180087, 0, 0, NULL, NULL),
(33, 33, 1488179187, 1488180087, 0, 0, NULL, NULL),
(34, 34, 1488179187, 1488180087, 0, 0, NULL, NULL),
(35, 35, 1488179187, 1488180087, 0, 0, NULL, NULL),
(36, 36, 1488179187, 1488180087, 0, 0, NULL, NULL),
(37, 37, 1488179187, 1488180087, 0, 0, NULL, NULL),
(38, 38, 1488179187, 1488180087, 0, 0, NULL, NULL),
(39, 39, 1488179187, 1488180087, 0, 0, NULL, NULL),
(40, 40, 1488179188, 1488180088, 0, 0, NULL, NULL),
(41, 41, 1488179189, 1488180089, 0, 0, NULL, NULL),
(42, 42, 1488179189, 1488180089, 0, 0, NULL, NULL),
(43, 43, 1488179189, 1488180089, 0, 0, NULL, NULL),
(44, 44, 1488179189, 1488180089, 0, 0, NULL, NULL),
(45, 45, 1488179189, 1488180089, 0, 0, NULL, NULL),
(46, 46, 1488179189, 1488180089, 0, 0, NULL, NULL),
(47, 47, 1488179189, 1488180089, 0, 0, NULL, NULL),
(48, 48, 1488179189, 1488180089, 0, 0, NULL, NULL),
(49, 49, 1488179189, 1488180089, 0, 0, NULL, NULL),
(50, 50, 1488179190, 1488180090, 0, 0, NULL, NULL),
(51, 51, 1488179190, 1488180090, 0, 0, NULL, NULL),
(52, 52, 1488179190, 1488180090, 0, 0, NULL, NULL),
(53, 53, 1488179190, 1488180090, 0, 0, NULL, NULL),
(54, 54, 1488179190, 1488180090, 0, 0, NULL, NULL),
(55, 55, 1488179190, 1488180090, 0, 0, NULL, NULL),
(56, 56, 1488179190, 1488180090, 0, 0, NULL, NULL),
(57, 57, 1488179191, 1488180091, 0, 0, NULL, NULL),
(58, 58, 1488179191, 1488180091, 0, 0, NULL, NULL),
(59, 59, 1488179191, 1488180091, 0, 0, NULL, NULL),
(60, 60, 1488179191, 1488180091, 0, 0, NULL, NULL),
(61, 61, 1488180691, 1488181591, 0, 0, NULL, NULL),
(62, 62, 1488180691, 1488181591, 0, 0, NULL, NULL),
(63, 63, 1488180692, 1488181592, 0, 0, NULL, NULL),
(64, 64, 1488180692, 1488181592, 0, 0, NULL, NULL),
(65, 65, 1488180696, 1488181596, 0, 0, NULL, NULL),
(66, 66, 1488180696, 1488181596, 0, 0, NULL, NULL),
(67, 67, 1488180696, 1488181596, 0, 0, NULL, NULL),
(68, 68, 1488180696, 1488181596, 0, 0, NULL, NULL),
(69, 69, 1488180697, 1488181597, 0, 0, NULL, NULL),
(70, 70, 1488180697, 1488181597, 0, 0, NULL, NULL),
(71, 71, 1488180697, 1488181597, 0, 0, NULL, NULL),
(72, 72, 1488180697, 1488181597, 0, 0, NULL, NULL),
(73, 73, 1488180697, 1488181597, 0, 0, NULL, NULL),
(74, 74, 1488180698, 1488181598, 0, 0, NULL, NULL),
(75, 75, 1488180698, 1488181598, 0, 0, NULL, NULL),
(76, 76, 1488215271, 1488216471, 0, 1, NULL, '2017-02-27 08:57:51'),
(77, 77, 1488180698, 1488181598, 0, 0, NULL, NULL),
(78, 78, 1488180699, 1488181599, 0, 0, NULL, NULL),
(79, 79, 1488180699, 1488181599, 0, 0, NULL, NULL),
(80, 80, 1488180699, 1488181599, 0, 0, NULL, NULL),
(81, 81, 1488215260, 1488216460, 0, 1, NULL, '2017-02-27 08:57:40'),
(82, 82, 1488180700, 1488181600, 0, 0, NULL, NULL),
(83, 83, 1488180700, 1488181600, 0, 0, NULL, NULL),
(84, 84, 1488180700, 1488181600, 0, 0, NULL, NULL),
(85, 85, 1488180716, 1488181616, 0, 0, NULL, NULL),
(86, 86, 1488180717, 1488181617, 0, 0, NULL, NULL),
(87, 87, 1488180721, 1488181621, 0, 0, NULL, NULL),
(88, 88, 1488180721, 1488181621, 0, 0, NULL, NULL),
(89, 89, 1488180725, 1488181625, 0, 0, NULL, NULL),
(90, 90, 1488180726, 1488181626, 0, 0, NULL, NULL),
(91, 91, 1488180726, 1488181626, 0, 0, NULL, NULL),
(92, 92, 1488180726, 1488181626, 0, 0, NULL, NULL),
(93, 93, 1488180727, 1488181627, 0, 0, NULL, NULL),
(94, 94, 1488180728, 1488181628, 0, 0, NULL, NULL),
(95, 95, 1488180731, 1488181631, 0, 0, NULL, NULL),
(96, 96, 1488180741, 1488181641, 0, 0, NULL, NULL),
(97, 97, 1488180745, 1488181645, 0, 0, NULL, NULL),
(98, 98, 1488180748, 1488181648, 0, 0, NULL, NULL),
(99, 99, 1488180748, 1488181648, 0, 0, NULL, NULL),
(100, 100, 1488180749, 1488181649, 0, 0, NULL, NULL),
(101, 101, 1488180752, 1488181652, 0, 0, NULL, NULL),
(103, 102, 1488180753, 1488181653, 0, 0, NULL, NULL),
(104, 103, 1488180753, 1488181653, 0, 0, NULL, NULL),
(105, 104, 1488180753, 1488181653, 0, 0, NULL, NULL),
(106, 105, 1488180763, 1488181663, 0, 0, NULL, NULL),
(107, 106, 1488180764, 1488181664, 0, 0, NULL, NULL),
(108, 107, 1488180765, 1488181665, 0, 0, NULL, NULL),
(109, 108, 1488180765, 1488181665, 0, 0, NULL, NULL),
(110, 109, 1488180765, 1488181665, 0, 0, NULL, NULL),
(111, 110, 1488180766, 1488181666, 0, 0, NULL, NULL),
(112, 111, 1488180767, 1488181667, 0, 0, NULL, NULL),
(113, 112, 1488180768, 1488181668, 0, 0, NULL, NULL),
(114, 113, 1488039134, 1488040034, 0, 0, NULL, NULL),
(115, 114, 1488039135, 1488040035, 0, 0, NULL, NULL),
(116, 115, 1488039138, 1488040038, 0, 0, NULL, NULL),
(117, 116, 1488039138, 1488040038, 0, 0, NULL, NULL),
(118, 117, 1488039138, 1488040038, 0, 0, NULL, NULL),
(119, 118, 1488039142, 1488040042, 0, 0, NULL, NULL),
(120, 119, 1488039142, 1488040042, 0, 0, NULL, NULL),
(121, 120, 1488039155, 1488040055, 0, 0, NULL, NULL),
(122, 121, 1488039164, 1488040064, 0, 0, NULL, NULL),
(123, 122, 1488039173, 1488040073, 0, 0, NULL, NULL),
(124, 123, 1488039174, 1488040074, 0, 0, NULL, NULL),
(125, 124, 1488039175, 1488040075, 0, 0, NULL, NULL),
(126, 125, 1488039176, 1488040076, 0, 0, NULL, NULL),
(127, 126, 1488039176, 1488040076, 0, 0, NULL, NULL),
(128, 127, 1488039177, 1488040077, 0, 0, NULL, NULL),
(129, 128, 1488039186, 1488040086, 0, 0, NULL, NULL),
(130, 129, 1488039190, 1488040090, 0, 0, NULL, NULL),
(131, 130, 1488039198, 1488040098, 0, 0, NULL, NULL),
(133, 131, 1488039199, 1488040099, 0, 0, NULL, NULL),
(134, 132, 1488039200, 1488040100, 0, 0, NULL, NULL),
(135, 133, 1488039206, 1488040106, 0, 0, NULL, NULL),
(136, 134, 1488039207, 1488040107, 0, 0, NULL, NULL),
(137, 135, 1488039209, 1488040109, 0, 0, NULL, NULL),
(138, 136, 1488039209, 1488040109, 0, 0, NULL, NULL),
(139, 137, 1488039211, 1488040111, 0, 0, NULL, NULL),
(140, 138, 1488039212, 1488040112, 0, 0, NULL, NULL),
(141, 139, 1488039214, 1488040114, 0, 0, NULL, NULL),
(142, 140, 1488039224, 1488040124, 0, 0, NULL, NULL),
(143, 141, 1488039232, 1488040132, 0, 0, NULL, NULL),
(144, 142, 1488039239, 1488040139, 0, 0, NULL, NULL),
(145, 143, 1488039240, 1488040140, 0, 0, NULL, NULL),
(146, 144, 1488039240, 1488040140, 0, 0, NULL, NULL),
(147, 145, 1488039242, 1488040142, 0, 0, NULL, NULL),
(148, 146, 1488039243, 1488040143, 0, 0, NULL, NULL),
(149, 147, 1488039243, 1488040143, 0, 0, NULL, NULL),
(150, 148, 1488039258, 1488040158, 0, 0, NULL, NULL),
(151, 149, 1488039260, 1488040160, 0, 0, NULL, NULL),
(152, 150, 1488039271, 1488040171, 0, 0, NULL, NULL),
(153, 151, 1488039271, 1488040171, 0, 0, NULL, NULL),
(154, 152, 1488039275, 1488040175, 0, 0, NULL, NULL),
(155, 153, 1488039284, 1488040184, 0, 0, NULL, NULL),
(156, 154, 1488039290, 1488040190, 0, 0, NULL, NULL),
(157, 155, 1488039294, 1488040194, 0, 0, NULL, NULL),
(158, 156, 1488039295, 1488040195, 0, 0, NULL, NULL),
(159, 157, 1488039297, 1488040197, 0, 0, NULL, NULL),
(160, 158, 1488039300, 1488040200, 0, 0, NULL, NULL),
(161, 159, 1488039313, 1488040213, 0, 0, NULL, NULL),
(162, 160, 1488039318, 1488040218, 0, 0, NULL, NULL),
(163, 161, 1488039319, 1488040219, 0, 0, NULL, NULL),
(164, 162, 1488039322, 1488040222, 0, 0, NULL, NULL),
(165, 163, 1488039322, 1488040222, 0, 0, NULL, NULL),
(166, 164, 1488039323, 1488040223, 0, 0, NULL, NULL),
(167, 165, 1488039324, 1488040224, 0, 0, NULL, NULL),
(168, 166, 1488039326, 1488040226, 0, 0, NULL, NULL),
(169, 167, 1488039326, 1488040226, 0, 0, NULL, NULL),
(170, 168, 1488039338, 1488040238, 0, 0, NULL, NULL),
(171, 169, 1488039339, 1488040239, 0, 0, NULL, NULL),
(172, 170, 1488039347, 1488040247, 0, 0, NULL, NULL),
(173, 171, 1488039347, 1488040247, 0, 0, NULL, NULL),
(174, 172, 1488039350, 1488040250, 0, 0, NULL, NULL),
(175, 173, 1488039362, 1488040262, 0, 0, NULL, NULL),
(176, 174, 1488039366, 1488040266, 0, 0, NULL, NULL),
(177, 175, 1488039367, 1488040267, 0, 0, NULL, NULL),
(178, 176, 1488039368, 1488040268, 0, 0, NULL, NULL),
(179, 177, 1488039371, 1488040271, 0, 0, NULL, NULL),
(180, 178, 1488039371, 1488040271, 0, 0, NULL, NULL),
(181, 179, 1488039387, 1488040287, 0, 0, NULL, NULL),
(182, 180, 1488039388, 1488040288, 0, 0, NULL, NULL),
(183, 181, 1488039389, 1488040289, 0, 0, NULL, NULL),
(184, 182, 1488039392, 1488040292, 0, 0, NULL, NULL),
(185, 183, 1488039393, 1488040293, 0, 0, NULL, NULL),
(186, 184, 1488039393, 1488040293, 0, 0, NULL, NULL),
(187, 185, 1488039393, 1488040293, 0, 0, NULL, NULL),
(188, 186, 1488039394, 1488040294, 0, 0, NULL, NULL),
(189, 187, 1488039395, 1488040295, 0, 0, NULL, NULL),
(190, 188, 1488039406, 1488040306, 0, 0, NULL, NULL),
(191, 189, 1488039406, 1488040306, 0, 0, NULL, NULL),
(192, 190, 1488039412, 1488040312, 0, 0, NULL, NULL),
(193, 191, 1488039413, 1488040313, 0, 0, NULL, NULL),
(194, 192, 1488039419, 1488040319, 0, 0, NULL, NULL),
(196, 193, 1488039427, 1488040327, 0, 0, NULL, NULL),
(197, 194, 1488039430, 1488040330, 0, 0, NULL, NULL),
(198, 195, 1488039434, 1488040334, 0, 0, NULL, NULL),
(199, 196, 1488039438, 1488040338, 0, 0, NULL, NULL),
(200, 197, 1488039439, 1488040339, 0, 0, NULL, NULL),
(201, 198, 1488039440, 1488040340, 0, 0, NULL, NULL),
(202, 199, 1488039453, 1488040353, 0, 0, NULL, NULL),
(203, 200, 1488039454, 1488040354, 0, 0, NULL, NULL),
(205, 201, 1488039455, 1488040355, 0, 0, NULL, NULL),
(206, 202, 1488039459, 1488040359, 0, 0, NULL, NULL),
(207, 203, 1488039460, 1488040360, 0, 0, NULL, NULL),
(208, 204, 1488039460, 1488040360, 0, 0, NULL, NULL),
(209, 205, 1488039461, 1488040361, 0, 0, NULL, NULL),
(210, 206, 1488039461, 1488040361, 0, 0, NULL, NULL),
(211, 207, 1488039462, 1488040362, 0, 0, NULL, NULL),
(212, 208, 1488039472, 1488040372, 0, 0, NULL, NULL),
(213, 209, 1488039473, 1488040373, 0, 0, NULL, NULL),
(214, 210, 1488039477, 1488040377, 0, 0, NULL, NULL),
(215, 211, 1488039478, 1488040378, 0, 0, NULL, NULL),
(216, 212, 1488039482, 1488040382, 0, 0, NULL, NULL),
(217, 213, 1488039482, 1488040382, 0, 0, NULL, NULL),
(218, 214, 1488039483, 1488040383, 0, 0, NULL, NULL),
(219, 215, 1488039483, 1488040383, 0, 0, NULL, NULL),
(220, 216, 1488039483, 1488040383, 0, 0, NULL, NULL),
(221, 217, 1488039483, 1488040383, 0, 0, NULL, NULL),
(222, 218, 1488039483, 1488040383, 0, 0, NULL, NULL),
(224, 219, 1488039483, 1488040383, 0, 0, NULL, NULL),
(225, 220, 1488039483, 1488040383, 0, 0, NULL, NULL),
(226, 221, 1488039483, 1488040383, 0, 0, NULL, NULL),
(227, 222, 1488039483, 1488040383, 0, 0, NULL, NULL),
(228, 223, 1488039483, 1488040383, 0, 0, NULL, NULL),
(229, 224, 1488039483, 1488040383, 0, 0, NULL, NULL),
(230, 225, 1488039484, 1488040384, 0, 0, NULL, NULL),
(231, 226, 1488039484, 1488040384, 0, 0, NULL, NULL),
(232, 227, 1488039484, 1488040384, 0, 0, NULL, NULL),
(233, 228, 1488039484, 1488040384, 0, 0, NULL, NULL),
(234, 229, 1488039484, 1488040384, 0, 0, NULL, NULL),
(235, 230, 1488039484, 1488040384, 0, 0, NULL, NULL),
(236, 231, 1488039484, 1488040384, 0, 0, NULL, NULL),
(237, 232, 1488039484, 1488040384, 0, 0, NULL, NULL),
(238, 233, 1488039493, 1488040393, 0, 0, NULL, NULL),
(239, 234, 1488039495, 1488040395, 0, 0, NULL, NULL),
(240, 235, 1488039501, 1488040401, 0, 0, NULL, NULL),
(241, 236, 1488039505, 1488040405, 0, 0, NULL, NULL),
(242, 237, 1488039505, 1488040405, 0, 0, NULL, NULL),
(243, 238, 1488039506, 1488040406, 0, 0, NULL, NULL),
(244, 239, 1488039527, 1488040427, 0, 0, NULL, NULL),
(245, 240, 1488039528, 1488040428, 0, 0, NULL, NULL),
(246, 241, 1488039528, 1488040428, 0, 0, NULL, NULL),
(247, 242, 1488039529, 1488040429, 0, 0, NULL, NULL),
(248, 243, 1488039529, 1488040429, 0, 0, NULL, NULL),
(249, 244, 1488039547, 1488040447, 0, 0, NULL, NULL),
(250, 245, 1488039548, 1488040448, 0, 0, NULL, NULL),
(253, 246, 1488039549, 1488040449, 0, 0, NULL, NULL),
(254, 247, 1488039560, 1488040460, 0, 0, NULL, NULL),
(255, 248, 1488039581, 1488040481, 0, 0, NULL, NULL),
(256, 249, 1488039593, 1488040493, 0, 0, NULL, NULL),
(257, 250, 1488039593, 1488040493, 0, 0, NULL, NULL),
(258, 251, 1488039597, 1488040497, 0, 0, NULL, NULL),
(259, 252, 1488039602, 1488040502, 0, 0, NULL, NULL),
(260, 253, 1488039603, 1488040503, 0, 0, NULL, NULL),
(261, 254, 1488039605, 1488040505, 0, 0, NULL, NULL),
(262, 255, 1488039605, 1488040505, 0, 0, NULL, NULL),
(263, 256, 1488039607, 1488040507, 0, 0, NULL, NULL),
(264, 257, 1488039610, 1488040510, 0, 0, NULL, NULL),
(265, 258, 1488039610, 1488040510, 0, 0, NULL, NULL),
(266, 259, 1488039611, 1488040511, 0, 0, NULL, NULL),
(267, 260, 1488039623, 1488040523, 0, 0, NULL, NULL),
(268, 261, 1488039624, 1488040524, 0, 0, NULL, NULL),
(269, 262, 1488039625, 1488040525, 0, 0, NULL, NULL),
(270, 263, 1488039628, 1488040528, 0, 0, NULL, NULL),
(271, 264, 1488039634, 1488040534, 0, 0, NULL, NULL),
(272, 265, 1488039635, 1488040535, 0, 0, NULL, NULL),
(273, 266, 1488039636, 1488040536, 0, 0, NULL, NULL),
(274, 267, 1488039642, 1488040542, 0, 0, NULL, NULL),
(275, 268, 1488039649, 1488040549, 0, 0, NULL, NULL),
(276, 269, 1488039659, 1488040559, 0, 0, NULL, NULL),
(277, 270, 1488039660, 1488040560, 0, 0, NULL, NULL),
(278, 271, 1488039671, 1488040571, 0, 0, NULL, NULL),
(279, 272, 1488039677, 1488040577, 0, 0, NULL, NULL),
(280, 273, 1488039678, 1488040578, 0, 0, NULL, NULL),
(281, 274, 1488039688, 1488040588, 0, 0, NULL, NULL),
(282, 275, 1488039691, 1488040591, 0, 0, NULL, NULL),
(283, 276, 1488039694, 1488040594, 0, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bid_requesters`
--

CREATE TABLE `bid_requesters` (
  `REQUESTER_ID` int(11) NOT NULL,
  `REQUESTED_ID` int(11) NOT NULL COMMENT 'Request ID',
  `REQUESTING_USER_ID` int(11) NOT NULL COMMENT 'Requested By',
  `CUSTOMER_NOTES` text COMMENT 'Comments',
  `CUSTOMER_NOTIFIED` tinyint(1) DEFAULT '0' COMMENT 'Notified',
  `REQUEST_ACCEPTED` tinyint(1) DEFAULT '0' COMMENT 'Request Accepted',
  `CREATED` datetime DEFAULT NULL COMMENT 'Date Created',
  `UPDATED` datetime DEFAULT NULL COMMENT 'Date Updated'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bid_requesters`
--

INSERT INTO `bid_requesters` (`REQUESTER_ID`, `REQUESTED_ID`, `REQUESTING_USER_ID`, `CUSTOMER_NOTES`, `CUSTOMER_NOTIFIED`, `REQUEST_ACCEPTED`, `CREATED`, `UPDATED`) VALUES
(1, 1, 8, 'Requesting item for bid', 0, 0, '2017-02-26 23:58:32', '2017-02-26 23:58:32'),
(2, 2, 8, 'Requesting item for bid', 0, 0, '2017-02-26 23:58:43', '2017-02-26 23:58:43'),
(3, 2, 5, 'Requesting item for bid', 0, 0, '2017-02-27 07:50:08', '2017-02-27 07:50:08');

-- --------------------------------------------------------

--
-- Table structure for table `bid_requests`
--

CREATE TABLE `bid_requests` (
  `REQUESTED_PRODUCT_ID` int(11) NOT NULL COMMENT 'Request Product ID',
  `CREATED` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date Created',
  `UPDATED` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP COMMENT 'Date Updated'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bid_requests`
--

INSERT INTO `bid_requests` (`REQUESTED_PRODUCT_ID`, `CREATED`, `UPDATED`) VALUES
(1, '2017-02-27 07:58:32', '2017-02-27 07:58:32'),
(2, '2017-02-27 07:58:43', '2017-02-27 07:58:43');

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
-- Table structure for table `cron_job`
--

CREATE TABLE `cron_job` (
  `id_cron_job` int(11) NOT NULL,
  `controller` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  `limit` int(11) DEFAULT NULL,
  `offset` int(11) DEFAULT NULL,
  `running` smallint(6) UNSIGNED NOT NULL,
  `success` smallint(6) UNSIGNED NOT NULL,
  `started_at` int(11) UNSIGNED DEFAULT NULL,
  `ended_at` int(11) UNSIGNED DEFAULT NULL,
  `last_execution_time` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

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
(275, 'QVC Steel By Design Stainless Steel Flower Pendant With 18" Fine Chain', 'Top Selling/Jewelry/Necklace', '', '22016-J148930-S', '<p> 	Steel by Design Stainless steel Flower Pendant 18&quot; Necklace<br /> 	&nbsp;</p> <ul> 	<li> 		Stainless steel</li> 	<li> 		Flower pendant: measures approximately 1-1/2&quot;L including bail x 1&quot;W; includes approximately 18&quot;L fine chain wi', '1', '40', '', '', '120', 1, 1, 1, 1, 10, '1', '', '', 'Wedding, Party , Gift', '', '', 'New', '1', 'Does not apply', 'Steel by Design', 'Necklace', 'Flower Pendant', 'Stainless Steel', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'White', '', '', '', 'China', '', '', '', '18', '', '', '', '', 'Engagement/Wedding/Anniversary/Promise/Christmas', '155101', '', '', '1', 'India', 'https://d1q7ayeivr6k6d.cloudfront.net/ximgs/au-qh-j148930-flower-ss-1.jpg', '', '', ''),
(276, 'Disney\'s Frozen "Let It Go" musical Elsa and Anna Watch', 'Jewellery', 'Disney\'s Frozen "Let It Go" musical Elsa and Anna Watch QVC J317380', 'QVC-J317380', ' ', '1', '999', NULL, NULL, '999', 1, 1, 1, 1, 10, '1', NULL, NULL, 'musical,elsa,disney', NULL, NULL, 'New', '1', NULL, 'other', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'https://d38eepresuu519.cloudfront.net/5daadeda0d03e497ab00eef5e91df8a1/large.jpg', 'https://d38eepresuu519.cloudfront.net/c4912de92a2f56185d587bc43e724400/large.jpg', 'https://d38eepresuu519.cloudfront.net/12784770f16ac8f104c511179b9286e0/large.jpg', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `MESSAGE_ID` int(11) NOT NULL,
  `RECIPIENT` varchar(40) NOT NULL COMMENT 'Recipient could be phone or email',
  `MESSAGE` text COMMENT 'Message body',
  `CHANNEL` varchar(5) DEFAULT '0' COMMENT 'Could be SMS, EMAIL or PUSH',
  `MESSAGE_SENT` tinyint(1) DEFAULT '0' COMMENT 'Request Accepted',
  `CREATED` datetime DEFAULT NULL COMMENT 'Date Added',
  `UPDATED` datetime DEFAULT NULL COMMENT 'Date Sent'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
('m150927_060316_cronjob_init', 1488181390),
('m161128_141131_create_transaction_paypal', 1487233614),
('m161207_115906_create_tb_orders_table', 1487233622),
('m161207_125747_create_tb_user_address_table', 1487233626),
('m161208_173038_create_shipping_service_table', 1487233629),
('m170202_082711_create_messages_table', 1487332592),
('m170207_080724_create_tb_active_bids_table', 1487332593),
('m170207_093804_create_bid_exclusion_table', 1487332595),
('m170216_082404_created_bid_requests_table', 1487332596),
('m170216_082913_bid_requesters', 1487332599),
('m170216_121025_messages_init', 1487332619);

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
  `shipByDate` timestamp NULL DEFAULT '0000-00-00 00:00:00',
  `orderStatus` varchar(20) NOT NULL,
  `customerId` int(11) DEFAULT NULL,
  `customerUsername` varchar(100) NOT NULL,
  `customerEmail` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`orderId`, `orderNumber`, `orderKey`, `orderDate`, `createDate`, `modifyDate`, `paymentDate`, `shipByDate`, `orderStatus`, `customerId`, `customerUsername`, `customerEmail`) VALUES
(16796017, 'EOCT-2-5851171829ECA', '45f26f672e9a71c58011f7c75b85226f', '2016-12-14 12:31:42', '2016-12-14 20:51:09', '2016-12-14 20:55:35', '2016-12-14 12:55:35', NULL, 'awaiting_shipment', 10229463, 'Sammy Barasa', 'barsamms@gmail.com'),
(17050228, 'EOCT-4-58526C4895B14', '2856fad711b0141b12e88fd7d4e8a9c7', '2016-12-15 13:05:49', '2016-12-15 21:11:16', '2016-12-15 21:11:16', '2016-12-15 13:11:19', NULL, 'awaiting_shipment', NULL, 'Sammy Barasa', 'barsamms@gmail.com'),
(18317948, 'EOCT-10-585A7B3DC8FC6', 'ecb604112862d146a37b3881aa5ad013', '2016-12-21 15:51:44', '2016-12-21 23:53:18', '2016-12-21 23:53:18', '2016-12-21 15:53:17', NULL, 'awaiting_shipment', NULL, 'Lody Tacastacas', 'lody.tacastacas@pristone.net'),
(235554036, 'EOCT-20-587C8A2620347', '9d7bfec24ad1ad94fd503a55e4b282ce', '2017-01-16 11:52:48', '2017-01-16 19:53:57', '2017-01-16 19:53:57', '2017-01-16 11:53:56', NULL, 'awaiting_shipment', NULL, 'Lody Tacastacas', 'lody.tacastacas@pristone.net'),
(235853383, 'EOCT-21-587E18F822272', '1348a617c6abce3bf4af8f17bcb002f8', '2017-01-17 16:13:23', '2017-01-18 00:15:36', '2017-01-18 00:15:36', '2017-01-17 16:15:35', NULL, 'awaiting_shipment', NULL, 'Lody Tacastacas', 'lody.tacastacas@pristone.net');

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
(1, 5, 'PAY-40G10299Y4656272VLBIP5CY', '693c4ef7199d27b0f335a300167b992a', 1, 0, '2016-12-14 00:10:59', '2016-12-14 01:21:38'),
(2, 5, 'PAY-7WX477232A248810BLBIRC5I', '45f26f672e9a71c58011f7c75b85226f', 1, 0, '2016-12-14 01:31:42', '2016-12-14 01:55:35'),
(3, 8, 'PAY-8KH5106233519150NLBJGKSI', 'beb2afbf409a0c5fd4333c9876fc0a1d', 0, 0, '2016-12-15 01:41:29', '2016-12-15 01:41:29'),
(4, 5, 'PAY-73N99703HD1577240LBJGV6Q', '2856fad711b0141b12e88fd7d4e8a9c7', 1, 0, '2016-12-15 02:05:49', '2016-12-15 02:11:19'),
(5, 8, 'PAY-46W51903BB451170NLBKAISY', '2466d48967ac221b286c2eb8052a2c0a', 1, 0, '2016-12-16 07:12:11', '2016-12-16 07:13:53'),
(6, 5, 'PAY-339819648L903613ALBNHBGI', '8544f3b7e459dbcfe06c43c097fa2ec2', 0, 0, '2016-12-21 04:07:53', '2016-12-21 04:07:53'),
(7, 8, 'PAY-7V253060C1220810KLBNHBXY', 'b7a2bf926376b567e953a730b6d3c0f9', 1, 0, '2016-12-21 04:09:03', '2016-12-21 04:10:23'),
(8, 8, 'PAY-2FL45595CY847213SLBNHFEI', '133aca272d18450cf0cf78b0ef7c559e', 1, 0, '2016-12-21 04:16:17', '2016-12-21 04:16:48'),
(9, 8, 'PAY-9ST88519KV725511MLBNHHLQ', '2149e937e7878ad93c18c77612b20dbc', 1, 0, '2016-12-21 04:21:02', '2016-12-21 04:22:50'),
(10, 8, 'PAY-3V131556JG3569723LBNHVYA', 'ecb604112862d146a37b3881aa5ad013', 1, 0, '2016-12-21 04:51:44', '2016-12-21 04:53:17'),
(11, 10, 'PAY-64857417WJ439441DLBNJZ4Q', '13fca5c2baf4baabef56a1c3b92eec9a', 0, 0, '2016-12-21 07:17:06', '2016-12-21 07:17:06'),
(12, 12, 'PAY-4YB94234HP194712DLBPBIEQ', '35d97a38b18dda967063e34d4ee83677', 0, 0, '2016-12-23 22:22:10', '2016-12-23 22:22:10'),
(13, 13, 'PAY-6WN437187M140425KLB2OHYI', '56c563649a3d88a0448553480fb0ba83', 0, 0, '2017-01-10 05:38:41', '2017-01-10 05:38:41'),
(14, 10, 'PAY-7HN27067RU077723JLB3NP5A', '42f97eda4741437191c6b8bdaefa12ef', 1, 0, '2017-01-11 17:12:20', '2017-01-11 17:23:14'),
(15, 10, 'PAY-2TJ32600L78763213LB3NWAI', '1db187140ab48d194e2bd6b9b8ff0b97', 1, 0, '2017-01-11 17:25:21', '2017-01-11 17:25:58'),
(16, 8, 'PAY-4MV92142TN3302732LB3UK2I', '63ad97c03cb985c09d9323b327448e1b', 0, 0, '2017-01-12 00:59:21', '2017-01-12 00:59:21'),
(17, 5, 'PAY-8L120458HY085352ALB3WRQA', 'f785c322f743a5b821a318664c3fa8ed', 0, 0, '2017-01-12 03:30:08', '2017-01-12 03:30:08'),
(18, 5, 'PAY-5E2410551H8032900LB3WSCQ', 'f1eaccf831738e5626eea705f6102c05', 0, 0, '2017-01-12 03:31:22', '2017-01-12 03:31:22'),
(19, 8, 'PAY-86T15512PY2320602LB32TAA', 'ca5b5206963d4430422871fe1253a276', 1, 0, '2017-01-12 08:06:30', '2017-01-12 08:08:19'),
(20, 8, 'PAY-19486478480736634LB6ITYA', '9d7bfec24ad1ad94fd503a55e4b282ce', 1, 0, '2017-01-16 00:52:48', '2017-01-16 00:53:56'),
(21, 8, 'PAY-5UM94217TJ268700RLB7BQ4Y', '1348a617c6abce3bf4af8f17bcb002f8', 1, 0, '2017-01-17 05:13:23', '2017-01-17 05:15:35'),
(22, 5, 'PAY-21L833297W2069335LCAN7LA', 'cc5b7c94f6c6e63e5fdc0017bc25bf94', 0, 0, '2017-01-19 07:47:56', '2017-01-19 07:47:56'),
(23, 19, 'PAY-39A89695GK8841237LCHH2IA', '105885967c5ef9719f3a8ad825517442', 0, 0, '2017-01-29 15:39:12', '2017-01-29 15:39:12'),
(24, 20, 'PAY-2YB54558MW7023917LCLPLHI', '97d431637d4bf4cc5b4876b8ce6a08da', 0, 0, '2017-02-05 01:51:25', '2017-02-05 01:51:25'),
(25, 20, 'PAY-4B856205GX835994WLCLPODI', '79fa5261c48dc3082aa74036e5a5d3a1', 0, 0, '2017-02-05 01:57:33', '2017-02-05 01:57:33');

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
(1, 1, 'USPS Priority Mail Express Intl', 'usps_priority_mail_express_international|stamps_com||INTERNATIONAL~USPS Priority Mail Express Intl', 'stamps_com', 'usps_priority_mail_express_international', 'flat_rate_envelope', 1, '', '2016-12-14 19:13:01', '2016-12-14 19:13:01'),
(2, 2, 'USPS First Class Mail', 'usps_first_class_mail|stamps_com|DOMESTIC|~USPS First Class Mail', 'stamps_com', 'usps_first_class_mail', 'regional_rate_box_b', 1, 'test shipping station', '2016-12-14 20:38:20', '2016-12-14 20:38:20'),
(3, 4, 'USPS First Class Mail Intl', 'usps_first_class_mail_international|stamps_com||INTERNATIONAL~USPS First Class Mail Intl', 'stamps_com', 'usps_first_class_mail_international', 'flat_rate_legal_envelope', 1, 'test for order creation', '2016-12-15 21:11:19', '2016-12-15 21:11:19'),
(4, 5, 'USPS First Class Mail Intl', 'usps_first_class_mail_international|stamps_com||INTERNATIONAL~USPS First Class Mail Intl', 'stamps_com', 'usps_first_class_mail_international', 'package', 1, '', '2016-12-17 02:13:53', '2016-12-17 02:13:53'),
(5, 7, 'USPS First Class Mail', 'usps_first_class_mail|stamps_com|DOMESTIC|~USPS First Class Mail', 'stamps_com', 'usps_first_class_mail', 'regional_rate_box_a', 1, '', '2016-12-21 23:10:23', '2016-12-21 23:10:23'),
(6, 8, 'USPS First Class Mail', 'usps_first_class_mail|stamps_com|DOMESTIC|~USPS First Class Mail', 'stamps_com', 'usps_first_class_mail', 'regional_rate_box_a', 1, '', '2016-12-21 23:16:48', '2016-12-21 23:16:48'),
(7, 9, 'USPS First Class Mail Intl', 'usps_first_class_mail_international|stamps_com||INTERNATIONAL~USPS First Class Mail Intl', 'stamps_com', 'usps_first_class_mail_international', 'flat_rate_padded_envelope', 1, '', '2016-12-21 23:22:49', '2016-12-21 23:22:49'),
(8, 10, 'USPS First Class Mail', 'usps_first_class_mail|stamps_com|DOMESTIC|~USPS First Class Mail', 'stamps_com', 'usps_first_class_mail', 'regional_rate_box_b', 1, '', '2016-12-21 23:53:17', '2016-12-21 23:53:17'),
(9, 14, 'USPS Parcel Select Ground', 'usps_parcel_select|stamps_com|DOMESTIC|~USPS Parcel Select Ground', 'stamps_com', 'usps_parcel_select', 'regional_rate_box_a', 1, '', '2017-01-12 12:23:14', '2017-01-12 12:23:14'),
(10, 15, 'USPS Parcel Select Ground', 'usps_parcel_select|stamps_com|DOMESTIC|~USPS Parcel Select Ground', 'stamps_com', 'usps_parcel_select', 'regional_rate_box_a', 1, '', '2017-01-12 12:25:58', '2017-01-12 12:25:58'),
(11, 19, 'USPS First Class Mail', 'usps_first_class_mail|stamps_com|DOMESTIC|~USPS First Class Mail', 'stamps_com', 'usps_first_class_mail', 'regional_rate_box_a', 1, '', '2017-01-13 03:08:19', '2017-01-13 03:08:19'),
(12, 20, 'USPS First Class Mail', 'usps_first_class_mail|stamps_com|DOMESTIC|~USPS First Class Mail', 'stamps_com', 'usps_first_class_mail', 'regional_rate_box_a', 1, '', '2017-01-16 19:53:56', '2017-01-16 19:53:56'),
(13, 21, 'USPS First Class Mail', 'usps_first_class_mail|stamps_com|DOMESTIC|~USPS First Class Mail', 'stamps_com', 'usps_first_class_mail', 'regional_rate_box_a', 1, '', '2017-01-18 00:15:34', '2017-01-18 00:15:34');

-- --------------------------------------------------------

--
-- Table structure for table `tb_active_bids`
--

CREATE TABLE `tb_active_bids` (
  `ACTIVE_ID` int(11) NOT NULL,
  `PRODUCT_ID` int(11) NOT NULL,
  `BIDDING_DURATION` int(11) NOT NULL COMMENT 'How long the item will be on bid if is not won',
  `ITEM_WON` int(11) NOT NULL DEFAULT '0' COMMENT 'Indicate if item is won or not',
  `DATE_UPDATED` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_active_bids`
--

INSERT INTO `tb_active_bids` (`ACTIVE_ID`, `PRODUCT_ID`, `BIDDING_DURATION`, `ITEM_WON`, `DATE_UPDATED`) VALUES
(21, 21, 1488181718, 0, '2017-02-27 10:47:39'),
(22, 22, 1488181718, 0, '2017-02-27 10:47:39'),
(23, 23, 1488181718, 0, '2017-02-27 10:47:39'),
(24, 24, 1488181718, 0, '2017-02-27 10:47:39'),
(25, 6, 1488196740, 0, '2017-02-27 11:54:00'),
(26, 10, 1488196740, 0, '2017-02-27 11:54:00'),
(27, 9, 1488196741, 0, '2017-02-27 11:54:01'),
(28, 3, 1488196742, 0, '2017-02-27 11:54:02'),
(29, 14, 1488196742, 0, '2017-02-27 11:54:02'),
(30, 18, 1488196742, 0, '2017-02-27 11:54:02'),
(31, 17, 1488196742, 0, '2017-02-27 11:54:02'),
(32, 20, 1488196742, 0, '2017-02-27 11:54:02'),
(33, 5, 1488196742, 0, '2017-02-27 11:54:02'),
(34, 2, 1488196743, 0, '2017-02-27 11:54:03'),
(35, 19, 1488196743, 0, '2017-02-27 11:54:03'),
(36, 13, 1488196743, 0, '2017-02-27 11:54:03'),
(37, 12, 1488196745, 0, '2017-02-27 11:54:05'),
(38, 7, 1488196745, 0, '2017-02-27 11:54:05'),
(40, 1, 1488196747, 0, '2017-02-27 11:54:07'),
(42, 4, 1488196747, 0, '2017-02-27 11:54:08'),
(43, 8, 1488196751, 0, '2017-02-27 11:54:11'),
(44, 16, 1488196751, 0, '2017-02-27 11:54:11'),
(45, 15, 1488224529, 0, '2017-02-27 19:37:09'),
(46, 11, 1488224531, 0, '2017-02-27 19:37:11');

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

--
-- Dumping data for table `tb_bid_activity`
--

INSERT INTO `tb_bid_activity` (`ACTIVITY_ID`, `PRODUCT_ID`, `LAST_BIDDING_USER_ID`, `PRODUCT_SKU`, `ACTIVITY_COUNT`, `BID_DATE`) VALUES
(1, 208791, 5, '22016-600-Loose Gems', 5, '2016-12-14 01:06:27'),
(2, 93143, 5, 'UK-M-221601497605-YG14K', 4, '2016-12-14 01:06:48'),
(3, 67454, 5, 'M-ST891-RG10K-I1-2ct-H-I', 6, '2016-12-14 02:41:09'),
(83, 165, 8, 'I-CNC-STUD-925-6MM-YELLOW-OCT', 4, '2017-01-18 04:20:45');

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
  `TOTAL_PRICE` decimal(10,2) DEFAULT NULL,
  `BIDDED_ITEM` int(1) DEFAULT '0',
  `QUANTITY` int(3) DEFAULT '1',
  `IS_SOLD` int(1) NOT NULL DEFAULT '0',
  `PAYPAL_HASH` varchar(100) DEFAULT NULL COMMENT 'Use to track which items were paid for',
  `DATE_ADDED` datetime NOT NULL,
  `EXPIRY_DATE` datetime NOT NULL,
  `DATE_BOUGHT` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
(1, 208791, 5, '34.00', '2016-12-14 01:06:27', 0),
(2, 93143, 5, '118.00', '2016-12-14 01:06:48', 0),
(3, 67454, 5, '1769.00', '2016-12-14 02:41:09', 0),
(4, 112, 5, '64.00', '2017-01-17 05:56:40', 1),
(5, 2, 8, '1.00', '2017-01-17 00:06:00', 1),
(6, 1, 8, '6.00', '2016-12-21 09:53:48', 1),
(7, 1, 9, '6.00', '2016-12-20 09:26:23', 1),
(8, 2, 9, '6.00', '2016-12-20 09:27:01', 1),
(9, 106, 9, '6.00', '2016-12-20 09:28:39', 1),
(10, 96, 9, '6.00', '2016-12-20 09:35:24', 1),
(11, 113, 8, '6.00', '2016-12-21 00:08:38', 1),
(12, 17, 8, '6.00', '2016-12-21 04:11:08', 1),
(13, 1, 5, '1.00', '2017-01-19 10:01:55', 1),
(14, 215, 8, '6.00', '2016-12-21 05:54:12', 1),
(15, 49, 8, '6.00', '2016-12-21 05:54:10', 1),
(16, 180, 8, '6.00', '2016-12-21 09:45:06', 1),
(17, 265, 8, '6.00', '2016-12-21 06:07:47', 1),
(18, 83, 8, '6.00', '2016-12-21 06:17:02', 1),
(19, 21, 8, '6.00', '2016-12-21 06:49:07', 1),
(20, 1, 10, '2.00', '2017-01-22 11:25:28', 1),
(21, 3, 8, '1.00', '2017-01-25 08:23:10', 1),
(22, 219, 8, '1.00', '2017-01-12 08:12:29', 1),
(23, 10, 8, '1.00', '2016-12-21 10:11:44', 1),
(24, 3, 5, '16.00', '2016-12-21 11:01:34', 1),
(25, 3, 12, '11.00', '2016-12-23 22:21:02', 1),
(27, 1, 13, '1.00', '2017-01-10 07:15:23', 1),
(28, 3, 13, '1.00', '2017-01-10 07:13:49', 1),
(29, 254, 13, '1.00', '2017-01-10 07:18:56', 1),
(30, 14, 8, '1.00', '2017-01-12 08:10:21', 1),
(31, 247, 8, '1.00', '2017-01-12 08:46:42', 1),
(32, 164, 5, '1.00', '2017-01-14 14:35:40', 1),
(33, 196, 5, '1.00', '2017-01-14 14:15:22', 1),
(34, 131, 5, '1.00', '2017-01-14 15:57:06', 1),
(35, 181, 5, '1.00', '2017-01-14 14:20:02', 1),
(36, 263, 5, '1.00', '2017-01-14 14:20:07', 1),
(37, 79, 5, '1.00', '2017-01-14 15:41:04', 1),
(38, 231, 5, '1.00', '2017-01-14 15:45:31', 1),
(39, 166, 8, '1.00', '2017-01-16 00:57:45', 1),
(40, 188, 8, '1.00', '2017-01-16 06:24:47', 1),
(41, 190, 8, '1.00', '2017-01-16 06:48:12', 1),
(42, 116, 5, '2.00', '2017-01-16 09:13:57', 1),
(43, 138, 5, '1.00', '2017-01-16 10:39:01', 1),
(44, 273, 8, '1.00', '2017-01-16 08:21:54', 1),
(45, 45, 8, '1.00', '2017-01-16 23:52:48', 1),
(46, 47, 8, '1.00', '2017-01-16 23:54:56', 1),
(47, 177, 8, '1.00', '2017-01-16 23:58:05', 1),
(48, 77, 5, '7.00', '2017-01-16 10:21:55', 1),
(49, 6, 5, '1.00', '2017-01-16 10:30:36', 1),
(50, 274, 5, '1.00', '2017-01-16 10:54:01', 1),
(51, 236, 5, '1.00', '2017-01-16 23:52:50', 1),
(52, 269, 8, '1.00', '2017-01-16 23:52:37', 1),
(53, 59, 8, '1.00', '2017-01-17 00:00:42', 1),
(54, 158, 8, '1.00', '2017-01-17 00:01:12', 1),
(55, 254, 5, '1.00', '2017-01-17 02:51:04', 1),
(56, 76, 5, '1.00', '2017-01-17 03:34:09', 1),
(57, 52, 5, '1.00', '2017-01-17 02:59:21', 1),
(58, 111, 5, '1.00', '2017-01-17 04:17:02', 1),
(59, 89, 8, '1.00', '2017-01-17 04:47:20', 1),
(60, 202, 8, '1.00', '2017-01-17 04:48:32', 1),
(61, 263, 8, '1.00', '2017-01-17 04:50:40', 1),
(62, 83, 5, '2.00', '2017-01-17 05:53:29', 1),
(63, 8, 5, '1.00', '2017-01-17 05:57:18', 1),
(64, 114, 5, '1.00', '2017-01-17 07:27:37', 1),
(65, 222, 5, '1.00', '2017-01-17 07:28:43', 1),
(66, 101, 8, '1.00', '2017-01-25 08:27:30', 1),
(67, 12, 15, '91.00', '2017-01-17 12:56:55', 1),
(68, 157, 15, '19.00', '2017-01-17 13:12:53', 1),
(69, 206, 15, '1.00', '2017-01-17 13:26:42', 1),
(70, 74, 15, '5.00', '2017-01-17 13:18:30', 1),
(71, 217, 15, '23.00', '2017-01-17 13:19:42', 1),
(72, 229, 8, '1.00', '2017-01-18 03:24:21', 1),
(73, 165, 16, '3.00', '2017-01-18 04:21:22', 1),
(75, 189, 10, '6.00', '2017-01-18 15:52:29', 1),
(76, 164, 10, '3.00', '2017-01-18 15:52:54', 1),
(77, 260, 10, '2.00', '2017-01-18 15:52:58', 1),
(78, 151, 5, '1.00', '2017-01-19 06:47:54', 1),
(79, 4, 5, '2.00', '2017-01-19 06:23:31', 1),
(80, 72, 5, '1.00', '2017-01-19 06:25:14', 1),
(81, 32, 5, '3.00', '2017-01-19 06:24:41', 1),
(82, 5, 8, '1.00', '2017-01-19 07:20:19', 1),
(83, 7, 8, '1.00', '2017-02-02 05:36:06', 1),
(84, 250, 8, '1.00', '2017-01-25 08:22:09', 1),
(85, 254, 8, '1.00', '2017-01-25 08:26:02', 1),
(86, 103, 5, '17.00', '2017-01-25 08:28:19', 1),
(87, 107, 5, '1.00', '2017-01-25 08:28:24', 1),
(88, 248, 5, '3.00', '2017-01-25 08:30:20', 1),
(89, 193, 5, '1.00', '2017-01-25 08:30:25', 1),
(90, 75, 5, '1.00', '2017-01-25 08:30:29', 1),
(91, 100, 20, '4.00', '2017-02-03 06:42:34', 1),
(92, 141, 20, '2.00', '2017-02-04 20:14:51', 1),
(93, 1, 20, '6.00', '2017-02-04 23:20:48', 1),
(94, 2, 20, '1.00', '2017-02-04 23:19:59', 1),
(95, 56, 20, '3.00', '2017-02-05 01:26:38', 1),
(96, 49, 20, '3.00', '2017-02-05 04:06:48', 1);

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
  `RECEIVE_SMS` int(1) DEFAULT '1',
  `RECIEVE_EMAIL` int(1) DEFAULT '1',
  `RECIEVE_PUSH` int(1) DEFAULT NULL,
  `STATUS` int(1) DEFAULT '1' COMMENT 'Active or inactive',
  `DATE_CREATED` datetime DEFAULT NULL,
  `DATE_UPDATED` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ROW_FORMAT=DYNAMIC;

--
-- Dumping data for table `tb_users`
--

INSERT INTO `tb_users` (`USER_ID`, `FULL_NAMES`, `EMAIL_ADDRESS`, `ACCOUNT_TYPE`, `PASSWORD_HASH`, `ACCOUNT_ACCESS_TOKEN`, `ACCOUNT_AUTH_KEY`, `PHONE_NO`, `TIMEZONE`, `COUNTRY`, `SOCIAL_ID`, `RECEIVE_SMS`, `RECIEVE_EMAIL`, `RECIEVE_PUSH`, `STATUS`, `DATE_CREATED`, `DATE_UPDATED`) VALUES
(5, 'Sammy Barasa', 'barsamms@gmail.com', 'A', '63aaa47cb0b76f0b157c40cdba9bf78653a7af37', NULL, 'g5BcDmUAkeXf0uQd31E8lHD0SXtZGScK', '254713196504', '43', 'KE', NULL, 1, 1, NULL, 1, '2016-11-22 14:29:53', '2017-02-17 03:50:17'),
(7, 'Norven', 'me.norvenjohnpaul@gmail.com', 'A', '7288edd0fc3ffcbe93a0cf06e3568e28521687bc', NULL, 'ECTkS1Q-xH_m3-T4xOcrSexF8DodwxjI', NULL, 'GMT +3', NULL, NULL, 1, 1, NULL, 1, '2016-11-26 05:51:48', '2017-02-17 03:50:17'),
(8, 'Lody Tacastacas', 'lody.tacastacas@pristone.net', 'N', 'aaab8a1f22229bf2bf267b1ea358ee51a3655f36', NULL, 't47XSGdxLId6kFdFH07JZy6PruSFkgdY', NULL, 'GMT +3', NULL, NULL, 1, 1, NULL, 1, '2016-11-28 08:09:14', '2017-02-17 03:50:17'),
(9, 'Lody Tacastacas', 'lodyjoy@yahoo.com', 'N', 'aaab8a1f22229bf2bf267b1ea358ee51a3655f36', NULL, 'p7aPDoF9zBRnuhnhIX6hk9ZL4zaoB19j', '639192855619', '237', 'PH', NULL, 1, 1, NULL, 1, '2016-12-20 09:20:57', '2017-02-17 03:50:17'),
(10, 'Edward', 'mabonga@pristone.net', 'N', '3236ea58549a30b37fed881208c8f770d0532586', NULL, '_MQYskz-_lZUuyd4GUBSypWmjn3l9Xun', NULL, 'GMT +3', NULL, NULL, 1, 1, NULL, 1, '2016-12-21 07:08:42', '2017-02-17 03:50:17'),
(12, 'dfsdfsdfsfd', '123123123@123.com', 'N', '7288edd0fc3ffcbe93a0cf06e3568e28521687bc', NULL, 'yGF40Yda1QLluQsRQgHtLshEjkzM3he2', NULL, 'GMT +3', NULL, NULL, 1, 1, NULL, 1, '2016-12-23 22:19:59', '2017-02-17 03:50:17'),
(13, 'App Tech', 'apptechrecruitment@gmail.com', 'N', 'c442ed9a4ea6bccef4e217edede11413e3aa20c3', NULL, 'jIzbu9YvJOFlgJ1yLtuouVw-ouMLDNHT', NULL, 'GMT +3', NULL, NULL, 1, 1, NULL, 1, '2017-01-10 05:16:23', '2017-02-17 03:50:17'),
(14, 'Marco Barfield', 'marcobarfield@earthlink.net', 'N', 'b105490758ca396a99d0d6908d517efe3e02126d', NULL, 'l0qUnDaGFeVqsmBsSD-eBdJ-04HIf9M-', NULL, 'GMT +3', NULL, NULL, 1, 1, NULL, 1, '2017-01-11 16:59:36', '2017-02-17 03:50:17'),
(15, 'shrikant parikh', 'cmjewelshouston@aol.com', 'N', '02334b3a008b92d6d04fa2f799423e7132bb234d', NULL, 'v8Y4M-GqBBOQEFdCm49NwTUIOniV1PIT', NULL, 'GMT +3', NULL, NULL, 1, 1, NULL, 1, '2017-01-17 12:55:22', '2017-02-17 03:50:17'),
(16, 'Lodyjoy', 'lodyjoy@hotmail.com', 'N', 'aaab8a1f22229bf2bf267b1ea358ee51a3655f36', NULL, '57dVcEZ0XekWeCrtysayE-z7OsC2iFxZ', NULL, 'GMT +3', NULL, NULL, 1, 1, NULL, 1, '2017-01-18 04:19:24', '2017-02-17 03:50:17'),
(17, 'Vannarin', 'Khimbros764@yahoo.com', 'N', 'f7c3bc1d808e04732adf679965ccc34ca7ae3441', NULL, 'Uc5vQwPrURH2M1OObCsWWPlJRZXMZ695', NULL, 'GMT +3', NULL, NULL, 1, 1, NULL, 1, '2017-01-26 15:58:37', '2017-02-17 03:50:17'),
(18, 'Jean-Luc Dalmas', 'jeeanlucdalmas@protonmail.com', 'N', 'bf1f66ea152e2ec27d2133445f92335370ce376a', NULL, 'TlgjvVWhh7a6JB5L7XxyaHcuYN_QFa5U', NULL, 'GMT +3', NULL, NULL, 1, 1, NULL, 1, '2017-01-29 15:32:19', '2017-02-17 03:50:17'),
(19, 'Jean-Luc Dalmas', 'jeanlucdalmas@protonmail.com', 'N', 'bf1f66ea152e2ec27d2133445f92335370ce376a', NULL, 'Z6Z8x2rgdAvDHq_LyvJDi5GYunDCo3dP', NULL, 'GMT +3', NULL, NULL, 1, 1, NULL, 1, '2017-01-29 15:36:44', '2017-02-17 03:50:17'),
(20, 'olivier linossier', 'olivier@olicorp.ch', 'N', 'e1a815f36ea62f2572a8c5c468e3f880f682df94', NULL, 'wVF8hXloXHQmyvfFjo69SxwTXiKOIy0f', NULL, 'GMT +3', NULL, NULL, 1, 1, NULL, 1, '2017-02-03 06:41:28', '2017-02-17 03:50:17'),
(21, 'Edward Mabonga', 'mabonga@gmail.com', 'N', '2843f4cec51c3232ebaeddc94f825db9005cb8f9', NULL, '3dxSN475dqzaXJp7YMcjUl6OSHYQ5E9D', NULL, 'GMT +3', NULL, NULL, 1, 1, NULL, 1, '2017-02-08 15:39:54', '2017-02-17 03:50:17');

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
(1, 8, 'Lody Tacastacas', '', 'Testing Address', '', NULL, 'Davao City', '', '8000', 'PH', '639192855619', 1, 'SHIPPING ADDRESS', 1, '2016-12-17 02:11:56', '0000-00-00 00:00:00'),
(2, 5, 'Sammy Barasa', 'Tsobu Enterprise', 'PO Box 9 Thika', '', NULL, 'Thika', 'Thika', '00100', 'KE', '254713196504', 1, 'BILLING ADDRESS', 1, '2017-01-31 23:04:13', '0000-00-00 00:00:00');

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
-- Indexes for table `bid_exclusion`
--
ALTER TABLE `bid_exclusion`
  ADD PRIMARY KEY (`EXCLUSION_ID`),
  ADD UNIQUE KEY `PRODUCT_ID` (`PRODUCT_ID`);

--
-- Indexes for table `bid_requesters`
--
ALTER TABLE `bid_requesters`
  ADD PRIMARY KEY (`REQUESTER_ID`),
  ADD KEY `idx-requester_id` (`REQUESTED_ID`),
  ADD KEY `idx-user_id` (`REQUESTING_USER_ID`);

--
-- Indexes for table `bid_requests`
--
ALTER TABLE `bid_requests`
  ADD PRIMARY KEY (`REQUESTED_PRODUCT_ID`),
  ADD KEY `IDX-PRODUCT_ID` (`REQUESTED_PRODUCT_ID`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`COUNTRY_ID`),
  ADD KEY `Code` (`COUNTRY_CODE`);

--
-- Indexes for table `cron_job`
--
ALTER TABLE `cron_job`
  ADD PRIMARY KEY (`id_cron_job`);

--
-- Indexes for table `fry_products`
--
ALTER TABLE `fry_products`
  ADD PRIMARY KEY (`productid`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`MESSAGE_ID`);

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
-- Indexes for table `tb_active_bids`
--
ALTER TABLE `tb_active_bids`
  ADD PRIMARY KEY (`ACTIVE_ID`),
  ADD UNIQUE KEY `PRODUCT_ID` (`PRODUCT_ID`);

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
-- Indexes for table `tb_product_video`
--
ALTER TABLE `tb_product_video`
  ADD PRIMARY KEY (`VIDEO_ID`),
  ADD KEY `PRODUCT_ID` (`PRODUCT_ID`);

--
-- Indexes for table `tb_users`
--
ALTER TABLE `tb_users`
  ADD PRIMARY KEY (`USER_ID`),
  ADD UNIQUE KEY `EMAIL_ADDRESS` (`EMAIL_ADDRESS`);

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
-- AUTO_INCREMENT for table `bid_exclusion`
--
ALTER TABLE `bid_exclusion`
  MODIFY `EXCLUSION_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=284;
--
-- AUTO_INCREMENT for table `bid_requesters`
--
ALTER TABLE `bid_requesters`
  MODIFY `REQUESTER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `bid_requests`
--
ALTER TABLE `bid_requests`
  MODIFY `REQUESTED_PRODUCT_ID` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Request Product ID', AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `COUNTRY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;
--
-- AUTO_INCREMENT for table `cron_job`
--
ALTER TABLE `cron_job`
  MODIFY `id_cron_job` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `fry_products`
--
ALTER TABLE `fry_products`
  MODIFY `productid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=277;
--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `MESSAGE_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `orderId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=235853384;
--
-- AUTO_INCREMENT for table `paypal_transactions`
--
ALTER TABLE `paypal_transactions`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `shipping_service`
--
ALTER TABLE `shipping_service`
  MODIFY `SERVICE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `tb_active_bids`
--
ALTER TABLE `tb_active_bids`
  MODIFY `ACTIVE_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `tb_bid_activity`
--
ALTER TABLE `tb_bid_activity`
  MODIFY `ACTIVITY_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
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
  MODIFY `CART_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tb_items_wishlist`
--
ALTER TABLE `tb_items_wishlist`
  MODIFY `WISHLIST_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_product_attributes`
--
ALTER TABLE `tb_product_attributes`
  MODIFY `ATTRIBUTE_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_product_bids`
--
ALTER TABLE `tb_product_bids`
  MODIFY `BID_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;
--
-- AUTO_INCREMENT for table `tb_product_video`
--
ALTER TABLE `tb_product_video`
  MODIFY `VIDEO_ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_users`
--
ALTER TABLE `tb_users`
  MODIFY `USER_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `tb_user_address`
--
ALTER TABLE `tb_user_address`
  MODIFY `ADDRESS_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
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
-- Constraints for table `bid_exclusion`
--
ALTER TABLE `bid_exclusion`
  ADD CONSTRAINT `FK_PRODUCT_ID_ECL` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `fry_products` (`productid`) ON UPDATE CASCADE;

--
-- Constraints for table `bid_requesters`
--
ALTER TABLE `bid_requesters`
  ADD CONSTRAINT `FK_REQUESTED_ID_REQ` FOREIGN KEY (`REQUESTED_ID`) REFERENCES `bid_requests` (`REQUESTED_PRODUCT_ID`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `FK_USER_ID_REQ` FOREIGN KEY (`REQUESTING_USER_ID`) REFERENCES `tb_users` (`USER_ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `bid_requests`
--
ALTER TABLE `bid_requests`
  ADD CONSTRAINT `FK_PRODUCT_ID` FOREIGN KEY (`REQUESTED_PRODUCT_ID`) REFERENCES `fry_products` (`productid`) ON UPDATE CASCADE;

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
-- Constraints for table `tb_active_bids`
--
ALTER TABLE `tb_active_bids`
  ADD CONSTRAINT `FK_PRODUCT_ID_ACT` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `fry_products` (`productid`) ON UPDATE CASCADE;

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
  ADD CONSTRAINT `product_info_fk` FOREIGN KEY (`PRODUCT_ID`) REFERENCES `fry_products` (`productid`) ON UPDATE CASCADE,
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
