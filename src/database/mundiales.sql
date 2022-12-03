-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 03-12-2022 a las 14:12:15
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mundiales`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `eliminaciondirecta`
--

CREATE TABLE `eliminaciondirecta` (
  `ideliminaciondirecta` int(11) NOT NULL,
  `introduccion` varchar(5000) NOT NULL,
  `mundial_idmundial` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `eliminaciondirecta`
--

INSERT INTO `eliminaciondirecta` (`ideliminaciondirecta`, `introduccion`, `mundial_idmundial`) VALUES
(1, 'Copa Mundial de Fútbol de 1934\r\n\r\nLa Copa Mundial de la FIFA Italia 1934 fue la segunda edición del Campeonato Mundial de Fútbol masculino organizado por la FIFA. Tuvo lugar en Italia entre el 27 de mayo y el 10 de junio de 1934. Después del éxito de la edición de 1930 en Uruguay, esta fue la primera vez que el campeonato se celebraba en un país de Europa.\r\n\r\nDebido al número de federaciones interesadas en participar, la FIFA estableció una fase de clasificación para cubrir las 16 plazas disponibles, en la que incluso Italia participó a pesar de ser el anfitrión. Uruguay, ganadora en 1930, se negó a participar porque Italia no quiso acudir a su Mundial, siendo hasta la fecha el único campeón que no ha querido defender su título. De hecho, solo participaron cuatro estados no europeos: Argentina, Brasil, Estados Unidos y Egipto, primer país de África que tomaba parte. En total, diez países debutaron en la competición.\r\n\r\nLa organización eliminó la fase de grupos y cambió el formato por una fase de eliminación directa a partido único, algo que solo se repetiría en la edición de 1938. En caso de empate se jugaría una prórroga de 30 minutos, y si el resultado seguía igual debía disputarse un encuentro de desempate al día siguiente. La final entre Italia y Checoslovaquia, celebrada en el estadio Nacional del Partido Nacional Fascista, finalizó con victoria de los anfitriones por 2–1, y ha sido la primera que necesitó de un tiempo suplementario para resolverse.', 2),
(2, 'Copa Mundial de Fútbol de 1938\r\nLa Copa Mundial de la FIFA Francia 1938 fue la tercera edición del campeonato mundial de fútbol masculino organizado por la FIFA. Se celebró en Francia entre el 4 de junio y el 19 de junio de 1938.\r\n\r\nLa organización mantuvo por última vez el formato de la edición de 1934, consistente en una fase de eliminación directa a partido único. En caso de empate se jugaría una prórroga de 30 minutos, y si el resultado seguía igual debía celebrarse un encuentro de desempate al día siguiente. A partir de 1938, el país organizador y el campeón de la anterior edición se clasificaban directamente.\r\n\r\nEl torneo estuvo marcado por el clima prebélico que se vivía antes de la Segunda Guerra Mundial. Solo participaron 15 países porque Austria, clasificada para la fase final, había sido ocupada por la Alemania nazi y su plaza quedó vacante. Además, 12 de las 15 selecciones eran europeas y apenas hubo tres equipos participantes del resto del mundo. América del Sur dio la espalda al evento en protesta por la elección de un estado europeo, con las ausencias destacadas de Argentina (aspirante a organizarlo) y Uruguay.​ Los únicos representantes americanos fueron Brasil y una debutante Cuba. Además, Indias Orientales Neerlandesas (actual Indonesia) fue el primer país de Asia en participar.\r\n\r\nEn la final celebrada en el estadio de Colombes, Italia se impuso a Hungría por 4–2 y se convirtió en el primer país que obtuvo el bicampeonato. El seleccionador Vittorio Pozzo fue también el primer entrenador (y hasta la fecha único) que ha ganado la Copa Mundial en dos ocasiones.\r\n\r\nCuando la Segunda Guerra Mundial estalló en 1939, los acontecimientos bélicos impidieron a la FIFA organizar la Copa Mundial en sus ediciones subsecuentes, y no la retomó hasta la edición de 1950 en Brasil.', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `equiposparticipantes`
--

CREATE TABLE `equiposparticipantes` (
  `idequiposparticipantes` int(11) NOT NULL,
  `pais` varchar(100) NOT NULL,
  `mundial_idmundial` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `equiposparticipantes`
--

INSERT INTO `equiposparticipantes` (`idequiposparticipantes`, `pais`, `mundial_idmundial`) VALUES
(1, 'Argentina', 1),
(2, 'Chile', 1),
(3, 'México', 1),
(4, 'Rumania', 1),
(5, 'Bélgica', 1),
(6, 'Estados Unidos', 1),
(7, 'Paraguay', 1),
(8, 'Uruguay', 1),
(9, 'Bolivia', 1),
(10, 'Francia', 1),
(11, 'Perú', 1),
(12, 'Yugoslavia', 1),
(13, 'Brasil', 1),
(14, 'Alemania', 2),
(15, 'Argentina', 2),
(16, 'Austria', 2),
(17, 'Bélgica', 2),
(18, 'Brasil', 2),
(19, 'Checoslovaquia', 2),
(20, 'Egipto', 2),
(21, 'España', 2),
(22, 'Estados Unidos', 2),
(23, 'Francia', 2),
(24, 'Hungría', 2),
(25, 'Italia', 2),
(26, 'Países Bajos', 2),
(27, 'Rumania', 2),
(28, 'Suecia', 2),
(29, 'Suiza', 2),
(30, 'Alemania', 3),
(31, 'Bélgica', 3),
(32, 'Brasil', 3),
(33, 'Cuba', 3),
(34, 'Checoslovaquia', 3),
(35, 'Francia', 3),
(36, 'Hungría', 3),
(37, 'Indias Orientales Neerlandesas', 3),
(38, 'Italia', 3),
(39, 'Noruega', 3),
(40, 'Países Bajos', 3),
(41, 'Polonia', 3),
(42, 'Rumania', 3),
(43, 'Suecia', 3),
(44, 'Suiza', 3),
(45, 'Suiza', 3),
(46, 'Bolivia', 4),
(47, 'Brasil', 4),
(48, 'Chile', 4),
(49, 'España', 4),
(50, 'Estados Unidos', 4),
(51, 'Inglaterra', 4),
(52, 'Italia', 4),
(53, 'México', 4),
(54, 'Paraguay', 4),
(55, 'Suecia', 4),
(56, 'Suiza', 4),
(57, 'Uruguay', 4),
(58, 'Yugoslavia', 4),
(59, 'Alemania Federal', 5),
(60, 'Austria', 5),
(61, 'Bélgica', 5),
(62, 'Brasil', 5),
(63, 'Checoslovaquia', 5),
(64, 'Corea del Sur', 5),
(65, 'Escocia', 5),
(66, 'Francia', 5),
(67, 'Hungría', 5),
(68, 'Inglaterra', 5),
(69, 'Italia', 5),
(70, 'México', 5),
(71, 'Suiza', 5),
(72, 'Turquía', 5),
(73, 'Uruguay', 5),
(74, 'Yugoslavia', 5),
(75, 'Alemania Federal', 6),
(76, 'Checoslovaquia', 6),
(77, 'Hungría', 6),
(78, 'Paraguay', 6),
(79, 'Argentina', 6),
(80, 'Escocia	', 6),
(81, 'Inglaterra\r\n', 6),
(82, 'Suecia', 6),
(83, 'Austria	', 6),
(84, 'Francia', 6),
(85, 'Irlanda del Norte', 6),
(86, 'Unión Soviética', 6),
(87, 'Brasil	', 6),
(88, 'Gales	', 6),
(89, 'México	', 6),
(90, 'Yugoslavia', 6),
(91, 'Alemania Federal', 7),
(92, 'Chile', 7),
(93, 'Hungría', 7),
(94, 'Suiza', 7),
(95, 'Argentina', 7),
(96, 'Colombia', 7),
(97, 'Inglaterra', 7),
(98, 'Unión Soviética', 7),
(99, 'Brasil', 7),
(100, 'Checoslovaquia', 7),
(101, 'Italia', 7),
(102, 'Uruguay', 7),
(103, 'Bulgaria', 7),
(104, 'España', 7),
(105, 'México', 7),
(106, 'Yugoslavia', 7),
(107, 'Alemania Federal', 8),
(108, 'Chile', 8),
(109, 'Hungría', 8),
(110, 'Portugal', 8),
(111, 'Argentina', 8),
(112, 'Corea del Norte', 8),
(113, 'Inglaterra', 8),
(114, 'Suiza', 8),
(115, 'Brasil', 8),
(116, 'España', 8),
(117, 'Italia', 8),
(118, 'Unión Soviética', 8),
(119, 'Bulgaria', 8),
(120, 'Francia	', 8),
(121, 'México', 8),
(122, 'Uruguay', 8),
(123, 'Alemania Federal', 9),
(124, 'Checoslovaquia', 9),
(125, 'Italia', 9),
(126, 'Rumania', 9),
(127, 'Bélgica', 9),
(128, 'El Salvador', 9),
(129, 'Marruecos', 9),
(130, 'Suecia', 9),
(131, 'Brasil', 9),
(132, 'Inglaterra', 9),
(133, 'México', 9),
(134, 'Unión Soviética', 9),
(135, 'Bulgaria', 9),
(136, 'Israel', 9),
(137, 'Perú', 9),
(138, 'Uruguay', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `goleadores`
--

CREATE TABLE `goleadores` (
  `idgoleadores` int(11) NOT NULL,
  `jugador` varchar(100) NOT NULL,
  `seleccion` varchar(100) NOT NULL,
  `goles` varchar(10) NOT NULL,
  `mundial_idmundial` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `goleadores`
--

INSERT INTO `goleadores` (`idgoleadores`, `jugador`, `seleccion`, `goles`, `mundial_idmundial`) VALUES
(1, 'Guillermo Stábile', 'Argentina', '8', 1),
(2, 'José Pedro Cea', 'Uruguay', '5', 1),
(3, 'Bert Patenaude', 'Estados Unidos', '4', 1),
(3, 'José Augusto', 'Portugal', '', 8),
(4, 'Juan Peregrino Anselmo', 'Uruguay', '3', 1),
(5, 'Ivan Beck', 'Yugoslavia', '3', 1),
(6, 'Carlos Peucelle', 'Argentina', '3', 1),
(7, 'Preguinho', 'Brasil', '3', 1),
(8, 'Oldřich Nejedlý', 'Checoslovaquia', '5', 2),
(9, 'Edmund Conen', 'Alemania', '4', 2),
(10, 'Angelo Schiavio', 'Italia', '4', 2),
(11, 'Leopold Kielholz', 'Suiza', '3', 2),
(12, 'Raimundo Orsi', 'Italia', '3', 2),
(13, 'Leônidas da Silva', 'Brasil', '7', 3),
(14, 'Gyula Zsengellér', 'Hungría', '5', 3),
(15, 'Silvio Piola', 'Italia', '5', 3),
(16, 'György Sárosi', 'Hungría', '5', 3),
(17, 'Gino Colaussi', 'Italia', '4', 3),
(18, 'Ernest Wilimowski', 'Polonia', '4', 3),
(19, 'Ademir', 'Brasil	', '8', 4),
(20, 'Óscar Míguez', 'Uruguay', '5', 4),
(21, 'Alcides Ghiggia', 'Uruguay', '4', 4),
(22, 'Chico', 'Brasil', '4', 4),
(23, 'Telmo Zarra', 'España', '4', 4),
(24, 'Estanislao Basora', 'España', '4', 4),
(25, 'Juan Alberto Schiaffino', 'Uruguay', '3', 4),
(26, 'Karl-Erik Palmér', 'Suecia', '3', 4),
(27, 'Stig Sundqvist', 'Suecia', '3', 4),
(28, 'Sándor Kocsis', 'Hungría', '11', 5),
(29, 'Josef Hügi', 'Suiza', '6', 5),
(30, 'Erich Probst', 'Austria', '6', 5),
(31, 'Max Morlock', 'Alemania Federal', '6', 5),
(32, 'Carlos Borges', 'Uruguay', '4', 5),
(33, 'Helmut Rahn', 'Alemania Federal', '4', 5),
(34, 'Nándor Hidegkuti', 'Hungría			', '4', 5),
(35, 'Hans Schaefer', 'Alemania FederaL', '4', 5),
(36, 'Ferenc Puskás', 'Hungría', '4', 5),
(37, 'Robert Ballaman', 'Suiza', '4', 5),
(38, 'Ottmar Walter', 'Alemania Federal', '4', 5),
(39, 'Just Fontaine', 'Francia', '13', 6),
(40, 'Pelé', 'Pelé', '6', 6),
(41, 'Helmut Rahn', 'Alemania Federal', '6', 6),
(42, 'Vavá', 'Brasil', '5', 6),
(43, 'Peter McParland', 'Irlanda del Norte', '5', 6),
(44, 'Zdeněk Zikán', 'Checoslovaquia', '4', 6),
(45, 'Lajos Tichy', 'Hungría', '4', 6),
(46, 'Agne Simonsson', 'Suecia', '4', 6),
(47, 'Kurt Hamrin', 'Suecia', '4', 6),
(48, 'Flórián Albert', 'Flórián Albert', '4', 7),
(49, 'Garrincha', 'Brasil', '4', 7),
(50, 'Vavá', 'Brasil', '4', 7),
(51, 'Leonel Sánchez', 'Chile', '4', 7),
(52, 'Valentín Ivanov', 'Unión Soviética', '4', 7),
(53, 'Dražan Jerković', 'Yugoslavia', '4', 7),
(54, 'Amarildo', 'Brasil', '3', 7),
(55, 'Milan Galić', 'Yugoslavia', '3', 7),
(56, 'Adolf Scherer', 'Checoslovaquia', '3', 7),
(57, 'Lajos Tichy', 'Hungría', '3', 7),
(58, 'Eusébio', 'Portugal', '9', 8),
(59, 'Helmut Haller', 'Alemania Federal', '6', 8),
(60, 'Geoff Hurst', 'Inglaterra', '4', 8),
(61, 'Franz Beckenbauer', 'Alemania Federal', '4', 8),
(62, 'Ferenc Bene', 'Hungría			', '4', 8),
(63, 'Valeri Porkuian', 'Unión Soviética', '4', 8),
(64, 'Roger Hunt', 'Inglaterra', '3', 8),
(65, 'Luis Artime', 'Argentina', '3', 8),
(66, 'José Torres', 'Portugal', '3', 8),
(67, 'Eduard Maloféyev', 'Unión Soviética', '3', 8),
(68, 'Bobby Charlton', 'Inglaterra', '3', 8),
(69, 'Gerd Müller', 'Alemania Federal', '10', 9),
(70, 'Jairzinho', 'Brasil', '7', 9),
(71, 'Teófilo Cubillas', 'Perú', '5', 9),
(72, 'Anatoly Bishovets', 'Unión Soviética', '4', 9),
(73, 'Pelé', 'Brasil', '4', 9),
(74, 'Rivelino', 'Brasil	', '3', 9),
(75, 'Luigi Riva', 'Italia', '3', 9),
(76, 'Uwe Seeler', 'Alemania Federal', '3', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `grupos`
--

CREATE TABLE `grupos` (
  `idgrupos` int(11) NOT NULL,
  `grupo` int(1) NOT NULL,
  `porgrupos_idporgrupos` int(11) NOT NULL,
  `equiposparticipantes_idequiposparticipantes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `grupos`
--

INSERT INTO `grupos` (`idgrupos`, `grupo`, `porgrupos_idporgrupos`, `equiposparticipantes_idequiposparticipantes`) VALUES
(1, 1, 1, 1),
(2, 1, 1, 2),
(3, 1, 1, 10),
(4, 1, 1, 3),
(5, 2, 1, 9),
(6, 2, 1, 13),
(7, 2, 1, 12),
(8, 3, 1, 11),
(9, 3, 1, 4),
(10, 3, 1, 8),
(11, 4, 1, 5),
(12, 4, 1, 6),
(13, 4, 1, 7),
(14, 1, 2, 47),
(15, 1, 2, 58),
(16, 1, 2, 56),
(17, 1, 2, 53),
(18, 2, 2, 51),
(19, 2, 2, 49),
(20, 2, 2, 48),
(21, 2, 2, 50),
(22, 3, 2, 52),
(23, 3, 2, 55),
(24, 3, 2, 54),
(25, 4, 2, 57),
(26, 4, 2, 46),
(27, 1, 3, 62),
(28, 1, 3, 74),
(29, 1, 3, 66),
(30, 1, 3, 70),
(31, 2, 3, 67),
(32, 2, 3, 60),
(33, 2, 3, 72),
(34, 2, 3, 64),
(35, 3, 3, 73),
(36, 3, 3, 60),
(37, 3, 3, 63),
(38, 3, 3, 65),
(39, 4, 3, 68),
(40, 4, 3, 71),
(41, 4, 3, 69),
(42, 4, 3, 61),
(43, 1, 4, 75),
(44, 1, 4, 85),
(45, 1, 4, 76),
(46, 1, 4, 79),
(47, 2, 4, 84),
(48, 2, 4, 90),
(49, 2, 4, 78),
(50, 2, 4, 80),
(51, 3, 4, 82),
(52, 3, 4, 88),
(53, 3, 4, 77),
(54, 3, 4, 89),
(55, 4, 4, 87),
(56, 4, 4, 86),
(57, 4, 4, 81),
(58, 4, 4, 83),
(59, 1, 5, 98),
(60, 1, 5, 106),
(61, 1, 5, 102),
(62, 1, 5, 96),
(63, 2, 5, 91),
(64, 2, 5, 92),
(65, 2, 5, 101),
(66, 2, 5, 94),
(67, 3, 5, 99),
(68, 3, 5, 100),
(69, 3, 5, 105),
(70, 3, 5, 104),
(71, 4, 5, 93),
(72, 4, 5, 97),
(73, 4, 5, 95),
(74, 4, 5, 103),
(75, 1, 6, 113),
(76, 1, 6, 122),
(77, 1, 6, 121),
(78, 1, 6, 120),
(79, 2, 6, 107),
(80, 2, 6, 111),
(81, 2, 6, 116),
(82, 2, 6, 114),
(83, 3, 6, 110),
(84, 3, 6, 109),
(85, 3, 6, 115),
(86, 3, 6, 119),
(87, 4, 6, 118),
(88, 4, 6, 112),
(89, 4, 6, 117),
(90, 4, 6, 108),
(91, 1, 9, 134),
(92, 1, 9, 133),
(93, 1, 9, 127),
(94, 1, 9, 128),
(95, 2, 9, 125),
(96, 2, 9, 138),
(97, 2, 9, 130),
(98, 2, 9, 136),
(99, 3, 9, 131),
(100, 3, 9, 132),
(101, 3, 9, 126),
(102, 3, 9, 124),
(103, 4, 9, 123),
(104, 4, 9, 137),
(105, 4, 9, 135),
(106, 4, 9, 129);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mundial`
--

CREATE TABLE `mundial` (
  `idmundial` int(11) NOT NULL,
  `anio` int(10) DEFAULT NULL,
  `anfitrion` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `mundial`
--

INSERT INTO `mundial` (`idmundial`, `anio`, `anfitrion`) VALUES
(1, 1930, 'Uruguay'),
(2, 1934, 'Italia'),
(3, 1938, 'Francia'),
(4, 1950, 'Brasil'),
(5, 1954, 'Suiza'),
(6, 1958, 'Suecia'),
(7, 1962, 'Chile'),
(8, 1966, 'Inglaterra'),
(9, 1970, 'México'),
(10, 1974, 'Alemania'),
(11, 1978, 'Argentina'),
(12, 1982, 'España'),
(13, 1986, 'México'),
(14, 1990, 'Italia'),
(15, 1994, 'Estados Unidos'),
(16, 1998, 'Francia'),
(17, 2002, 'Japón y Corea'),
(18, 2006, 'Alemania'),
(19, 2010, 'Sud Africa'),
(20, 2014, 'Brasil'),
(21, 2018, 'Rusia'),
(22, 2022, 'Catar');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `podio`
--

CREATE TABLE `podio` (
  `idpodio` int(11) NOT NULL,
  `puesto` int(1) DEFAULT NULL,
  `pais` varchar(100) DEFAULT NULL,
  `mundial_idmundial` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `podio`
--

INSERT INTO `podio` (`idpodio`, `puesto`, `pais`, `mundial_idmundial`) VALUES
(1, 1, 'Uruguay', 1),
(2, 2, 'Argentina', 1),
(3, 3, 'Estados Unidos', 1),
(4, 1, 'Italia', 2),
(5, 2, 'Checoslovaquia', 2),
(6, 3, 'Alemania', 2),
(7, 1, 'Italia', 3),
(8, 2, 'Hungría', 3),
(9, 3, 'Brasil', 3),
(10, 1, 'Uruguay', 4),
(11, 2, 'Brasil', 4),
(12, 3, 'Suecia', 4),
(13, 1, 'Alemania Federal', 5),
(14, 2, 'Hungría', 5),
(15, 3, 'Austria', 5),
(16, 1, 'Brasil', 6),
(17, 2, 'Suecia', 6),
(18, 3, 'Francia', 6),
(19, 1, 'Brasil', 7),
(20, 2, 'Checoslovaquia', 7),
(21, 3, 'Chile', 7),
(22, 1, 'Inlaterra', 8),
(23, 2, 'Alemania Federal', 8),
(24, 3, 'Portugal', 8),
(25, 1, 'Brasil', 9),
(26, 2, 'Italia', 9),
(27, 3, 'Alemania Federal', 9);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `porgrupos`
--

CREATE TABLE `porgrupos` (
  `idporgrupos` int(11) NOT NULL,
  `introduccion` varchar(5000) NOT NULL,
  `mundial_idmundial` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `porgrupos`
--

INSERT INTO `porgrupos` (`idporgrupos`, `introduccion`, `mundial_idmundial`) VALUES
(1, 'Copa Mundial de Fútbol de 1930\n\nLa Copa Mundial de la FIFA Uruguay 1930 fue la primera edición del Campeonato Mundial de Fútbol organizado por la FIFA. Se desarrolló en Uruguay entre el 13 y el 30 de julio de 1930. La FIFA decidió entregar la organización del torneo a Uruguay en conmemoración del centenario de la Jura de la Constitución, que la nación celebraba durante julio de ese mismo año, entre otros motivos.\n\nEn el torneo participaron 13 selecciones nacionales (12 invitadas más el organizador), divididas en 4 grupos: 3 grupos de 3 equipos y un grupo de 4 equipos. Los primeros dos encuentros en la historia de la Copa Mundial tuvieron lugar simultáneamente el 13 de julio, fecha en la que Estados Unidos se impuso a Bélgica por 3:0, mientras que Francia superó a México por 4:1. El primer tanto de la competición fue anotado por el jugador francés Lucien Laurent.\n\nLas selecciones de Argentina, Estados Unidos, Uruguay y Yugoslavia accedieron a las semifinales tras imponerse en sus respectivos grupos. En la final, el anfitrión Uruguay venció a Argentina por 4:2, ante más de 68 000 espectadores, ganando su primer título mundial organizado por la FIFA.', 1),
(2, '\r\nCopa Mundial de Fútbol de 1950\r\n\r\nLa Copa Mundial de la FIFA Brasil 1950 fue la cuarta edición del campeonato mundial de fútbol masculino organizado por la FIFA. Tuvo lugar en Brasil desde el 24 de junio hasta el 16 de julio de 1950.\r\n\r\nLa FIFA recuperó la Copa Mundial después de que las ediciones previstas para 1942 y 1946 quedasen suspendidas por la Segunda Guerra Mundial. En homenaje a los 25 años de presidencia de Jules Rimet, el trofeo de campeones fue renombrado «Copa Jules Rimet». Las sucesivas retiradas provocaron que solo participasen 13 países: 6 europeos y 7 americanos. Destacaron especialmente el regreso de Uruguay, ausente en los dos últimos torneos, y el debut de Inglaterra luego de que las federaciones británicas reingresasen en la FIFA.\r\n\r\nDebido a su formato de competición, usado solo en esta edición, la Copa Mundial de 1950 fue la única en la que no se celebró una final. En la fase preliminar los 13 participantes se dividían en cuatro grupos para enfrentarse todos contra todos en una vez. Los ganadores de cada grupo (Brasil, España, Suecia y Uruguay) pasaban después a una liguilla de cuatro bajo el mismo sistema, de la que saldría el campeón. El balón oficial fue Duplo T, fabricado por una compañía local.\r\n\r\nLa Copa Mundial de 1950 es especialmente recordada por el «Maracanazo», nombre por el que se conoce a la victoria de Uruguay sobre Brasil en la última jornada.​ A los brasileños les bastaba con un empate gracias a sus cómodas victorias contra españoles y escandinavos, mientras que a los charrúas solo les valía ganar. Sin embargo, saltó la sorpresa: a pesar de que Friaça adelantó a los locales, los visitantes remontaron gracias a sendos tantos de Schiaffino y Ghiggia. Con el marcador final de 1–2, Uruguay ganó su segunda Copa Mundial e igualó a Italia en el palmarés de ese entonces.', 4),
(3, 'Copa Mundial de Fútbol de 1954\r\nLa Copa Mundial de la FIFA Suiza 1954 fue la quinta edición de la Copa Mundial de Fútbol, realizada en Suiza, entre el 16 de junio y el 4 de julio de 1954. Así, la Copa Mundial regresó a Europa, donde Suiza fue elegida sede por ser la única nación con la infraestructura requerida para el evento.\r\n\r\nEl mundial contó con la participación de 16 selecciones nacionales, las cuales fueron divididas en 4 grupos de 4. También marca el inicio del estrecho vínculo con la televisión, al ser el primer evento en ser transmitido a por lo menos 8 países de Europa. El partido por la gran final se disputó entre Hungría y Alemania Federal. En el llamado Milagro de Berna, los alemanes derrotaron a los favoritos húngaros por 3:2 y se coronaron campeones por primera vez de la Copa Mundial. El balón oficial fue Swiss World Champion, fabricado por una compañía local.', 5),
(4, '\r\nCopa Mundial de Fútbol de 1958\r\nLa Copa Mundial de la FIFA Suecia 1958 fue la sexta edición de la Copa Mundial de Fútbol. Fue realizada en la primavera de Suecia, entre el 8 y el 28 de junio de 1958.\r\n\r\nParticiparon en la fase final dieciséis selecciones nacionales; las selecciones debutantes de Unión Soviética, Irlanda del Norte y Gales lograron quedar entre los primeros ocho finalistas. Por primera vez en la historia del torneo, las cuatro selecciones del Reino Unido compitieron en la fase final. El partido final se desarrolló en Estocolmo, entre Brasil y Suecia. Con una gran actuación de Didí y el juvenil Pelé, los brasileños se coronaron por primera vez como campeones del mundo al derrotar a los locales por 5-2n. 1​ y se convirtió en la primera selección en ganar un mundial fuera de su continente.n. 2​ Desde esta versión el certamen comenzó a ser intercalado con América hasta 1998. El balón oficial fue Top Star, fabricado por una compañía local.', 6),
(5, 'La Copa Mundial de la FIFA Chile 1962 fue la séptima edición de la Copa Mundial de Fútbol, realizada en Chile durante el otoño, entre el 30 de mayo y el 17 de junio de 1962.\r\n\r\nTras Brasil 1950, el principal campeonato de fútbol internacional regresó a América después de haberse disputado dos veces consecutivas en Europa. Chile fue elegido como la sede en 1956 y la organización, que adoptó el lema «Porque nada tenemos, lo haremos todo», superó diversas dificultades, principalmente respecto a la infraestructura necesaria, lo que amenazó albergarlo, en especial tras la ocurrencia del terremoto de Valdivia de 1960 —el más potente registrado instrumentalmente en la historia universal con una magnitud de 9,5 MW— que afectó al territorio sur del país. Finalmente, fue celebrado en cuatro sedes, el segundo menor número en su historia:las ciudades de Arica, Rancagua, Santiago y Viña del Mar.\r\n\r\nEn el ámbito deportivo participaron 16 selecciones, siendo la versión más violenta de la historia —con partidos como la Batalla de Santiago entre Chile e Italia— y la con mayor cifra de goleadores, seis con cuatro tantos. Se destacó el único «gol olímpico» que ha sido anotado en el torneo, obra del colombiano Marco Coll ante la Unión Soviética, y las habilidades del brasileño Garrincha, quien fue el «mejor jugador» del evento mientras su compatriota Pelé estaba lesionado.​ La final fue jugada en el Estadio Nacional en Santiago, donde Brasil consiguió su segundo título mundial al ganar a Checoslovaquia por 3-1, la última vez que ha ocurrido consecutivamente. Los locales alcanzaron el tercer puesto al vencer a Yugoslavia por 1-0, el «principal logro del fútbol chileno en su historia»\r\nEl certamen tuvo el estreno de un balón con forma esférica regular: Crack,​ fabricado por una compañía local, el uso de los goles tras los puntos para definir los clasificados en los grupos: su promedio, y música oficial: la canción «El rock del Mundial» de la banda local Los Ramblers.', 7),
(6, 'La Copa Mundial de la FIFA Inglaterra 1966 fue la octava edición de la Copa Mundial de Fútbol. Fue realizada en Inglaterra, entre el 11 y el 30 de julio de 1966. Dieciséis selecciones participaron en la ronda final, siendo divididas en cuatro grupos de 4 equipos donde los dos primeros de cada grupo avanzaron a la ronda de cuartos de final, a partir de la cual se dieron duelos de eliminación directa.\r\n\r\nLa final fue disputada en el estadio Wembley entre Inglaterra y Alemania Federal. Tras empatar a dos goles durante el tiempo reglamentario, se realizó una prórroga en que Geoff Hurst anotó uno de los goles más polémicos de la historia de este deporte, el cual no entró a la portería. Finalmente, un cuarto gol le daría a Inglaterra su primera y, hasta el momento, única Copa Mundial, de las manos de la reina Isabel II.\r\n\r\nEl goleador del torneo fue el jugador portugués Eusébio, con nueve goles. Por otro lado, por primera vez en la historia de la Copa Mundial se presentó una mascota, el león Willie. El balón oficial fue Challenge 4-Star.', 8),
(7, 'La Copa Mundial de la FIFA México 1970 fue la novena edición de la Copa Mundial de Fútbol. Se celebró en México, entre el 31 de mayo y el 21 de junio de 1970. Un total de 16 selecciones nacionales participaron en la ronda final, siendo reunidas en cuatro grupos de 4 equipos, luego los dos primeros de cada sector avanzaron a la ronda de cuartos de final, a partir de la cual se dieron duelos de eliminación directa. Fue el primer mundial en donde se implementaron las tarjetas amarilla (amonestación) y roja (expulsión).\r\nEste torneo es considerado por diversos expertos​ como uno de los mejores en la historia del fútbol, debido tanto a su juego limpio (no hubo expulsados en todo su desarrollo) como a los diversos planteles que asistieron con algunos de los mejores jugadores de este deporte, como Pelé y Franz Beckenbauer.\r\nDurante los cuartos de final, se dieron grandes exhibiciones futbolísticas: Uruguay venció a Unión Soviética con un gol en los minutos finales de la prórroga, Italia remontó el partido contra México con un categórico 4:1, Brasil venció 4:2 a Perú en un partido con un gran despliegue ofensivo de ambos bandos (49 tiros a puerta en total: 27 brasileños y 22 peruanos), y Alemania Federal remontó el partido ante la campeona defensora Inglaterra en la prórroga, luego de ir abajo por dos goles.\r\n\r\nEn la final, Brasil derrotó a Italia por 4:1. Así, el equipo sudamericano se coronó por tercera vez en su historia como campeón del mundo, adjudicándose definitivamente la Copa Jules Rimet.', 9),
(8, 'La Copa Mundial de la FIFA Alemania Occidental 1974 fue la décima edición de la Copa Mundial de Fútbol. Fue realizada en la Alemania Occidental (RFA) y en Berlin Occidental, entre el 13 de junio y el 7 de julio de 1974. Dieciséis selecciones nacionales participaron en el torneo que, como novedad, cambió el sistema en la segunda ronda, donde en lugar de realizar enfrentamientos a eliminación directa entre los ocho equipos que avanzaron, fueron divididos en 2 grupos de 4; los ganadores de cada grupo pasaron a la final, y los segundos, a disputar el partido por el tercer puesto. El partido final fue disputado por los Países Bajos y la RFA, que ganó por 2-1.\r\n\r\nEn esta edición del certamen apareció por primera vez la actual versión del trofeo. Se habían presentado 54 proyectos para el nuevo trofeo y se eligió el diseño del italiano Silvio Gazzaniga, de oro macizo, cinco kilos de peso y base de malaquita, ya que la Copa Jules Rimet había sido concedida a perpetuidad a Brasil en el torneo anterior.\r\n\r\nAdemás en esta edición, ocurre que por primera vez se expulsa por medio de tarjeta roja y por dopaje a un jugador. La regla de la tarjeta roja fue instaurada en el mundial anterior pero al no haber expulsados en dicho certamen, su estreno se produjo para esta cita. El primero en ser expulsado por la tarjeta roja fue el chileno Carlos Caszely en su primer partido mundialista frente al equipo local.​ El segundo jugador en ser expulsado y el primero por dopaje fue el haitiano Ernst Jean-Joseph en el partido contra Italia.', 10),
(9, 'La Copa Mundial de la FIFA Argentina 1978 fue la undécima edición de la Copa Mundial de Fútbol y se desarrolló en Argentina, entre el 1 de junio y el 25 de junio de 1978. La Copa del Mundo volvía así a Sudamérica por primera vez desde Chile en 1962. El torneo fue disputado en seis estadios, repartidos en las ciudades de Buenos Aires, Rosario, Mar del Plata, Córdoba y Mendoza.\r\n\r\nLa mascota de este mundial fue Gauchito Mundialito y la pelota oficial sufrió un cambio revolucionario con la aparición de la Adidas Tango. Esta pelota se convirtió en un clásico del diseño que iba a perdurar durante cinco mundiales, y contaba con mayor impermeabilización que los diseños anteriores.\r\n\r\nEl torneo se disputó mientras que en la Argentina gobernaba una dictadura que había impuesto un régimen terrorista de Estado, boicoteado por algunas organizaciones internacionales de derechos humanos. La decisión de realizar el torneo en Argentina, las relaciones entre la dictadura militar con la FIFA, algunos resultados deportivos sospechosos y los actos de corrupción, han sido materia de investigación y debate.', 11),
(10, 'La Copa Mundial de la FIFA España 1982 fue la duodécima edición del campeonato mundial de fútbol masculino organizado por la FIFA. Se celebró en España desde el 13 de junio hasta el 11 de julio de 1982.\r\n\r\nEl campeonato contó por primera vez con la participación de 24 selecciones nacionales, a través de una ampliación de los cupos continentales en la fase clasificatoria. \r\nPara darles cabida se hicieron cambios en el sistema de competición: hubo un formato con dos liguillas y fase final que solo sería utilizado en esta edición. El comité organizador habilitó un total de 17 estadios en 14 sedes, incluyendo el Camp Nou para la inauguración y el Santiago Bernabéu para la gran final. La Copa Mundial de 1982 fue la primera en contar con representantes de todos los continentes.\r\n\r\nEn lo que respecta a España, la Copa Mundial de 1982 ha sido el primer gran acontecimiento organizado en el país tras el restablecimiento de la democracia. Los principales estadios del país fueron remodelados, se invirtió dinero en actualizar la red de transportes, y la experiencia acumulada serviría para obtener la concesión de futuros eventos como los Juegos Olímpicos de 1992. Sin embargo, la selección nacional no cumplió con las expectativas y cayó en la segunda ronda con tan solo una victoria. La mascota Naranjito se convirtió en el símbolo del torneo.', 12),
(11, 'La Copa Mundial de la FIFA México 1986 fue la decimotercera edición de la Copa Mundial de Fútbol, que se desarrolló entre el 31 de mayo y el 29 de junio. México se convirtió en el primer país en celebrar dos veces una Copa del Mundo, cuando el Comité Ejecutivo de la FIFA, tras una reunión en Estocolmo, Suecia en mayo de 1983, decidió sustituir la sede seleccionada en 1974, Colombia, que tuvo que declinar en noviembre de 1982 ante la imposibilidad de cumplir con los requerimientos que FIFA exigió para celebrar el evento.\r\n\r\nFueron 24 selecciones las que acudieron al torneo y 52 partidos celebrados, al igual que en el mundial anterior. La mascota fue Pique y el balón oficial fue el Adidas Azteca México, el primero fabricado con materiales sintéticos, lo que aumentaba la impermeabilidad y la durabilidad, brindando mejor rendimiento en campos de juego duros, con mucha humedad y a grandes alturas.\r\n\r\nEn este torneo también sucedieron dos expulsiones destacables: Cayetano Ré (entrenador del seleccionado paraguayo) fue el primer director técnico en la historia de los mundiales en ser expulsado de la banca de su equipo en un partido, por exceso de reclamos frente al árbitro búlgaro Bogdan Dotchev durante el encuentro contra Bélgica que terminó en un empate 2 a 2. Mientras que el jugador uruguayo José Batista, tuvo el deshonor de haber sufrido la expulsión más rápida de la historia de los Mundiales, al recibir una tarjeta roja cuando solo se llevaba 56 segundos del partido de su equipo contra Escocia.', 13),
(12, 'La Copa Mundial de la FIFA Italia 1990 fue la decimocuarta edición de la Copa Mundial de Fútbol. Se desarrolló en Italia, entre el 8 de junio y el 8 de julio de 1990.\r\n\r\nItalia se convirtió en el segundo país en celebrar una Copa Mundial en dos ocasiones distintas, ya que había organizado el torneo en 1934. Un total de 24 selecciones nacionales participaron en el evento, en donde hubo varias sorpresas, como la participación de Camerún, que se convirtió en el primer equipo africano en llegar a los cuartos de final, llegando su colectivo a ser conocido como \"los leones indomables\". La final fue jugada por segunda vez consecutiva por Argentina y Alemania Federal, poco antes de su unificación con Alemania Democrática. Ganaron los alemanes por 1-0 gracias a un polémico penal pitado por el uruguayo nacionalizado mexicano Edgardo Codesal Méndez en el minuto 83. Décadas más tarde, Codesal se defendió justificando que su decisión fue la correcta, sin embargo el jugador alemán Lothar Matthäus argumentó que la falta estuvo mal cobrada.\r\n\r\nAlgunos periodistas y analistas deportivos lo han considerado como el mundial con el peor nivel futbolístico de entre todos los realizados, producto de las reglas de juego de la época que favorecían a los equipos que buscaban evitar el desarrollo del juego antes que proponerlo, mediante acciones como faltas reiteradas y violentas a los atacantes, demoras en la reanudación del juego, permisividad de los árbitros para hacer respetar el reglamento y búsqueda del empate antes que la victoria.\r\n\r\nConsecuencia de lo anterior fue el hecho de que esta edición tuvo la media de goles más baja de todos los mundiales: 2,21 por partido. Debido a esto, la FIFA decidió hacer diversas reformas a las reglas que favorecieran al desarrollo del juego y castigara fuertemente a quien buscara entorpecerlo, a aplicar desde el próximo mundial, entre las cuales destacan el otorgamiento de 3 puntos por victoria y la decisión de prohibirle a los arqueros tomar el balón con las manos tras recibir un pase de un compañero.\r\n\r\nEl tema musical oficial fue \"Un\'estate italiana\", interpretado por Gianna Nannini y Edoardo Bennato.', 14),
(13, 'La Copa Mundial de la FIFA Estados Unidos 1994 fue la decimoquinta edición de la Copa Mundial de Fútbol, y se desarrolló en los Estados Unidos, entre el 17 de junio y el 17 de julio de 1994. Estados Unidos fue elegido como sede del Mundial por primera vez en la historia, generando gran polémica por ser un país sin tradición futbolística, debido a la popularidad de otros deportes como el béisbol, el fútbol americano, el hockey sobre hielo, y el baloncesto. Sin embargo, y debido al desarrollo económico y a la infraestructura de dicho país, el evento tuvo un gran éxito marcando cifras históricas de asistencia de público y recaudación financiera, imbatibles hasta el día de hoy, e incluso permitió el desarrollo del soccer en Estados Unidos, volviéndose con el pasar de los años en un deporte muy popular en dicho país. Fue también la última Copa Mundial que constó de 24 selecciones participantes, lo que permitía la clasificación a octavos de final de los cuatro mejores terceros lugares de la fase de grupos. Se desarrolló en 9 sedes cuyos estadios en promedio albergaron a 70.000 espectadores.\r\n\r\nLa mascota del torneo fue el perro Striker. La canción oficial del evento fue \"Gloryland\" interpretada por Daryl Hall and the Sound of the Blackness inspirada por un cántico popular antiabolicionista estadounidense del siglo xix \"El Himno de la Batalla de la República\". Igualmente, el torneo marcó el estreno del Himno de la FIFA en la ceremonia previa de los partidos.\r\n\r\nRoger Milla, futbolista camerunés de 42 años, se convirtió en el jugador más veterano en jugar en un Mundial y también en marcar un gol en un mundial (ante Rusia). Milla mantuvo ese récord hasta 2014, cuando fue superado por el colombiano Faryd Mondragón.', 15),
(14, 'La Copa Mundial de la FIFA Francia 1998 fue la decimosexta edición de la Copa Mundial de Fútbol, se desarrolló en Francia, entre el 10 de junio y el 12 de julio de 1998. Francia se convirtió en el tercer país en organizar dos campeonatos (tras México e Italia), 60 años después del mundial realizado en 1938. Por primera vez en la fase final de la Copa Mundial participaron 32 selecciones nacionales que se dividieron en una primera ronda de 8 grupos en los que clasificaban los dos primeros de cada uno a octavos de final y a un sistema de eliminación directa.\r\n\r\nLa selección local se coronó campeona por primera vez al derrotar en la final del torneo realizada en el nuevo Estadio de Francia, en Saint-Denis, a Brasil por 3:0. La sorpresa del torneo fue el combinado de Croacia que en su primera participación tras la desintegración de Yugoslavia, obtuvo el tercer lugar.\r\n\r\nEn este Mundial se mostraron 21 tarjetas rojas, récord en la historia de las Copas del Mundo, hasta Alemania 2006, donde se mostraron 28 tarjetas rojas. La mascota del torneo fue Footix, un gallo azul, símbolo del país anfitrión.​ También fue el Mundial con más goles anotados, igualado en Brasil 2014.', 16),
(15, 'La Copa Mundial de la FIFA Corea del Sur/Japón 2002 (en coreano: 2002 FIFA 월드컵 한국/일본, 2002 FIFA Woldeu Keop Hanguk/Ilbon; en japonés: 2002 FIFAワールドカップ 韓国/日本, 2002 FIFA Waarudo Kappu Kankoku/Nippon) fue la decimoséptima edición de la Copa Mundial de Fútbol y se realizó en Corea del Sur y Japón, entre el 31 de mayo y el 30 de junio de 2002. Este torneo fue el primero organizado en la historia por dos países, el primero en realizarse fuera de Europa y América, el primer mundial en realizarse en el siglo XXI, el primero del tercer milenio y el primero en realizarse en Asia.\r\n\r\nEl torneo, en el que participaron 32 selecciones, tuvo fuertes contrastes. Algunos equipos considerados de segundo y tercer orden en el fútbol internacional lograron excelentes resultados, como los semifinalistas Turquía y Corea del Sur, mientras la debutante selección de Senegal quedó entre los ocho primeros. Por el contrario, algunos de los equipos favoritos fueron eliminados en la primera fase como es el caso de Argentina y Francia, en el peor torneo de un vigente campeón al obtener un solo punto y no marcar gol alguno.\r\n\r\nDespués de todas estas polémicas arbitrales, la FIFA decidió que a partir de la siguiente Copa Mundial, la de 2006, se seleccionarían equipos arbitrales completos, por lo que no volvieron a coincidir en un mismo partido árbitros y linieres de distintas nacionalidades.', 17),
(16, 'La Copa Mundial de la FIFA Alemania 2006 (en alemán: FIFA Fußball-Weltmeisterschaft Deutschland 2006) fue la XVIII edición de la Copa Mundial de Fútbol. Esta edición del evento se realizó en Alemania, entre el 9 de junio y el 9 de julio de 2006, siendo la segunda ocasión en que dicho país organizaba este evento tras el campeonato realizado en 1974 en la entonces Alemania Federal.\r\n\r\nPara este torneo, 197 selecciones (casi la totalidad de las pertenecientes a la FIFA y marcando un nuevo récord histórico hasta esa fecha) participaron en las rondas clasificatorias, incluyendo el vigente campeón Brasil, ya que la FIFA decidió que a partir de esta edición el campeón del mundo ya no iba a tener la clasificación directa a la siguiente Copa Mundial. De estos, 31 equipos participaron en la fase final del torneo, además del anfitrión Alemania.\r\n\r\nEl campeonato, que se inició el 9 de junio en el nuevo estadio Allianz Arena de Múnich, estuvo compuesto de dos fases: en la primera, se conformaron 8 grupos de 4 equipos cada uno, avanzando a la siguiente ronda los dos mejores de cada grupo. Los 16 equipos clasificados se enfrentaron en rondas eliminatorias hasta que los equipos de Italia y Francia se enfrentaron en la final realizada en el Estadio Olímpico de Berlín. Tras empatar 1-1 en el tiempo reglamentario y la prórroga, se realizó una tanda de penaltis para decidir al nuevo campeón, hecho que solamente había ocurrido previamente en la Copa Mundial de Fútbol de 1994. En esta instancia, Italia obtuvo por cuarta vez el trofeo tras derrotar al combinado galo por 5-3. De esta manera, Italia participó como campeón del mundo en la Copa FIFA Confederaciones 2009 que se realizó en Sudáfrica.\r\n\r\nEl torneo, además, presentó una de las tasas de goles más bajas en la historia y rompió el récord del Mundial con mayor número de tarjetas amarillas y rojas.', 18),
(17, 'La Copa Mundial de la FIFA Sudáfrica 2010 (en inglés y afrikáans, respectivamente: 2010 FIFA World Cup y FIFA Sokker-Wêreldbekertoernooi in 2010) fue la XIX edición de la Copa Mundial de Fútbol. La competición se celebró en Sudáfrica, entre el 11 de junio y el 11 de julio de ese año, siendo la primera vez que el torneo se disputaba en África y la quinta que lo hacía en el hemisferio sur, superando el país anfitrión en la elección previa a Egipto y Marruecos.\r\n\r\nSe inscribieron para participar en el proceso de clasificación 204 de las 208 asociaciones nacionales adheridas a la FIFA, realizado entre mediados de 2007 y fines de 2009, para poder determinar a los 31 equipos participantes en la fase final del torneo (que se unirían al anfitrión Sudáfrica), superando la marca de 197 participantes del torneo anterior.\r\n\r\nTodo el torneo estuvo marcado por importantes errores arbitrales que influyeron en el desarrollo de varios partidos,3​ incluyendo una semifinal y la propia final.\r\n\r\nTras la consagración de España ante Países Bajos, este Mundial fue el primero jugado fuera de Europa en el que se proclamó campeón un equipo de dicho continente, además de que fue la primera vez desde 1998 en que ganó un equipo sin copas mundiales anteriores en su palmarés, así como la primera vez desde 1978 en que dos equipos sin copas mundiales se enfrentaron en la final. Por su parte, fue la primera vez desde 1962 en que Europa y Sudamérica no se alternan el campeón mundial, ya que en la edición anterior el campeón también fue europeo (Italia). Como campeones del mundo, España participó en la Copa FIFA Confederaciones 2013.', 19),
(18, 'La Copa Mundial de la FIFA Brasil 2014 (en portugués: Copa do Mundo FIFA de 2014) fue la vigésima edición de la Copa Mundial de Fútbol. Se realizó en Brasil entre el 12 de junio y el 13 de julio de 2014, por segunda vez en dicho país, tras el campeonato de 1950.\r\n\r\nDespués de que el presidente de la FIFA, Joseph Blatter, estableció en 2001 el criterio de rotación continental de la sede del torneo, América del Sur fue seleccionada en 2004 para celebrar en 2014 su primera copa desde Argentina 1978. Pese al entusiasmo inicial de algunos países, solo Brasil y Colombia presentaron sus candidaturas oficiales antes del cierre del plazo, en diciembre de 2006. Algunos meses después, Colombia retiró su candidatura y quedó Brasil como único postulante. El 30 de octubre de 2007, la FIFA lo designó, de manera oficial, como el país sede de la Copa Mundial de Fútbol de 2014.\r\n\r\nEn el desarrollo del certamen se dieron una serie de sorpresas durante la fase de grupos. Destacó la eliminación de España, selección defensora del título mundial, así como equipos del calibre de Inglaterra e Italia. Además, hubo un importante avance de los equipos americanos, ocho de los cuales se clasificaron para octavos de final. También por primera vez en una Copa del Mundo, dos equipos africanos llegaron a la segunda fase: Argelia y Nigeria.\r\n\r\nEn el aspecto tecnológico, el torneo contó con el debut dentro de una Copa Mundial de Fútbol del sistema de transmisión en ultra alta definición (resolución 4K), así como el estreno de sensores para evitar goles fantasmas con el sistema de detección automática de goles (DAG), usado para determinar, en jugadas dudosas, si el balón cruzó o no la línea de gol.', 20),
(19, 'La Copa Mundial de la FIFA Rusia 2018 (en ruso: Чемпионат мира по футболу Россия 2018) fue la vigésima primera edición de la Copa Mundial de Fútbol masculino organizada por la FIFA. Esta edición del evento se realizó del 14 de junio al 15 de julio de 2018 en Rusia, que consiguió los derechos de organización el 2 de diciembre de 2010.\r\n\r\nEsta fue la undécima vez que la Copa del Mundo se disputó en el continente europeo, y la primera que se celebró en Europa Oriental. También por primera vez, el torneo tiene lugar en dos continentes: Europa y Asia, dada la ubicación de la ciudad de Ekaterimburgo, una de las sedes.\r\n\r\nCon un costo estimado de más de 14 200 millones de dólares, es la Copa del Mundo más cara de la historia. Por otra parte, es la primera vez que se utilizó el Árbitro asistente de video (VAR) y un balón oficial con un chip incorporado para seguir los partidos en vivo mediante una aplicación en esta competencia.\r\n\r\nEl campeón fue Francia, que derrotó por 4-2 a Croacia —selección que llegaba por primera vez a la final— y se consagró por segunda vez después de 20 años (en 1998 ganó el Mundial en calidad de anfitrión ante Brasil).', 21),
(20, 'La Copa Mundial de Fútbol de la FIFA Catar 2022 (en árabe, كأس العالم لكرة القدم قطر 2022) es la vigésima segunda edición de la Copa Mundial de Fútbol masculino organizada por la FIFA. Se está desarrollando desde el 20 de noviembre al 18 de diciembre del presente año (2022) en Catar, que consiguió los derechos de organización el 2 de diciembre de 2010.\r\n\r\nEs la tercera vez que el torneo se disputa en el continente asiático tras la edición de 2002 jugada en Corea del Sur y Japón y la de Rusia 2018 (aunque esta última contaba con una sola sede en territorio asiático); y la primera que se celebra en Asia Occidental. También por primera vez, el torneo tiene lugar en Oriente Próximo, en un país árabe y de mayoría musulmana, así como el de menor extensión territorial.\r\n\r\nIgualmente es el Mundial de mayor tiempo de espera desde 1950 respecto a su edición anterior, ya que se desarrolla entre los meses de noviembre y diciembre de 2022, a diferencia de los meses habituales de junio y julio. De forma paralela es la Copa más corta desde 1978, pues solamente tiene veintinueve días a diferencia de los treinta y dos habituales en los últimos campeonatos.', 22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sedes`
--

CREATE TABLE `sedes` (
  `idsedes` int(11) NOT NULL,
  `lugar` varchar(100) NOT NULL,
  `estadio` varchar(100) NOT NULL,
  `mundial_idmundial` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `sedes`
--

INSERT INTO `sedes` (`idsedes`, `lugar`, `estadio`, `mundial_idmundial`) VALUES
(1, 'Montevideo', 'Estadio Centenario', 1),
(2, 'Montevideo', 'Estadio Gran Parque Central', 1),
(3, 'Montevideo', 'Estadio Pocitos', 1),
(4, 'Roma', 'Stadio Nazionale PNF', 2),
(5, 'Bologna', 'Stadio del Littoriale', 2),
(6, 'Milan', 'Stadio San Siro', 2),
(7, 'Nápoles ', 'Stadio Giorgio Ascarelli', 2),
(8, 'Florencia', 'Estadio Giovanni Berta', 2),
(9, 'Génova ', 'Stadio Luigi Ferraris', 2),
(10, 'Trieste ', 'Stadio del Littorio', 2),
(11, 'Turín ', 'Stadio Benito Mussolini', 2),
(12, 'Antibes', 'Estadio Fort Carré', 3),
(13, 'Burdeos', 'Parc Lescure', 3),
(14, 'El Havre', 'Stade de la Cavée Verte', 3),
(15, 'Estrasburgo', 'Estadio de la Meinau	', 3),
(16, 'Lille', 'Estadio Victor Boucquey	', 3),
(17, 'Marsella', 'Estadio Vélodrome', 3),
(18, 'París', 'Parque de los Príncipes	', 3),
(19, 'París', 'Stade Olympique de Colombes', 3),
(20, 'Reims', 'Estadio Vélodrome Municipal', 3),
(21, 'Toulouse', 'Estadio Chapou', 3),
(22, 'Río de Janeiro', 'Estadio Maracaná', 4),
(23, 'Recife			', 'Estadio Ilha do Retiro', 4),
(24, 'São Paulo', 'Estadio Pacaembú', 4),
(25, 'Belo Horizonte', 'Estadio Independência', 4),
(26, 'Curitiba', 'Estadio Durival de Britto e Silva', 4),
(27, 'Porto Alegre', 'Estadio Eucaliptos', 4),
(28, 'Berna ', 'Wankdorf Stadium', 5),
(29, 'Basilea', 'St. Jakob Stadium', 5),
(30, 'Lausanne ', 'Stade Olympique de la Pontaise', 5),
(31, 'Ginebra ', 'Stade des Charmilles', 5),
(32, 'Lugano ', 'Stadio di Cornaredo', 5),
(33, 'Zürich ', 'Hardturm-Stadion', 5),
(34, 'Borås', 'Ryavallen', 6),
(35, 'Eskilstuna', 'Tunavallen', 6),
(36, 'Solna', 'Estadio Råsunda', 6),
(37, 'Gotemburgo', 'Nya Ullevi', 6),
(38, 'Halmstad', 'Örjans Vall', 6),
(39, 'Helsingborg', 'Olympiastadion', 6),
(40, 'Malmö', 'Malmö Stadion', 6),
(41, 'Norrköping', 'Iddrotsparken', 6),
(42, 'Örebro', 'Eyravallen', 6),
(43, 'Sandviken', 'Estadio Järnvallen', 6),
(44, 'Uddevalla', 'Rimnersvallen', 6),
(45, 'Västerås', 'Arosvallen', 6),
(46, 'Arica', 'Estadio Carlos Dittborn', 7),
(47, 'Santiago', 'Estadio Nacional de Chile', 7),
(48, 'Viña del Mar', 'Estadio Sausalito', 7),
(49, 'Rancagua ', 'Estadio de la Braden Copper Co.', 7),
(50, 'Birmingham', 'Villa Park', 8),
(51, 'Liverpool', 'Goodison Park', 8),
(52, 'Londres', 'Wembley', 8),
(53, 'Londres', 'White City', 8),
(54, 'Mánchester', 'Old Trafford', 8),
(55, 'Middlesbrough ', 'Ayresome Park', 8),
(56, 'Sheffield ', 'Hillsborough', 8),
(57, 'Sunderland', 'Roker Park', 8),
(58, 'Ciudad de México', 'Estadio Azteca', 9),
(59, 'Puebla', 'Estadio Cuauhtémoc', 9),
(60, 'León', 'Estadio Nou Camp', 9),
(61, 'Guadalajara', 'Estadio Jalisco', 9),
(62, 'Toluca', 'Estadio Luis Gutiérrez Dosal', 9);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `eliminaciondirecta`
--
ALTER TABLE `eliminaciondirecta`
  ADD PRIMARY KEY (`ideliminaciondirecta`,`mundial_idmundial`),
  ADD KEY `fk_eliminaciondirecta_mundial1` (`mundial_idmundial`);

--
-- Indices de la tabla `equiposparticipantes`
--
ALTER TABLE `equiposparticipantes`
  ADD PRIMARY KEY (`idequiposparticipantes`,`mundial_idmundial`),
  ADD KEY `fk_equiposparticipantes_mundial1` (`mundial_idmundial`);

--
-- Indices de la tabla `goleadores`
--
ALTER TABLE `goleadores`
  ADD PRIMARY KEY (`idgoleadores`,`mundial_idmundial`),
  ADD KEY `fk_goleadores_mundial1` (`mundial_idmundial`);

--
-- Indices de la tabla `grupos`
--
ALTER TABLE `grupos`
  ADD PRIMARY KEY (`idgrupos`,`porgrupos_idporgrupos`,`equiposparticipantes_idequiposparticipantes`),
  ADD KEY `fk_grupos_porgrupos1` (`porgrupos_idporgrupos`),
  ADD KEY `fk_grupos_equiposparticipantes1` (`equiposparticipantes_idequiposparticipantes`);

--
-- Indices de la tabla `mundial`
--
ALTER TABLE `mundial`
  ADD PRIMARY KEY (`idmundial`);

--
-- Indices de la tabla `podio`
--
ALTER TABLE `podio`
  ADD PRIMARY KEY (`idpodio`,`mundial_idmundial`),
  ADD KEY `fk_podio_mundial1` (`mundial_idmundial`);

--
-- Indices de la tabla `porgrupos`
--
ALTER TABLE `porgrupos`
  ADD PRIMARY KEY (`idporgrupos`,`mundial_idmundial`),
  ADD KEY `fk_porgrupos_mundial1` (`mundial_idmundial`);

--
-- Indices de la tabla `sedes`
--
ALTER TABLE `sedes`
  ADD PRIMARY KEY (`idsedes`,`mundial_idmundial`),
  ADD KEY `fk_sedes_mundial1` (`mundial_idmundial`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `eliminaciondirecta`
--
ALTER TABLE `eliminaciondirecta`
  MODIFY `ideliminaciondirecta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `equiposparticipantes`
--
ALTER TABLE `equiposparticipantes`
  MODIFY `idequiposparticipantes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=139;

--
-- AUTO_INCREMENT de la tabla `goleadores`
--
ALTER TABLE `goleadores`
  MODIFY `idgoleadores` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT de la tabla `grupos`
--
ALTER TABLE `grupos`
  MODIFY `idgrupos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT de la tabla `mundial`
--
ALTER TABLE `mundial`
  MODIFY `idmundial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT de la tabla `podio`
--
ALTER TABLE `podio`
  MODIFY `idpodio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT de la tabla `porgrupos`
--
ALTER TABLE `porgrupos`
  MODIFY `idporgrupos` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `sedes`
--
ALTER TABLE `sedes`
  MODIFY `idsedes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `eliminaciondirecta`
--
ALTER TABLE `eliminaciondirecta`
  ADD CONSTRAINT `fk_eliminaciondirecta_mundial1` FOREIGN KEY (`mundial_idmundial`) REFERENCES `mundial` (`idmundial`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `equiposparticipantes`
--
ALTER TABLE `equiposparticipantes`
  ADD CONSTRAINT `fk_equiposparticipantes_mundial1` FOREIGN KEY (`mundial_idmundial`) REFERENCES `mundial` (`idmundial`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `goleadores`
--
ALTER TABLE `goleadores`
  ADD CONSTRAINT `fk_goleadores_mundial1` FOREIGN KEY (`mundial_idmundial`) REFERENCES `mundial` (`idmundial`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `grupos`
--
ALTER TABLE `grupos`
  ADD CONSTRAINT `fk_grupos_equiposparticipantes1` FOREIGN KEY (`equiposparticipantes_idequiposparticipantes`) REFERENCES `equiposparticipantes` (`idequiposparticipantes`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_grupos_porgrupos1` FOREIGN KEY (`porgrupos_idporgrupos`) REFERENCES `porgrupos` (`idporgrupos`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `podio`
--
ALTER TABLE `podio`
  ADD CONSTRAINT `fk_podio_mundial1` FOREIGN KEY (`mundial_idmundial`) REFERENCES `mundial` (`idmundial`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `porgrupos`
--
ALTER TABLE `porgrupos`
  ADD CONSTRAINT `fk_porgrupos_mundial1` FOREIGN KEY (`mundial_idmundial`) REFERENCES `mundial` (`idmundial`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `sedes`
--
ALTER TABLE `sedes`
  ADD CONSTRAINT `fk_sedes_mundial1` FOREIGN KEY (`mundial_idmundial`) REFERENCES `mundial` (`idmundial`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
