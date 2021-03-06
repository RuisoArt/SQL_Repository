BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS `tabla1` (
	`ID`	INTEGER AUTO_INCREMENT,
	`NOMBRE`	VARCHAR
);
CREATE TABLE IF NOT EXISTS `PRODUCTOS` (
	`ID`	INTEGER,
	`PRODUCTO`	TEXT,
	`PRECIO`	INTEGER,
	`DESCRIPCION`	TEXT
);
INSERT INTO `PRODUCTOS` (ID,PRODUCTO,PRECIO,DESCRIPCION) VALUES (1,'IMPRESORA',50,'IMPRESORA DE TINTA');
INSERT INTO `PRODUCTOS` (ID,PRODUCTO,PRECIO,DESCRIPCION) VALUES (2,'RATON',10,'RATON OPTICO');
INSERT INTO `PRODUCTOS` (ID,PRODUCTO,PRECIO,DESCRIPCION) VALUES (3,'ORDENADOR',500,NULL);
INSERT INTO `PRODUCTOS` (ID,PRODUCTO,PRECIO,DESCRIPCION) VALUES (4,'TECLADO',15,NULL);
CREATE TABLE IF NOT EXISTS `PERSONAS` (
	`PER`	INTEGER PRIMARY KEY AUTOINCREMENT,
	`NOMBRE`	TEXT,
	`APELLIDO1`	TEXT,
	`APELLIDO2`	TEXT,
	`DNI`	TEXT NOT NULL,
	`EDAD`	INTEGER,
	`DEP`	INTEGER,
	`SS`	INTEGER
);
INSERT INTO `PERSONAS` (PER,NOMBRE,APELLIDO1,APELLIDO2,DNI,EDAD,DEP,SS) VALUES (1,'ANTONIO','PEREZ','GOMEZ','32887345L',46,2,NULL);
INSERT INTO `PERSONAS` (PER,NOMBRE,APELLIDO1,APELLIDO2,DNI,EDAD,DEP,SS) VALUES (2,'LUIS','LOPEZ','PEREZ','30234863P',23,1,NULL);
INSERT INTO `PERSONAS` (PER,NOMBRE,APELLIDO1,APELLIDO2,DNI,EDAD,DEP,SS) VALUES (3,'ANTONIO','GARCIA','BENITO','29345120',56,3,NULL);
INSERT INTO `PERSONAS` (PER,NOMBRE,APELLIDO1,APELLIDO2,DNI,EDAD,DEP,SS) VALUES (4,'PEDRO','RUIZ','GONZALEZ','35987125A',35,2,NULL);
CREATE TABLE IF NOT EXISTS `PEDIDOS` (
	`ID`	INTEGER,
	`PRODUCTO`	TEXT,
	`CANTIDAD`	TEXT,
	`IMPORTE`	integer
);
INSERT INTO `PEDIDOS` (ID,PRODUCTO,CANTIDAD,IMPORTE) VALUES (1,'IMPRESORA','2',100);
INSERT INTO `PEDIDOS` (ID,PRODUCTO,CANTIDAD,IMPORTE) VALUES (2,'RATON','1',10);
INSERT INTO `PEDIDOS` (ID,PRODUCTO,CANTIDAD,IMPORTE) VALUES (3,'ORDENADOR','1',500);
INSERT INTO `PEDIDOS` (ID,PRODUCTO,CANTIDAD,IMPORTE) VALUES (4,'IMPRESORA','3',150);
INSERT INTO `PEDIDOS` (ID,PRODUCTO,CANTIDAD,IMPORTE) VALUES (5,'ORDENADOR','1',600);
CREATE TABLE IF NOT EXISTS `DEPARTAMENTOS` (
	`DEP`	INTEGER,
	`DEPARTAMENTO`	TEXT,
	PRIMARY KEY(`DEP`)
);
INSERT INTO `DEPARTAMENTOS` (DEP,DEPARTAMENTO) VALUES (1,'ADMINISTRACION');
INSERT INTO `DEPARTAMENTOS` (DEP,DEPARTAMENTO) VALUES (2,'INFORMATICA');
INSERT INTO `DEPARTAMENTOS` (DEP,DEPARTAMENTO) VALUES (3,'COMERCIAL');
COMMIT;
