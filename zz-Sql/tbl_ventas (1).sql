-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 23-02-2020 a las 00:26:00
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
-- Estructura de tabla para la tabla `tbl_ventas`
--

CREATE TABLE `tbl_ventas` (
  `id_ventas` int(11) NOT NULL,
  `nro_venta` int(11) NOT NULL,
  `id_usuarios` int(11) NOT NULL,
  `user_nombre` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `user_direccion` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `user_telefono` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `user_horario` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `user_correo` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `prod_id` int(11) NOT NULL,
  `prod_imagen` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `prod_nombre` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `prod_codigo` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `prod_precio` float(7,2) DEFAULT NULL,
  `prod_cantidad` int(11) NOT NULL,
  `prod_oferta` varchar(1) COLLATE utf8_spanish_ci NOT NULL,
  `prod_marca` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `prod_volumen` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `prod_descripcion` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `user_ip` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `user_latitud` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `user_longitud` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `strFecha` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `strHora` varchar(8) COLLATE utf8_spanish_ci NOT NULL,
  `strEstado` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL,
  `strControl` varchar(10) CHARACTER SET utf8 COLLATE utf8_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_ventas`
--
ALTER TABLE `tbl_ventas`
  ADD PRIMARY KEY (`id_ventas`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_ventas`
--
ALTER TABLE `tbl_ventas`
  MODIFY `id_ventas` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
