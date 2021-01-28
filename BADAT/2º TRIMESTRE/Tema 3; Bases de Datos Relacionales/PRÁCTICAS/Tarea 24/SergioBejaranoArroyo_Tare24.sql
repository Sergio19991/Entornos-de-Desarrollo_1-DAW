CREATE TABLE alumnos (
	codigo INT(3) PRIMARY KEY,
	nombre VARCHAR(21) NOT NULL,
	apellido VARCHAR(30) NOT NULL CHECK (apellido = UPPER(apellido)),
	Curso ENUM('1', '2', '3'),
	Fecha_matri DATE DEFAULT (CURDATE()+1)
);

CREATE TABLE empleados (
	Cod_emple INT(2) PRIMARY KEY,
	Nombre VARCHAR(20) NOT NULL,
	Apellido VARCHAR(25),
	Salario INT(7) CHECK (Salario > 0),
	Codigo_PROVINCIAS INT,
	Codigo_EMPRESAS INT, FOREIGN KEY (Codigo_PROVINCIAS) REFERENCES provincias(Cod_provi) ON
DELETE CASCADE, FOREIGN KEY (Codigo_EMPRESAS) REFERENCES empresas(Cod_empre)
);