CREATE TABLE servicio(
	id serial NOT NULL PRIMARY KEY,
	nombre varchar(50),
	descripcion varchar(100),
	beneficios varchar(100)
);

CREATE TABLE vendedor(
	id serial NOT NULL PRIMARY KEY,
	nombre varchar(20),
	apellido varchar(20),
	cedula varchar(10),
	telefono varchar(20)
	correo varchar(100)
);

CREATE TABLE empresa(
	ruc varchar(15) NOT NULL PRIMARY KEY,
	nombre varchar(30),
	telefono varchar(20),
	direccion varchar(50),
	representante varchar(20)
);

CREATE TABLE usuario(
	id serial NOT NULL PRIMARY KEY,
	nombre varchar(30),
	apellido varchar(30),
	correo varchar(100),
	contrasena varchar(100),
	tipo varchar(20)
);

CREATE TABLE solicitud(
	id serial NOT NULL PRIMARY KEY,
	detalle varchar(20),
	fecha date(),
	ciudad varchar(40),
	usuario_id int NOT NULL,
	empresa_id varchar(15) NOT NULL,
	FOREIGN KEY(usuario_id) REFERENCES usuario(id)
	FOREIGN KEY(empresa_id) REFERENCES empresa(ruc)
);

CREATE TABLE comentarios(
	id serial NOT NULL PRIMARY KEY,
	detalle varchar(500),
	fecha date(),
	usuario_id int NOT NULL,
	FOREIGN KEY(usuario_id) REFERENCES usuario(id)
);

CREATE TABLE comentarios(
	id serial NOT NULL PRIMARY KEY,
	titulo varchar(100),
	descripcion varchar(500),
	fuente varchar(100),
	fecha date(),
	imagen varchar(200),
	usuario_id int NOT NULL,
	FOREIGN KEY(usuario_id) REFERENCES usuario(id)
);