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
-- Table structure for table `qnaboard`
--

DROP TABLE IF EXISTS `qnaboard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `qnaboard` (
  `board_id` bigint NOT NULL AUTO_INCREMENT,
  `content` varchar(255) DEFAULT NULL,
  `regdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(255) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `member_id` varchar(255) DEFAULT NULL,
  `board_re_ref` bigint DEFAULT NULL,
  `board_re_lev` bigint DEFAULT NULL,
  `board_re_seq` bigint DEFAULT NULL,
  `password` varchar(2) DEFAULT NULL,
  PRIMARY KEY (`board_id`),
  KEY `member_id` (`member_id`),
  CONSTRAINT `qb_member_id_fk` FOREIGN KEY (`member_id`) REFERENCES `member` (`member_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=95 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `qnaboard`
--

LOCK TABLES `qnaboard` WRITE;
/*!40000 ALTER TABLE `qnaboard` DISABLE KEYS */;
INSERT INTO `qnaboard` VALUES (77,'비밀글 테스트','2022-11-21 04:43:46',NULL,'비밀글 테스트','you',24,0,0,'on'),(78,'질문','2022-11-21 05:09:57',NULL,'질문','you',25,0,0,'on'),(79,'비밀글','2022-11-21 05:22:02',NULL,'비밀글','you',26,0,0,'on'),(80,'비밀글','2022-11-21 06:00:58',NULL,'비밀글','test',27,0,0,'on'),(81,'비밀글 테스트','2022-11-21 06:09:22',NULL,'비밀글 테스트','test',28,0,0,'on'),(82,'테스트 입니다. ','2022-11-23 13:43:40',NULL,'비밀글','cccc',29,0,0,'on'),(83,'오늘 주문했습니다. 언제 도착 예정인가요?','2022-11-24 00:53:16',NULL,'배송은 보통 얼마나 걸리나요?','aaaaa',30,0,0,NULL),(84,'해외배송 가능여부 문의드립니다.','2022-11-24 00:53:41',NULL,'해외배송 가능한가요?','aaaaa',31,0,0,'on'),(85,'물건이 깨져서 도착했습니다. 환불 혹은 교환 문의드립니다.','2022-11-24 00:54:38',NULL,'물건이 깨져서 도착 했습니다.','cccc',32,0,0,NULL),(86,'대량 구입하고 싶은데 어떻게 문의 드릴수 있을까요?','2022-11-24 05:34:10',NULL,'제품 문의 드립니다. ','cccc',33,0,0,NULL),(87,'친환경 세제 입고는 언제 되는지 궁금합니다. ','2022-11-24 05:35:39',NULL,'입고 시기 확인 요청 드립니다.','Abcde',34,0,0,'on'),(88,'테스트','2022-11-24 06:39:05',NULL,'배송료 질문입니다.','cccc',35,0,0,'on'),(89,'답변 드립니다. ','2022-11-24 07:12:12',NULL,'└[답변] 문의 주신 내용의 답변입니다.','admin',34,1,2,'on'),(90,'관련하여 연락주시면 처리 해 드리도록 하겠습니다. ','2022-11-24 07:12:39',NULL,'└[답변] 문의 주신 내용의 답변입니다.','admin',32,1,2,''),(91,'배송료는 일정 금액 정해져 있습니다. ','2022-11-24 07:12:55',NULL,'└[답변] 문의 주신 내용의 답변입니다.','admin',35,1,2,'on'),(92,'답변입니다. ','2022-11-24 07:13:07',NULL,'└[답변] 문의 주신 내용의 답변입니다.','admin',26,1,2,'on'),(93,'테스트 내용의 답변 입니다.','2022-11-24 07:13:30',NULL,'└[답변] 문의 주신 내용의 답변입니다.','admin',28,1,2,'on'),(94,'본사로 연락 부탁드립니다. ','2022-11-24 07:13:51',NULL,'└[답변] 문의 주신 내용의 답변입니다.','admin',33,1,2,'');
/*!40000 ALTER TABLE `qnaboard` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-10  0:07:08
