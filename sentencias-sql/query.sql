-- Listado de Stock: Piernas lado derecho
SELECT numero_serie, material, color
FROM piezas
WHERE tipo = 'Pierna' AND lado = 'Derecha';

-- Cabezas por fechas: fabricadas después de una fecha específica
SELECT *
FROM piezas
WHERE tipo = 'Cabeza' AND fecha_fabricacion > '2026-01-01';

-- Modelos por talla: torsos con talle 'Mediano' o 'Largo', ordenados por material
SELECT *
FROM piezas
WHERE tipo = 'Torso' AND talle IN ('Mediano','Largo')
ORDER BY material ASC;

-- Conteo de Materiales: cuántas piezas hay agrupadas por material
SELECT material, COUNT(*) AS cantidad
FROM piezas
GROUP BY material;

-- Consulta de Ensamble: maniquí completo con fecha y cabeza asignada
SELECT mt.numero_serie AS maniqui_codigo,
       mt.fecha_fabricacion AS fecha_ensamblaje,
       p.numero_serie AS cabeza_serie
FROM maniquies_terminados mt
JOIN ensamblaje e ON mt.id = e.maniqui_id
JOIN piezas p ON e.pieza_id = p.id
WHERE p.tipo = 'Cabeza';

-- Disponibilidad Personalizada: piezas con color/acabado específico
SELECT *
FROM piezas
WHERE color = 'Negro Mate';
