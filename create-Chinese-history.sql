DROP DATABASE IF EXISTS `Chinese_history`;
CREATE DATABASE `Chinese_history`;
USE `Chinese_history`;

SET NAMES utf8;
SET character_set_client = utf8mb4;

CREATE TABLE `people` (
	`name` varchar(50) NOT NULL,
	`hanzi` varchar(10) NOT NULL,
	`date_mods` varchar(50),
	`date_1` int(4),
	`date_2` int(4),
	PRIMARY KEY (`name`)
);

INSERT INTO `people` VALUES ('Liu Xiang', '劉向', NULL, -79, -8);
INSERT INTO `people` VALUES ('Liu Xin', '劉歆', NULL, -46, 23);
INSERT INTO `people` VALUES ('Yang Xiong', '揚雄', NULL, -53, 18);
INSERT INTO `people` VALUES ('Ban Gu', '班固', NULL, 32, 92);
INSERT INTO `people` VALUES ('Yan Shigu', '顏師古', NULL, 581, 645);
INSERT INTO `people` VALUES ('Wang Xianqian', '王先謙', NULL, 1842, 1918);
INSERT INTO `people` VALUES ('Yang Bojun', '楊伯峻', NULL, 1909, 1992);
INSERT INTO `people` VALUES ('Kong Yingda', '孔頴達', NULL, 574, 648);
INSERT INTO `people` VALUES ('Ruan Yuan', '阮元', NULL, 1764, 1849);
INSERT INTO `people` VALUES ('Yao Zhenzong', '姚振宗', NULL, 1842, 1906);



CREATE TABLE `monographs` (
	`monograph_id` int(5) NOT NULL AUTO_INCREMENT,
	`author_last_name` varchar(50) NOT NULL,
	`author_first_name` varchar(50) NOT NULL,
	`title` varchar(300) NOT NULL,
	`city` varchar(50) NOT NULL,
 	`publisher` varchar(100) NOT NULL,
	`year` int(4) NOT NULL,
	`notes` varchar(2500),
	PRIMARY KEY (`monograph_id`)
)ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `monographs` VALUES (00000, 'Rochberg', 'Francesca', 'The Heavenly Writing: Divination, Horoscopy and Astronomy in Mesopotamian Culture', 'Cambridge', 'Cambridge UP', 2004, NULL);
INSERT INTO `monographs` VALUES (00001, 'Roth', 'Harold D.', 'The Textual History of the Huainanzi', 'Ann Arbor', 'Association for Asian Studies', 1992, NULL);
INSERT INTO `monographs` VALUES (00002, 'Schaberg', 'David', 'A Patterned Past: Form and Thought in Early Chinese Historiography',  'Cambridge', 'Harvard University Asia Center', 2001, NULL);
INSERT INTO `monographs` VALUES (00003, 'Schafer', 'Edward H.', 'Pacing the Void: T’ang Approaches to the Stars', 'Berkeley', 'University of California Press', 1977, NULL);
INSERT INTO `monographs` VALUES (00004, 'Shaughnessy', 'Edward L.', 'I Ching, The Classic of Changes: The First English Translation of the Newly Discovered Second-Century B.C. Mawangdui Texts', 
'New York', 'Ballantine', 1997, NULL);

CREATE TABLE `articles` (
	`article_id` int(5) NOT NULL AUTO_INCREMENT,
	`author_last_name` varchar(50) NOT NULL,
	`author_first_name` varchar(50) NOT NULL,
	`add_authors` varchar(300),
	`title` varchar(500) NOT NULL,
	`journal_title` varchar(300) NOT NULL,
	`vol` int(4),
	`num` varchar(10),
	`month` varchar(10),
	`year` int(4),
	`page_start` int(4),
	`page_end` int(4),
	PRIMARY KEY (`article_id`)	
)ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `articles` VALUES (00000, 'Sivin', 'Nathan', NULL, 'Cosmos and Computation in Early Chinese Mathematical Astronomy', 'T’oung Pao Second Series', 55, 'Livr. 1/3', NULL, 1969, 1, 73);
INSERT INTO `articles` VALUES (00001, 'Sleeswyk', 'André Wegener', 'Nathan Sivin', 'Dragons and Toads: The Chinese Seismoscope of A.D. 132', 'Chinese Science', 6, NULL, 'Nov', 1983, 1, 19);
INSERT INTO `articles` VALUES (00002, 'Wen', 'Shiou Tsu', NULL, 'The Observations of Halley’s Comet in Chinese History',  'Popular Astronomy', 42, NULL, NULL, 1934, 191, 201);
INSERT INTO `articles` VALUES (00003, 'Yates', 'Robin D.S.', NULL, 'The History of Military Divination in China', 'East Asian Science, Technology, and Medicine', 24, NULL, NULL, 2005, 15, 43);
INSERT INTO `articles` VALUES (00004, 'Puett', 'Michael', NULL, 'Sages, Ministers, and Rebels: Narratives from Early China Concerning the Initial Creation of the State',  'Harvard Journal of Asiatic Studies', 58, 2, 'Dec', 1998, 425, 79);


CREATE TABLE `edited_volumes` (
	`edited_volume_id` int(5) NOT NULL AUTO_INCREMENT,
	`editor_last_name` varchar(50) NOT NULL,
	`editor_first_name` varchar(50) NOT NULL,
	`add_editor` varchar(300),
	`title` varchar(300) NOT NULL,
	`city` varchar(50) NOT NULL,
 	`publisher` varchar(100) NOT NULL,
	`year` int(4) NOT NULL,
	`chapters` varchar(2500),
	PRIMARY KEY (`edited_volume_id`)
)ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `edited_volumes` VALUES (00000, 'Nylan', 'Michael', 'Michael Loewe', 'China’s Early Empires: A Re-appraisal', 'Cambridge', 'Cambridge UP', 2010, NULL);
INSERT INTO `edited_volumes` VALUES (00001, 'Nylan', 'Michael', 'Griet Vankeerberghen', 'Chang’an 26 BCE: An Augustan Age in China', 'Seattle and London', 'University of Washington Press', 2014, NULL);

CREATE TABLE `book_chapters` (
	`book_chapter_id` int(5) NOT NULL AUTO_INCREMENT,
	`author_last_name` varchar(50) NOT NULL,
	`author_first_name` varchar(50) NOT NULL,
	`add_authors` varchar(300),
	`title` varchar(500) NOT NULL,
	`book` varchar(300) NOT NULL,
	`page_start` int(4),
	`page_end` int(4),
	PRIMARY KEY (`book_chapter_id`)	
)ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

INSERT INTO `book_chapters` VALUES (00000, 'Nylan', 'Michael', NULL,  'Yin-yang, Five Phases, and qi', 'Nylan and Loewe', 398, 413);
INSERT INTO `book_chapters` VALUES (00001, 'Loewe', 'Michael', NULL,  'The Tombs Built for Han Chengdi and Migrations of the Population', 'Nylan and Vankeerberghen', 201, 17);
INSERT INTO `book_chapters` VALUES (00002, 'Habberstad', 'Luke', NULL, 'Recasting the Imperial Court in Late Western Han: Rank, Duty, and Alliances during Institutional Change',  'Nylan and Vankeerberghen', 239, 262);
INSERT INTO `book_chapters` VALUES (00003, 'Cullen', 'Christopeher', NULL, 'Numbers, Numeracy and the Cosmos', 'Nylan and Loewe', 323, 338);
INSERT INTO `book_chapters` VALUES (00004, 'Csikszentmihalyi', 'Mark', NULL, 'The Social Roles of the Annals Classic in Late Western Han',  'Nylan and Vankeerberghen', 461, 476);