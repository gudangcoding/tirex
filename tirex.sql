-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 01 Agu 2019 pada 12.46
-- Versi server: 10.1.38-MariaDB
-- Versi PHP: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tirex`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `cabang`
--

CREATE TABLE `cabang` (
  `id` int(11) NOT NULL,
  `nama_cabang` varchar(50) DEFAULT NULL,
  `kode_cabang` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_tarif`
--

CREATE TABLE `daftar_tarif` (
  `id` int(11) NOT NULL,
  `id_provinsi` int(11) NOT NULL,
  `nama_kota` varchar(50) NOT NULL,
  `kode` varchar(5) NOT NULL,
  `harga` int(11) NOT NULL,
  `min_charge` int(11) NOT NULL,
  `waktu` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `daftar_tarif`
--

INSERT INTO `daftar_tarif` (`id`, `id_provinsi`, `nama_kota`, `kode`, `harga`, `min_charge`, `waktu`) VALUES
(1, 5, '', '', 0, 0, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kurir_order`
--

CREATE TABLE `kurir_order` (
  `id` int(11) NOT NULL,
  `no_po` int(11) NOT NULL,
  `id_pengirim` int(11) NOT NULL,
  `id_kota` int(11) NOT NULL,
  `id_layanan` int(11) NOT NULL,
  `tgl_pickup` datetime NOT NULL,
  `alamat_pengambilan` varchar(255) NOT NULL,
  `catatan` varchar(100) NOT NULL,
  `penerima` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telepon` int(30) NOT NULL,
  `alamat_tujuan` varchar(255) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `layanan`
--

CREATE TABLE `layanan` (
  `id` int(11) NOT NULL,
  `nama_layanan` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `layanan`
--

INSERT INTO `layanan` (`id`, `nama_layanan`) VALUES
(1, 'Reguler'),
(2, 'Borongan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `packaging`
--

CREATE TABLE `packaging` (
  `id` int(11) NOT NULL,
  `packaging` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengiriman`
--

CREATE TABLE `pengiriman` (
  `id` int(11) NOT NULL,
  `no_resi` varchar(50) DEFAULT NULL,
  `tgl_pickup` date DEFAULT NULL,
  `nama_pengirim` varchar(50) DEFAULT NULL,
  `dari` varchar(5) DEFAULT NULL,
  `alamat_pengambilan` varchar(50) DEFAULT NULL,
  `nama_penerima` varchar(50) DEFAULT NULL,
  `tujuan` varchar(5) DEFAULT NULL,
  `alamat_penerima` varchar(50) DEFAULT NULL,
  `no_hp_penerima` int(50) DEFAULT NULL,
  `email_penerima` varchar(255) DEFAULT NULL,
  `petugas` int(11) DEFAULT NULL,
  `status_kiriman` varchar(30) DEFAULT NULL,
  `layanan` varchar(50) DEFAULT NULL,
  `type` varchar(15) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `catatan` text,
  `alamat_tujuan` text
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pengiriman`
--

INSERT INTO `pengiriman` (`id`, `no_resi`, `tgl_pickup`, `nama_pengirim`, `dari`, `alamat_pengambilan`, `nama_penerima`, `tujuan`, `alamat_penerima`, `no_hp_penerima`, `email_penerima`, `petugas`, `status_kiriman`, `layanan`, `type`, `harga`, `catatan`, `alamat_tujuan`) VALUES
(1, 'TRX/20190731/JKT/BAH/000001', '2019-08-05', '13', 'JKT', 'ddd', 'fddfd', 'BAH', 'dddf', 233, 'a@a.com', 1, 'Order Diproser Oleh Marketing', NULL, 'Tirex', 10000, NULL, 'dddf'),
(2, 'TRX/20190731/JKT/BAH/000002', '2019-08-05', '10', 'JKT', 'ddd', 'fddfd', 'BAH', 'dddf', 233, 'a@a.com', 1, 'Order Diproser Oleh Marketing', 'Reguler', 'Tirex', 10000, NULL, 'dddf'),
(3, 'TRX/20190731/JKT/BAH/000003', '2019-08-05', '10', 'JKT', 'ddd', 'fddfd', 'BAH', 'dddf', 233, 'a@a.com', 1, 'Order Diproser Oleh Marketing', 'Reguler', 'Tirex', 10000, NULL, 'dddf'),
(4, 'TRX/20190731/JKT/BAH/000004', '2019-08-05', '10', 'JKT', 'ddd', 'fddfd', 'BAH', 'dddf', 233, 'a@a.com', 1, 'Order Diproser Oleh Marketing', 'Reguler', 'Tirex', 10000, NULL, 'dddf'),
(5, 'TRX/20190731/JKT/BAH/000005', '2019-08-05', '10', 'JKT', 'ddd', 'fddfd', 'BAH', 'dddf', 233, 'a@a.com', 1, 'Order Diproser Oleh Marketing', 'Reguler', 'Tirex', 10000, NULL, 'dddf'),
(6, 'TRX/20190731/JKT/BAH/000006', '2019-08-05', '10', 'JKT', 'ddd', 'fddfd', 'BAH', 'dddf', 233, 'a@a.com', 1, 'Order Diproser Oleh Marketing', 'Reguler', 'Tirex', 10000, NULL, 'dddf');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pengiriman_detail`
--

CREATE TABLE `pengiriman_detail` (
  `no_resi` varchar(30) DEFAULT NULL,
  `jenis_barang` varchar(255) DEFAULT NULL,
  `deskripsi_barang` varchar(255) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `pajang` float DEFAULT NULL,
  `lebar` float DEFAULT NULL,
  `tinggi` float DEFAULT NULL,
  `volume` float DEFAULT NULL,
  `berat` int(11) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `sub_total` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `provinsi`
--

CREATE TABLE `provinsi` (
  `id` int(11) NOT NULL,
  `nama_provinsi` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `provinsi`
--

INSERT INTO `provinsi` (`id`, `nama_provinsi`) VALUES
(1, 'Aceh'),
(2, 'Bali'),
(3, 'Banten'),
(4, 'Bengkulu'),
(5, 'DI Yogyakarta'),
(6, 'DKI Jakarta'),
(7, 'Gorontalo'),
(8, 'Jambi'),
(9, 'Jawa Barat'),
(10, 'Jawa Tengah'),
(11, 'Jawa Timur'),
(12, 'Kalimantan Barat'),
(13, 'Kalimantan Selatan'),
(14, 'Kalimantan Tengah'),
(15, 'Kalimantan Timur'),
(16, 'Kalimantan Utara'),
(17, 'Kepulauan Bangka Belitung'),
(18, 'Kepulauan Riau'),
(19, 'Lampung'),
(20, 'Maluku'),
(21, 'Maluku Utara'),
(22, 'Nusa Tenggara Barat (NTB)'),
(23, 'Nusa Tenggara Timur (NTT)'),
(24, 'Papua'),
(25, 'Papua Barat'),
(26, 'Riau'),
(27, 'Sulawesi Barat'),
(28, 'Sulawesi Selatan'),
(29, 'Sulawesi Tengah'),
(30, 'Sulawesi Tenggara'),
(31, 'Sulawesi Utara'),
(32, 'Sumatera Barat'),
(33, 'Sumatera Selatan'),
(34, 'Sumatera Utara');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sys_group_users`
--

CREATE TABLE `sys_group_users` (
  `id` int(11) NOT NULL,
  `level` varchar(50) DEFAULT NULL,
  `deskripsi` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sys_group_users`
--

INSERT INTO `sys_group_users` (`id`, `level`, `deskripsi`) VALUES
(1, 'admin', 'Administrator'),
(2, 'Operasional Kantor', 'Kordinator Operasional Di Lapangan'),
(3, 'Operasional Lapangan', 'Operasional Teknis Lapangan'),
(4, 'Marketing', 'Staff Pemasaran'),
(5, 'Finance', 'Staff Keuangan'),
(6, 'CUSTOMER', 'CUSTOMER');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sys_menu`
--

CREATE TABLE `sys_menu` (
  `id` int(11) NOT NULL,
  `nav_act` varchar(150) DEFAULT NULL,
  `page_name` varchar(150) DEFAULT NULL,
  `url` varchar(100) NOT NULL,
  `main_table` varchar(150) DEFAULT NULL,
  `icon` varchar(150) DEFAULT NULL,
  `urutan_menu` int(11) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `dt_table` enum('Y','N') NOT NULL,
  `tampil` enum('Y','N') NOT NULL,
  `type_menu` enum('main','page') NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sys_menu`
--

INSERT INTO `sys_menu` (`id`, `nav_act`, `page_name`, `url`, `main_table`, `icon`, `urutan_menu`, `parent`, `dt_table`, `tampil`, `type_menu`) VALUES
(1, NULL, 'marketing ', '', NULL, 'fa-list', 2, 0, 'Y', 'Y', 'main'),
(4, NULL, 'operational cso', '', NULL, 'fa-list', 3, 0, 'Y', 'Y', 'main'),
(6, NULL, 'operational Lapangan', '', NULL, 'fa-list', 4, 0, 'Y', 'Y', 'main'),
(8, NULL, 'finance', '', NULL, 'fa-list', 5, 0, 'Y', 'Y', 'main'),
(9, NULL, 'data master', '', NULL, 'fa-list', 1, 0, 'Y', 'Y', 'main'),
(29, 'tes2', 'tes2', 'tes2', 'daftar_tarif', 'fa-list', 6, 0, 'Y', 'Y', 'page'),
(11, 'packaging', 'packaging', 'packaging', 'packaging', 'fa-list', 2, 9, 'Y', 'Y', 'page'),
(12, 'provinsi', 'provinsi', 'provinsi', 'provinsi', 'fa-list', 3, 9, 'Y', 'Y', 'page'),
(14, 'tarif_tirex', 'tarif tirex', 'tarif-tirex', 'tarif_tirex', 'fa-list', 1, 9, 'Y', 'Y', 'page'),
(15, 'tarif_cargo_murah', 'tarif cargo murah', 'tarif-cargo-murah', 'tarif_cargo_murah', 'fa-list', 2, 9, 'Y', 'Y', 'page'),
(16, 'tarif_dimensi', 'tarif dimensi kg', 'tarif-dimensi', 'tarif_dimensi', 'fa-list', 3, 9, 'Y', 'Y', 'page'),
(27, 'transaksi_tirex', 'transaksi tirex', 'transaksi-tirex', 'pengiriman', 'fa-list', 1, 1, 'Y', 'Y', 'page'),
(25, 'tracking', 'tracking', 'tracking', 'layanan', 'fa-list', 8, 0, 'Y', 'Y', 'page'),
(26, 'cabang', 'cabang', 'cabang', 'cabang', 'fa-list', 7, 9, 'Y', 'Y', 'page');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sys_menu_role`
--

CREATE TABLE `sys_menu_role` (
  `id` int(11) NOT NULL,
  `id_menu` int(11) DEFAULT NULL,
  `group_id` int(11) DEFAULT NULL,
  `read_act` enum('Y','N') DEFAULT NULL,
  `insert_act` enum('Y','N') DEFAULT NULL,
  `update_act` enum('Y','N') DEFAULT NULL,
  `delete_act` enum('Y','N') DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sys_menu_role`
--

INSERT INTO `sys_menu_role` (`id`, `id_menu`, `group_id`, `read_act`, `insert_act`, `update_act`, `delete_act`) VALUES
(1, 1, 1, 'Y', 'Y', 'Y', 'Y'),
(4, 4, 1, 'Y', 'Y', 'Y', 'Y'),
(6, 6, 1, 'Y', 'Y', 'Y', 'Y'),
(8, 8, 1, 'Y', 'Y', 'Y', 'Y'),
(9, 1, 2, 'N', 'N', 'N', 'N'),
(12, 4, 2, 'N', 'N', 'N', 'N'),
(14, 6, 2, 'N', 'N', 'N', 'N'),
(16, 8, 2, 'N', 'N', 'N', 'N'),
(24, 1, 3, 'N', 'N', 'N', 'N'),
(27, 4, 3, 'N', 'N', 'N', 'N'),
(29, 6, 3, 'N', 'N', 'N', 'N'),
(31, 8, 3, 'N', 'N', 'N', 'N'),
(39, 1, 4, 'Y', 'N', 'N', 'N'),
(42, 4, 4, 'N', 'N', 'N', 'N'),
(44, 6, 4, 'N', 'N', 'N', 'N'),
(46, 8, 4, 'N', 'N', 'N', 'N'),
(54, 1, 5, 'N', 'N', 'N', 'N'),
(57, 4, 5, 'N', 'N', 'N', 'N'),
(59, 6, 5, 'N', 'N', 'N', 'N'),
(61, 8, 5, 'N', 'N', 'N', 'N'),
(69, 9, 1, 'Y', 'Y', 'Y', 'Y'),
(70, 9, 2, 'N', 'N', 'N', 'N'),
(71, 9, 3, 'N', 'N', 'N', 'N'),
(72, 9, 4, 'N', 'N', 'N', 'N'),
(73, 9, 5, 'N', 'N', 'N', 'N'),
(196, 29, 6, 'N', 'N', 'N', 'N'),
(195, 29, 5, 'N', 'N', 'N', 'N'),
(194, 29, 4, 'N', 'N', 'N', 'N'),
(193, 29, 3, 'N', 'N', 'N', 'N'),
(192, 29, 2, 'N', 'N', 'N', 'N'),
(79, 11, 1, 'Y', 'Y', 'Y', 'Y'),
(80, 11, 2, 'N', 'N', 'N', 'N'),
(81, 11, 3, 'N', 'N', 'N', 'N'),
(82, 11, 4, 'N', 'N', 'N', 'N'),
(83, 11, 5, 'N', 'N', 'N', 'N'),
(84, 12, 1, 'Y', 'Y', 'Y', 'Y'),
(85, 12, 2, 'N', 'N', 'N', 'N'),
(86, 12, 3, 'N', 'N', 'N', 'N'),
(87, 12, 4, 'N', 'N', 'N', 'N'),
(88, 12, 5, 'N', 'N', 'N', 'N'),
(98, 14, 5, 'N', 'N', 'N', 'N'),
(97, 14, 4, 'N', 'N', 'N', 'N'),
(96, 14, 3, 'N', 'N', 'N', 'N'),
(95, 14, 2, 'N', 'N', 'N', 'N'),
(94, 14, 1, 'Y', 'Y', 'Y', 'Y'),
(99, 15, 1, 'Y', 'Y', 'Y', 'Y'),
(100, 15, 2, 'N', 'N', 'N', 'N'),
(101, 15, 3, 'N', 'N', 'N', 'N'),
(102, 15, 4, 'N', 'N', 'N', 'N'),
(103, 15, 5, 'N', 'N', 'N', 'N'),
(104, 16, 1, 'Y', 'Y', 'Y', 'Y'),
(105, 16, 2, 'N', 'N', 'N', 'N'),
(106, 16, 3, 'N', 'N', 'N', 'N'),
(107, 16, 4, 'N', 'N', 'N', 'N'),
(108, 16, 5, 'N', 'N', 'N', 'N'),
(184, 27, 6, 'N', 'N', 'N', 'N'),
(183, 27, 5, 'N', 'N', 'N', 'N'),
(182, 27, 4, 'Y', 'Y', 'Y', 'N'),
(181, 27, 3, 'N', 'N', 'N', 'N'),
(180, 27, 2, 'N', 'N', 'N', 'N'),
(149, 25, 1, 'Y', 'Y', 'Y', 'Y'),
(150, 25, 2, 'N', 'N', 'N', 'N'),
(151, 25, 3, 'N', 'N', 'N', 'N'),
(152, 25, 4, 'N', 'N', 'N', 'N'),
(153, 25, 5, 'N', 'N', 'N', 'N'),
(154, 1, 6, 'N', 'N', 'N', 'N'),
(157, 4, 6, 'N', 'N', 'N', 'N'),
(159, 6, 6, 'N', 'N', 'N', 'N'),
(161, 8, 6, 'N', 'N', 'N', 'N'),
(162, 9, 6, 'N', 'N', 'N', 'N'),
(191, 29, 1, 'Y', 'Y', 'Y', 'Y'),
(164, 11, 6, 'N', 'N', 'N', 'N'),
(165, 12, 6, 'N', 'N', 'N', 'N'),
(166, 14, 6, 'N', 'N', 'N', 'N'),
(167, 15, 6, 'N', 'N', 'N', 'N'),
(168, 16, 6, 'N', 'N', 'N', 'N'),
(179, 27, 1, 'Y', 'Y', 'Y', 'Y'),
(172, 25, 6, 'N', 'N', 'N', 'N'),
(173, 26, 1, 'Y', 'Y', 'Y', 'Y'),
(174, 26, 2, 'N', 'N', 'N', 'N'),
(175, 26, 3, 'N', 'N', 'N', 'N'),
(176, 26, 4, 'N', 'N', 'N', 'N'),
(177, 26, 5, 'N', 'N', 'N', 'N'),
(178, 26, 6, 'N', 'N', 'N', 'N');

-- --------------------------------------------------------

--
-- Struktur dari tabel `sys_users`
--

CREATE TABLE `sys_users` (
  `id` int(11) NOT NULL,
  `first_name` varchar(50) NOT NULL DEFAULT '0',
  `last_name` varchar(50) NOT NULL DEFAULT '0',
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `date_created` date DEFAULT NULL,
  `foto_user` varchar(150) DEFAULT NULL,
  `id_group` int(11) DEFAULT NULL,
  `aktif` enum('Y','N') NOT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `telepon` varchar(30) DEFAULT NULL,
  `cabang` int(11) DEFAULT NULL,
  `kota` varchar(50) DEFAULT NULL,
  `secret_key` varchar(200) DEFAULT NULL,
  `pin` varchar(30) DEFAULT NULL,
  `pusat` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `sys_users`
--

INSERT INTO `sys_users` (`id`, `first_name`, `last_name`, `username`, `password`, `email`, `date_created`, `foto_user`, `id_group`, `aktif`, `alamat`, `telepon`, `cabang`, `kota`, `secret_key`, `pin`, `pusat`) VALUES
(1, 'Wisnu', 'Dimensi', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'wisnu@cargomurah.com', '2015-01-26', '1562136018217513733.jpg', 1, 'Y', NULL, NULL, 1, NULL, NULL, NULL, NULL),
(2, 'WISNU', 'APRIYANDI', 'sales1', '81dc9bdb52d04dc20036dbd8313ed055', 'wisnu@cargomurah.id', '2019-07-06', 'pp (1).jpg', 4, 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(3, 'dfdfdd', 'fdfdf', 'fdfdf', 'b52c96bea30646abf8170f333bbd42b9', 'ddnur78@gmail.com', '2019-07-25', NULL, NULL, 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'erer', 'rerere', 'rer', 'bd134207f74532a8b094676c4a2ca9ed', 'ddnur78@gmail.com', '2019-07-25', NULL, NULL, 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'sdsdsd', 'sdsds', 'sdss', '82d5984c2a2ad4c62caf1dd073b1c91c', 'ddnur78@gmail.com', '2019-07-25', NULL, NULL, 'N', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'fdfdfd', 'fdfd', 'dfdf', '8799ac10bb5642c0db24c94dbfcf38b5', 'ddnur78@gmail.com', '2019-07-25', NULL, NULL, 'N', 'fdfd', '545', NULL, NULL, NULL, NULL, NULL),
(7, 'fdfdfd', 'fdfd', 'dfdf', '8799ac10bb5642c0db24c94dbfcf38b5', 'ddnur78@gmail.com', '2019-07-25', NULL, 6, 'N', 'fdfd', '545', NULL, NULL, NULL, NULL, NULL),
(8, 'FITRI', 'Dimensi', 'fitri', '8ac99bb12b7c18e27d06fd34fe1203fc', 'fitri@cargomurah.id', '2019-07-27', NULL, 4, 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'pt abc', 'Dimensi', 'bbb', 'ae8b5aa26a3ae31612eec1d1f6ffbce9', 'fitri@cargomurah.id', '2019-07-27', NULL, 6, 'N', 'bbb', '666', NULL, NULL, NULL, NULL, NULL),
(10, 'pt abc', 'Dimensi', 'bbb', 'ae8b5aa26a3ae31612eec1d1f6ffbce9', 'fitri@cargomurah.id', '2019-07-27', NULL, 6, 'N', 'bbb', '666', NULL, NULL, NULL, NULL, NULL),
(11, 'CUSTOMER', 'PT ABC', 'customer', 'f4ad231214cb99a985dff0f056a36242', 'cs@abc.com', '2019-07-27', NULL, 6, 'Y', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'fdfdf', 'fd', 'fd', 'f0118e9bd2c4fb29c64ee03abce698b8', 'fdf@ffgf.com', '2019-07-31', NULL, 6, 'Y', 'fdf', 'fdf', NULL, NULL, NULL, NULL, NULL),
(13, 'fdfdf', 'fd', 'fd', '202cb962ac59075b964b07152d234b70', 'aaaa@ffgf.com', '2019-07-31', NULL, 6, 'Y', 'fdf', 'fdf', NULL, NULL, NULL, NULL, NULL),
(14, 'rerere', 're', 'ree', 'd66c264e1dbd73e6111d3ffc70908e8e', 'aaaa@ffgf.com', '2019-07-31', NULL, 6, 'Y', 'rere', 'erer', NULL, NULL, NULL, NULL, NULL),
(15, 'xxx', 're', 'ree', '96e79218965eb72c92a549dd5a330112', 'aaaa@ffgf.com', '2019-07-31', NULL, 6, 'Y', 'rere', '1222', NULL, NULL, NULL, NULL, NULL),
(16, 'fdd', 'fd', 'dfd', '44f21d5190b5a6df8089f54799628d7e', 'ccccccc@ffgf.com', '2019-07-31', NULL, 6, 'Y', 'fdfd', '3443', NULL, NULL, NULL, NULL, NULL),
(17, 'fdd', 'fd', 'dfd', 'dd95b1ca8dca61e3ab7ca3f18bbdef78', 'ccccccc@ffgf.com', '2019-07-31', NULL, 6, 'Y', 'fdfd', '3443', NULL, NULL, NULL, NULL, NULL),
(18, 'fdd', 'fd', 'dfd', 'a555b471aa5ba440d6e3484281165b04', 'ccccccc@ffgf.com', '2019-07-31', NULL, 6, 'Y', 'fdfd', '3443', NULL, NULL, NULL, NULL, NULL),
(19, 'xxxx', 'xxx', 'xxxx', '9336ebf25087d91c818ee6e9ec29f8c1', 'xxx@ffgf.com', '2019-07-31', NULL, 6, 'Y', 'xxxx', 'xx', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tarif_cargo_murah`
--

CREATE TABLE `tarif_cargo_murah` (
  `id` int(11) NOT NULL,
  `kelompok` varchar(50) DEFAULT NULL,
  `kota_tujuan` varchar(50) DEFAULT NULL,
  `tarif` int(11) DEFAULT NULL,
  `harga_balik` int(11) DEFAULT NULL,
  `minimal` int(11) DEFAULT NULL,
  `lead_time` varchar(30) DEFAULT NULL,
  `keterangan` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tarif_cargo_murah`
--

INSERT INTO `tarif_cargo_murah` (`id`, `kelompok`, `kota_tujuan`, `tarif`, `harga_balik`, `minimal`, `lead_time`, `keterangan`) VALUES
(1, 'JAKARTA - KALIMANTAN', 'Banjarmasin', 4500, 6750, 100, '6-8 hari', 'sejak kapal berangkat'),
(2, 'JAKARTA - KALIMANTAN', 'Martapura', 7500, 11250, 100, '8-10 hari', 'sejak kapal berangkat'),
(3, 'JAKARTA - KALIMANTAN', 'Banjarbaru', 7800, 11700, 100, '8-10 hari', 'sejak kapal berangkat'),
(4, 'JAKARTA - KALIMANTAN', 'Binuang', 8000, 12000, 100, '8-10 hari', 'sejak kapal berangkat'),
(5, 'JAKARTA - KALIMANTAN', 'Rantau', 8500, 12750, 100, '8-10 hari', 'sejak kapal berangkat'),
(6, 'JAKARTA - KALIMANTAN', 'Kandangan', 8500, 12750, 100, '8-10 hari', 'sejak kapal berangkat'),
(7, 'JAKARTA - KALIMANTAN', 'Barabai', 8500, 12750, 100, '8-10 hari', 'sejak kapal berangkat'),
(8, 'JAKARTA - KALIMANTAN', 'Blangan/ Paringin', 8500, 12750, 100, '8-10 hari', 'sejak kapal berangkat'),
(9, 'JAKARTA - KALIMANTAN', 'Tanjung/ Adaro', 7500, 11250, 100, '8-10 hari', 'sejak kapal berangkat'),
(10, 'JAKARTA - KALIMANTAN', 'Muara Pudak', 8500, 12750, 100, '8-10 hari', 'sejak kapal berangkat'),
(11, 'JAKARTA - KALIMANTAN', 'Amuntai', 8500, 12750, 100, '8-10 hari', 'sejak kapal berangkat'),
(12, 'JAKARTA - KALIMANTAN', 'Tamiang Layang', 8500, 12750, 100, '8-10 hari', 'sejak kapal berangkat'),
(13, 'JAKARTA - KALIMANTAN', 'Ampah', 8500, 12750, 100, '8-10 hari', 'sejak kapal berangkat'),
(14, 'JAKARTA - KALIMANTAN', 'Buntok', 8500, 12750, 100, '8-10 hari', 'sejak kapal berangkat'),
(15, 'JAKARTA - KALIMANTAN', 'Muara Taweh', 9850, 14775, 100, '8-10 hari', 'sejak kapal berangkat'),
(16, 'JAKARTA - KALIMANTAN', 'Pelaihari', 7500, 11250, 100, '8-10 hari', 'sejak kapal berangkat'),
(17, 'JAKARTA - KALIMANTAN', 'Asam - Asam', 7500, 11250, 100, '8-10 hari', 'sejak kapal berangkat'),
(18, 'JAKARTA - KALIMANTAN', 'Sungai Danau', 7500, 11250, 100, '8-10 hari', 'sejak kapal berangkat'),
(19, 'JAKARTA - KALIMANTAN', 'Pagatan', 14800, 22200, 100, '8-10 hari', 'sejak kapal berangkat'),
(20, 'JAKARTA - KALIMANTAN', 'Batu Licin', 10000, 15000, 100, '8-10 hari', 'sejak kapal berangkat'),
(21, 'JAKARTA - KALIMANTAN', 'KotaBaru', 11000, 16500, 100, '8-10 hari', 'sejak kapal berangkat'),
(22, 'JAKARTA - KALIMANTAN', 'Sei Danau', 7500, 11250, 100, '8-10 hari', 'sejak kapal berangkat'),
(23, 'JAKARTA - KALIMANTAN', 'Sebamban', 7500, 11250, 100, '8-10 hari', 'sejak kapal berangkat'),
(24, 'JAKARTA - KALIMANTAN', 'Marabahan', 8500, 12750, 100, '8-10 hari', 'sejak kapal berangkat'),
(25, 'JAKARTA - KALIMANTAN', 'Paringin', 9000, 13500, 100, '8-10 hari', 'sejak kapal berangkat'),
(26, 'JAKARTA - KALIMANTAN', 'Murung Pudak', 9000, 13500, 100, '8-10 hari', 'sejak kapal berangkat'),
(27, 'JAKARTA - KALIMANTAN', 'Puruk Cahu', 12500, 18750, 100, '8-10 hari', 'sejak kapal berangkat'),
(28, 'JAKARTA - KALIMANTAN', 'Sampit', 6800, 10200, 100, '5-8 hari', 'sejak kapal berangkat'),
(29, 'JAKARTA - KALIMANTAN', 'Pangkalanbun', 6000, 9000, 100, '5-8 hari', 'sejak kapal berangkat'),
(30, 'JAKARTA - KALIMANTAN', 'Ampah', 9000, 13500, 100, '8-10 hari', 'sejak kapal berangkat'),
(31, 'JAKARTA - KALIMANTAN', 'Buntok', 10000, 15000, 100, '8-10 hari', 'sejak kapal berangkat'),
(32, 'JAKARTA - KALIMANTAN', 'Muara Taweh', 10000, 15000, 100, '8-10 hari', 'sejak kapal berangkat'),
(33, 'JAKARTA - KALIMANTAN', 'Nanga Bulik', 11500, 17250, 100, '8-10 hari', 'sejak kapal berangkat'),
(34, 'JAKARTA - KALIMANTAN', 'Puruk Cahu', 11500, 17250, 100, '8-10 hari', 'sejak kapal berangkat'),
(35, 'JAKARTA - KALIMANTAN', 'Sukamara', 10500, 15750, 100, '8-10 hari', 'sejak kapal berangkat'),
(36, 'JAKARTA - KALIMANTAN', 'Palangkaraya', 6500, 9750, 100, '8-10 hari', 'sejak kapal berangkat'),
(37, 'JAKARTA - KALIMANTAN', 'Kasongan', 9600, 14400, 100, '8-10 hari', 'sejak kapal berangkat'),
(38, 'JAKARTA - KALIMANTAN', 'Kuala Kapuas', 8500, 12750, 100, '8-10 hari', 'sejak kapal berangkat'),
(39, 'JAKARTA - KALIMANTAN', 'Pulang Pisau', 9000, 13500, 100, '8-10 hari', 'sejak kapal berangkat'),
(40, 'JAKARTA - KALIMANTAN', 'Kumai', 9600, 14400, 100, '8-10 hari', 'sejak kapal berangkat'),
(41, 'JAKARTA - KALIMANTAN', 'Pontianak', 3500, 3850, 100, '3-5 hari', 'sejak kapal berangkat'),
(42, 'JAKARTA - KALIMANTAN', 'Mempawah', 7500, 8250, 100, '5-7 hari', 'sejak kapal berangkat'),
(43, 'JAKARTA - KALIMANTAN', 'Ketapang', 7500, 8250, 100, '5-7 hari', 'sejak kapal berangkat'),
(44, 'JAKARTA - KALIMANTAN', 'Sanggau', 9500, 10450, 100, '5-7 hari', 'sejak kapal berangkat'),
(45, 'JAKARTA - KALIMANTAN', 'Sintang', 9500, 10450, 100, '5-7 hari', 'sejak kapal berangkat'),
(46, 'JAKARTA - KALIMANTAN', 'Singkawang', 7500, 8250, 100, '5-7 hari', 'sejak kapal berangkat'),
(47, 'JAKARTA - KALIMANTAN', 'Pemangkat', 8500, 9350, 100, '5-7 hari', 'sejak kapal berangkat'),
(48, 'JAKARTA - KALIMANTAN', 'Sambas', 9500, 10450, 100, '5-7 hari', 'sejak kapal berangkat'),
(49, 'JAKARTA - KALIMANTAN', 'Nanga Pinoh', 9500, 10450, 100, '5-7 hari', 'sejak kapal berangkat'),
(50, 'JAKARTA - KALIMANTAN', 'Sekadau', 9500, 10450, 100, '5-7 hari', 'sejak kapal berangkat'),
(51, 'JAKARTA - KALIMANTAN', 'Kendawangan', 13500, 14850, 100, '5-7 hari', 'sejak kapal berangkat'),
(52, 'JAKARTA - KALIMANTAN', 'Bengkayang', 14000, 15400, 100, '6-8 hari', 'sejak kapal berangkat'),
(53, 'JAKARTA - KALIMANTAN', 'Puttusibau', 14000, 15400, 100, '6-8 hari', 'sejak kapal berangkat'),
(54, 'JAKARTA - KALIMANTAN', 'Balikpapan', 5000, 7500, 100, '4 - 5 hari', 'sejak kapal berangkat'),
(55, 'JAKARTA - KALIMANTAN', 'Samarinda', 6500, 9750, 100, '8-10 hari', 'sejak kapal berngkat'),
(56, 'JAKARTA - KALIMANTAN', 'Bontang', 8500, 12750, 100, '8-10 hari', 'sejak kapal berangkat'),
(57, 'JAKARTA - KALIMANTAN', 'Handil', 9500, 14250, 100, '8-10 hari', 'sejak kapal berangkat'),
(58, 'JAKARTA - KALIMANTAN', 'Berau', 10000, 15000, 100, '8-10 hari', 'sejak kapal berangkat'),
(59, 'JAKARTA - KALIMANTAN', 'Muara Badak', 10000, 15000, 100, '8-10 hari', 'sejak kapal berangkat'),
(60, 'JAKARTA - KALIMANTAN', 'Batu Kajang', 11000, 16500, 100, '8-10 hari', 'sejak kapal berangkat'),
(61, 'JAKARTA - KALIMANTAN', 'Sangatta Kota', 9000, 13500, 100, '8-10 hari', 'sejak kapal berangkat'),
(62, 'JAKARTA - KALIMANTAN', 'Tanjung Redep', 12000, 18000, 100, '8-10 hari', 'sejak kapal berangkat'),
(63, 'JAKARTA - KALIMANTAN', 'Tanjung Selor', 11500, 17250, 100, '8-10 hari', 'sejak kapal berangkat'),
(64, 'JAKARTA - KALIMANTAN', 'Tanah Grogot', 12000, 18000, 100, '8-10 hari', 'sejak kapal berangkat'),
(65, 'JAKARTA - KALIMANTAN', 'Tenggarong', 8500, 12750, 100, '8-10 hari', 'sejak kapal berangkat'),
(66, 'JAKARTA - KALIMANTAN', 'Melak', 12000, 18000, 150, '8-10 hari', 'sejak kapal berangkat'),
(67, 'JAKARTA - KALIMANTAN', 'Penajam (Kab. Paser)', 11000, 16500, 100, '8-10 hari', 'sejak kapal berangkat'),
(68, 'JAKARTA - KALIMANTAN', 'Kutai Kertanegara', 9500, 14250, 100, '8-10 hari', 'sejak kapal berangkat'),
(69, 'JAKARTA - KALIMANTAN', 'Sendawar', 13500, 20250, 150, '8-10 hari', 'sejak kapal berangkat'),
(70, 'JAKARTA - KALIMANTAN', 'Tarakan Kota', 8500, 12750, 150, '8-14 hari', 'sejak kapal berangkat'),
(71, 'JAKARTA - KALIMANTAN', 'Tanjung Selor', 11000, 16500, 150, '8-14 hari', 'sejak kapal berangkat'),
(72, 'JAKARTA - KALIMANTAN', 'Malinau', 18000, 27000, 150, '8-14 hari', 'sejak kapal berangkat'),
(73, 'JAKARTA - KALIMANTAN', 'Melak', 12000, 18000, 150, '8-14 hari', 'sejak kapal berangkat'),
(74, 'JAKARTA - KALIMANTAN', 'Nunukan', 18500, 27750, 150, '8-14 hari', 'sejak kapal berangkat'),
(75, 'JAKARTA - KALIMANTAN', 'Tanah Tidung', 17500, 26250, 150, '8-14 hari', 'sejak kapal berangkat'),
(76, 'JAKARTA - KALIMANTAN', 'PPU/ Paser', 12000, 18000, 150, '8-14 hari', 'sejak kapal berangkat'),
(77, 'JAKARTA - KALIMANTAN', 'Pulau Bunyu', 18000, 27000, 150, '8-14 hari', 'sejak kapal berangkat'),
(78, 'JAKARTA - KALIMANTAN', 'Pulau Sebatik', 22000, 33000, 150, '8-14 hari', 'sejak kapal berangkat'),
(79, 'JAKARTA - PAPUA', 'Jayapura', 15500, 23250, 100, '7 - 10 hari', 'sejak kapal berangkat'),
(80, 'JAKARTA - PAPUA', 'Sorong', 15500, 23250, 100, '5 - 8 hari', 'sejak kapal berangkat'),
(81, 'JAKARTA - PAPUA', 'Manokwari', 15500, 23250, 100, '6 - 9 hari', 'sejak kapal berangkat'),
(82, 'JAKARTA - PAPUA', 'Nabire', 15500, 23250, 100, '6 - 9 hari', 'sejak kapal berangkat'),
(83, 'JAKARTA - PAPUA', 'Fak-Fak', 16500, 24750, 250, '7 - 10 hari', 'sejak kapal berangkat'),
(84, 'JAKARTA - PAPUA', 'Serui', 15500, 23250, 100, '6 - 9 hari', 'sejak kapal berangkat'),
(85, 'JAKARTA - PAPUA', 'Biak', 15800, 23700, 100, '7 - 10 hari', 'sejak kapal berangkat'),
(86, 'JAKARTA - PAPUA', 'Merauke', 19500, 29250, 100, '8 - 10 hari', 'sejak kapal berangkat'),
(87, 'JAKARTA - PAPUA', 'Kaimana', 25500, 38250, 250, '8 - 14 hari', 'sejak kapal berangkat'),
(88, 'JAKARTA - PAPUA', 'Timika', 17000, 25500, 100, '7 - 10 hari', 'sejak kapal berangkat'),
(89, 'JAKARTA - SULAWESI', 'Makassar', 4000, 6000, 100, '4 - 5 hari', 'sejak kapal berangkat'),
(90, 'JAKARTA - SULAWESI', 'Barru', 8500, 12750, 100, '4 - 6 hari', 'sejak kapal berangkat'),
(91, 'JAKARTA - SULAWESI', 'Bone', 7500, 11250, 100, '6 - 8 hari', 'sejak kapal berangkat'),
(92, 'JAKARTA - SULAWESI', 'Enrekang', 7500, 11250, 100, '6 - 8 hari', 'sejak kapal berangkat'),
(93, 'JAKARTA - SULAWESI', 'Gowa', 7000, 10500, 100, '8-12 hari', 'sejak kapal berangkat'),
(94, 'JAKARTA - SULAWESI', 'Jeneponto', 8500, 12750, 250, '4-6 hari', 'sejak kapal berangkat'),
(95, 'JAKARTA - SULAWESI', 'Majene', 7500, 11250, 100, '8-12 hari', 'sejak kapal berangkat'),
(96, 'JAKARTA - SULAWESI', 'Makale', 8500, 12750, 100, '8-12 hari', 'sejak kapal berangkat'),
(97, 'JAKARTA - SULAWESI', 'Bantaeng', 7500, 11250, 100, '8-12 hari', 'sejak kapal berangkat'),
(98, 'JAKARTA - SULAWESI', 'Malili', 8500, 12750, 100, '8-12 hari', 'sejak kapal berangkat'),
(99, 'JAKARTA - SULAWESI', 'Mamuju Utara', 7500, 11250, 100, '8-12 hari', 'sejak kapal berangkat'),
(100, 'JAKARTA - SULAWESI', 'Maros', 7000, 10500, 200, '8-12 hari', 'sejak kapal berangkat'),
(101, 'JAKARTA - SULAWESI', 'Massamba', 7500, 11250, 100, '8-12 hari', 'sejak kapal berangkat'),
(102, 'JAKARTA - SULAWESI', 'Palopo', 7500, 11250, 100, '8-12 hari', 'sejak kapal berangkat'),
(103, 'JAKARTA - SULAWESI', 'Pangkajene', 6500, 9750, 100, '8-12 hari', 'sejak kapal berangkat'),
(104, 'JAKARTA - SULAWESI', 'Pangkep', 8500, 12750, 250, '4-6 hari', 'sejak kapal berangkat'),
(105, 'JAKARTA - SULAWESI', 'Pare - Pare', 7000, 10500, 100, '8-12 hari', 'sejak kapal berangkat'),
(106, 'JAKARTA - SULAWESI', 'Pinrang', 7000, 10500, 100, '8-12 hari', 'sejak kapal berangkat'),
(107, 'JAKARTA - SULAWESI', 'Bulukumba', 7500, 11250, 100, '8-12 hari', 'sejak kapal berangkat'),
(108, 'JAKARTA - SULAWESI', 'Poliwali', 7500, 11250, 100, '8-12 hari', 'sejak kapal berangkat'),
(109, 'JAKARTA - SULAWESI', 'Polmas', 7500, 11250, 100, '8-12 hari', 'sejak kapal berangkat'),
(110, 'JAKARTA - SULAWESI', 'Rantepao', 7500, 11250, 100, '8-12 hari', 'sejak kapal berangkat'),
(111, 'JAKARTA - SULAWESI', 'Selayar', 8000, 12000, 100, '8-12 hari', 'sejak kapal berangkat'),
(112, 'JAKARTA - SULAWESI', 'Sengkang', 7500, 11250, 100, '8-12 hari', 'sejak kapal berangkat'),
(113, 'JAKARTA - SULAWESI', 'Sidenrang', 8800, 13200, 100, '8-12 hari', 'sejak kapal berangkat'),
(114, 'JAKARTA - SULAWESI', 'Sidrap', 9500, 14250, 200, '6-8 hari', 'sejak kapal berangkat'),
(115, 'JAKARTA - SULAWESI', 'Sinjai', 8500, 12750, 100, '8-12 hari', 'sejak kapal berangkat'),
(116, 'JAKARTA - SULAWESI', 'Soppeng', 8000, 12000, 100, '8-12 hari', 'sejak kapal berangkat'),
(117, 'JAKARTA - SULAWESI', 'Soroako', 7000, 10500, 100, '8-12 hari', 'sejak kapal berangkat'),
(118, 'JAKARTA - SULAWESI', 'Sunggu Minasa', 7000, 10500, 100, '8-12 hari', 'sejak kapal berangkat'),
(119, 'JAKARTA - SULAWESI', 'Takalar', 7500, 11250, 100, '8-12 hari', 'sejak kapal berangkat'),
(120, 'JAKARTA - SULAWESI', 'Tana Toraja', 7500, 11250, 100, '8-12 hari', 'sejak kapal berangkat'),
(121, 'JAKARTA - SULAWESI', 'Wajo', 9500, 14250, 100, '8-12 hari', 'sejak kapal berangkat'),
(122, 'JAKARTA - SULAWESI', 'Watampone', 9500, 14250, 100, '8-12 hari', 'sejak kapal berangkat'),
(123, 'JAKARTA - SULAWESI', 'Manado', 8500, 12750, 100, '10-14 hari', 'sejak kapal berangkat'),
(124, 'JAKARTA - SULAWESI', 'Tomohon', 13500, 20250, 100, '10-14 hari', 'sejak kapal berangkat'),
(125, 'JAKARTA - SULAWESI', 'Kotamubagu', 11500, 17250, 100, '10-14 hari', 'sejak kapal berangkat'),
(126, 'JAKARTA - SULAWESI', 'Tondano', 12500, 18750, 100, '10-14 hari', 'sejak kapal berangkat'),
(127, 'JAKARTA - SULAWESI', 'Bitung', 11500, 17250, 100, '10-14 hari', 'sejak kapal berangkat'),
(128, 'JAKARTA - SULAWESI', 'Minahasa', 13500, 20250, 100, '10-14 hari', 'sejak kapal berangkat'),
(129, 'JAKARTA - SULAWESI', 'Kab. Bolaang Mongondow', 13500, 20250, 100, '14-18 hari', 'sejak kapal berangkat'),
(130, 'JAKARTA - SULAWESI', 'Kab. Kepulauan Sangihe', 16500, 24750, 200, '14-18 hari', 'sejak kapal beranglkat'),
(131, 'JAKARTA - SULAWESI', 'Kab. Kep Siau Tagulandang Biaro', 15500, 23250, 200, '14-18 hari', 'sejak kapal berangkat'),
(132, 'JAKARTA - SULAWESI', 'Kab Kep Talaud', 16000, 24000, 200, '14-18 hari', 'sejak kapal berangkat'),
(133, 'JAKARTA - SULAWESI', 'Siau', 17000, 25500, 200, '14-18 hari', 'sejak kapal berangkat'),
(134, 'JAKARTA - SULAWESI', 'Palu', 7000, 10500, 100, '5-9 hari', 'sejak kapal berangkat'),
(135, 'JAKARTA - SULAWESI', 'Poso', 8500, 12750, 100, '5-9 hari', 'sejak kapal berangkat'),
(136, 'JAKARTA - SULAWESI', 'Banggai Kepulauan', 18800, 28200, 100, '5-9 hari', 'sejak kapal berangkat'),
(137, 'JAKARTA - SULAWESI', 'Luwuk Banggai (kabupaten)', 11500, 17250, 100, '10-14 hari', 'sejak kapal berangkat'),
(138, 'JAKARTA - SULAWESI', 'Luwuk (kota)', 7500, 11250, 100, '10-14 hari', 'sejak kapal berangkat'),
(139, 'JAKARTA - SULAWESI', 'Toli-Toli', 9800, 14700, 100, '10-14 hari', 'sejak kapal berangkat'),
(140, 'JAKARTA - SULAWESI', 'Buol', 9800, 14700, 100, '10-14 hari', 'sejak kapal berangkat'),
(141, 'JAKARTA - SULAWESI', 'Donggala', 11500, 17250, 100, '10-14 hari', 'sejak kapal berangkat'),
(142, 'JAKARTA - SULAWESI', 'Morowali', 11500, 17250, 100, '10-14 hari', 'sejak kapal berangkat'),
(143, 'JAKARTA - SULAWESI', 'Bau-Bau', 11500, 17250, 100, '10-14 hari', 'sejak kapal berangkat'),
(144, 'JAKARTA - SULAWESI', 'Sigi Biromaru', 14500, 21750, 100, '10-14 hari', 'sejak kapal berangkat'),
(145, 'JAKARTA - SULAWESI', 'Una-Una Ampana', 14500, 21750, 100, '10-14 hari', 'sejak kapal berangkat'),
(146, 'JAKARTA - SULAWESI', 'Parigi Moutong', 14500, 21750, 100, '10-14 hari', 'sejak kapal berangkat'),
(147, 'JAKARTA - SULAWESI', 'Mamasa', 8500, 12750, 100, '8-12 hari', 'sejak kapal berangkat'),
(148, 'JAKARTA - SULAWESI', 'Mamuju', 7500, 11250, 100, '5-9 hari', 'sejak kapal berangkat'),
(149, 'JAKARTA - SULAWESI', 'Kalukku', 8500, 12750, 100, '5-9 hari', 'sejak kapal berangkat'),
(150, 'JAKARTA - SULAWESI', 'Polewali', 8500, 12750, 100, '5-9 hari', 'sejak kapal berangkat'),
(151, 'JAKARTA - SULAWESI', 'Majene', 7000, 10500, 100, '5-9 hari', 'sejak kapal berangkat'),
(152, 'JAKARTA - SULAWESI', 'Tobadak', 8000, 12000, 100, '5-9 hari', 'sejak kapal berangkat'),
(153, 'JAKARTA - SULAWESI', 'Pasangkayu', 7000, 10500, 100, '5-9 hari', 'sejak kapal berangkat'),
(154, 'JAKARTA - SULAWESI', 'Mamasa', 8500, 12750, 100, '5-9 hari', 'sejak kapal berangkat'),
(155, 'JAKARTA - SULAWESI', 'Kendari', 7500, 11250, 100, '8-12 hari', 'sejak kapal beragkat'),
(156, 'JAKARTA - SULAWESI', 'Bombana', 9800, 14700, 100, '8-12 hari', 'sejak kapal berangkat'),
(157, 'JAKARTA - SULAWESI', 'Buton', 12500, 18750, 150, '8-12 hari', 'sejak kapal berangkat'),
(158, 'JAKARTA - SULAWESI', 'Kolaka', 8500, 12750, 150, '8-12 hari', 'sejak kapal berangkat'),
(159, 'JAKARTA - SULAWESI', 'Konawe Selatan, Utara', 11500, 17250, 250, '10-15 hari', 'sejak kapal berangkat'),
(160, 'JAKARTA - SULAWESI', 'Muna', 11500, 17250, 250, '10-15 hari', 'sejak kapal berangkat'),
(161, 'JAKARTA - SULAWESI', 'Raha', 11500, 17250, 250, '10-15 hari', 'sejak kapal berangkat'),
(162, 'JAKARTA - SULAWESI', 'Bau-Bau', 11500, 17250, 250, '10-15 hari', 'sejak kapal berangkat'),
(163, 'JAKARTA - SULAWESI', 'Wakatobi', 14500, 21750, 250, '10-15 hari', 'sejak kapal berangkat'),
(164, 'JAKARTA - SULAWESI', 'Wanci', 14500, 21750, 250, '10-15 hari', 'sejak kapal berangkat'),
(165, 'JAKARTA - SULAWESI', 'Wangi-Wangi', 14500, 21750, 250, '10-15 hari', 'sejak kapal berangkat'),
(166, 'JAKARTA - SULAWESI', 'Unaha', 7800, 11700, 100, '8-12 hari', 'sejak kapal berangkat'),
(167, 'JAKARTA - SULAWESI', 'Gorontalo', 8500, 12750, 100, '10-14 hari', 'sejak kapal berangkat'),
(168, 'JAKARTA - SULAWESI', 'Bone Bolango (kota Suwawa)', 12500, 18750, 250, '10-14 hari', 'sejak kapal berangkat'),
(169, 'JAKARTA - SULAWESI', 'Kab. Gorontalo (Limboto)', 12500, 18750, 250, '10-14 hari', 'sejak kapal berangkat'),
(170, 'JAKARTA - SULAWESI', 'Kab. Gorontalo Utara (Kwandang)', 12500, 18750, 250, '10-14 hari', 'sejak kapal berangkat'),
(171, 'JAKARTA - SULAWESI', 'Kab. Pohuwato (Marisa)', 12500, 18750, 250, '10-14 hari', 'sejak kapal berangkat'),
(172, 'JAKARTA - KUPANG', 'Kupang Kota', 5000, 7500, 100, '10-18 hari', 'sejak kapal berangkat'),
(173, 'JAKARTA - KUPANG', 'Labuan Bajo Kab Manggarai Barat', 8500, 12750, 100, '10-18 hari', 'sejak kapal berangkat'),
(174, 'JAKARTA - KUPANG', 'Borong Kab Manggarai Timur', 12500, 18750, 100, '10-18 hari', 'sejak kapal berangkat'),
(175, 'JAKARTA - KUPANG', 'Larantuka Kab Flores Timur', 10500, 15750, 100, '10-18 hari', 'sejak kapal berangkat'),
(176, 'JAKARTA - KUPANG', 'Maumere Kab. Sikka', 8500, 12750, 100, '10-18 hari', 'sejak kapal berangkat'),
(177, 'JAKARTA - KUPANG', 'Waikabubak Kab. Sumba Barat', 11500, 17250, 100, '10-18 hari', 'sejak kapal berangkat'),
(178, 'JAKARTA - KUPANG', 'Tambolaka Kab. Sumba Barat Daya', 11500, 17250, 100, '10-18 hari', 'sejak kapal berangkat'),
(179, 'JAKARTA - KUPANG', 'Ruteng Kab. Manggarai', 8500, 12750, 100, '10-18 hari', 'sejak kapal berangkat'),
(180, 'JAKARTA - KUPANG', 'Waibakul Kab. Sumba Tengah', 14500, 21750, 100, '10-18 hari', 'sejak kapal berangkat'),
(181, 'JAKARTA - KUPANG', 'Ende', 7500, 11250, 100, '10-18 hari', 'sejak kapal berangkat'),
(182, 'JAKARTA - KUPANG', 'Bajawa Kab. Ngada', 9500, 14250, 100, '10-18 hari', 'sejak kapal berangkat'),
(183, 'JAKARTA - KUPANG', 'Mbay Kab. Nagekeo', 13000, 19500, 100, '10-18 hari', 'sejak kapal berangkat'),
(184, 'JAKARTA - KUPANG', 'Baa Rote Kab Rote Ndao', 11500, 17250, 100, '10-18 hari', 'sejak kapal berangkat'),
(185, 'JAKARTA - KUPANG', 'Seba Sabu Barat Kab. Sabu Raijua', 12500, 18750, 100, '10-18 hari', 'sejak kapal berangkat'),
(186, 'JAKARTA - KUPANG', 'Atambua Kab. Belu', 11500, 17250, 100, '10-18 hari', 'sejak kapal berangkat'),
(187, 'JAKARTA - KUPANG', 'Niki-Niki', 11500, 17250, 100, '10-18 hari', 'sejak kapal berangkat'),
(188, 'JAKARTA - KUPANG', 'Lewoleba Kab. Lembata', 14500, 21750, 200, '10-18 hari', 'sejak kapal berangkat'),
(189, 'JAKARTA - KUPANG', 'Betun Kab. Malaka', 14500, 21750, 100, '10-18 hari', 'sejak kapal berangkat'),
(190, 'JAKARTA - KUPANG', 'Waingapu', 11500, 17250, 100, '10-18 hari', 'sejak kapal berangkat'),
(191, 'JAKARTA - KUPANG', 'Soe Kab Timor Tengah Selatan', 11500, 17250, 100, '10-18 hari', 'sejak kapal berangkat'),
(192, 'JAKARTA - KUPANG', 'Kefamenanu', 11500, 17250, 100, '10-18 hari', 'sejak kapal berangkat'),
(193, 'JAKARTA - KUPANG', 'Kalabahi Kab Alor', 12000, 18000, 100, '10-18 hari', 'sejak kapal berangkat'),
(194, 'JAKARTA - KUPANG', 'Atapupu', 11500, 17250, 100, '10-18 hari', 'sejak kapal berangkat'),
(195, 'JAKARTA - KUPANG', 'Raha', 11500, 17250, 100, '10-18 hari', 'sejak kapal berangkat'),
(196, 'JAKARTA - KUPANG', 'Timor tengah mollo utara', 12500, 18750, 100, '10-18 hari', 'sejak kapal berangkat'),
(197, 'JAKARTA - KUPANG', 'Sumba timur', 9500, 14250, 100, '10 - 18 hari', 'sejak kapal berangkat'),
(198, 'JAKARTA - LOMBOK', 'Mataram', 3500, 5250, 100, '5-9 hari', 'sejak kapal berangkat'),
(199, 'JAKARTA - LOMBOK', 'Bima', 8000, 12000, 100, '5-9 hari', 'sejak kapal berangkat'),
(200, 'JAKARTA - LOMBOK', 'Lombok Timur', 7500, 11250, 100, '5-9 hari', 'sejak kapal berangkat'),
(201, 'JAKARTA - LOMBOK', 'Lombok Tengah', 7500, 11250, 100, '5-9 hari', 'sejak kapal berangkat'),
(202, 'JAKARTA - LOMBOK', 'Dompu', 8000, 12000, 100, '5-9 hari', 'sejak kapal berangkat'),
(203, 'JAKARTA - LOMBOK', 'Sumbawa', 8000, 12000, 100, '5-9 hari', 'sejak kapal berangkat'),
(204, 'JAKARTA - LOMBOK', 'Sumbawa Barat', 9500, 14250, 100, '5-9 hari', 'sejak kapal berangkat'),
(205, 'JAKARTA - LOMBOK', 'Taliwang', 9500, 14250, 100, '8-14 hari', 'sejak kapal berangkat'),
(206, 'JAKARTA - LOMBOK', 'Lombok utara', 9500, 14250, 100, '5 - 9 hari', 'sejak kapal berangkat'),
(207, 'JAKARTA - LOMBOK', 'Lombok barat', 9500, 14250, 100, '5 - 9 hari', 'sejak kapal berangkat'),
(208, 'JAKARTA - BALI', 'Denpasar Kota', 4000, 6000, 100, '5-7 hari', 'sejak truk berangkat'),
(209, 'JAKARTA - BALI', 'Mangupura Kab Badung', 5500, 8250, 100, '5-7 hari', 'sejak truk berangkat'),
(210, 'JAKARTA - BALI', 'Bangli Kab Bangli', 6500, 9750, 100, '5-7 hari', 'sejak truk berangkat'),
(211, 'JAKARTA - BALI', 'Singaraja Kab Buleleng', 6500, 9750, 100, '5-7 hari', 'sejak truk berangkat'),
(212, 'JAKARTA - BALI', 'Gianyar Kab Gianyar', 6500, 9750, 100, '5-7 hari', 'sejak truk berangkat'),
(213, 'JAKARTA - BALI', 'Negara Kab Jembrana', 8500, 12750, 100, '5-7 hari', 'sejak truk berangkat'),
(214, 'JAKARTA - BALI', 'Amlapura Kab Karangasem', 6500, 9750, 100, '5-7 hari', 'sejak truk berangkat'),
(215, 'JAKARTA - BALI', 'Semarapura Kab Klungkung', 7000, 10500, 100, '5-7 hari', 'sejak truk berangkat'),
(216, 'JAKARTA - BALI', 'Tabanan Kab. Tabanan', 5500, 8250, 100, '5-7 hari', 'sejak truk berangkat'),
(217, 'JAKARTA - MALUKU', 'Ambon', 8500, 12750, 100, '10-15 hari', 'sejak kapal berangkat'),
(218, 'JAKARTA - MALUKU', 'Langgur', 11500, 17250, 150, '10-15 hari', 'sejak kapal berangkat'),
(219, 'JAKARTA - MALUKU', 'Dobo', 15000, 22500, 150, '10-20 hari', 'sejak kapal berangkat'),
(220, 'JAKARTA - MALUKU', 'Masohi', 15500, 23250, 150, '10-20 hari', 'sejak kapal berangkat'),
(221, 'JAKARTA - MALUKU', 'Langgur', 11500, 17250, 150, '10-20 hari', 'sejak kapal berangkat'),
(222, 'JAKARTA - MALUKU', 'Saumlaki', 17000, 25500, 100, '10-20 hari', 'sejak kapal berangkat'),
(223, 'JAKARTA - MALUKU', 'Namlea', 16500, 24750, 150, '10-20 hari', 'sejak kapal berangkat'),
(224, 'JAKARTA - MALUKU', 'Namrole', 16500, 24750, 350, '10-20 hari', 'sejak kapal berangkat'),
(225, 'JAKARTA - MALUKU', 'Pulau kei kecil', 17000, 25500, 200, '10-20 hari', 'sejak kapal berangkat'),
(226, 'JAKARTA - MALUKU', 'Pulau kei besar', 18500, 27750, 200, '10-20 hari', 'sejak kapal berangkat'),
(227, 'JAKARTA - MALUKU', 'dullah', 18500, 27750, 200, '10-20 hari', 'sejak kapal berangkat'),
(228, 'JAKARTA - MALUKU', 'tanimbar', 18500, 27750, 250, '10-20 hari', 'sejak kapal berangkat'),
(229, 'JAKARTA - MALUKU', 'Ternate', 8500, 12750, 100, '10-15 hari', 'sejak kapal berangkat'),
(230, 'JAKARTA - MALUKU', 'Sofifi', 9500, 14250, 100, '10-15 hari', 'sejak kapal berangkat'),
(231, 'JAKARTA - MALUKU', 'Tidore', 9500, 14250, 100, '10-15 hari', 'sejak kapal berangkat'),
(232, 'JAKARTA - MALUKU', 'Jailolo', 9500, 14250, 100, '10-15 hari', 'sejak kapal berangkat'),
(233, 'JAKARTA - MALUKU', 'Weda', 11500, 17250, 100, '10-15 hari', 'sejak kapal berangkat'),
(234, 'JAKARTA - MALUKU', 'Tobelo', 9500, 14250, 100, '10-15 hari', 'sejak kapal berangkat'),
(235, 'JAKARTA - MALUKU', 'Labuha', 16000, 24000, 250, '10-15 hari', 'sejak kapal berangkat'),
(236, 'JAKARTA - MALUKU', 'Maba', 12500, 18750, 100, '10-15 hari', 'sejak kapal berangkat'),
(237, 'JAKARTA - MALUKU', 'Sanana', 16000, 24000, 250, '10-15 hari', 'sejak kapal berangkat'),
(238, 'JAKARTA - MALUKU', 'Daruba', 16000, 24000, 250, '10-15 hari', 'sejak kapal berangkat'),
(239, 'JAKARTA - MALUKU', 'Bobong', 16000, 24000, 250, '10-15 hari', 'sejak kapal berangkat'),
(240, 'JAKARTA - MALUKU', 'Pulau Bacan', 16500, 24750, 100, '10-15 hari', 'sejak kapal berangkat'),
(241, 'JAKARTA - MALUKU', 'Wasile', 17500, 26250, 200, '10 - 15 hari', 'sejak kapal berangkat'),
(242, 'JAKARTA - MALUKU', 'morotai', 14500, 21750, 200, '10 - 18 hari', 'sejak kapal berangkat'),
(243, 'JAKARTA - SUMETRA', 'Medan', 4500, 6750, 100, '6-10 hari', 'sejak kapal berangkat'),
(244, 'JAKARTA - SUMETRA', 'Belawan', 4500, 6750, 100, '7-14 hari', 'sejak kapal berangkat'),
(245, 'JAKARTA - SUMETRA', 'Percut Seituan', 4500, 6750, 100, '7-14 hari', 'sejak kapal berangkat'),
(246, 'JAKARTA - SUMETRA', 'Aek Kanopan', 6500, 9750, 100, '7-14 hari', 'sejak kapal berangkat'),
(247, 'JAKARTA - SUMETRA', 'Aek Nabara', 6500, 9750, 100, '7-14 hari', 'sejak kapal berangkat'),
(248, 'JAKARTA - SUMETRA', 'Bah Jambi', 6500, 9750, 100, '7-14 hari', 'sejak kapal berangkat'),
(249, 'JAKARTA - SUMETRA', 'Balige', 6500, 9750, 100, '7-14 hari', 'sejak kapal berangkat'),
(250, 'JAKARTA - SUMETRA', 'Bandar Baru', 6500, 9750, 100, '7-14 hari', 'sejak kapal berangkat'),
(251, 'JAKARTA - SUMETRA', 'Berastagi', 6500, 9750, 100, '7-14 hari', 'sejak kapal berangkat'),
(252, 'JAKARTA - SUMETRA', 'Binjai', 6500, 9750, 100, '7-14 hari', 'sejak kapal berangkat'),
(253, 'JAKARTA - SUMETRA', 'Tebing Tinggi', 6500, 9750, 100, '7-14 hari', 'sejak kapal berangkat'),
(254, 'JAKARTA - SUMETRA', 'Kisaran', 6500, 9750, 100, '7-14 hari', 'sejak kapal berangkat'),
(255, 'JAKARTA - SUMETRA', 'Kota Pinang', 6500, 9750, 100, '7-14 hari', 'sejak kapal berangkat'),
(256, 'JAKARTA - SUMETRA', 'Kuwala Tanjung', 6500, 9750, 100, '7-14 hari', 'sejak kapal berangkat'),
(257, 'JAKARTA - SUMETRA', 'Lubuk Pakam', 6500, 9750, 100, '7-14 hari', 'sejak kapal berangkat'),
(258, 'JAKARTA - SUMETRA', 'Pematang Siantar', 6500, 9750, 100, '7-14 hari', 'sejak kapal berangkat'),
(259, 'JAKARTA - SUMETRA', 'Dairi', 7000, 10500, 100, '7-14 hari', 'sejak kapal berangkat'),
(260, 'JAKARTA - SUMETRA', 'Dolok Masihul', 7000, 10500, 100, '7-14 hari', 'sejak kapal berangkat'),
(261, 'JAKARTA - SUMETRA', 'Indrapura', 7000, 10500, 100, '7-14 hari', 'sejak kapal berangkat'),
(262, 'JAKARTA - SUMETRA', 'Tobasa', 7000, 10500, 100, '7-14 hari', 'sejak kapal berangkat'),
(263, 'JAKARTA - SUMETRA', 'Padang Sidempuan', 7000, 10500, 100, '7-14 hari', 'sejak kapal berangkat'),
(264, 'JAKARTA - SUMETRA', 'Porsea', 7000, 10500, 100, '7-14 hari', 'sejak kapal berangkat'),
(265, 'JAKARTA - SUMETRA', 'Rantau Perapat', 7000, 10500, 100, '7-14 hari', 'sejak kapal berangkat'),
(266, 'JAKARTA - SUMETRA', 'Sei Rampah', 7000, 10500, 100, '7-14 hari', 'sejak kapal berangkat'),
(267, 'JAKARTA - SUMETRA', 'Sidikalang', 7000, 10500, 100, '7-14 hari', 'sejak kapal berangkat'),
(268, 'JAKARTA - SUMETRA', 'Dolok Sanggul', 7000, 10500, 100, '7-14 hari', 'sejak kapal berangkat'),
(269, 'JAKARTA - SUMETRA', 'Gunung Tua', 7500, 11250, 100, '7-14 hari', 'sejak kapal berangkat'),
(270, 'JAKARTA - SUMETRA', 'Tanah Jawa', 7500, 11250, 100, '7-14 hari', 'sejak kapal berangkat'),
(271, 'JAKARTA - SUMETRA', 'Tandam', 7500, 11250, 100, '7-14 hari', 'sejak kapal berangkat'),
(272, 'JAKARTA - SUMETRA', 'Tarutung', 7500, 11250, 100, '7-14 hari', 'sejak kapal berangkat'),
(273, 'JAKARTA - SUMETRA', 'Tj. Balai Asahan', 7500, 11250, 100, '7-14 hari', 'sejak kapal berangkat'),
(274, 'JAKARTA - SUMETRA', 'Lagoboti', 7500, 11250, 100, '7-14 hari', 'sejak kapal berangkat'),
(275, 'JAKARTA - SUMETRA', 'Lima Puluh', 7500, 11250, 100, '7-14 hari', 'sejak kapal berangkat'),
(276, 'JAKARTA - SUMETRA', 'Pak-Pak', 7500, 11250, 100, '7-14 hari', 'sejak kapal berangkat'),
(277, 'JAKARTA - SUMETRA', 'Pandan Sibolga', 7500, 11250, 100, '7-14 hari', 'sejak kapal berangkat'),
(278, 'JAKARTA - SUMETRA', 'Penyabungan', 7500, 11250, 100, '7-14 hari', 'sejak kapal berangkat'),
(279, 'JAKARTA - SUMETRA', 'Perdagangan', 7500, 11250, 100, '7-14 hari', 'sejak kapal berangkat'),
(280, 'JAKARTA - SUMETRA', 'Pangkalan Brandan', 7500, 11250, 100, '7-14 hari', 'sejak kapal berangkat'),
(281, 'JAKARTA - SUMETRA', 'Pangkalan Susu', 7500, 11250, 100, '7-14 hari', 'sejak kapal berangkat'),
(282, 'JAKARTA - SUMETRA', 'Prapat', 7500, 11250, 100, '7-14 hari', 'sejak kapal berangkat'),
(283, 'JAKARTA - SUMETRA', 'Salak / Pak-Pak Barat', 7500, 11250, 100, '7-14 hari', 'sejak kapal berangkat'),
(284, 'JAKARTA - SUMETRA', 'Serbelawan', 7500, 11250, 100, '7-14 hari', 'sejak kapal berangkat'),
(285, 'JAKARTA - SUMETRA', 'Sibolga', 7500, 11250, 100, '7-14 hari', 'sejak kapal berangkat'),
(286, 'JAKARTA - SUMETRA', 'Siborong - Borong', 7500, 11250, 100, '7-14 hari', 'sejak kapal berangkat'),
(287, 'JAKARTA - SUMETRA', 'Sibuhuan', 7500, 11250, 100, '7-14 hari', 'sejak kapal berangkat'),
(288, 'JAKARTA - SUMETRA', 'Simalungun Raya', 7500, 11250, 100, '7-14 hari', 'sejak kapal berangkat'),
(289, 'JAKARTA - SUMETRA', 'Sosa', 7500, 11250, 100, '7-14 hari', 'sejak kapal berangkat'),
(290, 'JAKARTA - SUMETRA', 'Stabat (Langkat)', 7500, 11250, 100, '7-14 hari', 'sejak kapal berangkat'),
(291, 'JAKARTA - SUMETRA', 'Tanjung Pura', 7500, 11250, 100, '7-14 hari', 'sejak kapal berangkat'),
(292, 'JAKARTA - SUMETRA', 'Sipirok', 7500, 11250, 100, '7-14 hari', 'sejak kapal berangkat'),
(293, 'JAKARTA - SUMETRA', 'Tanjung Morawa', 7500, 11250, 100, '7-14 hari', 'sejak kapal berangkat'),
(294, 'JAKARTA - SUMETRA', 'Pangururan', 8500, 12750, 100, '7-14 hari', 'sejak kapal berangkat'),
(295, 'JAKARTA - SUMETRA', 'Mandailing Natal', 8500, 12750, 100, '7-14 hari', 'sejak kapal berangkat'),
(296, 'JAKARTA - SUMETRA', 'Batang Toru', 8500, 12750, 100, '7-14 hari', 'sejak kapal berangkat'),
(297, 'JAKARTA - SUMETRA', 'Perbaungan', 9500, 14250, 100, '7-14 hari', 'sejak kapal berangkat'),
(298, 'JAKARTA - SUMETRA', 'Kabanjahe', 9800, 14700, 100, '7-14 hari', 'sejak kapal berangkat'),
(299, 'JAKARTA - SUMETRA', 'Batubara', 9800, 14700, 100, '7-14 hari', 'sejak kapal berangkat'),
(300, 'JAKARTA - SUMETRA', 'Tanjung Balai', 9800, 14700, 100, '7-14 hari', 'sejak kapal berangkat'),
(301, 'JAKARTA - SUMETRA', 'Sipinok', 11000, 16500, 100, '7-14 hari', 'sejak kapal berangkat'),
(302, 'JAKARTA - SUMETRA', 'Pandan', 11000, 16500, 100, '7-14 hari', 'sejak kapal berangkat'),
(303, 'JAKARTA - SUMETRA', 'Gunung Sitoli Nias', 11500, 17250, 100, '7-14 hari', 'sejak kapal berangkat'),
(304, 'JAKARTA - SUMETRA', 'Teluk Dalam', 14500, 21750, 100, '7-14 hari', 'sejak kapal berangkat'),
(305, 'JAKARTA - SUMETRA', 'Banda Aceh', 5500, 8250, 100, '8-12 hari', 'sejak truk berangkat'),
(306, 'JAKARTA - SUMETRA', 'Kota Sabang', 14000, 21000, 100, '10-15 hari', 'sejak truk berangkat'),
(307, 'JAKARTA - SUMETRA', 'Jantho', 8000, 12000, 100, '10-15 hari', 'sejak truk berangkat'),
(308, 'JAKARTA - SUMETRA', 'Sigli (Pidie)', 7000, 10500, 100, '10-15 hari', 'sejak truk berangkat'),
(309, 'JAKARTA - SUMETRA', 'Meureudu (Pidie Jaya)', 7000, 10500, 100, '10-15 hari', 'sejak truk berangkat'),
(310, 'JAKARTA - SUMETRA', 'Bireuen', 7000, 10500, 100, '10-15 hari', 'sejak truk berangkat'),
(311, 'JAKARTA - SUMETRA', 'Takengon (Aceh Tengah)', 7000, 10500, 100, '10-15 hari', 'sejak truk berangkat'),
(312, 'JAKARTA - SUMETRA', 'Simpang Tiga Redelong (Bener Meriah)', 11000, 16500, 100, '10-15 hari', 'sejak truk berangkat'),
(313, 'JAKARTA - SUMETRA', 'Kota Lhokseumawe', 9500, 14250, 100, '10-15 hari', 'sejak truk berangkat'),
(314, 'JAKARTA - SUMETRA', 'Lhoksukon (Aceh Utara)', 9500, 14250, 100, '10-15 hari', 'sejak truk berangkat'),
(315, 'JAKARTA - SUMETRA', 'Kota Langsa', 8500, 12750, 100, '10-15 hari', 'sejak truk berangkat'),
(316, 'JAKARTA - SUMETRA', 'Ide Rayeuk (Aceh Timur)', 8500, 12750, 100, '10-15 hari', 'sejak truk berangkat'),
(317, 'JAKARTA - SUMETRA', 'Karang Baru (Aceh Tamiang)', 8500, 12750, 100, '10-15 hari', 'sejak truk berangkat'),
(318, 'JAKARTA - SUMETRA', 'Kutacane (Aceh Tenggara)', 12500, 18750, 100, '10-15 hari', 'sejak truk berangkat'),
(319, 'JAKARTA - SUMETRA', 'Gayo Leus (Blang Kejeran)', 12500, 18750, 100, '10-15 hari', 'sejak truk berangkat'),
(320, 'JAKARTA - SUMETRA', 'Calang (Aceh Jaya)', 11500, 17250, 100, '10-15 hari', 'sejak truk berangkat'),
(321, 'JAKARTA - SUMETRA', 'Meulaboh (Aceh Barat)', 11500, 17250, 100, '10-15 hari', 'sejak truk berangkat'),
(322, 'JAKARTA - SUMETRA', 'Sinabang', 11500, 17250, 100, '10-15 hari', 'sejak truk berangkat'),
(323, 'JAKARTA - SUMETRA', 'Suka Makmue (Nagan Raya)', 11500, 17250, 100, '10-15 hari', 'sejak truk berangkat'),
(324, 'JAKARTA - SUMETRA', 'Blang Phidie (Aceh Barat Daya)', 12000, 18000, 100, '10-15 hari', 'sejak truk berangkat'),
(325, 'JAKARTA - SUMETRA', 'Tapak Tuan (Aceh Selatan)', 11000, 16500, 100, '10-15 hari', 'sejak truk berangkat'),
(326, 'JAKARTA - SUMETRA', 'Singkil (Aceh Singkil)', 11000, 16500, 100, '10-15 hari', 'sejak truk berangkat'),
(327, 'JAKARTA - SUMETRA', 'Subulussalam', 11000, 16500, 100, '10-15 hari', 'sejak truk berangkat'),
(328, 'JAKARTA - SUMETRA', 'Bengkulu Kotamadya Bengkulu', 4500, 6750, 100, '4-6 Hari', 'sejak truk berangkat'),
(329, 'JAKARTA - SUMETRA', 'Arga Makmur Bengkulu Utara', 8500, 12750, 100, '4-6 Hari', 'sejak truk berangkat'),
(330, 'JAKARTA - SUMETRA', 'Bintuhan Kab Kaur', 8500, 12750, 100, '4-6 Hari', 'sejak truk berangkat'),
(331, 'JAKARTA - SUMETRA', 'Curup Kab Rejang Lebong', 8500, 12750, 100, '4-6 Hari', 'sejak truk berangkat'),
(332, 'JAKARTA - SUMETRA', 'Karang Tinggi Bengkulu Tengah', 8500, 12750, 100, '4-6 Hari', 'sejak truk berangkat'),
(333, 'JAKARTA - SUMETRA', 'Kepahyang Kab Kepahyang', 8500, 12750, 100, '4-6 Hari', 'sejak truk berangkat'),
(334, 'JAKARTA - SUMETRA', 'Tais Kabupaten Seluma', 8500, 12750, 100, '4-6 Hari', 'sejak truk berangkat'),
(335, 'JAKARTA - SUMETRA', 'Manna Bengkulu Selatan', 8500, 12750, 100, '4-6 Hari', 'sejak truk berangkat'),
(336, 'JAKARTA - SUMETRA', 'Muara Aman Kab Lebong', 8500, 12750, 100, '4-6 Hari', 'sejak truk berangkat'),
(337, 'JAKARTA - SUMETRA', 'Muko Muko Kab Muko Muko', 8500, 12750, 100, '4-6 Hari', 'sejak truk berangkat'),
(338, 'JAKARTA - SUMETRA', 'Jambi', 3500, 5250, 100, '2-3 hari', 'setiap hari'),
(339, 'JAKARTA - SUMETRA', 'Muaro Jambi', 5500, 8250, 100, '2-3 hari', 'setiap hari'),
(340, 'JAKARTA - SUMETRA', 'Sengeti', 5500, 8250, 100, '2-3 hari', 'setiap hari'),
(341, 'JAKARTA - SUMETRA', 'Sarolangun', 6500, 9750, 100, '2-3 hari', 'setiap hari'),
(342, 'JAKARTA - SUMETRA', 'Muara Bulian', 6500, 9750, 100, '2-3 hari', 'setiap hari'),
(343, 'JAKARTA - SUMETRA', 'Bangko', 6500, 9750, 100, '2-3 hari', 'setiap hari'),
(344, 'JAKARTA - SUMETRA', 'Merangin', 6500, 9750, 100, '2-3 hari', 'setiap hari'),
(345, 'JAKARTA - SUMETRA', 'Muaro Bungo', 6500, 9750, 100, '2-3 hari', 'setiap hari'),
(346, 'JAKARTA - SUMETRA', 'Muaro Tebo', 6500, 9750, 100, '2-3 hari', 'setiap hari'),
(347, 'JAKARTA - SUMETRA', 'Singkut', 6500, 9750, 100, '2-3 hari', 'setiap hari'),
(348, 'JAKARTA - SUMETRA', 'Pamenang', 6500, 9750, 100, '2-3 hari', 'setiap hari'),
(349, 'JAKARTA - SUMETRA', 'Rimbobujang', 7500, 11250, 100, '2-3 hari', 'setiap hari'),
(350, 'JAKARTA - SUMETRA', 'Tebing Tinggi/WKS', 7500, 11250, 100, '2-3 hari', 'setiap hari'),
(351, 'JAKARTA - SUMETRA', 'Kuala Tungkal', 7500, 11250, 100, '2-3 hari', 'setiap hari'),
(352, 'JAKARTA - SUMETRA', 'Tanjung Jabung', 7500, 11250, 100, '2-3 hari', 'setiap hari'),
(353, 'JAKARTA - SUMETRA', 'Muara Sabak', 7500, 11250, 100, '2-3 hari', 'setiap hari'),
(354, 'JAKARTA - SUMETRA', 'Kerinci/Sungai Penuh', 8500, 12750, 100, '2-3 hari', 'setiap hari'),
(355, 'JAKARTA - SUMETRA', 'Padang', 4500, 6750, 100, '6-9 hari', '3x seminggu'),
(356, 'JAKARTA - SUMETRA', 'Kab Agam Lubuk Basung', 11000, 16500, 100, '6-9 hari', '3x seminggu'),
(357, 'JAKARTA - SUMETRA', 'Dharmasraya Pulau Punjung', 9500, 14250, 100, '6-9 hari', '3x seminggu'),
(358, 'JAKARTA - SUMETRA', 'Kep Mentawai Tua Pejat', 17000, 25500, 100, '6-9 hari', '3x seminggu'),
(359, 'JAKARTA - SUMETRA', 'Lima Puluh Kota Sarilamak', 10500, 15750, 100, '6-9 hari', '3x seminggu'),
(360, 'JAKARTA - SUMETRA', 'Padang Pariaman Parit Malintang', 8500, 12750, 100, '6-9 hari', '3x seminggu'),
(361, 'JAKARTA - SUMETRA', 'Pasaman Lubuk Sikaping', 9500, 14250, 100, '6-9 hari', '3x seminggu'),
(362, 'JAKARTA - SUMETRA', 'Pasaman Barat Simpang Ampek', 10500, 15750, 100, '6-9 hari', '3x seminggu'),
(363, 'JAKARTA - SUMETRA', 'Pesisir Selatan Painan', 12500, 18750, 100, '6-9 hari', '3x seminggu'),
(364, 'JAKARTA - SUMETRA', 'Sijunjung Muaro Sijunjung', 10500, 15750, 100, '6-9 hari', '3x seminggu'),
(365, 'JAKARTA - SUMETRA', 'Solok Arosuka', 10500, 15750, 100, '6-9 hari', '3x seminggu'),
(366, 'JAKARTA - SUMETRA', 'Solok Selatan Padang Aro', 12500, 18750, 100, '6-9 hari', '3x seminggu'),
(367, 'JAKARTA - SUMETRA', 'Tanah Datar Batu Sangkar', 10500, 15750, 100, '6-9 hari', '3x seminggu'),
(368, 'JAKARTA - SUMETRA', 'Kota Bukit Tinggi', 10500, 15750, 100, '6-9 hari', '3x seminggu'),
(369, 'JAKARTA - SUMETRA', 'Kota Padang Panjang', 8500, 12750, 100, '6-9 hari', '3x seminggu'),
(370, 'JAKARTA - SUMETRA', 'Kota Pariaman', 7500, 11250, 100, '6-9 hari', '3x seminggu'),
(371, 'JAKARTA - SUMETRA', 'Kota Payakumbuh', 9500, 14250, 100, '6-9 hari', '3x seminggu'),
(372, 'JAKARTA - SUMETRA', 'Kota Sawahlunto', 9500, 14250, 100, '6-9 hari', '3x seminggu'),
(373, 'JAKARTA - SUMETRA', 'Solok', 8000, 12000, 100, '6-9 hari', '3x seminggu'),
(374, 'JAKARTA - SUMETRA', 'Pekanbaru Kota', 4500, 6750, 100, '5-6 hari', 'sejak truk berangkat'),
(375, 'JAKARTA - SUMETRA', 'Kubang', 5500, 8250, 100, '5-6 hari', 'sejak truk berangkat'),
(376, 'JAKARTA - SUMETRA', 'Langgam', 6500, 9750, 100, '5-6 hari', 'sejak truk berangkat'),
(377, 'JAKARTA - SUMETRA', 'Pelalawan', 6500, 9750, 100, '5-6 hari', 'sejak truk berangkat'),
(378, 'JAKARTA - SUMETRA', 'Sorek', 6500, 9750, 100, '5-6 hari', 'sejak truk berangkat'),
(379, 'JAKARTA - SUMETRA', 'Ukui', 6500, 9750, 100, '5-6 hari', 'sejak truk berangkat'),
(380, 'JAKARTA - SUMETRA', 'Lirik', 6500, 9750, 100, '5-6 hari', 'sejak truk berangkat'),
(381, 'JAKARTA - SUMETRA', 'Air molek', 6500, 9750, 100, '5-6 hari', 'sejak truk berangkat'),
(382, 'JAKARTA - SUMETRA', 'Peranap', 6500, 9750, 100, '5-6 hari', 'sejak truk berangkat'),
(383, 'JAKARTA - SUMETRA', 'Rengat', 6500, 9750, 100, '5-10 hari', 'sejak truk berangkat'),
(384, 'JAKARTA - SUMETRA', 'Sei kijang', 6500, 9750, 100, '5-6 hari', 'sejak truk berangkat'),
(385, 'JAKARTA - SUMETRA', 'Sungai Pagar', 6500, 9750, 100, '5-6 hari', 'sejak truk berangkat'),
(386, 'JAKARTA - SUMETRA', 'Air Tiris', 6500, 9750, 100, '5-6 hari', 'sejak truk berangkat'),
(387, 'JAKARTA - SUMETRA', 'Bangkinang', 6500, 9750, 100, '5-10 hari', 'sejak truk berangkat'),
(388, 'JAKARTA - SUMETRA', 'Lipat Kain', 6500, 9750, 100, '5-6 hari', 'sejak truk berangkat'),
(389, 'JAKARTA - SUMETRA', 'Kuok', 6500, 9750, 100, '5-6 hari', 'sejak truk berangkat'),
(390, 'JAKARTA - SUMETRA', 'Kabun', 6500, 9750, 100, '5-6 hari', 'sejak truk berangkat'),
(391, 'JAKARTA - SUMETRA', 'Tandun', 6500, 9750, 100, '5-6 hari', 'sejak truk berangkat'),
(392, 'JAKARTA - SUMETRA', 'Ujung Batu', 6500, 9750, 100, '5-6 hari', 'sejak truk berangkat'),
(393, 'JAKARTA - SUMETRA', 'Perawang', 6500, 9750, 100, '5-6 hari', 'sejak truk berangkat'),
(394, 'JAKARTA - SUMETRA', 'Sungai Pakning', 6500, 9750, 100, '5-6 hari', 'sejak truk berangkat'),
(395, 'JAKARTA - SUMETRA', 'Minas', 6500, 9750, 100, '5-6 hari', 'sejak truk berangkat'),
(396, 'JAKARTA - SUMETRA', 'Ujung Tanjung', 6500, 9750, 100, '5-6 hari', 'sejak truk berangkat'),
(397, 'JAKARTA - SUMETRA', 'Kandis', 6500, 9750, 100, '5-6 hari', 'sejak truk berangkat'),
(398, 'JAKARTA - SUMETRA', 'Duri', 6500, 9750, 100, '5-6 hari', 'sejak truk berangkat'),
(399, 'JAKARTA - SUMETRA', 'Dumai', 6500, 9750, 100, '5-6 hari', 'sejak truk berangkat'),
(400, 'JAKARTA - SUMETRA', 'Pelalawan (RAPP)', 7000, 10500, 100, '5-6 hari', 'sejak truk berangkat'),
(401, 'JAKARTA - SUMETRA', 'Dayun', 7500, 11250, 100, '5-6 hari', 'sejak truk berangkat'),
(402, 'JAKARTA - SUMETRA', 'Siak Sri Indrapura', 7500, 11250, 100, '5-6 hari', 'sejak truk berangkat'),
(403, 'JAKARTA - SUMETRA', 'Buton', 7500, 11250, 100, '5-6 hari', 'sejak truk berangkat'),
(404, 'JAKARTA - SUMETRA', 'Pasir Pangiraian', 7500, 11250, 100, '5-6 hari', 'sejak truk berangkat'),
(405, 'JAKARTA - SUMETRA', 'Tembilahan', 7500, 11250, 100, '5-10 hari', 'sejak truk berangkat'),
(406, 'JAKARTA - SUMETRA', 'Bagan Batu', 7500, 11250, 100, '5-6 hari', 'sejak truk berangkat'),
(407, 'JAKARTA - SUMETRA', 'Baserah', 8500, 12750, 100, '5-6 hari', 'sejak truk berangkat'),
(408, 'JAKARTA - SUMETRA', 'Sungai Apit', 8500, 12750, 100, '5-6 hari', 'sejak truk berangkat'),
(409, 'JAKARTA - SUMETRA', 'Taluk Kuantan', 8500, 12750, 100, '5-6 hari', 'sejak truk berangkat'),
(410, 'JAKARTA - SUMETRA', 'Bengkalis', 8500, 12750, 100, '6-14 hari', 'sejak truk berangkat'),
(411, 'JAKARTA - SUMETRA', 'Dalu-Dalu', 8500, 12750, 100, '5-6 hari', 'sejak truk berangkat'),
(412, 'JAKARTA - SUMETRA', 'Bagan Siapi Api', 8500, 12750, 100, '5-6 hari', 'sejak truk berangkat'),
(413, 'JAKARTA - SUMETRA', 'Palembang Kota', 3500, 5250, 100, '5-6 Hari', 'sejak truk berangkat'),
(414, 'JAKARTA - SUMETRA', 'Prabumulih', 4500, 6750, 100, '6-10 Hari', 'sejak truk berangkat'),
(415, 'JAKARTA - SUMETRA', 'Martapura', 7500, 11250, 100, '6-10 Hari', 'sejak truk berangkat'),
(416, 'JAKARTA - SUMETRA', 'Batu Raja', 4500, 6750, 100, '6-10 Hari', 'sejak truk berangkat'),
(417, 'JAKARTA - SUMETRA', 'Muara Enim', 4500, 6750, 100, '6-10 Hari', 'sejak truk berangkat'),
(418, 'JAKARTA - SUMETRA', 'Tanjung Enim', 4500, 6750, 100, '6-10 Hari', 'sejak truk berangkat'),
(419, 'JAKARTA - SUMETRA', 'Lahat', 4500, 6750, 100, '6-10 Hari', 'sejak truk berangkat'),
(420, 'JAKARTA - SUMETRA', 'Kayu Agung', 5500, 8250, 100, '6-10 Hari', 'sejak truk berangkat'),
(421, 'JAKARTA - SUMETRA', 'Bengkulu', 5500, 8250, 100, '6-10 Hari', 'sejak truk berangkat'),
(422, 'JAKARTA - SUMETRA', 'Banyu Asin', 5500, 8250, 100, '6-10 Hari', 'sejak truk berangkat'),
(423, 'JAKARTA - SUMETRA', 'Pagar Alam', 11000, 16500, 100, '6-15 Hari', 'sejak truk berangkat'),
(424, 'JAKARTA - SUMETRA', 'Sekayu Muba', 7500, 11250, 100, '6-15 Hari', 'sejak truk berangkat'),
(425, 'JAKARTA - SUMETRA', 'Indralaya Oki', 7500, 11250, 100, '6-15 Hari', 'sejak truk berangkat'),
(426, 'JAKARTA - SUMETRA', 'Muaro Duo', 11000, 16500, 100, '6-15 Hari', 'sejak truk berangkat'),
(427, 'JAKARTA - SUMETRA', 'Belitang', 11500, 17250, 100, '6-15 Hari', 'sejak truk berangkat'),
(428, 'JAKARTA - SUMETRA', 'Batu Marta', 11500, 17250, 100, '6-15 Hari', 'sejak truk berangkat'),
(429, 'JAKARTA - SUMETRA', 'Bayung Lincir', 11500, 17250, 100, '6-15 Hari', 'sejak truk berangkat'),
(430, 'JAKARTA - SUMETRA', 'Betung', 11500, 17250, 100, '6-15 Hari', 'sejak truk berangkat'),
(431, 'JAKARTA - SUMETRA', 'Tebing Tinggi/4L', 7500, 11250, 100, '6-15 Hari', 'sejak truk berangkat'),
(432, 'JAKARTA - SUMETRA', 'Pangkalan Balai', 7500, 11250, 100, '6-15 Hari', 'sejak truk berangkat'),
(433, 'JAKARTA - SUMETRA', 'Lubuk Linggau', 7500, 11250, 100, '6-15 Hari', 'sejak truk berangkat'),
(434, 'JAKARTA - SUMETRA', 'Sungai Lilin', 8500, 12750, 100, '6-15 Hari', 'sejak truk berangkat'),
(435, 'JAKARTA - SUMETRA', 'Tanjung Karang Pusat', 4500, 6750, 100, '4-5 Hari', 'sejak truk berangkat'),
(436, 'JAKARTA - SUMETRA', 'Teluk Betung', 4500, 6750, 100, '4-5 Hari', 'sejak truk berangkat'),
(437, 'JAKARTA - SUMETRA', 'Way Halim', 4500, 6750, 100, '4-5 Hari', 'sejak truk berangkat'),
(438, 'JAKARTA - SUMETRA', 'Rajabasa', 4500, 6750, 100, '4-5 Hari', 'sejak truk berangkat'),
(439, 'JAKARTA - SUMETRA', 'Panjang', 4500, 6750, 100, '4-5 Hari', 'sejak truk berangkat'),
(440, 'JAKARTA - SUMETRA', 'Sukarame', 4500, 6750, 100, '4-5 Hari', 'sejak truk berangkat'),
(441, 'JAKARTA - SUMETRA', 'Metro', 4800, 7200, 100, '4-5 Hari', 'sejak truk berangkat'),
(442, 'JAKARTA - SUMETRA', 'Bandar Jaya', 5500, 8250, 100, '4-5 Hari', 'sejak truk berangkat'),
(443, 'JAKARTA - SUMETRA', 'Gunung Sugih', 5500, 8250, 100, '4-5 Hari', 'sejak truk berangkat'),
(444, 'JAKARTA - SUMETRA', 'Terbanggi Besar', 5500, 8250, 100, '4-5 Hari', 'sejak truk berangkat'),
(445, 'JAKARTA - SUMETRA', 'Bandar Agung', 5500, 8250, 100, '4-5 Hari', 'sejak truk berangkat'),
(446, 'JAKARTA - SUMETRA', 'Natar', 5500, 8250, 100, '4-5 Hari', 'sejak truk berangkat'),
(447, 'JAKARTA - SUMETRA', 'Tanjung Bintang', 5500, 8250, 100, '4-5 Hari', 'sejak truk berangkat'),
(448, 'JAKARTA - SUMETRA', 'Tarahan', 5500, 8250, 100, '4-5 Hari', 'sejak truk berangkat'),
(449, 'JAKARTA - SUMETRA', 'Katibung', 5500, 8250, 100, '4-5 Hari', 'sejak truk berangkat'),
(450, 'JAKARTA - SUMETRA', 'Jati Agung', 5500, 8250, 100, '4-5 Hari', 'sejak truk berangkat'),
(451, 'JAKARTA - SUMETRA', 'Padang Cermin', 5500, 8250, 100, '4-5 Hari', 'sejak truk berangkat'),
(452, 'JAKARTA - SUMETRA', 'Tegineneng', 5500, 8250, 100, '4-5 Hari', 'sejak truk berangkat'),
(453, 'JAKARTA - SUMETRA', 'Kalianda', 5500, 8250, 100, '4-5 Hari', 'sejak truk berangkat'),
(454, 'JAKARTA - SUMETRA', 'Bakauheni', 5500, 8250, 100, '4-5 Hari', 'sejak truk berangkat'),
(455, 'JAKARTA - SUMETRA', 'Kotabumi', 5500, 8250, 100, '4-5 Hari', 'sejak truk berangkat'),
(456, 'JAKARTA - SUMETRA', 'Bukit Kemuning', 5500, 8250, 100, '4-5 Hari', 'sejak truk berangkat'),
(457, 'JAKARTA - SUMETRA', 'Blambangan Umpu', 5500, 8250, 100, '4-5 Hari', 'sejak truk berangkat'),
(458, 'JAKARTA - SUMETRA', 'Gedung Tataan', 5500, 8250, 100, '4-5 Hari', 'sejak truk berangkat'),
(459, 'JAKARTA - SUMETRA', 'Wiyono', 5500, 8250, 100, '4-5 Hari', 'sejak truk berangkat'),
(460, 'JAKARTA - SUMETRA', 'Kedondong', 5500, 8250, 100, '4-5 Hari', 'sejak truk berangkat'),
(461, 'JAKARTA - SUMETRA', 'Way Lima', 5500, 8250, 100, '4-5 Hari', 'sejak truk berangkat'),
(462, 'JAKARTA - SUMETRA', 'Pringsewu', 5500, 8250, 100, '4-5 Hari', 'sejak truk berangkat'),
(463, 'JAKARTA - SUMETRA', 'Gading Rejo', 5500, 8250, 100, '4-5 Hari', 'sejak truk berangkat'),
(464, 'JAKARTA - SUMETRA', 'Balik Bukit', 6500, 9750, 100, '4-5 Hari', 'sejak truk berangkat'),
(465, 'JAKARTA - SUMETRA', 'Sribawono', 6500, 9750, 100, '4-5 Hari', 'sejak truk berangkat'),
(466, 'JAKARTA - SUMETRA', 'Talang Padang', 7000, 10500, 100, '4-5 Hari', 'sejak truk berangkat'),
(467, 'JAKARTA - SUMETRA', 'Pulau Panggung', 7000, 10500, 100, '4-5 Hari', 'sejak truk berangkat'),
(468, 'JAKARTA - SUMETRA', 'Sukadana', 7500, 11250, 100, '4-5 Hari', 'sejak truk berangkat'),
(469, 'JAKARTA - SUMETRA', 'Way Jepara', 7500, 11250, 100, '4-5 Hari', 'sejak truk berangkat'),
(470, 'JAKARTA - SUMETRA', 'Gisting', 7500, 11250, 100, '4-5 Hari', 'sejak truk berangkat'),
(471, 'JAKARTA - SUMETRA', 'Menggala', 7500, 11250, 100, '4-5 Hari', 'sejak truk berangkat'),
(472, 'JAKARTA - SUMETRA', 'Banjar Agung', 8500, 12750, 100, '4-5 Hari', 'sejak truk berangkat'),
(473, 'JAKARTA - SUMETRA', 'Krui', 8500, 12750, 100, '4-5 Hari', 'sejak truk berangkat'),
(474, 'JAKARTA - SUMETRA', 'Liwa', 8500, 12750, 100, '4-5 Hari', 'sejak truk berangkat'),
(475, 'JAKARTA - SUMETRA', 'Kota Agung', 9500, 14250, 100, '4-5 Hari', 'sejak truk berangkat'),
(476, 'JAKARTA - SUMETRA', 'Daya Murni', 9500, 14250, 100, '4-5 Hari', 'sejak truk berangkat'),
(477, 'JAKARTA - SUMETRA', 'Baradatu', 9500, 14250, 100, '4-5 Hari', 'sejak truk berangkat'),
(478, 'JAKARTA - JAWA', 'Surabaya', 2500, 3750, 100, '1-3 hari', 'Sejak Truk Berangkat'),
(479, 'JAKARTA - JAWA', 'Bangkalan', 4000, 6000, 100, '4-5 hari', 'Sejak Truk Berangkat'),
(480, 'JAKARTA - JAWA', 'Banyuwangi', 4500, 6750, 100, '4-5 hari', 'Sejak Truk Berangkat'),
(481, 'JAKARTA - JAWA', 'Blitar', 4500, 6750, 100, '4-5 hari', 'Sejak Truk Berangkat'),
(482, 'JAKARTA - JAWA', 'Bojonegoro', 4000, 6000, 100, '4-5 hari', 'Sejak Truk Berangkat'),
(483, 'JAKARTA - JAWA', 'Bondowoso', 4500, 6750, 100, '4-5 hari', 'Sejak Truk Berangkat'),
(484, 'JAKARTA - JAWA', 'Gresik', 4000, 6000, 100, '4-5 hari', 'Sejak Truk Berangkat'),
(485, 'JAKARTA - JAWA', 'Jember', 4500, 6750, 100, '4-5 hari', 'Sejak Truk Berangkat'),
(486, 'JAKARTA - JAWA', 'Jombang', 4500, 6750, 100, '4-5 hari', 'Sejak Truk Berangkat'),
(487, 'JAKARTA - JAWA', 'Kediri', 4500, 6750, 100, '4-5 hari', 'Sejak Truk Berangkat'),
(488, 'JAKARTA - JAWA', 'Lamongan', 4500, 6750, 100, '4-5 hari', 'Sejak Truk Berangkat'),
(489, 'JAKARTA - JAWA', 'Lumajang', 4500, 6750, 100, '4-5 hari', 'Sejak Truk Berangkat'),
(490, 'JAKARTA - JAWA', 'Madiun', 4000, 6000, 100, '4-5 hari', 'Sejak Truk Berangkat'),
(491, 'JAKARTA - JAWA', 'Magetan', 4500, 6750, 100, '4-5 hari', 'Sejak Truk Berangkat'),
(492, 'JAKARTA - JAWA', 'Malang', 4000, 6000, 100, '4-5 hari', 'Sejak Truk Berangkat'),
(493, 'JAKARTA - JAWA', 'Mojokerto', 4500, 6750, 100, '4-5 hari', 'Sejak Truk Berangkat'),
(494, 'JAKARTA - JAWA', 'Nganjuk', 4500, 6750, 100, '4-5 hari', 'Sejak Truk Berangkat'),
(495, 'JAKARTA - JAWA', 'Pamekasan', 4500, 6750, 100, '4-5 hari', 'Sejak Truk Berangkat'),
(496, 'JAKARTA - JAWA', 'Pandaan', 5500, 8250, 100, '4-5 hari', 'Sejak Truk Berangkat'),
(497, 'JAKARTA - JAWA', 'Pasuruan', 4500, 6750, 100, '4-5 hari', 'Sejak Truk Berangkat'),
(498, 'JAKARTA - JAWA', 'Ponorogo', 4500, 6750, 100, '4-5 hari', 'Sejak Truk Berangkat'),
(499, 'JAKARTA - JAWA', 'Probolinggo', 4500, 6750, 100, '4-5 hari', 'Sejak Truk Berangkat'),
(500, 'JAKARTA - JAWA', 'Sampang', 5500, 8250, 100, '4-5 hari', 'Sejak Truk Berangkat'),
(501, 'JAKARTA - JAWA', 'Sidoarjo', 4000, 6000, 100, '4-5 hari', 'Sejak Truk Berangkat'),
(502, 'JAKARTA - JAWA', 'Situbondo', 4000, 6000, 100, '4-5 hari', 'Sejak Truk Berangkat'),
(503, 'JAKARTA - JAWA', 'Sumenep', 6000, 9000, 100, '4-5 hari', 'Sejak Truk Berangkat'),
(504, 'JAKARTA - JAWA', 'Tuban', 4500, 6750, 100, '4-5 hari', 'Sejak Truk Berangkat'),
(505, 'JAKARTA - JAWA', 'Tulungagung', 4500, 6750, 100, '4-5 hari', 'Sejak Truk Berangkat'),
(506, 'JAKARTA - JAWA', 'Jogjakarta Kota', 3000, 4500, 100, '3-5 hari', 'Sejak Truk Berangkat'),
(507, 'JAKARTA - JAWA', 'Wates', 4500, 6750, 100, '3-5 hari', 'Sejak Truk Berangkat'),
(508, 'JAKARTA - JAWA', 'Sleman', 4500, 6750, 100, '3-5 hari', 'Sejak Truk Berangkat'),
(509, 'JAKARTA - JAWA', 'Bantul', 5500, 8250, 100, '3-5 hari', 'Sejak Truk Berangkat'),
(510, 'JAKARTA - JAWA', 'Imogiri', 5500, 8250, 100, '3-5 hari', 'Sejak Truk Berangkat'),
(511, 'JAKARTA - JAWA', 'semarang', 2500, 3750, 0, '?1-3 hari', 'Sejak Truk Berangkat'),
(512, 'JAKARTA - JAWA', '?cilacap kota', 3500, 5250, 0, '?2-5 hari', 'Sejak Truk Berangkat'),
(513, 'JAKARTA - JAWA', '?ajibarang', 4500, 6750, 0, '?2-5 hari', 'Sejak Truk Berangkat'),
(514, 'JAKARTA - JAWA', '?wangon', 4500, 6750, 0, '?2-5 hari', 'Sejak Truk Berangkat'),
(515, 'JAKARTA - JAWA', '?banjarnegara', 4500, 6750, 0, '?2-5 hari', 'Sejak Truk Berangkat'),
(516, 'JAKARTA - JAWA', '?karangpucung', 4500, 6750, 0, '?2-5 hari', 'Sejak Truk Berangkat'),
(517, 'JAKARTA - JAWA', '?majenang', 4500, 6750, 0, '?2-5 hari', 'Sejak Truk Berangkat'),
(518, 'JAKARTA - JAWA', '?sidareja', 4500, 6750, 0, '?2-5 hari', 'Sejak Truk Berangkat'),
(519, 'JAKARTA - JAWA', '?gombong', 4500, 6750, 0, '?2-5 hari', 'Sejak Truk Berangkat'),
(520, 'JAKARTA - JAWA', '?bantul', 4500, 6750, 0, '?2-5 hari', 'Sejak Truk Berangkat');
INSERT INTO `tarif_cargo_murah` (`id`, `kelompok`, `kota_tujuan`, `tarif`, `harga_balik`, `minimal`, `lead_time`, `keterangan`) VALUES
(521, 'JAKARTA - JAWA', '?banyumas', 4500, 6750, 0, '?2-5 hari', 'Sejak Truk Berangkat'),
(522, 'JAKARTA - JAWA', '?batang', 4500, 6750, 0, '?2-5 hari', 'Sejak Truk Berangkat'),
(523, 'JAKARTA - JAWA', '?bawen', 4500, 6750, 0, '?2-5 hari', 'Sejak Truk Berangkat'),
(524, 'JAKARTA - JAWA', '?blora', 4500, 6750, 0, '?2-5 hari', 'Sejak Truk Berangkat'),
(525, 'JAKARTA - JAWA', '?boyolali', 4500, 6750, 0, '?2-5 hari', 'Sejak Truk Berangkat'),
(526, 'JAKARTA - JAWA', '?brebes', 4500, 6750, 0, '?2-5 hari', 'Sejak Truk Berangkat'),
(527, 'JAKARTA - JAWA', '?cepu', 6500, 9750, 0, '?2-5 hari', 'Sejak Truk Berangkat'),
(528, 'JAKARTA - JAWA', '?cilacap', 5000, 7500, 0, '?2-5 hari', 'Sejak Truk Berangkat'),
(529, 'JAKARTA - JAWA', '?demak', 4500, 6750, 0, '?2-5 hari', 'Sejak Truk Berangkat'),
(530, 'JAKARTA - JAWA', '?jepara', 4500, 6750, 0, '?2-5 hari', 'Sejak Truk Berangkat'),
(531, 'JAKARTA - JAWA', '?karanganyar', 4500, 6750, 100, '?2-5 hari', 'Sejak Truk Berangkat'),
(532, 'JAKARTA - JAWA', '?kebumen', 4500, 6750, 0, '?2-5 hari', 'Sejak Truk Berangkat'),
(533, 'JAKARTA - JAWA', '?kendal', 4500, 6750, 100, '?2-5 hari', 'Sejak Truk Berangkat'),
(534, 'JAKARTA - JAWA', '?klaten', 4500, 6750, 0, '?2-5 hari', 'Sejak Truk Berangkat'),
(535, 'JAKARTA - JAWA', '?kudus', 4500, 6750, 0, '?2-5 hari', 'Sejak Truk Berangkat'),
(536, 'JAKARTA - JAWA', '?kutoarjo', 5000, 7500, 0, '?2-5 hari', 'Sejak Truk Berangkat'),
(537, 'JAKARTA - JAWA', '?magelang', 4500, 6750, 0, '?2-5 hari', 'Sejak Truk Berangkat'),
(538, 'JAKARTA - JAWA', '?pati', 4000, 6000, 0, '?2-5 hari', 'Sejak Truk Berangkat'),
(539, 'JAKARTA - JAWA', '?pekalongan', 4500, 6750, 0, '?2-5 hari', 'Sejak Truk Berangkat'),
(540, 'JAKARTA - JAWA', '?pemalang', 4500, 6750, 0, '?2-5 hari', 'Sejak Truk Berangkat'),
(541, 'JAKARTA - JAWA', '?purbalingga', 5500, 8250, 0, '?2-5 hari', 'Sejak Truk Berangkat'),
(542, 'JAKARTA - JAWA', '?purwodadi', 4000, 6000, 0, '?2-5 hari', 'Sejak Truk Berangkat'),
(543, 'JAKARTA - JAWA', '?purwokerto', 4500, 6750, 0, '?2-5 hari', 'Sejak Truk Berangkat'),
(544, 'JAKARTA - JAWA', '?purworejo', 5500, 8250, 0, '?2-5 hari', 'Sejak Truk Berangkat'),
(545, 'JAKARTA - JAWA', '?rembang', 4500, 6750, 0, '?2-5 hari', 'Sejak Truk Berangkat'),
(546, 'JAKARTA - JAWA', '?salatiga', 4000, 6000, 0, '?2-5 hari', 'Sejak Truk Berangkat'),
(547, 'JAKARTA - JAWA', '?slawi', 4800, 7200, 0, '?2-5 hari', 'Sejak Truk Berangkat'),
(548, 'JAKARTA - JAWA', '?sleman', 4500, 6750, 0, '?2-5 hari', 'Sejak Truk Berangkat'),
(549, 'JAKARTA - JAWA', '?solo', 4500, 6750, 0, '?2-5 hari', 'Sejak Truk Berangkat'),
(550, 'JAKARTA - JAWA', '?sragen', 4500, 6750, 0, '?2-5 hari', 'Sejak Truk Berangkat'),
(551, 'JAKARTA - JAWA', '?sukoharjo', 4000, 6000, 0, '?2-5 hari', 'Sejak Truk Berangkat'),
(552, 'JAKARTA - JAWA', '?temanggung', 4500, 6750, 0, '?2-5 hari', 'Sejak Truk Berangkat'),
(553, 'JAKARTA - JAWA', '?ungaran', 5000, 7500, 0, '?2-5 hari', 'Sejak Truk Berangkat'),
(554, 'JAKARTA - JAWA', '?wates', 5000, 7500, 0, '?2-5 hari', 'Sejak Truk Berangkat'),
(555, 'JAKARTA - JAWA', '?wonogiri', 5000, 7500, 0, '?2-5 hari', 'Sejak Truk Berangkat'),
(556, 'JAKARTA - JAWA', '?wonosari', 5000, 7500, 0, '?2-5 hari', 'Sejak Truk Berangkat'),
(557, 'JAKARTA - JAWA', '?wonosobo', 5500, 8250, 0, '?2-5 hari', 'Sejak Truk Berangkat'),
(558, 'JAKARTA - JAWA', 'Bandung', 2000, 3000, 100, '2-3 hari', 'Sejak Truk Berangkat'),
(559, 'JAKARTA - JAWA', 'Baleendah', 3500, 5250, 100, '3-5 hari', 'Sejak Truk Berangkat'),
(560, 'JAKARTA - JAWA', 'Banjaran', 3500, 5250, 100, '3-5 hari', 'Sejak Truk Berangkat'),
(561, 'JAKARTA - JAWA', 'Cibiru', 3500, 5250, 100, '3-5 hari', 'Sejak Truk Berangkat'),
(562, 'JAKARTA - JAWA', 'Cicalengka', 3500, 5250, 100, '3-5 hari', 'Sejak Truk Berangkat'),
(563, 'JAKARTA - JAWA', 'Cilenyi', 3500, 5250, 100, '3-5 hari', 'Sejak Truk Berangkat'),
(564, 'JAKARTA - JAWA', 'Cimahi', 4000, 6000, 100, '3-5 hari', 'Sejak Truk Berangkat'),
(565, 'JAKARTA - JAWA', 'Dayeuhkolot', 4000, 6000, 100, '3-5 hari', 'Sejak Truk Berangkat'),
(566, 'JAKARTA - JAWA', 'Padalarang', 4000, 6000, 100, '3-5 hari', 'Sejak Truk Berangkat'),
(567, 'JAKARTA - JAWA', 'Rancaekek', 4000, 6000, 100, '3-5 hari', 'Sejak Truk Berangkat'),
(568, 'JAKARTA - JAWA', 'Soreang', 4000, 6000, 100, '3-5 hari', 'Sejak Truk Berangkat'),
(569, 'JAKARTA - JAWA', 'Ujungberung', 4500, 6750, 100, '3-5 hari', 'Sejak Truk Berangkat'),
(570, 'JAKARTA - JAWA', 'Lembang', 4500, 6750, 100, '3-5 hari', 'Sejak Truk Berangkat'),
(571, 'JAKARTA - JAWA', 'Cililin', 4500, 6750, 100, '3-5 hari', 'Sejak Truk Berangkat'),
(572, 'JAKARTA - JAWA', 'Ciwidey', 4500, 6750, 100, '3-5 hari', 'Sejak Truk Berangkat'),
(573, 'JAKARTA - JAWA', 'Pengalengan', 4500, 6750, 100, '3-5 hari', 'Sejak Truk Berangkat'),
(574, 'JAKARTA - JAWA', 'Majalaya', 4500, 6750, 100, '3-5 hari', 'Sejak Truk Berangkat'),
(575, 'JAKARTA - JAWA', 'Sumedang Kota', 4500, 6750, 100, '3-5 hari', 'Sejak Truk Berangkat'),
(576, 'JAKARTA - JAWA', 'Jatinangor', 5500, 8250, 100, '3-5 hari', 'Sejak Truk Berangkat'),
(577, 'JAKARTA - JAWA', 'Wado', 5500, 8250, 100, '3-5 hari', 'Sejak Truk Berangkat'),
(578, 'JAKARTA - JAWA', 'Tomo', 5500, 8250, 100, '3-5 hari', 'Sejak Truk Berangkat'),
(579, 'JAKARTA - JAWA', 'Kodya Tasikmalaya', 4500, 6750, 100, '4-6 hari', 'Sejak Truk Berangkat'),
(580, 'JAKARTA - JAWA', 'Kab. Tasikmalaya', 5500, 8250, 100, '4-6 hari', 'Sejak Truk Berangkat'),
(581, 'JAKARTA - JAWA', 'Ciamis Kota', 4500, 45000, 100, '6-8 hari', 'Sejak Truk Berangkat'),
(582, 'JAKARTA - JAWA', 'Banjar', 5500, 45000, 100, '6-8 hari', 'Sejak Truk Berangkat'),
(583, 'JAKARTA - JAWA', 'Pangandaran', 7500, 45000, 100, '6-8 hari', 'Sejak Truk Berangkat'),
(584, 'JAKARTA - JAWA', 'Subang Kota', 4500, 6750, 100, '6-8 hari', 'Sejak Truk Berangkat'),
(585, 'JAKARTA - JAWA', 'Subang Kab', 4500, 6750, 100, '6-8 hari', 'Sejak Truk Berangkat'),
(586, 'JAKARTA - JAWA', 'Pamanukan', 4500, 6750, 100, '6-8 hari', 'Sejak Truk Berangkat'),
(587, 'JAKARTA - JAWA', 'Cianjur', 4500, 6750, 100, '6-8 hari', 'Sejak Truk Berangkat'),
(588, 'JAKARTA - JAWA', 'Cicurug', 5500, 8250, 100, '6-8 hari', 'Sejak Truk Berangkat'),
(589, 'JAKARTA - JAWA', 'Cipanas Cianjur', 5500, 8250, 100, '6-8 hari', 'Sejak Truk Berangkat'),
(590, 'JAKARTA - JAWA', 'Pelabuhan Ratu', 5500, 8250, 100, '6-8 hari', 'Sejak Truk Berangkat'),
(591, 'JAKARTA - JAWA', 'Sukabumi Kota', 4500, 6750, 100, '6-8 hari', 'Sejak Truk Berangkat'),
(592, 'JAKARTA - JAWA', 'Cikijing', 3500, 5250, 100, '2-5 hari', 'Sejak Truk Berangkat'),
(593, 'JAKARTA - JAWA', 'Cirebon Kota', 2500, 3750, 100, '2-3 hari', 'Sejak Truk Berangkat'),
(594, 'JAKARTA - JAWA', 'Kadipaten', 5500, 8250, 100, '6-8 hai', 'Sejak Truk Berangkat'),
(595, 'JAKARTA - JAWA', 'Kuningan', 5500, 8250, 100, '6-8 hari', 'Sejak Truk Berangkat'),
(596, 'JAKARTA - JAWA', 'Haurgeulis', 4500, 6750, 100, '6-8 hari', 'Sejak Truk Berangkat'),
(597, 'JAKARTA - JAWA', 'Jatibarang', 4800, 7200, 100, '6-8 hari', 'Sejak Truk Berangkat'),
(598, 'JAKARTA - JAWA', 'Losarang', 5000, 7500, 100, '6-8 hari', 'Sejak Truk Berangkat'),
(599, 'JAKARTA - JAWA', 'Losari', 5000, 7500, 100, '6-8 hari', 'Sejak Truk Berangkat'),
(600, 'JAKARTA - JAWA', 'Majalengka', 5500, 8250, 100, '6-8 hari', 'Sejak Truk Berangkat'),
(601, 'JAKARTA - JAWA', 'Palimanan', 5500, 8250, 100, '6-8 hari', 'Sejak Truk Berangkat'),
(602, 'JAKARTA - JAWA', 'Garut Kota', 4500, 6750, 100, '4-6 hari', 'Sejak Truk Berangkat'),
(603, 'JAKARTA - JAWA', 'Pameungpeuk', 5500, 8250, 100, '4-6 hari', 'Sejak Truk Berangkat'),
(604, 'JAKARTA - KEPULAUAN RIAU', 'Batam Kota', 2800, 4200, 100, '10-12 hari', 'sejak kapal berangkat'),
(605, 'JAKARTA - KEPULAUAN RIAU', 'Bengkong Indah', 4500, 6750, 100, '10-12 hari', 'sejak kapal berangkat'),
(606, 'JAKARTA - KEPULAUAN RIAU', 'Bengkong Laut', 4500, 6750, 100, '10-12 hari', 'sejak kapal berangkat'),
(607, 'JAKARTA - KEPULAUAN RIAU', 'Karas (Pulau Karas)', 4500, 6750, 100, '10-12 hari', 'sejak kapal berangkat'),
(608, 'JAKARTA - KEPULAUAN RIAU', 'Ngenang', 4500, 6750, 100, '10-12 hari', 'sejak kapal berangkat'),
(609, 'JAKARTA - KEPULAUAN RIAU', 'Bulang Lintang', 4500, 6750, 100, '10-12 hari', 'sejak kapal berangkat'),
(610, 'JAKARTA - KEPULAUAN RIAU', 'Rempang Cate', 4500, 6750, 100, '10-12 hari', 'sejak kapal berangkat'),
(611, 'JAKARTA - KEPULAUAN RIAU', 'Sijantung', 4500, 6750, 100, '10-12 hari', 'sejak kapal berangkat'),
(612, 'JAKARTA - KEPULAUAN RIAU', 'Pulau Abang', 4500, 6750, 100, '10-12 hari', 'sejak kapal berangkat'),
(613, 'JAKARTA - KEPULAUAN RIAU', 'Kota Tanjung Pinang', 7000, 10500, 250, '6-10 hari', 'sejak kapal berangkat'),
(614, 'JAKARTA - KEPULAUAN RIAU', 'Korindo', 7000, 10500, 250, '6-10 hari', 'sejak kapal berangkat'),
(615, 'JAKARTA - KEPULAUAN RIAU', 'Galang Batang', 8000, 12000, 250, '6-10 hari', 'sejak kapal berangkat'),
(616, 'JAKARTA - KEPULAUAN RIAU', 'Kijang', 8500, 12750, 250, '6-10 hari', 'sejak kapal berangkat'),
(617, 'JAKARTA - KEPULAUAN RIAU', 'Gesek', 8500, 12750, 250, '6-10 hari', 'sejak kapal berangkat'),
(618, 'JAKARTA - KEPULAUAN RIAU', 'Toapayah', 8500, 12750, 250, '6-10 hari', 'sejak kapal berangkat'),
(619, 'JAKARTA - KEPULAUAN RIAU', 'Trikora', 8500, 12750, 250, '6-10 hari', 'sejak kapal berangkat'),
(620, 'JAKARTA - KEPULAUAN RIAU', 'Berakit', 8500, 12750, 250, '6-10 hari', 'sejak kapal berangkat'),
(621, 'JAKARTA - KEPULAUAN RIAU', 'Tanjung Uban', 11500, 17250, 250, '6-10 hari', 'sejak kapal berangkat'),
(622, 'JAKARTA - KEPULAUAN RIAU', 'Bintan Bunyu', 8500, 12750, 250, '6-10 hari', 'sejak kapal berangkat'),
(623, 'JAKARTA - KEPULAUAN RIAU', 'Teluk Sebong', 9500, 14250, 250, '6-10 hari', 'sejak kapal berangkat'),
(624, 'JAKARTA - KEPULAUAN RIAU', 'Lagoi/ Kawasan Wisata', 13500, 20250, 250, '6-10 hari', 'sejak kapal berangkat'),
(625, 'JAKARTA - KEPULAUAN RIAU', 'Tanjung Balai Karimun', 8500, 12750, 300, '6-10 hari', 'sejak kapal berangkat'),
(626, 'JAKARTA - KEPULAUAN RIAU', 'Parit', 21500, 32250, 250, '6-10 hari', 'sejak kapal berangkat'),
(627, 'JAKARTA - KEPULAUAN RIAU', 'Sungai Lakam', 21500, 32250, 250, '6-10 hari', 'sejak kapal berangkat'),
(628, 'JAKARTA - KEPULAUAN RIAU', 'Lubuk Semut', 21500, 32250, 250, '6-10 hari', 'sejak kapal berangkat'),
(629, 'JAKARTA - KEPULAUAN RIAU', 'Teluk Air', 21500, 32250, 250, '6-10 hari', 'sejak kapal berangkat'),
(630, 'JAKARTA - KEPULAUAN RIAU', 'Tulang', 21500, 32250, 250, '6-10 hari', 'sejak kapal berangkat'),
(631, 'JAKARTA - KEPULAUAN RIAU', 'Dabo Singkep', 21500, 32250, 250, '6-10 hari', 'sejak kapal berangkat'),
(632, 'JAKARTA - KEPULAUAN RIAU', 'Sebadai Ulu', 18500, 27750, 250, '14-17 hari', 'sejak kapal berangkat'),
(633, 'JAKARTA - KEPULAUAN RIAU', 'Sededap', 18500, 27750, 250, '14-17 hari', 'sejak kapal berangkat'),
(634, 'JAKARTA - KEPULAUAN RIAU', 'Selading', 18500, 27750, 250, '14-17 hari', 'sejak kapal berangkat'),
(635, 'JAKARTA - KEPULAUAN RIAU', 'Sepempang', 18500, 27750, 250, '14-17 hari', 'sejak kapal berangkat'),
(636, 'JAKARTA - KEPULAUAN RIAU', 'Serantas', 18500, 27750, 250, '14-17 hari', 'sejak kapal berangkat'),
(637, 'JAKARTA - KEPULAUAN RIAU', 'Setumuk', 18500, 27750, 250, '14-17 hari', 'sejak kapal berangkat'),
(638, 'JAKARTA - KEPULAUAN RIAU', 'Sungai Ulu', 18500, 27750, 250, '14-17 hari', 'sejak kapal berangkat'),
(639, 'JAKARTA - KEPULAUAN RIAU', 'Tanjung', 18500, 27750, 250, '14-17 hari', 'sejak kapal berangkat'),
(640, 'JAKARTA - KEPULAUAN RIAU', 'Tanjung Batang', 18500, 27750, 250, '14-17 hari', 'sejak kapal berangkat'),
(641, 'JAKARTA - KEPULAUAN RIAU', 'Tanjung Kumbik Utara', 18500, 27750, 250, '14-17 hari', 'sejak kapal berangkat'),
(642, 'JAKARTA - KEPULAUAN RIAU', 'Tanjung Pala', 18500, 27750, 250, '14-17 hari', 'sejak kapal berangkat'),
(643, 'JAKARTA - KEPULAUAN RIAU', 'Tapau', 18500, 27750, 250, '14-17 hari', 'sejak kapal berangkat'),
(644, 'JAKARTA - KEPULAUAN RIAU', 'Teluk Buton', 18500, 27750, 250, '14-17 hari', 'sejak kapal berangkat'),
(645, 'JAKARTA - KEPULAUAN RIAU', 'Teluk Labuh', 18500, 27750, 250, '14-17 hari', 'sejak kapal berangkat'),
(646, 'JAKARTA - KEPULAUAN RIAU', 'Ranai (dalam kota)', 12000, 18000, 250, '8-12 hari', 'sejak kapal berangkat'),
(647, 'JAKARTA - KEPULAUAN RIAU', 'Air Lengit', 18500, 27750, 250, '14-17 hari', 'sejak kapal berangkat'),
(648, 'JAKARTA - KEPULAUAN RIAU', 'Air Payang', 18500, 27750, 250, '14-17 hari', 'sejak kapal berangkat'),
(649, 'JAKARTA - KEPULAUAN RIAU', 'Bandarsyah', 18500, 27750, 250, '14-17 hari', 'sejak kapal berangkat'),
(650, 'JAKARTA - KEPULAUAN RIAU', 'Batu Gajah', 18500, 27750, 250, '14-17 hari', 'sejak kapal berangkat'),
(651, 'JAKARTA - KEPULAUAN RIAU', 'Belakang Gunung', 18500, 27750, 250, '14-17 hari', 'sejak kapal berangkat'),
(652, 'JAKARTA - KEPULAUAN RIAU', 'Cemaga', 18500, 27750, 250, '14-17 hari', 'sejak kapal berangkat'),
(653, 'JAKARTA - KEPULAUAN RIAU', 'Cemaga Selatan', 18500, 27750, 250, '14-17 hari', 'sejak kapal berangkat'),
(654, 'JAKARTA - KEPULAUAN RIAU', 'Cemaga Utara', 18500, 27750, 250, '14-17 hari', 'sejak kapal berangkat'),
(655, 'JAKARTA - KEPULAUAN RIAU', 'Ceruk', 18500, 27750, 250, '14-17 hari', 'sejak kapal berangkat'),
(656, 'JAKARTA - KEPULAUAN RIAU', 'Harapan Jaya', 18500, 27750, 250, '14-17 hari', 'sejak kapal berangkat'),
(657, 'JAKARTA - KEPULAUAN RIAU', 'Kadur', 18500, 27750, 250, '14-17 hari', 'sejak kapal berangkat'),
(658, 'JAKARTA - KEPULAUAN RIAU', 'Kelanga', 18500, 27750, 250, '14-17 hari', 'sejak kapal berangkat'),
(659, 'JAKARTA - KEPULAUAN RIAU', 'Kelarik', 18500, 27750, 250, '14-17 hari', 'sejak kapal berangkat'),
(660, 'JAKARTA - KEPULAUAN RIAU', 'Kelarik Air Mali', 18500, 27750, 250, '14-17 hari', 'sejak kapal berangkat'),
(661, 'JAKARTA - KEPULAUAN RIAU', 'Kelarik Barat', 18500, 27750, 250, '14-17 hari', 'sejak kapal berangkat'),
(662, 'JAKARTA - KEPULAUAN RIAU', 'Kelarik Utara', 18500, 27750, 250, '14-17 hari', 'sejak kapal berangkat'),
(663, 'JAKARTA - KEPULAUAN RIAU', 'Limau Manis', 18500, 27750, 250, '14-17 hari', 'sejak kapal berangkat'),
(664, 'JAKARTA - KEPULAUAN RIAU', 'Pengadah', 18500, 27750, 250, '14-17 hari', 'sejak kapal berangkat'),
(665, 'JAKARTA - KEPULAUAN RIAU', 'Pulau Tiga', 18500, 27750, 250, '14-17 hari', 'sejak kapal berangkat'),
(666, 'JAKARTA - KEPULAUAN RIAU', 'Ranai Darat', 18500, 27750, 250, '14-17 hari', 'sejak kapal berangkat'),
(667, 'JAKARTA - KEPULAUAN RIAU', 'Ranai Kota', 18500, 27750, 250, '14-17 hari', 'sejak kapal berangkat'),
(668, 'JAKARTA - KEPULAUAN RIAU', 'Sabang Mawang', 18500, 27750, 250, '14-17 hari', 'sejak kapal berangkat'),
(669, 'JAKARTA - KEPULAUAN RIAU', 'Sabang Mawang Bara', 18500, 27750, 250, '14-17 hari', 'sejak kapal berangkat'),
(670, 'JAKARTA - KEPULAUAN RIAU', 'Sebadai Hulu', 18500, 27750, 250, '14-17 hari', 'sejak kapal berangkat'),
(671, 'JAKARTA - KEPULAUAN RIAU', 'Air Asuk', 37000, 55500, 250, '14-17 hari', 'sejak kapal berangkat'),
(672, 'JAKARTA - KEPULAUAN RIAU', 'Air Sena', 37000, 55500, 250, '14-17 hari', 'sejak kapal berangkat'),
(673, 'JAKARTA - KEPULAUAN RIAU', 'Bayat', 37000, 55500, 250, '14-17 hari', 'sejak kapal berangkat'),
(674, 'JAKARTA - KEPULAUAN RIAU', 'Ladan', 37000, 55500, 250, '14-17 hari', 'sejak kapal berangkat'),
(675, 'JAKARTA - KEPULAUAN RIAU', 'Mubur', 37000, 55500, 250, '14-17 Hari', 'sejak kapal berangkat'),
(676, 'JAKARTA - KEPULAUAN RIAU', 'Payalaman', 37000, 55500, 250, '14-17 hari', 'sejak kapal berangkat'),
(677, 'JAKARTA - KEPULAUAN RIAU', 'Putik', 37000, 55500, 250, '14-17 hari', 'sejak kapal berangkat'),
(678, 'JAKARTA - KEPULAUAN RIAU', 'Tebang', 37000, 55500, 250, '14-17 hari', 'sejak kapal berangkat'),
(679, 'JAKARTA - KEPULAUAN RIAU', 'Teluk Siantan', 37000, 55500, 250, '14-17 hari', 'sejak kapal berangkat'),
(680, 'JAKARTA - BANGKA BELITUNG', 'Bukit Intan', 5000, 7500, 100, '6-10 hari', 'sejak kapal berangkat'),
(681, 'JAKARTA - BANGKA BELITUNG', 'Rangkui', 5000, 7500, 100, '6-10 hari', 'sejak kapal berangkat'),
(682, 'JAKARTA - BANGKA BELITUNG', 'Pangkal Balam', 5000, 7500, 100, '6-10 hari', 'sejak kapal berangkat'),
(683, 'JAKARTA - BANGKA BELITUNG', 'Gerunggang', 6000, 9000, 100, '6-10 hari', 'sejak kapal berangkat'),
(684, 'JAKARTA - BANGKA BELITUNG', 'Taman Sari', 6500, 9750, 100, '6-10 hari', 'sejak kapal berangkat'),
(685, 'JAKARTA - BANGKA BELITUNG', 'Sungai Liat', 8500, 12750, 100, '10-14 hari', 'sejak kapal berangkat'),
(686, 'JAKARTA - BANGKA BELITUNG', 'Toboali', 9000, 13500, 100, '10-14 hari', 'sejak kapal berangkat'),
(687, 'JAKARTA - BANGKA BELITUNG', 'Muntok', 9500, 14250, 100, '10-14 hari', 'sejak kapal berangkat'),
(688, 'JAKARTA - BANGKA BELITUNG', 'Belinyu', 9500, 14250, 200, '10-14 hari', 'sejak kapal berangkat'),
(689, 'JAKARTA - BANGKA BELITUNG', 'Riau Silip', 9500, 14250, 200, '10-14 hari', 'sejak kapal berangkat'),
(690, 'JAKARTA - BANGKA BELITUNG', 'Jebus', 9500, 14250, 200, '10-14 hari', 'sejak kapal berangkat'),
(691, 'JAKARTA - BANGKA BELITUNG', 'Koba', 9500, 14250, 200, '10-14 hari', 'sejak kapal berangkat'),
(692, 'JAKARTA - BANGKA BELITUNG', 'Pangkalan Baru', 9500, 14250, 200, '10-14 hari', 'sejak kapal berangkat'),
(693, 'JAKARTA - BANGKA BELITUNG', 'Simpang Katis', 9500, 14250, 200, '10-14 hari', 'sejak kapal berangkat'),
(694, 'JAKARTA - BANGKA BELITUNG', 'Sungai Selan', 11000, 16500, 200, '10-14 hari', 'sejak kapal berangkat'),
(695, 'JAKARTA - BANGKA BELITUNG', 'Air Gegas', 11000, 16500, 200, '10-14 hari', 'sejak kapal berangkat'),
(696, 'JAKARTA - BANGKA BELITUNG', 'Lepar Pongok', 35000, 52500, 300, '10-14 hari', 'sejak kapal berangkat'),
(697, 'JAKARTA - BANGKA BELITUNG', 'Sadai', 25000, 37500, 300, '10-14 hari', 'sejak kapal berangkat'),
(698, 'JAKARTA - BANGKA BELITUNG', 'Tukak', 25000, 37500, 300, '10-14 hari', 'sejak kapal berangkat'),
(699, 'JAKARTA - BANGKA BELITUNG', 'Celagen', 35000, 52500, 300, '10-14 hari', 'sejak kapal berangkat'),
(700, 'JAKARTA - BANGKA BELITUNG', 'Pulau Tinggi', 30000, 45000, 300, '10-14 hari', 'sejak kapal berangkat'),
(701, 'JAKARTA - BANGKA BELITUNG', 'Pulau Panjang', 30000, 45000, 300, '10-14 hari', 'sejak kapal berangkat'),
(702, 'JAKARTA - BANGKA BELITUNG', 'Kurau', 9500, 14250, 150, '10-14 hari', 'sejak kapal berangkat'),
(703, 'JAKARTA - BANGKA BELITUNG', 'Pantai Pasir Padi', 8500, 12750, 200, '10-14 hari', 'sejak kapal berangkat'),
(704, 'JAKARTA - BANGKA BELITUNG', 'Kelapa', 9500, 14250, 200, '10-14 hari', 'sejak kapal berangkat'),
(705, 'JAKARTA - BANGKA BELITUNG', 'Simpang Teritip', 9500, 14250, 200, '10-14 hari', 'sejak kapal berangkat'),
(706, 'JAKARTA - BANGKA BELITUNG', 'Simpang Rimba', 11000, 16500, 200, '10-14 hari', 'sejak kapal berangkat'),
(707, 'JAKARTA - BANGKA BELITUNG', 'Payung', 11000, 16500, 200, '10-14 hari', 'sejak kapal berangkat'),
(708, 'JAKARTA - BANGKA BELITUNG', 'Tanjung Pandan', 3500, 5250, 100, '6-10 hari', 'sejak kapal berangkat'),
(709, 'JAKARTA - BANGKA BELITUNG', 'Manggar', 5500, 8250, 100, '6-15 hari', 'sejak kapal berangkat'),
(710, 'JAKARTA - BANGKA BELITUNG', 'Selat Nasik', 11000, 16500, 100, '6-15 hari', 'sejak kapal berangkat'),
(0, '', '', 0, 0, 0, '', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tarif_dimensi`
--

CREATE TABLE `tarif_dimensi` (
  `id` int(11) NOT NULL,
  `kelompok` varchar(50) DEFAULT NULL,
  `tujuan` varchar(50) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL,
  `minimal` int(11) DEFAULT NULL,
  `lead_time` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tarif_tirex`
--

CREATE TABLE `tarif_tirex` (
  `id` int(11) NOT NULL,
  `kelompok` varchar(50) DEFAULT NULL,
  `kota` varchar(50) DEFAULT NULL,
  `kode_kota` varchar(5) DEFAULT NULL,
  `tarif` int(11) DEFAULT NULL,
  `minimal` int(2) DEFAULT NULL,
  `lead_time` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tarif_tirex`
--

INSERT INTO `tarif_tirex` (`id`, `kelompok`, `kota`, `kode_kota`, `tarif`, `minimal`, `lead_time`) VALUES
(1, '1', 'BANDA ACEH', 'BAH', 10000, 10, '6-May'),
(2, '1', 'KOTAJANTHO', 'KJT', 21500, 30, '6-May'),
(3, '1', 'CALANG', 'CLG', 20000, 30, '6-May'),
(4, '1', 'LANGSA', 'LGS', 20000, 30, '6-May'),
(5, '1', 'LHOKSEUMAWE', 'LSW', 20000, 30, '6-May'),
(6, '1', 'LHOKSUKON', 'LSK', 23000, 30, '6-May'),
(7, '1', 'KUALASIMPANG', 'KLS', 20000, 30, '6-May'),
(8, '1', 'SIGLI', 'SGL', 22000, 30, '6-May'),
(9, '1', 'BIREUEN', 'BRNN', 20000, 30, '6-May'),
(10, '1', 'SABANG', 'SAB', 30000, 30, '6-May'),
(11, '1', 'MEULABOH', 'MLH', 20000, 30, '5-Apr'),
(12, '1', 'TAKENGON', 'TKGN', 25000, 30, '6-May'),
(13, '1', 'SUKA MAKMUR', 'SKM', 25000, 30, '6-May'),
(14, '1', 'BLANGPIDIE', 'BLP', 23000, 30, '6-May'),
(15, '1', 'KUTACANE', 'KTNE', 21500, 30, '6-May'),
(16, '1', 'BLANG KEJEREN', 'BKJ', 26000, 30, '7-Jun'),
(17, '1', 'TAPAK TUAN', 'TPT', 23000, 30, '7-Jun'),
(18, '1', 'SINGKIL', 'SKL', 25000, 30, '7-Jun'),
(19, '1', 'SUBULUSSALAM', 'SBM', 25000, 30, '7-Jun'),
(20, '1', 'SINABANG', 'SNB', 52000, 30, '24-25'),
(21, '34', 'MEDAN', 'MES', 8000, 10, '4-Mar'),
(22, '34', 'BINJAI', 'BJI', 14000, 30, '5-Apr'),
(23, '34', 'STABAT', 'STB', 13500, 30, '5-Apr'),
(24, '34', 'LANGKAT', 'LKT', 15000, 30, '5-Apr'),
(25, '34', 'PANGKALAN SUSU', 'PKS', 16000, 30, '6-May'),
(26, '34', 'BERASTAGI', 'BST', 16000, 30, '6-May'),
(27, '34', 'KABAN JAHE', 'KJH', 16000, 30, '6-May'),
(28, '34', 'SIDIKALANG', 'SDG', 17000, 30, '7-Jun'),
(29, '34', 'PAKPAK', 'PPK', 17000, 30, '7-Jun'),
(30, '34', 'DOLOK SANGGUL', 'DSG', 18000, 30, '7-Jun'),
(31, '34', 'PULAU SAMOSIR', 'PSIR', 18000, 30, '7-Jun'),
(32, '34', 'PEMATANG SIANTAR', 'PST', 13000, 30, '4-Mar'),
(33, '34', 'PERDAGANGAN', 'PDGN', 14000, 30, '5-Apr'),
(34, '34', 'KISARAN', 'KSR', 13000, 30, '4-Mar'),
(35, '34', 'TANJUNG BALAI ASAHAN', 'TBAN', 15000, 30, '5-Apr'),
(36, '34', 'BATUBARA', 'BTB', 15000, 30, '5-Apr'),
(37, '34', 'RANTAU PRAPAT', 'RPT', 13000, 30, '4-Mar'),
(38, '34', 'AEK NABARA', 'ANB', 14000, 30, '4-Mar'),
(39, '34', 'KOTA PINANG', 'KPG', 16000, 30, '5-Apr'),
(40, '34', 'SIBOLGA', 'SBGA', 15000, 30, '4-Mar'),
(41, '34', 'TARUTUNG', 'TRT', 17000, 30, '5-Apr'),
(42, '34', 'GUNUNG SITOLI', 'GST', 22000, 30, '7-Jun'),
(43, '34', 'TELUK DALAM', 'TDM', 26500, 30, '7-Jun'),
(44, '34', 'PADANG SIDEMPUAN', 'PSP', 16000, 30, '4-Mar'),
(45, '34', 'BATANG TORU', 'BTTU', 21000, 30, '5-Apr'),
(46, '34', 'PANYABUNGAN', 'PYB', 20000, 30, '6-May'),
(47, '34', 'NATAL', 'NTL', 19000, 30, '7-Jun'),
(48, '34', 'LUBUK PAKAM', 'LPK', 14000, 30, '6-May'),
(49, '34', 'TEBING TINGGI', 'TTM', 13000, 30, '6-May'),
(50, '34', 'BALIGE', 'BLGE', 16000, 30, '6-May'),
(51, '34', 'PORSEA', 'PREA', 16000, 30, '6-May'),
(52, '26', 'PEKANBARU', 'PKU', 7500, 10, '4-Mar'),
(53, '26', 'PANGKALAN KERINCI', 'PKC', 10000, 30, '4-Mar'),
(54, '26', 'RENGAT', 'RGT', 10000, 30, '4-Mar'),
(55, '26', 'UKUI', 'UKI', 10000, 30, '4-Mar'),
(56, '26', 'LIRIK', 'LRK', 10000, 30, '4-Mar'),
(57, '26', 'PEMATANG REBA', 'PTRA', 10000, 30, '4-Mar'),
(58, '26', 'SEBERIDA', 'SBD', 10000, 30, '4-Mar'),
(59, '26', 'BELILAS', 'BLLS', 10000, 30, '4-Mar'),
(60, '26', 'AIR MOLEK', 'AMK', 10000, 30, '4-Mar'),
(61, '26', 'TALUK KUANTAN', 'TLK', 12000, 30, '4-Mar'),
(62, '26', 'LIPAT KAIN', 'LKN', 11000, 30, '4-Mar'),
(63, '26', 'SOREK', 'SRK', 10000, 30, '4-Mar'),
(64, '26', 'TEMBILAHAN', 'TBH', 12000, 30, '4-Mar'),
(65, '26', 'SIAK', 'SIK', 12000, 30, '4-Mar'),
(66, '26', 'MINAS', 'MNS', 10000, 30, '4-Mar'),
(67, '26', 'PERAWANG', 'PRW', 12000, 30, '4-Mar'),
(68, '26', 'BANGKINANG', 'BKN', 11000, 30, '4-Mar'),
(69, '26', 'UJUNG BATU', 'UJB', 12000, 30, '4-Mar'),
(70, '26', 'PASIR PANGARAIAN', 'PPR', 12000, 30, '4-Mar'),
(71, '26', 'KANDIS', 'KND', 11000, 30, '4-Mar'),
(72, '26', 'DURI', 'DRI', 12000, 30, '4-Mar'),
(73, '26', 'BENGKALIS', 'BKLS', 13000, 30, '4-Mar'),
(74, '26', 'SUNGAI PAKNING', 'SPK', 14000, 30, '4-Mar'),
(75, '26', 'SELAT PANJANG', 'SPJ', 20000, 30, '7-Jun'),
(76, '26', 'DUMAI', 'DMI', 12000, 30, '4-Mar'),
(77, '26', 'UJUNG TANJUNG', 'UTJ', 12500, 30, '4-Mar'),
(78, '26', 'BAGAN BATU', 'BB', 12000, 30, '4-Mar'),
(79, '26', 'BAGAN SIAPI API', 'BAA', 12000, 30, '4-Mar'),
(80, '32', 'PADANG', 'PDG', 8000, 10, '4-Mar'),
(81, '32', 'BUKIT TINGGI', 'BKTI', 12000, 30, '4-Mar'),
(82, '32', 'PARIAMAN', 'PRM', 12000, 30, '4-Mar'),
(83, '32', 'PAYAKUMBUH', 'PYK', 12000, 30, '4-Mar'),
(84, '32', 'PADANG PANJANG', 'PPJG', 12000, 30, '4-Mar'),
(85, '32', 'BATU SANGKAR', 'BTS', 12000, 30, '4-Mar'),
(86, '32', 'SIJUNJUNG', 'SJJ', 12000, 30, '4-Mar'),
(87, '32', 'DAMASRAYA', 'DMS', 12000, 30, '4-Mar'),
(88, '32', 'PULAU PUNJUNG', 'PPJ', 12500, 30, '4-Mar'),
(89, '32', 'PULAU MENTAWAI', 'PMT', 17000, 30, '6-May'),
(90, '32', 'KOTOBARU', 'KBU', 12000, 30, '4-Mar'),
(91, '32', 'SUNGAI DAREH', 'SDR', 12000, 30, '4-Mar'),
(92, '32', 'SUNGAI RUMBAI', 'SRB', 12000, 30, '4-Mar'),
(93, '32', 'SIMPANG EMPAT', 'SEP', 12000, 30, '4-Mar'),
(94, '32', 'LUBUK BASUNG', 'LBSG', 12000, 30, '4-Mar'),
(95, '32', 'UJUNG GADING', 'UGD', 12000, 30, '4-Mar'),
(96, '32', 'PAINAN', 'PAN', 12000, 30, '4-Mar'),
(97, '32', 'SOLOK', 'SLK', 12000, 30, '4-Mar'),
(98, '32', 'LUBUK SIKAPING', 'LBS', 12000, 30, '4-Mar'),
(99, '32', 'PASAMAN', 'PSM', 12000, 30, '4-Mar'),
(100, '4', 'BENGKULU', 'BKU', 7000, 10, '4-Mar'),
(101, '4', 'CURUP', 'CRP', 13000, 30, '5-Apr'),
(102, '4', 'KEPAHIANG', 'KPH', 15000, 30, '5-Apr'),
(103, '4', 'REJANG LEBONG', 'RJL', 15000, 30, '5-Apr'),
(104, '4', 'LEBONG', 'LBG', 15000, 30, '5-Apr'),
(105, '4', 'ARGA MAKMUR', 'AGM', 15000, 30, '5-Apr'),
(106, '4', 'PUTRI HIJAU', 'PRH', 15000, 30, '5-Apr'),
(107, '4', 'LAIS', 'LS', 15000, 30, '5-Apr'),
(108, '4', 'KENARI', 'KNR', 15000, 30, '5-Apr'),
(109, '4', 'AIR MURING', 'ARM', 15000, 30, '5-Apr'),
(110, '4', 'KETAUN', 'KTN', 15000, 30, '5-Apr'),
(111, '4', 'SELUMA', 'SLMA', 15000, 30, '5-Apr'),
(112, '4', 'MUKOMUKO', 'MKK', 16500, 30, '6-May'),
(113, '4', 'IPUH', 'IPH', 16500, 30, '6-May'),
(114, '4', 'MANNA', 'MNN', 16500, 30, '6-May'),
(115, '4', 'KAUR', 'KR', 16500, 30, '6-May'),
(116, '4', 'TANJUNG KEMUNING', 'TJK', 16500, 30, '6-May'),
(117, '8', 'JAMBI', 'DJB', 7000, 10, '3-Feb'),
(118, '8', 'SAROLANGUN', 'SLGN', 11000, 30, '3-Feb'),
(119, '8', 'MUARA BULIAN', 'MBL', 12500, 30, '5-Apr'),
(120, '8', 'BANGKO', 'BKO', 11000, 30, '3-Feb'),
(121, '8', 'MERANGIN', 'MRG', 14000, 30, '5-Apr'),
(122, '8', 'MUARO BUNGO', 'MBO', 10000, 30, '3-Feb'),
(123, '8', 'MUARO TEBO', 'MTB', 12000, 30, '4-Mar'),
(124, '8', 'RIMBOBUJANG', 'RBJ', 11000, 30, '4-Mar'),
(125, '8', 'KUAMANG KUNING', 'KMK', 12000, 30, '4-Mar'),
(126, '8', 'KERINCI / SUNGAI PENUH', 'SPH', 12000, 30, '4-Mar'),
(127, '8', 'MUARA RUPIT', 'MRPT', 11000, 30, '3-Feb'),
(128, '8', 'SINGKUT', 'SKT', 11000, 30, '5-Apr'),
(129, '8', 'PAMENANG', 'PMGJ', 11000, 30, '5-Apr'),
(130, '8', 'TEMBESI', 'TMBI', 11000, 30, '5-Apr'),
(131, '8', 'SUNGAI RENGAT', 'SRT', 11000, 30, '5-Apr'),
(132, '8', 'TEBING TINGGI/WKS', 'WKS', 12000, 30, '5-Apr'),
(133, '8', 'MUARO JAMBI/S BAHAR', 'SBR', 12000, 30, '5-Apr'),
(134, '8', 'SENGETI', 'SGTI', 12500, 30, '5-Apr'),
(135, '8', 'KUALA TUNGKAL', 'KTL', 13500, 30, '6-May'),
(136, '8', 'TANJUNG JABUNG', 'TJB', 12000, 30, '5-Apr'),
(137, '8', 'MUARA SABAK', 'MSB', 13500, 30, '6-May'),
(138, '33', 'PALEMBANG', 'PLM', 6500, 10, '3-Feb'),
(139, '33', 'MARIANA', 'MRN', 11000, 30, '4-Mar'),
(140, '33', 'INTIRUP', 'INT', 11000, 30, '4-Mar'),
(141, '33', 'SUNGAI GERONG', 'SGRG', 11000, 30, '4-Mar'),
(142, '33', 'P BORANG', 'PBR', 11000, 30, '4-Mar'),
(143, '33', 'KARYA JAYA', 'KRJ', 11000, 30, '4-Mar'),
(144, '33', 'PANGKALAN BALAI', 'PKBI', 13500, 30, '4-Mar'),
(145, '33', 'BETUNG', 'BET', 13500, 30, '4-Mar'),
(146, '33', 'SUNGAI LILIN', 'SLL', 13500, 30, '4-Mar'),
(147, '33', 'BAYUNG LINCIR', 'BLC', 16000, 30, '4-Mar'),
(148, '33', 'SEKAYU', 'SKY', 13500, 30, '4-Mar'),
(149, '33', 'BABAT TOMAN', 'BTN', 16000, 30, '4-Mar'),
(150, '33', 'INDRALAYA', 'INL', 12000, 30, '4-Mar'),
(151, '33', 'KAYU AGUNG', 'KYA', 13500, 30, '4-Mar'),
(152, '33', 'TUGU MULYO', 'TML', 14000, 30, '4-Mar'),
(153, '33', 'BELITANG', 'BLTG', 17000, 30, '4-Mar'),
(154, '33', 'PRABUMULIH', 'PRB', 10000, 30, '4-Mar'),
(155, '33', 'MUARA ENIM', 'MEM', 9000, 30, '3-Feb'),
(156, '33', 'PENDOPO/TALANG UBI', 'PDP', 22000, 30, '4-Mar'),
(157, '33', 'RAMBANG DANGKU', 'RBD', 22000, 30, '4-Mar'),
(158, '33', 'TANJUNG ENIM', 'THE', 9000, 30, '3-Feb'),
(159, '33', 'BATU RAJA', 'BTR', 9000, 30, '3-Feb'),
(160, '33', 'MARTAPURA', 'MRPA', 9000, 30, '4-Mar'),
(161, '33', 'LAHAT', 'LHT', 9000, 30, '3-Feb'),
(162, '33', 'PAGAR ALAM', 'PGA', 18500, 30, '5-Apr'),
(163, '33', 'TEBING TINGGI', 'TTP', 9000, 30, '3-Feb'),
(164, '33', 'LUBUK LINGGAU', 'LLG', 9000, 30, '3-Feb'),
(165, '19', 'LAMPUNG', 'TGK', 5500, 10, '2-Jan'),
(166, '19', 'BANDAR JAYA', 'BDJA', 11000, 30, '4-Mar'),
(167, '19', 'KOTA BUMI', 'KTBI', 11000, 30, '3-Feb'),
(168, '19', 'METRO', 'MTR', 10000, 30, '4-Mar'),
(169, '19', 'KALIANDA', 'KLD', 13500, 30, '4-Mar'),
(170, '19', 'PESAWARAN', 'PSW', 12000, 30, '4-Mar'),
(171, '19', 'GEDONG TATAAN', 'GTT', 12000, 30, '4-Mar'),
(172, '19', 'TENGGAMUS', 'TGM', 14000, 30, '5-Apr'),
(173, '19', 'GADING REJO', 'GDR', 14000, 30, '5-Apr'),
(174, '19', 'GISTING', 'GST', 14000, 30, '5-Apr'),
(175, '19', 'TALANG PADANG', 'TLP', 14000, 30, '5-Apr'),
(176, '19', 'PRING SEWU', 'PRS', 12500, 30, '4-Mar'),
(177, '19', 'LIWA', 'LWA', 16000, 30, '5-Apr'),
(178, '19', 'KRUI', 'KRI', 16000, 30, '5-Apr'),
(179, '19', 'NATAR', 'NTR', 13500, 30, '5-Apr'),
(180, '19', 'RAJABASA', 'RJB', 13500, 30, '5-Apr'),
(181, '19', 'SIDOMULYO', 'SDM', 13500, 30, '5-Apr'),
(182, '19', 'GUNUNG SUGIH', 'GSG', 13500, 30, '5-Apr'),
(183, '19', 'KALIREJO ', 'KRJO', 13500, 30, '5-Apr'),
(184, '19', 'KOTA GAJAH ', 'KGJ', 13500, 30, '5-Apr'),
(185, '19', 'SUKADANA', 'SKD', 12500, 30, '5-Apr'),
(186, '19', 'WAY KANAN', 'WKN', 12500, 30, '5-Apr'),
(187, '19', 'WAY JEPARA', 'WJP', 12500, 30, '5-Apr'),
(188, '19', 'TULANG BAWANG', 'TBW', 12500, 30, '5-Apr'),
(189, '19', 'MESUJI', 'MSJ', 12500, 30, '5-Apr'),
(190, '9', 'BANDUNG', 'BDO', 5000, 10, '2-Jan'),
(191, '9', 'CIMAHI', 'CMI', 5000, 30, '2-Jan'),
(192, '9', 'CILEUNYI', 'CLI', 5000, 30, '2-Jan'),
(193, '9', 'MAJALAYA', 'MJL', 5000, 30, '2-Jan'),
(194, '9', 'SUBANG', 'SBG', 7000, 30, '3-Feb'),
(195, '9', 'SUMEDANG', 'SDNG', 9000, 30, '3-Feb'),
(196, '9', 'GARUT', 'GRT', 9000, 30, '3-Feb'),
(197, '9', 'TASIKMALAYA', 'TSK', 9000, 30, '3-Feb'),
(198, '9', 'CIASEM', 'CSM', 9000, 30, '3-Feb'),
(199, '9', 'PAMANUKAN', 'PMN', 9000, 30, '3-Feb'),
(200, '9', 'PATROL', 'PTL', 9000, 30, '3-Feb'),
(201, '9', 'INDRAMAYU', 'IDY', 9000, 30, '3-Feb'),
(202, '9', 'BALONGAN', 'BLG', 9000, 30, '3-Feb'),
(203, '9', 'CIAMIS', 'CMS', 9000, 30, '3-Feb'),
(204, '9', 'BANJARAN', 'BJRN', 9500, 30, '3-Feb'),
(205, '9', 'MAJALENGKA', 'MJK', 8000, 30, '3-Feb'),
(206, '9', 'KUNINGAN', 'KNG', 9500, 30, '3-Feb'),
(207, '9', 'CIREBON', 'CRBN', 5000, 10, '2-Jan'),
(208, '9', 'SUMBER', 'SMB', 5000, 30, '2-Jan'),
(209, '9', 'PALIMANAN', 'PLMN', 8000, 30, '2-Jan'),
(210, '9', 'GEBANG', 'GBG', 5000, 30, '2-Jan'),
(211, '9', 'LOSARI', 'LSR', 7000, 30, '2-Jan'),
(212, '10', 'TEGAL', 'TGL', 5000, 10, '2-Jan'),
(213, '10', 'SLAWI', 'SLW', 8000, 30, '3-Feb'),
(214, '10', 'BREBES', 'BBS', 8000, 30, '3-Feb'),
(215, '10', 'BUMIJAWA GUCI', 'BMJ', 8000, 30, '3-Feb'),
(216, '10', 'PEKALONGAN', 'PKL', 5000, 10, '2-Jan'),
(217, '10', 'BATANG', 'BTG', 7000, 30, '3-Feb'),
(218, '10', 'PEMALANG', 'PMG', 8000, 30, '3-Feb'),
(219, '10', 'PURWOKERTO', 'PWO', 5000, 10, '2-Jan'),
(220, '10', 'BANYUMAS', 'BYM', 9000, 30, '3-Feb'),
(221, '10', 'SUMPYUH', 'SPY', 9000, 30, '3-Feb'),
(222, '10', 'AJIBARANG', 'AJB', 9000, 30, '3-Feb'),
(223, '10', 'WANGON', 'WGN', 9000, 30, '3-Feb'),
(224, '10', 'BATURADEN', 'BRN', 9000, 30, '3-Feb'),
(225, '10', 'PURBALINGGA', 'PBG', 9000, 30, '3-Feb'),
(226, '10', 'BUMIAYU', 'BMA', 9500, 30, '3-Feb'),
(227, '10', 'CILACAP', 'CLP', 9000, 30, '3-Feb'),
(228, '10', 'MAJENANG', 'MJG', 10000, 30, '3-Feb'),
(229, '10', 'SAMPANG', 'SPNG', 11000, 30, '3-Feb'),
(230, '10', 'BANJARNEGARA', 'BJR', 11000, 30, '3-Feb'),
(231, '10', 'WONOSOBO', 'WSB', 11000, 30, '4-Mar'),
(232, '10', 'KEBUMEN', 'KBM', 7000, 10, '3-Feb'),
(233, '10', 'GOMBONG', 'GMB', 8000, 30, '3-Feb'),
(234, '10', 'TAMBAK', 'TBK', 8000, 30, '3-Feb'),
(235, '10', 'KUTOARJO', 'KTJ', 8000, 30, '3-Feb'),
(236, '10', 'GRABAG', 'GRBG', 9000, 30, '3-Feb'),
(237, '10', 'MAGELANG', 'MGL', 9000, 10, '3-Feb'),
(238, '10', 'MUNTILAN', 'MTL', 8000, 30, '3-Feb'),
(239, '10', 'BOROBUDUR', 'BRB', 8000, 30, '3-Feb'),
(240, '10', 'SECANG', 'SCG', 8000, 30, '3-Feb'),
(241, '10', 'SALAM', 'SLM', 9000, 30, '3-Feb'),
(242, '10', 'TEMANGGUNG', 'TMG', 9000, 30, '3-Feb'),
(243, '10', 'PURWOREJO', 'PWR', 9000, 30, '3-Feb'),
(244, '5', 'YOGYAKARTA', 'JOG', 5000, 10, '2-Jan'),
(245, '5', 'SLEMAN', 'SLMN', 8000, 10, '3-Feb'),
(246, '5', 'BANTUL', 'BTL', 7000, 30, '3-Feb'),
(247, '5', 'KULON PROGO', 'KPR', 9500, 30, '4-Mar'),
(248, '5', 'WATES', 'WTS', 9500, 30, '4-Mar'),
(249, '5', 'TEMON', 'TMN', 10000, 30, '4-Mar'),
(250, '5', 'SAMIGALUH', 'SGH', 10000, 30, '4-Mar'),
(251, '5', 'GUNUNG KIDUL', 'GKD', 10000, 30, '5-Apr'),
(252, '5', 'WONOSARI', 'WNS', 9500, 30, '5-Apr'),
(253, '5', 'PRAMBANAN', 'PBN', 9000, 30, '4-Mar'),
(254, '10', 'SOLO', 'SOC', 5000, 10, '2-Jan'),
(255, '10', 'BOYOLALI', 'BYL', 7000, 30, '3-Feb'),
(256, '10', 'KARANGANYAR', 'KRA', 7000, 30, '3-Feb'),
(257, '10', 'KLATEN', 'KLT', 8000, 30, '3-Feb'),
(258, '10', 'SRAGEN', 'SGN', 7800, 30, '3-Feb'),
(259, '10', 'SUKOHARJO', 'SKJ', 7000, 30, '3-Feb'),
(260, '10', 'WONOGIRI', 'WNG', 8000, 30, '3-Feb'),
(261, '10', 'SEMARANG', 'SRG', 5000, 10, '2-Jan'),
(262, '10', 'UNGARAN', 'UGR', 7000, 30, '3-Feb'),
(263, '10', 'BAWEN', 'BWN', 7000, 30, '3-Feb'),
(264, '10', 'AMBARAWA', 'ABW', 7000, 30, '3-Feb'),
(265, '10', 'KENDAL', 'KDL', 9000, 30, '3-Feb'),
(266, '10', 'SALATIGA', 'STG', 8000, 30, '3-Feb'),
(267, '10', 'TENGARAN', 'TRN', 9000, 30, '3-Feb'),
(268, '10', 'DEMAK', 'DMK', 9000, 30, '3-Feb'),
(269, '10', 'KUDUS', 'KDS', 8000, 10, '2-Jan'),
(270, '10', 'PATI', 'PTI', 8000, 30, '3-Feb'),
(271, '10', 'JEPARA', 'JPR', 8000, 30, '3-Feb'),
(272, '10', 'JUWANA', 'JWA', 8000, 30, '3-Feb'),
(273, '10', 'REMBANG', 'RBG', 9000, 30, '4-Mar'),
(274, '10', 'LASEM', 'LSM', 9000, 30, '4-Mar'),
(275, '10', 'GROBOGAN', 'GRBN', 8000, 30, '3-Feb'),
(276, '10', 'PURWODADI', 'PWDK', 8000, 30, '3-Feb'),
(277, '11', 'MADIUN', 'MAD', 9500, 30, '3-Feb'),
(278, '11', 'NGAWI', 'NGW', 11000, 30, '3-Feb'),
(279, '11', 'MAGETAN', 'MGT', 11000, 30, '3-Feb'),
(280, '11', 'PONOROGO', 'PNO', 12000, 30, '3-Feb'),
(281, '11', 'MAOSPATI', 'MPT', 10000, 30, '3-Feb'),
(282, '11', 'CARUBAN', 'CRB', 11000, 30, '3-Feb'),
(283, '11', 'SARADAN', 'SRD', 12000, 30, '3-Feb'),
(284, '11', 'PACITAN', 'PCT', 16000, 30, '5-Apr'),
(285, '', 'KEDIRI', 'KDR', 10000, 10, '3-Feb'),
(286, '', 'NGANJUK', 'NGJ', 12000, 30, '3-Feb'),
(287, '', 'TULUNGAGUNG', 'TLA', 12000, 30, '3-Feb'),
(288, '', 'TRENGGALEK', 'TRG', 12000, 30, '3-Feb'),
(289, '', 'BLITAR', 'BLTR', 12000, 30, '3-Feb'),
(290, '', 'PARE', 'PRE', 11000, 30, '3-Feb'),
(291, '', 'KANDANGAN', 'KDG', 11000, 30, '3-Feb'),
(292, '', 'JOMBANG', 'JMB', 10000, 10, '3-Feb'),
(293, '', 'MOJOKERTO', 'MJO', 10000, 30, '4-Mar'),
(294, '', 'PETERONGAN', 'PTR', 10000, 30, '4-Mar'),
(295, '', 'KERTOSONO', 'KTO', 10000, 30, '4-Mar'),
(296, '', 'BOJONEGORO', 'BJO', 10000, 10, '3-Feb'),
(297, '', 'BLORA', 'BLR', 10000, 30, '4-Mar'),
(298, '', 'CEPU', 'CPU', 10000, 30, '4-Mar'),
(299, '', 'BABAT / LMG', 'BBT', 9000, 30, '4-Mar'),
(300, '', 'TUBAN', 'TBN', 9000, 30, '3-Feb'),
(301, '', 'BRONDONG / LMG', 'BRD', 10000, 30, '4-Mar'),
(302, '', 'PACIRAN / LMG', 'PCR', 10000, 30, '4-Mar'),
(303, '', 'GRESIK', 'GRK', 9000, 30, '3-Feb'),
(304, '', 'KEDUNGPRING', 'KDP', 9000, 30, '4-Mar'),
(305, '', 'MANTUP', 'MTP', 9000, 30, '4-Mar'),
(306, '', 'KESAMBI', 'KSB', 9000, 30, '4-Mar'),
(307, '', 'LAMONGAN', 'LMGN', 10000, 30, '4-Mar'),
(308, '', 'KARANGGENENG', 'KRG', 10000, 30, '4-Mar'),
(309, '', 'LAREN', 'LRN', 10000, 30, '4-Mar'),
(310, '', 'SEKARAN', 'SKR', 10000, 30, '4-Mar'),
(311, '', 'PUCUK', 'PCK', 10000, 30, '4-Mar'),
(312, '', 'TIKUNG', 'TKG', 10000, 30, '4-Mar'),
(313, '', 'SURABAYA', 'SUB', 5000, 10, '3-Feb'),
(314, '', 'BANGKALAN', 'BKL', 12000, 30, '4-Mar'),
(315, '', 'SAMPANG', 'SPG', 12500, 30, '4-Mar'),
(316, '', 'PAMEKASAN', 'PMK', 12500, 30, '4-Mar'),
(317, '', 'SUMENEP', 'SMN', 12500, 30, '5-Apr'),
(318, '', 'SIDOARJO', 'SDA', 5000, 10, '3-Feb'),
(319, '', 'WARU', 'WRU', 9000, 30, '4-Mar'),
(320, '', 'KRIAN', 'KRN', 9000, 30, '4-Mar'),
(321, '', 'PORONG', 'PRGG', 9000, 30, '4-Mar'),
(322, '', 'JABON', 'JBN', 9000, 30, '4-Mar');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tes`
--

CREATE TABLE `tes` (
  `id` int(11) NOT NULL,
  `no_resi` varchar(50) DEFAULT NULL,
  `nama_pengirim` varchar(50) DEFAULT NULL,
  `dari` varchar(50) DEFAULT NULL,
  `alamat` varchar(50) DEFAULT NULL,
  `no_hp` int(20) DEFAULT NULL,
  `email` varchar(0) DEFAULT NULL,
  `nama_penerima` varchar(50) DEFAULT NULL,
  `tujuan` varchar(255) DEFAULT NULL,
  `alamat_penerima` varchar(50) DEFAULT NULL,
  `no_hp_penerima` int(50) DEFAULT NULL,
  `email_penerima` varchar(255) DEFAULT NULL,
  `petugas` int(11) DEFAULT NULL,
  `status_kiriman` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tes`
--

INSERT INTO `tes` (`id`, `no_resi`, `nama_pengirim`, `dari`, `alamat`, `no_hp`, `email`, `nama_penerima`, `tujuan`, `alamat_penerima`, `no_hp_penerima`, `email_penerima`, `petugas`, `status_kiriman`) VALUES
(7, NULL, '', NULL, '', 0, '', NULL, NULL, NULL, NULL, '', NULL, NULL),
(8, NULL, 'zczczcz', NULL, 'ccz', 444, '', NULL, NULL, NULL, NULL, 'wdss@yahoo.com', 1, NULL),
(9, NULL, 'zczczcz', NULL, 'ccz', 444, '', NULL, NULL, NULL, NULL, 'wdss@yahoo.com', 1, 'Proses'),
(10, NULL, 'zczczcz', 'Jakarta', 'ccz', 444, '', NULL, 'Jakarta', 'vcvcv', 3333, 'wdss@yahoo.com', 1, 'Proses'),
(11, NULL, 'zczczcz', 'Jakarta', 'ccz', 444, '', 'xzx', 'Jakarta', 'vcvcv', 3333, 'wdss@yahoo.com', 1, 'Proses'),
(12, NULL, 'zczczcz', 'Jakarta', 'ccz', 444, '', 'xzx', 'Jakarta', 'vcvcv', 3333, 'wdss@yahoo.com', 1, 'Proses'),
(13, NULL, 'asasas', 'Jakarta', 'a', 343434, '', 'xzx', 'Jakarta', 'vcvcv', 3333, 'wdss@yahoo.com', 1, 'Proses'),
(14, NULL, 'asasas', 'Jakarta', 'a', 343434, '', 'xzx', 'Jakarta', 'vcvcv', 3333, 'wdss@yahoo.com', 1, 'Proses'),
(15, NULL, 'asasas', 'Jakarta', 'ccz', 444, '', 'xzx', 'Jakarta', 'vcvcv', 3333, 'wdss@yahoo.com', 1, 'Proses'),
(16, '', 'zczczcz', 'Jakarta', 'ccz', 343434, '', 'xzx', 'Jakarta', 'vcvcv', 3333, 'wdss@yahoo.com', 1, 'Proses');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tracking`
--

CREATE TABLE `tracking` (
  `id` int(11) NOT NULL,
  `no_resi` varchar(50) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `jam` time DEFAULT NULL,
  `status` varchar(100) DEFAULT NULL,
  `keterangan` varchar(200) DEFAULT NULL,
  `ikon` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_pengiriman`
--

CREATE TABLE `transaksi_pengiriman` (
  `id_pengiriman` int(11) NOT NULL,
  `no_sttb` varchar(5) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `jumlah_titipan` int(12) NOT NULL,
  `berat` int(12) NOT NULL,
  `isi_sebenarnya` text NOT NULL,
  `discount` decimal(10,0) DEFAULT NULL,
  `biaya` decimal(10,0) NOT NULL,
  `penerima` varchar(255) NOT NULL,
  `yang_menerima` varchar(255) DEFAULT NULL,
  `alamat_penerima` text NOT NULL,
  `kontak_penerima` int(12) NOT NULL,
  `id_kota` int(11) NOT NULL,
  `kode_pos` int(12) NOT NULL,
  `id_provinsi` int(11) NOT NULL,
  `tanggal_pengiriman` date NOT NULL,
  `tanggal_penerimaan` date DEFAULT NULL,
  `status_pengiriman` enum('0','2','1','4','3') NOT NULL DEFAULT '0' COMMENT '0=Belum Dikirim, 1=Sedang Dikirim, 2=Sudah Dikirim, 3=Approve Pengiriman Barang, 4=Approve Penerimaan Barang',
  `id_petugas` int(11) NOT NULL,
  `created_by` int(11) NOT NULL,
  `created_date` datetime NOT NULL,
  `status_reject` enum('1','0') NOT NULL DEFAULT '0' COMMENT '0=Belum Reject, 1=Reject',
  `kecamatan` varchar(255) NOT NULL,
  `biaya_lba` decimal(12,0) NOT NULL DEFAULT '0',
  `status_pembayaran` enum('0','1') NOT NULL DEFAULT '0' COMMENT '0=Belum Lunas, 1=Lunas'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `cabang`
--
ALTER TABLE `cabang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `daftar_tarif`
--
ALTER TABLE `daftar_tarif`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `kurir_order`
--
ALTER TABLE `kurir_order`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `layanan`
--
ALTER TABLE `layanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `packaging`
--
ALTER TABLE `packaging`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pengiriman`
--
ALTER TABLE `pengiriman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sys_group_users`
--
ALTER TABLE `sys_group_users`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sys_menu`
--
ALTER TABLE `sys_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `sys_menu_role`
--
ALTER TABLE `sys_menu_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_sys_menu_role_sys_menu` (`id_menu`) USING BTREE,
  ADD KEY `FK_sys_menu_role_sys_users` (`group_id`) USING BTREE;

--
-- Indeks untuk tabel `sys_users`
--
ALTER TABLE `sys_users`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_sys_users_sys_group_users` (`id_group`) USING BTREE;

--
-- Indeks untuk tabel `tarif_cargo_murah`
--
ALTER TABLE `tarif_cargo_murah`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tarif_dimensi`
--
ALTER TABLE `tarif_dimensi`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tarif_tirex`
--
ALTER TABLE `tarif_tirex`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tes`
--
ALTER TABLE `tes`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tracking`
--
ALTER TABLE `tracking`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `cabang`
--
ALTER TABLE `cabang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `daftar_tarif`
--
ALTER TABLE `daftar_tarif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `kurir_order`
--
ALTER TABLE `kurir_order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `layanan`
--
ALTER TABLE `layanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `packaging`
--
ALTER TABLE `packaging`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pengiriman`
--
ALTER TABLE `pengiriman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `provinsi`
--
ALTER TABLE `provinsi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT untuk tabel `sys_group_users`
--
ALTER TABLE `sys_group_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `sys_menu`
--
ALTER TABLE `sys_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `sys_menu_role`
--
ALTER TABLE `sys_menu_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT untuk tabel `sys_users`
--
ALTER TABLE `sys_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `tarif_tirex`
--
ALTER TABLE `tarif_tirex`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=323;

--
-- AUTO_INCREMENT untuk tabel `tes`
--
ALTER TABLE `tes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
