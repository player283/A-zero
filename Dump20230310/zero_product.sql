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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `product_id` int NOT NULL AUTO_INCREMENT,
  `product_des` varchar(255) NOT NULL,
  `product_img` varchar(255) DEFAULT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` varchar(255) NOT NULL,
  `category_code` varchar(255) DEFAULT NULL,
  `product_taste` varchar(255) NOT NULL,
  `product_origin` varchar(100) NOT NULL,
  `categorycode_ref` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`product_id`),
  KEY `pd_category_code_fk` (`category_code`),
  KEY `pd_categorycode_ref_fk_idx` (`categorycode_ref`),
  CONSTRAINT `pd_category_code_fk` FOREIGN KEY (`category_code`) REFERENCES `category` (`category_code`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `pd_categorycode_ref_fk` FOREIGN KEY (`categorycode_ref`) REFERENCES `category` (`categorycode_ref`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (75,'순식물성 원료로 만들어진 비건 그래놀라입니다.\r\n','5f2e2791-52c1-4484-8ce6-0343ffa7b78f_노오일그래놀라.PNG','노오일 그래놀라 200g','9000','102','식품비건','그레놀라, 식물성, 시리얼','100'),(76,'국내산 유기농 느타리버섯으로 만들어진 바삭한 느타리버섯 스낵입니다.\r\n','44891a1d-009a-46d3-a660-45d39645d763_느타리버섯 스낵.PNG','느타리버섯 스낵','3000','101','식품일반','야채, 과자, 스넥','100'),(77,'비건 스낵으로 바삭한 비건 라이프를 즐겨보세요!\r\n','1a67015c-0717-4c0b-b9cd-717a1efc79a0_랜틸칩.PNG','렌틸칩','3000','102','식품비건','랜틸콩, 스넥, 과자','100'),(78,'토종 곡물 본연의 맛을 그대로 간편하게 즐길 수 있는 그레인 파우더\r\n','1b892657-8eda-4cd0-b1c5-8ecd804fcc4f_로스티드 그레인 파우더.PNG','로스티드 그레인 파우더 ','11000','101','식품일반','그래인, 가루, 간편식','100'),(79,'고추씨와 청양고추로 붉은 색을 띄는 매콤하고 짭짤한 한국 비건 인증을 받은 김부각입니다.\r\n','67f8c051-3e21-4cbf-afaa-7fc201201ddf_매콤간장 김부각.PNG','매콤간장 김부각 50g','3900','102','식품비건','매운맛, 김튀각, 간식','100'),(80,'아이들이 먹기 좋을만큼 고소하고 담백한 맛이 매력적인 한국 비건 인증을 받은 김부각 입니다.\r\n','b4dbb46a-de83-4b39-a3ab-34a94176d01f_순한 김부각.PNG','순한 김부각 50g ','3900','102','식품비건','김튀각, 간식, 담백','100'),(81,'\"화학처리나 첨가물 없이 만들어진 공정무역 초콜릿입니다.\r\n커피와 달콤한 초콜릿의 조화! 한 번 먹으면 멈출 수 없어요~\"\r\n','18c38bf1-b558-4861-87d1-ff58fe2d7d2c_싱글오리진 다크초콜릿.PNG','싱글오리진 다크초콜릿(람동74%) 24g','4000','101','식품일반','초코렛, 초콜렛','100'),(82,'플라스틱 티백없이 순수한 우엉만을 담았습니다. \r\n','f50c3279-b1bc-456c-9034-ca10f936e27e_우엉차.PNG','우엉차 80g ','12000','101','식품일반','건강차, 티, 다이어트','100'),(83,'플라스틱 티백 없이 열매만 담았습니다. :)\r\n','000d7878-3439-4e11-b422-c73518ada120_유기농 작두콩차.PNG','유기농 작두콩차 80g ','10000','101','식품일반','건강차, 티','100'),(84,'순식물성 원재료로 맛과 영양 가득한 비건 크래커입니다\r\n','55960035-9dd1-4113-b52c-5a930b23ba09_얼그레이 크래커.PNG','크래커 (얼그레이) ','2500','101','식품일반','과자, 크레커, 비스켓','100'),(85,'코코넛, 캐슈넛, 바날라의 부드러운 블랜딩, 플로우 티\r\n','4f5c67e3-d822-4767-ac81-4aa88f0fff7a_포레스트티 플로우 티백.PNG','포레스트티 플로우 티백 (8개입) ','7500','101','식품일반','차, 블렌딩','100'),(86,'상큼한 레몬향을 품은 배말랭이 입니다.\r\n','4080471d-f0b7-467d-8216-de0fbb005172_하루말랭이.PNG','하루말랭이','3000','101','식품일반','간식, 건식','100'),(87,'이탈리아 비건 인증을 받은 캡슐까지 순식물성 오메가3 영양제입니다.\r\n','12c8a170-c9f4-446a-bed6-df4a24a76010_식물성 알티지 오메가3.PNG','식물성 알티지 오메가3','34000','102','식품비건','비타민, vitamin, 비건','100'),(88,'이탈리아 비건 인증을 받은 순식물성 비타민D3 영양제입니다.\r\n','d295cd39-e11c-4384-b695-804164f2c4c3_비건타민 식물성 비타민 D3.PNG','식물성 비타민D3 2000IU','23000','102','식품비건','vitamin,  비건','100'),(89,'이탈리아 비건 인증을 받은 순식물성 멀티비타민&미네랄 영양제입니다.\r\n','89c37c3e-d0c7-4c91-90c0-60a4e9463aec_식물성 멀티비타민 앤 미네랄.PNG','식물성 멀티비타민 앤 미네랄','39000','102','식품비건','vitamin,  비건','100'),(90,'면역력을 위한 홍삼스틱, 이제 비건 인증 제품으로 함께해요!\r\n','e2ccd0e8-00ff-4f65-97c2-2515f8d300d0_홍삼정 비건 홍삼 스틱 30포.PNG','홍삼정 6년근 비건 홍삼 스틱 30포','27000','102','식품비건','건강식품, 액기스, 증진','100'),(91,'모든 세탁물에 유용한 세탁비누\r\n','d7b6e1d8-2b8a-4fd3-a285-f2f3aedba059_과탄산소다 세탁비누.PNG','과탄산소다 세탁비누','8000','201','리빙생활','빨래, 고체비누, 표백','200'),(92,'대나무 펄프로 만들어져 먼지가 적은 넉넉한 구성의 키친타올입니다.\r\n','9524d01f-0e4d-4228-a13b-c434264ab3e8_대나무롤 키친타올.PNG','대나무롤키친타올 130매(6롤) x 4개','27000','202','리빙주방','주방타올, 휴지','200'),(93,'둥근 그립감으로 사용감이 좋은 대나무 칫솔입니다.\r\n','fd89dd70-d38f-4841-b5e3-c85fb4e3c88e_대나무칫솔.PNG','대나무칫솔 (10개입)','24000','201','리빙생활','양치, 치솔, 세면도구 ','200'),(94,'넓은 바닥면으로 물건 수납이 용이한 미니 캔버스 백입니다.\r\n','e542a90e-1ec4-44da-9e2d-29aec8fc59ce_미니 에코백.PNG','미니 에코백 ','8000','201','리빙생활','가방, 장바구니','200'),(95,'비닐봉투를 대체해 사용할 수 있는 유기농 면으로 만들어진 그물 주머니입니다.\r\n','e90e4103-0a0d-4626-b94b-08dde4af5ae0_유기농 그물주머니.PNG','유기농그물주머니 ','3000','201','리빙생활','면, 장바구니, 망','200'),(96,'유기농 그물장바구니에요.\r\n','a468ecb3-cf3e-427b-950e-9da59efe8c94_유기농 배색 그물장바구니.PNG','유기농배색그물장바구니','7000','201','리빙생활','망, 가방, 휴대용','200'),(97,'유기농 면으로 만들어진 다목적 파우치입니다. \r\n','d4652165-be9c-445f-94b3-7ca88bb65cd6_유기농 빨대파우치.PNG','유기농빨대파우치 ','1000','201','리빙생활','칫솔, 수저, 주머니','200'),(98,'실제 우유팩을 인쇄하는 과정에서 발생하는 파지를 새활용한 소재로 여러 카드를 수납하기 좋은 카드 지갑을 만들어요!\r\n','4ea7fdcc-04e5-4c7e-bcb1-147a528ab963_업사이틀링 DIY키트 지갑.PNG','밀키카드집 업사이클링 DIY 키트','13000','201','리빙생활','우유팩, 재활용, 지갑','200'),(99,'일회용 식기를 대체하는 나무 수저 세트입니다.\r\n','113cf54f-dac4-4610-b226-75779aaccfe1_수저세트.PNG','나무 수저세트 ','4000','202','리빙주방','숫가락, 젓가락, 우드','200'),(100,'플라스틱 조리도구를 대체하는 우드 집게입니다.\r\n','b0cfa263-14e2-4308-a663-90d077d5c899_나무 집게.PNG','나무 집게','5000','202','리빙주방','나무, 집개, 주방','200'),(101,'국내 생산 실리콘 소재로 만들어져 안심하고 사용할 수 있는 다회용 실리콘 지퍼백 입니다.\r\n','2cf0550a-d6eb-40a0-976c-36f294594182_실리콘 지퍼백.PNG','실리콘 지퍼백','10000','202','리빙주방','비닐, 봉지, 재활용','200'),(102,'GOTS 인증 받은 유기농 면으로 만들어진 핸드타월입니다.\r\n','32941423-9a17-4377-9e62-ce407f895d55_유기농핸드타월.PNG','유기농 핸드타월 (3매)','11000','202','리빙주방','수건, 타올, 면','200'),(103,'비건인증 받은 1종 주방비누를 더욱 합리적인 가격으로 만나보세요!\r\n','35451439-f3e8-48e9-8d5f-b6cb2a60fa69_주방비누.PNG','주방비누 3개 (수정)','11000','202','리빙주방','세제, 비건, 고체','200'),(104,'물방울 모양으로 가공한 천연 수세미입니다. 면 고리가 달려 있어 보관이 용이해요 :) (3개입)\r\n','01567315-3881-4634-a1e1-15efbc9df685_천연물방울수세미3개.PNG','천연물방울수세미(3개입) - 수정 테스트','9000','202','리빙주방','친환경, 주방세제','200'),(105,'카페인 없이 커피맛을 즐길 수 있는 보리커피 입니다.\r\n','47e1c016-73ce-419f-8134-5e0fa84f63a2_공정무역 보리 커피 120G.PNG','공정무역 보리 커피 120G','7000','101','식품일반','디카페인, coffee','100'),(106,'향긋한 바닐라향과 메이플시럽의 달콤함을 함께, 간편하게 즐기는 비건 마시멜로우\r\n','3d533a9d-dc10-4569-b8fa-7af9c9019a5f_비건 마시멜로우 메이플향.PNG','비건 마시멜로우 메이플향(미니)','5000','102','식품비건','비건, 캬라멜, 간식','100'),(107,'국내산 폐플라스틱을 재활용한 플라텍스 원단으로 만들어졌어요! \r\n','a1e5978f-c87a-451d-a9f4-45d49f578242_필통.PNG','필통','9000','201','리빙생활','학용품, 재활용, 펜슬케이스','200'),(108,'튜브형태의 핸드크림, 립밤 등 다양한 곳에 사용할 수 있는 재사용플라스틱 튜브짜개입니다. \r\n','81c5b4e7-7c63-4c89-93bd-ed17c1dadbff_튜브짜개.PNG','튜브짜개','4000','201','리빙생활','클립, 짜게','200'),(109,'헹굼용, 과일과 채소 세척에 적합한 두겹의 삼베 수세미 입니다.\r\n','1a068d75-4dea-4681-be03-6b64123dea0d_헹굼용 삼베 수세미.PNG','헹굼용 삼베 수세미','6000','202','리빙주방','행주, 과일세척용 ','200'),(110,'텀블러 등과 같은 긴 용기를 세척하기에 용이한 세척솔입니다.\r\n','d26d8beb-fe96-4c87-93c6-18318e42400d_보들 세척솔.PNG','보들 세척솔','10000','202','리빙주방','병, 용기, 브러쉬','200');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
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
