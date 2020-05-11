-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 11, 2020 at 07:30 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `world_estate`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles_article`
--

CREATE TABLE `articles_article` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `date` datetime(6) NOT NULL,
  `author_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add amphures', 1, 'add_amphures'),
(2, 'Can change amphures', 1, 'change_amphures'),
(3, 'Can delete amphures', 1, 'delete_amphures'),
(4, 'Can view amphures', 1, 'view_amphures'),
(5, 'Can add districts', 2, 'add_districts'),
(6, 'Can change districts', 2, 'change_districts'),
(7, 'Can delete districts', 2, 'delete_districts'),
(8, 'Can view districts', 2, 'view_districts'),
(9, 'Can add geographies', 3, 'add_geographies'),
(10, 'Can change geographies', 3, 'change_geographies'),
(11, 'Can delete geographies', 3, 'delete_geographies'),
(12, 'Can view geographies', 3, 'view_geographies'),
(13, 'Can add provinces', 4, 'add_provinces'),
(14, 'Can change provinces', 4, 'change_provinces'),
(15, 'Can delete provinces', 4, 'delete_provinces'),
(16, 'Can view provinces', 4, 'view_provinces'),
(17, 'Can add user', 5, 'add_customuser'),
(18, 'Can change user', 5, 'change_customuser'),
(19, 'Can delete user', 5, 'delete_customuser'),
(20, 'Can view user', 5, 'view_customuser'),
(21, 'Can add article', 6, 'add_article'),
(22, 'Can change article', 6, 'change_article'),
(23, 'Can delete article', 6, 'delete_article'),
(24, 'Can view article', 6, 'view_article'),
(25, 'Can add selling', 7, 'add_selling'),
(26, 'Can change selling', 7, 'change_selling'),
(27, 'Can delete selling', 7, 'delete_selling'),
(28, 'Can view selling', 7, 'view_selling'),
(29, 'Can add selling image', 8, 'add_sellingimage'),
(30, 'Can change selling image', 8, 'change_sellingimage'),
(31, 'Can delete selling image', 8, 'delete_sellingimage'),
(32, 'Can view selling image', 8, 'view_sellingimage'),
(33, 'Can add selling auction', 9, 'add_sellingauction'),
(34, 'Can change selling auction', 9, 'change_sellingauction'),
(35, 'Can delete selling auction', 9, 'delete_sellingauction'),
(36, 'Can view selling auction', 9, 'view_sellingauction'),
(37, 'Can add log entry', 10, 'add_logentry'),
(38, 'Can change log entry', 10, 'change_logentry'),
(39, 'Can delete log entry', 10, 'delete_logentry'),
(40, 'Can view log entry', 10, 'view_logentry'),
(41, 'Can add permission', 11, 'add_permission'),
(42, 'Can change permission', 11, 'change_permission'),
(43, 'Can delete permission', 11, 'delete_permission'),
(44, 'Can view permission', 11, 'view_permission'),
(45, 'Can add group', 12, 'add_group'),
(46, 'Can change group', 12, 'change_group'),
(47, 'Can delete group', 12, 'delete_group'),
(48, 'Can view group', 12, 'view_group'),
(49, 'Can add content type', 13, 'add_contenttype'),
(50, 'Can change content type', 13, 'change_contenttype'),
(51, 'Can delete content type', 13, 'delete_contenttype'),
(52, 'Can view content type', 13, 'view_contenttype'),
(53, 'Can add session', 14, 'add_session'),
(54, 'Can change session', 14, 'change_session'),
(55, 'Can delete session', 14, 'delete_session'),
(56, 'Can view session', 14, 'view_session');

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext DEFAULT NULL,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL CHECK (`action_flag` >= 0),
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(10, 'admin', 'logentry'),
(6, 'articles', 'article'),
(12, 'auth', 'group'),
(11, 'auth', 'permission'),
(13, 'contenttypes', 'contenttype'),
(7, 'selling', 'selling'),
(9, 'selling', 'sellingauction'),
(8, 'selling', 'sellingimage'),
(14, 'sessions', 'session'),
(1, 'users', 'amphures'),
(5, 'users', 'customuser'),
(2, 'users', 'districts'),
(3, 'users', 'geographies'),
(4, 'users', 'provinces');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-05-08 08:45:36.185629'),
(2, 'contenttypes', '0002_remove_content_type_name', '2020-05-08 08:45:36.272510'),
(3, 'auth', '0001_initial', '2020-05-08 08:45:36.351127'),
(4, 'auth', '0002_alter_permission_name_max_length', '2020-05-08 08:45:36.611052'),
(5, 'auth', '0003_alter_user_email_max_length', '2020-05-08 08:45:36.621078'),
(6, 'auth', '0004_alter_user_username_opts', '2020-05-08 08:45:36.630457'),
(7, 'auth', '0005_alter_user_last_login_null', '2020-05-08 08:45:36.636472'),
(8, 'auth', '0006_require_contenttypes_0002', '2020-05-08 08:45:36.638481'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2020-05-08 08:45:36.644521'),
(10, 'auth', '0008_alter_user_username_max_length', '2020-05-08 08:45:36.651539'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2020-05-08 08:45:36.656553'),
(12, 'auth', '0010_alter_group_name_max_length', '2020-05-08 08:45:36.669674'),
(13, 'auth', '0011_update_proxy_permissions', '2020-05-08 08:45:36.677705'),
(14, 'users', '0001_initial', '2020-05-08 08:45:36.864138'),
(15, 'admin', '0001_initial', '2020-05-08 08:45:37.157334'),
(16, 'admin', '0002_logentry_remove_auto_add', '2020-05-08 08:45:37.309075'),
(17, 'admin', '0003_logentry_add_action_flag_choices', '2020-05-08 08:45:37.317096'),
(18, 'articles', '0001_initial', '2020-05-08 08:45:37.348180'),
(19, 'selling', '0001_initial', '2020-05-08 08:45:37.465393'),
(20, 'selling', '0002_selling_date', '2020-05-08 08:45:37.695030'),
(21, 'selling', '0003_auto_20200407_1644', '2020-05-08 08:45:37.864274'),
(22, 'selling', '0004_auto_20200507_1352', '2020-05-08 08:45:37.959479'),
(23, 'sessions', '0001_initial', '2020-05-08 08:45:37.987552');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `selling_selling`
--

CREATE TABLE `selling_selling` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `date` datetime(6) NOT NULL,
  `seller` varchar(255) NOT NULL,
  `selling_price` decimal(10,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `selling_selling`
--

INSERT INTO `selling_selling` (`id`, `title`, `body`, `author_id`, `date`, `seller`, `selling_price`) VALUES
(1, 'test1', 'aasd', NULL, '2020-05-08 09:22:48.655472', 'asdas', '5000.00');

-- --------------------------------------------------------

--
-- Table structure for table `selling_sellingauction`
--

CREATE TABLE `selling_sellingauction` (
  `id` int(11) NOT NULL,
  `auctioner` varchar(255) NOT NULL,
  `auction_price` decimal(10,2) NOT NULL,
  `date` datetime(6) NOT NULL,
  `author_id` int(11) DEFAULT NULL,
  `selling_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `selling_sellingauction`
--

INSERT INTO `selling_sellingauction` (`id`, `auctioner`, `auction_price`, `date`, `author_id`, `selling_id`) VALUES
(1, '', '5000.00', '2020-05-08 09:22:48.656474', 2, 1),
(2, '', '6000.00', '2020-05-11 01:44:25.436971', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `selling_sellingimage`
--

CREATE TABLE `selling_sellingimage` (
  `id` int(11) NOT NULL,
  `image_name` varchar(255) NOT NULL,
  `image` varchar(100) DEFAULT NULL,
  `selling_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `selling_sellingimage`
--

INSERT INTO `selling_sellingimage` (`id`, `image_name`, `image`, `selling_id`) VALUES
(1, '', 'asset_image/TRK2700R-4.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users_amphures`
--

CREATE TABLE `users_amphures` (
  `id` int(11) NOT NULL,
  `code` varchar(2) NOT NULL,
  `name_th` varchar(150) NOT NULL,
  `name_en` varchar(150) NOT NULL,
  `province_id` int(10) UNSIGNED DEFAULT NULL CHECK (`province_id` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users_customuser`
--

CREATE TABLE `users_customuser` (
  `id` int(11) NOT NULL,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `nametitle` varchar(15) NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `tel` varchar(10) DEFAULT NULL,
  `idcard` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_customuser`
--

INSERT INTO `users_customuser` (`id`, `password`, `last_login`, `is_superuser`, `username`, `nametitle`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `tel`, `idcard`) VALUES
(1, 'pbkdf2_sha256$180000$WgumLsNYwJRu$kBDimCTxBNIb9YIw8npXPK03Kg4QAllOlzQA52TEOBI=', '2020-05-11 04:19:14.837597', 1, 'oat', '', '', '', '', 1, 1, '2020-05-08 08:46:06.820790', NULL, NULL),
(2, 'pbkdf2_sha256$180000$4yD3W2x6XyRP$YxXt5io4fXU6GejL/rdTKSOap7J4agBTDdYypCD+6Mk=', '2020-05-08 09:23:29.411719', 1, 'admin', 'Mr', 'Apisit', 'Sripa', 'oat_asdfgh@hotmail.co.th', 1, 1, '2020-05-08 08:47:17.991626', '0909214023', '1309902530082');

-- --------------------------------------------------------

--
-- Table structure for table `users_customuser_groups`
--

CREATE TABLE `users_customuser_groups` (
  `id` int(11) NOT NULL,
  `customuser_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users_customuser_user_permissions`
--

CREATE TABLE `users_customuser_user_permissions` (
  `id` int(11) NOT NULL,
  `customuser_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users_districts`
--

CREATE TABLE `users_districts` (
  `id` int(11) NOT NULL,
  `zip_code` int(10) UNSIGNED DEFAULT NULL CHECK (`zip_code` >= 0),
  `name_th` varchar(150) NOT NULL,
  `name_en` varchar(150) NOT NULL,
  `amphure_id` int(10) UNSIGNED DEFAULT NULL CHECK (`amphure_id` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users_geographies`
--

CREATE TABLE `users_geographies` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users_provinces`
--

CREATE TABLE `users_provinces` (
  `id` int(11) NOT NULL,
  `code` varchar(2) NOT NULL,
  `name_th` varchar(150) NOT NULL,
  `name_en` varchar(150) NOT NULL,
  `geography_id` int(10) UNSIGNED DEFAULT NULL CHECK (`geography_id` >= 0)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles_article`
--
ALTER TABLE `articles_article`
  ADD PRIMARY KEY (`id`),
  ADD KEY `articles_article_author_id_059aea7d_fk_users_customuser_id` (`author_id`);

--
-- Indexes for table `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indexes for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk_users_customuser_id` (`user_id`);

--
-- Indexes for table `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indexes for table `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indexes for table `selling_selling`
--
ALTER TABLE `selling_selling`
  ADD PRIMARY KEY (`id`),
  ADD KEY `selling_selling_author_id_0ccbc985_fk_users_customuser_id` (`author_id`);

--
-- Indexes for table `selling_sellingauction`
--
ALTER TABLE `selling_sellingauction`
  ADD PRIMARY KEY (`id`),
  ADD KEY `selling_sellingauction_selling_id_4568edf7_fk_selling_selling_id` (`selling_id`),
  ADD KEY `selling_sellingauction_author_id_d760d2bb_fk_users_customuser_id` (`author_id`);

--
-- Indexes for table `selling_sellingimage`
--
ALTER TABLE `selling_sellingimage`
  ADD PRIMARY KEY (`id`),
  ADD KEY `selling_sellingimage_selling_id_83f9ae02_fk_selling_selling_id` (`selling_id`);

--
-- Indexes for table `users_amphures`
--
ALTER TABLE `users_amphures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_customuser`
--
ALTER TABLE `users_customuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `tel` (`tel`),
  ADD UNIQUE KEY `idcard` (`idcard`);

--
-- Indexes for table `users_customuser_groups`
--
ALTER TABLE `users_customuser_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_customuser_groups_customuser_id_group_id_76b619e3_uniq` (`customuser_id`,`group_id`),
  ADD KEY `users_customuser_groups_group_id_01390b14_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `users_customuser_user_permissions`
--
ALTER TABLE `users_customuser_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_customuser_user_pe_customuser_id_permission_7a7debf6_uniq` (`customuser_id`,`permission_id`),
  ADD KEY `users_customuser_use_permission_id_baaa2f74_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `users_districts`
--
ALTER TABLE `users_districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_geographies`
--
ALTER TABLE `users_geographies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_provinces`
--
ALTER TABLE `users_provinces`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `articles_article`
--
ALTER TABLE `articles_article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `selling_selling`
--
ALTER TABLE `selling_selling`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `selling_sellingauction`
--
ALTER TABLE `selling_sellingauction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `selling_sellingimage`
--
ALTER TABLE `selling_sellingimage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users_amphures`
--
ALTER TABLE `users_amphures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_customuser`
--
ALTER TABLE `users_customuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_customuser_groups`
--
ALTER TABLE `users_customuser_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_customuser_user_permissions`
--
ALTER TABLE `users_customuser_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_districts`
--
ALTER TABLE `users_districts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_geographies`
--
ALTER TABLE `users_geographies`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_provinces`
--
ALTER TABLE `users_provinces`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `articles_article`
--
ALTER TABLE `articles_article`
  ADD CONSTRAINT `articles_article_author_id_059aea7d_fk_users_customuser_id` FOREIGN KEY (`author_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_users_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `selling_selling`
--
ALTER TABLE `selling_selling`
  ADD CONSTRAINT `selling_selling_author_id_0ccbc985_fk_users_customuser_id` FOREIGN KEY (`author_id`) REFERENCES `users_customuser` (`id`);

--
-- Constraints for table `selling_sellingauction`
--
ALTER TABLE `selling_sellingauction`
  ADD CONSTRAINT `selling_sellingauction_author_id_d760d2bb_fk_users_customuser_id` FOREIGN KEY (`author_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `selling_sellingauction_selling_id_4568edf7_fk_selling_selling_id` FOREIGN KEY (`selling_id`) REFERENCES `selling_selling` (`id`);

--
-- Constraints for table `selling_sellingimage`
--
ALTER TABLE `selling_sellingimage`
  ADD CONSTRAINT `selling_sellingimage_selling_id_83f9ae02_fk_selling_selling_id` FOREIGN KEY (`selling_id`) REFERENCES `selling_selling` (`id`);

--
-- Constraints for table `users_customuser_groups`
--
ALTER TABLE `users_customuser_groups`
  ADD CONSTRAINT `users_customuser_gro_customuser_id_958147bf_fk_users_cus` FOREIGN KEY (`customuser_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `users_customuser_groups_group_id_01390b14_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `users_customuser_user_permissions`
--
ALTER TABLE `users_customuser_user_permissions`
  ADD CONSTRAINT `users_customuser_use_customuser_id_5771478b_fk_users_cus` FOREIGN KEY (`customuser_id`) REFERENCES `users_customuser` (`id`),
  ADD CONSTRAINT `users_customuser_use_permission_id_baaa2f74_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
