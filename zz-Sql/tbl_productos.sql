-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 23-02-2020 a las 00:25:18
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
-- Estructura de tabla para la tabla `tbl_productos`
--

CREATE TABLE `tbl_productos` (
  `id_producto` int(11) NOT NULL,
  `strProdNombProducto` varchar(50) COLLATE utf8_spanish_ci DEFAULT NULL,
  `strProdMarca` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `strProdVolumen` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `strProdDescripcion` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `floatProdPrecio` float(7,2) DEFAULT NULL,
  `strProdCodigo` varchar(30) COLLATE utf8_spanish_ci DEFAULT NULL,
  `strProdImagen` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `strProdImagenThumb` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_categProd` int(11) NOT NULL,
  `id_subcategProd` int(11) NOT NULL,
  `strOferta` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_productos`
--

INSERT INTO `tbl_productos` (`id_producto`, `strProdNombProducto`, `strProdMarca`, `strProdVolumen`, `strProdDescripcion`, `floatProdPrecio`, `strProdCodigo`, `strProdImagen`, `strProdImagenThumb`, `id_categProd`, `id_subcategProd`, `strOferta`) VALUES
(1, 'Beef cube-roll', 'Made in ,,,', 'KGR', 'Bife ancho s/h', 11.00, '1000', 'Bife-ancho.jpg', 'Bife-ancho.jpg', 1, 0, 0),
(2, 'Beef eye-rib steak', 'Made in ,,,', 'KGR', 'Bife ancho cortado c/h', 8.00, '1000', 'Bife-ancho-cortado.jpg', 'Bife-ancho-cortado.jpg', 1, 0, 0),
(3, 'Beef flank', 'Made in ,,,', 'KGR', 'Vacio vacuno', 8.00, '1000', 'Vacio-vacuno.jpg', 'Vacio-vacuno.jpg', 1, 0, 0),
(4, 'Beef instestines', 'Made in ,,,', 'KGR', 'Chinchulines vacunos', 3.00, '1000', 'Chinchulines-vacunos.jpg', 'Chinchulines-vacunos.jpg', 1, 0, 0),
(5, 'Beef kidneys', 'Made in ,,,', 'KGR', 'Rinon vacuno', 3.00, '1000', 'Rinon-vacuno.jpg', 'Rinon-vacuno.jpg', 1, 0, 0),
(6, 'Beef knuckles cutted', 'Made in ,,,', 'KGR', 'Osobuco cortado', 3.00, '1000', 'Osobuco-cortado.jpg', 'Osobuco-cortado.jpg', 1, 0, 0),
(7, 'Beef liver', 'Made in ,,,', 'KGR', 'Higado vacuno', 1.00, '1000', 'Higado-vacuno.jpg', 'Higado-vacuno.jpg', 1, 0, 0),
(8, 'Beef minced', 'Made in ,,,', 'KGR', 'Picada vacuna', 5.00, '1000', 'Picada-vacuna.jpg', 'Picada-vacuna.jpg', 1, 0, 0),
(9, 'Beef ox-tail', 'Made in ,,,', 'KGR', 'Rabo vacuno', 3.00, '1000', 'Rabo-vacuno.jpg', 'Rabo-vacuno.jpg', 1, 0, 0),
(10, 'Beef ribs (asado)', 'Made in ,,,', 'KGR', 'Asado vacuno', 8.00, '1000', 'Asado-vacuno.jpg', 'Asado-vacuno.jpg', 1, 0, 0),
(11, 'Beef rose meat', 'Made in ,,,', 'KGR', 'Matambre vacuno', 8.00, '1000', 'Matambre-vacuno.jpg', 'Matambre-vacuno.jpg', 1, 0, 0),
(12, 'Beef shoulder b/less', 'Made in ,,,', 'KGR', 'Paleta vacuna', 6.00, '1000', 'Paleta-vacuna.jpg', 'Paleta-vacuna.jpg', 1, 0, 0),
(13, 'Beef striploin b/less', 'Made in ,,,', 'KGR', 'Bife de chorizo', 10.00, '1000', 'Bife-de-chorizo.jpg', 'Bife-de-chorizo.jpg', 1, 0, 0),
(14, 'Beef tenderloin', 'Made in ,,,', 'KGR', 'Lomo vacuno', 13.00, '1000', 'Lomo-vacuno.jpg', 'Lomo-vacuno.jpg', 1, 0, 0),
(15, 'Beef thik-flank', 'Made in ,,,', 'KGR', 'Bola de lomo entera', 9.00, '1000', 'Bola-de-lomo-entera.jpg', 'Bola-de-lomo-entera.jpg', 1, 0, 0),
(16, 'Beef tongue', 'Made in ,,,', 'KGR', 'Lengua vacuna', 7.00, '1000', 'Lengua-vacuna.jpg', 'Lengua-vacuna.jpg', 1, 0, 0),
(17, 'Beef topside ', 'Made in ,,,', 'KGR', 'Nalga vacuna', 9.00, '1000', 'Nalga-vacuna.jpg', 'Nalga-vacuna.jpg', 1, 0, 0),
(18, 'Pork belly meat b/less', 'Made in ,,,', 'KGR', 'Panceta cerdo fresca', 7.00, '1000', 'Panceta-cerdo-fresca.jpg', 'Panceta-cerdo-fresca.jpg', 1, 0, 0),
(19, 'Pork knuckles', 'Made in ,,,', 'KGR', 'Codillo de cerdo', 3.00, '1000', 'Codillo-de-cerdo.jpg', 'Codillo-de-cerdo.jpg', 1, 0, 0),
(20, 'Pork loin bone-in (chops)', 'Made in ,,,', 'KGR', 'Chuletas de cerdo', 6.00, '1000', 'Chuletas-de-cerdo.jpg', 'Chuletas-de-cerdo.jpg', 1, 0, 0),
(21, 'Pork neck boneless', 'Made in ,,,', 'KGR', 'Bondiola de cerdo', 8.00, '1000', 'Bondiola-de-cerdo.jpg', 'Bondiola-de-cerdo.jpg', 1, 0, 0),
(22, 'Pork spare-ribs', 'Made in ,,,', 'KGR', 'Costillar cerdo-pecho ', 6.00, '1000', 'Costillar-cerdo-pecho.jpg', 'Costillar-cerdo-pecho.jpg', 1, 0, 0),
(23, 'Pork tenderloin', 'Made in ,,,', 'KGR', 'Solomillo de cerdo', 9.00, '1000', 'Solomillo-cerdo.jpg', 'Solomillo-cerdo.jpg', 1, 0, 0),
(24, 'Pork trotters', 'Made in ,,,', 'KGR', 'Patitas de cerdo', 1.00, '1000', 'Patitas-de-cerdo.jpg', 'Patitas-de-cerdo.jpg', 1, 0, 0),
(25, 'Suckling Pig 8-10kgr', 'Made in ,,,', 'KGR', 'Lechon entero 8-10kgr - 5X', 8.00, '1000', 'Lechon-entero-8-10kgr.jpg', 'Lechon-entero-8-10kgr.jpg', 1, 0, 0),
(26, 'Lamb whole 12-15kgr', 'Made in ,,,', 'KGR', 'Cordero entero 12-15kg', 9.00, '1000', 'Cordero-entero-12-15kg.jpg', 'Cordero-entero-12-15kg.jpg', 1, 0, 0),
(27, 'Pork sausages, chorizo', 'Made in ,,,', 'KGR', 'Chorizo de cerdo', 6.00, '1000', 'Chorizo-de-cerdo.jpg', 'Chorizo-de-cerdo.jpg', 2, 0, 0),
(28, 'Pork sausages, salchicha criolla', 'Made in ,,,', 'KGR', 'Salchicha criolla', 7.00, '1000', 'Salchicha-criolla.jpg', 'Salchicha-criolla.jpg', 2, 0, 0),
(29, 'Blood sausages', 'Made in ,,,', 'KGR', 'Morcilla vasca', 6.00, '1000', 'Morcilla-vasca.jpg', 'Morcilla-vasca.jpg', 2, 0, 0),
(30, 'Spanish sausages raw', 'Made in ,,,', 'KGR', 'Chorizo colorado fresco', 9.00, '1000', 'Chorizo-colorado-fresco.jpg', 'Chorizo-colorado-fresco.jpg', 2, 0, 0),
(31, 'Cooked ham', 'Made in ,,,', 'KGR', 'Jamon cocido Paladini', 8.00, '1000', 'Jamon-cocido-Paladini.jpg', 'Jamon-cocido-Paladini.jpg', 2, 0, 0),
(32, 'Liverpaste leberwurst 250g', 'Made in ,,,', 'PCE', 'Leberwurst 250grm', 1.00, '1000', 'leberwursty250g.jpg', 'leberwursty250g.jpg', 2, 0, 0),
(33, 'Smoked Ham', 'Made in ,,,', 'KGR', 'Lomito ahumado', 8.00, '1000', 'Lomito-ahumado.jpg', 'Lomito-ahumado.jpg', 2, 0, 0),
(34, 'Mortadela Bologna', 'Made in ,,,', 'KGR', 'Mortadela bologna ', 6.00, '1000', 'Mortadela-bologna.jpg', 'Mortadela-bologna.jpg', 2, 0, 0),
(35, 'Bacon smoked streaky ', 'Made in ,,,', 'KGR', 'Panceta ahumada entera', 11.00, '1000', 'Panceta-ahumada-entera.jpg', 'Panceta-ahumada-entera.jpg', 2, 0, 0),
(36, 'Bacon smoked sliced', 'Made in ,,,', 'KGR', 'Panceta ahumada feteada', 13.00, '1000', 'Panceta-ahumada-feteada.jpg', 'Panceta-ahumada-feteada.jpg', 2, 0, 0),
(37, 'Smoked sausage frankfurt', 'Made in ,,,', 'KGR', 'Salchicha ahumada ', 9.00, '1000', 'Salchicha-ahumada.jpg', 'Salchicha-ahumada.jpg', 2, 0, 0),
(38, 'Bologna sausage w/ham 2,5kg', 'Made in ,,,', 'KGR', 'Salchichon con jamon 2,5kgr', 5.00, '1000', 'Salchichon-con-jamon.jpg', 'Salchichon-con-jamon.jpg', 2, 0, 0),
(39, 'Bologna sausage w/pepper 2,5kg', 'Made in ,,,', 'KGR', 'Salchichon primavera 2,5kgr', 5.00, '1000', 'Salchichon-primavera.jpg', 'Salchichon-primavera.jpg', 2, 0, 0),
(40, 'Chicken breast boneless', 'Made in ,,,', 'KGR', 'Suprema de pollo s/h', 4.00, '1000', 'Suprema-de-pollo.jpg', 'Suprema-de-pollo.jpg', 3, 0, 0),
(41, 'Chicken drumsticks', 'Made in ,,,', 'KGR', 'Pernil de pollo', 3.00, '1000', 'Pernil-de-pollo.jpg', 'Pernil-de-pollo.jpg', 3, 0, 0),
(42, 'Chicken leg quarter', 'Made in ,,,', 'KGR', 'Pata Muslo de pollo', 2.00, '1000', 'Pata-muslo-de-pollo.jpg', 'Pata-muslo-de-pollo.jpg', 3, 0, 0),
(43, 'Chicken whole', 'Made in ,,,', 'KGR', 'Pollo entero eviscerado', 2.00, '1000', 'Pollo-entero-eviscerado.jpg', 'Pollo-entero-eviscerado.jpg', 3, 0, 0),
(44, 'Chicken wings', 'Made in ,,,', 'KGR', 'Alas de pollo', 2.00, '1000', 'Alas-de-pollo.jpg', 'Alas-de-pollo.jpg', 3, 0, 0),
(45, 'Cod fish fillet', 'Made in ,,,', 'KGR', 'Abadejo fillet', 9.00, '1000', 'Abadejo-filet-congelado.jpg', 'Abadejo-filet-congelado.jpg', 4, 0, 0),
(46, 'Fish sticks', 'Made in ,,,', 'KGR', 'Bastones pescado rebozados', 3.00, '1000', 'Bastones-pescado-rebozados.jpg', 'Bastones-pescado-rebozados.jpg', 4, 0, 0),
(47, 'Fish local merluza fillet', 'Made in ,,,', 'KGR', 'Merluza fillet', 4.00, '1000', 'merluza-filetes-sin-piel.jpg', 'merluza-filetes-sin-piel.jpg', 4, 0, 0),
(48, 'Crab-sticks- surimi', 'Made in ,,,', 'KGR', 'Palito de oceano- kanikama', 8.00, '1000', 'Palito-de-oceano-kanikama.jpg', 'Palito-de-oceano-kanikama.jpg', 4, 0, 0),
(49, 'Prawns ', 'Made in ,,,', 'KGR', 'Langostino ', 10.00, '1000', 'Langostino.jpg', 'Langostino.jpg', 4, 0, 0),
(50, 'Seafood cocktail', 'Made in ,,,', 'KGR', 'Base para cazuela-paella', 11.00, '1000', 'Base-para-cazuela-paella.jpg', 'Base-para-cazuela-paella.jpg', 4, 0, 0),
(51, 'Squid clean tubes', 'Made in ,,,', 'KGR', 'Calamar tubo', 13.00, '1000', 'Calamar-tubo.jpg', 'Calamar-tubo.jpg', 4, 0, 0),
(52, 'Squid whole', 'Made in ,,,', 'KGR', 'Calamar entero', 7.00, '1000', 'Calamar-entero.jpg', 'Calamar-entero.jpg', 4, 0, 0),
(53, 'Ice cream conogol/cornetto', 'Made in ,,,', 'PCE', 'Helado conogol', 1.00, '1000', 'Helado-conogol.jpg', 'Helado-conogol.jpg', 5, 0, 0),
(54, 'Ice cream in cup indiv', 'Made in ,,,', 'PCE', 'Helado sin parar', 1.00, '1000', 'Helado-sin-parar.jpg', 'Helado-sin-parar.jpg', 5, 0, 0),
(55, 'Ice cream luxor cornetto', 'Made in ,,,', 'PCE', 'Helado luxor', 1.00, '1000', 'Helado-luxor.jpg', 'Helado-luxor.jpg', 5, 0, 0),
(56, 'Ice cream assorted 1,5kgr', 'Made in ,,,', 'PCE', 'Helado tricolor surtido 1,5kgr', 7.00, '1000', 'Helado-tricolor.jpg', 'Helado-tricolor.jpg', 5, 0, 0),
(57, 'Ice cream mega/magnum', 'Made in ,,,', 'PCE', 'Helado mega', 1.00, '1000', 'Helado-mega.jpg', 'Helado-mega.jpg', 5, 0, 0),
(58, 'Brocolli frozen', 'Made in ,,,', 'KGR', 'Brocoli congelado', 4.00, '1000', 'Brocoli-congelado.jpg', 'Brocoli-congelado.jpg', 6, 0, 0),
(59, 'Chard frozen', 'Made in ,,,', 'KGR', 'Acelga congelada', 3.00, '1000', 'Acelga-congelada.jpg', 'Acelga-congelada.jpg', 6, 0, 0),
(60, 'Corn kernells frozen', 'Made in ,,,', 'KGR', 'Choclo granos congelado', 5.00, '1000', 'Choclo-granos-congelado.jpg', 'Choclo-granos-congelado.jpg', 6, 0, 0),
(61, 'French beans frozen', 'Made in ,,,', 'KGR', 'Chaucha cortada cong', 6.00, '1000', 'Chaucha-cortada-congelada.jpg', 'Chaucha-cortada-congelada.jpg', 6, 0, 0),
(62, 'French fries', 'Made in ,,,', 'KGR', 'Papas baston congeladas', 3.00, '1000', 'Papas-baston-congeladas.jpg', 'Papas-baston-congeladas.jpg', 6, 0, 0),
(63, 'Green peas frozen', 'Made in ,,,', 'KGR', 'Arvejas congeladas', 4.00, '1000', 'Arvejas-congeladas.jpg', 'Arvejas-congeladas.jpg', 6, 0, 0),
(64, 'Mix peas/carrots/pot frozen', 'Made in ,,,', 'KGR', 'Mix jardinera congelado', 5.00, '1000', 'Mix-jardinera-congelado.jpg', 'Mix-jardinera-congelado.jpg', 6, 0, 0),
(65, 'Mix vegetables frozen', 'Made in ,,,', 'KGR', 'Mix primavera congelado', 5.00, '1000', 'Mix-primavera-congelado.jpg', 'Mix-primavera-congelado.jpg', 6, 0, 0),
(66, 'Potato balls/croquettes frozen', 'Made in ,,,', 'KGR', 'Papas noissette congeladas', 5.00, '1000', 'Papas-noissette-congeladas.jpg', 'Papas-noissette-congeladas.jpg', 6, 0, 0),
(67, 'Spinach frozen', 'Made in ,,,', 'KGR', 'Espinaca congelado', 4.00, '1000', 'Espinaca-congelado.jpg', 'Espinaca-congelado.jpg', 6, 0, 0),
(68, 'Spring rolls frozen 10pce/pkt', 'Made in ,,,', 'PKT', 'Rollitos primavera 10und', 2.00, '1000', 'rollito-primavera-10unid.jpg', 'rollito-primavera-10unid.jpg', 6, 0, 0),
(69, 'Bread baguette frozen', 'Made in ,,,', 'KGR', 'Pan Congelado', 2.00, '1000', 'Pan-Congelado.jpg', 'Pan-Congelado.jpg', 7, 0, 0),
(70, 'Croissants frozen', 'Made in ,,,', 'PCE', 'Medialunas congeladas', 0.00, '1000', 'Medialunas-congeladas.jpg', 'Medialunas-congeladas.jpg', 7, 0, 0),
(71, 'Bread white sliced 380grm', 'Made in ,,,', 'PKT', 'Pan molde blanco 380grm', 2.00, '1000', 'Pan-molde-blanco-380grm.jpg', 'Pan-molde-blanco-380grm.jpg', 7, 0, 0),
(72, 'Bread rye wheat sliced 530grm', 'Made in ,,,', 'PKT', 'Pan molde semillado 530grm', 3.00, '1000', 'Pan-molde-semillado.jpg', 'Pan-molde-semillado.jpg', 7, 0, 0),
(73, 'Bread brown sliced 380grm', 'Made in ,,,', 'PKT', 'Pan molde salvado 380grm', 2.00, '1000', 'Pan-molde-salvado-380grm.jpg', 'Pan-molde-salvado-380grm.jpg', 7, 0, 0),
(74, 'Bread sandwich arab 230grm', 'Made in ,,,', 'PKT', 'Pan arabe-tostazos 230grm', 1.00, '1000', 'Pan-arabe-tostazos-230grm.jpg', 'Pan-arabe-tostazos-230grm.jpg', 7, 0, 0),
(75, 'Bread taco-shells', 'Made in ,,,', 'PKT', 'Rapiditas 12und', 2.00, '1000', 'Rapiditas-12und.jpg', 'Rapiditas-12und.jpg', 7, 0, 0),
(76, 'Hamburguer buns 4pce', 'Made in ,,,', 'PKT', 'Pan hamburguesas 4und', 1.00, '1000', 'Pan-hamburguesas-4-unid.jpg', 'Pan-hamburguesas-4-unid.jpg', 7, 0, 0),
(77, 'Hot dog buns 6und', 'Made in ,,,', 'PKT', 'Pan viena panchos 6und', 1.00, '1000', 'Pan-viena-panchos-6und.jpg', 'Pan-viena-panchos-6und.jpg', 7, 0, 0),
(78, 'Piononos 250grm', 'Made in ,,,', 'PKT', 'Piononos 250grm', 1.00, '1000', 'Piononos-250grm.jpg', 'Piononos-250grm.jpg', 7, 0, 0),
(79, 'Pizza bases 2pces', 'Made in ,,,', 'PKT', 'Pre-pizzas 2und', 1.00, '1000', 'Pre-pizzas-2und.jpg', 'Pre-pizzas-2und.jpg', 7, 0, 0),
(80, 'Ravioli 500grm', 'Made in ,,,', 'PKT', 'Ravioles 500grm', 2.00, '1000', 'Ravioles-500grm.jpg', 'Ravioles-500grm.jpg', 7, 0, 0),
(81, 'Fresh eggs', 'Made in ,,,', 'DOZ', 'Huevos frescos', 1.00, '1000', 'huevo-frescos-30un-maple-grande.jpg', 'huevo-frescos-30un-maple-grande.jpg', 9, 0, 0),
(82, 'Milk semi-skimmed l.l. 1ltr', 'Made in ,,,', 'LTR', 'Leche descremada 12x1ltr', 1.00, '1000', 'Leche-descremada-12x1ltr.jpg', 'Leche-descremada-12x1ltr.jpg', 9, 0, 0),
(83, 'Milk whole longlife 1ltr', 'Made in ,,,', 'LTR', 'Leche entera 12x1ltr', 1.00, '1000', 'Leche-entera-12x1ltr.jpg', 'Leche-entera-12x1ltr.jpg', 9, 0, 0),
(84, 'Margarine 500grm', 'Made in ,,,', 'PKT', 'Margarina 500grm', 3.00, '1000', 'Margarina-500grm.jpg', 'Margarina-500grm.jpg', 9, 0, 0),
(85, 'Cream long life 200ml', 'Made in ,,,', 'PCE', 'Crema larga vida 200ml', 1.00, '1000', 'Crema-de-leche-baja.jpg', 'Crema-de-leche-baja.jpg', 9, 0, 0),
(86, 'Yoghurt fruit 125grm', 'Made in ,,,', 'CUP', 'Yoghurt fruta 125grm', 0.00, '1000', 'YoghurtFruta125grm.jpg', 'YoghurtFruta125grm.jpg', 9, 0, 0),
(87, 'Yoghurt vanilla 190grm', 'Made in ,,,', 'CUP', 'Yoghurt vainilla 190grm', 0.00, '1000', 'YogurVainilla190grs.jpg', 'YogurVainilla190grs.jpg', 9, 0, 0),
(88, 'Yoghurt with fruits 150grm', 'Made in ,,,', 'CUP', 'Yoghurt con frutas 150grm', 0.00, '1000', 'YoghurtConFrutas150grm.jpg', 'YoghurtConFrutas150grm.jpg', 9, 0, 0),
(89, 'Yoghurt drinks 1ltr', 'Made in ,,,', 'LTR', 'Yoghurt bebible 1ltr tetrapack', 2.00, '1000', 'YogurtBebible1litroTatrepack.jpg', 'YogurtBebible1litroTatrepack.jpg', 9, 0, 0),
(90, 'Yoghurt Natural 200grm', 'Made in ,,,', 'CUP', 'Yoghurt Natural 190grm', 1.00, '1000', 'YoghurtNatural190grm.jpg', 'YoghurtNatural190grm.jpg', 9, 0, 0),
(91, 'Cheese blue', 'Made in ,,,', 'KGR', 'Queso roquefort', 11.00, '1000', 'queso-roquefort.jpg', 'queso-roquefort.jpg', 9, 0, 0),
(92, 'Cheese edam/holanda', 'Made in ,,,', 'KGR', 'Queso holanda', 11.00, '1000', 'Queso-holanda.jpg', 'Queso-holanda.jpg', 9, 0, 0),
(93, 'Cheese gouda', 'Made in ,,,', 'KGR', 'Queso gouda', 13.00, '1000', 'queso-gouda.jpg', 'queso-gouda.jpg', 9, 0, 0),
(94, 'Cheese tybo (for slices)', 'Made in ,,,', 'KGR', 'Queso tybo maquina', 9.00, '1000', 'Queso-tybo-maquina.jpg', 'Queso-tybo-maquina.jpg', 9, 0, 0),
(95, 'Cheese mozzarella', 'Made in ,,,', 'KGR', 'Queso mozzarella', 9.00, '1000', 'Queso-mozzarella.jpg', 'Queso-mozzarella.jpg', 9, 0, 0),
(96, 'Chesse grated 150grm', 'Made in ,,,', 'PKT', 'Queso rallado paulina-veron', 3.00, '1000', 'Queso-rallado-paulina.jpg', 'Queso-rallado-paulina.jpg', 9, 0, 0),
(97, 'Cheese Ricota (soft) 500grm', 'Made in ,,,', 'PKT', 'Ricota suave seren 500grm', 2.00, '1000', 'Ricota-500grm.jpg', 'Ricota-500grm.jpg', 9, 0, 0),
(98, 'Cheese port-salut', 'Made in ,,,', 'KGR', 'Queso port-salut', 9.00, '1000', 'Queso-port-salut.jpg', 'Queso-port-salut.jpg', 9, 0, 0),
(99, 'Cheese philadelphia local 200g', 'Made in ,,,', 'JAR', 'Queso finlandia 200grm', 1.00, '1000', 'Queso-finlandia-200grm.jpg', 'Queso-finlandia-200grm.jpg', 9, 0, 0),
(100, 'Sour cream local', 'Made in ,,,', 'JAR', 'Queso blanco 300grm', 2.00, '1000', 'Queso-blanco-300grm.jpg', 'Queso-blanco-300grm.jpg', 9, 0, 0),
(101, 'Cheese spreads 190grm', 'Made in ,,,', 'JAR', 'Queso untable 190grm', 1.00, '1000', 'Queso-untable-190grm.jpg', 'Queso-untable-190grm.jpg', 9, 0, 0),
(102, 'Apple Juice 1ltr', 'Made in ,,,', 'LTR', 'Jugo manzana 1ltr ', 1.00, '1000', 'JugoManzana.jpg', 'JugoManzana.jpg', 10, 0, 0),
(103, 'Orange juice 1ltr', 'Made in ,,,', 'LTR', 'Jugo naranja 1ltr ', 1.00, '1000', 'jugoNaranja.jpg', 'jugoNaranja.jpg', 10, 0, 0),
(104, 'Multi-fruit juice 1ltr', 'Made in ,,,', 'LTR', 'Jugo multifruta 1ltr ', 1.00, '1000', 'jugoMultifruta.jpg', 'jugoMultifruta.jpg', 10, 0, 0),
(105, 'Peaches juice 1ltr', 'Made in ,,,', 'LTR', 'Jugo durazno 1ltr ', 1.00, '1000', 'jugoDurazno.jpg', 'jugoDurazno.jpg', 10, 0, 0),
(106, 'Mineral Water 6x1,5ltr', 'Made in ,,,', 'CSE', 'Agua mineral 6x1,5ltr', 4.00, '1000', 'Agua-mineral-6x15ltr.jpg', 'Agua-mineral-6x15ltr.jpg', 10, 0, 0),
(107, 'Sparkling Water 6x1,5ltr', 'Made in ,,,', 'CSE', 'Agua mineral c-gas 6x1,5ltr', 5.00, '1000', 'Agua-mineralconGas6x15ltr.jpg', 'Agua-mineralconGas6x15ltr.jpg', 10, 0, 0),
(108, 'Coca cola 12x500ml', 'Made in ,,,', 'CSE', 'Coca cola 12x500ml', 13.00, '1000', 'CocaCola12x500ml.jpg', 'CocaCola12x500ml.jpg', 10, 0, 0),
(109, 'Coca cola zero 12x500ml', 'Made in ,,,', 'CSE', 'Coca cola zero 12x500ml', 13.00, '1000', 'CocaColaZero12x500ml.jpg', 'CocaColaZero12x500ml.jpg', 10, 0, 0),
(111, 'Sprite / Sevenup 12x500ml', 'Made in ,,,', 'CSE', 'Sprite -Sevenup 12x500ml', 13.00, '1000', 'Sprite-Sevenup12x500ml.jpg', 'Sprite-Sevenup12x500ml.jpg', 10, 0, 0),
(112, 'Fanta orange 12x500ml', 'Made in ,,,', 'CSE', 'Fanta 12x500ml', 13.00, '1000', 'Fanta12x500ml.jpg', 'Fanta12x500ml.jpg', 10, 0, 0),
(113, 'Tonic water 12x500ml', 'Made in ,,,', 'CSE', 'Agua Tonica 12x500ml', 13.00, '1000', 'AguaTonica12x500ml.jpg', 'AguaTonica12x500ml.jpg', 10, 0, 0),
(114, 'Oil in spray 120grm', 'Made in ,,,', 'BTL', 'Aceite aerosol 120grm', 2.00, '1000', 'AceiteAerosol120grm.jpg', 'AceiteAerosol120grm.jpg', 11, 0, 0),
(115, 'Oil sunflower 900ml', 'Made in ,,,', 'BTL', 'Aceite girasol 900ml', 2.00, '1000', 'AceiteGirasol900ml.jpg', 'AceiteGirasol900ml.jpg', 11, 0, 0),
(116, 'Oil olive 500ml', 'Made in ,,,', 'BTL', 'Aceite oliva comun 500ml', 2.00, '1000', 'AceiteOlivaComun500ml.jpg', 'AceiteOlivaComun500ml.jpg', 11, 0, 0),
(117, 'Vinegar balsamic 250ml', 'Made in ,,,', 'BTL', 'Aceto balsamico 250ml', 2.00, '1000', 'AcetoBalsamico250ml.jpg', 'AcetoBalsamico250ml.jpg', 11, 0, 0),
(118, 'Juice concentrated lemon 500ml', 'Made in ,,,', 'BTL', 'Jugo limon minerva 500ml', 2.00, '1000', 'JugoLlimonMinerva500ml.jpg', 'JugoLlimonMinerva500ml.jpg', 11, 0, 0),
(119, 'Vinegar white 1ltr', 'Made in ,,,', 'LTR', 'Vinagre alcohol 1ltr', 1.00, '1000', 'VinagreAlcohol1litro.jpg', 'VinagreAlcohol1litro.jpg', 11, 0, 0),
(120, 'Vinegar apple 500ml', 'Made in ,,,', 'BTL', 'Vinagre manzana 500ml', 1.00, '1000', 'VinagreManzana500ml.jpg', 'VinagreManzana500ml.jpg', 11, 0, 0),
(121, 'Salt table 500grm', 'Made in ,,,', 'PKT', 'Sal fina 500grm', 0.00, '1000', 'SalFina500grm.jpg', 'SalFina500grm.jpg', 11, 0, 0),
(122, 'Salt cooking 1kgr', 'Made in ,,,', 'PKT', 'Sal gruesa 1kgr', 0.00, '1000', 'SalGruesa1kgr.jpg', 'SalGruesa1kgr.jpg', 11, 0, 0),
(123, 'Rice long grain', 'Made in ,,,', 'KGR', 'Arroz largo fino 1kgr', 1.00, '1000', 'ArrozLargoFino1kgr.jpg', 'ArrozLargoFino1kgr.jpg', 11, 0, 0),
(124, 'Sugar refinated', 'Made in ,,,', 'KGR', 'Azucar ledesma-chango 1kgr', 1.00, '1000', 'AzucarLedesmaChango1kgr.jpg', 'AzucarLedesmaChango1kgr.jpg', 11, 0, 0),
(125, 'Broth cubes 12is', 'Made in ,,,', 'PKT', 'Caldo knorr 12cub', 1.00, '1000', 'CaldoKnorr12cub.jpg', 'CaldoKnorr12cub.jpg', 11, 0, 0),
(126, 'Artificial sweetener 400 bags', 'Made in ,,,', 'BOX', 'Edulcorante 400sobres', 8.00, '1000', 'Edulcorante400sobres.jpg', 'Edulcorante400sobres.jpg', 11, 0, 0),
(127, 'Flour all porpouse 1kgr', 'Made in ,,,', 'KGR', 'Harina trigo 0000 1kgr', 1.00, '1000', 'Harina-trigo-0000.jpg', 'Harina-trigo-0000.jpg', 11, 0, 0),
(128, 'Bread crumbs ', 'Made in ,,,', 'KGR', 'Rebozador Preferido', 3.00, '1000', 'rebozador-preferido.jpg', 'rebozador-preferido.jpg', 11, 0, 0),
(129, 'Nesquick 360grm', 'Made in ,,,', 'PKT', 'Cacao nesquick x 360 gr', 2.00, '1000', 'cacao-nesquik-360g.jpg', 'cacao-nesquik-360g.jpg', 11, 0, 0),
(130, 'Coffee instant 170grm', 'Made in ,,,', 'BTL', 'Cafe instantaneo 170grm', 5.00, '1000', 'cafe-instantaneo-dolca-clasico-x-170g.jpg', 'cafe-instantaneo-dolca-clasico-x-170g.jpg', 11, 0, 0),
(131, 'Cake mix brownie exq 450grm', 'Made in ,,,', 'PKT', 'Bizcochuelo brownie 450grm', 2.00, '1000', 'Bizcochuelo-brownie450grm.jpg', 'Bizcochuelo-brownie450grm.jpg', 12, 0, 0),
(132, 'Cake mix 540grm', 'Made in ,,,', 'PKT', 'Bizcochuelo exquisita 540grm', 2.00, '1000', 'Bizcochuelo-exquisita-540grm.jpg', 'Bizcochuelo-exquisita-540grm.jpg', 12, 0, 0),
(133, 'Cereal muesli 200grm', 'Made in ,,,', 'PKT', 'Cereal maizena 200grm', 2.00, '1000', 'Cereal-maizena-200grm.jpg', 'Cereal-maizena-200grm.jpg', 12, 0, 0),
(134, 'Cereal fruit/fiber 350grm', 'Made in ,,,', 'PKT', 'Cereal granola 200grm/1,5k', 2.00, '1000', 'Cereal-granola-200grm.jpg', 'Cereal-granola-200grm.jpg', 12, 0, 0),
(135, 'Corn flakes w/sugar 700grm', 'Made in ,,,', 'PKT', 'Cereal Zucaritas 220grm', 2.00, '1000', 'Cereal-Zucaritas-220gr.jpg', 'Cereal-Zucaritas-220gr.jpg', 12, 0, 0),
(136, 'Corn Flakes 200grm', 'Made in ,,,', 'PKT', 'Copos maiz 200grm', 1.00, '1000', 'Copos-maiz-200grm.jpg', 'Copos-maiz-200grm.jpg', 12, 0, 0),
(137, 'Quaker oats 500grm', 'Made in ,,,', 'PKT', 'Avena quaker 400grm', 2.00, '1000', 'Avena-quaker-400grm.jpg', 'Avena-quaker-400grm.jpg', 12, 0, 0),
(138, 'Chocolate aguila 150grm', 'Made in ,,,', 'PCE', 'Chocolate cobert aguila 150grm', 2.00, '1000', 'Chocolate-cobert-aguila-150grm.jpg', 'Chocolate-cobert-aguila-150grm.jpg', 12, 0, 0),
(139, 'Chocolate pastry aguila 150grm', 'Made in ,,,', 'PCE', 'Chocolate taza aguila 150grm', 3.00, '1000', 'Chocolate-taza-aguila-150grm.jpg', 'Chocolate-taza-aguila-150grm.jpg', 12, 0, 0),
(140, 'Creme caramel mix 60grm', 'Made in ,,,', 'PKT', 'Flan polvo exquisita 60grm', 0.00, '1000', 'Flan-polvo-exquisita60grm.jpg', 'Flan-polvo-exquisita60grm.jpg', 12, 0, 0),
(141, 'Gelatine mix 80grm', 'Made in ,,,', 'PKT', 'Gelatina polvo 80grm', 0.00, '1000', 'Gelatina-polvo-80grm.jpg', 'Gelatina-polvo-80grm.jpg', 12, 0, 0),
(142, 'Pudding chocolate mix 90grm', 'Made in ,,,', 'PKT', 'Postre de chocolate 90grm', 0.00, '1000', 'Postre-de-chocolate-90grm.jpg', 'Postre-de-chocolate-90grm.jpg', 12, 0, 0),
(143, 'Pasta linguini', 'Made in ,,,', 'PKT', 'Fideos anchos d.vicente 500g', 2.00, '1000', 'FideosDonVicente.jpg', 'FideosDonVicente.jpg', 12, 0, 0),
(144, 'Pasta elbow maccaroni', 'Made in ,,,', 'PKT', 'Fideos codos 500grm', 1.00, '1000', 'Fideoscodos500grm.jpg', 'Fideoscodos500grm.jpg', 12, 0, 0),
(145, 'Pasta penne-rigatti', 'Made in ,,,', 'PKT', 'Fideos mostachol 500grm', 1.00, '1000', 'FideosMostachol500grm.jpg', 'FideosMostachol500grm.jpg', 12, 0, 0),
(146, 'Tomato ketchup 400grm', 'Made in ,,,', 'BTL', 'Ketchup hellmanns 400grm', 3.00, '1000', 'KetchupHellmanns400grm.jpg', 'KetchupHellmanns400grm.jpg', 12, 0, 0),
(147, 'Mayonnaise 332grm', 'Made in ,,,', 'BTL', 'Mayonesa 332grm', 1.00, '1000', 'Mayonesa332grm.jpg', 'Mayonesa332grm.jpg', 12, 0, 0),
(148, 'Mustard sauce 200grm', 'Made in ,,,', 'JAR', 'Mostaza savora 200grm', 1.00, '1000', 'MostazaSavora200grm.jpg', 'MostazaSavora200grm.jpg', 12, 0, 0),
(149, 'Sauce barbeque 375grm', 'Made in ,,,', 'JAR', 'Salsa barbacoa 375grm', 2.00, '1000', 'SalsaBarbacoa375grm.jpg', 'SalsaBarbacoa375grm.jpg', 12, 0, 0),
(150, 'Sauce chilli 375grm', 'Made in ,,,', 'BTL', 'Salsa chili picante 285 grm', 1.00, '1000', 'SalsaChilIPpicante285grm.jpg', 'SalsaChilIPpicante285grm.jpg', 12, 0, 0),
(151, 'Honey bee 500grm', 'Made in ,,,', 'JAR', 'Miel abejas 500grm', 2.00, '1000', 'MielAabejas500grm.jpg', 'MielAabejas500grm.jpg', 12, 0, 0),
(152, 'Peanuts extra ', 'Made in ,,,', 'KGR', 'Mani pelado salado', 4.00, '1000', 'Mani-pelado-salado.jpg', 'Mani-pelado-salado.jpg', 12, 0, 0),
(153, 'Apricots dried 1 kg', 'Made in ,,,', 'KGR', 'Orejones de durazno', 8.00, '1000', 'Orejones-durazno.jpg', 'Orejones-durazno.jpg', 12, 0, 0),
(154, 'Raisins 1 kg', 'Made in ,,,', 'KGR', 'Pasas de Uva s/semilla', 5.00, '1000', 'PasasdeUvas-semilla.jpg', 'PasasdeUvas-semilla.jpg', 12, 0, 0),
(155, 'Lentils dry', 'Made in ,,,', 'KGR', 'Lentejas secas ', 2.00, '1000', 'Lentejas-secas.jpg', 'Lentejas-secas.jpg', 12, 0, 0),
(156, 'Beans Alubias', 'Made in ,,,', 'KGR', 'Porotos Alubias', 2.00, '1000', 'Porotos-Alubias.jpg', 'Porotos-Alubias.jpg', 12, 0, 0),
(157, 'Pineapple slices 836grm', 'Made in ,,,', 'TIN', 'Anana mitades 836grm', 2.00, '1000', 'Anana-mitades-836gr.jpg', 'Anana-mitades-836gr.jpg', 13, 0, 0),
(158, 'Fruit cocktail 820grm', 'Made in ,,,', 'TIN', 'Coctel frutas 820grm', 2.00, '1000', 'Coctel-frutas-820grm.jpg', 'Coctel-frutas-820grm.jpg', 13, 0, 0),
(159, 'Peaches halves 820grm', 'Made in ,,,', 'TIN', 'Duraznos mitades 820grm', 1.00, '1000', 'Duraznos-mitades-820grm.jpg', 'Duraznos-mitades-820grm.jpg', 13, 0, 0),
(160, 'Pears halves 820grm', 'Made in ,,,', 'TIN', 'Peras mitades 820grm', 2.00, '1000', 'Peras-mitades-820grm.jpg', 'Peras-mitades-820grm.jpg', 13, 0, 0),
(161, 'Tuna in oil 170grm', 'Made in ,,,', 'TIN', 'Atun aceite 170grm', 1.00, '1000', 'Atun-aceite-170grm.jpg', 'Atun-aceite-170grm.jpg', 13, 0, 0),
(162, 'Tuna in brine 170grm', 'Made in ,,,', 'TIN', 'Atun natural 170grm', 1.00, '1000', 'Atun-natural-170grm.jpg', 'Atun-natural-170grm.jpg', 13, 0, 0),
(163, 'Mackerel in oil 425 g', 'Made in ,,,', 'TIN', 'Caballa en aceite 380grm', 2.00, '1000', 'Caballa-aceite-380grm.jpg', 'Caballa-aceite-380grm.jpg', 13, 0, 0),
(164, 'Mackerel in tomato 425 g', 'Made in ,,,', 'TIN', 'Caballa en tomate 380grm', 2.00, '1000', 'Caballa-tomate-380grm.jpg', 'Caballa-tomate-380grm.jpg', 13, 0, 0),
(165, 'Sardines in oil 125 g', 'Made in ,,,', 'TIN', 'Sardinas en aceite 125grm', 1.00, '1000', 'Sardinas-aceite-125grm.jpg', 'Sardinas-aceite-125grm.jpg', 13, 0, 0),
(166, 'Sardines in tomato 125grm', 'Made in ,,,', 'TIN', 'Sardinas tomate 125grm', 1.00, '1000', 'Sardinas-tomate-125grm.jpg', 'Sardinas-tomate-125grm.jpg', 13, 0, 0),
(167, 'Tomato peeled 400grm', 'Made in ,,,', 'TIN', 'Tomate perita 400grm', 1.00, '1000', 'Tomate-perita-400grm.jpg', 'Tomate-perita-400grm.jpg', 13, 0, 0),
(168, 'Tomato salsify 500grm', 'Made in ,,,', 'TIN', 'Tomate pure 500grm', 0.00, '1000', 'Tomate-pure-500grm.jpg', 'Tomate-pure-500grm.jpg', 13, 0, 0),
(169, 'Corn kernels 350grm', 'Made in ,,,', 'TIN', 'Choclo entero 350grm', 1.00, '1000', 'Choclo-entero-350grm.jpg', 'Choclo-entero-350grm.jpg', 13, 0, 0),
(170, 'Peppers oil 750grm', 'Made in ,,,', 'TIN', 'Morron aceite 750grm', 1.00, '1000', 'Morron-aceite-750grm.jpg', 'Morron-aceite-750grm.jpg', 13, 0, 0),
(171, 'Palm hearts 400grm', 'Made in ,,,', 'TIN', 'Palmitos enteros 400grm', 2.00, '1000', 'Palmitos-enteros-400grm.jpg', 'Palmitos-enteros-400grm.jpg', 13, 0, 0),
(172, 'Crackers sky-flakes 144grm', 'Made in ,,,', 'PKT', 'Galletitas club social 144grm', 2.00, '1000', 'Galletitas-club-social-144grm.jpg', 'Galletitas-club-social-144grm.jpg', 14, 0, 0),
(173, 'Cream crackers 300grm', 'Made in ,,,', 'PKT', 'Galletitas criollitas 300grm', 1.00, '1000', 'Galletitas-criollitas-300gr.jpg', 'Galletitas-criollitas-300gr.jpg', 14, 0, 0),
(174, 'Waffers opera 92grm', 'Made in ,,,', 'PKT', 'Galletitas opera 92grm', 0.00, '1000', 'Galletitas-opera-92grm.jpg', 'Galletitas-opera-92grm.jpg', 14, 0, 0),
(175, 'Cookies chips ahoy 118grm', 'Made in ,,,', 'PKT', 'Galletitas pepitos 118grm', 1.00, '1000', 'Galletitas-pepitos-118grm.jpg', 'Galletitas-pepitos-118grm.jpg', 14, 0, 0),
(176, 'Crackers ritz 125grm', 'Made in ,,,', 'PKT', 'Galletitas rex 125grm', 1.00, '1000', 'Galletitas-rex-125grm.jpg', 'Galletitas-rex-125grm.jpg', 14, 0, 0),
(177, 'Cookies filled-chocolate rumba 120grm', 'Made in ,,,', 'PKT', 'Galletitas rumba 120grm', 0.00, '1000', 'Galletitas-rumba-120grm.jpg', 'Galletitas-rumba-120grm.jpg', 14, 0, 0),
(178, 'Cookies filled-strawb sonrisas 118grm', 'Made in ,,,', 'PKT', 'Galletitas sonrisas 118grm', 0.00, '1000', 'Galletitas-sonrisas-18grm.jpg', 'Galletitas-sonrisas-18grm.jpg', 14, 0, 0),
(179, 'Cookies assorted 400grm', 'Made in ,,,', 'PKT', 'Galletitas surtidas 400grm', 1.00, '1000', 'Galletitas-surtidas-400grm.jpg', 'Galletitas-surtidas-400grm.jpg', 14, 0, 0),
(180, 'Chips lays 105grm', 'Made in ,,,', 'PKT', 'Papas lays 105grm', 1.00, '1000', 'Papas-lays-105grm.jpg', 'Papas-lays-105grm.jpg', 14, 0, 0),
(181, 'Popcorn microwave 90grm', 'Made in ,,,', 'PKT', 'Pochoclos microondas 90grm', 1.00, '1000', 'Pochoclos-microondas-90grm.jpg', 'Pochoclos-microondas-90grm.jpg', 14, 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_productos`
--
ALTER TABLE `tbl_productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_productos`
--
ALTER TABLE `tbl_productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=182;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
