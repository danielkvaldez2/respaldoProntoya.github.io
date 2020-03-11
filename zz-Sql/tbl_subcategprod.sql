-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-02-2020 a las 19:18:51
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.2

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
-- Estructura de tabla para la tabla `tbl_subcategprod`
--

CREATE TABLE `tbl_subcategprod` (
  `id_subcategProd` int(11) NOT NULL,
  `id_categProd` int(11) NOT NULL,
  `strNombSubCategProd` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_subcategprod`
--

INSERT INTO `tbl_subcategprod` (`id_subcategProd`, `id_categProd`, `strNombSubCategProd`) VALUES
(1, 1, 'Azucar y Edulcorantes'),
(2, 1, 'Harinas, Fideos, Arroz ...'),
(3, 1, 'Conservas Y Enlatados'),
(4, 3, 'Varios '),
(5, 2, 'Gaseosas'),
(6, 2, 'Cervezas'),
(7, 2, 'Energizantes'),
(8, 2, 'Champagne'),
(9, 2, 'Vinos'),
(10, 4, 'Jabon y Enjuague Ropa'),
(11, 4, 'Limpiadores'),
(12, 2, 'Varios'),
(13, 2, 'Aperitivos'),
(14, 2, 'Jugos'),
(15, 7, 'Carne Vacuna'),
(16, 7, 'Carne Cerdo'),
(17, 7, 'Carne Pescado'),
(18, 7, 'Carne Pollo'),
(19, 8, 'Leches, Yoghurt'),
(20, 8, 'Mantecas, Cremas'),
(21, 8, 'Quesos'),
(22, 8, 'Postres'),
(23, 8, 'Pastas Caseras'),
(24, 8, 'Tapas Empanadas, Pascualina'),
(25, 9, 'Hamburguesas, Medallones'),
(26, 9, 'Salchichas'),
(27, 9, 'Varios'),
(28, 5, 'Pañales, Toallitas Femeninas'),
(29, 6, 'Verduras'),
(30, 6, 'Frutas'),
(31, 1, 'Salsas, Sopas ...'),
(32, 1, 'Adheresos Snack ...'),
(33, 5, 'Perfumes'),
(34, 5, 'Desodorantes'),
(35, 1, 'Aceites, Vinagres, Sal...'),
(36, 4, 'Rollos Papel'),
(37, 2, 'Aguas'),
(38, 4, 'Lamparas y Velas'),
(39, 4, 'Articulos Varios'),
(40, 4, 'Insecticidas Repelentes'),
(41, 5, 'Articulos Personales'),
(42, 5, 'Shampoo, Jabones y Cremas'),
(43, 1, 'Dulces, Mermeladas y Miel'),
(44, 1, 'Yerbas, Cafes, Infusiones'),
(45, 1, 'Galletitas Premezclas');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_subcategprod`
--
ALTER TABLE `tbl_subcategprod`
  ADD PRIMARY KEY (`id_subcategProd`),
  ADD KEY `id_categProd` (`id_categProd`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_subcategprod`
--
ALTER TABLE `tbl_subcategprod`
  MODIFY `id_subcategProd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_subcategprod`
--
ALTER TABLE `tbl_subcategprod`
  ADD CONSTRAINT `tbl_subcategprod_ibfk_1` FOREIGN KEY (`id_categProd`) REFERENCES `tbl_cat_productos` (`id_categProd`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
