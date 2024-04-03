-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 03, 2024 at 08:19 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `python21`
--

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
  `id` bigint(20) NOT NULL,
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
(13, 'Can add content type', 4, 'add_contenttype'),
(14, 'Can change content type', 4, 'change_contenttype'),
(15, 'Can delete content type', 4, 'delete_contenttype'),
(16, 'Can view content type', 4, 'view_contenttype'),
(17, 'Can add session', 5, 'add_session'),
(18, 'Can change session', 5, 'change_session'),
(19, 'Can delete session', 5, 'delete_session'),
(20, 'Can view session', 5, 'view_session'),
(21, 'Can add student', 6, 'add_student'),
(22, 'Can change student', 6, 'change_student'),
(23, 'Can delete student', 6, 'delete_student'),
(24, 'Can view student', 6, 'view_student'),
(25, 'Can add user', 7, 'add_customuser'),
(26, 'Can change user', 7, 'change_customuser'),
(27, 'Can delete user', 7, 'delete_customuser'),
(28, 'Can view user', 7, 'view_customuser'),
(29, 'Can add category', 8, 'add_category'),
(30, 'Can change category', 8, 'change_category'),
(31, 'Can delete category', 8, 'delete_category'),
(32, 'Can view category', 8, 'view_category'),
(33, 'Can add product', 9, 'add_product'),
(34, 'Can change product', 9, 'change_product'),
(35, 'Can delete product', 9, 'delete_product'),
(36, 'Can view product', 9, 'view_product'),
(37, 'Can add cart item', 10, 'add_cartitem'),
(38, 'Can change cart item', 10, 'change_cartitem'),
(39, 'Can delete cart item', 10, 'delete_cartitem'),
(40, 'Can view cart item', 10, 'view_cartitem'),
(41, 'Can add order', 11, 'add_order'),
(42, 'Can change order', 11, 'change_order'),
(43, 'Can delete order', 11, 'delete_order'),
(44, 'Can view order', 11, 'view_order');

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
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(1, '2024-03-23 05:39:41.401615', '1', 'Cat-1', 1, '[{\"added\": {}}]', 8, 1),
(2, '2024-03-23 05:39:55.093015', '2', 'Cat-2', 1, '[{\"added\": {}}]', 8, 1),
(3, '2024-03-23 05:40:04.767556', '3', 'Cat-3', 1, '[{\"added\": {}}]', 8, 1),
(4, '2024-03-23 05:40:34.849250', '1', 'Product 1', 1, '[{\"added\": {}}]', 9, 1),
(5, '2024-03-23 05:40:53.162607', '2', 'Product 2', 1, '[{\"added\": {}}]', 9, 1),
(6, '2024-03-23 05:41:10.121792', '3', 'Product 3', 1, '[{\"added\": {}}]', 9, 1);

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
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'contenttypes', 'contenttype'),
(10, 'myapp', 'cartitem'),
(8, 'myapp', 'category'),
(7, 'myapp', 'customuser'),
(11, 'myapp', 'order'),
(9, 'myapp', 'product'),
(6, 'myapp', 'student'),
(5, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` bigint(20) NOT NULL,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2024-03-16 05:55:20.657890'),
(2, 'contenttypes', '0002_remove_content_type_name', '2024-03-16 05:55:20.745356'),
(3, 'auth', '0001_initial', '2024-03-16 05:55:21.171967'),
(4, 'auth', '0002_alter_permission_name_max_length', '2024-03-16 05:55:21.254505'),
(5, 'auth', '0003_alter_user_email_max_length', '2024-03-16 05:55:21.270596'),
(6, 'auth', '0004_alter_user_username_opts', '2024-03-16 05:55:21.286523'),
(7, 'auth', '0005_alter_user_last_login_null', '2024-03-16 05:55:21.302618'),
(8, 'auth', '0006_require_contenttypes_0002', '2024-03-16 05:55:21.307617'),
(9, 'auth', '0007_alter_validators_add_error_messages', '2024-03-16 05:55:21.324193'),
(10, 'auth', '0008_alter_user_username_max_length', '2024-03-16 05:55:21.341413'),
(11, 'auth', '0009_alter_user_last_name_max_length', '2024-03-16 05:55:21.357636'),
(12, 'auth', '0010_alter_group_name_max_length', '2024-03-16 05:55:21.393689'),
(13, 'auth', '0011_update_proxy_permissions', '2024-03-16 05:55:21.412063'),
(14, 'auth', '0012_alter_user_first_name_max_length', '2024-03-16 05:55:21.430218'),
(15, 'myapp', '0001_initial', '2024-03-16 05:55:22.039412'),
(16, 'admin', '0001_initial', '2024-03-16 05:55:22.257892'),
(17, 'admin', '0002_logentry_remove_auto_add', '2024-03-16 05:55:22.287036'),
(18, 'admin', '0003_logentry_add_action_flag_choices', '2024-03-16 05:55:22.312170'),
(19, 'myapp', '0002_category', '2024-03-16 05:55:22.374097'),
(20, 'myapp', '0003_product', '2024-03-16 05:55:22.525730'),
(21, 'sessions', '0001_initial', '2024-03-16 05:55:22.629683'),
(22, 'myapp', '0004_cartitem', '2024-03-23 05:51:31.921000'),
(23, 'myapp', '0005_order', '2024-03-30 06:25:45.036662');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('0qicbc6qkpqz3nxsvym1njq05ivd9o66', '.eJxVjEEOwiAQRe_C2hAYKFCX7j0DmYFBqoYmpV0Z765NutDtf-_9l4i4rTVunZc4ZXEWIE6_G2F6cNtBvmO7zTLNbV0mkrsiD9rldc78vBzu30HFXr-1CQEzh9FCMuBUyoqpeNJBZ-ehMClAGMZUiiZWpmjNYHQyFgfvnUXx_gDryzfw:1rpMiR:8XU9u5YJwstzGytIhcmDQmO05MV2-ell1xKF2Mv1IYc', '2024-04-10 06:24:51.142137'),
('9fge0bfn7ife6rg75xhf9jsd100ezgy5', '.eJxVjEEOwiAQRe_C2hAYKFCX7j0DmYFBqoYmpV0Z765NutDtf-_9l4i4rTVunZc4ZXEWIE6_G2F6cNtBvmO7zTLNbV0mkrsiD9rldc78vBzu30HFXr-1CQEzh9FCMuBUyoqpeNJBZ-ehMClAGMZUiiZWpmjNYHQyFgfvnUXx_gDryzfw:1rlNVi:pQE9Si-t9GZ7O6IqzeNCWddOicDOZ0899Zefa_Ko3lI', '2024-03-30 06:27:14.114757'),
('du5bieavlw7rb7je5oba7gi1br44sm7z', '.eJxVjEEOwiAQRe_C2hAYKFCX7j0DmYFBqoYmpV0Z765NutDtf-_9l4i4rTVunZc4ZXEWIE6_G2F6cNtBvmO7zTLNbV0mkrsiD9rldc78vBzu30HFXr-1CQEzh9FCMuBUyoqpeNJBZ-ehMClAGMZUiiZWpmjNYHQyFgfvnUXx_gDryzfw:1rnuZk:zHfAmS1ZOj_fYwsef_a7v_7PUS88qx60kErvd4RIVcg', '2024-04-06 06:09:52.686078');

-- --------------------------------------------------------

--
-- Table structure for table `myapp_cartitem`
--

CREATE TABLE `myapp_cartitem` (
  `id` bigint(20) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL CHECK (`quantity` >= 0),
  `date_added` datetime(6) NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `myapp_category`
--

CREATE TABLE `myapp_category` (
  `id` bigint(20) NOT NULL,
  `cat_name` varchar(255) NOT NULL,
  `cat_desc` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myapp_category`
--

INSERT INTO `myapp_category` (`id`, `cat_name`, `cat_desc`) VALUES
(1, 'Cat-1', 'kjnskjnkjdas'),
(2, 'Cat-2', 'ksdfnakndskafbdsa;fkn'),
(3, 'Cat-3', 'lksafdlkdjsakl');

-- --------------------------------------------------------

--
-- Table structure for table `myapp_customuser`
--

CREATE TABLE `myapp_customuser` (
  `id` bigint(20) NOT NULL,
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
  `mobile` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myapp_customuser`
--

INSERT INTO `myapp_customuser` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`, `mobile`) VALUES
(1, 'pbkdf2_sha256$600000$Fia4AXvHmwg5fLe4jKNUux$vVeg5GUJPMbEkcqAvx7h2UrNlJtYsFjTbwveiphyKr8=', '2024-04-03 06:14:26.515733', 1, 'admin', '', '', 'saumitra@euphoriagenx.com', 1, 1, '2024-03-16 05:55:59.536785', ''),
(2, 'pbkdf2_sha256$600000$l3ODO1ndG5ZAGYfC2sHnTP$OqudzyiKfc/xKT82Iq2b0NFfm3K6Iwaz1fzxAVp7fxw=', '2024-03-30 06:21:40.362841', 0, 'saumitra', 'Saumitra', 'Das', 'sau@gmail.com', 0, 1, '2024-03-16 06:10:08.868240', '1234567789');

-- --------------------------------------------------------

--
-- Table structure for table `myapp_customuser_groups`
--

CREATE TABLE `myapp_customuser_groups` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `myapp_customuser_user_permissions`
--

CREATE TABLE `myapp_customuser_user_permissions` (
  `id` bigint(20) NOT NULL,
  `customuser_id` bigint(20) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `myapp_order`
--

CREATE TABLE `myapp_order` (
  `id` bigint(20) NOT NULL,
  `quantity` int(10) UNSIGNED NOT NULL CHECK (`quantity` >= 0),
  `date_ordered` datetime(6) NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `payment_id` varchar(255) NOT NULL,
  `address` longtext NOT NULL,
  `product_id` bigint(20) NOT NULL,
  `user_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myapp_order`
--

INSERT INTO `myapp_order` (`id`, `quantity`, `date_ordered`, `payment_status`, `payment_id`, `address`, `product_id`, `user_id`) VALUES
(1, 3, '2024-04-03 05:59:48.853795', 'success', '', 'vvvvv', 2, 2),
(2, 1, '2024-04-03 05:59:48.909402', 'success', '', 'vvvvv', 3, 2),
(3, 1, '2024-04-03 05:59:48.973938', 'success', '', 'vvvvv', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `myapp_product`
--

CREATE TABLE `myapp_product` (
  `id` bigint(20) NOT NULL,
  `name` varchar(100) NOT NULL,
  `description` longtext DEFAULT NULL,
  `price` decimal(10,2) NOT NULL,
  `image` varchar(100) NOT NULL,
  `category_id` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `myapp_product`
--

INSERT INTO `myapp_product` (`id`, `name`, `description`, `price`, `image`, `category_id`) VALUES
(1, 'Product 1', 'slknsadf lknlkndfsa lknlkdnsf lknlkdfs lknlkdsfan', '150.00', 'products/img2.jpg', 1),
(2, 'Product 2', 'bsdjabljdsa', '900.00', 'products/img1.jpg', 2),
(3, 'Product 3', 'klnsdfksjadnf lknlkdsfn', '1200.00', 'products/img3.jpg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `myapp_student`
--

CREATE TABLE `myapp_student` (
  `id` bigint(20) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email_id` varchar(255) NOT NULL,
  `city` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

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
  ADD KEY `django_admin_log_user_id_c564eba6_fk_myapp_customuser_id` (`user_id`);

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
-- Indexes for table `myapp_cartitem`
--
ALTER TABLE `myapp_cartitem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `myapp_cartitem_product_id_4e665953_fk_myapp_product_id` (`product_id`),
  ADD KEY `myapp_cartitem_user_id_eb2b3823_fk_myapp_customuser_id` (`user_id`);

--
-- Indexes for table `myapp_category`
--
ALTER TABLE `myapp_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myapp_customuser`
--
ALTER TABLE `myapp_customuser`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `myapp_customuser_groups`
--
ALTER TABLE `myapp_customuser_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `myapp_customuser_groups_customuser_id_group_id_8dfb17af_uniq` (`customuser_id`,`group_id`),
  ADD KEY `myapp_customuser_groups_group_id_9a436a56_fk_auth_group_id` (`group_id`);

--
-- Indexes for table `myapp_customuser_user_permissions`
--
ALTER TABLE `myapp_customuser_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `myapp_customuser_user_pe_customuser_id_permission_a9e136bb_uniq` (`customuser_id`,`permission_id`),
  ADD KEY `myapp_customuser_use_permission_id_4ffda77e_fk_auth_perm` (`permission_id`);

--
-- Indexes for table `myapp_order`
--
ALTER TABLE `myapp_order`
  ADD PRIMARY KEY (`id`),
  ADD KEY `myapp_order_product_id_46d28c6c_fk_myapp_product_id` (`product_id`),
  ADD KEY `myapp_order_user_id_98783cea_fk_myapp_customuser_id` (`user_id`);

--
-- Indexes for table `myapp_product`
--
ALTER TABLE `myapp_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `myapp_product_category_id_f672ddc0_fk_myapp_category_id` (`category_id`);

--
-- Indexes for table `myapp_student`
--
ALTER TABLE `myapp_student`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `myapp_cartitem`
--
ALTER TABLE `myapp_cartitem`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `myapp_category`
--
ALTER TABLE `myapp_category`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `myapp_customuser`
--
ALTER TABLE `myapp_customuser`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `myapp_customuser_groups`
--
ALTER TABLE `myapp_customuser_groups`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `myapp_customuser_user_permissions`
--
ALTER TABLE `myapp_customuser_user_permissions`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `myapp_order`
--
ALTER TABLE `myapp_order`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `myapp_product`
--
ALTER TABLE `myapp_product`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `myapp_student`
--
ALTER TABLE `myapp_student`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

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
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_myapp_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `myapp_customuser` (`id`);

--
-- Constraints for table `myapp_cartitem`
--
ALTER TABLE `myapp_cartitem`
  ADD CONSTRAINT `myapp_cartitem_product_id_4e665953_fk_myapp_product_id` FOREIGN KEY (`product_id`) REFERENCES `myapp_product` (`id`),
  ADD CONSTRAINT `myapp_cartitem_user_id_eb2b3823_fk_myapp_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `myapp_customuser` (`id`);

--
-- Constraints for table `myapp_customuser_groups`
--
ALTER TABLE `myapp_customuser_groups`
  ADD CONSTRAINT `myapp_customuser_gro_customuser_id_4b46b787_fk_myapp_cus` FOREIGN KEY (`customuser_id`) REFERENCES `myapp_customuser` (`id`),
  ADD CONSTRAINT `myapp_customuser_groups_group_id_9a436a56_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Constraints for table `myapp_customuser_user_permissions`
--
ALTER TABLE `myapp_customuser_user_permissions`
  ADD CONSTRAINT `myapp_customuser_use_customuser_id_afabd7b0_fk_myapp_cus` FOREIGN KEY (`customuser_id`) REFERENCES `myapp_customuser` (`id`),
  ADD CONSTRAINT `myapp_customuser_use_permission_id_4ffda77e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `myapp_order`
--
ALTER TABLE `myapp_order`
  ADD CONSTRAINT `myapp_order_product_id_46d28c6c_fk_myapp_product_id` FOREIGN KEY (`product_id`) REFERENCES `myapp_product` (`id`),
  ADD CONSTRAINT `myapp_order_user_id_98783cea_fk_myapp_customuser_id` FOREIGN KEY (`user_id`) REFERENCES `myapp_customuser` (`id`);

--
-- Constraints for table `myapp_product`
--
ALTER TABLE `myapp_product`
  ADD CONSTRAINT `myapp_product_category_id_f672ddc0_fk_myapp_category_id` FOREIGN KEY (`category_id`) REFERENCES `myapp_category` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
