-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2024 at 04:24 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `handbook`
--

-- --------------------------------------------------------

--
-- Table structure for table `block_list`
--

CREATE TABLE `block_list` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `blocked_user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `post_id`, `user_id`, `comment`, `created_at`) VALUES
(49, 16, 13, 'phuc', '2024-10-08 07:47:02'),
(50, 16, 13, 'phuc', '2024-10-08 07:47:12'),
(51, 17, 13, 'bhnghn', '2024-10-09 06:49:06'),
(52, 19, 15, 'nice', '2024-10-09 07:06:40'),
(53, 16, 15, 'suck', '2024-10-09 07:06:55'),
(54, 16, 15, 'damn', '2024-10-09 07:07:07'),
(55, 18, 13, 'phucc', '2024-10-16 00:32:10'),
(56, 20, 15, 'mÃ¡dmasd', '2024-10-16 01:10:27'),
(57, 20, 15, 'alo', '2024-10-16 01:10:35'),
(58, 20, 13, 'háº¡hv', '2024-10-16 01:13:22'),
(59, 24, 15, 'gnh', '2024-11-02 04:16:59'),
(64, 28, 42, 'đasadadsa', '2024-11-17 04:06:56'),
(65, 28, 42, 'ádsadasdsads', '2024-11-17 04:06:59'),
(68, 28, 42, 'ádsadsa', '2024-11-17 04:07:08'),
(75, 29, 42, 'dfsdfsd', '2024-11-17 05:34:01'),
(76, 29, 42, 'fdsfsdfsd', '2024-11-17 05:34:04'),
(77, 29, 42, 'dsfdsfsf', '2024-11-17 05:34:08'),
(79, 28, 47, 'adsadsa', '2024-11-18 04:31:00'),
(80, 28, 47, 'sadsad', '2024-11-18 04:34:01'),
(86, 28, 47, 'sdasdsa', '2024-11-18 06:08:38'),
(87, 28, 47, 'sdfsdfds', '2024-11-18 08:36:07'),
(88, 36, 48, 'dsadad', '2024-11-18 08:44:29'),
(89, 36, 48, 'ádsadsad', '2024-11-18 08:44:31'),
(90, 36, 48, 'ádsadsa', '2024-11-18 08:44:34'),
(91, 36, 48, 'sadsadad', '2024-11-18 08:44:36'),
(92, 37, 48, 'ádsadadsa', '2024-11-18 08:49:32'),
(93, 37, 48, 'áddada', '2024-11-18 08:49:34'),
(94, 37, 48, 'dsadada', '2024-11-18 08:49:37'),
(95, 37, 48, 'ádadad', '2024-11-18 08:49:40'),
(100, 37, 48, 'ádasdasda', '2024-11-18 09:01:20'),
(101, 37, 48, 'đâsdasdas', '2024-11-18 09:01:48'),
(108, 36, 48, 'sdfsdfdsfsdf', '2024-11-25 09:43:15'),
(109, 36, 48, 'sfsedfsd', '2024-11-25 09:43:16'),
(110, 35, 44, 'shitt', '2024-11-26 04:54:53');

-- --------------------------------------------------------

--
-- Table structure for table `follow_list`
--

CREATE TABLE `follow_list` (
  `id` int(11) NOT NULL,
  `follower_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `follow_list`
--

INSERT INTO `follow_list` (`id`, `follower_id`, `user_id`) VALUES
(87, 15, 13),
(88, 15, 14),
(89, 13, 14),
(90, 13, 15),
(91, 16, 13),
(92, 16, 15),
(93, 15, 16),
(94, 36, 35),
(95, 41, 35),
(96, 41, 36),
(97, 41, 39),
(98, 41, 40),
(99, 39, 35),
(100, 39, 36),
(101, 39, 40),
(102, 39, 41),
(103, 42, 43),
(104, 42, 44),
(105, 42, 46),
(106, 47, 42),
(107, 47, 43),
(108, 47, 44),
(110, 42, 47),
(111, 48, 42),
(112, 48, 43),
(113, 48, 44),
(114, 48, 46),
(116, 48, 47),
(117, 44, 42),
(118, 44, 43),
(119, 44, 46),
(120, 44, 47),
(121, 44, 48),
(123, 46, 43),
(130, 46, 42),
(131, 46, 44),
(132, 46, 47),
(133, 46, 48),
(134, 46, 49),
(135, 44, 49),
(136, 50, 42),
(137, 50, 43),
(138, 50, 44),
(139, 50, 46),
(140, 50, 47),
(141, 50, 48),
(142, 50, 49),
(143, 46, 50),
(144, 51, 42),
(145, 51, 43),
(146, 51, 44),
(147, 51, 46),
(148, 51, 47),
(149, 51, 48),
(150, 51, 49),
(151, 51, 50),
(152, 46, 51),
(153, 46, 51);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `post_id`, `user_id`) VALUES
(96, 16, 13),
(101, 19, 15),
(103, 17, 15),
(104, 16, 15),
(111, 20, 13),
(114, 20, 15),
(117, 18, 16),
(133, 37, 44),
(135, 35, 44),
(137, 40, 51),
(140, 43, 46);

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(11) NOT NULL,
  `from_user_id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `msg` text NOT NULL,
  `read_status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `from_user_id`, `to_user_id`, `msg`, `read_status`, `created_at`) VALUES
(48, 13, 14, 'hey phuc', 0, '2024-10-09 07:15:14'),
(49, 13, 14, 'i wanna meet u in midnight', 0, '2024-10-09 07:15:43'),
(50, 13, 14, 'Ã¡d', 0, '2024-10-16 00:35:18'),
(51, 13, 15, 'helooo', 1, '2024-10-16 01:13:54'),
(52, 13, 15, 'heo', 1, '2024-10-16 01:14:12'),
(53, 15, 13, 'fk u', 0, '2024-10-16 01:15:22'),
(54, 15, 16, 'phuc hey', 1, '2024-10-21 13:31:39'),
(55, 15, 16, 'poihaojfaokdfadsf', 1, '2024-10-21 13:32:30'),
(56, 16, 15, 'phh', 0, '2024-10-21 13:41:26'),
(57, 48, 47, 'aaaaaallaoaoa', 1, '2024-11-25 09:43:30'),
(58, 48, 47, 'aaalalaoao', 1, '2024-11-25 09:43:35'),
(59, 44, 47, 'hey yo', 0, '2024-11-26 04:55:22'),
(60, 44, 47, 'rae s', 0, '2024-11-26 04:55:34'),
(61, 46, 47, 'hey', 0, '2024-11-26 07:01:05'),
(62, 44, 47, 'yoyo', 0, '2024-11-26 07:11:38'),
(63, 46, 50, 'hi be', 1, '2024-11-26 07:14:44'),
(64, 50, 46, 'anh day', 0, '2024-11-26 07:15:47'),
(65, 50, 48, 'hey', 0, '2024-12-06 02:19:27'),
(66, 50, 48, 'ád', 0, '2024-12-06 02:19:33');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `to_user_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `from_user_id` int(11) NOT NULL,
  `read_status` int(11) NOT NULL DEFAULT 0,
  `post_id` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `notifications`
--

INSERT INTO `notifications` (`id`, `to_user_id`, `message`, `created_at`, `from_user_id`, `read_status`, `post_id`) VALUES
(116, 13, 'started following you !', '2024-10-09 07:06:18', 15, 1, '0'),
(117, 14, 'started following you !', '2024-10-09 07:06:18', 15, 0, '0'),
(118, 13, 'liked your post !', '2024-10-09 07:06:29', 15, 2, '19'),
(119, 13, 'commented on your post', '2024-10-09 07:06:40', 15, 2, '19'),
(120, 13, 'liked your post !', '2024-10-09 07:06:46', 15, 1, '18'),
(121, 13, 'liked your post !', '2024-10-09 07:06:48', 15, 1, '17'),
(122, 13, 'liked your post !', '2024-10-09 07:06:50', 15, 1, '16'),
(123, 13, 'commented on your post', '2024-10-09 07:06:55', 15, 1, '16'),
(124, 13, 'commented on your post', '2024-10-09 07:07:07', 15, 1, '16'),
(125, 14, 'started following you !', '2024-10-09 07:15:00', 13, 0, '0'),
(126, 15, 'started following you !', '2024-10-09 07:15:00', 13, 1, '0'),
(127, 15, 'liked your post !', '2024-10-16 01:13:14', 13, 1, '20'),
(128, 15, 'commented on your post', '2024-10-16 01:13:22', 13, 1, '20'),
(129, 13, 'unliked your post !', '2024-10-16 01:26:23', 15, 0, '18'),
(130, 13, 'started following you !', '2024-10-21 09:13:20', 16, 0, '0'),
(131, 13, 'liked your post !', '2024-10-21 09:22:54', 16, 0, '18'),
(132, 15, 'started following you !', '2024-10-21 13:20:48', 16, 1, '0'),
(133, 16, 'started following you !', '2024-10-21 13:31:16', 15, 0, '0'),
(134, 35, 'started following you !', '2024-11-09 14:45:31', 36, 0, '0'),
(135, 35, 'started following you !', '2024-11-11 01:46:16', 41, 0, '0'),
(136, 36, 'started following you !', '2024-11-11 01:46:17', 41, 0, '0'),
(137, 39, 'started following you !', '2024-11-11 01:46:17', 41, 1, '0'),
(138, 35, 'liked your post !', '2024-11-11 01:46:21', 41, 0, '26'),
(139, 40, 'started following you !', '2024-11-11 01:48:42', 41, 1, '0'),
(140, 35, 'started following you !', '2024-11-11 01:49:28', 39, 0, '0'),
(141, 36, 'started following you !', '2024-11-11 01:49:29', 39, 0, '0'),
(142, 40, 'started following you !', '2024-11-11 01:49:30', 39, 1, '0'),
(143, 41, 'started following you !', '2024-11-11 01:49:30', 39, 1, '0'),
(144, 35, 'unliked your post !', '2024-11-12 04:49:51', 41, 0, '26'),
(145, 35, 'liked your post !', '2024-11-12 04:49:52', 41, 0, '26'),
(146, 35, 'unliked your post !', '2024-11-12 04:49:52', 41, 0, '26'),
(147, 35, 'liked your post !', '2024-11-12 04:49:52', 41, 0, '26'),
(148, 35, 'unliked your post !', '2024-11-12 04:49:53', 41, 0, '26'),
(149, 35, 'liked your post !', '2024-11-12 04:49:53', 41, 0, '26'),
(150, 35, 'unliked your post !', '2024-11-12 04:49:53', 41, 0, '26'),
(151, 43, 'started following you !', '2024-11-17 04:26:44', 42, 0, '0'),
(152, 44, 'started following you !', '2024-11-17 04:26:45', 42, 1, '0'),
(153, 46, 'started following you !', '2024-11-17 04:26:45', 42, 1, '0'),
(154, 42, 'started following you !', '2024-11-17 04:28:02', 47, 1, '0'),
(155, 43, 'started following you !', '2024-11-17 04:28:02', 47, 0, '0'),
(156, 44, 'started following you !', '2024-11-17 04:28:03', 47, 1, '0'),
(157, 46, 'started following you !', '2024-11-17 04:28:03', 47, 1, '0'),
(158, 47, 'started following you !', '2024-11-17 04:41:14', 42, 1, '0'),
(159, 47, 'commented on your post', '2024-11-17 05:34:01', 42, 1, '29'),
(160, 47, 'commented on your post', '2024-11-17 05:34:04', 42, 1, '29'),
(161, 47, 'commented on your post', '2024-11-17 05:34:08', 42, 1, '29'),
(162, 42, 'commented on your post', '2024-11-18 04:30:58', 47, 0, '28'),
(163, 42, 'commented on your post', '2024-11-18 04:31:00', 47, 0, '28'),
(164, 42, 'commented on your post', '2024-11-18 04:34:01', 47, 0, '28'),
(165, 42, 'started following you !', '2024-11-18 04:57:39', 48, 0, '0'),
(166, 43, 'started following you !', '2024-11-18 04:57:40', 48, 0, '0'),
(167, 44, 'started following you !', '2024-11-18 04:57:40', 48, 1, '0'),
(168, 42, 'commented on your post', '2024-11-18 05:12:21', 48, 0, '28'),
(169, 42, 'commented on your post', '2024-11-18 06:08:38', 47, 0, '28'),
(170, 46, 'started following you !', '2024-11-18 07:14:16', 48, 1, '0'),
(171, 47, 'started following you !', '2024-11-18 07:14:16', 48, 1, '0'),
(172, 42, 'commented on your post', '2024-11-18 08:36:07', 47, 0, '28'),
(173, 47, 'commented on your post', '2024-11-18 08:44:29', 48, 1, '36'),
(174, 47, 'commented on your post', '2024-11-18 08:44:31', 48, 1, '36'),
(175, 47, 'commented on your post', '2024-11-18 08:44:34', 48, 1, '36'),
(176, 47, 'commented on your post', '2024-11-18 08:44:36', 48, 1, '36'),
(177, 47, 'Unfollowed you !', '2024-11-18 09:00:56', 48, 1, '0'),
(178, 47, 'started following you !', '2024-11-18 09:10:42', 48, 1, '0'),
(179, 42, 'commented on your post', '2024-11-20 09:18:26', 48, 0, '28'),
(180, 47, 'commented on your post', '2024-11-25 09:43:15', 48, 1, '36'),
(181, 47, 'commented on your post', '2024-11-25 09:43:16', 48, 1, '36'),
(182, 42, 'started following you !', '2024-11-26 04:13:26', 44, 0, '0'),
(183, 43, 'started following you !', '2024-11-26 04:13:27', 44, 0, '0'),
(184, 46, 'started following you !', '2024-11-26 04:13:28', 44, 1, '0'),
(185, 47, 'started following you !', '2024-11-26 04:13:28', 44, 0, '0'),
(186, 48, 'started following you !', '2024-11-26 04:13:28', 44, 0, '0'),
(187, 48, 'thích bài viết của bạn!', '2024-11-26 04:54:14', 44, 0, '37'),
(188, 48, 'đã bỏ thích bài đăng của bạn!', '2024-11-26 04:54:15', 44, 0, '37'),
(189, 48, 'thích bài viết của bạn!', '2024-11-26 04:54:15', 44, 0, '37'),
(190, 48, 'đã bỏ thích bài đăng của bạn!', '2024-11-26 04:54:15', 44, 0, '37'),
(191, 48, 'thích bài viết của bạn!', '2024-11-26 04:54:21', 44, 0, '37'),
(192, 48, 'đã bỏ thích bài đăng của bạn!', '2024-11-26 04:54:22', 44, 0, '37'),
(193, 48, 'thích bài viết của bạn!', '2024-11-26 04:54:22', 44, 0, '37'),
(194, 48, 'đã bỏ thích bài đăng của bạn!', '2024-11-26 04:54:22', 44, 0, '37'),
(195, 48, 'thích bài viết của bạn!', '2024-11-26 04:54:22', 44, 0, '37'),
(196, 48, 'đã bỏ thích bài đăng của bạn!', '2024-11-26 04:54:23', 44, 0, '37'),
(197, 48, 'thích bài viết của bạn!', '2024-11-26 04:54:23', 44, 0, '37'),
(198, 48, 'đã bỏ thích bài đăng của bạn!', '2024-11-26 04:54:23', 44, 0, '37'),
(199, 48, 'thích bài viết của bạn!', '2024-11-26 04:54:23', 44, 0, '37'),
(200, 48, 'đã bỏ thích bài đăng của bạn!', '2024-11-26 04:54:23', 44, 0, '37'),
(201, 48, 'thích bài viết của bạn!', '2024-11-26 04:54:24', 44, 0, '37'),
(202, 48, 'đã bỏ thích bài đăng của bạn!', '2024-11-26 04:54:24', 44, 0, '37'),
(203, 48, 'thích bài viết của bạn!', '2024-11-26 04:54:24', 44, 0, '37'),
(204, 48, 'đã bỏ thích bài đăng của bạn!', '2024-11-26 04:54:25', 44, 0, '37'),
(205, 48, 'thích bài viết của bạn!', '2024-11-26 04:54:25', 44, 0, '37'),
(206, 48, 'đã bỏ thích bài đăng của bạn!', '2024-11-26 04:54:25', 44, 0, '37'),
(207, 48, 'thích bài viết của bạn!', '2024-11-26 04:54:26', 44, 0, '37'),
(208, 47, 'đã bình luận về bài đăng của bạn', '2024-11-26 04:54:53', 44, 0, '35'),
(209, 47, 'thích bài viết của bạn!', '2024-11-26 04:54:58', 44, 0, '35'),
(210, 47, 'đã bỏ thích bài đăng của bạn!', '2024-11-26 04:54:58', 44, 0, '35'),
(211, 47, 'thích bài viết của bạn!', '2024-11-26 04:54:58', 44, 0, '35'),
(212, 42, 'đã bắt đầu theo dõi bạn!', '2024-11-26 06:46:21', 46, 0, '0'),
(213, 43, 'đã bắt đầu theo dõi bạn!', '2024-11-26 06:46:21', 46, 0, '0'),
(214, 44, 'đã bắt đầu theo dõi bạn!', '2024-11-26 06:46:22', 46, 1, '0'),
(215, 47, 'đã bắt đầu theo dõi bạn!', '2024-11-26 06:46:22', 46, 0, '0'),
(216, 48, 'đã bắt đầu theo dõi bạn!', '2024-11-26 06:46:23', 46, 0, '0'),
(217, 48, 'đã bỏ theo dõi bạn!', '2024-11-26 06:55:25', 46, 0, '0'),
(218, 42, 'đã bỏ theo dõi bạn!', '2024-11-26 06:55:30', 46, 0, '0'),
(219, 44, 'đã bỏ theo dõi bạn!', '2024-11-26 06:55:34', 46, 1, '0'),
(220, 48, 'đã bắt đầu theo dõi bạn!', '2024-11-26 06:56:47', 46, 0, '0'),
(221, 48, 'đã bỏ theo dõi bạn!', '2024-11-26 06:57:10', 46, 0, '0'),
(222, 48, 'đã bắt đầu theo dõi bạn!', '2024-11-26 06:58:30', 46, 0, '0'),
(223, 48, 'đã bỏ theo dõi bạn!', '2024-11-26 06:59:22', 46, 0, '0'),
(224, 48, 'đã bắt đầu theo dõi bạn!', '2024-11-26 06:59:40', 46, 0, '0'),
(225, 48, 'đã bỏ theo dõi bạn!', '2024-11-26 07:00:33', 46, 0, '0'),
(226, 47, 'đã chặn bạn', '2024-11-26 07:00:57', 46, 0, '0'),
(227, 47, 'đã bỏ chặn bạn!', '2024-11-26 07:00:58', 46, 0, '0'),
(228, 42, 'đã bắt đầu theo dõi bạn!', '2024-11-26 07:01:15', 46, 0, '0'),
(229, 44, 'đã bắt đầu theo dõi bạn!', '2024-11-26 07:01:15', 46, 1, '0'),
(230, 47, 'đã bắt đầu theo dõi bạn!', '2024-11-26 07:01:16', 46, 0, '0'),
(231, 48, 'đã bắt đầu theo dõi bạn!', '2024-11-26 07:01:16', 46, 0, '0'),
(232, 49, 'đã bắt đầu theo dõi bạn!', '2024-11-26 07:01:16', 46, 0, '0'),
(233, 49, 'đã bắt đầu theo dõi bạn!', '2024-11-26 07:11:19', 44, 0, '0'),
(234, 42, 'đã bắt đầu theo dõi bạn!', '2024-11-26 07:13:57', 50, 0, '0'),
(235, 43, 'đã bắt đầu theo dõi bạn!', '2024-11-26 07:13:57', 50, 0, '0'),
(236, 44, 'đã bắt đầu theo dõi bạn!', '2024-11-26 07:13:58', 50, 0, '0'),
(237, 46, 'đã bắt đầu theo dõi bạn!', '2024-11-26 07:13:58', 50, 1, '0'),
(238, 47, 'đã bắt đầu theo dõi bạn!', '2024-11-26 07:13:59', 50, 0, '0'),
(239, 48, 'đã bắt đầu theo dõi bạn!', '2024-11-26 07:14:10', 50, 0, '0'),
(240, 49, 'đã bắt đầu theo dõi bạn!', '2024-11-26 07:14:10', 50, 0, '0'),
(241, 50, 'đã bắt đầu theo dõi bạn!', '2024-11-26 07:14:32', 46, 1, '0'),
(242, 42, 'đã bắt đầu theo dõi bạn!', '2024-11-26 07:23:29', 51, 0, '0'),
(243, 43, 'đã bắt đầu theo dõi bạn!', '2024-11-26 07:23:29', 51, 0, '0'),
(244, 44, 'đã bắt đầu theo dõi bạn!', '2024-11-26 07:23:29', 51, 0, '0'),
(245, 46, 'đã bắt đầu theo dõi bạn!', '2024-11-26 07:23:30', 51, 1, '0'),
(246, 47, 'đã bắt đầu theo dõi bạn!', '2024-11-26 07:23:30', 51, 0, '0'),
(247, 48, 'đã bắt đầu theo dõi bạn!', '2024-11-26 07:24:59', 51, 0, '0'),
(248, 49, 'đã bắt đầu theo dõi bạn!', '2024-11-26 07:24:59', 51, 0, '0'),
(249, 50, 'đã bắt đầu theo dõi bạn!', '2024-11-26 07:24:59', 51, 1, '0'),
(250, 50, 'thích bài viết của bạn!', '2024-11-26 07:25:03', 51, 2, '40'),
(251, 51, 'đã bắt đầu theo dõi bạn!', '2024-11-26 08:06:29', 46, 0, '0'),
(252, 51, 'đã bắt đầu theo dõi bạn!', '2024-11-26 08:22:02', 46, 0, '0');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `post_img` text NOT NULL,
  `post_text` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_reported` tinyint(1) DEFAULT 0,
  `is_approved` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `post_img`, `post_text`, `created_at`, `is_reported`, `is_approved`) VALUES
(20, 15, '1729041003Screenshot 2024-09-20 224630.png', 'phuc', '2024-10-16 01:10:03', 0, 0),
(21, 15, '1729042663Screenshot 2024-09-20 230451.png', 'phuc adsdadadadad', '2024-10-16 01:37:43', 0, 0),
(22, 15, '1729042721Screenshot 2024-09-20 224630.png', '', '2024-10-16 01:38:41', 0, 0),
(23, 15, '1729042736Screenshot 2024-09-20 234917.png', '', '2024-10-16 01:38:56', 0, 0),
(24, 15, '1730520715Screenshot 2024-09-20 223447.png', 'dfgdf', '2024-11-02 04:11:55', 0, 0),
(25, 16, '1731158414Screenshot 2024-09-20 223447.png', 'phuc', '2024-11-09 13:20:14', 0, 0),
(26, 35, '1731163467Screenshot 2024-09-20 224258.png', '98', '2024-11-09 14:44:27', 0, 0),
(28, 42, '1731816405images (1).jpg', 'ádsadasd', '2024-11-17 04:06:45', 1, 1),
(35, 47, '17319189623.jpg', 'đ', '2024-11-18 08:36:02', 0, 1),
(36, 47, '1731919006z5942409984345_eb95548a7b0864a40b70cdc46181299b.jpg', 'ádsad', '2024-11-18 08:36:46', 0, 1),
(37, 48, '1731919691images1.jpg', 'dsadad', '2024-11-18 08:48:11', 1, 1),
(46, 50, '1733131576Screenshot 2024-09-20 224630.png', '7899', '2024-12-02 09:26:16', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `gender` enum('Male','Female','Others','') NOT NULL DEFAULT 'Male',
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `profile_pic` text NOT NULL DEFAULT 'default_profile.jpg',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `ac_status` int(11) NOT NULL COMMENT '0=not verified,1=active,2=blocked',
  `role` varchar(20) NOT NULL,
  `password_text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `gender`, `email`, `username`, `password`, `profile_pic`, `created_at`, `updated_at`, `ac_status`, `role`, `password_text`) VALUES
(42, 'Thắng', 'Thắng', 'Male', 'thang@123', 'thang', '123', 'default_profile.jpg', '2024-11-12 01:16:42', '2024-12-02 13:30:40', 1, 'User', '202cb962ac59075b964b07152d234b70'),
(43, 'Admin', '333456', 'Male', 'admin@handbook.com', 'admin', 'handbook', 'default_profile.jpg', '2024-11-12 06:37:06', '2024-12-06 02:17:42', 1, 'Admin', '91e5e3bad15912505c8ea6e8a2fa121c'),
(44, 'Huỳnh', 'Văn Phúc', 'Male', 'phhucvan@gmail.com', 'phhucvan@gmail.com', '123', 'default_profile.jpg', '2024-11-13 20:45:42', '2024-11-13 20:54:07', 1, 'User', '202cb962ac59075b964b07152d234b70'),
(46, 'Đạt', 'Đạt', 'Male', 'dat@123', 'dat', '123', 'default_profile.jpg', '2024-11-16 05:35:52', '2024-11-16 05:36:19', 1, 'User', '202cb962ac59075b964b07152d234b70'),
(47, 'Nguyễn', 'Thắng', 'Male', 'Thang@1', 'thangku1', '12', 'default_profile.jpg', '2024-11-16 21:27:33', '2024-11-16 21:27:56', 1, 'User', 'c20ad4d76fe97759aa27a0c99bff6710'),
(48, 'Nguyễn', 'Thắng', 'Male', 'thang@12', 'qaz123', '12', 'default_profile.jpg', '2024-11-17 21:53:03', '2024-11-17 21:53:41', 1, 'User', 'c20ad4d76fe97759aa27a0c99bff6710'),
(49, 'thang', 'ng', 'Male', 'phhhucvan@gmail.com', 'phhhucvan@gmail.com', '147', 'default_profile.jpg', '2024-11-26 06:33:10', '2024-11-26 07:23:25', 1, 'User', ' 8d5e957f297893487bd98fa830fa6413'),
(50, 'Le', 'Ngo', 'Male', 'ngoc@gmail.com', 'ngoc', '123', '1733451528Screenshot 2024-09-22 103528.png', '2024-11-26 07:13:28', '2024-12-06 02:18:48', 1, 'User', ' 202cb962ac59075b964b07152d234b70'),
(51, 'Huynhqq', 'Van Phuc', 'Male', 'phuc@gmail.com', 'phucc', '123', 'default_profile.jpg', '2024-11-26 07:22:15', '2024-11-26 07:22:36', 1, 'User', ' 202cb962ac59075b964b07152d234b70');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `block_list`
--
ALTER TABLE `block_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `follow_list`
--
ALTER TABLE `follow_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `block_list`
--
ALTER TABLE `block_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=112;

--
-- AUTO_INCREMENT for table `follow_list`
--
ALTER TABLE `follow_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=154;

--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=253;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
