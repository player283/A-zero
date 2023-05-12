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
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `member_addr1` varchar(255) DEFAULT NULL,
  `member_addr2` varchar(255) DEFAULT NULL,
  `member_addr3` varchar(255) DEFAULT NULL,
  `member_id` varchar(255) NOT NULL,
  `member_name` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `regdate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `role` varchar(255) DEFAULT NULL,
  `member_phone` varchar(255) DEFAULT NULL,
  `enabled` tinyint DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_mbmcqelty0fbrvxp1q58dn57t` (`email`),
  UNIQUE KEY `member_id_UNIQUE` (`member_id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (1,'aaa@bbb.com','40000','부산시 남구 대연동','ㅇㅇ빌라 103호','asdqwe','a','$2a$10$omb1weoFG3l0pMmrQF/DFuJTWJHBqjomLSZCJ0aZQrzQ9ncoyMnc.','2022-04-04 00:41:59','ROLE_MEMBER','01012345678',0),(2,'admin@bbb.com','40000','부산시 중구 중앙동','ㅇㅇ빌라 103호','admin','admin','$2a$10$KC3rLxraZ2YSKZMhv0KWWuHqUBVS7Oe8cugZWNITsGJXmxwhmTQCO','2022-04-04 01:17:39','ROLE_ADMIN','01012345678',1),(4,'asddasd','asdasd','asd','asd','asdasd','sddsads','$2a$10$jauivmPOFGv2mvukB3eD6eijr8EAoWywvl3kQYt9.ACas8Z8.68ae','2022-04-05 07:14:00','ROLE_MEMBER','sdfasd',1),(5,'aa@bb.com','','','','aaaaa','홍길동','$2a$10$thdQe9DT1LpK1KmEYPA5.uZaSvZ1geuUUNn3E1YbgMh7UJ07Xoj5S','2022-04-05 08:14:10','ROLE_MEMBER','',1),(8,'bbbb@naver.com','07404','서울 영등포구 가마산로 394 (신길동)','102호','bbbb','시연용','$2a$10$fenhFP1/.sxzylSnTY1Yt.cXvtvuQFne2kEI65sKPG6iDGk1YO0je','2022-04-08 02:27:59','ROLE_MEMBER','01045451212',1),(9,'ccc@gmail.com','48557','부산 남구 무민사로 5 (감만동)','1','cccc','이영희','$2a$10$vAMKVWpcR7RE33724BHZX.WD/CX2gO.3aJX0I5cFI94cqh3KXO9oG','2022-04-17 07:18:19','ROLE_MEMBER','01012345678',1),(10,'kcs@gmail.com','04766','서울 성동구 서울숲길 17 (성수동1가, 성수파크빌)','1층','customer1','김철수','$2a$10$V0CqwNiV9WfQtoPrIUHlAublm/gXtwz1FUmsEK5PzrzvPFfh3rql2','2022-04-17 09:10:50','ROLE_MEMBER','01012345678',1),(11,'you@busanIT.com','47291','부산 부산진구 중앙대로 708 (부전동)','404호','you','you','$2a$10$gBv49PiUkFUxph/JJK7U/uSgVq96MWEOPnxiRNkhnlVoB8MuFJrNG','2022-11-18 10:05:06','ROLE_MEMBER','010-1234-5678',0),(12,'admin1@busanIT.com','47291','부산 부산진구 중앙대로 708 (부전동)','404호','admin1','admin1','$2a$10$gBv49PiUkFUxph/JJK7U/uSgVq96MWEOPnxiRNkhnlVoB8MuFJrNG','2022-11-18 10:05:06','ROLE_ADMIN','010-1234-5678',1),(13,'test@busanIT.com','47245','부산 부산진구 중앙대로 지하 730 (부전동)','403호','test','test','$2a$10$tpDYUUPkwTOPNziDJKU8UeMORZHKy6mFZ55cS6a/YHUpmdQd4s4vW','2022-11-21 05:53:22','ROLE_MEMBER','010-1234-5678',1),(14,'min2443@naver.com','48557','부산 남구 무민사로 5 (감만동)','1','min2443','qweqwe','$2a$10$XqrFx/YJG.49eRkjPAIxw.u5ep5saKLRjguSrWM9VEwNTBjNx70Ki','2022-11-22 02:40:35','ROLE_ADMIN','010-111-1111',1),(15,'busan@email.net','45008','울산 울주군 온산읍 삼평길 16','1100','Abcde','테스트','$2a$10$R0/xDBh3lyZ41iUzvRj5Wuj89i9wJzg80zdvyAUvidqZQ6nq6ILfG','2022-11-24 01:06:35','ROLE_MEMBER','00000000000',1);
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
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
