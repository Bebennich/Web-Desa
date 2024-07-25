-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 20 Jun 2024 pada 15.50
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
-- Database: `atol2`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_admin`, `username`, `password`, `nama_lengkap`) VALUES
(1, 'admin', 'admin', 'Eka Bagus Priambudi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(11) NOT NULL,
  `id_kelas` int(5) NOT NULL,
  `asal` varchar(100) NOT NULL,
  `tujuan` varchar(10) NOT NULL,
  `tanggal` date NOT NULL,
  `harga_produk` int(11) NOT NULL,
  `foto` varchar(100) NOT NULL,
  `jam_berangkat` time NOT NULL,
  `jam_datang` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `id_kelas`, `asal`, `tujuan`, `tanggal`, `harga_produk`, `foto`, `jam_berangkat`, `jam_datang`) VALUES
(37, 3, 'Surabaya', 'Jakarta', '2024-06-16', 400000, 'eugene-prunk-rREKGlQHeYk-unsplash.jpg', '09:00:00', '21:00:00'),
(38, 3, 'Jakarta', 'Surabaya', '2024-06-18', 400000, 'eugene-prunk-rREKGlQHeYk-unsplash.jpg', '19:00:00', '07:00:00'),
(39, 3, 'Jakarta ', 'Semarang', '2024-06-04', 200000, 'eugene-prunk-rREKGlQHeYk-unsplash.jpg', '09:30:00', '17:00:00'),
(40, 3, 'Semarang', 'Jakarta', '2024-06-24', 200000, 'eugene-prunk-rREKGlQHeYk-unsplash.jpg', '09:30:00', '17:00:00'),
(41, 4, 'Jakarta', 'Malang', '2024-07-02', 500000, 'eugene-prunk-rREKGlQHeYk-unsplash.jpg', '09:00:00', '22:00:00'),
(42, 3, 'Malang', 'Jakarta', '2024-07-03', 500000, 'eugene-prunk-rREKGlQHeYk-unsplash.jpg', '19:00:00', '08:00:00'),
(43, 4, 'Jakarta', 'Yogyakarta', '2024-06-26', 350000, 'eugene-prunk-rREKGlQHeYk-unsplash.jpg', '07:00:00', '15:00:00'),
(44, 4, 'Yogyakarta', 'Jakarta', '2024-07-04', 350000, 'eugene-prunk-rREKGlQHeYk-unsplash.jpg', '19:00:00', '03:00:00'),
(45, 4, 'Jakarta', 'Bandung', '2024-07-02', 150000, 'eugene-prunk-rREKGlQHeYk-unsplash.jpg', '09:00:00', '12:00:00'),
(46, 5, 'Bandung', 'Jakarta', '2024-07-02', 150000, 'eugene-prunk-rREKGlQHeYk-unsplash.jpg', '15:00:00', '18:00:00');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` int(5) NOT NULL,
  `nama_kelas` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kelas`
--

INSERT INTO `kelas` (`id_kelas`, `nama_kelas`) VALUES
(3, 'VIP'),
(4, 'Bisnis'),
(5, 'Ekonomi');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `email_pelanggan` varchar(100) NOT NULL,
  `password_pelanggan` varchar(50) NOT NULL,
  `nama_pelanggan` varchar(100) NOT NULL,
  `telepon` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `email_pelanggan`, `password_pelanggan`, `nama_pelanggan`, `telepon`) VALUES
(11, 'coba@gmail.com', 'coba', 'Eka Bagus Priambudi', '081332823283'),
(12, 'cobaan@gmail.com', 'cobaan', 'Eka Bagus Priambudi', '0812345678'),
(13, 'eka@gmail.com', 'eka', 'Eka Bagus Priambudi', '081234567890');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembayaran`
--

CREATE TABLE `pembayaran` (
  `id_pembayaran` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `bank` varchar(50) NOT NULL,
  `jumlah` int(20) NOT NULL,
  `tanggal` date NOT NULL,
  `bukti` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pembayaran`
--

INSERT INTO `pembayaran` (`id_pembayaran`, `id_pembelian`, `nama`, `bank`, `jumlah`, `tanggal`, `bukti`) VALUES
(10, 76, 'Eka Bagus Priambudi', 'Bank Jago', 1200000, '2024-06-07', '20240607083437Bukti UAS Statkom.png'),
(11, 85, 'Eka Bagus Priambudi', 'Bank Jago', 400000, '2024-06-20', '20240620144144Screenshot (20).png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `tanggal_pembelian` date NOT NULL,
  `total_pembelian` int(11) NOT NULL,
  `status_pembelian` varchar(100) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `id_pelanggan`, `tanggal_pembelian`, `total_pembelian`, `status_pembelian`) VALUES
(76, 11, '2024-06-07', 1200000, 'Batal'),
(77, 11, '2024-06-07', 1200000, 'pending'),
(78, 11, '2024-06-07', 800000, 'pending'),
(79, 11, '2024-06-07', 1600000, 'pending'),
(80, 11, '2024-06-07', 2800000, 'pending'),
(81, 11, '2024-06-07', 6000000, 'pending'),
(82, 11, '2024-06-07', 400000, 'pending'),
(83, 11, '2024-06-20', 400000, 'pending'),
(84, 11, '2024-06-20', 150000, 'pending'),
(85, 13, '2024-06-20', 400000, 'Sudah Melakukan Pembayaran'),
(86, 13, '2024-06-20', 400000, 'pending'),
(87, 13, '2024-06-20', 400000, 'pending'),
(88, 13, '2024-06-20', 800000, 'pending');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembelian_produk`
--

CREATE TABLE `pembelian_produk` (
  `id_pembelian_produk` int(11) NOT NULL,
  `id_pembelian` int(11) NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `subharga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pembelian_produk`
--

INSERT INTO `pembelian_produk` (`id_pembelian_produk`, `id_pembelian`, `id_jadwal`, `jumlah`, `nama`, `harga`, `subharga`) VALUES
(52, 76, 37, 3, 'Surabaya', 400000, 1200000),
(53, 77, 37, 3, 'Surabaya', 400000, 1200000),
(54, 78, 37, 2, 'Surabaya', 400000, 800000),
(55, 79, 37, 4, 'Surabaya', 400000, 1600000),
(56, 80, 37, 7, 'Surabaya', 400000, 2800000),
(57, 81, 37, 15, 'Surabaya', 400000, 6000000),
(58, 82, 37, 1, 'Surabaya', 400000, 400000),
(59, 83, 37, 1, 'Surabaya', 400000, 400000),
(60, 84, 46, 1, 'Bandung', 150000, 150000),
(61, 85, 37, 1, 'Surabaya', 400000, 400000),
(62, 86, 37, 1, 'Surabaya', 400000, 400000),
(63, 87, 37, 1, 'Surabaya', 400000, 400000),
(64, 88, 37, 2, 'Surabaya', 400000, 800000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `seat`
--

CREATE TABLE `seat` (
  `id_seat` int(11) NOT NULL,
  `id_jadwal` int(11) NOT NULL,
  `nomor_seat` varchar(10) NOT NULL,
  `status` enum('available','occupied') NOT NULL DEFAULT 'available'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `seat`
--

INSERT INTO `seat` (`id_seat`, `id_jadwal`, `nomor_seat`, `status`) VALUES
(22, 37, 'A1', 'available'),
(23, 37, 'A2', 'available'),
(24, 37, 'A3', 'available'),
(25, 37, 'A4', 'available'),
(26, 37, 'B1', 'available'),
(27, 37, 'B2', 'available'),
(28, 37, 'B3', 'available'),
(29, 37, 'B4', 'available'),
(30, 37, 'C1', 'available'),
(31, 37, 'C2', 'available'),
(32, 37, 'C3', 'available'),
(33, 37, 'C4', 'available'),
(34, 37, 'D1', 'available'),
(35, 37, 'D2', 'available'),
(36, 37, 'D3', 'available'),
(37, 37, 'D4', 'available'),
(38, 37, 'E1', 'available'),
(39, 37, 'E2', 'available'),
(40, 37, 'E3', 'available'),
(41, 37, 'E4', 'available'),
(42, 37, 'F1', 'available'),
(43, 37, 'F2', 'available'),
(44, 37, 'F3', 'available'),
(45, 37, 'F4', 'available'),
(46, 37, 'G1', 'available'),
(47, 37, 'G2', 'available'),
(48, 37, 'G3', 'available'),
(49, 37, 'G4', 'available'),
(50, 37, 'H1', 'occupied'),
(51, 37, 'H2', 'occupied'),
(52, 37, 'H3', 'available'),
(53, 37, 'H4', 'available'),
(54, 37, 'I1', 'available'),
(55, 37, 'I2', 'available'),
(56, 37, 'I3', 'available'),
(57, 37, 'I4', 'available'),
(58, 37, 'J1', 'available'),
(59, 37, 'J2', 'available'),
(60, 37, 'J3', 'available'),
(61, 37, 'J4', 'available'),
(62, 38, 'A1', 'available'),
(63, 38, 'A2', 'occupied'),
(64, 38, 'A3', 'available'),
(65, 38, 'A4', 'available'),
(66, 38, 'B1', 'available'),
(67, 38, 'B2', 'available'),
(68, 38, 'B3', 'available'),
(69, 38, 'B4', 'available'),
(70, 38, 'C1', 'available'),
(71, 38, 'C2', 'occupied'),
(72, 38, 'C3', 'available'),
(73, 38, 'C4', 'available'),
(74, 38, 'D1', 'available'),
(75, 38, 'D2', 'available'),
(76, 38, 'D3', 'available'),
(77, 38, 'D4', 'available'),
(78, 38, 'E1', 'available'),
(79, 38, 'E2', 'available'),
(80, 38, 'E3', 'available'),
(81, 38, 'E4', 'available'),
(82, 38, 'F1', 'available'),
(83, 38, 'F2', 'available'),
(84, 38, 'F3', 'available'),
(85, 38, 'F4', 'available'),
(86, 38, 'G1', 'available'),
(87, 38, 'G2', 'available'),
(88, 38, 'G3', 'available'),
(89, 38, 'G4', 'available'),
(90, 38, 'H1', 'available'),
(91, 38, 'H2', 'available'),
(92, 38, 'H3', 'available'),
(93, 38, 'H4', 'available'),
(94, 38, 'I1', 'available'),
(95, 38, 'I2', 'available'),
(96, 38, 'I3', 'available'),
(97, 38, 'I4', 'available'),
(98, 38, 'J1', 'available'),
(99, 38, 'J2', 'available'),
(100, 38, 'J3', 'available'),
(101, 38, 'J4', 'available'),
(102, 39, 'A1', 'available'),
(103, 39, 'A2', 'available'),
(104, 39, 'A3', 'available'),
(105, 39, 'A4', 'available'),
(106, 39, 'B1', 'available'),
(107, 39, 'B2', 'available'),
(108, 39, 'B3', 'available'),
(109, 39, 'B4', 'available'),
(110, 39, 'C1', 'available'),
(111, 39, 'C2', 'available'),
(112, 39, 'C3', 'available'),
(113, 39, 'C4', 'available'),
(114, 39, 'D1', 'available'),
(115, 39, 'D2', 'available'),
(116, 39, 'D3', 'available'),
(117, 39, 'D4', 'available'),
(118, 39, 'E1', 'available'),
(119, 39, 'E2', 'available'),
(120, 39, 'E3', 'available'),
(121, 39, 'E4', 'available'),
(122, 39, 'F1', 'available'),
(123, 39, 'F2', 'available'),
(124, 39, 'F3', 'available'),
(125, 39, 'F4', 'available'),
(126, 39, 'G1', 'available'),
(127, 39, 'G2', 'available'),
(128, 39, 'G3', 'available'),
(129, 39, 'G4', 'available'),
(130, 39, 'H1', 'available'),
(131, 39, 'H2', 'available'),
(132, 39, 'H3', 'available'),
(133, 39, 'H4', 'available'),
(134, 39, 'I1', 'available'),
(135, 39, 'I2', 'available'),
(136, 39, 'I3', 'available'),
(137, 39, 'I4', 'available'),
(138, 39, 'J1', 'available'),
(139, 39, 'J2', 'available'),
(140, 39, 'J3', 'available'),
(141, 39, 'J4', 'available'),
(142, 40, 'A1', 'available'),
(143, 40, 'A2', 'available'),
(144, 40, 'A3', 'available'),
(145, 40, 'A4', 'available'),
(146, 40, 'B1', 'available'),
(147, 40, 'B2', 'available'),
(148, 40, 'B3', 'available'),
(149, 40, 'B4', 'available'),
(150, 40, 'C1', 'available'),
(151, 40, 'C2', 'available'),
(152, 40, 'C3', 'available'),
(153, 40, 'C4', 'available'),
(154, 40, 'D1', 'available'),
(155, 40, 'D2', 'available'),
(156, 40, 'D3', 'available'),
(157, 40, 'D4', 'available'),
(158, 40, 'E1', 'available'),
(159, 40, 'E2', 'available'),
(160, 40, 'E3', 'available'),
(161, 40, 'E4', 'available'),
(162, 40, 'F1', 'available'),
(163, 40, 'F2', 'available'),
(164, 40, 'F3', 'available'),
(165, 40, 'F4', 'available'),
(166, 40, 'G1', 'available'),
(167, 40, 'G2', 'available'),
(168, 40, 'G3', 'available'),
(169, 40, 'G4', 'available'),
(170, 40, 'H1', 'available'),
(171, 40, 'H2', 'available'),
(172, 40, 'H3', 'available'),
(173, 40, 'H4', 'available'),
(174, 40, 'I1', 'available'),
(175, 40, 'I2', 'available'),
(176, 40, 'I3', 'available'),
(177, 40, 'I4', 'available'),
(178, 40, 'J1', 'available'),
(179, 40, 'J2', 'available'),
(180, 40, 'J3', 'available'),
(181, 40, 'J4', 'available'),
(182, 41, 'A1', 'available'),
(183, 41, 'A2', 'available'),
(184, 41, 'A3', 'available'),
(185, 41, 'A4', 'available'),
(186, 41, 'B1', 'available'),
(187, 41, 'B2', 'available'),
(188, 41, 'B3', 'available'),
(189, 41, 'B4', 'available'),
(190, 41, 'C1', 'available'),
(191, 41, 'C2', 'available'),
(192, 41, 'C3', 'available'),
(193, 41, 'C4', 'available'),
(194, 41, 'D1', 'available'),
(195, 41, 'D2', 'available'),
(196, 41, 'D3', 'available'),
(197, 41, 'D4', 'available'),
(198, 41, 'E1', 'available'),
(199, 41, 'E2', 'available'),
(200, 41, 'E3', 'available'),
(201, 41, 'E4', 'available'),
(202, 41, 'F1', 'available'),
(203, 41, 'F2', 'available'),
(204, 41, 'F3', 'available'),
(205, 41, 'F4', 'available'),
(206, 41, 'G1', 'available'),
(207, 41, 'G2', 'available'),
(208, 41, 'G3', 'available'),
(209, 41, 'G4', 'available'),
(210, 41, 'H1', 'available'),
(211, 41, 'H2', 'available'),
(212, 41, 'H3', 'available'),
(213, 41, 'H4', 'available'),
(214, 41, 'I1', 'available'),
(215, 41, 'I2', 'available'),
(216, 41, 'I3', 'available'),
(217, 41, 'I4', 'available'),
(218, 41, 'J1', 'occupied'),
(219, 41, 'J2', 'available'),
(220, 41, 'J3', 'available'),
(221, 41, 'J4', 'available'),
(222, 42, 'A1', 'available'),
(223, 42, 'A2', 'available'),
(224, 42, 'A3', 'available'),
(225, 42, 'A4', 'available'),
(226, 42, 'B1', 'available'),
(227, 42, 'B2', 'available'),
(228, 42, 'B3', 'available'),
(229, 42, 'B4', 'available'),
(230, 42, 'C1', 'available'),
(231, 42, 'C2', 'available'),
(232, 42, 'C3', 'available'),
(233, 42, 'C4', 'available'),
(234, 42, 'D1', 'available'),
(235, 42, 'D2', 'available'),
(236, 42, 'D3', 'available'),
(237, 42, 'D4', 'available'),
(238, 42, 'E1', 'available'),
(239, 42, 'E2', 'available'),
(240, 42, 'E3', 'available'),
(241, 42, 'E4', 'available'),
(242, 42, 'F1', 'available'),
(243, 42, 'F2', 'available'),
(244, 42, 'F3', 'available'),
(245, 42, 'F4', 'available'),
(246, 42, 'G1', 'available'),
(247, 42, 'G2', 'available'),
(248, 42, 'G3', 'available'),
(249, 42, 'G4', 'available'),
(250, 42, 'H1', 'available'),
(251, 42, 'H2', 'available'),
(252, 42, 'H3', 'available'),
(253, 42, 'H4', 'available'),
(254, 42, 'I1', 'available'),
(255, 42, 'I2', 'available'),
(256, 42, 'I3', 'available'),
(257, 42, 'I4', 'available'),
(258, 42, 'J1', 'available'),
(259, 42, 'J2', 'available'),
(260, 42, 'J3', 'available'),
(261, 42, 'J4', 'available'),
(262, 43, 'A1', 'available'),
(263, 43, 'A2', 'available'),
(264, 43, 'A3', 'available'),
(265, 43, 'A4', 'available'),
(266, 43, 'B1', 'available'),
(267, 43, 'B2', 'available'),
(268, 43, 'B3', 'available'),
(269, 43, 'B4', 'available'),
(270, 43, 'C1', 'available'),
(271, 43, 'C2', 'available'),
(272, 43, 'C3', 'available'),
(273, 43, 'C4', 'available'),
(274, 43, 'D1', 'available'),
(275, 43, 'D2', 'available'),
(276, 43, 'D3', 'available'),
(277, 43, 'D4', 'available'),
(278, 43, 'E1', 'available'),
(279, 43, 'E2', 'available'),
(280, 43, 'E3', 'available'),
(281, 43, 'E4', 'available'),
(282, 43, 'F1', 'available'),
(283, 43, 'F2', 'available'),
(284, 43, 'F3', 'available'),
(285, 43, 'F4', 'available'),
(286, 43, 'G1', 'available'),
(287, 43, 'G2', 'available'),
(288, 43, 'G3', 'available'),
(289, 43, 'G4', 'available'),
(290, 43, 'H1', 'available'),
(291, 43, 'H2', 'available'),
(292, 43, 'H3', 'available'),
(293, 43, 'H4', 'available'),
(294, 43, 'I1', 'available'),
(295, 43, 'I2', 'available'),
(296, 43, 'I3', 'available'),
(297, 43, 'I4', 'available'),
(298, 43, 'J1', 'available'),
(299, 43, 'J2', 'available'),
(300, 43, 'J3', 'available'),
(301, 43, 'J4', 'available'),
(302, 44, 'A1', 'available'),
(303, 44, 'A2', 'available'),
(304, 44, 'A3', 'available'),
(305, 44, 'A4', 'available'),
(306, 44, 'B1', 'available'),
(307, 44, 'B2', 'available'),
(308, 44, 'B3', 'available'),
(309, 44, 'B4', 'available'),
(310, 44, 'C1', 'available'),
(311, 44, 'C2', 'available'),
(312, 44, 'C3', 'available'),
(313, 44, 'C4', 'available'),
(314, 44, 'D1', 'available'),
(315, 44, 'D2', 'available'),
(316, 44, 'D3', 'available'),
(317, 44, 'D4', 'available'),
(318, 44, 'E1', 'available'),
(319, 44, 'E2', 'available'),
(320, 44, 'E3', 'available'),
(321, 44, 'E4', 'available'),
(322, 44, 'F1', 'available'),
(323, 44, 'F2', 'available'),
(324, 44, 'F3', 'available'),
(325, 44, 'F4', 'available'),
(326, 44, 'G1', 'available'),
(327, 44, 'G2', 'available'),
(328, 44, 'G3', 'available'),
(329, 44, 'G4', 'available'),
(330, 44, 'H1', 'available'),
(331, 44, 'H2', 'available'),
(332, 44, 'H3', 'available'),
(333, 44, 'H4', 'available'),
(334, 44, 'I1', 'available'),
(335, 44, 'I2', 'available'),
(336, 44, 'I3', 'available'),
(337, 44, 'I4', 'available'),
(338, 44, 'J1', 'available'),
(339, 44, 'J2', 'available'),
(340, 44, 'J3', 'available'),
(341, 44, 'J4', 'available'),
(342, 45, 'A1', 'available'),
(343, 45, 'A2', 'available'),
(344, 45, 'A3', 'available'),
(345, 45, 'A4', 'available'),
(346, 45, 'B1', 'available'),
(347, 45, 'B2', 'available'),
(348, 45, 'B3', 'available'),
(349, 45, 'B4', 'available'),
(350, 45, 'C1', 'available'),
(351, 45, 'C2', 'available'),
(352, 45, 'C3', 'available'),
(353, 45, 'C4', 'available'),
(354, 45, 'D1', 'available'),
(355, 45, 'D2', 'available'),
(356, 45, 'D3', 'available'),
(357, 45, 'D4', 'available'),
(358, 45, 'E1', 'available'),
(359, 45, 'E2', 'available'),
(360, 45, 'E3', 'available'),
(361, 45, 'E4', 'available'),
(362, 45, 'F1', 'available'),
(363, 45, 'F2', 'available'),
(364, 45, 'F3', 'available'),
(365, 45, 'F4', 'available'),
(366, 45, 'G1', 'available'),
(367, 45, 'G2', 'available'),
(368, 45, 'G3', 'available'),
(369, 45, 'G4', 'available'),
(370, 45, 'H1', 'available'),
(371, 45, 'H2', 'available'),
(372, 45, 'H3', 'available'),
(373, 45, 'H4', 'available'),
(374, 45, 'I1', 'available'),
(375, 45, 'I2', 'available'),
(376, 45, 'I3', 'available'),
(377, 45, 'I4', 'available'),
(378, 45, 'J1', 'available'),
(379, 45, 'J2', 'available'),
(380, 45, 'J3', 'available'),
(381, 45, 'J4', 'available'),
(382, 46, 'A1', 'available'),
(383, 46, 'A2', 'available'),
(384, 46, 'A3', 'available'),
(385, 46, 'A4', 'available'),
(386, 46, 'B1', 'available'),
(387, 46, 'B2', 'available'),
(388, 46, 'B3', 'available'),
(389, 46, 'B4', 'available'),
(390, 46, 'C1', 'available'),
(391, 46, 'C2', 'available'),
(392, 46, 'C3', 'available'),
(393, 46, 'C4', 'available'),
(394, 46, 'D1', 'available'),
(395, 46, 'D2', 'available'),
(396, 46, 'D3', 'available'),
(397, 46, 'D4', 'available'),
(398, 46, 'E1', 'available'),
(399, 46, 'E2', 'available'),
(400, 46, 'E3', 'available'),
(401, 46, 'E4', 'available'),
(402, 46, 'F1', 'available'),
(403, 46, 'F2', 'available'),
(404, 46, 'F3', 'available'),
(405, 46, 'F4', 'available'),
(406, 46, 'G1', 'available'),
(407, 46, 'G2', 'available'),
(408, 46, 'G3', 'available'),
(409, 46, 'G4', 'available'),
(410, 46, 'H1', 'available'),
(411, 46, 'H2', 'available'),
(412, 46, 'H3', 'available'),
(413, 46, 'H4', 'available'),
(414, 46, 'I1', 'occupied'),
(415, 46, 'I2', 'available'),
(416, 46, 'I3', 'available'),
(417, 46, 'I4', 'available'),
(418, 46, 'J1', 'available'),
(419, 46, 'J2', 'available'),
(420, 46, 'J3', 'available'),
(421, 46, 'J4', 'available');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`),
  ADD KEY `id_kelas` (`id_kelas`);

--
-- Indeks untuk tabel `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indeks untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`id_pembayaran`),
  ADD KEY `id_pembelian` (`id_pembelian`);

--
-- Indeks untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- Indeks untuk tabel `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  ADD PRIMARY KEY (`id_pembelian_produk`),
  ADD KEY `id_pembelian` (`id_pembelian`),
  ADD KEY `id_produk` (`id_jadwal`);

--
-- Indeks untuk tabel `seat`
--
ALTER TABLE `seat`
  ADD PRIMARY KEY (`id_seat`),
  ADD KEY `id_jadwal` (`id_jadwal`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT untuk tabel `kelas`
--
ALTER TABLE `kelas`
  MODIFY `id_kelas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `id_pembayaran` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT untuk tabel `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  MODIFY `id_pembelian_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT untuk tabel `seat`
--
ALTER TABLE `seat`
  MODIFY `id_seat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=422;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD CONSTRAINT `jadwal_ibfk_1` FOREIGN KEY (`id_kelas`) REFERENCES `kelas` (`id_kelas`);

--
-- Ketidakleluasaan untuk tabel `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`id_pembelian`) REFERENCES `pembelian` (`id_pembelian`);

--
-- Ketidakleluasaan untuk tabel `pembelian`
--
ALTER TABLE `pembelian`
  ADD CONSTRAINT `pembelian_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`);

--
-- Ketidakleluasaan untuk tabel `pembelian_produk`
--
ALTER TABLE `pembelian_produk`
  ADD CONSTRAINT `pembelian_produk_ibfk_1` FOREIGN KEY (`id_pembelian`) REFERENCES `pembelian` (`id_pembelian`),
  ADD CONSTRAINT `pembelian_produk_ibfk_2` FOREIGN KEY (`id_jadwal`) REFERENCES `jadwal` (`id_jadwal`);

--
-- Ketidakleluasaan untuk tabel `seat`
--
ALTER TABLE `seat`
  ADD CONSTRAINT `seat_ibfk_1` FOREIGN KEY (`id_jadwal`) REFERENCES `jadwal` (`id_jadwal`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
