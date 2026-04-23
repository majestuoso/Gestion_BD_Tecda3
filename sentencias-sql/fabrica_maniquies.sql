-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 23-04-2026 a las 15:54:52
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
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id` int NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id`, `nombre`, `email`, `telefono`) VALUES
(1, 'Tienda Moda Tandil', 'contacto@modatandil.com', '2494112233'),
(2, 'Veterinaria El Lazo', 'consultas@ellazo.ar', '2494556677'),
(3, 'Boutique Los Chicos', 'ventas@loschicos.com', '1144332211');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `detalle_ventas`
--

CREATE TABLE `detalle_ventas` (
  `venta_id` int NOT NULL,
  `maniqui_id` int NOT NULL,
  `precio_aplicado` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ensamblaje`
--

CREATE TABLE `ensamblaje` (
  `maniqui_id` int NOT NULL,
  `pieza_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `ensamblaje`
--

INSERT INTO `ensamblaje` (`maniqui_id`, `pieza_id`) VALUES
(1, 1),
(2, 3),
(3, 5),
(4, 7),
(5, 9),
(1, 11),
(2, 13),
(3, 15),
(4, 17),
(5, 19),
(1, 21),
(2, 23),
(3, 25),
(4, 27),
(5, 29),
(1, 31),
(2, 33),
(3, 35),
(4, 37),
(5, 39),
(1, 41),
(2, 43),
(3, 45),
(4, 47),
(5, 49),
(1, 51),
(2, 53),
(3, 55),
(4, 57),
(5, 59);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `especies`
--

CREATE TABLE `especies` (
  `id` int NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `especies`
--

INSERT INTO `especies` (`id`, `nombre`) VALUES
(1, 'Humano'),
(2, 'Canino'),
(3, 'Felino');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `maniquies_terminados`
--

CREATE TABLE `maniquies_terminados` (
  `id` int NOT NULL,
  `nro_serie` varchar(50) DEFAULT NULL,
  `modelo_id` int DEFAULT NULL,
  `fecha_ensamblado` date DEFAULT NULL,
  `costo_produccion` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `maniquies_terminados`
--

INSERT INTO `maniquies_terminados` (`id`, `nro_serie`, `modelo_id`, `fecha_ensamblado`, `costo_produccion`) VALUES
(1, 'MQ-2026-001', 1, '2026-02-01', 15000.00),
(2, 'MQ-2026-002', 2, '2026-02-05', 14000.00),
(3, 'MQ-2026-003', 3, '2026-02-10', 8000.00),
(4, 'MQ-2026-004', 4, '2026-02-15', 8500.00),
(5, 'MQ-2026-005', 5, '2026-02-20', 12000.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `modelos`
--

CREATE TABLE `modelos` (
  `id` int NOT NULL,
  `nombre_modelo` varchar(100) NOT NULL,
  `especie_id` int DEFAULT NULL,
  `sexo_id` int DEFAULT NULL,
  `rango_id` int DEFAULT NULL,
  `material_principal` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `modelos`
--

INSERT INTO `modelos` (`id`, `nombre_modelo`, `especie_id`, `sexo_id`, `rango_id`, `material_principal`) VALUES
(1, 'Maniquí Mujer Alta Costura', 1, 2, 1, 'Fibra de Vidrio'),
(2, 'Maniquí Hombre Clásico', 1, 1, 1, 'Fibra de Vidrio'),
(3, 'Maniquí Niña', 1, 2, 2, 'Plástico Reforzado'),
(4, 'Maniquí Niño', 1, 1, 2, 'Plástico Reforzado'),
(5, 'Exhibidor Pastor Alemán', 2, 3, 1, 'Resina');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `piezas_stock`
--

CREATE TABLE `piezas_stock` (
  `id` int NOT NULL,
  `tipo_id` int DEFAULT NULL,
  `modelo_id` int DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `fecha_fabricacion` date DEFAULT NULL,
  `estado` enum('Disponible','Dañada','Ensamblada') DEFAULT 'Disponible'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `piezas_stock`
--

INSERT INTO `piezas_stock` (`id`, `tipo_id`, `modelo_id`, `color`, `fecha_fabricacion`, `estado`) VALUES
(1, 1, 1, 'Blanco Mate', '2026-01-10', 'Ensamblada'),
(2, 1, 1, 'Blanco Mate', '2026-01-10', 'Disponible'),
(3, 1, 2, 'Beige', '2026-01-11', 'Ensamblada'),
(4, 1, 2, 'Beige', '2026-01-11', 'Disponible'),
(5, 1, 3, 'Rosa Claro', '2026-01-12', 'Ensamblada'),
(6, 1, 3, 'Rosa Claro', '2026-01-12', 'Disponible'),
(7, 1, 4, 'Azul Claro', '2026-01-13', 'Ensamblada'),
(8, 1, 4, 'Azul Claro', '2026-01-13', 'Disponible'),
(9, 1, 5, 'Gris Oscuro', '2026-01-14', 'Ensamblada'),
(10, 1, 5, 'Gris Oscuro', '2026-01-14', 'Disponible'),
(11, 2, 1, 'Blanco Mate', '2026-01-10', 'Ensamblada'),
(12, 2, 1, 'Blanco Mate', '2026-01-10', 'Disponible'),
(13, 2, 2, 'Beige', '2026-01-11', 'Ensamblada'),
(14, 2, 2, 'Beige', '2026-01-11', 'Disponible'),
(15, 2, 3, 'Rosa Claro', '2026-01-12', 'Ensamblada'),
(16, 2, 3, 'Rosa Claro', '2026-01-12', 'Disponible'),
(17, 2, 4, 'Azul Claro', '2026-01-13', 'Ensamblada'),
(18, 2, 4, 'Azul Claro', '2026-01-13', 'Disponible'),
(19, 2, 5, 'Gris Oscuro', '2026-01-14', 'Ensamblada'),
(20, 2, 5, 'Gris Oscuro', '2026-01-14', 'Disponible'),
(21, 3, 1, 'Blanco Mate', '2026-01-10', 'Ensamblada'),
(22, 3, 1, 'Blanco Mate', '2026-01-10', 'Disponible'),
(23, 3, 2, 'Beige', '2026-01-11', 'Ensamblada'),
(24, 3, 2, 'Beige', '2026-01-11', 'Disponible'),
(25, 3, 3, 'Rosa Claro', '2026-01-12', 'Ensamblada'),
(26, 3, 3, 'Rosa Claro', '2026-01-12', 'Disponible'),
(27, 3, 4, 'Azul Claro', '2026-01-13', 'Ensamblada'),
(28, 3, 4, 'Azul Claro', '2026-01-13', 'Disponible'),
(29, 3, 5, 'Gris Oscuro', '2026-01-14', 'Ensamblada'),
(30, 3, 5, 'Gris Oscuro', '2026-01-14', 'Disponible'),
(31, 4, 1, 'Blanco Mate', '2026-01-10', 'Ensamblada'),
(32, 4, 1, 'Blanco Mate', '2026-01-10', 'Disponible'),
(33, 4, 2, 'Beige', '2026-01-11', 'Ensamblada'),
(34, 4, 2, 'Beige', '2026-01-11', 'Disponible'),
(35, 4, 3, 'Rosa Claro', '2026-01-12', 'Ensamblada'),
(36, 4, 3, 'Rosa Claro', '2026-01-12', 'Disponible'),
(37, 4, 4, 'Azul Claro', '2026-01-13', 'Ensamblada'),
(38, 4, 4, 'Azul Claro', '2026-01-13', 'Disponible'),
(39, 4, 5, 'Gris Oscuro', '2026-01-14', 'Ensamblada'),
(40, 4, 5, 'Gris Oscuro', '2026-01-14', 'Disponible'),
(41, 5, 1, 'Blanco Mate', '2026-01-10', 'Ensamblada'),
(42, 5, 1, 'Blanco Mate', '2026-01-10', 'Disponible'),
(43, 5, 2, 'Beige', '2026-01-11', 'Ensamblada'),
(44, 5, 2, 'Beige', '2026-01-11', 'Disponible'),
(45, 5, 3, 'Rosa Claro', '2026-01-12', 'Ensamblada'),
(46, 5, 3, 'Rosa Claro', '2026-01-12', 'Disponible'),
(47, 5, 4, 'Azul Claro', '2026-01-13', 'Ensamblada'),
(48, 5, 4, 'Azul Claro', '2026-01-13', 'Disponible'),
(49, 5, 5, 'Gris Oscuro', '2026-01-14', 'Ensamblada'),
(50, 5, 5, 'Gris Oscuro', '2026-01-14', 'Disponible'),
(51, 6, 1, 'Blanco Mate', '2026-01-10', 'Ensamblada'),
(52, 6, 1, 'Blanco Mate', '2026-01-10', 'Disponible'),
(53, 6, 2, 'Beige', '2026-01-11', 'Ensamblada'),
(54, 6, 2, 'Beige', '2026-01-11', 'Disponible'),
(55, 6, 3, 'Rosa Claro', '2026-01-12', 'Ensamblada'),
(56, 6, 3, 'Rosa Claro', '2026-01-12', 'Disponible'),
(57, 6, 4, 'Azul Claro', '2026-01-13', 'Ensamblada'),
(58, 6, 4, 'Azul Claro', '2026-01-13', 'Disponible'),
(59, 6, 5, 'Gris Oscuro', '2026-01-14', 'Ensamblada'),
(60, 6, 5, 'Gris Oscuro', '2026-01-14', 'Disponible');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rangos_etarios`
--

CREATE TABLE `rangos_etarios` (
  `id` int NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `rangos_etarios`
--

INSERT INTO `rangos_etarios` (`id`, `nombre`) VALUES
(1, 'Adulto'),
(2, 'Niño/a'),
(3, 'Cachorro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sexos`
--

CREATE TABLE `sexos` (
  `id` int NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `sexos`
--

INSERT INTO `sexos` (`id`, `nombre`) VALUES
(1, 'Masculino'),
(2, 'Femenino'),
(3, 'Macho'),
(4, 'Hembra'),
(5, 'Unisex');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipos_pieza`
--

CREATE TABLE `tipos_pieza` (
  `id` int NOT NULL,
  `nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Volcado de datos para la tabla `tipos_pieza`
--

INSERT INTO `tipos_pieza` (`id`, `nombre`) VALUES
(1, 'Cabeza'),
(2, 'Torso'),
(3, 'Brazo Derecho'),
(4, 'Brazo Izquierdo'),
(5, 'Pierna Derecha'),
(6, 'Pierna Izquierda'),
(7, 'Cola');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ventas`
--

CREATE TABLE `ventas` (
  `id` int NOT NULL,
  `cliente_id` int DEFAULT NULL,
  `fecha_venta` datetime DEFAULT CURRENT_TIMESTAMP,
  `total_venta` decimal(10,2) DEFAULT NULL,
  `metodo_pago` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD PRIMARY KEY (`venta_id`,`maniqui_id`),
  ADD KEY `detalle_ventas_ibfk_2` (`maniqui_id`);

--
-- Indices de la tabla `ensamblaje`
--
ALTER TABLE `ensamblaje`
  ADD PRIMARY KEY (`maniqui_id`,`pieza_id`),
  ADD KEY `ensamblaje_ibfk_2` (`pieza_id`);

--
-- Indices de la tabla `especies`
--
ALTER TABLE `especies`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `maniquies_terminados`
--
ALTER TABLE `maniquies_terminados`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nro_serie` (`nro_serie`),
  ADD KEY `maniquies_terminados_ibfk_1` (`modelo_id`);

--
-- Indices de la tabla `modelos`
--
ALTER TABLE `modelos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `modelos_ibfk_1` (`especie_id`),
  ADD KEY `modelos_ibfk_2` (`sexo_id`),
  ADD KEY `modelos_ibfk_3` (`rango_id`);

--
-- Indices de la tabla `piezas_stock`
--
ALTER TABLE `piezas_stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `piezas_stock_ibfk_1` (`tipo_id`),
  ADD KEY `piezas_stock_ibfk_2` (`modelo_id`);

--
-- Indices de la tabla `rangos_etarios`
--
ALTER TABLE `rangos_etarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `sexos`
--
ALTER TABLE `sexos`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `tipos_pieza`
--
ALTER TABLE `tipos_pieza`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ventas_ibfk_1` (`cliente_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `especies`
--
ALTER TABLE `especies`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `maniquies_terminados`
--
ALTER TABLE `maniquies_terminados`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `modelos`
--
ALTER TABLE `modelos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `piezas_stock`
--
ALTER TABLE `piezas_stock`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `rangos_etarios`
--
ALTER TABLE `rangos_etarios`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `sexos`
--
ALTER TABLE `sexos`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `tipos_pieza`
--
ALTER TABLE `tipos_pieza`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `ventas`
--
ALTER TABLE `ventas`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `detalle_ventas`
--
ALTER TABLE `detalle_ventas`
  ADD CONSTRAINT `detalle_ventas_ibfk_1` FOREIGN KEY (`venta_id`) REFERENCES `ventas` (`id`),
  ADD CONSTRAINT `detalle_ventas_ibfk_2` FOREIGN KEY (`maniqui_id`) REFERENCES `maniquies_terminados` (`id`);

--
-- Filtros para la tabla `ensamblaje`
--
ALTER TABLE `ensamblaje`
  ADD CONSTRAINT `ensamblaje_ibfk_1` FOREIGN KEY (`maniqui_id`) REFERENCES `maniquies_terminados` (`id`),
  ADD CONSTRAINT `ensamblaje_ibfk_2` FOREIGN KEY (`pieza_id`) REFERENCES `piezas_stock` (`id`);

--
-- Filtros para la tabla `maniquies_terminados`
--
ALTER TABLE `maniquies_terminados`
  ADD CONSTRAINT `maniquies_terminados_ibfk_1` FOREIGN KEY (`modelo_id`) REFERENCES `modelos` (`id`);

--
-- Filtros para la tabla `modelos`
--
ALTER TABLE `modelos`
  ADD CONSTRAINT `modelos_ibfk_1` FOREIGN KEY (`especie_id`) REFERENCES `especies` (`id`),
  ADD CONSTRAINT `modelos_ibfk_2` FOREIGN KEY (`sexo_id`) REFERENCES `sexos` (`id`),
  ADD CONSTRAINT `modelos_ibfk_3` FOREIGN KEY (`rango_id`) REFERENCES `rangos_etarios` (`id`);

--
-- Filtros para la tabla `piezas_stock`
--
ALTER TABLE `piezas_stock`
  ADD CONSTRAINT `piezas_stock_ibfk_1` FOREIGN KEY (`tipo_id`) REFERENCES `tipos_pieza` (`id`),
  ADD CONSTRAINT `piezas_stock_ibfk_2` FOREIGN KEY (`modelo_id`) REFERENCES `modelos` (`id`);

--
-- Filtros para la tabla `ventas`
--
ALTER TABLE `ventas`
  ADD CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
