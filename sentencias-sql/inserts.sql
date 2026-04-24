-- Insertar modelos
INSERT INTO modelos (nombre, descripcion)
VALUES 
('Niña','Maniquí infantil femenino'),
('Niño','Maniquí infantil masculino'),
('Adulto Mujer','Maniquí adulto femenino'),
('Adulto Hombre','Maniquí adulto masculino');

-- Insertar piezas (ejemplo para un maniquí completo)
INSERT INTO piezas (tipo, numero_serie, color, material, fecha_fabricacion, costo)
VALUES 
('Cabeza','C001','Beige','Plástico','2026-04-01',50.00),
('Torso','T001','Beige','Plástico','2026-04-01',100.00),
('Brazo','B001','Beige','Plástico','2026-04-01',30.00),
('Brazo','B002','Beige','Plástico','2026-04-01',30.00),
('Pierna','P001','Beige','Plástico','2026-04-01',40.00),
('Pierna','P002','Beige','Plástico','2026-04-01',40.00);

-- Insertar un maniquí terminado (ejemplo: modelo Niña)
INSERT INTO maniquies_terminados (numero_serie, modelo_id, fecha_fabricacion, costo_total, observaciones)
VALUES ('M001',1,'2026-04-02',290.00,'Primera unidad ensamblada');

-- Relacionar piezas con el maniquí terminado
INSERT INTO ensamblaje (maniqui_id, pieza_id)
VALUES 
(1,1),(1,2),(1,3),(1,4),(1,5),(1,6);
