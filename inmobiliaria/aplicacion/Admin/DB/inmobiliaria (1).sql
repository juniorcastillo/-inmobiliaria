-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-04-2017 a las 10:40:02
-- Versión del servidor: 10.1.21-MariaDB
-- Versión de PHP: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inmobiliaria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagen`
--

CREATE TABLE `imagen` (
  `id` int(11) NOT NULL,
  `nombre_img` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `prioridad` int(11) NOT NULL,
  `id_inmueble` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `imagen`
--

INSERT INTO `imagen` (`id`, `nombre_img`, `prioridad`, `id_inmueble`) VALUES
(1, './image/casa1.jpg', 2, 26),
(4, './image/3.jpg', 2, 27),
(5, './image/8.jpg', 2, 29),
(6, './image/5.jpg', 2, 29),
(7, './image/6.jpg', 2, 29),
(8, './image/7.jpg', 2, 29),
(9, './image/CAD.jpg', 2, 26),
(10, './image/casa3.jpg', 2, 26),
(12, './image/CAD.jpg', 2, 29);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inmueble`
--

CREATE TABLE `inmueble` (
  `idinmueble` int(11) NOT NULL,
  `fecha` date NOT NULL,
  `precio` int(11) NOT NULL,
  `direccion` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `operacion` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `provincia` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `idtipo` int(11) NOT NULL,
  `visita` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `inmueble`
--

INSERT INTO `inmueble` (`idinmueble`, `fecha`, `precio`, `direccion`, `operacion`, `provincia`, `idtipo`, `visita`) VALUES
(26, '2017-03-01', 500, 'Los alcarrizos/ Invi', 'Venta', 'Santo Domingo', 4, 1),
(27, '2017-10-03', 106, 'La calle primera', 'Alquiler', 'Malaga', 2, 3),
(28, '2017-01-08', 106, 'Mi casa', 'Alquiler', 'Malaga', 2, 0),
(29, '2017-12-01', 2000000, 'Mi casa', 'Alquiler', 'Malaga', 2, 0),
(30, '2017-12-01', 2000000, 'Mi casa', 'Alquiler', 'Malaga', 2, 1),
(31, '2017-01-12', 300, 'malaga', 'xvbxx', 'xcvxc', 2, 5),
(32, '2017-01-12', 2, 'vcx', 'VEnta', 'xcvxcv', 2, 0),
(33, '0000-00-00', 0, '', '', '', 1, 0),
(42, '2017-01-06', 10000, 'Santo Domingo', 'Alquiler', 'Malaga', 1, 0),
(43, '2017-01-05', 101, 'ssfd', 'sdfas', 'fsdf', 1, 0),
(44, '2017-04-20', 500, 'pepe calle', 'asdasd', 'asdasda', 2, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `listavisita`
--

CREATE TABLE `listavisita` (
  `idlistavisita` int(11) NOT NULL,
  `idvisita` int(11) NOT NULL,
  `idinmueble` int(11) NOT NULL,
  `numero` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo`
--

CREATE TABLE `tipo` (
  `idtipo` int(11) NOT NULL,
  `nombre` varchar(150) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipo`
--

INSERT INTO `tipo` (`idtipo`, `nombre`) VALUES
(1, 'Apartamento'),
(2, 'Chalet'),
(3, 'Estudio'),
(4, 'Piso');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `direccion` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `telefono` int(9) NOT NULL,
  `fecha_alta` date NOT NULL,
  `email` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `rol` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `password`, `direccion`, `telefono`, `fecha_alta`, `email`, `rol`) VALUES
(0, 'Junior Miguel', '$2y$10$2nLqWGx3EOEwIbzYyVQ7XOujxxaci9Qp31f5FTIQtXOgvVlwt9W1e', 'Calle por casa', 546598745, '2006-05-06', 'junior--45@hotmail.com', 1),
(2, 'pepito', '$2y$10$KU9PvgeAB23cfmXt4YqzYuw0W0JYw2430E1bgQ42Yfr6uIP8baCsa', 'mi casa', 1234567898, '2017-03-02', 'parita@hotmail.com', 2),
(3, 'Jhoseline Albania', '$2y$10$EqejIXr3bUAhFLUGhKjW6u83Ut6R4EY21JZ3vhMluEEzEHo9AQPmK', 'En su casa', 123456789, '2017-03-16', 'jhoseline@hotmail.com', 2),
(4, 'pepe', '$2y$10$LaR/6wENi6dSeossCqqQ0exVjDfE2xGJ8xERWyIDemb6XjkgR7WyG', 'Calle pepe', 123456789, '2017-03-06', 'pepe@pepe.com', 2),
(5, 'pepito', '$2y$10$pdqfr3BJbFRL6MEEQzDRnOBLkcvRAUCeIi7f1O7rnGQ7fDei/VqU6', 'mi casita', 1234567898, '2017-04-12', 'pito@pito.com', 2),
(7, 'Luis Daniel', '$2y$10$B7I8u9ScagImeKhWk1H1iOb8nH4wBHcFC3QYjzYZYgYf78GzFep8a', 'mi casa', 1234567898, '2017-04-06', 'luis@hotmail.com', 2),
(16, 'Miguel Angel Castillo Santana', '$2y$10$AXEz/0I0LvUI4AGVXtAe7.F3hMoKUZtGXFRvnN2trCmXohd9d9cdG', 'C/ invi Los Alcarrizos', 123456789, '2017-04-12', 'miguel@hotmail.com', 2),
(17, 'caquita seca', '$2y$10$2q8Wevf72dUfu4Lo0B4KaOMUo6AW831m11auidjhhXcqZPgW9ZAlm', 'caquita calle mojon', 1235658779, '2017-04-07', 'caca@caca.com', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `visita`
--

CREATE TABLE `visita` (
  `idvisita` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `confirmada` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_inmueble` (`id_inmueble`);

--
-- Indices de la tabla `inmueble`
--
ALTER TABLE `inmueble`
  ADD PRIMARY KEY (`idinmueble`),
  ADD KEY `idtipo` (`idtipo`);

--
-- Indices de la tabla `listavisita`
--
ALTER TABLE `listavisita`
  ADD PRIMARY KEY (`idlistavisita`),
  ADD KEY `idvisita` (`idvisita`),
  ADD KEY `idinmueble` (`idinmueble`);

--
-- Indices de la tabla `tipo`
--
ALTER TABLE `tipo`
  ADD PRIMARY KEY (`idtipo`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `visita`
--
ALTER TABLE `visita`
  ADD PRIMARY KEY (`idvisita`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `imagen`
--
ALTER TABLE `imagen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT de la tabla `inmueble`
--
ALTER TABLE `inmueble`
  MODIFY `idinmueble` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;
--
-- AUTO_INCREMENT de la tabla `listavisita`
--
ALTER TABLE `listavisita`
  MODIFY `idlistavisita` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `tipo`
--
ALTER TABLE `tipo`
  MODIFY `idtipo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT de la tabla `visita`
--
ALTER TABLE `visita`
  MODIFY `idvisita` int(11) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `imagen`
--
ALTER TABLE `imagen`
  ADD CONSTRAINT `imagen_ibfk_1` FOREIGN KEY (`id_inmueble`) REFERENCES `inmueble` (`idinmueble`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Filtros para la tabla `inmueble`
--
ALTER TABLE `inmueble`
  ADD CONSTRAINT `inmueble_ibfk_1` FOREIGN KEY (`idtipo`) REFERENCES `tipo` (`idtipo`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `listavisita`
--
ALTER TABLE `listavisita`
  ADD CONSTRAINT `listavisita_ibfk_1` FOREIGN KEY (`idvisita`) REFERENCES `visita` (`idvisita`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `listavisita_ibfk_2` FOREIGN KEY (`idinmueble`) REFERENCES `inmueble` (`idinmueble`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
