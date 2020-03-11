-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 23-02-2020 a las 00:24:21
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
-- Estructura de tabla para la tabla `tbl_cat_productos`
--

CREATE TABLE `tbl_cat_productos` (
  `id_categProd` int(11) NOT NULL,
  `nameSpain` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `nameEngland` varchar(200) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_cat_productos`
--

INSERT INTO `tbl_cat_productos` (`id_categProd`, `nameSpain`, `nameEngland`) VALUES
(1, 'PRODUCTOS CARNICOS', 'BEEF-PORK-LAMB'),
(2, 'FIAMBRES-EMBUTIDOS', 'COLD MEAT'),
(3, 'PRODUCTOS DE GRANJA', 'POULTRY'),
(4, 'PESCADOS - MARISCOS', 'FISH - SEAFOOD'),
(5, 'HELADOS', 'ICE-CREAM'),
(6, 'VERDURAS CONGELADAS', 'FROZEN VEGETABLES'),
(7, 'PANIFICADOS', 'BAKERY'),
(8, 'FRUTAS - VERDURAS', 'FRESH FRUITS & VEGS'),
(9, 'LACTEOS', 'DAIRY'),
(10, 'BEBIDAS', 'BEVERAGES'),
(11, 'VIVERES SECOS 1', 'DRY ITEMS 1'),
(12, 'VIVERES SECOS 2', 'DRY ITEMS 2'),
(13, 'CONSERVAS', 'TINNED FOOD'),
(14, 'GALLETITAS - SNACK', 'COOKIES - SNACK');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_cat_productos`
--
ALTER TABLE `tbl_cat_productos`
  ADD PRIMARY KEY (`id_categProd`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_cat_productos`
--
ALTER TABLE `tbl_cat_productos`
  MODIFY `id_categProd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
