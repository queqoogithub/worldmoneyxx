-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2020 at 09:35 AM
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
(25, 'Can add chek', 7, 'add_chek'),
(26, 'Can change chek', 7, 'change_chek'),
(27, 'Can delete chek', 7, 'delete_chek'),
(28, 'Can view chek', 7, 'view_chek'),
(29, 'Can add selling', 8, 'add_selling'),
(30, 'Can change selling', 8, 'change_selling'),
(31, 'Can delete selling', 8, 'delete_selling'),
(32, 'Can view selling', 8, 'view_selling'),
(33, 'Can add selling auction', 9, 'add_sellingauction'),
(34, 'Can change selling auction', 9, 'change_sellingauction'),
(35, 'Can delete selling auction', 9, 'delete_sellingauction'),
(36, 'Can view selling auction', 9, 'view_sellingauction'),
(37, 'Can add selling image', 10, 'add_sellingimage'),
(38, 'Can change selling image', 10, 'change_sellingimage'),
(39, 'Can delete selling image', 10, 'delete_sellingimage'),
(40, 'Can view selling image', 10, 'view_sellingimage'),
(41, 'Can add log entry', 11, 'add_logentry'),
(42, 'Can change log entry', 11, 'change_logentry'),
(43, 'Can delete log entry', 11, 'delete_logentry'),
(44, 'Can view log entry', 11, 'view_logentry'),
(45, 'Can add permission', 12, 'add_permission'),
(46, 'Can change permission', 12, 'change_permission'),
(47, 'Can delete permission', 12, 'delete_permission'),
(48, 'Can view permission', 12, 'view_permission'),
(49, 'Can add group', 13, 'add_group'),
(50, 'Can change group', 13, 'change_group'),
(51, 'Can delete group', 13, 'delete_group'),
(52, 'Can view group', 13, 'view_group'),
(53, 'Can add content type', 14, 'add_contenttype'),
(54, 'Can change content type', 14, 'change_contenttype'),
(55, 'Can delete content type', 14, 'delete_contenttype'),
(56, 'Can view content type', 14, 'view_contenttype'),
(57, 'Can add session', 15, 'add_session'),
(58, 'Can change session', 15, 'change_session'),
(59, 'Can delete session', 15, 'delete_session'),
(60, 'Can view session', 15, 'view_session');

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
(11, 'admin', 'logentry'),
(6, 'articles', 'article'),
(13, 'auth', 'group'),
(12, 'auth', 'permission'),
(14, 'contenttypes', 'contenttype'),
(7, 'selling', 'chek'),
(8, 'selling', 'selling'),
(9, 'selling', 'sellingauction'),
(10, 'selling', 'sellingimage'),
(15, 'sessions', 'session'),
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
(1, 'contenttypes', '0001_initial', '2020-05-12 08:26:25.195567'),
(2, 'contenttypes', '0002_remove_content_type_name', '2020-05-12 08:26:25.311138'),
(3, 'auth', '0001_initial', '2020-05-12 08:26:25.410430'),
(4, 'auth', '0002_alter_permission_name_max_length', '2020-05-12 08:26:25.744272'),
(5, 'auth', '0003_alter_user_email_max_length', '2020-05-12 08:26:25.750295'),
(6, 'auth', '0004_alter_user_username_opts', '2020-05-12 08:26:25.755309'),
(7, 'auth', '0005_alter_user_last_login_null', '2020-05-12 08:26:25.762326'),
(8, 'auth', '0006_require_contenttypes_0002', '2020-05-12 08:26:25.765343'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2020-05-12 08:26:25.770347'),
(10, 'auth', '0008_alter_user_username_max_length', '2020-05-12 08:26:25.776362'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2020-05-12 08:26:25.782406'),
(12, 'auth', '0010_alter_group_name_max_length', '2020-05-12 08:26:25.796416'),
(13, 'auth', '0011_update_proxy_permissions', '2020-05-12 08:26:25.804465'),
(14, 'users', '0001_initial', '2020-05-12 08:26:25.999757'),
(15, 'admin', '0001_initial', '2020-05-12 08:26:26.318584'),
(16, 'admin', '0002_logentry_remove_auto_add', '2020-05-12 08:26:26.442915'),
(17, 'admin', '0003_logentry_add_action_flag_choices', '2020-05-12 08:26:26.453945'),
(18, 'articles', '0001_initial', '2020-05-12 08:26:26.525136'),
(19, 'selling', '0001_initial', '2020-05-12 08:26:26.712184'),
(20, 'selling', '0002_auto_20200512_1526', '2020-05-12 08:26:26.989691'),
(21, 'sessions', '0001_initial', '2020-05-12 08:26:27.021775'),
(22, 'selling', '0003_auto_20200512_1606', '2020-05-12 09:07:05.154926');

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
-- Table structure for table `selling_chek`
--

CREATE TABLE `selling_chek` (
  `id` int(11) NOT NULL,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `selling_selling`
--

CREATE TABLE `selling_selling` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `seller` varchar(255) NOT NULL,
  `body` longtext NOT NULL,
  `selling_price` decimal(10,2) NOT NULL,
  `date` datetime(6) NOT NULL,
  `duedate` datetime(6) DEFAULT NULL,
  `author_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `selling_selling`
--

INSERT INTO `selling_selling` (`id`, `title`, `seller`, `body`, `selling_price`, `date`, `duedate`, `author_id`) VALUES
(1, 'test1', '123123', 'aasd', '123123.00', '2020-05-12 08:38:23.624504', '2020-05-13 00:00:00.000000', NULL),
(2, 'test2', '123123', 'aasd', '1231.00', '2020-05-12 08:38:23.624504', '2020-05-14 00:00:00.000000', NULL),
(3, 'tset3', '123', 'aasd', '5000000.00', '2020-05-12 08:38:23.624504', '2020-05-14 00:00:00.000000', NULL),
(4, 'test4', '123', 'aasd', '1523000.00', '2020-05-12 08:38:23.624504', '2020-05-14 00:00:00.000000', NULL);

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
(1, '', '1000.00', '2020-05-12 08:38:23.624504', 1, 2),
(2, '', '5000.00', '2020-05-12 09:08:08.550656', 1, 1);

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
(1, '', 'asset_image/E_Bike_Roadmap_hRWMI0K.jpg', 1),
(2, '', 'asset_image/E_Bike_Roadmap_hRWMI0K.jpg', 2),
(3, '', 'asset_image/E_Bike_Roadmap_hRWMI0K.jpg', 3),
(4, '', 'asset_image/E_Bike_Roadmap_hRWMI0K.jpg', 4);

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
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  `nametitle` varchar(15) NOT NULL,
  `tel` varchar(10) DEFAULT NULL,
  `idcard` varchar(13) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users_customuser`
--

INSERT INTO `users_customuser` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `nametitle`, `tel`, `idcard`) VALUES
(1, 'pbkdf2_sha256$180000$OQzeiS0N4CC6$HhssJgMVaG0eYGpMCV7BAh27d4IzQ/jEICM3ThquBtA=', '2020-05-13 02:23:58.197826', 1, 'oat', '', '', 'oat19122@gmail.com', 1, 1, '2020-05-12 08:26:42.690847', '', NULL, NULL),
(19, 'pbkdf2_sha256$180000$i1Zd2DkLnHdz$KlVX9Sgh//zJactFvzxolSkaqSfC6kFD2tX6QFZzsQs=', '2020-05-13 06:26:44.373664', 0, 'c111', 'Apisit', 'Sripa', 'std59010912674@acc.msu.ac.th', 0, 1, '2020-05-13 05:05:42.920304', 'Mr', '0909214023', '12');

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
-- Indexes for table `selling_chek`
--
ALTER TABLE `selling_chek`
  ADD PRIMARY KEY (`id`);

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
  ADD KEY `selling_sellingauction_author_id_d760d2bb_fk_users_customuser_id` (`author_id`),
  ADD KEY `selling_sellingauction_selling_id_4568edf7_fk_selling_selling_id` (`selling_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `selling_chek`
--
ALTER TABLE `selling_chek`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `selling_selling`
--
ALTER TABLE `selling_selling`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `selling_sellingauction`
--
ALTER TABLE `selling_sellingauction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `selling_sellingimage`
--
ALTER TABLE `selling_sellingimage`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users_amphures`
--
ALTER TABLE `users_amphures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users_customuser`
--
ALTER TABLE `users_customuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
