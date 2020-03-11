-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 23-02-2020 a las 00:22:29
-- Versión del servidor: 5.7.27
-- Versión de PHP: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `petromar_supply`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `databaseship`
--

CREATE TABLE `databaseship` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `flag` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `country` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `imo` int(11) NOT NULL,
  `mmsi` int(11) NOT NULL,
  `callsign` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `size` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `draught` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `year` int(11) NOT NULL,
  `typeship` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `maker` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `imagen` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `databaseship`
--

INSERT INTO `databaseship` (`id`, `name`, `flag`, `country`, `imo`, `mmsi`, `callsign`, `size`, `draught`, `year`, `typeship`, `maker`, `imagen`) VALUES
(1, 'SEA SMILE', 'Liberia.jpg', 'Liberia', 9615107, 636015598, 'D5BT2', '180/30 m', '9,6 m', 2012, 'Cargo ship', 'Lucretia Shipping SA', '901.jpg'),
(2, 'MSC BENEDETTA', 'Liberia.jpg', 'Liberia', 9465253, 636092804, 'D5OY6', '366/48 m', '12,7 m', 2011, 'Container Ship', 'ms \"ER Benedetta\" Schiffahrts Gmbh & Co KG', '902.jpg'),
(3, 'ZHONG YU 58', 'China.jpg', 'China', 9419060, 413405430, 'BKWQ3', '139 / 20 m', '4.8 m', 2007, 'Container Ship', 'Zhoushan Putuo Edible Oils', '903.jpg'),
(4, 'LONGVIKING', 'Netherlands.jpg', 'Netherlands', 9547324, 245901000, 'PBNO', '115 / 14 m', '5.7 m', 2010, 'Container Ship', 'ABIS Cadiz', '904.jpg'),
(5, 'KACHIDOKI', 'Panama.jpg', 'Panama', 9355147, 355765000, '3EFH', '300 / 50 m', '10.7 m', 2006, 'Bulk Carrier', 'KACHIDOKI Ltd', '905.jpg'),
(6, 'JIN HAI TAO', 'China.jpg', 'China', 9672557, 414754000, 'BPSA', '122/18 m', '5,4 m', 2013, 'Chemical Oil Products Tanker', 'Shanghai Jinhai Shpg & Trading', '906.jpg'),
(7, 'BERGE ARZEW', 'Bahamas.jpg', 'Bahamas', 9256597, 311745000, 'C6TQ5', '270/42 m', '11,2 m', 2004, 'LNG Tanker', 'Bergesen d.y.& Co', '907.jpg'),
(8, 'ADARA', 'Francia.jpg', 'Francia', 9587829, 226044000, 'FICS', '184/27 m', '9.0 m', 2011, 'Chemical Oil Products', 'Hull 2310 LLC', '908.jpg'),
(9, 'MAERSK PROMISE', 'Singapur.jpg', 'Singapur', 9315458, 565151000, '9VBQ2', '244/42 m', '9.0 m', 2006, 'Crude Oil Tanker', 'MAERSK PROMISE Ltd<', '909.jpg'),
(10, 'THALASSA TYHI', 'Liberia.jpg', 'Liberia', 9667162, 636018702, 'D5QZ3', '368/51 m', '14,7 m', 2014, 'Container Ship', 'Thalassa Tyhi Pte Ltd', '910.jpg'),
(11, 'MAULLIN', 'Liberia.jpg', 'Liberia', 9400071, 636091744, 'A8SE4', '306/40 m', '12,6 m', 2010, 'Container Ship', 'Maullin Schiffahrts GmbH', '911.jpg'),
(12, 'UNICO ANNA', 'Korea.jpg', 'Korea', 9228203, 441932000, 'DSMU2', '170 / 27 m', '6.0 m', 2000, 'Bulk carrier', 'SUNNY ROYAL', '912.jpg'),
(13, 'NEW TRIP', 'Panama.jpg', 'Panama', 9689794, 356548000, 'H8CV', '176 / 28 m', '6.5 m', 2015, ' Bulk carrier', 'New Star Nav SA', '913.jpg'),
(14, 'SALOME', 'Singapur.jpg', 'Singapur', 9515412, 566086000, '9V9112', '265/32 m', '9,5 m', 2012, ' Vehicle carrier', 'Mark V Shipping Pte Ltd', '914.jpg'),
(15, 'KOTA WAJAR', 'Singapur.jpg', 'Singapur', 9157399, 564379000, 'S6BT', '184/28 m', '9,3 m', 1997, ' Merchant ship', 'Pacific International Lines Pte Ltd', '915.jpg'),
(16, 'PARE ACER', 'Liberia.jpg', 'Liberia', 9272668, 636017838, 'D5MY2', '170/26 m', '10,1 m', 2004, 'Chemical Products -  Products Tankers', 'JO ACER Ltd', '916.jpg'),
(17, 'COSCO NEBULA', 'HongKong.jpg', 'Hong Kong', 9795622, 477194400, 'VRRW8', '400/58 m', '12,0 m', 2018, 'Container Ship', 'COSCO Shipping Nebula Ltd', '917.jpg'),
(18, 'COSCO GALAXY', 'HongKong.jpg', 'Hong Kong', 9795634, 477269300, 'VRSJ9', '400/59 m', '14,9 m', 2019, 'Container Ship', 'COSCO Shipping Galaxy Ltd', '918.jpg'),
(19, 'MILAN MAERSK', 'Denmark.jpg', 'Denmark', 9778820, 219861000, 'OWGK2', '399 / 58 m', '13.6 m', 2017, 'Container Ship', 'Maersk Line A/S', '919.jpg'),
(20, 'OOCL ALEMANIA', 'HongKong.jpg', 'Hong Kong', 9776183, 477035800, 'VRQS3', '400/59 m', '15,9 m', 2017, 'Container Ship', 'FPG Shipholding Panama 38 SA', '920.jpg');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `databaseship`
--
ALTER TABLE `databaseship`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `databaseship`
--
ALTER TABLE `databaseship`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
