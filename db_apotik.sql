-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 05 Des 2022 pada 08.52
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_apotik`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(1) NOT NULL,
  `admin_name` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_telp` varchar(20) NOT NULL,
  `admin_email` varchar(50) NOT NULL,
  `admin_address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_name`, `username`, `password`, `admin_telp`, `admin_email`, `admin_address`) VALUES
(2, 'Karyawan', 'admin', '21232f297a57a5a743894a0e4a801fc3', '+6287886082042', 'apotiksampang@gmail.com', 'Jl. Tugu Barat No.25, Sampang, Cilacap Regency, Central Java 53273');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_category`
--

CREATE TABLE `tb_category` (
  `category_id` int(1) NOT NULL,
  `category_name` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_category`
--

INSERT INTO `tb_category` (`category_id`, `category_name`) VALUES
(12, 'Obat Tablet'),
(13, 'Obat Cair'),
(17, 'Obat Oles'),
(18, 'Obat Tetes'),
(19, 'Obat Tempel');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_product`
--

CREATE TABLE `tb_product` (
  `product_id` int(1) NOT NULL,
  `category_id` int(1) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_description` text NOT NULL,
  `product_image` varchar(100) NOT NULL,
  `product_status` tinyint(4) NOT NULL,
  `data_created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_product`
--

INSERT INTO `tb_product` (`product_id`, `category_id`, `product_name`, `product_price`, `product_description`, `product_image`, `product_status`, `data_created`) VALUES
(16, 12, 'Mylanta Tablet', 15000, '<p>Obat Mylanta&nbsp; untuk meredakan gejala sakit maag, seperti mual atau sakit dan sakit atau perih di perut</p>\r\n', 'produk1667530068.jpg', 1, '2021-12-09 16:07:56'),
(18, 13, 'Mylanta', 20000, '<p>Obat Mylanta untuk meredakan gejala sakit maag, seperti mual atau sakit dan sakit atau perih di perut.</p>\r\n', 'produk1667530013.jpg', 1, '2021-12-09 16:21:21'),
(19, 13, 'Tolak Angin', 10000, '<p>Tolak Angin untuk dewasa</p>\r\n\r\n<p>&nbsp;</p>\r\n', 'produk1667529910.jpg', 1, '2021-12-09 16:22:41'),
(21, 12, 'Entrostop', 15000, '<p>Obat Diare Entrostop untuk dewasa</p>\r\n', 'produk1667529631.jpg', 1, '2021-12-09 16:24:48'),
(24, 13, 'OBH Combi ', 22000, '<p>untuk&nbsp;meredakan batuk disertai gejala-gejala flu seperti demam, sakit kepala, hidung tersumbat, dan bersin-bersin.</p>\r\n', 'produk1667529452.jpg', 1, '2021-12-10 12:41:46'),
(27, 17, 'Betadine', 10000, '<p>&nbsp;untuk&nbsp;mencegah pertumbuhan dan membunuh kuman penyebab infeksi</p>\r\n', 'produk1667444227.jpg', 1, '2021-12-10 15:56:59'),
(30, 12, 'Pereda nyeri', 15000, '<p>Obat untuk meredakan nyeri pada otot akibat cedera, jatuh, dan sebagainya</p>\r\n', 'produk1668063287.jpg', 1, '2022-11-04 02:49:15'),
(31, 18, 'Insto Tetes Mata', 15000, '<p>&nbsp;Obat Tetes Mata untuk meringankan dan mengatasi iritasi pada mata</p>\r\n', 'produk1667531891.jpg', 1, '2022-11-04 03:18:11'),
(32, 18, 'Vital Ear Oil', 15000, '<p>&nbsp;Obat Tetes Telinga untuk menghilangkan kotoran serta mengatasi infeksi dan peradangan di telinga</p>\r\n', 'produk1667532014.jpg', 1, '2022-11-04 03:20:14'),
(33, 19, 'Koyo Salonpas', 10000, '<p>Untuk&nbsp;plester pereda rasa nyeri yang disebabkan oleh nyeri otot, nyeri sendi, terkilir, dan punggung pegal.</p>\r\n', 'produk1668063100.jpeg', 1, '2022-11-10 06:51:40'),
(34, 13, 'Panadol', 25000, '<p>untuk meredakan demam dan rasa nyeri atau sakit kepala pada anak-anak.&nbsp;</p>\r\n', 'produk1669958949.jpg', 1, '2022-12-02 05:29:09'),
(35, 13, 'Polysilane', 25000, '<p>untuk meredakan gejala sakit maag dan perut kembung</p>\r\n', 'produk1669959134.jpeg', 1, '2022-12-02 05:32:14');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indeks untuk tabel `tb_category`
--
ALTER TABLE `tb_category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indeks untuk tabel `tb_product`
--
ALTER TABLE `tb_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `tb_category`
--
ALTER TABLE `tb_category`
  MODIFY `category_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `tb_product`
--
ALTER TABLE `tb_product`
  MODIFY `product_id` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
