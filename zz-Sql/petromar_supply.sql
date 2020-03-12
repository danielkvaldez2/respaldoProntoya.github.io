-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 12-03-2020 a las 17:30:19
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
-- Base de datos: `prontoya`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `continente`
--

CREATE TABLE `continente` (
  `id_continent` int(11) NOT NULL,
  `name_continent` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `continente`
--

INSERT INTO `continente` (`id_continent`, `name_continent`) VALUES
(1, 'AMERICA'),
(2, 'ASIA'),
(3, 'EUROPA'),
(4, 'AFRICA'),
(5, 'OCEANIA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `databaseports`
--

CREATE TABLE `databaseports` (
  `id` int(11) NOT NULL,
  `id_continent` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `country` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `flag` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `locode` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `imagen` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `video` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `videoYTube` varchar(3) COLLATE utf8_spanish_ci NOT NULL,
  `opening` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `coordenadasS` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `coordenadasW` varchar(15) COLLATE utf8_spanish_ci NOT NULL,
  `portAuthority` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `phone` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `phoneFax` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `website` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `portType` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `portSize` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `surface` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `depth` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `docks` int(11) NOT NULL,
  `annualcontainers` int(11) NOT NULL,
  `annualtonel` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `annualships` int(11) NOT NULL,
  `userAlta` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `userModif` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `valido` varchar(10) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `databaseports`
--

INSERT INTO `databaseports` (`id`, `id_continent`, `name`, `country`, `flag`, `locode`, `imagen`, `video`, `videoYTube`, `opening`, `coordenadasS`, `coordenadasW`, `portAuthority`, `direccion`, `phone`, `phoneFax`, `email`, `website`, `portType`, `portSize`, `surface`, `depth`, `docks`, `annualcontainers`, `annualtonel`, `annualships`, `userAlta`, `userModif`, `valido`) VALUES
(1, 1, 'LOS ANGELES', 'USA', 'Usa.jpg', 'USLAX', 'PortsOfLosAngeles.jpg', 'PortOfLosAngeles.gif', '', '1907', '33.74021 ', '-118.265 ', 'Los Angeles Harbor Department', '425 S. Palos Verdes St.\r\nSan Pedro, CA 90731\r\nUnited States', '+1 310  732-3508', '+1 310 732 0291', 'community@portla.org\r\ngeninfo@portoflosangeles.org', 'www.portoflosangeles.org', 'Deepwater Seaport', 'Very Large', '30 km² ', '15.2 m', 13, 9169779, '', 6581, '', '', ''),
(2, 1, 'Long Beach', 'USA', 'Usa.jpg', 'USLGB', 'PortOfLongBeach.jpg', 'longBeach1.gif', '', '24 de junio de 1911', '33.75493', '-118.21435 ', 'Long Beach Board of Harbor Commissioners', '925 Harbor Plaza\r\nP.O. Box 570\r\nLong Beach, CA 90801-0570\r\nUnited States', '+1 562 283-7000', '+1 562 901 1733', 'info@polb.com', 'www.polb.com', 'Deepwater Seaport', 'Very Large', '3200 ac (13 km2)', '15,24 m', 10, 6730000, '', 8764, '', '', ''),
(3, 1, 'Quequen', 'Argentina', 'Argentina.jpg', 'ARQQN', 'PortOfQuequen.jpg', 'PortOfQuequen.gif', '', '13 de febrero de 1911', ' -38.5736', ' -58.714715', 'Consorcio de Gestion del Puerto de Quequen', 'Avenida Juan de Garay 850\r\nQuequén 7631\r\nArgentina', '+54 2262 450006', '+54 2262 451453', 'directorio@puertoquequen.com\r\nwebcgpq@puertoquequen.com', 'www.puertoquequen.com', 'Seaport', 'Medium', '7400 m2', '14 m', 13, 0, '7 Millones Toneladas Anuales', 312, '', '', ''),
(4, 1, 'Santos', 'Brasil', 'Brasil.jpg', 'BRSSZ', 'PortsOfSantos.jpg', 'PortOfSantos.gif', '', '3 de febrero de 1894', '-23.588', '-46.183', 'Dock Company of the State of Sao Paulo', 'Companhia Docas do Estado de Sao Paulo (CODESP)\r\nAvenida Rodrigues Alves s/n\r\nSantos, Sao Baulo 11015-900\r\nBrazil', '(13) 3233-6565', '(13) 3233-3080', '', 'www.portodesantos.com', 'Seaport', 'Medium', '', '', 37, 3799999, '7 Millones Toneladas Anuales', 0, '', '', ''),
(5, 1, 'Colon', 'Panama', 'Panama.jpg', 'PAONX', 'PortsOfColon.jpg', 'PortOfColon.gif', '', '', '9.211', '-79.5427', 'Panama Ports Company (PPC)', 'Building 1010 Roosevelt Ave.\r\nP.O. Box 0301-03240\r\nPanama\r\nPanama', '507-433-7900', '507-441-4676', 'info@ppc.com.pa', 'www.ppc.com.pa', 'Seaport', 'Medium', '', '', 26, 0, '', 0, '', '', ''),
(6, 2, 'Shanghái', 'China', 'China.jpg', 'CNSHG', 'PortsOfShanghai.jpg', 'PortOfShangai.gif', '', '', '31.366365', '121.61475', 'Shanghai International Port (Group) Co., Ltd.', '358 East Daming Road\r\nShanghai, Shanghai 200080\r\nChina', '+8621 55333388', '+8621 63217936', 'contact@portshanghai.com.cn', 'www.portshanghai.com.cn', 'Seaport', 'Very Large', '', '', 1092, 33617000, '', 0, '', '', ''),
(7, 2, 'Singapur', 'China', 'China.jpg', 'SGSIN', 'PortsOfSingapur.jpg', 'PortOfSingapur.gif', '', '1819', '1.1734', '103.4331', 'Maritime and Port Authority of Singapore (MPA)', '460 Alexandra Road\r\n#19-00 PSA Building\r\nSingapore 119963\r\nSingapore', '+65 6375 1639 	', '+65	6275 9247', 'qsm@mpa.gov.sg', 'www.mpa.gov.sg', 'Deepwater Seaport', 'Very Large', '', '', 0, 32240000, '', 0, '', '', ''),
(8, 2, 'Shenzhen', 'China', 'China.jpg', 'CNSZX', 'PortOfShenzen.jpg', 'PortOfShenzhen.gif', '', '', '22.5045', '113.8535', 'China Merchants Shekou Port Service Co., Ltd.', 'Gang Wan Yi Lu\r\nShekou Industrial Zone, Shekou\r\nShenzhen, Guangdong 518067\r\nChina', '+86 755 2669 1135', '+86 755 2668 5859', '', '', 'Seaport', 'Large', '', '', 32, 23278000, '', 0, '', '', ''),
(9, 2, 'Zhoushan', 'China', 'China.jpg', 'CNZOS', 'PortOfNingbo-Zhoushan.jpg', 'PortOfNingboZhoushan.gif', '', '', '30.012', '122.615', 'Zhoushan Harbour Admin', 'Zhoushan, Zhejiang 316000\r\nChina', '+86 580 206 7222', '+86 580 206 7224', 'info@zsport.com.cn', 'www.zsport.com.cn', 'Seaport', 'Small', '', '', 98, 16830000, '744 Millones', 0, '', '', ''),
(10, 3, 'ROTTERDAM', 'Netherlands', 'Netherlands.jpg', 'NLRTM', 'PortOfRotterdam.jpg', 'PortOfRotterdam.gif', '', '', '51.5538', '4.1754', 'Rotterdam Municipal Port Management', 'P.O. Box 6622\r\nRotterdam 3002 AP\r\nNetherlands', '+31 0 10 252 10 10', '+31 0 10 252 10 20', 'info@portmanagement.com', 'www.portofrotterdam.com', 'Deepwater Seaport', 'Very Large', '', '', 154, 0, '', 0, '', '', ''),
(11, 3, 'AMBERES', 'Belgica', 'Belgica.jpg', 'BEANR', 'PortOfAmberes.jpg', 'PortOfAmberes.gif', '', '', '51° 17\' 52\" N', '4° 17\' 59\" E', 'Antwerp Port Authority', 'Havenhuis Entrepotkaai 1\r\nAntwerp B-2000\r\nBelgium', '+32-3-205 20 11', '+32-3-205 20 28', 'info@haven.antwerpen.be', 'www.portofantwerp.be', 'Seaport', 'Very Large', '', '', 0, 0, '', 0, '', '', ''),
(12, 3, 'HAMBURGO', 'Alemania', 'Alemania.jpg', 'SEHBO', 'PortOfHamburgo.jpg', 'PortOfHamburgo.gif', '', '', '53.3129', '9.5748', 'Port Authority of Hamburg', 'Mattentwiete 2\r\nHamburg D - 20457\r\nGermany', '+49-40  37 709  0', '+49-40 37 709 109', 'info@hafen-hamburg.de', 'www.hafen-hamburg.de', 'Seaport', 'Very Large', '', '', 0, 0, '', 0, '', '', ''),
(13, 3, 'ALGECIRAS', 'España', 'Espana.jpg', 'ESALG', 'PortOfAlgeciras.jpg', 'PortOfAlgeciras.gif', '', '', '36.13672 ', '-5.434271 ', 'Autoridad Portuaria de la Bahia de Algeciras', 'Avda. de la Hispanidad, 2\r\nAlgeciras, Cadiz 11207\r\nSpain', '+34 956 58 54 00', '+34 956 58 54 43', 'apba@apba.es', 'www.apba.es', 'Seaport', 'Medium', '', '', 60, 0, '', 0, '', '', ''),
(14, 3, 'MARSELLA', 'Francia', 'Francia.jpg', 'FRMRS', 'PortOfMarsella.jpg', 'PortOfMarsella.gif', '', '', '43° 19\' 25\" N', '5° 21\' 8\" E', 'Marseille Fos Port Authority', '23 place de la Joliette\r\nBP 81965\r\nMarseille, Cedex 2 13226\r\nFrance', '+33 4 91 39 40 00', '+33 4 91 39 57 00', 'gpmm@marseille-port.fr', 'www.marseille-port.fr', 'Seaport', 'Large', '', '', 0, 0, '', 0, '', '', ''),
(15, 4, 'Djibuti', 'Yibuti', 'Yibuti.jpg', 'DJJIB', 'PortOfDjibuti.jpg', 'PortOfDjibouti.gif', '', '', '11° 36\' 7\" N', '43° 8\' 13\" E', 'Port Autonome International de Djibouti', 'BP 2107\r\nDjibouti\r\nDjibouti', '+253 35 23 31', '+253 35 61 87', 'port@intnet.dj', 'www.dpworld-djiboutiport.com', 'Seaport', 'Medium', '', '', 0, 0, '', 0, '', '', ''),
(16, 4, 'Said', 'Egipto', 'Egipto.jpg', 'EGPSD', 'PortOfSaid.jpg', 'PortOfSaidEgipto.gif', '', '', '31.24478 ', '32.323 ', 'Port Said Port Authority', 'Intersection of Mostafa Kamel and Azmy Street\r\nPort Said\r\nEgypt', '+20 66 3348270', '+20 66 3348262', 'info@psdports.org', 'www.psdports.org', 'Seaport', 'Medium', '', '', 21, 0, '', 0, '', '', ''),
(17, 4, 'Saldanha Bay', 'Sudafrica', 'Sudafrica.jpg', 'ZASDB', 'PortOfSaldanhaBay.jpg', 'PortOfSaldanha.gif', '', '', '-33.02', '17.979', 'Transnet National Ports Authority', 'Private Bag X1\r\nSaldanha 7395\r\nSouth Africa', '+22 701 4302', '+22 714 4236', 'info@transnetnationalportsauthority.net', 'www.transnetnationalportsauthority.net', 'Pier, Jetty or Wharf', 'Small', '', '', 26, 0, '', 0, '', '', ''),
(18, 4, 'Damietta', 'Egipto', 'Egipto.jpg', 'EGDAM', 'PortOfDamietta.jpg', 'PortOfDamietta.gif', '', '', '31° 28\' 0\" N', '31° 45\' 52\" E', 'Damietta Port Authority', 'PO Box 13\r\nDamietta 34511\r\nEgypt', '+2057-325940', '+2057-325930', 'info@dam-port.com', 'www.dam-port.com', 'Seaport', 'Medium', '', '', 0, 0, '', 0, '', '', ''),
(19, 4, 'Apapa', 'Nigeria', 'Nigeria.jpg', 'NGLOS', 'PortOfApapa.jpg', 'PortOfApapa.gif', '', '', '6.4395 ', '3.3585 ', 'Nigerian Ports Authority', 'P.M.B 1021\r\nApapa, Lagos\r\nNigeria', '+234 1 5452820', '+234 1 5452662', 'apapa@nigerianports.org', 'www.nigerianports.org', 'Seaport', 'Medium', '', '', 92, 0, '', 0, '', '', ''),
(20, 4, 'Casablanca', 'Marruecos', 'Marruecos.jpg', 'MACAS', 'PortOfCasablanca.jpg', 'PortOfCasaBlanca.gif', '', '', '33.61 ', '-7.599732 ', 'Societe D\'Exploitation des Ports (SODEP)', 'Casablanca\r\nMorocco', '+212 022 54 67 18', '+212 022 31 79 10', 'c_sefraoui@marsamaroc.co.ma', 'www.marsamaroc.co.ma', 'Seaport', 'Medium', '', '', 29, 0, '', 0, '', '', ''),
(21, 5, 'Sidney', 'Australia', 'Australia.jpg', 'CASDY', 'PortOfSidney.jpg', 'PortOfSidney.gif', '', '', '48.6522 ', '-123.393', 'Sydney Ports Corporation', 'PO Box 25 Millers Point\r\nSydney, NSW 2000\r\nAustralia', '+61 2 9296 4999', '+61 2 9296 4742', 'info@sydneyports.com.au', 'www.sydneyports.com.au', 'Deepwater Seaport', 'Large', '', '', 12, 0, '', 0, '', '', ''),
(22, 5, 'MELBOURNE', 'Australia', 'Australia.jpg', 'AUMEL', 'PortOfMelborne.jpg', 'PortOfMelbrune.gif', '', '', '-37.838785 ', '144.93705', 'Port of Melbourne Corporation', 'GPO Box 261\r\nMelbourne, Victoria 3001\r\nAustralia', '+61 3 9628 7555', '+61 3 9628 7550', 'information@portofmelbourne.com', 'www.portofmelbourne.com', 'Deepwater Seaport', 'Very Large', '', '', 76, 0, '', 0, '', '', ''),
(23, 5, 'Hedland', 'Australia', 'Australia.jpg', 'AUPHE', 'PortOfHedland.jpg', 'PortOfHedland.gif', '', '', '-20.3165', '118.576 ', 'Port Hedland Port Authority', 'PO Box 2\r\nPort Hedland, WA 6721\r\nAustralia', '+61 8 9173 0000', '+61 8 9173 0060', 'phpa@phpa.com.au', 'www.phpa.com.au', 'Seaport', 'Small', '', '', 55, 0, '', 0, '', '', ''),
(24, 5, 'DAMPIER', 'Australia', 'Australia.jpg', 'AUDAM', 'PortOfDampier.jpg', 'PortOfDampier.gif', '', '', '-20.632725', '116.6732', 'Dampier Port Authority', 'PO Box 285\r\nDampier, Western Australia 6713\r\nAustralia', '+61 8 9159 6555', '+61 8 9159 6557', 'info@dpa.wa.gov.au', 'www.dpa.wa.gov.au', 'Pier, Jetty or Wharf', 'Very Small', '', '', 25, 0, '', 0, '', '', ''),
(25, 5, 'BRISBANE', 'Australia', 'Australia.jpg', 'AUBNE', 'PortOfBrisbane.jpg', 'PortOfBrisban.gif', '', '', '-27.41807', '153.09555', 'Port of Brisbane Corporation', '1 Sandpiper Avenue\r\nLocked Bag 1818\r\nPort of Brisbane, Queensland 4178\r\nAustralia', '+61 7 3258 4888', '+61 7 3258 4703', 'info@portbris.com.au', 'www.portbris.com.au', 'Seaport', 'Large', '', '', 87, 0, '', 0, '', '', ''),
(26, 5, 'WELLINGTON', 'Australia', 'Australia.jpg', 'NZWLG', 'PortOfWellington.jpg', 'PortOfWellington.gif', '', '', '-41.27235', '174.839', 'CentrePort Wellington', 'CentrePort House\r\nHarbour Quays\r\nWellington 6011\r\nNew Zealand', '+64 4 495 3800', '+64 4 495 3873', 'customerservices@centreport.co.nz', 'www.centreport.co.nz', 'Seaport', 'Medium', '', '', 16, 0, '', 0, '', '', ''),
(27, 5, 'FREEMANTLE', 'Australia', 'Australia.jpg', 'AUFRE', 'PortOfFreemantle.jpg', 'PortOfFreemantle.gif', '', '', '32° 2\' 51\" S', '115° 44\' 27\" E', 'Fremantle Port Authority', 'PO Box 95\r\nFremantle, Western Australia 6959\r\nAustralia', '+61 08 9430 3555', '+61 08 9336 1391', 'mail@fremantleports.com.au', 'www.fremantleports.com.au', 'Seaport', 'Medium', '', '', 0, 0, '', 0, '', '', ''),
(28, 5, 'WEIPA', 'Australia', 'Australia.jpg', 'AUWEI', 'PortOfWeipa.jpg', 'PortOfWeipa.gif', '', '', '-12.66815', '141.85935 ', 'North Queensland Bulk Ports Corporation Limited', 'Level 24, 300 Queen Street\r\nGPO Box 409\r\nBrisbane, Queensland 4001\r\nAustralia', '+61 7 3224 7088', '+61 7 3224 71234', 'info@nqbp.com.au', 'www.nqbp.com.au', 'Pier, Jetty or Wharf', 'Small', '', '', 9, 0, '', 0, '', '', ''),
(29, 5, 'KEMBLA', 'Australia', 'Australia.jpg', 'AUPKL', 'PortOfKembla.jpg', 'PortOfKembla.gif', '', '', '-34.4655 ', '150.9015', 'Port Kembla Port Corporation', 'PO Box 89\r\nPort Kembla, NSW 2505\r\nAustralia', '+61 2 4275 0100', '+61 2 4274 0643', 'enquiries@kemblaport.com.au', 'www.kemblaport.com.au', 'Seaport', 'Medium', '', '', 11, 0, '', 0, '', '', ''),
(30, 5, 'ABBOT POINT', 'Australia', 'Australia.jpg', 'AUABP', 'PortOfAbbotPoint.jpg', 'PortOfAbbotpoint.gif', '', '', '-19.86554', '148.0835 ', 'North Queensland Bulk Ports Corporation Limited', 'Level 24, 300 Queen Street\r\nGPO Box 409\r\nBrisbane, Queensland 4001\r\nAustralia', '+61 7 3224 7088', '+61 7 3224 71234', 'info@nqbp.com.au', 'www.nqbp.com.au', 'Pier, Jetty or Wharf', 'Very Small', '', '', 4, 0, '', 0, '', '', ''),
(31, 5, 'BUNBURY', 'Australia', 'Australia.jpg', 'AUBUY', 'PortOfBunbury.jpg', 'PortOfBunbury.gif', '', '', '-33.30988', '15.65855', 'Bunbury Port Authority', 'PO Box 4\r\nBunbury, WA 6231\r\nAustralia', '+618 08 9721 2800', '+618 08 9721 8253', 'byport@byport.com.au', 'www.byport.com.au', 'Seaport', 'Small', '', '', 8, 0, '', 0, '', '', ''),
(32, 4, 'Skikda', 'Argelia', 'Argelia.jpg', 'DZSKI', 'PortOfSkikda.jpg', 'PortOfSkikda.gif', '', '', '36.88537', '6.924', 'Skikda Port Enterprise', 'BP 65\r\nAvenue Rezki Rahal\r\nSkikda 21000\r\nAlgeria', '+213 38 756827', '+213 38 752015', 'info@skikda-port.com', 'www.skikda-port.com', 'Seaport', 'Medium', '', '', 6, 0, '', 0, '', '', ''),
(33, 4, 'Pointe Noire', 'Congo', 'Congo.jpg', 'CGPNR', 'PortOfPointeNoire.jpg', 'PortOfPointeNoir.gif', '', '', '4° 46\' 55\" S', '11° 49\' 43\" E', 'Port Authority of Pointe Noire', 'BP 711\r\nPointe Noire\r\nCongo, Republic of', '+242 940052', '+242 942042', '', '', 'Seaport', 'Small', '', '', 0, 0, '', 0, '', '', ''),
(34, 4, 'Mombasa', 'Kenia', 'Kenia.jpg', 'KEMBA', 'PortOfMombasa.jpg', 'PortOfMombasaKenia.gif', '', '', '-4.0475', '39.635', 'Kenya Ports Authority', 'P.O Box 95009\r\nMombasa\r\nKenya', '+254-041-2312211', '+254-041-2311867', 'info@kpa.co.ke', 'www.kpa.co.ke', 'Seaport', 'Medium', '', '', 35, 0, '', 0, '', '', ''),
(35, 4, 'Abidjan', 'CostadeMarfil', 'CostadeMarfil.jpg', 'CIABJ', 'PortOfAbiyan.jpg', 'PortOfbiyan.gif', '', '', '5° 16\' 50\" N', '4° 0\' 52\" W', 'Port Automome D\'Abidjan', 'Abidjan\r\nCote D\'Ivoire', '+21 23 80 00', '+21 24 80 80', 'info@paa-ci.org', 'www.paa-ci.org', 'Seaport', 'Medium', '', '', 0, 0, '', 0, '', '', ''),
(36, 4, 'Tanger', 'Marruecos', 'Marruecos.jpg', 'MAPTM', 'PortOfTanger.jpg', 'PortOfTanger.gif', '', '', '35.895 ', '-5.4945 ', 'Societe D\'Exploitation des Ports (SODEP)', 'Tanger\r\nMorocco', '+212 061 91 57 42', '+212 061 91 57 42', 'm_saabou@marsamaroc.co.ma', 'www.marsamaroc.co.ma', 'Seaport', 'Small', '', '', 17, 0, '', 0, '', '', ''),
(37, 4, 'Bejaia', 'Argelia', 'Argelia.jpg', 'DZBJA', 'PortOfBejaia.jpg', 'PortOfBejaio.gif', '', '', '36.74925 ', '5.08991 ', 'Enreprise Portuaire de Bejaia', '13, avenue des freres Amrani\r\nBejaia 06000\r\nAlgeria', '+213 34 21 18 07', '+213 34 20 14 88', 'portbj@portdebejaia.dz', 'www.portdebejaia.com.dz', 'Deepwater Seaport', 'Large', '', '', 11, 0, '', 0, '', '', ''),
(38, 4, 'Jorf Lasfar', 'Marruecos', 'Marruecos.jpg', 'MAJFL', 'PortOfJorfLasfar.jpg', 'PortOfJorfLasfar.gif', '', '', '33.123 ', '-8.631', 'Societe D\'Exploitation des Ports (SODEP)', 'Jorf Lasfar\r\nMorocco', '+212 061 91 56 74', '+212 061 91 56 74', 'j_khamlach@marsamaroc.co.ma', 'www.marsamaroc.co.ma', 'Harbor', 'Small', '', '', 14, 0, '', 0, '', '', ''),
(39, 4, 'Tin Can Island', 'Nigeria ', 'Nigeria.jpg', 'NGAPP', 'PortOfTinCanIsland.jpg', 'PortOfTinCanIsland.gif', '', '', '6° 26\' 3\" N', '3° 21\' 1\" E', 'Nigerian Ports Authority', 'P.M.B 1201\r\nApapa, Lagos\r\nNigeria', '+234 1 5873210', '+234 1 5873565', 'tincan@nigerianports.org', 'www.nigerianports.org', 'Seaport', 'Medium', '', '', 0, 0, '', 0, '', '', ''),
(40, 4, 'Durban', 'Sudafrica', 'Sudafrica.jpg', 'ZADUR', 'PortOfDurban.jpg', 'PortOfDurban.gif', '', '', '-29.881', '31.0265', 'Transnet National Ports Authority', 'P O Box 1027\r\nDurban 4000\r\nSouth Africa', '+27 31 361 8804', '+27 31 361 8879', 'info@transnetnationalportsauthority.net', 'www.transnetnationalportsauthority.net', 'Seaport', 'Large', '', '', 71, 0, '', 0, '', '', ''),
(41, 3, 'Gioia Tauro Harbour', 'Italia', 'Italia.jpg', 'ITGIT', 'PortOfGioia.jpg', 'PortOfGioia.gif', '', '', '38.45494', '15.901825 ', 'Porto di Gioia Tauro', 'Contrada Lamia\r\nGioia Tauro, RC 89013\r\nItaly', '+39 0966 766415', '+39 0966 505438', 'info@portodigioiatauro.it', 'www.portodigioiatauro.it', 'Seaport', 'Medium', '', '', 11, 0, '', 0, '', '', ''),
(42, 3, 'BREMEN', 'Alemania', 'Alemania.jpg', 'DEBRE', 'PortOfBremen.jpg', 'PortOfBremen.gif', '', '', '53° 5\' 51\" N', '8° 45\' 6\" E', 'Bremenports', 'Hafenstrabe 49\r\nBremen 28217\r\nGermany', '+49 0 421 309 01-0', '+49 0 421 309 01-0', 'office@bremenports.de', 'www.bremen-ports.de', 'River Port', 'Medium', '', '', 0, 0, '', 0, '', '', ''),
(43, 3, 'VALENCIA', 'España', 'Espana.jpg', 'ESVLC', 'PortOfValencia.jpg', 'PortOfValencia.gif', '', '', '39.44231', '-0.31646595 ', 'Port Authority of Valencia (PAV)', 'Avda. del Muelle del Turia, s/n\r\nValencia 46024\r\nSpain', '+34 96 393 9500', '+34 96 393 9599', 'apv@valenciaport.com', 'www.valenciaport.com', 'Seaport', 'Large', '', '', 117, 0, '', 0, '', '', ''),
(44, 3, 'LE HAVRE', 'Francia', 'Francia.jpg', 'FRLEH', 'PortOfLeHavre.jpg', 'PortOfLeHavre.gif', '', '', '49.472655', '0.14620419', 'Port Authority of Le Havre', 'Terre-Plein de la Barre\r\nB.P. 1413\r\nLe Havre, Cedex 76067\r\nFrance', '+33 2 32 74 74 00', '+33 2 32 74 74 29', 'internetpah@havre-port.fr', 'www.havre-port.net', 'Deepwater Seaport', 'Large', '', '', 82, 0, '', 0, '', '', ''),
(45, 3, 'GÉNOVA', 'Italia', 'Italia.jpg', 'ITGOA', 'PortOfGenova.jpg', 'PortOfGenova.gif', '', '', '44.403545', '8.909109', 'Autorita Portuale De Genova', 'Palazzo SanGiogio\r\nVia della Mercanzia 2\r\nGenoa, GE 16123\r\nItaly', '+39 010 241 2793', '+39 010 241 2309', 'info@porto.genova.it', 'www.porto.genova.it', 'Seaport', 'Large', '', '', 125, 0, '', 0, '', '', ''),
(46, 3, 'DUNKERQUE', 'Francia', 'Francia.jpg', 'FRDKK', 'PortOfDunkerque.jpg', 'PortOfDurkeque.gif', '', '', '51.242', '2.1726', 'Port Autonome de Dunkerque', 'BP 6534\r\nTerre-Plein Guillain\r\nDunkerque, Cedex 1 59386\r\nFrance', '+33 3 28 28 75 91', '+33 3 28 28 75 97', 'njuhere@portdedunkerque.fr', 'www.portdedunkerque.fr', 'Harbor', 'Large', '', '36 - 40 pies', 51, 0, '', 0, '', '', ''),
(47, 3, 'BARCELONA', 'España', 'Espana.jpg', 'ESBCN', 'PortOfBarcelona.jpg', 'PortOfBarcelona.gif', '', '', '41.352375', '2.158441', 'Barcelona Port Authority', 'World Trade Center\r\nBarcelona wharf\r\nBarcelona 08039\r\nSpain', '+34 93 306 88 00', '+34 93 306 88 00', 'sau@portdebarcelona.cat', 'www.portdebarcelona.cat', 'Seaport', 'Very Large', '', '', 110, 0, '', 0, '', '', ''),
(48, 3, 'AARHUS', 'Dinamarca', 'Dinamarca.jpg', 'DKAAR', 'PortOfAarhus.jpg', 'PortOfAarhus.gif', '', '', '56.154', '10.2295', 'PortOfAarhus', 'Mindet 2Postboks 130Aarhus C, Jutlandia DK 8100 - Dinamarca', '+45 86 13 32 66', '+45 86 12 76 62', 'port@aarhus.dk', 'www.aarhushavn.dk', 'Seaport', 'Small', '', '', 19, 0, '', 0, '', 'Daniel Valdez', ''),
(49, 3, 'CAGLIARI', 'Italia', 'Italia.jpg', 'ITCAG', 'PortOfCagliari.jpg', 'PortOfCagliari.gif', '', '', '39.206115 ', '9.1140775', 'Autorita Portuale di Cagliari', 'Molo Sanita Porto di Cagliari\r\nCagliari 09123\r\nItaly', '+39 070 679531', '+39 070 679533', 'autorita.portuale@tiscali.it', 'www.porto.cagliari.it', 'Seaport', 'Medium', '', '', 29, 0, '', 0, '', '', ''),
(50, 3, 'FELIXSTOWE', 'Inglaterra', 'Inglaterra.jpg', 'GBFXT', 'PortOfFelixstowe.jpg', 'PortOfFelixstowe.gif', '', '', '51.959055', '1.2981075 ', 'Hutchison Ports (UK) Limited', 'Tomline House\r\nThe Dock\r\nFelixstowe, Suffolk IP11 3SY\r\nUnited Kingdom', '+44-1394-604500', '+44-1394-604949', 'enquiries@fdrc.co.uk', 'www.portoffelixstowe.co.uk', 'Seaport', 'Large', '', '', 19, 0, '', 0, '', '', ''),
(51, 3, 'SOUTHAMPTON', 'Inglaterra', 'Inglaterra.jpg', 'GBSOU', 'PortOfSouthampton.jpg', 'PortOfShouthsmpton.gif', '', '', '50.898175', '-1.4205025 ', 'Associated British Ports', 'Ocean Gate\r\nAtlantic Way\r\nSouthampton SO14 3QN\r\nUnited Kingdom', '+44 023 8048 8800', '+44 023 8033 6402', 'southampton@abports.co.uk', 'www.abports.co.uk/Our_Locations/Southampton', 'Seaport', 'Large', '', '', 55, 0, '', 0, '', '', ''),
(52, 3, 'LAS PALMAS', 'España', 'Espana.jpg', 'ESLPA', 'PortOfLasPalmas.jpg', 'PortOfLasPalmas.gif', '', '', '28.141', '-15.41635 ', 'Autoridad Portuaria de Las Palmas', 'Tomas Quevedo Ramírez, s/n Edif. A.P.L.P.\r\nLas Palmas de Gran Canaria\r\nLas Palmas 35008\r\nSpain', '+34 928300400', '+34 928300422', 'info@palmasport.es', 'www.palmasport.es', 'Seaport', 'Medium', '', '', 146, 0, '', 0, '', '', ''),
(53, 3, 'SANTA CRUZ DE TENERIFE', 'España', 'Espana.jpg', 'ESSCT', 'PortOfSantaCruzTenerife.jpg', 'PortOfSantaCruzdeTenerife.gif', '', '', '28.480055', '-16.23424', 'Autoridad Portuaria de Santa Cruz de Tenerife', 'Spain', '+34 922 605465', '+34 922 605480', 'presidencia@puertosdetenerife.org', 'www.puertosdetenerife.org', 'Harbor', 'Medium', '', '', 31, 0, '', 0, '', '', ''),
(54, 3, 'DUISBURG', 'Alemania', 'Alemania.jpg', 'DEDUI', 'PortOfDuisburg.jpg', 'PortOfDuisburg.gif', '', '', '51° 26\' 59\" N', '6° 45\' 20\" E', 'Duisburger Hafen AG', 'Alte Ruhrorter Str. 42 - 52\r\nDuisburg 47119\r\nGermany', '+49 0 203-803-1', '+49 0 203-803-232', 'mail@duisport.de', 'www.duisport.de', 'River Port', 'Large', '', '', 0, 0, '', 0, '', '', ''),
(55, 3, 'SAN PETERSBURGO', 'Rusia', 'Rusia.jpg', 'RULED', 'PortOfSanPetersburgo.jpg', 'PortOfSanPetersburgo.gif', '', '', '59° 55\' 38\" N', '30° 13\' 48\" E', 'Port Authority of St. Petersburg', '10 Gapsalskaya Str.\r\nSt. Petersburg 198035\r\nRussia', '+7 812 718 8951', '+7 812 327 4020', 'public@mail.pasp.ru', 'www.pasp.ru', 'Seaport', 'Large', '', '', 0, 0, '', 0, '', '', ''),
(57, 2, 'Penang', 'Malasia', 'Malasia.jpg', 'MYPEN', 'PortOfPenang.jpg', 'PortOfPennang.gif', '', '', '5.4025', '100.347', 'Penang Port Commision', '3A-6 Bangunan Sri Weld\r\nPangkalan Weld\r\nPenang 10300\r\nMalaysia', '+60 04-2633211', '+60 04-2633211', 'sppp@po.jaring.my', 'www.penangport.gov.my', 'Seaport', 'Medium', '', '', 44, 0, '', 0, '', '', ''),
(58, 2, 'Hong Kong', 'China', 'China.jpg', ' HKHKG', 'PortOfHongKong.jpg', 'PortOfHongKong.gif', '', '', '22.287945', '114.18135', 'Marine Department of the Hong Kong Special Ad Regi', 'Harbour Building\r\n38 Pier Road\r\nHong Kong\r\nHong Kong', '+86 852 2542 3711', '+86 852 2541 7194', 'mdenquiry@mardep.gov.hk', 'www.mardep.gov.hk', 'Deepwater Seaport', 'Very Large', '', '', 476, 22352000, '', 0, '', '', ''),
(59, 2, 'Busan', 'Corea del Sur', 'Korea.jpg', 'KRPUS', 'PortOFBusan.jpg', 'PortOfBusan.gif', '', '', '35.10162 ', '129.03605', 'Busan Port Authority', '79-9, Jungan-Dong 4GA\r\nJung-Gu\r\nBusan 600-016\r\nKorea, South', '+82-51-999-3000', '+82-51-999-3000', 'bpamaster@busanpa.com', 'www.portbusan.or.kr', 'Seaport', 'Large', '', '', 490, 0, '', 0, '', '', ''),
(60, 2, 'Guangzhou', 'china', 'China.jpg', 'CNCAN', 'PortOfGuangzhou.jpg', 'PortOfGuanzhou.gif', '', '', '23.0855', '113.425 ', 'Guangzhou Port Affairs Bureau', '531 Gangqian Road\r\nHuangpu District\r\nGuangzhou, Guangdong 510000\r\nChina', '+86 20 8227 9412', '+86 20 8227 8303', 'www.gzport.com', 'www.gzport.com', 'Seaport', 'Medium', '', '', 236, 0, '', 0, '', '', ''),
(61, 2, 'Qingdao', 'China', 'China.jpg', 'CNQDG', 'PortOfQingdao.jpg', 'PortOfQingdao.gif', '', '', '36.05661', '120.3201', 'Qingdao Port Authority', 'Port Administration Office\r\n6 Gangqing Road\r\nQingdao, Shandong 266011\r\nChina', '+86 532 298 2011', '+86 532 2822878', 'president@qdport.com', 'www.qdport.com', 'Seaport', 'Large', '', '', 157, 0, '', 0, '', '', ''),
(62, 2, 'Tianjin', 'China', 'China.jpg', 'CNTXG', 'PortOfTianjin.jpg', 'PortOfTianjin.gif', '', '', '38.96904', '117.73725 ', 'Port of Tianjin Authority', '35 Xingang Road No 2\r\nTanggu\r\nTianjin, Heibei 300456\r\nChina', '+86 22 2570 5239', '+86 22 2570 9747', 'wsc@tianjinport.ptacn.com', 'www.ptacn.com', 'Seaport', 'Large', '', '', 256, 0, '', 0, '', '', ''),
(63, 2, 'Dalian', 'China', 'China.jpg', 'CNDLC', 'PortOfDalian.jpg', 'PortOfDalian.gif', '', '', '38.997475', '121.7645', 'Dalian Port Corporation Limited', '1 Gangwan Street\r\nZhongshan District\r\nDalian, Liaoning 116004\r\nChina', '+86 411 8262 7147', '+86 411 8280 7148', 'www.portdalian.com', 'www.portdalian.com', 'Port Terminal', 'Large', '', '', 157, 0, '', 0, '', '', ''),
(64, 2, 'Xiamen', 'China', 'China.jpg', 'CNXMG', 'PortsOfXiamen.jpg', 'PortOfXiamen.gif', '', '', '24.503175', '118.02925', 'Xiamen Port Authority', '127 Dongdu Road\r\nXiamen, Fujian 361012\r\nChina', '+86 592 561 4889', '+86 592 561 2682', 'xpgco@public.xm.fj.cn', 'www.portxiamen.gov.cn', 'Seaport', 'Medium', '', '', 360, 0, '', 0, '', '', ''),
(65, 2, 'Lianyungang', 'China', 'China.jpg', 'CNLYG', 'PortsOfLianyungang.jpg', 'PortOfLianyungang.gif', '', '', '34.79039', '119.56655', 'Lianyungang Port Affairs', 'Administration Bureau\r\n99 Zhongshan Dong Road\r\nLianyungang, Jiangsu 222046\r\nChina', '+86 518 238 2501', '+86 518 2382906', 'info@lygport.com.cn', 'www.lygport.com.cn', 'Seaport', 'Large', '', '', 117, 0, '', 0, '', '', ''),
(66, 2, 'Yingkou', 'China', 'China.jpg', 'CNYIK', 'PortOfYingkou.jpg', 'PortOfYingkou.gif', '', '', '40.693625 ', '122.26615 ', 'Yingkou Harbour Administration', 'Admin Off, 1 Xingang Rd\r\nBayuquan District\r\nYingkou, Liaoning 115007\r\nChina', '+86 417 625 1778', '+86 417 625 1523', '', '', 'Seaport', 'Small', '', '', 0, 0, '', 0, '', '', ''),
(67, 2, 'Jeddah', 'Arabia Saudita', 'ArabiaSaudita.jpg', ' SAJED', 'PortOfJeddah.jpg', 'PortOfJeddah.gif', '', '', '21.48182', '39.147125 ', 'Saudi Ports Authority', 'P.O. Box 9285\r\nJeddah 21188\r\nSaudi Arabia', '+966-2-6471200', '+966-2-6477411', 'info@ports.gov.sa', 'www.ports.gov.sa', 'Seaport', 'Medium', '', '', 42, 0, '', 0, '', '', ''),
(68, 2, 'Colombo', 'Sri Lanka', 'SriLanka.jpg', 'LKCMB', 'PortOfColombo.jpg', 'PortOfColombo.gif', '', '', '6.9535', '79.8465', 'Sri Lanka Ports Authority', 'No. 19, Chaithya Road\r\nP. O. Box 59\r\nColombo 01\r\nSri Lanka', '+94-11 2421201', '+94-11 2440651', 'info@slpa.lk', 'www.slpa.lk', 'Seaport', 'Large', '', '', 76, 0, '', 0, '', '', ''),
(69, 2, 'Jawaharlal Nehru', 'India', 'India.jpg', 'INNSA', 'PortOfJawaharlalNehru.jpg', 'PortOfJawaharlaNehru.gif', '', '', '18.952', '72.948', 'Jawaharlal Nehru Port Trust (JNPT)', 'Administrative Building\r\nSheva Navi, Maharashtra 400707\r\nIndia', '+91-22-7242322', '+91-22-7242325', 'jawahar@giasbm01.vsnl.net.in', 'www.jnport.com', 'Seaport', 'Large', '', '', 28, 0, '', 0, '', '', ''),
(70, 2, 'Khalid - Sharjah', 'UAE', 'UAE.jpg', 'AESHJ', 'PortOfSarjah.jpg', 'PortOfSarjah.gif', '', '', '25° 21\' 58\" N', '55° 22\' 42\" E', 'Ports of Sharjah', 'P.O Box 510\r\nSharjah\r\nUnited Arab Emirates', '+971-6-5281666', '+971-6-5281425', 'shjports@emirates.net.ae', 'www.sharjahports.gov.ae', 'Seaport', 'Medium', '', '', 0, 0, '', 0, '', '', ''),
(71, 2, 'Manila', 'Filipinas', 'Filipinas.jpg', 'PHMNL', 'PortOfManila.jpg', 'PortOfManila.gif', '', '', '14° 31\' 27\" N', '120° 56\' 57\" E', 'Philippine Ports Authority', 'PNR Building\r\nSouth Harbor\r\nManila\r\nPhilippines', '+527-44-14', '+527-44-14', 'ppa_manila@ppa.com.ph', 'www.ppa.com.ph', 'Seaport', 'Very Large', '', '', 0, 0, '', 0, '', '', ''),
(72, 2, 'Ambarli Estambul', 'Turquia', 'Turquia.jpg', '', 'PortOfAmbarliEstambul.jpg', 'PortOfAmbarEstambul.gif', '', '', '40° 57\' 54\" N', '28° 41\' 28\" E', 'Altas Ambarli Liman Tesisleri Ticaret AS', 'Ambarli Tesisleri\r\nAngurya Ciftligi Mevkii Yakuplu - B Cekmece\r\nAmbarli 34900\r\nTurkey', '+212 875 2800', '+212 875 2802', 'altas@altasliman.com', 'www.altasliman.com', 'Seaport', 'Medium', '', '', 0, 0, '', 0, '', '', ''),
(73, 2, 'Salalah', 'Oman', 'Oman.jpg', 'OMSLL', 'PortOfSalalah.jpg', 'PortOfSalalah.gif', '', '', '16.953125', '54.00435', 'Salalah Port Services Company (S.A.O.G)', 'P O Box 105\r\nMuscat Postal Code 118\r\nOman', '+968-24-600586', '+968-24-600736', 'info@salalahport.com', 'www.salalahport.com', 'Seaport', 'Medium', '', '', 15, 0, '', 0, '', '', ''),
(74, 1, 'Balboa', 'Panama', 'Panama.jpg', 'PABLB', 'PortsOfBalbao.jpg', 'PortOfBalbao.gif', '', '', '8.9456', '79.565', 'Panama Ports Company (PPC)', 'Arnulfo Arias Madrid Avenue, Building 1501\r\nP.O. Box 0843-00574\r\nPanama\r\nPanama', '+507-207 5100', '+507-232 5697', 'info@ppc.com.pa', 'www.ppc.com.pa', 'Seaport', 'Medium', '', '', 94, 0, '', 0, '', '', ''),
(75, 1, 'Manzanillo', 'Mexico', 'Mexico.jpg', 'MXZLO', 'PortsOfManzanillo.jpg', 'PortOfManzanillo.gif', '', '', '19.07729 ', '-104.3225', 'Administracion Portuaria Integral de Manzanillo S.', 'Av. Teniente Azueta No. 9\r\nCol. Burocrata\r\nManzanillo, Colima C.P. 28250\r\nMexico', '+52 314 331 1400', '+52 314 331 1400', 'www.puerto-de-manzanillo.com.mx', 'www.puerto-de-manzanillo.com.mx', 'Seaport', 'Medium', '', '', 35, 0, '', 0, '', '', ''),
(76, 1, 'Cartagena', 'Colombia', 'Colombia.jpg', 'COCTG', 'PortsOfCartagena.jpg', 'PortOfCartagena.gif', '', '', '10.401215', '-75.52856 ', 'Sociedad Portuaria Regional de Cartagena S.A.', 'Manga Terminal Maritimo\r\nCartagena A.A 7954\r\nColombia', '+57 5 6608071', '+57 5 6502239', 'info@albatros.puertocartagena.com', 'www.albatros.puertocartagena.com', 'Seaport', 'Large', '', '', 33, 0, '', 0, '', '', ''),
(77, 1, 'Callao', 'Peru', 'Peru.jpg', 'PECLL', 'PortsOfCallao.jpg', 'PortOfCallao.gif', '', '', '-12.04688', '-77.148475', 'Empresa Nacional de Puertos S.A.', 'Av. Contralmirante Raygada 110\r\nCallao\r\nPeru', '+51 1 429-9210', '+51 1 469-1010', 'info@enapu.com.pe', 'www.enapu.com.pe', 'Seaport', 'Large', '', '', 74, 0, '', 0, '', '', ''),
(78, 1, 'Guayaquil', 'Ecuador', 'Ecuador.jpg', 'ECGYE', 'PortsOfGuayaquil.jpg', 'PortOfGuayaquil.gif', '', '', '-2.256039', '-79.94373 ', 'Autoridad Portuaria de Guayaquil (APG)', 'Guayaquil\r\nEcuador', '', '', '', 'www.puertodeguayaquil.com', 'Seaport', 'Medium', '', '', 7, 0, '', 0, '', '', ''),
(79, 1, 'Kingston', 'Jamaica', 'Jamaica.jpg', 'JMKIN', 'PortsOfKingston.jpg', 'PortOfKingstone.gif', '', '', '17.96845', '-76.785055', 'City of Kingston', '420 Broadway\r\nKingston, NY 12401\r\nEstados Unidos', '+845-331-0080', '+845-331-0080', 'info@kingston-ny.gov', 'www.kingston-ny.gov', 'River Port', 'Small', '', '', 2, 0, '', 0, '', '', ''),
(80, 1, 'Buenos Aires', 'Argentina', 'Argentina.jpg', 'ARBUE', 'PortsOfBuenosAires.jpg', 'PortOfBuenosAires.gif', '', '01 enero de 1801', '-34.61161', '-58.367685', 'Administracion General de Puertos', 'Avenida Ingeniero Huergo 431,\r\nBuenos Aires\r\nArgentina', '+54 11 4342-1727', '+54 11 4342-1727', 'institucionales@puertobuenosaires.gov.ar', 'www.puertobuenosaires.gov.ar', 'Deepwater Seaport', 'Large', '', '', 19, 0, '', 0, '', '', ''),
(81, 1, 'San Antonio', 'Chile', 'Chile.jpg', 'CLSAI', 'PortsOfSanAntonio.jpg', 'PortOfSanAntonio.gif', '', '', '-33.5875', '-71.618285', 'Multioperated Terminal', 'Alan Macowan\r\nSan Antonio 0245\r\nChile', '+56 35 586 000', '+56 35 586 015', 'info@sanantonioport.com', 'www.sanantonioport.com', 'Harbor', 'Medium', '', '', 2, 0, '', 0, '', '', ''),
(82, 1, 'Limón Moin', 'Costa Rica', 'CostaRica.jpg', 'CRLIO', 'PortsOfLimonMoins.jpg', 'PortOfLimonMoin.gif', '', '', '9.9873', '83.0213', '', 'San José  – Avenida 9 Calle 0 y 2', '+506 795 4747', '+506 795 0728', '', 'www.japdeva.go.cr/', 'Harbor ', 'Very Small', '', '23.2m ', 20, 0, '', 0, '', '', ''),
(83, 1, 'Lázaro Cárdenas', 'Mexico', 'Mexico.jpg', 'MXLZC', 'PortsOfLazaroCardenas.jpg', 'PortOfLazaroCardena.gif', '', '', '17.953755', '-102.16215', 'Adm. Portuaria Integral de Lazaro Cardenas', 'Prol. Av. Lazaro Cardenas No. 1\r\nColonia Centro\r\nCiudad Lazaro Cardenas, Michoacan C.P. 60950\r\nMexico', '+52 753 532 20 64', '+52 753 537 2150', 'info@apilac.com.mx', 'www.apilac.com.mx', 'Seaport', 'Medium', '', '', 4, 0, '', 0, '', '', ''),
(84, 1, 'Veracruz', 'Mexico', 'Mexico.jpg', 'MXVER', 'PortsOfVeracruz.jpg', 'PortOfVeracruz.gif', '', '', '19.198905', '-96.130025', 'Ad. Portuaria Integral de Veracruz, S.A', 'Av. Marina Mercante No. 210, 7 piso\r\nCol. Centro\r\nVeracruz, Veracruz 91700\r\nMexico', '+52 229 923 2170', '+52 229 932 3040', 'info@puertodeveracruz.com.mx', 'www.puertodeveracruz.com.mx', 'Seaport', 'Large', '', '', 6, 0, '', 0, '', '', ''),
(85, 1, 'Caucedo', 'República Dominicana', 'RepublicaDominicana.jpg', 'DOCAU', 'PortsOfCaucedo.jpg', 'PortOfCaudedo.gif', '', '', ' 18.42541', '-69.6285', 'DP World Caucedo', 'Zona Franca Multimodal Caucedo\r\nBldg. ADM. Suite 200, Punta Caucedo\r\nBoca Chica\r\nDominican Republic', '+809 373 7300', '+809 373 7300', 'glen.hilton@dpworld.com', 'www.dpworld.com', 'Seaport', 'Medium', '', '', 2, 0, '', 0, '', '', ''),
(86, 1, 'New York and New Jersey', 'USA', 'Usa.jpg', 'USNYC', 'PortsOfNewYork.jpg', 'PortOfNewYorkNewJersey.gif', '', '', '40.01 ', '-74.12 ', 'The Port Authority of New York and New Jersey', '225 Park Avenue South\r\nNew York, NY 10003\r\nUnited States', '+1 212-435-4200', '+1 212-435-4200', 'info@panynj.gov', 'www.panynj.gov', 'Deepwater Seaport', 'Very Large', '', '', 58, 0, '', 0, '', '', ''),
(87, 1, 'Houston', 'USA', 'Usa.jpg', 'USHOU', 'PortsOfHouston.jpg', 'PortOfHouston.gif', '', '', '29.6523', '94.9857', 'Port of Houston Authority', '111 East Loop North (77029)\r\nP.O. Box 2562 (77252-2562)\r\nHouston, TX 77252-2562\r\nUnited States', '+1 713-670-2400', '+1 713-670-2429', 'info@portofhouston.com', 'www.portofhouston.com', 'Seaport', 'Very Large', '', '', 43, 0, '', 0, '', '', ''),
(88, 1, 'Montreal', 'Canada', 'Canada.jpg', 'CAMTR', 'PortsOfMontreal.jpg', 'PortOfMontreal.gif', '', '', '45.557015', '-73.516735 ', 'Montreal Port Authority', 'Port of Montreal Building, Wing No. 1\r\nCite du Havre\r\nMontreal, Quebec H3C 3R5\r\nCanada', '+1 514 283-7011', '+1 514 283-0829', 'info@port-montreal.com', 'www.port-montreal.com', 'Seaport', 'Large', '', '', 43, 0, '', 0, '', '', ''),
(89, 1, 'Charleston', 'USA', 'Usa.jpg', 'USCHS', 'PortsOfCharleston.jpg', 'PortOfCharleston.gif', '', '', '32.79487', '-79.914565 ', 'South Carolina State Ports Authority', '176 Concord Street\r\nCharleston, SC 29401\r\nUnited States', '+1 843-723-8651', '+1 843 577 8626', 'scspainfo@scspa.com', 'www.scspa.com', 'Deepwater Seapor', 'Very Large', '', '', 37, 0, '', 0, '', '', ''),
(91, 3, 'Port of Candelaria', 'Argentina', 'Australia.jpg', 'HIKOJ', 'PortOfBarcelona.jpg', 'PortOfLosAngeles.gif', '', '-235', '32', '32', 'popo', 'calle 70 nro 3133', '02262361174', '02262361174', 'chukobalverde@gmail.com', 'www.sf.hg', 'Seaport', 'small', '1', '1', 1, 1, '1', 1, 'Daniel Valdez', 'Daniel Valdez', 'NO'),
(92, 5, 'Port Of Santo Tome', 'Argentina', 'Mexico.jpg', 'JKHG', 'PortsOfXiamen.jpg', 'PortOfLosAngeles.gif', '', '', '32', '33', 'tata', 'Francisco De Haro 5285', '02262630155', '02262630155', 'danielkvaldez2@gmail.com', 'www.hg.jh', 'Seaport', 'very  large', '', '', 0, 0, '', 0, 'Daniel Valdez', 'Daniel Valdez', 'NO'),
(93, 3, 'Port Of Santa Ana', 'Argentina', 'Rusia.jpg', '', 'PortOfAarhus.jpg', 'PortOfLosAngeles.gif', '9', '', '', '', 'pipi', 'Francisco De Haro', '02262630155', '02262630155', 'danielkvaldez2@gmail.com', 'www.tt.hg', '', '', '', '', 0, 0, '', 0, 'Daniel Valdez', 'Daniel Valdez', 'NO'),
(94, 5, 'Port of Garupa', 'Argentina', 'Turquia.jpg', '', 'PortOfBarcelona.jpg', 'PortOfLosAngeles.gif', '9', '', '', '', 'fefe', 'calle 70 nro 3133', '02262361174', '02262361174', 'chukobalverde@gmail.com', 'www.wdd.hv', '', '', '', '', 0, 0, '', 0, 'Daniel Valdez', 'Daniel Valdez', 'NO'),
(95, 1, 'Port of San Ignacio', 'Argentina', 'Belgica.jpg', '', 'PortOfAmbarliEstambul.jpg', 'PortOfLosAngeles.gif', '', '', '', '', '', 'Calle 53 nro2499', '02262630155', '02262630155', 'danielkvaldez2@gmail.com', 'www.xcvzvb', '', '', '', '', 0, 0, '', 0, 'Daniel Valdez', 'Daniel Valdez', 'NO'),
(96, 1, 'Port Of Posadas', 'Argentina', 'Usa.jpg', 'WERTE', 'PortsOfSingapur.jpg', 'PortOfLosAngeles.gif', '', '2010', '33', '32', 'posadas', 'Francisco De Haro 5285', '02262630155', '02262630155', 'danielkvaldez2@gmail.com', 'www.are.gfd', 'RIVER', 'SMALL', '213', '12', 45, 0, '', 0, 'Daniel Valdez', 'Daniel Valdez', 'NO'),
(97, 2, 'Port of tarzaaan', 'Argentina', 'Brasil.jpg', 'SDFD', 'PortsOfVeracruz.jpg', 'PortOfLosAngeles.gif', '', '2011', '21', '21', 'brasil', 'Francisco De Haro 5285', '02262630155', '02262630155', 'danielkvaldez2@gmail.com', 'swwww', 'Seaport', 'large', '', '', 0, 0, '', 0, 'Daniel Valdez', 'Daniel Valdez', 'NO'),
(98, 1, 'Daniel Valdez', 'Argentina', 'Chile.jpg', '', 'BowProsper.jpg', 'PortOfLosAngeles.gif', '', '', '33', '33', 'fvf', 'Francisco De Haro', '02262630155', '02262630155', 'danielkvaldez2@gmail.com', '', '', '', '', '', 0, 0, '', 0, 'Daniel Valdez', 'Daniel Valdez', 'NO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `databaseship`
--

CREATE TABLE `databaseship` (
  `id` int(11) NOT NULL,
  `nameS` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `flag` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `country` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `imo` int(11) NOT NULL,
  `mmsi` int(11) NOT NULL,
  `callsign` varchar(20) COLLATE utf8_spanish_ci NOT NULL,
  `size` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `draught` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `yearS` int(11) NOT NULL,
  `typeship` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `maker` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `imagen` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `userModif` varchar(50) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `databaseship`
--

INSERT INTO `databaseship` (`id`, `nameS`, `flag`, `country`, `imo`, `mmsi`, `callsign`, `size`, `draught`, `yearS`, `typeship`, `maker`, `imagen`, `userModif`) VALUES
(1, 'SEA SMILE', 'Liberia.jpg', 'Liberia', 9615107, 636015598, 'D5BT2', '180/30 m', '9,6 m', 2012, 'Cargo ship', 'Lucretia Shipping SA', '901.jpg', 'Daniel Valdez'),
(2, 'MSC BENEDETTA', 'Liberia.jpg', 'Liberia', 9465253, 636092804, 'D5OY6', '366/48 m', '12,7 m', 2011, 'Container Ship', 'ms \"ER Benedetta\" Schiffahrts Gmbh & Co KG', '902.jpg', ''),
(3, 'ZHONG YU 58', 'China.jpg', 'China', 9419060, 413405430, 'BKWQ3', '139 / 20 m', '4.8 m', 2007, 'Container Ship', 'Zhoushan Putuo Edible Oils', '903.jpg', ''),
(4, 'LONGVIKING', 'Netherlands.jpg', 'Netherlands', 9547324, 245901000, 'PBNO', '115 / 14 m', '5.7 m', 2010, 'Container Ship', 'ABIS Cadiz', '904.jpg', ''),
(5, 'KACHIDOKI', 'Panama.jpg', 'Panama', 9355147, 355765000, '3EFH', '300 / 50 m', '10.7 m', 2006, 'Bulk Carrier', 'KACHIDOKI Ltd', '905.jpg', ''),
(6, 'JIN HAI TAO', 'China.jpg', 'China', 9672557, 414754000, 'BPSA', '122/18 m', '5,4 m', 2013, 'Chemical Oil Products Tanker', 'Shanghai Jinhai Shpg & Trading', '906.jpg', ''),
(7, 'BERGE ARZEW', 'Bahamas.jpg', 'Bahamas', 9256597, 311745000, 'C6TQ5', '270/42 m', '11,2 m', 2004, 'LNG Tanker', 'Bergesen d.y.& Co', '907.jpg', ''),
(8, 'ADARA', 'Francia.jpg', 'Francia', 9587829, 226044000, 'FICS', '184/27 m', '9.0 m', 2011, 'Chemical Oil Products', 'Hull 2310 LLC', '908.jpg', ''),
(9, 'MAERSK PROMISE', 'Singapur.jpg', 'Singapur', 9315458, 565151000, '9VBQ2', '244/42 m', '9.0 m', 2006, 'Crude Oil Tanker', 'MAERSK PROMISE Ltd<', '909.jpg', ''),
(10, 'THALASSA TYHI', 'Liberia.jpg', 'Liberia', 9667162, 636018702, 'D5QZ3', '368/51 m', '14,7 m', 2014, 'Container Ship', 'Thalassa Tyhi Pte Ltd', '910.jpg', ''),
(11, 'MAULLIN', 'Liberia.jpg', 'Liberia', 9400071, 636091744, 'A8SE4', '306/40 m', '12,6 m', 2010, 'Container Ship', 'Maullin Schiffahrts GmbH', '911.jpg', ''),
(12, 'UNICO ANNA', 'Korea.jpg', 'Korea', 9228203, 441932000, 'DSMU2', '170 / 27 m', '6.0 m', 2000, 'Bulk carrier', 'SUNNY ROYAL', '912.jpg', ''),
(14, 'SALOME', 'Singapur.jpg', 'Singapur', 9515412, 566086000, '9V9112', '265/32 m', '9,5 m', 2012, ' Vehicle carrier', 'Mark V Shipping Pte Ltd', '914.jpg', ''),
(15, 'KOTA WAJAR', 'Singapur.jpg', 'Singapur', 9157399, 564379000, 'S6BT', '184/28 m', '9,3 m', 1997, ' Merchant ship', 'Pacific International Lines Pte Ltd', '915.jpg', ''),
(16, 'PARE ACER', 'Liberia.jpg', 'Liberia', 9272668, 636017838, 'D5MY2', '170/26 m', '10,1 m', 2004, 'Chemical Products -  Products Tankers', 'JO ACER Ltd', '916.jpg', ''),
(17, 'COSCO NEBULA', 'HongKong.jpg', 'Hong Kong', 9795622, 477194400, 'VRRW8', '400/58 m', '12,0 m', 2018, 'Container Ship', 'COSCO Shipping Nebula Ltd', '917.jpg', ''),
(18, 'COSCO GALAXY', 'HongKong.jpg', 'Hong Kong', 9795634, 477269300, 'VRSJ9', '400/59 m', '14,9 m', 2019, 'Container Ship', 'COSCO Shipping Galaxy Ltd', '918.jpg', ''),
(19, 'MILAN MAERSK', 'Denmark.jpg', 'Denmark', 9778820, 219861000, 'OWGK2', '399 / 58 m', '13.6 m', 2017, 'Container Ship', 'Maersk Line A/S', '919.jpg', ''),
(20, 'OOCL ALEMANIA', 'HongKong.jpg', 'Hong Kong', 9776183, 477035800, 'VRQS3', '400/59 m', '15,9 m', 2017, 'Container Ship', 'FPG Shipholding Panama 38 SA', '920.jpg', ''),
(23, 'dfg', 'fdg', 'dfg', 0, 0, 'sfg', 'd', '2', 22, 'fsg', 'sdg', '904.jpg', 'Daniel Valdez');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `personas`
--

CREATE TABLE `personas` (
  `id` int(11) NOT NULL,
  `dia` int(11) NOT NULL,
  `mes` varchar(12) NOT NULL,
  `posted` varchar(25) NOT NULL,
  `titulo` varchar(150) NOT NULL,
  `texto` text CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `archivo` varchar(100) NOT NULL,
  `video` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `personas`
--

INSERT INTO `personas` (`id`, `dia`, `mes`, `posted`, `titulo`, `texto`, `archivo`, `video`, `date`) VALUES
(18, 12, 'December', ' SINGAPORE, MERCHANT NAVY', 'IT\'S TIME FOR MORE BUNKER MARKETS TO FOLLOW SINGAPORE\'S LEADERSHIP IN THE FIGHT AGAINST BUNKER\'S BAD PRACTICE', '  En In a way, we, as buyers, have created these problems ourselves, Peter GrÃ¼nwaldt of Hafnia Management tells Ship & Bunke', 'aprojects-news-906.jpg', 0, '2020-01-24 21:37:09'),
(19, 15, 'December', ' INVESTORS, MERCHANT NAVY', 'INVESTORS SMELL AN OPPORTUNITY AMID ARGENTINA CRISIS', '  Argentine assets have plummeted a lot and very fast, but some courageous investors say it could be time to buy. \"Find me a high-yielding sovereign country and an IMF program that pays so generously,\" said Jean-Dominique Butikofer, emerging markets fixed income director at Voya Investment Management, based in Atlanta, which oversees about $ 205 billion. \"We can agree on the outlook for growth, the inflation that is unexpectedly out of control, the dynamics of the debt after the depreciation of the currency and the technical problems. But at these levels, value has been created. \" It refers to figures like these: 16.2 percent in dollar bonds maturing in three years or better still, 17.8 percent in bonds that mature in two. At a time when the benchmark Treasury bonds of the United States have a yield of 2.5 percent and those of other more stable emerging markets like Chile only 4 percent, these are attractive figures, especially in a country that received a historic loan of US $ 56,000 million from the International Monetary Fund, is reducing its fiscal deficit and even registers a trade surplus. \"I would be very reluctant to leave Argentina completely,\" Paul McNamara, GAM\'s investment director in London, who oversees some US $ 135 billion, said in an interview. \"The currency is cheap and unlike what happened last year they have a large external trade surplus.\" Of course, there are many things to worry about. One of them is the country\'s history of non-compliance. He did not pay bond investors for 15 years until they finally reached an agreement in 2016, months after Mauricio Macri took office. The peso lost more than half of its value last year and is on track to repeat as the world\'s worst performing currency in 2019. And perhaps the most relevant is the threat that Macri will not achieve re-election in October and lose out to his populist predecessor, Cristina FernÃ¡ndez de Kirchner. The concern for his return to power after the polls showed that he surpasses Macri motivated the collapse this week. In the absence of six months for the elections, the popularity of Macri has been affected since the economy is going through the second recession in his government with inflation that is above 50 percent, which led the Executive to announce controls on prices that in the opinion of analysts are signs of panic. But Jaime Duran Barba, who has accompanied Macri throughout his political career, says that investors exaggerated. Focus now on the surveys, he says, \"is absurd.\" Volatility is typical of emerging markets, said Jan Dehn, head of London-based research at Ashmore Group, which manages about $ 85 billion. \"If you\'re afraid of market volatility, you should not be in this business,\" Dehn shot. \"Volatility is a permanent feature in emerging markets, but we know that permanent losses are small in comparison. Volatility is, in almost every case, absolutely your best friend. \" In addition, there is a good chance that inflation will go down from now on, creating a window of opportunity as support for Macri rebounds, according to Whitney Baker, founder of the New Yorker Totem Macro, which advises funds that have more than US dollars. $ 3 billion. Local investors are also looking for offers. The state pension fund of Argentina bought on Thursday the so-called local law bonds (bonds in dollars are sold only at the national level) with expiration in 2020 and 2024, according to people with direct knowledge of the matter.', 'aprojects-news-905.jpg', 0, '2020-01-24 21:39:37'),
(20, 16, 'December', 'SHIPPING, MERCHANT NAVY ', 'THE FEDERATION OF ARGENTINE SHIPPING COMPANIES KEEPS ITS EXECUTIVE COMMITTEE AND ITS OBJECTIVES UNALTERED', '  Shortly after completing 4 years of life, the Federation of Argentine Shipping Companies (FENA) decided to extend the mandate of its current board of directors for the period 2019/2021. The entity will continue to be chaired by JosÃ© Pablo ElverdÃ­n. FENA brings together the Chambers of Shipping Companies and Shippers (CAENA), Naviera Argentina (CNA), Argentine Flag Shipowners (CARBA) and Tugboat Shipowners (CAR). It was founded in May 2015 with the aim of ending years of fragmentation in the lobby Argentine shipping company, and to position with a unified voice the weight of the sector. Then, inexplicably, the Government of Cristina FernÃ¡ndez decided to extirpate the Undersecretariat of Ports and Waterways (under Horacio Tettamanti), of the Ministry of Transport that led Florencio Randazzo and deposit it in the Ministry of Economy of Axel Kicillof. The companies grouped in FENA represent 95% of national flag vessels, between barges and push tugs, port maneuvering trailers, fluvial and maritime transport of fuels, diesel and fuel oil, grains and oils, iron ore, containers, ships of support offshore, among other activities. Continuum \"This decision aims to continue generating actions tending to weather the difficult situation that the merchant marine crosses and to promote alternatives that make possible the development sustainable activity. The Federation has the vocation to intensify the dialogue with all the actors to reach agreements that allow positioning the Argentine merchant marine as a fundamental sector for the development of the Nation, \"they said in a statement. Elverdin, from CAENA, will be accompanied by Gustavo D\'Amico (CAENA, vice president); MarÃ­a Cecilia Virasoro (CARBA, secretary); Claudio Pablo LÃ³pez (CAENA, prosecutor); Jorge JosÃ© Ãlvarez (CNA, treasurer), and Francisco Raimondi (CAR, protestor). The memberships will be in charge of Diego HernÃ¡n Ãlvarez Blanco (CNA); Gustavo Alberto Rodriguez (CAR); Marcelo Sibione (CAR), and Francisco AndrÃ©s Nadal (CAENA). Meanwhile, Alberto Blanco Armada and Stella Maris Morosoly will continue in the review committee of accounts, both by CAENA. Finally, Carlos Augusto LÃ³pez (CAENA), Carlos Ruiz Moreno (CAR) and Aldo Fabio RodrÃ­guez (CARBA) will be part of the Court of Honor. Great challenges \"FENA considers that steps have been taken to improve the national logistics system and is convinced that the Argentine merchant marine, has great challenges ahead that must have the understanding and collaboration of all actors involved in the sector,\" they added. Among the last steps of the federation are negotiations with the Undersecretariat of Ports, Navigable Roads and Merchant Marine and the General Ports Administration (AGP), in claim for equal treatment with respect to the bonus rates for vessels of the Paraguayan and Bolivian flag established by resolution 40/2019, on the one hand, and the need to better understand the traceability of requests for exceptions to the cabotage law.', 'aprojects-news-904.jpg', 0, '2020-01-24 21:42:44'),
(21, 16, 'December', ' TRADENEWS ', 'EL MERCOSUR ES MUY IMPORTANTE PARA PENSAR QUE TERMINARÁ', '  \"The Bolsonaro government began with a speech in which it announced that it would carry out a reform of what it considered a third-world tradition in Brazil. There was a strong discourse of rapprochement with the United States, Israel and countries like Italy and Hungary that have right-wing governments. It all started with a presidential visit by the United States. and Israel, and the idea that Brazil has to move forward with more important economic agreements to develop, \"says Barral. - To what extent are the current policies coherent with the campaign discourse? - Once real life arrives, there is a very clear distinction between measures and discourse. First, because Brazil was never a country that only saw or interacted with developing nations. And on the other hand, when they arrived at the government they realized that Mercosur has a very great relevance, and the relationship with Argentina is quite important. In any case, although they are beginning to see reality, there is still a discourse that Brazil was very isolated and that it would have to try to reach broader agreements with more developed countries. The idea that Brazil has to try to close an agreement with the European Union (EU), Canada and Korea as priorities for this year is stronger. On the other hand, it insists that Brazil has to open more to the world and make a reduction in tariffs. In this line there is an expectation of the Bolsonaro government that when Brazil occupies the presidency of Mercosur, in the second half of this year, some reforms of the bloc or the Mercosur decision mechanism will be proposed. That is what is in the head of the government of Bolsonaro especially to advance more with international agreements and the negotiation of tariffs. Cut yourself -It includes in these Mercosur reforms the fact that countries can sign agreements independently and that negotiations are not necessarily en bloc? - According to the government, they will try to continue with a Mercosur negotiation policy as a bloc, but if the bloc does not advance, the alternative would be to change the rule that does not allow to seal agreements of its own. - Beyond the interminable negotiation with the EU (the contacts began in 1994), in the last time the Mercosur resumed its agenda with other countries and blocks. What changed to believe that concrete advances can be registered this time? -In the negotiation mechanisms, offers have been on the table since last year. Now the only thing different is the optimism of the government (of Bolsonaro). Those of us who have been waiting for Europe for many years to move are less optimistic. The new government is so optimistic that it believes that this year could end the negotiation with Europe.', 'aprojects-news-903.jpg', 0, '2020-01-24 21:45:31'),
(22, 16, 'December', ' DIEGO BALVERDE', 'HOPE OR UTOPIA', '  About 7 years ago I started a report to rebuild a Dead Port and give it an innovative, logical development. For all this I prepared myself with the best in their subjects and take note, I asked, I asked, I took it to scale, I even studied the probabilities of each of my hypotheses. This led me to a conclusion that the recruitment of information was important, relevant and with a potential for improvement. That\'s why I started working on how an Intelligent Port would be, I called it ... without knowing that there were already people who had established this terminology and even work methodology. Finally, through a book that many people helped me complete, I proposed the change with reliable statistical data and previously checked studies that provided accurate data on how to carry them out, development costs and estimated profits. To that I added the presentation of the book in several provinces and conferences to which I was invited .. all in pursuit of the growth of the Port that saw me being born and was practically managed by people with the motor and intellectual capacity of a kindergarten child of the smallest room (without pretending to offend the sweet children with so much desire to learn to the contrary of these infamous public workers armored in their posts without having even been communicated because they occupy it). In each site that I visited, I was enriched both in knowledge and a walk back through the university. It was great!!. From there a new world before me, of offers for the WORLD that demanded from our COUNTRIES, so many products. Visit more than 100 productive sites to choose 40, 40 products that are useful for those who touch our Ports. Doing a study in conjunction with a sociologist about MIGRATIONS in our COUNTRY and its crops, Experts in Ports (of the most important in the WORLD), elite engineers in each sector and economists with extensive knowledge in each of the areas to be developed , with enough experience in them. All this gave us an expertiz on the field of Foreign Trade A vital point for growth. \"KNOW WHAT WE HAVE TO SELL TO THOSE WHO KNOW THAT THEY VISIT US\". That\'s why after working with professionals in the area and bringing together industry leaders to boost growth, we find this cluster of inoperantes without a compass. What neither dumb nor lazy took the most superfluous idea and tried to do something .. something is the propitious knowledge that corresponds to the question. They were so incompetent and careless that they did not ask for help and took the risk of doing it as the old saying \"tie it with wire\" says. This happened in the place that before this study were thinking of entering boats of 12 meters in length or making a city in the port with all the inclemencies against it especially environmental ... but more important shortening what we promoted with the growth of SMART PORT that we offered. To all this in record time in 140 years of stagnation, they moved that unknown muscle called gluteus so that in 15 days with my idea they do something similar to the mamarracho that I was painting a work of art. Without more ... I leave with me cognitive synthesis about the sad way of stealing an idea. This synthesis is accompanied by a painting made by @ marianoh22o what shows all the lamebotas that Goliath had in the village hanging from a mate (his inseparable friend), trying to eat from above like the giraffes. Between hope and utopia .. I prefer HOPE because it is not a minor difference: utopia is prefabricated, it is a model of instructions, while HOPE is a territory to be built. Therefore, it requires the meeting of wills who still do not know what they propose and what they must do to get out of a world dominated by FINANCE, a political class that empties the language of meaning, together with a group of paid applauds like a Mexican sitcom full of comfortable and common places. I keep waiting for those QUESTIONS wisely guided (by trained people that do not exist), to find possible paths to that HOPE that can take the WORLD out of the DEMEMORITY and the FALSE MESSAGES of the ALWAYS explorers.', 'aprojects-news-902.jpg', 0, '2020-01-24 21:47:46'),
(23, 20, 'December', ' TRADENEWS', 'THE 10 LARGEST CONTAINER PORTS IN THE WORLD', '  Each day, millions of cargo freight travel from one port to another, connecting people and businesses around the world. We usually take their work for granted, but we are not fully aware of how much work they really have to handle. So we decided to present the world\'s top 10 container ports based on the volume they handle. International logistics is one of the most important industries in the world. He is in charge of moving all the goods in the world so that people can have access to everything they need and want. Around 90% of global trade is carried out through maritime shipments, in which large volumes are handled. Thus, while international trade continues to grow, ports have no choice but to grow and work on their efficiency to meet demand. The volume of commercial exchange will continue to increase, that\'s for sure. In just 5 years, the average annual volume of the top 10 ports in the world went from 20.34 to 22.40 million TEU (unit of measurement of a container of 20 feet). So, which ports managed to locate in this top 10? It is easy to see that most of the top 10 container ports are located in China (70%) and that the ten are all in Asia. So it is not uncommon to see that freight passes mainly through the South China Sea. This country has become the king of maritime shipments worldwide in the last decade. About two-thirds of the container trade passes through at least one Chinese port or ports that are financed by China. After seeing this ranking, it is not easy to believe that just over 10 years ago, in 2006, only 3 of the top 10 ports in the world were located in China (Hong Kong, Shanghai and Shenzhen). This shows how things can change when the market evolves towards new trends. This also applies to other aspects, such as digitization, since those who are really taking advantage will be those who will be leading the market in a short time. That is why all the players in the logistics industry should seek to keep up with the inevitable digital revolution in the industry.', 'aprojects-news-906.jpg', 0, '2020-01-24 21:50:06'),
(24, 20, 'December', ' TRADENEWS', 'THE WTO SHOWS THE PROGRESS OF PROTECTIONISM IN THE G20', '  According to the World Trade Organization, this value is the second highest since the May 2012 G20 trade monitoring report began to include data on the value of trade covered (the highest mark of US $ 480,900). it was in the previous period). A few days before the Summit of the G20 Heads of State (they will meet in Osaka, Japan, next Friday and Saturday), the WTO published the 21st surveillance report detailing that the G20 economies implemented 20 new measures of restriction on trade, including tariff increases, import prohibitions and new customs procedures for exports. When less is more The paper clarifies that while it is true that in the last period fewer measures were introduced than in previous periods, \"the scale of these measures is much greater in terms of their commercial coverage and the level of tariffs imposed\". \"This report provides additional evidence that turbulence generated by current trade tensions continues, and new trade restrictions have affected trade flows at a historically high level,\" said WTO Director-General Roberto AzevÃªdo. The official, who will participate in the G20 Summit in Japan, called on the Group\'s economies to collaborate urgently in mitigating trade tensions. Who are they The G20, brings together the main industrialized and emerging countries of the planet (19 countries and the European Union), which account for two thirds of the world population, 80% of trade and 85% of the wealth produced. The member countries are USA, China, Japan, Germany, United Kingdom, France, India, Brazil, Italy, Canada, South Korea, Russia, Australia, Mexico, Indonesia, Turkey, Saudi Arabia, Argentina and South Africa. The latest WTO report makes it clear that the trade war that has the main protagonists of the United States and China - and that includes the exchange of tariff restrictions and mirror measures - has an impact on the entire global economy.', 'aprojects-news-900.jpg', 0, '2020-01-24 21:51:47'),
(25, 14, 'January', ' FINANCIAL TIMES ', 'HOW WILL THE WORLD CHANGE IN 2020?', 'The FT\'s US managing editor Peter Spiegel, Moscow bureau chief Henry Foy, chief foreign affairs commentator Gideon Rachman and Asia editor Jamil Anderlini give their predictions for the coming year and discuss the threats to the liberal world order.', 'DtO80SG3-fs', 1, '2020-01-24 21:54:05'),
(26, 17, 'January', 'TRADENEWS', 'THEY ANTICIPATE A MODERATE GROWTH OF THE GLOBAL CONTAINER MOVEMENT IN 2020', '  The English consulting firm specializing in the maritime industry, Drewry, said the global container movement during 2020 will remain \"weak\" even \"despite the positive momentum of the Phase 1 trade agreement signed between the United States and China.\" As indicated in his latest Container Forecaster report, Drewry expects the global container operation to grow 3.3% in 2020, one point above the performance recorded in 2019. \"A quick and friendly end to the trade dispute between the United States and China has the potential to boost the global economy,\" said the consultant, after suggesting a more prudent approach to its immediate effects on maritime trade. Impossible to solve \"There are a number of differences that are apparently impossible to resolve,\" said Simon Heaney, manager of the company\'s Containers unit. \"It is a step in the right direction - he added - that eliminates a layer of uncertainty, but as with the previous truces, the foundations are weak and there is still a reasonably high possibility that hostilities will resume,\" he reflected. Indeed, the report warns of the imminent risk of imposition of protectionist measures by the United States in relation to automobiles and their parts coming from Europe, one of the most relevant segments of container trade on transatlantic routes. Oversupply While the consultant is confident that 2020 will see a growth in demand â€œfaster than in 2019â€, it also projected â€œa slight increase in overcapacity (from the supply of winery), higher rates (including bunkers) than in 2019 and a small reduction in the annual (already low) profits of carriers â€. Along the same lines, they suggested that shipping companies should not assume that trade flows with China will resume the same pace as they existed before the trade war with the United States.', 'aprojects-news-899.jpg', 0, '2020-01-24 21:55:07'),
(27, 18, 'January', ' PORTAL PORTUARIO ', 'USA: JAXPORT AND OTHER FLORIDA PORTS INNOVATE IN THE USE OF ALTERNATIVE FUELS ...', '  A report published by the Florida Ports Council shows that seaports and industry partners are investing in innovations to be more efficient and effective, including the implementation of ecological, less expensive and nationally produced liquefied natural gas (LNG) \"With more than a billion dollars in LNG investments in Jacksonville alone, there is no doubt that Florida is the state for LNG, both as fuel and type of cargo,\" said Eric Green, CEO of Jaxport, adding that \"the opportunity it is just beginning and it is an exciting time for our industry and our community â€ As the International Maritime Organization demands and applies more stringent regulations on air quality for port operations and sea vessels worldwide, there is a greater demand for alternative fuels in the national and global transport industry, according to the Study of Alternative Fuels .... Jaxport tiene la mayor operaciÃ³n de abastecimiento de GNL en un puerto de Estados Unidos, que incluye las instalaciones de JAX LNG y Eagle LNG Crowley Maritime puso en lÃ­nea su segundo barco propulsado con GNL en la Terminal MarÃ­tima Talleyrand de Jaxport en 2019. Combinado con los buques propulsados por GNL operados por TOTE Maritime Puerto Rico, cuatro buques propulsados por GNL tienen puerto de origen en Jaxport. \"The rapid expansion of the natural gas industry and the alternative fuel market provides an exciting opportunity for Florida\'s seaports to expand their use of natural gas, creating economic and environmental benefits for the state,\" said Doug Wheeler, president and Executive Director of the Florida Ports Council.', 'aprojects-news-898.jpg', 0, '2020-01-24 21:56:16'),
(28, 23, 'January', ' SHIP & BUNKER ', 'CRUDE DOWN NEARLY 3% AS POTENTIAL ECONOMIC IMPACT OF CHINA CORONAVIRUS SPOOKS TRADERS...', 'Travel activity could be particularly affected, says Goldman.....  ', 'aprojects-news-897.jpg', 0, '2020-01-24 21:57:19'),
(29, 23, 'January', ' SHIP & BUNKER ', 'FEATURE: VLSFOS - THE CONCERNING FUEL MANAGEMENT ISSUES SO FAR....', 'VPS gives background and presents three real-world case studies where ships have encountered problem VLSFO fuel....', 'aprojects-news-896.jpg', 0, '2020-01-24 21:58:40'),
(30, 23, 'January', 'Ship & Bunker', 'CONCERN FOR CHINESE CORONAVIRUS ARRIVES AT THE PORT OF VALPARAÃSO ...', 'Concern for the Chinese coronavirus reached the Port of ValparaÃ­so and, proof of this, is that regional health authorities will attend the precinct of the regional capital of Buenos Aires to deliver information to local stevedores .... Although the presence of the disease has not yet been detected in Chile, staff of the Regional Ministry of Health (Seremi) - as has happened on other occasions for similar cases - will visit the facility that is a vulnerable point to be a door of entry of goods and people to the country ....  ', 'aprojects-news-895.jpg', 0, '2020-01-24 21:59:45'),
(31, 23, 'January', 'Ship & Bunker', 'THE PORT OF VANCOUVER â€” WHAT DRIVES CANADAâ€™S BUSIEST GATEWAY', '  Itâ€™s no accident that Vancouver, British Columbia, is consistently ranked one of the â€œmost livableâ€ cities in the world. Itâ€™s surrounded by exceptional natural beauty. Nestled between the Pacific Ocean and the Rocky Mountains, itâ€™s cooler in the summer and warmer in the winter than the rest of Canada. Also, a strong economy, rich cultural diversity, and solid infrastructure, all contribute to making the city a great place to live and work. Central to Vancouverâ€™s vitality is its port. The tourist that pour in on cruise lines â€” 1 million passengers are expected in 2019 â€” are probably blissfully unaware that theyâ€™ve just passed through the busiest port in Canada. But not because of tourism: automobiles (400K cars annually), breakbulk (steel, lumber, machinery, etc.), bulk (grain, chemicals, petroleum, etc.), and containerized cargo account for the lionâ€™s share of traffic. Worldwide, the Port of Vancouver ranks 47th, according the JOC.com Top 50 list[1]. On this blog nowthatslogistics, we ranked it the 7th busiest port in the Americas region (North and South America combined), based on 2016 numbers. But 3.3M TEUs of cargo in 2017 would move it up two positions, just behind Santos, Brazil. The port generates 115,000 Canadian jobs (49,000 work directly for the port, the balance are indirect and induced jobs), and adds $18.8B to Canadaâ€™s GDP, according to a 2016 economic impact study[2]. Last year, the value of the goods handled by the port exceeded $200B.', 'aprojects-news-894.jpg', 0, '2020-01-24 22:00:52'),
(32, 23, 'January', 'Ship & Bunker', 'AMMONIA-POWERED FUEL CELL PROJECT RECEIVES â‚¬10 MILLION OF EU FUNDING', 'The ship will be able to run on green ammonia for 3,000 hours per year after the system is installed.  ', 'aprojects-news-893.jpg', 0, '2020-01-24 22:01:38'),
(33, 24, 'January', 'Trade News ', ' The dredging positioned Ecuador in the port club suitable for 14,000 TEU ships', 'Ecuador took another step to position itself in global supply chains as an alternative on the west coast of South America.\r\nLast week, Guayaquil was one of the Pacific ports that proved to be in a position to receive the largest vessel that so far stood at ports on the west coast: the APL Esplanade, 368 meters long and 52 wide.\r\nThe record entry for Ecuador was not only possible due to the extension of the pier carried out by the Port Terminal of Guayaquil (TPG), but also for the opening, deepening and maintenance works of the 93 km long entrance channel, carried out in 2019 by the Belgian company Jan de Nul.', 'aprojects-news-892.jpg', 0, '2020-01-25 00:57:56'),
(34, 24, 'January', 'TRADENEWS', ' What is the cost of zeroing carbon emissions on ships', '  The shipping industry, on which more than 90% of global merchandise trade depends, faces an expensive challenge: at least $ 1 trillion in infrastructure investment to mitigate the environmental impact.\r\nAnd the world merchandise trade will have to follow this type of global initiatives very closely because, ultimately, it will be the cost of the transition.\r\nAccording to the International Maritime Organization (IMO), shipping must reduce the amount of greenhouse gases emitted in 2008 by 2050 by at least 50%.\r\nZero emission\r\nAchieving â€œzero emissionâ€ of carbon will require a transition of proportions, ranging from the production of new fuels to the construction of ships with cleaner engines, the cost of which is estimated at 1 trillion dollars according to calculations of the Getting to Zero Coalition , an organization of 90 companies committed to reducing the effects of climate change.\r\nThe report highlights that halving ship emissions by 2050 will involve annual investments of between 50 and 70 billion dollars for the next 20 years.\r\nThe total \"decarbonization\" of the merchant fleet will require investments of up to US $ 400,000 million over the next 20 years.', 'aprojects-news-891.jpg', 0, '2020-01-25 01:02:52'),
(35, 24, 'January', 'Ship & Bunker', 'Coronavirus May Cause \'Short-Term Headwinds\' for Tanker Market: Analyst', ' The consultancy cited the SARS epidemic in 2003 in analysing the potential impact on the tanker market if the virus spreads further. ', 'aprojects-news-890.jpg', 0, '2020-01-25 01:07:04'),
(36, 27, 'January', 'Trade News ', 'CSAV leaves the vehicle business to focus only on containers', 'The Chilean maritime CSAV (South American Steam Company), decided to leave the vehicle transport and rolling cargo segment.\r\n\r\nCSAV, which recently increased its shareholding by 30% in the German shipping company Hapag-Lloyd, set aside the Ro-Ro business during the first half of the year, according to the specialized site Splash247.\r\n\r\nAccording to the publication, management made the decision to concentrate fully on the container business.\r\n\r\nCSAV has been reducing its exposure in the Ro-Ro segment in recent years and currently has only two such vessels in operations, chartered to Zodiac Maritime.  ', 'aprojects-news-889.jpg', 0, '2020-02-01 15:48:28'),
(37, 28, 'January', 'Trade News ', 'The dredging positioned Ecuador in the club of ports suitable for 14,000 TEU ships', 'Ecuador took another step to position itself in global supply chains as an alternative on the west coast of South America.\r\n\r\nLast week, Guayaquil was one of the Pacific ports that proved to be in a position to receive the largest vessel that so far stood at ports on the west coast: the APL Esplanade, 368 meters long and 52 wide.\r\n\r\nThe record entry for Ecuador was not only possible due to the extension of the pier carried out by the Port Terminal of Guayaquil (TPG), but also for the opening, deepening and maintenance works of the 93 km long entrance channel, carried out in 2019 by the Belgian company Jan de Nul.  \r\n\r\nDraft\r\n\r\nThe Esplanade entered with a draft of 10.5 meters. Until a year ago, the depth limit was 9.75 meters, which made the entry of this 14,000 TEU vessel, which connects services between Asia and the Americas, unfeasible.\r\n\r\nAt the beginning of 2019, the dredging of the Los Goles pass was tendered in Ecuador, a rocky fund whose opening was concessioned to Jan de Nul, also responsible for 25 years of channel maintenance, an investment of US $ 100 million on behalf of the concessionaire Recover with toll collection.\r\n\r\nSources from the Belgian company highlighted in dialogue with Trade News that the dredging \"was done in record time.\"\r\n\r\nâ€œBetween January and October 2019, what had to be done within two years was achieved. That is, the opening and a depth of 12.5 meters, â€they said.', 'aprojects-news-888.jpg', 0, '2020-02-01 15:53:08'),
(38, 29, 'January', 'Trade News ', 'The WTO earns two extra lives', 'The president of the United States and the Director General of the WTO held a meeting of about 45 minutes.\r\n\r\n\"It was mostly an explanatory talk in which AzevÃªdo told Trump what the WTO is and what it does,\" said a source working in Geneva.\r\n\r\nInformal treat\r\nWith the same informality with which the meeting was organized, Trump invited the Brazilian diplomat to participate in the press conference he would give next.\r\n\r\nThe US president did not miss the opportunity to criticize the agency. Referring to the reform he is promoting, he said they are discussing something \"drastic\" since the WTO \"has been very unfair to the US. for many, many years. â€\r\n\r\nâ€œWe are talking about a completely new structure to reach agreements. We have to do something, â€he said before commenting that AzevÃªdo will travel to the US For the negotiations.  ', 'aprojects-news-887.jpg', 0, '2020-02-01 15:55:32'),
(39, 29, 'January', 'Trade News ', 'Climate change exists and is paid with lives and money', 'The 2019 almanac of climate change is tremendous. Tremendously expensive. It is paid with money, but also with lives.\r\n\r\nAs Tanya Steele, executive director of WWF United Kingdom (World Wide Fund for Nature) warned, we are the first generation to know that we are destroying our planet and the last to do something about it.\r\n\r\nSome signs seem encouraging. For example, that at the Annual Meeting of the World Economic Forum (WEF) held in Davos, Switzerland, until tomorrow, the issue is one of the central issues.\r\n\r\nFor three days, in the middle of the Alps, the call brings together more than 3000 world leaders in politics, government, civil society, academia, arts and culture, and the media.\r\n\r\nThe president of the United States, Donald Trump, and the Swedish activist Greta Thunberg crossed this week.  ', 'aprojects-news-886.jpg', 0, '2020-02-01 16:01:39');

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
(14, 2, 'Diego ', 'chukobalverde@gmail.com', 'muy bueno los comentarios\\r\\n', '2020-02-22 07:51:56'),
(15, 2, 'Nilda  ', 'danielkvaldez2@gmail.com', 'hola muy buena', '2020-02-22 07:52:32'),
(61, 1, 'Alberto', 'chukobalverde@gmail.com', 'esta bueno', '2020-02-22 07:39:27'),
(63, 2, 'Alberto ', 'chukobalverde@gmail.com', 'muy lindo', '2020-02-22 11:04:26'),
(64, 1, 'Nilda  ', 'danielkvaldez2@gmail.com', 'muy bueno', '2020-02-22 11:07:08'),
(65, 1, 'Alberto ', 'chukobalverde@gmail.com', 'la sigo leyendo', '2020-02-22 11:38:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_blog_list`
--

CREATE TABLE `tbl_blog_list` (
  `id_blog` int(11) NOT NULL,
  `titulo_blog` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `posted_blog` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `foto_blog` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `text_blog` text COLLATE utf8_spanish_ci NOT NULL,
  `date_blog` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tbl_blog_list`
--

INSERT INTO `tbl_blog_list` (`id_blog`, `titulo_blog`, `posted_blog`, `foto_blog`, `text_blog`, `date_blog`) VALUES
(1, 'HOPE OR UTOPIA', 'Diego Balverde', 'foto-blog-001.jpg', 'About 7 years ago I started a report to rebuild a Dead Port and give it an innovative, logical development. For all this I prepared myself with the best in their subjects and take note, I asked, I asked, I took it to scale, I even studied the probabilities of each of my hypotheses. This led me to a conclusion that the recruitment of information was important, relevant and with a potential for improvement. That\'s why I started working on how an Intelligent Port would be, I called it ... without knowing that there were already people who had established this terminology and even work methodology. Finally, through a book that many people helped me complete, I proposed the change with reliable statistical data and previously checked studies that provided accurate data on how to carry them out, development costs and estimated profits. To that I added the presentation of the book in several provinces and conferences to which I was invited .. all in pursuit of the growth of the Port that saw me being born and was practically managed by people with the motor and intellectual capacity of a kindergarten child of the smallest room (without pretending to offend the sweet children with so much desire to learn to the contrary of these infamous public workers armored in their posts without having even been communicated because they occupy it). In each site that I visited, I was enriched both in knowledge and a walk back through the university. It was great!!. From there a new world before me, of offers for the WORLD that demanded from our COUNTRIES, so many products. Visit more than 100 productive sites to choose 40, 40 products that are useful for those who touch our Ports. Doing a study in conjunction with a sociologist about MIGRATIONS in our COUNTRY and its crops, Experts in Ports (of the most important in the WORLD), elite engineers in each sector and economists with extensive knowledge in each of the areas to be developed , with enough experience in them. All this gave us an expertiz on the field of Foreign Trade A vital point for growth. \"KNOW WHAT WE HAVE TO SELL TO THOSE WHO KNOW THAT THEY VISIT US\". That\'s why after working with professionals in the area and bringing together industry leaders to boost growth, we find this cluster of inoperantes without a compass. What neither dumb nor lazy took the most superfluous idea and tried to do something .. something is the propitious knowledge that corresponds to the question. They were so incompetent and careless that they did not ask for help and took the risk of doing it as the old saying \"tie it with wire\" says. This happened in the place that before this study were thinking of entering boats of 12 meters in length or making a city in the port with all the inclemencies against it especially environmental ... but more important shortening what we promoted with the growth of SMART PORT that we offered. To all this in record time in 140 years of stagnation, they moved that unknown muscle called gluteus so that in 15 days with my idea they do something similar to the mamarracho that I was painting a work of art. Without more ... I leave with me cognitive synthesis about the sad way of stealing an idea. This synthesis is accompanied by a painting made by @ marianoh22o what shows all the lamebotas that Goliath had in the village hanging from a mate (his inseparable friend), trying to eat from above like the giraffes. Between hope and utopia .. I prefer HOPE because it is not a minor difference: utopia is prefabricated, it is a model of instructions, while HOPE is a territory to be built. Therefore, it requires the meeting of wills who still do not know what they propose and what they must do to get out of a world dominated by FINANCE, a political class that empties the language of meaning, together with a group of paid applauds like a Mexican sitcom full of comfortable and common places. I keep waiting for those QUESTIONS wisely guided (by trained people that do not exist), to find possible paths to that HOPE that can take the WORLD out of the DEMEMORITY and the FALSE MESSAGES of the ALWAYS explorers.', '2020-02-21 21:37:07'),
(2, 'Port Of Long Beach Witnesses ', 'Diego Balverde', 'foto-blog-002.jpg', '  Cargo volume was down slightly in January at the Port of Long Beach, compared to the same month in 2019.\r\nTerminal operators and dockworkers moved 626,829 twenty-foot equivalent units (TEUs) last month, down 4.6% compared to January 2019. Imports decreased 4.3% to 309,961 TEUs, while exports dropped 7.4% to 108,624 TEUs. Empty containers sent overseas declined 3.7% to 208,244 TEUs.\r\nWe are confident that we will grow cargo volume and market share by working together with our industry stakeholders,” said Long Beach Harbor Commission President Bonnie Lowenthal. “We remain focused on our new bridge opening later this year, a $1 billion investment in rail projects over the next decade and other projects that will deliver cargo quickly and efficiently', '2020-02-21 21:39:56');

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
(1, 'Beef cube-roll', 'Made in ,,,', 'KGR', 'Bife ancho s/h', 11.00, '1000', 'Bife-ancho.jpg', 'Bife-ancho.jpg', 1, 0, 0, 'Daniel Valdez'),
(2, 'Beef eye-rib steak', 'Made in ', 'KGR', 'Bife ancho cortado c/h', 8.00, '1000', 'Bife-ancho-cortado.jpg', 'Bife-ancho-cortado.jpg', 1, 0, 0, 'Daniel Valdez'),
(3, 'Beef flank', 'Made in ,,,', 'KGR', 'Vacio vacuno', 8.00, '1000', 'Vacio-vacuno.jpg', 'Vacio-vacuno.jpg', 1, 0, 0, ''),
(6, 'Beef knuckles cutted', 'Made in ,,,', 'KGR', 'Osobuco cortado', 3.00, '1000', 'Osobuco-cortado.jpg', 'Osobuco-cortado.jpg', 1, 0, 0, ''),
(8, 'Beef minced', 'Made in ,,,', 'KGR', 'Picada vacuna', 5.00, '1000', 'Picada-vacuna.jpg', 'Picada-vacuna.jpg', 1, 0, 0, ''),
(10, 'Beef ribs (asado)', 'Made in ,,,', 'KGR', 'Asado vacuno', 8.00, '1000', 'Asado-vacuno.jpg', 'Asado-vacuno.jpg', 1, 0, 0, ''),
(11, 'Beef rose meat', 'Made in ,,,', 'KGR', 'Matambre vacuno', 8.00, '1000', 'Matambre-vacuno.jpg', 'Matambre-vacuno.jpg', 1, 0, 0, ''),
(12, 'Beef shoulder b/less', 'Made in ,,,', 'KGR', 'Paleta vacuna', 6.00, '1000', 'Paleta-vacuna.jpg', 'Paleta-vacuna.jpg', 1, 0, 0, ''),
(13, 'Beef striploin b/less', 'Made in ,,,', 'KGR', 'Bife de chorizo', 10.00, '1000', 'Bife-de-chorizo.jpg', 'Bife-de-chorizo.jpg', 1, 0, 0, ''),
(14, 'Beef tenderloin', 'Made in ,,,', 'KGR', 'Lomo vacuno', 13.00, '1000', 'Lomo-vacuno.jpg', 'Lomo-vacuno.jpg', 1, 0, 0, ''),
(15, 'Beef thik-flank', 'Made in ,,,', 'KGR', 'Bola de lomo entera', 9.00, '1000', 'Bola-de-lomo-entera.jpg', 'Bola-de-lomo-entera.jpg', 1, 0, 0, ''),
(16, 'Beef tongue', 'Made in ,,,', 'KGR', 'Lengua vacuna', 7.00, '1000', 'Lengua-vacuna.jpg', 'Lengua-vacuna.jpg', 1, 0, 0, ''),
(17, 'Beef topside ', 'Made in ,,,', 'KGR', 'Nalga vacuna', 9.00, '1000', 'Nalga-vacuna.jpg', 'Nalga-vacuna.jpg', 1, 0, 0, ''),
(18, 'Pork belly meat b/less', 'Made in ,,,', 'KGR', 'Panceta cerdo fresca', 7.00, '1000', 'Panceta-cerdo-fresca.jpg', 'Panceta-cerdo-fresca.jpg', 1, 0, 0, ''),
(19, 'Pork knuckles', 'Made in ,,,', 'KGR', 'Codillo de cerdo', 3.00, '1000', 'Codillo-de-cerdo.jpg', 'Codillo-de-cerdo.jpg', 1, 0, 0, ''),
(20, 'Pork loin bone-in (chops)', 'Made in ,,,', 'KGR', 'Chuletas de cerdo', 6.00, '1000', 'Chuletas-de-cerdo.jpg', 'Chuletas-de-cerdo.jpg', 1, 0, 0, ''),
(21, 'Pork neck boneless', 'Made in ,,,', 'KGR', 'Bondiola de cerdo', 8.00, '1000', 'Bondiola-de-cerdo.jpg', 'Bondiola-de-cerdo.jpg', 1, 0, 0, ''),
(22, 'Pork spare-ribs', 'Made in ,,,', 'KGR', 'Costillar cerdo-pecho ', 6.00, '1000', 'Costillar-cerdo-pecho.jpg', 'Costillar-cerdo-pecho.jpg', 1, 0, 0, ''),
(23, 'Pork tenderloin', 'Made in ,,,', 'KGR', 'Solomillo de cerdo', 9.00, '1000', 'Solomillo-cerdo.jpg', 'Solomillo-cerdo.jpg', 1, 0, 0, ''),
(24, 'Pork trotters', 'Made in ,,,', 'KGR', 'Patitas de cerdo', 1.00, '1000', 'Patitas-de-cerdo.jpg', 'Patitas-de-cerdo.jpg', 1, 0, 0, ''),
(25, 'Suckling Pig 8-10kgr', 'Made in ,,,', 'KGR', 'Lechon entero 8-10kgr - 5X', 8.00, '1000', 'Lechon-entero-8-10kgr.jpg', 'Lechon-entero-8-10kgr.jpg', 1, 0, 0, ''),
(26, 'Lamb whole 12-15kgr', 'Made in ,,,', 'KGR', 'Cordero entero 12-15kg', 9.00, '1000', 'Cordero-entero-12-15kg.jpg', 'Cordero-entero-12-15kg.jpg', 1, 0, 0, ''),
(27, 'Pork sausages, chorizo', 'Made in ,,,', 'KGR', 'Chorizo de cerdo', 6.00, '1000', 'Chorizo-de-cerdo.jpg', 'Chorizo-de-cerdo.jpg', 2, 0, 0, ''),
(28, 'Pork sausages, salchicha criolla', 'Made in ,,,', 'KGR', 'Salchicha criolla', 7.00, '1000', 'Salchicha-criolla.jpg', 'Salchicha-criolla.jpg', 2, 0, 0, ''),
(29, 'Blood sausages', 'Made in ,,,', 'KGR', 'Morcilla vasca', 6.00, '1000', 'Morcilla-vasca.jpg', 'Morcilla-vasca.jpg', 2, 0, 0, ''),
(30, 'Spanish sausages raw', 'Made in ,,,', 'KGR', 'Chorizo colorado fresco', 9.00, '1000', 'Chorizo-colorado-fresco.jpg', 'Chorizo-colorado-fresco.jpg', 2, 0, 0, ''),
(31, 'Cooked ham', 'Made in ,,,', 'KGR', 'Jamon cocido Paladini', 8.00, '1000', 'Jamon-cocido-Paladini.jpg', 'Jamon-cocido-Paladini.jpg', 2, 0, 0, ''),
(32, 'Liverpaste leberwurst 250g', 'Made in ,,,', 'PCE', 'Leberwurst 250grm', 1.00, '1000', 'leberwursty250g.jpg', 'leberwursty250g.jpg', 2, 0, 0, ''),
(33, 'Smoked Ham', 'Made in ,,,', 'KGR', 'Lomito ahumado', 8.00, '1000', 'Lomito-ahumado.jpg', 'Lomito-ahumado.jpg', 2, 0, 0, ''),
(34, 'Mortadela Bologna', 'Made in ,,,', 'KGR', 'Mortadela bologna ', 6.00, '1000', 'Mortadela-bologna.jpg', 'Mortadela-bologna.jpg', 2, 0, 0, ''),
(35, 'Bacon smoked streaky ', 'Made in ,,,', 'KGR', 'Panceta ahumada entera', 11.00, '1000', 'Panceta-ahumada-entera.jpg', 'Panceta-ahumada-entera.jpg', 2, 0, 0, ''),
(36, 'Bacon smoked sliced', 'Made in ,,,', 'KGR', 'Panceta ahumada feteada', 13.00, '1000', 'Panceta-ahumada-feteada.jpg', 'Panceta-ahumada-feteada.jpg', 2, 0, 0, ''),
(37, 'Smoked sausage frankfurt', 'Made in ,,,', 'KGR', 'Salchicha ahumada ', 9.00, '1000', 'Salchicha-ahumada.jpg', 'Salchicha-ahumada.jpg', 2, 0, 0, ''),
(38, 'Bologna sausage w/ham 2,5kg', 'Made in ,,,', 'KGR', 'Salchichon con jamon 2,5kgr', 5.00, '1000', 'Salchichon-con-jamon.jpg', 'Salchichon-con-jamon.jpg', 2, 0, 0, ''),
(39, 'Bologna sausage w/pepper 2,5kg', 'Made in ,,,', 'KGR', 'Salchichon primavera 2,5kgr', 5.00, '1000', 'Salchichon-primavera.jpg', 'Salchichon-primavera.jpg', 2, 0, 0, ''),
(40, 'Chicken breast boneless', 'Made in ,,,', 'KGR', 'Suprema de pollo s/h', 4.00, '1000', 'Suprema-de-pollo.jpg', 'Suprema-de-pollo.jpg', 3, 0, 0, ''),
(41, 'Chicken drumsticks', 'Made in ,,,', 'KGR', 'Pernil de pollo', 3.00, '1000', 'Pernil-de-pollo.jpg', 'Pernil-de-pollo.jpg', 3, 0, 0, ''),
(42, 'Chicken leg quarter', 'Made in ,,,', 'KGR', 'Pata Muslo de pollo', 2.00, '1000', 'Pata-muslo-de-pollo.jpg', 'Pata-muslo-de-pollo.jpg', 3, 0, 0, ''),
(43, 'Chicken whole', 'Made in ,,,', 'KGR', 'Pollo entero eviscerado', 2.00, '1000', 'Pollo-entero-eviscerado.jpg', 'Pollo-entero-eviscerado.jpg', 3, 0, 0, ''),
(44, 'Chicken wings', 'Made in ,,,', 'KGR', 'Alas de pollo', 2.00, '1000', 'Alas-de-pollo.jpg', 'Alas-de-pollo.jpg', 3, 0, 0, ''),
(45, 'Cod fish fillet', 'Made in ,,,', 'KGR', 'Abadejo fillet', 9.00, '1000', 'Abadejo-filet-congelado.jpg', 'Abadejo-filet-congelado.jpg', 4, 0, 0, ''),
(46, 'Fish sticks', 'Made in ,,,', 'KGR', 'Bastones pescado rebozados', 3.00, '1000', 'Bastones-pescado-rebozados.jpg', 'Bastones-pescado-rebozados.jpg', 4, 0, 0, ''),
(47, 'Fish local merluza fillet', 'Made in ,,,', 'KGR', 'Merluza fillet', 4.00, '1000', 'merluza-filetes-sin-piel.jpg', 'merluza-filetes-sin-piel.jpg', 4, 0, 0, ''),
(48, 'Crab-sticks- surimi', 'Made in ,,,', 'KGR', 'Palito de oceano- kanikama', 8.00, '1000', 'Palito-de-oceano-kanikama.jpg', 'Palito-de-oceano-kanikama.jpg', 4, 0, 0, ''),
(49, 'Prawns ', 'Made in ,,,', 'KGR', 'Langostino ', 10.00, '1000', 'Langostino.jpg', 'Langostino.jpg', 4, 0, 0, ''),
(51, 'Squid clean tubes', 'Made in ,,,', 'KGR', 'Calamar tubo', 13.00, '1000', 'Calamar-tubo.jpg', 'Calamar-tubo.jpg', 4, 0, 0, ''),
(52, 'Squid whole', 'Made in ,,,', 'KGR', 'Calamar entero', 7.00, '1000', 'Calamar-entero.jpg', 'Calamar-entero.jpg', 4, 0, 0, ''),
(53, 'Ice cream conogol/cornetto', 'Made in ,,,', 'PCE', 'Helado conogol', 1.00, '1000', 'Helado-conogol.jpg', 'Helado-conogol.jpg', 5, 0, 0, ''),
(54, 'Ice cream in cup indiv', 'Made in ,,,', 'PCE', 'Helado sin parar', 1.00, '1000', 'Helado-sin-parar.jpg', 'Helado-sin-parar.jpg', 5, 0, 0, ''),
(55, 'Ice cream luxor cornetto', 'Made in ,,,', 'PCE', 'Helado luxor', 1.00, '1000', 'Helado-luxor.jpg', 'Helado-luxor.jpg', 5, 0, 0, ''),
(56, 'Ice cream assorted 1,5kgr', 'Made in ,,,', 'PCE', 'Helado tricolor surtido 1,5kgr', 7.00, '1000', 'Helado-tricolor.jpg', 'Helado-tricolor.jpg', 5, 0, 0, ''),
(57, 'Ice cream mega/magnum', 'Made in ,,,', 'PCE', 'Helado mega', 1.00, '1000', 'Helado-mega.jpg', 'Helado-mega.jpg', 5, 0, 0, ''),
(58, 'Brocolli frozen', 'Made in ,,,', 'KGR', 'Brocoli congelado', 4.00, '1000', 'Brocoli-congelado.jpg', 'Brocoli-congelado.jpg', 6, 0, 0, ''),
(59, 'Chard frozen', 'Made in ,,,', 'KGR', 'Acelga congelada', 3.00, '1000', 'Acelga-congelada.jpg', 'Acelga-congelada.jpg', 6, 0, 0, ''),
(60, 'Corn kernells frozen', 'Made in ,,,', 'KGR', 'Choclo granos congelado', 5.00, '1000', 'Choclo-granos-congelado.jpg', 'Choclo-granos-congelado.jpg', 6, 0, 0, ''),
(61, 'French beans frozen', 'Made in ,,,', 'KGR', 'Chaucha cortada cong', 6.00, '1000', 'Chaucha-cortada-congelada.jpg', 'Chaucha-cortada-congelada.jpg', 6, 0, 0, ''),
(62, 'French fries', 'Made in ,,,', 'KGR', 'Papas baston congeladas', 3.00, '1000', 'Papas-baston-congeladas.jpg', 'Papas-baston-congeladas.jpg', 6, 0, 0, ''),
(63, 'Green peas frozen', 'Made in ,,,', 'KGR', 'Arvejas congeladas', 4.00, '1000', 'Arvejas-congeladas.jpg', 'Arvejas-congeladas.jpg', 6, 0, 0, ''),
(64, 'Mix peas/carrots/pot frozen', 'Made in ,,,', 'KGR', 'Mix jardinera congelado', 5.00, '1000', 'Mix-jardinera-congelado.jpg', 'Mix-jardinera-congelado.jpg', 6, 0, 0, ''),
(65, 'Mix vegetables frozen', 'Made in ,,,', 'KGR', 'Mix primavera congelado', 5.00, '1000', 'Mix-primavera-congelado.jpg', 'Mix-primavera-congelado.jpg', 6, 0, 0, ''),
(66, 'Potato balls/croquettes frozen', 'Made in ,,,', 'KGR', 'Papas noissette congeladas', 5.00, '1000', 'Papas-noissette-congeladas.jpg', 'Papas-noissette-congeladas.jpg', 6, 0, 0, ''),
(67, 'Spinach frozen', 'Made in ,,,', 'KGR', 'Espinaca congelado', 4.00, '1000', 'Espinaca-congelado.jpg', 'Espinaca-congelado.jpg', 6, 0, 0, ''),
(68, 'Spring rolls frozen 10pce/pkt', 'Made in ,,,', 'PKT', 'Rollitos primavera 10und', 2.00, '1000', 'rollito-primavera-10unid.jpg', 'rollito-primavera-10unid.jpg', 6, 0, 0, ''),
(69, 'Bread baguette frozen', 'Made in ,,,', 'KGR', 'Pan Congelado', 2.00, '1000', 'Pan-Congelado.jpg', 'Pan-Congelado.jpg', 7, 0, 0, ''),
(70, 'Croissants frozen', 'Made in ,,,', 'PCE', 'Medialunas congeladas', 0.00, '1000', 'Medialunas-congeladas.jpg', 'Medialunas-congeladas.jpg', 7, 0, 0, ''),
(71, 'Bread white sliced 380grm', 'Made in ,,,', 'PKT', 'Pan molde blanco 380grm', 2.00, '1000', 'Pan-molde-blanco-380grm.jpg', 'Pan-molde-blanco-380grm.jpg', 7, 0, 0, ''),
(72, 'Bread rye wheat sliced 530grm', 'Made in ,,,', 'PKT', 'Pan molde semillado 530grm', 3.00, '1000', 'Pan-molde-semillado.jpg', 'Pan-molde-semillado.jpg', 7, 0, 0, ''),
(73, 'Bread brown sliced 380grm', 'Made in ,,,', 'PKT', 'Pan molde salvado 380grm', 2.00, '1000', 'Pan-molde-salvado-380grm.jpg', 'Pan-molde-salvado-380grm.jpg', 7, 0, 0, ''),
(74, 'Bread sandwich arab 230grm', 'Made in ,,,', 'PKT', 'Pan arabe-tostazos 230grm', 1.00, '1000', 'Pan-arabe-tostazos-230grm.jpg', 'Pan-arabe-tostazos-230grm.jpg', 7, 0, 0, ''),
(75, 'Bread taco-shells', 'Made in ,,,', 'PKT', 'Rapiditas 12und', 2.00, '1000', 'Rapiditas-12und.jpg', 'Rapiditas-12und.jpg', 7, 0, 0, ''),
(76, 'Hamburguer buns 4pce', 'Made in ,,,', 'PKT', 'Pan hamburguesas 4und', 1.00, '1000', 'Pan-hamburguesas-4-unid.jpg', 'Pan-hamburguesas-4-unid.jpg', 7, 0, 0, ''),
(77, 'Hot dog buns 6und', 'Made in ,,,', 'PKT', 'Pan viena panchos 6und', 1.00, '1000', 'Pan-viena-panchos-6und.jpg', 'Pan-viena-panchos-6und.jpg', 7, 0, 0, ''),
(78, 'Piononos 250grm', 'Made in ,,,', 'PKT', 'Piononos 250grm', 1.00, '1000', 'Piononos-250grm.jpg', 'Piononos-250grm.jpg', 7, 0, 0, ''),
(79, 'Pizza bases 2pces', 'Made in ,,,', 'PKT', 'Pre-pizzas 2und', 1.00, '1000', 'Pre-pizzas-2und.jpg', 'Pre-pizzas-2und.jpg', 7, 0, 0, ''),
(80, 'Ravioli 500grm', 'Made in ,,,', 'PKT', 'Ravioles 500grm', 2.00, '1000', 'Ravioles-500grm.jpg', 'Ravioles-500grm.jpg', 7, 0, 0, ''),
(81, 'Fresh eggs', 'Made in ,,,', 'DOZ', 'Huevos frescos', 1.00, '1000', 'huevo-frescos-30un-maple-grande.jpg', 'huevo-frescos-30un-maple-grande.jpg', 9, 0, 0, ''),
(82, 'Milk semi-skimmed l.l. 1ltr', 'Made in ,,,', 'LTR', 'Leche descremada 12x1ltr', 1.00, '1000', 'Leche-descremada-12x1ltr.jpg', 'Leche-descremada-12x1ltr.jpg', 9, 0, 0, ''),
(83, 'Milk whole longlife 1ltr', 'Made in ,,,', 'LTR', 'Leche entera 12x1ltr', 1.00, '1000', 'Leche-entera-12x1ltr.jpg', 'Leche-entera-12x1ltr.jpg', 9, 0, 0, ''),
(84, 'Margarine 500grm', 'Made in ,,,', 'PKT', 'Margarina 500grm', 3.00, '1000', 'Margarina-500grm.jpg', 'Margarina-500grm.jpg', 9, 0, 0, ''),
(85, 'Cream long life 200ml', 'Made in ,,,', 'PCE', 'Crema larga vida 200ml', 1.00, '1000', 'Crema-de-leche-baja.jpg', 'Crema-de-leche-baja.jpg', 9, 0, 0, ''),
(86, 'Yoghurt fruit 125grm', 'Made in ,,,', 'CUP', 'Yoghurt fruta 125grm', 0.00, '1000', 'YoghurtFruta125grm.jpg', 'YoghurtFruta125grm.jpg', 9, 0, 0, ''),
(87, 'Yoghurt vanilla 190grm', 'Made in ,,,', 'CUP', 'Yoghurt vainilla 190grm', 0.00, '1000', 'YogurVainilla190grs.jpg', 'YogurVainilla190grs.jpg', 9, 0, 0, ''),
(88, 'Yoghurt with fruits 150grm', 'Made in ,,,', 'CUP', 'Yoghurt con frutas 150grm', 0.00, '1000', 'YoghurtConFrutas150grm.jpg', 'YoghurtConFrutas150grm.jpg', 9, 0, 0, ''),
(89, 'Yoghurt drinks 1ltr', 'Made in ,,,', 'LTR', 'Yoghurt bebible 1ltr tetrapack', 2.00, '1000', 'YogurtBebible1litroTatrepack.jpg', 'YogurtBebible1litroTatrepack.jpg', 9, 0, 0, ''),
(90, 'Yoghurt Natural 200grm', 'Made in ,,,', 'CUP', 'Yoghurt Natural 190grm', 1.00, '1000', 'YoghurtNatural190grm.jpg', 'YoghurtNatural190grm.jpg', 9, 0, 0, ''),
(91, 'Cheese blue', 'Made in ,,,', 'KGR', 'Queso roquefort', 11.00, '1000', 'queso-roquefort.jpg', 'queso-roquefort.jpg', 9, 0, 0, ''),
(92, 'Cheese edam/holanda', 'Made in ,,,', 'KGR', 'Queso holanda', 11.00, '1000', 'Queso-holanda.jpg', 'Queso-holanda.jpg', 9, 0, 0, ''),
(93, 'Cheese gouda', 'Made in ,,,', 'KGR', 'Queso gouda', 13.00, '1000', 'queso-gouda.jpg', 'queso-gouda.jpg', 9, 0, 0, ''),
(94, 'Cheese tybo (for slices)', 'Made in ,,,', 'KGR', 'Queso tybo maquina', 9.00, '1000', 'Queso-tybo-maquina.jpg', 'Queso-tybo-maquina.jpg', 9, 0, 0, ''),
(95, 'Cheese mozzarella', 'Made in ,,,', 'KGR', 'Queso mozzarella', 9.00, '1000', 'Queso-mozzarella.jpg', 'Queso-mozzarella.jpg', 9, 0, 0, ''),
(96, 'Chesse grated 150grm', 'Made in ,,,', 'PKT', 'Queso rallado paulina-veron', 3.00, '1000', 'Queso-rallado-paulina.jpg', 'Queso-rallado-paulina.jpg', 9, 0, 0, ''),
(97, 'Cheese Ricota (soft) 500grm', 'Made in ,,,', 'PKT', 'Ricota suave seren 500grm', 2.00, '1000', 'Ricota-500grm.jpg', 'Ricota-500grm.jpg', 9, 0, 0, ''),
(98, 'Cheese port-salut', 'Made in ,,,', 'KGR', 'Queso port-salut', 9.00, '1000', 'Queso-port-salut.jpg', 'Queso-port-salut.jpg', 9, 0, 0, ''),
(99, 'Cheese philadelphia local 200g', 'Made in ,,,', 'JAR', 'Queso finlandia 200grm', 1.00, '1000', 'Queso-finlandia-200grm.jpg', 'Queso-finlandia-200grm.jpg', 9, 0, 0, ''),
(100, 'Sour cream local', 'Made in ,,,', 'JAR', 'Queso blanco 300grm', 2.00, '1000', 'Queso-blanco-300grm.jpg', 'Queso-blanco-300grm.jpg', 9, 0, 0, ''),
(101, 'Cheese spreads 190grm', 'Made in ,,,', 'JAR', 'Queso untable 190grm', 1.00, '1000', 'Queso-untable-190grm.jpg', 'Queso-untable-190grm.jpg', 9, 0, 0, ''),
(102, 'Apple Juice 1ltr', 'Made in ,,,', 'LTR', 'Jugo manzana 1ltr ', 1.00, '1000', 'JugoManzana.jpg', 'JugoManzana.jpg', 10, 0, 0, ''),
(103, 'Orange juice 1ltr', 'Made in ,,,', 'LTR', 'Jugo naranja 1ltr ', 1.00, '1000', 'jugoNaranja.jpg', 'jugoNaranja.jpg', 10, 0, 0, ''),
(104, 'Multi-fruit juice 1ltr', 'Made in ,,,', 'LTR', 'Jugo multifruta 1ltr ', 1.00, '1000', 'jugoMultifruta.jpg', 'jugoMultifruta.jpg', 10, 0, 0, ''),
(105, 'Peaches juice 1ltr', 'Made in ,,,', 'LTR', 'Jugo durazno 1ltr ', 1.00, '1000', 'jugoDurazno.jpg', 'jugoDurazno.jpg', 10, 0, 0, ''),
(106, 'Mineral Water 6x1,5ltr', 'Made in ,,,', 'CSE', 'Agua mineral 6x1,5ltr', 4.00, '1000', 'Agua-mineral-6x15ltr.jpg', 'Agua-mineral-6x15ltr.jpg', 10, 0, 0, ''),
(107, 'Sparkling Water 6x1,5ltr', 'Made in ,,,', 'CSE', 'Agua mineral c-gas 6x1,5ltr', 5.00, '1000', 'Agua-mineralconGas6x15ltr.jpg', 'Agua-mineralconGas6x15ltr.jpg', 10, 0, 0, ''),
(108, 'Coca cola 12x500ml', 'Made in ,,,', 'CSE', 'Coca cola 12x500ml', 13.00, '1000', 'CocaCola12x500ml.jpg', 'CocaCola12x500ml.jpg', 10, 0, 0, ''),
(109, 'Coca cola zero 12x500ml', 'Made in ,,,', 'CSE', 'Coca cola zero 12x500ml', 13.00, '1000', 'CocaColaZero12x500ml.jpg', 'CocaColaZero12x500ml.jpg', 10, 0, 0, ''),
(111, 'Sprite / Sevenup 12x500ml', 'Made in ,,,', 'CSE', 'Sprite -Sevenup 12x500ml', 13.00, '1000', 'Sprite-Sevenup12x500ml.jpg', 'Sprite-Sevenup12x500ml.jpg', 10, 0, 0, ''),
(112, 'Fanta orange 12x500ml', 'Made in ,,,', 'CSE', 'Fanta 12x500ml', 13.00, '1000', 'Fanta12x500ml.jpg', 'Fanta12x500ml.jpg', 10, 0, 0, ''),
(113, 'Tonic water 12x500ml', 'Made in ,,,', 'CSE', 'Agua Tonica 12x500ml', 13.00, '1000', 'AguaTonica12x500ml.jpg', 'AguaTonica12x500ml.jpg', 10, 0, 0, ''),
(114, 'Oil in spray 120grm', 'Made in ,,,', 'BTL', 'Aceite aerosol 120grm', 2.00, '1000', 'AceiteAerosol120grm.jpg', 'AceiteAerosol120grm.jpg', 11, 0, 0, ''),
(115, 'Oil sunflower 900ml', 'Made in ,,,', 'BTL', 'Aceite girasol 900ml', 2.00, '1000', 'AceiteGirasol900ml.jpg', 'AceiteGirasol900ml.jpg', 11, 0, 0, ''),
(116, 'Oil olive 500ml', 'Made in ,,,', 'BTL', 'Aceite oliva comun 500ml', 2.00, '1000', 'AceiteOlivaComun500ml.jpg', 'AceiteOlivaComun500ml.jpg', 11, 0, 0, ''),
(117, 'Vinegar balsamic 250ml', 'Made in ,,,', 'BTL', 'Aceto balsamico 250ml', 2.00, '1000', 'AcetoBalsamico250ml.jpg', 'AcetoBalsamico250ml.jpg', 11, 0, 0, ''),
(118, 'Juice concentrated lemon 500ml', 'Made in ,,,', 'BTL', 'Jugo limon minerva 500ml', 2.00, '1000', 'JugoLlimonMinerva500ml.jpg', 'JugoLlimonMinerva500ml.jpg', 11, 0, 0, ''),
(119, 'Vinegar white 1ltr', 'Made in ,,,', 'LTR', 'Vinagre alcohol 1ltr', 1.00, '1000', 'VinagreAlcohol1litro.jpg', 'VinagreAlcohol1litro.jpg', 11, 0, 0, ''),
(120, 'Vinegar apple 500ml', 'Made in ,,,', 'BTL', 'Vinagre manzana 500ml', 1.00, '1000', 'VinagreManzana500ml.jpg', 'VinagreManzana500ml.jpg', 11, 0, 0, ''),
(121, 'Salt table 500grm', 'Made in ,,,', 'PKT', 'Sal fina 500grm', 0.00, '1000', 'SalFina500grm.jpg', 'SalFina500grm.jpg', 11, 0, 0, ''),
(122, 'Salt cooking 1kgr', 'Made in ,,,', 'PKT', 'Sal gruesa 1kgr', 0.00, '1000', 'SalGruesa1kgr.jpg', 'SalGruesa1kgr.jpg', 11, 0, 0, ''),
(123, 'Rice long grain', 'Made in ,,,', 'KGR', 'Arroz largo fino 1kgr', 1.00, '1000', 'ArrozLargoFino1kgr.jpg', 'ArrozLargoFino1kgr.jpg', 11, 0, 0, ''),
(124, 'Sugar refinated', 'Made in ,,,', 'KGR', 'Azucar ledesma-chango 1kgr', 1.00, '1000', 'AzucarLedesmaChango1kgr.jpg', 'AzucarLedesmaChango1kgr.jpg', 11, 0, 0, ''),
(125, 'Broth cubes 12is', 'Made in ,,,', 'PKT', 'Caldo knorr 12cub', 1.00, '1000', 'CaldoKnorr12cub.jpg', 'CaldoKnorr12cub.jpg', 11, 0, 0, ''),
(126, 'Artificial sweetener 400 bags', 'Made in ,,,', 'BOX', 'Edulcorante 400sobres', 8.00, '1000', 'Edulcorante400sobres.jpg', 'Edulcorante400sobres.jpg', 11, 0, 0, ''),
(127, 'Flour all porpouse 1kgr', 'Made in ,,,', 'KGR', 'Harina trigo 0000 1kgr', 1.00, '1000', 'Harina-trigo-0000.jpg', 'Harina-trigo-0000.jpg', 11, 0, 0, ''),
(128, 'Bread crumbs ', 'Made in ,,,', 'KGR', 'Rebozador Preferido', 3.00, '1000', 'rebozador-preferido.jpg', 'rebozador-preferido.jpg', 11, 0, 0, ''),
(129, 'Nesquick 360grm', 'Made in ,,,', 'PKT', 'Cacao nesquick x 360 gr', 2.00, '1000', 'cacao-nesquik-360g.jpg', 'cacao-nesquik-360g.jpg', 11, 0, 0, ''),
(130, 'Coffee instant 170grm', 'Made in ,,,', 'BTL', 'Cafe instantaneo 170grm', 5.00, '1000', 'cafe-instantaneo-dolca-clasico-x-170g.jpg', 'cafe-instantaneo-dolca-clasico-x-170g.jpg', 11, 0, 0, ''),
(131, 'Cake mix brownie exq 450grm', 'Made in ,,,', 'PKT', 'Bizcochuelo brownie 450grm', 2.00, '1000', 'Bizcochuelo-brownie450grm.jpg', 'Bizcochuelo-brownie450grm.jpg', 12, 0, 0, ''),
(132, 'Cake mix 540grm', 'Made in ,,,', 'PKT', 'Bizcochuelo exquisita 540grm', 2.00, '1000', 'Bizcochuelo-exquisita-540grm.jpg', 'Bizcochuelo-exquisita-540grm.jpg', 12, 0, 0, ''),
(133, 'Cereal muesli 200grm', 'Made in ,,,', 'PKT', 'Cereal maizena 200grm', 2.00, '1000', 'Cereal-maizena-200grm.jpg', 'Cereal-maizena-200grm.jpg', 12, 0, 0, ''),
(134, 'Cereal fruit/fiber 350grm', 'Made in ,,,', 'PKT', 'Cereal granola 200grm/1,5k', 2.00, '1000', 'Cereal-granola-200grm.jpg', 'Cereal-granola-200grm.jpg', 12, 0, 0, ''),
(135, 'Corn flakes w/sugar 700grm', 'Made in ,,,', 'PKT', 'Cereal Zucaritas 220grm', 2.00, '1000', 'Cereal-Zucaritas-220gr.jpg', 'Cereal-Zucaritas-220gr.jpg', 12, 0, 0, ''),
(136, 'Corn Flakes 200grm', 'Made in ,,,', 'PKT', 'Copos maiz 200grm', 1.00, '1000', 'Copos-maiz-200grm.jpg', 'Copos-maiz-200grm.jpg', 12, 0, 0, ''),
(137, 'Quaker oats 500grm', 'Made in ,,,', 'PKT', 'Avena quaker 400grm', 2.00, '1000', 'Avena-quaker-400grm.jpg', 'Avena-quaker-400grm.jpg', 12, 0, 0, ''),
(138, 'Chocolate aguila 150grm', 'Made in ,,,', 'PCE', 'Chocolate cobert aguila 150grm', 2.00, '1000', 'Chocolate-cobert-aguila-150grm.jpg', 'Chocolate-cobert-aguila-150grm.jpg', 12, 0, 0, ''),
(139, 'Chocolate pastry aguila 150grm', 'Made in ,,,', 'PCE', 'Chocolate taza aguila 150grm', 3.00, '1000', 'Chocolate-taza-aguila-150grm.jpg', 'Chocolate-taza-aguila-150grm.jpg', 12, 0, 0, ''),
(140, 'Creme caramel mix 60grm', 'Made in ,,,', 'PKT', 'Flan polvo exquisita 60grm', 0.00, '1000', 'Flan-polvo-exquisita60grm.jpg', 'Flan-polvo-exquisita60grm.jpg', 12, 0, 0, ''),
(141, 'Gelatine mix 80grm', 'Made in ,,,', 'PKT', 'Gelatina polvo 80grm', 0.00, '1000', 'Gelatina-polvo-80grm.jpg', 'Gelatina-polvo-80grm.jpg', 12, 0, 0, ''),
(142, 'Pudding chocolate mix 90grm', 'Made in ,,,', 'PKT', 'Postre de chocolate 90grm', 0.00, '1000', 'Postre-de-chocolate-90grm.jpg', 'Postre-de-chocolate-90grm.jpg', 12, 0, 0, ''),
(143, 'Pasta linguini', 'Made in ,,,', 'PKT', 'Fideos anchos d.vicente 500g', 2.00, '1000', 'FideosDonVicente.jpg', 'FideosDonVicente.jpg', 12, 0, 0, ''),
(144, 'Pasta elbow maccaroni', 'Made in ,,,', 'PKT', 'Fideos codos 500grm', 1.00, '1000', 'Fideoscodos500grm.jpg', 'Fideoscodos500grm.jpg', 12, 0, 0, ''),
(145, 'Pasta penne-rigatti', 'Made in ,,,', 'PKT', 'Fideos mostachol 500grm', 1.00, '1000', 'FideosMostachol500grm.jpg', 'FideosMostachol500grm.jpg', 12, 0, 0, ''),
(146, 'Tomato ketchup 400grm', 'Made in ,,,', 'BTL', 'Ketchup hellmanns 400grm', 3.00, '1000', 'KetchupHellmanns400grm.jpg', 'KetchupHellmanns400grm.jpg', 12, 0, 0, ''),
(147, 'Mayonnaise 332grm', 'Made in ,,,', 'BTL', 'Mayonesa 332grm', 1.00, '1000', 'Mayonesa332grm.jpg', 'Mayonesa332grm.jpg', 12, 0, 0, ''),
(148, 'Mustard sauce 200grm', 'Made in ,,,', 'JAR', 'Mostaza savora 200grm', 1.00, '1000', 'MostazaSavora200grm.jpg', 'MostazaSavora200grm.jpg', 12, 0, 0, ''),
(149, 'Sauce barbeque 375grm', 'Made in ,,,', 'JAR', 'Salsa barbacoa 375grm', 2.00, '1000', 'SalsaBarbacoa375grm.jpg', 'SalsaBarbacoa375grm.jpg', 12, 0, 0, ''),
(151, 'Honey bee 500grm', 'Made in ,,,', 'JAR', 'Miel abejas 500grm', 2.00, '1000', 'MielAabejas500grm.jpg', 'MielAabejas500grm.jpg', 12, 0, 0, ''),
(152, 'Peanuts extra ', 'Made in ,,,', 'KGR', 'Mani pelado salado', 4.00, '1000', 'Mani-pelado-salado.jpg', 'Mani-pelado-salado.jpg', 12, 0, 0, ''),
(153, 'Apricots dried 1 kg', 'Made in ,,,', 'KGR', 'Orejones de durazno', 8.00, '1000', 'Orejones-durazno.jpg', 'Orejones-durazno.jpg', 12, 0, 0, ''),
(154, 'Raisins 1 kg', 'Made in ,,,', 'KGR', 'Pasas de Uva s/semilla', 5.00, '1000', 'PasasdeUvas-semilla.jpg', 'PasasdeUvas-semilla.jpg', 12, 0, 0, ''),
(155, 'Lentils dry', 'Made in ,,,', 'KGR', 'Lentejas secas ', 2.00, '1000', 'Lentejas-secas.jpg', 'Lentejas-secas.jpg', 12, 0, 0, ''),
(156, 'Beans Alubias', 'Made in ,,,', 'KGR', 'Porotos Alubias', 2.00, '1000', 'Porotos-Alubias.jpg', 'Porotos-Alubias.jpg', 12, 0, 0, ''),
(157, 'Pineapple slices 836grm', 'Made in ,,,', 'TIN', 'Anana mitades 836grm', 2.00, '1000', 'Anana-mitades-836gr.jpg', 'Anana-mitades-836gr.jpg', 13, 0, 0, ''),
(158, 'Fruit cocktail 820grm', 'Made in ,,,', 'TIN', 'Coctel frutas 820grm', 2.00, '1000', 'Coctel-frutas-820grm.jpg', 'Coctel-frutas-820grm.jpg', 13, 0, 0, ''),
(159, 'Peaches halves 820grm', 'Made in ,,,', 'TIN', 'Duraznos mitades 820grm', 1.00, '1000', 'Duraznos-mitades-820grm.jpg', 'Duraznos-mitades-820grm.jpg', 13, 0, 0, ''),
(160, 'Pears halves 820grm', 'Made in ,,,', 'TIN', 'Peras mitades 820grm', 2.00, '1000', 'Peras-mitades-820grm.jpg', 'Peras-mitades-820grm.jpg', 13, 0, 0, ''),
(161, 'Tuna in oil 170grm', 'Made in ,,,', 'TIN', 'Atun aceite 170grm', 1.00, '1000', 'Atun-aceite-170grm.jpg', 'Atun-aceite-170grm.jpg', 13, 0, 0, ''),
(162, 'Tuna in brine 170grm', 'Made in ,,,', 'TIN', 'Atun natural 170grm', 1.00, '1000', 'Atun-natural-170grm.jpg', 'Atun-natural-170grm.jpg', 13, 0, 0, ''),
(163, 'Mackerel in oil 425 g', 'Made in ,,,', 'TIN', 'Caballa en aceite 380grm', 2.00, '1000', 'Caballa-aceite-380grm.jpg', 'Caballa-aceite-380grm.jpg', 13, 0, 0, ''),
(164, 'Mackerel in tomato 425 g', 'Made in ,,,', 'TIN', 'Caballa en tomate 380grm', 2.00, '1000', 'Caballa-tomate-380grm.jpg', 'Caballa-tomate-380grm.jpg', 13, 0, 0, ''),
(165, 'Sardines in oil 125 g', 'Made in ,,,', 'TIN', 'Sardinas en aceite 125grm', 1.00, '1000', 'Sardinas-aceite-125grm.jpg', 'Sardinas-aceite-125grm.jpg', 13, 0, 0, ''),
(166, 'Sardines in tomato 125grm', 'Made in ,,,', 'TIN', 'Sardinas tomate 125grm', 1.00, '1000', 'Sardinas-tomate-125grm.jpg', 'Sardinas-tomate-125grm.jpg', 13, 0, 0, ''),
(167, 'Tomato peeled 400grm', 'Made in ,,,', 'TIN', 'Tomate perita 400grm', 1.00, '1000', 'Tomate-perita-400grm.jpg', 'Tomate-perita-400grm.jpg', 13, 0, 0, ''),
(168, 'Tomato salsify 500grm', 'Made in ,,,', 'TIN', 'Tomate pure 500grm', 0.00, '1000', 'Tomate-pure-500grm.jpg', 'Tomate-pure-500grm.jpg', 13, 0, 0, ''),
(169, 'Corn kernels 350grm', 'Made in ,,,', 'TIN', 'Choclo entero 350grm', 1.00, '1000', 'Choclo-entero-350grm.jpg', 'Choclo-entero-350grm.jpg', 13, 0, 0, ''),
(170, 'Peppers oil 750grm', 'Made in ,,,', 'TIN', 'Morron aceite 750grm', 1.00, '1000', 'Morron-aceite-750grm.jpg', 'Morron-aceite-750grm.jpg', 13, 0, 0, ''),
(171, 'Palm hearts 400grm', 'Made in ,,,', 'TIN', 'Palmitos enteros 400grm', 2.00, '1000', 'Palmitos-enteros-400grm.jpg', 'Palmitos-enteros-400grm.jpg', 13, 0, 0, ''),
(172, 'Crackers sky-flakes 144grm', 'Made in ,,,', 'PKT', 'Galletitas club social 144grm', 2.00, '1000', 'Galletitas-club-social-144grm.jpg', 'Galletitas-club-social-144grm.jpg', 14, 0, 0, ''),
(173, 'Cream crackers 300grm', 'Made in ,,,', 'PKT', 'Galletitas criollitas 300grm', 1.00, '1000', 'Galletitas-criollitas-300gr.jpg', 'Galletitas-criollitas-300gr.jpg', 14, 0, 0, ''),
(174, 'Waffers opera 92grm', 'Made in ,,,', 'PKT', 'Galletitas opera 92grm', 0.00, '1000', 'Galletitas-opera-92grm.jpg', 'Galletitas-opera-92grm.jpg', 14, 0, 0, ''),
(175, 'Cookies chips ahoy 118grm', 'Made in ,,,', 'PKT', 'Galletitas pepitos 118grm', 1.00, '1000', 'Galletitas-pepitos-118grm.jpg', 'Galletitas-pepitos-118grm.jpg', 14, 0, 0, ''),
(176, 'Crackers ritz 125grm', 'Made in ,,,', 'PKT', 'Galletitas rex 125grm', 1.00, '1000', 'Galletitas-rex-125grm.jpg', 'Galletitas-rex-125grm.jpg', 14, 0, 0, ''),
(177, 'Cookies filled-chocolate rumba 120grm', 'Made in ,,,', 'PKT', 'Galletitas rumba 120grm', 0.00, '1000', 'Galletitas-rumba-120grm.jpg', 'Galletitas-rumba-120grm.jpg', 14, 0, 0, ''),
(178, 'Cookies filled-strawb sonrisas 118grm', 'Made in ,,,', 'PKT', 'Galletitas sonrisas 118grm', 0.00, '1000', 'Galletitas-sonrisas-18grm.jpg', 'Galletitas-sonrisas-18grm.jpg', 14, 0, 0, ''),
(179, 'Cookies assorted 400grm', 'Made in ,,,', 'PKT', 'Galletitas surtidas 400grm', 1.00, '1000', 'Galletitas-surtidas-400grm.jpg', 'Galletitas-surtidas-400grm.jpg', 14, 0, 0, ''),
(180, 'Chips lays 105grm', 'Made in ,,,', 'PKT', 'Papas lays 105grm', 1.00, '1000', 'Papas-lays-105grm.jpg', 'Papas-lays-105grm.jpg', 14, 0, 0, ''),
(181, 'Popcorn microwave 90grm', 'Made in ,,,', 'PKT', 'Pochoclos microondas 90grm', 1.00, '1000', 'Pochoclos-microondas-90grm.jpg', 'Pochoclos-microondas-90grm.jpg', 14, 0, 0, '');

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
-- Volcado de datos para la tabla `tbl_ventas`
--

INSERT INTO `tbl_ventas` (`id_ventas`, `nro_venta`, `id_usuarios`, `user_nombre`, `user_direccion`, `user_telefono`, `user_horario`, `user_correo`, `prod_id`, `prod_imagen`, `prod_nombre`, `prod_codigo`, `prod_precio`, `prod_cantidad`, `prod_oferta`, `prod_marca`, `prod_volumen`, `prod_descripcion`, `user_ip`, `user_latitud`, `user_longitud`, `strFecha`, `strHora`, `strEstado`, `strControl`) VALUES
(1, 1, 0, 'Diego Alberto Balverde', 'calle 70 nro 3133', '02262361174', '12', 'chukobalverde@gmail.com', 3, 'Vacio-vacuno.jpg', 'Beef flank', '1-k-0-k-3', 8.00, 6, '0', 'Made in ,,', 'KGR', 'Vacio vacuno', 'Remote REMOTE_ADDR: ::1', '-27.4573182', '-55.859812', '11-02-2020', '17:58:07', 'activo', 'cargar'),
(2, 2, 0, 'Daniel Valdez', 'Francisco De Haro', '02262630155', '12', 'danielkvaldez2@gmail.com', 13, 'Bife-de-chorizo.jpg', 'Beef striploin b/les', '1-k-0-k-13', 10.00, 6, '0', 'Made in ,,', 'KGR', 'Bife de chorizo', 'Remote REMOTE_ADDR: ::1', '-27.4573182', '-55.859812', '11-02-2020', '19:28:30', 'activo', 'cargar'),
(3, 3, 0, 'Daniel Valdez', 'Francisco De Haro', '02262630155', '12', 'danielkvaldez2@gmail.com', 2, 'Bife-ancho-cortado.jpg', 'Beef eye-rib steak', '1-k-0-k-2', 8.00, 6, '0', 'Made in ,,', 'KGR', 'Bife ancho cortado c', '255:343:234:234', '59.34345', '25.534534', '11-02-2020', '20:44:43', 'activo', 'cargar'),
(4, 4, 0, 'Daniel Valdez', 'Francisco De Haro', '02262630155', '12', 'danielkvaldez2@gmail.com', 45, 'Abadejo-filet-congelado.jpg', 'Cod fish fillet', '4-k-0-k-45', 9.00, 6, '0', 'Made in ,,', 'KGR', 'Abadejo fillet', 'Remote REMOTE_ADDR: ::1', '-27.4573182', '-55.859812', '11-02-2020', '20:52:04', 'activo', 'cargar'),
(5, 5, 0, 'Daniel Valdez', 'Francisco De Haro', '02262630155', '12', 'danielkvaldez2@gmail.com', 166, 'Sardinas-tomate-125grm.jpg', 'Sardines in tomato 1', '13-k-0-k-166', 1.00, 12, '0', 'Made in ,,', 'TIN', 'Sardinas tomate 125g', 'Remote REMOTE_ADDR: ::1', '-27.4573182', '-55.859812', '11-02-2020', '20:52:58', 'activo', 'cargar'),
(6, 6, 0, 'Daniel Valdez', 'Francisco De Haro', '02262630155', '333', 'danielkvaldez2@gmail.com', 4, 'Chinchulines-vacunos.jpg', 'Beef instestines', '1-k-0-k-4', 3.00, 6, '0', 'Made in ,,', 'KGR', 'Chinchulines vacunos', 'Remote REMOTE_ADDR: ::1', '-27.457343899999998', '-55.8653543', '12-02-2020', '13:29:09', 'activo', 'cargar'),
(7, 6, 0, 'Daniel Valdez', 'Francisco De Haro', '02262630155', '333', 'danielkvaldez2@gmail.com', 13, 'Bife-de-chorizo.jpg', 'Beef striploin b/les', '1-k-0-k-13', 10.00, 6, '0', 'Made in ,,', 'KGR', 'Bife de chorizo', 'Remote REMOTE_ADDR: ::1', '-27.457343899999998', '-55.8653543', '12-02-2020', '13:29:10', 'activo', 'cargar'),
(8, 7, 0, 'Diego Alberto Balverde', 'calle 70 nro 3133', '02262361174', '333', 'chukobalverde@gmail.com', 3, 'Vacio-vacuno.jpg', 'Beef flank', '1-k-0-k-3', 8.00, 6, '0', 'Made in ,,', 'KGR', 'Vacio vacuno', 'Remote REMOTE_ADDR: ::1', '-27.457343899999998', '-55.8653543', '12-02-2020', '18:11:21', 'activo', 'cargar'),
(9, 8, 0, 'Daniel Valdez', 'Francisco De Haro', '02262630155', '12', 'danielkvaldez2@gmail.com', 4, 'Chinchulines-vacunos.jpg', 'Beef instestines', '1-k-0-k-4', 3.00, 6, '0', 'Made in ,,', 'KGR', 'Chinchulines vacunos', 'Remote REMOTE_ADDR: ::1', '-27.451645499999998', '-55.8653761', '13-02-2020', '14:04:49', 'activo', 'cargar'),
(10, 9, 0, '', '', '', '', '', 3, 'Vacio-vacuno.jpg', 'Beef flank', '1-k-0-k-3', 8.00, 11, '0', 'Made in ,,', 'KGR', 'Vacio vacuno', 'Remote REMOTE_ADDR: ::1', '-27.4565462', '-55.8597903', '03-03-2020', '00:58:25', 'activo', 'cargar'),
(11, 9, 0, '', '', '', '', '', 56, 'Helado-tricolor.jpg', 'Ice cream assorted 1', '5-k-0-k-56', 7.00, 9, '0', 'Made in ,,', 'PCE', 'Helado tricolor surt', 'Remote REMOTE_ADDR: ::1', '-27.4565462', '-55.8597903', '03-03-2020', '00:58:25', 'activo', 'cargar'),
(12, 9, 0, '', '', '', '', '', 46, 'Bastones-pescado-rebozados.jpg', 'Fish sticks', '4-k-0-k-46', 3.00, 24, '0', 'Made in ,,', 'KGR', 'Bastones pescado reb', 'Remote REMOTE_ADDR: ::1', '-27.4565462', '-55.8597903', '03-03-2020', '00:58:26', 'activo', 'cargar'),
(13, 9, 0, '', '', '', '', '', 176, 'Galletitas-rex-125grm.jpg', 'Crackers ritz 125grm', '14-k-0-k-176', 1.00, 6, '0', 'Made in ,,', 'PKT', 'Galletitas rex 125gr', 'Remote REMOTE_ADDR: ::1', '-27.4565462', '-55.8597903', '03-03-2020', '00:58:26', 'activo', 'cargar'),
(14, 9, 0, '', '', '', '', '', 102, 'JugoManzana.jpg', 'Apple Juice 1ltr', '10-k-0-k-102', 1.00, 6, '0', 'Made in ,,', 'LTR', 'Jugo manzana 1ltr ', 'Remote REMOTE_ADDR: ::1', '-27.4565462', '-55.8597903', '03-03-2020', '00:58:26', 'activo', 'cargar'),
(15, 10, 0, '', '', '', '', '', 3, 'Vacio-vacuno.jpg', 'Beef flank', '1-k-0-k-3', 8.00, 6, '0', 'Made in ,,', 'KGR', 'Vacio vacuno', 'Remote REMOTE_ADDR: ::1', '-27.4565462', '-55.8597903', '03-03-2020', '01:01:16', 'activo', 'cargar'),
(16, 11, 0, 'Daniel Valdez', 'Francisco De Haro', '02262630155', '234', 'danielkvaldez2@gmail.com', 6, 'Osobuco-cortado.jpg', 'Beef knuckles cutted', '1-k-0-k-6', 3.00, 6, '0', 'Made in ,,', 'KGR', 'Osobuco cortado', 'Remote REMOTE_ADDR: ::1', '-27.4565462', '-55.8597903', '03-03-2020', '01:06:56', 'activo', 'cargar'),
(17, 12, 0, 'Daniel Valdez', 'Francisco De Haro', '02262630155', '12', 'danielkvaldez2@gmail.com', 44, 'Alas-de-pollo.jpg', 'Chicken wings', '3-k-0-k-44', 2.00, 6, '0', 'Made in ,,', 'KGR', 'Alas de pollo', 'Remote REMOTE_ADDR: ::1', '-27.4565462', '-55.8597903', '03-03-2020', '01:09:55', 'activo', 'cargar'),
(18, 13, 0, 'Diego Alberto Balverde', 'calle 70 nro 3133', '02262361174', '22', 'chukobalverde@gmail.com', 116, 'AceiteOlivaComun500ml.jpg', 'Oil olive 500ml', '11-k-0-k-116', 2.00, 6, '0', 'Made in ,,', 'BTL', 'Aceite oliva comun 5', 'Remote REMOTE_ADDR: ::1', '-27.4565462', '-55.8597903', '03-03-2020', '01:11:50', 'activo', 'cargar'),
(19, 14, 0, 'Nilda b silva', 'Francisco De Haro 5285', 'dsf', 'sd', 'danielkvaldez2@gmail.com', 68, 'rollito-primavera-10unid.jpg', 'Spring rolls frozen ', '6-k-0-k-68', 2.00, 6, '0', 'Made in ,,', 'PKT', 'Rollitos primavera 1', 'Remote REMOTE_ADDR: ::1', '-27.4565462', '-55.8597903', '03-03-2020', '01:28:07', 'activo', 'cargar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `id` int(11) NOT NULL,
  `tipo` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`id`, `tipo`) VALUES
(1, 'Administrador'),
(2, 'Usuario');

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
(17, 'danielkvaldez', '$2y$10$jN7ZEsjEX/gbRxt7lJL4GOlc9jMqlNqSYawmwgCAd/4SsaDJ15Fk6', 'Daniel Valdez', 'danielkvaldez2@gmail.com', '2020-03-02 22:03:13', 1, 'fe6d922ab4bfee3309e57801ab3f5898', '', 0, 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `continente`
--
ALTER TABLE `continente`
  ADD PRIMARY KEY (`id_continent`);

--
-- Indices de la tabla `databaseports`
--
ALTER TABLE `databaseports`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `databaseship`
--
ALTER TABLE `databaseship`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `personas`
--
ALTER TABLE `personas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tbl_blog_comment_list`
--
ALTER TABLE `tbl_blog_comment_list`
  ADD PRIMARY KEY (`id_comment`),
  ADD KEY `id_comment_id_blog` (`id_comment_id_blog`);

--
-- Indices de la tabla `tbl_blog_list`
--
ALTER TABLE `tbl_blog_list`
  ADD PRIMARY KEY (`id_blog`);

--
-- Indices de la tabla `tbl_cat_productos`
--
ALTER TABLE `tbl_cat_productos`
  ADD PRIMARY KEY (`id_categProd`);

--
-- Indices de la tabla `tbl_productos`
--
ALTER TABLE `tbl_productos`
  ADD PRIMARY KEY (`id_producto`),
  ADD KEY `id_categProd` (`id_categProd`),
  ADD KEY `id_subcategProd` (`id_subcategProd`);

--
-- Indices de la tabla `tbl_subcategprod`
--
ALTER TABLE `tbl_subcategprod`
  ADD PRIMARY KEY (`id_subcategProd`),
  ADD KEY `id_categProd` (`id_categProd`);

--
-- Indices de la tabla `tbl_ventas`
--
ALTER TABLE `tbl_ventas`
  ADD PRIMARY KEY (`id_ventas`);

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `continente`
--
ALTER TABLE `continente`
  MODIFY `id_continent` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `databaseports`
--
ALTER TABLE `databaseports`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT de la tabla `databaseship`
--
ALTER TABLE `databaseship`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `personas`
--
ALTER TABLE `personas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=54;

--
-- AUTO_INCREMENT de la tabla `tbl_blog_comment_list`
--
ALTER TABLE `tbl_blog_comment_list`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT de la tabla `tbl_blog_list`
--
ALTER TABLE `tbl_blog_list`
  MODIFY `id_blog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `tbl_cat_productos`
--
ALTER TABLE `tbl_cat_productos`
  MODIFY `id_categProd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `tbl_productos`
--
ALTER TABLE `tbl_productos`
  MODIFY `id_producto` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=195;

--
-- AUTO_INCREMENT de la tabla `tbl_subcategprod`
--
ALTER TABLE `tbl_subcategprod`
  MODIFY `id_subcategProd` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT de la tabla `tbl_ventas`
--
ALTER TABLE `tbl_ventas`
  MODIFY `id_ventas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_blog_comment_list`
--
ALTER TABLE `tbl_blog_comment_list`
  ADD CONSTRAINT `tbl_blog_comment_list_ibfk_1` FOREIGN KEY (`id_comment_id_blog`) REFERENCES `tbl_blog_list` (`id_blog`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `tbl_productos`
--
ALTER TABLE `tbl_productos`
  ADD CONSTRAINT `tbl_productos_ibfk_1` FOREIGN KEY (`id_categProd`) REFERENCES `tbl_cat_productos` (`id_categProd`);

--
-- Filtros para la tabla `tbl_subcategprod`
--
ALTER TABLE `tbl_subcategprod`
  ADD CONSTRAINT `tbl_subcategprod_ibfk_1` FOREIGN KEY (`id_categProd`) REFERENCES `tbl_cat_productos` (`id_categProd`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
