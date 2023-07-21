CREATE DATABASE prevencion_riesgos;
USE prevencion_riesgos;

-- Tabla "Usuarios"
CREATE TABLE Usuarios (
  usuario_id INT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  contrasena VARCHAR(100) NOT NULL,
  tipo VARCHAR(100) NOT NULL
);

-- Tabla "Capacitaciones"
CREATE TABLE Capacitaciones (
  id INT PRIMARY KEY ,
  nombre VARCHAR(100) NOT NULL,
  detalle TEXT
);

-- Tabla " lista de Capacitaciones"
CREATE TABLE ListaCapacitaciones (
  usuario_id INT,
  nombre VARCHAR(100) NOT NULL,
  detalle VARCHAR(100) NOT NULL,
  cantidad VARCHAR(100) NOT NULL,
  PRIMARY KEY (usuario_id)
);

-- Tabla "Visitas"
CREATE TABLE Visitas (
  id INT PRIMARY KEY AUTO_INCREMENT,
  cliente_id INT,
  fecha_visita DATE,
  detalle TEXT,
  profesional_id INT,
  FOREIGN KEY (cliente_id) REFERENCES Usuarios(usuario_id),
  FOREIGN KEY (profesional_id) REFERENCES Usuarios(usuario_id)
);

-- Tabla "Chequeos"
CREATE TABLE Chequeos (
  id INT PRIMARY KEY AUTO_INCREMENT,
  visita_id INT,
  detalle TEXT,
  estado ENUM('Pendiente', 'Completado'),
  FOREIGN KEY (visita_id) REFERENCES Visitas(id)
);

-- Tabla "Pagos"
CREATE TABLE Pagos (
  id INT PRIMARY KEY AUTO_INCREMENT,
  cliente_id INT,
  monto DECIMAL(10,2),
  fecha_pago DATE,
  FOREIGN KEY (cliente_id) REFERENCES Usuarios(usuario_id)
);

-- Tabla "Asesorias"
CREATE TABLE Asesorias (
  id INT PRIMARY KEY AUTO_INCREMENT,
  nombre VARCHAR(100) NOT NULL,
  detalle TEXT,
  profesional_id INT,
  FOREIGN KEY (profesional_id) REFERENCES Usuarios(usuario_id)
);

-- Tabla "Accidentes"
CREATE TABLE Accidentes (
  id INT PRIMARY KEY AUTO_INCREMENT,
  cliente_id INT,
  fecha_accidente DATE,
  detalle TEXT,
  FOREIGN KEY (cliente_id) REFERENCES Usuarios(usuario_id)
);

-- Tabla "Asistentes"
CREATE TABLE Asistentes (
  capacitacion_id INT,
  usuario_id INT,
  FOREIGN KEY (capacitacion_id) REFERENCES Capacitaciones(id),
  FOREIGN KEY (usuario_id) REFERENCES Usuarios(usuario_id),
  PRIMARY KEY (capacitacion_id, usuario_id)
);

-- Tabla "Administradores" --
CREATE TABLE administradores (
  admin_id INT PRIMARY KEY,
  nombre VARCHAR(100) NOT NULL,
  contrasena VARCHAR(100) NOT NULL,
  tipo VARCHAR(100) NOT NULL
);

-- Creacion de los "Administradores" --
INSERT INTO `prevencion_riesgos`.`administradores` (`admin_id`, `nombre`, `contrasena`, `tipo`) VALUES ('123654789', 'Monica Sanchez', '1234', 'Administrador');
INSERT INTO `prevencion_riesgos`.`administradores` (`admin_id`, `nombre`, `contrasena`, `tipo`) VALUES ('987456321', 'Claudio Gatica', '12345', 'Administrador');
