-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               8.0.18 - MySQL Community Server - GPL
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for user
CREATE DATABASE IF NOT EXISTS `user` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `user`;

-- Dumping structure for table user.auth_group
CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table user.auth_group: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group` ENABLE KEYS */;

-- Dumping structure for table user.auth_group_permissions
CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table user.auth_group_permissions: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_group_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_group_permissions` ENABLE KEYS */;

-- Dumping structure for table user.auth_permission
CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`),
  CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table user.auth_permission: ~28 rows (approximately)
/*!40000 ALTER TABLE `auth_permission` DISABLE KEYS */;
INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
	(1, 'Can add log entry', 1, 'add_logentry'),
	(2, 'Can change log entry', 1, 'change_logentry'),
	(3, 'Can delete log entry', 1, 'delete_logentry'),
	(4, 'Can view log entry', 1, 'view_logentry'),
	(5, 'Can add permission', 2, 'add_permission'),
	(6, 'Can change permission', 2, 'change_permission'),
	(7, 'Can delete permission', 2, 'delete_permission'),
	(8, 'Can view permission', 2, 'view_permission'),
	(9, 'Can add group', 3, 'add_group'),
	(10, 'Can change group', 3, 'change_group'),
	(11, 'Can delete group', 3, 'delete_group'),
	(12, 'Can view group', 3, 'view_group'),
	(13, 'Can add user', 4, 'add_user'),
	(14, 'Can change user', 4, 'change_user'),
	(15, 'Can delete user', 4, 'delete_user'),
	(16, 'Can view user', 4, 'view_user'),
	(17, 'Can add content type', 5, 'add_contenttype'),
	(18, 'Can change content type', 5, 'change_contenttype'),
	(19, 'Can delete content type', 5, 'delete_contenttype'),
	(20, 'Can view content type', 5, 'view_contenttype'),
	(21, 'Can add session', 6, 'add_session'),
	(22, 'Can change session', 6, 'change_session'),
	(23, 'Can delete session', 6, 'delete_session'),
	(24, 'Can view session', 6, 'view_session'),
	(25, 'Can add bytetrek user', 7, 'add_bytetrekuser'),
	(26, 'Can change bytetrek user', 7, 'change_bytetrekuser'),
	(27, 'Can delete bytetrek user', 7, 'delete_bytetrekuser'),
	(28, 'Can view bytetrek user', 7, 'view_bytetrekuser');
/*!40000 ALTER TABLE `auth_permission` ENABLE KEYS */;

-- Dumping structure for table user.auth_user
CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table user.auth_user: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_user` DISABLE KEYS */;
INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
	(1, 'pbkdf2_sha256$150000$WIcnbdCwtjsf$NzVBSodlpno5BbkYslDb/bKM0oUfnKp6vWDhjlqgJd8=', '2019-10-19 06:28:26.953204', 1, 'root', '', '', '', 1, 1, '2019-10-19 06:28:10.752965');
/*!40000 ALTER TABLE `auth_user` ENABLE KEYS */;

-- Dumping structure for table user.auth_user_groups
CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`),
  CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table user.auth_user_groups: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_user_groups` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_groups` ENABLE KEYS */;

-- Dumping structure for table user.auth_user_user_permissions
CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`),
  CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table user.auth_user_user_permissions: ~0 rows (approximately)
/*!40000 ALTER TABLE `auth_user_user_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `auth_user_user_permissions` ENABLE KEYS */;

-- Dumping structure for table user.bytetrekapp_bytetrekuser
CREATE TABLE IF NOT EXISTS `bytetrekapp_bytetrekuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(70) NOT NULL,
  `phone` varchar(30) NOT NULL,
  `address` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=102 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table user.bytetrekapp_bytetrekuser: ~0 rows (approximately)
/*!40000 ALTER TABLE `bytetrekapp_bytetrekuser` DISABLE KEYS */;
INSERT INTO `bytetrekapp_bytetrekuser` (`id`, `name`, `email`, `phone`, `address`) VALUES
	(1, 'Jennifer Myers', 'deborah52@hotmail.com', '143-479-1274x963', '5530 Potts Turnpike\nPeggyport, OH 81670'),
	(2, 'Abigail Gibbs', 'millerevan@mann.org', '08165375522', '188 Nicholas Turnpike\nChristopherstad, IN 69736'),
	(3, 'William Waters', 'sullivankimberly@black-houston.com', '1-054-178-1159', '1683 Williams Prairie\nEllishaven, NH 89764'),
	(4, 'Christopher Castro', 'tuckerashley@mathis.com', '683.973.4787x9263', '9258 Long Ridges Apt. 200\nJoshuafurt, MA 16830'),
	(5, 'Steven Tyler', 'jonathantaylor@white.biz', '+85(9)5266881687', '959 Christine Glens\nWilliamsmouth, NH 06559'),
	(6, 'Calvin Shaw', 'leebruce@gmail.com', '+09(5)6362401868', '6463 Schmidt Green\nLake John, DE 64443'),
	(7, 'Sandra Rogers', 'erubio@reilly.com', '1-043-814-4993', '0106 Keith Manor Apt. 699\nJulietown, DE 57042'),
	(8, 'Michael Baker', 'richardjohnson@dalton.com', '1-174-459-3452x4405', '1774 Bryan Run Suite 117\nPort Raymond, NV 01133'),
	(9, 'Robin Peters', 'samuelharris@gmail.com', '1-944-878-6679x416', '15857 Victoria Plain Suite 299\nVeronicaview, OH 81268'),
	(10, 'Nancy Dominguez', 'jessicabrown@gmail.com', '(803)590-5199x6879', '7148 Danielle Spurs\nKarenborough, PA 31989'),
	(11, 'Michelle Jensen', 'lawsonsamuel@hotmail.com', '09587279585', '24634 James Islands\nAbigailchester, AK 12614'),
	(12, 'Allen Mendez', 'catherine49@hotmail.com', '028-636-3462', '9983 Williams Mountain Apt. 598\nWest Codyland, NC 40550'),
	(13, 'Isaac Hill', 'zacharyjuarez@foley-martin.info', '+94(0)0589795483', 'USCGC Ruiz\nFPO AA 12012'),
	(14, 'Jerry Newman', 'fgraham@yahoo.com', '(621)173-9318x155', '955 Ashlee Inlet Apt. 110\nSouth Lisa, CA 82698'),
	(15, 'Gregory Rivas', 'cortezjennifer@gmail.com', '830-250-3465', '3153 Taylor Vista\nConwaychester, NV 59051'),
	(16, 'Jessica Martinez', 'floreskathleen@yahoo.com', '1-779-583-0851x390', 'Unit 7096 Box 5052\nDPO AP 02861'),
	(17, 'Jonathan Miller', 'pmcdonald@hotmail.com', '(371)420-6428x442', '895 Melissa Light\nLake Michele, SD 19241'),
	(18, 'Catherine Cook', 'jamesreed@gmail.com', '(720)018-7373x2843', '5083 David Square Apt. 610\nKramerberg, FL 51953'),
	(19, 'Louis Hogan', 'jhenderson@coleman.net', '821.074.8395', '6931 Mackenzie Ford Apt. 829\nHuangberg, NH 25917'),
	(20, 'Ashley Collier', 'nlee@hayes.org', '01217514994', '30428 Daniel Run Suite 331\nLake Anthonyland, CT 27358'),
	(21, 'Ms. Kristine Williams', 'juliesmith@hotmail.com', '07807796208', 'USS Hardy\nFPO AA 53318'),
	(22, 'Kimberly Hicks', 'margarethicks@klein.com', '203-655-7136', '8774 Sabrina Vista\nNorth Michael, SD 08865'),
	(23, 'Lawrence Houston', 'christopherlevine@yahoo.com', '(397)685-5645', '671 May Throughway Suite 779\nPort Jeffview, MD 63108'),
	(24, 'Maurice Brown', 'santanamonica@gmail.com', '925.084.8735x063', '62336 Robinson Gardens Apt. 141\nNew Ianville, MI 71143'),
	(25, 'Jenna James', 'jonesbrittney@gamble-navarro.info', '(032)034-0116', '3984 Austin Estate Suite 899\nNew Bryanmouth, ND 95045'),
	(26, 'Gregory Hopkins', 'wreyes@hansen.com', '(105)830-3796x4866', '053 Peter Ferry Suite 723\nFreemanborough, SC 74445'),
	(27, 'Michelle Jackson', 'ryan25@villanueva.net', '1-232-908-5082x542', '92312 Joseph Skyway\nEast John, AZ 37488'),
	(28, 'Margaret Rosario', 'sward@rose-walsh.net', '603-145-4204', 'PSC 8120, Box 8325\nAPO AA 68173'),
	(29, 'Samuel Sanchez', 'sharon64@hotmail.com', '(598)421-3587', '714 Patrick Pass Apt. 980\nBlankenshipville, CO 35395'),
	(30, 'Joseph Anderson', 'ubrady@taylor.com', '1-810-804-6954x91735', '024 Gonzales Glen\nWest Stephen, MN 87716'),
	(31, 'Brandon Wells', 'jbowen@johnson-holmes.com', '829.367.6818', '8668 Hall Circles\nSouth Mary, NM 97358'),
	(32, 'Amanda Johnson', 'lesliethompson@scott.org', '510.196.8283x55700', '5895 Wanda Drive Apt. 388\nEmmafurt, UT 20643'),
	(33, 'Tanya Hughes', 'roger48@yahoo.com', '826-494-6697x2822', '1728 Michael Alley Apt. 988\nNorth Randy, CA 51714'),
	(34, 'Teresa Berg', 'stevendavis@mcdonald-martinez.net', '971-002-5664', '900 Deborah Hill Apt. 810\nNorth Louis, OH 06184'),
	(35, 'Jose Cameron', 'isaiahochoa@thompson.com', '373-976-4301', '0395 Michael Circles Suite 984\nCarpenterburgh, IN 01176'),
	(36, 'John Dudley', 'davidprice@larsen.com', '1-697-378-7535x82615', '62982 Robin Locks Apt. 536\nDianeborough, ID 62896'),
	(37, 'Tara Kent', 'davidpage@mayer.net', '647.095.9623', '99915 Krista Brook\nJillchester, MD 99597'),
	(38, 'Alisha Hale', 'traviswilliamson@gmail.com', '08503717190', '750 Allen Station\nColonville, IL 96989'),
	(39, 'Veronica Beard', 'johnlewis@hotmail.com', '1-605-209-6823x197', '396 Michelle Skyway Suite 018\nMillerport, NE 90298'),
	(40, 'Kristina Kline', 'nelsonlaura@ali.org', '393.653.4100x4093', '520 Joseph Lodge\nChristensenborough, RI 69543'),
	(41, 'Brian Villanueva', 'jasonwilliams@gmail.com', '921.547.5002x67171', '7912 Diane Hollow Suite 653\nWest Alexis, NJ 41479'),
	(42, 'Sarah Frank', 'courtneynorman@graves.com', '05787775563', '19363 Michael Circles Apt. 186\nHeathermouth, NM 04272'),
	(43, 'Amanda Ford', 'storres@gmail.com', '00972229946', 'Unit 3478 Box 0212\nDPO AA 58145'),
	(44, 'Ronald Price', 'hfloyd@gmail.com', '1-311-043-5531', '687 Brooks View Apt. 039\nKellyland, WV 35826'),
	(45, 'David Hernandez', 'ianpeterson@hotmail.com', '020-626-4593x682', '5341 Sue Pass Apt. 467\nEnglishfort, MO 54206'),
	(46, 'Maria Robinson', 'iwilliams@miles-daniels.com', '646-202-4049', '71702 Roberson Meadows\nCortezchester, NH 59913'),
	(47, 'Joel Tran', 'williamphillips@garner.com', '(710)513-5937', '1723 Andrew Light Suite 938\nSouth Kristaville, MA 94485'),
	(48, 'Kenneth Waller', 'rodneywade@hotmail.com', '(816)184-9050', '367 Victor Plain Suite 731\nPort Matthew, MO 17173'),
	(49, 'Gabriel Davidson', 'jonesjeremy@cox.com', '968.820.1471', '6912 Brandon Lights Apt. 118\nHannaburgh, NV 02417'),
	(50, 'Theresa Travis', 'yschultz@lee-aguilar.com', '04737970665', '7182 Kelsey Shore Suite 781\nKellyport, AK 94573'),
	(51, 'Brian Salinas', 'efuller@henderson-taylor.info', '063-335-3515', '38184 Black Ville\nMindyview, MN 20998'),
	(52, 'Dylan Collier', 'denisesmith@riley.com', '1-442-079-8236', '162 Hannah Greens Apt. 538\nMichaeltown, MT 87420'),
	(53, 'Annette Morales', 'evanstony@bowman.com', '+08(6)4586466150', '38540 Christopher Ford Apt. 178\nLake Jacquelinehaven, TN 56366'),
	(54, 'Rachel Glover', 'kevin36@lopez.biz', '689-595-5365x70877', 'Unit 7843 Box 5456\nDPO AP 23866'),
	(55, 'Tammy Nelson', 'pmorgan@mack.com', '949.480.2072x78925', '7825 Neal Green\nSmithton, NY 94004'),
	(56, 'Debra Payne', 'daniel00@hotmail.com', '(433)159-3812', '46593 Caldwell Knolls Suite 555\nPort Donnashire, KY 57208'),
	(57, 'Marcia Luna', 'andre29@boyd.biz', '1-048-838-7930', '73373 Katelyn Shoals Apt. 416\nLewisshire, OH 62725'),
	(58, 'Stacey Nelson', 'irichards@hooper.info', '1-672-519-5629', 'USS Harris\nFPO AP 48308'),
	(59, 'Philip Pham', 'debramcdaniel@hotmail.com', '(457)677-6183', '124 Maxwell Well Apt. 383\nJamesmouth, MA 48145'),
	(60, 'Robert Long', 'mary71@yahoo.com', '(995)543-1394', '4199 Price Path Apt. 970\nAlexview, WA 68860'),
	(61, 'Jimmy Fitzgerald', 'whitakerpatricia@lopez.biz', '985.742.4617', '6051 Nicholas Roads\nBakertown, MN 82933'),
	(62, 'Laura Lane', 'vanessalong@edwards.org', '(295)112-8291x77619', '9366 Derek Canyon\nHudsonbury, MT 28396'),
	(63, 'Michael Romero', 'heathermann@hotmail.com', '1-968-952-9698x205', '474 Madison Neck\nBrownside, HI 32440'),
	(64, 'Charlene Cervantes', 'shannon70@hotmail.com', '268-385-7501x06979', '2893 Robinson Alley Suite 836\nPort Nicoleborough, OH 69372'),
	(65, 'Mary Fisher', 'michelle48@yahoo.com', '159-658-4181', '5691 Kimberly Ports Apt. 042\nDavidchester, NC 45430'),
	(66, 'Penny Perez', 'myerstaylor@moses.com', '347-445-3976', '2417 Gutierrez Views Apt. 021\nEast Amandabury, SD 82189'),
	(67, 'Tony Taylor', 'lisamoody@yahoo.com', '730-137-5698x94688', '6134 Johnson Bridge\nWest Krystal, NC 30596'),
	(68, 'Curtis Jackson', 'rjefferson@yahoo.com', '01527162836', '4977 Wilson Motorway Apt. 945\nAnnettebury, HI 11765'),
	(69, 'Frank Taylor', 'christopher59@roberts-taylor.com', '+31(0)0136360910', '247 Erika Crest Suite 652\nNorth Rebecca, TX 27874'),
	(70, 'Phyllis Peck', 'frich@gmail.com', '517.933.3884x315', '885 Tucker Ridge Apt. 511\nEast Lisafort, MT 80818'),
	(71, 'Taylor Marshall', 'kellysteven@hotmail.com', '(941)409-5996x40949', '9149 Torres Streets\nPort Willie, SC 02999'),
	(72, 'Lisa Bishop', 'joshua47@hotmail.com', '257.618.2423x656', '4716 Rojas Terrace Apt. 655\nEast Robertbury, FL 58150'),
	(73, 'Justin White', 'caseysnow@smith.org', '04002888853', '0760 Tiffany Well Apt. 280\nElizabethhaven, KS 67867'),
	(74, 'Robert Jones', 'mendozajacob@johnson-conley.net', '(444)829-5227x055', '599 Justin Spur\nKimberlyshire, MS 55588'),
	(75, 'Aaron Pollard', 'sharon25@jones.com', '951-690-2406x2108', '2851 Nelson Cliff Apt. 570\nScottstad, VA 96355'),
	(76, 'Theresa Scott', 'paigecarr@baker-lloyd.com', '1-646-497-5127', '59509 Thomas Tunnel Suite 703\nNorth Sherri, SD 20931'),
	(77, 'Randy Myers', 'kayla36@gmail.com', '1-348-443-0656x750', '7478 Davis Isle\nPort Scottborough, ND 53507'),
	(78, 'Judith White', 'ylutz@hotmail.com', '1-016-708-3343', 'Unit 2268 Box 8201\nDPO AE 94833'),
	(79, 'Marie Romero', 'mgarner@johnson.net', '(719)776-7684x40262', '700 Francis Burgs\nPort Kristen, WV 27234'),
	(80, 'James Gross', 'tgomez@hotmail.com', '+66(3)7480149849', 'USS Jackson\nFPO AA 23762'),
	(81, 'Deborah Hansen', 'alec24@delgado-walker.info', '988-217-2865x71598', '18613 Singleton Mountain\nMichaelmouth, NJ 49564'),
	(82, 'Jeanne Moreno', 'rhogan@saunders.com', '1-035-532-9784x14557', '20049 Laura Throughway\nNew Cynthiaville, NJ 94713'),
	(83, 'Stephen Foster', 'olivia53@savage.info', '1-262-283-4081x8559', '4480 Ashley View\nPort Christian, MA 20827'),
	(84, 'Travis Russo', 'denise74@yahoo.com', '524-467-9624', '383 Donna Passage Suite 948\nEast Rhondaview, PA 01959'),
	(85, 'Rebecca Maldonado', 'cynthia96@yahoo.com', '(850)837-1397x61468', '629 Flores Point Apt. 427\nGeraldmouth, IA 17815'),
	(86, 'Garrett Mack', 'robertsbrittany@hotmail.com', '+85(0)2291316273', '2573 Jackson Vista\nNorth Ericbury, WV 41643'),
	(87, 'John Kim', 'justindawson@mora-simmons.com', '(771)252-1540', '488 Victoria Street Suite 369\nSouth Ericside, OH 66075'),
	(88, 'Ricardo Evans', 'andrewabbott@torres-oconnor.org', '112.665.5281x85945', '6737 Patterson Lakes Apt. 821\nGarciaberg, MI 54831'),
	(89, 'Michael Wilson', 'ryan78@rush.com', '472-180-4247', '569 Moore Rest Apt. 398\nRodneyfurt, OR 05896'),
	(90, 'Linda Johnson', 'gking@gmail.com', '(545)858-9837x799', '63902 Jessica Club\nNorth Tammychester, SC 10560'),
	(91, 'Jonathan Hamilton', 'carrshannon@hotmail.com', '1-615-412-7848x2644', '10063 Hector Station\nCynthiashire, MN 24269'),
	(92, 'Kyle Anthony', 'hsanders@wall.org', '+63(9)6117982970', '82708 Clark Rapid\nWest Matthew, VA 71758'),
	(93, 'Sandra Sharp', 'jessicablankenship@gmail.com', '(914)925-8148', '8953 Thomas Spur\nSmithstad, HI 91606'),
	(94, 'Leah Hall', 'alexandriawatson@yahoo.com', '+88(4)0411175967', 'PSC 7842, Box 3809\nAPO AE 22399'),
	(95, 'John Martinez', 'juan52@thomas-cantrell.biz', '02917127834', '5311 Tiffany Bridge Suite 428\nWest Christophershire, MD 57404'),
	(96, 'Gary Kelly', 'jessicahernandez@hall.net', '08621617548', '17575 Wesley Trail\nNorth Carla, SC 04053'),
	(97, 'Roberta Russell', 'victoriamyers@hotmail.com', '+40(9)3269777049', '7872 Amy Forges\nKaitlynville, MD 61653'),
	(98, 'Kristen Bullock', 'cruzjoseph@wilson.net', '888-002-3939', '888 Katherine Glen\nSouth Kylebury, NM 19488'),
	(99, 'Lori Stephenson', 'lisaobrien@coleman-marshall.org', '1-439-890-2754x297', '611 Deanna Lights\nJasonburgh, MN 92702'),
	(100, 'Deborah Meza', 'ashley17@patrick.com', '320-260-2458x5903', '33081 Shelly Plains\nSouth Garyport, ID 22544');
/*!40000 ALTER TABLE `bytetrekapp_bytetrekuser` ENABLE KEYS */;

-- Dumping structure for table user.django_admin_log
CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`),
  CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table user.django_admin_log: ~0 rows (approximately)
/*!40000 ALTER TABLE `django_admin_log` DISABLE KEYS */;
/*!40000 ALTER TABLE `django_admin_log` ENABLE KEYS */;

-- Dumping structure for table user.django_content_type
CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table user.django_content_type: ~7 rows (approximately)
/*!40000 ALTER TABLE `django_content_type` DISABLE KEYS */;
INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
	(1, 'admin', 'logentry'),
	(3, 'auth', 'group'),
	(2, 'auth', 'permission'),
	(4, 'auth', 'user'),
	(7, 'bytetrekapp', 'bytetrekuser'),
	(5, 'contenttypes', 'contenttype'),
	(6, 'sessions', 'session');
/*!40000 ALTER TABLE `django_content_type` ENABLE KEYS */;

-- Dumping structure for table user.django_migrations
CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table user.django_migrations: ~19 rows (approximately)
/*!40000 ALTER TABLE `django_migrations` DISABLE KEYS */;
INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
	(1, 'contenttypes', '0001_initial', '2019-10-19 06:23:59.983497'),
	(2, 'auth', '0001_initial', '2019-10-19 06:24:00.249290'),
	(3, 'admin', '0001_initial', '2019-10-19 06:24:01.196465'),
	(4, 'admin', '0002_logentry_remove_auto_add', '2019-10-19 06:24:01.426713'),
	(5, 'admin', '0003_logentry_add_action_flag_choices', '2019-10-19 06:24:01.437659'),
	(6, 'contenttypes', '0002_remove_content_type_name', '2019-10-19 06:24:01.580301'),
	(7, 'auth', '0002_alter_permission_name_max_length', '2019-10-19 06:24:01.657093'),
	(8, 'auth', '0003_alter_user_email_max_length', '2019-10-19 06:24:01.686024'),
	(9, 'auth', '0004_alter_user_username_opts', '2019-10-19 06:24:01.695969'),
	(10, 'auth', '0005_alter_user_last_login_null', '2019-10-19 06:24:01.774779'),
	(11, 'auth', '0006_require_contenttypes_0002', '2019-10-19 06:24:01.786727'),
	(12, 'auth', '0007_alter_validators_add_error_messages', '2019-10-19 06:24:01.799693'),
	(13, 'auth', '0008_alter_user_username_max_length', '2019-10-19 06:24:01.926353'),
	(14, 'auth', '0009_alter_user_last_name_max_length', '2019-10-19 06:24:02.045248'),
	(15, 'auth', '0010_alter_group_name_max_length', '2019-10-19 06:24:02.076600'),
	(16, 'auth', '0011_update_proxy_permissions', '2019-10-19 06:24:02.087570'),
	(17, 'bytetrekapp', '0001_initial', '2019-10-19 06:24:02.150402'),
	(18, 'bytetrekapp', '0002_auto_20191016_2240', '2019-10-19 06:24:02.183315'),
	(19, 'sessions', '0001_initial', '2019-10-19 06:24:02.240163');
/*!40000 ALTER TABLE `django_migrations` ENABLE KEYS */;

-- Dumping structure for table user.django_session
CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- Dumping data for table user.django_session: ~0 rows (approximately)
/*!40000 ALTER TABLE `django_session` DISABLE KEYS */;
INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
	('y6khnh3f8hihgftwl5u55zl1kaaaw0yl', 'NWIwNWU4MzE2ZmQ5NjViZDI0ODZkNjZhZmE5NDk4ODAxZjkyZmZhOTp7Il9hdXRoX3VzZXJfaWQiOiIxIiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiJlOWU5MGIwMWY5YTc3YmZkZDUwNmJjZTkxNzgxMGIzYjliZWI5NWI4In0=', '2019-11-02 06:28:26.961206');
/*!40000 ALTER TABLE `django_session` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
