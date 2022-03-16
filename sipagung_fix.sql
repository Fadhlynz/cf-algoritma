-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2022 at 03:42 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sipagung_fix`
--

-- --------------------------------------------------------

--
-- Table structure for table `basis_hamas`
--

CREATE TABLE `basis_hamas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_hama` int(11) NOT NULL,
  `id_gejala` int(11) NOT NULL,
  `mb` double NOT NULL,
  `md` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `basis_hamas`
--

INSERT INTO `basis_hamas` (`id`, `id_hama`, `id_gejala`, `mb`, `md`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 0.4, 0.2, '2022-03-09 06:38:21', '2022-03-09 06:38:21'),
(2, 1, 2, 1, 0.2, '2022-03-09 06:46:03', '2022-03-09 06:46:03'),
(3, 1, 3, 1, 0.2, '2022-03-09 06:46:31', '2022-03-09 06:46:31'),
(4, 1, 4, 1, 0, '2022-03-09 06:48:39', '2022-03-09 06:48:39'),
(5, 1, 5, 0.8, 0.2, '2022-03-09 06:52:45', '2022-03-09 06:52:45'),
(6, 2, 1, 0.6, 0.2, '2022-03-09 06:55:17', '2022-03-09 06:55:17'),
(7, 2, 6, 1, 0.2, '2022-03-09 06:55:49', '2022-03-09 06:55:49'),
(8, 2, 7, 0.8, 0.2, '2022-03-09 06:58:15', '2022-03-09 06:58:15'),
(9, 2, 8, 0.6, 0.2, '2022-03-09 06:59:46', '2022-03-09 06:59:46'),
(10, 3, 9, 1, 0.2, '2022-03-09 07:08:35', '2022-03-09 07:08:35'),
(11, 3, 10, 1, 0, '2022-03-09 07:12:31', '2022-03-09 07:12:31'),
(12, 4, 11, 0.6, 0.2, '2022-03-09 07:21:49', '2022-03-09 07:21:49'),
(13, 4, 12, 1, 0.2, '2022-03-09 07:29:39', '2022-03-09 07:29:39'),
(14, 4, 13, 1, 0, '2022-03-09 07:30:04', '2022-03-09 07:30:04'),
(15, 4, 14, 0.8, 0.2, '2022-03-09 07:30:55', '2022-03-09 07:30:55'),
(16, 5, 1, 0.6, 0.2, '2022-03-09 07:32:12', '2022-03-09 07:32:12'),
(17, 5, 15, 1, 0.2, '2022-03-09 07:34:43', '2022-03-09 07:34:43'),
(18, 5, 16, 1, 0.2, '2022-03-09 07:39:07', '2022-03-09 07:39:07'),
(19, 5, 17, 0.8, 0.2, '2022-03-09 07:41:48', '2022-03-09 07:41:48');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gejala_hamas`
--

CREATE TABLE `gejala_hamas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_gejala` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `gejala_hamas`
--

INSERT INTO `gejala_hamas` (`id`, `nama_gejala`, `created_at`, `updated_at`) VALUES
(1, 'Bentuk daun berlubang-lubang atau rusak', '2022-03-09 06:00:27', '2022-03-09 06:00:27'),
(2, 'Aktivitas hama ini hanya berlangsung pada musim hujan selama 1-2 bulan', '2022-03-09 06:00:45', '2022-03-09 06:00:45'),
(3, 'Larva yang baru menetas melubangi batang, kemudian membuat terowongan hingga ke dasar batang sehingga tanaman menjadi kuning dan akhirnya', '2022-03-09 06:02:14', '2022-03-09 06:02:14'),
(4, 'Pertumbuhan terlambat, menguning, jaringan membusuk atau gejala sundep', '2022-03-09 06:02:32', '2022-03-09 06:02:32'),
(5, 'Jika tanaman mengalami penyembuhan, maka pertumbuhannya akan kerdil.', '2022-03-09 06:02:51', '2022-03-09 06:02:51'),
(6, 'Larva kecil merusak daun serta serentak bergerombol dengan meninggalkan sisa-sisa epidermis bagian atas, bahkan hanya menyisakan tulang daunnya saja', '2022-03-09 06:04:49', '2022-03-09 06:04:49'),
(7, 'Biasanya larva berada dipermukaan bawah daun', '2022-03-09 06:05:09', '2022-03-09 06:05:09'),
(8, 'Umumnya muncul pada saat musim kemarau', '2022-03-09 06:05:29', '2022-03-09 06:05:29'),
(9, 'Membuat lubang kecil pada daun', '2022-03-09 06:05:54', '2022-03-09 06:05:54'),
(10, 'Membuat lubang gorokan pada batang, bunga jantan atau pangkal tongkol, sehingga batang tassel mudah patah', '2022-03-09 06:08:11', '2022-03-09 06:08:11'),
(11, 'Terdapat kerusakan pada bagian tongkol', '2022-03-09 06:09:07', '2022-03-09 06:09:07'),
(12, 'Larva yang baru menetas akan makan pada jambul tongkol, dan kemudian membuat lubang masuk ke tongkol.', '2022-03-09 06:09:24', '2022-03-09 06:09:24'),
(13, 'Kotoran yang ditinggalkan larva menyebabkan bertumbuhnya jamur yang menghasilkan mikotoksin sehingga tongkol rusak.', '2022-03-09 06:09:40', '2022-03-09 06:09:40'),
(14, 'Hama ini juga dapat menyerang tanaman muda, terutama pada pucuk atau malai yang. dapat mengakibatkan tidak terbentuknya bunga jantan, berkurangnya hasil dan bahkan tanaman dapat mati', '2022-03-09 06:10:11', '2022-03-09 06:10:11'),
(15, 'Menyerang bagian daun terlebih dahulu, kemudian tulang daun dan batang', '2022-03-09 06:13:16', '2022-03-09 06:13:16'),
(16, 'Menyerang mulai dari tepi daun', '2022-03-09 06:13:38', '2022-03-09 06:13:38'),
(17, 'Hama ini dapat pula memakan batang dan tongkol jagung jika populasinya sangat tinggi dengan sumber makanan terbatas', '2022-03-09 06:14:40', '2022-03-09 06:14:40');

-- --------------------------------------------------------

--
-- Table structure for table `hamas`
--

CREATE TABLE `hamas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_hama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `det_hama` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `srn_hama` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `hamas`
--

INSERT INTO `hamas` (`id`, `nama_hama`, `det_hama`, `srn_hama`, `gambar`, `created_at`, `updated_at`) VALUES
(1, 'Hama Lalat Bibit (Atherigona sp)', 'Hama lalat bibit ini merupakan serangga yang baru menetas dan biasanya menyerang dengan cara membuat atau melubangi batang tanaman jagung dan memakannya sampai ke dasar batang dari tanaman jagung itu sendiri.', 'Saran belum ada', '1646830026.png', '2022-03-09 04:47:06', '2022-03-09 04:47:06'),
(2, 'Hama Ulat Grayak (Spodoptera frugiperda.)', 'Ulat grayak merupakan serangga ngengat asli daerah tropis yang sebelumnya hanya ditemukan pada pertanaman jagung di Amerika Serikat, Argentina, dan Afrika. Tahun 2018 FAW memasuki Benua Asia di kawasan India, Myanmar, dan Thailand. Maret 2019 dilaporkan merusak tanaman jagung dengan tingkat serangan berat di Kabupaten Pasaman Barat (Sumatera Barat), kemudian menyebar hampir di seluruh wilayah Indonesia. Sebagai jenis hama baru yang menyerang pertanaman jagung di Indonesia, keberadaan hama ulat grayak atau Spodoptera frugiperda ini dapat menjadi ancaman serius bagi para petani di Indonesia.', 'Saran belum ada', '1646830151.jpg', '2022-03-09 04:49:11', '2022-03-09 04:49:11'),
(3, 'Hama Larva Penggerek Batang (Ostrinia funacalis)', 'Hama penggerek batang (Ostrinia funacalis) merupakan salah satu dari beberapa jenis hama yang menyerang tanaman jagung, menimbulkan kerusakan secara fisik dan mengakibatkan kerugian secara ekonomi sehingga memerlukan tindakan pengendalian.', 'Saran belum ada', '1646830228.jpg', '2022-03-09 04:50:28', '2022-03-09 04:50:28'),
(4, 'Hama Penggerek Tongkol (Helicoverpa armigera Hbn. Noctuidae: Lepidotera)', 'Helicoverpa armigera merupakan serangga dari kelompok ngengat yang larvanya menjadi salah satu hama penting pada pertanaman kapas dan jagung.', 'Saran belum ada', '1646833867.png', '2022-03-09 05:51:07', '2022-03-09 05:51:07'),
(5, 'Hama Belalang Kembara (Locusta migratoria)', 'Belalang kembara adalah jenis belalang besar yang paling tersebar di dunia, dan merupakan satu-satunya spesies anggota marga Locusta. Serangga hama ini dapat dijumpai di seluruh Dunia Lama yang beriklim agak hangat, mulai dari Afrika, Asia, Australia, sampai Selandia Baru.', 'Saran belum ada', '1646840544.jpg', '2022-03-09 05:55:35', '2022-03-09 07:42:24');

-- --------------------------------------------------------

--
-- Table structure for table `hasil_hamas`
--

CREATE TABLE `hasil_hamas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tanggal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `hama` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `gejala` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `hasil_id` int(11) NOT NULL,
  `hasil_nilai` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kondisi_hamas`
--

CREATE TABLE `kondisi_hamas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `kondisi` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kondisi_hamas`
--

INSERT INTO `kondisi_hamas` (`id`, `kondisi`, `created_at`, `updated_at`) VALUES
(1, 'Sangat Yakin', '2022-03-09 06:24:48', '2022-03-09 06:24:48'),
(2, 'Yakin', '2022-03-09 06:34:35', '2022-03-09 06:34:35'),
(3, 'Cukup Yakin', '2022-03-09 06:34:44', '2022-03-09 06:34:44'),
(4, 'Sedikit Yakin', '2022-03-09 06:34:55', '2022-03-09 06:34:55'),
(5, 'Tidak Tahu', '2022-03-09 06:35:16', '2022-03-09 06:35:16'),
(6, 'Tidak', '2022-03-09 06:35:23', '2022-03-09 06:35:23');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_02_11_203209_create_hamas_table', 1),
(6, '2022_02_12_015109_create_gejala_hamas_table', 1),
(7, '2022_02_12_020548_create_kondisi_hamas_table', 1),
(8, '2022_02_12_022059_create_basis_hamas_table', 1),
(9, '2022_02_12_043508_create_hasil_hamas_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `basis_hamas`
--
ALTER TABLE `basis_hamas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `gejala_hamas`
--
ALTER TABLE `gejala_hamas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hamas`
--
ALTER TABLE `hamas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hasil_hamas`
--
ALTER TABLE `hasil_hamas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kondisi_hamas`
--
ALTER TABLE `kondisi_hamas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

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
-- AUTO_INCREMENT for table `basis_hamas`
--
ALTER TABLE `basis_hamas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gejala_hamas`
--
ALTER TABLE `gejala_hamas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `hamas`
--
ALTER TABLE `hamas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `hasil_hamas`
--
ALTER TABLE `hasil_hamas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kondisi_hamas`
--
ALTER TABLE `kondisi_hamas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
