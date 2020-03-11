-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-02-2020 a las 19:16:42
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
-- Estructura de tabla para la tabla `tbl_blog_comment_list`
--

CREATE TABLE `tbl_blog_comment_list` (
  `id_comment` int(11) NOT NULL,
  `id_comment_id_blog` int(11) NOT NULL,
  `name_comment_blog` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `email_comment_blog` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `text_comment_blog` text COLLATE utf8_spanish_ci NOT NULL,
  `date_comment_blog` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_blog_comment_list`
--

INSERT INTO `tbl_blog_comment_list` (`id_comment`, `id_comment_id_blog`, `name_comment_blog`, `email_comment_blog`, `text_comment_blog`, `date_comment_blog`) VALUES
(1, 1, 'Sandra', 'danielkvaldez@gmail.com', 'Muy buena informacion sobre todo lo que paso en el puerto de long beach', '2020-02-22 01:10:13'),
(2, 2, 'Juana', 'matiaslkvaldez@gmail.com', 'Long Beach Muy buena informacion sobre todo lo que paso en el puerto de long beach', '2020-02-22 01:10:13'),
(3, 1, 'Agustin', 'camilalkvaldez@gmail.com', 'Muy linda pagina', '2020-02-22 01:11:32'),
(4, 2, 'Diego', 'marialkvaldez@gmail.com', 'muy linda pagina esta buena', '2020-02-22 01:11:32'),
(5, 1, 'Carlos', 'guadalupekvaldez@gmail.com', 'estamos myuy', '2020-02-22 01:13:28'),
(12, 2, 'Daniel Valdez', 'danielkvaldez2@gmail.com', 'hola', '2020-02-22 03:00:00'),
(14, 2, 'Diego ', 'chukobalverde@gmail.com', 'muy bueno los comentarios\\r\\n', '2020-02-22 07:51:56'),
(15, 2, 'Nilda  ', 'danielkvaldez2@gmail.com', 'hola muy buena', '2020-02-22 07:52:32'),
(60, 2, 'Diego  ', 'chukobalverde@gmail.com', 'esta ok', '2020-02-22 07:38:29'),
(61, 1, 'Alberto', 'chukobalverde@gmail.com', 'esta bueno', '2020-02-22 07:39:27'),
(62, 1, 'Daniel ', 'danielkvaldez2@gmail.com', 'estay', '2020-02-22 08:15:51');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_blog_comment_list`
--
ALTER TABLE `tbl_blog_comment_list`
  ADD PRIMARY KEY (`id_comment`),
  ADD KEY `id_comment_id_blog` (`id_comment_id_blog`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_blog_comment_list`
--
ALTER TABLE `tbl_blog_comment_list`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_blog_comment_list`
--
ALTER TABLE `tbl_blog_comment_list`
  ADD CONSTRAINT `tbl_blog_comment_list_ibfk_1` FOREIGN KEY (`id_comment_id_blog`) REFERENCES `tbl_blog_list` (`id_blog`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
