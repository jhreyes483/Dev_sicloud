use netflix;


insert into netflix.tipo_doc(id_tipo_doc, siglas,  nom_tipo_doc) 
values (1, "CC", "Cedula de ciudadania" ),
		(2, "CE", "Cedula extranjera"),
        (3, "PAS", "Pasaporte" );
        

insert into netflix.rol (id_rol, nom_rol)
values (1, "Administrador"),
		(2, "Usuario"),
        (3, "Vendedor");
        
        
        
insert into netflix.plans(id_plan, nom_plan, caract_plan)
values(1,"Basico","1 p"),
		(2,"Estandar", "3 p HD"),
        (3,"Premium", "4 p Full HD"),
        (4, "Full", "6  p 4k");
        


        
        
        
        
        select * from tipo_doc;