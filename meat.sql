-- MySQL dump 10.16  Distrib 10.3.0-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: meat
-- ------------------------------------------------------
-- Server version	10.3.0-MariaDB-0+exp2

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
-- Table structure for table `art`
--

DROP TABLE IF EXISTS `art`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `art` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `article` text DEFAULT NULL,
  `reg_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `art`
--

LOCK TABLES `art` WRITE;
/*!40000 ALTER TABLE `art` DISABLE KEYS */;
INSERT INTO `art` VALUES (2,'Зеленый борщ на курином филе','<p>В наши времена, это время не только майский борщик, а благодаря морозильнику и консервациям его можно приготовить и зимой.</p>\r\n \r\n<p>Для приготовления нам понадобится, 1 пучок щавля, или в зимнее время пол поллитровой банки консервированного щавля, около 600+ грамм куриного филе, 7-8 картошек, пару луковиц, морковка, 4 яйца, и специи по вкусу для курицы. Я использовал смесь из орегано, базилика, розмарина, чабра, петрушки и частнока.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/images/products.jpg\" alt=\"\" width=\"512\" height=\"384\" /></p>\r\n<p>&nbsp;</p>\r\n<p>Для начала режем мясо. и лук, жарим лук, и вбрасываем туда мясо</p>\r\n<p align=\"center\"><img class=\"normal-image\" src=\"/images/meat1.jpg\" alt=\"\" width=\"200\" />&nbsp;<img class=\"normal-image\" src=\"/images/onion2.jpg\" alt=\"\" width=\"200\" />&nbsp;<img class=\"normal-image\" src=\"/images/meat2.JPG\" alt=\"\" width=\"200\" /></p>\r\n<p>&nbsp;</p>\r\n<p><img class=\"right-image\" src=\"/images/meat3.jpg\" alt=\"\" height=\"150\" />Обжариваем мясо как до состояния на последней фотографии, просто чтобы кусочки в супе не плавали бесформенными комками, а были целостными, затем заливаем водо воды не жалеем, доводим до кипения, солим по вкусу, и добавляем приправвы. Надеюсь все поняли, что это просто глубокая сковородка, хотя это можно делать и в кастрюле с толстым дном. :)))))))))</p>\r\n<p>Теперь у нас есть минут минут +- 40 на овощи. Чистим картошку, морковку, моем щавель, отрезаем у него стебель (если это коненчно не консервация), и шинкуем на мелкие куски (опять&nbsp;же таки, если не конесрвация).</p>\r\n<p style=\"text-align: center;\"><img class=\"normal-image\" src=\"/images/meat3.jpg\" alt=\"\" width=\"200\" height=\"150\" />&nbsp;<img class=\"normal-image\" src=\"/images/carrot.jpeg\" alt=\"\" width=\"200\" height=\"150\" />&nbsp;<img class=\"normal-image\" src=\"/images/shavel.jpg\" alt=\"\" width=\"200\" height=\"150\" /></p>\r\n<p>Ждем пока мясо не станет мягким, подливаем воду, если выкипает, когда мясо становится мягким, перемесчаем в кастрюлю, кидаем картошку и морковку (не щавел!!!!!!!!!) Заливаем воды как на суп, досаливаем по вкусу, и ждем пока овощи сварятся. Когда овощи сварятся бросаем щавель.</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/images/all2.jpg\" alt=\"\" width=\"512\" height=\"384\" /></p>\r\n<p style=\"margin-bottom: 0in; line-height: 100%;\">Щавель должен дойти до кипения и проварится буквально пару минут.</p>\r\n<p>Не забываем про яйца. Их можно забросить и после в всего, все равно желательно борщу настроятся, но можно и в процессе.</p>\r\n<p style=\"text-align: center;\"><img class=\"normal-image\" src=\"/images/egds1.jpg\" alt=\"\" width=\"200\" height=\"150\" />&nbsp;<img class=\"normal-image\" src=\"/images/egg2.JPG\" alt=\"\" width=\"200\" height=\"150\" />&nbsp;<img class=\"normal-image\" src=\"/images/eggs3.jpg\" alt=\"\" width=\"200\" height=\"150\" /></p>\r\n<p>Вбрасываем&nbsp; пошинкованные яйца - борщ готов. Можно приступать к еде -</p>\r\n<p><img style=\"display: block; margin-left: auto; margin-right: auto;\" src=\"/images/ready2.JPG\" alt=\"\" width=\"512\" height=\"384\" /></p>\r\n<p class=\"normal-image\">&nbsp;Подавать со сметаной. Приятного аппетита!!!! :)))))))))</p>\r\n<p>&nbsp;</p>','2018-07-29 07:43:00');
/*!40000 ALTER TABLE `art` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-07-29 13:40:17
