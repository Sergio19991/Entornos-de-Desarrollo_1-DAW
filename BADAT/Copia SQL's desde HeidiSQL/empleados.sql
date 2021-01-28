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


-- Volcando estructura de base de datos para empleados
CREATE DATABASE IF NOT EXISTS `empleados` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `empleados`;

-- Volcando estructura para tabla empleados.departamento
CREATE TABLE IF NOT EXISTS `departamento` (
  `codigo` int unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `presupuesto` double unsigned NOT NULL,
  `gastos` double unsigned NOT NULL,
  PRIMARY KEY (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla empleados.departamento: ~7 rows (aproximadamente)
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
INSERT INTO `departamento` (`codigo`, `nombre`, `presupuesto`, `gastos`) VALUES
	(1, 'Desarrollo', 120000, 6000),
	(2, 'Sistemas', 150000, 21000),
	(3, 'Recursos Humanos', 280000, 25000),
	(4, 'Contabilidad', 110000, 3000),
	(5, 'I+D', 375000, 380000),
	(6, 'Proyectos', 0, 0),
	(7, 'Publicidad', 0, 1000);
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;

-- Volcando estructura para tabla empleados.empleado
CREATE TABLE IF NOT EXISTS `empleado` (
  `codigo` int unsigned NOT NULL AUTO_INCREMENT,
  `nif` varchar(9) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido1` varchar(100) NOT NULL,
  `apellido2` varchar(100) DEFAULT NULL,
  `codigo_departamento` int unsigned DEFAULT NULL,
  PRIMARY KEY (`codigo`),
  UNIQUE KEY `nif` (`nif`),
  KEY `codigo_departamento` (`codigo_departamento`),
  CONSTRAINT `empleado_ibfk_1` FOREIGN KEY (`codigo_departamento`) REFERENCES `departamento` (`codigo`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla empleados.empleado: ~13 rows (aproximadamente)
/*!40000 ALTER TABLE `empleado` DISABLE KEYS */;
INSERT INTO `empleado` (`codigo`, `nif`, `nombre`, `apellido1`, `apellido2`, `codigo_departamento`) VALUES
	(1, '32481596F', 'Aarón', 'Rivero', 'Gómez', 1),
	(2, 'Y5575632D', 'Adela', 'Salas', 'Díaz', 2),
	(3, 'R6970642B', 'Adolfo', 'Rubio', 'Flores', 3),
	(4, '77705545E', 'Adrián', 'Suárez', NULL, 4),
	(5, '17087203C', 'Marcos', 'Loyola', 'Méndez', 5),
	(6, '38382980M', 'María', 'Santana', 'Moreno', 1),
	(7, '80576669X', 'Pilar', 'Ruiz', NULL, 2),
	(8, '71651431Z', 'Pepe', 'Ruiz', 'Santana', 3),
	(9, '56399183D', 'Juan', 'Gómez', 'López', 2),
	(10, '46384486H', 'Diego', 'Flores', 'Salas', 5),
	(11, '67389283A', 'Marta', 'Herrera', 'Gil', 1),
	(12, '41234836R', 'Irene', 'Salas', 'Flores', NULL),
	(13, '82635162B', 'Juan Antonio', 'Sáez', 'Guerrero', NULL);
/*!40000 ALTER TABLE `empleado` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
