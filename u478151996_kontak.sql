-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Jul 01, 2025 at 04:32 AM
-- Server version: 10.11.10-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u478151996_kontak`
--

-- --------------------------------------------------------

--
-- Table structure for table `cabang`
--

CREATE TABLE `cabang` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) NOT NULL,
  `nama_cabang` varchar(255) NOT NULL,
  `no_whatsapp` varchar(255) NOT NULL,
  `maps_link` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cabang`
--

INSERT INTO `cabang` (`id`, `logo`, `nama_cabang`, `no_whatsapp`, `maps_link`, `created_at`, `updated_at`) VALUES
(1, '01JP6VJ412QZ86AJAHW9VWFP6Z.png', 'Center', '6281317773055', 'https://maps.app.goo.gl/P9TasCPc2piS7g3r9', '2025-03-09 21:33:38', '2025-03-12 21:17:50'),
(2, '01JZ2117RCB6G35T3HBD6EPHYF.png', 'Jogja', '6281392798235', 'https://maps.app.goo.gl/P9TasCPc2piS7g3r9', '2025-03-09 21:35:25', '2025-07-01 03:38:33'),
(3, '01JZ2103NNW7BT9THHGG3Y92X5.png', 'Jakarta', '6281234900094', 'https://maps.app.goo.gl/ERr5Thp2LYWGe6u27', '2025-03-09 21:36:32', '2025-07-01 03:37:56'),
(4, '01JZ2127V84CD080DZRTVXRWDE.png', 'Bandung', '6281317773044', 'https://maps.app.goo.gl/X2yWSfbbBoje14Rj8', '2025-03-09 21:37:27', '2025-07-01 03:39:05');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2025_03_10_025824_create_cabangs_table', 1),
(6, '2025_03_10_025826_create_sosial_media_table', 1),
(7, '2025_03_10_025828_create_tokos_table', 1),
(8, '2025_03_10_025829_create_pesans_table', 1),
(9, '2025_03_13_021303_add_role_to_users_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
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
-- Table structure for table `pesan`
--

CREATE TABLE `pesan` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `no_whatsapp` varchar(255) NOT NULL,
  `merk_mobil` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `pesan` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pesan`
--

INSERT INTO `pesan` (`id`, `nama`, `no_whatsapp`, `merk_mobil`, `kota`, `pesan`, `created_at`, `updated_at`) VALUES
(1, 'Nana', '0895422781232', 'Honda', 'Yogyakarta', 'Mau kupon', '2025-03-09 23:02:44', '2025-03-09 23:02:44'),
(2, 'Nana', '0895422781232', 'Honda', 'Yogyakarta', 'Mau kupon service', '2025-02-11 23:03:48', '2025-02-11 23:03:48'),
(3, 'Nana', '0895422781232', 'Honda', 'Yogyakarta', 'Mau kupon', '2025-03-09 23:09:12', '2025-03-09 23:09:12'),
(4, 'Nana', '0895422781232', 'Honda', 'Yogyakarta', 'Mau', '2025-03-09 23:10:46', '2025-03-09 23:10:46'),
(5, 'Nana', '0895422781232', 'Honda', 'Yogyakarta', 'Mau', '2025-03-09 23:14:25', '2025-03-09 23:14:25'),
(6, 'Nana', '0895422781232', 'Honda', 'Yogyakarta', 'Klaim voucher', '2025-03-10 00:01:14', '2025-03-10 00:01:14'),
(7, 'Admin', '0895422781232', 'Honda', 'Yogyakarta', 'Mau', '2025-03-10 00:11:18', '2025-03-10 00:11:18'),
(8, 'Ayee', '081399448894', 'Inova', 'Yogyakarta', 'Mau', '2025-03-13 00:34:30', '2025-03-13 00:34:30'),
(9, 'Jason widyanata', '085803709599', 'Sigra', 'Salatiga', 'Lampu spedo meter', '2025-03-24 06:29:12', '2025-03-24 06:29:12'),
(10, 'Muhammad Rizka', '081242047078', 'Jazz ge8', 'Jakarta', 'Speedometer', '2025-03-24 07:04:38', '2025-03-24 07:04:38'),
(11, 'Dwiki', '081283925452', 'Civic fd', 'Bandung', 'Custom', '2025-03-24 09:07:59', '2025-03-24 09:07:59'),
(12, 'Fadhil', '‪+62 878‑1199‑4353‬', 'Innova 2005', 'Jakarta', 'Service spido blank', '2025-03-24 11:36:49', '2025-03-24 11:36:49'),
(13, 'Galih Linggar', '085712323888', 'Xenia', 'Kulonprogo', 'Boleh di info kan habis brp klau benerin spedo xenia old biar kece', '2025-03-25 01:42:52', '2025-03-25 01:42:52'),
(14, 'Audy hezkel', '081218998583', 'toyota innova', 'jakarta barat', 'reset speedo', '2025-03-25 02:18:03', '2025-03-25 02:18:03'),
(15, 'Audy hezkel', '081218998583', 'toyota innova', 'jakarta barat', 'reset speedo', '2025-03-25 02:18:05', '2025-03-25 02:18:05'),
(16, 'Audy', '081218998583', 'innova', 'jakarta', 'reset speedo innova', '2025-03-25 02:18:48', '2025-03-25 02:18:48'),
(17, 'Ruri Ainur Rafiq', '082180782024', 'Datsun pickup 620', 'Bandar Lampung', 'Bisa kostum speedometer? Apa ada link shopee nya', '2025-03-25 02:31:04', '2025-03-25 02:31:04'),
(18, 'Ruri Ainur Rafiq', '082180782024', 'Datsun Pickup 620', 'Bandar Lampung', 'Bisa kostum speedometer? Apa ada link shopee', '2025-03-25 02:31:53', '2025-03-25 02:31:53'),
(19, 'Audy', '+6281218998583', 'toyota innova', 'jakarta', 'reset speedo', '2025-03-25 02:47:43', '2025-03-25 02:47:43'),
(20, 'Audy', '+6281218998583', 'toyota innova', 'jakarta', 'reset speedo', '2025-03-25 02:47:44', '2025-03-25 02:47:44'),
(21, 'Michael', '0811981288', 'Toyota', 'Jakarta', '.', '2025-03-25 05:38:30', '2025-03-25 05:38:30'),
(22, 'Michael', '0811981288', 'Toyota', 'Jakarta', '.', '2025-03-25 05:38:32', '2025-03-25 05:38:32'),
(23, 'test', '12345', 'toyota', 'yogyakarta', 'test saja', '2025-04-09 03:27:33', '2025-04-09 03:27:33'),
(24, 'Krisna Mulyana', '082243440671', 'MB E 250', 'Bekasi', 'Halo, saya mau tanya untuk estimasi perbaikan sunburn pada head unit mobil saya, terimakasih', '2025-04-09 06:07:48', '2025-04-09 06:07:48'),
(25, 'fadil', '081322729362', 'toyota vios 2014', 'jakarta timur', 'apakah bisa mengganti layar headunit yg sunburn? dan tombol setir yg macet?', '2025-04-09 07:49:02', '2025-04-09 07:49:02'),
(26, 'Lionardo Cardien', '085732255217', 'Toyata Yaris Bakpao', 'Sidoarjo', 'apa bisa beningin kaca speedometer dan ganti model speedometernya ?', '2025-04-09 07:54:28', '2025-04-09 07:54:28'),
(27, 'Fiktori', '087881188717', 'Agya GR sport', 'Jogja', 'Speedometer custom', '2025-04-09 13:07:44', '2025-04-09 13:07:44'),
(28, 'Dwi Purnomo', '085725505025', 'Toyota Fortuner VNT 2013', 'Jogjakarta', 'Perbaikan penunjuk meteran solar yang tidak sesuai dengan solar yang ada di tangki', '2025-04-09 23:57:06', '2025-04-09 23:57:06'),
(29, 'Mahardika Bagus Syahputra', '085649925441', 'Honda Grand Civic 90', 'Surabaya', 'Honda Grand Civic 90', '2025-04-10 02:53:35', '2025-04-10 02:53:35'),
(30, 'Mahardika Bagus Syahputra', '085649925441', 'Honda Grand Civic 90', 'Surabaya', 'Honda Grand Civic 90', '2025-04-10 02:53:37', '2025-04-10 02:53:37'),
(31, 'Mutiara', '0895415713288', 'Brio satya 2024', 'Bandung', 'Brp custom speedometer kak?', '2025-04-10 05:30:19', '2025-04-10 05:30:19'),
(32, 'Mutiara', '0895415713288', 'Brio satya 2024', 'Bandung', 'Brp custom speedometer kak?', '2025-04-10 05:30:21', '2025-04-10 05:30:21'),
(33, 'Mutiara', '0895415713288', 'Brio satya 2024', 'Bandung', 'Brp custom speedometer kak?', '2025-04-10 05:30:22', '2025-04-10 05:30:22'),
(34, 'Indra', '0822 1300 3300', 'Hyundai getz', 'Surabaya', 'Odo mati total', '2025-04-10 06:36:32', '2025-04-10 06:36:32'),
(35, 'Rendy', '08812925265', 'Reborn G', 'Jepara', 'Mau custom kaka', '2025-04-10 10:21:08', '2025-04-10 10:21:08'),
(36, 'Rendy', '08812925265', 'Reborn G', 'Jepara', 'Mau custom kaka', '2025-04-10 10:21:09', '2025-04-10 10:21:09'),
(37, 'Yeremias Surya', '081232768272', 'Datsun Sunny', 'Tuban', 'Cluster speedometer', '2025-04-10 13:17:50', '2025-04-10 13:17:50'),
(38, 'Avisiena', '082232492719', 'Mazda', 'Yogyakarta', 'Bisa perbaikan bunyi lampu sent dan alarm seatbelt?', '2025-04-10 23:13:11', '2025-04-10 23:13:11'),
(39, 'David', '085370704848', 'KIA sportage', 'Jakarta', 'LCD speedometer seperti banyak retakan', '2025-04-11 14:30:28', '2025-04-11 14:30:28'),
(40, 'Badru', '081311154814', 'Toyota Avanza', 'Bekasi', 'Bisa ganti lcd speedometer avanza at 2016?', '2025-04-12 06:01:49', '2025-04-12 06:01:49'),
(41, 'Rachmad arianto anwar', '081330343354', 'Toyota', 'Sidoarjo', 'Modif speedometer agya', '2025-04-12 08:04:33', '2025-04-12 08:04:33'),
(42, 'Hendra', '08117409742', 'Mercedes Benz A200', 'Jakarta', 'Modifikasi Projie Headlamp', '2025-04-12 10:58:08', '2025-04-12 10:58:08'),
(43, 'Hendra', '08117409742', 'Mercedes Benz A200', 'Jakarta', 'Modifikasi Projie Headlamp', '2025-04-12 10:58:08', '2025-04-12 10:58:08'),
(44, 'Hendra', '08117409742', 'Mercedes Benz A200', 'Jakarta', 'Modifikasi Headlamp', '2025-04-12 10:58:45', '2025-04-12 10:58:45'),
(45, 'Arief', '0811737788', 'Honda crv gen 1', 'Bengkulu', 'Custom spd', '2025-04-12 12:17:24', '2025-04-12 12:17:24'),
(46, 'Syfii', '081315960031', 'Toyota Calya', 'Bekasi', 'Berapa priceliast ganti lampu spidometer jadi putih', '2025-04-13 00:23:33', '2025-04-13 00:23:33'),
(47, 'Bima mahesa', '085776039475', 'Innova bensin 2005', 'Sanggau', 'Custom papan', '2025-04-13 08:44:06', '2025-04-13 08:44:06'),
(48, 'Ade', '081539834519', 'Yamaha', 'Sumedang', 'Bisa betulkan spedometer yg lampu backlight nya mati?', '2025-04-13 12:13:55', '2025-04-13 12:13:55'),
(49, 'Ari', '085866361017', 'Everest TDI', 'Sleman', 'Service speedometer everes TDI', '2025-04-14 06:49:11', '2025-04-14 06:49:11'),
(50, 'Indra', '0819878177', 'Bmw e36 323i', 'Tangerang', 'Servis spedo meter n lcd ac', '2025-04-14 11:35:58', '2025-04-14 11:35:58'),
(51, 'Erwin', '082233339992', 'Toyota', 'Surabaya', 'Panel speedometer innova barong', '2025-04-14 11:39:43', '2025-04-14 11:39:43'),
(52, 'Erik', '089613059303', 'Innova Grand new 2012', 'Pontianak', 'Terdepan', '2025-04-14 18:04:15', '2025-04-14 18:04:15'),
(53, 'Fernal', '081932066130', 'Toyota agya 2017', 'Tangerang', 'Custom spido', '2025-04-16 02:52:44', '2025-04-16 02:52:44'),
(54, 'Fernal', '081932066130', 'Toyota agya 2017', 'Tangerang', 'Custom spido', '2025-04-16 02:52:45', '2025-04-16 02:52:45'),
(55, 'Robby Efendi', '0816359617', 'Avanza', 'Depok', 'Mau tambah kilometer mobil', '2025-04-16 04:07:09', '2025-04-16 04:07:09'),
(56, 'Robby Efendi', '0816359617', 'Avanza', 'Depok', 'Mau tambah kilometer mobil', '2025-04-16 04:07:11', '2025-04-16 04:07:11'),
(57, 'Naufal Hana', '0895379880451', 'Honda CRV', 'Batu', 'Pesan', '2025-04-16 06:07:28', '2025-04-16 06:07:28'),
(58, 'ardifin', '0817328686', 'daihatsu luxio', 'medan', 'skin pesan panel ac luxio 2025', '2025-04-16 09:01:02', '2025-04-16 09:01:02'),
(59, 'Dawan', '081223853445', 'Avanza', 'Bekasi', 'Cek harga costom spedometer mobil avanza 2017', '2025-04-16 14:54:46', '2025-04-16 14:54:46'),
(60, 'Dawan', '081223853445', 'Avanza', 'Bekasi', 'Cek harga costom spedometer mobil avanza 2017', '2025-04-16 14:54:47', '2025-04-16 14:54:47'),
(61, 'Aldi', '085343582592', 'Avanza lama old', 'Kota palopo', 'Panel spidometer avanza lama', '2025-04-17 02:19:00', '2025-04-17 02:19:00'),
(62, 'Kiky', '081779134506', 'Toyota Starlet', 'Jakarta', 'Tanya tanya custom speedometer', '2025-04-17 02:32:56', '2025-04-17 02:32:56'),
(63, 'Harry', '081380280280', 'Mercedes benz', 'Jakarta', 'Mau hilangin sunburn', '2025-04-17 10:59:39', '2025-04-17 10:59:39'),
(64, 'Harry', '081380280280', 'Mercedes benz', 'Jakarta', 'Mau hilangin sunburn', '2025-04-17 10:59:41', '2025-04-17 10:59:41'),
(65, 'Reno', '085219915880', 'Civic ferio 1996', 'Jakarta barat', 'Di harga brp?', '2025-04-17 23:40:10', '2025-04-17 23:40:10'),
(66, 'Andrianto Rahmadha', '085312952052', 'Ford Escape', 'Bekasi', 'Custom plus repait Ford Escape 2012', '2025-04-18 00:59:50', '2025-04-18 00:59:50'),
(67, 'Isa', '081283813287', 'Inova reborn g', 'Surabaya', 'Spd', '2025-04-18 03:42:20', '2025-04-18 03:42:20'),
(68, 'Isa', '081283813287', 'Inova reborn g', 'Surabaya', 'Spd', '2025-04-18 03:42:22', '2025-04-18 03:42:22'),
(69, 'Jerry', '082120337092', 'Crv', 'Jakarta', 'Services speedo meter', '2025-04-18 04:14:35', '2025-04-18 04:14:35'),
(70, 'Salmaa Salsabiila', '082243004556', 'Splash', 'Jogja', 'Service', '2025-04-18 05:59:42', '2025-04-18 05:59:42'),
(71, 'Salmaa Salsabiila', '082243004556', 'Splash', 'Jogja', 'Service', '2025-04-18 05:59:45', '2025-04-18 05:59:45'),
(72, 'Dhanes', '082321871114', 'Mirage', 'Jogja', 'kupon', '2025-04-18 08:11:13', '2025-04-18 08:11:13'),
(73, 'Gilang', '085865136515', 'Toyota Fortuner', 'Magelang', 'Speedometer & led kabin', '2025-04-19 15:05:50', '2025-04-19 15:05:50'),
(74, 'Gilang', '085865136515', 'Toyota Fortuner', 'Magelang', 'Speedometer & led kabin', '2025-04-19 15:05:52', '2025-04-19 15:05:52'),
(75, 'irvan', '081222253453', 'toyota noah', 'bandung', 'perbaikan monitor tengah plafond', '2025-04-19 23:33:25', '2025-04-19 23:33:25'),
(76, 'irvan', '081222253453', 'toyota noah', 'bandung', 'perbaikan monitor tengah plafond', '2025-04-19 23:33:28', '2025-04-19 23:33:28'),
(77, 'Hapis', '081294093391', 'Avanza 2013', 'Bekasi', 'Mau custum spido meter avanza', '2025-04-20 03:08:17', '2025-04-20 03:08:17'),
(78, 'Hapis', '081294093391', 'Avanza 2013', 'Bekasi', 'Mau custum spido meter avanza', '2025-04-20 03:08:19', '2025-04-20 03:08:19'),
(79, 'Hapis', '081294093391', 'Avanza 2013', 'Bekasi', 'Mau custum spido meter avanza', '2025-04-20 03:08:21', '2025-04-20 03:08:21'),
(80, 'Hapis', '081294093391', 'Avanza 2013', 'Bekasi', 'Mau custum spido meter avanza', '2025-04-20 03:08:21', '2025-04-20 03:08:21'),
(81, 'Hapis', '081294093391', 'Avanza 2013', 'Bekasi', 'Mau custum spido meter avanza', '2025-04-20 03:08:21', '2025-04-20 03:08:21'),
(82, 'Hapis', '081294093391', 'Avanza 2013', 'Bekasi', 'Mau custum spido meter avanza', '2025-04-20 03:08:21', '2025-04-20 03:08:21'),
(83, 'Hapis', '081294093391', 'Avanza 2013', 'Bekasi', 'Mau custum spido meter avanza', '2025-04-20 03:08:21', '2025-04-20 03:08:21'),
(84, 'Hapis', '081294093391', 'Avanza 2013', 'Bekasi', 'Mau custum spido meter avanza', '2025-04-20 03:08:22', '2025-04-20 03:08:22'),
(85, 'Riyans', '089630212041', 'Kijang Innova', 'Jakarta barat', 'Lampu sepidometer', '2025-04-20 07:49:19', '2025-04-20 07:49:19'),
(86, 'Riyans', '089630212041', 'Kijang Innova', 'Jakarta barat', 'Lampu sepidometer', '2025-04-20 07:49:21', '2025-04-20 07:49:21'),
(87, 'Firdaus', '08978847380', 'Nissan March', 'Jakarta', 'Modifikasi Speedometer', '2025-04-21 02:12:52', '2025-04-21 02:12:52'),
(88, 'Firdaus Karim', '08978847380', 'Nissan March', 'Jakarta', 'Modifikasi Speedometer', '2025-04-21 02:13:29', '2025-04-21 02:13:29'),
(89, 'Firdaus Karim', '08978847380', 'Nissan March', 'Jakarta', 'Modifikasi Speedometer', '2025-04-21 02:13:30', '2025-04-21 02:13:30'),
(90, 'Pristika', '085156906158', 'Daihatsu', 'Jakarta', 'Service speedometer', '2025-04-21 03:38:45', '2025-04-21 03:38:45'),
(91, 'Kiki Novan Fernanda', '085860460203', 'Yamaha', 'Bandung', 'Bagus', '2025-04-21 03:44:15', '2025-04-21 03:44:15'),
(92, 'Hary cahyono', '082255087281', 'Hilux type V', 'Berau', 'Service', '2025-04-21 13:27:18', '2025-04-21 13:27:18'),
(93, 'Dimas', '087887576871', 'Raize', 'Bekasi', 'Customer shifter raize', '2025-04-22 08:18:11', '2025-04-22 08:18:11'),
(94, 'firman', '08976205740', 'civic fd', 'wonosobo', 'service', '2025-04-22 18:25:38', '2025-04-22 18:25:38'),
(95, 'firman', '08976205740', 'civic fd', 'wonosobo', 'service', '2025-04-22 18:25:40', '2025-04-22 18:25:40'),
(96, 'firman', '08976205740', 'civic fd', 'wonosobo', 'service', '2025-04-22 18:25:41', '2025-04-22 18:25:41'),
(97, 'firman', '08976205740', 'civic fd', 'wonosobo', 'service', '2025-04-22 18:25:42', '2025-04-22 18:25:42'),
(98, 'firman', '08976205740', 'civic fd', 'wonosobo', 'service', '2025-04-22 18:25:44', '2025-04-22 18:25:44'),
(99, 'firman', '08976205740', 'civic fd', 'wonosobo', 'service', '2025-04-22 18:25:45', '2025-04-22 18:25:45'),
(100, 'firman', '08976205740', 'civic fd', 'wonosobo', 'service', '2025-04-22 18:25:45', '2025-04-22 18:25:45'),
(101, 'firman', '08976205740', 'civic fd', 'wonosobo', 'service', '2025-04-22 18:25:45', '2025-04-22 18:25:45'),
(102, 'firman', '08976205740', 'civic fd', 'wonosobo', 'service', '2025-04-22 18:25:46', '2025-04-22 18:25:46'),
(103, 'Jeff Lie', '081381005556', 'Mercy S600 2011', 'Jakarta Utara', 'Repair Layar Tape', '2025-04-23 00:38:52', '2025-04-23 00:38:52'),
(104, 'Jeff Lie', '081381005556', 'Mercy S600 2011', 'Jakarta Utara', 'Repair Layar Tape', '2025-04-23 00:38:54', '2025-04-23 00:38:54'),
(105, 'Angelo', '082338590567', 'Megapro', 'Jakarta', 'Mau servis speedo', '2025-04-23 01:00:50', '2025-04-23 01:00:50'),
(106, 'Akhid Giri', '087839356153', 'Toyota Innova 2005 G', 'Gunungkidul', 'Servis speedometer', '2025-04-24 02:03:24', '2025-04-24 02:03:24'),
(107, 'Galihwibisono', '085813527343', 'Civic fd', 'Mojokerto', 'Service spidometer', '2025-04-24 13:26:25', '2025-04-24 13:26:25'),
(108, 'Danu', '08997332670', 'Suzuki Baleno', 'Bekasi', 'Service indikator speedometer mati dan indikator bensin tidak mau naik lebih dari 1 bar', '2025-04-25 03:58:54', '2025-04-25 03:58:54'),
(109, 'Ferry', '081326822121', 'Nissan navara 2012', 'Rembang', 'Custom like new, blue', '2025-04-25 14:41:35', '2025-04-25 14:41:35'),
(110, 'Ferry', '081326822121', 'Nissan navara 2012', 'Rembang', 'Custom like new, blue', '2025-04-25 14:41:36', '2025-04-25 14:41:36'),
(111, 'Ferry', '081326822121', 'Nissan navara 2012', 'Rembang', 'Custom like new, blue', '2025-04-25 14:41:38', '2025-04-25 14:41:38'),
(112, 'Faza', '081219639444', 'Ford fiesta', 'Jakarta', 'Speedometer saya ford fiesta 2014 yang digitalnya mati .. tapi yang analogbya hidup .. apakah bisa perbaiki?', '2025-04-26 02:59:09', '2025-04-26 02:59:09'),
(113, 'Faza', '081219639444', 'Ford fiesta', 'Jakarta', 'Speedometer saya ford fiesta 2014 yang digitalnya mati .. tapi yang analogbya hidup .. apakah bisa perbaiki?', '2025-04-26 02:59:11', '2025-04-26 02:59:11'),
(114, 'Vincen', '082168551212', 'Mazda', 'Jakarta', 'Mau ganti warna lampu tombol steering, dan led panel ac', '2025-04-26 07:33:24', '2025-04-26 07:33:24'),
(115, 'Afry', '085795771887', 'Honda', 'Karawang', '.', '2025-04-26 15:37:42', '2025-04-26 15:37:42'),
(116, 'Alfasrin', '081267417465', 'Kawasaki W175 Cafe', 'Bandung', 'Hari minggu buka ga kang?', '2025-04-26 23:33:29', '2025-04-26 23:33:29'),
(117, 'Wobi', '081779246716', 'Toyota', 'Bogor', 'Mau custom speedometer fortuner dan ninja 250', '2025-04-27 01:36:08', '2025-04-27 01:36:08'),
(118, 'Syamsul', '089630001803', 'Nissan evalia', 'Bogor', 'Lampu spedometer Evalia mati nyala', '2025-04-27 08:29:04', '2025-04-27 08:29:04'),
(119, 'Tamara', '081334514545', 'Nissan march', 'Surabaya', 'Speedometer saya ada yg ga rapi kak kelupas dalemnya, kalo mau benerin berapa ya kak?', '2025-04-27 20:35:20', '2025-04-27 20:35:20'),
(120, 'andi', '081218368221', 'all new agya 2023', 'makassar', 'Jarum speedometer', '2025-04-28 01:43:07', '2025-04-28 01:43:07'),
(121, 'andi', '081218368221', 'all new agya 2023', 'makassar', 'Jarum speedometer', '2025-04-28 01:43:11', '2025-04-28 01:43:11'),
(122, 'Tommy', '082363236565', 'Mazda 2 nonsky', 'Jakarta', 'Kasih promo dong', '2025-04-28 08:47:31', '2025-04-28 08:47:31'),
(123, 'Tommy', '082363236565', 'Mazda 2 nonsky', 'Jakarta', 'Kasih promo dong', '2025-04-28 08:47:33', '2025-04-28 08:47:33'),
(124, 'YOGI PRATAMA', '081266831858', 'Avanza Allnew 2012', 'PEKANBARU', 'mau custom speedo meter', '2025-04-28 13:42:07', '2025-04-28 13:42:07'),
(125, 'Fadhil Muhammad Putra', '085863072528', 'Nissan X-Trail T31', 'Pondok Gede', 'Mantap SPD', '2025-04-28 14:33:09', '2025-04-28 14:33:09'),
(126, 'Fadhil Muhammad Putra', '085863072528', 'Nissan X-Trail T31', 'Pondok Gede', 'Mantap SPD', '2025-04-28 14:33:13', '2025-04-28 14:33:13'),
(127, 'Dayat', '081212974757', 'Toyota Avanza Veloz 2015', 'Jakarta', 'Mau servis lampu panel speedometer yang mati', '2025-04-29 02:21:04', '2025-04-29 02:21:04'),
(128, 'Deni', '081310275430', 'Kijang kapsul', 'Tangerang', 'custom speedo dan pengecekan lampu indikator yang mati', '2025-04-30 04:18:01', '2025-04-30 04:18:01'),
(129, 'Ade', '081383697144', 'Toyota', 'Jakarta', 'Mau service speedometer karena lampu backlightnya sudah meredup sehingga kalau malam jadi kurang jelas', '2025-04-30 08:13:43', '2025-04-30 08:13:43'),
(130, 'Hendra', '081330334833', 'Honda maestro', 'Probolinggo', 'Mau tanya hrga custom spedometer Honda maestro tahun 1991\r\nTrims', '2025-04-30 10:47:53', '2025-04-30 10:47:53'),
(131, 'Irvan', '085340721999', 'TOYOTA RAV4', 'Jakarta', 'CUSTOM SPEDOMETER', '2025-04-30 11:39:43', '2025-04-30 11:39:43'),
(132, 'Tito', '085155350210', 'Kia Sportage', 'Jakara', 'Promonya dong thanks', '2025-05-01 01:57:11', '2025-05-01 01:57:11'),
(133, 'berli', '081379294711', 'innova', 'bekasi', 'berapa biaya ganti lampu led speedometer grand innova', '2025-05-01 02:37:26', '2025-05-01 02:37:26'),
(134, 'Damar', '081399595141', 'Toyota vellfire', 'Bekasi', 'Servis head unit vellfire premium sound', '2025-05-01 05:32:04', '2025-05-01 05:32:04'),
(135, 'Damar', '081399595141', 'Toyota vellfire', 'Bekasi', 'Servis head unit vellfire premium sound', '2025-05-01 05:32:05', '2025-05-01 05:32:05'),
(136, 'Damar', '081399595141', 'Toyota vellfire', 'Bekasi', 'Servis head unit vellfire premium sound', '2025-05-01 05:32:07', '2025-05-01 05:32:07'),
(137, 'Damar', '081399595141', 'Toyota vellfire', 'Bekasi', 'Servis head unit vellfire premium sound', '2025-05-01 05:32:10', '2025-05-01 05:32:10'),
(138, 'Damar', '081399595141', 'Toyota vellfire', 'Bekasi', 'Servis head unit vellfire premium sound', '2025-05-01 05:32:10', '2025-05-01 05:32:10'),
(139, 'Damar', '081399595141', 'Toyota vellfire', 'Bekasi', 'Servis head unit vellfire premium sound', '2025-05-01 05:32:10', '2025-05-01 05:32:10'),
(140, 'Damar', '081399595141', 'Toyota vellfire', 'Bekasi', 'Servis head unit vellfire premium sound', '2025-05-01 05:32:11', '2025-05-01 05:32:11'),
(141, 'Damar', '081399595141', 'Toyota vellfire', 'Bekasi', 'Servis head unit vellfire premium sound', '2025-05-01 05:32:11', '2025-05-01 05:32:11'),
(142, 'Damar', '081399595141', 'Toyota vellfire', 'Bekasi', 'Servis head unit vellfire premium sound', '2025-05-01 05:32:11', '2025-05-01 05:32:11'),
(143, 'Damar', '081399595141', 'Toyota vellfire', 'Bekasi', 'Servis head unit vellfire premium sound', '2025-05-01 05:32:11', '2025-05-01 05:32:11'),
(144, 'Damar', '081399595141', 'Toyota vellfire', 'Bekasi', 'Servis head unit vellfire premium sound', '2025-05-01 05:32:11', '2025-05-01 05:32:11'),
(145, 'Damar', '081399595141', 'Toyota vellfire', 'Bekasi', 'Servis head unit vellfire premium sound', '2025-05-01 05:32:12', '2025-05-01 05:32:12'),
(146, 'Damar', '081399595141', 'Toyota vellfire', 'Bekasi', 'Servis head unit vellfire premium sound', '2025-05-01 05:32:12', '2025-05-01 05:32:12'),
(147, 'Gamaliel', '085156821210', 'Suzuki APV', 'Surabaya', 'speedometer saya minta tolong semoga dapet kupon diskon', '2025-05-01 11:28:41', '2025-05-01 11:28:41'),
(148, 'Heru Wibisono', '082310213223', 'Ford Escape XLT', 'Bogor', 'Jaya teruss', '2025-05-01 19:27:55', '2025-05-01 19:27:55'),
(149, 'DENNY WIDAYANTO', '081331510838', 'Toyota', 'Surabaya', 'Service Speedometer', '2025-05-02 02:40:48', '2025-05-02 02:40:48'),
(150, 'Andrie Fahmi', '08111680535', 'Mazda 2', 'Jakarta', 'Repair LCD Mazda 2 Skyactiv', '2025-05-02 04:29:30', '2025-05-02 04:29:30'),
(151, 'Andrie Fahmi', '08111680535', 'Mazda 2', 'Jakarta', 'Repair LCD Mazda 2 Skyactiv', '2025-05-02 04:29:32', '2025-05-02 04:29:32'),
(152, 'Andrie Fahmi', '08111680535', 'Mazda 2', 'Jakarta', 'Repair LCD Mazda 2 Skyactiv', '2025-05-02 04:29:37', '2025-05-02 04:29:37'),
(153, 'Andrie Fahmi', '+628111680535', 'Mazda 2', 'Jakarta', 'Repair LCD Speedometer Mazda2', '2025-05-02 04:30:14', '2025-05-02 04:30:14'),
(154, 'Dietmar Nebula A', '089647972877', 'kawasaki', 'yogyakarta', 'servis speedometer', '2025-05-02 09:39:05', '2025-05-02 09:39:05'),
(155, 'Yosa Adi Nugraha', '082210846807', 'Mitsubishi Strada single cabin 2014', 'Bekasi', 'Mau order Custom Speedometer', '2025-05-02 10:00:48', '2025-05-02 10:00:48'),
(156, 'Fikri', '087782955689', 'Suzuki ertiga old', 'Depok', 'Mau modif speedo nih', '2025-05-02 11:54:13', '2025-05-02 11:54:13'),
(157, 'Herdian Pratama', '08986464464', 'Daihatsu taruna csx', 'Bandung', 'Servis spidometer', '2025-05-02 15:48:53', '2025-05-02 15:48:53'),
(158, 'Herdian Pratama', '08986464464', 'Daihatsu taruna', 'Bandung', 'Servis spidometer', '2025-05-02 15:49:34', '2025-05-02 15:49:34'),
(159, 'FEBRI ELFIANDHARU', '083830159733', 'INNOVA 2KD', 'YOGYAKARTA', 'perbaikan lampu speedometer', '2025-05-03 00:08:23', '2025-05-03 00:08:23'),
(160, 'FEBRI ELFIANDHARU', '083830159733', 'INNOVA 2KD', 'YOGYAKARTA', 'perbaikan lampu speedometer', '2025-05-03 00:08:27', '2025-05-03 00:08:27'),
(161, 'FEBRI ELFIANDHARU', '083830159733', 'INNOVA 2KD', 'YOGYAKARTA', 'perbaikan lampu speedometer', '2025-05-03 00:08:27', '2025-05-03 00:08:27'),
(162, 'FEBRI ELFIANDHARU', '083830159733', 'INNOVA 2KD', 'YOGYAKARTA', 'perbaikan lampu speedometer', '2025-05-03 00:08:28', '2025-05-03 00:08:28'),
(163, 'FEBRI ELFIANDHARU', '083830159733', 'INNOVA 2KD', 'YOGYAKARTA', 'perbaikan lampu speedometer', '2025-05-03 00:08:28', '2025-05-03 00:08:28'),
(164, 'FEBRI ELFIANDHARU', '083830159733', 'INNOVA 2KD', 'YOGYAKARTA', 'perbaikan lampu speedometer', '2025-05-03 00:08:28', '2025-05-03 00:08:28'),
(165, 'FEBRI ELFIANDHARU', '083830159733', 'INNOVA 2KD', 'YOGYAKARTA', 'perbaikan lampu speedometer', '2025-05-03 00:08:28', '2025-05-03 00:08:28'),
(166, 'FEBRI ELFIANDHARU', '083830159733', 'INNOVA 2KD', 'YOGYAKARTA', 'perbaikan lampu speedometer', '2025-05-03 00:08:28', '2025-05-03 00:08:28'),
(167, 'FEBRI ELFIANDHARU', '083830159733', 'INNOVA 2KD', 'YOGYAKARTA', 'perbaikan lampu speedometer', '2025-05-03 00:08:29', '2025-05-03 00:08:29'),
(168, 'FEBRI ELFIANDHARU', '083830159733', 'INNOVA 2KD', 'YOGYAKARTA', 'perbaikan lampu speedometer', '2025-05-03 00:08:29', '2025-05-03 00:08:29'),
(169, 'FEBRI ELFIANDHARU', '083830159733', 'INNOVA 2KD', 'YOGYAKARTA', 'perbaikan lampu speedometer', '2025-05-03 00:08:29', '2025-05-03 00:08:29'),
(170, 'FEBRI ELFIANDHARU', '083830159733', 'INNOVA 2KD', 'YOGYAKARTA', 'perbaikan lampu speedometer', '2025-05-03 00:08:29', '2025-05-03 00:08:29'),
(171, 'Rahmat', '085250558770', 'Hilux Vigo Double Cabin 2010', 'Samarinda', 'Custom panel spedometer', '2025-05-03 07:22:25', '2025-05-03 07:22:25'),
(172, 'Hari pramono', '08562519055', 'Honda', 'Jogja', 'Benerin spedometer atas honda civic fd', '2025-05-03 11:26:26', '2025-05-03 11:26:26'),
(173, 'Danny', '0816726355', 'Honda', 'Jakarta', 'Cabang terdekat dari Puri Indah, Jakarta Barat dimana yah?\r\nMau reparasi climate control mobil. Thanks', '2025-05-04 05:07:39', '2025-05-04 05:07:39'),
(174, 'Danny', '0816726355', 'Honda', 'Jakarta', 'Cabang terdekat dari Puri Indah, Jakarta Barat dimana yah?\r\nMau reparasi climate control mobil. Thanks', '2025-05-04 05:07:40', '2025-05-04 05:07:40'),
(175, 'Feenzy', '08176708807', 'Honda CRV Turbo Gen 5 2020', 'Bogor', 'Adakah produk untuk mobil crv?', '2025-05-04 07:52:47', '2025-05-04 07:52:47'),
(176, 'Feenzy', '08176708807', 'Honda CRV Turbo Gen 5 2020', 'Bogor', 'Adakah produk untuk mobil crv?', '2025-05-04 07:52:49', '2025-05-04 07:52:49'),
(177, 'Zion Sophos Patuan', '082136985067', 'Motor Beat 2025', 'Medan', 'Custom spedometer', '2025-05-04 13:43:59', '2025-05-04 13:43:59'),
(178, 'Syawal', '081289328836', 'Toyota', 'Bogor', 'Problem High Beam di Speedometer', '2025-05-05 03:04:36', '2025-05-05 03:04:36'),
(179, 'Anggit', '082323346776', 'Jazz ge8', 'Klaten', 'Custom speedo', '2025-05-05 03:40:48', '2025-05-05 03:40:48'),
(180, 'Anggit Prasetia', '082323346776', 'Jazz ge8', 'Klaten', 'Custom speedo', '2025-05-05 03:41:34', '2025-05-05 03:41:34'),
(181, 'Dimas Abdul Harris', '087880110345', 'Nissan', 'Bogor', 'Nissan Latio', '2025-05-05 06:21:23', '2025-05-05 06:21:23'),
(182, 'Abi M Abdillah', '081219784227', 'Toyota Innova Reborn', 'Rangkasbitung', '-', '2025-05-05 08:11:24', '2025-05-05 08:11:24'),
(183, 'Kevin verdhias adhiasa', '082242407651', 'Innova barong', 'Yogyakarta', 'Custom spedometer', '2025-05-05 13:50:27', '2025-05-05 13:50:27'),
(184, 'Al muzany', '081513045599', 'Toyota Vios', 'Bekasi', 'Speedometer digital Vios G matic th 2003 mati total, apakah bisa di perbaiki, untuk kelistrikan mobil sudah di cek di auto2000 masih bagus, memang kerusakan di speedometernya infonya', '2025-05-05 16:43:34', '2025-05-05 16:43:34'),
(185, 'Mulyanto', '081232873555', 'Zenia', 'Malang', 'Servis lcd spido', '2025-05-06 01:30:03', '2025-05-06 01:30:03'),
(186, 'Mulyanto', '081232873555', 'Zenia', 'Malang', 'Servis lcd spido', '2025-05-06 01:30:06', '2025-05-06 01:30:06'),
(187, 'Mulyanto', '081232873555', 'Zenia', 'Malang', 'Servis lcd spido', '2025-05-06 01:30:13', '2025-05-06 01:30:13'),
(188, 'Syahrul', '082283528421', 'Innova 2005', 'Rokanhulu', 'Ada kendala spedometer', '2025-05-06 02:20:46', '2025-05-06 02:20:46'),
(189, 'Adit', '083896825325', 'All new Corolla 1997', 'Serang', 'Mantab', '2025-05-06 03:11:54', '2025-05-06 03:11:54'),
(190, 'Adit', '083896825325', 'All new Corolla 1997', 'Serang', 'Mantab', '2025-05-06 03:11:55', '2025-05-06 03:11:55'),
(191, 'Adit', '083896825325', 'All new Corolla 1997', 'Serang', 'Mantab', '2025-05-06 03:11:58', '2025-05-06 03:11:58'),
(192, 'Adit', '083896825325', 'All new Corolla 1997', 'Serang', 'Mantab', '2025-05-06 03:11:59', '2025-05-06 03:11:59'),
(193, 'Adit', '083896825325', 'All new Corolla 1997', 'Serang', 'Mantab', '2025-05-06 03:11:59', '2025-05-06 03:11:59'),
(194, 'Adit', '083896825325', 'All new Corolla 1997', 'Serang', 'Mantab', '2025-05-06 03:11:59', '2025-05-06 03:11:59'),
(195, 'Adit', '083896825325', 'All new Corolla 1997', 'Serang', 'Mantab', '2025-05-06 03:11:59', '2025-05-06 03:11:59'),
(196, 'Adit', '083896825325', 'All new Corolla 1997', 'Serang', 'Mantab', '2025-05-06 03:11:59', '2025-05-06 03:11:59'),
(197, 'Adit', '083896825325', 'All new Corolla 1997', 'Serang', 'Mantab', '2025-05-06 03:11:59', '2025-05-06 03:11:59'),
(198, 'Adit', '083896825325', 'All new Corolla 1997', 'Serang', 'Mantab', '2025-05-06 03:12:00', '2025-05-06 03:12:00'),
(199, 'Adit', '083896825325', 'All new Corolla 1997', 'Serang', 'Mantab', '2025-05-06 03:12:00', '2025-05-06 03:12:00'),
(200, 'Adit', '083896825325', 'All new Corolla 1997', 'Serang', 'Mantab', '2025-05-06 03:12:00', '2025-05-06 03:12:00'),
(201, 'Adit', '083896825325', 'All new Corolla 1997', 'Serang', 'Mantab', '2025-05-06 03:12:00', '2025-05-06 03:12:00'),
(202, 'Adit', '083896825325', 'All new Corolla 1997', 'Serang', 'Mantab', '2025-05-06 03:12:00', '2025-05-06 03:12:00'),
(203, 'Adit', '083896825325', 'All new Corolla 1997', 'Serang', 'Mantab', '2025-05-06 03:12:00', '2025-05-06 03:12:00'),
(204, 'Adit', '083896825325', 'All new Corolla 1997', 'Serang', 'Mantab', '2025-05-06 03:12:01', '2025-05-06 03:12:01'),
(205, 'Adit', '083896825325', 'All new Corolla 1997', 'Serang', 'Mantab', '2025-05-06 03:12:01', '2025-05-06 03:12:01'),
(206, 'Adit', '083896825325', 'All new Corolla 1997', 'Serang', 'Mantab', '2025-05-06 03:12:01', '2025-05-06 03:12:01'),
(207, 'Adit', '083896825325', 'All new Corolla 1997', 'Serang', 'Mantab', '2025-05-06 03:12:01', '2025-05-06 03:12:01'),
(208, 'Adit', '083896825325', 'All new Corolla 1997', 'Serang', 'Mantab', '2025-05-06 03:12:01', '2025-05-06 03:12:01'),
(209, 'Adit', '083896825325', 'All new Corolla 1997', 'Serang', 'Mantab', '2025-05-06 03:12:01', '2025-05-06 03:12:01'),
(210, 'Adit', '083896825325', 'All new Corolla 1997', 'Serang', 'Mantab', '2025-05-06 03:12:02', '2025-05-06 03:12:02'),
(211, 'Fahry', '082310401739', 'Mercy c240 2002', 'Jakarta Selatan', 'Saya mau kuponnya ya mas', '2025-05-06 06:48:40', '2025-05-06 06:48:40'),
(212, 'Rayke', '0818600263', 'Mercy w220', 'Jakarta', 'Lcd blank', '2025-05-07 07:08:07', '2025-05-07 07:08:07'),
(213, 'Rayke', '0818600263', 'Mercy w220', 'Jakarta', 'Lcd blank', '2025-05-07 07:08:10', '2025-05-07 07:08:10'),
(214, 'Rayke', '0818600263', 'Mercy w220', 'Jakarta', 'Lcd blank', '2025-05-07 07:08:11', '2025-05-07 07:08:11'),
(215, 'Ridzky', '081252583939', 'Mercedes Benz', 'Malang', 'Speedometer Saya mati total model mercedes benz w202 tahun 1997', '2025-05-07 11:45:16', '2025-05-07 11:45:16'),
(216, 'Ridzky', '081252583939', 'Mercedes Benz', 'Malang', 'Speedometer Saya mati total model mercedes benz w202 tahun 1997', '2025-05-07 11:45:18', '2025-05-07 11:45:18'),
(217, 'Tarsis', '081348715858', 'Daihatsu', 'Jakarta', 'Mauk custom speedometer', '2025-05-07 14:25:34', '2025-05-07 14:25:34'),
(218, 'Arie', '085691500411', 'kijang inova', 'jakarta selatan', 'service spedo meter', '2025-05-08 04:47:33', '2025-05-08 04:47:33'),
(219, 'Robert', '081265262929', 'Mazda CX5 2012', 'Medan', 'Stiker spido', '2025-05-09 06:02:07', '2025-05-09 06:02:07'),
(220, 'Robert', '081265262929', 'Mazda CX5 2012', 'Medan', 'Stiker spido', '2025-05-09 06:02:09', '2025-05-09 06:02:09'),
(221, 'Alifi Muslian W', '081323077730', 'Toyoto innova reborn G', 'Malang', 'Custom', '2025-05-09 07:36:15', '2025-05-09 07:36:15'),
(222, 'Nico', '08112518882', 'Toyota innova 2025', 'Semarang', 'Mau tnya harga', '2025-05-09 08:22:49', '2025-05-09 08:22:49'),
(223, 'Klaudius', '081289432001', 'BMW', 'Jakarta', 'Halo, mau tanya harga service speedometer untuk bmw x5 e53 yang plastik di depan panel LED nya kelopek berapa ya?', '2025-05-09 08:58:38', '2025-05-09 08:58:38'),
(224, 'yoggy', '081 7009 7222', 'crv 2005', 'bogor', 'apakah kilometer gak jalan.. dapat di perbaiki di sini?', '2025-05-10 02:18:58', '2025-05-10 02:18:58'),
(225, 'Muhammad arif', '081372149330', 'Avanza veloz 2012', 'Rengat', 'Speedometer avanza veloz 2012', '2025-05-10 03:22:53', '2025-05-10 03:22:53'),
(226, 'Dwi gustian hadi', '082137590288', 'Yamaha nmax', 'Purwakarta', 'Tingkatkan kualitas', '2025-05-11 18:55:12', '2025-05-11 18:55:12'),
(227, 'Dwi gustian hadi', '082137590288', 'Yamaha nmax', 'Purwakarta', 'Tingkatkan kualitas', '2025-05-11 18:55:12', '2025-05-11 18:55:12'),
(228, 'Lutfi', '081288171976', 'Nissan', 'Depok', 'Speedometer nissan march saya sunburn apakah bisa di perbaiki? Berapa lama pengerjaannya ? Apakah bisa ditunggu karena hanya memperbaiki tidak mengutamakan, serta berapa biayanya yaa ?', '2025-05-12 08:16:37', '2025-05-12 08:16:37'),
(229, 'sultan', '081333040698', 'kijang innova 2013', 'surabaya', 'mau servis spido meter', '2025-05-12 14:03:20', '2025-05-12 14:03:20'),
(230, 'Julie', '088806807106', 'Nissan march xs facelif 150cc', 'Banjarnegara', 'Berapa custom mika di atas', '2025-05-12 19:30:22', '2025-05-12 19:30:22'),
(231, 'Segi', '081902779766', 'Jazz ge8', 'Bandung', 'GANTI LED SPEDO', '2025-05-13 01:18:13', '2025-05-13 01:18:13'),
(232, 'Irvan', '085340721999', 'Toyota Rav4', 'Jakarta', 'Smoga yg terrbaik', '2025-05-13 11:06:28', '2025-05-13 11:06:28'),
(233, 'Irvan', '085340721999', 'Toyota Rav4', 'Jakarta', 'Smoga yg terrbaik', '2025-05-13 11:06:29', '2025-05-13 11:06:29'),
(234, 'Irvan', '085340721999', 'Toyota Rav4', 'Jakarta', 'Smoga yg terrbaik', '2025-05-13 11:06:31', '2025-05-13 11:06:31'),
(235, 'Irvan', '085340721999', 'TOYOTA RAV4', 'Jakarta', 'Semoga terbaik', '2025-05-13 11:07:24', '2025-05-13 11:07:24'),
(236, 'Irvan', '085340721999', 'TOYOTA RAV4', 'Jakarta', 'Semoga terbaik', '2025-05-13 11:07:25', '2025-05-13 11:07:25'),
(237, 'Irvan', '085340721999', 'TOYOTA RAV4', 'Jakarta', 'Semoga terbaik', '2025-05-13 11:07:26', '2025-05-13 11:07:26'),
(238, 'Irvan', '085340721999', 'TOYOTA RAV4', 'Jakarta', 'Semoga terbaik', '2025-05-13 11:07:26', '2025-05-13 11:07:26'),
(239, 'Irvan', '085340721999', 'TOYOTA RAV4', 'Jakarta', 'Semoga terbaik', '2025-05-13 11:07:27', '2025-05-13 11:07:27'),
(240, 'Irvan', '085340721999', 'TOYOTA RAV4', 'Jakarta', 'Semoga terbaik', '2025-05-13 11:07:27', '2025-05-13 11:07:27'),
(241, 'Irvan', '085340721999', 'TOYOTA RAV4', 'Jakarta', 'Semoga terbaik', '2025-05-13 11:07:28', '2025-05-13 11:07:28'),
(242, 'Irvan', '085340721999', 'TOYOTA RAV4', 'Jakarta', 'Semoga terbaik', '2025-05-13 11:07:28', '2025-05-13 11:07:28'),
(243, 'Irvan', '085340721999', 'TOYOTA RAV4', 'Jakarta', 'Semoga terbaik', '2025-05-13 11:07:28', '2025-05-13 11:07:28'),
(244, 'm faisal amri', '085285913082', 'honda jazz idsi 2004', 'bekasi', 'service speedometer, jarum rpm, jarum kecepatan, jarum bensin, dan odometer mati', '2025-05-13 15:42:09', '2025-05-13 15:42:09'),
(245, 'm faisal amri', '085285913082', 'honda jazz idsi 2004', 'bekasi', 'service speedometer, jarum rpm, jarum kecepatan, jarum bensin, dan odometer mati', '2025-05-13 15:42:11', '2025-05-13 15:42:11'),
(246, 'Kiki', '082187335028', 'Fortuner vrz', 'BauBau', 'Costum speedo fortuner vrz', '2025-05-14 07:07:10', '2025-05-14 07:07:10'),
(247, 'Ferry', '082154453033', 'Ayla', 'Samarinda', 'Speedometer', '2025-05-14 08:36:07', '2025-05-14 08:36:07'),
(248, 'Indra', '088228660595', 'Honda', 'Yogyakarta', 'Mau service spedometer motuba', '2025-05-14 10:04:29', '2025-05-14 10:04:29'),
(249, 'Alby', '082245190812', 'Innova', 'Jember', 'Berapa harga untuk custom speedometer dan lampu transmisi', '2025-05-14 18:51:18', '2025-05-14 18:51:18'),
(250, 'Alby', '082245190812', 'Toyota Innova V', 'Surabaya', 'Harga custom speedometer dan lampu transmisi', '2025-05-14 18:51:58', '2025-05-14 18:51:58'),
(251, 'ADAM RAFIANO SYAPUTRA', '089669699621', 'Toyota Fortuner 2010', 'Ketapang', 'Spidometer kadang mati lampu spidometer redup dan jarum spidometer mati', '2025-05-14 19:26:50', '2025-05-14 19:26:50'),
(252, 'Hasta Purnama', '085117118510', 'Mercedes ML 270CDI', 'Surabaya', 'Kapan diadakan layanan service speedometer di Surabaya seperti pada Selasa 6-5-2025?\r\nThanks.', '2025-05-15 04:45:24', '2025-05-15 04:45:24'),
(253, 'Hasta Purnama', '085117118510', 'Mercedes ML 270CDI', 'Surabaya', 'Kapan diadakan layanan service speedometer di Surabaya seperti pada Selasa 6-5-2025?\r\nThanks.', '2025-05-15 04:45:39', '2025-05-15 04:45:39'),
(254, 'Rizko', '085133365558', 'Toyota avanza 2013', 'Bandung', 'Spedo', '2025-05-15 05:18:52', '2025-05-15 05:18:52'),
(255, 'Rizko', '085133365558', 'Toyota avanza 2013', 'Bandung', 'Spedo', '2025-05-15 05:18:54', '2025-05-15 05:18:54'),
(256, 'Rizko', '085133365558', 'Toyota avanza 2013', 'Bandung', 'Spedo', '2025-05-15 05:18:56', '2025-05-15 05:18:56'),
(257, 'Rizko', '085133365558', 'Toyota avanza 2013', 'Bandung', 'Spedo', '2025-05-15 05:18:57', '2025-05-15 05:18:57'),
(258, 'Rizko', '085133365558', 'Toyota avanza 2013', 'Bandung', 'Spedo', '2025-05-15 05:18:57', '2025-05-15 05:18:57'),
(259, 'Rizko', '085133365558', 'Toyota avanza 2013', 'Bandung', 'Spedo', '2025-05-15 05:18:57', '2025-05-15 05:18:57'),
(260, 'Rizko', '085133365558', 'Toyota avanza 2013', 'Bandung', 'Spedo', '2025-05-15 05:18:57', '2025-05-15 05:18:57'),
(261, 'Rizko', '085133365558', 'Toyota avanza 2013', 'Bandung', 'Spedo', '2025-05-15 05:18:57', '2025-05-15 05:18:57'),
(262, 'Rizko', '085133365558', 'Toyota avanza 2013', 'Bandung', 'Spedo', '2025-05-15 05:18:58', '2025-05-15 05:18:58'),
(263, 'Rizko', '085133365558', 'Toyota avanza 2013', 'Bandung', 'Spedo', '2025-05-15 05:18:58', '2025-05-15 05:18:58'),
(264, 'Rizko', '085133365558', 'Toyota avanza 2013', 'Bandung', 'Spedo', '2025-05-15 05:18:58', '2025-05-15 05:18:58'),
(265, 'Rizko', '085133365558', 'Toyota avanza 2013', 'Bandung', 'Spedo', '2025-05-15 05:19:00', '2025-05-15 05:19:00'),
(266, 'Rizko', '085133365558', 'Toyota avanza 2013', 'Bandung', 'Spedo', '2025-05-15 05:19:01', '2025-05-15 05:19:01'),
(267, 'Rizko', '085133365558', 'Avanza 2013', 'Bandung', 'Spedometer', '2025-05-15 05:20:43', '2025-05-15 05:20:43'),
(268, 'Rizko', '085133365558', 'Avanza 2013', 'Bandung', 'Spedometer', '2025-05-15 05:20:45', '2025-05-15 05:20:45'),
(269, 'Hervian', '0087736457497', 'Yaris 2007 (Bakpau)', 'Sukoharjo', 'Mau tau dong kak, model speedo, harga, sppesifikasi dan berapa lama pemasangannya. Trimakasih 🙏🏽🙏🏽🙏🏽', '2025-05-15 06:52:43', '2025-05-15 06:52:43'),
(270, 'Iqbal boiq', '085624646336', 'Vespa', 'Bandung', 'Apakah bisa repair speedometer vespa excel? Terimakasih', '2025-05-16 16:57:17', '2025-05-16 16:57:17'),
(271, 'Rizky Editya', '081906356037', 'BMW', 'Jakarta', 'Sukses terus!', '2025-05-17 03:09:00', '2025-05-17 03:09:00'),
(272, 'Felix', '087780781125', 'Toyota fortuner 2009', 'Jakarta', 'Speedometer', '2025-05-17 03:25:48', '2025-05-17 03:25:48'),
(273, 'Abdiel zenkli', '081377322293', 'Baleno', 'Klaten', 'Custom', '2025-05-17 07:07:32', '2025-05-17 07:07:32'),
(274, 'Abdiel zenkli', '081377322293', 'Daihatsu taruna', 'Klaten', 'Custom', '2025-05-17 07:08:12', '2025-05-17 07:08:12'),
(275, 'Abdiel zenkli', '081377322293', 'Daihatsu taruna', 'Klaten', 'Custom', '2025-05-17 07:08:14', '2025-05-17 07:08:14'),
(276, 'Abdiel zenkli', '081377322293', 'Daihatsu taruna', 'Klaten', 'Custom', '2025-05-17 07:08:14', '2025-05-17 07:08:14'),
(277, 'Abdiel zenkli', '081377322293', 'Daihatsu taruna', 'Klaten', 'Custom', '2025-05-17 07:08:14', '2025-05-17 07:08:14'),
(278, 'Abdiel zenkli', '081377322293', 'Daihatsu taruna', 'Klaten', 'Custom', '2025-05-17 07:08:15', '2025-05-17 07:08:15'),
(279, 'Abdiel zenkli', '081377322293', 'Daihatsu taruna', 'Klaten', 'Custom', '2025-05-17 07:08:15', '2025-05-17 07:08:15'),
(280, 'Abdiel zenkli', '081377322293', 'Daihatsu taruna', 'Klaten', 'Custom', '2025-05-17 07:08:16', '2025-05-17 07:08:16'),
(281, 'Sunardi', '0811335777', 'Mercedes Benz s350L', 'Surabaya', 'Layar instrument dan multimedia spt kasus mobil mas Eri Fitri', '2025-05-18 11:21:41', '2025-05-18 11:21:41'),
(282, 'Yanuar', '082240200303', 'Suzuki', 'Sumedang', 'Service Ampere bensin', '2025-05-19 03:42:47', '2025-05-19 03:42:47'),
(283, 'Iman', '0811223274', 'Honda jazz GE8', 'Bandung', 'Modif lampu spedo', '2025-05-20 17:06:51', '2025-05-20 17:06:51'),
(284, 'Iman', '0811223274', 'Honda jazz GE8', 'Bandung', 'Modif lampu spedo', '2025-05-20 17:06:53', '2025-05-20 17:06:53'),
(285, 'rian', '081703399295', 'honda brio RS CVT', 'jakarta selatan', 'custom speedometer', '2025-05-20 17:08:26', '2025-05-20 17:08:26'),
(286, 'Ahmad wahid nur faizin', '081335444149', 'Toyota Kijang Super 5K 1987', 'Pilangkenceng - Madiun', 'mau tanya biaya custom speedometer kijang super', '2025-05-21 02:58:21', '2025-05-21 02:58:21'),
(287, 'Edo B Hadisantoso', '08156540102', 'Toyota Avanza', 'Bekasi', 'Redup', '2025-05-21 03:54:58', '2025-05-21 03:54:58'),
(288, 'Edo B Hadisantoso', '08156540102', 'Toyota Avanza', 'Bekasi', 'Redup', '2025-05-21 03:55:00', '2025-05-21 03:55:00'),
(289, 'Abiabok', '085736631143', 'Canter / isuzu nqr', 'Blitar', 'Mantap', '2025-05-21 10:45:11', '2025-05-21 10:45:11'),
(290, 'Muh alfian azis nuardy', '081239654450', 'Honda Freed', 'Magetan', 'Keren banget lyt hasil custom speedometer di SPDSPEEDOMETER jadi pingin buat freed saya', '2025-05-22 00:36:35', '2025-05-22 00:36:35'),
(291, 'Muh alfian azis nuardy', '081239654450', 'Honda Freed', 'Magetan', 'Keren banget lyt hasil custom speedometer di SPDSPEEDOMETER jadi pingin buat freed saya', '2025-05-22 00:36:37', '2025-05-22 00:36:37'),
(292, 'Muh alfian azis nuardy', '081239654450', 'Honda Freed', 'Magetan', 'Keren banget lyt hasil custom speedometer di SPDSPEEDOMETER jadi pingin buat freed saya', '2025-05-22 00:55:25', '2025-05-22 00:55:25'),
(293, 'Muh alfian azis nuardy', '081239654450', 'Honda Freed', 'Magetan', 'Keren banget lyt hasil custom speedometer di SPDSPEEDOMETER jadi pingin buat freed saya', '2025-05-22 00:55:26', '2025-05-22 00:55:26'),
(294, 'Sunusma Bintarto', '081327558769', 'Toyota Yaris 2006', 'Yogyakarta', 'Jaya terus SPD Yogyakarta 💯💪😎👍🏻', '2025-05-22 02:40:33', '2025-05-22 02:40:33'),
(295, 'Tyok', '082226359750', 'BMW', 'Jogja', 'Mantab2 bang', '2025-05-22 03:09:06', '2025-05-22 03:09:06'),
(296, 'Tyok', '082226359750', 'BMW', 'Jogja', 'Mantab2 bang', '2025-05-22 03:09:08', '2025-05-22 03:09:08'),
(297, 'Tyo', '082240026179', 'Vw Golf Mk6', 'Bandung', '-', '2025-05-22 03:41:59', '2025-05-22 03:41:59'),
(298, 'Yunus', '085156559845', 'Lexi', 'Banten', 'Speedo lexi sunburn', '2025-05-22 03:59:20', '2025-05-22 03:59:20'),
(299, 'Julfiqi Gumelar', '085815131025', 'Honda', 'Bekasi', 'Pertama kali', '2025-05-22 11:29:40', '2025-05-22 11:29:40'),
(300, 'Denniss', '+62 813-3452-4157', 'innova 2004', 'probolinggo', 'lampu spidoo meter mati', '2025-05-22 11:51:56', '2025-05-22 11:51:56'),
(301, 'Devin', '082316061718', 'Suzuki', 'Palembang', 'Mau ganti backlight speedometer', '2025-05-23 01:07:26', '2025-05-23 01:07:26'),
(302, 'Aris', '08129457500', 'Honda brv', 'Jakarta', 'Service HeadUnit LCD error', '2025-05-23 06:01:03', '2025-05-23 06:01:03'),
(303, 'Novian', '085204660444', 'Toyota fortuner Bensin 2.7', 'Bandung', 'Mau buat canbus utk indikator matic speedometer fortuner SRZ Bensin', '2025-05-23 06:42:44', '2025-05-23 06:42:44'),
(304, 'Daniel', '08111985900', 'Toyota Innova diesel', 'Tangerang', 'Lampunya kedip kedip kalau panas baru nyala semua', '2025-05-23 07:15:41', '2025-05-23 07:15:41'),
(305, 'Dha inq', '082288747979', 'Panther ls', 'Pekanbaru', 'Service lampu speedometer', '2025-05-23 09:58:45', '2025-05-23 09:58:45'),
(306, 'Dha inq', '082288747979', 'Panther ls', 'Pekanbaru', 'Service lampu speedometer', '2025-05-23 09:58:48', '2025-05-23 09:58:48'),
(307, 'Rizak', '08122353142', 'Toyota Passo', 'Bandung', 'Speedometer penunjuk kecepatan tdk berfungsi lainnya normal', '2025-05-23 10:41:42', '2025-05-23 10:41:42'),
(308, 'Rizak', '08122353142', 'Toyota Passo', 'Bandung', 'Speedometer penunjuk kecepatan tdk berfungsi lainnya normal', '2025-05-23 10:41:43', '2025-05-23 10:41:43'),
(309, 'restu', '081368697823', 'avanza 2012', 'lampung', 'mau yg sm kaya yg di vt', '2025-05-24 01:45:38', '2025-05-24 01:45:38'),
(310, 'Silvester', '085299111168', 'Honda', 'Yogyakarta', 'Please reach me out', '2025-05-24 04:28:38', '2025-05-24 04:28:38'),
(311, 'Reza Manoppo', '085240600398', 'Honda Brio Satya 2024', 'Kotamobagu', 'Upgrde speedo brio ke hrv', '2025-05-24 10:01:42', '2025-05-24 10:01:42'),
(312, 'RAFIFNPDAFWA', '085719117046', 'TOYOTA', 'Kabupaten Bogor', 'Cek Spedometef', '2025-05-24 10:54:55', '2025-05-24 10:54:55'),
(313, 'rafifnpdafwa', '085719117046', 'Toyota', 'Kabupaten Bogor', 'Check Spedometer', '2025-05-24 10:55:56', '2025-05-24 10:55:56'),
(314, 'Fahmi', '081291877798', 'Avanza veloz 2018', 'Jakarta', 'Minta price list sama model2nya', '2025-05-24 11:52:40', '2025-05-24 11:52:40'),
(315, 'Renanda', '085791322526', 'Karimun kotak', 'Surabaya', 'Workshop surabaya alamatnya dmn yaa', '2025-05-24 12:01:28', '2025-05-24 12:01:28'),
(316, 'Dafa', '082210273655', 'Toyota fortuner bensin 2007', 'Jakarta', 'Error pada speedometer', '2025-05-25 03:41:03', '2025-05-25 03:41:03'),
(317, 'Hermawan', '0811398677', 'Toyota', 'Sby', 'Lampu P mati dan kurang terang', '2025-05-25 22:54:14', '2025-05-25 22:54:14'),
(318, 'Ivan', '081330721373', 'Innova', 'Surabaya', 'Servis speedometer', '2025-05-25 23:43:36', '2025-05-25 23:43:36'),
(319, 'Achmad Fahrozi', '08111192171', 'Toyota Camry 2007', 'Bogor', 'costom lcd head unit camry', '2025-05-26 09:03:07', '2025-05-26 09:03:07'),
(320, 'Achmad Fahrozi', '08111192171', 'Toyota Camry 2007', 'Bogor', 'costom lcd head unit camry', '2025-05-26 09:03:08', '2025-05-26 09:03:08'),
(321, 'Fahmy', '082218740333', 'Daihatsu', 'Tasimmalaya', 'Ganti panel spidometer custom', '2025-05-26 09:13:39', '2025-05-26 09:13:39'),
(322, 'Yeremia Putut Wijanarko', '08975024934', 'Toyota', 'Salatiga', 'Custom spido meter', '2025-05-26 09:34:00', '2025-05-26 09:34:00'),
(323, 'Rais', '085365966978', 'Nissan evalia', 'Agam', 'Mau modif speedo', '2025-05-26 14:59:26', '2025-05-26 14:59:26'),
(324, 'Rais', '085365966978', 'Nissan evalia', 'Agam', 'Mau modif speedo', '2025-05-26 14:59:29', '2025-05-26 14:59:29'),
(325, 'Masrur Naim', '082373678345', 'Honda Jazz GE88 AT 2013', 'Samarinda', 'Sukses selalu', '2025-05-27 13:11:48', '2025-05-27 13:11:48'),
(326, 'hani kuswati', '089606568640', 'datsun go+ panca', 'cirebon', 'KM mati kadang nyala kadang mati\r\nlamu lampu mati', '2025-05-27 16:32:48', '2025-05-27 16:32:48'),
(327, 'Jati nugroho', '081296692447', 'Chevrolet lova', 'Semarang', 'Rencana mau kustom spedometer', '2025-05-28 09:26:38', '2025-05-28 09:26:38'),
(328, 'Dias', '08972260404', 'Jazz GE8', 'Sukoharjo', 'Servis speedometer', '2025-05-28 13:50:22', '2025-05-28 13:50:22'),
(329, 'Teddy', '08121036653', 'Mobilio e cvt 2015', 'Jakarta', 'Speedometer honda mobilio e-cvt 2015. ga ada bunyi buzzer (ga ada bunyi lampu sein/hazzard/peringatan seatbelt). Bisa dibenerin di sini ga?', '2025-05-28 15:18:28', '2025-05-28 15:18:28'),
(330, 'Arif budi kuswoyo', '081295889925', 'Toyota Calya', 'Tangerang', 'Ganti lampu Spidometer dari kuning ke Putih', '2025-05-28 15:56:25', '2025-05-28 15:56:25'),
(331, 'Arif budi kuswoyo', '081295889925', 'Toyota Calya', 'Tangerang', 'Ganti lampu Spidometer dari kuning ke Putih', '2025-05-28 15:56:27', '2025-05-28 15:56:27'),
(332, 'Prast Riko', '081382744100', 'Ertiga 2016', 'Jakarta Timur', 'Custom speedometer', '2025-05-28 18:55:33', '2025-05-28 18:55:33'),
(333, 'Enchy', '071322204232', 'Toyota Innova', 'Jayapura', 'Hlo kak, sy mau servis speedometersekalian custom, bs ga sy dptin hrga promo?', '2025-05-28 23:45:03', '2025-05-28 23:45:03'),
(334, 'Hafidh', '089685710096', 'BMW', 'SIDOARJO', 'Buka lagi dong kak bengkel di Sidoarjo', '2025-05-29 11:07:23', '2025-05-29 11:07:23'),
(335, 'Arum Kusuma Ramadhan', '082123036091', 'Mazda 6', 'Bekasi', 'Headlamp', '2025-05-29 11:55:48', '2025-05-29 11:55:48'),
(336, 'Reza', '088709655224', 'Toyota agya', 'Jakarta', 'Ingin mengganti lampu spd agya orange ke putih', '2025-05-29 18:08:35', '2025-05-29 18:08:35'),
(337, 'Muttaqin', '085342709925', 'Toyota', 'Makassar', 'Custom speedo digital fortuner VNT', '2025-05-31 00:26:09', '2025-05-31 00:26:09'),
(338, 'Muttaqin', '085342709925', 'Toyota', 'Makassar', 'Custom speedo digital fortuner VNT', '2025-05-31 00:26:10', '2025-05-31 00:26:10'),
(339, 'Muttaqin', '085342709925', 'Toyota', 'Makassar', 'Custom speedo digital fortuner VNT', '2025-05-31 00:26:12', '2025-05-31 00:26:12'),
(340, 'Muttaqin', '085342709925', 'Toyota', 'Makassar', 'Custom speedo digital fortuner VNT', '2025-05-31 00:26:13', '2025-05-31 00:26:13'),
(341, 'Muttaqin', '085342709925', 'Toyota', 'Makassar', 'Custom speedo digital fortuner VNT', '2025-05-31 00:26:13', '2025-05-31 00:26:13'),
(342, 'Muttaqin', '085342709925', 'Toyota', 'Makassar', 'Custom speedo digital fortuner VNT', '2025-05-31 00:26:14', '2025-05-31 00:26:14'),
(343, 'Muttaqin', '085342709925', 'Toyota', 'Makassar', 'Custom speedo digital fortuner VNT', '2025-05-31 00:26:14', '2025-05-31 00:26:14'),
(344, 'Muttaqin', '085342709925', 'Toyota', 'Makassar', 'Custom speedo digital fortuner VNT', '2025-05-31 00:26:14', '2025-05-31 00:26:14'),
(345, 'Muttaqin', '085342709925', 'Toyota', 'Makassar', 'Custom speedo digital fortuner VNT', '2025-05-31 00:26:15', '2025-05-31 00:26:15'),
(346, 'Muttaqin', '085342709925', 'Toyota', 'Makassar', 'Custom speedo digital fortuner VNT', '2025-05-31 00:26:15', '2025-05-31 00:26:15'),
(347, 'Johan', '081259839996', 'Innova diesel 2kd 2011', 'Surabaya', 'Mau custom speedometer', '2025-05-31 01:29:35', '2025-05-31 01:29:35'),
(348, 'Helmi', '089659283283', 'Hyundai Santa Fe 2016', 'Bandung', 'Saya ingin custom speedometer', '2025-05-31 02:54:42', '2025-05-31 02:54:42'),
(349, 'Bayu fitriana', '081517130666', 'Suzuki carry 1.5', 'Bogor', 'Service sipometer', '2025-05-31 06:29:45', '2025-05-31 06:29:45'),
(350, 'Bayu fitriana', '081517130666', 'Suzuki carry 1.5', 'Bogor', 'Service sipometer', '2025-05-31 06:29:47', '2025-05-31 06:29:47'),
(351, 'Bayu fitriana', '081517130666', 'Suzuki carry 1.5', 'Bogor', 'Service sipometer', '2025-05-31 06:29:48', '2025-05-31 06:29:48'),
(352, 'Bayu fitriana', '081517130666', 'Suzuki carry 1.5', 'Bogor', 'Service sipometer', '2025-05-31 06:29:49', '2025-05-31 06:29:49'),
(353, 'Willy', '081311131981', 'Mercy C200 Kompresor/W204 2009', 'Jakarta', 'Tulisan/Angka di Speedometer tidak muncul', '2025-05-31 12:32:56', '2025-05-31 12:32:56'),
(354, 'Reza', '089647660474', 'Panther', 'Boyolali', 'Mau tanya castem spedo panther berapa', '2025-06-01 06:03:24', '2025-06-01 06:03:24'),
(355, 'Bayu', '089630275158', 'Avanza e 2013', 'Tangerang', 'Pasang panel spido', '2025-06-01 07:21:49', '2025-06-01 07:21:49'),
(356, 'Ricky dewangga', '082373061984', 'Toyota calya', 'Pekanbaru riau', 'Cara pesan gmn om', '2025-06-01 10:27:32', '2025-06-01 10:27:32'),
(357, 'Fatur', '082325680112', 'Honda Brio', 'Wonogiri', 'Buat variasi spedometer', '2025-06-01 12:43:05', '2025-06-01 12:43:05'),
(358, 'Yosua', '085175301566', 'Camry 2013', 'Jakarta-bingaro', 'Mau restorasi', '2025-06-01 13:53:03', '2025-06-01 13:53:03'),
(359, 'Bg bossui', '082386114641', 'Ayla 1000cc tipe-X 2021', 'Pekanbaru', 'Spedo meter', '2025-06-01 16:20:50', '2025-06-01 16:20:50'),
(360, 'Derry', '0811833740', 'Toyota Vios', 'Jakarta', 'Service speedometer', '2025-06-02 01:21:19', '2025-06-02 01:21:19'),
(361, 'M. Akbar nugraga', '083821502163', 'Jazz Ge8', 'Serang', 'Mau upgrade spidol jazz ge8', '2025-06-02 07:21:52', '2025-06-02 07:21:52');
INSERT INTO `pesan` (`id`, `nama`, `no_whatsapp`, `merk_mobil`, `kota`, `pesan`, `created_at`, `updated_at`) VALUES
(362, 'M. Akbar nugraga', '083821502163', 'Jazz Ge8', 'Serang', 'Mau upgrade spidol jazz ge8', '2025-06-02 07:21:54', '2025-06-02 07:21:54'),
(363, 'M. Akbar nugraga', '083821502163', 'Jazz Ge8', 'Serang', 'Mau upgrade spidol jazz ge8', '2025-06-02 07:21:55', '2025-06-02 07:21:55'),
(364, 'Hermawan', '081327338533', 'Toyota', 'Yogyakarta', 'Innova', '2025-06-02 09:03:06', '2025-06-02 09:03:06'),
(365, 'Hermawan', '081327338533', 'Toyota', 'Yogyakarta', 'Innova', '2025-06-02 09:03:08', '2025-06-02 09:03:08'),
(366, 'Rifaldi', '081310220639', 'Baleno 2001', 'Bandung', 'Apakah custome spedometer bisa baleno old ? 🫣', '2025-06-02 09:48:55', '2025-06-02 09:48:55'),
(367, 'Michael Christian Shan Geraldo', '082142051965', 'Honda', 'Solo', 'Custom speedometer brio + negative display', '2025-06-03 06:11:12', '2025-06-03 06:11:12'),
(368, 'Michael Christian Shan Geraldo', '082142051965', 'Honda', 'Solo', 'custom speedometer brio & negative display', '2025-06-03 06:22:45', '2025-06-03 06:22:45'),
(369, 'Michael Christian Shan Geraldo', '082142051965', 'Honda', 'Solo', 'custom speedometer brio + negative display', '2025-06-03 06:23:16', '2025-06-03 06:23:16'),
(370, 'Ferdi', '0895361147348', 'Nissan Xtrail', 'Bandung', 'berapa biaya ganti lampu tombol headunit', '2025-06-03 06:51:53', '2025-06-03 06:51:53'),
(371, 'Victor wong', '081355759888', 'Nissan', 'Makassar', 'Perbaikan lcd', '2025-06-03 11:33:36', '2025-06-03 11:33:36'),
(372, 'ibal', '08116540300', 'isuzu panther pick up', 'Medan', 'Biar lebih mewah', '2025-06-03 12:43:23', '2025-06-03 12:43:23'),
(373, 'Rudi', '081515264694', 'Yaris TRD 2015', 'Surabaya', 'Kalau di surabaya harus kemana?', '2025-06-03 16:09:45', '2025-06-03 16:09:45'),
(374, 'Rudi', '081515264694', 'Yaris TRD 2015', 'Surabaya', 'Kalau di surabaya harus kemana?', '2025-06-03 16:09:46', '2025-06-03 16:09:46'),
(375, 'Revy Descastilloe', '082116553857', 'Honda CRV', 'Bekasi', 'sehabis lebaran mau service speedometer mobil', '2025-06-04 01:10:31', '2025-06-04 01:10:31'),
(376, 'Wino', '081310521535', 'Kijang LGX 2003', 'Tangerang', 'Service speedometer', '2025-06-04 02:20:14', '2025-06-04 02:20:14'),
(377, 'alifanadhi', '085723035527', 'honda', 'bandung', 'service speedo', '2025-06-04 02:25:45', '2025-06-04 02:25:45'),
(378, 'Putra', '082115268392', 'mitsubishi pajero 2012', 'jakarta', 'ingin menambah backlight speedometer', '2025-06-04 03:04:19', '2025-06-04 03:04:19'),
(379, 'Ferdi', '0895361147348', 'Xtrail T31 2013', 'Bandung', 'Ganti lampu headunit', '2025-06-04 05:44:39', '2025-06-04 05:44:39'),
(380, 'Dedy', '081298801212', 'Suzuki katana', 'Depok', 'Promo spido upgrade', '2025-06-04 06:48:52', '2025-06-04 06:48:52'),
(381, 'Iqbal', '085692812400', 'Calya', 'Jakarta', 'Harga spedometer brp', '2025-06-04 10:39:38', '2025-06-04 10:39:38'),
(382, 'Iqbal', '085692812400', 'Calya', 'Jakarta', 'Harga spedometer brp', '2025-06-04 10:39:40', '2025-06-04 10:39:40'),
(383, 'Yusril', '0895376553770', 'Toyota Corolla SEG 1.6 All New 1996', 'Bandung', 'RPM di spedometer lemah cuman ngangkat dikit dan lampu di spedometer redup', '2025-06-04 11:53:38', '2025-06-04 11:53:38'),
(384, 'Syaiful', '081525850959', 'Calya', 'Makassar', 'Spd buat mobil calya', '2025-06-04 17:24:02', '2025-06-04 17:24:02'),
(385, 'Syaiful', '081525850959', 'Calya', 'Makassar', 'Spd buat mobil calya', '2025-06-04 17:24:05', '2025-06-04 17:24:05'),
(386, 'Ardhitya', '085640233360', 'Daihatsu luxio', 'Purbalingga', 'Tanya dong om Custom untuk luxio habis berapa ? & apa bisa ditunggu ?', '2025-06-04 17:50:39', '2025-06-04 17:50:39'),
(387, 'Ardhitya', '085640233360', 'Daihatsu luxio', 'Purbalingga', 'Tanya dong om Custom untuk luxio habis berapa ? & apa bisa ditunggu ?', '2025-06-04 17:50:42', '2025-06-04 17:50:42'),
(388, 'Naufal', '085253330985', 'Calya', 'Jakarat', 'Mau nanya harga untuk speedometer calya berapa ya kak?', '2025-06-05 02:19:40', '2025-06-05 02:19:40'),
(389, 'Naufal', '085253330985', 'Calya', 'Jakarat', 'Mau nanya harga untuk speedometer calya berapa ya kak?', '2025-06-05 02:19:43', '2025-06-05 02:19:43'),
(390, 'Naufal', '085253330985', 'Calya', 'Jakarat', 'Mau nanya harga untuk speedometer calya berapa ya kak?', '2025-06-05 02:19:44', '2025-06-05 02:19:44'),
(391, 'Naufal', '085253330985', 'Calya', 'Jakarat', 'Mau nanya harga untuk speedometer calya berapa ya kak?', '2025-06-05 02:19:44', '2025-06-05 02:19:44'),
(392, 'Naufal', '085253330985', 'Calya', 'Jakarat', 'Mau nanya harga untuk speedometer calya berapa ya kak?', '2025-06-05 02:19:45', '2025-06-05 02:19:45'),
(393, 'Naufal', '085253330985', 'Calya', 'Jakarat', 'Mau nanya harga untuk speedometer calya berapa ya kak?', '2025-06-05 02:19:45', '2025-06-05 02:19:45'),
(394, 'Naufal', '085253330985', 'Calya', 'Jakarat', 'Mau nanya harga untuk speedometer calya berapa ya kak?', '2025-06-05 02:19:45', '2025-06-05 02:19:45'),
(395, 'Naufal', '085253330985', 'Calya', 'Jakarat', 'Mau nanya harga untuk speedometer calya berapa ya kak?', '2025-06-05 02:19:46', '2025-06-05 02:19:46'),
(396, 'Naufal', '085253330985', 'Calya', 'Jakarat', 'Mau nanya harga untuk speedometer calya berapa ya kak?', '2025-06-05 02:19:48', '2025-06-05 02:19:48'),
(397, 'Mohamad rizqi', '085697040994', 'Hilux vigo single cab 2014', 'Jakarga', 'Yang cocok dengan tampilan mewah', '2025-06-05 04:34:54', '2025-06-05 04:34:54'),
(398, 'Ade', '085742459171', 'Honda estilo', 'Brebes', 'Kupon', '2025-06-06 03:11:45', '2025-06-06 03:11:45'),
(399, 'Agung Wicaksono', '083841149421', 'Toyota Avanza MT 2006 vvti', 'Lebak, Banten', 'Mau service kilometer/odometer yang ga jalan dan mau ganti model speedometer', '2025-06-06 07:22:11', '2025-06-06 07:22:11'),
(400, 'Yusuf Sagita Putra', '081804831587', 'Nissan Xtrail T30 CBU 2002', 'Jakarta', 'Service Speedometer & Panel AC Digital', '2025-06-06 11:29:55', '2025-06-06 11:29:55'),
(401, 'Yusuf Sagita Putra', '081804831587', 'Nissan Xtrail T30 CBU 2002', 'Jakarta', 'Service Speedometer & Panel AC Digital', '2025-06-06 11:29:56', '2025-06-06 11:29:56'),
(402, 'Dwi', '085361462923', 'Xenia Sporty 2013', 'Medan', 'Mau pesan Speedometer Xenia 2013', '2025-06-06 12:46:22', '2025-06-06 12:46:22'),
(403, 'Dwi', '085361462923', 'Xenia Sporty 2013', 'Medan', 'Mau pesan Speedometer Xenia 2013', '2025-06-06 12:46:25', '2025-06-06 12:46:25'),
(404, 'Dwi', '085361462923', 'Xenia Sporty 2013', 'Medan', 'Mau pesan Speedometer Xenia 2013', '2025-06-06 12:47:13', '2025-06-06 12:47:13'),
(405, 'Leo Simon', '08118821963', 'splash', 'jakarta', 'Service Speedometer mobil', '2025-06-06 13:21:01', '2025-06-06 13:21:01'),
(406, 'Arvin', '08159120985', 'Mercedes w210 1997', 'Jakarta', 'Pengen servis speedo', '2025-06-07 01:35:13', '2025-06-07 01:35:13'),
(407, 'Nabawi', '087877232442', 'Mercedes', 'Jakarta', 'Headunit mercy w205', '2025-06-07 04:20:58', '2025-06-07 04:20:58'),
(408, 'Nabawi', '087877232442', 'Mercedes', 'Jakarta', 'Headunit mercy w205', '2025-06-07 04:21:00', '2025-06-07 04:21:00'),
(409, 'thomas', '081270549980', 'toyota', 'palembang', 'speedometer', '2025-06-07 13:47:01', '2025-06-07 13:47:01'),
(410, 'Indra', '087852816701', 'Toyota great corolla', 'Kota serang', 'Joz', '2025-06-09 00:35:38', '2025-06-09 00:35:38'),
(411, 'Aga widiyanto', '081282557888', 'Honda', 'Solo', 'Mau perbaiki spedo odyssey rb 1', '2025-06-09 05:12:17', '2025-06-09 05:12:17'),
(412, 'Aga widiyanto', '081282557888', 'Honda', 'Solo', 'Mau perbaiki spedo', '2025-06-09 05:13:07', '2025-06-09 05:13:07'),
(413, 'Irfan', '0811331924', 'Innova', 'Jakarta Selatan', 'Service Speedometer Innova V 2005 berapa yak? Jarum RPM dan Kecepatan nya kadang hidup kadang mati, sepertinya harus ganti Stepper nya...', '2025-06-09 05:42:49', '2025-06-09 05:42:49'),
(414, 'Ifan', '0895391303239', 'Honda Jazz ge8', 'Jakarta Timur', 'Untuk honda jazz ge8 kena berapa ya untuk custom speedometer ??', '2025-06-09 06:53:17', '2025-06-09 06:53:17'),
(415, 'Doni agustian', '081366441134', 'Mercedes benz oh 1526', 'Solok', 'Restorasi/ costum speedometer', '2025-06-09 11:33:39', '2025-06-09 11:33:39'),
(416, 'Lukman', '08121219300', 'Avanza 2013', 'Bandung', 'Custom spedometer', '2025-06-09 12:34:05', '2025-06-09 12:34:05'),
(417, 'Lukman', '08121219300', 'Avanza 2013', 'Bandung', 'Custom spedometer', '2025-06-09 12:34:08', '2025-06-09 12:34:08'),
(418, 'Adhe tama', '081212399890', 'Bmw', 'Bogor', 'Speedometer yg digitalnya buram', '2025-06-09 12:34:12', '2025-06-09 12:34:12'),
(419, 'Helly hariman', '081315889090', 'Stream', 'Bandung', 'Mau upgrade warna lampu spedoneter', '2025-06-09 14:35:33', '2025-06-09 14:35:33'),
(420, 'Helly hariman', '081315889090', 'Stream', 'Bandung', 'Mau upgrade warna lampu spedoneter', '2025-06-09 14:35:34', '2025-06-09 14:35:34'),
(421, 'akmal qodri', '082281687987', 'fortuner', 'jogjakarta', 'semoga dapat voucher', '2025-06-10 05:58:09', '2025-06-10 05:58:09'),
(422, 'Agsyah', '085157200134', 'Kijang LGX', 'Bandung', 'Angka kilometer mati', '2025-06-10 06:56:23', '2025-06-10 06:56:23'),
(423, 'Agsyah', '085157200134', 'Kijang LGX', 'Bandung', 'Angka kilometer mati', '2025-06-10 06:56:25', '2025-06-10 06:56:25'),
(424, 'agsyah', '085157200134', 'Kijang LGX', 'Bandung', 'Kilometer angka nya mati', '2025-06-10 06:56:48', '2025-06-10 06:56:48'),
(425, 'Rudy', '081287487588', 'Suzuki New Grand Vitara 2023', 'Jakarta', 'Speedometer', '2025-06-10 17:06:12', '2025-06-10 17:06:12'),
(426, 'Abdul', '089510192229', 'Honda City 2011', 'Bekasi', 'Mau upgrade speedometer', '2025-06-11 03:33:24', '2025-06-11 03:33:24'),
(427, 'Lukman', '08111011654', 'Honda City 2004', 'Tangsel', 'Speedometer kadang tidak nyala', '2025-06-11 03:37:58', '2025-06-11 03:37:58'),
(428, 'Steve Junior Timbuleng', '0811979097', 'VW Golf', 'Bogor', 'Lampu speedometer mati', '2025-06-11 17:21:24', '2025-06-11 17:21:24'),
(429, 'vicky rahmawan', '081244577880', 'Civic Eg', 'Malang', 'Hai', '2025-06-12 03:41:00', '2025-06-12 03:41:00'),
(430, 'vicky rahmawan', '081244577880', 'Civic Eg', 'Malang', 'Hai', '2025-06-12 03:41:03', '2025-06-12 03:41:03'),
(431, 'rendy putra', '082234107711', 'honda jazz gd3', 'bekasi', 'mau tampilan speedometer honda fit', '2025-06-12 12:12:11', '2025-06-12 12:12:11'),
(432, 'Rio', '082196630007', 'Honda city gm2', 'Gorontalo', 'Papan Speedometer', '2025-06-12 15:01:56', '2025-06-12 15:01:56'),
(433, 'Rio', '082196630007', 'Honda city gm2', 'Gorontalo', 'Papan Speedometer', '2025-06-12 15:01:59', '2025-06-12 15:01:59'),
(434, 'Rio', '082196630007', 'Honda city gm2', 'Gorontalo', 'Papan Speedometer', '2025-06-12 15:02:02', '2025-06-12 15:02:02'),
(435, 'Rio', '082196630007', 'Honda city gm2', 'Gorontalo', 'Papan Speedometer', '2025-06-12 15:02:05', '2025-06-12 15:02:05'),
(436, 'Rio', '082196630007', 'Honda city gm2', 'Gorontalo', 'Papan Speedometer', '2025-06-12 15:02:06', '2025-06-12 15:02:06'),
(437, 'Rio', '082196630007', 'Honda city gm2', 'Gorontalo', 'Papan Speedometer', '2025-06-12 15:02:06', '2025-06-12 15:02:06'),
(438, 'Rio', '082196630007', 'Honda city gm2', 'Gorontalo', 'Papan Speedometer', '2025-06-12 15:02:07', '2025-06-12 15:02:07'),
(439, 'Rio', '082196630007', 'Honda city gm2', 'Gorontalo', 'Papan Speedometer', '2025-06-12 15:02:08', '2025-06-12 15:02:08'),
(440, 'Wahyu', '085336270162', 'Kijang innova', 'Pamekasan', '1', '2025-06-13 02:22:28', '2025-06-13 02:22:28'),
(441, 'Alfian', '085932836593', 'toyota vios', 'Jogja', 'halo', '2025-06-13 12:33:49', '2025-06-13 12:33:49'),
(442, 'Yusuf', '085700081021', 'Suzuki', 'Solo', 'Mau tanya custom\r\n & upgrade speedometer', '2025-06-13 15:38:25', '2025-06-13 15:38:25'),
(443, 'Nirwan', '08119591909', 'Terios konde 2010', 'Jakarta', 'Custom speedometer', '2025-06-14 02:50:07', '2025-06-14 02:50:07'),
(444, 'Kevin', '081291896899', 'Honda', 'Jakarta Barat', 'Mau tanya kalau custom untuk Honda City GD8 2007 apakah bisa ? Dan kalau bisa brp ya biayanya ? Dan apakah ada beberapa pilihan model speedometer nya ? Terimakasih', '2025-06-15 05:06:41', '2025-06-15 05:06:41'),
(445, 'Tommy Zulkarnaim', '08883565371', 'Daihatsu Ayla x 2023', 'Sidoarjo', 'Custom speedometer', '2025-06-15 10:56:25', '2025-06-15 10:56:25'),
(446, 'Tommy Zulkarnaim', '08883565371', 'Daihatsu Ayla x 2023', 'Sidoarjo', 'Custom speedometer', '2025-06-15 10:56:26', '2025-06-15 10:56:26'),
(447, 'Tommy Zulkarnaim', '08883565371', 'Daihatsu ayla x 2023', 'Sidoarjo', 'Custom speedometer', '2025-06-15 10:57:05', '2025-06-15 10:57:05'),
(448, 'Karrel', '081314718818', 'Honda', 'Jakarta', 'Keren banget modifan speedometernya', '2025-06-15 18:01:18', '2025-06-15 18:01:18'),
(449, 'Gunawan', '085280362516', 'Mazda astina', 'Bogor', 'Service speedometer', '2025-06-15 22:53:55', '2025-06-15 22:53:55'),
(450, 'Gunawan', '085280372516', 'Mazda astina', 'Bogor', 'Service speedometer', '2025-06-15 22:54:48', '2025-06-15 22:54:48'),
(451, 'Dedi', '087770367737', 'Mitsubishi galant v6 hiu', 'Tangsel', 'Rpm meter selisih jauh dengan rpm scanner', '2025-06-16 01:23:04', '2025-06-16 01:23:04'),
(452, 'Azhura Putra Arnanda', '085219911992', 'Toyota', 'Yogyakarta', 'Warna LED Interior', '2025-06-16 05:26:41', '2025-06-16 05:26:41'),
(453, 'WICAKSANA', '085842352636', 'HONDA CITY vtec 2004', 'Gunungkidul yogyakarta', 'Custom spdmeter pertama yang terbaik di saat ini', '2025-06-16 05:35:59', '2025-06-16 05:35:59'),
(454, 'Andre', '085706442185', 'Fortuner', 'Bandung', 'Servis spedo', '2025-06-16 06:18:11', '2025-06-16 06:18:11'),
(455, 'Anton Nugroho', '085727440843', 'Mazda 2', 'Klaten', 'Sukses selalu spd', '2025-06-16 08:59:39', '2025-06-16 08:59:39'),
(456, 'Bagus', '081212880609', 'mitsubishi xpander 2022', 'semarang', 'mau custom', '2025-06-16 09:17:21', '2025-06-16 09:17:21'),
(457, 'keke', '085877544009', 'Toyota Calya 2017', 'Palembang', 'tanya² soal upgrade speedometer', '2025-06-16 19:11:42', '2025-06-16 19:11:42'),
(458, 'Diky Aldilla', '081299884146', 'Toyota Starlet', 'Depok', 'Repair Speedometer RPM ngaco, ODO tidak jalan', '2025-06-17 03:20:05', '2025-06-17 03:20:05'),
(459, 'Dimas', '081212193440', 'Innova G 2012', 'Jakarta', 'Mau price list, custom speedometer', '2025-06-17 05:54:11', '2025-06-17 05:54:11'),
(460, 'Dimas', '081212193440', 'Innova G 2012', 'Jakarta', 'Mau price list, custom speedometer', '2025-06-17 05:54:12', '2025-06-17 05:54:12'),
(461, 'Dimas', '081212193440', 'Innova G 2012', 'Jakarta', 'Mau price list, custom speedometer', '2025-06-17 05:54:13', '2025-06-17 05:54:13'),
(462, 'Dimas', '081212193440', 'Innova G 2012', 'Jakarta', 'Mau price list, custom speedometer', '2025-06-17 05:54:14', '2025-06-17 05:54:14'),
(463, 'Dimas', '081212193440', 'Innova G 2012', 'Jakarta', 'Mau price list, custom speedometer', '2025-06-17 05:54:14', '2025-06-17 05:54:14'),
(464, 'Dimas', '081212193440', 'Innova G 2012', 'Jakarta', 'Mau price list, custom speedometer', '2025-06-17 05:54:14', '2025-06-17 05:54:14'),
(465, 'Dimas', '081212193440', 'Innova G 2012', 'Jakarta', 'Mau price list, custom speedometer', '2025-06-17 05:54:14', '2025-06-17 05:54:14'),
(466, 'Dimas', '081212193440', 'Innova G 2012', 'Jakarta', 'Mau price list, custom speedometer', '2025-06-17 05:54:15', '2025-06-17 05:54:15'),
(467, 'Dimas', '081212193440', 'Innova G 2012', 'Jakarta', 'Mau price list, custom speedometer', '2025-06-17 05:54:15', '2025-06-17 05:54:15'),
(468, 'Dimas', '081212193440', 'Innova G 2012', 'Jakarta', 'Mau price list, custom speedometer', '2025-06-17 05:54:15', '2025-06-17 05:54:15'),
(469, 'Dimas', '081212193440', 'Innova G 2012', 'Jakarta', 'Mau price list, custom speedometer', '2025-06-17 05:54:15', '2025-06-17 05:54:15'),
(470, 'Dimas', '081212193440', 'Innova G 2012', 'Jakarta', 'Mau price list, custom speedometer', '2025-06-17 05:54:16', '2025-06-17 05:54:16'),
(471, 'Dimas', '081212193440', 'Innova G 2012', 'Jakarta', 'Mau price list, custom speedometer', '2025-06-17 05:54:17', '2025-06-17 05:54:17'),
(472, 'Teguh', '087878184359', 'Innova 2007 e', 'Bekasi', 'Spedometernya nyala mati nyala mati om, sama naik turun indikator bensin, tp klo  mesin panas normal', '2025-06-17 23:39:43', '2025-06-17 23:39:43'),
(473, 'Teguh', '087878184359', 'Innova 2007 e', 'Bekasi', 'Spedometernya nyala mati nyala mati om, sama naik turun indikator bensin, tp klo  mesin panas normal', '2025-06-17 23:39:45', '2025-06-17 23:39:45'),
(474, 'Mochammad hafit ibnu Wibowo', '088971686690', 'mitsubishi kuda', 'Bandung', 'Custum spedo', '2025-06-18 07:11:09', '2025-06-18 07:11:09'),
(475, 'Yomytoky', '087729727411', 'Fortuner vnt', 'Wonogiri', 'Spedo full pink', '2025-06-18 11:24:20', '2025-06-18 11:24:20'),
(476, 'Arya', '081807744948', 'Grand Livina 2008', 'Mataram', 'Kostum Panel speedometer', '2025-06-19 00:12:28', '2025-06-19 00:12:28'),
(477, 'Bagus', '081215508005', 'Toyota', 'Jogja', 'Ganti backlight spidometer berapa?', '2025-06-19 15:40:06', '2025-06-19 15:40:06'),
(478, 'Madan', '0822301563639', 'Mitsubishi', 'Bandung', 'Mau bertanya dimobil saya ada kendala klo sedang jalan trus sambil nyalain lampu senja tiba tiba gas tidak mau naik knpa ya. Tanya ke bengkel diesel karna kelistrikannya', '2025-06-20 00:19:24', '2025-06-20 00:19:24'),
(479, 'Andi', '081574067300', 'Lexus 570', 'Jakarta', 'Service lcd bawaan', '2025-06-20 07:00:15', '2025-06-20 07:00:15'),
(480, 'Bhule', '08114111567', 'brio old matik', 'makassar', 'Pengen Membuat Papan spedometer simple tapi menarik', '2025-06-20 12:51:27', '2025-06-20 12:51:27'),
(481, 'Bhule', '08114111567', 'brio old matik', 'makassar', 'Pengen Membuat Papan spedometer simple tapi menarik', '2025-06-20 12:51:28', '2025-06-20 12:51:28'),
(482, 'Arie', '089687300609', 'Pajero dakar 4x2 2017', 'Palembang', 'Mau service LCD spedo dakar', '2025-06-20 14:42:20', '2025-06-20 14:42:20'),
(483, 'Angga', '081215710730', 'Ford everest tahun 2013', 'Tangerang', 'Spedo bisa di custom semi digital yg bisa baca konsumsi bbm km perliternya?', '2025-06-20 16:46:16', '2025-06-20 16:46:16'),
(484, 'Suryo', '081219388772', 'Fortuner gr sport', 'Dki jakarta', 'Saya bemi speedometer digifal gak bisa pasang', '2025-06-21 13:28:34', '2025-06-21 13:28:34'),
(485, 'Nathan', '087889011763', 'Agya', 'Jakarta Timur', 'Cek harga custom speedometer untuk Agya GR 2022', '2025-06-21 13:52:12', '2025-06-21 13:52:12'),
(486, 'Nathan', '087889011763', 'Agya', 'Jakarta Timur', 'Cek harga custom speedometer untuk Agya GR 2022', '2025-06-21 13:52:36', '2025-06-21 13:52:36'),
(487, 'Nathan', '087889011763', 'Agya', 'Jakarta Timur', 'Cek harga custom speedometer untuk Agya GR 2022', '2025-06-21 13:52:42', '2025-06-21 13:52:42'),
(488, 'budi', '081882898848', 'mazda', 'semarang', 'repair spedometer indikator menyala', '2025-06-21 15:14:31', '2025-06-21 15:14:31'),
(489, 'IPAN', '0811864799', 'Toyota Yaris', 'Tangerang', 'Servis Buzzer Speedometer yaris bakpao bisa?', '2025-06-22 01:37:05', '2025-06-22 01:37:05'),
(490, 'IPAN', '0811864799', 'Toyota Yaris', 'Tangerang', 'Servis Buzzer Speedometer yaris bakpao bisa?', '2025-06-22 01:37:06', '2025-06-22 01:37:06'),
(491, 'Joshua', '087785010701', 'Toyota Soluna', 'Jakarta Selatan', 'Semoga lancar terus', '2025-06-22 07:47:06', '2025-06-22 07:47:06'),
(492, 'Ery', '085216171807', 'Soluna', 'DKI Jakarta', 'RPM mati', '2025-06-22 12:26:30', '2025-06-22 12:26:30'),
(493, 'Ery', '085216171807', 'Soluna', 'DKI Jakarta', 'RPM mati', '2025-06-22 12:26:33', '2025-06-22 12:26:33'),
(494, 'Rizqianto Utomo', '082125204436', 'Honda Odyssey', 'Bekasi', 'Perbaiki lampu spidometer yang redup', '2025-06-23 13:46:16', '2025-06-23 13:46:16'),
(495, 'Elisabeth', '081290339296', 'Toyota', 'DKI JAKARTA', 'mau benerin sunburn headunit', '2025-06-24 14:30:18', '2025-06-24 14:30:18'),
(496, 'Ismaiel', '081333306325', 'Bmw', 'Bandung', 'Tape ac', '2025-06-25 02:44:18', '2025-06-25 02:44:18'),
(497, 'Ismaiel', '081333306325', 'Bmw', 'Bandung', 'Tape ac', '2025-06-25 02:44:20', '2025-06-25 02:44:20'),
(498, 'Leri', '087709880986', 'Bmw e36', 'Bogor', 'Servis sunburn digital ac', '2025-06-25 07:41:15', '2025-06-25 07:41:15'),
(499, 'edwin', '085640405440', 'Toyota Innova', 'Klaten', '-', '2025-06-25 09:26:22', '2025-06-25 09:26:22'),
(500, 'Afif Fadhil', '081228215371', 'Sigra r', 'Jakarta', 'Kupon cek harga', '2025-06-25 23:07:36', '2025-06-25 23:07:36'),
(501, 'Muhajir', '082289125781', 'Suzuki grand escudo 1.6 2004', 'Nagan raya, aceh', 'Speedometer kedip kedip', '2025-06-26 07:24:11', '2025-06-26 07:24:11'),
(502, 'Rizki', '082213679676', 'Innova 2013', 'Jakarta timur', 'Mauservice speedometer ampere bensinnya gak akurat', '2025-06-26 13:55:38', '2025-06-26 13:55:38'),
(503, 'Rizki', '082213679676', 'Innova 2013', 'Jakarta timur', 'Mauservice speedometer ampere bensinnya gak akurat', '2025-06-26 13:55:40', '2025-06-26 13:55:40'),
(504, 'Encep', '082125507854', 'Vios G 2004', 'Bekasi', 'Indikator speedometer ada yang mati', '2025-06-27 08:31:38', '2025-06-27 08:31:38'),
(505, 'Encep', '082125507854', 'Vios G 2004', 'Bekasi', 'Indikator speedometer ada yang mati', '2025-06-27 08:31:40', '2025-06-27 08:31:40'),
(506, 'Encep', '082125507854', 'Vios G 2004', 'Bekasi', 'Indikator speedometer ada yang mati', '2025-06-27 08:31:41', '2025-06-27 08:31:41'),
(507, 'John', '081219666954', 'Toyota avanza', 'Jakarta timur', 'Custom spedometer avanza', '2025-06-27 15:08:29', '2025-06-27 15:08:29'),
(508, 'Mugi', '081271620846', 'Nissan grand livina xv 2010', 'Palembang', 'Mau modifikasi speedo', '2025-06-27 15:11:11', '2025-06-27 15:11:11'),
(509, 'Fauzan', '087851131787', 'Suzuki splash', 'Jakarta timur', 'Spidometer kedap kedip', '2025-06-29 03:22:30', '2025-06-29 03:22:30'),
(510, 'Fauzan', '087851131787', 'Suzuki splash', 'Jakarta timur', 'Spidometer kedap kedip', '2025-06-29 03:22:32', '2025-06-29 03:22:32'),
(511, 'Fadil satria putra', '081216348845', 'Honda Civic estilo', 'Bekasi', 'Speedometer mati', '2025-06-29 23:44:53', '2025-06-29 23:44:53'),
(512, 'Adin', '081381386612', 'Toyota corolla DX', 'Karawang', 'Speedometer dan Odometer tidak akurat, lompat2', '2025-06-30 00:18:02', '2025-06-30 00:18:02'),
(513, 'Kadek', '083119135504', 'Nissan juke', 'Denpasar', 'Custom spidometer dari oren ke blue', '2025-06-30 14:25:50', '2025-06-30 14:25:50'),
(514, 'Bagas', '085847644290', 'Innova diesel 2008', 'Tangsel', 'Min kalo mau booking dan tanya2 dmna ya?', '2025-07-01 00:05:28', '2025-07-01 00:05:28'),
(515, 'Bagas', '085847644290', 'Innova diesel 2008', 'Tangsel', 'Min kalo mau booking dan tanya2 dmna ya?', '2025-07-01 00:05:29', '2025-07-01 00:05:29'),
(516, 'Bagas', '085847644290', 'Innova diesel 2008', 'Tangsel', 'Min kalo mau booking dan tanya2 dmna ya?', '2025-07-01 00:05:31', '2025-07-01 00:05:31'),
(517, 'Bagas', '085847644290', 'Innova diesel 2008', 'Tangsel', 'Min kalo mau booking dan tanya2 dmna ya?', '2025-07-01 00:05:32', '2025-07-01 00:05:32'),
(518, 'Bagas', '085847644290', 'Innova diesel 2008', 'Tangsel', 'Min kalo mau booking dan tanya2 dmna ya?', '2025-07-01 00:05:32', '2025-07-01 00:05:32'),
(519, 'Bagas', '085847644290', 'Innova diesel 2008', 'Tangsel', 'Min kalo mau booking dan tanya2 dmna ya?', '2025-07-01 00:05:32', '2025-07-01 00:05:32'),
(520, 'Bagas', '085847644290', 'Innova diesel 2008', 'Tangsel', 'Min kalo mau booking dan tanya2 dmna ya?', '2025-07-01 00:05:33', '2025-07-01 00:05:33'),
(521, 'Bagas', '085847644290', 'Innova diesel 2008', 'Tangsel', 'Min kalo mau booking dan tanya2 dmna ya?', '2025-07-01 00:05:33', '2025-07-01 00:05:33'),
(522, 'Bagas', '085847644290', 'Innova diesel 2008', 'Tangsel', 'Min kalo mau booking dan tanya2 dmna ya?', '2025-07-01 00:05:33', '2025-07-01 00:05:33'),
(523, 'Bagas', '085847644290', 'Innova diesel 2008', 'Tangsel', 'Min kalo mau booking dan tanya2 dmna ya?', '2025-07-01 00:05:33', '2025-07-01 00:05:33'),
(524, 'Bagas', '085847644290', 'Innova diesel 2008', 'Tangsel', 'Min kalo mau booking dan tanya2 dmna ya?', '2025-07-01 00:05:34', '2025-07-01 00:05:34'),
(525, 'Arum', '081228304361', 'daihatsu xenia', 'sleman', 'kupon diskon', '2025-07-01 01:34:44', '2025-07-01 01:34:44');

-- --------------------------------------------------------

--
-- Table structure for table `sosial_media`
--

CREATE TABLE `sosial_media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) NOT NULL,
  `nama_sosmed` varchar(255) NOT NULL,
  `link_sosmed` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sosial_media`
--

INSERT INTO `sosial_media` (`id`, `logo`, `nama_sosmed`, `link_sosmed`, `created_at`, `updated_at`) VALUES
(1, '01JNZ4FJ7JGG6BJVFGZAGN4CXN.png', 'Instagram', 'https://instagram.com/spd_speedometer/', '2025-03-09 21:13:08', '2025-03-09 21:16:46'),
(2, '01JNZ43B0PP6YBFN7XQQRKDBAV.png', 'Youtube', 'https://youtube.com/spdspeedometer', '2025-03-09 21:19:48', '2025-03-09 21:19:48');

-- --------------------------------------------------------

--
-- Table structure for table `toko`
--

CREATE TABLE `toko` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `logo` varchar(255) NOT NULL,
  `nama_toko` varchar(255) NOT NULL,
  `link_toko` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `toko`
--

INSERT INTO `toko` (`id`, `logo`, `nama_toko`, `link_toko`, `created_at`, `updated_at`) VALUES
(1, '01JNZ4T9NY1XJYE1Z7GNEH0TKN.png', 'Shopee', 'https://shopee.co.id/spd_speedometer', '2025-03-09 21:25:40', '2025-03-09 21:25:40'),
(2, '01JNZ4V90J8ZJSA6BHHAM9HRJ0.png', 'Tokopedia', 'https://www.tokopedia.com/spdcustom', '2025-03-09 21:26:12', '2025-03-09 21:26:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(255) NOT NULL DEFAULT 'staff'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `role`) VALUES
(1, 'Admin', 'admin@rsi.com', NULL, '$2y$12$6PSV3xZvjJ7uUU968m9z1.KD26ITpa8fxYuC5Kiw85SFzpJplRvBO', 'jiDqwdpC2DtClYy5VFvHqv5ZCzaSXCqTkVovAdIgEyYH7KMujXGzeLq9g4LQ', '2025-03-09 21:06:41', '2025-03-09 21:06:41', 'admin'),
(2, 'Staff', 'staff@rsi.com', NULL, '$2y$12$inFVlxjq6CequmFAWTT.ku0Z6kJld3cCeboJce9SfiUz9IJyVGDG6', NULL, '2025-03-12 19:18:50', '2025-03-12 19:18:50', 'staff'),
(3, 'spdspeedometer', 'spdspeedometer@gmail.com', NULL, '$2y$12$6PSV3xZvjJ7uUU968m9z1.KD26ITpa8fxYuC5Kiw85SFzpJplRvBO', 'g0CqrcRsVMFj3Wbpw11DAmcacUZSfUIXUvifktAtAcLQzmpAImy6Z1LfHyQ0', '2025-03-26 05:20:30', '2025-03-26 05:25:06', 'staff'),
(4, 'tescreate', 'tes@rsi.com', NULL, '$2y$12$ZQNuWdX1E3WKCAbi1M.Uw.DSwUWtzxNqH5GZM5pnLKagYQVgEhtxG', NULL, '2025-03-26 08:26:04', '2025-03-26 08:26:04', 'staff');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cabang`
--
ALTER TABLE `cabang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `pesan`
--
ALTER TABLE `pesan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sosial_media`
--
ALTER TABLE `sosial_media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cabang`
--
ALTER TABLE `cabang`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pesan`
--
ALTER TABLE `pesan`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=526;

--
-- AUTO_INCREMENT for table `sosial_media`
--
ALTER TABLE `sosial_media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `toko`
--
ALTER TABLE `toko`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
