-- Tabla de modelos
CREATE TABLE modelos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    descripcion VARCHAR(200)
);

-- Tabla de piezas
CREATE TABLE piezas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tipo ENUM('Cabeza','Torso','Brazo','Pierna') NOT NULL,
    numero_serie VARCHAR(50) UNIQUE NOT NULL,
    color VARCHAR(30),
    material VARCHAR(50),
    fecha_fabricacion DATE,
    costo DECIMAL(10,2)
);

-- Tabla de maniquíes terminados
CREATE TABLE maniquies_terminados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    numero_serie VARCHAR(50) UNIQUE NOT NULL,
    modelo_id INT NOT NULL,
    fecha_fabricacion DATE,
    costo_total DECIMAL(10,2),
    observaciones VARCHAR(255),
    FOREIGN KEY (modelo_id) REFERENCES modelos(id)
);

-- Tabla de ensamblaje (relación maniquí-piezas)
CREATE TABLE ensamblaje (
    id INT AUTO_INCREMENT PRIMARY KEY,
    maniqui_id INT NOT NULL,
    pieza_id INT NOT NULL,
    FOREIGN KEY (maniqui_id) REFERENCES maniquies_terminados(id),
    FOREIGN KEY (pieza_id) REFERENCES piezas(id)
);
