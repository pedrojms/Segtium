INSERT INTO paginas_empresa(ruc,nombre,telefono,direccion,representante)
VALUES('0983617839103','Sipecom','2095764','Pedro Carbo','Manuel Quesada'),
('0936478956145','LATAM','2957481','Malecon','Daniel Rodriguez'),
('0937488615421','Quimiser','2748593','Avenida 42A NO','Nancy Pazos'),
('0936789561263','Inplastic S.A','2097654','Avenue 42Antonio','David Flores'),
('0987662676819','Grupo Mena','2098473','Urdesa Central','Ross Geler'),
('0679476389102','Biela Ecuador','2098675','Sauces 2','Rachel Green'),
('0986378461527','Eecol Electric Ecuador','2987654','Ceibos Norte','Janice Lopez'),
('0982738491028','Intaco Ecuador','2098847','Sauces 6','Monica Sanchez'),
('0987485912471','Repraser','2098475','Juan Tanca Marengo','Cinthia Fernandez'),
('0987654810283','Brenntag','2098647','Francisco de Orellana','Nicolas Cabre'),
('0983747229173','Tecnoplast','2098746','Prosperina','Angel de Brito'),
('0985927163618','Pepsi Cola','2098764','Martha de Roldos','Laura Mena');

INSERT INTO paginas_oficina(ciudad, telefono, direccion)
VALUES('Guayaquil','2212345','Sauces'),
('Guayaquil','2212345','Alborada'),
('Aurora','2212345','Villa Club'),
('Samborondon','2212345','Entre Ríos');

INSERT INTO paginas_servicio(nombre, descripcion)
VALUES('Ethical Hacking','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dui nunc, fermentum sed orci eget, dapibus consectetur tortor.'),
('Análisis de Cyberseguridad','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dui nunc, fermentum sed orci eget, dapibus consectetur tortor.'),
('Consultoría ISO 27001','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dui nunc, fermentum sed orci eget, dapibus consectetur tortor.'),
('Análisis de Código','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dui nunc, fermentum sed orci eget, dapibus consectetur tortor.');

INSERT INTO paginas_beneficios(nombre, descripcion, servicio_id_id)
VALUES('beneficio1','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dui nunc, fermentum sed orci eget, dapibus consectetur tortor.',1),
('beneficio2','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dui nunc, fermentum sed orci eget, dapibus consectetur tortor.',1),
('beneficio3','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dui nunc, fermentum sed orci eget, dapibus consectetur tortor.',1),
('beneficio1','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dui nunc, fermentum sed orci eget, dapibus consectetur tortor.',2),
('beneficio2','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dui nunc, fermentum sed orci eget, dapibus consectetur tortor.',2),
('beneficio3','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dui nunc, fermentum sed orci eget, dapibus consectetur tortor.',2),
('beneficio1','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dui nunc, fermentum sed orci eget, dapibus consectetur tortor.',3),
('beneficio2','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dui nunc, fermentum sed orci eget, dapibus consectetur tortor.',3),
('beneficio3','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dui nunc, fermentum sed orci eget, dapibus consectetur tortor.',3),
('beneficio1','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dui nunc, fermentum sed orci eget, dapibus consectetur tortor.',4),
('beneficio2','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dui nunc, fermentum sed orci eget, dapibus consectetur tortor.',4),
('beneficio3','Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin dui nunc, fermentum sed orci eget, dapibus consectetur tortor.',4);

INSERT INTO paginas_vendedor(nombre,apellido,cedula,telefono,correo,oficina_id_id)
VALUES('Luis','Lemos','0987654321','2345678','llemos@segtium.com',1),
('Carla','Flores','0987654322','2345679','cflores@segtium.com',1),
('Karen','Torres','0987654323','2345670','ktorres@segtium.com',1),
('Lesly','Narea','0987654324','2345671','lnarea@segtium.com',2),
('Karen','Gutierrez','0987654325','2345672','kgutierrez@segtium.com',2),
('Gabriel','Del Pino','0987654326','2345673','gdpino@segtium.com',3),
('Pedro','Flores','0987654327','2345674','pflores@segtium.com',4);

INSERT INTO paginas_usuario(nombre,apellido,correo,contrasena)
VALUES('Kelly','Bravo','kbravo@gmail.com','1234'),
('Jorge','Paladines','jpaladines@gmail.com','1234'),
('Laura','Serrano','lserrano@gmail.com','1234'),
('Sergio','Ramos','sramos@gmail.com','1234'),
('Marcelo','Polino','mpolino@gmail.com','1234');

INSERT INTO paginas_brochure(nombre, fecha, servicio_id_id)
VALUES('Ethical Hacking','2019-01-16',1),
('Ethical Hacking','2019-01-05',1),
('Análisis de Cyberseguridad','2019-01-05',2),
('Consultoría ISO 27001','2019-01-05',3),
('Consultoría ISO 27001','2018-12-21',3),
('Análisis de Código','2018-12-01',4);

INSERT INTO paginas_solicitud(detalle,fecha,ciudad,usuario_id)
VALUES('Lorem ipsum dolor sit amet, consectetur adipiscing elit.','2019-01-16','Guayaquil',1),
('Lorem ipsum dolor sit amet, consectetur adipiscing elit.','2019-01-05','Guayaquil',1),
('Lorem ipsum dolor sit amet, consectetur adipiscing elit.','2019-01-05','Guayaquil',1),
('Lorem ipsum dolor sit amet, consectetur adipiscing elit.','2019-01-05','Guayaquil',2),
('Lorem ipsum dolor sit amet, consectetur adipiscing elit.','2018-12-21','Guayaquil',3),
('Lorem ipsum dolor sit amet, consectetur adipiscing elit.','2018-12-01','Guayaquil',4);

INSERT INTO paginas_noticias(titulo,descripcion,fuente,fecha,imagen)
VALUES('Lorem ipsum','Vivamus ipsum est, cursus a varius ac, lacinia a tellus. Nulla scelerisque, nunc nec rhoncus hendrerit, enim leo volutpat nibh, eget lobortis tellus ante vel neque. In purus est, fermentum ut mollis non, egestas sit amet felis. Maecenas ac fringilla est, et egestas massa. Pellentesque id blandit odio, nec vestibulum ligula. In hac habitasse platea dictumst. Curabitur fringilla, sapien nec tempor cursus, eros massa vehicula mauris, sagittis vestibulum urna arcu vel dolor.','Duis eu sapien','2018-09-10','https://via.placeholder.com/150'),
('Lorem ipsum','Vivamus ipsum est, cursus a varius ac, lacinia a tellus. Nulla scelerisque, nunc nec rhoncus hendrerit, enim leo volutpat nibh, eget lobortis tellus ante vel neque. In purus est, fermentum ut mollis non, egestas sit amet felis. Maecenas ac fringilla est, et egestas massa. Pellentesque id blandit odio, nec vestibulum ligula. In hac habitasse platea dictumst. Curabitur fringilla, sapien nec tempor cursus, eros massa vehicula mauris, sagittis vestibulum urna arcu vel dolor.','Duis eu sapien','2018-07-10','https://via.placeholder.com/150'),
('Lorem ipsum','Vivamus ipsum est, cursus a varius ac, lacinia a tellus. Nulla scelerisque, nunc nec rhoncus hendrerit, enim leo volutpat nibh, eget lobortis tellus ante vel neque. In purus est, fermentum ut mollis non, egestas sit amet felis. Maecenas ac fringilla est, et egestas massa. Pellentesque id blandit odio, nec vestibulum ligula. In hac habitasse platea dictumst. Curabitur fringilla, sapien nec tempor cursus, eros massa vehicula mauris, sagittis vestibulum urna arcu vel dolor.','Duis eu sapien','2018-06-08','https://via.placeholder.com/150'),
('Lorem ipsum','Vivamus ipsum est, cursus a varius ac, lacinia a tellus. Nulla scelerisque, nunc nec rhoncus hendrerit, enim leo volutpat nibh, eget lobortis tellus ante vel neque. In purus est, fermentum ut mollis non, egestas sit amet felis. Maecenas ac fringilla est, et egestas massa. Pellentesque id blandit odio, nec vestibulum ligula. In hac habitasse platea dictumst. Curabitur fringilla, sapien nec tempor cursus, eros massa vehicula mauris, sagittis vestibulum urna arcu vel dolor.','Duis eu sapien','2018-08-30','https://via.placeholder.com/150'),
('Lorem ipsum','Vivamus ipsum est, cursus a varius ac, lacinia a tellus. Nulla scelerisque, nunc nec rhoncus hendrerit, enim leo volutpat nibh, eget lobortis tellus ante vel neque. In purus est, fermentum ut mollis non, egestas sit amet felis. Maecenas ac fringilla est, et egestas massa. Pellentesque id blandit odio, nec vestibulum ligula. In hac habitasse platea dictumst. Curabitur fringilla, sapien nec tempor cursus, eros massa vehicula mauris, sagittis vestibulum urna arcu vel dolor.','Duis eu sapien','2018-05-21','https://via.placeholder.com/150'),
('Lorem ipsum','Vivamus ipsum est, cursus a varius ac, lacinia a tellus. Nulla scelerisque, nunc nec rhoncus hendrerit, enim leo volutpat nibh, eget lobortis tellus ante vel neque. In purus est, fermentum ut mollis non, egestas sit amet felis. Maecenas ac fringilla est, et egestas massa. Pellentesque id blandit odio, nec vestibulum ligula. In hac habitasse platea dictumst. Curabitur fringilla, sapien nec tempor cursus, eros massa vehicula mauris, sagittis vestibulum urna arcu vel dolor.','Duis eu sapien','2018-04-15','https://via.placeholder.com/150'),
('Lorem ipsum','Vivamus ipsum est, cursus a varius ac, lacinia a tellus. Nulla scelerisque, nunc nec rhoncus hendrerit, enim leo volutpat nibh, eget lobortis tellus ante vel neque. In purus est, fermentum ut mollis non, egestas sit amet felis. Maecenas ac fringilla est, et egestas massa. Pellentesque id blandit odio, nec vestibulum ligula. In hac habitasse platea dictumst. Curabitur fringilla, sapien nec tempor cursus, eros massa vehicula mauris, sagittis vestibulum urna arcu vel dolor.','Duis eu sapien','2019-01-10','https://via.placeholder.com/150');

INSERT INTO paginas_contrato(fecha, servicio_id, vendedor_id, empresa_id, usuario_id)
VALUES('2019-01-16', 1, 1, 1, 1),
('2019-01-05', 1, 2, 11, 2),
('2019-01-05', 2, 3, 3, 3),
('2019-01-05', 3, 3, 5, 3),
('2018-12-01', 3, 4, 7, 4),
('2018-12-21', 4, 1, 9, 2);

create function reportevendedor()
returns table(id int, nombre varchar,apellido varchar,cedula varchar,correo varchar, totalventas double precision)
as $$
SELECT pv.id, pv.nombre, pv.apellido, pv.cedula,pv.correo,sum(pc.precio) FROM paginas_contrato pc ,paginas_vendedor pv WHERE pc.vendedor_id=pv.id GROUP BY pv.id ORDER BY sum DESC
$$ language sql;

create function reporteservicios()
returns table(id int,nombre varchar,descripcion varchar,totalventas double precision)
as $$
SELECT ps.id,ps.nombre, ps.descripcion,sum(pc.precio) FROM paginas_contrato pc ,paginas_servicio ps WHERE pc.servicio_id=ps.id GROUP BY ps.id ORDER BY sum DESC
$$ language sql;

create function reporteempresa()
returns table(id int, ruc varchar,nombre varchar,telefono varchar,representante varchar,totalventas double precision)
as $$
SELECT pe.id, pe.ruc, pe.nombre, pe.telefono,pe.representante,sum(pc.precio) FROM paginas_contrato pc ,paginas_empresa pe WHERE pc.empresa_id=pe.id GROUP BY pe.id ORDER BY sum DESC
$$ language sql;

drop function reportevendedor()
,reporteservicios(),reportevendedor()

SELECT * FROM reportevendedor()

SELECT * FROM paginas_contrato