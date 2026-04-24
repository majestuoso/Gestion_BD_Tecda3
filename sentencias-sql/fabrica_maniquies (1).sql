-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-04-2026 a las 01:26:43
-- Versión del servidor: 8.0.45-0ubuntu0.24.04.1
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `fabrica_maniquies`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ensamblaje`
--

CREATE TABLE `ensamblaje` (
  `id` int NOT NULL,
  `maniqui_id` int NOT NULL,
  `pieza_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `ensamblaje`
--

INSERT INTO `ensamblaje` (`id`, `maniqui_id`, `pieza_id`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 1, 6);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maniquies_terminados`
--

CREATE TABLE `maniquies_terminados` (
  `id` int NOT NULL,
  `numero_serie` varchar(50) NOT NULL,
  `modelo_id` int NOT NULL,
  `fecha_fabricacion` date DEFAULT NULL,
  `costo_total` decimal(10,2) DEFAULT NULL,
  `observaciones` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `maniquies_terminados`
--

INSERT INTO `maniquies_terminados` (`id`, `numero_serie`, `modelo_id`, `fecha_fabricacion`, `costo_total`, `observaciones`) VALUES
(1, 'M001', 1, '2026-04-02', 290.00, 'Primera unidad ensamblada');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelos`
--

CREATE TABLE `modelos` (
  `id` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `descripcion` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `modelos`
--

INSERT INTO `modelos` (`id`, `nombre`, `descripcion`) VALUES
(1, 'Niña', 'Maniquí infantil femenino'),
(2, 'Niño', 'Maniquí infantil masculino'),
(3, 'Adulto Mujer', 'Maniquí adulto femenino'),
(4, 'Adulto Hombre', 'Maniquí adulto masculino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `piezas`
--

CREATE TABLE `piezas` (
  `id` int NOT NULL,
  `tipo` enum('Cabeza','Torso','Brazo','Pierna') NOT NULL,
  `numero_serie` varchar(50) NOT NULL,
  `color` varchar(30) DEFAULT NULL,
  `material` varchar(50) DEFAULT NULL,
  `fecha_fabricacion` date DEFAULT NULL,
  `costo` decimal(10,2) DEFAULT NULL,
  `lado` enum('Izquierda','Derecha') DEFAULT NULL,
  `talle` enum('Corto','Mediano','Largo') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `piezas`
--

INSERT INTO `piezas` (`id`, `tipo`, `numero_serie`, `color`, `material`, `fecha_fabricacion`, `costo`, `lado`, `talle`) VALUES
(1, 'Cabeza', 'C001', 'Beige', 'Plástico', '2026-04-01', 50.00, NULL, NULL),
(2, 'Torso', 'T001', 'Beige', 'Plástico', '2026-04-01', 100.00, NULL, NULL),
(3, 'Brazo', 'B001', 'Beige', 'Plástico', '2026-04-01', 30.00, NULL, NULL),
(4, 'Brazo', 'B002', 'Beige', 'Plástico', '2026-04-01', 30.00, NULL, NULL),
(5, 'Pierna', 'P001', 'Beige', 'Plástico', '2026-04-01', 40.00, NULL, NULL),
(6, 'Pierna', 'P002', 'Beige', 'Plástico', '2026-04-01', 40.00, NULL, NULL),
(17, 'Cabeza', 'C011', 'Beige', 'Plástico', '2026-04-11', 50.00, NULL, NULL),
(18, 'Cabeza', 'C012', 'Blanco', 'Plástico', '2026-04-12', 52.00, NULL, NULL),
(19, 'Cabeza', 'C013', 'Marrón', 'Plástico', '2026-04-13', 51.00, NULL, NULL),
(20, 'Cabeza', 'C014', 'Beige', 'Resina', '2026-04-14', 60.00, NULL, NULL),
(21, 'Cabeza', 'C015', 'Negro', 'Plástico', '2026-04-15', 55.00, NULL, NULL),
(22, 'Cabeza', 'C016', 'Beige', 'Plástico', '2026-04-16', 50.00, NULL, NULL),
(23, 'Cabeza', 'C017', 'Blanco', 'Resina', '2026-04-17', 62.00, NULL, NULL),
(24, 'Cabeza', 'C018', 'Marrón', 'Plástico', '2026-04-18', 53.00, NULL, NULL),
(25, 'Cabeza', 'C019', 'Beige', 'Plástico', '2026-04-19', 50.00, NULL, NULL),
(26, 'Cabeza', 'C020', 'Negro', 'Plástico', '2026-04-20', 55.00, NULL, NULL),
(27, 'Cabeza', 'C021', 'Beige', 'Plástico', '2026-04-21', 50.00, NULL, NULL),
(28, 'Cabeza', 'C022', 'Blanco', 'Plástico', '2026-04-22', 52.00, NULL, NULL),
(29, 'Cabeza', 'C023', 'Marrón', 'Resina', '2026-04-23', 60.00, NULL, NULL),
(30, 'Torso', 'T021', 'Beige', 'Plástico', '2026-04-21', 100.00, NULL, NULL),
(31, 'Torso', 'T022', 'Blanco', 'Plástico', '2026-04-22', 105.00, NULL, NULL),
(32, 'Torso', 'T023', 'Negro', 'Resina', '2026-04-23', 120.00, NULL, NULL),
(33, 'Brazo', 'B021', 'Beige', 'Plástico', '2026-04-21', 30.00, NULL, NULL),
(34, 'Brazo', 'B022', 'Negro', 'Plástico', '2026-04-22', 33.00, NULL, NULL),
(35, 'Brazo', 'B023', 'Blanco', 'Resina', '2026-04-23', 35.00, NULL, NULL),
(36, 'Pierna', 'P021', 'Beige', 'Plástico', '2026-04-21', 40.00, NULL, NULL),
(37, 'Pierna', 'P022', 'Negro', 'Plástico', '2026-04-22', 43.00, NULL, NULL),
(38, 'Pierna', 'P023', 'Blanco', 'Resina', '2026-04-23', 45.00, NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `ensamblaje`
--
ALTER TABLE `ensamblaje`
  ADD PRIMARY KEY (`id`),
  ADD KEY `maniqui_id` (`maniqui_id`),
  ADD KEY `pieza_id` (`pieza_id`);

--
-- Indices de la tabla `maniquies_terminados`
--
ALTER TABLE `maniquies_terminados`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `numero_serie` (`numero_serie`),
  ADD KEY `modelo_id` (`modelo_id`);

--
-- Indices de la tabla `modelos`
--
ALTER TABLE `modelos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `piezas`
--
ALTER TABLE `piezas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `numero_serie` (`numero_serie`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `ensamblaje`
--
ALTER TABLE `ensamblaje`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `maniquies_terminados`
--
ALTER TABLE `maniquies_terminados`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `modelos`
--
ALTER TABLE `modelos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `piezas`
--
ALTER TABLE `piezas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `ensamblaje`
--
ALTER TABLE `ensamblaje`
  ADD CONSTRAINT `ensamblaje_ibfk_1` FOREIGN KEY (`maniqui_id`) REFERENCES `maniquies_terminados` (`id`),
  ADD CONSTRAINT `ensamblaje_ibfk_2` FOREIGN KEY (`pieza_id`) REFERENCES `piezas` (`id`);

--
-- Filtros para la tabla `maniquies_terminados`
--
ALTER TABLE `maniquies_terminados`
  ADD CONSTRAINT `maniquies_terminados_ibfk_1` FOREIGN KEY (`modelo_id`) REFERENCES `modelos` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
