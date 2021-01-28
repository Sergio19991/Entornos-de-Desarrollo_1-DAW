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


-- Volcando estructura de base de datos para empresa1
CREATE DATABASE IF NOT EXISTS `empresa1` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `empresa1`;

-- Volcando estructura para tabla empresa1.depart
CREATE TABLE IF NOT EXISTS `depart` (
  `dept_no` int NOT NULL,
  `dnombre` varchar(20) DEFAULT NULL,
  `loc` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`dept_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla empresa1.depart: ~4 rows (aproximadamente)
/*!40000 ALTER TABLE `depart` DISABLE KEYS */;
INSERT INTO `depart` (`dept_no`, `dnombre`, `loc`) VALUES
	(10, 'CONTABILIDAD', 'SEVILLA'),
	(20, 'INVESTIGACION', 'MADRID'),
	(30, 'VENTAS', 'BARCELONA'),
	(40, 'PRODUCCION', 'BILBAO');
/*!40000 ALTER TABLE `depart` ENABLE KEYS */;

-- Volcando estructura para tabla empresa1.emple
CREATE TABLE IF NOT EXISTS `emple` (
  `emp_no` int NOT NULL,
  `apellidos` varchar(20) DEFAULT NULL,
  `oficio` varchar(20) DEFAULT NULL,
  `dir` int DEFAULT NULL,
  `fecha_alt` date DEFAULT NULL,
  `salario` int DEFAULT NULL,
  `comision` int DEFAULT NULL,
  `dept_no` int DEFAULT NULL,
  PRIMARY KEY (`emp_no`),
  KEY `dept_no` (`dept_no`),
  CONSTRAINT `emple_ibfk_1` FOREIGN KEY (`dept_no`) REFERENCES `depart` (`dept_no`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla empresa1.emple: ~13 rows (aproximadamente)
/*!40000 ALTER TABLE `emple` DISABLE KEYS */;
INSERT INTO `emple` (`emp_no`, `apellidos`, `oficio`, `dir`, `fecha_alt`, `salario`, `comision`, `dept_no`) VALUES
	(7369, 'SANCHEZ', 'EMPLEADO', 7902, '1980-02-17', 104000, NULL, 20),
	(7499, 'ARROYO', 'VENDEDOR', 7698, '1980-02-20', 208000, 39000, 30),
	(7521, 'SALA', 'VENDEDOR', 7698, '1981-02-22', 162500, 162500, 30),
	(7566, 'JIMENEZ', 'DIRECTOR', 7839, '1981-04-02', 386750, NULL, 20),
	(7654, 'MARTIN', 'VENDEDOR', 7698, '1981-09-29', 162500, 182000, 30),
	(7698, 'NEGRO', 'DIRECTOR', 7839, '1981-05-01', 370500, NULL, 30),
	(7788, 'GIL', 'ANALISTA', 7566, '1981-11-09', 390000, NULL, 20),
	(7839, 'REY', 'PRESIDENTE', NULL, '1981-11-17', 650000, NULL, 10),
	(7844, 'TOVAR', 'VENDEDOR', 7698, '1981-09-08', 195000, 0, 30),
	(7876, 'ALONSO', 'EMPLEADO', 7788, '1981-09-23', 143000, NULL, 20),
	(7900, 'JIMENO', 'EMPLEADO', 7698, '1981-12-03', 1235000, NULL, 30),
	(7902, 'FERNANDEZ', 'ANALISTA', 7566, '1981-12-03', 390000, NULL, 20),
	(7934, 'MUÑOZ', 'EMPLEADO', 7782, '1982-01-23', 169000, NULL, 10);
/*!40000 ALTER TABLE `emple` ENABLE KEYS */;

-- Volcando estructura para tabla empresa1.personas
CREATE TABLE IF NOT EXISTS `personas` (
  `cod_hospital` int DEFAULT NULL,
  `dni` int NOT NULL,
  `apellidos` varchar(50) DEFAULT NULL,
  `funcion` varchar(30) DEFAULT NULL,
  `salario` int DEFAULT NULL,
  `localidad` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`dni`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla empresa1.personas: ~11 rows (aproximadamente)
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
INSERT INTO `personas` (`cod_hospital`, `dni`, `apellidos`, `funcion`, `salario`, `localidad`) VALUES
	(1, 12345678, 'García Hernández, Eladio', 'CONSERJE', 1200, 'LORCA'),
	(4, 22233311, 'Martínez Molina, Gloria', 'MEDICO', 1600, 'MURCIA'),
	(2, 22233322, 'Tristán García, Ana', 'MEDICO', 1900, 'MURCIA'),
	(2, 22233333, 'Martínez Molina, Andrés', 'MEDICO', 1600, 'CARTAGENA'),
	(4, 33222111, 'Mesa del Castillo, Juan', 'MEDICO', 2200, 'LORCA'),
	(3, 55544411, 'Ruiz Hernández, Caridad', 'MEDICO', 1900, 'LORCA'),
	(4, 55544412, 'Jiménez Jiménez, Dolores', 'CONSERJE', 1200, 'MURCIA'),
	(2, 55544433, 'González Marín, Alicia', 'CONSERJE', 1200, 'MURCIA'),
	(1, 66655544, 'Castillo Montes, Pedro', 'MEDICO', 1700, 'MURCIA'),
	(1, 87654321, 'Fuentes Bermejo, Carlos', 'DIRECTOR', 2000, 'MURCIA'),
	(3, 99988333, 'Serrano Díaz, Alejandro', 'DIRECTOR', 2400, 'CARTAGENA');
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
