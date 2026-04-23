-- Listar todos los géneros disponibles
SELECT * FROM generos;

-- Ver todos los tipos de maniquíes
SELECT id, nombre, articulado
FROM tipos;

-- Mostrar todas las especies registradas
SELECT nombre, descripcion
FROM especies;

-- Listar los colores de piel disponibles
SELECT nombre, codigo_hex
FROM colores_piel;

-- Ver todos los materiales con su costo por kg
SELECT nombre, costo_por_kg
FROM materiales;

-- Listar todas las cabezas con su código y costo
SELECT codigo, costo
FROM cabezas;

-- Mostrar todos los torsos con su material y color
SELECT codigo, material_id, color_id
FROM torsos;

-- Listar todos los brazos indicando lado y costo
SELECT codigo, lado, costo
FROM brazos;

-- Ver todas las piernas indicando lado y costo
SELECT codigo, lado, costo
FROM piernas;

-- Mostrar todos los clientes registrados
SELECT nombre, telefono, direccion, email
FROM clientes;

-- Ver todos los pedidos con fecha y cantidad
SELECT id, cliente_id, fecha_pedido, cantidad_unidades
FROM pedidos;

-- Listar todos los maniquíes con número de serie y fecha de fabricación
SELECT numero_serie, fecha_fabricacion
FROM maniquies;
-- Clientes con sus pedidos
SELECT c.nombre, p.id AS pedido_id, p.fecha_pedido, p.estado
FROM clientes c
JOIN pedidos p ON c.id = p.cliente_id;

-- Maniquíes con género, tipo y especie
SELECT m.numero_serie, g.nombre AS genero, t.nombre AS tipo, e.nombre AS especie
FROM maniquies m
JOIN generos g ON m.genero_id = g.id
JOIN tipos t ON m.tipo_id = t.id
JOIN especies e ON m.especie_id = e.id;

-- Maniquíes con color de piel y fecha de fabricación
SELECT m.numero_serie, cp.nombre AS color_piel, m.fecha_fabricacion
FROM maniquies m
JOIN colores_piel cp ON m.color_piel_id = cp.id;

-- Maniquíes con materiales de sus cabezas
SELECT m.numero_serie, ca.codigo AS cabeza, ma.nombre AS material
FROM maniquies m
JOIN cabezas ca ON m.cabeza_id = ca.id
JOIN materiales ma ON ca.material_id = ma.id;

-- Pedidos con cliente y cantidad de unidades
SELECT p.id, c.nombre, p.cantidad_unidades, p.estado
FROM pedidos p
JOIN clientes c ON p.cliente_id = c.id;

-- Maniquíes con piezas completas (torso, brazos y piernas)
SELECT m.numero_serie, to.codigo AS torso, bi.codigo AS brazo_izq, bd.codigo AS brazo_der,
       pi.codigo AS pierna_izq, pd.codigo AS pierna_der
FROM maniquies m
JOIN torsos to ON m.torso_id = to.id
JOIN brazos bi ON m.brazo_izq_id = bi.id
JOIN brazos bd ON m.brazo_der_id = bd.id
JOIN piernas pi ON m.pierna_izq_id = pi.id
JOIN piernas pd ON m.pierna_der_id = pd.id;

-- Clientes con pedidos y maniquíes asociados
SELECT c.nombre, p.id AS pedido_id, m.numero_serie, m.fecha_fabricacion
FROM clientes c
JOIN pedidos p ON c.id = p.cliente_id
JOIN maniquies m ON p.id = m.pedido_id;
