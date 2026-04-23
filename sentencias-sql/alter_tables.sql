--posibles modificaciones a la base de datos para agregar nuevos 
--campos o cambiar tipos de datos. Estas sentencias
-- ALTER TABLE permiten modificar la estructura de las 
--tablas existentes sin perder los datos almacenados.



-- Agregar dirección a clientes
ALTER TABLE clientes 
ADD direccion VARCHAR(200);

-- Agregar precio de venta sugerido a modelos
ALTER TABLE modelos 
ADD precio_sugerido DECIMAL(10,2) DEFAULT 0.00;

-- Agregar peso en kg a piezas_stock
ALTER TABLE piezas_stock 
ADD peso_kg DECIMAL(5,2);

-- Agregar observaciones a maniquies_terminados
ALTER TABLE maniquies_terminados 
ADD observaciones VARCHAR(255);

-- Agregar descuento a ventas
ALTER TABLE ventas 
ADD descuento DECIMAL(5,2) DEFAULT 0.00;

-- Cambiar telefono de clientes de VARCHAR(20) a VARCHAR(30)
ALTER TABLE clientes 
MODIFY telefono VARCHAR(30);

-- Renombrar tabla __ensamblaje__ a ensamblaje (si todavía tiene los guiones)
ALTER TABLE `__ensamblaje__` RENAME TO ensamblaje;

-- Agregar índice en fecha_venta para búsquedas más rápidas
ALTER TABLE ventas 
ADD INDEX idx_fecha_venta (fecha_venta);

-- Agregar cantidad a detalle_ventas
ALTER TABLE detalle_ventas 
ADD cantidad INT DEFAULT 1;