CREATE TABLE personas (
	dni VARCHAR(9) PRIMARY KEY,
	nombre VARCHAR(9),
	direccion VARCHAR(25),
	poblacion VARCHAR(25),
	codprovin INT, FOREIGN KEY (codprovin) REFERENCES provincias2(cod_provincia) ON
DELETE CASCADE
);