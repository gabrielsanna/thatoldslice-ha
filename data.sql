-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: db
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB-0+deb9u1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(80) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group`
--

LOCK TABLES `auth_group` WRITE;
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group_permissions`
--

DROP TABLE IF EXISTS `auth_group_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_group_permissions` (
  `id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_group_permissions`
--

LOCK TABLES `auth_group_permissions` WRITE;
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_permission`
--

DROP TABLE IF EXISTS `auth_permission`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_permission` (
  `id` int(11) DEFAULT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `codename` varchar(100) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,1,'add_logentry','Can add log entry'),(2,1,'change_logentry','Can change log entry'),(3,1,'delete_logentry','Can delete log entry'),(4,2,'add_permission','Can add permission'),(5,2,'change_permission','Can change permission'),(6,2,'delete_permission','Can delete permission'),(7,3,'add_group','Can add group'),(8,3,'change_group','Can change group'),(9,3,'delete_group','Can delete group'),(10,4,'add_user','Can add user'),(11,4,'change_user','Can change user'),(12,4,'delete_user','Can delete user'),(13,5,'add_contenttype','Can add content type'),(14,5,'change_contenttype','Can change content type'),(15,5,'delete_contenttype','Can delete content type'),(16,6,'add_session','Can add session'),(17,6,'change_session','Can change session'),(18,6,'delete_session','Can delete session'),(19,7,'add_pizzatoppings','Can add pizza toppings'),(20,7,'change_pizzatoppings','Can change pizza toppings'),(21,7,'delete_pizzatoppings','Can delete pizza toppings'),(22,7,'add_pizzatopping','Can add pizza topping'),(23,7,'change_pizzatopping','Can change pizza topping'),(24,7,'delete_pizzatopping','Can delete pizza topping'),(25,8,'add_dinnerplatter','Can add dinner platter'),(26,8,'change_dinnerplatter','Can change dinner platter'),(27,8,'delete_dinnerplatter','Can delete dinner platter'),(28,9,'add_pasta','Can add pasta'),(29,9,'change_pasta','Can change pasta'),(30,9,'delete_pasta','Can delete pasta'),(31,10,'add_regularpizza','Can add regular pizza'),(32,10,'change_regularpizza','Can change regular pizza'),(33,10,'delete_regularpizza','Can delete regular pizza'),(34,11,'add_salad','Can add salad'),(35,11,'change_salad','Can change salad'),(36,11,'delete_salad','Can delete salad'),(37,12,'add_sicilianpizza','Can add sicilian pizza'),(38,12,'change_sicilianpizza','Can change sicilian pizza'),(39,12,'delete_sicilianpizza','Can delete sicilian pizza'),(40,13,'add_sub','Can add sub'),(41,13,'change_sub','Can change sub'),(42,13,'delete_sub','Can delete sub'),(43,14,'add_pizza','Can add pizza'),(44,14,'change_pizza','Can change pizza'),(45,14,'delete_pizza','Can delete pizza'),(46,15,'add_entree','Can add entree'),(47,15,'change_entree','Can change entree'),(48,15,'delete_entree','Can delete entree'),(49,16,'add_customerorders','Can add customer orders'),(50,16,'change_customerorders','Can change customer orders'),(51,16,'delete_customerorders','Can delete customer orders'),(52,17,'add_customerorder','Can add customer order'),(53,17,'change_customerorder','Can change customer order'),(54,17,'delete_customerorder','Can delete customer order'),(55,18,'add_mealsinorder','Can add meals in order'),(56,18,'change_mealsinorder','Can change meals in order'),(57,18,'delete_mealsinorder','Can delete meals in order'),(58,19,'add_steakcheesetopping','Can add steak cheese topping'),(59,19,'change_steakcheesetopping','Can change steak cheese topping'),(60,19,'delete_steakcheesetopping','Can delete steak cheese topping');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user`
--

DROP TABLE IF EXISTS `auth_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user` (
  `id` int(11) DEFAULT NULL,
  `password` varchar(128) DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `is_superuser` text,
  `username` varchar(150) DEFAULT NULL,
  `first_name` varchar(30) DEFAULT NULL,
  `email` varchar(254) DEFAULT NULL,
  `is_staff` text,
  `is_active` text,
  `date_joined` datetime DEFAULT NULL,
  `last_name` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user`
--

LOCK TABLES `auth_user` WRITE;
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` VALUES (1,'pbkdf2_sha256$100000$Ls8SUkDJRVlV$Uyj6OcFkJbGud+GdQnQ6GMM6tdUiq8NaO4uh/m2D6zE=','2018-04-15 00:00:00','1','gsanna','','gabrielsanna1@gmail.com','1','1','2018-04-03 00:00:00',''),(2,'pbkdf2_sha256$100000$uGZNJsjLzwz2$GVQhLZqt3HrotG4TB1iCE96mxfnln33NqhstA43sbHk=','2018-04-15 00:00:00','0','gabetest','','','0','1','2018-04-05 00:00:00',''),(3,'pbkdf2_sha256$100000$KuC90eMOLlWN$yt9nGKC+dw7HlTa6NE87W4EsfP3ToeIVDxBsIQURq6Y=','2018-04-06 00:00:00','0','cassanderson4','','','0','1','2018-04-06 00:00:00',''),(4,'pbkdf2_sha256$100000$p7fMp7j8VteZ$E/2WIXSim2G3697VbDktkVIxpM4wUFCOz3dCwy+qroA=','0000-00-00 00:00:00','1','cs33a','','','1','1','0000-00-00 00:00:00','');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_groups`
--

DROP TABLE IF EXISTS `auth_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_groups` (
  `id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_groups`
--

LOCK TABLES `auth_user_groups` WRITE;
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_user_user_permissions`
--

DROP TABLE IF EXISTS `auth_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `permission_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_user_user_permissions`
--

LOCK TABLES `auth_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_admin_log` (
  `id` int(11) DEFAULT NULL,
  `object_id` text,
  `object_repr` varchar(200) DEFAULT NULL,
  `action_flag` text,
  `change_message` text,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) DEFAULT NULL,
  `action_time` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'1','Pepperoni','1','[{\"added\": {}}]',7,1,'2018-04-03 00:00:00'),(2,'2','Sausage','1','[{\"added\": {}}]',7,1,'2018-04-03 00:00:00'),(3,'3','Mushrooms','1','[{\"added\": {}}]',7,1,'2018-04-03 00:00:00'),(4,'1','RegularPizza object (1)','1','[{\"added\": {}}]',10,1,'2018-04-03 00:00:00'),(5,'2','RegularPizza object (2)','1','[{\"added\": {}}]',10,1,'2018-04-03 00:00:00'),(6,'3','RegularPizza object (3)','1','[{\"added\": {}}]',10,1,'2018-04-03 00:00:00'),(7,'4','RegularPizza object (4)','1','[{\"added\": {}}]',10,1,'2018-04-03 00:00:00'),(8,'1','Garden Salad (SM): $35','1','[{\"added\": {}}]',8,1,'2018-04-03 00:00:00'),(9,'1','Garden Salad (SM): $35.00','2','[]',8,1,'2018-04-03 00:00:00'),(10,'2','Garden Salad (LG): $60.00','1','[{\"added\": {}}]',8,1,'2018-04-03 00:00:00'),(11,'3','Greek Salad (SM): $45.00','1','[{\"added\": {}}]',8,1,'2018-04-03 00:00:00'),(12,'4','Greek Salad (LG): $70.00','1','[{\"added\": {}}]',8,1,'2018-04-03 00:00:00'),(13,'5','Antipasto (SM): $45.00','1','[{\"added\": {}}]',8,1,'2018-04-03 00:00:00'),(14,'6','Antipasto (LG): $70.00','1','[{\"added\": {}}]',8,1,'2018-04-03 00:00:00'),(15,'7','Baked Ziti (SM): $35.00','1','[{\"added\": {}}]',8,1,'2018-04-03 00:00:00'),(16,'8','Baked Ziti (LG): $60.00','1','[{\"added\": {}}]',8,1,'2018-04-03 00:00:00'),(17,'9','Meatball Parm (SM): $45.00','1','[{\"added\": {}}]',8,1,'2018-04-03 00:00:00'),(18,'10','Meatball Parm (LG): $70.00','1','[{\"added\": {}}]',8,1,'2018-04-03 00:00:00'),(19,'11','Chicken Parm (SM): $45.00','1','[{\"added\": {}}]',8,1,'2018-04-03 00:00:00'),(20,'12','Chicken Parm (LG): $80.00','1','[{\"added\": {}}]',8,1,'2018-04-03 00:00:00'),(21,'4','Onions','1','[{\"added\": {}}]',7,1,'2018-04-03 00:00:00'),(22,'5','Ham','1','[{\"added\": {}}]',7,1,'2018-04-03 00:00:00'),(23,'6','Canadian Bacon','1','[{\"added\": {}}]',7,1,'2018-04-03 00:00:00'),(24,'7','Pineapple','1','[{\"added\": {}}]',7,1,'2018-04-03 00:00:00'),(25,'8','Eggplant','1','[{\"added\": {}}]',7,1,'2018-04-03 00:00:00'),(26,'9','Tomato & Basil','1','[{\"added\": {}}]',7,1,'2018-04-03 00:00:00'),(27,'10','Green Peppers','1','[{\"added\": {}}]',7,1,'2018-04-03 00:00:00'),(28,'11','Hamburger','1','[{\"added\": {}}]',7,1,'2018-04-03 00:00:00'),(29,'12','Spinach','1','[{\"added\": {}}]',7,1,'2018-04-03 00:00:00'),(30,'13','Artichoke','1','[{\"added\": {}}]',7,1,'2018-04-03 00:00:00'),(31,'14','Buffalo Chicken','1','[{\"added\": {}}]',7,1,'2018-04-03 00:00:00'),(32,'15','Barbecue Chicken','1','[{\"added\": {}}]',7,1,'2018-04-03 00:00:00'),(33,'16','Anchovies','1','[{\"added\": {}}]',7,1,'2018-04-03 00:00:00'),(34,'17','Black Olives','1','[{\"added\": {}}]',7,1,'2018-04-03 00:00:00'),(35,'18','Fresh Garlic','1','[{\"added\": {}}]',7,1,'2018-04-03 00:00:00'),(36,'19','Zucchini','1','[{\"added\": {}}]',7,1,'2018-04-03 00:00:00'),(37,'12','Chicken Parm (LG): $80.00','3','',8,1,'2018-04-03 00:00:00'),(38,'11','Chicken Parm (SM): $45.00','3','',8,1,'2018-04-03 00:00:00'),(39,'10','Meatball Parm (LG): $70.00','3','',8,1,'2018-04-03 00:00:00'),(40,'9','Meatball Parm (SM): $45.00','3','',8,1,'2018-04-03 00:00:00'),(41,'8','Baked Ziti (LG): $60.00','3','',8,1,'2018-04-03 00:00:00'),(42,'7','Baked Ziti (SM): $35.00','3','',8,1,'2018-04-03 00:00:00'),(43,'6','Antipasto (LG): $70.00','3','',8,1,'2018-04-03 00:00:00'),(44,'5','Antipasto (SM): $45.00','3','',8,1,'2018-04-03 00:00:00'),(45,'4','Greek Salad (LG): $70.00','3','',8,1,'2018-04-03 00:00:00'),(46,'3','Greek Salad (SM): $45.00','3','',8,1,'2018-04-03 00:00:00'),(47,'2','Garden Salad (LG): $60.00','3','',8,1,'2018-04-03 00:00:00'),(48,'1','Garden Salad (SM): $35.00','3','',8,1,'2018-04-03 00:00:00'),(49,'13','Garden Salad (Small): $35.00','1','[{\"added\": {}}]',8,1,'2018-04-03 00:00:00'),(50,'14','Garden Salad (Large): $60.00','1','[{\"added\": {}}]',8,1,'2018-04-03 00:00:00'),(51,'15','Greek Salad (Small): $45','1','[{\"added\": {}}]',8,1,'2018-04-03 00:00:00'),(52,'16','Greek Salad (Large): $70.00','1','[{\"added\": {}}]',8,1,'2018-04-03 00:00:00'),(53,'17','Antipasto (Small): $45.00','1','[{\"added\": {}}]',8,1,'2018-04-03 00:00:00'),(54,'18','Antipasto (Large): $70.00','1','[{\"added\": {}}]',8,1,'2018-04-03 00:00:00'),(55,'19','Baked Ziti (Small): $35.00','1','[{\"added\": {}}]',8,1,'2018-04-03 00:00:00'),(56,'20','Baked Ziti (Large): $70.00','1','[{\"added\": {}}]',8,1,'2018-04-03 00:00:00'),(57,'21','Meatball Parm (Small): $45.00','1','[{\"added\": {}}]',8,1,'2018-04-03 00:00:00'),(58,'22','Meatball Parm (Large): $70.00','1','[{\"added\": {}}]',8,1,'2018-04-03 00:00:00'),(59,'20','Baked Ziti (Large): $60','2','[{\"changed\": {\"fields\": [\"price\"]}}]',8,1,'2018-04-03 00:00:00'),(60,'23','Chicken Parm (Small): $45','1','[{\"added\": {}}]',8,1,'2018-04-03 00:00:00'),(61,'24','Chicken Parm (Large): $80','1','[{\"added\": {}}]',8,1,'2018-04-03 00:00:00'),(62,'1','Baked Ziti w/Mozzarella: $6.50','1','[{\"added\": {}}]',9,1,'2018-04-03 00:00:00'),(63,'2','Baked Ziti w/Meatballs: $8.75','1','[{\"added\": {}}]',9,1,'2018-04-03 00:00:00'),(64,'3','Baked Ziti w/Chicken: $9.75','1','[{\"added\": {}}]',9,1,'2018-04-03 00:00:00'),(65,'4','1 topping (LG): $18.45','3','',10,1,'2018-04-03 00:00:00'),(66,'3','1 topping (SM): $12.70','3','',10,1,'2018-04-03 00:00:00'),(67,'2','Cheese (LG): $16.45','3','',10,1,'2018-04-03 00:00:00'),(68,'1','Cheese (SM): $11.70','3','',10,1,'2018-04-03 00:00:00'),(69,'5','Cheese (Small): $11.7','1','[{\"added\": {}}]',10,1,'2018-04-03 00:00:00'),(70,'6','Cheese (Large): $16.45','1','[{\"added\": {}}]',10,1,'2018-04-03 00:00:00'),(71,'7','1 topping (Small): $12.70','1','[{\"added\": {}}]',10,1,'2018-04-03 00:00:00'),(72,'8','1 topping (Large): $18.45','1','[{\"added\": {}}]',10,1,'2018-04-03 00:00:00'),(73,'9','2 Toppings (Small): $14.20','1','[{\"added\": {}}]',10,1,'2018-04-03 00:00:00'),(74,'10','2 Toppings (Large): $20.45','1','[{\"added\": {}}]',10,1,'2018-04-03 00:00:00'),(75,'11','3 Toppings (Small): $15.20','1','[{\"added\": {}}]',10,1,'2018-04-03 00:00:00'),(76,'12','3 Toppings (Large): $22.45','1','[{\"added\": {}}]',10,1,'2018-04-03 00:00:00'),(77,'13','Special (Small): $16.75','1','[{\"added\": {}}]',10,1,'2018-04-03 00:00:00'),(78,'14','Special (Large): $24.45','1','[{\"added\": {}}]',10,1,'2018-04-03 00:00:00'),(79,'1','Garden Salad: $6.25','1','[{\"added\": {}}]',11,1,'2018-04-03 00:00:00'),(80,'2','Greek Salad: $8.25','1','[{\"added\": {}}]',11,1,'2018-04-03 00:00:00'),(81,'3','Antipasto: $8.25','1','[{\"added\": {}}]',11,1,'2018-04-03 00:00:00'),(82,'4','Salad w/Tuna: $8.25','1','[{\"added\": {}}]',11,1,'2018-04-03 00:00:00'),(83,'2','gabetest','1','[{\"added\": {}}]',4,1,'2018-04-05 00:00:00'),(84,'1','Regular pizza (Small): $11.70','1','[{\"added\": {}}]',14,1,'2018-04-07 00:00:00'),(85,'2','Regular pizza (Small): $12.70','1','[{\"added\": {}}]',14,1,'2018-04-07 00:00:00'),(86,'3','Regular pizza (Small): $14.20','1','[{\"added\": {}}]',14,1,'2018-04-07 00:00:00'),(87,'4','Regular pizza (Small): $15.20','1','[{\"added\": {}}]',14,1,'2018-04-07 00:00:00'),(88,'5','Regular pizza (Small): $16.75','1','[{\"added\": {}}]',14,1,'2018-04-07 00:00:00'),(89,'6','Regular pizza (Large): $16.45','1','[{\"added\": {}}]',14,1,'2018-04-07 00:00:00'),(90,'7','Regular pizza (Large): $18.45','1','[{\"added\": {}}]',14,1,'2018-04-07 00:00:00'),(91,'8','Regular pizza (Large): $20.45','1','[{\"added\": {}}]',14,1,'2018-04-07 00:00:00'),(92,'9','Regular pizza (Large): $22.45','1','[{\"added\": {}}]',14,1,'2018-04-07 00:00:00'),(93,'10','Regular pizza (Large): $24.45','1','[{\"added\": {}}]',14,1,'2018-04-07 00:00:00'),(94,'11','Sicilian pizza (Small): $22.45','1','[{\"added\": {}}]',14,1,'2018-04-07 00:00:00'),(95,'12','Sicilian pizza (Small): $24.45','1','[{\"added\": {}}]',14,1,'2018-04-07 00:00:00'),(96,'13','Sicilian pizza (Small): $26.45','1','[{\"added\": {}}]',14,1,'2018-04-07 00:00:00'),(97,'14','Sicilian pizza (Small): $27.45','1','[{\"added\": {}}]',14,1,'2018-04-07 00:00:00'),(98,'15','Sicilian pizza (Small): $28.45','1','[{\"added\": {}}]',14,1,'2018-04-07 00:00:00'),(99,'16','Sicilian pizza (Large): $35.70','1','[{\"added\": {}}]',14,1,'2018-04-07 00:00:00'),(100,'17','Sicilian pizza (Large): $37.70','1','[{\"added\": {}}]',14,1,'2018-04-07 00:00:00'),(101,'18','Sicilian pizza (Large): $39.70','1','[{\"added\": {}}]',14,1,'2018-04-07 00:00:00'),(102,'19','Sicilian pizza (Large): $41.70','1','[{\"added\": {}}]',14,1,'2018-04-07 00:00:00'),(103,'20','Sicilian pizza (Large): $42.70','1','[{\"added\": {}}]',14,1,'2018-04-07 00:00:00'),(104,'1','Regular cheese pizza (Small): $11.70','1','[{\"added\": {}}]',15,1,'2018-04-09 00:00:00'),(105,'2','Regular cheese pizza (Large): $16.45','1','[{\"added\": {}}]',15,1,'2018-04-09 00:00:00'),(106,'3','Regular 1 topping pizza (Small): $12.70','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(107,'4','Regular 1 topping pizza (Large): $18.45','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(108,'5','Regular 2 toppings pizza (Small): $14.20','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(109,'6','Regular 2 toppings pizza (Large): $20.45','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(110,'7','Regular 3 toppings pizza (Small): $15.20','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(111,'8','Regular 3 toppings pizza (Large): $22.45','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(112,'9','Regular special pizza (Small): $16.75','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(113,'10','Regular special pizza (Large): $24.45','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(114,'10','Regular Pizza special pizza (Large): $24.45','2','[{\"changed\": {\"fields\": [\"entree_type\"]}}]',15,1,'2018-04-10 00:00:00'),(115,'9','Sicilian Pizza special pizza (Small): $16.75','2','[{\"changed\": {\"fields\": [\"entree_type\"]}}]',15,1,'2018-04-10 00:00:00'),(116,'8','Regular Pizza 3 toppings pizza (Large): $22.45','2','[{\"changed\": {\"fields\": [\"entree_type\"]}}]',15,1,'2018-04-10 00:00:00'),(117,'7','Regular Pizza 3 toppings pizza (Small): $15.20','2','[{\"changed\": {\"fields\": [\"entree_type\"]}}]',15,1,'2018-04-10 00:00:00'),(118,'6','Regular Pizza 2 toppings pizza (Large): $20.45','2','[{\"changed\": {\"fields\": [\"entree_type\"]}}]',15,1,'2018-04-10 00:00:00'),(119,'5','Regular Pizza 2 toppings pizza (Small): $14.20','2','[{\"changed\": {\"fields\": [\"entree_type\"]}}]',15,1,'2018-04-10 00:00:00'),(120,'4','Regular Pizza 1 topping pizza (Large): $18.45','2','[{\"changed\": {\"fields\": [\"entree_type\"]}}]',15,1,'2018-04-10 00:00:00'),(121,'3','Regular Pizza 1 topping pizza (Small): $12.70','2','[{\"changed\": {\"fields\": [\"entree_type\"]}}]',15,1,'2018-04-10 00:00:00'),(122,'2','Regular Pizza cheese pizza (Large): $16.45','2','[{\"changed\": {\"fields\": [\"entree_type\"]}}]',15,1,'2018-04-10 00:00:00'),(123,'1','Regular Pizza cheese pizza (Small): $11.70','2','[{\"changed\": {\"fields\": [\"entree_type\"]}}]',15,1,'2018-04-10 00:00:00'),(124,'9','Regular Pizza special pizza (Small): $16.75','2','[{\"changed\": {\"fields\": [\"entree_type\"]}}]',15,1,'2018-04-10 00:00:00'),(125,'11','Sicilian Pizza cheese pizza (Small): $22.45','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(126,'12','Sicilian Pizza cheese pizza (Large): $35.70','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(127,'13','Sicilian Pizza 1 topping pizza (Small): $24.45','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(128,'14','Sicilian Pizza 1 topping pizza (Large): $37.70','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(129,'15','Sicilian Pizza 2 toppings pizza (Small): $26.45','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(130,'16','Sicilian Pizza 2 toppings pizza (Large): $39.70','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(131,'17','Sicilian Pizza 3 toppings pizza (Small): $27.45','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(132,'18','Sicilian Pizza 3 toppings pizza (Large): $41.70','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(133,'19','Sicilian Pizza special pizza (Small): $28.45','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(134,'20','Sicilian Pizza special pizza (Large): $42.70','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(135,'21','Sub cheese pizza (Small): $6.50','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(136,'22','Sub cheese pizza (Large): $7.95','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(137,'23','Sub italian pizza (Small): $6.50','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(138,'24','Sub italian pizza (Large): $7.95','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(139,'25','Sub ham and cheese pizza (Small): $6.50','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(140,'26','Sub ham and cheese pizza (Large): $7.95','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(141,'27','Sub meatball pizza (Small): $6.50','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(142,'28','Sub meatball pizza (Large): $7.95','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(143,'29','Sub tuna pizza (Small): $6.50','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(144,'30','Sub tuna pizza (Large): $7.95','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(145,'31','Sub turkey pizza (Small): $7.50','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(146,'32','Sub turkey pizza (Large): $8.50','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(147,'33','Sub chicken parmigiana pizza (Small): $7.50','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(148,'34','Sub chicken parmigiana pizza (Large): $8.50','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(149,'35','Sub eggplant parmigiana pizza (Small): $6.50','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(150,'36','Sub eggplant parmigiana pizza (Large): $7.95','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(151,'37','Sub steak pizza (Small): $6.50','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(152,'38','Sub steak pizza (Large): $7.95','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(153,'39','Sub steak and cheese pizza (Small): $6.95','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(154,'40','Sub steak and cheese pizza (Small): $8.50','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(155,'41','Sub sausage, peppers, and onions pizza (Large): $8.50','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(156,'42','Sub hamburger pizza (Small): $4.60','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(157,'43','Sub hamburger pizza (Small): $6.95','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(158,'44','Sub cheeseburger pizza (Small): $5.10','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(159,'45','Sub cheeseburger pizza (Large): $7.45','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(160,'46','Sub fried chicken pizza (Small): $6.95','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(161,'47','Sub fried chicken pizza (Large): $8.50','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(162,'48','Sub veggie pizza (Small): $6.95','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(163,'49','Sub veggie pizza (Large): $8.50','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(164,'50','Pasta baked ziti w/mozzarella pizza (None): $6.50','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(165,'51','Pasta baked ziti w/meatballs pizza (None): $8.75','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(166,'52','Pasta baked ziti w/chicken pizza (None): $9.75','1','[{\"added\": {}}]',15,1,'2018-04-10 00:00:00'),(167,'1','Submitted order by cassanderson4 at 2018-04-10 23:14:31.739916+00:00','1','[{\"added\": {}}]',17,1,'2018-04-10 00:00:00'),(168,'1','Submitted order by cassanderson4 at 2018-04-10 23:14:31.739916+00:00','2','[{\"changed\": {\"fields\": [\"food_items\"]}}]',17,1,'2018-04-10 00:00:00'),(169,'1','Submitted order by cassanderson4 at 2018-04-10 23:14:31.739916+00:00','2','[{\"added\": {\"name\": \"meals in order\", \"object\": \"MealsInOrder object (1)\"}}]',17,1,'2018-04-10 00:00:00'),(170,'1','Submitted order by cassanderson4 at 2018-04-10 23:14:31.739916+00:00','2','[{\"added\": {\"name\": \"meals in order\", \"object\": \"MealsInOrder object (2)\"}}, {\"added\": {\"name\": \"meals in order\", \"object\": \"MealsInOrder object (3)\"}}]',17,1,'2018-04-10 00:00:00'),(171,'2','Submitted order by gsanna at 2018-04-11 00:03:02.831433+00:00','1','[{\"added\": {}}, {\"added\": {\"name\": \"meals in order\", \"object\": \"MealsInOrder object (4)\"}}, {\"added\": {\"name\": \"meals in order\", \"object\": \"MealsInOrder object (5)\"}}, {\"added\": {\"name\": \"meals in order\", \"object\": \"MealsInOrder object (6)\"}}]',17,1,'2018-04-11 00:00:00'),(172,'3','Unsubmitted order by gsanna at 2018-04-11 21:53:59.138632+00:00','1','[{\"added\": {}}, {\"added\": {\"name\": \"meals in order\", \"object\": \"MealsInOrder object (7)\"}}, {\"added\": {\"name\": \"meals in order\", \"object\": \"MealsInOrder object (8)\"}}]',17,1,'2018-04-11 00:00:00'),(173,'3','Unsubmitted order by gsanna at 2018-04-11 21:53:59.138632+00:00','2','[{\"changed\": {\"fields\": [\"order_submitted\"]}}]',17,1,'2018-04-12 00:00:00'),(174,'3','Unsubmitted order by gsanna at 2018-04-11 21:53:59.138632+00:00','2','[{\"changed\": {\"name\": \"meals in order\", \"object\": \"MealsInOrder object (7)\", \"fields\": [\"food_item\", \"toppings\"]}}]',17,1,'2018-04-12 00:00:00'),(175,'40','Sub steak and cheese pizza (Large): $8.50','2','[{\"changed\": {\"fields\": [\"size\"]}}]',15,1,'2018-04-13 00:00:00'),(176,'4','Unsubmitted order by gsanna at 2018-04-14 01:23:32.735397+00:00','2','[{\"deleted\": {\"name\": \"meals in order\", \"object\": \"MealsInOrder object (None)\"}}, {\"deleted\": {\"name\": \"meals in order\", \"object\": \"MealsInOrder object (None)\"}}]',17,1,'2018-04-14 00:00:00'),(177,'53','Garden Salad salad (None): $6.25','1','[{\"added\": {}}]',15,1,'2018-04-14 00:00:00'),(178,'54','Greek Salad salad (None): $8.25','1','[{\"added\": {}}]',15,1,'2018-04-14 00:00:00'),(179,'55','Antipasto salad (None): $8.25','1','[{\"added\": {}}]',15,1,'2018-04-14 00:00:00'),(180,'56','Salad w/Tuna salad (None): $8.25','1','[{\"added\": {}}]',15,1,'2018-04-14 00:00:00'),(181,'43','Hamburger sub (Large): $6.95','2','[{\"changed\": {\"fields\": [\"size\"]}}]',15,1,'2018-04-14 00:00:00'),(182,'57','Garden Salad dinner platter (Small): $35.00','1','[{\"added\": {}}]',15,1,'2018-04-14 00:00:00'),(183,'58','Garden Salad dinner platter (Large): $60.00','1','[{\"added\": {}}]',15,1,'2018-04-14 00:00:00'),(184,'59','Greek Salad dinner platter (Small): $45.00','1','[{\"added\": {}}]',15,1,'2018-04-14 00:00:00'),(185,'60','Greek Salad dinner platter (Large): $70.00','1','[{\"added\": {}}]',15,1,'2018-04-14 00:00:00'),(186,'61','Antipasto dinner platter (Small): $45.00','1','[{\"added\": {}}]',15,1,'2018-04-14 00:00:00'),(187,'62','Antipasto dinner platter (Large): $70.00','1','[{\"added\": {}}]',15,1,'2018-04-14 00:00:00'),(188,'63','Baked Ziti dinner platter (Small): $35.00','1','[{\"added\": {}}]',15,1,'2018-04-14 00:00:00'),(189,'64','Baked Ziti dinner platter (Large): $60.00','1','[{\"added\": {}}]',15,1,'2018-04-14 00:00:00'),(190,'65','Meatball Parm dinner platter (Small): $45.00','1','[{\"added\": {}}]',15,1,'2018-04-14 00:00:00'),(191,'66','Meatball Parm dinner platter (Large): $70.00','1','[{\"added\": {}}]',15,1,'2018-04-14 00:00:00'),(192,'67','Chicken Parm dinner platter (Small): $45.00','1','[{\"added\": {}}]',15,1,'2018-04-14 00:00:00'),(193,'68','Chicken Parm dinner platter (Large): $80.00','1','[{\"added\": {}}]',15,1,'2018-04-14 00:00:00'),(194,'2','Submitted order by gsanna at 2018-04-11 00:03:02.831433+00:00','2','[{\"changed\": {\"fields\": [\"order_completed\"]}}]',17,1,'2018-04-14 00:00:00'),(195,'1','Mushrooms','1','[{\"added\": {}}]',19,1,'2018-04-14 00:00:00'),(196,'2','Green Peppers','1','[{\"added\": {}}]',19,1,'2018-04-14 00:00:00'),(197,'3','Onions','1','[{\"added\": {}}]',19,1,'2018-04-14 00:00:00'),(198,'1','Onions','1','[{\"added\": {}}]',19,1,'2018-04-14 00:00:00'),(199,'2','Mushrooms','1','[{\"added\": {}}]',19,1,'2018-04-14 00:00:00'),(200,'3','Green Peppers','1','[{\"added\": {}}]',19,1,'2018-04-14 00:00:00'),(201,'4','cs33a','1','[{\"added\": {}}]',4,1,'2018-04-14 00:00:00'),(202,'4','cs33a','2','[{\"changed\": {\"fields\": [\"is_staff\", \"is_superuser\"]}}]',4,1,'2018-04-15 00:00:00');
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_content_type` (
  `id` int(11) DEFAULT NULL,
  `app_label` varchar(100) DEFAULT NULL,
  `model` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(3,'auth','group'),(2,'auth','permission'),(4,'auth','user'),(5,'contenttypes','contenttype'),(17,'orders','customerorder'),(16,'orders','customerorders'),(8,'orders','dinnerplatter'),(15,'orders','entree'),(18,'orders','mealsinorder'),(9,'orders','pasta'),(14,'orders','pizza'),(7,'orders','pizzatopping'),(10,'orders','regularpizza'),(11,'orders','salad'),(12,'orders','sicilianpizza'),(19,'orders','steakcheesetopping'),(13,'orders','sub'),(6,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_migrations` (
  `id` int(11) DEFAULT NULL,
  `app` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `applied` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2018-04-03 00:00:00'),(2,'auth','0001_initial','2018-04-03 00:00:00'),(3,'admin','0001_initial','2018-04-03 00:00:00'),(4,'admin','0002_logentry_remove_auto_add','2018-04-03 00:00:00'),(5,'contenttypes','0002_remove_content_type_name','2018-04-03 00:00:00'),(6,'auth','0002_alter_permission_name_max_length','2018-04-03 00:00:00'),(7,'auth','0003_alter_user_email_max_length','2018-04-03 00:00:00'),(8,'auth','0004_alter_user_username_opts','2018-04-03 00:00:00'),(9,'auth','0005_alter_user_last_login_null','2018-04-03 00:00:00'),(10,'auth','0006_require_contenttypes_0002','2018-04-03 00:00:00'),(11,'auth','0007_alter_validators_add_error_messages','2018-04-03 00:00:00'),(12,'auth','0008_alter_user_username_max_length','2018-04-03 00:00:00'),(13,'auth','0009_alter_user_last_name_max_length','2018-04-03 00:00:00'),(14,'sessions','0001_initial','2018-04-03 00:00:00'),(15,'orders','0001_initial','2018-04-03 00:00:00'),(16,'orders','0002_auto_20180403_2214','2018-04-03 00:00:00'),(17,'orders','0003_dinnerplatter_pasta_regularpizza_salad_sicilianpizza_sub','2018-04-03 00:00:00'),(18,'orders','0004_auto_20180403_2240','2018-04-03 00:00:00'),(19,'orders','0005_auto_20180406_2354','2018-04-07 00:00:00'),(20,'orders','0006_remove_pizza_name','2018-04-07 00:00:00'),(21,'orders','0007_auto_20180407_0000','2018-04-07 00:00:00'),(22,'orders','0008_auto_20180409_2343','2018-04-09 00:00:00'),(23,'orders','0009_auto_20180410_0013','2018-04-10 00:00:00'),(24,'orders','0010_auto_20180410_0014','2018-04-10 00:00:00'),(25,'orders','0011_customerorders','2018-04-10 00:00:00'),(26,'orders','0012_auto_20180410_2311','2018-04-10 00:00:00'),(27,'orders','0013_customerorder_food_items','2018-04-10 00:00:00'),(28,'orders','0014_auto_20180410_2338','2018-04-10 00:00:00'),(29,'orders','0015_remove_customerorder_food_items','2018-04-10 00:00:00'),(30,'orders','0016_mealsinorder_toppings','2018-04-10 00:00:00'),(31,'orders','0017_customerorder_order_completed','2018-04-14 00:00:00'),(32,'orders','0018_customerorder_submitted_at','2018-04-14 00:00:00'),(33,'orders','0019_steakcheesetopping','2018-04-14 00:00:00'),(34,'orders','0020_steakcheesetopping_price','2018-04-14 00:00:00'),(35,'orders','0021_auto_20180414_2124','2018-04-14 00:00:00'),(36,'orders','0022_auto_20180414_2133','2018-04-14 00:00:00'),(37,'orders','0023_steakcheesetopping','2018-04-14 00:00:00'),(38,'orders','0024_mealsinorder_subtoppings','2018-04-14 00:00:00');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) DEFAULT NULL,
  `session_data` text,
  `expire_date` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('sviwgbhc6dwvby18e09s3cy87nkdz05y','MGI2ZGFjMTcwOGMyYzRiODdiNmYyZGNlYWZiZjMwYTgwODhiZTgzMTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI4OTgwYTUyYTFkNDlhZTRiMDQzOWE5MzVmMGQwYjA1OGYzYjYzYTFjIn0=','2018-04-29 00:00:00');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_customerorder`
--

DROP TABLE IF EXISTS `orders_customerorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_customerorder` (
  `id` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `order_submitted` text,
  `user_id` int(11) DEFAULT NULL,
  `order_completed` text,
  `submitted_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_customerorder`
--

LOCK TABLES `orders_customerorder` WRITE;
/*!40000 ALTER TABLE `orders_customerorder` DISABLE KEYS */;
INSERT INTO `orders_customerorder` VALUES (1,'2018-04-10 00:00:00','2018-04-14 00:00:00','1',3,'1','2018-04-14 00:00:00'),(2,'2018-04-11 00:00:00','2018-04-14 00:00:00','1',1,'1','2018-04-14 00:00:00'),(3,'2018-04-11 00:00:00','2018-04-14 00:00:00','1',1,'1','2018-04-14 00:00:00'),(4,'2018-04-14 00:00:00','2018-04-14 00:00:00','1',1,'1','2018-04-14 00:00:00'),(5,'2018-04-14 00:00:00','2018-04-14 00:00:00','1',1,'1','2018-04-14 00:00:00'),(6,'2018-04-14 00:00:00','2018-04-14 00:00:00','1',1,'1','2018-04-14 00:00:00'),(7,'2018-04-14 00:00:00','2018-04-16 00:00:00','1',1,'0','2018-04-14 00:00:00'),(8,'2018-04-14 00:00:00','2018-04-14 00:00:00','0',1,'0','2018-04-14 00:00:00'),(9,'2018-04-14 00:00:00','2018-04-16 00:00:00','1',2,'0','2018-04-15 00:00:00');
/*!40000 ALTER TABLE `orders_customerorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_entree`
--

DROP TABLE IF EXISTS `orders_entree`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_entree` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL,
  `size` varchar(5) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `entree_type` varchar(14) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_entree`
--

LOCK TABLES `orders_entree` WRITE;
/*!40000 ALTER TABLE `orders_entree` DISABLE KEYS */;
INSERT INTO `orders_entree` VALUES (1,'Cheese','Small',12,'Regular Pizza'),(2,'Cheese','Large',16,'Regular Pizza'),(3,'1 topping','Small',13,'Regular Pizza'),(4,'1 topping','Large',18,'Regular Pizza'),(5,'2 toppings','Small',14,'Regular Pizza'),(6,'2 toppings','Large',20,'Regular Pizza'),(7,'3 toppings','Small',15,'Regular Pizza'),(8,'3 toppings','Large',22,'Regular Pizza'),(9,'Special','Small',17,'Regular Pizza'),(10,'Special','Large',24,'Regular Pizza'),(11,'Cheese','Small',22,'Sicilian Pizza'),(12,'Cheese','Large',36,'Sicilian Pizza'),(13,'1 topping','Small',24,'Sicilian Pizza'),(14,'1 topping','Large',38,'Sicilian Pizza'),(15,'2 toppings','Small',26,'Sicilian Pizza'),(16,'2 toppings','Large',40,'Sicilian Pizza'),(17,'3 toppings','Small',27,'Sicilian Pizza'),(18,'3 toppings','Large',42,'Sicilian Pizza'),(19,'Special','Small',28,'Sicilian Pizza'),(20,'Special','Large',43,'Sicilian Pizza'),(21,'Cheese','Small',7,'Sub'),(22,'Cheese','Large',8,'Sub'),(23,'Italian','Small',7,'Sub'),(24,'Italian','Large',8,'Sub'),(25,'Ham and Cheese','Small',7,'Sub'),(26,'Ham and Cheese','Large',8,'Sub'),(27,'Meatball','Small',7,'Sub'),(28,'Meatball','Large',8,'Sub'),(29,'Tuna','Small',7,'Sub'),(30,'Tuna','Large',8,'Sub'),(31,'Turkey','Small',8,'Sub'),(32,'Turkey','Large',9,'Sub'),(33,'Chicken Parmigiana','Small',8,'Sub'),(34,'Chicken Parmigiana','Large',9,'Sub'),(35,'Eggplant Parmigiana','Small',7,'Sub'),(36,'Eggplant Parmigiana','Large',8,'Sub'),(37,'Steak','Small',7,'Sub'),(38,'Steak','Large',8,'Sub'),(39,'Steak and Cheese','Small',7,'Sub'),(40,'Steak and Cheese','Large',9,'Sub'),(41,'Sausage, Peppers, and Onions','Large',9,'Sub'),(42,'Hamburger','Small',5,'Sub'),(43,'Hamburger','Large',7,'Sub'),(44,'Cheeseburger','Small',5,'Sub'),(45,'Cheeseburger','Large',7,'Sub'),(46,'Fried Chicken','Small',7,'Sub'),(47,'Fried Chicken','Large',9,'Sub'),(48,'Veggie','Small',7,'Sub'),(49,'Veggie','Large',9,'Sub'),(50,'Baked Ziti w/Mozzarella','None',7,'Pasta'),(51,'Baked Ziti w/Meatballs','None',9,'Pasta'),(52,'Baked Ziti w/Chicken','None',10,'Pasta'),(53,'Garden Salad','None',6,'Salad'),(54,'Greek Salad','None',8,'Salad'),(55,'Antipasto','None',8,'Salad'),(56,'Salad w/Tuna','None',8,'Salad'),(57,'Garden Salad','Small',35,'Dinner Platter'),(58,'Garden Salad','Large',60,'Dinner Platter'),(59,'Greek Salad','Small',45,'Dinner Platter'),(60,'Greek Salad','Large',70,'Dinner Platter'),(61,'Antipasto','Small',45,'Dinner Platter'),(62,'Antipasto','Large',70,'Dinner Platter'),(63,'Baked Ziti','Small',35,'Dinner Platter'),(64,'Baked Ziti','Large',60,'Dinner Platter'),(65,'Meatball Parm','Small',45,'Dinner Platter'),(66,'Meatball Parm','Large',70,'Dinner Platter'),(67,'Chicken Parm','Small',45,'Dinner Platter'),(68,'Chicken Parm','Large',80,'Dinner Platter');
/*!40000 ALTER TABLE `orders_entree` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_mealsinorder`
--

DROP TABLE IF EXISTS `orders_mealsinorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_mealsinorder` (
  `id` int(11) DEFAULT NULL,
  `food_item_id` int(11) DEFAULT NULL,
  `order_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_mealsinorder`
--

LOCK TABLES `orders_mealsinorder` WRITE;
/*!40000 ALTER TABLE `orders_mealsinorder` DISABLE KEYS */;
INSERT INTO `orders_mealsinorder` VALUES (1,2,1),(2,2,1),(3,2,1),(4,21,2),(5,3,2),(7,8,3),(8,44,3),(11,6,4),(13,20,4),(14,49,4),(16,54,4),(17,55,4),(18,63,4),(19,20,5),(20,24,5),(21,63,5),(22,55,5),(23,54,6),(25,4,6),(28,4,6),(29,4,6),(30,4,6),(31,51,6),(32,30,6),(34,22,6),(35,53,6),(37,54,6),(38,53,6),(41,4,6),(43,4,6),(44,2,7),(45,6,7),(47,38,7),(49,41,7),(51,40,7),(52,40,7),(55,8,9),(56,60,9),(57,37,9),(58,12,8),(59,16,8),(60,29,8),(61,40,8);
/*!40000 ALTER TABLE `orders_mealsinorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_mealsinorder_subToppings`
--

DROP TABLE IF EXISTS `orders_mealsinorder_subToppings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_mealsinorder_subToppings` (
  `id` int(11) DEFAULT NULL,
  `mealsinorder_id` int(11) DEFAULT NULL,
  `steakcheesetopping_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_mealsinorder_subToppings`
--

LOCK TABLES `orders_mealsinorder_subToppings` WRITE;
/*!40000 ALTER TABLE `orders_mealsinorder_subToppings` DISABLE KEYS */;
INSERT INTO `orders_mealsinorder_subToppings` VALUES (1,51,1),(2,52,1),(3,52,2),(4,52,3),(7,61,1),(8,61,3);
/*!40000 ALTER TABLE `orders_mealsinorder_subToppings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_mealsinorder_toppings`
--

DROP TABLE IF EXISTS `orders_mealsinorder_toppings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_mealsinorder_toppings` (
  `id` int(11) DEFAULT NULL,
  `mealsinorder_id` int(11) DEFAULT NULL,
  `pizzatopping_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_mealsinorder_toppings`
--

LOCK TABLES `orders_mealsinorder_toppings` WRITE;
/*!40000 ALTER TABLE `orders_mealsinorder_toppings` DISABLE KEYS */;
INSERT INTO `orders_mealsinorder_toppings` VALUES (1,5,2),(4,7,4),(5,7,6),(6,7,7),(8,11,10),(9,11,12),(10,13,6),(11,13,7),(12,13,9),(13,13,12),(14,13,14),(15,19,3),(16,19,4),(17,19,10),(18,19,12),(19,19,19),(20,25,18),(24,28,9),(25,29,10),(26,30,10),(27,41,12),(30,43,9),(31,45,9),(32,45,10),(37,55,8),(38,55,16),(39,55,18),(40,59,9),(41,59,18);
/*!40000 ALTER TABLE `orders_mealsinorder_toppings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_pizzatopping`
--

DROP TABLE IF EXISTS `orders_pizzatopping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_pizzatopping` (
  `id` int(11) DEFAULT NULL,
  `name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_pizzatopping`
--

LOCK TABLES `orders_pizzatopping` WRITE;
/*!40000 ALTER TABLE `orders_pizzatopping` DISABLE KEYS */;
INSERT INTO `orders_pizzatopping` VALUES (1,'Pepperoni'),(2,'Sausage'),(3,'Mushrooms'),(4,'Onions'),(5,'Ham'),(6,'Canadian Bacon'),(7,'Pineapple'),(8,'Eggplant'),(9,'Tomato & Basil'),(10,'Green Peppers'),(11,'Hamburger'),(12,'Spinach'),(13,'Artichoke'),(14,'Buffalo Chicken'),(15,'Barbecue Chicken'),(16,'Anchovies'),(17,'Black Olives'),(18,'Fresh Garlic'),(19,'Zucchini');
/*!40000 ALTER TABLE `orders_pizzatopping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders_steakcheesetopping`
--

DROP TABLE IF EXISTS `orders_steakcheesetopping`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders_steakcheesetopping` (
  `id` int(11) DEFAULT NULL,
  `price` decimal(10,0) DEFAULT NULL,
  `pizzaTopping_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders_steakcheesetopping`
--

LOCK TABLES `orders_steakcheesetopping` WRITE;
/*!40000 ALTER TABLE `orders_steakcheesetopping` DISABLE KEYS */;
INSERT INTO `orders_steakcheesetopping` VALUES (1,1,4),(2,1,3),(3,1,10);
/*!40000 ALTER TABLE `orders_steakcheesetopping` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sqlite_sequence`
--

DROP TABLE IF EXISTS `sqlite_sequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sqlite_sequence` (
  `name` blob,
  `seq` blob
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sqlite_sequence`
--

LOCK TABLES `sqlite_sequence` WRITE;
/*!40000 ALTER TABLE `sqlite_sequence` DISABLE KEYS */;
INSERT INTO `sqlite_sequence` VALUES ('django_migrations','38'),('django_admin_log','202'),('django_content_type','19'),('auth_permission','60'),('auth_user','4'),('orders_pizzatopping','19'),('orders_entree','68'),('orders_mealsinorder','61'),('orders_mealsinorder_toppings','41'),('orders_customerorder','9'),('orders_steakcheesetopping','3'),('orders_mealsinorder_subToppings','8');
/*!40000 ALTER TABLE `sqlite_sequence` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-08 22:53:55
