Create database sicloud;
use sicloud;
create table roll_persona(
ID_roll int auto_increment not null,
FK_ID_pers varchar(25),
FechaR date,
Estado bit,
FK_PersonaID_doc integer(3) not null,
primary key(ID_roll, FK_PersonaID_doc )
);


create table roll(
ID_roll_n integer(3),
NomRoll varchar(25) not null,
primary key(ID_roll_n)
);


create table factura(
ID_factura integer auto_increment not null,
Total float(10),
fecha date,
SubTotal float(10),
iva float(10),
primary key (ID_factura));

create table producto ( 
ID_pro integer auto_increment not null,
NomP varchar(30) not null,
EstaP varchar(20) not null,
ValP varchar(15) not null,
Stok float(15) not null,
FK_categoria integer(3) not null,
FK_tipo_medida integer not null,
primary key(ID_pro));


create table det_factura(
ID_det_factura integer not null,
ID_det_pro integer not null,
cantidad float(25),
FK_pers varchar(25),
FK_nom_doc int,
foreign key (ID_det_factura) references factura(ID_factura),
foreign key (ID_det_pro) references producto(ID_pro),
primary key (ID_det_factura, ID_det_pro)); 


create table documento(
ID_docT integer(3) auto_increment not null,
NomD varchar(15) not null,
acronimo varchar(5) not null,
primary key (ID_docT));



create table persona(
ID_pers varchar(25) not null,
nom1 varchar(25) not null,
nom2 varchar(25),
ape1 varchar(25)not null,
ape2 varchar(25),
fecha date,
FK_doc integer(3),
foreign key (FK_doc) references documento(ID_docT),
primary key (ID_pers, FK_doc)
); 
alter table persona add passw varchar(25) not null;
alter table persona add foto blob;


create table roll_persona(
FK_roll int(3),
FK_pers varchar(25),
fechaR date,
estado bit,
foreign key(FK_pers) references persona(ID_pers),
foreign	key(FK_roll) references roll(ID_roll_n),
primary key(FK_roll, FK_pers)
);

alter table det_factura add foreign key (FK_pers) references persona(ID_pers);
 
 create table orden_entrada (
 ID_ord integer auto_increment not null,
 FechaIng date not null,
 FK_roll int(3),
 FK_roll_pers int(3), 
 FK_persona varchar(25),
 primary key(ID_ord));
 
 alter table orden_entrada add foreign key (FK_roll) references roll_persona(FK_roll); 
 
 
 create table det_orden (
 FK_ord int,
 FK_pro int,
 Canp float,
 foreign key (FK_ord) references orden_entrada(ID_ord),
 foreign key (FK_pro) references producto(ID_pro)
 );
 
 
 alter table det_orden add primary key (FK_ord, FK_pro);
 
 create table categoria(
 ID_catego integer (3) auto_increment not null,
 Nom_Cat varchar(25) not null,
 primary key (ID_catego));
 
 
 alter table producto add foreign key(FK_categoria) references categoria(ID_catego);
 
 
create table tipo_medida (
ID_medida int auto_increment not null,
Nom_medida varchar(35),
Acron_M varchar(5),
primary key (ID_medida));

alter table producto add foreign key(FK_tipo_medida) references tipo_medida(ID_medida);

create table empresa_provedor(
RutD varchar(20),
NomE varchar(25),
primary key(RutD));


create table det_producto(
FK_pro integer,
FK_RutD varchar(20),
Fecha date,
Num_fac_ing varchar(25),
foreign key (FK_pro) references producto(ID_pro),
foreign key (FK_RutD) references empresa_provedor(RutD),
primary key(FK_pro, FK_RutD)
);

create table servidor_correo(
ID_SC integer(10) auto_increment not null,
Tipo_correo varchar(25),
primary key(ID_SC)
); 

create table telefono (
ID_tel integer auto_increment not null,
Tel varchar(20) not null,
FK_pers varchar(25),
FK_empresa varchar(20),
foreign key (FK_pers) references persona(ID_pers),
foreign key (FK_empresa) references empresa_provedor(RutD),
primary key(ID_tel)
);

create table ciudad(
ID_ciud integer auto_increment not null,
NomC varchar(25),
primary key(ID_ciud));

create table localidad(
ID_Loc integer auto_increment not null,
NomL varchar(25),
FK_ciud integer,
foreign key(FK_ciud) references ciudad(ID_ciud),
primary key(ID_Loc, FK_ciud));

create table barrio(
ID_barrio integer auto_increment not null,
NomB varchar(25),
FK_ciudL integer,
FK_Loc integer,
foreign key(FK_ciudL) references localidad(FK_ciud),
foreign key(FK_Loc) references  localidad(ID_Loc),
primary key(ID_barrio, FK_ciudL, FK_Loc ));


create table direccion(
ID_dir integer auto_increment not null,
Via_p varchar(15) not null,
Via_g varchar(15) not null,
FK_pers varchar(25),
FK_RutD varchar(20),
FK_LocB integer,
FK_CiudB integer,
FK_barrio integer,
foreign key(FK_LocB) references barrio(FK_Loc),
foreign key(FK_CiudB) references barrio(FK_ciudL),
foreign key(FK_barrio) references barrio(ID_barrio),
primary key(ID_dir, FK_LocB, FK_CiudB, FK_barrio)
);

alter table direccion add foreign key(FK_pers) references persona(ID_pers);
alter table direccion add foreign key(FK_RutD) references empresa_provedor(RutD);

create table log_error(
ID_error integer auto_increment not null,
Descrip_error varchar(255),
Fecha date not null,
Hora time,
primary key	(ID_error)
);























