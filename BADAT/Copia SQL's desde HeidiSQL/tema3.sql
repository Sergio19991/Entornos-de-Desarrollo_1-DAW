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


-- Volcando estructura de base de datos para tema3
CREATE DATABASE IF NOT EXISTS `tema3` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `tema3`;

-- Volcando estructura para tabla tema3.alumnos
CREATE TABLE IF NOT EXISTS `alumnos` (
  `codigo` int NOT NULL,
  `nombre` varchar(21) NOT NULL,
  `apellido` varchar(30) NOT NULL,
  `Curso` enum('1','2','3') DEFAULT NULL,
  `Fecha_matri` date DEFAULT ((curdate() + 1)),
  PRIMARY KEY (`codigo`),
  CONSTRAINT `alumnos_chk_1` CHECK ((`apellido` = upper(`apellido`)))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla tema3.alumnos: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `alumnos` DISABLE KEYS */;
/*!40000 ALTER TABLE `alumnos` ENABLE KEYS */;

-- Volcando estructura para tabla tema3.continentes
CREATE TABLE IF NOT EXISTS `continentes` (
  `Cod_conti` int NOT NULL,
  `Nombre` varchar(20) NOT NULL DEFAULT 'EUROPA',
  PRIMARY KEY (`Cod_conti`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla tema3.continentes: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `continentes` DISABLE KEYS */;
/*!40000 ALTER TABLE `continentes` ENABLE KEYS */;

-- Volcando estructura para tabla tema3.empleados
CREATE TABLE IF NOT EXISTS `empleados` (
  `Cod_emple` int NOT NULL,
  `Nombre` varchar(20) NOT NULL,
  `Apellido` varchar(25) DEFAULT NULL,
  `Salario` int DEFAULT NULL,
  `Codigo_PROVINCIAS` int DEFAULT NULL,
  `Codigo_EMPRESAS` int DEFAULT NULL,
  PRIMARY KEY (`Cod_emple`),
  KEY `Codigo_PROVINCIAS` (`Codigo_PROVINCIAS`),
  KEY `Codigo_EMPRESAS` (`Codigo_EMPRESAS`),
  CONSTRAINT `empleados_ibfk_1` FOREIGN KEY (`Codigo_PROVINCIAS`) REFERENCES `provincias` (`Cod_provi`) ON DELETE CASCADE,
  CONSTRAINT `empleados_ibfk_2` FOREIGN KEY (`Codigo_EMPRESAS`) REFERENCES `empresas` (`Cod_empre`),
  CONSTRAINT `empleados_chk_1` CHECK ((`Salario` > 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla tema3.empleados: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;

-- Volcando estructura para tabla tema3.empresas
CREATE TABLE IF NOT EXISTS `empresas` (
  `Cod_empre` int NOT NULL,
  `Nombre` varchar(25) NOT NULL DEFAULT 'empresa1',
  `Fecha_crea` date DEFAULT ((curdate() + 1)),
  PRIMARY KEY (`Cod_empre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla tema3.empresas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `empresas` DISABLE KEYS */;
/*!40000 ALTER TABLE `empresas` ENABLE KEYS */;

-- Volcando estructura para tabla tema3.personas
CREATE TABLE IF NOT EXISTS `personas` (
  `dni` varchar(9) NOT NULL,
  `nombre` varchar(9) DEFAULT NULL,
  `direccion` varchar(25) DEFAULT NULL,
  `poblacion` varchar(25) DEFAULT NULL,
  `codprovin` int DEFAULT NULL,
  PRIMARY KEY (`dni`),
  KEY `codprovin` (`codprovin`),
  CONSTRAINT `personas_ibfk_1` FOREIGN KEY (`codprovin`) REFERENCES `provincias2` (`cod_provincia`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla tema3.personas: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `personas` DISABLE KEYS */;
/*!40000 ALTER TABLE `personas` ENABLE KEYS */;

-- Volcando estructura para tabla tema3.provincias
CREATE TABLE IF NOT EXISTS `provincias` (
  `Cod_provi` int NOT NULL,
  `Nombre` varchar(25) NOT NULL,
  `Pais` enum('España','Italia','Portugal') DEFAULT NULL,
  PRIMARY KEY (`Cod_provi`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla tema3.provincias: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `provincias` DISABLE KEYS */;
/*!40000 ALTER TABLE `provincias` ENABLE KEYS */;

-- Volcando estructura para tabla tema3.provincias2
CREATE TABLE IF NOT EXISTS `provincias2` (
  `cod_provincia` int NOT NULL,
  `nom_provincia` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`cod_provincia`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Volcando datos para la tabla tema3.provincias2: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `provincias2` DISABLE KEYS */;
/*!40000 ALTER TABLE `provincias2` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
