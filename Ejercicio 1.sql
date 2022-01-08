
/*1) Cree una tabla llamada CURSO con los atributos:

    Código de curso (clave primaria, entero no nulo)
    Nombre (varchar no nulo)
    Descripcion (varcha)
    Turno (varchar no nulo)*/

CREATE TABLE CURSO(
codigo integer PRIMARY KEY, 
nombre varchar NOT NULL, 
descripcion varchar, 
turno varchar);


/*2)Agregue un campo “cupo” de tipo numérico*/

ALTER TABLE CURSO 
ADD column cupo INTEGER;

/*3)Inserte datos en la tabla:
	1.(101, “Algoritmos”,”Algoritmos y Estructuras de Datos”,”Mañana”,35)
    2.(102, “Matemática Discreta”,””,”Tarde”,30)*/

insert into CURSO
VALUES (101, "Algoritmos", "Algoritmos y Estructuras de Datos","Mañana",35);

INSERT into CURSO 
VALUES (102, "Matemática Discreta","","Tarde",30);

/*4)Intente ingresar un registro con el nombre nulo y verifique que no funciona.*/

INSERT into CURSO VALUES (3, NULL, NULL,"Tarde",45);

/*5)Intente ingresar un registro con la clave primaria repetida y verifique que no funciona.*/

INSERT into CURSO VALUES (102, "Fisica", "","Mañana",20);

/*6)Actualice, para todos los cursos, el cupo en 25.*/

UPDATE CURSO SET cupo = 25;

/*7)Elimine el curso Algoritmos.*/

DELETE FROM CURSO WHERE nombre = " Algoritmos"