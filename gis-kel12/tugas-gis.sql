-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Apr 2020 pada 18.14
-- Versi server: 10.1.30-MariaDB
-- Versi PHP: 7.2.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tugas-gis`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `categories`
--

CREATE TABLE `categories` (
  `category_id` int(11) NOT NULL,
  `name` varchar(225) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `categories`
--

INSERT INTO `categories` (`category_id`, `name`) VALUES
(1, 'Hotel'),
(2, 'Losmen'),
(3, 'Penginapan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hotel`
--

CREATE TABLE `hotel` (
  `ID` int(11) NOT NULL,
  `name` varchar(75) DEFAULT NULL,
  `price` bigint(20) NOT NULL,
  `latitude` varchar(100) DEFAULT NULL,
  `longitude` varchar(100) DEFAULT NULL,
  `address` text,
  `photo` varchar(250) DEFAULT NULL,
  `amenities` text,
  `description` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hotel`
--

INSERT INTO `hotel` (`ID`, `name`, `price`, `latitude`, `longitude`, `address`, `photo`, `amenities`, `description`) VALUES
(15, 'Grand Candi Hotel', 540000, '-7.0163413', '110.4226929', 'Jl. Sisingamangaraja No.16, Kaliwiru, Kec. Candisari, Kota Semarang, Jawa Tengah 50232•(024) 8416222', NULL, 'Wifi, AC, TV kabel, Telepon, Shower Panas & Dingin', 'Hotel mewah di daerah semarang atas.'),
(20, 'Rumah Singgah', 50000, '-6.95866491', '110.40737003', 'JL. Tambak Mas II nomor 38 Semarang', NULL, NULL, 'Penginapan nyaman, bersih, hemat, dan terjangkau. Sekedar tempat untuk beristirahat dan meregangkan otot.'),
(29, 'Airy Raden Patah', 327000, '-6.96348393', '110.43756634', 'Jl. raden patah no. 182 Semarang', NULL, 'AC', 'Hotel murah, nyaman dan baru. Bekerja sama dengan airy room'),
(30, 'Gumaya Tower Hotel', 899000, '-6.9774902', '110.4201915', 'Gumaya Tower Hotel, Jl. Gajahmada No.59-61, Kembangsari, Kec. Semarang Tengah, Kota Semarang, Jawa Tengah 50134•(024) 3551999', NULL, 'Wifi, AC, TV kabel, Telepon, Shower Panas & Dingin', 'Hotel bintang 5 paling bagus di semarang'),
(32, 'Hotel Ciputra Semarang', 400000, '-6.9890431', '110.4236326', 'Jl. Simpang Lima No.1, Pekunden, Kec. Semarang Tengah, Kota Semarang, Jawa Tengah 50134•(024) 8449888', NULL, NULL, 'Hotel di tengah simpang lima. Jadi satu dengan mall ciputra.\r\nNyaman sekali.'),
(35, 'Novotel Semarang', 567000, '-6.97934', '110.413', 'Jl. Pemuda No.123, Sekayu, Kec. Semarang Tengah, Kota Semarang, Jawa Tengah 50132', '', 'Wifi, AC, TV kabel, Telepon, Shower Panas & Dingin, Smooking Area', 'Novotel Semarang Hotel and Convention Center terletak Semarang, kota terbesar di Jawa Tengah. Hotel ini menawarkan keanggunan Indonesia dan dapat menyelenggarakan semua acara Anda mulai dari pesta pernikahan sampai pertemuan dan pameran. Sebuah kolam renang outdoor juga menanti Anda. Pilihlah dari kamar bergaya, suite atau lounge eksekutif VIP untuk masa menginap yang santai di Novotel.'),
(36, 'Quest Hotel', 220000, '-6.9783108', '110.3526527', 'Jl. Plampitan No.37-39, Bangunharjo, Kec. Semarang Tengah, Kota Semarang, Jawa Tengah 50138•(024) 3520808', 'griya_tirta_hotel.jpg', 'Wifi, AC, TV kabel, Smooking Area', 'Hotel murah tengah kota dan lengkap nyaman'),
(37, 'Nindya Hotel', 100000, '-7.01315413', '110.47898501', 'Jl. Brigjen Sudiarto No.496, Pedurungan Lor, Kec. Pedurungan, Kota Semarang, Jawa Tengah 50192', '', 'Wifi, AC', 'hotel di semarang, baru, murah, enak, nyaman. Terbaik deh. Jospol'),
(38, 'Grand Arkenso Parkview Hotel', 1000000, '-6.99015001', '110.42464346', 'Jl. Kh Ahmad Dahlan No.2, Karangkidul, Kec. Semarang Tengah, Kota Semarang, Jawa Tengah 50241', '', 'Wifi, AC, TV kabel, Telepon, Shower Panas & Dingin, Smooking Area', 'Hotel yang jadi satu dengan mall. Baru di renov, fasilitas lengkap, di tengah kota.'),
(39, 'Asri Indah', 50000, '-6.98787642', '110.38008124', 'Jalan Argorejo 1 Semarang', 'batu.jpg', 'Wifi, Smooking Area', 'Tempat menginap dengan harga murah. Terletak di sebelah Alfamart persis, jadi mudah untuk berbelanja.'),
(40, 'Louis Kienne Hotel Pandanaran Semarang', 683000, '-6.9851742', '110.4121853', 'Jl. Pandanaran No.18, Pekunden, Kec. Semarang Tengah, Kota Semarang, Jawa Tengah 50241•(024) 86453888', '', 'Wifi, AC, TV kabel, Telepon, Shower Panas & Dingin, Smooking Area', 'Hotel mewah harga bawah'),
(41, 'testing', 100000, '-6.9997157853389265', '110.42501341181641', 'semarang', 'kamar2.jpg', 'Wifi, AC, TV kabel, Telepon', 'percobaan');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hotelcategories`
--

CREATE TABLE `hotelcategories` (
  `hotelcategories_id` int(11) NOT NULL,
  `hotel_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `hotelcategories`
--

INSERT INTO `hotelcategories` (`hotelcategories_id`, `hotel_id`, `category_id`) VALUES
(1, 35, 1),
(2, 35, 1),
(3, 35, 1),
(4, 35, 1),
(11, 35, 1),
(12, 36, 1),
(13, 36, 3),
(14, 37, 1),
(15, 37, 1),
(16, 38, 1),
(17, 39, 3),
(18, 39, 3),
(19, 37, 1),
(20, 35, 1),
(21, 35, 1),
(22, 36, 1),
(23, 36, 3),
(24, 40, 1),
(25, 15, 1),
(26, 30, 1),
(27, 29, 2),
(28, 20, 3),
(29, 41, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `fullname` varchar(50) DEFAULT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`ID`, `fullname`, `username`, `email`, `password`) VALUES
(1, 'chan', 'chan', 'chan@gmail.com', '$2y$10$xronvQ4D1DBCLSjnaJWYRu5m26zUTuoukZfVp4s1Ly3kRtWM70sBy');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`category_id`);

--
-- Indeks untuk tabel `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`ID`);

--
-- Indeks untuk tabel `hotelcategories`
--
ALTER TABLE `hotelcategories`
  ADD PRIMARY KEY (`hotelcategories_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `categories`
--
ALTER TABLE `categories`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `hotel`
--
ALTER TABLE `hotel`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT untuk tabel `hotelcategories`
--
ALTER TABLE `hotelcategories`
  MODIFY `hotelcategories_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
