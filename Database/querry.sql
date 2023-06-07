-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2023 at 03:56 PM
-- Server version: 8.0.33
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `account_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `pass_hash` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` varchar(10) NOT NULL,
  `admin_pass` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_pass`) VALUES
('admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `bodywork`
--

CREATE TABLE `bodywork` (
  `car_id` int DEFAULT NULL,
  `rear_track` int DEFAULT NULL,
  `width` int DEFAULT NULL,
  `curb_weight` int DEFAULT NULL,
  `length` int DEFAULT NULL,
  `nb_seats` int DEFAULT NULL,
  `max_trunk_capacity` int DEFAULT NULL,
  `body_type` varchar(25) DEFAULT NULL,
  `height` int DEFAULT NULL,
  `payload` int DEFAULT NULL,
  `front_track` int DEFAULT NULL,
  `wheelbase` int DEFAULT NULL,
  `ground_clearance` int DEFAULT NULL,
  `bodywork_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bodywork`
--

INSERT INTO `bodywork` (`car_id`, `rear_track`, `width`, `curb_weight`, `length`, `nb_seats`, `max_trunk_capacity`, `body_type`, `height`, `payload`, `front_track`, `wheelbase`, `ground_clearance`, `bodywork_id`) VALUES
(1, 1625, 1860, 1504, 4643, 5, 480, 'Sedan', 1436, 501, 1557, 2820, 0, 1),
(2, 1653, 1903, 1735, 4687, 5, 1600, 'Crossover', 1671, 0, 1613, 2818, 200, 2),
(3, 1501, 1740, 1105, 4029, 5, 335, 'Hatchback', 1433, 0, 1524, 2563, 0, 3),
(4, 1568, 1846, 1715, 4672, 4, 465, 'Coupe', 1371, 0, 1587, 2764, 0, 4),
(5, 1617, 1886, 1695, 4939, 5, 530, 'Sedan', 1457, 0, 1630, 2924, 0, 5),
(6, 1617, 1886, 1835, 4939, 5, 530, 'Sedan', 1457, 565, 1630, 2924, 0, 6),
(7, 1637, 1908, 1890, 4969, 5, 1390, 'Liftback', 1422, 580, 1651, 2926, 0, 7),
(8, 0, 1794, 1475, 4191, 5, 1050, '', 1538, 0, 0, 2601, 0, 8),
(9, 0, 1794, 1365, 4191, 5, 1050, '', 1538, 0, 0, 2601, 0, 9),
(10, 1609, 1893, 1720, 4663, 5, 1550, 'Crossover', 1659, 605, 1616, 2819, 0, 10),
(11, 1667, 1995, 2155, 4986, 5, 1755, 'Crossover', 1705, 750, 1663, 2987, 254, 11),
(12, 1569, 1765, 1305, 4329, 5, 1200, 'Hatchback', 1440, 565, 1535, 2690, 140, 12),
(13, 1565, 1799, 1290, 4319, 5, 1200, 'Hatchback', 1434, 555, 1565, 2670, 153, 13),
(14, 1556, 1774, 1420, 4432, 4, 390, 'Coupe', 1418, 510, 1521, 2690, 0, 14),
(15, 1586, 1828, 1580, 4824, 5, 1600, 'Liftback', 1508, 575, 1541, 2920, 165, 15),
(16, 1586, 1828, 1635, 4824, 5, 1600, 'Liftback', 1508, 570, 1541, 2920, 165, 16),
(17, 1586, 1828, 1660, 4824, 5, 1600, 'Liftback', 1508, 570, 1541, 2920, 165, 17),
(18, 1594, 1825, 1475, 4638, 4, 445, 'Coupe', 1377, 520, 1545, 2810, 130, 18),
(19, 1594, 1825, 1570, 4638, 4, 445, 'Coupe', 1377, 520, 1545, 2810, 130, 19),
(20, 1594, 1825, 1560, 4638, 4, 445, 'Coupe', 1377, 520, 1545, 2810, 130, 20),
(21, 1685, 2004, 0, 4922, 5, 1860, 'Crossover', 1745, 0, 1666, 2975, 214, 21),
(22, 1550, 1837, 1507, 4432, 5, 1100, 'Crossover', 1670, 0, 1550, 2650, 190, 22),
(23, 0, 1842, 1540, 4500, 5, 0, '', 1705, 0, 0, 2670, 0, 23),
(24, 1509, 1735, 0, 4039, 5, 1351, 'Hatchback', 1516, 0, 1509, 2525, 125, 24),
(25, 1486, 1733, 1012, 4347, 5, 1250, 'Sedan', 1517, 533, 1497, 2634, 155, 25),
(26, 1486, 1733, 980, 4058, 5, 1196, 'Hatchback', 1518, 535, 1497, 2589, 163, 26),
(27, 1481, 1757, 1090, 4080, 5, 1196, 'Hatchback', 1618, 480, 1490, 2589, 207, 27),
(28, 1481, 1757, 1040, 4080, 5, 1196, 'Hatchback', 1618, 510, 1490, 2589, 207, 28),
(29, 1408, 1627, 940, 3546, 4, 610, 'Hatchback', 1488, 365, 1414, 2300, 0, 29),
(30, 1496, 1715, 1300, 4158, 5, 750, 'Minivan', 1801, 0, 1496, 2565, 0, 30),
(31, 1454, 1716, 1260, 3864, 5, 2500, 'Minivan', 1721, 0, 1467, 2513, 130, 31),
(32, 0, 1792, 1290, 4368, 5, 0, '', 1495, 0, 0, 2638, 0, 32),
(33, 0, 1792, 1295, 4368, 5, 0, '', 1495, 0, 0, 2638, 0, 33),
(34, 1532, 1765, 1288, 4325, 5, 1184, 'Crossover', 1670, 487, 1529, 2519, 200, 34),
(35, 1532, 1765, 1273, 4325, 5, 1184, 'Crossover', 1670, 457, 1529, 2519, 200, 35),
(36, 1534, 1823, 1318, 4538, 5, 421, 'Sedan', 1488, 507, 1544, 2648, 160, 36),
(37, 1565, 1838, 1686, 4524, 5, 1603, 'Crossover', 1689, 0, 1563, 2690, 200, 37),
(38, 1560, 1860, 2239, 5362, 5, 0, 'Pickup', 1815, 1113, 1560, 3220, 229, 38),
(39, 1560, 1860, 2127, 5362, 5, 0, 'Pickup', 1815, 1143, 1560, 3220, 229, 39),
(40, 1560, 1860, 2256, 5362, 5, 0, 'Pickup', 1815, 1033, 1560, 3220, 229, 40),
(41, 1560, 1860, 2237, 5362, 5, 0, 'Pickup', 1815, 1033, 1560, 3220, 229, 41),
(42, 0, 1800, 0, 5060, 5, 0, '', 1730, 0, 0, 3050, 0, 42),
(43, 1565, 1852, 1541, 4649, 5, 1216, 'Crossover', 1727, 0, 1565, 2680, 180, 43),
(44, 1513, 1695, 1240, 4635, 5, 427, 'Sedan', 1420, 490, 1499, 2665, 132, 44),
(45, 1440, 1690, 1090, 4390, 5, 500, 'Sedan', 1485, 0, 1440, 2450, 150, 45),
(46, 1613, 1855, 1557, 4586, 5, 2146, 'Crossover', 1689, 0, 1598, 2660, 208, 46),
(47, 1613, 1855, 1502, 4586, 5, 2146, 'Crossover', 1679, 0, 1598, 2660, 198, 47),
(48, 1511, 1700, 1060, 4370, 5, 470, 'Sedan', 1457, 500, 1506, 2570, 150, 48),
(49, 1511, 1700, 1060, 4370, 5, 470, 'Sedan', 1457, 525, 1506, 2570, 150, 49),
(50, 1385, 1595, 910, 3585, 5, 910, 'Hatchback', 1540, 505, 1400, 2380, 149, 50),
(51, 1513, 1734, 1140, 4035, 5, 1042, 'Hatchback', 1474, 495, 1514, 2570, 170, 51),
(52, 1501, 1710, 987, 3995, 5, 1060, 'Hatchback', 1490, 528, 1503, 2525, 0, 52),
(53, 1571, 1780, 1194, 4300, 5, 378, 'Hatchback', 1470, 0, 1563, 2650, 140, 53),
(54, 1647, 1890, 1840, 4770, 5, 0, 'Crossover', 1680, 506, 1638, 2765, 0, 54),
(55, 1647, 1890, 1905, 4770, 5, 0, 'Crossover', 1680, 502, 1638, 2765, 0, 55),
(56, 1615, 1850, 1637, 4480, 5, 0, 'Crossover', 1645, 563, 1604, 2670, 0, 56),
(57, 0, 1865, 1634, 4500, 5, 1756, '', 1650, 0, 0, 2680, 0, 57),
(58, 1543, 2033, 0, 4394, 5, 1693, 'Crossover', 1647, 0, 1542, 2636, 198, 58),
(59, 0, 1667, 1470, 4236, 5, 1297, '', 1805, 0, 0, 2570, 0, 59),
(60, 1598, 1875, 1819, 4237, 4, 897, 'Crossover', 1868, 0, 1598, 2460, 246, 60),
(61, 1424, 1595, 885, 3595, 5, 605, 'Hatchback', 1480, 0, 1421, 2385, 142, 61),
(62, 1403, 1595, 885, 3595, 5, 1010, 'Hatchback', 1495, 485, 1394, 2400, 161, 62),
(63, 1403, 1595, 913, 3595, 5, 1010, 'Hatchback', 1495, 457, 1394, 2400, 161, 63),
(64, 1524, 1725, 1110, 4065, 5, 1103, 'Hatchback', 1450, 450, 1518, 2580, 0, 64),
(65, 0, 1750, 0, 4275, 5, 1075, '', 1535, 0, 0, 2600, 0, 65),
(66, 0, 1750, 0, 4275, 5, 1075, '', 1535, 0, 0, 2600, 0, 66),
(67, 1644, 1890, 1866, 4800, 5, 1732, 'Crossover', 1685, 644, 1633, 2780, 0, 67),
(68, 1636, 1855, 1562, 4485, 5, 1492, 'Crossover', 1635, 638, 1625, 2670, 172, 68),
(69, 1547, 1796, 0, 4419, 5, 370, 'Hatchback', 1440, 0, 1567, 2729, 104, 69),
(70, 1547, 1796, 1350, 4419, 5, 370, 'Hatchback', 1440, 515, 1567, 2729, 104, 70),
(71, 1588, 1810, 1425, 4686, 5, 0, 'Sedan', 1442, 0, 1588, 2840, 0, 71),
(72, 1584, 1810, 1520, 4702, 5, 0, 'Wagon', 1457, 590, 1584, 2840, 0, 72),
(73, 1584, 1810, 1615, 4702, 5, 0, 'Wagon', 1457, 590, 1584, 2840, 0, 73),
(74, 1602, 1830, 0, 4688, 5, 505, 'Wagon', 1442, 0, 1612, 2729, 0, 74),
(75, 1602, 1830, 0, 4688, 5, 505, 'Wagon', 1442, 0, 1612, 2729, 0, 75),
(76, 0, 1882, 0, 4938, 5, 521, 'Sedan', 1417, 0, 0, 2873, 0, 76),
(77, 0, 1882, 0, 4938, 5, 521, 'Sedan', 1417, 0, 0, 2873, 0, 77),
(78, 1619, 1852, 1725, 4923, 5, 540, 'Sedan', 1468, 0, 1616, 2939, 0, 78),
(79, 1619, 1852, 1925, 4923, 5, 1470, 'Sedan', 1468, 640, 1619, 2939, 0, 79),
(80, 1601, 1852, 1905, 4923, 5, 540, 'Sedan', 1468, 0, 1598, 2939, 125, 80),
(81, 1601, 1852, 1865, 4923, 5, 540, 'Sedan', 1468, 595, 1598, 2939, 125, 81),
(82, 1560, 1804, 1440, 4424, 5, 1235, 'Crossover', 1494, 530, 1569, 2699, 0, 82),
(83, 1560, 1804, 1395, 4424, 5, 1235, 'Crossover', 1494, 525, 1569, 2699, 0, 83),
(84, 0, 1890, 1825, 4731, 5, 1400, '', 1600, 0, 0, 2873, 0, 84),
(85, 0, 2010, 2295, 4939, 5, 1790, '', 1730, 0, 0, 2935, 0, 85),
(86, 0, 2010, 0, 4939, 5, 1790, '', 1730, 0, 0, 2935, 0, 86),
(87, 1667, 1947, 2165, 4924, 5, 2055, 'Crossover', 1772, 720, 1667, 2995, 180, 87),
(88, 1667, 1947, 2235, 4924, 5, 2055, 'Crossover', 1772, 835, 1667, 2995, 180, 88),
(89, 1606, 1871, 2075, 5226, 5, 560, 'Sedan', 1485, 585, 1600, 3165, 0, 89),
(90, 1587, 1822, 1465, 4299, 5, 1390, 'Crossover', 1557, 585, 1586, 2670, 165, 90),
(91, 1587, 1822, 1440, 4299, 5, 1390, 'Crossover', 1557, 585, 1586, 2670, 165, 91),
(92, 1501, 1727, 1140, 3821, 4, 211, 'Hatchback', 1414, 460, 1501, 2495, 143, 92),
(93, 1501, 1727, 1195, 3821, 5, 211, 'Hatchback', 1414, 515, 1501, 2495, 143, 93),
(94, 1525, 1770, 0, 4295, 5, 1219, 'Crossover', 1615, 0, 1525, 2670, 195, 94),
(95, 1525, 1770, 0, 4295, 5, 1219, 'Crossover', 1615, 0, 1525, 2670, 195, 95),
(96, 1520, 1815, 1930, 5225, 5, 0, 'Pickup', 1775, 0, 1520, 3000, 200, 96),
(97, 0, 1815, 1930, 5225, 5, 0, '', 1775, 0, 0, 3000, 0, 97),
(98, 0, 1666, 915, 3795, 5, 1330, '', 1509, 0, 0, 2451, 0, 98),
(99, 1560, 1875, 2100, 4900, 5, 1790, 'Crossover', 1870, 710, 1560, 2780, 235, 99),
(100, 1515, 1815, 2095, 4785, 5, 0, 'Crossover', 1805, 615, 1520, 2800, 218, 100),
(101, 1523, 1765, 1236, 4135, 5, 797, 'Crossover', 1570, 474, 1525, 2530, 180, 101),
(102, 1580, 1836, 1430, 4379, 5, 1585, 'Crossover', 1590, 445, 1580, 2646, 180, 102),
(103, 1530, 1831, 1410, 4390, 5, 3050, 'Minivan', 1845, 600, 1510, 2785, 0, 103),
(104, 1530, 1831, 1500, 4390, 5, 3050, 'Minivan', 2100, 900, 1510, 2785, 0, 104),
(105, 1464, 1746, 1163, 4021, 5, 1120, 'Hatchback', 1481, 442, 1472, 2510, 140, 105),
(106, 1540, 1802, 1394, 4275, 5, 1372, 'Crossover', 1658, 434, 1541, 2555, 158, 106),
(107, 0, 1739, 975, 3962, 5, 0, '', 1460, 0, 0, 2538, 0, 107),
(108, 0, 1841, 1760, 4447, 5, 1482, '', 1620, 0, 0, 2675, 0, 108),
(109, 0, 1841, 1840, 4447, 5, 1482, '', 1620, 0, 0, 2675, 0, 109),
(110, 1553, 1804, 1164, 4253, 5, 1228, 'Hatchback', 1457, 586, 1559, 2620, 110, 110),
(111, 1587, 1844, 1615, 4641, 5, 1940, 'Crossover', 1640, 625, 1593, 2840, 236, 111),
(112, 1574, 1895, 1919, 5135, 8, 4124, 'Minivan', 1942, 872, 1574, 3122, 0, 112),
(113, 1440, 1724, 1405, 4137, 5, 2800, 'Minivan', 1796, 475, 1420, 2693, 160, 113),
(114, 1567, 1921, 0, 4403, 5, 2693, 'Minivan', 1874, 0, 1553, 2785, 0, 114),
(115, 1618, 1920, 1746, 4956, 8, 3958, 'Minivan', 1940, 1354, 1630, 3275, 175, 115),
(116, 0, 1579, 0, 3679, 5, 1115, 'Hatchback', 1478, 0, 0, 2422, 180, 116),
(117, 1586, 1814, 1392, 4626, 5, 1504, 'Wagon', 1449, 532, 1591, 2712, 145, 117),
(118, 1486, 1733, 0, 4346, 5, 510, 'Sedan', 1517, 0, 1497, 2634, 155, 118),
(119, 1541, 1841, 1349, 4363, 5, 510, 'Crossover', 1601, 616, 1576, 2638, 190, 119),
(120, 1544, 1841, 1460, 4363, 5, 485, 'Crossover', 1601, 615, 1572, 2630, 190, 120),
(121, 1505, 1780, 1047, 4059, 5, 355, 'Hatchback', 1444, 0, 1525, 2564, 0, 121),
(122, 1508, 1816, 1231, 4263, 5, 1210, 'Hatchback', 1459, 489, 1538, 2636, 0, 122),
(123, 0, 1839, 1599, 4735, 7, 0, '', 1658, 0, 0, 2790, 0, 123),
(124, 1457, 1732, 0, 3992, 5, 1150, 'Hatchback', 1467, 0, 1463, 2470, 133, 124),
(125, 0, 1793, 0, 4241, 5, 1395, 'Crossover', 1531, 0, 0, 2651, 0, 125),
(126, 1541, 1841, 0, 4382, 5, 1630, 'Crossover', 1603, 0, 1576, 2638, 0, 126),
(127, 1576, 1882, 1561, 4697, 5, 1980, 'Crossover', 1676, 650, 1586, 2791, 187, 127),
(128, 1540, 1814, 1269, 4670, 5, 1558, 'Liftback', 1476, 645, 1549, 2686, 156, 128),
(129, 0, 1814, 1464, 4689, 5, 1740, '', 1452, 0, 0, 2680, 0, 129),
(130, 0, 1793, 1192, 4362, 5, 1410, '', 1471, 0, 0, 2649, 0, 130),
(131, 0, 1870, 0, 4450, 5, 0, '', 1620, 0, 0, 2675, 0, 131),
(132, 0, 1870, 0, 4450, 5, 0, '', 1620, 0, 0, 2675, 0, 132),
(133, 1520, 1864, 1775, 4935, 5, 0, 'Pickup', 1760, 0, 1510, 2755, 195, 133),
(134, 1640, 1920, 2130, 4850, 7, 0, 'Crossover', 1800, 830, 1640, 2865, 224, 134),
(135, 0, 1600, 880, 3600, 5, 726, '', 1530, 0, 0, 2425, 0, 135),
(136, 0, 1645, 1090, 3645, 4, 830, '', 1725, 0, 0, 2250, 0, 136),
(137, 0, 1694, 0, 3840, 5, 0, '', 1501, 0, 0, 2450, 0, 137),
(138, 0, 1860, 0, 5125, 5, 0, '', 1833, 0, 0, 3150, 0, 138),
(139, 1540, 1800, 1930, 4715, 6, 0, 'Minivan', 1965, 440, 1560, 2985, 195, 139),
(140, 1550, 1855, 2095, 5330, 4, 0, 'Pickup', 1815, 0, 1540, 3085, 227, 140),
(141, 1420, 1770, 2140, 5231, 3, 0, 'Pickup', 1970, 1060, 1515, 3180, 235, 141),
(142, 1460, 1870, 3000, 4896, 5, 0, 'Crossover', 1940, 0, 1515, 2730, 230, 142),
(143, 1585, 1855, 2165, 4840, 5, 1934, 'Crossover', 1845, 825, 1585, 2790, 215, 143),
(144, 1485, 1695, 1055, 3950, 5, 768, 'Hatchback', 1530, 395, 1485, 2510, 155, 144),
(145, 0, 1730, 0, 4145, 5, 0, '', 1500, 0, 0, 2550, 0, 145),
(146, 1644, 1954, 1968, 5254, 5, 2520, 'Pickup', 1834, 852, 1647, 3095, 192, 146),
(147, 0, 1793, 1474, 4408, 5, 3200, 'Minivan', 1822, 561, 0, 2682, 155, 147),
(148, 0, 1793, 1507, 4408, 5, 3200, 'Minivan', 1822, 773, 0, 2682, 155, 148),
(149, 0, 1793, 1534, 4408, 7, 3030, 'Minivan', 1792, 746, 0, 2682, 125, 149),
(150, 1504, 1799, 1316, 4567, 5, 1620, 'Wagon', 1515, 0, 1534, 2620, 140, 150),
(151, 0, 1904, 2264, 4904, 7, 0, 'Minivan', 1970, 816, 0, 3000, 202, 151),
(152, 1483, 1751, 1145, 4053, 5, 1125, 'Hatchback', 1461, 521, 1499, 2551, 0, 152),
(153, 1504, 1760, 1250, 4108, 5, 1281, 'Crossover', 1584, 555, 1526, 2551, 0, 153),
(154, 1504, 1760, 1245, 4108, 5, 1281, 'Crossover', 1584, 550, 1526, 2551, 0, 154),
(155, 1564, 1839, 1570, 4701, 5, 1920, 'Crossover', 1674, 605, 1575, 2787, 201, 155),
(156, 1603, 1850, 0, 4761, 5, 442, 'Sedan', 1431, 0, 1603, 2872, 0, 156),
(157, 1603, 1850, 2020, 4761, 5, 442, 'Sedan', 1431, 0, 1603, 2872, 0, 157),
(158, 1629, 1879, 1764, 4963, 5, 500, 'Sedan', 1443, 0, 1628, 2941, 143, 158),
(159, 1629, 1879, 0, 4963, 5, 500, 'Sedan', 1443, 0, 1628, 2941, 143, 159),
(160, 1626, 1863, 1684, 4425, 5, 1336, 'Crossover', 1652, 536, 1601, 2702, 211, 160),
(161, 1626, 1863, 1718, 4425, 5, 1336, 'Crossover', 1652, 0, 1601, 2702, 211, 161),
(162, 1673, 1902, 2002, 4688, 5, 505, 'Crossover', 1658, 488, 1668, 2865, 216, 162),
(163, 1673, 1902, 2174, 4688, 5, 505, 'Crossover', 1658, 526, 1668, 2865, 216, 163),
(164, 1671, 2008, 0, 4950, 5, 1899, 'Crossover', 1776, 0, 1668, 2984, 237, 164),
(165, 1671, 2008, 0, 4950, 5, 1899, 'Crossover', 1776, 0, 1668, 2984, 237, 165);

-- --------------------------------------------------------

--
-- Table structure for table `car`
--

CREATE TABLE `car` (
  `car_id` int NOT NULL,
  `make_id` int NOT NULL,
  `model_id` int NOT NULL,
  `generation` varchar(100) NOT NULL,
  `year_from` int NOT NULL,
  `year_to` int NOT NULL,
  `serie` varchar(100) NOT NULL,
  `trim` varchar(100) NOT NULL,
  `id_car_type` int DEFAULT NULL,
  `car_price` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `car`
--

INSERT INTO `car` (`car_id`, `make_id`, `model_id`, `generation`, `year_from`, `year_to`, `serie`, `trim`, `id_car_type`) VALUES
(1, 1, 753, '952', 2016, 2020, 'Sedan', '2.0 AT', 1),
(2, 1, 754, '949', 2017, 2020, 'Crossover', '2.0 AT Q4', 1),
(3, 2, 755, '2 generation', 2018, 2020, 'Sportback hatchback', '30 TFSI MT', 1),
(4, 2, 756, '2 generation', 2016, 2020, 'Coupe', '3.0 TDI S tronic quattro', 1),
(5, 2, 757, 'C8', 2018, 2020, 'Sedan', '45 TFSI S tronic quattro', 1),
(6, 2, 757, 'C8', 2018, 2020, 'Sedan', '55 TFSI S tronic quattro', 1),
(7, 2, 758, 'C8', 2017, 2020, 'Sportback liftback', '55 TFSI S tronic quattro', 1),
(8, 2, 759, '1 generation [redesign]', 2020, 2020, 'SUV 5 doors', '2.0 AMT 4WD', 1),
(9, 2, 759, '1 generation [redesign]', 2020, 2020, 'SUV 5 doors', '2.0 MT', 1),
(10, 2, 760, '2 generation', 2016, 2020, 'Crossover', '45 TFSI S tronic quattro', 1),
(11, 2, 761, '1 generation', 2018, 2020, 'Crossover', '55 TFSI Tiptronic quattro', 1),
(12, 3, 762, 'F20/F21 [redesign]', 2015, 2020, 'Hatchback', '116i MT', 1),
(13, 3, 762, 'F40', 2019, 2020, 'Hatchback', '118i MT', 1),
(14, 3, 763, 'F22/F23 [redesign]', 2017, 2020, 'Coupe', '218i MT', 1),
(15, 3, 764, 'F30/F31/F34 [redesign]', 2015, 2020, 'Gran Turismo liftback', '320i MT', 1),
(16, 3, 764, 'F30/F31/F34 [redesign]', 2015, 2020, 'Gran Turismo liftback', '320i Steptronic', 1),
(17, 3, 764, 'F30/F31/F34 [redesign]', 2015, 2020, 'Gran Turismo liftback', '320i xDrive MT', 1),
(18, 3, 765, 'F32/F33/F36 [redesign]', 2017, 2020, 'Coupe', '420i MT', 1),
(19, 3, 765, 'F32/F33/F36 [redesign]', 2017, 2020, 'Coupe', '420i Steptronic', 1),
(20, 3, 765, 'F32/F33/F36 [redesign]', 2017, 2020, 'Coupe', '420i xDrive MT', 1),
(21, 3, 766, 'G05', 2018, 2020, 'Crossover', 'xDrive45e iPerformance Steptronic', 1),
(22, 4, 767, '1 generation', 2016, 2020, 'Crossover', '2.0 CVT', 1),
(23, 4, 768, '1 generation', 2020, 2020, 'SUV 5 doors', '1.5 CVT', 1),
(24, 5, 769, '1 generation', 2011, 2016, 'Hatchback', '1.4 AT', 1),
(25, 6, 770, '2 generation [redesign]', 2017, 2020, 'Sedan', '0.9 TCe MT', 1),
(26, 6, 771, '2 generation [redesign]', 2017, 2020, 'Hatchback 5-doors', '0.9 TCe MT', 1),
(27, 6, 771, '2 generation [redesign]', 2017, 2020, 'Stepway hatchback 5-doors', '0.9 TCe LPG MT', 1),
(28, 6, 771, '2 generation [redesign]', 2017, 2020, 'Stepway hatchback 5-doors', '0.9 TCe MT', 1),
(29, 7, 772, '2 generation', 2008, 2015, 'Hatchback', '1.2 AMT', 1),
(30, 7, 773, '1 generation', 2001, 2005, 'Minivan', '1.3 TD MT', 1),
(31, 7, 774, '3 generation', 2008, 2010, 'Qubo minivan 5-doors', '1.3 Multijet MT', 1),
(32, 7, 775, '356 (2 generation)', 2015, 0, 'Hatchback 5 doors', '1.3 MT', 1),
(33, 7, 775, '356 (2 generation)', 2015, 0, 'Hatchback 5 doors', '1.4 MT', 1),
(34, 8, 776, '2 generation [redesign]', 2017, 2020, 'Crossover', '1.0 EcoBoost AT', 1),
(35, 8, 776, '2 generation [redesign]', 2017, 2020, 'Crossover', '1.0 EcoBoost MT', 1),
(36, 8, 777, '3 generation [redesign]', 2014, 2020, 'Sedan', '1.6 Ti-VCT PowerShift', 1),
(37, 8, 778, '2 generation [redesign]', 2016, 2020, 'Crossover', '1.5 EcoBoost AT AWD', 1),
(38, 8, 779, '4 generation [redesign]', 2015, 2018, 'Double Cab pickup 4-doors', '2.2 TDCi AT AWD', 1),
(39, 8, 779, '4 generation [redesign]', 2015, 2018, 'Double Cab pickup 4-doors', '2.2 TDCi MT AWD', 1),
(40, 8, 779, '4 generation [redesign]', 2015, 2018, 'Double Cab pickup 4-doors', '3.2 TDCi AT AWD', 1),
(41, 8, 779, '4 generation [redesign]', 2015, 2018, 'Double Cab pickup 4-doors', '3.2 TDCi MT AWD', 1),
(42, 9, 780, '5', 2011, 2015, 'Pickup Double cabin', '2.2 MT', 1),
(43, 10, 781, '1 generation', 2013, 2020, 'Crossover', '1.5 Turbo AT', 1),
(44, 11, 782, '6 generation [redesign]', 2000, 2002, 'JP-spec Sedan 4-doors', '1.8 AT', 1),
(45, 11, 783, '4 generation [redesign]', 2005, 2008, 'Sedan', '1.5 CVT', 1),
(46, 11, 784, '5 generation', 2016, 2020, 'Crossover', '1.5 CVT AWD', 1),
(47, 11, 784, '5 generation', 2016, 2020, 'Crossover', '1.5 CVT FWD', 1),
(48, 12, 785, 'RB', 2010, 2020, 'Sedan', '1.4 AT', 1),
(49, 12, 785, 'RB', 2010, 2020, 'Sedan', '1.4 MT', 1),
(50, 12, 786, '1 generation [redesign]', 2010, 2013, 'Hatchback', '1.2 MT', 1),
(51, 12, 787, 'IB', 2014, 2020, 'Hatchback 5-doors', '1.0 T-GDI blue MT', 1),
(52, 12, 787, 'PB [redesign]', 2012, 2014, 'Hatchback', '1.2 MT', 1),
(53, 12, 788, 'GD [redesign]', 2015, 2017, 'Hatchback 5-doors', '1.0 T-GDi MT', 1),
(54, 12, 789, 'TM', 2018, 2020, 'Crossover', '2.2 CRDi AT', 1),
(55, 12, 789, 'TM', 2018, 2020, 'Crossover', '2.2 CRDi AT AWD', 1),
(56, 12, 790, '3 generation [redesign]', 2018, 2020, 'Crossover', '1.6 T-GDI AMT AWD', 1),
(57, 12, 790, '4 generation', 2020, 2020, 'SUV 5 doors', '1.6 AT 4WD', 1),
(58, 13, 791, '2 generation', 2017, 2020, 'Crossover', '1.4 4x4 AT', 1),
(59, 13, 792, '1 generation [redesign]', 2018, 2020, 'Crossover', '1.4 AT 4WD', 1),
(60, 13, 793, 'JL', 2017, 2020, 'SUV 3-doors', '2.0 AT AWD', 1),
(61, 14, 794, '2 generation [redesign]', 2015, 2017, 'Hatchback 5-doors', '1.2 AT', 1),
(62, 14, 794, '3 generation', 2017, 2020, 'Hatchback 5-doors', '1.0 MT', 1),
(63, 14, 794, '3 generation', 2017, 2020, 'Hatchback 5-doors', '1.2 AT', 1),
(64, 14, 795, '4 generation', 2016, 2020, 'X-Line hatchback 5-doors', '1.2 MT', 1),
(65, 14, 795, '4 generation [redesign]', 2020, 2020, 'Hatchback 5 doors X', '1.4 AT', 1),
(66, 14, 795, '4 generation [redesign]', 2020, 2020, 'Hatchback 5 doors X', '1.4 MT', 1),
(67, 14, 796, '3 generation [redesign]', 2017, 2020, 'Prime crossover', '2.2 CRDi AT', 1),
(68, 14, 797, '4 generation [redesign]', 2018, 2020, 'Crossover', '1.6 T-GDI DCT AWD', 1),
(69, 15, 798, 'W177/V177', 2018, 2020, 'Hatchback 5-doors', 'A 180 d 7G-DCT', 1),
(70, 15, 798, 'W177/V177', 2018, 2020, 'Hatchback 5-doors', 'A 180 MT', 1),
(71, 15, 799, 'W205/S205/C205 [redesign]', 2018, 2020, 'Sedan 4-doors', 'C 180 9G-TRONIC', 1),
(72, 15, 799, 'W205/S205/C205 [redesign]', 2018, 2020, 'wagon', 'C 180 9G-TRONIC', 1),
(73, 15, 799, 'W205/S205/C205 [redesign]', 2018, 2020, 'wagon', 'C 180 d 9G-TRONIC', 1),
(74, 15, 800, 'C118', 2019, 2020, 'wagon 5-doors', '180 d MT', 1),
(75, 15, 800, 'C118', 2019, 2020, 'wagon 5-doors', '180 MT', 1),
(76, 15, 801, 'C257', 2017, 2020, 'Sedan 4-doors', '350 AT 4Matic', 1),
(77, 15, 801, 'C257', 2017, 2020, 'Sedan 4-doors', '350 d AT 4Matic', 1),
(78, 15, 802, 'W213/S213/C238/A238', 2016, 2020, 'Sedan 4-doors', 'E 350 d 9G-TRONIC', 1),
(79, 15, 802, 'W213/S213/C238/A238', 2016, 2020, 'Sedan 4-doors', 'E 350 e 9G-TRONIC', 1),
(80, 15, 802, 'W213/S213/C238/A238', 2016, 2020, 'Sedan 4-doors', 'E 400 d 4MATIC 9G-TRONIC', 1),
(81, 15, 802, 'W213/S213/C238/A238', 2016, 2020, 'Sedan 4-doors', 'E 450 4MATIC 9G-TRONIC', 1),
(82, 15, 803, 'X156 [redesign]', 2017, 2020, 'Crossover 5-doors', '180 d MT', 1),
(83, 15, 803, 'X156 [redesign]', 2017, 2020, 'Crossover 5-doors', '180 MT', 1),
(84, 15, 804, 'C253 [redesign]', 2019, 2019, 'SUV 5 doors', '2.0 AT 4WD', 1),
(85, 15, 805, 'C167', 2019, 2019, 'SUV 5 doors', '2.9 AT 4WD', 1),
(86, 15, 805, 'C167', 2019, 2019, 'SUV 5 doors', '3.0 AT 4WD', 1),
(87, 15, 806, 'V167', 2018, 2020, 'Crossover', '300d 9G-Tronic 4Matic', 1),
(88, 15, 806, 'V167', 2018, 2020, 'Crossover', '350d 9G-Tronic 4Matic', 1),
(89, 15, 807, 'W221 [redesign]', 2009, 2013, 'Sedan 4-doors', 'S 450 4MATIC 7G-Tronic long base', 1),
(90, 16, 808, 'F60', 2017, 2020, 'Cooper crossover', '1.5 AT', 1),
(91, 16, 808, 'F60', 2017, 2020, 'Cooper crossover', '1.5 MT', 1),
(92, 16, 809, 'F56', 2013, 2018, 'Hatchback 3-doors', '1.5 AMT', 1),
(93, 16, 809, 'F56', 2013, 2018, 'Hatchback 5-doors', '1.5 AMT', 1),
(94, 17, 810, '1 generation [3th redesign]', 2019, 2020, 'Crossover', '2.0 MT', 1),
(95, 17, 810, '1 generation [3th redesign]', 2019, 2020, 'Crossover', '2.0 MT AWD', 1),
(96, 17, 811, '5 generation [redesign]', 2019, 2020, 'Pickup', '2.4 DID MT AWD', 1),
(97, 17, 811, '5 generation [redesign]', 2019, 2020, 'Pickup Double cabin', '2.4 AT 4WD', 1),
(98, 17, 812, '6 generation [redesign]', 2015, 2020, 'Hatchback 5-doors', '1.2 MT', 1),
(99, 17, 813, '4 generation [2th redesign]', 2014, 2020, 'SUV', '3.0 MT AWD', 1),
(100, 17, 814, '3 generation', 2016, 2020, 'SUV', '2.4  DI-D AT AWD', 1),
(101, 18, 815, 'YF15 [redesign]', 2012, 2020, 'Crossover 5-doors', '1.2 DIG-T MT', 1),
(102, 18, 816, '2 generation [redesign]', 2017, 2020, 'Crossover', '1.2 DIG-T Xtronic', 1),
(103, 19, 817, 'D', 2011, 2020, 'Tour minivan', '1.6 CDTI MT L1H1', 1),
(104, 19, 817, 'D', 2011, 2020, 'Tour minivan', '1.6 CDTI MT L1H2', 1),
(105, 19, 818, 'E', 2014, 2020, 'Hatchback 5-doors', '1.2 MT', 1),
(106, 19, 819, 'X [redesign]', 2016, 2020, 'Crossover', '1.4 MT', 1),
(107, 20, 820, 'Peugeot 208', 2012, 2015, 'Hatchback', '1.2 MT', 1),
(108, 20, 821, '2 generation [redesign]', 2020, 2020, 'SUV 5 doors', '1.6 AT', 1),
(109, 20, 821, '2 generation [redesign]', 2020, 2020, 'SUV 5 doors', '1.6 AT 4WD', 1),
(110, 20, 822, 'T9 [redesign]', 2017, 2020, 'Hatchback', '1.2 MT', 1),
(111, 20, 823, '2 generation', 2017, 2020, 'Crossover', '1.6 THP AT', 1),
(112, 20, 824, '2 generation [redesign]', 2012, 2020, 'Tepee minivan', '2.0 HDi MT', 1),
(113, 20, 825, 'Origin [redesign]', 2002, 2012, 'VP minivan', '1.6 HDi MT', 1),
(114, 20, 826, '1 generation', 2018, 2020, 'Minivan', '1.5 BlueHDi MT L1', 1),
(115, 20, 827, '1 generation', 2017, 2020, 'Minivan', '2.0 HDi MT SWB', 1),
(116, 21, 828, '1 generation', 2015, 2020, 'Hatchback', '1.0 MT', 1),
(117, 21, 829, '4 generation', 2016, 2020, 'wagon', '1.6 TCe MT', 1),
(118, 21, 830, '3 generation', 2013, 2020, 'Sedan', '1.0 SCe MT', 1),
(119, 22, 831, '1 generation', 2016, 2020, 'Crossover', '1.4 EcoTSI MT', 1),
(120, 22, 831, '1 generation', 2016, 2020, 'Crossover', '1.4 EcoTSI MT 4Drive', 1),
(121, 22, 832, '5 generation', 2017, 2019, 'Hatchback', '1.0 TSI MT', 1),
(122, 22, 833, '3 generation', 2012, 2020, 'Hatchback 5-doors', '1.4 TSI MT', 1),
(123, 22, 834, '1 generation', 2018, 2019, 'SUV 5 doors', '1.5 MT', 1),
(124, 23, 835, 'NJ [redesign]', 2018, 2020, 'Hatchback', '1.0 TSI MT', 1),
(125, 23, 836, '1 generation', 2019, 2020, 'Crossover', '1.0 TSI DSG', 1),
(126, 23, 837, '1 generation', 2017, 2020, 'Crossover', '1.5 TSI DSG', 1),
(127, 23, 838, '1 generation', 2017, 2020, 'Crossover', '1.4 TSI DSG', 1),
(128, 23, 839, '3 generation [redesign]', 2017, 2020, 'Liftback 5-doors', '1.4 TSI DSG', 1),
(129, 23, 840, 'A7 [redesign]', 2017, 2019, 'wagon 5 doors', '2.0 AMT', 1),
(130, 23, 841, '1 generation', 2019, 2019, 'Hatchback 5 doors', '1.0 MT', 1),
(131, 24, 842, '4 generation', 2019, 2020, 'Crossover', '1.5 AT 4WD', 1),
(132, 24, 842, '4 generation', 2019, 2020, 'Crossover', '1.6 AT 4WD', 1),
(133, 24, 843, '1 generation [redesign]', 1998, 2006, 'Sports pickup', '2.9 TDI AT', 1),
(134, 24, 844, 'Y400', 2017, 2020, 'SUV', '2.2 AT', 1),
(135, 25, 845, '1 generation', 2014, 2020, 'Hatchback 5-doors', '1.0 MT', 1),
(136, 25, 846, '4 generation', 2018, 2020, 'SUV 3-doors', '1.5 MT 4WD', 1),
(137, 25, 847, '5 generation', 2016, 2020, 'Hatchback 5 doors', '1.2 CVT', 1),
(138, 26, 848, '1 generation', 2007, 2020, 'Pickup Double cabin', '2.2 MT 4WD', 1),
(139, 27, 849, 'XH20 [2th redesign]', 1999, 2012, 'Minivan 4-doors', '3.0 TD AT 8seat', 1),
(140, 27, 850, '8 generation', 2015, 2020, 'Double Cab pickup', '2.4 D MT 4WD', 1),
(141, 27, 851, 'J70 [3th redesign]', 2007, 2020, 'Pickup 2-doors', '4.2 D MT', 1),
(142, 27, 851, 'J70 [3th redesign]', 2007, 2020, 'SUV 5-doors', '4.2 D MT', 1),
(143, 27, 852, 'J150 [2th redesign]', 2017, 2020, 'SUV', '2.8 D MT AWD', 1),
(144, 27, 853, 'XP130 [redesign]', 2014, 2017, 'Hatchback 5-doors', '1.0 MT', 1),
(145, 27, 853, 'XP150 [redesign]', 2017, 2020, 'Hatchback 5 doors', '1.5 CVT', 1),
(146, 28, 854, '1 generation [redesign]', 2016, 2020, 'DoubleCab pickup', '2.0 TDI MT 4Motion', 1),
(147, 28, 855, '4 generation', 2015, 2020, 'Kombi minivan 4-doors', '1.6 TDI MT', 1),
(148, 28, 855, '4 generation', 2015, 2020, 'Kombi minivan 4-doors', '2.0 TDI DSG', 1),
(149, 28, 855, '4 generation', 2015, 2020, 'Minivan 5-doors', '2.0 TDI MT', 1),
(150, 28, 856, '7 generation [redesign]', 2017, 2020, 'Variant wagon 5-doors', '1.4 TSI MT', 1),
(151, 28, 857, 'T6', 2016, 2020, 'Minivan', '2.0 TSI DSG 4MOTION L1', 1),
(152, 28, 858, '6 generation', 2017, 2020, 'Hatchback', '1.0 TSI MT', 1),
(153, 28, 859, '1 generation', 2019, 2020, 'Crossover', '1.0 TSI MT', 1),
(154, 28, 859, '1 generation', 2019, 2020, 'Crossover', '1.0 TSI MT', 1),
(155, 28, 860, '2 generation', 2016, 2020, 'Allspace crossover 5-doors', '1.4 TSI MT', 1),
(156, 29, 861, '3 generation', 2018, 2020, 'Sedan', '2.0 T6 Geartronic AWD', 1),
(157, 29, 861, '3 generation', 2018, 2020, 'Sedan', '2.0 T8 Geartronic AWD', 1),
(158, 29, 862, '2 generation', 2016, 2020, 'Sedan', '2.0 T6 Drive-E Geartronic AWD', 1),
(159, 29, 862, '2 generation', 2016, 2020, 'Sedan', '2.0 T8 Geartronic AWD', 1),
(160, 29, 863, '1 generation', 2017, 2020, 'Crossover', '1.5 T3 Drive-E MT', 1),
(161, 29, 863, '1 generation', 2017, 2020, 'Crossover', '2.0 T5 Drive-E AT AWD', 1),
(162, 29, 864, '2 generation', 2017, 2020, 'Crossover', '2.0 T6 AT AWD', 1),
(163, 29, 864, '2 generation', 2017, 2020, 'Crossover', '2.0 T8 AT AWD', 1),
(164, 29, 865, '2 generation [redesign]', 2019, 2020, 'Crossover', '2.0 T6 Drive-E AT AWD', 1),
(165, 29, 865, '2 generation [redesign]', 2019, 2020, 'Crossover', '2.0 T8 Twin Engine AT AWD', 1);

-- --------------------------------------------------------

--
-- Table structure for table `car_make`
--

CREATE TABLE `car_make` (
  `id_car_make` int NOT NULL,
  `name` varchar(30) NOT NULL,
  `id_car_type` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `car_make`
--

INSERT INTO `car_make` (`id_car_make`, `name`, `id_car_type`) VALUES
(1, 'Alfa Romeo', 1),
(2, 'Audi', 1),
(3, 'BMW', 1),
(4, 'Chery', 1),
(5, 'Chevrolet', 1),
(6, 'Dacia', 1),
(7, 'Fiat', 1),
(8, 'Ford', 1),
(9, 'Great Wall', 1),
(10, 'Haval', 1),
(11, 'Honda', 1),
(12, 'Hyundai', 1),
(13, 'Jeep', 1),
(14, 'Kia', 1),
(15, 'Mercedes-Benz', 1),
(16, 'Mini', 1),
(17, 'Mitsubishi', 1),
(18, 'Nissan', 1),
(19, 'Opel', 1),
(20, 'Peugeot', 1),
(21, 'Renault', 1),
(22, 'SEAT', 1),
(23, 'Skoda', 1),
(24, 'SsangYong', 1),
(25, 'Suzuki', 1),
(26, 'Tata', 1),
(27, 'Toyota', 1),
(28, 'Volkswagen', 1),
(29, 'Volvo', 1);

-- --------------------------------------------------------

--
-- Table structure for table `car_model`
--

CREATE TABLE `car_model` (
  `id_car_model` int NOT NULL,
  `id_car_make` int NOT NULL,
  `name` varchar(40) NOT NULL,
  `id_car_type` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `car_model`
--

INSERT INTO `car_model` (`id_car_model`, `id_car_make`, `name`, `id_car_type`) VALUES
(753, 1, 'Giulia', 1),
(754, 1, 'Stelvio', 1),
(755, 2, 'A1', 1),
(756, 2, 'A5', 1),
(757, 2, 'A6', 1),
(758, 2, 'A7', 1),
(759, 2, 'Q2', 1),
(760, 2, 'Q5', 1),
(761, 2, 'Q8', 1),
(762, 3, '1 Series', 1),
(763, 3, '2 Series', 1),
(764, 3, '3 Series', 1),
(765, 3, '4 Series', 1),
(766, 3, 'X5', 1),
(767, 4, 'Tiggo 7', 1),
(768, 4, 'Tiggo 7 Pro', 1),
(769, 5, 'Sonic', 1),
(770, 6, 'Logan', 1),
(771, 6, 'Sandero', 1),
(772, 7, '500', 1),
(773, 7, 'Doblo', 1),
(774, 7, 'Fiorino', 1),
(775, 7, 'Tipo', 1),
(776, 8, 'EcoSport', 1),
(777, 8, 'Focus', 1),
(778, 8, 'Kuga', 1),
(779, 8, 'Ranger', 1),
(780, 9, 'Wingle', 1),
(781, 10, 'H6', 1),
(782, 11, 'Accord', 1),
(783, 11, 'City', 1),
(784, 11, 'CR-V', 1),
(785, 12, 'Accent', 1),
(786, 12, 'i10', 1),
(787, 12, 'i20', 1),
(788, 12, 'i30', 1),
(789, 12, 'Santa Fe', 1),
(790, 12, 'Tucson', 1),
(791, 13, 'Compass', 1),
(792, 13, 'Renegade', 1),
(793, 13, 'Wrangler', 1),
(794, 14, 'Picanto', 1),
(795, 14, 'Rio', 1),
(796, 14, 'Sorento', 1),
(797, 14, 'Sportage', 1),
(798, 15, 'A-Class', 1),
(799, 15, 'C-Class', 1),
(800, 15, 'CLA-Class', 1),
(801, 15, 'CLS-Class', 1),
(802, 15, 'E-Class', 1),
(803, 15, 'GLA-Class', 1),
(804, 15, 'GLC Coupe', 1),
(805, 15, 'GLE Coupe', 1),
(806, 15, 'GLE-Class', 1),
(807, 15, 'S-Class', 1),
(808, 16, 'Countryman', 1),
(809, 16, 'One', 1),
(810, 17, 'ASX', 1),
(811, 17, 'L200', 1),
(812, 17, 'Mirage', 1),
(813, 17, 'Pajero', 1),
(814, 17, 'Pajero Sport', 1),
(815, 18, 'Juke', 1),
(816, 18, 'Qashqai', 1),
(817, 19, 'Combo', 1),
(818, 19, 'Corsa', 1),
(819, 19, 'Mokka', 1),
(820, 20, '208', 1),
(821, 20, '3008', 1),
(822, 20, '308', 1),
(823, 20, '5008', 1),
(824, 20, 'Expert', 1),
(825, 20, 'Partner', 1),
(826, 20, 'Rifter', 1),
(827, 20, 'Traveller', 1),
(828, 21, 'Kwid', 1),
(829, 21, 'Megane', 1),
(830, 21, 'Symbol', 1),
(831, 22, 'Ateca', 1),
(832, 22, 'Ibiza', 1),
(833, 22, 'Leon', 1),
(834, 22, 'Tarraco', 1),
(835, 23, 'Fabia', 1),
(836, 23, 'Kamiq', 1),
(837, 23, 'Karoq', 1),
(838, 23, 'Kodiaq', 1),
(839, 23, 'Octavia', 1),
(840, 23, 'Octavia RS', 1),
(841, 23, 'Scala', 1),
(842, 24, 'Korando', 1),
(843, 24, 'Musso', 1),
(844, 24, 'Rexton', 1),
(845, 25, 'Celerio', 1),
(846, 25, 'Jimny', 1),
(847, 25, 'Swift', 1),
(848, 26, 'Xenon', 1),
(849, 27, 'Hiace', 1),
(850, 27, 'Hilux', 1),
(851, 27, 'Land Cruiser', 1),
(852, 27, 'Land Cruiser Prado', 1),
(853, 27, 'Yaris', 1),
(854, 28, 'Amarok', 1),
(855, 28, 'Caddy', 1),
(856, 28, 'Golf', 1),
(857, 28, 'Multivan', 1),
(858, 28, 'Polo', 1),
(859, 28, 'T-Cross', 1),
(860, 28, 'Tiguan', 1),
(861, 29, 'S60', 1),
(862, 29, 'S90', 1),
(863, 29, 'XC40', 1),
(864, 29, 'XC60', 1),
(865, 29, 'XC90', 1);

-- --------------------------------------------------------

--
-- Table structure for table `car_type`
--

CREATE TABLE `car_type` (
  `id_car_type` int NOT NULL,
  `name` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `car_type`
--

INSERT INTO `car_type` (`id_car_type`, `name`) VALUES
(1, 'car');

-- --------------------------------------------------------

--
-- Table structure for table `characteristics`
--

CREATE TABLE `characteristics` (
  `car_id` int DEFAULT NULL,
  `cruising_range` varchar(40) DEFAULT NULL,
  `fuel` varchar(25) DEFAULT NULL,
  `emission_standards` varchar(30) DEFAULT NULL,
  `fuel_tank_capacity` float DEFAULT NULL,
  `acceleration` float DEFAULT NULL,
  `max_speed` int DEFAULT NULL,
  `fuel_consumption_city` float DEFAULT NULL,
  `fuel_consumption_highway` float DEFAULT NULL,
  `characteristics_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `characteristics`
--

INSERT INTO `characteristics` (`car_id`, `cruising_range`, `fuel`, `emission_standards`, `fuel_tank_capacity`, `acceleration`, `max_speed`, `fuel_consumption_city`, `fuel_consumption_highway`, `characteristics_id`) VALUES
(1, '690|1,260', '95', 'EURO VI', 58, 6.6, 235, 8.4, 5.4, 1),
(3, '680|980', '95', 'EURO VI', 40, 9.5, 203, 5.9, 4.7, 3),
(4, '1,160|1,350', 'diesel', 'EURO V', 58, 6.2, 250, 5, 5.9, 4),
(7, '690|1,170', '95', 'EURO VI', 63, 5.3, 250, 9.1, 4.3, 7),
(8, '', 'diesel', 'Euro 6', 50, 8.1, 211, 6.1, 5.1, 8),
(9, '', 'diesel', 'Euro 6', 50, 8.5, 211, 5.6, 5.1, 9),
(10, '840|1,190', '95', 'EURO VI', 70, 6.3, 237, 8.3, 5.6, 10),
(12, '830|1,240', '95', 'EURO VI', 52, 10.9, 195, 6.3, 4.5, 12),
(13, '600|980', '92', 'EURO VI', 42, 8.5, 213, 7, 5.4, 13),
(16, '730|1,180', '95', 'EURO VI', 60, 8, 229, 8.2, 6.6, 16),
(17, '700|1,070', '95', 'EURO VI', 60, 8.1, 227, 8.6, 6.35, 17),
(18, '780|1,280', '95', 'EURO VI', 60, 7.3, 236, 7.7, 4.3, 18),
(19, '850|1,330', '95', 'EURO VI', 60, 7.5, 236, 7.1, 4.3, 19),
(20, '690|1,110', '95', 'EURO VI', 60, 7.6, 233, 8.7, 5.8, 20),
(23, '', '92', 'Euro 6', 51, 9.7, 186, 10.8, 4.9, 23),
(25, '860|1,160', '95', 'EURO VI', 50, 11.1, 175, 5.8, 3.3, 25),
(26, '860|1,160', '95', 'EURO VI', 50, 11.1, 175, 5.8, 5, 26),
(27, '650|860', '95, Gas', 'EURO VI', 50, 11.3, 168, 7.7, 5, 27),
(28, '860|1,060', '95', 'EURO VI', 50, 11.1, 168, 5.8, 4.6, 28),
(29, '550|810', '95', '', 35, 12, 160, 6.4, 4.9, 29),
(30, '900|1,220', 'diesel', 'EURO IV', 60, 16, 145, 6.7, 6.4, 30),
(31, '790|1,180', 'diesel', 'EURO IV', 45, 15, 155, 5.7, 6.7, 31),
(32, '', 'diesel', 'Euro 6', 50, 12, 180, 4.5, 6.4, 32),
(33, '', '95', 'Euro 6', 50, 9.6, 200, 7.7, 7.2, 33),
(34, '720|1,040', '95', 'EURO VI', 52, 11.6, 180, 7.2, 7.2, 34),
(35, '840|1,130', '95', 'EURO VI', 52, 10.2, 186, 6.2, 8.7, 35),
(39, '980|1,250', 'diesel', 'EURO VI', 80, 11.8, 175, 8.2, 7.2, 39),
(40, '700|1,110', 'diesel', 'EURO VI', 80, 10.6, 175, 11.4, 7, 40),
(41, '760|1,110', 'diesel', 'EURO VI', 80, 10.9, 175, 10.5, 5, 41),
(44, '610|940', '95', '', 60, 10.8, 189, 9.9, 3.9, 44),
(51, '860|1,280', '95', 'EURO VI', 50, 10.2, 190, 5.8, 5.9, 51),
(52, '740|1,070', '95', 'EURO V', 45, 13.3, 165, 6.1, 5.8, 52),
(62, '630|950', '95', '', 35, 14.3, 161, 5.6, 6.8, 62),
(64, '750|1,100', '95', 'EURO VI', 45, 12.9, 173, 6, 4.6, 64),
(67, '990|1,340', 'diesel', 'EURO VI', 71, 9.4, 205, 7.2, 4, 67),
(68, '730|910', '95', 'EURO VI', 62, 9.1, 201, 8.5, 4.4, 68),
(70, '540|930', '95', 'EURO VI', 43, 9.2, 215, 7.9, 4.9, 70),
(73, '840|1,030', 'diesel', '', 41, 9.6, 201, 4.9, 5, 73),
(78, '790|1,140', 'diesel', 'EURO VI', 50, 5.9, 250, 6.3, 6.8, 78),
(80, '830|1,000', 'diesel', 'EURO VI', 50, 4, 250, 6, 5.9, 80),
(81, '550|1,050', '95', 'EURO VI', 66, 5.6, 250, 12.1, 6.1, 81),
(82, '1,060|1,390', 'diesel', 'EURO VI', 50, 11.9, 190, 4.7, 7.9, 82),
(83, '660|1,090', '95', 'EURO VI', 50, 9, 200, 7.6, 5.8, 83),
(84, '', '95', 'Euro 6', 50, 6.3, 240, 8.9, 5, 84),
(85, '', 'diesel', 'Euro 6', 65, 5.7, 240, 10.2, 5, 85),
(86, '', '95', 'Euro 6', 65, 5.7, 250, 11.7, 4.2, 86),
(87, '890|1,100', 'diesel', 'EURO VI', 65, 7.2, 225, 7.3, 4.3, 87),
(90, '740|1,020', '95', 'EURO VI', 51, 9.6, 200, 6.9, 7.8, 90),
(92, '700|950', '92', 'EURO VI', 40, 10.2, 195, 5.7, 10, 92),
(93, '690|930', '92', 'EURO VI', 40, 10.5, 192, 5.8, 7, 93),
(99, '560|880', '92', 'EURO V', 88, 12.6, 175, 15.8, 5, 99),
(100, '710|1,000', 'diesel', 'EURO V', 70, 12.3, 180, 9.8, 3.9, 100),
(103, '900|1,280', 'diesel', 'EURO V', 60, 13.4, 164, 6.7, 4.4, 103),
(104, '900|1,280', 'diesel', 'EURO V', 60, 13.4, 164, 6.7, 5, 104),
(105, '680|1,000', '95', 'EURO VI', 45, 16, 162, 6.6, 6.5, 105),
(106, '710|1,060', '95', 'EURO VI', 53, 9.9, 196, 7.5, 4.7, 106),
(113, '900|1,280', 'diesel', 'EURO III', 60, 15.5, 150, 6.7, 4.8, 113),
(120, '720|910', '95', 'EURO VI', 50, 9, 192, 6.9, 5.7, 120),
(122, '780|1,110', '95', 'EURO V', 50, 8.2, 211, 6.4, 5.1, 122),
(127, '640|1,020', '95', '', 58, 9.6, 198, 9, 7, 127),
(128, '760|1,040', '95', 'EURO V', 50, 8.2, 219, 6.6, 3.7, 128),
(133, '600|970', 'diesel', '', 70, 16.9, 160, 11.6, 6.4, 133),
(144, '750|1,000', '95', 'EURO VI', 42, 15.3, 155, 5.6, 8.5, 144),
(146, '880|1,270', 'diesel', 'EURO IV', 80, 13.1, 167, 9.1, 4.4, 146),
(147, '910|1,150', 'diesel', 'EURO V', 60, 17.6, 150, 6.6, 4.4, 147),
(148, '810|1,150', 'diesel', 'EURO V', 60, 10.6, 186, 7.4, 5.4, 148),
(151, '570|940', '95', 'EURO V', 80, 9.9, 197, 14, 5.9, 151),
(154, '680|910', '95', 'EURO VI', 40, 11.5, 180, 5.9, 6.1, 154),
(155, '810|1,070', '95', 'EURO VI', 58, 9.5, 200, 7.2, 6.6, 155);

-- --------------------------------------------------------

--
-- Table structure for table `engine`
--

CREATE TABLE `engine` (
  `car_id` int DEFAULT NULL,
  `stroke_cycle` int DEFAULT NULL,
  `cylinder_bore` int DEFAULT NULL,
  `intercooler` varchar(30) DEFAULT NULL,
  `boost_type` varchar(30) DEFAULT NULL,
  `valves_per_cylinder` int DEFAULT NULL,
  `injection_type` varchar(40) DEFAULT NULL,
  `cylinder_layout` varchar(30) DEFAULT NULL,
  `maximum_torque` int DEFAULT NULL,
  `max_power` int DEFAULT NULL,
  `turnover_maximum_torque` int DEFAULT NULL,
  `engine_power` int DEFAULT NULL,
  `capacity` int DEFAULT NULL,
  `engine_type` varchar(25) DEFAULT NULL,
  `nb_cylinders` int DEFAULT NULL,
  `engine_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `engine`
--

INSERT INTO `engine` (`car_id`, `stroke_cycle`, `cylinder_bore`, `intercooler`, `boost_type`, `valves_per_cylinder`, `injection_type`, `cylinder_layout`, `maximum_torque`, `max_power`, `turnover_maximum_torque`, `engine_power`, `capacity`, `engine_type`, `nb_cylinders`, `engine_id`) VALUES
(1, 90, 84, 'Present', 'Twin-scroll', 4, 'direct injection', 'Inline', 330, 5000, 1750, 200, 1995, 'Gasoline', 4, 1),
(2, 90, 84, 'Present', 'Twin-scroll', 4, 'direct injection', 'Inline', 400, 5250, 2250, 280, 1995, 'Gasoline', 4, 2),
(3, 76, 74, 'Present', 'Turbo', 4, 'direct injection', 'Inline', 200, 5500, 3500, 116, 999, 'Gasoline', 3, 3),
(4, 0, 0, '0', 'Turbo', 4, 'Common Rail', 'V-type', 400, 5000, 3750, 218, 2967, 'Diesel', 6, 4),
(5, 0, 0, 'Present', 'Turbo', 4, 'direct injection', 'Inline', 370, 6500, 4300, 245, 1984, 'Gasoline', 4, 5),
(6, 89, 84, 'Present', 'Turbo', 4, 'direct injection', 'V-type', 500, 6400, 4500, 340, 2995, 'Gasoline', 6, 6),
(7, 0, 0, '0', 'Turbo', 4, 'direct injection', 'V-type', 500, 6400, 4500, 340, 2995, 'Gasoline', 6, 7),
(8, 95, 81, '0', 'turbine', 4, '0', 'inline', 340, 3500, 1750, 150, 1968, 'diesel', 4, 8),
(9, 95, 81, '0', 'turbine', 4, '0', 'inline', 340, 3500, 1750, 150, 1968, 'diesel', 4, 9),
(10, 92, 82, 'Present', 'Turbo', 4, 'direct injection', 'Inline', 370, 6000, 4500, 249, 1984, 'Gasoline', 4, 10),
(11, 0, 0, '0', 'Turbo', 4, 'direct injection', 'V-type', 500, 6400, 4500, 340, 2995, 'Gasoline', 6, 11),
(12, 94, 82, '0', 'Twin-scroll', 4, 'direct injection', 'Inline', 180, 6000, 4250, 109, 1499, 'Gasoline', 3, 12),
(13, 94, 82, '0', 'Turbo', 4, 'direct injection', 'Inline', 220, 6500, 4600, 140, 1499, 'Gasoline', 3, 13),
(14, 94, 82, 'Present', 'Twin-scroll', 4, 'direct injection', 'Inline', 220, 4400, 4300, 136, 1499, 'Gasoline', 3, 14),
(15, 94, 82, '0', 'Turbo', 4, 'direct injection', 'Inline', 270, 5000, 4500, 184, 1997, 'Gasoline', 4, 15),
(16, 94, 82, '0', 'Turbo', 4, 'direct injection', 'Inline', 270, 5000, 4500, 184, 1997, 'Gasoline', 4, 16),
(17, 94, 82, '0', 'Turbo', 4, 'direct injection', 'Inline', 270, 5000, 4500, 184, 1997, 'Gasoline', 4, 17),
(18, 94, 82, '0', 'Turbo', 4, 'direct injection', 'Inline', 270, 6250, 4000, 184, 1998, 'Gasoline', 4, 18),
(19, 94, 82, '0', 'Turbo', 4, 'direct injection', 'Inline', 270, 6250, 4000, 184, 1998, 'Gasoline', 4, 19),
(20, 94, 82, '0', 'Turbo', 4, 'direct injection', 'Inline', 270, 6250, 4000, 184, 1998, 'Gasoline', 4, 20),
(21, 94, 82, 'Present', 'Twin-scroll', 4, 'direct injection', 'Inline', 450, 0, 0, 286, 2998, 'Hybrid', 6, 21),
(22, 0, 0, '0', '0', 0, 'Multi-point fuel injection', 'Inline', 180, 5500, 0, 122, 1971, 'Gasoline', 4, 22),
(23, 0, 0, '0', 'turbine', 4, 'distributed injection (multipoint)', 'inline', 210, 5500, 1750, 147, 1498, 'petrol', 4, 23),
(24, 82, 72, '0', 'Turbo', 4, 'Multi-point fuel injection', 'Inline', 200, 4900, 1850, 138, 1364, 'Gasoline', 4, 24),
(25, 73, 72, '0', 'Turbo', 4, 'Multi-point fuel injection', 'Inline', 150, 5000, 2250, 97, 898, 'Gasoline', 3, 25),
(26, 73, 72, '0', 'Turbo', 4, 'Multi-point fuel injection', 'Inline', 150, 5000, 2250, 97, 898, 'Gasoline', 3, 26),
(27, 73, 72, '0', 'Turbo', 4, 'Multi-point fuel injection', 'Inline', 140, 5000, 2250, 90, 898, 'Gasoline, Gas', 3, 27),
(28, 73, 72, '0', 'Turbo', 4, 'Multi-point fuel injection', 'Inline', 150, 5000, 2250, 97, 898, 'Gasoline', 3, 28),
(29, 0, 0, '0', '0', 2, 'Injector', 'Inline', 102, 5500, 3000, 69, 1242, 'Gasoline', 4, 29),
(30, 84, 72, '0', 'Turbo', 2, 'Common Rail', 'Inline', 180, 4000, 1750, 69, 1248, 'Diesel', 4, 30),
(31, 82, 69, 'Present', 'Turbo', 4, 'direct injection', 'Inline', 190, 4000, 1750, 75, 1248, 'Diesel', 4, 31),
(32, 82, 69, '0', 'turbine', 4, '0', 'inline', 200, 3750, 1500, 95, 1248, 'diesel', 4, 32),
(33, 84, 72, '0', 'turbine', 4, 'distributed injection (multipoint)', 'inline', 215, 5000, 2500, 120, 1368, 'petrol', 4, 33),
(34, 82, 71, 'Present', 'Turbo', 4, 'direct injection', 'Inline', 170, 6000, 4500, 125, 999, 'Gasoline', 3, 34),
(35, 82, 71, 'Present', 'Turbo', 4, 'direct injection', 'Inline', 180, 6300, 4400, 140, 999, 'Gasoline', 3, 35),
(36, 81, 79, '0', '0', 4, 'Multi-point fuel injection', 'Inline', 150, 6000, 4500, 105, 1596, 'Gasoline', 4, 36),
(37, 0, 0, 'Present', 'Turbo', 4, 'direct injection', 'Inline', 240, 5700, 5000, 182, 1500, 'Gasoline', 4, 37),
(38, 94, 86, '0', 'Turbo', 0, 'Common Rail', 'Inline', 385, 3700, 2500, 160, 2198, 'Diesel', 4, 38),
(39, 94, 86, '0', 'Turbo', 0, 'Common Rail', 'Inline', 385, 3700, 2500, 160, 2198, 'Diesel', 4, 39),
(40, 0, 0, '0', 'Turbo', 0, 'Common Rail', 'Inline', 470, 3500, 2750, 200, 3196, 'Diesel', 5, 40),
(41, 0, 0, '0', 'Turbo', 0, 'Common Rail', 'Inline', 470, 3500, 2750, 200, 3196, 'Diesel', 5, 41),
(42, 0, 0, '0', 'none', 2, 'distributed injection (multipoint)', 'inline', 190, 4600, 2400, 110, 2237, 'petrol', 4, 42),
(43, 84, 75, '0', 'Turbo', 4, 'Multi-point fuel injection', 'Inline', 210, 5600, 4500, 150, 1497, 'Gasoline', 4, 43),
(44, 81, 85, '0', '0', 4, 'Multi-point fuel injection', 'Inline', 169, 6100, 5000, 140, 1849, 'Gasoline', 4, 44),
(45, 89, 73, '0', '0', 4, 'Multi-point fuel injection', 'Inline', 141, 5800, 4800, 110, 1497, 'Gasoline', 4, 45),
(46, 89, 73, '0', '0', 4, 'direct injection', 'Inline', 243, 5600, 5000, 190, 1498, 'Gasoline', 4, 46),
(47, 89, 73, '0', '0', 4, 'direct injection', 'Inline', 243, 5600, 5000, 190, 1498, 'Gasoline', 4, 47),
(48, 75, 77, '0', '0', 4, 'Multi-point fuel injection', 'Inline', 136, 6300, 5000, 107, 1396, 'Gasoline', 4, 48),
(49, 75, 77, '0', '0', 4, 'Multi-point fuel injection', 'Inline', 140, 6300, 5000, 107, 1396, 'Gasoline', 4, 49),
(50, 78, 71, 'Present', '0', 4, 'Multi-point fuel injection', 'Inline', 121, 6000, 4000, 78, 1248, 'Gasoline', 4, 50),
(51, 84, 71, '0', 'Turbo', 4, 'direct injection', 'Inline', 172, 6000, 4000, 120, 998, 'Gasoline', 3, 51),
(52, 77, 71, 'Present', '0', 4, 'Multi-point fuel injection', 'Inline', 113, 6000, 4000, 84, 1197, 'Gasoline', 4, 52),
(53, 84, 71, '0', 'Turbo', 4, 'direct injection', 'Inline', 171, 6000, 4000, 120, 998, 'Gasoline', 3, 53),
(54, 96, 85, 'Present', 'Turbo', 4, 'Common Rail', 'Inline', 440, 3800, 2750, 200, 2199, 'Diesel', 4, 54),
(55, 96, 85, 'Present', 'Turbo', 4, 'Common Rail', 'Inline', 440, 3800, 2750, 200, 2199, 'Diesel', 4, 55),
(56, 85, 77, 'Present', 'Turbo', 4, 'direct injection', 'Inline', 265, 5500, 4500, 177, 1591, 'Gasoline', 4, 56),
(57, 0, 0, '0', 'turbine', 0, '0', '0', 0, 0, 0, 230, 1598, 'hybrid', 0, 57),
(58, 0, 0, '0', 'Turbo', 4, 'Multi-point fuel injection', 'Inline', 250, 5500, 2500, 170, 1368, 'Gasoline', 4, 58),
(59, 84, 72, '0', 'compressor', 4, 'distributed injection (multipoint)', 'inline', 250, 5500, 2500, 170, 1368, 'petrol', 4, 59),
(60, 90, 84, '0', 'Turbo', 4, 'direct injection', 'Inline', 400, 5250, 3000, 272, 1995, 'Gasoline', 4, 60),
(62, 84, 71, '0', '0', 4, 'Multi-point fuel injection', 'Inline', 95, 5500, 3750, 67, 998, 'Gasoline', 3, 62),
(63, 78, 71, '0', '0', 4, 'Multi-point fuel injection', 'Inline', 122, 6000, 4000, 84, 1248, 'Gasoline', 4, 63),
(64, 78, 71, '0', '0', 4, 'Multi-point fuel injection', 'Inline', 122, 6000, 4000, 84, 1248, 'Gasoline', 4, 64),
(65, 84, 72, '0', 'none', 4, 'distributed injection (multipoint)', 'inline', 132, 6000, 4000, 100, 1368, 'petrol', 4, 65),
(66, 84, 72, '0', 'none', 4, 'distributed injection (multipoint)', 'inline', 132, 6000, 4000, 100, 1368, 'petrol', 4, 66),
(67, 96, 85, '0', 'Turbo', 4, 'Common Rail', 'Inline', 441, 3800, 2750, 200, 2199, 'Diesel', 4, 67),
(68, 85, 77, '0', 'Twin-scroll', 4, 'direct injection', 'Inline', 265, 5500, 4500, 177, 1591, 'Gasoline', 4, 68),
(69, 80, 76, 'Present', 'Turbo', 2, 'Common Rail', 'Inline', 260, 4000, 2500, 116, 1461, 'Diesel', 4, 69),
(70, 81, 72, 'Present', 'Turbo', 4, 'direct injection', 'Inline', 200, 0, 1460, 136, 1332, 'Gasoline', 4, 70),
(71, 73, 83, 'Present', 'Turbo', 4, 'direct injection', 'Inline', 250, 5300, 4000, 156, 1595, 'Gasoline', 4, 71),
(72, 73, 83, 'Present', 'Turbo', 4, 'direct injection', 'Inline', 250, 5300, 4000, 156, 1595, 'Gasoline', 4, 72),
(73, 0, 0, 'Present', 'Turbo', 4, 'Common Rail', 'Inline', 300, 4600, 2800, 122, 1598, 'Diesel', 4, 73),
(74, 0, 0, 'Present', 'Turbo', 4, 'Common Rail', 'Inline', 260, 4000, 2500, 116, 1461, 'Diesel', 4, 74),
(75, 0, 0, 'Present', 'Turbo', 4, 'direct injection', 'Inline', 200, 5500, 4000, 136, 1332, 'Gasoline', 4, 75),
(76, 0, 0, 'Present', 'Biturbo', 4, 'direct injection', 'Inline', 400, 0, 0, 299, 1991, 'Hybrid', 4, 76),
(77, 0, 0, 'Present', 'Turbo', 4, 'Common Rail', 'Inline', 600, 4600, 3200, 249, 2925, 'Diesel', 6, 77),
(78, 0, 0, 'Present', 'Turbo', 4, 'Common Rail', 'V-type', 620, 3400, 2400, 258, 2987, 'Diesel', 6, 78),
(79, 0, 0, '0', 'Turbo', 4, 'direct injection', 'Inline', 350, 5500, 4000, 211, 1991, 'Hybrid', 4, 79),
(80, 92, 82, '0', 'Turbo', 4, 'direct injection', 'Inline', 700, 4400, 3200, 340, 2925, 'Diesel', 6, 80),
(81, 82, 88, '0', 'Turbo', 4, 'direct injection', 'V-type', 520, 6000, 4200, 367, 2996, 'Gasoline', 6, 81),
(82, 0, 0, '0', 'Turbo', 4, 'Common Rail', 'Inline', 260, 4000, 2500, 109, 1461, 'Diesel', 4, 82),
(83, 0, 0, '0', 'Turbo', 4, 'direct injection', 'Inline', 200, 5000, 4000, 122, 1595, 'Gasoline', 4, 83),
(84, 92, 83, '0', 'turbine', 4, 'direct injection (direct)', 'inline', 370, 5800, 1800, 258, 1991, 'petrol', 4, 84),
(85, 92, 82, '0', 'turbine', 4, '0', 'inline', 700, 3600, 1200, 330, 2925, 'diesel', 6, 85),
(86, 92, 83, '0', 'turbine', 4, 'direct injection (direct)', 'inline', 500, 5500, 1600, 367, 2999, 'petrol', 6, 86),
(87, 0, 0, '0', 'Turbo', 4, 'Common Rail', 'Inline', 500, 4200, 2400, 245, 1950, 'Diesel', 4, 87),
(88, 0, 0, '0', 'Turbo', 4, 'Common Rail', 'Inline', 600, 4600, 3000, 272, 2925, 'Diesel', 6, 88),
(89, 86, 92, '0', '0', 4, 'Multi-point fuel injection', 'V-type', 460, 6000, 5000, 340, 4663, 'Gasoline', 8, 89),
(90, 94, 82, '0', 'Twin-scroll', 4, 'direct injection', 'Inline', 220, 6000, 4300, 136, 1499, 'Gasoline', 3, 90),
(91, 94, 82, '0', 'Twin-scroll', 4, 'direct injection', 'Inline', 220, 6000, 4300, 136, 1499, 'Gasoline', 3, 91),
(92, 94, 82, 'Present', 'Turbo', 4, 'direct injection', 'Inline', 190, 6500, 3600, 102, 1499, 'Gasoline', 3, 92),
(93, 94, 82, 'Present', 'Turbo', 4, 'direct injection', 'Inline', 190, 6500, 3600, 102, 1499, 'Gasoline', 3, 93),
(94, 0, 0, '0', '0', 4, 'Multi-point fuel injection', 'Inline', 197, 6000, 4200, 150, 1998, 'Gasoline', 4, 94),
(95, 0, 0, '0', '0', 4, 'Multi-point fuel injection', 'Inline', 197, 6000, 4200, 150, 1998, 'Gasoline', 4, 95),
(96, 0, 0, 'Present', 'Turbo', 4, 'Common Rail', 'Inline', 380, 3500, 2500, 154, 2442, 'Diesel', 4, 96),
(97, 105, 86, '0', 'turbine', 4, '0', 'inline', 430, 3500, 2500, 181, 2442, 'diesel', 4, 97),
(98, 90, 75, '0', 'none', 4, 'Multi-point fuel injection', 'inline', 100, 4000, 4000, 78, 1193, 'Gasoline', 3, 98),
(99, 76, 91, '0', '0', 4, 'Multi-point fuel injection', 'V-type', 261, 4000, 4000, 178, 2972, 'Gasoline', 6, 99),
(100, 0, 0, 'Present', 'Turbo', 4, 'Common Rail', 'Inline', 430, 3500, 2500, 181, 2442, 'Diesel', 4, 100),
(101, 73, 72, 'Present', 'Turbo', 4, 'direct injection', 'Inline', 190, 4500, 2000, 115, 1197, 'Gasoline', 4, 101),
(102, 73, 72, 'Present', 'Turbo', 4, 'direct injection', 'Inline', 165, 4500, 1750, 115, 1197, 'Gasoline', 4, 102),
(103, 80, 79, 'Present', 'Turbo', 4, 'Common Rail', 'Inline', 290, 4000, 1500, 105, 1589, 'Diesel', 4, 103),
(104, 80, 79, 'Present', 'Turbo', 4, 'Common Rail', 'Inline', 290, 4000, 1500, 105, 1589, 'Diesel', 4, 104),
(105, 72, 73, '0', '0', 4, 'Multi-point fuel injection', 'Inline', 115, 5600, 4000, 70, 1229, 'Gasoline', 4, 105),
(106, 82, 75, '0', 'Turbo', 4, 'direct injection', 'Inline', 200, 6000, 4900, 140, 1364, 'Gasoline', 4, 106),
(107, 90, 75, '0', 'none', 4, 'Multi-point fuel injection', 'inline', 118, 2750, 2750, 82, 1199, 'Gasoline', 3, 107),
(108, 85, 77, '0', 'turbine', 4, 'direct injection (direct)', 'inline', 360, 2500, 2500, 225, 1598, 'hybrid', 4, 108),
(109, 0, 0, '0', 'turbine', 0, '0', '0', 520, 2500, 0, 300, 1598, 'hybrid', 0, 109),
(110, 90, 75, '0', 'Turbo', 4, 'direct injection', 'Inline', 230, 5500, 1750, 130, 1199, 'Gasoline', 3, 110),
(111, 85, 77, 'Present', 'Turbo', 4, 'direct injection', 'Inline', 240, 6000, 1400, 165, 1598, 'Gasoline', 4, 111),
(112, 0, 0, 'Present', 'Turbo', 4, 'Common Rail', 'Inline', 300, 4000, 2000, 120, 1997, 'Diesel', 4, 112),
(113, 88, 82, 'Present', 'Turbo', 2, 'Common Rail', 'Inline', 205, 4000, 1900, 75, 1560, 'Diesel', 4, 113),
(114, 0, 0, '0', 'Turbo', 4, 'Common Rail', 'Inline', 230, 3500, 1750, 75, 1499, 'Diesel', 4, 114),
(115, 88, 85, '0', 'Turbo', 4, 'Common Rail', 'Inline', 370, 4000, 2000, 150, 1997, 'Diesel', 4, 115),
(116, 0, 0, '0', '0', 4, 'Multi-point fuel injection', 'Inline', 91, 5500, 4250, 68, 999, 'Gasoline', 3, 116),
(117, 81, 79, 'Present', 'Turbo', 4, 'direct injection', 'Inline', 280, 6000, 2400, 205, 1616, 'Gasoline', 4, 117),
(118, 0, 0, '0', '0', 4, 'Multi-point fuel injection', 'Inline', 97, 6300, 3500, 73, 999, 'Gasoline', 3, 118),
(119, 80, 74, 'Present', 'Turbo', 4, 'direct injection', 'Inline', 250, 6000, 3500, 150, 1395, 'Gasoline', 4, 119),
(120, 80, 74, 'Present', 'Turbo', 4, 'direct injection', 'Inline', 250, 6000, 3500, 150, 1395, 'Gasoline', 4, 120),
(121, 76, 74, '0', 'Turbo', 4, 'direct injection', 'Inline', 175, 5500, 3500, 95, 999, 'Gasoline', 3, 121),
(122, 80, 74, '0', 'Turbine + compressor', 4, 'direct injection', 'Inline', 250, 6000, 3500, 140, 1395, 'Gasoline', 4, 122),
(123, 85, 74, '0', 'turbine', 4, 'combined injection (direct-distributed)', 'inline', 250, 5000, 1500, 150, 1498, 'petrol', 4, 123),
(124, 76, 74, '0', 'Turbo', 4, 'direct injection', 'Inline', 160, 5500, 3500, 95, 999, 'Gasoline', 3, 124),
(125, 76, 74, '0', 'Turbo', 4, 'direct injection', 'Inline', 200, 5500, 3500, 115, 999, 'Gasoline', 3, 125),
(126, 85, 74, 'Present', 'Turbo', 4, 'direct injection', 'Inline', 200, 5500, 4500, 150, 1498, 'Gasoline', 4, 126),
(127, 0, 0, '0', 'Turbo', 4, 'direct injection', 'Inline', 250, 6000, 3500, 150, 1395, 'Gasoline', 4, 127),
(128, 0, 0, '0', 'Turbo', 4, 'direct injection', 'Inline', 250, 6000, 3500, 150, 1395, 'Gasoline', 4, 128),
(129, 92, 82, '0', 'turbine', 4, 'combined injection (direct-distributed)', 'inline', 370, 5000, 1600, 245, 1984, 'petrol', 4, 129),
(130, 76, 74, '0', 'turbine', 4, 'direct injection (direct)', 'inline', 175, 5000, 2000, 95, 999, 'petrol', 3, 130),
(131, 0, 0, '0', '0', 0, '0', '0', 0, 0, 0, 0, 0, '0', 0, 131),
(132, 0, 0, '0', '0', 0, '0', '0', 0, 0, 0, 0, 0, '0', 0, 132),
(133, 0, 0, 'Present', 'Turbo', 2, 'direct injection', 'Inline', 250, 4000, 2250, 120, 2874, 'Diesel', 5, 133),
(134, 92, 86, '0', '0', 0, 'direct injection', 'Inline', 420, 4000, 2600, 181, 2157, 'Diesel', 4, 134),
(135, 79, 73, '0', 'none', 4, 'Multi-point fuel injection', 'inline', 90, 3500, 3500, 68, 998, 'Gasoline', 3, 135),
(136, 85, 74, '0', 'none', 4, 'distributed injection (multipoint)', 'inline', 130, 6000, 4000, 102, 1462, 'petrol', 4, 136),
(137, 0, 0, '0', '0', 0, '0', '0', 0, 0, 0, 0, 0, '0', 0, 137),
(138, 0, 0, '0', '0', 0, '0', '0', 0, 0, 0, 0, 0, '0', 0, 138),
(139, 103, 96, '0', 'Turbo', 2, 'Multi-point fuel injection', 'Inline', 289, 3600, 2000, 130, 2982, 'Diesel', 4, 139),
(140, 0, 0, 'Present', 'Turbo', 4, 'Common Rail', 'Inline', 400, 3400, 2000, 150, 2393, 'Diesel', 4, 140),
(141, 100, 94, '0', '0', 2, 'Multi-point fuel injection', 'Inline', 285, 3800, 2200, 130, 4164, 'Diesel', 6, 141),
(142, 100, 94, '0', '0', 2, 'Multi-point fuel injection', 'Inline', 285, 3800, 2200, 130, 4164, 'Diesel', 6, 142),
(143, 103, 92, 'Present', 'Turbo', 4, 'Common Rail', 'Inline', 420, 3400, 2600, 177, 2755, 'Diesel', 4, 143),
(144, 84, 71, '0', '0', 4, 'Multi-point fuel injection', 'Inline', 95, 6000, 4300, 69, 998, 'Gasoline', 3, 144),
(145, 0, 0, '0', '0', 0, '0', '0', 0, 0, 0, 0, 0, '0', 0, 145),
(146, 0, 0, '0', 'Turbo', 4, 'Common Rail', 'Inline', 340, 3500, 2250, 140, 1968, 'Diesel', 4, 146),
(147, 0, 0, 'Present', 'Turbo', 4, 'direct injection', 'Inline', 225, 4000, 2250, 75, 1598, 'Diesel', 4, 147),
(148, 0, 0, 'Present', 'Turbo', 4, 'Common Rail', 'Inline', 320, 4200, 2500, 140, 1986, 'Diesel', 4, 148),
(149, 0, 0, 'Present', 'Turbo', 4, 'direct injection', 'Inline', 320, 4200, 2500, 140, 1986, 'Diesel', 4, 149),
(150, 0, 0, 'Present', 'Turbo', 0, 'direct injection', 'Inline', 200, 6000, 4000, 125, 1395, 'Gasoline', 4, 150),
(151, 0, 0, '0', 'Turbo', 4, 'direct injection', 'Inline', 350, 6000, 4000, 204, 1984, 'Gasoline', 4, 151),
(152, 76, 74, '0', 'Turbo', 4, 'direct injection', 'Inline', 175, 5500, 3500, 95, 999, 'Gasoline', 3, 152),
(153, 76, 74, '0', 'Turbo', 4, 'direct injection', 'Inline', 200, 5500, 3500, 115, 999, 'Gasoline', 3, 153),
(154, 76, 74, '0', 'Turbo', 4, 'direct injection', 'Inline', 175, 5500, 3500, 95, 999, 'Gasoline', 3, 154),
(155, 0, 0, '0', 'Turbo', 4, 'direct injection', 'Inline', 250, 6000, 3500, 150, 1395, 'Gasoline', 4, 155),
(156, 93, 82, 'Present', 'Turbine + compressor', 4, 'direct injection', 'Inline', 400, 5700, 5400, 320, 1969, 'Gasoline', 4, 156),
(157, 93, 82, 'Present', 'Turbine + compressor', 4, 'direct injection', 'Inline', 430, 5800, 4500, 328, 1969, 'Hybrid', 4, 157),
(158, 93, 82, '0', 'Turbo', 4, 'direct injection', 'Inline', 400, 5700, 5400, 320, 1969, 'Gasoline', 4, 158),
(159, 93, 82, 'Present', 'Turbine + compressor', 4, 'direct injection', 'Inline', 400, 5700, 5400, 320, 1969, 'Hybrid', 4, 159),
(160, 93, 82, 'Present', 'Turbo', 4, 'direct injection', 'Inline', 265, 5000, 3840, 156, 1477, 'Gasoline', 3, 160),
(161, 93, 82, 'Present', 'Turbo', 4, 'direct injection', 'Inline', 350, 5500, 4800, 249, 1969, 'Gasoline', 4, 161),
(162, 82, 93, '0', 'Turbo', 4, 'direct injection', 'Inline', 400, 5700, 5400, 320, 1969, 'Gasoline', 4, 162),
(163, 82, 93, '0', 'Turbo', 0, 'direct injection', 'Inline', 400, 5700, 5400, 320, 1969, 'Hybrid', 4, 163),
(164, 93, 82, 'Present', 'Turbo', 4, 'Multi-point fuel injection', 'Inline', 400, 5700, 5400, 320, 1969, 'Gasoline', 4, 164),
(165, 93, 82, 'Present', 'Turbo', 4, 'Multi-point fuel injection', 'Inline', 400, 5700, 5400, 320, 1969, 'Hybrid', 4, 165);

-- --------------------------------------------------------

--
-- Table structure for table `gearbox_handling`
--

CREATE TABLE `gearbox_handling` (
  `fk_car_id` int DEFAULT NULL,
  `gearbox_type` varchar(100) DEFAULT NULL,
  `nb_gear` int DEFAULT NULL,
  `drive_wheels` varchar(100) DEFAULT NULL,
  `turning_circle` float DEFAULT NULL,
  `gearbox_handling_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `gearbox_handling`
--

INSERT INTO `gearbox_handling` (`fk_car_id`, `gearbox_type`, `nb_gear`, `drive_wheels`, `turning_circle`, `gearbox_handling_id`) VALUES
(1, 'Automatic', 8, 'Rear wheel drive', 10.8, 1),
(2, 'Automatic', 8, 'Four wheel drive (4WD)', 11.7, 2),
(3, 'Manual', 6, 'Front wheel drive', 10.5, 3),
(4, 'robot', 7, 'All wheel drive (AWD)', 11.5, 4),
(5, 'robot', 7, 'All wheel drive (AWD)', 12.1, 5),
(6, 'robot', 7, 'All wheel drive (AWD)', 12.1, 6),
(7, 'robot', 7, 'All wheel drive (AWD)', 12.2, 7),
(8, 'robot', 7, 'full', 0, 8),
(9, 'Manual', 6, 'Front wheel drive', 0, 9),
(10, 'robot', 7, 'All wheel drive (AWD)', 11.7, 10),
(11, 'Automatic', 8, 'All wheel drive (AWD)', 0, 11),
(12, 'Manual', 6, 'Rear wheel drive', 10.9, 12),
(13, 'Manual', 6, 'Front wheel drive', 11.4, 13),
(14, 'Manual', 6, 'Rear wheel drive', 10.9, 14),
(15, 'Manual', 6, 'Rear wheel drive', 11.8, 15),
(16, 'Automatic', 8, 'Rear wheel drive', 11.8, 16),
(17, 'Manual', 6, 'All wheel drive (AWD)', 11.8, 17),
(18, 'Manual', 6, 'Rear wheel drive', 0, 18),
(19, 'Automatic', 8, 'Rear wheel drive', 0, 19),
(20, 'Manual', 6, 'All wheel drive (AWD)', 0, 20),
(21, 'Automatic', 8, 'All wheel drive (AWD)', 12.6, 21),
(24, 'Automatic', 6, 'Front wheel drive', 0, 24),
(25, 'Manual', 5, 'Front wheel drive', 10.82, 25),
(26, 'Manual', 5, 'Front wheel drive', 10.68, 26),
(27, 'Manual', 5, 'Front wheel drive', 10.5, 27),
(28, 'Manual', 5, 'Front wheel drive', 10.5, 28),
(29, 'robot', 5, 'Front wheel drive', 9.2, 29),
(30, 'Manual', 5, 'Front wheel drive', 0, 30),
(31, 'Manual', 5, 'Front wheel drive', 9.95, 31),
(32, 'Manual', 5, 'Front wheel drive', 0, 32),
(33, 'Manual', 6, 'Front wheel drive', 0, 33),
(34, 'Automatic', 6, 'Front wheel drive', 11.7, 34),
(35, 'Manual', 6, 'Front wheel drive', 11.7, 35),
(36, 'robot', 6, 'Front wheel drive', 0, 36),
(37, 'Automatic', 6, 'Four wheel drive (4WD)', 11.1, 37),
(38, 'Automatic', 6, 'Four wheel drive (4WD)', 12.4, 38),
(39, 'Manual', 6, 'Four wheel drive (4WD)', 12.4, 39),
(40, 'Automatic', 6, 'Four wheel drive (4WD)', 12.4, 40),
(41, 'Manual', 6, 'Four wheel drive (4WD)', 12.4, 41),
(42, 'Manual', 5, 'Rear wheel drive', 0, 42),
(43, 'Automatic', 6, 'Front wheel drive', 0, 43),
(44, 'Automatic', 5, 'Front wheel drive', 11.3, 44),
(48, 'Automatic', 4, 'Front wheel drive', 10.4, 48),
(49, 'Manual', 5, 'Front wheel drive', 10.4, 49),
(50, 'Manual', 5, 'Front wheel drive', 9.5, 50),
(51, 'Manual', 6, 'Front wheel drive', 10.2, 51),
(52, 'Manual', 5, 'Front wheel drive', 10.4, 52),
(53, 'Manual', 6, 'Front wheel drive', 10.6, 53),
(54, 'Automatic', 8, 'Front wheel drive', 0, 54),
(55, 'Automatic', 8, 'Four wheel drive (4WD)', 0, 55),
(56, 'robot', 7, 'Four wheel drive (4WD)', 0, 56),
(57, 'Automatic', 6, 'full', 0, 57),
(58, 'Automatic', 9, 'All wheel drive (AWD)', 11, 58),
(59, 'Automatic', 9, 'full', 0, 59),
(60, 'Automatic', 8, 'Four wheel drive (4WD)', 0, 60),
(61, 'Automatic', 4, 'Front wheel drive', 9.8, 61),
(62, 'Manual', 5, 'Front wheel drive', 9.4, 62),
(63, 'Automatic', 4, 'Front wheel drive', 9.4, 63),
(64, 'Manual', 5, 'Front wheel drive', 10.2, 64),
(65, 'Automatic', 6, 'Front wheel drive', 0, 65),
(66, 'Manual', 6, 'Front wheel drive', 0, 66),
(67, 'Automatic', 8, 'Front wheel drive', 11.34, 67),
(68, 'robot', 7, 'Four wheel drive (4WD)', 11, 68),
(69, 'robot', 7, 'Front wheel drive', 0, 69),
(70, 'Manual', 6, 'Front wheel drive', 0, 70),
(71, 'Automatic', 9, 'Rear wheel drive', 11.22, 71),
(72, 'Automatic', 9, 'Rear wheel drive', 0, 72),
(73, 'Automatic', 9, 'Rear wheel drive', 0, 73),
(74, 'Manual', 6, 'Front wheel drive', 0, 74),
(75, 'Manual', 6, 'Front wheel drive', 0, 75),
(76, 'Automatic', 9, 'Four wheel drive (4WD)', 0, 76),
(77, 'Automatic', 9, 'Four wheel drive (4WD)', 0, 77),
(78, 'Automatic', 9, 'Rear wheel drive', 11.6, 78),
(79, 'Automatic', 9, 'Rear wheel drive', 11.6, 79),
(80, 'Automatic', 9, 'All wheel drive (AWD)', 0, 80),
(81, 'Automatic', 9, 'All wheel drive (AWD)', 11.9, 81),
(82, 'Manual', 6, 'Front wheel drive', 11.84, 82),
(83, 'Manual', 6, 'Front wheel drive', 11.84, 83),
(84, 'Automatic', 9, 'full', 0, 84),
(85, 'Automatic', 9, 'full', 0, 85),
(86, 'Automatic', 9, 'full', 0, 86),
(87, 'Automatic', 9, 'All wheel drive (AWD)', 0, 87),
(88, 'Automatic', 9, 'All wheel drive (AWD)', 0, 88),
(89, 'Automatic', 7, 'All wheel drive (AWD)', 12.2, 89),
(90, 'Automatic', 6, 'Front wheel drive', 11.4, 90),
(91, 'Manual', 6, 'Front wheel drive', 11.4, 91),
(92, 'robot', 7, 'Front wheel drive', 10.8, 92),
(93, 'robot', 7, 'Front wheel drive', 10.8, 93),
(94, 'Manual', 5, 'Front wheel drive', 10.6, 94),
(95, 'Manual', 5, 'All wheel drive (AWD)', 10.6, 95),
(96, 'Manual', 6, 'All wheel drive (AWD)', 11.8, 96),
(97, 'Automatic', 6, 'full', 0, 97),
(98, 'Manual', 5, 'Front wheel drive', 0, 98),
(99, 'Manual', 5, 'Four wheel drive (4WD)', 11.4, 99),
(100, 'Automatic', 8, 'All wheel drive (AWD)', 11.2, 100),
(101, 'Manual', 6, 'Front wheel drive', 10.7, 101),
(103, 'Manual', 6, 'Front wheel drive', 11.2, 103),
(104, 'Manual', 6, 'Front wheel drive', 12.5, 104),
(105, 'Manual', 5, 'Front wheel drive', 10.5, 105),
(106, 'Manual', 6, 'Front wheel drive', 11.5, 106),
(107, 'Manual', 5, 'Front wheel drive', 0, 107),
(108, 'Automatic', 8, 'Front wheel drive', 0, 108),
(109, 'Automatic', 8, 'full', 0, 109),
(110, 'Manual', 6, 'Front wheel drive', 10.4, 110),
(111, 'Automatic', 6, 'Front wheel drive', 11.2, 111),
(112, 'Manual', 6, 'Front wheel drive', 12.2, 112),
(113, 'Manual', 5, 'Front wheel drive', 11.3, 113),
(114, 'Manual', 5, 'Front wheel drive', 10.8, 114),
(115, 'Manual', 6, 'Front wheel drive', 12.9, 115),
(116, 'Manual', 5, 'Front wheel drive', 0, 116),
(117, 'Manual', 7, 'Front wheel drive', 0, 117),
(118, 'Manual', 5, 'Front wheel drive', 10, 118),
(119, 'Manual', 6, 'Front wheel drive', 10.8, 119),
(120, 'Manual', 6, 'Four wheel drive (4WD)', 10.8, 120),
(121, 'Manual', 5, 'Front wheel drive', 10.6, 121),
(122, 'Manual', 6, 'Front wheel drive', 10.2, 122),
(123, 'Manual', 6, 'Front wheel drive', 0, 123),
(124, 'Manual', 5, 'Front wheel drive', 10.4, 124),
(125, 'robot', 7, 'Front wheel drive', 0, 125),
(126, 'robot', 7, 'Front wheel drive', 0, 126),
(127, 'robot', 6, 'Front wheel drive', 12.2, 127),
(128, 'robot', 7, 'Front wheel drive', 0, 128),
(129, 'robot', 7, 'Front wheel drive', 0, 129),
(130, 'Manual', 5, 'Front wheel drive', 0, 130),
(133, 'Automatic', 4, 'Four wheel drive (4WD)', 0, 133),
(134, 'Automatic', 7, 'Four wheel drive (4WD)', 11, 134),
(135, 'Manual', 5, 'Front wheel drive', 0, 135),
(136, 'Manual', 5, 'full', 0, 136),
(139, 'Automatic', 4, 'Front wheel drive', 11, 139),
(140, 'Manual', 6, 'All wheel drive (AWD)', 0, 140),
(141, 'Manual', 5, 'All wheel drive (AWD)', 15, 141),
(142, 'Manual', 5, 'All wheel drive (AWD)', 13.2, 142),
(143, 'Manual', 6, 'All wheel drive (AWD)', 11.6, 143),
(144, 'Manual', 5, 'Front wheel drive', 9.6, 144),
(146, 'Manual', 6, 'Four wheel drive (4WD)', 13, 146),
(147, 'Manual', 5, 'Front wheel drive', 11.1, 147),
(148, 'robot', 6, 'Front wheel drive', 11.1, 148),
(149, 'Manual', 6, 'Front wheel drive', 11.1, 149),
(150, 'Manual', 6, 'Front wheel drive', 10.9, 150),
(151, 'robot', 7, 'All wheel drive (AWD)', 11.9, 151),
(152, 'Manual', 5, 'Front wheel drive', 10.6, 152),
(153, 'Manual', 6, 'Front wheel drive', 10.6, 153),
(154, 'Manual', 5, 'Front wheel drive', 10.6, 154),
(155, 'Manual', 6, 'Front wheel drive', 11.9, 155),
(156, 'Automatic', 8, 'All wheel drive (AWD)', 11, 156),
(157, 'Automatic', 8, 'All wheel drive (AWD)', 11, 157),
(158, 'Automatic', 8, 'All wheel drive (AWD)', 11.4, 158),
(159, 'Automatic', 8, 'All wheel drive (AWD)', 11.8, 159),
(160, 'Manual', 6, 'Front wheel drive', 11.4, 160),
(161, 'Automatic', 8, 'Four wheel drive (4WD)', 11.4, 161),
(162, 'Automatic', 8, 'All wheel drive (AWD)', 11.4, 162),
(163, 'Automatic', 8, 'All wheel drive (AWD)', 11.4, 163),
(164, 'Automatic', 8, 'Four wheel drive (4WD)', 11.9, 164),
(165, 'Automatic', 8, 'Four wheel drive (4WD)', 11.9, 165);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int NOT NULL,
  `account_id` int DEFAULT NULL,
  `order_time` timestamp(2) NULL DEFAULT NULL,
  `status` enum('SHIPPED','NOT SHIPPED') DEFAULT 'NOT SHIPPED',
  `car_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `suspension_brakes`
--

CREATE TABLE `suspension_brakes` (
  `car_id_fk` int DEFAULT NULL,
  `rear_brakes` varchar(50) DEFAULT NULL,
  `front_brakes` varchar(50) DEFAULT NULL,
  `back_suspension` varchar(200) DEFAULT NULL,
  `front_suspension` varchar(200) DEFAULT NULL,
  `suspension_brakes_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `suspension_brakes`
--

INSERT INTO `suspension_brakes` (`car_id_fk`, `rear_brakes`, `front_brakes`, `back_suspension`, `front_suspension`, `suspension_brakes_id`) VALUES
(1, 'ventilated disc', 'ventilated disc', 'Independent, Multi wishbone, Dampers, Helical springs', 'Independent, Double wishbone, Dampers, Helical springs, Stabilizer bar', 1),
(2, 'Disc', 'ventilated disc', 'Independent, Multi wishbone, Dampers, Helical springs', 'Independent, McPherson Struts, Dampers, Helical springs, Stabilizer bar', 2),
(3, 'Disc', 'ventilated disc', 'Independent, Lever, Dampers, Helical springs', 'Independent, McPherson Struts, Dampers, Helical springs, Stabilizer bar', 3),
(4, 'Disc', 'ventilated disc', 'Independent, Multi wishbone', 'Independent, Multi wishbone', 4),
(5, 'ventilated disc', 'ventilated disc', 'Independent, Multi wishbone, Stabilizer bar', 'Independent, Multi wishbone, Stabilizer bar', 5),
(6, 'ventilated disc', 'ventilated disc', 'Independent, Multi wishbone, Stabilizer bar', 'Independent, Multi wishbone, Stabilizer bar', 6),
(7, 'Disc', 'ventilated disc', 'Independent, Multi wishbone', 'Independent, McPherson Struts, Dampers, Stabilizer bar', 7),
(8, 'Disc', 'Disc ventilated', 'Independent, spring', 'Independent, spring', 8),
(9, 'Disc', 'Disc ventilated', 'semi-independent, spring', 'Independent, spring', 9),
(10, 'ventilated disc', 'ventilated disc', 'Independent, Multi wishbone', 'Independent, spring, Stabilizer bar', 10),
(11, 'ventilated disc', 'ventilated disc', 'Independent, Multi wishbone, Dampers, Helical springs, Stabilizer bar', 'Independent, Double wishbone, Dampers, Helical springs, Stabilizer bar', 11),
(12, 'ventilated disc', 'ventilated disc', 'Independent, spring', 'Independent, spring', 12),
(13, 'ventilated disc', 'ventilated disc', 'Independent, Multi wishbone, Dampers, Helical springs', 'Independent, McPherson Struts, Dampers, Helical springs, Stabilizer bar', 13),
(14, 'Disc', 'ventilated disc', 'Independent, Multi wishbone', 'Independent, Multi wishbone, Stabilizer bar', 14),
(15, 'ventilated disc', 'ventilated disc', 'Independent, Multi wishbone', 'Independent, Multi wishbone', 15),
(16, 'ventilated disc', 'ventilated disc', 'Independent, Multi wishbone', 'Independent, Multi wishbone', 16),
(17, 'ventilated disc', 'ventilated disc', 'Independent, Multi wishbone', 'Independent, Multi wishbone', 17),
(18, 'ventilated disc', 'ventilated disc', 'Independent, spring', 'Independent, spring', 18),
(19, 'ventilated disc', 'ventilated disc', 'Independent, spring', 'Independent, spring', 19),
(20, 'ventilated disc', 'ventilated disc', 'Independent, spring', 'Independent, spring', 20),
(21, 'ventilated disc', 'ventilated disc', 'Independent, Multi wishbone, Dampers, Helical springs, Stabilizer bar', 'Independent, Double wishbone, Dampers, Helical springs, Stabilizer bar', 21),
(22, 'Disc', 'ventilated disc', 'Independent, Multi wishbone', 'Independent, McPherson Struts', 22),
(23, 'Disc', 'Disc ventilated', 'Independent, spring', 'Independent, spring', 23),
(24, 'drum', 'ventilated disc', 'Torsion beam', 'McPherson Struts', 24),
(25, 'drum', 'Disc', 'Semi-dependent, Dampers, Helical springs', 'Independent, McPherson Struts, Dampers, Helical springs, Stabilizer bar', 25),
(26, 'drum', 'ventilated disc', 'Semi-dependent, Dampers, Helical springs', 'Independent, McPherson Struts, Dampers, Helical springs, Stabilizer bar', 26),
(27, 'drum', 'ventilated disc', 'Semi-dependent, Dampers, Helical springs', 'Independent, McPherson Struts, Dampers, Helical springs, Stabilizer bar', 27),
(28, 'drum', 'ventilated disc', 'Semi-dependent, Dampers, Helical springs', 'Independent, McPherson Struts, Dampers, Helical springs, Stabilizer bar', 28),
(29, 'drum', 'Disc', 'Independent, Multi wishbone', 'Independent, McPherson Struts', 29),
(30, 'drum', 'ventilated disc', 'Spring', 'Independent, McPherson Struts, spring, Stabilizer bar', 30),
(31, 'drum', 'Disc', 'Solid axle', 'Independent, McPherson Struts', 31),
(32, 'Disc', 'Disc ventilated', 'semi-independent, spring', 'Independent, spring', 32),
(33, 'Disc', 'Disc ventilated', 'semi-independent, spring', 'Independent, spring', 33),
(34, 'drum', 'ventilated disc', 'Independent, Dampers, Helical springs', 'Independent, McPherson Struts, Dampers, Helical springs, Stabilizer bar', 34),
(35, 'drum', 'ventilated disc', 'Independent, Dampers, Helical springs', 'Independent, McPherson Struts, Dampers, Helical springs, Stabilizer bar', 35),
(36, 'Disc', 'ventilated disc', 'Independent, Multi wishbone', 'Independent, spring', 36),
(37, 'Disc', 'ventilated disc', 'Independent, Multi wishbone, spring', 'Independent, McPherson Struts, spring', 37),
(38, 'drum', 'ventilated disc', 'Spring', 'Independent, Double wishbone, Dampers, Helical springs, Stabilizer bar', 38),
(39, 'drum', 'ventilated disc', 'Spring', 'Independent, Double wishbone, Dampers, Helical springs, Stabilizer bar', 39),
(40, 'drum', 'ventilated disc', 'Spring', 'Independent, Double wishbone, Dampers, Helical springs, Stabilizer bar', 40),
(41, 'drum', 'ventilated disc', 'Spring', 'Independent, Double wishbone, Dampers, Helical springs, Stabilizer bar', 41),
(42, 'drum', 'Disc', 'Dependent, spring', 'Independent, Torsion', 42),
(43, 'Disc', 'Disc', 'Independent, Double wishbone', 'Independent, McPherson Struts', 43),
(44, 'Disc', 'ventilated disc', 'Independent, Multi wishbone, Stabilizer bar', 'Independent, Double wishbone, Dampers, Stabilizer bar', 44),
(45, 'Disc', 'ventilated disc', 'Torsion beam, spring', 'Independent, McPherson Struts', 45),
(46, 'Disc', 'ventilated disc', 'Independent, Multi wishbone', 'Independent, McPherson Struts', 46),
(47, 'Disc', 'ventilated disc', 'Independent, Multi wishbone', 'Independent, McPherson Struts', 47),
(48, 'drum', 'ventilated disc', 'Semi-dependent, Dampers, spring', 'Independent, McPherson Struts, Stabilizer bar', 48),
(49, 'drum', 'ventilated disc', 'Semi-dependent, Dampers, spring', 'Independent, McPherson Struts, Stabilizer bar', 49),
(50, 'drum', 'ventilated disc', 'Independent, Multi wishbone, spring, Stabilizer bar', 'Independent, McPherson Struts, spring, Stabilizer bar', 50),
(51, 'Disc', 'ventilated disc', 'Semi-dependent, Dampers, Helical springs', 'Independent, McPherson Struts, Dampers, Helical springs, Stabilizer bar', 51),
(52, 'Disc', 'ventilated disc', 'Rifled twisted beam', 'Independent, McPherson Struts, spring, Stabilizer bar', 52),
(53, 'Disc', 'ventilated disc', 'Independent, Multi wishbone, Stabilizer bar', 'Independent, McPherson Struts, spring, Stabilizer bar', 53),
(54, 'Disc', 'ventilated disc', 'Independent, Multi wishbone, Dampers, Helical springs, Stabilizer bar', 'Independent, McPherson Struts, Dampers, Helical springs, Stabilizer bar', 54),
(55, 'Disc', 'ventilated disc', 'Independent, Multi wishbone, Dampers, Helical springs, Stabilizer bar', 'Independent, McPherson Struts, Dampers, Helical springs, Stabilizer bar', 55),
(56, 'Disc', 'ventilated disc', 'Independent, Multi wishbone, Dampers, Helical springs, Stabilizer bar', 'Independent, McPherson Struts, Dampers, Helical springs, Stabilizer bar', 56),
(57, 'Disc', 'Disc ventilated', 'Independent, spring', 'Independent, spring', 57),
(58, 'Disc', 'Disc', 'Independent, Lever, spring', 'Independent, McPherson Struts, Stabilizer bar', 58),
(59, 'Disc', 'Disc ventilated', 'Independent, spring', 'Independent, spring', 59),
(60, 'Disc', 'ventilated disc', 'Axle, Dampers, Helical springs', 'Axle, Dampers, Helical springs', 60),
(61, 'drum', 'Disc', 'Semi-dependent, Hydraulic element, Dampers, spring', 'Independent, McPherson Struts, spring, Stabilizer bar', 61),
(62, 'drum', 'Disc', 'Semi-dependent, Dampers, spring', 'Independent, McPherson Struts, spring, Stabilizer bar', 62),
(63, 'drum', 'Disc', 'Semi-dependent, Dampers, spring', 'Independent, McPherson Struts, spring, Stabilizer bar', 63),
(64, 'Disc', 'ventilated disc', 'Semi-dependent, Torsion beam, Dampers, Helical springs', 'Independent, McPherson Struts, Dampers, Helical springs, Stabilizer bar', 64),
(65, 'drum', 'Disc ventilated', 'semi-independent, spring', 'Independent, spring', 65),
(66, 'drum', 'Disc ventilated', 'semi-independent, spring', 'Independent, spring', 66),
(67, 'Disc', 'ventilated disc', 'Independent, Multi wishbone, Dampers, Helical springs', 'Independent, McPherson Struts, Dampers, Helical springs, Stabilizer bar', 67),
(68, 'Disc', 'ventilated disc', 'Independent, Lever, Dampers, Helical springs', 'Independent, McPherson Struts, Dampers, Helical springs, Stabilizer bar', 68),
(69, 'Disc', 'ventilated disc', 'Semi-dependent, Beam, Dampers, Helical springs', 'Independent, McPherson Struts, Dampers, Helical springs, Stabilizer bar', 69),
(70, 'Disc', 'ventilated disc', 'Semi-dependent, Beam, Dampers, Helical springs', 'Independent, McPherson Struts, Dampers, Helical springs, Stabilizer bar', 70),
(71, 'Disc', 'ventilated disc', 'Independent, Multi wishbone, Dampers, Helical springs, Stabilizer bar', 'Independent, Dampers, Helical springs, Stabilizer bar', 71),
(72, 'Disc', 'ventilated disc', 'Independent, Multi wishbone, Dampers, Helical springs, Stabilizer bar', 'Independent, Dampers, Helical springs, Stabilizer bar', 72),
(73, 'Disc', 'ventilated disc', 'Independent, Multi wishbone, Dampers, Helical springs, Stabilizer bar', 'Independent, Dampers, Helical springs, Stabilizer bar', 73),
(74, 'Disc', 'ventilated disc', 'Dampers, Helical springs', 'Independent, Dampers, Helical springs, Stabilizer bar', 74),
(75, 'Disc', 'ventilated disc', 'Dampers, Helical springs', 'Independent, Dampers, Helical springs, Stabilizer bar', 75),
(76, 'ventilated disc', 'ventilated disc', 'Independent, Multi wishbone, Dampers, Helical springs', 'Independent, Double wishbone, Dampers, Helical springs', 76),
(77, 'ventilated disc', 'ventilated disc', 'Independent, Multi wishbone, Dampers, Helical springs', 'Independent, Double wishbone, Dampers, Helical springs', 77),
(78, 'ventilated disc', 'ventilated disc', 'Independent, Multi wishbone', 'Independent, Multi wishbone', 78),
(79, 'ventilated disc', 'ventilated disc', 'Independent, spring', 'Independent, spring', 79),
(80, 'ventilated disc', 'ventilated disc', 'Independent, spring', 'Independent, spring', 80),
(81, 'ventilated disc', 'ventilated disc, perforated', 'Independent, spring', 'Independent, spring', 81),
(82, 'Disc', 'ventilated disc', 'Independent, Multi wishbone, spring', 'Independent, McPherson Struts, spring, Stabilizer bar', 82),
(83, 'Disc', 'ventilated disc', 'Independent, Multi wishbone, spring', 'Independent, McPherson Struts, spring, Stabilizer bar', 83),
(84, 'Disc ventilated', 'Disc ventilated', 'Independent, spring', 'Independent, spring', 84),
(85, 'Disc ventilated', 'Disc ventilated', 'Independent, spring', 'Independent, spring', 85),
(86, 'Disc ventilated', 'Disc ventilated', 'Independent, spring', 'Independent, spring', 86),
(87, 'ventilated disc', 'ventilated disc', 'Independent, Lever, Dampers, Helical springs, Stabilizer bar', 'Independent, Lever, Dampers, Helical springs, Stabilizer bar', 87),
(88, 'ventilated disc', 'ventilated disc', 'Independent, Lever, Dampers, Helical springs', 'Independent, Dampers, Helical springs, Stabilizer bar', 88),
(89, 'Disc', 'ventilated disc', 'Independent, Pneumatic, Multi wishbone, Dampers', 'Independent, Pneumatic, Lever, Dampers', 89),
(90, 'Disc', 'ventilated disc', 'Independent, Multi wishbone, spring', 'Independent, McPherson Struts', 90),
(91, 'Disc', 'ventilated disc', 'Independent, Multi wishbone, spring', 'Independent, McPherson Struts', 91),
(92, 'Disc', 'ventilated disc', 'Independent, Multi wishbone', 'Independent, McPherson Struts', 92),
(93, 'Disc', 'ventilated disc', 'Independent, Multi wishbone', 'Independent, McPherson Struts', 93),
(94, 'ventilated disc', 'ventilated disc', 'Independent, Multi wishbone, Dampers, spring, Stabilizer bar', 'Independent, McPherson Struts, Stabilizer bar', 94),
(95, 'ventilated disc', 'ventilated disc', 'Independent, Multi wishbone, Dampers, spring, Stabilizer bar', 'Independent, McPherson Struts, Stabilizer bar', 95),
(96, 'drum', 'ventilated disc', 'Solid axle, Spring', 'Independent, Double wishbone, Dampers, Helical springs, Stabilizer bar', 96),
(97, 'drum', 'Disc ventilated', 'Dependent, spring', 'Independent, spring', 97),
(98, 'drum', 'ventilated disc', 'semi-independent, spring', 'Independent, spring', 98),
(99, 'ventilated disc', 'ventilated disc', 'Independent, Multi wishbone, spring, Stabilizer bar', 'Independent, Double wishbone, spring, Stabilizer bar', 99),
(100, 'ventilated disc', 'ventilated disc', 'Dependent, Lever, Dampers, spring, Stabilizer bar', 'Independent, Lever, Dampers, spring, Stabilizer bar', 100),
(101, 'Disc', 'ventilated disc', 'Torsion beam, spring', 'Independent, McPherson Struts, spring, Stabilizer bar', 101),
(102, 'Disc', 'ventilated disc', 'Multi wishbone, spring', 'Independent, McPherson Struts, Stabilizer bar', 102),
(103, 'drum', 'ventilated disc', 'Trailing arms, Helical springs', 'Strut, Wishbone, Stabilizer bar', 103),
(104, 'drum', 'ventilated disc', 'Trailing arms, Helical springs', 'Strut, Wishbone, Stabilizer bar', 104),
(105, 'drum', 'ventilated disc', 'Semi-dependent, Torsion beam', 'Independent, McPherson Struts', 105),
(106, 'Disc', 'ventilated disc', 'Semi-dependent, Dampers, Helical springs', 'Independent, McPherson Struts, Dampers, Helical springs, Stabilizer bar', 106),
(107, 'Disc', 'ventilated disc', 'semi-independent, spring', 'Independent, spring', 107),
(108, 'Disc', 'Disc ventilated', 'semi-independent, spring', 'Independent, spring', 108),
(109, 'Disc', 'Disc ventilated', 'semi-independent, spring', 'Independent, spring', 109),
(110, 'Disc', 'ventilated disc', 'Torsion beam, Dampers, Helical springs', 'Independent, McPherson Struts, Dampers, Helical springs, Stabilizer bar', 110),
(111, 'Disc', 'ventilated disc', 'Semi-dependent, Dampers, Helical springs', 'Independent, Dampers, Pseudo MacPherson, Helical springs', 111),
(112, 'Disc', 'ventilated disc', 'Torsion beam', 'Independent, McPherson Struts', 112),
(113, 'drum', 'ventilated disc', 'Semi-dependent, Torsion beam', 'Independent, McPherson Struts', 113),
(114, 'Disc', 'ventilated disc', 'Semi-dependent, Torsion, Dampers, Helical springs', 'Independent, McPherson Struts, Dampers, Helical springs, Stabilizer bar', 114),
(115, 'ventilated disc', 'ventilated disc', 'Semi-dependent, Stabilizer bar', 'Independent, McPherson Struts, Stabilizer bar', 115),
(116, 'drum', 'Disc', 'Beam, Lever, Dampers, Helical springs', 'Independent, McPherson Struts, Helical springs, Stabilizer bar', 116),
(117, 'drum', 'ventilated disc', 'Semi-dependent, H-shaped beam, Dampers, Helical springs', 'Independent, McPherson Struts, Dampers, Helical springs, Stabilizer bar', 117),
(118, 'drum', 'Disc', 'Semi-dependent, Dampers, spring, Stabilizer bar', 'Independent, McPherson Struts, Dampers, spring, Stabilizer bar', 118),
(119, 'Disc', 'ventilated disc', 'Independent, Multi wishbone, Dampers, Helical springs, Stabilizer bar', 'Independent, McPherson Struts, Dampers, Helical springs, Stabilizer bar', 119),
(120, 'Disc', 'ventilated disc', 'Independent, Multi wishbone, Dampers, Helical springs, Stabilizer bar', 'Independent, McPherson Struts, Dampers, Helical springs, Stabilizer bar', 120),
(121, 'Disc', 'ventilated disc', 'Semi-dependent, Dampers, Helical springs', 'Independent, McPherson Struts, Dampers, Helical springs, Stabilizer bar', 121),
(122, 'Disc', 'ventilated disc', 'Semi-dependent, Torsion beam, Dampers, Cylindrical springs', 'Independent, McPherson Struts, Dampers, Cylindrical springs', 122),
(123, 'Disc', 'Disc ventilated', 'Independent, spring', 'Independent, spring', 123),
(124, 'drum', 'ventilated disc', 'Solid axle', 'McPherson Struts, Stabilizer bar', 124),
(125, 'Disc', 'ventilated disc', 'Semi-dependent, Dampers, Helical springs', 'Independent, McPherson Struts, Dampers, Helical springs, Stabilizer bar', 125),
(126, 'Disc', 'ventilated disc', 'Independent, Multi wishbone', 'Independent, McPherson Struts, Stabilizer bar', 126),
(127, 'Disc', 'ventilated disc', 'Multi wishbone, Double wishbone, Stabilizer bar', 'McPherson Struts, Wishbone, Stabilizer bar', 127),
(128, 'Disc', 'ventilated disc', 'Torsion beam', 'McPherson Struts, On triangular wishbones, Stabilizer bar', 128),
(129, 'Disc', 'Disc ventilated', 'Independent, spring', 'Independent, spring', 129),
(130, 'drum', 'Disc ventilated', 'semi-independent, spring', 'Independent, spring', 130),
(131, '', '', '', '', 131),
(132, '', '', '', '', 132),
(133, 'Disc', 'ventilated disc', 'Drive axle, Trailing arms, Helical springs, Stabilizer bar', 'Independent, Torsion, Double wishbone, Stabilizer bar', 133),
(134, 'Disc', 'ventilated disc', 'Independent, Multi wishbone, Dampers, Helical springs, Stabilizer bar', 'Double wishbone, Dampers, Helical springs, Stabilizer bar', 134),
(135, 'drum', 'ventilated disc', 'semi-independent, spring', 'Independent, spring', 135),
(136, 'drum', 'Disc', 'Dependent, spring', 'Dependent, spring', 136),
(137, '', '', '', '', 137),
(138, '', '', '', '', 138),
(139, 'drum', 'ventilated disc', 'Independent, Trailing arms, spring, Stabilizer bar', 'Independent, Torsion, Double wishbone, Stabilizer bar', 139),
(140, 'drum', 'ventilated disc', 'Dependent, Spring', 'Independent, Hydraulic element, Lever, Dampers, spring, Stabilizer bar', 140),
(141, 'ventilated disc', 'ventilated disc', 'Dependent, Spring, Dampers', 'Drive axle, Helical springs, Stabilizer bar', 141),
(142, 'drum', 'ventilated disc', 'Dependent, Spring, Dampers', 'Drive axle, Helical springs, Stabilizer bar', 142),
(143, 'ventilated disc', 'ventilated disc', 'Solid axle, Dampers, Helical springs', 'Independent, Double wishbone, Dampers, Helical springs, Stabilizer bar', 143),
(144, 'Disc', 'ventilated disc', 'Torsion beam, Dampers, Helical springs', 'Independent, McPherson Struts, Dampers, Helical springs, Stabilizer bar', 144),
(145, '', '', '', '', 145),
(146, 'drum', 'Disc', 'Independent, Solid axle, Spring, spring', 'Independent, spring', 146),
(147, 'Disc', 'ventilated disc', 'Dependent, Axle, Spring', 'Independent, McPherson Struts', 147),
(148, 'Disc', 'ventilated disc', 'Dependent, Axle, Spring', 'Independent, McPherson Struts', 148),
(149, 'Disc', 'ventilated disc', 'Dependent, Axle, Spring', 'Independent, McPherson Struts', 149),
(150, 'Disc', 'ventilated disc', 'Semi-dependent, Stabilizer bar', 'Independent, McPherson Struts', 150),
(151, 'Disc', 'ventilated disc', 'Independent, spring, Automatic adjustment of clearance', 'Independent, McPherson Struts, spring, Automatic adjustment of clearance', 151),
(152, 'Disc', 'ventilated disc', 'Semi-dependent, Dampers, Helical springs', 'Independent, McPherson Struts, Dampers, Helical springs, Stabilizer bar', 152),
(153, 'ventilated disc', 'ventilated disc', 'Semi-dependent, Torsion beam, Dampers, Helical springs', 'Independent, McPherson Struts, Dampers, Helical springs, Stabilizer bar', 153),
(154, 'drum', 'ventilated disc', 'Semi-dependent, Torsion beam, Dampers, Helical springs', 'Independent, McPherson Struts, Dampers, Helical springs, Stabilizer bar', 154),
(155, 'ventilated disc', 'ventilated disc', 'Independent, Multi wishbone, Dampers, Helical springs', 'Independent, McPherson Struts, Dampers, Helical springs, Stabilizer bar', 155),
(156, 'Disc', 'ventilated disc', '', 'Independent, Dampers, Helical springs, Stabilizer bar', 156),
(157, 'Disc', 'ventilated disc', '', 'Independent, Dampers, Helical springs, Stabilizer bar', 157),
(158, 'ventilated disc', 'ventilated disc', 'Independent, spring', 'Independent, spring', 158),
(159, 'ventilated disc', 'ventilated disc', 'Independent, spring', 'Independent, spring', 159),
(160, 'Disc', 'ventilated disc', 'Independent, Multi wishbone, Dampers, Helical springs', 'Independent, McPherson Struts, Dampers, Helical springs, Stabilizer bar', 160),
(161, 'Disc', 'ventilated disc', 'Independent, Multi wishbone, Dampers, Helical springs', 'Independent, McPherson Struts, Dampers, Helical springs, Stabilizer bar', 161),
(162, '', 'ventilated disc', '', 'Independent, Double wishbone', 162),
(163, '', 'ventilated disc', '', 'Independent, Double wishbone', 163),
(164, 'ventilated disc', 'ventilated disc', 'Independent, Multi wishbone', 'Independent, McPherson Struts', 164),
(165, 'ventilated disc', 'ventilated disc', 'Independent, Multi wishbone', 'Independent, McPherson Struts', 165);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `email` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`account_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `bodywork`
--
ALTER TABLE `bodywork`
  ADD PRIMARY KEY (`bodywork_id`),
  ADD KEY `fk2_car_id` (`car_id`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`car_id`),
  ADD KEY `make_id` (`make_id`),
  ADD KEY `model_id` (`model_id`),
  ADD KEY `fk_id_car_type` (`id_car_type`);

--
-- Indexes for table `car_make`
--
ALTER TABLE `car_make`
  ADD PRIMARY KEY (`id_car_make`),
  ADD KEY `id_car_type_fk3` (`id_car_type`);

--
-- Indexes for table `car_model`
--
ALTER TABLE `car_model`
  ADD PRIMARY KEY (`id_car_model`),
  ADD KEY `fk2_id_car_type` (`id_car_type`),
  ADD KEY `fk_id_car_make` (`id_car_make`);

--
-- Indexes for table `car_type`
--
ALTER TABLE `car_type`
  ADD PRIMARY KEY (`id_car_type`);

--
-- Indexes for table `characteristics`
--
ALTER TABLE `characteristics`
  ADD PRIMARY KEY (`characteristics_id`),
  ADD KEY `car_id_fk3` (`car_id`);

--
-- Indexes for table `engine`
--
ALTER TABLE `engine`
  ADD PRIMARY KEY (`engine_id`),
  ADD KEY `car_id_fk2` (`car_id`);

--
-- Indexes for table `gearbox_handling`
--
ALTER TABLE `gearbox_handling`
  ADD PRIMARY KEY (`gearbox_handling_id`),
  ADD KEY `fk_car_id` (`fk_car_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `account_id` (`account_id`),
  ADD KEY `car_id_fk` (`car_id`);

--
-- Indexes for table `suspension_brakes`
--
ALTER TABLE `suspension_brakes`
  ADD PRIMARY KEY (`suspension_brakes_id`),
  ADD KEY `car_id_fk_2` (`car_id_fk`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `account_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `bodywork`
--
ALTER TABLE `bodywork`
  MODIFY `bodywork_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `characteristics`
--
ALTER TABLE `characteristics`
  MODIFY `characteristics_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;

--
-- AUTO_INCREMENT for table `engine`
--
ALTER TABLE `engine`
  MODIFY `engine_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `car_make`
--
ALTER TABLE `car_make`
  MODIFY `id_car_make` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `car`
--
ALTER TABLE `car`
  MODIFY `car_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `car_type`
--
ALTER TABLE `car_type`
  MODIFY `id_car_type` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `gearbox_handling`
--
ALTER TABLE `gearbox_handling`
  MODIFY `gearbox_handling_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `suspension_brakes`
--
ALTER TABLE `suspension_brakes`
  MODIFY `suspension_brakes_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accounts`
--
ALTER TABLE `accounts`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `bodywork`
--
ALTER TABLE `bodywork`
  ADD CONSTRAINT `fk2_car_id` FOREIGN KEY (`car_id`) REFERENCES `car` (`car_id`);

--
-- Constraints for table `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `fk_id_car_type` FOREIGN KEY (`id_car_type`) REFERENCES `car_type` (`id_car_type`),
  ADD CONSTRAINT `make_id` FOREIGN KEY (`make_id`) REFERENCES `car_make` (`id_car_make`),
  ADD CONSTRAINT `model_id` FOREIGN KEY (`model_id`) REFERENCES `car_model` (`id_car_model`);

--
-- Constraints for table `car_make`
--
ALTER TABLE `car_make`
  ADD CONSTRAINT `id_car_type_fk3` FOREIGN KEY (`id_car_type`) REFERENCES `car_type` (`id_car_type`);

--
-- Constraints for table `car_model`
--
ALTER TABLE `car_model`
  ADD CONSTRAINT `fk2_id_car_type` FOREIGN KEY (`id_car_type`) REFERENCES `car_type` (`id_car_type`),
  ADD CONSTRAINT `fk_id_car_make` FOREIGN KEY (`id_car_make`) REFERENCES `car_make` (`id_car_make`);

--
-- Constraints for table `characteristics`
--
ALTER TABLE `characteristics`
  ADD CONSTRAINT `car_id_fk3` FOREIGN KEY (`car_id`) REFERENCES `car` (`car_id`);

--
-- Constraints for table `engine`
--
ALTER TABLE `engine`
  ADD CONSTRAINT `car_id_fk2` FOREIGN KEY (`car_id`) REFERENCES `car` (`car_id`);

--
-- Constraints for table `gearbox_handling`
--
ALTER TABLE `gearbox_handling`
  ADD CONSTRAINT `fk_car_id` FOREIGN KEY (`fk_car_id`) REFERENCES `car` (`car_id`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `account_id` FOREIGN KEY (`account_id`) REFERENCES `accounts` (`account_id`),
  ADD CONSTRAINT `car_id_fk` FOREIGN KEY (`car_id`) REFERENCES `car` (`car_id`);

--
-- Constraints for table `suspension_brakes`
--
ALTER TABLE `suspension_brakes`
  ADD CONSTRAINT `car_id_fk_2` FOREIGN KEY (`car_id_fk`) REFERENCES `car` (`car_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
