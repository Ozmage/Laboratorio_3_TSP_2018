
create database club

create table socios(

legajo int primary key  not null,
apellido varchar(100) not null,
nombre varchar(100) not null,
fechaNac date not null 
)


create table sedes(
numero int primary key not null,
nombre varchar(100) not null unique,
direccion varchar(100) not null unique,
telefono int not null,
codpos int not null unique

)
/*tabla que almacena la informacion de las sedes */
create table ubicacion(

codpos int primary key not null,
localidad varchar(100) not null,
provincia varchar(100) not null unique
)

create table pagos(
legajo int foreign key references socios(legajo),
fechaPag date not null check (fechaPag>='1/1/2018'),
 monto float not null check(monto>=0),
actividad varchar(100) not null,
sede int foreign key  references sedes(numero)
)

create table periodo(
dia int not null check(dia>=1 AND dia<=31 ),
mes int not null check(mes>=1 AND mes<=12),
anio int not null

)


insert into  socios values(10,'carlos','gomez','10/11/1988');
/*insert into  socios values(10,'carlos martin','fernandez','1/1/1990');
insert into  socios values(10,'juliana','lopez','2/2/1988');
insert into  socios values(10,'dalmiro','freire','4/4/1986');
insert into  socios values(10,'candela','perrone','5/5/2000');*/