-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-02-2020 a las 19:19:32
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
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `usuario` varchar(30) NOT NULL,
  `password` varchar(130) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `correo` varchar(80) NOT NULL,
  `last_session` datetime DEFAULT NULL,
  `activacion` int(11) NOT NULL DEFAULT 0,
  `token` varchar(40) NOT NULL,
  `token_password` varchar(100) DEFAULT NULL,
  `password_request` int(11) DEFAULT 0,
  `id_tipo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`, `nombre`, `correo`, `last_session`, `activacion`, `token`, `token_password`, `password_request`, `id_tipo`) VALUES
(14, 'sandra', '$2y$10$15fX8dB1kNSdRkHSXgeTQeXMSWtd295z7hNVt0tukBBm2XGg/tU/q', 'sandra', 'sandraestherortiz@gmail.com', '2020-02-13 23:40:12', 1, '1bf3cd07c7179d1d91653c5db99700ac', '', 0, 2),
(15, 'dany', '$2y$10$ZUEF6hX5jF.ye1m2mrb.xey.rJPOLXmn.AgZKEjTEU90qLiIUkKoq', 'dany', '1danielkvaldez2@gmail.com', '2020-02-13 23:40:38', 1, '4a0480a77facbb8df2974153fe41cb8d', '', 0, 1),
(16, 'diegopetro', '$2y$10$HQ7UDnC.Du/lTuPT/QuHhuHQrHqjOjGXOtAJNhm/uVW5SJwsVN5Qm', 'Diego Balverde', 'chukobalverde@gmail.com', '2020-02-14 00:29:32', 1, '417e73b7a91040f9b2f2e11258a42274', '', 0, 1),
(17, 'danielkvaldez', '$2y$10$jN7ZEsjEX/gbRxt7lJL4GOlc9jMqlNqSYawmwgCAd/4SsaDJ15Fk6', 'Daniel Valdez', 'danielkvaldez2@gmail.com', '2020-02-19 13:25:40', 1, 'fe6d922ab4bfee3309e57801ab3f5898', '', 0, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
