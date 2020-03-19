-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 19-03-2020 a las 18:59:00
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
-- Base de datos: `prontoya_shop`
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
  `strOferta` int(11) NOT NULL,
  `userModif` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_productos`
--

INSERT INTO `tbl_productos` (`id_producto`, `strProdNombProducto`, `strProdMarca`, `strProdVolumen`, `strProdDescripcion`, `floatProdPrecio`, `strProdCodigo`, `strProdImagen`, `strProdImagenThumb`, `id_categProd`, `id_subcategProd`, `strOferta`, `userModif`) VALUES
(1, 'Beef cube-roll', 'Made in ,,,', 'KGR', 'Bife ancho s/h', 470.00, '1000', 'Bife-ancho.jpg', 'Bife-ancho.jpg', 1, 0, 0, 'Daniel Valdez'),
(2, 'Beef eye-rib steak', 'Made in ', 'KGR', 'Bife ancho cortado c/h', 450.00, '1000', 'Bife-ancho-cortado.jpg', 'Bife-ancho-cortado.jpg', 1, 0, 0, 'Daniel Valdez'),
(3, 'Beef flank', 'Made in ,,,', 'KG', 'Vacio vacuno', 420.00, '1000', 'Vacio-vacuno.jpg', 'Vacio-vacuno.jpg', 1, 0, 1, 'Daniel Valdez'),
(6, 'Beef knuckles cutted', 'Made in ,,,', 'KGR', 'Osobuco cortado', 350.00, '1000', 'Osobuco-cortado.jpg', 'Osobuco-cortado.jpg', 1, 0, 0, 'Daniel Valdez'),
(8, 'Beef minced', 'Made in ,,,', 'KGR', 'Picada vacuna', 300.00, '1000', 'Picada-vacuna.jpg', 'Picada-vacuna.jpg', 1, 0, 0, 'Daniel Valdez'),
(10, 'Beef ribs (asado)', 'Made in ,,,', 'KG', 'Asado vacuno', 400.00, '1000', 'Asado-vacuno.jpg', 'Asado-vacuno.jpg', 1, 0, 1, 'Daniel Valdez'),
(11, 'Beef rose meat', 'Made in ,,,', 'KGR', 'Matambre vacuno', 460.00, '1000', 'Matambre-vacuno.jpg', 'Matambre-vacuno.jpg', 1, 0, 0, 'Daniel Valdez'),
(12, 'Beef shoulder b/less', 'Made in ,,,', 'KGR', 'Paleta vacuna', 410.00, '1000', 'Paleta-vacuna.jpg', 'Paleta-vacuna.jpg', 1, 0, 0, 'Daniel Valdez'),
(13, 'Beef striploin b/less', 'Made in ,,,', 'KGR', 'Bife de chorizo', 490.00, '1000', 'Bife-de-chorizo.jpg', 'Bife-de-chorizo.jpg', 1, 0, 0, 'Daniel Valdez'),
(14, 'Beef tenderloin', 'Made in ,,,', 'KGR', 'Lomo vacuno', 620.00, '1000', 'Lomo-vacuno.jpg', 'Lomo-vacuno.jpg', 1, 0, 0, 'Daniel Valdez'),
(15, 'Beef thik-flank', 'Made in ,,,', 'KGR', 'Bola de lomo entera', 460.00, '1000', 'Bola-de-lomo-entera.jpg', 'Bola-de-lomo-entera.jpg', 1, 0, 0, 'Daniel Valdez'),
(16, 'Beef tongue', 'Made in ,,,', 'KGR', 'Lengua vacuna', 320.00, '1000', 'Lengua-vacuna.jpg', 'Lengua-vacuna.jpg', 1, 0, 0, 'Daniel Valdez'),
(17, 'Beef topside ', 'Made in ,,,', 'KGR', 'Nalga vacuna', 460.00, '1000', 'Nalga-vacuna.jpg', 'Nalga-vacuna.jpg', 1, 0, 0, 'Daniel Valdez'),
(18, 'Pork belly meat b/less', 'Made in ,,,', 'KGR', 'Panceta cerdo fresca', 490.00, '1000', 'Panceta-cerdo-fresca.jpg', 'Panceta-cerdo-fresca.jpg', 1, 0, 0, 'Daniel Valdez'),
(19, 'Pork knuckles', 'Made in ,,,', 'KGR', 'Codillo de cerdo', 300.00, '1000', 'Codillo-de-cerdo.jpg', 'Codillo-de-cerdo.jpg', 1, 0, 0, 'Daniel Valdez'),
(20, 'Pork loin bone-in (chops)', 'Made in ,,,', 'KGR', 'Chuletas de cerdo', 420.00, '1000', 'Chuletas-de-cerdo.jpg', 'Chuletas-de-cerdo.jpg', 1, 0, 0, 'Daniel Valdez'),
(21, 'Pork neck boneless', 'Made in ,,,', 'KGR', 'Bondiola de cerdo', 470.00, '1000', 'Bondiola-de-cerdo.jpg', 'Bondiola-de-cerdo.jpg', 1, 0, 0, 'Daniel Valdez'),
(22, 'Pork spare-ribs', 'Made in ,,,', 'KGR', 'Costillar cerdo-pecho ', 450.00, '1000', 'Costillar-cerdo-pecho.jpg', 'Costillar-cerdo-pecho.jpg', 1, 0, 0, 'Daniel Valdez'),
(23, 'Pork tenderloin', 'Made in ,,,', 'KGR', 'Solomillo de cerdo', 420.00, '1000', 'Solomillo-cerdo.jpg', 'Solomillo-cerdo.jpg', 1, 0, 0, 'Daniel Valdez'),
(24, 'Pork trotters', 'Made in ,,,', 'KGR', 'Patitas de cerdo', 320.00, '1000', 'Patitas-de-cerdo.jpg', 'Patitas-de-cerdo.jpg', 1, 0, 0, 'Daniel Valdez'),
(25, 'Suckling Pig 8-10kgr', 'Made in ,,,', 'KGR', 'Lechon entero 8-10kgr - 5X', 360.00, '1000', 'Lechon-entero-8-10kgr.jpg', 'Lechon-entero-8-10kgr.jpg', 1, 0, 0, 'Daniel Valdez'),
(26, 'Lamb whole 12-15kgr', 'Made in ,,,', 'KGR', 'Cordero entero 12-15kg', 590.00, '1000', 'Cordero-entero-12-15kg.jpg', 'Cordero-entero-12-15kg.jpg', 1, 0, 0, 'Daniel Valdez'),
(27, 'Pork sausages, chorizo', 'Made in ,,,', 'KG', 'Chorizo de cerdo', 250.00, '1000', 'Chorizo-de-cerdo.jpg', 'Chorizo-de-cerdo.jpg', 2, 0, 1, 'Daniel Valdez'),
(28, 'Pork sausages, salchicha criolla', 'Made in ,,,', 'KGR', 'Salchicha criolla', 310.00, '1000', 'Salchicha-criolla.jpg', 'Salchicha-criolla.jpg', 2, 0, 0, 'Daniel Valdez'),
(29, 'Blood sausages', 'Made in ,,,', 'KGR', 'Morcilla vasca', 250.00, '1000', 'Morcilla-vasca.jpg', 'Morcilla-vasca.jpg', 2, 0, 0, 'Daniel Valdez'),
(30, 'Spanish sausages raw', 'Made in ,,,', 'KGR', 'Chorizo colorado fresco', 340.00, '1000', 'Chorizo-colorado-fresco.jpg', 'Chorizo-colorado-fresco.jpg', 2, 0, 0, 'Daniel Valdez'),
(31, 'Cooked ham', 'Made in ,,,', '100 gr', 'Jamon cocido  100 gr', 55.00, '1000', 'Jamon-cocido-Paladini.jpg', 'Jamon-cocido-Paladini.jpg', 2, 0, 0, 'Daniel Valdez'),
(32, 'Liverpaste leberwurst 250g', 'Made in ,,,', 'PCE', 'Leberwurst 250grm', 230.00, '1000', 'leberwursty250g.jpg', 'leberwursty250g.jpg', 2, 0, 0, 'Daniel Valdez'),
(33, 'Smoked Ham', 'Made in ,,,', 'KGR', 'Lomito ahumado 100gr', 120.00, '1000', 'Lomito-ahumado.jpg', 'Lomito-ahumado.jpg', 2, 0, 0, 'Daniel Valdez'),
(34, 'Mortadela Bologna', 'Made in ,,,', 'KGR', 'Mortadela bologna 100gr.', 55.00, '1000', 'Mortadela-bologna.jpg', 'Mortadela-bologna.jpg', 2, 0, 0, 'Daniel Valdez'),
(35, 'Bacon smoked streaky ', 'Made in ,,,', 'KGR', 'Panceta ahumada entera', 320.00, '1000', 'Panceta-ahumada-entera.jpg', 'Panceta-ahumada-entera.jpg', 2, 0, 0, 'Daniel Valdez'),
(36, 'Bacon smoked sliced', 'Made in ,,,', 'KGR', 'Panceta ahumada 100g.', 170.00, '1000', 'Panceta-ahumada-feteada.jpg', 'Panceta-ahumada-feteada.jpg', 2, 0, 0, 'Daniel Valdez'),
(37, 'Smoked sausage frankfurt', 'Made in ,,,', 'KGR', 'Salchicha ahumada ', 290.00, '1000', 'Salchicha-ahumada.jpg', 'Salchicha-ahumada.jpg', 2, 0, 0, 'Daniel Valdez'),
(38, 'Bologna sausage w/ham 2,5kg', 'Made in ,,,', 'KGR', 'Salchichon con jamon 100g.', 45.00, '1000', 'Salchichon-con-jamon.jpg', 'Salchichon-con-jamon.jpg', 2, 0, 0, 'Daniel Valdez'),
(39, 'Bologna sausage w/pepper 2,5kg', 'Made in ,,,', 'KGR', 'Salchichon primavera x 100g', 45.00, '1000', 'Salchichon-primavera.jpg', 'Salchichon-primavera.jpg', 2, 0, 0, 'Daniel Valdez'),
(40, 'Chicken breast boneless', 'Made in ,,,', 'KGR', 'Suprema de pollo  x Kg', 320.00, '1000', 'Suprema-de-pollo.jpg', 'Suprema-de-pollo.jpg', 3, 0, 0, 'Daniel Valdez'),
(41, 'Chicken drumsticks', 'Made in ,,,', 'KGR', 'Pernil de pollo x Kg', 200.00, '1000', 'Pernil-de-pollo.jpg', 'Pernil-de-pollo.jpg', 3, 0, 0, 'Daniel Valdez'),
(42, 'Chicken leg quarter', 'Made in ,,,', 'KGR', 'Pata Muslo x 3 kg', 279.00, '1000', 'Pata-muslo-de-pollo.jpg', 'Pata-muslo-de-pollo.jpg', 3, 0, 1, 'Daniel Valdez'),
(43, 'Chicken whole', 'Made in ,,,', 'KGR', 'Pollo entero eviscerado x Kg', 120.00, '1000', 'Pollo-entero-eviscerado.jpg', 'Pollo-entero-eviscerado.jpg', 3, 0, 0, 'Daniel Valdez'),
(44, 'Chicken wings', 'Made in ,,,', 'KGR', 'Alas de pollo x Kg', 150.00, '1000', 'Alas-de-pollo.jpg', 'Alas-de-pollo.jpg', 3, 0, 0, 'Daniel Valdez'),
(45, 'Cod fish fillet', 'Made in ,,,', 'KGR', 'Abadejo fillet', 290.00, '1000', 'Abadejo-filet-congelado.jpg', 'Abadejo-filet-congelado.jpg', 4, 0, 0, 'Daniel Valdez'),
(46, 'Fish sticks', 'Made in ,,,', 'KGR', 'Bastones pescado rebozados', 320.00, '1000', 'Bastones-pescado-rebozados.jpg', 'Bastones-pescado-rebozados.jpg', 4, 0, 0, 'Daniel Valdez'),
(47, 'Fish local merluza fillet', 'Made in ,,,', 'KGR', 'Merluza fillet', 340.00, '1000', 'merluza-filetes-sin-piel.jpg', 'merluza-filetes-sin-piel.jpg', 4, 0, 0, 'Daniel Valdez'),
(48, 'Crab-sticks- surimi', 'Made in ,,,', 'KGR', 'Palito de oceano- kanikama', 340.00, '1000', 'Palito-de-oceano-kanikama.jpg', 'Palito-de-oceano-kanikama.jpg', 4, 0, 0, 'Daniel Valdez'),
(49, 'Prawns ', 'Made in ,,,', 'KGR', 'Langostino ', 330.00, '1000', 'Langostino.jpg', 'Langostino.jpg', 4, 0, 0, 'Daniel Valdez'),
(51, 'Squid clean tubes', 'Made in ,,,', 'KGR', 'Calamar tubo', 350.00, '1000', 'Calamar-tubo.jpg', 'Calamar-tubo.jpg', 4, 0, 0, 'Daniel Valdez'),
(52, 'Squid whole', 'Made in ,,,', 'KGR', 'Calamar entero', 360.00, '1000', 'Calamar-entero.jpg', 'Calamar-entero.jpg', 4, 0, 0, 'Daniel Valdez'),
(53, 'Ice cream conogol/cornetto', 'Made in ,,,', 'PCE', 'Helado conogol', 0.00, '1000', 'Helado-conogol.jpg', 'Helado-conogol.jpg', 5, 0, 0, 'Daniel Valdez'),
(54, 'Ice cream in cup indiv', 'Made in ,,,', 'PCE', 'Helado sin parar', 0.00, '1000', 'Helado-sin-parar.jpg', 'Helado-sin-parar.jpg', 5, 0, 0, 'Daniel Valdez'),
(55, 'Ice cream luxor cornetto', 'Made in ,,,', 'PCE', 'Helado luxor', 0.00, '1000', 'Helado-luxor.jpg', 'Helado-luxor.jpg', 5, 0, 0, 'Daniel Valdez'),
(56, 'Ice cream assorted 1,5kgr', 'Made in ,,,', 'PCE', 'Helado tricolor surtido 1,5kgr', 0.00, '1000', 'Helado-tricolor.jpg', 'Helado-tricolor.jpg', 5, 0, 0, 'Daniel Valdez'),
(57, 'Ice cream mega/magnum', 'Made in ,,,', 'PCE', 'Helado mega', 0.00, '1000', 'Helado-mega.jpg', 'Helado-mega.jpg', 5, 0, 0, 'Daniel Valdez'),
(58, 'Brocolli frozen', 'Made in ,,,', 'KGR', 'Brocoli congelado', 0.00, '1000', 'Brocoli-congelado.jpg', 'Brocoli-congelado.jpg', 6, 0, 0, 'Daniel Valdez'),
(59, 'Chard frozen', 'Made in ,,,', 'KGR', 'Acelga congelada', 0.00, '1000', 'Acelga-congelada.jpg', 'Acelga-congelada.jpg', 6, 0, 0, 'Daniel Valdez'),
(60, 'Corn kernells frozen', 'Made in ,,,', 'KGR', 'Choclo granos congelado', 0.00, '1000', 'Choclo-granos-congelado.jpg', 'Choclo-granos-congelado.jpg', 6, 0, 0, 'Daniel Valdez'),
(61, 'French beans frozen', 'Made in ,,,', 'KGR', 'Chaucha cortada cong', 0.00, '1000', 'Chaucha-cortada-congelada.jpg', 'Chaucha-cortada-congelada.jpg', 6, 0, 0, 'Daniel Valdez'),
(62, 'French fries', 'Made in ,,,', 'KGR', 'Papas baston congeladas', 0.00, '1000', 'Papas-baston-congeladas.jpg', 'Papas-baston-congeladas.jpg', 6, 0, 0, 'Daniel Valdez'),
(63, 'Green peas frozen', 'Made in ,,,', 'KGR', 'Arvejas congeladas', 0.00, '1000', 'Arvejas-congeladas.jpg', 'Arvejas-congeladas.jpg', 6, 0, 0, 'Daniel Valdez'),
(64, 'Mix peas/carrots/pot frozen', 'Made in ,,,', 'KGR', 'Mix jardinera congelado', 0.00, '1000', 'Mix-jardinera-congelado.jpg', 'Mix-jardinera-congelado.jpg', 6, 0, 0, 'Daniel Valdez'),
(65, 'Mix vegetables frozen', 'Made in ,,,', 'KGR', 'Mix primavera congelado', 0.00, '1000', 'Mix-primavera-congelado.jpg', 'Mix-primavera-congelado.jpg', 6, 0, 0, 'Daniel Valdez'),
(66, 'Potato balls/croquettes frozen', 'Made in ,,,', 'KGR', 'Papas noissette congeladas', 0.00, '1000', 'Papas-noissette-congeladas.jpg', 'Papas-noissette-congeladas.jpg', 6, 0, 0, 'Daniel Valdez'),
(67, 'Spinach frozen', 'Made in ,,,', 'KGR', 'Espinaca congelado', 0.00, '1000', 'Espinaca-congelado.jpg', 'Espinaca-congelado.jpg', 6, 0, 0, 'Daniel Valdez'),
(68, 'Spring rolls frozen 10pce/pkt', 'Made in ,,,', 'PKT', 'Rollitos primavera 10und', 0.00, '1000', 'rollito-primavera-10unid.jpg', 'rollito-primavera-10unid.jpg', 6, 0, 0, 'Daniel Valdez'),
(69, 'Bread baguette frozen', 'Made in ,,,', 'KGR', 'Pan Congelado', 0.00, '1000', 'Pan-Congelado.jpg', 'Pan-Congelado.jpg', 7, 0, 0, 'Daniel Valdez'),
(70, 'Croissants frozen', 'Made in ,,,', 'PCE', 'Medialunas congeladas', 0.00, '1000', 'Medialunas-congeladas.jpg', 'Medialunas-congeladas.jpg', 7, 0, 0, ''),
(71, 'Bread white sliced 380grm', 'Made in ,,,', 'PKT', 'Pan molde blanco 380grm', 0.00, '1000', 'Pan-molde-blanco-380grm.jpg', 'Pan-molde-blanco-380grm.jpg', 7, 0, 0, 'Daniel Valdez'),
(72, 'Bread rye wheat sliced 530grm', 'Made in ,,,', 'PKT', 'Pan molde semillado 530grm', 0.00, '1000', 'Pan-molde-semillado.jpg', 'Pan-molde-semillado.jpg', 7, 0, 0, 'Daniel Valdez'),
(73, 'Bread brown sliced 380grm', 'Made in ,,,', 'PKT', 'Pan molde salvado 380grm', 0.00, '1000', 'Pan-molde-salvado-380grm.jpg', 'Pan-molde-salvado-380grm.jpg', 7, 0, 0, 'Daniel Valdez'),
(74, 'Bread sandwich arab 230grm', 'Made in ,,,', 'PKT', 'Pan arabe-tostazos 230grm', 0.00, '1000', 'Pan-arabe-tostazos-230grm.jpg', 'Pan-arabe-tostazos-230grm.jpg', 7, 0, 0, 'Daniel Valdez'),
(75, 'Bread taco-shells', 'Made in ,,,', 'PKT', 'Rapiditas 12und', 0.00, '1000', 'Rapiditas-12und.jpg', 'Rapiditas-12und.jpg', 7, 0, 0, 'Daniel Valdez'),
(76, 'Hamburguer buns 4pce', 'Made in ,,,', 'PKT', 'Pan hamburguesas 4und', 50.00, '1000', 'Pan-hamburguesas-4-unid.jpg', 'Pan-hamburguesas-4-unid.jpg', 7, 0, 0, 'Daniel Valdez'),
(77, 'Hot dog buns 6und', 'Made in ,,,', 'PKT', 'Pan viena panchos 6und', 50.00, '1000', 'Pan-viena-panchos-6und.jpg', 'Pan-viena-panchos-6und.jpg', 7, 0, 0, 'Daniel Valdez'),
(78, 'Piononos 250grm', 'Made in ,,,', 'PKT', 'Piononos 250grm', 45.00, '1000', 'Piononos-250grm.jpg', 'Piononos-250grm.jpg', 7, 0, 0, 'Daniel Valdez'),
(79, 'Pizza bases 2pces', 'Made in ,,,', 'PKT', 'Pre-pizzas und', 50.00, '1000', 'Pre-pizzas-2und.jpg', 'Pre-pizzas-2und.jpg', 7, 0, 0, 'Daniel Valdez'),
(80, 'Ravioli 500grm', 'Made in ,,,', 'PKT', 'Ravioles 500grm', 160.00, '1000', 'Ravioles-500grm.jpg', 'Ravioles-500grm.jpg', 7, 0, 0, 'Daniel Valdez'),
(81, 'Fresh eggs', 'Made in ,,,', 'DOZ', 'Huevos frescos x 6', 60.00, '1000', 'huevo-frescos-30un-maple-grande.jpg', 'huevo-frescos-30un-maple-grande.jpg', 9, 0, 0, 'Daniel Valdez'),
(82, 'Milk semi-skimmed l.l. 1ltr', 'Made in ,,,', 'LTR', 'Leche descremada 12x1ltr', 90.00, '1000', 'Leche-descremada-12x1ltr.jpg', 'Leche-descremada-12x1ltr.jpg', 9, 0, 0, 'Daniel Valdez'),
(83, 'Milk whole longlife 1ltr', 'Made in ,,,', 'LTR', 'Leche entera 12x1ltr', 95.00, '1000', 'Leche-entera-12x1ltr.jpg', 'Leche-entera-12x1ltr.jpg', 9, 0, 0, 'Daniel Valdez'),
(84, 'Margarine 500grm', 'Made in ,,,', 'PKT', 'Margarina 500grm', 80.00, '1000', 'Margarina-500grm.jpg', 'Margarina-500grm.jpg', 9, 0, 0, 'Daniel Valdez'),
(85, 'Cream long life 200ml', 'Made in ,,,', 'PCE', 'Crema larga vida 200ml', 95.00, '1000', 'Crema-de-leche-baja.jpg', 'Crema-de-leche-baja.jpg', 9, 0, 0, 'Daniel Valdez'),
(86, 'Yoghurt fruit 125grm', 'Made in ,,,', 'CUP', 'Yoghurt fruta 125grm', 45.00, '1000', 'YoghurtFruta125grm.jpg', 'YoghurtFruta125grm.jpg', 9, 0, 0, 'Daniel Valdez'),
(87, 'Yoghurt vanilla 190grm', 'Made in ,,,', 'CUP', 'Yoghurt vainilla 190grm', 40.00, '1000', 'YogurVainilla190grs.jpg', 'YogurVainilla190grs.jpg', 9, 0, 0, 'Daniel Valdez'),
(88, 'Yoghurt with fruits 150grm', 'Made in ,,,', 'CUP', 'Yoghurt con frutas 150grm', 50.00, '1000', 'YoghurtConFrutas150grm.jpg', 'YoghurtConFrutas150grm.jpg', 9, 0, 0, 'Daniel Valdez'),
(89, 'Yoghurt drinks 1ltr', 'Made in ,,,', 'LTR', 'Yoghurt bebible 1ltr tetrapack', 110.00, '1000', 'YogurtBebible1litroTatrepack.jpg', 'YogurtBebible1litroTatrepack.jpg', 9, 0, 0, 'Daniel Valdez'),
(90, 'Yoghurt Natural 200grm', 'Made in ,,,', 'CUP', 'Yoghurt Natural 190grm', 0.00, '1000', 'YoghurtNatural190grm.jpg', 'YoghurtNatural190grm.jpg', 9, 0, 0, 'Daniel Valdez'),
(91, 'Cheese blue', 'Made in ,,,', 'KGR', 'Queso roquefort x 100g', 1.00, '1000', 'queso-roquefort.jpg', 'queso-roquefort.jpg', 9, 0, 0, 'Daniel Valdez'),
(92, 'Cheese edam/holanda', 'Made in ,,,', 'KGR', 'Queso holanda', 0.00, '1000', 'Queso-holanda.jpg', 'Queso-holanda.jpg', 9, 0, 0, 'Daniel Valdez'),
(93, 'Cheese gouda', 'Made in ,,,', 'KGR', 'Queso gouda', 0.00, '1000', 'queso-gouda.jpg', 'queso-gouda.jpg', 9, 0, 0, 'Daniel Valdez'),
(94, 'Cheese tybo (for slices)', 'Made in ,,,', 'KGR', 'Queso tybo maquina x100g', 65.00, '1000', 'Queso-tybo-maquina.jpg', 'Queso-tybo-maquina.jpg', 9, 0, 0, 'Daniel Valdez'),
(95, 'Cheese mozzarella', 'Made in ,,,', 'KGR', 'Queso mozzarella 100g', 68.00, '1000', 'Queso-mozzarella.jpg', 'Queso-mozzarella.jpg', 9, 0, 0, 'Daniel Valdez'),
(96, 'Chesse grated 150grm', 'Made in ,,,', 'PKT', 'Queso rallado paulina-veron', 60.00, '1000', 'Queso-rallado-paulina.jpg', 'Queso-rallado-paulina.jpg', 9, 0, 0, 'Daniel Valdez'),
(97, 'Cheese Ricota (soft) 500grm', 'Made in ,,,', 'PKT', 'Ricota suave seren 500grm', 0.00, '1000', 'Ricota-500grm.jpg', 'Ricota-500grm.jpg', 9, 0, 0, 'Daniel Valdez'),
(98, 'Cheese port-salut', 'Made in ,,,', 'KGR', 'Queso port-salut x 100g', 70.00, '1000', 'Queso-port-salut.jpg', 'Queso-port-salut.jpg', 9, 0, 0, 'Daniel Valdez'),
(99, 'Cheese philadelphia local 200g', 'Made in ,,,', 'JAR', 'Queso finlandia 200grm', 0.00, '1000', 'Queso-finlandia-200grm.jpg', 'Queso-finlandia-200grm.jpg', 9, 0, 0, 'Daniel Valdez'),
(100, 'Sour cream local', 'Made in ,,,', 'JAR', 'Queso blanco 300grm', 0.00, '1000', 'Queso-blanco-300grm.jpg', 'Queso-blanco-300grm.jpg', 9, 0, 0, 'Daniel Valdez'),
(101, 'Cheese spreads 190grm', 'Made in ,,,', 'JAR', 'Queso untable 190grm', 99.00, '1000', 'Queso-untable-190grm.jpg', 'Queso-untable-190grm.jpg', 9, 0, 0, 'Daniel Valdez'),
(102, 'Apple Juice 1ltr', 'Made in ,,,', 'LTR', 'Jugo manzana 1ltr ', 130.00, '1000', 'JugoManzana.jpg', 'JugoManzana.jpg', 10, 0, 0, 'Daniel Valdez'),
(104, 'BRAHMA 1L', 'BRAHMA 1L,,', 'LTR', 'BRAHMA 1L', 100.00, '1000', 'brahma.jpg', 'brahma.jpg', 15, 0, 1, 'Daniel Valdez'),
(105, 'Peaches juice 1ltr', 'Made in ,,,', 'LTR', 'Jugo durazno 1ltr ', 130.00, '1000', 'jugoDurazno.jpg', 'jugoDurazno.jpg', 10, 0, 0, 'Daniel Valdez'),
(106, 'Mineral Water 6x1,5ltr', 'Made in ,,,', 'CSE', 'Agua mineral  1,5ltr', 75.00, '1000', 'Agua-mineral-6x15ltr.jpg', 'Agua-mineral-6x15ltr.jpg', 10, 0, 0, 'Daniel Valdez'),
(107, 'Sparkling Water 6x1,5ltr', 'Made in ,,,', 'CSE', 'Agua mineral c-gas  1,5ltr', 75.00, '1000', 'Agua-mineralconGas6x15ltr.jpg', 'Agua-mineralconGas6x15ltr.jpg', 10, 0, 0, 'Daniel Valdez'),
(108, 'Coca cola 12x500ml', 'Made in ,,,', 'CSE', 'Coca cola 500ml', 50.00, '1000', '15846290907625810332927577747390.jpg', '15846290907625810332927577747390.jpg', 10, 0, 0, 'Daniel Valdez'),
(109, 'Coca cola zero 12x500ml', 'Made in ,,,', 'CSE', 'Coca cola 1500cc', 90.00, '1000', '15846287614546625670726131426307.jpg', '15846287614546625670726131426307.jpg', 10, 0, 0, 'Daniel Valdez'),
(111, 'Sprite / Sevenup 12x500ml', 'Made in ,,,', 'CSE', 'Coca Cola 2000cc', 110.00, '1000', '1584628878138746668164470113058.jpg', '1584628878138746668164470113058.jpg', 10, 0, 0, 'Daniel Valdez'),
(112, 'Fanta orange 12x500ml', 'Made in ,,,', 'CSE', 'Coca Cola 2500cc', 130.00, '1000', '15846290108465128372659910952785.jpg', '15846290108465128372659910952785.jpg', 10, 0, 0, 'Daniel Valdez'),
(114, 'Oil in spray 120grm', 'Made in ,,,', 'BTL', 'Aceite aerosol 120grm', 1.00, '1000', 'AceiteAerosol120grm.jpg', 'AceiteAerosol120grm.jpg', 11, 0, 0, 'Daniel Valdez'),
(115, 'Oil sunflower 900ml', 'Made in ,,,', 'BTL', 'Aceite girasol 900ml', 170.00, '1000', 'AceiteGirasol900ml.jpg', 'AceiteGirasol900ml.jpg', 11, 0, 0, 'Daniel Valdez'),
(117, 'Vinegar balsamic 250ml', 'Made in ,,,', 'BTL', 'Aceto balsamico 250ml', 0.00, '1000', 'AcetoBalsamico250ml.jpg', 'AcetoBalsamico250ml.jpg', 11, 0, 0, 'Daniel Valdez'),
(118, 'Juice concentrated lemon 500ml', 'Made in ,,,', 'BTL', 'Jugo limon minerva 500ml', 95.00, '1000', 'JugoLlimonMinerva500ml.jpg', 'JugoLlimonMinerva500ml.jpg', 11, 0, 0, 'Daniel Valdez'),
(119, 'Vinegar white 1ltr', 'Made in ,,,', 'LTR', 'Vinagre alcohol 500g', 80.00, '1000', 'VinagreAlcohol1litro.jpg', 'VinagreAlcohol1litro.jpg', 11, 0, 0, 'Daniel Valdez'),
(120, 'Vinegar apple 500ml', 'Made in ,,,', 'BTL', 'Vinagre manzana 500ml', 80.00, '1000', 'VinagreManzana500ml.jpg', 'VinagreManzana500ml.jpg', 11, 0, 0, 'Daniel Valdez'),
(121, 'Salt table 500grm', 'Made in ,,,', 'PKT', 'Sal fina 500grm', 0.00, '1000', 'SalFina500grm.jpg', 'SalFina500grm.jpg', 11, 0, 0, ''),
(122, 'Salt cooking 1kgr', 'Made in ,,,', 'PKT', 'Sal gruesa 1kgr', 0.00, '1000', 'SalGruesa1kgr.jpg', 'SalGruesa1kgr.jpg', 11, 0, 0, ''),
(123, 'Rice long grain', 'Made in ,,,', 'KGR', 'Arroz largo fino 500gr', 50.00, '1000', 'ArrozLargoFino1kgr.jpg', 'ArrozLargoFino1kgr.jpg', 11, 0, 0, 'Daniel Valdez'),
(124, 'Sugar refinated', 'Made in ,,,', 'KGR', 'Azucar ledesma-chango 1kgr', 60.00, '1000', 'AzucarLedesmaChango1kgr.jpg', 'AzucarLedesmaChango1kgr.jpg', 11, 0, 0, 'Daniel Valdez'),
(125, 'Broth cubes 12is', 'Made in ,,,', 'PKT', 'Caldo knorr x 2', 25.00, '1000', 'CaldoKnorr12cub.jpg', 'CaldoKnorr12cub.jpg', 11, 0, 0, 'Daniel Valdez'),
(126, 'Mermelada Noel', 'Made in ,,,', 'BOX', 'Mermelada Noel 475gr', 80.00, '1000', 'IMG-20200319-WA0011.jpg', 'IMG-20200319-WA0011.jpg', 8, 0, 1, 'Daniel Valdez'),
(127, 'Flour all porpouse 1kgr', 'Made in ,,,', 'KGR', 'Harina trigo 0000 1kgr', 45.00, '1000', 'Harina-trigo-0000.jpg', 'Harina-trigo-0000.jpg', 11, 0, 0, 'Daniel Valdez'),
(128, 'Bread crumbs ', 'Made in ,,,', 'KGR', 'Rebozador Preferido', 0.00, '1000', 'rebozador-preferido.jpg', 'rebozador-preferido.jpg', 11, 0, 0, 'Daniel Valdez'),
(129, 'Nesquick 360grm', 'Made in ,,,', 'PKT', 'Cacao nesquick x 360 gr', 1.00, '1000', 'cacao-nesquik-360g.jpg', 'cacao-nesquik-360g.jpg', 11, 0, 0, 'Daniel Valdez'),
(130, 'Coffee instant 170grm', 'Made in ,,,', 'BTL', 'Cafe instantaneo 170grm', 1.00, '1000', 'cafe-instantaneo-dolca-clasico-x-170g.jpg', 'cafe-instantaneo-dolca-clasico-x-170g.jpg', 11, 0, 0, 'Daniel Valdez'),
(131, 'Cake mix brownie exq 450grm', 'Made in ,,,', 'PKT', 'Bizcochuelo brownie 450grm', 1.00, '1000', 'Bizcochuelo-brownie450grm.jpg', 'Bizcochuelo-brownie450grm.jpg', 12, 0, 0, 'Daniel Valdez'),
(132, 'Cake mix 540grm', 'Made in ,,,', 'PKT', 'Bizcochuelo exquisita 540grm', 1.00, '1000', 'Bizcochuelo-exquisita-540grm.jpg', 'Bizcochuelo-exquisita-540grm.jpg', 12, 0, 0, 'Daniel Valdez'),
(133, 'Cereal muesli 200grm', 'Made in ,,,', 'PKT', 'Cereal maizena 200grm', 0.00, '1000', 'Cereal-maizena-200grm.jpg', 'Cereal-maizena-200grm.jpg', 12, 0, 0, 'Daniel Valdez'),
(134, 'Cereal fruit/fiber 350grm', 'Made in ,,,', 'PKT', 'Cereal granola 200grm/1,5k', 0.00, '1000', 'Cereal-granola-200grm.jpg', 'Cereal-granola-200grm.jpg', 12, 0, 0, 'Daniel Valdez'),
(135, 'Corn flakes w/sugar 700grm', 'Made in ,,,', 'PKT', 'Cereal Zucaritas 220grm', 1.00, '1000', 'Cereal-Zucaritas-220gr.jpg', 'Cereal-Zucaritas-220gr.jpg', 12, 0, 0, 'Daniel Valdez'),
(136, 'Corn Flakes 200grm', 'Made in ,,,', 'PKT', 'Copos maiz 200grm', 1.00, '1000', 'Copos-maiz-200grm.jpg', 'Copos-maiz-200grm.jpg', 12, 0, 0, ''),
(137, 'Quaker oats 500grm', 'Made in ,,,', 'PKT', 'Avena quaker 400grm', 1.00, '1000', 'Avena-quaker-400grm.jpg', 'Avena-quaker-400grm.jpg', 12, 0, 0, 'Daniel Valdez'),
(138, 'Chocolate aguila 150grm', 'Made in ,,,', 'PCE', 'Chocolate cobert aguila 150grm', 0.00, '1000', 'Chocolate-cobert-aguila-150grm.jpg', 'Chocolate-cobert-aguila-150grm.jpg', 12, 0, 0, 'Daniel Valdez'),
(139, 'Chocolate pastry aguila 150grm', 'Made in ,,,', 'PCE', 'Chocolate taza aguila 150grm', 0.00, '1000', 'Chocolate-taza-aguila-150grm.jpg', 'Chocolate-taza-aguila-150grm.jpg', 12, 0, 0, 'Daniel Valdez'),
(140, 'Creme caramel mix 60grm', 'Made in ,,,', 'PKT', 'Flan polvo exquisita 60grm', 0.00, '1000', 'Flan-polvo-exquisita60grm.jpg', 'Flan-polvo-exquisita60grm.jpg', 12, 0, 0, ''),
(141, 'Gelatine mix 80grm', 'Made in ,,,', 'PKT', 'Gelatina polvo 80grm', 0.00, '1000', 'Gelatina-polvo-80grm.jpg', 'Gelatina-polvo-80grm.jpg', 12, 0, 0, ''),
(142, 'Pudding chocolate mix 90grm', 'Made in ,,,', 'PKT', 'Postre de chocolate 90grm', 0.00, '1000', 'Postre-de-chocolate-90grm.jpg', 'Postre-de-chocolate-90grm.jpg', 12, 0, 0, ''),
(143, 'Pasta linguini', 'Made in ,,,', 'PKT', 'Fideos anchos d.vicente 500g', 2.00, '1000', 'FideosDonVicente.jpg', 'FideosDonVicente.jpg', 12, 0, 0, ''),
(144, 'Pasta elbow maccaroni', 'Made in ,,,', 'PKT', 'Fideos codos 500grm', 1.00, '1000', 'Fideoscodos500grm.jpg', 'Fideoscodos500grm.jpg', 12, 0, 0, ''),
(145, 'Pasta penne-rigatti', 'Made in ,,,', 'PKT', 'Fideos mostachol 500grm', 1.00, '1000', 'FideosMostachol500grm.jpg', 'FideosMostachol500grm.jpg', 12, 0, 0, ''),
(146, 'Tomato ketchup 400grm', 'Made in ,,,', 'BTL', 'Ketchup hellmanns 400grm', 1.00, '1000', 'KetchupHellmanns400grm.jpg', 'KetchupHellmanns400grm.jpg', 12, 0, 0, 'Daniel Valdez'),
(147, 'Mayonnaise 332grm', 'Made in ,,,', 'BTL', 'Mayonesa 332grm', 85.00, '1000', 'Mayonesa332grm.jpg', 'Mayonesa332grm.jpg', 12, 0, 0, 'Daniel Valdez'),
(148, 'Mustard sauce 200grm', 'Made in ,,,', 'JAR', 'Mostaza savora 200grm', 85.00, '1000', 'MostazaSavora200grm.jpg', 'MostazaSavora200grm.jpg', 12, 0, 0, 'Daniel Valdez'),
(149, 'Sauce barbeque 375grm', 'Made in ,,,', 'JAR', 'Salsa barbacoa 375grm', 1.00, '1000', 'SalsaBarbacoa375grm.jpg', 'SalsaBarbacoa375grm.jpg', 12, 0, 0, 'Daniel Valdez'),
(151, 'Honey bee 500grm', 'Made in ,,,', 'JAR', 'Miel abejas 500grm', 1.00, '1000', 'MielAabejas500grm.jpg', 'MielAabejas500grm.jpg', 12, 0, 0, 'Daniel Valdez'),
(152, 'Peanuts extra ', 'Made in ,,,', 'KGR', 'Mani pelado salado', 45.00, '1000', 'Mani-pelado-salado.jpg', 'Mani-pelado-salado.jpg', 12, 0, 0, 'Daniel Valdez'),
(153, 'Apricots dried 1 kg', 'Made in ,,,', 'KGR', 'Orejones de durazno', 0.00, '1000', 'Orejones-durazno.jpg', 'Orejones-durazno.jpg', 12, 0, 0, 'Daniel Valdez'),
(154, 'Raisins 1 kg', 'Made in ,,,', 'KGR', 'Pasas de Uva s/semilla', 0.00, '1000', 'PasasdeUvas-semilla.jpg', 'PasasdeUvas-semilla.jpg', 12, 0, 0, 'Daniel Valdez'),
(155, 'Lentils dry', 'Made in ,,,', 'KGR', 'Lentejas secas ', 95.00, '1000', 'Lentejas-secas.jpg', 'Lentejas-secas.jpg', 12, 0, 0, 'Daniel Valdez'),
(156, 'Beans Alubias', 'Made in ,,,', 'KGR', 'Porotos Alubias', 45.00, '1000', 'Porotos-Alubias.jpg', 'Porotos-Alubias.jpg', 12, 0, 0, 'Daniel Valdez'),
(157, 'Pineapple slices 836grm', 'Made in ,,,', 'TIN', 'Anana mitades 836grm', 1.00, '1000', 'Anana-mitades-836gr.jpg', 'Anana-mitades-836gr.jpg', 13, 0, 0, 'Daniel Valdez'),
(158, 'Fruit cocktail 820grm', 'Made in ,,,', 'TIN', 'Coctel frutas 820grm', 110.00, '1000', 'Coctel-frutas-820grm.jpg', 'Coctel-frutas-820grm.jpg', 13, 0, 0, 'Daniel Valdez'),
(159, 'Peaches halves 820grm', 'Made in ,,,', 'TIN', 'Duraznos mitades 820grm', 95.00, '1000', 'Duraznos-mitades-820grm.jpg', 'Duraznos-mitades-820grm.jpg', 13, 0, 0, 'Daniel Valdez'),
(160, 'Pears halves 820grm', 'Made in ,,,', 'TIN', 'Peras mitades 820grm', 120.00, '1000', 'Peras-mitades-820grm.jpg', 'Peras-mitades-820grm.jpg', 13, 0, 0, 'Daniel Valdez'),
(161, 'Tuna in oil 170grm', 'Made in ,,,', 'TIN', 'Atun aceite 170grm', 115.00, '1000', 'Atun-aceite-170grm.jpg', 'Atun-aceite-170grm.jpg', 13, 0, 0, 'Daniel Valdez'),
(162, 'Tuna in brine 170grm', 'Made in ,,,', 'TIN', 'Atun natural 170grm', 115.00, '1000', 'Atun-natural-170grm.jpg', 'Atun-natural-170grm.jpg', 13, 0, 0, 'Daniel Valdez'),
(163, 'Mackerel in oil 425 g', 'Made in ,,,', 'TIN', 'Caballa en aceite 380grm', 1.00, '1000', 'Caballa-aceite-380grm.jpg', 'Caballa-aceite-380grm.jpg', 13, 0, 0, 'Daniel Valdez'),
(164, 'Mackerel in tomato 425 g', 'Made in ,,,', 'TIN', 'Caballa en tomate 380grm', 1.00, '1000', 'Caballa-tomate-380grm.jpg', 'Caballa-tomate-380grm.jpg', 13, 0, 0, 'Daniel Valdez'),
(165, 'Sardines in oil 125 g', 'Made in ,,,', 'TIN', 'Sardinas en aceite 125grm', 1.00, '1000', 'Sardinas-aceite-125grm.jpg', 'Sardinas-aceite-125grm.jpg', 13, 0, 0, ''),
(166, 'Sardines in tomato 125grm', 'Made in ,,,', 'TIN', 'Sardinas tomate 125grm', 1.00, '1000', 'Sardinas-tomate-125grm.jpg', 'Sardinas-tomate-125grm.jpg', 13, 0, 0, ''),
(167, 'Tomato peeled 400grm', 'Made in ,,,', 'TIN', 'Tomate perita 400grm', 55.00, '1000', 'Tomate-perita-400grm.jpg', 'Tomate-perita-400grm.jpg', 13, 0, 0, 'Daniel Valdez'),
(168, 'Tomato salsify 500grm', 'Made in ,,,', 'TIN', 'Tomate pure 500grm', 65.00, '1000', 'Tomate-pure-500grm.jpg', 'Tomate-pure-500grm.jpg', 13, 0, 0, 'Daniel Valdez'),
(169, 'Corn kernels 350grm', 'Made in ,,,', 'TIN', 'Choclo entero 350grm', 75.00, '1000', 'Choclo-entero-350grm.jpg', 'Choclo-entero-350grm.jpg', 13, 0, 0, 'Daniel Valdez'),
(170, 'Peppers oil 750grm', 'Made in ,,,', 'TIN', 'Morron aceite 750grm', 150.00, '1000', 'Morron-aceite-750grm.jpg', 'Morron-aceite-750grm.jpg', 13, 0, 0, 'Daniel Valdez'),
(171, 'Palm hearts 400grm', 'Made in ,,,', 'TIN', 'Palmitos enteros 400grm', 180.00, '1000', 'Palmitos-enteros-400grm.jpg', 'Palmitos-enteros-400grm.jpg', 13, 0, 0, 'Daniel Valdez'),
(172, 'Crackers sky-flakes 144grm', 'Made in ,,,', 'PKT', 'Galletitas club social 144grm', 1.00, '1000', 'Galletitas-club-social-144grm.jpg', 'Galletitas-club-social-144grm.jpg', 14, 0, 0, 'Daniel Valdez'),
(173, 'Cream crackers 300grm', 'Made in ,,,', 'PKT', 'Galletitas criollitas 300grm', 1.00, '1000', 'Galletitas-criollitas-300gr.jpg', 'Galletitas-criollitas-300gr.jpg', 14, 0, 0, ''),
(174, 'Waffers opera 92grm', 'Made in ,,,', 'PKT', 'Galletitas opera 92grm', 1.00, '1000', 'Galletitas-opera-92grm.jpg', 'Galletitas-opera-92grm.jpg', 14, 0, 0, 'Daniel Valdez'),
(175, 'Cookies chips ahoy 118grm', 'Made in ,,,', 'PKT', 'Galletitas pepitos 118grm', 1.00, '1000', 'Galletitas-pepitos-118grm.jpg', 'Galletitas-pepitos-118grm.jpg', 14, 0, 0, 'Daniel Valdez'),
(176, 'Crackers ritz 125grm', 'Made in ,,,', 'PKT', 'Galletitas rex 125grm', 1.00, '1000', 'Galletitas-rex-125grm.jpg', 'Galletitas-rex-125grm.jpg', 14, 0, 0, 'Daniel Valdez'),
(177, 'Cookies filled-chocolate rumba 120grm', 'Made in ,,,', 'PKT', 'Galletitas rumba 120grm', 1.00, '1000', 'Galletitas-rumba-120grm.jpg', 'Galletitas-rumba-120grm.jpg', 14, 0, 0, 'Daniel Valdez'),
(178, 'Cookies filled-strawb sonrisas 118grm', 'Made in ,,,', 'PKT', 'Galletitas sonrisas 118grm', 0.00, '1000', 'Galletitas-sonrisas-18grm.jpg', 'Galletitas-sonrisas-18grm.jpg', 14, 0, 0, ''),
(179, 'Cookies assorted 400grm', 'Made in ,,,', 'PKT', 'Galletitas surtidas 400grm', 110.00, '1000', 'Galletitas-surtidas-400grm.jpg', 'Galletitas-surtidas-400grm.jpg', 14, 0, 0, 'Daniel Valdez'),
(180, 'Chips lays 105grm', 'Made in ,,,', 'PKT', 'Papas lays 105grm', 85.00, '1000', 'Papas-lays-105grm.jpg', 'Papas-lays-105grm.jpg', 14, 0, 0, 'Daniel Valdez'),
(182, 'QUILMES 1L', 'QUILMES', '', 'QUILMES 1L', 90.00, '1000', 'quilmes.jpg', 'quilmes.jpg', 15, 0, 1, 'Daniel Valdez'),
(184, 'Pata Muslo - Pechuga - Patita - Muslito', '2', '2', 'Pata Muslo - Pechuga - Patita - Muslito', 2.00, '2', 'vitrina.jpg', 'vitrina.jpg', 2, 2, 1, 'Daniel Valdez');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_productos`
--
ALTER TABLE `tbl_productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_categProd` (`id_categProd`),
  ADD KEY `id_subcategProd` (`id_subcategProd`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_productos`
--
ALTER TABLE `tbl_productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=187;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
