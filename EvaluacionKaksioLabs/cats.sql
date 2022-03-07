-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 07-03-2022 a las 22:37:54
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `evaluacionkaksiolabs`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cats`
--

CREATE TABLE `cats` (
  `idCats` int(11) NOT NULL,
  `img_cats` varchar(50) NOT NULL,
  `name_cats` varchar(50) NOT NULL,
  `text_cats` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `cats`
--

INSERT INTO `cats` (`idCats`, `img_cats`, `name_cats`, `text_cats`) VALUES
(1, 'cat1.jpg', 'Asland', 'Hola soy un gato me llamo Asland y vivia en Narnia, me gustan las whiskas y perseguir ratones, en mis tiempos libres molesto a mis hermanos.'),
(2, 'cat2.jpg', 'Cleo', 'Hola yo soy Cleo vivo en Egipto y soy la reina del lugar, me gusta comer escarabajos y que me vistan con gemas de colores en mis tiempos libres me gusta ir a pescar y mirar las pirámides.'),
(3, 'cat3.jpg', 'Kalum', 'Hola soy Kalum soy un gato que le gusta estar mucho en casa vivo en carolina del norte soy fan de Michael Jordan y Bugs Bunny algún dia quiero estar en Space Jam 3.'),
(4, 'cat4.jpg', 'Poncho', 'Hola soy Poncho la verdad no se donde vivo solo me gusta dormir y comer en algunos momentos me paro a jugar pero preferiría estar mas tiempo acostado y comiendo no me gusta la gente.'),
(5, 'cat5.jpg', 'Athena', 'Hola soy Athena y soy una diosa consentida de mi familia me compran todo lo que quiero y me dejan hacer lo que yo quiera me gusta mucho jugar, soy muy activa por las noches.'),
(6, 'cat6.jpg', 'Nyan', 'Hola soy el sueño de los gatos corriendo en el espacio soy muy colorido y me gusta cantar.');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cats`
--
ALTER TABLE `cats`
  ADD PRIMARY KEY (`idCats`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cats`
--
ALTER TABLE `cats`
  MODIFY `idCats` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
