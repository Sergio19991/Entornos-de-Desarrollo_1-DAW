CREATE TABLE provincias (
	Cod_provi INT(2) PRIMARY KEY,
	Nombre VARCHAR(25) NOT NULL,
	Pais ENUM('España', 'Italia', 'Portugal')
);

CREATE TABLE empresas (
	Cod_empre INT(2) PRIMARY KEY,
	Nombre VARCHAR(25) DEFAULT 'empresa1' NOT NULL,
	Fecha_crea DATE DEFAULT (CURDATE()+1)
);

CREATE TABLE Continentes (
	Cod_conti INT PRIMARY KEY,
	Nombre VARCHAR(20) DEFAULT 'EUROPA' NOT NULL
);