USE fabrica_maniquies;

-- ESPECIES
INSERT INTO especies (nombre) VALUES ('Humano'), ('Canino'), ('Felino');

-- SEXOS
INSERT INTO sexos (nombre) VALUES ('Masculino'), ('Femenino'), ('Macho'), ('Hembra'), ('Unisex');

-- RANGOS ETARIOS
INSERT INTO rangos_etarios (nombre) VALUES ('Adulto'), ('Niño/a'), ('Cachorro');

-- TIPOS DE PIEZA
INSERT INTO tipos_pieza (nombre) VALUES 
('Cabeza'), ('Torso'), ('Brazo Derecho'), 
('Brazo Izquierdo'), ('Pierna Derecha'), ('Pierna Izquierda'), ('Cola');

-- MODELOS
INSERT INTO modelos (nombre_modelo, especie_id, sexo_id, rango_id, material_principal) VALUES
('Maniquí Mujer Alta Costura', 1, 2, 1, 'Fibra de Vidrio'),
('Maniquí Hombre Clásico',    1, 1, 1, 'Fibra de Vidrio'),
('Maniquí Niña',              1, 2, 2, 'Plástico Reforzado'),
('Maniquí Niño',              1, 1, 2, 'Plástico Reforzado'),
('Exhibidor Pastor Alemán',   2, 3, 1, 'Resina');

-- CLIENTES
INSERT INTO clientes (nombre, email, telefono) VALUES
('Tienda Moda Tandil',   'contacto@modatandil.com', '2494112233'),
('Veterinaria El Lazo',  'consultas@ellazo.ar',     '2494556677'),
('Boutique Los Chicos',  'ventas@loschicos.com',    '1144332211');

-- ─────────────────────────────────────────
-- PIEZAS STOCK
-- 10 cabezas (tipo_id=1), 10 torsos (tipo_id=2),
-- 10 brazos der (tipo_id=3), 10 brazos izq (tipo_id=4)
-- 10 piernas der (tipo_id=5), 10 piernas izq (tipo_id=6)
-- ─────────────────────────────────────────

-- CABEZAS (tipo_id = 1)
INSERT INTO piezas_stock (tipo_id, modelo_id, color, fecha_fabricacion, estado) VALUES
(1, 1, 'Blanco Mate',   '2026-01-10', 'Disponible'),
(1, 1, 'Blanco Mate',   '2026-01-10', 'Disponible'),
(1, 2, 'Beige',         '2026-01-11', 'Disponible'),
(1, 2, 'Beige',         '2026-01-11', 'Disponible'),
(1, 3, 'Rosa Claro',    '2026-01-12', 'Disponible'),
(1, 3, 'Rosa Claro',    '2026-01-12', 'Disponible'),
(1, 4, 'Azul Claro',    '2026-01-13', 'Disponible'),
(1, 4, 'Azul Claro',    '2026-01-13', 'Disponible'),
(1, 5, 'Gris Oscuro',   '2026-01-14', 'Disponible'),
(1, 5, 'Gris Oscuro',   '2026-01-14', 'Disponible');

-- TORSOS (tipo_id = 2)
INSERT INTO piezas_stock (tipo_id, modelo_id, color, fecha_fabricacion, estado) VALUES
(2, 1, 'Blanco Mate',   '2026-01-10', 'Disponible'),
(2, 1, 'Blanco Mate',   '2026-01-10', 'Disponible'),
(2, 2, 'Beige',         '2026-01-11', 'Disponible'),
(2, 2, 'Beige',         '2026-01-11', 'Disponible'),
(2, 3, 'Rosa Claro',    '2026-01-12', 'Disponible'),
(2, 3, 'Rosa Claro',    '2026-01-12', 'Disponible'),
(2, 4, 'Azul Claro',    '2026-01-13', 'Disponible'),
(2, 4, 'Azul Claro',    '2026-01-13', 'Disponible'),
(2, 5, 'Gris Oscuro',   '2026-01-14', 'Disponible'),
(2, 5, 'Gris Oscuro',   '2026-01-14', 'Disponible');

-- BRAZOS DERECHOS (tipo_id = 3)
INSERT INTO piezas_stock (tipo_id, modelo_id, color, fecha_fabricacion, estado) VALUES
(3, 1, 'Blanco Mate',   '2026-01-10', 'Disponible'),
(3, 1, 'Blanco Mate',   '2026-01-10', 'Disponible'),
(3, 2, 'Beige',         '2026-01-11', 'Disponible'),
(3, 2, 'Beige',         '2026-01-11', 'Disponible'),
(3, 3, 'Rosa Claro',    '2026-01-12', 'Disponible'),
(3, 3, 'Rosa Claro',    '2026-01-12', 'Disponible'),
(3, 4, 'Azul Claro',    '2026-01-13', 'Disponible'),
(3, 4, 'Azul Claro',    '2026-01-13', 'Disponible'),
(3, 5, 'Gris Oscuro',   '2026-01-14', 'Disponible'),
(3, 5, 'Gris Oscuro',   '2026-01-14', 'Disponible');

-- BRAZOS IZQUIERDOS (tipo_id = 4)
INSERT INTO piezas_stock (tipo_id, modelo_id, color, fecha_fabricacion, estado) VALUES
(4, 1, 'Blanco Mate',   '2026-01-10', 'Disponible'),
(4, 1, 'Blanco Mate',   '2026-01-10', 'Disponible'),
(4, 2, 'Beige',         '2026-01-11', 'Disponible'),
(4, 2, 'Beige',         '2026-01-11', 'Disponible'),
(4, 3, 'Rosa Claro',    '2026-01-12', 'Disponible'),
(4, 3, 'Rosa Claro',    '2026-01-12', 'Disponible'),
(4, 4, 'Azul Claro',    '2026-01-13', 'Disponible'),
(4, 4, 'Azul Claro',    '2026-01-13', 'Disponible'),
(4, 5, 'Gris Oscuro',   '2026-01-14', 'Disponible'),
(4, 5, 'Gris Oscuro',   '2026-01-14', 'Disponible');

-- PIERNAS DERECHAS (tipo_id = 5)
INSERT INTO piezas_stock (tipo_id, modelo_id, color, fecha_fabricacion, estado) VALUES
(5, 1, 'Blanco Mate',   '2026-01-10', 'Disponible'),
(5, 1, 'Blanco Mate',   '2026-01-10', 'Disponible'),
(5, 2, 'Beige',         '2026-01-11', 'Disponible'),
(5, 2, 'Beige',         '2026-01-11', 'Disponible'),
(5, 3, 'Rosa Claro',    '2026-01-12', 'Disponible'),
(5, 3, 'Rosa Claro',    '2026-01-12', 'Disponible'),
(5, 4, 'Azul Claro',    '2026-01-13', 'Disponible'),
(5, 4, 'Azul Claro',    '2026-01-13', 'Disponible'),
(5, 5, 'Gris Oscuro',   '2026-01-14', 'Disponible'),
(5, 5, 'Gris Oscuro',   '2026-01-14', 'Disponible');

-- PIERNAS IZQUIERDAS (tipo_id = 6)
INSERT INTO piezas_stock (tipo_id, modelo_id, color, fecha_fabricacion, estado) VALUES
(6, 1, 'Blanco Mate',   '2026-01-10', 'Disponible'),
(6, 1, 'Blanco Mate',   '2026-01-10', 'Disponible'),
(6, 2, 'Beige',         '2026-01-11', 'Disponible'),
(6, 2, 'Beige',         '2026-01-11', 'Disponible'),
(6, 3, 'Rosa Claro',    '2026-01-12', 'Disponible'),
(6, 3, 'Rosa Claro',    '2026-01-12', 'Disponible'),
(6, 4, 'Azul Claro',    '2026-01-13', 'Disponible'),
(6, 4, 'Azul Claro',    '2026-01-13', 'Disponible'),
(6, 5, 'Gris Oscuro',   '2026-01-14', 'Disponible'),
(6, 5, 'Gris Oscuro',   '2026-01-14', 'Disponible');

-- ─────────────────────────────────────────
-- 5 MANIQUIES COMPLETOS
-- ─────────────────────────────────────────
INSERT INTO maniquies_terminados (nro_serie, modelo_id, fecha_ensamblado, costo_produccion) VALUES
('MQ-2026-001', 1, '2026-02-01', 15000.00),
('MQ-2026-002', 2, '2026-02-05', 14000.00),
('MQ-2026-003', 3, '2026-02-10', 8000.00),
('MQ-2026-004', 4, '2026-02-15', 8500.00),
('MQ-2026-005', 5, '2026-02-20', 12000.00);

-- ─────────────────────────────────────────
-- ENSAMBLAJE: vincula cada maniquí con sus piezas
-- Maniquí 1 (id=1): piezas 1,11,21,31,41,51
-- Maniquí 2 (id=2): piezas 3,13,23,33,43,53
-- Maniquí 3 (id=3): piezas 5,15,25,35,45,55
-- Maniquí 4 (id=4): piezas 7,17,27,37,47,57
-- Maniquí 5 (id=5): piezas 9,19,29,39,49,59
-- ─────────────────────────────────────────
INSERT INTO ensamblaje (maniqui_id, pieza_id) VALUES
-- Maniquí 1
(1, 1), (1, 11), (1, 21), (1, 31), (1, 41), (1, 51),
-- Maniquí 2
(2, 3), (2, 13), (2, 23), (2, 33), (2, 43), (2, 53),
-- Maniquí 3
(3, 5), (3, 15), (3, 25), (3, 35), (3, 45), (3, 55),
-- Maniquí 4
(4, 7), (4, 17), (4, 27), (4, 37), (4, 47), (4, 57),
-- Maniquí 5
(5, 9), (5, 19), (5, 29), (5, 39), (5, 49), (5, 59);

-- ACTUALIZAR piezas ensambladas a estado Ensamblada
UPDATE piezas_stock SET estado = 'Ensamblada' 
WHERE id IN (1,11,21,31,41,51,3,13,23,33,43,53,5,15,25,35,45,55,7,17,27,37,47,57,9,19,29,39,49,59);