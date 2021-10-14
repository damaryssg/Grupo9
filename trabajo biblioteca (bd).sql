create database Biblioteca_colegio;
use Biblioteca_colegio;

create table bibliotecaria (id_bibliotecaria varchar(45) not null,
nombres_bibliotecaria varchar(45) not null,
apellidos_bibliotecaria varchar(45) not null,
Direccion varchar(45) not null,
Telefono int unsigned not null,
primary key (id_bibliotecaria));

create table libros (id_libro varchar(45) not null,
nombre_libro varchar(45) not null,
autor_libro varchar(45) not null,
categoria_libro varchar(45) not null,
stock_libro int unsigned not null,
primary key (id_libro),
foreign key (id_prestamo) references prestamos(id_prestamo));

create table estudiantes (id_estudiante varchar(45) not null,
nombres_estudiante varchar(45) not null,
apellidos_estudiante varchar(45) not null,
curso varchar(45) not null,
primary key (id_estudiante));

create table profesores (id_profesor varchar(45) not null,
nombres_profesor varchar(45) not null,
apellidos_profesor varchar(45) not null,
materia varchar(25) not null,
jefe_curso varchar(45) not null,
primary key (id_profesor));

create table usuario (id_usuario int unsigned not null,
nombre_usuario varchar(45) not null,
apellido_usuario varchar (45) not null, 
cargo varchar(45) not null,
primary key (id_usuario));

create table prestamos (id_prestamo int unsigned not null,
id_libro int unsigned not null,
nombre_libro varchar(45) not null,
fecha_prestamo date not null,
fecha_devolucion date not null,
estado varchar(45) not null,
id_usuario int unsigned not null,
nombre_usuario varchar(45) not null,
primary key (id_prestamo),
foreign key (id_libro) references libros(id_libro),
foreign key (id_usuario) references usuario(id_usuario));

#insertar datos

insert into bibliotecaria (id_bibliotecaria, nombres_bibliotecaria, apellidos_bibliotecaria, direccion, telefono) values ('1', 'Maria Luisa', 'Muñoz Santana','Independencia 594 Los Andes' ,976770203);

select*from bibliotecaria;

insert into libros (id_libro, nombre_libro, autor_libro, categoria_libro, stock_libro) values ('001 - 016','Sub-terra','Baldomero Lillo', 'Ficcion', 15);
insert into libros (id_libro, nombre_libro, autor_libro, categoria_libro, stock_libro) values ('017 -037' ,'Charlie y la fabrica de chocolate','Roald Dahl', 'Fantasia', 20);
insert into libros (id_libro, nombre_libro, autor_libro, categoria_libro, stock_libro) values ('038 - 053','Papelucho','Marcela Paz', 'Novela', 15);
insert into libros (id_libro, nombre_libro, autor_libro, categoria_libro, stock_libro) values ('054 - 069','Sapo y Sepo, inseparables','Arnold Lobel', 'Literatura Infantil', 15);
insert into libros (id_libro, nombre_libro, autor_libro, categoria_libro, stock_libro) values ('070 - 085','Alicia en el pais de las maravillas','Lewis Carroll ', 'Fantasia', 15);
insert into libros (id_libro, nombre_libro, autor_libro, categoria_libro, stock_libro) values ('086 - 101','Rebelion en la granja',' George Orwell', 'Novela corta', 15);
insert into libros (id_libro, nombre_libro, autor_libro, categoria_libro, stock_libro) values ('102 - 119','El diario de Ana Frank','Ana Frank', 'Biografia', 17);
insert into libros (id_libro, nombre_libro, autor_libro, categoria_libro, stock_libro) values ('120 - 135','El Principito','Antoine de Saint-Exupéry', 'Literatura infantil, Fabula', 10);
insert into libros (id_libro, nombre_libro, autor_libro, categoria_libro, stock_libro) values ('136 - 153','Charlie y el gran ascensor de cristal','Roald Dahl', 'Fantasia', 17);
insert into libros (id_libro, nombre_libro, autor_libro, categoria_libro, stock_libro) values ('154 - 172','Mac, el microbio desconocido','Hernan del Solar', 'Infantil', 18);

select*from libros;
 
insert into estudiantes (id_estudiante, nombres_estudiante, apellidos_estudiante, curso) values ( '01', 'Alison Ignacia', 'Perez Diaz', '6to basico');
insert into estudiantes (id_estudiante, nombres_estudiante, apellidos_estudiante, curso) values ( '02', 'Jesus Mario', 'Salas Mesias', ' 4to basico');
insert into estudiantes (id_estudiante, nombres_estudiante, apellidos_estudiante, curso) values ( '03', 'Oscar Pablo', 'Salinas Hernandez', '4to basico');
insert into estudiantes (id_estudiante, nombres_estudiante, apellidos_estudiante, curso) values ( '04', 'Lucas Alexander', 'Olivares Gonzalez', '3ro basico');
insert into estudiantes (id_estudiante, nombres_estudiante, apellidos_estudiante, curso) values ( '05', 'Andres David', 'Quebedo Luck', '8vo basico');
insert into estudiantes (id_estudiante, nombres_estudiante, apellidos_estudiante, curso) values ( '06', 'Lucero Anais', 'Quintana Quijada', '8vo basico');
insert into estudiantes (id_estudiante, nombres_estudiante, apellidos_estudiante, curso) values ( '07', 'Constanza Belen ', 'Ulloa Molina', '7mo basico');
insert into estudiantes (id_estudiante, nombres_estudiante, apellidos_estudiante, curso) values ( '08', 'Jose Antonio ', 'Castro Lavin ', '7mo basico');
insert into estudiantes (id_estudiante, nombres_estudiante, apellidos_estudiante, curso) values ( '09', 'Lucia Martina', 'Mendez Lopez', '6to basico');
insert into estudiantes (id_estudiante, nombres_estudiante, apellidos_estudiante, curso) values ( '10', 'Juan Alejo', 'Carmona Tapia', '5to basico');

select*from estudiantes;

insert into profesores (id_profesor, nombres_profesor, apellidos_profesor, materia, jefe_curso) values ('13304567-9','Jhon Mauricio','Ramirez Tapia','Lenguaje','6to basico');
insert into profesores (id_profesor, nombres_profesor, apellidos_profesor, materia, jefe_curso) values ('15632365-8','Valentina Andrea','Fernandez Aravena','Matematicas','4to basico');
insert into profesores (id_profesor, nombres_profesor, apellidos_profesor, materia, jefe_curso) values ('16732892-7','Alex Bastian','Rojas Alvarado','Ciencias','3ro basico');
insert into profesores (id_profesor, nombres_profesor, apellidos_profesor, materia, jefe_curso) values ('19308210-6','Juana Ana','Paez Baeza','Historia','2do basico');
insert into profesores (id_profesor, nombres_profesor, apellidos_profesor, materia, jefe_curso) values ('14763787-5','Eduardo Alfonso','Espinoza Alfaro','Educacion Fisica','5to basico');

select*from profesores;

insert into usuario (id_usuario, nombre_usuario, apellido_usuario, cargo) values ('1', 'Lucia', 'Mendez Lopez', 'Estudiante');
insert into usuario (id_usuario, nombre_usuario, apellido_usuario, cargo) values ('2', 'Jose Antonio', 'Castro Lavin', 'Estudiante');
insert into usuario (id_usuario, nombre_usuario, apellido_usuario, cargo) values ('3', 'Alex', 'Rojas Alvarado', 'Profesor');
insert into usuario (id_usuario, nombre_usuario, apellido_usuario, cargo) values ('4', 'Juana', 'Paez Baeza', 'Profesora');
insert into usuario (id_usuario, nombre_usuario, apellido_usuario, cargo) values ('5', 'Jhon','Ramirez Tapia', 'Profesor');
insert into usuario (id_usuario, nombre_usuario, apellido_usuario, cargo) values ('6', 'Constanza', 'Ulloa Molina', 'Estudiante');
insert into usuario (id_usuario, nombre_usuario, apellido_usuario, cargo) values ('7', 'Oscar', 'Salinas Hernandez', 'Estudiante');
insert into usuario (id_usuario, nombre_usuario, apellido_usuario, cargo) values ('8', 'Lucas', 'Olivares Gonzalez', 'Estudiante');
insert into usuario (id_usuario, nombre_usuario, apellido_usuario, cargo) values ('9', 'Lucero', 'Quintana Quijada', 'Estudiante'); 
insert into usuario (id_usuario, nombre_usuario, apellido_usuario, cargo) values ('10', 'Valentina','Fernandez Aravena', 'Profesora');

select*from usuario;

insert into prestamos (id_prestamo, id_libro, nombre_libro, fecha_prestamo, fecha_devolucion, estado, id_usuario, nombre_usuario) values ('01', '087', 'Rebelion de la granja','2021-9-13', '2021-9-20','Prestado','8','Lucas Olivarez Gonzalez');
insert into prestamos (id_prestamo, id_libro, nombre_libro, fecha_prestamo, fecha_devolucion, estado, id_usuario, nombre_usuario) values ('02', '121','El principito', '2021-8-10', '2021-8-17','Prestado','3','Alex Rojas Alvarado');
insert into prestamos (id_prestamo, id_libro, nombre_libro, fecha_prestamo, fecha_devolucion, estado, id_usuario, nombre_usuario) values ('03', '108', 'El diario de Ana Frank', '2021-9-2', '2021-9-9','Prestado','7','Oscar Salinas Hernandez');
insert into prestamos (id_prestamo, id_libro, nombre_libro, fecha_prestamo, fecha_devolucion, estado, id_usuario, nombre_usuario) values ('04', '067','Sapo y Sepo, inseparables', '2021-7-4', '2021-9-11','Prestado','6','Constanza Ulloa Molina');

select*from prestamos;

#Consultas dadas a resolver 

#a)Inscribir o insertar un nuevo estudiante, profesor o asistente de la educación

insert into estudiantes (rut_estudiante, nombres_estudiante, apellidos_estudiante, curso) values ( '25532125-2', 'Mateo Jose', 'Hernandez Parra', '5to basico');

#b)Inscribir o insertar un nuevo libro 

insert into libros (id_libro, nombre_libro, autor_libro, categoria_libro, stock_libro) values ('173 - 183','El Gran Gigante Bonachón','Roald Dahl', 'Fantasia', 10);



#c)Préstamos de libros a estudiante, profesor o asistente de la educación
 
insert into prestamos (id_prestamo, id_libro, nombre_libro, fecha_prestamo, fecha_devolucion, estado, id_usuario, nombre_usuario) values ('05', '130', 'El Principito', '2021-9-10', '2021-9-20','Prestado','2','Jose Castro Lavin');
insert into prestamos (id_prestamo, id_libro, nombre_libro, fecha_prestamo, fecha_devolucion, estado, id_usuario, nombre_usuario) values ('06', '118', 'El diario de Ana Frank', '2021-9-18', '2021-9-28','Prestado','5','Jhon Ramirez Tapia');
 
 select*from prestamos;
 
#d)Devolución de libros por parte de un estudiante, profesor o asistente de la educación

update prestamos set estado='Devuelto'where id_prestamo='01';

#e)Verificar el stock de los libros en la biblioteca y los que están en calidad de préstamos

select*from libros,id_libro, nombre_libro, prestamos
where stock_libro = 0;

#f)Renovar el préstamo de un libro a un estudiante, profesor o asistente de la educación

update prestamos set fecha_devolucion='2021-09-27' where id_prestamo='05';

#g)Consultar el material bibliográfico por su categoría (solo si consideraron la categoría en los libros) y que además entregue la cantidad de ejemplares y su estado

select*from libros;

#h) Dar de baja un libro, que no es eliminarlo, sino un cambio de estado

update libros set stock_libro='1' where id_libro='001-016';

#i) Informar la cantidad de libros en préstamos(id libro, nombre libro, fecha prestamo, fecha devolución, id usuario y nombre usuario)

select*from prestamos;

#j) Eliminar o cambiar de estado a un usuario de la base de datos

delete from usuario where id_usuario='10';


