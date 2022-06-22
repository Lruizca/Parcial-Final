-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-06-2022 a las 20:12:30
-- Versión del servidor: 10.4.24-MariaDB
-- Versión de PHP: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `parcialfinal`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `pais` varchar(30) NOT NULL,
  `capital` varchar(30) NOT NULL,
  `idioma` varchar(30) NOT NULL,
  `poblacion` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`pais`, `capital`, `idioma`, `poblacion`) VALUES
('Argentina', 'Buenos Aires', 'Espanol', 45380000),
('Brasil', 'Brasilia', 'Portugues', 212559409),
('Colombia', 'Bogota', 'Espanol', 51049000),
('Estados Unidos', 'Washington', 'Ingles', 332183000),
('Finlandia', 'Helsinki', 'Sueco', 5533793),
('Italia', 'Roma', 'Italiano', 59236213),
('Noruega', 'Oslo', 'noruego', 5391369),
('Paises Bajos', 'amsterdam', 'neerlandes', 17475415),
('Panama', 'panama', 'espanol', 4279000),
('Portugal', 'lisboa', 'portugues', 10298252);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
