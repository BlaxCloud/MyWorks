drop database if exists MovieGo;
create database MovieGo;
use MovieGo;


DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_hash` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`) VALUES ('1', 'Hugh', 'McKenzie', 'jerel52@example.com', 'f8a073559f7e55a5b2a5fd0528c149cf71e5b84f');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`) VALUES ('2', 'Wanda', 'Lueilwitz', 'nkutch@example.net', '1dc54f51df7445abf03f93727771a30cfa785ad8');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`) VALUES ('3', 'Ellen', 'O\'Reilly', 'rkovacek@example.com', 'fbfc91d8c1a9d2c478cc8b6bee01d8dda5d8de34');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`) VALUES ('4', 'Myrtis', 'O\'Kon', 'matteo96@example.com', 'c5eb6a3ee98739b4eeb76bd99d36a8bbce7228a4');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`) VALUES ('5', 'Dahlia', 'Kreiger', 'ryann92@example.net', 'ccbb4fca45d0fbcbd08da8cb5ac6946edbdf4174');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`) VALUES ('6', 'Favian', 'Brekke', 'heaney.jayson@example.net', '39d0a1da4f72e5dafd7dc3594e887a362a9c1486');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`) VALUES ('7', 'Maxime', 'Robel', 'gbecker@example.com', '550f9708ea7f9fc8c8efaca50e437013967893c6');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`) VALUES ('8', 'Duane', 'Yost', 'reinger.kelton@example.org', '79cf5bffaa655a53091e0dd6d0d857f9af69d726');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`) VALUES ('9', 'Elva', 'Bernier', 'madisen12@example.net', 'b1ed441076dccab7bd58bd5cafc50fd64f4b16ae');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`) VALUES ('10', 'Genesis', 'Sipes', 'wilburn.buckridge@example.com', 'c3b26c28cea9883fea4459027c66805c4f15bc89');

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description_user` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `interests` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`user_id`),
  CONSTRAINT `profiles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `city`, `description_user`, `interests`, `created_at`) VALUES ('1', f, '1993-06-26', 'Armenia', 'Doyleland', 'Ut eveniet error cum enim soluta eos molestias. Qui corrupti recusandae atque nemo quia. Exercitationem earum praesentium dolorum officiis eos. In voluptates dolor reprehenderit ducimus veritatis ipsum quia.', 'Non illo laboriosam asperiores dolorum iure.', '1989-03-22 08:16:51');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `city`, `description_user`, `interests`, `created_at`) VALUES ('2', m, '1979-03-07', 'Serbia', 'Port Joyceshire', 'Eum eius id rerum nobis laborum. Accusamus accusantium debitis tempora voluptatem.', 'Tenetur aut dolor in est itaque est sit.', '2010-02-06 01:09:02');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `city`, `description_user`, `interests`, `created_at`) VALUES ('3', f, '1988-12-19', 'Mongolia', 'Lednerborough', 'Amet sequi odit architecto provident explicabo qui vitae. Soluta quam aliquam amet aut. Voluptatibus et eum consequatur consequatur.', 'Magni quia qui nisi possimus voluptatem laudantium quia natus.', '1980-10-10 23:31:46');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `city`, `description_user`, `interests`, `created_at`) VALUES ('4', m, '2004-08-12', 'Jordan', 'East Candiceton', 'Blanditiis alias sapiente tempora necessitatibus sit sed. Molestias at debitis aut quibusdam vel architecto. Et totam exercitationem corporis iusto. Est minima quae exercitationem quae.', 'Impedit voluptas repellendus cum aut.', '2018-01-28 01:38:06');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `city`, `description_user`, `interests`, `created_at`) VALUES ('5', f, '1975-09-23', 'Venezuela', 'Port Taylor', 'Omnis quam ab modi. Quidem consectetur iste earum. Id quasi consequuntur ullam voluptates tempora. Inventore accusantium tempore provident magnam sint sapiente veniam repellendus.', 'Et ut dolores consectetur doloremque distinctio.', '1976-07-03 03:34:47');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `city`, `description_user`, `interests`, `created_at`) VALUES ('6', m, '2009-11-09', 'Ethiopia', 'Ariannafort', 'Aut autem repellat dolor vel pariatur laborum temporibus. Sed ducimus sed nobis dolorem.', 'Rerum consequatur voluptates et veritatis.', '2007-04-22 02:12:37');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `city`, `description_user`, `interests`, `created_at`) VALUES ('7', f, '1996-11-11', 'United Arab Emirates', 'Trantowland', 'Porro numquam totam voluptatem quos placeat sed architecto. Possimus in repellendus architecto doloribus sed ducimus. Distinctio dolorem voluptas tenetur voluptatem.', 'Odit dolores repudiandae esse perferendis qui fugit.', '2019-02-08 00:43:35');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `city`, `description_user`, `interests`, `created_at`) VALUES ('8', f, '2015-12-20', 'Belarus', 'Priscillaburgh', 'Similique asperiores aliquid dicta iusto ipsam fuga dignissimos. Ad nulla minus totam fugiat. Tenetur ea architecto ut. Distinctio iure aut nostrum qui quia quia. Autem itaque optio qui in quidem eaque ullam.', 'Quibusdam aliquid commodi nisi perspiciatis omnis autem omnis.', '1973-01-07 11:18:19');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `city`, `description_user`, `interests`, `created_at`) VALUES ('9', m, '1983-12-10', 'Germany', 'Moenchester', 'Est asperiores porro est ut suscipit hic. Voluptate sapiente dolor enim voluptatem perferendis. Voluptatibus voluptas sequi officia perferendis aut architecto.', 'Delectus beatae natus aut architecto voluptas.', '1997-04-04 16:47:39');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `country`, `city`, `description_user`, `interests`, `created_at`) VALUES ('10', f, '2007-03-23', 'South Georgia and the South Sandwich Islands', 'Schuppestad', 'Illum et voluptatem eligendi quaerat. Aut quisquam a dolor quo sed nihil et ut. Error iste vero officia impedit enim eveniet dolore. Consectetur repellendus debitis consequuntur eveniet quis.', 'Est provident repudiandae vel alias eos et.', '1993-01-26 20:51:11');


DROP TABLE IF EXISTS `friend_requests`;

CREATE TABLE `friend_requests` (
  `initiator_user_id` bigint(20) unsigned NOT NULL,
  `target_user_id` bigint(20) unsigned NOT NULL,
  `status` enum('requested','approved','declined','unfriended') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`initiator_user_id`,`target_user_id`),
  KEY `initiator_user_id` (`initiator_user_id`),
  KEY `target_user_id` (`target_user_id`),
  CONSTRAINT `friend_requests_ibfk_1` FOREIGN KEY (`initiator_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `friend_requests_ibfk_2` FOREIGN KEY (`target_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `friend_requests` VALUES ('1','1','approved','1976-03-24 21:52:37','1975-08-15 18:40:21'),
('2','2','approved','1978-11-20 16:58:10','1981-08-03 18:03:22'),
('3','3','requested','2002-07-04 14:38:31','1978-05-15 02:11:21'),
('4','4','approved','2014-09-17 21:20:22','1983-04-09 06:31:56'),
('5','5','requested','1974-11-25 04:06:58','1985-03-17 21:05:30'),
('6','6','declined','1997-08-26 06:29:44','1993-01-04 09:38:40'),
('7','7','requested','1986-07-29 16:45:20','1975-10-22 12:14:29'),
('8','8','requested','2014-08-15 02:39:20','1995-08-19 09:09:52'),
('9','9','unfriended','2018-08-08 00:32:44','1982-12-12 00:55:06'),
('10','10','requested','2007-01-14 03:00:18','2011-12-09 14:20:43');


DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint(20) unsigned NOT NULL,
  `to_user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `from_user_id` (`from_user_id`),
  KEY `to_user_id` (`to_user_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`),
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=181 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('104', '6', '3', 'Vel similique accusamus nostrum quidem cumque doloremque. Beatae et architecto neque sed. Minus officiis fuga ipsum aspernatur. Officia omnis alias perspiciatis beatae.', '2017-06-11 16:04:48');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('106', '4', '1', 'Velit et non est quis sit quas. Nisi omnis amet quos sapiente quia libero. Neque beatae quod iste repellendus ipsum suscipit reiciendis nisi. Sint velit consequatur assumenda quidem eaque porro quo.', '1987-09-22 10:27:32');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('117', '9', '2', 'Est est delectus molestias omnis dolorem. Ut dolores rerum odio ut ipsum quo et.', '1983-04-19 22:32:58');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('142', '9', '2', 'Ad incidunt beatae et id. Vitae est esse repellendus repellat. Cupiditate maiores quos necessitatibus illum.', '2008-01-20 20:03:45');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('144', '6', '6', 'Fugiat eos beatae necessitatibus dicta. Excepturi officiis quae et. Dolor alias neque consequuntur iure amet. Eaque aut quasi explicabo ipsam in.', '1997-09-09 13:38:12');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('145', '4', '1', 'Eum ut enim porro ut rerum provident et voluptates. Officia corrupti laborum et nihil. Soluta eaque et et et doloribus.', '1977-06-23 03:40:34');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('154', '8', '2', 'Dolor voluptatem eius molestiae possimus qui repudiandae qui. Sint modi nisi eos qui numquam veritatis quia. Vel qui qui impedit a eaque ratione consequatur. Officiis repellendus numquam sit deserunt explicabo.', '2002-11-05 01:28:38');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('155', '7', '5', 'Eum voluptas molestiae error repellat fuga voluptatem. Pariatur consectetur eos libero placeat nisi. Vel commodi rerum doloribus rerum voluptates voluptate. Itaque sed dolores aut dolorem. Corporis suscipit qui dolorem voluptatem.', '1983-01-08 07:39:08');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('157', '4', '1', 'Animi ipsum ipsa et qui. Eveniet nihil quis sed natus saepe quaerat. Consequatur non hic nihil dolore non dolor doloremque labore. Recusandae modi totam a voluptatem libero.', '1986-12-23 21:11:44');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('163', '8', '4', 'Modi qui quo ipsa est sapiente. Voluptatum expedita commodi sit autem necessitatibus incidunt. Reprehenderit accusantium aut libero vitae quis numquam consequatur commodi.', '1979-09-02 11:33:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('167', '8', '3', 'Est reprehenderit unde ut ipsum harum blanditiis quam. Omnis cum ratione dolorum. Exercitationem rerum excepturi enim pariatur. Consequatur sed optio dignissimos consectetur voluptatum perspiciatis.', '2019-06-07 14:11:14');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('177', '8', '4', 'Dolores vero molestiae est est dolorem quaerat. Debitis ut occaecati sint sint natus doloribus sed ipsam. Veritatis ut ullam deleniti ad dolorem cum.', '1996-10-13 07:08:22');
INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `body`, `created_at`) VALUES ('179', '7', '1', 'Officiis inventore eaque dignissimos iure adipisci ut. Dolores veritatis qui sit impedit aliquam sit quia voluptatem. Vel explicabo amet eos et cumque.', '2017-01-29 05:08:36');


DROP TABLE IF EXISTS `genres`;

CREATE TABLE `genres` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `genre` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `genres` (`id`, `genre`) VALUES ('1', 'et');
INSERT INTO `genres` (`id`, `genre`) VALUES ('2', 'error');
INSERT INTO `genres` (`id`, `genre`) VALUES ('3', 'ea');
INSERT INTO `genres` (`id`, `genre`) VALUES ('4', 'rem');
INSERT INTO `genres` (`id`, `genre`) VALUES ('5', 'optio');
INSERT INTO `genres` (`id`, `genre`) VALUES ('6', 'magni');
INSERT INTO `genres` (`id`, `genre`) VALUES ('7', 'corrupti');
INSERT INTO `genres` (`id`, `genre`) VALUES ('8', 'iste');
INSERT INTO `genres` (`id`, `genre`) VALUES ('9', 'sint');
INSERT INTO `genres` (`id`, `genre`) VALUES ('10', 'officiis');


DROP TABLE IF EXISTS `years`;

CREATE TABLE `years` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `year` year(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `years` (`id`, `year`) VALUES ('1', '2016');
INSERT INTO `years` (`id`, `year`) VALUES ('2', '2021');
INSERT INTO `years` (`id`, `year`) VALUES ('3', '2006');
INSERT INTO `years` (`id`, `year`) VALUES ('4', '2019');
INSERT INTO `years` (`id`, `year`) VALUES ('5', '1982');
INSERT INTO `years` (`id`, `year`) VALUES ('6', '1971');
INSERT INTO `years` (`id`, `year`) VALUES ('7', '2008');
INSERT INTO `years` (`id`, `year`) VALUES ('8', '1982');
INSERT INTO `years` (`id`, `year`) VALUES ('9', '2007');
INSERT INTO `years` (`id`, `year`) VALUES ('10', '1971');


DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title_country` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `countries` (`id`, `title_country`) VALUES ('1', 'Netherlands Antilles'),
 ('2', 'Christmas Island'),
 ('3', 'Haiti'),
 ('4', 'Croatia'),
 ('5', 'Djibouti'),
 ('6', 'Equatorial Guinea'),
 ('7', 'China'),
 ('8', 'Honduras'),
 ('9', 'Gabon'),
 ('10', 'Bhutan');


DROP TABLE IF EXISTS `cities`;

CREATE TABLE `cities` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `town` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `cities`  VALUES ('1', 'East Theresa'),
('2', 'South Judyview'),
('3', 'Lake Buckbury'),
('4', 'West Keanuland'),
('5', 'Schadenhaven'),
('6', 'Lillystad'),
('7', 'New Vaughn'),
('8', 'East Matteostad'),
('9', 'South Fidelmouth'),
('10', 'Olsonmouth');


DROP TABLE IF EXISTS `movies`;

CREATE TABLE `movies` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `movie_description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_production_id` bigint(20) unsigned NOT NULL,
  `movie_year_id` bigint(20) unsigned NOT NULL,
  `movie_genre_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `country_production_id` (`country_production_id`),
  KEY `movie_year_id` (`movie_year_id`),
  KEY `movie_genre_id` (`movie_genre_id`),
  CONSTRAINT `movies_ibfk_1` FOREIGN KEY (`country_production_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `movies_ibfk_2` FOREIGN KEY (`movie_year_id`) REFERENCES `years` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `movies_ibfk_3` FOREIGN KEY (`movie_genre_id`) REFERENCES `genres` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `movies` (`id`, `title`, `movie_description`, `country_production_id`, `movie_year_id`, `movie_genre_id`) VALUES ('1', 'Doloribus aliquid consequatur vitae omnis est.', 'Necessitatibus nihil nulla similique asperiores ad. Dignissimos dolores qui sit exercitationem voluptatem ullam. Assumenda rerum nisi architecto.', '1', '1', '1');
INSERT INTO `movies` (`id`, `title`, `movie_description`, `country_production_id`, `movie_year_id`, `movie_genre_id`) VALUES ('2', 'Iure consectetur culpa aut qui aut magni.', 'Voluptate aut dolorem quod est. Ipsam sed illum est error corrupti repellat ullam labore. Quis sunt necessitatibus ullam culpa reiciendis accusamus inventore sit.', '2', '2', '2');
INSERT INTO `movies` (`id`, `title`, `movie_description`, `country_production_id`, `movie_year_id`, `movie_genre_id`) VALUES ('3', 'Ex cupiditate voluptates et praesentium veniam nam modi quis.', 'Corporis quia ut doloremque libero. Unde nisi et nostrum nesciunt. Laudantium corporis tempora qui et at similique.', '3', '3', '3');
INSERT INTO `movies` (`id`, `title`, `movie_description`, `country_production_id`, `movie_year_id`, `movie_genre_id`) VALUES ('4', 'Accusantium itaque soluta rerum omnis ut sit.', 'Qui inventore et ex vitae vel sequi. Hic labore tempore quo consequatur enim in et consequatur. Saepe voluptas quia saepe error ex.', '4', '4', '4');
INSERT INTO `movies` (`id`, `title`, `movie_description`, `country_production_id`, `movie_year_id`, `movie_genre_id`) VALUES ('5', 'Dicta iusto veritatis adipisci id.', 'Non dolor culpa error enim qui. Explicabo ut molestiae doloribus fugit eos qui. Iusto dolore cumque delectus.', '5', '5', '5');
INSERT INTO `movies` (`id`, `title`, `movie_description`, `country_production_id`, `movie_year_id`, `movie_genre_id`) VALUES ('6', 'Nam qui officiis assumenda veritatis doloremque minus expedita totam.', 'Voluptas non velit nihil sint nam ut nobis. Aut aut impedit iusto et cupiditate cupiditate. Cum autem voluptatem sit qui. Quas maxime fuga rerum ipsam sint dolor.', '6', '6', '6');
INSERT INTO `movies` (`id`, `title`, `movie_description`, `country_production_id`, `movie_year_id`, `movie_genre_id`) VALUES ('7', 'Doloribus qui ratione dicta ea enim ut reprehenderit.', 'Et quis iure molestias. Velit recusandae eos velit perspiciatis rerum. Non sit fuga similique impedit unde.', '7', '7', '7');
INSERT INTO `movies` (`id`, `title`, `movie_description`, `country_production_id`, `movie_year_id`, `movie_genre_id`) VALUES ('8', 'Ipsam facilis ex ipsam quis hic vero sit.', 'Quas dolorem quis autem aut. Blanditiis expedita mollitia quaerat tenetur. Vero eum est aut quis rem qui rerum soluta. Nemo laboriosam vero ab recusandae quia.', '8', '8', '8');
INSERT INTO `movies` (`id`, `title`, `movie_description`, `country_production_id`, `movie_year_id`, `movie_genre_id`) VALUES ('9', 'Vero omnis soluta sit ut qui.', 'Sit voluptatem qui temporibus rerum. Et est ullam cumque porro in minima. Facilis quia recusandae ex veniam. Velit et nesciunt numquam et dolores et.', '9', '9', '9');
INSERT INTO `movies` (`id`, `title`, `movie_description`, `country_production_id`, `movie_year_id`, `movie_genre_id`) VALUES ('10', 'Vel sit ut similique itaque ad vero sit.', 'Inventore dolorum consequatur provident. Provident ducimus ab voluptates et repellat. Neque beatae non quia aut officia fugit.', '10', '10', '10');

DROP TABLE IF EXISTS `actors_and_directors`;

CREATE TABLE `actors_and_directors` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `lastname` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `height` double DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `country_id` bigint(20) unsigned NOT NULL,
  `movie_id` bigint(20) unsigned NOT NULL,
  `town_id` bigint(20) unsigned NOT NULL,
  `status` enum('actor','director') COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `actors_and_directors_IDX` (`movie_id`,`firstname`,`lastname`,`country_id`,`town_id`),
  KEY `actors_and_directors_fk` (`country_id`),
  KEY `actors_and_directors_fk_1` (`town_id`),
  CONSTRAINT `actors_and_directors_fk` FOREIGN KEY (`country_id`) REFERENCES `countries` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `actors_and_directors_fk_1` FOREIGN KEY (`town_id`) REFERENCES `cities` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `actors_and_directors_fk_2` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;



INSERT INTO `actors_and_directors` VALUES ('1','Alexandre','Yost','1.66','2014-10-02','1','1','1','actor'),
('2','Erick','Larkin','1.63','1974-12-10','2','2','2','actor'),
('3','Maryam','Krajcik','1.88','1982-01-02','3','3','3','actor'),
('4','Ardella','Keebler','2.13','1987-06-21','4','4','4','director'),
('5','Misty','Orn','1.65','1972-05-26','5','5','5','actor'),
('6','Kaylin','Klein','1.85','1987-07-05','6','6','6','actor'),
('7','Brisa','Trantow','1.52','1999-09-12','7','7','7','actor'),
('8','Dayne','Farrell','1.51','2009-01-05','8','8','8','director'),
('9','Magdalena','Jakubowski','1.94','2002-01-07','9','9','9','director'),
('10','Dominic','Jakubowski','2.1','1999-05-27','10','10','10','director');




CREATE INDEX `movies_IDX`
USING BTREE ON movies
	(country_production_id,
	movie_year_id,
	movie_genre_id
);


DROP TABLE IF EXISTS `news`;
CREATE TABLE `news` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `news` VALUES ('1','Et vel voluptatem repellat rem.','Aut eum aut debitis facere modi sequi. Aliquam ad enim et saepe amet aut sed. Et voluptate adipisci qui tenetur voluptatibus. Laborum mollitia praesentium ut saepe.','1993-06-17'),
('2','Tempore ut sapiente sit.','Sit provident et nostrum asperiores molestiae ut necessitatibus. Molestiae incidunt suscipit aut nulla rerum est aut. Maxime velit aliquid quia non. Architecto quia et qui reiciendis.','2004-03-15'),
('3','Itaque eius cupiditate perferendis culpa qui dolorem ullam.','Voluptates eum porro eveniet expedita molestias culpa. Officia quia magnam ut ratione. Ut dolore deserunt aut alias quae. Cumque voluptatem eligendi omnis consectetur vitae.','1974-03-31'),
('4','Eaque voluptas nemo voluptate qui fugiat eos quis quidem.','Id delectus quidem et est fugiat. Inventore earum consequatur odit. Est aliquid et voluptatibus beatae ea est.','1981-08-17'),
('5','Possimus iusto vero esse repellat ipsam aut quae.','Consequatur porro sapiente dolore optio nemo aliquid beatae. Est tempora porro ea eum praesentium similique porro accusantium. Explicabo non non quis et consectetur eveniet qui aspernatur.','1982-05-31'),
('6','Sapiente ut id occaecati saepe laborum.','Voluptatem vero officia iusto repellat. Itaque beatae soluta quaerat voluptatibus fuga. Blanditiis voluptatum est sunt tempore deleniti sed nam in. Sit repellendus magnam dignissimos consectetur. Aliquid et aut voluptas voluptatum.','1997-11-26'),
('7','Et cumque quasi pariatur labore.','Quasi numquam consequatur perspiciatis et. Est maxime libero debitis ut architecto sit. Beatae tempore ipsam et incidunt esse esse.','2007-08-16'),
('8','Quis nulla dolorum omnis accusantium.','Facere aspernatur error facere officia adipisci. Non delectus non et ex. Esse quod voluptatum omnis cupiditate dolor. Eius ea sunt beatae atque in repudiandae.','1970-12-10'),
('9','Libero eligendi quae dolores accusantium voluptate.','Placeat dicta commodi repudiandae sit sit. Dolor amet culpa dolore nihil. Dignissimos rerum in sunt.','1993-05-01'),
('10','Ea dicta eos quae.','Et enim tempora modi eum iure magnam nesciunt. Dolorem est at quam qui eaque. Deserunt possimus ea reprehenderit rerum. Enim est et incidunt aut placeat est ab.','2005-11-23');

DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `news_id` bigint(20) unsigned NOT NULL,
  `comment` text COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_fk` (`news_id`),
  KEY `comments_fk_1` (`user_id`),
  CONSTRAINT `comments_fk` FOREIGN KEY (`news_id`) REFERENCES `news` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `comments_fk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2001 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

INSERT INTO `comments` VALUES ('1','3','1','Sapiente consectetur repudiandae temporibus ut aut. Vero culpa possimus delectus dolores provident. Eos commodi ea incidunt quibusdam praesentium perspiciatis. Quasi est commodi veniam sapiente.','2011-06-03'),
('2','5','2','Iure aut ut commodi totam est. Magnam nisi dolore ratione sapiente. Dolor qui quos accusamus perspiciatis a et et. Dolorum accusamus velit perspiciatis. Id et qui et labore.','2002-12-10'),
('3','7','3','Sunt id quo voluptatem et consectetur et. Labore ipsa earum quidem ea quia quos ut. Consequatur distinctio hic molestias amet impedit est quaerat sed.','2000-10-01'),
('4','9','4','Veritatis non praesentium nobis voluptatibus aut repellendus. Aliquam et aut et et ab. Voluptatem officia officia fuga tempora eaque cumque reiciendis. Numquam qui odio consequatur deleniti perspiciatis vel.','2013-04-27'),
('5','6','5','Illum porro quod blanditiis qui corrupti. Optio odit modi corporis sapiente quod corrupti. In rerum et qui.','1996-08-23'),
('6','2','6','Nihil dignissimos eaque at id et. Tenetur temporibus recusandae voluptate nostrum velit praesentium. Dignissimos id ullam aliquid ut. Ipsa enim eveniet quis dolor hic voluptatem.','1998-03-29'),
('7','3','7','Fuga fuga corrupti explicabo asperiores deserunt molestias. Quo id amet eligendi voluptatem. Numquam laborum dolorum neque itaque porro. Aut quibusdam ratione laboriosam sit.','1989-12-22'),
('8','4','8','Exercitationem doloremque autem natus aliquam. Temporibus libero qui aut in iure. Molestias sunt reiciendis dolores culpa accusantium voluptate ex. Aut atque sit optio.','1981-05-02'),
('9','1','9','Nihil eveniet ut amet est excepturi iure repellat. Culpa veritatis doloribus ipsam veniam. Quis aut sit natus et ut. Repudiandae omnis culpa minus voluptas ea.','1996-06-09'),
('10','4','10','Accusamus maxime et voluptatem in dignissimos fuga. Est autem aperiam illo sint facilis ipsa. Cum minus quia cupiditate dolorum quis distinctio. Ratione et ut delectus odit magni possimus. Cumque minus molestiae sint.','1999-07-03');


DROP TABLE IF EXISTS `movie_rating`;

CREATE TABLE `movie_rating` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) unsigned NOT NULL,
  `movie_id` bigint(20) unsigned NOT NULL,
  `rating` int(11) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  CONSTRAINT `rating_ibfk_1` FOREIGN KEY (`movie_id`) REFERENCES `movies` (`id`),
  CONSTRAINT `rating_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `movie_rating` VALUES ('1','10','1','8','2004-03-29 19:55:56'),
('2','8','2','7','2012-08-05 12:41:11'),
('3','6','3','4','2001-06-19 07:00:46'),
('4','3','4','8','2000-04-23 10:13:06'),
('5','4','5','1','1979-09-05 10:07:53'),
('6','2','6','5','2008-06-17 20:50:29'),
('7','1','7','3','2006-12-18 10:46:09'),
('8','5','8','10','1999-08-17 08:48:47'),
('9','7','9','2','2016-02-03 02:17:07'),
('10','9','10','6','2000-03-02 14:50:47');