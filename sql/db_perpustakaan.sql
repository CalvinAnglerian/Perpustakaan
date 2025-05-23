-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 23 Bulan Mei 2025 pada 06.30
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_perpustakaan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_anggota`
--

CREATE TABLE `tb_anggota` (
  `ID_Anggota` int(11) NOT NULL,
  `Nama_Anggota` varchar(255) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `No_Telepon` varchar(25) NOT NULL,
  `Status` tinyint(1) NOT NULL,
  `Created_At` timestamp NOT NULL DEFAULT current_timestamp(),
  `Updated_At` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_anggota`
--

INSERT INTO `tb_anggota` (`ID_Anggota`, `Nama_Anggota`, `Email`, `No_Telepon`, `Status`, `Created_At`, `Updated_At`) VALUES
(1, 'Jefli Jonathan', 'jeflijonathan@gmail.com', '08218238748', 0, '2025-05-18 05:31:47', '2025-05-18 09:23:56'),
(2, 'Nicholas Tan', 'nicholasTan@gmail.com', '08218238749', 1, '2025-05-18 05:41:53', '2025-05-20 15:47:48'),
(3, 'Calvin', 'calvin@gmail.com', '082182616802', 1, '2025-05-18 09:24:27', '2025-05-20 15:47:39'),
(4, 'Michael Felix Chandra', 'michaelfelixchandra@gmail.com', '0890543235777', 1, '2025-05-19 17:14:06', '2025-05-20 15:47:23'),
(5, 'Fanny Gloria Victoria', 'fannygloriavict@gmail.com', '087666784323', 1, '2025-05-19 17:18:34', '2025-05-20 15:47:11'),
(6, 'Alveric Ken', 'kenalveric@gmail.com', '085415679891', 1, '2025-05-20 15:46:54', '2025-05-20 15:46:54'),
(7, 'Excel Jiko Unique', 'exeljikouniq@gmail.com', '08765423456787', 1, '2025-05-20 16:06:47', '2025-05-20 16:06:47');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_bahasa`
--

CREATE TABLE `tb_bahasa` (
  `ID_Bahasa` int(11) NOT NULL,
  `Nama_Bahasa` varchar(255) NOT NULL,
  `Created_At` timestamp NOT NULL DEFAULT current_timestamp(),
  `Status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
--- Dumping data untuk tabel `tb_bahasa`
--

INSERT INTO `tb_bahasa` (`ID_Bahasa`, `Nama_Bahasa`, `Created_At`, `Status`) VALUES
(1, 'Indonesia', '2025-05-18 05:05:29', 1),
(2, 'Inggris', '2025-05-18 05:05:36', 1),
(3, 'Jepang', '2025-05-18 05:05:42', 1),
(4, 'Mandarin', '2025-05-18 05:05:49', 1),
(5, 'Malaysia', '2025-05-19 16:04:07', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_buku`
--

CREATE TABLE `tb_buku` (
  `ID_Buku` int(11) NOT NULL,
  `Judul` varchar(255) NOT NULL,
  `Id_Penerbit` int(11) NOT NULL,
  `ID_Bahasa` int(11) NOT NULL,
  `ID_Kategori` int(11) NOT NULL,
  `Stok` int(11) NOT NULL,
  `Created_At` timestamp NOT NULL DEFAULT current_timestamp(),
  `Updated_At` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_buku`
--

INSERT INTO `tb_buku` (`ID_Buku`, `Judul`, `Id_Penerbit`, `ID_Bahasa`, `ID_Kategori`, `Stok`, `Created_At`, `Updated_At`, `Status`) VALUES
(1, 'Cara Membuat Nasi Goreng', 2, 1, 1, 0, '2025-05-18 05:09:30', '2025-05-20 16:04:14', 1),
(2, 'Cara Cepat Success', 4, 1, 3, 9, '2025-05-18 06:32:47', '2025-05-20 16:14:13', 1),
(3, 'Dongeng Lengkap Kancil', 7, 1, 5, 9, '2025-05-19 15:52:10', '2025-05-20 16:10:30', 1),
(4, 'Nothing is Impossible', 4, 2, 2, 4, '2025-05-19 15:58:39', '2025-05-20 16:11:09', 1),
(5, 'Boboiboy Galaxy Musim 2', 8, 5, 4, 49, '2025-05-19 16:04:48', '2025-05-19 17:15:28', 1),
(6, 'Laskar Pelangi', 4, 1, 5, 19, '2025-05-19 16:11:58', '2025-05-20 16:09:37', 1),
(7, 'Mimpi Sejuta Dolar', 2, 1, 2, 14, '2025-05-19 16:16:35', '2025-05-20 16:19:52', 1),
(8, 'Badai Pasti Berlalu', 2, 1, 5, 19, '2025-05-19 16:20:25', '2025-05-19 17:22:00', 1),
(9, 'Cantik Itu Luka', 2, 1, 5, 9, '2025-05-19 16:23:47', '2025-05-19 17:19:03', 1),
(10, 'Suatu Hari Kita Akan Bertemu', 6, 1, 5, 3, '2025-05-19 16:27:26', '2025-05-20 16:16:12', 1),
(11, 'Habibie & Ainun', 9, 1, 2, 10, '2025-05-19 16:31:07', '2025-05-20 15:52:53', 0),
(12, 'The Premonition', 10, 3, 2, 49, '2025-05-19 16:36:30', '2025-05-20 16:19:07', 1),
(13, 'Grandmaster of Demonic Cultivation', 11, 4, 3, 39, '2025-05-19 16:40:00', '2025-05-20 16:03:31', 1),
(14, 'The Fault in Our Stars', 12, 2, 3, 44, '2025-05-19 16:43:02', '2025-05-20 16:18:31', 1),
(15, 'Jurnal Psikologi Terapan dan Kesehatan Mental', 5, 1, 1, 29, '2025-05-19 16:47:08', '2025-05-20 16:17:02', 1),
(16, 'International Journal of Business Information Systems', 2, 2, 1, 18, '2025-05-19 16:50:55', '2025-05-20 16:07:52', 1),
(17, 'Jurnal Riset Pembelajaran Anak dan Remaja', 1, 1, 1, 24, '2025-05-19 16:53:19', '2025-05-20 16:09:05', 1),
(18, 'The Light that Illuminates Hope', 5, 1, 4, 49, '2025-05-19 16:58:25', '2025-05-20 16:17:48', 1),
(19, 'Si Juki', 14, 1, 4, 69, '2025-05-19 17:05:48', '2025-05-20 16:02:30', 1),
(20, 'Detektif Conan', 14, 1, 4, 54, '2025-05-19 17:11:34', '2025-05-20 15:45:28', 1),
(21, 'Kita Semua Punya Cerita', 2, 1, 3, 12, '2025-05-20 15:57:48', '2025-05-20 15:58:59', 0),
(22, 'Hidup Bagaikan Pesawat Kertas', 3, 1, 3, 10, '2025-05-20 16:00:55', '2025-05-20 16:01:24', 0),
(23, 'Nice To Meet You', 13, 1, 4, 24, '2025-05-20 16:13:01', '2025-05-20 16:14:59', 1),
(24, 'Petualangan Di Angkasa', 5, 1, 4, 2, '2025-05-20 16:22:42', '2025-05-20 16:24:31', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `ID_Kategori` int(11) NOT NULL,
  `Nama` varchar(100) NOT NULL,
  `Status` varchar(20) NOT NULL,
  `Created_At` timestamp NOT NULL DEFAULT current_timestamp(),
  `Updated_At` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_kategori`
--

INSERT INTO `tb_kategori` (`ID_Kategori`, `Nama`, `Status`, `Created_At`, `Updated_At`) VALUES
(1, 'Jurnal', '1', '2025-05-18 05:02:24', '2025-05-18 05:02:24'),
(2, 'Novel NonFiksi', '1', '2025-05-18 05:02:42', '2025-05-18 05:03:19'),
(3, 'Novel Fiksi', '1', '2025-05-18 05:03:09', '2025-05-18 05:03:09'),
(4, 'Komik', '1', '2025-05-18 05:03:28', '2025-05-18 05:03:28'),
(5, 'Fiksi', '1', '2025-05-19 15:52:22', '2025-05-19 15:52:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_peminjaman`
--

CREATE TABLE `tb_peminjaman` (
  `ID_Peminjaman` int(11) NOT NULL,
  `Tanggal_Pinjam` date NOT NULL,
  `Tanggal_Kembali` date NOT NULL,
  `ID_Anggota` int(11) NOT NULL,
  `Created_At` timestamp NOT NULL DEFAULT current_timestamp(),
  `Updated_At` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Status` enum('Dipinjam','Dibatalkan','Dikembalikan','') NOT NULL,
  `ID_Buku` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_peminjaman`
--

INSERT INTO `tb_peminjaman` (`ID_Peminjaman`, `Tanggal_Pinjam`, `Tanggal_Kembali`, `ID_Anggota`, `Created_At`, `Updated_At`, `Status`, `ID_Buku`) VALUES
(15, '2025-05-20', '2025-05-30', 3, '2025-05-19 17:15:28', '2025-05-19 17:15:28', 'Dipinjam', 5),
(16, '2025-05-20', '2025-06-01', 2, '2025-05-19 17:16:16', '2025-05-19 17:21:16', 'Dikembalikan', 11),
(17, '2025-05-20', '2025-05-25', 4, '2025-05-19 17:17:13', '2025-05-19 17:17:13', 'Dipinjam', 16),
(18, '2025-05-20', '2025-05-28', 5, '2025-05-19 17:19:03', '2025-05-19 17:19:03', 'Dipinjam', 9),
(19, '2025-05-20', '2025-05-29', 2, '2025-05-19 17:22:00', '2025-05-19 17:22:00', 'Dipinjam', 8),
(20, '2025-05-20', '2025-05-23', 3, '2025-05-19 17:23:21', '2025-05-19 17:23:41', 'Dibatalkan', 14),
(21, '2025-05-20', '2025-05-26', 3, '2025-05-20 15:45:28', '2025-05-20 15:45:28', 'Dipinjam', 20),
(22, '2025-05-20', '2025-06-03', 2, '2025-05-20 16:02:30', '2025-05-20 16:02:30', 'Dipinjam', 19),
(23, '2025-05-20', '2025-05-29', 4, '2025-05-20 16:03:31', '2025-05-20 16:03:31', 'Dipinjam', 13),
(24, '2025-05-20', '2025-05-28', 5, '2025-05-20 16:04:14', '2025-05-20 16:04:14', 'Dipinjam', 1),
(25, '2025-05-20', '2025-05-24', 6, '2025-05-20 16:07:52', '2025-05-20 16:07:52', 'Dipinjam', 16),
(26, '2025-05-20', '2025-05-25', 6, '2025-05-20 16:08:22', '2025-05-20 16:08:22', 'Dipinjam', 10),
(27, '2025-05-20', '2025-05-25', 7, '2025-05-20 16:09:05', '2025-05-20 16:09:05', 'Dipinjam', 17),
(28, '2025-05-20', '2025-05-26', 7, '2025-05-20 16:09:37', '2025-05-20 16:09:37', 'Dipinjam', 6),
(29, '2025-05-20', '2025-06-02', 2, '2025-05-20 16:10:30', '2025-05-20 16:10:30', 'Dipinjam', 3),
(30, '2025-05-20', '2025-06-03', 3, '2025-05-20 16:11:09', '2025-05-20 16:11:09', 'Dipinjam', 4),
(31, '2025-05-20', '2025-06-04', 2, '2025-05-20 16:14:13', '2025-05-20 16:14:13', 'Dipinjam', 2),
(32, '2025-05-20', '2025-06-02', 3, '2025-05-20 16:14:59', '2025-05-20 16:14:59', 'Dipinjam', 23),
(33, '2025-05-20', '2025-06-06', 6, '2025-05-20 16:16:12', '2025-05-20 16:16:12', 'Dipinjam', 10),
(34, '2025-05-20', '2025-06-10', 6, '2025-05-20 16:17:02', '2025-05-20 16:17:02', 'Dipinjam', 15),
(35, '2025-05-20', '2025-06-07', 7, '2025-05-20 16:17:48', '2025-05-20 16:17:48', 'Dipinjam', 18),
(36, '2025-05-20', '2025-05-03', 7, '2025-05-20 16:18:31', '2025-05-20 16:18:31', 'Dipinjam', 14),
(37, '2025-05-20', '2025-05-31', 5, '2025-05-20 16:19:07', '2025-05-20 16:19:07', 'Dipinjam', 12),
(38, '2025-05-20', '2025-05-28', 5, '2025-05-20 16:19:52', '2025-05-20 16:19:52', 'Dipinjam', 7),
(39, '2025-05-20', '2025-06-06', 3, '2025-05-20 16:24:04', '2025-05-20 16:24:04', 'Dipinjam', 24),
(40, '2025-05-20', '2025-05-27', 5, '2025-05-20 16:24:31', '2025-05-20 16:24:31', 'Dipinjam', 24);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_penerbit`
--

CREATE TABLE `tb_penerbit` (
  `ID_Penerbit` int(11) NOT NULL,
  `Nama_Penerbit` varchar(100) NOT NULL,
  `Status` tinyint(1) NOT NULL,
  `Created_At` timestamp NOT NULL DEFAULT current_timestamp(),
  `Updated_At` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_penerbit`
--

INSERT INTO `tb_penerbit` (`ID_Penerbit`, `Nama_Penerbit`, `Status`, `Created_At`, `Updated_At`) VALUES
(1, 'Erlanga', 1, '2025-05-18 05:06:06', '2025-05-18 05:06:41'),
(2, 'Gramedia Pustaka Utama', 1, '2025-05-18 05:07:02', '2025-05-18 05:07:02'),
(3, 'Mizan', 1, '2025-05-18 05:07:16', '2025-05-18 05:07:16'),
(4, 'Bentang Pustaka', 1, '2025-05-18 05:07:25', '2025-05-18 05:07:25'),
(5, 'Penerbit Kanisius', 1, '2025-05-18 05:07:34', '2025-05-18 05:07:34'),
(6, 'GagasMedia', 1, '2025-05-18 05:07:45', '2025-05-18 05:07:45'),
(7, 'Laksana', 1, '2025-05-19 15:48:48', '2025-05-19 15:48:48'),
(8, 'Animonsta Studios', 1, '2025-05-19 16:02:26', '2025-05-19 16:02:26'),
(9, 'THC Mandiri', 1, '2025-05-19 16:30:25', '2025-05-19 16:30:25'),
(10, 'KadoKawa', 1, '2025-05-19 16:35:06', '2025-05-19 16:35:06'),
(11, 'Jinjiang Literature City', 1, '2025-05-19 16:38:38', '2025-05-19 16:38:38'),
(12, 'Dutton Books', 1, '2025-05-19 16:41:29', '2025-05-19 16:41:29'),
(13, 'LINE Webtoon', 1, '2025-05-19 17:00:52', '2025-05-20 16:12:27'),
(14, 'Elex Media Komputindo', 1, '2025-05-19 17:04:37', '2025-05-19 17:04:37'),
(15, 'Indie', 0, '2025-05-19 17:10:57', '2025-05-19 17:12:08');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_penulis`
--

CREATE TABLE `tb_penulis` (
  `ID_Penulis` int(11) NOT NULL,
  `Nama_Penulis` varchar(255) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `No_Telepon` varchar(25) NOT NULL,
  `Created_At` timestamp NOT NULL DEFAULT current_timestamp(),
  `Updated_At` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `Status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_penulis`
--

INSERT INTO `tb_penulis` (`ID_Penulis`, `Nama_Penulis`, `Email`, `No_Telepon`, `Created_At`, `Updated_At`, `Status`) VALUES
(1, 'jefli jonathan', 'jeflyjonathan1@gmail.com', '082182616807', '2025-05-18 05:08:02', '2025-05-18 05:15:16', 1),
(2, 'Michael Felix Chandara', 'michaelfelixchan@gmail.com', '082182616801', '2025-05-18 05:08:16', '2025-05-20 15:49:02', 1),
(3, 'Calvin ', 'calvin@gmail.com', '082182616805', '2025-05-18 05:08:33', '2025-05-20 15:49:26', 1),
(4, 'Kak Thifa', 'thifa2578@gmail.com', '082145674544', '2025-05-19 15:50:50', '2025-05-20 15:49:35', 1),
(5, 'Nizam Razak', 'nizamrajak@gmail.com', '098715266155', '2025-05-19 16:07:11', '2025-05-20 15:49:44', 1),
(6, 'Anas Abdul Aziz', 'anasabdulaziz@gmail.com', '089543142866', '2025-05-19 16:08:07', '2025-05-20 15:50:02', 1),
(7, 'Andrea Hinata', 'hinataandrea515177@gmail.com', '082145754556', '2025-05-19 16:13:02', '2025-05-20 15:49:53', 1),
(8, 'Merry Riana', 'merryriana@gmail.com', '089524157667', '2025-05-19 16:17:37', '2025-05-20 15:50:11', 1),
(9, 'Marga T', 'margaT45309@gmail.com', '089543234564', '2025-05-19 16:21:20', '2025-05-20 15:50:19', 1),
(10, 'Eka Kurniawan', 'ekakurniawan45@gmail.com', '089543457887', '2025-05-19 16:24:41', '2025-05-20 15:50:31', 1),
(11, 'B.J Habibie', 'habibie457@gmail.com', '0876546666557', '2025-05-19 16:32:09', '2025-05-20 15:51:26', 0),
(12, 'Banana Yoshimoto', 'yoshimoto89@gmail.com', '098757445789', '2025-05-19 16:35:55', '2025-05-20 15:51:49', 1),
(13, 'Mo Xiang Tong Xiu', 'xiangtongxiu@gmail.com', '087654577899', '2025-05-19 16:39:23', '2025-05-20 15:51:39', 1),
(14, 'John Green', 'john3257@gmail.com', '078654357889', '2025-05-19 16:42:09', '2025-05-20 15:53:14', 1),
(15, 'Nicholas Tan', 'nicholastan24@gmail.com', '098972269812', '2025-05-19 16:47:57', '2025-05-20 15:48:48', 1),
(16, 'Wishroomness', 'wishroomness267@gmail.com', '080765457776', '2025-05-19 17:01:37', '2025-05-20 16:12:14', 1),
(17, 'Faza Meonk', 'fazameonk7432@gmail.com', '087065458887', '2025-05-19 17:05:22', '2025-05-20 15:48:24', 1),
(18, 'Gosho Aoyama', 'goshoaoyama@gmail.com', '087654433686', '2025-05-19 17:10:30', '2025-05-20 15:48:08', 1),
(19, 'Mario Sinaga', 'mariosinaga2233@gmail.com', '087635425676', '2025-05-20 15:55:44', '2025-05-20 16:01:33', 0),
(20, 'Fattah Fernandez', 'fattahfernandez453@gmail.com', '087654678981', '2025-05-20 15:56:41', '2025-05-20 16:00:11', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_penulis_buku`
--

CREATE TABLE `tb_penulis_buku` (
  `ID_Buku` int(11) NOT NULL,
  `ID_Penulis` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_penulis_buku`
--

INSERT INTO `tb_penulis_buku` (`ID_Buku`, `ID_Penulis`) VALUES
(1, 1),
(1, 2),
(2, 2),
(2, 3),
(3, 4),
(4, 3),
(5, 5),
(5, 6),
(6, 7),
(7, 8),
(8, 9),
(9, 10),
(10, 1),
(10, 2),
(11, 11),
(12, 12),
(13, 13),
(14, 14),
(15, 15),
(16, 15),
(16, 2),
(16, 1),
(17, 2),
(17, 15),
(18, 3),
(18, 15),
(19, 17),
(20, 18),
(21, 20),
(22, 19),
(23, 16),
(24, 1),
(24, 2),
(24, 3),
(24, 15);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_anggota`
--
ALTER TABLE `tb_anggota`
  ADD PRIMARY KEY (`ID_Anggota`);

--
-- Indeks untuk tabel `tb_bahasa`
--
ALTER TABLE `tb_bahasa`
  ADD PRIMARY KEY (`ID_Bahasa`);

--
-- Indeks untuk tabel `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD PRIMARY KEY (`ID_Buku`),
  ADD KEY `Id_Penerbit` (`Id_Penerbit`),
  ADD KEY `ID_Kategori` (`ID_Kategori`),
  ADD KEY `ID_Bahasa` (`ID_Bahasa`);

--
-- Indeks untuk tabel `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`ID_Kategori`);

--
-- Indeks untuk tabel `tb_peminjaman`
--
ALTER TABLE `tb_peminjaman`
  ADD PRIMARY KEY (`ID_Peminjaman`),
  ADD KEY `ID_Anggota` (`ID_Anggota`),
  ADD KEY `ID_Buku` (`ID_Buku`);

--
-- Indeks untuk tabel `tb_penerbit`
--
ALTER TABLE `tb_penerbit`
  ADD PRIMARY KEY (`ID_Penerbit`);

--
-- Indeks untuk tabel `tb_penulis`
--
ALTER TABLE `tb_penulis`
  ADD PRIMARY KEY (`ID_Penulis`);

--
-- Indeks untuk tabel `tb_penulis_buku`
--
ALTER TABLE `tb_penulis_buku`
  ADD KEY `ID_Buku` (`ID_Buku`),
  ADD KEY `ID_Penulis` (`ID_Penulis`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_anggota`
--
ALTER TABLE `tb_anggota`
  MODIFY `ID_Anggota` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tb_bahasa`
--
ALTER TABLE `tb_bahasa`
  MODIFY `ID_Bahasa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_buku`
--
ALTER TABLE `tb_buku`
  MODIFY `ID_Buku` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `ID_Kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_peminjaman`
--
ALTER TABLE `tb_peminjaman`
  MODIFY `ID_Peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT untuk tabel `tb_penerbit`
--
ALTER TABLE `tb_penerbit`
  MODIFY `ID_Penerbit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `tb_penulis`
--
ALTER TABLE `tb_penulis`
  MODIFY `ID_Penulis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_buku`
--
ALTER TABLE `tb_buku`
  ADD CONSTRAINT `tb_buku_ibfk_1` FOREIGN KEY (`Id_Penerbit`) REFERENCES `tb_penerbit` (`ID_Penerbit`),
  ADD CONSTRAINT `tb_buku_ibfk_2` FOREIGN KEY (`ID_Kategori`) REFERENCES `tb_kategori` (`ID_Kategori`),
  ADD CONSTRAINT `tb_buku_ibfk_3` FOREIGN KEY (`ID_Bahasa`) REFERENCES `tb_bahasa` (`ID_Bahasa`);

--
-- Ketidakleluasaan untuk tabel `tb_peminjaman`
--
ALTER TABLE `tb_peminjaman`
  ADD CONSTRAINT `tb_peminjaman_ibfk_1` FOREIGN KEY (`ID_Anggota`) REFERENCES `tb_anggota` (`ID_Anggota`),
  ADD CONSTRAINT `tb_peminjaman_ibfk_2` FOREIGN KEY (`ID_Buku`) REFERENCES `tb_buku` (`ID_Buku`);

--
-- Ketidakleluasaan untuk tabel `tb_penulis_buku`
--
ALTER TABLE `tb_penulis_buku`
  ADD CONSTRAINT `tb_penulis_buku_ibfk_1` FOREIGN KEY (`ID_Buku`) REFERENCES `tb_buku` (`ID_Buku`),
  ADD CONSTRAINT `tb_penulis_buku_ibfk_2` FOREIGN KEY (`ID_Penulis`) REFERENCES `tb_penulis` (`ID_Penulis`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
