create database netflix;
use netflix;


create table netflix.rol(
id_rol int auto_increment not null,
nom_rol varchar(25) not null,
primary key(id_rol));


create table netflix.tipo_doc(
id_tipo_doc int not null,
siglas varchar(5), 
nom_tipo_doc varchar(30),
primary key (id_tipo_doc));

create table netflix.plans (
id_plan int auto_increment not null,
nom_plan varchar(25) not null,
caract_plan varchar(15) not null,
primary key (id_plan));


create table netflix.tipo_pago(
id_tipo_pago int auto_increment not null,
nom_pago varchar(40) not null,
primary key(id_tipo_pago));


create table netflix.idioma (
id_idioma int auto_increment not null,
nom_idioma varchar(10),
primary key(id_idioma)
);


create table netflix.usuario(
id_num_doc varchar(15),
nom1 varchar(25)not null,
nom2 varchar(25),
ape1 varchar(25) not null,
ape2 varchar(25),
email varchar(30)not null,
contrasena varchar(15) not null,
FK_tipo_doc int,
FK_c_rol int(10),
FK_c_plan int(10)
);
alter table  netflix.usuario  add constraint FK_tipo_doc foreign key  (FK_tipo_doc) references netflix.tipo_doc(id_tipo_doc) on update cascade;
alter table netflix.usuario add  constraint FK_c_rol foreign key (FK_c_rol) references netflix.rol(id_rol) on update cascade;
alter table netflix.usuario add constraint FK_plan foreign key (FK_c_plan) references netflix.plans(id_plan) on update cascade;
alter table netflix.usuario add  primary key(id_num_doc, FK_tipo_doc);



create table netflix.factura(
id_factura int,
FK_num_doc varchar(15),
FK_tipo_doc int,
total float(10) not null,
fecha date,
sub_total float(10),
iva float(10),
FK_c_plan int,
FK_c_tipo_pago int
);
alter table netflix.factura add constraint FK_usuario foreign key(FK_num_doc, FK_tipo_doc) references netflix.usuario(id_num_doc, FK_tipo_doc) on update cascade;
alter table netflix.factura add constraint FK_c_plan foreign key(FK_c_plan) references netflix.plans(id_plan) on update cascade;
alter table netflix.factura add constraint FK_c_tipo_pago foreign key(FK_c_tipo_pago) references netflix.tipo_pago(id_tipo_pago) on update cascade;
alter table netflix.factura add primary key(id_factura, FK_num_doc, FK_tipo_doc);
alter table netflix.factura modify column id_factura int auto_increment not null;



create table netflix.pelicula(
id_pelicula int auto_increment not null,
nom_pelicula varchar(25) not null,
duracion time,
year_pelicula int(4),
sinopsis varchar(100) not null,
calificacion float(1,1),
primary key(id_pelicula));



create table netflix.pelicula_idioma(
FK_pelicula int,
FK_idioma int
);
alter table netflix.pelicula_idioma add constraint FK_pelicula foreign key(FK_pelicula) references netflix.pelicula(id_pelicula) on update cascade;
alter table netflix.pelicula_idioma add constraint FK_idioma foreign key(FK_idioma) references netflix.idioma(id_idioma) on update cascade;
alter table netflix.pelicula_idioma add primary key(FK_pelicula, FK_idioma);








create table netflix.categoria(
id_categoria int,
nom_categoria varchar(20),
FK_c_pelicula int(4),
primary key(id_categoria)
);
alter table netflix.categoria add constraint FK_c_pelicula foreign key(FK_c_pelicula) references netflix.pelicula(id_pelicula) on update cascade;
 
 
 create table netflix.perfil(
id_perfil int(2) auto_increment not null,
nom_perfil varchar(10) not null,
avatar blob,
FK_c_num_doc varchar(15),
FK_c_tipo_doc int,
primary key (id_perfil)
);
alter table netflix.perfil add constraint FK_c_num_doc foreign key(FK_c_num_doc, FK_c_tipo_doc)  references netflix.usuario(id_num_doc, FK_tipo_doc) on update cascade;

 
create table netflix.perfil_pelicula(
FK_perfil int,
FK_pelicula int
);
alter table netflix.perfil_pelicula add constraint FK_perfil foreign key (FK_perfil ) references netflix.perfil(id_perfil) on update cascade;
alter table netflix.perfil_pelicula add constraint  FK2_pelicula foreign key(FK_pelicula) references netflix.pelicula(id_pelicula) on update cascade;
alter table netflix.perfil_pelicula add primary key(FK_perfil, FK_pelicula);


 create table netflix.serie(
id_serie int auto_increment not null,
nom_serie varchar(25) not null,
num_temporadas int(25) not null,
duaracion time not null,
year_serie int(4),
sinopsis_serie varchar(100),
calificacion float(1,1),
primary key (id_serie));

 
 
create table netflix.perfil_serie(
FK_perfil int,
FK_serie int
); 
alter table netflix.perfil_serie  add constraint F2_perfil foreign key(FK_perfil) references netflix.perfil(id_perfil) on update cascade;
alter table netflix.perfil_serie add constraint FK2_serie foreign key(FK_serie) references netflix.serie(id_serie) on update cascade;
alter table netflix.perfil_serie add primary key(FK_perfil, FK_serie);







create table netflix.temporada(
id_temporada int auto_increment not null,
nom_temporada varchar(25),
num_temporada int(3),
sinopsis varchar(30),
FK_c_serie int(4),
primary key(id_temporada));
alter table netflix.temporada add constraint foreign key (FK_c_serie) references netflix.serie(id_serie) on update cascade;



create table netflix.capitulo(
id_capitulo int auto_increment not null,
num_capitulo int,
nom_capitulo varchar(25) not null,
sinopsis_capitulo varchar(100),
duracion_capitulo time,
FK_temporada int,
primary key(id_capitulo)
);
alter table netflix.capitulo add foreign key(FK_temporada) references netflix.temporada(id_temporada)on update cascade;

create table netflix.capitulo_idioma(
FK_capitulo int,
FK_idioma int
);
alter table netflix.capitulo_idioma add constraint FK_capitulo1 foreign key (FK_capitulo) references netflix.capitulo(id_capitulo) on update cascade;
alter table netflix.capitulo_idioma add constraint FK_idioma1 foreign key (FK_idioma) references netflix.idioma(id_idioma) on update cascade;
alter table netflix.capitulo_idioma add primary key(FK_capitulo, FK_idioma);













































 




