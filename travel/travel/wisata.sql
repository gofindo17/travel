-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 05 Oct 2021 pada 12.49
-- Versi Server: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wisata`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbadmin`
--

CREATE TABLE `tbadmin` (
  `kdadmin` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kategori` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbadmin`
--

INSERT INTO `tbadmin` (`kdadmin`, `username`, `password`, `nama`, `kategori`) VALUES
(1, 'berniman', 'berniman', 'BERNIMAN GOFINDO MALAU', '1'),
(2, 'gofindo', 'gofindo', 'BERNIMAN GOFINDO MALAU', '2');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbdetailwisata`
--

CREATE TABLE `tbdetailwisata` (
  `kdwisata` int(10) NOT NULL,
  `g1` blob NOT NULL,
  `g2` blob NOT NULL,
  `g3` blob NOT NULL,
  `g4` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbdetailwisata`
--

INSERT INTO `tbdetailwisata` (`kdwisata`, `g1`, `g2`, `g3`, `g4`) VALUES
(1, 0x61322e706e67, 0x61332e706e67, 0x61342e706e67, 0x61352e706e67),
(4, 0x77312e706e67, 0x77342e706e67, 0x77352e706e67, 0x77362e706e67),
(5, 0x67322e706e67, 0x67332e706e67, 0x67342e706e67, 0x67352e706e67),
(6, 0x70322e706e67, 0x70332e706e67, 0x70342e706e67, 0x70352e706e67),
(7, 0x74322e706e67, 0x74332e706e67, 0x74342e706e67, 0x74352e706e67),
(8, 0x63322e706e67, 0x63332e706e67, 0x63342e706e67, 0x63352e706e67),
(9, 0x6b322e706e67, 0x6b332e706e67, 0x6b342e706e67, 0x6b352e706e67);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbkategori`
--

CREATE TABLE `tbkategori` (
  `kdkategori` int(10) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `ket` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbkategori`
--

INSERT INTO `tbkategori` (`kdkategori`, `kategori`, `ket`) VALUES
(1, 'Pendakian', 'Wisata Alam'),
(2, 'Air Terjun', 'Wisata Alam'),
(3, 'Goa', 'Wisata Alam'),
(4, 'Pemandian', 'Wisata Alam'),
(5, 'Taman', 'Wisata Edukasi'),
(6, 'Candi', 'Wisata Edukasi'),
(7, 'Kampung Wisata', 'Wisata Edukasi'),
(8, 'Cafe', 'Wisata Tongkrongan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbtongkrongan`
--

CREATE TABLE `tbtongkrongan` (
  `kdcafe` int(10) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `ket` longtext NOT NULL,
  `lokasi` longtext NOT NULL,
  `cover` varchar(100) NOT NULL,
  `waktu` varchar(50) NOT NULL,
  `tgl` date NOT NULL,
  `kdkategori` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbtongkrongan`
--

INSERT INTO `tbtongkrongan` (`kdcafe`, `nama`, `ket`, `lokasi`, `cover`, `waktu`, `tgl`, `kdkategori`) VALUES
(1, 'Eazy Coffee', 'Desain eksterior Eazy Coffee tampak sangat minimalis dengan didominasi warna putih. Meski tampak kecil dari luar, ternyata bagian dalamnya cukup luas untuk nongkrong. Interiornya bernuansa rustic, tak kalah Instagramable dibanding kafe lainnya.', 'Jalan Adityawarman Nomor 8, Desa Kepanjen, Kecamatan Jombang, Kabupaten Jombang, Jawa Timur ', 'cafe2.png', '13.00-22.00', '2021-08-22', 8),
(2, 'Classic.co', 'Classic Coffee adalah kedai kopi baru yang ada di Jombang, Jawa Timur. Mencampur konsep klasik dan industrial menjadikan kedai kopi ini memiliki vibes tersendiri. Ada beberapa varian kopi mulai dari Espresso based, single origin dan juga non Coffee. Beberapa menu makanan yang beda dari yang lain seperti Ricebowl Babat, Ricebowl Paru dan masih banyak lagi, dari menu Snack kalian bisa coba Cireng, Kue Pancong DKI, mendoan. Tersedia tempat indoor dan outdoor yang tentunya nyaman, Instagramable, dan cocok untuk santai, meeting dan juga bisa mengadakan acara ulang tahun, photosesion, nonton bareng.', 'Jl. IR. H. Juanda No.101, Sengon, Kepanjen, Kec. Jombang, Kabupaten Jombang, Jawa Timur 61411', 'cafe1.png', '24 jam', '2021-08-22', 8),
(3, 'Culino Coffee & Eaters', 'Culino coffee & eatery yang berlokasi dekat taman alun alun jombang jalan jakgung. Suprapto no. 3 desa kepanjen kecamatan jombang kabupaten jombang jawa timur indonesia. Kami menyajikan menu minuman dan berbagai menu makanan khas dari cafe kami yang cukup terjangkau harganya dengan rasa yang berkualitas no satu, di tempat kami menyediakan fasilitas full ac yang membuat anda sejuk dan santai menikmati menu sajian dari cafe kami, silahkan datang dan kunjungi cafe kami.', 'Jl. Jakgung. Suprapto No.3, Kepanjen, Kec. Jombang, Kabupaten Jombang, Jawa Timur 61419', 'cafe4.png', '08.00 - 22.00', '2021-08-22', 8),
(4, 'Sumber Biru Cafe', 'Bersantai di warung sungai akan semakin nikmat jika sembari menyantap berbagai kuliner yang disediakan oleh beberapa warung yang berjejer di dalam lokasi wisata. Harga makanan yang dijualpun relatif murah. Ada beragam menu yang bisa anda nikmati seperti nasi goreng, nasi jagung, penyetan, bakso, pop mie, tahu tek dan lain-lain. Jenis minumannya pun bervariasi mulai dari teh tarik, es teh, es jeruk, dan masih banyak lagi. Jangan lupa, anda juga bisa mencoba kopi khas Wonosalam disana, "Kopi Excelsa". ', 'Dusun Wonotirto, Desa Wonomerto, Kecamatan Wonosalam, Kabupaten Jombang', 'cafe3.png', '08.00 - 20.00', '2021-08-22', 8),
(5, 'Eazy Coffee', 'Desain eksterior Eazy Coffee tampak sangat minimalis dengan didominasi warna putih. Meski tampak kecil dari luar, ternyata bagian dalamnya cukup luas untuk nongkrong. Interiornya bernuansa rustic, tak kalah Instagramable dibanding kafe lainnya.', 'Jalan Adityawarman Nomor 8, Desa Kepanjen, Kecamatan Jombang, Kabupaten Jombang, Jawa Timur ', 'cafe2.png', '13.00-22.00', '2021-08-22', 8);
-- --------------------------------------------------------

--
-- Struktur dari tabel `tbwisata`
--

CREATE TABLE `tbwisata` (
  `kdwisata` int(10) NOT NULL,
  `kdkategori` int(10) NOT NULL,
  `wisata` varchar(50) NOT NULL,
  `lokasi` mediumtext NOT NULL,
  `ket1` longtext NOT NULL,
  `ket2` longtext NOT NULL,
  `image` blob NOT NULL,
  `akses` longtext NOT NULL,
  `waktu` varchar(50) NOT NULL,
  `tiket` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbwisata`
--

INSERT INTO `tbwisata` (`kdwisata`, `kdkategori`, `wisata`, `lokasi`, `ket1`, `ket2`, `image`, `akses`, `waktu`, `tiket`) VALUES
(1, 2, 'BBB', 'BBBBBBBBBB BBBBBBBBBB BBBBBBBBBB ', 'BBBBBBBBBB BBBBBBBBBB BBBBBBBBBB BBBBBBBBBB BBBBBBBBBB BBBBBBBBBB BBBBBBBBBB BBBBBBBBBB BBBBBBBBBB BBBBBBBBBB BBBBBBBBBB BBBBBBBBBB BBBBBBBBBB BBBBBBBBBB BBBBBBBBBB ', 'BBBBBBBBBB BBBBBBBBBB BBBBBBBBBB BBBBBBBBBB BBBBBBBBBB BBBBBBBBBB BBBBBBBBBB BBBBBBBBBB BBBBBBBBBB BBBBBBBBBB BBBBBBBBBB BBBBBBBBBB BBBBBBBBBB BBBBBBBBBB BBBBBBBBBB BBBBBBBBBB BBBBBBBBBB BBBBBBBBBB BBBBBBBBBB ', 0x61312e706e67, 'BBB', 'BBB', 1000),
(4, 1, 'AAAAAAAA ', 'AAAAAAAA AAAAAAAA AAAAAAAA AAAAAAAA ', 'AAAAAAAA AAAAAAAA AAAAAAAA AAAAAAAA AAAAAAAA AAAAAAAA AAAAAAAA AAAAAAAA AAAAAAAA AAAAAAAA AAAAAAAA AAAAAAAA AAAAAAAA AAAAAAAA AAAAAAAA ', 'AAAAAAAA AAAAAAAA AAAAAAAA AAAAAAAA AAAAAAAA AAAAAAAA AAAAAAAA AAAAAAAA AAAAAAAA AAAAAAAA AAAAAAAA AAAAAAAA AAAAAAAA AAAAAAAA AAAAAAAA ', 0x77322e706e67, 'AAAAAAAA AAAAAAAA AAAAAAAA AAAAAAAA AAAAAAAA ', 'AAAAAAAA ', 1000),
(5, 3, 'CCCCCCCC ', 'CCCCCCCC CCCCCCCC CCCCCCCC CCCCCCCC ', 'CCCCCCCC CCCCCCCC CCCCCCCC CCCCCCCC CCCCCCCC CCCCCCCC CCCCCCCC CCCCCCCC CCCCCCCC CCCCCCCC CCCCCCCC CCCCCCCC CCCCCCCC CCCCCCCC CCCCCCCC CCCCCCCC CCCCCCCC CCCCCCCC ', 'CCCCCCCC CCCCCCCC CCCCCCCC CCCCCCCC CCCCCCCC CCCCCCCC CCCCCCCC CCCCCCCC CCCCCCCC CCCCCCCC CCCCCCCC CCCCCCCC CCCCCCCC CCCCCCCC CCCCCCCC CCCCCCCC CCCCCCCC CCCCCCCC CCCCCCCC CCCCCCCC CCCCCCCC CCCCCCCC CCCCCCCC ', 0x67312e706e67, 'CCCCCCCC CCCCCCCC CCCCCCCC CCCCCCCC ', 'CCCCCCCC ', 1000),
(6, 4, 'DDDDDDDDDDD ', 'DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD', 'DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD ', 'DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD ', 0x70312e706e67, 'DDDDDDDDDDD DDDDDDDDDDD DDDDDDDDDDD ', 'DDDDDDDDDDD ', 1000),
(7, 5, 'EEEEEEEEEE EEEEEEEEEE ', 'EEEEEEEEEE EEEEEEEEEE EEEEEEEEEE EEEEEEEEEE EEEEEEEEEE ', 'EEEEEEEEEE EEEEEEEEEE EEEEEEEEEE EEEEEEEEEE EEEEEEEEEE EEEEEEEEEE EEEEEEEEEE EEEEEEEEEE EEEEEEEEEE EEEEEEEEEE EEEEEEEEEE EEEEEEEEEE EEEEEEEEEE EEEEEEEEEE EEEEEEEEEE EEEEEEEEEE EEEEEEEEEE EEEEEEEEEE EEEEEEEEEE EEEEEEEEEE ', 'EEEEEEEEEE EEEEEEEEEE EEEEEEEEEE EEEEEEEEEE EEEEEEEEEE EEEEEEEEEE EEEEEEEEEE EEEEEEEEEE EEEEEEEEEE EEEEEEEEEE EEEEEEEEEE EEEEEEEEEE EEEEEEEEEE EEEEEEEEEE EEEEEEEEEE EEEEEEEEEE ', 0x74312e706e67, 'EEEEEEEEEE EEEEEEEEEE EEEEEEEEEE EEEEEEEEEE EEEEEEEEEE ', 'EEEEEEEEEE ', 1000),
(8, 6, 'FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF ', 'FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF ', 'FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF ', 'FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF ', 0x63312e706e67, 'FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF FFFFFFF ', 'FFFFFFF ', 1000),
(9, 7, 'GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG ', 'GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG ', 'GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG ', 'GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG ', 0x6b312e706e67, 'GGGGGG GGGGGG GGGGGG GGGGGG GGGGGG ', 'GGGGGG ', 1000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbadmin`
--
ALTER TABLE `tbadmin`
  ADD PRIMARY KEY (`kdadmin`);

--
-- Indexes for table `tbdetailwisata`
--
ALTER TABLE `tbdetailwisata`
  ADD PRIMARY KEY (`kdwisata`),
  ADD KEY `kdwisata` (`kdwisata`);

--
-- Indexes for table `tbkategori`
--
ALTER TABLE `tbkategori`
  ADD PRIMARY KEY (`kdkategori`);

--
-- Indexes for table `tbtongkrongan`
--
ALTER TABLE `tbtongkrongan`
  ADD PRIMARY KEY (`kdcafe`),
  ADD KEY `kdkategori` (`kdkategori`);

--
-- Indexes for table `tbwisata`
--
ALTER TABLE `tbwisata`
  ADD PRIMARY KEY (`kdwisata`),
  ADD KEY `kdkategori` (`kdkategori`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbadmin`
--
ALTER TABLE `tbadmin`
  MODIFY `kdadmin` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbdetailwisata`
--
ALTER TABLE `tbdetailwisata`
  MODIFY `kdwisata` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tbkategori`
--
ALTER TABLE `tbkategori`
  MODIFY `kdkategori` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbtongkrongan`
--
ALTER TABLE `tbtongkrongan`
  MODIFY `kdcafe` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbwisata`
--
ALTER TABLE `tbwisata`
  MODIFY `kdwisata` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbdetailwisata`
--
ALTER TABLE `tbdetailwisata`
  ADD CONSTRAINT `tbdetailwisata_ibfk_1` FOREIGN KEY (`kdwisata`) REFERENCES `tbwisata` (`kdwisata`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbtongkrongan`
--
ALTER TABLE `tbtongkrongan`
  ADD CONSTRAINT `tbtongkrongan_ibfk_1` FOREIGN KEY (`kdkategori`) REFERENCES `tbkategori` (`kdkategori`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `tbwisata`
--
ALTER TABLE `tbwisata`
  ADD CONSTRAINT `tbwisata_ibfk_1` FOREIGN KEY (`kdkategori`) REFERENCES `tbkategori` (`kdkategori`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
