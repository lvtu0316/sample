/*
Navicat MySQL Data Transfer

Source Server         : vagrant
Source Server Version : 50720
Source Host           : 127.0.0.1:3306
Source Database       : sample

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-02-02 17:55:46
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for articles
-- ----------------------------
DROP TABLE IF EXISTS `articles`;
CREATE TABLE `articles` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of articles
-- ----------------------------

-- ----------------------------
-- Table structure for followers
-- ----------------------------
DROP TABLE IF EXISTS `followers`;
CREATE TABLE `followers` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `follower_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `followers_user_id_index` (`user_id`),
  KEY `followers_follower_id_index` (`follower_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of followers
-- ----------------------------
INSERT INTO `followers` VALUES ('1', '2', '1', null, null);
INSERT INTO `followers` VALUES ('2', '3', '1', null, null);
INSERT INTO `followers` VALUES ('3', '4', '1', null, null);
INSERT INTO `followers` VALUES ('4', '5', '1', null, null);
INSERT INTO `followers` VALUES ('5', '6', '1', null, null);
INSERT INTO `followers` VALUES ('6', '7', '1', null, null);
INSERT INTO `followers` VALUES ('7', '8', '1', null, null);
INSERT INTO `followers` VALUES ('8', '9', '1', null, null);
INSERT INTO `followers` VALUES ('9', '10', '1', null, null);
INSERT INTO `followers` VALUES ('10', '11', '1', null, null);
INSERT INTO `followers` VALUES ('11', '12', '1', null, null);
INSERT INTO `followers` VALUES ('12', '13', '1', null, null);
INSERT INTO `followers` VALUES ('13', '14', '1', null, null);
INSERT INTO `followers` VALUES ('14', '15', '1', null, null);
INSERT INTO `followers` VALUES ('15', '16', '1', null, null);
INSERT INTO `followers` VALUES ('16', '17', '1', null, null);
INSERT INTO `followers` VALUES ('17', '18', '1', null, null);
INSERT INTO `followers` VALUES ('18', '19', '1', null, null);
INSERT INTO `followers` VALUES ('19', '20', '1', null, null);
INSERT INTO `followers` VALUES ('20', '21', '1', null, null);
INSERT INTO `followers` VALUES ('21', '22', '1', null, null);
INSERT INTO `followers` VALUES ('22', '23', '1', null, null);
INSERT INTO `followers` VALUES ('23', '24', '1', null, null);
INSERT INTO `followers` VALUES ('24', '25', '1', null, null);
INSERT INTO `followers` VALUES ('25', '26', '1', null, null);
INSERT INTO `followers` VALUES ('26', '27', '1', null, null);
INSERT INTO `followers` VALUES ('27', '28', '1', null, null);
INSERT INTO `followers` VALUES ('28', '29', '1', null, null);
INSERT INTO `followers` VALUES ('29', '30', '1', null, null);
INSERT INTO `followers` VALUES ('30', '31', '1', null, null);
INSERT INTO `followers` VALUES ('31', '32', '1', null, null);
INSERT INTO `followers` VALUES ('32', '33', '1', null, null);
INSERT INTO `followers` VALUES ('33', '34', '1', null, null);
INSERT INTO `followers` VALUES ('34', '35', '1', null, null);
INSERT INTO `followers` VALUES ('35', '36', '1', null, null);
INSERT INTO `followers` VALUES ('36', '37', '1', null, null);
INSERT INTO `followers` VALUES ('37', '38', '1', null, null);
INSERT INTO `followers` VALUES ('38', '39', '1', null, null);
INSERT INTO `followers` VALUES ('39', '40', '1', null, null);
INSERT INTO `followers` VALUES ('40', '41', '1', null, null);
INSERT INTO `followers` VALUES ('41', '42', '1', null, null);
INSERT INTO `followers` VALUES ('42', '43', '1', null, null);
INSERT INTO `followers` VALUES ('43', '44', '1', null, null);
INSERT INTO `followers` VALUES ('44', '45', '1', null, null);
INSERT INTO `followers` VALUES ('45', '46', '1', null, null);
INSERT INTO `followers` VALUES ('46', '47', '1', null, null);
INSERT INTO `followers` VALUES ('47', '48', '1', null, null);
INSERT INTO `followers` VALUES ('48', '49', '1', null, null);
INSERT INTO `followers` VALUES ('49', '50', '1', null, null);
INSERT INTO `followers` VALUES ('50', '51', '1', null, null);
INSERT INTO `followers` VALUES ('51', '1', '2', null, null);
INSERT INTO `followers` VALUES ('52', '1', '3', null, null);
INSERT INTO `followers` VALUES ('53', '1', '4', null, null);
INSERT INTO `followers` VALUES ('54', '1', '5', null, null);
INSERT INTO `followers` VALUES ('55', '1', '6', null, null);
INSERT INTO `followers` VALUES ('56', '1', '7', null, null);
INSERT INTO `followers` VALUES ('57', '1', '8', null, null);
INSERT INTO `followers` VALUES ('58', '1', '9', null, null);
INSERT INTO `followers` VALUES ('59', '1', '10', null, null);
INSERT INTO `followers` VALUES ('60', '1', '11', null, null);
INSERT INTO `followers` VALUES ('61', '1', '12', null, null);
INSERT INTO `followers` VALUES ('62', '1', '13', null, null);
INSERT INTO `followers` VALUES ('63', '1', '14', null, null);
INSERT INTO `followers` VALUES ('64', '1', '15', null, null);
INSERT INTO `followers` VALUES ('65', '1', '16', null, null);
INSERT INTO `followers` VALUES ('66', '1', '17', null, null);
INSERT INTO `followers` VALUES ('67', '1', '18', null, null);
INSERT INTO `followers` VALUES ('68', '1', '19', null, null);
INSERT INTO `followers` VALUES ('69', '1', '20', null, null);
INSERT INTO `followers` VALUES ('70', '1', '21', null, null);
INSERT INTO `followers` VALUES ('71', '1', '22', null, null);
INSERT INTO `followers` VALUES ('72', '1', '23', null, null);
INSERT INTO `followers` VALUES ('73', '1', '24', null, null);
INSERT INTO `followers` VALUES ('74', '1', '25', null, null);
INSERT INTO `followers` VALUES ('75', '1', '26', null, null);
INSERT INTO `followers` VALUES ('76', '1', '27', null, null);
INSERT INTO `followers` VALUES ('77', '1', '28', null, null);
INSERT INTO `followers` VALUES ('78', '1', '29', null, null);
INSERT INTO `followers` VALUES ('79', '1', '30', null, null);
INSERT INTO `followers` VALUES ('80', '1', '31', null, null);
INSERT INTO `followers` VALUES ('81', '1', '32', null, null);
INSERT INTO `followers` VALUES ('82', '1', '33', null, null);
INSERT INTO `followers` VALUES ('83', '1', '34', null, null);
INSERT INTO `followers` VALUES ('84', '1', '35', null, null);
INSERT INTO `followers` VALUES ('85', '1', '36', null, null);
INSERT INTO `followers` VALUES ('86', '1', '37', null, null);
INSERT INTO `followers` VALUES ('87', '1', '38', null, null);
INSERT INTO `followers` VALUES ('88', '1', '39', null, null);
INSERT INTO `followers` VALUES ('89', '1', '40', null, null);
INSERT INTO `followers` VALUES ('90', '1', '41', null, null);
INSERT INTO `followers` VALUES ('91', '1', '42', null, null);
INSERT INTO `followers` VALUES ('92', '1', '43', null, null);
INSERT INTO `followers` VALUES ('93', '1', '44', null, null);
INSERT INTO `followers` VALUES ('94', '1', '45', null, null);
INSERT INTO `followers` VALUES ('95', '1', '46', null, null);
INSERT INTO `followers` VALUES ('96', '1', '47', null, null);
INSERT INTO `followers` VALUES ('97', '1', '48', null, null);
INSERT INTO `followers` VALUES ('98', '1', '49', null, null);
INSERT INTO `followers` VALUES ('99', '1', '50', null, null);
INSERT INTO `followers` VALUES ('101', '1', '51', null, null);
INSERT INTO `followers` VALUES ('102', '8', '51', null, null);
INSERT INTO `followers` VALUES ('103', '2', '51', null, null);

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES ('9', '2014_10_12_000000_create_users_table', '1');
INSERT INTO `migrations` VALUES ('10', '2014_10_12_100000_create_password_resets_table', '1');
INSERT INTO `migrations` VALUES ('11', '2018_01_29_072253_create_articles_table', '1');
INSERT INTO `migrations` VALUES ('12', '2018_01_31_093424_add_activation_to_users_table', '1');
INSERT INTO `migrations` VALUES ('13', '2018_02_01_143348_create_statuses_table', '1');
INSERT INTO `migrations` VALUES ('14', '2018_02_01_151813_add_is_admin_to_users_table', '2');
INSERT INTO `migrations` VALUES ('15', '2018_02_01_171906_create_followers_table', '3');

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of password_resets
-- ----------------------------

-- ----------------------------
-- Table structure for statuses
-- ----------------------------
DROP TABLE IF EXISTS `statuses`;
CREATE TABLE `statuses` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `statuses_created_at_index` (`created_at`),
  KEY `statuses_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of statuses
-- ----------------------------
INSERT INTO `statuses` VALUES ('1', 'Iure dolorum qui debitis reiciendis. Incidunt rem facere nihil repellendus. Saepe suscipit et voluptatem a. Porro in ullam et et molestiae minus laborum quae.', '3', '1978-07-22 23:44:25', '1978-07-22 23:44:25');
INSERT INTO `statuses` VALUES ('2', 'Vel quis nesciunt nobis qui at et. Id molestias sunt qui quia ut a repellendus.', '2', '1983-02-15 03:38:54', '1983-02-15 03:38:54');
INSERT INTO `statuses` VALUES ('3', 'Dolores minima ut nulla facilis reprehenderit culpa. Eos qui porro nulla. Doloribus aut est praesentium dolores ea et sint.', '3', '2011-02-01 21:53:49', '2011-02-01 21:53:49');
INSERT INTO `statuses` VALUES ('4', 'Consectetur magnam et ut ut. Voluptatem sunt in non quia. Earum commodi reprehenderit impedit modi qui et esse. Maiores esse nostrum rerum reprehenderit perferendis similique voluptatibus corporis.', '3', '1990-07-01 08:59:45', '1990-07-01 08:59:45');
INSERT INTO `statuses` VALUES ('5', 'Non sint eos exercitationem nulla. Quaerat in soluta fugiat beatae eveniet sapiente dolorem. Amet et dolor saepe sunt odit explicabo. Dicta ab est modi molestias.', '1', '1983-06-27 16:18:25', '1983-06-27 16:18:25');
INSERT INTO `statuses` VALUES ('6', 'Cum nemo dicta quae error itaque. Est rem voluptates est magnam deserunt totam. Quam libero amet aperiam voluptatem totam.', '1', '1981-04-12 02:36:34', '1981-04-12 02:36:34');
INSERT INTO `statuses` VALUES ('7', 'Illo iure placeat fugit aut eos tempore. Quo iste et quo qui eius voluptatem asperiores tempore. Quis et explicabo sed saepe magni consectetur.', '2', '1981-05-09 03:11:31', '1981-05-09 03:11:31');
INSERT INTO `statuses` VALUES ('8', 'Iure rerum consequatur distinctio non autem iste maxime. Labore consequatur molestias officia. Ad et deserunt molestiae quam autem quam est.', '2', '2006-03-31 16:36:57', '2006-03-31 16:36:57');
INSERT INTO `statuses` VALUES ('9', 'Perferendis voluptatibus minus itaque repudiandae laboriosam. Amet velit repellat consequatur facilis et ducimus cumque. Non dolorum magni odio sequi.', '3', '1985-03-02 23:22:49', '1985-03-02 23:22:49');
INSERT INTO `statuses` VALUES ('10', 'Dolore voluptatem vel nemo. Sed dolor quasi enim rerum. Error enim quis neque. Dolor qui enim repellendus id omnis qui optio. Rerum minima molestiae ut accusamus deserunt.', '1', '2008-12-11 08:50:26', '2008-12-11 08:50:26');
INSERT INTO `statuses` VALUES ('11', 'Quaerat ea veniam rerum debitis enim. Incidunt illo et repellendus omnis ut maxime perferendis. Eligendi aspernatur dolor itaque aut.', '2', '1975-05-28 09:56:09', '1975-05-28 09:56:09');
INSERT INTO `statuses` VALUES ('12', 'Necessitatibus laboriosam nihil ullam eum molestias maxime. Laudantium aut placeat numquam eveniet vero. Provident qui aliquam deserunt harum numquam. Delectus aspernatur quo esse.', '1', '2002-11-28 22:47:27', '2002-11-28 22:47:27');
INSERT INTO `statuses` VALUES ('13', 'Laudantium quis maxime tenetur sunt rerum praesentium et eveniet. Commodi aut veritatis non eum. Est minima dolorem quos dicta beatae.', '3', '1983-03-25 21:54:18', '1983-03-25 21:54:18');
INSERT INTO `statuses` VALUES ('14', 'Qui quas possimus excepturi suscipit et impedit eius est. Harum commodi deserunt inventore reiciendis. Vel sequi aspernatur molestias nemo.', '2', '1975-10-26 08:12:13', '1975-10-26 08:12:13');
INSERT INTO `statuses` VALUES ('15', 'Sunt asperiores quia velit reiciendis. Modi quia ad libero voluptatibus reprehenderit. Beatae placeat molestiae autem magni sit nemo quaerat illum.', '2', '1987-08-10 20:45:57', '1987-08-10 20:45:57');
INSERT INTO `statuses` VALUES ('16', 'Eos laboriosam harum dolorum ipsum. Nobis temporibus perferendis natus dolores voluptatibus exercitationem culpa. Quia quas ex quasi quis.', '1', '2008-05-10 00:55:34', '2008-05-10 00:55:34');
INSERT INTO `statuses` VALUES ('17', 'Delectus beatae dolore reprehenderit eaque sed animi. Sed minus quibusdam reiciendis quae illo qui corrupti. Sint et quis sit eum porro nobis.', '1', '2002-07-29 02:29:27', '2002-07-29 02:29:27');
INSERT INTO `statuses` VALUES ('18', 'Non pariatur et itaque aliquam culpa est enim dolores. Eligendi autem ut explicabo deleniti ut quo qui.', '3', '2003-05-08 10:56:23', '2003-05-08 10:56:23');
INSERT INTO `statuses` VALUES ('19', 'Natus deleniti iste vel amet. Asperiores eligendi rerum ut quia perspiciatis. Velit est et et. Occaecati quam est nam quia.', '3', '1980-01-15 15:24:51', '1980-01-15 15:24:51');
INSERT INTO `statuses` VALUES ('20', 'Ipsam quibusdam ut iure dolorum officia et asperiores. Voluptatibus et earum quae fugit. Fugiat ut quis nobis ut autem nesciunt.', '2', '1996-01-22 11:18:22', '1996-01-22 11:18:22');
INSERT INTO `statuses` VALUES ('21', 'Quis et et iure quisquam eum et nesciunt. Atque eos dicta voluptas voluptatem neque et reiciendis. Eos ea illum non voluptatum quas cumque. Et sed sunt maxime inventore iste dolorem explicabo in.', '3', '1980-03-09 02:22:18', '1980-03-09 02:22:18');
INSERT INTO `statuses` VALUES ('22', 'Dolorem quos quibusdam in asperiores minima vel. Eius architecto aut quo et earum et ut. Et perferendis et est. Iste sunt vitae doloremque libero.', '1', '2007-11-24 01:54:51', '2007-11-24 01:54:51');
INSERT INTO `statuses` VALUES ('23', 'Enim aperiam enim qui animi quidem dolores. Voluptatem ipsum nisi mollitia quam. Illum ea reprehenderit temporibus nobis.', '1', '2013-03-22 01:50:01', '2013-03-22 01:50:01');
INSERT INTO `statuses` VALUES ('24', 'Eveniet sed minus voluptas officiis esse. Saepe facere ea quisquam dolorem numquam. Excepturi ipsam sed rerum corrupti excepturi nihil reprehenderit. Veniam amet quae minus vel.', '2', '1990-04-05 14:57:27', '1990-04-05 14:57:27');
INSERT INTO `statuses` VALUES ('25', 'Quod eligendi sit aperiam nulla dolore doloremque praesentium et. Debitis molestiae maxime corrupti. Distinctio aliquam totam commodi.', '3', '1974-05-06 14:47:29', '1974-05-06 14:47:29');
INSERT INTO `statuses` VALUES ('26', 'Vero repellat sint consequuntur officiis et. Possimus rem veritatis provident officiis nisi voluptates.', '1', '1987-07-07 04:32:57', '1987-07-07 04:32:57');
INSERT INTO `statuses` VALUES ('27', 'Rerum a et tempora. Tenetur blanditiis modi dolor quae at. Eos nam nihil ipsa soluta eos natus dolorum. Et quasi neque id dignissimos culpa.', '2', '1975-04-30 04:27:56', '1975-04-30 04:27:56');
INSERT INTO `statuses` VALUES ('28', 'Earum quia delectus nam perspiciatis consectetur et enim. Ab quia dolor veritatis est nisi. Vitae quam placeat dolorum voluptas. Expedita totam quod in illo. Exercitationem architecto qui ab quas.', '3', '1998-02-13 21:22:52', '1998-02-13 21:22:52');
INSERT INTO `statuses` VALUES ('29', 'Sed recusandae est natus. Fuga voluptas porro aut quaerat. Sint sunt eveniet id quidem. Rerum enim ea tempore totam veniam.', '1', '1976-07-03 07:27:57', '1976-07-03 07:27:57');
INSERT INTO `statuses` VALUES ('30', 'Minus nihil non aperiam nihil atque vero. Architecto veritatis doloribus similique occaecati cupiditate fuga. Quisquam cum nihil omnis molestias. Placeat aperiam illo minus laudantium soluta et.', '1', '2012-08-16 13:09:01', '2012-08-16 13:09:01');
INSERT INTO `statuses` VALUES ('31', 'Sed saepe ut alias nostrum quo in culpa. Qui aut cum ut nemo consequatur excepturi. Iusto et eaque unde repellat numquam ipsa.', '3', '1972-08-03 13:06:36', '1972-08-03 13:06:36');
INSERT INTO `statuses` VALUES ('32', 'Dolores adipisci aliquam quis eos enim. Et ea id provident vel atque rerum nam. Consequatur provident qui nihil amet eum saepe voluptates.', '2', '2001-01-19 00:03:47', '2001-01-19 00:03:47');
INSERT INTO `statuses` VALUES ('33', 'Voluptatem inventore esse dolore fugiat. Deleniti id nam eligendi accusantium est. Quisquam officiis inventore eum.', '3', '1984-03-16 19:49:47', '1984-03-16 19:49:47');
INSERT INTO `statuses` VALUES ('34', 'Et voluptas doloremque nemo aut laboriosam cupiditate quidem fuga. In maiores est cupiditate in non earum quia. Sed ab et praesentium occaecati.', '2', '2004-09-10 08:44:48', '2004-09-10 08:44:48');
INSERT INTO `statuses` VALUES ('35', 'Placeat et aperiam sunt quos molestiae quo nulla sunt. Veritatis voluptatem commodi velit laborum. Ea et vel nihil at vitae ullam debitis voluptatem.', '2', '1998-06-29 22:17:12', '1998-06-29 22:17:12');
INSERT INTO `statuses` VALUES ('36', 'Minus velit et occaecati voluptas dolor dignissimos voluptatem. Sit animi tempora qui omnis. Voluptatibus quae quia qui sit vitae sit sed.', '2', '2008-12-28 13:48:20', '2008-12-28 13:48:20');
INSERT INTO `statuses` VALUES ('37', 'Dicta veritatis quis repudiandae. Distinctio quidem quasi dolor velit. Corporis voluptatum molestiae quia expedita. Dolorem unde assumenda ducimus aspernatur sed.', '2', '1987-05-25 15:10:01', '1987-05-25 15:10:01');
INSERT INTO `statuses` VALUES ('38', 'Facilis odit qui eos quia deserunt quisquam. Iure necessitatibus ea voluptatem. Cumque sint est ut nulla sit possimus veritatis ut.', '2', '1973-06-12 09:18:30', '1973-06-12 09:18:30');
INSERT INTO `statuses` VALUES ('39', 'Earum voluptatem aliquid dolore molestiae cumque voluptas. Ut harum est aut rerum eveniet voluptatem odio. Quo harum rerum neque. Consequatur qui ad nemo.', '1', '2004-11-07 03:06:27', '2004-11-07 03:06:27');
INSERT INTO `statuses` VALUES ('40', 'Aliquid doloribus consequatur qui ut sunt adipisci. Maiores at recusandae illo quia eveniet. Facere ut dolor sed aut fugit. Autem velit atque culpa cupiditate nam vero.', '2', '1987-06-21 11:23:29', '1987-06-21 11:23:29');
INSERT INTO `statuses` VALUES ('41', 'Hic id quas minima cum et incidunt ipsum. Aut dolorem sit corrupti. Et et voluptate recusandae blanditiis sunt quia est consectetur. Dolorum et molestiae fugiat nobis quidem nobis.', '3', '2014-09-17 23:56:33', '2014-09-17 23:56:33');
INSERT INTO `statuses` VALUES ('42', 'Qui dicta mollitia nemo possimus recusandae. Adipisci porro rerum minus repudiandae adipisci et veniam soluta. Tempora et eum et.', '2', '2012-08-01 15:45:04', '2012-08-01 15:45:04');
INSERT INTO `statuses` VALUES ('43', 'Sed qui vitae soluta ipsam asperiores aut nemo. Molestiae aperiam exercitationem sequi tempore sunt iste dignissimos.', '3', '1970-06-18 23:52:32', '1970-06-18 23:52:32');
INSERT INTO `statuses` VALUES ('44', 'Doloribus non ex quidem et. Sunt quia et et ratione accusamus soluta. Et optio et quas natus dolores ex atque. Rerum qui quia cum illum expedita sit. Temporibus similique iure est quam sapiente.', '2', '2007-10-25 02:14:17', '2007-10-25 02:14:17');
INSERT INTO `statuses` VALUES ('45', 'Et assumenda sapiente ea sed distinctio. Earum nobis omnis illum ex quis quae. Aut non harum deleniti mollitia. Nemo odio asperiores magnam unde ea rerum voluptas.', '1', '1979-03-20 17:52:28', '1979-03-20 17:52:28');
INSERT INTO `statuses` VALUES ('46', 'Accusamus aliquid alias velit delectus nostrum. Expedita nobis quo praesentium dolor natus occaecati. Aut perspiciatis commodi qui deserunt dolorem sunt.', '1', '2007-04-04 05:07:57', '2007-04-04 05:07:57');
INSERT INTO `statuses` VALUES ('47', 'Aut sunt velit doloribus aliquam enim reprehenderit quae neque. Asperiores natus accusamus facere eaque necessitatibus reprehenderit qui.', '3', '2001-08-22 21:52:58', '2001-08-22 21:52:58');
INSERT INTO `statuses` VALUES ('48', 'Omnis odio in quia iusto alias non assumenda. Quidem dolor adipisci veritatis dolores.', '3', '1973-08-22 01:15:24', '1973-08-22 01:15:24');
INSERT INTO `statuses` VALUES ('49', 'Debitis adipisci quos aspernatur illum quia laboriosam sunt. Quia commodi voluptas blanditiis ratione. Ea quis atque illo error tenetur in dolores cumque.', '1', '1983-11-28 03:52:31', '1983-11-28 03:52:31');
INSERT INTO `statuses` VALUES ('50', 'Eius soluta rerum omnis quis veritatis ad quam. Corrupti quia sit blanditiis architecto earum facere magnam.', '1', '2006-10-18 06:24:58', '2006-10-18 06:24:58');
INSERT INTO `statuses` VALUES ('51', 'Illum sit voluptatibus possimus sapiente itaque. Neque aut eligendi aliquam cumque illo quae culpa maxime.', '1', '2011-07-13 20:47:19', '2011-07-13 20:47:19');
INSERT INTO `statuses` VALUES ('52', 'Sed nulla iusto praesentium numquam. Incidunt molestiae aut dolores. Et aliquid et nobis cupiditate animi veritatis incidunt. Aut distinctio rerum et et magnam incidunt.', '2', '2007-12-29 21:05:55', '2007-12-29 21:05:55');
INSERT INTO `statuses` VALUES ('53', 'Voluptas ipsa necessitatibus quidem enim architecto. Vel nisi distinctio tempore commodi. Enim nulla sed ea ipsum et delectus.', '2', '1985-12-23 18:25:49', '1985-12-23 18:25:49');
INSERT INTO `statuses` VALUES ('54', 'Et exercitationem repellendus quis quia. Autem enim molestias fuga esse alias corporis aperiam nobis. Amet repellendus facilis excepturi ad et ipsum. Ipsum provident a ea omnis.', '2', '1986-01-24 08:29:01', '1986-01-24 08:29:01');
INSERT INTO `statuses` VALUES ('55', 'Aut similique voluptatibus quis autem atque illo ea. Vero inventore quod quam. Assumenda laudantium fuga reiciendis pariatur veniam aut. Cumque quo nemo est iusto quis eaque nihil.', '3', '1971-07-11 21:28:41', '1971-07-11 21:28:41');
INSERT INTO `statuses` VALUES ('56', 'Totam repellendus omnis reprehenderit voluptatem dolore voluptas. Repudiandae blanditiis autem est neque dignissimos maiores ullam.', '3', '1985-08-02 05:47:19', '1985-08-02 05:47:19');
INSERT INTO `statuses` VALUES ('57', 'Autem et omnis rerum mollitia exercitationem quia rerum. Voluptatibus quae inventore labore nostrum nostrum alias neque. Laudantium porro atque sunt nemo.', '1', '2014-03-18 11:41:30', '2014-03-18 11:41:30');
INSERT INTO `statuses` VALUES ('58', 'Cupiditate voluptatem hic odio accusamus natus magni sint qui. Iure consequatur quia eius doloribus. Similique eos sed quam est quis quis est.', '2', '1989-04-18 02:30:23', '1989-04-18 02:30:23');
INSERT INTO `statuses` VALUES ('59', 'Sed aut magnam architecto. Modi voluptatum voluptatum a incidunt minima quam accusantium. Excepturi voluptatem delectus magni qui nam iste.', '1', '2017-05-23 16:58:19', '2017-05-23 16:58:19');
INSERT INTO `statuses` VALUES ('60', 'Voluptatem enim ducimus dolorem est qui. Consequuntur nihil et odio. Non dignissimos qui atque unde temporibus labore fugit. Voluptatibus aperiam fugit sed rem.', '3', '1999-08-24 06:38:04', '1999-08-24 06:38:04');
INSERT INTO `statuses` VALUES ('61', 'Iure in et commodi quo inventore illo. Qui et optio eos quia corrupti. Deserunt minus sint sed rerum et consequatur.', '2', '1974-12-31 14:13:16', '1974-12-31 14:13:16');
INSERT INTO `statuses` VALUES ('62', 'In nam omnis molestias recusandae molestiae nulla. Voluptatibus non ut rerum ad. Velit et dolores velit. Sed neque deleniti voluptatem.', '3', '1993-07-09 02:26:36', '1993-07-09 02:26:36');
INSERT INTO `statuses` VALUES ('63', 'Soluta ut odio at voluptas ut cumque aliquid. Hic maiores aut saepe neque sed suscipit voluptas. Qui id dolorem ut deleniti assumenda ut qui. In eligendi est sit dolore id tenetur ut dolorem.', '3', '1988-10-17 11:03:26', '1988-10-17 11:03:26');
INSERT INTO `statuses` VALUES ('64', 'Laudantium vero tempora ullam quisquam eos. Nisi aspernatur quaerat ut qui odio adipisci. Quis possimus ut sunt ut dolorum vitae id. Enim nostrum dolore minus aut rerum.', '3', '1978-07-01 10:15:07', '1978-07-01 10:15:07');
INSERT INTO `statuses` VALUES ('65', 'Voluptas sint a est nostrum. Consequuntur tempora ut dolores deleniti tenetur adipisci. Consequatur accusamus est molestiae doloribus ipsam similique eaque. Et quia ullam nam dolores quae veniam.', '2', '1988-06-11 00:12:49', '1988-06-11 00:12:49');
INSERT INTO `statuses` VALUES ('66', 'Quos et eos ipsam saepe dolores laudantium. Aut veritatis esse eum voluptatem id facilis. Aut explicabo sit doloribus.', '3', '1994-07-26 23:43:28', '1994-07-26 23:43:28');
INSERT INTO `statuses` VALUES ('67', 'Rem molestiae hic fuga sit. Consequatur quis laudantium soluta et quos. Sit rem dolores ratione ut eius. Quam eligendi possimus eos repellendus provident amet.', '3', '2017-08-03 10:55:48', '2017-08-03 10:55:48');
INSERT INTO `statuses` VALUES ('68', 'Vitae commodi aut eius. Quae ut dolores non. Sunt et ut debitis voluptate. Vel molestias tempore est neque non sed earum.', '3', '1998-01-30 13:42:24', '1998-01-30 13:42:24');
INSERT INTO `statuses` VALUES ('69', 'Nam est corrupti ipsam aliquid et. Qui quia magnam corporis ipsa nulla exercitationem. Exercitationem voluptates dolorem voluptate vero vel aspernatur. Sunt et eum et voluptatum dolores.', '1', '1975-06-15 12:13:59', '1975-06-15 12:13:59');
INSERT INTO `statuses` VALUES ('70', 'Quos tenetur ut quas fugit sapiente. Vero non dolorem sit sit veniam. Dolore quaerat cumque et sunt. Temporibus id ea aut nulla quae.', '1', '2002-09-06 16:20:08', '2002-09-06 16:20:08');
INSERT INTO `statuses` VALUES ('71', 'Repellendus enim voluptatibus ab nobis reiciendis provident id. Itaque est ea ea dolor dolorem sed. Voluptate sint vero enim consectetur.', '3', '1990-12-13 00:24:31', '1990-12-13 00:24:31');
INSERT INTO `statuses` VALUES ('72', 'Cupiditate saepe ipsum quaerat alias quis. Vel officia quo est ipsam temporibus. Suscipit voluptatibus inventore omnis ea. Ipsa aut voluptatibus officiis tempora maiores at temporibus.', '1', '2009-01-20 21:59:42', '2009-01-20 21:59:42');
INSERT INTO `statuses` VALUES ('73', 'Exercitationem sunt recusandae quia at nemo. Rem et aut dolor harum vel deserunt. Vitae accusantium repudiandae est delectus. Nihil architecto dolorem officia et eos non expedita.', '2', '2001-08-02 22:20:44', '2001-08-02 22:20:44');
INSERT INTO `statuses` VALUES ('74', 'Alias quis blanditiis qui rerum rem. Voluptatibus dolores expedita et. Esse placeat dolore dolorem sunt. Voluptatem praesentium est ut sequi omnis tempore.', '2', '2017-12-11 18:26:20', '2017-12-11 18:26:20');
INSERT INTO `statuses` VALUES ('75', 'Accusantium beatae et distinctio. Aut error nihil neque quisquam velit corporis perspiciatis. Eos aliquam corrupti corrupti et enim.', '1', '1988-12-01 14:54:23', '1988-12-01 14:54:23');
INSERT INTO `statuses` VALUES ('76', 'Omnis fugit aut alias mollitia et voluptas aut. Quae et et rerum eveniet repudiandae dignissimos. Accusamus est similique voluptas.', '1', '1980-07-11 01:23:08', '1980-07-11 01:23:08');
INSERT INTO `statuses` VALUES ('77', 'Repellendus corrupti rerum eveniet ab est porro. Ad tempore incidunt perspiciatis nulla saepe debitis. Ipsam in est repellat voluptatem ipsa impedit.', '1', '2006-09-16 11:21:49', '2006-09-16 11:21:49');
INSERT INTO `statuses` VALUES ('78', 'Illum itaque omnis libero laborum recusandae voluptatum. Dolor suscipit alias et. Natus ad iusto illum ea aut. Possimus in dolore eos amet sed.', '2', '2015-01-25 02:39:23', '2015-01-25 02:39:23');
INSERT INTO `statuses` VALUES ('79', 'Sapiente omnis voluptatem libero qui qui. Sed eveniet recusandae facilis magnam nemo. Aut dolorem aspernatur quidem non laudantium dolore minus.', '2', '2007-12-09 21:44:34', '2007-12-09 21:44:34');
INSERT INTO `statuses` VALUES ('80', 'Atque ut numquam inventore ex labore ipsam alias quo. Quia in fugiat adipisci ut autem. Laudantium qui ab optio amet. Ut cumque adipisci neque qui.', '2', '1972-01-16 20:46:22', '1972-01-16 20:46:22');
INSERT INTO `statuses` VALUES ('81', 'Quia est culpa numquam labore tempora laudantium est sed. Perspiciatis et illum ab et ipsa. Ipsum non ut dicta consequuntur corporis omnis in.', '2', '1970-02-01 06:25:27', '1970-02-01 06:25:27');
INSERT INTO `statuses` VALUES ('82', 'Quae magnam autem est eius ratione consectetur. Earum recusandae enim ipsam voluptatem error voluptates architecto minus. Iure laudantium deleniti et eaque.', '3', '2001-09-16 04:45:02', '2001-09-16 04:45:02');
INSERT INTO `statuses` VALUES ('83', 'Laboriosam veniam architecto sed eius. Saepe eos et sequi harum ut mollitia. Eos commodi quisquam numquam architecto.', '1', '2014-01-12 11:56:41', '2014-01-12 11:56:41');
INSERT INTO `statuses` VALUES ('84', 'Magni voluptas molestiae totam cupiditate. Modi in reprehenderit veniam sint dolores dolores repellat. Rerum quia nihil ut placeat id recusandae distinctio.', '2', '2003-12-06 05:13:02', '2003-12-06 05:13:02');
INSERT INTO `statuses` VALUES ('85', 'Esse eligendi qui tempora sunt sed quia dicta. Soluta perspiciatis et magnam. Ea aspernatur quo voluptas voluptatem molestiae ea aspernatur. Rerum optio quia voluptas enim repudiandae.', '3', '1992-03-16 20:28:15', '1992-03-16 20:28:15');
INSERT INTO `statuses` VALUES ('86', 'Distinctio vitae hic sint et. Eos autem nulla fuga esse reprehenderit. Consequatur quia nisi ratione hic pariatur exercitationem architecto. Sit sit deserunt quaerat aut sapiente nihil.', '3', '2004-02-25 22:38:32', '2004-02-25 22:38:32');
INSERT INTO `statuses` VALUES ('87', 'Occaecati alias fugiat veniam labore iste debitis voluptatem. Et rerum officiis aut dolorum laudantium fugiat. Quasi mollitia et eligendi.', '3', '1985-09-17 16:14:44', '1985-09-17 16:14:44');
INSERT INTO `statuses` VALUES ('88', 'Dolores consequuntur in repellat commodi. Consequatur ut officiis veritatis ullam qui sit. Dicta praesentium sequi minima et sit quaerat autem. Laborum suscipit labore quo.', '1', '1984-10-30 01:22:21', '1984-10-30 01:22:21');
INSERT INTO `statuses` VALUES ('89', 'Doloremque modi tenetur itaque temporibus itaque mollitia eaque. Magnam quasi nesciunt adipisci nihil quia. Soluta sapiente sed unde sit aut fugit quia.', '2', '1973-07-29 16:27:51', '1973-07-29 16:27:51');
INSERT INTO `statuses` VALUES ('90', 'Error quam corrupti illum mollitia ut alias. Alias expedita praesentium et numquam assumenda corrupti. Quaerat aliquam ab repellat dignissimos quasi sequi.', '2', '1977-01-03 15:28:26', '1977-01-03 15:28:26');
INSERT INTO `statuses` VALUES ('91', 'In a repellendus fuga omnis. Veniam et qui et reiciendis sit id dolores neque. Fugiat error quaerat placeat qui sint placeat voluptas. Dicta voluptatum modi dolor.', '1', '1982-05-25 17:28:01', '1982-05-25 17:28:01');
INSERT INTO `statuses` VALUES ('92', 'Ut sit ipsa sed accusantium exercitationem. Sit qui ut voluptatum voluptas sapiente. Hic quos eligendi et. Aut quod reiciendis quia placeat.', '3', '1971-04-20 22:32:44', '1971-04-20 22:32:44');
INSERT INTO `statuses` VALUES ('93', 'Dolore dicta qui corporis libero doloribus repellendus ratione. Nostrum officia nihil voluptatem quis dolor veniam doloremque. Iste est aliquam vel. Officia repellat autem ea atque ab dolores.', '3', '2004-08-31 15:02:38', '2004-08-31 15:02:38');
INSERT INTO `statuses` VALUES ('94', 'Voluptate unde ut alias enim. Aut ut saepe id sapiente. Delectus optio adipisci autem aspernatur voluptatum nisi. Libero doloribus quaerat occaecati incidunt magnam. Sed soluta sunt est dolorem.', '3', '2014-12-20 10:20:51', '2014-12-20 10:20:51');
INSERT INTO `statuses` VALUES ('95', 'Delectus autem dolores harum officia quis. Nemo enim vitae enim sint. Exercitationem aperiam veniam odit aspernatur. Et beatae similique asperiores nemo culpa dolor.', '1', '2003-08-24 08:13:58', '2003-08-24 08:13:58');
INSERT INTO `statuses` VALUES ('96', 'Sed maiores est pariatur et sint rerum ut. Nam voluptatem architecto earum. Nesciunt vero velit ipsam voluptas laborum reprehenderit dicta.', '3', '1973-05-26 06:18:44', '1973-05-26 06:18:44');
INSERT INTO `statuses` VALUES ('97', 'Consequatur et ducimus sunt nulla qui est odio laborum. Et repellat occaecati odio in facilis asperiores. Quia quo neque adipisci laboriosam. Esse dignissimos quidem at.', '2', '2013-06-14 16:20:49', '2013-06-14 16:20:49');
INSERT INTO `statuses` VALUES ('98', 'Est aut quasi voluptas incidunt accusamus quibusdam. Sit quibusdam nesciunt at libero itaque. Ipsum et et vel qui et magnam dolorem.', '3', '2000-04-10 04:59:39', '2000-04-10 04:59:39');
INSERT INTO `statuses` VALUES ('99', 'Possimus veritatis tempore qui. Porro qui eligendi debitis rem placeat inventore. Reiciendis et a ducimus ducimus.', '1', '1996-05-18 08:26:48', '1996-05-18 08:26:48');
INSERT INTO `statuses` VALUES ('100', 'Vero a modi mollitia voluptas harum nihil eos illo. Ipsa eveniet doloribus non autem voluptatum. Sed ab quia dolorum quidem recusandae. Facilis error voluptate ut exercitationem delectus ut.', '3', '2002-10-24 15:46:35', '2002-10-24 15:46:35');
INSERT INTO `statuses` VALUES ('102', '三生三世十里桃花', '51', '2018-02-01 16:28:50', '2018-02-01 16:28:50');
INSERT INTO `statuses` VALUES ('103', '打法', '51', '2018-02-01 16:29:41', '2018-02-01 16:29:41');

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `activation_token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `activated` tinyint(1) NOT NULL DEFAULT '0',
  `is_admin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES ('1', 'Aufree', '55040798@qq.com', '$2y$10$tQXBzsc3ZGmpE3JRSBKZ4.sywfsUJTWXyK0TbdfIm4Vb16mf8N9ja', 'wAbe3RJxkd', '1985-09-30 18:16:32', '2018-02-01 15:11:46', null, '0', '0');
INSERT INTO `users` VALUES ('2', 'Gideon Hintz', 'waters.tomasa@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'flmOvz3TJq', '1990-08-20 20:31:14', '1990-08-20 20:31:14', null, '0', '0');
INSERT INTO `users` VALUES ('3', 'Deion Lebsack', 'sschmidt@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'yFfTQ79cbdhRH1hwx9GomguNwOqWFW4t7eVFjvhNKFssLZ1QABvDSuvOOX4k', '1979-07-11 04:40:42', '1979-07-11 04:40:42', null, '0', '0');
INSERT INTO `users` VALUES ('4', 'Trinity Feest V', 'pokeefe@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'dJHuOCVlJA', '2016-10-17 00:33:10', '2016-10-17 00:33:10', null, '0', '0');
INSERT INTO `users` VALUES ('5', 'Dr. Alicia Huel DVM', 'hnolan@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'rtevp2Jqji', '1994-05-12 19:31:10', '1994-05-12 19:31:10', null, '0', '0');
INSERT INTO `users` VALUES ('6', 'Prof. Rudy Shields II', 'idurgan@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'prIfagEps4', '2016-04-01 16:37:46', '2016-04-01 16:37:46', null, '0', '0');
INSERT INTO `users` VALUES ('7', 'Keeley Balistreri III', 'adrain.lindgren@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'gjthtTVBl9', '1974-09-14 16:15:40', '1974-09-14 16:15:40', null, '0', '0');
INSERT INTO `users` VALUES ('8', 'Prof. Christophe Lockman', 'bednar.yolanda@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '0ev2trBpve', '1986-09-21 05:54:35', '1986-09-21 05:54:35', null, '0', '0');
INSERT INTO `users` VALUES ('9', 'Jermain Leannon', 'roberts.twila@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'GqcqXd6mt9', '2009-08-12 22:45:55', '2009-08-12 22:45:55', null, '0', '0');
INSERT INTO `users` VALUES ('10', 'Ike DuBuque', 'ted51@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '76zT1MZxfz', '1978-10-30 02:29:32', '1978-10-30 02:29:32', null, '0', '0');
INSERT INTO `users` VALUES ('11', 'Miss Rubie Kutch', 'maryse16@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'rUJgOWfh5q', '1985-01-21 12:00:23', '1985-01-21 12:00:23', null, '0', '0');
INSERT INTO `users` VALUES ('12', 'Gretchen Batz', 'ydoyle@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'krsQCN8Weh', '2003-12-02 12:06:57', '2003-12-02 12:06:57', null, '0', '0');
INSERT INTO `users` VALUES ('13', 'Dr. Toni Becker', 'mckenzie.mercedes@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'bAdJwL6BFG', '2007-11-10 19:16:53', '2007-11-10 19:16:53', null, '0', '0');
INSERT INTO `users` VALUES ('14', 'Newton Heidenreich', 'jennie.fisher@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'BiIqcsyzzb', '1999-04-03 09:08:51', '1999-04-03 09:08:51', null, '0', '0');
INSERT INTO `users` VALUES ('15', 'Lysanne Wolff PhD', 'alana44@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'PFwOpxFBBj', '2016-07-19 13:22:03', '2016-07-19 13:22:03', null, '0', '0');
INSERT INTO `users` VALUES ('16', 'Dr. Sammy Wisoky Sr.', 'marianna.collins@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '6iypagsTKn', '1996-08-27 22:12:09', '1996-08-27 22:12:09', null, '0', '0');
INSERT INTO `users` VALUES ('17', 'Freeda Adams', 'dino.bauch@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'BGZtFRwTiL', '2003-08-23 09:26:13', '2003-08-23 09:26:13', null, '0', '0');
INSERT INTO `users` VALUES ('18', 'Damon Daugherty I', 'ola.lehner@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'n48AklyU2f', '1984-08-23 17:52:18', '1984-08-23 17:52:18', null, '0', '0');
INSERT INTO `users` VALUES ('19', 'Marlee Kutch', 'amaya.effertz@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Ql2NNozhuA', '2006-07-30 11:31:39', '2006-07-30 11:31:39', null, '0', '0');
INSERT INTO `users` VALUES ('20', 'Lucinda Graham', 'kpouros@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'qrGdEbR87g', '1992-05-05 00:10:11', '1992-05-05 00:10:11', null, '0', '0');
INSERT INTO `users` VALUES ('21', 'Trystan Rath', 'gweber@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'KS7rlkQw4B', '2004-11-07 23:34:59', '2004-11-07 23:34:59', null, '0', '0');
INSERT INTO `users` VALUES ('22', 'Bruce Denesik', 'emile.jast@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Y01YvryAQ6', '2001-07-27 11:11:10', '2001-07-27 11:11:10', null, '0', '0');
INSERT INTO `users` VALUES ('23', 'Jaron Kunde', 'hettie.mann@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '2yYmrcUZXP', '1977-01-08 20:21:27', '1977-01-08 20:21:27', null, '0', '0');
INSERT INTO `users` VALUES ('24', 'Dr. Thea Smitham Jr.', 'anissa69@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'H2qP3OMLsG', '2013-12-26 08:09:32', '2013-12-26 08:09:32', null, '0', '0');
INSERT INTO `users` VALUES ('25', 'Mr. Ralph Hahn Jr.', 'birdie88@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Y4ZmnxHzXG', '1989-05-19 12:20:05', '1989-05-19 12:20:05', null, '0', '0');
INSERT INTO `users` VALUES ('26', 'Madilyn Christiansen', 'mcglynn.therese@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'SN4ohdFgW0', '1988-09-10 20:29:26', '1988-09-10 20:29:26', null, '0', '0');
INSERT INTO `users` VALUES ('27', 'Brady Windler', 'rkoch@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'EdXdzw5N9Z', '2010-11-18 05:12:31', '2010-11-18 05:12:31', null, '0', '0');
INSERT INTO `users` VALUES ('28', 'Yasmine Connelly I', 'tierra91@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ZVszVaMMM2', '1976-03-16 17:11:07', '1976-03-16 17:11:07', null, '0', '0');
INSERT INTO `users` VALUES ('29', 'Dr. Hudson White', 'onie.stehr@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'c6LyTbTTRE', '1996-01-17 12:19:22', '1996-01-17 12:19:22', null, '0', '0');
INSERT INTO `users` VALUES ('30', 'Jamal Prohaska', 'brohan@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'bE7zx5yecs', '1978-05-19 13:41:56', '1978-05-19 13:41:56', null, '0', '0');
INSERT INTO `users` VALUES ('31', 'Janet Brakus', 'muriel72@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'TQOT18tRWl', '2011-03-02 05:07:24', '2011-03-02 05:07:24', null, '0', '0');
INSERT INTO `users` VALUES ('32', 'Jaron Romaguera DVM', 'ophelia28@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'okWe7P5dDr', '2015-05-07 20:50:59', '2015-05-07 20:50:59', null, '0', '0');
INSERT INTO `users` VALUES ('33', 'Mrs. Valentine Bernier MD', 'laney.kerluke@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'ZfG53cOVEr', '1979-12-07 04:01:08', '1979-12-07 04:01:08', null, '0', '0');
INSERT INTO `users` VALUES ('34', 'Dr. Elton Heathcote', 'stiedemann.yvonne@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '30MhvS4pQb', '1993-10-15 04:00:33', '1993-10-15 04:00:33', null, '0', '0');
INSERT INTO `users` VALUES ('35', 'Dr. Jennifer Kautzer DDS', 'dfahey@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'hPhQIzajtx', '1991-05-21 14:36:56', '1991-05-21 14:36:56', null, '0', '0');
INSERT INTO `users` VALUES ('36', 'Dr. Beryl Schumm DDS', 'norene62@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Qnnh1NMCuM', '2008-06-07 10:46:24', '2008-06-07 10:46:24', null, '0', '0');
INSERT INTO `users` VALUES ('37', 'Mrs. Loyce Funk V', 'hunter.leffler@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'oUkX1dcWkx', '1988-05-23 22:49:29', '1988-05-23 22:49:29', null, '0', '0');
INSERT INTO `users` VALUES ('38', 'Natasha Prohaska III', 'tkerluke@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'zmAXJCBly2', '1982-03-27 20:57:35', '1982-03-27 20:57:35', null, '0', '0');
INSERT INTO `users` VALUES ('39', 'Sonny Veum', 'volkman.graham@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'L4dtqf7U6Y', '2013-05-21 17:05:29', '2013-05-21 17:05:29', null, '0', '0');
INSERT INTO `users` VALUES ('40', 'Mrs. Alfreda Altenwerth I', 'veronica38@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'L7KAK77Hhg', '1971-09-09 02:18:01', '1971-09-09 02:18:01', null, '0', '0');
INSERT INTO `users` VALUES ('41', 'Doyle Pagac', 'yhagenes@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'sSMXur2chM', '1997-05-11 18:30:51', '1997-05-11 18:30:51', null, '0', '0');
INSERT INTO `users` VALUES ('42', 'Candida Heaney Sr.', 'smitham.nyah@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'zPiyEYewLy', '2002-01-19 13:01:16', '2002-01-19 13:01:16', null, '0', '0');
INSERT INTO `users` VALUES ('43', 'Tyreek Gislason', 'nya.kertzmann@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'Aw699XM4UM', '2003-07-23 10:25:37', '2003-07-23 10:25:37', null, '0', '0');
INSERT INTO `users` VALUES ('44', 'Norma Pouros', 'harvey.tyreek@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '7qbvBPflSu', '1983-09-09 22:01:34', '1983-09-09 22:01:34', null, '0', '0');
INSERT INTO `users` VALUES ('45', 'Trace McGlynn', 'steve87@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'IiNxKO2Ot4', '1984-07-31 00:21:01', '1984-07-31 00:21:01', null, '0', '0');
INSERT INTO `users` VALUES ('46', 'Garret Jacobi', 'stanley.langosh@example.org', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'BmDPFHN5qA', '2015-03-21 05:00:39', '2015-03-21 05:00:39', null, '0', '0');
INSERT INTO `users` VALUES ('47', 'Willie Dach', 'hreichert@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'T375ClyPEE', '1984-09-01 02:00:59', '1984-09-01 02:00:59', null, '0', '0');
INSERT INTO `users` VALUES ('48', 'Autumn Heaney', 'nbecker@example.com', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'xQBXo3cPJW', '2003-09-24 01:31:45', '2003-09-24 01:31:45', null, '0', '0');
INSERT INTO `users` VALUES ('49', 'Prof. Ethel Nienow V', 'bkihn@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', '7tVkVc4wHg', '2014-09-25 22:59:12', '2014-09-25 22:59:12', null, '0', '0');
INSERT INTO `users` VALUES ('50', 'Mr. Vern Mayert DDS', 'hbatz@example.net', '$2y$10$TKh8H1.PfQx37YgCzwiKb.KjNyWgaHb9cbcoQgdIVFlYg7B77UdFm', 'oNSKqcDgJL', '1977-11-19 23:44:17', '1977-11-19 23:44:17', null, '0', '0');
INSERT INTO `users` VALUES ('51', 'admin', '550407948@qq.com', '$2y$10$FtphxSbjdr2qTr6MmuGn5OUOWec5j0u545dLwAn8Wgd3w8izkayWS', null, '2018-02-01 15:29:40', '2018-02-01 15:29:51', null, '1', '1');
