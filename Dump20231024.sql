-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: localhost    Database: ecommerce
-- ------------------------------------------------------
-- Server version	8.0.33

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `id` int NOT NULL AUTO_INCREMENT,
  `address` varchar(45) DEFAULT NULL,
  `ward` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (24,'37 Chu Mạnh Trinh','Thành phố Vũng Tàu','Tỉnh Bà Rịa - Vũng Tàu'),(25,'75/46 Lý Thánh Tông','Quận Tân Phú','Thành phố Hồ Chí Minh'),(26,'37 Chu Mạnh Trinh','Thành phố Vũng Tàu','Tỉnh Bà Rịa - Vũng Tàu'),(27,'75/46 Lý Thánh Tông','Quận Tân Phú','Thành phố Hồ Chí Minh'),(28,'457 Phan Chu Trinh','Thành phố Cao Bằng','Tỉnh Cao Bằng');
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `address_user`
--

DROP TABLE IF EXISTS `address_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address_user` (
  `address_id` int NOT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`address_id`,`user_id`),
  KEY `fk_address_has_user_user1_idx` (`user_id`),
  KEY `fk_address_has_user_address1_idx` (`address_id`),
  CONSTRAINT `fk_address_has_user_address1` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  CONSTRAINT `fk_address_has_user_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address_user`
--

LOCK TABLES `address_user` WRITE;
/*!40000 ALTER TABLE `address_user` DISABLE KEYS */;
INSERT INTO `address_user` VALUES (24,49),(25,49),(26,50),(27,50),(28,51);
/*!40000 ALTER TABLE `address_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `banner`
--

DROP TABLE IF EXISTS `banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `banner` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `banner`
--

LOCK TABLES `banner` WRITE;
/*!40000 ALTER TABLE `banner` DISABLE KEYS */;
INSERT INTO `banner` VALUES (7,'https://res.cloudinary.com/de3yhowd4/image/upload/v1698067239/tnrztgi1hzgizhnxf0al.jpg'),(8,'https://res.cloudinary.com/de3yhowd4/image/upload/v1698067319/q05uqnb3bpbhziqq2zdh.jpg'),(9,'https://res.cloudinary.com/de3yhowd4/image/upload/v1698067327/mhkhk1ibfcrfs0djreae.jpg'),(10,'https://res.cloudinary.com/de3yhowd4/image/upload/v1698067334/txh56f1ckkntoqu6lxea.jpg'),(11,'https://res.cloudinary.com/de3yhowd4/image/upload/v1698067341/r0hoegqxp64l9d945jwo.jpg'),(12,'https://res.cloudinary.com/de3yhowd4/image/upload/v1698067348/tehbwlfyi46tlsxj8tg2.jpg'),(13,'https://res.cloudinary.com/de3yhowd4/image/upload/v1698067406/sb0pca1l964zxhksjrh8.jpg'),(14,'https://res.cloudinary.com/de3yhowd4/image/upload/v1698067412/xllbpcj9zenptrtjvt3g.jpg');
/*!40000 ALTER TABLE `banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `category`
--

DROP TABLE IF EXISTS `category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  KEY `fk_category_category1_idx` (`category_id`),
  CONSTRAINT `fk_category_category1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `category`
--

LOCK TABLES `category` WRITE;
/*!40000 ALTER TABLE `category` DISABLE KEYS */;
INSERT INTO `category` VALUES (20,'Bách Hóa Online',NULL,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697951136/bgts1zq1lwsax7sxljc7.png'),(21,'Balo & Túi Ví Nam',NULL,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697951230/jigxqec5xujpphbcomtz.png'),(22,'Chăm Sóc Thú Cưng',NULL,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697951245/qafmtfos5mqn3zfntl3l.png'),(23,'Điện Thoại & Phụ Kiện',NULL,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697951260/bggxkvknbqhuvsbkicgv.png'),(24,'Đồ Chơi',NULL,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697966599/p3rr9ofb8nilplhvqhbl.png'),(25,'Đồng hồ',NULL,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697951282/zy2p1jzvkp4ixaky5ek2.png'),(26,'Giặt Giũ Và Chăm Sóc Nhà Cửa',NULL,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697951301/ecesuenl6pbfgkqkjdfu.png'),(27,'Giày Dép Nam',NULL,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697951313/ks9f9alrzh3ztwthrnrg.png'),(28,'Giày Dép Nữ',NULL,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697951323/dctiiutvbsxsjaydqoop.png'),(29,'Máy Ảnh Và Máy Phim',NULL,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697951349/k14esudydwxzieyg0he3.png'),(30,'Máy Tính & LapTop',NULL,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697964087/i8etqql2oktnvzwjhkak.png'),(31,'Mẹ & Bé',NULL,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697964098/zmfrbgtcaira5kpgeve7.png'),(32,'Nhà Cửa & Đời Sống',NULL,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697953684/ngfmv59lq3kwz8podeok.png'),(33,'Nhà Sách Online',NULL,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697953695/w4mithniwkpewmqxptyi.png'),(34,'Ô Tô & Xe Máy & Xe Đạp',NULL,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697953756/fb8nk6an2vkdcx0k0hze.png'),(35,'Phụ Kiện & Trang Sức Nữ',NULL,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697953843/ouhq7eajqa583aeafaji.png'),(36,'Thể Thao & Du Lịch',NULL,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697953854/z0tbk801vv1r2pbsnz0z.png'),(37,'Thiết Bị Điện Gia Dụng',NULL,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697953867/tevzyabzz5sxrmzcskvg.png'),(38,'Thiết Bị Điện Tử',NULL,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697953910/cj2jya9duitzbnfozsf4.png'),(39,'Thời Trang Nam',NULL,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697953922/homsf12jfvpqm8pfmrqa.png'),(40,'Thời Trang Nữ',NULL,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697953932/ngijcck7bnzithfvsvl7.png'),(41,'Thời Trang Trẻ Em',NULL,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697953944/dwh2nbxkmryck3zm7aeg.png'),(42,'Túi Ví Nữ',NULL,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697953964/vba7e7rplezpogsqd8h1.png'),(43,'Voucher & Dịch Vụ',NULL,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697953977/pglkasulhomqp8c5qreq.png'),(45,'Áo Polo',39,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697968366/yew8c6xvt1ptldsqhhag.png'),(46,'Quần Short',39,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697968374/q73w65bahnylgkazuipj.png'),(47,'Tai Nghe',30,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697965766/xn37oxyjnmmdzeatuktr.png'),(48,'Sắc Đẹp',NULL,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697966557/p7vzyihbwwvv17kemt1z.png'),(49,'Dụng Cụ & Phụ Kiện Làm Đẹp',48,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697966632/i67brkm9pr4zvw817y3f.png'),(50,'Đồ Dùng Nhà Bếp & Hộp Đựng Thực Phẩm',32,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697967071/mjltz9qibfxpl6fd3ach.png'),(51,'Bếp Điện',37,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697967226/mj89wjyi5w7pfxgbly9d.png'),(52,'Laptop',30,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697967541/dblwj7ui5gb9nxp9ah38.png'),(53,'Điện Thoại',23,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697967601/dk4wq3xmjvmo7ofw7sgs.png'),(54,'Áo Hoodie',40,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697967626/mtdvz6bea7gb3wie8744.png'),(55,'Xe Tay Ga',34,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697968062/dpckfccq7pqmvgzlzslw.png'),(56,'Đồ Chơi Giải Trí',24,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697968291/yjn0vlobkniqksfv2rvr.png'),(57,'Áo Thun',39,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697968323/mx0rifbtln5g1xhslxz5.png');
/*!40000 ALTER TABLE `category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image` (
  `id` int NOT NULL AUTO_INCREMENT,
  `image_url` varchar(255) DEFAULT NULL,
  `product_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_images_product_product1_idx` (`product_id`),
  CONSTRAINT `fk_images_product_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=180 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (73,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697964648/wksmxiaxygryqfkl86km.jpg',29),(74,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697964650/xvz9six1patyoo1ogvls.jpg',29),(75,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697964652/ftkojsjzyy5dutsetbn6.jpg',29),(76,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697964655/jmnomlcv5sl30r0xomco.jpg',29),(77,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697965153/xcr2rg3dya9ezfzuw0uq.jpg',30),(78,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697965155/lfltzdd5zmfj21jjw9wo.jpg',30),(79,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697965157/xkyvrqlmrxa0tz9wnos2.jpg',30),(80,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697965159/wbeeoo99rc84xxdzibul.jpg',30),(81,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697965237/zxl77io5zcbc59jlvyvr.jpg',31),(82,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697965239/nm9z5elhisntnnvyaumy.jpg',31),(83,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697965242/qwdgg5jdbqaauiemintb.jpg',31),(84,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697965244/hx6izfgucewyxwqodcxl.jpg',31),(85,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697965246/lvfxwfioiy0ddnrkbcb3.jpg',31),(86,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697965248/ycjomyldrsthqfpctiip.jpg',31),(87,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697965824/kbwxwno1yicy6ckijsrl.jpg',32),(88,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697965826/tpjc2a10ubbbljkh91i4.jpg',32),(89,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697965828/vs3h7ghmeejywykr6md2.jpg',32),(90,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697965830/umasw6p8horjybh5sy36.jpg',32),(91,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697965833/eyiz46egzcebootbv8q0.jpg',32),(92,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697966014/itpmhxsnqcq7vecmcjah.jpg',33),(93,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697966016/reqpxmgxnv6b9zz56qbj.jpg',33),(94,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697966019/mvujzwbg4gvj6f5czla3.jpg',33),(95,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697966831/shkblxvxw2cz5ttc9wcq.jpg',34),(96,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697966833/knaekzj6ttpaislb7gk0.jpg',34),(97,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697966836/t5buqhnrhcqspzbsstik.jpg',34),(98,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697966838/fchspe2g0ehchz8rgfsy.jpg',34),(99,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697966841/mlalijnbhwglbjqvspkr.jpg',34),(100,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697966845/aqwai7amvbsqyzsbxeoo.jpg',34),(101,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697967137/r4pyu0ihtzdyjrov4tvl.jpg',35),(102,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697967139/etbbchpcqwvw6blgvdyn.jpg',35),(103,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697967141/izaznvxnog8741bskt8i.jpg',35),(104,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697967143/vfmmrpwvija3b0efavts.jpg',35),(105,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697967146/y6fs85ggihnw1odaxa4s.jpg',35),(106,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697967148/ylys1jziuuyhso1qbmjq.jpg',35),(107,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697967150/cdmljrbembjwreckjakk.jpg',35),(108,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697967343/l2xmo1wxk5agnoummxxw.jpg',36),(109,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697967345/nv2mu8xnvg6zwu4okbbf.jpg',36),(110,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697967349/jxltxr9a57yatle6nngf.jpg',36),(111,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697967352/pxwgdlbkenozkrwtquds.jpg',36),(112,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697967356/avssn46oz4p7qytdt5ug.jpg',36),(113,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697967358/stin8lzfpjkecn9jq0wc.jpg',36),(114,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697967362/nxrejb5bhpyzrrkdrfgl.jpg',36),(115,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697967756/yci3qmvtnbevyqmtqvqq.jpg',37),(116,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697967759/v9qvmntdprujaypy6k4q.jpg',37),(117,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697967763/nhfydjmmf9zwrrhqjwvy.jpg',37),(118,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697967765/w4b5dreklqledg2b6j4r.jpg',37),(119,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697967767/ckniux9hvnwllnikz8ax.jpg',37),(120,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697967769/baj3wmc5ciwgtpa5ujqr.jpg',37),(121,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697967772/h0s28szel9cnsfluosie.jpg',37),(122,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697967840/teyxzbqmdkfxkxlsz3ju.jpg',38),(123,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697967842/gxi8wggg4b6znefjxyv0.jpg',38),(124,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697967844/po3xelrms2fasrmyquqr.jpg',38),(125,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697967846/paxjdewn9o4ddjnutmc1.jpg',38),(126,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697967848/jtkqio5yzuqtfielmvd9.jpg',38),(127,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697968017/vpp95ftweb04pqwey3d2.jpg',39),(128,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697968019/cqnuk6l1vc1isju9uyoa.jpg',39),(129,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697968020/gkxbaizt8cpqq4giez4l.jpg',39),(130,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697968023/fz6jhybyfig9gptaxuxo.jpg',39),(131,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697968025/rtnmcjwiaxoqzv9cuqla.jpg',39),(132,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697968028/sovcze0kqncyka3bmrcc.jpg',39),(133,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697968188/n4oqz4unqsawkz8oik1k.jpg',40),(134,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697968191/xfrytuzl4enu4w0guzcm.jpg',40),(135,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697968193/vjhxhmyslchtcqgryibc.jpg',40),(136,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697968194/gqjmzb49tlpa4pkgyghb.jpg',40),(137,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697968196/u4evjvy3krqnbwszam2u.jpg',40),(138,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697968198/txbyzae57pszyauihrso.jpg',40),(139,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697968200/bbxnlqdmsfrobtm4o27a.jpg',40),(140,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697968201/bfm6i2t6va8vfu08zk2v.jpg',40),(141,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697968536/gepbxiftoqg5cdui8lbo.jpg',41),(142,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697968539/hzcaleoyimv9mdf8qvyq.jpg',41),(143,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697968543/xkmfxblgkilakfwxvisd.jpg',41),(144,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697968545/i2vxgddrvw2zk67uewg9.jpg',41),(145,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697968549/bvm5a3woxojwgayyunz8.jpg',41),(146,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697968552/irwog6mxgjf9qkwavffg.jpg',41),(147,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697968797/vmwkfv1nocofsmvfdu1h.jpg',42),(148,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697968639/sncuaspjiqixhzq9tlj1.jpg',42),(149,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697968642/yvpibezigzluim7tmk10.jpg',42),(150,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697968645/uxn2kaw0tj0zqvgyq1pv.jpg',42),(151,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697968855/ej6bekxobzsqj9u0yq8z.jpg',43),(152,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697968857/hdulxvdqyygixpzgd6mq.jpg',43),(153,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697968859/sjg1fludfe6tpbwcgulv.jpg',43),(154,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697968862/p59lwffhfjyukar53ie6.jpg',43),(155,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697968864/s9feyleg8ewwzxs9qrtr.jpg',43),(156,'https://res.cloudinary.com/de3yhowd4/image/upload/v1698150393/volxlrdflxfp0nq0thjb.jpg',44),(157,'https://res.cloudinary.com/de3yhowd4/image/upload/v1698150395/xjrhiw1bzffatz6lvkw3.jpg',44),(158,'https://res.cloudinary.com/de3yhowd4/image/upload/v1698150398/gyvrekohqrienkdnkw3s.jpg',44),(159,'https://res.cloudinary.com/de3yhowd4/image/upload/v1698150400/c4fgx48yryltx0vtccrc.jpg',44),(160,'https://res.cloudinary.com/de3yhowd4/image/upload/v1698150404/lpkbmpieteaproht8ruh.jpg',44),(161,'https://res.cloudinary.com/de3yhowd4/image/upload/v1698150523/e9be2fqfvrlccx9rt6pc.jpg',45),(162,'https://res.cloudinary.com/de3yhowd4/image/upload/v1698150525/mudfbbje27r5jxwv3u9e.jpg',45),(163,'https://res.cloudinary.com/de3yhowd4/image/upload/v1698150526/lwqi1imdwdaepknelzca.jpg',45),(164,'https://res.cloudinary.com/de3yhowd4/image/upload/v1698150529/uey2bjx8wlf5iuehlamn.jpg',45),(165,'https://res.cloudinary.com/de3yhowd4/image/upload/v1698150531/xe456bn8rlusfpg5ctkb.jpg',45),(166,'https://res.cloudinary.com/de3yhowd4/image/upload/v1698150533/lgyzfshromw3f9vndnsm.jpg',45),(167,'https://res.cloudinary.com/de3yhowd4/image/upload/v1698150631/iexakdzieafsi8hlzamb.jpg',46),(168,'https://res.cloudinary.com/de3yhowd4/image/upload/v1698150634/blqkvhzq6slzzuvsqsys.jpg',46),(169,'https://res.cloudinary.com/de3yhowd4/image/upload/v1698150635/t7g93jglvwsthbwqmm3t.jpg',46),(170,'https://res.cloudinary.com/de3yhowd4/image/upload/v1698150638/m4hqnph8eafs6qdyoeaz.jpg',46),(171,'https://res.cloudinary.com/de3yhowd4/image/upload/v1698150640/joahsnqsuhzeqwjdt7dx.jpg',46),(172,'https://res.cloudinary.com/de3yhowd4/image/upload/v1698150642/bcy3notlrdygwh8lut6j.jpg',46),(173,'https://res.cloudinary.com/de3yhowd4/image/upload/v1698150644/edgg96oi1dxcjzyrqmi0.jpg',46),(174,'https://res.cloudinary.com/de3yhowd4/image/upload/v1698150828/pkynbt04rnjqvurkahem.jpg',47),(175,'https://res.cloudinary.com/de3yhowd4/image/upload/v1698150831/lj9qxiuz2z525xyk1g1c.jpg',47),(176,'https://res.cloudinary.com/de3yhowd4/image/upload/v1698150834/g6ixgn6xsqsxhk0bt0fx.jpg',47),(177,'https://res.cloudinary.com/de3yhowd4/image/upload/v1698150837/s80otbiy5axmuxqs0z2q.jpg',47),(178,'https://res.cloudinary.com/de3yhowd4/image/upload/v1698150839/yuuoff0cr9hksy6pfwrt.jpg',47),(179,'https://res.cloudinary.com/de3yhowd4/image/upload/v1698150841/qobsmhaao69a0kxriya9.jpg',47);
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order1`
--

DROP TABLE IF EXISTS `order1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order1` (
  `id` int NOT NULL AUTO_INCREMENT,
  `total_amount` double DEFAULT NULL,
  `created_time` datetime DEFAULT NULL,
  `user_id` int NOT NULL,
  `payment_id` int DEFAULT NULL,
  `voucher_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order_user1_idx` (`user_id`),
  KEY `fk_order_payment_method1_idx` (`payment_id`),
  KEY `fk_order_voucher1_idx` (`voucher_id`),
  CONSTRAINT `fk_order_payment_method1` FOREIGN KEY (`payment_id`) REFERENCES `payment` (`id`),
  CONSTRAINT `fk_order_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`),
  CONSTRAINT `fk_order_voucher1` FOREIGN KEY (`voucher_id`) REFERENCES `voucher` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order1`
--

LOCK TABLES `order1` WRITE;
/*!40000 ALTER TABLE `order1` DISABLE KEYS */;
INSERT INTO `order1` VALUES (59,16,'2023-10-22 17:54:48',50,9,NULL),(60,14,'2023-10-22 18:01:39',50,9,NULL),(61,70,'2023-10-22 19:31:27',50,9,NULL),(62,35.89,'2023-10-22 22:41:50',51,9,8),(63,179.45,'2023-10-22 22:44:28',51,9,8),(64,214.2,'2023-10-22 23:25:44',49,9,11),(65,25.5,'2023-10-23 20:26:42',50,9,11);
/*!40000 ALTER TABLE `order1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orderdetail`
--

DROP TABLE IF EXISTS `orderdetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orderdetail` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL,
  `shop_id` int NOT NULL,
  `status` int NOT NULL,
  `address_id` int NOT NULL,
  `create_time` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_order_has_product_product1_idx` (`product_id`),
  KEY `fk_order_has_product_order1_idx` (`order_id`),
  KEY `fk_orderdetail_shop1_idx` (`shop_id`),
  KEY `fk__idx` (`address_id`),
  CONSTRAINT `fk_address` FOREIGN KEY (`address_id`) REFERENCES `address` (`id`),
  CONSTRAINT `fk_order_has_product_order1` FOREIGN KEY (`order_id`) REFERENCES `order1` (`id`) ON DELETE CASCADE,
  CONSTRAINT `fk_order_has_product_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `fk_orderdetail_shop1` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orderdetail`
--

LOCK TABLES `orderdetail` WRITE;
/*!40000 ALTER TABLE `orderdetail` DISABLE KEYS */;
INSERT INTO `orderdetail` VALUES (76,59,43,1,18,2,26,'2023-09-22 17:54:48'),(77,59,29,1,18,2,26,'2023-09-22 17:54:53'),(78,60,30,2,18,2,27,'2023-08-22 18:01:39'),(79,61,37,1,18,2,26,'2023-07-22 19:31:27'),(80,62,39,3,18,2,28,'2023-06-22 22:41:50'),(81,62,30,1,18,1,28,'2023-05-22 22:41:55'),(82,63,38,1,18,2,28,'2023-10-22 22:44:28'),(83,64,39,3,18,2,24,'2023-10-22 23:25:44'),(84,64,43,1,18,2,24,'2023-10-22 23:25:48'),(85,64,36,1,20,0,24,'2023-10-22 23:25:52'),(86,65,39,3,18,2,26,'2023-10-23 20:26:42');
/*!40000 ALTER TABLE `orderdetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (9,'Tiền Mặt'),(10,'Paypal');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `price` int DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `thumbnail` varchar(255) DEFAULT NULL,
  `sold` int DEFAULT NULL,
  `is_deleted` int DEFAULT NULL,
  `status` int DEFAULT NULL,
  `shop_id` int DEFAULT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_shop1_idx` (`shop_id`),
  KEY `fk_product_category1_idx` (`category_id`),
  CONSTRAINT `fk_product_category1` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`),
  CONSTRAINT `fk_product_shop1` FOREIGN KEY (`shop_id`) REFERENCES `shop` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (29,'Áo Polo thể thao nam ProMax-S1 Logo thương hiệu Coolmate AW','<p>Đặc điểm nổi bật</p><p>Chất liệu: 100% Polyster tính năng, dệt kiểu Mesh, thoáng khí với định lượng vải 155gsm siêu nhẹ</p><p>Nhà cung cấp vải hàng đầu thế giới trong lĩnh vực vải thể thao; nhà cung cấp chính của Adidas, Nike</p><p>Công nghệ xử lý hoàn thiện vải: Quickdry (nhanh khô) và Wicking (thấm hút nhanh)Khả năng vải khử mùi tự nhiên</p><p>Không nhăn và tạo cảm giác thoáng mát khi vận động</p><p>Tự hào sản xuất tại Việt Nam</p><p>Người mẫu: 1m84 - 73kg, Mặc XL</p><p>Đừng bỏ lỡ những chiếc&nbsp;áo Polo&nbsp;thể thao nam Promax-S1 đặc biệt từ Coolmate bạn nhé!&nbsp;</p>',8,1999,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697964645/ix1yu4djjqnek82dkg4z.jpg',1,0,1,18,45),(30,'Áo thun trơn co giãn 4 chiều CLEAN VIETNAM - thương hiệu Coolmate','<p>&nbsp;\"Clean Vietnam\"&nbsp;là dự án cộng đồng tâm huyết của Coolmate và đối tác của mình - Nam Anh Fabric và nghệ sĩ Vietmax&nbsp;với mong muốn nâng cao nhận thức về việc hạn chế sử dụng chai nhựa, tăng cường việc tái chế và tái sử dụng đồ nhựa, góp phần vì một Việt Nam thật xanh nói riêng.&nbsp;</p><p>Lần đầu tiên, với sự kết hợp cùng nghệ sĩ&nbsp;Vietmax, Coolmate mang đến cho bạn một chiếc áo thun oversize với hoạ tiết đầy trẻ trung và năng động. Bạn hoàn toàn có thể mặc chiếc áo này khi đi làm, thoải mái diện xuống phố đi chơi hay đi cà phê với bạn bè.</p>',7,797,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697965151/uscjrhwx3axue746malw.jpg',3,0,1,18,45),(31,'Quần Short nam mặc nhà Coolmate Basics nhanh khô thoáng khí thương hiệu Coolmate','<p>Nếu bạn đang tìm chiếc quần mặc nhà thoải mái, tiện lợi, có nhiều đặc tính: nhanh khô, thoáng khí và trượt nước; thì chiếc Quần Short mặc nhà thuộc dòng Coolmate basics chính là câu trả lời dành cho bạn. </p><p>- Chất liệu 100% Polyester mỏng nhẹ và thoải mái.</p><p>- Chiếc quần được xử lý hoàn thiện Wicking (thoáng khí), Quickdry (Nhanh khô), trượt nước Water C6 (Trượt nước trừ màu đen).</p><p>- Mặc ở nhà thoải mái, phù hợp với các hoạt động thể thao vận động nhẹ.</p><p>- Quần ngắn, ống rộng thoải mái và cạp chun để bạn luôn thấy tiện lợi.</p><p>- Hoàn thiện kỹ lưỡng đến từng đường may.</p><p>- Tự hào sản xuất tại Việt Nam.</p><p>  Với chất liệu 100% Polyester từ nhà cung cấp vải hàng đầu thế giới trong lĩnh vực vải thể thao, nhà cung cấp chính của Adidas và Nike.</p><p>  Đây sẽ là chiếc quần bạn nên sắm ngay trong tủ đồ của mình vì độ tiện lợi và dễ ứng dụng của nó!</p><p><br></p><p>#quanthethao #quantheduc #quancoolmate #quancotton #quandui #quanshort #short #coolmate #shortnam #quanshortnam #quanshortcoolmate</p>',3,200,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697965235/mpuzotdbgdc13ixu1lpd.jpg',0,0,1,18,46),(32,'Tai Nghe Bluetooth Pro2 Không Dây Pin Trâu 6h Âm Thanh To Cảm Ứng Chạm Pop Up Kết Nối Mic Rõ, LICNATION','<p>- Tính năng nghe gọi và mic đàm thoại  ổn định</p><p>- Thời lượng Pin trâu từ 4-6h liên tục</p><p>- Hộp sạc có thể sạc cho tai nghe 2-3 lần</p><p>- Tai nghe còn được trang bị tính năng tự động kích hoạt trong lúc đeo và ngắt kết nối lúc ta tháo ra</p><p>- Tai nghe cũng có cảm ứng 1-2 chạm dễ dàng</p><p>- Tích hợp chip xử lý tự động kết nối khi mở nắp</p><p>- Tai nghe được trang bị thêm âm thanh không gian </p><p>- Hỗ trợ sạc không dây tiện lợi sử dụng</p><p>- Tính năng tìm kiếm tai nghe khi thất lạc</p><p><br></p><p>?BẠN SẼ NHẬN ĐƯỢC</p><p>1. Tai nghe</p><p>2. Dock sạc</p><p>2. Dây Sạc Tai Nghe</p><p>4. Cam Kết Sản Phẩm Mới 100% Nguyên Xiu</p><p><br></p><p>✅ Sản Phẩm Như Mô Tả </p><p>✅ Sản Phẩm Mới 100% Nguyên Seal ( Chưa Qua Sử Dụng )</p><p>✅ Bảo hành lỗi 1 đổi 1 tất cả sản phẩm nếu lỗi do nhà sản xuất</p><p>✅ Luôn ưu đãi cho khách hàng cũ và mới</p><p>✅ Luôn cập nhật những sản phẩm mới nhất, chất lượng nhất, dẫn đầu xu hướng</p><p><br></p><p><br></p><p><br></p><p>#tainghebluetooth #tainghedienthoai #dienthoai #tainghe #tainghegaming, #tainghegamethu, #tainghegame, tai nghe gaming có mic, tai nghe gaming cho điện thoại, tai nghe giá rẻ #tainghegamechođiệnthoại</p>',10,3400,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697965822/crzakbbjosrwvvpm9dam.jpg',0,0,1,19,47),(33,'Tai nghe Bluetooth I12 v5.0 chính hãng LICNATION kết nối không dây, Cảm ứng nhạy,dùng cho tất cả các dòng điện thoại','<p><span style=\"color: rgba(0, 0, 0, 0.8);\">Tai nghe Bluetooth I12 v5.0 chính hãng LICNATION kết nối không dây, Cảm ứng nhạy,dùng cho tất cả các dòng điện thoại</span></p><p><br></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">LICNATION tự tin là thương hiệu uy tín hàng đầu trong ngành tai nghe - phụ kiện điện thoại khi có hàng vạn khách hàng trên khắp cả nước :</span></p><p><br></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">+ Bảo hành tất cả sản phẩm 12 tháng</span></p><p><br></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">+ Hỗ trợ đổi - trả hàng miễn phí trong 30 ngày</span></p><p><br></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">+ Đóng gói nhanh - đẹp - có thẻ bảo hành trong từng sản phẩm</span></p><p><br></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">+ Ship nhanh hỏa tốc trong khu vực nội thành</span></p><p><br></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">ĐĂC ĐIỂM SẢN PHẨM: </span></p><p><br></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">     - Tai nghe được thiết kế sang trọng, vẻ ngoài thanh thoát, tinh tế</span></p><p><br></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">     - Các chi tiết của tai được làm khá sắc nét, khớp nối mịn và không bị hở</span></p><p><br></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">     - Chất liệu nhựa của tai được làm nhựa tốt nên màu trắng của tai rất đẹp, tai cầm chắc chắc</span></p><p><br></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">TÍNH NĂNG SẢN PHẨM:</span></p><p><br></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">    - Tính năng nghe gọi và mic đàm thoại  ổn định</span></p><p><br></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">    - Thời lượng Pin trâu từ 3-4h liên tục</span></p><p><br></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">    - Hộp sạc có thể sạc cho tai nghe 2-3 lần</span></p><p><br></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">    - Tai nghe còn được trang bị tính năng tự động kích hoạt trong lúc đeo và ngắt kết nối lúc ta tháo ra</span></p><p><br></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">    - Tai nghe cũng có cảm ứng 1-2 chạm dễ dàng</span></p><p><br></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">    - Tích hợp chip xử lý tự động kết nối khi mở nắp</span></p><p><br></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">    - Tai nghe được trang bị thêm âm thanh không gian </span></p><p><br></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">    - Hỗ trợ sạc không dây tiện lợi sử dụng</span></p><p><br></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">    - Tính năng tìm kiếm tai nghe khi thất lạc</span></p><p><br></p><p><br></p><p><br></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">HƯỚNG DẪN SỬ DỤNG : </span></p><p><br></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">   Bước 1: Mở nắp thiết bị và để gần ĐT của bạn</span></p><p><br></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">   Bước 2: ĐT sẽ mở ra cửa sổ yêu cầu kết nối, bạn làm theo hướng dẫn để kết nối</span></p><p><br></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">   Bước 3: Vào cài đặt bluetooth để tùy chỉnh tên và thao tác chạm </span></p><p><br></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">- Đối với ĐT Andr</span></p><p><br></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">   Bước 1: Mở nắp thiết bị và vào phần cài đặt bluetooth</span></p><p><br></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">   Bước 2: Dò và kết nối với thiết bị</span></p><p><br></p><p><br></p><p><br></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">BẠN SẼ NHẬN ĐƯỢC:</span></p><p><br></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">1. 2 tai nghe (tai trái,tai phải)</span></p><p><br></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">2. hộp sạc (dock sạc)</span></p><p><br></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">3. dây sạc </span></p><p><br></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">4. phiếu bảo hành LICNATION và giấy hướng dẫn sử dụng</span></p><p><br></p><p><br></p><p><br></p><p><br></p><p><br></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">#tainghegamethu#tainghegame#tainghebluetooth #tainghekhongday #tainghebluetoothkhongday #tainghe#taingheinpod #tai #tainghebluetooth #tainghecamung #taingheinpod #tainghenhettai #tainghecomic #tainghe #taingheblutooth #taynghebluetooth #tanghebluetooth #taibluetooth #LICNATION</span></p>',6,6782,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697966011/pktv3uavvrm7ubkvajun.jpg',0,0,1,19,47),(34,'Máy sấy tóc mini KIPOR 2 chiều nóng lạnh bổ xung ion, Công suất lớn, tạo kiểu tóc chuyên nghiệp - Hàng chính hãng','<p>ĐẶC ĐIỂM NỔI BẬT</p><p>Sấy 2 chiều nóng - lạnh</p><p>Luồng gió 5D ổn định, và giảm thiểu tiếng ồn</p><p>Hệ thống tạo ion âm chăm sóc và bảo vệ tóc chống hư tổn</p><p>Tự ngắt chống quá nhiệt</p><p>3 chế sấy phù hợp với mọi nhu cầu</p><p>Thao tác dễ dàng với công tắc trượt gạt</p><p>&nbsp;</p><p>LƯU Ý KHI SỬ DỤNG</p><p>Khi đang sử dụng máy, không quấn khăn, áo… vào nắp thông gió, đảm bảo không khí vào và ra được thông suốt khi dùng.</p><p>Cần thường xuyên lau bụi và tóc dính trên máy.</p><p>Khi sử dụng máy sấy tóc trong nhà tắm, rút điện ra sau khi sử dụng vì khi máy ở gần nước.&nbsp;</p><p>Không nên sử dụng máy sấy tóc trong môi trường khí gas</p><p>Giữ tay khô ráo khi sử dụng</p><p>Không chặn cửa hút gió và cửa ra của máy sấy tóc.</p><p>Nên cắm trực tiếp vào nguồn điện chính</p><p>&nbsp;</p><p>THÔNG SỐ KỸ THUẬT</p><p>Chế độ sấy: 3</p><p>Công suất: 2000 - 2200W</p><p>&nbsp;</p><p>CHẾ ĐỘ BẢO HÀNH</p><p>- Bảo hành chính hãng 12 tháng</p><p>- Đổi trả trong vòng 7 ngày nếu lỗi do nhà sản xuất</p><p>- Miễn phí giao hàng toàn quốc</p><p>&nbsp;</p><p>THÔNG TIN THƯƠNG HIỆU</p><p>KIPOR Việt Nam là thương hiệu nổi tiếng với những sản phẩm gia dụng độc đáo. Sứ mệnh của KIPOR là tạo ra những sản phẩm hữu ích, cải thiện cuộc sống mọi người bằng cách sử dụng công nghệ tiên tiến cùng các tiêu chuẩn khắt khe về sự đổi mới, chất lượng, giá trị và thiết kế của sản phẩm.</p><p><br></p><p>&nbsp;</p><p>Hiện nay, KIPOR đặt trụ sở chính tại Hà Nội, duy trì hệ thống phân phối trên 10.000 đại lý trên khắp 63 tỉnh thành, cung cấp ra thị trường&nbsp; hàng trăm models sản phẩm gia dụng từ nồi cơm điện, nồi chiên không dầu, bếp từ, máy xay sinh tố, máy ép chậm... Tất cả các sản phẩm của KIPOR đều được sản xuất trong quy trình khép kín dưới sự giám sát chặt chẽ của đội ngũ chuyên viên cao cấp của tập đoàn KLAAS - Germany, đảm bảo đúng các quy chuẩn chất lượng Châu âu ECO.</p><p><br></p><p>&nbsp;</p><p>CÔNG TY TNHH ĐIỆN GIA DỤNG CAO CẤP KIPOR</p><p>Mã số thuế: 0315326319</p><p>Địa chỉ: Căn L2.04 (TT1) Hanovid, Số 430 Cầu Am, Phường Vạn Phúc, Quận Hà Đông, Thành Phố Hà Nội</p><p>#maysaytoc #maysaytoc2chieu #maysaytocgiare #saytoc #maylamtoc #máy_sấy_tóc #maysay #maysaytoclanh #maysaytocsalon #mayxaytoc #maysaytocre #maysaypanasonic #maysaytocphilip #maysaytoctot</p>',7,300,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697966828/dyoppnbrjlugrhjo7ryf.jpg',0,0,1,20,49),(35,'Bình xịt dầu ăn phun sương cầm tay KIPOR KP-XD01 - Chai thuỷ tinh cao cấp - Tiện lợi, dễ sử dụng','<p>ĐẶC ĐIỂM NỔI BẬT</p><p>- Được làm từ chất liệu thủy tinh cao cấp, an toàn cho người sử dụng.</p><p>- Dễ dàng vệ sinh, chùi rửa.</p><p>- Thiết kế dạng xịt tiện dụng</p><p>- Ngoài dầu ăn, bạn có thể đựng nhiều loại gia vị khác như giấm, chanh…</p><p>- Bình có thiết kế chai đứng nhỏ gọn, có thể mang theo dễ dàng.</p><p><br></p><p>THÔNG TIN CHI TIẾT</p><p>- Chất liệu: Thuỷ tinh, nhựa</p><p>- Kích thước: 4 x 18 cm </p><p>- Màu sắc: Nắp bạc - vàng </p><p>- Dung tích: 100ml </p><p><br></p><p>CAM KẾT</p><p>- Giao hàng nhanh chóng – shop sẽ đóng hàng sớm nhất có thể để hàng có thể đến tay khách một cách nhanh nhất  </p><p>- Đổi mới trong vòng 7 ngày nếu sản phẩm nhận được bị hỏng - vỡ - không giống hình ảnh</p><p>- Hỗ trợ giải quyết đơn hàng lỗi trong thời gian sớm nhất.</p><p>Lưu ý: Khách hàng nên chụp ảnh và quay lại video khi mở hàng để được đảm bảo quyền lợi một cách tốt nhất  </p><p><br></p><p>THÔNG TIN THƯƠNG HIỆU</p><p>KIPOR Việt Nam là thương hiệu nổi tiếng với những sản phẩm gia dụng độc đáo. Sứ mệnh của KIPOR là tạo ra những sản phẩm hữu ích, cải thiện cuộc sống mọi người bằng cách sử dụng công nghệ tiên tiến cùng các tiêu chuẩn khắt khe về sự đổi mới, chất lượng, giá trị và thiết kế của sản phẩm. Các sản phẩm KIPOR tạo ra đều vô cùng hữu ích, hỗ trợ cuộc sống của mọi người trở nên tốt hơn.</p><p><br></p><p>Hiện nay, KIPOR đặt trụ sở chính tại Hà Nội, duy trì hệ thống phân phối trên 10.000 đại lý trên khắp 63 tỉnh thành, cung cấp ra thị trường hàng trăm models sản phẩm gia dụng từ nồi cơm điện, nồi chiên không dầu, bếp từ, máy xay sinh tố, máy ép chậm... Tất cả các sản phẩm của KIPOR đều được sản xuất trong quy trình khép kín dưới sự giám sát chặt chẽ của đội ngũ chuyên viên cao cấp của tập đoàn KLAAS - Germany, đảm bảo đúng các quy chuẩn chất lượng Châu  u ECO. Cũng chính vì vậy, các sản phẩm của KIPOR đang từng bước chiếm lĩnh thị trường và tạo niềm tin vững chắc đối với người sử dụng.</p><p><br></p><p>CÔNG TY TNHH ĐIỆN GIA DỤNG CAO CẤP KIPOR</p><p>Mã số thuế: 0315326319</p><p>Địa chỉ: Căn L2.04 (TT1) Hanovid, Số 430 Cầu Am, Phường Vạn Phúc, Quận Hà Đông, Thành Phố Hà Nội</p>',2,400,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697967135/eqpt0tcz7t3usluyjk6d.jpg',0,0,1,20,50),(36,'Nồi chiên hơi nước KIPOR KP-STEAM677 - bảng điều khiển điện tử nấu đa chế độ, chiên hấp đồng thời','<p>ĐẶC ĐIỂM NỔI BẬT</p><p>Kết hợp 3 trong 1: Lò nướng, lò vi sóng, nồi hấp.</p><p>5 chương trình nấu nướng được thiết lập sẵn: Nướng bánh, cánh gà chiên, pizza, nướng thịt, khoai tây chiên</p><p>4 chế độ điều chỉnh tay dễ dàng: Hấp - Hấp, chiên - Chiên - Phun sương.</p><p>Dung tích nồi lên đến 15L, giúp bạn thoải mái chuẩn bị lượng lớn thức ăn cho cả gia đình.</p><p>Cửa kính lớn, trong suốt giúp bạn dễ dàng quan sát quá trình nấu nướng</p><p>Bảng điều khiển cảm ứng LED sống động, dễ sử dụng.</p><p>Chiên không dùng dầu, không ám mùi, tốt cho sức khỏe, tiết kiệm công sức và thời gian nấu nướng.</p><p>Tự động tắt khi nấu xong, có chuông báo khi quá trình nấu hoàn tất</p><p> Vệ sinh dễ dàng bằng chính chức năng hấp của nồi. Khi bật chức năng này, các vết bẩn tại khoang nồi được làm mềm và bạn chỉ cần dùng khăn sạch lau nhẹ nhàng thì khoang nồi sẽ sạch bóng. </p><p><br></p><p>THÔNG SỐ KỸ THUẬT</p><p>- Dung tích nấu: 15L </p><p>- Bình chứa nước: 500ml</p><p>- Công suất chiên: 1800W</p><p>- Công suất hơi: 1050W</p><p>- Dải nhiệt: 40-230°C</p><p>- Điện áp: 220-240V, 50-60Hz</p><p>- Công nghệ: Chiên hơi nước đối lưu 360</p><p>- Bảng điều khiển: Điện tử</p><p>- Chất liệu: Inox 304, nhựa PP cao cấp</p><p>- Cảnh báo an toàn: để nguội 30 phút trước khi vệ sinh</p><p>- Phụ kiện đi kèm: 01 khay Pizza tròn chống dính - 01 vỉ nướng inox - 01 khay Hấp inox - 01 khay lưới nướng - 01 khay hứng dầu ăn, HDSD + công thức nấu ăn.</p><p>- Trọng lượng: 8kg</p><p>- Kích thước đóng hộp: 41x43x40 cm</p><p><br></p><p>CHẾ ĐỘ BẢO HÀNH</p><p>- Bảo hành chính hãng 12 tháng</p><p>- Đổi trả trong vòng 7 ngày nếu lỗi do nhà sản xuất</p><p>- Miễn phí giao hàng toàn quốc</p><p><br></p><p>THÔNG TIN THƯƠNG HIỆU</p><p>KIPOR Việt Nam là thương hiệu nổi tiếng với những sản phẩm gia dụng độc đáo. Sứ mệnh của KIPOR là tạo ra những sản phẩm hữu ích, cải thiện cuộc sống mọi người bằng cách sử dụng công nghệ tiên tiến cùng các tiêu chuẩn khắt khe về sự đổi mới, chất lượng, giá trị và thiết kế của sản phẩm. Các sản phẩm KIPOR tạo ra đều vô cùng hữu ích, hỗ trợ cuộc sống của mọi người trở nên tốt hơn và thoải mái.</p><p><br></p><p>Hiện nay, KIPOR đặt trụ sở chính tại Hà Nội, duy trì hệ thống phân phối trên 10.000 đại lý trên khắp 63 tỉnh thành, cung cấp ra thị trường  hàng trăm models sản phẩm gia dụng từ nồi cơm điện, nồi chiên không dầu, bếp từ, máy xay sinh tố, máy ép chậm... Tất cả các sản phẩm của KIPOR đều được sản xuất trong quy trình khép kín dưới sự giám sát chặt chẽ của đội ngũ chuyên viên cao cấp của tập đoàn KLAAS - Germany, đảm bảo đúng các quy chuẩn chất lượng Châu âu ECO. Cũng chính vì vậy, các sản phẩm của KIPOR đang từng bước chiếm lĩnh thị trường và tạo niềm tin vững chắc đối với người sử dụng.</p><p><br></p><p>CÔNG TY TNHH ĐIỆN GIA DỤNG CAO CẤP KIPOR</p><p>Mã số thuế: 0315326319</p><p>Địa chỉ: Căn L2.04 (TT1) Hanovid, Số 430 Cầu Am, Phường Vạn Phúc, Quận Hà Đông, Thành Phố Hà Nội</p><p> #noichienkhongdau #noichien #chien #chienkhongdau #chienhoinuoc #hoinuoc #noichienhoinuoc ##noi #chien #khong #dau #noichienkhongdau #nckd #noichienkhongkhi #giadung #kipor #steam #steam677 #noichienhoinuockipor</p>',214,1499,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697967340/dop8b6miyvbtttgvctty.jpg',1,0,1,20,51),(37,'14 pro max quốc tế 128gb bản LLA','<p><span style=\"color: rgba(0, 0, 0, 0.8);\">1/ thông tin cơ bản </span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">Iphone 14 Promax 128gb Vn/a zin all,</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">đẹp 99%</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">, pin 92, </span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">bảo hành 3 tháng,</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\"> bao test 7 ngày </span></p>',70,1999,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697967753/pt4lirub4ga2snmor4jm.jpg',1,0,1,18,53),(38,'Laptop Dell Latitude ĐƯỢC KIỂM HÀNG, TEST MÁY350 - Đổi Trả Trong 15 Ngày io','<p><span style=\"color: rgba(0, 0, 0, 0.8);\">\"Thông tin sản phẩm:</span></p><p><br></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">Màu sắc: Đen</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">Trọng lượng: 1,3 kg</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">Thông số kỹ thuật</span></p><p><br></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">Bộ xử lý: Intel Core i5 gen6</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">RAM: 8GB </span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">Ổ cứng: SSD 128GB (có thể nâng cấp)</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">Màn hình: 12.5 inch, độ phân giải HD</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">Pin: 4 cell</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">Hệ điều hành: Windows 10 Home\"</span></p><p><br></p><p><br></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">**** SHOP CAM KẾT ****</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">       - Sản phẩm giống Shop mô tả</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">       -  Sản phẩm có bảo hành  trên toàn quốc </span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">-------------------------------------------------</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">cửa hàng chúng tôi đã hoạt động 10 năm trong lĩnh vực đồ công nghệ . hiện tại các máy trong shop đều là hàng chính hãng nên xin quý khách hãy yên tâm về mặt hàng chúng tôi</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">* CAM KẾT VÀ BẢO HÀNH</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\"> Hoàn tiền và đổi trả  Nếu quý khách có phát hiện các lỗi hay sai sản phẩm cửa hàng chúng tôi sẽ chịu trách nhiệm bồi thường và hoàn lại tiền cho quý khách</span></p><p><br></p><p><br></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">CẢM ƠN QUÝ KHÁCH ĐÃ TIN TƯỞNG VÀ ỦNG HỘ SHOP</span></p>',185,877,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697967838/sfzksbhzvjdkiiwvy0cd.jpg',1,0,1,18,52),(39,'Áo Hoodie Nỉ Có Mũ Form Rộng ESSENTIALS Nhiều Màu Unisex Nam Nữ Ulzzang','<p><span style=\"color: rgba(0, 0, 0, 0.8);\">khách hàng đặt size L lưu ý vì là loại size to hàng ít mà nhu cầu khách đặt cao nên khách đặt sx lâu có hàng hơn các size khác mong các bạn thông cảm ạ</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\"> Shop CAM KẾT ???</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">✔Về sản phẩm: Shop cam kết cả về CHẤT LIỆU cũng như HÌNH DÁNG (đúng với những gì được nêu bật trong phần mô tả sản phẩm).</span></p><p><br></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">✔Về dịch vụ: Shop sẽ cố gắng trả lời hết những thắc mắc xoay quanh sản phẩm</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">???Quyền Lợi của Khách Hàng ???</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">✔ Nếu sản phẩm khách nhận được không đúng với sản phẩm khách đặt, hoặc khác với mô tả sản phẩm, khách hàng đừng vội đánh giá 1s mà hãy inb ngay cho shop để được shop hỗ trợ khách hàng đổi trả sản phẩm. Shop không hi vọng trường hợp này xảy ra, và sẽ cố gắng hết sức đê bạn không có một trải nghiệm mua hàng không tốt tại shop, nhưng nếu có, shop cũng sẽ giải quyết mọi chuyện sao cho thỏa đáng nhất.</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">➡ LƯU Ý KHI SỬ DỤNG CÁC SẢN PHẨM CỦA SHOP</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">- Đối vơi sản phẩm đa dạng về chất liệu, kiểu dáng, màu sắc, cách bảo quản sản phẩm tốt nhất là phân loại và giặt các sản phẩm cùng màu để giữ được độ bền và màu sắc của vải, tránh bị phai màu từ các loại quần áo khác.</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">- Đối với những sản phẩm có thể giặt máy, chỉ nên để ở chế độ giặt nhẹ, hoặc mức trung bình </span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">- Nên lộn áo sang mặt trái trước khi phơi sản phẩm ở nơi thoáng mát, tránh ánh nắng trực tiếp dễ bị phai bạc màu, nên làm khô quần áo bằng cách phơi ở những điểm đón gió sẽ giữ được màu vải tốt hơn.</span></p>',10,6662,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697968012/bnw0ngqhbww57rnc6pk5.jpg',9,0,1,18,54),(40,'Xe Máy Honda Air Blade 125 Phiên Bản Đặc Biệt 2023','<p>Thanh vân là hệ thống phân phối xe máy, phụ tùng &amp; dịch vụ sữa chữa chính hãng do chính Honda uỷ nhiệm </p><p>sp đảm báo đúng mẫu mã như mô tả</p><p><br></p><p><br></p><p>5. Mô tả sản phẩm</p><p><br></p><p>- Thiết kế mang DNA thể thao</p><p><br></p><p>VARIO 160 sở hữu thiết kế thể thao, mới lạ, phù hợp với các khách hàng trẻ tuổi và năng động. Diện mạo xe bề thế mạnh mẽ mang tới hình ảnh trẻ trung độc đáo, nổi bật dưới mọi góc nhìn.</p><p><br></p><p>- Sàn để chân bằn</p><p>g phẳng và tiện lợi</p><p><br></p><p>Sàn để phẳng với độ rộng lên tới 422mm, mang lại sự tiện dụng và thoải mái khi di chuyển hàng ngày.</p><p><br></p><p>- Bánh xe kích thước lớn</p><p><br></p><p>VARIO 160 được trang bị bộ lốp lớn và dày giúp tăng khả năng bám đường và sự ổn định khi vận hành. Kích thước lốp lớn (100/80-14 cho bánh trước và 120/70-14 cho bánh sau) kết hợp với bộ mâm hình chữ Y góp phần tạo nên hình ảnh mạnh mẽ và nổi bật.</p><p><br></p><p>- Hộc đựng đồ phía trước rộng kết hợp cổng sạc USB tiện lợi</p><p><br></p><p>VARIO 160 sở hữu 2 hộc chứa đồ phía trước rộng rãi, đặc biệt hộc chứa đồ bên trái được trang bị nắp che tích hợp cổng sạc USB loại A tiện lợi với công suất tối đa là 10,5W (5V – 2,1A) cho phép sạc pin điện thoại trong khi đang di chuyển.</p><p><br></p><p>- Hệ thống khóa thông minh Smart Key</p><p><br></p><p>Với thao tác đơn giản, khóa điện mở xe, khóa cổ xe, định vị xe cùng chức năng báo động được tích hợp trên thiết bị điều khiển FOB gia tăng sự tiện ích, an tâm cho khách hàng.</p>',2100,55,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697968185/zythtbnzzzwqlauydhhi.jpg',0,0,1,18,55),(41,'Cờ Tướng Cao Cấp - Sản Phẩm Trang Trí Nội Thất Và Quà Tặng Độc Đáo, Tinh Hoa Gỗ Tự Nhiên và Kim Loại Nguyên Khối','<p><span style=\"color: rgba(0, 0, 0, 0.8);\">Cờ Tướng Cao Cấp - Sản Phẩm Trang Trí Nội Thất Và Quà Tặng Độc Đáo, Tinh Hoa Gỗ Tự Nhiên và Kim Loại Nguyên Khối.</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">Chào mừng bạn đến với cửa hàng chúng tôi trên Shopee, nơi bạn có thể khám phá bộ sưu tập cờ tướng cao cấp độc đáo và tinh tế. Với sự kết hợp hoàn hảo giữa tài năng của nghệ nhân và vẻ đẹp của vật liệu tự nhiên, chúng tôi mang đến cho bạn những sản phẩm cờ tướng đẳng cấp, là biểu tượng của sự sang trọng và sự kỳ diệu trong trò chơi cờ tướng.</span></p><p><br></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">Tinh hoa gỗ tự nhiên: Sản phẩm của chúng tôi là kết quả của việc chế tác tài tình từ gỗ tự nhiên. Với việc sử dụng các loại gỗ quý như hồng đào, gụ, hay cây vôi, mỗi bộ cờ tướng mang lại sự ấm áp và sự sang trọng vốn có của gỗ tự nhiên. Mỗi chi tiết được chạm khắc tỉ mỉ, mang đến cho bạn một trải nghiệm chơi cờ tướng đầy cảm xúc.</span></p><p><br></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">Quân cờ kim loại nguyên khối: Những nhân vật của cờ tướng Trung Quốc thời trung cổ được tái hiện bằng kim loại nguyên khối chất lượng cao. Quân cờ độc đáo này được chế tác bằng sự đúc tỉ mỉ, tạo nên một hiện vật nghệ thuật với các chi tiết chân thực và sắc nét. Bằng cách sử dụng kim loại, chúng tôi mang đến sự bền bỉ và sự ổn định cho bộ cờ tướng của bạn.</span></p><p><br></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">Sự kết hợp hoàn hảo: Bàn cờ và quân cờ cùng nhau tạo nên một sự kết hợp hoàn hảo giữa gỗ tự nhiên và kim loại nguyên khối. Khi bạn đặt mắt lên bộ cờ tướng của chúng tôi, bạn sẽ bị quyến rũ bởi sự tương phản giữa độ mềm mại của gỗ và sự mạnh mẽ của kim loại, tạo nên một vẻ đẹp độc đáo không thể nhầm lẫn.</span></p><p><br></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">Tận hưởng trò chơi đẳng cấp: Với sự kết hợp của vật liệu chất lượng cao và thiết kế tinh xảo, bộ cờ tướng cao cấp của chúng tôi không chỉ là một sản phẩm, mà còn là một trải nghiệm chơi cờ tướng đẳng cấp. Dù bạn là người chơi mới hay là chuyên gia, hãy thưởng thức những trận đấu đầy thử thách và phát triển kỹ năng của mình với bộ cờ tướng đặc biệt này.</span></p><p><br></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">Mua ngay trên Shopee: Đừng bỏ lỡ cơ hội sở hữu một sản phẩm cờ tướng cao cấp độc đáo. Ghé thăm cửa hàng của chúng tôi trên Shopee ngay hôm nay và khám phá sự kỳ diệu của sản phẩm cờ tướng chất lượng cao, tạo điểm nhấn hoàn hảo cho không gian căn nhà của bạn.</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">Hastag:</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">#CờTướngCaoCấp</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">#CờTướngGỗTựNhiên</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">#CờTướngKimLoại</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">#CờTướngĐẳngCấp</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">#CờTướngĐộcĐáo</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">#BànCờTinhXảo</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">#ChơiCờTướng</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">#CờTướngTruyềnThống</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">#CờTướngSangTrọng</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">#CờTướngNghệThuật</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">#CờTướngTrungQuốc</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">#CờTướngHandmade</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">#CờTướngSảnXuấtTỉMỉ</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">#CờTướngChấtLượngCao</span></p><p><span style=\"color: rgba(0, 0, 0, 0.8);\">#CờTướngVớiSựKếtHợpHoànHảo</span></p>',2200,10,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697968533/ohcwnfg3twoqwqszct2c.jpg',0,0,1,18,56),(42,'Áo thun NEEDS OF WISDOM Sea Cave Tee - Black - Local Brand Chính Hãng','Sản Phẩm: Áo thun NEEDS OF WISDOM Sea Cave Tee - Black\r\n\r\n\r\n\r\n- Chất Liệu: 100% Cotton.\r\n\r\n\r\n\r\n- Sản Xuất bởi Nowsaigon.\r\n\r\n\r\n\r\n- Kiểu Dáng: Form áo rộng suông với 4 size: S,M, L & XL.\r\n\r\n\r\n\r\n- Màu sắc: 1 màu Đen.\r\n\r\n\r\n\r\nHƯỚNG DẪN GIẶT ỦI SẢN PHẨM:\r\n\r\n\r\n\r\n- Giặt sản phẩm với nước ở nhiệt độ thường, hạn chế để sản phẩm tiếp xúc với chất tẩy hoặc nước giặt có độ tẩy mạnh.\r\n\r\n\r\n\r\n- Nếu giặt máy, sản phẩm nên được lộn trái trước khi cho giặt và phải giặt sản phẩm chung màu sắc với nhau để tránh tình trạng bị nhiễm màu với nhau.\r\n\r\n\r\n\r\nCHÍNH SÁCH ĐỔI TRẢ\r\n\r\n\r\n\r\nSản phẩm được chấp nhận đổi hàng - trả hàng trong vòng 7 ngày bắt đầu từ ngày khách hàng nhận được sản phẩm với các điều kiện sau:\r\n\r\n+ Sản phẩm còn mới, chưa qua sử dụng, chưa qua giặt- tẩy và còn nguyên tem nhãn - tag treo trên sản phẩm.\r\n\r\n+ Sản phẩm giao từ store không đúng size, đúng mẫu, đúng màu.\r\n\r\n+ Sản phẩm bị lỗi, bị dơ, bị thiếu nhãn mác trên sản phẩm.\r\n\r\n+ Sản phẩm giá khuyến mãi shop KHÔNG hổ trợ đổi size.\r\n\r\n\r\n\r\n#nowsaigon #nowsg #streetwear #localbrand \r\n\r\n#tee #áothun #teeshirt #tshirt #áotee #unisex ',13,200,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697968795/austn84pj8p4jqrhaftj.jpg',0,0,1,18,57),(43,'Tai Nghe Bluetooth Pro 1, Pro 2, AlP2, AlP3 Không Dây Cao Cấp Định Vị Đổi Tên Pop Up Cảm Ứng Chính Hãng BH 12T TECHHIGH','<p>Tai Nghe Bluetooth Pro 1, Pro 2, AlP2, AlP3 Không Dây Cao Cấp Định Vị Đổi Tên Pop Up Cảm Ứng Chính Hãng BH 12T TECHHIGH</p><p><br></p><p>MÔ TẢ SẢN PHẨM</p><p>-  Sử dụng cho mọi dòng điện thoai  </p><p>• Vi trình mới nhất</p><p>• Màng loa cải thiện. Cho chất lượng âm thanh hay hơn. </p><p>• Dung lượng pin cao hơn so với các bản cũ.</p><p>• Bo mạch. Bảo vệ nguồn Dock sạc. </p><p>• Theo dõi được % pin trên #widget. </p><p>• Cảm biến tiệm cận - Cảm biến nhiệt. Khắc phục delay cho tai nghe. </p><p><br></p><p>Đặc Điểm Tai nghe Bluetooth : </p><p>* Có cảm biến tháo tai dừng nhạc</p><p>* Định Vị GPS</p><p>* Đổi Tên</p><p>* Bluetooth 5.3</p><p>* Thời gian sạc: 1 giờ</p><p>* Nghe liên tục 5-6 giờ</p><p>* Pin tai nghe 45mah (có DC bảo vệ pin)</p><p>* Pin hộp sạc 320mah</p><p>* Đặc biệt siêu dễ kết nối, hiện cửa sổ ở điện thoại ấn cái được,</p><p>* Sp bảo hành 3 tháng, lỗi do nhà sx Shop đổi mới luôn ạ</p><p><br></p><p>? Chức Năng:</p><p>• Mở nắp là hiện popup, kết nối duy nhất 1 lần.</p><p>• Mic cực tốt không chút âm tạp, đàm thoại dễ dàng cực thích.</p><p>• Âm thanh đạt chuẩn 8/10</p><p>• Tháo tai nghe dừng nhạc, đeo tai nghe tự động phát nhạc.</p><p>• Cảm ứng cực nhạy. </p><p>• Vuốt tăng giảm âm lượng</p><p>• Kết nối có âm thanh loa ngoài dock sạc</p><p>• Đổi tên, định vị, tuỳ chọn cài đặt cảm biến.</p><p>• Play/Pause - Next/Back.</p><p>• Nghe/Từ chối cuộc gọi.</p><p>• Sạc không dây tiện lợi.</p><p><br></p><p><br></p><p>- Mang lại cho quý khách những sản phẩm tốt nhất, đẹp nhất.</p><p>- Nếu hàng bị lỗi do sản xuất, chúng tôi sẽ đổi lại hàng cho quý khách hàng</p><p>- Thương hiệu tạo niềm tin!</p><p>Mong bạn bớt chút thời gian để vote 5* cho shop</p>',8,874,'https://res.cloudinary.com/de3yhowd4/image/upload/v1697968854/kkr8momoaqde8yamlzvq.jpg',2,0,1,18,47),(44,'Áo Sweater Nam Form Rộng Phối Layer Chất Nỉ Unisex Thời Trang Trẻ Trung VESCA M10','<p>Áo Sweater Nam Form Rộng Phối Layer Chất Nỉ Unisex Thời Trang Trẻ Trung VESCA M10</p><p>- Sản phẩm được thiết kế theo đúng form chuẩn của nam giới Việt Nam</p><p>- Sản phẩm chính là mẫu thiết kế mới nhất của VESCA</p><p>------------------------------------ </p><p>Hướng dẫn sử dụng:</p><p>? Đối với sản phẩm mới mua về, nên giặt tay lần đâu tiên để tránh phai màu sang quần áo khác</p><p>? Khi giặt nên lộn mặt trái ra để đảm bảo độ bền của hình in/decal</p><p>? Sản phẩm phù hợp cho giặt máy/giặt tay</p><p>------------------------------------ </p><p>THÔNG TIN CHI TIẾT </p><p>? Chất liệu: Nỉ</p><p>? Màu sắc: Đen - Xanh dương - Trắng</p><p>? Thương hiệu: VESCA</p><p>? Xuất xứ: Việt Nam </p><p>?Size: M - L- XL - XXL</p><p>------------------------------------ </p><p>HƯỚNG DẪN CÁCH ĐẶT HÀNG </p><p>? Cách chọn size: Shop có bảng size mẫu. Bạn NÊN INBOX, cung cấp chiều cao, cân nặng để SHOP TƯ VẤN SIZE </p><p>? Mã sản phẩm đã có trong ảnh </p><p>? Cách đặt hàng: Nếu bạn muốn mua 2 sản phẩm khác nhau hoặc 2 size khác nhau, để được freeship </p><p>- Bạn chọn từng sản phẩm rồi thêm vào giỏ hàng </p><p>- Khi giỏ hàng đã có đầy đủ các sản phẩm cần mua, bạn mới tiến hành ấn nút “ Thanh toán” </p><p>? Shop luôn sẵn sàng trả lời inbox để tư vấn </p><p>------------------------------------ </p><p>Chế độ bảo hành VESCA:</p><p>? Tất cả các sản phẩm đều được shop bảo hành</p><p>? Đối với sản phẩm lỗi/đơn hàng thiếu sản phẩm, quý khách vui lòng nhắn tin/gọi ngay cho shop trong vòng 3 ngày (kể từ ngày nhận đơn hàng)</p><p>? Nếu quá thời hạn 3 ngày kể từ ngày nhận đơn hàng, chế độ bảo hành của VESCA sẽ hết hiệu lực</p><p>------------------------------------ </p><p>VESCA cam kết:</p><p>? VESCA cam kết mang đến cho khách hàng những sản phẩm với chất lượng tốt nhất trong tầm giá</p><p>? VESCA cam kết chính sách bảo hành tốt nhất (Hỗ trợ đổi size, Hỗ trợ đổi Sản phẩm lỗi)</p><p>#aoninam #aosweaternam #aosweaterformrong #aosweaternamformrong #aosweater</p>',6,2500,'https://res.cloudinary.com/de3yhowd4/image/upload/v1698150391/qz03iqmvzcd7qq9jzv31.jpg',0,0,1,18,57),(45,'Áo thun nam cá sấu polo nhiều màu thời trang Everest AoCasau','<p>Thông tin sản phẩm:</p><p> - Chất liệu: Vải thun cá sấu cao cấp, 4 chiều co dãn, thấm hút mồ hôi tốt, không nóng bức khi vận động nhiều, không nhăn, không co rút sau khi giặt.</p><p>Đặc điểm nổi bật: </p><p>- Thiết kế trang nhã, màu sắc ấn tượng, tiện dụng và thoải mái mang đến vẻ thanh lịch, tự tin cho người mặc.</p><p> - Form áo suông phù hợp với mọi độ tuổi, tay áo bo nhẹ khỏe khoắn.</p><p> - Áo Thun có cổ rất đa năng, mặc được trong nhiều dịp khác nhau, đi dạo phố cùng bạn bè, đi phượt, mặc hàng ngày...</p><p> - Với thiết kế đơn giản nhưng đẳng cấp, cùng với sự tiện dụng và thoải mái khi mặc.</p><p>-	Xuất xứ: Việt Nam</p><p>-	Size: S-M-L-XL-XXL-3XL (Tham khảo bảng size ở hình ảnh kỹ hơn)</p><p>ĐÔI NÉT VỀ SẢN PHẨM ÁO THUN NAM</p><p>Áo thun nam là trang phục cơ bản và tiện dụng nhất đối với phái mạnh. Hầu như người đàn ông nào cũng đều phải có vài chiếc áo pull nam trong tủ áo của mình. Việc mua áo thun nam cũng được bàn tán sôi nổi trên khắp các diễn đàn hay blog cá nhân. Với những ưu điểm tuyệt vời như phong cách đa dạng, kiểu dáng đơn giản và chất liệu thoáng mát, áo thun nam Hàn Quốc được phái mạnh yêu thích và lựa chọn khi đến công sở hay dạo phố. Bên cạnh đó, áo thun nam cổ trụ cũng được các chàng trai văn phòng yêu thích vì nét lịch sự và trẻ trung. Chỉ cần kết hợp áo thun nam body với quần jeans nam hay quần kaki nam và những phụ kiện đi kèm như ví nam, túi du lịch nam hay đơn giản hơn là chiếc balo laptop nam năng động, bạn đã có ngay bộ cánh đơn giản mà hiện đại. </p><p>Hướng dẫn sử dụng</p><p>- Khuyến khích giặt tay</p><p>- Không nên dùng bột giặt có chất tẩy mạnh</p><p>- Ủi nhẹ ở nhiệt độ thấp</p><p>#aothun #aopolo #aothuncotru #aothunpolonam #aopolonam #aothuncasau #aocasau #áocásấu #aothunnam #aothunnu #aonam #aonu #aothunden #aothuneverest #everest</p>',3,300,'https://res.cloudinary.com/de3yhowd4/image/upload/v1698150521/fbxu60mcma23oacmmiem.jpg',0,0,1,18,45),(46,'?Áo Khoác ?Bóng Chày Có Mũ Trùm Dáng Rộng Màu Gradient Phong Cách Đường Phố Hàn Quốc Cá Tính Faru099','<p>?Thời gian giao hàng dự kiến cho sản phẩm này là từ 8-15 ngày?</p><p><br></p><p>❤️❤️❤️Các bạn nhớ chú ý đến sản phẩm bạn thích trong cửa hàng để tìm hiểu thêm về những kiểu dáng mới nhất và nhiều thông báo ưu đãi mới nhất ~</p><p> Xem tất cả các sản phẩm trong cửa hàng tại đây →</p><p><br></p><p> </p><p>❤️❤️❤️ Kích thước: M-2XL</p><p> Màu sắc: xanh dương, trắng</p><p> Chất liệu: sợi polyester</p><p> Phiên bản: dáng rộng</p><p> Chiều dài tay áo: dài tay</p><p> Độ dày: thông thường</p><p> Độ co giãn: co giãn nhẹ</p><p> Loại quần áo: quần áo nam</p><p> Phong cách cơ bản: phiên bản Hàn Quốc</p><p> Phong cách phân khu: đơn giản và thời trang</p><p> Các dịp phù hợp: giải trí khác</p><p> Đối tượng thích hợp: thanh thiếu niên</p><p> Dành cho: unisex</p><p> Mùa phù hợp: mùa xuân và mùa thu</p><p> </p><p>❤️❤️❤️ Lưu ý mua hàng:</p><p> 1. Vui lòng tham khảo mẫu trước hoặc bảng kích thước để biết kích thước chi tiết. Kích thước tổng thể phần thân dưới của shop là rộng rãi, phần thân trên ôm và rộng. Nếu bạn không chắc mình mặc kích cỡ bao nhiêu, bạn có thể cho chúng tôi biết chiều cao và cân nặng của bạn, chúng tôi sẽ tư vấn chuyên nghiệp cho bạn</p><p> 2. Tất cả các sản phẩm được gửi từ Trung Quốc, hàng được gửi đến trung tâm vận chuyển hậu cần quốc tế. Sau khi chúng tôi gửi hàng sẽ không hiển thị ngay, vì chúng tôi cần phải đến trung tâm trung chuyển quốc tế trước, và thông tin hậu cần sẽ hiển thị sau khi nhân viên đăng ký gửi hàng. Xin hãy kiên nhẫn ~~</p><p> 3. Nếu bạn không thể mở lỗ khuy quần jean của mình, hãy yên tâm sử dụng tất cả các quần jean mới từ Trung Quốc đại lục. Đây không phải là một sản phẩm lỗi chưa hoàn thiện, mà là để đảm bảo tính toàn vẹn của sản phẩm ở mức độ cao nhất ~~</p><p> 4. Shop chúng tôi sẽ kiểm tra trước khi giao, tuy nhiên thỉnh thoảng cũng có sơ sót. Ví dụ, hàng nhận được bị lỗi, thiếu sót và các vấn đề về chất lượng sau khi nhận được. Xin vui lòng liên hệ với chúng tôi sớm nhất có thể. Chúng tôi rất chân thành và có trách nhiệm với bạn ~~</p><p> 5. Nếu bạn hài lòng với các sản phẩm và dịch vụ của chúng tôi, xin vui lòng cho chúng tôi 5 sao. Cảm ơn các bạn đã ủng hộ và chúc bạn một cuộc sống vui vẻ ~~</p><p> </p><p> Do các phương pháp đo khác nhau, vui lòng cho phép sai số 2-5cm, và phạm vi lỗi này không phải là vấn đề chất lượng! • Xin lưu ý rằng sản phẩm không thể hủy hoặc thay đổi sau khi giao! ! ! Do màn hình hiển thị khác nhau, sự khác biệt màu sắc là không thể tránh khỏi. Vui lòng tham khảo sản phẩm thực tế càng gần với sản phẩm thực tế càng tốt. Lưu ý: Chúng tôi gửi hàng từ Trung Quốc đại lục. Kích thước khác với Việt Nam. Bạn có thể hỏi về kích thước khi đặt hàng để tránh những tổn thất không đáng có.</p><p> Cảm ơn bạn! ❤️❤️❤️</p><p><br></p><p>Áo khoác Gradient nữ áo len cardigan rộng rãi mới mùa thu chiên đường phố đồng phục bóng chày có mũ trùm đầu trong thủy triều FARUILINE FARU099</p>',5,750,'https://res.cloudinary.com/de3yhowd4/image/upload/v1698150628/ikncchn1bc8jseehbdqu.jpg',0,0,1,18,45),(47,'Áo Khoác Cardigan Có Mũ Trùm Cổ Cao Màu Đen Phong Cách Samurai Mỹ Cho Nam Fru257','<p>Áo khoác Samurai đen Áo khoác nam có mũ trùm đầu cao cổ Chức năng Áo khoác Cardigan gió Mỹ FARU257</p><p>Áo khoác Samurai đen Áo khoác nam có mũ trùm đầu cao cổ Chức năng Áo khoác Cardigan gió Mỹ FARU257</p>',12,950,'https://res.cloudinary.com/de3yhowd4/image/upload/v1698150826/nobimxgeftq31kiyltds.jpg',0,0,1,18,57);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL,
  `content` longtext,
  `image_url` varchar(255) DEFAULT NULL,
  `star` int DEFAULT NULL,
  `create_time` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_product_has_user_user1_idx` (`user_id`),
  KEY `fk_product_has_user_product1_idx` (`product_id`),
  CONSTRAINT `fk_product_has_user_product1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`),
  CONSTRAINT `fk_product_has_user_user1` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (13,30,50,'Sản phẩm đẹp, đúng như mô tả, mình rất ưng','https://res.cloudinary.com/de3yhowd4/image/upload/v1697984352/ireotpjnatzl9aknmi6p.jpg',5,'2023-10-22 21:19:41'),(14,30,50,'Sản phẩm đẹp, đúng như mô tả, mình rất ưng','https://res.cloudinary.com/de3yhowd4/image/upload/v1697984355/numlhfc4pkfpjoauz1eq.jpg',5,'2023-10-22 21:19:44');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `description` text,
  `address` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `status` int DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name_UNIQUE` (`name`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  KEY `fk_shop_user_idx` (`user_id`),
  CONSTRAINT `fk_shop_user` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop`
--

LOCK TABLES `shop` WRITE;
/*!40000 ALTER TABLE `shop` DISABLE KEYS */;
INSERT INTO `shop` VALUES (18,'Coolmate - Official Store','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.  The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.','37 Chu Mạnh Trinh, Thành phố Vũng Tàu, Tỉnh Bà Rịa - Vũng Tàu','https://res.cloudinary.com/de3yhowd4/image/upload/v1697946351/irxsocgkhqinnpoxh7td.jpg',1,'tdkhoa1101@gmail.com',49),(19,'LICNATION_OFFICIAL','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.  The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.','75/46 Lý Thánh Tông, Quận Tân Phú, Thành phố Hồ Chí Minh','https://res.cloudinary.com/de3yhowd4/image/upload/v1697965503/tkndrl3k0lxumvyfjn44.jpg',1,'khoatran03091406@gmail.com',51),(20,'KIPOR VN','Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of \"de Finibus Bonorum et Malorum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.  The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from \"de Finibus Bonorum et Malorum\" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.','314 Lê Hồng Phong, Huyện Đồng Hỷ, Tỉnh Thái Nguyên','https://res.cloudinary.com/de3yhowd4/image/upload/v1697966386/ebf3ddmv6ae3ffxsdqwx.jpg',1,'2051052065khoa@ou.edu.vn',52);
/*!40000 ALTER TABLE `shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `phone` varchar(45) DEFAULT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `red_flag` int DEFAULT NULL,
  `role_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  UNIQUE KEY `email_UNIQUE` (`email`),
  UNIQUE KEY `phone_UNIQUE` (`phone`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (49,'tdkhoa1101','$2a$10$bU1MPNSiAxI5TQ1FGb1xiOIQMkciKYNwO0ve.kG7Zmc7H1v49gksG','tdkhoa1101@gmail.com','0397825025','Trần Đăng Khoa','https://res.cloudinary.com/de3yhowd4/image/upload/v1697945802/clv0sg0s6apumlbdxztu.jpg',0,'ROLE_USER'),(50,'Admin','$2a$10$YGUPBABHhLXqxSSt.7LCsefSNCIxQhHADEG5tzcHnpjZBKV0tHJu2','dangkhoa1101airdrop@gmail.com','0397825026','Admin','https://res.cloudinary.com/de3yhowd4/image/upload/v1697947302/rf9swgoxbqqpkaw0wase.jpg',0,'ROLE_ADMIN'),(51,'nguyenvana','$2a$10$PLoiplb8mNPa.yKLXwHW1evPThAwKENTHCjE0cLE95FbLaohkdQWC','khoatran03091406@gmail.com','0397825030','Nguyễn Văn A','https://res.cloudinary.com/de3yhowd4/image/upload/v1697965379/de9ahahmhvteqdwsfsql.png',0,'ROLE_USER'),(52,'nguyenvanb','$2a$10$O0WC8pkv0qaCmgxiLrHGN.CcXRDYrtgVkYeah3omfnbtuBYmsSyi2','2051052065khoa@ou.edu.vn','0397825031','Nguyễn Văn B','https://res.cloudinary.com/de3yhowd4/image/upload/v1697966308/asfdt4sjyhpqzbkylmrn.jpg',0,'ROLE_USER');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `voucher`
--

DROP TABLE IF EXISTS `voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `voucher` (
  `id` int NOT NULL AUTO_INCREMENT,
  `quantity` int DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(45) DEFAULT NULL,
  `value` int DEFAULT NULL,
  `is_deleted` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `voucher`
--

LOCK TABLES `voucher` WRITE;
/*!40000 ALTER TABLE `voucher` DISABLE KEYS */;
INSERT INTO `voucher` VALUES (7,70,'khuyen mai 1 da sua','KM1',20,1),(8,798,'Giảm giá 3%','MGT3%0001',3,0),(9,9999,'Giảm giá 5%','MGT5%0001',5,0),(10,7650,'Giảm giá 10%','MGT10%0001',10,0),(11,4818,'Giảm giá 15%','MGT15%0001',15,0);
/*!40000 ALTER TABLE `voucher` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-10-24 20:50:51
