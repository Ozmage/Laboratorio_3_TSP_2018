

/* Socios */


create table socios(

legajo bigint primary key not null,
apellido varchar(100) not null,
nombres varchar(100) not null,
fechaNac date not null ,

)


/* PROVINCIAS */

create table provincias(
IDPROVINCIA SMALLINT NOT NULL PRIMARY KEY IDENTITY (1,1),
PROVINCIA  varchar(50)not null,


)



/* Sedes */

create table sedes( 

DIRECCION VARCHAR(50) NOT NULL,
idsedes int not null primary key identity (1,1),






)
/* ATIVIDADES */

create table actividades(
 
idactividad int not null primary key identity (1,1),
nombre varchar(50) not null,
idsedes int not null  foreign key references sedes (idsedes),


)

/* actividad por socio */

create table ACTIVIDAD_X_SOCIO (

legajo bigint not null foreign key references socios(legajo),
idactividad int not null foreign key references actividades(idactividad),
primary key (legajo,idactividad),

)

/* Pagos */ 

create table pagos (

legajo bigint not null foreign key references socios (legajo),
costo money not null check (costo >=0),
fecha date not null,
mes smallint  not null check  (mes >=1 and mes <=12),
anio int not null check (anio >1900),


)
 
/* CONDICIon pAra QUE NO PAGUE 2 VECES LO MISMO  POR SI TE OLVIDASTE UN DATO*/
alter table pagos
add constraint PK_PAGOS primary key (legajo,mes,anio)


alter table sedes
add telefono varchar (10) null