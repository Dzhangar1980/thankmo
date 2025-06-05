-- phpMyAdmin SQL Dump
-- version 5.2.1deb3
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Июн 05 2025 г., 09:18
-- Версия сервера: 10.11.13-MariaDB-0ubuntu0.24.04.1
-- Версия PHP: 8.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `thankmo_db`
--

-- --------------------------------------------------------

--
-- Структура таблицы `ads`
--

CREATE TABLE `ads` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `youtube_video` varchar(255) DEFAULT NULL,
  `gives_points` tinyint(1) NOT NULL,
  `accepts_points` tinyint(1) NOT NULL,
  `radius` int(11) NOT NULL,
  `language` varchar(20) NOT NULL,
  `category_id` int(11) NOT NULL,
  `vendor_id` int(11) NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `attachments`
--

CREATE TABLE `attachments` (
  `id` int(11) NOT NULL,
  `type` varchar(100) DEFAULT NULL,
  `path` varchar(255) DEFAULT NULL,
  `ad_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL,
  `title` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `title`, `status`, `created_at`, `updated_at`) VALUES
(4, 'Services', 1, '2025-05-27 01:16:00', '2025-05-27 01:16:00');

-- --------------------------------------------------------

--
-- Структура таблицы `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `languages`
--

CREATE TABLE `languages` (
  `id` int(11) NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `flag` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `languages`
--

INSERT INTO `languages` (`id`, `title`, `flag`, `created_at`, `updated_at`) VALUES
(1, 'English (USA)', NULL, '2025-03-28 10:44:14', '2025-03-28 10:44:14'),
(2, 'Русский', NULL, '2025-03-28 10:44:48', '2025-03-28 10:44:48'),
(3, 'Español', NULL, '2025-03-28 10:46:48', '2025-03-28 10:46:48'),
(4, '中国语文科', NULL, '2025-03-28 10:47:37', '2025-03-28 10:47:37'),
(5, 'हिंदी भाषा', NULL, '2025-03-28 10:48:35', '2025-03-28 10:48:35'),
(6, 'Français', NULL, '2025-03-28 10:49:24', '2025-03-28 10:49:24');

-- --------------------------------------------------------

--
-- Структура таблицы `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Структура таблицы `settings`
--

CREATE TABLE `settings` (
  `id` int(11) NOT NULL,
  `prize` int(11) NOT NULL,
  `ads_limit` int(11) NOT NULL,
  `ad_attachments` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `settings`
--

INSERT INTO `settings` (`id`, `prize`, `ads_limit`, `ad_attachments`, `created_at`, `updated_at`) VALUES
(1, 250, 15, 7, '2025-03-02 13:51:06', '2025-05-26 21:19:45');

-- --------------------------------------------------------

--
-- Структура таблицы `transactions`
--

CREATE TABLE `transactions` (
  `id` int(11) NOT NULL,
  `sender` int(11) NOT NULL,
  `acceptor` int(11) NOT NULL,
  `points` int(11) NOT NULL,
  `purpose` int(11) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `transactions`
--

INSERT INTO `transactions` (`id`, `sender`, `acceptor`, `points`, `purpose`, `description`, `created_at`, `updated_at`) VALUES
(1, 0, 8, 200, 0, 'Prize to new user', '2025-03-03 10:27:25', '2025-03-03 10:27:25'),
(2, 0, 9, 200, 0, 'Prize to new user', '2025-03-20 03:39:58', '2025-03-20 03:39:58'),
(3, 0, 10, 200, 0, 'Prize to new user', '2025-04-16 18:06:46', '2025-04-16 18:06:46');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `role` varchar(50) NOT NULL DEFAULT 'customer',
  `wallet` bigint(20) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `avatar`, `role`, `wallet`, `status`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Джангар Кукеев', 'djangarku@gmail.com', 'https://lh3.googleusercontent.com/a/ACg8ocLovEHqx3rjPf8cpRMKn08AaC9yY8giZKiNBUaHqz5bbtNJNy0=s96-c', 'admin', 0, 1, '2025-02-03 12:25:28', '$2y$12$cZKdemXNkVPdRuj0uMVtpOEW9Ob4T4mGpK0rzkQKsGPMbU6jvNCaG', 'kZaCZjiDQdljd9RwWSFGWnaoXdiTXD16w9OoBSc3XKiIhz0kcpEXBJdttqY6', '2025-02-03 12:25:29', '2025-03-01 12:43:29'),
(2, 'Dagdur Abeshev', 'd.abeshev@gmail.com', 'https://lh3.googleusercontent.com/a/ACg8ocKVU1M-EP8ihsTVkHOmAB2quXwvmPYNIJgSsXihHVihIvVbIw=s96-c', 'vendor', 0, 1, '2025-02-04 03:52:34', '$2y$12$cFJ1BbTeRmB7M5p7nGOANO7GXUfzpd9Itw6PJRhK3NsTk0x2e0jdy', 'E8ICBjiu1pIbJGam1Pe12wt8h31Hj3PBRXxO2PjPZIRqoGNFHEOaXsmpS3OD', '2025-02-04 03:52:34', '2025-05-26 21:05:22'),
(4, 'Aisa Abesheva', 'a.abesheva@gmail.com', 'https://lh3.googleusercontent.com/a/ACg8ocKYHIP-yvUupe5dI7ZeGRcoJZk4vbuFWonSYtb4suUorqPqhQ=s96-c', 'customer', 0, 1, '2025-02-24 04:53:21', '$2y$12$p1tqdEMELzH86Lkx.cWcTu45yhQsKq52xqevR2ZmJHs8QFS7d.9xu', 'xiOtrUATCaZpuNUAZlylu9SdfXY1xmG9gXjUaugHollv9xaP1qPTBpszhU5v', '2025-02-24 04:53:21', '2025-03-01 01:46:04'),
(5, 'Dagdur Abeshev', 'xanjanav@gmail.com', 'https://lh3.googleusercontent.com/a/ACg8ocL7XYRuGFWZRTenUo26X3erO-sOah2o1F-CHRDpGBODeoc2Mg=s96-c', 'admin', 0, 1, '2025-03-02 04:12:14', '$2y$12$Z1H/bTd/ohBkh6g0REE5/OJHUPFQChn4XhSsymZ0..1/VbuuUArqS', 'KBYH9N1RhzKinkEfKop8XxIuqdYZpMPBhZRAQghmAnaqew1UdLWRRawhJ5Hs', '2025-03-02 04:12:14', '2025-03-02 04:12:14'),
(8, 'Джангар Кукеев', 'mail@jangar.site', 'https://lh3.googleusercontent.com/a/ACg8ocJ-8hqSc4L9xVMVLaU7v7tMVLNyhGbH7gHuoru6YmylHkPuwWg=s96-c', 'vendor', 200, 1, '2025-03-03 10:27:24', '$2y$12$rzQWTtuqbCW4HoK.6govcOo6X1GP5zC2AaAQ/MM349h7cbOocij4e', 'YfblyxnjL3QYg4Lp3FhoiZknTF6wNSTBYP8Q08hEiBsjw5ew535WqHz9RSV7', '2025-03-03 10:27:25', '2025-03-03 11:57:00'),
(9, 'Aysa', 'mendvt.2023@gmail.com', 'https://lh3.googleusercontent.com/a/ACg8ocJh-ts8xgt4kNz8La7uY2xilS-Y803YgBnm_2EvpW5MCcMazA=s96-c', 'vendor', 200, 1, '2025-03-20 03:39:58', '$2y$12$J92dzfr8372vt9S5XQY5XOR2JAMSPyrWiIiRbkNoxikiGGWtQe54u', 'm0HLYDZsrQg7pmrL8edRueJTGrP0eP9Snw2ZGD80ErxZxro1zZyHXlCTWm2B', '2025-03-20 03:39:58', '2025-05-26 20:42:55'),
(10, 'Дмитрий Дмитриев', '008kalmykia@gmail.com', 'https://lh3.googleusercontent.com/a/ACg8ocLhRjKNXOkXnP3mwPlcZ3EvJgvrc_ZwXjURfpp6cFfY9ZdbPw=s96-c', 'customer', 200, 1, '2025-04-16 18:06:46', '$2y$12$DG7bAA0KFEZCNuK8cDhwe.FOXYCpg6LoaS8MThXJQE7Z3oBk86OzK', 'h5GsM4MyADDhNlvz7EU9KQmDhhbaIYOqMUIdtslQOrVIbT5uHk986qSotcU6', '2025-04-16 18:06:46', '2025-04-16 18:06:46');

-- --------------------------------------------------------

--
-- Структура таблицы `vendors`
--

CREATE TABLE `vendors` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `zipcode` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `youtube` varchar(255) DEFAULT NULL,
  `whatsapp` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `wechat` varchar(255) DEFAULT NULL,
  `tiktok` varchar(255) DEFAULT NULL,
  `snapchat` varchar(255) DEFAULT NULL,
  `telegram` varchar(255) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `latitude` float DEFAULT NULL,
  `longitude` float DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Дамп данных таблицы `vendors`
--

INSERT INTO `vendors` (`id`, `title`, `description`, `zipcode`, `address`, `phone`, `facebook`, `youtube`, `whatsapp`, `instagram`, `wechat`, `tiktok`, `snapchat`, `telegram`, `status`, `latitude`, `longitude`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Jangar', 'Web studio Jangar', '35800', '10, улица им. А.Г. Балакаева, Элиста, городской округ Элиста, Калмыкия, 358000, Россия', '+79054001316', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '@kukeevdjangar', 1, 46.3103, 44.2611, 8, '2025-02-19 08:14:33', '2025-03-29 06:50:34'),
(3, 'Aisa Bookkeeping and Tax Preparing Services', 'Aisa Bookkeeping and Tax Preparing Services', '11373', '8530', '+17186647446', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 9, '2025-05-12 22:24:53', '2025-05-26 20:42:55'),
(4, 'Dagdur Abeshev', 'COMPUTERS, NETWORKS, SMART HOME AND CCTV INSTALLATION AND REPAIR SERVICES\r\n\r\nRepair, maintenance and upgrade of computers and laptops. PC and Mac.\r\nData recovery. Virus removal.\r\n\r\nNetworks installation and repair. Solving problems with Wi-Fi, routers, extenders, coverage and Internet speed.\r\n\r\nVideo surveillance systems, CCTV, installing and repair.\r\n\r\nSmart home systems installing and repair.\r\nMinor electrical installation and repair services.', '11373', '8530 57TH AVE #2D ELMHURST NY', '+16469542425', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 2, '2025-05-26 20:57:37', '2025-05-26 21:05:22');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `attachments`
--
ALTER TABLE `attachments`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Индексы таблицы `languages`
--
ALTER TABLE `languages`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Индексы таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Индексы таблицы `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`prize`);

--
-- Индексы таблицы `transactions`
--
ALTER TABLE `transactions`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Индексы таблицы `vendors`
--
ALTER TABLE `vendors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `ads`
--
ALTER TABLE `ads`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `attachments`
--
ALTER TABLE `attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `languages`
--
ALTER TABLE `languages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT для таблицы `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT для таблицы `transactions`
--
ALTER TABLE `transactions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `vendors`
--
ALTER TABLE `vendors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
