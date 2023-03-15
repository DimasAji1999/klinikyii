-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 15, 2023 at 05:29 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `klinikyii`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_assignment`
--

CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('administrator', '1', 1678785251),
('administratorPermission', '1', 1678785868),
('dokter', '3', 1678785271),
('dokterPermission', '3', 1678785990),
('pasien', '2', 1678785260),
('pasienPermission', '2', 1678785979);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` smallint(6) NOT NULL,
  `description` text DEFAULT NULL,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` blob DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/*', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/*', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/assignment/*', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/assignment/assign', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/assignment/index', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/assignment/revoke', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/assignment/view', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/default/*', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/default/index', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/menu/*', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/menu/create', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/menu/delete', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/menu/index', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/menu/update', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/menu/view', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/permission/*', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/permission/assign', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/permission/create', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/permission/delete', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/permission/get-users', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/permission/index', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/permission/remove', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/permission/update', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/permission/view', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/role/*', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/role/assign', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/role/create', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/role/delete', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/role/get-users', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/role/index', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/role/remove', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/role/update', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/role/view', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/route/*', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/route/assign', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/route/create', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/route/index', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/route/refresh', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/route/remove', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/rule/*', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/rule/create', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/rule/delete', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/rule/index', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/rule/update', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/rule/view', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/user/*', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/user/activate', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/user/change-password', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/user/delete', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/user/index', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/user/login', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/user/logout', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/user/request-password-reset', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/user/reset-password', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/user/signup', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/admin/user/view', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/debug/*', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/debug/default/*', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/debug/default/db-explain', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/debug/default/download-mail', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/debug/default/index', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/debug/default/toolbar', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/debug/default/view', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/debug/user/*', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/debug/user/reset-identity', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/debug/user/set-identity', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/dokter/*', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/dokter/create', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/dokter/delete', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/dokter/index', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/dokter/update', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/dokter/view', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/gii/*', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/gii/default/*', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/gii/default/action', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/gii/default/diff', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/gii/default/index', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/gii/default/preview', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/gii/default/view', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/kategori/*', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/kategori/create', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/kategori/delete', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/kategori/index', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/kategori/update', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/kategori/view', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/layanan/*', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/layanan/create', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/layanan/delete', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/layanan/index', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/layanan/update', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/layanan/view', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/obat/*', 2, NULL, NULL, NULL, 1678845834, 1678845834),
('/obat/create', 2, NULL, NULL, NULL, 1678845834, 1678845834),
('/obat/delete', 2, NULL, NULL, NULL, 1678845834, 1678845834),
('/obat/index', 2, NULL, NULL, NULL, 1678845834, 1678845834),
('/obat/update', 2, NULL, NULL, NULL, 1678845834, 1678845834),
('/obat/view', 2, NULL, NULL, NULL, 1678845834, 1678845834),
('/pasien/*', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/pasien/create', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/pasien/delete', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/pasien/index', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/pasien/update', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/pasien/view', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/pembayaran/*', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/pembayaran/create', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/pembayaran/delete', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/pembayaran/grafik-harga-pembayaran', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/pembayaran/index', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/pembayaran/update', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/pembayaran/view', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/site/*', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/site/about', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/site/captcha', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/site/contact', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/site/error', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/site/index', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/site/login', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/site/logout', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/user/*', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/user/admin/*', 2, NULL, NULL, NULL, 1678784403, 1678784403),
('/user/admin/assignments', 2, NULL, NULL, NULL, 1678784403, 1678784403),
('/user/admin/block', 2, NULL, NULL, NULL, 1678784403, 1678784403),
('/user/admin/confirm', 2, NULL, NULL, NULL, 1678784403, 1678784403),
('/user/admin/create', 2, NULL, NULL, NULL, 1678784403, 1678784403),
('/user/admin/delete', 2, NULL, NULL, NULL, 1678784403, 1678784403),
('/user/admin/index', 2, NULL, NULL, NULL, 1678784403, 1678784403),
('/user/admin/info', 2, NULL, NULL, NULL, 1678784403, 1678784403),
('/user/admin/resend-password', 2, NULL, NULL, NULL, 1678784403, 1678784403),
('/user/admin/switch', 2, NULL, NULL, NULL, 1678784403, 1678784403),
('/user/admin/update', 2, NULL, NULL, NULL, 1678784403, 1678784403),
('/user/admin/update-profile', 2, NULL, NULL, NULL, 1678784403, 1678784403),
('/user/profile/*', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/user/profile/index', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/user/profile/show', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/user/recovery/*', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/user/recovery/request', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/user/recovery/reset', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/user/registration/*', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/user/registration/confirm', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/user/registration/connect', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/user/registration/register', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/user/registration/resend', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/user/security/*', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/user/security/auth', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/user/security/login', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/user/security/logout', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/user/settings/*', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/user/settings/account', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/user/settings/confirm', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/user/settings/delete', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/user/settings/disconnect', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/user/settings/networks', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('/user/settings/profile', 2, NULL, NULL, NULL, 1678784404, 1678784404),
('administrator', 1, NULL, NULL, NULL, 1678784547, 1678784547),
('administratorPermission', 2, NULL, NULL, NULL, 1678784639, 1678784639),
('dokter', 1, NULL, NULL, NULL, 1678784571, 1678784571),
('dokterPermission', 2, NULL, NULL, NULL, 1678784656, 1678784656),
('pasien', 1, NULL, NULL, NULL, 1678784588, 1678784588),
('pasienPermission', 2, NULL, NULL, NULL, 1678784671, 1678784671);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_child`
--

CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('administrator', '/*'),
('administrator', 'administratorPermission'),
('administratorPermission', '/*'),
('administratorPermission', '/obat/*'),
('administratorPermission', '/obat/create'),
('administratorPermission', '/obat/delete'),
('administratorPermission', '/obat/index'),
('administratorPermission', '/obat/update'),
('administratorPermission', '/obat/view'),
('dokterPermission', '/layanan/*'),
('pasienPermission', '/layanan/index'),
('pasienPermission', '/pasien/create'),
('pasienPermission', '/pasien/index'),
('pasienPermission', '/pembayaran/index');

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` blob DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dokter`
--

CREATE TABLE `dokter` (
  `id` int(100) NOT NULL,
  `nama_dokter` varchar(100) NOT NULL,
  `usia` int(100) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dokter`
--

INSERT INTO `dokter` (`id`, `nama_dokter`, `usia`, `alamat`) VALUES
(1, 'Stefanus', 70, 'Bandung'),
(2, 'Agus', 68, 'Jakarta');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id` int(100) NOT NULL,
  `nama_layanan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id`, `nama_layanan`) VALUES
(1, 'Telinga'),
(2, 'Hidung'),
(3, 'Tenggorokan');

-- --------------------------------------------------------

--
-- Table structure for table `layanan`
--

CREATE TABLE `layanan` (
  `id` int(100) NOT NULL,
  `id_pasien` int(100) NOT NULL,
  `id_dokter` int(100) NOT NULL,
  `id_kategori` int(100) NOT NULL,
  `keluhan` varchar(100) NOT NULL,
  `solusi` varchar(100) NOT NULL,
  `id_obat` int(100) NOT NULL,
  `qty` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `layanan`
--

INSERT INTO `layanan` (`id`, `id_pasien`, `id_dokter`, `id_kategori`, `keluhan`, `solusi`, `id_obat`, `qty`) VALUES
(2, 1, 1, 2, 'Sakit Tenggorokan', 'hindari makanan pedas serta minum obat  yang telah diberikan sebanyak 3 x 1 sehari', 4, 8),
(3, 2, 2, 2, 'flu tersumbat', 'minum obat yang telah diberikan sebanyak 3x1 sehari', 4, 10);

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1678780112),
('m140209_132017_init', 1678780119),
('m140403_174025_create_account_table', 1678780119),
('m140504_113157_update_tables', 1678780119),
('m140504_130429_create_token_table', 1678780120),
('m140506_102106_rbac_init', 1678783686),
('m140830_171933_fix_ip_field', 1678780120),
('m140830_172703_change_account_table_name', 1678780120),
('m141222_110026_update_ip_field', 1678780120),
('m141222_135246_alter_username_length', 1678780120),
('m150614_103145_update_social_account_table', 1678780120),
('m150623_212711_fix_username_notnull', 1678780120),
('m151218_234654_add_timezone_to_profile', 1678780120),
('m160929_103127_add_last_login_at_to_user_table', 1678780121),
('m170907_052038_rbac_add_index_on_auth_assignment_user_id', 1678783686),
('m180523_151638_rbac_updates_indexes_without_prefix', 1678783687),
('m200409_110543_rbac_update_mssql_trigger', 1678783687);

-- --------------------------------------------------------

--
-- Table structure for table `obat`
--

CREATE TABLE `obat` (
  `id` int(100) NOT NULL,
  `nama_obat` varchar(100) NOT NULL,
  `stok` int(150) NOT NULL,
  `harga` int(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `obat`
--

INSERT INTO `obat` (`id`, `nama_obat`, `stok`, `harga`) VALUES
(4, 'Fluinzana', 20, 20000),
(5, 'Migranize', 50, 20000),
(6, 'Inzana', 70, 20000);

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id` int(100) NOT NULL,
  `nama_pasien` varchar(100) NOT NULL,
  `no_hp` int(20) NOT NULL,
  `usia` int(100) NOT NULL,
  `pekerjaan` varchar(100) NOT NULL,
  `alamat` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id`, `nama_pasien`, `no_hp`, `usia`, `pekerjaan`, `alamat`) VALUES
(1, 'Salih', 2147483647, 20, 'mahasiswa', 'Bandung'),
(2, 'Raden', 2147483647, 21, 'mahasiswa', 'Bandung');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id` int(11) NOT NULL,
  `id_layanan` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`id`, `id_layanan`, `harga`) VALUES
(1, 2, 200000),
(2, 3, 150000);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `public_email` varchar(255) DEFAULT NULL,
  `gravatar_email` varchar(255) DEFAULT NULL,
  `gravatar_id` varchar(32) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `bio` text DEFAULT NULL,
  `timezone` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile` (`user_id`, `name`, `public_email`, `gravatar_email`, `gravatar_id`, `location`, `website`, `bio`, `timezone`) VALUES
(1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(2, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `social_account`
--

CREATE TABLE `social_account` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `provider` varchar(255) NOT NULL,
  `client_id` varchar(255) NOT NULL,
  `data` text DEFAULT NULL,
  `code` varchar(32) DEFAULT NULL,
  `created_at` int(11) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `token`
--

CREATE TABLE `token` (
  `user_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `created_at` int(11) NOT NULL,
  `type` smallint(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `token`
--

INSERT INTO `token` (`user_id`, `code`, `created_at`, `type`) VALUES
(1, 'z8yAGEmOavVKmUPxJjXPRNT14bDfMwEq', 1678780545, 0),
(2, 'PCfyMAxCdE-OsbGAvW8Sb6fQ6eFsHDq8', 1678781287, 0),
(3, 't_-Ie9kvQ9g88uOHtEk_uWPS7HYrvSL8', 1678784205, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password_hash` varchar(60) NOT NULL,
  `auth_key` varchar(32) NOT NULL,
  `confirmed_at` int(11) DEFAULT NULL,
  `unconfirmed_email` varchar(255) DEFAULT NULL,
  `blocked_at` int(11) DEFAULT NULL,
  `registration_ip` varchar(45) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `flags` int(11) NOT NULL DEFAULT 0,
  `last_login_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password_hash`, `auth_key`, `confirmed_at`, `unconfirmed_email`, `blocked_at`, `registration_ip`, `created_at`, `updated_at`, `flags`, `last_login_at`) VALUES
(1, 'admin', 'admin@gmail.com', '$2y$10$dg2UkXLhtqoMz.gSTNZRuuz3TAXUztUbsuYCJwQyj9PSjKkiWTxfO', 'GwtNQTDK4CNtA3TIEP9E1OGNg-emQMNw', 1678781008, NULL, NULL, '::1', 1678780545, 1678780545, 0, 1678847113),
(2, 'pasien', 'pasien@gmail.com', '$2y$10$pOx4xWvIvAityW/SZ6kCPePK6SwoDUuOCXElyZPK2icRAElEOucle', 'uZKZMCbiwJVgQf11xlWMh24e_1-AwsSZ', 1678781497, NULL, NULL, '::1', 1678781286, 1678781286, 0, 1678847099),
(3, 'dokter', 'dokter@gmail.com', '$2y$10$vLQCAMba5UwTCzY9ULnkP.7doyjGc8zKzGXZW9DHEs7/560o./6K6', 'dHB9VMIQoHxpETBhUDcGFEt2GLWyE23v', 1678784256, NULL, NULL, '::1', 1678784205, 1678784205, 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD PRIMARY KEY (`item_name`,`user_id`),
  ADD KEY `idx-auth_assignment-user_id` (`user_id`);

--
-- Indexes for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD PRIMARY KEY (`name`),
  ADD KEY `rule_name` (`rule_name`),
  ADD KEY `idx-auth_item-type` (`type`);

--
-- Indexes for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD PRIMARY KEY (`parent`,`child`),
  ADD KEY `child` (`child`);

--
-- Indexes for table `auth_rule`
--
ALTER TABLE `auth_rule`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `dokter`
--
ALTER TABLE `dokter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `layanan`
--
ALTER TABLE `layanan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_pasien` (`id_pasien`),
  ADD KEY `id_dokter` (`id_dokter`),
  ADD KEY `id_kategori` (`id_kategori`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `obat`
--
ALTER TABLE `obat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_layanan` (`id_layanan`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `social_account`
--
ALTER TABLE `social_account`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `account_unique` (`provider`,`client_id`),
  ADD UNIQUE KEY `account_unique_code` (`code`),
  ADD KEY `fk_user_account` (`user_id`);

--
-- Indexes for table `token`
--
ALTER TABLE `token`
  ADD UNIQUE KEY `token_unique` (`user_id`,`code`,`type`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_unique_username` (`username`),
  ADD UNIQUE KEY `user_unique_email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dokter`
--
ALTER TABLE `dokter`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `layanan`
--
ALTER TABLE `layanan`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `obat`
--
ALTER TABLE `obat`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `social_account`
--
ALTER TABLE `social_account`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
  ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auth_item`
--
ALTER TABLE `auth_item`
  ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
  ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `layanan`
--
ALTER TABLE `layanan`
  ADD CONSTRAINT `layanan_ibfk_1` FOREIGN KEY (`id_pasien`) REFERENCES `pasien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `layanan_ibfk_2` FOREIGN KEY (`id_dokter`) REFERENCES `dokter` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `layanan_ibfk_3` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`id_layanan`) REFERENCES `layanan` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `profile`
--
ALTER TABLE `profile`
  ADD CONSTRAINT `fk_user_profile` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `social_account`
--
ALTER TABLE `social_account`
  ADD CONSTRAINT `fk_user_account` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `token`
--
ALTER TABLE `token`
  ADD CONSTRAINT `fk_user_token` FOREIGN KEY (`user_id`) REFERENCES `user` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
