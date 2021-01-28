-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         8.0.22 - MySQL Community Server - GPL
-- SO del servidor:              Win64
-- HeidiSQL Versión:             11.1.0.6116
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para w3school
CREATE DATABASE IF NOT EXISTS `w3school` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `w3school`;

-- Volcando estructura para tabla w3school.amigos
CREATE TABLE IF NOT EXISTS `amigos` (
  `codigo_empleado` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido1` varchar(50) NOT NULL,
  `apellido2` varchar(50) DEFAULT NULL,
  `extension` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `codigo_oficina` varchar(10) NOT NULL,
  `codigo_jefe` int DEFAULT NULL,
  `puesto` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla w3school.amigos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `amigos` DISABLE KEYS */;
INSERT INTO `amigos` (`codigo_empleado`, `nombre`, `apellido1`, `apellido2`, `extension`, `email`, `codigo_oficina`, `codigo_jefe`, `puesto`) VALUES
	(1, 'Marcos', 'Magaña', 'Perez', '3897', 'marcos@jardineria.es', 'TAL-ES', NULL, 'Director General'),
	(2, 'Ruben', 'López', 'Martinez', '2899', 'rlopez@jardineria.es', 'TAL-ES', 1, 'Subdirector Marketing'),
	(3, 'Alberto', 'Soria', 'Carrasco', '2837', 'asoria@jardineria.es', 'TAL-ES', 2, 'Subdirector Ventas'),
	(4, 'Maria', 'Solís', 'Jerez', '2847', 'msolis@jardineria.es', 'TAL-ES', 2, 'Secretaria'),
	(5, 'Felipe', 'Rosas', 'Marquez', '2844', 'frosas@jardineria.es', 'TAL-ES', 3, 'Representante Ventas'),
	(6, 'Juan Carlos', 'Ortiz', 'Serrano', '2845', 'cortiz@jardineria.es', 'TAL-ES', 3, 'Representante Ventas'),
	(7, 'Carlos', 'Soria', 'Jimenez', '2444', 'csoria@jardineria.es', 'MAD-ES', 3, 'Director Oficina'),
	(8, 'Mariano', 'López', 'Murcia', '2442', 'mlopez@jardineria.es', 'MAD-ES', 7, 'Representante Ventas'),
	(9, 'Lucio', 'Campoamor', 'Martín', '2442', 'lcampoamor@jardineria.es', 'MAD-ES', 7, 'Representante Ventas'),
	(10, 'Hilario', 'Rodriguez', 'Huertas', '2444', 'hrodriguez@jardineria.es', 'MAD-ES', 7, 'Representante Ventas'),
	(11, 'Emmanuel', 'Magaña', 'Perez', '2518', 'manu@jardineria.es', 'BCN-ES', 3, 'Director Oficina'),
	(12, 'José Manuel', 'Martinez', 'De la Osa', '2519', 'jmmart@hotmail.es', 'BCN-ES', 11, 'Representante Ventas'),
	(13, 'David', 'Palma', 'Aceituno', '2519', 'dpalma@jardineria.es', 'BCN-ES', 11, 'Representante Ventas'),
	(14, 'Oscar', 'Palma', 'Aceituno', '2519', 'opalma@jardineria.es', 'BCN-ES', 11, 'Representante Ventas'),
	(15, 'Francois', 'Fignon', '', '9981', 'ffignon@gardening.com', 'PAR-FR', 3, 'Director Oficina'),
	(16, 'Lionel', 'Narvaez', '', '9982', 'lnarvaez@gardening.com', 'PAR-FR', 15, 'Representante Ventas'),
	(17, 'Laurent', 'Serra', '', '9982', 'lserra@gardening.com', 'PAR-FR', 15, 'Representante Ventas'),
	(18, 'Michael', 'Bolton', '', '7454', 'mbolton@gardening.com', 'SFC-USA', 3, 'Director Oficina'),
	(19, 'Walter Santiago', 'Sanchez', 'Lopez', '7454', 'wssanchez@gardening.com', 'SFC-USA', 18, 'Representante Ventas'),
	(20, 'Hilary', 'Washington', '', '7565', 'hwashington@gardening.com', 'BOS-USA', 3, 'Director Oficina'),
	(21, 'Marcus', 'Paxton', '', '7565', 'mpaxton@gardening.com', 'BOS-USA', 20, 'Representante Ventas'),
	(22, 'Lorena', 'Paxton', '', '7665', 'lpaxton@gardening.com', 'BOS-USA', 20, 'Representante Ventas'),
	(23, 'Nei', 'Nishikori', '', '8734', 'nnishikori@gardening.com', 'TOK-JP', 3, 'Director Oficina'),
	(24, 'Narumi', 'Riko', '', '8734', 'nriko@gardening.com', 'TOK-JP', 23, 'Representante Ventas'),
	(25, 'Takuma', 'Nomura', '', '8735', 'tnomura@gardening.com', 'TOK-JP', 23, 'Representante Ventas'),
	(26, 'Amy', 'Johnson', '', '3321', 'ajohnson@gardening.com', 'LON-UK', 3, 'Director Oficina'),
	(27, 'Larry', 'Westfalls', '', '3322', 'lwestfalls@gardening.com', 'LON-UK', 26, 'Representante Ventas'),
	(28, 'John', 'Walton', '', '3322', 'jwalton@gardening.com', 'LON-UK', 26, 'Representante Ventas'),
	(29, 'Kevin', 'Fallmer', '', '3210', 'kfalmer@gardening.com', 'SYD-AU', 3, 'Director Oficina'),
	(30, 'Julian', 'Bellinelli', '', '3211', 'jbellinelli@gardening.com', 'SYD-AU', 29, 'Representante Ventas'),
	(31, 'Mariko', 'Kishi', '', '3211', 'mkishi@gardening.com', 'SYD-AU', 29, 'Representante Ventas');
/*!40000 ALTER TABLE `amigos` ENABLE KEYS */;

-- Volcando estructura para tabla w3school.clientes
CREATE TABLE IF NOT EXISTS `clientes` (
  `codigo_cliente` int NOT NULL,
  `nombre_cliente` varchar(50) NOT NULL,
  `nombre_contacto` varchar(30) DEFAULT NULL,
  `apellido_contacto` varchar(30) DEFAULT NULL,
  `telefono` varchar(15) NOT NULL,
  `fax` varchar(15) NOT NULL,
  `linea_direccion1` varchar(50) NOT NULL,
  `linea_direccion2` varchar(50) DEFAULT NULL,
  `ciudad` varchar(50) NOT NULL,
  `region` varchar(50) DEFAULT NULL,
  `pais` varchar(50) DEFAULT NULL,
  `codigo_postal` varchar(10) DEFAULT NULL,
  `codigo_empleado_rep_ventas` int DEFAULT NULL,
  `limite_credito` decimal(15,2) DEFAULT NULL,
  PRIMARY KEY (`codigo_cliente`),
  KEY `codigo_empleado_rep_ventas` (`codigo_empleado_rep_ventas`),
  CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`codigo_empleado_rep_ventas`) REFERENCES `empleados` (`codigo_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla w3school.clientes: ~36 rows (aproximadamente)
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` (`codigo_cliente`, `nombre_cliente`, `nombre_contacto`, `apellido_contacto`, `telefono`, `fax`, `linea_direccion1`, `linea_direccion2`, `ciudad`, `region`, `pais`, `codigo_postal`, `codigo_empleado_rep_ventas`, `limite_credito`) VALUES
	(1, 'GoldFish Garden', 'Daniel G', 'GoldFish', '5556901745', '5556901746', 'False Street 52 2 A', NULL, 'San Francisco', NULL, 'USA', '24006', 19, 3000.00),
	(3, 'Gardening Associates', 'Anne', 'Wright', '5557410345', '5557410346', 'Wall-e Avenue', NULL, 'Miami', 'Miami', 'USA', '24010', 19, 6000.00),
	(4, 'Gerudo Valley', 'Link', 'Flaute', '5552323129', '5552323128', 'Oaks Avenue nº22', NULL, 'New York', NULL, 'USA', '85495', 22, 12000.00),
	(5, 'Tendo Garden', 'Akane', 'Tendo', '55591233210', '55591233211', 'Null Street nº69', NULL, 'Miami', NULL, 'USA', '696969', 22, 600000.00),
	(6, 'Lasas S.A.', 'Antonio', 'Lasas', '34916540145', '34914851312', 'C/Leganes 15', NULL, 'Fuenlabrada', 'Madrid', 'Spain', '28945', 8, 154310.00),
	(7, 'Beragua', 'Jose', 'Bermejo', '654987321', '916549872', 'C/pintor segundo', 'Getafe', 'Madrid', 'Madrid', 'Spain', '28942', 11, 20000.00),
	(8, 'Club Golf Puerta del hierro', 'Paco', 'Lopez', '62456810', '919535678', 'C/sinesio delgado', 'Madrid', 'Madrid', 'Madrid', 'Spain', '28930', 11, 40000.00),
	(9, 'Naturagua', 'Guillermo', 'Rengifo', '689234750', '916428956', 'C/majadahonda', 'Boadilla', 'Madrid', 'Madrid', 'Spain', '28947', 11, 32000.00),
	(10, 'DaraDistribuciones', 'David', 'Serrano', '675598001', '916421756', 'C/azores', 'Fuenlabrada', 'Madrid', 'Madrid', 'Spain', '28946', 11, 50000.00),
	(11, 'Madrileña de riegos', 'Jose', 'Tacaño', '655983045', '916689215', 'C/Lagañas', 'Fuenlabrada', 'Madrid', 'Madrid', 'Spain', '28943', 11, 20000.00),
	(12, 'Lasas S.A.', 'Antonio', 'Lasas', '34916540145', '34914851312', 'C/Leganes 15', NULL, 'Fuenlabrada', 'Madrid', 'Spain', '28945', 8, 154310.00),
	(13, 'Camunas Jardines S.L.', 'Pedro', 'Camunas', '34914873241', '34914871541', 'C/Virgenes 45', 'C/Princesas 2 1ºB', 'San Lorenzo del Escorial', 'Madrid', 'Spain', '28145', 8, 16481.00),
	(14, 'Dardena S.A.', 'Juan', 'Rodriguez', '34912453217', '34912484764', 'C/Nueva York 74', NULL, 'Madrid', 'Madrid', 'Spain', '28003', 8, 321000.00),
	(15, 'Jardin de Flores', 'Javier', 'Villar', '654865643', '914538776', 'C/ Oña 34', NULL, 'Madrid', 'Madrid', 'Spain', '28950', 30, 40000.00),
	(16, 'Flores Marivi', 'Maria', 'Rodriguez', '666555444', '912458657', 'C/Leganes24', NULL, 'Fuenlabrada', 'Madrid', 'Spain', '28945', 5, 1500.00),
	(17, 'Flowers, S.A', 'Beatriz', 'Fernandez', '698754159', '978453216', 'C/Luis Salquillo4', NULL, 'Montornes del valles', 'Barcelona', 'Spain', '24586', 5, 3500.00),
	(18, 'Naturajardin', 'Victoria', 'Cruz', '612343529', '916548735', 'Plaza Magallón 15', NULL, 'Madrid', 'Madrid', 'Spain', '28011', 30, 5050.00),
	(19, 'Golf S.A.', 'Luis', 'Martinez', '916458762', '912354475', 'C/Estancado', NULL, 'Santa cruz de Tenerife', 'Islas Canarias', 'Spain', '38297', 12, 30000.00),
	(20, 'Americh Golf Management SL', 'Mario', 'Suarez', '964493072', '964493063', 'C/Letardo', NULL, 'Barcelona', 'Cataluña', 'Spain', '12320', 12, 20000.00),
	(21, 'Aloha', 'Cristian', 'Rodrigez', '916485852', '914489898', 'C/Roman 3', NULL, 'Canarias', 'Canarias', 'Spain', '35488', 12, 50000.00),
	(22, 'El Prat', 'Francisco', 'Camacho', '916882323', '916493211', 'Avenida Tibidabo', NULL, 'Barcelona', 'Cataluña', 'Spain', '12320', 12, 30000.00),
	(23, 'Sotogrande', 'Maria', 'Santillana', '915576622', '914825645', 'C/Paseo del Parque', NULL, 'Sotogrande', 'Cadiz', 'Spain', '11310', 12, 60000.00),
	(24, 'Vivero Humanes', 'Federico', 'Gomez', '654987690', '916040875', 'C/Miguel Echegaray 54', NULL, 'Humanes', 'Madrid', 'Spain', '28970', 30, 7430.00),
	(25, 'Fuenla City', 'Tony', 'Muñoz Mena', '675842139', '915483754', 'C/Callo 52', NULL, 'Fuenlabrada', 'Madrid', 'Spain', '28574', 5, 4500.00),
	(26, 'Jardines y Mansiones Cactus SL', 'Eva María', 'Sánchez', '916877445', '914477777', 'Polígono Industrial Maspalomas, Nº52', 'Móstoles', 'Madrid', 'Madrid', 'Spain', '29874', 9, 76000.00),
	(27, 'Jardinerías Matías SL', 'Matías', 'San Martín', '916544147', '917897474', 'C/Francisco Arce, Nº44', 'Bustarviejo', 'Madrid', 'Madrid', 'Spain', '37845', 9, 100500.00),
	(28, 'Agrojardin', 'Benito', 'Lopez', '675432926', '916549264', 'C/Mar Caspio 43', NULL, 'Getafe', 'Madrid', 'Spain', '28904', 30, 8040.00),
	(29, 'Top Campo', 'Joseluis', 'Sanchez', '685746512', '974315924', 'C/Ibiza 32', NULL, 'Humanes', 'Madrid', 'Spain', '28574', 5, 5500.00),
	(30, 'Jardineria Sara', 'Sara', 'Marquez', '675124537', '912475843', 'C/Lima 1', NULL, 'Fuenlabrada', 'Madrid', 'Spain', '27584', 5, 7500.00),
	(31, 'Campohermoso', 'Luis', 'Jimenez', '645925376', '916159116', 'C/Peru 78', NULL, 'Fuenlabrada', 'Madrid', 'Spain', '28945', 30, 3250.00),
	(32, 'france telecom', 'FraÃ§ois', 'Toulou', '(33)5120578961', '(33)5120578961', '6 place d Alleray 15Ã¨me', NULL, 'Paris', NULL, 'France', '75010', 16, 10000.00),
	(33, 'Musée du Louvre', 'Pierre', 'Delacroux', '(33)0140205050', '(33)0140205442', 'Quai du Louvre', NULL, 'Paris', NULL, 'France', '75058', 16, 30000.00),
	(35, 'Tutifruti S.A', 'Jacob', 'Jones', '2 9261-2433', '2 9283-1695', 'level 24, St. Martins Tower.-31 Market St.', NULL, 'Sydney', 'Nueva Gales del Sur', 'Australia', '2000', 31, 10000.00),
	(36, 'Flores S.L.', 'Antonio', 'Romero', '654352981', '685249700', 'Avenida España', NULL, 'Madrid', 'Fuenlabrada', 'Spain', '29643', 18, 6000.00),
	(37, 'The Magic Garden', 'Richard', 'Mcain', '926523468', '9364875882', 'Lihgting Park', NULL, 'London', 'London', 'United Kingdom', '65930', 18, 10000.00),
	(38, 'El Jardin Viviente S.L', 'Justin', 'Smith', '2 8005-7161', '2 8005-7162', '176 Cumberland Street The rocks', NULL, 'Sydney', 'Nueva Gales del Sur', 'Australia', '2003', 31, 8000.00);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;

-- Volcando estructura para tabla w3school.empleados
CREATE TABLE IF NOT EXISTS `empleados` (
  `codigo_empleado` int NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `apellido1` varchar(50) NOT NULL,
  `apellido2` varchar(50) DEFAULT NULL,
  `extension` varchar(10) NOT NULL,
  `email` varchar(100) NOT NULL,
  `codigo_oficina` varchar(10) NOT NULL,
  `codigo_jefe` int DEFAULT NULL,
  `puesto` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`codigo_empleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla w3school.empleados: ~31 rows (aproximadamente)
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` (`codigo_empleado`, `nombre`, `apellido1`, `apellido2`, `extension`, `email`, `codigo_oficina`, `codigo_jefe`, `puesto`) VALUES
	(1, 'Marcos', 'Magaña', 'Perez', '3897', 'marcos@jardineria.es', 'TAL-ES', NULL, 'Director General'),
	(2, 'Ruben', 'López', 'Martinez', '2899', 'rlopez@jardineria.es', 'TAL-ES', 1, 'Subdirector Marketing'),
	(3, 'Alberto', 'Soria', 'Carrasco', '2837', 'asoria@jardineria.es', 'TAL-ES', 2, 'Subdirector Ventas'),
	(4, 'Maria', 'Solís', 'Jerez', '2847', 'msolis@jardineria.es', 'TAL-ES', 2, 'Secretaria'),
	(5, 'Felipe', 'Rosas', 'Marquez', '2844', 'frosas@jardineria.es', 'TAL-ES', 3, 'Representante Ventas'),
	(6, 'Juan Carlos', 'Ortiz', 'Serrano', '2845', 'cortiz@jardineria.es', 'TAL-ES', 3, 'Representante Ventas'),
	(7, 'Carlos', 'Soria', 'Jimenez', '2444', 'csoria@jardineria.es', 'MAD-ES', 3, 'Director Oficina'),
	(8, 'Mariano', 'López', 'Murcia', '2442', 'mlopez@jardineria.es', 'MAD-ES', 7, 'Representante Ventas'),
	(9, 'Lucio', 'Campoamor', 'Martín', '2442', 'lcampoamor@jardineria.es', 'MAD-ES', 7, 'Representante Ventas'),
	(10, 'Hilario', 'Rodriguez', 'Huertas', '2444', 'hrodriguez@jardineria.es', 'MAD-ES', 7, 'Representante Ventas'),
	(11, 'Emmanuel', 'Magaña', 'Perez', '2518', 'manu@jardineria.es', 'BCN-ES', 3, 'Director Oficina'),
	(12, 'José Manuel', 'Martinez', 'De la Osa', '2519', 'jmmart@hotmail.es', 'BCN-ES', 11, 'Representante Ventas'),
	(13, 'David', 'Palma', 'Aceituno', '2519', 'dpalma@jardineria.es', 'BCN-ES', 11, 'Representante Ventas'),
	(14, 'Oscar', 'Palma', 'Aceituno', '2519', 'opalma@jardineria.es', 'BCN-ES', 11, 'Representante Ventas'),
	(15, 'Francois', 'Fignon', '', '9981', 'ffignon@gardening.com', 'PAR-FR', 3, 'Director Oficina'),
	(16, 'Lionel', 'Narvaez', '', '9982', 'lnarvaez@gardening.com', 'PAR-FR', 15, 'Representante Ventas'),
	(17, 'Laurent', 'Serra', '', '9982', 'lserra@gardening.com', 'PAR-FR', 15, 'Representante Ventas'),
	(18, 'Michael', 'Bolton', '', '7454', 'mbolton@gardening.com', 'SFC-USA', 3, 'Director Oficina'),
	(19, 'Walter Santiago', 'Sanchez', 'Lopez', '7454', 'wssanchez@gardening.com', 'SFC-USA', 18, 'Representante Ventas'),
	(20, 'Hilary', 'Washington', '', '7565', 'hwashington@gardening.com', 'BOS-USA', 3, 'Director Oficina'),
	(21, 'Marcus', 'Paxton', '', '7565', 'mpaxton@gardening.com', 'BOS-USA', 20, 'Representante Ventas'),
	(22, 'Lorena', 'Paxton', '', '7665', 'lpaxton@gardening.com', 'BOS-USA', 20, 'Representante Ventas'),
	(23, 'Nei', 'Nishikori', '', '8734', 'nnishikori@gardening.com', 'TOK-JP', 3, 'Director Oficina'),
	(24, 'Narumi', 'Riko', '', '8734', 'nriko@gardening.com', 'TOK-JP', 23, 'Representante Ventas'),
	(25, 'Takuma', 'Nomura', '', '8735', 'tnomura@gardening.com', 'TOK-JP', 23, 'Representante Ventas'),
	(26, 'Amy', 'Johnson', '', '3321', 'ajohnson@gardening.com', 'LON-UK', 3, 'Director Oficina'),
	(27, 'Larry', 'Westfalls', '', '3322', 'lwestfalls@gardening.com', 'LON-UK', 26, 'Representante Ventas'),
	(28, 'John', 'Walton', '', '3322', 'jwalton@gardening.com', 'LON-UK', 26, 'Representante Ventas'),
	(29, 'Kevin', 'Fallmer', '', '3210', 'kfalmer@gardening.com', 'SYD-AU', 3, 'Director Oficina'),
	(30, 'Julian', 'Bellinelli', '', '3211', 'jbellinelli@gardening.com', 'SYD-AU', 29, 'Representante Ventas'),
	(31, 'Mariko', 'Kishi', '', '3211', 'mkishi@gardening.com', 'SYD-AU', 29, 'Representante Ventas');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;

-- Volcando estructura para tabla w3school.personas
CREATE TABLE IF NOT EXISTS `personas` (
  `ID` int NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `apellido` varchar(255) DEFAULT NULL,
  `edda` int DEFAULT NULL,
  UNIQUE KEY `ID` (`ID`),
  UNIQUE KEY `nombre` (`nombre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla w3school.personas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
