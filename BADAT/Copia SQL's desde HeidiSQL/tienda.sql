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


-- Volcando estructura de base de datos para tienda
CREATE DATABASE IF NOT EXISTS `tienda` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tienda`;

-- Volcando estructura para tabla tienda.fabricante
CREATE TABLE IF NOT EXISTS `fabricante` (
  `codigo` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla tienda.fabricante: ~9 rows (aproximadamente)
/*!40000 ALTER TABLE `fabricante` DISABLE KEYS */;
INSERT INTO `fabricante` (`codigo`, `nombre`) VALUES
	(1, 'Asus'),
	(2, 'Lenovo'),
	(3, 'Hewlett-Packard'),
	(4, 'Samsung'),
	(5, 'Seagate'),
	(6, 'Crucial'),
	(7, 'Gigabyte'),
	(8, 'Huawei'),
	(9, 'Xiaomi');
/*!40000 ALTER TABLE `fabricante` ENABLE KEYS */;

-- Volcando estructura para tabla tienda.producto
CREATE TABLE IF NOT EXISTS `producto` (
  `codigo` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `precio` double NOT NULL,
  `codigo_fabricante` int unsigned NOT NULL,
  PRIMARY KEY (`codigo`),
  KEY `codigo_fabricante` (`codigo_fabricante`),
  CONSTRAINT `producto_ibfk_1` FOREIGN KEY (`codigo_fabricante`) REFERENCES `fabricante` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla tienda.producto: ~11 rows (aproximadamente)
/*!40000 ALTER TABLE `producto` DISABLE KEYS */;
INSERT INTO `producto` (`codigo`, `nombre`, `precio`, `codigo_fabricante`) VALUES
	(1, 'Disco duro SATA3 1TB', 86.99, 5),
	(2, 'Memoria RAM DDR4 8GB', 120, 6),
	(3, 'Disco SSD 1 TB', 150.99, 4),
	(4, 'GeForce GTX 1050Ti', 185, 7),
	(5, 'GeForce GTX 1080 Xtreme', 755, 6),
	(6, 'Monitor 24 LED Full HD', 202, 1),
	(7, 'Monitor 27 LED Full HD', 245.99, 1),
	(8, 'Portátil Yoga 520', 559, 2),
	(9, 'Portátil Ideapd 320', 444, 2),
	(10, 'Impresora HP Deskjet 3720', 59.99, 3),
	(11, 'Impresora HP Laserjet Pro M26nw', 180, 3);
/*!40000 ALTER TABLE `producto` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
