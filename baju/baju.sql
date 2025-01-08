-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2025 at 07:57 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ams_native`
--
CREATE DATABASE IF NOT EXISTS `ams_native` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `ams_native`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_disposisi`
--

CREATE TABLE `tbl_disposisi` (
  `id_disposisi` int(10) NOT NULL,
  `tujuan` varchar(250) NOT NULL,
  `isi_disposisi` mediumtext NOT NULL,
  `sifat` varchar(100) NOT NULL,
  `batas_waktu` date NOT NULL,
  `catatan` varchar(250) NOT NULL,
  `id_surat` int(10) NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_instansi`
--

CREATE TABLE `tbl_instansi` (
  `id_instansi` tinyint(1) NOT NULL,
  `institusi` varchar(150) NOT NULL,
  `nama` varchar(150) NOT NULL,
  `status` varchar(150) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `kepsek` varchar(50) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `website` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `logo` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_instansi`
--

INSERT INTO `tbl_instansi` (`id_instansi`, `institusi`, `nama`, `status`, `alamat`, `kepsek`, `nip`, `website`, `email`, `logo`, `id_user`) VALUES
(1, 'Dinas Pendidikan Pemuda Dan Olahraga', 'SMK MasRud.com', 'Terakreditasi A', 'Sawahan, Nganjuk, Jawa Timur', 'Rudi', '-', 'https://masrud.com', 'email@masrud.com', 'logo.png', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_klasifikasi`
--

CREATE TABLE `tbl_klasifikasi` (
  `id_klasifikasi` int(5) NOT NULL,
  `kode` varchar(30) NOT NULL,
  `nama` varchar(250) NOT NULL,
  `uraian` mediumtext NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sett`
--

CREATE TABLE `tbl_sett` (
  `id_sett` tinyint(1) NOT NULL,
  `surat_masuk` tinyint(2) NOT NULL,
  `surat_keluar` tinyint(2) NOT NULL,
  `referensi` tinyint(2) NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_sett`
--

INSERT INTO `tbl_sett` (`id_sett`, `surat_masuk`, `surat_keluar`, `referensi`, `id_user`) VALUES
(1, 10, 10, 10, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_surat_keluar`
--

CREATE TABLE `tbl_surat_keluar` (
  `id_surat` int(10) NOT NULL,
  `no_agenda` int(10) NOT NULL,
  `tujuan` varchar(250) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `isi` mediumtext NOT NULL,
  `kode` varchar(30) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_catat` date NOT NULL,
  `file` varchar(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_surat_masuk`
--

CREATE TABLE `tbl_surat_masuk` (
  `id_surat` int(10) NOT NULL,
  `no_agenda` int(10) NOT NULL,
  `no_surat` varchar(50) NOT NULL,
  `asal_surat` varchar(250) NOT NULL,
  `isi` mediumtext NOT NULL,
  `kode` varchar(30) NOT NULL,
  `indeks` varchar(30) NOT NULL,
  `tgl_surat` date NOT NULL,
  `tgl_diterima` date NOT NULL,
  `file` varchar(250) NOT NULL,
  `keterangan` varchar(250) NOT NULL,
  `id_user` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` tinyint(2) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(35) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nip` varchar(25) NOT NULL,
  `admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `nama`, `nip`, `admin`) VALUES
(1, 'masrud', '7d05dc02abe9cda729d0c798c886db47', 'Rudi', '-', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_disposisi`
--
ALTER TABLE `tbl_disposisi`
  ADD PRIMARY KEY (`id_disposisi`);

--
-- Indexes for table `tbl_instansi`
--
ALTER TABLE `tbl_instansi`
  ADD PRIMARY KEY (`id_instansi`);

--
-- Indexes for table `tbl_klasifikasi`
--
ALTER TABLE `tbl_klasifikasi`
  ADD PRIMARY KEY (`id_klasifikasi`);

--
-- Indexes for table `tbl_sett`
--
ALTER TABLE `tbl_sett`
  ADD PRIMARY KEY (`id_sett`);

--
-- Indexes for table `tbl_surat_keluar`
--
ALTER TABLE `tbl_surat_keluar`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `tbl_surat_masuk`
--
ALTER TABLE `tbl_surat_masuk`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_disposisi`
--
ALTER TABLE `tbl_disposisi`
  MODIFY `id_disposisi` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_klasifikasi`
--
ALTER TABLE `tbl_klasifikasi`
  MODIFY `id_klasifikasi` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_surat_keluar`
--
ALTER TABLE `tbl_surat_keluar`
  MODIFY `id_surat` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_surat_masuk`
--
ALTER TABLE `tbl_surat_masuk`
  MODIFY `id_surat` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` tinyint(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `baju`
--
CREATE DATABASE IF NOT EXISTS `baju` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `baju`;

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_barang` text NOT NULL,
  `merk` varchar(255) NOT NULL,
  `harga_beli` varchar(255) NOT NULL,
  `harga_jual` varchar(255) NOT NULL,
  `satuan_barang` varchar(255) NOT NULL,
  `stok` text NOT NULL,
  `tgl_input` varchar(255) NOT NULL,
  `tgl_update` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `id_barang`, `id_kategori`, `nama_barang`, `merk`, `harga_beli`, `harga_jual`, `satuan_barang`, `stok`, `tgl_input`, `tgl_update`) VALUES
(16, 'BR001', 0, 'telur puyuh', 'puyuh', '2000', '2500', 'PCS', '2999', '23 November 2023, 1:26', NULL),
(17, 'BR002', 0, 'telur puyuh', 'puyuh', '2000', '2500', '#', '2999', '23 November 2023, 1:28', NULL),
(18, 'BR003', 14, 'kaus pendek', 'levis', '2000', '2500', 'PCS', '2998', '23 November 2023, 1:29', '8 January 2025, 13:30'),
(19, 'BR004', 14, 'baju', 'levis', '212', '3232', 'PCS', '12', '8 January 2025, 13:30', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `tgl_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `tgl_input`) VALUES
(13, 'jeans', '23 November 2023, 1:29'),
(14, 'kaos', '23 November 2023, 1:29');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` char(32) NOT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_login`, `user`, `pass`, `id_member`) VALUES
(1, 'admin1', '54e01e472d48c05316df50aee0dcc027', 1);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nm_member` varchar(255) NOT NULL,
  `alamat_member` text NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gambar` text NOT NULL,
  `NIK` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `nm_member`, `alamat_member`, `telepon`, `email`, `gambar`, `NIK`) VALUES
(1, 'Lathif Wear', 'payakumbuh', '082268757733', 'dendhi@gmail.com', 'dendi.jpeg', '21101013004');

-- --------------------------------------------------------

--
-- Table structure for table `nota`
--

CREATE TABLE `nota` (
  `id_nota` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL,
  `periode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `nota`
--

INSERT INTO `nota` (`id_nota`, `id_barang`, `id_member`, `jumlah`, `total`, `tanggal_input`, `periode`) VALUES
(23, 'BR003', 1, '1', '2500', '23 November 2023, 2:38', '11-2023');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `toko`
--

CREATE TABLE `toko` (
  `id_toko` int(11) NOT NULL,
  `nama_toko` varchar(255) NOT NULL,
  `alamat_toko` text NOT NULL,
  `tlp` varchar(255) NOT NULL,
  `nama_pemilik` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `toko`
--

INSERT INTO `toko` (`id_toko`, `nama_toko`, `alamat_toko`, `tlp`, `nama_pemilik`) VALUES
(1, 'lathif ', 'payakumbuh', '0929392939', 'dendii');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id_toko`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nota`
--
ALTER TABLE `nota`
  MODIFY `id_nota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `toko`
--
ALTER TABLE `toko`
  MODIFY `id_toko` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `belajar`
--
CREATE DATABASE IF NOT EXISTS `belajar` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `belajar`;

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
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2024_06_26_130349_create_sessions_table', 1);

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
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('0MGBB3JHIxJzLLHUeQqdpCLmlTwCCpIblx9SHOUZ', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiMENlZTliOFhDNkZESHEwc0RSbm9LNktUM0h2OE5HWlNmSXdtdWZFNSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly9iZWxhamFyLnRlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1721375756),
('5N1ZRHlbXHmBteTzYsFHVxmxzzije65N1Y1vTeBp', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiTTh0RGo5YklNbDdHMUlDcnp1UDd1YXRmNEQxdWt4RUdhV0ZucVFZcSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly9iZWxhamFyLnRlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1719487155),
('BoCU4qQ8MxNJDxK8tJVa8IUKji0ZomAG7Q8LDvqU', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoieTlSdzR0cFhXNE1Hc3VsRTZGa1luUVVMbFVXUVRKM21ya2cyckZnbSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly9iZWxhamFyLnRlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1721375901),
('gdVeZdGBSKNKg7o0M3Q77zVdAKTR9OA482ECBtUo', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicEExYkgxQnRabGNKWFZnU2IycWtHdDZ3UmVlUmdSdVl2Z013VjNQMiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjU6Imh0dHA6Ly9iZWxhamFyLnRlc3QvYWJvdXQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1719407334),
('Q0UI7kPXj6Vt9eQXe2UjXiWCZnWFWFxSJgRvK1t3', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiM2pzd0Z1VWlMbkJNNUtNYTBkTmVZM0VyY01aendEMnRkaklZakZoMSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MTk6Imh0dHA6Ly9iZWxhamFyLnRlc3QiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1719454455),
('QlvjvslZh1hJpYnruwez76nBj6nlzqGLp2BUrRvH', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiZm5iNFU4RFAxUzJJZjlBcWZyMHFPWVI5cUtKV3ZYTnl4Tkcza2M1dSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1721375890),
('vRwbQWQdwz5BuTTImWZ36EByT8xLTA3CdLkp7FYE', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiOXFjR0dNSjl2WDRGWUl1MTVqNzVLM2lCc0F3Q004VTJVY21NWVZqeiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9iZWxhamFyL3B1YmxpYyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1721291111),
('x1P4a9XrLJXwiucvlKckiHDeB7gu6S8jAPBZifVS', NULL, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/126.0.0.0 Safari/537.36 Edg/126.0.0.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoibllVcXJkWHhseHBTYUV1NU5Vb1ljNE80U0huMHBCd3FMS2VMNEY5NiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzY6Imh0dHA6Ly9sb2NhbGhvc3Q6ODA4MC9iZWxhamFyL3B1YmxpYyI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1721291111),
('ZWvZ3OQKm56qbwBxD9HnotVP6IZbTXgTMTZQ6wHG', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:128.0) Gecko/20100101 Firefox/128.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNUFrVUc5cEdXYVdFR2h0WVd2M293TVhUODhBZ3N4U3lVeFhRY0pxciI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjI6Imh0dHA6Ly9iZWxhamFyLnRlc3QvZGQiO31zOjY6Il9mbGFzaCI7YToyOntzOjM6Im9sZCI7YTowOnt9czozOiJuZXciO2E6MDp7fX19', 1721388651);

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
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

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
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

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
--
-- Database: `chokato`
--
CREATE DATABASE IF NOT EXISTS `chokato` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `chokato`;

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `jenis_berita` varchar(20) NOT NULL,
  `judul_berita` varchar(255) NOT NULL,
  `slud_berita` varchar(255) NOT NULL,
  `keywords` text DEFAULT NULL,
  `status_berita` varchar(20) NOT NULL,
  `keterangan` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `gambar`
--

CREATE TABLE `gambar` (
  `id_gambar` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `judul_gambar` varchar(255) DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `gambar`
--

INSERT INTO `gambar` (`id_gambar`, `id_produk`, `judul_gambar`, `gambar`, `tanggal_update`) VALUES
(5, 7, 'Gamis', 'd-1.jpg', '2019-01-31 21:08:42'),
(6, 6, 'Gamis', 'dfnkanklf.jpg', '2019-01-31 21:09:29'),
(7, 5, 'jilbab Slider', 'Untitled-1.jpg', '2019-01-31 21:10:11'),
(8, 4, 'jilbab Slider', 'titled-1.jpg', '2019-01-31 21:10:55'),
(9, 3, 'jilbab Slider', 'yryfyf1.jpg', '2019-01-31 21:29:08'),
(13, 1, 'jilbab Slider', 'titled-11.jpg', '2019-01-31 21:37:31'),
(14, 8, 'gamis Slider', 'dfnkanklf1.jpg', '2019-01-31 21:38:05'),
(15, 2, 'gamis Slider', 'yryfyf11.jpg', '2019-01-31 21:38:57'),
(16, 11, 'samping', 'IMG-20190120-WA0005.jpg', '2019-02-10 16:17:47'),
(17, 11, 'depan', 'IMG-20190125-WA0014.jpg', '2019-02-10 16:18:08');

-- --------------------------------------------------------

--
-- Table structure for table `header_transaksi`
--

CREATE TABLE `header_transaksi` (
  `id_header_transakasi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telepon` varchar(50) DEFAULT NULL,
  `alamat` varchar(300) DEFAULT NULL,
  `kode_transaksi` varchar(255) NOT NULL,
  `tanggal_transaksi` datetime NOT NULL,
  `jumlah_transaksi` int(11) NOT NULL,
  `status_bayar` varchar(20) NOT NULL,
  `jumlah_bayar` int(11) DEFAULT NULL,
  `rekening_pembayaran` varchar(255) DEFAULT NULL,
  `rekening_pelanggan` varchar(255) DEFAULT NULL,
  `bukti_bayar` varchar(255) DEFAULT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `header_transaksi`
--

INSERT INTO `header_transaksi` (`id_header_transakasi`, `id_user`, `id_pelanggan`, `nama_pelanggan`, `email`, `telepon`, `alamat`, `kode_transaksi`, `tanggal_transaksi`, `jumlah_transaksi`, `status_bayar`, `jumlah_bayar`, `rekening_pembayaran`, `rekening_pelanggan`, `bukti_bayar`, `tanggal_post`, `tanggal_update`) VALUES
(1, 0, 2, 'Thomas Barone', 'atomcrvrsquad@gmail.com', '082286520090', 'Payakumbuh', '29072020BDWNF3M4', '2020-07-29 00:00:00', 130, 'Belum', NULL, NULL, NULL, NULL, '2020-07-29 19:36:21', '2020-07-29 12:36:21'),
(2, 0, 5, 'Intan', 'Intan@gmail.com', '082282847900', 'Payakumbuh', '02082020EQ3CM1VZ', '2020-08-02 00:00:00', 200, 'Belum', NULL, NULL, NULL, NULL, '2020-08-02 02:00:35', '2020-08-01 19:00:35'),
(3, 0, 5, 'Intan', 'Intan@gmail.com', '082282847900', 'Payakumbuh', '02082020SU76NYXE', '2020-08-02 00:00:00', 30, 'Belum', NULL, NULL, NULL, NULL, '2020-08-02 02:01:29', '2020-08-01 19:01:29'),
(4, 0, 8, 'intan permatasari', 'intann@gmail.com', '082391101804', 'payakumbuh', '020820208ZOYOUT0', '2020-08-02 00:00:00', 30, 'Belum', NULL, NULL, NULL, NULL, '2020-08-02 16:29:47', '2020-08-02 09:29:47'),
(5, 0, 4, 'rosnina', 'ninaros@gmail.com', '0987654332', 'Payakumbuh', '03082020NMYPCSP0', '2020-08-03 00:00:00', 30, 'Belum', NULL, NULL, NULL, NULL, '2020-08-03 14:03:49', '2020-08-03 07:03:49'),
(6, 0, 9, 'Lilik Suhery', 'lilik123@gmail.com', '08238444142', 'payakumbuh', '04082020KPIMSQSX', '2020-08-04 00:00:00', 30, 'Belum', NULL, NULL, NULL, NULL, '2020-08-04 12:53:06', '2020-08-04 05:53:06'),
(7, 0, 1, 'Cici', 'cicicantik@gmail.com', '0987654332', 'payakumbuh', '07082020MYTH7EKF', '2020-08-07 00:00:00', 50, 'Belum', NULL, NULL, NULL, NULL, '2020-08-07 21:28:58', '2020-08-07 14:28:58'),
(8, 0, 2, 'Thomas Barone', 'atomcrvrsquad@gmail.com', '082286520090', 'Payakumbuh', '08082020AGKY8ELV', '2020-08-08 00:00:00', 60, 'Belum', NULL, NULL, NULL, NULL, '2020-08-08 03:39:20', '2020-08-07 20:39:20'),
(9, 0, 2, 'Thomas Barone', 'atomcrvrsquad@gmail.com', '082286520090', 'Payakumbuh', '08082020TDSLGEI2', '2020-08-08 00:00:00', 20, 'Belum', NULL, NULL, NULL, NULL, '2020-08-08 03:45:11', '2020-08-07 20:45:11'),
(10, 0, 9, 'Lilik Suhery', 'lilik123@gmail.com', '08238444142', 'payakumbuh', '08082020S4LVNMRP', '2020-08-08 00:00:00', 30, 'Belum', NULL, NULL, NULL, NULL, '2020-08-08 09:33:58', '2020-08-08 02:33:58'),
(12, 0, 9, 'Lilik Suhery', 'lilik123@gmail.com', '08238444142', 'payakumbuh', '08082020MT7V2LJB', '2020-08-08 00:00:00', 0, 'Belum', NULL, NULL, NULL, NULL, '2020-08-08 09:34:23', '2020-08-08 02:34:23'),
(13, 0, 12, 'siska', 'siska123@gmail.com', '09273792', 'payakumbuh', '08082020DHQJHECT', '2020-08-08 00:00:00', 240, 'Belum', NULL, NULL, NULL, NULL, '2020-08-08 09:49:07', '2020-08-08 02:49:07'),
(14, 0, 2, 'Thomas Barone', 'atomcrvrsquad@gmail.com', '082286520090', 'Payakumbuh', '08082020DLLYGYV0', '2020-08-08 00:00:00', 130, 'Belum', NULL, NULL, NULL, NULL, '2020-08-08 21:40:47', '2020-08-08 14:40:47'),
(15, 0, 2, 'Thomas Barone', 'atomcrvrsquad@gmail.com', '082286520090', 'Payakumbuh', '08082020B1O4DBDG', '2020-08-08 00:00:00', 50, 'Belum', NULL, NULL, NULL, NULL, '2020-08-08 21:42:26', '2020-08-08 14:42:26'),
(17, 0, 2, 'Thomas Barone', 'atomcrvrsquad@gmail.com', '082286520090', 'Payakumbuh', '08082020CKUXXCUP', '2020-08-08 00:00:00', 50, 'Belum', NULL, NULL, NULL, NULL, '2020-08-08 21:43:20', '2020-08-08 14:43:20'),
(19, 0, 2, 'Thomas Barone', 'atomcrvrsquad@gmail.com', '082286520090', 'Payakumbuh', '08082020GMFJTIDB', '2020-08-08 00:00:00', 70, 'Belum', NULL, NULL, NULL, NULL, '2020-08-08 21:44:22', '2020-08-08 14:44:22'),
(20, 0, 2, 'Thomas Barone', 'atomcrvrsquad@gmail.com', '082286520090', 'Payakumbuh', '08082020LKQKVOI7', '2020-08-08 00:00:00', 70, 'Belum', NULL, NULL, NULL, NULL, '2020-08-08 21:47:03', '2020-08-08 14:47:03'),
(21, 0, 2, 'Thomas Barone', 'atomcrvrsquad@gmail.com', '082286520090', 'Payakumbuh', '08082020MO4H1F7I', '2020-08-08 00:00:00', 70, 'Belum', NULL, NULL, NULL, NULL, '2020-08-08 21:47:32', '2020-08-08 14:47:32'),
(22, 0, 2, 'Thomas Barone', 'atomcrvrsquad@gmail.com', '082286520090', 'Payakumbuh', '08082020BMHK4WYQ', '2020-08-08 00:00:00', 70, 'Belum', NULL, NULL, NULL, NULL, '2020-08-08 21:48:00', '2020-08-08 14:48:00'),
(23, 0, 2, 'Thomas Barone', 'atomcrvrsquad@gmail.com', '082286520090', 'Payakumbuh', '08082020FYYO1ODT', '2020-08-08 00:00:00', 50, 'Belum', NULL, NULL, NULL, NULL, '2020-08-08 22:01:21', '2020-08-08 15:01:21'),
(24, 0, 2, 'Thomas Barone', 'atomcrvrsquad@gmail.com', '082286520090', 'Payakumbuh', '08082020GJVLCYKU', '2020-08-08 00:00:00', 50, 'Belum', NULL, NULL, NULL, NULL, '2020-08-08 22:04:13', '2020-08-08 15:04:13'),
(25, 0, 11, 'miha cantik', 'mihacantik@gmail.com', '09273792', 'taram', '09082020U9AEO5V0', '2020-08-09 00:00:00', 40, 'Belum', NULL, NULL, NULL, NULL, '2020-08-09 13:57:11', '2020-08-09 06:57:11'),
(26, 0, 6, 'Gusti rina', 'rina12@gmail.com', '08238444142', 'aur kuning', '09082020G5HOLVBC', '2020-08-09 00:00:00', 330, 'Belum', NULL, NULL, NULL, NULL, '2020-08-09 14:08:31', '2020-08-09 07:08:31'),
(27, 0, 2, 'Thomas Barone', 'atomcrvrsquad@gmail.com', '082286520090', 'Payakumbuh', '09082020FGMVHZEV', '2020-08-09 00:00:00', 40, 'Belum', NULL, NULL, NULL, NULL, '2020-08-09 19:05:24', '2020-08-09 12:05:24'),
(28, 0, 4, 'rosnina', 'ninaros@gmail.com', '0987654332', 'Payakumbuh', '09082020NWOYS4DC', '2020-08-09 00:00:00', 280, 'Belum', NULL, NULL, NULL, NULL, '2020-08-09 19:38:06', '2020-08-09 12:38:06'),
(29, 0, 7, 'sri wulandari', 'sriulandari925@gmail.com', '082391101804', 'aur kuning', '10082020ICJFROHQ', '2020-08-10 00:00:00', 140, 'Belum', NULL, NULL, NULL, NULL, '2020-08-10 02:38:36', '2020-08-09 19:38:36'),
(30, 0, 14, 'Rosnina', 'nina123@gmail.com', '089375294792', 'Payakumbuh', '100820208LHC71Y3', '2020-08-10 00:00:00', 120, 'Belum', NULL, NULL, NULL, NULL, '2020-08-10 09:03:34', '2020-08-10 02:03:34'),
(31, 0, 4, 'rosnina', 'ninaros@gmail.com', '0987654332', 'Payakumbuh', '10082020LW9HDTEE', '2020-08-10 00:00:00', 20, 'Belum', NULL, NULL, NULL, NULL, '2020-08-10 09:59:53', '2020-08-10 02:59:53'),
(32, 0, 15, 'muhammad iskandar', 'iskandar123@gmail.com', '082237649807', 'Mudiak', '10082020YOAJBUIS', '2020-08-10 00:00:00', 60, 'Belum', NULL, NULL, NULL, NULL, '2020-08-10 14:00:30', '2020-08-10 07:00:30'),
(33, 0, 15, 'muhammad iskandar', 'iskandar123@gmail.com', '082237649807', 'Mudiak', '10082020WF5KHVXK', '2020-08-10 00:00:00', 60, 'Belum', NULL, NULL, NULL, NULL, '2020-08-10 15:10:26', '2020-08-10 08:10:26'),
(34, 0, 18, 'sri tria siska', 'buksiska@gmail.com', '082653789876', 'payakumbuh', '11082020LPOUPWA0', '2020-08-11 00:00:00', 80, 'Belum', NULL, NULL, NULL, NULL, '2020-08-11 09:25:19', '2020-08-11 02:25:19'),
(35, 0, 18, 'sri tria siska', 'buksiska@gmail.com', '082653789876', 'payakumbuh', '11082020QD39HGOE', '2020-08-11 00:00:00', 60, 'Belum', NULL, NULL, NULL, NULL, '2020-08-11 10:33:28', '2020-08-11 03:33:28'),
(36, 0, 18, 'sri tria siska', 'buksiska@gmail.com', '082653789876', 'payakumbuh', '11082020OL3QK0NM', '2020-08-11 00:00:00', 40, 'Belum', NULL, NULL, NULL, NULL, '2020-08-11 10:40:17', '2020-08-11 03:40:17'),
(37, 0, 18, 'sri tria siska', 'buksiska@gmail.com', '082653789876', 'payakumbuh', '11082020E18JQZP0', '2020-08-11 00:00:00', 240, 'Belum', NULL, NULL, NULL, NULL, '2020-08-11 11:01:24', '2020-08-11 04:01:24'),
(38, 0, 18, 'sri tria siska', 'buksiska@gmail.com', '082653789876', 'payakumbuh', '110820203EZRWD2B', '2020-08-11 00:00:00', 240, 'Belum', NULL, NULL, NULL, NULL, '2020-08-11 11:03:42', '2020-08-11 04:03:42'),
(39, 0, 1, 'Cici', 'cicicantik@gmail.com', '0987654332', 'payakumbuh', '19082020MGBS6DW2', '2020-08-19 00:00:00', 200, 'Belum', NULL, NULL, NULL, NULL, '2020-08-19 22:00:51', '2020-08-19 15:00:51'),
(40, 0, 1, 'Cici', 'cicicantik@gmail.com', '0987654332', 'payakumbuh', '19082020MEXAUDHQ', '2020-08-19 00:00:00', 200, 'Belum', NULL, NULL, NULL, NULL, '2020-08-19 22:02:59', '2020-08-19 15:02:59'),
(41, 0, 2, 'Thomas Barone', 'atomcrvrsquad@gmail.com', '082286520090', 'Payakumbuh', '20082020DIPOLMK8', '2020-08-20 00:00:00', 140, 'Belum', NULL, NULL, NULL, NULL, '2020-08-20 05:46:15', '2020-08-19 22:46:15'),
(42, 0, 2, 'Thomas Barone', 'atomcrvrsquad@gmail.com', '082286520090', 'Payakumbuh', '20082020CQSOFP5S', '2020-08-20 00:00:00', 130, 'Belum', NULL, NULL, NULL, NULL, '2020-08-20 05:54:21', '2020-08-19 22:54:21'),
(43, 0, 2, 'Thomas Barone', 'atomcrvrsquad@gmail.com', '082286520090', 'Payakumbuh', '20082020WA5PDIGO', '2020-08-20 00:00:00', 130, 'Belum', NULL, NULL, NULL, NULL, '2020-08-20 05:55:11', '2020-08-19 22:55:11'),
(44, 0, 2, 'Thomas Barone', 'atomcrvrsquad@gmail.com', '082286520090', 'Payakumbuh', '26082020MZG3GNJK', '2020-08-26 00:00:00', 50, 'Belum', NULL, NULL, NULL, NULL, '2020-08-26 03:54:06', '2020-08-25 20:54:06'),
(45, 0, 2, 'Thomas Barone', 'atomcrvrsquad@gmail.com', '082286520090', 'Payakumbuh', '26082020JHW8A6DR', '2020-08-26 00:00:00', 30, 'Belum', NULL, NULL, NULL, NULL, '2020-08-26 04:03:05', '2020-08-25 21:03:05'),
(46, 0, 2, 'Thomas Barone', 'atomcrvrsquad@gmail.com', '082286520090', 'Payakumbuh', '26082020UUNRWQGV', '2020-08-26 00:00:00', 20, 'Belum', NULL, NULL, NULL, NULL, '2020-08-26 04:14:51', '2020-08-25 21:14:51'),
(47, 0, 4, 'rosnina', 'ninaros@gmail.com', '0987654332', 'Payakumbuh', '26082020CONTLYJZ', '2020-08-26 00:00:00', 180, 'Belum', NULL, NULL, NULL, NULL, '2020-08-26 12:07:04', '2020-08-26 05:07:04'),
(48, 0, 4, 'rosnina', 'ninaros@gmail.com', '0987654332', 'Payakumbuh', '26082020QMDA3ABV', '2020-08-26 00:00:00', 570, 'Belum', NULL, NULL, NULL, NULL, '2020-08-26 12:08:23', '2020-08-26 05:08:23'),
(49, 0, 9, 'Lilik Suhery', 'lilik123@gmail.com', '08238444142', 'payakumbuh', '26082020EVWLBPJ8', '2020-08-26 00:00:00', 600, 'Belum', NULL, NULL, NULL, NULL, '2020-08-26 12:13:15', '2020-08-26 05:13:15'),
(50, 0, 9, 'Lilik Suhery', 'lilik123@gmail.com', '08238444142', 'payakumbuh', '26082020B13OEA9H', '2020-08-26 00:00:00', 900, 'Belum', NULL, NULL, NULL, NULL, '2020-08-26 12:14:41', '2020-08-26 05:14:41'),
(51, 0, 9, 'Lilik Suhery', 'lilik123@gmail.com', '08238444142', 'payakumbuh', '27082020KLOJYQSW', '2020-08-27 00:00:00', 180, 'Belum', NULL, NULL, NULL, NULL, '2020-08-27 11:31:07', '2020-08-27 04:31:07'),
(52, 0, 9, 'Lilik Suhery', 'lilik123@gmail.com', '08238444142', 'payakumbuh', '27082020FEDULB7U', '2020-08-27 00:00:00', 270, 'Belum', NULL, NULL, NULL, NULL, '2020-08-27 11:35:17', '2020-08-27 04:35:17'),
(53, 0, 5, 'Intan', 'Intan@gmail.com', '082282847900', 'Payakumbuh', '30082020F1RN6KHJ', '2020-08-30 00:00:00', 150, 'Belum', NULL, NULL, NULL, NULL, '2020-08-30 20:04:04', '2020-08-30 13:04:04'),
(54, 0, 5, 'Intan', 'Intan@gmail.com', '082282847900', 'Payakumbuh', '30082020ER6YGDUS', '2020-08-30 00:00:00', 300, 'Belum', NULL, NULL, NULL, NULL, '2020-08-30 20:05:38', '2020-08-30 13:05:38'),
(55, 0, 2, 'Thomas Barone', 'atomcrvrsquad@gmail.com', '082286520090', 'Payakumbuh', '30082020TEQMNFIZ', '2020-08-30 00:00:00', 240, 'Belum', NULL, NULL, NULL, NULL, '2020-08-30 20:10:46', '2020-08-30 13:10:46'),
(56, 0, 5, 'Intan', 'Intan@gmail.com', '082282847900', 'Payakumbuh', '30082020SKY69HNR', '2020-08-30 00:00:00', 240, 'Belum', NULL, NULL, NULL, NULL, '2020-08-30 20:10:57', '2020-08-30 13:10:57'),
(57, 0, 2, 'Thomas Barone', 'atomcrvrsquad@gmail.com', '082286520090', 'Payakumbuh', '300820206PVQ9QLC', '2020-08-30 00:00:00', 240, 'Belum', NULL, NULL, NULL, NULL, '2020-08-30 20:12:04', '2020-08-30 13:12:04'),
(58, 0, 9, 'Lilik Suhery', 'lilik123@gmail.com', '08238444142', 'payakumbuh', '31082020VCZK9MJH', '2020-08-31 00:00:00', 300, 'Belum', NULL, NULL, NULL, NULL, '2020-08-31 09:34:33', '2020-08-31 02:34:33'),
(59, 0, 9, 'Lilik Suhery', 'lilik123@gmail.com', '08238444142', 'payakumbuh', '31082020HA1MLN9E', '2020-08-31 00:00:00', 200, 'Belum', NULL, NULL, NULL, NULL, '2020-08-31 09:37:52', '2020-08-31 02:37:52'),
(60, 0, 4, 'rosnina', 'ninaros@gmail.com', '0987654332', 'Payakumbuh', '31082020AMHBELPX', '2020-08-31 00:00:00', 30, 'Belum', NULL, NULL, NULL, NULL, '2020-08-31 13:18:38', '2020-08-31 06:18:38'),
(61, 0, 4, 'rosnina', 'ninaros@gmail.com', '0987654332', 'Payakumbuh', '02092020PUKNVHNW', '2020-09-02 00:00:00', 450000, 'Belum', NULL, NULL, NULL, NULL, '2020-09-02 11:47:06', '2020-09-02 04:47:06'),
(62, 0, 19, 'Sucialfiani', 'cici12@gmail.com', '082234987610', 'Payakumbuh', '13092020K6FBUYGL', '2020-09-13 00:00:00', 30000, 'Belum', NULL, NULL, NULL, NULL, '2020-09-13 21:36:18', '2020-09-13 14:36:18'),
(63, 0, 2, 'Thomas Barone', 'atomcrvrsquad@gmail.com', '082286520090', 'Payakumbuh', '13092020QEBRDN41', '2020-09-13 00:00:00', 30000, 'Belum', NULL, NULL, NULL, NULL, '2020-09-13 22:51:56', '2020-09-13 15:51:56');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `slug_kategori` varchar(255) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `slug_kategori`, `nama_kategori`, `urutan`, `tanggal_update`) VALUES
(1, 'coklat-bubuk', 'Coklat Bubuk', 1, '2020-07-28 16:37:49'),
(2, 'coklat-batang', 'Coklat Batang', 2, '2020-07-28 16:44:18'),
(3, 'biji-coklat', 'Biji Coklat', 3, '2020-07-28 16:44:54'),
(4, 'coklat-susu', 'Coklat Susu', 4, '2020-07-28 16:45:53');

-- --------------------------------------------------------

--
-- Table structure for table `konfigurasi`
--

CREATE TABLE `konfigurasi` (
  `id_konfigurasi` int(11) NOT NULL,
  `namaweb` varchar(255) NOT NULL,
  `tagline` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `website` varchar(255) DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `metatext` text DEFAULT NULL,
  `telepon` varchar(50) DEFAULT NULL,
  `alamat` varchar(300) DEFAULT NULL,
  `facebook` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `deskripsi` text DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `rekening_pembayaran` varchar(255) DEFAULT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `konfigurasi`
--

INSERT INTO `konfigurasi` (`id_konfigurasi`, `namaweb`, `tagline`, `email`, `website`, `keywords`, `metatext`, `telepon`, `alamat`, `facebook`, `instagram`, `deskripsi`, `logo`, `icon`, `rekening_pembayaran`, `tanggal_update`) VALUES
(1, 'Chokato ', 'Coklat bubuk & batang', 'choco@gmail.com', 'http://pykchoco.com', 'Jual Coklat bubuk dan batang', 'ok', '0823-4584-9876', 'Payakumbuh', 'http://facebook.com/pykchoco', 'https://www.instagram.com/pykchoco/', 'ok', 'download1.png', 'download.png', 'ok', '2020-08-10 03:33:36');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `status_pelanggan` varchar(20) NOT NULL,
  `nama_pelanggan` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(64) NOT NULL,
  `telepon` varchar(50) DEFAULT NULL,
  `alamat` varchar(300) DEFAULT NULL,
  `tanggal_daftar` datetime NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `id_user`, `status_pelanggan`, `nama_pelanggan`, `email`, `password`, `telepon`, `alamat`, `tanggal_daftar`, `tanggal_update`) VALUES
(1, 0, 'pending', 'Cici', 'cicicantik@gmail.com', '4a8c9c5b2b527274108c8f69b64dd87344e03785', '0987654332', 'payakumbuh', '2020-07-29 14:16:16', '2020-07-29 07:16:16'),
(2, 0, 'pending', 'Thomas Barone', 'atomcrvrsquad@gmail.com', 'e2af8e0b5d913b8bcc6f24ff604f923519ed05fe', '082286520090', 'Payakumbuh', '2020-07-29 19:31:51', '2020-07-29 12:31:51'),
(3, 0, 'pending', 'Thomas 2', 'atompubg13@gmail.com', 'e2af8e0b5d913b8bcc6f24ff604f923519ed05fe', '082286520090', 'Payakumbuh Barat', '2020-07-29 19:33:58', '2020-07-29 12:33:58'),
(4, 0, 'pending', 'rosnina', 'ninaros@gmail.com', 'b443de4b0ff48581d8743a5f5cad5321e40054c2', '0987654332', 'Payakumbuh', '2020-07-30 16:26:34', '2020-07-30 09:26:34'),
(5, 0, 'pending', 'Intan', 'Intan@gmail.com', 'e05495a2fa95d33fc38a68c852c6dca262fb5c61', '082282847900', 'Payakumbuh', '2020-07-30 16:36:05', '2020-07-30 09:36:05'),
(6, 0, 'pending', 'Gusti rina', 'rina12@gmail.com', 'b80131d607a5af7e1067100ce5bca26474d49247', '08238444142', 'aur kuning', '2020-07-31 19:32:27', '2020-07-31 12:32:27'),
(7, 0, 'pending', 'sri wulandari', 'sriulandari925@gmail.com', 'c00267b5c822420d29c57a559904adb9b476e39c', '082391101804', 'aur kuning', '2020-07-31 19:44:02', '2020-07-31 12:44:02'),
(8, 0, 'pending', 'intan permatasari', 'intann@gmail.com', 'e05495a2fa95d33fc38a68c852c6dca262fb5c61', '082391101804', 'payakumbuh', '2020-08-02 01:10:58', '2020-08-01 18:10:58'),
(9, 0, 'pending', 'Lilik Suhery', 'lilik123@gmail.com', 'bae4e56594253abc7272e188b259f5d338e67f53', '08238444142', 'payakumbuh', '2020-08-04 12:51:04', '2020-08-04 05:51:04'),
(10, 0, 'pending', 'Isron Effendi', 'isron123@gmail.com', '79b08f5ac031b2e2204869a350d55cf632dfdece', '082273625384', 'payakumbuh', '2020-08-05 12:31:45', '2020-08-05 05:31:45'),
(11, 0, 'pending', 'miha cantik', 'mihacantik@gmail.com', 'e96e7d3cb05f7c2f0c854bc13f5ea8f17d8ac115', '09273792', 'taram', '2020-08-08 03:49:16', '2020-08-07 20:49:16'),
(12, 0, 'pending', 'siska', 'siska123@gmail.com', '77105589cc7504849a2346ee4ed9276491f9bc72', '09273792', 'payakumbuh', '2020-08-08 09:47:03', '2020-08-08 02:47:03'),
(13, 0, 'pending', 'Sri wulandari', 'Wulan123@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', '082234987610', 'Payakumbuh', '2020-08-10 02:59:20', '2020-08-09 19:59:20'),
(14, 0, 'pending', 'Rosnina', 'nina123@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', '089375294792', 'Payakumbuh', '2020-08-10 08:28:38', '2020-08-10 01:28:38'),
(15, 0, 'pending', 'muhammad iskandar', 'iskandar123@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', '082237649807', 'Mudiak', '2020-08-10 13:52:09', '2020-08-10 06:52:09'),
(16, 0, 'pending', 'Siska', 'siskasttp@gmail.com', '77105589cc7504849a2346ee4ed9276491f9bc72', '082384637070', 'Padang karambia', '2020-08-10 15:58:53', '2020-08-10 08:58:53'),
(17, 0, 'pending', 'Randy', 'randy@gmail.com', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', '0844683', 'Padang', '2020-08-10 22:03:26', '2020-08-10 15:03:26'),
(18, 0, 'pending', 'sri tria siska', 'buksiska@gmail.com', '8cb2237d0679ca88db6464eac60da96345513964', '082653789876', 'payakumbuh', '2020-08-11 06:53:05', '2020-08-10 23:53:05'),
(19, 0, 'pending', 'Sucialfiani', 'cici12@gmail.com', '55dceb0e1aa53ecdf0bf73306c883ce3de1c6e07', '082234987610', 'Payakumbuh', '2020-09-13 21:34:31', '2020-09-13 14:34:31');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `kode_produk` varchar(20) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `slug_produk` varchar(255) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `keywords` text DEFAULT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) DEFAULT NULL,
  `gambar` varchar(255) NOT NULL,
  `berat` float DEFAULT NULL,
  `ukuran` varchar(255) DEFAULT NULL,
  `status_produk` varchar(20) NOT NULL DEFAULT 'Publish',
  `tanggal_post` datetime NOT NULL,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_user`, `id_kategori`, `kode_produk`, `nama_produk`, `slug_produk`, `keterangan`, `keywords`, `harga`, `stok`, `gambar`, `berat`, `ukuran`, `status_produk`, `tanggal_post`, `tanggal_update`) VALUES
(1, 7, 1, '1125', '3 in 1 250g', '3-in-1-250g_1125', NULL, '', 30000, 5, '29b60718-ad3d-4fa3-9734-a70967f4eea0aaaaaaaaaa1.jpg', 2, 'Kecil', 'Publish', '2020-07-28 23:38:49', '2020-09-02 05:05:45'),
(2, 7, 1, '1224', 'Coklat Bubuk Murni 100g', 'coklat-bubuk-murni-100g_1224', NULL, '', 30000, 7, 'addee996-a0a0-4f29-ab69-97fa738964a61.jpg', 2, 'Kecil', 'Publish', '2020-07-28 23:54:15', '2020-09-02 05:05:29'),
(3, 7, 2, '123', 'Coklat Batang', 'coklat-batang_123', NULL, '', 20000, 10, '0a296ed6-321f-4ab6-bd4c-3e50b6861075_(1).jpg', 1, 'Kecil', 'Publish', '2020-07-29 10:27:13', '2020-09-02 05:05:02'),
(4, 7, 2, '1130', 'Dark Coklat 60g', 'dark-coklat-60g_1130', NULL, '', 20000, 7, '1e20c55e-4f68-4d30-a57d-aed52cfc55bc_(1).jpg', 5, 'Kecil', 'Publish', '2020-08-04 21:44:21', '2020-09-02 05:04:44'),
(5, 7, 2, '1131', 'White coklat 100g', 'white-coklat-100g_1131', NULL, '', 30000, 5, '883332cd-1a09-425c-9cb1-4d531e25ed99_(1).jpg', 1, 'Kecil', 'Publish', '2020-08-04 21:46:06', '2020-09-13 15:51:56'),
(6, 7, 3, '5', '3 in 1 250g', '3-in-1-250g_5', NULL, '', 20000, 0, '883332cd-1a09-425c-9cb1-4d531e25ed99.jpg', 5, 'Kecil', 'Publish', '2020-08-08 09:41:45', '2020-09-02 05:04:09'),
(7, 7, 1, 'ckt2121', 'Coklat Bubuk Murni 100g', 'coklat-bubuk-murni-100g_ckt2121', NULL, '', 30000, 0, '29b60718-ad3d-4fa3-9734-a70967f4eea0aaaaaaaaaa2.jpg', 5, 'Kecil', 'Publish', '2020-08-09 19:24:39', '2020-09-02 05:03:53'),
(9, 7, 3, '3', 'Kakao nib', 'kakao-nib_3', NULL, NULL, 30000, 0, 'kakao_nib_utuh.jpg', 1, 'Kecil', 'Publish', '2020-08-11 10:48:07', '2020-09-02 05:03:34'),
(10, 7, 1, '1', 'Masker Coklat', 'masker-coklat_1', NULL, NULL, 50000, 0, 'masker_coklat.jpeg', 5, 'Menengah', 'Publish', '2020-09-02 11:45:07', '2020-09-02 04:47:06');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transakasi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `kode_transaksi` varchar(255) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `tanggal_transaksi` datetime NOT NULL,
  `tanggal_verify` datetime DEFAULT NULL,
  `status_transaksi` int(11) NOT NULL DEFAULT 0,
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transakasi`, `id_user`, `id_pelanggan`, `kode_transaksi`, `id_produk`, `harga`, `jumlah`, `total_harga`, `tanggal_transaksi`, `tanggal_verify`, `status_transaksi`, `tanggal_update`) VALUES
(1, 0, 2, '29072020BDWNF3M4', 3, 20, 5, 100, '2020-07-29 00:00:00', NULL, 1, '2020-08-07 14:56:27'),
(2, 0, 2, '29072020BDWNF3M4', 2, 30, 1, 30, '2020-07-29 00:00:00', NULL, 1, '2020-08-07 14:56:27'),
(3, 0, 5, '02082020EQ3CM1VZ', 1, 30, 6, 180, '2020-08-02 00:00:00', NULL, 2, '2020-08-30 13:01:06'),
(4, 0, 5, '02082020EQ3CM1VZ', 3, 20, 1, 20, '2020-08-02 00:00:00', NULL, 2, '2020-08-30 13:01:06'),
(5, 0, 5, '02082020SU76NYXE', 2, 30, 1, 30, '2020-08-02 00:00:00', NULL, 1, '2020-08-07 14:56:13'),
(6, 0, 8, '020820208ZOYOUT0', 2, 30, 6, 30, '2020-08-02 00:00:00', NULL, 1, '2020-08-07 14:54:42'),
(7, 0, 4, '03082020NMYPCSP0', 1, 30, 1, 30, '2020-08-03 00:00:00', NULL, 2, '2020-09-02 05:08:49'),
(8, 0, 9, '04082020KPIMSQSX', 2, 30, 1, 30, '2020-08-04 00:00:00', NULL, 1, '2020-08-07 14:56:20'),
(9, 0, 1, '07082020MYTH7EKF', 5, 30, 1, 30, '2020-08-07 00:00:00', NULL, 1, '2020-08-07 14:56:23'),
(10, 0, 1, '07082020MYTH7EKF', 4, 20, 1, 20, '2020-08-07 00:00:00', NULL, 1, '2020-08-07 14:56:23'),
(11, 0, 2, '08082020AGKY8ELV', 4, 20, 3, 60, '2020-08-08 00:00:00', NULL, 2, '2020-08-09 11:57:58'),
(12, 0, 2, '08082020TDSLGEI2', 4, 20, 1, 20, '2020-08-08 00:00:00', NULL, 1, '2020-08-11 02:35:20'),
(13, 0, 9, '08082020S4LVNMRP', 2, 30, 1, 30, '2020-08-08 00:00:00', NULL, 1, '2020-08-09 07:16:47'),
(14, 0, 12, '08082020DHQJHECT', 6, 20, 12, 240, '2020-08-08 00:00:00', NULL, 1, '2020-08-11 02:34:31'),
(15, 0, 2, '08082020DLLYGYV0', 5, 30, 1, 30, '2020-08-08 00:00:00', NULL, 1, '2020-08-11 02:34:55'),
(16, 0, 2, '08082020DLLYGYV0', 3, 20, 1, 20, '2020-08-08 00:00:00', NULL, 1, '2020-08-11 02:34:55'),
(17, 0, 2, '08082020DLLYGYV0', 6, 20, 4, 80, '2020-08-08 00:00:00', NULL, 1, '2020-08-11 02:34:55'),
(18, 0, 2, '08082020B1O4DBDG', 6, 20, 1, 20, '2020-08-08 00:00:00', NULL, 1, '2020-08-09 12:07:43'),
(19, 0, 2, '08082020B1O4DBDG', 5, 30, 1, 30, '2020-08-08 00:00:00', NULL, 1, '2020-08-09 12:07:43'),
(20, 0, 2, '08082020CKUXXCUP', 6, 20, 1, 20, '2020-08-08 00:00:00', NULL, 1, '2020-08-11 02:34:45'),
(21, 0, 2, '08082020CKUXXCUP', 5, 30, 1, 30, '2020-08-08 00:00:00', NULL, 1, '2020-08-11 02:34:45'),
(22, 0, 2, '08082020GMFJTIDB', 6, 20, 1, 20, '2020-08-08 00:00:00', NULL, 1, '2020-08-11 02:35:13'),
(23, 0, 2, '08082020GMFJTIDB', 5, 30, 1, 30, '2020-08-08 00:00:00', NULL, 1, '2020-08-11 02:35:13'),
(24, 0, 2, '08082020GMFJTIDB', 3, 20, 1, 20, '2020-08-08 00:00:00', NULL, 1, '2020-08-11 02:35:13'),
(25, 0, 2, '08082020GJVLCYKU', 5, 30, 1, 30, '2020-08-08 00:00:00', NULL, 1, '2020-08-11 02:35:02'),
(26, 0, 2, '08082020GJVLCYKU', 3, 20, 1, 20, '2020-08-08 00:00:00', NULL, 1, '2020-08-11 02:35:02'),
(27, 0, 11, '09082020U9AEO5V0', 4, 20, 2, 40, '2020-08-09 00:00:00', NULL, 1, '2020-08-30 13:27:47'),
(28, 0, 6, '09082020G5HOLVBC', 5, 30, 11, 330, '2020-08-09 00:00:00', NULL, 1, '2020-08-30 13:26:37'),
(29, 0, 2, '09082020FGMVHZEV', 4, 20, 1, 20, '2020-08-09 00:00:00', NULL, 1, '2020-08-30 13:26:04'),
(30, 0, 2, '09082020FGMVHZEV', 3, 20, 1, 20, '2020-08-09 00:00:00', NULL, 1, '2020-08-30 13:26:04'),
(31, 0, 4, '09082020NWOYS4DC', 3, 20, 14, 280, '2020-08-09 00:00:00', NULL, 2, '2020-09-02 05:08:34'),
(32, 0, 7, '10082020ICJFROHQ', 4, 20, 7, 140, '2020-08-10 00:00:00', NULL, 1, '2020-08-30 13:25:39'),
(33, 0, 14, '100820208LHC71Y3', 4, 20, 6, 120, '2020-08-10 00:00:00', NULL, 1, '2020-08-30 13:25:20'),
(34, 0, 4, '10082020LW9HDTEE', 4, 20, 1, 20, '2020-08-10 00:00:00', NULL, 2, '2020-09-02 05:08:23'),
(35, 0, 15, '10082020YOAJBUIS', 5, 30, 2, 60, '2020-08-10 00:00:00', NULL, 1, '2020-08-30 13:24:38'),
(36, 0, 15, '10082020WF5KHVXK', 7, 30, 2, 60, '2020-08-10 00:00:00', NULL, 1, '2020-08-11 02:35:38'),
(37, 0, 18, '11082020LPOUPWA0', 3, 20, 4, 80, '2020-08-11 00:00:00', NULL, 2, '2020-08-11 02:37:44'),
(38, 0, 18, '11082020QD39HGOE', 6, 20, 2, 40, '2020-08-11 00:00:00', NULL, 2, '2020-08-11 03:57:41'),
(39, 0, 18, '11082020QD39HGOE', 3, 20, 1, 20, '2020-08-11 00:00:00', NULL, 2, '2020-08-11 03:57:41'),
(40, 0, 18, '11082020OL3QK0NM', 6, 20, 1, 20, '2020-08-11 00:00:00', NULL, 1, '2020-08-30 13:24:11'),
(41, 0, 18, '11082020OL3QK0NM', 3, 20, 1, 20, '2020-08-11 00:00:00', NULL, 1, '2020-08-30 13:24:11'),
(42, 0, 18, '11082020E18JQZP0', 9, 30, 8, 240, '2020-08-11 00:00:00', NULL, 1, '2020-08-11 04:02:25'),
(43, 0, 18, '110820203EZRWD2B', 9, 30, 8, 240, '2020-08-11 00:00:00', NULL, 1, '2020-08-11 04:04:06'),
(44, 0, 1, '19082020MGBS6DW2', 6, 20, 10, 200, '2020-08-19 00:00:00', NULL, 1, '2020-08-30 13:28:52'),
(45, 0, 1, '19082020MEXAUDHQ', 6, 20, 10, 200, '2020-08-19 00:00:00', NULL, 1, '2020-08-30 13:27:25'),
(46, 0, 2, '20082020DIPOLMK8', 8, 20, 7, 140, '2020-08-20 00:00:00', NULL, 1, '2020-08-30 13:27:10'),
(47, 0, 2, '20082020CQSOFP5S', 8, 20, 2, 40, '2020-08-20 00:00:00', NULL, 1, '2020-08-30 13:23:53'),
(48, 0, 2, '20082020WA5PDIGO', 8, 20, 2, 40, '2020-08-20 00:00:00', NULL, 1, '2020-08-30 13:23:35'),
(49, 0, 2, '20082020WA5PDIGO', 7, 30, 3, 90, '2020-08-20 00:00:00', NULL, 1, '2020-08-30 13:23:35'),
(50, 0, 2, '26082020MZG3GNJK', 9, 30, 1, 30, '2020-08-26 00:00:00', NULL, 1, '2020-08-30 13:22:54'),
(51, 0, 2, '26082020MZG3GNJK', 8, 20, 1, 20, '2020-08-26 00:00:00', NULL, 1, '2020-08-30 13:22:54'),
(52, 0, 2, '26082020JHW8A6DR', 9, 30, 1, 30, '2020-08-26 00:00:00', NULL, 1, '2020-08-30 13:22:40'),
(53, 0, 2, '26082020UUNRWQGV', 8, 20, 1, 20, '2020-08-26 00:00:00', NULL, 1, '2020-08-30 13:21:53'),
(54, 0, 4, '26082020CONTLYJZ', 9, 30, 6, 180, '2020-08-26 00:00:00', NULL, 2, '2020-09-02 05:08:12'),
(55, 0, 4, '26082020QMDA3ABV', 9, 30, 19, 570, '2020-08-26 00:00:00', NULL, 2, '2020-09-02 05:07:57'),
(56, 0, 9, '26082020EVWLBPJ8', 9, 30, 20, 600, '2020-08-26 00:00:00', NULL, 1, '2020-08-30 13:22:04'),
(57, 0, 9, '26082020B13OEA9H', 9, 30, 30, 900, '2020-08-26 00:00:00', NULL, 1, '2020-08-30 13:21:32'),
(58, 0, 9, '27082020KLOJYQSW', 9, 30, 6, 180, '2020-08-27 00:00:00', NULL, 2, '2020-08-31 02:31:15'),
(59, 0, 9, '27082020FEDULB7U', 9, 30, 9, 270, '2020-08-27 00:00:00', NULL, 2, '2020-08-31 02:31:04'),
(60, 0, 5, '30082020F1RN6KHJ', 7, 30, 5, 150, '2020-08-30 00:00:00', NULL, 1, '2020-08-30 13:29:27'),
(61, 0, 5, '30082020ER6YGDUS', 7, 30, 10, 300, '2020-08-30 00:00:00', NULL, 0, '2020-08-30 13:05:38'),
(62, 0, 2, '30082020TEQMNFIZ', 9, 30, 8, 240, '2020-08-30 00:00:00', NULL, 0, '2020-08-30 13:10:46'),
(63, 0, 5, '30082020SKY69HNR', 9, 30, 8, 240, '2020-08-30 00:00:00', NULL, 0, '2020-08-30 13:10:57'),
(64, 0, 2, '300820206PVQ9QLC', 9, 30, 8, 240, '2020-08-30 00:00:00', NULL, 0, '2020-08-30 13:12:04'),
(65, 0, 9, '31082020VCZK9MJH', 7, 30, 10, 300, '2020-08-31 00:00:00', NULL, 0, '2020-08-31 02:34:33'),
(66, 0, 9, '31082020HA1MLN9E', 6, 20, 10, 200, '2020-08-31 00:00:00', '2020-09-02 00:00:00', 0, '2020-09-13 16:46:39'),
(67, 0, 4, '31082020AMHBELPX', 5, 30, 1, 30, '2020-08-31 00:00:00', '2020-09-02 00:00:00', 2, '2020-09-13 16:46:06'),
(68, 0, 4, '02092020PUKNVHNW', 10, 50000, 9, 450000, '2020-09-02 00:00:00', '2020-09-04 00:00:00', 2, '2020-09-13 16:45:55'),
(69, 0, 19, '13092020K6FBUYGL', 5, 30000, 1, 30000, '2020-09-13 00:00:00', '2020-09-15 00:00:00', 1, '2020-09-20 04:46:01'),
(70, 0, 2, '13092020QEBRDN41', 5, 30000, 1, 30000, '2020-09-13 00:00:00', '2020-09-12 00:00:00', 2, '2020-09-13 16:54:15');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi_kasir`
--

CREATE TABLE `transaksi_kasir` (
  `id_transaksi_kasir` int(11) NOT NULL,
  `kode_produk` varchar(255) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `harga` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL,
  `bayar` int(11) NOT NULL,
  `kembalian` int(11) NOT NULL,
  `tanggal_transaksi` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Triggers `transaksi_kasir`
--
DELIMITER $$
CREATE TRIGGER `penjualan` AFTER INSERT ON `transaksi_kasir` FOR EACH ROW BEGIN
UPDATE produk set stok = stok - NEW.qty WHERE kode_produk = NEW.kode_produk;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `akses_level` varchar(20) NOT NULL DEFAULT 'User',
  `tanggal_update` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama`, `email`, `username`, `password`, `akses_level`, `tanggal_update`) VALUES
(7, 'admin', 'admin@gmail.com', 'admin1', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Admin', '2019-01-28 20:55:47'),
(8, 'Wulan', 'wulan@gmail.com', 'Wulan1', '8cb2237d0679ca88db6464eac60da96345513964', 'Admin', '2020-07-28 03:31:45'),
(9, 'ninaros@gmail.com', 'ninaros@gmail.com', 'rosnina', '8cb2237d0679ca88db6464eac60da96345513964', 'Admin', '2020-08-10 02:38:38'),
(10, 'dwsk', 'dwsk@gmail.com', 'dwsk0506', '886f1088fd2920e9200d17f827a2a8a32b859242', 'Admin', '2021-07-14 09:25:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `gambar`
--
ALTER TABLE `gambar`
  ADD PRIMARY KEY (`id_gambar`);

--
-- Indexes for table `header_transaksi`
--
ALTER TABLE `header_transaksi`
  ADD PRIMARY KEY (`id_header_transakasi`),
  ADD UNIQUE KEY `kode_transaksi` (`kode_transaksi`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  ADD PRIMARY KEY (`id_konfigurasi`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD UNIQUE KEY `kode_produk` (`kode_produk`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transakasi`);

--
-- Indexes for table `transaksi_kasir`
--
ALTER TABLE `transaksi_kasir`
  ADD PRIMARY KEY (`id_transaksi_kasir`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `gambar`
--
ALTER TABLE `gambar`
  MODIFY `id_gambar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `header_transaksi`
--
ALTER TABLE `header_transaksi`
  MODIFY `id_header_transakasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  MODIFY `id_konfigurasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id_transakasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;

--
-- AUTO_INCREMENT for table `transaksi_kasir`
--
ALTER TABLE `transaksi_kasir`
  MODIFY `id_transaksi_kasir` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Database: `db_toko`
--
CREATE DATABASE IF NOT EXISTS `db_toko` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_toko`;

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `nama_barang` text NOT NULL,
  `merk` varchar(255) NOT NULL,
  `harga_beli` varchar(255) NOT NULL,
  `harga_jual` varchar(255) NOT NULL,
  `satuan_barang` varchar(255) NOT NULL,
  `stok` text NOT NULL,
  `tgl_input` varchar(255) NOT NULL,
  `tgl_update` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `id_barang`, `id_kategori`, `nama_barang`, `merk`, `harga_beli`, `harga_jual`, `satuan_barang`, `stok`, `tgl_input`, `tgl_update`) VALUES
(1, 'BR001', 1, 'Pensil', 'Fabel Castel', '1500', '3000', 'PCS', '101', '6 October 2020, 0:41', NULL),
(2, 'BR002', 5, 'Sabun', 'Lifeboy', '1800', '3000', 'PCS', '38', '6 October 2020, 0:41', '6 October 2020, 0:54'),
(3, 'BR003', 1, 'Pulpen', 'Standard', '1500', '2000', 'PCS', '68', '6 October 2020, 1:34', NULL),
(4, 'BR004', 7, 'Sprite', 'Sana', '10000', '12000', 'PCS', '9', '15 July 2021, 22:05', '15 July 2021, 22:06'),
(5, 'BR005', 8, 'kaus', 'gucci', '11000000', '11500000', 'PCS', '10', '16 July 2021, 17:43', '28 June 2024, 10:56'),
(6, 'BR006', 9, 'Mouse', 'Logitech', '50000', '100000', 'PCS', '100', '16 July 2021, 17:45', NULL),
(7, 'BR007', 8, 'kaos ', 'louis vitton', '50000000', '51000000', 'PCS', '5', '16 July 2021, 17:47', '28 June 2024, 10:55'),
(8, 'BR008', 10, 'HDD Acer 1000GB', 'ACER', '300000', '350000', 'PCS', '12', '16 July 2021, 17:48', NULL),
(9, 'BR009', 10, 'SSD VGEN 512GB', 'VGEN', '500000', '650000', 'PCS', '10', '16 July 2021, 17:49', NULL),
(10, 'BR010', 8, 'kaos ', 'country fiesta', '4600000', '5000000', 'PCS', '10', '16 July 2021, 17:50', '28 June 2024, 10:55'),
(11, 'BR011', 11, 'jeans', '505', '600000', '650001', 'PCS', '18', '16 July 2021, 17:52', '28 June 2024, 10:54'),
(12, 'BR012', 11, 'jeans pendek', '505', '300000', '400000', 'PCS', '16', '16 July 2021, 17:53', '28 June 2024, 10:55'),
(15, 'BR013', 12, 'FD', 'VGEN', '20000', '25000', 'PCS', '7', '17 July 2011, 6:44', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `tgl_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `tgl_input`) VALUES
(8, 'Baju', '16 July 2021, 17:40'),
(11, 'Celana', '16 July 2021, 17:52');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id_login` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` char(32) NOT NULL,
  `id_member` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id_login`, `user`, `pass`, `id_member`) VALUES
(1, 'admin', '54e01e472d48c05316df50aee0dcc027', 1);

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(11) NOT NULL,
  `nm_member` varchar(255) NOT NULL,
  `alamat_member` text NOT NULL,
  `telepon` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `gambar` text NOT NULL,
  `NIK` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`id_member`, `nm_member`, `alamat_member`, `telepon`, `email`, `gambar`, `NIK`) VALUES
(1, 'dendi Frantika', 'situjuah tungka', '082268757722', 'dendhi83@gmail.com', 'dendi.jpeg', '211013004');

-- --------------------------------------------------------

--
-- Table structure for table `nota`
--

CREATE TABLE `nota` (
  `id_nota` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL,
  `periode` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `nota`
--

INSERT INTO `nota` (`id_nota`, `id_barang`, `id_member`, `jumlah`, `total`, `tanggal_input`, `periode`) VALUES
(1, 'BR001', 1, '4', '12000', '6 October 2020, 0:45', '10-2020'),
(2, 'BR001', 1, '4', '12000', '6 October 2020, 0:45', '10-2020'),
(3, 'BR001', 1, '4', '12000', '6 October 2020, 0:45', '10-2020'),
(4, 'BR001', 1, '4', '12000', '6 October 2020, 0:45', '10-2020'),
(5, 'BR001', 1, '2', '6000', '6 October 2020, 0:49', '10-2020'),
(6, 'BR001', 1, '2', '6000', '6 October 2020, 0:49', '10-2020'),
(7, 'BR001', 1, '2', '6000', '6 October 2020, 1:15', '10-2020'),
(8, 'BR002', 1, '2', '6000', '6 October 2020, 1:17', '10-2020'),
(9, 'BR001', 1, '2', '6000', '6 October 2020, 1:20', '10-2020'),
(10, 'BR001', 1, '2', '6000', '6 October 2020, 1:51', '07-2021'),
(11, 'BR003', 1, '1', '2000', '14 July 2021, 18:13', '07-2021'),
(12, 'BR003', 1, '1', '2000', '14 July 2021, 23:42', '07-2021'),
(13, 'BR004', 1, '1', '12000', '15 July 2021, 22:07', '07-2021'),
(14, 'BR004', 1, '2', '24000', '15 July 2021, 22:07', '07-2021'),
(15, 'BR012', 1, '1', '400000', '16 July 2021, 17:54', '07-2021'),
(16, 'BR011', 1, '1', '650001', '16 July 2021, 17:54', '07-2021'),
(17, 'BR011', 1, '1', '650001', '16 July 2021, 18:17', '07-2021'),
(18, 'BR010', 1, '1', '5000000', '16 July 2021, 18:17', '07-2021'),
(19, 'BR012', 1, '2', '800000', '17 July 2011, 6:46', '07-2011'),
(20, 'BR010', 1, '1', '5000000', '17 July 2011, 6:46', '07-2011'),
(21, 'BR012', 1, '1', '400000', '20 November 2021, 21:29', '11-2021'),
(22, 'BR012', 1, '1', '400000', '20 November 2021, 21:50', '11-2021'),
(23, 'BR012', 1, '1', '400000', '20 November 2021, 21:50', '06-2024'),
(24, 'BR012', 1, '1', '400000', '20 November 2021, 21:50', '06-2024'),
(25, 'BR012', 1, '1', '400000', '20 November 2021, 21:50', '01-2025');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(11) NOT NULL,
  `id_barang` varchar(255) NOT NULL,
  `id_member` int(11) NOT NULL,
  `jumlah` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `tanggal_input` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_barang`, `id_member`, `jumlah`, `total`, `tanggal_input`) VALUES
(38, 'BR012', 1, '1', '400000', '20 November 2021, 21:50');

-- --------------------------------------------------------

--
-- Table structure for table `toko`
--

CREATE TABLE `toko` (
  `id_toko` int(11) NOT NULL,
  `nama_toko` varchar(255) NOT NULL,
  `alamat_toko` text NOT NULL,
  `tlp` varchar(255) NOT NULL,
  `nama_pemilik` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `toko`
--

INSERT INTO `toko` (`id_toko`, `nama_toko`, `alamat_toko`, `tlp`, `nama_pemilik`) VALUES
(1, 'Lathif Wear', 'situjuah tungka', '-', 'dendi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id_login`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`);

--
-- Indexes for table `nota`
--
ALTER TABLE `nota`
  ADD PRIMARY KEY (`id_nota`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `toko`
--
ALTER TABLE `toko`
  ADD PRIMARY KEY (`id_toko`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id_login` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `nota`
--
ALTER TABLE `nota`
  MODIFY `id_nota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `toko`
--
ALTER TABLE `toko`
  MODIFY `id_toko` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `db_websekolah`
--
CREATE DATABASE IF NOT EXISTS `db_websekolah` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `db_websekolah`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_agenda`
--

CREATE TABLE `tbl_agenda` (
  `agenda_id` int(11) NOT NULL,
  `agenda_nama` varchar(200) DEFAULT NULL,
  `agenda_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `agenda_deskripsi` text DEFAULT NULL,
  `agenda_mulai` date DEFAULT NULL,
  `agenda_selesai` date DEFAULT NULL,
  `agenda_tempat` varchar(90) DEFAULT NULL,
  `agenda_waktu` varchar(30) DEFAULT NULL,
  `agenda_keterangan` varchar(200) DEFAULT NULL,
  `agenda_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_agenda`
--

INSERT INTO `tbl_agenda` (`agenda_id`, `agenda_nama`, `agenda_tanggal`, `agenda_deskripsi`, `agenda_mulai`, `agenda_selesai`, `agenda_tempat`, `agenda_waktu`, `agenda_keterangan`, `agenda_author`) VALUES
(1, 'Penyembelihan Hewan Kurban Idul Adha 2017', '2017-01-22 06:18:01', 'Idul Adha yang biasa disebut lebaran haji atapun lebaran kurban sangat identik dengan penyembelihan hewan kurban. M-Sekolah tahun ini juga melakukan penyembelihan hewan kurban. Yang rencananya akan dihadiri oleh guru-guru, siswa dan pengurus OSIS.', '2017-01-22', '2017-01-22', 'M-Sekolah', '08.00 - 11.00 WIB', 'Dihadiri oleh guru-guru, siswa dan pengurus OSIS', 'M Fikri Setiadi'),
(2, 'Peluncuran Website Resmi M-Sekolah', '2017-01-22 06:26:33', 'Peluncuran website resmi  M-Sekolah, sebagai media informasi dan akademik online untuk pelayanan pendidikan yang lebih baik kepada siswa, orangtua, dan masyarakat pada umumnya semakin meningkat.', '2017-01-04', '2017-01-04', 'M-Sekolah', '07.30 - 12.00 WIB', '-', 'M Fikri Setiadi'),
(3, 'Penerimaan Raport Semester Ganjil Tahun Ajaran 2017-2018', '2017-01-22 06:29:49', 'Berakhirnya semester ganjil tahun pelajaran 2016-2017, ditandai dengan pembagian laporan hasil belajar.', '2017-02-17', '2017-02-17', 'M-Sekolah', '07.30 - 12.00 WIB', 'Untuk kelas XI dan XII, pembagian raport dimulai pukul 07.30 WIB. Sedangkan untuk kelas X pada pukul 09.00 WIB. Raport diambil oleh orang tua/wali murid masing-masing.', 'M Fikri Setiadi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_album`
--

CREATE TABLE `tbl_album` (
  `album_id` int(11) NOT NULL,
  `album_nama` varchar(50) DEFAULT NULL,
  `album_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `album_pengguna_id` int(11) DEFAULT NULL,
  `album_author` varchar(60) DEFAULT NULL,
  `album_count` int(11) DEFAULT 0,
  `album_cover` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_album`
--

INSERT INTO `tbl_album` (`album_id`, `album_nama`, `album_tanggal`, `album_pengguna_id`, `album_author`, `album_count`, `album_cover`) VALUES
(1, 'Kedatangan Tamu Asing', '2016-09-08 13:00:55', 1, 'M Fikri Setiadi', 5, '202aa754590dfc1070c624bad294abbc.jpg'),
(3, 'Pemilu Osis 2016-2017', '2017-01-21 01:58:16', 1, 'M Fikri Setiadi', 3, 'dc088a9fb62333012ff7a601828219d7.jpg'),
(4, 'Kegiatan Belajar Siswa', '2017-01-24 01:31:13', 1, 'M Fikri Setiadi', 7, '203bc0411a07ed0430d39bcc38ec2c56.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_files`
--

CREATE TABLE `tbl_files` (
  `file_id` int(11) NOT NULL,
  `file_judul` varchar(120) DEFAULT NULL,
  `file_deskripsi` text DEFAULT NULL,
  `file_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `file_oleh` varchar(60) DEFAULT NULL,
  `file_download` int(11) DEFAULT 0,
  `file_data` varchar(120) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_files`
--

INSERT INTO `tbl_files` (`file_id`, `file_judul`, `file_deskripsi`, `file_tanggal`, `file_oleh`, `file_download`, `file_data`) VALUES
(2, 'Dasar-dasar CSS', 'Modul dasar-dasar CSS 3. Modul ini membantu anda untuk memahami struktur dasar CSS', '2017-01-23 04:30:01', 'Drs. Joko', 0, 'ab9a183ff240deadbedaff78e639af2f.pdf'),
(3, '14 Teknik Komunikasi Yang Paling Efektif', 'Ebook 14 teknik komunikasi paling efektif membantu anda untuk berkomunikasi dengan baik dan benar', '2017-01-23 15:26:06', 'Drs. Joko', 0, 'ab2cb34682bd94f30f2347523112ffb9.pdf'),
(4, 'Bagaimana Membentuk Pola Pikir yang Baru', 'Ebook ini membantu anda membentuk pola pikir baru.', '2017-01-23 15:27:07', 'Drs. Joko', 0, '30f588eb5c55324f8d18213f11651855.pdf'),
(5, '7 Tips Penting mengatasi Kritik', '7 Tips Penting mengatasi Kritik', '2017-01-23 15:27:44', 'Drs. Joko', 0, '329a62b25ad475a148e1546aa3db41de.docx'),
(6, '8 Racun dalam kehidupan kita', '8 Racun dalam kehidupan kita', '2017-01-23 15:28:17', 'Drs. Joko', 0, '8e38ad4948ba13758683dea443fbe6be.docx'),
(7, 'Jurnal Teknolgi Informasi', 'Jurnal Teknolgi Informasi', '2017-01-25 03:18:53', 'Gunawan, S.Pd', 0, '87ae0f009714ddfdd79e2977b2a64632.pdf'),
(8, 'Jurnal Teknolgi Informasi 2', 'Jurnal Teknolgi Informasi', '2017-01-25 03:19:22', 'Gunawan, S.Pd', 0, 'c4e966ba2c6e142155082854dc5b3602.pdf'),
(9, 'Naskah Publikasi IT', 'Naskah Teknolgi Informasi', '2017-01-25 03:21:04', 'Gunawan, S.Pd', 0, '71380b3cf16a17a02382098c028ece9c.pdf'),
(10, 'Modul Teknologi Informasi', 'Modul Teknologi Informasi', '2017-01-25 03:22:08', 'Gunawan, S.Pd', 0, '029143a3980232ab2900d94df36dbb0c.pdf'),
(11, 'Modul Teknologi Informasi Part II', 'Modul Teknologi Informasi', '2017-01-25 03:22:54', 'Gunawan, S.Pd', 0, 'ea8f3f732576083156e509657614f551.pdf'),
(12, 'Modul Teknologi Informasi Part III', 'Modul Teknologi Informasi', '2017-01-25 03:23:21', 'Gunawan, S.Pd', 0, 'c5e5e7d16e4cd6c3d22c11f64b0db2af.pdf');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_galeri`
--

CREATE TABLE `tbl_galeri` (
  `galeri_id` int(11) NOT NULL,
  `galeri_judul` varchar(60) DEFAULT NULL,
  `galeri_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `galeri_gambar` varchar(40) DEFAULT NULL,
  `galeri_album_id` int(11) DEFAULT NULL,
  `galeri_pengguna_id` int(11) DEFAULT NULL,
  `galeri_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_galeri`
--

INSERT INTO `tbl_galeri` (`galeri_id`, `galeri_judul`, `galeri_tanggal`, `galeri_gambar`, `galeri_album_id`, `galeri_pengguna_id`, `galeri_author`) VALUES
(4, 'Diskusi Pemilihan Ketua Osis', '2017-01-21 14:04:53', '9b10fa300633f62f105e9b52789fc8f3.jpg', 3, 1, 'M Fikri Setiadi'),
(5, 'Panitia Pemilu Osis', '2017-01-22 04:13:20', '0ec0c2f9aae6501d7ed7930995d48b57.jpg', 3, 1, 'M Fikri Setiadi'),
(6, 'Proses Pemilu Osis', '2017-01-22 04:13:43', 'bfbe6cc1c8096f5f36c68e93da53c248.jpg', 3, 1, 'M Fikri Setiadi'),
(7, 'Belajar dengan native speaker', '2017-01-24 01:26:22', '831e5ad43ccc3c851d50c128ff095541.jpg', 1, 1, 'M Fikri Setiadi'),
(8, 'Diskusi dengan native speaker', '2017-01-24 01:27:05', '84afbf1d3ad45932f1d7ac47b8a00949.jpg', 1, 1, 'M Fikri Setiadi'),
(9, 'Foto bareng native speaker', '2017-01-24 01:27:28', 'a99ab060d5d5bf8c96f24fe385f7dd8b.jpg', 1, 1, 'M Fikri Setiadi'),
(10, 'Foto bareng native speaker', '2017-01-24 01:28:40', 'd70cedba6391b7b3c74b914efd82953f.jpg', 1, 1, 'M Fikri Setiadi'),
(11, 'Foto bareng native speaker', '2017-01-24 01:28:54', '10de99f425b9961ce1e87c5e5575f8f4.jpg', 1, 1, 'M Fikri Setiadi'),
(12, 'Belajar sambil bermain', '2017-01-24 01:31:42', '9df82241493b94d1e06b461129cf57b2.jpg', 4, 1, 'M Fikri Setiadi'),
(13, 'Belajar sambil bermain', '2017-01-24 01:31:55', '5374415f11683ad6dd31572a7bbf8a7b.jpg', 4, 1, 'M Fikri Setiadi'),
(14, 'Belajar komputer programming', '2017-01-24 01:32:24', '82b91bd35706b21c3ab04e205e358eb6.jpg', 4, 1, 'M Fikri Setiadi'),
(15, 'Belajar komputer programming', '2017-01-24 01:32:34', '93048f2a103987bce8c8ec8d6912de06.jpg', 4, 1, 'M Fikri Setiadi'),
(16, 'Belajar komputer programming', '2017-01-24 01:32:44', '41f46be181f2f8452c2041b5e79a05a5.jpg', 4, 1, 'M Fikri Setiadi'),
(17, 'Belajar sambil bermain', '2017-01-24 01:33:08', '2858b0555c252690e293d29b922ba8e6.jpg', 4, 1, 'M Fikri Setiadi'),
(18, 'Makan bersama', '2017-01-24 01:33:24', '90d67328e33a31d3f5eecd7dcb25b55d.jpg', 4, 1, 'M Fikri Setiadi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_guru`
--

CREATE TABLE `tbl_guru` (
  `guru_id` int(11) NOT NULL,
  `guru_nip` varchar(30) DEFAULT NULL,
  `guru_nama` varchar(70) DEFAULT NULL,
  `guru_jenkel` varchar(2) DEFAULT NULL,
  `guru_tmp_lahir` varchar(80) DEFAULT NULL,
  `guru_tgl_lahir` varchar(80) DEFAULT NULL,
  `guru_mapel` varchar(120) DEFAULT NULL,
  `guru_photo` varchar(40) DEFAULT NULL,
  `guru_tgl_input` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_guru`
--

INSERT INTO `tbl_guru` (`guru_id`, `guru_nip`, `guru_nama`, `guru_jenkel`, `guru_tmp_lahir`, `guru_tgl_lahir`, `guru_mapel`, `guru_photo`, `guru_tgl_input`) VALUES
(1, '927482658274982', 'M Fikri Setiadi', 'L', 'Padang', '25 September 1993', 'Teknik Komputer', 'f6bbe1e04e78e0d715e9830a605794aa.jpg', '2017-01-26 07:49:43'),
(2, '927482658274981', 'Thomas Muller', 'L', 'Germany', '25 September 1989', 'Olahgara', NULL, '2017-01-26 13:38:54'),
(3, '-', 'Joko Subroto', 'L', 'Jakarta', '25 September 1989', 'PPKN, Matematika', NULL, '2017-01-26 13:41:20'),
(4, '-', 'Kusta Otomo', 'L', 'Jakarta', '25 September 1989', 'Seni Budaya', NULL, '2017-01-26 13:42:08'),
(5, '-', 'Yuliani Ningsih', 'P', 'Padang', '27 September 1993', 'Bahasa Indonesia', NULL, '2017-01-26 13:42:48'),
(6, '927482658274993', 'Ari Hidayat', 'L', 'Padang', '25 September 1993', 'Bahasa Inggris', NULL, '2017-01-26 13:43:46'),
(7, '927482658274998', 'Irma Cantika', 'P', 'Padang', '25 September 1993', 'Bahasa Inggris, IPA', '4200d2514abf45755943526b74474c16.jpg', '2017-01-26 13:45:11'),
(8, '-', 'Ririn Febriesta', 'P', 'Padang', '27 September 1994', 'Pend. Agama Islam', NULL, '2017-01-27 04:28:23');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_inbox`
--

CREATE TABLE `tbl_inbox` (
  `inbox_id` int(11) NOT NULL,
  `inbox_nama` varchar(40) DEFAULT NULL,
  `inbox_email` varchar(60) DEFAULT NULL,
  `inbox_kontak` varchar(20) DEFAULT NULL,
  `inbox_pesan` text DEFAULT NULL,
  `inbox_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `inbox_status` int(11) DEFAULT 1 COMMENT '1=Belum dilihat, 0=Telah dilihat'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_inbox`
--

INSERT INTO `tbl_inbox` (`inbox_id`, `inbox_nama`, `inbox_email`, `inbox_kontak`, `inbox_pesan`, `inbox_tanggal`, `inbox_status`) VALUES
(2, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Ping !', '2017-06-21 03:44:12', 0),
(3, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Ini adalah pesan ', '2017-06-21 03:45:57', 0),
(5, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Ping !', '2017-06-21 03:53:19', 0),
(7, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', '-', 'Hi, there!', '2017-07-01 07:28:08', 0),
(8, 'M Fikri', 'fikrifiver97@gmail.com', '084375684364', 'Hi There, Would you please help me about register?', '2018-08-06 13:51:07', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `kategori_id` int(11) NOT NULL,
  `kategori_nama` varchar(30) DEFAULT NULL,
  `kategori_tanggal` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`kategori_id`, `kategori_nama`, `kategori_tanggal`) VALUES
(1, 'Pendidikan', '2016-09-06 05:49:04'),
(2, 'Politik', '2016-09-06 05:50:01'),
(3, 'Sains', '2016-09-06 05:59:39'),
(5, 'Penelitian', '2016-09-06 06:19:26'),
(6, 'Prestasi', '2016-09-07 02:51:09'),
(13, 'Olah Raga', '2017-01-13 13:20:31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `kelas_id` int(11) NOT NULL,
  `kelas_nama` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`kelas_id`, `kelas_nama`) VALUES
(1, 'Kelas X.1'),
(2, 'Kelas X.2'),
(3, 'Kelas X.3'),
(4, 'Kelas X.4'),
(5, 'Kelas X.5'),
(6, 'Kelas X.6'),
(7, 'Kelas X.7'),
(8, 'Kelas XI IPA.1'),
(9, 'Kelas XI IPA.2'),
(10, 'Kelas XI IPA.3'),
(11, 'Kelas XI IPA.4'),
(12, 'Kelas XI IPA.5'),
(13, 'Kelas XI IPA.6'),
(14, 'Kelas XI IPA.7'),
(15, 'Kelas XI IPS.1'),
(16, 'Kelas XI IPS.2'),
(17, 'Kelas XI IPS.3'),
(18, 'Kelas XI IPS.4'),
(19, 'Kelas XI IPS.5'),
(20, 'Kelas XI IPS.6'),
(21, 'Kelas XI IPS.7');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_komentar`
--

CREATE TABLE `tbl_komentar` (
  `komentar_id` int(11) NOT NULL,
  `komentar_nama` varchar(30) DEFAULT NULL,
  `komentar_email` varchar(50) DEFAULT NULL,
  `komentar_isi` varchar(120) DEFAULT NULL,
  `komentar_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `komentar_status` varchar(2) DEFAULT NULL,
  `komentar_tulisan_id` int(11) DEFAULT NULL,
  `komentar_parent` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_komentar`
--

INSERT INTO `tbl_komentar` (`komentar_id`, `komentar_nama`, `komentar_email`, `komentar_isi`, `komentar_tanggal`, `komentar_status`, `komentar_tulisan_id`, `komentar_parent`) VALUES
(1, 'M Fikri', 'fikrifiver97@gmail.com', ' Nice Post.', '2018-08-07 15:09:07', '1', 24, 0),
(2, 'M Fikri Setiadi', 'fikrifiver97@gmail.com', ' Awesome Post', '2018-08-07 15:14:26', '1', 24, 0),
(3, 'Joko', 'joko@gmail.com', 'Thank you.', '2018-08-08 03:54:56', '1', 24, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_log_aktivitas`
--

CREATE TABLE `tbl_log_aktivitas` (
  `log_id` int(11) NOT NULL,
  `log_nama` text DEFAULT NULL,
  `log_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `log_ip` varchar(20) DEFAULT NULL,
  `log_pengguna_id` int(11) DEFAULT NULL,
  `log_icon` blob DEFAULT NULL,
  `log_jenis_icon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengguna`
--

CREATE TABLE `tbl_pengguna` (
  `pengguna_id` int(11) NOT NULL,
  `pengguna_nama` varchar(50) DEFAULT NULL,
  `pengguna_moto` varchar(100) DEFAULT NULL,
  `pengguna_jenkel` varchar(2) DEFAULT NULL,
  `pengguna_username` varchar(30) DEFAULT NULL,
  `pengguna_password` varchar(35) DEFAULT NULL,
  `pengguna_tentang` text DEFAULT NULL,
  `pengguna_email` varchar(50) DEFAULT NULL,
  `pengguna_nohp` varchar(20) DEFAULT NULL,
  `pengguna_facebook` varchar(35) DEFAULT NULL,
  `pengguna_twitter` varchar(35) DEFAULT NULL,
  `pengguna_linkdin` varchar(35) DEFAULT NULL,
  `pengguna_google_plus` varchar(35) DEFAULT NULL,
  `pengguna_status` int(2) DEFAULT 1,
  `pengguna_level` varchar(3) DEFAULT NULL,
  `pengguna_register` timestamp NULL DEFAULT current_timestamp(),
  `pengguna_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_pengguna`
--

INSERT INTO `tbl_pengguna` (`pengguna_id`, `pengguna_nama`, `pengguna_moto`, `pengguna_jenkel`, `pengguna_username`, `pengguna_password`, `pengguna_tentang`, `pengguna_email`, `pengguna_nohp`, `pengguna_facebook`, `pengguna_twitter`, `pengguna_linkdin`, `pengguna_google_plus`, `pengguna_status`, `pengguna_level`, `pengguna_register`, `pengguna_photo`) VALUES
(1, 'M Fikri Setiadi', 'Just do it', 'L', 'admin', 'e10adc3949ba59abbe56e057f20f883e', 'I am a mountainner. to me mountainerring is a life', 'fikrifiver97@gmail.com', '081277159401', 'facebook.com/m_fikri_setiadi', 'twitter.com/fiver_fiver', '', '', 1, '1', '2016-09-03 06:07:55', 'db5dec647062751f2fb236b9bc3f1c54.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengumuman`
--

CREATE TABLE `tbl_pengumuman` (
  `pengumuman_id` int(11) NOT NULL,
  `pengumuman_judul` varchar(150) DEFAULT NULL,
  `pengumuman_deskripsi` text DEFAULT NULL,
  `pengumuman_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengumuman_author` varchar(60) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_pengumuman`
--

INSERT INTO `tbl_pengumuman` (`pengumuman_id`, `pengumuman_judul`, `pengumuman_deskripsi`, `pengumuman_tanggal`, `pengumuman_author`) VALUES
(1, 'Pengumuman Libur Semester Ganjil Tahun Ajaran 2016-2017', 'Libur semester ganjil tahun ajaran 2016-2017 dimulai dari tanggal 3 Maret 2017 sampai dengan tanggal 7 Maret 207.', '2017-01-21 01:17:30', 'M Fikri Setiadi'),
(2, 'Pengumuman Pembagian Raport Semester Ganjil Tahun Ajaran 2016-2017', 'Menjelang berakhirnya proses belajar-mengajar di semester ganjil tahun ajaran 2016-2017, maka akan diadakan pembagian hasil belajar/raport pada tanggal 4 Maret 2017 pukul 07.30 WIB.\r\nYang bertempat di M-Sekolah. Raport diambil oleh orang tua/wali kelas murid masing-masing', '2017-01-21 01:16:20', 'M Fikri Setiadi'),
(3, 'Pengumuman Peresmian dan Launching Website Perdana M-Sekolah', 'Peresmian dan launching website resmi M-Sekolah akan diadakan pada hari 23 Desember 2016 pukul 10.00, bertepatan dengan pembagian raport semester ganjil tahun ajaran 2016-2017', '2017-01-22 07:16:16', 'M Fikri Setiadi'),
(4, 'Pengumuman Proses Belajar Mengajar di Semester Genap Tahun Ajaran 2016-2017', 'Setelah libur semester ganjil tahun ajaran 2016-2017, proses belajar mengajar di semester genap tahun ajaran 2016-2017 mulai aktif kembali tanggal 2 Maret 2017.', '2017-01-22 07:15:28', 'M Fikri Setiadi');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pengunjung`
--

CREATE TABLE `tbl_pengunjung` (
  `pengunjung_id` int(11) NOT NULL,
  `pengunjung_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `pengunjung_ip` varchar(40) DEFAULT NULL,
  `pengunjung_perangkat` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_pengunjung`
--

INSERT INTO `tbl_pengunjung` (`pengunjung_id`, `pengunjung_tanggal`, `pengunjung_ip`, `pengunjung_perangkat`) VALUES
(930, '2018-08-09 08:04:59', '::1', 'Chrome'),
(931, '2021-01-29 00:57:59', '127.0.0.1', 'Firefox'),
(932, '2024-09-11 06:53:09', '::1', 'Chrome'),
(933, '2024-11-11 13:50:17', '::1', 'Chrome'),
(934, '2025-01-03 11:11:11', '::1', 'Chrome');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `siswa_id` int(11) NOT NULL,
  `siswa_nis` varchar(20) DEFAULT NULL,
  `siswa_nama` varchar(70) DEFAULT NULL,
  `siswa_jenkel` varchar(2) DEFAULT NULL,
  `siswa_kelas_id` int(11) DEFAULT NULL,
  `siswa_photo` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`siswa_id`, `siswa_nis`, `siswa_nama`, `siswa_jenkel`, `siswa_kelas_id`, `siswa_photo`) VALUES
(1, '9287482', 'Alvaro Sanchez', 'L', 8, '083d547659a2d4bb15c0322d15955da5.png'),
(2, '9287483', 'Ririn Cantika', 'P', 8, '74eec6ad37550cc12fe8fa83d46878af.jpg'),
(4, '123083', 'Ari Hidayat', 'L', 1, 'e371e67618ad53c99de380782c373023.png'),
(5, '123084', 'Irma Chaiyo', 'P', 1, '1e148b42c71562841ba3018fc97b748a.png'),
(6, '123085', 'Nadila Ginting', 'P', 1, '8125da21f903803b6992214967239ab3.png'),
(7, '123086', 'Anna Marina', 'P', 1, '33eaf3e3faf28a0fe31670c022f641f1.png'),
(8, '123086', 'Dhea Lubis', 'P', 1, '03e651410e969c3c26e8e0d35380470d.png'),
(9, '123087', 'Nadia Ginting', 'P', 1, 'd7823f8d98d376c085aa284a54d63264.png'),
(10, '123088', 'Mita Febrina', 'P', 1, 'eca0280a4a57c911ee68b8318d1e517f.png'),
(11, '123089', 'Elizabeth ', 'P', 1, 'ec1232a08d650bc8c3197c9db95a7fc8.png'),
(12, '123090', 'Della Guswono', 'P', 1, '6c82fce13bb3eff1fd2e897b2c3cfeeb.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_testimoni`
--

CREATE TABLE `tbl_testimoni` (
  `testimoni_id` int(11) NOT NULL,
  `testimoni_nama` varchar(30) DEFAULT NULL,
  `testimoni_isi` varchar(120) DEFAULT NULL,
  `testimoni_email` varchar(35) DEFAULT NULL,
  `testimoni_tanggal` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_tulisan`
--

CREATE TABLE `tbl_tulisan` (
  `tulisan_id` int(11) NOT NULL,
  `tulisan_judul` varchar(100) DEFAULT NULL,
  `tulisan_isi` text DEFAULT NULL,
  `tulisan_tanggal` timestamp NULL DEFAULT current_timestamp(),
  `tulisan_kategori_id` int(11) DEFAULT NULL,
  `tulisan_kategori_nama` varchar(30) DEFAULT NULL,
  `tulisan_views` int(11) DEFAULT 0,
  `tulisan_gambar` varchar(40) DEFAULT NULL,
  `tulisan_pengguna_id` int(11) DEFAULT NULL,
  `tulisan_author` varchar(40) DEFAULT NULL,
  `tulisan_img_slider` int(2) NOT NULL DEFAULT 0,
  `tulisan_slug` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbl_tulisan`
--

INSERT INTO `tbl_tulisan` (`tulisan_id`, `tulisan_judul`, `tulisan_isi`, `tulisan_tanggal`, `tulisan_kategori_id`, `tulisan_kategori_nama`, `tulisan_views`, `tulisan_gambar`, `tulisan_pengguna_id`, `tulisan_author`, `tulisan_img_slider`, `tulisan_slug`) VALUES
(20, 'Persiapan siswa menjelang ujian nasional', '<p>Banyak metode bejalar yang dilakukan oleh siswa untuk persiapan menghadapi ujian nasional (UN). Biantaranya mengingat dengan metode Mind Map, ataupun bejalar diluar kelas (outdoor).&nbsp; Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n', '2017-05-17 09:24:42', 1, 'Pendidikan', 27, '0a927c6d34dc5560b72f053313f14638.jpg', 1, 'M Fikri Setiadi', 0, 'persiapan-siswa-menjelang-ujian-nasional'),
(22, 'Prestasi membangga dari siswa MSchool', '<p>Prestasi dan penghargaan merupakan trigger (pemicu) semangat belajar siswa. Ada banyak prestasi yang telah diraih oleh siswa m-sekolah. Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n', '2017-05-17 09:38:21', 6, 'Prestasi', 1, 'a59aa487ab2e3b57b2fcf75063b67575.jpg', 1, 'M Fikri Setiadi', 0, 'prestasi-membangga-dari-siswa-mschool'),
(23, 'Pelaksanaan Ujian Nasional MSchool', '<p>Pelaksanaan UN (Ujian Nasional) di sekolah M-Sekolah berlangsung tentram dan damai. Terlihat ketenangan terpancar diwajah siswa berprestasi.&nbsp; Ini adalah sampel artikel Ini adalah sampel artikel&nbsp; Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n', '2017-05-17 09:41:30', 1, 'Pendidikan', 3, '12bfb1953df800c59835a2796f8c6619.jpg', 1, 'M Fikri Setiadi', 0, 'pelaksanaan-ujian-nasional-mschool'),
(24, 'Proses belajar mengajar MSchool', '<p>Proses belajar mengajar di sekolah m-sekolah berlangsung menyenangkan. Didukung oleh instruktur yang fun dengan metode mengajar yang tidak biasa. Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel a Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel .</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n\r\n<p>Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel Ini adalah sampel artikel.</p>\r\n', '2017-05-17 09:46:29', 1, 'Pendidikan', 162, 'ea114dc1ec5275560a5ef3238fd04722.jpg', 1, 'M Fikri Setiadi', 0, 'proses-belajar-mengajar-mschool'),
(25, 'iPhone 8 Baru Mengungkapkan Fitur Mengecewakan', '<p>Apple CEO Tim Cook delivers the opening keynote address the 2017 Apple.</p>\r\n\r\n<p><br />\r\nSudah lama sekali sejak Apple mampu menyimpan kejutan nyata dari beledu digital dan mengungkapkan &#39;satu hal&#39; yang sebenarnya selama sebuah keynote. Fase desain dan prototyping yang panjang, ditambah dengan rantai pasokan yang diperluas, telah menghasilkan garis manufaktur yang bocor.<br />\r\n<br />\r\nTariklah permintaan yang tak terpuaskan dari si geekerati dan Anda tidak akan pernah bisa menyimpan rahasianya ... bahkan jika penonton akan berpura-pura bahwa segala sesuatu yang dikatakan Tim Cook adalah sebuah wahyu.<br />\r\n<br />\r\nSemuanya di tampilkan untuk portofolio iPhone baru, meskipun jika kita jujur ??tidak ada hal baru yang bisa dilihat. Ini hanya Tim Cook dan timnya yang membuat model tahun lalu &#39;sedikit lebih baik&#39; dan mengajukan konsumen proposisi yang sama seperti setiap produsen smartphone lainnya.<br />\r\n<br />\r\nMungkin aku berharap terlalu banyak dari Apple. Pengulangan Timey dari mimpi Silicon Valley tidak dibangun dengan risiko, mendorong amplop, atau bereksperimen dengan bentuk atau fungsinya. Bagaimana Tim Cook bisa mendorong inovasi ketika begitu banyak kekaisarannya dibangun di seputar kebutuhan akan penjualan siklis iPhone yang terjamin? Jika penjualan smartphone turun, maka yayasan Cupertino akan berada dalam bahaya.<br />\r\n<br />\r\nJawaban Apple untuk ini adalah iPhone 8. Sementara iPhone 7S dan iPhone 7S Plus menjaga harapan, iPhone 8 bisa bereksperimen dengan bentuk, harga, dan kekuatan. Ini adalah handset yang akan mendorong batas teknologi Apple dengan layar OLED yang cerah dan jelas di bawah kaca melengkung yang membentuk bagian luarnya. Inilah smartphone yang membawa kekuatan magis wireless charging ke ekosistem iOS dan akan menawarkan pengenalan wajah untuk keamanan.<br />\r\n<br />\r\nYang semua terdengar hebat tapi itu satu set poin peluru yang bisa diterapkan ke banyak handset Android terkemuka yang ada di pasaran saat ini. Bahkan dengan andalannya yang maju untuk tahun 2017, Apple melakukan sedikit lebih banyak daripada mengenalkan teknologi yang ada ke portofolio iOS.<br />\r\n<br />\r\nItu tidak terlihat seperti ini beberapa bulan yang lalu. Fitur yang diduga dikeluarkan oleh Apple dari iPhone 8 memamerkan beberapa pemikiran terbaru tentang perangkat mobile, termasuk pengisian daya nirkabel jarak jauh dan sensor biometrik tertanam di bawah layar kaca. Ini perlahan-lahan telah terbantahkan oleh industri rumahan dan desas-desus, sampai-sampai kita cukup tahu apa yang terjadi dari iPhone 8.<br />\r\n<br />\r\nTentu saja iPhone 8 (dan lebih dari kemungkinan iPhone 7S dan 7S Plus) akan mendapat keuntungan dari perubahan pada konstruksi interior. Akan ada pencantuman iOS 11 dan integrasi perangkat lunak yang ketat ke perangkat keras. Akan ada anggukan Apple untuk kesederhanaan di UI dan aplikasi pihak ketiga akan segera menghadirkan fitur lanjutan kepada pengguna rata-rata.<br />\r\n<br />\r\nIni bukan perubahan sepele, tapi yang menyoroti ini adalah menjelaskan bagaimana sosis dibuat. Mereka adalah rakit tweak untuk paket yang sama. Anda bisa menambahkan kancing diamante ke gaun Anda, mengganti lapisannya, dan mengeluarkan pinggulnya karena tahun-tahun yang lewat, tapi pakaiannya tetap sama seperti yang orang lihat berkali-kali. Itu cukup bagi bisnis Apple untuk terus melakukannya dengan baik dan membuat pemegang saham tetap bahagia, namun Anda tidak dapat terus kembali ke bidang yang sama dan berharap untuk tetap berada di puncak permainan smartphone. Sesuatu harus diberikan.<br />\r\n<br />\r\nPortofolio Apple 2017 membajak bidang yang sama persis dengan tahun-tahun sebelumnya. Tulang punggung penjualan akan terdiri dari iPhone 7S dan iPhone 7S Plus yang berulang-ulang saat Tim Cook kembali menanam benih di alur yang sama persis seperti model sebelumnya. IPhone 8 dapat diluncurkan tepat waktu, namun stok akan sulit didapat dan Apple akan, sekali lagi, tidak merilis angka penjualan. Ini akan menjadi hal baru yang menarik dan berkilau, tapi mari kita panggil apa adanya.</p>\r\n\r\n<p>Tim Cook akan menyilangkan jari-jarinya sehingga cukup banyak orang yang senang bisa &#39;membeli iPhone lain&#39; dan terus menggelontorkannya tanpa melihat persaingan. IPhone 8 adalah Apple yang bermain mengejar kemajuan teknologi kompetisi, dengan harapan tidak ada yang memperhatikan bahwa iPhone Baru Kaisar tidak semudah yang terlihat.</p>\r\n', '2018-08-08 13:26:08', 5, 'Penelitian', 3, 'a0b99616241c9aded7f2a02661798d98.jpg', 1, 'M Fikri Setiadi', 0, 'iphone-8-baru-mengungkapkan-fitur-mengecewakan');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  ADD PRIMARY KEY (`agenda_id`);

--
-- Indexes for table `tbl_album`
--
ALTER TABLE `tbl_album`
  ADD PRIMARY KEY (`album_id`),
  ADD KEY `album_pengguna_id` (`album_pengguna_id`);

--
-- Indexes for table `tbl_files`
--
ALTER TABLE `tbl_files`
  ADD PRIMARY KEY (`file_id`);

--
-- Indexes for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  ADD PRIMARY KEY (`galeri_id`),
  ADD KEY `galeri_album_id` (`galeri_album_id`),
  ADD KEY `galeri_pengguna_id` (`galeri_pengguna_id`);

--
-- Indexes for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  ADD PRIMARY KEY (`guru_id`);

--
-- Indexes for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  ADD PRIMARY KEY (`inbox_id`);

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`kelas_id`);

--
-- Indexes for table `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  ADD PRIMARY KEY (`komentar_id`),
  ADD KEY `komentar_tulisan_id` (`komentar_tulisan_id`);

--
-- Indexes for table `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `log_pengguna_id` (`log_pengguna_id`);

--
-- Indexes for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  ADD PRIMARY KEY (`pengguna_id`);

--
-- Indexes for table `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  ADD PRIMARY KEY (`pengumuman_id`);

--
-- Indexes for table `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  ADD PRIMARY KEY (`pengunjung_id`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`siswa_id`);

--
-- Indexes for table `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  ADD PRIMARY KEY (`testimoni_id`);

--
-- Indexes for table `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  ADD PRIMARY KEY (`tulisan_id`),
  ADD KEY `tulisan_kategori_id` (`tulisan_kategori_id`),
  ADD KEY `tulisan_pengguna_id` (`tulisan_pengguna_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_agenda`
--
ALTER TABLE `tbl_agenda`
  MODIFY `agenda_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_album`
--
ALTER TABLE `tbl_album`
  MODIFY `album_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_files`
--
ALTER TABLE `tbl_files`
  MODIFY `file_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_galeri`
--
ALTER TABLE `tbl_galeri`
  MODIFY `galeri_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_guru`
--
ALTER TABLE `tbl_guru`
  MODIFY `guru_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_inbox`
--
ALTER TABLE `tbl_inbox`
  MODIFY `inbox_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `kategori_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `kelas_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbl_komentar`
--
ALTER TABLE `tbl_komentar`
  MODIFY `komentar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_log_aktivitas`
--
ALTER TABLE `tbl_log_aktivitas`
  MODIFY `log_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_pengguna`
--
ALTER TABLE `tbl_pengguna`
  MODIFY `pengguna_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_pengumuman`
--
ALTER TABLE `tbl_pengumuman`
  MODIFY `pengumuman_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_pengunjung`
--
ALTER TABLE `tbl_pengunjung`
  MODIFY `pengunjung_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=935;

--
-- AUTO_INCREMENT for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `siswa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbl_testimoni`
--
ALTER TABLE `tbl_testimoni`
  MODIFY `testimoni_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_tulisan`
--
ALTER TABLE `tbl_tulisan`
  MODIFY `tulisan_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- Database: `desa_db`
--
CREATE DATABASE IF NOT EXISTS `desa_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `desa_db`;

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pelayanan_surat`
--

CREATE TABLE `pelayanan_surat` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nomor` varchar(23) NOT NULL,
  `surat` varchar(50) DEFAULT NULL,
  `kk` varchar(50) DEFAULT NULL,
  `ktp` varchar(50) DEFAULT NULL,
  `buku_nikah` varchar(50) DEFAULT NULL,
  `other_ktp` varchar(50) DEFAULT NULL,
  `ijasah` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `foto` varchar(50) DEFAULT NULL,
  `rapor` varchar(50) DEFAULT NULL,
  `other_surat` varchar(50) DEFAULT NULL,
  `tanggal` date NOT NULL,
  `jenis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `potensi_desa`
--

CREATE TABLE `potensi_desa` (
  `id` int(11) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `gambar` varchar(150) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_lembaga`
--

CREATE TABLE `tb_lembaga` (
  `id` int(11) NOT NULL,
  `nama_lembaga` varchar(225) NOT NULL,
  `singkatan_nama` varchar(50) NOT NULL,
  `alamat_kantor` varchar(50) NOT NULL,
  `gambar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_letak_wilayah`
--

CREATE TABLE `tb_letak_wilayah` (
  `id` int(11) NOT NULL,
  `batas` varchar(100) NOT NULL,
  `desa` varchar(100) NOT NULL,
  `kecamatan` varchar(100) NOT NULL,
  `kabupaten` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_luas_wilayah`
--

CREATE TABLE `tb_luas_wilayah` (
  `id` int(11) NOT NULL,
  `peruntukan` varchar(100) NOT NULL,
  `luas` varchar(25) NOT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tb_penduduk`
--

CREATE TABLE `tb_penduduk` (
  `id` int(11) NOT NULL,
  `jumlah_laki` int(11) NOT NULL,
  `jumlah_perempuan` int(11) NOT NULL,
  `total_penduduk` int(11) NOT NULL,
  `jumlah_kepala` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_penduduk`
--

INSERT INTO `tb_penduduk` (`id`, `jumlah_laki`, `jumlah_perempuan`, `total_penduduk`, `jumlah_kepala`) VALUES
(1, 2, 12, 11, 2);

-- --------------------------------------------------------

--
-- Table structure for table `tb_perangkat_desa`
--

CREATE TABLE `tb_perangkat_desa` (
  `id` int(11) NOT NULL,
  `nama` varchar(225) NOT NULL,
  `jabatan` varchar(225) NOT NULL,
  `gambar` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_perangkat_desa`
--

INSERT INTO `tb_perangkat_desa` (`id`, `nama`, `jabatan`, `gambar`) VALUES
(1, 'dendi', 'kades', '1726737785_image.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pelayanan_surat`
--
ALTER TABLE `pelayanan_surat`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `potensi_desa`
--
ALTER TABLE `potensi_desa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_lembaga`
--
ALTER TABLE `tb_lembaga`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_letak_wilayah`
--
ALTER TABLE `tb_letak_wilayah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_luas_wilayah`
--
ALTER TABLE `tb_luas_wilayah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_penduduk`
--
ALTER TABLE `tb_penduduk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_perangkat_desa`
--
ALTER TABLE `tb_perangkat_desa`
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
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pelayanan_surat`
--
ALTER TABLE `pelayanan_surat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `potensi_desa`
--
ALTER TABLE `potensi_desa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_lembaga`
--
ALTER TABLE `tb_lembaga`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_letak_wilayah`
--
ALTER TABLE `tb_letak_wilayah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_luas_wilayah`
--
ALTER TABLE `tb_luas_wilayah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_penduduk`
--
ALTER TABLE `tb_penduduk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_perangkat_desa`
--
ALTER TABLE `tb_perangkat_desa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Database: `elearning`
--
CREATE DATABASE IF NOT EXISTS `elearning` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `elearning`;

-- --------------------------------------------------------

--
-- Table structure for table `aktif`
--

CREATE TABLE `aktif` (
  `id` int(5) NOT NULL,
  `aktif` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `aktif`
--

INSERT INTO `aktif` (`id`, `aktif`) VALUES
(1, 'aktif'),
(2, 'tidak aktif');

-- --------------------------------------------------------

--
-- Table structure for table `cat_post`
--

CREATE TABLE `cat_post` (
  `id` int(10) NOT NULL,
  `nama` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `cat_post`
--

INSERT INTO `cat_post` (`id`, `nama`) VALUES
(2, 'news'),
(9, 'Pendidikan');

-- --------------------------------------------------------

--
-- Table structure for table `dujian`
--

CREATE TABLE `dujian` (
  `id` int(5) NOT NULL,
  `nama_ujian` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `dujian`
--

INSERT INTO `dujian` (`id`, `nama_ujian`) VALUES
(17, 'UTS');

-- --------------------------------------------------------

--
-- Table structure for table `hasil_jwb`
--

CREATE TABLE `hasil_jwb` (
  `id` int(50) NOT NULL,
  `id_ujian` varchar(100) DEFAULT NULL,
  `id_user` varchar(100) DEFAULT NULL,
  `id_matkul` varchar(100) DEFAULT NULL,
  `benar` varchar(100) DEFAULT NULL,
  `salah` varchar(200) DEFAULT NULL,
  `kosong` varchar(100) DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `nilai` varchar(10) DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL,
  `nilai_hrf` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `hasil_jwb`
--

INSERT INTO `hasil_jwb` (`id`, `id_ujian`, `id_user`, `id_matkul`, `benar`, `salah`, `kosong`, `status`, `nilai`, `keterangan`, `nilai_hrf`) VALUES
(62, '16', 'U000000004', '12', '0', '0', '10', '1', '0.0', 'tidak lulus', ''),
(63, '16', 'U000000007', '12', '0', '1', '9', '1', '0.0', 'tidak lulus', ''),
(64, '16', 'U000000008', '12', '10', '0', '0', '1', '100.0', 'lulus', 'A'),
(66, '17', 'U000000004', '13', '9', '1', '0', '1', '90.0', 'lulus', 'A'),
(68, '17', 'U000000008', '13', '0', '0', '10', '1', '0.0', 'tidak lulus', ''),
(69, '16', 'U000000009', '12', '0', '2', '8', '1', '0.0', 'tidak lulus', ''),
(70, '17', 'U000000009', '13', '0', '2', '8', '1', '0.0', 'tidak lulus', ''),
(71, '16', 'U000000010', '12', '5', '5', '0', '1', '50.0', 'tidak lulus', 'C'),
(72, '17', 'U000000010', '13', '3', '7', '0', '1', '30.0', 'tidak lulus', 'D'),
(73, '16', 'U000000011', '12', '5', '5', '0', '1', '50.0', 'tidak lulus', 'C'),
(74, '17', 'U000000011', '13', '2', '0', '8', '1', '20.0', 'tidak lulus', 'E');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `id_matkul` int(5) NOT NULL,
  `nama_matkul` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`id_matkul`, `nama_matkul`) VALUES
(12, 'pemrograman'),
(13, 'Struktur Data'),
(14, 'komunikasi data');

-- --------------------------------------------------------

--
-- Table structure for table `mode`
--

CREATE TABLE `mode` (
  `id` int(10) NOT NULL,
  `acak` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `mode`
--

INSERT INTO `mode` (`id`, `acak`) VALUES
(1, 'acak'),
(2, 'tidak acak');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `id_kategori` int(11) DEFAULT NULL,
  `judul` varchar(100) DEFAULT NULL,
  `penulis` varchar(100) NOT NULL,
  `isi` text DEFAULT NULL,
  `jam` time DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `feature_image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `id_kategori`, `judul`, `penulis`, `isi`, `jam`, `tanggal`, `feature_image`) VALUES
(38, 2, 'Pencari Beasiswa Harus Aktif Gali Informasi', 'andy', '<p style=\"text-align: justify;\"><strong>YOGYAKARTA</strong> - Biaya pendidikan di Indonesia masih cukup tinggi. Tak heran, banyak yang berusaha mendapatkan beasiswa agar beban biaya pendidikan tidak memberatkan. Namun, tak mudah untuk mendapatkan beasiswa tersebut.</p>\r\n<p style=\"text-align: justify;\">\"Banyak sekali kesempatan mendapat beasiswa, tapi sering kali orangtua, siswa, dan mahasiswa tidak tahu,\" tutur Anies usai meninjau pelaksanaan Ujian Nasional tingkat SMP di Pondok Pesantren Modern Muhammadiyah Boarding School, Prambanan, Sleman, Kamis (12/5/2016).</p>\r\n<p style=\"text-align: justify;\">Untuk itu, kata dia, pencari beasiswa harus menggali informasi tentang beasiswa tersebut. Banyak jalan yang bisa dilakukan supaya mendapatkan informasi yang lengkap tentang beasiswa.</p>\r\n<p style=\"text-align: justify;\">\"Jadi para siswa cari tau, mulai online, tanya ke dinas, sekolah, cari tau bagaimana memperoleh beasiswa,\" katanya.</p>\r\n<p style=\"text-align: justify;\">Mantan Rektor Universitas Paramadina itu mengaku bahwa sumber pembiayaan seperti beasiswa ada banyak. Hanya, tidak diketahui masyarakat karena tidak dicari. Pencarian itu wajib bagi yang ingin mendapat beasiswa.</p>\r\n<p style=\"text-align: justify;\">\"Jadi kalau hanya menunggu saja tidak dapat, (beasiswa) tidak datang dengan sendiri. Caranya mendapatkan harus aktif mencari, jangan pasif menunggu,\" jelasnya.</p>\r\n<p style=\"text-align: justify;\">Anies menjelaskan, pemerintah juga sudah memiliki program pemberian Kartu Indonesia Pintar (KIP) yang dicanangkan Presiden Joko Widodo untuk siswa. Program itu untuk meringankan beban biaya pendidikan di negeri ini.</p>\r\n<p style=\"text-align: justify;\">\"Tadi kita berikan KIP di SMP N 1 Prambanan, itu ada program Presiden Jokowi, kita laksanakan. Alhamdulillah, sejauh ini sudah 12 juta kartu dikirim,\" jelasnya.</p>\r\n<p style=\"text-align: justify;\">Anies mengaku masih ada yang belum didistribusikan ke siswa KIP tersebut. Butuh waktu dalam pemberian KIP tersebut secara berkala dan berkelanjutan.</p>\r\n<p style=\"text-align: justify;\">sumber:news.okezone.com</p>', '22:13:35', '2016-05-14', 'imagesss.jpg'),
(39, 2, 'Drone Pengintai & Pengebom Karya Anak Bangsa', 'andy', '<p style=\"text-align: justify;\"><strong>SURABAYA</strong> - Satu lagi karya anak bangsa yang patut dibanggakan. Siswa Sekolah Tinggi Teknologi Angkatan Laut (STTAL) Surabaya berhasil membuat pesawat pengintai tanpa awak yang mempunyai kemampuan pengeboman. Rencananya, pesawat ini akan terus dikembangkan dan menjadi salah satu alat pertahanan negara atau alutsista milik TNI.</p>\r\n<p style=\"text-align: justify;\">Meski tampilannya seperti pesawat aeromodelling biasa, pesawat ini memiliki keunggulan jarak jangkuan yang cukup jauh yaitu sekira 30 kilometer. Ia juga efektif untuk pengintaian karena dilengkapi dengan kamera satelit. Selain itu, pesawat pengintai tanpa awak (drone) ini juga mampu menjatuhkan bom pada target yang diinginkan secara akurat.</p>\r\n<p style=\"text-align: justify;\">Kedua siswa pembuat pesawat, yaitu Sersan Satu Oscar Panji dan Sersan Kepala Abdul Manaf mengaku, pesawat karya mereka telah diuji coba beberapa kali untuk mengetahui hasil pengintaian serta keakuratan daya tembak target. Hasilnya cukup memuaskan.</p>\r\n<p style=\"text-align: justify;\">\"Dengan menggunakan mesin berkapasitas 50 cc, pesawat ini cukup lincah saat bermanuver di udara dengan kecepatan 100 kilometer per jam,\" ujar Oscar.</p>\r\n<p style=\"text-align: justify;\">Pembuatan pesawat bomber tanpa awak yang diberi nama Ganesa XI ini membutuhkan waktu sekira tiga bulan. Prosesnya terdiri dari pemilihan bahan kayu dan fiber sebagai bahan utama sampai perakitan hingga pemasangan mesin dan alat teknologi canggih di dalamnya.</p>\r\n<p style=\"text-align: justify;\">\"Rencananya, pesawat bomber tanpa awak karya siswa STTAL yang dikendalikan dengan remote kontrol yang dimodifikasi dengan perangkat android ini akan terus dikembangkan menjadi alutsista baru karya dalam negeri dengan daya jelajah yang lebih jauh dan penambahan persenjataan seperti bom atau bahan peledak yang bisa dibawa,\" papar Komandan STTAL Laksamana Pertama TNI Siswo Hadi Sumantri.</p>\r\n<p style=\"text-align: justify;\">Pesawat tanpa awak ini bermodel pesawat Cesna dengan lebar sayap 3,3 meter dan panjang body 2,6 meter. Sementara untuk kapasitas tangki bahan bakar 1,5 liter. Pesawat dengan bahan bakar utama pertamax ini memiliki kemampuan dan ketahanan terbang selama satu jam. (afr)</p>\r\n<p style=\"text-align: justify;\">sumber:news.okezone.com</p>', '22:13:45', '2016-05-14', 'drone.jpg'),
(40, 2, 'Belajar Bukan Hanya Kejar Gelar', 'andy', '<p style=\"text-align: justify;\"><strong>JAKARTA</strong> - Semakin tinggi jenjang pendidikan yang kita tempuh, semakin bergengsi juga gelar akademis yang kita kantongi. Namun, bukan berarti kita hanya menjadikan gelar akademis sebagai tujuan satu-satunya dalam belajar.</p>\r\n<p style=\"text-align: justify;\">Rektor Universitas Negeri Yogyakarta (UNY), Rochmat Wahab mengingatkan, semua pelajar dan mahasiswa harus belajar dengan baik, bukan karena semata-mata mengejar gelar.</p>\r\n<p style=\"text-align: justify;\">\"Gelar itu memang jadi bahan pertimbangan dalam beberapa hal, tapi bukan berarti harus mengejar gelar saja,\" tegas Rochmat, ketika berbincang dengan Okezone, belum lama ini.</p>\r\n<p style=\"text-align: justify;\">Selain itu, Rochmat menambahkan, para mahasiswa harus menyadari bila perguruan tinggi bukan satu-satunya tempat untuk mengasah kemampuan. Dia pun sangat menganjurkan para mahasiswa aktif dalam mencari pengalaman dan ilmu dari luar kampus.</p>\r\n<p style=\"text-align: justify;\">\"Misalnya dengan mengikuti kompetisi atau forum-forum di luar meja kuliah. Karena kampus tidak bisa mejawab semuanya, sehingga mahasiswa harus bisa bekerja keras,\" tukasnya.</p>\r\n<p style=\"text-align: justify;\">Di sisi lain, Rochmat mendorong perguruan tinggi meningkatkan mutu. Misalnya dari sisi dosen, tidak boleh berhenti meningkatkan kualifikasi mereka.</p>\r\n<p style=\"text-align: justify;\">\"Dukungan juga diperlukan dari semua elemen masyarakat dan pemerintah,\" tandasnya.</p>\r\n<p style=\"text-align: justify;\">sumber: news.okezone.com</p>', '22:12:42', '2016-05-14', 'belajar-bukan-hanya-kejar-gelar-CyYhUXjtfk.jpg'),
(41, 9, 'Siswa Indonesia Hanya Fokus Menghafal', 'andy', '<p style=\"text-align: justify;\"><strong>JAKARTA</strong> - Konsep pendidikan yang diusung Ki Hajar Dewantara dalam memajukan pendidikan orang pribumi seharusnya bisa menjadi acuan sistem pendidikan nasional. Terlebih lagi, konsep pendidikan Bapak Pendidikan Nasional itu bersifat untuk memerdekakan manusia baik dari aspek hidup lahiriah maupun aspek batin.</p>\r\n<p style=\"text-align: justify;\">Nyatanya, ungkap Pengamat Pendidikan Abduhzen, sistem pendidikan Tanah Air saat ini masih berfokus pada teori yang mengharuskan generasi muda kita menghafal data-data di sekolah.</p>\r\n<p style=\"text-align: justify;\">\"Belum maksimal dalam memberikan kemampuan berpikir, karena pembelajaran selama ini lebih banyak pada mengisi pikiran saja,\" ujarnya kepada Okezone, belum lama ini.</p>\r\n<p style=\"text-align: justify;\">Abduhzen mengimbuhkan, pelajar Indonesia kini lebih banyak diharuskan menghafal lantaran kemampuan itulah yang akan dipakai saat ujian nasional. Para pendidik lupa mengajarkan pemahaman atas konsep yang dipelajari para siswa. Guru, ujarnya, kurang mengoptimalkan keterlibatan siswa dalam pembelajaran.</p>\r\n<p style=\"text-align: justify;\">\"Padahal siswa perlu terlibat. Itu sebabnya pembelajaran harus bersifat terbuka, sehingga siswa bisa mengekpresikan pikirannya. Mereka juga bisa berekspresi dengan tubuhnya dan perasaannya sehingga kemampuan berpikirnya berkembang. Karena tindakan manusia itu kan berdasarkan atas apa yang ada dipikirkannya,\" paparnya.</p>\r\n<p style=\"text-align: justify;\">Kondisi berbeda akan terlihat pada siswa yang hanya dicekoki informasi dan diharuskan menghafalnya. Mereka, kata Abduhzen, tidak bisa berekspresi dengan baik tentang apa yang dirasakan dan dipikirkannya.</p>\r\n<p style=\"text-align: justify;\">\"Jadi mereka juga akan kurang pengalaman,\" tambahnya.</p>\r\n<p style=\"text-align: justify;\">sumber:news.okezone.com</p>', '16:09:13', '2016-05-16', 'siswa-indonesia-hanya-fokus-menghafal-iDXLy5nyhA.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `profil`
--

CREATE TABLE `profil` (
  `id` int(10) NOT NULL,
  `founder` varchar(100) DEFAULT NULL,
  `nama_course` varchar(100) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `no_tlp` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `profil`
--

INSERT INTO `profil` (`id`, `founder`, `nama_course`, `alamat`, `no_tlp`, `email`) VALUES
(1, 'Andy Saputra', 'D\'Garap', 'Jalan Kemuning No 404 Boyolali', '081331294812', 'andygrap@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `soal`
--

CREATE TABLE `soal` (
  `id` int(5) NOT NULL,
  `id_soal` varchar(20) NOT NULL,
  `id_ujian` varchar(20) NOT NULL,
  `soal` text NOT NULL,
  `a` text NOT NULL,
  `b` text NOT NULL,
  `c` text NOT NULL,
  `d` text NOT NULL,
  `e` text NOT NULL,
  `jawab` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `soal`
--

INSERT INTO `soal` (`id`, `id_soal`, `id_ujian`, `soal`, `a`, `b`, `c`, `d`, `e`, `jawab`) VALUES
(36, 'A000000011', '16', '<p>HTML merupakan singkatan dari</p>', '<p>&nbsp;&nbsp;&nbsp; Home Tool&nbsp; Markup Language</p>', '<p>Hyperlinks and Text Markup Language</p>', '<p>Hyper Text Markup Language</p>', '<p>Hyper Tool Markup Language</p>', '<p>&nbsp; Hyper Tricks Markup Language</p>', 'C'),
(37, 'A000000012', '16', '<p>Siapa yang mengembangkan Sejarah Web pertama kali...</p>', '<p>Ruben&nbsp;</p>', '<p>Thomas Alpha Edison</p>', '<p>Tim Berners-Lee&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>', '<p>Albert Einstein</p>', '<p>Steward</p>', 'C'),
(38, 'A000000013', '16', '<p>Profesi dalam pengembangan web, kecuali...</p>', '<p>Web Developer&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>', '<p>Web Programer</p>', '<p>Web Designer&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>', '<p>Web Administrator</p>', '<p>Web Browser</p>', 'E'),
(39, 'A000000014', '16', '<p>Pada tanggal brapa www dapat di gunakan gratis.....</p>', '<p>20 april 1993&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /><br /></p>', '<p>27 april 1993&nbsp;<br /><br /></p>', '<p>20 april 1993<br /><br /></p>', '<p>25 april 1995&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /><br /></p>', '<p>30 april 1993</p>', 'E'),
(40, 'A000000015', '16', '<p>Yang dimaksud dengan halaman Web adalah<br /><br /></p>', '<p>Halaman elektronik yang dibuka dengan email<br /><br /></p>', '<p>Halaman online bisa di download<br /><br /></p>', '<p>Halaman digital yang dibuka dengan web browser<br /><br /></p>', '<p>Halaman digital yang berisi berbagai jenis data dan gambar.<br /><br /></p>', '<p>Digital online yang terhubung dengan internet</p>', 'C'),
(41, 'A000000016', '16', '<p>Tahun berapa web di buat?<br /><br /></p>', '<p>1993<br /><br /></p>', '<p>1999<br /><br /></p>', '<p>1945<br /><br /></p>', '<p>1898<br /><br /></p>', '<p>1991</p>', 'E'),
(42, 'A000000017', '16', '<p>Kegiatan menulis html di sebut?</p>', '<p>Nulis<br /><br /></p>', '<p>Coding<br /><br /></p>', '<p>Ngetik<br /><br /></p>', '<p>Gambar<br /><br /></p>', '<p>Html</p>', 'B'),
(43, 'A000000018', '16', '<p>Browser bawaan dari windows adalah ?</p>', '<p>Opera mini.<br /><br /></p>', '<p>Mozila<br /><br /></p>', '<p>Safari<br /><br /></p>', '<p>Chrome<br /><br /></p>', '<p>Internet Explorer</p>', 'E'),
(44, 'A000000019', '16', '<p>Bahasa Pemrograman yg biasa digunakan untuk membuat halaman web adalah pengertian dari ?</p>', '<p>HTML<br /><br /></p>', '<p>Web<br /><br /></p>', '<p>Program<br /><br /></p>', '<p>INTERNET<br /><br /></p>', '<p>WWW</p>', 'A'),
(45, 'A000000020', '16', '<p>Apa kepanjangan WWW ?</p>', '<p>World Wide Web<br /><br /></p>', '<p>Wide World Web<br /><br /></p>', '<p>Web Wide World<br /><br /></p>', '<p>World Web Wide<br /><br /></p>', '<p>Web World Wide</p>', 'A'),
(46, 'A000000021', '16', '<p>Membuat tabel adalah fungsi dari ?</p>', '<p>&lt;TABLE&gt;<br /><br /></p>', '<p>&lt;HTML&gt;<br /><br /></p>', '<p>&lt;HEAD&gt;<br /><br /></p>', '<p>&lt;IL&gt;<br /><br /></p>', '<p>&lt;BR&gt;</p>', 'A'),
(47, 'A000000022', '16', '<p>Apa Fungsi atribut &ldquo;align&rdquo; dalam HTML ?</p>', '<p>Mengatur panjang&nbsp;&nbsp;<br /><br /></p>', '<p>Tebal garis tepi&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /><br /></p>', '<p>Perataan tabel<br /><br /></p>', '<p>mengatur lebar&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /><br /></p>', '<p>Warna latar belakang</p>', 'C'),
(48, 'A000000023', '16', '<p>Untuk menampilkan data pada setiap sel tabel data disebut ?</p>', '<p>Table Data<br /><br /></p>', '<p>Table Row<br /><br /></p>', '<p>Portable<br /><br /></p>', '<p>Tabel Kimia<br /><br /></p>', '<p>Tabel Biologi</p>', 'A'),
(49, 'A000000024', '16', '<p>Ukuran Border dalam &hellip;.?</p>', '<p>KM/H<br /><br /></p>', '<p>CM<br /><br /></p>', '<p>Liter<br /><br /></p>', '<p>Pixel<br /><br /></p>', '<p>Mph</p>', 'D'),
(50, 'A000000025', '16', '<p>apa fungsi dari &lt;center&gt; adalah.....</p>', '<p>menampilkan informasi&nbsp;&nbsp;&nbsp;<br /><br /></p>', '<p>tulisan strong&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br /><br /></p>', '<p>mempertebal tulisan<br /><br /></p>', '<p>rata tengah&nbsp;&nbsp;&nbsp;<br /><br /></p>', '<p>mendefinisikan table</p>', 'D'),
(51, 'A000000026', '17', '<p>Type data&nbsp;dibawah &nbsp;ini, yang tidak termasuk dalam tipe data sederhana tunggal, adalah :</p>', '<p>Boolean<br /><br /></p>', '<p>Integer<br /><br /></p>', '<p>String<br /><br /></p>', '<p>float<br /><br /></p>', '<p>Char</p>', 'B'),
(52, 'A000000027', '17', '<p>&nbsp;==,&nbsp;&lt;=,&nbsp;&gt;=,&nbsp;!=,&nbsp;termasuk&nbsp;dalam&nbsp;operator&nbsp;&hellip;&nbsp;</p>', '<p>Aritmatika&nbsp;</p>', '<p>Relasi <br /><br /></p>', '<p>Unary</p>', '<p>Bitwise<br /><br /></p>', '<p>Binary</p>', 'B'),
(53, 'A000000028', '17', '<p>Type&nbsp;data&nbsp;yang&nbsp;menghasilkan&nbsp;bentuk&nbsp;keluaran&nbsp;nilai&nbsp;Truedan&nbsp;False(Benar&nbsp;dan&nbsp;Salah)&nbsp;,&nbsp;&nbsp;adalah&nbsp;:</p>', '<p>Boolean</p>', '<p>Integer<br /><br /></p>', '<p>String&nbsp;</p>', '<p>float<br /><br /></p>', '<p>Char</p>', 'A'),
(54, 'A000000029', '17', '<pre> void main()<br /> {<br /> ....(a).... x,y,z;<br /> clrscr();<br /> cout &lt;&lt;&ldquo;\n input nilai X=&ldquo;; cin &gt;&gt; x;<br /> cout &lt;&lt;&ldquo;\n input nilai Y=&ldquo;; cin &gt;&gt; y;<br /> z = x + y;<br /> cout &lt;&lt;&ldquo;\n hasil penjumlahan =&ldquo; &lt;&lt; z;<br /> getch(); <br /> } <br /> <br /> </pre>\n<p>Tipe data yang tepat untuk (a) adalah &hellip;.</p>', '<p>Bolean</p>', '<p>String</p>', '<p>Array</p>', '<p>Integer</p>', '<p>Char</p>', 'D'),
(55, 'A000000030', '17', '<pre>void main()<br /> {<br /> int r = 10; int s;<br /> clrscr();<br /> s = 10 + ++r;<br /> cout &lt;&lt;&ldquo;r = &ldquo;&lt;&lt; r &lt;&lt; &lsquo;\n&rsquo;;<br /> cout &lt;&lt;&ldquo;s = &ldquo;&lt;&lt; s &lt;&lt; &lsquo;\n&rsquo;; <br /> getch(); <br /> } <br /><br /></pre>\n<p>&nbsp;Hasil&nbsp;eksekusi&nbsp;dari&nbsp;program&nbsp;diatas&nbsp;adalah&nbsp;&hellip;</p>', '<p>r&nbsp;=&nbsp;12,&nbsp;s&nbsp;=&nbsp;21</p>', '<div class=\"p0\">r&nbsp;=&nbsp;10,&nbsp;s&nbsp;=&nbsp;20</div>\n<div class=\"p0\">&nbsp;</div>', '<div class=\"p0\">r&nbsp;=&nbsp;11,&nbsp;s&nbsp;=&nbsp;20</div>', '<div class=\"p0\">r&nbsp;=&nbsp;10,&nbsp;s&nbsp;=&nbsp;21</div>\n<div class=\"p0\">&nbsp;</div>', '<div class=\"p0\">r&nbsp;=&nbsp;11,&nbsp;s&nbsp;=&nbsp;21</div>\n<p>&nbsp;</p>', 'E'),
(56, 'A000000031', '17', '<p>Setiap elemen dari &nbsp;sebuah Array haruslah mempunyai type data yang sama, termasuk dalam karakteristik array yaitu :</p>', '<div class=\"p0\">Statis</div>', '<div class=\"p0\">Heterogen&nbsp;</div>\n<div class=\"p0\">&nbsp;</div>', '<div class=\"p0\">Dinamis</div>', '<div class=\"p0\">Homogen&nbsp;</div>\n<div class=\"p0\">&nbsp;</div>', '<p>Terurut&nbsp;</p>', 'D'),
(57, 'A000000032', '17', '<div class=\"p0\">Array&nbsp;yang&nbsp;sering&nbsp;digunakan&nbsp;dalam&nbsp;menterjemahkan&nbsp;matriks&nbsp;pada&nbsp;pemrograman,&nbsp;adalah&nbsp;array&nbsp;berdimensi&nbsp;:</div>\n<div class=\"p0\">&nbsp;</div>', '<div class=\"p0\">Satu</div>', '<div class=\"p0\">Satu&nbsp;dan&nbsp;Dua&nbsp;</div>\n<div class=\"p0\">&nbsp;</div>', '<div class=\"p0\">Dua&nbsp;</div>', '<div class=\"p0\">Satu&nbsp;dan&nbsp;Tiga&nbsp;</div>\n<div class=\"p0\">&nbsp;</div>', '<p>Tiga</p>', 'C'),
(58, 'A000000033', '17', '<p>Contoh aplikasi array dimensi dua adalah&hellip;..<br /><br /></p>', '<p>Input data suhu <br /><br /></p>', '<p>Input nama hari <br /><br /></p>', '<p>Input nilai ipk mahasiswa</p>\n<p>&nbsp;</p>', '<p>Input nama bulan</p>', '<p>Input nilai mahasiswa perkelas dan matakuliah</p>', 'E'),
(59, 'A000000034', '17', '<p>Terdapat Array : A [5][4] maka jumlah elemen Array tersebut adalah &hellip;&hellip;<br /><br /></p>', '<p>20<br /><br /></p>', '<p>35 <br /><br /></p>', '<p>9<br /><br /></p>', '<p>15 <br /><br /></p>', '<p>21</p>', 'A'),
(60, 'A000000035', '17', '<p>Diketahui c dan lokasi awal terletak di alamat 00F(H), maka lokasi A[3] adalah &hellip;..<br /><br /></p>', '<p>00FC(H) <br /><br /></p>', '<p>017(H) <br /><br /></p>', '<p>071(H)<br /><br /></p>', '<p>01B(H) <br /><br /></p>', '<p>111(H)</p>', 'B'),
(61, 'A000000036', '17', '<p>Array yang sangat banyak elemen nol-nya, dikenal sebagai :<br /><br /></p>', '<p>Upper tringular Array <br /><br /></p>', '<p>Lower tringular Array <br /><br /></p>', '<p>Sparse Array<br /><br /></p>', '<p>One Dimensional Array<br /><br /></p>', '<p>Multi Dimensional Array</p>', 'C'),
(62, 'A000000037', '17', '<p>Array yang seluruh elemen dibawah diagonal utamanya = 0, dikenal sebagai :<br /><br /></p>', '<p>Upper tringular Array <br /><br /></p>', '<p>Lower tringular Array <br /><br /></p>', '<p>Sparse Array<br /><br /></p>', '<p>One Dimensional Array<br /><br /></p>', '<p>Multi Dimensional Array</p>', 'A'),
(63, 'A000000038', '17', '<p>Terdapat Array : A [3][4][5] maka jumlah elemen Array tersebut adalah &hellip;&hellip;<br />&nbsp;</p>', '<p>25 <br /><br /></p>', '<p>35 <br /><br /></p>', '<p>12 <br /><br /></p>', '<p>15 <br /><br /></p>', '<p>60</p>', 'E'),
(64, 'A000000039', '17', '<p>Diketahui suatu array segitiga memiliki 4 baris dan kolom. Jumlah elemen yang bukan nol pada array segitiga tersebut adalah &hellip;.. <br /><br /></p>', '<p>20 <br /><br /></p>', '<p>10 <br /><br /></p>', '<p>8 <br /><br /></p>', '<p>4<br /><br /></p>', '<p>16</p>', 'B'),
(65, 'A000000040', '17', '<p>Perintah IsFull pada antrian digunakan untuk :<br /><br /></p>', '<p>Memeriksa apakah antrian sudah penuh<br /><br /></p>', '<p>Memeriksa apakah Antrian penuh atau kosong <br /><br /></p>', '<p>Menambahkan elemen ke dalam Antrian<br /><br /></p>', '<p>Menghapus elemen dari dalam Antrian<br /><br /></p>', '<p>Memeriksa apakah antrian sudah kosong</p>', 'A'),
(66, 'A000000041', '17', '<p><img src=\"../data/logo amikom terbaru.png\" alt=\"\" width=\"50\" height=\"50\" /></p>\n<p>ini gambar apa?</p>', '<p>logo amikom</p>', '<p>logo&nbsp;</p>', '<p>log baru</p>', '<p>logo lam</p>', '<p>logo baru amikom</p>\n<p><img src=\"../data//logo amikom terbaru.png\" alt=\"\" width=\"50\" height=\"50\" /></p>', 'E');

-- --------------------------------------------------------

--
-- Table structure for table `status_ujian`
--

CREATE TABLE `status_ujian` (
  `id` int(5) NOT NULL,
  `status` varchar(100) DEFAULT NULL,
  `ket` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `status_ujian`
--

INSERT INTO `status_ujian` (`id`, `status`, `ket`) VALUES
(1, '1', 'sudah ujian'),
(2, '2', 'belum ujian');

-- --------------------------------------------------------

--
-- Table structure for table `testimoni`
--

CREATE TABLE `testimoni` (
  `id` int(10) NOT NULL,
  `id_userk` varchar(50) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `status` varchar(4) NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `testimoni`
--

INSERT INTO `testimoni` (`id`, `id_userk`, `nama`, `isi`, `status`) VALUES
(3, 'U000000004', NULL, '<p>wah ujian onlinenya mudah digunakan tidak bikin bingung, desain yang elegan dan bagus. sukses ya kak ^_^</p>', 'Y'),
(4, 'U000000006', NULL, '<p>wah keren kak, aku suka sama sistemnya. jadi kita daftar terus login, ngerjain soal terus kita langsung bisa lihat nilai kita dan langsung print.&nbsp;</p>', 'Y'),
(5, 'U000000008', NULL, '<p>user friendly banget min web elearningnya. soalnya sama yang lain beda. aku sama temenku ngerjain bareng saling bersebelahan ternyata soalnya aku dan temenku beda min. jadi ga bisa nyontek heheeh</p>', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `ujianku`
--

CREATE TABLE `ujianku` (
  `id` int(10) NOT NULL,
  `nama_ujian` varchar(200) DEFAULT NULL,
  `id_matkul` varchar(20) DEFAULT NULL,
  `jsoal` int(20) DEFAULT NULL,
  `penilaian` int(20) DEFAULT NULL,
  `kkm` int(20) DEFAULT NULL,
  `waktu` varchar(30) DEFAULT NULL,
  `aktif` varchar(20) DEFAULT NULL,
  `mode_soal` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `ujianku`
--

INSERT INTO `ujianku` (`id`, `nama_ujian`, `id_matkul`, `jsoal`, `penilaian`, `kkm`, `waktu`, `aktif`, `mode_soal`) VALUES
(16, '17', '12', 10, 100, 70, '5400', '1', '1'),
(17, '17', '13', 10, 100, 60, '3600', '1', '1'),
(18, '17', '14', 5, 100, 70, '1800', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(5) NOT NULL,
  `id_user` int(20) NOT NULL,
  `firstn` varchar(100) NOT NULL,
  `lastn` varchar(100) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(20) NOT NULL,
  `nomerhp` varchar(30) NOT NULL,
  `dp` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `id_user`, `firstn`, `lastn`, `username`, `password`, `email`, `nomerhp`, `dp`) VALUES
(2, 1, 'andy', 'saputra', 'andy', '3e6b357c63aad7b8400b187c46af57cf', 'andygrap@gmail.com', '081331294812', '11.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `usergarap`
--

CREATE TABLE `usergarap` (
  `id` int(5) NOT NULL,
  `id_userk` varchar(20) NOT NULL,
  `firstn` varchar(100) NOT NULL,
  `lastn` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `dp` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `usergarap`
--

INSERT INTO `usergarap` (`id`, `id_userk`, `firstn`, `lastn`, `username`, `password`, `email`, `dp`) VALUES
(9, 'U000000004', 'pevitaa', 'cantiknya', 'pevita.pearce', '8aba54558e5934da857f88c56988b726', 'pevitapearce@gmail.com', 'pevita-pearce-121123b.jpg'),
(11, 'U000000006', 'muhammad', 'satrio', 'm.sae', '82cfbbdd5389dca9c0f11df9a17ff952', 'msae@gmail.com', '11825595_826463950801514_975515839751437886_n.jpg'),
(15, 'U000000007', 'andy', 'saputra', 'andyptra', '3e6b357c63aad7b8400b187c46af57cf', 'andygrap@gmail.com', '11.jpg'),
(16, 'U000000008', 'andy', 'saputra', 'andy.ptra', 'aa84720019a8e9662d929fd829077745', 'a@gmail.com', '11.jpg'),
(17, 'U000000009', 'wawa', 'wawa', 'waw.waw', 'cfb59de35ba285b8d2294161764fc60a', 'waw@gmail.com', 'pevita_pearce-20151206-005-akrom.jpg'),
(18, 'U000000010', 'F', 'K', 'Shy2xcat', '5df10720e7572864fde3a981c82b182e', 'Shy2xcat@yahoo.com', 'IMG_20160515_070944.jpg'),
(19, 'U000000011', 'muhammad', 'satrio', 'muhammad.satrio', 'b6411607eec60f150747123b5d8306f1', 'mhmmd.strio@gmail.com', '800x400-hearts-and-memories.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `waktu`
--

CREATE TABLE `waktu` (
  `id` int(10) NOT NULL,
  `detik` varchar(100) NOT NULL,
  `waktu` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `waktu`
--

INSERT INTO `waktu` (`id`, `detik`, `waktu`) VALUES
(1, '1800', '30 menit'),
(2, '3600', '1 jam'),
(3, '5400', '1 setengah jam'),
(4, '7200', '2 jam');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aktif`
--
ALTER TABLE `aktif`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cat_post`
--
ALTER TABLE `cat_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dujian`
--
ALTER TABLE `dujian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hasil_jwb`
--
ALTER TABLE `hasil_jwb`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`id_matkul`);

--
-- Indexes for table `mode`
--
ALTER TABLE `mode`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `profil`
--
ALTER TABLE `profil`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `soal`
--
ALTER TABLE `soal`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_ujian`
--
ALTER TABLE `status_ujian`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `testimoni`
--
ALTER TABLE `testimoni`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ujianku`
--
ALTER TABLE `ujianku`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usergarap`
--
ALTER TABLE `usergarap`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `waktu`
--
ALTER TABLE `waktu`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aktif`
--
ALTER TABLE `aktif`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `cat_post`
--
ALTER TABLE `cat_post`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `dujian`
--
ALTER TABLE `dujian`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `hasil_jwb`
--
ALTER TABLE `hasil_jwb`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `matakuliah`
--
ALTER TABLE `matakuliah`
  MODIFY `id_matkul` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `mode`
--
ALTER TABLE `mode`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `profil`
--
ALTER TABLE `profil`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `soal`
--
ALTER TABLE `soal`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT for table `status_ujian`
--
ALTER TABLE `status_ujian`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `testimoni`
--
ALTER TABLE `testimoni`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `ujianku`
--
ALTER TABLE `ujianku`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `usergarap`
--
ALTER TABLE `usergarap`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `waktu`
--
ALTER TABLE `waktu`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `film`
--
CREATE DATABASE IF NOT EXISTS `film` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `film`;

-- --------------------------------------------------------

--
-- Table structure for table `aktor`
--

CREATE TABLE `aktor` (
  `id_aktor` int(11) NOT NULL,
  `nama_aktor` varchar(255) NOT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `negara_asal` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `film`
--

CREATE TABLE `film` (
  `id_film` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `tahun_rilis` int(11) DEFAULT NULL,
  `id_genre` int(11) DEFAULT NULL,
  `durasi` int(11) DEFAULT NULL,
  `sutradara` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `genre`
--

CREATE TABLE `genre` (
  `id_genre` int(11) NOT NULL,
  `nama_genre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aktor`
--
ALTER TABLE `aktor`
  ADD PRIMARY KEY (`id_aktor`);

--
-- Indexes for table `film`
--
ALTER TABLE `film`
  ADD PRIMARY KEY (`id_film`);

--
-- Indexes for table `genre`
--
ALTER TABLE `genre`
  ADD PRIMARY KEY (`id_genre`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `aktor`
--
ALTER TABLE `aktor`
  MODIFY `id_aktor` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `film`
--
ALTER TABLE `film`
  MODIFY `id_film` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `genre`
--
ALTER TABLE `genre`
  MODIFY `id_genre` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `food_recipe`
--
CREATE DATABASE IF NOT EXISTS `food_recipe` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `food_recipe`;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(32) NOT NULL,
  `created_time` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `modified_time` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`category_id`, `category_name`, `created_time`, `modified_time`) VALUES
(1, 'Lunch', '2024-03-04 03:08:35.000000', '2024-03-04 03:08:35.000000'),
(2, 'Breakfast', '2024-03-04 03:08:35.000000', '2024-03-04 03:08:35.000000'),
(3, 'Dinner', '2024-03-04 03:08:35.000000', '2024-03-04 03:08:35.000000'),
(4, 'Snack', '2024-03-04 03:08:35.000000', '2024-03-04 03:08:35.000000');

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
-- Table structure for table `levels`
--

CREATE TABLE `levels` (
  `level_id` int(11) NOT NULL,
  `created_time` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `level_name` varchar(32) NOT NULL,
  `modified_time` timestamp(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`level_id`, `created_time`, `level_name`, `modified_time`) VALUES
(1, '2024-03-04 03:08:35.000000', 'Master Chef', '2024-03-04 03:08:35.000000'),
(2, '2024-03-04 03:08:35.000000', 'Hard', '2024-03-04 03:08:35.000000'),
(3, '2024-03-04 03:08:35.000000', 'Medium', '2024-03-04 03:08:35.000000'),
(4, '2024-03-04 03:08:35.000000', 'Easy', '2024-03-04 03:08:35.000000');

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
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(7, '2019_08_19_000000_create_failed_jobs_table', 1),
(8, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
-- Table structure for table `recipes`
--

CREATE TABLE `recipes` (
  `recipe_id` int(11) NOT NULL,
  `created_time` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `how_to_cook` text NOT NULL,
  `image_filename` varchar(255) DEFAULT NULL,
  `ingredient` text NOT NULL,
  `modified_time` timestamp(6) NOT NULL DEFAULT current_timestamp(6),
  `recipe_name` varchar(255) NOT NULL,
  `time_cook` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `level_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recipes`
--

INSERT INTO `recipes` (`recipe_id`, `created_time`, `how_to_cook`, `image_filename`, `ingredient`, `modified_time`, `recipe_name`, `time_cook`, `category_id`, `level_id`, `user_id`) VALUES
(1, '2024-03-20 20:08:35.000000', '1. Potong ayam dadu kecil. Ambil 3 sdm tepung bumbu serbaguna. Beri sedikit air, aduk rata. Masukkan ayam, aduk rata kembali. Marinasi selama 15-30 menit.\r\n2. Siapkan sisa tepung bumbu tadi. Masukkan ayam kedalam tepung kering, kocok-kocok sampai ayam terbalut rata dengan tepung.\r\n3. Panaskan minyak goreng. Goreng ayam dengan api sedang sampai kuning keemasan. Angkat dan tiriskan.\r\n4. Cincang halus bawang putih, iris tipis bawang merah dan daun bawang.\r\n5. Panaskan margarin, tumis bawang merah dan bawang putih sampai wangi dan layu. Tambahkan kecap manis, kecap inggris, saus tiram, gula dan garam. Tambahkan juga sedikit air, aduk rata dan koreksi rasa.\r\n6. Masak dengan api besar sampai mengental. Masukkan ayam goreng dan irisan daun bawang. Aduk cepat, siap disajikan. ', 'https://cookcookgo.com/wp-content/uploads/2022/06/1-min.png', '250 gr ayam fillet\r\n7 sdm tepung bumbu serbaguna\r\n2 siung bawang putih\r\n1 siung bawang merah\r\n1 sdm mentega atau margarin\r\n1 sdm saus tiram\r\n1 sdm kecap manis\r\n1 sdm kecap inggris\r\n1 batang daun bawang, ambil hijaunya saja\r\nSecukupnya gula dan garam\r\nSecukupnya air\r\nSecukupnya minyak goreng', '2024-03-20 20:08:35.000000', 'Ayam Krispi Mentega Korea', 60, 1, 3, 1),
(2, '2024-03-20 20:08:35.000000', '1. Pecahkan 1 butir telur tambahkan 70 gr gula pasir dan vanili secukupnya\r\n2. Kemudian kocok hingga tercampur merata\r\n3. Tambahan tepung terigu, baking powder, dan baking soda (ketika memasukkan sambil disaring)\r\n4. Tambahkan skm dan air lalu aduk hingga tercampur merata\r\n5. Diamkan adonan selama 1 jam\r\n6. Siapkan alat cetak dan panaskan\r\n7. Jika cetakan sudah panas ambil 1 centong kecil adonan dan cetak bentuk hingga pinggirnya menjadi kaya mangkuk\r\n8. Tunggu adonan sampai berlubang lubang dan tambahkan gula pasir diatasnya\r\n9. Tutup menggunakan tutupan cetakan\r\n10. Setelah matang angkat dan beri mentega lalu beri toping sesuai selera', 'https://asset.kompas.com/crops/bosZeTzhHy8I0C9P3WDBPkcAxV4=/73x34:1201x786/750x500/data/photo/2021/01/12/5ffd284aa55f4.jpg', '1 butir telur\r\n70 gr gula pasir\r\n250 gr tepung terigu\r\n50 gr tepung tapioka\r\n1/2 sdt baking soda\r\n1/2 sdt baking powder\r\n1 sachet susu kental manis\r\n350 ml air\r\nsecukupnya vanili\r\nsesuai selera toping\r\nsecukupnya gula\r\nmentega buat olesan', '2024-03-20 20:08:35.000000', 'Martabak Mini', 30, 4, 4, 2),
(4, '2024-03-20 20:08:35.000000', '1. Tepung Pisang Goreng Gluten Free Ladang Lima, bubuk minum1. Masukan daging ikan,bawang bombay,bamer yg sudah di goreng,baput,dan telur kedalam cooper,gula,garam,kaldu,ladagiling daging ikan sampai halus\r\n2. Masukan irisan daun bawang cooper sebentar ajah\r\n3. Tuang adonan kedalam wadah,lalu campurkan tepung tepungan kedalam wadah lalu aduk rata,sampai rata saja dan tdk usah di aduk lagi\r\n4. Ambil lembaran kulit dimsum atau pangsit,ambil 1sdt adonan lipat seperti adonan dimsum lalu goreng atau bisa juga dikulu sesuai selera,bisa si cocol pakai saus atau pakai kuah kacangan coklat dan margarin.', 'https://ik.imagekit.io/tvlk/blog/2023/12/batagor-shutterstock.jpg?tr=dpr-2.625,h-320,q-25,w-320', '100 gr ikan tongkol\r\n1 butir telur\r\n1/2 bawang bombay (iris2)\r\n2 siung bawang putih\r\n3 siung bawang merah goreng\r\n100 gr tepung tapioka\r\n50 gr tepung terigu\r\n1 sdm minyak goreng\r\n1 batang daun bawang\r\n1/2 sdt lada,1sdt garam,1sdt kaldu bubuk,dan sedikit gula\r\n10 lembar Kulit dimsum atau kulit lumpia', '2024-03-20 20:08:35.000000', 'Batagor', 90, 4, 2, 5),
(5, '2024-03-20 20:08:35.000000', '1. Chop/giling ayam bersama minyak wijen, telur dan baput cincang goreng\r\n2. Siapkan wadah campurkan dengan bahan campuran, aduk rata, test rasa\r\n3. Siapkan kulit dimsum. Lipat2, cubit memutar\r\n4. Kukus selama +-25 menit. +- jadi 20 dimsum\r\n5. Bikin saosnya, haluskan cabe dan duo bawang\r\n6. Tumis smpai harum, masukan air, tambahkan saos, dan bumbui dgn gula, garam, kaldu bubuk. Manis pedes asin rasanya\r\n7. Siap disajikan', 'https://awsimages.detik.net.id/community/media/visual/2022/01/24/resep-siomay-ayam_43.jpeg?w=600&q=90', '400 gr dada ayam tanpa tulang\r\n2 sdm minyak wijen/minyak goreng boleh\r\n1 putih telur\r\n4 baput cincang goreng\r\n\r\nBahan campuran\r\n2 sdm saos tiram\r\n100 gr tapioka/kanji\r\n1 wortel parut/potong halus\r\n2 batang daun bawang iris halus\r\n1 bungkus masako/kaldu bubuk\r\n1/2 sdt garam, 1/2 sdt lada bubuk, 1 sdt gula(sesuaikam selera)\r\n\r\nBahan Saos Cocolan\r\n3 rawit (sesuai selera)\r\n2 baput 1 bamer\r\n2 cabe merah besar\r\n200 ml air\r\nselera gula, garam, kaldu bubuk sesuaikan\r\n3 sdm saos sambal\r\n2 sdm saos tomat\r\n\r\nBahan olesan minyak\r\n1 sdm air+1 sdm minyak goreng', '2024-03-20 20:08:35.000000', 'Dimsum Ayam', 120, 3, 2, 7),
(6, '2024-03-27 21:37:25.701695', '1. Siapkan bahan. buat adonan beef patty. taruh dalam bowl besar: daging giling, perbumbuan seperti lada garam onion powder dan garlic powder, 1/2 butir telur yang sudah dikocok, tepung roti secukupnya untuk perekat. campurkan semua dan bentuk adonan seperti pada foto\r\n2. Panggang roti burger dengan mentega hingga kecoklatan. sembari menunggu bisa buat sauce\r\n3. Untuk membuat sauce, campurkan pickled gherkins yang sdh dicincang, saus cabe, saus tomat, 1 sdm saus inggris beri sejumput gula. koreksi rasa\r\n4. Untuk onion boleh mentah, tapi saya lebih suka dibuat caramelized onion. iris tipis bawang bombay lalu tumis dengan minyak pada api sedang hingga layu & transparant. beri bumbu lada garam garlic powder dan daun thyme secukupnya. Kecilkan api, dan masak bawang hingga kecokelatan sambil sesekali diaduk dan tambahkan butter lalu matikan api\r\n5. Grill beef patty dengan api kecil, setelah dirasa setengah matang balikkan Balikkan patty dan beri keju slice diatasnya lalu masak hingga matang dan keju meleleh. Patty bisa ditutup dengan pan supaya keju cepat meleleh\r\n6. Susun roti burger. olesi roti dengan sauce lalu tambahkan irisan tomat, icebercg lettuce, beef patty dan keju, caramelized onion, beri sauce diatasnya dan tutup dengan roti burger', 'https://awsimages.detik.net.id/community/media/visual/2022/07/03/resep-cheese-burger-ala-amerika.jpeg?w=600&q=90', '3 buah roti burger\r\nkeju slice (saya pakai prochiz quick melt)\r\n1 buah tomat, iris\r\nlettuce (saya pakai iceberg lettuce)\r\n\r\nbeef patty\r\n250 gr daging giling\r\n1/2 butir telur\r\nsecukupnya tepung roti\r\nbumbu: garam, lada hitam, onion powder, garlic powder\r\n\r\ncaramelized onion\r\n1/2 siung bawang bombay ukuran sedang\r\n10 gr unsalted butter\r\nbumbu: lada, garam, garlic powder, daun thyme\r\n\r\nSauce\r\n70 gr kewpie mayonais\r\n1 sdm chili sauce\r\n1 sdm saus tomat\r\nsejumput gula\r\n2 sdm pickled gherkins\r\n1 sdm kecap inggris (worcestershire sauce)', '2024-03-27 21:37:25.701695', 'Cheese Burger', 60, 3, 1, 9),
(7, '2024-03-27 21:40:00.891785', '1. Orak arik telur sisihkan\r\n2. Tuang sedikit minyak tumis bawang merah bawang putih sampe harum\r\n3. Masukkan udang bolak balik disusul bakso sosis jagung manis daun bawang\r\n4. Masukkan kecap ikan kecap asin kecap manis saus tiram gula lada telur orak arik aduk cepat\r\n5. Kemudian masukkan nasi. Masak dengan api besar. Koreksi rasa lalu sajikan ', 'https://static.promediateknologi.id/crop/0x0:0x0/0x0/webp/photo/p2/01/2024/01/20/Cuplikan-layar-2024-01-19-233507-4041877617.jpg', '2 piring nasi dingin\r\n2 butir telur\r\n1 buah sosis\r\n4 butir bakso\r\n4 ekor udang\r\n2 sdm jagung manis yg sudah direbus\r\n3 siung bawang merah halus\r\n2 siung bawang putih halus\r\n1 batang Daun bawang potong²\r\n2 sdm kecap ikan\r\n1 sdm saus tiram\r\n1 sdm kecap manis\r\n1/2 sdm kecap asin\r\n1/2 sdt gula\r\n1/2 sdt lada\r\nMinyak goreng\r\nPelengkap\r\nAcar & kerupuk', '2024-03-27 21:40:00.891785', 'Nasi Goreng Sol Sol', 30, 3, 3, 8),
(8, '2024-03-31 21:40:34.324635', '\r\n\r\n1. Haluskan bamer, kemiri yg sudah disangrai, baput, jahe, kunyit\r\n2. Tumis bumbu halus hingga matang masukan serai yg sudah digeprek, daun jeruk, daun salam, kembang lawang dan cengkeh\r\n3. Masukan ayam dan tetelan haduk dan tambahkan air, masukan kaldu bubuk, garam,santan dan lada halus masak hingga ayam matang\r\n4. Setelah ayam matang, angkat ayam dan tiriskan\r\n5. Masukan susu full cream masak lagi hingga mendidih.. Dan koreksi rasa\r\n6. Goreng ayam yg sudah ditiriskan tadi. Dan goreng kentang yg sudah di kupas dan di potonh dadu\r\n7. Setelah digoreng dan kuah soto sudah pas rasanya dan sudah mendidih matikan kompor lalu racik soto ke dalam mangkuk\r\n8. Tambahkan suwiran ayam didalam mangkuk, kentang, kecap,daun bawang dan perasan jeruk limau/nipis\r\n9. Tambahkan kuah soto dan tetelan juga tambahkan sambal (cara buat sambal hanya cabai direbus dan dihaluskan)\r\n10. Tambahkan bawang goreng dan emping.. Soto siap untuk disajikan', 'https://cdn.idntimes.com/content-images/post/20210805/soto-9951b641e9b743df138713f6b1a7f2f9_600x400.jpg', '1/2 kg dada ayam fillet\r\n1/2 KG tetelan daging sapi\r\n3 buah kentang\r\n5 siung Bamer, 4 siung baput, 4 butir kemiri, lada bubuk secukupnya, kembang lawang, cengkeh, kunyit 1 ruas jari, jahe 1 ruas jari, 2 batang serai, daun salam dan daun jeruk\r\nsecukupnya Emping melinjo\r\nSantan instan 1 buah. Susu full cream 300 ml, air putih 700ml', '2024-03-31 21:40:34.324635', 'Soto Betawi', 70, 1, 1, 9),
(9, '2024-04-01 01:22:14.724293', '1. Pertama-tama buat biang terlebih dahulu. Haluskan bawang putih dan ebi, sampai benar benar halus. Lalu tuang 2 gelas air, beri kaldu bubuk, garam, dan micin aduk. Kemudian tambahkan terigu lalu masak sambil terus diaduk sampai adonan matang.\r\n2. Tuang adonan ke dalam wadah lalu tunggu dingin. Setelah dingin masukan 1 butir telur kemudian aduk sampai tercampur merata.\r\n3. Lalu bisa masukan tapioka sedikit sedikit sampai habis dan uleni adonan sampai kalis. Adonan pempek siap dicetak.\r\n4. Kocok dua telur dalam wadah, kemudian cetak menyerupai pempek kapal selam, beri isi telur, kemudian tutup kembali. Cetak lagi menyerupai stik untuk membuat pempek lenjer.\r\n5. Rebus adonan yang telah dicetak, sampai mengapung dan matang. Kemudian tiriskan dan baluri dengan minyak agar tak lengket. Adonan siap digoreng.\r\n6. Kemudian buat cuko dengan merebus 500 ml air dengan gula, sampai mendidih.\r\n7. Lalu, larutkan dua buah asem dengan secukupnya air hangat. Dan tuangkan juga dengan bumbu bawang putih bawang merah dan cabe yang telah di haluskan terlebih dahulu. Lalu berikan garam.\r\n8. Tunggu cuko sampai mengental. Dan cuko siap disajikan.', 'https://asset.kompas.com/crops/LPTbmb14tDCmSay2EAvNihccDv0=/0x47:909x653/750x500/data/photo/2020/11/20/5fb76c4aa04bc.jpg', 'Bahan Pempek\r\n150 gram tepung terigu\r\n2 gelas air\r\n4 siung bawang putih\r\n50 gram Ebi\r\n1 sdt royco\r\n1 sdt garam\r\n1 sdt micin\r\n1 butir telur\r\n400 gram Tepung tapioka\r\n2 butir telur untuk isi kapal selam\r\n\r\nBahan Cuko\r\n2 gandu gula merah/aren (100-150 gram)\r\n2 sdm gula putih\r\n2 buah asem\r\n4 siung bawang putih\r\n2 siung bawang merah\r\n10 gram ebi\r\n10-20 biji cabe rawit hijau\r\n500 ml Air\r\nSecukupnya garam ', '2024-04-01 01:22:14.724293', 'Pempek Ebi', 120, 4, 2, 7),
(10, '2024-07-01 17:04:22.000000', '1. Campur semua bumbu, lalu siram dengan minyak panas, aduk rata.\r\n2. Rebus mie dan tiriskan.\r\n3. Masukkan mie ke dalam bumbu, aduk rata. Tambahkan taburan bawang goreng. Indmie ala Thailand siap untuk di hidangkan. ', 'https://img-global.cpcdn.com/recipes/c998aa067abb9964/680x482cq70/indomie-ala-thailand-foto-resep-utama.jpg', '1 bungkus Indomie goreng\r\n3 buah cabe rawit merah iris\r\n2 buah bawang putih cincang\r\nsecukupnya Daun ketumbar\r\nsecukupnya Jeruk nipis', '2024-07-01 17:04:22.000000', 'INDmie Ala Thai', 5, 1, 4, 2),
(11, '2024-07-28 15:08:45.728143', 'daada', 'dada', 'dada', '2024-07-28 15:08:45.728143', 'dada', 12, 1, 1, 1),
(12, '2024-07-29 02:30:31.283062', 'swa', 's', 'aa', '2024-07-29 02:30:31.283062', 'sdds', 12121, 4, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `fullname` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `fullname`, `role`, `created_at`, `updated_at`) VALUES
(1, 'dendi', '$2y$12$YtYecXt.iInanKMbAwT.YepxQqUfeWs9Asg/un564o4COdVzDrc0q', 'dendi', 'admin', '2024-07-28 08:18:54', '2024-07-28 08:18:54'),
(2, 'dede', '$2y$12$gQiidiu/mmMK9Nua.M3P0.Jqt3xvxtE11RcJnq.QhM/ifLJ9qR9yC', 'dede', 'admin', '2024-07-28 19:56:10', '2024-07-28 19:56:10');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `recipes`
--
ALTER TABLE `recipes`
  ADD PRIMARY KEY (`recipe_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `recipes`
--
ALTER TABLE `recipes`
  MODIFY `recipe_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Database: `formlogin`
--
CREATE DATABASE IF NOT EXISTS `formlogin` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `formlogin`;

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
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

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
--
-- Database: `izin_usaha`
--
CREATE DATABASE IF NOT EXISTS `izin_usaha` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `izin_usaha`;

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `details` text NOT NULL,
  `status` enum('diajukan','dalam peninjauan','disetujui','ditolak') DEFAULT 'diajukan',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `message` text NOT NULL,
  `status` enum('unread','read') DEFAULT 'unread',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `otps`
--

CREATE TABLE `otps` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `otp_code` varchar(6) NOT NULL,
  `expires_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `otps`
--
ALTER TABLE `otps`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `otps`
--
ALTER TABLE `otps`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `applications`
--
ALTER TABLE `applications`
  ADD CONSTRAINT `applications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `otps`
--
ALTER TABLE `otps`
  ADD CONSTRAINT `otps_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
--
-- Database: `lathif`
--
CREATE DATABASE IF NOT EXISTS `lathif` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `lathif`;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `perihal` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `pesan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contact_us`
--

INSERT INTO `contact_us` (`id`, `nama`, `email`, `perihal`, `judul`, `pesan`, `created_at`, `updated_at`) VALUES
(1, 'dendi', 'dendhi83@gmail.com', 'Umpan Balik', 'dsds', 'sdsd', '2024-07-06 03:01:31', '2024-07-06 03:01:31');

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
-- Table structure for table `finance`
--

CREATE TABLE `finance` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `total_pengeluaran` decimal(20,2) NOT NULL DEFAULT 0.00,
  `total_pemasukan` decimal(20,2) NOT NULL DEFAULT 0.00,
  `total_keuntungan` decimal(20,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `finance`
--

INSERT INTO `finance` (`id`, `total_pengeluaran`, `total_pemasukan`, `total_keuntungan`, `created_at`, `updated_at`) VALUES
(1, 29040000.00, 3000000.00, -26040000.00, '2024-06-26 20:03:32', '2025-01-06 00:10:11');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `harga_beli` decimal(14,2) NOT NULL,
  `harga_jual` decimal(14,2) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `jumlah_stok` int(11) NOT NULL,
  `jumlah_terjual` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `inventory`
--

INSERT INTO `inventory` (`id`, `user_id`, `nama_barang`, `harga_beli`, `harga_jual`, `kategori`, `jumlah_stok`, `jumlah_terjual`, `created_at`, `updated_at`) VALUES
(2, 1, '505', 150000.00, 2000000.00, 'Baju', 200, 5, '2024-06-26 23:15:57', '2024-06-26 23:15:57'),
(3, 2, 'kertas EDIT', 1000.00, 15000.00, 'Elektronik', 121, 1, '2024-08-04 19:34:26', '2024-08-04 19:34:26'),
(4, 2, 'baju', 12000.00, 170000.00, 'Elektronik', 12, 2, '2024-08-04 21:38:37', '2024-08-04 21:38:37'),
(6, 5, 'baju', 120000.00, 150000.00, 'Baju', 222, 20, '2025-01-06 00:10:07', '2025-01-06 00:10:07');

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
(5, '2023_05_21_092352_create_inventory_table', 1),
(6, '2023_05_22_021039_create_finance_table', 1),
(7, '2023_05_25_104012_add_column_google_id_to_users_table', 1),
(8, '2023_05_28_135039_create_contact_us_table', 1);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `google_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'dendiiii frantika', 'dendi2@gmail.com', NULL, NULL, '$2y$10$//LYNt99Q7PNfl3DEv3QtevXmj27.yJveqUasJ.FqC.2mWlNUw8t.', NULL, '2024-06-26 18:53:48', '2024-06-26 18:53:48'),
(2, 'agile', 'agil@gmail.com', NULL, NULL, '$2y$10$8Df2MtcVJ92.VAlHpirriepGEeQH8aBO9kL2Bs8VsYAtf/T0xIXku', NULL, '2024-08-04 19:33:47', '2024-08-04 19:33:47'),
(3, 'dendi', 'dendhi83@gmail.com', NULL, NULL, '$2y$10$MENt9F3UZECempBwfkP5COFQ2OEwDfnDCTAi2f7vkqYHlhGkXB8U2', NULL, '2024-11-11 06:42:59', '2024-11-11 06:42:59'),
(4, 'dendi', 'dendi@gmail.com', NULL, NULL, '$2y$10$7hAiGE/jCGACckVP/vUgd.RH/Ap4EOUqH6n0IRXB2lOJFJrQQtMyq', NULL, '2024-11-30 22:15:58', '2024-11-30 22:15:58'),
(5, 'dendi', 'dendi83@gmail.com', NULL, NULL, '$2y$10$BTxrhFVjReQhVnPLOvSN6u0FtW3CSF00QsrMllCXwqvrY/7xJBFn6', NULL, '2025-01-06 00:07:38', '2025-01-06 00:07:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `finance`
--
ALTER TABLE `finance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventory_user_id_foreign` (`user_id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_google_id_unique` (`google_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `finance`
--
ALTER TABLE `finance`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `inventory_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `mbah_jiwo`
--
CREATE DATABASE IF NOT EXISTS `mbah_jiwo` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mbah_jiwo`;

-- --------------------------------------------------------

--
-- Table structure for table `contact_us`
--

CREATE TABLE `contact_us` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `perihal` varchar(255) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `pesan` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `finance`
--

CREATE TABLE `finance` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `total_pengeluaran` decimal(20,2) NOT NULL DEFAULT 0.00,
  `total_pemasukan` decimal(20,2) NOT NULL DEFAULT 0.00,
  `total_keuntungan` decimal(20,2) NOT NULL DEFAULT 0.00,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `finance`
--

INSERT INTO `finance` (`id`, `total_pengeluaran`, `total_pemasukan`, `total_keuntungan`, `created_at`, `updated_at`) VALUES
(1, 19011000.00, 1802000.00, -17209000.00, '2024-06-26 05:36:53', '2024-06-26 05:50:31');

-- --------------------------------------------------------

--
-- Table structure for table `inventory`
--

CREATE TABLE `inventory` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `harga_beli` decimal(14,2) NOT NULL,
  `harga_jual` decimal(14,2) NOT NULL,
  `kategori` varchar(255) NOT NULL,
  `jumlah_stok` int(11) NOT NULL,
  `jumlah_terjual` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(5, '2023_05_21_092352_create_inventory_table', 1),
(6, '2023_05_22_021039_create_finance_table', 1),
(7, '2023_05_25_104012_add_column_google_id_to_users_table', 1),
(8, '2023_05_28_135039_create_contact_us_table', 1);

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `google_id` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `google_id`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@gmail.com', NULL, NULL, '$2y$10$moDIe32M/QuLV3gc0wToiOKBi.DfeCEzmhsG3oPMZqeillAKnZqJu', NULL, '2024-06-26 05:36:06', '2024-06-26 05:36:06'),
(2, 'dendi', 'dendi2@gmail.com', NULL, NULL, '$2y$10$cmM2TLU1tZgXtRyzq6.mXepWGrssh5TCNKVZItgV6O4f5qC0ZQmbO', NULL, '2024-06-26 18:47:29', '2024-06-26 18:47:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact_us`
--
ALTER TABLE `contact_us`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `finance`
--
ALTER TABLE `finance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `inventory`
--
ALTER TABLE `inventory`
  ADD PRIMARY KEY (`id`),
  ADD KEY `inventory_user_id_foreign` (`user_id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD UNIQUE KEY `users_google_id_unique` (`google_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact_us`
--
ALTER TABLE `contact_us`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `finance`
--
ALTER TABLE `finance`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `inventory`
--
ALTER TABLE `inventory`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `inventory`
--
ALTER TABLE `inventory`
  ADD CONSTRAINT `inventory_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
--
-- Database: `mytoko`
--
CREATE DATABASE IF NOT EXISTS `mytoko` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `mytoko`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--
-- Error reading structure for table mytoko.admin: #1932 - Table &#039;mytoko.admin&#039; doesn&#039;t exist in engine
-- Error reading data for table mytoko.admin: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `mytoko`.`admin`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--
-- Error reading structure for table mytoko.kategori: #1932 - Table &#039;mytoko.kategori&#039; doesn&#039;t exist in engine
-- Error reading data for table mytoko.kategori: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `mytoko`.`kategori`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `ongkir`
--
-- Error reading structure for table mytoko.ongkir: #1932 - Table &#039;mytoko.ongkir&#039; doesn&#039;t exist in engine
-- Error reading data for table mytoko.ongkir: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `mytoko`.`ongkir`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--
-- Error reading structure for table mytoko.pelanggan: #1932 - Table &#039;mytoko.pelanggan&#039; doesn&#039;t exist in engine
-- Error reading data for table mytoko.pelanggan: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `mytoko`.`pelanggan`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--
-- Error reading structure for table mytoko.pembayaran: #1932 - Table &#039;mytoko.pembayaran&#039; doesn&#039;t exist in engine
-- Error reading data for table mytoko.pembayaran: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `mytoko`.`pembayaran`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--
-- Error reading structure for table mytoko.pembelian: #1932 - Table &#039;mytoko.pembelian&#039; doesn&#039;t exist in engine
-- Error reading data for table mytoko.pembelian: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `mytoko`.`pembelian`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_produk`
--
-- Error reading structure for table mytoko.pembelian_produk: #1932 - Table &#039;mytoko.pembelian_produk&#039; doesn&#039;t exist in engine
-- Error reading data for table mytoko.pembelian_produk: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `mytoko`.`pembelian_produk`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--
-- Error reading structure for table mytoko.produk: #1932 - Table &#039;mytoko.produk&#039; doesn&#039;t exist in engine
-- Error reading data for table mytoko.produk: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `mytoko`.`produk`&#039; at line 1
--
-- Database: `nilaimahasiswa`
--
CREATE DATABASE IF NOT EXISTS `nilaimahasiswa` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `nilaimahasiswa`;

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `NIM` varchar(200) NOT NULL,
  `nama_mahasiswa` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `jenis_kelamin` int(11) NOT NULL,
  `no_hp` int(11) NOT NULL,
  `tempat_lahir` varchar(200) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `foto` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(20) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `verify_key` varchar(100) DEFAULT NULL,
  `active` int(1) DEFAULT 0,
  `api_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `role`, `email`, `verify_key`, `active`, `api_token`, `created_at`, `updated_at`) VALUES
(1, 'admin', '$2y$10$Du0Uzk5KDyYx5zyxMU.59.vF449HoNJik908X4kNfQZtRlNhOwMfm', 'Administrator', NULL, NULL, 1, 'baWSnZvGD6mcSIOrIkqKSOsvYRphyQZe7S9KPTlLcPR7waLptqWR3t2xJ6y4zS2UcrblxRU8uizVsj9VkYtX954mvknhqI3YQ7qK', '2021-09-10 02:18:45', '2024-05-20 10:45:20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;
--
-- Database: `pakaian`
--
CREATE DATABASE IF NOT EXISTS `pakaian` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pakaian`;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_admin`
--

CREATE TABLE `tabel_admin` (
  `idAdmin` varchar(11) NOT NULL,
  `namaAdmin` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tabel_admin`
--

INSERT INTO `tabel_admin` (`idAdmin`, `namaAdmin`, `email`, `password`) VALUES
('1', 'admin', 'admin@admin.com', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `tabel_produk`
--

CREATE TABLE `tabel_produk` (
  `idProduk` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `gambar` text NOT NULL,
  `keterangan` text NOT NULL,
  `harga` int(11) NOT NULL,
  `stock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tabel_produk`
--

INSERT INTO `tabel_produk` (`idProduk`, `nama`, `gambar`, `keterangan`, `harga`, `stock`) VALUES
(32, 'Beras Kencur', '12ef56156ecbb719ec352f0c802b5052', '500 ml', 20000, 12),
(34, 'Pahitan', '969946e719d89dacd0ad75c06af36a9a', '500 ml', 25000, 6),
(35, 'Sinom', 'ace99807b5bfd7083105afa7fbc5b899', '500 ml', 20000, 12),
(36, 'Sirih', 'e151adc513a4814c7663b3551dbdf5dc', '500 ml', 20000, 5),
(37, 'Temulawak', 'c9c79243a04588dbe51373830d013a62', '500 ml', 17000, 12);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_transaksi`
--

CREATE TABLE `tabel_transaksi` (
  `idTransaksi` int(11) NOT NULL,
  `idUser` varchar(11) NOT NULL,
  `daftarBarang` text NOT NULL,
  `tanggal` date NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tabel_transaksi`
--

INSERT INTO `tabel_transaksi` (`idTransaksi`, `idUser`, `daftarBarang`, `tanggal`, `total`) VALUES
(144, '5', 'Sinom, Jumlah : 5 <br> Sinom, Jumlah : 4 <br> ', '2020-07-11', 0),
(145, '5', '', '2020-07-11', 0),
(146, '5', 'Sinom, Jumlah : 3 <br> ', '2020-07-11', 0),
(147, '5', '', '2020-07-11', 0),
(148, '5', 'Sirih, Jumlah : 5 <br> ', '2020-07-11', 0),
(149, '5', 'Sirih, Jumlah : 1 <br> ', '0000-00-00', 0),
(150, '5', 'Pahitan, Jumlah : 25000 <br> ', '0000-00-00', 25000),
(151, '5', 'Beras Kencur, Jumlah : 20000 <br> ', '0000-00-00', 20000),
(152, '5', 'Pahitan, Jumlah : 1 <br> ', '0000-00-00', 25000),
(153, '5', 'Pahitan, Jumlah : 1 <br> ', '0000-00-00', 25000),
(154, '5', '', '0000-00-00', 0),
(155, '5', 'Pahitan, Jumlah : 5 <br> ', '0000-00-00', 125000),
(156, '5', 'Pahitan, Jumlah : 1 <br> ', '0000-00-00', 25000),
(157, '5', 'Pahitan, Jumlah : 1 <br> ', '0000-00-00', 25000),
(158, '5', '', '0000-00-00', 0),
(159, '5', 'Pahitan, Jumlah : 1 <br> ', '0000-00-00', 25000),
(160, '5', '', '2020-07-12', 0),
(161, '5', 'Pahitan, Jumlah : 1 <br> ', '2020-07-12', 25000),
(162, '5', '', '2020-07-12', 0),
(163, '5', '', '2020-07-12', 0),
(164, '5', '', '2020-07-12', 0),
(165, '5', '', '2020-07-12', 0),
(166, '5', '', '2020-07-12', 0),
(167, '5', 'Pahitan, Jumlah : 1 <br> ', '2020-07-12', 25000),
(168, '5', '', '2020-07-12', 0),
(169, '5', '', '2020-07-12', 0),
(170, '5', '', '2020-07-12', 0),
(171, '5', 'Pahitan, Jumlah : 1 <br> ', '2020-07-12', 25000),
(172, '5', '', '2020-07-12', 0),
(173, '5', '', '2020-07-12', 0),
(174, '5', '', '2020-07-12', 0),
(175, '5', '', '2020-07-12', 0),
(176, '5', '', '2020-07-12', 0),
(177, '5', '', '2020-07-12', 0),
(178, '5', '', '2020-07-12', 0),
(179, '5', 'Pahitan, Jumlah : 1 <br> ', '2020-07-12', 25000),
(180, '5', '', '2020-07-12', 0),
(181, '5', 'Pahitan, Jumlah : 1 <br> ', '2020-07-12', 25000),
(182, '5', '', '2020-07-12', 0),
(183, '7', 'Pahitan, Jumlah : 1 <br> ', '2024-06-25', 25000),
(184, '7', '', '2024-06-25', 25000);

-- --------------------------------------------------------

--
-- Table structure for table `tabel_trolly`
--

CREATE TABLE `tabel_trolly` (
  `idTrolly` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `idProduk` int(11) NOT NULL,
  `jumlah` int(12) NOT NULL,
  `harga` int(11) NOT NULL,
  `total` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tabel_user`
--

CREATE TABLE `tabel_user` (
  `idUser` int(11) NOT NULL,
  `namaUser` varchar(50) NOT NULL,
  `email` varchar(70) NOT NULL,
  `password` varchar(40) NOT NULL,
  `alamat` text NOT NULL,
  `telpon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tabel_user`
--

INSERT INTO `tabel_user` (`idUser`, `namaUser`, `email`, `password`, `alamat`, `telpon`) VALUES
(5, 'user', 'user@user.com', 'ee11cbb19052e40b07aac0ca060c23ee', 'Malang', '0897666555'),
(7, 'dendi', 'dendhi83@gmail.com', '21c5f28f66599e819d67b5fd22c18d35', 'situjuah tungka', '082268757722');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_admin`
--
ALTER TABLE `tabel_admin`
  ADD PRIMARY KEY (`idAdmin`);

--
-- Indexes for table `tabel_produk`
--
ALTER TABLE `tabel_produk`
  ADD PRIMARY KEY (`idProduk`);

--
-- Indexes for table `tabel_transaksi`
--
ALTER TABLE `tabel_transaksi`
  ADD PRIMARY KEY (`idTransaksi`);

--
-- Indexes for table `tabel_trolly`
--
ALTER TABLE `tabel_trolly`
  ADD PRIMARY KEY (`idTrolly`);

--
-- Indexes for table `tabel_user`
--
ALTER TABLE `tabel_user`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_produk`
--
ALTER TABLE `tabel_produk`
  MODIFY `idProduk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `tabel_transaksi`
--
ALTER TABLE `tabel_transaksi`
  MODIFY `idTransaksi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=185;

--
-- AUTO_INCREMENT for table `tabel_trolly`
--
ALTER TABLE `tabel_trolly`
  MODIFY `idTrolly` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=205;

--
-- AUTO_INCREMENT for table `tabel_user`
--
ALTER TABLE `tabel_user`
  MODIFY `idUser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Table structure for table `pma__bookmark`
--
-- Error reading structure for table phpmyadmin.pma__bookmark: #1932 - Table &#039;phpmyadmin.pma__bookmark&#039; doesn&#039;t exist in engine
-- Error reading data for table phpmyadmin.pma__bookmark: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__bookmark`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pma__central_columns`
--
-- Error reading structure for table phpmyadmin.pma__central_columns: #1932 - Table &#039;phpmyadmin.pma__central_columns&#039; doesn&#039;t exist in engine
-- Error reading data for table phpmyadmin.pma__central_columns: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__central_columns`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pma__column_info`
--
-- Error reading structure for table phpmyadmin.pma__column_info: #1932 - Table &#039;phpmyadmin.pma__column_info&#039; doesn&#039;t exist in engine
-- Error reading data for table phpmyadmin.pma__column_info: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__column_info`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pma__designer_settings`
--
-- Error reading structure for table phpmyadmin.pma__designer_settings: #1932 - Table &#039;phpmyadmin.pma__designer_settings&#039; doesn&#039;t exist in engine
-- Error reading data for table phpmyadmin.pma__designer_settings: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__designer_settings`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pma__export_templates`
--
-- Error reading structure for table phpmyadmin.pma__export_templates: #1932 - Table &#039;phpmyadmin.pma__export_templates&#039; doesn&#039;t exist in engine
-- Error reading data for table phpmyadmin.pma__export_templates: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__export_templates`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pma__favorite`
--
-- Error reading structure for table phpmyadmin.pma__favorite: #1932 - Table &#039;phpmyadmin.pma__favorite&#039; doesn&#039;t exist in engine
-- Error reading data for table phpmyadmin.pma__favorite: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__favorite`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pma__history`
--
-- Error reading structure for table phpmyadmin.pma__history: #1932 - Table &#039;phpmyadmin.pma__history&#039; doesn&#039;t exist in engine
-- Error reading data for table phpmyadmin.pma__history: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__history`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pma__navigationhiding`
--
-- Error reading structure for table phpmyadmin.pma__navigationhiding: #1932 - Table &#039;phpmyadmin.pma__navigationhiding&#039; doesn&#039;t exist in engine
-- Error reading data for table phpmyadmin.pma__navigationhiding: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__navigationhiding`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pma__pdf_pages`
--
-- Error reading structure for table phpmyadmin.pma__pdf_pages: #1932 - Table &#039;phpmyadmin.pma__pdf_pages&#039; doesn&#039;t exist in engine
-- Error reading data for table phpmyadmin.pma__pdf_pages: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__pdf_pages`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pma__recent`
--
-- Error reading structure for table phpmyadmin.pma__recent: #1932 - Table &#039;phpmyadmin.pma__recent&#039; doesn&#039;t exist in engine
-- Error reading data for table phpmyadmin.pma__recent: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__recent`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pma__relation`
--
-- Error reading structure for table phpmyadmin.pma__relation: #1932 - Table &#039;phpmyadmin.pma__relation&#039; doesn&#039;t exist in engine
-- Error reading data for table phpmyadmin.pma__relation: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__relation`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pma__savedsearches`
--
-- Error reading structure for table phpmyadmin.pma__savedsearches: #1932 - Table &#039;phpmyadmin.pma__savedsearches&#039; doesn&#039;t exist in engine
-- Error reading data for table phpmyadmin.pma__savedsearches: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__savedsearches`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_coords`
--
-- Error reading structure for table phpmyadmin.pma__table_coords: #1932 - Table &#039;phpmyadmin.pma__table_coords&#039; doesn&#039;t exist in engine
-- Error reading data for table phpmyadmin.pma__table_coords: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__table_coords`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_info`
--
-- Error reading structure for table phpmyadmin.pma__table_info: #1932 - Table &#039;phpmyadmin.pma__table_info&#039; doesn&#039;t exist in engine
-- Error reading data for table phpmyadmin.pma__table_info: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__table_info`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pma__table_uiprefs`
--
-- Error reading structure for table phpmyadmin.pma__table_uiprefs: #1932 - Table &#039;phpmyadmin.pma__table_uiprefs&#039; doesn&#039;t exist in engine
-- Error reading data for table phpmyadmin.pma__table_uiprefs: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__table_uiprefs`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pma__tracking`
--
-- Error reading structure for table phpmyadmin.pma__tracking: #1932 - Table &#039;phpmyadmin.pma__tracking&#039; doesn&#039;t exist in engine
-- Error reading data for table phpmyadmin.pma__tracking: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__tracking`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pma__userconfig`
--
-- Error reading structure for table phpmyadmin.pma__userconfig: #1932 - Table &#039;phpmyadmin.pma__userconfig&#039; doesn&#039;t exist in engine
-- Error reading data for table phpmyadmin.pma__userconfig: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__userconfig`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pma__usergroups`
--
-- Error reading structure for table phpmyadmin.pma__usergroups: #1932 - Table &#039;phpmyadmin.pma__usergroups&#039; doesn&#039;t exist in engine
-- Error reading data for table phpmyadmin.pma__usergroups: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__usergroups`&#039; at line 1

-- --------------------------------------------------------

--
-- Table structure for table `pma__users`
--
-- Error reading structure for table phpmyadmin.pma__users: #1932 - Table &#039;phpmyadmin.pma__users&#039; doesn&#039;t exist in engine
-- Error reading data for table phpmyadmin.pma__users: #1064 - You have an error in your SQL syntax; check the manual that corresponds to your MariaDB server version for the right syntax to use near &#039;FROM `phpmyadmin`.`pma__users`&#039; at line 1
--
-- Database: `pos`
--
CREATE DATABASE IF NOT EXISTS `pos` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `pos`;

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
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(10) UNSIGNED NOT NULL,
  `nama_kategori` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `created_at`, `updated_at`) VALUES
(1, 'Kategori 1', '2023-03-01 03:48:01', '2023-03-01 03:48:01');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE `member` (
  `id_member` int(10) UNSIGNED NOT NULL,
  `kode_member` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` text DEFAULT NULL,
  `telepon` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2014_10_12_200000_add_two_factor_columns_to_users_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2021_03_05_194740_tambah_kolom_baru_to_users_table', 1),
(7, '2021_03_05_195441_buat_kategori_table', 1),
(8, '2021_03_05_195949_buat_produk_table', 1),
(9, '2021_03_05_200515_buat_member_table', 1),
(10, '2021_03_05_200706_buat_supplier_table', 1),
(11, '2021_03_05_200841_buat_pembelian_table', 1),
(12, '2021_03_05_200845_buat_pembelian_detail_table', 1),
(13, '2021_03_05_200853_buat_penjualan_table', 1),
(14, '2021_03_05_200858_buat_penjualan_detail_table', 1),
(15, '2021_03_05_200904_buat_setting_table', 1),
(16, '2021_03_05_201756_buat_pengeluaran_table', 1),
(17, '2021_03_11_225128_create_sessions_table', 1),
(18, '2021_03_24_115009_tambah_foreign_key_to_produk_table', 1),
(19, '2021_03_24_131829_tambah_kode_produk_to_produk_table', 1),
(20, '2021_05_08_220315_tambah_diskon_to_setting_table', 1),
(21, '2021_05_09_124745_edit_id_member_to_penjualan_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(10) UNSIGNED NOT NULL,
  `id_supplier` int(11) NOT NULL,
  `total_item` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `diskon` tinyint(4) NOT NULL DEFAULT 0,
  `bayar` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembelian_detail`
--

CREATE TABLE `pembelian_detail` (
  `id_pembelian_detail` int(10) UNSIGNED NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `harga_beli` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pengeluaran`
--

CREATE TABLE `pengeluaran` (
  `id_pengeluaran` int(10) UNSIGNED NOT NULL,
  `deskripsi` text NOT NULL,
  `nominal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(10) UNSIGNED NOT NULL,
  `id_member` int(11) DEFAULT NULL,
  `total_item` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `diskon` tinyint(4) NOT NULL DEFAULT 0,
  `bayar` int(11) NOT NULL DEFAULT 0,
  `diterima` int(11) NOT NULL DEFAULT 0,
  `id_user` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_member`, `total_item`, `total_harga`, `diskon`, `bayar`, `diterima`, `id_user`, `created_at`, `updated_at`) VALUES
(1, NULL, 0, 0, 0, 0, 0, 1, '2023-03-01 03:47:26', '2023-03-01 03:47:26'),
(2, NULL, 4, 4000, 0, 4000, 5000, 1, '2023-03-01 03:48:47', '2023-03-01 04:02:34'),
(3, NULL, 0, 0, 0, 0, 0, 1, '2023-03-01 04:03:12', '2023-03-01 04:03:12'),
(4, NULL, 0, 0, 0, 0, 0, 1, '2023-03-01 04:03:28', '2023-03-01 04:03:28'),
(5, NULL, 0, 0, 0, 0, 0, 1, '2023-03-01 04:31:59', '2023-03-01 04:31:59');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan_detail`
--

CREATE TABLE `penjualan_detail` (
  `id_penjualan_detail` int(10) UNSIGNED NOT NULL,
  `id_penjualan` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `diskon` tinyint(4) NOT NULL DEFAULT 0,
  `subtotal` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penjualan_detail`
--

INSERT INTO `penjualan_detail` (`id_penjualan_detail`, `id_penjualan`, `id_produk`, `harga_jual`, `jumlah`, `diskon`, `subtotal`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 1000, 4, 0, 4000, '2023-03-01 03:48:56', '2023-03-01 04:00:29'),
(2, 5, 1, 1000, 10, 0, 10000, '2023-03-01 04:32:05', '2023-03-01 04:32:23');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(10) UNSIGNED NOT NULL,
  `id_kategori` int(10) UNSIGNED NOT NULL,
  `kode_produk` varchar(255) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `merk` varchar(255) DEFAULT NULL,
  `harga_beli` int(11) NOT NULL,
  `diskon` tinyint(4) NOT NULL DEFAULT 0,
  `harga_jual` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_kategori`, `kode_produk`, `nama_produk`, `merk`, `harga_beli`, `diskon`, `harga_jual`, `stok`, `created_at`, `updated_at`) VALUES
(1, 1, 'P000001', 'Mie Ayam', 'Mie', 5000, 0, 1000, 96, '2023-03-01 03:48:22', '2023-03-01 04:02:34');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` text NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('JrEOdsrMV0LRS55pJDH8HzUwnecZIprp8Fxy9fdS', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiaUgydnNXUExBTnZGVTZ6NjFoN0x5eE1QTDlmWEtsOUc2MWJhRFBONyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToxO3M6MTc6InBhc3N3b3JkX2hhc2hfd2ViIjtzOjYwOiIkMnkkMTAkU0ZVQXYxcUMvTTZpZEhIMDRrWlVpZWd6SEczbEpXaFZOQzZ2VEd1MWgvZHl5c3owT05aTE8iO30=', 1677670732),
('xrltiZAQp7JnJ0ohLeIt6QAia3b5wMfZs6zhFffa', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/110.0.0.0 Safari/537.36 Edg/110.0.1587.57', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicWJhQVBOYWdvUnk1b09YenFNM2trdE9qaEptOWtmS2JnTGt5YW9vQiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9sb2dpbiI7fX0=', 1677668902);

-- --------------------------------------------------------

--
-- Table structure for table `setting`
--

CREATE TABLE `setting` (
  `id_setting` int(10) UNSIGNED NOT NULL,
  `nama_perusahaan` varchar(255) NOT NULL,
  `alamat` text DEFAULT NULL,
  `telepon` varchar(255) NOT NULL,
  `tipe_nota` tinyint(4) NOT NULL,
  `diskon` smallint(6) NOT NULL DEFAULT 0,
  `path_logo` varchar(255) NOT NULL,
  `path_kartu_member` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting`
--

INSERT INTO `setting` (`id_setting`, `nama_perusahaan`, `alamat`, `telepon`, `tipe_nota`, `diskon`, `path_logo`, `path_kartu_member`, `created_at`, `updated_at`) VALUES
(1, 'Toko Amsis', 'Jakarta', '081283804283', 1, 5, '/img/logo.png', '/img/member.png', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` text DEFAULT NULL,
  `telepon` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `foto` varchar(255) DEFAULT NULL,
  `level` tinyint(4) NOT NULL DEFAULT 0,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `foto`, `level`, `two_factor_secret`, `two_factor_recovery_codes`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'a@a.com', NULL, '$2y$10$SFUAv1qC/M6idHH04kZUiegzHG3lJWhVNC6vTGu1h/dyysz0ONZLO', '/img/user.jpg', 1, NULL, NULL, NULL, NULL, NULL, '2023-03-01 03:46:41', '2023-03-01 03:46:41'),
(2, 'Kasir 1', 'b@b.com', NULL, '$2y$10$Z5KDeTuNfrJA7SAnaLYHROfIROyG7.GmJHJEcWhN/l7dbn93k6Viy', '/img/user.jpg', 2, NULL, NULL, NULL, NULL, NULL, '2023-03-01 03:46:41', '2023-03-01 03:46:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`),
  ADD UNIQUE KEY `kategori_nama_kategori_unique` (`nama_kategori`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`id_member`),
  ADD UNIQUE KEY `member_kode_member_unique` (`kode_member`);

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
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`);

--
-- Indexes for table `pembelian_detail`
--
ALTER TABLE `pembelian_detail`
  ADD PRIMARY KEY (`id_pembelian_detail`);

--
-- Indexes for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  ADD PRIMARY KEY (`id_pengeluaran`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`);

--
-- Indexes for table `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  ADD PRIMARY KEY (`id_penjualan_detail`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`),
  ADD UNIQUE KEY `produk_nama_produk_unique` (`nama_produk`),
  ADD UNIQUE KEY `produk_kode_produk_unique` (`kode_produk`),
  ADD KEY `produk_id_kategori_foreign` (`id_kategori`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `setting`
--
ALTER TABLE `setting`
  ADD PRIMARY KEY (`id_setting`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `id_member` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pembelian_detail`
--
ALTER TABLE `pembelian_detail`
  MODIFY `id_pembelian_detail` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pengeluaran`
--
ALTER TABLE `pengeluaran`
  MODIFY `id_pengeluaran` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `penjualan_detail`
--
ALTER TABLE `penjualan_detail`
  MODIFY `id_penjualan_detail` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `setting`
--
ALTER TABLE `setting`
  MODIFY `id_setting` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_id_kategori_foreign` FOREIGN KEY (`id_kategori`) REFERENCES `kategori` (`id_kategori`);
--
-- Database: `shopuas`
--
CREATE DATABASE IF NOT EXISTS `shopuas` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `shopuas`;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id` int(11) NOT NULL,
  `namaproduk` varchar(20) NOT NULL,
  `hargaproduk` int(20) NOT NULL,
  `beratproduk` int(20) NOT NULL,
  `stok` varchar(10) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id`, `namaproduk`, `hargaproduk`, `beratproduk`, `stok`, `deskripsi`) VALUES
(39, 'kaira gamis', 150000, 100, '60', 'panjang 150 cm\r\nld 25 cm\r\nbahan wolfis wolly crape'),
(48, 'pasmina', 15000, 5, '100', 'ceruty babydoll'),
(49, 'kemeja zara', 200000, 10, '7', 'branded');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `password` varchar(10) NOT NULL,
  `username` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`password`, `username`) VALUES
('admin1', 'adminshop1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_sold`
--

CREATE TABLE `tbl_sold` (
  `id_keluar` int(11) NOT NULL,
  `id` int(11) NOT NULL,
  `hargaproduk` varchar(30) NOT NULL,
  `jumlah` double NOT NULL,
  `total` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`password`);

--
-- Indexes for table `tbl_sold`
--
ALTER TABLE `tbl_sold`
  ADD PRIMARY KEY (`id_keluar`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- Database: `shop_db`
--
CREATE DATABASE IF NOT EXISTS `shop_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `shop_db`;

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', '6216f8a75fd5bb3d5f22b6f9958cdede3fc086c2');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'dendi', 'dendhi83@gmail.com', '53177631f0bdd55c08504afd1cff99f2aab4605a'),
(2, 'dendi', 'dendi960@yahoo.com', '53177631f0bdd55c08504afd1cff99f2aab4605a'),
(3, 'dendi', 'dendi@gmail.com', '53177631f0bdd55c08504afd1cff99f2aab4605a');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- Database: `siades`
--
CREATE DATABASE IF NOT EXISTS `siades` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `siades`;
--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;
--
-- Database: `toko`
--
CREATE DATABASE IF NOT EXISTS `toko` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `toko`;

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` varchar(15) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jenis_barang` varchar(30) NOT NULL,
  `ukuran` varchar(15) NOT NULL,
  `warna` varchar(10) NOT NULL,
  `id_suplier` varchar(15) NOT NULL,
  `harga` int(10) NOT NULL,
  `jumlah` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `nama_brg`, `jenis_barang`, `ukuran`, `warna`, `id_suplier`, `harga`, `jumlah`) VALUES
('170400001', 'Adidas', 'Sepatu', '39', 'Koran', '', 300000, 0),
('170400002', 'Adidas', 'Sepatu', '39', 'Koran', '', 300000, 0),
('170400003', 'Vans', 'Sepatu', '39', 'Hitam', '', 130000, 0),
('170400004', 'Reggy', 'Sepatu', '39', 'Hitam', '', 250000, 0),
('170400005', 'Dr. Faris', 'Sepatu', '40', 'Merah', '', 120000, 0),
('170400006', 'Dr. Faris', 'Sepatu', '40', 'Coklat', '', 230000, 0),
('170400007', 'Adidas', 'Sepatu', '42', 'Hijau', '', 0, 0),
('170400008', 'Dr. Faris', 'Sepatu', '41', 'Hijau', '', 0, 0),
('170400009', 'Mr. A', 'Sepatu', '42', 'Coklat', '', 499000, 0),
('170400010', 'Nike', 'Sepatu', '40', 'Coklat', '', 225000, 0),
('170400011', 'Mr. A', 'Sepatu', '40', 'Coklat', '', 0, 0),
('170400012', 'Dr. Faris', 'Sepatu', '40', 'Coklat', '', 0, 0),
('170400013', 'Undefeated', 'Sepatu', '40', 'Coklat', '', 0, 0),
('170400014', 'Mr. Hamcyx', 'Sepatu', '39', 'Coklat', '', 0, 0),
('170400015', 'Premium', 'Kemeja Panjang', 'M', 'Hitam', '', 0, 0),
('170400016', 'Onfire', 'Kemeja Panjang', '', 'Hitam', '', 195000, 0),
('170400017', 'Irondad', 'Kemeja Panjang', 'M', 'Merah', '', 195000, 0),
('170400018', 'Points', 'Kemeja Panjang', 'M', 'Abu-abu', '', 195000, 0),
('170400019', 'F2O', 'Kemeja Panjang', '', '', '', 0, 0),
('170400020', 'Black Angel', 'Kemeja Panjang', 'XL', 'Biru', '', 195000, 0),
('170400021', 'Black Angel', 'Kemeja Panjang', 'XL', 'Garis', '', 0, 0),
('170400022', 'Epick Holiday', 'Kemeja Panjang', 'L', 'Maroon', '', 180000, 0),
('170400023', 'The Killing', 'Kemeja Panjang', 'S', '', '', 0, 0),
('170400024', 'Crime Story', 'Kemeja Panjang', 'L', 'Ijo Kotak', '', 210000, 0),
('170400025', 'Bad Boy', 'Kemeja Panjang', 'XXL', 'Coklat', '', 279000, 0),
('170400026', 'Onfire', 'Kemeja Panjang', 'L', 'Kotak', '', 200000, 0),
('170400027', 'Onfire', 'Kemeja Panjang', 'L', 'Biru Muda', '', 200000, 0),
('170400028', 'Black Angel', 'Kemeja Panjang', 'M', 'Biru Tua', '', 225000, 0),
('170400029', 'Crime Story', 'Kemeja Panjang', 'L', 'Ijo Tua', '', 210000, 0),
('170400030', 'Vulture', 'Kemeja Panjang', 'M', 'Merah', '', 210000, 0),
('170400031', 'Crime Story', 'Kemeja Panjang', 'L', 'Coklat', '', 185000, 0),
('170400032', 'Twinty TW22', 'Kemeja Panjang', 'XL', 'Putih', '', 0, 0),
('170400033', 'Rock Stones', 'Kemeja Panjang', 'L', 'Merah', '', 0, 0),
('170400034', 'X-Pose', 'Kemeja Panjang', 'XL', '', '', 0, 0),
('170400035', 'Emine', 'Kemeja Panjang', 'L', 'Kotak', '', 165000, 0),
('170400036', 'Envynityhight', 'Kemeja Panjang', 'XL', 'Ungu', '', 0, 0),
('170400037', 'Olegun', 'Kemeja Panjang', 'M', 'Biru', '', 245000, 0),
('170400038', 'Black Angel', 'Kemeja Panjang', 'L', 'Merah', '', 195000, 0),
('170400039', 'Insor', 'Kemeja Panjang', 'L', '', '', 229000, 0),
('170400040', 'Berlink', 'Kemeja Panjang', 'L', 'Abu-abu', '', 0, 0),
('170400041', 'Demochist', 'Kemeja Panjang', 'L', 'Biru', '', 215000, 0),
('170400042', 'Price', 'Kemeja Panjang', 'XL', 'Maroon', '', 210000, 0),
('170400043', 'Crime Story', 'Kemeja Panjang', 'XL', 'Hijau', '', 210000, 0),
('170400044', 'Online', 'Kemeja Panjang', 'L', 'Biru', '', 0, 0),
('170400045', 'F2D', 'Kemeja Pendek', 'M', 'Pink', '', 160000, 0),
('170400046', 'Neverdead', 'Topi', '', 'Hitam', '', 125000, 0),
('170400047', 'Neverdead', 'Topi', '', 'Coklat', '', 125000, 0),
('170400048', 'Old Cloth', 'Topi', '', 'Hijau', '', 125000, 0),
('170400049', 'Old Cloth', 'Topi', '', 'Merah', '', 120000, 0),
('170400050', 'Neverdead', 'Topi', '', 'Hijau', '', 125000, 0),
('170400051', 'ShaNge', 'Topi', '', 'Hitam', '', 100000, 0),
('170400052', 'Old Cloth', 'Topi', '', 'Hitam', '', 135000, 0),
('170400053', 'ShaNge', 'Topi', '', 'Merah', '', 100000, 0),
('170400054', 'Revolution', 'Topi', '', 'Abu-abu', '', 80000, 0),
('170400055', 'Busted Apparel', 'Topi', '', 'Merah', '', 0, 0),
('170400056', 'BSTD', 'Topi', '', 'Abu-abu', '', 0, 0),
('170400057', 'Vultures', 'Topi', '', 'Kotak-kota', '', 0, 0),
('170400058', 'Busted Apparel', 'Topi', '', 'Merah', '', 0, 0),
('170400059', 'ShaNge', 'Topi', '', 'Hitam', '', 100000, 0),
('170400060', 'On Fire', 'Topi', '', 'Merah', '', 100000, 0),
('170400061', 'Olegun', 'Topi', '', 'Hitam', '', 130000, 0),
('170400062', 'ShaNge', 'Topi', '', 'Merah', '', 100000, 0),
('170400063', 'Neverdead', 'Topi', '', 'Hitam', '', 125000, 0),
('170400064', 'ShaNge', 'Topi', '', 'Merah', '', 100000, 0),
('170400065', 'Epidemic', 'Topi', '', 'Hitam', '', 125000, 0),
('170400066', 'ShaNge', 'Topi', '', 'Hitam', '', 100000, 0),
('170400067', 'Insider', 'Singlet', 'XL', 'Coklat', '', 229000, 0),
('170400068', 'Insider', 'Singlet', 'L', 'Maroon', '', 229000, 0),
('170400069', 'Insider', 'Singlet', 'L', 'Abu-abu', '', 229000, 0),
('170400070', 'Insider', 'Singlet', 'XL', 'Abu-abu Tu', '', 229000, 0),
('170400071', 'X-Pose', 'Singlet', '', 'Hitam', '', 125000, 0),
('170400072', 'X-Pose', 'Singlet', '', 'Merah Abu', '', 125000, 0),
('170400073', 'X-Pose', 'Singlet', '', 'Abu-abu', '', 125000, 0),
('170400074', 'Grey Side', 'Singlet', 'L', 'Putih Biru', '', 115000, 0),
('170400075', 'X-Pose', 'Blazer', '', 'Hitam', '', 0, 0),
('170400076', 'On Fire', 'Blazer', 'XL', 'Hitam', '', 220000, 0),
('170400077', 'Rock Rider', 'Blazer', '', 'Hitam', '', 0, 0),
('170400078', 'Rock Rider', 'Blazer', '', 'Abu-abu', '', 0, 0),
('170400079', 'On Fire', 'Blazer', 'XL', 'Hitam', '', 220000, 0),
('170400080', 'Chris Cole', 'Celana', '33', 'Abu', '', 0, 0),
('170400081', 'Billabong', 'Celana', '30', 'Abu', '', 0, 0),
('170400082', 'Chris Cole', 'Celana', '33', 'Abu', '', 0, 0),
('170400083', 'Chris Cole', 'Celana', '31', 'Abu', '', 0, 0),
('170400084', 'Insight', 'Celana', '29', 'Hitam', '', 0, 0),
('170400085', 'Cremi Story', 'Celana', 'M', 'Coklat', '', 260000, 0),
('170400086', 'Cremi Story', 'Celana', 'L', 'Coklat', '', 260000, 0),
('170400087', 'Cremi Story', 'Celana', 'XL', 'Coklat', '', 260000, 0),
('170400088', 'Onfire', 'Celana', 'L', 'Abu', '', 205000, 0),
('170400089', 'Kick Denim', 'Celana', '', '', '', 0, 0),
('170400090', 'Insight', 'Celana', '28', 'Biru', '', 0, 0),
('170400091', 'Insight', 'Celana', '30', 'Biru', '', 0, 0),
('170400092', 'Onfire', 'Celana', 'M', 'Biru', '', 205000, 0),
('170400093', 'Onfire', 'Celana', 'S', 'Biru', '', 200000, 0),
('170400094', 'Onfire', 'Celana', 'M', 'Biru', '', 205000, 0),
('170400095', 'Onfire', 'Celana', 'M', 'Biru', '', 200000, 0),
('170400096', 'Kiddrock', 'Celana', '25', 'Biru', '', 0, 0),
('170400097', 'Onfire', 'Celana', 'XL', 'Biru', '', 0, 0),
('170400098', 'Onfire', 'Celana', 'L', 'Hitam', '', 190000, 0),
('170400099', 'Onfire', 'Celana', 'L', 'Biru', '', 205000, 0),
('170400100', 'Kiddrock', 'Celana', '25', 'Hitam', '', 220000, 0),
('170400101', 'Kiddrock', 'Celana', '25', 'Biru', '', 220000, 0),
('170400102', 'Insight', 'Celana', '31', 'Biru', '', 210000, 0),
('170400103', 'Points', 'Celana', 'L', 'Biru', '', 230000, 0),
('170400104', 'Points', 'Celana', 'M', 'Biru', '', 210000, 0),
('170400105', 'Points', 'Celana', 'XL', 'Hitam', '', 230000, 0),
('170400106', 'Olc', 'Celana', '30', 'Biru', '', 295000, 0),
('170400107', 'Insight', 'Celana', '30', 'Abu', '', 210000, 0),
('170400108', 'Insight', 'Celana', '29', 'Biru', '', 210000, 0),
('170400109', 'Kick Denim', 'Celana', '32', 'Abu', '', 185000, 0),
('170400110', 'Insight', 'Celana', '27', 'Biru', '', 235000, 0),
('170400111', 'Onfire', 'Celana', 'M', 'Biru', '', 225000, 0),
('170400112', 'Jronegan', 'Celana', 'L', 'Abu', '', 230000, 0),
('170400113', 'Jronegan', 'Celana', 'M', 'Abu', '', 225000, 0),
('170400114', 'In Black', 'Celana', 'S', 'Hitam', '', 230000, 0),
('170400115', 'Grayscale', 'Celana', '34', 'Hitam', '', 275000, 0),
('170400116', 'NTF', 'Celana', '32', 'Coklat', '', 185000, 0),
('170400117', 'NTF', 'Celana', '30', 'Coklat', '', 185000, 0),
('170400118', 'NTF', 'Celana', '30', 'Coklat', '', 185000, 0),
('170400119', 'Outleave', 'Celana', 'XL', 'Coklat', '', 0, 0),
('170400120', 'Outleave', 'Celana', 'L', 'Coklat Mud', '', 0, 0),
('170400121', 'Outleave', 'Celana', 'L', 'Coklat Mud', '', 0, 0),
('170400122', 'Ironclad', 'Celana', 'XL', 'Hitam', '', 250000, 0),
('170400123', 'Doublesteven', 'Celana', '25', 'Hitam', '', 0, 0),
('170400124', 'RVJ', 'Celana', 'M', 'Abu', '', 220000, 0),
('170400125', 'Kiddrock', 'Celana', 'S', 'Biru', '', 220000, 0),
('170400126', 'Onfire', 'Celana', 'L', 'Biru', '', 225000, 0),
('170400127', 'Onfire', 'Celana', '', 'Biru', '', 225000, 0),
('170400128', 'Onfire', 'Celana', 'L', 'Biru', '', 225000, 0),
('170400129', 'Grayscale', 'Celana', '', 'Biru', '', 0, 0),
('170400130', 'Beatelight', 'Celana', '', 'Hitam', '', 0, 0),
('170400131', 'Shange Lengan Pendek', 'Baju', 'L, M, XL', 'BD, AB, HT', '', 110000, 0),
('170400132', 'Shange Lengan Panjang', 'Baju', 'L, M, XL', 'BD, AB, HT', '', 140000, 0),
('170400133', 'Shange Pendek Full Body', 'Baju', 'L, M, XL', 'BD, AB, HT', '', 130000, 0),
('170400134', 'Kaos Epidemic', 'Baju', 'L, M, XL', 'HITAM', '', 120000, 0),
('170400135', 'Kaos Busted', 'Baju', 'L, M, XL', 'HITAM', '', 120000, 0),
('170400136', 'Kaos Epodemic Full Body', 'Baju', 'L, M, XL', 'HITAM', '', 150000, 0),
('170400137', 'Kaos Onfire', 'Baju', 'L, M, XL', 'AB', '', 100000, 0),
('170400138', 'Kaos Onfire Junior', 'Baju', 'L, M, XL', 'AB', '', 85000, 0),
('170400139', 'Kaos Kombinasi DMCT', 'Baju', 'L, M, XL', 'MRH, PTH, ', '', 105000, 0),
('170400140', 'Kaos Kombinasi Neverdead', 'Baju', 'L, M, XL', 'AB', '', 110000, 0),
('170400141', 'Kaos Gioarmy Kombinasi', 'Baju', 'L, M, XL', 'LORENG', '', 145000, 0),
('170400142', 'Kaos Kombinasi Onfire', 'Baju', 'L, M, XL', 'LORENG', '', 105000, 0),
('170400143', 'Kaos Kombinasi Onfire', 'Baju', 'L, M, XL', 'LORENG', '', 115000, 0),
('170400144', 'Kaos Kombinasi Onfire', 'Baju', 'L, M, XL', 'LORENG', '', 100000, 0),
('170400145', 'Celana Boxer', 'Celana', 'All Size', 'HTM, MRH, ', '', 80000, 0),
('170400146', 'Celana Boxer', 'Celana', 'All Size', 'HTM, MRH, ', '', 90000, 0),
('170400147', 'Sweter Gioarmy', 'Baju', 'L, M, XL', 'HTM, AB, B', '', 215000, 0),
('170400148', 'Sweter Crime Story', 'Baju', 'XL', 'HITAM', '', 225000, 0),
('170400149', 'Kaos Folder Panjang', 'Baju', 'L', 'BD, AB, HT', '', 125000, 0),
('170400150', 'Jaket Parka', 'Jaket', 'L, XL', 'BD, AB, HT', '', 300000, 0),
('170400151', 'Jaket Bomber', 'Jaket', 'M', 'HTM, HJ, C', '', 250000, 0),
('170400152', 'Jaket Levis', 'Jaket', 'M', 'BD', '', 290000, 0),
('170400153', 'Kaos Pigmen Lengan Panjang', 'Baju', 'XL, L', 'HTM, ABU', '', 150000, 0),
('170400154', 'Sandal Grayscale', 'Sandal', '', 'HITAM LORE', '', 100000, 0),
('170400155', 'Sandal Gioamrock', 'Sandal', '', 'CATUR HITA', '', 85000, 0),
('170400156', 'Sandal Onfire', 'Sandal', '', 'BIRU HITAM', '', 110000, 0),
('170400157', 'Sandal Ocox', 'Sandal', '', 'COKLAT', '', 125000, 0),
('170400158', 'Sendal Onfore Gunung', 'Sandal', '', 'BIRU', '', 115000, 0),
('170400159', 'Sandal Kiddrock', 'Sandal', '', 'HITAM', '', 130000, 0),
('170400160', 'Kaos Clipart', 'Baju', '', 'M', '', 100000, 0),
('170400161', 'Outleave', 'Tas Kecil', '', 'Coklat', '', 150000, 0),
('170400162', 'Onfire', 'Tas Kecil', '', 'Hitam', '', 125000, 0),
('170400163', 'Emweconcepe', 'Tas Pinggang', '', 'Hitam', '', 105000, 0),
('170400164', 'Outleve', 'Tas Pinggang', '', 'Biru', '', 150000, 0),
('170400165', 'Epc Holiday', 'Tas Gendong', '', 'Biru', '', 160000, 0),
('170400166', 'Gendong Ceril Old', 'Tas Gendong', '', 'Hitam', '', 200000, 0),
('170400167', 'Epidemic', 'Tas Gendong', '', 'Biru', '', 195000, 0),
('170400168', 'Epidemic', 'Tas Gendong', '', 'Dominan', '', 185000, 0),
('170400169', 'Busted', 'Tas Gendong', '', 'Hijau', '', 225000, 0),
('170400170', 'Grayscale', 'Tas Gendong', '', 'Biru', '', 175000, 0),
('170400171', 'Onfire', 'Tas Gendong', '', 'Biru', '', 140000, 0),
('170400172', 'Onfire', 'Tas Gendong', '', 'Biru', '', 140000, 0),
('170400173', 'Busted', 'Tas Gendong', '', 'Hijau', '', 195000, 0),
('170400174', 'Gio Army', 'Tas Gendong', '', 'Dominan', '', 175000, 0),
('170400175', 'The Phmed', 'Tas Gendong', '', 'Hitam', '', 190000, 0),
('170400176', 'Epidemic', 'Tas Gendong', '', 'Dominan', '', 185000, 0),
('170400177', 'Onfire', 'Tas Gendong', '', 'Dominan', '', 140000, 0),
('170400178', 'Onfire', 'Tas Gendong', '', 'Dominan', '', 299000, 0),
('170400179', 'Onfire', 'Tas Gendong', '', 'Dominan', '', 140000, 0),
('170400180', 'Onfire', 'Tas Gendong', '', 'Dominan', '', 180000, 0),
('170400181', 'Grayscale', 'Tas Gendong', '', 'Biru', '', 195000, 0),
('170400182', 'Epidemic', 'Tas Gendong', '', 'Merah Hita', '', 175000, 0),
('170400183', 'Onfire', 'Tas Gendong', '', 'Dominan Hi', '', 140000, 0),
('170400184', 'Effek', 'Tas Gendong', '', 'Dominan', '', 160000, 0),
('170400185', 'Kiddrock', 'Tas Gendong', '', 'Hitam', '', 0, 0),
('170400186', 'We Stile Own Zole', 'Tas Kecil', '', 'Hitam', '', 0, 0),
('170400187', 'Onfire', 'Tas Gendong', '', 'Dominan', '', 125000, 0),
('170400188', 'Ep', 'Tas Gendong', '', 'Hitam', '', 140000, 0),
('170400189', 'Onfire', 'Tas Gendong', '', 'Dominan Me', '', 140000, 0),
('170400190', 'Onfire', 'Tas Gendong', '', 'Dominan Bi', '', 195000, 0),
('170400191', 'ep', 'Tas Gendong', '', 'Hitam', '', 100000, 0),
('170400192', 'Epi Holiday', 'Tas Kecil', '', 'Dominan Ku', '', 0, 0),
('170400193', 'Grayscale', 'Tas Gendong', '', 'Hijau', '', 195000, 0),
('170400194', 'Tas Berdasi', 'Tas Selendang', '', 'Cream', '', 195000, 0),
('170400195', 'Onfire', 'Dompet', '', 'Coklat', '', 80000, 0),
('170400196', 'Olegun', 'Dompet', '', 'Hitam', '', 125000, 0),
('170400197', 'Grey Side', 'Dompet', '', 'Coklat', '', 120000, 0),
('170400198', 'Revolution', 'Dompet', '', 'Hitam', '', 80000, 0),
('170400199', 'Old Cloth', 'Dompet', '', 'Dominan', '', 110000, 0),
('170400200', 'Onfire', 'Sabuk', '', 'Hitam', '', 85000, 0),
('170400201', 'Grey Side', 'Sabuk', '', 'Hitam', '', 139000, 0),
('170400202', 'All', 'Topeng', '', 'All', '', 50000, 0),
('170400203', 'All', 'Gelang Karet', '', 'All', '', 0, 0),
('170400204', 'All', 'Gelang', '', 'All', '', 0, 0),
('170400205', 'All', 'Kalung Rante', '', 'All', '', 0, 0),
('170400206', 'Epidemic', 'Botol', '', '', '', 80000, 0),
('170400207', 'Busted', 'Kaos Kaki', '', 'All', '', 20000, 0),
('170400208', '', 'Syall', '', '', '', 0, 0),
('ID BARANG', 'NAMA BARANG', 'JENIS BARANG', 'UKURAN', 'WARNA', 'ID SUPPLIER', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `barang_masuk`
--

CREATE TABLE `barang_masuk` (
  `no_trx` varchar(20) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `batal_jual`
--

CREATE TABLE `batal_jual` (
  `kd_trx` varchar(10) NOT NULL,
  `id_barang` varchar(15) NOT NULL,
  `kasir` varchar(20) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `harga_total` int(10) NOT NULL,
  `tgl_trx` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `batal_jual`
--

INSERT INTO `batal_jual` (`kd_trx`, `id_barang`, `kasir`, `nama_brg`, `jumlah`, `harga`, `harga_total`, `tgl_trx`) VALUES
('TR00000013', 'BR-001', 'admin', 'celana Jeans', 2, 150000, 300000, '2017-04-07'),
('TR00000023', 'BR-003', 'admin', 'Celana Black Hawk', 1, 180000, 180000, '2017-04-07'),
('TR00000025', 'BR-005', 'admin', 'Tas Ransel', 1, 120000, 120000, '2017-04-07'),
('TR00000027', 'BR-005', 'admin', 'Tas Ransel', 1, 120000, 120000, '2017-04-07'),
('TR00000109', 'BR-001', 'admin', 'celana Jeans', 1, 150000, 150000, '2017-04-07'),
('TR00000042', '1517500026007', 'vecky', 'Sandal GrayScale', 1, 100000, 100000, '2017-04-09'),
('TR00000013', 'BR-001', 'admin', 'celana Jeans', 1, 150000, 150000, '2017-04-07'),
('TR00000014', 'BR-001', 'admin', 'celana Jeans', 1, 150000, 150000, '2017-04-07'),
('TR00000014', 'BR-001', 'admin', 'celana Jeans', 1, 150000, 150000, '2017-04-07'),
('TR00000018', 'BR-001', 'admin', 'celana Jeans', 1, 150000, 150000, '2017-04-07'),
('TR00000021', 'BR-001', 'admin', 'celana Jeans', 1, 150000, 150000, '2017-04-07'),
('TR00000021', 'BR-001', 'admin', 'celana Jeans', 1, 150000, 150000, '2017-04-07'),
('TR00000023', 'BR-001', 'admin', 'celana Jeans', 1, 150000, 150000, '2017-04-07'),
('TR00000023', 'BR-001', 'admin', 'celana Jeans', 1, 150000, 150000, '2017-04-07'),
('TR00000039', 'BR-001', 'admin', 'celana Jeans', 1, 150000, 150000, '2017-04-07'),
('TR00000039', 'BR-005', 'admin', 'Tas Ransel', 2, 100000, 200000, '2017-04-07'),
('TR00000058', 'BR-001', 'admin', 'celana Jeans', 1, 150000, 150000, '2017-04-07'),
('TR00000112', 'BR-001', 'admin', 'celana Jeans', 2, 150000, 300000, '2017-04-07'),
('TR00000003', '1517500026007', 'admin', 'Sandal GrayScale', 1, 100000, 100000, '2017-04-09'),
('TR00000013', '1517500026007', 'admin', 'Sandal GrayScale', 1, 100000, 100000, '2017-04-09'),
('TR00000013', '1517500026007', 'admin', 'Sandal GrayScale', 1, 100000, 100000, '2017-04-09'),
('TR00000013', '1517500026007', 'admin', 'Sandal GrayScale', 1, 100000, 100000, '2017-04-09'),
('TR00000013', '1517500026007', 'admin', 'Sandal GrayScale', 1, 100000, 100000, '2017-04-09'),
('TR00000014', '1517500026007', 'admin', 'Sandal GrayScale', 1, 100000, 100000, '2017-04-09'),
('TR00000014', '1517500026007', 'admin', 'Sandal GrayScale', 1, 100000, 100000, '2017-04-09'),
('TR00000014', '1517500026007', 'admin', 'Sandal GrayScale', 1, 100000, 100000, '2017-04-09'),
('TR00000014', '1517500026007', 'admin', 'Sandal GrayScale', 1, 100000, 100000, '2017-04-09'),
('TR00000014', '1517500026007', 'admin', 'Sandal GrayScale', 1, 100000, 100000, '2017-04-09'),
('TR00000014', '1517500026007', 'admin', 'Sandal GrayScale', 1, 100000, 100000, '2017-04-09'),
('TR00000015', '1517500026007', 'admin', 'Sandal GrayScale', 1, 100000, 100000, '2017-04-09'),
('TR00000015', '1517500026007', 'admin', 'Sandal GrayScale', 1, 100000, 100000, '2017-04-09'),
('TR00000015', '1517500026007', 'admin', 'Sandal GrayScale', 1, 100000, 100000, '2017-04-09'),
('TR00000015', '1517500026007', 'admin', 'Sandal GrayScale', 1, 100000, 100000, '2017-04-09'),
('TR00000015', '1517500026007', 'admin', 'Sandal GrayScale', 1, 100000, 100000, '2017-04-09'),
('TR00000015', '1517500026007', 'admin', 'Sandal GrayScale', 1, 100000, 100000, '2017-04-09'),
('TR00000015', '1517500026007', 'admin', 'Sandal GrayScale', 1, 100000, 100000, '2017-04-09'),
('TR00000015', '1517500026007', 'admin', 'Sandal GrayScale', 1, 100000, 100000, '2017-04-09'),
('TR00000015', '1517500026007', 'admin', 'Sandal GrayScale', 1, 100000, 100000, '2017-04-09'),
('TR00000015', '1517500026007', 'admin', 'Sandal GrayScale', 1, 100000, 100000, '2017-04-09'),
('TR00000016', '1517500026007', 'admin', 'Sandal GrayScale', 5, 100000, 500000, '2017-04-09'),
('TR00000016', '1517500026007', 'admin', 'Sandal GrayScale', 1, 100000, 100000, '2017-04-09'),
('TR00000017', '1517500026007', 'admin', 'Sandal GrayScale', 1, 150000, 150000, '2017-04-09'),
('TR00000020', '1517500026007', 'admin', 'Sandal GrayScale', 1, 100000, 100000, '2017-04-09'),
('TR00000038', '1517500026007', 'vecky', 'Sandal GrayScale', 1, 100000, 100000, '2017-04-09'),
('TR00000046', '1517500026007', 'vecky', 'Sandal GrayScale', 1, 100000, 100000, '2017-04-09'),
('TR00000053', '1517500026007', 'admin', 'Sandal GrayScale', 1, 100000, 100000, '2017-04-09'),
('TR00000001', '170400001', 'admin', 'Adidas', 1, 300000, 300000, '2011-11-24'),
('TR00000002', '170400001', 'admin', 'Adidas', 1, 300000, 300000, '2017-04-17'),
('TR00000002', '170400059', 'admin', 'ShaNge', 1, 100000, 100000, '2017-04-17'),
('TR00000003', '170400001', 'admin', 'Adidas', 1, 300000, 300000, '2017-04-17'),
('TR00000005', '170400001', 'admin', 'Adidas', 1, 300000, 300000, '2017-04-17'),
('TR00000005', '170400001', 'admin', 'Adidas', 1, 300000, 300000, '2017-04-17'),
('TR00000006', '170400001', 'admin', 'Adidas', 1, 300000, 300000, '2017-04-17'),
('TR00000006', '170400046', 'admin', 'Neverdead', 1, 125000, 125000, '2017-04-17'),
('TR00000008', '170400046', 'diah', 'Neverdead', 1, 125000, 125000, '2017-04-17'),
('TR00000008', '170400001', 'diah', 'Adidas', 1, 300000, 300000, '2017-04-17');

--
-- Triggers `batal_jual`
--
DELIMITER $$
CREATE TRIGGER `batal_jual` AFTER DELETE ON `batal_jual` FOR EACH ROW BEGIN
  INSERT INTO batal_jual
        (       kd_trx,
                id_barang,
                kasir,
                nama_brg,
                jumlah,
                harga,
                harga_total,
                tgl_trx
        )
  VALUES
        (      OLD.kd_trx,
               OLD.id_barang,
               OLD.kasir,
               OLD.nama_brg,
               OLD.jumlah,
               OLD.harga,
               OLD.harga_total,
               OLD.tgl_trx
        );
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `batal_jual_kembali_stok` AFTER INSERT ON `batal_jual` FOR EACH ROW BEGIN
	UPDATE barang SET jumlah=jumlah+NEW.jumlah
	WHERE id_barang=NEW.id_barang;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `no_trx`
--

CREATE TABLE `no_trx` (
  `id` int(1) NOT NULL,
  `no_trx` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `no_trx`
--

INSERT INTO `no_trx` (`id`, `no_trx`) VALUES
(1, 8);

-- --------------------------------------------------------

--
-- Table structure for table `suplier`
--

CREATE TABLE `suplier` (
  `id_sp` varchar(7) NOT NULL,
  `nm_sp` varchar(50) NOT NULL,
  `alamat_sp` text NOT NULL,
  `tlp_sp` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `suplier`
--

INSERT INTO `suplier` (`id_sp`, `nm_sp`, `alamat_sp`, `tlp_sp`) VALUES
('SP-002', 'CV. Busana Indah', 'Karawang 123', '0267 7678688'),
('SP-01', 'CV.Busana Anugerah', 'bandung', '022 3453453');

-- --------------------------------------------------------

--
-- Table structure for table `trx_out`
--

CREATE TABLE `trx_out` (
  `kd_trx` varchar(10) NOT NULL,
  `id_barang` varchar(15) NOT NULL,
  `kasir` varchar(20) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `harga_total` int(10) NOT NULL,
  `tgl_trx` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Triggers `trx_out`
--
DELIMITER $$
CREATE TRIGGER `barang_terjual` AFTER INSERT ON `trx_out` FOR EACH ROW BEGIN
	UPDATE barang SET jumlah=jumlah-NEW.jumlah
	WHERE id_barang=NEW.id_barang;
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `batal_tr_penjualan` AFTER DELETE ON `trx_out` FOR EACH ROW BEGIN


INSERT INTO `batal_jual`

(`kd_trx`, `id_barang`, `kasir`, `nama_brg`, `jumlah`, `harga`, `harga_total`, `tgl_trx`) VALUES 


(              OLD.kd_trx,
               OLD.id_barang,
               OLD.kasir,
               OLD.nama_brg,
               OLD.jumlah,
               OLD.harga,
               OLD.harga_total,
               OLD.tgl_trx
);

END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `trx_sementara`
--

CREATE TABLE `trx_sementara` (
  `kd_trx` varchar(15) NOT NULL,
  `id_barang` varchar(10) NOT NULL,
  `kasir` varchar(20) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(7) NOT NULL,
  `hrg_total` int(10) NOT NULL,
  `tgl_trx` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` varchar(7) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(30) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `no_tlp` varchar(15) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `username`, `password`, `nama`, `alamat`, `no_tlp`, `level`) VALUES
('admin', 'admin', 'admin', 'admin', 'karawang', '085810506502', 'admin'),
('US-001', 'diah', '070897', 'diah komalasari', 'kampung munjul kidul, Desa Curug, Kecamatan Klari ', '083814137032', 'admin'),
('US-002', 'irpan', '12345', 'irpan', 'Kp. Banyu Resmi Kel. Banyu Resmi Kec. Bagendit Kota Garut', '083825772666', 'admin'),
('user', 'user', 'user', 'user', 'karawang', '085810506502', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`);

--
-- Indexes for table `barang_masuk`
--
ALTER TABLE `barang_masuk`
  ADD PRIMARY KEY (`no_trx`);

--
-- Indexes for table `no_trx`
--
ALTER TABLE `no_trx`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suplier`
--
ALTER TABLE `suplier`
  ADD PRIMARY KEY (`id_sp`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
