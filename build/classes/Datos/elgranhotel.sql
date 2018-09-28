-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-09-2018 a las 04:58:28
-- Versión del servidor: 10.1.35-MariaDB
-- Versión de PHP: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `elgranhotel`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `habitaciones`
--

CREATE TABLE `habitaciones` (
  `id` int(11) NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `numero` int(11) NOT NULL,
  `piso` int(11) NOT NULL,
  `disponible` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `huespedes`
--

CREATE TABLE `huespedes` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `dni` varchar(10) NOT NULL,
  `domicilio` varchar(100) NOT NULL,
  `correo` varchar(50) NOT NULL,
  `telefono` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reservas`
--

CREATE TABLE `reservas` (
  `id` int(11) NOT NULL,
  `id_huesped` int(11) NOT NULL,
  `id_habitacion` int(11) NOT NULL,
  `fecha_entrada` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `fecha_salida` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `cantidad_personas` int(11) NOT NULL,
  `importe` decimal(10,0) NOT NULL,
  `activa` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_habitacion`
--

CREATE TABLE `tipos_habitacion` (
  `id` int(11) NOT NULL,
  `tipo` varchar(255) NOT NULL,
  `capacidad` int(11) NOT NULL,
  `camas` int(11) NOT NULL,
  `tipo_cama` varchar(255) NOT NULL,
  `precio` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_tipos` (`id_tipo`),
  ADD KEY `id_tipos_2` (`id_tipo`);

--
-- Indices de la tabla `huespedes`
--
ALTER TABLE `huespedes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reservas`
--
ALTER TABLE `reservas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_huesped` (`id_huesped`),
  ADD KEY `id_habitaciones` (`id_habitacion`);

--
-- Indices de la tabla `tipos_habitacion`
--
ALTER TABLE `tipos_habitacion`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `huespedes`
--
ALTER TABLE `huespedes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reservas`
--
ALTER TABLE `reservas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tipos_habitacion`
--
ALTER TABLE `tipos_habitacion`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `habitaciones`
--
ALTER TABLE `habitaciones`
  ADD CONSTRAINT `habitaciones_ibfk_1` FOREIGN KEY (`id`) REFERENCES `reservas` (`id_habitacion`);

--
-- Filtros para la tabla `huespedes`
--
ALTER TABLE `huespedes`
  ADD CONSTRAINT `huespedes_ibfk_1` FOREIGN KEY (`id`) REFERENCES `reservas` (`id_huesped`);

--
-- Filtros para la tabla `tipos_habitacion`
--
ALTER TABLE `tipos_habitacion`
  ADD CONSTRAINT `tipos_habitacion_ibfk_1` FOREIGN KEY (`id`) REFERENCES `habitaciones` (`id_tipo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
