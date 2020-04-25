-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 02 Mar 2020 pada 11.24
-- Versi Server: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `lelang`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `config`
--

CREATE TABLE IF NOT EXISTS `config` (
  `id_config` varchar(255) DEFAULT NULL,
  `contact` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `config`
--

INSERT INTO `config` (`id_config`, `contact`) VALUES
('1', '0857-1815-9655');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE IF NOT EXISTS `kategori` (
`id_kategori` int(11) NOT NULL,
  `kategori` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `kategori`) VALUES
(1, 'MOBILE PHONES'),
(2, 'DESKTOP'),
(3, 'LAPTOP'),
(4, 'ACCESSORIES'),
(5, 'SOFTWARE'),
(6, 'TOYS, KIDS & BABIES');

-- --------------------------------------------------------

--
-- Struktur dari tabel `product`
--

CREATE TABLE IF NOT EXISTS `product` (
`id_product` int(10) NOT NULL,
  `nama_product` varchar(255) DEFAULT NULL,
  `harga_product` varchar(255) DEFAULT NULL,
  `img_url_1` varchar(255) DEFAULT NULL,
  `img_url_2` varchar(255) DEFAULT NULL,
  `img_url_3` varchar(255) DEFAULT NULL,
  `img_url_4` varchar(255) DEFAULT NULL,
  `img_url_5` varchar(255) DEFAULT NULL,
  `img_url_6` varchar(255) DEFAULT NULL,
  `img_url_7` varchar(255) DEFAULT NULL,
  `img_url_8` varchar(255) DEFAULT NULL,
  `kategori` varchar(255) DEFAULT NULL,
  `kelipatan` varchar(255) DEFAULT NULL,
  `jam_close` datetime DEFAULT NULL,
  `active` int(1) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `product`
--

INSERT INTO `product` (`id_product`, `nama_product`, `harga_product`, `img_url_1`, `img_url_2`, `img_url_3`, `img_url_4`, `img_url_5`, `img_url_6`, `img_url_7`, `img_url_8`, `kategori`, `kelipatan`, `jam_close`, `active`) VALUES
(1, '8GB Flash Disk Sandisk Cruzer Blade', '35000', 'sandisk.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DESKTOP', '50000', '2015-08-08 00:52:12', 1),
(2, 'Kabel Mini Display To VGA Cable Mini Display', '70000', 'otg.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'DESKTOP', NULL, NULL, 1),
(3, 'Wifi Dongle RC3000 Wireless', '355000', 'modem.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1),
(4, 'Keyboard + Mouse Wireless Rapid R5000', NULL, 'keyboard.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_admin`
--

CREATE TABLE IF NOT EXISTS `tbl_admin` (
`id_admin` int(3) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `nm_admin` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `nama`, `nm_admin`, `password`) VALUES
(1, 'admin', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_barang_lelang`
--

CREATE TABLE IF NOT EXISTS `tbl_barang_lelang` (
`id_barang_lelang` int(1) NOT NULL,
  `kode_barang` varchar(10) NOT NULL,
  `id_pelelang` int(3) NOT NULL,
  `lokasi` varchar(30) NOT NULL,
  `foto` text NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `harga_buka` int(9) NOT NULL,
  `keterangan` text NOT NULL,
  `tanggal_buka` text NOT NULL,
  `tanggal_selesai` text NOT NULL,
  `status` int(3) NOT NULL,
  `id_komentar` int(4) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_barang_lelang`
--

INSERT INTO `tbl_barang_lelang` (`id_barang_lelang`, `kode_barang`, `id_pelelang`, `lokasi`, `foto`, `nama_barang`, `harga_buka`, `keterangan`, `tanggal_buka`, `tanggal_selesai`, `status`, `id_komentar`) VALUES
(28, '5', 12, 'Sulawesi', 'Mercedes_c_class_11.jpg', 'mercedez benz', 600000000, 'full modif, mobil jarang dipakai,harga sangat murah', '2019-06-11', '2019-07-10', 0, 0),
(27, '3', 11, 'Solo', 'Veyron.jpg', 'bugatti', 2000000000, 'warna sangat menarik,km rendah,cocok buat yang pengen merasakan sensasi di circuit bala', '2019-03-02', '2019-04-10', 0, 0),
(26, '3', 15, 'Bali', 'BMWROA~1.jpg', 'bmw', 1000000000, 'Km rendah , mobil buat tampil keren, warna sangat bagus', '2019-04-01', '2019-05-08', 0, 0),
(25, '2', 9, 'Sumatra', '029012.JPG', 'mclaren', 800000000, 'mobil masih mulus,km rendah,mobil kesayangan', '2019-05-01', '2019-06-01', 0, 0),
(24, '1', 16, 'Pacitan', 'jancok.jpg', 'mobil agera', 500000000, 'km masih sedikit,plat masih panjang,warna hitam manis,harga bersahabat', '2019-06-05', '2019-07-01', 0, 0),
(30, 'porche', 13, 'Lamongan', '2.jpg', 'porche', 15000000, 'Mobil full audio, mobil sangat terawat,mesin normal', '2019-06-04', '2019-07-09', 1, 0),
(31, '8', 17, 'NTT', 'F1-1.JPG', 'mobil hitam', 16000000, 'mobil full modif , mobil sangat terawat', '2019-03-06', '2019-04-09', 0, 0),
(32, '9', 18, 'Mojokerto', 'ISDERA02.JPG', 'lambo', 19000000, 'full modif ,sangat terawat,langsung tangan pertama', '2019-07-14', '2019-08-14', 1, 0),
(33, '9', 14, 'Palembang', 'Jaguar.JPG', 'jaguar', 400000000, 'mobil merah menawan , sangat cocok buat keuarga , cocok buat keluar sama teman-teman', '2019-02-06', '2019-03-06', 1, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_jenis`
--

CREATE TABLE IF NOT EXISTS `tbl_jenis` (
`id_jenis` int(4) NOT NULL,
  `jenis` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kandidat`
--

CREATE TABLE IF NOT EXISTS `tbl_kandidat` (
`id_komentar` int(3) NOT NULL,
  `nama_kandidat` varchar(30) NOT NULL,
  `harga` text NOT NULL,
  `id_barang_lelang` int(4) NOT NULL,
  `id_pelelang` int(4) NOT NULL,
  `status` int(3) NOT NULL,
  `tanggal_tawar` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `email` varchar(50) DEFAULT NULL
) ENGINE=MyISAM AUTO_INCREMENT=47 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kandidat`
--

INSERT INTO `tbl_kandidat` (`id_komentar`, `nama_kandidat`, `harga`, `id_barang_lelang`, `id_pelelang`, `status`, `tanggal_tawar`, `email`) VALUES
(46, 'ssa', '100', 31, 17, 0, '2020-02-29 10:47:36', 'dimas@gmail.com'),
(45, 'eka', '1700000000', 30, 13, 1, '2019-10-24 13:51:42', 'eka@gmail.com'),
(44, 'andi', '16000000000', 30, 13, 0, '2019-10-24 13:49:43', 'andi@gmail.com'),
(43, 'andi', '100000', 32, 18, 1, '2019-09-05 04:55:40', 'andi@gmail.com'),
(42, 'ulfa', '10000', 31, 17, 0, '2019-08-15 05:40:24', 'ulfa@gmail.com'),
(41, 'eka', '1000000', 31, 17, 0, '2019-08-15 05:39:44', 'eka@gmail.com'),
(39, 'andi', '5000000000000', 33, 14, 1, '2019-08-15 05:23:01', 'andi@gmail.com');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pelelang`
--

CREATE TABLE IF NOT EXISTS `tbl_pelelang` (
`id_pelelang` int(2) NOT NULL,
  `no_hp` varchar(23) NOT NULL,
  `alamat` text NOT NULL,
  `nama_pelelang` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `tgl_daftar` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` int(3) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pelelang`
--

INSERT INTO `tbl_pelelang` (`id_pelelang`, `no_hp`, `alamat`, `nama_pelelang`, `username`, `password`, `tgl_daftar`, `status`) VALUES
(16, '434344444444', 'Pacitan', 'Andi', 'Andi', 'Andi', '2019-06-02 09:29:39', 1),
(9, '094442141232', 'Sumatra', 'Budi', 'budi', 'budi', '2018-12-03 16:46:51', 1),
(15, '092321331', 'Bali', 'eka', 'eka', 'eka', '2019-04-13 18:36:35', 1),
(11, '08988434289', 'Solo', 'Ulfa', 'ulfa', 'ulfa', '2018-12-12 03:09:17', 1),
(12, '0984337342', 'Sulawesi', 'Lita', 'lita', 'lita', '2018-12-08 00:55:20', 1),
(13, '085973755035', 'Lamongan', 'Mifta', 'mifta', 'mifta', '2018-12-26 12:58:17', 1),
(14, '0888888', 'Kalimantan', 'Anggie', 'anggie', 'anggie', '2018-12-12 13:01:02', 1),
(17, '09312121', 'Palembang', 'Nadia', 'nadia', 'nadia', '2019-07-20 16:04:07', 1),
(18, '085748556439', 'mojokerto', 'dicky ramadhan', 'dicky', 'dicky', '2019-08-13 16:23:33', 1),
(19, '891839283', 'solo', 'aku', 'aku', 'aku', '2019-08-15 05:31:47', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE IF NOT EXISTS `users` (
`id_user` int(15) NOT NULL,
  `username` varchar(20) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `active` int(1) DEFAULT NULL,
  `company` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id_user`, `username`, `email`, `password`, `level`, `active`, `company`) VALUES
(2, 'admin', 'anggietriejast@gmail.com', 'admin', 'users', 1, 'triejast'),
(3, 'Gie', 'anggietriejast@gmail.com', 'ASDA', NULL, 1, 'ASDA');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
 ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
 ADD PRIMARY KEY (`id_product`);

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
 ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tbl_barang_lelang`
--
ALTER TABLE `tbl_barang_lelang`
 ADD PRIMARY KEY (`id_barang_lelang`);

--
-- Indexes for table `tbl_jenis`
--
ALTER TABLE `tbl_jenis`
 ADD PRIMARY KEY (`id_jenis`);

--
-- Indexes for table `tbl_kandidat`
--
ALTER TABLE `tbl_kandidat`
 ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `tbl_pelelang`
--
ALTER TABLE `tbl_pelelang`
 ADD PRIMARY KEY (`id_pelelang`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
MODIFY `id_product` int(10) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
MODIFY `id_admin` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_barang_lelang`
--
ALTER TABLE `tbl_barang_lelang`
MODIFY `id_barang_lelang` int(1) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `tbl_jenis`
--
ALTER TABLE `tbl_jenis`
MODIFY `id_jenis` int(4) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_kandidat`
--
ALTER TABLE `tbl_kandidat`
MODIFY `id_komentar` int(3) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=47;
--
-- AUTO_INCREMENT for table `tbl_pelelang`
--
ALTER TABLE `tbl_pelelang`
MODIFY `id_pelelang` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
MODIFY `id_user` int(15) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
