-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-02-2020 a las 19:17:28
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

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tbl_blog_list`
--
ALTER TABLE `tbl_blog_list`
  ADD PRIMARY KEY (`id_blog`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tbl_blog_list`
--
ALTER TABLE `tbl_blog_list`
  MODIFY `id_blog` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
