-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 17, 2025 at 11:28 AM
-- Server version: 10.6.23-MariaDB-cll-lve
-- PHP Version: 8.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hourigtq_abuhasdha`
--

-- --------------------------------------------------------

--
-- Table structure for table `abuhasdha_actionscheduler_actions`
--

CREATE TABLE `abuhasdha_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `hook` varchar(191) NOT NULL,
  `status` varchar(20) NOT NULL,
  `scheduled_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `scheduled_date_local` datetime DEFAULT '0000-00-00 00:00:00',
  `priority` tinyint(3) UNSIGNED NOT NULL DEFAULT 10,
  `args` varchar(191) DEFAULT NULL,
  `schedule` longtext DEFAULT NULL,
  `group_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `attempts` int(11) NOT NULL DEFAULT 0,
  `last_attempt_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `last_attempt_local` datetime DEFAULT '0000-00-00 00:00:00',
  `claim_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `extended_args` varchar(8000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `abuhasdha_actionscheduler_actions`
--

INSERT INTO `abuhasdha_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `priority`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(10, 'action_scheduler_run_recurring_actions_schedule_hook', 'complete', '2025-10-24 08:08:53', '2025-10-24 08:08:53', 20, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1761293333;s:18:\"\0*\0first_timestamp\";i:1761293333;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1761293333;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 1, 1, '2025-10-24 08:08:57', '2025-10-24 08:08:57', 1, NULL),
(13, 'aioseo_ai_update_credits', 'complete', '2025-10-25 08:08:56', '2025-10-25 08:08:56', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1761379736;s:18:\"\0*\0first_timestamp\";i:1761379736;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1761379736;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-10-25 22:42:11', '2025-10-25 22:42:11', 68, NULL),
(15, 'action_scheduler/migration_hook', 'complete', '2025-10-24 08:09:56', '2025-10-24 08:09:56', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761293396;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761293396;}', 3, 1, '2025-10-24 08:10:00', '2025-10-24 08:10:00', 13, NULL),
(16, 'aioseo_cache_prune', 'complete', '2025-10-25 08:08:57', '2025-10-25 08:08:57', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1761379737;s:18:\"\0*\0first_timestamp\";i:1761293334;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1761379737;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-10-25 22:42:11', '2025-10-25 22:42:11', 68, NULL),
(17, 'action_scheduler_run_recurring_actions_schedule_hook', 'complete', '2025-10-25 08:08:57', '2025-10-25 08:08:57', 20, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1761379737;s:18:\"\0*\0first_timestamp\";i:1761293333;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1761379737;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 1, 1, '2025-10-25 22:42:11', '2025-10-25 22:42:11', 68, NULL),
(22, 'aioseo_email_reports_enable_reminder', 'failed', '2025-11-07 08:08:59', '2025-11-07 08:08:59', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1762502939;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1762502939;}', 2, 1, '2025-11-07 10:17:24', '2025-11-07 10:17:24', 559, NULL),
(29, 'aioseo_generate_llms_txt', 'complete', '2025-10-25 08:09:08', '2025-10-25 08:09:08', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1761379748;s:18:\"\0*\0first_timestamp\";i:1761293346;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1761379748;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-10-25 22:42:11', '2025-10-25 22:42:11', 68, NULL),
(33, 'aioseo_report_summary', 'complete', '2025-10-29 18:16:00', '2025-10-29 18:16:00', 10, '{\"frequency\":\"weekly\"}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1761761760;s:18:\"\0*\0first_timestamp\";i:1761761760;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1761761760;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 1, '2025-10-29 22:46:32', '2025-10-29 22:46:32', 288, NULL),
(34, 'aioseo_report_summary', 'failed', '2025-11-05 18:16:00', '2025-11-05 18:16:00', 10, '{\"frequency\":\"monthly\"}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1762366560;s:18:\"\0*\0first_timestamp\";i:1762366560;s:13:\"\0*\0recurrence\";i:2592000;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1762366560;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:2592000;}', 2, 1, '2025-11-05 23:13:46', '2025-11-05 23:13:46', 544, NULL),
(35, 'aioseo_send_usage_data', 'complete', '2025-10-29 18:00:27', '2025-10-29 18:00:27', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1761760827;s:18:\"\0*\0first_timestamp\";i:1761760827;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1761760827;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 1, '2025-10-29 22:46:32', '2025-10-29 22:46:32', 288, NULL),
(52, 'aioseo_image_sitemap_scan', 'complete', '2025-10-24 22:57:15', '2025-10-24 22:57:15', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761346635;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761346635;}', 2, 1, '2025-10-25 22:42:10', '2025-10-25 22:42:10', 68, NULL),
(53, 'aioseo_image_sitemap_scan', 'complete', '2025-10-25 22:57:10', '2025-10-25 22:57:10', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761433030;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761433030;}', 2, 1, '2025-10-26 02:04:01', '2025-10-26 02:04:01', 72, NULL),
(54, 'aioseo_ai_update_credits', 'complete', '2025-10-26 22:42:11', '2025-10-26 22:42:11', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1761518531;s:18:\"\0*\0first_timestamp\";i:1761379736;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1761518531;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-10-26 23:04:15', '2025-10-26 23:04:15', 269, NULL),
(55, 'aioseo_cache_prune', 'complete', '2025-10-26 22:42:11', '2025-10-26 22:42:11', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1761518531;s:18:\"\0*\0first_timestamp\";i:1761293334;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1761518531;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-10-26 23:04:15', '2025-10-26 23:04:15', 269, NULL),
(56, 'aioseo_generate_llms_txt', 'complete', '2025-10-26 22:42:11', '2025-10-26 22:42:11', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1761518531;s:18:\"\0*\0first_timestamp\";i:1761293346;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1761518531;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-10-26 23:04:15', '2025-10-26 23:04:15', 269, NULL),
(57, 'action_scheduler_run_recurring_actions_schedule_hook', 'complete', '2025-10-26 22:42:11', '2025-10-26 22:42:11', 20, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1761518531;s:18:\"\0*\0first_timestamp\";i:1761293333;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1761518531;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 1, 1, '2025-10-26 23:04:15', '2025-10-26 23:04:15', 269, NULL),
(58, 'aioseo_admin_notifications_update', 'complete', '2025-10-25 22:42:22', '2025-10-25 22:42:22', 10, '[]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2025-10-25 22:42:23', '2025-10-25 22:42:23', 70, NULL),
(59, 'aioseo_image_sitemap_scan', 'complete', '2025-10-26 02:19:01', '2025-10-26 02:19:01', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761445141;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761445141;}', 2, 1, '2025-10-26 02:47:28', '2025-10-26 02:47:28', 74, NULL),
(60, 'aioseo_image_sitemap_scan', 'complete', '2025-10-26 03:02:28', '2025-10-26 03:02:28', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761447748;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761447748;}', 2, 1, '2025-10-26 03:52:57', '2025-10-26 03:52:57', 77, NULL),
(61, 'aioseo_image_sitemap_scan', 'complete', '2025-10-26 04:07:57', '2025-10-26 04:07:57', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761451677;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761451677;}', 2, 1, '2025-10-26 04:08:06', '2025-10-26 04:08:06', 94, NULL),
(62, 'aioseo_generate_llms_txt_single', 'complete', '2025-10-26 03:55:27', '2025-10-26 03:55:27', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761450927;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761450927;}', 2, 1, '2025-10-26 03:56:17', '2025-10-26 03:56:17', 81, NULL),
(63, 'aioseo_generate_llms_txt_single', 'complete', '2025-10-26 03:55:27', '2025-10-26 03:55:27', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761450927;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761450927;}', 2, 1, '2025-10-26 03:56:17', '2025-10-26 03:56:17', 81, NULL),
(64, 'aioseo_generate_llms_txt_single', 'complete', '2025-10-26 03:56:37', '2025-10-26 03:56:37', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761450997;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761450997;}', 2, 1, '2025-10-26 03:56:54', '2025-10-26 03:56:54', 84, NULL),
(65, 'aioseo_generate_llms_txt_single', 'complete', '2025-10-26 03:56:37', '2025-10-26 03:56:37', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761450997;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761450997;}', 2, 1, '2025-10-26 03:56:54', '2025-10-26 03:56:54', 84, NULL),
(66, 'aioseo_generate_llms_txt_single', 'complete', '2025-10-26 03:57:09', '2025-10-26 03:57:09', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761451029;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761451029;}', 2, 1, '2025-10-26 03:57:26', '2025-10-26 03:57:26', 86, NULL),
(67, 'aioseo_generate_llms_txt_single', 'complete', '2025-10-26 03:57:09', '2025-10-26 03:57:09', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761451029;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761451029;}', 2, 1, '2025-10-26 03:57:26', '2025-10-26 03:57:26', 86, NULL),
(68, 'aioseo_generate_llms_txt_single', 'complete', '2025-10-26 03:57:53', '2025-10-26 03:57:53', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761451073;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761451073;}', 2, 1, '2025-10-26 03:58:31', '2025-10-26 03:58:31', 88, NULL),
(69, 'aioseo_generate_llms_txt_single', 'complete', '2025-10-26 03:57:53', '2025-10-26 03:57:53', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761451073;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761451073;}', 2, 1, '2025-10-26 03:58:31', '2025-10-26 03:58:31', 88, NULL),
(70, 'aioseo_image_sitemap_scan', 'complete', '2025-10-26 04:08:36', '2025-10-26 04:08:36', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761451716;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761451716;}', 2, 1, '2025-10-26 04:10:08', '2025-10-26 04:10:08', 97, NULL),
(71, 'aioseo_image_sitemap_scan', 'complete', '2025-10-26 04:25:08', '2025-10-26 04:25:08', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761452708;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761452708;}', 2, 1, '2025-10-26 06:18:40', '2025-10-26 06:18:40', 101, NULL),
(72, 'aioseo_image_sitemap_scan', 'complete', '2025-10-26 06:33:40', '2025-10-26 06:33:40', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761460420;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761460420;}', 2, 1, '2025-10-26 06:34:48', '2025-10-26 06:34:48', 110, NULL),
(73, 'aioseo_image_sitemap_scan', 'complete', '2025-10-26 06:49:48', '2025-10-26 06:49:48', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761461388;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761461388;}', 2, 1, '2025-10-26 06:50:55', '2025-10-26 06:50:55', 120, NULL),
(74, 'aioseo_image_sitemap_scan', 'complete', '2025-10-26 07:05:55', '2025-10-26 07:05:55', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761462355;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761462355;}', 2, 1, '2025-10-26 07:07:04', '2025-10-26 07:07:04', 130, NULL),
(75, 'aioseo_image_sitemap_scan', 'complete', '2025-10-26 07:22:04', '2025-10-26 07:22:04', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761463324;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761463324;}', 2, 1, '2025-10-26 07:23:11', '2025-10-26 07:23:11', 140, NULL),
(76, 'aioseo_image_sitemap_scan', 'complete', '2025-10-26 07:38:11', '2025-10-26 07:38:11', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761464291;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761464291;}', 2, 1, '2025-10-26 07:39:19', '2025-10-26 07:39:19', 150, NULL),
(77, 'aioseo_image_sitemap_scan', 'complete', '2025-10-26 07:54:19', '2025-10-26 07:54:19', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761465259;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761465259;}', 2, 1, '2025-10-26 07:55:27', '2025-10-26 07:55:27', 160, NULL),
(78, 'aioseo_image_sitemap_scan', 'complete', '2025-10-26 08:10:27', '2025-10-26 08:10:27', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761466227;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761466227;}', 2, 1, '2025-10-26 08:11:36', '2025-10-26 08:11:36', 170, NULL),
(79, 'aioseo_image_sitemap_scan', 'complete', '2025-10-26 08:26:36', '2025-10-26 08:26:36', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761467196;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761467196;}', 2, 1, '2025-10-26 08:27:43', '2025-10-26 08:27:43', 180, NULL),
(80, 'aioseo_image_sitemap_scan', 'complete', '2025-10-26 08:42:43', '2025-10-26 08:42:43', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761468163;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761468163;}', 2, 1, '2025-10-26 08:43:51', '2025-10-26 08:43:51', 190, NULL),
(81, 'aioseo_image_sitemap_scan', 'complete', '2025-10-26 08:58:51', '2025-10-26 08:58:51', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761469131;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761469131;}', 2, 1, '2025-10-26 08:59:59', '2025-10-26 08:59:59', 200, NULL),
(82, 'aioseo_image_sitemap_scan', 'complete', '2025-10-26 09:14:59', '2025-10-26 09:14:59', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761470099;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761470099;}', 2, 1, '2025-10-26 09:16:08', '2025-10-26 09:16:08', 210, NULL),
(83, 'aioseo_image_sitemap_scan', 'complete', '2025-10-26 09:31:08', '2025-10-26 09:31:08', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761471068;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761471068;}', 2, 1, '2025-10-26 09:33:07', '2025-10-26 09:33:07', 213, NULL),
(84, 'aioseo_image_sitemap_scan', 'complete', '2025-10-26 09:48:07', '2025-10-26 09:48:07', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761472087;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761472087;}', 2, 1, '2025-10-26 09:52:07', '2025-10-26 09:52:07', 217, NULL),
(85, 'aioseo_image_sitemap_scan', 'complete', '2025-10-26 10:07:07', '2025-10-26 10:07:07', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761473227;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761473227;}', 2, 1, '2025-10-26 10:13:08', '2025-10-26 10:13:08', 222, NULL),
(86, 'aioseo_image_sitemap_scan', 'complete', '2025-10-26 10:28:08', '2025-10-26 10:28:08', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761474488;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761474488;}', 2, 1, '2025-10-26 10:30:07', '2025-10-26 10:30:07', 225, NULL),
(87, 'aioseo_image_sitemap_scan', 'complete', '2025-10-26 10:45:07', '2025-10-26 10:45:07', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761475507;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761475507;}', 2, 1, '2025-10-26 11:02:04', '2025-10-26 11:02:04', 228, NULL),
(88, 'aioseo_image_sitemap_scan', 'complete', '2025-10-26 11:17:04', '2025-10-26 11:17:04', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761477424;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761477424;}', 2, 1, '2025-10-26 11:21:04', '2025-10-26 11:21:04', 232, NULL),
(89, 'aioseo_image_sitemap_scan', 'complete', '2025-10-26 11:36:04', '2025-10-26 11:36:04', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761478564;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761478564;}', 2, 1, '2025-10-26 11:36:26', '2025-10-26 11:36:26', 242, NULL),
(90, 'aioseo_image_sitemap_scan', 'complete', '2025-10-26 11:51:26', '2025-10-26 11:51:26', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761479486;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761479486;}', 2, 1, '2025-10-26 14:39:35', '2025-10-26 14:39:35', 261, NULL),
(91, 'aioseo_generate_llms_txt_single', 'complete', '2025-10-26 11:37:25', '2025-10-26 11:37:25', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761478645;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761478645;}', 2, 1, '2025-10-26 11:37:31', '2025-10-26 11:37:31', 246, NULL),
(92, 'aioseo_generate_llms_txt_single', 'complete', '2025-10-26 11:37:25', '2025-10-26 11:37:25', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761478645;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761478645;}', 2, 1, '2025-10-26 11:37:31', '2025-10-26 11:37:31', 246, NULL),
(93, 'aioseo_generate_llms_txt_single', 'complete', '2025-10-26 11:37:25', '2025-10-26 11:37:25', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761478645;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761478645;}', 2, 1, '2025-10-26 11:37:31', '2025-10-26 11:37:31', 246, NULL),
(94, 'aioseo_generate_llms_txt_single', 'complete', '2025-10-26 11:37:25', '2025-10-26 11:37:25', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761478645;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761478645;}', 2, 1, '2025-10-26 11:37:31', '2025-10-26 11:37:31', 246, NULL),
(95, 'aioseo_generate_llms_txt_single', 'complete', '2025-10-26 11:37:25', '2025-10-26 11:37:25', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761478645;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761478645;}', 2, 1, '2025-10-26 11:37:31', '2025-10-26 11:37:31', 246, NULL),
(96, 'aioseo_generate_llms_txt_single', 'complete', '2025-10-26 11:37:25', '2025-10-26 11:37:25', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761478645;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761478645;}', 2, 1, '2025-10-26 11:37:31', '2025-10-26 11:37:31', 246, NULL),
(97, 'aioseo_generate_llms_txt_single', 'complete', '2025-10-26 11:37:25', '2025-10-26 11:37:25', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761478645;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761478645;}', 2, 1, '2025-10-26 11:37:31', '2025-10-26 11:37:31', 246, NULL),
(98, 'aioseo_generate_llms_txt_single', 'complete', '2025-10-26 11:37:25', '2025-10-26 11:37:25', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761478645;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761478645;}', 2, 1, '2025-10-26 11:37:31', '2025-10-26 11:37:31', 246, NULL),
(99, 'aioseo_generate_llms_txt_single', 'complete', '2025-10-26 11:37:25', '2025-10-26 11:37:25', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761478645;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761478645;}', 2, 1, '2025-10-26 11:37:31', '2025-10-26 11:37:31', 246, NULL),
(100, 'aioseo_generate_llms_txt_single', 'complete', '2025-10-26 11:37:25', '2025-10-26 11:37:25', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761478645;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761478645;}', 2, 1, '2025-10-26 11:37:31', '2025-10-26 11:37:31', 246, NULL),
(101, 'aioseo_generate_llms_txt_single', 'complete', '2025-10-26 11:37:25', '2025-10-26 11:37:25', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761478645;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761478645;}', 2, 1, '2025-10-26 11:37:31', '2025-10-26 11:37:31', 246, NULL),
(102, 'aioseo_generate_llms_txt_single', 'complete', '2025-10-26 11:37:54', '2025-10-26 11:37:54', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761478674;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761478674;}', 2, 1, '2025-10-26 11:38:22', '2025-10-26 11:38:22', 248, NULL),
(103, 'aioseo_admin_notifications_update', 'complete', '2025-10-26 11:40:16', '2025-10-26 11:40:16', 10, '[]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2025-10-26 11:41:02', '2025-10-26 11:41:02', 252, NULL),
(104, 'action_scheduler/migration_hook', 'complete', '2025-10-26 11:42:13', '2025-10-26 11:42:13', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761478933;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761478933;}', 3, 1, '2025-10-26 11:42:17', '2025-10-26 11:42:17', 254, NULL),
(105, 'aioseo_image_sitemap_scan', 'complete', '2025-10-26 14:54:35', '2025-10-26 14:54:35', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761490475;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761490475;}', 2, 1, '2025-10-26 22:40:20', '2025-10-26 22:40:20', 266, NULL),
(106, 'aioseo_image_sitemap_scan', 'complete', '2025-10-26 22:55:20', '2025-10-26 22:55:20', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761519320;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761519320;}', 2, 1, '2025-10-26 23:04:15', '2025-10-26 23:04:15', 269, NULL),
(107, 'aioseo_ai_update_credits', 'complete', '2025-10-27 23:04:15', '2025-10-27 23:04:15', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1761606255;s:18:\"\0*\0first_timestamp\";i:1761379736;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1761606255;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-10-27 23:24:04', '2025-10-27 23:24:04', 275, NULL),
(108, 'aioseo_cache_prune', 'complete', '2025-10-27 23:04:15', '2025-10-27 23:04:15', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1761606255;s:18:\"\0*\0first_timestamp\";i:1761293334;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1761606255;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-10-27 23:24:04', '2025-10-27 23:24:04', 275, NULL),
(109, 'aioseo_generate_llms_txt', 'complete', '2025-10-27 23:04:15', '2025-10-27 23:04:15', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1761606255;s:18:\"\0*\0first_timestamp\";i:1761293346;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1761606255;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-10-27 23:24:04', '2025-10-27 23:24:04', 275, NULL),
(110, 'aioseo_image_sitemap_scan', 'complete', '2025-10-26 23:19:15', '2025-10-26 23:19:15', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761520755;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761520755;}', 2, 1, '2025-10-27 22:58:04', '2025-10-27 22:58:04', 271, NULL),
(111, 'action_scheduler_run_recurring_actions_schedule_hook', 'complete', '2025-10-27 23:04:15', '2025-10-27 23:04:15', 20, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1761606255;s:18:\"\0*\0first_timestamp\";i:1761293333;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1761606255;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 1, 1, '2025-10-27 23:24:04', '2025-10-27 23:24:04', 275, NULL),
(112, 'aioseo_image_sitemap_scan', 'complete', '2025-10-27 23:13:04', '2025-10-27 23:13:04', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761606784;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761606784;}', 2, 1, '2025-10-27 23:24:04', '2025-10-27 23:24:04', 275, NULL),
(113, 'aioseo_admin_notifications_update', 'complete', '2025-10-27 22:58:06', '2025-10-27 22:58:06', 10, '[]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2025-10-27 22:58:08', '2025-10-27 22:58:08', 273, NULL),
(114, 'aioseo_ai_update_credits', 'complete', '2025-10-28 23:24:04', '2025-10-28 23:24:04', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1761693844;s:18:\"\0*\0first_timestamp\";i:1761379736;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1761693844;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-10-29 09:00:30', '2025-10-29 09:00:30', 284, NULL),
(115, 'aioseo_cache_prune', 'complete', '2025-10-28 23:24:04', '2025-10-28 23:24:04', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1761693844;s:18:\"\0*\0first_timestamp\";i:1761293334;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1761693844;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-10-29 09:00:30', '2025-10-29 09:00:30', 284, NULL),
(116, 'aioseo_generate_llms_txt', 'complete', '2025-10-28 23:24:04', '2025-10-28 23:24:04', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1761693844;s:18:\"\0*\0first_timestamp\";i:1761293346;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1761693844;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-10-29 09:00:30', '2025-10-29 09:00:30', 284, NULL),
(117, 'aioseo_image_sitemap_scan', 'complete', '2025-10-27 23:39:04', '2025-10-27 23:39:04', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761608344;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761608344;}', 2, 1, '2025-10-28 01:08:08', '2025-10-28 01:08:08', 277, NULL),
(118, 'action_scheduler_run_recurring_actions_schedule_hook', 'complete', '2025-10-28 23:24:04', '2025-10-28 23:24:04', 20, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1761693844;s:18:\"\0*\0first_timestamp\";i:1761293333;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1761693844;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 1, 1, '2025-10-29 09:00:30', '2025-10-29 09:00:30', 284, NULL),
(119, 'aioseo_image_sitemap_scan', 'complete', '2025-10-28 01:23:08', '2025-10-28 01:23:08', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761614588;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761614588;}', 2, 1, '2025-10-28 22:43:33', '2025-10-28 22:43:33', 279, NULL),
(120, 'aioseo_image_sitemap_scan', 'complete', '2025-10-28 22:58:33', '2025-10-28 22:58:33', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761692313;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761692313;}', 2, 1, '2025-10-28 23:11:10', '2025-10-28 23:11:10', 282, NULL),
(121, 'aioseo_image_sitemap_scan', 'complete', '2025-10-28 23:26:10', '2025-10-28 23:26:10', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761693970;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761693970;}', 2, 1, '2025-10-29 09:00:30', '2025-10-29 09:00:30', 284, NULL),
(122, 'aioseo_ai_update_credits', 'complete', '2025-10-30 09:00:30', '2025-10-30 09:00:30', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1761814830;s:18:\"\0*\0first_timestamp\";i:1761379736;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1761814830;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-10-30 23:32:55', '2025-10-30 23:32:55', 295, NULL),
(123, 'aioseo_cache_prune', 'complete', '2025-10-30 09:00:30', '2025-10-30 09:00:30', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1761814830;s:18:\"\0*\0first_timestamp\";i:1761293334;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1761814830;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-10-30 23:32:55', '2025-10-30 23:32:55', 295, NULL),
(124, 'aioseo_generate_llms_txt', 'complete', '2025-10-30 09:00:30', '2025-10-30 09:00:30', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1761814830;s:18:\"\0*\0first_timestamp\";i:1761293346;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1761814830;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-10-30 23:32:55', '2025-10-30 23:32:55', 295, NULL),
(125, 'aioseo_image_sitemap_scan', 'complete', '2025-10-29 09:15:30', '2025-10-29 09:15:30', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761729330;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761729330;}', 2, 1, '2025-10-29 22:46:31', '2025-10-29 22:46:31', 288, NULL),
(126, 'action_scheduler_run_recurring_actions_schedule_hook', 'complete', '2025-10-30 09:00:30', '2025-10-30 09:00:30', 20, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1761814830;s:18:\"\0*\0first_timestamp\";i:1761293333;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1761814830;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 1, 1, '2025-10-30 23:32:55', '2025-10-30 23:32:55', 295, NULL),
(127, 'aioseo_admin_notifications_update', 'complete', '2025-10-29 09:00:33', '2025-10-29 09:00:33', 10, '[]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2025-10-29 09:00:35', '2025-10-29 09:00:35', 286, NULL),
(128, 'aioseo_image_sitemap_scan', 'complete', '2025-10-29 23:01:31', '2025-10-29 23:01:31', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761778891;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761778891;}', 2, 1, '2025-10-29 23:15:16', '2025-10-29 23:15:16', 291, NULL),
(129, 'aioseo_send_usage_data', 'failed', '2025-11-05 22:46:32', '2025-11-05 22:46:32', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1762382792;s:18:\"\0*\0first_timestamp\";i:1761760827;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1762382792;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 1, '2025-11-05 23:13:46', '2025-11-05 23:13:46', 544, NULL),
(130, 'aioseo_report_summary', 'failed', '2025-11-05 22:46:32', '2025-11-05 22:46:32', 10, '{\"frequency\":\"weekly\"}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1762382792;s:18:\"\0*\0first_timestamp\";i:1761761760;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1762382792;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 1, '2025-11-05 23:13:46', '2025-11-05 23:13:46', 544, NULL),
(131, 'aioseo_image_sitemap_scan', 'complete', '2025-10-29 23:30:16', '2025-10-29 23:30:16', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761780616;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761780616;}', 2, 1, '2025-10-30 07:38:35', '2025-10-30 07:38:35', 293, NULL),
(132, 'aioseo_image_sitemap_scan', 'complete', '2025-10-30 07:53:35', '2025-10-30 07:53:35', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761810815;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761810815;}', 2, 1, '2025-10-30 23:32:54', '2025-10-30 23:32:54', 295, NULL),
(133, 'aioseo_image_sitemap_scan', 'complete', '2025-10-30 23:47:54', '2025-10-30 23:47:54', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761868074;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761868074;}', 2, 1, '2025-10-31 00:01:06', '2025-10-31 00:01:06', 299, NULL),
(134, 'aioseo_ai_update_credits', 'complete', '2025-10-31 23:32:55', '2025-10-31 23:32:55', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1761953575;s:18:\"\0*\0first_timestamp\";i:1761379736;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1761953575;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-11-01 06:59:57', '2025-11-01 06:59:57', 317, NULL),
(135, 'aioseo_cache_prune', 'complete', '2025-10-31 23:32:55', '2025-10-31 23:32:55', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1761953575;s:18:\"\0*\0first_timestamp\";i:1761293334;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1761953575;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-11-01 06:59:57', '2025-11-01 06:59:57', 317, NULL),
(136, 'aioseo_generate_llms_txt', 'complete', '2025-10-31 23:32:55', '2025-10-31 23:32:55', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1761953575;s:18:\"\0*\0first_timestamp\";i:1761293346;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1761953575;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-11-01 06:59:57', '2025-11-01 06:59:57', 317, NULL),
(137, 'action_scheduler_run_recurring_actions_schedule_hook', 'complete', '2025-10-31 23:32:55', '2025-10-31 23:32:55', 20, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1761953575;s:18:\"\0*\0first_timestamp\";i:1761293333;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1761953575;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 1, 1, '2025-11-01 06:59:58', '2025-11-01 06:59:58', 317, NULL),
(138, 'aioseo_admin_notifications_update', 'complete', '2025-10-30 23:32:57', '2025-10-30 23:32:57', 10, '[]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2025-10-30 23:32:59', '2025-10-30 23:32:59', 297, NULL),
(139, 'aioseo_image_sitemap_scan', 'complete', '2025-10-31 00:16:06', '2025-10-31 00:16:06', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761869766;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761869766;}', 2, 1, '2025-10-31 00:56:45', '2025-10-31 00:56:45', 301, NULL),
(140, 'aioseo_image_sitemap_scan', 'complete', '2025-10-31 01:11:45', '2025-10-31 01:11:45', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761873105;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761873105;}', 2, 1, '2025-10-31 01:23:50', '2025-10-31 01:23:50', 304, NULL),
(141, 'aioseo_image_sitemap_scan', 'complete', '2025-10-31 01:38:50', '2025-10-31 01:38:50', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761874730;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761874730;}', 2, 1, '2025-10-31 01:48:14', '2025-10-31 01:48:14', 308, NULL),
(142, 'aioseo_image_sitemap_scan', 'complete', '2025-10-31 02:03:14', '2025-10-31 02:03:14', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761876194;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761876194;}', 2, 1, '2025-10-31 12:39:41', '2025-10-31 12:39:41', 310, NULL),
(143, 'aioseo_image_sitemap_scan', 'complete', '2025-10-31 12:54:41', '2025-10-31 12:54:41', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761915281;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761915281;}', 2, 1, '2025-10-31 22:43:39', '2025-10-31 22:43:39', 312, NULL),
(144, 'aioseo_image_sitemap_scan', 'complete', '2025-10-31 22:58:39', '2025-10-31 22:58:39', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761951519;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761951519;}', 2, 1, '2025-10-31 23:12:52', '2025-10-31 23:12:52', 315, NULL),
(145, 'aioseo_image_sitemap_scan', 'complete', '2025-10-31 23:27:52', '2025-10-31 23:27:52', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761953272;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761953272;}', 2, 1, '2025-11-01 06:59:57', '2025-11-01 06:59:57', 317, NULL),
(146, 'aioseo_image_sitemap_scan', 'complete', '2025-11-01 07:14:57', '2025-11-01 07:14:57', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761981297;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761981297;}', 2, 1, '2025-11-01 11:52:07', '2025-11-01 11:52:07', 319, NULL),
(147, 'aioseo_ai_update_credits', 'failed', '2025-11-02 06:59:57', '2025-11-02 06:59:57', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1762066797;s:18:\"\0*\0first_timestamp\";i:1761379736;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1762066797;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-11-02 22:59:41', '2025-11-02 22:59:41', 414, NULL),
(148, 'aioseo_cache_prune', 'failed', '2025-11-02 06:59:57', '2025-11-02 06:59:57', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1762066797;s:18:\"\0*\0first_timestamp\";i:1761293334;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1762066797;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-11-02 22:59:41', '2025-11-02 22:59:41', 414, NULL),
(149, 'aioseo_generate_llms_txt', 'failed', '2025-11-02 06:59:57', '2025-11-02 06:59:57', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1762066797;s:18:\"\0*\0first_timestamp\";i:1761293346;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1762066797;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-11-02 22:59:41', '2025-11-02 22:59:41', 414, NULL),
(150, 'action_scheduler_run_recurring_actions_schedule_hook', 'complete', '2025-11-02 06:59:58', '2025-11-02 06:59:58', 20, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1762066798;s:18:\"\0*\0first_timestamp\";i:1761293333;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1762066798;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 1, 1, '2025-11-02 22:59:41', '2025-11-02 22:59:41', 414, NULL),
(151, 'aioseo_image_sitemap_scan', 'complete', '2025-11-01 12:07:07', '2025-11-01 12:07:07', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761998827;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761998827;}', 2, 1, '2025-11-01 12:07:16', '2025-11-01 12:07:16', 334, NULL),
(152, 'aioseo_admin_notifications_update', 'complete', '2025-11-01 11:52:20', '2025-11-01 11:52:20', 10, '[]', 'O:28:\"ActionScheduler_NullSchedule\":0:{}', 2, 1, '2025-11-01 11:52:22', '2025-11-01 11:52:22', 321, NULL),
(153, 'aioseo_image_sitemap_scan', 'failed', '2025-11-01 12:22:16', '2025-11-01 12:22:16', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761999736;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761999736;}', 2, 1, '2025-11-01 12:22:40', '2025-11-01 12:22:40', 353, NULL),
(154, 'aioseo_generate_llms_txt_single', 'failed', '2025-11-01 12:10:01', '2025-11-01 12:10:01', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761999001;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761999001;}', 2, 1, '2025-11-01 12:12:40', '2025-11-01 12:12:40', 340, NULL),
(155, 'action_scheduler/migration_hook', 'complete', '2025-11-01 12:13:39', '2025-11-01 12:13:39', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1761999219;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1761999219;}', 3, 1, '2025-11-01 12:13:51', '2025-11-01 12:13:51', 342, NULL),
(156, 'action_scheduler/migration_hook', 'complete', '2025-11-01 13:53:00', '2025-11-01 13:53:00', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1762005180;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1762005180;}', 3, 1, '2025-11-01 13:53:39', '2025-11-01 13:53:39', 367, NULL),
(157, 'aioseo_ai_update_credits', 'failed', '2025-11-03 22:59:41', '2025-11-03 22:59:41', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1762210781;s:18:\"\0*\0first_timestamp\";i:1761379736;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1762210781;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-11-04 00:24:38', '2025-11-04 00:24:38', 480, NULL),
(158, 'aioseo_cache_prune', 'failed', '2025-11-03 22:59:41', '2025-11-03 22:59:41', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1762210781;s:18:\"\0*\0first_timestamp\";i:1761293334;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1762210781;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-11-04 00:24:38', '2025-11-04 00:24:38', 480, NULL),
(159, 'aioseo_generate_llms_txt', 'failed', '2025-11-03 22:59:41', '2025-11-03 22:59:41', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1762210781;s:18:\"\0*\0first_timestamp\";i:1761293346;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1762210781;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-11-04 00:24:38', '2025-11-04 00:24:38', 480, NULL),
(160, 'action_scheduler_run_recurring_actions_schedule_hook', 'complete', '2025-11-03 22:59:41', '2025-11-03 22:59:41', 20, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1762210781;s:18:\"\0*\0first_timestamp\";i:1761293333;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1762210781;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 1, 1, '2025-11-04 00:24:38', '2025-11-04 00:24:38', 480, NULL),
(161, 'action_scheduler/migration_hook', 'complete', '2025-11-03 15:03:15', '2025-11-03 15:03:15', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1762182195;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1762182195;}', 3, 1, '2025-11-03 15:03:18', '2025-11-03 15:03:18', 456, NULL),
(162, 'action_scheduler/migration_hook', 'failed', '2025-11-03 15:04:18', '2025-11-03 15:04:18', 10, '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1762182258;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1762182258;}', 3, 1, '2025-11-03 15:04:41', '2025-11-03 15:04:41', 459, NULL),
(163, 'aioseo_ai_update_credits', 'failed', '2025-11-05 00:24:38', '2025-11-05 00:24:38', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1762302278;s:18:\"\0*\0first_timestamp\";i:1761379736;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1762302278;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-11-05 23:13:46', '2025-11-05 23:13:46', 544, NULL),
(164, 'aioseo_cache_prune', 'failed', '2025-11-05 00:24:38', '2025-11-05 00:24:38', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1762302278;s:18:\"\0*\0first_timestamp\";i:1761293334;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1762302278;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-11-05 23:13:46', '2025-11-05 23:13:46', 544, NULL),
(165, 'aioseo_generate_llms_txt', 'failed', '2025-11-05 00:24:38', '2025-11-05 00:24:38', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1762302278;s:18:\"\0*\0first_timestamp\";i:1761293346;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1762302278;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-11-05 23:13:46', '2025-11-05 23:13:46', 544, NULL),
(166, 'action_scheduler_run_recurring_actions_schedule_hook', 'complete', '2025-11-05 00:24:38', '2025-11-05 00:24:38', 20, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1762302278;s:18:\"\0*\0first_timestamp\";i:1761293333;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1762302278;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 1, 1, '2025-11-05 23:13:46', '2025-11-05 23:13:46', 544, NULL),
(167, 'aioseo_ai_update_credits', 'failed', '2025-11-06 23:13:46', '2025-11-06 23:13:46', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1762470826;s:18:\"\0*\0first_timestamp\";i:1761379736;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1762470826;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-11-07 00:08:23', '2025-11-07 00:08:23', 551, NULL),
(168, 'aioseo_cache_prune', 'failed', '2025-11-06 23:13:46', '2025-11-06 23:13:46', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1762470826;s:18:\"\0*\0first_timestamp\";i:1761293334;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1762470826;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-11-07 00:08:23', '2025-11-07 00:08:23', 551, NULL),
(169, 'aioseo_generate_llms_txt', 'failed', '2025-11-06 23:13:46', '2025-11-06 23:13:46', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1762470826;s:18:\"\0*\0first_timestamp\";i:1761293346;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1762470826;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-11-07 00:08:23', '2025-11-07 00:08:23', 551, NULL),
(170, 'aioseo_report_summary', 'pending', '2025-12-05 23:13:46', '2025-12-05 23:13:46', 10, '{\"frequency\":\"monthly\"}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1764976426;s:18:\"\0*\0first_timestamp\";i:1762366560;s:13:\"\0*\0recurrence\";i:2592000;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1764976426;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:2592000;}', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(171, 'aioseo_send_usage_data', 'failed', '2025-11-12 23:13:46', '2025-11-12 23:13:46', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1762989226;s:18:\"\0*\0first_timestamp\";i:1761760827;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1762989226;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 1, '2025-11-12 23:39:20', '2025-11-12 23:39:20', 605, NULL);
INSERT INTO `abuhasdha_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `priority`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(172, 'aioseo_report_summary', 'failed', '2025-11-12 23:13:46', '2025-11-12 23:13:46', 10, '{\"frequency\":\"weekly\"}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1762989226;s:18:\"\0*\0first_timestamp\";i:1761761760;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1762989226;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 1, '2025-11-12 23:39:20', '2025-11-12 23:39:20', 605, NULL),
(173, 'action_scheduler_run_recurring_actions_schedule_hook', 'complete', '2025-11-06 23:13:46', '2025-11-06 23:13:46', 20, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1762470826;s:18:\"\0*\0first_timestamp\";i:1761293333;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1762470826;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 1, 1, '2025-11-07 00:08:23', '2025-11-07 00:08:23', 551, NULL),
(174, 'aioseo_ai_update_credits', 'failed', '2025-11-08 00:08:23', '2025-11-08 00:08:23', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1762560503;s:18:\"\0*\0first_timestamp\";i:1761379736;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1762560503;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-11-08 03:31:29', '2025-11-08 03:31:29', 569, NULL),
(175, 'aioseo_cache_prune', 'failed', '2025-11-08 00:08:23', '2025-11-08 00:08:23', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1762560503;s:18:\"\0*\0first_timestamp\";i:1761293334;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1762560503;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-11-08 03:31:29', '2025-11-08 03:31:29', 569, NULL),
(176, 'aioseo_generate_llms_txt', 'failed', '2025-11-08 00:08:23', '2025-11-08 00:08:23', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1762560503;s:18:\"\0*\0first_timestamp\";i:1761293346;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1762560503;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-11-08 03:31:29', '2025-11-08 03:31:29', 569, NULL),
(177, 'action_scheduler_run_recurring_actions_schedule_hook', 'complete', '2025-11-08 00:08:23', '2025-11-08 00:08:23', 20, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1762560503;s:18:\"\0*\0first_timestamp\";i:1761293333;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1762560503;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 1, 1, '2025-11-08 03:31:29', '2025-11-08 03:31:29', 569, NULL),
(178, 'aioseo_ai_update_credits', 'failed', '2025-11-09 03:31:29', '2025-11-09 03:31:29', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1762659089;s:18:\"\0*\0first_timestamp\";i:1761379736;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1762659089;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-11-09 03:56:00', '2025-11-09 03:56:00', 581, NULL),
(179, 'aioseo_cache_prune', 'failed', '2025-11-09 03:31:29', '2025-11-09 03:31:29', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1762659089;s:18:\"\0*\0first_timestamp\";i:1761293334;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1762659089;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-11-09 03:56:00', '2025-11-09 03:56:00', 581, NULL),
(180, 'aioseo_generate_llms_txt', 'failed', '2025-11-09 03:31:29', '2025-11-09 03:31:29', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1762659089;s:18:\"\0*\0first_timestamp\";i:1761293346;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1762659089;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-11-09 03:56:00', '2025-11-09 03:56:00', 581, NULL),
(181, 'action_scheduler_run_recurring_actions_schedule_hook', 'complete', '2025-11-09 03:31:29', '2025-11-09 03:31:29', 20, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1762659089;s:18:\"\0*\0first_timestamp\";i:1761293333;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1762659089;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 1, 1, '2025-11-09 03:56:00', '2025-11-09 03:56:00', 581, NULL),
(182, 'aioseo_ai_update_credits', 'failed', '2025-11-10 03:56:00', '2025-11-10 03:56:00', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1762746960;s:18:\"\0*\0first_timestamp\";i:1761379736;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1762746960;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-11-10 22:44:46', '2025-11-10 22:44:46', 590, NULL),
(183, 'aioseo_cache_prune', 'failed', '2025-11-10 03:56:00', '2025-11-10 03:56:00', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1762746960;s:18:\"\0*\0first_timestamp\";i:1761293334;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1762746960;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-11-10 22:44:46', '2025-11-10 22:44:46', 590, NULL),
(184, 'aioseo_generate_llms_txt', 'failed', '2025-11-10 03:56:00', '2025-11-10 03:56:00', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1762746960;s:18:\"\0*\0first_timestamp\";i:1761293346;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1762746960;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-11-10 22:44:46', '2025-11-10 22:44:46', 590, NULL),
(185, 'action_scheduler_run_recurring_actions_schedule_hook', 'complete', '2025-11-10 03:56:00', '2025-11-10 03:56:00', 20, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1762746960;s:18:\"\0*\0first_timestamp\";i:1761293333;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1762746960;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 1, 1, '2025-11-10 22:44:46', '2025-11-10 22:44:46', 590, NULL),
(186, 'aioseo_ai_update_credits', 'failed', '2025-11-11 22:44:46', '2025-11-11 22:44:46', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1762901086;s:18:\"\0*\0first_timestamp\";i:1761379736;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1762901086;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-11-11 23:34:38', '2025-11-11 23:34:38', 597, NULL),
(187, 'aioseo_cache_prune', 'failed', '2025-11-11 22:44:46', '2025-11-11 22:44:46', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1762901086;s:18:\"\0*\0first_timestamp\";i:1761293334;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1762901086;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-11-11 23:34:38', '2025-11-11 23:34:38', 597, NULL),
(188, 'aioseo_generate_llms_txt', 'failed', '2025-11-11 22:44:46', '2025-11-11 22:44:46', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1762901086;s:18:\"\0*\0first_timestamp\";i:1761293346;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1762901086;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-11-11 23:34:38', '2025-11-11 23:34:38', 597, NULL),
(189, 'action_scheduler_run_recurring_actions_schedule_hook', 'complete', '2025-11-11 22:44:46', '2025-11-11 22:44:46', 20, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1762901086;s:18:\"\0*\0first_timestamp\";i:1761293333;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1762901086;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 1, 1, '2025-11-11 23:34:38', '2025-11-11 23:34:38', 597, NULL),
(190, 'aioseo_ai_update_credits', 'failed', '2025-11-12 23:34:38', '2025-11-12 23:34:38', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1762990478;s:18:\"\0*\0first_timestamp\";i:1761379736;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1762990478;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-11-12 23:39:20', '2025-11-12 23:39:20', 605, NULL),
(191, 'aioseo_cache_prune', 'failed', '2025-11-12 23:34:38', '2025-11-12 23:34:38', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1762990478;s:18:\"\0*\0first_timestamp\";i:1761293334;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1762990478;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-11-12 23:39:20', '2025-11-12 23:39:20', 605, NULL),
(192, 'aioseo_generate_llms_txt', 'failed', '2025-11-12 23:34:38', '2025-11-12 23:34:38', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1762990478;s:18:\"\0*\0first_timestamp\";i:1761293346;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1762990478;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-11-12 23:39:20', '2025-11-12 23:39:20', 605, NULL),
(193, 'action_scheduler_run_recurring_actions_schedule_hook', 'complete', '2025-11-12 23:34:38', '2025-11-12 23:34:38', 20, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1762990478;s:18:\"\0*\0first_timestamp\";i:1761293333;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1762990478;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 1, 1, '2025-11-12 23:39:20', '2025-11-12 23:39:20', 605, NULL),
(194, 'aioseo_send_usage_data', 'pending', '2025-11-19 23:39:20', '2025-11-19 23:39:20', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1763595560;s:18:\"\0*\0first_timestamp\";i:1761760827;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1763595560;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(195, 'aioseo_report_summary', 'pending', '2025-11-19 23:39:20', '2025-11-19 23:39:20', 10, '{\"frequency\":\"weekly\"}', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1763595560;s:18:\"\0*\0first_timestamp\";i:1761761760;s:13:\"\0*\0recurrence\";i:604800;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1763595560;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:604800;}', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(196, 'aioseo_ai_update_credits', 'failed', '2025-11-13 23:39:20', '2025-11-13 23:39:20', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1763077160;s:18:\"\0*\0first_timestamp\";i:1761379736;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1763077160;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-11-13 23:41:59', '2025-11-13 23:41:59', 648, NULL),
(197, 'aioseo_cache_prune', 'failed', '2025-11-13 23:39:20', '2025-11-13 23:39:20', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1763077160;s:18:\"\0*\0first_timestamp\";i:1761293334;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1763077160;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-11-13 23:41:59', '2025-11-13 23:41:59', 648, NULL),
(198, 'aioseo_generate_llms_txt', 'failed', '2025-11-13 23:39:20', '2025-11-13 23:39:20', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1763077160;s:18:\"\0*\0first_timestamp\";i:1761293346;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1763077160;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-11-13 23:41:59', '2025-11-13 23:41:59', 648, NULL),
(199, 'action_scheduler_run_recurring_actions_schedule_hook', 'complete', '2025-11-13 23:39:20', '2025-11-13 23:39:20', 20, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1763077160;s:18:\"\0*\0first_timestamp\";i:1761293333;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1763077160;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 1, 1, '2025-11-13 23:41:59', '2025-11-13 23:41:59', 648, NULL),
(200, 'aioseo_ai_update_credits', 'failed', '2025-11-14 23:41:59', '2025-11-14 23:41:59', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1763163719;s:18:\"\0*\0first_timestamp\";i:1761379736;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1763163719;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-11-14 23:44:40', '2025-11-14 23:44:40', 653, NULL),
(201, 'aioseo_cache_prune', 'failed', '2025-11-14 23:41:59', '2025-11-14 23:41:59', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1763163719;s:18:\"\0*\0first_timestamp\";i:1761293334;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1763163719;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-11-14 23:44:40', '2025-11-14 23:44:40', 653, NULL),
(202, 'aioseo_generate_llms_txt', 'failed', '2025-11-14 23:41:59', '2025-11-14 23:41:59', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1763163719;s:18:\"\0*\0first_timestamp\";i:1761293346;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1763163719;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-11-14 23:44:40', '2025-11-14 23:44:40', 653, NULL),
(203, 'action_scheduler_run_recurring_actions_schedule_hook', 'complete', '2025-11-14 23:41:59', '2025-11-14 23:41:59', 20, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1763163719;s:18:\"\0*\0first_timestamp\";i:1761293333;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1763163719;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 1, 1, '2025-11-14 23:44:40', '2025-11-14 23:44:40', 653, NULL),
(204, 'aioseo_ai_update_credits', 'failed', '2025-11-15 23:44:40', '2025-11-15 23:44:40', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1763250280;s:18:\"\0*\0first_timestamp\";i:1761379736;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1763250280;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-11-16 17:54:51', '2025-11-16 17:54:51', 662, NULL),
(205, 'aioseo_cache_prune', 'failed', '2025-11-15 23:44:40', '2025-11-15 23:44:40', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1763250280;s:18:\"\0*\0first_timestamp\";i:1761293334;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1763250280;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-11-16 17:54:51', '2025-11-16 17:54:51', 662, NULL),
(206, 'aioseo_generate_llms_txt', 'failed', '2025-11-15 23:44:40', '2025-11-15 23:44:40', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1763250280;s:18:\"\0*\0first_timestamp\";i:1761293346;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1763250280;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 1, '2025-11-16 17:54:51', '2025-11-16 17:54:51', 662, NULL),
(207, 'action_scheduler_run_recurring_actions_schedule_hook', 'complete', '2025-11-15 23:44:40', '2025-11-15 23:44:40', 20, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1763250280;s:18:\"\0*\0first_timestamp\";i:1761293333;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1763250280;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 1, 1, '2025-11-16 17:54:51', '2025-11-16 17:54:51', 662, NULL),
(208, 'aioseo_ai_update_credits', 'pending', '2025-11-17 17:54:51', '2025-11-17 17:54:51', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1763402091;s:18:\"\0*\0first_timestamp\";i:1761379736;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1763402091;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(209, 'aioseo_cache_prune', 'pending', '2025-11-17 17:54:51', '2025-11-17 17:54:51', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1763402091;s:18:\"\0*\0first_timestamp\";i:1761293334;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1763402091;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(210, 'aioseo_generate_llms_txt', 'pending', '2025-11-17 17:54:51', '2025-11-17 17:54:51', 10, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1763402091;s:18:\"\0*\0first_timestamp\";i:1761293346;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1763402091;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 2, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL),
(211, 'action_scheduler_run_recurring_actions_schedule_hook', 'pending', '2025-11-17 17:54:51', '2025-11-17 17:54:51', 20, '[]', 'O:32:\"ActionScheduler_IntervalSchedule\":5:{s:22:\"\0*\0scheduled_timestamp\";i:1763402091;s:18:\"\0*\0first_timestamp\";i:1761293333;s:13:\"\0*\0recurrence\";i:86400;s:49:\"\0ActionScheduler_IntervalSchedule\0start_timestamp\";i:1763402091;s:53:\"\0ActionScheduler_IntervalSchedule\0interval_in_seconds\";i:86400;}', 1, 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `abuhasdha_actionscheduler_claims`
--

CREATE TABLE `abuhasdha_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abuhasdha_actionscheduler_groups`
--

CREATE TABLE `abuhasdha_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `abuhasdha_actionscheduler_groups`
--

INSERT INTO `abuhasdha_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'ActionScheduler'),
(2, 'aioseo'),
(3, 'action-scheduler-migration');

-- --------------------------------------------------------

--
-- Table structure for table `abuhasdha_actionscheduler_logs`
--

CREATE TABLE `abuhasdha_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text NOT NULL,
  `log_date_gmt` datetime DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `abuhasdha_actionscheduler_logs`
--

INSERT INTO `abuhasdha_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 10, 'action created', '2025-10-24 08:08:53', '2025-10-24 08:08:53'),
(4, 13, 'action created', '2025-10-24 08:08:56', '2025-10-24 08:08:56'),
(6, 15, 'action created', '2025-10-24 08:08:56', '2025-10-24 08:08:56'),
(11, 16, 'action created', '2025-10-24 08:08:57', '2025-10-24 08:08:57'),
(12, 10, 'action started via Async Request', '2025-10-24 08:08:57', '2025-10-24 08:08:57'),
(13, 10, 'action complete via Async Request', '2025-10-24 08:08:57', '2025-10-24 08:08:57'),
(14, 17, 'action created', '2025-10-24 08:08:57', '2025-10-24 08:08:57'),
(21, 22, 'action created', '2025-10-24 08:08:59', '2025-10-24 08:08:59'),
(36, 29, 'action created', '2025-10-24 08:09:08', '2025-10-24 08:09:08'),
(54, 33, 'action created', '2025-10-24 08:09:25', '2025-10-24 08:09:25'),
(55, 34, 'action created', '2025-10-24 08:09:25', '2025-10-24 08:09:25'),
(56, 35, 'action created', '2025-10-24 08:09:26', '2025-10-24 08:09:26'),
(63, 15, 'action started via WP Cron', '2025-10-24 08:10:00', '2025-10-24 08:10:00'),
(64, 15, 'action complete via WP Cron', '2025-10-24 08:10:00', '2025-10-24 08:10:00'),
(110, 52, 'action created', '2025-10-24 22:42:15', '2025-10-24 22:42:15'),
(112, 52, 'action started via WP Cron', '2025-10-25 22:42:10', '2025-10-25 22:42:10'),
(113, 53, 'action created', '2025-10-25 22:42:10', '2025-10-25 22:42:10'),
(114, 52, 'action complete via WP Cron', '2025-10-25 22:42:10', '2025-10-25 22:42:10'),
(115, 13, 'action started via WP Cron', '2025-10-25 22:42:10', '2025-10-25 22:42:10'),
(116, 13, 'action complete via WP Cron', '2025-10-25 22:42:11', '2025-10-25 22:42:11'),
(117, 54, 'action created', '2025-10-25 22:42:11', '2025-10-25 22:42:11'),
(118, 16, 'action started via WP Cron', '2025-10-25 22:42:11', '2025-10-25 22:42:11'),
(119, 16, 'action complete via WP Cron', '2025-10-25 22:42:11', '2025-10-25 22:42:11'),
(120, 55, 'action created', '2025-10-25 22:42:11', '2025-10-25 22:42:11'),
(121, 29, 'action started via WP Cron', '2025-10-25 22:42:11', '2025-10-25 22:42:11'),
(122, 29, 'action complete via WP Cron', '2025-10-25 22:42:11', '2025-10-25 22:42:11'),
(123, 56, 'action created', '2025-10-25 22:42:11', '2025-10-25 22:42:11'),
(124, 17, 'action started via WP Cron', '2025-10-25 22:42:11', '2025-10-25 22:42:11'),
(125, 17, 'action complete via WP Cron', '2025-10-25 22:42:11', '2025-10-25 22:42:11'),
(126, 57, 'action created', '2025-10-25 22:42:11', '2025-10-25 22:42:11'),
(127, 58, 'action created', '2025-10-25 22:42:22', '2025-10-25 22:42:22'),
(128, 58, 'action started via Async Request', '2025-10-25 22:42:23', '2025-10-25 22:42:23'),
(129, 58, 'action complete via Async Request', '2025-10-25 22:42:23', '2025-10-25 22:42:23'),
(130, 53, 'action started via WP Cron', '2025-10-26 02:04:01', '2025-10-26 02:04:01'),
(131, 59, 'action created', '2025-10-26 02:04:01', '2025-10-26 02:04:01'),
(132, 53, 'action complete via WP Cron', '2025-10-26 02:04:01', '2025-10-26 02:04:01'),
(133, 59, 'action started via Async Request', '2025-10-26 02:47:28', '2025-10-26 02:47:28'),
(134, 60, 'action created', '2025-10-26 02:47:28', '2025-10-26 02:47:28'),
(135, 59, 'action complete via Async Request', '2025-10-26 02:47:28', '2025-10-26 02:47:28'),
(136, 60, 'action started via WP Cron', '2025-10-26 03:52:57', '2025-10-26 03:52:57'),
(137, 61, 'action created', '2025-10-26 03:52:57', '2025-10-26 03:52:57'),
(138, 60, 'action complete via WP Cron', '2025-10-26 03:52:57', '2025-10-26 03:52:57'),
(139, 62, 'action created', '2025-10-26 03:55:17', '2025-10-26 03:55:17'),
(140, 63, 'action created', '2025-10-26 03:55:17', '2025-10-26 03:55:17'),
(141, 62, 'action started via Async Request', '2025-10-26 03:56:17', '2025-10-26 03:56:17'),
(142, 62, 'action complete via Async Request', '2025-10-26 03:56:17', '2025-10-26 03:56:17'),
(143, 63, 'action started via Async Request', '2025-10-26 03:56:17', '2025-10-26 03:56:17'),
(144, 63, 'action complete via Async Request', '2025-10-26 03:56:17', '2025-10-26 03:56:17'),
(145, 64, 'action created', '2025-10-26 03:56:27', '2025-10-26 03:56:27'),
(146, 65, 'action created', '2025-10-26 03:56:27', '2025-10-26 03:56:27'),
(147, 64, 'action started via WP Cron', '2025-10-26 03:56:54', '2025-10-26 03:56:54'),
(148, 64, 'action complete via WP Cron', '2025-10-26 03:56:54', '2025-10-26 03:56:54'),
(149, 65, 'action started via WP Cron', '2025-10-26 03:56:54', '2025-10-26 03:56:54'),
(150, 65, 'action complete via WP Cron', '2025-10-26 03:56:54', '2025-10-26 03:56:54'),
(151, 66, 'action created', '2025-10-26 03:56:59', '2025-10-26 03:56:59'),
(152, 67, 'action created', '2025-10-26 03:56:59', '2025-10-26 03:56:59'),
(153, 66, 'action started via Async Request', '2025-10-26 03:57:26', '2025-10-26 03:57:26'),
(154, 66, 'action complete via Async Request', '2025-10-26 03:57:26', '2025-10-26 03:57:26'),
(155, 67, 'action started via Async Request', '2025-10-26 03:57:26', '2025-10-26 03:57:26'),
(156, 67, 'action complete via Async Request', '2025-10-26 03:57:26', '2025-10-26 03:57:26'),
(157, 68, 'action created', '2025-10-26 03:57:43', '2025-10-26 03:57:43'),
(158, 69, 'action created', '2025-10-26 03:57:43', '2025-10-26 03:57:43'),
(159, 68, 'action started via Async Request', '2025-10-26 03:58:31', '2025-10-26 03:58:31'),
(160, 68, 'action complete via Async Request', '2025-10-26 03:58:31', '2025-10-26 03:58:31'),
(161, 69, 'action started via Async Request', '2025-10-26 03:58:31', '2025-10-26 03:58:31'),
(162, 69, 'action complete via Async Request', '2025-10-26 03:58:31', '2025-10-26 03:58:31'),
(163, 61, 'action started via Async Request', '2025-10-26 04:08:06', '2025-10-26 04:08:06'),
(164, 70, 'action created', '2025-10-26 04:08:06', '2025-10-26 04:08:06'),
(165, 61, 'action complete via Async Request', '2025-10-26 04:08:06', '2025-10-26 04:08:06'),
(166, 70, 'action started via Async Request', '2025-10-26 04:10:08', '2025-10-26 04:10:08'),
(167, 71, 'action created', '2025-10-26 04:10:08', '2025-10-26 04:10:08'),
(168, 70, 'action complete via Async Request', '2025-10-26 04:10:08', '2025-10-26 04:10:08'),
(169, 71, 'action started via Async Request', '2025-10-26 06:18:40', '2025-10-26 06:18:40'),
(170, 72, 'action created', '2025-10-26 06:18:40', '2025-10-26 06:18:40'),
(171, 71, 'action complete via Async Request', '2025-10-26 06:18:40', '2025-10-26 06:18:40'),
(172, 72, 'action started via WP Cron', '2025-10-26 06:34:48', '2025-10-26 06:34:48'),
(173, 73, 'action created', '2025-10-26 06:34:48', '2025-10-26 06:34:48'),
(174, 72, 'action complete via WP Cron', '2025-10-26 06:34:48', '2025-10-26 06:34:48'),
(175, 73, 'action started via WP Cron', '2025-10-26 06:50:55', '2025-10-26 06:50:55'),
(176, 74, 'action created', '2025-10-26 06:50:55', '2025-10-26 06:50:55'),
(177, 73, 'action complete via WP Cron', '2025-10-26 06:50:55', '2025-10-26 06:50:55'),
(178, 74, 'action started via WP Cron', '2025-10-26 07:07:04', '2025-10-26 07:07:04'),
(179, 75, 'action created', '2025-10-26 07:07:04', '2025-10-26 07:07:04'),
(180, 74, 'action complete via WP Cron', '2025-10-26 07:07:04', '2025-10-26 07:07:04'),
(181, 75, 'action started via WP Cron', '2025-10-26 07:23:11', '2025-10-26 07:23:11'),
(182, 76, 'action created', '2025-10-26 07:23:11', '2025-10-26 07:23:11'),
(183, 75, 'action complete via WP Cron', '2025-10-26 07:23:11', '2025-10-26 07:23:11'),
(184, 76, 'action started via WP Cron', '2025-10-26 07:39:19', '2025-10-26 07:39:19'),
(185, 77, 'action created', '2025-10-26 07:39:19', '2025-10-26 07:39:19'),
(186, 76, 'action complete via WP Cron', '2025-10-26 07:39:19', '2025-10-26 07:39:19'),
(187, 77, 'action started via WP Cron', '2025-10-26 07:55:27', '2025-10-26 07:55:27'),
(188, 78, 'action created', '2025-10-26 07:55:27', '2025-10-26 07:55:27'),
(189, 77, 'action complete via WP Cron', '2025-10-26 07:55:27', '2025-10-26 07:55:27'),
(190, 78, 'action started via WP Cron', '2025-10-26 08:11:36', '2025-10-26 08:11:36'),
(191, 79, 'action created', '2025-10-26 08:11:36', '2025-10-26 08:11:36'),
(192, 78, 'action complete via WP Cron', '2025-10-26 08:11:36', '2025-10-26 08:11:36'),
(193, 79, 'action started via WP Cron', '2025-10-26 08:27:43', '2025-10-26 08:27:43'),
(194, 80, 'action created', '2025-10-26 08:27:43', '2025-10-26 08:27:43'),
(195, 79, 'action complete via WP Cron', '2025-10-26 08:27:43', '2025-10-26 08:27:43'),
(196, 80, 'action started via WP Cron', '2025-10-26 08:43:51', '2025-10-26 08:43:51'),
(197, 81, 'action created', '2025-10-26 08:43:51', '2025-10-26 08:43:51'),
(198, 80, 'action complete via WP Cron', '2025-10-26 08:43:51', '2025-10-26 08:43:51'),
(199, 81, 'action started via WP Cron', '2025-10-26 08:59:59', '2025-10-26 08:59:59'),
(200, 82, 'action created', '2025-10-26 08:59:59', '2025-10-26 08:59:59'),
(201, 81, 'action complete via WP Cron', '2025-10-26 08:59:59', '2025-10-26 08:59:59'),
(202, 82, 'action started via WP Cron', '2025-10-26 09:16:08', '2025-10-26 09:16:08'),
(203, 83, 'action created', '2025-10-26 09:16:08', '2025-10-26 09:16:08'),
(204, 82, 'action complete via WP Cron', '2025-10-26 09:16:08', '2025-10-26 09:16:08'),
(205, 83, 'action started via WP Cron', '2025-10-26 09:33:07', '2025-10-26 09:33:07'),
(206, 84, 'action created', '2025-10-26 09:33:07', '2025-10-26 09:33:07'),
(207, 83, 'action complete via WP Cron', '2025-10-26 09:33:07', '2025-10-26 09:33:07'),
(208, 84, 'action started via WP Cron', '2025-10-26 09:52:07', '2025-10-26 09:52:07'),
(209, 85, 'action created', '2025-10-26 09:52:07', '2025-10-26 09:52:07'),
(210, 84, 'action complete via WP Cron', '2025-10-26 09:52:07', '2025-10-26 09:52:07'),
(211, 85, 'action started via WP Cron', '2025-10-26 10:13:08', '2025-10-26 10:13:08'),
(212, 86, 'action created', '2025-10-26 10:13:08', '2025-10-26 10:13:08'),
(213, 85, 'action complete via WP Cron', '2025-10-26 10:13:08', '2025-10-26 10:13:08'),
(214, 86, 'action started via WP Cron', '2025-10-26 10:30:07', '2025-10-26 10:30:07'),
(215, 87, 'action created', '2025-10-26 10:30:07', '2025-10-26 10:30:07'),
(216, 86, 'action complete via WP Cron', '2025-10-26 10:30:07', '2025-10-26 10:30:07'),
(217, 87, 'action started via WP Cron', '2025-10-26 11:02:03', '2025-10-26 11:02:03'),
(218, 88, 'action created', '2025-10-26 11:02:04', '2025-10-26 11:02:04'),
(219, 87, 'action complete via WP Cron', '2025-10-26 11:02:04', '2025-10-26 11:02:04'),
(220, 88, 'action started via WP Cron', '2025-10-26 11:21:04', '2025-10-26 11:21:04'),
(221, 89, 'action created', '2025-10-26 11:21:04', '2025-10-26 11:21:04'),
(222, 88, 'action complete via WP Cron', '2025-10-26 11:21:04', '2025-10-26 11:21:04'),
(223, 89, 'action started via WP Cron', '2025-10-26 11:36:26', '2025-10-26 11:36:26'),
(224, 90, 'action created', '2025-10-26 11:36:26', '2025-10-26 11:36:26'),
(225, 89, 'action complete via WP Cron', '2025-10-26 11:36:26', '2025-10-26 11:36:26'),
(226, 91, 'action created', '2025-10-26 11:37:15', '2025-10-26 11:37:15'),
(227, 92, 'action created', '2025-10-26 11:37:15', '2025-10-26 11:37:15'),
(228, 93, 'action created', '2025-10-26 11:37:15', '2025-10-26 11:37:15'),
(229, 94, 'action created', '2025-10-26 11:37:15', '2025-10-26 11:37:15'),
(230, 95, 'action created', '2025-10-26 11:37:15', '2025-10-26 11:37:15'),
(231, 96, 'action created', '2025-10-26 11:37:15', '2025-10-26 11:37:15'),
(232, 97, 'action created', '2025-10-26 11:37:15', '2025-10-26 11:37:15'),
(233, 98, 'action created', '2025-10-26 11:37:15', '2025-10-26 11:37:15'),
(234, 99, 'action created', '2025-10-26 11:37:15', '2025-10-26 11:37:15'),
(235, 100, 'action created', '2025-10-26 11:37:15', '2025-10-26 11:37:15'),
(236, 101, 'action created', '2025-10-26 11:37:15', '2025-10-26 11:37:15'),
(237, 91, 'action started via Async Request', '2025-10-26 11:37:31', '2025-10-26 11:37:31'),
(238, 91, 'action complete via Async Request', '2025-10-26 11:37:31', '2025-10-26 11:37:31'),
(239, 92, 'action started via Async Request', '2025-10-26 11:37:31', '2025-10-26 11:37:31'),
(240, 92, 'action complete via Async Request', '2025-10-26 11:37:31', '2025-10-26 11:37:31'),
(241, 93, 'action started via Async Request', '2025-10-26 11:37:31', '2025-10-26 11:37:31'),
(242, 93, 'action complete via Async Request', '2025-10-26 11:37:31', '2025-10-26 11:37:31'),
(243, 94, 'action started via Async Request', '2025-10-26 11:37:31', '2025-10-26 11:37:31'),
(244, 94, 'action complete via Async Request', '2025-10-26 11:37:31', '2025-10-26 11:37:31'),
(245, 95, 'action started via Async Request', '2025-10-26 11:37:31', '2025-10-26 11:37:31'),
(246, 95, 'action complete via Async Request', '2025-10-26 11:37:31', '2025-10-26 11:37:31'),
(247, 96, 'action started via Async Request', '2025-10-26 11:37:31', '2025-10-26 11:37:31'),
(248, 96, 'action complete via Async Request', '2025-10-26 11:37:31', '2025-10-26 11:37:31'),
(249, 97, 'action started via Async Request', '2025-10-26 11:37:31', '2025-10-26 11:37:31'),
(250, 97, 'action complete via Async Request', '2025-10-26 11:37:31', '2025-10-26 11:37:31'),
(251, 98, 'action started via Async Request', '2025-10-26 11:37:31', '2025-10-26 11:37:31'),
(252, 98, 'action complete via Async Request', '2025-10-26 11:37:31', '2025-10-26 11:37:31'),
(253, 99, 'action started via Async Request', '2025-10-26 11:37:31', '2025-10-26 11:37:31'),
(254, 99, 'action complete via Async Request', '2025-10-26 11:37:31', '2025-10-26 11:37:31'),
(255, 100, 'action started via Async Request', '2025-10-26 11:37:31', '2025-10-26 11:37:31'),
(256, 100, 'action complete via Async Request', '2025-10-26 11:37:31', '2025-10-26 11:37:31'),
(257, 101, 'action started via Async Request', '2025-10-26 11:37:31', '2025-10-26 11:37:31'),
(258, 101, 'action complete via Async Request', '2025-10-26 11:37:31', '2025-10-26 11:37:31'),
(259, 102, 'action created', '2025-10-26 11:37:44', '2025-10-26 11:37:44'),
(260, 102, 'action started via WP Cron', '2025-10-26 11:38:22', '2025-10-26 11:38:22'),
(261, 102, 'action complete via WP Cron', '2025-10-26 11:38:22', '2025-10-26 11:38:22'),
(262, 103, 'action created', '2025-10-26 11:40:16', '2025-10-26 11:40:16'),
(263, 103, 'action started via WP Cron', '2025-10-26 11:41:02', '2025-10-26 11:41:02'),
(264, 103, 'action complete via WP Cron', '2025-10-26 11:41:02', '2025-10-26 11:41:02'),
(265, 104, 'action created', '2025-10-26 11:41:13', '2025-10-26 11:41:13'),
(266, 104, 'action started via WP Cron', '2025-10-26 11:42:16', '2025-10-26 11:42:16'),
(267, 104, 'action complete via WP Cron', '2025-10-26 11:42:16', '2025-10-26 11:42:16'),
(268, 90, 'action started via WP Cron', '2025-10-26 14:39:35', '2025-10-26 14:39:35'),
(269, 105, 'action created', '2025-10-26 14:39:35', '2025-10-26 14:39:35'),
(270, 90, 'action complete via WP Cron', '2025-10-26 14:39:35', '2025-10-26 14:39:35'),
(271, 105, 'action started via WP Cron', '2025-10-26 22:40:20', '2025-10-26 22:40:20'),
(272, 106, 'action created', '2025-10-26 22:40:20', '2025-10-26 22:40:20'),
(273, 105, 'action complete via WP Cron', '2025-10-26 22:40:20', '2025-10-26 22:40:20'),
(274, 54, 'action started via WP Cron', '2025-10-26 23:04:14', '2025-10-26 23:04:14'),
(275, 54, 'action complete via WP Cron', '2025-10-26 23:04:15', '2025-10-26 23:04:15'),
(276, 107, 'action created', '2025-10-26 23:04:15', '2025-10-26 23:04:15'),
(277, 55, 'action started via WP Cron', '2025-10-26 23:04:15', '2025-10-26 23:04:15'),
(278, 55, 'action complete via WP Cron', '2025-10-26 23:04:15', '2025-10-26 23:04:15'),
(279, 108, 'action created', '2025-10-26 23:04:15', '2025-10-26 23:04:15'),
(280, 56, 'action started via WP Cron', '2025-10-26 23:04:15', '2025-10-26 23:04:15'),
(281, 56, 'action complete via WP Cron', '2025-10-26 23:04:15', '2025-10-26 23:04:15'),
(282, 109, 'action created', '2025-10-26 23:04:15', '2025-10-26 23:04:15'),
(283, 106, 'action started via WP Cron', '2025-10-26 23:04:15', '2025-10-26 23:04:15'),
(284, 110, 'action created', '2025-10-26 23:04:15', '2025-10-26 23:04:15'),
(285, 106, 'action complete via WP Cron', '2025-10-26 23:04:15', '2025-10-26 23:04:15'),
(286, 57, 'action started via WP Cron', '2025-10-26 23:04:15', '2025-10-26 23:04:15'),
(287, 57, 'action complete via WP Cron', '2025-10-26 23:04:15', '2025-10-26 23:04:15'),
(288, 111, 'action created', '2025-10-26 23:04:15', '2025-10-26 23:04:15'),
(289, 110, 'action started via WP Cron', '2025-10-27 22:58:04', '2025-10-27 22:58:04'),
(290, 112, 'action created', '2025-10-27 22:58:04', '2025-10-27 22:58:04'),
(291, 110, 'action complete via WP Cron', '2025-10-27 22:58:04', '2025-10-27 22:58:04'),
(292, 113, 'action created', '2025-10-27 22:58:06', '2025-10-27 22:58:06'),
(293, 113, 'action started via Async Request', '2025-10-27 22:58:08', '2025-10-27 22:58:08'),
(294, 113, 'action complete via Async Request', '2025-10-27 22:58:08', '2025-10-27 22:58:08'),
(295, 107, 'action started via WP Cron', '2025-10-27 23:24:03', '2025-10-27 23:24:03'),
(296, 107, 'action complete via WP Cron', '2025-10-27 23:24:04', '2025-10-27 23:24:04'),
(297, 114, 'action created', '2025-10-27 23:24:04', '2025-10-27 23:24:04'),
(298, 108, 'action started via WP Cron', '2025-10-27 23:24:04', '2025-10-27 23:24:04'),
(299, 108, 'action complete via WP Cron', '2025-10-27 23:24:04', '2025-10-27 23:24:04'),
(300, 115, 'action created', '2025-10-27 23:24:04', '2025-10-27 23:24:04'),
(301, 109, 'action started via WP Cron', '2025-10-27 23:24:04', '2025-10-27 23:24:04'),
(302, 109, 'action complete via WP Cron', '2025-10-27 23:24:04', '2025-10-27 23:24:04'),
(303, 116, 'action created', '2025-10-27 23:24:04', '2025-10-27 23:24:04'),
(304, 112, 'action started via WP Cron', '2025-10-27 23:24:04', '2025-10-27 23:24:04'),
(305, 117, 'action created', '2025-10-27 23:24:04', '2025-10-27 23:24:04'),
(306, 112, 'action complete via WP Cron', '2025-10-27 23:24:04', '2025-10-27 23:24:04'),
(307, 111, 'action started via WP Cron', '2025-10-27 23:24:04', '2025-10-27 23:24:04'),
(308, 111, 'action complete via WP Cron', '2025-10-27 23:24:04', '2025-10-27 23:24:04'),
(309, 118, 'action created', '2025-10-27 23:24:04', '2025-10-27 23:24:04'),
(310, 117, 'action started via WP Cron', '2025-10-28 01:08:08', '2025-10-28 01:08:08'),
(311, 119, 'action created', '2025-10-28 01:08:08', '2025-10-28 01:08:08'),
(312, 117, 'action complete via WP Cron', '2025-10-28 01:08:08', '2025-10-28 01:08:08'),
(313, 119, 'action started via WP Cron', '2025-10-28 22:43:33', '2025-10-28 22:43:33'),
(314, 120, 'action created', '2025-10-28 22:43:33', '2025-10-28 22:43:33'),
(315, 119, 'action complete via WP Cron', '2025-10-28 22:43:33', '2025-10-28 22:43:33'),
(316, 120, 'action started via WP Cron', '2025-10-28 23:11:10', '2025-10-28 23:11:10'),
(317, 121, 'action created', '2025-10-28 23:11:10', '2025-10-28 23:11:10'),
(318, 120, 'action complete via WP Cron', '2025-10-28 23:11:10', '2025-10-28 23:11:10'),
(319, 114, 'action started via WP Cron', '2025-10-29 09:00:29', '2025-10-29 09:00:29'),
(320, 114, 'action complete via WP Cron', '2025-10-29 09:00:30', '2025-10-29 09:00:30'),
(321, 122, 'action created', '2025-10-29 09:00:30', '2025-10-29 09:00:30'),
(322, 115, 'action started via WP Cron', '2025-10-29 09:00:30', '2025-10-29 09:00:30'),
(323, 115, 'action complete via WP Cron', '2025-10-29 09:00:30', '2025-10-29 09:00:30'),
(324, 123, 'action created', '2025-10-29 09:00:30', '2025-10-29 09:00:30'),
(325, 116, 'action started via WP Cron', '2025-10-29 09:00:30', '2025-10-29 09:00:30'),
(326, 116, 'action complete via WP Cron', '2025-10-29 09:00:30', '2025-10-29 09:00:30'),
(327, 124, 'action created', '2025-10-29 09:00:30', '2025-10-29 09:00:30'),
(328, 121, 'action started via WP Cron', '2025-10-29 09:00:30', '2025-10-29 09:00:30'),
(329, 125, 'action created', '2025-10-29 09:00:30', '2025-10-29 09:00:30'),
(330, 121, 'action complete via WP Cron', '2025-10-29 09:00:30', '2025-10-29 09:00:30'),
(331, 118, 'action started via WP Cron', '2025-10-29 09:00:30', '2025-10-29 09:00:30'),
(332, 118, 'action complete via WP Cron', '2025-10-29 09:00:30', '2025-10-29 09:00:30'),
(333, 126, 'action created', '2025-10-29 09:00:30', '2025-10-29 09:00:30'),
(334, 127, 'action created', '2025-10-29 09:00:33', '2025-10-29 09:00:33'),
(335, 127, 'action started via Async Request', '2025-10-29 09:00:34', '2025-10-29 09:00:34'),
(336, 127, 'action complete via Async Request', '2025-10-29 09:00:35', '2025-10-29 09:00:35'),
(337, 125, 'action started via WP Cron', '2025-10-29 22:46:31', '2025-10-29 22:46:31'),
(338, 128, 'action created', '2025-10-29 22:46:31', '2025-10-29 22:46:31'),
(339, 125, 'action complete via WP Cron', '2025-10-29 22:46:31', '2025-10-29 22:46:31'),
(340, 35, 'action started via WP Cron', '2025-10-29 22:46:31', '2025-10-29 22:46:31'),
(341, 35, 'action complete via WP Cron', '2025-10-29 22:46:32', '2025-10-29 22:46:32'),
(342, 129, 'action created', '2025-10-29 22:46:32', '2025-10-29 22:46:32'),
(343, 33, 'action started via WP Cron', '2025-10-29 22:46:32', '2025-10-29 22:46:32'),
(344, 33, 'action complete via WP Cron', '2025-10-29 22:46:32', '2025-10-29 22:46:32'),
(345, 130, 'action created', '2025-10-29 22:46:32', '2025-10-29 22:46:32'),
(346, 128, 'action started via WP Cron', '2025-10-29 23:15:16', '2025-10-29 23:15:16'),
(347, 131, 'action created', '2025-10-29 23:15:16', '2025-10-29 23:15:16'),
(348, 128, 'action complete via WP Cron', '2025-10-29 23:15:16', '2025-10-29 23:15:16'),
(349, 131, 'action started via WP Cron', '2025-10-30 07:38:35', '2025-10-30 07:38:35'),
(350, 132, 'action created', '2025-10-30 07:38:35', '2025-10-30 07:38:35'),
(351, 131, 'action complete via WP Cron', '2025-10-30 07:38:35', '2025-10-30 07:38:35'),
(352, 132, 'action started via WP Cron', '2025-10-30 23:32:54', '2025-10-30 23:32:54'),
(353, 133, 'action created', '2025-10-30 23:32:54', '2025-10-30 23:32:54'),
(354, 132, 'action complete via WP Cron', '2025-10-30 23:32:54', '2025-10-30 23:32:54'),
(355, 122, 'action started via WP Cron', '2025-10-30 23:32:54', '2025-10-30 23:32:54'),
(356, 122, 'action complete via WP Cron', '2025-10-30 23:32:55', '2025-10-30 23:32:55'),
(357, 134, 'action created', '2025-10-30 23:32:55', '2025-10-30 23:32:55'),
(358, 123, 'action started via WP Cron', '2025-10-30 23:32:55', '2025-10-30 23:32:55'),
(359, 123, 'action complete via WP Cron', '2025-10-30 23:32:55', '2025-10-30 23:32:55'),
(360, 135, 'action created', '2025-10-30 23:32:55', '2025-10-30 23:32:55'),
(361, 124, 'action started via WP Cron', '2025-10-30 23:32:55', '2025-10-30 23:32:55'),
(362, 124, 'action complete via WP Cron', '2025-10-30 23:32:55', '2025-10-30 23:32:55'),
(363, 136, 'action created', '2025-10-30 23:32:55', '2025-10-30 23:32:55'),
(364, 126, 'action started via WP Cron', '2025-10-30 23:32:55', '2025-10-30 23:32:55'),
(365, 126, 'action complete via WP Cron', '2025-10-30 23:32:55', '2025-10-30 23:32:55'),
(366, 137, 'action created', '2025-10-30 23:32:55', '2025-10-30 23:32:55'),
(367, 138, 'action created', '2025-10-30 23:32:57', '2025-10-30 23:32:57'),
(368, 138, 'action started via Async Request', '2025-10-30 23:32:59', '2025-10-30 23:32:59'),
(369, 138, 'action complete via Async Request', '2025-10-30 23:32:59', '2025-10-30 23:32:59'),
(370, 133, 'action started via WP Cron', '2025-10-31 00:01:06', '2025-10-31 00:01:06'),
(371, 139, 'action created', '2025-10-31 00:01:06', '2025-10-31 00:01:06'),
(372, 133, 'action complete via WP Cron', '2025-10-31 00:01:06', '2025-10-31 00:01:06'),
(373, 139, 'action started via WP Cron', '2025-10-31 00:56:45', '2025-10-31 00:56:45'),
(374, 140, 'action created', '2025-10-31 00:56:45', '2025-10-31 00:56:45'),
(375, 139, 'action complete via WP Cron', '2025-10-31 00:56:45', '2025-10-31 00:56:45'),
(376, 140, 'action started via WP Cron', '2025-10-31 01:23:50', '2025-10-31 01:23:50'),
(377, 141, 'action created', '2025-10-31 01:23:50', '2025-10-31 01:23:50'),
(378, 140, 'action complete via WP Cron', '2025-10-31 01:23:50', '2025-10-31 01:23:50'),
(379, 141, 'action started via WP Cron', '2025-10-31 01:48:14', '2025-10-31 01:48:14'),
(380, 142, 'action created', '2025-10-31 01:48:14', '2025-10-31 01:48:14'),
(381, 141, 'action complete via WP Cron', '2025-10-31 01:48:14', '2025-10-31 01:48:14'),
(382, 142, 'action started via WP Cron', '2025-10-31 12:39:41', '2025-10-31 12:39:41'),
(383, 143, 'action created', '2025-10-31 12:39:41', '2025-10-31 12:39:41'),
(384, 142, 'action complete via WP Cron', '2025-10-31 12:39:41', '2025-10-31 12:39:41'),
(385, 143, 'action started via WP Cron', '2025-10-31 22:43:39', '2025-10-31 22:43:39'),
(386, 144, 'action created', '2025-10-31 22:43:39', '2025-10-31 22:43:39'),
(387, 143, 'action complete via WP Cron', '2025-10-31 22:43:39', '2025-10-31 22:43:39'),
(388, 144, 'action started via WP Cron', '2025-10-31 23:12:52', '2025-10-31 23:12:52'),
(389, 145, 'action created', '2025-10-31 23:12:52', '2025-10-31 23:12:52'),
(390, 144, 'action complete via WP Cron', '2025-10-31 23:12:52', '2025-10-31 23:12:52'),
(391, 145, 'action started via WP Cron', '2025-11-01 06:59:57', '2025-11-01 06:59:57'),
(392, 146, 'action created', '2025-11-01 06:59:57', '2025-11-01 06:59:57'),
(393, 145, 'action complete via WP Cron', '2025-11-01 06:59:57', '2025-11-01 06:59:57'),
(394, 134, 'action started via WP Cron', '2025-11-01 06:59:57', '2025-11-01 06:59:57'),
(395, 134, 'action complete via WP Cron', '2025-11-01 06:59:57', '2025-11-01 06:59:57'),
(396, 147, 'action created', '2025-11-01 06:59:57', '2025-11-01 06:59:57'),
(397, 135, 'action started via WP Cron', '2025-11-01 06:59:57', '2025-11-01 06:59:57'),
(398, 135, 'action complete via WP Cron', '2025-11-01 06:59:57', '2025-11-01 06:59:57'),
(399, 148, 'action created', '2025-11-01 06:59:57', '2025-11-01 06:59:57'),
(400, 136, 'action started via WP Cron', '2025-11-01 06:59:57', '2025-11-01 06:59:57'),
(401, 136, 'action complete via WP Cron', '2025-11-01 06:59:57', '2025-11-01 06:59:57'),
(402, 149, 'action created', '2025-11-01 06:59:58', '2025-11-01 06:59:58'),
(403, 137, 'action started via WP Cron', '2025-11-01 06:59:58', '2025-11-01 06:59:58'),
(404, 137, 'action complete via WP Cron', '2025-11-01 06:59:58', '2025-11-01 06:59:58'),
(405, 150, 'action created', '2025-11-01 06:59:58', '2025-11-01 06:59:58'),
(406, 146, 'action started via WP Cron', '2025-11-01 11:52:07', '2025-11-01 11:52:07'),
(407, 151, 'action created', '2025-11-01 11:52:07', '2025-11-01 11:52:07'),
(408, 146, 'action complete via WP Cron', '2025-11-01 11:52:07', '2025-11-01 11:52:07'),
(409, 152, 'action created', '2025-11-01 11:52:20', '2025-11-01 11:52:20'),
(410, 152, 'action started via Async Request', '2025-11-01 11:52:22', '2025-11-01 11:52:22'),
(411, 152, 'action complete via Async Request', '2025-11-01 11:52:22', '2025-11-01 11:52:22'),
(412, 151, 'action started via WP Cron', '2025-11-01 12:07:16', '2025-11-01 12:07:16'),
(413, 153, 'action created', '2025-11-01 12:07:16', '2025-11-01 12:07:16'),
(414, 151, 'action complete via WP Cron', '2025-11-01 12:07:16', '2025-11-01 12:07:16'),
(415, 154, 'action created', '2025-11-01 12:09:51', '2025-11-01 12:09:51'),
(416, 155, 'action created', '2025-11-01 12:12:39', '2025-11-01 12:12:39'),
(417, 154, 'action started via WP Cron', '2025-11-01 12:12:40', '2025-11-01 12:12:40'),
(418, 154, 'action failed via WP Cron: Scheduled action for aioseo_generate_llms_txt_single will not be executed as no callbacks are registered.', '2025-11-01 12:12:40', '2025-11-01 12:12:40'),
(419, 155, 'action started via WP Cron', '2025-11-01 12:13:51', '2025-11-01 12:13:51'),
(420, 155, 'action complete via WP Cron', '2025-11-01 12:13:51', '2025-11-01 12:13:51'),
(421, 153, 'action started via WP Cron', '2025-11-01 12:22:40', '2025-11-01 12:22:40'),
(422, 153, 'action failed via WP Cron: Scheduled action for aioseo_image_sitemap_scan will not be executed as no callbacks are registered.', '2025-11-01 12:22:40', '2025-11-01 12:22:40'),
(423, 156, 'action created', '2025-11-01 13:52:00', '2025-11-01 13:52:00'),
(424, 156, 'action started via WP Cron', '2025-11-01 13:53:39', '2025-11-01 13:53:39'),
(425, 156, 'action complete via WP Cron', '2025-11-01 13:53:39', '2025-11-01 13:53:39'),
(426, 147, 'action started via WP Cron', '2025-11-02 22:59:41', '2025-11-02 22:59:41'),
(427, 147, 'action failed via WP Cron: Scheduled action for aioseo_ai_update_credits will not be executed as no callbacks are registered.', '2025-11-02 22:59:41', '2025-11-02 22:59:41'),
(428, 157, 'action created', '2025-11-02 22:59:41', '2025-11-02 22:59:41'),
(429, 148, 'action started via WP Cron', '2025-11-02 22:59:41', '2025-11-02 22:59:41'),
(430, 148, 'action failed via WP Cron: Scheduled action for aioseo_cache_prune will not be executed as no callbacks are registered.', '2025-11-02 22:59:41', '2025-11-02 22:59:41'),
(431, 158, 'action created', '2025-11-02 22:59:41', '2025-11-02 22:59:41'),
(432, 149, 'action started via WP Cron', '2025-11-02 22:59:41', '2025-11-02 22:59:41'),
(433, 149, 'action failed via WP Cron: Scheduled action for aioseo_generate_llms_txt will not be executed as no callbacks are registered.', '2025-11-02 22:59:41', '2025-11-02 22:59:41'),
(434, 159, 'action created', '2025-11-02 22:59:41', '2025-11-02 22:59:41'),
(435, 150, 'action started via WP Cron', '2025-11-02 22:59:41', '2025-11-02 22:59:41'),
(436, 150, 'action complete via WP Cron', '2025-11-02 22:59:41', '2025-11-02 22:59:41'),
(437, 160, 'action created', '2025-11-02 22:59:41', '2025-11-02 22:59:41'),
(438, 161, 'action created', '2025-11-03 15:02:15', '2025-11-03 15:02:15'),
(439, 161, 'action started via WP Cron', '2025-11-03 15:03:18', '2025-11-03 15:03:18'),
(440, 161, 'action complete via WP Cron', '2025-11-03 15:03:18', '2025-11-03 15:03:18'),
(441, 162, 'action created', '2025-11-03 15:03:18', '2025-11-03 15:03:18'),
(442, 162, 'action started via WP Cron', '2025-11-03 15:04:41', '2025-11-03 15:04:41'),
(443, 162, 'action failed via WP Cron: Scheduled action for action_scheduler/migration_hook will not be executed as no callbacks are registered.', '2025-11-03 15:04:41', '2025-11-03 15:04:41'),
(444, 157, 'action started via WP Cron', '2025-11-04 00:24:38', '2025-11-04 00:24:38'),
(445, 157, 'action failed via WP Cron: Scheduled action for aioseo_ai_update_credits will not be executed as no callbacks are registered.', '2025-11-04 00:24:38', '2025-11-04 00:24:38'),
(446, 163, 'action created', '2025-11-04 00:24:38', '2025-11-04 00:24:38'),
(447, 158, 'action started via WP Cron', '2025-11-04 00:24:38', '2025-11-04 00:24:38'),
(448, 158, 'action failed via WP Cron: Scheduled action for aioseo_cache_prune will not be executed as no callbacks are registered.', '2025-11-04 00:24:38', '2025-11-04 00:24:38'),
(449, 164, 'action created', '2025-11-04 00:24:38', '2025-11-04 00:24:38'),
(450, 159, 'action started via WP Cron', '2025-11-04 00:24:38', '2025-11-04 00:24:38'),
(451, 159, 'action failed via WP Cron: Scheduled action for aioseo_generate_llms_txt will not be executed as no callbacks are registered.', '2025-11-04 00:24:38', '2025-11-04 00:24:38'),
(452, 165, 'action created', '2025-11-04 00:24:38', '2025-11-04 00:24:38'),
(453, 160, 'action started via WP Cron', '2025-11-04 00:24:38', '2025-11-04 00:24:38'),
(454, 160, 'action complete via WP Cron', '2025-11-04 00:24:38', '2025-11-04 00:24:38'),
(455, 166, 'action created', '2025-11-04 00:24:38', '2025-11-04 00:24:38'),
(456, 163, 'action started via WP Cron', '2025-11-05 23:13:46', '2025-11-05 23:13:46'),
(457, 163, 'action failed via WP Cron: Scheduled action for aioseo_ai_update_credits will not be executed as no callbacks are registered.', '2025-11-05 23:13:46', '2025-11-05 23:13:46'),
(458, 167, 'action created', '2025-11-05 23:13:46', '2025-11-05 23:13:46'),
(459, 164, 'action started via WP Cron', '2025-11-05 23:13:46', '2025-11-05 23:13:46'),
(460, 164, 'action failed via WP Cron: Scheduled action for aioseo_cache_prune will not be executed as no callbacks are registered.', '2025-11-05 23:13:46', '2025-11-05 23:13:46'),
(461, 168, 'action created', '2025-11-05 23:13:46', '2025-11-05 23:13:46'),
(462, 165, 'action started via WP Cron', '2025-11-05 23:13:46', '2025-11-05 23:13:46'),
(463, 165, 'action failed via WP Cron: Scheduled action for aioseo_generate_llms_txt will not be executed as no callbacks are registered.', '2025-11-05 23:13:46', '2025-11-05 23:13:46'),
(464, 169, 'action created', '2025-11-05 23:13:46', '2025-11-05 23:13:46'),
(465, 34, 'action started via WP Cron', '2025-11-05 23:13:46', '2025-11-05 23:13:46'),
(466, 34, 'action failed via WP Cron: Scheduled action for aioseo_report_summary will not be executed as no callbacks are registered.', '2025-11-05 23:13:46', '2025-11-05 23:13:46'),
(467, 170, 'action created', '2025-11-05 23:13:46', '2025-11-05 23:13:46'),
(468, 129, 'action started via WP Cron', '2025-11-05 23:13:46', '2025-11-05 23:13:46'),
(469, 129, 'action failed via WP Cron: Scheduled action for aioseo_send_usage_data will not be executed as no callbacks are registered.', '2025-11-05 23:13:46', '2025-11-05 23:13:46'),
(470, 171, 'action created', '2025-11-05 23:13:46', '2025-11-05 23:13:46'),
(471, 130, 'action started via WP Cron', '2025-11-05 23:13:46', '2025-11-05 23:13:46'),
(472, 130, 'action failed via WP Cron: Scheduled action for aioseo_report_summary will not be executed as no callbacks are registered.', '2025-11-05 23:13:46', '2025-11-05 23:13:46'),
(473, 172, 'action created', '2025-11-05 23:13:46', '2025-11-05 23:13:46'),
(474, 166, 'action started via WP Cron', '2025-11-05 23:13:46', '2025-11-05 23:13:46'),
(475, 166, 'action complete via WP Cron', '2025-11-05 23:13:46', '2025-11-05 23:13:46'),
(476, 173, 'action created', '2025-11-05 23:13:46', '2025-11-05 23:13:46'),
(477, 167, 'action started via WP Cron', '2025-11-07 00:08:23', '2025-11-07 00:08:23'),
(478, 167, 'action failed via WP Cron: Scheduled action for aioseo_ai_update_credits will not be executed as no callbacks are registered.', '2025-11-07 00:08:23', '2025-11-07 00:08:23'),
(479, 174, 'action created', '2025-11-07 00:08:23', '2025-11-07 00:08:23'),
(480, 168, 'action started via WP Cron', '2025-11-07 00:08:23', '2025-11-07 00:08:23'),
(481, 168, 'action failed via WP Cron: Scheduled action for aioseo_cache_prune will not be executed as no callbacks are registered.', '2025-11-07 00:08:23', '2025-11-07 00:08:23'),
(482, 175, 'action created', '2025-11-07 00:08:23', '2025-11-07 00:08:23'),
(483, 169, 'action started via WP Cron', '2025-11-07 00:08:23', '2025-11-07 00:08:23'),
(484, 169, 'action failed via WP Cron: Scheduled action for aioseo_generate_llms_txt will not be executed as no callbacks are registered.', '2025-11-07 00:08:23', '2025-11-07 00:08:23'),
(485, 176, 'action created', '2025-11-07 00:08:23', '2025-11-07 00:08:23'),
(486, 173, 'action started via WP Cron', '2025-11-07 00:08:23', '2025-11-07 00:08:23'),
(487, 173, 'action complete via WP Cron', '2025-11-07 00:08:23', '2025-11-07 00:08:23'),
(488, 177, 'action created', '2025-11-07 00:08:23', '2025-11-07 00:08:23'),
(489, 22, 'action started via WP Cron', '2025-11-07 10:17:24', '2025-11-07 10:17:24'),
(490, 22, 'action failed via WP Cron: Scheduled action for aioseo_email_reports_enable_reminder will not be executed as no callbacks are registered.', '2025-11-07 10:17:24', '2025-11-07 10:17:24'),
(491, 174, 'action started via WP Cron', '2025-11-08 03:31:29', '2025-11-08 03:31:29'),
(492, 174, 'action failed via WP Cron: Scheduled action for aioseo_ai_update_credits will not be executed as no callbacks are registered.', '2025-11-08 03:31:29', '2025-11-08 03:31:29'),
(493, 178, 'action created', '2025-11-08 03:31:29', '2025-11-08 03:31:29'),
(494, 175, 'action started via WP Cron', '2025-11-08 03:31:29', '2025-11-08 03:31:29'),
(495, 175, 'action failed via WP Cron: Scheduled action for aioseo_cache_prune will not be executed as no callbacks are registered.', '2025-11-08 03:31:29', '2025-11-08 03:31:29'),
(496, 179, 'action created', '2025-11-08 03:31:29', '2025-11-08 03:31:29'),
(497, 176, 'action started via WP Cron', '2025-11-08 03:31:29', '2025-11-08 03:31:29'),
(498, 176, 'action failed via WP Cron: Scheduled action for aioseo_generate_llms_txt will not be executed as no callbacks are registered.', '2025-11-08 03:31:29', '2025-11-08 03:31:29'),
(499, 180, 'action created', '2025-11-08 03:31:29', '2025-11-08 03:31:29'),
(500, 177, 'action started via WP Cron', '2025-11-08 03:31:29', '2025-11-08 03:31:29'),
(501, 177, 'action complete via WP Cron', '2025-11-08 03:31:29', '2025-11-08 03:31:29'),
(502, 181, 'action created', '2025-11-08 03:31:29', '2025-11-08 03:31:29'),
(503, 178, 'action started via WP Cron', '2025-11-09 03:56:00', '2025-11-09 03:56:00'),
(504, 178, 'action failed via WP Cron: Scheduled action for aioseo_ai_update_credits will not be executed as no callbacks are registered.', '2025-11-09 03:56:00', '2025-11-09 03:56:00'),
(505, 182, 'action created', '2025-11-09 03:56:00', '2025-11-09 03:56:00'),
(506, 179, 'action started via WP Cron', '2025-11-09 03:56:00', '2025-11-09 03:56:00'),
(507, 179, 'action failed via WP Cron: Scheduled action for aioseo_cache_prune will not be executed as no callbacks are registered.', '2025-11-09 03:56:00', '2025-11-09 03:56:00'),
(508, 183, 'action created', '2025-11-09 03:56:00', '2025-11-09 03:56:00'),
(509, 180, 'action started via WP Cron', '2025-11-09 03:56:00', '2025-11-09 03:56:00'),
(510, 180, 'action failed via WP Cron: Scheduled action for aioseo_generate_llms_txt will not be executed as no callbacks are registered.', '2025-11-09 03:56:00', '2025-11-09 03:56:00'),
(511, 184, 'action created', '2025-11-09 03:56:00', '2025-11-09 03:56:00'),
(512, 181, 'action started via WP Cron', '2025-11-09 03:56:00', '2025-11-09 03:56:00'),
(513, 181, 'action complete via WP Cron', '2025-11-09 03:56:00', '2025-11-09 03:56:00'),
(514, 185, 'action created', '2025-11-09 03:56:00', '2025-11-09 03:56:00'),
(515, 182, 'action started via WP Cron', '2025-11-10 22:44:46', '2025-11-10 22:44:46'),
(516, 182, 'action failed via WP Cron: Scheduled action for aioseo_ai_update_credits will not be executed as no callbacks are registered.', '2025-11-10 22:44:46', '2025-11-10 22:44:46'),
(517, 186, 'action created', '2025-11-10 22:44:46', '2025-11-10 22:44:46'),
(518, 183, 'action started via WP Cron', '2025-11-10 22:44:46', '2025-11-10 22:44:46'),
(519, 183, 'action failed via WP Cron: Scheduled action for aioseo_cache_prune will not be executed as no callbacks are registered.', '2025-11-10 22:44:46', '2025-11-10 22:44:46'),
(520, 187, 'action created', '2025-11-10 22:44:46', '2025-11-10 22:44:46'),
(521, 184, 'action started via WP Cron', '2025-11-10 22:44:46', '2025-11-10 22:44:46'),
(522, 184, 'action failed via WP Cron: Scheduled action for aioseo_generate_llms_txt will not be executed as no callbacks are registered.', '2025-11-10 22:44:46', '2025-11-10 22:44:46'),
(523, 188, 'action created', '2025-11-10 22:44:46', '2025-11-10 22:44:46'),
(524, 185, 'action started via WP Cron', '2025-11-10 22:44:46', '2025-11-10 22:44:46'),
(525, 185, 'action complete via WP Cron', '2025-11-10 22:44:46', '2025-11-10 22:44:46'),
(526, 189, 'action created', '2025-11-10 22:44:46', '2025-11-10 22:44:46'),
(527, 186, 'action started via WP Cron', '2025-11-11 23:34:38', '2025-11-11 23:34:38'),
(528, 186, 'action failed via WP Cron: Scheduled action for aioseo_ai_update_credits will not be executed as no callbacks are registered.', '2025-11-11 23:34:38', '2025-11-11 23:34:38'),
(529, 190, 'action created', '2025-11-11 23:34:38', '2025-11-11 23:34:38'),
(530, 187, 'action started via WP Cron', '2025-11-11 23:34:38', '2025-11-11 23:34:38'),
(531, 187, 'action failed via WP Cron: Scheduled action for aioseo_cache_prune will not be executed as no callbacks are registered.', '2025-11-11 23:34:38', '2025-11-11 23:34:38'),
(532, 191, 'action created', '2025-11-11 23:34:38', '2025-11-11 23:34:38'),
(533, 188, 'action started via WP Cron', '2025-11-11 23:34:38', '2025-11-11 23:34:38'),
(534, 188, 'action failed via WP Cron: Scheduled action for aioseo_generate_llms_txt will not be executed as no callbacks are registered.', '2025-11-11 23:34:38', '2025-11-11 23:34:38'),
(535, 192, 'action created', '2025-11-11 23:34:38', '2025-11-11 23:34:38'),
(536, 189, 'action started via WP Cron', '2025-11-11 23:34:38', '2025-11-11 23:34:38'),
(537, 189, 'action complete via WP Cron', '2025-11-11 23:34:38', '2025-11-11 23:34:38'),
(538, 193, 'action created', '2025-11-11 23:34:38', '2025-11-11 23:34:38'),
(539, 171, 'action started via WP Cron', '2025-11-12 23:39:20', '2025-11-12 23:39:20'),
(540, 171, 'action failed via WP Cron: Scheduled action for aioseo_send_usage_data will not be executed as no callbacks are registered.', '2025-11-12 23:39:20', '2025-11-12 23:39:20'),
(541, 194, 'action created', '2025-11-12 23:39:20', '2025-11-12 23:39:20'),
(542, 172, 'action started via WP Cron', '2025-11-12 23:39:20', '2025-11-12 23:39:20'),
(543, 172, 'action failed via WP Cron: Scheduled action for aioseo_report_summary will not be executed as no callbacks are registered.', '2025-11-12 23:39:20', '2025-11-12 23:39:20'),
(544, 195, 'action created', '2025-11-12 23:39:20', '2025-11-12 23:39:20'),
(545, 190, 'action started via WP Cron', '2025-11-12 23:39:20', '2025-11-12 23:39:20'),
(546, 190, 'action failed via WP Cron: Scheduled action for aioseo_ai_update_credits will not be executed as no callbacks are registered.', '2025-11-12 23:39:20', '2025-11-12 23:39:20'),
(547, 196, 'action created', '2025-11-12 23:39:20', '2025-11-12 23:39:20'),
(548, 191, 'action started via WP Cron', '2025-11-12 23:39:20', '2025-11-12 23:39:20'),
(549, 191, 'action failed via WP Cron: Scheduled action for aioseo_cache_prune will not be executed as no callbacks are registered.', '2025-11-12 23:39:20', '2025-11-12 23:39:20'),
(550, 197, 'action created', '2025-11-12 23:39:20', '2025-11-12 23:39:20'),
(551, 192, 'action started via WP Cron', '2025-11-12 23:39:20', '2025-11-12 23:39:20'),
(552, 192, 'action failed via WP Cron: Scheduled action for aioseo_generate_llms_txt will not be executed as no callbacks are registered.', '2025-11-12 23:39:20', '2025-11-12 23:39:20'),
(553, 198, 'action created', '2025-11-12 23:39:20', '2025-11-12 23:39:20'),
(554, 193, 'action started via WP Cron', '2025-11-12 23:39:20', '2025-11-12 23:39:20'),
(555, 193, 'action complete via WP Cron', '2025-11-12 23:39:20', '2025-11-12 23:39:20'),
(556, 199, 'action created', '2025-11-12 23:39:20', '2025-11-12 23:39:20'),
(557, 196, 'action started via WP Cron', '2025-11-13 23:41:59', '2025-11-13 23:41:59'),
(558, 196, 'action failed via WP Cron: Scheduled action for aioseo_ai_update_credits will not be executed as no callbacks are registered.', '2025-11-13 23:41:59', '2025-11-13 23:41:59'),
(559, 200, 'action created', '2025-11-13 23:41:59', '2025-11-13 23:41:59'),
(560, 197, 'action started via WP Cron', '2025-11-13 23:41:59', '2025-11-13 23:41:59'),
(561, 197, 'action failed via WP Cron: Scheduled action for aioseo_cache_prune will not be executed as no callbacks are registered.', '2025-11-13 23:41:59', '2025-11-13 23:41:59'),
(562, 201, 'action created', '2025-11-13 23:41:59', '2025-11-13 23:41:59'),
(563, 198, 'action started via WP Cron', '2025-11-13 23:41:59', '2025-11-13 23:41:59'),
(564, 198, 'action failed via WP Cron: Scheduled action for aioseo_generate_llms_txt will not be executed as no callbacks are registered.', '2025-11-13 23:41:59', '2025-11-13 23:41:59'),
(565, 202, 'action created', '2025-11-13 23:41:59', '2025-11-13 23:41:59'),
(566, 199, 'action started via WP Cron', '2025-11-13 23:41:59', '2025-11-13 23:41:59'),
(567, 199, 'action complete via WP Cron', '2025-11-13 23:41:59', '2025-11-13 23:41:59'),
(568, 203, 'action created', '2025-11-13 23:41:59', '2025-11-13 23:41:59'),
(569, 200, 'action started via WP Cron', '2025-11-14 23:44:40', '2025-11-14 23:44:40'),
(570, 200, 'action failed via WP Cron: Scheduled action for aioseo_ai_update_credits will not be executed as no callbacks are registered.', '2025-11-14 23:44:40', '2025-11-14 23:44:40'),
(571, 204, 'action created', '2025-11-14 23:44:40', '2025-11-14 23:44:40'),
(572, 201, 'action started via WP Cron', '2025-11-14 23:44:40', '2025-11-14 23:44:40'),
(573, 201, 'action failed via WP Cron: Scheduled action for aioseo_cache_prune will not be executed as no callbacks are registered.', '2025-11-14 23:44:40', '2025-11-14 23:44:40'),
(574, 205, 'action created', '2025-11-14 23:44:40', '2025-11-14 23:44:40'),
(575, 202, 'action started via WP Cron', '2025-11-14 23:44:40', '2025-11-14 23:44:40'),
(576, 202, 'action failed via WP Cron: Scheduled action for aioseo_generate_llms_txt will not be executed as no callbacks are registered.', '2025-11-14 23:44:40', '2025-11-14 23:44:40'),
(577, 206, 'action created', '2025-11-14 23:44:40', '2025-11-14 23:44:40'),
(578, 203, 'action started via WP Cron', '2025-11-14 23:44:40', '2025-11-14 23:44:40'),
(579, 203, 'action complete via WP Cron', '2025-11-14 23:44:40', '2025-11-14 23:44:40'),
(580, 207, 'action created', '2025-11-14 23:44:40', '2025-11-14 23:44:40'),
(581, 204, 'action started via WP Cron', '2025-11-16 17:54:51', '2025-11-16 17:54:51'),
(582, 204, 'action failed via WP Cron: Scheduled action for aioseo_ai_update_credits will not be executed as no callbacks are registered.', '2025-11-16 17:54:51', '2025-11-16 17:54:51'),
(583, 208, 'action created', '2025-11-16 17:54:51', '2025-11-16 17:54:51'),
(584, 205, 'action started via WP Cron', '2025-11-16 17:54:51', '2025-11-16 17:54:51'),
(585, 205, 'action failed via WP Cron: Scheduled action for aioseo_cache_prune will not be executed as no callbacks are registered.', '2025-11-16 17:54:51', '2025-11-16 17:54:51'),
(586, 209, 'action created', '2025-11-16 17:54:51', '2025-11-16 17:54:51'),
(587, 206, 'action started via WP Cron', '2025-11-16 17:54:51', '2025-11-16 17:54:51'),
(588, 206, 'action failed via WP Cron: Scheduled action for aioseo_generate_llms_txt will not be executed as no callbacks are registered.', '2025-11-16 17:54:51', '2025-11-16 17:54:51'),
(589, 210, 'action created', '2025-11-16 17:54:51', '2025-11-16 17:54:51'),
(590, 207, 'action started via WP Cron', '2025-11-16 17:54:51', '2025-11-16 17:54:51'),
(591, 207, 'action complete via WP Cron', '2025-11-16 17:54:51', '2025-11-16 17:54:51'),
(592, 211, 'action created', '2025-11-16 17:54:51', '2025-11-16 17:54:51');

-- --------------------------------------------------------

--
-- Table structure for table `abuhasdha_aioseo_cache`
--

CREATE TABLE `abuhasdha_aioseo_cache` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` varchar(80) NOT NULL,
  `value` longtext NOT NULL,
  `expiration` datetime DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `abuhasdha_aioseo_cache`
--

INSERT INTO `abuhasdha_aioseo_cache` (`id`, `key`, `value`, `expiration`, `created`, `updated`) VALUES
(3, 'admin_help_docs', 's:74143:\"{\"categories\":{\"getting-started\":\"Getting Started\",\"advanced-settings\":\"Advanced Settings\",\"display-settings\":\"Display Settings\",\"general-seo-topics\":\"General SEO Topics\",\"feature-manager\":\"Feature Manager\",\"installation\":\"Installation\"},\"docs\":{\"401534\":{\"title\":\"How to Generate Your SEO Email Reports\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-generate-your-seo-email-reports\\/\",\"categories\":[\"advanced-settings\",\"general-settings\",\"search-statistics\"]},\"389367\":{\"title\":\"Using the Keyword Rank Tracker feature in Search Statistics\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/using-the-keyword-rank-tracker-feature-in-search-statistics\\/\",\"categories\":[\"keyword-settings\",\"search-statistics\"]},\"379863\":{\"title\":\"Setting Vehicle (Car) Schema Markup in Your Content\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-vehicle-car-schema-markup-in-your-content\\/\",\"categories\":[\"schema-settings\"]},\"379713\":{\"title\":\"Setting Product Review Schema Markup in Your Content\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-product-review-schema-markup-in-your-content\\/\",\"categories\":[\"schema-settings\"]},\"332691\":{\"title\":\"Google Permissions for oAuth\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/google-permissions-for-the-aioseo-google-search-console-integration\\/\",\"categories\":[]},\"326862\":{\"title\":\"aioseo_user_profile_tab_allowed_user_ids\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_user_profile_tab_allowed_user_ids\\/\",\"categories\":[\"developer-documentation\",\"filter-hooks\"]},\"326858\":{\"title\":\"aioseo_import_yoast_seo_posts_per_action\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_import_yoast_seo_posts_per_action\\/\",\"categories\":[\"developer-documentation\",\"filter-hooks\"]},\"326856\":{\"title\":\"aioseo_import_seopress_posts_per_action\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_import_seopress_posts_per_action\\/\",\"categories\":[\"developer-documentation\",\"filter-hooks\"]},\"326850\":{\"title\":\"aioseo_import_rank_math_posts_per_action\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_import_rank_math_posts_per_action\\/\",\"categories\":[\"developer-documentation\",\"filter-hooks\"]},\"298356\":{\"title\":\"aioseo_redirects_log_skip\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_redirects_log_skip\\/\",\"categories\":[\"developer-documentation\",\"filter-hooks\"]},\"294047\":{\"title\":\"Using the Query Arg Monitoring in All in One SEO\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/using-the-query-arg-monitoring-in-all-in-one-seo\\/\",\"categories\":[\"advanced-settings\"]},\"279241\":{\"title\":\"How to Schedule a Redirect in All in One SEO\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-schedule-a-redirect-in-all-in-one-seo\\/\",\"categories\":[\"redirection-manager\"]},\"269732\":{\"title\":\"Displaying Detailed Author Information on Your Site\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/displaying-detailed-author-information-on-your-site\\/\",\"categories\":[\"author-seo\",\"content-blocks\"]},\"267254\":{\"title\":\"Adding Author SEO (E-E-A-T) to Your Site\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/adding-author-seo-e-e-a-t-to-your-site\\/\",\"categories\":[\"author-seo\"]},\"262344\":{\"title\":\"How to Get Your Images to Appear in Search Results\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-get-your-images-to-appear-in-search-results\\/\",\"categories\":[\"frequently-asked-questions\",\"general-seo-topics\",\"image-seo\"]},\"261932\":{\"title\":\"Sharing Content on Slack\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/sharing-content-on-slack\\/\",\"categories\":[\"social-networks\"]},\"261923\":{\"title\":\"Sharing Content on WhatsApp\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/sharing-content-on-whatsapp\\/\",\"categories\":[\"social-networks\"]},\"261517\":{\"title\":\"Importing Locations From Other Plugins\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/importing-locations-from-other-plugins\\/\",\"categories\":[\"importer-exporter\",\"local-business-seo\"]},\"244975\":{\"title\":\"Checking the Index Status of Content\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/checking-the-index-status-of-content\\/\",\"categories\":[\"post-page-settings\",\"search-statistics\"]},\"242346\":{\"title\":\"Using AIOSEO Details on the Posts Screen\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/using-aioseo-details-on-the-posts-screen\\/\",\"categories\":[\"category-tag-settings\",\"post-page-settings\"]},\"240583\":{\"title\":\"Setting WP_HOME and WP_SITEURL in the wp-config.php File\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-wp_home-and-wp_siteurl-in-the-wp-config-php-file\\/\",\"categories\":[\"troubleshooting\"]},\"240452\":{\"title\":\"Should I Use Meta Keywords?\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/should-i-use-meta-keywords\\/\",\"categories\":[\"frequently-asked-questions\",\"general-seo-topics\"]},\"235044\":{\"title\":\"Setting Cornerstone Content in All in One SEO\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/cornerstone-content\\/\",\"categories\":[\"link-assistant\",\"post-page-settings\"]},\"222363\":{\"title\":\"aioseo_get_post_id\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_get_post_id\\/\",\"categories\":[\"filter-hooks\"]},\"200603\":{\"title\":\"Viewing Detailed Search Statistics For Your Content\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/viewing-detailed-search-statistics-for-your-content\\/\",\"categories\":[\"search-statistics\"]},\"200304\":{\"title\":\"Tracking Changes to Your SEO Using SEO Revisions\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/tracking-changes-to-your-seo-using-seo-revisions\\/\",\"categories\":[\"seo-revisions\"]},\"188167\":{\"title\":\"WPCode Snippet Library\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/wpcode-snippet-library\\/\",\"categories\":[\"tools\"]},\"186946\":{\"title\":\"aioseo_hide_version_number\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_hide_version_number\\/\",\"categories\":[\"filter-hooks\"]},\"178887\":{\"title\":\"Setting the Primary Term for Breadcrumbs\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-the-primary-term-for-breadcrumbs\\/\",\"categories\":[\"breadcrumbs\"]},\"178727\":{\"title\":\"Using Broken Link Checker to Find and Fix Broken Links and Images\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/using-broken-link-checker-to-find-and-fix-broken-links-and-images\\/\",\"categories\":[\"broken-link-checker\"]},\"163922\":{\"title\":\"aioseo_schema_json_flags\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_schema_json_flags\\/\",\"categories\":[\"filter-hooks\"]},\"163519\":{\"title\":\"Using OpenAI to Generate SEO Titles and Meta Descriptions\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/using-openai-to-generate-seo-titles-and-meta-descriptions\\/\",\"categories\":[]},\"145363\":{\"title\":\"Using the Search Statistics in All in One SEO\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/using-the-search-statistics-in-all-in-one-seo\\/\",\"categories\":[\"google-search-console\",\"search-statistics\"]},\"145281\":{\"title\":\"Connecting Search Statistics to Google Search Console\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/connecting-search-statistics-to-google-search-console\\/\",\"categories\":[\"google-search-console\",\"search-statistics\"]},\"139798\":{\"title\":\"Checking Your SEO Using the SEO Preview\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/checking-your-seo-using-the-seo-preview\\/\",\"categories\":[\"facebook-settings\",\"post-page-settings\",\"seo-preview\",\"truseo\",\"twitter-settings\"]},\"136509\":{\"title\":\"aioseo_sitemap_lastmod_disable\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_sitemap_lastmod_disable\\/\",\"categories\":[\"filter-hooks\"]},\"135249\":{\"title\":\"aioseo_sitemap_rss\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_sitemap_rss\\/\",\"categories\":[\"filter-hooks\"]},\"133251\":{\"title\":\"aioseo_user_profile_tab_disable\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_user_profile_tab_disable\\/\",\"categories\":[\"filter-hooks\"]},\"131885\":{\"title\":\"Setting Web Page Schema Markup in Your Content\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-web-page-schema-markup-in-your-content\\/\",\"categories\":[\"schema-settings\"]},\"129515\":{\"title\":\"Editing the .htaccess file Using All in One SEO\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/editing-the-htaccess-file-using-all-in-one-seo\\/\",\"categories\":[\"file-editor\",\"tools\"]},\"124292\":{\"title\":\"Using the Emojis in Titles and Descriptions\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/using-the-emojis-in-titles-and-descriptions\\/\",\"categories\":[\"facebook-settings\",\"post-page-settings\",\"search-appearance\",\"social-networks\",\"twitter-settings\"]},\"123164\":{\"title\":\"Google Permissions for the AIOSEO Google Search Console Integration\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/google-permissions-for-oauth\\/\",\"categories\":[\"google-search-console\",\"search-statistics\"]},\"112137\":{\"title\":\"Setting the Schema Type for Individual Content\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-the-schema-type-for-individual-content\\/\",\"categories\":[\"schema-settings\"]},\"112145\":{\"title\":\"Configuring the Schema Settings in All in One SEO\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/configuring-the-schema-settings-in-all-in-one-seo\\/\",\"categories\":[\"schema-settings\"]},\"112153\":{\"title\":\"A Guide to Schema.org Markup for Rich Snippets\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/a-guide-to-schema-org-markup-for-rich-snippets\\/\",\"categories\":[\"schema-settings\"]},\"112438\":{\"title\":\"Creating Reusable Schema Templates in All in One SEO\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/creating-reusable-schema-templates-in-all-in-one-seo\\/\",\"categories\":[\"schema-settings\"]},\"112428\":{\"title\":\"Creating Custom Schema Markup with All in One SEO\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/creating-custom-schema-markup-with-all-in-one-seo\\/\",\"categories\":[\"schema-settings\"]},\"112889\":{\"title\":\"Setting Event Schema Markup in Your Content\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-event-schema-markup-in-your-content\\/\",\"categories\":[\"schema-settings\"]},\"112735\":{\"title\":\"Setting Dataset Schema Markup in Your Content\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-dataset-schema-markup-in-your-content\\/\",\"categories\":[\"schema-settings\"]},\"112711\":{\"title\":\"Setting Article Schema Markup in Your Content\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-article-schema-markup-in-your-content\\/\",\"categories\":[\"schema-settings\"]},\"112164\":{\"title\":\"Setting Course Schema Markup in Your Content\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-course-schema-markup-in-your-content\\/\",\"categories\":[\"schema-settings\"]},\"112933\":{\"title\":\"Setting Job Posting Schema Markup in Your Content\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-job-posting-schema-markup-in-your-content\\/\",\"categories\":[\"schema-settings\"]},\"112926\":{\"title\":\"Setting How-To Schema Markup in Your Content\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-how-to-schema-markup-in-your-content\\/\",\"categories\":[\"schema-settings\"]},\"112916\":{\"title\":\"Setting Fact Check Schema Markup in Your Content\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-fact-check-schema-markup-in-your-content\\/\",\"categories\":[\"schema-settings\"]},\"112727\":{\"title\":\"Setting Book Schema Markup in Your Content\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-book-schema-markup-in-your-content\\/\",\"categories\":[\"schema-settings\"]},\"112243\":{\"title\":\"Setting FAQ Schema Markup in Your Content\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-faq-page-schema-markup-in-your-content\\/\",\"categories\":[\"schema-settings\"]},\"112958\":{\"title\":\"Setting Service Schema Markup in Your Content\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-service-schema-markup-in-your-content\\/\",\"categories\":[\"schema-settings\"]},\"112949\":{\"title\":\"Setting Person Schema Markup in Your Content\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-person-schema-markup-in-your-content\\/\",\"categories\":[\"schema-settings\"]},\"112944\":{\"title\":\"Setting Music Schema Markup in Your Content\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-music-schema-markup-in-your-content\\/\",\"categories\":[\"schema-settings\"]},\"112941\":{\"title\":\"Setting Movie Schema Markup in Your Content\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-movie-schema-markup-in-your-content\\/\",\"categories\":[\"schema-settings\"]},\"112212\":{\"title\":\"Setting Recipe Schema Markup in Your Content\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-recipe-schema-markup-in-your-content\\/\",\"categories\":[\"schema-settings\"]},\"112962\":{\"title\":\"Setting Video Schema Markup in Your Content\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-video-schema-markup-in-your-content\\/\",\"categories\":[\"schema-settings\"]},\"112403\":{\"title\":\"Testing Your Schema in All in One SEO\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/testing-your-schema-in-all-in-one-seo\\/\",\"categories\":[\"schema-settings\"]},\"112226\":{\"title\":\"Setting Software Application Schema Markup in Your Content\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-software-application-schema-markup-in-your-content\\/\",\"categories\":[\"schema-settings\"]},\"112197\":{\"title\":\"Setting Product Schema Markup in Your Content\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-product-schema-markup-in-your-content\\/\",\"categories\":[\"schema-settings\"]},\"119555\":{\"title\":\"How to Use the AIOSEO Feature Manager on a Multisite Network\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-use-the-aioseo-feature-manager-on-a-multisite-network\\/\",\"categories\":[\"feature-manager\",\"multisite-networks\"]},\"119550\":{\"title\":\"How to Reset the AIOSEO Site Settings on a Multisite Network\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-reset-the-aioseo-site-settings-on-a-multisite-network\\/\",\"categories\":[\"multisite-networks\",\"network-tools\"]},\"119543\":{\"title\":\"How to Backup and Restore AIOSEO Site Settings on a Multisite Network\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-backup-and-restore-aioseo-site-settings-on-a-multisite-network\\/\",\"categories\":[\"multisite-networks\",\"network-tools\"]},\"119531\":{\"title\":\"How to Import Settings from Other Plugins on a Multisite Network\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-import-settings-from-other-plugins-on-a-multisite-network\\/\",\"categories\":[\"multisite-networks\",\"network-tools\"]},\"119519\":{\"title\":\"How to Import and Export AIOSEO Settings and Meta Data on a Multisite Network\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-import-and-export-aioseo-settings-and-meta-data-on-a-multisite-network\\/\",\"categories\":[\"multisite-networks\",\"network-tools\"]},\"119497\":{\"title\":\"How to Add Your AIOSEO License Key on a WordPress Multisite Network\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-add-your-aioseo-license-key-on-a-wordpress-multisite-network\\/\",\"categories\":[\"multisite-networks\",\"network-settings\"]},\"111476\":{\"title\":\"Displaying a List of Locations on Your Site\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/displaying-a-list-of-locations-on-your-site\\/\",\"categories\":[\"content-blocks\",\"local-business-seo\"]},\"111473\":{\"title\":\"Displaying Your Business Location Information on Your Site\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/displaying-your-business-location-information-on-your-site\\/\",\"categories\":[\"content-blocks\",\"local-business-seo\"]},\"111459\":{\"title\":\"Displaying Opening Hours on Your Site\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/displaying-opening-hours-on-your-site\\/\",\"categories\":[\"content-blocks\",\"local-business-seo\"]},\"111455\":{\"title\":\"Adding a Map of Your Location to Your Site\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/adding-a-map-of-your-location-to-your-site\\/\",\"categories\":[\"content-blocks\",\"local-business-seo\"]},\"111450\":{\"title\":\"Adding Breadcrumbs to Your Site Using the AIOSEO Breadcrumbs Block\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/adding-breadcrumbs-to-your-site-using-the-aioseo-breadcrumbs-block\\/\",\"categories\":[\"breadcrumbs\",\"content-blocks\"]},\"109878\":{\"title\":\"Adding a Redirect When You Delete Content\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/adding-a-redirect-when-you-delete-content\\/\",\"categories\":[\"redirection-manager\"]},\"109829\":{\"title\":\"Redirecting 404 Content Not Found Using All in One SEO\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/redirecting-404-content-not-found-using-all-in-one-seo\\/\",\"categories\":[\"redirection-manager\"]},\"109916\":{\"title\":\"Using the Image SEO Features in All in One SEO\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/using-the-image-seo-features-in-all-in-one-seo\\/\",\"categories\":[\"image-seo\"]},\"104857\":{\"title\":\"Adding a Table of Contents to Your Site Using All in One SEO\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/adding-a-table-of-contents-to-your-site-using-all-in-one-seo\\/\",\"categories\":[\"content-blocks\"]},\"104616\":{\"title\":\"Adding FAQs to Your Site Using All in One SEO\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/adding-faqs-to-your-site-using-all-in-one-seo\\/\",\"categories\":[\"content-blocks\"]},\"104595\":{\"title\":\"Automatic Redirects When Changing the Post Slug\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/automatic-redirects-when-changing-the-post-slug\\/\",\"categories\":[\"redirection-manager\"]},\"103415\":{\"title\":\"Removing Published Date from Article Schema\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/removing-published-date-from-article-schema\\/\",\"categories\":[\"developer-documentation\"]},\"101250\":{\"title\":\"Outputting AIOSEO\'s data in the HEAD without using wp_head()\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/outputting-aioseos-data-in-the-head-without-using-wp_head\\/\",\"categories\":[\"developer-documentation\"]},\"100154\":{\"title\":\"Automatic Redirects When You Delete Content\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/automatic-redirects-when-you-delete-content\\/\",\"categories\":[\"redirection-manager\"]},\"98532\":{\"title\":\"Localizing AIOSEO Data via the Translations API\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/localizing-aioseo-data-via-the-translations-api\\/\",\"categories\":[\"developer-documentation\"]},\"98576\":{\"title\":\"aioseo_sitemap_term\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_sitemap_term\\/\",\"categories\":[\"filter-hooks\"]},\"98575\":{\"title\":\"aioseo_sitemap_post\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_sitemap_post\\/\",\"categories\":[\"filter-hooks\"]},\"98566\":{\"title\":\"aioseo_save_term\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_save_term\\/\",\"categories\":[\"filter-hooks\"]},\"98565\":{\"title\":\"aioseo_save_post\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_save_post\\/\",\"categories\":[\"filter-hooks\"]},\"98557\":{\"title\":\"aioseo_get_term\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_get_term\\/\",\"categories\":[\"filter-hooks\"]},\"98554\":{\"title\":\"aioseo_get_post\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_get_post\\/\",\"categories\":[\"filter-hooks\"]},\"93967\":{\"title\":\"Importing URLs into the XML Sitemap\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/importing-urls-into-the-xml-sitemap\\/\",\"categories\":[\"xml-sitemap\"]},\"93822\":{\"title\":\"How to Use Crawl Cleanup to Increase Search Engine Crawl Quota\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/crawl-cleanup-best-practices\\/\",\"categories\":[\"advanced-settings\"]},\"90584\":{\"title\":\"How to Add a Temporary Administrator Login to Your Site\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-add-a-temporary-administrator-login-to-your-site\\/\",\"categories\":[\"frequently-asked-questions\",\"troubleshooting\"]},\"88927\":{\"title\":\"Dashboard Widgets in All in One SEO\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/dashboard-widgets-in-all-in-one-seo\\/\",\"categories\":[\"dashboard\"]},\"86198\":{\"title\":\"How to Strip the Category Base in WordPress\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-strip-the-category-base-in-wordpress\\/\",\"categories\":[\"category-tag-settings\"]},\"84322\":{\"title\":\"Running shortcodes in All in One SEO\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/running-shortcodes\\/\",\"categories\":[\"advanced-settings\"]},\"84156\":{\"title\":\"Translating Your SEO with WPML\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/translating-your-seo-with-wpml\\/\",\"categories\":[\"post-page-settings\"]},\"80219\":{\"title\":\"How to Verify Your Site with Microsoft Clarity\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-verify-your-site-with-microsoft-clarity\\/\",\"categories\":[\"webmaster-tools\"]},\"79928\":{\"title\":\"How to Handle Issues With Installing All in One SEO Pro\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-handle-issues-with-installing-all-in-one-seo-pro\\/\",\"categories\":[\"installation\"]},\"79149\":{\"title\":\"Fetching &amp; Updating AIOSEO Data via the WordPress REST API\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/fetching-updating-aioseo-data-via-the-wordpress-rest-api\\/\",\"categories\":[\"developer-documentation\",\"rest-api\"]},\"77593\":{\"title\":\"How To Fix JavaScript Errors\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-fix-javascript-errors\\/\",\"categories\":[\"troubleshooting\"]},\"77589\":{\"title\":\"Browser Support Policy\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/browser-support-policy\\/\",\"categories\":[\"frequently-asked-questions\"]},\"75143\":{\"title\":\"How to Redirect a Post from the Edit Post Screen\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-redirect-a-post-from-the-edit-post-screen\\/\",\"categories\":[\"post-page-settings\",\"redirection-manager\"]},\"75686\":{\"title\":\"Preventing the Modified Date for Content from Changing\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/preventing-the-modified-date-for-content-from-changing\\/\",\"categories\":[\"post-page-settings\"]},\"73002\":{\"title\":\"Page Builder Integrations\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/page-builder-integrations\\/\",\"categories\":[\"home-page-settings\",\"post-page-settings\",\"third-party-integrations\",\"truseo\"]},\"73003\":{\"title\":\"Integrating with IndexNow to Instantly Re-index Your Content\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/integrating-with-indexnow-to-instantly-re-index-your-content\\/\",\"categories\":[\"indexnow\",\"webmaster-tools\"]},\"72711\":{\"title\":\"aioseo_page_builder_integration_disable\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_page_builder_integration_disable\\/\",\"categories\":[\"filter-hooks\"]},\"68444\":{\"title\":\"An Introduction to Link Assistant \\u2014 The Easy Way to Manage Onsite Links\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/introduction-to-link-assistant\\/\",\"categories\":[\"link-assistant\"]},\"69559\":{\"title\":\"Using the Link Assistant in All in One SEO Pro\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/link-assistant\\/\",\"categories\":[\"link-assistant\"]},\"69594\":{\"title\":\"Internal Links in the Links Report in Link Assistant\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/internal-links-in-the-links-report-in-link-assistant\\/\",\"categories\":[\"link-assistant\"]},\"69596\":{\"title\":\"External Links in the Links Report in Link Assistant\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/external-links-in-the-links-report-in-link-assistant\\/\",\"categories\":[\"link-assistant\"]},\"69921\":{\"title\":\"Link Suggestions in the Links Report in Link Assistant\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/link-suggestions-in-the-links-report-in-link-assistant\\/\",\"categories\":[\"link-assistant\"]},\"69602\":{\"title\":\"Affiliate Links in the Links Report in Link Assistant\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/affiliate-links-in-the-links-report-in-link-assistant\\/\",\"categories\":[\"link-assistant\"]},\"69761\":{\"title\":\"Using the Domains Report in Link Assistant\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/using-the-domains-report-in-link-assistant\\/\",\"categories\":[\"link-assistant\"]},\"69770\":{\"title\":\"Link Assistant Settings\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/link-assistant-settings\\/\",\"categories\":[\"link-assistant\"]},\"68431\":{\"title\":\"aioseo_sitemap_images\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_sitemap_images\\/\",\"categories\":[\"filter-hooks\"]},\"66833\":{\"title\":\"Why Is N\\/A Displayed Instead of a Score For My Content?\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/why-is-na-displayed-instead-of-a-score-for-my-content\\/\",\"categories\":[\"frequently-asked-questions\",\"truseo\"]},\"18824\":{\"title\":\"Local Business SEO for a Single Location\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/local-business-seo-for-a-single-location\\/\",\"categories\":[\"local-business-seo\",\"schema-settings\"]},\"35828\":{\"title\":\"Local Business SEO for Multiple Locations\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/local-business-seo-for-multiple-locations\\/\",\"categories\":[\"local-business-seo\"]},\"58476\":{\"title\":\"aioseo_public_taxonomies\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_public_taxonomies\\/\",\"categories\":[\"filter-hooks\"]},\"58475\":{\"title\":\"aioseo_public_post_types\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_public_post_types\\/\",\"categories\":[\"filter-hooks\"]},\"64776\":{\"title\":\"How Long Does it Take For My Content to Appear on Google?\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-long-does-it-take-for-my-content-to-appear-on-google\\/\",\"categories\":[\"frequently-asked-questions\"]},\"35926\":{\"title\":\"Adding a Location in Local SEO Addon\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/adding-a-location-in-local-seo-addon\\/\",\"categories\":[\"local-business-seo\"]},\"61020\":{\"title\":\"How to Display a Favicon in Search Results\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-display-a-favicon-in-search-results\\/\",\"categories\":[\"frequently-asked-questions\",\"general-seo-topics\"]},\"35956\":{\"title\":\"Displaying Locations on Your Site\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/displaying-locations-on-your-site\\/\",\"categories\":[\"local-business-seo\"]},\"56330\":{\"title\":\"aioseo_sitemap_indexes\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_sitemap_indexes\\/\",\"categories\":[\"filter-hooks\"]},\"56011\":{\"title\":\"Redirect Manager - Configuration Reload\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/redirect-manager-configuration-reload\\/\",\"categories\":[\"redirection-manager\"]},\"52689\":{\"title\":\"aioseo_flyout_menu_enable\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_flyout_menu_disable\\/\",\"categories\":[\"filter-hooks\"]},\"45698\":{\"title\":\"Displaying your Business Information and Star Ratings on a Map\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/using-places-on-your-maps\\/\",\"categories\":[\"local-business-seo\"]},\"49268\":{\"title\":\"aioseo_access_control_excluded_roles\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_access_control_excluded_roles\\/\",\"categories\":[\"filter-hooks\"]},\"44555\":{\"title\":\"Setting up Google Maps for Local SEO\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-up-google-maps\\/\",\"categories\":[\"local-business-seo\"]},\"48189\":{\"title\":\"How to Create an HTML Sitemap\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/html-sitemap\\/\",\"categories\":[\"html-sitemap\"]},\"48365\":{\"title\":\"Using a Widget to Display Your HTML Sitemap\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/using-a-widget-to-display-your-html-sitemap\\/\",\"categories\":[\"html-sitemap\"]},\"48361\":{\"title\":\"Using PHP Code to Display Your HTML Sitemap\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/function-html-sitemap\\/\",\"categories\":[\"html-sitemap\"]},\"48260\":{\"title\":\"Using a Block to Display Your HTML Sitemap\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/using-a-block-to-display-your-html-sitemap\\/\",\"categories\":[\"content-blocks\",\"html-sitemap\"]},\"48222\":{\"title\":\"aioseo_breadcrumbs_separator_symbol\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_breadcrumbs_separator_symbol\\/\",\"categories\":[\"filter-hooks\"]},\"48227\":{\"title\":\"aioseo_breadcrumbs_template\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_breadcrumbs_template\\/\",\"categories\":[\"filter-hooks\"]},\"48231\":{\"title\":\"aioseo_breadcrumbs_trail\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_breadcrumbs_trail\\/\",\"categories\":[\"filter-hooks\"]},\"48232\":{\"title\":\"aioseo_breadcrumbs_link_current_item\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_breadcrumbs_link_current_item\\/\",\"categories\":[\"filter-hooks\"]},\"48233\":{\"title\":\"aioseo_breadcrumbs_show_current_item\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_breadcrumbs_show_current_item\\/\",\"categories\":[\"filter-hooks\"]},\"48219\":{\"title\":\"aioseo_breadcrumbs_output\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_breadcrumbs_output\\/\",\"categories\":[\"filter-hooks\"]},\"48223\":{\"title\":\"aioseo_breadcrumbs_separator\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_breadcrumbs_separator\\/\",\"categories\":[\"filter-hooks\"]},\"48238\":{\"title\":\"Using a Shortcode to Display Your HTML Sitemap\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/shortcode-html-sitemap\\/\",\"categories\":[\"html-sitemap\"]},\"45805\":{\"title\":\"aioseo_sitemap_exclude_terms\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_sitemap_exclude_terms\\/\",\"categories\":[\"filter-hooks\"]},\"45804\":{\"title\":\"aioseo_sitemap_exclude_posts\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_sitemap_exclude_posts\\/\",\"categories\":[\"filter-hooks\"]},\"61002\":{\"title\":\"How to Create a Google Maps API Key\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-create-a-google-maps-api-key\\/\",\"categories\":[\"local-business-seo\"]},\"45528\":{\"title\":\"aioseo_schema_output\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_schema_output\\/\",\"categories\":[\"filter-hooks\"]},\"42995\":{\"title\":\"Using the Headline Analyzer in All in One SEO\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/using-the-headline-analyzer-in-all-in-one-seo\\/\",\"categories\":[\"headline-analyzer\"]},\"42683\":{\"title\":\"How to Perform a Full Site Redirect\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/full-site-redirects\\/\",\"categories\":[\"redirection-manager\"]},\"50988\":{\"title\":\"Displaying Maps on Your Site\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/displaying-maps-on-your-site\\/\",\"categories\":[\"local-business-seo\"]},\"42999\":{\"title\":\"How to Disable the Headline Analyzer\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-disable-the-headline-analyzer\\/\",\"categories\":[\"advanced-settings\",\"headline-analyzer\"]},\"42975\":{\"title\":\"Installing Addons for All in One SEO Pro\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/installing-addons-for-all-in-one-seo-pro\\/\",\"categories\":[\"installation\"]},\"42854\":{\"title\":\"Creating a Pass Through Redirect\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/creating-a-pass-through-redirect\\/\",\"categories\":[\"redirection-manager\"]},\"41800\":{\"title\":\"Using Custom Rules in the Redirection Manager\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/redirection-manager-custom-rules\\/\",\"categories\":[\"redirection-manager\"]},\"42224\":{\"title\":\"Resetting the Settings in All in One SEO\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/resetting-the-settings-in-all-in-one-seo\\/\",\"categories\":[\"database-tools\",\"tools\"]},\"41884\":{\"title\":\"Setting the Site Name for Facebook\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-the-site-name-for-facebook\\/\",\"categories\":[\"facebook-settings\",\"social-networks\"]},\"41862\":{\"title\":\"How to Get Google to Display the Sitelinks Search Box\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-get-google-to-display-the-sitelinks-search-box\\/\",\"categories\":[\"schema-settings\"]},\"41851\":{\"title\":\"Setting the SEO Title and Description Format for the Search Results Page\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-the-seo-title-and-description-format-for-the-search-results-page\\/\",\"categories\":[\"content-type-settings\",\"search-appearance\"]},\"41811\":{\"title\":\"SEO Analysis Unable to Connect to Your Site\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/seo-analysis-unable-to-connect-to-your-site\\/\",\"categories\":[\"seo-analysis\",\"troubleshooting\"]},\"41280\":{\"title\":\"How to Renew Your AIOSEO License\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-renew-your-aioseo-license\\/\",\"categories\":[\"frequently-asked-questions\",\"getting-started\"]},\"41077\":{\"title\":\"Update WordPress: WordPress Versions Supported by AIOSEO\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/update-wordpress\\/\",\"categories\":[\"troubleshooting\"]},\"40587\":{\"title\":\"How to Open the Browser Error Console\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-open-the-browser-error-console\\/\",\"categories\":[\"troubleshooting\"]},\"40582\":{\"title\":\"How to Enable Debugging in WordPress\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-enable-debugging-in-wordpress\\/\",\"categories\":[\"troubleshooting\"]},\"40148\":{\"title\":\"What is TruSEO?\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/what-is-truseo\\/\",\"categories\":[\"frequently-asked-questions\",\"truseo\"]},\"39494\":{\"title\":\"Redirecting Attachment Pages\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/redirecting-attachment-pages\\/\",\"categories\":[\"media-settings\",\"search-appearance\"]},\"66310\":{\"title\":\"Selecting the Google Maps APIs to use with All in One SEO\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/selecting-the-google-maps-apis-to-use-with-all-in-one-seo\\/\",\"categories\":[\"local-business-seo\"]},\"38915\":{\"title\":\"Setting Up and Using Breadcrumbs Templates\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-up-and-using-breadcrumbs-templates\\/\",\"categories\":[\"breadcrumbs\"]},\"38610\":{\"title\":\"Displaying Breadcrumbs On Your Site\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/displaying-breadcrumbs-on-your-site\\/\",\"categories\":[\"breadcrumbs\"]},\"36048\":{\"title\":\"Function: aioseo_breadcrumbs()\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/function-aioseo_breadcrumbs\\/\",\"categories\":[\"breadcrumbs\"]},\"36047\":{\"title\":\"Shortcode: [aioseo_breadcrumbs]\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/shortcode-aioseo_breadcrumbs\\/\",\"categories\":[\"breadcrumbs\"]},\"38240\":{\"title\":\"aioseo_social_image_ignore_cover_block\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_social_image_ignore_cover_block\\/\",\"categories\":[\"filter-hooks\"]},\"34923\":{\"title\":\"How to Redirect a Post or Page in All in One SEO\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-redirect-a-post-or-page-in-all-in-one-seo\\/\",\"categories\":[\"redirection-manager\"]},\"34977\":{\"title\":\"How to Redirect Multiple URLs to the Same Destination\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-redirect-multiple-urls-to-the-same-destination\\/\",\"categories\":[\"redirection-manager\"]},\"35604\":{\"title\":\"Automatic Redirects When URLs Change in Content\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/automatic-redirects-when-urls-change-in-content\\/\",\"categories\":[\"redirection-manager\"]},\"31460\":{\"title\":\"Enhanced Search Query Conflict\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/enhanced-search-query-conflict\\/\",\"categories\":[\"local-business-seo\"]},\"30850\":{\"title\":\"aioseo_local_business_info_email_icon\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_local_business_info_email_icon\\/\",\"categories\":[\"filter-hooks\"]},\"30839\":{\"title\":\"aioseo_local_business_info_location_icon\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_local_business_info_location_icon\\/\",\"categories\":[\"filter-hooks\"]},\"30759\":{\"title\":\"aioseo_local_business_output_business_info_instance\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_local_business_output_business_info_instance\\/\",\"categories\":[\"filter-hooks\"]},\"30760\":{\"title\":\"aioseo_local_business_output_business_info_location_data\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_local_business_output_business_info_location_data\\/\",\"categories\":[\"filter-hooks\"]},\"30765\":{\"title\":\"aioseo_local_business_output_opening_hours_instance\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_local_business_output_opening_hours_instance\\/\",\"categories\":[\"filter-hooks\"]},\"30766\":{\"title\":\"aioseo_local_business_output_opening_hours_data\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_local_business_output_opening_hours_data\\/\",\"categories\":[\"filter-hooks\"]},\"30849\":{\"title\":\"aioseo_local_business_info_phone_icon\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_local_business_info_phone_icon\\/\",\"categories\":[\"filter-hooks\"]},\"30851\":{\"title\":\"aioseo_local_business_opening_hours_icon\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_local_business_opening_hours_icon\\/\",\"categories\":[\"filter-hooks\"]},\"30398\":{\"title\":\"aioseo_local_business_post_type_name\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_local_business_post_type_name\\/\",\"categories\":[\"filter-hooks\"]},\"30551\":{\"title\":\"aioseo_local_business_post_type_slug\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_local_business_post_type_slug\\/\",\"categories\":[\"filter-hooks\"]},\"30556\":{\"title\":\"aioseo_local_business_post_type_single_label\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_local_business_post_type_single_label\\/\",\"categories\":[\"filter-hooks\"]},\"30559\":{\"title\":\"aioseo_local_business_post_type_plural_label\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_local_business_post_type_plural_label\\/\",\"categories\":[\"filter-hooks\"]},\"30560\":{\"title\":\"aioseo_local_business_post_type\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_local_business_post_type\\/\",\"categories\":[\"filter-hooks\"]},\"30563\":{\"title\":\"aioseo_local_business_taxonomy_name\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_local_business_taxonomy_name\\/\",\"categories\":[\"filter-hooks\"]},\"30564\":{\"title\":\"aioseo_local_business_taxonomy_slug\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_local_business_taxonomy_slug\\/\",\"categories\":[\"filter-hooks\"]},\"35609\":{\"title\":\"Choosing Which Redirect Type to Use\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/choosing-which-redirect-type-to-use\\/\",\"categories\":[\"redirection-manager\"]},\"35599\":{\"title\":\"Importing Redirects From Other Plugins\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/importing-redirects-from-other-plugins\\/\",\"categories\":[\"redirection-manager\"]},\"35588\":{\"title\":\"Exporting and Importing Redirects\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/exporting-and-importing-redirects\\/\",\"categories\":[\"redirection-manager\"]},\"35579\":{\"title\":\"Logging 404 Errors in All in One SEO\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/logging-404-errors-in-all-in-one-seo\\/\",\"categories\":[\"redirection-manager\"]},\"35552\":{\"title\":\"Logging Redirects in All in One SEO\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/logging-redirects-in-all-in-one-seo\\/\",\"categories\":[\"redirection-manager\"]},\"35570\":{\"title\":\"Redirect GDPR Privacy Information\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/redirect-gdpr-privacy-information\\/\",\"categories\":[\"redirection-manager\"]},\"30863\":{\"title\":\"Local Business SEO - Template overrides\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/local-business-seo-template-overrides\\/\",\"categories\":[\"local-business-seo\"]},\"35133\":{\"title\":\"aioseo_twitter_tags\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_twitter_tags\\/\",\"categories\":[\"filter-hooks\"]},\"35132\":{\"title\":\"aioseo_facebook_tags\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_facebook_tags\\/\",\"categories\":[\"filter-hooks\"]},\"34993\":{\"title\":\"Ignoring Case Sensitivity in Redirects\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/ignoring-case-sensitivity-in-redirects\\/\",\"categories\":[\"redirection-manager\"]},\"34983\":{\"title\":\"Ignoring the Trailing Slash in Redirects\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/ignoring-the-trailing-slash-in-redirects\\/\",\"categories\":[\"redirection-manager\"]},\"36104\":{\"title\":\"Using Query Parameters With Redirects\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/using-query-parameters-with-redirects\\/\",\"categories\":[\"redirection-manager\"]},\"30565\":{\"title\":\"aioseo_local_business_taxonomy\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_local_business_taxonomy\\/\",\"categories\":[\"filter-hooks\"]},\"36115\":{\"title\":\"Caching of Redirects in the Browser\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/caching-of-redirects-in-the-browser\\/\",\"categories\":[\"redirection-manager\"]},\"34701\":{\"title\":\"Adding WooCommerce Product Attributes to SEO Title or Description\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/adding-woocommerce-product-attributes-to-seo-title-or-description\\/\",\"categories\":[\"post-page-settings\",\"search-appearance\",\"woocommerce\"]},\"36111\":{\"title\":\"Selecting the Redirect Method in Redirects\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/selecting-the-redirect-method-in-redirects\\/\",\"categories\":[\"redirection-manager\"]},\"40115\":{\"title\":\"Redirect Manager Cannot Detect Your Server\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/redirect-manager-unknown-web-server\\/\",\"categories\":[\"redirection-manager\"]},\"36369\":{\"title\":\"Using Regex in the Redirection Manager\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/redirect-manager-regex\\/\",\"categories\":[\"redirection-manager\"]},\"31442\":{\"title\":\"Shortcode: [aioseo_local_opening_hours]\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/shortcode-aioseo_local_opening_hours\\/\",\"categories\":[\"local-business-seo\"]},\"31443\":{\"title\":\"Shortcode: [aioseo_local_locations]\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/shortcode-aioseo_local_locations\\/\",\"categories\":[\"local-business-seo\"]},\"34179\":{\"title\":\"Using the Smart Tags in Titles and Descriptions\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/using-the-smart-tags-in-titles-and-descriptions\\/\",\"categories\":[\"post-page-settings\",\"search-appearance\"]},\"31441\":{\"title\":\"Shortcode: [aioseo_local_business_info]\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/shortcode-aioseo_local_business_info\\/\",\"categories\":[\"local-business-seo\"]},\"46122\":{\"title\":\"Shortcode: [aioseo_local_map]\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/shortcode-aioseo_local_map\\/\",\"categories\":[\"local-business-seo\"]},\"33507\":{\"title\":\"What\'s The Difference Between TruSEO and Page Analysis?\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/whats-the-difference-between-truseo-and-page-analysis\\/\",\"categories\":[\"frequently-asked-questions\",\"post-page-settings\",\"truseo\"]},\"33310\":{\"title\":\"Setting Noindex for RSS Feeds\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-noindex-for-rss-feeds\\/\",\"categories\":[\"advanced-settings\",\"search-appearance\"]},\"33130\":{\"title\":\"aioseo_disable_shortcode_parsing\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_disable_shortcode_parsing\\/\",\"categories\":[\"filter-hooks\"]},\"32085\":{\"title\":\"aioseo_conflicting_shortcodes\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_conflicting_shortcodes\\/\",\"categories\":[\"filter-hooks\"]},\"31992\":{\"title\":\"aioseo_schema_graphs\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_schema_graphs\\/\",\"categories\":[\"filter-hooks\"]},\"31589\":{\"title\":\"Understanding the TruSEO Page Analysis Recommendations\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/understanding-the-truseo-page-analysis-recommendations\\/\",\"categories\":[\"post-page-settings\",\"truseo\"]},\"31456\":{\"title\":\"Function: aioseo_local_locations()\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/function-aioseo_local_locations\\/\",\"categories\":[\"local-business-seo\"]},\"31455\":{\"title\":\"Function: aioseo_local_opening_hours()\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/function-aioseo_local_opening_hours\\/\",\"categories\":[\"local-business-seo\"]},\"31451\":{\"title\":\"Function: aioseo_local_business_info()\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/function-aioseo_local_business_info\\/\",\"categories\":[\"local-business-seo\"]},\"46123\":{\"title\":\"Function: aioseo_local_map()\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/function-aioseo_local_map\\/\",\"categories\":[\"local-business-seo\"]},\"31042\":{\"title\":\"Getting Keyphrase Suggestions From Semrush\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/getting-keyphrase-suggestions-from-semrush\\/\",\"categories\":[\"post-page-settings\",\"truseo\"]},\"30773\":{\"title\":\"aioseo_local_business_address_tag_value\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_local_business_address_tag_value\\/\",\"categories\":[\"filter-hooks\"]},\"30770\":{\"title\":\"aioseo_local_business_address_tags\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_local_business_address_tags\\/\",\"categories\":[\"filter-hooks\"]},\"30752\":{\"title\":\"aioseo_local_business_get_location\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_local_business_get_location\\/\",\"categories\":[\"filter-hooks\"]},\"30728\":{\"title\":\"Unable to Save Settings Due to Cloudflare Firewall Rules\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/unable-to-save-settings-due-to-cloudflare-firewall-rules\\/\",\"categories\":[\"troubleshooting\"]},\"30318\":{\"title\":\"aioseo_flush_output_buffer\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_flush_output_buffer\\/\",\"categories\":[\"filter-hooks\"]},\"18813\":{\"title\":\"Installing All in One SEO Pro\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/installing-all-in-one-seo-pro\\/\",\"categories\":[\"getting-started\",\"installation\"]},\"18973\":{\"title\":\"Beginners Guide for All in One SEO\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/quick-start-guide\\/\",\"categories\":[\"getting-started\"]},\"18820\":{\"title\":\"Setting the SEO Title and Description for Your Content\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-the-seo-title-and-description-for-your-content\\/\",\"categories\":[\"getting-started\",\"post-page-settings\"]},\"18902\":{\"title\":\"How to Create an XML Sitemap\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-create-an-xml-sitemap\\/\",\"categories\":[\"getting-started\",\"xml-sitemap\"]},\"18859\":{\"title\":\"Beginners Guide to Social Networks Settings for Facebook\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/beginners-guide-to-social-networks-settings-for-facebook\\/\",\"categories\":[\"facebook-settings\",\"getting-started\",\"social-networks\"]},\"18857\":{\"title\":\"Beginners Guide to Social Networks Settings for Twitter\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/beginners-guide-to-social-networks-settings-for-twitter\\/\",\"categories\":[\"getting-started\",\"social-networks\",\"twitter-settings\"]},\"29991\":{\"title\":\"aioseo_disable_link_format\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_disable_link_format\\/\",\"categories\":[\"filter-hooks\"]},\"27841\":{\"title\":\"aioseo_thumbnail_size\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_thumbnail_size\\/\",\"categories\":[\"filter-hooks\"]},\"27844\":{\"title\":\"Displaying Additional Data for Written By and Reading Time\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/displaying-additional-data-for-written-by-and-reading-time\\/\",\"categories\":[\"social-networks\"]},\"27494\":{\"title\":\"aioseo_meta_views\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_meta_views\\/\",\"categories\":[\"filter-hooks\"]},\"27363\":{\"title\":\"Using the SEO Analysis Tool\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/using-the-seo-analysis-tool\\/\",\"categories\":[\"seo-analysis\"]},\"27272\":{\"title\":\"Importing Settings From Other Plugins\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/importing-settings-from-other-plugins\\/\",\"categories\":[\"importer-exporter\",\"seo-data-importer\",\"tools\"]},\"27268\":{\"title\":\"Backing Up and Restoring AIOSEO Settings\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/backing-up-and-restoring-aioseo-settings\\/\",\"categories\":[\"importer-exporter\",\"tools\"]},\"27259\":{\"title\":\"Importing and Exporting AIOSEO Settings and Meta Data\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/importing-and-exporting-aioseo-settings-and-meta-data\\/\",\"categories\":[\"importer-exporter\",\"tools\"]},\"26450\":{\"title\":\"Blank Title Formats Have Been Detected\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/blank-title-formats-detected\\/\",\"categories\":[\"troubleshooting\"]},\"25802\":{\"title\":\"aioseo_sitemap_additional_pages\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_sitemap_additional_pages\\/\",\"categories\":[\"filter-hooks\"]},\"24928\":{\"title\":\"Including Custom Fields in the TruSEO Page Analysis\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/including-custom-fields-in-the-seo-page-analysis\\/\",\"categories\":[\"content-type-settings\",\"search-appearance\",\"truseo\"]},\"24285\":{\"title\":\"aioseo_prev_link\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_prev_link\\/\",\"categories\":[\"filter-hooks\"]},\"24284\":{\"title\":\"aioseo_next_link\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_next_link\\/\",\"categories\":[\"filter-hooks\"]},\"23717\":{\"title\":\"aioseo_canonical_url\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_canonical_url\\/\",\"categories\":[\"filter-hooks\"]},\"23604\":{\"title\":\"aioseo_schema_breadcrumbs_home\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_schema_breadcrumbs_home\\/\",\"categories\":[\"filter-hooks\"]},\"23448\":{\"title\":\"aioseo_schema_disable\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_schema_disable\\/\",\"categories\":[\"filter-hooks\"]},\"23447\":{\"title\":\"aioseo_robots_meta\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_robots_meta\\/\",\"categories\":[\"filter-hooks\"]},\"23446\":{\"title\":\"aioseo_disable\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_disable\\/\",\"categories\":[\"filter-hooks\"]},\"23438\":{\"title\":\"aioseo_disable_title_rewrites\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_disable_title_rewrites\\/\",\"categories\":[\"filter-hooks\"]},\"23437\":{\"title\":\"aioseo_post_metabox_priority\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_post_metabox_priority\\/\",\"categories\":[\"filter-hooks\"]},\"23436\":{\"title\":\"aioseo_show_seo_news\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_show_seo_news\\/\",\"categories\":[\"filter-hooks\"]},\"23433\":{\"title\":\"aioseo_show_in_admin_bar\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_show_in_admin_bar\\/\",\"categories\":[\"filter-hooks\"]},\"23423\":{\"title\":\"aioseo_keywords\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_keywords\\/\",\"categories\":[\"filter-hooks\"]},\"23350\":{\"title\":\"aioseo_title\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_title\\/\",\"categories\":[\"filter-hooks\"]},\"23351\":{\"title\":\"aioseo_description\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo_description\\/\",\"categories\":[\"filter-hooks\"]},\"23415\":{\"title\":\"Troubleshooting Action Scheduler issues with AIOSEO\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/troubleshooting-action-scheduler-issues\\/\",\"categories\":[\"troubleshooting\"]},\"20504\":{\"title\":\"Where Did my SEO Keywords go in All in One SEO v4.0?\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/where-did-my-seo-keywords-go-in-all-in-one-seo-v4-0\\/\",\"categories\":[\"advanced-settings\",\"frequently-asked-questions\",\"post-page-settings\",\"search-appearance\"]},\"18792\":{\"title\":\"Sitemap rewrite rules for NGINX\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/xml-sitemap-rewrite-rules-for-nginx\\/\",\"categories\":[\"rss-sitemap\",\"video-sitemap\",\"xml-sitemap\"]},\"18793\":{\"title\":\"Unfiltered HTML Capability is Required\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/unfiltered-html-capability\\/\",\"categories\":[\"troubleshooting\"]},\"18794\":{\"title\":\"Deprecated Open Graph Settings in All in One SEO version 4.0\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/deprecated-opengraph-settings\\/\",\"categories\":[\"social-networks\"]},\"18795\":{\"title\":\"Why does the character counter for SEO titles show a different count?\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/why-does-the-character-counter-for-seo-titles-show-a-different-count\\/\",\"categories\":[\"frequently-asked-questions\",\"post-page-settings\"]},\"18796\":{\"title\":\"Adding nofollow, sponsored, UGC and title attributes to links\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/adding-nofollow-sponsored-and-title-attributes-to-links\\/\",\"categories\":[\"post-page-settings\"]},\"18797\":{\"title\":\"Setting the SEO for WooCommerce Content\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-the-seo-for-woocommerce-content\\/\",\"categories\":[\"search-appearance\",\"woocommerce\"]},\"18798\":{\"title\":\"All in One SEO uses the WordPress REST API\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/aioseo-uses-rest-api\\/\",\"categories\":[\"frequently-asked-questions\"]},\"18799\":{\"title\":\"How to Remove All Settings and Data When you Uninstall All in One SEO\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-remove-all-settings-and-data-when-you-uninstall-all-in-one-seo\\/\",\"categories\":[\"advanced-settings\",\"general-settings\"]},\"18800\":{\"title\":\"How to Disable TruSEO Content Analysis\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-disable-truseo-content-analysis\\/\",\"categories\":[\"advanced-settings\",\"general-settings\",\"truseo\"]},\"18801\":{\"title\":\"Enabling Automatic Updates for All in One SEO\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/enabling-automatic-updates-for-all-in-one-seo\\/\",\"categories\":[\"advanced-settings\",\"general-settings\"]},\"18802\":{\"title\":\"Hiding Plugin Notifications in the Notifications Center\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/hiding-plugin-notifications-in-the-notifications-center\\/\",\"categories\":[\"advanced-settings\",\"general-settings\"]},\"18803\":{\"title\":\"How to Hide the AIOSEO Settings on the Edit Content Screens in WordPress\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-hide-the-aioseo-settings-on-the-edit-content-screens-in-wordpress\\/\",\"categories\":[\"advanced-settings\",\"content-type-settings\",\"post-page-settings\",\"search-appearance\"]},\"18804\":{\"title\":\"Setting Noindex and Nofollow on Paginated Content\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-noindex-and-nofollow-on-paginated-content\\/\",\"categories\":[\"advanced-settings\",\"search-appearance\"]},\"18805\":{\"title\":\"Setting Unique SEO Titles and Descriptions for Paginated Content\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-unique-seo-titles-and-descriptions-for-paginated-content\\/\",\"categories\":[\"advanced-settings\",\"search-appearance\"]},\"18806\":{\"title\":\"Setting the SEO Title and Description Format for Custom Post Type Archives\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-the-seo-title-and-description-format-for-custom-post-type-archives\\/\",\"categories\":[\"archive-settings\",\"search-appearance\"]},\"18807\":{\"title\":\"Meta Keyword Settings in All in One SEO\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/keyword-settings\\/\",\"categories\":[\"advanced-settings\",\"search-appearance\"]},\"18808\":{\"title\":\"Using the Quick Edit Feature in All in One SEO\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/using-the-quick-edit-feature-in-all-in-one-seo\\/\",\"categories\":[\"post-page-settings\"]},\"18809\":{\"title\":\"How to FTP to your web server\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-ftp-to-your-web-server\\/\",\"categories\":[\"frequently-asked-questions\"]},\"18810\":{\"title\":\"How to manually install All in One SEO Pro when the file is too big\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-manually-install-all-in-one-seo-pro-when-the-file-is-too-big\\/\",\"categories\":[\"frequently-asked-questions\",\"installation\"]},\"18811\":{\"title\":\"How to Upgrade From All in One SEO Lite to Pro\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-upgrade-from-all-in-one-seo-lite-to-pro\\/\",\"categories\":[\"getting-started\",\"installation\"]},\"18812\":{\"title\":\"Installation instructions for WordPress.com Users\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/installation-instructions-for-wordpress-com-users\\/\",\"categories\":[\"installation\"]},\"18814\":{\"title\":\"Configuring the Twitter Settings for Your Content\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/configuring-the-twitter-settings-for-your-content\\/\",\"categories\":[\"post-page-settings\",\"social-networks\",\"twitter-settings\"]},\"18815\":{\"title\":\"Configuring the Facebook Settings for Your Content\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/configuring-the-facebook-settings-for-your-content\\/\",\"categories\":[\"facebook-settings\",\"post-page-settings\",\"social-networks\"]},\"18816\":{\"title\":\"Hiding the AIOSEO Column on Taxonomy Screens\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/hiding-the-aioseo-column-on-taxonomy-screens\\/\",\"categories\":[\"advanced-settings\",\"category-tag-settings\",\"general-settings\"]},\"18818\":{\"title\":\"Setting the Sitemap Priority and Frequency for Individual Content\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-the-sitemap-priority-and-frequency-for-individual-content\\/\",\"categories\":[\"post-page-settings\",\"xml-sitemap\"]},\"18819\":{\"title\":\"Setting the Robots Meta for Individual Content\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-the-robots-meta-for-individual-content\\/\",\"categories\":[\"post-page-settings\"]},\"18821\":{\"title\":\"Individual Post\\/Page Settings\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/post-settings\\/\",\"categories\":[\"post-page-settings\"]},\"18822\":{\"title\":\"Bad Bot Blocker\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/bad-bot-blocker\\/\",\"categories\":[\"bad-bot-blocker\"]},\"18823\":{\"title\":\"How to Fix a 404 Error When Viewing Your Sitemap\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-fix-a-404-error-when-viewing-your-sitemap\\/\",\"categories\":[\"frequently-asked-questions\",\"google-news-sitemap\",\"rss-sitemap\",\"troubleshooting\",\"video-sitemap\",\"xml-sitemap\"]},\"18825\":{\"title\":\"When to use NOINDEX or the robots.txt?\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/when-to-use-noindex-or-the-robots-txt\\/\",\"categories\":[\"frequently-asked-questions\",\"robots-txt\",\"search-appearance\",\"tools\"]},\"18826\":{\"title\":\"Support for Videos Embedded Using the Media Library\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/support-for-videos-embedded-using-the-media-library\\/\",\"categories\":[\"video-sitemap\"]},\"18827\":{\"title\":\"Supported Videos\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/supported-videos\\/\",\"categories\":[\"video-sitemap\"]},\"18828\":{\"title\":\"Performance Settings\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/performance-settings\\/\",\"categories\":[\"performance\"]},\"18830\":{\"title\":\"Setting the SEO Title and Description Format for Author and Date Archives\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-the-seo-title-and-description-format-for-author-and-date-archives\\/\",\"categories\":[\"archive-settings\",\"search-appearance\"]},\"18831\":{\"title\":\"Using Custom Fields in Titles and Descriptions\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/custom-fields-in-titles-and-descriptions\\/\",\"categories\":[\"content-type-settings\",\"post-page-settings\",\"search-appearance\"]},\"18832\":{\"title\":\"Using the Focus Keyphrase to Analyze Your Content\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/using-the-focus-keyphrase-to-analyze-your-content\\/\",\"categories\":[\"frequently-asked-questions\",\"post-page-settings\",\"truseo\"]},\"18833\":{\"title\":\"Using the Robots.txt Tool in All in One SEO\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/using-the-robots-txt-tool-in-all-in-one-seo\\/\",\"categories\":[\"robots-txt\",\"tools\"]},\"18834\":{\"title\":\"Using the Robots Meta Settings in All in One SEO\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/using-the-robots-meta-settings-in-all-in-one-seo\\/\",\"categories\":[\"advanced-settings\",\"archive-settings\",\"category-tag-settings\",\"content-type-settings\",\"media-settings\",\"post-page-settings\",\"search-appearance\",\"taxonomy-settings\"]},\"18835\":{\"title\":\"Noindex Settings\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/noindex-settings\\/\",\"categories\":[\"search-appearance\"]},\"18838\":{\"title\":\"Hiding the AIOSEO Admin Bar Menu\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/hiding-the-aioseo-admin-bar-menu\\/\",\"categories\":[\"advanced-settings\",\"general-settings\"]},\"18839\":{\"title\":\"Hiding the AIOSEO Dashboard Widgets\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/hiding-the-aioseo-dashboard-widget\\/\",\"categories\":[\"advanced-settings\",\"general-settings\"]},\"18840\":{\"title\":\"Hiding the AIOSEO Column on All Posts Screens\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/hiding-the-aioseo-column-on-all-posts-screens\\/\",\"categories\":[\"advanced-settings\",\"general-settings\"]},\"18841\":{\"title\":\"Display Settings\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/display-settings\\/\",\"categories\":[\"display-settings\"]},\"18842\":{\"title\":\"Setting the SEO Title and Description Format for Media Attachments\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-the-seo-title-and-description-format-for-media-attachments\\/\",\"categories\":[\"media-settings\",\"search-appearance\"]},\"18843\":{\"title\":\"Showing or Hiding Your Content in Search Results\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/showing-or-hiding-your-content-in-search-results\\/\",\"categories\":[\"archive-settings\",\"category-tag-settings\",\"content-type-settings\",\"media-settings\",\"post-page-settings\",\"search-appearance\",\"taxonomy-settings\"]},\"18844\":{\"title\":\"Content Type Settings\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/custom-post-type-settings\\/\",\"categories\":[\"content-type-settings\",\"search-appearance\"]},\"18845\":{\"title\":\"What Are Media Attachments and Should I Submit Them to Search Engines?\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/what-are-media-attachments-and-should-i-submit-them-to-search-engines\\/\",\"categories\":[\"frequently-asked-questions\",\"media-settings\"]},\"18846\":{\"title\":\"Setting the SEO Title and Description Format for Custom Taxonomies\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-the-seo-title-and-description-format-for-custom-taxonomies\\/\",\"categories\":[\"category-tag-settings\",\"search-appearance\",\"taxonomy-settings\"]},\"18847\":{\"title\":\"Setting the SEO Title and Description Format for Custom Post Types\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-the-seo-title-and-description-format-for-custom-post-types\\/\",\"categories\":[\"content-type-settings\",\"search-appearance\"]},\"18848\":{\"title\":\"Setting the SEO Title and Description Format for Tags\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-the-seo-title-and-description-format-for-tags\\/\",\"categories\":[\"category-tag-settings\",\"search-appearance\",\"taxonomy-settings\"]},\"18849\":{\"title\":\"Setting the SEO Title and Description Format for Categories\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-the-seo-title-and-description-format-for-categories\\/\",\"categories\":[\"category-tag-settings\",\"search-appearance\",\"taxonomy-settings\"]},\"18850\":{\"title\":\"Setting the SEO Title and Description Format for Pages\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-the-seo-title-and-description-format-for-pages\\/\",\"categories\":[\"content-type-settings\",\"post-page-settings\",\"search-appearance\"]},\"18851\":{\"title\":\"Setting the SEO Title and Description Format for Posts\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-the-seo-title-and-description-format-for-posts\\/\",\"categories\":[\"content-type-settings\",\"post-page-settings\",\"search-appearance\"]},\"18852\":{\"title\":\"Title Settings\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/title-settings\\/\",\"categories\":[\"search-appearance\"]},\"18853\":{\"title\":\"Setting the SEO for Your Home Page\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-the-seo-for-your-home-page\\/\",\"categories\":[\"home-page-settings\",\"search-appearance\"]},\"18854\":{\"title\":\"General Settings\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/general-settings\\/\",\"categories\":[\"general-settings\"]},\"18855\":{\"title\":\"How to Add Your License Key for All in One SEO Pro\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-add-your-license-key-in-all-in-one-seo-pro\\/\",\"categories\":[\"general-settings\",\"getting-started\"]},\"18856\":{\"title\":\"Canonical URLs in All in One SEO\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/canonical-urls-in-all-in-one-seo\\/\",\"categories\":[\"advanced-settings\",\"search-appearance\"]},\"18858\":{\"title\":\"Adding non-WordPress Content to the Video Sitemap\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/adding-non-wordpress-content-to-the-video-sitemap\\/\",\"categories\":[\"video-sitemap\"]},\"18860\":{\"title\":\"Troubleshooting Problems With Sharing Content on Twitter\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/troubleshooting-problems-with-sharing-content-on-twitter\\/\",\"categories\":[\"social-networks\",\"troubleshooting\",\"twitter-settings\"]},\"18861\":{\"title\":\"Troubleshooting Problems With Sharing Content on Facebook\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/troubleshooting-problems-with-sharing-content-on-facebook\\/\",\"categories\":[\"facebook-settings\",\"social-networks\",\"troubleshooting\"]},\"18862\":{\"title\":\"Getting Started With Pinterest Rich Pins\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/using-social-meta-for-pinterest-rich-pins\\/\",\"categories\":[\"pinterest-settings\",\"social-networks\"]},\"18863\":{\"title\":\"Setting the Content Publisher for Twitter\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-the-content-publisher-for-twitter\\/\",\"categories\":[\"social-networks\",\"twitter-settings\"]},\"18865\":{\"title\":\"Submitting a Sitemap to Yandex\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/submitting-a-sitemap-to-yandex\\/\",\"categories\":[\"rss-sitemap\",\"video-sitemap\",\"xml-sitemap\"]},\"18866\":{\"title\":\"Submitting a Sitemap to Bing\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/submitting-a-sitemap-to-bing\\/\",\"categories\":[\"bing-webmaster-tools\",\"rss-sitemap\",\"video-sitemap\",\"xml-sitemap\"]},\"18867\":{\"title\":\"Submitting a Sitemap to Google\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/submitting-a-sitemap-to-google\\/\",\"categories\":[\"google-news-sitemap\",\"google-search-console\",\"rss-sitemap\",\"video-sitemap\",\"xml-sitemap\"]},\"18868\":{\"title\":\"Including Date and Author Archives in Your XML Sitemap\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/including-date-and-author-archives-in-your-xml-sitemap\\/\",\"categories\":[\"xml-sitemap\"]},\"18869\":{\"title\":\"Choosing Which Content to Include in Your Video Sitemap\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/choosing-which-content-to-include-in-your-video-sitemap\\/\",\"categories\":[\"video-sitemap\"]},\"18870\":{\"title\":\"Choosing Which Content to Include in Your XML Sitemap\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/choosing-which-content-to-include-in-your-xml-sitemap\\/\",\"categories\":[\"xml-sitemap\"]},\"18871\":{\"title\":\"Using Sitemap Indexes and Pagination\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/using-sitemap-indexes-and-pagination\\/\",\"categories\":[\"video-sitemap\",\"xml-sitemap\"]},\"18872\":{\"title\":\"How to Disable Sitemaps in All in One SEO\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-disable-sitemaps-in-all-in-one-seo\\/\",\"categories\":[\"google-news-sitemap\",\"rss-sitemap\",\"video-sitemap\",\"xml-sitemap\"]},\"18873\":{\"title\":\"Baidu Webmaster Tools Verification\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/baidu-webmaster-tools-verification\\/\",\"categories\":[\"webmaster-tools\",\"webmaster-verification\"]},\"18874\":{\"title\":\"Setting Twitter Social Meta for Your Homepage\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-twitter-social-meta-for-your-homepage\\/\",\"categories\":[\"home-page-settings\",\"social-networks\",\"twitter-settings\"]},\"18875\":{\"title\":\"Setting Facebook Social Meta for Your Homepage\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-facebook-social-meta-for-your-homepage\\/\",\"categories\":[\"facebook-settings\",\"home-page-settings\",\"social-networks\"]},\"18876\":{\"title\":\"Setting the Card Type for Twitter\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-the-card-type-for-twitter\\/\",\"categories\":[\"social-networks\",\"twitter-settings\"]},\"18877\":{\"title\":\"Setting the Object Types for Facebook\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-the-object-types-for-facebook\\/\",\"categories\":[\"facebook-settings\",\"social-networks\"]},\"18879\":{\"title\":\"Setting the Priority and Frequency for Content in the Video Sitemap\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-the-priority-and-frequency-for-content-in-the-video-sitemap\\/\",\"categories\":[\"video-sitemap\"]},\"18880\":{\"title\":\"Setting the Priority and Frequency for Content in the XML Sitemap\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-the-priority-and-frequency-for-content-in-the-xml-sitemap\\/\",\"categories\":[\"xml-sitemap\"]},\"18881\":{\"title\":\"How to Exclude Content from Your RSS Sitemap\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-exclude-content-from-your-rss-sitemap\\/\",\"categories\":[\"rss-sitemap\"]},\"18882\":{\"title\":\"How to Exclude Content from Your Google News Sitemap\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-exclude-content-from-your-google-news-sitemap\\/\",\"categories\":[\"google-news-sitemap\"]},\"18883\":{\"title\":\"How to Exclude Content from Your Video Sitemap\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-exclude-content-from-your-video-sitemap\\/\",\"categories\":[\"video-sitemap\"]},\"18884\":{\"title\":\"How to Exclude Content from Your XML Sitemap\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-exclude-content-from-your-xml-sitemap\\/\",\"categories\":[\"xml-sitemap\"]},\"18885\":{\"title\":\"Setting Article Tags for Facebook\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-article-tags-for-facebook\\/\",\"categories\":[\"facebook-settings\",\"social-networks\"]},\"18886\":{\"title\":\"Setting the Content Author for Twitter\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-the-content-author-for-twitter\\/\",\"categories\":[\"social-networks\",\"twitter-settings\"]},\"18887\":{\"title\":\"Setting the Content Author for Facebook\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-the-content-author-for-facebook\\/\",\"categories\":[\"facebook-settings\",\"social-networks\"]},\"18888\":{\"title\":\"Setting the Content Publisher for Facebook\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-the-content-publisher-for-facebook\\/\",\"categories\":[\"facebook-settings\",\"social-networks\"]},\"18889\":{\"title\":\"How to Create a Google News Sitemap\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-create-a-google-news-sitemap\\/\",\"categories\":[\"google-news-sitemap\"]},\"18890\":{\"title\":\"Including Videos in Custom Fields in Your Video Sitemap\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/including-videos-in-custom-fields-in-your-video-sitemap\\/\",\"categories\":[\"video-sitemap\"]},\"18891\":{\"title\":\"What is a Dynamically Generated Sitemap and Why is it Better to Use?\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/what-is-a-dynamically-generated-sitemap-and-why-is-it-better-to-use\\/\",\"categories\":[\"frequently-asked-questions\",\"video-sitemap\",\"xml-sitemap\"]},\"18892\":{\"title\":\"How to Create a Video Sitemap\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-create-a-video-sitemap\\/\",\"categories\":[\"video-sitemap\"]},\"18893\":{\"title\":\"Adding Your Facebook Admin ID\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/adding-your-facebook-admin-id\\/\",\"categories\":[\"facebook-settings\",\"social-networks\"]},\"18894\":{\"title\":\"Adding Your Facebook App ID\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/adding-your-facebook-app-id\\/\",\"categories\":[\"facebook-settings\",\"social-networks\"]},\"18895\":{\"title\":\"Access Control Settings\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/access-control-settings\\/\",\"categories\":[\"access-control-settings\"]},\"18896\":{\"title\":\"Advanced Settings for Google Analytics\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/advanced-settings-for-google-analytics\\/\",\"categories\":[\"google-analytics\"]},\"18897\":{\"title\":\"Miscellaneous Site Verification\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/miscellaneous-site-verification\\/\",\"categories\":[\"webmaster-tools\",\"webmaster-verification\"]},\"18898\":{\"title\":\"Displaying Your Social Media Profiles in Knowledge Panel\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/displaying-your-social-media-profiles-in-knowledge-panel\\/\",\"categories\":[\"schema-settings\",\"social-networks\"]},\"18899\":{\"title\":\"How to Create an RSS Sitemap\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-create-an-rss-sitemap\\/\",\"categories\":[\"rss-sitemap\"]},\"18900\":{\"title\":\"Excluding Images from the XML Sitemap\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/excluding-images-from-the-xml-sitemap\\/\",\"categories\":[\"xml-sitemap\"]},\"18901\":{\"title\":\"Adding non-WordPress Content to the XML Sitemap\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/adding-non-wordpress-content-to-the-xml-sitemap\\/\",\"categories\":[\"xml-sitemap\"]},\"18903\":{\"title\":\"Setting a Default Image for Twitter\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-a-default-image-for-twitter\\/\",\"categories\":[\"social-networks\",\"twitter-settings\"]},\"18904\":{\"title\":\"Setting a Default Image for Facebook\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-a-default-image-for-facebook\\/\",\"categories\":[\"facebook-settings\",\"social-networks\"]},\"18905\":{\"title\":\"Setting a Title Separator\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-a-title-separator\\/\",\"categories\":[\"search-appearance\"]},\"18906\":{\"title\":\"How to Protect Your Content With RSS Content Settings\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-protect-your-content-with-rss-content-settings\\/\",\"categories\":[\"rss-content-settings\"]},\"18907\":{\"title\":\"How to Connect Your Site with Google Tag Manager\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-connect-your-site-with-google-tag-manager\\/\",\"categories\":[\"google-analytics\"]},\"18908\":{\"title\":\"How to Connect Your Site with Google Analytics\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-connect-your-site-with-google-analytics\\/\",\"categories\":[\"google-analytics\"]},\"18909\":{\"title\":\"How to Verify Your Site with Pinterest\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-verify-your-site-with-pinterest\\/\",\"categories\":[\"pinterest-settings\",\"social-networks\",\"webmaster-tools\",\"webmaster-verification\"]},\"18910\":{\"title\":\"How to Verify Your Site with Yandex Webmaster Tools\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-verify-your-site-with-yandex-webmaster-tools\\/\",\"categories\":[\"webmaster-tools\",\"webmaster-verification\"]},\"18911\":{\"title\":\"How to Verify Your Site with Bing Webmaster Tools\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-verify-your-site-with-bing-webmaster-tools\\/\",\"categories\":[\"bing-webmaster-tools\",\"webmaster-tools\",\"webmaster-verification\"]},\"18912\":{\"title\":\"How to Verify Your Site with Google Search Console\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-verify-your-site-with-google-search-console\\/\",\"categories\":[\"google-search-console\",\"webmaster-tools\",\"webmaster-verification\"]},\"18913\":{\"title\":\"Usage Tracking\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/usage-tracking\\/\",\"categories\":[\"frequently-asked-questions\"]},\"18915\":{\"title\":\"How do I use All in One SEO in my language?\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-do-i-use-all-in-one-seo-in-my-language\\/\",\"categories\":[\"frequently-asked-questions\"]},\"18920\":{\"title\":\"NGINX rewrite rules for Robots.txt\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/nginx-rewrite-rules-for-robots-txt\\/\",\"categories\":[\"robots-txt\",\"tools\"]},\"18927\":{\"title\":\"Supported PHP Versions for All in One SEO\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/supported-php-version\\/\",\"categories\":[\"troubleshooting\"]},\"18929\":{\"title\":\"Using a different CDN for script enqueuing\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/using-a-different-cdn-for-script-enqueuing\\/\",\"categories\":[\"troubleshooting\"]},\"18930\":{\"title\":\"How do I get Google to show sitelinks for my site?\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-do-i-get-google-to-show-sitelinks-for-my-site\\/\",\"categories\":[\"frequently-asked-questions\"]},\"18954\":{\"title\":\"How does the import process for SEO data work?\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-does-the-import-process-for-seo-data-work\\/\",\"categories\":[\"frequently-asked-questions\",\"importer-exporter\",\"tools\"]},\"18960\":{\"title\":\"Robots.txt Editor for Multisite Networks\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/robots-txt-editor-for-multisite-networks\\/\",\"categories\":[\"multisite-networks\",\"robots-txt\"]},\"18961\":{\"title\":\"What are the minimum requirements for All in One SEO?\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/what-are-the-minimum-requirements-for-all-in-one-seo-pack\\/\",\"categories\":[\"frequently-asked-questions\"]},\"18964\":{\"title\":\"How do I use your API code examples?\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-do-i-use-your-api-code-examples\\/\",\"categories\":[\"frequently-asked-questions\"]},\"18969\":{\"title\":\"XML Parsing Error - This page contains the following errors\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/this-page-contains-the-following-errors\\/\",\"categories\":[\"google-news-sitemap\",\"troubleshooting\",\"video-sitemap\",\"xml-sitemap\"]},\"18972\":{\"title\":\"The File Editor or Robots.txt modules are missing\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/the-file-editor-or-robots-txt-modules-are-missing\\/\",\"categories\":[\"frequently-asked-questions\"]},\"18977\":{\"title\":\"Excluding the XML Sitemap from caching\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/excluding-the-xml-sitemap-from-caching\\/\",\"categories\":[\"xml-sitemap\"]},\"18982\":{\"title\":\"Why doesn\'t the title and description I set appear in search results?\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/why-doesnt-the-title-and-description-i-set-appear-in-search-results\\/\",\"categories\":[\"frequently-asked-questions\",\"post-page-settings\"]},\"18983\":{\"title\":\"Can I remove the date from Google search results?\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/can-i-remove-the-date-from-google-search-results\\/\",\"categories\":[\"frequently-asked-questions\"]},\"18985\":{\"title\":\"Setting up HTTPS SSL\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/setting-up-https-ssl\\/\",\"categories\":[\"general-seo-topics\"]},\"18995\":{\"title\":\"How to Increase the WordPress PHP Memory Limit\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/increase-wordpress-php-memory-limit\\/\",\"categories\":[\"troubleshooting\"]},\"19002\":{\"title\":\"Checking Index Status in Google Search Results\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/checking-index-status-in-google-search-results\\/\",\"categories\":[\"general-seo-topics\"]},\"19006\":{\"title\":\"SEO Data Importer\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/seo-data-importer\\/\",\"categories\":[\"seo-data-importer\"]},\"19008\":{\"title\":\"How to troubleshoot issues with All in One SEO\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/how-to-troubleshoot-issues-with-all-in-one-seo-pack\\/\",\"categories\":[\"troubleshooting\"]},\"19010\":{\"title\":\"Quality Guidelines for SEO Titles and Descriptions\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/quality-guidelines-for-seo-titles-and-descriptions\\/\",\"categories\":[\"general-seo-topics\"]},\"19016\":{\"title\":\"Top Tips for Good On-Page SEO\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/top-tips-for-good-on-page-seo\\/\",\"categories\":[\"general-seo-topics\"]},\"19017\":{\"title\":\"Meta Descriptions\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/meta-descriptions\\/\",\"categories\":[\"general-seo-topics\"]},\"19028\":{\"title\":\"What is SEO meta?\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/what-is-seo-meta\\/\",\"categories\":[\"getting-started\"]},\"19029\":{\"title\":\"Social Meta Settings - Individual Page\\/Post Settings\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/social-meta-settings-individual-pagepost-settings\\/\",\"categories\":[\"post-page-settings\",\"social-networks\"]},\"19030\":{\"title\":\"File Editor Module\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/file-editor-module\\/\",\"categories\":[\"file-editor\"]},\"19031\":{\"title\":\"Social Meta Settings\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/social-meta-module\\/\",\"categories\":[\"social-networks\"]},\"19032\":{\"title\":\"Importer &amp; Exporter Module\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/importer-exporter-module\\/\",\"categories\":[\"importer-exporter\",\"tools\"]},\"19034\":{\"title\":\"Feature Manager\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/feature-manager\\/\",\"categories\":[\"feature-manager\"]},\"19035\":{\"title\":\"Advanced Settings for All in One SEO Pack\",\"url\":\"https:\\/\\/aioseo.com\\/docs\\/all-in-one-seo-pack-advanced-settings\\/\",\"categories\":[\"advanced-settings\"]}}}\";', '2025-11-02 11:40:13', '2025-10-26 11:40:13', '2025-10-26 11:40:13');
INSERT INTO `abuhasdha_aioseo_cache` (`id`, `key`, `value`, `expiration`, `created`, `updated`) VALUES
(4, 'db_schema', 'a:8:{s:43:\"abuhasdha_aioseo_crawl_cleanup_blocked_args\";a:8:{i:0;s:2:\"id\";i:1;s:3:\"key\";i:2;s:5:\"value\";i:3;s:14:\"key_value_hash\";i:4;s:5:\"regex\";i:5;s:4:\"hits\";i:6;s:7:\"created\";i:7;s:7:\"updated\";}s:40:\"abuhasdha_aioseo_writing_assistant_posts\";a:7:{i:0;s:2:\"id\";i:1;s:7:\"post_id\";i:2;s:10:\"keyword_id\";i:3;s:21:\"content_analysis_hash\";i:4;s:16:\"content_analysis\";i:5;s:7:\"created\";i:6;s:7:\"updated\";}s:43:\"abuhasdha_aioseo_writing_assistant_keywords\";a:10:{i:0;s:2:\"id\";i:1;s:4:\"uuid\";i:2;s:7:\"keyword\";i:3;s:7:\"country\";i:4;s:8:\"language\";i:5;s:8:\"progress\";i:6;s:8:\"keywords\";i:7;s:11:\"competitors\";i:8;s:7:\"created\";i:9;s:7:\"updated\";}s:35:\"abuhasdha_aioseo_crawl_cleanup_logs\";a:8:{i:0;s:2:\"id\";i:1;s:4:\"slug\";i:2;s:3:\"key\";i:3;s:5:\"value\";i:4;s:4:\"hash\";i:5;s:4:\"hits\";i:6;s:7:\"created\";i:7;s:7:\"updated\";}s:22:\"abuhasdha_aioseo_posts\";a:60:{i:0;s:2:\"id\";i:1;s:7:\"post_id\";i:2;s:5:\"title\";i:3;s:11:\"description\";i:4;s:8:\"keywords\";i:5;s:10:\"keyphrases\";i:6;s:13:\"page_analysis\";i:7;s:12:\"primary_term\";i:8;s:13:\"canonical_url\";i:9;s:8:\"og_title\";i:10;s:14:\"og_description\";i:11;s:14:\"og_object_type\";i:12;s:13:\"og_image_type\";i:13;s:12:\"og_image_url\";i:14;s:14:\"og_image_width\";i:15;s:15:\"og_image_height\";i:16;s:19:\"og_image_custom_url\";i:17;s:22:\"og_image_custom_fields\";i:18;s:8:\"og_video\";i:19;s:13:\"og_custom_url\";i:20;s:18:\"og_article_section\";i:21;s:15:\"og_article_tags\";i:22;s:14:\"twitter_use_og\";i:23;s:12:\"twitter_card\";i:24;s:18:\"twitter_image_type\";i:25;s:17:\"twitter_image_url\";i:26;s:24:\"twitter_image_custom_url\";i:27;s:27:\"twitter_image_custom_fields\";i:28;s:13:\"twitter_title\";i:29;s:19:\"twitter_description\";i:30;s:9:\"seo_score\";i:31;s:6:\"schema\";i:32;s:11:\"schema_type\";i:33;s:19:\"schema_type_options\";i:34;s:14:\"pillar_content\";i:35;s:14:\"robots_default\";i:36;s:14:\"robots_noindex\";i:37;s:16:\"robots_noarchive\";i:38;s:16:\"robots_nosnippet\";i:39;s:15:\"robots_nofollow\";i:40;s:19:\"robots_noimageindex\";i:41;s:12:\"robots_noodp\";i:42;s:18:\"robots_notranslate\";i:43;s:18:\"robots_max_snippet\";i:44;s:23:\"robots_max_videopreview\";i:45;s:23:\"robots_max_imagepreview\";i:46;s:6:\"images\";i:47;s:15:\"image_scan_date\";i:48;s:8:\"priority\";i:49;s:9:\"frequency\";i:50;s:6:\"videos\";i:51;s:15:\"video_thumbnail\";i:52;s:15:\"video_scan_date\";i:53;s:9:\"local_seo\";i:54;s:19:\"breadcrumb_settings\";i:55;s:19:\"limit_modified_date\";i:56;s:7:\"options\";i:57;s:2:\"ai\";i:58;s:7:\"created\";i:59;s:7:\"updated\";}s:30:\"abuhasdha_aioseo_notifications\";a:19:{i:0;s:2:\"id\";i:1;s:4:\"slug\";i:2;s:5:\"addon\";i:3;s:5:\"title\";i:4;s:7:\"content\";i:5;s:4:\"type\";i:6;s:5:\"level\";i:7;s:15:\"notification_id\";i:8;s:17:\"notification_name\";i:9;s:5:\"start\";i:10;s:3:\"end\";i:11;s:13:\"button1_label\";i:12;s:14:\"button1_action\";i:13;s:13:\"button2_label\";i:14;s:14:\"button2_action\";i:15;s:9:\"dismissed\";i:16;s:3:\"new\";i:17;s:7:\"created\";i:18;s:7:\"updated\";}s:37:\"abuhasdha_aioseo_seo_analyzer_results\";a:6:{i:0;s:2:\"id\";i:1;s:4:\"data\";i:2;s:5:\"score\";i:3;s:14:\"competitor_url\";i:4;s:7:\"created\";i:5;s:7:\"updated\";}s:22:\"abuhasdha_aioseo_cache\";a:6:{i:0;s:2:\"id\";i:1;s:3:\"key\";i:2;s:5:\"value\";i:3;s:10:\"expiration\";i:4;s:7:\"created\";i:5;s:7:\"updated\";}}', '2025-11-02 06:59:55', '2025-10-26 11:40:13', '2025-11-01 06:59:55'),
(30, 'addons', 'a:9:{i:0;a:15:{s:3:\"sku\";s:16:\"aioseo-redirects\";s:4:\"name\";s:19:\"Redirection Manager\";s:7:\"version\";s:6:\"1.4.14\";s:5:\"image\";N;s:4:\"icon\";s:480:\"PHN2ZyB2aWV3Qm94PSIwIDAgMjQgMjQiIGZpbGw9Im5vbmUiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyIgY2xhc3M9ImFpb3Nlby1yZWRpcmVjdCI+PHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMC41OSA5LjE3TDUuNDEgNEw0IDUuNDFMOS4xNyAxMC41OEwxMC41OSA5LjE3Wk0xNC41IDRMMTYuNTQgNi4wNEw0IDE4LjU5TDUuNDEgMjBMMTcuOTYgNy40NkwyMCA5LjVWNEgxNC41Wk0xMy40MiAxNC44MkwxNC44MyAxMy40MUwxNy45NiAxNi41NEwyMCAxNC41VjIwSDE0LjVMMTYuNTUgMTcuOTVMMTMuNDIgMTQuODJaIiBmaWxsPSJjdXJyZW50Q29sb3IiIC8+PC9zdmc+\";s:6:\"levels\";a:4:{i:0;s:8:\"business\";i:1;s:6:\"agency\";i:2;s:3:\"pro\";i:3;s:5:\"elite\";}s:13:\"currentLevels\";a:2:{i:0;s:3:\"pro\";i:1;s:5:\"elite\";}s:15:\"requiresUpgrade\";b:1;s:11:\"description\";s:101:\"<p>Our Redirection Manager allows you to create and manage redirects for 404s or modified posts.</p>\n\";s:18:\"descriptionVersion\";i:0;s:11:\"downloadUrl\";s:0:\"\";s:10:\"productUrl\";s:48:\"https://aioseo.com/features/redirection-manager/\";s:12:\"learnMoreUrl\";s:48:\"https://aioseo.com/features/redirection-manager/\";s:9:\"manageUrl\";s:40:\"https://route#aioseo-redirects:redirects\";s:8:\"features\";a:1:{i:0;a:2:{s:13:\"license_level\";s:5:\"elite\";s:7:\"feature\";s:19:\"404-parent-redirect\";}}}i:1;a:15:{s:3:\"sku\";s:21:\"aioseo-link-assistant\";s:4:\"name\";s:14:\"Link Assistant\";s:7:\"version\";s:6:\"1.1.11\";s:5:\"image\";N;s:4:\"icon\";s:516:\"PHN2ZyB2aWV3Qm94PSIwIDAgMjQgMjQiIGZpbGw9Im5vbmUiIHhtbG5zPSJodHRwOi8vd3d3LnczLm9yZy8yMDAwL3N2ZyI+PHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBjbGlwLXJ1bGU9ImV2ZW5vZGQiIGQ9Ik0xMSAxNUg3QzUuMzUgMTUgNCAxMy42NSA0IDEyQzQgMTAuMzUgNS4zNSA5IDcgOUgxMVY3SDdDNC4yNCA3IDIgOS4yNCAyIDEyQzIgMTQuNzYgNC4yNCAxNyA3IDE3SDExVjE1Wk0xNyA3SDEzVjlIMTdDMTguNjUgOSAyMCAxMC4zNSAyMCAxMkMyMCAxMy42NSAxOC42NSAxNSAxNyAxNUgxM1YxN0gxN0MxOS43NiAxNyAyMiAxNC43NiAyMiAxMkMyMiA5LjI0IDE5Ljc2IDcgMTcgN1pNMTYgMTFIOFYxM0gxNlYxMVoiIGZpbGw9ImN1cnJlbnRDb2xvciIvPjwvc3ZnPgo=\";s:6:\"levels\";a:3:{i:0;s:6:\"agency\";i:1;s:3:\"pro\";i:2;s:5:\"elite\";}s:13:\"currentLevels\";a:2:{i:0;s:3:\"pro\";i:1;s:5:\"elite\";}s:15:\"requiresUpgrade\";b:1;s:11:\"description\";s:283:\"<p>Super-charge your SEO with Link Assistant! Get relevant suggestions for adding internal links to older content as well as finding any orphaned posts that have no internal links. Use our reporting feature to see all link suggestions or add them directly from any page or post.</p>\n\";s:18:\"descriptionVersion\";i:0;s:11:\"downloadUrl\";s:0:\"\";s:10:\"productUrl\";s:39:\"https://aioseo.com/docs/link-assistant/\";s:12:\"learnMoreUrl\";s:39:\"https://aioseo.com/docs/link-assistant/\";s:9:\"manageUrl\";s:44:\"https://route#aioseo-link-assistant:overview\";s:8:\"features\";a:0:{}}i:2;a:15:{s:3:\"sku\";s:20:\"aioseo-video-sitemap\";s:4:\"name\";s:13:\"Video Sitemap\";s:7:\"version\";s:6:\"1.1.21\";s:5:\"image\";N;s:4:\"icon\";s:420:\"PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyMCAyMCI+PHBhdGggZmlsbC1ydWxlPSJldmVub2RkIiBkPSJNMy4zMzMgNWgxMGMuNDU5IDAgLjgzNC4zNzUuODM0LjgzM1Y4Ljc1TDE3LjUgNS40MTd2OS4xNjZsLTMuMzMzLTMuMzMzdjIuOTE3YS44MzYuODM2IDAgMCAxLS44MzQuODMzaC0xMGEuODM2LjgzNiAwIDAgMS0uODMzLS44MzNWNS44MzNjMC0uNDU4LjM3NS0uODMzLjgzMy0uODMzWm05LjE2NyA4LjMzM1Y2LjY2N0g0LjE2N3Y2LjY2NkgxMi41WiIgY2xpcC1ydWxlPSJldmVub2RkIi8+PC9zdmc+\";s:6:\"levels\";a:5:{i:0;s:10:\"individual\";i:1;s:8:\"business\";i:2;s:6:\"agency\";i:3;s:3:\"pro\";i:4;s:5:\"elite\";}s:13:\"currentLevels\";a:2:{i:0;s:3:\"pro\";i:1;s:5:\"elite\";}s:15:\"requiresUpgrade\";b:1;s:11:\"description\";s:243:\"<p>The Video Sitemap works in much the same way as the XML Sitemap module, it generates an XML Sitemap specifically for video content on your site. Search engines use this information to display rich snippet information in search results.</p>\n\";s:18:\"descriptionVersion\";i:0;s:11:\"downloadUrl\";s:0:\"\";s:10:\"productUrl\";s:54:\"https://aioseo.com/docs/how-to-create-a-video-sitemap/\";s:12:\"learnMoreUrl\";s:54:\"https://aioseo.com/docs/how-to-create-a-video-sitemap/\";s:9:\"manageUrl\";s:43:\"https://route#aioseo-sitemaps:video-sitemap\";s:8:\"features\";a:0:{}}i:3;a:15:{s:3:\"sku\";s:21:\"aioseo-local-business\";s:4:\"name\";s:18:\"Local Business SEO\";s:7:\"version\";s:6:\"1.3.11\";s:5:\"image\";N;s:4:\"icon\";s:18:\"svg-local-business\";s:6:\"levels\";a:5:{i:0;s:8:\"business\";i:1;s:6:\"agency\";i:2;s:4:\"plus\";i:3;s:3:\"pro\";i:4;s:5:\"elite\";}s:13:\"currentLevels\";a:3:{i:0;s:4:\"plus\";i:1;s:3:\"pro\";i:2;s:5:\"elite\";}s:15:\"requiresUpgrade\";b:1;s:11:\"description\";s:253:\"<p>Local Business schema markup enables you to tell Google about your business, including your business name, address and phone number, opening hours and price range. This information may be displayed as a Knowledge Graph card or business carousel.</p>\n\";s:18:\"descriptionVersion\";i:0;s:11:\"downloadUrl\";s:0:\"\";s:10:\"productUrl\";s:43:\"https://aioseo.com/docs/local-business-seo/\";s:12:\"learnMoreUrl\";s:43:\"https://aioseo.com/docs/local-business-seo/\";s:9:\"manageUrl\";s:40:\"https://route#aioseo-local-seo:locations\";s:8:\"features\";a:0:{}}i:4;a:15:{s:3:\"sku\";s:19:\"aioseo-news-sitemap\";s:4:\"name\";s:12:\"News Sitemap\";s:7:\"version\";s:6:\"1.0.20\";s:5:\"image\";N;s:4:\"icon\";s:16:\"svg-sitemaps-pro\";s:6:\"levels\";a:4:{i:0;s:8:\"business\";i:1;s:6:\"agency\";i:2;s:3:\"pro\";i:3;s:5:\"elite\";}s:13:\"currentLevels\";a:2:{i:0;s:3:\"pro\";i:1;s:5:\"elite\";}s:15:\"requiresUpgrade\";b:1;s:11:\"description\";s:284:\"<p>Our Google News Sitemap lets you control which content you submit to Google News and only contains articles that were published in the last 48 hours. In order to submit a News Sitemap to Google, you must have added your site to Google’s Publisher Center and had it approved.</p>\n\";s:18:\"descriptionVersion\";i:0;s:11:\"downloadUrl\";s:0:\"\";s:10:\"productUrl\";s:60:\"https://aioseo.com/docs/how-to-create-a-google-news-sitemap/\";s:12:\"learnMoreUrl\";s:60:\"https://aioseo.com/docs/how-to-create-a-google-news-sitemap/\";s:9:\"manageUrl\";s:42:\"https://route#aioseo-sitemaps:news-sitemap\";s:8:\"features\";a:0:{}}i:5;a:15:{s:3:\"sku\";s:16:\"aioseo-index-now\";s:4:\"name\";s:8:\"IndexNow\";s:7:\"version\";s:6:\"1.0.13\";s:5:\"image\";N;s:4:\"icon\";s:1836:\"PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyMCAyMCI+PHBhdGggZD0iTTE3LjY0NCAxMS42NTVjLS4zMjEtLjIyOS0uNjU0LS40NDYtLjk2NC0uNjk3LS42NDMtLjUzNC0uNjMxLTEuMzcyLjAyMy0xLjg4NC4zMS0uMjQuNjQyLS40NTguOTY0LS42OTcuMTg0LS4xMy4zMjEtLjI5NC4zMzMtLjUzNCAwLS4wMzIgMC0uMDc2LS4wMTItLjEyYTcuNDQyIDcuNDQyIDAgMCAwLTEuODkzLTMuMTQ3Yy0uMjA3LS4yMDctLjQ2LS4yNC0uNzQ2LS4xMmEyMi4wNSAyMi4wNSAwIDAgMS0xLjA2OC40MzZjLS45MTguMzQ4LTEuNjg3LS4wODctMS44MTMtMS4wMjQtLjA0Ni0uMzM4LS4wOC0uNjc1LS4xMTUtMS4wMTMtLjAzNC0uMzctLjI0LS41OTktLjYzLS42NzVhOC40NDYgOC40NDYgMCAwIDAtMy40NjcgMGMtLjM2Ny4wNzYtLjU3NC4yNzItLjYwOC42MzJhMTMuNzggMTMuNzggMCAwIDEtLjE2IDEuMTc2Yy0uMTYxLjgyOC0uOTE5IDEuMjMtMS43NDUuOTE1LS4zNTYtLjEzLS43MTItLjI5NC0xLjA2Ny0uNDQ3LS4zMzMtLjE0MS0uNjA5LS4wODctLjg1LjE2NGE3Ljc3OSA3Ljc3OSAwIDAgMC0xLjc3OSAyLjkxOGMtLjExNC4zMzgtLjAyMy42MS4yODcuODI4LjI5OS4yMDcuNjA5LjQxNC44OTUuNjMyLjc3LjU4OC43NTggMS40NDgtLjAyMiAyLjAxNC0uMjg3LjIwNy0uNTc0LjQxNC0uODYxLjYxLS4zMjIuMjE4LS40MTMuNTEyLS4yOTkuODZhNy44NyA3Ljg3IDAgMCAwIDEuNzQ1IDIuODg3Yy4yNC4yNS41MTYuMzE2Ljg1LjE4NS4zOS0uMTUzLjc2OC0uMzI3IDEuMTU4LS40NjguNzU4LS4yNzMgMS41MTUuMTIgMS42NzYuODcuMDguNDA0LjEyNi44MTguMTYgMS4yMi4wMzUuMzcuMjQxLjU2Ny41OTcuNjQzIDEuMTYuMjQgMi4zMDcuMjQgMy40NjYuMDExLjQxMy0uMDg3LjYwOC0uMzE2LjY0My0uNzA4LjAyMy0uMzI3LjA2OS0uNjUzLjEwMy0uOTcuMTE1LS45MjUuODk1LTEuMzgyIDEuODE0LTEuMDQ1LjM0NC4xMzEuNjg4LjI3MyAxLjAzMi40MjUuMzY4LjE1My42NjYuMDc2LjkxOC0uMjA3YTguNDk0IDguNDk0IDAgMCAwIDEuNzEtMi44MmMuMTUtLjMzOC4wNTgtLjYyMS0uMjc1LS44NXptLTkuNDguNjk3Yy0uMTAzLjEzLS4zMS4xMi0uNDEzLS4wMUw2LjAzIDEwLjE3M2EuMjIuMjIgMCAwIDEgMC0uMjgzbDEuOTI4LTIuNDI5IDEuNDY5IDEuNzItLjYzMS44NS41MjcuNzA4YS4yMDUuMjA1IDAgMCAxLS4wMTEuMjYyem01LjgzLTIuMTc4LTIuNDc5IDMuMDE3YS4yNi4yNiAwIDAgMS0uMjA2LjEwOUg5LjEwNWEuMjUuMjUgMCAwIDEtLjIwNi0uNDAzbDIuMzUzLTIuODY1LTIuNjc0LTMuMjY3aDIuODY5bDIuNTU5IDMuMTI2YS4yMzYuMjM2IDAgMCAxLS4wMTEuMjgzeiIvPjwvc3ZnPg==\";s:6:\"levels\";a:6:{i:0;s:8:\"business\";i:1;s:6:\"agency\";i:2;s:5:\"basic\";i:3;s:4:\"plus\";i:4;s:3:\"pro\";i:5;s:5:\"elite\";}s:13:\"currentLevels\";a:4:{i:0;s:5:\"basic\";i:1;s:4:\"plus\";i:2;s:3:\"pro\";i:3;s:5:\"elite\";}s:15:\"requiresUpgrade\";b:1;s:11:\"description\";s:193:\"<p>Add IndexNow support to instantly notify search engines when your content has changed. This helps the search engines to prioritize the changes on your website and helps you rank faster.</p>\n\";s:18:\"descriptionVersion\";i:0;s:11:\"downloadUrl\";s:0:\"\";s:10:\"productUrl\";s:28:\"https://aioseo.com/index-now\";s:12:\"learnMoreUrl\";s:28:\"https://aioseo.com/index-now\";s:9:\"manageUrl\";s:45:\"https://route#aioseo-settings:webmaster-tools\";s:8:\"features\";a:0:{}}i:6;a:15:{s:3:\"sku\";s:15:\"aioseo-rest-api\";s:4:\"name\";s:8:\"REST API\";s:7:\"version\";s:5:\"1.0.9\";s:5:\"image\";N;s:4:\"icon\";s:280:\"PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyNCAyNCIgY2xhc3M9ImFpb3Nlby1jb2RlIj48cGF0aCBkPSJNOS40IDE2LjZMNC44IDEybDQuNi00LjZMOCA2bC02IDYgNiA2IDEuNC0xLjR6bTUuMiAwbDQuNi00LjYtNC42LTQuNkwxNiA2bDYgNi02IDYtMS40LTEuNHoiIGZpbGw9ImN1cnJlbnRDb2xvciIvPjwvc3ZnPg==\";s:6:\"levels\";a:3:{i:0;s:4:\"plus\";i:1;s:3:\"pro\";i:2;s:5:\"elite\";}s:13:\"currentLevels\";a:3:{i:0;s:4:\"plus\";i:1;s:3:\"pro\";i:2;s:5:\"elite\";}s:15:\"requiresUpgrade\";b:1;s:11:\"description\";s:137:\"<p>Manage your post and term SEO meta via the WordPress REST API. This addon also works seamlessly with headless WordPress installs.</p>\n\";s:18:\"descriptionVersion\";i:0;s:11:\"downloadUrl\";s:0:\"\";s:10:\"productUrl\";s:36:\"https://aioseo.com/feature/rest-api/\";s:12:\"learnMoreUrl\";s:36:\"https://aioseo.com/feature/rest-api/\";s:9:\"manageUrl\";s:0:\"\";s:8:\"features\";a:0:{}}i:7;a:15:{s:3:\"sku\";s:16:\"aioseo-image-seo\";s:4:\"name\";s:9:\"Image SEO\";s:7:\"version\";s:5:\"1.2.1\";s:5:\"image\";N;s:4:\"icon\";s:436:\"PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHZpZXdCb3g9IjAgMCAyMCAyMCI+PHBhdGggZD0iTTE1LjgzMyA0LjE2N3YxMS42NjZINC4xNjdWNC4xNjdoMTEuNjY2Wm0wLTEuNjY3SDQuMTY3QzMuMjUgMi41IDIuNSAzLjI1IDIuNSA0LjE2N3YxMS42NjZjMCAuOTE3Ljc1IDEuNjY3IDEuNjY3IDEuNjY3aDExLjY2NmMuOTE3IDAgMS42NjctLjc1IDEuNjY3LTEuNjY3VjQuMTY3YzAtLjkxNy0uNzUtMS42NjctMS42NjctMS42NjdabS00LjA1IDcuMzgzLTIuNSAzLjIyNUw3LjUgMTAuOTUgNSAxNC4xNjdoMTBsLTMuMjE3LTQuMjg0WiIvPjwvc3ZnPg==\";s:6:\"levels\";a:5:{i:0;s:8:\"business\";i:1;s:6:\"agency\";i:2;s:4:\"plus\";i:3;s:3:\"pro\";i:4;s:5:\"elite\";}s:13:\"currentLevels\";a:3:{i:0;s:4:\"plus\";i:1;s:3:\"pro\";i:2;s:5:\"elite\";}s:15:\"requiresUpgrade\";b:1;s:11:\"description\";s:161:\"<p>Globally control the Title, Alt Text, Caption and Descriptions for images in your content. These attributes are essential for both accessibility and SEO.</p>\n\";s:18:\"descriptionVersion\";i:0;s:11:\"downloadUrl\";s:0:\"\";s:10:\"productUrl\";s:71:\"https://aioseo.com/docs/using-the-image-seo-features-in-all-in-one-seo/\";s:12:\"learnMoreUrl\";s:71:\"https://aioseo.com/docs/using-the-image-seo-features-in-all-in-one-seo/\";s:9:\"manageUrl\";s:44:\"https://route#aioseo-search-appearance:media\";s:8:\"features\";a:0:{}}i:8;a:15:{s:3:\"sku\";s:11:\"aioseo-eeat\";s:4:\"name\";s:20:\"Author SEO (E-E-A-T)\";s:7:\"version\";s:5:\"1.2.5\";s:5:\"image\";N;s:4:\"icon\";s:1380:\"PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIGhlaWdodD0iMjQiIHZpZXdCb3g9IjAgLTk2MCA5NjAgOTYwIiB3aWR0aD0iMjQiPjxwYXRoIGQ9Ik00NDAuMTE4LTU2MHEzMy44MzkgMCA1Ny44MTctMjQuMDk3dDIzLjk3OC01Ny45MzVxMC0zMy44MzgtMjMuOTc4LTU3LjY5Ni0yMy45NzgtMjMuODU5LTU3LjgxNy0yMy44NTktMzMuODM4IDAtNTcuOTM0IDIzLjg1OS0yNC4wOTcgMjMuODU4LTI0LjA5NyA1Ny42OTYgMCAzMy44MzggMjQuMDk3IDU3LjkzNVE0MDYuMjgtNTYwIDQ0MC4xMTgtNTYwWk00NDAtMzk2LjQxM3E0NS43MTcgMCA4NS41NzYtMTkuNDc4IDM5Ljg1OS0xOS40NzkgNjkuNTc2LTU2LjE1Mi0zNS45NTYtMjMuNzE4LTc0LjkzNS0zNS44MzdRNDgxLjIzOS01MjAgNDQwLTUyMHQtODAuMjE3IDEyLjEycS0zOC45NzkgMTIuMTE5LTc0LjkzNSAzNS44MzcgMjkuNzE3IDM2LjY3MyA2OS41NzYgNTYuMTUyIDM5Ljg1OSAxOS40NzggODUuNTc2IDE5LjQ3OFptMzg2LjM5MSAyODYuOTM1TDYzNy45MTMtMjk3Ljk1NnEtNDEuNzE3IDMxLjc2MS05MS42OTYgNDkuNDAyUTQ5Ni4yMzktMjMwLjkxMyA0NDAtMjMwLjkxM3EtMTM3LjU4NyAwLTIzMy4zMzctOTUuNzVUMTEwLjkxMy01NjBxMC0xMzcuNTg3IDk1Ljc1LTIzMy4zMzdUNDQwLTg4OS4wODdxMTM3LjU4NyAwIDIzMy4zMzcgOTUuNzVUNzY5LjA4Ny01NjBxMCA1NS43NjEtMTcuNzYxIDEwNS45NzgtMTcuNzYxIDUwLjIxOC00OS41MjEgOTIuMTc0TDg5MC4yODMtMTczLjM3bC02My44OTIgNjMuODkyWk00NDAuMTEzLTMyMS45MTNxOTkuMTU2IDAgMTY4LjU2NS02OS41MjIgNjkuNDA5LTY5LjUyMiA2OS40MDktMTY4LjY3OCAwLTk5LjE1Ni02OS40MDktMTY4LjU2NS02OS40MDktNjkuNDA5LTE2OC41NjUtNjkuNDA5LTk5LjE1NiAwLTE2OC42NzggNjkuNDA5LTY5LjUyMiA2OS40MDktNjkuNTIyIDE2OC41NjUgMCA5OS4xNTYgNjkuNTIyIDE2OC42NzggNjkuNTIyIDY5LjUyMiAxNjguNjc4IDY5LjUyMlpNNDQwLTU2MFoiLz48L3N2Zz4=\";s:6:\"levels\";a:3:{i:0;s:4:\"plus\";i:1;s:3:\"pro\";i:2;s:5:\"elite\";}s:13:\"currentLevels\";a:3:{i:0;s:4:\"plus\";i:1;s:3:\"pro\";i:2;s:5:\"elite\";}s:15:\"requiresUpgrade\";b:1;s:11:\"description\";s:147:\"<p>Optimize your site for Google\'s E-E-A-T ranking factor by proving your writer\'s expertise through author schema markup and new UI elements.</p>\n\";s:18:\"descriptionVersion\";i:0;s:11:\"downloadUrl\";s:0:\"\";s:10:\"productUrl\";s:33:\"https://aioseo.com/features/eeat/\";s:12:\"learnMoreUrl\";s:33:\"https://aioseo.com/features/eeat/\";s:9:\"manageUrl\";s:49:\"https://route#aioseo-search-appearance:author-seo\";s:8:\"features\";a:0:{}}}', '2025-11-02 06:59:56', '2025-10-30 23:32:57', '2025-11-01 06:59:56'),
(38, 'attachment_url_to_post_id_d99ed2ddbeefba28910cca4100f73b401b38bc49', 's:4:\"none\";', '2025-11-02 06:59:56', '2025-10-31 00:56:58', '2025-11-01 06:59:56'),
(43, 'admin_notifications_update', 'i:1762084340;', '2025-11-02 11:52:20', '2025-11-01 11:52:20', '2025-11-01 11:52:20'),
(44, 'wp_notices', 'a:0:{}', '2025-11-02 12:10:03', '2025-11-01 11:58:11', '2025-11-01 12:10:03'),
(45, 'license_features', 'a:32:{i:0;a:3:{s:13:\"license_level\";s:3:\"pro\";s:7:\"section\";s:6:\"schema\";s:7:\"feature\";s:5:\"event\";}i:1;a:3:{s:13:\"license_level\";s:5:\"elite\";s:7:\"section\";s:6:\"schema\";s:7:\"feature\";s:5:\"event\";}i:2;a:3:{s:13:\"license_level\";s:5:\"elite\";s:7:\"section\";s:6:\"schema\";s:7:\"feature\";s:11:\"job-posting\";}i:3;a:3:{s:13:\"license_level\";s:5:\"elite\";s:7:\"section\";s:5:\"tools\";s:7:\"feature\";s:29:\"network-tools-site-activation\";}i:4;a:3:{s:13:\"license_level\";s:5:\"elite\";s:7:\"section\";s:5:\"tools\";s:7:\"feature\";s:22:\"network-tools-database\";}i:5;a:3:{s:13:\"license_level\";s:5:\"elite\";s:7:\"section\";s:5:\"tools\";s:7:\"feature\";s:27:\"network-tools-import-export\";}i:6;a:3:{s:13:\"license_level\";s:5:\"elite\";s:7:\"section\";s:5:\"tools\";s:7:\"feature\";s:20:\"network-tools-robots\";}i:7;a:3:{s:13:\"license_level\";s:5:\"elite\";s:7:\"section\";s:17:\"search-statistics\";s:7:\"feature\";s:14:\"seo-statistics\";}i:8;a:3:{s:13:\"license_level\";s:5:\"elite\";s:7:\"section\";s:17:\"search-statistics\";s:7:\"feature\";s:16:\"keyword-rankings\";}i:9;a:3:{s:13:\"license_level\";s:5:\"elite\";s:7:\"section\";s:17:\"search-statistics\";s:7:\"feature\";s:22:\"keyword-rankings-pages\";}i:10;a:3:{s:13:\"license_level\";s:5:\"elite\";s:7:\"section\";s:17:\"search-statistics\";s:7:\"feature\";s:11:\"post-detail\";}i:11;a:3:{s:13:\"license_level\";s:5:\"elite\";s:7:\"section\";s:17:\"search-statistics\";s:7:\"feature\";s:22:\"post-detail-page-speed\";}i:12;a:3:{s:13:\"license_level\";s:5:\"elite\";s:7:\"section\";s:17:\"search-statistics\";s:7:\"feature\";s:26:\"post-detail-seo-statistics\";}i:13;a:3:{s:13:\"license_level\";s:5:\"elite\";s:7:\"section\";s:17:\"search-statistics\";s:7:\"feature\";s:20:\"post-detail-keywords\";}i:14;a:3:{s:13:\"license_level\";s:5:\"elite\";s:7:\"section\";s:17:\"search-statistics\";s:7:\"feature\";s:31:\"post-detail-focus-keyword-trend\";}i:15;a:3:{s:13:\"license_level\";s:5:\"elite\";s:7:\"section\";s:17:\"search-statistics\";s:7:\"feature\";s:16:\"keyword-tracking\";}i:16;a:3:{s:13:\"license_level\";s:5:\"elite\";s:7:\"section\";s:17:\"search-statistics\";s:7:\"feature\";s:28:\"post-detail-keyword-tracking\";}i:17;a:3:{s:13:\"license_level\";s:5:\"elite\";s:7:\"section\";s:17:\"search-statistics\";s:7:\"feature\";s:16:\"content-rankings\";}i:18;a:3:{s:13:\"license_level\";s:5:\"elite\";s:7:\"section\";s:13:\"seo-revisions\";s:7:\"feature\";s:12:\"revisions:-1\";}i:19;a:3:{s:13:\"license_level\";s:3:\"pro\";s:7:\"section\";s:13:\"seo-revisions\";s:7:\"feature\";s:12:\"revisions:30\";}i:20;a:3:{s:13:\"license_level\";s:4:\"plus\";s:7:\"section\";s:13:\"seo-revisions\";s:7:\"feature\";s:12:\"revisions:15\";}i:21;a:3:{s:13:\"license_level\";s:3:\"pro\";s:7:\"section\";s:7:\"general\";s:7:\"feature\";s:19:\"cornerstone-content\";}i:22;a:3:{s:13:\"license_level\";s:5:\"elite\";s:7:\"section\";s:7:\"general\";s:7:\"feature\";s:19:\"cornerstone-content\";}i:23;a:3:{s:13:\"license_level\";s:5:\"elite\";s:7:\"section\";s:17:\"search-statistics\";s:7:\"feature\";s:12:\"index-status\";}i:24;a:3:{s:13:\"license_level\";s:4:\"plus\";s:7:\"section\";s:11:\"aioseo-eeat\";s:7:\"feature\";s:11:\"author-info\";}i:25;a:3:{s:13:\"license_level\";s:3:\"pro\";s:7:\"section\";s:11:\"aioseo-eeat\";s:7:\"feature\";s:11:\"author-info\";}i:26;a:3:{s:13:\"license_level\";s:5:\"elite\";s:7:\"section\";s:11:\"aioseo-eeat\";s:7:\"feature\";s:11:\"author-info\";}i:27;a:3:{s:13:\"license_level\";s:3:\"pro\";s:7:\"section\";s:11:\"aioseo-eeat\";s:7:\"feature\";s:18:\"author-archive-bio\";}i:28;a:3:{s:13:\"license_level\";s:5:\"elite\";s:7:\"section\";s:11:\"aioseo-eeat\";s:7:\"feature\";s:18:\"author-archive-bio\";}i:29;a:3:{s:13:\"license_level\";s:3:\"pro\";s:7:\"section\";s:11:\"aioseo-eeat\";s:7:\"feature\";s:13:\"post-reviewer\";}i:30;a:3:{s:13:\"license_level\";s:5:\"elite\";s:7:\"section\";s:11:\"aioseo-eeat\";s:7:\"feature\";s:13:\"post-reviewer\";}i:31;a:3:{s:13:\"license_level\";s:5:\"elite\";s:7:\"section\";s:17:\"search-statistics\";s:7:\"feature\";s:24:\"keyword-rank-tracker:100\";}}', '2025-11-02 11:58:11', '2025-11-01 11:58:11', '2025-11-01 11:58:11'),
(46, 'post_overview_data', 'a:6:{s:5:\"total\";i:1;s:19:\"withoutFocusKeyword\";i:1;s:18:\"withoutTruSeoScore\";i:1;s:16:\"needsImprovement\";i:0;s:4:\"okay\";i:0;s:4:\"good\";i:0;}', '2025-11-01 12:58:11', '2025-11-01 11:58:11', '2025-11-01 11:58:11'),
(47, 'page_overview_data', 'a:6:{s:5:\"total\";i:5;s:19:\"withoutFocusKeyword\";i:5;s:18:\"withoutTruSeoScore\";i:1;s:16:\"needsImprovement\";i:0;s:4:\"okay\";i:4;s:4:\"good\";i:0;}', '2025-11-01 12:58:11', '2025-11-01 11:58:11', '2025-11-01 11:58:11'),
(49, 'product_overview_data', 'a:6:{s:5:\"total\";i:0;s:19:\"withoutFocusKeyword\";i:0;s:18:\"withoutTruSeoScore\";i:0;s:16:\"needsImprovement\";i:0;s:4:\"okay\";i:0;s:4:\"good\";i:0;}', '2025-11-01 12:58:11', '2025-11-01 11:58:11', '2025-11-01 11:58:11'),
(50, 'rss_feed', 'a:4:{i:0;a:4:{s:3:\"url\";s:51:\"https://aioseo.com/how-to-improve-keyword-rankings/\";s:5:\"title\";s:58:\"Improve Your Keyword Rankings With This Easy 10-Step Guide\";s:4:\"date\";s:16:\"October 28, 2025\";s:7:\"content\";s:139:\"Have you ever hit “Publish” on a blog post you were proud of, only to watch it disappear into Google search results? I remember&hellip;\";}i:1;a:4:{s:3:\"url\";s:40:\"https://aioseo.com/aioseo-4-8-8-release/\";s:5:\"title\";s:60:\"Meet AIOSEO 4.8.8: Unleash the Power of AI for Your Website!\";s:4:\"date\";s:16:\"October 23, 2025\";s:7:\"content\";s:142:\"Today, I’m thrilled to announce the release of AIOSEO 4.8.8—our most ambitious and transformative update yet!&nbsp; We’re bringi&hellip;\";}i:2;a:4:{s:3:\"url\";s:43:\"https://aioseo.com/how-to-check-seo-status/\";s:5:\"title\";s:56:\"How to Check Your Website&#8217;s SEO Status (for Free!)\";s:4:\"date\";s:16:\"October 14, 2025\";s:7:\"content\";s:136:\"Would you like to know how to check the SEO status of a website? Kudos to you. You\'re already way ahead of where I was when I fi&hellip;\";}i:3;a:4:{s:3:\"url\";s:40:\"https://aioseo.com/url-redirection-tips/\";s:5:\"title\";s:64:\"URL Redirection Tips &amp; Tricks You’ll Wish You Knew Earlier\";s:4:\"date\";s:15:\"October 7, 2025\";s:7:\"content\";s:136:\"Looking for practical URL redirection tips to improve user experience and boost your search rankings? Learn from my mistakes. Wh&hellip;\";}}', '2025-11-02 11:58:12', '2025-11-01 11:58:12', '2025-11-01 11:58:12');

-- --------------------------------------------------------

--
-- Table structure for table `abuhasdha_aioseo_crawl_cleanup_blocked_args`
--

CREATE TABLE `abuhasdha_aioseo_crawl_cleanup_blocked_args` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `key` text DEFAULT NULL,
  `value` text DEFAULT NULL,
  `key_value_hash` varchar(40) DEFAULT NULL,
  `regex` varchar(150) DEFAULT NULL,
  `hits` int(20) NOT NULL DEFAULT 0,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abuhasdha_aioseo_crawl_cleanup_logs`
--

CREATE TABLE `abuhasdha_aioseo_crawl_cleanup_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` text NOT NULL,
  `key` text NOT NULL,
  `value` text DEFAULT NULL,
  `hash` varchar(40) NOT NULL,
  `hits` int(20) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abuhasdha_aioseo_notifications`
--

CREATE TABLE `abuhasdha_aioseo_notifications` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(13) NOT NULL,
  `addon` varchar(64) DEFAULT NULL,
  `title` text NOT NULL,
  `content` longtext NOT NULL,
  `type` varchar(64) NOT NULL,
  `level` text NOT NULL,
  `notification_id` bigint(20) UNSIGNED DEFAULT NULL,
  `notification_name` varchar(255) DEFAULT NULL,
  `start` datetime DEFAULT NULL,
  `end` datetime DEFAULT NULL,
  `button1_label` varchar(255) DEFAULT NULL,
  `button1_action` varchar(255) DEFAULT NULL,
  `button2_label` varchar(255) DEFAULT NULL,
  `button2_action` varchar(255) DEFAULT NULL,
  `dismissed` tinyint(1) NOT NULL DEFAULT 0,
  `new` tinyint(1) NOT NULL DEFAULT 1,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `abuhasdha_aioseo_notifications`
--

INSERT INTO `abuhasdha_aioseo_notifications` (`id`, `slug`, `addon`, `title`, `content`, `type`, `level`, `notification_id`, `notification_name`, `start`, `end`, `button1_label`, `button1_action`, `button2_label`, `button2_action`, `dismissed`, `new`, `created`, `updated`) VALUES
(1, '68fb3416c3533', NULL, 'Have you connected your site to Google Search Console?', 'AIOSEO can now verify whether your site is correctly verified with Google Search Console and that your sitemaps have been submitted correctly. Connect with Google Search Console now to ensure your content is being added to Google as soon as possible for increased rankings.', 'warning', '[\"all\"]', NULL, 'search-console-site-not-connected', '2025-10-24 08:08:54', NULL, 'Connect to Google Search Console', 'https://route#aioseo-settings&aioseo-scroll=google-search-console-settings&aioseo-highlight=google-search-console-settings:webmaster-tools?activetool=googleSearchConsole', NULL, NULL, 0, 0, '2025-10-24 08:08:54', '2025-10-24 08:08:54'),
(2, '68fb3418cd579', NULL, '🤖 4.8.8 is Here — Unleash the Power of AI on Your Website!', '<img src=\"data:image/webp;base64,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\" alt=\"\" class=\"wp-image-1311\" style=\"object-fit:cover\"/>\n\n<p>Ready to create content, images, and boost your visibility faster than ever? With AIOSEO 4.8.8, you get cutting-edge AI features right inside WordPress:</p>\n\n<p>✅ Instantly generate blog posts, product copy, FAQs, and more with our new AI Assistant.</p>\n\n<p>✅ Create stunning, one-of-a-kind images with the Image Generator — no designer needed.</p>\n\n<p>✅ Take charge of how AI engines see your site using the new LLMS.txt Generator.</p>\n\n<p>Update to AIOSEO 4.8.8 now and supercharge your site with the future of SEO — powered by AI. 🚀</p>', 'success', '[\"4-x\",\"lite\"]', 1310, NULL, '2025-10-22 16:06:34', NULL, 'Learn More', 'https://aioseo.com/aioseo-4-8-8-release/?utm_source=WordPress&utm_medium=plugin-notification&utm_campaign=4.8.8-v4-x-lite', 'Get AIOSEO Pro', 'https://aioseo.com/lite-upgrade/?utm_source=WordPress&utm_medium=plugin-notification&utm_campaign=4.8.8-v4-x-lite', 0, 0, '2025-10-24 08:08:56', '2025-10-24 08:08:56'),
(3, '68fb3418d1200', NULL, '🍁 Fall Sale: Up to 60% Off AIOSEO Plans + Upgrades', '<img src=\"data:image/webp;base64,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\" alt=\"\" class=\"wp-image-1317\"/>\n\n<p>Fall is here, and so is your chance to rake in the savings. 🍂</p>\n\n<p>We’re celebrating the season with <strong>up to 60% off t</strong>he best WordPress SEO plugin. Whether you’re starting fresh or ready to upgrade, now’s the perfect time.</p>\n\n<p>Think falling leaves, rising traffic, and incredible savings.&nbsp;</p>\n\n<p>But hurry, this sale is only here for a limited time. ⏳</p>', 'success', '[\"4-x\",\"lite\"]', 1316, NULL, '2025-10-24 00:00:00', '2025-10-31 00:00:00', 'Get AIOSEO Pro', 'https://aioseo.com/lite-upgrade/?utm_source=WordPress&utm_medium=plugin-notification&utm_campaign=fall-sale-2025-v4-x-lite', NULL, NULL, 0, 0, '2025-10-24 08:08:56', '2025-10-24 08:08:56'),
(4, '68fb3418e2421', NULL, 'Introducing Site Audit in AIOSEO 4.8.6', '<p>Tired of guessing why your website isn’t ranking higher? Or frustrated by SEO tools that give you too much data but no clear answers?</p>\n\n<p>We’ve supercharged our SEO Analyzer to give you crystal-clear insights and action steps—right inside your WordPress dashboard!</p>\n\n<p>Now you can:</p>\n\n<p>✅ Scan your <strong>entire site</strong> for common SEO issues.</p>\n\n<p>✅ View issues <strong>page-by-page</strong> or <strong>by issue type</strong>.</p>\n\n<p>✅ <strong>Get instant tooltips</strong>, 1-click fixes, and quick keyword additions.</p>\n\n<p>✅ <strong>Track progress</strong> with satisfying visual checkmarks.</p>\n\n<p>Update to AIOSEO 4.8.6 today and take the guesswork out of SEO!</p>', 'success', '[\"4-x\",\"lite\"]', 1298, NULL, '2025-08-27 00:00:00', NULL, 'Learn More', 'https://aioseo.com/site-audit-announcement/?utm_source=WordPress&utm_medium=plugin-notification&utm_campaign=486-v4-x-lite', 'Get AIOSEO Pro', 'https://aioseo.com/lite-upgrade/?utm_source=WordPress&utm_medium=plugin-notification&utm_campaign=486-v4-x-lite', 0, 0, '2025-10-24 08:08:56', '2025-10-24 08:08:56'),
(5, '68fb3418e439c', NULL, '[New] AI Content Generator: Supercharge Your Content Creation!', '<img src=\"data:image/webp;base64,iVBORw0KGgoAAAANSUhEUgAAAZAAAAA+CAMAAAAyAL3UAAAAWlBMVEUEYeAVteTl8vzD4PaSx+8Tcr9TvekJX7MkfPMFYNZEmuwyuehKqucpl+wEZ+Y0ivINde8IceIRj+wQldwQjdsRnuIPgu4OhNwKeuAgpecVrucUteb///8BZPnkOgnlAAAAAnRSTlMwMI8My2cAAAAJcEhZcwAADsQAAA7EAZUrDhsAABrkSURBVHjarZyNgqo8r4XnU7GIIGALBdze/22erCT9AWH27HdOwQIVcaaPK2lLydfX4/2R2pB6U5qpbaepLMu2xWpKrP1Utj2V0cvcyqnH+5LajlNbtW3TUl4UVWFaXKSdTIudpvWm8O1E+yiZRnrr2Y7VOHbjODaVptYY+qSvvG8a2rQe7/ii8YY2rpIC75rGuYZOwauYkOMD7okipPrJaa41zaaovfF14+q6qprC1Q3tz3VR1K6eZ9qr7dzQifRVzTw3jaWyeXB2Hqwt5nmh9U4FM22vd10KO8/3uTD3uy3qunD32c53pIVWpNc1JmeK67W+14W9zle60nUorvV8p3fuZr4XX1/vnURVL0tvTN+2N3MjMO2tD0DM7UaVXBouN53pTZ+AvDtaK+BsmAJVfmuKaWIqRYE3KB8NYZnMaAoqJiYEBDxGqiSkqiEgDX22MOBZ0MmmmqupqCrjC0oEyTT0ZuHwJp1ZGNp78l7BhwJkbgKQWRZTNEXhHX28NsbRF3i5VDGbGV820+dNvRAQ7y1dCNeb6TudL4aCeBC1GjQGANFkvLN3T+fcab27whbWLHcsCoTqm3b5RRe7Xw2dUtTmSl/vhoI+VSzXqyVS9/oACKoWCjAGBLjiaWnLiQp6gsOH2CtvPd7HB0asqpAqiqwsDGqUGLDWDDDdClJJa/xkJvzHEEjbQCHdKDQogUIBEFS1xjUTapiANJXxWvse5a6lcj4DtduYJw6deToDGLiWAuEFQJyjyzZEejZNXbBgCnCpiYWjzMy01jOVuIY0UThbLPhLPFXivNRLUsj9XgNHfS8ApLAeVXuvgaOwrI+kEMZBYlroW+ydtFQMlNO2Huh0+tOhLgA7BlIyEJgkqvi+vAENbFhZqkwUyK3reyFSlh2AvGGyQpogBlJTMFmsECOFE4CMExmtERrhBBotgJBdMRMB8S1+wvjVUyEBoco2zyeV4gRPNkeAeAWC03CG2ypkRqrnhjUk1zPNDNy+mG1TeCjEzXIBqnhH9qm2hoFgAyAGFgtXGUggc8088CrIQM34mcz0UyfGs6VTt0AksbwzILMlIMWd6F5nAlK4XSBlBoSqvYcEOjZLHQO5oUCAdDcyWVBNV3a00hlsslC/sEQkJUPVb3AK5yMcBimE6Bjg4KKRFdJBIxAQkJCEnsSBRGRggaAkKie1mamhsokUYnSnofrHtzTQTSMfiECq4EPmipFQZeOyMIGNsVTdbO+oJmnDQGa8BYXgrx1EIYMpFAiEMYtCFtQ2eNQMpODqBA7jSCFU9AKQFwNJ1o3KSSQGho1yR18Fk4UPUxF97P49kDL88IXNuiTuipUqhUfHEikJSIlf/khqkxqnteQ8HsreKK9WnPrYtM9n+2yeBAUvOuSK1U2WVgXGP/ffmAXIEwqpFMpHavIDZ52ZD9LCEsG1Blpq/P5VB+rCKQOpZX4t4LGIQJbX/SC9VhukXSBks2IVd1r5t9uWUteV+UlK5cFL14pLKZkLkJRju1oYQ9hyASuEnAh4kIzAhRIOaQf1nC2tVvxT679wXN5sz1OLRRKZYb7iUs2HiVyMO8Ihdg/2io+pumvyKKHikTGGRUEFi7Us94+KP0r7QMKvXis5KiDapXAgqU+ngsa7e/fUAAALWssxUBHN8DG/xyzktKAPtLOo+kbl0erShAOmxZj4FSg8P0jou4EHJMJEhmYQQQiYtTh+lBbVB3sRre86AAiZvhHeh0ReL/DQ7BjNPpC3+IJui6Xs9tKjU10Qj54W2YfKynLMl5AxjaxQXHoXjBbxwCIK4dTqS3cazWN1N88ESV+cJx7PpiYWtIDL0DAWJfKPaLh5AI0MC7QBE7Wb7kkfgQiSgEmbFaLXIZBAhMTyFjf9Vu8ALMrqLTR4eZBMwOP9ABQ6II2gHcuCSjTWaIQM9NFFHHRE1TgSEUlPelcUM0Y2OascyaaoWRWizpmJ4ODdOUASHooGL7VKcRtxwF4NrJAlamReqSFDsqyI3BXH6y5k7hFPYvQ6AsKeHT/x3H9Hh66mq8tsFhX2jwej0QyefSWFlcuA8WKT1Wby6ARKyz4Eja1nKx5DBaHGKPj7IxevDd6ch2U/kmo+2K1D334sj0ENljh5duY1r5rd1dG/Mhp4/cCBHJssdSV/Tz1WWnrQeJA4QAMq6SATGVJh9z7mMglmSzx7RBFXtlftGDxHtm2T6cqlsudFVjD0NKijYaM1b5efIWEUvEIhwbtrmlUW1DDeMWWvRX1IbqY+PMq3QI7TA+tjk3rNdIVIkr/XNMqL17JjDlIsTJLhOkxszp5pE2zZqNu9ZDMuzXNgCzdgtfTipeFsEBMWdkKKotDtEEUCLrm753U5Ti8oZXl9k34OpHurQ0EjSmF8MIloWDdsvfpjeQU6ykINVra3AyPLA5MAZg1oh4kVBs+nYsCRAqEdyuUl2TbN2a5qRHQCqYDCsAiMWbYfInkl67UcQ/n6MQp5sTJ4iTBucQk0xHyxQqQRtoNiFJWkpYtFwYz9RSUboahCAo3xCImgiFhAxA6RS6Cxy0SEEQUTwPBQI0EZwGQfRqTBEkFafqWQiAPygC7eSR83YXJ75FT6uLDRehwKRDYTZZPoYkoC2dUJM4ivjEWQSLJdjlfd2ITEZlpRqcjWikyeRzgyKENGRnDICPA8f9MSFoPFe4dEvn7CIu4qlIgksLjJ67ZGwiZLTNehzSIQjAPbcWIqwmLKhDJtoHhB4UUfPlJB9XvVh1eVJCTPDEfYJlkwEOzaQSXyrVSSTII4BrVZOsKy5GBW1gowlkORfP1QIArj3QkMJVKe/+ymU7uCwlRW/n0Kq8pknAKaCfnEQpmYxLTCQLnPNoTjKZl/ehWIBxXOHGOJSJxicQGJsmFnMtiAhIoSlWMcORYWyTJHJqj+YaeVFRZd95D8SytLoDyy9tXpz0E6q9XibnuvSGT5pAIUarOmThCw7WIiU8bFjzkNn22hFT86WgTGk3Z4y4JxLuDAXqYSzi0lGDAbZBLVYgf7DZTMzfPolm6WZa+hFTUSWSy/8CGdaIRpdOLOmcntz2F6xCZwnyERHr3AUCg5Fl5YJmK0OsEiTGQdJx/JeDZYtPDKdsozCKgESMDDedZKEIgTPILEChdt/mpmmQSMl2WvYsW7iGjsgZcfYudEeQyfjayXcvlGH/+gkE6dxzvz5t8AoTf7R/TrAUmgwtmkVKapiwvrhHBMUy6PwMOLWChTdcjGMQvGwpaLl5FAgIXIIhCRjcVegKJYbNgHAOQ2tL4CBCuKsQdaWXQ05dhqvZbU5F3+eyurizjQ1u3eyaXfvgOi3p3NFvXjo8GibEpqmTIcSKEgggnLlLGZUPOT1H9YlM7Tgw9xgChgwpgOwaEFcJyuIhJnnXJQy2WFjBVxWFUG71sRi6x2Fwm3tYZFlk+79crcyCu6kd/5kNBDfz+kVfUXhfRqtOBJ+l6w9AIF24m5MIS2qquWoQQ0LJIgFpCYoA8v4pjGiCJjAhowV6oRLy6FUDgM9l7rRrgIESdUHJA4GyUy8GqhkiFwAQoGYdV0fehEFDJkNmve8ehx/W3HMPTQUyNLW7x/UQj6JiqRR306nc6K5EL7IwtElVJLY+1cM4sxs2CsjUkVkkyYp2WCBfPBUnmxWaQOYPDBdjnCQturfsE1yiRYMIvVPYM0NhlcfVKI8oiZ3e2jLInJnm9PMJb/2sqKPZHukdpY3OtQIO1N0zkHcuvRV5Txrb7ntzqRyIV2RxFLT/ZrTB+7RIEEaUzRYPHGA6xqhRZGQpvo2fmFc6AQfT1d9gUsEq8KsUEoYr0sCtiKpTRkexHGlb7gw6PoOMq8b7FeQSPM4RuVfP0URmhlBYmwAvS/DJPb1kDYat1EIaWcKP5EgBAL4Ogn/tTpfBIiU5+5lEgnpppOmoTGxI5EhDIlqfjxSucIDrZcXuVxCkTcymjZnA6g2KiRDMqQ88EXBESbtCQih24kpuW/9tS7uK9DWLdDH3I5JyDS0uLsInUijiQASUeniuDUqDHaoWWXBdspAcL77Fa8KAUgJINCBIgmh+o71awc2qtVI+DiIwqrS4QTmSRGCY8AiT7F5iJBK3jXYL1Wzaxl+e1ob5caWLTc3pnJqsMkrDNpoD0nIDKSAlVQVaC8WikEFqub6K2T6KVSo0XWqb5cro1YLlLeNF4vlxocKny2qhxoVFwIIA6zTB0O4UZqnFPXjeDwHhga3gWpi2cYdPKl5sqfa8wrpcMmoKD968wY6roeLL0HDtfLmT6CPf2CGTRmOvkiPcT5er0P8+V8zTWy186KPfXlvzZ7u2ygN/ZBEpAq/NgBpMqA9KqRB6q6PLHNIiT4f7x8YuprMWUTi+V8vkAfF+3ut2KjTvzT/nNyrA+1bOoY6Kc/+eycxl/DOZlewj6qGturDDEwA7rO5aIOBlrRL78QkYG2Mx2fCJIOSpxmG7+AgKg9OAMJlZ8X/JPzTkvrFYaykif5f1CI9gyhjxzIymSdMpMlVouWM8wV/rPpw2ThoBU2k0I6pyExARLGYzIgLo7aVAJEj8++3gDhnzNLBSrhZtcljvAIkHCtWg4lXa2b/4iwTwzhfE77CiT+EadZgKDgMg/xPtW81y38tiPy9fO7U+9wl/C9UciF55Xz37Vy6qIQamtN+GfZIrHNyhQiza++jzAIC650ndilnMVpnKq2gWWLTp1FdG4mx5D1nKbCOR8+BF/ANKxtGovZ8VacO06/eCZwaZoLF8LhnIgLjmYGQt9DJusskuHi6NT5kLBAb2cGgsYJmTvtjWyHF1+ZOJZfdQy7dCdEmKgLWTV7sdfH39fNBI0QEdRQKY4kiKLMgJwUh0I5aWNL6h453Af+XReBODma4CAqOYfc+1W8xScQ5qF/mUdtsydB5TOQkxNpkGDoelc9urhBZWPdRdwHrjwkICfmwWBOAuSkd0nSXcPtWG/yIsuv7hi+87uFG4WcOOHXcmtXCgle5CzDvwAxrX1IVEgfkUzilSbeqbmyPR1UvA1AUJdwpxemJ+eQy2cxTNLsnTYKiUBQcuYPg5+AEDt2dtyuQOLSIToWLPOV7XEE4vh3ACBQ0pWBXKWxFYd990dPFm1j/WLopEs+5HHkQ841FbaXtQ8BklZ0z93ly2OjkEAHLNDWYcvWskeJlQ1LVuUK6S+525JCH4BsFMLtMrgPqeY/0uwKqfasBcdW6uzq/KYOA7lKD+UStT9YpwqpxYBRikA23fU1klfWEzmc6/D18xuG2b2Q26qnHv43LipPCsSITyeB5LVHNuuxUoi2soKxOvetvDvxYd0rgY1CLuJkOV1jb1EVIoIJEqk3Dp6BnMKHKwESFFJn1xWFSNv4LL8pfH5wAsTtAwlT6HS+w8qRvFY3RF6/dOpdvHnLAtnpGJ7a2+O8NlncEVndxmpDK0uHG7kfInjYXoilwhv+T/AP6CkKEOXDba919z2ZrJVCJg+3cLLSxjoFk3WJ3UY9UoU0bMVCagKQWjw+bxUIdVOGYLLYdq0UIg2tbas3OI/v2r0/HTrRbqESeew3e0+3y9apq0u/tHjgUGp8rRDpqeOwOkk5t5EneWNSIFuFCCxIhX7kG4VsTBbLgolIk5YLzuzmqdvjxX07L0BcMGBXei8BYQK6DQrZOHUbgfANdnEhw9ZeJSqvX98xVKMV7k7t9kPa09qp99AImjF6q+rMXRH1IZlEQiMfAhGhVNwnv4hJ2wBBBx11UFf1OTZ7p7VCuNeeufXwBQACoZyr+srNXlFIBHKVZvyFjdIQGlm1OBPufCoQat5K76S+htavAuGG1sI3qnbvGAZTtW+zfjzrROfHCZHbYcdw08oiJBO7cvQP5UdfrVtZfZ852UvUjDoctVF9dOqt+vH0oWYKTj34kGrVMfS+ST3NM2vnGr/ABwMmPkQsVxgYTj5EeoCnPzIYZm3oGKa/1A6ZyRKvvtNZzyY5LL9tZa28+vunQMi2cX9QFVL+0S57amWxYz/p7Qrti+gwCOSiJqsICul51IP6KV7GBKh3yD31vJUlIyOX2PBNQyX4bYuxki9wyYeIU6cCOfd0zX2IG+TLau2myBdY6RPiQmEMOIz5zsPqLm42TS7vqP8nhWQjvqlneDswWRsgD7kpwrdE5AZir/k2tVVd+9QXoeMqjKfw4G+v+URo6GcsA8IYUlyNBcOJy8Y1jV8lun7tsmNb15XT0UcXb5HIEDAPN6YkY8B4xj0MDeM1y/Ajxh9ru7pXxfMYl61AXrGz/uuxrDgA/wiDJxHJ+YjH6ZaI8JLmMh5C4fsjyIpJdxUEZwUzKIQKtomEDMz7wETG5H+SHONgGj4Oxn+mNDJv82V7w0SG4efUzNqdCSQzHH7p1BMWHVwMXZHyYGLWucyHshKK8NrDEAcYtSBQYT5RINMGR4ZE7yFqa/cnOBRFRsTv0Aij8jFTFqvbJKt7VNrk3Xsg4bWaBrT8ZtZJQsI9kfdtnYwuq9Tn03yPkOQwEoYpYJDUrzY74lBbNf0Mh4sCiTeq/L4wbH5z1ymH9S2r7V2qIU4s/dRHGlT8hQ/ptgrJb4lEFjd9mWzg/SHWSqdo5SgeHyKJspimnEj/gWFNJGQC4ntr5dLLBXN1hCO7d7iyT1sWcR5KRDLLwMlHC2tZ9wmXX02U60LXsNMB+FvsiyQs6/QIc+UeYWrWY0sigMiFkfnxQxA+qCNz5mmsZMcu6RL2Iwu3b6dsAKHSsBtjdSwP7RZKn3DYv0n1rU//p7GsRzbe+84UspvElfPELJ0J9OnFuy7YKp7WILMeEpJpz0xFFtFzZCTC3XWdpfWMGBILvUflVtNPNoYqmicl4HaVkakjIdFnqpbPccXX2mL9upUld3Ifq7nWx0z4eZG1A+k2MGRK0CSTs4RCN6X8e42siDAJns+oMEZMkkPtRyirmQ3+uE2V4XA7Exy2NDbuPD7ups8kbJu9r2zeyfLbub3v7OGQ0Bd5H/MIT1Jl0uCHRfJp8DzzWtTRh6k/OpeUSw8tVehu6JwTmQaU5gFRhY86A+gZDdXzs0n10ZqyLhqqv8FITd0NEn16Z++GYRpajHNOlv/+BFUXp77nN3J3RYKZJrdHhkMeE9EJpKoNoTJhvjVXfprn2+tUxSnNmFt3/6bcWI0BxBisFWbA87RSTLvCnGuZw8gO4+mP2lNZI+obHAnDsDMvSyYBLeLTl51JJ2l08XCm3L8p5KFTs6LZun0QWT1q2Ie1C4+GJI3I5PdeWXRJHGkeaadzF2VyL09+1zmMgCEzrMMUOR+nkmLiOyZcO55szUhkBulT58c9Iwnee9qsA+72HcYQp5TG+deBgs2f3ZGpWcFi7T8jsh7IWg6BlG3144Sh9Bih7HHLHvvk6aPTP1xqm5pRZmZljyW4CgMfdcUrv+JhlYpC+SZVjeMnqfgxEcHS5O9f62/SNWyuuk/ZHJ9MCG3dub7+Y7pnT1IdAOEqbL9NJYf9y1Nf9oi+WIYnDUUdXnhVLZOL/PLlKCHCVlWN6k8Ex5OrPWS7DLHqovHoUoQHvM8a0dnuz6b+cZrDsgrmQEhsJo35b5V/lWByeQKS17d3DLUC2+r7KtNYjAEHiBCTso2P45I88kspjIxEzCoOyYjMYUWUP6+hm6pWFTLyxEURQpW4CJZ6jUR5VFsitmnq5hmfLnTNTyHUKSxgtqcR5ZLJqncIhOiYGtbvntYMyUHf8CuGIVUI38ikVCK5ThgJiATXkXhEmayQKBGOHBfWpA/HVKARfbSwUQRpiXKh10z5rEiaqJQolpBgtvSJtuZ7GN9wyYRSZ08XEoF6gyPHsisQQfJNs7dsf5DKrUJyImXw5KVCTSzaanWA9xo9RXEggAk0wjIRjeiT0dMziiEw2IhDkMySzdUHC9VIeBbX/sBMMYDvtJITERx14HCPViqugUiISxqB3Hc7I1+rOL1/RVK2K4F0YrcQ+1KBqLkLVi/hCFmrEWSDwWqSRBiJB5amlQgCY6j9egNG1VFnRksWotIk6xUlUqnB+hfvsc9D/Yjy4Iqus6rPZJEWBXHdSuRIIVEgpUHw5ELDuyYSfTGZoI4bR46N6dYrFnnodorRSBFDcm2kDGq/4hdMlhF5cJBMCfMDN9JzDomgpRsFInFgab9AHEzjBYKpfFMVlXComgIQCgTBbDSgX9PgVlWKp/yMNW6yRpnPOCw1rbMKBS9cb05QfGAjLV397V8R3rSwvr5+wCjoDIvYv4nEMEeJHAGRpe1NGxSAfeRUw+VU3PgIcfs4FOmt7AGipy3ilSJ0VvvAsGMKD+uNpwt6jmjtkSGqNY6kCIdU74TEIN4rvDiXTgYKeSLONUdvkp8+gygKZtC4wjjUcuUaXyE8LO15HCFMLAHxrigaNzmJcW0Q4noI4XuH8LOvEQXYVfXsbG0JjrNU6shhIZw1lc2NawaHM40dCjdbj2iMbp6NjV4ED6ZTlXO02JqIEDxr6ztd/G6H+32m/butDcKNFosz90VK5zuC9EoAuQMgwqDVyKPFjWocsWE5aK8pkN1kH3EwCciNDukMDLVLxF4i0kpkvxSvF5FVObgrftG6w0GqYzYhZizRGM2k8atRTqjGZ9uIxWpSe9YYiTVeIbw1Il63hmPw0gUKjvlKZAuEw/SIXE0Xd17iLcfwvTbGU0bE8UbCWHvExsYvuJglhnVhjZfPFoYo1MbNElV2wEnWOA0sJ8Fnrhy3FzpxCBPLMXkLi4DVM1235ijZDMSaxTiUIgZwoUExvwESw/SinzcZKIBDWPMNDiZQGnkb9StUCj5DIvZ2rUSRE9+vQMq24BjliG5NNU0/fiPx35GBTysmi/ZHlJpipLcIB5HQsMrJERgOxFtM9CoahCP2iIUssZM1+jXH6mWTxVQmDX6NkGWqkCa2mEzDYawR9bgxNZ1NVBA82SDqO9jOHGG5xhkFVSPVL+0Ns8HtDsJRy4xRidt750pHUF4ShKGMLlE7jyjZd6MBea0t7oMB8Lt3xwq5I/h7BPIQhXRGRUAQuv52y4CwQjgCP5X1N0ajAXuJx1uAjJSh0tuCI8TD5BUcfD8BGVkQ8N+QychApgmV2LJCQpzrJoQe53jvAmSiHTDwAQgihyMgtQDxchpCH0/MSRXCsX9CgGsoBGGsEXecQ1pbQz9dYJgtLsh7lKmN4h88VSkHIl9EIRyYKeAIQGYAoXW2pAqcvZhF3kMkccsxry0BeR0opP7f/wFVg1jJPsX2wgAAAABJRU5ErkJggg==\" alt=\"\" class=\"wp-image-1276\" style=\"object-fit:cover\"/>\n\n<p>Tired of the endless grind of crafting content, SEO titles, meta descriptions, social media posts, and FAQs?&nbsp;</p>\n\n<p>We get it! Creating high-quality, optimized content can be challenging and time-consuming. That\'s why we\'re thrilled to introduce AIOSEO\'s new <strong>AI Content Generator</strong>!</p>\n\n<p>Automatically generate content snippets like:</p>\n\n<p>✅ FAQs<br>✅ Key points<br>✅ Social media posts<br>✅ Email copy<br>✅ SEO titles and meta descriptions&nbsp;</p>\n\n<p>... and much more to come!</p>\n\n<p>Update to AIOSEO 4.8.4 now to unlock these powerful AI features and transform your content creation process! 🚀</p>', 'success', '[\"4-x\",\"lite\"]', 1270, NULL, '2025-07-09 13:36:07', NULL, 'Learn More', 'https://aioseo.com/new-ai-content-generator/?utm_source=WordPress&utm_medium=plugin-notification&utm_campaign=aioseo-484-v4-x-lite', 'Get AIOSEO Pro', 'https://aioseo.com/lite-upgrade/?utm_source=WordPress&utm_medium=plugin-notification&utm_campaign=aioseo-484-v4-x-lite', 0, 0, '2025-10-24 08:08:56', '2025-10-24 08:08:56'),
(6, '68fb3418e6638', NULL, '[New] Get Indexing Data Right Inside WordPress!', '<p>Worried Google\'s not seeing your amazing WordPress content? 🤔&nbsp;</p>\n\n<p>AIOSEO 4.8.2 introduces the <strong>Index Status Report</strong>, giving you crystal-clear visibility into what <strong>Google\'s indexing</strong> (and what it\'s missing!). <strong>Uncover hidden indexing issues</strong>, see post-level details, and track your rich results—all within your familiar WordPress dashboard.&nbsp;</p>\n\n<p>Stop losing traffic and ensure your hard work gets seen.&nbsp;</p>\n\n<p>Update to AIOSEO 4.8.2 today and take control of your website’s visibility! 🚀</p>', 'success', '[\"4-x\",\"lite\"]', 1249, NULL, '2025-05-22 15:19:11', NULL, 'Learn More', 'https://aioseo.com/introducing-index-status-report/?utm_source=WordPress&utm_medium=plugin-notification&utm_campaign=aioseo-482-v4-x-lite', 'Get AIOSEO Pro', 'https://aioseo.com/lite-upgrade/?utm_source=WordPress&utm_medium=plugin-notification&utm_campaign=aioseo-482-v4-x-lite', 0, 0, '2025-10-24 08:08:56', '2025-10-24 08:08:56'),
(7, '68fb3418e7b4c', NULL, '[New] Supercharged Crawl Cleanup and Query Arg Monitoring! 🚀', '<p>Is your WordPress site slowing down? Or are AI bots scraping your content? 🧐</p>\n\n<p><strong>AIOSEO 4.8.0 puts you in control with</strong>:<br>🧹 <strong>Supercharged Crawl Cleanup</strong> – Stop search engines from indexing unnecessary URLs.<br>📊 <strong>Advanced Query Monitoring</strong> – Optimize UTM parameters automatically.<br>🛡️ <strong>Bot Control</strong> – Block unauthorized AI crawlers.<br>🔍 <strong>Internal Search Optimization</strong> – Prevent spam &amp; boost performance.<br><br>🔥 Keep your site fast, secure, and SEO-friendly. Update now! 🚀</p>', 'success', '[\"4-x\",\"lite\"]', 1222, NULL, '2025-03-11 00:00:00', NULL, 'Learn More', 'https://aioseo.com/introducing-aioseo-4-8-0-advanced-crawl-features/?utm_source=WordPress&utm_medium=plugin-notification&utm_campaign=480-v4-x-lite', 'Get AIOSEO Pro', 'https://aioseo.com/lite-upgrade/?utm_source=WordPress&utm_medium=plugin-notification&utm_campaign=480-v4-x-lite', 0, 0, '2025-10-24 08:08:56', '2025-10-24 08:08:56'),
(8, '68fb3418e8f72', NULL, '[New] Smarter Keyword Rank Tracking &amp; WooCommerce SEO Made Easy!🤩', '<p>We just released AIOSEO 4.7.8 and it’s loaded with some exciting updates!</p>\n\n<p>The top ones include:</p>\n\n<p>👉🏼 <strong>Smarter Keyword Rank Tracker</strong>: Our Keyword Rank Tracker just got some massive upgrades you don’t want to miss. Now you can get related keywords, import keywords from GSC and more.</p>\n\n<p>👉🏼 <strong>Support for WooCommerce Product Attributes</strong>: Setting product attributes in WordPress just got way easier. Plus, you can also export product attributes! </p>\n\n<p>Update to AIOSEO 4.7.8 now and take your SEO to another level.</p>', 'success', '[\"4-x\",\"lite\"]', 1213, NULL, '2025-01-28 00:00:00', NULL, 'Learn More', 'https://aioseo.com/smarter-keyword-rank-tracking-woocommerce-seo-made-easy/?utm_source=WordPress&utm_medium=plugin-notification&utm_campaign=478-v4-x-lite', 'Get AIOSEO Pro', 'https://aioseo.com/lite-upgrade/?utm_source=WordPress&utm_medium=plugin-notification&utm_campaign=478-v4-x-lite', 0, 0, '2025-10-24 08:08:56', '2025-10-24 08:08:56'),
(9, '68fb3418ea321', NULL, 'BuddyPress, Web Stories, and Enhanced Author SEO — An All in One Update! 🚀!', '<p>We just released AIOSEO 4.7.6 and it’s loaded with some exciting updates!</p>\n\n<p>The top ones include:<br><br>🤩 <strong>BuddyPress Integration:</strong> Fully optimize SEO settings for BuddyPress content types, including user profiles, activity streams, and more.<br>🤩 <strong>Google Web Stories Integration:</strong> Take full control of your SEO settings for Web Stories, resulting in more eyeballs on your content.<br>🤩 <strong>Author SEO Improvements:</strong> Effortlessly showcase Google\'s E-E-A-T guidelines and boost your site\'s credibility.</p>\n\n<p>Update to AIOSEO 4.7.6 now and take your SEO to another level 💪🏼</p>', 'success', '[\"4-x\",\"lite\"]', 1192, NULL, '2024-12-12 00:00:00', NULL, 'Learn More', 'https://aioseo.com/new-aioseo-4-7-6-buddypress-web-stories-integration-author-seo-improvements?utm_source=WordPress&utm_medium=plugin-notification&utm_campaign=476-v4-x-lite', 'Get AIOSEO Pro', 'https://aioseo.com/lite-upgrade/?utm_source=WordPress&utm_medium=plugin-notification&utm_campaign=476-v4-x-lite', 0, 0, '2025-10-24 08:08:56', '2025-10-24 08:08:56'),
(10, '68fb3418eb742', NULL, '[New] Meet Your New Writing Assistant ✍️!', '<p>🚀 New Feature Alert!&nbsp;</p>\n\n<p>We\'re thrilled to announce the release of our groundbreaking feature —<strong>Writing Assistant</strong>, powered by AIOSEO and SEOBoost 🥳</p>\n\n<p><strong>The Writing Assistant is your new personal guide to crafting SEO-friendly content right inside WordPress! 📝 </strong></p>\n\n<p>No more guesswork—just optimized content that ranks.</p>\n\n<p>Update to AIOSEO 4.7.4 now and unlock this revolutionary superpower!</p>', 'success', '[\"4-x\",\"lite\"]', 1166, NULL, '2024-11-05 00:00:00', NULL, 'Learn More', 'https://aioseo.com/new-revolutionize-your-content-creation-with-aioseos-writing-assistant/?utm_source=WordPress&utm_medium=plugin-notification&utm_campaign=474-v4-x-lite', 'Get AIOSEO Pro', 'https://aioseo.com/lite-upgrade/?utm_source=WordPress&utm_medium=plugin-notification&utm_campaign=474-v4-x-lite', 0, 0, '2025-10-24 08:08:56', '2025-10-24 08:08:56');
INSERT INTO `abuhasdha_aioseo_notifications` (`id`, `slug`, `addon`, `title`, `content`, `type`, `level`, `notification_id`, `notification_name`, `start`, `end`, `button1_label`, `button1_action`, `button2_label`, `button2_action`, `dismissed`, `new`, `created`, `updated`) VALUES
(11, '68fb341907067', NULL, '[New] SEO Email Reports and Bulk CSV Imports/Exports to Enhance SEO Management', '<p>🚀 New Feature Alert! </p>\n\n<p>AIOSEO 4.7.2 just dropped with two killer features - </p>\n\n<ol class=\"wp-block-list\">\n<li><strong>SEO Email Reports</strong><br>👋 Say goodbye to manual SEO performance tracking and hello to laser-focused insights delivered straight to your inbox! 📥</li>\n\n<li><strong>Bulk CSV Import/Export</strong><br>⚡️The new Bulk CSV tool lets you manage settings across your entire site in a snap. 🔄 Export, edit, and import easily – it\'s like having an SEO superpower at your fingertips! 💪</li>\n</ol>\n\n<p>Update to AIOSEO 4.7.2 now and unlock these game-changing features!</p>\n\n<p></p>', 'success', '[\"4-x\",\"lite\"]', 1156, NULL, '2024-10-08 00:00:00', NULL, 'Learn More', 'https://aioseo.com/new-seo-email-reports-and-bulk-csv-imports/?utm_source=WordPress&utm_medium=plugin-notification&utm_campaign=472-v4-x-lite', 'Get AIOSEO Pro', 'https://aioseo.com/lite-upgrade/?utm_source=WordPress&utm_medium=plugin-notification&utm_campaign=472-v4-x-lite', 0, 0, '2025-10-24 08:08:57', '2025-10-24 08:08:57'),
(12, '68fb3419083cc', NULL, '[New] Keyword Rank Tracker: Track Your SEO Performance with Ease ?', '<p>Drumroll, please! AIOSEO 4.7.0 has arrived with a super-awaited feature: the <strong>Keyword Rank Tracker</strong> ?</p>\n\n<p>Now, you can finally track your keyword performance with ease, right from your WordPress dashboard. No more guessing games!</p>\n\n<p>Key features:</p>\n\n<p>✅ Track up to 100 keywords<br>✅ Group keywords for better organization<br>✅ Seamless integration with post-meta box</p>\n\n<p>Get ready to dominate SERPs!</p>\n\n<p><strong>Update to AIOSEO 4.7.0 now and unlock this SEO powerhouse.</strong></p>', 'success', '[\"4-x\",\"lite\"]', 1148, NULL, '2024-09-10 00:00:00', NULL, 'Learn More', 'https://aioseo.com/new-track-your-keywords-effortlessly-in-wordpress-with-aioseo-4-7-0/?utm_source=WordPress&utm_medium=plugin-notification&utm_campaign=aioseo-470-v4-x-lite', 'Get AIOSEO Pro', 'https://aioseo.com/lite-upgrade/?utm_source=WordPress&utm_medium=plugin-notification&utm_campaign=aioseo-470-v4-x-lite', 0, 0, '2025-10-24 08:08:57', '2025-10-24 08:08:57');

-- --------------------------------------------------------

--
-- Table structure for table `abuhasdha_aioseo_posts`
--

CREATE TABLE `abuhasdha_aioseo_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `title` text DEFAULT NULL,
  `description` text DEFAULT NULL,
  `keywords` mediumtext DEFAULT NULL,
  `keyphrases` longtext DEFAULT NULL,
  `page_analysis` longtext DEFAULT NULL,
  `primary_term` longtext DEFAULT NULL,
  `canonical_url` text DEFAULT NULL,
  `og_title` text DEFAULT NULL,
  `og_description` text DEFAULT NULL,
  `og_object_type` varchar(64) DEFAULT 'default',
  `og_image_type` varchar(64) DEFAULT 'default',
  `og_image_url` text DEFAULT NULL,
  `og_image_width` int(11) DEFAULT NULL,
  `og_image_height` int(11) DEFAULT NULL,
  `og_image_custom_url` text DEFAULT NULL,
  `og_image_custom_fields` text DEFAULT NULL,
  `og_video` varchar(255) DEFAULT NULL,
  `og_custom_url` text DEFAULT NULL,
  `og_article_section` text DEFAULT NULL,
  `og_article_tags` text DEFAULT NULL,
  `twitter_use_og` tinyint(1) DEFAULT 0,
  `twitter_card` varchar(64) DEFAULT 'default',
  `twitter_image_type` varchar(64) DEFAULT 'default',
  `twitter_image_url` text DEFAULT NULL,
  `twitter_image_custom_url` text DEFAULT NULL,
  `twitter_image_custom_fields` text DEFAULT NULL,
  `twitter_title` text DEFAULT NULL,
  `twitter_description` text DEFAULT NULL,
  `seo_score` int(11) NOT NULL DEFAULT 0,
  `schema` longtext DEFAULT NULL,
  `schema_type` varchar(20) DEFAULT 'default',
  `schema_type_options` longtext DEFAULT NULL,
  `pillar_content` tinyint(1) DEFAULT NULL,
  `robots_default` tinyint(1) NOT NULL DEFAULT 1,
  `robots_noindex` tinyint(1) NOT NULL DEFAULT 0,
  `robots_noarchive` tinyint(1) NOT NULL DEFAULT 0,
  `robots_nosnippet` tinyint(1) NOT NULL DEFAULT 0,
  `robots_nofollow` tinyint(1) NOT NULL DEFAULT 0,
  `robots_noimageindex` tinyint(1) NOT NULL DEFAULT 0,
  `robots_noodp` tinyint(1) NOT NULL DEFAULT 0,
  `robots_notranslate` tinyint(1) NOT NULL DEFAULT 0,
  `robots_max_snippet` int(11) DEFAULT NULL,
  `robots_max_videopreview` int(11) DEFAULT NULL,
  `robots_max_imagepreview` varchar(20) DEFAULT 'large',
  `images` longtext DEFAULT NULL,
  `image_scan_date` datetime DEFAULT NULL,
  `priority` float DEFAULT NULL,
  `frequency` tinytext DEFAULT NULL,
  `videos` longtext DEFAULT NULL,
  `video_thumbnail` text DEFAULT NULL,
  `video_scan_date` datetime DEFAULT NULL,
  `local_seo` longtext DEFAULT NULL,
  `breadcrumb_settings` longtext DEFAULT NULL,
  `limit_modified_date` tinyint(1) NOT NULL DEFAULT 0,
  `options` longtext DEFAULT NULL,
  `ai` longtext DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `abuhasdha_aioseo_posts`
--

INSERT INTO `abuhasdha_aioseo_posts` (`id`, `post_id`, `title`, `description`, `keywords`, `keyphrases`, `page_analysis`, `primary_term`, `canonical_url`, `og_title`, `og_description`, `og_object_type`, `og_image_type`, `og_image_url`, `og_image_width`, `og_image_height`, `og_image_custom_url`, `og_image_custom_fields`, `og_video`, `og_custom_url`, `og_article_section`, `og_article_tags`, `twitter_use_og`, `twitter_card`, `twitter_image_type`, `twitter_image_url`, `twitter_image_custom_url`, `twitter_image_custom_fields`, `twitter_title`, `twitter_description`, `seo_score`, `schema`, `schema_type`, `schema_type_options`, `pillar_content`, `robots_default`, `robots_noindex`, `robots_noarchive`, `robots_nosnippet`, `robots_nofollow`, `robots_noimageindex`, `robots_noodp`, `robots_notranslate`, `robots_max_snippet`, `robots_max_videopreview`, `robots_max_imagepreview`, `images`, `image_scan_date`, `priority`, `frequency`, `videos`, `video_thumbnail`, `video_scan_date`, `local_seo`, `breadcrumb_settings`, `limit_modified_date`, `options`, `ai`, `created`, `updated`) VALUES
(1, 1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'default', 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'default', 'default', NULL, NULL, NULL, NULL, NULL, 0, '{\"blockGraphs\":[],\"customGraphs\":[],\"default\":{\"data\":{\"Article\":[],\"Course\":[],\"Dataset\":[],\"FAQPage\":[],\"Movie\":[],\"Person\":[],\"Product\":[],\"ProductReview\":[],\"Car\":[],\"Recipe\":[],\"Service\":[],\"SoftwareApplication\":[],\"WebPage\":[]},\"graphName\":\"\",\"isEnabled\":true},\"graphs\":[]}', 'default', NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'large', NULL, '2025-10-24 08:09:14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '{\"linkFormat\":{\"internalLinkCount\":0,\"linkAssistantDismissed\":false},\"primaryTerm\":{\"productEducationDismissed\":false}}', NULL, '2025-10-24 08:09:14', '2025-10-24 08:09:14'),
(2, 9, NULL, NULL, NULL, '{\"focus\":{\"keyphrase\":\"\",\"score\":0,\"analysis\":{\"keyphraseInTitle\":{\"score\":0,\"maxScore\":9,\"error\":1}}},\"additional\":[]}', '{\"analysis\":{\"basic\":{\"lengthContent\":{\"error\":1,\"maxScore\":9,\"score\":6}},\"title\":{\"titleLength\":{\"error\":1,\"maxScore\":9,\"score\":1}},\"readability\":{\"contentHasAssets\":{\"error\":1,\"maxScore\":5,\"score\":0}}}}', NULL, NULL, NULL, NULL, 'default', 'default', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 0, 'default', 'default', NULL, NULL, NULL, NULL, NULL, 0, '{\"blockGraphs\":[],\"customGraphs\":[],\"default\":{\"data\":{\"Article\":[],\"Course\":[],\"Dataset\":[],\"FAQPage\":[],\"Movie\":[],\"Person\":[],\"Product\":[],\"ProductReview\":[],\"Car\":[],\"Recipe\":[],\"Service\":[],\"SoftwareApplication\":[],\"WebPage\":[]},\"graphName\":\"WebPage\",\"isEnabled\":true},\"graphs\":[]}', 'default', NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, -1, -1, 'large', NULL, '2025-10-24 08:26:42', NULL, 'default', NULL, NULL, NULL, NULL, NULL, 0, '{\"linkFormat\":{\"internalLinkCount\":0,\"linkAssistantDismissed\":false},\"primaryTerm\":{\"productEducationDismissed\":false}}', '{\"faqs\":[],\"keyPoints\":[],\"titles\":[],\"descriptions\":[],\"socialPosts\":{\"email\":[],\"linkedin\":[],\"twitter\":[],\"facebook\":[],\"instagram\":[]}}', '2025-10-24 08:10:54', '2025-10-24 08:26:42'),
(3, 11, NULL, NULL, NULL, '{\"focus\":{\"keyphrase\":\"\",\"score\":0,\"analysis\":{\"keyphraseInTitle\":{\"score\":0,\"maxScore\":9,\"error\":1}}},\"additional\":[]}', '{\"analysis\":{\"basic\":{\"lengthContent\":{\"error\":1,\"score\":1,\"maxScore\":5}},\"title\":{\"titleLength\":{\"score\":6,\"maxScore\":9,\"error\":1},\"errors\":1},\"readability\":{\"contentHasAssets\":{\"error\":1,\"score\":1,\"maxScore\":5}}}}', NULL, NULL, NULL, NULL, 'default', 'default', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 0, 'default', 'default', NULL, NULL, NULL, NULL, NULL, 67, '{\"blockGraphs\":[],\"customGraphs\":[],\"default\":{\"data\":{\"Article\":[],\"Course\":[],\"Dataset\":[],\"FAQPage\":[],\"Movie\":[],\"Person\":[],\"Product\":[],\"ProductReview\":[],\"Car\":[],\"Recipe\":[],\"Service\":[],\"SoftwareApplication\":[],\"WebPage\":[]},\"graphName\":\"WebPage\",\"isEnabled\":true},\"graphs\":[]}', 'default', NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, -1, -1, 'large', NULL, '2025-10-24 08:26:42', NULL, 'default', NULL, NULL, NULL, NULL, NULL, 0, '{\"linkFormat\":{\"internalLinkCount\":0,\"linkAssistantDismissed\":false},\"primaryTerm\":{\"productEducationDismissed\":false}}', '{\"faqs\":[],\"keyPoints\":[],\"titles\":[],\"descriptions\":[],\"socialPosts\":{\"email\":[],\"linkedin\":[],\"twitter\":[],\"facebook\":[],\"instagram\":[]}}', '2025-10-24 08:11:50', '2025-10-24 08:26:42'),
(4, 13, NULL, NULL, NULL, '{\"focus\":{\"keyphrase\":\"\",\"score\":0,\"analysis\":{\"keyphraseInTitle\":{\"score\":0,\"maxScore\":9,\"error\":1}}},\"additional\":[]}', '{\"analysis\":{\"basic\":{\"lengthContent\":{\"error\":1,\"score\":1,\"maxScore\":5}},\"title\":{\"titleLength\":{\"score\":6,\"maxScore\":9,\"error\":1},\"errors\":1},\"readability\":{\"contentHasAssets\":{\"error\":1,\"score\":1,\"maxScore\":5}}}}', NULL, NULL, NULL, NULL, 'default', 'default', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 0, 'default', 'default', NULL, NULL, NULL, NULL, NULL, 67, '{\"blockGraphs\":[],\"customGraphs\":[],\"default\":{\"data\":{\"Article\":[],\"Course\":[],\"Dataset\":[],\"FAQPage\":[],\"Movie\":[],\"Person\":[],\"Product\":[],\"ProductReview\":[],\"Car\":[],\"Recipe\":[],\"Service\":[],\"SoftwareApplication\":[],\"WebPage\":[]},\"graphName\":\"WebPage\",\"isEnabled\":true},\"graphs\":[]}', 'default', NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, -1, -1, 'large', NULL, '2025-10-24 08:26:42', NULL, 'default', NULL, NULL, NULL, NULL, NULL, 0, '{\"linkFormat\":{\"internalLinkCount\":0,\"linkAssistantDismissed\":false},\"primaryTerm\":{\"productEducationDismissed\":false}}', '{\"faqs\":[],\"keyPoints\":[],\"titles\":[],\"descriptions\":[],\"socialPosts\":{\"email\":[],\"linkedin\":[],\"twitter\":[],\"facebook\":[],\"instagram\":[]}}', '2025-10-24 08:12:32', '2025-10-24 08:26:42'),
(5, 15, NULL, NULL, NULL, '{\"focus\":{\"keyphrase\":\"\",\"score\":0,\"analysis\":{\"keyphraseInTitle\":{\"score\":0,\"maxScore\":9,\"error\":1}}},\"additional\":[]}', '{\"analysis\":{\"basic\":{\"lengthContent\":{\"error\":1,\"score\":1,\"maxScore\":5}},\"title\":{\"titleLength\":{\"score\":6,\"maxScore\":9,\"error\":1},\"errors\":1},\"readability\":{\"contentHasAssets\":{\"error\":1,\"score\":1,\"maxScore\":5}}}}', NULL, NULL, NULL, NULL, 'default', 'default', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 0, 'default', 'default', NULL, NULL, NULL, NULL, NULL, 67, '{\"blockGraphs\":[],\"customGraphs\":[],\"default\":{\"data\":{\"Article\":[],\"Course\":[],\"Dataset\":[],\"FAQPage\":[],\"Movie\":[],\"Person\":[],\"Product\":[],\"ProductReview\":[],\"Car\":[],\"Recipe\":[],\"Service\":[],\"SoftwareApplication\":[],\"WebPage\":[]},\"graphName\":\"WebPage\",\"isEnabled\":true},\"graphs\":[]}', 'default', NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, -1, -1, 'large', NULL, '2025-10-24 08:26:42', NULL, 'default', NULL, NULL, NULL, NULL, NULL, 0, '{\"linkFormat\":{\"internalLinkCount\":0,\"linkAssistantDismissed\":false},\"primaryTerm\":{\"productEducationDismissed\":false}}', '{\"faqs\":[],\"keyPoints\":[],\"titles\":[],\"descriptions\":[],\"socialPosts\":{\"email\":[],\"linkedin\":[],\"twitter\":[],\"facebook\":[],\"instagram\":[]}}', '2025-10-24 08:13:22', '2025-10-24 08:26:42'),
(6, 17, NULL, NULL, NULL, '{\"focus\":{\"keyphrase\":\"\",\"score\":0,\"analysis\":{\"keyphraseInTitle\":{\"score\":0,\"maxScore\":9,\"error\":1}}},\"additional\":[]}', '{\"analysis\":{\"basic\":{\"lengthContent\":{\"error\":1,\"score\":1,\"maxScore\":5}},\"title\":{\"titleLength\":{\"score\":6,\"maxScore\":9,\"error\":1},\"errors\":1},\"readability\":{\"contentHasAssets\":{\"error\":1,\"score\":1,\"maxScore\":5}}}}', NULL, NULL, NULL, NULL, 'default', 'default', NULL, NULL, NULL, NULL, NULL, '', NULL, NULL, NULL, 0, 'default', 'default', NULL, NULL, NULL, NULL, NULL, 67, '{\"blockGraphs\":[],\"customGraphs\":[],\"default\":{\"data\":{\"Article\":[],\"Course\":[],\"Dataset\":[],\"FAQPage\":[],\"Movie\":[],\"Person\":[],\"Product\":[],\"ProductReview\":[],\"Car\":[],\"Recipe\":[],\"Service\":[],\"SoftwareApplication\":[],\"WebPage\":[]},\"graphName\":\"WebPage\",\"isEnabled\":true},\"graphs\":[]}', 'default', NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, -1, -1, 'large', NULL, '2025-10-24 08:26:42', NULL, 'default', NULL, NULL, NULL, NULL, NULL, 0, '{\"linkFormat\":{\"internalLinkCount\":0,\"linkAssistantDismissed\":false},\"primaryTerm\":{\"productEducationDismissed\":false}}', '{\"faqs\":[],\"keyPoints\":[],\"titles\":[],\"descriptions\":[],\"socialPosts\":{\"email\":[],\"linkedin\":[],\"twitter\":[],\"facebook\":[],\"instagram\":[]}}', '2025-10-24 08:14:27', '2025-10-24 08:26:42'),
(7, 26, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'default', 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'default', 'default', NULL, NULL, NULL, NULL, NULL, 0, '{\"blockGraphs\":[],\"customGraphs\":[],\"default\":{\"data\":{\"Article\":[],\"Course\":[],\"Dataset\":[],\"FAQPage\":[],\"Movie\":[],\"Person\":[],\"Product\":[],\"ProductReview\":[],\"Car\":[],\"Recipe\":[],\"Service\":[],\"SoftwareApplication\":[],\"WebPage\":[]},\"graphName\":\"\",\"isEnabled\":true},\"graphs\":[]}', 'default', NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'large', '[{\"image:loc\":\"\\/abuhasdha\\/wp-content\\/uploads\\/2025\\/10\\/about.png\"}]', '2025-10-26 04:08:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '{\"linkFormat\":{\"internalLinkCount\":0,\"linkAssistantDismissed\":false},\"primaryTerm\":{\"productEducationDismissed\":false}}', NULL, '2025-10-26 04:08:06', '2025-10-26 04:08:06'),
(8, 27, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'default', 'default', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 'default', 'default', NULL, NULL, NULL, NULL, NULL, 0, '{\"blockGraphs\":[],\"customGraphs\":[],\"default\":{\"data\":{\"Article\":[],\"Course\":[],\"Dataset\":[],\"FAQPage\":[],\"Movie\":[],\"Person\":[],\"Product\":[],\"ProductReview\":[],\"Car\":[],\"Recipe\":[],\"Service\":[],\"SoftwareApplication\":[],\"WebPage\":[]},\"graphName\":\"\",\"isEnabled\":true},\"graphs\":[]}', 'default', NULL, 0, 1, 0, 0, 0, 0, 0, 0, 0, NULL, NULL, 'large', '[{\"image:loc\":\"\\/abuhasdha\\/wp-content\\/uploads\\/2025\\/10\\/landing-scaled.jpg\"}]', '2025-10-26 04:08:06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, '{\"linkFormat\":{\"internalLinkCount\":0,\"linkAssistantDismissed\":false},\"primaryTerm\":{\"productEducationDismissed\":false}}', NULL, '2025-10-26 04:08:06', '2025-10-26 04:08:06');

-- --------------------------------------------------------

--
-- Table structure for table `abuhasdha_aioseo_seo_analyzer_results`
--

CREATE TABLE `abuhasdha_aioseo_seo_analyzer_results` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `data` text NOT NULL,
  `score` varchar(255) DEFAULT NULL,
  `competitor_url` varchar(255) DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abuhasdha_aioseo_writing_assistant_keywords`
--

CREATE TABLE `abuhasdha_aioseo_writing_assistant_keywords` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(40) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `country` varchar(10) NOT NULL DEFAULT 'us',
  `language` varchar(10) NOT NULL DEFAULT 'en',
  `progress` tinyint(3) DEFAULT 0,
  `keywords` mediumtext DEFAULT NULL,
  `competitors` mediumtext DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abuhasdha_aioseo_writing_assistant_posts`
--

CREATE TABLE `abuhasdha_aioseo_writing_assistant_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED DEFAULT NULL,
  `keyword_id` bigint(20) UNSIGNED DEFAULT NULL,
  `content_analysis_hash` varchar(40) DEFAULT NULL,
  `content_analysis` text DEFAULT NULL,
  `created` datetime NOT NULL,
  `updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abuhasdha_commentmeta`
--

CREATE TABLE `abuhasdha_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abuhasdha_comments`
--

CREATE TABLE `abuhasdha_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext NOT NULL,
  `comment_author_email` varchar(100) NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) NOT NULL DEFAULT '',
  `comment_type` varchar(20) NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `abuhasdha_comments`
--

INSERT INTO `abuhasdha_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2025-10-24 07:54:13', '2025-10-24 07:54:13', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com/\">Gravatar</a>.', 0, '1', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `abuhasdha_itsec_bans`
--

CREATE TABLE `abuhasdha_itsec_bans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `host` varchar(64) NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'ip',
  `created_at` datetime NOT NULL,
  `actor_type` varchar(20) DEFAULT NULL,
  `actor_id` varchar(128) DEFAULT NULL,
  `comment` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abuhasdha_itsec_dashboard_events`
--

CREATE TABLE `abuhasdha_itsec_dashboard_events` (
  `event_id` int(11) UNSIGNED NOT NULL,
  `event_slug` varchar(128) NOT NULL DEFAULT '',
  `event_time` datetime NOT NULL,
  `event_count` int(11) UNSIGNED NOT NULL DEFAULT 1,
  `event_consolidated` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abuhasdha_itsec_dashboard_lockouts`
--

CREATE TABLE `abuhasdha_itsec_dashboard_lockouts` (
  `id` int(11) UNSIGNED NOT NULL,
  `ip` varchar(40) DEFAULT NULL,
  `time` datetime NOT NULL,
  `count` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abuhasdha_itsec_distributed_storage`
--

CREATE TABLE `abuhasdha_itsec_distributed_storage` (
  `storage_id` bigint(20) UNSIGNED NOT NULL,
  `storage_group` varchar(40) NOT NULL,
  `storage_key` varchar(40) NOT NULL DEFAULT '',
  `storage_chunk` int(11) NOT NULL DEFAULT 0,
  `storage_data` longtext NOT NULL,
  `storage_updated` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abuhasdha_itsec_fingerprints`
--

CREATE TABLE `abuhasdha_itsec_fingerprints` (
  `fingerprint_id` bigint(20) UNSIGNED NOT NULL,
  `fingerprint_user` bigint(20) UNSIGNED NOT NULL,
  `fingerprint_hash` char(32) NOT NULL,
  `fingerprint_created_at` datetime NOT NULL,
  `fingerprint_approved_at` datetime NOT NULL,
  `fingerprint_data` longtext NOT NULL,
  `fingerprint_snapshot` longtext NOT NULL,
  `fingerprint_last_seen` datetime NOT NULL,
  `fingerprint_uses` int(11) NOT NULL DEFAULT 0,
  `fingerprint_status` varchar(20) NOT NULL,
  `fingerprint_uuid` char(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abuhasdha_itsec_firewall_rules`
--

CREATE TABLE `abuhasdha_itsec_firewall_rules` (
  `id` bigint(20) NOT NULL,
  `provider` varchar(20) NOT NULL,
  `provider_ref` varchar(128) NOT NULL,
  `name` varchar(255) NOT NULL,
  `vulnerability` varchar(128) NOT NULL,
  `config` text NOT NULL,
  `created_at` datetime NOT NULL,
  `paused_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abuhasdha_itsec_geolocation_cache`
--

CREATE TABLE `abuhasdha_itsec_geolocation_cache` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_host` varchar(40) NOT NULL,
  `location_lat` decimal(10,8) NOT NULL,
  `location_long` decimal(11,8) NOT NULL,
  `location_label` varchar(255) NOT NULL,
  `location_credit` varchar(255) NOT NULL,
  `location_meta` text NOT NULL,
  `location_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abuhasdha_itsec_lockouts`
--

CREATE TABLE `abuhasdha_itsec_lockouts` (
  `lockout_id` bigint(20) UNSIGNED NOT NULL,
  `lockout_type` varchar(25) NOT NULL,
  `lockout_start` datetime NOT NULL,
  `lockout_start_gmt` datetime NOT NULL,
  `lockout_expire` datetime NOT NULL,
  `lockout_expire_gmt` datetime NOT NULL,
  `lockout_host` varchar(40) DEFAULT NULL,
  `lockout_user` bigint(20) UNSIGNED DEFAULT NULL,
  `lockout_username` varchar(60) DEFAULT NULL,
  `lockout_active` int(1) NOT NULL DEFAULT 1,
  `lockout_context` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abuhasdha_itsec_logs`
--

CREATE TABLE `abuhasdha_itsec_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `module` varchar(50) NOT NULL DEFAULT '',
  `code` varchar(100) NOT NULL DEFAULT '',
  `data` longtext NOT NULL,
  `type` varchar(20) NOT NULL DEFAULT 'notice',
  `timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `init_timestamp` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `memory_current` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `memory_peak` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `url` varchar(500) NOT NULL DEFAULT '',
  `blog_id` bigint(20) NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `remote_ip` varchar(50) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `abuhasdha_itsec_logs`
--

INSERT INTO `abuhasdha_itsec_logs` (`id`, `parent_id`, `module`, `code`, `data`, `type`, `timestamp`, `init_timestamp`, `memory_current`, `memory_peak`, `url`, `blog_id`, `user_id`, `remote_ip`) VALUES
(1, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:\"notifications\";a:1:{i:0;s:6:\"digest\";}s:6:\"silent\";b:0;}', 'debug', '2025-10-25 22:42:10', '2025-10-25 22:42:10', 57407552, 57526376, 'wp-cron', 1, 0, '109.110.188.195'),
(2, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:\"notifications\";a:1:{i:0;s:6:\"digest\";}s:6:\"silent\";b:0;}', 'debug', '2025-10-26 23:04:14', '2025-10-26 23:04:14', 55601648, 55899408, 'wp-cron', 1, 0, '109.110.188.195'),
(3, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:\"notifications\";a:1:{i:0;s:6:\"digest\";}s:6:\"silent\";b:0;}', 'debug', '2025-10-27 23:24:03', '2025-10-27 23:24:02', 55601648, 55899408, 'wp-cron', 1, 0, '109.110.188.195'),
(4, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:\"notifications\";a:1:{i:0;s:6:\"digest\";}s:6:\"silent\";b:0;}', 'debug', '2025-10-29 09:00:28', '2025-10-29 09:00:28', 56637256, 56781536, 'https://fazrilsh.com/abuhasdha/', 1, 0, '182.2.167.96'),
(5, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:\"notifications\";a:1:{i:0;s:6:\"digest\";}s:6:\"silent\";b:0;}', 'debug', '2025-10-30 23:32:54', '2025-10-30 23:32:54', 55595936, 55899608, 'wp-cron', 1, 0, '109.110.188.195'),
(6, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:\"notifications\";a:1:{i:0;s:6:\"digest\";}s:6:\"silent\";b:0;}', 'debug', '2025-11-01 06:59:56', '2025-11-01 06:59:56', 56636936, 56776488, 'https://fazrilsh.com/abuhasdha/', 1, 0, '125.208.135.1'),
(7, 0, 'site-scanner', 'scan', 'a:1:{s:7:\"site_id\";i:0;}', 'process-start', '2025-11-01 13:56:28', '2025-11-01 13:56:27', 52029872, 52174392, 'https://fazrilsh.com/abuhasdha/wp-json/ithemes-security/v1/site-scanner/scans?_locale=user', 1, 1, '180.243.8.55'),
(8, 0, 'site-scanner', 'register-site', 'a:1:{s:7:\"site_id\";i:1;}', 'process-start', '2025-11-01 13:56:28', '2025-11-01 13:56:27', 52030120, 52174392, 'https://fazrilsh.com/abuhasdha/wp-json/ithemes-security/v1/site-scanner/scans?_locale=user', 1, 1, '180.243.8.55'),
(9, 8, 'site-scanner', 'register-site', 'a:4:{s:5:\"route\";s:17:\"api/register-site\";s:6:\"method\";s:4:\"POST\";s:4:\"body\";a:3:{s:3:\"url\";s:30:\"https://fazrilsh.com/abuhasdha\";s:7:\"keyPair\";a:2:{s:6:\"public\";s:64:\"D9w1Gnrp1RKDcGrnviWeNco2P5OBjmQRDuM365NMJuFisrwjRWx5fRH4OyZqXbpp\";s:6:\"secret\";s:172:\"OTY4NDU2MWMzZTNkZDc5MDcxNTI0OGM3MDVjYTdhYmEwY2QxM2E0MmQzMGM5YzU4ZTk3NDcwYjkyYWZjOTAxZHxlODc4MDEzODlkZjQwZTAzYTNhOGQ0NWI1NWQ1Y2JhMTY2OGM1ODM1ZjFhZWQ2NGNlZDA1ZWQzNjIxYmZjMGM2\";}s:12:\"verifyTarget\";s:83:\"https://fazrilsh.com/abuhasdha/wp-json/ithemes-security/v1/site-scanner/verify-scan\";}s:7:\"headers\";a:2:{s:12:\"Content-Type\";s:16:\"application/json\";s:6:\"Accept\";s:42:\"application/vnd.site-scanner.ithemes;v=1.1\";}}', 'process-update', '2025-11-01 13:56:28', '2025-11-01 13:56:27', 52054760, 52174392, 'https://fazrilsh.com/abuhasdha/wp-json/ithemes-security/v1/site-scanner/scans?_locale=user', 1, 1, '180.243.8.55'),
(10, 0, 'site-scanner', 'verify-scan::valid_secret', 'a:2:{s:6:\"params\";a:1:{s:6:\"secret\";s:172:\"OTY4NDU2MWMzZTNkZDc5MDcxNTI0OGM3MDVjYTdhYmEwY2QxM2E0MmQzMGM5YzU4ZTk3NDcwYjkyYWZjOTAxZHxlODc4MDEzODlkZjQwZTAzYTNhOGQ0NWI1NWQ1Y2JhMTY2OGM1ODM1ZjFhZWQ2NGNlZDA1ZWQzNjIxYmZjMGM2\";}s:6:\"public\";s:64:\"D9w1Gnrp1RKDcGrnviWeNco2P5OBjmQRDuM365NMJuFisrwjRWx5fRH4OyZqXbpp\";}', 'debug', '2025-11-01 13:56:31', '2025-11-01 13:56:30', 51904944, 52043272, 'https://fazrilsh.com/abuhasdha/wp-json/ithemes-security/v1/site-scanner/verify-scan', 1, 0, '207.246.255.60'),
(11, 8, 'site-scanner', 'register-site', 'a:1:{s:3:\"key\";s:228:\"v2.local.xWt_9wkpR7Tu9_wom_NAMj01KjhTeKBsgRFCZfHbPfVTLGfxn-0G5qcH4FLDlu6avCgID-VzxSaoraPScDt3QEzwIUoZBrIuPBviWVf8gKwjT2P31mMHcVeiNCjh0vt5Ge7sBZDiHx8tuWg3FKJaPG9My-YqKt6wKwegwWuyn5LY7SFk6MUqo65ZBeMgsn02odwB-hhVvE88BRgGT-3yQb0ZSOM\";}', 'process-stop', '2025-11-01 13:56:31', '2025-11-01 13:56:27', 52577560, 52837896, 'https://fazrilsh.com/abuhasdha/wp-json/ithemes-security/v1/site-scanner/scans?_locale=user', 1, 1, '180.243.8.55'),
(12, 7, 'site-scanner', 'scan', 'a:4:{s:5:\"route\";s:8:\"api/scan\";s:6:\"method\";s:4:\"POST\";s:4:\"body\";a:4:{s:9:\"wordpress\";s:5:\"6.8.3\";s:7:\"plugins\";a:3:{s:22:\"advanced-custom-fields\";s:5:\"6.6.2\";s:16:\"seo-by-rank-math\";s:7:\"1.0.256\";s:18:\"better-wp-security\";s:5:\"9.4.2\";}s:6:\"themes\";a:4:{s:9:\"abuhasdha\";s:3:\"1.0\";s:16:\"twentytwentyfive\";s:3:\"1.3\";s:16:\"twentytwentyfour\";s:3:\"1.3\";s:17:\"twentytwentythree\";s:3:\"1.6\";}s:11:\"mutedIssues\";a:0:{}}s:7:\"headers\";a:3:{s:12:\"Content-Type\";s:16:\"application/json\";s:6:\"Accept\";s:42:\"application/vnd.site-scanner.ithemes;v=1.1\";s:13:\"Authorization\";s:247:\"X-SiteRegistration v2.local.xWt_9wkpR7Tu9_wom_NAMj01KjhTeKBsgRFCZfHbPfVTLGfxn-0G5qcH4FLDlu6avCgID-VzxSaoraPScDt3QEzwIUoZBrIuPBviWVf8gKwjT2P31mMHcVeiNCjh0vt5Ge7sBZDiHx8tuWg3FKJaPG9My-YqKt6wKwegwWuyn5LY7SFk6MUqo65ZBeMgsn02odwB-hhVvE88BRgGT-3yQb0ZSOM\";}}', 'process-update', '2025-11-01 13:56:31', '2025-11-01 13:56:27', 52670112, 52837896, 'https://fazrilsh.com/abuhasdha/wp-json/ithemes-security/v1/site-scanner/scans?_locale=user', 1, 1, '180.243.8.55'),
(13, 7, 'site-scanner', 'scan', 'a:3:{s:6:\"action\";s:16:\"caching-response\";s:6:\"mapped\";a:2:{s:7:\"private\";b:1;s:7:\"max-age\";s:3:\"900\";}s:9:\"cache_key\";s:51:\"itsec-site-scanner-8ab94e172b4c5d060787080d6d75fecb\";}', 'process-update', '2025-11-01 13:56:31', '2025-11-01 13:56:27', 52670072, 52837896, 'https://fazrilsh.com/abuhasdha/wp-json/ithemes-security/v1/site-scanner/scans?_locale=user', 1, 1, '180.243.8.55'),
(14, 7, 'site-scanner', 'scan', 'a:2:{s:7:\"results\";a:4:{s:3:\"url\";s:30:\"https://fazrilsh.com/abuhasdha\";s:7:\"version\";s:3:\"1.1\";s:7:\"entries\";a:2:{s:9:\"blacklist\";a:1:{i:0;a:3:{s:14:\"report_details\";s:87:\"https://transparencyreport.google.com/safe-browsing/search?url=fazrilsh.com%2Fabuhasdha\";s:6:\"status\";s:5:\"clean\";s:6:\"vendor\";a:2:{s:4:\"slug\";s:6:\"google\";s:5:\"label\";s:20:\"Google Safe Browsing\";}}}s:15:\"vulnerabilities\";a:0:{}}s:6:\"errors\";a:0:{}}s:6:\"cached\";b:0;}', 'process-stop', '2025-11-01 13:56:31', '2025-11-01 13:56:27', 52659488, 52837896, 'https://fazrilsh.com/abuhasdha/wp-json/ithemes-security/v1/site-scanner/scans?_locale=user', 1, 1, '180.243.8.55'),
(15, 0, 'site-scanner', 'clean', 'a:2:{s:7:\"results\";a:4:{s:3:\"url\";s:30:\"https://fazrilsh.com/abuhasdha\";s:7:\"version\";s:3:\"1.1\";s:7:\"entries\";a:2:{s:9:\"blacklist\";a:1:{i:0;a:3:{s:14:\"report_details\";s:87:\"https://transparencyreport.google.com/safe-browsing/search?url=fazrilsh.com%2Fabuhasdha\";s:6:\"status\";s:5:\"clean\";s:6:\"vendor\";a:2:{s:4:\"slug\";s:6:\"google\";s:5:\"label\";s:20:\"Google Safe Browsing\";}}}s:15:\"vulnerabilities\";a:0:{}}s:6:\"errors\";a:0:{}}s:6:\"cached\";b:0;}', 'notice', '2025-11-01 13:56:31', '2025-11-01 13:56:27', 52659744, 52837896, 'https://fazrilsh.com/abuhasdha/wp-json/ithemes-security/v1/site-scanner/scans?_locale=user', 1, 1, '180.243.8.55'),
(16, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:\"notifications\";a:1:{i:0;s:6:\"digest\";}s:6:\"silent\";b:0;}', 'debug', '2025-11-02 22:59:41', '2025-11-02 22:59:40', 47711528, 47740896, 'wp-cron', 1, 0, '109.110.188.195'),
(17, 0, 'login-interstitial', 'create', 'a:2:{s:7:\"current\";s:12:\"2fa-on-board\";s:7:\"_server\";a:29:{s:11:\"HTTP_ACCEPT\";s:96:\"text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,image/apng,*/*;q=0.8\";s:20:\"HTTP_ACCEPT_ENCODING\";s:23:\"gzip, deflate, br, zstd\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:14:\"en-US,en;q=0.7\";s:12:\"CONTENT_TYPE\";s:33:\"application/x-www-form-urlencoded\";s:14:\"CONTENT_LENGTH\";s:3:\"143\";s:9:\"HTTP_HOST\";s:12:\"fazrilsh.com\";s:12:\"HTTP_REFERER\";s:43:\"https://fazrilsh.com/abuhasdha/portal-admin\";s:15:\"HTTP_USER_AGENT\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/142.0.0.0 Safari/537.36\";s:18:\"HTTP_CACHE_CONTROL\";s:9:\"max-age=0\";s:14:\"HTTP_SEC_CH_UA\";s:69:\"\\\"Chromium\\\";v=\\\"142\\\", \\\"Brave\\\";v=\\\"142\\\", \\\"Not_A Brand\\\";v=\\\"99\\\"\";s:21:\"HTTP_SEC_CH_UA_MOBILE\";s:2:\"?0\";s:23:\"HTTP_SEC_CH_UA_PLATFORM\";s:9:\"\\\"macOS\\\"\";s:11:\"HTTP_ORIGIN\";s:20:\"https://fazrilsh.com\";s:30:\"HTTP_UPGRADE_INSECURE_REQUESTS\";s:1:\"1\";s:12:\"HTTP_SEC_GPC\";s:1:\"1\";s:19:\"HTTP_SEC_FETCH_SITE\";s:11:\"same-origin\";s:19:\"HTTP_SEC_FETCH_MODE\";s:8:\"navigate\";s:19:\"HTTP_SEC_FETCH_USER\";s:2:\"?1\";s:19:\"HTTP_SEC_FETCH_DEST\";s:8:\"document\";s:13:\"HTTP_PRIORITY\";s:6:\"u=0, i\";s:12:\"HTTP_X_HTTPS\";s:1:\"1\";s:14:\"REQUEST_SCHEME\";s:5:\"https\";s:5:\"HTTPS\";s:2:\"on\";s:18:\"HTTP_AUTHORIZATION\";s:0:\"\";s:15:\"SCRIPT_FILENAME\";s:50:\"/home/hourigtq/fazrilsh.com/abuhasdha/wp-login.php\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:18:\"REQUEST_TIME_FLOAT\";d:1762134535.894678;s:12:\"REQUEST_TIME\";i:1762134535;}}', 'process-start', '2025-11-03 01:48:57', '2025-11-03 01:48:56', 49005664, 49086808, 'https://fazrilsh.com/abuhasdha/wp-login.php', 1, 1, '180.243.5.20'),
(18, 17, 'login-interstitial', 'created', '51', 'process-update', '2025-11-03 01:48:57', '2025-11-03 01:48:56', 48975856, 49086808, 'https://fazrilsh.com/abuhasdha/wp-login.php', 1, 0, '180.243.5.20'),
(19, 17, 'login-interstitial', 'save', 'a:3:{s:7:\"current\";s:12:\"2fa-on-board\";s:9:\"completed\";a:0:{}s:10:\"show_after\";a:0:{}}', 'process-update', '2025-11-03 01:48:57', '2025-11-03 01:48:56', 48975528, 49086808, 'https://fazrilsh.com/abuhasdha/wp-login.php', 1, 0, '180.243.5.20'),
(20, 17, 'login-interstitial', 'save', 'a:3:{s:7:\"current\";b:0;s:9:\"completed\";a:1:{i:0;s:12:\"2fa-on-board\";}s:10:\"show_after\";a:0:{}}', 'process-update', '2025-11-03 01:49:00', '2025-11-03 01:49:00', 48617080, 48699920, 'https://fazrilsh.com/abuhasdha/wp-login.php?action=itsec-2fa-on-board', 1, 1, '180.243.5.20'),
(21, 17, 'login-interstitial', 'create', 'b:0;', 'process-stop', '2025-11-03 01:49:00', '2025-11-03 01:49:00', 48650480, 48699920, 'https://fazrilsh.com/abuhasdha/wp-login.php?action=itsec-2fa-on-board', 1, 1, '180.243.5.20'),
(22, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:\"notifications\";a:1:{i:0;s:6:\"digest\";}s:6:\"silent\";b:0;}', 'debug', '2025-11-04 00:24:37', '2025-11-04 00:24:37', 47783120, 47812864, 'https://fazrilsh.com/abuhasdha/', 1, 0, '172.225.72.94'),
(23, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:\"notifications\";a:1:{i:0;s:6:\"digest\";}s:6:\"silent\";b:0;}', 'debug', '2025-11-05 23:13:46', '2025-11-05 23:13:46', 47829744, 47859112, 'wp-cron', 1, 0, '109.110.188.195'),
(24, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:\"notifications\";a:1:{i:0;s:6:\"digest\";}s:6:\"silent\";b:0;}', 'debug', '2025-11-07 00:08:22', '2025-11-07 00:08:22', 47783376, 47813096, 'https://fazrilsh.com/abuhasdha/products/tbr/12.00R20', 1, 0, '51.161.65.223'),
(25, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:\"notifications\";a:1:{i:0;s:6:\"digest\";}s:6:\"silent\";b:0;}', 'debug', '2025-11-08 03:31:29', '2025-11-08 03:31:28', 47790936, 47820680, 'https://fazrilsh.com/abuhasdha/', 1, 0, '180.242.129.91'),
(26, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:\"notifications\";a:1:{i:0;s:6:\"digest\";}s:6:\"silent\";b:0;}', 'debug', '2025-11-09 03:55:59', '2025-11-09 03:55:59', 47783664, 47813400, 'https://www.fazrilsh.com/abuhasdha/', 1, 0, '74.7.227.104'),
(27, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:\"notifications\";a:1:{i:0;s:6:\"digest\";}s:6:\"silent\";b:0;}', 'debug', '2025-11-10 22:44:45', '2025-11-10 22:44:45', 47831952, 47861320, 'wp-cron', 1, 0, '109.110.188.195'),
(28, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:\"notifications\";a:1:{i:0;s:6:\"digest\";}s:6:\"silent\";b:0;}', 'debug', '2025-11-11 23:34:38', '2025-11-11 23:34:38', 47850488, 47879856, 'wp-cron', 1, 0, '109.110.188.195'),
(29, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:\"notifications\";a:1:{i:0;s:6:\"digest\";}s:6:\"silent\";b:0;}', 'debug', '2025-11-12 23:39:20', '2025-11-12 23:39:19', 47850488, 47879856, 'wp-cron', 1, 0, '109.110.188.195'),
(30, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:\"notifications\";a:1:{i:0;s:6:\"digest\";}s:6:\"silent\";b:0;}', 'debug', '2025-11-13 23:41:59', '2025-11-13 23:41:58', 47835176, 47864544, 'wp-cron', 1, 0, '109.110.188.195'),
(31, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:\"notifications\";a:1:{i:0;s:6:\"digest\";}s:6:\"silent\";b:0;}', 'debug', '2025-11-14 23:44:40', '2025-11-14 23:44:39', 47835176, 47864544, 'wp-cron', 1, 0, '109.110.188.195'),
(32, 0, 'notification_center', 'send_scheduled', 'a:2:{s:13:\"notifications\";a:1:{i:0;s:6:\"digest\";}s:6:\"silent\";b:0;}', 'debug', '2025-11-16 17:54:50', '2025-11-16 17:54:50', 47805176, 47834896, 'https://fazrilsh.com/abuhasdha/products/tbr/12.00R24/', 1, 0, '148.113.128.248'),
(33, 0, 'login-interstitial', 'create', 'a:2:{s:7:\"current\";s:12:\"2fa-on-board\";s:7:\"_server\";a:22:{s:11:\"HTTP_ACCEPT\";s:63:\"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8\";s:20:\"HTTP_ACCEPT_ENCODING\";s:17:\"gzip, deflate, br\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:14:\"en-GB,en;q=0.9\";s:12:\"CONTENT_TYPE\";s:33:\"application/x-www-form-urlencoded\";s:14:\"CONTENT_LENGTH\";s:3:\"143\";s:9:\"HTTP_HOST\";s:12:\"fazrilsh.com\";s:12:\"HTTP_REFERER\";s:43:\"https://fazrilsh.com/abuhasdha/portal-admin\";s:15:\"HTTP_USER_AGENT\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.6 Safari/605.1.15\";s:11:\"HTTP_ORIGIN\";s:20:\"https://fazrilsh.com\";s:19:\"HTTP_SEC_FETCH_SITE\";s:11:\"same-origin\";s:19:\"HTTP_SEC_FETCH_MODE\";s:8:\"navigate\";s:19:\"HTTP_SEC_FETCH_DEST\";s:8:\"document\";s:13:\"HTTP_PRIORITY\";s:6:\"u=0, i\";s:12:\"HTTP_X_HTTPS\";s:1:\"1\";s:14:\"REQUEST_SCHEME\";s:5:\"https\";s:5:\"HTTPS\";s:2:\"on\";s:18:\"HTTP_AUTHORIZATION\";s:0:\"\";s:15:\"SCRIPT_FILENAME\";s:50:\"/home/hourigtq/fazrilsh.com/abuhasdha/wp-login.php\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:18:\"REQUEST_TIME_FLOAT\";d:1763351760.599349;s:12:\"REQUEST_TIME\";i:1763351760;}}', 'process-start', '2025-11-17 03:56:01', '2025-11-17 03:56:00', 49140304, 49221448, 'https://fazrilsh.com/abuhasdha/wp-login.php', 1, 1, '104.28.163.38'),
(34, 33, 'login-interstitial', 'created', '59', 'process-update', '2025-11-17 03:56:01', '2025-11-17 03:56:00', 49109528, 49221448, 'https://fazrilsh.com/abuhasdha/wp-login.php', 1, 0, '104.28.163.38'),
(35, 33, 'login-interstitial', 'save', 'a:3:{s:7:\"current\";s:12:\"2fa-on-board\";s:9:\"completed\";a:0:{}s:10:\"show_after\";a:0:{}}', 'process-update', '2025-11-17 03:56:01', '2025-11-17 03:56:00', 49109200, 49221448, 'https://fazrilsh.com/abuhasdha/wp-login.php', 1, 0, '104.28.163.38'),
(36, 0, 'login-interstitial', 'create', 'a:2:{s:7:\"current\";s:12:\"2fa-on-board\";s:7:\"_server\";a:22:{s:11:\"HTTP_ACCEPT\";s:63:\"text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8\";s:20:\"HTTP_ACCEPT_ENCODING\";s:17:\"gzip, deflate, br\";s:20:\"HTTP_ACCEPT_LANGUAGE\";s:14:\"en-GB,en;q=0.9\";s:12:\"CONTENT_TYPE\";s:33:\"application/x-www-form-urlencoded\";s:14:\"CONTENT_LENGTH\";s:3:\"143\";s:9:\"HTTP_HOST\";s:12:\"fazrilsh.com\";s:12:\"HTTP_REFERER\";s:43:\"https://fazrilsh.com/abuhasdha/portal-admin\";s:15:\"HTTP_USER_AGENT\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.6 Safari/605.1.15\";s:11:\"HTTP_ORIGIN\";s:20:\"https://fazrilsh.com\";s:19:\"HTTP_SEC_FETCH_SITE\";s:11:\"same-origin\";s:19:\"HTTP_SEC_FETCH_MODE\";s:8:\"navigate\";s:19:\"HTTP_SEC_FETCH_DEST\";s:8:\"document\";s:13:\"HTTP_PRIORITY\";s:6:\"u=0, i\";s:12:\"HTTP_X_HTTPS\";s:1:\"1\";s:14:\"REQUEST_SCHEME\";s:5:\"https\";s:5:\"HTTPS\";s:2:\"on\";s:18:\"HTTP_AUTHORIZATION\";s:0:\"\";s:15:\"SCRIPT_FILENAME\";s:50:\"/home/hourigtq/fazrilsh.com/abuhasdha/wp-login.php\";s:15:\"SERVER_PROTOCOL\";s:8:\"HTTP/1.1\";s:14:\"REQUEST_METHOD\";s:4:\"POST\";s:18:\"REQUEST_TIME_FLOAT\";d:1763351754.316452;s:12:\"REQUEST_TIME\";i:1763351754;}}', 'process-start', '2025-11-17 03:56:05', '2025-11-17 03:55:54', 49072120, 49153264, 'https://fazrilsh.com/abuhasdha/wp-login.php', 1, 1, '104.28.163.38'),
(37, 36, 'login-interstitial', 'created', '62', 'process-update', '2025-11-17 03:56:05', '2025-11-17 03:55:54', 49039176, 49153264, 'https://fazrilsh.com/abuhasdha/wp-login.php', 1, 0, '104.28.163.38'),
(38, 36, 'login-interstitial', 'save', 'a:3:{s:7:\"current\";s:12:\"2fa-on-board\";s:9:\"completed\";a:0:{}s:10:\"show_after\";a:0:{}}', 'process-update', '2025-11-17 03:56:05', '2025-11-17 03:55:54', 49038848, 49153264, 'https://fazrilsh.com/abuhasdha/wp-login.php', 1, 0, '104.28.163.38'),
(39, 33, 'login-interstitial', 'save', 'a:3:{s:7:\"current\";b:0;s:9:\"completed\";a:1:{i:0;s:12:\"2fa-on-board\";}s:10:\"show_after\";a:0:{}}', 'process-update', '2025-11-17 03:56:05', '2025-11-17 03:56:04', 48758448, 48841288, 'https://fazrilsh.com/abuhasdha/wp-login.php?action=itsec-2fa-on-board', 1, 1, '104.28.163.38'),
(40, 33, 'login-interstitial', 'create', 'b:0;', 'process-stop', '2025-11-17 03:56:05', '2025-11-17 03:56:04', 48794592, 48841288, 'https://fazrilsh.com/abuhasdha/wp-login.php?action=itsec-2fa-on-board', 1, 1, '104.28.163.38');

-- --------------------------------------------------------

--
-- Table structure for table `abuhasdha_itsec_mutexes`
--

CREATE TABLE `abuhasdha_itsec_mutexes` (
  `mutex_id` bigint(20) UNSIGNED NOT NULL,
  `mutex_name` varchar(100) NOT NULL,
  `mutex_expires` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abuhasdha_itsec_opaque_tokens`
--

CREATE TABLE `abuhasdha_itsec_opaque_tokens` (
  `token_id` char(64) NOT NULL,
  `token_hashed` char(64) NOT NULL,
  `token_type` varchar(32) NOT NULL,
  `token_data` text NOT NULL,
  `token_created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abuhasdha_itsec_temp`
--

CREATE TABLE `abuhasdha_itsec_temp` (
  `temp_id` bigint(20) UNSIGNED NOT NULL,
  `temp_type` varchar(25) NOT NULL,
  `temp_date` datetime NOT NULL,
  `temp_date_gmt` datetime NOT NULL,
  `temp_host` varchar(40) DEFAULT NULL,
  `temp_user` bigint(20) UNSIGNED DEFAULT NULL,
  `temp_username` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abuhasdha_itsec_user_groups`
--

CREATE TABLE `abuhasdha_itsec_user_groups` (
  `group_id` char(36) NOT NULL,
  `group_label` varchar(255) NOT NULL DEFAULT '',
  `group_roles` text DEFAULT NULL,
  `group_canonical` text DEFAULT NULL,
  `group_users` text DEFAULT NULL,
  `group_min_role` varchar(255) DEFAULT NULL,
  `group_created_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `abuhasdha_itsec_user_groups`
--

INSERT INTO `abuhasdha_itsec_user_groups` (`group_id`, `group_label`, `group_roles`, `group_canonical`, `group_users`, `group_min_role`, `group_created_at`) VALUES
('14933707-6e09-4972-9918-700a0d487477', 'Editors', '', 'editor', '', '', '2025-11-01 13:57:57'),
('27869605-dbbf-42cb-895d-fcdd0be12a8e', 'Administrators', '', 'administrator', '', '', '2025-11-01 13:57:57'),
('3f8beff4-32a9-4a8a-9f48-3bb62da31da9', 'Subscribers', '', 'subscriber', '', '', '2025-11-01 13:57:57'),
('bf0e00b3-f040-40cb-bfc1-a5cc0837dadf', 'Clients', '', '', '1', '', '2025-11-01 13:57:57'),
('e0613ca2-ad3e-498e-952d-d990132d7c51', 'Contributors', '', 'contributor', '', '', '2025-11-01 13:57:57'),
('e0c18f90-07e6-4ff2-8ffc-226ce111e2f2', 'Authors', '', 'author', '', '', '2025-11-01 13:57:57');

-- --------------------------------------------------------

--
-- Table structure for table `abuhasdha_itsec_vulnerabilities`
--

CREATE TABLE `abuhasdha_itsec_vulnerabilities` (
  `id` varchar(128) NOT NULL,
  `software_type` varchar(20) NOT NULL,
  `software_slug` varchar(255) NOT NULL,
  `first_seen` datetime NOT NULL,
  `last_seen` datetime NOT NULL,
  `resolved_at` datetime DEFAULT NULL,
  `resolved_by` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `resolution` varchar(20) NOT NULL DEFAULT '',
  `details` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abuhasdha_links`
--

CREATE TABLE `abuhasdha_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) NOT NULL DEFAULT '',
  `link_name` varchar(255) NOT NULL DEFAULT '',
  `link_image` varchar(255) NOT NULL DEFAULT '',
  `link_target` varchar(25) NOT NULL DEFAULT '',
  `link_description` varchar(255) NOT NULL DEFAULT '',
  `link_visible` varchar(20) NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) NOT NULL DEFAULT '',
  `link_notes` mediumtext NOT NULL,
  `link_rss` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abuhasdha_options`
--

CREATE TABLE `abuhasdha_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL,
  `autoload` varchar(20) NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `abuhasdha_options`
--

INSERT INTO `abuhasdha_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'cron', 'a:22:{i:1763352134;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1763353660;a:1:{s:10:\"itsec_cron\";a:1:{s:32:\"12ca8767a64eac20d01836398698c811\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:1:{i:0;s:11:\"flush-files\";}s:8:\"interval\";i:3600;}}}i:1763355110;a:1:{s:15:\"itsec_cron_test\";a:1:{s:32:\"49047282acd23d58298fee2f2099e09d\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:1:{i:0;i:1763355110;}}}}i:1763355254;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1763366053;a:2:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1763366054;a:1:{s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1763366116;a:3:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1763366117;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1763366974;a:1:{s:28:\"wpchill_notifications_remote\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1763367760;a:1:{s:10:\"itsec_cron\";a:1:{s:32:\"3ec3d6914daf50bcdb5e5b065213e29b\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:1:{i:0;s:17:\"purge-log-entries\";}s:8:\"interval\";i:86400;}}}i:1763367880;a:1:{s:10:\"itsec_cron\";a:2:{s:32:\"91ed9e6ce3fd2e95cc140964d5c85e55\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:1:{i:0;s:19:\"identify-server-ips\";}s:8:\"interval\";i:86400;}s:32:\"aa768a35ceed34e467f270ebdc5d82f4\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:1:{i:0;s:14:\"purge-lockouts\";}s:8:\"interval\";i:86400;}}}i:1763368120;a:1:{s:10:\"itsec_cron\";a:1:{s:32:\"c0ae31dfe60fdb9da055aa838519db0f\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:1:{i:0;s:12:\"clear-tokens\";}s:8:\"interval\";i:86400;}}}i:1763368480;a:1:{s:10:\"itsec_cron\";a:1:{s:32:\"7a0fd5d064c59cf40c3df9ad0bb6e63d\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:1:{i:0;s:11:\"clear-locks\";}s:8:\"interval\";i:86400;}}}i:1763368600;a:1:{s:10:\"itsec_cron\";a:1:{s:32:\"de1a6e58e1b94847566fa6a96efc8463\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:1:{i:0;s:17:\"enable-encryption\";}s:8:\"interval\";i:86400;}}}i:1763368780;a:1:{s:10:\"itsec_cron\";a:1:{s:32:\"abcdd2161b38ff88bddcea9ec08412b6\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:1:{i:0;s:28:\"dashboard-consolidate-events\";}s:8:\"interval\";i:86400;}}}i:1763382635;a:1:{s:35:\"rank_math/content-ai/update_prompts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1763424000;a:2:{s:30:\"rank_math/links/internal_links\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:35:\"rank_math/redirection/clean_trashed\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1763508825;a:1:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1763712527;a:1:{s:27:\"acf_update_site_health_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1763713061;a:1:{s:30:\"wp_delete_temp_updater_backups\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1763798053;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'on'),
(2, 'siteurl', 'https://fazrilsh.com/abuhasdha', 'on'),
(3, 'home', 'https://fazrilsh.com/abuhasdha', 'on'),
(4, 'blogname', 'PT. Abuhasdha &amp; CO.', 'on'),
(5, 'blogdescription', 'Tim kami siap membantu kebutuhan ban dan layanan teknis Anda.', 'on'),
(6, 'users_can_register', '0', 'on'),
(7, 'admin_email', 'admin@fazrilsh.com', 'on'),
(8, 'start_of_week', '1', 'on'),
(9, 'use_balanceTags', '0', 'on'),
(10, 'use_smilies', '1', 'on'),
(11, 'require_name_email', '1', 'on'),
(12, 'comments_notify', '1', 'on'),
(13, 'posts_per_rss', '10', 'on'),
(14, 'rss_use_excerpt', '0', 'on'),
(15, 'mailserver_url', 'mail.example.com', 'on'),
(16, 'mailserver_login', 'login@example.com', 'on'),
(17, 'mailserver_pass', '', 'on'),
(18, 'mailserver_port', '110', 'on'),
(19, 'default_category', '1', 'on'),
(20, 'default_comment_status', 'open', 'on'),
(21, 'default_ping_status', 'open', 'on'),
(22, 'default_pingback_flag', '1', 'on'),
(23, 'posts_per_page', '10', 'on'),
(24, 'date_format', 'F j, Y', 'on'),
(25, 'time_format', 'g:i a', 'on'),
(26, 'links_updated_date_format', 'F j, Y g:i a', 'on'),
(27, 'comment_moderation', '0', 'on'),
(28, 'moderation_notify', '1', 'on'),
(29, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'on'),
(30, 'rewrite_rules', 'a:162:{s:11:\"products/?$\";s:27:\"index.php?post_type=product\";s:41:\"products/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:36:\"products/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:28:\"products/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:28:\"^products/([^/]+)/([^/]+)/?$\";s:48:\"index.php?tire_type=$matches[1]&size=$matches[2]\";s:20:\"^products/([^/]+)/?$\";s:31:\"index.php?tire_type=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:36:\"products/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"products/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"products/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"products/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"products/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"products/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"products/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:29:\"products/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:49:\"products/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:44:\"products/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:37:\"products/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:44:\"products/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"products/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:25:\"products/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"products/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"products/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"products/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"products/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"products/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:50:\"advantage/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?advantage=$matches[1]&feed=$matches[2]\";s:45:\"advantage/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?advantage=$matches[1]&feed=$matches[2]\";s:26:\"advantage/([^/]+)/embed/?$\";s:42:\"index.php?advantage=$matches[1]&embed=true\";s:38:\"advantage/([^/]+)/page/?([0-9]{1,})/?$\";s:49:\"index.php?advantage=$matches[1]&paged=$matches[2]\";s:20:\"advantage/([^/]+)/?$\";s:31:\"index.php?advantage=$matches[1]\";s:49:\"function/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?function=$matches[1]&feed=$matches[2]\";s:44:\"function/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?function=$matches[1]&feed=$matches[2]\";s:25:\"function/([^/]+)/embed/?$\";s:41:\"index.php?function=$matches[1]&embed=true\";s:37:\"function/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?function=$matches[1]&paged=$matches[2]\";s:19:\"function/([^/]+)/?$\";s:30:\"index.php?function=$matches[1]\";s:47:\"products/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?tire_type=$matches[1]&feed=$matches[2]\";s:42:\"products/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:48:\"index.php?tire_type=$matches[1]&feed=$matches[2]\";s:23:\"products/(.+?)/embed/?$\";s:42:\"index.php?tire_type=$matches[1]&embed=true\";s:35:\"products/(.+?)/page/?([0-9]{1,})/?$\";s:49:\"index.php?tire_type=$matches[1]&paged=$matches[2]\";s:17:\"products/(.+?)/?$\";s:31:\"index.php?tire_type=$matches[1]\";s:41:\"itsec-dashboard/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"itsec-dashboard/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"itsec-dashboard/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"itsec-dashboard/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"itsec-dashboard/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"itsec-dashboard/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"itsec-dashboard/(.+?)/embed/?$\";s:48:\"index.php?itsec-dashboard=$matches[1]&embed=true\";s:34:\"itsec-dashboard/(.+?)/trackback/?$\";s:42:\"index.php?itsec-dashboard=$matches[1]&tb=1\";s:42:\"itsec-dashboard/(.+?)/page/?([0-9]{1,})/?$\";s:55:\"index.php?itsec-dashboard=$matches[1]&paged=$matches[2]\";s:49:\"itsec-dashboard/(.+?)/comment-page-([0-9]{1,})/?$\";s:55:\"index.php?itsec-dashboard=$matches[1]&cpage=$matches[2]\";s:38:\"itsec-dashboard/(.+?)(?:/([0-9]+))?/?$\";s:54:\"index.php?itsec-dashboard=$matches[1]&page=$matches[2]\";s:43:\"itsec-dash-card/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:53:\"itsec-dash-card/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:73:\"itsec-dash-card/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"itsec-dash-card/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:68:\"itsec-dash-card/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:49:\"itsec-dash-card/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:32:\"itsec-dash-card/([^/]+)/embed/?$\";s:48:\"index.php?itsec-dash-card=$matches[1]&embed=true\";s:36:\"itsec-dash-card/([^/]+)/trackback/?$\";s:42:\"index.php?itsec-dash-card=$matches[1]&tb=1\";s:44:\"itsec-dash-card/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?itsec-dash-card=$matches[1]&paged=$matches[2]\";s:51:\"itsec-dash-card/([^/]+)/comment-page-([0-9]{1,})/?$\";s:55:\"index.php?itsec-dash-card=$matches[1]&cpage=$matches[2]\";s:40:\"itsec-dash-card/([^/]+)(?:/([0-9]+))?/?$\";s:54:\"index.php?itsec-dash-card=$matches[1]&page=$matches[2]\";s:32:\"itsec-dash-card/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:42:\"itsec-dash-card/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:62:\"itsec-dash-card/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"itsec-dash-card/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:57:\"itsec-dash-card/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:38:\"itsec-dash-card/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'on'),
(31, 'hack_file', '0', 'on'),
(32, 'blog_charset', 'UTF-8', 'on'),
(33, 'moderation_keys', '', 'off'),
(34, 'active_plugins', 'a:3:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:41:\"better-wp-security/better-wp-security.php\";i:2;s:30:\"seo-by-rank-math/rank-math.php\";}', 'on'),
(35, 'category_base', '', 'on'),
(36, 'ping_sites', 'https://rpc.pingomatic.com/', 'on'),
(37, 'comment_max_links', '2', 'on'),
(38, 'gmt_offset', '0', 'on'),
(39, 'default_email_category', '1', 'on'),
(40, 'recently_edited', '', 'off'),
(41, 'template', 'abuhasdha', 'on'),
(42, 'stylesheet', 'abuhasdha', 'on'),
(43, 'comment_registration', '0', 'on'),
(44, 'html_type', 'text/html', 'on'),
(45, 'use_trackback', '0', 'on'),
(46, 'default_role', 'subscriber', 'on'),
(47, 'db_version', '60421', 'on'),
(48, 'uploads_use_yearmonth_folders', '1', 'on'),
(49, 'upload_path', '', 'on'),
(50, 'blog_public', '1', 'on'),
(51, 'default_link_category', '2', 'on'),
(52, 'show_on_front', 'posts', 'on'),
(53, 'tag_base', '', 'on'),
(54, 'show_avatars', '1', 'on'),
(55, 'avatar_rating', 'G', 'on'),
(56, 'upload_url_path', '', 'on'),
(57, 'thumbnail_size_w', '150', 'on'),
(58, 'thumbnail_size_h', '150', 'on'),
(59, 'thumbnail_crop', '1', 'on'),
(60, 'medium_size_w', '300', 'on'),
(61, 'medium_size_h', '300', 'on'),
(62, 'avatar_default', 'mystery', 'on'),
(63, 'large_size_w', '1024', 'on'),
(64, 'large_size_h', '1024', 'on'),
(65, 'image_default_link_type', 'none', 'on'),
(66, 'image_default_size', '', 'on'),
(67, 'image_default_align', '', 'on'),
(68, 'close_comments_for_old_posts', '0', 'on'),
(69, 'close_comments_days_old', '14', 'on'),
(70, 'thread_comments', '1', 'on'),
(71, 'thread_comments_depth', '5', 'on'),
(72, 'page_comments', '0', 'on'),
(73, 'comments_per_page', '50', 'on'),
(74, 'default_comments_page', 'newest', 'on'),
(75, 'comment_order', 'asc', 'on'),
(76, 'sticky_posts', 'a:0:{}', 'on'),
(77, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(78, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(79, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'auto'),
(80, 'uninstall_plugins', 'a:1:{s:41:\"better-wp-security/better-wp-security.php\";a:2:{i:0;s:10:\"ITSEC_Core\";i:1;s:16:\"handle_uninstall\";}}', 'off'),
(81, 'timezone_string', '', 'on'),
(82, 'page_for_posts', '0', 'on'),
(83, 'page_on_front', '0', 'on'),
(84, 'default_post_format', '0', 'on'),
(85, 'link_manager_enabled', '0', 'on'),
(86, 'finished_splitting_shared_terms', '1', 'on'),
(87, 'site_icon', '107', 'on'),
(88, 'medium_large_size_w', '768', 'on'),
(89, 'medium_large_size_h', '0', 'on'),
(90, 'wp_page_for_privacy_policy', '3', 'on'),
(91, 'show_comments_cookies_opt_in', '1', 'on'),
(92, 'admin_email_lifespan', '1776844453', 'on'),
(93, 'disallowed_keys', '', 'off'),
(94, 'comment_previously_approved', '1', 'on'),
(95, 'auto_plugin_theme_update_emails', 'a:0:{}', 'off'),
(96, 'auto_update_core_dev', 'enabled', 'on'),
(97, 'auto_update_core_minor', 'enabled', 'on'),
(98, 'auto_update_core_major', 'enabled', 'on'),
(99, 'wp_force_deactivated_plugins', 'a:0:{}', 'on'),
(100, 'wp_attachment_pages_enabled', '0', 'on'),
(101, 'initial_db_version', '60421', 'on'),
(102, 'abuhasdha_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:85:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:17:\"aioseo_manage_seo\";b:1;s:29:\"aioseo_page_advanced_settings\";b:1;s:31:\"aioseo_page_ai_content_settings\";b:1;s:20:\"aioseo_page_analysis\";b:1;s:28:\"aioseo_page_general_settings\";b:1;s:27:\"aioseo_page_schema_settings\";b:1;s:27:\"aioseo_page_social_settings\";b:1;s:23:\"rank_math_edit_htaccess\";b:1;s:16:\"rank_math_titles\";b:1;s:17:\"rank_math_general\";b:1;s:17:\"rank_math_sitemap\";b:1;s:21:\"rank_math_404_monitor\";b:1;s:22:\"rank_math_link_builder\";b:1;s:22:\"rank_math_redirections\";b:1;s:22:\"rank_math_role_manager\";b:1;s:19:\"rank_math_analytics\";b:1;s:23:\"rank_math_site_analysis\";b:1;s:25:\"rank_math_onpage_analysis\";b:1;s:24:\"rank_math_onpage_general\";b:1;s:25:\"rank_math_onpage_advanced\";b:1;s:24:\"rank_math_onpage_snippet\";b:1;s:23:\"rank_math_onpage_social\";b:1;s:20:\"rank_math_content_ai\";b:1;s:19:\"rank_math_admin_bar\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:45:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:29:\"aioseo_page_advanced_settings\";b:1;s:31:\"aioseo_page_ai_content_settings\";b:1;s:20:\"aioseo_page_analysis\";b:1;s:28:\"aioseo_page_general_settings\";b:1;s:27:\"aioseo_page_schema_settings\";b:1;s:27:\"aioseo_page_social_settings\";b:1;s:23:\"rank_math_site_analysis\";b:1;s:25:\"rank_math_onpage_analysis\";b:1;s:24:\"rank_math_onpage_general\";b:1;s:24:\"rank_math_onpage_snippet\";b:1;s:23:\"rank_math_onpage_social\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:20:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:29:\"aioseo_page_advanced_settings\";b:1;s:31:\"aioseo_page_ai_content_settings\";b:1;s:20:\"aioseo_page_analysis\";b:1;s:28:\"aioseo_page_general_settings\";b:1;s:27:\"aioseo_page_schema_settings\";b:1;s:27:\"aioseo_page_social_settings\";b:1;s:25:\"rank_math_onpage_analysis\";b:1;s:24:\"rank_math_onpage_general\";b:1;s:24:\"rank_math_onpage_snippet\";b:1;s:23:\"rank_math_onpage_social\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:11:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:29:\"aioseo_page_advanced_settings\";b:1;s:31:\"aioseo_page_ai_content_settings\";b:1;s:20:\"aioseo_page_analysis\";b:1;s:28:\"aioseo_page_general_settings\";b:1;s:27:\"aioseo_page_schema_settings\";b:1;s:27:\"aioseo_page_social_settings\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'on'),
(103, 'fresh_site', '0', 'off'),
(104, 'user_count', '1', 'off'),
(105, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:154:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Posts</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:227:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Recent Comments</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Archives</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categories</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'auto'),
(106, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'auto'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'auto'),
(121, 'recovery_keys', 'a:0:{}', 'off'),
(122, 'theme_mods_twentytwentyfive', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1761293277;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'off');
INSERT INTO `abuhasdha_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(123, '_transient_wp_core_block_css_files', 'a:2:{s:7:\"version\";s:5:\"6.8.3\";s:5:\"files\";a:536:{i:0;s:23:\"archives/editor-rtl.css\";i:1;s:27:\"archives/editor-rtl.min.css\";i:2;s:19:\"archives/editor.css\";i:3;s:23:\"archives/editor.min.css\";i:4;s:22:\"archives/style-rtl.css\";i:5;s:26:\"archives/style-rtl.min.css\";i:6;s:18:\"archives/style.css\";i:7;s:22:\"archives/style.min.css\";i:8;s:20:\"audio/editor-rtl.css\";i:9;s:24:\"audio/editor-rtl.min.css\";i:10;s:16:\"audio/editor.css\";i:11;s:20:\"audio/editor.min.css\";i:12;s:19:\"audio/style-rtl.css\";i:13;s:23:\"audio/style-rtl.min.css\";i:14;s:15:\"audio/style.css\";i:15;s:19:\"audio/style.min.css\";i:16;s:19:\"audio/theme-rtl.css\";i:17;s:23:\"audio/theme-rtl.min.css\";i:18;s:15:\"audio/theme.css\";i:19;s:19:\"audio/theme.min.css\";i:20;s:21:\"avatar/editor-rtl.css\";i:21;s:25:\"avatar/editor-rtl.min.css\";i:22;s:17:\"avatar/editor.css\";i:23;s:21:\"avatar/editor.min.css\";i:24;s:20:\"avatar/style-rtl.css\";i:25;s:24:\"avatar/style-rtl.min.css\";i:26;s:16:\"avatar/style.css\";i:27;s:20:\"avatar/style.min.css\";i:28;s:21:\"button/editor-rtl.css\";i:29;s:25:\"button/editor-rtl.min.css\";i:30;s:17:\"button/editor.css\";i:31;s:21:\"button/editor.min.css\";i:32;s:20:\"button/style-rtl.css\";i:33;s:24:\"button/style-rtl.min.css\";i:34;s:16:\"button/style.css\";i:35;s:20:\"button/style.min.css\";i:36;s:22:\"buttons/editor-rtl.css\";i:37;s:26:\"buttons/editor-rtl.min.css\";i:38;s:18:\"buttons/editor.css\";i:39;s:22:\"buttons/editor.min.css\";i:40;s:21:\"buttons/style-rtl.css\";i:41;s:25:\"buttons/style-rtl.min.css\";i:42;s:17:\"buttons/style.css\";i:43;s:21:\"buttons/style.min.css\";i:44;s:22:\"calendar/style-rtl.css\";i:45;s:26:\"calendar/style-rtl.min.css\";i:46;s:18:\"calendar/style.css\";i:47;s:22:\"calendar/style.min.css\";i:48;s:25:\"categories/editor-rtl.css\";i:49;s:29:\"categories/editor-rtl.min.css\";i:50;s:21:\"categories/editor.css\";i:51;s:25:\"categories/editor.min.css\";i:52;s:24:\"categories/style-rtl.css\";i:53;s:28:\"categories/style-rtl.min.css\";i:54;s:20:\"categories/style.css\";i:55;s:24:\"categories/style.min.css\";i:56;s:19:\"code/editor-rtl.css\";i:57;s:23:\"code/editor-rtl.min.css\";i:58;s:15:\"code/editor.css\";i:59;s:19:\"code/editor.min.css\";i:60;s:18:\"code/style-rtl.css\";i:61;s:22:\"code/style-rtl.min.css\";i:62;s:14:\"code/style.css\";i:63;s:18:\"code/style.min.css\";i:64;s:18:\"code/theme-rtl.css\";i:65;s:22:\"code/theme-rtl.min.css\";i:66;s:14:\"code/theme.css\";i:67;s:18:\"code/theme.min.css\";i:68;s:22:\"columns/editor-rtl.css\";i:69;s:26:\"columns/editor-rtl.min.css\";i:70;s:18:\"columns/editor.css\";i:71;s:22:\"columns/editor.min.css\";i:72;s:21:\"columns/style-rtl.css\";i:73;s:25:\"columns/style-rtl.min.css\";i:74;s:17:\"columns/style.css\";i:75;s:21:\"columns/style.min.css\";i:76;s:33:\"comment-author-name/style-rtl.css\";i:77;s:37:\"comment-author-name/style-rtl.min.css\";i:78;s:29:\"comment-author-name/style.css\";i:79;s:33:\"comment-author-name/style.min.css\";i:80;s:29:\"comment-content/style-rtl.css\";i:81;s:33:\"comment-content/style-rtl.min.css\";i:82;s:25:\"comment-content/style.css\";i:83;s:29:\"comment-content/style.min.css\";i:84;s:26:\"comment-date/style-rtl.css\";i:85;s:30:\"comment-date/style-rtl.min.css\";i:86;s:22:\"comment-date/style.css\";i:87;s:26:\"comment-date/style.min.css\";i:88;s:31:\"comment-edit-link/style-rtl.css\";i:89;s:35:\"comment-edit-link/style-rtl.min.css\";i:90;s:27:\"comment-edit-link/style.css\";i:91;s:31:\"comment-edit-link/style.min.css\";i:92;s:32:\"comment-reply-link/style-rtl.css\";i:93;s:36:\"comment-reply-link/style-rtl.min.css\";i:94;s:28:\"comment-reply-link/style.css\";i:95;s:32:\"comment-reply-link/style.min.css\";i:96;s:30:\"comment-template/style-rtl.css\";i:97;s:34:\"comment-template/style-rtl.min.css\";i:98;s:26:\"comment-template/style.css\";i:99;s:30:\"comment-template/style.min.css\";i:100;s:42:\"comments-pagination-numbers/editor-rtl.css\";i:101;s:46:\"comments-pagination-numbers/editor-rtl.min.css\";i:102;s:38:\"comments-pagination-numbers/editor.css\";i:103;s:42:\"comments-pagination-numbers/editor.min.css\";i:104;s:34:\"comments-pagination/editor-rtl.css\";i:105;s:38:\"comments-pagination/editor-rtl.min.css\";i:106;s:30:\"comments-pagination/editor.css\";i:107;s:34:\"comments-pagination/editor.min.css\";i:108;s:33:\"comments-pagination/style-rtl.css\";i:109;s:37:\"comments-pagination/style-rtl.min.css\";i:110;s:29:\"comments-pagination/style.css\";i:111;s:33:\"comments-pagination/style.min.css\";i:112;s:29:\"comments-title/editor-rtl.css\";i:113;s:33:\"comments-title/editor-rtl.min.css\";i:114;s:25:\"comments-title/editor.css\";i:115;s:29:\"comments-title/editor.min.css\";i:116;s:23:\"comments/editor-rtl.css\";i:117;s:27:\"comments/editor-rtl.min.css\";i:118;s:19:\"comments/editor.css\";i:119;s:23:\"comments/editor.min.css\";i:120;s:22:\"comments/style-rtl.css\";i:121;s:26:\"comments/style-rtl.min.css\";i:122;s:18:\"comments/style.css\";i:123;s:22:\"comments/style.min.css\";i:124;s:20:\"cover/editor-rtl.css\";i:125;s:24:\"cover/editor-rtl.min.css\";i:126;s:16:\"cover/editor.css\";i:127;s:20:\"cover/editor.min.css\";i:128;s:19:\"cover/style-rtl.css\";i:129;s:23:\"cover/style-rtl.min.css\";i:130;s:15:\"cover/style.css\";i:131;s:19:\"cover/style.min.css\";i:132;s:22:\"details/editor-rtl.css\";i:133;s:26:\"details/editor-rtl.min.css\";i:134;s:18:\"details/editor.css\";i:135;s:22:\"details/editor.min.css\";i:136;s:21:\"details/style-rtl.css\";i:137;s:25:\"details/style-rtl.min.css\";i:138;s:17:\"details/style.css\";i:139;s:21:\"details/style.min.css\";i:140;s:20:\"embed/editor-rtl.css\";i:141;s:24:\"embed/editor-rtl.min.css\";i:142;s:16:\"embed/editor.css\";i:143;s:20:\"embed/editor.min.css\";i:144;s:19:\"embed/style-rtl.css\";i:145;s:23:\"embed/style-rtl.min.css\";i:146;s:15:\"embed/style.css\";i:147;s:19:\"embed/style.min.css\";i:148;s:19:\"embed/theme-rtl.css\";i:149;s:23:\"embed/theme-rtl.min.css\";i:150;s:15:\"embed/theme.css\";i:151;s:19:\"embed/theme.min.css\";i:152;s:19:\"file/editor-rtl.css\";i:153;s:23:\"file/editor-rtl.min.css\";i:154;s:15:\"file/editor.css\";i:155;s:19:\"file/editor.min.css\";i:156;s:18:\"file/style-rtl.css\";i:157;s:22:\"file/style-rtl.min.css\";i:158;s:14:\"file/style.css\";i:159;s:18:\"file/style.min.css\";i:160;s:23:\"footnotes/style-rtl.css\";i:161;s:27:\"footnotes/style-rtl.min.css\";i:162;s:19:\"footnotes/style.css\";i:163;s:23:\"footnotes/style.min.css\";i:164;s:23:\"freeform/editor-rtl.css\";i:165;s:27:\"freeform/editor-rtl.min.css\";i:166;s:19:\"freeform/editor.css\";i:167;s:23:\"freeform/editor.min.css\";i:168;s:22:\"gallery/editor-rtl.css\";i:169;s:26:\"gallery/editor-rtl.min.css\";i:170;s:18:\"gallery/editor.css\";i:171;s:22:\"gallery/editor.min.css\";i:172;s:21:\"gallery/style-rtl.css\";i:173;s:25:\"gallery/style-rtl.min.css\";i:174;s:17:\"gallery/style.css\";i:175;s:21:\"gallery/style.min.css\";i:176;s:21:\"gallery/theme-rtl.css\";i:177;s:25:\"gallery/theme-rtl.min.css\";i:178;s:17:\"gallery/theme.css\";i:179;s:21:\"gallery/theme.min.css\";i:180;s:20:\"group/editor-rtl.css\";i:181;s:24:\"group/editor-rtl.min.css\";i:182;s:16:\"group/editor.css\";i:183;s:20:\"group/editor.min.css\";i:184;s:19:\"group/style-rtl.css\";i:185;s:23:\"group/style-rtl.min.css\";i:186;s:15:\"group/style.css\";i:187;s:19:\"group/style.min.css\";i:188;s:19:\"group/theme-rtl.css\";i:189;s:23:\"group/theme-rtl.min.css\";i:190;s:15:\"group/theme.css\";i:191;s:19:\"group/theme.min.css\";i:192;s:21:\"heading/style-rtl.css\";i:193;s:25:\"heading/style-rtl.min.css\";i:194;s:17:\"heading/style.css\";i:195;s:21:\"heading/style.min.css\";i:196;s:19:\"html/editor-rtl.css\";i:197;s:23:\"html/editor-rtl.min.css\";i:198;s:15:\"html/editor.css\";i:199;s:19:\"html/editor.min.css\";i:200;s:20:\"image/editor-rtl.css\";i:201;s:24:\"image/editor-rtl.min.css\";i:202;s:16:\"image/editor.css\";i:203;s:20:\"image/editor.min.css\";i:204;s:19:\"image/style-rtl.css\";i:205;s:23:\"image/style-rtl.min.css\";i:206;s:15:\"image/style.css\";i:207;s:19:\"image/style.min.css\";i:208;s:19:\"image/theme-rtl.css\";i:209;s:23:\"image/theme-rtl.min.css\";i:210;s:15:\"image/theme.css\";i:211;s:19:\"image/theme.min.css\";i:212;s:29:\"latest-comments/style-rtl.css\";i:213;s:33:\"latest-comments/style-rtl.min.css\";i:214;s:25:\"latest-comments/style.css\";i:215;s:29:\"latest-comments/style.min.css\";i:216;s:27:\"latest-posts/editor-rtl.css\";i:217;s:31:\"latest-posts/editor-rtl.min.css\";i:218;s:23:\"latest-posts/editor.css\";i:219;s:27:\"latest-posts/editor.min.css\";i:220;s:26:\"latest-posts/style-rtl.css\";i:221;s:30:\"latest-posts/style-rtl.min.css\";i:222;s:22:\"latest-posts/style.css\";i:223;s:26:\"latest-posts/style.min.css\";i:224;s:18:\"list/style-rtl.css\";i:225;s:22:\"list/style-rtl.min.css\";i:226;s:14:\"list/style.css\";i:227;s:18:\"list/style.min.css\";i:228;s:22:\"loginout/style-rtl.css\";i:229;s:26:\"loginout/style-rtl.min.css\";i:230;s:18:\"loginout/style.css\";i:231;s:22:\"loginout/style.min.css\";i:232;s:25:\"media-text/editor-rtl.css\";i:233;s:29:\"media-text/editor-rtl.min.css\";i:234;s:21:\"media-text/editor.css\";i:235;s:25:\"media-text/editor.min.css\";i:236;s:24:\"media-text/style-rtl.css\";i:237;s:28:\"media-text/style-rtl.min.css\";i:238;s:20:\"media-text/style.css\";i:239;s:24:\"media-text/style.min.css\";i:240;s:19:\"more/editor-rtl.css\";i:241;s:23:\"more/editor-rtl.min.css\";i:242;s:15:\"more/editor.css\";i:243;s:19:\"more/editor.min.css\";i:244;s:30:\"navigation-link/editor-rtl.css\";i:245;s:34:\"navigation-link/editor-rtl.min.css\";i:246;s:26:\"navigation-link/editor.css\";i:247;s:30:\"navigation-link/editor.min.css\";i:248;s:29:\"navigation-link/style-rtl.css\";i:249;s:33:\"navigation-link/style-rtl.min.css\";i:250;s:25:\"navigation-link/style.css\";i:251;s:29:\"navigation-link/style.min.css\";i:252;s:33:\"navigation-submenu/editor-rtl.css\";i:253;s:37:\"navigation-submenu/editor-rtl.min.css\";i:254;s:29:\"navigation-submenu/editor.css\";i:255;s:33:\"navigation-submenu/editor.min.css\";i:256;s:25:\"navigation/editor-rtl.css\";i:257;s:29:\"navigation/editor-rtl.min.css\";i:258;s:21:\"navigation/editor.css\";i:259;s:25:\"navigation/editor.min.css\";i:260;s:24:\"navigation/style-rtl.css\";i:261;s:28:\"navigation/style-rtl.min.css\";i:262;s:20:\"navigation/style.css\";i:263;s:24:\"navigation/style.min.css\";i:264;s:23:\"nextpage/editor-rtl.css\";i:265;s:27:\"nextpage/editor-rtl.min.css\";i:266;s:19:\"nextpage/editor.css\";i:267;s:23:\"nextpage/editor.min.css\";i:268;s:24:\"page-list/editor-rtl.css\";i:269;s:28:\"page-list/editor-rtl.min.css\";i:270;s:20:\"page-list/editor.css\";i:271;s:24:\"page-list/editor.min.css\";i:272;s:23:\"page-list/style-rtl.css\";i:273;s:27:\"page-list/style-rtl.min.css\";i:274;s:19:\"page-list/style.css\";i:275;s:23:\"page-list/style.min.css\";i:276;s:24:\"paragraph/editor-rtl.css\";i:277;s:28:\"paragraph/editor-rtl.min.css\";i:278;s:20:\"paragraph/editor.css\";i:279;s:24:\"paragraph/editor.min.css\";i:280;s:23:\"paragraph/style-rtl.css\";i:281;s:27:\"paragraph/style-rtl.min.css\";i:282;s:19:\"paragraph/style.css\";i:283;s:23:\"paragraph/style.min.css\";i:284;s:35:\"post-author-biography/style-rtl.css\";i:285;s:39:\"post-author-biography/style-rtl.min.css\";i:286;s:31:\"post-author-biography/style.css\";i:287;s:35:\"post-author-biography/style.min.css\";i:288;s:30:\"post-author-name/style-rtl.css\";i:289;s:34:\"post-author-name/style-rtl.min.css\";i:290;s:26:\"post-author-name/style.css\";i:291;s:30:\"post-author-name/style.min.css\";i:292;s:26:\"post-author/editor-rtl.css\";i:293;s:30:\"post-author/editor-rtl.min.css\";i:294;s:22:\"post-author/editor.css\";i:295;s:26:\"post-author/editor.min.css\";i:296;s:25:\"post-author/style-rtl.css\";i:297;s:29:\"post-author/style-rtl.min.css\";i:298;s:21:\"post-author/style.css\";i:299;s:25:\"post-author/style.min.css\";i:300;s:33:\"post-comments-form/editor-rtl.css\";i:301;s:37:\"post-comments-form/editor-rtl.min.css\";i:302;s:29:\"post-comments-form/editor.css\";i:303;s:33:\"post-comments-form/editor.min.css\";i:304;s:32:\"post-comments-form/style-rtl.css\";i:305;s:36:\"post-comments-form/style-rtl.min.css\";i:306;s:28:\"post-comments-form/style.css\";i:307;s:32:\"post-comments-form/style.min.css\";i:308;s:26:\"post-content/style-rtl.css\";i:309;s:30:\"post-content/style-rtl.min.css\";i:310;s:22:\"post-content/style.css\";i:311;s:26:\"post-content/style.min.css\";i:312;s:23:\"post-date/style-rtl.css\";i:313;s:27:\"post-date/style-rtl.min.css\";i:314;s:19:\"post-date/style.css\";i:315;s:23:\"post-date/style.min.css\";i:316;s:27:\"post-excerpt/editor-rtl.css\";i:317;s:31:\"post-excerpt/editor-rtl.min.css\";i:318;s:23:\"post-excerpt/editor.css\";i:319;s:27:\"post-excerpt/editor.min.css\";i:320;s:26:\"post-excerpt/style-rtl.css\";i:321;s:30:\"post-excerpt/style-rtl.min.css\";i:322;s:22:\"post-excerpt/style.css\";i:323;s:26:\"post-excerpt/style.min.css\";i:324;s:34:\"post-featured-image/editor-rtl.css\";i:325;s:38:\"post-featured-image/editor-rtl.min.css\";i:326;s:30:\"post-featured-image/editor.css\";i:327;s:34:\"post-featured-image/editor.min.css\";i:328;s:33:\"post-featured-image/style-rtl.css\";i:329;s:37:\"post-featured-image/style-rtl.min.css\";i:330;s:29:\"post-featured-image/style.css\";i:331;s:33:\"post-featured-image/style.min.css\";i:332;s:34:\"post-navigation-link/style-rtl.css\";i:333;s:38:\"post-navigation-link/style-rtl.min.css\";i:334;s:30:\"post-navigation-link/style.css\";i:335;s:34:\"post-navigation-link/style.min.css\";i:336;s:27:\"post-template/style-rtl.css\";i:337;s:31:\"post-template/style-rtl.min.css\";i:338;s:23:\"post-template/style.css\";i:339;s:27:\"post-template/style.min.css\";i:340;s:24:\"post-terms/style-rtl.css\";i:341;s:28:\"post-terms/style-rtl.min.css\";i:342;s:20:\"post-terms/style.css\";i:343;s:24:\"post-terms/style.min.css\";i:344;s:24:\"post-title/style-rtl.css\";i:345;s:28:\"post-title/style-rtl.min.css\";i:346;s:20:\"post-title/style.css\";i:347;s:24:\"post-title/style.min.css\";i:348;s:26:\"preformatted/style-rtl.css\";i:349;s:30:\"preformatted/style-rtl.min.css\";i:350;s:22:\"preformatted/style.css\";i:351;s:26:\"preformatted/style.min.css\";i:352;s:24:\"pullquote/editor-rtl.css\";i:353;s:28:\"pullquote/editor-rtl.min.css\";i:354;s:20:\"pullquote/editor.css\";i:355;s:24:\"pullquote/editor.min.css\";i:356;s:23:\"pullquote/style-rtl.css\";i:357;s:27:\"pullquote/style-rtl.min.css\";i:358;s:19:\"pullquote/style.css\";i:359;s:23:\"pullquote/style.min.css\";i:360;s:23:\"pullquote/theme-rtl.css\";i:361;s:27:\"pullquote/theme-rtl.min.css\";i:362;s:19:\"pullquote/theme.css\";i:363;s:23:\"pullquote/theme.min.css\";i:364;s:39:\"query-pagination-numbers/editor-rtl.css\";i:365;s:43:\"query-pagination-numbers/editor-rtl.min.css\";i:366;s:35:\"query-pagination-numbers/editor.css\";i:367;s:39:\"query-pagination-numbers/editor.min.css\";i:368;s:31:\"query-pagination/editor-rtl.css\";i:369;s:35:\"query-pagination/editor-rtl.min.css\";i:370;s:27:\"query-pagination/editor.css\";i:371;s:31:\"query-pagination/editor.min.css\";i:372;s:30:\"query-pagination/style-rtl.css\";i:373;s:34:\"query-pagination/style-rtl.min.css\";i:374;s:26:\"query-pagination/style.css\";i:375;s:30:\"query-pagination/style.min.css\";i:376;s:25:\"query-title/style-rtl.css\";i:377;s:29:\"query-title/style-rtl.min.css\";i:378;s:21:\"query-title/style.css\";i:379;s:25:\"query-title/style.min.css\";i:380;s:25:\"query-total/style-rtl.css\";i:381;s:29:\"query-total/style-rtl.min.css\";i:382;s:21:\"query-total/style.css\";i:383;s:25:\"query-total/style.min.css\";i:384;s:20:\"query/editor-rtl.css\";i:385;s:24:\"query/editor-rtl.min.css\";i:386;s:16:\"query/editor.css\";i:387;s:20:\"query/editor.min.css\";i:388;s:19:\"quote/style-rtl.css\";i:389;s:23:\"quote/style-rtl.min.css\";i:390;s:15:\"quote/style.css\";i:391;s:19:\"quote/style.min.css\";i:392;s:19:\"quote/theme-rtl.css\";i:393;s:23:\"quote/theme-rtl.min.css\";i:394;s:15:\"quote/theme.css\";i:395;s:19:\"quote/theme.min.css\";i:396;s:23:\"read-more/style-rtl.css\";i:397;s:27:\"read-more/style-rtl.min.css\";i:398;s:19:\"read-more/style.css\";i:399;s:23:\"read-more/style.min.css\";i:400;s:18:\"rss/editor-rtl.css\";i:401;s:22:\"rss/editor-rtl.min.css\";i:402;s:14:\"rss/editor.css\";i:403;s:18:\"rss/editor.min.css\";i:404;s:17:\"rss/style-rtl.css\";i:405;s:21:\"rss/style-rtl.min.css\";i:406;s:13:\"rss/style.css\";i:407;s:17:\"rss/style.min.css\";i:408;s:21:\"search/editor-rtl.css\";i:409;s:25:\"search/editor-rtl.min.css\";i:410;s:17:\"search/editor.css\";i:411;s:21:\"search/editor.min.css\";i:412;s:20:\"search/style-rtl.css\";i:413;s:24:\"search/style-rtl.min.css\";i:414;s:16:\"search/style.css\";i:415;s:20:\"search/style.min.css\";i:416;s:20:\"search/theme-rtl.css\";i:417;s:24:\"search/theme-rtl.min.css\";i:418;s:16:\"search/theme.css\";i:419;s:20:\"search/theme.min.css\";i:420;s:24:\"separator/editor-rtl.css\";i:421;s:28:\"separator/editor-rtl.min.css\";i:422;s:20:\"separator/editor.css\";i:423;s:24:\"separator/editor.min.css\";i:424;s:23:\"separator/style-rtl.css\";i:425;s:27:\"separator/style-rtl.min.css\";i:426;s:19:\"separator/style.css\";i:427;s:23:\"separator/style.min.css\";i:428;s:23:\"separator/theme-rtl.css\";i:429;s:27:\"separator/theme-rtl.min.css\";i:430;s:19:\"separator/theme.css\";i:431;s:23:\"separator/theme.min.css\";i:432;s:24:\"shortcode/editor-rtl.css\";i:433;s:28:\"shortcode/editor-rtl.min.css\";i:434;s:20:\"shortcode/editor.css\";i:435;s:24:\"shortcode/editor.min.css\";i:436;s:24:\"site-logo/editor-rtl.css\";i:437;s:28:\"site-logo/editor-rtl.min.css\";i:438;s:20:\"site-logo/editor.css\";i:439;s:24:\"site-logo/editor.min.css\";i:440;s:23:\"site-logo/style-rtl.css\";i:441;s:27:\"site-logo/style-rtl.min.css\";i:442;s:19:\"site-logo/style.css\";i:443;s:23:\"site-logo/style.min.css\";i:444;s:27:\"site-tagline/editor-rtl.css\";i:445;s:31:\"site-tagline/editor-rtl.min.css\";i:446;s:23:\"site-tagline/editor.css\";i:447;s:27:\"site-tagline/editor.min.css\";i:448;s:26:\"site-tagline/style-rtl.css\";i:449;s:30:\"site-tagline/style-rtl.min.css\";i:450;s:22:\"site-tagline/style.css\";i:451;s:26:\"site-tagline/style.min.css\";i:452;s:25:\"site-title/editor-rtl.css\";i:453;s:29:\"site-title/editor-rtl.min.css\";i:454;s:21:\"site-title/editor.css\";i:455;s:25:\"site-title/editor.min.css\";i:456;s:24:\"site-title/style-rtl.css\";i:457;s:28:\"site-title/style-rtl.min.css\";i:458;s:20:\"site-title/style.css\";i:459;s:24:\"site-title/style.min.css\";i:460;s:26:\"social-link/editor-rtl.css\";i:461;s:30:\"social-link/editor-rtl.min.css\";i:462;s:22:\"social-link/editor.css\";i:463;s:26:\"social-link/editor.min.css\";i:464;s:27:\"social-links/editor-rtl.css\";i:465;s:31:\"social-links/editor-rtl.min.css\";i:466;s:23:\"social-links/editor.css\";i:467;s:27:\"social-links/editor.min.css\";i:468;s:26:\"social-links/style-rtl.css\";i:469;s:30:\"social-links/style-rtl.min.css\";i:470;s:22:\"social-links/style.css\";i:471;s:26:\"social-links/style.min.css\";i:472;s:21:\"spacer/editor-rtl.css\";i:473;s:25:\"spacer/editor-rtl.min.css\";i:474;s:17:\"spacer/editor.css\";i:475;s:21:\"spacer/editor.min.css\";i:476;s:20:\"spacer/style-rtl.css\";i:477;s:24:\"spacer/style-rtl.min.css\";i:478;s:16:\"spacer/style.css\";i:479;s:20:\"spacer/style.min.css\";i:480;s:20:\"table/editor-rtl.css\";i:481;s:24:\"table/editor-rtl.min.css\";i:482;s:16:\"table/editor.css\";i:483;s:20:\"table/editor.min.css\";i:484;s:19:\"table/style-rtl.css\";i:485;s:23:\"table/style-rtl.min.css\";i:486;s:15:\"table/style.css\";i:487;s:19:\"table/style.min.css\";i:488;s:19:\"table/theme-rtl.css\";i:489;s:23:\"table/theme-rtl.min.css\";i:490;s:15:\"table/theme.css\";i:491;s:19:\"table/theme.min.css\";i:492;s:24:\"tag-cloud/editor-rtl.css\";i:493;s:28:\"tag-cloud/editor-rtl.min.css\";i:494;s:20:\"tag-cloud/editor.css\";i:495;s:24:\"tag-cloud/editor.min.css\";i:496;s:23:\"tag-cloud/style-rtl.css\";i:497;s:27:\"tag-cloud/style-rtl.min.css\";i:498;s:19:\"tag-cloud/style.css\";i:499;s:23:\"tag-cloud/style.min.css\";i:500;s:28:\"template-part/editor-rtl.css\";i:501;s:32:\"template-part/editor-rtl.min.css\";i:502;s:24:\"template-part/editor.css\";i:503;s:28:\"template-part/editor.min.css\";i:504;s:27:\"template-part/theme-rtl.css\";i:505;s:31:\"template-part/theme-rtl.min.css\";i:506;s:23:\"template-part/theme.css\";i:507;s:27:\"template-part/theme.min.css\";i:508;s:30:\"term-description/style-rtl.css\";i:509;s:34:\"term-description/style-rtl.min.css\";i:510;s:26:\"term-description/style.css\";i:511;s:30:\"term-description/style.min.css\";i:512;s:27:\"text-columns/editor-rtl.css\";i:513;s:31:\"text-columns/editor-rtl.min.css\";i:514;s:23:\"text-columns/editor.css\";i:515;s:27:\"text-columns/editor.min.css\";i:516;s:26:\"text-columns/style-rtl.css\";i:517;s:30:\"text-columns/style-rtl.min.css\";i:518;s:22:\"text-columns/style.css\";i:519;s:26:\"text-columns/style.min.css\";i:520;s:19:\"verse/style-rtl.css\";i:521;s:23:\"verse/style-rtl.min.css\";i:522;s:15:\"verse/style.css\";i:523;s:19:\"verse/style.min.css\";i:524;s:20:\"video/editor-rtl.css\";i:525;s:24:\"video/editor-rtl.min.css\";i:526;s:16:\"video/editor.css\";i:527;s:20:\"video/editor.min.css\";i:528;s:19:\"video/style-rtl.css\";i:529;s:23:\"video/style-rtl.min.css\";i:530;s:15:\"video/style.css\";i:531;s:19:\"video/style.min.css\";i:532;s:19:\"video/theme-rtl.css\";i:533;s:23:\"video/theme-rtl.min.css\";i:534;s:15:\"video/theme.css\";i:535;s:19:\"video/theme.min.css\";}}', 'on'),
(130, '_transient_wp_styles_for_blocks', 'a:2:{s:4:\"hash\";s:32:\"8c7d46a72d7d4591fc1dd9485bedb304\";s:6:\"blocks\";a:5:{s:11:\"core/button\";s:0:\"\";s:14:\"core/site-logo\";s:0:\"\";s:18:\"core/post-template\";s:120:\":where(.wp-block-post-template.is-layout-flex){gap: 1.25em;}:where(.wp-block-post-template.is-layout-grid){gap: 1.25em;}\";s:12:\"core/columns\";s:102:\":where(.wp-block-columns.is-layout-flex){gap: 2em;}:where(.wp-block-columns.is-layout-grid){gap: 2em;}\";s:14:\"core/pullquote\";s:69:\":root :where(.wp-block-pullquote){font-size: 1.5em;line-height: 1.6;}\";}}', 'on'),
(131, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.8.3.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-6.8.3.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-6.8.3-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-6.8.3-new-bundled.zip\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:5:\"6.8.3\";s:7:\"version\";s:5:\"6.8.3\";s:11:\"php_version\";s:6:\"7.2.24\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:11:\"new_bundled\";s:3:\"6.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1763335986;s:15:\"version_checked\";s:5:\"6.8.3\";s:12:\"translations\";a:0:{}}', 'off'),
(148, 'can_compress_scripts', '1', 'on'),
(161, 'finished_updating_comment_type', '1', 'auto'),
(164, 'current_theme', 'PT. ABUHASDHA &amp; CO.', 'auto'),
(165, 'theme_mods_abuhasdha', 'a:19:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:12:\"primary_menu\";i:2;}s:18:\"custom_css_post_id\";i:-1;s:10:\"hero_image\";s:76:\"https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/10/landing-scaled.jpg\";s:17:\"about_description\";s:519:\"PT. Abuhasdha didirikan pada tahun 1980 sebagai perusahaan yang berkecimpung di dalam penyediaan ban off the road, truck and bus, dan industrial. Dengan pengalaman sebagai penyedia produk ban, PT Abuhasdha menawarkan produk berkualitas dan menjadi mitra strategis customer kami.\n\nPT. Abuhasdha adalah distributor resmi wilayah Indonesia untuk ban merek Tianli yang diproduksi oleh Zhongce Rubber Co,Ltd. Kami berharap dan berkeyakinan untuk ban yang kami tawarkan dapat mendukung produktivitas dan keamanan bisnis Anda.\";s:16:\"hero_description\";s:175:\"Dengan pengalaman lebih dari 40 tahun, Abuhasdha menyediakan ban Off-The-Road (OTR), truk, bus, dan industri yang tangguh, berkualitas, dan didukung layanan teknis menyeluruh.\";s:12:\"hero_heading\";s:63:\"Tyres You Can Rely On. Solusi Ban Alat Berat dan Industri Anda!\";s:18:\"see_product_button\";s:12:\"Lihat Produk\";s:17:\"contact_us_button\";s:12:\"Hubungi Kami\";s:13:\"footer_slogan\";s:61:\"Tim kami siap membantu kebutuhan ban dan layanan teknis Anda.\";s:12:\"footer_email\";s:22:\"abuhasdha80@cbn.net.id\";s:12:\"footer_phone\";s:29:\"(021) 63863210\n(021) 63863012\";s:14:\"footer_address\";s:129:\"Jl. Kyai Caringin No.14B, Jakarta, 10150, DKI Jakarta, Indonesia\nJl. Kyai Caringin No.14B, Jakarta, 10150, DKI Jakarta, Indonesia\";s:18:\"footer_address_url\";s:77:\"https://share.google/Yr2nBExkCfqfErbXY\nhttps://share.google/Yr2nBExkCfqfErbXY\";s:11:\"about_image\";s:67:\"https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/10/about.png\";s:18:\"technical_services\";s:196:\"Tire Recommendations & Observations\nHeat Study\nRunning Tire/Pressure Inspections\nScrap Tire Inspections\nTKPH Analysis\nSite Severity Survey\nTire Awareness Training\nNew Product Presentation & Survey\";s:15:\"technical_label\";s:191:\"Kami memahami bahwa kebutuhan ban bukan hanya pembelian, tapi juga perawatan agar mendukung kelancaran operasional. Oleh karena itu, Abuhasdha menghadirkan layanan onsite & konsultasi teknis:\";s:21:\"custom_gallery_images\";s:23:\"159,155,160,156,158,157\";s:11:\"custom_logo\";i:105;}', 'on'),
(166, 'theme_switched', '', 'auto'),
(169, '_site_transient_wp_plugin_dependencies_plugin_data', 'a:0:{}', 'off'),
(170, 'recently_activated', 'a:0:{}', 'off'),
(171, 'acf_first_activated_version', '6.6.0', 'on'),
(172, 'acf_site_health', '{\"version\":\"6.6.2\",\"plugin_type\":\"Free\",\"update_source\":\"wordpress.org\",\"wp_version\":\"6.8.3\",\"mysql_version\":\"10.6.23-MariaDB-cll-lve\",\"is_multisite\":false,\"active_theme\":{\"name\":\"PT. ABUHASDHA &amp; CO.\",\"version\":\"1.0\",\"theme_uri\":\"http:\\/\\/-\",\"stylesheet\":false},\"active_plugins\":{\"advanced-custom-fields\\/acf.php\":{\"name\":\"Advanced Custom Fields\",\"version\":\"6.6.2\",\"plugin_uri\":\"https:\\/\\/www.advancedcustomfields.com\"},\"seo-by-rank-math\\/rank-math.php\":{\"name\":\"Rank Math SEO\",\"version\":\"1.0.257\",\"plugin_uri\":\"https:\\/\\/rankmath.com\\/\"},\"better-wp-security\\/better-wp-security.php\":{\"name\":\"Solid Security Basic\",\"version\":\"9.4.2\",\"plugin_uri\":\"https:\\/\\/solidwp.com\\/products\\/security\"}},\"ui_field_groups\":\"0\",\"php_field_groups\":\"0\",\"json_field_groups\":\"3\",\"rest_field_groups\":\"0\",\"all_location_rules\":[\"taxonomy==advantage\",\"taxonomy==function\",\"post_type==product\"],\"number_of_fields_by_type\":{\"image\":3,\"taxonomy\":1,\"text\":7,\"select\":1,\"number\":7},\"number_of_third_party_fields_by_type\":[],\"post_types_enabled\":true,\"ui_post_types\":\"7\",\"json_post_types\":\"0\",\"ui_taxonomies\":\"6\",\"json_taxonomies\":\"0\",\"rest_api_format\":\"light\",\"admin_ui_enabled\":true,\"field_type-modal_enabled\":true,\"field_settings_tabs_enabled\":false,\"shortcode_enabled\":false,\"registered_acf_forms\":\"0\",\"json_save_paths\":1,\"json_load_paths\":1,\"event_first_activated\":1761293327,\"event_first_created_field_group\":1761478635,\"event_first_created_taxonomy\":1762179492,\"last_updated\":1763246205}', 'off'),
(174, 'acf_version', '6.6.2', 'auto'),
(175, 'action_scheduler_hybrid_store_demarkation', '9', 'auto'),
(176, 'schema-ActionScheduler_StoreSchema', '8.0.1761999012', 'auto'),
(177, 'schema-ActionScheduler_LoggerSchema', '3.0.1761999012', 'auto'),
(178, 'action_scheduler_lock_async-request-runner', '691a9ea96284e7.90322438|1763352293', 'no'),
(179, 'aioseo_options_internal', '{\"internal\":{\"connectLicenseKey\":null,\"lastActiveVersion\":\"4.8.9\",\"migratedVersion\":\"0.0\",\"siteAnalysis\":{\"connectToken\":null},\"headlineAnalysis\":{\"headlines\":[]},\"wizard\":\"{\\\"currentStage\\\":\\\"welcome\\\",\\\"stages\\\":[\\\"category\\\",\\\"additional-information\\\",\\\"features\\\",\\\"search-appearance\\\",\\\"smart-recommendations\\\",\\\"search-console\\\",\\\"license-key\\\"],\\\"importers\\\":[],\\\"category\\\":{\\\"category\\\":\\\"blog\\\",\\\"categoryOther\\\":null,\\\"siteTitle\\\":\\\"\\\",\\\"metaDescription\\\":\\\"\\\"},\\\"additionalInformation\\\":{\\\"siteRepresents\\\":\\\"organization\\\",\\\"person\\\":null,\\\"organizationName\\\":null,\\\"orgnaizationDescription\\\":null,\\\"organizationLogo\\\":null,\\\"personName\\\":null,\\\"personLogo\\\":null,\\\"phone\\\":null,\\\"socialShareImage\\\":null,\\\"social\\\":{\\\"profiles\\\":{\\\"sameUsername\\\":{\\\"enable\\\":true,\\\"username\\\":null,\\\"included\\\":[\\\"facebookPageUrl\\\",\\\"twitterUrl\\\",\\\"pinterestUrl\\\",\\\"instagramUrl\\\",\\\"youtubeUrl\\\",\\\"linkedinUrl\\\"]},\\\"urls\\\":{\\\"facebookPageUrl\\\":null,\\\"twitterUrl\\\":null,\\\"instagramUrl\\\":null,\\\"pinterestUrl\\\":null,\\\"youtubeUrl\\\":null,\\\"linkedinUrl\\\":null,\\\"tumblrUrl\\\":null,\\\"yelpPageUrl\\\":null,\\\"soundCloudUrl\\\":null,\\\"wikipediaUrl\\\":null,\\\"myspaceUrl\\\":null,\\\"googlePlacesUrl\\\":null,\\\"wordPressUrl\\\":null}}}},\\\"features\\\":[],\\\"searchAppearance\\\":{\\\"underConstruction\\\":false,\\\"postTypes\\\":{\\\"postTypes\\\":{\\\"all\\\":true,\\\"included\\\":[\\\"post\\\",\\\"page\\\",\\\"attachment\\\",\\\"product\\\"]}},\\\"multipleAuthors\\\":true,\\\"redirectAttachmentPages\\\":true,\\\"emailReports\\\":true},\\\"smartRecommendations\\\":{\\\"accountInfo\\\":null,\\\"usageTracking\\\":true},\\\"licenseKey\\\":null,\\\"showUsageTrackingModal\\\":false}\",\"category\":null,\"categoryOther\":null,\"deprecatedOptions\":[],\"searchStatistics\":{\"profile\":[],\"trustToken\":null,\"rolling\":\"last28Days\",\"site\":{\"verified\":false,\"lastFetch\":0},\"sitemap\":{\"list\":[],\"ignored\":[],\"lastFetch\":0}},\"ai\":{\"accessToken\":\"e83f6dabd9640a8af4d8cde4bb9c84b3c7af7946ce61530705f14703b3b50d5d\",\"isTrialAccessToken\":true,\"isManuallyConnected\":false,\"credits\":{\"total\":100,\"remaining\":100,\"orders\":[],\"license\":{\"total\":0,\"remaining\":0,\"expires\":0}}}},\"integrations\":{\"semrush\":{\"accessToken\":null,\"tokenType\":null,\"expires\":null,\"refreshToken\":null}}}', 'auto'),
(180, 'aioseo_options_internal_lite', '{\"internal\":{\"activated\":0,\"firstActivated\":1761293370,\"installed\":0,\"connect\":{\"key\":null,\"time\":0,\"network\":false,\"token\":null}}}', 'auto'),
(184, 'aioseo_dynamic_settings_backup', '{}', 'off'),
(185, 'aioseo_options_dynamic_localized', 'a:4:{s:42:\"searchAppearance_taxonomies_category_title\";s:41:\"#taxonomy_title #separator_sa #site_title\";s:52:\"searchAppearance_taxonomies_category_metaDescription\";s:21:\"#taxonomy_description\";s:42:\"searchAppearance_taxonomies_post_tag_title\";s:41:\"#taxonomy_title #separator_sa #site_title\";s:52:\"searchAppearance_taxonomies_post_tag_metaDescription\";s:21:\"#taxonomy_description\";}', 'auto'),
(187, 'aioseo_options', '{\"internal\":[],\"webmasterTools\":{\"google\":null,\"bing\":null,\"yandex\":null,\"baidu\":null,\"pinterest\":null,\"microsoftClarityProjectId\":null,\"norton\":null,\"miscellaneousVerification\":null},\"aiContent\":{\"country\":\"us\",\"language\":\"en\",\"tone\":\"formal\",\"audience\":\"general\",\"imageQuality\":\"medium\",\"imageStyle\":\"auto\",\"imageAspectRatio\":\"landscape\"},\"breadcrumbs\":{\"separator\":\"&raquo;\",\"homepageLink\":true,\"homepageLabel\":\"Home\",\"breadcrumbPrefix\":\"\",\"archiveFormat\":\"Archives for #breadcrumb_archive_post_type_name\",\"searchResultFormat\":\"Search Results for \'#breadcrumb_search_string\'\",\"errorFormat404\":\"404 - Page Not Found\",\"showCurrentItem\":true,\"linkCurrentItem\":false,\"categoryFullHierarchy\":false,\"showBlogHome\":false},\"rssContent\":{\"before\":null,\"after\":\"&lt;p&gt;The post #post_link first appeared on #site_link.&lt;\\/p&gt;\"},\"advanced\":{\"truSeo\":true,\"headlineAnalyzer\":true,\"seoAnalysis\":true,\"dashboardWidgets\":[\"seoSetup\",\"seoOverview\",\"seoNews\"],\"announcements\":true,\"postTypes\":{\"all\":true,\"included\":[\"post\",\"page\",\"product\"]},\"taxonomies\":{\"all\":true,\"included\":[\"category\",\"post_tag\",\"product_cat\",\"product_tag\"]},\"uninstall\":false,\"emailSummary\":{\"enable\":false,\"recipients\":[{\"email\":\"admin@fazrilsh.com\",\"frequency\":\"monthly\"}]}},\"sitemap\":{\"general\":{\"enable\":true,\"filename\":\"sitemap\",\"indexes\":true,\"linksPerIndex\":1000,\"postTypes\":{\"all\":true,\"included\":[\"post\",\"page\",\"attachment\",\"product\"]},\"taxonomies\":{\"all\":true,\"included\":[\"category\",\"post_tag\",\"product_cat\",\"product_tag\"]},\"author\":false,\"date\":false,\"additionalPages\":{\"enable\":false,\"pages\":[]},\"advancedSettings\":{\"enable\":false,\"excludeImages\":false,\"excludePosts\":[],\"excludeTerms\":[],\"priority\":{\"homePage\":{\"priority\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\",\"frequency\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\"},\"postTypes\":{\"grouped\":true,\"priority\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\",\"frequency\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\"},\"taxonomies\":{\"grouped\":true,\"priority\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\",\"frequency\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\"},\"archive\":{\"priority\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\",\"frequency\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\"},\"author\":{\"priority\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\",\"frequency\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\"}}}},\"rss\":{\"enable\":true,\"linksPerIndex\":50,\"postTypes\":{\"all\":true,\"included\":[\"post\",\"page\",\"product\"]}},\"html\":{\"enable\":true,\"pageUrl\":\"\",\"postTypes\":{\"all\":true,\"included\":[\"post\",\"page\",\"product\"]},\"taxonomies\":{\"all\":true,\"included\":[\"category\",\"post_tag\",\"product_cat\",\"product_tag\"]},\"sortOrder\":\"publish_date\",\"sortDirection\":\"asc\",\"publicationDate\":true,\"compactArchives\":false,\"advancedSettings\":{\"enable\":false,\"nofollowLinks\":false,\"excludePosts\":[],\"excludeTerms\":[]}},\"llms\":{\"enable\":true,\"convertToMd\":true,\"advancedSettings\":{\"title\":\"#site_title\",\"description\":\"#tagline\",\"linksPerPostTax\":1000,\"postTypes\":{\"all\":true,\"included\":[\"post\",\"page\",\"product\"]},\"taxonomies\":{\"all\":true,\"included\":[]},\"excludePosts\":[],\"excludeTerms\":[]}}},\"social\":{\"profiles\":{\"sameUsername\":{\"enable\":false,\"username\":null,\"included\":[\"facebookPageUrl\",\"twitterUrl\",\"tiktokUrl\",\"pinterestUrl\",\"instagramUrl\",\"youtubeUrl\",\"linkedinUrl\"]},\"urls\":{\"facebookPageUrl\":null,\"twitterUrl\":null,\"instagramUrl\":null,\"tiktokUrl\":null,\"pinterestUrl\":null,\"youtubeUrl\":null,\"linkedinUrl\":null,\"tumblrUrl\":null,\"yelpPageUrl\":null,\"soundCloudUrl\":null,\"wikipediaUrl\":null,\"myspaceUrl\":null,\"googlePlacesUrl\":null,\"wordPressUrl\":null,\"blueskyUrl\":null,\"threadsUrl\":null},\"additionalUrls\":null},\"facebook\":{\"general\":{\"enable\":true,\"defaultImageSourcePosts\":\"default\",\"customFieldImagePosts\":null,\"defaultImagePosts\":\"\",\"defaultImagePostsWidth\":\"\",\"defaultImagePostsHeight\":\"\",\"showAuthor\":true,\"siteName\":\"#site_title #separator_sa #tagline\"},\"homePage\":{\"image\":\"\",\"title\":\"\",\"description\":\"\",\"imageWidth\":\"\",\"imageHeight\":\"\",\"objectType\":\"website\"},\"advanced\":{\"enable\":false,\"adminId\":\"\",\"appId\":\"\",\"authorUrl\":\"\",\"generateArticleTags\":false,\"useKeywordsInTags\":true,\"useCategoriesInTags\":true,\"usePostTagsInTags\":true}},\"twitter\":{\"general\":{\"enable\":true,\"useOgData\":false,\"defaultCardType\":\"summary_large_image\",\"defaultImageSourcePosts\":\"default\",\"customFieldImagePosts\":null,\"defaultImagePosts\":\"\",\"showAuthor\":true,\"additionalData\":false},\"homePage\":{\"image\":\"\",\"title\":\"\",\"description\":\"\",\"cardType\":\"summary\"}}},\"searchAppearance\":{\"global\":{\"separator\":\"&#45;\",\"siteTitle\":\"#site_title #separator_sa #tagline\",\"metaDescription\":\"#tagline\",\"keywords\":null,\"schema\":{\"websiteName\":\"#site_title\",\"websiteAlternateName\":null,\"siteRepresents\":\"organization\",\"person\":null,\"organizationName\":\"#site_title\",\"organizationDescription\":\"#tagline\",\"organizationLogo\":\"\",\"personName\":null,\"personLogo\":null,\"phone\":null,\"email\":null,\"foundingDate\":null,\"numberOfEmployees\":{\"isRange\":null,\"from\":null,\"to\":null,\"number\":null}}},\"advanced\":{\"globalRobotsMeta\":{\"default\":true,\"noindex\":false,\"nofollow\":false,\"noindexPaginated\":true,\"nofollowPaginated\":true,\"noindexFeed\":true,\"noarchive\":false,\"noimageindex\":false,\"notranslate\":false,\"nosnippet\":false,\"noodp\":false,\"maxSnippet\":-1,\"maxVideoPreview\":-1,\"maxImagePreview\":\"large\"},\"noIndexEmptyCat\":true,\"removeStopWords\":false,\"useKeywords\":false,\"keywordsLooking\":true,\"useCategoriesForMetaKeywords\":false,\"useTagsForMetaKeywords\":false,\"dynamicallyGenerateKeywords\":false,\"pagedFormat\":\"#separator_sa Page #page_number\",\"runShortcodes\":false,\"crawlCleanup\":{\"enable\":false,\"feeds\":{\"global\":true,\"globalComments\":false,\"staticBlogPage\":true,\"authors\":true,\"postComments\":false,\"search\":false,\"attachments\":false,\"archives\":{\"all\":false,\"included\":[]},\"taxonomies\":{\"all\":false,\"included\":[\"category\"]},\"atom\":false,\"rdf\":false,\"paginated\":false}},\"unwantedBots\":{\"all\":false,\"settings\":{\"googleAdsBot\":false,\"openAiGptBot\":false,\"commonCrawlCcBot\":false,\"googleGeminiVertexAiBots\":false}},\"searchCleanup\":{\"enable\":false,\"settings\":{\"maxAllowedNumberOfChars\":50,\"emojisAndSymbols\":false,\"commonPatterns\":false,\"redirectPrettyUrls\":false,\"preventCrawling\":false}},\"blockArgs\":{\"enable\":false,\"optimizeUtmParameters\":false,\"logsRetention\":\"{\\\"label\\\":\\\"1 week\\\",\\\"value\\\":\\\"week\\\"}\"},\"removeCategoryBase\":false},\"archives\":{\"author\":{\"show\":true,\"title\":\"#author_name #separator_sa #site_title\",\"metaDescription\":\"#author_bio\",\"advanced\":{\"robotsMeta\":{\"default\":true,\"noindex\":false,\"nofollow\":false,\"noarchive\":false,\"noimageindex\":false,\"notranslate\":false,\"nosnippet\":false,\"noodp\":false,\"maxSnippet\":-1,\"maxVideoPreview\":-1,\"maxImagePreview\":\"large\"},\"showDateInGooglePreview\":true,\"showPostThumbnailInSearch\":true,\"showMetaBox\":true,\"keywords\":null}},\"date\":{\"show\":true,\"title\":\"#archive_date #separator_sa #site_title\",\"metaDescription\":\"\",\"advanced\":{\"robotsMeta\":{\"default\":true,\"noindex\":false,\"nofollow\":false,\"noarchive\":false,\"noimageindex\":false,\"notranslate\":false,\"nosnippet\":false,\"noodp\":false,\"maxSnippet\":-1,\"maxVideoPreview\":-1,\"maxImagePreview\":\"large\"},\"showDateInGooglePreview\":true,\"showPostThumbnailInSearch\":true,\"showMetaBox\":true,\"keywords\":null}},\"search\":{\"show\":false,\"title\":\"#search_term #separator_sa #site_title\",\"metaDescription\":\"\",\"advanced\":{\"robotsMeta\":{\"default\":false,\"noindex\":true,\"nofollow\":false,\"noarchive\":false,\"noimageindex\":false,\"notranslate\":false,\"nosnippet\":false,\"noodp\":false,\"maxSnippet\":-1,\"maxVideoPreview\":-1,\"maxImagePreview\":\"large\"},\"showDateInGooglePreview\":true,\"showPostThumbnailInSearch\":true,\"showMetaBox\":true,\"keywords\":null}}}},\"searchStatistics\":{\"postTypes\":{\"all\":true,\"included\":[\"post\",\"page\"]}},\"tools\":{\"robots\":{\"enable\":false,\"rules\":[],\"robotsDetected\":true},\"importExport\":{\"backup\":{\"lastTime\":null,\"data\":null}}},\"deprecated\":{\"breadcrumbs\":{\"enable\":true},\"searchAppearance\":{\"global\":{\"descriptionFormat\":null,\"schema\":{\"enableSchemaMarkup\":true}},\"advanced\":{\"autogenerateDescriptions\":true,\"runShortcodesInDescription\":true,\"useContentForAutogeneratedDescriptions\":false,\"excludePosts\":[],\"excludeTerms\":[],\"noPaginationForCanonical\":true}},\"sitemap\":{\"general\":{\"advancedSettings\":{\"dynamic\":true}}}},\"writingAssistant\":{\"postTypes\":{\"all\":true,\"included\":[\"post\",\"page\"]}}}', 'auto'),
(188, 'aioseo_options_lite', '{\"advanced\":{\"usageTracking\":true}}', 'auto'),
(189, 'aioseo_options_dynamic', '{\"sitemap\":{\"priority\":{\"postTypes\":{\"post\":{\"priority\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\",\"frequency\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\"},\"page\":{\"priority\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\",\"frequency\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\"},\"attachment\":{\"priority\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\",\"frequency\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\"},\"layanan\":{\"priority\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\",\"frequency\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\"},\"produk\":{\"priority\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\",\"frequency\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\"}},\"taxonomies\":{\"category\":{\"priority\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\",\"frequency\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\"},\"post_tag\":{\"priority\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\",\"frequency\":\"{\\\"label\\\":\\\"default\\\",\\\"value\\\":\\\"default\\\"}\"}}}},\"social\":{\"facebook\":{\"general\":{\"postTypes\":{\"post\":{\"objectType\":\"article\"},\"page\":{\"objectType\":\"article\"},\"attachment\":{\"objectType\":\"article\"},\"layanan\":{\"objectType\":\"article\"},\"produk\":{\"objectType\":\"article\"}}}}},\"searchAppearance\":{\"postTypes\":{\"post\":{\"show\":true,\"advanced\":{\"robotsMeta\":{\"default\":true,\"noindex\":false,\"nofollow\":false,\"noarchive\":false,\"noimageindex\":false,\"notranslate\":false,\"nosnippet\":false,\"noodp\":false,\"maxSnippet\":-1,\"maxVideoPreview\":-1,\"maxImagePreview\":\"large\"},\"showDateInGooglePreview\":true,\"showPostThumbnailInSearch\":true,\"showMetaBox\":true,\"bulkEditing\":\"enabled\"},\"title\":\"#post_title #separator_sa #site_title\",\"metaDescription\":\"#post_excerpt\",\"schemaType\":\"Article\",\"webPageType\":\"WebPage\",\"articleType\":\"BlogPosting\",\"customFields\":null},\"page\":{\"show\":true,\"advanced\":{\"robotsMeta\":{\"default\":true,\"noindex\":false,\"nofollow\":false,\"noarchive\":false,\"noimageindex\":false,\"notranslate\":false,\"nosnippet\":false,\"noodp\":false,\"maxSnippet\":-1,\"maxVideoPreview\":-1,\"maxImagePreview\":\"large\"},\"showDateInGooglePreview\":true,\"showPostThumbnailInSearch\":true,\"showMetaBox\":true,\"bulkEditing\":\"enabled\"},\"title\":\"#post_title #separator_sa #site_title\",\"metaDescription\":\"#post_content\",\"schemaType\":\"WebPage\",\"webPageType\":\"WebPage\",\"articleType\":\"BlogPosting\",\"customFields\":null},\"attachment\":{\"show\":true,\"advanced\":{\"robotsMeta\":{\"default\":true,\"noindex\":false,\"nofollow\":false,\"noarchive\":false,\"noimageindex\":false,\"notranslate\":false,\"nosnippet\":false,\"noodp\":false,\"maxSnippet\":-1,\"maxVideoPreview\":-1,\"maxImagePreview\":\"large\"},\"showDateInGooglePreview\":true,\"showPostThumbnailInSearch\":true,\"showMetaBox\":true,\"bulkEditing\":\"enabled\"},\"title\":\"#post_title #separator_sa #site_title\",\"metaDescription\":\"#attachment_caption\",\"schemaType\":\"ItemPage\",\"webPageType\":\"ItemPage\",\"articleType\":\"BlogPosting\",\"customFields\":null,\"redirectAttachmentUrls\":\"attachment\"},\"layanan\":{\"show\":true,\"advanced\":{\"robotsMeta\":{\"default\":true,\"noindex\":false,\"nofollow\":false,\"noarchive\":false,\"noimageindex\":false,\"notranslate\":false,\"nosnippet\":false,\"noodp\":false,\"maxSnippet\":-1,\"maxVideoPreview\":-1,\"maxImagePreview\":\"large\"},\"showDateInGooglePreview\":true,\"showPostThumbnailInSearch\":true,\"showMetaBox\":true,\"bulkEditing\":\"enabled\"},\"title\":\"#post_title #separator_sa #site_title\",\"metaDescription\":\"#post_content\",\"schemaType\":\"WebPage\",\"webPageType\":\"WebPage\",\"articleType\":\"BlogPosting\",\"customFields\":null},\"produk\":{\"show\":true,\"advanced\":{\"robotsMeta\":{\"default\":true,\"noindex\":false,\"nofollow\":false,\"noarchive\":false,\"noimageindex\":false,\"notranslate\":false,\"nosnippet\":false,\"noodp\":false,\"maxSnippet\":-1,\"maxVideoPreview\":-1,\"maxImagePreview\":\"large\"},\"showDateInGooglePreview\":true,\"showPostThumbnailInSearch\":true,\"showMetaBox\":true,\"bulkEditing\":\"enabled\"},\"title\":\"#post_title #separator_sa #site_title\",\"metaDescription\":\"#post_content\",\"schemaType\":\"WebPage\",\"webPageType\":\"WebPage\",\"articleType\":\"BlogPosting\",\"customFields\":null}},\"taxonomies\":{\"category\":{\"show\":true,\"advanced\":{\"robotsMeta\":{\"default\":true,\"noindex\":false,\"nofollow\":false,\"noarchive\":false,\"noimageindex\":false,\"notranslate\":false,\"nosnippet\":false,\"noodp\":false,\"maxSnippet\":-1,\"maxVideoPreview\":-1,\"maxImagePreview\":\"large\"},\"showDateInGooglePreview\":true,\"showPostThumbnailInSearch\":true,\"showMetaBox\":true},\"title\":\"#taxonomy_title #separator_sa #site_title\",\"metaDescription\":\"#taxonomy_description\"},\"post_tag\":{\"show\":true,\"advanced\":{\"robotsMeta\":{\"default\":true,\"noindex\":false,\"nofollow\":false,\"noarchive\":false,\"noimageindex\":false,\"notranslate\":false,\"nosnippet\":false,\"noodp\":false,\"maxSnippet\":-1,\"maxVideoPreview\":-1,\"maxImagePreview\":\"large\"},\"showDateInGooglePreview\":true,\"showPostThumbnailInSearch\":true,\"showMetaBox\":true},\"title\":\"#taxonomy_title #separator_sa #site_title\",\"metaDescription\":\"#taxonomy_description\"}},\"archives\":{\"layanan\":{\"show\":true,\"advanced\":{\"robotsMeta\":{\"default\":true,\"noindex\":false,\"nofollow\":false,\"noarchive\":false,\"noimageindex\":false,\"notranslate\":false,\"nosnippet\":false,\"noodp\":false,\"maxSnippet\":-1,\"maxVideoPreview\":-1,\"maxImagePreview\":\"large\"},\"showDateInGooglePreview\":true,\"showPostThumbnailInSearch\":true,\"showMetaBox\":true,\"keywords\":null},\"title\":\"#archive_title #separator_sa #site_title\",\"metaDescription\":\"\",\"customFields\":null},\"produk\":{\"show\":true,\"advanced\":{\"robotsMeta\":{\"default\":true,\"noindex\":false,\"nofollow\":false,\"noarchive\":false,\"noimageindex\":false,\"notranslate\":false,\"nosnippet\":false,\"noodp\":false,\"maxSnippet\":-1,\"maxVideoPreview\":-1,\"maxImagePreview\":\"large\"},\"showDateInGooglePreview\":true,\"showPostThumbnailInSearch\":true,\"showMetaBox\":true,\"keywords\":null},\"title\":\"#archive_title #separator_sa #site_title\",\"metaDescription\":\"\",\"customFields\":null}}},\"seoAnalysis\":{\"postTypes\":{\"all\":true,\"included\":[\"post\",\"page\"]},\"postStatuses\":{\"all\":false,\"included\":[\"publish\",\"draft\",\"private\"]},\"taxonomies\":{\"all\":true,\"included\":[]},\"excludePosts\":[],\"excludeTerms\":[]}}', 'auto'),
(199, 'wpmodulaupdate', '1', 'auto'),
(206, 'itsec_user_encryption_test', '$t1$1XGsjyb1sk8v230smjl4qel1SkogTMeAonCvKb0CutCW5PUjmDGmZjMMTML78Yf2RJoI', 'off'),
(225, 'itsec_cron', 'a:2:{s:6:\"single\";a:0:{}s:9:\"recurring\";a:8:{s:17:\"purge-log-entries\";a:1:{s:4:\"data\";a:0:{}}s:19:\"identify-server-ips\";a:1:{s:4:\"data\";a:0:{}}s:28:\"dashboard-consolidate-events\";a:1:{s:4:\"data\";a:0:{}}s:11:\"clear-locks\";a:1:{s:4:\"data\";a:0:{}}s:12:\"clear-tokens\";a:1:{s:4:\"data\";a:0:{}}s:14:\"purge-lockouts\";a:1:{s:4:\"data\";a:0:{}}s:17:\"enable-encryption\";a:1:{s:4:\"data\";a:0:{}}s:11:\"flush-files\";a:1:{s:4:\"data\";a:0:{}}}}', 'off');
INSERT INTO `abuhasdha_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(260, 'itsec-storage', 'a:8:{s:6:\"global\";a:34:{s:11:\"write_files\";b:1;s:10:\"nginx_file\";s:48:\"/home/hourigtq/fazrilsh.com/abuhasdha/nginx.conf\";s:14:\"lockout_period\";i:15;s:16:\"blacklist_period\";i:7;s:9:\"blacklist\";b:1;s:15:\"blacklist_count\";i:3;s:15:\"lockout_message\";s:5:\"error\";s:20:\"user_lockout_message\";s:61:\"You have been locked out for too many invalid login attempts.\";s:25:\"community_lockout_message\";s:75:\"Your IP address has been flagged as a threat by the Solid Security network.\";s:19:\"automatic_temp_auth\";b:1;s:18:\"lockout_white_list\";a:1:{i:0;s:12:\"180.243.8.55\";}s:8:\"log_type\";s:8:\"database\";s:12:\"log_rotation\";i:60;s:17:\"file_log_rotation\";i:180;s:12:\"log_location\";s:78:\"/home/hourigtq/fazrilsh.com/abuhasdha/wp-content/uploads/ithemes-security/logs\";s:5:\"proxy\";s:8:\"disabled\";s:12:\"proxy_header\";s:20:\"HTTP_X_FORWARDED_FOR\";s:14:\"hide_admin_bar\";b:0;s:14:\"allow_tracking\";b:1;s:16:\"show_error_codes\";b:0;s:5:\"build\";i:4129;s:13:\"initial_build\";i:4129;s:20:\"activation_timestamp\";i:1761293380;s:11:\"cron_status\";i:1;s:8:\"use_cron\";b:1;s:14:\"cron_test_time\";i:1763355110;s:10:\"server_ips\";a:2:{i:0;s:15:\"109.110.188.205\";i:1;s:15:\"109.110.188.195\";}s:24:\"licensed_hostname_prompt\";b:0;s:16:\"onboard_complete\";b:1;s:13:\"enabled_tools\";a:0:{}s:18:\"enable_remote_help\";b:0;s:13:\"feature_flags\";a:0:{}s:8:\"log_info\";s:0:\"\";s:12:\"manage_group\";a:0:{}}s:10:\"__extended\";a:0:{}s:4:\"core\";a:1:{s:17:\"last_seen_lockout\";i:1763315690;}s:19:\"notification-center\";a:8:{s:9:\"last_sent\";a:1:{s:6:\"digest\";i:1763315690;}s:9:\"resend_at\";a:0:{}s:4:\"data\";a:1:{s:6:\"digest\";a:0:{}}s:15:\"last_mail_error\";s:0:\"\";s:10:\"from_email\";s:0:\"\";s:18:\"default_recipients\";a:1:{s:9:\"user_list\";a:1:{i:0;s:18:\"role:administrator\";}}s:13:\"notifications\";a:6:{s:6:\"digest\";a:5:{s:8:\"schedule\";s:5:\"daily\";s:7:\"subject\";N;s:7:\"enabled\";b:1;s:9:\"user_list\";a:1:{i:0;s:18:\"role:administrator\";}s:14:\"recipient_type\";s:7:\"default\";}s:6:\"backup\";a:2:{s:7:\"subject\";N;s:10:\"email_list\";a:1:{i:0;s:18:\"admin@fazrilsh.com\";}}s:7:\"lockout\";a:4:{s:7:\"subject\";N;s:7:\"enabled\";b:1;s:9:\"user_list\";a:1:{i:0;s:18:\"role:administrator\";}s:14:\"recipient_type\";s:7:\"default\";}s:16:\"two-factor-email\";a:2:{s:7:\"subject\";N;s:7:\"message\";s:0:\"\";}s:24:\"two-factor-confirm-email\";a:3:{s:7:\"subject\";N;s:7:\"message\";s:0:\"\";s:7:\"enabled\";b:1;}s:19:\"two-factor-reminder\";a:2:{s:7:\"subject\";N;s:7:\"message\";s:0:\"\";}}s:12:\"admin_emails\";a:0:{}}s:12:\"site-scanner\";a:3:{s:15:\"vulnerabilities\";a:0:{}s:12:\"muted_issues\";a:0:{}s:16:\"registered_sites\";a:1:{i:1;a:2:{s:3:\"url\";s:30:\"https://fazrilsh.com/abuhasdha\";s:3:\"key\";s:228:\"v2.local.xWt_9wkpR7Tu9_wom_NAMj01KjhTeKBsgRFCZfHbPfVTLGfxn-0G5qcH4FLDlu6avCgID-VzxSaoraPScDt3QEzwIUoZBrIuPBviWVf8gKwjT2P31mMHcVeiNCjh0vt5Ge7sBZDiHx8tuWg3FKJaPG9My-YqKt6wKwegwWuyn5LY7SFk6MUqo65ZBeMgsn02odwB-hhVvE88BRgGT-3yQb0ZSOM\";}}}s:19:\"network-brute-force\";a:6:{s:10:\"enable_ban\";b:1;s:7:\"api_key\";s:32:\"ZyO7yIQEVD6Jk80AONjetOyYu76fM5AO\";s:10:\"api_secret\";s:128:\"C6Lxw62zyg110C7u8HqrP94S45B3Hu9e8GkiRLOsd5O3vXWMI19VHX9rrj7ff7aC5EvIFIwFnkcp9xK99SLL7LFv0495Vhd21Qs5u6PiihtLm43J0iXEQlfBBkIUczg7\";s:5:\"email\";N;s:13:\"updates_optin\";b:0;s:7:\"api_nag\";b:0;}s:10:\"two-factor\";a:6:{s:17:\"available_methods\";s:3:\"all\";s:24:\"custom_available_methods\";a:3:{i:0;s:15:\"Two_Factor_Totp\";i:1;s:16:\"Two_Factor_Email\";i:2;s:23:\"Two_Factor_Backup_Codes\";}s:19:\"disable_first_login\";b:0;s:16:\"on_board_welcome\";s:412:\"When you login using Two-factor authenticator you’ll be prompted to enter a secondary Authentication Code from your Phone or Email.\n\nTwo-Factor authentication adds an important extra layer of protection to your login by combining something you know, your password, with something you have, your Phone or Email, preventing attackers from gaining access to your account even if you lose control of your password.\";s:13:\"exclude_group\";a:4:{i:0;s:36:\"e0c18f90-07e6-4ff2-8ffc-226ce111e2f2\";i:1;s:36:\"e0613ca2-ad3e-498e-952d-d990132d7c51\";i:2;s:36:\"3f8beff4-32a9-4a8a-9f48-3bb62da31da9\";i:3;s:14:\"everybody-else\";}s:27:\"application_passwords_group\";a:6:{i:0;s:36:\"27869605-dbbf-42cb-895d-fcdd0be12a8e\";i:1;s:36:\"14933707-6e09-4972-9918-700a0d487477\";i:2;s:36:\"e0c18f90-07e6-4ff2-8ffc-226ce111e2f2\";i:3;s:36:\"e0613ca2-ad3e-498e-952d-d990132d7c51\";i:4;s:36:\"3f8beff4-32a9-4a8a-9f48-3bb62da31da9\";i:5;s:14:\"everybody-else\";}}s:21:\"password-requirements\";a:2:{s:20:\"enabled_requirements\";a:2:{s:8:\"strength\";b:0;s:4:\"hibp\";b:0;}s:20:\"requirement_settings\";a:2:{s:8:\"strength\";a:1:{s:5:\"group\";a:2:{i:0;s:36:\"27869605-dbbf-42cb-895d-fcdd0be12a8e\";i:1;s:36:\"14933707-6e09-4972-9918-700a0d487477\";}}s:4:\"hibp\";a:1:{s:5:\"group\";a:2:{i:0;s:36:\"27869605-dbbf-42cb-895d-fcdd0be12a8e\";i:1;s:36:\"14933707-6e09-4972-9918-700a0d487477\";}}}}}', 'auto'),
(263, 'itsec_temp_whitelist_ip', 'a:3:{s:13:\"104.28.163.38\";i:1763438164;s:13:\"146.75.160.28\";i:1763438235;s:13:\"146.75.160.29\";i:1763438633;}', 'off'),
(264, 'stellarwp_telemetry_last_send', '2025-11-15 22:36:43', 'auto'),
(265, 'stellarwp_telemetry', 'a:2:{s:7:\"plugins\";a:1:{s:14:\"solid-security\";a:2:{s:7:\"wp_slug\";s:41:\"better-wp-security/better-wp-security.php\";s:5:\"optin\";b:1;}}s:5:\"token\";s:64:\"5e27f3e72d23df15520942770f884f78e75b782ce96ffcfaa56cdf30815506b5\";}', 'auto'),
(266, 'stellarwp_telemetry_solid-security_show_optin', '0', 'auto'),
(268, 'googlesitekit_db_version', '1.163.0', 'auto'),
(269, 'googlesitekit_has_connected_admins', '0', 'auto'),
(272, 'as_has_wp_comment_logs', 'no', 'on'),
(283, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'off'),
(285, '_transient_googlesitekit_verification_meta_tags', 'a:0:{}', 'on'),
(304, 'abuhasdha_login_slug', 'portal-admin', 'auto'),
(360, '_transient_health-check-site-status-result', '{\"good\":19,\"recommended\":4,\"critical\":0}', 'on'),
(391, 'wpchill_notification_five-star-rate', 'a:7:{s:5:\"title\";s:7:\"Rate Us\";s:7:\"message\";s:178:\"Hi there! Stoked to see you&#039;re using Modula for a few days now - hope you like it! And if you do, please consider rating it. It would mean the world to us.  Keep on rocking!\";s:6:\"status\";s:7:\"success\";s:6:\"source\";a:2:{s:4:\"slug\";s:6:\"modula\";s:4:\"name\";s:6:\"Modula\";}s:11:\"dismissible\";b:0;s:9:\"timestamp\";b:0;s:7:\"actions\";a:3:{i:0;a:5:{s:5:\"label\";s:15:\"Remind me later\";s:2:\"id\";s:13:\"epsilon-later\";s:5:\"class\";s:21:\"epsilon-review-button\";s:7:\"dismiss\";b:1;s:8:\"callback\";s:17:\"handleButtonClick\";}i:1;a:5:{s:5:\"label\";s:21:\"Don&#039;t show again\";s:2:\"id\";s:15:\"epsilon-no-rate\";s:5:\"class\";s:21:\"epsilon-review-button\";s:7:\"dismiss\";b:1;s:8:\"callback\";s:17:\"handleButtonClick\";}i:2;a:7:{s:5:\"label\";s:15:\"Rate the plugin\";s:3:\"url\";s:79:\"https://wordpress.org/support/plugin/modula-best-grid-gallery/reviews/#new-post\";s:5:\"class\";s:21:\"epsilon-review-button\";s:7:\"variant\";s:7:\"primary\";s:6:\"target\";s:6:\"_BLANK\";s:7:\"dismiss\";b:1;s:8:\"callback\";s:17:\"handleButtonClick\";}}}', 'auto'),
(795, 'category_children', 'a:0:{}', 'auto'),
(796, 'rank_math_known_post_types', 'a:5:{s:4:\"post\";s:4:\"post\";s:4:\"page\";s:4:\"page\";s:10:\"attachment\";s:10:\"attachment\";s:7:\"service\";s:7:\"service\";s:7:\"product\";s:7:\"product\";}', 'auto'),
(797, 'rank_math_modules', 'a:15:{i:0;s:12:\"link-counter\";i:1;s:9:\"analytics\";i:2;s:12:\"seo-analysis\";i:3;s:7:\"sitemap\";i:4;s:12:\"rich-snippet\";i:5;s:11:\"woocommerce\";i:6;s:10:\"buddypress\";i:7;s:7:\"bbpress\";i:8;s:3:\"acf\";i:9;s:11:\"web-stories\";i:10;s:10:\"content-ai\";i:11;s:16:\"instant-indexing\";i:12;s:9:\"local-seo\";i:13;s:11:\"404-monitor\";i:14;s:12:\"redirections\";}', 'auto'),
(798, 'rank_math_react_settings_ui', 'on', 'off'),
(799, 'rank-math-options-general', 'a:49:{s:19:\"strip_category_base\";s:3:\"off\";s:24:\"attachment_redirect_urls\";s:2:\"on\";s:27:\"attachment_redirect_default\";s:30:\"https://fazrilsh.com/abuhasdha\";s:23:\"nofollow_external_links\";s:2:\"on\";s:20:\"nofollow_image_links\";s:3:\"off\";s:25:\"new_window_external_links\";s:2:\"on\";s:11:\"add_img_alt\";s:3:\"off\";s:14:\"img_alt_format\";s:11:\" %filename%\";s:13:\"add_img_title\";s:3:\"off\";s:16:\"img_title_format\";s:22:\"%title% %count(title)%\";s:11:\"breadcrumbs\";s:3:\"off\";s:21:\"breadcrumbs_separator\";s:7:\"&raquo;\";s:16:\"breadcrumbs_home\";s:2:\"on\";s:22:\"breadcrumbs_home_label\";s:4:\"Home\";s:26:\"breadcrumbs_archive_format\";s:15:\"Archives for %s\";s:25:\"breadcrumbs_search_format\";s:23:\"Search Results for \'%s\'\";s:21:\"breadcrumbs_404_label\";s:20:\"404 - Page Not Found\";s:31:\"breadcrumbs_ancestor_categories\";s:3:\"off\";s:21:\"breadcrumbs_blog_page\";s:3:\"off\";s:16:\"404_monitor_mode\";s:6:\"simple\";s:17:\"404_monitor_limit\";i:100;s:35:\"404_monitor_ignore_query_parameters\";s:2:\"on\";s:24:\"redirections_header_code\";s:3:\"301\";s:18:\"redirections_debug\";s:3:\"off\";s:23:\"console_caching_control\";s:2:\"90\";s:21:\"console_email_reports\";s:2:\"on\";s:23:\"console_email_frequency\";s:7:\"monthly\";s:22:\"wc_remove_product_base\";s:3:\"off\";s:23:\"wc_remove_category_base\";s:3:\"off\";s:31:\"wc_remove_category_parent_slugs\";s:3:\"off\";s:18:\"rss_before_content\";s:0:\"\";s:17:\"rss_after_content\";s:68:\"&lt;p&gt;The post %POSTLINK% first appeared on %BLOGLINK%.&lt;/p&gt;\";s:19:\"wc_remove_generator\";s:2:\"on\";s:24:\"remove_shop_snippet_data\";s:2:\"on\";s:18:\"frontend_seo_score\";s:3:\"off\";s:29:\"frontend_seo_score_post_types\";a:1:{i:0;s:4:\"post\";}s:27:\"frontend_seo_score_position\";s:3:\"top\";s:10:\"setup_mode\";s:8:\"advanced\";s:21:\"content_ai_post_types\";a:4:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:7:\"service\";i:3;s:7:\"product\";}s:18:\"content_ai_country\";s:3:\"all\";s:15:\"content_ai_tone\";s:6:\"Formal\";s:19:\"content_ai_audience\";s:16:\"General Audience\";s:19:\"content_ai_language\";s:10:\"US English\";s:15:\"analytics_stats\";s:2:\"on\";s:15:\"toc_block_title\";s:17:\"Table of Contents\";s:20:\"toc_block_list_style\";s:2:\"ul\";s:15:\"llms_post_types\";a:4:{i:0;s:4:\"post\";i:1;s:4:\"page\";i:2;s:7:\"service\";i:3;s:7:\"product\";}s:18:\"breadcrumbs_prefix\";s:0:\"\";s:29:\"breadcrumbs_remove_post_title\";s:1:\"1\";}', 'auto'),
(800, 'rank-math-options-titles', 'a:141:{s:24:\"noindex_empty_taxonomies\";s:2:\"on\";s:15:\"title_separator\";s:5:\"&#45;\";s:17:\"capitalize_titles\";s:3:\"off\";s:17:\"twitter_card_type\";s:19:\"summary_large_image\";s:19:\"knowledgegraph_type\";s:7:\"company\";s:19:\"knowledgegraph_name\";s:19:\"PT. Abuhasdha & CO.\";s:12:\"website_name\";s:19:\"PT. Abuhasdha & CO.\";s:19:\"local_business_type\";s:12:\"Organization\";s:20:\"local_address_format\";s:43:\"{address} {locality}, {region} {postalcode}\";s:13:\"opening_hours\";a:7:{i:0;a:2:{s:3:\"day\";s:6:\"Monday\";s:4:\"time\";s:11:\"09:00-17:00\";}i:1;a:2:{s:3:\"day\";s:7:\"Tuesday\";s:4:\"time\";s:11:\"09:00-17:00\";}i:2;a:2:{s:3:\"day\";s:9:\"Wednesday\";s:4:\"time\";s:11:\"09:00-17:00\";}i:3;a:2:{s:3:\"day\";s:8:\"Thursday\";s:4:\"time\";s:11:\"09:00-17:00\";}i:4;a:2:{s:3:\"day\";s:6:\"Friday\";s:4:\"time\";s:11:\"09:00-17:00\";}i:5;a:2:{s:3:\"day\";s:8:\"Saturday\";s:4:\"time\";s:11:\"09:00-17:00\";}i:6;a:2:{s:3:\"day\";s:6:\"Sunday\";s:4:\"time\";s:11:\"09:00-17:00\";}}s:20:\"opening_hours_format\";s:3:\"off\";s:14:\"homepage_title\";s:27:\"%sitename% %sep% %sitedesc%\";s:20:\"homepage_description\";s:10:\"%sitedesc%\";s:22:\"homepage_custom_robots\";s:3:\"off\";s:23:\"disable_author_archives\";s:3:\"off\";s:15:\"url_author_base\";s:6:\"author\";s:20:\"author_custom_robots\";b:0;s:13:\"author_robots\";a:1:{i:0;s:5:\"index\";}s:20:\"author_archive_title\";s:23:\"%name% %sep% %sitename%\";s:19:\"author_add_meta_box\";b:1;s:21:\"disable_date_archives\";s:3:\"off\";s:18:\"date_archive_title\";s:23:\"%date% %sep% %sitename%\";s:12:\"search_title\";s:31:\"%search_query% %sep% %sitename%\";s:9:\"404_title\";s:31:\"Page Not Found %sep% %sitename%\";s:19:\"date_archive_robots\";a:1:{i:0;s:5:\"index\";}s:14:\"noindex_search\";s:2:\"on\";s:24:\"noindex_archive_subpages\";s:3:\"off\";s:26:\"noindex_password_protected\";s:3:\"off\";s:32:\"pt_download_default_rich_snippet\";s:7:\"product\";s:29:\"author_slack_enhanced_sharing\";s:2:\"on\";s:13:\"pt_post_title\";s:24:\"%title% %sep% %sitename%\";s:19:\"pt_post_description\";s:9:\"%excerpt%\";s:14:\"pt_post_robots\";a:1:{i:0;s:5:\"index\";}s:21:\"pt_post_custom_robots\";s:3:\"off\";s:28:\"pt_post_default_rich_snippet\";s:7:\"product\";s:28:\"pt_post_default_article_type\";s:11:\"BlogPosting\";s:28:\"pt_post_default_snippet_name\";s:11:\"%seo_title%\";s:28:\"pt_post_default_snippet_desc\";s:17:\"%seo_description%\";s:30:\"pt_post_slack_enhanced_sharing\";s:2:\"on\";s:17:\"pt_post_ls_use_fk\";s:6:\"titles\";s:20:\"pt_post_add_meta_box\";s:2:\"on\";s:20:\"pt_post_bulk_editing\";s:7:\"editing\";s:24:\"pt_post_link_suggestions\";s:2:\"on\";s:24:\"pt_post_primary_taxonomy\";s:8:\"category\";s:13:\"pt_page_title\";s:24:\"%title% %sep% %sitename%\";s:19:\"pt_page_description\";s:9:\"%excerpt%\";s:14:\"pt_page_robots\";a:1:{i:0;s:5:\"index\";}s:21:\"pt_page_custom_robots\";s:3:\"off\";s:28:\"pt_page_default_rich_snippet\";s:7:\"article\";s:28:\"pt_page_default_article_type\";s:11:\"BlogPosting\";s:28:\"pt_page_default_snippet_name\";s:11:\"%seo_title%\";s:28:\"pt_page_default_snippet_desc\";s:17:\"%seo_description%\";s:30:\"pt_page_slack_enhanced_sharing\";s:2:\"on\";s:17:\"pt_page_ls_use_fk\";s:6:\"titles\";s:20:\"pt_page_add_meta_box\";s:2:\"on\";s:20:\"pt_page_bulk_editing\";s:7:\"editing\";s:24:\"pt_page_link_suggestions\";s:2:\"on\";s:19:\"pt_attachment_title\";s:24:\"%title% %sep% %sitename%\";s:25:\"pt_attachment_description\";s:9:\"%excerpt%\";s:20:\"pt_attachment_robots\";a:1:{i:0;s:7:\"noindex\";}s:27:\"pt_attachment_custom_robots\";s:2:\"on\";s:34:\"pt_attachment_default_rich_snippet\";s:3:\"off\";s:34:\"pt_attachment_default_article_type\";s:7:\"Article\";s:34:\"pt_attachment_default_snippet_name\";s:11:\"%seo_title%\";s:34:\"pt_attachment_default_snippet_desc\";s:17:\"%seo_description%\";s:36:\"pt_attachment_slack_enhanced_sharing\";s:3:\"off\";s:26:\"pt_attachment_add_meta_box\";s:3:\"off\";s:16:\"pt_service_title\";s:24:\"%title% %sep% %sitename%\";s:22:\"pt_service_description\";s:9:\"%excerpt%\";s:17:\"pt_service_robots\";a:1:{i:0;s:5:\"index\";}s:24:\"pt_service_custom_robots\";s:3:\"off\";s:31:\"pt_service_default_rich_snippet\";s:7:\"product\";s:31:\"pt_service_default_article_type\";s:7:\"Article\";s:31:\"pt_service_default_snippet_name\";s:11:\"%seo_title%\";s:31:\"pt_service_default_snippet_desc\";s:17:\"%seo_description%\";s:24:\"pt_service_archive_title\";s:31:\"%title% %page% %sep% %sitename%\";s:33:\"pt_service_slack_enhanced_sharing\";s:3:\"off\";s:20:\"pt_service_ls_use_fk\";s:6:\"titles\";s:23:\"pt_service_add_meta_box\";s:2:\"on\";s:23:\"pt_service_bulk_editing\";s:7:\"editing\";s:27:\"pt_service_link_suggestions\";s:2:\"on\";s:16:\"pt_product_title\";s:24:\"%title% %sep% %sitename%\";s:22:\"pt_product_description\";s:9:\"%excerpt%\";s:17:\"pt_product_robots\";a:1:{i:0;s:5:\"index\";}s:24:\"pt_product_custom_robots\";s:3:\"off\";s:31:\"pt_product_default_rich_snippet\";s:7:\"product\";s:31:\"pt_product_default_article_type\";s:0:\"\";s:31:\"pt_product_default_snippet_name\";s:11:\"%seo_title%\";s:31:\"pt_product_default_snippet_desc\";s:17:\"%seo_description%\";s:24:\"pt_product_archive_title\";s:31:\"%title% %page% %sep% %sitename%\";s:33:\"pt_product_slack_enhanced_sharing\";s:2:\"on\";s:20:\"pt_product_ls_use_fk\";s:6:\"titles\";s:23:\"pt_product_add_meta_box\";s:2:\"on\";s:23:\"pt_product_bulk_editing\";s:7:\"editing\";s:27:\"pt_product_link_suggestions\";s:2:\"on\";s:27:\"pt_product_primary_taxonomy\";s:11:\"product_cat\";s:18:\"pt_web-story_title\";s:24:\"%title% %sep% %sitename%\";s:24:\"pt_web-story_description\";s:9:\"%excerpt%\";s:19:\"pt_web-story_robots\";a:1:{i:0;s:5:\"index\";}s:26:\"pt_web-story_custom_robots\";s:3:\"off\";s:33:\"pt_web-story_default_rich_snippet\";s:7:\"article\";s:33:\"pt_web-story_default_article_type\";s:7:\"Article\";s:33:\"pt_web-story_default_snippet_name\";s:11:\"%seo_title%\";s:33:\"pt_web-story_default_snippet_desc\";s:17:\"%seo_description%\";s:35:\"pt_web-story_slack_enhanced_sharing\";s:3:\"off\";s:25:\"pt_web-story_add_meta_box\";s:3:\"off\";s:18:\"tax_category_title\";s:23:\"%term% %sep% %sitename%\";s:19:\"tax_category_robots\";a:1:{i:0;s:5:\"index\";}s:25:\"tax_category_add_meta_box\";s:2:\"on\";s:26:\"tax_category_custom_robots\";s:3:\"off\";s:24:\"tax_category_description\";s:18:\"%term_description%\";s:35:\"tax_category_slack_enhanced_sharing\";s:2:\"on\";s:25:\"tax_category_bulk_editing\";i:0;s:18:\"tax_post_tag_title\";s:23:\"%term% %sep% %sitename%\";s:19:\"tax_post_tag_robots\";a:1:{i:0;s:7:\"noindex\";}s:25:\"tax_post_tag_add_meta_box\";s:2:\"on\";s:26:\"tax_post_tag_custom_robots\";s:2:\"on\";s:24:\"tax_post_tag_description\";s:18:\"%term_description%\";s:35:\"tax_post_tag_slack_enhanced_sharing\";s:2:\"on\";s:25:\"tax_post_tag_bulk_editing\";i:0;s:31:\"remove_product_cat_snippet_data\";s:2:\"on\";s:31:\"remove_product_tag_snippet_data\";s:2:\"on\";s:19:\"knowledgegraph_logo\";s:66:\"https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/logo.png\";s:13:\"robots_global\";a:1:{i:0;s:5:\"index\";}s:22:\"advanced_robots_global\";a:3:{s:11:\"max-snippet\";i:-1;s:17:\"max-video-preview\";i:-1;s:17:\"max-image-preview\";s:5:\"large\";}s:17:\"facebook_admin_id\";s:0:\"\";s:15:\"facebook_app_id\";s:0:\"\";s:20:\"facebook_author_urls\";s:0:\"\";s:23:\"homepage_facebook_title\";s:0:\"\";s:29:\"homepage_facebook_description\";s:0:\"\";s:23:\"homepage_facebook_image\";s:0:\"\";s:26:\"social_additional_profiles\";s:0:\"\";s:19:\"social_url_facebook\";N;s:20:\"twitter_author_names\";s:0:\"\";s:26:\"author_archive_description\";s:18:\"%user_description%\";s:22:\"author_advanced_robots\";a:3:{s:11:\"max-snippet\";i:-1;s:17:\"max-video-preview\";i:-1;s:17:\"max-image-preview\";s:5:\"large\";}s:24:\"date_archive_description\";s:0:\"\";s:20:\"date_advanced_robots\";a:3:{s:11:\"max-snippet\";i:-1;s:17:\"max-video-preview\";i:-1;s:17:\"max-image-preview\";s:5:\"large\";}s:22:\"knowledgegraph_logo_id\";i:94;s:22:\"website_alternate_name\";s:9:\"Abuhasdha\";s:28:\"tax_post_format_add_meta_box\";s:2:\"on\";}', 'auto'),
(801, 'rank-math-options-sitemap', 'a:24:{s:14:\"items_per_page\";i:1000;s:14:\"include_images\";s:2:\"on\";s:22:\"include_featured_image\";s:3:\"off\";s:13:\"exclude_roles\";a:2:{i:0;s:11:\"contributor\";i:1;s:10:\"subscriber\";}s:12:\"html_sitemap\";s:2:\"on\";s:20:\"html_sitemap_display\";s:9:\"shortcode\";s:17:\"html_sitemap_sort\";s:9:\"published\";s:23:\"html_sitemap_seo_titles\";s:6:\"titles\";s:15:\"authors_sitemap\";s:2:\"on\";s:15:\"pt_post_sitemap\";s:3:\"off\";s:15:\"pt_page_sitemap\";s:3:\"off\";s:21:\"pt_attachment_sitemap\";s:3:\"off\";s:18:\"pt_service_sitemap\";s:3:\"off\";s:18:\"pt_product_sitemap\";s:2:\"on\";s:20:\"pt_web-story_sitemap\";s:3:\"off\";s:20:\"tax_category_sitemap\";s:3:\"off\";s:20:\"tax_post_tag_sitemap\";s:3:\"off\";s:20:\"pt_post_html_sitemap\";s:2:\"on\";s:20:\"pt_page_html_sitemap\";s:2:\"on\";s:26:\"pt_attachment_html_sitemap\";s:3:\"off\";s:23:\"pt_service_html_sitemap\";s:3:\"off\";s:23:\"pt_product_html_sitemap\";s:2:\"on\";s:25:\"tax_category_html_sitemap\";s:2:\"on\";s:25:\"tax_post_tag_html_sitemap\";s:2:\"on\";}', 'auto'),
(802, 'rank-math-options-instant-indexing', 'a:2:{s:15:\"bing_post_types\";a:2:{i:0;s:4:\"post\";i:1;s:4:\"page\";}s:16:\"indexnow_api_key\";s:32:\"00eef1c5a01c44b3ab4f7dfa510c15f4\";}', 'auto'),
(805, 'rank_math_version', '1.0.257', 'off'),
(806, 'rank_math_db_version', '1', 'auto'),
(807, 'rank_math_install_date', '1761999158', 'auto'),
(845, 'rank_math_registration_skip', '1', 'auto'),
(846, 'rank_math_review_notice_date', '1763214730', 'off'),
(848, 'rank_math_review_posts_converted', '1', 'auto'),
(849, '_transient_rank_math_first_submenu_id', 'rank-math', 'on'),
(851, '_transient__rank_math_site_type', 'business', 'on'),
(852, 'rank_math_google_analytic_profile', 'a:3:{s:7:\"country\";s:3:\"all\";s:7:\"profile\";s:0:\"\";s:19:\"enable_index_status\";s:1:\"1\";}', 'auto'),
(853, 'rank_math_google_analytic_options', 'a:11:{s:10:\"adsense_id\";s:0:\"\";s:10:\"account_id\";s:0:\"\";s:11:\"property_id\";s:0:\"\";s:7:\"view_id\";s:0:\"\";s:14:\"measurement_id\";s:0:\"\";s:11:\"stream_name\";s:0:\"\";s:7:\"country\";s:3:\"all\";s:12:\"install_code\";s:0:\"\";s:12:\"anonymize_ip\";s:0:\"\";s:11:\"local_ga_js\";s:0:\"\";s:16:\"exclude_loggedin\";s:0:\"\";}', 'auto'),
(855, 'rank_math_is_configured', '1', 'off'),
(858, 'auto_update_plugins', 'a:1:{i:0;s:30:\"seo-by-rank-math/rank-math.php\";}', 'off'),
(863, 'rank_math_content_ai_viewed', '1', 'off'),
(865, 'rank_math_viewed_index_status', '1', 'auto'),
(868, 'stellarwp_telemetry_user_info', 'a:1:{s:4:\"user\";s:882:\"{\"name\":\"abuhasdha_admin\",\"email\":\"admin@fazrilsh.com\",\"plugin_slug\":\"solid-security\",\"opt_in_text\":\"Hi abuhasdha_admin, SolidWP is dedicated to delivering top-notch services, and your input helps us deliver on that promise. By opting into our feedback program, you help enhance the Solid Security experience for yourself and all of our users. When you opt in, you allow us to access certain data related to how you use our products, which we use responsibly to tailor our products to your needs. You will additionally receive updates, important product and marketing information, and exclusive offers via email. You may unsubscribe at any time. We take data privacy seriously and adhere to the highest standards respecting all relevant regulations and guidelines. To join and help shape the future of Solid Security and StellarWP, simply click \\u201cAllow & Continue\\u201d below.\"}\";}', 'off'),
(873, 'itsec_active_modules', 'a:6:{s:9:\"ban-users\";b:1;s:8:\"firewall\";b:1;s:11:\"brute-force\";b:1;s:19:\"network-brute-force\";b:1;s:6:\"backup\";b:1;s:10:\"two-factor\";b:1;}', 'auto'),
(878, 'rank_math_sitemap_cache_files', 'a:0:{}', 'auto'),
(880, 'site_logo', '105', 'auto'),
(885, 'WPLANG', '', 'auto'),
(886, 'new_admin_email', 'admin@fazrilsh.com', 'auto'),
(992, 'rank_math_indexnow_log', 'a:2:{i:0;a:5:{s:3:\"url\";s:40:\"https://fazrilsh.com/abuhasdha/products/\";s:6:\"status\";i:202;s:17:\"manual_submission\";b:0;s:7:\"message\";s:2:\"OK\";s:4:\"time\";i:1762134603;}i:1;a:5:{s:3:\"url\";s:40:\"https://fazrilsh.com/abuhasdha/products/\";s:6:\"status\";i:200;s:17:\"manual_submission\";b:0;s:7:\"message\";s:2:\"OK\";s:4:\"time\";i:1762134609;}}', 'off'),
(1041, 'tire_type_children', 'a:0:{}', 'auto'),
(1057, 'advantage_children', 'a:0:{}', 'auto'),
(1088, 'action_scheduler_migration_status', 'complete', 'auto'),
(1681, '_site_transient_timeout_browser_1c496cfd2920c98eca0c0b44de07a3a9', '1763617699', 'off'),
(1682, '_site_transient_browser_1c496cfd2920c98eca0c0b44de07a3a9', 'a:10:{s:4:\"name\";s:6:\"Safari\";s:7:\"version\";s:4:\"18.6\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.apple.com/safari/\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/safari.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/safari.png?1\";s:15:\"current_version\";s:2:\"11\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'off'),
(1735, '_site_transient_timeout_browser_f18b5213b6de2490ec9be218b0f025b0', '1763650623', 'off'),
(1736, '_site_transient_browser_f18b5213b6de2490ec9be218b0f025b0', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"142.0.0.0\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'off'),
(1741, 'rank_math_pro_notice_delayed', '1', 'off'),
(1742, 'rank_math_pro_notice_date', '1763910045', 'off'),
(1743, 'rank_math_notifications', 'a:1:{i:0;a:2:{s:7:\"message\";s:841:\"<p>Hey, we noticed you&#039;ve been using <strong>Rank Math SEO</strong> for more than a week now – that&#039;s awesome!<br>We would love to get your feedback! It&#039;s essential for our continued development. Please consider taking a moment to leave a review of your experience on Trustpilot.</p>\n			<p><strong>Bhanu Ahluwalia</strong><br>Co-founder of Rank Math</p>\n			<p>\n				<a href=\"https://www.trustpilot.com/evaluate/www.rankmath.com\" class=\"rank-math-dismiss-review-notice rank-math-review-action rank-math-review-out\" target=\"_blank\" rel=\"noopener noreferrer\"><strong>Yes, you deserve it</strong></a><br>\n				<a href=\"#\" class=\"rank-math-dismiss-review-notice rank-math-maybe-later-action\">No, maybe later</a><br>\n				<a href=\"#\" class=\"rank-math-dismiss-review-notice rank-math-already-reviewed-action\">I already did</a>\n			</p>\";s:7:\"options\";a:5:{s:2:\"id\";s:30:\"rank_math_review_plugin_notice\";s:7:\"classes\";s:16:\"rank-math-notice\";s:4:\"type\";s:4:\"info\";s:6:\"screen\";s:3:\"any\";s:10:\"capability\";s:15:\"install_plugins\";}}}', 'auto'),
(1784, 'function_children', 'a:0:{}', 'auto'),
(1852, 'rank_math_review_notice_added', '1', 'off'),
(1877, '_site_transient_timeout_itsec_wp_upload_dir', '1763402090', 'off'),
(1878, '_site_transient_itsec_wp_upload_dir', 'a:6:{s:4:\"path\";s:64:\"/home/hourigtq/fazrilsh.com/abuhasdha/wp-content/uploads/2025/11\";s:3:\"url\";s:57:\"https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11\";s:6:\"subdir\";s:8:\"/2025/11\";s:7:\"basedir\";s:56:\"/home/hourigtq/fazrilsh.com/abuhasdha/wp-content/uploads\";s:7:\"baseurl\";s:49:\"https://fazrilsh.com/abuhasdha/wp-content/uploads\";s:5:\"error\";b:0;}', 'off'),
(1908, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1763336009;s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:3:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.6.2\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.6.2.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3207824\";s:3:\"svg\";s:67:\"https://ps.w.org/advanced-custom-fields/assets/icon.svg?rev=3207824\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=3374528\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=3374528\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.2\";}s:30:\"seo-by-rank-math/rank-math.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:30:\"w.org/plugins/seo-by-rank-math\";s:4:\"slug\";s:16:\"seo-by-rank-math\";s:6:\"plugin\";s:30:\"seo-by-rank-math/rank-math.php\";s:11:\"new_version\";s:7:\"1.0.257\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/seo-by-rank-math/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/seo-by-rank-math.1.0.257.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:61:\"https://ps.w.org/seo-by-rank-math/assets/icon.svg?rev=3218327\";s:3:\"svg\";s:61:\"https://ps.w.org/seo-by-rank-math/assets/icon.svg?rev=3218327\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/seo-by-rank-math/assets/banner-1544x500.png?rev=2639678\";s:2:\"1x\";s:71:\"https://ps.w.org/seo-by-rank-math/assets/banner-772x250.png?rev=2639678\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.3\";}s:41:\"better-wp-security/better-wp-security.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:32:\"w.org/plugins/better-wp-security\";s:4:\"slug\";s:18:\"better-wp-security\";s:6:\"plugin\";s:41:\"better-wp-security/better-wp-security.php\";s:11:\"new_version\";s:5:\"9.4.2\";s:3:\"url\";s:49:\"https://wordpress.org/plugins/better-wp-security/\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/plugin/better-wp-security.9.4.2.zip\";s:5:\"icons\";a:2:{s:2:\"1x\";s:63:\"https://ps.w.org/better-wp-security/assets/icon.svg?rev=2980272\";s:3:\"svg\";s:63:\"https://ps.w.org/better-wp-security/assets/icon.svg?rev=2980272\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/better-wp-security/assets/banner-1544x500.png?rev=2980272\";s:2:\"1x\";s:73:\"https://ps.w.org/better-wp-security/assets/banner-772x250.png?rev=2980272\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"6.5\";}}s:7:\"checked\";a:3:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.6.2\";s:30:\"seo-by-rank-math/rank-math.php\";s:7:\"1.0.257\";s:41:\"better-wp-security/better-wp-security.php\";s:5:\"9.4.2\";}}', 'off'),
(1909, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1763351978;s:7:\"checked\";a:4:{s:9:\"abuhasdha\";s:3:\"1.0\";s:16:\"twentytwentyfive\";s:3:\"1.3\";s:16:\"twentytwentyfour\";s:3:\"1.3\";s:17:\"twentytwentythree\";s:3:\"1.6\";}s:8:\"response\";a:0:{}s:9:\"no_update\";a:3:{s:16:\"twentytwentyfive\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfive\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfive/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfive.1.3.zip\";s:8:\"requires\";s:3:\"6.7\";s:12:\"requires_php\";s:3:\"7.2\";}s:16:\"twentytwentyfour\";a:6:{s:5:\"theme\";s:16:\"twentytwentyfour\";s:11:\"new_version\";s:3:\"1.3\";s:3:\"url\";s:46:\"https://wordpress.org/themes/twentytwentyfour/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/theme/twentytwentyfour.1.3.zip\";s:8:\"requires\";s:3:\"6.4\";s:12:\"requires_php\";s:3:\"7.0\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.6\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.6.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}}s:12:\"translations\";a:0:{}}', 'off'),
(1915, '_site_transient_timeout_wp_theme_files_patterns-491310d9b1990155a88fab02519505d4', '1763352955', 'off'),
(1916, '_site_transient_wp_theme_files_patterns-491310d9b1990155a88fab02519505d4', 'a:2:{s:7:\"version\";s:3:\"1.0\";s:8:\"patterns\";a:0:{}}', 'off'),
(1919, '_transient_timeout_product_list_otr', '1763354797', 'off'),
(1920, '_transient_product_list_otr', 'a:1:{s:3:\"otr\";a:3:{s:4:\"name\";s:12:\"Off-The-Road\";s:4:\"link\";s:44:\"https://fazrilsh.com/abuhasdha/products/otr/\";s:6:\"brands\";a:2:{s:7:\"hawkway\";a:1:{i:0;s:8:\"24.00R35\";}s:6:\"tianli\";a:1:{i:0;s:8:\"33.00R51\";}}}}', 'off'),
(1922, '_transient_timeout_product_query_otr_24.00R35', '1763351550', 'off'),
(1923, '_transient_product_query_otr_24.00R35', 'O:8:\"WP_Query\":54:{s:5:\"query\";a:4:{s:9:\"post_type\";s:7:\"product\";s:14:\"posts_per_page\";i:-1;s:9:\"tax_query\";a:1:{i:0;a:3:{s:8:\"taxonomy\";s:9:\"tire_type\";s:5:\"field\";s:4:\"slug\";s:5:\"terms\";s:3:\"otr\";}}s:10:\"meta_query\";a:1:{i:0;a:3:{s:3:\"key\";s:4:\"size\";s:5:\"value\";s:8:\"24.00R35\";s:7:\"compare\";s:1:\"=\";}}}s:10:\"query_vars\";a:69:{s:9:\"post_type\";s:7:\"product\";s:14:\"posts_per_page\";i:-1;s:9:\"tax_query\";a:1:{i:0;a:3:{s:8:\"taxonomy\";s:9:\"tire_type\";s:5:\"field\";s:4:\"slug\";s:5:\"terms\";s:3:\"otr\";}}s:10:\"meta_query\";a:1:{i:0;a:3:{s:3:\"key\";s:4:\"size\";s:5:\"value\";s:8:\"24.00R35\";s:7:\"compare\";s:1:\"=\";}}s:5:\"error\";s:0:\"\";s:1:\"m\";s:0:\"\";s:1:\"p\";i:0;s:11:\"post_parent\";s:0:\"\";s:7:\"subpost\";s:0:\"\";s:10:\"subpost_id\";s:0:\"\";s:10:\"attachment\";s:0:\"\";s:13:\"attachment_id\";i:0;s:4:\"name\";s:0:\"\";s:8:\"pagename\";s:0:\"\";s:7:\"page_id\";i:0;s:6:\"second\";s:0:\"\";s:6:\"minute\";s:0:\"\";s:4:\"hour\";s:0:\"\";s:3:\"day\";i:0;s:8:\"monthnum\";i:0;s:4:\"year\";i:0;s:1:\"w\";i:0;s:13:\"category_name\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:3:\"cat\";s:0:\"\";s:6:\"tag_id\";s:0:\"\";s:6:\"author\";s:0:\"\";s:11:\"author_name\";s:0:\"\";s:4:\"feed\";s:0:\"\";s:2:\"tb\";s:0:\"\";s:5:\"paged\";i:0;s:8:\"meta_key\";s:0:\"\";s:10:\"meta_value\";s:0:\"\";s:7:\"preview\";s:0:\"\";s:1:\"s\";s:0:\"\";s:8:\"sentence\";s:0:\"\";s:5:\"title\";s:0:\"\";s:6:\"fields\";s:3:\"all\";s:10:\"menu_order\";s:0:\"\";s:5:\"embed\";s:0:\"\";s:12:\"category__in\";a:0:{}s:16:\"category__not_in\";a:0:{}s:13:\"category__and\";a:0:{}s:8:\"post__in\";a:0:{}s:12:\"post__not_in\";a:0:{}s:13:\"post_name__in\";a:0:{}s:7:\"tag__in\";a:0:{}s:11:\"tag__not_in\";a:0:{}s:8:\"tag__and\";a:0:{}s:12:\"tag_slug__in\";a:0:{}s:13:\"tag_slug__and\";a:0:{}s:15:\"post_parent__in\";a:0:{}s:19:\"post_parent__not_in\";a:0:{}s:10:\"author__in\";a:0:{}s:14:\"author__not_in\";a:0:{}s:14:\"search_columns\";a:0:{}s:19:\"ignore_sticky_posts\";b:0;s:16:\"suppress_filters\";b:0;s:13:\"cache_results\";b:1;s:22:\"update_post_term_cache\";b:1;s:22:\"update_menu_item_cache\";b:0;s:19:\"lazy_load_term_meta\";b:1;s:22:\"update_post_meta_cache\";b:1;s:8:\"nopaging\";b:1;s:17:\"comments_per_page\";s:2:\"50\";s:13:\"no_found_rows\";b:0;s:8:\"taxonomy\";s:9:\"tire_type\";s:4:\"term\";s:3:\"otr\";s:5:\"order\";s:4:\"DESC\";}s:9:\"tax_query\";O:12:\"WP_Tax_Query\":6:{s:7:\"queries\";a:1:{i:0;a:5:{s:8:\"taxonomy\";s:9:\"tire_type\";s:5:\"terms\";a:1:{i:0;s:3:\"otr\";}s:5:\"field\";s:4:\"slug\";s:8:\"operator\";s:2:\"IN\";s:16:\"include_children\";b:1;}}s:8:\"relation\";s:3:\"AND\";s:16:\"\0*\0table_aliases\";a:1:{i:0;s:28:\"abuhasdha_term_relationships\";}s:13:\"queried_terms\";a:1:{s:9:\"tire_type\";a:2:{s:5:\"terms\";a:1:{i:0;s:3:\"otr\";}s:5:\"field\";s:4:\"slug\";}}s:13:\"primary_table\";s:15:\"abuhasdha_posts\";s:17:\"primary_id_column\";s:2:\"ID\";}s:10:\"meta_query\";O:13:\"WP_Meta_Query\":9:{s:7:\"queries\";a:2:{i:0;a:3:{s:3:\"key\";s:4:\"size\";s:5:\"value\";s:8:\"24.00R35\";s:7:\"compare\";s:1:\"=\";}s:8:\"relation\";s:2:\"OR\";}s:8:\"relation\";s:3:\"AND\";s:10:\"meta_table\";s:18:\"abuhasdha_postmeta\";s:14:\"meta_id_column\";s:7:\"post_id\";s:13:\"primary_table\";s:15:\"abuhasdha_posts\";s:17:\"primary_id_column\";s:2:\"ID\";s:16:\"\0*\0table_aliases\";a:1:{i:0;s:18:\"abuhasdha_postmeta\";}s:10:\"\0*\0clauses\";a:1:{s:18:\"abuhasdha_postmeta\";a:6:{s:3:\"key\";s:4:\"size\";s:5:\"value\";s:8:\"24.00R35\";s:7:\"compare\";s:1:\"=\";s:11:\"compare_key\";s:1:\"=\";s:5:\"alias\";s:18:\"abuhasdha_postmeta\";s:4:\"cast\";s:4:\"CHAR\";}}s:18:\"\0*\0has_or_relation\";b:0;}s:10:\"date_query\";b:0;s:7:\"request\";s:650:\"SELECT   abuhasdha_posts.*\n					 FROM abuhasdha_posts  LEFT JOIN abuhasdha_term_relationships ON (abuhasdha_posts.ID = abuhasdha_term_relationships.object_id) INNER JOIN abuhasdha_postmeta ON ( abuhasdha_posts.ID = abuhasdha_postmeta.post_id )\n					 WHERE 1=1  AND ( \n  abuhasdha_term_relationships.term_taxonomy_id IN (3)\n) AND ( \n  ( abuhasdha_postmeta.meta_key = \'size\' AND abuhasdha_postmeta.meta_value = \'24.00R35\' )\n) AND ((abuhasdha_posts.post_type = \'product\' AND (abuhasdha_posts.post_status = \'publish\' OR abuhasdha_posts.post_status = \'acf-disabled\')))\n					 GROUP BY abuhasdha_posts.ID\n					 ORDER BY abuhasdha_posts.post_date DESC\n					 \";s:5:\"posts\";a:1:{i:0;O:7:\"WP_Post\":24:{s:2:\"ID\";i:148;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2025-11-03 14:54:36\";s:13:\"post_date_gmt\";s:19:\"2025-11-03 14:54:36\";s:12:\"post_content\";s:386:\"<ul>\r\n 	<li>Unique tread pattern design equips tire with excellent traction.</li>\r\n 	<li>Deep tread depth for exceptional traction and extended wear life.</li>\r\n 	<li>Special compounds deliver exceptional wear and cut resistance.</li>\r\n 	<li>High-tensile specialized wire.</li>\r\n 	<li>Excellent stability and maneuverability.</li>\r\n 	<li>Superior flotation and ride comfort.</li>\r\n</ul>\";s:10:\"post_title\";s:31:\"Ban OTR Hawkway 24.00R35 TUE402\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:31:\"ban-otr-hawkway-24-00r35-tue402\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2025-11-04 04:06:46\";s:17:\"post_modified_gmt\";s:19:\"2025-11-04 04:06:46\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:60:\"https://fazrilsh.com/abuhasdha/?post_type=product&#038;p=148\";s:10:\"menu_order\";i:0;s:9:\"post_type\";s:7:\"product\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";}}s:10:\"post_count\";i:1;s:12:\"current_post\";i:-1;s:11:\"before_loop\";b:1;s:11:\"in_the_loop\";b:0;s:4:\"post\";r:138;s:13:\"comment_count\";i:0;s:15:\"current_comment\";i:-1;s:11:\"found_posts\";i:1;s:13:\"max_num_pages\";i:0;s:21:\"max_num_comment_pages\";i:0;s:9:\"is_single\";b:0;s:10:\"is_preview\";b:0;s:7:\"is_page\";b:0;s:10:\"is_archive\";b:1;s:7:\"is_date\";b:0;s:7:\"is_year\";b:0;s:8:\"is_month\";b:0;s:6:\"is_day\";b:0;s:7:\"is_time\";b:0;s:9:\"is_author\";b:0;s:11:\"is_category\";b:0;s:6:\"is_tag\";b:0;s:6:\"is_tax\";b:1;s:9:\"is_search\";b:0;s:7:\"is_feed\";b:0;s:15:\"is_comment_feed\";b:0;s:12:\"is_trackback\";b:0;s:7:\"is_home\";b:0;s:17:\"is_privacy_policy\";b:0;s:6:\"is_404\";b:0;s:8:\"is_embed\";b:0;s:8:\"is_paged\";b:0;s:8:\"is_admin\";b:0;s:13:\"is_attachment\";b:0;s:11:\"is_singular\";b:0;s:9:\"is_robots\";b:0;s:10:\"is_favicon\";b:0;s:13:\"is_posts_page\";b:0;s:20:\"is_post_type_archive\";b:1;s:25:\"\0WP_Query\0query_vars_hash\";s:32:\"3e724e8f2d2cf421050d69ae4dcdbb82\";s:28:\"\0WP_Query\0query_vars_changed\";b:0;s:17:\"thumbnails_cached\";b:0;s:37:\"\0*\0allow_query_attachment_by_filename\";b:0;s:19:\"\0WP_Query\0stopwords\";N;s:23:\"\0WP_Query\0compat_fields\";a:2:{i:0;s:15:\"query_vars_hash\";i:1;s:18:\"query_vars_changed\";}s:24:\"\0WP_Query\0compat_methods\";a:2:{i:0;s:16:\"init_query_flags\";i:1;s:15:\"parse_tax_query\";}s:25:\"\0WP_Query\0query_cache_key\";s:84:\"wp_query:3dda3c7eeeb5cfa84809bdd66f82717e:0.70414600 17633512500.75030100 1763351250\";}', 'off'),
(1924, '_transient_timeout_products', '1763354861', 'off'),
(1925, '_transient_products', 'a:2:{s:3:\"otr\";a:3:{s:4:\"name\";s:12:\"Off-The-Road\";s:4:\"link\";s:44:\"https://fazrilsh.com/abuhasdha/products/otr/\";s:6:\"brands\";a:2:{s:7:\"hawkway\";a:1:{i:0;s:8:\"24.00R35\";}s:6:\"tianli\";a:1:{i:0;s:8:\"33.00R51\";}}}s:3:\"tbr\";a:3:{s:4:\"name\";s:20:\"Truck and Bus Radial\";s:4:\"link\";s:44:\"https://fazrilsh.com/abuhasdha/products/tbr/\";s:6:\"brands\";a:1:{s:6:\"tianli\";a:2:{i:0;s:8:\"12.00R20\";i:1;s:8:\"12.00R24\";}}}}', 'off'),
(1926, '_transient_timeout_product_list_tbr', '1763354870', 'off'),
(1927, '_transient_product_list_tbr', 'a:1:{s:3:\"tbr\";a:3:{s:4:\"name\";s:20:\"Truck and Bus Radial\";s:4:\"link\";s:44:\"https://fazrilsh.com/abuhasdha/products/tbr/\";s:6:\"brands\";a:1:{s:6:\"tianli\";a:2:{i:0;s:8:\"12.00R20\";i:1;s:8:\"12.00R24\";}}}}', 'off'),
(1931, '_transient_timeout_product_query_tbr_12.00R24', '1763351621', 'off'),
(1932, '_transient_product_query_tbr_12.00R24', 'O:8:\"WP_Query\":54:{s:5:\"query\";a:4:{s:9:\"post_type\";s:7:\"product\";s:14:\"posts_per_page\";i:-1;s:9:\"tax_query\";a:1:{i:0;a:3:{s:8:\"taxonomy\";s:9:\"tire_type\";s:5:\"field\";s:4:\"slug\";s:5:\"terms\";s:3:\"tbr\";}}s:10:\"meta_query\";a:1:{i:0;a:3:{s:3:\"key\";s:4:\"size\";s:5:\"value\";s:8:\"12.00R24\";s:7:\"compare\";s:1:\"=\";}}}s:10:\"query_vars\";a:69:{s:9:\"post_type\";s:7:\"product\";s:14:\"posts_per_page\";i:-1;s:9:\"tax_query\";a:1:{i:0;a:3:{s:8:\"taxonomy\";s:9:\"tire_type\";s:5:\"field\";s:4:\"slug\";s:5:\"terms\";s:3:\"tbr\";}}s:10:\"meta_query\";a:1:{i:0;a:3:{s:3:\"key\";s:4:\"size\";s:5:\"value\";s:8:\"12.00R24\";s:7:\"compare\";s:1:\"=\";}}s:5:\"error\";s:0:\"\";s:1:\"m\";s:0:\"\";s:1:\"p\";i:0;s:11:\"post_parent\";s:0:\"\";s:7:\"subpost\";s:0:\"\";s:10:\"subpost_id\";s:0:\"\";s:10:\"attachment\";s:0:\"\";s:13:\"attachment_id\";i:0;s:4:\"name\";s:0:\"\";s:8:\"pagename\";s:0:\"\";s:7:\"page_id\";i:0;s:6:\"second\";s:0:\"\";s:6:\"minute\";s:0:\"\";s:4:\"hour\";s:0:\"\";s:3:\"day\";i:0;s:8:\"monthnum\";i:0;s:4:\"year\";i:0;s:1:\"w\";i:0;s:13:\"category_name\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:3:\"cat\";s:0:\"\";s:6:\"tag_id\";s:0:\"\";s:6:\"author\";s:0:\"\";s:11:\"author_name\";s:0:\"\";s:4:\"feed\";s:0:\"\";s:2:\"tb\";s:0:\"\";s:5:\"paged\";i:0;s:8:\"meta_key\";s:0:\"\";s:10:\"meta_value\";s:0:\"\";s:7:\"preview\";s:0:\"\";s:1:\"s\";s:0:\"\";s:8:\"sentence\";s:0:\"\";s:5:\"title\";s:0:\"\";s:6:\"fields\";s:3:\"all\";s:10:\"menu_order\";s:0:\"\";s:5:\"embed\";s:0:\"\";s:12:\"category__in\";a:0:{}s:16:\"category__not_in\";a:0:{}s:13:\"category__and\";a:0:{}s:8:\"post__in\";a:0:{}s:12:\"post__not_in\";a:0:{}s:13:\"post_name__in\";a:0:{}s:7:\"tag__in\";a:0:{}s:11:\"tag__not_in\";a:0:{}s:8:\"tag__and\";a:0:{}s:12:\"tag_slug__in\";a:0:{}s:13:\"tag_slug__and\";a:0:{}s:15:\"post_parent__in\";a:0:{}s:19:\"post_parent__not_in\";a:0:{}s:10:\"author__in\";a:0:{}s:14:\"author__not_in\";a:0:{}s:14:\"search_columns\";a:0:{}s:19:\"ignore_sticky_posts\";b:0;s:16:\"suppress_filters\";b:0;s:13:\"cache_results\";b:1;s:22:\"update_post_term_cache\";b:1;s:22:\"update_menu_item_cache\";b:0;s:19:\"lazy_load_term_meta\";b:1;s:22:\"update_post_meta_cache\";b:1;s:8:\"nopaging\";b:1;s:17:\"comments_per_page\";s:2:\"50\";s:13:\"no_found_rows\";b:0;s:8:\"taxonomy\";s:9:\"tire_type\";s:4:\"term\";s:3:\"tbr\";s:5:\"order\";s:4:\"DESC\";}s:9:\"tax_query\";O:12:\"WP_Tax_Query\":6:{s:7:\"queries\";a:1:{i:0;a:5:{s:8:\"taxonomy\";s:9:\"tire_type\";s:5:\"terms\";a:1:{i:0;s:3:\"tbr\";}s:5:\"field\";s:4:\"slug\";s:8:\"operator\";s:2:\"IN\";s:16:\"include_children\";b:1;}}s:8:\"relation\";s:3:\"AND\";s:16:\"\0*\0table_aliases\";a:1:{i:0;s:28:\"abuhasdha_term_relationships\";}s:13:\"queried_terms\";a:1:{s:9:\"tire_type\";a:2:{s:5:\"terms\";a:1:{i:0;s:3:\"tbr\";}s:5:\"field\";s:4:\"slug\";}}s:13:\"primary_table\";s:15:\"abuhasdha_posts\";s:17:\"primary_id_column\";s:2:\"ID\";}s:10:\"meta_query\";O:13:\"WP_Meta_Query\":9:{s:7:\"queries\";a:2:{i:0;a:3:{s:3:\"key\";s:4:\"size\";s:5:\"value\";s:8:\"12.00R24\";s:7:\"compare\";s:1:\"=\";}s:8:\"relation\";s:2:\"OR\";}s:8:\"relation\";s:3:\"AND\";s:10:\"meta_table\";s:18:\"abuhasdha_postmeta\";s:14:\"meta_id_column\";s:7:\"post_id\";s:13:\"primary_table\";s:15:\"abuhasdha_posts\";s:17:\"primary_id_column\";s:2:\"ID\";s:16:\"\0*\0table_aliases\";a:1:{i:0;s:18:\"abuhasdha_postmeta\";}s:10:\"\0*\0clauses\";a:1:{s:18:\"abuhasdha_postmeta\";a:6:{s:3:\"key\";s:4:\"size\";s:5:\"value\";s:8:\"12.00R24\";s:7:\"compare\";s:1:\"=\";s:11:\"compare_key\";s:1:\"=\";s:5:\"alias\";s:18:\"abuhasdha_postmeta\";s:4:\"cast\";s:4:\"CHAR\";}}s:18:\"\0*\0has_or_relation\";b:0;}s:10:\"date_query\";b:0;s:7:\"request\";s:650:\"SELECT   abuhasdha_posts.*\n					 FROM abuhasdha_posts  LEFT JOIN abuhasdha_term_relationships ON (abuhasdha_posts.ID = abuhasdha_term_relationships.object_id) INNER JOIN abuhasdha_postmeta ON ( abuhasdha_posts.ID = abuhasdha_postmeta.post_id )\n					 WHERE 1=1  AND ( \n  abuhasdha_term_relationships.term_taxonomy_id IN (4)\n) AND ( \n  ( abuhasdha_postmeta.meta_key = \'size\' AND abuhasdha_postmeta.meta_value = \'12.00R24\' )\n) AND ((abuhasdha_posts.post_type = \'product\' AND (abuhasdha_posts.post_status = \'publish\' OR abuhasdha_posts.post_status = \'acf-disabled\')))\n					 GROUP BY abuhasdha_posts.ID\n					 ORDER BY abuhasdha_posts.post_date DESC\n					 \";s:5:\"posts\";a:1:{i:0;O:7:\"WP_Post\":24:{s:2:\"ID\";i:150;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2025-11-04 03:47:16\";s:13:\"post_date_gmt\";s:19:\"2025-11-04 03:47:16\";s:12:\"post_content\";s:386:\"<ul>\r\n 	<li>Unique tread pattern design equips tire with excellent traction.</li>\r\n 	<li>Deep tread depth for exceptional traction and extended wear life.</li>\r\n 	<li>Special compounds deliver exceptional wear and cut resistance.</li>\r\n 	<li>High-tensile specialized wire.</li>\r\n 	<li>Excellent stability and maneuverability.</li>\r\n 	<li>Superior flotation and ride comfort.</li>\r\n</ul>\";s:10:\"post_title\";s:32:\"Ban TBR Tianli 12.00R24 TZ101PRO\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:32:\"ban-tbr-tianli-12-00r24-tz101pro\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2025-11-04 04:06:16\";s:17:\"post_modified_gmt\";s:19:\"2025-11-04 04:06:16\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:60:\"https://fazrilsh.com/abuhasdha/?post_type=product&#038;p=150\";s:10:\"menu_order\";i:0;s:9:\"post_type\";s:7:\"product\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";}}s:10:\"post_count\";i:1;s:12:\"current_post\";i:-1;s:11:\"before_loop\";b:1;s:11:\"in_the_loop\";b:0;s:4:\"post\";r:138;s:13:\"comment_count\";i:0;s:15:\"current_comment\";i:-1;s:11:\"found_posts\";i:1;s:13:\"max_num_pages\";i:0;s:21:\"max_num_comment_pages\";i:0;s:9:\"is_single\";b:0;s:10:\"is_preview\";b:0;s:7:\"is_page\";b:0;s:10:\"is_archive\";b:1;s:7:\"is_date\";b:0;s:7:\"is_year\";b:0;s:8:\"is_month\";b:0;s:6:\"is_day\";b:0;s:7:\"is_time\";b:0;s:9:\"is_author\";b:0;s:11:\"is_category\";b:0;s:6:\"is_tag\";b:0;s:6:\"is_tax\";b:1;s:9:\"is_search\";b:0;s:7:\"is_feed\";b:0;s:15:\"is_comment_feed\";b:0;s:12:\"is_trackback\";b:0;s:7:\"is_home\";b:0;s:17:\"is_privacy_policy\";b:0;s:6:\"is_404\";b:0;s:8:\"is_embed\";b:0;s:8:\"is_paged\";b:0;s:8:\"is_admin\";b:0;s:13:\"is_attachment\";b:0;s:11:\"is_singular\";b:0;s:9:\"is_robots\";b:0;s:10:\"is_favicon\";b:0;s:13:\"is_posts_page\";b:0;s:20:\"is_post_type_archive\";b:1;s:25:\"\0WP_Query\0query_vars_hash\";s:32:\"9b059987ec35b4f900220cf9e7ddd2c1\";s:28:\"\0WP_Query\0query_vars_changed\";b:0;s:17:\"thumbnails_cached\";b:0;s:37:\"\0*\0allow_query_attachment_by_filename\";b:0;s:19:\"\0WP_Query\0stopwords\";N;s:23:\"\0WP_Query\0compat_fields\";a:2:{i:0;s:15:\"query_vars_hash\";i:1;s:18:\"query_vars_changed\";}s:24:\"\0WP_Query\0compat_methods\";a:2:{i:0;s:16:\"init_query_flags\";i:1;s:15:\"parse_tax_query\";}s:25:\"\0WP_Query\0query_cache_key\";s:84:\"wp_query:fc01044f34b03736a90c43c485d1ce6f:0.69403300 17633513210.74100900 1763351321\";}', 'off'),
(1937, '_site_transient_timeout_itsec_ipcheck_104.28.163.38', '1763355361', 'off'),
(1938, '_site_transient_itsec_ipcheck_104.28.163.38', 'a:3:{s:5:\"block\";b:0;s:9:\"cache_ttl\";i:1763355360;s:10:\"report_ttl\";i:0;}', 'off'),
(1940, '_site_transient_timeout_itsec_ipcheck_146.75.160.28', '1763355434', 'off'),
(1941, '_site_transient_itsec_ipcheck_146.75.160.28', 'a:3:{s:5:\"block\";b:0;s:9:\"cache_ttl\";i:1763355433;s:10:\"report_ttl\";i:0;}', 'off'),
(1943, '_site_transient_timeout_browser_af978ea6120ec72adec4e7c353f6bbea', '1763956636', 'off'),
(1944, '_site_transient_browser_af978ea6120ec72adec4e7c353f6bbea', 'a:10:{s:4:\"name\";s:6:\"Safari\";s:7:\"version\";s:6:\"26.0.1\";s:8:\"platform\";s:6:\"iPhone\";s:10:\"update_url\";s:0:\"\";s:7:\"img_src\";s:0:\"\";s:11:\"img_src_ssl\";s:0:\"\";s:15:\"current_version\";s:0:\"\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:1;}', 'off'),
(1945, '_site_transient_timeout_php_check_84bab1ffd8c4f8f9d81d62c8afdcab8a', '1763956637', 'off'),
(1946, '_site_transient_php_check_84bab1ffd8c4f8f9d81d62c8afdcab8a', 'a:5:{s:19:\"recommended_version\";s:3:\"8.3\";s:15:\"minimum_version\";s:6:\"7.2.24\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'off'),
(1947, '_transient_timeout_rank_math_feed_posts_v2', '1763395040', 'off'),
(1948, '_transient_rank_math_feed_posts_v2', 'a:4:{i:0;a:5:{s:5:\"title\";a:1:{s:8:\"rendered\";s:51:\"Content AI 2.0: Introducing AI SEO Inside WordPress\";}s:4:\"date\";s:19:\"2025-11-17 02:36:13\";s:4:\"link\";s:62:\"https://rankmath.com/blog/introducing-supercharged-content-ai/\";s:12:\"custom_label\";s:0:\"\";s:9:\"condition\";s:0:\"\";}i:1;a:3:{s:5:\"title\";a:1:{s:8:\"rendered\";s:67:\"20 Proven Tactics to Actually Increase Your Organic Traffic in 2025\";}s:4:\"date\";s:19:\"2025-11-14 15:20:59\";s:4:\"link\";s:56:\"https://rankmath.com/blog/increase-your-organic-traffic/\";}i:2;a:3:{s:5:\"title\";a:1:{s:8:\"rendered\";s:58:\"Top 10 Mobile SEO Tools to Boost Your Rankings &amp; Speed\";}s:4:\"date\";s:19:\"2025-11-13 12:58:10\";s:4:\"link\";s:43:\"https://rankmath.com/blog/mobile-seo-tools/\";}i:3;a:3:{s:5:\"title\";a:1:{s:8:\"rendered\";s:78:\"20 Best Digital Marketing Tools: The Ultimate List to Boost Your Online Growth\";}s:4:\"date\";s:19:\"2025-11-07 14:41:31\";s:4:\"link\";s:55:\"https://rankmath.com/blog/best-digital-marketing-tools/\";}}', 'off'),
(1949, '_transient_timeout_product_query_tbr_12.00R20', '1763352184', 'off');
INSERT INTO `abuhasdha_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1950, '_transient_product_query_tbr_12.00R20', 'O:8:\"WP_Query\":54:{s:5:\"query\";a:4:{s:9:\"post_type\";s:7:\"product\";s:14:\"posts_per_page\";i:-1;s:9:\"tax_query\";a:1:{i:0;a:3:{s:8:\"taxonomy\";s:9:\"tire_type\";s:5:\"field\";s:4:\"slug\";s:5:\"terms\";s:3:\"tbr\";}}s:10:\"meta_query\";a:1:{i:0;a:3:{s:3:\"key\";s:4:\"size\";s:5:\"value\";s:8:\"12.00R20\";s:7:\"compare\";s:1:\"=\";}}}s:10:\"query_vars\";a:69:{s:9:\"post_type\";s:7:\"product\";s:14:\"posts_per_page\";i:-1;s:9:\"tax_query\";a:1:{i:0;a:3:{s:8:\"taxonomy\";s:9:\"tire_type\";s:5:\"field\";s:4:\"slug\";s:5:\"terms\";s:3:\"tbr\";}}s:10:\"meta_query\";a:1:{i:0;a:3:{s:3:\"key\";s:4:\"size\";s:5:\"value\";s:8:\"12.00R20\";s:7:\"compare\";s:1:\"=\";}}s:5:\"error\";s:0:\"\";s:1:\"m\";s:0:\"\";s:1:\"p\";i:0;s:11:\"post_parent\";s:0:\"\";s:7:\"subpost\";s:0:\"\";s:10:\"subpost_id\";s:0:\"\";s:10:\"attachment\";s:0:\"\";s:13:\"attachment_id\";i:0;s:4:\"name\";s:0:\"\";s:8:\"pagename\";s:0:\"\";s:7:\"page_id\";i:0;s:6:\"second\";s:0:\"\";s:6:\"minute\";s:0:\"\";s:4:\"hour\";s:0:\"\";s:3:\"day\";i:0;s:8:\"monthnum\";i:0;s:4:\"year\";i:0;s:1:\"w\";i:0;s:13:\"category_name\";s:0:\"\";s:3:\"tag\";s:0:\"\";s:3:\"cat\";s:0:\"\";s:6:\"tag_id\";s:0:\"\";s:6:\"author\";s:0:\"\";s:11:\"author_name\";s:0:\"\";s:4:\"feed\";s:0:\"\";s:2:\"tb\";s:0:\"\";s:5:\"paged\";i:0;s:8:\"meta_key\";s:0:\"\";s:10:\"meta_value\";s:0:\"\";s:7:\"preview\";s:0:\"\";s:1:\"s\";s:0:\"\";s:8:\"sentence\";s:0:\"\";s:5:\"title\";s:0:\"\";s:6:\"fields\";s:3:\"all\";s:10:\"menu_order\";s:0:\"\";s:5:\"embed\";s:0:\"\";s:12:\"category__in\";a:0:{}s:16:\"category__not_in\";a:0:{}s:13:\"category__and\";a:0:{}s:8:\"post__in\";a:0:{}s:12:\"post__not_in\";a:0:{}s:13:\"post_name__in\";a:0:{}s:7:\"tag__in\";a:0:{}s:11:\"tag__not_in\";a:0:{}s:8:\"tag__and\";a:0:{}s:12:\"tag_slug__in\";a:0:{}s:13:\"tag_slug__and\";a:0:{}s:15:\"post_parent__in\";a:0:{}s:19:\"post_parent__not_in\";a:0:{}s:10:\"author__in\";a:0:{}s:14:\"author__not_in\";a:0:{}s:14:\"search_columns\";a:0:{}s:19:\"ignore_sticky_posts\";b:0;s:16:\"suppress_filters\";b:0;s:13:\"cache_results\";b:1;s:22:\"update_post_term_cache\";b:1;s:22:\"update_menu_item_cache\";b:0;s:19:\"lazy_load_term_meta\";b:1;s:22:\"update_post_meta_cache\";b:1;s:8:\"nopaging\";b:1;s:17:\"comments_per_page\";s:2:\"50\";s:13:\"no_found_rows\";b:0;s:8:\"taxonomy\";s:9:\"tire_type\";s:4:\"term\";s:3:\"tbr\";s:5:\"order\";s:4:\"DESC\";}s:9:\"tax_query\";O:12:\"WP_Tax_Query\":6:{s:7:\"queries\";a:1:{i:0;a:5:{s:8:\"taxonomy\";s:9:\"tire_type\";s:5:\"terms\";a:1:{i:0;s:3:\"tbr\";}s:5:\"field\";s:4:\"slug\";s:8:\"operator\";s:2:\"IN\";s:16:\"include_children\";b:1;}}s:8:\"relation\";s:3:\"AND\";s:16:\"\0*\0table_aliases\";a:1:{i:0;s:28:\"abuhasdha_term_relationships\";}s:13:\"queried_terms\";a:1:{s:9:\"tire_type\";a:2:{s:5:\"terms\";a:1:{i:0;s:3:\"tbr\";}s:5:\"field\";s:4:\"slug\";}}s:13:\"primary_table\";s:15:\"abuhasdha_posts\";s:17:\"primary_id_column\";s:2:\"ID\";}s:10:\"meta_query\";O:13:\"WP_Meta_Query\":9:{s:7:\"queries\";a:2:{i:0;a:3:{s:3:\"key\";s:4:\"size\";s:5:\"value\";s:8:\"12.00R20\";s:7:\"compare\";s:1:\"=\";}s:8:\"relation\";s:2:\"OR\";}s:8:\"relation\";s:3:\"AND\";s:10:\"meta_table\";s:18:\"abuhasdha_postmeta\";s:14:\"meta_id_column\";s:7:\"post_id\";s:13:\"primary_table\";s:15:\"abuhasdha_posts\";s:17:\"primary_id_column\";s:2:\"ID\";s:16:\"\0*\0table_aliases\";a:1:{i:0;s:18:\"abuhasdha_postmeta\";}s:10:\"\0*\0clauses\";a:1:{s:18:\"abuhasdha_postmeta\";a:6:{s:3:\"key\";s:4:\"size\";s:5:\"value\";s:8:\"12.00R20\";s:7:\"compare\";s:1:\"=\";s:11:\"compare_key\";s:1:\"=\";s:5:\"alias\";s:18:\"abuhasdha_postmeta\";s:4:\"cast\";s:4:\"CHAR\";}}s:18:\"\0*\0has_or_relation\";b:0;}s:10:\"date_query\";b:0;s:7:\"request\";s:650:\"SELECT   abuhasdha_posts.*\n					 FROM abuhasdha_posts  LEFT JOIN abuhasdha_term_relationships ON (abuhasdha_posts.ID = abuhasdha_term_relationships.object_id) INNER JOIN abuhasdha_postmeta ON ( abuhasdha_posts.ID = abuhasdha_postmeta.post_id )\n					 WHERE 1=1  AND ( \n  abuhasdha_term_relationships.term_taxonomy_id IN (4)\n) AND ( \n  ( abuhasdha_postmeta.meta_key = \'size\' AND abuhasdha_postmeta.meta_value = \'12.00R20\' )\n) AND ((abuhasdha_posts.post_type = \'product\' AND (abuhasdha_posts.post_status = \'publish\' OR abuhasdha_posts.post_status = \'acf-disabled\')))\n					 GROUP BY abuhasdha_posts.ID\n					 ORDER BY abuhasdha_posts.post_date DESC\n					 \";s:5:\"posts\";a:1:{i:0;O:7:\"WP_Post\":24:{s:2:\"ID\";i:151;s:11:\"post_author\";s:1:\"1\";s:9:\"post_date\";s:19:\"2025-11-04 03:54:58\";s:13:\"post_date_gmt\";s:19:\"2025-11-04 03:54:58\";s:12:\"post_content\";s:386:\"<ul>\r\n 	<li>Unique tread pattern design equips tire with excellent traction.</li>\r\n 	<li>Deep tread depth for exceptional traction and extended wear life.</li>\r\n 	<li>Special compounds deliver exceptional wear and cut resistance.</li>\r\n 	<li>High-tensile specialized wire.</li>\r\n 	<li>Excellent stability and maneuverability.</li>\r\n 	<li>Superior flotation and ride comfort.</li>\r\n</ul>\";s:10:\"post_title\";s:32:\"Ban TBR Tianli 12.00R20 TZ101PRO\";s:12:\"post_excerpt\";s:0:\"\";s:11:\"post_status\";s:7:\"publish\";s:14:\"comment_status\";s:6:\"closed\";s:11:\"ping_status\";s:6:\"closed\";s:13:\"post_password\";s:0:\"\";s:9:\"post_name\";s:32:\"ban-tbr-tianli-12-00r20-tz101pro\";s:7:\"to_ping\";s:0:\"\";s:6:\"pinged\";s:0:\"\";s:13:\"post_modified\";s:19:\"2025-11-04 04:05:59\";s:17:\"post_modified_gmt\";s:19:\"2025-11-04 04:05:59\";s:21:\"post_content_filtered\";s:0:\"\";s:11:\"post_parent\";i:0;s:4:\"guid\";s:60:\"https://fazrilsh.com/abuhasdha/?post_type=product&#038;p=151\";s:10:\"menu_order\";i:0;s:9:\"post_type\";s:7:\"product\";s:14:\"post_mime_type\";s:0:\"\";s:13:\"comment_count\";s:1:\"0\";s:6:\"filter\";s:3:\"raw\";}}s:10:\"post_count\";i:1;s:12:\"current_post\";i:-1;s:11:\"before_loop\";b:1;s:11:\"in_the_loop\";b:0;s:4:\"post\";r:138;s:13:\"comment_count\";i:0;s:15:\"current_comment\";i:-1;s:11:\"found_posts\";i:1;s:13:\"max_num_pages\";i:0;s:21:\"max_num_comment_pages\";i:0;s:9:\"is_single\";b:0;s:10:\"is_preview\";b:0;s:7:\"is_page\";b:0;s:10:\"is_archive\";b:1;s:7:\"is_date\";b:0;s:7:\"is_year\";b:0;s:8:\"is_month\";b:0;s:6:\"is_day\";b:0;s:7:\"is_time\";b:0;s:9:\"is_author\";b:0;s:11:\"is_category\";b:0;s:6:\"is_tag\";b:0;s:6:\"is_tax\";b:1;s:9:\"is_search\";b:0;s:7:\"is_feed\";b:0;s:15:\"is_comment_feed\";b:0;s:12:\"is_trackback\";b:0;s:7:\"is_home\";b:0;s:17:\"is_privacy_policy\";b:0;s:6:\"is_404\";b:0;s:8:\"is_embed\";b:0;s:8:\"is_paged\";b:0;s:8:\"is_admin\";b:0;s:13:\"is_attachment\";b:0;s:11:\"is_singular\";b:0;s:9:\"is_robots\";b:0;s:10:\"is_favicon\";b:0;s:13:\"is_posts_page\";b:0;s:20:\"is_post_type_archive\";b:1;s:25:\"\0WP_Query\0query_vars_hash\";s:32:\"6661a9da8d783f0c561bc7881b94187a\";s:28:\"\0WP_Query\0query_vars_changed\";b:0;s:17:\"thumbnails_cached\";b:0;s:37:\"\0*\0allow_query_attachment_by_filename\";b:0;s:19:\"\0WP_Query\0stopwords\";N;s:23:\"\0WP_Query\0compat_fields\";a:2:{i:0;s:15:\"query_vars_hash\";i:1;s:18:\"query_vars_changed\";}s:24:\"\0WP_Query\0compat_methods\";a:2:{i:0;s:16:\"init_query_flags\";i:1;s:15:\"parse_tax_query\";}s:25:\"\0WP_Query\0query_cache_key\";s:84:\"wp_query:cb6deeca425da6cbb2b65c8bf9daa15e:0.64542200 17633518840.68694300 1763351884\";}', 'off'),
(1953, '_site_transient_timeout_theme_roots', '1763353776', 'off'),
(1954, '_site_transient_theme_roots', 'a:5:{s:8:\"__MACOSX\";s:7:\"/themes\";s:9:\"abuhasdha\";s:7:\"/themes\";s:16:\"twentytwentyfive\";s:7:\"/themes\";s:16:\"twentytwentyfour\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";}', 'off');

-- --------------------------------------------------------

--
-- Table structure for table `abuhasdha_postmeta`
--

CREATE TABLE `abuhasdha_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `abuhasdha_postmeta`
--

INSERT INTO `abuhasdha_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 6, '_menu_item_type', 'custom'),
(4, 6, '_menu_item_menu_item_parent', '0'),
(5, 6, '_menu_item_object_id', '6'),
(6, 6, '_menu_item_object', 'custom'),
(7, 6, '_menu_item_target', ''),
(8, 6, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(9, 6, '_menu_item_xfn', ''),
(10, 6, '_menu_item_url', 'https://fazrilsh.com/abuhasdha/'),
(11, 6, '_menu_item_orphaned', '1761293288'),
(12, 7, '_menu_item_type', 'post_type'),
(13, 7, '_menu_item_menu_item_parent', '0'),
(14, 7, '_menu_item_object_id', '2'),
(15, 7, '_menu_item_object', 'page'),
(16, 7, '_menu_item_target', ''),
(17, 7, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(18, 7, '_menu_item_xfn', ''),
(19, 7, '_menu_item_url', ''),
(20, 7, '_menu_item_orphaned', '1761293288'),
(21, 2, '_wp_trash_meta_status', 'publish'),
(22, 2, '_wp_trash_meta_time', '1761293316'),
(23, 2, '_wp_desired_post_slug', 'sample-page'),
(24, 9, '_edit_lock', '1761293478:1'),
(25, 9, '_edit_last', '1'),
(26, 9, '_aioseo_title', NULL),
(27, 9, '_aioseo_description', NULL),
(28, 9, '_aioseo_keywords', 'a:0:{}'),
(29, 9, '_aioseo_og_title', ''),
(30, 9, '_aioseo_og_description', ''),
(31, 9, '_aioseo_og_article_section', ''),
(32, 9, '_aioseo_og_article_tags', 'a:0:{}'),
(33, 9, '_aioseo_twitter_title', ''),
(34, 9, '_aioseo_twitter_description', ''),
(35, 11, '_edit_lock', '1761293512:1'),
(36, 11, '_edit_last', '1'),
(37, 11, '_aioseo_title', NULL),
(38, 11, '_aioseo_description', NULL),
(39, 11, '_aioseo_keywords', 'a:0:{}'),
(40, 11, '_aioseo_og_title', ''),
(41, 11, '_aioseo_og_description', ''),
(42, 11, '_aioseo_og_article_section', ''),
(43, 11, '_aioseo_og_article_tags', 'a:0:{}'),
(44, 11, '_aioseo_twitter_title', ''),
(45, 11, '_aioseo_twitter_description', ''),
(46, 13, '_edit_lock', '1761293564:1'),
(47, 13, '_edit_last', '1'),
(48, 13, '_aioseo_title', NULL),
(49, 13, '_aioseo_description', NULL),
(50, 13, '_aioseo_keywords', 'a:0:{}'),
(51, 13, '_aioseo_og_title', ''),
(52, 13, '_aioseo_og_description', ''),
(53, 13, '_aioseo_og_article_section', ''),
(54, 13, '_aioseo_og_article_tags', 'a:0:{}'),
(55, 13, '_aioseo_twitter_title', ''),
(56, 13, '_aioseo_twitter_description', ''),
(57, 15, '_edit_lock', '1761293604:1'),
(58, 15, '_edit_last', '1'),
(59, 15, '_aioseo_title', NULL),
(60, 15, '_aioseo_description', NULL),
(61, 15, '_aioseo_keywords', 'a:0:{}'),
(62, 15, '_aioseo_og_title', ''),
(63, 15, '_aioseo_og_description', ''),
(64, 15, '_aioseo_og_article_section', ''),
(65, 15, '_aioseo_og_article_tags', 'a:0:{}'),
(66, 15, '_aioseo_twitter_title', ''),
(67, 15, '_aioseo_twitter_description', ''),
(68, 17, '_edit_lock', '1761293677:1'),
(69, 17, '_edit_last', '1'),
(70, 17, '_aioseo_title', NULL),
(71, 17, '_aioseo_description', NULL),
(72, 17, '_aioseo_keywords', 'a:0:{}'),
(73, 17, '_aioseo_og_title', ''),
(74, 17, '_aioseo_og_description', ''),
(75, 17, '_aioseo_og_article_section', ''),
(76, 17, '_aioseo_og_article_tags', 'a:0:{}'),
(77, 17, '_aioseo_twitter_title', ''),
(78, 17, '_aioseo_twitter_description', ''),
(79, 19, '_menu_item_type', 'custom'),
(80, 19, '_menu_item_menu_item_parent', '0'),
(81, 19, '_menu_item_object_id', '19'),
(82, 19, '_menu_item_object', 'custom'),
(83, 19, '_menu_item_target', ''),
(84, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(85, 19, '_menu_item_xfn', ''),
(86, 19, '_menu_item_url', '#home'),
(88, 20, '_menu_item_type', 'post_type'),
(89, 20, '_menu_item_menu_item_parent', '0'),
(90, 20, '_menu_item_object_id', '15'),
(91, 20, '_menu_item_object', 'page'),
(92, 20, '_menu_item_target', ''),
(93, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(94, 20, '_menu_item_xfn', ''),
(95, 20, '_menu_item_url', ''),
(96, 20, '_menu_item_orphaned', '1761293693'),
(97, 21, '_menu_item_type', 'post_type'),
(98, 21, '_menu_item_menu_item_parent', '0'),
(99, 21, '_menu_item_object_id', '9'),
(100, 21, '_menu_item_object', 'page'),
(101, 21, '_menu_item_target', ''),
(102, 21, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(103, 21, '_menu_item_xfn', ''),
(104, 21, '_menu_item_url', ''),
(105, 21, '_menu_item_orphaned', '1761293693'),
(142, 26, '_wp_attached_file', '2025/10/about.png'),
(143, 26, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:384;s:6:\"height\";i:287;s:4:\"file\";s:17:\"2025/10/about.png\";s:8:\"filesize\";i:221707;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:17:\"about-300x224.png\";s:5:\"width\";i:300;s:6:\"height\";i:224;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:121967;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:17:\"about-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:43723;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(144, 27, '_wp_attached_file', '2025/10/landing-scaled.jpg'),
(145, 27, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:26:\"2025/10/landing-scaled.jpg\";s:8:\"filesize\";i:471822;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"landing-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:14135;}s:5:\"large\";a:5:{s:4:\"file\";s:20:\"landing-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:109445;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:19:\"landing-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6755;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:19:\"landing-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:66894;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:21:\"landing-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:210110;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:21:\"landing-2048x1366.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1366;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:338398;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";i:1;s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:11:\"landing.jpg\";}'),
(146, 28, '_wp_trash_meta_status', 'publish'),
(147, 28, '_wp_trash_meta_time', '1761450917'),
(148, 29, '_wp_trash_meta_status', 'publish'),
(149, 29, '_wp_trash_meta_time', '1761450948'),
(150, 30, '_wp_trash_meta_status', 'publish'),
(151, 30, '_wp_trash_meta_time', '1761450976'),
(152, 31, '_wp_trash_meta_status', 'publish'),
(153, 31, '_wp_trash_meta_time', '1761450987'),
(154, 32, '_edit_lock', '1761451000:1'),
(155, 32, '_wp_trash_meta_status', 'publish'),
(156, 32, '_wp_trash_meta_time', '1761451003'),
(157, 33, '_wp_trash_meta_status', 'publish'),
(158, 33, '_wp_trash_meta_time', '1761451019'),
(159, 34, '_wp_trash_meta_status', 'publish'),
(160, 34, '_wp_trash_meta_time', '1761451034'),
(161, 35, '_wp_trash_meta_status', 'publish'),
(162, 35, '_wp_trash_meta_time', '1761451063'),
(163, 36, '_edit_lock', '1761999011:1'),
(164, 51, '_wp_trash_meta_status', 'publish'),
(165, 51, '_wp_trash_meta_time', '1761999197'),
(166, 52, '_wp_trash_meta_status', 'publish'),
(167, 52, '_wp_trash_meta_time', '1761999201'),
(168, 53, '_wp_attached_file', '2025/11/building.png'),
(169, 53, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:900;s:6:\"height\";i:400;s:4:\"file\";s:20:\"2025/11/building.png\";s:8:\"filesize\";i:623295;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:20:\"building-300x133.png\";s:5:\"width\";i:300;s:6:\"height\";i:133;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:98236;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"building-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:54895;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:20:\"building-768x341.png\";s:5:\"width\";i:768;s:6:\"height\";i:341;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:518919;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(170, 54, '_wp_attached_file', '2025/11/Gemini_Generated_Image_pfglnzpfglnzpfgl-1.png'),
(171, 54, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:568;s:6:\"height\";i:383;s:4:\"file\";s:53:\"2025/11/Gemini_Generated_Image_pfglnzpfglnzpfgl-1.png\";s:8:\"filesize\";i:470874;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:53:\"Gemini_Generated_Image_pfglnzpfglnzpfgl-1-300x202.png\";s:5:\"width\";i:300;s:6:\"height\";i:202;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:130126;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:53:\"Gemini_Generated_Image_pfglnzpfglnzpfgl-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:47870;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(172, 55, '_wp_attached_file', '2025/11/Gemini_Generated_Image_z00hs1z00hs1z00h-1.png'),
(173, 55, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:775;s:6:\"height\";i:383;s:4:\"file\";s:53:\"2025/11/Gemini_Generated_Image_z00hs1z00hs1z00h-1.png\";s:8:\"filesize\";i:625839;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:53:\"Gemini_Generated_Image_z00hs1z00hs1z00h-1-300x148.png\";s:5:\"width\";i:300;s:6:\"height\";i:148;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:103946;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:53:\"Gemini_Generated_Image_z00hs1z00hs1z00h-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:52930;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:53:\"Gemini_Generated_Image_z00hs1z00hs1z00h-1-768x380.png\";s:5:\"width\";i:768;s:6:\"height\";i:380;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:571074;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(174, 56, '_wp_attached_file', '2025/11/Mask-group-1.png'),
(175, 56, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:798;s:6:\"height\";i:383;s:4:\"file\";s:24:\"2025/11/Mask-group-1.png\";s:8:\"filesize\";i:536341;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"Mask-group-1-300x144.png\";s:5:\"width\";i:300;s:6:\"height\";i:144;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:88210;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"Mask-group-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:45792;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"Mask-group-1-768x369.png\";s:5:\"width\";i:768;s:6:\"height\";i:369;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:464049;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(176, 57, '_wp_attached_file', '2025/11/Mask-group.png'),
(177, 57, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:384;s:6:\"height\";i:383;s:4:\"file\";s:22:\"2025/11/Mask-group.png\";s:8:\"filesize\";i:292005;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"Mask-group-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:169901;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"Mask-group-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:47792;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(178, 58, '_edit_lock', '1761999298:1'),
(179, 58, '_wp_trash_meta_status', 'publish'),
(180, 58, '_wp_trash_meta_time', '1761999328'),
(181, 59, '_wp_trash_meta_status', 'publish'),
(182, 59, '_wp_trash_meta_time', '1761999352'),
(187, 62, '_wp_trash_meta_status', 'publish'),
(188, 62, '_wp_trash_meta_time', '1761999414'),
(189, 63, '_edit_last', '1'),
(190, 63, '_edit_lock', '1761999481:1'),
(191, 64, '_wp_attached_file', '2025/11/Agribusiness-1.png'),
(192, 64, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:57;s:6:\"height\";i:42;s:4:\"file\";s:26:\"2025/11/Agribusiness-1.png\";s:8:\"filesize\";i:1975;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(193, 65, '_wp_attached_file', '2025/11/cube.png'),
(194, 65, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:376;s:6:\"height\";i:423;s:4:\"file\";s:16:\"2025/11/cube.png\";s:8:\"filesize\";i:3692;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:16:\"cube-267x300.png\";s:5:\"width\";i:267;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:7152;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"cube-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3014;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(195, 66, '_wp_attached_file', '2025/11/Foresty-1.png'),
(196, 66, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:51;s:6:\"height\";i:38;s:4:\"file\";s:21:\"2025/11/Foresty-1.png\";s:8:\"filesize\";i:1995;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(197, 67, '_wp_attached_file', '2025/11/gear.png'),
(198, 67, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:474;s:6:\"height\";i:430;s:4:\"file\";s:16:\"2025/11/gear.png\";s:8:\"filesize\";i:5023;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:16:\"gear-300x272.png\";s:5:\"width\";i:300;s:6:\"height\";i:272;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:8437;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:16:\"gear-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:4127;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(199, 68, '_wp_attached_file', '2025/11/Group-14.png'),
(200, 68, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:59;s:6:\"height\";i:45;s:4:\"file\";s:20:\"2025/11/Group-14.png\";s:8:\"filesize\";i:1672;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(201, 69, '_wp_attached_file', '2025/11/Group-15.png'),
(202, 69, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:63;s:6:\"height\";i:29;s:4:\"file\";s:20:\"2025/11/Group-15.png\";s:8:\"filesize\";i:1249;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(203, 70, '_wp_attached_file', '2025/11/Mining-Constructoin-1.png'),
(204, 70, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:57;s:6:\"height\";i:34;s:4:\"file\";s:33:\"2025/11/Mining-Constructoin-1.png\";s:8:\"filesize\";i:1623;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(205, 71, '_wp_attached_file', '2025/11/2-8.png'),
(206, 71, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:233;s:6:\"height\";i:368;s:4:\"file\";s:15:\"2025/11/2-8.png\";s:8:\"filesize\";i:115395;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:15:\"2-8-190x300.png\";s:5:\"width\";i:190;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:81095;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"2-8-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:37879;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(207, 72, '_wp_attached_file', '2025/11/Ban_-1.png'),
(208, 72, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:236;s:6:\"height\";i:357;s:4:\"file\";s:18:\"2025/11/Ban_-1.png\";s:8:\"filesize\";i:63459;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"Ban_-1-198x300.png\";s:5:\"width\";i:198;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:54351;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"Ban_-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:25958;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(209, 73, '_wp_attached_file', '2025/11/Group-1-10.png'),
(210, 73, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:202;s:6:\"height\";i:308;s:4:\"file\";s:22:\"2025/11/Group-1-10.png\";s:8:\"filesize\";i:98432;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"Group-1-10-197x300.png\";s:5:\"width\";i:197;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:89355;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"Group-1-10-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:39043;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(211, 74, '_wp_attached_file', '2025/11/Untitled-design-3-1.png'),
(212, 74, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:268;s:6:\"height\";i:375;s:4:\"file\";s:31:\"2025/11/Untitled-design-3-1.png\";s:8:\"filesize\";i:122751;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:31:\"Untitled-design-3-1-214x300.png\";s:5:\"width\";i:214;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:82480;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:31:\"Untitled-design-3-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:35499;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(213, 75, '_wp_attached_file', '2025/11/Untitled-design-7-1.png'),
(214, 75, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:160;s:6:\"height\";i:336;s:4:\"file\";s:31:\"2025/11/Untitled-design-7-1.png\";s:8:\"filesize\";i:83976;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:31:\"Untitled-design-7-1-143x300.png\";s:5:\"width\";i:143;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:65836;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:31:\"Untitled-design-7-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:37903;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(215, 63, '_thumbnail_id', '72'),
(216, 63, 'icon', 'a:2:{s:4:\"type\";s:13:\"media_library\";s:5:\"value\";s:2:\"69\";}'),
(217, 63, '_icon', 'field_68fe124a7a7e4'),
(218, 76, '_edit_last', '1'),
(219, 76, '_edit_lock', '1761999512:1'),
(220, 76, '_thumbnail_id', '73'),
(221, 76, 'icon', 'a:2:{s:4:\"type\";s:13:\"media_library\";s:5:\"value\";s:2:\"64\";}'),
(222, 76, '_icon', 'field_68fe124a7a7e4'),
(223, 77, '_edit_last', '1'),
(224, 77, '_edit_lock', '1761999543:1'),
(225, 77, '_thumbnail_id', '74'),
(226, 77, 'icon', 'a:2:{s:4:\"type\";s:13:\"media_library\";s:5:\"value\";s:2:\"66\";}'),
(227, 77, '_icon', 'field_68fe124a7a7e4'),
(228, 78, '_edit_last', '1'),
(229, 78, '_edit_lock', '1761999577:1'),
(230, 78, '_thumbnail_id', '75'),
(231, 78, 'icon', 'a:2:{s:4:\"type\";s:13:\"media_library\";s:5:\"value\";s:2:\"68\";}'),
(232, 78, '_icon', 'field_68fe124a7a7e4'),
(233, 79, '_edit_last', '1'),
(234, 79, '_edit_lock', '1761999632:1'),
(235, 79, '_thumbnail_id', '71'),
(236, 79, 'icon', 'a:2:{s:4:\"type\";s:13:\"media_library\";s:5:\"value\";s:2:\"70\";}'),
(237, 79, '_icon', 'field_68fe124a7a7e4'),
(238, 15, '_wp_trash_meta_status', 'publish'),
(239, 15, '_wp_trash_meta_time', '1761999799'),
(240, 15, '_wp_desired_post_slug', 'galeri'),
(241, 9, '_wp_trash_meta_status', 'publish'),
(242, 9, '_wp_trash_meta_time', '1761999799'),
(243, 9, '_wp_desired_post_slug', 'home'),
(244, 17, '_wp_trash_meta_status', 'publish'),
(245, 17, '_wp_trash_meta_time', '1761999800'),
(246, 17, '_wp_desired_post_slug', 'kontak'),
(247, 13, '_wp_trash_meta_status', 'publish'),
(248, 13, '_wp_trash_meta_time', '1761999800'),
(249, 13, '_wp_desired_post_slug', 'layanan-produk'),
(250, 3, '_wp_trash_meta_status', 'draft'),
(251, 3, '_wp_trash_meta_time', '1761999800'),
(252, 3, '_wp_desired_post_slug', 'privacy-policy'),
(253, 11, '_wp_trash_meta_status', 'publish'),
(254, 11, '_wp_trash_meta_time', '1761999800'),
(255, 11, '_wp_desired_post_slug', 'tentang-kami'),
(256, 81, '_menu_item_type', 'custom'),
(257, 81, '_menu_item_menu_item_parent', '0'),
(258, 81, '_menu_item_object_id', '81'),
(259, 81, '_menu_item_object', 'custom'),
(260, 81, '_menu_item_target', ''),
(261, 81, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(262, 81, '_menu_item_xfn', ''),
(263, 81, '_menu_item_url', '#about'),
(265, 82, '_menu_item_type', 'custom'),
(266, 82, '_menu_item_menu_item_parent', '0'),
(267, 82, '_menu_item_object_id', '82'),
(268, 82, '_menu_item_object', 'custom'),
(269, 82, '_menu_item_target', ''),
(270, 82, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(271, 82, '_menu_item_xfn', ''),
(272, 82, '_menu_item_url', '#services'),
(274, 83, '_menu_item_type', 'custom'),
(275, 83, '_menu_item_menu_item_parent', '0'),
(276, 83, '_menu_item_object_id', '83'),
(277, 83, '_menu_item_object', 'custom'),
(278, 83, '_menu_item_target', ''),
(279, 83, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(280, 83, '_menu_item_xfn', ''),
(281, 83, '_menu_item_url', '#gallery'),
(283, 84, '_menu_item_type', 'custom'),
(284, 84, '_menu_item_menu_item_parent', '0'),
(285, 84, '_menu_item_object_id', '84'),
(286, 84, '_menu_item_object', 'custom'),
(287, 84, '_menu_item_target', ''),
(288, 84, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(289, 84, '_menu_item_xfn', ''),
(290, 84, '_menu_item_url', '#contact'),
(292, 19, '_wp_old_date', '2025-10-24'),
(293, 85, '_wp_attached_file', '2025/11/building-1.png'),
(294, 85, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:900;s:6:\"height\";i:400;s:4:\"file\";s:22:\"2025/11/building-1.png\";s:8:\"filesize\";i:623295;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"building-1-300x133.png\";s:5:\"width\";i:300;s:6:\"height\";i:133;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:98236;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"building-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:54895;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:22:\"building-1-768x341.png\";s:5:\"width\";i:768;s:6:\"height\";i:341;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:518919;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(295, 86, '_wp_attached_file', '2025/11/Gemini_Generated_Image_pfglnzpfglnzpfgl-1-1.png'),
(296, 86, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:568;s:6:\"height\";i:383;s:4:\"file\";s:55:\"2025/11/Gemini_Generated_Image_pfglnzpfglnzpfgl-1-1.png\";s:8:\"filesize\";i:470874;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:55:\"Gemini_Generated_Image_pfglnzpfglnzpfgl-1-1-300x202.png\";s:5:\"width\";i:300;s:6:\"height\";i:202;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:130126;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:55:\"Gemini_Generated_Image_pfglnzpfglnzpfgl-1-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:47870;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(297, 87, '_wp_attached_file', '2025/11/Gemini_Generated_Image_z00hs1z00hs1z00h-1-1.png'),
(298, 87, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:775;s:6:\"height\";i:383;s:4:\"file\";s:55:\"2025/11/Gemini_Generated_Image_z00hs1z00hs1z00h-1-1.png\";s:8:\"filesize\";i:625839;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:55:\"Gemini_Generated_Image_z00hs1z00hs1z00h-1-1-300x148.png\";s:5:\"width\";i:300;s:6:\"height\";i:148;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:103946;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:55:\"Gemini_Generated_Image_z00hs1z00hs1z00h-1-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:52930;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:55:\"Gemini_Generated_Image_z00hs1z00hs1z00h-1-1-768x380.png\";s:5:\"width\";i:768;s:6:\"height\";i:380;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:571074;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(299, 88, '_wp_attached_file', '2025/11/Mask-group-1-1.png'),
(300, 88, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:798;s:6:\"height\";i:383;s:4:\"file\";s:26:\"2025/11/Mask-group-1-1.png\";s:8:\"filesize\";i:536341;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"Mask-group-1-1-300x144.png\";s:5:\"width\";i:300;s:6:\"height\";i:144;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:88210;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"Mask-group-1-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:45792;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:26:\"Mask-group-1-1-768x369.png\";s:5:\"width\";i:768;s:6:\"height\";i:369;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:464049;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(301, 89, '_wp_attached_file', '2025/11/Mask-group-2.png'),
(302, 89, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:384;s:6:\"height\";i:383;s:4:\"file\";s:24:\"2025/11/Mask-group-2.png\";s:8:\"filesize\";i:292005;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"Mask-group-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:169901;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"Mask-group-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:47792;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(303, 90, '_wp_attached_file', '2025/11/Mask-group-5.png'),
(304, 90, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:384;s:6:\"height\";i:383;s:4:\"file\";s:24:\"2025/11/Mask-group-5.png\";s:8:\"filesize\";i:249976;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"Mask-group-5-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:144021;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"Mask-group-5-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:41750;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(305, 91, '_wp_attached_file', '2025/11/Mask-group-4.png'),
(306, 91, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:798;s:6:\"height\";i:383;s:4:\"file\";s:24:\"2025/11/Mask-group-4.png\";s:8:\"filesize\";i:584292;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"Mask-group-4-300x144.png\";s:5:\"width\";i:300;s:6:\"height\";i:144;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:95608;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"Mask-group-4-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:50678;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:24:\"Mask-group-4-768x369.png\";s:5:\"width\";i:768;s:6:\"height\";i:369;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:501474;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(307, 92, '_wp_attached_file', '2025/11/Mask-group-3.png'),
(308, 92, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:591;s:6:\"height\";i:383;s:4:\"file\";s:24:\"2025/11/Mask-group-3.png\";s:8:\"filesize\";i:421270;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:24:\"Mask-group-3-300x194.png\";s:5:\"width\";i:300;s:6:\"height\";i:194;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:112618;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:24:\"Mask-group-3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:46919;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(309, 93, '_edit_lock', '1762000556:1'),
(310, 93, '_wp_trash_meta_status', 'publish'),
(311, 93, '_wp_trash_meta_time', '1762000556'),
(312, 1, 'rank_math_title', ''),
(313, 1, 'rank_math_description', ''),
(314, 1, 'rank_math_canonical_url', ''),
(315, 1, 'rank_math_facebook_title', ''),
(316, 1, 'rank_math_facebook_description', ''),
(317, 1, 'rank_math_facebook_image', ''),
(318, 1, 'rank_math_twitter_title', ''),
(319, 1, 'rank_math_twitter_description', ''),
(320, 1, 'rank_math_twitter_image', ''),
(321, 1, 'rank_math_twitter_use_facebook', 'off'),
(322, 9, 'rank_math_title', ''),
(323, 9, 'rank_math_description', ''),
(324, 9, 'rank_math_canonical_url', ''),
(325, 9, 'rank_math_facebook_title', ''),
(326, 9, 'rank_math_facebook_description', ''),
(327, 9, 'rank_math_facebook_image', ''),
(328, 9, 'rank_math_twitter_title', ''),
(329, 9, 'rank_math_twitter_description', ''),
(330, 9, 'rank_math_twitter_image', ''),
(331, 9, 'rank_math_twitter_use_facebook', 'off'),
(332, 11, 'rank_math_title', ''),
(333, 11, 'rank_math_description', ''),
(334, 11, 'rank_math_canonical_url', ''),
(335, 11, 'rank_math_facebook_title', ''),
(336, 11, 'rank_math_facebook_description', ''),
(337, 11, 'rank_math_facebook_image', ''),
(338, 11, 'rank_math_twitter_title', ''),
(339, 11, 'rank_math_twitter_description', ''),
(340, 11, 'rank_math_twitter_image', ''),
(341, 11, 'rank_math_twitter_use_facebook', 'off'),
(342, 13, 'rank_math_title', ''),
(343, 13, 'rank_math_description', ''),
(344, 13, 'rank_math_canonical_url', ''),
(345, 13, 'rank_math_facebook_title', ''),
(346, 13, 'rank_math_facebook_description', ''),
(347, 13, 'rank_math_facebook_image', ''),
(348, 13, 'rank_math_twitter_title', ''),
(349, 13, 'rank_math_twitter_description', ''),
(350, 13, 'rank_math_twitter_image', ''),
(351, 13, 'rank_math_twitter_use_facebook', 'off'),
(352, 15, 'rank_math_title', ''),
(353, 15, 'rank_math_description', ''),
(354, 15, 'rank_math_canonical_url', ''),
(355, 15, 'rank_math_facebook_title', ''),
(356, 15, 'rank_math_facebook_description', ''),
(357, 15, 'rank_math_facebook_image', ''),
(358, 15, 'rank_math_twitter_title', ''),
(359, 15, 'rank_math_twitter_description', ''),
(360, 15, 'rank_math_twitter_image', ''),
(361, 15, 'rank_math_twitter_use_facebook', 'off'),
(362, 17, 'rank_math_title', ''),
(363, 17, 'rank_math_description', ''),
(364, 17, 'rank_math_canonical_url', ''),
(365, 17, 'rank_math_facebook_title', ''),
(366, 17, 'rank_math_facebook_description', ''),
(367, 17, 'rank_math_facebook_image', ''),
(368, 17, 'rank_math_twitter_title', ''),
(369, 17, 'rank_math_twitter_description', ''),
(370, 17, 'rank_math_twitter_image', ''),
(371, 17, 'rank_math_twitter_use_facebook', 'off'),
(372, 26, 'rank_math_title', ''),
(373, 26, 'rank_math_description', ''),
(374, 26, 'rank_math_canonical_url', ''),
(375, 26, 'rank_math_facebook_title', ''),
(376, 26, 'rank_math_facebook_description', ''),
(377, 26, 'rank_math_facebook_image', ''),
(378, 26, 'rank_math_twitter_title', ''),
(379, 26, 'rank_math_twitter_description', ''),
(380, 26, 'rank_math_twitter_image', ''),
(381, 26, 'rank_math_twitter_use_facebook', 'off'),
(382, 27, 'rank_math_title', ''),
(383, 27, 'rank_math_description', ''),
(384, 27, 'rank_math_canonical_url', ''),
(385, 27, 'rank_math_facebook_title', ''),
(386, 27, 'rank_math_facebook_description', ''),
(387, 27, 'rank_math_facebook_image', ''),
(388, 27, 'rank_math_twitter_title', ''),
(389, 27, 'rank_math_twitter_description', ''),
(390, 27, 'rank_math_twitter_image', ''),
(391, 27, 'rank_math_twitter_use_facebook', 'off'),
(392, 94, '_wp_attached_file', '2025/11/logo.png'),
(393, 94, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:283;s:6:\"height\";i:37;s:4:\"file\";s:16:\"2025/11/logo.png\";s:8:\"filesize\";i:13776;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:15:\"logo-150x37.png\";s:5:\"width\";i:150;s:6:\"height\";i:37;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:7162;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(394, 97, '_itsec_dashboard_card', 'security-summary'),
(395, 97, '_itsec_dashboard_card_size', 'a:0:{}'),
(396, 97, '_itsec_dashboard_card_position', 'a:0:{}'),
(397, 97, '_itsec_dashboard_card_settings', 'a:0:{}'),
(398, 98, '_itsec_dashboard_card', 'banned-users'),
(399, 98, '_itsec_dashboard_card_size', 'a:0:{}'),
(400, 98, '_itsec_dashboard_card_position', 'a:0:{}'),
(401, 98, '_itsec_dashboard_card_settings', 'a:0:{}'),
(402, 99, '_itsec_dashboard_card', 'database-backup'),
(403, 99, '_itsec_dashboard_card_size', 'a:0:{}'),
(404, 99, '_itsec_dashboard_card_position', 'a:0:{}'),
(405, 99, '_itsec_dashboard_card_settings', 'a:0:{}'),
(406, 100, '_itsec_dashboard_card', 'brute-force'),
(407, 100, '_itsec_dashboard_card_size', 'a:0:{}'),
(408, 100, '_itsec_dashboard_card_position', 'a:0:{}'),
(409, 100, '_itsec_dashboard_card_settings', 'a:0:{}'),
(410, 101, '_itsec_dashboard_card', 'lockout'),
(411, 101, '_itsec_dashboard_card_size', 'a:0:{}'),
(412, 101, '_itsec_dashboard_card_position', 'a:0:{}'),
(413, 101, '_itsec_dashboard_card_settings', 'a:0:{}'),
(414, 102, '_itsec_dashboard_card', 'active-lockouts'),
(415, 102, '_itsec_dashboard_card_size', 'a:0:{}'),
(416, 102, '_itsec_dashboard_card_position', 'a:0:{}'),
(417, 102, '_itsec_dashboard_card_settings', 'a:0:{}'),
(418, 103, '_itsec_dashboard_card', 'banned-users-list'),
(419, 103, '_itsec_dashboard_card_size', 'a:0:{}'),
(420, 103, '_itsec_dashboard_card_position', 'a:0:{}'),
(421, 103, '_itsec_dashboard_card_settings', 'a:0:{}'),
(422, 104, '_itsec_dashboard_card', 'vulnerable-software'),
(423, 104, '_itsec_dashboard_card_size', 'a:0:{}'),
(424, 104, '_itsec_dashboard_card_position', 'a:0:{}'),
(425, 104, '_itsec_dashboard_card_settings', 'a:0:{}'),
(426, 105, '_wp_attached_file', '2025/11/cropped-logo.png'),
(427, 105, '_wp_attachment_context', 'custom-logo'),
(428, 105, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:283;s:6:\"height\";i:37;s:4:\"file\";s:24:\"2025/11/cropped-logo.png\";s:8:\"filesize\";i:13038;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"cropped-logo-150x37.png\";s:5:\"width\";i:150;s:6:\"height\";i:37;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:7162;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(429, 106, '_wp_trash_meta_status', 'publish'),
(430, 106, '_wp_trash_meta_time', '1762005584'),
(431, 107, '_wp_attached_file', '2025/11/cropped-logo-1.png'),
(432, 107, '_wp_attachment_context', 'site-icon'),
(433, 107, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:26:\"2025/11/cropped-logo-1.png\";s:8:\"filesize\";i:13081;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:26:\"cropped-logo-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:14284;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:26:\"cropped-logo-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:10486;}s:13:\"site_icon-270\";a:5:{s:4:\"file\";s:26:\"cropped-logo-1-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:13414;}s:13:\"site_icon-192\";a:5:{s:4:\"file\";s:26:\"cropped-logo-1-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:12393;}s:13:\"site_icon-180\";a:5:{s:4:\"file\";s:26:\"cropped-logo-1-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:11735;}s:12:\"site_icon-32\";a:5:{s:4:\"file\";s:24:\"cropped-logo-1-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2168;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(434, 79, 'rank_math_internal_links_processed', '1'),
(435, 78, 'rank_math_internal_links_processed', '1'),
(436, 77, 'rank_math_internal_links_processed', '1'),
(437, 76, 'rank_math_internal_links_processed', '1'),
(438, 63, 'rank_math_internal_links_processed', '1'),
(439, 1, 'rank_math_internal_links_processed', '1'),
(440, 19, '_wp_old_date', '2025-11-01'),
(441, 81, '_wp_old_date', '2025-11-01'),
(442, 82, '_wp_old_date', '2025-11-01'),
(443, 83, '_wp_old_date', '2025-11-01'),
(444, 84, '_wp_old_date', '2025-11-01'),
(445, 108, '_edit_lock', '1762134628:1'),
(446, 108, 'rank_math_internal_links_processed', '1'),
(448, 108, '_edit_last', '1'),
(449, 110, '_wp_trash_meta_status', 'publish'),
(450, 110, '_wp_trash_meta_time', '1762134687'),
(451, 48, '_wp_trash_meta_status', 'publish'),
(452, 48, '_wp_trash_meta_time', '1762179460'),
(453, 48, '_wp_desired_post_slug', 'group_68fe119cb05e7'),
(454, 49, '_wp_trash_meta_status', 'publish'),
(455, 49, '_wp_trash_meta_time', '1762179460'),
(456, 49, '_wp_desired_post_slug', 'field_68fe124a7a7e4'),
(457, 36, '_wp_trash_meta_status', 'publish'),
(458, 36, '_wp_trash_meta_time', '1762179460'),
(459, 36, '_wp_desired_post_slug', 'group_68fdc33733403'),
(460, 38, '_wp_trash_meta_status', 'publish'),
(461, 38, '_wp_trash_meta_time', '1762179460'),
(462, 38, '_wp_desired_post_slug', 'field_68fdc33787031'),
(463, 40, '_wp_trash_meta_status', 'publish'),
(464, 40, '_wp_trash_meta_time', '1762179460'),
(465, 40, '_wp_desired_post_slug', 'field_68fdcb2963a37'),
(466, 41, '_wp_trash_meta_status', 'publish'),
(467, 41, '_wp_trash_meta_time', '1762179460'),
(468, 41, '_wp_desired_post_slug', 'field_68fdc5cbaaa00'),
(469, 42, '_wp_trash_meta_status', 'publish'),
(470, 42, '_wp_trash_meta_time', '1762179460'),
(471, 42, '_wp_desired_post_slug', 'field_68fdcc89ca9ea'),
(472, 43, '_wp_trash_meta_status', 'publish'),
(473, 43, '_wp_trash_meta_time', '1762179460'),
(474, 43, '_wp_desired_post_slug', 'field_68fdcce3c3e0c'),
(475, 44, '_wp_trash_meta_status', 'publish'),
(476, 44, '_wp_trash_meta_time', '1762179460'),
(477, 44, '_wp_desired_post_slug', 'field_68fddfcb9acd1'),
(478, 45, '_wp_trash_meta_status', 'publish'),
(479, 45, '_wp_trash_meta_time', '1762179460'),
(480, 45, '_wp_desired_post_slug', 'field_68fde2d934fdb'),
(481, 136, '_wp_attached_file', '2025/11/Comfort.png'),
(482, 136, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:42;s:6:\"height\";i:35;s:4:\"file\";s:19:\"2025/11/Comfort.png\";s:8:\"filesize\";i:668;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(483, 137, '_wp_attached_file', '2025/11/Cut-Resistance-Compund.png'),
(484, 137, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:35;s:6:\"height\";i:16;s:4:\"file\";s:34:\"2025/11/Cut-Resistance-Compund.png\";s:8:\"filesize\";i:507;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(485, 138, '_wp_attached_file', '2025/11/Deep-Tread.png'),
(486, 138, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:30;s:6:\"height\";i:40;s:4:\"file\";s:22:\"2025/11/Deep-Tread.png\";s:8:\"filesize\";i:469;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(487, 139, '_wp_attached_file', '2025/11/Excellent-Traction.png'),
(488, 139, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:62;s:6:\"height\";i:62;s:4:\"file\";s:30:\"2025/11/Excellent-Traction.png\";s:8:\"filesize\";i:926;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(489, 140, '_wp_attached_file', '2025/11/Heat-Resistance-Compund.png'),
(490, 140, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:36;s:6:\"height\";i:16;s:4:\"file\";s:35:\"2025/11/Heat-Resistance-Compund.png\";s:8:\"filesize\";i:494;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(491, 141, '_wp_attached_file', '2025/11/High-Flotation.png'),
(492, 141, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:58;s:6:\"height\";i:58;s:4:\"file\";s:26:\"2025/11/High-Flotation.png\";s:8:\"filesize\";i:651;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(493, 142, '_wp_attached_file', '2025/11/Longer-Tire-Life.png'),
(494, 142, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:29;s:6:\"height\";i:36;s:4:\"file\";s:28:\"2025/11/Longer-Tire-Life.png\";s:8:\"filesize\";i:346;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(495, 143, '_wp_attached_file', '2025/11/rate-slicing.xlsx'),
(496, 143, '_wp_attachment_metadata', 'a:1:{s:8:\"filesize\";i:5638;}'),
(497, 144, '_wp_attached_file', '2025/11/Special-Compound.png');
INSERT INTO `abuhasdha_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(498, 144, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:35;s:6:\"height\";i:41;s:4:\"file\";s:28:\"2025/11/Special-Compound.png\";s:8:\"filesize\";i:733;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(499, 145, '_wp_attached_file', '2025/11/Stability.png'),
(500, 145, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:30;s:6:\"height\";i:32;s:4:\"file\";s:21:\"2025/11/Stability.png\";s:8:\"filesize\";i:503;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(501, 146, '_wp_attached_file', '2025/11/Wear-Resistance-Compund.png'),
(502, 146, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:42;s:6:\"height\";i:16;s:4:\"file\";s:35:\"2025/11/Wear-Resistance-Compund.png\";s:8:\"filesize\";i:665;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(503, 147, '_edit_last', '1'),
(504, 147, '_edit_lock', '1762229282:1'),
(505, 147, 'rank_math_internal_links_processed', '1'),
(506, 147, 'rank_math_seo_score', '10'),
(507, 147, 'rank_math_contentai_score', 'a:5:{s:8:\"keywords\";s:5:\"74.51\";s:9:\"wordCount\";s:1:\"0\";s:9:\"linkCount\";s:1:\"0\";s:12:\"headingCount\";s:1:\"0\";s:10:\"mediaCount\";s:1:\"0\";}'),
(508, 147, '_thumbnail_id', '71'),
(509, 147, 'size', '33.00R51'),
(510, 147, '_size', 'field_68fdcc89ca9ea'),
(511, 147, 'pattern', 'SLP L-5'),
(512, 147, '_pattern', 'field_68fdcce3c3e0c'),
(513, 147, 'brand', 'tianli'),
(514, 147, '_brand', 'field_68fdc5cbaaa00'),
(515, 147, 'tttl', 'TL'),
(516, 147, '_tttl', 'field_690819ee36d1e'),
(517, 147, 'rim', '17.00/3.5'),
(518, 147, '_rim', 'field_69081a34c3ff9'),
(519, 147, 'tra', 'E-4'),
(520, 147, '_tra', 'field_69081a537b01a'),
(521, 147, 'loadspeed_index', '209B'),
(522, 147, '_loadspeed_index', 'field_69081a5d7b01b'),
(523, 147, 'star_rating', '1'),
(524, 147, '_star_rating', 'field_69081a7a7b01c'),
(525, 147, 'tread_depth', '63'),
(526, 147, '_tread_depth', 'field_69081ae77b01d'),
(527, 147, 'outer_diameter', '2160'),
(528, 147, '_outer_diameter', 'field_69081bda71d87'),
(529, 147, 'section_width', '663'),
(530, 147, '_section_width', 'field_69081bf856545'),
(531, 147, 'inflation_pressure', '700'),
(532, 147, '_inflation_pressure', 'field_69081c1ea4795'),
(533, 147, 'load_capacity', '18500'),
(534, 147, '_load_capacity', 'field_69081c44a4796'),
(535, 147, 'speed', '50'),
(536, 147, '_speed', 'field_69081c5ea4797'),
(537, 147, 'images', '72,71'),
(538, 147, '_images', 'field_68fde2d934fdb'),
(539, 147, 'rank_math_primary_advantage', '0'),
(540, 147, 'rank_math_primary_function', '0'),
(541, 147, 'rank_math_primary_tire_type', '0'),
(542, 148, '_edit_last', '1'),
(543, 148, '_edit_lock', '1762229066:1'),
(544, 148, '_thumbnail_id', '73'),
(545, 148, 'size', '24.00R35'),
(546, 148, '_size', 'field_68fdcc89ca9ea'),
(547, 148, 'pattern', 'TUE402'),
(548, 148, '_pattern', 'field_68fdcce3c3e0c'),
(549, 148, 'brand', 'hawkway'),
(550, 148, '_brand', 'field_68fdc5cbaaa00'),
(551, 148, 'tttl', 'TL'),
(552, 148, '_tttl', 'field_690819ee36d1e'),
(553, 148, 'rim', '17.00/3.5'),
(554, 148, '_rim', 'field_69081a34c3ff9'),
(555, 148, 'tra', 'E-4'),
(556, 148, '_tra', 'field_69081a537b01a'),
(557, 148, 'loadspeed_index', '209B'),
(558, 148, '_loadspeed_index', 'field_69081a5d7b01b'),
(559, 148, 'star_rating', '4'),
(560, 148, '_star_rating', 'field_69081a7a7b01c'),
(561, 148, 'tread_depth', '79'),
(562, 148, '_tread_depth', 'field_69081ae77b01d'),
(563, 148, 'outer_diameter', '85.0'),
(564, 148, '_outer_diameter', 'field_69081bda71d87'),
(565, 148, 'section_width', '22.1'),
(566, 148, '_section_width', 'field_69081bf856545'),
(567, 148, 'inflation_pressure', '700'),
(568, 148, '_inflation_pressure', 'field_69081c1ea4795'),
(569, 148, 'load_capacity', '44100'),
(570, 148, '_load_capacity', 'field_69081c44a4796'),
(571, 148, 'speed', '30'),
(572, 148, '_speed', 'field_69081c5ea4797'),
(573, 148, 'images', '73,74'),
(574, 148, '_images', 'field_68fde2d934fdb'),
(575, 148, 'rank_math_internal_links_processed', '1'),
(576, 149, '_edit_last', '1'),
(577, 149, '_edit_lock', '1762229052:1'),
(578, 149, 'rank_math_internal_links_processed', '1'),
(579, 149, 'rank_math_seo_score', '10'),
(580, 149, 'rank_math_contentai_score', 'a:5:{s:8:\"keywords\";s:5:\"74.51\";s:9:\"wordCount\";s:1:\"0\";s:9:\"linkCount\";s:1:\"0\";s:12:\"headingCount\";s:1:\"0\";s:10:\"mediaCount\";s:1:\"0\";}'),
(581, 149, '_thumbnail_id', '71'),
(582, 149, '_wp_old_slug', 'ban-otr-tianli'),
(583, 149, 'size', '33.00R51'),
(584, 149, '_size', 'field_68fdcc89ca9ea'),
(585, 149, 'pattern', 'TUE400'),
(586, 149, '_pattern', 'field_68fdcce3c3e0c'),
(587, 149, 'brand', 'tianli'),
(588, 149, '_brand', 'field_68fdc5cbaaa00'),
(589, 149, 'tttl', 'TL'),
(590, 149, '_tttl', 'field_690819ee36d1e'),
(591, 149, 'rim', '17.00/3.5'),
(592, 149, '_rim', 'field_69081a34c3ff9'),
(593, 149, 'tra', 'E-4'),
(594, 149, '_tra', 'field_69081a537b01a'),
(595, 149, 'loadspeed_index', '209B'),
(596, 149, '_loadspeed_index', 'field_69081a5d7b01b'),
(597, 149, 'star_rating', '4'),
(598, 149, '_star_rating', 'field_69081a7a7b01c'),
(599, 149, 'tread_depth', '63'),
(600, 149, '_tread_depth', 'field_69081ae77b01d'),
(601, 149, 'outer_diameter', '2001'),
(602, 149, '_outer_diameter', 'field_69081bda71d87'),
(603, 149, 'section_width', '663'),
(604, 149, '_section_width', 'field_69081bf856545'),
(605, 149, 'inflation_pressure', '700'),
(606, 149, '_inflation_pressure', 'field_69081c1ea4795'),
(607, 149, 'load_capacity', '18500'),
(608, 149, '_load_capacity', 'field_69081c44a4796'),
(609, 149, 'speed', '30'),
(610, 149, '_speed', 'field_69081c5ea4797'),
(611, 149, 'images', '71,72'),
(612, 149, '_images', 'field_68fde2d934fdb'),
(613, 149, 'rank_math_primary_advantage', '0'),
(614, 149, 'rank_math_primary_function', '0'),
(615, 149, 'rank_math_primary_tire_type', '0'),
(616, 150, '_edit_last', '1'),
(617, 150, '_edit_lock', '1762229037:1'),
(618, 150, 'rank_math_internal_links_processed', '1'),
(619, 150, 'rank_math_seo_score', '10'),
(620, 150, 'rank_math_contentai_score', 'a:5:{s:8:\"keywords\";s:5:\"74.51\";s:9:\"wordCount\";s:1:\"0\";s:9:\"linkCount\";s:1:\"0\";s:12:\"headingCount\";s:1:\"0\";s:10:\"mediaCount\";s:1:\"0\";}'),
(621, 150, '_thumbnail_id', '73'),
(622, 150, '_wp_old_slug', 'ban-tbr-tianli-12-00r24'),
(623, 150, 'size', '12.00R24'),
(624, 150, '_size', 'field_68fdcc89ca9ea'),
(625, 150, 'pattern', 'TZ101PRO'),
(626, 150, '_pattern', 'field_68fdcce3c3e0c'),
(627, 150, 'brand', 'tianli'),
(628, 150, '_brand', 'field_68fdc5cbaaa00'),
(629, 150, 'tttl', 'TT'),
(630, 150, '_tttl', 'field_690819ee36d1e'),
(631, 150, 'rim', '17.00/3.5'),
(632, 150, '_rim', 'field_69081a34c3ff9'),
(633, 150, 'tra', 'E-4'),
(634, 150, '_tra', 'field_69081a537b01a'),
(635, 150, 'loadspeed_index', '209B'),
(636, 150, '_loadspeed_index', 'field_69081a5d7b01b'),
(637, 150, 'star_rating', '5'),
(638, 150, '_star_rating', 'field_69081a7a7b01c'),
(639, 150, 'tread_depth', '79'),
(640, 150, '_tread_depth', 'field_69081ae77b01d'),
(641, 150, 'outer_diameter', '84.5'),
(642, 150, '_outer_diameter', 'field_69081bda71d87'),
(643, 150, 'section_width', '26.2'),
(644, 150, '_section_width', 'field_69081bf856545'),
(645, 150, 'inflation_pressure', '700'),
(646, 150, '_inflation_pressure', 'field_69081c1ea4795'),
(647, 150, 'load_capacity', '55100'),
(648, 150, '_load_capacity', 'field_69081c44a4796'),
(649, 150, 'speed', '50'),
(650, 150, '_speed', 'field_69081c5ea4797'),
(651, 150, 'images', '75,73'),
(652, 150, '_images', 'field_68fde2d934fdb'),
(653, 150, 'rank_math_primary_advantage', '0'),
(654, 150, 'rank_math_primary_function', '0'),
(655, 150, 'rank_math_primary_tire_type', '0'),
(656, 151, '_edit_last', '1'),
(657, 151, '_edit_lock', '1763351834:1'),
(658, 151, 'rank_math_internal_links_processed', '1'),
(659, 151, 'rank_math_seo_score', '10'),
(660, 151, 'rank_math_contentai_score', 'a:5:{s:8:\"keywords\";s:5:\"74.51\";s:9:\"wordCount\";s:1:\"0\";s:9:\"linkCount\";s:1:\"0\";s:12:\"headingCount\";s:1:\"0\";s:10:\"mediaCount\";s:1:\"0\";}'),
(661, 151, '_thumbnail_id', '73'),
(662, 151, '_wp_old_slug', 'ban-tbr-tianli-12-00r20'),
(663, 151, 'size', '12.00R20'),
(664, 151, '_size', 'field_68fdcc89ca9ea'),
(665, 151, 'pattern', 'TZ101PRO'),
(666, 151, '_pattern', 'field_68fdcce3c3e0c'),
(667, 151, 'brand', 'tianli'),
(668, 151, '_brand', 'field_68fdc5cbaaa00'),
(669, 151, 'tttl', 'TL'),
(670, 151, '_tttl', 'field_690819ee36d1e'),
(671, 151, 'rim', '17.00/3.5'),
(672, 151, '_rim', 'field_69081a34c3ff9'),
(673, 151, 'tra', 'E-4'),
(674, 151, '_tra', 'field_69081a537b01a'),
(675, 151, 'loadspeed_index', '209B'),
(676, 151, '_loadspeed_index', 'field_69081a5d7b01b'),
(677, 151, 'star_rating', '5'),
(678, 151, '_star_rating', 'field_69081a7a7b01c'),
(679, 151, 'tread_depth', '78'),
(680, 151, '_tread_depth', 'field_69081ae77b01d'),
(681, 151, 'outer_diameter', '120'),
(682, 151, '_outer_diameter', 'field_69081bda71d87'),
(683, 151, 'section_width', '420'),
(684, 151, '_section_width', 'field_69081bf856545'),
(685, 151, 'inflation_pressure', '1200'),
(686, 151, '_inflation_pressure', 'field_69081c1ea4795'),
(687, 151, 'load_capacity', '44100'),
(688, 151, '_load_capacity', 'field_69081c44a4796'),
(689, 151, 'speed', '60'),
(690, 151, '_speed', 'field_69081c5ea4797'),
(691, 151, 'images', '73,72,75'),
(692, 151, '_images', 'field_68fde2d934fdb'),
(693, 151, 'rank_math_primary_advantage', '0'),
(694, 151, 'rank_math_primary_function', '0'),
(695, 151, 'rank_math_primary_tire_type', '0'),
(696, 111, '_edit_lock', '1762229006:1'),
(697, 148, 'rank_math_seo_score', '10'),
(698, 148, 'rank_math_contentai_score', 'a:5:{s:8:\"keywords\";s:5:\"74.51\";s:9:\"wordCount\";s:1:\"0\";s:9:\"linkCount\";s:1:\"0\";s:12:\"headingCount\";s:1:\"0\";s:10:\"mediaCount\";s:1:\"0\";}'),
(699, 148, 'rank_math_primary_advantage', '0'),
(700, 148, 'rank_math_primary_function', '0'),
(701, 148, 'rank_math_primary_tire_type', '0'),
(702, 152, '_wp_trash_meta_status', 'publish'),
(703, 152, '_wp_trash_meta_time', '1763012958'),
(704, 153, '_wp_trash_meta_status', 'publish'),
(705, 153, '_wp_trash_meta_time', '1763012993'),
(706, 154, '_edit_lock', '1763047082:1'),
(707, 155, '_wp_attached_file', '2025/11/1d1c6f9c7bde12f2db6b6d84c554dd4b77458852-scaled.jpg'),
(708, 155, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1444;s:4:\"file\";s:59:\"2025/11/1d1c6f9c7bde12f2db6b6d84c554dd4b77458852-scaled.jpg\";s:8:\"filesize\";i:582603;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:52:\"1d1c6f9c7bde12f2db6b6d84c554dd4b77458852-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:16346;}s:5:\"large\";a:5:{s:4:\"file\";s:53:\"1d1c6f9c7bde12f2db6b6d84c554dd4b77458852-1024x578.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:578;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:133003;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:52:\"1d1c6f9c7bde12f2db6b6d84c554dd4b77458852-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:7895;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:52:\"1d1c6f9c7bde12f2db6b6d84c554dd4b77458852-768x433.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:433;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:81484;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:53:\"1d1c6f9c7bde12f2db6b6d84c554dd4b77458852-1536x866.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:866;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:259767;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:54:\"1d1c6f9c7bde12f2db6b6d84c554dd4b77458852-2048x1155.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1155;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:410649;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"1.7\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:8:\"OPPO A74\";s:7:\"caption\";s:7:\"oplus_0\";s:17:\"created_timestamp\";s:10:\"1705419476\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"4.71\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:18:\"9.6571704490584E-5\";s:5:\"title\";s:7:\"oplus_0\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:44:\"1d1c6f9c7bde12f2db6b6d84c554dd4b77458852.jpg\";}'),
(709, 156, '_wp_attached_file', '2025/11/372a85cf9143f9e8b9d02404cacbb348d14a6327-scaled.jpg'),
(710, 156, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1271;s:4:\"file\";s:59:\"2025/11/372a85cf9143f9e8b9d02404cacbb348d14a6327-scaled.jpg\";s:8:\"filesize\";i:303271;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:52:\"372a85cf9143f9e8b9d02404cacbb348d14a6327-300x149.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:149;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11307;}s:5:\"large\";a:5:{s:4:\"file\";s:53:\"372a85cf9143f9e8b9d02404cacbb348d14a6327-1024x508.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:508;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:81318;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:52:\"372a85cf9143f9e8b9d02404cacbb348d14a6327-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5472;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:52:\"372a85cf9143f9e8b9d02404cacbb348d14a6327-768x381.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:381;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:51741;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:53:\"372a85cf9143f9e8b9d02404cacbb348d14a6327-1536x762.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:762;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:148231;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:54:\"372a85cf9143f9e8b9d02404cacbb348d14a6327-2048x1017.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1017;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:224408;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:44:\"372a85cf9143f9e8b9d02404cacbb348d14a6327.jpg\";}'),
(711, 157, '_wp_attached_file', '2025/11/03555bf5a937dcd23d2cad8462366b39da1c6fb0-scaled.jpg'),
(712, 157, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1444;s:4:\"file\";s:59:\"2025/11/03555bf5a937dcd23d2cad8462366b39da1c6fb0-scaled.jpg\";s:8:\"filesize\";i:456070;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:52:\"03555bf5a937dcd23d2cad8462366b39da1c6fb0-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12876;}s:5:\"large\";a:5:{s:4:\"file\";s:53:\"03555bf5a937dcd23d2cad8462366b39da1c6fb0-1024x578.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:578;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:104458;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:52:\"03555bf5a937dcd23d2cad8462366b39da1c6fb0-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6637;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:52:\"03555bf5a937dcd23d2cad8462366b39da1c6fb0-768x433.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:433;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:64415;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:53:\"03555bf5a937dcd23d2cad8462366b39da1c6fb0-1536x866.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:866;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:202864;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:54:\"03555bf5a937dcd23d2cad8462366b39da1c6fb0-2048x1155.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1155;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:319782;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"1.7\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:8:\"OPPO A74\";s:7:\"caption\";s:7:\"oplus_0\";s:17:\"created_timestamp\";s:10:\"1706022046\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"4.71\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:19:\"0.00010245901639344\";s:5:\"title\";s:7:\"oplus_0\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:44:\"03555bf5a937dcd23d2cad8462366b39da1c6fb0.jpg\";}'),
(713, 158, '_wp_attached_file', '2025/11/c7ecd823f20f959804252f3164ae6e99386136ad-scaled.jpg'),
(714, 158, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1444;s:4:\"file\";s:59:\"2025/11/c7ecd823f20f959804252f3164ae6e99386136ad-scaled.jpg\";s:8:\"filesize\";i:423195;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:52:\"c7ecd823f20f959804252f3164ae6e99386136ad-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12897;}s:5:\"large\";a:5:{s:4:\"file\";s:53:\"c7ecd823f20f959804252f3164ae6e99386136ad-1024x578.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:578;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:96193;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:52:\"c7ecd823f20f959804252f3164ae6e99386136ad-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6345;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:52:\"c7ecd823f20f959804252f3164ae6e99386136ad-768x433.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:433;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:59845;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:53:\"c7ecd823f20f959804252f3164ae6e99386136ad-1536x866.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:866;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:186038;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:54:\"c7ecd823f20f959804252f3164ae6e99386136ad-2048x1155.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1155;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:295482;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"1.7\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:8:\"OPPO A74\";s:7:\"caption\";s:7:\"oplus_0\";s:17:\"created_timestamp\";s:10:\"1708436738\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"4.71\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:18:\"7.1859729807416E-5\";s:5:\"title\";s:7:\"oplus_0\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:44:\"c7ecd823f20f959804252f3164ae6e99386136ad.jpg\";}'),
(715, 159, '_wp_attached_file', '2025/11/c8d63bc591a71e81b4eeb114773746fb07d725f9-scaled.jpg'),
(716, 159, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1444;s:4:\"file\";s:59:\"2025/11/c8d63bc591a71e81b4eeb114773746fb07d725f9-scaled.jpg\";s:8:\"filesize\";i:558153;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:52:\"c8d63bc591a71e81b4eeb114773746fb07d725f9-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13750;}s:5:\"large\";a:5:{s:4:\"file\";s:53:\"c8d63bc591a71e81b4eeb114773746fb07d725f9-1024x578.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:578;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:116309;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:52:\"c8d63bc591a71e81b4eeb114773746fb07d725f9-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6741;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:52:\"c8d63bc591a71e81b4eeb114773746fb07d725f9-768x433.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:433;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:69889;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:53:\"c8d63bc591a71e81b4eeb114773746fb07d725f9-1536x866.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:866;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:236271;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:54:\"c8d63bc591a71e81b4eeb114773746fb07d725f9-2048x1155.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1155;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:384793;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"1.7\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:8:\"OPPO A74\";s:7:\"caption\";s:7:\"oplus_2\";s:17:\"created_timestamp\";s:10:\"1695395358\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"4.71\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:18:\"0.0010559662090813\";s:5:\"title\";s:7:\"oplus_2\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:44:\"c8d63bc591a71e81b4eeb114773746fb07d725f9.jpg\";}'),
(717, 160, '_wp_attached_file', '2025/11/de8b164276d6348fe5bbf0d60fb7b374af039592-scaled.jpg'),
(718, 160, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1444;s:4:\"file\";s:59:\"2025/11/de8b164276d6348fe5bbf0d60fb7b374af039592-scaled.jpg\";s:8:\"filesize\";i:560710;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:52:\"de8b164276d6348fe5bbf0d60fb7b374af039592-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15553;}s:5:\"large\";a:5:{s:4:\"file\";s:53:\"de8b164276d6348fe5bbf0d60fb7b374af039592-1024x578.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:578;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:121199;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:52:\"de8b164276d6348fe5bbf0d60fb7b374af039592-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6719;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:52:\"de8b164276d6348fe5bbf0d60fb7b374af039592-768x433.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:433;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:74349;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:53:\"de8b164276d6348fe5bbf0d60fb7b374af039592-1536x866.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:866;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:239025;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:54:\"de8b164276d6348fe5bbf0d60fb7b374af039592-2048x1155.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1155;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:387238;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"1.7\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:8:\"OPPO A74\";s:7:\"caption\";s:7:\"oplus_0\";s:17:\"created_timestamp\";s:10:\"1705419461\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:4:\"4.71\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:18:\"7.8523753435414E-5\";s:5:\"title\";s:7:\"oplus_0\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:44:\"de8b164276d6348fe5bbf0d60fb7b374af039592.jpg\";}'),
(719, 154, '_wp_trash_meta_status', 'publish'),
(720, 154, '_wp_trash_meta_time', '1763047099'),
(721, 161, '_wp_attached_file', '2025/11/72e9aa35f4553c5fd6e96b2cc177a4d193660277.png'),
(722, 161, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:557;s:6:\"height\";i:848;s:4:\"file\";s:52:\"2025/11/72e9aa35f4553c5fd6e96b2cc177a4d193660277.png\";s:8:\"filesize\";i:584935;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:52:\"72e9aa35f4553c5fd6e96b2cc177a4d193660277-197x300.png\";s:5:\"width\";i:197;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:84437;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:52:\"72e9aa35f4553c5fd6e96b2cc177a4d193660277-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:37270;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(723, 162, '_wp_attached_file', '2025/11/7669a75e8850cf8cb980e954fa7bdaca8b7bb7eb.png'),
(724, 162, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:516;s:6:\"height\";i:728;s:4:\"file\";s:52:\"2025/11/7669a75e8850cf8cb980e954fa7bdaca8b7bb7eb.png\";s:8:\"filesize\";i:404754;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:52:\"7669a75e8850cf8cb980e954fa7bdaca8b7bb7eb-213x300.png\";s:5:\"width\";i:213;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:86515;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:52:\"7669a75e8850cf8cb980e954fa7bdaca8b7bb7eb-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:38001;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(725, 163, '_wp_attached_file', '2025/11/f03bd6e70202d1a150e0d0ec199f27bd4359f93b.png'),
(726, 163, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:377;s:6:\"height\";i:588;s:4:\"file\";s:52:\"2025/11/f03bd6e70202d1a150e0d0ec199f27bd4359f93b.png\";s:8:\"filesize\";i:196269;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:52:\"f03bd6e70202d1a150e0d0ec199f27bd4359f93b-192x300.png\";s:5:\"width\";i:192;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:77078;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:52:\"f03bd6e70202d1a150e0d0ec199f27bd4359f93b-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:37604;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Table structure for table `abuhasdha_posts`
--

CREATE TABLE `abuhasdha_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext NOT NULL,
  `post_title` text NOT NULL,
  `post_excerpt` text NOT NULL,
  `post_status` varchar(20) NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) NOT NULL DEFAULT 'open',
  `post_password` varchar(255) NOT NULL DEFAULT '',
  `post_name` varchar(200) NOT NULL DEFAULT '',
  `to_ping` text NOT NULL,
  `pinged` text NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `abuhasdha_posts`
--

INSERT INTO `abuhasdha_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2025-10-24 07:54:13', '2025-10-24 07:54:13', '<!-- wp:paragraph -->\n<p>Welcome to WordPress. This is your first post. Edit or delete it, then start writing!</p>\n<!-- /wp:paragraph -->', 'Hello world!', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2025-10-24 07:54:13', '2025-10-24 07:54:13', '', 0, 'https://fazrilsh.com/abuhasdha/?p=1', 0, 'post', '', 1),
(2, 1, '2025-10-24 07:54:13', '2025-10-24 07:54:13', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"https://fazrilsh.com/abuhasdha/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'trash', 'closed', 'open', '', 'sample-page__trashed', '', '', '2025-10-24 08:08:36', '2025-10-24 08:08:36', '', 0, 'https://fazrilsh.com/abuhasdha/?page_id=2', 0, 'page', '', 0),
(3, 1, '2025-10-24 07:54:13', '2025-10-24 07:54:13', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: https://fazrilsh.com/abuhasdha.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2025-11-01 12:23:20', '2025-11-01 12:23:20', '', 0, 'https://fazrilsh.com/abuhasdha/?page_id=3', 0, 'page', '', 0),
(4, 0, '2025-10-24 07:54:15', '2025-10-24 07:54:15', '<!-- wp:page-list /-->', 'Navigation', '', 'publish', 'closed', 'closed', '', 'navigation', '', '', '2025-10-24 07:54:15', '2025-10-24 07:54:15', '', 0, 'https://fazrilsh.com/abuhasdha/2025/10/24/navigation/', 0, 'wp_navigation', '', 0),
(6, 1, '2025-10-24 08:08:08', '0000-00-00 00:00:00', '', 'Home', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-10-24 08:08:08', '0000-00-00 00:00:00', '', 0, 'https://fazrilsh.com/abuhasdha/?p=6', 1, 'nav_menu_item', '', 0),
(7, 1, '2025-10-24 08:08:08', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-10-24 08:08:08', '0000-00-00 00:00:00', '', 0, 'https://fazrilsh.com/abuhasdha/?p=7', 1, 'nav_menu_item', '', 0),
(8, 1, '2025-10-24 08:08:36', '2025-10-24 08:08:36', '<!-- wp:paragraph -->\n<p>This is an example page. It\'s different from a blog post because it will stay in one place and will show up in your site navigation (in most themes). Most people start with an About page that introduces them to potential site visitors. It might say something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Hi there! I\'m a bike messenger by day, aspiring actor by night, and this is my website. I live in Los Angeles, have a great dog named Jack, and I like pi&#241;a coladas. (And gettin\' caught in the rain.)</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...or something like this:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>The XYZ Doohickey Company was founded in 1971, and has been providing quality doohickeys to the public ever since. Located in Gotham City, XYZ employs over 2,000 people and does all kinds of awesome things for the Gotham community.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>As a new WordPress user, you should go to <a href=\"https://fazrilsh.com/abuhasdha/wp-admin/\">your dashboard</a> to delete this page and create new pages for your content. Have fun!</p>\n<!-- /wp:paragraph -->', 'Sample Page', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2025-10-24 08:08:36', '2025-10-24 08:08:36', '', 2, 'https://fazrilsh.com/abuhasdha/?p=8', 0, 'revision', '', 0),
(9, 1, '2025-10-24 08:10:45', '2025-10-24 08:10:45', '', 'Home', '', 'trash', 'closed', 'closed', '', 'home__trashed', '', '', '2025-11-01 12:23:19', '2025-11-01 12:23:19', '', 0, 'https://fazrilsh.com/abuhasdha/?page_id=9', 0, 'page', '', 0),
(10, 1, '2025-10-24 08:10:45', '2025-10-24 08:10:45', '', 'Home', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2025-10-24 08:10:45', '2025-10-24 08:10:45', '', 9, 'https://fazrilsh.com/abuhasdha/?p=10', 0, 'revision', '', 0),
(11, 1, '2025-10-24 08:11:47', '2025-10-24 08:11:47', '', 'Tentang Kami', '', 'trash', 'closed', 'closed', '', 'tentang-kami__trashed', '', '', '2025-11-01 12:23:20', '2025-11-01 12:23:20', '', 0, 'https://fazrilsh.com/abuhasdha/?page_id=11', 0, 'page', '', 0),
(12, 1, '2025-10-24 08:11:47', '2025-10-24 08:11:47', '', 'Tentang Kami', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2025-10-24 08:11:47', '2025-10-24 08:11:47', '', 11, 'https://fazrilsh.com/abuhasdha/?p=12', 0, 'revision', '', 0),
(13, 1, '2025-10-24 08:12:23', '2025-10-24 08:12:23', '', 'Layanan &amp; Produk', '', 'trash', 'closed', 'closed', '', 'layanan-produk__trashed', '', '', '2025-11-01 12:23:20', '2025-11-01 12:23:20', '', 0, 'https://fazrilsh.com/abuhasdha/?page_id=13', 0, 'page', '', 0),
(14, 1, '2025-10-24 08:12:23', '2025-10-24 08:12:23', '', 'Layanan &amp; Produk', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2025-10-24 08:12:23', '2025-10-24 08:12:23', '', 13, 'https://fazrilsh.com/abuhasdha/?p=14', 0, 'revision', '', 0),
(15, 1, '2025-10-24 08:13:20', '2025-10-24 08:13:20', '', 'Galeri', '', 'trash', 'closed', 'closed', '', 'galeri__trashed', '', '', '2025-11-01 12:23:19', '2025-11-01 12:23:19', '', 0, 'https://fazrilsh.com/abuhasdha/?page_id=15', 0, 'page', '', 0),
(16, 1, '2025-10-24 08:13:20', '2025-10-24 08:13:20', '', 'Galeri', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2025-10-24 08:13:20', '2025-10-24 08:13:20', '', 15, 'https://fazrilsh.com/abuhasdha/?p=16', 0, 'revision', '', 0),
(17, 1, '2025-10-24 08:14:24', '2025-10-24 08:14:24', '', 'Kontak', '', 'trash', 'closed', 'closed', '', 'kontak__trashed', '', '', '2025-11-01 12:23:20', '2025-11-01 12:23:20', '', 0, 'https://fazrilsh.com/abuhasdha/?page_id=17', 0, 'page', '', 0),
(18, 1, '2025-10-24 08:14:24', '2025-10-24 08:14:24', '', 'Kontak', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2025-10-24 08:14:24', '2025-10-24 08:14:24', '', 17, 'https://fazrilsh.com/abuhasdha/?p=18', 0, 'revision', '', 0),
(19, 1, '2025-11-03 01:49:28', '2025-10-24 08:16:35', '', 'Beranda', '', 'publish', 'closed', 'closed', '', 'home', '', '', '2025-11-03 01:49:28', '2025-11-03 01:49:28', '', 0, 'https://fazrilsh.com/abuhasdha/?p=19', 1, 'nav_menu_item', '', 0),
(20, 1, '2025-10-24 08:14:53', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-10-24 08:14:53', '0000-00-00 00:00:00', '', 0, 'https://fazrilsh.com/abuhasdha/?p=20', 1, 'nav_menu_item', '', 0),
(21, 1, '2025-10-24 08:14:53', '0000-00-00 00:00:00', ' ', '', '', 'draft', 'closed', 'closed', '', '', '', '', '2025-10-24 08:14:53', '0000-00-00 00:00:00', '', 0, 'https://fazrilsh.com/abuhasdha/?p=21', 1, 'nav_menu_item', '', 0),
(26, 1, '2025-10-26 03:54:49', '2025-10-26 03:54:49', '', 'about', '', 'inherit', 'open', 'closed', '', 'about', '', '', '2025-10-26 03:54:49', '2025-10-26 03:54:49', '', 0, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/10/about.png', 0, 'attachment', 'image/png', 0),
(27, 1, '2025-10-26 03:55:03', '2025-10-26 03:55:03', '', 'landing', '', 'inherit', 'open', 'closed', '', 'landing', '', '', '2025-10-26 03:55:03', '2025-10-26 03:55:03', '', 0, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/10/landing.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2025-10-26 03:55:17', '2025-10-26 03:55:17', '{\n    \"abuhasdha::hero_image\": {\n        \"value\": \"https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/10/landing-scaled.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-10-26 03:55:17\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1e3ec0e6-bcda-464c-9ff6-3b59b0b1816b', '', '', '2025-10-26 03:55:17', '2025-10-26 03:55:17', '', 0, 'https://fazrilsh.com/abuhasdha/2025/10/26/1e3ec0e6-bcda-464c-9ff6-3b59b0b1816b/', 0, 'customize_changeset', '', 0),
(29, 1, '2025-10-26 03:55:48', '2025-10-26 03:55:48', '{\n    \"abuhasdha::about_description\": {\n        \"value\": \"PT. Abuhasdha didirikan pada tahun 1980 oleh Mr. Halim Soeganha, dan sejak itu menjadi salah satu penyedia ban OTR, truk, dan industri terkemuka di Indonesia. Dengan pengalaman lebih dari empat dekade, kami tidak hanya menawarkan produk berkualitas, tetapi juga menjadi mitra strategis bagi berbagai sektor industri.\\n\\nKami adalah distributor resmi Tianli Tyres (TUTRIC, China), produsen ban kelas dunia dengan lebih dari 300 ukuran, diekspor ke lebih dari 70 negara, dan didukung oleh riset serta standar internasional (ISO, REACH).\\n\\nKami percaya bahwa ban bukan sekadar komponen kendaraan, melainkan faktor penting dalam mendukung produktivitas, keamanan, dan keberlanjutan bisnis Anda.\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-10-26 03:55:48\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '08e9c324-4ac8-468d-994d-764e07455a10', '', '', '2025-10-26 03:55:48', '2025-10-26 03:55:48', '', 0, 'https://fazrilsh.com/abuhasdha/2025/10/26/08e9c324-4ac8-468d-994d-764e07455a10/', 0, 'customize_changeset', '', 0),
(30, 1, '2025-10-26 03:56:16', '2025-10-26 03:56:16', '{\n    \"blogname\": {\n        \"value\": \"PT. Abuhasdha & CO.\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-10-26 03:56:16\"\n    },\n    \"blogdescription\": {\n        \"value\": \"Tim kami siap membantu kebutuhan ban dan layanan teknis Anda.\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-10-26 03:56:16\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '032be17c-d9d9-4ba3-ae6a-014baff9e51f', '', '', '2025-10-26 03:56:16', '2025-10-26 03:56:16', '', 0, 'https://fazrilsh.com/abuhasdha/2025/10/26/032be17c-d9d9-4ba3-ae6a-014baff9e51f/', 0, 'customize_changeset', '', 0),
(31, 1, '2025-10-26 03:56:27', '2025-10-26 03:56:27', '{\n    \"abuhasdha::hero_description\": {\n        \"value\": \"Dengan pengalaman lebih dari 40 tahun, Abuhasdha menyediakan ban Off-The-Road (OTR), truk, bus, dan industri yang tangguh, berkualitas, dan didukung layanan teknis menyeluruh.\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-10-26 03:56:27\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'f8a39a9d-b10c-4b69-bc3b-04e3621d98cb', '', '', '2025-10-26 03:56:27', '2025-10-26 03:56:27', '', 0, 'https://fazrilsh.com/abuhasdha/2025/10/26/f8a39a9d-b10c-4b69-bc3b-04e3621d98cb/', 0, 'customize_changeset', '', 0),
(32, 1, '2025-10-26 03:56:42', '2025-10-26 03:56:42', '{\n    \"abuhasdha::hero_heading\": {\n        \"value\": \"Tyres You Can Rely On. Solusi Ban Alat Berat dan Industri Anda!\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-10-26 03:56:40\"\n    },\n    \"abuhasdha::see_product_button\": {\n        \"value\": \"Lihat Produk\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-10-26 03:56:40\"\n    },\n    \"abuhasdha::contact_us_button\": {\n        \"value\": \"Hubungi Kami\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-10-26 03:56:40\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e9313fac-de31-4920-859e-4f084457c181', '', '', '2025-10-26 03:56:42', '2025-10-26 03:56:42', '', 0, 'https://fazrilsh.com/abuhasdha/?p=32', 0, 'customize_changeset', '', 0),
(33, 1, '2025-10-26 03:56:59', '2025-10-26 03:56:59', '{\n    \"abuhasdha::about_description\": {\n        \"value\": \"PT. Abuhasdha didirikan pada tahun 1980 oleh Mr. Halim Soeganha, dan sejak itu menjadi salah satu penyedia ban OTR, truk, dan industri terkemuka di Indonesia. Dengan pengalaman lebih dari empat dekade, kami tidak hanya menawarkan produk berkualitas, tetapi juga menjadi mitra strategis bagi berbagai sektor industri.\\n\\nKami adalah distributor resmi Tianli Tyres (TUTRIC, China), produsen ban kelas dunia dengan lebih dari 300 ukuran, diekspor ke lebih dari 70 negara, dan didukung oleh riset serta standar internasional (ISO, REACH).\\n\\nKami percaya bahwa ban bukan sekadar komponen kendaraan, melainkan faktor penting dalam mendukung produktivitas, keamanan, dan keberlanjutan bisnis Anda.\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-10-26 03:56:59\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3ebaa9d3-87de-4f41-ba64-03e6c4c544f3', '', '', '2025-10-26 03:56:59', '2025-10-26 03:56:59', '', 0, 'https://fazrilsh.com/abuhasdha/2025/10/26/3ebaa9d3-87de-4f41-ba64-03e6c4c544f3/', 0, 'customize_changeset', '', 0),
(34, 1, '2025-10-26 03:57:14', '2025-10-26 03:57:14', '{\n    \"abuhasdha::footer_slogan\": {\n        \"value\": \"Tim kami siap membantu kebutuhan ban dan layanan teknis Anda.\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-10-26 03:57:14\"\n    },\n    \"abuhasdha::footer_email\": {\n        \"value\": \"abuhasdha80@cbn.net.id\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-10-26 03:57:14\"\n    },\n    \"abuhasdha::footer_phone\": {\n        \"value\": \"(021) 63863210\\n(021) 63863012\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-10-26 03:57:14\"\n    },\n    \"abuhasdha::footer_address\": {\n        \"value\": \"Jl. Kyai Caringin No.14B, Jakarta, 10150, DKI Jakarta, Indonesia\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-10-26 03:57:14\"\n    },\n    \"abuhasdha::footer_address_url\": {\n        \"value\": \"https://share.google/Yr2nBExkCfqfErbXY\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-10-26 03:57:14\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'ccf2a752-b19c-49bf-8073-9ed07ad69656', '', '', '2025-10-26 03:57:14', '2025-10-26 03:57:14', '', 0, 'https://fazrilsh.com/abuhasdha/2025/10/26/ccf2a752-b19c-49bf-8073-9ed07ad69656/', 0, 'customize_changeset', '', 0),
(35, 1, '2025-10-26 03:57:42', '2025-10-26 03:57:42', '{\n    \"abuhasdha::about_image\": {\n        \"value\": \"https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/10/about.png\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-10-26 03:57:42\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '2ad346e4-9dc1-48d9-b0c4-f29f7a2eb7b1', '', '', '2025-10-26 03:57:42', '2025-10-26 03:57:42', '', 0, 'https://fazrilsh.com/abuhasdha/2025/10/26/2ad346e4-9dc1-48d9-b0c4-f29f7a2eb7b1/', 0, 'customize_changeset', '', 0),
(36, 1, '2025-10-26 11:37:15', '2025-10-26 11:37:15', 'a:10:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"product\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;s:13:\"display_title\";s:0:\"\";s:8:\"modified\";i:1761986060;}', 'Product', 'product', 'trash', 'closed', 'closed', '', 'group_68fdc33733403__trashed', '', '', '2025-11-03 14:17:40', '2025-11-03 14:17:40', '', 0, 'https://fazrilsh.com/abuhasdha/?post_type=acf-field-group&#038;p=36', 0, 'acf-field-group', '', 0),
(38, 1, '2025-10-26 11:37:15', '2025-10-26 11:37:15', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:8:\"otr-tire\";s:8:\"OTR TIRE\";s:8:\"tbr-tire\";s:8:\"TBR TIRE\";}s:13:\"default_value\";s:8:\"OTR TIRE\";s:13:\"return_format\";s:5:\"value\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;s:17:\"allow_in_bindings\";i:0;s:2:\"ui\";i:0;s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";s:14:\"create_options\";i:0;s:12:\"save_options\";i:0;}', 'Category', 'category', 'trash', 'closed', 'closed', '', 'field_68fdc33787031__trashed', '', '', '2025-11-03 14:17:40', '2025-11-03 14:17:40', '', 36, 'https://fazrilsh.com/abuhasdha/?post_type=acf-field&#038;p=38', 0, 'acf-field', '', 0),
(40, 1, '2025-10-26 11:37:15', '2025-10-26 11:37:15', 'a:16:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"post_object\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"post_type\";a:1:{i:0;s:7:\"service\";}s:11:\"post_status\";a:1:{i:0;s:7:\"publish\";}s:8:\"taxonomy\";s:0:\"\";s:13:\"return_format\";s:6:\"object\";s:8:\"multiple\";i:1;s:10:\"allow_null\";i:0;s:17:\"allow_in_bindings\";i:0;s:13:\"bidirectional\";i:0;s:2:\"ui\";i:1;s:20:\"bidirectional_target\";a:0:{}}', 'Function', 'function', 'trash', 'closed', 'closed', '', 'field_68fdcb2963a37__trashed', '', '', '2025-11-03 14:17:40', '2025-11-03 14:17:40', '', 36, 'https://fazrilsh.com/abuhasdha/?post_type=acf-field&#038;p=40', 1, 'acf-field', '', 0),
(41, 1, '2025-10-26 11:37:15', '2025-10-26 11:37:15', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:6:\"tianli\";s:6:\"TIANLI\";s:7:\"hawkway\";s:7:\"HAWKWAY\";}s:13:\"default_value\";s:6:\"tianli\";s:13:\"return_format\";s:5:\"value\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;s:17:\"allow_in_bindings\";i:0;s:2:\"ui\";i:0;s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";s:14:\"create_options\";i:0;s:12:\"save_options\";i:0;}', 'Brand', 'brand', 'trash', 'closed', 'closed', '', 'field_68fdc5cbaaa00__trashed', '', '', '2025-11-03 14:17:40', '2025-11-03 14:17:40', '', 36, 'https://fazrilsh.com/abuhasdha/?post_type=acf-field&#038;p=41', 2, 'acf-field', '', 0),
(42, 1, '2025-10-26 11:37:15', '2025-10-26 11:37:15', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Size', 'size', 'trash', 'closed', 'closed', '', 'field_68fdcc89ca9ea__trashed', '', '', '2025-11-03 14:17:40', '2025-11-03 14:17:40', '', 36, 'https://fazrilsh.com/abuhasdha/?post_type=acf-field&#038;p=42', 3, 'acf-field', '', 0),
(43, 1, '2025-10-26 11:37:15', '2025-10-26 11:37:15', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Pattern', 'pattern', 'trash', 'closed', 'closed', '', 'field_68fdcce3c3e0c__trashed', '', '', '2025-11-03 14:17:40', '2025-11-03 14:17:40', '', 36, 'https://fazrilsh.com/abuhasdha/?post_type=acf-field&#038;p=43', 4, 'acf-field', '', 0),
(44, 1, '2025-10-26 11:37:15', '2025-10-26 11:37:15', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:4:\"step\";i:50000;s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Price', 'price', 'trash', 'closed', 'closed', '', 'field_68fddfcb9acd1__trashed', '', '', '2025-11-03 14:17:40', '2025-11-03 14:17:40', '', 36, 'https://fazrilsh.com/abuhasdha/?post_type=acf-field&#038;p=44', 5, 'acf-field', '', 0),
(45, 1, '2025-10-26 11:37:15', '2025-10-26 11:37:15', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Product Images', 'images', 'trash', 'closed', 'closed', '', 'field_68fde2d934fdb__trashed', '', '', '2025-11-03 14:17:40', '2025-11-03 14:17:40', '', 36, 'https://fazrilsh.com/abuhasdha/?post_type=acf-field&#038;p=45', 6, 'acf-field', '', 0),
(48, 1, '2025-11-01 12:12:20', '2025-11-01 12:12:20', 'a:10:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"service\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;s:13:\"display_title\";s:0:\"\";s:8:\"modified\";i:1761985632;}', 'Layanan', 'layanan', 'trash', 'closed', 'closed', '', 'group_68fe119cb05e7__trashed', '', '', '2025-11-03 14:17:40', '2025-11-03 14:17:40', '', 0, 'https://fazrilsh.com/abuhasdha/?post_type=acf-field-group&#038;p=48', 0, 'acf-field-group', '', 0),
(49, 1, '2025-11-01 12:12:20', '2025-11-01 12:12:20', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:11:\"icon_picker\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:4:\"tabs\";a:3:{i:0;s:9:\"dashicons\";i:1;s:13:\"media_library\";i:2;s:3:\"url\";}s:13:\"return_format\";s:6:\"string\";s:17:\"allow_in_bindings\";i:0;s:7:\"library\";s:3:\"all\";s:13:\"default_value\";a:2:{s:4:\"type\";N;s:5:\"value\";N;}}', 'Icon', 'icon', 'trash', 'closed', 'closed', '', 'field_68fe124a7a7e4__trashed', '', '', '2025-11-03 14:17:40', '2025-11-03 14:17:40', '', 48, 'https://fazrilsh.com/abuhasdha/?post_type=acf-field&#038;p=49', 0, 'acf-field', '', 0),
(51, 1, '2025-11-01 12:13:17', '2025-11-01 12:13:17', '{\n    \"abuhasdha::technical_services\": {\n        \"value\": \"Tire Recommendations & Observations\\nHeat Study\\nRunning Tire/Pressure Inspections\\nScrap Tire Inspections\\nTKPH Analysis\\nSite Severity Survey\\nTire Awareness Training\\nNew Product Presentation & Survey\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-11-01 12:13:17\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '9c77c372-e272-49a3-bb1a-056511fd95f0', '', '', '2025-11-01 12:13:17', '2025-11-01 12:13:17', '', 0, 'https://fazrilsh.com/abuhasdha/2025/11/01/9c77c372-e272-49a3-bb1a-056511fd95f0/', 0, 'customize_changeset', '', 0),
(52, 1, '2025-11-01 12:13:21', '2025-11-01 12:13:21', '{\n    \"abuhasdha::technical_label\": {\n        \"value\": \"Kami memahami bahwa kebutuhan ban bukan hanya pembelian, tapi juga perawatan agar mendukung kelancaran operasional. Oleh karena itu, Abuhasdha menghadirkan layanan onsite & konsultasi teknis:\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-11-01 12:13:21\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'e061481f-e693-4ed7-9f23-a78691441230', '', '', '2025-11-01 12:13:21', '2025-11-01 12:13:21', '', 0, 'https://fazrilsh.com/abuhasdha/2025/11/01/e061481f-e693-4ed7-9f23-a78691441230/', 0, 'customize_changeset', '', 0),
(53, 1, '2025-11-01 12:13:49', '2025-11-01 12:13:49', '', 'building', '', 'inherit', 'open', 'closed', '', 'building', '', '', '2025-11-01 12:13:49', '2025-11-01 12:13:49', '', 0, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/building.png', 0, 'attachment', 'image/png', 0),
(54, 1, '2025-11-01 12:13:59', '2025-11-01 12:13:59', '', 'Gemini_Generated_Image_pfglnzpfglnzpfgl 1', '', 'inherit', 'open', 'closed', '', 'gemini_generated_image_pfglnzpfglnzpfgl-1', '', '', '2025-11-01 12:13:59', '2025-11-01 12:13:59', '', 0, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/Gemini_Generated_Image_pfglnzpfglnzpfgl-1.png', 0, 'attachment', 'image/png', 0),
(55, 1, '2025-11-01 12:14:01', '2025-11-01 12:14:01', '', 'Gemini_Generated_Image_z00hs1z00hs1z00h 1', '', 'inherit', 'open', 'closed', '', 'gemini_generated_image_z00hs1z00hs1z00h-1', '', '', '2025-11-01 12:14:01', '2025-11-01 12:14:01', '', 0, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/Gemini_Generated_Image_z00hs1z00hs1z00h-1.png', 0, 'attachment', 'image/png', 0),
(56, 1, '2025-11-01 12:14:03', '2025-11-01 12:14:03', '', 'Mask group-1', '', 'inherit', 'open', 'closed', '', 'mask-group-1', '', '', '2025-11-01 12:14:03', '2025-11-01 12:14:03', '', 0, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/Mask-group-1.png', 0, 'attachment', 'image/png', 0),
(57, 1, '2025-11-01 12:14:10', '2025-11-01 12:14:10', '', 'Mask group', '', 'inherit', 'open', 'closed', '', 'mask-group', '', '', '2025-11-01 12:14:10', '2025-11-01 12:14:10', '', 0, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/Mask-group.png', 0, 'attachment', 'image/png', 0),
(58, 1, '2025-11-01 12:15:28', '2025-11-01 12:15:28', '{\n    \"abuhasdha::custom_gallery_images\": {\n        \"value\": \"53,54,55,56,57\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-11-01 12:14:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '0f4afef2-1212-4140-a0e2-c36ce9a0f3b4', '', '', '2025-11-01 12:15:28', '2025-11-01 12:15:28', '', 0, 'https://fazrilsh.com/abuhasdha/?p=58', 0, 'customize_changeset', '', 0),
(59, 1, '2025-11-01 12:15:52', '2025-11-01 12:15:52', '{\n    \"abuhasdha::custom_gallery_images\": {\n        \"value\": \"54,55,56,57\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-11-01 12:15:52\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '1fd12bcd-5f24-498c-aa2c-5ef207c68d5b', '', '', '2025-11-01 12:15:52', '2025-11-01 12:15:52', '', 0, 'https://fazrilsh.com/abuhasdha/2025/11/01/1fd12bcd-5f24-498c-aa2c-5ef207c68d5b/', 0, 'customize_changeset', '', 0),
(62, 1, '2025-11-01 12:16:54', '2025-11-01 12:16:54', '{\n    \"abuhasdha::custom_gallery_images\": {\n        \"value\": \"\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-11-01 12:16:54\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'd50a42f7-c9cd-4402-991c-7a2e85a637cc', '', '', '2025-11-01 12:16:54', '2025-11-01 12:16:54', '', 0, 'https://fazrilsh.com/abuhasdha/2025/11/01/d50a42f7-c9cd-4402-991c-7a2e85a637cc/', 0, 'customize_changeset', '', 0),
(63, 1, '2025-11-01 12:20:21', '2025-11-01 12:20:21', 'Ban efisien dan tahan lama untuk transportasi dan logistik.', 'Truck & Bus Tires', '', 'publish', 'closed', 'closed', '', 'truck-bus-tires', '', '', '2025-11-01 12:20:21', '2025-11-01 12:20:21', '', 0, 'https://fazrilsh.com/abuhasdha/?post_type=service&#038;p=63', 0, 'service', '', 0),
(64, 1, '2025-11-01 12:18:48', '2025-11-01 12:18:48', '', 'Agribusiness 1', '', 'inherit', 'open', 'closed', '', 'agribusiness-1', '', '', '2025-11-01 12:18:48', '2025-11-01 12:18:48', '', 63, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/Agribusiness-1.png', 0, 'attachment', 'image/png', 0),
(65, 1, '2025-11-01 12:18:49', '2025-11-01 12:18:49', '', 'cube', '', 'inherit', 'open', 'closed', '', 'cube', '', '', '2025-11-01 12:18:49', '2025-11-01 12:18:49', '', 63, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/cube.png', 0, 'attachment', 'image/png', 0),
(66, 1, '2025-11-01 12:18:50', '2025-11-01 12:18:50', '', 'Foresty 1', '', 'inherit', 'open', 'closed', '', 'foresty-1', '', '', '2025-11-01 12:18:50', '2025-11-01 12:18:50', '', 63, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/Foresty-1.png', 0, 'attachment', 'image/png', 0),
(67, 1, '2025-11-01 12:18:51', '2025-11-01 12:18:51', '', 'gear', '', 'inherit', 'open', 'closed', '', 'gear', '', '', '2025-11-01 12:18:51', '2025-11-01 12:18:51', '', 63, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/gear.png', 0, 'attachment', 'image/png', 0),
(68, 1, '2025-11-01 12:18:51', '2025-11-01 12:18:51', '', 'Group 14', '', 'inherit', 'open', 'closed', '', 'group-14', '', '', '2025-11-01 12:18:51', '2025-11-01 12:18:51', '', 63, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/Group-14.png', 0, 'attachment', 'image/png', 0),
(69, 1, '2025-11-01 12:18:52', '2025-11-01 12:18:52', '', 'Group 15', '', 'inherit', 'open', 'closed', '', 'group-15', '', '', '2025-11-01 12:18:52', '2025-11-01 12:18:52', '', 63, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/Group-15.png', 0, 'attachment', 'image/png', 0),
(70, 1, '2025-11-01 12:18:53', '2025-11-01 12:18:53', '', 'Mining & Constructoin 1', '', 'inherit', 'open', 'closed', '', 'mining-constructoin-1', '', '', '2025-11-01 12:18:53', '2025-11-01 12:18:53', '', 63, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/Mining-Constructoin-1.png', 0, 'attachment', 'image/png', 0),
(71, 1, '2025-11-01 12:19:03', '2025-11-01 12:19:03', '', '2 8', '', 'inherit', 'open', 'closed', '', '2-8', '', '', '2025-11-01 12:19:03', '2025-11-01 12:19:03', '', 63, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/2-8.png', 0, 'attachment', 'image/png', 0),
(72, 1, '2025-11-01 12:19:04', '2025-11-01 12:19:04', '', 'Ban_ 1', '', 'inherit', 'open', 'closed', '', 'ban_-1', '', '', '2025-11-01 12:19:04', '2025-11-01 12:19:04', '', 63, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/Ban_-1.png', 0, 'attachment', 'image/png', 0),
(73, 1, '2025-11-01 12:19:05', '2025-11-01 12:19:05', '', 'Group 1 10', '', 'inherit', 'open', 'closed', '', 'group-1-10', '', '', '2025-11-01 12:19:05', '2025-11-01 12:19:05', '', 63, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/Group-1-10.png', 0, 'attachment', 'image/png', 0),
(74, 1, '2025-11-01 12:19:06', '2025-11-01 12:19:06', '', 'Untitled design (3) 1', '', 'inherit', 'open', 'closed', '', 'untitled-design-3-1', '', '', '2025-11-01 12:19:06', '2025-11-01 12:19:06', '', 63, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/Untitled-design-3-1.png', 0, 'attachment', 'image/png', 0),
(75, 1, '2025-11-01 12:19:07', '2025-11-01 12:19:07', '', 'Untitled design (7) 1', '', 'inherit', 'open', 'closed', '', 'untitled-design-7-1', '', '', '2025-11-01 12:19:07', '2025-11-01 12:19:07', '', 63, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/Untitled-design-7-1.png', 0, 'attachment', 'image/png', 0),
(76, 1, '2025-11-01 12:20:53', '2025-11-01 12:20:53', 'Ban traksi tinggi untuk perkebunan dan pertanian, efisien di medan berlumpur.', 'Agribusiness Tires', '', 'publish', 'closed', 'closed', '', 'agribusiness-tires', '', '', '2025-11-01 12:20:53', '2025-11-01 12:20:53', '', 0, 'https://fazrilsh.com/abuhasdha/?post_type=service&#038;p=76', 0, 'service', '', 0),
(77, 1, '2025-11-01 12:21:24', '2025-11-01 12:21:24', 'Ban kokoh untuk sektor kehutanan, stabil di medan berat dan tidak rata.', 'Foresty Tires', '', 'publish', 'closed', 'closed', '', 'foresty-tires', '', '', '2025-11-01 12:21:24', '2025-11-01 12:21:24', '', 0, 'https://fazrilsh.com/abuhasdha/?post_type=service&#038;p=77', 0, 'service', '', 0),
(78, 1, '2025-11-01 12:21:55', '2025-11-01 12:21:55', 'Ban stabil untuk crane dan kendaraan pelabuhan, tahan beban besar.', 'Industrial & Port Tires', '', 'publish', 'closed', 'closed', '', 'industrial-port-tires', '', '', '2025-11-01 12:21:55', '2025-11-01 12:21:55', '', 0, 'https://fazrilsh.com/abuhasdha/?post_type=service&#038;p=78', 0, 'service', '', 0),
(79, 1, '2025-11-01 12:22:34', '2025-11-01 12:22:34', '<div class=\"bg-white/80 relative flex flex-col items-center justify-center md:flex-[0_0_calc(33%_-_1rem)] w-full md:h-[250px] h-60\">\r\n<div class=\"h-[116px] w-full z-10 absolute bottom-0 left-0\">\r\n<div class=\"h-full bg-white text-center flex w-full pb-4 justify-center\">\r\n<div class=\"h-full w-68 text-wrap\">\r\n<p class=\"text-md\">Ban kuat untuk alat berat tambang dan konstruksi, tahan beban berat dan medan ekstrem.</p>\r\n\r\n</div>\r\n</div>\r\n</div>\r\n</div>', 'Mining & Construction Tires', '', 'publish', 'closed', 'closed', '', 'mining-construction-tires', '', '', '2025-11-01 12:22:34', '2025-11-01 12:22:34', '', 0, 'https://fazrilsh.com/abuhasdha/?post_type=service&#038;p=79', 0, 'service', '', 0),
(80, 1, '2025-11-01 12:23:20', '2025-11-01 12:23:20', '<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we are</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Our website address is: https://fazrilsh.com/abuhasdha.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Comments</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Media</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Cookies</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you visit our login page, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Embedded content from other websites</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracking your interaction with the embedded content if you have an account and are logged in to that website.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Who we share your data with</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you request a password reset, your IP address will be included in the reset email.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">How long we retain your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p>\n<!-- /wp:paragraph -->\n<!-- wp:paragraph -->\n<p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">What rights you have over your data</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p>\n<!-- /wp:paragraph -->\n<!-- wp:heading -->\n<h2 class=\"wp-block-heading\">Where your data is sent</h2>\n<!-- /wp:heading -->\n<!-- wp:paragraph -->\n<p><strong class=\"privacy-policy-tutorial\">Suggested text: </strong>Visitor comments may be checked through an automated spam detection service.</p>\n<!-- /wp:paragraph -->\n', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2025-11-01 12:23:20', '2025-11-01 12:23:20', '', 3, 'https://fazrilsh.com/abuhasdha/?p=80', 0, 'revision', '', 0),
(81, 1, '2025-11-03 01:49:28', '2025-11-01 12:25:08', '', 'Tentang', '', 'publish', 'closed', 'closed', '', 'tentang-kami', '', '', '2025-11-03 01:49:28', '2025-11-03 01:49:28', '', 0, 'https://fazrilsh.com/abuhasdha/?p=81', 2, 'nav_menu_item', '', 0),
(82, 1, '2025-11-03 01:49:28', '2025-11-01 12:25:08', '', 'Produk & Layanan', '', 'publish', 'closed', 'closed', '', 'layanan-produk', '', '', '2025-11-03 01:49:28', '2025-11-03 01:49:28', '', 0, 'https://fazrilsh.com/abuhasdha/?p=82', 3, 'nav_menu_item', '', 0),
(83, 1, '2025-11-03 01:49:28', '2025-11-01 12:25:08', '', 'Galeri', '', 'publish', 'closed', 'closed', '', 'galeri', '', '', '2025-11-03 01:49:28', '2025-11-03 01:49:28', '', 0, 'https://fazrilsh.com/abuhasdha/?p=83', 4, 'nav_menu_item', '', 0),
(84, 1, '2025-11-03 01:49:28', '2025-11-01 12:25:08', '', 'Kontak', '', 'publish', 'closed', 'closed', '', 'kontak', '', '', '2025-11-03 01:49:28', '2025-11-03 01:49:28', '', 0, 'https://fazrilsh.com/abuhasdha/?p=84', 5, 'nav_menu_item', '', 0),
(85, 1, '2025-11-01 12:34:17', '2025-11-01 12:34:17', '', 'building', '', 'inherit', 'open', 'closed', '', 'building-2', '', '', '2025-11-01 12:34:17', '2025-11-01 12:34:17', '', 0, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/building-1.png', 0, 'attachment', 'image/png', 0),
(86, 1, '2025-11-01 12:34:19', '2025-11-01 12:34:19', '', 'Gemini_Generated_Image_pfglnzpfglnzpfgl 1', '', 'inherit', 'open', 'closed', '', 'gemini_generated_image_pfglnzpfglnzpfgl-1-2', '', '', '2025-11-01 12:34:19', '2025-11-01 12:34:19', '', 0, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/Gemini_Generated_Image_pfglnzpfglnzpfgl-1-1.png', 0, 'attachment', 'image/png', 0),
(87, 1, '2025-11-01 12:34:21', '2025-11-01 12:34:21', '', 'Gemini_Generated_Image_z00hs1z00hs1z00h 1', '', 'inherit', 'open', 'closed', '', 'gemini_generated_image_z00hs1z00hs1z00h-1-2', '', '', '2025-11-01 12:34:21', '2025-11-01 12:34:21', '', 0, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/Gemini_Generated_Image_z00hs1z00hs1z00h-1-1.png', 0, 'attachment', 'image/png', 0),
(88, 1, '2025-11-01 12:34:23', '2025-11-01 12:34:23', '', 'Mask group-1', '', 'inherit', 'open', 'closed', '', 'mask-group-1-2', '', '', '2025-11-01 12:34:23', '2025-11-01 12:34:23', '', 0, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/Mask-group-1-1.png', 0, 'attachment', 'image/png', 0),
(89, 1, '2025-11-01 12:34:24', '2025-11-01 12:34:24', '', 'Mask group', '', 'inherit', 'open', 'closed', '', 'mask-group-2', '', '', '2025-11-01 12:34:24', '2025-11-01 12:34:24', '', 0, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/Mask-group-2.png', 0, 'attachment', 'image/png', 0),
(90, 1, '2025-11-01 12:34:25', '2025-11-01 12:34:25', '', 'Mask group-5', '', 'inherit', 'open', 'closed', '', 'mask-group-5', '', '', '2025-11-01 12:34:25', '2025-11-01 12:34:25', '', 0, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/Mask-group-5.png', 0, 'attachment', 'image/png', 0),
(91, 1, '2025-11-01 12:34:27', '2025-11-01 12:34:27', '', 'Mask group-4', '', 'inherit', 'open', 'closed', '', 'mask-group-4', '', '', '2025-11-01 12:34:27', '2025-11-01 12:34:27', '', 0, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/Mask-group-4.png', 0, 'attachment', 'image/png', 0),
(92, 1, '2025-11-01 12:34:29', '2025-11-01 12:34:29', '', 'Mask group-3', '', 'inherit', 'open', 'closed', '', 'mask-group-3', '', '', '2025-11-01 12:34:29', '2025-11-01 12:34:29', '', 0, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/Mask-group-3.png', 0, 'attachment', 'image/png', 0),
(93, 1, '2025-11-01 12:35:56', '2025-11-01 12:35:56', '{\n    \"abuhasdha::custom_gallery_images\": {\n        \"value\": \"57,56,85,86,87,90,91,92\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-11-01 12:35:56\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '343c51db-4aae-4afc-9b54-c792cf59881c', '', '', '2025-11-01 12:35:56', '2025-11-01 12:35:56', '', 0, 'https://fazrilsh.com/abuhasdha/?p=93', 0, 'customize_changeset', '', 0),
(94, 1, '2025-11-01 13:52:59', '2025-11-01 13:52:59', '', 'logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2025-11-01 13:52:59', '2025-11-01 13:52:59', '', 0, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/logo.png', 0, 'attachment', 'image/png', 0);
INSERT INTO `abuhasdha_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(96, 1, '2025-11-01 13:58:10', '2025-11-01 13:58:10', '', 'Security Dashboard', '', 'publish', 'closed', 'closed', '', 'security-dashboard', '', '', '2025-11-01 13:58:10', '2025-11-01 13:58:10', '', 0, 'https://fazrilsh.com/abuhasdha/itsec-dashboard/security-dashboard/', 0, 'itsec-dashboard', '', 0),
(97, 1, '2025-11-01 13:58:10', '2025-11-01 13:58:10', '', '', '', 'publish', 'closed', 'closed', '', '97', '', '', '2025-11-01 13:58:10', '2025-11-01 13:58:10', '', 96, 'https://fazrilsh.com/abuhasdha/itsec-dash-card/97/', 0, 'itsec-dash-card', '', 0),
(98, 1, '2025-11-01 13:58:10', '2025-11-01 13:58:10', '', '', '', 'publish', 'closed', 'closed', '', '98', '', '', '2025-11-01 13:58:10', '2025-11-01 13:58:10', '', 96, 'https://fazrilsh.com/abuhasdha/itsec-dash-card/98/', 0, 'itsec-dash-card', '', 0),
(99, 1, '2025-11-01 13:58:10', '2025-11-01 13:58:10', '', '', '', 'publish', 'closed', 'closed', '', '99', '', '', '2025-11-01 13:58:10', '2025-11-01 13:58:10', '', 96, 'https://fazrilsh.com/abuhasdha/itsec-dash-card/99/', 0, 'itsec-dash-card', '', 0),
(100, 1, '2025-11-01 13:58:10', '2025-11-01 13:58:10', '', '', '', 'publish', 'closed', 'closed', '', '100', '', '', '2025-11-01 13:58:10', '2025-11-01 13:58:10', '', 96, 'https://fazrilsh.com/abuhasdha/itsec-dash-card/100/', 0, 'itsec-dash-card', '', 0),
(101, 1, '2025-11-01 13:58:10', '2025-11-01 13:58:10', '', '', '', 'publish', 'closed', 'closed', '', '101', '', '', '2025-11-01 13:58:10', '2025-11-01 13:58:10', '', 96, 'https://fazrilsh.com/abuhasdha/itsec-dash-card/101/', 0, 'itsec-dash-card', '', 0),
(102, 1, '2025-11-01 13:58:10', '2025-11-01 13:58:10', '', '', '', 'publish', 'closed', 'closed', '', '102', '', '', '2025-11-01 13:58:10', '2025-11-01 13:58:10', '', 96, 'https://fazrilsh.com/abuhasdha/itsec-dash-card/102/', 0, 'itsec-dash-card', '', 0),
(103, 1, '2025-11-01 13:58:10', '2025-11-01 13:58:10', '', '', '', 'publish', 'closed', 'closed', '', '103', '', '', '2025-11-01 13:58:10', '2025-11-01 13:58:10', '', 96, 'https://fazrilsh.com/abuhasdha/itsec-dash-card/103/', 0, 'itsec-dash-card', '', 0),
(104, 1, '2025-11-01 13:58:10', '2025-11-01 13:58:10', '', '', '', 'publish', 'closed', 'closed', '', '104', '', '', '2025-11-01 13:58:10', '2025-11-01 13:58:10', '', 96, 'https://fazrilsh.com/abuhasdha/itsec-dash-card/104/', 0, 'itsec-dash-card', '', 0),
(105, 1, '2025-11-01 13:59:40', '2025-11-01 13:59:40', 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/cropped-logo.png', 'cropped-logo.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-png', '', '', '2025-11-01 13:59:40', '2025-11-01 13:59:40', '', 94, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/cropped-logo.png', 0, 'attachment', 'image/png', 0),
(106, 1, '2025-11-01 13:59:44', '2025-11-01 13:59:44', '{\n    \"abuhasdha::custom_logo\": {\n        \"value\": 105,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-11-01 13:59:44\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '5b46c2c9-962a-46c8-a357-4bda5f5370bd', '', '', '2025-11-01 13:59:44', '2025-11-01 13:59:44', '', 0, 'https://fazrilsh.com/abuhasdha/2025/11/01/5b46c2c9-962a-46c8-a357-4bda5f5370bd/', 0, 'customize_changeset', '', 0),
(107, 1, '2025-11-01 14:00:59', '2025-11-01 14:00:59', 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/cropped-logo-1.png', 'cropped-logo-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-logo-1-png', '', '', '2025-11-01 14:00:59', '2025-11-01 14:00:59', '', 94, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/cropped-logo-1.png', 0, 'attachment', 'image/png', 0),
(108, 1, '2025-11-03 01:50:01', '2025-11-03 01:50:01', '', 'products', '', 'publish', 'closed', 'closed', '', 'products', '', '', '2025-11-03 01:50:08', '2025-11-03 01:50:08', '', 0, 'https://fazrilsh.com/abuhasdha/?page_id=108', 0, 'page', '', 0),
(109, 1, '2025-11-03 01:50:01', '2025-11-03 01:50:01', '', 'products', '', 'inherit', 'closed', 'closed', '', '108-revision-v1', '', '', '2025-11-03 01:50:01', '2025-11-03 01:50:01', '', 108, 'https://fazrilsh.com/abuhasdha/?p=109', 0, 'revision', '', 0),
(110, 1, '2025-11-03 01:51:27', '2025-11-03 01:51:27', '{\n    \"abuhasdha::footer_address\": {\n        \"value\": \"Jl. Kyai Caringin No.14B, Jakarta, 10150, DKI Jakarta, Indonesia\\nJl. Kyai Caringin No.14B, Jakarta, 10150, DKI Jakarta, Indonesia\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-11-03 01:51:27\"\n    },\n    \"abuhasdha::footer_address_url\": {\n        \"value\": \"https://share.google/Yr2nBExkCfqfErbXY\\nhttps://share.google/Yr2nBExkCfqfErbXY\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-11-03 01:51:27\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '60802aea-7365-4be9-91d9-bcfa25a0111e', '', '', '2025-11-03 01:51:27', '2025-11-03 01:51:27', '', 0, 'https://fazrilsh.com/abuhasdha/2025/11/03/60802aea-7365-4be9-91d9-bcfa25a0111e/', 0, 'customize_changeset', '', 0),
(111, 1, '2025-11-03 14:18:01', '2025-11-03 14:18:01', 'a:10:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"product\";}}}s:8:\"position\";s:15:\"acf_after_title\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;s:13:\"display_title\";s:0:\"\";s:8:\"modified\";i:1762228820;}', 'Tire Detail', 'tire-detail', 'publish', 'closed', 'closed', '', 'group_68fdc33733403', '', '', '2025-11-04 04:05:36', '2025-11-04 04:05:36', '', 0, 'https://fazrilsh.com/abuhasdha/?post_type=acf-field-group&#038;p=111', 0, 'acf-field-group', '', 0),
(112, 1, '2025-11-03 14:18:01', '2025-11-03 14:18:01', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Size', 'size', 'publish', 'closed', 'closed', '', 'field_68fdcc89ca9ea', '', '', '2025-11-04 04:05:36', '2025-11-04 04:05:36', '', 111, 'https://fazrilsh.com/abuhasdha/?post_type=acf-field&#038;p=112', 0, 'acf-field', '', 0),
(113, 1, '2025-11-03 14:18:01', '2025-11-03 14:18:01', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Pattern', 'pattern', 'publish', 'closed', 'closed', '', 'field_68fdcce3c3e0c', '', '', '2025-11-04 04:05:36', '2025-11-04 04:05:36', '', 111, 'https://fazrilsh.com/abuhasdha/?post_type=acf-field&#038;p=113', 1, 'acf-field', '', 0),
(114, 1, '2025-11-03 14:18:01', '2025-11-03 14:18:01', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Brand', 'brand', 'publish', 'closed', 'closed', '', 'field_68fdc5cbaaa00', '', '', '2025-11-04 04:05:36', '2025-11-04 04:05:36', '', 111, 'https://fazrilsh.com/abuhasdha/?post_type=acf-field&#038;p=114', 2, 'acf-field', '', 0),
(115, 1, '2025-11-03 14:18:01', '2025-11-03 14:18:01', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:2:{s:2:\"TT\";s:2:\"TT\";s:2:\"TL\";s:2:\"TL\";}s:13:\"default_value\";b:0;s:13:\"return_format\";s:5:\"value\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;s:17:\"allow_in_bindings\";i:0;s:2:\"ui\";i:0;s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";s:14:\"create_options\";i:0;s:12:\"save_options\";i:0;}', 'TT/TL', 'tttl', 'publish', 'closed', 'closed', '', 'field_690819ee36d1e', '', '', '2025-11-04 04:05:36', '2025-11-04 04:05:36', '', 111, 'https://fazrilsh.com/abuhasdha/?post_type=acf-field&#038;p=115', 3, 'acf-field', '', 0),
(116, 1, '2025-11-03 14:18:01', '2025-11-03 14:18:01', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Rim', 'rim', 'publish', 'closed', 'closed', '', 'field_69081a34c3ff9', '', '', '2025-11-04 04:05:36', '2025-11-04 04:05:36', '', 111, 'https://fazrilsh.com/abuhasdha/?post_type=acf-field&#038;p=116', 4, 'acf-field', '', 0),
(117, 1, '2025-11-03 14:18:01', '2025-11-03 14:18:01', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'TRA', 'tra', 'publish', 'closed', 'closed', '', 'field_69081a537b01a', '', '', '2025-11-04 04:05:36', '2025-11-04 04:05:36', '', 111, 'https://fazrilsh.com/abuhasdha/?post_type=acf-field&#038;p=117', 5, 'acf-field', '', 0),
(118, 1, '2025-11-03 14:18:01', '2025-11-03 14:18:01', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Load/Speed Index', 'loadspeed_index', 'publish', 'closed', 'closed', '', 'field_69081a5d7b01b', '', '', '2025-11-04 04:05:36', '2025-11-04 04:05:36', '', 111, 'https://fazrilsh.com/abuhasdha/?post_type=acf-field&#038;p=118', 6, 'acf-field', '', 0),
(119, 1, '2025-11-03 14:18:01', '2025-11-03 14:18:01', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";i:1;s:3:\"min\";i:1;s:3:\"max\";i:5;s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Star Rating', 'star_rating', 'publish', 'closed', 'closed', '', 'field_69081a7a7b01c', '', '', '2025-11-04 04:05:36', '2025-11-04 04:05:36', '', 111, 'https://fazrilsh.com/abuhasdha/?post_type=acf-field&#038;p=119', 7, 'acf-field', '', 0),
(120, 1, '2025-11-03 14:18:01', '2025-11-03 14:18:01', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:9:\"(mm/32ND)\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Tread Depth', 'tread_depth', 'publish', 'closed', 'closed', '', 'field_69081ae77b01d', '', '', '2025-11-04 04:05:36', '2025-11-04 04:05:36', '', 111, 'https://fazrilsh.com/abuhasdha/?post_type=acf-field&#038;p=120', 8, 'acf-field', '', 0),
(121, 1, '2025-11-03 14:18:01', '2025-11-03 14:18:01', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:9:\"(mm/inch)\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Outer Diameter', 'outer_diameter', 'publish', 'closed', 'closed', '', 'field_69081bda71d87', '', '', '2025-11-04 04:05:36', '2025-11-04 04:05:36', '', 111, 'https://fazrilsh.com/abuhasdha/?post_type=acf-field&#038;p=121', 9, 'acf-field', '', 0),
(122, 1, '2025-11-03 14:18:01', '2025-11-03 14:18:01', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:9:\"(mm/inch)\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Section Width', 'section_width', 'publish', 'closed', 'closed', '', 'field_69081bf856545', '', '', '2025-11-04 04:05:36', '2025-11-04 04:05:36', '', 111, 'https://fazrilsh.com/abuhasdha/?post_type=acf-field&#038;p=122', 10, 'acf-field', '', 0),
(123, 1, '2025-11-03 14:18:01', '2025-11-03 14:18:01', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:9:\"(Kpa/PSI)\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Inflation Pressure', 'inflation_pressure', 'publish', 'closed', 'closed', '', 'field_69081c1ea4795', '', '', '2025-11-04 04:05:36', '2025-11-04 04:05:36', '', 111, 'https://fazrilsh.com/abuhasdha/?post_type=acf-field&#038;p=123', 11, 'acf-field', '', 0),
(124, 1, '2025-11-03 14:18:01', '2025-11-03 14:18:01', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:8:\"(Kg/Lbs)\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Load Capacity', 'load_capacity', 'publish', 'closed', 'closed', '', 'field_69081c44a4796', '', '', '2025-11-04 04:05:36', '2025-11-04 04:05:36', '', 111, 'https://fazrilsh.com/abuhasdha/?post_type=acf-field&#038;p=124', 12, 'acf-field', '', 0),
(125, 1, '2025-11-03 14:18:01', '2025-11-03 14:18:01', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:8:\"(Km/mph)\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:4:\"step\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Speed', 'speed', 'publish', 'closed', 'closed', '', 'field_69081c5ea4797', '', '', '2025-11-04 04:05:36', '2025-11-04 04:05:36', '', 111, 'https://fazrilsh.com/abuhasdha/?post_type=acf-field&#038;p=125', 13, 'acf-field', '', 0),
(126, 1, '2025-11-03 14:18:01', '2025-11-03 14:18:01', 'a:12:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Product Images', 'images', 'publish', 'closed', 'closed', '', 'field_68fde2d934fdb', '', '', '2025-11-04 04:05:36', '2025-11-04 04:05:36', '', 111, 'https://fazrilsh.com/abuhasdha/?post_type=acf-field&#038;p=126', 14, 'acf-field', '', 0),
(127, 1, '2025-11-03 14:18:05', '2025-11-03 14:18:05', 'a:10:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:8:\"taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"advantage\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;s:13:\"display_title\";s:0:\"\";s:8:\"modified\";i:1762136019;}', 'Advantages Settings', 'advantages-settings', 'publish', 'closed', 'closed', '', 'group_69080f9b1f511', '', '', '2025-11-03 14:18:30', '2025-11-03 14:18:30', '', 0, 'https://fazrilsh.com/abuhasdha/?post_type=acf-field-group&#038;p=127', 0, 'acf-field-group', '', 0),
(128, 1, '2025-11-03 14:18:05', '2025-11-03 14:18:05', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Icon', 'icon', 'publish', 'closed', 'closed', '', 'field_69080f9bbf3a2', '', '', '2025-11-03 14:18:30', '2025-11-03 14:18:30', '', 127, 'https://fazrilsh.com/abuhasdha/?post_type=acf-field&#038;p=128', 0, 'acf-field', '', 0),
(129, 1, '2025-11-03 14:18:09', '2025-11-03 14:18:09', 'a:10:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:8:\"taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"function\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;s:13:\"display_title\";s:0:\"\";s:8:\"modified\";i:1762137740;}', 'Function Setting', 'function-setting', 'publish', 'closed', 'closed', '', 'group_690815ceba0c4', '', '', '2025-11-03 14:18:33', '2025-11-03 14:18:33', '', 0, 'https://fazrilsh.com/abuhasdha/?post_type=acf-field-group&#038;p=129', 0, 'acf-field-group', '', 0),
(130, 1, '2025-11-03 14:18:09', '2025-11-03 14:18:09', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Icon', 'icon', 'publish', 'closed', 'closed', '', 'field_690815ceb1624', '', '', '2025-11-03 14:18:33', '2025-11-03 14:18:33', '', 129, 'https://fazrilsh.com/abuhasdha/?post_type=acf-field&#038;p=130', 0, 'acf-field', '', 0),
(131, 1, '2025-11-03 14:18:09', '2025-11-03 14:18:09', 'a:17:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";s:17:\"allow_in_bindings\";i:0;s:12:\"preview_size\";s:6:\"medium\";}', 'Tire Sample', 'tire_sample', 'publish', 'closed', 'closed', '', 'field_690815e3b1625', '', '', '2025-11-03 14:18:33', '2025-11-03 14:18:33', '', 129, 'https://fazrilsh.com/abuhasdha/?post_type=acf-field&#038;p=131', 1, 'acf-field', '', 0),
(132, 1, '2025-11-03 14:18:12', '2025-11-03 14:18:12', 'a:30:{s:8:\"taxonomy\";s:9:\"advantage\";s:11:\"object_type\";a:1:{i:0;s:7:\"product\";}s:22:\"advanced_configuration\";i:1;s:13:\"import_source\";s:0:\"\";s:11:\"import_date\";s:0:\"\";s:6:\"labels\";a:25:{s:4:\"name\";s:10:\"Advantages\";s:13:\"singular_name\";s:9:\"Advantage\";s:9:\"menu_name\";s:10:\"Advantages\";s:9:\"all_items\";s:14:\"All Advantages\";s:9:\"edit_item\";s:14:\"Edit Advantage\";s:9:\"view_item\";s:14:\"View Advantage\";s:11:\"update_item\";s:16:\"Update Advantage\";s:12:\"add_new_item\";s:17:\"Add New Advantage\";s:13:\"new_item_name\";s:18:\"New Advantage Name\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:17:\"Search Advantages\";s:9:\"most_used\";s:0:\"\";s:9:\"not_found\";s:19:\"No advantages found\";s:8:\"no_terms\";s:13:\"No advantages\";s:22:\"name_field_description\";s:0:\"\";s:22:\"slug_field_description\";s:0:\"\";s:24:\"parent_field_description\";s:0:\"\";s:22:\"desc_field_description\";s:0:\"\";s:14:\"filter_by_item\";s:0:\"\";s:21:\"items_list_navigation\";s:26:\"Advantages list navigation\";s:10:\"items_list\";s:15:\"Advantages list\";s:13:\"back_to_items\";s:20:\"← Go to advantages\";s:9:\"item_link\";s:14:\"Advantage Link\";s:21:\"item_link_description\";s:21:\"A link to a advantage\";}s:11:\"description\";s:0:\"\";s:12:\"capabilities\";a:4:{s:12:\"manage_terms\";s:17:\"manage_categories\";s:10:\"edit_terms\";s:17:\"manage_categories\";s:12:\"delete_terms\";s:17:\"manage_categories\";s:12:\"assign_terms\";s:10:\"edit_posts\";}s:6:\"public\";i:1;s:18:\"publicly_queryable\";i:1;s:12:\"hierarchical\";i:1;s:7:\"show_ui\";i:1;s:12:\"show_in_menu\";i:1;s:17:\"show_in_nav_menus\";i:1;s:12:\"show_in_rest\";i:1;s:9:\"rest_base\";s:0:\"\";s:14:\"rest_namespace\";s:5:\"wp/v2\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Terms_Controller\";s:13:\"show_tagcloud\";i:1;s:18:\"show_in_quick_edit\";i:1;s:17:\"show_admin_column\";i:0;s:7:\"rewrite\";a:3:{s:17:\"permalink_rewrite\";s:12:\"taxonomy_key\";s:10:\"with_front\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";}s:9:\"query_var\";s:13:\"post_type_key\";s:14:\"query_var_name\";s:0:\"\";s:12:\"default_term\";a:1:{s:20:\"default_term_enabled\";s:1:\"0\";}s:4:\"sort\";i:0;s:8:\"meta_box\";s:7:\"default\";s:11:\"meta_box_cb\";s:0:\"\";s:20:\"meta_box_sanitize_cb\";s:0:\"\";s:8:\"modified\";i:1762179251;}', 'Advantages', 'advantages', 'publish', 'closed', 'closed', '', 'taxonomy_69080e6861f0c', '', '', '2025-11-03 14:18:37', '2025-11-03 14:18:37', '', 0, 'https://fazrilsh.com/abuhasdha/?post_type=acf-taxonomy&#038;p=132', 0, 'acf-taxonomy', '', 0),
(133, 1, '2025-11-03 14:18:16', '2025-11-03 14:18:16', 'a:30:{s:8:\"taxonomy\";s:8:\"function\";s:11:\"object_type\";a:1:{i:0;s:7:\"product\";}s:22:\"advanced_configuration\";i:1;s:13:\"import_source\";s:0:\"\";s:11:\"import_date\";s:0:\"\";s:6:\"labels\";a:25:{s:4:\"name\";s:9:\"Functions\";s:13:\"singular_name\";s:8:\"Function\";s:9:\"menu_name\";s:9:\"Functions\";s:9:\"all_items\";s:13:\"All Functions\";s:9:\"edit_item\";s:13:\"Edit function\";s:9:\"view_item\";s:13:\"View function\";s:11:\"update_item\";s:15:\"Update function\";s:12:\"add_new_item\";s:16:\"Add New function\";s:13:\"new_item_name\";s:17:\"New function Name\";s:11:\"parent_item\";s:15:\"Parent function\";s:17:\"parent_item_colon\";s:16:\"Parent function:\";s:12:\"search_items\";s:16:\"Search Functions\";s:9:\"most_used\";s:0:\"\";s:9:\"not_found\";s:18:\"No functions found\";s:8:\"no_terms\";s:12:\"No functions\";s:22:\"name_field_description\";s:0:\"\";s:22:\"slug_field_description\";s:0:\"\";s:24:\"parent_field_description\";s:0:\"\";s:22:\"desc_field_description\";s:0:\"\";s:14:\"filter_by_item\";s:18:\"Filter by function\";s:21:\"items_list_navigation\";s:25:\"Functions list navigation\";s:10:\"items_list\";s:14:\"Functions list\";s:13:\"back_to_items\";s:19:\"← Go to functions\";s:9:\"item_link\";s:13:\"function Link\";s:21:\"item_link_description\";s:20:\"A link to a function\";}s:11:\"description\";s:0:\"\";s:12:\"capabilities\";a:4:{s:12:\"manage_terms\";s:17:\"manage_categories\";s:10:\"edit_terms\";s:17:\"manage_categories\";s:12:\"delete_terms\";s:17:\"manage_categories\";s:12:\"assign_terms\";s:10:\"edit_posts\";}s:6:\"public\";i:1;s:18:\"publicly_queryable\";i:1;s:12:\"hierarchical\";i:1;s:7:\"show_ui\";i:1;s:12:\"show_in_menu\";i:1;s:17:\"show_in_nav_menus\";i:1;s:12:\"show_in_rest\";i:1;s:9:\"rest_base\";s:0:\"\";s:14:\"rest_namespace\";s:5:\"wp/v2\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Terms_Controller\";s:13:\"show_tagcloud\";i:1;s:18:\"show_in_quick_edit\";i:1;s:17:\"show_admin_column\";i:0;s:7:\"rewrite\";a:3:{s:17:\"permalink_rewrite\";s:12:\"taxonomy_key\";s:10:\"with_front\";s:1:\"1\";s:20:\"rewrite_hierarchical\";s:1:\"0\";}s:9:\"query_var\";s:13:\"post_type_key\";s:14:\"query_var_name\";s:0:\"\";s:12:\"default_term\";a:1:{s:20:\"default_term_enabled\";s:1:\"0\";}s:4:\"sort\";i:0;s:8:\"meta_box\";s:7:\"default\";s:11:\"meta_box_cb\";s:0:\"\";s:20:\"meta_box_sanitize_cb\";s:0:\"\";s:8:\"modified\";i:1762145262;}', 'Functions', 'functions', 'publish', 'closed', 'closed', '', 'taxonomy_6908156e7ffe4', '', '', '2025-11-03 14:18:40', '2025-11-03 14:18:40', '', 0, 'https://fazrilsh.com/abuhasdha/?post_type=acf-taxonomy&#038;p=133', 0, 'acf-taxonomy', '', 0),
(134, 1, '2025-11-03 14:18:21', '2025-11-03 14:18:21', 'a:30:{s:8:\"taxonomy\";s:9:\"tire_type\";s:11:\"object_type\";a:1:{i:0;s:7:\"product\";}s:22:\"advanced_configuration\";i:1;s:13:\"import_source\";s:0:\"\";s:11:\"import_date\";s:0:\"\";s:6:\"labels\";a:25:{s:4:\"name\";s:10:\"Tire Types\";s:13:\"singular_name\";s:9:\"Tire Type\";s:9:\"menu_name\";s:10:\"Tire Types\";s:9:\"all_items\";s:14:\"All Tire Types\";s:9:\"edit_item\";s:14:\"Edit Tire Type\";s:9:\"view_item\";s:14:\"View Tire Type\";s:11:\"update_item\";s:16:\"Update Tire Type\";s:12:\"add_new_item\";s:17:\"Add New Tire Type\";s:13:\"new_item_name\";s:18:\"New Tire Type Name\";s:11:\"parent_item\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:12:\"search_items\";s:17:\"Search Tire Types\";s:9:\"most_used\";s:0:\"\";s:9:\"not_found\";s:19:\"No tire types found\";s:8:\"no_terms\";s:13:\"No tire types\";s:22:\"name_field_description\";s:0:\"\";s:22:\"slug_field_description\";s:0:\"\";s:24:\"parent_field_description\";s:0:\"\";s:22:\"desc_field_description\";s:0:\"\";s:14:\"filter_by_item\";s:0:\"\";s:21:\"items_list_navigation\";s:26:\"Tire Types list navigation\";s:10:\"items_list\";s:15:\"Tire Types list\";s:13:\"back_to_items\";s:20:\"← Go to tire types\";s:9:\"item_link\";s:14:\"Tire Type Link\";s:21:\"item_link_description\";s:21:\"A link to a tire type\";}s:11:\"description\";s:0:\"\";s:12:\"capabilities\";a:4:{s:12:\"manage_terms\";s:17:\"manage_categories\";s:10:\"edit_terms\";s:17:\"manage_categories\";s:12:\"delete_terms\";s:17:\"manage_categories\";s:12:\"assign_terms\";s:10:\"edit_posts\";}s:6:\"public\";i:1;s:18:\"publicly_queryable\";i:1;s:12:\"hierarchical\";i:1;s:7:\"show_ui\";i:1;s:12:\"show_in_menu\";i:1;s:17:\"show_in_nav_menus\";i:1;s:12:\"show_in_rest\";i:1;s:9:\"rest_base\";s:0:\"\";s:14:\"rest_namespace\";s:5:\"wp/v2\";s:21:\"rest_controller_class\";s:24:\"WP_REST_Terms_Controller\";s:13:\"show_tagcloud\";i:1;s:18:\"show_in_quick_edit\";i:1;s:17:\"show_admin_column\";i:0;s:7:\"rewrite\";a:4:{s:17:\"permalink_rewrite\";s:16:\"custom_permalink\";s:4:\"slug\";s:8:\"products\";s:10:\"with_front\";s:1:\"0\";s:20:\"rewrite_hierarchical\";s:1:\"1\";}s:9:\"query_var\";s:13:\"post_type_key\";s:14:\"query_var_name\";s:0:\"\";s:12:\"default_term\";a:1:{s:20:\"default_term_enabled\";s:1:\"0\";}s:4:\"sort\";i:0;s:8:\"meta_box\";s:7:\"default\";s:11:\"meta_box_cb\";s:0:\"\";s:20:\"meta_box_sanitize_cb\";s:0:\"\";s:8:\"modified\";i:1762179163;}', 'Tire Types', 'tire-types', 'publish', 'closed', 'closed', '', 'taxonomy_69081324ec20f', '', '', '2025-11-03 14:18:43', '2025-11-03 14:18:43', '', 0, 'https://fazrilsh.com/abuhasdha/?post_type=acf-taxonomy&#038;p=134', 0, 'acf-taxonomy', '', 0),
(136, 1, '2025-11-03 14:21:47', '2025-11-03 14:21:47', '', 'Comfort', '', 'inherit', 'open', 'closed', '', 'comfort', '', '', '2025-11-03 14:21:47', '2025-11-03 14:21:47', '', 0, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/Comfort.png', 0, 'attachment', 'image/png', 0),
(137, 1, '2025-11-03 14:21:48', '2025-11-03 14:21:48', '', 'Cut Resistance Compund', '', 'inherit', 'open', 'closed', '', 'cut-resistance-compund', '', '', '2025-11-03 14:21:48', '2025-11-03 14:21:48', '', 0, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/Cut-Resistance-Compund.png', 0, 'attachment', 'image/png', 0),
(138, 1, '2025-11-03 14:21:49', '2025-11-03 14:21:49', '', 'Deep Tread', '', 'inherit', 'open', 'closed', '', 'deep-tread', '', '', '2025-11-03 14:21:49', '2025-11-03 14:21:49', '', 0, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/Deep-Tread.png', 0, 'attachment', 'image/png', 0),
(139, 1, '2025-11-03 14:21:50', '2025-11-03 14:21:50', '', 'Excellent Traction', '', 'inherit', 'open', 'closed', '', 'excellent-traction', '', '', '2025-11-03 14:21:50', '2025-11-03 14:21:50', '', 0, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/Excellent-Traction.png', 0, 'attachment', 'image/png', 0),
(140, 1, '2025-11-03 14:21:51', '2025-11-03 14:21:51', '', 'Heat Resistance Compund', '', 'inherit', 'open', 'closed', '', 'heat-resistance-compund', '', '', '2025-11-03 14:21:51', '2025-11-03 14:21:51', '', 0, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/Heat-Resistance-Compund.png', 0, 'attachment', 'image/png', 0),
(141, 1, '2025-11-03 14:21:51', '2025-11-03 14:21:51', '', 'High Flotation', '', 'inherit', 'open', 'closed', '', 'high-flotation', '', '', '2025-11-03 14:21:51', '2025-11-03 14:21:51', '', 0, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/High-Flotation.png', 0, 'attachment', 'image/png', 0),
(142, 1, '2025-11-03 14:21:52', '2025-11-03 14:21:52', '', 'Longer Tire Life', '', 'inherit', 'open', 'closed', '', 'longer-tire-life', '', '', '2025-11-03 14:21:52', '2025-11-03 14:21:52', '', 0, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/Longer-Tire-Life.png', 0, 'attachment', 'image/png', 0),
(143, 1, '2025-11-03 14:21:53', '2025-11-03 14:21:53', '', 'rate slicing', '', 'inherit', 'open', 'closed', '', 'rate-slicing', '', '', '2025-11-03 14:21:53', '2025-11-03 14:21:53', '', 0, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/rate-slicing.xlsx', 0, 'attachment', 'application/vnd.openxmlformats-officedocument.spreadsheetml.sheet', 0),
(144, 1, '2025-11-03 14:21:54', '2025-11-03 14:21:54', '', 'Special Compound', '', 'inherit', 'open', 'closed', '', 'special-compound', '', '', '2025-11-03 14:21:54', '2025-11-03 14:21:54', '', 0, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/Special-Compound.png', 0, 'attachment', 'image/png', 0),
(145, 1, '2025-11-03 14:21:54', '2025-11-03 14:21:54', '', 'Stability', '', 'inherit', 'open', 'closed', '', 'stability', '', '', '2025-11-03 14:21:54', '2025-11-03 14:21:54', '', 0, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/Stability.png', 0, 'attachment', 'image/png', 0),
(146, 1, '2025-11-03 14:21:55', '2025-11-03 14:21:55', '', 'Wear Resistance Compund', '', 'inherit', 'open', 'closed', '', 'wear-resistance-compund', '', '', '2025-11-03 14:21:55', '2025-11-03 14:21:55', '', 0, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/Wear-Resistance-Compund.png', 0, 'attachment', 'image/png', 0),
(147, 1, '2025-11-03 14:34:35', '2025-11-03 14:34:35', '<ul>\r\n 	<li>Unique tread pattern design equips tire with excellent traction.</li>\r\n 	<li>Deep tread depth for exceptional traction and extended wear life.</li>\r\n 	<li>Special compounds deliver exceptional wear and cut resistance.</li>\r\n 	<li>High-tensile specialized wire.</li>\r\n 	<li>Excellent stability and maneuverability.</li>\r\n 	<li>Superior flotation and ride comfort.</li>\r\n</ul>', 'Ban OTR Tianli 33.00R51 SLP L-5', '', 'publish', 'closed', 'closed', '', 'ban-otr-tianli-33-00r51-slp-l-5', '', '', '2025-11-04 04:07:00', '2025-11-04 04:07:00', '', 0, 'https://fazrilsh.com/abuhasdha/?post_type=product&#038;p=147', 0, 'product', '', 0),
(148, 1, '2025-11-03 14:54:36', '2025-11-03 14:54:36', '<ul>\r\n 	<li>Unique tread pattern design equips tire with excellent traction.</li>\r\n 	<li>Deep tread depth for exceptional traction and extended wear life.</li>\r\n 	<li>Special compounds deliver exceptional wear and cut resistance.</li>\r\n 	<li>High-tensile specialized wire.</li>\r\n 	<li>Excellent stability and maneuverability.</li>\r\n 	<li>Superior flotation and ride comfort.</li>\r\n</ul>', 'Ban OTR Hawkway 24.00R35 TUE402', '', 'publish', 'closed', 'closed', '', 'ban-otr-hawkway-24-00r35-tue402', '', '', '2025-11-04 04:06:46', '2025-11-04 04:06:46', '', 0, 'https://fazrilsh.com/abuhasdha/?post_type=product&#038;p=148', 0, 'product', '', 0),
(149, 1, '2025-11-04 03:42:51', '2025-11-04 03:42:51', '<ul>\r\n 	<li>Unique tread pattern design equips tire with excellent traction.</li>\r\n 	<li>Deep tread depth for exceptional traction and extended wear life.</li>\r\n 	<li>Special compounds deliver exceptional wear and cut resistance.</li>\r\n 	<li>High-tensile specialized wire.</li>\r\n 	<li>Excellent stability and maneuverability.</li>\r\n 	<li>Superior flotation and ride comfort.</li>\r\n</ul>', 'Ban OTR Tianli 33.00R51 TUE400', '', 'publish', 'closed', 'closed', '', 'ban-otr-tianli-33-00r51-tue400', '', '', '2025-11-04 04:06:31', '2025-11-04 04:06:31', '', 0, 'https://fazrilsh.com/abuhasdha/?post_type=product&#038;p=149', 0, 'product', '', 0),
(150, 1, '2025-11-04 03:47:16', '2025-11-04 03:47:16', '<ul>\r\n 	<li>Unique tread pattern design equips tire with excellent traction.</li>\r\n 	<li>Deep tread depth for exceptional traction and extended wear life.</li>\r\n 	<li>Special compounds deliver exceptional wear and cut resistance.</li>\r\n 	<li>High-tensile specialized wire.</li>\r\n 	<li>Excellent stability and maneuverability.</li>\r\n 	<li>Superior flotation and ride comfort.</li>\r\n</ul>', 'Ban TBR Tianli 12.00R24 TZ101PRO', '', 'publish', 'closed', 'closed', '', 'ban-tbr-tianli-12-00r24-tz101pro', '', '', '2025-11-04 04:06:16', '2025-11-04 04:06:16', '', 0, 'https://fazrilsh.com/abuhasdha/?post_type=product&#038;p=150', 0, 'product', '', 0),
(151, 1, '2025-11-04 03:54:58', '2025-11-04 03:54:58', '<ul>\r\n 	<li>Unique tread pattern design equips tire with excellent traction.</li>\r\n 	<li>Deep tread depth for exceptional traction and extended wear life.</li>\r\n 	<li>Special compounds deliver exceptional wear and cut resistance.</li>\r\n 	<li>High-tensile specialized wire.</li>\r\n 	<li>Excellent stability and maneuverability.</li>\r\n 	<li>Superior flotation and ride comfort.</li>\r\n</ul>', 'Ban TBR Tianli 12.00R20 TZ101PRO', '', 'publish', 'closed', 'closed', '', 'ban-tbr-tianli-12-00r20-tz101pro', '', '', '2025-11-04 04:05:59', '2025-11-04 04:05:59', '', 0, 'https://fazrilsh.com/abuhasdha/?post_type=product&#038;p=151', 0, 'product', '', 0),
(152, 1, '2025-11-13 05:49:18', '2025-11-13 05:49:18', '{\n    \"abuhasdha::about_description\": {\n        \"value\": \"PT. Abuhasdha didirikan pada tahun 1980 sebagai perusahaan yang berkecimpung di dalam penyediaan ban off the road, truck and bus, dan industrial. Dengan pengalaman sebagai penyedia produk ban, PT Abuhasdha menawarkan produk berkualitas dan menjadi mitra strategis customer kami.\\n\\nPT. Abuhasdha adalah distributor resmi wilayah Indonesia untuk ban merek Tianli yang diproduksi oleh Zhongce Rubber Co,Ltd. Kami berharap dan berkeyakinan untuk ban yang kami tawarkan dapat mendukung produktivitas dan keamanan bisnis Anda.\\nKami adalah distributor resmi Tianli Tyres (TUTRIC, China), produsen ban kelas dunia dengan lebih dari 300 ukuran, diekspor ke lebih dari 70 negara, dan didukung oleh riset serta standar internasional (ISO, REACH).\\n\\nKami percaya bahwa ban bukan sekadar komponen kendaraan, melainkan faktor penting dalam mendukung produktivitas, keamanan, dan keberlanjutan bisnis Anda.\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-11-13 05:49:18\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '045fcdf4-27ed-425b-9bd6-a3ddd84ec637', '', '', '2025-11-13 05:49:18', '2025-11-13 05:49:18', '', 0, 'https://fazrilsh.com/abuhasdha/2025/11/13/045fcdf4-27ed-425b-9bd6-a3ddd84ec637/', 0, 'customize_changeset', '', 0),
(153, 1, '2025-11-13 05:49:53', '2025-11-13 05:49:53', '{\n    \"abuhasdha::about_description\": {\n        \"value\": \"PT. Abuhasdha didirikan pada tahun 1980 sebagai perusahaan yang berkecimpung di dalam penyediaan ban off the road, truck and bus, dan industrial. Dengan pengalaman sebagai penyedia produk ban, PT Abuhasdha menawarkan produk berkualitas dan menjadi mitra strategis customer kami.\\n\\nPT. Abuhasdha adalah distributor resmi wilayah Indonesia untuk ban merek Tianli yang diproduksi oleh Zhongce Rubber Co,Ltd. Kami berharap dan berkeyakinan untuk ban yang kami tawarkan dapat mendukung produktivitas dan keamanan bisnis Anda.\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-11-13 05:49:53\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '49712f01-832b-49d3-abb9-cb20159e7c2f', '', '', '2025-11-13 05:49:53', '2025-11-13 05:49:53', '', 0, 'https://fazrilsh.com/abuhasdha/2025/11/13/49712f01-832b-49d3-abb9-cb20159e7c2f/', 0, 'customize_changeset', '', 0),
(154, 1, '2025-11-13 15:18:19', '2025-11-13 15:18:19', '{\n    \"abuhasdha::custom_gallery_images\": {\n        \"value\": \"159,155,160,156,158,157\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2025-11-13 15:18:19\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'bd3c0855-2481-42aa-9661-c0026a06f318', '', '', '2025-11-13 15:18:19', '2025-11-13 15:18:19', '', 0, 'https://fazrilsh.com/abuhasdha/?p=154', 0, 'customize_changeset', '', 0),
(155, 1, '2025-11-13 15:15:55', '2025-11-13 15:15:55', '', 'oplus_0', 'Kegiatan N/A', 'inherit', 'open', 'closed', '', 'oplus_0', '', '', '2025-11-13 15:16:09', '2025-11-13 15:16:09', '', 0, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/1d1c6f9c7bde12f2db6b6d84c554dd4b77458852.jpg', 0, 'attachment', 'image/jpeg', 0),
(156, 1, '2025-11-13 15:16:04', '2025-11-13 15:16:04', '', '372a85cf9143f9e8b9d02404cacbb348d14a6327', 'Kegiatan N/A', 'inherit', 'open', 'closed', '', '372a85cf9143f9e8b9d02404cacbb348d14a6327', '', '', '2025-11-13 15:16:13', '2025-11-13 15:16:13', '', 0, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/372a85cf9143f9e8b9d02404cacbb348d14a6327.jpg', 0, 'attachment', 'image/jpeg', 0),
(157, 1, '2025-11-13 15:16:13', '2025-11-13 15:16:13', '', 'oplus_0', 'Kegiatan N/A', 'inherit', 'open', 'closed', '', 'oplus_0-2', '', '', '2025-11-13 15:16:23', '2025-11-13 15:16:23', '', 0, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/03555bf5a937dcd23d2cad8462366b39da1c6fb0.jpg', 0, 'attachment', 'image/jpeg', 0),
(158, 1, '2025-11-13 15:16:19', '2025-11-13 15:16:19', '', 'oplus_0', 'Kegiatan N/A', 'inherit', 'open', 'closed', '', 'oplus_0-3', '', '', '2025-11-13 15:16:34', '2025-11-13 15:16:34', '', 0, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/c7ecd823f20f959804252f3164ae6e99386136ad.jpg', 0, 'attachment', 'image/jpeg', 0),
(159, 1, '2025-11-13 15:16:29', '2025-11-13 15:16:29', '', 'oplus_2', 'Kegiatan N/A', 'inherit', 'open', 'closed', '', 'oplus_2', '', '', '2025-11-13 15:16:44', '2025-11-13 15:16:44', '', 0, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/c8d63bc591a71e81b4eeb114773746fb07d725f9.jpg', 0, 'attachment', 'image/jpeg', 0),
(160, 1, '2025-11-13 15:16:40', '2025-11-13 15:16:40', '', 'oplus_0', 'Kegiatan N/A', 'inherit', 'open', 'closed', '', 'oplus_0-4', '', '', '2025-11-13 15:16:49', '2025-11-13 15:16:49', '', 0, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/de8b164276d6348fe5bbf0d60fb7b374af039592.jpg', 0, 'attachment', 'image/jpeg', 0),
(161, 1, '2025-11-13 15:48:20', '2025-11-13 15:48:20', '', '72e9aa35f4553c5fd6e96b2cc177a4d193660277', '', 'inherit', 'open', 'closed', '', '72e9aa35f4553c5fd6e96b2cc177a4d193660277', '', '', '2025-11-13 15:48:20', '2025-11-13 15:48:20', '', 0, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/72e9aa35f4553c5fd6e96b2cc177a4d193660277.png', 0, 'attachment', 'image/png', 0),
(162, 1, '2025-11-13 15:48:22', '2025-11-13 15:48:22', '', '7669a75e8850cf8cb980e954fa7bdaca8b7bb7eb', '', 'inherit', 'open', 'closed', '', '7669a75e8850cf8cb980e954fa7bdaca8b7bb7eb', '', '', '2025-11-13 15:48:22', '2025-11-13 15:48:22', '', 0, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/7669a75e8850cf8cb980e954fa7bdaca8b7bb7eb.png', 0, 'attachment', 'image/png', 0),
(163, 1, '2025-11-13 15:48:24', '2025-11-13 15:48:24', '', 'f03bd6e70202d1a150e0d0ec199f27bd4359f93b', '', 'inherit', 'open', 'closed', '', 'f03bd6e70202d1a150e0d0ec199f27bd4359f93b', '', '', '2025-11-13 15:48:24', '2025-11-13 15:48:24', '', 0, 'https://fazrilsh.com/abuhasdha/wp-content/uploads/2025/11/f03bd6e70202d1a150e0d0ec199f27bd4359f93b.png', 0, 'attachment', 'image/png', 0);

-- --------------------------------------------------------

--
-- Table structure for table `abuhasdha_rank_math_404_logs`
--

CREATE TABLE `abuhasdha_rank_math_404_logs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uri` varchar(255) NOT NULL,
  `accessed` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `times_accessed` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `referer` varchar(255) NOT NULL DEFAULT '',
  `user_agent` varchar(255) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abuhasdha_rank_math_internal_links`
--

CREATE TABLE `abuhasdha_rank_math_internal_links` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `url` varchar(255) NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `target_post_id` bigint(20) UNSIGNED NOT NULL,
  `type` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abuhasdha_rank_math_internal_meta`
--

CREATE TABLE `abuhasdha_rank_math_internal_meta` (
  `object_id` bigint(20) UNSIGNED NOT NULL,
  `internal_link_count` int(10) UNSIGNED DEFAULT 0,
  `external_link_count` int(10) UNSIGNED DEFAULT 0,
  `incoming_link_count` int(10) UNSIGNED DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `abuhasdha_rank_math_internal_meta`
--

INSERT INTO `abuhasdha_rank_math_internal_meta` (`object_id`, `internal_link_count`, `external_link_count`, `incoming_link_count`) VALUES
(1, 0, 0, 0),
(63, 0, 0, 0),
(76, 0, 0, 0),
(77, 0, 0, 0),
(78, 0, 0, 0),
(79, 0, 0, 0),
(108, 0, 0, 0),
(147, 0, 0, 0),
(148, 0, 0, 0),
(149, 0, 0, 0),
(150, 0, 0, 0),
(151, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `abuhasdha_rank_math_redirections`
--

CREATE TABLE `abuhasdha_rank_math_redirections` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `sources` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `url_to` text NOT NULL,
  `header_code` smallint(4) UNSIGNED NOT NULL,
  `hits` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `status` varchar(25) NOT NULL DEFAULT 'active',
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_accessed` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abuhasdha_rank_math_redirections_cache`
--

CREATE TABLE `abuhasdha_rank_math_redirections_cache` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_url` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `redirection_id` bigint(20) UNSIGNED NOT NULL,
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `object_type` varchar(10) NOT NULL DEFAULT 'post',
  `is_redirected` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Table structure for table `abuhasdha_termmeta`
--

CREATE TABLE `abuhasdha_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `abuhasdha_termmeta`
--

INSERT INTO `abuhasdha_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 5, 'icon', '136'),
(2, 5, '_icon', 'field_69080f9bbf3a2'),
(3, 6, 'icon', '137'),
(4, 6, '_icon', 'field_69080f9bbf3a2'),
(5, 7, 'icon', '138'),
(6, 7, '_icon', 'field_69080f9bbf3a2'),
(7, 8, 'icon', '139'),
(8, 8, '_icon', 'field_69080f9bbf3a2'),
(9, 9, 'icon', '140'),
(10, 9, '_icon', 'field_69080f9bbf3a2'),
(11, 10, 'icon', '141'),
(12, 10, '_icon', 'field_69080f9bbf3a2'),
(13, 11, 'icon', '142'),
(14, 11, '_icon', 'field_69080f9bbf3a2'),
(15, 12, 'icon', '144'),
(16, 12, '_icon', 'field_69080f9bbf3a2'),
(17, 13, 'icon', '145'),
(18, 13, '_icon', 'field_69080f9bbf3a2'),
(19, 14, 'icon', '146'),
(20, 14, '_icon', 'field_69080f9bbf3a2'),
(21, 15, 'icon', '64'),
(22, 15, '_icon', 'field_690815ceb1624'),
(23, 15, 'tire_sample', '73'),
(24, 15, '_tire_sample', 'field_690815e3b1625'),
(25, 16, 'icon', '66'),
(26, 16, '_icon', 'field_690815ceb1624'),
(27, 16, 'tire_sample', '162'),
(28, 16, '_tire_sample', 'field_690815e3b1625'),
(29, 17, 'icon', '68'),
(30, 17, '_icon', 'field_690815ceb1624'),
(31, 17, 'tire_sample', '75'),
(32, 17, '_tire_sample', 'field_690815e3b1625'),
(33, 18, 'icon', '70'),
(34, 18, '_icon', 'field_690815ceb1624'),
(35, 18, 'tire_sample', '74'),
(36, 18, '_tire_sample', 'field_690815e3b1625'),
(37, 19, 'icon', '69'),
(38, 19, '_icon', 'field_690815ceb1624'),
(39, 19, 'tire_sample', '163'),
(40, 19, '_tire_sample', 'field_690815e3b1625'),
(41, 19, 'tire_type', '4'),
(42, 19, '_tire_type', 'field_6915ae212dc20'),
(43, 18, 'tire_type', '3'),
(44, 18, '_tire_type', 'field_6915ae212dc20'),
(45, 17, 'tire_type', '3'),
(46, 17, '_tire_type', 'field_6915ae212dc20'),
(47, 16, 'tire_type', '3'),
(48, 16, '_tire_type', 'field_6915ae212dc20'),
(49, 15, 'tire_type', '3'),
(50, 15, '_tire_type', 'field_6915ae212dc20');

-- --------------------------------------------------------

--
-- Table structure for table `abuhasdha_terms`
--

CREATE TABLE `abuhasdha_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `slug` varchar(200) NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `abuhasdha_terms`
--

INSERT INTO `abuhasdha_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Menu 1', 'menu-1', 0),
(3, 'Off-The-Road', 'otr', 0),
(4, 'Truck and Bus Radial', 'tbr', 0),
(5, 'Comfort', 'comfort', 0),
(6, 'Cut Resistance Compund', 'cut-resistance-compund', 0),
(7, 'Deep Tread', 'deep-tread', 0),
(8, 'Excellent Traction', 'excellent-traction', 0),
(9, 'Heat Resistance Compund', 'heat-resistance-compund', 0),
(10, 'High Flotation', 'high-flotation', 0),
(11, 'Longer Tire Life', 'longer-tire-life', 0),
(12, 'Special Compound', 'special-compound', 0),
(13, 'Stability', 'stability', 0),
(14, 'Wear Resistance Compund', 'wear-resistance-compund', 0),
(15, 'Agribusiness Tires', 'agribusiness-tires', 0),
(16, 'Foresty Tires', 'foresty-tires', 0),
(17, 'Industrial &amp; Port Tires', 'industrial-port-tires', 0),
(18, 'Mining &amp; Construction Tires', 'mining-construction-tires', 0),
(19, 'Truck &amp; Bus Tires', 'truck-bus-tires', 0);

-- --------------------------------------------------------

--
-- Table structure for table `abuhasdha_term_relationships`
--

CREATE TABLE `abuhasdha_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `abuhasdha_term_relationships`
--

INSERT INTO `abuhasdha_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(19, 2, 0),
(81, 2, 0),
(82, 2, 0),
(83, 2, 0),
(84, 2, 0),
(147, 3, 0),
(147, 5, 0),
(147, 6, 0),
(147, 7, 0),
(147, 8, 0),
(147, 9, 0),
(147, 10, 0),
(147, 11, 0),
(147, 12, 0),
(147, 13, 0),
(147, 14, 0),
(147, 15, 0),
(147, 16, 0),
(147, 18, 0),
(148, 3, 0),
(148, 5, 0),
(148, 6, 0),
(148, 7, 0),
(148, 8, 0),
(148, 9, 0),
(148, 10, 0),
(148, 11, 0),
(148, 12, 0),
(148, 13, 0),
(148, 14, 0),
(148, 17, 0),
(148, 18, 0),
(148, 19, 0),
(149, 3, 0),
(149, 5, 0),
(149, 6, 0),
(149, 7, 0),
(149, 8, 0),
(149, 9, 0),
(149, 10, 0),
(149, 11, 0),
(149, 15, 0),
(149, 16, 0),
(149, 17, 0),
(150, 4, 0),
(150, 5, 0),
(150, 6, 0),
(150, 7, 0),
(150, 8, 0),
(150, 9, 0),
(150, 10, 0),
(150, 11, 0),
(150, 17, 0),
(150, 18, 0),
(151, 4, 0),
(151, 5, 0),
(151, 6, 0),
(151, 7, 0),
(151, 8, 0),
(151, 9, 0),
(151, 10, 0),
(151, 16, 0),
(151, 17, 0),
(151, 18, 0),
(151, 19, 0);

-- --------------------------------------------------------

--
-- Table structure for table `abuhasdha_term_taxonomy`
--

CREATE TABLE `abuhasdha_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) NOT NULL DEFAULT '',
  `description` longtext NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `abuhasdha_term_taxonomy`
--

INSERT INTO `abuhasdha_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'tire_type', '', 0, 3),
(4, 4, 'tire_type', '', 0, 2),
(5, 5, 'advantage', '', 0, 5),
(6, 6, 'advantage', '', 0, 5),
(7, 7, 'advantage', '', 0, 5),
(8, 8, 'advantage', '', 0, 5),
(9, 9, 'advantage', '', 0, 5),
(10, 10, 'advantage', '', 0, 5),
(11, 11, 'advantage', '', 0, 4),
(12, 12, 'advantage', '', 0, 2),
(13, 13, 'advantage', '', 0, 2),
(14, 14, 'advantage', '', 0, 2),
(15, 15, 'function', 'Ban traksi tinggi untuk perkebunan dan pertanian, efisien di medan berlumpur.', 0, 2),
(16, 16, 'function', 'Ban kokoh untuk sektor kehutanan, stabil di medan berat dan tidak rata.', 0, 3),
(17, 17, 'function', 'Ban stabil untuk crane dan kendaraan pelabuhan, tahan beban besar.', 0, 4),
(18, 18, 'function', 'Ban kuat untuk alat berat tambang dan konstruksi, tahan beban berat dan medan ekstrem.', 0, 4),
(19, 19, 'function', 'Ban efisien dan tahan lama untuk transportasi dan logistik.', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `abuhasdha_usermeta`
--

CREATE TABLE `abuhasdha_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) DEFAULT NULL,
  `meta_value` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `abuhasdha_usermeta`
--

INSERT INTO `abuhasdha_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'abuhasdha_admin'),
(2, 1, 'first_name', ''),
(3, 1, 'last_name', ''),
(4, 1, 'description', ''),
(5, 1, 'rich_editing', 'true'),
(6, 1, 'syntax_highlighting', 'true'),
(7, 1, 'comment_shortcuts', 'false'),
(8, 1, 'admin_color', 'fresh'),
(9, 1, 'use_ssl', '0'),
(10, 1, 'show_admin_bar_front', 'true'),
(11, 1, 'locale', ''),
(12, 1, 'abuhasdha_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'abuhasdha_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '1'),
(17, 1, 'abuhasdha_dashboard_quick_press_last_post_id', '5'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"146.75.160.0\";}'),
(19, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(20, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:21:\"add-post-type-layanan\";i:1;s:20:\"add-post-type-produk\";i:2;s:12:\"add-post_tag\";}'),
(21, 1, 'itsec_user_activity_last_seen', '1763351765'),
(22, 1, 'seoboost_user_options_1', '{\"language\":\"en\",\"country\":\"US\"}'),
(23, 1, '_aioseo_settings', 'a:8:{s:14:\"showUpgradeBar\";b:1;s:15:\"showSetupWizard\";b:1;s:12:\"toggledCards\";a:95:{s:17:\"dashboardOverview\";b:1;s:17:\"dashboardSeoSetup\";b:1;s:21:\"dashboardSeoSiteScore\";b:1;s:22:\"dashboardNotifications\";b:1;s:16:\"dashboardSupport\";b:1;s:7:\"license\";b:1;s:14:\"webmasterTools\";b:1;s:17:\"enableBreadcrumbs\";b:1;s:18:\"breadcrumbSettings\";b:1;s:19:\"breadcrumbTemplates\";b:1;s:8:\"advanced\";b:1;s:13:\"accessControl\";b:1;s:10:\"rssContent\";b:1;s:14:\"generalSitemap\";b:1;s:22:\"generalSitemapSettings\";b:1;s:12:\"imageSitemap\";b:1;s:12:\"videoSitemap\";b:1;s:11:\"newsSitemap\";b:1;s:10:\"rssSitemap\";b:1;s:18:\"rssSitemapSettings\";b:1;s:18:\"rssAdditionalPages\";b:1;s:19:\"rssAdvancedSettings\";b:1;s:15:\"additionalPages\";b:1;s:16:\"advancedSettings\";b:1;s:20:\"videoSitemapSettings\";b:1;s:20:\"videoAdditionalPages\";b:1;s:21:\"videoAdvancedSettings\";b:1;s:18:\"videoEmbedSettings\";b:1;s:19:\"newsSitemapSettings\";b:1;s:19:\"newsAdditionalPages\";b:1;s:20:\"newsAdvancedSettings\";b:1;s:17:\"newsEmbedSettings\";b:1;s:14:\"socialProfiles\";b:1;s:8:\"facebook\";b:1;s:24:\"facebookHomePageSettings\";b:1;s:24:\"facebookAdvancedSettings\";b:1;s:7:\"twitter\";b:1;s:23:\"twitterHomePageSettings\";b:1;s:9:\"pinterest\";b:1;s:20:\"searchTitleSeparator\";b:1;s:14:\"searchHomePage\";b:1;s:12:\"searchSchema\";b:1;s:22:\"searchMediaAttachments\";b:1;s:14:\"searchAdvanced\";b:1;s:26:\"searchAdvancedCrawlCleanup\";b:1;s:13:\"searchCleanup\";b:1;s:14:\"authorArchives\";b:1;s:12:\"dateArchives\";b:1;s:14:\"searchArchives\";b:1;s:8:\"imageSeo\";b:1;s:20:\"completeSeoChecklist\";b:1;s:17:\"localBusinessInfo\";b:1;s:25:\"localBusinessOpeningHours\";b:1;s:17:\"locationsSettings\";b:1;s:25:\"advancedLocationsSettings\";b:1;s:23:\"localBusinessMapsApiKey\";b:1;s:25:\"localBusinessMapsSettings\";b:1;s:12:\"robotsEditor\";b:1;s:13:\"databaseTools\";b:1;s:14:\"htaccessEditor\";b:1;s:17:\"databaseToolsLogs\";b:1;s:16:\"systemStatusInfo\";b:1;s:17:\"addNewRedirection\";b:1;s:16:\"redirectSettings\";b:1;s:5:\"debug\";b:1;s:25:\"fullSiteRedirectsRelocate\";b:1;s:24:\"fullSiteRedirectsAliases\";b:1;s:26:\"fullSiteRedirectsCanonical\";b:1;s:28:\"fullSiteRedirectsHttpHeaders\";b:1;s:11:\"htmlSitemap\";b:1;s:19:\"htmlSitemapSettings\";b:1;s:27:\"htmlSitemapAdvancedSettings\";b:1;s:21:\"linkAssistantSettings\";b:1;s:17:\"domainActivations\";b:1;s:11:\"404Settings\";b:1;s:12:\"userProfiles\";b:1;s:12:\"queryArgLogs\";b:1;s:17:\"aiContentSettings\";b:1;s:24:\"writingAssistantSettings\";b:1;s:19:\"writingAssistantCta\";b:1;s:11:\"llmsSitemap\";b:1;s:27:\"llmsSitemapAdvancedSettings\";b:1;s:6:\"postSA\";b:1;s:6:\"pageSA\";b:1;s:12:\"attachmentSA\";b:1;s:9:\"serviceSA\";b:1;s:9:\"productSA\";b:1;s:10:\"categorySA\";b:1;s:10:\"post_tagSA\";b:1;s:22:\"serviceArchiveArchives\";b:1;s:22:\"productArchiveArchives\";b:1;s:9:\"layananSA\";b:1;s:8:\"produkSA\";b:1;s:22:\"layananArchiveArchives\";b:1;s:21:\"produkArchiveArchives\";b:1;}s:12:\"toggledRadio\";a:3:{s:29:\"breadcrumbsShowMoreSeparators\";b:0;s:24:\"searchShowMoreSeparators\";b:0;s:16:\"overviewPostType\";s:4:\"post\";}s:15:\"dismissedAlerts\";a:3:{s:31:\"searchStatisticsContentRankings\";b:0;s:25:\"searchConsoleNotConnected\";b:0;s:26:\"searchConsoleSitemapErrors\";b:0;}s:12:\"internalTabs\";a:16:{s:14:\"authorArchives\";s:17:\"title-description\";s:12:\"dateArchives\";s:17:\"title-description\";s:14:\"searchArchives\";s:17:\"title-description\";s:6:\"postSA\";s:17:\"title-description\";s:6:\"pageSA\";s:17:\"title-description\";s:12:\"attachmentSA\";s:17:\"title-description\";s:9:\"serviceSA\";s:17:\"title-description\";s:9:\"productSA\";s:17:\"title-description\";s:10:\"categorySA\";s:17:\"title-description\";s:10:\"post_tagSA\";s:17:\"title-description\";s:22:\"serviceArchiveArchives\";s:17:\"title-description\";s:22:\"productArchiveArchives\";s:17:\"title-description\";s:9:\"layananSA\";s:17:\"title-description\";s:8:\"produkSA\";s:17:\"title-description\";s:22:\"layananArchiveArchives\";s:17:\"title-description\";s:21:\"produkArchiveArchives\";s:17:\"title-description\";}s:15:\"tablePagination\";a:18:{s:14:\"networkDomains\";i:20;s:9:\"redirects\";i:20;s:12:\"redirectLogs\";i:20;s:15:\"redirect404Logs\";i:20;s:22:\"sitemapAdditionalPages\";i:20;s:24:\"linkAssistantLinksReport\";i:20;s:24:\"linkAssistantPostsReport\";i:20;s:26:\"linkAssistantDomainsReport\";i:20;s:29:\"searchStatisticsSeoStatistics\";i:20;s:31:\"searchStatisticsKeywordRankings\";i:20;s:31:\"searchStatisticsContentRankings\";i:20;s:34:\"searchStatisticsPostDetailKeywords\";i:20;s:27:\"searchStatisticsKrtKeywords\";i:20;s:25:\"searchStatisticsKrtGroups\";i:20;s:38:\"searchStatisticsKrtGroupsTableKeywords\";i:10;s:27:\"searchStatisticsIndexStatus\";i:20;s:9:\"queryArgs\";i:20;s:11:\"seoAnalysis\";i:20;}s:14:\"semrushCountry\";s:2:\"US\";}'),
(24, 1, 'abuhasdha_persisted_preferences', 'a:3:{s:4:\"core\";a:1:{s:26:\"isComplementaryAreaVisible\";b:1;}s:14:\"core/edit-post\";a:1:{s:12:\"welcomeGuide\";b:0;}s:9:\"_modified\";s:24:\"2025-10-24T08:10:38.317Z\";}'),
(25, 1, 'itsec-password-strength', '4'),
(26, 1, '_itsec_password_requirements', 'a:1:{s:16:\"evaluation_times\";a:2:{s:8:\"strength\";i:1761294422;s:4:\"hibp\";i:1762134536;}}'),
(28, 1, '_itsec_has_logged_in', '1761294422'),
(29, 1, 'nav_menu_recently_edited', '2'),
(31, 1, 'abuhasdha_user-settings', 'libraryContent=browse'),
(32, 1, 'abuhasdha_user-settings-time', '1761451000'),
(33, 1, 'session_tokens', 'a:2:{s:64:\"ae77803a64d6586740a74734b756c681654c39d36e59366d3e3d59be768d056a\";a:4:{s:10:\"expiration\";i:1763524565;s:2:\"ip\";s:13:\"104.28.163.38\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.6 Safari/605.1.15\";s:5:\"login\";i:1763351765;}s:64:\"95d3303eb7eee18a96c989fb64631f6b2a28f7476930f798de77b2576136afe8\";a:4:{s:10:\"expiration\";i:1763524634;s:2:\"ip\";s:13:\"146.75.160.28\";s:2:\"ua\";s:137:\"Mozilla/5.0 (iPhone; CPU iPhone OS 18_7 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/26.0.1 Mobile/15E148 Safari/604.1\";s:5:\"login\";i:1763351834;}}'),
(34, 1, 'manageedit-acf-post-typecolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(35, 1, 'acf_user_settings', 'a:2:{s:19:\"post-type-first-run\";b:1;s:20:\"taxonomies-first-run\";b:1;}'),
(36, 1, 'manageedit-postcolumnshidden', 'a:3:{i:0;s:0:\"\";i:1;s:15:\"rank_math_title\";i:2;s:21:\"rank_math_description\";}'),
(37, 1, 'manageedit-postcolumnshidden_default', '1'),
(38, 1, 'manageedit-pagecolumnshidden', 'a:3:{i:0;s:0:\"\";i:1;s:15:\"rank_math_title\";i:2;s:21:\"rank_math_description\";}'),
(39, 1, 'manageedit-pagecolumnshidden_default', '1'),
(40, 1, 'manageedit-servicecolumnshidden', 'a:3:{i:0;s:0:\"\";i:1;s:15:\"rank_math_title\";i:2;s:21:\"rank_math_description\";}'),
(41, 1, 'manageedit-servicecolumnshidden_default', '1'),
(42, 1, 'manageedit-productcolumnshidden', 'a:3:{i:0;s:0:\"\";i:1;s:15:\"rank_math_title\";i:2;s:21:\"rank_math_description\";}'),
(43, 1, 'manageedit-productcolumnshidden_default', '1'),
(44, 1, 'additional_profile_urls', ''),
(45, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(46, 1, 'metaboxhidden_dashboard', 'a:1:{i:0;s:21:\"dashboard_site_health\";}'),
(47, 1, 'meta-box-order_product', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:124:\"submitdiv,postimagediv,tire_typediv,functiondiv,advantagediv,rank_math_metabox_link_suggestions,rank_math_metabox_content_ai\";s:6:\"normal\";s:49:\"acf-group_68fdc33733403,slugdiv,rank_math_metabox\";s:8:\"advanced\";s:0:\"\";}'),
(48, 1, 'last_update', '1763047099'),
(49, 1, '_itsec_primary_dashboard', '96'),
(50, 1, '_itsec_password_evaluation_hibp', '0'),
(54, 1, '_itsec_2fa_last_prompt', '1763351764'),
(55, 1, '_itsec_2fa_skips', '2'),
(56, 1, 'meta-box-order_page', 'a:2:{i:0;b:0;s:4:\"side\";s:38:\"submitdiv,rank_math_metabox_content_ai\";}'),
(57, 1, 'manageedit-acf-taxonomycolumnshidden', 'a:1:{i:0;s:7:\"acf-key\";}'),
(58, 1, 'screen_layout_product', '2'),
(62, 1, '_itsec_login_interstitial_state', 'a:11:{s:4:\"uuid\";s:36:\"af2ff9a2-3bd7-4972-b60e-b3b1e41e5d60\";s:7:\"current\";s:12:\"2fa-on-board\";s:9:\"completed\";a:0:{}s:10:\"created_at\";i:1763351754;s:10:\"show_after\";a:0:{}s:11:\"redirect_to\";s:40:\"https://fazrilsh.com/abuhasdha/wp-admin/\";s:11:\"remember_me\";b:0;s:13:\"interim_login\";b:0;s:5:\"state\";a:0:{}s:4:\"meta\";a:0:{}s:3:\"log\";a:3:{s:6:\"module\";s:18:\"login-interstitial\";s:4:\"code\";s:6:\"create\";s:2:\"id\";i:36;}}'),
(63, 1, '_two_factor_backup_codes', 'a:10:{i:0;s:63:\"$wp$2y$10$5It2krhNqVa7G2dMR5BU8OlAHMQZquGzW2bt2Z5rTIMOyW5WkuZAu\";i:1;s:63:\"$wp$2y$10$mfPlhyHpLZLGMd2odSq4N.k8gTXlmuj1.lPKFtvmSk5E2suzuy.k.\";i:2;s:63:\"$wp$2y$10$eioep2ti6yAQDYdDEq6g2OLNQcCCHTVisyw25uh65ltDq/uOS4TuW\";i:3;s:63:\"$wp$2y$10$kQ0o1DGPwujVZkHdiBj1xum28Yx/etAXcToBlMS2/4aQ4dx3HMlua\";i:4;s:63:\"$wp$2y$10$ZKKRd2gV.ehedRmK1u5WjO3bZf1RiGYTobN1l2FWYN5FGBVDkPyGK\";i:5;s:63:\"$wp$2y$10$mTF5pKH0BpC.qFDW2LwY9.yzbUpFr0mtZFyeo/p/2kZi9FIue6TXO\";i:6;s:63:\"$wp$2y$10$ogOatG82oy9q3JX9xNaq3eCfjyQFljf4ldi/7fawpeXe.cIQ077Ym\";i:7;s:63:\"$wp$2y$10$DBxBrwZqudY/if4dRrcvOOWmEU4s3wo0UPP95FniQOzAJNLQ7uQwu\";i:8;s:63:\"$wp$2y$10$kPsl.wR7KzpxM7oTN0YVOOFskb2JcqjmiWPxD8ck76boLhynng2tS\";i:9;s:63:\"$wp$2y$10$EEQiyE.JUGetQd0RZB28euxZKdFOePFA0/251fa9kmNoIRBz/EHDO\";}');

-- --------------------------------------------------------

--
-- Table structure for table `abuhasdha_users`
--

CREATE TABLE `abuhasdha_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) NOT NULL DEFAULT '',
  `user_pass` varchar(255) NOT NULL DEFAULT '',
  `user_nicename` varchar(50) NOT NULL DEFAULT '',
  `user_email` varchar(100) NOT NULL DEFAULT '',
  `user_url` varchar(100) NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Dumping data for table `abuhasdha_users`
--

INSERT INTO `abuhasdha_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'abuhasdha_admin', '$wp$2y$10$Pn96lN1EPSmAXRhwSO83wen808cCxX1/JbC7n6iGgzEhSHNq5L5g.', 'abuhasdha_admin', 'admin@fazrilsh.com', 'https://fazrilsh.com/abuhasdha', '2025-10-24 07:54:13', '', 0, 'abuhasdha_admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abuhasdha_actionscheduler_actions`
--
ALTER TABLE `abuhasdha_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook_status_scheduled_date_gmt` (`hook`(163),`status`,`scheduled_date_gmt`),
  ADD KEY `status_scheduled_date_gmt` (`status`,`scheduled_date_gmt`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id_status_priority_scheduled_date_gmt` (`claim_id`,`status`,`priority`,`scheduled_date_gmt`),
  ADD KEY `status_last_attempt_gmt` (`status`,`last_attempt_gmt`),
  ADD KEY `status_claim_id` (`status`,`claim_id`);

--
-- Indexes for table `abuhasdha_actionscheduler_claims`
--
ALTER TABLE `abuhasdha_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indexes for table `abuhasdha_actionscheduler_groups`
--
ALTER TABLE `abuhasdha_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indexes for table `abuhasdha_actionscheduler_logs`
--
ALTER TABLE `abuhasdha_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indexes for table `abuhasdha_aioseo_cache`
--
ALTER TABLE `abuhasdha_aioseo_cache`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ndx_aioseo_cache_key` (`key`),
  ADD KEY `ndx_aioseo_cache_expiration` (`expiration`);

--
-- Indexes for table `abuhasdha_aioseo_crawl_cleanup_blocked_args`
--
ALTER TABLE `abuhasdha_aioseo_crawl_cleanup_blocked_args`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ndx_aioseo_crawl_cleanup_blocked_args_key_value_hash` (`key_value_hash`),
  ADD UNIQUE KEY `ndx_aioseo_crawl_cleanup_blocked_args_regex` (`regex`);

--
-- Indexes for table `abuhasdha_aioseo_crawl_cleanup_logs`
--
ALTER TABLE `abuhasdha_aioseo_crawl_cleanup_logs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ndx_aioseo_crawl_cleanup_logs_hash` (`hash`);

--
-- Indexes for table `abuhasdha_aioseo_notifications`
--
ALTER TABLE `abuhasdha_aioseo_notifications`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ndx_aioseo_notifications_slug` (`slug`),
  ADD KEY `ndx_aioseo_notifications_dates` (`start`,`end`),
  ADD KEY `ndx_aioseo_notifications_type` (`type`),
  ADD KEY `ndx_aioseo_notifications_dismissed` (`dismissed`);

--
-- Indexes for table `abuhasdha_aioseo_posts`
--
ALTER TABLE `abuhasdha_aioseo_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ndx_aioseo_posts_post_id` (`post_id`),
  ADD KEY `ndx_aioseo_posts_pillar_content` (`pillar_content`);

--
-- Indexes for table `abuhasdha_aioseo_seo_analyzer_results`
--
ALTER TABLE `abuhasdha_aioseo_seo_analyzer_results`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ndx_aioseo_seo_analyzer_results_competitor_url` (`competitor_url`);

--
-- Indexes for table `abuhasdha_aioseo_writing_assistant_keywords`
--
ALTER TABLE `abuhasdha_aioseo_writing_assistant_keywords`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ndx_aioseo_writing_assistant_keywords_uuid` (`uuid`),
  ADD KEY `ndx_aioseo_writing_assistant_keywords_keyword` (`keyword`);

--
-- Indexes for table `abuhasdha_aioseo_writing_assistant_posts`
--
ALTER TABLE `abuhasdha_aioseo_writing_assistant_posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ndx_aioseo_writing_assistant_posts_post_id` (`post_id`),
  ADD KEY `ndx_aioseo_writing_assistant_posts_keyword_id` (`keyword_id`);

--
-- Indexes for table `abuhasdha_commentmeta`
--
ALTER TABLE `abuhasdha_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `abuhasdha_comments`
--
ALTER TABLE `abuhasdha_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10));

--
-- Indexes for table `abuhasdha_itsec_bans`
--
ALTER TABLE `abuhasdha_itsec_bans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `host` (`host`),
  ADD KEY `actor` (`actor_type`,`actor_id`);

--
-- Indexes for table `abuhasdha_itsec_dashboard_events`
--
ALTER TABLE `abuhasdha_itsec_dashboard_events`
  ADD PRIMARY KEY (`event_id`),
  ADD UNIQUE KEY `event_slug__time__consolidated` (`event_slug`,`event_time`,`event_consolidated`);

--
-- Indexes for table `abuhasdha_itsec_dashboard_lockouts`
--
ALTER TABLE `abuhasdha_itsec_dashboard_lockouts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ip__time` (`ip`,`time`);

--
-- Indexes for table `abuhasdha_itsec_distributed_storage`
--
ALTER TABLE `abuhasdha_itsec_distributed_storage`
  ADD PRIMARY KEY (`storage_id`),
  ADD UNIQUE KEY `storage_group__key__chunk` (`storage_group`,`storage_key`,`storage_chunk`);

--
-- Indexes for table `abuhasdha_itsec_fingerprints`
--
ALTER TABLE `abuhasdha_itsec_fingerprints`
  ADD PRIMARY KEY (`fingerprint_id`),
  ADD UNIQUE KEY `fingerprint_user__hash` (`fingerprint_user`,`fingerprint_hash`),
  ADD UNIQUE KEY `fingerprint_uuid` (`fingerprint_uuid`);

--
-- Indexes for table `abuhasdha_itsec_firewall_rules`
--
ALTER TABLE `abuhasdha_itsec_firewall_rules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `provider__ref` (`provider`,`provider_ref`),
  ADD KEY `vulnerability` (`vulnerability`),
  ADD KEY `paused_at` (`paused_at`);

--
-- Indexes for table `abuhasdha_itsec_geolocation_cache`
--
ALTER TABLE `abuhasdha_itsec_geolocation_cache`
  ADD PRIMARY KEY (`location_id`),
  ADD UNIQUE KEY `location_host` (`location_host`),
  ADD KEY `location_time` (`location_time`);

--
-- Indexes for table `abuhasdha_itsec_lockouts`
--
ALTER TABLE `abuhasdha_itsec_lockouts`
  ADD PRIMARY KEY (`lockout_id`),
  ADD KEY `lockout_expire_gmt` (`lockout_expire_gmt`),
  ADD KEY `lockout_host` (`lockout_host`),
  ADD KEY `lockout_user` (`lockout_user`),
  ADD KEY `lockout_username` (`lockout_username`),
  ADD KEY `lockout_active` (`lockout_active`);

--
-- Indexes for table `abuhasdha_itsec_logs`
--
ALTER TABLE `abuhasdha_itsec_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `module` (`module`),
  ADD KEY `code` (`code`),
  ADD KEY `type` (`type`),
  ADD KEY `timestamp` (`timestamp`),
  ADD KEY `init_timestamp` (`init_timestamp`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `blog_id` (`blog_id`);

--
-- Indexes for table `abuhasdha_itsec_mutexes`
--
ALTER TABLE `abuhasdha_itsec_mutexes`
  ADD PRIMARY KEY (`mutex_id`),
  ADD UNIQUE KEY `mutex_name` (`mutex_name`);

--
-- Indexes for table `abuhasdha_itsec_opaque_tokens`
--
ALTER TABLE `abuhasdha_itsec_opaque_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD UNIQUE KEY `token_hashed` (`token_hashed`);

--
-- Indexes for table `abuhasdha_itsec_temp`
--
ALTER TABLE `abuhasdha_itsec_temp`
  ADD PRIMARY KEY (`temp_id`),
  ADD KEY `temp_date_gmt` (`temp_date_gmt`),
  ADD KEY `temp_host` (`temp_host`),
  ADD KEY `temp_user` (`temp_user`),
  ADD KEY `temp_username` (`temp_username`);

--
-- Indexes for table `abuhasdha_itsec_user_groups`
--
ALTER TABLE `abuhasdha_itsec_user_groups`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `abuhasdha_itsec_vulnerabilities`
--
ALTER TABLE `abuhasdha_itsec_vulnerabilities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `resolution` (`resolution`),
  ADD KEY `software_type` (`software_type`),
  ADD KEY `last_seen` (`last_seen`);

--
-- Indexes for table `abuhasdha_links`
--
ALTER TABLE `abuhasdha_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `abuhasdha_options`
--
ALTER TABLE `abuhasdha_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indexes for table `abuhasdha_postmeta`
--
ALTER TABLE `abuhasdha_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `abuhasdha_posts`
--
ALTER TABLE `abuhasdha_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `abuhasdha_rank_math_404_logs`
--
ALTER TABLE `abuhasdha_rank_math_404_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uri` (`uri`(191));

--
-- Indexes for table `abuhasdha_rank_math_internal_links`
--
ALTER TABLE `abuhasdha_rank_math_internal_links`
  ADD PRIMARY KEY (`id`),
  ADD KEY `link_direction` (`post_id`,`type`),
  ADD KEY `target_post_id` (`target_post_id`);

--
-- Indexes for table `abuhasdha_rank_math_internal_meta`
--
ALTER TABLE `abuhasdha_rank_math_internal_meta`
  ADD PRIMARY KEY (`object_id`);

--
-- Indexes for table `abuhasdha_rank_math_redirections`
--
ALTER TABLE `abuhasdha_rank_math_redirections`
  ADD PRIMARY KEY (`id`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `abuhasdha_rank_math_redirections_cache`
--
ALTER TABLE `abuhasdha_rank_math_redirections_cache`
  ADD PRIMARY KEY (`id`),
  ADD KEY `redirection_id` (`redirection_id`);

--
-- Indexes for table `abuhasdha_termmeta`
--
ALTER TABLE `abuhasdha_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `abuhasdha_terms`
--
ALTER TABLE `abuhasdha_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `abuhasdha_term_relationships`
--
ALTER TABLE `abuhasdha_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `abuhasdha_term_taxonomy`
--
ALTER TABLE `abuhasdha_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `abuhasdha_usermeta`
--
ALTER TABLE `abuhasdha_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `abuhasdha_users`
--
ALTER TABLE `abuhasdha_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abuhasdha_actionscheduler_actions`
--
ALTER TABLE `abuhasdha_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT for table `abuhasdha_actionscheduler_claims`
--
ALTER TABLE `abuhasdha_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=682;

--
-- AUTO_INCREMENT for table `abuhasdha_actionscheduler_groups`
--
ALTER TABLE `abuhasdha_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `abuhasdha_actionscheduler_logs`
--
ALTER TABLE `abuhasdha_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=593;

--
-- AUTO_INCREMENT for table `abuhasdha_aioseo_cache`
--
ALTER TABLE `abuhasdha_aioseo_cache`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=57;

--
-- AUTO_INCREMENT for table `abuhasdha_aioseo_crawl_cleanup_blocked_args`
--
ALTER TABLE `abuhasdha_aioseo_crawl_cleanup_blocked_args`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `abuhasdha_aioseo_crawl_cleanup_logs`
--
ALTER TABLE `abuhasdha_aioseo_crawl_cleanup_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `abuhasdha_aioseo_notifications`
--
ALTER TABLE `abuhasdha_aioseo_notifications`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `abuhasdha_aioseo_posts`
--
ALTER TABLE `abuhasdha_aioseo_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `abuhasdha_aioseo_seo_analyzer_results`
--
ALTER TABLE `abuhasdha_aioseo_seo_analyzer_results`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `abuhasdha_aioseo_writing_assistant_keywords`
--
ALTER TABLE `abuhasdha_aioseo_writing_assistant_keywords`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `abuhasdha_aioseo_writing_assistant_posts`
--
ALTER TABLE `abuhasdha_aioseo_writing_assistant_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `abuhasdha_commentmeta`
--
ALTER TABLE `abuhasdha_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `abuhasdha_comments`
--
ALTER TABLE `abuhasdha_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `abuhasdha_itsec_bans`
--
ALTER TABLE `abuhasdha_itsec_bans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `abuhasdha_itsec_dashboard_events`
--
ALTER TABLE `abuhasdha_itsec_dashboard_events`
  MODIFY `event_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `abuhasdha_itsec_dashboard_lockouts`
--
ALTER TABLE `abuhasdha_itsec_dashboard_lockouts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `abuhasdha_itsec_distributed_storage`
--
ALTER TABLE `abuhasdha_itsec_distributed_storage`
  MODIFY `storage_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `abuhasdha_itsec_fingerprints`
--
ALTER TABLE `abuhasdha_itsec_fingerprints`
  MODIFY `fingerprint_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `abuhasdha_itsec_firewall_rules`
--
ALTER TABLE `abuhasdha_itsec_firewall_rules`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `abuhasdha_itsec_geolocation_cache`
--
ALTER TABLE `abuhasdha_itsec_geolocation_cache`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `abuhasdha_itsec_lockouts`
--
ALTER TABLE `abuhasdha_itsec_lockouts`
  MODIFY `lockout_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `abuhasdha_itsec_logs`
--
ALTER TABLE `abuhasdha_itsec_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `abuhasdha_itsec_mutexes`
--
ALTER TABLE `abuhasdha_itsec_mutexes`
  MODIFY `mutex_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `abuhasdha_itsec_temp`
--
ALTER TABLE `abuhasdha_itsec_temp`
  MODIFY `temp_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `abuhasdha_links`
--
ALTER TABLE `abuhasdha_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `abuhasdha_options`
--
ALTER TABLE `abuhasdha_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1956;

--
-- AUTO_INCREMENT for table `abuhasdha_postmeta`
--
ALTER TABLE `abuhasdha_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=727;

--
-- AUTO_INCREMENT for table `abuhasdha_posts`
--
ALTER TABLE `abuhasdha_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `abuhasdha_rank_math_404_logs`
--
ALTER TABLE `abuhasdha_rank_math_404_logs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `abuhasdha_rank_math_internal_links`
--
ALTER TABLE `abuhasdha_rank_math_internal_links`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `abuhasdha_rank_math_redirections`
--
ALTER TABLE `abuhasdha_rank_math_redirections`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `abuhasdha_rank_math_redirections_cache`
--
ALTER TABLE `abuhasdha_rank_math_redirections_cache`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `abuhasdha_termmeta`
--
ALTER TABLE `abuhasdha_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `abuhasdha_terms`
--
ALTER TABLE `abuhasdha_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `abuhasdha_term_taxonomy`
--
ALTER TABLE `abuhasdha_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `abuhasdha_usermeta`
--
ALTER TABLE `abuhasdha_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `abuhasdha_users`
--
ALTER TABLE `abuhasdha_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
