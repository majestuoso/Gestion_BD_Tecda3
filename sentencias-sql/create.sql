CREATE DATABASE IF NOT EXISTS fabrica_maniquies;
USE fabrica_maniquies;

CREATE TABLE `clientes` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefono` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `especies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `sexos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `rangos_etarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `tipos_pieza` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `modelos` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nombre_modelo` varchar(100) NOT NULL,
  `especie_id` int DEFAULT NULL,
  `sexo_id` int DEFAULT NULL,
  `rango_id` int DEFAULT NULL,
  `material_principal` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `modelos_ibfk_1` FOREIGN KEY (`especie_id`) REFERENCES `especies` (`id`),
  CONSTRAINT `modelos_ibfk_2` FOREIGN KEY (`sexo_id`) REFERENCES `sexos` (`id`),
  CONSTRAINT `modelos_ibfk_3` FOREIGN KEY (`rango_id`) REFERENCES `rangos_etarios` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `maniquies_terminados` (
  `id` int NOT NULL AUTO_INCREMENT,
  `nro_serie` varchar(50) DEFAULT NULL,
  `modelo_id` int DEFAULT NULL,
  `fecha_ensamblado` date DEFAULT NULL,
  `costo_produccion` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nro_serie` (`nro_serie`),
  CONSTRAINT `maniquies_terminados_ibfk_1` FOREIGN KEY (`modelo_id`) REFERENCES `modelos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `piezas_stock` (
  `id` int NOT NULL AUTO_INCREMENT,
  `tipo_id` int DEFAULT NULL,
  `modelo_id` int DEFAULT NULL,
  `color` varchar(50) DEFAULT NULL,
  `fecha_fabricacion` date DEFAULT NULL,
  `estado` enum('Disponible','Dañada','Ensamblada') DEFAULT 'Disponible',
  PRIMARY KEY (`id`),
  CONSTRAINT `piezas_stock_ibfk_1` FOREIGN KEY (`tipo_id`) REFERENCES `tipos_pieza` (`id`),
  CONSTRAINT `piezas_stock_ibfk_2` FOREIGN KEY (`modelo_id`) REFERENCES `modelos` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `ensamblaje` (
  `maniqui_id` int NOT NULL,
  `pieza_id` int NOT NULL,
  PRIMARY KEY (`maniqui_id`, `pieza_id`),
  CONSTRAINT `ensamblaje_ibfk_1` FOREIGN KEY (`maniqui_id`) REFERENCES `maniquies_terminados` (`id`),
  CONSTRAINT `ensamblaje_ibfk_2` FOREIGN KEY (`pieza_id`) REFERENCES `piezas_stock` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `ventas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `cliente_id` int DEFAULT NULL,
  `fecha_venta` datetime DEFAULT CURRENT_TIMESTAMP,
  `total_venta` decimal(10,2) DEFAULT NULL,
  `metodo_pago` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE `detalle_ventas` (
  `venta_id` int NOT NULL,
  `maniqui_id` int NOT NULL,
  `precio_aplicado` decimal(10,2) DEFAULT NULL,
  PRIMARY KEY (`venta_id`, `maniqui_id`),
  CONSTRAINT `detalle_ventas_ibfk_1` FOREIGN KEY (`venta_id`) REFERENCES `ventas` (`id`),
  CONSTRAINT `detalle_ventas_ibfk_2` FOREIGN KEY (`maniqui_id`) REFERENCES `maniquies_terminados` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;