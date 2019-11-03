use sicloud;

insert into sicloud.log_error(ID_error,descrip_error,fecha,hora)
values		(default,'Error correo electronico no valido','2018-12-04','14:14:00'),
			(default,'Error en la contraseña por favor digitela de nuevo','2019-07-05','13:24:54'),
			(default,'su solicitud requiere elevacion','2019-02-03','15:24:55'); 


insert into sicloud.servidor_correo(ID_SC,tipo_correo)
values		(default,'Gmail'),
			(default,'yahoo'),
			(default,'Outlook'),
			(default,'hotmail');


insert into sicloud.Rol (ID_rol_n, nom_rol)
values 		(default,'administrador'),
			(default,'Bodega'),
			(default,'Supervisor'),
			(default,'Ventas');


insert into sicloud.tipo_doc (ID_acronimo, nom_doc)
values 		('CC', 'Cedula'),
			('CE', 'Documento de extranjeria');
       
       
insert into sicloud.factura (ID_factura,total,fecha,sub_total,iva)
value		(default,2.77,'2018-12-04',8.46,7.69),
			(default,9.80,'2018-12-23',5.69,4.11),
			(default,3.25,'2019-08-16',4.90,4.27),
			(default,8.38,'2019-08-17',4.73,5.32),
			(default,4.71,'2019-07-19',5.43,1.27),
			(default,6.01,'2019-02-02',2.52,5.37),
			(default,3.70,'2019-09-28',0.94,2.54),
			(default,3.03,'2019-02-16',9.72,3.50),
			(default,6.40,'2018-12-30',4.48,9.14),
			(default,9.14,'2019-10-18',8.74,7.69),
			(default,9.00,'2018-12-20',6.42,7.46),
			(default,5.08,'2019-05-13',4.27,6.09),
			(default,0.12,'2019-10-19',5.38,9.34),
			(default,7.00,'2019-10-12',4.42,9.11),
			(default,1.67,'2019-01-08',7.18,0.45),
			(default,5.78,'2019-09-23',4.56,3.74),
			(default,8.59,'2019-06-23',7.23,6.63),
			(default,1.84,'2019-02-03',2.61,9.85),
			(default,6.97,'2019-01-19',5.95,2.44),
			(default,3.60,'2019-07-05',0.74,8.23);


insert into sicloud.tipo_medida(ID_medida,nom_medida,acron_medida)
values 		(default,'nanometro','nn'),
			(default,'milimetro','mm'),
			(default,'centimetro','cm'),
			(default,'metro','mts'),
			(default,'pulgada','inch');


insert into sicloud.categoria (ID_categoria, nom_categoria)
values 		(default, 'Electricos'),
			(default, 'Manuales'),
			(default, 'Materiales metalicos'),
			(default, 'Materiales no metalicos'),
			(default, 'pinturas'),
			(default, 'Cerrajeria');
            
            
insert into sicloud.producto (ID_prod, nom_prod, val_prod, stok_prod, estado_prod, CF_categoria, CF_tipo_medida)
values		('353740283-X', 'DESTORNILLADOR', '89900', '5', 'Disponible', 1, 4),
			('176974732-X', 'TRONZADORA', '716000', '5', 'Disponible', 2, 4),
			('430911542-X', 'PULIDORA', '659000', '5', 'Disponible', 3, 4),
			('977439101-2', 'Toolrich', '124950', '5', 'Disponible', 4, 4),
			('858585173-2', 'Alicates', '59950', '5', 'Disponible', 5, 4),
			('052906344-1', 'Destornilladores', '35950', '5', 'Disponible', 6, 4),
			('557446856-5', 'Taladro', '99950', '5', 'Disponible', 1, 4),
			('663802943-6', 'Pegadit', '9950', '5', 'Disponible', 2, 4),
			('204117246-0', 'Compresor', '79950', '5', 'Disponible', 3, 4),
			('488403281-0', 'Linterna', '49950', '5', 'Disponible', 4, 4),
			('788000073-9', 'Sierra', '559900', '5', 'Disponible', 5, 4),
			('155797259-1', 'Llave', '22900', '5', 'Disponible', 6, 4),
			('669185112-9', '5 llaves', '13900', '5', 'Disponible', 1, 4),
			('509004757-X', 'Pintura', '114900', '5', 'Disponible', 2, 4),
			('578938987-2', 'VinilBlanco', '134900', '5', 'Disponible', 3, 4),
			('625438600-3', 'Laca', '259900', '5', 'Disponible', 4, 4),
			('980895374-3', 'Cerrojo', '29900', '5', 'Disponible', 5, 4),
			('348386312-5', 'Cerradura', '56900', '5', 'Disponible', 6, 4),
			('507330309-1', 'Grapadora', '154900', '5', 'Disponible', 1, 4);


insert into sicloud.usuario (ID_us,nom1,nom2,ape1,ape2,fecha,pass,foto,correo,FK_tipo_doc)
values		('1636012383599','Irma','Rosalyn','Mullen','Cote','1990-08-15','IKC07VII1NL','D:\Andres\proyecto-sicloud-Dev\proyecto-sicloud-Dev\03-Desarrollo\01)_BD\Imagenes/usuariogirl.png','pulvinar.arcu.et@Nullatinciduntneque.org', 'CC'),
			('1695062224499','Charlotte',null,'Mccormick','Strong','1985-04-10','CIQ67PVL5EX','D:\Andres\proyecto-sicloud-Dev\proyecto-sicloud-Dev\03-Desarrollo\01)_BD\Imagenes/usuariogirl.png','Sed.molestie@iaculisodio.org', 'CC'),
			('1662041247199','Elton','Hakeem','Morris','Howell','1988-09-19','JPC81QFH3JG','D:\Andres\proyecto-sicloud-Dev\proyecto-sicloud-Dev\03-Desarrollo\01)_BD\Imagenes/usuariomenl.png','Donec.est@temporeratneque.net', 'CC'),
			('1660062872399','Ali','Reagan','Daniels','Owen','1992-02-11','FMU73YOW0MM','D:\Andres\proyecto-sicloud-Dev\proyecto-sicloud-Dev\03-Desarrollo\01)_BD\Imagenes/usuariogirll.png','habitant.morbi.tristique@Nullamsuscipit.com', 'CC'),
			('1668040515399','Salvador','Desirae','Stevens',null,'1995-07-21','PWL76KXQ4FG','D:\Andres\proyecto-sicloud-Dev\proyecto-sicloud-Dev\03-Desarrollo\01)_BD\Imagenes/usuariomenl.png','libero.lacus.varius@Quisque.co.uk', 'CC'),
			('1662101568299','Quin','Paki','Ford','Hahn','1992-07-28','GMU34EQF1NR','D:\Andres\proyecto-sicloud-Dev\proyecto-sicloud-Dev\03-Desarrollo\01)_BD\Imagenes/usuariomenl.png','semper.tellus.id@Proinvelnisl.ca', 'CC'),
			('1694050100899','Jeremy',null,'Hahn','Trujillo','1990-04-11','SGU29VRZ0IS','D:\Andres\proyecto-sicloud-Dev\proyecto-sicloud-Dev\03-Desarrollo\01)_BD\Imagenes/usuariogirll.png','nec@adipiscinglobortisrisus.net', 'CC'),
			('1628012272099','Dacey','Chanda','Gates','Foreman','1995-09-02','MWX02YMX4GM','D:\Andres\proyecto-sicloud-Dev\proyecto-sicloud-Dev\03-Desarrollo\01)_BD\Imagenes/usuariogirll.png','cursus.vestibulum@Vivamusnon.edu', 'CC'),
			('1608051762299','Ayanna','Thor','Mayer',null,'1989-04-18','PPV93BGM9CX','D:\Andres\proyecto-sicloud-Dev\proyecto-sicloud-Dev\03-Desarrollo\01)_BD\Imagenes/usuariogirll.png','eu.tellus@augue.com', 'CC'),
			('1670072699699','Keefe',null,'Fox','Shepard','1986-10-22','DQU71WDL2OY','D:\Andres\proyecto-sicloud-Dev\proyecto-sicloud-Dev\03-Desarrollo\01)_BD\Imagenes/usuariomenl.png','Aliquam.gravida.mauris@egestas.net', 'CC'),
			('1676090228999','James','Oprah','Dickerson','Turner','1988-11-25','TUB17VSF8MZ','D:\Andres\proyecto-sicloud-Dev\proyecto-sicloud-Dev\03-Desarrollo\01)_BD\Imagenes/usuariomenl.png','ut.molestie@morbitristiquesenectus.co.uk', 'CC'),
			('1623083099799','Aurelia',null,'Gordon','Merrill','1991-10-30','GZB91BTY9WN','D:\Andres\proyecto-sicloud-Dev\proyecto-sicloud-Dev\03-Desarrollo\01)_BD\Imagenes/usuariogirl1.png','Integer.id@sedpede.ca', 'CC'),
			('1687060309399','Kylynn','Aubrey','Daniel',null,'1990-01-11','YDS91KRH4PL','D:\Andres\proyecto-sicloud-Dev\proyecto-sicloud-Dev\03-Desarrollo\01)_BD\Imagenes/usuariomen1.png','mattis@eu.com', 'CC'),
			('1654011145999','Mollie','Jacqueline','Murphy','Henderson','1997-12-14','KDF36PDZ2DU','D:\Andres\proyecto-sicloud-Dev\proyecto-sicloud-Dev\03-Desarrollo\01)_BD\Imagenes/usuariogirl1.png','nisi.magna@Nuncmauris.edu', 'CC'),
			('1692090422599','Dara',null,'Cook','Herrera','1984-05-17','PGW34XEV7KM','D:\Andres\proyecto-sicloud-Dev\proyecto-sicloud-Dev\03-Desarrollo\01)_BD\Imagenes/usuariogirl1.png','scelerisque@nonante.edu', 'CC'),
			('1624060419399','Xenos','Libby','Flynn','Morris','1982-07-19','PVJ34CMM2DX','D:\Andres\proyecto-sicloud-Dev\proyecto-sicloud-Dev\03-Desarrollo\01)_BD\Imagenes/usuariomen1.png','Curabitur@velitAliquamnisl.edu', 'CC'),
			('1651011048199','Rajah','Gage','Barry',null,'1987-12-19','BSZ77PRI6GH','D:\Andres\proyecto-sicloud-Dev\proyecto-sicloud-Dev\03-Desarrollo\01)_BD\Imagenes/usuariomen1.png','lobortis.Class@egestasurna.ca', 'CC'),
			('1680091992499','Gloria',null,'Kirkland','Cote','1981-03-10','CFJ88XPJ2RM','D:\Andres\proyecto-sicloud-Dev\proyecto-sicloud-Dev\03-Desarrollo\01)_BD\Imagenes/usuariogirl1.png','est.vitae@fermentum.edu', 'CC'),
			('1691012831199','Blake','Angela','Schroeder','Knight','1993-03-02','BMH07NRZ2UY','D:\Andres\proyecto-sicloud-Dev\proyecto-sicloud-Dev\03-Desarrollo\01)_BD\Imagenes/usuariomen1.png','natoque.penatibus.et@quistristiqueac.ca', 'CC'),
			('1698091149999','Cedric',null,'Webster',null,'1991-06-10','WSF42WGJ0OS','D:\Andres\proyecto-sicloud-Dev\proyecto-sicloud-Dev\03-Desarrollo\01)_BD\Imagenes/usuariomen1.png','Curae.Phasellus@elitCurabitur.com', 'CC');
            
            
insert into sicloud.det_factura (FK_det_factura, FK_det_prod, cantidad, CF_us, CF_tipo_doc)
values 		(1, '353740283-X', 2, '1636012383599', 'CC'),
			(2, '176974732-X', 2, '1695062224499', 'CC'),
            (3, '430911542-X', 2, '1662041247199', 'CC'),
            (4, '977439101-2', 2, '1660062872399', 'CC'),
            (5, '858585173-2', 2, '1668040515399', 'CC'),
            (6, '052906344-1', 2, '1662101568299', 'CC'),
            (7, '557446856-5', 2, '1694050100899', 'CC'),
            (8, '663802943-6', 2, '1628012272099', 'CC'),
            (9, '204117246-0', 2, '1608051762299', 'CC'),
            (10, '488403281-0', 2, '1670072699699', 'CC'),
            (11, '788000073-9', 2, '1676090228999', 'CC'),
            (12, '155797259-1', 2, '1623083099799', 'CC'),
            (13, '669185112-9', 2, '1687060309399', 'CC'),
            (14, '509004757-X', 2, '1654011145999', 'CC'),
            (15, '578938987-2', 2, '1692090422599', 'CC'),
            (16, '625438600-3', 2, '1624060419399', 'CC'),
            (17, '980895374-3', 2, '1651011048199', 'CC'),
            (18, '348386312-5', 2, '1680091992499', 'CC'),
            (19, '507330309-1', 2, '1691012831199', 'CC');


insert into sicloud.rol_usuario(FK_rol,FK_us,FK_tipo_doc,fecha_asignacion,estado)
values		(1,1636012383599,'cc',17/02/2019,1),
			(2,1695062224499,'cc',08/12/2018,1),
			(2,1662041247199,'cc',28/12/2018,1),
			(2,1660062872399,'cc',08/06/2019,1),
			(3,1668040515399,'cc',13/02/2019,1),
			(3,1662101568299,'cc',29/11/2018,1),
			(4,1694050100899,'cc',13/05/2019,1),
			(4,1628012272099,'cc',25/03/2019,1),
			(4,1608051762299,'cc',16/05/2019,1),
			(4,1670072699699,'cc',10/08/2019,1),
			(4,1676090228999,'cc',05/09/2019,1),
			(4,1623083099799,'cc',05/03/2019,1),
			(4,1687060309399,'cc',25/09/2019,1),
			(2,1654011145999,'cc',05/04/2019,1),
			(2,1692090422599,'cc',17/12/2018,1),
			(2,1624060419399,'cc',02/03/2019,1),
			(4,1651011048199,'cc',21/10/2019,1),
			(4,1680091992499,'cc',18/02/2019,1),
			(1,1691012831199,'cc',16/08/2019,1),
			(1,1698091149999,'cc',24/01/2019,1);
            

insert into sicloud.orden_entrada (ID_ord, fecha_ingreso, CF_rol, CF_rol_us, CF_tipo_doc)
values		(default, '2019-12-14', 1, '1636012383599', 'CC'),
			(default, '2020-02-14', 2, '1695062224499', 'CC'),
			(default, '2020-02-18', 2, '1662041247199', 'CC'),
			(default, '2020-04-25', 2, '1660062872399', 'CC'),
			(default, '2020-05-30', 3, '1668040515399', 'CC'),
			(default, '2020-08-08', 4, '1694050100899', 'CC'),
			(default, '2020-01-28', 4, '1628012272099', 'CC'),
			(default, '2020-03-22', 4, '1670072699699', 'CC');
            

insert into sicloud.det_orden (FK_ord, FK_prod, cantidad_prod)
values		(1,'353740283-X', '1'),
			(2,'176974732-X', '1'),
			(3,'430911542-X', '1'),
			(4,'977439101-2', '2'),
			(5,'858585173-2', '3'),
			(6,'052906344-1', '1'),
			(7,'557446856-5', '1'),
			(8,'663802943-6', '1');
            
            
insert into sicloud.empresa_provedor (ID_rut , nom_empresa)
values		('17468875','Tuberias S.A.S'),
			('719-87-5909','Nomad Foods Limited'),
			('759-45-1251','Citigroup Inc'),
			('684-38-2518','Ekso Bionics Holdings, Inc'),
			('130-38-2612','Eyegate Pharmaceuticals, Inc'),
			('353-72-1273','Celgene Corporation'),
			('178-89-0276','Avista Corporation'),
			('481-79-6032','Artesian Resources Corporation'),
			('478-26-7154','BlackRock Energy and Resources Trust'),
			('769-97-6670','ProPetro Holding Corp'),
			('550-50-7862','Antero Midstream Partners LP'),
			('411-07-0291','Graco Inc'),
			('647-27-8225','NICE Ltd'),
			('882-81-3547','First Trust Rising Dividend Achievers ETF'),
			('763-01-1374','Amplify Snack Brands, inc'),
			('296-34-2653','Kearny Financial'),
			('467-48-7188','Vident International Equity Fund'),
			('632-87-3939','WisdomTree Interest'),
			('784-04-4923','Banco Santander SA'),
			('464-97-8345','Virtus Global Multi-Sector Income Fund'),
			('390-73-7614','EW Scripps Company');


insert into sicloud.det_producto (FK_prod, FK_rut, fecha, num_fac_ing)
values		('353740283-X', '17468875', '2019-12-14', '353744583-X'),
			('176974732-X', '719-87-5909', '2019-10-14', '176515932-X'),
			('430911542-X', '759-45-1251', '2019-08-14', '430947842-X'),
			('977439101-2', '684-38-2518', '2019-07-14', '979874101-2'),
			('858585173-2', '130-38-2612', '2019-07-14', '858511173-2'),
			('052906344-1', '353-72-1273', '2019-06-14', '052379344-1'),
			('557446856-5', '178-89-0276', '2019-02-14', '557416856-5'),
			('663802943-6', '481-79-6032', '2019-06-14', '612342943-6'),
			('204117246-0', '478-26-7154', '2019-10-14', '201117246-0'),
			('488403281-0', '769-97-6670', '2019-12-14', '488499981-0'),
			('788000073-9', '550-50-7862', '2019-11-14', '788196373-9'),
			('155797259-1', '411-07-0291', '2019-09-14', '155741259-1'),
			('669185112-9', '647-27-8225', '2019-07-14', '669186662-9'),
			('509004757-X', '882-81-3547', '2019-03-14', '522204757-X'),
			('578938987-2', '763-01-1374', '2019-04-14', '578987987-2'),
			('625438600-3', '296-34-2653', '2019-07-14', '615968600-3'),
			('980895374-3', '467-48-7188', '2019-03-14', '980777774-3'),
			('348386312-5', '632-87-3939', '2019-04-14', '346932512-5'),
			('507330309-1', '784-04-4923', '2019-05-14', '507763309-1');


insert into sicloud.telefono (ID_tel,tel,CF_us,CF_tipo_doc,CF_rut)
values		(default,'+86(473)137-9500',1636012383599,'cc','464-97-8345'),
			(default,'386(519)326-3151',1695062224499,'cc','390-73-7614'),
			(default,'256 (505) 724-8984',1662041247199,'cc','719-87-5909'),
			(default,'36 (728) 143-1515',1660062872399,'cc','759-45-1251'),
			(default,'41 (286) 669-9579',1668040515399,'cc','684-38-2518'),
			(default,'27 (368) 471-4280',1662101568299,'cc','130-38-2612'),
			(default,'351 (119) 356-1557',1694050100899,'cc','353-72-1273'),
			(default,'7 (262) 871-2576',1628012272099,'cc','178-89-0276'),
			(default,'381 (185) 638-3496',1608051762299,'cc','481-79-6032'),
			(default,'86 (696) 820-0759',1670072699699,'cc','478-26-7154'),
			(default,'95 (545) 769-9359',1676090228999,'cc','769-97-6670'),
			(default,'53 (132) 144-3736',1623083099799,'cc','550-50-7862'),
			(default,'7 (799) 725-1823',1687060309399,'cc','411-07-0291'),
			(default,'62 (278) 290-8760',1654011145999,'cc','647-27-8225'),
			(default,'385 (310) 959-9458',1692090422599,'cc','882-81-3547'),
			(default,'212 (122) 197-5348',1624060419399,'cc','763-01-1374'),
			(default,'63 (377) 587-2050',1651011048199,'cc','296-34-2653'),
			(default,'420 (598) 165-5534',1680091992499,'cc','467-48-7188'),
			(default,'62 (234) 945-8534',1691012831199,'cc','632-87-3939'),
			(default,'62 (829) 578-0489',1698091149999,'cc','784-04-4923');


insert into sicloud.ciudad (ID_ciudad, nom_ciudad)
values  	(default,'Huangjinbu'),
			(default,'Noginsk'),
			(default,'Mangxing'),
			(default,'Cabangan'),
			(default,'Arrën'),
			(default,'Novoaltaysk'),
			(default,'Eqb?l?yeh'),
			(default,'Tuanjie'),
			(default,'Mocajuba'),
			(default,'Khao Kho'),
			(default,'Vällingby'),
			(default,'Piedrancha'),
			(default,'Biting'),
			(default,'Mrgavan'),
			(default,'Calasgasan'),
			(default,'Auch'),
			(default,'Libi??'),
			(default,'Arauco'),
			(default,'Angatel'),
			(default,'Monte Alegre');
        
        
insert into sicloud.localidad(ID_localidad,nom_localidad,FK_ciudad)
values (default,'San Marcos',1),
(default,'Miragoâne',2),
(default,'Benito Juarez',3),
(default,'Koungou',4),
(default,'Salamnunggal',5),
(default,'Turgun',6),
(default,'Starigrad',7),
(default,'Savelugu',8),
(default,'Utan',9),
(default,'Hujiagou',10),
(default,'Dalazi',11),
(default,'Waturoka',12),
(default,'Zhujiachang',13),
(default,'Hetou',14),
(default,'Mangarine',15),
(default,'Coyah',16),
(default,'Xinglong',17),
(default,'Monte Carmelo',18),
(default,'Tobi Village',19),
(default,'Stockholm',20);

 
insert into sicloud.barrio (ID_barrio,nom_barrio,FK_localidad,FK_ciudad)
values 		(default,'Kentucky',1,1),
			(default,'Texas',2,2),
			(default,'Kentucky',3,3),
			(default,'Colorado',4,4),
			(default,'California',5,5),
			(default,'Texas',6,6),
			(default,'Texas',7,7),
			(default,'California',8,8),
			(default,'New York',9,9),
			(default,'South Carolina',10,10),
			(default,'Nevada',11,11),
			(default,'California',12,12),
			(default,'Texas',13,13),
			(default,'Alabama',14,14),
			(default,'Florida',15,15),
			(default,'Indiana',16,16),
			(default,'Utah',17,17),
			(default,'Arkansas',18,18),
			(default,'Maryland',19,19),
			(default,'Texas',20,20);
            
insert into sicloud.direccion(ID_dir,via_principal,via_generadora,CF_us,CF_tipo_doc,CF_rut,FK_barrio,FK_Localidad,FK_Ciudad)
values 		(default,'Tony','8','1636012383599','cc','464-97-8345',1,1,1),
			(default,'Bonner','88739','1695062224499','cc','390-73-7614',2,2,2),
			(default,'Heffernan','2144',1662041247199,'cc','719-87-5909',3,3,3),
			(default,'American','31',1660062872399,'cc','759-45-1251',4,4,4),
			(default,'Gerald','59',1668040515399,'cc','684-38-2518',5,5,5),
			(default,'Mosinee','59705','1662101568299','cc','130-38-2612',6,6,6),
			(default,'Commercial','40','1694050100899','cc','353-72-1273',7,7,7),
			(default,'Crowley','4','1628012272099','cc','178-89-0276',8,8,8),
			(default,'Porter','92','1608051762299','cc','481-79-6032',9,9,9),
			(default,'Russell','9940','1670072699699','cc','478-26-7154',10,10,10),
			(default,'Farmco','945','1676090228999','cc','769-97-6670',11,11,11),
			(default,'Artisan','4864','1623083099799','cc','550-50-7862',12,12,12),
			(default,'Lake View','693','1687060309399','cc','411-07-0291',13,13,13),
			(default,'Kedzie','4306','1654011145999','cc','647-27-8225',14,14,14),
			(default,'Toban','845','1692090422599','cc','882-81-3547',15,15,15),
			(default,'Starling','5','1624060419399','cc','763-01-1374',16,16,16),
			(default,'Twin Pines','326','1651011048199','cc','296-34-2653',17,17,17),
			(default,'Orin','4','1680091992499','cc','467-48-7188',18,18,18),
			(default,'Graedel','34','1691012831199','cc','632-87-3939',19,19,19),
			(default,'Portage','809','1698091149999','cc','784-04-4923',20,20,20);