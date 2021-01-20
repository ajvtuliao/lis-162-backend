-- Valentina Studio --
-- MySQL dump --
-- ---------------------------------------------------------


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
-- ---------------------------------------------------------


-- CREATE TABLE "failed_jobs" ----------------------------------
CREATE TABLE `failed_jobs`( 
	`id` BigInt( 0 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`uuid` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`connection` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`queue` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`payload` LongText CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`exception` LongText CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`failed_at` Timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
	PRIMARY KEY ( `id` ),
	CONSTRAINT `failed_jobs_uuid_unique` UNIQUE( `uuid` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------


-- CREATE TABLE "member_skills" --------------------------------
CREATE TABLE `member_skills`( 
	`id` BigInt( 0 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`created_at` Timestamp NULL,
	`updated_at` Timestamp NULL,
	`name` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`skill` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`member_id` BigInt( 0 ) UNSIGNED NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------


-- CREATE TABLE "members" --------------------------------------
CREATE TABLE `members`( 
	`id` BigInt( 0 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`created_at` Timestamp NULL,
	`updated_at` Timestamp NULL,
	`name` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`status` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`date` Date NULL,
	`project` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
	`start` Date NULL,
	`user_id` BigInt( 0 ) UNSIGNED NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------


-- CREATE TABLE "migrations" -----------------------------------
CREATE TABLE `migrations`( 
	`id` Int( 0 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`migration` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`batch` Int( 0 ) NOT NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------


-- CREATE TABLE "password_resets" ------------------------------
CREATE TABLE `password_resets`( 
	`email` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`token` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`created_at` Timestamp NULL )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB;
-- -------------------------------------------------------------


-- CREATE TABLE "personal_access_tokens" -----------------------
CREATE TABLE `personal_access_tokens`( 
	`id` BigInt( 0 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`tokenable_type` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`tokenable_id` BigInt( 0 ) UNSIGNED NOT NULL,
	`name` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`token` VarChar( 64 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`abilities` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
	`last_used_at` Timestamp NULL,
	`created_at` Timestamp NULL,
	`updated_at` Timestamp NULL,
	PRIMARY KEY ( `id` ),
	CONSTRAINT `personal_access_tokens_token_unique` UNIQUE( `token` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------


-- CREATE TABLE "skills" ---------------------------------------
CREATE TABLE `skills`( 
	`id` BigInt( 0 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`created_at` Timestamp NULL,
	`updated_at` Timestamp NULL,
	`skill` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`description` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`member_skill_id` BigInt( 0 ) UNSIGNED NULL,
	PRIMARY KEY ( `id` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------


-- CREATE TABLE "users" ----------------------------------------
CREATE TABLE `users`( 
	`id` BigInt( 0 ) UNSIGNED AUTO_INCREMENT NOT NULL,
	`name` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`email` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`email_verified_at` Timestamp NULL,
	`password` VarChar( 255 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
	`two_factor_secret` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
	`two_factor_recovery_codes` Text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
	`remember_token` VarChar( 100 ) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
	`created_at` Timestamp NULL,
	`updated_at` Timestamp NULL,
	`admin` TinyInt( 1 ) NOT NULL,
	PRIMARY KEY ( `id` ),
	CONSTRAINT `users_email_unique` UNIQUE( `email` ) )
CHARACTER SET = utf8mb4
COLLATE = utf8mb4_unicode_ci
ENGINE = InnoDB
AUTO_INCREMENT = 1;
-- -------------------------------------------------------------


-- Dump data of "failed_jobs" ------------------------------
-- ---------------------------------------------------------


-- Dump data of "member_skills" ----------------------------
BEGIN;

INSERT INTO `member_skills`(`id`,`created_at`,`updated_at`,`name`,`skill`,`member_id`) VALUES 
( '20', '2021-01-20 09:25:10', '2021-01-20 09:25:10', 'Alexandra Justine Tuliao', 'Vue.js', NULL ),
( '21', '2021-01-20 09:25:10', '2021-01-20 09:25:10', 'Alexandra Justine Tuliao', 'HTML', NULL ),
( '22', '2021-01-20 09:25:10', '2021-01-20 09:25:10', 'Alexandra Justine Tuliao', 'CSS', NULL ),
( '23', '2021-01-20 09:47:05', '2021-01-20 09:47:05', 'Anthon Dela Torre', 'Vue.js', NULL ),
( '24', '2021-01-20 09:47:05', '2021-01-20 09:47:05', 'Anthon Dela Torre', 'HTML', NULL ),
( '25', '2021-01-20 09:47:05', '2021-01-20 09:47:05', 'Anthon Dela Torre', 'CSS', NULL ),
( '26', '2021-01-20 09:47:05', '2021-01-20 09:47:05', 'Anthon Dela Torre', 'Python', NULL ),
( '27', '2021-01-20 09:48:43', '2021-01-20 09:48:43', 'Anton Asprer', 'Python', NULL ),
( '28', '2021-01-20 09:48:43', '2021-01-20 09:48:43', 'Anton Asprer', 'HTML', NULL ),
( '29', '2021-01-20 09:48:43', '2021-01-20 09:48:43', 'Anton Asprer', 'CSS', NULL ),
( '30', '2021-01-20 09:49:26', '2021-01-20 09:49:26', 'Francis Kim Tanay', 'HTML', NULL ),
( '31', '2021-01-20 09:49:26', '2021-01-20 09:49:26', 'Francis Kim Tanay', 'CSS', NULL ),
( '32', '2021-01-20 09:49:26', '2021-01-20 09:49:26', 'Francis Kim Tanay', 'Python', NULL ),
( '33', '2021-01-20 09:50:12', '2021-01-20 09:50:12', 'Almond Valleza', 'Vue.js', NULL ),
( '34', '2021-01-20 09:50:12', '2021-01-20 09:50:12', 'Almond Valleza', 'Python', NULL ),
( '35', '2021-01-20 09:50:12', '2021-01-20 09:50:12', 'Almond Valleza', 'MySQL', NULL ),
( '36', '2021-01-20 09:50:12', '2021-01-20 09:50:12', 'Almond Valleza', 'PHP', NULL ),
( '37', '2021-01-20 09:52:50', '2021-01-20 09:52:50', 'Johann Reyes', 'HTML', NULL ),
( '38', '2021-01-20 09:52:50', '2021-01-20 09:52:50', 'Johann Reyes', 'CSS', NULL ),
( '39', '2021-01-20 09:52:50', '2021-01-20 09:52:50', 'Johann Reyes', 'Javascript', NULL ),
( '40', '2021-01-20 09:54:09', '2021-01-20 09:54:09', 'Stephen Torres', 'Python', NULL ),
( '41', '2021-01-20 09:54:09', '2021-01-20 09:54:09', 'Stephen Torres', 'HTML', NULL ),
( '42', '2021-01-20 09:54:09', '2021-01-20 09:54:09', 'Stephen Torres', 'Javascript', NULL ),
( '43', '2021-01-20 09:55:40', '2021-01-20 09:55:40', 'Jan Francis Castillo', 'Javascript', NULL ),
( '44', '2021-01-20 09:55:40', '2021-01-20 09:55:40', 'Jan Francis Castillo', 'CSS', NULL ),
( '45', '2021-01-20 09:55:40', '2021-01-20 09:55:40', 'Jan Francis Castillo', 'HTML', NULL ),
( '46', '2021-01-20 09:57:28', '2021-01-20 09:57:28', 'Ken Ong', 'HTML', NULL ),
( '47', '2021-01-20 09:57:28', '2021-01-20 09:57:28', 'Ken Ong', 'Python', NULL ),
( '48', '2021-01-20 09:57:28', '2021-01-20 09:57:28', 'Ken Ong', 'CSS', NULL ),
( '49', '2021-01-20 09:58:08', '2021-01-20 09:58:08', 'Mark Surat', 'MySQL', NULL ),
( '50', '2021-01-20 09:58:09', '2021-01-20 09:58:09', 'Mark Surat', 'PHP', NULL ),
( '51', '2021-01-20 09:58:09', '2021-01-20 09:58:09', 'Mark Surat', 'Javascript', NULL ),
( '54', '2021-01-20 11:06:12', '2021-01-20 11:06:12', 'Lester Estepa', 'HTML', NULL ),
( '55', '2021-01-20 11:06:12', '2021-01-20 11:06:12', 'Lester Estepa', 'CSS', NULL );
COMMIT;
-- ---------------------------------------------------------


-- Dump data of "members" ----------------------------------
BEGIN;

INSERT INTO `members`(`id`,`created_at`,`updated_at`,`name`,`status`,`date`,`project`,`start`,`user_id`) VALUES 
( '2', '2021-01-20 08:19:47', '2021-01-20 08:19:47', 'Alexandra Justine Tuliao', 'Active', '2019-09-18', 'CS Library eBook Hub', '2020-07-01', NULL ),
( '4', '2021-01-20 09:48:43', '2021-01-20 09:48:43', 'Anton Asprer', 'Active', '2019-09-18', 'CS Library eBook Hub', '2020-07-01', NULL ),
( '5', '2021-01-20 09:49:26', '2021-01-20 09:49:26', 'Francis Kim Tanay', 'Applicant', NULL, NULL, NULL, NULL ),
( '6', '2021-01-20 09:50:12', '2021-01-20 09:50:12', 'Almond Valleza', 'Moderator', '2018-08-23', 'CS Library eBook Hub', '2020-07-01', NULL ),
( '7', '2021-01-20 09:52:50', '2021-01-20 09:52:50', 'Johann Reyes', 'Alumni', '2018-08-13', NULL, NULL, NULL ),
( '8', '2021-01-20 09:54:09', '2021-01-20 09:54:09', 'Stephen Torres', 'Active', '2018-08-13', 'CS Library eBook Hub', '2020-07-01', NULL ),
( '9', '2021-01-20 09:55:40', '2021-01-20 09:55:40', 'Jan Francis Castillo', 'Applicant', NULL, NULL, NULL, NULL ),
( '10', '2021-01-20 09:57:28', '2021-01-20 09:57:28', 'Ken Ong', 'Alumni', '2018-08-15', NULL, NULL, NULL ),
( '11', '2021-01-20 09:58:08', '2021-01-20 09:58:08', 'Mark Surat', 'Alumni', '2018-08-21', NULL, NULL, NULL ),
( '12', '2021-01-20 11:05:40', '2021-01-20 11:06:12', 'Lester Estepa', 'Alumni', '2020-04-23', NULL, NULL, NULL );
COMMIT;
-- ---------------------------------------------------------


-- Dump data of "migrations" -------------------------------
BEGIN;

INSERT INTO `migrations`(`id`,`migration`,`batch`) VALUES 
( '1', '2014_10_12_000000_create_users_table', '1' ),
( '2', '2014_10_12_100000_create_password_resets_table', '1' ),
( '3', '2014_10_12_200000_add_two_factor_columns_to_users_table', '1' ),
( '4', '2019_08_19_000000_create_failed_jobs_table', '1' ),
( '5', '2019_12_14_000001_create_personal_access_tokens_table', '1' ),
( '6', '2021_01_18_185748_create_members_table', '1' ),
( '7', '2021_01_19_150241_create_member_skills_table', '1' ),
( '8', '2021_01_19_150242_create_skills_table', '1' );
COMMIT;
-- ---------------------------------------------------------


-- Dump data of "password_resets" --------------------------
-- ---------------------------------------------------------


-- Dump data of "personal_access_tokens" -------------------
-- ---------------------------------------------------------


-- Dump data of "skills" -----------------------------------
BEGIN;

INSERT INTO `skills`(`id`,`created_at`,`updated_at`,`skill`,`description`,`member_skill_id`) VALUES 
( '1', '2021-01-20 08:17:45', '2021-01-20 08:17:45', 'Vue.js', 'VueJS is an open source progressive JavaScript framework used to develop interactive web interfaces. It is one of the famous frameworks used to simplify web development. VueJS focuses on the view layer. It can be easily integrated into big projects for front-end development without any issues.', NULL ),
( '2', '2021-01-20 08:18:20', '2021-01-20 08:18:20', 'Python', 'Python is an interpreted, object-oriented, high-level programming language with dynamic semantics. Python\'s simple, easy to learn syntax emphasizes readability and therefore reduces the cost of program maintenance. Python supports modules and packages, which encourages program modularity and code reuse.', NULL ),
( '3', '2021-01-20 08:18:49', '2021-01-20 08:18:49', 'HTML', 'Hypertext Markup Language (HTML) is the standard markup language for documents designed to be displayed in a web browser. HTML describes the structure of a web page semantically and originally included cues for the appearance of the document. HTML elements are the building blocks of HTML pages.', NULL ),
( '4', '2021-01-20 08:57:47', '2021-01-20 08:57:47', 'CSS', 'CSS stands for Cascading Style Sheets. CSS describes how HTML elements are to be displayed on screen, paper, or in other media. CSS saves a lot of work. It can control the layout of multiple web pages all at once.', NULL ),
( '5', '2021-01-20 08:58:30', '2021-01-20 08:58:30', 'Javascript', 'JavaScript is a lightweight, interpreted, object-oriented language with first-class functions, and is best known as the scripting language for Web pages, but it\'s used in many non-browser environments as well. JavaScript can function as both a procedural and an object oriented language.', NULL ),
( '6', '2021-01-20 08:59:48', '2021-01-20 08:59:48', 'MySQL', 'MySQL is an Oracle-backed open source relational database management system (RDBMS) based on Structured Query Language (SQL). MySQL runs on virtually all platforms, including Linux, UNIX and Windows.', NULL ),
( '7', '2021-01-20 09:04:17', '2021-01-20 09:04:17', 'PHP', 'PHP is a server side scripting language. that is used to develop Static websites or Dynamic websites or Web applications. PHP stands for Hypertext Pre-processor, that earlier stood for Personal Home Pages.', NULL ),
( '8', '2021-01-20 11:04:29', '2021-01-20 11:04:29', 'Laravel', 'gsjejegheghigidjgisdgds', NULL );
COMMIT;
-- ---------------------------------------------------------


-- Dump data of "users" ------------------------------------
BEGIN;

INSERT INTO `users`(`id`,`name`,`email`,`email_verified_at`,`password`,`two_factor_secret`,`two_factor_recovery_codes`,`remember_token`,`created_at`,`updated_at`,`admin`) VALUES 
( '1', 'Alexandra Justine Tuliao', 'avtuliao@up.edu.ph', NULL, '$2y$10$4Dv1CJ4lhB53ijO1Mz6jFu5aM/yel3Lp1OAFl6LYc0IOW8oAIPJXe', NULL, NULL, NULL, '2021-01-20 08:11:34', '2021-01-20 08:11:34', '0' ),
( '2', 'Henry Galino', 'jagalino@up.edu.ph', NULL, '$2y$10$hzeJqM8h5eRV7q1nnJXZA.2svngdsjFEprWq1B9BkJR4xyL6TiZCa', NULL, NULL, NULL, '2021-01-20 08:15:40', '2021-01-20 08:15:40', '1' ),
( '3', 'AJ Tuliao', 'ajtuliao@gmail.com', NULL, '$2y$10$i8djSkXzn5ZaYoMqnchVJO3rYh.ljAMBXHkAMXPJ66OhTpYNCRZ0a', NULL, NULL, NULL, '2021-01-20 11:03:43', '2021-01-20 11:03:43', '1' );
COMMIT;
-- ---------------------------------------------------------


-- CREATE INDEX "member_skills_member_id_foreign" --------------
CREATE INDEX `member_skills_member_id_foreign` USING BTREE ON `member_skills`( `member_id` );
-- -------------------------------------------------------------


-- CREATE INDEX "members_user_id_foreign" ----------------------
CREATE INDEX `members_user_id_foreign` USING BTREE ON `members`( `user_id` );
-- -------------------------------------------------------------


-- CREATE INDEX "password_resets_email_index" ------------------
CREATE INDEX `password_resets_email_index` USING BTREE ON `password_resets`( `email` );
-- -------------------------------------------------------------


-- CREATE INDEX "personal_access_tokens_tokenable_type_tokenable_id_index" 
CREATE INDEX `personal_access_tokens_tokenable_type_tokenable_id_index` USING BTREE ON `personal_access_tokens`( `tokenable_type`, `tokenable_id` );
-- -------------------------------------------------------------


-- CREATE INDEX "skills_member_skill_id_foreign" ---------------
CREATE INDEX `skills_member_skill_id_foreign` USING BTREE ON `skills`( `member_skill_id` );
-- -------------------------------------------------------------


-- CREATE LINK "members_user_id_foreign" -----------------------
ALTER TABLE `members`
	ADD CONSTRAINT `members_user_id_foreign` FOREIGN KEY ( `user_id` )
	REFERENCES `users`( `id` )
	ON DELETE No Action
	ON UPDATE No Action;
-- -------------------------------------------------------------


-- CREATE LINK "member_skills_member_id_foreign" ---------------
ALTER TABLE `member_skills`
	ADD CONSTRAINT `member_skills_member_id_foreign` FOREIGN KEY ( `member_id` )
	REFERENCES `members`( `id` )
	ON DELETE No Action
	ON UPDATE No Action;
-- -------------------------------------------------------------


-- CREATE LINK "skills_member_skill_id_foreign" ----------------
ALTER TABLE `skills`
	ADD CONSTRAINT `skills_member_skill_id_foreign` FOREIGN KEY ( `member_skill_id` )
	REFERENCES `member_skills`( `id` )
	ON DELETE No Action
	ON UPDATE No Action;
-- -------------------------------------------------------------


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
-- ---------------------------------------------------------


