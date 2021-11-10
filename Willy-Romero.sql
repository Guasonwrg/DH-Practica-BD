CREATE DATABASE  IF NOT EXISTS `practica` /*!40100 DEFAULT CHARACTER SET latin1 */;


CREATE TABLE practica.Usuarios (
	id_usuario INTEGER auto_increment NOT NULL,
	id_nota INTEGER NOT NULL,
	Nombre varchar(100) NOT NULL,
	Email varchar(100) NOT NULL,
	CONSTRAINT Usuarios_pk PRIMARY KEY (id_usuario)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;

CREATE TABLE practica.Notas (
	id_nota INTEGER auto_increment NOT NULL,
	id_usuario INTEGER NOT NULL,
	id_categoria INTEGER NOT NULL,
	release_date TIMESTAMP NULL,
	modify_date TIMESTAMP NULL,
	Descripción varchar(100) NOT NULL,
	Eliminable BOOL NULL,
	CONSTRAINT Notas_pk PRIMARY KEY (id_nota)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;


CREATE TABLE practica.Categorías (
	id_categoria INTEGER auto_increment NOT NULL,
	Nombre varchar(100) NOT NULL,
	CONSTRAINT Categorías_pk PRIMARY KEY (id_categoria)
)
ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_general_ci;




--  Auto-generated SQL script #202111092116
INSERT INTO practica.usuarios (id_usuario,id_nota,Nombre,Email)
	VALUES (1,10,'Obi Wan','obiwan@jedi.com');
INSERT INTO practica.usuarios (id_usuario,id_nota,Nombre,Email)
	VALUES (2,9,'Anakin','anakin@jedi.com');
INSERT INTO practica.usuarios (id_usuario,id_nota,Nombre,Email)
	VALUES (3,8,'Ashoka','ashoka@jedi.com');
INSERT INTO practica.usuarios (id_usuario,id_nota,Nombre,Email)
	VALUES (4,7,'Yoda','yoda@jedi.com');
INSERT INTO practica.usuarios (id_usuario,id_nota,Nombre,Email)
	VALUES (5,6,'Luke','luke@jedi.com');
INSERT INTO practica.usuarios (id_usuario,id_nota,Nombre,Email)
	VALUES (6,5,'Leia','leia@rebelde.com');
INSERT INTO practica.usuarios (id_usuario,id_nota,Nombre,Email)
	VALUES (7,4,'Han','han@crontrabandista.com');
INSERT INTO practica.usuarios (id_usuario,id_nota,Nombre,Email)
	VALUES (8,3,'Vader','vader@sith.com');
INSERT INTO practica.usuarios (id_usuario,id_nota,Nombre,Email)
	VALUES (9,2,'Palpatine','palpatine@sith.com');
INSERT INTO practica.usuarios (id_usuario,id_nota,Nombre,Email)
	VALUES (10,1,'Maul','maul@sith.com');


INSERT INTO practica.notas (id_nota,id_usuario,id_categoria,Descripción)
	VALUES (2,9,2,'Como engañar a los sabios');
INSERT INTO practica.notas (id_nota,id_usuario,id_categoria,Descripción)
	VALUES (3,8,3,'Como ser seducido por lo facíl');
INSERT INTO practica.notas (id_nota,id_usuario,id_categoria,Descripción)
	VALUES (4,7,4,'Como esconder contrabando');
INSERT INTO practica.notas (id_nota,id_usuario,id_categoria,Descripción)
	VALUES (5,6,5,'Como hacerle imposible la vida a tu padre');
INSERT INTO practica.notas (id_nota,id_usuario,id_categoria,Descripción)
	VALUES (6,5,6,'Lidiar con la familia');
INSERT INTO practica.notas (id_nota,id_usuario,id_categoria,Descripción)
	VALUES (7,4,7,'Saberlo todo y no ver lo obvio');
INSERT INTO practica.notas (id_nota,id_usuario,id_categoria,Descripción)
	VALUES (8,3,8,'Bajarse del barco a tiempo');
INSERT INTO practica.notas (id_nota,id_usuario,id_categoria,Descripción)
	VALUES (9,2,9,'Como ser el mejor y cagarla');
INSERT INTO practica.notas (id_nota,id_usuario,id_categoria,Descripción)
	VALUES (10,1,10,'Seguir siendo correcto a pear de todo');


INSERT INTO practica.categorías (id_categoria,Nombre)
	VALUES (1,'Drama');
INSERT INTO practica.categorías (id_categoria,Nombre)
	VALUES (2,'Engaño');
INSERT INTO practica.categorías (id_categoria,Nombre)
	VALUES (3,'Desesperación');
INSERT INTO practica.categorías (id_categoria,Nombre)
	VALUES (4,'Practicas incorrectas');
INSERT INTO practica.categorías (id_categoria,Nombre)
	VALUES (5,'Fuerza');
INSERT INTO practica.categorías (id_categoria,Nombre)
	VALUES (6,'Psicología');
INSERT INTO practica.categorías (id_categoria,Nombre)
	VALUES (7,'Confianza');
INSERT INTO practica.categorías (id_categoria,Nombre)
	VALUES (8,'Audacia');
INSERT INTO practica.categorías (id_categoria,Nombre)
	VALUES (9,'Errores');
INSERT INTO practica.categorías (id_categoria,Nombre)
	VALUES (10,'Honor');


ALTER TABLE practica.usuarios ADD CONSTRAINT usuarios_FK FOREIGN KEY (id_nota) REFERENCES practica.notas(id_nota);

ALTER TABLE practica.notas ADD CONSTRAINT notas_FK FOREIGN KEY (id_categoria) REFERENCES practica.categorías(id_categoria);