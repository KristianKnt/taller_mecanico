DROP TABLE IF EXISTS caja;

CREATE TABLE `caja` (
  `id_caja` int(200) NOT NULL AUTO_INCREMENT,
  `estado` varchar(200) NOT NULL,
  `monto` varchar(200) NOT NULL,
  `fecha_apertura` date NOT NULL,
  `fecha_cierre` date NOT NULL,
  PRIMARY KEY (`id_caja`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO caja VALUES("4","cerrado","5000000","2022-12-09","2022-12-09");



DROP TABLE IF EXISTS clientes;

CREATE TABLE `clientes` (
  `id_cliente` int(200) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(200) NOT NULL,
  `documento` varchar(200) NOT NULL,
  `telefono` varchar(200) NOT NULL,
  `correo` varchar(200) NOT NULL,
  `estado` char(1) NOT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

INSERT INTO clientes VALUES("3","Cristian Camilo","1014270281","3014860536","cristianrojas_123@hotmail.com","a"),
("4","Camilo","10147270281","3148393228","camilo@gmail.com","a");



DROP TABLE IF EXISTS detalles_pedido;

CREATE TABLE `detalles_pedido` (
  `id_detalles` int(200) NOT NULL AUTO_INCREMENT,
  `id_reparacion` varchar(200) NOT NULL,
  `id_producto` int(200) NOT NULL,
  `cantidad` varchar(200) NOT NULL,
  PRIMARY KEY (`id_detalles`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;




DROP TABLE IF EXISTS empresa;

CREATE TABLE `empresa` (
  `id_empresa` int(100) NOT NULL AUTO_INCREMENT,
  `empresa` varchar(200) NOT NULL,
  `ruc` varchar(100) NOT NULL,
  `direccion` varchar(200) NOT NULL,
  `telefono` varchar(100) NOT NULL,
  `descripcion` varchar(2000) NOT NULL,
  `imagen` varchar(2000) NOT NULL,
  `correo` varchar(200) NOT NULL,
  `simbolo_moneda` varchar(200) NOT NULL,
  `impuesto` float NOT NULL,
  `tipo_moneda` varchar(200) NOT NULL,
  PRIMARY KEY (`id_empresa`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

INSERT INTO empresa VALUES("1","Taller al volante","921000000-8","Calle 80 # 91-02","95481","Taller mecanico para carros ","logo de la empresa.png","nomanejacorreo@gmail.com","$","19","Pesos Colombianos");



DROP TABLE IF EXISTS history_log;

CREATE TABLE `history_log` (
  `log_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `date` datetime NOT NULL,
  PRIMARY KEY (`log_id`)
) ENGINE=InnoDB AUTO_INCREMENT=167 DEFAULT CHARSET=latin1;

INSERT INTO history_log VALUES("1","1","has logged in the system at ","2018-11-27 07:58:26"),
("2","1","has logged out the system at ","2018-11-27 07:59:03"),
("3","1","has logged in the system at ","2018-11-30 22:32:20"),
("4","6","has logged in the system at ","2018-12-01 20:28:15"),
("13","1","has logged out the system at ","2018-11-30 22:42:36"),
("14","1","has logged in the system at ","2018-12-04 11:12:37"),
("15","1","has logged in the system at ","2018-12-19 10:16:00"),
("16","1","has logged in the system at ","2018-12-19 10:21:46"),
("17","1","has logged in the system at ","2018-12-19 10:27:32"),
("18","1","has logged in the system at ","2018-12-19 10:33:11"),
("19","1","se ha desconectado el sistema en ","2018-12-19 10:39:49"),
("20","1","has logged in the system at ","2018-12-19 10:40:01"),
("21","1","se ha desconectado el sistema en ","2018-12-19 10:40:04"),
("22","1","has logged in the system at ","2018-12-19 10:42:35"),
("23","1","se ha desconectado el sistema en ","2018-12-19 10:42:44"),
("24","1","has logged in the system at ","2018-12-19 10:43:07"),
("25","1","se ha desconectado el sistema en ","2018-12-19 10:44:35"),
("26","1","ha iniciado sesiÃ³n en el sistema en ","2019-01-14 10:55:46"),
("27","1","se ha desconectado el sistema en ","2019-01-14 11:02:35"),
("28","1","ha iniciado sesiÃ³n en el sistema en ","2019-01-14 11:02:41"),
("29","1","se ha desconectado el sistema en ","2019-01-14 11:09:15"),
("30","1","ha iniciado sesiÃ³n en el sistema en ","2019-01-16 21:05:23"),
("31","1","se ha desconectado el sistema en ","2019-01-16 21:05:32"),
("32","1","ha iniciado sesiÃ³n en el sistema en ","2019-01-16 21:06:19"),
("33","1","ha iniciado sesiÃ³n en el sistema en ","2019-01-16 21:09:39"),
("34","1","se ha desconectado el sistema en ","2019-01-16 21:12:48"),
("35","1","ha iniciado sesiÃ³n en el sistema en ","2019-01-16 21:12:52"),
("36","1","ha iniciado sesiÃ³n en el sistema en ","2019-01-16 22:33:53"),
("37","1","ha iniciado sesiÃ³n en el sistema en ","2019-01-17 08:50:57"),
("38","1","ha iniciado sesiÃ³n en el sistema en ","2019-01-17 22:37:23"),
("39","1","se ha desconectado el sistema en ","2019-01-18 01:25:04"),
("40","1","ha iniciado sesiÃ³n en el sistema en ","2019-01-18 03:35:56"),
("41","1","ha iniciado sesiÃ³n en el sistema en ","2019-01-18 08:25:58"),
("42","1","ha iniciado sesiÃ³n en el sistema en ","2019-01-18 20:31:12"),
("43","1","ha iniciado sesiÃ³n en el sistema en ","2019-01-19 06:39:38"),
("44","1","ha iniciado sesiÃ³n en el sistema en ","2019-01-20 01:27:24"),
("45","1","ha iniciado sesiÃ³n en el sistema en ","2019-01-20 01:43:21"),
("46","1","ha iniciado sesiÃ³n en el sistema en ","2019-01-20 02:56:46"),
("47","1","ha iniciado sesiÃ³n en el sistema en ","2019-01-20 10:44:05"),
("48","1","ha iniciado sesiÃ³n en el sistema en ","2019-01-20 11:13:20"),
("49","1","ha iniciado sesiÃ³n en el sistema en ","2019-01-21 11:27:47"),
("50","1","ha iniciado sesiÃ³n en el sistema en ","2019-01-23 01:38:33"),
("51","1","ha iniciado sesiÃ³n en el sistema en ","2019-01-23 07:15:31"),
("52","1","ha iniciado sesiÃ³n en el sistema en ","2019-01-23 10:39:09"),
("53","1","ha iniciado sesiÃ³n en el sistema en ","2019-01-23 20:39:13"),
("54","1","se ha desconectado el sistema en ","2019-01-24 01:32:13"),
("55","1","se ha desconectado el sistema en ","2019-01-24 01:46:48"),
("56","1","se ha desconectado el sistema en ","2019-01-24 01:48:41"),
("57","1","se ha desconectado el sistema en ","2019-01-24 01:48:52"),
("58","1","se ha desconectado el sistema en ","2019-01-24 01:49:01"),
("59","1","se ha desconectado el sistema en ","2019-01-24 01:52:37"),
("60","1","se ha desconectado el sistema en ","2019-01-24 01:55:52"),
("61","1","se ha desconectado el sistema en ","2019-01-24 02:50:25"),
("62","1","se ha desconectado el sistema en ","2019-01-25 18:59:42"),
("63","1","se ha desconectado el sistema en ","2019-01-26 12:13:01"),
("64","1","se ha desconectado el sistema en ","2019-01-26 12:39:03"),
("65","1","se ha desconectado el sistema en ","2019-01-26 21:34:43"),
("66","1","se ha desconectado el sistema en ","2019-01-26 21:35:05"),
("67","1","se ha desconectado el sistema en ","2019-01-26 21:36:18"),
("68","1","se ha desconectado el sistema en ","2019-01-26 21:37:19"),
("69","1","se ha desconectado el sistema en ","2019-01-26 21:40:18"),
("70","1","se ha desconectado el sistema en ","2019-01-26 21:42:37"),
("71","2","se ha desconectado el sistema en ","2019-01-26 21:53:27"),
("72","3","se ha desconectado el sistema en ","2019-01-26 23:53:55"),
("73","2","se ha desconectado el sistema en ","2019-01-27 00:02:46"),
("74","3","se ha desconectado el sistema en ","2019-01-27 00:26:04"),
("75","3","se ha desconectado el sistema en ","2019-01-27 00:27:37"),
("76","4","se ha desconectado el sistema en ","2019-01-27 00:28:53"),
("77","0","se ha desconectado el sistema en ","2019-02-01 10:49:35"),
("78","1","se ha desconectado el sistema en ","2019-02-02 01:10:46"),
("79","1","se ha desconectado el sistema en ","2019-02-08 13:27:52"),
("80","1","se ha desconectado el sistema en ","2019-02-08 13:29:04"),
("81","1","se ha desconectado el sistema en ","2019-02-11 12:13:25"),
("82","1","se ha desconectado el sistema en ","2019-02-17 23:59:49"),
("83","1","se ha desconectado el sistema en ","2019-02-19 22:06:23"),
("84","1","se ha desconectado el sistema en ","2019-02-22 23:20:09"),
("85","1","se ha desconectado el sistema en ","2019-03-30 08:37:10"),
("86","1","se ha desconectado el sistema en ","2019-04-19 23:40:42"),
("87","1","se ha desconectado el sistema en ","2019-04-20 00:34:27"),
("88","1","se ha desconectado el sistema en ","2019-04-24 08:25:28"),
("89","1","se ha desconectado el sistema en ","2019-04-24 11:54:04"),
("90","1","se ha desconectado el sistema en ","2019-04-25 10:14:44"),
("91","1","se ha desconectado el sistema en ","2019-04-25 23:41:34"),
("92","1","se ha desconectado el sistema en ","2019-04-26 00:25:33"),
("93","1","se ha desconectado el sistema en ","2019-04-26 04:25:46"),
("94","1","se ha desconectado el sistema en ","2019-04-28 10:09:37"),
("95","1","se ha desconectado el sistema en ","2019-05-29 04:17:06"),
("96","1","se ha desconectado el sistema en ","2019-05-30 11:27:19"),
("97","1","se ha desconectado el sistema en ","2019-06-04 23:14:56"),
("98","1","se ha desconectado el sistema en ","2019-06-27 03:36:33"),
("99","1","se ha desconectado el sistema en ","2019-06-27 07:59:50"),
("100","1","se ha desconectado el sistema en ","2019-08-11 05:41:03"),
("101","1","se ha desconectado el sistema en ","2019-08-29 11:38:25"),
("102","1","se ha desconectado el sistema en ","2019-09-07 11:16:16"),
("103","5","se ha desconectado el sistema en ","2019-09-07 11:52:24"),
("104","5","se ha desconectado el sistema en ","2019-09-07 12:13:49"),
("105","5","se ha desconectado el sistema en ","2019-09-07 12:19:01"),
("106","5","se ha desconectado el sistema en ","2019-09-07 12:27:56"),
("107","5","se ha desconectado el sistema en ","2019-09-08 09:00:40"),
("108","5","se ha desconectado el sistema en ","2019-09-08 09:00:47"),
("109","5","se ha desconectado el sistema en ","2020-01-10 11:04:44"),
("110","5","se ha desconectado el sistema en ","2020-01-10 11:04:54"),
("111","5","se ha desconectado el sistema en ","2020-01-10 11:30:46"),
("112","5","se ha desconectado el sistema en ","2020-01-10 11:38:04"),
("113","5","se ha desconectado el sistema en ","2020-01-11 11:41:09"),
("114","5","se ha desconectado el sistema en ","2020-01-11 11:42:57"),
("115","5","se ha desconectado el sistema en ","2020-01-11 11:58:26"),
("116","5","se ha desconectado el sistema en ","2020-01-11 22:51:04"),
("117","5","se ha desconectado el sistema en ","2020-01-12 00:54:49"),
("118","5","se ha desconectado el sistema en ","2020-01-12 11:04:17"),
("119","5","se ha desconectado el sistema en ","2020-01-12 11:51:05"),
("120","5","se ha desconectado el sistema en ","2020-01-12 11:52:16"),
("121","5","se ha desconectado el sistema en ","2020-01-12 11:52:21"),
("122","5","se ha desconectado el sistema en ","2020-01-12 11:53:48"),
("123","5","se ha desconectado el sistema en ","2020-01-12 11:54:34"),
("124","5","se ha desconectado el sistema en ","2020-01-12 11:55:40"),
("125","5","se ha desconectado el sistema en ","2020-01-12 11:55:44"),
("126","5","se ha desconectado el sistema en ","2020-01-12 11:55:58"),
("127","5","se ha desconectado el sistema en ","2020-01-12 11:56:08"),
("128","5","se ha desconectado el sistema en ","2020-01-13 05:59:34"),
("129","5","se ha desconectado el sistema en ","2020-01-13 09:18:38"),
("130","5","se ha desconectado el sistema en ","2020-01-13 14:12:00"),
("131","5","se ha desconectado el sistema en ","2020-01-13 14:31:57"),
("132","5","se ha desconectado el sistema en ","2020-01-13 14:32:32"),
("133","5","se ha desconectado el sistema en ","2020-01-15 09:29:50"),
("134","5","se ha desconectado el sistema en ","2020-02-08 04:28:27"),
("135","5","se ha desconectado el sistema en ","2020-02-09 07:02:23"),
("136","5","se ha desconectado el sistema en ","2020-02-12 11:12:23"),
("137","5","se ha desconectado el sistema en ","2020-02-12 12:07:49"),
("138","5","se ha desconectado el sistema en ","2020-02-12 13:20:43"),
("139","5","se ha desconectado el sistema en ","2020-02-12 22:28:22"),
("140","5","se ha desconectado el sistema en ","2020-02-12 22:55:52"),
("141","6","se ha desconectado el sistema en ","2020-02-12 22:56:20"),
("142","5","se ha desconectado el sistema en ","2020-02-12 22:57:49"),
("143","5","se ha desconectado el sistema en ","2020-02-13 00:30:01"),
("144","5","se ha desconectado el sistema en ","2020-02-13 01:03:55"),
("145","5","se ha desconectado el sistema en ","2020-02-13 01:51:57"),
("146","5","se ha desconectado el sistema en ","2020-02-13 19:58:42"),
("147","5","se ha desconectado el sistema en ","2020-02-13 20:09:10"),
("148","5","se ha desconectado el sistema en ","2020-04-07 12:44:49"),
("149","5","se ha desconectado el sistema en ","2020-04-08 12:55:31"),
("150","5","se ha desconectado el sistema en ","2020-04-11 07:31:56"),
("151","5","se ha desconectado el sistema en ","2020-04-13 01:03:56"),
("152","5","se ha desconectado el sistema en ","2020-04-13 11:33:15"),
("153","5","se ha desconectado el sistema en ","2020-04-13 11:52:17"),
("154","5","se ha desconectado el sistema en ","2020-04-13 11:52:38"),
("155","5","se ha desconectado el sistema en ","2020-07-21 22:45:16"),
("156","5","se ha desconectado el sistema en ","2022-12-08 03:12:08"),
("157","5","se ha desconectado el sistema en ","2022-12-08 03:12:46"),
("158","5","se ha desconectado el sistema en ","2022-12-08 03:45:54"),
("159","9","se ha desconectado el sistema en ","2022-12-08 03:47:48"),
("160","5","se ha desconectado el sistema en ","2022-12-09 00:35:33"),
("161","5","se ha desconectado el sistema en ","2022-12-09 00:39:36"),
("162","5","se ha desconectado el sistema en ","2022-12-09 00:39:48"),
("163","5","se ha desconectado el sistema en ","2022-12-09 07:32:57"),
("164","9","se ha desconectado el sistema en ","2022-12-09 09:10:10"),
("165","9","se ha desconectado el sistema en ","2022-12-09 10:36:00"),
("166","5","se ha desconectado el sistema en ","2022-12-10 06:16:39");



DROP TABLE IF EXISTS marca;

CREATE TABLE `marca` (
  `id_marca` int(200) NOT NULL AUTO_INCREMENT,
  `nombre_marca` varchar(200) NOT NULL,
  `estado` varchar(200) NOT NULL,
  PRIMARY KEY (`id_marca`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO marca VALUES("5","susuki","a");



DROP TABLE IF EXISTS modelo;

CREATE TABLE `modelo` (
  `id_modelo` int(200) NOT NULL AUTO_INCREMENT,
  `nombre_modelo` varchar(200) NOT NULL,
  `id_marca` int(200) NOT NULL,
  `estado` varchar(200) NOT NULL,
  PRIMARY KEY (`id_modelo`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO modelo VALUES("5","2009","5","a");



DROP TABLE IF EXISTS pedidos;

CREATE TABLE `pedidos` (
  `id_pedido` int(200) NOT NULL AUTO_INCREMENT,
  `num_pedido` varchar(200) NOT NULL,
  `fecha` date NOT NULL,
  `id_sesion` int(100) NOT NULL,
  `id_cliente` int(200) NOT NULL,
  PRIMARY KEY (`id_pedido`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;




DROP TABLE IF EXISTS producto;

CREATE TABLE `producto` (
  `id_pro` int(100) NOT NULL AUTO_INCREMENT,
  `nombre_pro` varchar(100) NOT NULL,
  `descripcion` varchar(2000) NOT NULL,
  `unidad` varchar(100) NOT NULL,
  `precio_venta` varchar(100) NOT NULL,
  `imagen` varchar(200) NOT NULL,
  `stock` varchar(200) NOT NULL,
  `estado` varchar(200) NOT NULL,
  PRIMARY KEY (`id_pro`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

INSERT INTO producto VALUES("3","Motor susuki 650 Dr","Motor 650cc con empaques incluidos totalmente refacturado y completo internamente","1","4500000","Opera Captura de pantalla_2022-12-08_181320_motostion.com.png","7","a");



DROP TABLE IF EXISTS reparacion;

CREATE TABLE `reparacion` (
  `id_reparacion` int(200) NOT NULL AUTO_INCREMENT,
  `id_marca` int(200) NOT NULL,
  `id_modelo` int(200) NOT NULL,
  `id_usuario` int(200) NOT NULL,
  `placa` varchar(200) NOT NULL,
  `codigo_registro` varchar(200) NOT NULL,
  `fallas` varchar(8000) NOT NULL,
  `revision_componentes` varchar(8000) NOT NULL,
  `fecha_estimada` date NOT NULL,
  `hora_reparacion` varchar(8000) NOT NULL,
  `cliente` int(200) NOT NULL,
  `fecha_registro` date NOT NULL,
  `precio_estimado` float NOT NULL,
  `tipo_comprobante` varchar(200) NOT NULL,
  `estado_reparacion` varchar(200) NOT NULL,
  PRIMARY KEY (`id_reparacion`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

INSERT INTO reparacion VALUES("4","4","4","5","23424","234234","fdsfsdfsfds","sdfsdfs","2020-07-22","10am","1","2020-07-21","400","Boleta","reparado"),
("5","5","5","5","OLN54B","8192638971263","Motor\nChasis\nFrenos\nsin burro\nRin doblado","moto en general","2022-12-30","20:00","3","2022-12-08","2","Factura","reparado");



DROP TABLE IF EXISTS usuario;

CREATE TABLE `usuario` (
  `id` int(200) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `imagen` varchar(200) NOT NULL,
  `tipo` varchar(200) NOT NULL,
  `nombre` varchar(200) NOT NULL,
  `apellido` varchar(200) NOT NULL,
  `telefono` varchar(200) NOT NULL,
  `correo` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

INSERT INTO usuario VALUES("5","admin","a1Bz20ydqelm8m1wql21232f297a57a5a743894a0e4a801fc3","0c22343a-d599-4191-ab5a-caa61038559e.jfif","administrador","Cristian","Rojas","3014860536","cristianrojas_123@hotmail.com"),
("7","federico","a1Bz20ydqelm8m1wql616706c4d6f7bdf68b30893f860cbb2b","","administrador","federico","federico","federico","federico@gmail.com"),
("8","cosa","a1Bz20ydqelm8m1wql1574612a64e746d204acae6e51b7d695","316280015_700668851658276_7154521546689432496_n.jpg","empleado","Coca Cola ","Arabe","3148693230","cocacola@gmail.com"),
("9","leo","a1Bz20ydqelm8m1wqlbad5f33780c42f2588878a9d07405083","315583992_1316608782439045_6746955894019962950_n.jpg","empleado","Leonel","Andres","3169897596","leonelandres_10@gmail.com"),
("10","Lee","a1Bz20ydqelm8m1wql81dc9bdb52d04dc20036dbd8313ed055","779566ac4305cf2f4f45ea61dfff994a.jpg","empleado","Lee","Sin","654897514","lee@yahoo.com");



