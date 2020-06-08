-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-06-2020 a las 00:39:58
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `wili3`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group`
--

CREATE TABLE `auth_group` (
  `id` int(11) NOT NULL,
  `name` varchar(80) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `auth_group`
--

INSERT INTO `auth_group` (`id`, `name`) VALUES
(2, 'supervisor'),
(1, 'supervisores');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_group_permissions`
--

CREATE TABLE `auth_group_permissions` (
  `id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `auth_group_permissions`
--

INSERT INTO `auth_group_permissions` (`id`, `group_id`, `permission_id`) VALUES
(2, 1, 22),
(3, 1, 23),
(1, 1, 25),
(5, 2, 23),
(4, 2, 24);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_permission`
--

CREATE TABLE `auth_permission` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add profile', 1, 'add_profile'),
(2, 'Can change profile', 1, 'change_profile'),
(3, 'Can delete profile', 1, 'delete_profile'),
(4, 'Can add log entry', 2, 'add_logentry'),
(5, 'Can change log entry', 2, 'change_logentry'),
(6, 'Can delete log entry', 2, 'delete_logentry'),
(7, 'Can add permission', 3, 'add_permission'),
(8, 'Can change permission', 3, 'change_permission'),
(9, 'Can delete permission', 3, 'delete_permission'),
(10, 'Can add group', 4, 'add_group'),
(11, 'Can change group', 4, 'change_group'),
(12, 'Can delete group', 4, 'delete_group'),
(13, 'Can add user', 5, 'add_user'),
(14, 'Can change user', 5, 'change_user'),
(15, 'Can delete user', 5, 'delete_user'),
(16, 'Can add content type', 6, 'add_contenttype'),
(17, 'Can change content type', 6, 'change_contenttype'),
(18, 'Can delete content type', 6, 'delete_contenttype'),
(19, 'Can add session', 7, 'add_session'),
(20, 'Can change session', 7, 'change_session'),
(21, 'Can delete session', 7, 'delete_session'),
(22, 'Can add message', 8, 'add_message'),
(23, 'Can change message', 8, 'change_message'),
(24, 'Can delete message', 8, 'delete_message'),
(25, 'Can add thread', 9, 'add_thread'),
(26, 'Can change thread', 9, 'change_thread'),
(27, 'Can delete thread', 9, 'delete_thread'),
(28, 'Can add página', 10, 'add_page'),
(29, 'Can change página', 10, 'change_page'),
(30, 'Can delete página', 10, 'delete_page');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user`
--

CREATE TABLE `auth_user` (
  `id` int(11) NOT NULL,
  `password` varchar(128) COLLATE utf8_spanish_ci NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `first_name` varchar(30) COLLATE utf8_spanish_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(254) COLLATE utf8_spanish_ci NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `auth_user`
--

INSERT INTO `auth_user` (`id`, `password`, `last_login`, `is_superuser`, `username`, `first_name`, `last_name`, `email`, `is_staff`, `is_active`, `date_joined`) VALUES
(4, 'pbkdf2_sha256$100000$xSwnnxjXwImj$ydJQbdf8GlRl1sViQbwBn9T/Lhv/zay7Z+hbyEJqAPo=', '2020-06-08 22:36:33.880980', 1, 'wiliams', '', '', 'skrillexwili8@gmail.com', 1, 1, '2020-06-07 22:56:05.769690'),
(5, 'pbkdf2_sha256$100000$DDyHdvs2N6ZW$PKR11NkOrrxmVJ9HxUUATS7NT68ng0cag692O7ujU4w=', NULL, 0, 'Jose', 'empleado', 'perez', 'pepe@gmail.com', 0, 1, '2020-06-07 22:58:37.000000'),
(6, 'pbkdf2_sha256$100000$k0xoGeqZuOw7$xMu/kJXwhBnRjaUtP+Dx3QS46ZtOmVyJz9yW5HCchFw=', NULL, 0, 'pepe', '', '', '', 0, 1, '2020-06-08 22:37:07.401894');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_groups`
--

CREATE TABLE `auth_user_groups` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `auth_user_user_permissions`
--

CREATE TABLE `auth_user_user_permissions` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `auth_user_user_permissions`
--

INSERT INTO `auth_user_user_permissions` (`id`, `user_id`, `permission_id`) VALUES
(1, 5, 22);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_admin_log`
--

CREATE TABLE `django_admin_log` (
  `id` int(11) NOT NULL,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext COLLATE utf8_spanish_ci DEFAULT NULL,
  `object_repr` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `action_flag` smallint(5) UNSIGNED NOT NULL,
  `change_message` longtext COLLATE utf8_spanish_ci NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `django_admin_log`
--

INSERT INTO `django_admin_log` (`id`, `action_time`, `object_id`, `object_repr`, `action_flag`, `change_message`, `content_type_id`, `user_id`) VALUES
(4, '2020-06-07 22:58:03.624340', '3', 'Carmen', 3, '', 5, 4),
(5, '2020-06-07 22:58:10.818787', '2', 'Luz', 3, '', 5, 4),
(6, '2020-06-07 22:58:37.200307', '5', 'Jose', 1, '[{\"added\": {}}]', 5, 4),
(7, '2020-06-07 22:59:10.686929', '5', 'Jose', 2, '[{\"changed\": {\"fields\": [\"first_name\", \"last_name\", \"email\", \"user_permissions\"]}}]', 5, 4),
(8, '2020-06-07 23:00:26.119967', '4', 'Coronavirus', 1, '[{\"added\": {}}]', 10, 4),
(9, '2020-06-07 23:03:25.105696', '5', 'Anonymus', 1, '[{\"added\": {}}]', 10, 4),
(10, '2020-06-07 23:04:15.603435', '1', 'supervisores', 1, '[{\"added\": {}}]', 4, 4),
(11, '2020-06-07 23:04:51.248074', '6', 'pruebas', 1, '[{\"added\": {}}]', 10, 4),
(12, '2020-06-07 23:05:24.367834', '7', 'carros', 1, '[{\"added\": {}}]', 10, 4),
(13, '2020-06-08 22:37:07.587032', '6', 'pepe', 1, '[{\"added\": {}}]', 5, 4),
(14, '2020-06-08 22:37:57.072120', '8', 'agua', 1, '[{\"added\": {}}]', 10, 4),
(15, '2020-06-08 22:38:21.512809', '2', 'supervisor', 1, '[{\"added\": {}}]', 4, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_content_type`
--

CREATE TABLE `django_content_type` (
  `id` int(11) NOT NULL,
  `app_label` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `model` varchar(100) COLLATE utf8_spanish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(2, 'admin', 'logentry'),
(4, 'auth', 'group'),
(3, 'auth', 'permission'),
(5, 'auth', 'user'),
(6, 'contenttypes', 'contenttype'),
(8, 'messenger', 'message'),
(9, 'messenger', 'thread'),
(10, 'pages', 'page'),
(1, 'registration', 'profile'),
(7, 'sessions', 'session');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_migrations`
--

CREATE TABLE `django_migrations` (
  `id` int(11) NOT NULL,
  `app` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_spanish_ci NOT NULL,
  `applied` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2020-06-06 23:17:51.998238'),
(2, 'auth', '0001_initial', '2020-06-06 23:18:01.965212'),
(3, 'admin', '0001_initial', '2020-06-06 23:18:04.834480'),
(4, 'admin', '0002_logentry_remove_auto_add', '2020-06-06 23:18:04.897173'),
(5, 'contenttypes', '0002_remove_content_type_name', '2020-06-06 23:18:05.905504'),
(6, 'auth', '0002_alter_permission_name_max_length', '2020-06-06 23:18:06.801800'),
(7, 'auth', '0003_alter_user_email_max_length', '2020-06-06 23:18:07.703215'),
(8, 'auth', '0004_alter_user_username_opts', '2020-06-06 23:18:07.764928'),
(9, 'auth', '0005_alter_user_last_login_null', '2020-06-06 23:18:08.713668'),
(10, 'auth', '0006_require_contenttypes_0002', '2020-06-06 23:18:08.810643'),
(11, 'auth', '0007_alter_validators_add_error_messages', '2020-06-06 23:18:08.865496'),
(12, 'auth', '0008_alter_user_username_max_length', '2020-06-06 23:18:10.884359'),
(13, 'auth', '0009_alter_user_last_name_max_length', '2020-06-06 23:18:11.053822'),
(14, 'messenger', '0001_initial', '2020-06-06 23:18:19.693977'),
(15, 'messenger', '0002_auto_20200606_1613', '2020-06-06 23:18:20.208780'),
(16, 'pages', '0001_initial', '2020-06-06 23:18:20.721819'),
(17, 'registration', '0001_initial', '2020-06-06 23:18:22.098273'),
(18, 'sessions', '0001_initial', '2020-06-06 23:18:22.631698');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `django_session`
--

CREATE TABLE `django_session` (
  `session_key` varchar(40) COLLATE utf8_spanish_ci NOT NULL,
  `session_data` longtext COLLATE utf8_spanish_ci NOT NULL,
  `expire_date` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('k4ctihto4xkl9eclodovfr5qp5flzlep', 'YTdiNTU5ZDQ0NGU4ZDA1NDYzMTk4OTM2ZjVlYzQ2NzhkNDRlMmVjOTp7Il9hdXRoX3VzZXJfaWQiOiI0IiwiX2F1dGhfdXNlcl9iYWNrZW5kIjoiZGphbmdvLmNvbnRyaWIuYXV0aC5iYWNrZW5kcy5Nb2RlbEJhY2tlbmQiLCJfYXV0aF91c2VyX2hhc2giOiI0YWE4ZDNjY2I5Mzk0NDQzYjc1NTAwNzBlZDhlNTY4NTUyM2FjNjIzIn0=', '2020-06-22 22:36:34.036730');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messenger_message`
--

CREATE TABLE `messenger_message` (
  `id` int(11) NOT NULL,
  `content` longtext COLLATE utf8_spanish_ci NOT NULL,
  `created` datetime(6) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messenger_thread`
--

CREATE TABLE `messenger_thread` (
  `id` int(11) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `messenger_thread`
--

INSERT INTO `messenger_thread` (`id`, `updated`) VALUES
(1, '2020-06-07 22:46:55.417695'),
(2, '2020-06-07 23:05:50.251146');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messenger_thread_messages`
--

CREATE TABLE `messenger_thread_messages` (
  `id` int(11) NOT NULL,
  `thread_id` int(11) NOT NULL,
  `message_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messenger_thread_users`
--

CREATE TABLE `messenger_thread_users` (
  `id` int(11) NOT NULL,
  `thread_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `messenger_thread_users`
--

INSERT INTO `messenger_thread_users` (`id`, `thread_id`, `user_id`) VALUES
(3, 2, 4),
(4, 2, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pages_page`
--

CREATE TABLE `pages_page` (
  `id` int(11) NOT NULL,
  `title` varchar(200) COLLATE utf8_spanish_ci NOT NULL,
  `content` longtext COLLATE utf8_spanish_ci NOT NULL,
  `order` smallint(6) NOT NULL,
  `created` datetime(6) NOT NULL,
  `updated` datetime(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `pages_page`
--

INSERT INTO `pages_page` (`id`, `title`, `content`, `order`, `created`, `updated`) VALUES
(4, 'Coronavirus', '<p>Los coronavirus son una extensa familia de virus que pueden causar enfermedades tanto en animales como en humanos. En los humanos, se sabe que varios coronavirus causan infecciones respiratorias que pueden ir desde el resfriado com&uacute;n hasta enfermedades m&aacute;s graves como el s&iacute;ndrome respiratorio de Oriente Medio (MERS) y el s&iacute;ndrome respiratorio agudo severo (SRAS). El coronavirus que se ha descubierto m&aacute;s recientemente causa la enfermedad por coronavirus COVID-19.</p>', 0, '2020-06-07 23:00:26.101184', '2020-06-07 23:00:26.101184'),
(5, 'Anonymus', '<p><strong><em>Anonymous</em>&nbsp;[əˈnɒnɪməs] (An&oacute;nimo o An&oacute;nimos en&nbsp;<a href=\"https://es.wikipedia.org/wiki/Idioma_espa%C3%B1ol\" title=\"Idioma español\">espa&ntilde;ol</a>) es un&nbsp;<a href=\"https://es.wikipedia.org/wiki/Alias\" title=\"Alias\">seud&oacute;nimo</a>&nbsp;utilizado mundialmente por diferentes grupos e individuos para realizar en su nombre &mdash;poni&eacute;ndose de acuerdo con otros&mdash; acciones o publicaciones individuales o concertadas. Surgidos del&nbsp;<em><a href=\"https://es.wikipedia.org/wiki/Imageboard\" title=\"Imageboard\">imageboard</a></em>&nbsp;<a href=\"https://es.wikipedia.org/wiki/4chan\" title=\"4chan\">4chan</a>&nbsp;y del foro&nbsp;<em>Hackers</em>; en un comienzo como un movimiento por diversi&oacute;n. Desde&nbsp;<a href=\"https://es.wikipedia.org/wiki/2008\" title=\"2008\">2008</a>&nbsp;<em>Anonymous</em>&nbsp;se manifiesta en acciones de protesta a favor de la&nbsp;<a href=\"https://es.wikipedia.org/wiki/Libertad_de_expresi%C3%B3n\" title=\"Libertad de expresión\">libertad de expresi&oacute;n</a>, del acceso a la&nbsp;<a href=\"https://es.wikipedia.org/wiki/Informaci%C3%B3n\" title=\"Información\">informaci&oacute;n</a>, de la independencia de&nbsp;<a href=\"https://es.wikipedia.org/wiki/Internet\" title=\"Internet\">Internet</a>&nbsp;y en contra de diversas organizaciones, entre ellas,&nbsp;<a href=\"https://es.wikipedia.org/wiki/Estado_Isl%C3%A1mico\" title=\"Estado Islámico\">D&aacute;esh</a>, la&nbsp;<a href=\"https://es.wikipedia.org/wiki/Cienciolog%C3%ADa\" title=\"Cienciología\">Cienciologia</a>, los&nbsp;<a href=\"https://es.wikipedia.org/wiki/Servicio_p%C3%BAblico\" title=\"Servicio público\">servicios p&uacute;blicos</a>, consorcios con presencia global, sociedades de&nbsp;<a href=\"https://es.wikipedia.org/wiki/Derechos_de_autor\" title=\"Derechos de autor\">derechos de autor</a>&nbsp;y todos los si</strong>stemas de censura gubernamentales. En sus inicios, los participantes actuaban solamente en Internet, pero con el tiempo fueron desarrollando tambi&eacute;n sus actividades fuera de la red.</p>\r\n\r\n<p>Puesto que no existe una jerarqu&iacute;a, resulta en general dif&iacute;cil confirmar la autenticidad de las noticias o informaciones referentes a&nbsp;<em>Anonymous</em>. Asimismo, debido al anonimato de sus miembros, sucede que un &uacute;nico individuo puede producir noticias falsas e introducirlas como supuestamente dichas por el colectivo.</p>', 2, '2020-06-07 23:03:24.713945', '2020-06-07 23:03:24.713945'),
(6, 'pruebas', '<p>hhhhhhhhhhhhhhhhhhhhhhhhhhhhhhhh<img alt=\"laugh\" src=\"http://127.0.0.1:8000/static/ckeditor/ckeditor/plugins/smiley/images/teeth_smile.png\" style=\"height:23px; width:23px\" title=\"laugh\" /></p>', 1, '2020-06-07 23:04:51.147277', '2020-06-07 23:04:51.147277'),
(7, 'carros', '<p>carrossss 2020</p>', 0, '2020-06-07 23:05:24.076126', '2020-06-07 23:05:24.076126'),
(8, 'agua', '<p>pruebas&nbsp;</p>', 4, '2020-06-08 22:37:56.927146', '2020-06-08 22:37:56.927146');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registration_profile`
--

CREATE TABLE `registration_profile` (
  `id` int(11) NOT NULL,
  `avatar` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `bio` longtext COLLATE utf8_spanish_ci DEFAULT NULL,
  `link` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `registration_profile`
--

INSERT INTO `registration_profile` (`id`, `avatar`, `bio`, `link`, `user_id`) VALUES
(4, 'profiles/silverx.png', 'Mi nombre es Wiliams Pérez Luzan tengo 20 años , y soy de Tlaxcala.\r\nestudio Tecnologías de la información.información', 'https://www.facebook.com/', 4),
(5, '', NULL, NULL, 5),
(6, '', NULL, NULL, 6);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indices de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  ADD KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`);

--
-- Indices de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indices de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  ADD KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`);

--
-- Indices de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  ADD KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`);

--
-- Indices de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD PRIMARY KEY (`id`),
  ADD KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  ADD KEY `django_admin_log_user_id_c564eba6_fk` (`user_id`);

--
-- Indices de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`);

--
-- Indices de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `django_session`
--
ALTER TABLE `django_session`
  ADD PRIMARY KEY (`session_key`),
  ADD KEY `django_session_expire_date_a5c62663` (`expire_date`);

--
-- Indices de la tabla `messenger_message`
--
ALTER TABLE `messenger_message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `messenger_message_user_id_44204cf3_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `messenger_thread`
--
ALTER TABLE `messenger_thread`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `messenger_thread_messages`
--
ALTER TABLE `messenger_thread_messages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `messenger_thread_messages_thread_id_message_id_bb58b3ca_uniq` (`thread_id`,`message_id`),
  ADD KEY `messenger_thread_mes_message_id_e4d4b7af_fk_messenger` (`message_id`);

--
-- Indices de la tabla `messenger_thread_users`
--
ALTER TABLE `messenger_thread_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `messenger_thread_users_thread_id_user_id_d8023aff_uniq` (`thread_id`,`user_id`),
  ADD KEY `messenger_thread_users_user_id_008b18f6_fk_auth_user_id` (`user_id`);

--
-- Indices de la tabla `pages_page`
--
ALTER TABLE `pages_page`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registration_profile`
--
ALTER TABLE `registration_profile`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `auth_group`
--
ALTER TABLE `auth_group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT de la tabla `auth_user`
--
ALTER TABLE `auth_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `django_content_type`
--
ALTER TABLE `django_content_type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `django_migrations`
--
ALTER TABLE `django_migrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `messenger_message`
--
ALTER TABLE `messenger_message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `messenger_thread`
--
ALTER TABLE `messenger_thread`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `messenger_thread_messages`
--
ALTER TABLE `messenger_thread_messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `messenger_thread_users`
--
ALTER TABLE `messenger_thread_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `pages_page`
--
ALTER TABLE `pages_page`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `registration_profile`
--
ALTER TABLE `registration_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`);

--
-- Filtros para la tabla `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Filtros para la tabla `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`),
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `messenger_message`
--
ALTER TABLE `messenger_message`
  ADD CONSTRAINT `messenger_message_user_id_44204cf3_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `messenger_thread_messages`
--
ALTER TABLE `messenger_thread_messages`
  ADD CONSTRAINT `messenger_thread_mes_message_id_e4d4b7af_fk_messenger` FOREIGN KEY (`message_id`) REFERENCES `messenger_message` (`id`),
  ADD CONSTRAINT `messenger_thread_mes_thread_id_a70e3887_fk_messenger` FOREIGN KEY (`thread_id`) REFERENCES `messenger_thread` (`id`);

--
-- Filtros para la tabla `messenger_thread_users`
--
ALTER TABLE `messenger_thread_users`
  ADD CONSTRAINT `messenger_thread_users_thread_id_8c4fd4f2_fk_messenger_thread_id` FOREIGN KEY (`thread_id`) REFERENCES `messenger_thread` (`id`),
  ADD CONSTRAINT `messenger_thread_users_user_id_008b18f6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Filtros para la tabla `registration_profile`
--
ALTER TABLE `registration_profile`
  ADD CONSTRAINT `registration_profile_user_id_e133ce43_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
