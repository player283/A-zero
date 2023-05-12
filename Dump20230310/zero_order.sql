-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: zero
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `order_id` varchar(255) NOT NULL,
  `order_addr1` varchar(255) NOT NULL,
  `order_addr2` varchar(255) NOT NULL,
  `order_addr3` varchar(255) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `order_name` varchar(255) NOT NULL,
  `order_phone` varchar(255) NOT NULL,
  `order_title` varchar(255) DEFAULT NULL,
  `payment` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT '배송준비중',
  `total_amount` bigint NOT NULL,
  `tracking` varchar(255) DEFAULT NULL,
  `member_id` varchar(255) NOT NULL,
  PRIMARY KEY (`order_id`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `od_member_id_fk` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES ('20221124_045739','12345','asdasdwqd','adasdwqewqd','2022-11-24 00:39:16','asdasdasdasd','01012354654','우엉차 80g ,유기농 작두콩차 80g ,싱글오리진 다크초콜릿(람동74%) 24g,공정무역 보리 커피 120g','33000','배송완료',33000,NULL,'aaaaa'),('20221124_051712','48557','부산 남구 무민사로 5 (감만동)','1','2022-11-24 00:36:39','이영희','01012345678','천연물방울수세미(3개입) ,주방비누 3개,나무 집게','25000','배송준비중',25000,NULL,'cccc'),('20221124_116236','45008','울산 울주군 온산읍 삼평길 16','1100','2022-11-24 05:34:59','테스트','00000000000','식물성 멀티비타민 앤 미네랄,비건 마시멜로우 메이플향(미니),홍삼정 6년근 비건 홍삼 스틱 30포','71000','배송준비중',71000,NULL,'Abcde'),('20221124_367044','48557','부산 남구 무민사로 5 (감만동)','1','2022-11-24 05:33:35','이영희','01012345678','보들 세척솔,튜브짜개,공정무역 보리 커피 120G,천연물방울수세미(3개입) - 수정 테스트','30000','배송완료',30000,NULL,'cccc'),('20221124_392781','48557','부산 남구 무민사로 5 (감만동)','1','2022-11-24 07:50:55','qweqwe','010-111-1111','유기농 작두콩차 80g ','12000','배송준비중',12000,NULL,'min2443'),('20221124_505855','48557','부산 남구 무민사로 5 (감만동)','1','2022-11-24 00:37:34','이영희','01012345678','나무 집게,실리콘 지퍼백,천연물방울수세미(3개입) ,주방비누 3개,카드 지갑 ','48000','배송완료',48000,NULL,'cccc'),('20221124_507953','12345','asdasdwqd','adasdwqewqd','2022-11-24 00:39:55','asdasdasdasd','01012354654','순한 김부각 50g ,노오일 그래놀라 200g,과탄산소다 세탁비누,유기농빨대파우치 ,대나무롤키친타올 130매(6롤) x 4개','48900','배송준비중',48900,NULL,'aaaaa');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-10  0:07:09
