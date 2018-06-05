-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 26, 2018 at 11:50 PM
-- Server version: 5.6.39-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jayaniwi_musicmovesme_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'A WordPress Commenter', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-05-21 23:14:16', '2018-05-21 23:14:16', 'Hi, this is a comment.\nTo get started with moderating, editing, and deleting comments, please visit the Comments screen in the dashboard.\nCommenter avatars come from <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_duplicator_packages`
--

CREATE TABLE `wp_duplicator_packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(250) NOT NULL,
  `hash` varchar(50) NOT NULL,
  `status` int(11) NOT NULL,
  `created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `owner` varchar(60) NOT NULL,
  `package` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme', 'yes'),
(2, 'home', 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme', 'yes'),
(3, 'blogname', 'Music Moves Me', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'cool_pals_3@yahoo.com', 'yes'),
(7, 'start_of_week', '1', 'yes'),
(8, 'use_balanceTags', '0', 'yes'),
(9, 'use_smilies', '1', 'yes'),
(10, 'require_name_email', '1', 'yes'),
(11, 'comments_notify', '1', 'yes'),
(12, 'posts_per_rss', '10', 'yes'),
(13, 'rss_use_excerpt', '0', 'yes'),
(14, 'mailserver_url', 'mail.example.com', 'yes'),
(15, 'mailserver_login', 'login@example.com', 'yes'),
(16, 'mailserver_pass', 'password', 'yes'),
(17, 'mailserver_port', '110', 'yes'),
(18, 'default_category', '1', 'yes'),
(19, 'default_comment_status', 'open', 'yes'),
(20, 'default_ping_status', 'open', 'yes'),
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'F j, Y', 'yes'),
(24, 'time_format', 'g:i a', 'yes'),
(25, 'links_updated_date_format', 'F j, Y g:i a', 'yes'),
(26, 'comment_moderation', '', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:185:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:19:\"bulmapress_event/?$\";s:36:\"index.php?post_type=bulmapress_event\";s:49:\"bulmapress_event/feed/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?post_type=bulmapress_event&feed=$matches[1]\";s:44:\"bulmapress_event/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?post_type=bulmapress_event&feed=$matches[1]\";s:36:\"bulmapress_event/page/([0-9]{1,})/?$\";s:54:\"index.php?post_type=bulmapress_event&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:44:\"bulmapress_event/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:54:\"bulmapress_event/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:74:\"bulmapress_event/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"bulmapress_event/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"bulmapress_event/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:50:\"bulmapress_event/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"bulmapress_event/([^/]+)/embed/?$\";s:49:\"index.php?bulmapress_event=$matches[1]&embed=true\";s:37:\"bulmapress_event/([^/]+)/trackback/?$\";s:43:\"index.php?bulmapress_event=$matches[1]&tb=1\";s:57:\"bulmapress_event/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?bulmapress_event=$matches[1]&feed=$matches[2]\";s:52:\"bulmapress_event/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:55:\"index.php?bulmapress_event=$matches[1]&feed=$matches[2]\";s:45:\"bulmapress_event/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?bulmapress_event=$matches[1]&paged=$matches[2]\";s:52:\"bulmapress_event/([^/]+)/comment-page-([0-9]{1,})/?$\";s:56:\"index.php?bulmapress_event=$matches[1]&cpage=$matches[2]\";s:42:\"bulmapress_event/([^/]+)/wc-api(/(.*))?/?$\";s:57:\"index.php?bulmapress_event=$matches[1]&wc-api=$matches[3]\";s:48:\"bulmapress_event/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:59:\"bulmapress_event/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:41:\"bulmapress_event/([^/]+)(?:/([0-9]+))?/?$\";s:55:\"index.php?bulmapress_event=$matches[1]&page=$matches[2]\";s:33:\"bulmapress_event/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"bulmapress_event/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"bulmapress_event/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"bulmapress_event/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"bulmapress_event/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"bulmapress_event/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:56:\"bulmapress_type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?bulmapress_type=$matches[1]&feed=$matches[2]\";s:51:\"bulmapress_type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:54:\"index.php?bulmapress_type=$matches[1]&feed=$matches[2]\";s:32:\"bulmapress_type/([^/]+)/embed/?$\";s:48:\"index.php?bulmapress_type=$matches[1]&embed=true\";s:44:\"bulmapress_type/([^/]+)/page/?([0-9]{1,})/?$\";s:55:\"index.php?bulmapress_type=$matches[1]&paged=$matches[2]\";s:26:\"bulmapress_type/([^/]+)/?$\";s:37:\"index.php?bulmapress_type=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:38:\"index.php?&page_id=2&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:25:\"([^/]+)/wc-api(/(.*))?/?$\";s:45:\"index.php?name=$matches[1]&wc-api=$matches[3]\";s:31:\"[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\"[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:5:{i:0;s:43:\"better-font-awesome/better-font-awesome.php\";i:1;s:25:\"duplicator/duplicator.php\";i:2;s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";i:3;s:57:\"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php\";i:4;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:3:{i:0;s:94:\"/home2/jayaniwisesekara/public_html/wux04/musicmovesme/wp-content/themes/bulmapress/header.php\";i:1;s:93:\"/home2/jayaniwisesekara/public_html/wux04/musicmovesme/wp-content/themes/bulmapress/style.css\";i:2;s:0:\"\";}', 'no'),
(40, 'template', 'bulmapress', 'yes'),
(41, 'stylesheet', 'bulmapress', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '150', 'yes'),
(59, 'thumbnail_size_h', '150', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '300', 'yes'),
(62, 'medium_size_h', '300', 'yes'),
(63, 'avatar_default', 'wavatar', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', 'none', 'yes'),
(67, 'image_default_size', '', 'yes'),
(68, 'image_default_align', '', 'yes'),
(69, 'close_comments_for_old_posts', '', 'yes'),
(70, 'close_comments_days_old', '14', 'yes'),
(71, 'thread_comments', '1', 'yes'),
(72, 'thread_comments_depth', '5', 'yes'),
(73, 'page_comments', '', 'yes'),
(74, 'comments_per_page', '50', 'yes'),
(75, 'default_comments_page', 'newest', 'yes'),
(76, 'comment_order', 'asc', 'yes'),
(77, 'sticky_posts', 'a:0:{}', 'yes'),
(78, 'widget_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '9', 'yes'),
(84, 'page_on_front', '2', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '58', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(96, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'sidebars_widgets', 'a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(101, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'cron', 'a:12:{i:1527336856;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1527337423;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1527337820;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1527348620;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1527376456;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1527376470;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1527376519;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1527379200;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1527413420;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1527413430;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1528156800;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(111, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1526944481;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(124, 'can_compress_scripts', '1', 'no'),
(138, 'current_theme', 'Bulmapress', 'yes'),
(139, 'theme_mods_bulmapress', 'a:21:{i:0;b:0;s:18:\"nav_menu_locations\";a:2:{s:6:\"menu-1\";i:2;s:6:\"menu-2\";i:3;}s:18:\"custom_css_post_id\";i:-1;s:11:\"header_text\";i:0;s:11:\"custom_logo\";i:57;s:31:\"bulmapress_about_image_ourstory\";s:103:\"http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/esme-300x300-3.jpg\";s:30:\"bulmapress_about_text_ourstory\";s:1033:\"This Is Esmee, Vicki’s grandmother. Esmee was a force of nature. A fiery redhead, she trained as a nurse before moving back and forth to Africa twice with her young family. She loved; painting, fashion, country music, chocolate, wildlife, riding on her blue scooter, bull terriers and latterly her pet blackbird that lived in her back garden. She had a ‘telephone voice’ that her family would tease her about and she and Gerald, Vicki’s grandfather, would dance together in the living room listening to jazz. The dementia subsumed Esmee by stealth. She started to write long lists of things to do. She found it difficult to remember how to pay for her groceries, would leave her handbag at the butchers and her keys in the fridge. Eventually she lost sight of herself and her family. She spent the last eight years of her life in a secure dementia facility where there was no time or funding left to try and connect with the person that Esmee had been.\n\n\nThis is for her and for all of us who lose someone we love to dementia\";s:30:\"bulmapress_about_image_general\";s:108:\"http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/mmt-team-1024x707-3.jpg\";s:29:\"bulmapress_about_text_general\";s:385:\"Music Moves Me Trust exists to offer high-quality, interactive music and music therapy to people living with dementia in an effort to help them maintain function, access memory and connect with those around them. The Trust was founded in early 2015 in the Waikato region of New Zealand. We are currently active within nursing and secure facilities that care for patients with dementia.\";s:47:\"bulmapress_about_image_ourpeople_boardmembers_1\";s:110:\"http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/Vicki-Jones-300x300-4.jpg\";s:46:\"bulmapress_about_text_ourpeople_boardmembers_1\";s:15:\"Dr. Vicki Jones\";s:47:\"bulmapress_about_image_ourpeople_boardmembers_2\";s:111:\"http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/Kath-Woodley-300x300-3.jpg\";s:46:\"bulmapress_about_text_ourpeople_boardmembers_2\";s:12:\"Kath Woodley\";s:45:\"bulmapress_about_image_ourpeople_therapists_1\";s:111:\"http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/Helen-McGann-300x300-3.jpg\";s:44:\"bulmapress_about_text_ourpeople_therapists_1\";s:12:\"Helen McGann\";s:45:\"bulmapress_about_image_ourpeople_therapists_2\";s:98:\"http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/Nolan-1-3.jpg\";s:44:\"bulmapress_about_text_ourpeople_therapists_2\";s:13:\"Nolan Hodgson\";s:45:\"bulmapress_about_image_ourpeople_therapists_3\";s:97:\"http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/Shona2-3.jpg\";s:44:\"bulmapress_about_text_ourpeople_therapists_3\";s:9:\"Shona How\";s:45:\"bulmapress_about_image_ourpeople_therapists_4\";s:104:\"http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/shari-278x300-3.jpg\";s:44:\"bulmapress_about_text_ourpeople_therapists_4\";s:12:\"Shari Storie\";}', 'yes'),
(140, 'theme_switched', '', 'yes'),
(146, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(154, 'recently_activated', 'a:1:{s:40:\"ultimate-product-catalogue/UPCP_Main.php\";i:1526967538;}', 'yes'),
(157, 'woocommerce_store_address', '51', 'yes'),
(158, 'woocommerce_store_address_2', 'Matlock street', 'yes'),
(159, 'woocommerce_store_city', 'Woolston', 'yes'),
(160, 'woocommerce_default_country', 'NZ:CT', 'yes'),
(161, 'woocommerce_store_postcode', '8062', 'yes'),
(162, 'woocommerce_allowed_countries', 'all', 'yes'),
(163, 'woocommerce_all_except_countries', '', 'yes'),
(164, 'woocommerce_specific_allowed_countries', '', 'yes'),
(165, 'woocommerce_ship_to_countries', '', 'yes'),
(166, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(167, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(168, 'woocommerce_calc_taxes', 'no', 'yes'),
(169, 'woocommerce_currency', 'NZD', 'yes'),
(170, 'woocommerce_currency_pos', 'left', 'yes'),
(171, 'woocommerce_price_thousand_sep', ',', 'yes'),
(172, 'woocommerce_price_decimal_sep', '.', 'yes'),
(173, 'woocommerce_price_num_decimals', '2', 'yes'),
(174, 'woocommerce_shop_page_id', '15', 'yes'),
(175, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(176, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(177, 'woocommerce_weight_unit', 'kg', 'yes'),
(178, 'woocommerce_dimension_unit', 'cm', 'yes'),
(179, 'woocommerce_enable_reviews', 'yes', 'yes'),
(180, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(181, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(182, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(183, 'woocommerce_review_rating_required', 'yes', 'no'),
(184, 'woocommerce_manage_stock', 'yes', 'yes'),
(185, 'woocommerce_hold_stock_minutes', '60', 'no'),
(186, 'woocommerce_notify_low_stock', 'yes', 'no'),
(187, 'woocommerce_notify_no_stock', 'yes', 'no'),
(188, 'woocommerce_stock_email_recipient', 'cool_pals_3@yahoo.com', 'no'),
(189, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(190, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(191, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(192, 'woocommerce_stock_format', '', 'yes'),
(193, 'woocommerce_file_download_method', 'force', 'no'),
(194, 'woocommerce_downloads_require_login', 'no', 'no'),
(195, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(196, 'woocommerce_prices_include_tax', 'no', 'yes'),
(197, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(198, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(199, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(200, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(201, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(202, 'woocommerce_tax_display_cart', 'excl', 'no'),
(203, 'woocommerce_price_display_suffix', '', 'yes'),
(204, 'woocommerce_tax_total_display', 'itemized', 'no'),
(205, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(206, 'woocommerce_shipping_cost_requires_address', 'no', 'no'),
(207, 'woocommerce_ship_to_destination', 'billing', 'no'),
(208, 'woocommerce_shipping_debug_mode', 'no', 'no'),
(209, 'woocommerce_enable_coupons', 'yes', 'yes'),
(210, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(211, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(212, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(213, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(214, 'woocommerce_cart_page_id', '77', 'yes'),
(215, 'woocommerce_checkout_page_id', '78', 'yes'),
(216, 'woocommerce_terms_page_id', '', 'no'),
(217, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(218, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(219, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(220, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(221, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(222, 'woocommerce_myaccount_page_id', '79', 'yes'),
(223, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(224, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(225, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(226, 'woocommerce_registration_generate_username', 'yes', 'no'),
(227, 'woocommerce_registration_generate_password', 'no', 'no'),
(228, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(229, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(230, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(231, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(232, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(233, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(234, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(235, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(236, 'woocommerce_email_from_name', 'Music Moves Me', 'no'),
(237, 'woocommerce_email_from_address', 'cool_pals_3@yahoo.com', 'no'),
(238, 'woocommerce_email_header_image', '', 'no'),
(239, 'woocommerce_email_footer_text', '{site_title}', 'no'),
(240, 'woocommerce_email_base_color', '#96588a', 'no'),
(241, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(242, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(243, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(244, 'woocommerce_api_enabled', 'yes', 'yes'),
(245, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(246, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(247, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(249, 'product_cat_children', 'a:0:{}', 'yes'),
(250, 'default_product_cat', '17', 'yes'),
(255, 'woocommerce_admin_notices', 'a:2:{i:0;s:6:\"update\";i:1;s:20:\"no_secure_connection\";}', 'yes'),
(257, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(258, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(259, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(260, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(261, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(262, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(263, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(264, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(265, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(266, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(267, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(268, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(271, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(298, 'woocommerce_maybe_regenerate_images_hash', '991b1ca641921cf0f5baf7a2fe85861b', 'yes'),
(372, 'woocommerce_product_type', 'both', 'yes'),
(373, 'woocommerce_allow_tracking', 'yes', 'yes'),
(374, 'woocommerce_tracker_last_send', '1526949723', 'yes'),
(376, 'woocommerce_stripe_settings', 'a:3:{s:7:\"enabled\";s:3:\"yes\";s:14:\"create_account\";b:0;s:5:\"email\";s:21:\"cool_pals_3@yahoo.com\";}', 'yes'),
(378, 'woocommerce_ppec_paypal_settings', 'a:2:{s:16:\"reroute_requests\";b:0;s:5:\"email\";s:21:\"cool_pals_3@yahoo.com\";}', 'yes'),
(379, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(380, 'woocommerce_bacs_settings', 'a:5:{s:7:\"enabled\";s:2:\"no\";s:5:\"title\";s:20:\"Direct bank transfer\";s:11:\"description\";s:176:\"Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order will not be shipped until the funds have cleared in our account.\";s:12:\"instructions\";s:0:\"\";s:15:\"account_details\";s:0:\"\";}', 'yes'),
(381, 'woocommerce_cod_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(382, 'wc_ppec_version', '1.5.5', 'yes'),
(392, 'woocommerce_flat_rate_1_settings', 'a:3:{s:5:\"title\";s:9:\"Flat rate\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:2:\"10\";}', 'yes'),
(393, 'woocommerce_flat_rate_2_settings', 'a:3:{s:5:\"title\";s:9:\"Flat rate\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:2:\"30\";}', 'yes'),
(419, 'UPCP_Thumb_Auto_Adjust', 'No', 'yes'),
(420, 'UPCP_Currency_Symbol_Location', 'Before', 'yes'),
(421, 'UPCP_Price_Filter', 'No', 'yes'),
(422, 'UPCP_Sale_Mode', 'Individual', 'yes'),
(423, 'UPCP_Product_Sort', 'a:2:{i:0;s:4:\"Name\";i:1;s:5:\"Price\";}', 'yes'),
(424, 'UPCP_Product_Search', 'name', 'yes'),
(425, 'UPCP_Custom_Product_Page', 'No', 'yes'),
(426, 'UPCP_Sidebar_Order', 'Normal', 'yes'),
(427, 'UPCP_Apply_Contents_Filter', 'Yes', 'yes'),
(428, 'UPCP_Maintain_Filtering', 'Yes', 'yes'),
(429, 'UPCP_Thumbnail_Support', 'No', 'yes'),
(430, 'UPCP_Show_Category_Descriptions', 'No', 'yes'),
(431, 'UPCP_Show_Catalogue_Information', 'Name', 'yes'),
(432, 'UPCP_Display_Category_Image', 'No', 'yes'),
(433, 'UPCP_Display_SubCategory_Image', 'No', 'yes'),
(434, 'UPCP_Overview_Mode', 'None', 'yes'),
(435, 'UPCP_Inner_Filter', 'No', 'yes'),
(436, 'UPCP_Clear_All', 'No', 'yes'),
(437, 'UPCP_Hide_Empty_Options', 'No', 'yes'),
(438, 'UPCP_Breadcrumbs', 'None', 'yes'),
(439, 'UPCP_Product_Comparison', 'No', 'yes'),
(440, 'UPCP_Product_Inquiry_Form', 'No', 'yes'),
(441, 'UPCP_Product_Inquiry_Cart', 'No', 'yes'),
(442, 'UPCP_Inquiry_Form_Email', '0', 'yes'),
(443, 'UPCP_Product_Reviews', 'No', 'yes'),
(444, 'UPCP_Catalog_Display_Reviews', 'No', 'yes'),
(445, 'UPCP_Lightbox', 'No', 'yes'),
(446, 'UPCP_Lightbox_Mode', 'No', 'yes'),
(447, 'UPCP_Hidden_Drop_Down_Sidebar_On_Mobile', 'No', 'yes'),
(448, 'UPCP_Infinite_Scroll', 'No', 'yes'),
(449, 'UPCP_Products_Per_Page', '1000000', 'yes'),
(450, 'UPCP_Pagination_Location', 'Top', 'yes'),
(451, 'UPCP_CF_Conversion', 'No', 'yes'),
(452, 'UPCP_Access_Role', 'administrator', 'yes'),
(453, 'UPCP_PP_Grid_Width', '90', 'yes'),
(454, 'UPCP_PP_Grid_Height', '35', 'yes'),
(455, 'UPCP_Top_Bottom_Padding', '10', 'yes'),
(456, 'UPCP_Left_Right_Padding', '10', 'yes'),
(457, 'UPCP_WooCommerce_Sync', 'No', 'yes'),
(458, 'UPCP_WooCommerce_Show_Cart_Count', 'No', 'yes'),
(459, 'UPCP_WooCommerce_Checkout', 'No', 'yes'),
(460, 'UPCP_WooCommerce_Cart_Page', 'Checkout', 'yes'),
(461, 'UPCP_WooCommerce_Product_Page', 'No', 'yes'),
(462, 'UPCP_WooCommerce_Back_Link', 'No', 'yes'),
(463, 'UPCP_SEO_Option', 'None', 'yes'),
(464, 'UPCP_SEO_Integration', 'Add', 'yes'),
(465, 'UPCP_SEO_Title', '[page-title] | [product-name]', 'yes'),
(466, 'UPCP_Update_Breadcrumbs', 'No', 'yes'),
(467, 'UPCP_List_View_Click_Action', 'Expand', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(468, 'UPCP_Details_Icon_Type', 'Default', 'yes'),
(469, 'UPCP_Pagination_Background', 'None', 'yes'),
(470, 'UPCP_Pagination_Border', 'none', 'yes'),
(471, 'UPCP_Pagination_Shadow', 'shadow-none', 'yes'),
(472, 'UPCP_Pagination_Gradient', 'gradient-none', 'yes'),
(473, 'UPCP_Pagination_Font', 'none', 'yes'),
(474, 'UPCP_Sidebar_Title_Collapse', 'no', 'yes'),
(475, 'UPCP_Sidebar_Start_Collapsed', 'no', 'yes'),
(476, 'UPCP_Sidebar_Title_Hover', 'none', 'yes'),
(477, 'UPCP_Sidebar_Checkbox_Style', 'none', 'yes'),
(478, 'UPCP_Categories_Control_Type', 'Checkbox', 'yes'),
(479, 'UPCP_SubCategories_Control_Type', 'Checkbox', 'yes'),
(480, 'UPCP_Tags_Control_Type', 'Checkbox', 'yes'),
(481, 'UPCP_Sidebar_Items_Order', 'a:7:{i:0;s:12:\"Product Sort\";i:1;s:14:\"Product Search\";i:2;s:12:\"Price Filter\";i:3;s:10:\"Categories\";i:4;s:14:\"Sub-Categories\";i:5;s:4:\"Tags\";i:6;s:13:\"Custom Fields\";}', 'yes'),
(482, 'UPCP_Installed_Skins', 'a:0:{}', 'yes'),
(484, 'UPCP_Full_Version', 'No', 'yes'),
(485, 'UPCP_Color_Scheme', 'Grey', 'yes'),
(486, 'UPCP_Product_Links', 'Same', 'yes'),
(487, 'UPCP_Tag_Logic', 'AND', 'yes'),
(488, 'UPCP_Read_More', 'Yes', 'yes'),
(489, 'UPCP_Pretty_Links', 'No', 'yes'),
(490, 'UPCP_Mobile_SS', 'No', 'yes'),
(491, 'UPCP_Install_Flag', 'Yes', 'yes'),
(492, 'UPCP_First_Install_Version', '3.6', 'yes'),
(493, 'UPCP_Desc_Chars', '240', 'yes'),
(494, 'UPCP_Case_Insensitive_Search', 'Yes', 'yes'),
(495, 'UPCP_Run_Tutorial', 'No', 'yes'),
(496, 'plugin_error', '', 'yes'),
(497, 'UPCP_Product_Import', 'None', 'yes'),
(498, 'widget_upcp_product_list_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(499, 'widget_upcp_random_products_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(500, 'widget_upcp_recent_products_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(501, 'widget_upcp_popular_products_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(502, 'widget_upcp_search_bar_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(503, 'UPCP_Ask_Review_Date', '1527569891', 'yes'),
(504, 'wc_stripe_show_phpver_notice', 'no', 'yes'),
(505, 'wc_stripe_show_ssl_notice', 'no', 'yes'),
(506, 'wc_stripe_show_keys_notice', 'no', 'yes'),
(507, 'UPCP_Currency_Symbol', 'NZD', 'yes'),
(508, 'UPCP_Details_Image', '', 'yes'),
(509, 'UPCP_Single_Page_Price', 'Yes', 'yes'),
(510, 'UPCP_Extra_Elements', 'Blank', 'yes'),
(511, 'UPCP_Social_Media', 'Blank', 'yes'),
(512, 'UPCP_Update_RR_Rules', 'Yes', 'yes'),
(515, 'woocommerce_shop_page_display', '', 'yes'),
(516, 'woocommerce_default_catalog_orderby', 'price', 'yes'),
(517, 'woocommerce_catalog_columns', '3', 'yes'),
(518, 'woocommerce_catalog_rows', '3', 'yes'),
(539, 'woocommerce_db_version', '3.3.5', 'yes'),
(579, 'woocommerce_bacs_accounts', 'a:1:{i:0;a:6:{s:12:\"account_name\";s:0:\"\";s:14:\"account_number\";s:0:\"\";s:9:\"bank_name\";s:0:\"\";s:9:\"sort_code\";s:0:\"\";s:4:\"iban\";s:0:\"\";s:3:\"bic\";s:0:\"\";}}', 'yes'),
(605, 'better-font-awesome_options', 'a:4:{s:7:\"version\";s:6:\"latest\";s:8:\"minified\";i:1;s:18:\"remove_existing_fa\";s:0:\"\";s:18:\"hide_admin_notices\";s:0:\"\";}', 'yes'),
(623, 'category_children', 'a:0:{}', 'yes'),
(750, 'duplicator_version_plugin', '1.2.38', 'yes'),
(760, 'duplicator_exe_safe_mode', '0', 'yes'),
(761, '_transient_timeout_external_ip_address_10.2.20.118', '1527836881', 'no'),
(762, '_transient_external_ip_address_10.2.20.118', '101.100.11.94', 'no'),
(763, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(766, '_transient_timeout_bfa-css', '1529824081', 'no'),
(767, '_transient_bfa-css', 'a:1:{s:5:\"4.7.0\";s:31000:\"/*!\n *  Font Awesome 4.7.0 by @davegandy - http://fontawesome.io - @fontawesome\n *  License - http://fontawesome.io/license (Font: SIL OFL 1.1, CSS: MIT License)\n */@font-face{font-family:\'FontAwesome\';src:url(\'../fonts/fontawesome-webfont.eot?v=4.7.0\');src:url(\'../fonts/fontawesome-webfont.eot?#iefix&v=4.7.0\') format(\'embedded-opentype\'),url(\'../fonts/fontawesome-webfont.woff2?v=4.7.0\') format(\'woff2\'),url(\'../fonts/fontawesome-webfont.woff?v=4.7.0\') format(\'woff\'),url(\'../fonts/fontawesome-webfont.ttf?v=4.7.0\') format(\'truetype\'),url(\'../fonts/fontawesome-webfont.svg?v=4.7.0#fontawesomeregular\') format(\'svg\');font-weight:normal;font-style:normal}.fa{display:inline-block;font:normal normal normal 14px/1 FontAwesome;font-size:inherit;text-rendering:auto;-webkit-font-smoothing:antialiased;-moz-osx-font-smoothing:grayscale}.fa-lg{font-size:1.33333333em;line-height:.75em;vertical-align:-15%}.fa-2x{font-size:2em}.fa-3x{font-size:3em}.fa-4x{font-size:4em}.fa-5x{font-size:5em}.fa-fw{width:1.28571429em;text-align:center}.fa-ul{padding-left:0;margin-left:2.14285714em;list-style-type:none}.fa-ul>li{position:relative}.fa-li{position:absolute;left:-2.14285714em;width:2.14285714em;top:.14285714em;text-align:center}.fa-li.fa-lg{left:-1.85714286em}.fa-border{padding:.2em .25em .15em;border:solid .08em #eee;border-radius:.1em}.fa-pull-left{float:left}.fa-pull-right{float:right}.fa.fa-pull-left{margin-right:.3em}.fa.fa-pull-right{margin-left:.3em}.pull-right{float:right}.pull-left{float:left}.fa.pull-left{margin-right:.3em}.fa.pull-right{margin-left:.3em}.fa-spin{-webkit-animation:fa-spin 2s infinite linear;animation:fa-spin 2s infinite linear}.fa-pulse{-webkit-animation:fa-spin 1s infinite steps(8);animation:fa-spin 1s infinite steps(8)}@-webkit-keyframes fa-spin{0%{-webkit-transform:rotate(0deg);transform:rotate(0deg)}100%{-webkit-transform:rotate(359deg);transform:rotate(359deg)}}@keyframes fa-spin{0%{-webkit-transform:rotate(0deg);transform:rotate(0deg)}100%{-webkit-transform:rotate(359deg);transform:rotate(359deg)}}.fa-rotate-90{-ms-filter:\"progid:DXImageTransform.Microsoft.BasicImage(rotation=1)\";-webkit-transform:rotate(90deg);-ms-transform:rotate(90deg);transform:rotate(90deg)}.fa-rotate-180{-ms-filter:\"progid:DXImageTransform.Microsoft.BasicImage(rotation=2)\";-webkit-transform:rotate(180deg);-ms-transform:rotate(180deg);transform:rotate(180deg)}.fa-rotate-270{-ms-filter:\"progid:DXImageTransform.Microsoft.BasicImage(rotation=3)\";-webkit-transform:rotate(270deg);-ms-transform:rotate(270deg);transform:rotate(270deg)}.fa-flip-horizontal{-ms-filter:\"progid:DXImageTransform.Microsoft.BasicImage(rotation=0, mirror=1)\";-webkit-transform:scale(-1, 1);-ms-transform:scale(-1, 1);transform:scale(-1, 1)}.fa-flip-vertical{-ms-filter:\"progid:DXImageTransform.Microsoft.BasicImage(rotation=2, mirror=1)\";-webkit-transform:scale(1, -1);-ms-transform:scale(1, -1);transform:scale(1, -1)}:root .fa-rotate-90,:root .fa-rotate-180,:root .fa-rotate-270,:root .fa-flip-horizontal,:root .fa-flip-vertical{filter:none}.fa-stack{position:relative;display:inline-block;width:2em;height:2em;line-height:2em;vertical-align:middle}.fa-stack-1x,.fa-stack-2x{position:absolute;left:0;width:100%;text-align:center}.fa-stack-1x{line-height:inherit}.fa-stack-2x{font-size:2em}.fa-inverse{color:#fff}.fa-glass:before{content:\"\\f000\"}.fa-music:before{content:\"\\f001\"}.fa-search:before{content:\"\\f002\"}.fa-envelope-o:before{content:\"\\f003\"}.fa-heart:before{content:\"\\f004\"}.fa-star:before{content:\"\\f005\"}.fa-star-o:before{content:\"\\f006\"}.fa-user:before{content:\"\\f007\"}.fa-film:before{content:\"\\f008\"}.fa-th-large:before{content:\"\\f009\"}.fa-th:before{content:\"\\f00a\"}.fa-th-list:before{content:\"\\f00b\"}.fa-check:before{content:\"\\f00c\"}.fa-remove:before,.fa-close:before,.fa-times:before{content:\"\\f00d\"}.fa-search-plus:before{content:\"\\f00e\"}.fa-search-minus:before{content:\"\\f010\"}.fa-power-off:before{content:\"\\f011\"}.fa-signal:before{content:\"\\f012\"}.fa-gear:before,.fa-cog:before{content:\"\\f013\"}.fa-trash-o:before{content:\"\\f014\"}.fa-home:before{content:\"\\f015\"}.fa-file-o:before{content:\"\\f016\"}.fa-clock-o:before{content:\"\\f017\"}.fa-road:before{content:\"\\f018\"}.fa-download:before{content:\"\\f019\"}.fa-arrow-circle-o-down:before{content:\"\\f01a\"}.fa-arrow-circle-o-up:before{content:\"\\f01b\"}.fa-inbox:before{content:\"\\f01c\"}.fa-play-circle-o:before{content:\"\\f01d\"}.fa-rotate-right:before,.fa-repeat:before{content:\"\\f01e\"}.fa-refresh:before{content:\"\\f021\"}.fa-list-alt:before{content:\"\\f022\"}.fa-lock:before{content:\"\\f023\"}.fa-flag:before{content:\"\\f024\"}.fa-headphones:before{content:\"\\f025\"}.fa-volume-off:before{content:\"\\f026\"}.fa-volume-down:before{content:\"\\f027\"}.fa-volume-up:before{content:\"\\f028\"}.fa-qrcode:before{content:\"\\f029\"}.fa-barcode:before{content:\"\\f02a\"}.fa-tag:before{content:\"\\f02b\"}.fa-tags:before{content:\"\\f02c\"}.fa-book:before{content:\"\\f02d\"}.fa-bookmark:before{content:\"\\f02e\"}.fa-print:before{content:\"\\f02f\"}.fa-camera:before{content:\"\\f030\"}.fa-font:before{content:\"\\f031\"}.fa-bold:before{content:\"\\f032\"}.fa-italic:before{content:\"\\f033\"}.fa-text-height:before{content:\"\\f034\"}.fa-text-width:before{content:\"\\f035\"}.fa-align-left:before{content:\"\\f036\"}.fa-align-center:before{content:\"\\f037\"}.fa-align-right:before{content:\"\\f038\"}.fa-align-justify:before{content:\"\\f039\"}.fa-list:before{content:\"\\f03a\"}.fa-dedent:before,.fa-outdent:before{content:\"\\f03b\"}.fa-indent:before{content:\"\\f03c\"}.fa-video-camera:before{content:\"\\f03d\"}.fa-photo:before,.fa-image:before,.fa-picture-o:before{content:\"\\f03e\"}.fa-pencil:before{content:\"\\f040\"}.fa-map-marker:before{content:\"\\f041\"}.fa-adjust:before{content:\"\\f042\"}.fa-tint:before{content:\"\\f043\"}.fa-edit:before,.fa-pencil-square-o:before{content:\"\\f044\"}.fa-share-square-o:before{content:\"\\f045\"}.fa-check-square-o:before{content:\"\\f046\"}.fa-arrows:before{content:\"\\f047\"}.fa-step-backward:before{content:\"\\f048\"}.fa-fast-backward:before{content:\"\\f049\"}.fa-backward:before{content:\"\\f04a\"}.fa-play:before{content:\"\\f04b\"}.fa-pause:before{content:\"\\f04c\"}.fa-stop:before{content:\"\\f04d\"}.fa-forward:before{content:\"\\f04e\"}.fa-fast-forward:before{content:\"\\f050\"}.fa-step-forward:before{content:\"\\f051\"}.fa-eject:before{content:\"\\f052\"}.fa-chevron-left:before{content:\"\\f053\"}.fa-chevron-right:before{content:\"\\f054\"}.fa-plus-circle:before{content:\"\\f055\"}.fa-minus-circle:before{content:\"\\f056\"}.fa-times-circle:before{content:\"\\f057\"}.fa-check-circle:before{content:\"\\f058\"}.fa-question-circle:before{content:\"\\f059\"}.fa-info-circle:before{content:\"\\f05a\"}.fa-crosshairs:before{content:\"\\f05b\"}.fa-times-circle-o:before{content:\"\\f05c\"}.fa-check-circle-o:before{content:\"\\f05d\"}.fa-ban:before{content:\"\\f05e\"}.fa-arrow-left:before{content:\"\\f060\"}.fa-arrow-right:before{content:\"\\f061\"}.fa-arrow-up:before{content:\"\\f062\"}.fa-arrow-down:before{content:\"\\f063\"}.fa-mail-forward:before,.fa-share:before{content:\"\\f064\"}.fa-expand:before{content:\"\\f065\"}.fa-compress:before{content:\"\\f066\"}.fa-plus:before{content:\"\\f067\"}.fa-minus:before{content:\"\\f068\"}.fa-asterisk:before{content:\"\\f069\"}.fa-exclamation-circle:before{content:\"\\f06a\"}.fa-gift:before{content:\"\\f06b\"}.fa-leaf:before{content:\"\\f06c\"}.fa-fire:before{content:\"\\f06d\"}.fa-eye:before{content:\"\\f06e\"}.fa-eye-slash:before{content:\"\\f070\"}.fa-warning:before,.fa-exclamation-triangle:before{content:\"\\f071\"}.fa-plane:before{content:\"\\f072\"}.fa-calendar:before{content:\"\\f073\"}.fa-random:before{content:\"\\f074\"}.fa-comment:before{content:\"\\f075\"}.fa-magnet:before{content:\"\\f076\"}.fa-chevron-up:before{content:\"\\f077\"}.fa-chevron-down:before{content:\"\\f078\"}.fa-retweet:before{content:\"\\f079\"}.fa-shopping-cart:before{content:\"\\f07a\"}.fa-folder:before{content:\"\\f07b\"}.fa-folder-open:before{content:\"\\f07c\"}.fa-arrows-v:before{content:\"\\f07d\"}.fa-arrows-h:before{content:\"\\f07e\"}.fa-bar-chart-o:before,.fa-bar-chart:before{content:\"\\f080\"}.fa-twitter-square:before{content:\"\\f081\"}.fa-facebook-square:before{content:\"\\f082\"}.fa-camera-retro:before{content:\"\\f083\"}.fa-key:before{content:\"\\f084\"}.fa-gears:before,.fa-cogs:before{content:\"\\f085\"}.fa-comments:before{content:\"\\f086\"}.fa-thumbs-o-up:before{content:\"\\f087\"}.fa-thumbs-o-down:before{content:\"\\f088\"}.fa-star-half:before{content:\"\\f089\"}.fa-heart-o:before{content:\"\\f08a\"}.fa-sign-out:before{content:\"\\f08b\"}.fa-linkedin-square:before{content:\"\\f08c\"}.fa-thumb-tack:before{content:\"\\f08d\"}.fa-external-link:before{content:\"\\f08e\"}.fa-sign-in:before{content:\"\\f090\"}.fa-trophy:before{content:\"\\f091\"}.fa-github-square:before{content:\"\\f092\"}.fa-upload:before{content:\"\\f093\"}.fa-lemon-o:before{content:\"\\f094\"}.fa-phone:before{content:\"\\f095\"}.fa-square-o:before{content:\"\\f096\"}.fa-bookmark-o:before{content:\"\\f097\"}.fa-phone-square:before{content:\"\\f098\"}.fa-twitter:before{content:\"\\f099\"}.fa-facebook-f:before,.fa-facebook:before{content:\"\\f09a\"}.fa-github:before{content:\"\\f09b\"}.fa-unlock:before{content:\"\\f09c\"}.fa-credit-card:before{content:\"\\f09d\"}.fa-feed:before,.fa-rss:before{content:\"\\f09e\"}.fa-hdd-o:before{content:\"\\f0a0\"}.fa-bullhorn:before{content:\"\\f0a1\"}.fa-bell:before{content:\"\\f0f3\"}.fa-certificate:before{content:\"\\f0a3\"}.fa-hand-o-right:before{content:\"\\f0a4\"}.fa-hand-o-left:before{content:\"\\f0a5\"}.fa-hand-o-up:before{content:\"\\f0a6\"}.fa-hand-o-down:before{content:\"\\f0a7\"}.fa-arrow-circle-left:before{content:\"\\f0a8\"}.fa-arrow-circle-right:before{content:\"\\f0a9\"}.fa-arrow-circle-up:before{content:\"\\f0aa\"}.fa-arrow-circle-down:before{content:\"\\f0ab\"}.fa-globe:before{content:\"\\f0ac\"}.fa-wrench:before{content:\"\\f0ad\"}.fa-tasks:before{content:\"\\f0ae\"}.fa-filter:before{content:\"\\f0b0\"}.fa-briefcase:before{content:\"\\f0b1\"}.fa-arrows-alt:before{content:\"\\f0b2\"}.fa-group:before,.fa-users:before{content:\"\\f0c0\"}.fa-chain:before,.fa-link:before{content:\"\\f0c1\"}.fa-cloud:before{content:\"\\f0c2\"}.fa-flask:before{content:\"\\f0c3\"}.fa-cut:before,.fa-scissors:before{content:\"\\f0c4\"}.fa-copy:before,.fa-files-o:before{content:\"\\f0c5\"}.fa-paperclip:before{content:\"\\f0c6\"}.fa-save:before,.fa-floppy-o:before{content:\"\\f0c7\"}.fa-square:before{content:\"\\f0c8\"}.fa-navicon:before,.fa-reorder:before,.fa-bars:before{content:\"\\f0c9\"}.fa-list-ul:before{content:\"\\f0ca\"}.fa-list-ol:before{content:\"\\f0cb\"}.fa-strikethrough:before{content:\"\\f0cc\"}.fa-underline:before{content:\"\\f0cd\"}.fa-table:before{content:\"\\f0ce\"}.fa-magic:before{content:\"\\f0d0\"}.fa-truck:before{content:\"\\f0d1\"}.fa-pinterest:before{content:\"\\f0d2\"}.fa-pinterest-square:before{content:\"\\f0d3\"}.fa-google-plus-square:before{content:\"\\f0d4\"}.fa-google-plus:before{content:\"\\f0d5\"}.fa-money:before{content:\"\\f0d6\"}.fa-caret-down:before{content:\"\\f0d7\"}.fa-caret-up:before{content:\"\\f0d8\"}.fa-caret-left:before{content:\"\\f0d9\"}.fa-caret-right:before{content:\"\\f0da\"}.fa-columns:before{content:\"\\f0db\"}.fa-unsorted:before,.fa-sort:before{content:\"\\f0dc\"}.fa-sort-down:before,.fa-sort-desc:before{content:\"\\f0dd\"}.fa-sort-up:before,.fa-sort-asc:before{content:\"\\f0de\"}.fa-envelope:before{content:\"\\f0e0\"}.fa-linkedin:before{content:\"\\f0e1\"}.fa-rotate-left:before,.fa-undo:before{content:\"\\f0e2\"}.fa-legal:before,.fa-gavel:before{content:\"\\f0e3\"}.fa-dashboard:before,.fa-tachometer:before{content:\"\\f0e4\"}.fa-comment-o:before{content:\"\\f0e5\"}.fa-comments-o:before{content:\"\\f0e6\"}.fa-flash:before,.fa-bolt:before{content:\"\\f0e7\"}.fa-sitemap:before{content:\"\\f0e8\"}.fa-umbrella:before{content:\"\\f0e9\"}.fa-paste:before,.fa-clipboard:before{content:\"\\f0ea\"}.fa-lightbulb-o:before{content:\"\\f0eb\"}.fa-exchange:before{content:\"\\f0ec\"}.fa-cloud-download:before{content:\"\\f0ed\"}.fa-cloud-upload:before{content:\"\\f0ee\"}.fa-user-md:before{content:\"\\f0f0\"}.fa-stethoscope:before{content:\"\\f0f1\"}.fa-suitcase:before{content:\"\\f0f2\"}.fa-bell-o:before{content:\"\\f0a2\"}.fa-coffee:before{content:\"\\f0f4\"}.fa-cutlery:before{content:\"\\f0f5\"}.fa-file-text-o:before{content:\"\\f0f6\"}.fa-building-o:before{content:\"\\f0f7\"}.fa-hospital-o:before{content:\"\\f0f8\"}.fa-ambulance:before{content:\"\\f0f9\"}.fa-medkit:before{content:\"\\f0fa\"}.fa-fighter-jet:before{content:\"\\f0fb\"}.fa-beer:before{content:\"\\f0fc\"}.fa-h-square:before{content:\"\\f0fd\"}.fa-plus-square:before{content:\"\\f0fe\"}.fa-angle-double-left:before{content:\"\\f100\"}.fa-angle-double-right:before{content:\"\\f101\"}.fa-angle-double-up:before{content:\"\\f102\"}.fa-angle-double-down:before{content:\"\\f103\"}.fa-angle-left:before{content:\"\\f104\"}.fa-angle-right:before{content:\"\\f105\"}.fa-angle-up:before{content:\"\\f106\"}.fa-angle-down:before{content:\"\\f107\"}.fa-desktop:before{content:\"\\f108\"}.fa-laptop:before{content:\"\\f109\"}.fa-tablet:before{content:\"\\f10a\"}.fa-mobile-phone:before,.fa-mobile:before{content:\"\\f10b\"}.fa-circle-o:before{content:\"\\f10c\"}.fa-quote-left:before{content:\"\\f10d\"}.fa-quote-right:before{content:\"\\f10e\"}.fa-spinner:before{content:\"\\f110\"}.fa-circle:before{content:\"\\f111\"}.fa-mail-reply:before,.fa-reply:before{content:\"\\f112\"}.fa-github-alt:before{content:\"\\f113\"}.fa-folder-o:before{content:\"\\f114\"}.fa-folder-open-o:before{content:\"\\f115\"}.fa-smile-o:before{content:\"\\f118\"}.fa-frown-o:before{content:\"\\f119\"}.fa-meh-o:before{content:\"\\f11a\"}.fa-gamepad:before{content:\"\\f11b\"}.fa-keyboard-o:before{content:\"\\f11c\"}.fa-flag-o:before{content:\"\\f11d\"}.fa-flag-checkered:before{content:\"\\f11e\"}.fa-terminal:before{content:\"\\f120\"}.fa-code:before{content:\"\\f121\"}.fa-mail-reply-all:before,.fa-reply-all:before{content:\"\\f122\"}.fa-star-half-empty:before,.fa-star-half-full:before,.fa-star-half-o:before{content:\"\\f123\"}.fa-location-arrow:before{content:\"\\f124\"}.fa-crop:before{content:\"\\f125\"}.fa-code-fork:before{content:\"\\f126\"}.fa-unlink:before,.fa-chain-broken:before{content:\"\\f127\"}.fa-question:before{content:\"\\f128\"}.fa-info:before{content:\"\\f129\"}.fa-exclamation:before{content:\"\\f12a\"}.fa-superscript:before{content:\"\\f12b\"}.fa-subscript:before{content:\"\\f12c\"}.fa-eraser:before{content:\"\\f12d\"}.fa-puzzle-piece:before{content:\"\\f12e\"}.fa-microphone:before{content:\"\\f130\"}.fa-microphone-slash:before{content:\"\\f131\"}.fa-shield:before{content:\"\\f132\"}.fa-calendar-o:before{content:\"\\f133\"}.fa-fire-extinguisher:before{content:\"\\f134\"}.fa-rocket:before{content:\"\\f135\"}.fa-maxcdn:before{content:\"\\f136\"}.fa-chevron-circle-left:before{content:\"\\f137\"}.fa-chevron-circle-right:before{content:\"\\f138\"}.fa-chevron-circle-up:before{content:\"\\f139\"}.fa-chevron-circle-down:before{content:\"\\f13a\"}.fa-html5:before{content:\"\\f13b\"}.fa-css3:before{content:\"\\f13c\"}.fa-anchor:before{content:\"\\f13d\"}.fa-unlock-alt:before{content:\"\\f13e\"}.fa-bullseye:before{content:\"\\f140\"}.fa-ellipsis-h:before{content:\"\\f141\"}.fa-ellipsis-v:before{content:\"\\f142\"}.fa-rss-square:before{content:\"\\f143\"}.fa-play-circle:before{content:\"\\f144\"}.fa-ticket:before{content:\"\\f145\"}.fa-minus-square:before{content:\"\\f146\"}.fa-minus-square-o:before{content:\"\\f147\"}.fa-level-up:before{content:\"\\f148\"}.fa-level-down:before{content:\"\\f149\"}.fa-check-square:before{content:\"\\f14a\"}.fa-pencil-square:before{content:\"\\f14b\"}.fa-external-link-square:before{content:\"\\f14c\"}.fa-share-square:before{content:\"\\f14d\"}.fa-compass:before{content:\"\\f14e\"}.fa-toggle-down:before,.fa-caret-square-o-down:before{content:\"\\f150\"}.fa-toggle-up:before,.fa-caret-square-o-up:before{content:\"\\f151\"}.fa-toggle-right:before,.fa-caret-square-o-right:before{content:\"\\f152\"}.fa-euro:before,.fa-eur:before{content:\"\\f153\"}.fa-gbp:before{content:\"\\f154\"}.fa-dollar:before,.fa-usd:before{content:\"\\f155\"}.fa-rupee:before,.fa-inr:before{content:\"\\f156\"}.fa-cny:before,.fa-rmb:before,.fa-yen:before,.fa-jpy:before{content:\"\\f157\"}.fa-ruble:before,.fa-rouble:before,.fa-rub:before{content:\"\\f158\"}.fa-won:before,.fa-krw:before{content:\"\\f159\"}.fa-bitcoin:before,.fa-btc:before{content:\"\\f15a\"}.fa-file:before{content:\"\\f15b\"}.fa-file-text:before{content:\"\\f15c\"}.fa-sort-alpha-asc:before{content:\"\\f15d\"}.fa-sort-alpha-desc:before{content:\"\\f15e\"}.fa-sort-amount-asc:before{content:\"\\f160\"}.fa-sort-amount-desc:before{content:\"\\f161\"}.fa-sort-numeric-asc:before{content:\"\\f162\"}.fa-sort-numeric-desc:before{content:\"\\f163\"}.fa-thumbs-up:before{content:\"\\f164\"}.fa-thumbs-down:before{content:\"\\f165\"}.fa-youtube-square:before{content:\"\\f166\"}.fa-youtube:before{content:\"\\f167\"}.fa-xing:before{content:\"\\f168\"}.fa-xing-square:before{content:\"\\f169\"}.fa-youtube-play:before{content:\"\\f16a\"}.fa-dropbox:before{content:\"\\f16b\"}.fa-stack-overflow:before{content:\"\\f16c\"}.fa-instagram:before{content:\"\\f16d\"}.fa-flickr:before{content:\"\\f16e\"}.fa-adn:before{content:\"\\f170\"}.fa-bitbucket:before{content:\"\\f171\"}.fa-bitbucket-square:before{content:\"\\f172\"}.fa-tumblr:before{content:\"\\f173\"}.fa-tumblr-square:before{content:\"\\f174\"}.fa-long-arrow-down:before{content:\"\\f175\"}.fa-long-arrow-up:before{content:\"\\f176\"}.fa-long-arrow-left:before{content:\"\\f177\"}.fa-long-arrow-right:before{content:\"\\f178\"}.fa-apple:before{content:\"\\f179\"}.fa-windows:before{content:\"\\f17a\"}.fa-android:before{content:\"\\f17b\"}.fa-linux:before{content:\"\\f17c\"}.fa-dribbble:before{content:\"\\f17d\"}.fa-skype:before{content:\"\\f17e\"}.fa-foursquare:before{content:\"\\f180\"}.fa-trello:before{content:\"\\f181\"}.fa-female:before{content:\"\\f182\"}.fa-male:before{content:\"\\f183\"}.fa-gittip:before,.fa-gratipay:before{content:\"\\f184\"}.fa-sun-o:before{content:\"\\f185\"}.fa-moon-o:before{content:\"\\f186\"}.fa-archive:before{content:\"\\f187\"}.fa-bug:before{content:\"\\f188\"}.fa-vk:before{content:\"\\f189\"}.fa-weibo:before{content:\"\\f18a\"}.fa-renren:before{content:\"\\f18b\"}.fa-pagelines:before{content:\"\\f18c\"}.fa-stack-exchange:before{content:\"\\f18d\"}.fa-arrow-circle-o-right:before{content:\"\\f18e\"}.fa-arrow-circle-o-left:before{content:\"\\f190\"}.fa-toggle-left:before,.fa-caret-square-o-left:before{content:\"\\f191\"}.fa-dot-circle-o:before{content:\"\\f192\"}.fa-wheelchair:before{content:\"\\f193\"}.fa-vimeo-square:before{content:\"\\f194\"}.fa-turkish-lira:before,.fa-try:before{content:\"\\f195\"}.fa-plus-square-o:before{content:\"\\f196\"}.fa-space-shuttle:before{content:\"\\f197\"}.fa-slack:before{content:\"\\f198\"}.fa-envelope-square:before{content:\"\\f199\"}.fa-wordpress:before{content:\"\\f19a\"}.fa-openid:before{content:\"\\f19b\"}.fa-institution:before,.fa-bank:before,.fa-university:before{content:\"\\f19c\"}.fa-mortar-board:before,.fa-graduation-cap:before{content:\"\\f19d\"}.fa-yahoo:before{content:\"\\f19e\"}.fa-google:before{content:\"\\f1a0\"}.fa-reddit:before{content:\"\\f1a1\"}.fa-reddit-square:before{content:\"\\f1a2\"}.fa-stumbleupon-circle:before{content:\"\\f1a3\"}.fa-stumbleupon:before{content:\"\\f1a4\"}.fa-delicious:before{content:\"\\f1a5\"}.fa-digg:before{content:\"\\f1a6\"}.fa-pied-piper-pp:before{content:\"\\f1a7\"}.fa-pied-piper-alt:before{content:\"\\f1a8\"}.fa-drupal:before{content:\"\\f1a9\"}.fa-joomla:before{content:\"\\f1aa\"}.fa-language:before{content:\"\\f1ab\"}.fa-fax:before{content:\"\\f1ac\"}.fa-building:before{content:\"\\f1ad\"}.fa-child:before{content:\"\\f1ae\"}.fa-paw:before{content:\"\\f1b0\"}.fa-spoon:before{content:\"\\f1b1\"}.fa-cube:before{content:\"\\f1b2\"}.fa-cubes:before{content:\"\\f1b3\"}.fa-behance:before{content:\"\\f1b4\"}.fa-behance-square:before{content:\"\\f1b5\"}.fa-steam:before{content:\"\\f1b6\"}.fa-steam-square:before{content:\"\\f1b7\"}.fa-recycle:before{content:\"\\f1b8\"}.fa-automobile:before,.fa-car:before{content:\"\\f1b9\"}.fa-cab:before,.fa-taxi:before{content:\"\\f1ba\"}.fa-tree:before{content:\"\\f1bb\"}.fa-spotify:before{content:\"\\f1bc\"}.fa-deviantart:before{content:\"\\f1bd\"}.fa-soundcloud:before{content:\"\\f1be\"}.fa-database:before{content:\"\\f1c0\"}.fa-file-pdf-o:before{content:\"\\f1c1\"}.fa-file-word-o:before{content:\"\\f1c2\"}.fa-file-excel-o:before{content:\"\\f1c3\"}.fa-file-powerpoint-o:before{content:\"\\f1c4\"}.fa-file-photo-o:before,.fa-file-picture-o:before,.fa-file-image-o:before{content:\"\\f1c5\"}.fa-file-zip-o:before,.fa-file-archive-o:before{content:\"\\f1c6\"}.fa-file-sound-o:before,.fa-file-audio-o:before{content:\"\\f1c7\"}.fa-file-movie-o:before,.fa-file-video-o:before{content:\"\\f1c8\"}.fa-file-code-o:before{content:\"\\f1c9\"}.fa-vine:before{content:\"\\f1ca\"}.fa-codepen:before{content:\"\\f1cb\"}.fa-jsfiddle:before{content:\"\\f1cc\"}.fa-life-bouy:before,.fa-life-buoy:before,.fa-life-saver:before,.fa-support:before,.fa-life-ring:before{content:\"\\f1cd\"}.fa-circle-o-notch:before{content:\"\\f1ce\"}.fa-ra:before,.fa-resistance:before,.fa-rebel:before{content:\"\\f1d0\"}.fa-ge:before,.fa-empire:before{content:\"\\f1d1\"}.fa-git-square:before{content:\"\\f1d2\"}.fa-git:before{content:\"\\f1d3\"}.fa-y-combinator-square:before,.fa-yc-square:before,.fa-hacker-news:before{content:\"\\f1d4\"}.fa-tencent-weibo:before{content:\"\\f1d5\"}.fa-qq:before{content:\"\\f1d6\"}.fa-wechat:before,.fa-weixin:before{content:\"\\f1d7\"}.fa-send:before,.fa-paper-plane:before{content:\"\\f1d8\"}.fa-send-o:before,.fa-paper-plane-o:before{content:\"\\f1d9\"}.fa-history:before{content:\"\\f1da\"}.fa-circle-thin:before{content:\"\\f1db\"}.fa-header:before{content:\"\\f1dc\"}.fa-paragraph:before{content:\"\\f1dd\"}.fa-sliders:before{content:\"\\f1de\"}.fa-share-alt:before{content:\"\\f1e0\"}.fa-share-alt-square:before{content:\"\\f1e1\"}.fa-bomb:before{content:\"\\f1e2\"}.fa-soccer-ball-o:before,.fa-futbol-o:before{content:\"\\f1e3\"}.fa-tty:before{content:\"\\f1e4\"}.fa-binoculars:before{content:\"\\f1e5\"}.fa-plug:before{content:\"\\f1e6\"}.fa-slideshare:before{content:\"\\f1e7\"}.fa-twitch:before{content:\"\\f1e8\"}.fa-yelp:before{content:\"\\f1e9\"}.fa-newspaper-o:before{content:\"\\f1ea\"}.fa-wifi:before{content:\"\\f1eb\"}.fa-calculator:before{content:\"\\f1ec\"}.fa-paypal:before{content:\"\\f1ed\"}.fa-google-wallet:before{content:\"\\f1ee\"}.fa-cc-visa:before{content:\"\\f1f0\"}.fa-cc-mastercard:before{content:\"\\f1f1\"}.fa-cc-discover:before{content:\"\\f1f2\"}.fa-cc-amex:before{content:\"\\f1f3\"}.fa-cc-paypal:before{content:\"\\f1f4\"}.fa-cc-stripe:before{content:\"\\f1f5\"}.fa-bell-slash:before{content:\"\\f1f6\"}.fa-bell-slash-o:before{content:\"\\f1f7\"}.fa-trash:before{content:\"\\f1f8\"}.fa-copyright:before{content:\"\\f1f9\"}.fa-at:before{content:\"\\f1fa\"}.fa-eyedropper:before{content:\"\\f1fb\"}.fa-paint-brush:before{content:\"\\f1fc\"}.fa-birthday-cake:before{content:\"\\f1fd\"}.fa-area-chart:before{content:\"\\f1fe\"}.fa-pie-chart:before{content:\"\\f200\"}.fa-line-chart:before{content:\"\\f201\"}.fa-lastfm:before{content:\"\\f202\"}.fa-lastfm-square:before{content:\"\\f203\"}.fa-toggle-off:before{content:\"\\f204\"}.fa-toggle-on:before{content:\"\\f205\"}.fa-bicycle:before{content:\"\\f206\"}.fa-bus:before{content:\"\\f207\"}.fa-ioxhost:before{content:\"\\f208\"}.fa-angellist:before{content:\"\\f209\"}.fa-cc:before{content:\"\\f20a\"}.fa-shekel:before,.fa-sheqel:before,.fa-ils:before{content:\"\\f20b\"}.fa-meanpath:before{content:\"\\f20c\"}.fa-buysellads:before{content:\"\\f20d\"}.fa-connectdevelop:before{content:\"\\f20e\"}.fa-dashcube:before{content:\"\\f210\"}.fa-forumbee:before{content:\"\\f211\"}.fa-leanpub:before{content:\"\\f212\"}.fa-sellsy:before{content:\"\\f213\"}.fa-shirtsinbulk:before{content:\"\\f214\"}.fa-simplybuilt:before{content:\"\\f215\"}.fa-skyatlas:before{content:\"\\f216\"}.fa-cart-plus:before{content:\"\\f217\"}.fa-cart-arrow-down:before{content:\"\\f218\"}.fa-diamond:before{content:\"\\f219\"}.fa-ship:before{content:\"\\f21a\"}.fa-user-secret:before{content:\"\\f21b\"}.fa-motorcycle:before{content:\"\\f21c\"}.fa-street-view:before{content:\"\\f21d\"}.fa-heartbeat:before{content:\"\\f21e\"}.fa-venus:before{content:\"\\f221\"}.fa-mars:before{content:\"\\f222\"}.fa-mercury:before{content:\"\\f223\"}.fa-intersex:before,.fa-transgender:before{content:\"\\f224\"}.fa-transgender-alt:before{content:\"\\f225\"}.fa-venus-double:before{content:\"\\f226\"}.fa-mars-double:before{content:\"\\f227\"}.fa-venus-mars:before{content:\"\\f228\"}.fa-mars-stroke:before{content:\"\\f229\"}.fa-mars-stroke-v:before{content:\"\\f22a\"}.fa-mars-stroke-h:before{content:\"\\f22b\"}.fa-neuter:before{content:\"\\f22c\"}.fa-genderless:before{content:\"\\f22d\"}.fa-facebook-official:before{content:\"\\f230\"}.fa-pinterest-p:before{content:\"\\f231\"}.fa-whatsapp:before{content:\"\\f232\"}.fa-server:before{content:\"\\f233\"}.fa-user-plus:before{content:\"\\f234\"}.fa-user-times:before{content:\"\\f235\"}.fa-hotel:before,.fa-bed:before{content:\"\\f236\"}.fa-viacoin:before{content:\"\\f237\"}.fa-train:before{content:\"\\f238\"}.fa-subway:before{content:\"\\f239\"}.fa-medium:before{content:\"\\f23a\"}.fa-yc:before,.fa-y-combinator:before{content:\"\\f23b\"}.fa-optin-monster:before{content:\"\\f23c\"}.fa-opencart:before{content:\"\\f23d\"}.fa-expeditedssl:before{content:\"\\f23e\"}.fa-battery-4:before,.fa-battery:before,.fa-battery-full:before{content:\"\\f240\"}.fa-battery-3:before,.fa-battery-three-quarters:before{content:\"\\f241\"}.fa-battery-2:before,.fa-battery-half:before{content:\"\\f242\"}.fa-battery-1:before,.fa-battery-quarter:before{content:\"\\f243\"}.fa-battery-0:before,.fa-battery-empty:before{content:\"\\f244\"}.fa-mouse-pointer:before{content:\"\\f245\"}.fa-i-cursor:before{content:\"\\f246\"}.fa-object-group:before{content:\"\\f247\"}.fa-object-ungroup:before{content:\"\\f248\"}.fa-sticky-note:before{content:\"\\f249\"}.fa-sticky-note-o:before{content:\"\\f24a\"}.fa-cc-jcb:before{content:\"\\f24b\"}.fa-cc-diners-club:before{content:\"\\f24c\"}.fa-clone:before{content:\"\\f24d\"}.fa-balance-scale:before{content:\"\\f24e\"}.fa-hourglass-o:before{content:\"\\f250\"}.fa-hourglass-1:before,.fa-hourglass-start:before{content:\"\\f251\"}.fa-hourglass-2:before,.fa-hourglass-half:before{content:\"\\f252\"}.fa-hourglass-3:before,.fa-hourglass-end:before{content:\"\\f253\"}.fa-hourglass:before{content:\"\\f254\"}.fa-hand-grab-o:before,.fa-hand-rock-o:before{content:\"\\f255\"}.fa-hand-stop-o:before,.fa-hand-paper-o:before{content:\"\\f256\"}.fa-hand-scissors-o:before{content:\"\\f257\"}.fa-hand-lizard-o:before{content:\"\\f258\"}.fa-hand-spock-o:before{content:\"\\f259\"}.fa-hand-pointer-o:before{content:\"\\f25a\"}.fa-hand-peace-o:before{content:\"\\f25b\"}.fa-trademark:before{content:\"\\f25c\"}.fa-registered:before{content:\"\\f25d\"}.fa-creative-commons:before{content:\"\\f25e\"}.fa-gg:before{content:\"\\f260\"}.fa-gg-circle:before{content:\"\\f261\"}.fa-tripadvisor:before{content:\"\\f262\"}.fa-odnoklassniki:before{content:\"\\f263\"}.fa-odnoklassniki-square:before{content:\"\\f264\"}.fa-get-pocket:before{content:\"\\f265\"}.fa-wikipedia-w:before{content:\"\\f266\"}.fa-safari:before{content:\"\\f267\"}.fa-chrome:before{content:\"\\f268\"}.fa-firefox:before{content:\"\\f269\"}.fa-opera:before{content:\"\\f26a\"}.fa-internet-explorer:before{content:\"\\f26b\"}.fa-tv:before,.fa-television:before{content:\"\\f26c\"}.fa-contao:before{content:\"\\f26d\"}.fa-500px:before{content:\"\\f26e\"}.fa-amazon:before{content:\"\\f270\"}.fa-calendar-plus-o:before{content:\"\\f271\"}.fa-calendar-minus-o:before{content:\"\\f272\"}.fa-calendar-times-o:before{content:\"\\f273\"}.fa-calendar-check-o:before{content:\"\\f274\"}.fa-industry:before{content:\"\\f275\"}.fa-map-pin:before{content:\"\\f276\"}.fa-map-signs:before{content:\"\\f277\"}.fa-map-o:before{content:\"\\f278\"}.fa-map:before{content:\"\\f279\"}.fa-commenting:before{content:\"\\f27a\"}.fa-commenting-o:before{content:\"\\f27b\"}.fa-houzz:before{content:\"\\f27c\"}.fa-vimeo:before{content:\"\\f27d\"}.fa-black-tie:before{content:\"\\f27e\"}.fa-fonticons:before{content:\"\\f280\"}.fa-reddit-alien:before{content:\"\\f281\"}.fa-edge:before{content:\"\\f282\"}.fa-credit-card-alt:before{content:\"\\f283\"}.fa-codiepie:before{content:\"\\f284\"}.fa-modx:before{content:\"\\f285\"}.fa-fort-awesome:before{content:\"\\f286\"}.fa-usb:before{content:\"\\f287\"}.fa-product-hunt:before{content:\"\\f288\"}.fa-mixcloud:before{content:\"\\f289\"}.fa-scribd:before{content:\"\\f28a\"}.fa-pause-circle:before{content:\"\\f28b\"}.fa-pause-circle-o:before{content:\"\\f28c\"}.fa-stop-circle:before{content:\"\\f28d\"}.fa-stop-circle-o:before{content:\"\\f28e\"}.fa-shopping-bag:before{content:\"\\f290\"}.fa-shopping-basket:before{content:\"\\f291\"}.fa-hashtag:before{content:\"\\f292\"}.fa-bluetooth:before{content:\"\\f293\"}.fa-bluetooth-b:before{content:\"\\f294\"}.fa-percent:before{content:\"\\f295\"}.fa-gitlab:before{content:\"\\f296\"}.fa-wpbeginner:before{content:\"\\f297\"}.fa-wpforms:before{content:\"\\f298\"}.fa-envira:before{content:\"\\f299\"}.fa-universal-access:before{content:\"\\f29a\"}.fa-wheelchair-alt:before{content:\"\\f29b\"}.fa-question-circle-o:before{content:\"\\f29c\"}.fa-blind:before{content:\"\\f29d\"}.fa-audio-description:before{content:\"\\f29e\"}.fa-volume-control-phone:before{content:\"\\f2a0\"}.fa-braille:before{content:\"\\f2a1\"}.fa-assistive-listening-systems:before{content:\"\\f2a2\"}.fa-asl-interpreting:before,.fa-american-sign-language-interpreting:before{content:\"\\f2a3\"}.fa-deafness:before,.fa-hard-of-hearing:before,.fa-deaf:before{content:\"\\f2a4\"}.fa-glide:before{content:\"\\f2a5\"}.fa-glide-g:before{content:\"\\f2a6\"}.fa-signing:before,.fa-sign-language:before{content:\"\\f2a7\"}.fa-low-vision:before{content:\"\\f2a8\"}.fa-viadeo:before{content:\"\\f2a9\"}.fa-viadeo-square:before{content:\"\\f2aa\"}.fa-snapchat:before{content:\"\\f2ab\"}.fa-snapchat-ghost:before{content:\"\\f2ac\"}.fa-snapchat-square:before{content:\"\\f2ad\"}.fa-pied-piper:before{content:\"\\f2ae\"}.fa-first-order:before{content:\"\\f2b0\"}.fa-yoast:before{content:\"\\f2b1\"}.fa-themeisle:before{content:\"\\f2b2\"}.fa-google-plus-circle:before,.fa-google-plus-official:before{content:\"\\f2b3\"}.fa-fa:before,.fa-font-awesome:before{content:\"\\f2b4\"}.fa-handshake-o:before{content:\"\\f2b5\"}.fa-envelope-open:before{content:\"\\f2b6\"}.fa-envelope-open-o:before{content:\"\\f2b7\"}.fa-linode:before{content:\"\\f2b8\"}.fa-address-book:before{content:\"\\f2b9\"}.fa-address-book-o:before{content:\"\\f2ba\"}.fa-vcard:before,.fa-address-card:before{content:\"\\f2bb\"}.fa-vcard-o:before,.fa-address-card-o:before{content:\"\\f2bc\"}.fa-user-circle:before{content:\"\\f2bd\"}.fa-user-circle-o:before{content:\"\\f2be\"}.fa-user-o:before{content:\"\\f2c0\"}.fa-id-badge:before{content:\"\\f2c1\"}.fa-drivers-license:before,.fa-id-card:before{content:\"\\f2c2\"}.fa-drivers-license-o:before,.fa-id-card-o:before{content:\"\\f2c3\"}.fa-quora:before{content:\"\\f2c4\"}.fa-free-code-camp:before{content:\"\\f2c5\"}.fa-telegram:before{content:\"\\f2c6\"}.fa-thermometer-4:before,.fa-thermometer:before,.fa-thermometer-full:before{content:\"\\f2c7\"}.fa-thermometer-3:before,.fa-thermometer-three-quarters:before{content:\"\\f2c8\"}.fa-thermometer-2:before,.fa-thermometer-half:before{content:\"\\f2c9\"}.fa-thermometer-1:before,.fa-thermometer-quarter:before{content:\"\\f2ca\"}.fa-thermometer-0:before,.fa-thermometer-empty:before{content:\"\\f2cb\"}.fa-shower:before{content:\"\\f2cc\"}.fa-bathtub:before,.fa-s15:before,.fa-bath:before{content:\"\\f2cd\"}.fa-podcast:before{content:\"\\f2ce\"}.fa-window-maximize:before{content:\"\\f2d0\"}.fa-window-minimize:before{content:\"\\f2d1\"}.fa-window-restore:before{content:\"\\f2d2\"}.fa-times-rectangle:before,.fa-window-close:before{content:\"\\f2d3\"}.fa-times-rectangle-o:before,.fa-window-close-o:before{content:\"\\f2d4\"}.fa-bandcamp:before{content:\"\\f2d5\"}.fa-grav:before{content:\"\\f2d6\"}.fa-etsy:before{content:\"\\f2d7\"}.fa-imdb:before{content:\"\\f2d8\"}.fa-ravelry:before{content:\"\\f2d9\"}.fa-eercast:before{content:\"\\f2da\"}.fa-microchip:before{content:\"\\f2db\"}.fa-snowflake-o:before{content:\"\\f2dc\"}.fa-superpowers:before{content:\"\\f2dd\"}.fa-wpexplorer:before{content:\"\\f2de\"}.fa-meetup:before{content:\"\\f2e0\"}.sr-only{position:absolute;width:1px;height:1px;padding:0;margin:-1px;overflow:hidden;clip:rect(0, 0, 0, 0);border:0}.sr-only-focusable:active,.sr-only-focusable:focus{position:static;width:auto;height:auto;margin:0;overflow:visible;clip:auto}\n\";}', 'no'),
(768, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(769, 'woocommerce_tracker_ua', 'a:1:{i:0;s:115:\"mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/66.0.3359.181 safari/537.36\";}', 'yes'),
(770, 'duplicator_settings', 'a:10:{s:7:\"version\";s:6:\"1.2.38\";s:18:\"uninstall_settings\";b:1;s:15:\"uninstall_files\";b:1;s:16:\"uninstall_tables\";b:1;s:13:\"package_debug\";b:0;s:17:\"package_mysqldump\";b:1;s:22:\"package_mysqldump_path\";s:0:\"\";s:24:\"package_phpdump_qrylimit\";s:3:\"100\";s:17:\"package_zip_flush\";b:0;s:20:\"storage_htaccess_off\";b:0;}', 'yes'),
(771, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(772, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-4.9.6.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-4.9.6-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-4.9.6-new-bundled.zip\";s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.6\";s:7:\"version\";s:5:\"4.9.6\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1527333824;s:15:\"version_checked\";s:5:\"4.9.6\";s:12:\"translations\";a:0:{}}', 'no'),
(780, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1527327030;s:7:\"checked\";a:4:{s:10:\"bulmapress\";s:5:\"0.0.1\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.6\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}}', 'no'),
(781, '_transient_timeout_external_ip_address_172.16.99.113', '1527836921', 'no'),
(782, '_transient_external_ip_address_172.16.99.113', '101.100.11.94', 'no'),
(783, '_transient_is_multi_author', '0', 'yes'),
(784, '_transient_shipping-transient-version', '1527232148', 'yes'),
(785, '_transient_timeout_wc_shipping_method_count_1_1527232148', '1529824148', 'no'),
(786, '_transient_wc_shipping_method_count_1_1527232148', '2', 'no'),
(787, '_transient_bulmapress_categories', '1', 'yes'),
(790, '_transient_timeout_external_ip_address_13.56.32.134', '1527838389', 'no'),
(791, '_transient_external_ip_address_13.56.32.134', '101.100.11.94', 'no'),
(792, '_transient_timeout_external_ip_address_13.56.32.140', '1527838632', 'no'),
(793, '_transient_external_ip_address_13.56.32.140', '101.100.11.94', 'no'),
(794, '_transient_timeout_external_ip_address_118.149.215.29', '1527839531', 'no'),
(795, '_transient_external_ip_address_118.149.215.29', '101.100.11.94', 'no'),
(796, '_transient_timeout_external_ip_address_111.69.241.218', '1527899036', 'no'),
(797, '_transient_external_ip_address_111.69.241.218', '101.100.11.94', 'no'),
(798, '_transient_timeout_bfa-api-versions', '1527337437', 'no'),
(799, '_transient_bfa-api-versions', 'O:8:\"stdClass\":2:{s:8:\"versions\";a:20:{i:0;s:5:\"4.7.0\";i:1;s:5:\"4.6.3\";i:2;s:5:\"4.6.2\";i:3;s:5:\"4.6.1\";i:4;s:5:\"4.6.0\";i:5;s:5:\"4.5.0\";i:6;s:5:\"4.4.0\";i:7;s:5:\"4.3.0\";i:8;s:5:\"4.2.0\";i:9;s:5:\"4.1.0\";i:10;s:5:\"4.0.3\";i:11;s:5:\"4.0.1\";i:12;s:5:\"4.0.0\";i:13;s:5:\"3.2.1\";i:14;s:5:\"3.2.0\";i:15;s:5:\"3.1.1\";i:16;s:5:\"3.0.2\";i:17;s:3:\"3.0\";i:18;s:3:\"2.0\";i:19;s:5:\"1.0.0\";}s:11:\"lastversion\";s:5:\"4.7.0\";}', 'no'),
(805, '_transient_timeout_wc_term_counts', '1529886376', 'no'),
(806, '_transient_wc_term_counts', 'a:1:{i:17;s:1:\"5\";}', 'no'),
(807, '_transient_timeout_wc_related_81', '1527380776', 'no'),
(808, '_transient_wc_related_81', 'a:1:{s:50:\"limit=4&exclude_ids%5B0%5D=0&exclude_ids%5B1%5D=81\";a:4:{i:0;s:2:\"80\";i:1;s:2:\"82\";i:2;s:2:\"83\";i:3;s:2:\"84\";}}', 'no'),
(812, '_site_transient_timeout_browser_37852581c9557110c7bab064af517413', '1527931730', 'no'),
(813, '_site_transient_browser_37852581c9557110c7bab064af517413', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"66.0.3359.181\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(814, '_transient_timeout_wc_report_sales_by_date', '1527413880', 'no'),
(815, '_transient_wc_report_sales_by_date', 'a:16:{s:32:\"025a020c7c24e66e308ac30a5a4ba99d\";a:0:{}s:32:\"907312b71dfb9d0ce497b9206e8dccf4\";a:0:{}s:32:\"ebfc5adc80d8be88f84b186f3d19713c\";a:0:{}s:32:\"23b187baf6dabec5563eee7be40d7094\";N;s:32:\"9b4e42ef4eafb82b73a905715f32d150\";a:0:{}s:32:\"434affb0ee0fb088c3b41cd0b690feeb\";a:0:{}s:32:\"042950a08b7ed2435fa29c82ce7b573a\";a:0:{}s:32:\"722b7d6df0c17f066b59e286932aab25\";a:0:{}s:32:\"e7a517468f08668852b2ffe95267025a\";a:0:{}s:32:\"5eb0175446aa9684feb8fb53e4439339\";a:0:{}s:32:\"123dc0c8b46f22937707e0e45bb3732b\";a:0:{}s:32:\"9c8c44c082ef8a7fdc46fbef618bae56\";N;s:32:\"7d332f5b18c62450b5fa859259682a5a\";a:0:{}s:32:\"c0f796d514c4b98d47e042547d2c5c5d\";a:0:{}s:32:\"38185b8dc40c2f76df6c59a32b412511\";a:0:{}s:32:\"bb3005107714dbd028056ccd7a8a6884\";a:0:{}}', 'no'),
(816, '_transient_timeout_wc_admin_report', '1527413330', 'no'),
(817, '_transient_wc_admin_report', 'a:1:{s:32:\"977901f958b8dcac9f9e66a602d8d9fc\";a:0:{}}', 'no'),
(818, '_transient_timeout_wc_low_stock_count', '1529918930', 'no'),
(819, '_transient_wc_low_stock_count', '0', 'no'),
(820, '_transient_timeout_wc_outofstock_count', '1529918930', 'no'),
(821, '_transient_wc_outofstock_count', '0', 'no'),
(822, '_site_transient_timeout_community-events-72105cb490793a8c05dbbae926f9a2cb', '1527370132', 'no'),
(823, '_site_transient_community-events-72105cb490793a8c05dbbae926f9a2cb', 'a:2:{s:8:\"location\";a:1:{s:2:\"ip\";s:12:\"111.69.241.0\";}s:6:\"events\";a:3:{i:0;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:15:\"WordCamp Europe\";s:3:\"url\";s:33:\"https://2018.europe.wordcamp.org/\";s:6:\"meetup\";s:0:\"\";s:10:\"meetup_url\";s:0:\"\";s:4:\"date\";s:19:\"2018-06-14 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:16:\"Belgrade, Serbia\";s:7:\"country\";s:2:\"RS\";s:8:\"latitude\";d:44.8084970000000026857378543354570865631103515625;s:9:\"longitude\";d:20.43228500000000025238477974198758602142333984375;}}i:1;a:7:{s:4:\"type\";s:6:\"meetup\";s:5:\"title\";s:4:\"WP15\";s:3:\"url\";s:86:\"https://wordpress.org/news/2018/04/celebrate-the-wordpress-15th-anniversary-on-may-27/\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2018-05-27 12:00:00\";s:8:\"location\";a:1:{s:8:\"location\";s:10:\"Everywhere\";}}i:2;a:7:{s:4:\"type\";s:8:\"wordcamp\";s:5:\"title\";s:19:\"WordCamp Wellington\";s:3:\"url\";s:36:\"https://2018.wellington.wordcamp.org\";s:6:\"meetup\";N;s:10:\"meetup_url\";N;s:4:\"date\";s:19:\"2018-06-23 00:00:00\";s:8:\"location\";a:4:{s:8:\"location\";s:23:\"Wellington, New Zealand\";s:7:\"country\";s:2:\"NZ\";s:8:\"latitude\";d:-41.29039900000000073987393989227712154388427734375;s:9:\"longitude\";d:174.779336499999999432475306093692779541015625;}}}}', 'no'),
(824, '_transient_timeout__woocommerce_helper_subscriptions', '1527327883', 'no'),
(825, '_transient__woocommerce_helper_subscriptions', 'a:0:{}', 'no'),
(828, '_transient_timeout__woocommerce_helper_updates', '1527370183', 'no'),
(829, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1527326983;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(830, '_transient_timeout_plugin_slugs', '1527413457', 'no'),
(831, '_transient_plugin_slugs', 'a:5:{i:0;s:43:\"better-font-awesome/better-font-awesome.php\";i:1;s:25:\"duplicator/duplicator.php\";i:2;s:27:\"woocommerce/woocommerce.php\";i:3;s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";i:4;s:57:\"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php\";}', 'no'),
(832, '_transient_timeout_wc_upgrade_notice_3.4.0', '1527413385', 'no'),
(833, '_transient_wc_upgrade_notice_3.4.0', '', 'no'),
(837, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(838, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(839, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(840, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(841, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(842, 'woocommerce_trash_pending_orders', '', 'no'),
(843, 'woocommerce_trash_failed_orders', '', 'no'),
(844, 'woocommerce_trash_cancelled_orders', '', 'no'),
(845, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(846, 'woocommerce_single_image_width', '600', 'yes'),
(847, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(848, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(849, 'woocommerce_demo_store', 'no', 'no'),
(850, 'woocommerce_version', '3.4.0', 'yes'),
(853, '_transient_timeout_external_ip_address_192.168.240.212', '1527931821', 'no'),
(854, '_transient_external_ip_address_192.168.240.212', '101.100.11.94', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(858, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1527327056;s:7:\"checked\";a:5:{s:43:\"better-font-awesome/better-font-awesome.php\";s:5:\"1.7.1\";s:25:\"duplicator/duplicator.php\";s:6:\"1.2.38\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.4.0\";s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";s:5:\"1.5.5\";s:57:\"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php\";s:5:\"4.1.4\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:5:{s:43:\"better-font-awesome/better-font-awesome.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:33:\"w.org/plugins/better-font-awesome\";s:4:\"slug\";s:19:\"better-font-awesome\";s:6:\"plugin\";s:43:\"better-font-awesome/better-font-awesome.php\";s:11:\"new_version\";s:5:\"1.7.1\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/better-font-awesome/\";s:7:\"package\";s:68:\"https://downloads.wordpress.org/plugin/better-font-awesome.1.7.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/better-font-awesome/assets/icon-256x256.png?rev=1186438\";s:2:\"1x\";s:72:\"https://ps.w.org/better-font-awesome/assets/icon-128x128.png?rev=1207071\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/better-font-awesome/assets/banner-1544x500.jpg?rev=887838\";s:2:\"1x\";s:73:\"https://ps.w.org/better-font-awesome/assets/banner-772x250.jpg?rev=887838\";}s:11:\"banners_rtl\";a:0:{}}s:25:\"duplicator/duplicator.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:24:\"w.org/plugins/duplicator\";s:4:\"slug\";s:10:\"duplicator\";s:6:\"plugin\";s:25:\"duplicator/duplicator.php\";s:11:\"new_version\";s:6:\"1.2.38\";s:3:\"url\";s:41:\"https://wordpress.org/plugins/duplicator/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/duplicator.1.2.38.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/duplicator/assets/icon-256x256.png?rev=1298463\";s:2:\"1x\";s:63:\"https://ps.w.org/duplicator/assets/icon-128x128.png?rev=1298463\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:65:\"https://ps.w.org/duplicator/assets/banner-772x250.png?rev=1645055\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.4.0\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.4.0.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}}s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:57:\"w.org/plugins/woocommerce-gateway-paypal-express-checkout\";s:4:\"slug\";s:43:\"woocommerce-gateway-paypal-express-checkout\";s:6:\"plugin\";s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";s:11:\"new_version\";s:5:\"1.5.5\";s:3:\"url\";s:74:\"https://wordpress.org/plugins/woocommerce-gateway-paypal-express-checkout/\";s:7:\"package\";s:92:\"https://downloads.wordpress.org/plugin/woocommerce-gateway-paypal-express-checkout.1.5.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:96:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-256x256.png?rev=1410389\";s:2:\"1x\";s:96:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-128x128.png?rev=1410389\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:99:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-1544x500.png?rev=1410389\";s:2:\"1x\";s:98:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-772x250.png?rev=1410389\";}s:11:\"banners_rtl\";a:0:{}}s:57:\"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:40:\"w.org/plugins/woocommerce-gateway-stripe\";s:4:\"slug\";s:26:\"woocommerce-gateway-stripe\";s:6:\"plugin\";s:57:\"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php\";s:11:\"new_version\";s:5:\"4.1.4\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/woocommerce-gateway-stripe/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/woocommerce-gateway-stripe.4.1.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/woocommerce-gateway-stripe/assets/icon-256x256.png?rev=1799707\";s:2:\"1x\";s:79:\"https://ps.w.org/woocommerce-gateway-stripe/assets/icon-128x128.png?rev=1799707\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:82:\"https://ps.w.org/woocommerce-gateway-stripe/assets/banner-1544x500.png?rev=1799707\";s:2:\"1x\";s:81:\"https://ps.w.org/woocommerce-gateway-stripe/assets/banner-772x250.png?rev=1799707\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(860, 'wc_stripe_version', '4.1.4', 'yes'),
(864, '_site_transient_timeout_theme_roots', '1527335624', 'no'),
(865, '_site_transient_theme_roots', 'a:4:{s:10:\"bulmapress\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Table structure for table `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 3, '_wp_trash_meta_status', 'draft'),
(4, 3, '_wp_trash_meta_time', '1526944506'),
(5, 3, '_wp_desired_post_slug', 'privacy-policy'),
(6, 2, '_edit_lock', '1526945895:1'),
(7, 2, '_edit_last', '1'),
(8, 7, '_edit_last', '1'),
(9, 7, '_wp_page_template', 'default'),
(10, 7, '_edit_lock', '1526944381:1'),
(11, 9, '_edit_last', '1'),
(12, 9, '_wp_page_template', 'default'),
(13, 9, '_edit_lock', '1526944392:1'),
(14, 11, '_edit_last', '1'),
(15, 11, '_wp_page_template', 'default'),
(16, 11, '_edit_lock', '1526944399:1'),
(17, 13, '_edit_last', '1'),
(18, 13, '_wp_page_template', 'default'),
(19, 13, '_edit_lock', '1526944405:1'),
(20, 15, '_edit_last', '1'),
(21, 15, '_wp_page_template', 'default'),
(22, 15, '_edit_lock', '1526971191:1'),
(23, 17, '_edit_last', '1'),
(24, 17, '_wp_page_template', 'default'),
(25, 17, '_edit_lock', '1526967447:1'),
(26, 19, '_menu_item_type', 'post_type'),
(27, 19, '_menu_item_menu_item_parent', '0'),
(28, 19, '_menu_item_object_id', '17'),
(29, 19, '_menu_item_object', 'page'),
(30, 19, '_menu_item_target', ''),
(31, 19, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(32, 19, '_menu_item_xfn', ''),
(33, 19, '_menu_item_url', ''),
(35, 20, '_menu_item_type', 'post_type'),
(36, 20, '_menu_item_menu_item_parent', '0'),
(37, 20, '_menu_item_object_id', '15'),
(38, 20, '_menu_item_object', 'page'),
(39, 20, '_menu_item_target', ''),
(40, 20, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(41, 20, '_menu_item_xfn', ''),
(42, 20, '_menu_item_url', ''),
(53, 22, '_menu_item_type', 'post_type'),
(54, 22, '_menu_item_menu_item_parent', '0'),
(55, 22, '_menu_item_object_id', '11'),
(56, 22, '_menu_item_object', 'page'),
(57, 22, '_menu_item_target', ''),
(58, 22, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(59, 22, '_menu_item_xfn', ''),
(60, 22, '_menu_item_url', ''),
(62, 23, '_menu_item_type', 'post_type'),
(63, 23, '_menu_item_menu_item_parent', '0'),
(64, 23, '_menu_item_object_id', '9'),
(65, 23, '_menu_item_object', 'page'),
(66, 23, '_menu_item_target', ''),
(67, 23, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(68, 23, '_menu_item_xfn', ''),
(69, 23, '_menu_item_url', ''),
(71, 24, '_menu_item_type', 'post_type'),
(72, 24, '_menu_item_menu_item_parent', '0'),
(73, 24, '_menu_item_object_id', '7'),
(74, 24, '_menu_item_object', 'page'),
(75, 24, '_menu_item_target', ''),
(76, 24, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(77, 24, '_menu_item_xfn', ''),
(78, 24, '_menu_item_url', ''),
(89, 26, '_wp_attached_file', '2018/05/8ced9a191814ed109399caa9c8354b54-music-gifts-stainless-steel-travel-mug-1.jpg'),
(90, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:630;s:6:\"height\";i:630;s:4:\"file\";s:85:\"2018/05/8ced9a191814ed109399caa9c8354b54-music-gifts-stainless-steel-travel-mug-1.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:85:\"8ced9a191814ed109399caa9c8354b54-music-gifts-stainless-steel-travel-mug-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:85:\"8ced9a191814ed109399caa9c8354b54-music-gifts-stainless-steel-travel-mug-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:85:\"8ced9a191814ed109399caa9c8354b54-music-gifts-stainless-steel-travel-mug-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:85:\"8ced9a191814ed109399caa9c8354b54-music-gifts-stainless-steel-travel-mug-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:85:\"8ced9a191814ed109399caa9c8354b54-music-gifts-stainless-steel-travel-mug-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"widget\";a:4:{s:4:\"file\";s:85:\"8ced9a191814ed109399caa9c8354b54-music-gifts-stainless-steel-travel-mug-1-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(91, 27, '_wp_attached_file', '2018/05/41OmDRAjQuL._UY395_-1.jpg'),
(92, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:395;s:6:\"height\";i:395;s:4:\"file\";s:33:\"2018/05/41OmDRAjQuL._UY395_-1.jpg\";s:5:\"sizes\";a:5:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:33:\"41OmDRAjQuL._UY395_-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:33:\"41OmDRAjQuL._UY395_-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"41OmDRAjQuL._UY395_-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"41OmDRAjQuL._UY395_-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"widget\";a:4:{s:4:\"file\";s:33:\"41OmDRAjQuL._UY395_-1-395x300.jpg\";s:5:\"width\";i:395;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(93, 28, '_wp_attached_file', '2018/05/772abea7c6a3538e96435f302593ea78-stainless-steel-water-bottle-music-gifts-1.jpg'),
(94, 28, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:87:\"2018/05/772abea7c6a3538e96435f302593ea78-stainless-steel-water-bottle-music-gifts-1.jpg\";s:5:\"sizes\";a:5:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:87:\"772abea7c6a3538e96435f302593ea78-stainless-steel-water-bottle-music-gifts-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:87:\"772abea7c6a3538e96435f302593ea78-stainless-steel-water-bottle-music-gifts-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:87:\"772abea7c6a3538e96435f302593ea78-stainless-steel-water-bottle-music-gifts-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:87:\"772abea7c6a3538e96435f302593ea78-stainless-steel-water-bottle-music-gifts-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"widget\";a:4:{s:4:\"file\";s:87:\"772abea7c6a3538e96435f302593ea78-stainless-steel-water-bottle-music-gifts-1-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(95, 29, '_wp_attached_file', '2018/05/acddb1ef18cba21185817cb81e85c1f2-1.jpg'),
(96, 29, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:500;s:4:\"file\";s:46:\"2018/05/acddb1ef18cba21185817cb81e85c1f2-1.jpg\";s:5:\"sizes\";a:5:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:46:\"acddb1ef18cba21185817cb81e85c1f2-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:46:\"acddb1ef18cba21185817cb81e85c1f2-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:46:\"acddb1ef18cba21185817cb81e85c1f2-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:46:\"acddb1ef18cba21185817cb81e85c1f2-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"widget\";a:4:{s:4:\"file\";s:46:\"acddb1ef18cba21185817cb81e85c1f2-1-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(97, 30, '_wp_attached_file', '2018/05/agora-cafe-breakfast-3.png'),
(98, 30, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:458;s:6:\"height\";i:455;s:4:\"file\";s:34:\"2018/05/agora-cafe-breakfast-3.png\";s:5:\"sizes\";a:5:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:34:\"agora-cafe-breakfast-3-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:34:\"agora-cafe-breakfast-3-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"agora-cafe-breakfast-3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"agora-cafe-breakfast-3-300x298.png\";s:5:\"width\";i:300;s:6:\"height\";i:298;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"widget\";a:4:{s:4:\"file\";s:34:\"agora-cafe-breakfast-3-400x300.png\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(99, 31, '_wp_attached_file', '2018/05/dementia-cafe-banner-09072015-3.jpg'),
(100, 31, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1280;s:6:\"height\";i:475;s:4:\"file\";s:43:\"2018/05/dementia-cafe-banner-09072015-3.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:43:\"dementia-cafe-banner-09072015-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:43:\"dementia-cafe-banner-09072015-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:43:\"dementia-cafe-banner-09072015-3-600x223.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:223;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:43:\"dementia-cafe-banner-09072015-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:43:\"dementia-cafe-banner-09072015-3-300x111.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:111;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:43:\"dementia-cafe-banner-09072015-3-768x285.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:285;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:44:\"dementia-cafe-banner-09072015-3-1024x380.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:380;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"widget\";a:4:{s:4:\"file\";s:43:\"dementia-cafe-banner-09072015-3-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"13\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:20:\"Canon EOS 5D Mark II\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1358951507\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"123\";s:3:\"iso\";s:3:\"100\";s:13:\"shutter_speed\";s:4:\"0.01\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(101, 32, '_wp_attached_file', '2018/05/dementia-music-therapy-136399362873503901-150721121048-3.jpg'),
(102, 32, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:648;s:6:\"height\";i:365;s:4:\"file\";s:68:\"2018/05/dementia-music-therapy-136399362873503901-150721121048-3.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:68:\"dementia-music-therapy-136399362873503901-150721121048-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:68:\"dementia-music-therapy-136399362873503901-150721121048-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:68:\"dementia-music-therapy-136399362873503901-150721121048-3-600x338.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:68:\"dementia-music-therapy-136399362873503901-150721121048-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:68:\"dementia-music-therapy-136399362873503901-150721121048-3-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"widget\";a:4:{s:4:\"file\";s:68:\"dementia-music-therapy-136399362873503901-150721121048-3-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(103, 33, '_wp_attached_file', '2018/05/enjoying-music-therapy-3.jpg'),
(104, 33, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:570;s:4:\"file\";s:36:\"2018/05/enjoying-music-therapy-3.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"enjoying-music-therapy-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"enjoying-music-therapy-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:36:\"enjoying-music-therapy-3-600x428.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:428;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"enjoying-music-therapy-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"enjoying-music-therapy-3-300x214.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:214;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"enjoying-music-therapy-3-768x547.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:547;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"widget\";a:4:{s:4:\"file\";s:36:\"enjoying-music-therapy-3-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:14:\"Richard Weaver\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(105, 34, '_wp_attached_file', '2018/05/esme-300x300-3.jpg'),
(106, 34, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:26:\"2018/05/esme-300x300-3.jpg\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"esme-300x300-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"esme-300x300-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"widget\";a:4:{s:4:\"file\";s:26:\"esme-300x300-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(107, 35, '_wp_attached_file', '2018/05/felicity-baker-dementia-1pwzghq-3.jpg'),
(108, 35, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1170;s:6:\"height\";i:629;s:4:\"file\";s:45:\"2018/05/felicity-baker-dementia-1pwzghq-3.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:45:\"felicity-baker-dementia-1pwzghq-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:45:\"felicity-baker-dementia-1pwzghq-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:45:\"felicity-baker-dementia-1pwzghq-3-600x323.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:323;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:45:\"felicity-baker-dementia-1pwzghq-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:45:\"felicity-baker-dementia-1pwzghq-3-300x161.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:161;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:45:\"felicity-baker-dementia-1pwzghq-3-768x413.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:413;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:46:\"felicity-baker-dementia-1pwzghq-3-1024x551.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:551;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"widget\";a:4:{s:4:\"file\";s:45:\"felicity-baker-dementia-1pwzghq-3-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(109, 36, '_wp_attached_file', '2018/05/Guideposts-3.jpg'),
(110, 36, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:574;s:6:\"height\";i:355;s:4:\"file\";s:24:\"2018/05/Guideposts-3.jpg\";s:5:\"sizes\";a:5:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"Guideposts-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"Guideposts-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"Guideposts-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"Guideposts-3-300x186.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:186;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"widget\";a:4:{s:4:\"file\";s:24:\"Guideposts-3-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(111, 37, '_wp_attached_file', '2018/05/Helen-McGann-300x300-3.jpg'),
(112, 37, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:34:\"2018/05/Helen-McGann-300x300-3.jpg\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:34:\"Helen-McGann-300x300-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"Helen-McGann-300x300-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"widget\";a:4:{s:4:\"file\";s:34:\"Helen-McGann-300x300-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(113, 38, '_wp_attached_file', '2018/05/image.skreened-t-shirt.white_.w460h520b3z1-1.jpg'),
(114, 38, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:460;s:6:\"height\";i:520;s:4:\"file\";s:56:\"2018/05/image.skreened-t-shirt.white_.w460h520b3z1-1.jpg\";s:5:\"sizes\";a:5:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:56:\"image.skreened-t-shirt.white_.w460h520b3z1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:56:\"image.skreened-t-shirt.white_.w460h520b3z1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:56:\"image.skreened-t-shirt.white_.w460h520b3z1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:56:\"image.skreened-t-shirt.white_.w460h520b3z1-1-265x300.jpg\";s:5:\"width\";i:265;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"widget\";a:4:{s:4:\"file\";s:56:\"image.skreened-t-shirt.white_.w460h520b3z1-1-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(115, 39, '_wp_attached_file', '2018/05/iStock-478815074-web-4.jpg'),
(116, 39, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2048;s:6:\"height\";i:1024;s:4:\"file\";s:34:\"2018/05/iStock-478815074-web-4.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:34:\"iStock-478815074-web-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:34:\"iStock-478815074-web-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:34:\"iStock-478815074-web-4-600x300.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"iStock-478815074-web-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"iStock-478815074-web-4-300x150.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"iStock-478815074-web-4-768x384.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:384;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"iStock-478815074-web-4-1024x512.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"widget\";a:4:{s:4:\"file\";s:34:\"iStock-478815074-web-4-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(117, 40, '_wp_attached_file', '2018/05/Kath-Woodley-300x300-3.jpg'),
(118, 40, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:34:\"2018/05/Kath-Woodley-300x300-3.jpg\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:34:\"Kath-Woodley-300x300-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"Kath-Woodley-300x300-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"widget\";a:4:{s:4:\"file\";s:34:\"Kath-Woodley-300x300-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(119, 41, '_wp_attached_file', '2018/05/mmt-team-1024x707-3.jpg'),
(120, 41, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:707;s:4:\"file\";s:31:\"2018/05/mmt-team-1024x707-3.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"mmt-team-1024x707-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"mmt-team-1024x707-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:31:\"mmt-team-1024x707-3-600x414.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:414;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"mmt-team-1024x707-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"mmt-team-1024x707-3-300x207.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:207;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"mmt-team-1024x707-3-768x530.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:530;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"mmt-team-1024x707-3-1024x707.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:707;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"widget\";a:4:{s:4:\"file\";s:31:\"mmt-team-1024x707-3-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(121, 42, '_wp_attached_file', '2018/05/MorningTeaMoonlight-3.png'),
(122, 42, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:458;s:6:\"height\";i:455;s:4:\"file\";s:33:\"2018/05/MorningTeaMoonlight-3.png\";s:5:\"sizes\";a:5:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:33:\"MorningTeaMoonlight-3-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:33:\"MorningTeaMoonlight-3-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"MorningTeaMoonlight-3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"MorningTeaMoonlight-3-300x298.png\";s:5:\"width\";i:300;s:6:\"height\";i:298;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"widget\";a:4:{s:4:\"file\";s:33:\"MorningTeaMoonlight-3-400x300.png\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(123, 43, '_wp_attached_file', '2018/05/Music_Therapy_Appeal1-1.jpg'),
(124, 43, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:978;s:6:\"height\";i:651;s:4:\"file\";s:35:\"2018/05/Music_Therapy_Appeal1-1.jpg\";s:5:\"sizes\";a:7:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"Music_Therapy_Appeal1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"Music_Therapy_Appeal1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"Music_Therapy_Appeal1-1-600x399.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:399;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"Music_Therapy_Appeal1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"Music_Therapy_Appeal1-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"Music_Therapy_Appeal1-1-768x511.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:511;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"widget\";a:4:{s:4:\"file\";s:35:\"Music_Therapy_Appeal1-1-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"4\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:8:\"NIKON D3\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1277683200\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"78\";s:3:\"iso\";s:3:\"800\";s:13:\"shutter_speed\";s:4:\"0.01\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(125, 44, '_wp_attached_file', '2018/05/musictherapy-3.jpg'),
(126, 44, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:725;s:6:\"height\";i:485;s:4:\"file\";s:26:\"2018/05/musictherapy-3.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"musictherapy-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"musictherapy-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"musictherapy-3-600x401.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:401;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"musictherapy-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"musictherapy-3-300x201.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:201;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"widget\";a:4:{s:4:\"file\";s:26:\"musictherapy-3-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:3:\"7.1\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:10:\"NIKON D300\";s:7:\"caption\";s:133:\"MARIO BARTEL/NEWSLEADER\rMeaghan Jackson works with Mary Johnson, one of her music therapy clients at St. Michael\'s Centre in Burnaby.\";s:17:\"created_timestamp\";s:10:\"1328704101\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:2:\"22\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:5:\"0.025\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(127, 45, '_wp_attached_file', '2018/05/Music-therapy-improves-dementia-640x360.jpg'),
(128, 45, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:360;s:4:\"file\";s:51:\"2018/05/Music-therapy-improves-dementia-640x360.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:51:\"Music-therapy-improves-dementia-640x360-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:51:\"Music-therapy-improves-dementia-640x360-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:51:\"Music-therapy-improves-dementia-640x360-600x338.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:338;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:51:\"Music-therapy-improves-dementia-640x360-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:51:\"Music-therapy-improves-dementia-640x360-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"widget\";a:4:{s:4:\"file\";s:51:\"Music-therapy-improves-dementia-640x360-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(129, 46, '_wp_attached_file', '2018/05/music-therapy-mha-3.jpg'),
(130, 46, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:500;s:6:\"height\";i:309;s:4:\"file\";s:31:\"2018/05/music-therapy-mha-3.jpg\";s:5:\"sizes\";a:5:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"music-therapy-mha-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"music-therapy-mha-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"music-therapy-mha-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"music-therapy-mha-3-300x185.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:185;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"widget\";a:4:{s:4:\"file\";s:31:\"music-therapy-mha-3-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(131, 47, '_wp_attached_file', '2018/05/Nolan-1-3.jpg'),
(132, 47, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:248;s:6:\"height\";i:242;s:4:\"file\";s:21:\"2018/05/Nolan-1-3.jpg\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"Nolan-1-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"Nolan-1-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(133, 48, '_wp_attached_file', '2018/05/old-people-singing-z8roe7-2.jpg'),
(134, 48, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:800;s:4:\"file\";s:39:\"2018/05/old-people-singing-z8roe7-2.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:39:\"old-people-singing-z8roe7-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:39:\"old-people-singing-z8roe7-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:39:\"old-people-singing-z8roe7-2-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:39:\"old-people-singing-z8roe7-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:39:\"old-people-singing-z8roe7-2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:39:\"old-people-singing-z8roe7-2-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:40:\"old-people-singing-z8roe7-2-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"widget\";a:4:{s:4:\"file\";s:39:\"old-people-singing-z8roe7-2-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(135, 49, '_wp_attached_file', '2018/05/OutInTheStyx-3.png'),
(136, 49, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:458;s:6:\"height\";i:455;s:4:\"file\";s:26:\"2018/05/OutInTheStyx-3.png\";s:5:\"sizes\";a:5:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"OutInTheStyx-3-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"OutInTheStyx-3-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"OutInTheStyx-3-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"OutInTheStyx-3-300x298.png\";s:5:\"width\";i:300;s:6:\"height\";i:298;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"widget\";a:4:{s:4:\"file\";s:26:\"OutInTheStyx-3-400x300.png\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(137, 50, '_wp_attached_file', '2018/05/Regis-Aged-Care-Music-Memories-e1486526936489-2.jpg'),
(138, 50, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1300;s:6:\"height\";i:866;s:4:\"file\";s:59:\"2018/05/Regis-Aged-Care-Music-Memories-e1486526936489-2.jpg\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:59:\"Regis-Aged-Care-Music-Memories-e1486526936489-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:59:\"Regis-Aged-Care-Music-Memories-e1486526936489-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:59:\"Regis-Aged-Care-Music-Memories-e1486526936489-2-600x400.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:400;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:59:\"Regis-Aged-Care-Music-Memories-e1486526936489-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:59:\"Regis-Aged-Care-Music-Memories-e1486526936489-2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:59:\"Regis-Aged-Care-Music-Memories-e1486526936489-2-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:60:\"Regis-Aged-Care-Music-Memories-e1486526936489-2-1024x682.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:682;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"widget\";a:4:{s:4:\"file\";s:59:\"Regis-Aged-Care-Music-Memories-e1486526936489-2-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"1\";s:8:\"keywords\";a:0:{}}}'),
(139, 51, '_wp_attached_file', '2018/05/shari-278x300-3.jpg'),
(140, 51, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:278;s:6:\"height\";i:300;s:4:\"file\";s:27:\"2018/05/shari-278x300-3.jpg\";s:5:\"sizes\";a:5:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"shari-278x300-3-278x300.jpg\";s:5:\"width\";i:278;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"shari-278x300-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"shari-278x300-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"shari-278x300-3-278x300.jpg\";s:5:\"width\";i:278;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"widget\";a:4:{s:4:\"file\";s:27:\"shari-278x300-3-278x300.jpg\";s:5:\"width\";i:278;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(141, 52, '_wp_attached_file', '2018/05/Shona2-3.jpg'),
(142, 52, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:239;s:6:\"height\";i:317;s:4:\"file\";s:20:\"2018/05/Shona2-3.jpg\";s:5:\"sizes\";a:5:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"Shona2-3-239x300.jpg\";s:5:\"width\";i:239;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"Shona2-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Shona2-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Shona2-3-226x300.jpg\";s:5:\"width\";i:226;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"widget\";a:4:{s:4:\"file\";s:20:\"Shona2-3-239x300.jpg\";s:5:\"width\";i:239;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(143, 53, '_wp_attached_file', '2018/05/Super-Fashion-Great-Design-Brooch-Rhinestone-Music-Note-Collar-sleeve-buckle-Pin-brooches-Jewelry-Gift-1.jpg_640x640-1.jpg'),
(144, 53, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:640;s:6:\"height\";i:640;s:4:\"file\";s:130:\"2018/05/Super-Fashion-Great-Design-Brooch-Rhinestone-Music-Note-Collar-sleeve-buckle-Pin-brooches-Jewelry-Gift-1.jpg_640x640-1.jpg\";s:5:\"sizes\";a:6:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:130:\"Super-Fashion-Great-Design-Brooch-Rhinestone-Music-Note-Collar-sleeve-buckle-Pin-brooches-Jewelry-Gift-1.jpg_640x640-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:130:\"Super-Fashion-Great-Design-Brooch-Rhinestone-Music-Note-Collar-sleeve-buckle-Pin-brooches-Jewelry-Gift-1.jpg_640x640-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:130:\"Super-Fashion-Great-Design-Brooch-Rhinestone-Music-Note-Collar-sleeve-buckle-Pin-brooches-Jewelry-Gift-1.jpg_640x640-1-600x600.jpg\";s:5:\"width\";i:600;s:6:\"height\";i:600;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:130:\"Super-Fashion-Great-Design-Brooch-Rhinestone-Music-Note-Collar-sleeve-buckle-Pin-brooches-Jewelry-Gift-1.jpg_640x640-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:130:\"Super-Fashion-Great-Design-Brooch-Rhinestone-Music-Note-Collar-sleeve-buckle-Pin-brooches-Jewelry-Gift-1.jpg_640x640-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"widget\";a:4:{s:4:\"file\";s:130:\"Super-Fashion-Great-Design-Brooch-Rhinestone-Music-Note-Collar-sleeve-buckle-Pin-brooches-Jewelry-Gift-1.jpg_640x640-1-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(145, 54, '_wp_attached_file', '2018/05/Vicki-Jones-300x300-4.jpg'),
(146, 54, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:300;s:6:\"height\";i:300;s:4:\"file\";s:33:\"2018/05/Vicki-Jones-300x300-4.jpg\";s:5:\"sizes\";a:3:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:33:\"Vicki-Jones-300x300-4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"Vicki-Jones-300x300-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"widget\";a:4:{s:4:\"file\";s:33:\"Vicki-Jones-300x300-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(147, 55, '_wp_attached_file', '2018/05/weit044_1-1.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(148, 55, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:588;s:6:\"height\";i:784;s:4:\"file\";s:23:\"2018/05/weit044_1-1.jpg\";s:5:\"sizes\";a:5:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"weit044_1-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"weit044_1-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"weit044_1-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"weit044_1-1-225x300.jpg\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"widget\";a:4:{s:4:\"file\";s:23:\"weit044_1-1-400x300.jpg\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(149, 56, '_wp_attached_file', '2018/05/New-Logo-2.png'),
(150, 56, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2797;s:6:\"height\";i:1066;s:4:\"file\";s:22:\"2018/05/New-Logo-2.png\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"New-Logo-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"New-Logo-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"New-Logo-2-600x229.png\";s:5:\"width\";i:600;s:6:\"height\";i:229;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"New-Logo-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"New-Logo-2-300x114.png\";s:5:\"width\";i:300;s:6:\"height\";i:114;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"New-Logo-2-768x293.png\";s:5:\"width\";i:768;s:6:\"height\";i:293;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"New-Logo-2-1024x390.png\";s:5:\"width\";i:1024;s:6:\"height\";i:390;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"widget\";a:4:{s:4:\"file\";s:22:\"New-Logo-2-400x300.png\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(151, 57, '_wp_attached_file', '2018/05/cropped-New-Logo-2.png'),
(152, 57, '_wp_attachment_context', 'custom-logo'),
(153, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:2797;s:6:\"height\";i:1066;s:4:\"file\";s:30:\"2018/05/cropped-New-Logo-2.png\";s:5:\"sizes\";a:8:{s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"cropped-New-Logo-2-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"cropped-New-Logo-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"cropped-New-Logo-2-600x229.png\";s:5:\"width\";i:600;s:6:\"height\";i:229;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"cropped-New-Logo-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"cropped-New-Logo-2-300x114.png\";s:5:\"width\";i:300;s:6:\"height\";i:114;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"cropped-New-Logo-2-768x293.png\";s:5:\"width\";i:768;s:6:\"height\";i:293;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"cropped-New-Logo-2-1024x390.png\";s:5:\"width\";i:1024;s:6:\"height\";i:390;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"widget\";a:4:{s:4:\"file\";s:30:\"cropped-New-Logo-2-400x300.png\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(154, 58, '_wp_attached_file', '2018/05/cropped-New-Logo-2-1.png'),
(155, 58, '_wp_attachment_context', 'site-icon'),
(156, 58, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:512;s:6:\"height\";i:512;s:4:\"file\";s:32:\"2018/05/cropped-New-Logo-2-1.png\";s:5:\"sizes\";a:7:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:32:\"cropped-New-Logo-2-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:32:\"cropped-New-Logo-2-1-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"widget\";a:4:{s:4:\"file\";s:32:\"cropped-New-Logo-2-1-400x300.png\";s:5:\"width\";i:400;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-270\";a:4:{s:4:\"file\";s:32:\"cropped-New-Logo-2-1-270x270.png\";s:5:\"width\";i:270;s:6:\"height\";i:270;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-192\";a:4:{s:4:\"file\";s:32:\"cropped-New-Logo-2-1-192x192.png\";s:5:\"width\";i:192;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:13:\"site_icon-180\";a:4:{s:4:\"file\";s:32:\"cropped-New-Logo-2-1-180x180.png\";s:5:\"width\";i:180;s:6:\"height\";i:180;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"site_icon-32\";a:4:{s:4:\"file\";s:30:\"cropped-New-Logo-2-1-32x32.png\";s:5:\"width\";i:32;s:6:\"height\";i:32;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(157, 59, '_wp_trash_meta_status', 'publish'),
(158, 59, '_wp_trash_meta_time', '1526944833'),
(159, 60, '_menu_item_type', 'post_type'),
(160, 60, '_menu_item_menu_item_parent', '0'),
(161, 60, '_menu_item_object_id', '17'),
(162, 60, '_menu_item_object', 'page'),
(163, 60, '_menu_item_target', ''),
(164, 60, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(165, 60, '_menu_item_xfn', ''),
(166, 60, '_menu_item_url', ''),
(168, 61, '_menu_item_type', 'post_type'),
(169, 61, '_menu_item_menu_item_parent', '0'),
(170, 61, '_menu_item_object_id', '15'),
(171, 61, '_menu_item_object', 'page'),
(172, 61, '_menu_item_target', ''),
(173, 61, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(174, 61, '_menu_item_xfn', ''),
(175, 61, '_menu_item_url', ''),
(186, 63, '_menu_item_type', 'post_type'),
(187, 63, '_menu_item_menu_item_parent', '0'),
(188, 63, '_menu_item_object_id', '11'),
(189, 63, '_menu_item_object', 'page'),
(190, 63, '_menu_item_target', ''),
(191, 63, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(192, 63, '_menu_item_xfn', ''),
(193, 63, '_menu_item_url', ''),
(195, 64, '_menu_item_type', 'post_type'),
(196, 64, '_menu_item_menu_item_parent', '0'),
(197, 64, '_menu_item_object_id', '9'),
(198, 64, '_menu_item_object', 'page'),
(199, 64, '_menu_item_target', ''),
(200, 64, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(201, 64, '_menu_item_xfn', ''),
(202, 64, '_menu_item_url', ''),
(204, 65, '_menu_item_type', 'post_type'),
(205, 65, '_menu_item_menu_item_parent', '0'),
(206, 65, '_menu_item_object_id', '7'),
(207, 65, '_menu_item_object', 'page'),
(208, 65, '_menu_item_target', ''),
(209, 65, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(210, 65, '_menu_item_xfn', ''),
(211, 65, '_menu_item_url', ''),
(213, 66, '_menu_item_type', 'post_type'),
(214, 66, '_menu_item_menu_item_parent', '0'),
(215, 66, '_menu_item_object_id', '2'),
(216, 66, '_menu_item_object', 'page'),
(217, 66, '_menu_item_target', ''),
(218, 66, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(219, 66, '_menu_item_xfn', ''),
(220, 66, '_menu_item_url', ''),
(222, 68, '_edit_lock', '1526949457:1'),
(223, 68, '_wp_trash_meta_status', 'publish'),
(224, 68, '_wp_trash_meta_time', '1526949464'),
(225, 1, '_edit_lock', '1526949389:1'),
(226, 1, '_edit_last', '1'),
(227, 1, '_thumbnail_id', '32'),
(230, 70, '_edit_last', '1'),
(231, 70, '_edit_lock', '1526949412:1'),
(232, 70, '_thumbnail_id', '39'),
(235, 72, '_edit_last', '1'),
(236, 72, '_edit_lock', '1527222172:1'),
(237, 72, '_thumbnail_id', '35'),
(242, 74, '_edit_last', '1'),
(243, 74, '_edit_lock', '1527131802:1'),
(244, 74, '_thumbnail_id', '50'),
(245, 75, '_edit_last', '1'),
(246, 75, '_edit_lock', '1527131788:1'),
(247, 75, '_thumbnail_id', '48'),
(248, 76, '_edit_last', '1'),
(249, 76, '_edit_lock', '1527131772:1'),
(250, 76, '_thumbnail_id', '36'),
(251, 80, '_wc_review_count', '0'),
(252, 80, '_wc_rating_count', 'a:0:{}'),
(253, 80, '_wc_average_rating', '0'),
(254, 80, '_edit_last', '1'),
(255, 80, '_edit_lock', '1527131328:1'),
(256, 80, '_thumbnail_id', '38'),
(257, 80, '_sku', ''),
(258, 80, '_regular_price', '12.00'),
(259, 80, '_sale_price', ''),
(260, 80, '_sale_price_dates_from', ''),
(261, 80, '_sale_price_dates_to', ''),
(262, 80, 'total_sales', '0'),
(263, 80, '_tax_status', 'taxable'),
(264, 80, '_tax_class', ''),
(265, 80, '_manage_stock', 'no'),
(266, 80, '_backorders', 'no'),
(267, 80, '_sold_individually', 'no'),
(268, 80, '_weight', ''),
(269, 80, '_length', ''),
(270, 80, '_width', ''),
(271, 80, '_height', ''),
(272, 80, '_upsell_ids', 'a:0:{}'),
(273, 80, '_crosssell_ids', 'a:0:{}'),
(274, 80, '_purchase_note', ''),
(275, 80, '_default_attributes', 'a:0:{}'),
(276, 80, '_virtual', 'no'),
(277, 80, '_downloadable', 'no'),
(278, 80, '_product_image_gallery', ''),
(279, 80, '_download_limit', '-1'),
(280, 80, '_download_expiry', '-1'),
(281, 80, '_stock', NULL),
(282, 80, '_stock_status', 'instock'),
(283, 80, '_product_version', '3.3.5'),
(284, 80, '_price', '12.00'),
(285, 81, '_wc_review_count', '0'),
(286, 81, '_wc_rating_count', 'a:0:{}'),
(287, 81, '_wc_average_rating', '0'),
(288, 81, '_edit_last', '1'),
(289, 81, '_edit_lock', '1527131220:1'),
(290, 81, '_thumbnail_id', '55'),
(291, 81, '_sku', ''),
(292, 81, '_regular_price', '12.00'),
(293, 81, '_sale_price', ''),
(294, 81, '_sale_price_dates_from', ''),
(295, 81, '_sale_price_dates_to', ''),
(296, 81, 'total_sales', '0'),
(297, 81, '_tax_status', 'taxable'),
(298, 81, '_tax_class', ''),
(299, 81, '_manage_stock', 'no'),
(300, 81, '_backorders', 'no'),
(301, 81, '_sold_individually', 'no'),
(302, 81, '_weight', ''),
(303, 81, '_length', ''),
(304, 81, '_width', ''),
(305, 81, '_height', ''),
(306, 81, '_upsell_ids', 'a:0:{}'),
(307, 81, '_crosssell_ids', 'a:0:{}'),
(308, 81, '_purchase_note', ''),
(309, 81, '_default_attributes', 'a:0:{}'),
(310, 81, '_virtual', 'no'),
(311, 81, '_downloadable', 'no'),
(312, 81, '_product_image_gallery', ''),
(313, 81, '_download_limit', '-1'),
(314, 81, '_download_expiry', '-1'),
(315, 81, '_stock', NULL),
(316, 81, '_stock_status', 'instock'),
(317, 81, '_product_version', '3.3.5'),
(318, 81, '_price', '12.00'),
(319, 82, '_wc_review_count', '0'),
(320, 82, '_wc_rating_count', 'a:0:{}'),
(321, 82, '_wc_average_rating', '0'),
(322, 82, '_edit_last', '1'),
(323, 82, '_edit_lock', '1527131161:1'),
(324, 82, '_thumbnail_id', '27'),
(325, 82, '_sku', ''),
(326, 82, '_regular_price', '15.00'),
(327, 82, '_sale_price', ''),
(328, 82, '_sale_price_dates_from', ''),
(329, 82, '_sale_price_dates_to', ''),
(330, 82, 'total_sales', '0'),
(331, 82, '_tax_status', 'taxable'),
(332, 82, '_tax_class', ''),
(333, 82, '_manage_stock', 'no'),
(334, 82, '_backorders', 'no'),
(335, 82, '_sold_individually', 'no'),
(336, 82, '_weight', ''),
(337, 82, '_length', ''),
(338, 82, '_width', ''),
(339, 82, '_height', ''),
(340, 82, '_upsell_ids', 'a:0:{}'),
(341, 82, '_crosssell_ids', 'a:0:{}'),
(342, 82, '_purchase_note', ''),
(343, 82, '_default_attributes', 'a:0:{}'),
(344, 82, '_virtual', 'no'),
(345, 82, '_downloadable', 'no'),
(346, 82, '_product_image_gallery', ''),
(347, 82, '_download_limit', '-1'),
(348, 82, '_download_expiry', '-1'),
(349, 82, '_stock', NULL),
(350, 82, '_stock_status', 'instock'),
(351, 82, '_product_version', '3.3.5'),
(352, 82, '_price', '15.00'),
(353, 83, '_wc_review_count', '0'),
(354, 83, '_wc_rating_count', 'a:0:{}'),
(355, 83, '_wc_average_rating', '0'),
(356, 83, '_edit_last', '1'),
(357, 83, '_edit_lock', '1527131017:1'),
(358, 83, '_thumbnail_id', '28'),
(359, 83, '_sku', ''),
(360, 83, '_regular_price', '25.00'),
(361, 83, '_sale_price', ''),
(362, 83, '_sale_price_dates_from', ''),
(363, 83, '_sale_price_dates_to', ''),
(364, 83, 'total_sales', '0'),
(365, 83, '_tax_status', 'taxable'),
(366, 83, '_tax_class', ''),
(367, 83, '_manage_stock', 'no'),
(368, 83, '_backorders', 'no'),
(369, 83, '_sold_individually', 'no'),
(370, 83, '_weight', ''),
(371, 83, '_length', ''),
(372, 83, '_width', ''),
(373, 83, '_height', ''),
(374, 83, '_upsell_ids', 'a:0:{}'),
(375, 83, '_crosssell_ids', 'a:0:{}'),
(376, 83, '_purchase_note', ''),
(377, 83, '_default_attributes', 'a:0:{}'),
(378, 83, '_virtual', 'no'),
(379, 83, '_downloadable', 'no'),
(380, 83, '_product_image_gallery', ''),
(381, 83, '_download_limit', '-1'),
(382, 83, '_download_expiry', '-1'),
(383, 83, '_stock', NULL),
(384, 83, '_stock_status', 'instock'),
(385, 83, '_product_version', '3.3.5'),
(386, 83, '_price', '25.00'),
(387, 84, '_wc_review_count', '0'),
(388, 84, '_wc_rating_count', 'a:0:{}'),
(389, 84, '_wc_average_rating', '0'),
(390, 84, '_edit_last', '1'),
(391, 84, '_edit_lock', '1527131029:1'),
(392, 84, '_thumbnail_id', '26'),
(393, 84, '_sku', ''),
(394, 84, '_regular_price', '12.00'),
(395, 84, '_sale_price', ''),
(396, 84, '_sale_price_dates_from', ''),
(397, 84, '_sale_price_dates_to', ''),
(398, 84, 'total_sales', '0'),
(399, 84, '_tax_status', 'taxable'),
(400, 84, '_tax_class', ''),
(401, 84, '_manage_stock', 'no'),
(402, 84, '_backorders', 'no'),
(403, 84, '_sold_individually', 'no'),
(404, 84, '_weight', ''),
(405, 84, '_length', ''),
(406, 84, '_width', ''),
(407, 84, '_height', ''),
(408, 84, '_upsell_ids', 'a:0:{}'),
(409, 84, '_crosssell_ids', 'a:0:{}'),
(410, 84, '_purchase_note', ''),
(411, 84, '_default_attributes', 'a:0:{}'),
(412, 84, '_virtual', 'no'),
(413, 84, '_downloadable', 'no'),
(414, 84, '_product_image_gallery', ''),
(415, 84, '_download_limit', '-1'),
(416, 84, '_download_expiry', '-1'),
(417, 84, '_stock', NULL),
(418, 84, '_stock_status', 'instock'),
(419, 84, '_product_version', '3.3.5'),
(420, 84, '_price', '12.00'),
(421, 85, '_wp_trash_meta_status', 'publish'),
(422, 85, '_wp_trash_meta_time', '1526965825');

-- --------------------------------------------------------

--
-- Table structure for table `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_excerpt` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'publish',
  `comment_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `ping_status` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'open',
  `post_password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `post_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `to_ping` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pinged` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-05-21 23:14:16', '2018-05-21 23:14:16', 'A training programme developed in consultation with qualified, registered music therapists to enable local volunteers and musicians to run weekly, interactive music groups.', 'Interactive Music', '', 'publish', 'open', 'open', '', 'hello-world', '', '', '2018-05-22 00:38:51', '2018-05-22 00:38:51', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/?p=1', 0, 'post', '', 1),
(2, 1, '2018-05-21 23:14:16', '2018-05-21 23:14:16', '', 'HOME', '', 'publish', 'closed', 'open', '', 'sample-page', '', '', '2018-05-21 23:15:17', '2018-05-21 23:15:17', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-05-21 23:14:16', '2018-05-21 23:14:16', '<h2>Who we are</h2><p>Our website address is: http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracing your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'trash', 'closed', 'open', '', 'privacy-policy__trashed', '', '', '2018-05-21 23:15:06', '2018-05-21 23:15:06', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/?page_id=3', 0, 'page', '', 0),
(4, 1, '2018-05-21 23:14:31', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-05-21 23:14:31', '0000-00-00 00:00:00', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/?p=4', 0, 'post', '', 0),
(5, 1, '2018-05-21 23:15:06', '2018-05-21 23:15:06', '<h2>Who we are</h2><p>Our website address is: http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme.</p><h2>What personal data we collect and why we collect it</h2><h3>Comments</h3><p>When visitors leave comments on the site we collect the data shown in the comments form, and also the visitor&#8217;s IP address and browser user agent string to help spam detection.</p><p>An anonymized string created from your email address (also called a hash) may be provided to the Gravatar service to see if you are using it. The Gravatar service privacy policy is available here: https://automattic.com/privacy/. After approval of your comment, your profile picture is visible to the public in the context of your comment.</p><h3>Media</h3><p>If you upload images to the website, you should avoid uploading images with embedded location data (EXIF GPS) included. Visitors to the website can download and extract any location data from images on the website.</p><h3>Contact forms</h3><h3>Cookies</h3><p>If you leave a comment on our site you may opt-in to saving your name, email address and website in cookies. These are for your convenience so that you do not have to fill in your details again when you leave another comment. These cookies will last for one year.</p><p>If you have an account and you log in to this site, we will set a temporary cookie to determine if your browser accepts cookies. This cookie contains no personal data and is discarded when you close your browser.</p><p>When you log in, we will also set up several cookies to save your login information and your screen display choices. Login cookies last for two days, and screen options cookies last for a year. If you select &quot;Remember Me&quot;, your login will persist for two weeks. If you log out of your account, the login cookies will be removed.</p><p>If you edit or publish an article, an additional cookie will be saved in your browser. This cookie includes no personal data and simply indicates the post ID of the article you just edited. It expires after 1 day.</p><h3>Embedded content from other websites</h3><p>Articles on this site may include embedded content (e.g. videos, images, articles, etc.). Embedded content from other websites behaves in the exact same way as if the visitor has visited the other website.</p><p>These websites may collect data about you, use cookies, embed additional third-party tracking, and monitor your interaction with that embedded content, including tracing your interaction with the embedded content if you have an account and are logged in to that website.</p><h3>Analytics</h3><h2>Who we share your data with</h2><h2>How long we retain your data</h2><p>If you leave a comment, the comment and its metadata are retained indefinitely. This is so we can recognize and approve any follow-up comments automatically instead of holding them in a moderation queue.</p><p>For users that register on our website (if any), we also store the personal information they provide in their user profile. All users can see, edit, or delete their personal information at any time (except they cannot change their username). Website administrators can also see and edit that information.</p><h2>What rights you have over your data</h2><p>If you have an account on this site, or have left comments, you can request to receive an exported file of the personal data we hold about you, including any data you have provided to us. You can also request that we erase any personal data we hold about you. This does not include any data we are obliged to keep for administrative, legal, or security purposes.</p><h2>Where we send your data</h2><p>Visitor comments may be checked through an automated spam detection service.</p><h2>Your contact information</h2><h2>Additional information</h2><h3>How we protect your data</h3><h3>What data breach procedures we have in place</h3><h3>What third parties we receive data from</h3><h3>What automated decision making and/or profiling we do with user data</h3><h3>Industry regulatory disclosure requirements</h3>', 'Privacy Policy', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-05-21 23:15:06', '2018-05-21 23:15:06', '', 3, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/2018/05/21/3-revision-v1/', 0, 'revision', '', 0),
(6, 1, '2018-05-21 23:15:17', '2018-05-21 23:15:17', '', 'HOME', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2018-05-21 23:15:17', '2018-05-21 23:15:17', '', 2, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/2018/05/21/2-revision-v1/', 0, 'revision', '', 0),
(7, 1, '2018-05-21 23:15:24', '2018-05-21 23:15:24', '', 'ABOUT', '', 'publish', 'closed', 'closed', '', 'about', '', '', '2018-05-21 23:15:24', '2018-05-21 23:15:24', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/?page_id=7', 0, 'page', '', 0),
(8, 1, '2018-05-21 23:15:24', '2018-05-21 23:15:24', '', 'ABOUT', '', 'inherit', 'closed', 'closed', '', '7-revision-v1', '', '', '2018-05-21 23:15:24', '2018-05-21 23:15:24', '', 7, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/2018/05/21/7-revision-v1/', 0, 'revision', '', 0),
(9, 1, '2018-05-21 23:15:33', '2018-05-21 23:15:33', '', 'PROGRAMMES', '', 'publish', 'closed', 'closed', '', 'programmes', '', '', '2018-05-21 23:15:33', '2018-05-21 23:15:33', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/?page_id=9', 0, 'page', '', 0),
(10, 1, '2018-05-21 23:15:33', '2018-05-21 23:15:33', '', 'PROGRAMMES', '', 'inherit', 'closed', 'closed', '', '9-revision-v1', '', '', '2018-05-21 23:15:33', '2018-05-21 23:15:33', '', 9, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/2018/05/21/9-revision-v1/', 0, 'revision', '', 0),
(11, 1, '2018-05-21 23:15:42', '2018-05-21 23:15:42', '', 'EVENTS', '', 'publish', 'closed', 'closed', '', 'events', '', '', '2018-05-21 23:15:42', '2018-05-21 23:15:42', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/?page_id=11', 0, 'page', '', 0),
(12, 1, '2018-05-21 23:15:42', '2018-05-21 23:15:42', '', 'EVENTS', '', 'inherit', 'closed', 'closed', '', '11-revision-v1', '', '', '2018-05-21 23:15:42', '2018-05-21 23:15:42', '', 11, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/2018/05/21/11-revision-v1/', 0, 'revision', '', 0),
(13, 1, '2018-05-21 23:15:48', '2018-05-21 23:15:48', '', 'NEWS', '', 'publish', 'closed', 'closed', '', 'news', '', '', '2018-05-21 23:15:48', '2018-05-21 23:15:48', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/?page_id=13', 0, 'page', '', 0),
(14, 1, '2018-05-21 23:15:48', '2018-05-21 23:15:48', '', 'NEWS', '', 'inherit', 'closed', 'closed', '', '13-revision-v1', '', '', '2018-05-21 23:15:48', '2018-05-21 23:15:48', '', 13, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/2018/05/21/13-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2018-05-21 23:15:53', '2018-05-21 23:15:53', '', 'SHOP', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2018-05-22 06:07:32', '2018-05-22 06:07:32', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/?page_id=15', 0, 'page', '', 0),
(16, 1, '2018-05-21 23:15:53', '2018-05-21 23:15:53', '', 'SHOP', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-05-21 23:15:53', '2018-05-21 23:15:53', '', 15, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/2018/05/21/15-revision-v1/', 0, 'revision', '', 0),
(17, 1, '2018-05-21 23:15:59', '2018-05-21 23:15:59', '', 'CONTACT', '', 'publish', 'closed', 'closed', '', 'contact', '', '', '2018-05-22 05:39:48', '2018-05-22 05:39:48', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/?page_id=17', 0, 'page', '', 0),
(18, 1, '2018-05-21 23:15:59', '2018-05-21 23:15:59', '', 'CONTACT', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-05-21 23:15:59', '2018-05-21 23:15:59', '', 17, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/2018/05/21/17-revision-v1/', 0, 'revision', '', 0),
(19, 1, '2018-05-21 23:17:02', '2018-05-21 23:17:02', ' ', '', '', 'publish', 'closed', 'closed', '', '19', '', '', '2018-05-23 04:20:09', '2018-05-23 04:20:09', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/?p=19', 5, 'nav_menu_item', '', 0),
(20, 1, '2018-05-21 23:17:02', '2018-05-21 23:17:02', ' ', '', '', 'publish', 'closed', 'closed', '', '20', '', '', '2018-05-23 04:20:09', '2018-05-23 04:20:09', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/?p=20', 4, 'nav_menu_item', '', 0),
(22, 1, '2018-05-21 23:17:02', '2018-05-21 23:17:02', ' ', '', '', 'publish', 'closed', 'closed', '', '22', '', '', '2018-05-23 04:20:09', '2018-05-23 04:20:09', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/?p=22', 3, 'nav_menu_item', '', 0),
(23, 1, '2018-05-21 23:17:02', '2018-05-21 23:17:02', ' ', '', '', 'publish', 'closed', 'closed', '', '23', '', '', '2018-05-23 04:20:09', '2018-05-23 04:20:09', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/?p=23', 2, 'nav_menu_item', '', 0),
(24, 1, '2018-05-21 23:17:02', '2018-05-21 23:17:02', ' ', '', '', 'publish', 'closed', 'closed', '', '24', '', '', '2018-05-23 04:20:09', '2018-05-23 04:20:09', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/?p=24', 1, 'nav_menu_item', '', 0),
(26, 1, '2018-05-21 23:19:41', '2018-05-21 23:19:41', '', '8ced9a191814ed109399caa9c8354b54--music-gifts-stainless-steel-travel-mug', '', 'inherit', 'open', 'closed', '', '8ced9a191814ed109399caa9c8354b54-music-gifts-stainless-steel-travel-mug', '', '', '2018-05-21 23:19:41', '2018-05-21 23:19:41', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/8ced9a191814ed109399caa9c8354b54-music-gifts-stainless-steel-travel-mug-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2018-05-21 23:19:42', '2018-05-21 23:19:42', '', '41OmDRAjQuL._UY395_', '', 'inherit', 'open', 'closed', '', '41omdrajqul-_uy395_', '', '', '2018-05-21 23:19:42', '2018-05-21 23:19:42', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/41OmDRAjQuL._UY395_-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2018-05-21 23:19:42', '2018-05-21 23:19:42', '', '772abea7c6a3538e96435f302593ea78--stainless-steel-water-bottle-music-gifts', '', 'inherit', 'open', 'closed', '', '772abea7c6a3538e96435f302593ea78-stainless-steel-water-bottle-music-gifts', '', '', '2018-05-21 23:19:42', '2018-05-21 23:19:42', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/772abea7c6a3538e96435f302593ea78-stainless-steel-water-bottle-music-gifts-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(29, 1, '2018-05-21 23:19:42', '2018-05-21 23:19:42', '', 'acddb1ef18cba21185817cb81e85c1f2', '', 'inherit', 'open', 'closed', '', 'acddb1ef18cba21185817cb81e85c1f2', '', '', '2018-05-21 23:19:42', '2018-05-21 23:19:42', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/acddb1ef18cba21185817cb81e85c1f2-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(30, 1, '2018-05-21 23:19:43', '2018-05-21 23:19:43', '', 'agora cafe breakfast', '', 'inherit', 'open', 'closed', '', 'agora-cafe-breakfast', '', '', '2018-05-21 23:19:43', '2018-05-21 23:19:43', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/agora-cafe-breakfast-3.png', 0, 'attachment', 'image/png', 0),
(31, 1, '2018-05-21 23:19:43', '2018-05-21 23:19:43', '', 'dementia-cafe-banner-09072015', '', 'inherit', 'open', 'closed', '', 'dementia-cafe-banner-09072015', '', '', '2018-05-21 23:19:43', '2018-05-21 23:19:43', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/dementia-cafe-banner-09072015-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(32, 1, '2018-05-21 23:19:44', '2018-05-21 23:19:44', '', 'dementia-music-therapy-136399362873503901-150721121048', '', 'inherit', 'open', 'closed', '', 'dementia-music-therapy-136399362873503901-150721121048', '', '', '2018-05-21 23:19:44', '2018-05-21 23:19:44', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/dementia-music-therapy-136399362873503901-150721121048-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(33, 1, '2018-05-21 23:19:44', '2018-05-21 23:19:44', '', 'enjoying-music-therapy', '', 'inherit', 'open', 'closed', '', 'enjoying-music-therapy', '', '', '2018-05-21 23:19:44', '2018-05-21 23:19:44', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/enjoying-music-therapy-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(34, 1, '2018-05-21 23:19:44', '2018-05-21 23:19:44', '', 'esme-300x300', '', 'inherit', 'open', 'closed', '', 'esme-300x300', '', '', '2018-05-21 23:19:44', '2018-05-21 23:19:44', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/esme-300x300-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(35, 1, '2018-05-21 23:19:45', '2018-05-21 23:19:45', '', 'felicity-baker-dementia-1pwzghq', '', 'inherit', 'open', 'closed', '', 'felicity-baker-dementia-1pwzghq', '', '', '2018-05-21 23:19:45', '2018-05-21 23:19:45', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/felicity-baker-dementia-1pwzghq-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(36, 1, '2018-05-21 23:19:45', '2018-05-21 23:19:45', '', 'Guideposts', '', 'inherit', 'open', 'closed', '', 'guideposts', '', '', '2018-05-21 23:19:45', '2018-05-21 23:19:45', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/Guideposts-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(37, 1, '2018-05-21 23:19:45', '2018-05-21 23:19:45', '', 'Helen-McGann-300x300', '', 'inherit', 'open', 'closed', '', 'helen-mcgann-300x300', '', '', '2018-05-21 23:19:45', '2018-05-21 23:19:45', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/Helen-McGann-300x300-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(38, 1, '2018-05-21 23:19:46', '2018-05-21 23:19:46', '', 'image.skreened-t-shirt.white.w460h520b3z1', '', 'inherit', 'open', 'closed', '', 'image-skreened-t-shirt-white-w460h520b3z1', '', '', '2018-05-21 23:19:46', '2018-05-21 23:19:46', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/image.skreened-t-shirt.white_.w460h520b3z1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(39, 1, '2018-05-21 23:19:46', '2018-05-21 23:19:46', '', 'iStock-478815074 web', '', 'inherit', 'open', 'closed', '', 'istock-478815074-web', '', '', '2018-05-21 23:19:46', '2018-05-21 23:19:46', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/iStock-478815074-web-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(40, 1, '2018-05-21 23:19:47', '2018-05-21 23:19:47', '', 'Kath-Woodley-300x300', '', 'inherit', 'open', 'closed', '', 'kath-woodley-300x300', '', '', '2018-05-21 23:19:47', '2018-05-21 23:19:47', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/Kath-Woodley-300x300-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(41, 1, '2018-05-21 23:19:47', '2018-05-21 23:19:47', '', 'mmt-team-1024x707', '', 'inherit', 'open', 'closed', '', 'mmt-team-1024x707', '', '', '2018-05-21 23:19:47', '2018-05-21 23:19:47', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/mmt-team-1024x707-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(42, 1, '2018-05-21 23:19:48', '2018-05-21 23:19:48', '', 'MorningTea&Moonlight', '', 'inherit', 'open', 'closed', '', 'morningteamoonlight', '', '', '2018-05-21 23:19:48', '2018-05-21 23:19:48', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/MorningTeaMoonlight-3.png', 0, 'attachment', 'image/png', 0),
(43, 1, '2018-05-21 23:19:48', '2018-05-21 23:19:48', '', 'Music_Therapy_Appeal1', '', 'inherit', 'open', 'closed', '', 'music_therapy_appeal1', '', '', '2018-05-21 23:19:48', '2018-05-21 23:19:48', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/Music_Therapy_Appeal1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(44, 1, '2018-05-21 23:19:48', '2018-05-21 23:19:48', '', 'musictherapy', 'MARIO BARTEL/NEWSLEADER\rMeaghan Jackson works with Mary Johnson, one of her music therapy clients at St. Michael\'s Centre in Burnaby.', 'inherit', 'open', 'closed', '', 'musictherapy', '', '', '2018-05-21 23:19:48', '2018-05-21 23:19:48', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/musictherapy-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(45, 1, '2018-05-21 23:19:49', '2018-05-21 23:19:49', '', 'Music-therapy-improves-dementia-640x360', '', 'inherit', 'open', 'closed', '', 'music-therapy-improves-dementia-640x360', '', '', '2018-05-21 23:19:49', '2018-05-21 23:19:49', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/Music-therapy-improves-dementia-640x360.jpg', 0, 'attachment', 'image/jpeg', 0),
(46, 1, '2018-05-21 23:19:49', '2018-05-21 23:19:49', '', 'music-therapy-mha', '', 'inherit', 'open', 'closed', '', 'music-therapy-mha', '', '', '2018-05-21 23:19:49', '2018-05-21 23:19:49', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/music-therapy-mha-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(47, 1, '2018-05-21 23:19:49', '2018-05-21 23:19:49', '', 'Nolan-1', '', 'inherit', 'open', 'closed', '', 'nolan-1', '', '', '2018-05-21 23:19:49', '2018-05-21 23:19:49', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/Nolan-1-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(48, 1, '2018-05-21 23:19:50', '2018-05-21 23:19:50', '', 'old-people-singing-z8roe7', '', 'inherit', 'open', 'closed', '', 'old-people-singing-z8roe7', '', '', '2018-05-21 23:19:50', '2018-05-21 23:19:50', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/old-people-singing-z8roe7-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(49, 1, '2018-05-21 23:19:50', '2018-05-21 23:19:50', '', 'OutInTheStyx', '', 'inherit', 'open', 'closed', '', 'outinthestyx', '', '', '2018-05-21 23:19:50', '2018-05-21 23:19:50', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/OutInTheStyx-3.png', 0, 'attachment', 'image/png', 0),
(50, 1, '2018-05-21 23:19:51', '2018-05-21 23:19:51', '', 'Regis-Aged-Care-Music-Memories-e1486526936489', '', 'inherit', 'open', 'closed', '', 'regis-aged-care-music-memories-e1486526936489', '', '', '2018-05-21 23:19:51', '2018-05-21 23:19:51', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/Regis-Aged-Care-Music-Memories-e1486526936489-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(51, 1, '2018-05-21 23:19:51', '2018-05-21 23:19:51', '', 'shari-278x300', '', 'inherit', 'open', 'closed', '', 'shari-278x300', '', '', '2018-05-21 23:19:51', '2018-05-21 23:19:51', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/shari-278x300-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(52, 1, '2018-05-21 23:19:52', '2018-05-21 23:19:52', '', 'Shona2', '', 'inherit', 'open', 'closed', '', 'shona2', '', '', '2018-05-21 23:19:52', '2018-05-21 23:19:52', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/Shona2-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(53, 1, '2018-05-21 23:19:52', '2018-05-21 23:19:52', '', 'Super-Fashion-Great-Design-Brooch-Rhinestone-Music-Note-Collar-sleeve-buckle-Pin-brooches-Jewelry-Gift.jpg_640x640', '', 'inherit', 'open', 'closed', '', 'super-fashion-great-design-brooch-rhinestone-music-note-collar-sleeve-buckle-pin-brooches-jewelry-gift-jpg_640x640', '', '', '2018-05-21 23:19:52', '2018-05-21 23:19:52', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/Super-Fashion-Great-Design-Brooch-Rhinestone-Music-Note-Collar-sleeve-buckle-Pin-brooches-Jewelry-Gift-1.jpg_640x640-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(54, 1, '2018-05-21 23:19:52', '2018-05-21 23:19:52', '', 'Vicki-Jones-300x300', '', 'inherit', 'open', 'closed', '', 'vicki-jones-300x300', '', '', '2018-05-21 23:19:52', '2018-05-21 23:19:52', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/Vicki-Jones-300x300-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(55, 1, '2018-05-21 23:19:53', '2018-05-21 23:19:53', '', 'weit044_1', '', 'inherit', 'open', 'closed', '', 'weit044_1', '', '', '2018-05-21 23:19:53', '2018-05-21 23:19:53', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/weit044_1-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(56, 1, '2018-05-21 23:20:07', '2018-05-21 23:20:07', '', 'New Logo', '', 'inherit', 'open', 'closed', '', 'new-logo', '', '', '2018-05-21 23:20:07', '2018-05-21 23:20:07', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/New-Logo-2.png', 0, 'attachment', 'image/png', 0),
(57, 1, '2018-05-21 23:20:16', '2018-05-21 23:20:16', 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/cropped-New-Logo-2.png', 'cropped-New-Logo-2.png', '', 'inherit', 'open', 'closed', '', 'cropped-new-logo-2-png', '', '', '2018-05-21 23:20:16', '2018-05-21 23:20:16', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/cropped-New-Logo-2.png', 0, 'attachment', 'image/png', 0),
(58, 1, '2018-05-21 23:20:30', '2018-05-21 23:20:30', 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/cropped-New-Logo-2-1.png', 'cropped-New-Logo-2-1.png', '', 'inherit', 'open', 'closed', '', 'cropped-new-logo-2-1-png', '', '', '2018-05-21 23:20:30', '2018-05-21 23:20:30', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/cropped-New-Logo-2-1.png', 0, 'attachment', 'image/png', 0),
(59, 1, '2018-05-21 23:20:33', '2018-05-21 23:20:33', '{\n    \"blogdescription\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-21 23:20:33\"\n    },\n    \"bulmapress::header_text\": {\n        \"value\": false,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-21 23:20:33\"\n    },\n    \"site_icon\": {\n        \"value\": 58,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-21 23:20:33\"\n    },\n    \"bulmapress::custom_logo\": {\n        \"value\": 57,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-21 23:20:33\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', '3338f9d6-c902-4b3d-85c8-568c020fa4b3', '', '', '2018-05-21 23:20:33', '2018-05-21 23:20:33', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/3338f9d6-c902-4b3d-85c8-568c020fa4b3/', 0, 'customize_changeset', '', 0),
(60, 1, '2018-05-21 23:21:30', '2018-05-21 23:21:30', ' ', '', '', 'publish', 'closed', 'closed', '', '60', '', '', '2018-05-23 04:19:57', '2018-05-23 04:19:57', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/?p=60', 6, 'nav_menu_item', '', 0),
(61, 1, '2018-05-21 23:21:30', '2018-05-21 23:21:30', ' ', '', '', 'publish', 'closed', 'closed', '', '61', '', '', '2018-05-23 04:19:57', '2018-05-23 04:19:57', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/?p=61', 5, 'nav_menu_item', '', 0),
(63, 1, '2018-05-21 23:21:30', '2018-05-21 23:21:30', ' ', '', '', 'publish', 'closed', 'closed', '', '63', '', '', '2018-05-23 04:19:57', '2018-05-23 04:19:57', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/?p=63', 4, 'nav_menu_item', '', 0),
(64, 1, '2018-05-21 23:21:30', '2018-05-21 23:21:30', ' ', '', '', 'publish', 'closed', 'closed', '', '64', '', '', '2018-05-23 04:19:57', '2018-05-23 04:19:57', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/?p=64', 3, 'nav_menu_item', '', 0),
(65, 1, '2018-05-21 23:21:30', '2018-05-21 23:21:30', ' ', '', '', 'publish', 'closed', 'closed', '', '65', '', '', '2018-05-23 04:19:57', '2018-05-23 04:19:57', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/?p=65', 2, 'nav_menu_item', '', 0),
(66, 1, '2018-05-21 23:21:29', '2018-05-21 23:21:29', ' ', '', '', 'publish', 'closed', 'closed', '', '66', '', '', '2018-05-23 04:19:57', '2018-05-23 04:19:57', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/?p=66', 1, 'nav_menu_item', '', 0),
(67, 1, '2018-05-21 23:38:08', '2018-05-21 23:38:08', '', 'HOME', '', 'inherit', 'closed', 'closed', '', '2-autosave-v1', '', '', '2018-05-21 23:38:08', '2018-05-21 23:38:08', '', 2, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/2-autosave-v1/', 0, 'revision', '', 0),
(68, 1, '2018-05-22 00:37:43', '2018-05-22 00:37:43', '{\n    \"bulmapress::bulmapress_about_image_ourstory\": {\n        \"value\": \"http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/esme-300x300-3.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-22 00:35:53\"\n    },\n    \"bulmapress::bulmapress_about_text_ourstory\": {\n        \"value\": \"This Is Esmee, Vicki\\u2019s grandmother. Esmee was a force of nature. A fiery redhead, she trained as a nurse before moving back and forth to Africa twice with her young family. She loved; painting, fashion, country music, chocolate, wildlife, riding on her blue scooter, bull terriers and latterly her pet blackbird that lived in her back garden. She had a \\u2018telephone voice\\u2019 that her family would tease her about and she and Gerald, Vicki\\u2019s grandfather, would dance together in the living room listening to jazz. The dementia subsumed Esmee by stealth. She started to write long lists of things to do. She found it difficult to remember how to pay for her groceries, would leave her handbag at the butchers and her keys in the fridge. Eventually she lost sight of herself and her family. She spent the last eight years of her life in a secure dementia facility where there was no time or funding left to try and connect with the person that Esmee had been.\\n\\n\\nThis is for her and for all of us who lose someone we love to dementia\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-22 00:36:00\"\n    },\n    \"bulmapress::bulmapress_about_image_general\": {\n        \"value\": \"http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/mmt-team-1024x707-3.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-22 00:36:10\"\n    },\n    \"bulmapress::bulmapress_about_text_general\": {\n        \"value\": \"Music Moves Me Trust exists to offer high-quality, interactive music and music therapy to people living with dementia in an effort to help them maintain function, access memory and connect with those around them. The Trust was founded in early 2015 in the Waikato region of New Zealand. We are currently active within nursing and secure facilities that care for patients with dementia.\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-22 00:36:16\"\n    },\n    \"bulmapress::bulmapress_about_image_ourpeople_boardmembers_1\": {\n        \"value\": \"http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/Vicki-Jones-300x300-4.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-22 00:36:26\"\n    },\n    \"bulmapress::bulmapress_about_text_ourpeople_boardmembers_1\": {\n        \"value\": \"Dr. Vicki Jones\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-22 00:36:36\"\n    },\n    \"bulmapress::bulmapress_about_image_ourpeople_boardmembers_2\": {\n        \"value\": \"http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/Kath-Woodley-300x300-3.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-22 00:36:36\"\n    },\n    \"bulmapress::bulmapress_about_text_ourpeople_boardmembers_2\": {\n        \"value\": \"Kath Woodley\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-22 00:36:45\"\n    },\n    \"bulmapress::bulmapress_about_image_ourpeople_therapists_1\": {\n        \"value\": \"http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/Helen-McGann-300x300-3.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-22 00:36:51\"\n    },\n    \"bulmapress::bulmapress_about_text_ourpeople_therapists_1\": {\n        \"value\": \"Helen McGann\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-22 00:36:57\"\n    },\n    \"bulmapress::bulmapress_about_image_ourpeople_therapists_2\": {\n        \"value\": \"http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/Nolan-1-3.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-22 00:37:05\"\n    },\n    \"bulmapress::bulmapress_about_text_ourpeople_therapists_2\": {\n        \"value\": \"Nolan Hodgson\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-22 00:37:11\"\n    },\n    \"bulmapress::bulmapress_about_image_ourpeople_therapists_3\": {\n        \"value\": \"http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/Shona2-3.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-22 00:37:25\"\n    },\n    \"bulmapress::bulmapress_about_text_ourpeople_therapists_3\": {\n        \"value\": \"Shona How\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-22 00:37:37\"\n    },\n    \"bulmapress::bulmapress_about_image_ourpeople_therapists_4\": {\n        \"value\": \"http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/shari-278x300-3.jpg\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-22 00:37:37\"\n    },\n    \"bulmapress::bulmapress_about_text_ourpeople_therapists_4\": {\n        \"value\": \"Shari Storie\",\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-22 00:37:43\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'cb906b74-7e6a-4db1-8182-ab380bcdc703', '', '', '2018-05-22 00:37:43', '2018-05-22 00:37:43', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/?p=68', 0, 'customize_changeset', '', 0),
(69, 1, '2018-05-22 00:38:51', '2018-05-22 00:38:51', 'A training programme developed in consultation with qualified, registered music therapists to enable local volunteers and musicians to run weekly, interactive music groups.', 'Interactive Music', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2018-05-22 00:38:51', '2018-05-22 00:38:51', '', 1, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/1-revision-v1/', 0, 'revision', '', 0),
(70, 1, '2018-05-22 00:39:14', '2018-05-22 00:39:14', 'Designed with input from family and carers and delivered via an MP3 player and headset.', 'Personalised Playlists', '', 'publish', 'open', 'open', '', 'personalised-playlists', '', '', '2018-05-22 00:39:14', '2018-05-22 00:39:14', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/?p=70', 0, 'post', '', 0),
(71, 1, '2018-05-22 00:39:14', '2018-05-22 00:39:14', 'Designed with input from family and carers and delivered via an MP3 player and headset.', 'Personalised Playlists', '', 'inherit', 'closed', 'closed', '', '70-revision-v1', '', '', '2018-05-22 00:39:14', '2018-05-22 00:39:14', '', 70, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/70-revision-v1/', 0, 'revision', '', 0),
(72, 1, '2018-05-22 00:39:33', '2018-05-22 00:39:33', 'Offered by a qualified, registered music therapist for those individuals who are most responsive to this approach.', 'Music Therapy', '', 'publish', 'open', 'open', '', 'music-therapy', '', '', '2018-05-22 00:39:36', '2018-05-22 00:39:36', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/?p=72', 0, 'post', '', 0),
(73, 1, '2018-05-22 00:39:33', '2018-05-22 00:39:33', 'Offered by a qualified, registered music therapist for those individuals who are most responsive to this approach.', 'Music Therapy', '', 'inherit', 'closed', 'closed', '', '72-revision-v1', '', '', '2018-05-22 00:39:33', '2018-05-22 00:39:33', '', 72, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/72-revision-v1/', 0, 'revision', '', 0),
(74, 1, '2018-05-22 00:40:00', '2018-05-22 00:40:00', '[icon name=\"map-marker\" class=\"\" unprefixed_class=\"\"]     Agora Cafe, 13B Kent Street, Frankton\r\n[icon name=\"clock-o\" class=\"\" unprefixed_class=\"\"]     01st July 7.30 am\r\n\r\nBook with cwaccounting@vodaphone.co.nz<!--more-->\r\n50 cents per beverage for ALL beverages sold for the month of July go to Music Moves Me Trust so even if you can’t make it to breakfast go along and have a cuppa for us!', 'Agora Cafe Breakfast', '', 'publish', 'closed', 'closed', '', 'agora-cafe-breakfast', '', '', '2018-05-24 03:19:03', '2018-05-24 03:19:03', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/?post_type=bulmapress_event&#038;p=74', 0, 'bulmapress_event', '', 0),
(75, 1, '2018-05-22 00:40:15', '2018-05-22 00:40:15', '[icon name=\"map-marker\" class=\"\" unprefixed_class=\"\"]     32 Lake Street\r\n[icon name=\"clock-o\" class=\"\" unprefixed_class=\"\"]     06th June 10.30 am\r\n\r\nCost $15\r\nBookings Essential<!--more-->\r\nPay bank account 06 0230 0239113 00, Reference: Moonlight, Code: Your name\r\nOr leave a message on 021 0818 7218\r\nRides to Cambridge available.', 'Morning tea & moonlight', '', 'publish', 'closed', 'closed', '', 'morning-tea-moonlight', '', '', '2018-05-24 03:18:48', '2018-05-24 03:18:48', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/?post_type=bulmapress_event&#038;p=75', 0, 'bulmapress_event', '', 0),
(76, 1, '2018-05-22 00:40:31', '2018-05-22 00:40:31', '[icon name=\"map-marker\" class=\"\" unprefixed_class=\"\"]     2117 Arapuni Road, Pukeatua\r\n[icon name=\"clock-o\" class=\"\" unprefixed_class=\"\"]     27th May 6.30 pm\r\n\r\nOld fashioned SINGALONG evening accompanied by ‘The Dags’, a soon-to-be-famous ukulele band.<!--more-->\r\n$60pp for a delicious dinner and the chance to add your voice to a rousing rendition of all those old favourites. Participation is key, not necessarily ‘in key’!!\r\nBookings Ph 0800 461 559 or Email info@styx.co.nz\r\nTransport available', 'Out in the Styx', '', 'publish', 'closed', 'closed', '', 'out-in-the-styx', '', '', '2018-05-24 03:18:06', '2018-05-24 03:18:06', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/?post_type=bulmapress_event&#038;p=76', 0, 'bulmapress_event', '', 0),
(77, 1, '2018-05-22 00:42:05', '2018-05-22 00:42:05', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2018-05-22 00:42:05', '2018-05-22 00:42:05', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/cart/', 0, 'page', '', 0),
(78, 1, '2018-05-22 00:42:05', '2018-05-22 00:42:05', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2018-05-22 00:42:05', '2018-05-22 00:42:05', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/checkout/', 0, 'page', '', 0),
(79, 1, '2018-05-22 00:42:05', '2018-05-22 00:42:05', '[woocommerce_my_account]', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2018-05-22 00:42:05', '2018-05-22 00:42:05', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/my-account/', 0, 'page', '', 0),
(80, 1, '2018-05-22 00:43:03', '2018-05-22 00:43:03', '', 'T-shirt', '&nbsp;\r\n\r\nMaterial: Polyester,Spandex\r\nShirt Length: Regular\r\nSleeve Length: Short\r\nCollar: Round Neck\r\nElasticity: Micro-elastic\r\nWeight: 0.2500kg\r\nPackage Contents: 1 x T-shirt', 'publish', 'open', 'closed', '', 't-shirt', '', '', '2018-05-24 03:10:41', '2018-05-24 03:10:41', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/?post_type=product&#038;p=80', 0, 'product', '', 0),
(81, 1, '2018-05-22 00:43:29', '2018-05-22 00:43:29', '', 'Tote Bag', '&nbsp;\r\n<ul>\r\n 	<li>Pure cotton outer</li>\r\n 	<li>Unlined design</li>\r\n 	<li>Twin handles</li>\r\n 	<li>Open top</li>\r\n</ul>', 'publish', 'open', 'closed', '', 'tote-bag', '', '', '2018-05-24 03:09:12', '2018-05-24 03:09:12', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/?post_type=product&#038;p=81', 0, 'product', '', 0),
(82, 1, '2018-05-22 00:43:57', '2018-05-22 00:43:57', '', 'Music note brooch', '<div></div>\r\n<div></div>\r\n<div class=\"xxkkk2\">- Perfect to add some accessories to any occasion\r\n- Give you charming look and win more compliments</div>\r\n<div class=\"xkclear\"></div>\r\n<div class=\"xxkkk\">\r\n<div class=\"xxkkk20\">Brooch Type: Brooch\r\nGender<strong>:</strong> For Women\r\nWeight: 0.0330kg\r\nPackage: 1 x Brooch</div>\r\n</div>', 'publish', 'open', 'closed', '', 'music-note-brooch', '', '', '2018-05-24 03:08:11', '2018-05-24 03:08:11', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/?post_type=product&#038;p=82', 0, 'product', '', 0),
(83, 1, '2018-05-22 00:44:32', '2018-05-22 00:44:32', '', 'customized water bottle', '&nbsp;\r\n<ul>\r\n 	<li> Material: Food Grade 304 Stainless Steel &amp; Silicone</li>\r\n 	<li>Capacity: 500ml/1000ml</li>\r\n 	<li>Bottle Dimension:(500ml)7 x 26.5cm,(1000ml)9x32.5cm</li>\r\n 	<li>Mouth Diameter: 1.42 inch</li>\r\n</ul>', 'publish', 'open', 'closed', '', 'customized-water-bottle', '', '', '2018-05-24 03:05:49', '2018-05-24 03:05:49', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/?post_type=product&#038;p=83', 0, 'product', '', 0),
(84, 1, '2018-05-22 00:45:00', '2018-05-22 00:45:00', '', '\"I love to sing\" Travel mug', '&nbsp;\r\n<ul>\r\n 	<li>Double-Walled Porcelain Cup With Silicone Lid</li>\r\n 	<li>Individually Gift Boxed</li>\r\n 	<li>Vegan Friendly</li>\r\n 	<li>Capacity: 500 ml</li>\r\n 	<li>Dimensions: 16.7Cm (H) X 9Cm (Diameter)</li>\r\n</ul>', 'publish', 'open', 'closed', '', 'i-love-to-sing-travel-mug', '', '', '2018-05-24 03:06:10', '2018-05-24 03:06:10', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/?post_type=product&#038;p=84', 0, 'product', '', 0),
(85, 1, '2018-05-22 05:10:25', '2018-05-22 05:10:25', '{\n    \"woocommerce_shop_page_display\": {\n        \"value\": \"\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-22 05:10:25\"\n    },\n    \"woocommerce_default_catalog_orderby\": {\n        \"value\": \"price\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-22 05:10:25\"\n    },\n    \"woocommerce_catalog_columns\": {\n        \"value\": \"3\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-22 05:10:25\"\n    },\n    \"woocommerce_catalog_rows\": {\n        \"value\": \"3\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2018-05-22 05:10:25\"\n    }\n}', '', '', 'trash', 'closed', 'closed', '', 'b1dac75d-6e7e-4a48-9437-3bde433a8a0a', '', '', '2018-05-22 05:10:25', '2018-05-22 05:10:25', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/b1dac75d-6e7e-4a48-9437-3bde433a8a0a/', 0, 'customize_changeset', '', 0),
(86, 1, '2018-05-22 05:14:17', '2018-05-22 05:14:17', '[product-catalogue id=”X”]', 'SHOP', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-05-22 05:14:17', '2018-05-22 05:14:17', '', 15, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/15-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2018-05-22 05:14:37', '2018-05-22 05:14:37', '[product-catalogue id=”1”]', 'SHOP', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-05-22 05:14:37', '2018-05-22 05:14:37', '', 15, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/15-revision-v1/', 0, 'revision', '', 0),
(88, 1, '2018-05-22 05:32:12', '2018-05-22 05:32:12', '[product-catalogue id=\'1\']', 'SHOP', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-05-22 05:32:12', '2018-05-22 05:32:12', '', 15, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/15-revision-v1/', 0, 'revision', '', 0),
(89, 1, '2018-05-22 05:36:41', '2018-05-22 05:36:41', '[product-catalogue id=’1’]\r\n\r\n[product-catalog id=’1’]', 'SHOP', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-05-22 05:36:41', '2018-05-22 05:36:41', '', 15, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/15-revision-v1/', 0, 'revision', '', 0),
(90, 1, '2018-05-22 05:37:19', '2018-05-22 05:37:19', '[product-catalogue id=’1’]\r\n\r\n[product-catalog id=’1’]', 'CONTACT', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-05-22 05:37:19', '2018-05-22 05:37:19', '', 17, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/17-revision-v1/', 0, 'revision', '', 0),
(91, 1, '2018-05-22 05:39:48', '2018-05-22 05:39:48', '', 'CONTACT', '', 'inherit', 'closed', 'closed', '', '17-revision-v1', '', '', '2018-05-22 05:39:48', '2018-05-22 05:39:48', '', 17, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/17-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2018-05-22 05:39:59', '2018-05-22 05:39:59', '', 'SHOP', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-05-22 05:39:59', '2018-05-22 05:39:59', '', 15, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/15-revision-v1/', 0, 'revision', '', 0),
(93, 1, '2018-05-22 06:00:36', '2018-05-22 06:00:36', '<pre>[products columns=\"3\"]</pre>', 'SHOP', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-05-22 06:00:36', '2018-05-22 06:00:36', '', 15, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/15-revision-v1/', 0, 'revision', '', 0),
(94, 1, '2018-05-22 06:03:00', '2018-05-22 06:03:00', '<pre>[products columns=\"3\"]</pre>', 'SHOP', '', 'inherit', 'closed', 'closed', '', '15-autosave-v1', '', '', '2018-05-22 06:03:00', '2018-05-22 06:03:00', '', 15, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/15-autosave-v1/', 0, 'revision', '', 0),
(95, 1, '2018-05-22 06:07:32', '2018-05-22 06:07:32', '', 'SHOP', '', 'inherit', 'closed', 'closed', '', '15-revision-v1', '', '', '2018-05-22 06:07:32', '2018-05-22 06:07:32', '', 15, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/15-revision-v1/', 0, 'revision', '', 0),
(96, 1, '2018-05-23 00:41:55', '2018-05-23 00:41:55', 'Agora Cafe, 13B Kent Street, Frankton\n\n01st July 7.30 am\n\n&nbsp;', 'Agora Cafe Breakfast', '', 'inherit', 'closed', 'closed', '', '74-autosave-v1', '', '', '2018-05-23 00:41:55', '2018-05-23 00:41:55', '', 74, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/74-autosave-v1/', 0, 'revision', '', 0),
(97, 1, '2018-05-23 01:23:21', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-05-23 01:23:21', '0000-00-00 00:00:00', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/?p=97', 0, 'post', '', 0),
(98, 1, '2018-05-23 01:23:36', '0000-00-00 00:00:00', '', 'Auto Draft', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-05-23 01:23:36', '0000-00-00 00:00:00', '', 0, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/?p=98', 0, 'post', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(99, 1, '2018-05-23 03:02:54', '2018-05-23 03:02:54', '<table style=\"height: 222px;\" width=\"47\">\n<tbody>\n<tr>\n<td class=\"content\"><code class=\"plain\"><code class=\"plain\">[icon name=\"</code></code>\n<h1 class=\"mv0 fw6 f7 flex-grow-1-l w-70-l order-2 order-1-l\">map-marker-alt</h1>\n<code class=\"plain\">\"]</code></td>\n</tr>\n</tbody>\n</table>\n2117 Arapuni Road, Pukeatua\n27th May 6.30 pm\n\nOld fashioned SINGALONG evening accompanied by ‘The Dags’, a soon-to-be-famous ukulele band.\n$60pp for a delicious dinner and the chance to add your voice to a rousing rendition of all those old favourites. Participation is key, not necessarily ‘in key’!!\nBookings Ph 0800 461 559 or Email info@styx.co.nz\nTransport available', 'Out in the Styx', '', 'inherit', 'closed', 'closed', '', '76-autosave-v1', '', '', '2018-05-23 03:02:54', '2018-05-23 03:02:54', '', 76, 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/76-autosave-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(1, 17, 'product_count_product_cat', '5');

-- --------------------------------------------------------

--
-- Table structure for table `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Uncategorized', 'uncategorized', 0),
(2, 'Main Menu', 'main-menu', 0),
(3, 'Footer Menu', 'footer-menu', 0),
(4, 'simple', 'simple', 0),
(5, 'grouped', 'grouped', 0),
(6, 'variable', 'variable', 0),
(7, 'external', 'external', 0),
(8, 'exclude-from-search', 'exclude-from-search', 0),
(9, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(10, 'featured', 'featured', 0),
(11, 'outofstock', 'outofstock', 0),
(12, 'rated-1', 'rated-1', 0),
(13, 'rated-2', 'rated-2', 0),
(14, 'rated-3', 'rated-3', 0),
(15, 'rated-4', 'rated-4', 0),
(16, 'rated-5', 'rated-5', 0),
(17, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(19, 2, 0),
(20, 2, 0),
(22, 2, 0),
(23, 2, 0),
(24, 2, 0),
(60, 3, 0),
(61, 3, 0),
(63, 3, 0),
(64, 3, 0),
(65, 3, 0),
(66, 3, 0),
(70, 1, 0),
(72, 1, 0),
(80, 4, 0),
(80, 17, 0),
(81, 4, 0),
(81, 17, 0),
(82, 4, 0),
(82, 17, 0),
(83, 4, 0),
(83, 17, 0),
(84, 4, 0),
(84, 17, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 3),
(2, 2, 'nav_menu', '', 0, 5),
(3, 3, 'nav_menu', '', 0, 6),
(4, 4, 'product_type', '', 0, 5),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_type', '', 0, 0),
(7, 7, 'product_type', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_visibility', '', 0, 0),
(16, 16, 'product_visibility', '', 0, 0),
(17, 17, 'product_cat', '', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `wp_upcp_catalogues`
--

CREATE TABLE `wp_upcp_catalogues` (
  `Catalogue_ID` mediumint(9) NOT NULL,
  `Catalogue_Name` text NOT NULL,
  `Catalogue_Description` text NOT NULL,
  `Catalogue_Layout_Format` text NOT NULL,
  `Catalogue_Custom_CSS` text NOT NULL,
  `Catalogue_Item_Count` mediumint(9) NOT NULL DEFAULT '0',
  `Catalogue_Date_Created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_upcp_catalogues`
--

INSERT INTO `wp_upcp_catalogues` (`Catalogue_ID`, `Catalogue_Name`, `Catalogue_Description`, `Catalogue_Layout_Format`, `Catalogue_Custom_CSS`, `Catalogue_Item_Count`, `Catalogue_Date_Created`) VALUES
(1, 'Charity Catalogue', 'This is where your description of this catalogue would go.', '', '', 5, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `wp_upcp_catalogue_items`
--

CREATE TABLE `wp_upcp_catalogue_items` (
  `Catalogue_Item_ID` mediumint(9) NOT NULL,
  `Catalogue_ID` mediumint(9) DEFAULT '0',
  `Item_ID` mediumint(9) DEFAULT '0',
  `Category_ID` mediumint(9) DEFAULT '0',
  `SubCategory_ID` mediumint(9) DEFAULT '0',
  `Position` mediumint(9) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_upcp_catalogue_items`
--

INSERT INTO `wp_upcp_catalogue_items` (`Catalogue_Item_ID`, `Catalogue_ID`, `Item_ID`, `Category_ID`, `SubCategory_ID`, `Position`) VALUES
(2, 1, 5, 0, 0, 1),
(3, 1, 4, 0, 0, 4),
(4, 1, 3, 0, 0, 2),
(5, 1, 1, 0, 0, 0),
(6, 1, 2, 0, 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `wp_upcp_categories`
--

CREATE TABLE `wp_upcp_categories` (
  `Category_ID` mediumint(9) NOT NULL,
  `Category_Name` text NOT NULL,
  `Category_Description` text NOT NULL,
  `Category_Image` text NOT NULL,
  `Category_Item_Count` mediumint(9) DEFAULT '0',
  `Category_Sidebar_Order` mediumint(9) DEFAULT '9999',
  `Category_Date_Created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Category_WC_ID` mediumint(9) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_upcp_categories`
--

INSERT INTO `wp_upcp_categories` (`Category_ID`, `Category_Name`, `Category_Description`, `Category_Image`, `Category_Item_Count`, `Category_Sidebar_Order`, `Category_Date_Created`, `Category_WC_ID`) VALUES
(1, 'Sample Category', 'This is where your description of this category would go.', '', 1, 9999, '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_upcp_custom_fields`
--

CREATE TABLE `wp_upcp_custom_fields` (
  `Field_ID` mediumint(9) NOT NULL,
  `Field_Name` text NOT NULL,
  `Field_Slug` text NOT NULL,
  `Field_Type` text NOT NULL,
  `Field_Description` text NOT NULL,
  `Field_Values` text NOT NULL,
  `Field_Displays` text NOT NULL,
  `Field_Searchable` text NOT NULL,
  `Field_Sidebar_Order` mediumint(9) DEFAULT '9999',
  `Field_Display_Tabbed` text NOT NULL,
  `Field_Control_Type` text NOT NULL,
  `Field_Date_Created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Field_WC_ID` mediumint(9) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_upcp_fields_meta`
--

CREATE TABLE `wp_upcp_fields_meta` (
  `Meta_ID` mediumint(9) NOT NULL,
  `Field_ID` mediumint(9) DEFAULT '0',
  `Item_ID` mediumint(9) DEFAULT '0',
  `Meta_Value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_upcp_items`
--

CREATE TABLE `wp_upcp_items` (
  `Item_ID` mediumint(9) NOT NULL,
  `Item_Name` text NOT NULL,
  `Item_Slug` text NOT NULL,
  `Item_Description` text,
  `Item_Price` text NOT NULL,
  `Item_Sale_Price` text NOT NULL,
  `Item_Sale_Mode` text NOT NULL,
  `Item_Link` text,
  `Item_Photo_URL` text,
  `Category_ID` mediumint(9) DEFAULT '0',
  `Category_Name` text,
  `Global_Item_ID` mediumint(9) DEFAULT '0',
  `Item_Special_Attr` text,
  `SubCategory_ID` mediumint(9) DEFAULT '0',
  `SubCategory_Name` text,
  `Item_Date_Created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Item_Views` mediumint(9) DEFAULT '0',
  `Item_Display_Status` text,
  `Item_Related_Products` text,
  `Item_Next_Previous` text,
  `Item_SEO_Description` text,
  `Item_Category_Product_Order` mediumint(9) DEFAULT '9999',
  `Item_WC_ID` mediumint(9) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `wp_upcp_items`
--

INSERT INTO `wp_upcp_items` (`Item_ID`, `Item_Name`, `Item_Slug`, `Item_Description`, `Item_Price`, `Item_Sale_Price`, `Item_Sale_Mode`, `Item_Link`, `Item_Photo_URL`, `Category_ID`, `Category_Name`, `Global_Item_ID`, `Item_Special_Attr`, `SubCategory_ID`, `SubCategory_Name`, `Item_Date_Created`, `Item_Views`, `Item_Display_Status`, `Item_Related_Products`, `Item_Next_Previous`, `Item_SEO_Description`, `Item_Category_Product_Order`, `Item_WC_ID`) VALUES
(1, 'T-shirt', '', '', '12.00', '', 'No', '', 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/image.skreened-t-shirt.white_.w460h520b3z1-1.jpg', 1, 'Sample Category', 0, '', 0, '', '0000-00-00 00:00:00', 0, 'Show', '', '', '', 9999, 0),
(2, 'Tote Bag', 'tote-bag', '', '12.00', '', 'No', '', 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/weit044_1-1.jpg', 0, NULL, 0, '', 0, NULL, '2018-05-22 05:02:23', 0, 'Show', '', '', '', 9999, 0),
(3, 'Music note Brooch', '', '', '15.00', '', 'No', '', 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/41OmDRAjQuL._UY395_-1.jpg', 0, NULL, 0, '', 0, NULL, '2018-05-22 05:03:03', 0, 'Show', '', '', '', 9999, 0),
(4, 'Customized Water Bottle', 'customized-water-bottle', '', '25.00', '', 'No', '', 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/772abea7c6a3538e96435f302593ea78-stainless-steel-water-bottle-music-gifts-1.jpg', 0, NULL, 0, '', 0, NULL, '2018-05-22 05:03:40', 0, 'Show', '', '', '', 9999, 0),
(5, '\"I Love to Sing\" Travel mug', 'i-love-to-sing-travel-mug', '', '12.00', '', 'No', '', 'http://jayani.wisesekara.yoobee.net.nz/wux04/musicmovesme/wp-content/uploads/2018/05/8ced9a191814ed109399caa9c8354b54-music-gifts-stainless-steel-travel-mug-1.jpg', 0, NULL, 0, '', 0, NULL, '2018-05-22 05:04:14', 0, 'Show', '', '', '', 9999, 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_upcp_item_images`
--

CREATE TABLE `wp_upcp_item_images` (
  `Item_Image_ID` mediumint(9) NOT NULL,
  `Item_ID` mediumint(9) NOT NULL DEFAULT '0',
  `Item_Image_URL` text,
  `Item_Image_Description` text,
  `Item_Image_Order` mediumint(9) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_upcp_subcategories`
--

CREATE TABLE `wp_upcp_subcategories` (
  `SubCategory_ID` mediumint(9) NOT NULL,
  `Category_ID` mediumint(9) NOT NULL DEFAULT '0',
  `Category_Name` text NOT NULL,
  `SubCategory_Name` text NOT NULL,
  `SubCategory_Description` text NOT NULL,
  `SubCategory_Image` text NOT NULL,
  `SubCategory_Item_Count` mediumint(9) NOT NULL DEFAULT '0',
  `SubCategory_Sidebar_Order` mediumint(9) DEFAULT '9999',
  `SubCategory_Date_Created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `SubCategory_WC_ID` mediumint(9) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_upcp_tagged_items`
--

CREATE TABLE `wp_upcp_tagged_items` (
  `Tagged_Item_ID` mediumint(9) NOT NULL,
  `Tag_ID` mediumint(9) NOT NULL DEFAULT '0',
  `Item_ID` mediumint(9) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_upcp_tags`
--

CREATE TABLE `wp_upcp_tags` (
  `Tag_ID` mediumint(9) NOT NULL,
  `Tag_Name` text NOT NULL,
  `Tag_Description` text NOT NULL,
  `Tag_Item_Count` text NOT NULL,
  `Tag_Group_ID` mediumint(9) NOT NULL DEFAULT '0',
  `Tag_Sidebar_Order` mediumint(9) DEFAULT '9999',
  `Tag_Date_Created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Tag_WC_ID` mediumint(9) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_upcp_tag_groups`
--

CREATE TABLE `wp_upcp_tag_groups` (
  `Tag_Group_ID` mediumint(9) NOT NULL,
  `Tag_Group_Name` text NOT NULL,
  `Tag_Group_Description` text NOT NULL,
  `Display_Tag_Group` text NOT NULL,
  `Tag_Group_Order` mediumint(9) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_upcp_videos`
--

CREATE TABLE `wp_upcp_videos` (
  `Item_Video_ID` mediumint(9) NOT NULL,
  `Item_ID` mediumint(9) NOT NULL DEFAULT '0',
  `Item_Video_URL` text,
  `Item_Video_Type` text,
  `Item_Video_Order` mediumint(9) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'jaymmm'),
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
(12, 1, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(13, 1, 'wp_user_level', '10'),
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,upcp_admin_pointers_tutorial-one,upcp_admin_pointers_tutorial-two,upcp_admin_pointers_tutorial-three,upcp_admin_pointers_tutorial-four,upcp_admin_pointers_tutorial-five,upcp_admin_pointers_tutorial-six,theme_editor_notice'),
(15, 1, 'show_welcome_panel', '0'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"855733ccfdc02c5d15b63dc92bb1e38261bfdd6bfff69b85b5905048f8612936\";a:4:{s:10:\"expiration\";i:1528154069;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36\";s:5:\"login\";i:1526944469;}s:64:\"798e5a7be22ce3f003530297053b8c4cc765b83dff8afeb161d5058c9fa5f1e4\";a:4:{s:10:\"expiration\";i:1528441684;s:2:\"ip\";s:11:\"10.2.20.118\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36\";s:5:\"login\";i:1527232084;}s:64:\"2c1b1fdee9f1f8c7e5b130044082fc8cb342ecbe2f45ff2c11b75b1636bd87f1\";a:4:{s:10:\"expiration\";i:1528536529;s:2:\"ip\";s:14:\"111.69.241.218\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/66.0.3359.181 Safari/537.36\";s:5:\"login\";i:1527326929;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(19, 1, 'metaboxhidden_nav-menus', 'a:3:{i:0;s:30:\"add-post-type-bulmapress_event\";i:1;s:12:\"add-post_tag\";i:2;s:19:\"add-bulmapress_type\";}'),
(20, 1, 'nav_menu_recently_edited', '2'),
(21, 1, 'wp_user-settings', 'libraryContent=browse&editor=tinymce'),
(22, 1, 'wp_user-settings-time', '1527044464'),
(23, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:2:{s:32:\"43ec517d68b6edd3015b3edc9a11367b\";a:10:{s:3:\"key\";s:32:\"43ec517d68b6edd3015b3edc9a11367b\";s:10:\"product_id\";i:81;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:12;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:12;s:8:\"line_tax\";i:0;}s:32:\"68d30a9594728bc39aa24be94b319d21\";a:10:{s:3:\"key\";s:32:\"68d30a9594728bc39aa24be94b319d21\";s:10:\"product_id\";i:84;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:2;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:24;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:24;s:8:\"line_tax\";i:0;}}}'),
(24, 1, 'closedpostboxes_dashboard', 'a:5:{i:0;s:19:\"dashboard_right_now\";i:1;s:18:\"dashboard_activity\";i:2;s:28:\"woocommerce_dashboard_status\";i:3;s:21:\"dashboard_quick_press\";i:4;s:17:\"dashboard_primary\";}'),
(25, 1, 'metaboxhidden_dashboard', 'a:0:{}'),
(26, 1, 'meta-box-order_dashboard', 'a:4:{s:6:\"normal\";s:38:\"dashboard_right_now,dashboard_activity\";s:4:\"side\";s:39:\"dashboard_quick_press,dashboard_primary\";s:7:\"column3\";s:65:\"woocommerce_dashboard_status,woocommerce_dashboard_recent_reviews\";s:7:\"column4\";s:0:\"\";}'),
(27, 1, 'upcp_products_per_page', '20'),
(28, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"111.69.241.0\";}'),
(29, 1, 'wc_last_active', '1527292800');

-- --------------------------------------------------------

--
-- Table structure for table `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'jaymmm', '$P$BIdfuzkIgRmYxQRDm7zEZzVAAiC/R11', 'jaymmm', 'cool_pals_3@yahoo.com', '', '2018-05-21 23:14:15', '', 0, 'jaymmm');

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT '0',
  `pending_delivery` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(7, '1', 'a:12:{s:4:\"cart\";s:702:\"a:2:{s:32:\"43ec517d68b6edd3015b3edc9a11367b\";a:10:{s:3:\"key\";s:32:\"43ec517d68b6edd3015b3edc9a11367b\";s:10:\"product_id\";i:81;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:12;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:12;s:8:\"line_tax\";i:0;}s:32:\"68d30a9594728bc39aa24be94b319d21\";a:10:{s:3:\"key\";s:32:\"68d30a9594728bc39aa24be94b319d21\";s:10:\"product_id\";i:84;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:2;s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:24;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:24;s:8:\"line_tax\";i:0;}}\";s:11:\"cart_totals\";s:406:\"a:15:{s:8:\"subtotal\";s:5:\"36.00\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:5:\"10.00\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:5:\"36.00\";s:17:\"cart_contents_tax\";d:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:4:\"0.00\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:5:\"46.00\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:713:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:2:\"CT\";s:7:\"country\";s:2:\"NZ\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:2:\"CT\";s:16:\"shipping_country\";s:2:\"NZ\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:21:\"cool_pals_3@yahoo.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";s:22:\"shipping_for_package_0\";s:414:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_c7cc6d8b0673a694c68f68167641b88b\";s:5:\"rates\";a:1:{s:11:\"flat_rate:1\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:11:\"flat_rate:1\";s:9:\"method_id\";s:9:\"flat_rate\";s:11:\"instance_id\";i:1;s:5:\"label\";s:9:\"Flat rate\";s:4:\"cost\";s:5:\"10.00\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:1:{s:5:\"Items\";s:57:\"Tote Bag &times; 1, \"I love to sing\" Travel mug &times; 2\";}}}}\";s:25:\"previous_shipping_methods\";s:39:\"a:1:{i:0;a:1:{i:0;s:11:\"flat_rate:1\";}}\";s:23:\"chosen_shipping_methods\";s:29:\"a:1:{i:0;s:11:\"flat_rate:1\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:0;i:1;}\";s:10:\"wc_notices\";N;}', 1527396467);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(1, 'New Zealand', 0);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(1, 1, 'NZ', 'country');

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(1, 1, 'flat_rate', 1, 1),
(0, 2, 'flat_rate', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT '0',
  `tax_rate_shipping` int(1) NOT NULL DEFAULT '1',
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_comments`
--
ALTER TABLE `wp_comments`
  ADD PRIMARY KEY (`comment_ID`),
  ADD KEY `comment_post_ID` (`comment_post_ID`),
  ADD KEY `comment_approved_date_gmt` (`comment_approved`,`comment_date_gmt`),
  ADD KEY `comment_date_gmt` (`comment_date_gmt`),
  ADD KEY `comment_parent` (`comment_parent`),
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `wp_duplicator_packages`
--
ALTER TABLE `wp_duplicator_packages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hash` (`hash`);

--
-- Indexes for table `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indexes for table `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

--
-- Indexes for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indexes for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indexes for table `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indexes for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indexes for table `wp_upcp_catalogues`
--
ALTER TABLE `wp_upcp_catalogues`
  ADD UNIQUE KEY `id` (`Catalogue_ID`);

--
-- Indexes for table `wp_upcp_catalogue_items`
--
ALTER TABLE `wp_upcp_catalogue_items`
  ADD UNIQUE KEY `id` (`Catalogue_Item_ID`);

--
-- Indexes for table `wp_upcp_categories`
--
ALTER TABLE `wp_upcp_categories`
  ADD UNIQUE KEY `id` (`Category_ID`);

--
-- Indexes for table `wp_upcp_custom_fields`
--
ALTER TABLE `wp_upcp_custom_fields`
  ADD UNIQUE KEY `id` (`Field_ID`);

--
-- Indexes for table `wp_upcp_fields_meta`
--
ALTER TABLE `wp_upcp_fields_meta`
  ADD UNIQUE KEY `id` (`Meta_ID`);

--
-- Indexes for table `wp_upcp_items`
--
ALTER TABLE `wp_upcp_items`
  ADD UNIQUE KEY `id` (`Item_ID`);

--
-- Indexes for table `wp_upcp_item_images`
--
ALTER TABLE `wp_upcp_item_images`
  ADD UNIQUE KEY `id` (`Item_Image_ID`);

--
-- Indexes for table `wp_upcp_subcategories`
--
ALTER TABLE `wp_upcp_subcategories`
  ADD UNIQUE KEY `id` (`SubCategory_ID`);

--
-- Indexes for table `wp_upcp_tagged_items`
--
ALTER TABLE `wp_upcp_tagged_items`
  ADD UNIQUE KEY `id` (`Tagged_Item_ID`);

--
-- Indexes for table `wp_upcp_tags`
--
ALTER TABLE `wp_upcp_tags`
  ADD UNIQUE KEY `id` (`Tag_ID`);

--
-- Indexes for table `wp_upcp_tag_groups`
--
ALTER TABLE `wp_upcp_tag_groups`
  ADD UNIQUE KEY `id` (`Tag_Group_ID`);

--
-- Indexes for table `wp_upcp_videos`
--
ALTER TABLE `wp_upcp_videos`
  ADD UNIQUE KEY `id` (`Item_Video_ID`);

--
-- Indexes for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indexes for table `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_duplicator_packages`
--
ALTER TABLE `wp_duplicator_packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=866;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=423;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `wp_upcp_catalogues`
--
ALTER TABLE `wp_upcp_catalogues`
  MODIFY `Catalogue_ID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_upcp_catalogue_items`
--
ALTER TABLE `wp_upcp_catalogue_items`
  MODIFY `Catalogue_Item_ID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `wp_upcp_categories`
--
ALTER TABLE `wp_upcp_categories`
  MODIFY `Category_ID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_upcp_custom_fields`
--
ALTER TABLE `wp_upcp_custom_fields`
  MODIFY `Field_ID` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_upcp_fields_meta`
--
ALTER TABLE `wp_upcp_fields_meta`
  MODIFY `Meta_ID` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_upcp_items`
--
ALTER TABLE `wp_upcp_items`
  MODIFY `Item_ID` mediumint(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_upcp_item_images`
--
ALTER TABLE `wp_upcp_item_images`
  MODIFY `Item_Image_ID` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_upcp_subcategories`
--
ALTER TABLE `wp_upcp_subcategories`
  MODIFY `SubCategory_ID` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_upcp_tagged_items`
--
ALTER TABLE `wp_upcp_tagged_items`
  MODIFY `Tagged_Item_ID` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_upcp_tags`
--
ALTER TABLE `wp_upcp_tags`
  MODIFY `Tag_ID` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_upcp_tag_groups`
--
ALTER TABLE `wp_upcp_tag_groups`
  MODIFY `Tag_Group_ID` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_upcp_videos`
--
ALTER TABLE `wp_upcp_videos`
  MODIFY `Item_Video_ID` mediumint(9) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `wp_wc_download_log_ibfk_1` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
