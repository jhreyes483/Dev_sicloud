drop database sicloud;
Create database sicloud;
use sicloud;



create table sicloud.servidor_correo(
ID_SC integer auto_increment not null,
tipo_correo varchar(25) not null,
primary key(ID_SC)
); 


create table sicloud.log_error(
ID_error int auto_increment not null,
descrip_error varchar(255),
fecha date not null,
hora time,
primary key	(ID_error)
);


create table sicloud.rol(
ID_rol_n int(3) not null,
nom_rol varchar(25) not null,
primary key(ID_rol_n)
);
alter table sicloud.rol modify ID_rol_n int auto_increment;

create table sicloud.tipo_doc(
ID_acronimo varchar(5) not null,
nom_doc varchar(25) not null,
primary key (ID_acronimo));


create table sicloud.factura(
ID_factura integer auto_increment not null,
total float(20,2) not null,
fecha date not null,
sub_total float(20,2),
iva float(20,2),
primary key (ID_factura)
);









create table sicloud.tipo_medida (
ID_medida int auto_increment not null,
nom_medida varchar(35) not null,
acron_medida varchar(5) not null,
primary key (ID_medida)
);


 create table sicloud.categoria(
 ID_categoria int auto_increment not null,
 nom_categoria varchar(30) not null,
 primary key (ID_categoria)
 );
 
  
create table sicloud.producto( 
ID_prod varchar(40) not null,
nom_prod varchar(30) not null,
val_prod float(15,3) not null,
stok_prod float(15,3) not null,
estado_prod varchar(20) not null,
CF_categoria int not null,
CF_tipo_medida int not null);
alter table sicloud.producto add  constraint CF_categoria foreign key(CF_categoria) references sicloud.categoria(ID_categoria) on update cascade;
alter table sicloud.producto add  constraint CF_tipo_medida foreign key(CF_tipo_medida) references sicloud.tipo_medida(ID_medida) on update cascade;
alter table sicloud.producto add  primary key(ID_prod);


create table sicloud.usuario(
ID_us varchar(25) not null,
nom1 varchar(20) not null,
nom2 varchar(20),
ape1 varchar(20)not null,
ape2 varchar(20),
fecha date not null,
pass varchar(25) not null,
foto blob,
correo varchar(25) not null,
FK_tipo_doc varchar(5) not null);
alter table sicloud.usuario add constraint FK_tipo_doc foreign key (FK_tipo_doc) references sicloud.tipo_doc(ID_acronimo) on update cascade;
alter table sicloud.usuario add primary key (ID_us, FK_tipo_doc);
alter table sicloud.usuario modify correo varchar(50);


create table sicloud.det_factura(
FK_det_factura int not null,
FK_det_prod varchar(40) not null,
cantidad float(25,2) not null,
CF_us varchar(25) not null,
CF_tipo_doc varchar(5) not null);
alter table sicloud.det_factura add constraint FK_det_factura foreign key (FK_det_factura) references sicloud.factura(ID_factura) on update cascade;
alter table sicloud.det_factura add constraint FK_det_factura_1 foreign key (FK_det_prod) references sicloud.producto(ID_prod) on update cascade;
alter table sicloud.det_factura add constraint CF_us_CF_tipo_doc foreign key (CF_us, CF_tipo_doc) references sicloud.usuario(ID_us, FK_tipo_doc) on update cascade;
alter table sicloud.det_factura add primary key (FK_det_factura, FK_det_prod); 


create table sicloud.rol_usuario(
FK_rol int(3) not null,
FK_us varchar(25) not null,
FK_tipo_doc varchar(5) not null,
fecha_asignacion date not null,
estado bit not null);
alter table sicloud.rol_usuario add constraint FK_rol foreign key(FK_rol) references sicloud.rol(ID_rol_n) on update cascade;
alter table sicloud.rol_usuario add constraint FK_us_FK_tipo_doc foreign key(FK_us, FK_tipo_doc) references sicloud.usuario(ID_us, FK_tipo_doc) on update cascade;
alter table sicloud.rol_usuario add primary key(FK_rol, FK_us, FK_tipo_doc);


 create table sicloud.orden_entrada (
 ID_ord integer not null,
 fecha_ingreso date not null,
 CF_rol int(3) not null ,
 CF_rol_us varchar(25) not null, 
 CF_tipo_doc varchar(5) not null);
 alter table sicloud.orden_entrada add constraint CF_rol_CF_rol_us_CF_tipo_doc foreign key (CF_rol, CF_rol_us, CF_tipo_doc ) references sicloud.rol_usuario(FK_rol, FK_us, FK_tipo_doc) on update cascade;
 alter table sicloud.orden_entrada add primary key(ID_ord);
 alter table sicloud.orden_entrada modify column  ID_ord integer not null auto_increment;
 
  
 create table sicloud.det_orden (
 FK_ord int not null,
 FK_prod varchar(40) not null,
 cantidad_prod float(20,2) not null);
alter table sicloud.det_orden add constraint FK_ord foreign key (FK_ord) references sicloud.orden_entrada(ID_ord) on update cascade;
alter table sicloud.det_orden add constraint FK_prod foreign key (FK_prod) references sicloud.producto(ID_prod) on update cascade;
 alter table  sicloud.det_orden add primary key(FK_ord, FK_prod);
 
 
create table sicloud.empresa_provedor(
ID_rut varchar(20) not null,
nom_empresa varchar(25) not null,
primary key(ID_rut)
);
alter table sicloud.empresa_provedor modify nom_empresa varchar(50);


create table sicloud.det_producto(
FK_prod varchar(40) not null,
FK_rut varchar(20) not null,
fecha date not null,
num_fac_ing varchar(25) not null);
alter table sicloud.det_producto add constraint FK_prod_1 foreign key (FK_prod) references sicloud.producto(ID_prod) on update cascade;
alter table sicloud.det_producto add constraint FK_rut foreign key (FK_rut) references empresa_provedor(ID_rut) on update cascade;
alter table sicloud.det_producto add primary key(FK_prod, FK_rut
);


create table sicloud.telefono (
ID_tel integer not null,
tel varchar(25) not null,
CF_us varchar(25) not null,
CF_tipo_doc varchar(5) not null,
CF_rut varchar(20) not null );
alter table sicloud.telefono add constraint CF_us_CF_tipo_doc_1 foreign key(CF_us, CF_tipo_doc) references sicloud.usuario(ID_us, FK_tipo_doc) on update cascade;
alter table sicloud.telefono add constraint CF_rut foreign key(CF_rut) references sicloud.empresa_provedor(ID_rut) on update cascade;
alter table sicloud.telefono add primary key(ID_tel);
alter table sicloud.telefono modify column ID_tel integer auto_increment;


create table sicloud.ciudad(
ID_ciudad integer auto_increment not null,
nom_ciudad varchar(25) not null,
primary key(ID_ciudad)
);



create table sicloud.localidad(
ID_localidad int  not null,
nom_localidad varchar(25) not null,
FK_ciudad int not null);
alter table sicloud.localidad add constraint FK_ciudad foreign key(FK_ciudad) references sicloud.ciudad(ID_ciudad) on update cascade;
alter table sicloud.localidad add primary key(ID_Localidad, FK_ciudad);
alter table sicloud.localidad modify ID_localidad int auto_increment;



create table sicloud.barrio(
ID_barrio int not null,
nom_barrio varchar(25) not null,
FK_localidad int not null,
FK_ciudad int not null);
alter table sicloud.barrio add constraint FK_Localidad_FK_ciudad foreign key(FK_Localidad, FK_ciudad ) references sicloud.localidad(ID_localidad, FK_ciudad)on update cascade;
alter table sicloud.barrio add primary key (ID_barrio, FK_Localidad, FK_ciudad);
alter table sicloud.barrio modify ID_barrio int auto_increment;


create table sicloud.direccion(
ID_dir integer not null,
via_principal varchar(15) not null,
via_generadora varchar(15) not null,
CF_us varchar(25) not null,
CF_tipo_doc varchar(5) not null,
CF_rut varchar(20) not null,
FK_barrio integer not null,
FK_Localidad integer not null,
FK_Ciudad integer not null);


alter table sicloud.direccion add constraint CF_us_CF_tipo_doc_2 foreign key  (CF_us, CF_tipo_doc) references sicloud.usuario(ID_us, FK_tipo_doc) on update cascade;
alter table sicloud.direccion add constraint CF_rut_1 foreign key (CF_rut) references sicloud.empresa_provedor(ID_rut) on update cascade;
alter table sicloud.direccion add constraint FK_barrio_FK_Localidad_FK_Ciudad foreign key (FK_barrio, FK_Localidad, FK_Ciudad) references sicloud.barrio(ID_barrio, FK_localidad, FK_ciudad)on update cascade;
alter table sicloud.direccion add primary key (ID_dir, FK_barrio, FK_Localidad, FK_Ciudad);
alter table sicloud.direccion modify ID_dir int auto_increment;

