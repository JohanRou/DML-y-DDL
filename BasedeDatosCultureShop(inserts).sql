-- MySQL dump 10.13  Distrib 8.0.25, for Win64 (x86_64)
--
-- Host: localhost    Database: cultureshop
-- ------------------------------------------------------
-- Server version	8.0.25

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `carrito`
--

DROP TABLE IF EXISTS `carrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carrito` (
  `id_factura2` int NOT NULL,
  `id_producto2` int NOT NULL,
  KEY `id_factura2` (`id_factura2`),
  KEY `id_producto2` (`id_producto2`),
  CONSTRAINT `carrito_ibfk_1` FOREIGN KEY (`id_factura2`) REFERENCES `factura` (`id_factura`),
  CONSTRAINT `carrito_ibfk_2` FOREIGN KEY (`id_producto2`) REFERENCES `inventario` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrito`
--

LOCK TABLES `carrito` WRITE;
/*!40000 ALTER TABLE `carrito` DISABLE KEYS */;
INSERT INTO `carrito` VALUES (1,1),(1,3),(2,6),(2,7),(2,9),(3,12),(4,17),(4,18),(4,19),(5,23),(5,24);
/*!40000 ALTER TABLE `carrito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `documento` varchar(20) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `correo_electronico` varchar(100) NOT NULL,
  `contraseña` varchar(60) NOT NULL,
  `num_rol2` int NOT NULL,
  PRIMARY KEY (`id_cliente`),
  UNIQUE KEY `usuario` (`usuario`),
  UNIQUE KEY `documento` (`documento`),
  KEY `num_rol2` (`num_rol2`),
  CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`num_rol2`) REFERENCES `rol` (`num_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Johan Andres','Rodriguez Diaz','JohanRou','1000732861','3143436583','CARRERA 58 NUMERO 30 SUR','johan@gmail.com','Johan123',2),(2,'Julian David','Peña Rozo','PenaRozo','1344224562','3212465897','CARRERA 68 NUMERO 20 SUR','julian@gmail.com','Julian123',2),(3,'Cristian David','Gomez Quiroz','CrisrianGo','1283746544','3135428691','CARRERA 78 NUMERO 10 SUR','cristian@gmail.com','Cristian123',2),(4,'Javier Leonardo','Garcia Arcos','JavierGa','1294865020','3168975642','CARRERA 88 NUMERO 40 SUR','javier@gmail.com','Jaavier123',2),(5,'Camilo Andres','Hernandez','CamiloFRG','1281927364','3215469787','CARRERA 98 NUMERO 50 SUR','camilo@gmail.com','Camilo123',2);
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados_tienda`
--

DROP TABLE IF EXISTS `empleados_tienda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados_tienda` (
  `id_empleado_tienda` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(50) NOT NULL,
  `apellido` varchar(50) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `correo_electronico` varchar(100) NOT NULL,
  `contraseña` varchar(60) NOT NULL,
  `id_tienda2` int NOT NULL,
  `num_rol3` int NOT NULL,
  PRIMARY KEY (`id_empleado_tienda`),
  UNIQUE KEY `usuario` (`usuario`),
  KEY `id_tienda2` (`id_tienda2`),
  KEY `num_rol3` (`num_rol3`),
  CONSTRAINT `empleados_tienda_ibfk_1` FOREIGN KEY (`id_tienda2`) REFERENCES `tienda` (`id_tienda`),
  CONSTRAINT `empleados_tienda_ibfk_2` FOREIGN KEY (`num_rol3`) REFERENCES `rol` (`num_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados_tienda`
--

LOCK TABLES `empleados_tienda` WRITE;
/*!40000 ALTER TABLE `empleados_tienda` DISABLE KEYS */;
INSERT INTO `empleados_tienda` VALUES (1,'Eduardo','Rodriguez','EduaRodAmateratsu','eduard@gmail.com','Eduar123',1,3),(2,'Maria Fernanda','Alvares','MafeAlvCamis','mariafe@gmail.com','Mafe123',2,3),(3,'Adrian','Guerrero','AdriGueAnico','adrian@gmail.com','Adrain123',3,3),(4,'Estiven','Gonzalez','EstiGonzColecci','estiven@gmail.com','Estiven123',4,3),(5,'Sofia','Valderama','SofiaValBati','sofia@gmail.com','Sofia123',5,3);
/*!40000 ALTER TABLE `empleados_tienda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura`
--

DROP TABLE IF EXISTS `factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factura` (
  `id_factura` int NOT NULL AUTO_INCREMENT,
  `fecha` timestamp NOT NULL,
  `subtotal` decimal(20,3) NOT NULL,
  `iva` decimal(20,3) NOT NULL,
  `id_cliente2` int NOT NULL,
  PRIMARY KEY (`id_factura`),
  KEY `id_cliente2` (`id_cliente2`),
  CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`id_cliente2`) REFERENCES `clientes` (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
INSERT INTO `factura` VALUES (1,'2021-06-06 12:53:50',140.000,26.600,1),(2,'2021-06-06 14:50:15',106.600,20.250,2),(3,'2021-05-06 22:53:00',150.000,28.610,3),(4,'2021-01-05 12:30:30',388.000,73.720,4),(5,'2021-09-05 13:54:10',203.000,39.710,5);
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventario`
--

DROP TABLE IF EXISTS `inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventario` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `nombre_producto` varchar(150) NOT NULL,
  `descripción_producto` varchar(500) NOT NULL,
  `precio_producto` decimal(20,3) NOT NULL,
  `img` varchar(250) DEFAULT NULL,
  `cantidad_producto` int NOT NULL,
  `id_tienda3` int NOT NULL,
  PRIMARY KEY (`id_producto`),
  KEY `id_tienda3` (`id_tienda3`),
  CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`id_tienda3`) REFERENCES `tienda` (`id_tienda`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario`
--

LOCK TABLES `inventario` WRITE;
/*!40000 ALTER TABLE `inventario` DISABLE KEYS */;
INSERT INTO `inventario` VALUES (1,'Camiseta asta','color negro, estampado \"black clover\", 100% algodon',60.000,NULL,10,1),(2,'Billetara Dragon Ball','Material: Cuero Sintético, Lona, tamaño: 11,5 * 9,5 cm',30.000,NULL,15,1),(3,'Alcancia sin cara traga monedas','De la serie: El Viaje de Chihiro, réplica, materiales: ABS/PVC,\naltura: 21 cm',80.000,NULL,25,1),(4,'Figura Jiraiya','De la serie: Naruto, réplica, materiales: ABS, PVC,\naltura: 19cm aprox.',60.000,NULL,1,1),(5,'Figura Freezer','Serie: Dragon Ball, Fabricante: Réplica, Materiales: ABS, PVC,\nAltura: 11 cm aprox.',45.000,NULL,2,1),(6,'Camiseta Estampada de Cómics Videojuegos Contra','Camiseta Estampada en Algodon 180 gramos \nestampado garantizado excelente calidad.',26.900,NULL,40,2),(7,'Camiseta Estampada de Cómics Stan Lee Marvel','Algodon 180 gramos estampado garantizado\nexcelente calidad estampado, Género: Hombre, Tipo de manga: Corta, Tipo de cuello: Redondo',26.900,NULL,12,2),(8,'Gorras para Hombres Anime Naruto','Gorras en malla de adultos unisex tipo \ncamionera ajustable económica de excelente calidad',14.900,NULL,43,2),(9,'Gorras Paletera Plana Adulto Comics Superman','Gorras plana de adulto estampada y \nbordadas con broche ajustable',37.900,NULL,24,2),(10,'Gorras Adulto Bandas Pink Floyd','Gorras en malla de adultos unisex tipo \ncamionera ajustable económica de excelente calidad',14.900,NULL,15,2),(11,'Medallas League Of Legends','medallas de material que no se oxida del videojuego League of Legends',77.000,NULL,21,3),(12,'Figura Carnage','Figura de acción de Marvel Legends Carnage',150.000,NULL,2,3),(13,'Lampara de Stich','Lampara de buena calidad, serie: lilo y stitch ',60.000,NULL,5,3),(14,'Set Reloj De Bolsillo','Set Reloj De Bolsillo de la saga Full Metal Alchemist',50.000,NULL,30,3),(15,'Varita Harry Potter','Varita de la franquicia de Harry Potter buena calidad',45.000,NULL,40,3),(16,'Funko Pop Harry Potter Yule Dance','figura coleccionable en vinilo,\nproducto nuevo original en su caja, tamaño : 10 CMS',64.900,NULL,4,4),(17,'Funko Pop One Piece Luffy','FIGURA COLECCIONABLE EN VINILO,\nproducto nuevo original en su caja, tamaño : 10 CMS',99.900,NULL,6,4),(18,'Coraline Con Abrigo Neca Figura Posable Para Coleccionistas','figura posable coleccionable marca neca, puedes moverle los ojos,\nproducto nuevo original en su caja, tamaño : 20 CMS',159.000,NULL,10,4),(19,'My Hero Academia Izuku Midoriya Figura McFarlane Toys','figura articulada coleccionable, producto nuevo original en su caja, tamaño : 18 cms,\nincluye base',129.000,NULL,2,4),(20,'Pocket Pop Llavero Baby Yoda Brazo Arriba','llavero coleccionable en vinilo,\nproducto nuevo original en su caja, tamaño : 4 cms, producto original marca funko pop',39.000,NULL,12,4),(21,'Los tres Jokers','Llega el comic más esperado, Los Tres Jokers en pasta blanda, \nhistoria completa en un solo tomo',89.000,NULL,1,5),(22,'SPIDERMAN ARMAGEDON ARAÑA','Comic Spiderman Armagedón Araña, Editorial Ovnipress, \nIdioma Español, Tapa Blanda, 272 Páginas',93.000,NULL,5,5),(23,'BATMAN VOL 1 YO SOY GOTHAM','Comic Batman Vol 1 Yo Soy Gotham , \nEditorial Ecc ,192 Páginas, Idioma Español, Tapa Dura',103.000,NULL,14,5),(24,'BATMAN LA BROMA ASESINA MÁS EXTRAS','Comic Broma Asesina Más Extras, \nEditorial Ovnipress, Idioma Español, Tapa Blanda, 152 Páginas.',100.000,NULL,3,5),(25,'INVINCIBLE VOL 2','Comic Invincible Vol 2 , Editorial Kamite, \nIdioma Español, Tapa Blanda, 120 Páginas',50.000,NULL,2,5);
/*!40000 ALTER TABLE `inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol` (
  `num_rol` int NOT NULL AUTO_INCREMENT,
  `tipo_rol` varchar(15) NOT NULL,
  PRIMARY KEY (`num_rol`),
  UNIQUE KEY `tipo_rol` (`tipo_rol`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` VALUES (1,'Administrador'),(2,'Cliente'),(3,'Empleados');
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tienda`
--

DROP TABLE IF EXISTS `tienda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tienda` (
  `id_tienda` int NOT NULL AUTO_INCREMENT,
  `nombre_tienda` varchar(100) NOT NULL,
  `nit` varchar(20) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `correo_electronico` varchar(100) NOT NULL,
  `contraseña` varchar(60) NOT NULL,
  PRIMARY KEY (`id_tienda`),
  UNIQUE KEY `nombre_tienda` (`nombre_tienda`),
  UNIQUE KEY `nit` (`nit`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tienda`
--

LOCK TABLES `tienda` WRITE;
/*!40000 ALTER TABLE `tienda` DISABLE KEYS */;
INSERT INTO `tienda` VALUES (1,'Amaterasu Store','125481247464','3164997839','Cra. 71d #1a Sur-21, Bogotá','info@amaterasustore.co.','3175984'),(2,'CAMISETAS comics Jk','254122154546','3103402853','Carrera 80 #, Cl. 47b Sur #31 SUR, Bogotá','info@camisetascomics.co','8925254gf'),(3,'Anicomic Store','584123657454','3176856031','Cra. 100 # 20-54 local 131, Bogotá','anicomicstore@gmail.com.','iuqyroir'),(4,'La tienda del coleccionista','325514785415','3153310530','Calle 182 # 45-24 Bogotá, Colombia','contacto@latiendadelcoleccionista.com.co','8786dfsga'),(5,'La baticueva tienda','455547854125','3227072476','Carrera 15 #80 – 76 Bogotá','labaticuevatienda@gmail.com','kjahgjad8797');
/*!40000 ALTER TABLE `tienda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ventas`
--

DROP TABLE IF EXISTS `ventas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ventas` (
  `id_ventas` int NOT NULL AUTO_INCREMENT,
  `fecha` timestamp NOT NULL,
  `total_venta` decimal(20,3) NOT NULL,
  `id_factura3` int NOT NULL,
  PRIMARY KEY (`id_ventas`),
  KEY `id_factura3` (`id_factura3`),
  CONSTRAINT `ventas_ibfk_1` FOREIGN KEY (`id_factura3`) REFERENCES `factura` (`id_factura`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ventas`
--

LOCK TABLES `ventas` WRITE;
/*!40000 ALTER TABLE `ventas` DISABLE KEYS */;
INSERT INTO `ventas` VALUES (1,'2021-06-06 12:53:50',166.600,1),(2,'2021-06-06 14:50:15',126.850,2),(3,'2021-05-06 22:53:00',178.610,3),(4,'2021-01-05 12:30:30',461.720,4),(5,'2021-06-06 12:53:50',242.710,5);
/*!40000 ALTER TABLE `ventas` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-28 13:57:17
