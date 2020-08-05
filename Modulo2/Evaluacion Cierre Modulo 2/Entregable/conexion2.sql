--Script DDL
------------------------------------------------------------------------------------

CREATE TABLE alternativa (
    idalternativa        INTEGER NOT NULL,
    descripcion          VARCHAR2(50 CHAR),
    valorlogico          CHAR(1),
    porcentaje           FLOAT(4),
    pregunta_idpregunta  INTEGER NOT NULL
);

ALTER TABLE alternativa ADD CONSTRAINT alternativa_pk PRIMARY KEY ( idalternativa );

CREATE TABLE estudiante (
    rut                  VARCHAR2(11) NOT NULL,
    nombre               VARCHAR2(50 CHAR),
    apellido1            VARCHAR2(50 CHAR),
    apellido2            VARCHAR2(50 CHAR),
    programa_idprograma  INTEGER NOT NULL
);

ALTER TABLE estudiante ADD CONSTRAINT estudiante_pk PRIMARY KEY ( rut );

CREATE TABLE pregunta (
    idpregunta   INTEGER NOT NULL,
    enunciado    VARCHAR2(50 CHAR),
    puntaje      FLOAT(4),
    test_idtest  INTEGER NOT NULL
);

ALTER TABLE pregunta ADD CONSTRAINT pregunta_pk PRIMARY KEY ( idpregunta );

CREATE TABLE programa (
    idprograma  INTEGER NOT NULL,
    nombre      VARCHAR2(50 CHAR)
);

ALTER TABLE programa ADD CONSTRAINT programa_pk PRIMARY KEY ( idprograma );

CREATE TABLE resultado_test (
    estudiante_rut       VARCHAR2(11) NOT NULL,
    test_idtest          INTEGER NOT NULL,
    pregunta_idpregunta  INTEGER NOT NULL,
    respuesta            INTEGER NOT NULL,
    puntaje              INTEGER
);

ALTER TABLE resultado_test
    ADD CONSTRAINT resultado_test_pk PRIMARY KEY ( test_idtest,
                                                   estudiante_rut,
                                                   pregunta_idpregunta,
                                                   respuesta );

CREATE TABLE test (
    idtest               INTEGER NOT NULL,
    nombre               VARCHAR2(50 CHAR),
    descripcion          VARCHAR2(50 CHAR),
    autor                VARCHAR2(50 CHAR),
    fechacreacion        DATE,
    programa_idprograma  INTEGER NOT NULL,
    unidad_idunidad      INTEGER NOT NULL
);

CREATE UNIQUE INDEX test__idx ON
    test (
        unidad_idunidad
    ASC );

ALTER TABLE test ADD CONSTRAINT test_pk PRIMARY KEY ( idtest );

CREATE TABLE unidad (
    idunidad             INTEGER NOT NULL,
    nombre               VARCHAR2(50 CHAR),
    programa_idprograma  INTEGER NOT NULL
);

ALTER TABLE unidad ADD CONSTRAINT unidad_pk PRIMARY KEY ( idunidad );

ALTER TABLE alternativa
    ADD CONSTRAINT alternativa_pregunta_fk FOREIGN KEY ( pregunta_idpregunta )
        REFERENCES pregunta ( idpregunta );

ALTER TABLE estudiante
    ADD CONSTRAINT estudiante_programa_fk FOREIGN KEY ( programa_idprograma )
        REFERENCES programa ( idprograma );

ALTER TABLE pregunta
    ADD CONSTRAINT pregunta_test_fk FOREIGN KEY ( test_idtest )
        REFERENCES test ( idtest );

ALTER TABLE resultado_test
    ADD CONSTRAINT resultado_test_estudiante_fk FOREIGN KEY ( estudiante_rut )
        REFERENCES estudiante ( rut );

ALTER TABLE resultado_test
    ADD CONSTRAINT resultado_test_pregunta_fk FOREIGN KEY ( pregunta_idpregunta )
        REFERENCES pregunta ( idpregunta );

ALTER TABLE resultado_test
    ADD CONSTRAINT resultado_test_test_fk FOREIGN KEY ( test_idtest )
        REFERENCES test ( idtest );

ALTER TABLE test
    ADD CONSTRAINT test_programa_fk FOREIGN KEY ( programa_idprograma )
        REFERENCES programa ( idprograma );

ALTER TABLE test
    ADD CONSTRAINT test_unidad_fk FOREIGN KEY ( unidad_idunidad )
        REFERENCES unidad ( idunidad );

ALTER TABLE unidad
    ADD CONSTRAINT unidad_programa_fk FOREIGN KEY ( programa_idprograma )
        REFERENCES programa ( idprograma );


------------------------------------------------------------------------------------
--Scripts datos maestros

--Script SQL que registre al menos 2 cursos de 10 estudiantes que respondan estas evaluaciones.
----------------------------------------------------------------------------------------------

--

---A) Carga tabla maestra Programa


insert into programa values (1,'FullStack Java Trainnie');
insert into programa values (2,'Programación Android');

--B) Carga tabla maestra Estudiante

--Curso 1,'FullStack Java Trainnie'

insert into estudiante values ('131074050','Cristian','Pacheco','Diaz',1);
insert into estudiante values ('162616102','Camila','Contreras','Tobar',1);
insert into estudiante values ('16646745','Cecilia','Crisostomo','Santander',1);
insert into estudiante values ('175203265','Cristobal','Cifuentes','Lopez',1);
insert into estudiante values ('180393633','Damaris','Letelier','Gomez',1);
insert into estudiante values ('109648469 ','Edgardo','Mora','Dinamarca',1);
insert into estudiante values ('178848232','Gerald','Reyes','Castillo',1);
insert into estudiante values ('198539821','Ignacio','Millanao','Moya',1);
insert into estudiante values ('170411927','Ivan','Villarroel ','Ramirez',1);
insert into estudiante values ('190198693 ','Javiera','Espinoza','Ricouz',1); 


--Curso 2,'Programación Android'

insert into estudiante values ('111111111','NomAlumno1','Ape1Alumno1','Ape2Alumno1',2);
insert into estudiante values ('222222222','NomAlumno2','Ape1Alumno2','Ape2Alumno2',2);
insert into estudiante values ('333333333','NomAlumno3','Ape1Alumno3','Ape2Alumno3',2);
insert into estudiante values ('444444444','NomAlumno4','Ape1Alumno4','Ape2Alumno4',2);
insert into estudiante values ('555555555','NomAlumno5','Ape1Alumno5','Ape2Alumno5',2);
insert into estudiante values ('666666666 ','NomAlumno6','Ape1Alumno6','Ape2Alumno6',2);
insert into estudiante values ('777777777','NomAlumno7','Ape1Alumno7','Ape2Alumno7',2);
insert into estudiante values ('888888888','NomAlumno8','Ape1Alumno8','Ape2Alumno8',2);
insert into estudiante values ('999999999','NomAlumno9','Ape1Alumno9 ','Ape2Alumno9',2);
insert into estudiante values ('111112222 ','NomAlumno10','Ape1Alumno10','Ape2Alumno10',2); 
-----------------------------------------------------------------------------------------------
-- Script datos Unidad:

--Curso 1,'FullStack Java Trainnie'
insert into unidad values (1,'Programacion Basica en Java',1);
insert into unidad values (2,'Base de datos',1);

--Curso 2,'Programación Android'

insert into unidad values (3,'Programacion Basica en Android',2);
insert into unidad values (4,'Herramientas de Diseño en Android',2);

-----------------------------------------------------------------------------------------------

--Script llenado datos Test:

--Curso 1,'FullStack Java Trainnie'

insert into test values (1,'Evaluación1','Evaluación conocimientos BD', 'Cristian Pacheco Díaz','07-05-2020',1,2);
--TO_DATE('07-05-2020','DD-MM-YYYY')


--Curso 2,'Programación Android'

insert into test values (2,'Evaluación1','Evaluación conocimientos Programación', 'Cristian Pacheco Díaz','08-05-2020',2,3);
-----------------------------------------------------------------------------------------------


--Script SQL que registre al menos 2 evaluaciones, con 10 preguntas y 4 alternativas.
------------------------------------------------------------------------------------------------


--carga tabla pregunta, para test , programa 1: --Curso 1,'FullStack Java Trainnie'

--valorlogico  0=true, 1= false

insert into pregunta values (1, '¿Cuales son los objetivos principales de los SGBD?', 10, 1);

insert into alternativa values (1,'a) Independencia de datos', 0, 0.35,1);
insert into alternativa values (2,'b) Integridad de datos', 0, 0.35,1);
insert into alternativa values (3,'c) Seguridad de datos', 0, 0.30,1);
insert into alternativa values (4,'d) Calidad de datos', 1, 0,1);
----------------------------------------------------------------------------------------------
insert into pregunta values (2, '¿Cuales son las funciones de los DBMS?', 10, 1);

insert into alternativa values (5,'a)Seguridad', 0, 0.25,2);
insert into alternativa values (6,'b)Integridad', 0, 0.25,2);
insert into alternativa values (7,'c)Respaldo', 0, 0.25,2);
insert into alternativa values (8,'d)Control de la concurrencia', 0, 0.25,2);

----------------------------------------------------------------------------------------------
insert into pregunta values (3, 'El DBA es responsable de:', 10, 1);

insert into alternativa values (9,'a)Programar aplicación backend', 1, 0,3);
insert into alternativa values (10,'b)Administrar la estructura de la Base de Datos', 0, 0.25,3);
insert into alternativa values (11,'c)Administrar la actividad de los datos', 0, 0.25,3);
insert into alternativa values (12,'d)Administrar el DBMS', 0, 0.50,3);

----------------------------------------------------------------------------------------------
insert into pregunta values (4, '¿Cuales opciones, son componentes de un DBMS?', 10, 1);

insert into alternativa values (13,'a)Gestor de archivo', 0, 0.25,4);
insert into alternativa values (14,'b)Manejador de BD', 0, 0.25,4);
insert into alternativa values (15,'c)Procesador de consulta', 0, 0.25,4);
insert into alternativa values (16,'d)Compilador de DDL', 0, 0.25,4);

----------------------------------------------------------------------------------------------
insert into pregunta values (5, '¿Cuales BD, no son del tipo Relacional?', 10, 1);

insert into alternativa values (17,'a) Oracle 11g', 1, 0,5);
insert into alternativa values (18,'b) Mysql', 1, 0,5);
insert into alternativa values (19,'c) Cassandra', 0, 0.5,5);
insert into alternativa values (20,'d) MongoDB', 0, 0.5,5);

----------------------------------------------------------------------------------------------
insert into pregunta values (6, '¿Cuál es valido dentro de una instrucción SQL?', 10, 1);

insert into alternativa values (21,'a) SELECT * FROM Employees;', 0, 0.5,6);
insert into alternativa values (22,'b) INSERT * FROM Employees;', 1, 0,6);
insert into alternativa values (23,'c) UPDATE * FROM Employees;', 1, 0,6);
insert into alternativa values (24,'d) DROP TABLE Employees;', 0, 0.5,6);

----------------------------------------------------------------------------------------------
insert into pregunta values (7, '¿Cuál es valido dentro de una instrucción SQL?', 10, 1);

insert into alternativa values (25,'a) CREATE DATABASE db1;', 0, 1,7);
insert into alternativa values (26,'b) INSERT * FROM Employees;', 1, 0,7);
insert into alternativa values (27,'c) UPDATE * FROM Employees;', 1, 0,7);
insert into alternativa values (28,'d) DROP TABLES Employees;', 1, 0,7);

----------------------------------------------------------------------------------------------
insert into pregunta values (8, '¿Cuál es valido dentro de una instrucción SQL?', 10, 1);

insert into alternativa values (29,'a) SELECT * INTO Employees;', 1, 0,8);
insert into alternativa values (30,'b) INSERT * FROM Employees;', 1, 0,8);
insert into alternativa values (31,'c) UPDATE * FROM Employees;', 1, 0,8);
insert into alternativa values (32,'d) DROP DATABASE bufg;', 0, 1,8);

----------------------------------------------------------------------------------------------
insert into pregunta values (9, '¿Cuál es valido dentro de una instrucción SQL?', 10, 1);

insert into alternativa values (33,'a) CREATE TABLE t1;', 0, 1,9);
insert into alternativa values (34,'b) INSERT * FROM Employees;', 1, 0,9);
insert into alternativa values (35,'c) UPDATE * FROM Employees;', 1, 0,9);
insert into alternativa values (36,'d) DROP INTO Employees;', 1, 0,9);

----------------------------------------------------------------------------------------------
insert into pregunta values (10, '¿Cuál es valido dentro de una instrucción SQL?', 10, 1);

insert into alternativa values (37,'a) ALTER TABLE t1 RENAME INDEX i_old TO i_new;', 0, 1,10);
insert into alternativa values (38,'b) INSERT * FROM Employees;', 1, 0,10);
insert into alternativa values (39,'c) UPDATE * FROM Employees;', 1, 0,10);
insert into alternativa values (40,'d) DROP TABLE INTO Employees;', 1, 0,10);


--carga tabla pregunta, para test 2, programa 2: --Curso 2,'Programación Android'

--valorlogico  0=true, 1= false

insert into pregunta values (11, '¿Cual es el resultado pregunta1?', 10, 2);

insert into alternativa values (41,'a) correcta', 0, 0.35,11);
insert into alternativa values (42,'b) correcta', 0, 0.35,11);
insert into alternativa values (43,'c) correcta', 0, 0.30,11);
insert into alternativa values (44,'d) incorrecta', 1, 0,11);
----------------------------------------------------------------------------------------------
insert into pregunta values (12, '¿Cual es el resultado pregunta2?', 10, 2);

insert into alternativa values (45,'a)correcta', 0, 0.25,12);
insert into alternativa values (46,'b)correcta', 0, 0.25,12);
insert into alternativa values (47,'c)correcta', 0, 0.25,12);
insert into alternativa values (48,'d)correcta', 0, 0.25,12);

----------------------------------------------------------------------------------------------
insert into pregunta values (13, '¿Cual es el resultado pregunta3?', 10, 2);

insert into alternativa values (49,'a)incorrecta', 1, 0,13);
insert into alternativa values (50,'b)correcta', 0, 0.25,13);
insert into alternativa values (51,'c)correcta', 0, 0.25,13);
insert into alternativa values (52,'d)correcta', 0, 0.50,13);

----------------------------------------------------------------------------------------------
insert into pregunta values (14, '¿Cual es el resultado pregunta4?', 10, 2);

insert into alternativa values (53,'a)correcta', 0, 0.25,14);
insert into alternativa values (54,'b)correcta', 0, 0.25,14);
insert into alternativa values (55,'c)correcta', 0, 0.25,14);
insert into alternativa values (56,'d)correcta', 0, 0.25,14);

----------------------------------------------------------------------------------------------
insert into pregunta values (15, '¿Cual es el resultado pregunta5?', 10, 2);

insert into alternativa values (57,'a) incorrecta', 1, 0,15);
insert into alternativa values (58,'b) incorrecta', 1, 0,15);
insert into alternativa values (59,'c) correcta', 0, 0.5,15);
insert into alternativa values (60,'d) correcta', 0, 0.5,15);

----------------------------------------------------------------------------------------------
insert into pregunta values (16, '¿Cual es el resultado pregunta6?', 10, 2);

insert into alternativa values (61,'a) correcta', 0, 0.5,16);
insert into alternativa values (62,'b) incorrecta', 1, 0,16);
insert into alternativa values (63,'c) incorrecta', 1, 0,16);
insert into alternativa values (64,'d) correcta', 0, 0.5,16);

----------------------------------------------------------------------------------------------
insert into pregunta values (17, '¿Cual es el resultado pregunta7?', 10, 2);

insert into alternativa values (65,'a) correcta', 0, 1,17);
insert into alternativa values (66,'b) incorrecta', 1, 0,17);
insert into alternativa values (67,'c) incorrecta', 1, 0,17);
insert into alternativa values (68,'d) incorrecta', 1, 0,17);

----------------------------------------------------------------------------------------------
insert into pregunta values (18, '¿Cual es el resultado pregunta8?', 10, 2);

insert into alternativa values (69,'a) incorrecta', 1, 0,18);
insert into alternativa values (70,'b) incorrecta', 1, 0,18);
insert into alternativa values (71,'c) incorrecta', 1, 0,18);
insert into alternativa values (72,'d) correcta', 0, 1,18);

----------------------------------------------------------------------------------------------
insert into pregunta values (19, '¿Cual es el resultado pregunta9?', 10, 2);

insert into alternativa values (73,'a) correcta', 0, 1,19);
insert into alternativa values (74,'b) incorrecta', 1, 0,19);
insert into alternativa values (75,'c) incorrecta', 1, 0,19);
insert into alternativa values (76,'d) incorrecta', 1, 0,19);

----------------------------------------------------------------------------------------------
insert into pregunta values (20, '¿Cual es el resultado pregunta10?', 10, 2);

insert into alternativa values (77,'a) correcta', 0, 1,20);
insert into alternativa values (78,'b) incorrecta', 1, 0,20);
insert into alternativa values (79,'c) incorrecta', 1, 0,20);
insert into alternativa values (80,'d) incorrecta', 1, 0,20);

----------------------------------------------------------------------------------------------
--Carga Tabla Resultado_test

insert into resultado_test values ('131074050',1,1,1,'');
insert into resultado_test values ('131074050',1,1,2,'');
insert into resultado_test values ('131074050',1,1,3,'');
insert into resultado_test values ('131074050',1,2,8,'');
insert into resultado_test values ('131074050',1,2,6,'');
insert into resultado_test values ('131074050',1,2,5,'');
insert into resultado_test values ('131074050',1,2,7,'');
insert into resultado_test values ('131074050',1,3,11,'');
insert into resultado_test values ('131074050',1,3,12,'');
insert into resultado_test values ('131074050',1,3,10,'');
insert into resultado_test values ('131074050',1,4,13,'');
insert into resultado_test values ('131074050',1,4,14,'');
insert into resultado_test values ('131074050',1,4,15,'');
insert into resultado_test values ('131074050',1,4,16,'');
insert into resultado_test values ('131074050',1,5,19,'');
insert into resultado_test values ('131074050',1,5,20,'');
insert into resultado_test values ('131074050',1,6,21,'');
insert into resultado_test values ('131074050',1,6,24,'');
insert into resultado_test values ('131074050',1,7,25,'');
insert into resultado_test values ('131074050',1,8,32,'');
insert into resultado_test values ('131074050',1,9,33,'');
insert into resultado_test values ('131074050',1,10,38,'');

----------------------------------------------------------------------------------------------
--Pregunta1: Conocer el número de evaluaciones por curso. 

--opción1:
select programa_idprograma,count(*)
from test 
group by programa_idprograma
order by programa_idprograma;

--opción2:
select programa.nombre, count(test.programa_idprograma) 
from test
inner join programa on test.programa_idprograma=programa.idprograma
group by programa.nombre
order by programa.nombre;

----------------------------------------------------------------------------------------------
--Pregunta2: Conocer los cursos sin evaluaciones. 

--se consulta las unidades que no tienen evaluación asociada

select unidad.nombre, count(unidad.idunidad) 
from unidad
where not exists (select null from test where test.unidad_idunidad=unidad.idunidad)
group by unidad.nombre
order by unidad.nombre;


----------------------------------------------------------------------------------------------
--Pregunta3: Determinar las evaluaciones con deficiencia. Una evaluación es deficiente:  
-- a. Si no tiene preguntas. 

select test.nombre 
from test
where not exists (select null from pregunta where test.idtest=pregunta.test_idtest)

-- b. Si hay preguntas con 2 ó menos alternativas  

select p.idpregunta, a.count
from pregunta p
left join (select pregunta_idpregunta, count(pregunta_idpregunta)as count from alternativa group by pregunta_idpregunta)a
on p.idpregunta=a.pregunta_idpregunta
where  a.count < 2
order by p.idpregunta;

-- c. Si todas las alternativas son correctas o si todas las alternativas son incorrectas. 

--todas las alternativas son correctas, valorlogico=0, y el count=4
select p.idpregunta, a.count
from pregunta p
left join (select pregunta_idpregunta, count(valorlogico) as count from alternativa  where valorlogico=0 group by pregunta_idpregunta)a
on p.idpregunta=a.pregunta_idpregunta
where  a.count = 4
order by p.idpregunta;

--todas las alternativas son incorrectas, valorlogico=1, y el count=4
select p.idpregunta, a.count
from pregunta p
left join (select pregunta_idpregunta, count(valorlogico) as count from alternativa  where valorlogico=1 group by pregunta_idpregunta)a
on p.idpregunta=a.pregunta_idpregunta
where  a.count = 4
order by p.idpregunta;


----------------------------------------------------------------------------------------------
--Pregunta4: Determinar cuántos alumnos hay en cada curso. 

select programa.nombre, count(estudiante.programa_idprograma) 
from estudiante
inner join programa on estudiante.programa_idprograma=programa.idprograma
group by programa.nombre
order by programa.nombre;
----------------------------------------------------------------------------------------------
--Pregunta5: Obtener el puntaje no normalizado de cada evaluación. El puntaje no normalizado ha sido definido (requerimiento)
--como: P = buenas – malas/4. Si un alumno no contesta en una pregunta exactamente lo mismo que se ha definido como correcto, 
--la pregunta cuenta como mala a menos que el alumno haya omitido. 

--se crea vista "resumen" con atributos rut, test, preguntas y respuestas contestadas
CREATE VIEW resumen AS
select estudiante.rut,estudiante.nombre, test.idtest,resultado_test.pregunta_idpregunta,sum(alternativa.porcentaje) as sum
from estudiante
inner join resultado_test on(estudiante.rut=resultado_test.estudiante_rut)
inner join test on(resultado_test.test_idtest=test.idtest)
inner join pregunta on(test.idtest= pregunta.test_idtest)
inner join alternativa on(pregunta.idpregunta=alternativa.pregunta_idpregunta)
where resultado_test.pregunta_idpregunta = idpregunta and resultado_test.respuesta = alternativa.idalternativa
group by estudiante.rut,estudiante.nombre,test.idtest,resultado_test.pregunta_idpregunta;

---
--Malas
select rut,nombre, idtest,count (sum)as malas
from resumen
where sum= 0
group by rut, nombre, idtest ;

--Buenas
select rut, nombre,idtest,count (sum)as buenas
from resumen 
where sum= 1
group by rut, nombre,idtest;

----------------------------------------------------------------------------------------------
--Pregunta6: Obtener el puntaje normalizado, o sea, de 1,0 a 7,0. 
select rut, nombre,idtest,sum(sum)as puntaje
from resumen 
where sum= 1
group by rut, nombre,idtest;
----------------------------------------------------------------------------------------------
--Pregunta7: Nombre de estudiantes de un curso determinado que aprueban una evaluación determinada (donde la nota de aprobación
--mínima es un 4,0). 
select e.rut,e.nombre
from estudiante e
inner join (select rut, nombre,idtest,sum(sum)as puntaje from resumen where sum= 1 group by rut, nombre,idtest)r
on e.rut=r.rut
where r.puntaje > 4
group by e.rut, e.nombre;

----------------------------------------------------------------------------------------------
--Pregunta8: Nota promedio de los estudiantes de un curso determinado, para una evaluación de terminada. 
select p.idprograma, avg (r.puntaje)
from programa p
inner join estudiante e on (p.idprograma= e.programa_idprograma)
inner join (select rut, nombre,idtest,sum(sum)as puntaje from resumen where sum= 1 group by rut, nombre,idtest)r
on e.rut=r.rut
where r.puntaje > 4
group by p.idprograma;

----------------------------------------------------------------------------------------------