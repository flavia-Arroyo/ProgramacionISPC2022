-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-08-2022 a las 14:23:27
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
-- Base de datos: `peluqueria_canina`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dueno`
--

CREATE TABLE `dueno` (
  `DNI` int(11) NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Apellido` varchar(20) NOT NULL,
  `Telefono` varchar(45) NOT NULL,
  `Direccion` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `dueno`
--

INSERT INTO `dueno` (`DNI`, `Nombre`, `Apellido`, `Telefono`, `Direccion`) VALUES
(4567899, 'Micaela', 'Reyes', '155238965', 'colon 1278'),
(23895634, 'Pedro', 'Altamira', '15378490', 'sarmiento 2348'),
(26738292, 'María', 'Perez', '157283920', 'paisandu 1234'),
(27453678, 'Jose', 'Pimentel', '155378102', 'valparaiso 2349'),
(34678943, 'Luciana', 'Miranda', '15277890', 'contursi 3278'),
(37892901, 'Pedro', 'Luna', '157129765', 'disepolo 1256');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE `historial` (
  `ID_Historial` int(11) NOT NULL,
  `Fecha` date NOT NULL,
  `Perro` int(11) NOT NULL,
  `Descripcion` varchar(200) NOT NULL,
  `Monto` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `historial`
--

INSERT INTO `historial` (`ID_Historial`, `Fecha`, `Perro`, `Descripcion`, `Monto`) VALUES
(1, '2015-07-13', 3, ' lavado', '3000'),
(2, '2017-05-10', 1, ' lavado', '3000'),
(3, '2018-06-16', 3, 'lavado y corte', '4600'),
(4, '2018-02-20', 7, 'lavado y corte', '4600'),
(5, '2019-05-06', 8, 'sepillado', '5000'),
(6, '2020-02-20', 5, 'desparacitar', '7000'),
(7, '2021-05-11', 2, 'lavado y corte', '4600'),
(8, '2021-03-26', 4, 'sepillado', '5000'),
(9, '2022-04-21', 1, 'desparatizar', '7000'),
(10, '2022-05-14', 2, 'desparatizar', '7000'),
(11, '2022-08-14', 6, 'desparatizar', '7000'),
(12, '2020-05-12', 7, 'sepillado', '5000');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perro`
--

CREATE TABLE `perro` (
  `ID_Perro` int(11) NOT NULL,
  `Nombre` varchar(10) NOT NULL,
  `Fecha_nac` date NOT NULL,
  `Sexo` varchar(10) NOT NULL,
  `DNI_dueno` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `perro`
--

INSERT INTO `perro` (`ID_Perro`, `Nombre`, `Fecha_nac`, `Sexo`, `DNI_dueno`) VALUES
(1, 'Luli', '2020-09-10', 'hembra', 23895634),
(2, 'Tobi', '2017-06-04', 'macho', 27453678),
(3, 'Buqui', '2015-01-01', 'hembra', 23895634),
(4, 'Inu', '2021-11-25', 'hembra', 4567899),
(5, 'tomas', '2014-12-20', 'macho', 26738292),
(6, 'nacho', '2013-06-26', 'macho', 27453678),
(7, 'lalu', '2017-03-13', 'hembra', 34678943),
(8, 'nunu', '2020-09-01', 'hembra', 37892901);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `dueno`
--
ALTER TABLE `dueno`
  ADD PRIMARY KEY (`DNI`);

--
-- Indices de la tabla `historial`
--
ALTER TABLE `historial`
  ADD PRIMARY KEY (`ID_Historial`),
  ADD KEY `Perro` (`Perro`);

--
-- Indices de la tabla `perro`
--
ALTER TABLE `perro`
  ADD PRIMARY KEY (`ID_Perro`),
  ADD KEY `perro_ibfk_1` (`DNI_dueno`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `historial`
--
ALTER TABLE `historial`
  MODIFY `ID_Historial` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `perro`
--
ALTER TABLE `perro`
  MODIFY `ID_Perro` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `historial`
--
ALTER TABLE `historial`
  ADD CONSTRAINT `historial_ibfk_1` FOREIGN KEY (`Perro`) REFERENCES `perro` (`ID_Perro`);

--
-- Filtros para la tabla `perro`
--
ALTER TABLE `perro`
  ADD CONSTRAINT `perro_ibfk_1` FOREIGN KEY (`DNI_dueno`) REFERENCES `dueno` (`DNI`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
