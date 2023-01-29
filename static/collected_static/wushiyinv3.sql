-- MySQL dump 10.13  Distrib 8.0.30, for macos12.4 (arm64)
--
-- Host: localhost    Database: wushiyinv3
-- ------------------------------------------------------
-- Server version	8.0.30

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `api_anime`
--

DROP TABLE IF EXISTS `api_anime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_anime` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `abstract` varchar(256) DEFAULT NULL,
  `score` varchar(8) DEFAULT NULL,
  `poster` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `api_anime_name_7b704e52` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_anime`
--

LOCK TABLES `api_anime` WRITE;
/*!40000 ALTER TABLE `api_anime` DISABLE KEYS */;
INSERT INTO `api_anime` VALUES (1,'幻界战线',NULL,NULL,'anime_poster/IMG_4421.JPG'),(2,'巨人',NULL,NULL,'anime_poster/5ce6ef6490429932b26712381838f2ce30502823.png'),(3,'轻音少女',NULL,NULL,'anime_poster/IMG_4096-2.jpg'),(4,'孤独摇滚',NULL,NULL,'anime_poster/Bocchi_the_Rock_.jpeg'),(5,'灵能百分百',NULL,NULL,'anime_poster/MOB_PSYCHO_100.jpeg'),(6,'卡罗尔与特斯黛',NULL,NULL,'anime_poster/_Carole_and_Tuesday__2019_Japanese_movie_cover.jpeg'),(7,'冰海战记',NULL,NULL,'anime_poster/4C78oLnxAiIeC9vYa0Z7sLkVJx7.jpeg');
/*!40000 ALTER TABLE `api_anime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_animecategory`
--

DROP TABLE IF EXISTS `api_animecategory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_animecategory` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `api_animecategory_name_82e8d8a4` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_animecategory`
--

LOCK TABLES `api_animecategory` WRITE;
/*!40000 ALTER TABLE `api_animecategory` DISABLE KEYS */;
INSERT INTO `api_animecategory` VALUES (2,'科幻'),(1,'音乐');
/*!40000 ALTER TABLE `api_animecategory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_animecategory_animes`
--

DROP TABLE IF EXISTS `api_animecategory_animes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_animecategory_animes` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `animecategory_id` bigint NOT NULL,
  `anime_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `api_animecategory_animes_animecategory_id_anime_id_13360f8a_uniq` (`animecategory_id`,`anime_id`),
  KEY `api_animecategory_animes_anime_id_bcfd6f16_fk_api_anime_id` (`anime_id`),
  CONSTRAINT `api_animecategory_an_animecategory_id_f036e150_fk_api_anime` FOREIGN KEY (`animecategory_id`) REFERENCES `api_animecategory` (`id`),
  CONSTRAINT `api_animecategory_animes_anime_id_bcfd6f16_fk_api_anime_id` FOREIGN KEY (`anime_id`) REFERENCES `api_anime` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_animecategory_animes`
--

LOCK TABLES `api_animecategory_animes` WRITE;
/*!40000 ALTER TABLE `api_animecategory_animes` DISABLE KEYS */;
INSERT INTO `api_animecategory_animes` VALUES (1,1,3),(2,1,4),(3,1,6),(4,2,1),(5,2,2);
/*!40000 ALTER TABLE `api_animecategory_animes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_avatar`
--

DROP TABLE IF EXISTS `api_avatar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_avatar` (
  `id` int NOT NULL AUTO_INCREMENT,
  `path` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_avatar`
--

LOCK TABLES `api_avatar` WRITE;
/*!40000 ALTER TABLE `api_avatar` DISABLE KEYS */;
INSERT INTO `api_avatar` VALUES (1,'user_avatar/tmpp91s8163.JPG'),(2,'user_avatar/R-C.7b9f3020f3c91e5f76b4df2e7ea25de1.jpeg'),(3,'user_avatar/IMG_3296.JPG'),(4,'user_avatar/005Qg1G9ly1h0ghpm4qhej30oc0ocwnd.jpg'),(5,'user_avatar/005Qg1G9ly1h0ghplkrgtj30ik0ikjw5.jpg');
/*!40000 ALTER TABLE `api_avatar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_category`
--

DROP TABLE IF EXISTS `api_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(8) NOT NULL,
  `en_name` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_category`
--

LOCK TABLES `api_category` WRITE;
/*!40000 ALTER TABLE `api_category` DISABLE KEYS */;
INSERT INTO `api_category` VALUES (1,'清音','qingyin'),(2,'浊音','zhuoyin'),(3,'拗音','aoyin'),(4,'导学','daoxue');
/*!40000 ALTER TABLE `api_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_chapter`
--

DROP TABLE IF EXISTS `api_chapter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_chapter` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `category_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `api_chapter_category_id_c678f907_fk_api_category_id` (`category_id`),
  CONSTRAINT `api_chapter_category_id_c678f907_fk_api_category_id` FOREIGN KEY (`category_id`) REFERENCES `api_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_chapter`
--

LOCK TABLES `api_chapter` WRITE;
/*!40000 ALTER TABLE `api_chapter` DISABLE KEYS */;
INSERT INTO `api_chapter` VALUES (1,'第一章 あ い う え お',1),(2,'第二章 か き く け こ',1),(3,'第三章 さ し す せ そ',1),(4,'第四章 た ち つ て と',1),(5,'第五章 な に ぬ ね の',1),(6,'第六章 は ひ ふ へ ほ',1),(7,'第七章 ま み む め も',1),(8,'第八章 や ゆ よ',1),(9,'第九章  ら り る れ ろ',1),(10,'第十章 わ を',1),(11,'第十一章 ん',1),(12,'第十二章 が ぎ ぐ げ ご',2),(13,'第十三章 ざ じ ず ぜ ぞ',2),(14,'第十四章 だ ぢ づ で ど',2),(15,'第十五章 ば び ぶ べ ぼ',2),(16,'第十六章 ぱ ぴ ぷ ぺ ぽ',2),(17,'第十七章 きゃ きゅ きょ',3),(18,'第十八章 ぎゃ ぎゅ ぎょ',3),(19,'第十九章 しゃ しゅ しょ',3),(20,'第二十章 じゃ じゅ じょ',3),(21,'第二十一章 ちゃ ちゅ ちょ',3),(22,'第二十二章 にゃ にゅ にょ',3),(23,'第二十三章 ひゃ ひゅ ひょ',3),(24,'第二十四章 びゃ びゅ びょ',3),(25,'第二十五章 ぴゃ ぴゅ ぴょ',3),(26,'第二十六章 みゃ みゅ みょ',3),(27,'第二十七章 りゃ りゅ りょ',3);
/*!40000 ALTER TABLE `api_chapter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_character`
--

DROP TABLE IF EXISTS `api_character`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_character` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ping` varchar(8) NOT NULL,
  `pian` varchar(8) NOT NULL,
  `spelling` varchar(8) NOT NULL,
  `spelling_path` varchar(64) DEFAULT NULL,
  `ping_path` varchar(64) DEFAULT NULL,
  `pian_path` varchar(64) DEFAULT NULL,
  `pro_skill` varchar(128) DEFAULT NULL,
  `pro_skill_image_path` varchar(64) DEFAULT NULL,
  `memory` varchar(256) DEFAULT NULL,
  `memory_path` varchar(64) DEFAULT NULL,
  `scene_text` varchar(128) NOT NULL,
  `scene_cn_text` varchar(128) DEFAULT NULL,
  `scene_gif_path` varchar(64) DEFAULT NULL,
  `scene_spelling_path` varchar(64) DEFAULT NULL,
  `chapter_id` int NOT NULL,
  `scene_text_from` varchar(64) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `api_character_chapter_id_fba5d8bf_fk_api_chapter_id` (`chapter_id`),
  CONSTRAINT `api_character_chapter_id_fba5d8bf_fk_api_chapter_id` FOREIGN KEY (`chapter_id`) REFERENCES `api_chapter` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_character`
--

LOCK TABLES `api_character` WRITE;
/*!40000 ALTER TABLE `api_character` DISABLE KEYS */;
INSERT INTO `api_character` VALUES (1,'あ','ア','a','/static/audios/pronunciations/あ.mp3','/static/images/pings/あ.gif','/static/images/pians/ア.gif','汉语的“a”开口较大，而日语的“あ”开口比较小，发音时舌头的位置稍微靠后。','/static/images/proskills/あ.png','あ笔顺酷似汉字“女”，笔画比较柔顺。ア取自汉字“阿”的耳刀旁。因此这样一个“啊”字巧妙的涵盖了两个假名的特征。','/static/images/astmemories/あ.jpg','あああああ......腹が減った。','啊…肚子好饿。','/static/images/scenes/あ.gif','/static/audios/scenes/あ.mp3',1,'一《孤独的美食家》五郎'),(2,'い','イ','i','/static/audios/pronunciations/い.mp3','/static/images/pings/い.gif','/static/images/pians/イ.gif','与“衣”发音相近，但口形左右开口较小。','/static/images/proskills/い.png','发音与汉字“以”相近。而这个“以”字其左边形似い，其右边又像一个“人”字，因此可以联想到单人旁い。因此，一句“以理服人”解决掉它们！','/static/images/astmemories/い.jpg','実に面白い。','实在有趣。','/static/images/scenes/い.gif','/static/audios/scenes/い.mp3',1,'《神探伽利略》汤川学'),(3,'う','ウ','u','/static/audios/pronunciations/う.mp3','/static/images/pings/う.gif','/static/images/pians/ウ.gif','日语的“う”与汉语的“u”有很大不同，日语的“う”口形几乎是平的。上下齿咬合，嘴唇稍微张开，发出的“う”就比较准确了。','/static/images/proskills/う.png','写5不写“竖”，就像一个う。而片假名的之来自于汉字“宇”，与う很相似，棱角分明，横平竖直。','/static/images/astmemories/う.jpg','今度はもっとうまいの作ってやるよ。','下次做更好吃的给你吃。','/static/images/scenes/う.gif','/static/audios/scenes/う.mp3',1,'《交响情人梦》千秋真一'),(4,'え','エ','e','/static/audios/pronunciations/え.mp3','/static/images/pings/え.gif','/static/images/pians/エ.gif','与汉语拼音“ei”的前半，或者“ie”的后半相似。注意和拼音的“e”完全不同。','/static/images/proskills/え.png','尽管元来自于汉字“衣”，但是在写法上更接近 “之”，“单膝下跪”就是え。把“之”立正就是片假名エ，形似汉字“工”。','/static/images/astmemories/え.jpg','ええええ。','嗯嗯。','/static/images/scenes/え.gif','/static/audios/scenes/え.mp3',1,'日本综艺节目常见词'),(5,'お','オ','o','/static/audios/pronunciations/お.mp3','/static/images/pings/お.gif','/static/images/pians/オ.gif','唇形较圆，但比汉语的“o”要紧张。','/static/images/proskills/お.png','平片假名的第一二笔是同样的笔顺，因此也比较好书写。平假名“お”，形状的有点像要求的 “求”。需要注意“あ”和“お”容易写反，片假名“オ”非常像汉字的“才”。“あお”、“あお”、就像在说奥(ao)。','/static/images/astmemories/お.jpg','犬夜叉，お座り。','犬夜叉，坐下！','/static/images/scenes/お.gif','/static/audios/scenes/お.mp3',1,'一《犬夜叉》日暮戈薇'),(6,'か','カ','ka','/static/audios/pronunciations/か.mp3','/static/images/pings/か.gif','/static/images/pians/カ.gif','让后舌面跟软腭接触，阻住气流，然后很快放开，让气流冲出，不要振动声带。',NULL,'「か・カ」的罗马字是ka，发音就像咖啡的 “咖”。片假名的「カ」看上去就类似“咖”字中间的那一部分，咖啡溅出一滴，在右边加上一个小水滴，就是平假名「カ」','/static/images/astmemories/か.jpg','人生には三つ坂があるんですって。上り坂、下り坂、まさか。','据说人生有三条坡道，分别是上坡道、下坡道、没想到。','/static/images/scenes/か.gif','/static/audios/scenes/か.mp3',2,'《四重奏》卷真纪'),(7,'き','キ','ki','/static/audios/pronunciations/き.mp3','/static/images/pings/き.gif','/static/images/pians/キ.gif','',NULL,'「き・キ」的平假名「き」长得很像中国民族乐器一阮，而片假名「キ」就长得像阮的上半部分，这一部分则是用来调音的，国际化的说法就是调key，发音很像「き・キ」~','/static/images/astmemories/き.jpg','お前が好きだ。','我喜欢你。','/static/images/scenes/き.gif','/static/audios/scenes/き.mp3',2,'《我们有点不对劲》高月椿'),(8,'く','ク','ku','/static/audios/pronunciations/く.mp3','/static/images/pings/く.gif','/static/images/pians/ク.gif','',NULL,'「く·ク」的字源是汉字“久”，对应的罗马字是ku。三国开篇第一句：话说天下大势，分久必合，合久必分。“久”左右分开就是片假名「ク」和「く」，因为二者不得不分开，所以特别想“哭(ku)”~','/static/images/astmemories/く.jpg','大事なものが後から遅れてくることもあるのよ。','重要的东西有时也会迟来一步。','/static/images/scenes/く.gif','/static/audios/scenes/く.mp3',2,'《最完美的离婚》滨崎亚以子'),(9,'け','ケ','ke','/static/audios/pronunciations/け.mp3','/static/images/pings/け.gif','/static/images/pians/ケ.gif','',NULL,'平假名「け」，仿佛是一位国王伸手拿着自己的权杖傲视前方，片假名「ケ」就像是King的首字母K稍稍颠倒了一下，「け·ケ」的罗马字ke发音就与字母K有点像~','/static/images/astmemories/け.jpg','世界に一つだけの花','世界上唯一的花朵','/static/images/scenes/け.gif','/static/audios/scenes/け.mp3',2,'《世界上唯一的花朵》SMAP'),(10,'こ','コ','ko','/static/audios/pronunciations/こ.mp3','/static/images/pings/こ.gif','/static/images/pians/コ.gif','',NULL,'发音ko就像中文的“口”字，平假名「こ」像是看正脸时的嘴唇，片假名「コ」则像是看人侧脸时嘴张开的形状~','/static/images/astmemories/こ.jpg','どうも。こんばんは。','晚上好。','/static/images/scenes/こ.gif','/static/audios/scenes/こ.mp3',2,'日本综艺节目常见词/日常打招呼'),(11,'さ','サ','sa','/static/audios/pronunciations/さ.mp3','/static/images/pings/さ.gif','/static/images/pians/サ.gif','将舌尖放在上齿龈后面，无声气流从舌齿间流出，不要振动声带。',NULL,'平假名さ像是一个人跪着的姿势，而片假名サ则形似汉字的偏旁“艹”（草字头）。所以一句 “呆呆跪（さ)在草（サ)地上，是不是sa”， 就能轻松记住啦。','/static/images/astmemories/さ.jpg','ぞ~うさん！','大~象！','/static/images/scenes/さ.gif','/static/audios/scenes/さ.mp3',3,'《蜡笔小新》野原新之助'),(12,'し','シ','si','/static/audios/pronunciations/し.mp3','/static/images/pings/し.gif','/static/images/pians/シ.gif','',NULL,'平假名し弯弯曲曲的是不是像一条小溪呀，长得还像一根倒置的吸管，片假名シ就是三点水，来脑洞一下：用吸管来吸水，因此「し·シ」就是一根吸（し)水（シ）的吸管。其实还听说过一个有点恶心的记忆方法，し像个从侧面看的鼻子，所以就是吸 (し)鼻涕（シ）。','/static/images/astmemories/し.jpg','いたしません。','我不做。','/static/images/scenes/し.gif','/static/audios/scenes/し.mp3',3,'《Doctor X》大门未知子'),(13,'す','ス','su','/static/audios/pronunciations/す.mp3','/static/images/pings/す.gif','/static/images/pians/ス.gif','',NULL,'平假名す像学士帽的“碎丝（su)”，卷在一起的丝线呢就是su，片假名ス像汉字的“又”字缺了左边的一块。来脑洞一下：丝（す)线又（ス）卷成了一团了。','/static/images/astmemories/す.jpg','絶望する暇がない。','没有时间绝望。','/static/images/scenes/す.gif','/static/audios/scenes/す.mp3',3,'《非自然死亡》三澄美琴'),(14,'せ','セ','se','/static/audios/pronunciations/せ.mp3','/static/images/pings/せ.gif','/static/images/pians/セ.gif','',NULL,'平假名せ和片假名セ都和世界的“世”长得很像。片假名セ长得又像“抽屉”，平假名せ就是在“抽屉（セ)”里面塞(se)了一张纸。或者再脑洞一下，“赛车世界”。','/static/images/astmemories/せ.jpg','ありのままの姿見せるのよ','展现自己原本的模样','/static/images/scenes/せ.gif','/static/audios/scenes/せ.mp3',3,'日版《冰雪奇缘》エルザ'),(15,'そ','ソ','so','/static/audios/pronunciations/そ.mp3','/static/images/pings/そ.gif','/static/images/pians/ソ.gif','',NULL,'平假名そ外形似数字“3”的变形。片假名ソ像关羽的“关”的头部。一个脑洞：扫（そ)荡3关（ソ）。','/static/images/astmemories/そ.jpg','それが俺の忍道だ！','这就是我的忍道。','/static/images/scenes/そ.gif','/static/audios/scenes/そ.mp3',3,'《火影忍者》漩涡鸣人'),(16,'た','タ','ta','/static/audios/pronunciations/た.mp3','/static/images/pings/た.gif','/static/images/pians/タ.gif','声带不振动，舌尖紧贴上齿龈形成堵塞，再以无声气流冲开堵塞。',NULL,'「た·タ」的发音和汉语拼音的“ta”发音相近。平假名可以分解成汉字的“十”和“二”。 同时在平假名た里面包含了我们学过的“こ”。 因此一个章鱼（たこ)非常形象地记住两个假名。片假名タ取自汉字“多”的一半。“多 (タ)了十ニ（た）”，就记住啦~','/static/images/astmemories/た.jpg','今でもあなたはわたしの光。','直至今日你仍然是我的光。','/static/images/scenes/た.gif','/static/audios/scenes/た.mp3',4,'《Lemon，》米津玄师'),(17,'ち','チ','ti','/static/audios/pronunciations/ち.mp3','/static/images/pings/ち.gif','/static/images/pians/チ.gif','',NULL,'「ち·チ」的发音和数字“七”发音相近。平假名ち与汉字“七”在笔顺上略有不同，“七”是上钩，而ち是下钩。就像海盗的钩子。片假名チ源自汉字“千”，最后一竖稍微向左偏。','/static/images/astmemories/ち.jpg','百年先も愛を誓（ちか）うよ君は僕の全てさ','我愿对你发誓百年后的爱你是我的一切。','/static/images/scenes/ち.gif','/static/audios/scenes/ち.mp3',4,'《One Love》嵐'),(18,'つ','ツ','tu','/static/audios/pronunciations/つ.mp3','/static/images/pings/つ.gif','/static/images/pians/ツ.gif','',NULL,'平假名つ像易拉罐拉开后的开口，拉开瓶盖的时候会发出“呲”的声音~。片假名ツ就是拉开瓶盖后溅出的三滴水 (ツ)。','/static/images/astmemories/つ.jpg','真実はいつも一つ。','真相只有一个。','/static/images/scenes/つ.gif','/static/audios/scenes/つ.mp3',4,'《名侦探柯南》江户川柯南'),(19,'て','テ','te','/static/audios/pronunciations/て.mp3','/static/images/pings/て.gif','/static/images/pians/テ.gif','',NULL,'平假名て引人注目的是下面那个半圆，像不像海马的大肚子呢？片假名テ取自汉字“天”。在海里游得忒(te)久了，海马也想上天 (テ)！','/static/images/astmemories/て.jpg','人生は一度きりなんです、がっついていこう！','人生没有重来，贪婪有何不可！','/static/images/scenes/て.gif','/static/audios/scenes/て.mp3',4,'《对不起青春》蜂矢理沙'),(20,'と','ト','to','/static/audios/pronunciations/と.mp3','/static/images/pings/と.gif','/static/images/pians/ト.gif','',NULL,'把平假名と的下半部分想象成小石头(to)， 上半部分想象成一颗萝卜，而片假名ト形似汉字“卜”，因此石头里长萝卜，顺理成章啦~','/static/images/astmemories/と.jpg','勉強は、受験のためにするのではありません。立派なおとなになるためにするんです。','学习，不是为了考试，而是为了成为出色的大人。','/static/images/scenes/と.gif','/static/audios/scenes/と.mp3',4,'《女王的教室》阿久津真矢'),(21,'な','ナ','na','/static/audios/pronunciations/な.mp3','/static/images/pings/な.gif','/static/images/pians/ナ.gif','舌尖抵住上齿龈，前舌面抵住硬腭，振动声带，有声气流经鼻腔自然流出。',NULL,'平假名な其实跟汉字“奈”长得很像，注意な下面的小圈圈要写小一点哦~片假名ナ就是更加简约的“奈”，只剩下了开头的两笔。一句话： “那(na)般奈(な)何~”','/static/images/astmemories/な.jpg','努力は嘘をつく。でもむだにはならない。','努力会说谎，但努力不会白费。','/static/images/scenes/な.gif','/static/audios/scenes/な.mp3',5,'日本花滑运动员羽生结弦'),(22,'に','ニ','ni','/static/audios/pronunciations/に.mp3','/static/images/pings/に.gif','/static/images/pians/ニ.gif','',NULL,'平假名に左边1右边是二，你（ni)就是“独1无二”。 片假名ニ跟汉字“二”的写法是一样的。 巧的是，日语中“二”的发音就是(ni)。','/static/images/astmemories/に.jpg','オレは海贼王になる男だ！','我是要成为海贼王的男人。','/static/images/scenes/に.gif','/static/audios/scenes/に.mp3',5,'《海贼王》路飞'),(23,'ぬ','ヌ','nu','/static/audios/pronunciations/ぬ.mp3','/static/images/pings/ぬ.gif','/static/images/pians/ヌ.gif','',NULL,'平假名ぬ不管是读音还是字形，与汉字“奴”都很像，所以可以就借助“奴”字来记忆。片假名ヌ就是“奴”的右边一半，不过要注意写法哦~','/static/images/astmemories/ぬ.jpg','ぬのだぜ！','不就是块布嘛！','/static/images/scenes/ぬ.gif','/static/audios/scenes/ぬ.mp3',5,'堂本光一'),(24,'ね','ネ','ne','/static/audios/pronunciations/ね.mp3','/static/images/pings/ね.gif','/static/images/pians/ネ.gif','',NULL,'平假名ね就像是把一个人困住然后打了个结， 片假名ネ形似汉字偏旁“礻”。假如你发现了一个内(ne)衣大盗，刚好被你撞见，你是用绳子去勒住他，然后打个结捆起来（ね)，还是选择视而不见呢（ネ)？','/static/images/astmemories/ね.jpg','ね~盛り上がってんのおおお！？','喂~情绪高涨起来了吗！？','/static/images/scenes/ね.gif','/static/audios/scenes/ね.mp3',5,'相叶雅纪'),(25,'の','ノ','no','/static/audios/pronunciations/の.mp3','/static/images/pings/の.gif','/static/images/pians/ノ.gif','',NULL,'平假名の的字形相信大家已经很熟悉了，长得很像个糯(no)米团子，读音跟汉字”糯“也是有点相近的。片假名ノ可以看成の的一部分啦~','/static/images/astmemories/の.jpg','私、失敗しないので。','我是不会失败的。','/static/images/scenes/の.gif','/static/audios/scenes/の.mp3',5,'《Doctor X》大门未知子'),(26,'は','ハ','ha','/static/audios/pronunciations/は.mp3','/static/images/pings/は.gif','/static/images/pians/ハ.gif','嘴张开，声带不振动，把无声气流从舌根和软腭中间摩擦送出。',NULL,'平假名は来自于汉字“波”。片假名ハ长得像汉字“八”。都读作“ha”。','/static/images/astmemories/は.jpg','はしるの好きか？','你喜欢跑步吗？','/static/images/scenes/は.gif','/static/audios/scenes/は.mp3',6,'《强风吹拂》清濑灰二'),(27,'ひ','ヒ','hi','/static/audios/pronunciations/ひ.mp3','/static/images/pings/ひ.gif','/static/images/pians/ヒ.gif','与し的发音不同，ひ的发音不用闭上牙齿，直接将气流送出。',NULL,'平假名ひ像一张微笑的嘴，也像吐出的舌头。 而片假名ヒ则像汉字匕首的“匕”。有没有很好记？','/static/images/astmemories/ひ.jpg','オイラ伝説の無責任ヒーロー、夢は無限大の無責任ヒーロー。','我们就是传说中的无责任英雄，梦想无限大的无责任英雄。','/static/images/scenes/ひ.gif','/static/audios/scenes/ひ.mp3',6,'《無責任ヒーロー》関ジャニ∞'),(28,'ふ','フ','hu','/static/audios/pronunciations/ふ.mp3','/static/images/pings/ふ.gif','/static/images/pians/フ.gif','同う一样，发音的口形要小而扁平。发出介于h和f之间的音。上齿不要咬唇，上唇也不要紧绷。',NULL,'平假名ふ长得像汉字“小”，片假名フ长得像数字“7”。发音「hu」。一句“小夫妻”记住他们。','/static/images/astmemories/ふ.jpg','約束だ。俺らはふたりで宇宙飛行士になるぞ。','就这么约定啦。我们要两人都成为宇航员。','/static/images/scenes/ふ.gif','/static/audios/scenes/ふ.mp3',6,'《宇宙兄弟》南波六太&南波日日人'),(29,'へ','ヘ','he','/static/audios/pronunciations/へ.mp3','/static/images/pings/へ.gif','/static/images/pians/ヘ.gif','构成单词时读“he”，单独作助词使用时读 “e”。',NULL,'平假名へ与片假名ヘ写法很像，平假名较为圆润，片假名则更有棱角。弯折的样子就像海浪一样。','/static/images/astmemories/へ.jpg','ヘビーローテーション','无尽重播','/static/images/scenes/へ.gif','/static/audios/scenes/へ.mp3',6,'《ヘビーローテーション》AKB48'),(30,'ほ','ホ','ho','/static/audios/pronunciations/ほ.mp3','/static/images/pings/ほ.gif','/static/images/pians/ホ.gif','',NULL,'平假名ほ和は很相似，就是多了一横。片假名的ホ也是在ハ的基础上多了两个笔顺，就像多了一个十字。','/static/images/astmemories/ほ.jpg','俺あただ・・・惚（ほ）れた女にゃ幸せになってほしいだけだ。','我只是想让我喜欢的女人得到幸福。','/static/images/scenes/ほ.gif','/static/audios/scenes/ほ.mp3',6,'《银魂》土方十四郎'),(31,'ま','マ','ma','/static/audios/pronunciations/ま.mp3','/static/images/pings/ま.gif','/static/images/pians/マ.gif','闭嘴，舌保持自然，振动声带，有声气流经鼻腔流出。',NULL,'「ま·マ」的罗马字是ma，发音同中文的“马”很相似。平假名「ま」和片假名「マ」组合好后，再套上半个框，形状就仿佛繁体中文的“馬”字~','/static/images/astmemories/ま.jpg','承知しました。','我明白了。','/static/images/scenes/ま.gif','/static/audios/scenes/ま.mp3',7,'《家政妇三田》三田灯'),(32,'み','ミ','mi','/static/audios/pronunciations/み.mp3','/static/images/pings/み.gif','/static/images/pians/ミ.gif','',NULL,'「み·ミ」的罗马字(mi)音同猫咪的“咪”。 平假名「み」则形似侧坐的猫咪，片假名 「ミ」就好像猫咪的三根胡须~','/static/images/astmemories/み.jpg','目にみえるものが真実とは限らない。','眼见不一定为实。','/static/images/scenes/み.gif','/static/audios/scenes/み.mp3',7,'《行骗天下》达子'),(33,'む','ム','mu','/static/audios/pronunciations/む.mp3','/static/images/pings/む.gif','/static/images/pians/ム.gif','',NULL,'平假名「む」形似一头小奶牛，有没注意到俏皮的小尾巴？片假名「ム」形似“哞”字右半边的上半部分，「む·ム」的罗马字是mu，发音像牛的叫声“哞~~~”。','/static/images/astmemories/む.jpg','無限大（むげんだい）な夢のあとの何もない世の中じゃ','在无限延伸的梦想后面穿越冷酷无情的世界','/static/images/scenes/む.gif','/static/audios/scenes/む.mp3',7,'《Butter-F引y》和田光司'),(34,'め','メ','me','/static/audios/pronunciations/め.mp3','/static/images/pings/め.gif','/static/images/pians/メ.gif','',NULL,'「め·メ」的罗马字是me，发音近似中文的“妹”字。平假名「め」的字形和“妹”的偏旁很相似，片假名「メ」既可以直接从「め」的字形衍生出来，又可以想象成一个“×”，表示来自妹子的拒绝~','/static/images/astmemories/め.jpg','ストレス溜めるなら金貯めろ！','攒压力不如去攒钱！','/static/images/scenes/め.gif','/static/audios/scenes/め.mp3',7,'二宫和也'),(35,'も','モ','mo','/static/audios/pronunciations/も.mp3','/static/images/pings/も.gif','/static/images/pians/モ.gif','',NULL,'「も·モ」的字源就是中文的“毛”字，发音也相近。“大毛”想去理发剪刘海。本想剪去斜刘海清爽一点，变成「も」，结果理发师用力过猛直接变成更干净规矩的平头，也就是片假名「モ」。','/static/images/astmemories/も.jpg','もう一回・・・誘拐して！','再诱拐我一次吧！','/static/images/scenes/も.gif','/static/audios/scenes/も.mp3',7,'《Mother)》道木怜南'),(36,'や','ヤ','ya','/static/audios/pronunciations/や.mp3','/static/images/pings/や.gif','/static/images/pians/ヤ.gif','由元音い和三个假名あ、う、お复合而成，发音时，い要发得较轻较弱。',NULL,'平假名や的发音几乎和树丫的“丫”是一样的。 形状跟“也”很像。树丫想要长得圆润饱满是需要水的，所以圆润的平假名や记得要有一点水。树丫如果没有水的话就会枯萎，变得干瘪，就成了片假名ヤ。','/static/images/astmemories/や.jpg','やられたら、やり返す。倍返しだ！','以牙还牙，加倍奉还！','/static/images/scenes/や.gif','/static/audios/scenes/や.mp3',8,'《半泽直树》半泽直树'),(37,'ゆ','ユ','yu','/static/audios/pronunciations/ゆ.mp3','/static/images/pings/ゆ.gif','/static/images/pians/ユ.gif','',NULL,'平假名ゆ很像一条被串在竹签上的鱼，而恰好鱼的拼音和「ゆ」的罗马音都是“yu”。片假名ユ像一条可爱的小鲸鱼。出头的部分就是它的小尾巴。','/static/images/astmemories/ゆ.jpg','夫婦を越えてゆけ','超越夫妻的情感。','/static/images/scenes/ゆ.gif','/static/audios/scenes/ゆ.mp3',8,'《恋》星野源'),(38,'よ','ヨ','yo','/static/audios/pronunciations/よ.mp3','/static/images/pings/よ.gif','/static/images/pians/ヨ.gif','',NULL,'平假名よ就像一只在回头整理自己羽毛的天鹅。片假名的ヨ很像天鹅的脚掌呢。浮水的天鹅看不到自己的脚掌，这样よ和ヨ就联系起来了。','/static/images/astmemories/よ.jpg','笑えばいいと思うよ。','我想只要微笑就可以了。','/static/images/scenes/よ.gif','/static/audios/scenes/よ.mp3',8,'《EVA》碇真嗣'),(39,'ら','ラ','ra','/static/audios/pronunciations/ら.mp3','/static/images/pings/ら.gif','/static/images/pians/ラ.gif','这一行的罗马字虽然写作“r”，但是发音跟中文是完全不一样，更接近中文的“l”的发音。嘴唇张开，翘起舌尖，抵住上齿龈；振动声带后，用舌尖弹击上齿龈后部，发出声音。',NULL,'「ら·ラ」的平片假名都很像蹲马桶。','/static/images/astmemories/ら.jpg','裏切られたから今も好きなんですよ。','就算被背叛也还是喜欢。','/static/images/scenes/ら.gif','/static/audios/scenes/ら.mp3',9,'《最完美的离婚》上原灯里'),(40,'り','リ','ri','/static/audios/pronunciations/り.mp3','/static/images/pings/り.gif','/static/images/pians/リ.gif','',NULL,'「り·リ」形状上本身就很相似，很像两根立起来的棍子~注意平假名写起来要有能飘逸感，片假名要规规矩矩的。','/static/images/astmemories/り.jpg','異議あり','我有异议。','/static/images/scenes/り.gif','/static/audios/scenes/り.mp3',9,'《逆转裁判》成步堂龙一'),(41,'る','ル','ru','/static/audios/pronunciations/る.mp3','/static/images/pings/る.gif','/static/images/pians/ル.gif','',NULL,'平假名「る」就像瞪大的眼睛，片假名「ル」是鼻子，不知道是谁的，所以：不识庐(lu) 山真面目。','/static/images/astmemories/る.jpg','レインボーブルッチ封鎖できません！','不要封锁彩虹桥！','/static/images/scenes/る.gif','/static/audios/scenes/る.mp3',9,'《跳跃大搜查线》'),(42,'れ','レ','re','/static/audios/pronunciations/れ.mp3','/static/images/pings/れ.gif','/static/images/pians/レ.gif','',NULL,'还记得吗？用绳子勒住了一个内衣大盗，怕他逃跑再打个结，就成了ね。可是现在绳子松了，就变成了平假名「れ」。片假名レ就是「れ」的右边部分，更加锋利。ね和れ可以联系起来记忆！','/static/images/astmemories/れ.jpg','同情するなら金をくれ！','同情我还不如给钱','/static/images/scenes/れ.gif','/static/audios/scenes/れ.mp3',9,'《无家可归的小孩》铃'),(43,'ろ','ロ','ro','/static/audios/pronunciations/ろ.mp3','/static/images/pings/ろ.gif','/static/images/pians/ロ.gif','',NULL,'平假名「ろ」的形状跟阿拉伯数字“3”有点相似，不过下半部分写起来要更接近半圆~。片假名「ロ」就是“咯”左边的“口”。','/static/images/astmemories/ろ.jpg','俺と結婚しろ。','和我结婚。','/static/images/scenes/ろ.gif','/static/audios/scenes/ろ.mp3',9,'《花样男子》道明寺'),(44,'わ','ワ','wa','/static/audios/pronunciations/わ.mp3','/static/images/pings/わ.gif','/static/images/pians/ワ.gif','わ行实际上只有わ和を两个假名。わ是元音う和あ的复合音。',NULL,'平假名わ在笔顺上和之前学到的「ね」、「れ」相似，注意和お区分开哟~发音上接近汉语青蛙的“蛙”，长得又像吃饱喝足的蛙肚子。片假名ワ可以联想为青蛙撑起的一把荷叶伞。「わ・ワ」就是肥蛙打伞啦！','/static/images/astmemories/わ.jpg','月に代わって、おしおきよ。','代表月亮消灭你。','/static/images/scenes/わ.gif','/static/audios/scenes/わ.mp3',10,'《美少女战士》月野兔'),(45,'を','ヲ','wo','/static/audios/pronunciations/を.mp3','/static/images/pings/を.gif','/static/images/pians/ヲ.gif','「を·ヲ」的罗马字可以写“wo”，也可以写 “o”，但发音一般只发“o”， 接近于汉语的 “噢”。を和お同音，只能做助词，不能表示单词。',NULL,'平假名を笔顺比较接近之前学过的「ち」和 「と」。片假名ヲ是在「フ」上多加一横。给这组假名简单地加上一副表情，瞬间滑稽感爆棚~“啊啊啊，救我！”，“噢噢噢，我来救你！”','/static/images/astmemories/を.jpg','君が好きだと叫びたい明日を変えてみよう','好想大声说爱你试着去改变明天','/static/images/scenes/を.gif','/static/audios/scenes/を.mp3',10,'《好想大声说爱你》BAAD'),(46,'ん','ン','n','/static/audios/pronunciations/ん.mp3','/static/images/pings/ん.gif','/static/images/pians/ン.gif','软腭下垂，振动声带，鼻腔通气发出声音，类似于汉语的“嗯”。一般不单独使用，也不用于词首，只能接在其他假名之后，和前面的音节拼合构成音节。',NULL,'平假名ん的下半部分就是“n”，发音也近似“n”的后半部分。片假名ン像一只要摁(en) 住人的手。','/static/images/astmemories/ん.jpg','お前はもう死んでいる。','你已经死了。','/static/images/scenes/ん.gif','/static/audios/scenes/ん.mp3',11,'《北斗神拳》健次郎'),(47,'が','ガ','ga','/static/audios/pronunciations/が.mp3','','','',NULL,'','/static/images/astmemories/が.jpg','泣きながらご飯食べたことある人は生きていけます。','一边哭一边吃过饭的人是定能坚强地生活下去的。','/static/images/scenes/が.gif','/static/audios/scenes/が.mp3',12,'《四重奏》卷真纪'),(48,'ぎ','ギ','gi','/static/audios/pronunciations/ぎ.mp3','','','',NULL,'','/static/images/astmemories/ぎ.jpg','君が正義とか抜かしてるものは上から目線の同情にすぎない。','你口中所谓的正义只是居高临下的同情而已。','/static/images/scenes/ぎ.gif','/static/audios/scenes/ぎ.mp3',12,'《Legal High》古美门研介'),(49,'ぐ','グ','gu','/static/audios/pronunciations/ぐ.mp3','','','',NULL,'','/static/images/astmemories/ぐ.jpg','最初はグー、ジャンケンポン。','首先出出石头，石头、剪刀、布。','/static/images/scenes/ぐ.gif','/static/audios/scenes/ぐ.mp3',12,'日本人猜拳的说法（志村健发明）'),(50,'げ','ゲ','ge','/static/audios/pronunciations/げ.mp3','','','',NULL,'','/static/images/astmemories/げ.jpg','ゲゲゲの鬼太郎','鬼太郎','/static/images/scenes/げ.gif','/static/audios/scenes/げ.mp3',12,'《鬼太郎》'),(51,'ご','ゴ','go','/static/audios/pronunciations/ご.mp3','','','',NULL,'','/static/images/astmemories/ご.jpg','ごー！','GO！','/static/images/scenes/ご.gif','/static/audios/scenes/ご.mp3',12,'《卖房子的女人》三轩家万智'),(52,'ざ','ザ','za','/static/audios/pronunciations/ざ.mp3','','','',NULL,'','/static/images/astmemories/ざ.jpg','ざま一見ろ！','活该！','/static/images/scenes/ざ.gif','/static/audios/scenes/ざ.mp3',13,'《一吻定情》入江直树'),(53,'じ','ジ','zi','/static/audios/pronunciations/じ.mp3','','','',NULL,'','/static/images/astmemories/じ.jpg','じっちゃんの名にかけて！','赌上爷爷的名义！','/static/images/scenes/じ.gif','/static/audios/scenes/じ.mp3',13,'《金田一少年事件簿》金田一'),(54,'ず','ズ','zu','/static/audios/pronunciations/ず.mp3','','','',NULL,'','/static/images/astmemories/ず.jpg','レリーズ！','封印解除！','/static/images/scenes/ず.gif','/static/audios/scenes/ず.mp3',13,'《魔卡少女樱》木之本樱'),(55,'ぜ','ゼ','ze','/static/audios/pronunciations/ぜ.mp3','','','',NULL,'','/static/images/astmemories/ぜ.jpg','ポケモンゲットだぜ。','神奇宝贝，终于捉到啦！','/static/images/scenes/ぜ.gif','/static/audios/scenes/ぜ.mp3',13,'《神奇宝贝》小智'),(56,'ぞ','ゾ','zo','/static/audios/pronunciations/ぞ.mp3','','','',NULL,'','/static/images/astmemories/ぞ.jpg','それ今言ったゾ','这个刚刚说过了哦！','/static/images/scenes/ぞ.gif','/static/audios/scenes/ぞ.mp3',13,'《蜡笔小新》野原新之助'),(57,'だ','ダ','da','/static/audios/pronunciations/だ.mp3','','','',NULL,'','/static/images/astmemories/だ.jpg','まだまだだね。','还差得远呢。','/static/images/scenes/だ.gif','/static/audios/scenes/だ.mp3',14,'《网球王子》越前龙马'),(58,'ぢ','ヂ','di','/static/audios/pronunciations/ぢ.mp3','','','',NULL,'','/static/images/astmemories/ぢ.jpg','','','/static/images/scenes/ぢ.gif','/static/audios/scenes/ぢ.mp3',14,''),(59,'づ','ヅ','du','/static/audios/pronunciations/づ.mp3','','','',NULL,'','/static/images/astmemories/づ.jpg','ゾラじゃない。桂だ。','不是假发，是桂。','/static/images/scenes/づ.gif','/static/audios/scenes/づ.mp3',14,'《银魂》桂小太郎'),(60,'で','デ','de','/static/audios/pronunciations/で.mp3','','','',NULL,'','/static/images/astmemories/で.jpg','NHKなんで。','因为我们是NHK(电视台)。','/static/images/scenes/で.gif','/static/audios/scenes/で.mp3',14,'NHK搞笑节目《LIFE！》三津谷宽治的名段子'),(61,'ど','ド','do','/static/audios/pronunciations/ど.mp3','','','',NULL,'','/static/images/astmemories/ど.jpg','ドラゴンボール！','七！龙！珠！','/static/images/scenes/ど.gif','/static/audios/scenes/ど.mp3',14,'《龙珠》孙悟空'),(62,'ば','バ','ba','/static/audios/pronunciations/ば.mp3','','','',NULL,'','/static/images/astmemories/ば.jpg','バスケがしたいです。','我想打篮球。','/static/images/scenes/ば.gif','/static/audios/scenes/ば.mp3',15,'《灌篮高手》三井寿'),(63,'び','ビ','bi','/static/audios/pronunciations/び.mp3','','','',NULL,'','/static/images/astmemories/び.jpg','美少女（びしょうじょ）戦士セーラームーン','美少女战士水冰月','/static/images/scenes/び.gif','/static/audios/scenes/び.mp3',15,'《美少女战士》'),(64,'ぶ','ブ','bu','/static/audios/pronunciations/ぶ.mp3','','','',NULL,'','/static/images/astmemories/ぶ.jpg','密室は、やぶれました。','密室之谜破解了。','/static/images/scenes/ぶ.gif','/static/audios/scenes/ぶ.mp3',15,'《上锁的房间》榎本径'),(65,'べ','ベ','be','/static/audios/pronunciations/べ.mp3','','','',NULL,'','/static/images/astmemories/べ.jpg','謎はすべて解けた。','谜底全部解开了。','/static/images/scenes/べ.gif','/static/audios/scenes/べ.mp3',15,'《金田一少年事件簿》金田一'),(66,'ぼ','ボ','bo','/static/audios/pronunciations/ぼ.mp3','','','',NULL,'','/static/images/astmemories/ぼ.jpg','ボールは友達。','足球就是朋友。','/static/images/scenes/ぼ.gif','/static/audios/scenes/ぼ.mp3',15,'《足球小将》大空翼'),(67,'ぱ','パ','pa','/static/audios/pronunciations/ぱ.mp3','','','',NULL,'','/static/images/astmemories/ぱ.jpg','野ブタパワー注入！','野猪力量注入！','/static/images/scenes/ぱ.gif','/static/audios/scenes/ぱ.mp3',16,'《野猪大改造》小谷信子'),(68,'ぴ','ピ','pi','/static/audios/pronunciations/ぴ.mp3','','','',NULL,'','/static/images/astmemories/ぴ.jpg','ピカ，チュウ','皮卡丘！','/static/images/scenes/ぴ.gif','/static/audios/scenes/ぴ.mp3',16,'《宠物小精灵》皮卡丘'),(69,'ぷ','プ','pu','/static/audios/pronunciations/ぷ.mp3','','','',NULL,'','/static/images/astmemories/ぷ.jpg','キングアンドプリンス','King & Prince','/static/images/scenes/ぷ.gif','/static/audios/scenes/ぷ.mp3',16,'日本偶像组合King & Prince'),(70,'ぺ','ペ','pe','/static/audios/pronunciations/ぺ.mp3','','','',NULL,'','/static/images/astmemories/ぺ.jpg','ペットとしてだったら、置いてあげても良いわよ。','如果是作为我的宠物的话，收留你也是可以哦。','/static/images/scenes/ぺ.gif','/static/audios/scenes/ぺ.mp3',16,'《宠物情人》岩谷澄丽'),(71,'ぽ','ポ','po','/static/audios/pronunciations/ぽ.mp3','','','',NULL,'','/static/images/astmemories/ぽ.jpg','パスポート取りたいんです。','我想取一下护照。','/static/images/scenes/ぽ.gif','/static/audios/scenes/ぽ.mp3',16,'《关八编年史》'),(72,'きゃ','キャ','kya','/static/audios/pronunciations/きゃ.mp3','','','',NULL,'','/static/images/astmemories/きゃ.jpg','キャーキャー~~~~！なんでこれでキャー言えるかな？','呀呀~-为什么只是这样（你们）就能这样兴奋尖叫？','/static/images/scenes/きゃ.gif','/static/audios/scenes/きゃ.mp3',17,'迷妹尖叫的声音'),(73,'きゅ','キュ','kyu','/static/audios/pronunciations/きゅ.mp3','','','',NULL,'','/static/images/astmemories/きゅ.jpg','セクシーサンキュー','sexy thank you~','/static/images/scenes/きゅ.gif','/static/audios/scenes/きゅ.mp3',17,'中岛健人口头禅'),(74,'きょ','キョ','kyo','/static/audios/pronunciations/きょ.mp3','','','',NULL,'','/static/images/astmemories/きょ.jpg','深田恭子（きょうこ）です。','我是深田恭子。','/static/images/scenes/きょ.gif','/static/audios/scenes/きょ.mp3',17,'深田恭子自我介绍'),(75,'ぎゃ','ギャ','gya','/static/audios/pronunciations/ぎゃ.mp3','','','',NULL,'','/static/images/astmemories/ぎゃ.jpg','ビリギャル','垫底辣妹','/static/images/scenes/ぎゃ.gif','/static/audios/scenes/ぎゃ.mp3',18,'日本电影《垫底辣妹》'),(76,'ぎゅ','ギュ','gyu','/static/audios/pronunciations/ぎゅ.mp3','','','',NULL,'','/static/images/astmemories/ぎゅ.jpg','うな牛（ぎゅう）','鳗鱼牛肉盖饭','/static/images/scenes/ぎゅ.gif','/static/audios/scenes/ぎゅ.mp3',18,'石原里美食其家鳗鱼牛肉盖饭CM'),(77,'ぎょ','ギョ','gyo','/static/audios/pronunciations/ぎょ.mp3','','','',NULL,'','/static/images/astmemories/ぎょ.jpg','餃子（ぎょうざ）','饺子','/static/images/scenes/ぎょ.gif','/static/audios/scenes/ぎょ.mp3',18,'日本速冻饺子CM'),(78,'しゃ','シャ','sha','/static/audios/pronunciations/しゃ.mp3','','','',NULL,'','/static/images/astmemories/しゃ.jpg','しゃべくり007','闲聊007','/static/images/scenes/しゃ.gif','/static/audios/scenes/しゃ.mp3',19,'日本综艺节目《しゃべくり007》'),(79,'しゅ','シュ','shu','/static/audios/pronunciations/しゅ.mp3','','','',NULL,'','/static/images/astmemories/しゅ.jpg','小栗旬（おぐりしゅん）','小栗旬','/static/images/scenes/しゅ.gif','/static/audios/scenes/しゅ.mp3',19,'日本演员小栗旬'),(80,'しょ','ショ','sho','/static/audios/pronunciations/しょ.mp3','','','',NULL,'','/static/images/astmemories/しょ.jpg','櫻井翔（さくらいしょう）です。よろしくお願いします。','我是樱井翔，请多关照。','/static/images/scenes/しょ.gif','/static/audios/scenes/しょ.mp3',19,'日本偶像、岚成员之一 樱井翔'),(81,'じゃ','ジャ','ja','/static/audios/pronunciations/じゃ.mp3','','','',NULL,'','/static/images/astmemories/じゃ.jpg','超いい仕事じゃん！','这工作不要太好！','/static/images/scenes/じゃ.gif','/static/audios/scenes/じゃ.mp3',20,'《机动搜查队404》伊吹蓝'),(82,'じゅ','ジュ','ju','/static/audios/pronunciations/じゅ.mp3','','','',NULL,'','/static/images/astmemories/じゅ.jpg','君と夏の終わり将来の夢大きな希望忘れない10年（じゅうねん）後の8月また出会えるのを信じて','与你在夏末约定将来的梦想远大的希望别忘记十年后的八月我相信我们还能再相遇','/static/images/scenes/じゅ.gif','/static/audios/scenes/じゅ.mp3',20,'《secret base~君がくれたもの~》ZONE'),(83,'じょ','ジョ','jo','/static/audios/pronunciations/じょ.mp3','','','',NULL,'','/static/images/astmemories/じょ.jpg','6歳の天オ女優（じょゆう）','6岁的天才女演员','/static/images/scenes/じょ.gif','/static/audios/scenes/じょ.mp3',20,'综艺节目中对小时候的芦田爱菜的评价'),(84,'ちゃ','チャ','cha','/static/audios/pronunciations/ちゃ.mp3','','','',NULL,'','/static/images/astmemories/ちゃ.jpg','ハレルヤチャンス！','哈利路亚chance！','/static/images/scenes/ちゃ.gif','/static/audios/scenes/ちゃ.mp3',21,'《求婚大作战》岩濑健'),(85,'ちゅ','チュ','chu','/static/audios/pronunciations/ちゅ.mp3','','','',NULL,'','/static/images/astmemories/ちゅ.jpg','はじめてのチュウおもいでのチュウ','第一次的亲亲回忆中的亲亲','/static/images/scenes/ちゅ.gif','/static/audios/scenes/ちゅ.mp3',21,'《Chu Chu》moumoon'),(86,'ちょ','チョ','cho','/static/audios/pronunciations/ちょ.mp3','','','',NULL,'','/static/images/astmemories/ちょ.jpg','ちょっと待ってよ！/ ちょ待てよ！','等等啊','/static/images/scenes/ちょ.gif','/static/audios/scenes/ちょ.mp3',21,'木村拓哉 麦当劳CM'),(87,'にゃ','ニャ','nya','/static/audios/pronunciations/にゃ.mp3','','','',NULL,'','/static/images/astmemories/にゃ.jpg','私はにゃんこせんせい','我是猫咪老师（娘口三三)。','/static/images/scenes/にゃ.gif','/static/audios/scenes/にゃ.mp3',22,'《夏目友人帐》'),(88,'にゅ','ニュ','nyu','/static/audios/pronunciations/にゅ.mp3','','','',NULL,'','/static/images/astmemories/にゅ.jpg','NHKニュース「おはよう日本」です。','这里是NHK新闻节目《早安日本》。','/static/images/scenes/にゅ.gif','/static/audios/scenes/にゅ.mp3',22,'NHK新闻节目《早安日本》'),(89,'にょ','ニョ','nyo','/static/audios/pronunciations/にょ.mp3','','','',NULL,'','/static/images/astmemories/にょ.jpg','ポー二ョ  ポー二ョ  ポニョ  ふくらんだ  まんまるおなかの女の子。','波妞 波妞 波妞 鼓起来圆滚滚的 鱼儿小姑娘。','/static/images/scenes/にょ.gif','/static/audios/scenes/にょ.mp3',22,'《悬崖上的金鱼姬》主题曲藤冈藤卷/大桥望美'),(90,'ひゃ','ヒャ','hya','/static/audios/pronunciations/ひゃ.mp3','','','',NULL,'','/static/images/astmemories/ひゃ.jpg','俺とお前が釣り合わないことなんて、 100(ひゃく)万年前から分かってるんだ。','我和你不般配这件事，我在100万年前早就知道了。','/static/images/scenes/ひゃ.gif','/static/audios/scenes/ひゃ.mp3',23,'《将爱情进行到底》天堂浬'),(91,'ひゅ','ヒュ','hyu','/static/audios/pronunciations/ひゅ.mp3','','','',NULL,'','/static/images/astmemories/ひゅ.jpg','I\'m a パーフェクトヒューマン。','[I\'m a perfect human.]','/static/images/scenes/ひゅ.gif','/static/audios/scenes/ひゅ.mp3',23,'《PERFECT HUMAN》PRADIO FISH'),(92,'ひょ','ヒョ','hyo','/static/audios/pronunciations/ひょ.mp3','','','',NULL,'','/static/images/astmemories/ひょ.jpg','せめて標準語（ひょうじゅんご）で喋って欲しいです。','希望大家至少用普通话来讲话。','/static/images/scenes/ひょ.gif','/static/audios/scenes/ひょ.mp3',23,'在关8综艺节目中佐藤健的发言'),(93,'びゃ','ビャ','bya','/static/audios/pronunciations/びゃ.mp3','','','',NULL,'','/static/images/astmemories/びゃ.jpg','今年誕生から300（さんびゃく）年を迎えるもの。','今年迎来诞生300年的事物。','/static/images/scenes/びゃ.gif','/static/audios/scenes/びゃ.mp3',24,'NHK纪录片《历经300年热爱“琉球歌舞剧”组踊的世界》'),(94,'びゅ','ビュ','byu','/static/audios/pronunciations/びゅ.mp3','','','',NULL,'','/static/images/astmemories/びゅ.jpg','皆さんにとって、この世界が「ビューティフルワールド」でありますように。','希望对大家而言，这个世界就是 “Beautiful World(美丽世界)”。','/static/images/scenes/びゅ.gif','/static/audios/scenes/びゅ.mp3',24,'岚“Beautiful World”演唱会 松本润发言'),(95,'びょ','ビョ','byo','/static/audios/pronunciations/びょ.mp3','','','',NULL,'','/static/images/astmemories/びょ.jpg','出会って10年。1日のほとんどをおまえたちと病院（びょういん）で過ごした。','结识10年，这期间的每一天几乎都是和你们大家在医院度过的。','/static/images/scenes/びょ.gif','/static/audios/scenes/びょ.mp3',24,'《Code Blue》（《紧急救援》)蓝泽耕作'),(96,'ぴゃ','ピャ','pya','/static/audios/pronunciations/ぴゃ.mp3','','','',NULL,'','/static/images/astmemories/ぴゃ.jpg','','','/static/images/scenes/ぴゃ.gif','/static/audios/scenes/ぴゃ.mp3',25,''),(97,'ぴゅ','ピュ','pyu','/static/audios/pronunciations/ぴゅ.mp3','','','',NULL,'','/static/images/astmemories/ぴゅ.jpg','ピュアなの','他很天真。','/static/images/scenes/ぴゅ.gif','/static/audios/scenes/ぴゅ.mp3',25,'《VS岚》里二宫和也对相叶雅纪的评价'),(98,'ぴょ','ピョ','pyo','/static/audios/pronunciations/ぴょ.mp3','','','',NULL,'','/static/images/astmemories/ぴょ.jpg','平昌（ピョンチャン）オリンピックは大会3日目を迎えています。','平昌奥运会迎来了比赛第3天。','/static/images/scenes/ぴょ.gif','/static/audios/scenes/ぴょ.mp3',25,'平昌（韩国地名）奥运会新闻报道'),(99,'みゃ','ミャ','mya','/static/audios/pronunciations/みゃ.mp3','','','',NULL,'','/static/images/astmemories/みゃ.jpg','ミャンマー','缅甸','/static/images/scenes/みゃ.gif','/static/audios/scenes/みゃ.mp3',26,'斋藤飞鸟综艺节目自我介绍混血'),(100,'みゅ','ミュ','myu','/static/audios/pronunciations/みゅ.mp3','','','',NULL,'','/static/images/astmemories/みゅ.jpg','きゃりーばみゅばみゆ','Kyary Pamyu Pamyu・竹桐子','/static/images/scenes/みゅ.gif','/static/audios/scenes/みゅ.mp3',26,'日本歌手'),(101,'みょ','ミョ','myo','/static/audios/pronunciations/みょ.mp3','','','',NULL,'','/static/images/astmemories/みょ.jpg','あいみょん','AIMYON·爱缪','/static/images/scenes/みょ.gif','/static/audios/scenes/みょ.mp3',26,'日本歌手'),(102,'りゃ','リャ','rya','/static/audios/pronunciations/りゃ.mp3','','','',NULL,'','/static/images/astmemories/りゃ.jpg','人間なんてよ、自分の人生必死に生きてりゃそれだけで手いっぱいだ。','人啊，光是为自己的人生奋斗就已经耗尽全力了。','/static/images/scenes/りゃ.gif','/static/audios/scenes/りゃ.mp3',27,'《龙樱》樱木建二'),(103,'りゅ','リュ','ryu','/static/audios/pronunciations/りゅ.mp3','','','',NULL,'','/static/images/astmemories/りゅ.jpg','どうか横浜流星（よこはまりゅうせい)みたいなイケメンに出会いますように。','清祝我找到像横滨流星那样的帅哥男朋友。','/static/images/scenes/りゅ.gif','/static/audios/scenes/りゅ.mp3',27,'《蜡笔小新》松坂老师'),(104,'りょ','リョ','ryo','/static/audios/pronunciations/りょ.mp3','','','',NULL,'','/static/images/astmemories/りょ.jpg','了解（りょうかい）です','了解!','/static/images/scenes/りょ.gif','/static/audios/scenes/りょ.mp3',27,'佐藤健 docomo 5G CM');
/*!40000 ALTER TABLE `api_character` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_user`
--

DROP TABLE IF EXISTS `api_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_user` (
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `id` int NOT NULL AUTO_INCREMENT,
  `gender` varchar(1) NOT NULL,
  `tel` varchar(11) DEFAULT NULL,
  `max_score` int NOT NULL,
  `date_created` datetime(6) NOT NULL,
  `avatar_id` int DEFAULT NULL,
  `min_time` int NOT NULL,
  `status` varchar(12) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  KEY `api_user_avatar_id_d67e623e_fk_api_avatar_id` (`avatar_id`),
  CONSTRAINT `api_user_avatar_id_d67e623e_fk_api_avatar_id` FOREIGN KEY (`avatar_id`) REFERENCES `api_avatar` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_user`
--

LOCK TABLES `api_user` WRITE;
/*!40000 ALTER TABLE `api_user` DISABLE KEYS */;
INSERT INTO `api_user` VALUES ('pbkdf2_sha256$390000$suz6IjZt3MqxaD2PFR4oqE$UQ8aho05ygu3zhTj0SE5V0242i+gzvptgp+IYAK2Yxg=','2022-12-15 02:00:23.151229',1,'xiran','','','123@aa.com',1,1,'2022-12-06 14:13:00.000000',1,'s','19822959569',19,'2022-12-06 14:13:38.901753',1,16,'normal'),('pbkdf2_sha256$390000$wxF52LNjk0CeyJNVq2bDJ8$JP4yuERgcanfzx9MWflO6UwW9I/2h2AjBmvCDFUWid0=','2022-12-06 14:19:00.000000',0,'小可爱','','','123@abc.com',0,1,'2022-12-06 14:19:00.000000',2,'f','123',13,'2022-12-06 14:19:21.138640',1,1,'normal'),('pbkdf2_sha256$390000$USUn3u5nhSfIiq2uqqe362$d6PwqyLzDrFZ2A+52UI/T8Yczz0E00SFbY4LZLeGOWo=',NULL,0,'xiaopang','','','123@aaa.com',0,1,'2022-12-17 08:23:00.000000',3,'s',NULL,15,'2022-12-17 08:23:11.862718',5,1,'normal'),('pbkdf2_sha256$390000$4VpBfloZO8hKmX1gnBhVr0$WPoVy2rXPY41IDv4bQicAVKyq9lMko7aQzDJir8KhCI=','2022-12-18 04:00:42.945194',0,'小明','','','123@hhh.com',0,1,'2022-12-18 04:00:42.813206',4,'s',NULL,0,'2022-12-18 04:00:42.923429',3,10000000,'normal'),('pbkdf2_sha256$390000$vNMupn9zYNZFUd4ZI3vEvY$BEui0w1DQhMm1W3TKKDw9xidE00Cs0EH/VOHyu8uGF0=','2022-12-18 04:02:25.687204',0,'花花','','','123@aa.com',0,1,'2022-12-18 04:02:25.575008',5,'s',NULL,0,'2022-12-18 04:02:25.676698',2,10000000,'leaved'),('pbkdf2_sha256$390000$dgmm50bnoEjsEe3AIkn6JP$iCFuk9pjm0iLU+WN11CP9AvSyJ735uZa0UKH7n630Pg=','2022-12-18 04:04:57.081522',0,'小花花','','','123@aaa.com',0,1,'2022-12-18 04:04:56.957482',6,'s',NULL,0,'2022-12-18 04:04:57.071076',4,10000000,'normal'),('pbkdf2_sha256$390000$zv3eaAVMuX9mt32yPVVETH$U/3EnBqcnvoQbwRbgAQ+t7/orB9F9P8W39MIQd/tu04=','2023-01-27 03:13:51.122172',0,'bala','','','333@qq.com',0,1,'2023-01-27 03:13:50.933501',7,'s',NULL,0,'2023-01-27 03:13:51.045229',2,10000000,'normal'),('pbkdf2_sha256$390000$cMVYTkjeAz9tgPOiKN5jba$LlAQ8fwz8B5jyo7GmoWobvTcD9YsMCvhdiGDNm6Cfy0=','2023-01-27 03:32:00.690101',0,'kk','','','333@aa.com',0,1,'2023-01-27 03:32:00.535703',8,'s',NULL,0,'2023-01-27 03:32:00.647476',4,10000000,'normal'),('pbkdf2_sha256$390000$Sw1aalb6k04LP6oKQ7Joly$C6U4WjpgW9G+Yfqj4EwZORrp81SLBKxbB7TDV66wjqY=','2023-01-27 03:33:01.661051',0,'hh','','','3334@aa.com',0,1,'2023-01-27 03:33:01.538512',9,'s',NULL,0,'2023-01-27 03:33:01.650817',1,10000000,'normal');
/*!40000 ALTER TABLE `api_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_user_anime`
--

DROP TABLE IF EXISTS `api_user_anime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_user_anime` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `anime_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `api_user_anime_user_id_anime_id_199b9ed8_uniq` (`user_id`,`anime_id`),
  KEY `api_user_anime_anime_id_7ba0b2e2_fk_api_anime_id` (`anime_id`),
  CONSTRAINT `api_user_anime_anime_id_7ba0b2e2_fk_api_anime_id` FOREIGN KEY (`anime_id`) REFERENCES `api_anime` (`id`),
  CONSTRAINT `api_user_anime_user_id_72f7cac4_fk_api_user_id` FOREIGN KEY (`user_id`) REFERENCES `api_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_user_anime`
--

LOCK TABLES `api_user_anime` WRITE;
/*!40000 ALTER TABLE `api_user_anime` DISABLE KEYS */;
INSERT INTO `api_user_anime` VALUES (1,1,1),(43,2,1),(24,2,4),(29,2,5),(31,2,6);
/*!40000 ALTER TABLE `api_user_anime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_user_groups`
--

DROP TABLE IF EXISTS `api_user_groups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_user_groups` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `group_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `api_user_groups_user_id_group_id_9c7ddfb5_uniq` (`user_id`,`group_id`),
  KEY `api_user_groups_group_id_3af85785_fk_auth_group_id` (`group_id`),
  CONSTRAINT `api_user_groups_group_id_3af85785_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `api_user_groups_user_id_a5ff39fa_fk_api_user_id` FOREIGN KEY (`user_id`) REFERENCES `api_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_user_groups`
--

LOCK TABLES `api_user_groups` WRITE;
/*!40000 ALTER TABLE `api_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_user_groups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_user_learned_chapter`
--

DROP TABLE IF EXISTS `api_user_learned_chapter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_user_learned_chapter` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `chapter_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `api_user_learned_chapter_user_id_chapter_id_0266aad3_uniq` (`user_id`,`chapter_id`),
  KEY `api_user_learned_chapter_chapter_id_1dc8d2d8_fk_api_chapter_id` (`chapter_id`),
  CONSTRAINT `api_user_learned_chapter_chapter_id_1dc8d2d8_fk_api_chapter_id` FOREIGN KEY (`chapter_id`) REFERENCES `api_chapter` (`id`),
  CONSTRAINT `api_user_learned_chapter_user_id_3e63890e_fk_api_user_id` FOREIGN KEY (`user_id`) REFERENCES `api_user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=129 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_user_learned_chapter`
--

LOCK TABLES `api_user_learned_chapter` WRITE;
/*!40000 ALTER TABLE `api_user_learned_chapter` DISABLE KEYS */;
INSERT INTO `api_user_learned_chapter` VALUES (26,1,1),(27,1,2),(28,1,3),(85,1,4),(86,1,5),(87,1,6),(29,1,7),(88,1,8),(30,1,9),(31,1,10),(89,1,11),(90,1,12),(91,1,13),(92,1,14),(93,1,15),(94,1,16),(95,1,17),(96,1,18),(125,1,19),(65,2,1),(97,2,2),(98,3,1),(99,3,2),(100,3,3),(101,3,4),(102,3,5),(103,3,6),(104,3,7),(105,3,8),(106,3,9),(107,3,10),(108,3,11),(109,3,12),(110,3,13),(111,3,14),(112,3,15),(113,3,16),(114,3,17),(115,3,18),(116,3,19),(117,3,20),(118,3,21),(119,3,22),(120,3,23),(121,3,24),(122,3,25),(123,3,26),(124,3,27),(126,9,1),(127,9,2),(128,9,3);
/*!40000 ALTER TABLE `api_user_learned_chapter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_user_user_permissions`
--

DROP TABLE IF EXISTS `api_user_user_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_user_user_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `api_user_user_permissions_user_id_permission_id_a06dd704_uniq` (`user_id`,`permission_id`),
  KEY `api_user_user_permis_permission_id_305b7fea_fk_auth_perm` (`permission_id`),
  CONSTRAINT `api_user_user_permis_permission_id_305b7fea_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `api_user_user_permissions_user_id_f3945d65_fk_api_user_id` FOREIGN KEY (`user_id`) REFERENCES `api_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_user_user_permissions`
--

LOCK TABLES `api_user_user_permissions` WRITE;
/*!40000 ALTER TABLE `api_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `api_user_user_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `api_word`
--

DROP TABLE IF EXISTS `api_word`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `api_word` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(12) NOT NULL,
  `explanation` varchar(12) DEFAULT NULL,
  `pronounce_url` varchar(64) DEFAULT NULL,
  `character_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `api_word_character_id_348495f3_fk_api_character_id` (`character_id`),
  CONSTRAINT `api_word_character_id_348495f3_fk_api_character_id` FOREIGN KEY (`character_id`) REFERENCES `api_character` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=160 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `api_word`
--

LOCK TABLES `api_word` WRITE;
/*!40000 ALTER TABLE `api_word` DISABLE KEYS */;
INSERT INTO `api_word` VALUES (1,'赤い[あかい]','（形）红色的','/static/audios/words/赤い[あかい].mp3',6),(2,'顔[かお]','（名）脸','/static/audios/words/顔[かお].mp3',6),(3,'秋[あき]','（名）秋天','/static/audios/words/秋[あき].mp3',7),(4,'柿[かき]','（名）柿子','/static/audios/words/柿[かき].mp3',7),(5,'行く[いく]','（动）去','/static/audios/words/行く[いく].mp3',8),(6,'書く[かく]','（动）写','/static/audios/words/書く[かく].mp3',8),(7,'ケア[care]','（名）看护；照料','/static/audios/words/ケア[care].mp3',9),(8,'ここ','（代）这里','/static/audios/words/ここ.mp3',10),(9,'咲く[さく]','（花）开','/static/audios/words/咲く[さく].mp3',11),(10,'餌[えさ]','（名）鱼饵；诱饵','/static/audios/words/餌[えさ].mp3',11),(11,'牛[うし]','（名）牛','/static/audios/words/牛[うし].mp3',12),(12,'試合[しあい]','（名）比赛','/static/audios/words/試合[しあい].mp3',12),(13,'寿司[すし]','（名）寿司','/static/audios/words/寿司[すし].mp3',13),(14,'好き[すき]','（名、形动）喜欢','/static/audios/words/好き[すき].mp3',13),(15,'世界[せかい]','（名）世界','/static/audios/words/世界[せかい].mp3',14),(16,'席[せき]','（名）座位','/static/audios/words/席[せき].mp3',14),(17,'嘘[うそ]','（名）谎言','/static/audios/words/嘘[うそ].mp3',15),(18,'そこ','（代）那儿，那里','/static/audios/words/そこ.mp3',15),(19,'蛸[たこ]','（名）章鱼','/static/audios/words/蛸[たこ].mp3',16),(20,'高い[たかい]','（形）高的；贵的','/static/audios/words/高い[たかい].mp3',16),(21,'父[ちち]','（名）父亲','/static/audios/words/父[ちち].mp3',17),(22,'口[くち]','（名）嘴巴','/static/audios/words/口[くち].mp3',17),(23,'机[つくえ]','（名）书桌','/static/audios/words/机[つくえ].mp3',18),(24,'暑い[あつい]','（形）热的','/static/audios/words/暑い[あつい].mp3',18),(25,'手[て]','（名）手','/static/audios/words/手[て].mp3',19),(26,'地下鉄[ちかてつ]','（名）地铁','/static/audios/words/地下鉄[ちかてつ].mp3',19),(27,'時[とき]','（名）时间，时候','/static/audios/words/時[とき].mp3',20),(28,'テスト[test]','（名）考试','/static/audios/words/テスト[test].mp3',20),(29,'夏[なつ]','（名）夏天','/static/audios/words/夏[なつ].mp3',21),(30,'貴方[あなた]','（代）你','/static/audios/words/貴方[あなた].mp3',21),(31,'肉[にく]','（名）肉','/static/audios/words/肉[にく].mp3',22),(32,'鬼[おに]','（名）鬼','/static/audios/words/鬼[おに].mp3',22),(33,'犬[いぬ]','（名）狗','/static/audios/words/犬[いぬ].mp3',23),(34,'死ぬ[しぬ]','（动）死亡','/static/audios/words/死ぬ[しぬ].mp3',23),(35,'猫[ねこ]','（名）猫','/static/audios/words/猫[ねこ].mp3',24),(36,'稲[いね]','（名）稻子','/static/audios/words/稲[いね].mp3',24),(37,'布[ぬの]','（名）布','/static/audios/words/布[ぬの].mp3',25),(38,'残す[のこす]','（动）留下','/static/audios/words/残す[のこす].mp3',25),(39,'花[はな]','（名）花','/static/audios/words/花[はな].mp3',26),(40,'母[はは]','（名）母亲','/static/audios/words/母[はは].mp3',26),(41,'日[ひ]','（名）太阳','/static/audios/words/日[ひ].mp3',27),(42,'一つ[ひとつ]','（名）一个','/static/audios/words/一つ[ひとつ].mp3',27),(43,'船[ふね]','（名）船','/static/audios/words/船[ふね].mp3',28),(44,'服[ふく]','（名）衣服','/static/audios/words/服[ふく].mp3',28),(45,'下手[へた]','（形动）笨拙；不擅长','/static/audios/words/下手[へた].mp3',29),(46,'臍[へそ]','（名）肚脐','/static/audios/words/臍[へそ].mp3',29),(47,'細しい[ほそい]','（形）细的','/static/audios/words/細しい[ほそい].mp3',30),(48,'阿呆[アホ]','（名）白痴','/static/audios/words/阿呆[アホ].mp3',30),(49,'町[まち]','（名）城市','/static/audios/words/町[まち].mp3',31),(50,'旨し[うまい]','（形）美味的，很棒的','/static/audios/words/旨し[うまい].mp3',31),(51,'店[みせ]','（名）商店','/static/audios/words/店[みせ].mp3',32),(52,'味噌[みそ]','（名）酱','/static/audios/words/味噌[みそ].mp3',32),(53,'胸[むね]','（名）胸，心胸','/static/audios/words/胸[むね].mp3',33),(54,'昔[むかし]','（名）过去','/static/audios/words/昔[むかし].mp3',33),(55,'目[め]','（名）眼睛','/static/audios/words/目[め].mp3',34),(56,'飯[めし]','（名）饭','/static/audios/words/飯[めし].mp3',34),(57,'桃[もも]','（名）桃子','/static/audios/words/桃[もも].mp3',35),(58,'餅[もち]','（名）年糕','/static/audios/words/餅[もち].mp3',35),(59,'野菜[やさい]','（名）蔬菜','/static/audios/words/野菜[やさい].mp3',36),(60,'休み[やすみ]','（名）休息','/static/audios/words/休み[やすみ].mp3',36),(61,'雪[ゆき]','（名）雪','/static/audios/words/雪[ゆき].mp3',37),(62,'冬[ふゆ]','（名）冬天','/static/audios/words/冬[ふゆ].mp3',37),(63,'良い[よい]','（形）好的','/static/audios/words/良い[よい].mp3',38),(64,'読む[よむ]','（动）阅读','/static/audios/words/読む[よむ].mp3',38),(65,'楽[らく]','（名）快乐，舒适','/static/audios/words/楽[らく].mp3',39),(66,'未来[みらい]','（名）未来','/static/audios/words/未来[みらい].mp3',39),(67,'理解[りかい]','（名、动）理解','/static/audios/words/理解[りかい].mp3',40),(68,'リスト[list]','（名）列表','/static/audios/words/リスト[list].mp3',40),(69,'留守[るす]','（名、动）不在家','/static/audios/words/留守[るす].mp3',41),(70,'ホテル[hotel]','（代）宾馆','/static/audios/words/ホテル[hotel].mp3',41),(71,'歴史[れきし]','（名）历史','/static/audios/words/歴史[れきし].mp3',42),(72,'トイレ[toilet]','（名）洗手间','/static/audios/words/トイレ[toilet].mp3',42),(73,'色[いろ]','（名）颜色','/static/audios/words/色[いろ].mp3',43),(74,'広い[ひろい]','（形）宽阔的','/static/audios/words/広い[ひろい].mp3',43),(75,'私[わたし]','（代）我','/static/audios/words/私[わたし].mp3',44),(76,'悪い[わるい]','（形）不好的','/static/audios/words/悪い[わるい].mp3',44),(77,'天気[てんき]','（名）天气','/static/audios/words/天気[てんき].mp3',NULL),(78,'日本[にほん]','（名）日本','/static/audios/words/日本[にほん].mp3',46),(79,'こんにちは','（问候语）你好','/static/audios/words/こんにちは.mp3',46),(80,'すみません','（道歉语）对不起','/static/audios/words/すみません.mp3',46),(81,'雅楽[ががく]','（名）雅乐，宫廷古乐','/static/audios/words/雅楽[ががく].mp3',47),(82,'技師[ぎし]','（名）技师','/static/audios/words/技師[ぎし].mp3',48),(83,'鍵[かぎ]','（名）钥匙','/static/audios/words/鍵[かぎ].mp3',48),(84,'具合[ぐあい]','（名）情况','/static/audios/words/具合[ぐあい].mp3',49),(85,'家具[かぐ]','（名）家具','/static/audios/words/家具[かぐ].mp3',49),(86,'元気[げんき]','（形动）精力；健康','/static/audios/words/元気[げんき].mp3',50),(87,'髭[ひげ]','（名）胡子','/static/audios/words/髭[ひげ].mp3',50),(88,'ご飯[ごはん]','（名）饭','/static/audios/words/ご飯[ごはん].mp3',51),(89,'林檎[りんご]','（名）苹果','/static/audios/words/林檎[りんご].mp3',51),(90,'座席[ざせき]','（名）座位','/static/audios/words/座席[ざせき].mp3',52),(91,'事故[じこ]','（名）事故','/static/audios/words/事故[じこ].mp3',53),(92,'地図[ちず]','（名）地图','/static/audios/words/地図[ちず].mp3',54),(93,'ゼミ[Seminar]','(名)小组讨论','/static/audios/words/ゼミ[Seminar].mp3',55),(94,'俗語[ぞくご]','（名）俗语','/static/audios/words/俗語[ぞくご].mp3',56),(95,'大学[だいがく]','（名）大学','/static/audios/words/大学[だいがく].mp3',57),(96,'縮む[ちぢむ]','（动）缩小','/static/audios/words/縮む[ちぢむ].mp3',58),(97,'続く[つづく]','（动）继续','/static/audios/words/続く[つづく].mp3',59),(98,'電話[でんわ]','(名)电话','/static/audios/words/電話[でんわ].mp3',60),(99,'ドア[door]','(名)门','/static/audios/words/ドア[door].mp3',61),(100,'場合[ばあい]','(名)场合','/static/audios/words/場合[ばあい].mp3',62),(101,'ビザ[visa]','(名)签证','/static/audios/words/ビザ[visa].mp3',68),(102,'豚[ぶた]','(名)猪','/static/audios/words/豚[ぶた].mp3',64),(103,'便利[べんり]','(名·形动)方便','/static/audios/words/便利[べんり].mp3',65),(104,'僕[ぼく]','(名)我（男子用语）','/static/audios/words/僕[ぼく].mp3',66),(105,'パンダ[panda]','(名)熊猫','/static/audios/words/パンダ[panda].mp3',67),(106,'ピンク[pink]','(名)粉色','/static/audios/words/ピンク[pink].mp3',63),(107,'プラス[plus]','(名)加号；正数','/static/audios/words/プラス[plus].mp3',69),(108,'ペン[pen]','(名)钢笔','/static/audios/words/ペン[pen].mp3',70),(109,'ポスト[post]','(名)邮筒；信箱','/static/audios/words/ポスト[post].mp3',71),(110,'客[きゃく]','(名)客人','/static/audios/words/客[きゃく].mp3',72),(111,'野球[やきゅう]','(名)棒球','/static/audios/words/野球[やきゅう].mp3',73),(112,'去年[きょねん]','(名)去年','/static/audios/words/去年[きょねん].mp3',74),(113,'逆[ぎゃく]','(名)逆，倒，颠倒','/static/audios/words/逆[ぎゃく].mp3',75),(114,'牛肉[ぎゅうにく]','(名)牛肉','/static/audios/words/牛肉[ぎゅうにく].mp3',76),(115,'餃子[ぎょうざ]','(名)饺子','/static/audios/words/餃子[ぎょうざ].mp3',77),(116,'写真[しゃしん]','(名)照片','/static/audios/words/写真[しゃしん].mp3',78),(117,'宿題[しゅくだい]','(名)课外作业','/static/audios/words/宿題[しゅくだい].mp3',79),(118,'辞書[じしょ]','(名)词典','/static/audios/words/辞書[じしょ].mp3',80),(119,'ジャズ','(名)爵士乐','/static/audios/words/ジャズ.mp3',81),(120,'塾[じゅく]','(名)补习学校','/static/audios/words/塾[じゅく].mp3',82),(121,'彼女[かのじょ]','(代)她','/static/audios/words/彼女[かのじょ].mp3',83),(122,'玩具[おもちゃ]','(名)玩具','/static/audios/words/玩具[おもちゃ].mp3',84),(123,'中国[ちゅうごく]','(名)中国','/static/audios/words/中国[ちゅうごく].mp3',85),(124,'チョーク[chalk]','(名)粉笔','/static/audios/words/チョーク[chalk].mp3',86),(125,'二ャーニャー','(副)喵呜，猫叫声','/static/audios/words/二ャーニャー.mp3',87),(126,'ニュース[news]','(名)新闻','/static/audios/words/ニュース[news].mp3',88),(127,'如実[にょじつ]','(名)真实，如实','/static/audios/words/如実[にょじつ].mp3',89),(128,'百[ひゃく]','(名)百','/static/audios/words/百[ひゃく].mp3',90),(129,'ヒューマン','(名·形动)人道的','/static/audios/words/ヒューマン.mp3',92),(130,'評判[ひょうばん]','(名)名声，有名','/static/audios/words/評判[ひょうばん].mp3',92),(131,'びゃっこ','(名)白虎，四神之一','/static/audios/words/びゃっこ.mp3',93),(132,'ビュッフエ','(名)自助餐，冷餐会','/static/audios/words/ビュッフエ.mp3',94),(133,'病院[びょういん]','(名)医院','/static/audios/words/病院[びょういん].mp3',95),(134,'六百[ろっぴゃく]','(数)六百','/static/audios/words/六百[ろっぴゃく].mp3',96),(135,'ピュア','(形容)纯洁，纯粹','/static/audios/words/ピュア.mp3',97),(136,'ぴょこぴょこ','(副)一个劲（点头）','/static/audios/words/ぴょこぴょこ.mp3',98),(137,'動脈[どうみゃく]','(名)动脉','/static/audios/words/動脈[どうみゃく].mp3',99),(138,'ミュージカル','(名)音乐剧，音乐的','/static/audios/words/ミュージカル.mp3',100),(139,'明日[みょうにち]','(名)明天，明日','/static/audios/words/明日[みょうにち].mp3',101),(140,'略[りゃく]','(名)省略','/static/audios/words/略[りゃく].mp3',102),(141,'留学[りゅうがく]','(名)留学','/static/audios/words/留学[りゅうがく].mp3',103),(142,'旅行[りょこう]','(名・动)旅行','/static/audios/words/旅行[りょこう].mp3',104),(143,'お母さん[おかあさん]','(名)妈妈','/static/audios/words/お母さん[おかあさん].mp3',NULL),(144,'おじいさん','(名)爷爷；姥爷','/static/audios/words/おじいさん.mp3',NULL),(145,'数学[すうがく]','(名)数学','/static/audios/words/数学[すうがく].mp3',NULL),(146,'先生[せんせい]','(名)老师','/static/audios/words/先生[せんせい].mp3',NULL),(147,'姉さん[ねえさん]','(名)姐姐','/static/audios/words/姉さん[ねえさん].mp3',NULL),(148,'お父さん[おとうさん]','(名)爸爸','/static/audios/words/お父さん[おとうさん].mp3',NULL),(149,'大きい[おおきい]','(形)大','/static/audios/words/大きい[おおきい].mp3',NULL),(150,'ケーキ[cake]','(名)蛋糕','/static/audios/words/ケーキ[cake].mp3',NULL),(151,'スープ[soup]','(名)汤','/static/audios/words/スープ[soup].mp3',NULL),(152,'合作[がっさく]','(名・动)合作','/static/audios/words/合作[がっさく].mp3',NULL),(153,'欠席[けっせき]','(名・动)缺席','/static/audios/words/欠席[けっせき].mp3',NULL),(154,'切手[きって]','(名)邮票','/static/audios/words/切手[きって].mp3',NULL),(155,'切符[きっぷ]','(名)票','/static/audios/words/切符[きっぷ].mp3',NULL),(156,'はっきり','(副·动)清楚地','/static/audios/words/はっきり.mp3',NULL),(157,'いっぱい','(副)很多；满满的','/static/audios/words/いっぱい.mp3',NULL),(158,'ポット[pot]','(名)壶；热水瓶','/static/audios/words/ポット[pot].mp3',NULL),(159,'雑誌[ざっし]','(名)杂志','/static/audios/words/雑誌[ざっし].mp3',NULL);
/*!40000 ALTER TABLE `api_word` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auth_group`
--

DROP TABLE IF EXISTS `auth_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_group_permissions` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `group_id` int NOT NULL,
  `permission_id` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
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
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auth_permission` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auth_permission`
--

LOCK TABLES `auth_permission` WRITE;
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` VALUES (1,'Can add log entry',1,'add_logentry'),(2,'Can change log entry',1,'change_logentry'),(3,'Can delete log entry',1,'delete_logentry'),(4,'Can view log entry',1,'view_logentry'),(5,'Can add permission',2,'add_permission'),(6,'Can change permission',2,'change_permission'),(7,'Can delete permission',2,'delete_permission'),(8,'Can view permission',2,'view_permission'),(9,'Can add group',3,'add_group'),(10,'Can change group',3,'change_group'),(11,'Can delete group',3,'delete_group'),(12,'Can view group',3,'view_group'),(13,'Can add content type',4,'add_contenttype'),(14,'Can change content type',4,'change_contenttype'),(15,'Can delete content type',4,'delete_contenttype'),(16,'Can view content type',4,'view_contenttype'),(17,'Can add session',5,'add_session'),(18,'Can change session',5,'change_session'),(19,'Can delete session',5,'delete_session'),(20,'Can view session',5,'view_session'),(21,'Can add anime',6,'add_anime'),(22,'Can change anime',6,'change_anime'),(23,'Can delete anime',6,'delete_anime'),(24,'Can view anime',6,'view_anime'),(25,'Can add avatar',7,'add_avatar'),(26,'Can change avatar',7,'change_avatar'),(27,'Can delete avatar',7,'delete_avatar'),(28,'Can view avatar',7,'view_avatar'),(29,'Can add category',8,'add_category'),(30,'Can change category',8,'change_category'),(31,'Can delete category',8,'delete_category'),(32,'Can view category',8,'view_category'),(33,'Can add chapter',9,'add_chapter'),(34,'Can change chapter',9,'change_chapter'),(35,'Can delete chapter',9,'delete_chapter'),(36,'Can view chapter',9,'view_chapter'),(37,'Can add character',10,'add_character'),(38,'Can change character',10,'change_character'),(39,'Can delete character',10,'delete_character'),(40,'Can view character',10,'view_character'),(41,'Can add word',11,'add_word'),(42,'Can change word',11,'change_word'),(43,'Can delete word',11,'delete_word'),(44,'Can view word',11,'view_word'),(45,'Can add user',12,'add_user'),(46,'Can change user',12,'change_user'),(47,'Can delete user',12,'delete_user'),(48,'Can view user',12,'view_user'),(49,'Can add anime category',13,'add_animecategory'),(50,'Can change anime category',13,'change_animecategory'),(51,'Can delete anime category',13,'delete_animecategory'),(52,'Can view anime category',13,'view_animecategory');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_admin_log`
--

DROP TABLE IF EXISTS `django_admin_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_admin_log` (
  `id` int NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int DEFAULT NULL,
  `user_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_api_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_api_user_id` FOREIGN KEY (`user_id`) REFERENCES `api_user` (`id`),
  CONSTRAINT `django_admin_log_chk_1` CHECK ((`action_flag` >= 0))
) ENGINE=InnoDB AUTO_INCREMENT=205 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_admin_log`
--

LOCK TABLES `django_admin_log` WRITE;
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
INSERT INTO `django_admin_log` VALUES (1,'2022-12-06 14:30:15.617030','1','清音',1,'[{\"added\": {}}]',8,1),(2,'2022-12-06 14:30:20.427344','2','浊音',1,'[{\"added\": {}}]',8,1),(3,'2022-12-06 14:30:26.809600','3','拗音',1,'[{\"added\": {}}]',8,1),(4,'2022-12-06 14:30:47.876134','4','导学',1,'[{\"added\": {}}]',8,1),(5,'2022-12-06 14:38:22.338602','1','第一章 あ い う え お',1,'[{\"added\": {}}]',9,1),(6,'2022-12-06 14:38:37.456745','2','第二章 か き く け こ',1,'[{\"added\": {}}]',9,1),(7,'2022-12-06 14:38:52.380871','3','第三章 さ し す せ そ',1,'[{\"added\": {}}]',9,1),(8,'2022-12-06 14:39:34.783520','4','第四章 た ち つ て と',1,'[{\"added\": {}}]',9,1),(9,'2022-12-06 14:39:47.099148','5','第五章 な に ぬ ね の',1,'[{\"added\": {}}]',9,1),(10,'2022-12-06 14:40:02.834420','6','第六章 は ひ ふ へ ほ',1,'[{\"added\": {}}]',9,1),(11,'2022-12-06 14:40:14.885994','7','第七章 ま み む め も',1,'[{\"added\": {}}]',9,1),(12,'2022-12-06 14:40:26.840315','8','第八章 や ゆ よ',1,'[{\"added\": {}}]',9,1),(13,'2022-12-06 14:40:38.245910','9','第九章  ら り る れ ろ',1,'[{\"added\": {}}]',9,1),(14,'2022-12-06 14:40:53.812468','10','第十章 わ を',1,'[{\"added\": {}}]',9,1),(15,'2022-12-06 14:41:13.355336','11','第十一章 ん',1,'[{\"added\": {}}]',9,1),(16,'2022-12-06 14:41:32.932813','12','第十二章 が ぎ ぐ げ ご',1,'[{\"added\": {}}]',9,1),(17,'2022-12-06 14:41:43.186254','13','第十三章 ざ じ ず ぜ ぞ',1,'[{\"added\": {}}]',9,1),(18,'2022-12-06 14:41:55.082770','14','第十四章 だ ぢ づ で ど',1,'[{\"added\": {}}]',9,1),(19,'2022-12-06 14:42:04.034401','15','第十五章 ば び ぶ べ ぼ',1,'[{\"added\": {}}]',9,1),(20,'2022-12-06 14:42:15.684860','16','第十六章 ぱ ぴ ぷ ぺ ぽ',1,'[{\"added\": {}}]',9,1),(21,'2022-12-06 14:42:37.010231','17','第十七章 きゃ きゅ きょ',1,'[{\"added\": {}}]',9,1),(22,'2022-12-06 14:43:00.599947','18','第十八章 ぎゃ ぎゅ ぎょ',1,'[{\"added\": {}}]',9,1),(23,'2022-12-06 14:43:13.034336','19','第十九章 しゃ しゅ しょ',1,'[{\"added\": {}}]',9,1),(24,'2022-12-06 14:43:23.287604','20','第二十章 じゃ じゅ じょ',1,'[{\"added\": {}}]',9,1),(25,'2022-12-06 14:43:35.053154','21','第二十一章 ちゃ ちゅ ちょ',1,'[{\"added\": {}}]',9,1),(26,'2022-12-06 14:44:04.108907','22','第二十二章 にゃ にゅ にょ',1,'[{\"added\": {}}]',9,1),(27,'2022-12-06 14:44:31.780844','23','第二十三章 ひゃ ひゅ ひょ',1,'[{\"added\": {}}]',9,1),(28,'2022-12-06 14:44:42.628357','24','第二十四章 びゃ びゅ びょ',1,'[{\"added\": {}}]',9,1),(29,'2022-12-06 14:44:59.881586','25','第二十五章 ぴゃ ぴゅ ぴょ',1,'[{\"added\": {}}]',9,1),(30,'2022-12-06 14:45:11.560407','26','第二十六章 みゃ みゅ みょ',1,'[{\"added\": {}}]',9,1),(31,'2022-12-06 14:45:24.906972','27','第二十七章 りゃ りゅ りょ',1,'[{\"added\": {}}]',9,1),(32,'2022-12-06 15:14:48.014852','1','あ  ア',2,'[{\"changed\": {\"fields\": [\"\\u5b57\\u7b26\\u53d1\\u97f3\\u5730\\u5740\", \"\\u53d1\\u97f3\\u6280\\u5de7\\u56fe\\u7247\\u5730\\u5740\", \"\\u540d\\u573a\\u9762\\u6587\\u5b57\"]}}]',10,1),(33,'2022-12-06 15:15:14.153366','2','い  イ',2,'[{\"changed\": {\"fields\": [\"\\u5b57\\u7b26\\u53d1\\u97f3\\u5730\\u5740\", \"\\u540d\\u573a\\u9762\\u6587\\u5b57\"]}}]',10,1),(34,'2022-12-06 15:15:22.510760','3','う  ウ',2,'[{\"changed\": {\"fields\": [\"\\u5b57\\u7b26\\u53d1\\u97f3\\u5730\\u5740\", \"\\u540d\\u573a\\u9762\\u6587\\u5b57\"]}}]',10,1),(35,'2022-12-06 15:15:34.549577','4','え  エ',2,'[{\"changed\": {\"fields\": [\"\\u5b57\\u7b26\\u53d1\\u97f3\\u5730\\u5740\", \"\\u540d\\u573a\\u9762\\u6587\\u5b57\"]}}]',10,1),(36,'2022-12-06 15:15:59.103201','5','お  オ',2,'[{\"changed\": {\"fields\": [\"\\u5b57\\u7b26\\u53d1\\u97f3\\u5730\\u5740\", \"\\u53d1\\u97f3\\u6280\\u5de7\\u56fe\\u7247\\u5730\\u5740\", \"\\u540d\\u573a\\u9762\\u6587\\u5b57\"]}}]',10,1),(37,'2022-12-06 15:16:19.102788','4','え  エ',2,'[{\"changed\": {\"fields\": [\"\\u5b57\\u7b26\\u53d1\\u97f3\\u5730\\u5740\", \"\\u53d1\\u97f3\\u6280\\u5de7\\u56fe\\u7247\\u5730\\u5740\"]}}]',10,1),(38,'2022-12-06 15:16:36.668570','3','う  ウ',2,'[{\"changed\": {\"fields\": [\"\\u5b57\\u7b26\\u53d1\\u97f3\\u5730\\u5740\", \"\\u53d1\\u97f3\\u6280\\u5de7\\u56fe\\u7247\\u5730\\u5740\"]}}]',10,1),(39,'2022-12-06 15:16:51.054482','2','い  イ',2,'[{\"changed\": {\"fields\": [\"\\u5b57\\u7b26\\u53d1\\u97f3\\u5730\\u5740\", \"\\u53d1\\u97f3\\u6280\\u5de7\\u56fe\\u7247\\u5730\\u5740\"]}}]',10,1),(40,'2022-12-07 09:06:55.480438','142','旅行[りょこう]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(41,'2022-12-07 09:07:55.036919','1','赤い[あかい]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(42,'2022-12-07 09:08:13.573528','2','顔[かお]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(43,'2022-12-07 09:08:28.731680','1','赤い[あかい]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(44,'2022-12-07 09:08:35.785279','3','秋[あき]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(45,'2022-12-07 09:08:49.266690','4','柿[かき]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(46,'2022-12-07 09:08:59.237004','5','行く[いく]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(47,'2022-12-07 09:09:07.489725','6','書く[かく]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(48,'2022-12-07 09:09:37.350131','7','ケア[care]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(49,'2022-12-07 09:09:47.553810','8','ここ',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(50,'2022-12-07 09:09:57.269051','9','咲く[さく]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(51,'2022-12-07 09:10:08.532619','10','餌[えさ]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(52,'2022-12-07 09:10:18.993430','11','牛[うし]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(53,'2022-12-07 09:10:36.851333','12','試合[しあい]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(54,'2022-12-07 09:11:35.852658','13','寿司[すし]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(55,'2022-12-07 09:11:54.737910','14','好き[すき]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(56,'2022-12-07 09:12:18.223621','15','世界[せかい]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(57,'2022-12-07 09:12:32.710602','16','席[せき]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(58,'2022-12-07 09:12:47.626653','17','嘘[うそ]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(59,'2022-12-07 09:13:03.986507','18','そこ',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(60,'2022-12-07 09:13:21.038606','19','蛸[たこ]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(61,'2022-12-07 09:13:35.199745','20','高い[たかい]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(62,'2022-12-07 09:14:31.626589','21','父[ちち]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(63,'2022-12-07 09:14:39.737939','22','口[くち]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(64,'2022-12-07 09:14:51.628119','23','机[つくえ]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(65,'2022-12-07 09:15:02.606001','24','暑い[あつい]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(66,'2022-12-07 09:15:15.445433','25','手[て]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(67,'2022-12-07 09:15:26.063783','26','地下鉄[ちかてつ]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(68,'2022-12-07 09:15:42.729987','27','時[とき]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(69,'2022-12-07 09:15:51.756472','28','テスト[test]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(70,'2022-12-07 09:16:17.209590','29','夏[なつ]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(71,'2022-12-07 09:16:28.435298','30','貴方[あなた]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(72,'2022-12-07 09:16:42.580519','31','肉[にく]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(73,'2022-12-07 09:16:55.569567','32','鬼[おに]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(74,'2022-12-07 09:17:18.722808','33','犬[いぬ]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(75,'2022-12-07 09:17:36.151625','34','死ぬ[しぬ]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(76,'2022-12-07 09:17:53.768268','35','猫[ねこ]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(77,'2022-12-07 09:18:05.966528','36','稲[いね]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(78,'2022-12-07 09:18:18.714981','37','布[ぬの]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(79,'2022-12-07 09:18:27.455295','38','残す[のこす]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(80,'2022-12-07 09:18:48.031806','39','花[はな]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(81,'2022-12-07 09:19:01.845284','40','母[はは]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(82,'2022-12-07 09:19:11.864162','41','日[ひ]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(83,'2022-12-07 09:19:25.532517','42','一つ[ひとつ]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(84,'2022-12-07 09:19:38.052908','43','船[ふね]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(85,'2022-12-07 09:19:45.402279','44','服[ふく]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(86,'2022-12-07 09:19:57.528311','45','下手[へた]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(87,'2022-12-07 09:20:16.015833','46','臍[へそ]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(88,'2022-12-07 09:20:40.548768','47','細しい[ほそい]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(89,'2022-12-07 09:20:46.264622','48','阿呆[アホ]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(90,'2022-12-07 09:20:56.864747','49','町[まち]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(91,'2022-12-07 09:21:07.798017','50','旨し[うまい]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(92,'2022-12-07 09:21:21.564265','51','店[みせ]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(93,'2022-12-07 09:21:29.829917','52','味噌[みそ]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(94,'2022-12-07 09:21:41.689699','53','胸[むね]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(95,'2022-12-07 09:21:52.988264','54','昔[むかし]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(96,'2022-12-07 09:22:04.152654','55','目[め]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(97,'2022-12-07 09:22:11.928878','56','飯[めし]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(98,'2022-12-07 09:22:21.520713','57','桃[もも]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(99,'2022-12-07 09:22:29.138157','58','餅[もち]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(100,'2022-12-07 09:22:38.219605','59','野菜[やさい]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(101,'2022-12-07 09:22:58.169536','60','休み[やすみ]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(102,'2022-12-07 09:23:11.922994','61','雪[ゆき]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(103,'2022-12-07 09:23:21.899458','62','冬[ふゆ]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(104,'2022-12-07 09:23:34.401053','63','良い[よい]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(105,'2022-12-07 09:23:48.348672','64','読む[よむ]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(106,'2022-12-07 09:24:05.055913','65','楽[らく]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(107,'2022-12-07 09:24:31.988245','66','未来[みらい]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(108,'2022-12-07 09:24:41.363331','67','理解[りかい]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(109,'2022-12-07 09:24:55.506227','68','リスト[list]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(110,'2022-12-07 09:25:10.051233','69','留守[るす]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(111,'2022-12-07 09:26:05.849252','70','ホテル[hotel]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(112,'2022-12-07 09:26:17.150445','71','歴史[れきし]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(113,'2022-12-07 09:26:27.692597','72','トイレ[toilet]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(114,'2022-12-07 09:26:55.732817','73','色[いろ]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(115,'2022-12-07 09:27:18.559073','74','広い[ひろい]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(116,'2022-12-07 09:27:38.068459','75','私[わたし]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(117,'2022-12-07 09:27:57.701367','76','悪い[わるい]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(118,'2022-12-07 09:28:29.316470','78','日本[にほん]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(119,'2022-12-07 09:28:40.030323','78','日本[にほん]',2,'[]',11,1),(120,'2022-12-07 09:28:56.287285','79','こんにちは',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(121,'2022-12-07 09:29:10.673466','80','すみません',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(122,'2022-12-07 09:29:17.778393','81','雅楽[ががく]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(123,'2022-12-07 09:29:37.582969','82','技師[ぎし]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(124,'2022-12-07 09:29:51.050635','83','鍵[かぎ]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(125,'2022-12-07 09:30:07.611519','84','具合[ぐあい]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(126,'2022-12-07 09:30:23.843748','85','家具[かぐ]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(127,'2022-12-07 09:30:45.580805','86','元気[げんき]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(128,'2022-12-07 09:31:04.929073','87','髭[ひげ]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(129,'2022-12-07 09:31:17.641673','88','ご飯[ごはん]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(130,'2022-12-07 09:31:35.135491','89','林檎[りんご]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(131,'2022-12-07 09:31:56.333231','90','座席[ざせき]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(132,'2022-12-07 09:32:13.767240','91','事故[じこ]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(133,'2022-12-07 09:32:37.282409','92','地図[ちず]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(134,'2022-12-07 09:32:58.326559','93','ゼミ[Seminar]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(135,'2022-12-07 09:33:22.241583','94','俗語[ぞくご]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(136,'2022-12-07 09:33:48.644267','95','大学[だいがく]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(137,'2022-12-07 09:34:09.282642','96','縮む[ちぢむ]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(138,'2022-12-07 09:34:26.177903','97','続く[つづく]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(139,'2022-12-07 09:34:42.609265','98','電話[でんわ]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(140,'2022-12-07 09:34:59.631183','99','ドア[door]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(141,'2022-12-07 09:35:14.819605','100','場合[ばあい]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(142,'2022-12-07 09:35:35.192668','101','ビザ[visa]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(143,'2022-12-07 09:36:01.896515','102','豚[ぶた]',2,'[{\"changed\": {\"fields\": [\"\\u5355\\u8bcd\\u540d\", \"\\u5355\\u8bcd\\u53d1\\u97f3\\u5730\\u5740\", \"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(144,'2022-12-07 09:36:15.982679','103','便利[べんり]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(145,'2022-12-07 09:36:29.541232','109','ポスト[post]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(146,'2022-12-07 09:36:59.221484','104','僕[ぼく]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(147,'2022-12-07 09:37:15.749955','105','パンダ[panda]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(148,'2022-12-07 09:37:34.817118','106','ピンク[pink]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(149,'2022-12-07 09:37:49.002190','107','プラス[plus]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(150,'2022-12-07 09:38:03.972581','108','ペン[pen]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(151,'2022-12-07 09:38:22.188476','109','ポスト[post]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(152,'2022-12-07 09:39:22.332375','110','客[きゃく]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(153,'2022-12-07 09:39:36.169206','111','野球[やきゅう]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(154,'2022-12-07 09:39:49.703346','112','去年[きょねん]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(155,'2022-12-07 09:40:05.785629','113','逆[ぎゃく]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(156,'2022-12-07 09:40:17.050754','114','牛肉[ぎゅうにく]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(157,'2022-12-07 09:40:25.722962','115','餃子[ぎょうざ]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(158,'2022-12-07 09:40:39.678070','116','写真[しゃしん]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(159,'2022-12-07 09:40:49.134529','117','宿題[しゅくだい]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(160,'2022-12-07 09:41:04.552254','118','辞書[じしょ]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(161,'2022-12-07 09:41:21.429290','119','ジャズ',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(162,'2022-12-07 09:41:45.913513','120','塾[じゅく]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(163,'2022-12-07 09:42:00.350558','121','彼女[かのじょ]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(164,'2022-12-07 09:42:12.847945','122','玩具[おもちゃ]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(165,'2022-12-07 09:42:26.917487','123','中国[ちゅうごく]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(166,'2022-12-07 09:42:42.527192','124','チョーク[chalk]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(167,'2022-12-07 09:42:53.095861','125','二ャーニャー',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(168,'2022-12-07 09:43:30.400321','126','ニュース[news]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(169,'2022-12-07 09:43:53.678895','127','如実[にょじつ]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(170,'2022-12-07 09:44:31.703598','128','百[ひゃく]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(171,'2022-12-07 09:44:40.421679','129','ヒューマン',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(172,'2022-12-07 09:44:54.626358','130','評判[ひょうばん]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(173,'2022-12-07 09:45:10.495602','131','びゃっこ',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(174,'2022-12-07 09:45:28.450468','132','ビュッフエ',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(175,'2022-12-07 09:45:45.110810','133','病院[びょういん]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(176,'2022-12-07 09:45:57.511615','134','六百[ろっぴゃく]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(177,'2022-12-07 09:46:08.094755','135','ピュア',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(178,'2022-12-07 09:46:16.740332','136','ぴょこぴょこ',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(179,'2022-12-07 09:46:37.672848','137','動脈[どうみゃく]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(180,'2022-12-07 09:46:48.653917','138','ミュージカル',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(181,'2022-12-07 09:47:21.409578','139','明日[みょうにち]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(182,'2022-12-07 09:47:30.614197','140','略[りゃく]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(183,'2022-12-07 09:47:39.220801','141','留学[りゅうがく]',2,'[{\"changed\": {\"fields\": [\"\\u4e94\\u5341\\u97f3\\u5b57\\u7b26\"]}}]',11,1),(184,'2022-12-08 02:06:15.648052','1','xiran',2,'[{\"changed\": {\"fields\": [\"Last login\", \"\\u5b66\\u4e60\\u8fc7\\u7684\\u7ae0\\u8282\"]}}]',12,1),(185,'2022-12-08 07:30:49.313057','1','幻界战线',1,'[{\"added\": {}}]',6,1),(186,'2022-12-08 08:18:12.302649','1','/media/user_avatar/tmpp91s8163.JPG',1,'[{\"added\": {}}]',7,1),(187,'2022-12-08 08:18:26.858872','2','小可爱',2,'[{\"changed\": {\"fields\": [\"Last login\", \"\\u7528\\u6237\\u5934\\u50cf\"]}}]',12,1),(188,'2022-12-08 08:33:44.277102','2','巨人',1,'[{\"added\": {}}]',6,1),(189,'2022-12-09 02:28:11.885222','1','xiran',2,'[{\"changed\": {\"fields\": [\"Last login\", \"\\u5b66\\u4e60\\u8fc7\\u7684\\u7ae0\\u8282\"]}}]',12,1),(190,'2022-12-11 05:09:31.797028','3','轻音少女',1,'[{\"added\": {}}]',6,1),(191,'2022-12-11 05:12:24.775514','4','孤独摇滚',1,'[{\"added\": {}}]',6,1),(192,'2022-12-11 05:13:08.599897','5','灵能百分百',1,'[{\"added\": {}}]',6,1),(193,'2022-12-11 05:13:58.155295','6','卡罗尔与特斯黛',1,'[{\"added\": {}}]',6,1),(194,'2022-12-11 06:51:51.077829','1','幻界战线',2,'[{\"changed\": {\"fields\": [\"\\u5c01\\u9762\"]}}]',6,1),(195,'2022-12-11 06:52:08.063651','2','巨人',2,'[{\"changed\": {\"fields\": [\"\\u5c01\\u9762\"]}}]',6,1),(196,'2022-12-12 07:59:36.685465','1','AnimeCategory object (1)',1,'[{\"added\": {}}]',13,1),(197,'2022-12-12 08:00:21.192970','2','科幻',1,'[{\"added\": {}}]',13,1),(198,'2022-12-14 08:59:37.958024','2','/media/user_avatar/R-C.7b9f3020f3c91e5f76b4df2e7ea25de1.jpeg',1,'[{\"added\": {}}]',7,1),(199,'2022-12-14 08:59:43.274267','3','/media/user_avatar/IMG_3296.JPG',1,'[{\"added\": {}}]',7,1),(200,'2022-12-14 08:59:47.870112','4','/media/user_avatar/005Qg1G9ly1h0ghpm4qhej30oc0ocwnd.jpg',1,'[{\"added\": {}}]',7,1),(201,'2022-12-14 08:59:56.752115','5','/media/user_avatar/005Qg1G9ly1h0ghplkrgtj30ik0ikjw5.jpg',1,'[{\"added\": {}}]',7,1),(202,'2022-12-15 03:41:30.436346','2','小可爱',2,'[{\"changed\": {\"fields\": [\"\\u5b66\\u4e60\\u8fc7\\u7684\\u7ae0\\u8282\"]}}]',12,1),(203,'2022-12-17 09:40:10.962344','3','xiaopang',2,'[{\"changed\": {\"fields\": [\"\\u5b66\\u4e60\\u8fc7\\u7684\\u7ae0\\u8282\"]}}]',12,1),(204,'2022-12-19 09:23:07.812751','7','冰海战记',1,'[{\"added\": {}}]',6,1);
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_content_type`
--

DROP TABLE IF EXISTS `django_content_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_content_type` (
  `id` int NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_content_type`
--

LOCK TABLES `django_content_type` WRITE;
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` VALUES (1,'admin','logentry'),(6,'api','anime'),(13,'api','animecategory'),(7,'api','avatar'),(8,'api','category'),(9,'api','chapter'),(10,'api','character'),(12,'api','user'),(11,'api','word'),(3,'auth','group'),(2,'auth','permission'),(4,'contenttypes','contenttype'),(5,'sessions','session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_migrations`
--

DROP TABLE IF EXISTS `django_migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_migrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_migrations`
--

LOCK TABLES `django_migrations` WRITE;
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` VALUES (1,'contenttypes','0001_initial','2022-12-06 14:12:54.663650'),(2,'contenttypes','0002_remove_content_type_name','2022-12-06 14:12:54.705120'),(3,'auth','0001_initial','2022-12-06 14:12:54.845625'),(4,'auth','0002_alter_permission_name_max_length','2022-12-06 14:12:54.880092'),(5,'auth','0003_alter_user_email_max_length','2022-12-06 14:12:54.887118'),(6,'auth','0004_alter_user_username_opts','2022-12-06 14:12:54.894436'),(7,'auth','0005_alter_user_last_login_null','2022-12-06 14:12:54.900367'),(8,'auth','0006_require_contenttypes_0002','2022-12-06 14:12:54.902580'),(9,'auth','0007_alter_validators_add_error_messages','2022-12-06 14:12:54.908386'),(10,'auth','0008_alter_user_username_max_length','2022-12-06 14:12:54.913953'),(11,'auth','0009_alter_user_last_name_max_length','2022-12-06 14:12:54.919363'),(12,'auth','0010_alter_group_name_max_length','2022-12-06 14:12:54.929985'),(13,'auth','0011_update_proxy_permissions','2022-12-06 14:12:54.936985'),(14,'auth','0012_alter_user_first_name_max_length','2022-12-06 14:12:54.941991'),(15,'api','0001_initial','2022-12-06 14:12:55.217117'),(16,'admin','0001_initial','2022-12-06 14:12:55.357867'),(17,'admin','0002_logentry_remove_auto_add','2022-12-06 14:12:55.370237'),(18,'admin','0003_logentry_add_action_flag_choices','2022-12-06 14:12:55.378561'),(19,'sessions','0001_initial','2022-12-06 14:12:55.391634'),(20,'api','0002_alter_word_pronounce_url','2022-12-07 08:46:03.261138'),(21,'api','0003_remove_character_scene_text_path_and_more','2022-12-07 12:11:34.547839'),(22,'api','0004_remove_user_mini_time_user_min_time','2022-12-11 03:32:51.180817'),(23,'api','0005_alter_user_learned_chapter_animecategory','2022-12-12 07:58:24.372963'),(24,'api','0006_alter_animecategory_options_user_status','2022-12-19 03:24:55.446079');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `django_session`
--

DROP TABLE IF EXISTS `django_session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `django_session`
--

LOCK TABLES `django_session` WRITE;
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` VALUES ('5s1qfxuuocabfqq3d1jer7on3avyatqu','.eJy9lk1v4jAQhv9KlTMUf8ZJb7t73uOeNhUaf0G0JEFO0qqq-O9rB6SFbIA0LZyMPcNr3mdsM-_REtpmvWxr45a5jp4iHM2O1ySoP6YMAdjmjy-5ea0ff779aOumKr4fYidfWEO99tkpszbVWhMeY5sgKuOUGi0SYuMYaWEtJ0IwKpHlyBJCcAqIs9RiAkxJmQbRwpRt7bV-v2dRCYXJoqeHLPq2zbNo5j_kqir3Sxbcg4W5yp3amH2wqLTZ1CF8-u0sa5lJmR84ZdgPqbA0zCQXfhCSxCPUW7fZxxagi7xceDYLtQYHqjFusc8BrX9dTPMJh1TpDGjl2kIO_OLrfnezhy_2uHsOYZPrEMUIkYEtOIHED7ElspuhOGgrISfygzIvjILGrCr3dpnhaeotOU412QdIr2rHtJsllKPPABwB7o7AxpvqA2ND2lQfn-ajYvgZQ3rqxR115u5z3D7nsA-RD2whOOkKRKg4oxae8fO0QvQyqS7jlpTGWujjiK9oecYp7Z5NpOzUS_gCDVwBdMi5F6KP2OojE0PasQ3aHIvukFLOwxWXaur9e62cvgysy7gpromW-riSIW0wKKiRhEzvLLZj-ortrbuK8Vb6YNL-Ah6QTySwPXfcvXeJ6v5Cku4k-2bx_z3rsGe9zs1Gz2HTXG39hFHsjEp4Muq5qlZn6uAb3MXKVe32Qhn-5YyswteYHqrUKKO9omDcX0C752j3F223wLs:1p7npa:x566K7-YjKSD308r80hWL5SEZ1sN0iLXt355mZoFshc','2023-01-04 01:23:38.296499'),('82yt1do49q5plgud1shdply8oy5k6c6p','.eJy9Vstym0AQ_BUVZ8ks-2DBNzvnHHMKLtXsS6IiQLWAXS6X_j27oFRsghAhVk4DO00P3bOvt2ALbbPftrW221wF90EUrN-PCZA_dOkTcMzvnnP9Ut99ff3S1k1VPJ5zHz7YQ7136JQakyqlMIsjkyAi4pRoxRNs4hgpbgzDnFMikGHIYIyjFBCjqYkwUClE6kkLXba14_r-lgUlFDoL7ldZ8HDMs2DtHnJZlf2QAbsysJG5lQfdJ4tK6UPt0x-_zrKW6pS6wAiNXEi5If5NMO4CFziewd7aQ58LQRV5GTpvQrkHC7LRNuwxoNS3SZgDnKHCalDStoUY-ePrek_r1SdrPD35tM6Vz0YI4ZESDEPiQmyw8IF0bwlhaKF_UOaFnvauh9zSt6WihoaRMW6i3jcDo9g3Q3JfiVGkls47aPSusq9Xpt0v1E3d-zeFQxPpSAnOcNcgTPgFNr8LXXbLZ6ed6hC3dGmuhKEd7AqX8zgl3apH0ixdhM_QwBWDzpj_ZdHfyBpaFo9xx8Zzs4h3k5Qw5pe4kEvX30tl1bRhHeKmdi2UNLSLj3GDRp4NJ3j5wXiccyweb30ozpcyNCYZDkQj9IkA2vsedftdIrsjJOlmsrvr_Fmz9jXrfa4PagOH5urNhWtJL7D4LaPeyGp3oQ_ufhbubNUeJ9rwGzOzC58jeqxTs4QOmhKhYZfS01Nw-gm10Vvi:1p35D7:YWN2UR2gan_wx-0BzlRUReRCfo7hFrwh9Htv_mmuUUI','2022-12-22 00:56:25.478163'),('h283ivb5um6l783rgnun70cji36vwpxu','.eJxVi0sKAjEQBe-StQwznS8udT1nCN2dDgniBzNRRLy7I7jQTS1evXqqiH0psTe5xprUVoHa_G6EfJDTR-ClDrcq9zbMj31vy_m4-7q_oGAr65thJCECBEuQvTasMQtLCDQaS8GuYD1l7xx5NMBBMyeA5CYRjU693kOrMrU:1p2Yn3:Aw6BylUjgLlBG5YfGCbnooISPFynANfkhLAU0UeJZCI','2022-12-20 14:19:21.155926'),('nmwwwk4yufym3oi8e7r9gqfqfoqwa5ol','.eJxVizsKAjEQQO-SWpZk8tux1NozhMlOhgTxg9lVRLy7Chbavs9DJVrmmpZeLqmxWiujVr8s07Qvx4-gcxuurdz6sLtvlz6fDpuv-xsq9fqu0YkgM4MPRkZtc0BbOI4gIWiOIh5idDZr8VoAwCBp71AMkJtyRvV8ARmBMYw:1p4vmh:TDcJZTyHdoCtg-fA82xi1wk0cutfFcPAGXhoJON7Vnw','2022-12-27 03:16:47.397621'),('oaaplommyg1oplglp9z2b41ndz8m617p','.eJxVi8sKwjAQRf9l1lKGkKdLXfsNYTqZkCA-ME1FSv_dCi50cxb33LNApD6V2Js8Yk2whwC7320kPsv1I-heh7nKsw2n17G36XY5fN1fUKiV7c2jC8pJctrlrIzyEtAQSmLt0WISxBzYbcxCbDx7RrHeBGszaqVgfQMvVzH1:1pLFU5:37nJVj_dOzsDshGYM-AnBPi7b2tk2Qi1LaM2zqCoDy4','2023-02-10 03:33:01.664590'),('soqmdephesdaluxry5kgixrrqf3wcq4q','.eJy9Vstym0AQ_BUVZ8ks-2DBNzvnHHMKLtXsS6IiQLWAXS6X_j27oFRsghAhVk4DO00P3bOvt2ALbbPftrW221wF90EUrN-PCZA_dOkTcMzvnnP9Ut99ff3S1k1VPJ5zHz7YQ7136JQakyqlMIsjkyAi4pRoxRNs4hgpbgzDnFMikGHIYIyjFBCjqYkwUClE6kkLXba14_r-lgUlFDoL7ldZ8HDMs2DtHnJZlf2QAbsysJG5lQfdJ4tK6UPt0x-_zrKW6pS6wAiNXEi5If5NMO4CFziewd7aQ58LQRV5GTpvQrkHC7LRNuwxoNS3SZgDnKHCalDStoUY-ePrek_r1SdrPD35tM6Vz0YI4ZESDEPiQmyw8IF0bwlhaKF_UOaFnvauh9zSt6WihoaRMW6i3jcDo9g3Q3JfiVGkls47aPSusq9Xpt0v1E3d-zeFQxPpSAnOcNcgTPgFNr8LXXbLZ6ed6hC3dGmuhKEd7AqX8zgl3apH0ixdhM_QwBWDzpj_ZdHfyBpaFo9xx8Zzs4h3k5Qw5pe4kEvX30tl1bRhHeKmdi2UNLSLj3GDRp4NJ3j5wXiccyweb30ozpcyNCYZDkQj9IkA2vsedftdIrsjJOlmsrvr_Fmz9jXrfa4PagOH5urNhWtJL7D4LaPeyGp3oQ_ufhbubNUeJ9rwGzOzC58jeqxTs4QOmhKhYZfS01Nw-gm10Vvi:1p3caL:SpyYttpcIghvybtGmBmnLmXKM-iX_AqIv3_XYLUHeNU','2022-12-23 12:34:37.503772'),('sufs5f0cqkafu3xfgt18m9imcqj69azi','.eJy9Vstym0AQ_BUVZ8ks-2DBNzvnHHMKLtXsS6IiQLWAXS6X_j27oFRsghAhVk4DO00P3bOvt2ALbbPftrW221wF90EUrN-PCZA_dOkTcMzvnnP9Ut99ff3S1k1VPJ5zHz7YQ7136JQakyqlMIsjkyAi4pRoxRNs4hgpbgzDnFMikGHIYIyjFBCjqYkwUClE6kkLXba14_r-lgUlFDoL7ldZ8HDMs2DtHnJZlf2QAbsysJG5lQfdJ4tK6UPt0x-_zrKW6pS6wAiNXEi5If5NMO4CFziewd7aQ58LQRV5GTpvQrkHC7LRNuwxoNS3SZgDnKHCalDStoUY-ePrek_r1SdrPD35tM6Vz0YI4ZESDEPiQmyw8IF0bwlhaKF_UOaFnvauh9zSt6WihoaRMW6i3jcDo9g3Q3JfiVGkls47aPSusq9Xpt0v1E3d-zeFQxPpSAnOcNcgTPgFNr8LXXbLZ6ed6hC3dGmuhKEd7AqX8zgl3apH0ixdhM_QwBWDzpj_ZdHfyBpaFo9xx8Zzs4h3k5Qw5pe4kEvX30tl1bRhHeKmdi2UNLSLj3GDRp4NJ3j5wXiccyweb30ozpcyNCYZDkQj9IkA2vsedftdIrsjJOlmsrvr_Fmz9jXrfa4PagOH5urNhWtJL7D4LaPeyGp3oQ_ufhbubNUeJ9rwGzOzC58jeqxTs4QOmhKhYZfS01Nw-gm10Vvi:1p36di:S9PNGcE3_E6NfSn3M2De_wubc9yJ9Wreh6Dn6H9cGO0','2022-12-22 02:27:58.664925'),('ueuhfbkmcfykihnuony7eardxhmwi9k8','.eJxVizsKAjEQQO-SWpZk8tux1NozhMlOhgTxg9lVRLy7Chbavs9DJVrmmpZeLqmxWiujVr8s07Qvx4-gcxuurdz6sLtvlz6fDpuv-xsq9fqu0YkgM4MPRkZtc0BbOI4gIWiOIh5idDZr8VoAwCBp71AMkJtyRvV8ARmBMYw:1p5dXr:bBLFw7vPRDY083Reieq0sfORa1e8b-FYvylLCDSxOxQ','2022-12-29 02:00:23.164146'),('y7bg2iys1jhf6u55spsqpyp4jtnjqwwd','.eJy9Vstym0AQ_BUVZ8ks-2DBNzvnHHMKLtXsS6IiQLWAXS6X_j27oFRsghAhVk4DO00P3bOvt2ALbbPftrW221wF90EUrN-PCZA_dOkTcMzvnnP9Ut99ff3S1k1VPJ5zHz7YQ7136JQakyqlMIsjkyAi4pRoxRNs4hgpbgzDnFMikGHIYIyjFBCjqYkwUClE6kkLXba14_r-lgUlFDoL7ldZ8HDMs2DtHnJZlf2QAbsysJG5lQfdJ4tK6UPt0x-_zrKW6pS6wAiNXEi5If5NMO4CFziewd7aQ58LQRV5GTpvQrkHC7LRNuwxoNS3SZgDnKHCalDStoUY-ePrek_r1SdrPD35tM6Vz0YI4ZESDEPiQmyw8IF0bwlhaKF_UOaFnvauh9zSt6WihoaRMW6i3jcDo9g3Q3JfiVGkls47aPSusq9Xpt0v1E3d-zeFQxPpSAnOcNcgTPgFNr8LXXbLZ6ed6hC3dGmuhKEd7AqX8zgl3apH0ixdhM_QwBWDzpj_ZdHfyBpaFo9xx8Zzs4h3k5Qw5pe4kEvX30tl1bRhHeKmdi2UNLSLj3GDRp4NJ3j5wXiccyweb30ozpcyNCYZDkQj9IkA2vsedftdIrsjJOlmsrvr_Fmz9jXrfa4PagOH5urNhWtJL7D4LaPeyGp3oQ_ufhbubNUeJ9rwGzOzC58jeqxTs4QOmhKhYZfS01Nw-gm10Vvi:1p2ZdF:NJ9Nmmy6YaLDkmdbTelN3mWvZgHo9N-4HXLtIlK-Nqw','2022-12-20 15:13:17.505585'),('yyrr1lufbe9tbjjxe2mafpjr8qscpqtw','.eJxVizsKAjEQQO-SWpb8dmdjqbVnCDOZCQniB7NRRLy7Chbavs9DRexLib3JJVZWazWp1S8jTHs5fgSe63CtcmvD7r7tbTkdNl_3NxRs5V07ngWFidFAMJZx1hDA2HHirB3TmIgoiXPos3HJitfaZhIHBjh4UM8XR7wyjQ:1p6kv3:K94A5ZztHv-3wLmcnFxsDhS9dRbgK0aHkinrs4v_Jbo','2023-01-01 04:04:57.083954');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-29 22:30:43
